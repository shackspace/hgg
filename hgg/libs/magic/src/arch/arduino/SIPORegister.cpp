/** 
 * SIPORegister.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */


#include "../../SIPORegister.h"


SIPORegister::SIPORegister(int latchPin, int clockPin, int dataPin) {
  this->latchPin = latchPin;
  this->clockPin = clockPin;
  this->dataPin = dataPin;

  // setup the pins.
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);

  // latch and clock are active low, so set them high now.
  digitalWrite(clockPin, HIGH);
  digitalWrite(latchPin, HIGH);
}

SIPORegister::~SIPORegister() {
}

void SIPORegister::write(int byte) {
  int i;

  // output the data.
  for(i=0;i<8;++i) {
    digitalWrite(clockPin, LOW);
    digitalWrite(dataPin, byte & 0x01);
    digitalWrite(clockPin, HIGH);
    byte >>= 1;
  }

  // latch.
  digitalWrite(latchPin, LOW);
  digitalWrite(latchPin, HIGH);
}

