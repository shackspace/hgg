/** 
 * Backplane.cpp
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "Backplane.h"

// trivial placement new
void* operator new(size_t, uint8_t* const b) { return b; }

// trivial placement delete
void operator delete(void*, uint8_t* const) { }

Backplane::Backplane()
: _slots(reinterpret_cast<Slot*>(_slotbuf))
{
	for(uint32_t i=0; i<BACKPLANE_MAX_CARDS; ++i)
	{
		new (_slotbuf+(i*sizeof(Slot))) Slot(i);
	}
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
