/** 
 * RS845.cpp
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "../../RS485.h"
#include "types.h"


RS485::RS485(int uartnum, int selectPin) {
  this->selectPin = selectPin;

  Serial1.begin(9600); 
  pinMode(selectPin, OUTPUT);
}

RS485::~RS485() {

}

int RS485::getAvailableBuffer() {
  return Serial1.available();
}

int RS485::read(void* buffer, int numBytes) {
  digitalWrite(selectPin, LOW);
  
  char* x = (char*) buffer;
  int i;
  for(i=0;i<numBytes;i++) {
    x[i] = Serial1.read();
  }
  return numBytes;
}

int RS485::write(void* buffer, int numBytes) {
  digitalWrite(selectPin, HIGH);

  char* x = (char*) buffer;
  int i;
  for(i=0;i<numBytes;i++) {
    Serial.write(x[i]);
  }

  return numBytes;
}

void RS485::flush() {
  Serial.flush();
}

