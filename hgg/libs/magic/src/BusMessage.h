#ifndef _BUSMESSAGE_H_
#define _BUSMESSAGE_H_

#include <stdint.h>
#include <string.h>

#include <vector>

enum eBusMessageType : uint8_t
{
	BMT_ENUM_QUERY = 1,
	BMT_ENUM_ANSWER,
	BMT_CFG_GET,
	BMT_CFG_SET,
	BMT_CFG_RESULT,
	BMT_IRQ_INQUIRY,
	BMT_COMM_REQUEST,
	BMT_ACK,
	BMT_NACK,
	BMT_DATA
};

struct BusMessageRaw;

/// \brief representation of a bus message of variable size
class BusMessage
{
public:
	BusMessage();
	BusMessage(eBusMessageType type);
	~BusMessage();
	BusMessage(const BusMessage& o);
	BusMessage& operator=(const BusMessage& o);

	static uint16_t getBufferSize(eBusMessageType type);

	bool isValidMessage() const;
	eBusMessageType getType() const;

	void initialize(eBusMessageType type);

	bool hasPayload() const;

	uint16_t getPayloadSize() const;

	const uint8_t* const getPayload() const;

	uint8_t* getPayload();

	uint16_t getCRC16() const;
private:
	void copy(const BusMessage& o);

	typedef std::vector<uint8_t> buf_vec;
	buf_vec _buffer;
};













#endif //_BUSMESSAGE_H_
