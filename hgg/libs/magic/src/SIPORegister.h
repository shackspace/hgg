/** 
 * SIPORegister.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */


#include "types.h"


/** 
 * this class implements code to write into an 8-bit Serial in / Parallel Out  
 * register like the SN74HCT565. Theese registers will have the data clocked 
 * into them and then make a latch pin output the data via serial interface. 
 */
class SIPORegister {
public:
  /** 
   * initialise a SIPO register. 
   * @param latchPin (out) pin to use for latch signal
   * @param clockPin (out) pin to use for clock signal
   * @param dataPin (out) pin to use for data
   */
  SIPORegister(int latchPin, int clockPin, int dataPin);
  virtual ~SIPORegister();

  /** 
   * writes a byte to the register and then latches it to make the 
   * outputs take the given data.
   */
  void write(int byte);

private:
  int latchPin;
  int clockPin;
  int dataPin;
};

