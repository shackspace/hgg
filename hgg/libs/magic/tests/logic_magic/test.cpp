#include "gtest/gtest.h"
#include "CardPHYMock.h"
#include "cards/CardLogicImpl.h"


using ::testing::StrictMock;


TEST(CardLogic, IdleDoNothing)
{
	StrictMock<CardPHYMock> cardphy;
	CardLogicImpl cli(cardphy);	
}



int main(int argc, char** argv)
{
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
}

