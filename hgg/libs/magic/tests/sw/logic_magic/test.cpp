#include "gtest/gtest.h"
#include "CardPHYMock.h"
#include "BusmasterCardPHYMock.h"
#include "cards/CardLogicImpl.h"
#include "cards/BusmasterCardLogicImpl.h"

using ::testing::StrictMock;

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


TEST(BusmasterCardLogic, StateTransitionFromInitToEnumerate)
{
	StrictMock<BusmasterCardPHYMock> bmphy;
	BusmasterCardLogicImpl bmcli(bmphy);	

  // init should go to enumeration
	bmcli.loop();
	ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_Enumerate);

	// the busmaster should read what cards are available at all
	EXPECT_CALL(bmphy, 

  // enumeration should trigger enumeration of the individual cards
	for(int i = 1; i < MAX_CARDS; i++) {
	  EXPECT_CALL(bmphy, beginCardSelection());
	  EXPECT_CALL(bmphy, selectCard(1));
		EXPECT_CALL(bmphy, commitCardSelection());
	  ASSERT_EQ(bmcli.getState(), BusmasterCardLogicImpl::BMCLIS_WaitingForEnumerationReply));

		// TODO might loop n times here... for many n
		bmcli.loop();

		// there is an answer to the enumeration query
  }

}



int main(int argc, char** argv)
{
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
}

