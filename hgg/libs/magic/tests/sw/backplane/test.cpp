#include "gtest/gtest.h"
#include "backplane/Backplane.h"

TEST(Backplane, Initialization)
{
	Backplane bp;
	ASSERT_EQ(bp.slots(), BACKPLANE_MAX_CARDS);
	for(size_t i=0; i<BACKPLANE_MAX_CARDS; ++i)
	{
		ASSERT_EQ(bp[i].getSlotID(), i);
	}
}

TEST(Backplane, WriteAccessToSlotFeature)
{
#define TESTSTRING "OMGPONIES!1"
	Backplane bp;
	for(size_t i=0; i<BACKPLANE_MAX_CARDS; ++i)
	{
		bp[i].setCardID(TESTSTRING);
		ASSERT_STREQ(bp[i].getCardID(), TESTSTRING);
	}
}

int main(int argc, char** argv)
{
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
}

