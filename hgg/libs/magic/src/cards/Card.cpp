/** 
 * Card.cpp 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "Card.h"

typedef void (*cardSelectPtr)(void);

Card::ClientBusController() {
  irqState = 0;
  callback = NULL;
}

Card::~ClientBusController() {

}

void Card::requestBus() {
  irqState = 1;
  // TODO set irq to low
}

void Card::freeBus() {
  irqState = 0;
  // TODO set irq to high
}
   
void Card::setCardSelectCallback(cardSelectPtr ptr) {
  callback = ptr;
}

