/** 
 * BusMasterCard.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include <cstddef>
#include <busmaster/BusMasterCard.h>
#include "BusMock.h"


BusMasterCard::BusMasterCard() {
}

BusMasterCard::~BusMasterCard() { 
}

int BusMasterCard::getInsertedCardsMask() {
  int result = 0;

  for(int i=0;i<MAX_CARDS;i++) {
    if(_bus->_cards.at(i) != NULL) {
     result |= (1 << i);
    }
  }

  return result;
}

int BusMasterCard::getRequestedInterruptsMask() {
  return _bus->_irqMask;
}

void BusMasterCard::setSelectedCardsMask(int mask) {
  _bus->setCS(mask);
}

void BusMasterCard::setIRQCallback(interruptRequestPtr ptr) {
  callback = ptr;
}


#define CARD_E2S(e) case e : return #e ;

const char* const BusMasterCard::getStateName() const
{
	switch(getState())
	{
	default: return "<unknown>";
	};
}
