#ifndef _INCLUDE_CLIENTBUSCONTROLLER_H
#define _INCLUDE_CLIENTBUSCONTROLLER_H
/** 
 * CardLogic.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "BusMessage.h"
#include "CardPHY.h"


typedef void (*cardSelectPtr)(void);


/// \brief base logic class for all cards.
/// here the main loop #Card::loop is implemented which is called as part of the core logic main loop on the microcontroller or processor to handle all card state
/// The phyiscal implementation is handled by and all calls regarding hardware delegated to an instance of CardPHY injected at construction time
class CardLogic {
public:
  virtual CardLogic(CardPHY& phy);
  virtual ~CardLogic();

	/// \brief the core loop doing all the work
	virtual void loop() = 0;


protected:
	CardLogic();
	CardLogic(const CardLogic&);
	CardLogic& operator=(const CardLogic&);

private:
	CardPHY& _phy;
};

#endif // _INCLUDE_CLIENTBUSCONTROLLER_H

