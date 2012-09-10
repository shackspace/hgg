/** 
 * MasterBusController.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "MasterBusController.h"


typedef void (*interruptRequest)(void);

MasterBusController::MasterBusController() {
  callback = NULL;
}

MasterBusController::~MasterBusController() {
}

uchar MasterBusController::getCardInsertedStatus() {
  // TODO not implemented.
  return 0;
}

uchar MasterBusController::getInterruptRequestedStatus() {
  // TODO not implemented.
  return 0;
}

void MasterBusController::setCardSelectedStatus(uchar status) {
  // TODO not implemented
}

void MasterBusController::setIRQCallback(interruptRequestPtr ptr) {
  callback = ptr;
}

