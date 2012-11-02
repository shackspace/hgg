#ifndef _BACKPLANE_H
#define _BACKPLANE_H
/** 
 * Backplane.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "../config.h"
#include "Slot.h"



/// \brief holds information about the sate of a slot of the backplane and the card that might be put into it.
class Backplane {
public:
	Backplane();
	virtual ~Backplane();

  /// \brief get a slot definition
	const Slot& operator[](size_t position) const;

	Slot& operator[](size_t position);

	size_t slots() const;
private:
	Slot _slots[BACKPLANE_MAX_CARDS];
};

#endif //_BACKPLANE_H

