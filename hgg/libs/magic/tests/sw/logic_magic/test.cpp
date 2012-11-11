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

TEST(BusmasterCardLogic, StateTransitionFromInitToEnumerate)
{
	StrictMock<BusmasterCardPHYMock> bmphy;
	BusmasterCardLogicImpl bmcli(bmphy);	

  // init should go to enumeration
	bmcli.loop();
	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Enumerate);

	// the busmaster should read what cards are available at all
	// in this case, tell him that 2 cards (card0 and card1) are available
	EXPECT_CALL(bmphy, getSlotOccupiedStatus()).Times(AtLeast(1)).WillRepeatedly(Return(0xF3)); 
	bmcli.loop();

  // enumeration should trigger enumeration of the individual cards
  EXPECT_CALL(bmphy, getCurrentTicks()).WillRepeatedly(Return(0));
	for(int i = 1; i < BACKPLANE_MAX_CARDS; i++)
	{
		ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_SendEnumerationQuery);

		// assume that the values returned bz getSlotOccupiedStatus() were written into 
		// the backplane and slots datastructure.
		if(i < 2) {
			ASSERT_EQ(bmcli.getBackplane()[i].isEmpty(), false);

			// when the slot is empty, the card needs enumeration.
			EXPECT_CALL(bmphy, setSelectedSlots(1 << i)).Times(1);
			EXPECT_CALL(bmphy, sendMessage(IsEnumerationMessageForSlot(i))).Times(1);
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


int main(int argc, char** argv)
{
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
}

