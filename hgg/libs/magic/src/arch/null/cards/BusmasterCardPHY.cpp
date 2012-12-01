/** 
 * BusmasterCardPHY.cpp 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "cards/BusmasterCardPHY.h"


BusmasterCardPHY::BusmasterCardPHY()
{
}

BusmasterCardPHY::~BusmasterCardPHY() {

}

uint8_t BusmasterCardPHY::getSlotOccupiedStatus() 
{
  // not implemented.
	return 0;
}

void BusmasterCardPHY::setSelectedSlots(uint8_t selectionMask) 
{
	// not implemented
}

void BusmasterCardPHY::sendMessage(const BusMessage& bm)
{
	// not implemented
}

bool BusmasterCardPHY::hasNewMessage()
{
	// not implemented
	return false;
}

const BusMessage& BusmasterCardPHY::getNextMessage()
{
	// not implemented
	static const BusMessage bm;
	return bm;
}

void BusmasterCardPHY::releaseMessage(const BusMessage& bm)
{
}

uint8_t BusmasterCardPHY::getIRQStatus()
{
	// not implemented
  return 0x00;
}

bool BusmasterCardPHY::readIsBusRequestedState()
{
	// not implemented
  return true;
}
