#ifndef _BUSMASTERCARDLOGIC_H
#define _BUSMASTERCARDLOGIC_H
/** 
 * BusmasterCardLogic.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "CardLogic.h"



/// \brief base logic class for all cards.
/// here the main loop #Card::loop is implemented which is called as part of the core logic main loop on the microcontroller or processor to handle all card state
/// The phyiscal implementation is handled by and all calls regarding hardware delegated to an instance of CardPHY injected at construction time
class BusmasterCardLogic : public CardLogic {
public:
  BusmasterCardLogic(BusmasterCardPHY& phy);
  virtual ~BusmasterCardLogic();

	/// \brief the core loop doing all the work
	virtual void loop() = 0;


private:
	BusmasterCardPHY& _bmphy;
};

#endif //_BUSMASTERCARDLOGIC_H

