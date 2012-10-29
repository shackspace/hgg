#include "gtest/gtest.h"
#include "CardPHYMock.h"
#include "cards/CardLogicImpl.h"

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

int main(int argc, char** argv)
{
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
}

