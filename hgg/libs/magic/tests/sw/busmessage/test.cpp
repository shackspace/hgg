#include "gtest/gtest.h"

#include "BusMessage.h"
#include "BusMessage.cpp"




TEST(BusMessage, MessageTypes)
{
#define BSTEST(type,size) ASSERT_EQ(BusMessage::getBufferSize(type), size) \
	<< "BusMessage::getBufferSize(" #type ") == " \
	<<  BusMessage::getBufferSize( type  ) \
	<< " and should be " #size;

	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_ENUM_QUERY,8)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_ENUM_ANSWER,39)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_CFG_GET,11)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_CFG_SET,15)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_CFG_RESULT,11)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_IRQ_INQUIRY,5)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_COMM_REQUEST,9)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_ACK,5)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_NACK,5)
	/// \brief ensure that the specific message type size is as big as expected
	BSTEST(BMT_DATA,39)
}

/// \brief ensure BusMessage size without considering actual message types is correct
TEST(BusMessage, BusMessageRawSize)
{
	ASSERT_EQ(sizeof(BusMessageRaw), 3);
}

/// \brief ensure structure initialization works
TEST(BusMessage, Initialization)
{
	unsigned char buf[ BusMessage::getBufferSize(BMT_ENUM_ANSWER) ];

	BusMessageRaw& enum_answer = *((BusMessageRaw*)buf);
	enum_answer.initialize(buf,BMT_ENUM_ANSWER);

	ASSERT_EQ(enum_answer.isMessage(), true);
	ASSERT_EQ(enum_answer.hasPayload(), true);
	ASSERT_EQ(sizeof(buf), 39);
	ASSERT_EQ(enum_answer.type, BMT_ENUM_ANSWER);
	ASSERT_EQ(enum_answer.validPayloadBytes(), 0);
}



int main(int argc, char** argv)
{
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
}
