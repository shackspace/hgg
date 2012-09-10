/** 
 * ClientBusController.cpp 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "ClientBusController.h"

typedef void (*cardSelectPtr)(void);

ClientBusController::ClientBusController() {
  irqState = 0;
  callback = NULL;
}

ClientBusController::~ClientBusController() {

}

void ClientBusController::requestBus() {
  irqState = 1;
  // TODO set irq to low
}

void ClientBusController::freeBus() {
  irqState = 0;
  // TODO set irq to high
}
   
void ClientBusController::setCardSelectCallback(cardSelectPtr ptr) {
  callback = ptr;
}

