/** 
 * MasterBusController.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"


typedef void (*interruptRequestPtr)(void);

/** 
 * this class implements code to request / manage interrupt requests for 
 * the client side (non busmaster mode).
 */
class MasterBusController {
public:
  MasterBusController();
  ~MasterBusController();

  /** 
   * @return status byte with inserted cards 
   * for each card a bit in the byte is set or not set (0bit = card inserted, 1bit = card not inserted)
   */
  uchar getCardInsertedStatus();

  /** 
   * @return interrupt requested status 
   * for each card port a bit is set or not set (0bit = requested, 1bit = not requested)
   */
  uchar getInterruptRequestedStatus();

  /** 
   * @param status flags to select / deselect cards.
   * for each card port a bit is set where 0bit means card is enabled, 1bit means card is disabled
   */
  void setCardSelectedStatus(uchar status);

  /** 
   * registers a card select function pointer. set null to disable
   * @param ptr pointer to the card selected function.
   */
  void setIRQCallback(interruptRequestPtr ptr);

private:
  interruptRequestPtr callback;
};

