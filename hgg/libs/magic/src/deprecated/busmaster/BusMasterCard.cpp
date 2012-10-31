/** 
 * BusMasterCard.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "BusMasterCard.h"


typedef void (*interruptRequest)(void);

BusMasterCard::MasterBusController() {
  callback = NULL;
}

BusMasterCard::~MasterBusController() {
}

uchar BusMasterCard::getCardInsertedStatus() {
  // TODO not implemented.
  return 0;
}

uchar BusMasterCard::getInterruptRequestedStatus() {
  // TODO not implemented.
  return 0;
}

void BusMasterCard::setCardSelectedStatus(uchar status) {
  // TODO not implemented
}

void BusMasterCard::setIRQCallback(interruptRequestPtr ptr) {
  callback = ptr;
}

