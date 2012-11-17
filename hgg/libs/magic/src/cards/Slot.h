#ifndef _SLOT_H
#define _SLOT_H
/** 
 * Slot.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "CardLogic.h"
#include "BusmasterCardPHY.h"

/// \brief holds information about the sate of a slot of the backplane and the card that might be put into it.
class Slot {
public:
	Slot(size_t sid);
	virtual ~Slot();

  /// \brief returns true, if the slot has no card plugged into it and is thus emptz
	bool isEmpty() const;

  /// \brief returns true, if a card is plugged into the slot.
	bool isPopulated() const { return !isEmpty(); }
	
	/// \brief check if the card has already been enumerated, making further data available
	bool isEnumerated() const;

	/// \brief get the identifier string of the card plugged into this slot
	const char* getCardID() const;

	/// \brief get numeric slot ID of this slot
	size_t getSlotID() const;

	void setPopulated(bool p);
	void setEnumerated(bool e);
	void setCardID(const char* cid);
protected:
	Slot();

private:
	bool _populated;
	bool _enumerated;
	const char* _cid;

	size_t _sid;
};

#endif //_SLOT_H

