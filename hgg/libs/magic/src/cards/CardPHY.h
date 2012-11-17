#ifndef _CARDPHY_H
#define _CARDPHY_H
/** 
 * CardPHY.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "BusMessage.h"

typedef void (*cardSelectPtr)(void);

/// \brief this class represents the interface to the physical layer abstraction.  implement it for each hardware platform you're targeting.
class CardPHY {
public:
  CardPHY();
  virtual ~CardPHY();

  /** 
   * requests the bus through sending an IRQ
   */
  virtual void requestBus() = 0;

  /** 
   * takes back a pending bus request through revoking an IRQ.
   */
  virtual void releaseBus() = 0;

  /** 
   * @return 1 if the bus is currently requested, 0 otherwise.
   */ 
  virtual bool isBusRequested() = 0;
   
  /** 
   * registers a card select function pointer. set null to disable
   * @param ptr pointer to the card selected function.
   */
  virtual void setCardSelectCallback(cardSelectPtr ptr) = 0;

	virtual bool isCardSelected() = 0;

	/**
	 * get the current ticks which is time units since startup.
	 */
	virtual uint32_t getCurrentTicks() = 0;


protected:
  cardSelectPtr _callback;
};

#endif // _CARDPHY_H

