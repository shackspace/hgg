#include <stdio.h>
#include <stdlib.h>
#include <cassert>
#include <iostream>

#include "../../src/BusMessage.h"

using namespace std;

#define BSTEST(type,size) \
void test_busmessage_buffersize_ ## type () \
{ \
	cout << "BusMessageRaw::bufferSize(" #type ") == " \
			 <<  BusMessageRaw::bufferSize( type  ) \
			 << " and should be " #size << endl; \
	assert(BusMessageRaw::bufferSize(type) == size && "invalid size" ); \
}

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

/// \brief ensure BusMessage size without considering actual message types is correct
void test_busmessage_raw_size()
{
	cout << "sizeof(BusMessageRaw) == " << sizeof(BusMessageRaw) << " and should be 3" << endl;
	assert( sizeof(BusMessageRaw) == 3 && "invalid size" );
}

/// \brief ensure structure initialization works
void test_busmessage_structure_initialization()
{
  // fixture: setup the mocks for the test
	unsigned char buf[ BusMessageRaw::bufferSize(BMT_ENUM_ANSWER) ];

  // execution: let the test run
	BusMessageRaw& enum_answer = *((BusMessageRaw*)buf);
	enum_answer.initialize(buf,BMT_ENUM_ANSWER);

  // assertions: what should have happened?

	assert( enum_answer.isMessage() && "must have magic bytes set");
	assert( enum_answer.hasPayload() && "must have payload");
	assert( sizeof(buf) == 39 && "invalid size");
	assert( enum_answer.type == BMT_ENUM_ANSWER && "invalid type");
	assert( enum_answer.validPayloadBytes() == 0 && "freshly initialized structure must have zero valid bytes");

  // cleanup?
}


#define TESTRUN(test) std::cout << "Running test: " << #test << std::endl; test ();

int main(int argc, char** argv)
{
	TESTRUN(test_busmessage_raw_size);

	TESTRUN(test_busmessage_buffersize_BMT_ENUM_QUERY);
	TESTRUN(test_busmessage_buffersize_BMT_ENUM_ANSWER);
	TESTRUN(test_busmessage_buffersize_BMT_CFG_GET);
	TESTRUN(test_busmessage_buffersize_BMT_CFG_SET);
	TESTRUN(test_busmessage_buffersize_BMT_CFG_RESULT);
	TESTRUN(test_busmessage_buffersize_BMT_IRQ_INQUIRY);
	TESTRUN(test_busmessage_buffersize_BMT_COMM_REQUEST);
	TESTRUN(test_busmessage_buffersize_BMT_ACK);
	TESTRUN(test_busmessage_buffersize_BMT_NACK);
	TESTRUN(test_busmessage_buffersize_BMT_DATA);

	TESTRUN(test_busmessage_structure_initialization);

  return 0;
}
