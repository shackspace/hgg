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




void Card::sInit()
{
	setState(S_WAIT_FOR_ENUMERATION);
}

void Card::sError()
{
}

void Card::sWaitForEnumeration()
{
	if(hasMessage())
	{
		const BusMessage m = getNextMessage();

		if(!isChipSelected())
		{
			return;
		}

		switch(m.type)
		{
			case BusMessage::BMT_ENUM_QUERY:
			{
				unsigned char buf[BusMessage::bufferSize(BusMessage::BMT_ENUM_ANSWER)];
				BusMessage& reply = *(BusMessage*)(buf);
				reply.initialize(BusMessage::BMT_ENUM_ANSWER);

				_bus->sendMessage(*this,reply);
			}
		}
	}
}


void Card::loop()
{
	switch(_state)
	{
		case S_INIT: 									sInit(); break;
		case S_WAIT_FOR_ENUMERATION:	sWaitForEnumeration(); break;

		case S_ERROR: default:				sError(); break;
	}
	

}
