/** 
 * RS845.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */


#include "types.h"


/** 
 * this class implements code to write to an uart.   
 */
class RS485 {
public:
  /** 
   * initialises the uart interface 
   * @param uartnum the uart to use
   */
  RS485(int uartnum, int selectPin);
  ~RS485();

  /** 
   * @return the number of bytes available in the buffer
   */
  int getAvailableBuffer();

  /** 
   * @param buffer buffer to write to
   * @param numBytes the number of bytes to read.
   * @return number of bytes read
   */
  int read(void* buffer, int numBytes);

  /** 
   * @param buffer buffer to write to
   * @param numBytes the number of bytes to read.
   * @return number of bytes read
   */
  int write(void* buffer, int numBytes);

  /**
   * flushes everything in the buffer. 
   */
  void flush();

private:
  void* data;
  int selectPin;
};

