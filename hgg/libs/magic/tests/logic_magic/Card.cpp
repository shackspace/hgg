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
  _irqState = false;
}

Card::~Card() {
}

void Card::requestBus() {
  _irqState = true;
  _bus->setIRQ(*this, _irqState);
}

void Card::releaseBus() {
  _irqState = false;
  _bus->setIRQ(*this, _irqState);
}

void Card::setCardSelectCallback(cardSelectPtr ptr) {
  _callback = ptr;
}

bool Card::isChipSelected()
{
	return _bus->isChipSelected(*this);
}

void Card::setBusImpl(BusMock& bm) {
  _bus = &bm;
}

void Card::releaseBusImpl() {
  _bus = NULL;
}

void Card::addMessage(const BusMessage& m)
{
	_inqueue.push(m);
}

bool Card::hasMessage()
{
	return !_inqueue.empty();
}

const BusMessage Card::getNextMessage()
{
	BusMessage m = _inqueue.front();
	_inqueue.pop();
	return m;
}
