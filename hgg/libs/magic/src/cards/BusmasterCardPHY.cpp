/** 
 * BusmasterCardPHY.cpp 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "BusmasterCardPHY.h"


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

void BusmasterCardPHY::sendPacket(const BusMessage& bm)
{
	// not implemented
}

bool BusmasterCardPHY::hasNewPacket()
{
}

const BusMessage& BusmasterCardPHY::getNextMessage()
{
}

void BusmasterCardPHY::releaseMessageBuffer(const BusMessage& bm)
{
}

