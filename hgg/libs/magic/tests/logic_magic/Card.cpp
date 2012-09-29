/** 
 * Card.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include <cstddef>
#include <cards/Card.h>
#include "BusMock.h"

Card::Card() {
  irqState = false;
}

Card::~Card() {
}

void Card::requestBus() {
  irqState = true;
  bus->setIRQ(*this, irqState);
}

void Card::releaseBus() {
  irqState = false;
  bus->setIRQ(*this, irqState);
}

void Card::setCardSelectCallback(cardSelectPtr ptr) {
  callback = ptr;
}

void Card::setBusImpl(BusMock& bm) {
  bus = &bm;
}

void Card::releaseBusImpl() {
  bus = NULL;
}

void Card::addMessage(const BusMessage& m)
{
	inqueue.push(m);
}

bool Card::hasMessage()
{
	return !inqueue.empty();
}

const BusMessage Card::getNextMessage()
{
	BusMessage m = inqueue.front();
	inqueue.pop();
	return m;
}
