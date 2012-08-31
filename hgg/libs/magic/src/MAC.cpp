/** 
 * MAC.cpp 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "MAC.h"

MAC::MAC() {
  callback = NULL;
  buffer = NULL;
  bankSize = 0;
  banks = 0;
}

MAC::~MAC() {

}

void MAC::sendFrame(uchar type, const uchar* data, ushort size) {
  // NOT IMPLEMENTED
}

void MAC::setCallback(recieveFramePtr ptr) {
  callback = ptr;
}

void MAC::setUserBuffer(uchar* buf, ushort size, uchar count) {
  buffer = buf;
  bankSize = size;
  banks = count;
}
 