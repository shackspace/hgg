#include "gtest/gtest.h"
#include "cards/Slot.h"

TEST(Slot, Initialization)
{
	Slot s(0);

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), true);
	ASSERT_EQ(s.isPopulated(), false);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), false);
	ASSERT_STREQ(s.getCardID(), "[undefined]");
}

TEST(Slot, SlotID)
{
	Slot s0(0); ASSERT_EQ(s0.getSlotID(), 0x0);
	Slot s1(1); ASSERT_EQ(s1.getSlotID(), 0x1);
	Slot s2(2); ASSERT_EQ(s2.getSlotID(), 0x2);
	Slot s3(3); ASSERT_EQ(s3.getSlotID(), 0x3);
	Slot s4(4); ASSERT_EQ(s4.getSlotID(), 0x4);
	Slot s5(5); ASSERT_EQ(s5.getSlotID(), 0x5);
	Slot s6(6); ASSERT_EQ(s6.getSlotID(), 0x6);
	Slot s7(7); ASSERT_EQ(s7.getSlotID(), 0x7);
}

TEST(Slot, SetPopulated)
{
	Slot s(0);

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), true);
	ASSERT_EQ(s.isPopulated(), false);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), false);
	ASSERT_STREQ(s.getCardID(), "[undefined]");

	s.setPopulated(true);

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), false);
	ASSERT_EQ(s.isPopulated(), true);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), false);
	ASSERT_STREQ(s.getCardID(), "[undefined]");

	s.setPopulated(false);

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), true);
	ASSERT_EQ(s.isPopulated(), false);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), false);
	ASSERT_STREQ(s.getCardID(), "[undefined]");

}

TEST(Slot, SetEnumerated)
{
	Slot s(0);

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), true);
	ASSERT_EQ(s.isPopulated(), false);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), false);
	ASSERT_STREQ(s.getCardID(), "[undefined]");

	s.setEnumerated(true);

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), true);
	ASSERT_EQ(s.isPopulated(), false);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), true);
	ASSERT_STREQ(s.getCardID(), "[undefined]");

	s.setEnumerated(false);

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), true);
	ASSERT_EQ(s.isPopulated(), false);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), false);
	ASSERT_STREQ(s.getCardID(), "[undefined]");
}

TEST(Slot, SetCardID)
{
	Slot s(0);

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), true);
	ASSERT_EQ(s.isPopulated(), false);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), false);
	ASSERT_STREQ(s.getCardID(), "[undefined]");

	s.setCardID("foobar");

	ASSERT_EQ(s.getSlotID(), 0);
	ASSERT_EQ(s.isEmpty(), true);
	ASSERT_EQ(s.isPopulated(), false);
	ASSERT_EQ(s.isPopulated(), !s.isEmpty());
	ASSERT_EQ(s.isEnumerated(), false);
	ASSERT_STREQ(s.getCardID(), "foobar");
}

int main(int argc, char** argv)
{
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
}

