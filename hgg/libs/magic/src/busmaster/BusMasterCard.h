#ifndef _INCLUDE_MASTERBUSCONTROLLER_H
#define _INCLUDE_MASTERBUSCONTROLLER_H
/** 
 * BusMasterCard.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "../cards/Card.h"

typedef void (*interruptRequestPtr)(void);

/** 
 * this class implements code to request / manage interrupt requests for 
 * the client side (non busmaster mode).
 */
class BusMasterCard : public Card {
public:
  BusMasterCard();
  ~BusMasterCard();

  /** 
   * @return status byte with inserted cards 
   * for each card a bit is set if the card is inserted in the corresponding slot
   */
  int getInsertedCardsMask();

  /** 
   * @return interrupt requested status 
   * for each card port a bit is set or not set (1bit = requested, 0bit = not requested)
   */
  int getRequestedInterruptsMask();

  /** 
   * @param status flags to select / deselect cards.
   * for each card port a bit is set where 0bit means card is enabled, 1bit means card is disabled
   */
  void setSelectedCardsMask(int mask);

  /** 
   * registers a card select function pointer. set null to disable
   * this will be called when the wired or changes status
   * @param ptr pointer to the card selected function.
   */
  void setIRQCallback(interruptRequestPtr ptr);

private:
  interruptRequestPtr callback;
};

#endif // _INCLUDE_MASTERBUSCONTROLLER_H

