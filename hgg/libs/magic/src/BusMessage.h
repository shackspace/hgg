#ifndef _BUSMESSAGE_H_
#define _BUSMESSAGE_H_

class BusMessage
{
	public:
				typedef struct
				{
					unsigned char magic[2];

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
					
					unsigned short valid_bytes;
					
					union
					{
						unsigned uint16_t valid_bytes; // not that nice

						struct {	unsigned uint16_t valid_bytes;
											unsigned uint8_t slot_number;		} enum_query;

						struct { 	unsigned uint16_t valid_bytes;
											unsigned uint8_t data[32];			} enum_answer;

						struct { 	unsigned uint16_t valid_bytes;
											unsigned uint32_t address;			} cfg_get;

						struct { 	unsigned uint16_t valid_bytes;
											unsigned uint32_t address;
											unsigned uint32_t value;				} cfg_set;

						struct { 	unsigned uint16_t valid_bytes;
											unsigned uint32_t value;  			} cfg_result;

						// irq_inq

						struct { 	unsigned uint16_t valid_bytes;
											unsigned uint16_t dest_address;	} comm_request;
						
						// ack

						// nack

						struct { 	unsigned uint16_t valid_bytes;
											unsigned uint8_t data[32];			} data;
						
					} payload;

					unsigned short crc16;
				} Msg;



				static inline bool hasPayload(const Msg& m)
				{
					switch(m.type)
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

				static inline unsigned short validBytes(const Msg& m)
				{
					if(hasPayload(m))
					{
						return m.payload.valid_size;
					}

					return 0;
				}
};


#endif //_BUSMESSAGE_H_
