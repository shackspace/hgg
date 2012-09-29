#ifndef _BUSMESSAGE_H_
#define _BUSMESSAGE_H_

#include <stdint.h>

struct BusMessage
{
				uint16_t magic;

		enum eBusMessageType
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
		uint16_t _valid_bytes;	// not that nice, just so we can
														// access the valid_bytes field without
														// determining type first

		struct {	uint16_t valid_bytes;
							uint8_t slot_number;
							uint16_t crc16;		} enum_query;

		struct { 	uint16_t valid_bytes;
							uint8_t data[32];
							uint16_t crc16;			} enum_answer;

		struct { 	uint16_t valid_bytes;
							uint32_t address;
							uint16_t crc16;			} cfg_get;

		struct { 	uint16_t valid_bytes;
							uint32_t address;
							uint32_t value;
							uint16_t crc16;				} cfg_set;

		struct { 	uint16_t valid_bytes;
							uint32_t value;
							uint16_t crc16;  			} cfg_result;

		struct {	uint16_t crc16; } irq_inq;

		struct { 	uint16_t valid_bytes;
							uint16_t dest_address;
							uint16_t crc16;	} comm_request;

		struct {	uint16_t crc16; } nack;

		struct { 	uint16_t valid_bytes;
							uint8_t data[32];
							uint16_t crc16;			} data;
		} payload;


		/// \brief the value expected to be set in the magic field
		static const uint16_t MAGIC;

		/// \brief check if we are a valid message
		inline bool isMessage()
		{
			return magic == MAGIC;
		}

		/// \brief check whether the current message holds any payload
		inline bool hasPayload()
		{
			switch(type)
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

		/// \brief get the number of valid payload bytes of the current message
		inline unsigned short validPayloadBytes()
		{
			if(hasPayload())
			{
				return payload._valid_bytes;
			}

			return 0;
		}
};


#endif //_BUSMESSAGE_H_
