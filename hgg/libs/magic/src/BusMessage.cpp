#include "BusMessage.h"

#pragma pack(1)
struct BusMessageRaw
{
		uint16_t magic;

		enum eBusMessageType type;

		union
		{
		uint16_t _valid_bytes[];	// not that nice, just so we can
														// access the valid_bytes field without
														// determining type first

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


		/// \brief the value expected to be set in the magic field
		static const uint16_t MAGIC = 0x5555;


		/// \brief check if we are a valid message
		static inline bool isMessage(const BusMessageRaw* const bmp) 
		{
			return bmp && bmp->magic == MAGIC;
		}

		inline bool isMessage() const
		{
			return BusMessageRaw::isMessage(this);
		}

		/// \brief check whether the current message holds any payload
		static inline bool hasPayload(const BusMessageRaw* const bmp) 
		{
			if(!bmp)
			{
				return false;
			}

			switch(bmp->type)
			{
				case BMT_ENUM_QUERY:
				case BMT_ENUM_ANSWER:
				case BMT_CFG_GET:
				case BMT_CFG_SET:
				case BMT_CFG_RESULT:
				case BMT_COMM_REQUEST:
				case BMT_DATA:
					return true;
				case BMT_IRQ_INQUIRY:
				case BMT_ACK:
				case BMT_NACK:
				default:
					return false;
			}
		}

		static inline uint16_t bufferSize(eBusMessageType bmt)
		{
			switch(bmt)
			{
				case BMT_ENUM_QUERY: 			return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::enum_query);
				case BMT_ENUM_ANSWER:			return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::enum_answer);
				case BMT_CFG_GET:     		return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::cfg_get); 
				case BMT_CFG_SET:     		return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::cfg_set);
				case BMT_CFG_RESULT:  		return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::cfg_result);
				case BMT_COMM_REQUEST:		return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::comm_request);
				case BMT_DATA:						return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::data);
				case BMT_IRQ_INQUIRY:			return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::irq_inq);
				case BMT_ACK:							return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::ack);
				case BMT_NACK:						return sizeof(BusMessageRaw) + sizeof(*BusMessageRaw::nack);
				default:
					return 0;
			}

		}


		inline bool hasPayload() const
		{
			return BusMessageRaw::hasPayload(this);
		}

		/// \brief get the number of valid payload bytes of the current message
		static inline unsigned short validPayloadBytes(const BusMessageRaw* const bmp) 
		{
			if(BusMessageRaw::hasPayload(bmp))
			{
				return bmp->_valid_bytes[0];
			}

			return 0;
		}

		inline unsigned short validPayloadBytes() const
		{
			return BusMessageRaw::validPayloadBytes(this);
		}

		static void initialize(void* p, eBusMessageType bmt)
		{
			if(p)
			{
				memset(p,0x00,BusMessageRaw::bufferSize(bmt));

				BusMessageRaw* bmp = (BusMessageRaw*)p;
				bmp->magic = MAGIC;
				bmp->type = bmt;
			}
		}

		void initialize(eBusMessageType bmt)
		{
			BusMessageRaw::initialize(this, bmt);
		}
		private:
		/// \brief not allowed to instantiate this struct directly
		BusMessageRaw();
};
#pragma pack()

BusMessage::BusMessage()
{
}

BusMessage::BusMessage(eBusMessageType type)
{
}

BusMessage::~BusMessage()
{
}

BusMessage::BusMessage(const BusMessage& o)
{
	copy(o);
}

BusMessage& BusMessage::operator=(const BusMessage& o)
{
	copy(o);
	return *this;
}

uint16_t BusMessage::getBufferSize(eBusMessageType type)
{
	return BusMessageRaw::bufferSize(type);
}

bool BusMessage::isValidMessage() const
{
	return BusMessageRaw::isMessage( reinterpret_cast<const BusMessageRaw*>( &_buffer.at(0) ) );
}

eBusMessageType BusMessage::getType() const
{
	return reinterpret_cast<const BusMessageRaw*>( &_buffer.at(0) )->type;
}

void BusMessage::initialize(eBusMessageType type)
{
	_buffer.reserve( BusMessageRaw::bufferSize(type) );
	BusMessageRaw::initialize( reinterpret_cast<BusMessageRaw*>( &_buffer.at(0) ), type );
}

bool BusMessage::hasPayload() const
{
	return BusMessageRaw::hasPayload( reinterpret_cast<const BusMessageRaw*>( &_buffer.at(0) ) );
}

uint16_t BusMessage::getPayloadSize() const
{
	return BusMessageRaw::validPayloadBytes( reinterpret_cast<const BusMessageRaw*>( &_buffer.at(0) ) );
}

const uint8_t* const BusMessage::getPayload() const
{
	
}

uint8_t* BusMessage::getPayload()
{
	return const_cast<uint8_t*>( reinterpret_cast<const BusMessage&>(*this).getPayload() );
}

uint16_t BusMessage::getCRC16() const
{

}

void BusMessage::copy(const BusMessage& o)
{
	_buffer = o._buffer;
}

