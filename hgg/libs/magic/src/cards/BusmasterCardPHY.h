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

};

#endif // _BUSMASTERCARDPHY_H

