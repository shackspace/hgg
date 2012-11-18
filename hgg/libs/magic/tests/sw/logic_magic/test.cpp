#include "gtest/gtest.h"
#include "CardPHYMock.h"
#include "BusmasterCardPHYMock.h"
#include "cards/CardLogicImpl.h"
#include "cards/BusmasterCardLogicImpl.h"

using ::testing::StrictMock;
using ::testing::Return;
using ::testing::Ref;
using ::testing::ReturnRef;
using ::testing::AtLeast;
using ::testing::NotNull;
using ::testing::_;

TEST(CardLogic, InitalStateIsInit)
{
	StrictMock<CardPHYMock> cardphy;
	CardLogicImpl cli(cardphy);	

	ASSERT_EQ(cli.getState(), CardLogicImpl::CLIS_Init);
}


TEST(CardLogic, StateTransitionFromInitToIdle)
{
	StrictMock<CardPHYMock> cardphy;
	CardLogicImpl cli(cardphy);	

	cli.loop();

	ASSERT_EQ(cli.getState(), CardLogicImpl::CLIS_Idle);
}

TEST(CardLogic, StateTransitionIdleIsSticky)
{
	StrictMock<CardPHYMock> cardphy;
	CardLogicImpl cli(cardphy);	

	for(int i=0; i<10; ++i)
	{
		cli.loop();
		ASSERT_EQ(cli.getState(), CardLogicImpl::CLIS_Idle);
	}
}





TEST(BusmasterCardLogic, InitalStateIsInit)
{
	StrictMock<BusmasterCardPHYMock> bmphy;
	BusmasterCardLogicImpl bmcli(bmphy);	

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Init);
}


MATCHER_P(IsEnumerationMessageForSlot, n, "Bus Message is an Enumeration Message") { return arg.getType() == BMT_ENUM_QUERY && arg.getPayload()->enum_query->slot_number == n; }
MATCHER(IsInquiryMessage, "BusMessage is an inquiry-Message") { return arg.getType() == BMT_IRQ_INQUIRY; }
MATCHER(IsAckMessage, "Is it an ACK Msg") { return arg.getType() == BMT_ACK; }




TEST(BusmasterCardLogic, StateTransitionFromInitToEnumerate)
{
	StrictMock<BusmasterCardPHYMock> bmphy;
	BusmasterCardLogicImpl bmcli(bmphy);	

  // init should go to enumeration
	bmcli.loop();
	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Enumerate);

	// the busmaster should read what cards are available at all
	// in this case, tell him that 2 cards (card0 and card1) are available
	EXPECT_CALL(bmphy, getSlotOccupiedStatus()).Times(AtLeast(1)).WillRepeatedly(Return(BACKPLANE_MASK_SLOT_0|BACKPLANE_MASK_SLOT_1)); 
	bmcli.loop();

  // enumeration should trigger enumeration of the individual cards
  EXPECT_CALL(bmphy, getCurrentTicks()).WillRepeatedly(Return(0));
	for(size_t i = 1; i < BACKPLANE_MAX_CARDS; i++)
	{
		ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);

		// assume that the values returned bz getSlotOccupiedStatus() were written into 
		// the backplane and slots datastructure.
		if(i < 2) {
			ASSERT_EQ(bmcli.getBackplane()[i].isEmpty(), false);

			// when the slot is empty, the card needs enumeration.
			EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_1)).Times(1);
			EXPECT_CALL(bmphy, sendMessage(IsEnumerationMessageForSlot(BACKPLANE_ID_SLOT_1))).Times(1);
		} else {
			ASSERT_EQ(bmcli.getBackplane()[i].isEmpty(), true);
		}

		// loop. should have sent an enumeration message by now.
		bmcli.loop();
		if(i >= 2) {
			continue;
		}
		ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_WaitForEnumerationAnswer);

		// there is an answer to the enumeration query
    uint8_t buffer[40];
		BusMessage bm(buffer, BMT_ENUM_ANSWER);
		EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(true));
		EXPECT_CALL(bmphy, getNextMessage()).Times(1).WillOnce(ReturnRef(bm));
		EXPECT_CALL(bmphy, releaseMessage(Ref(bm))).Times(1);
		bmcli.loop();

		ASSERT_EQ(bmcli.getBackplane()[i].isEnumerated(), true);
  }

	bmcli.loop();
	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Idle);
}




TEST(BusmasterCardLogic, EnumerationFailureWhenEnumerationAnswerIsMissing)
{
	StrictMock<BusmasterCardPHYMock> bmphy;
	BusmasterCardLogicImpl bmcli(bmphy);

  // put the busmaster into the wait-for-enumeration state.
  uint8_t buffer[40];
  BusMessage bm(buffer, BMT_CFG_GET);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_WaitForEnumerationAnswer);
  EXPECT_CALL(bmphy, getCurrentTicks()).WillRepeatedly(Return(0));
  EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(true));
  EXPECT_CALL(bmphy, getNextMessage()).Times(1).WillOnce(ReturnRef(bm));
  EXPECT_CALL(bmphy, releaseMessage(Ref(bm))).Times(1);
  bmcli.loop();

  ASSERT_EQ(bmcli.getBusErrorCount(), 1);
  ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_WaitForEnumerationAnswer);
}




TEST(BusmasterCardLogic, EnumerationOfCardTimesOut)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  // put the busmaster into wait for enumeration state.
  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);
  bmcli.getBackplane()[0].setPopulated(true);
  EXPECT_CALL(bmphy, setSelectedSlots(_)).Times(AtLeast(1));
  EXPECT_CALL(bmphy, sendMessage(_)).Times(1);
  EXPECT_CALL(bmphy, getCurrentTicks()).Times(2).WillOnce(Return(0)).WillRepeatedly(Return(ENUMERATION_TIMEOUT_TICKS * 2));
  bmcli.loop();
  bmcli.loop();

  // enumeration should be timed out now.
  ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_EnumerationTimeout);

  // looping now should enumerate the next card
  bmcli.loop();
  ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);
  ASSERT_EQ(bmcli.getBackplane()[1].isEnumerated(), false);
  ASSERT_EQ(bmcli.getBusErrorCount(), 1);
}




TEST(BusmasterCardLogic, SendMessageFromCardToOtherCard)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  // assume card 1 and 2 are present and enumerated.
  bmcli.getBackplane()[1].setPopulated(true);
  bmcli.getBackplane()[1].setEnumerated(true);
  bmcli.getBackplane()[2].setPopulated(true);
  bmcli.getBackplane()[2].setEnumerated(true);

  // put the busmaster into idle state.
  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_Idle);
  EXPECT_CALL(bmphy, readIsBusRequestedState()).Times(1).WillOnce(Return(true));

  bmcli.loop();

  // should be in preparation state now, let card 2 be the one to request the bus.
  // should now send a message to the card in question
  ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendBusEnquiry);
  EXPECT_CALL(bmphy, getIRQStatus()).Times(AtLeast(1)).WillRepeatedly(Return(BACKPLANE_MASK_SLOT_2));
  EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_2)).Times(1);
  EXPECT_CALL(bmphy, sendMessage(IsInquiryMessage())).Times(AtLeast(1));

  bmcli.loop();

  // should now be in wait for inquiry message state.
  ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_WaitForBusEnquiry);

  uint8_t buffer[40];
  BusMessage bm(buffer, BMT_COMM_REQUEST);
  bm.getPayload()->comm_request->dest_address = 1;

  EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(true));
  EXPECT_CALL(bmphy, getNextMessage()).Times(1).WillOnce(ReturnRef(bm));
	EXPECT_CALL(bmphy, releaseMessage(Ref(bm))).Times(1);

	bmcli.loop();

	// go to acknowledge state.
	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_AckBusEnquiry);
	EXPECT_CALL(bmphy, sendMessage(IsAckMessage())).Times(AtLeast(1));
	EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_NONE)).Times(1);
	EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_1|BACKPLANE_MASK_SLOT_2)).Times(1);

	bmcli.loop();

	// should listen to the communication and cleanup after the communication finished.
	bm = BusMessage(buffer, BMT_DATA);

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_ListenToCommunication);
  EXPECT_CALL(bmphy, getNextMessage()).Times(1).WillOnce(ReturnRef(bm));
	EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_NONE)).Times(1);
	EXPECT_CALL(bmphy, releaseMessage(Ref(bm))).Times(1);

	bmcli.loop();

	// should be in idle state agian.
  ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Idle);
}




TEST(BusmasterCardLogic, StateTransition_Init_Enumerate)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_Init);

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Enumerate);
}




TEST(BusmasterCardLogic, StateTransition_Idle_Idle)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_Idle);
  EXPECT_CALL(bmphy, readIsBusRequestedState()).Times(AtLeast(1)).WillRepeatedly(Return(false));

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Idle);
}




TEST(BusmasterCardLogic, StateTransition_Idle_SendBusEnquiry)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_Idle);
  EXPECT_CALL(bmphy, readIsBusRequestedState()).Times(AtLeast(1)).WillRepeatedly(Return(true));

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendBusEnquiry);
}




TEST(BusmasterCardLogic, StateTransition_SendBusEnquiry_Idle)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_SendBusEnquiry);
  EXPECT_CALL(bmphy, getIRQStatus()).Times(AtLeast(1)).WillRepeatedly(Return(BACKPLANE_MASK_SLOT_NONE));

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Idle);
}




TEST(BusmasterCardLogic, StateTransition_SendBusEnquiry_Idle__DoNotReactOnBusMasterIRQStateBit)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_SendBusEnquiry);
  EXPECT_CALL(bmphy, getIRQStatus()).Times(AtLeast(1)).WillRepeatedly(Return(BACKPLANE_MASK_SLOT_0));

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Idle);
}




TEST(BusmasterCardLogic, StateTransition_SendBusEnquiry_WaitForBusEnquiry)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_SendBusEnquiry);
  EXPECT_CALL(bmphy, getIRQStatus()).Times(AtLeast(1)).WillRepeatedly(Return(BACKPLANE_MASK_SLOT_1));
	EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_1)).Times(1);
	EXPECT_CALL(bmphy, sendMessage(IsInquiryMessage())).Times(1);

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_WaitForBusEnquiry);
}





TEST(BusmasterCardLogic, StateTransition_WaitForBusEnquiry_WaitForBusEnquiry)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_WaitForBusEnquiry);
  EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(false));

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_WaitForBusEnquiry);
}



TEST(BusmasterCardLogic, StateTransition_WaitForbusEnquiry_AckBusEnquiry)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_WaitForBusEnquiry);

	uint8_t buffer[40];
	BusMessage bm(buffer, BMT_ENUM_ANSWER);
	EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(true));
	EXPECT_CALL(bmphy, getNextMessage()).Times(1).WillOnce(ReturnRef(bm));
	EXPECT_CALL(bmphy, releaseMessage(Ref(bm))).Times(1);

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_AckBusEnquiry);
}




TEST(BusmasterCardLogic, StateTransition_AckBusEnquiry_ListenToCommunication)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_AckBusEnquiry);
	bmcli._target = BACKPLANE_ID_SLOT_1;
	bmcli._activeCard = BACKPLANE_ID_SLOT_2;
	EXPECT_CALL(bmphy, sendMessage(IsAckMessage())).Times(AtLeast(1));
	EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_NONE)).Times(1);
	EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_1|BACKPLANE_MASK_SLOT_2)).Times(1);

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_ListenToCommunication);
}




TEST(BusmasterCardLogic, StateTransition_ListenToCommunication_ListenToCommunication)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_ListenToCommunication);
	EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(false));

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_ListenToCommunication);
}




TEST(BusmasterCardLogic, StateTransition_ListenToCommunication_Idle)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

	uint8_t buffer[40];
	BusMessage bm(buffer, BMT_DATA);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_ListenToCommunication);
	EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(true));
  EXPECT_CALL(bmphy, getNextMessage()).Times(1).WillOnce(ReturnRef(bm));
	EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_NONE)).Times(1);
	EXPECT_CALL(bmphy, releaseMessage(Ref(bm))).Times(1);

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Idle);
}




TEST(BusmasterCardLogic, StateTransition_Enumerate_SendEnumerationQuery)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_Enumerate);
	EXPECT_CALL(bmphy, getSlotOccupiedStatus()).Times(AtLeast(1)).WillRepeatedly(Return(BACKPLANE_MASK_SLOT_0|BACKPLANE_MASK_SLOT_1)); 

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);
}




TEST(BusmasterCardLogic, StateTransition_SendEnumerationQuery_Idle)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);

	bmcli._enumerationCounter = BACKPLANE_ID_SLOT_1;

	for(uint32_t i=BACKPLANE_ID_SLOT_1; i<BACKPLANE_MAX_CARDS; ++i)
	{
		bmcli.loop();
		ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);
	}

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Idle);
}




TEST(BusmasterCardLogic, StateTransition_SendEnumerationQuery_WaitForEnumerationAnswer)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);


	const uint32_t ENUM_COUNTER_INITIAL = BACKPLANE_ID_SLOT_1;
	bmcli._enumerationCounter = ENUM_COUNTER_INITIAL;
	bmcli.getBackplane()[ENUM_COUNTER_INITIAL].setPopulated(true);

	uint8_t buffer[40];
	BusMessage bm(buffer, BMT_ENUM_ANSWER);

	EXPECT_CALL(bmphy, setSelectedSlots(BACKPLANE_MASK_SLOT_1)).Times(1);
	EXPECT_CALL(bmphy, sendMessage(IsEnumerationMessageForSlot(BACKPLANE_ID_SLOT_1))).Times(1);
  EXPECT_CALL(bmphy, getCurrentTicks()).WillRepeatedly(Return(0));

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_WaitForEnumerationAnswer);
}




TEST(BusmasterCardLogic, StateTransition_WaitForEnumerationAnswer_WaitForEnumerationAnswer)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_WaitForEnumerationAnswer);
	EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(false));
  EXPECT_CALL(bmphy, getCurrentTicks()).WillRepeatedly(Return(0));

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_WaitForEnumerationAnswer);
}




TEST(BusmasterCardLogic, StateTransition_WaitForEnumerationAnswer_SendEnumerationQuery)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_WaitForEnumerationAnswer);

	const uint32_t ENUM_COUNTER_INITIAL = BACKPLANE_ID_SLOT_1;
	bmcli._enumerationCounter = ENUM_COUNTER_INITIAL;

	bmcli.getBackplane()[0].setPopulated(true);
	bmcli.getBackplane()[ENUM_COUNTER_INITIAL].setPopulated(false);

	uint8_t buffer[40];
	BusMessage bm(buffer, BMT_ENUM_ANSWER);
	EXPECT_CALL(bmphy, hasNewMessage()).Times(AtLeast(1)).WillRepeatedly(Return(true));
	EXPECT_CALL(bmphy, getNextMessage()).Times(1).WillOnce(ReturnRef(bm));
	EXPECT_CALL(bmphy, releaseMessage(Ref(bm))).Times(1);
  EXPECT_CALL(bmphy, getCurrentTicks()).WillRepeatedly(Return(0));
	bmcli.loop();

	ASSERT_EQ(bmcli.getBackplane()[ENUM_COUNTER_INITIAL].isEnumerated(), true);
	ASSERT_EQ(bmcli._enumerationCounter, ENUM_COUNTER_INITIAL+1);
	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);
}




// TEST(BusmasterCardLogic, StateTransition_WaitForEnumerationAnswer_EnumerationTimeout)
// Tested in EnumerationOfCardTimesOut




TEST(BusmasterCardLogic, StateTransition_SendEnumerationQuery_SendEnumerationQuery)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);

	// no cards expect busmaster
	const uint32_t ENUM_COUNTER_INITIAL = BACKPLANE_ID_SLOT_1;
	bmcli._enumerationCounter = ENUM_COUNTER_INITIAL;

	bmcli.getBackplane()[0].setPopulated(true);
	for(uint32_t i=BACKPLANE_ID_SLOT_1; i<BACKPLANE_MAX_CARDS; ++i)
	{
		bmcli.getBackplane()[i].setPopulated(false);
	}

	bmcli.loop();

	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);
}




TEST(BusmasterCardLogic, StateTransition_EnumerationTimeout_SendEnumerationQuery)
{
  StrictMock<BusmasterCardPHYMock> bmphy;
  BusmasterCardLogicImpl bmcli(bmphy);

  bmcli.setState(BusmasterCardLogicImpl::BMCLIS_EnumerationTimeout);

	ASSERT_EQ(bmcli._busErrorCounter, 0U);

	bmcli.loop();

	ASSERT_EQ(bmcli._busErrorCounter, 1U);
	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);
}




int main(int argc, char** argv)
{
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
}

