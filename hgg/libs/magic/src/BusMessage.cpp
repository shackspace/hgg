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
		BusMessagePayload payload[];
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
				case BMT_ENUM_QUERY: 			return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::enum_query);
				case BMT_ENUM_ANSWER:			return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::enum_answer);
				case BMT_CFG_GET:     		return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::cfg_get); 
				case BMT_CFG_SET:     		return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::cfg_set);
				case BMT_CFG_RESULT:  		return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::cfg_result);
				case BMT_COMM_REQUEST:		return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::comm_request);
				case BMT_DATA:						return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::data);
				case BMT_IRQ_INQUIRY:			return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::irq_inq);
				case BMT_ACK:							return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::ack);
				case BMT_NACK:						return sizeof(BusMessageRaw) + sizeof(*BusMessagePayload::nack);
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
: _bmr(0)
{
}

BusMessage::BusMessage(uint8_t* buffer)
{
	_bmr = reinterpret_cast<BusMessageRaw*>(buffer);
}

BusMessage::BusMessage(uint8_t* buffer, eBusMessageType type)
{
	_bmr = reinterpret_cast<BusMessageRaw*>(buffer);
	initialize(type);
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
	return _bmr && BusMessageRaw::isMessage( _bmr );
}

eBusMessageType BusMessage::getType() const
{
	return !_bmr ? BMT_INVALID : _bmr->type;
}

void BusMessage::initialize(eBusMessageType type)
{
	if(!_bmr)
	{
		return;
	}

	BusMessageRaw::initialize( _bmr, type );
}

bool BusMessage::hasPayload() const
{
	return _bmr && BusMessageRaw::hasPayload( _bmr );
}

uint16_t BusMessage::getPayloadSize() const
{
	return !_bmr ? 0 : BusMessageRaw::validPayloadBytes( _bmr );
}

const BusMessagePayload* BusMessage::getPayload() const
{
	return _bmr ? _bmr->payload : 0;
}

BusMessagePayload* BusMessage::getPayload()
{
	return const_cast<BusMessagePayload*>( static_cast<const BusMessage&>(*this).getPayload() );
}

uint16_t BusMessage::getCRC16() const
{
	return 0;
}

void BusMessage::copy(const BusMessage& o)
{
	// only bend pointers
	_bmr = o._bmr;
}

