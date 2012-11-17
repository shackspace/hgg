
/** 
 * Slot.cpp
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "Slot.h"



Slot::Slot(size_t sid)
: _populated(false)
, _enumerated(false)
, _cid("[undefined]")
, _sid(sid)
{
}

Slot::~Slot()
{
}

bool Slot::isEmpty() const
{
	return !_populated;	
}

bool Slot::isEnumerated() const
{
	return _enumerated;
}

const char* Slot::getCardID() const
{
	return _cid;
}

size_t Slot::getSlotID() const
{
	return _sid;
}

void Slot::setPopulated(bool p)
{
	_populated = p;
}

void Slot::setEnumerated(bool e)
{
	_enumerated = e;
}

void Slot::setCardID(const char* cid)
{
	_cid = cid;
}

