#ifndef _BUSMASTERCARDPHY_H
#define _BUSMASTERCARDPHY_H
/** 
 * BusmasterCardPHY.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "CardPHY.h"


/// \brief this class represents the interface to the physical layer abstraction.  implement it for each hardware platform you're targeting.
class BusmasterCardPHY : public CardPHY {
public:
  BusmasterCardPHY();
  virtual ~BusmasterCardPHY();

	/// \brief read the status which cards are inserted from the bus
	virtual uint8_t 			getSlotOccupiedStatus();

	/// \brief set the status of the cards that are selected on the bus
	virtual void					setSelectedSlots(uint8_t selectMask);

	/// \brief sends a packet over the bus
	virtual void					sendPacket(const BusMessage& bm);

	/// \brief returns true if a new packet arrived at the phy
	virtual bool					hasNewPacket();

	/// \brief get the next message from the phy
	virtual const BusMessage& getNextMessage();

	/// \brief release the message buffer and make it available for transfer again.
	virtual void					releaseMessageBuffer(const BusMessage& bm);

};

#endif // _BUSMASTERCARDPHY_H

