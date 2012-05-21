/** 
 * PISORegister.cpp
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "../../PISORegister.h"


PISORegister::PISORegister(int latchPin, int clockPin, int dataPin) {
  this->latchPin = latchPin;
  this->clockPin = clockPin;
  this->dataPin = dataPin;

  // initialise the pins for in/output: arduino implementation
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, INPUT);

  digitalWrite(latchPin, HIGH);
  digitalWrite(clockPin, HIGH);
}

PISORegister::~PISORegister() {

}

BYTE PISORegister::read() {
  // read a byte.
  BYTE result = 0;

  // latch.
  digitalWrite(latchPin, LOW);
  digitalWrite(latchPin, HIGH);

  // read data from the register
  for(int i=0; i<8; ++i)
  {
    digitalWrite(7,LOW);
    result <<= 1;
    result |= digitalRead(5) & 0x01;
    digitalWrite(7,HIGH);
  }

  return result;
}


