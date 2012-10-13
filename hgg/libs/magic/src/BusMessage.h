#ifndef _BUSMESSAGE_H_
#define _BUSMESSAGE_H_

#include <stdint.h>
#include <string.h>

#pragma pack(1)
struct BusMessage
{
		uint16_t magic;

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
		} type;

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
		static inline bool isMessage(BusMessage* bmp)
		{
			return bmp && bmp->magic == MAGIC;
		}

		inline bool isMessage()
		{
			return BusMessage::isMessage(this);
		}

		/// \brief check whether the current message holds any payload
		static inline bool hasPayload(BusMessage* bmp)
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
				case BMT_ENUM_QUERY: 			return sizeof(BusMessage) + sizeof(*BusMessage::enum_query);
				case BMT_ENUM_ANSWER:			return sizeof(BusMessage) + sizeof(*BusMessage::enum_answer);
				case BMT_CFG_GET:     		return sizeof(BusMessage) + sizeof(*BusMessage::cfg_get); 
				case BMT_CFG_SET:     		return sizeof(BusMessage) + sizeof(*BusMessage::cfg_set);
				case BMT_CFG_RESULT:  		return sizeof(BusMessage) + sizeof(*BusMessage::cfg_result);
				case BMT_COMM_REQUEST:		return sizeof(BusMessage) + sizeof(*BusMessage::comm_request);
				case BMT_DATA:						return sizeof(BusMessage) + sizeof(*BusMessage::data);
				case BMT_IRQ_INQUIRY:			return sizeof(BusMessage) + sizeof(*BusMessage::irq_inq);
				case BMT_ACK:							return sizeof(BusMessage) + sizeof(*BusMessage::ack);
				case BMT_NACK:						return sizeof(BusMessage) + sizeof(*BusMessage::nack);
				default:
					return 0;
			}

		}


		inline bool hasPayload()
		{
			return BusMessage::hasPayload(this);
		}

		/// \brief get the number of valid payload bytes of the current message
		static inline unsigned short validPayloadBytes(BusMessage* bmp)
		{
			if(BusMessage::hasPayload(bmp))
			{
				return bmp->_valid_bytes[0];
			}

			return 0;
		}

		inline unsigned short validPayloadBytes()
		{
			return BusMessage::validPayloadBytes(this);
		}

		static void initialize(void* p, eBusMessageType bmt)
		{
			if(p)
			{
				memset(p,0x00,BusMessage::bufferSize(bmt));

				BusMessage* bmp = (BusMessage*)p;
				bmp->magic = MAGIC;
				bmp->type = bmt;
			}
		}

		void initialize(eBusMessageType bmt)
		{
			BusMessage::initialize(this, bmt);
		}
		private:
		/// \brief not allowed to instantiate this struct directly
		BusMessage();
};
#pragma pack()

#endif //_BUSMESSAGE_H_
