/** 
 * PISORegister.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */


#include "types.h"


/** 
 * this class implements code to read from an 8-bit Parallel In / Serial Out 
 * register like the SN74HCT165. 
 */
class PISORegister {
public:
  /** 
   * initialise a PISO register. 
   * @param latchPin (out) pin to use for latch signal
   * @param clockPin (out) pin to use for clock signal
   * @param dataPin (in) pin to use for data
   */
  PISORegister(int latchPin, int clockPin, int dataPin);
  ~PISORegister();

  /** 
   * reads a byte from the Parallel in / Serial Out register
   */
  BYTE read();

private:
  int latchPin;
  int clockPin;
  int dataPin;
};

