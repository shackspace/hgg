#ifndef _BUSMESSAGE_H_
#define _BUSMESSAGE_H_

#include <stdint.h>
#include <string.h>

#include <vector>

enum eBusMessageType : uint8_t
{
	BMT_INVALID = 0,
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

#pragma pack(1)
union BusMessagePayload
{

struct {	uint16_t valid_bytes;
					uint8_t slot_number;
					uint16_t crc16;		} enum_query[];

struct { 	uint16_t valid_bytes;
					uint8_t data[32];
					uint16_t crc16;			} enum_answer[];

struct { 	uint16_t valid_bytes;
					uint32_t address;
					uint16_t crc16;			} cfg_get[];

struct { 	uint16_t valid_bytes;
					uint32_t address;
					uint32_t value;
					uint16_t crc16;				} cfg_set[];

struct { 	uint16_t valid_bytes;
					uint32_t value;
					uint16_t crc16;  			} cfg_result[];

struct {	uint16_t crc16; } irq_inq[];

struct { 	uint16_t valid_bytes;
					uint16_t dest_address;
					uint16_t crc16;	} comm_request[];

struct {	uint16_t crc16; } ack[];
struct {	uint16_t crc16; } nack[];

struct { 	uint16_t valid_bytes;
					uint8_t data[32];
					uint16_t crc16;			} data[];
};
#pragma pack()

/// \brief representation of a bus message of variable size
class BusMessage
{
public:
	/// \brief default constructor, do not attach to any buffer
	BusMessage();

	/// \brief constructor to attach to an existing message held in #buffer
	BusMessage(uint8_t* buffer);

	/// \brief constructor to attach to an (empty) #buffer and initialize it to be of #type
	BusMessage(uint8_t* buffer, eBusMessageType type);
	
	/// \brief destruct a message object
	~BusMessage();

	/// \brief attach instance to another buffer
	void attach(uint8_t* buffer);

	BusMessage(const BusMessage& o);
	BusMessage& operator=(const BusMessage& o);

	static uint16_t getBufferSize(eBusMessageType type);

	bool isValidMessage() const;
	eBusMessageType getType() const;

	void initialize(eBusMessageType type);

	bool hasPayload() const;

	uint16_t getPayloadSize() const;

	const BusMessagePayload* getPayload() const;

	BusMessagePayload* getPayload();

	uint16_t getCRC16() const;


private:
	void copy(const BusMessage& o);

	BusMessageRaw* _bmr;
};













#endif //_BUSMESSAGE_H_
