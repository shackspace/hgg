/** 
 * Magic.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"


typedef void (*recieveFramePtr)(uchar bank, ushort size, uchar type, uchar& error);

/** 
 * this class implements code to read from an 8-bit Parallel In / Serial Out 
 * register like the SN74HCT165. 
 */
class Magic {
public:
  Magic();
  ~Magic();

  /** 
   * send a frame to the rs485 bus.
   * @param type the type of packet to send
   * @param data the data to be sent.
   * @param size size of the data - array, number of bytes to be sent.
   */
  void sendFrame(uchar type, const uchar* data, ushort size);

  /** 
   * set a pointer to a user defined recieve function.
   * @param ptr the userdefined function or null to unregister the callback
   */
  void setCallback(recieveFramePtr ptr);

  /** 
   * set a pointer to the banks of buffer data for storing frame payloads.
   * @param buf pointer to the buffer space, size of the memory area is bankSize * banks
   * @bankSize size of each bank
   * @banks number of banks
   */
  void setUserBuffer(uchar* buf, ushort bankSize, uchar banks);
   

private:
  recieveFramePtr callback;
  uchar* buffer;
  ushort bankSize;
  uchar banks;
};

