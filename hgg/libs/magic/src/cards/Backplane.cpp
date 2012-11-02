/** 
 * Backplane.cpp
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "Backplane.h"



Backplane::Backplane()
: _slots(BACKPLANE_CARDS_INITIALIZER_LIST)
{
	
}

Backplane::~Backplane()
{
	
}

const Slot& Backplane::operator[](size_t position) const
{
	return _slots[position];
}

Slot& Backplane::operator[](size_t position)
{
	return const_cast<Slot&>(static_cast<const Backplane&>(*this)[position]);
}

size_t Backplane::slots() const
{
	return BACKPLANE_MAX_CARDS;
}
