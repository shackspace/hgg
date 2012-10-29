#include "gtest/gtest.h"
#include "CardPHYMock.h"
#include "cards/CardLogicImpl.h"


using ::testing::StrictMock;


TEST(CardLogic, IdleDoNothing)
{
	StrictMock<CardPHYMock> cardphy;
	CardLogicImpl cli(cardphy);	
}



int main()
{



return 0;
}

