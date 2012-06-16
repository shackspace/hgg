/** 
 * ClientBusController.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"


typedef void (*cardSelectPtr)(void);

/** 
 * this class implements code to request / manage interrupt requests for 
 * the client side (non busmaster mode).
 */
class ClientBusController {
public:
  ClientBusController();
  ~ClientBusController();

  /** 
   * requests the bus through sending an IRQ
   */
  void requestBus();

  /** 
   * frees the bus through revoking an IRQ.
   */
  void freeBus();

  /** 
   * @return 1 if the bus is currently requested, 0 otherwise.
   */ 
  int isBusRequested() { return irqState; }
   
  /** 
   * registers a card select function pointer. set null to disable
   * @param ptr pointer to the card selected function.
   */
  void setCardSelectCallback(cardSelectPtr ptr);

private:
  cardSelectPtr callback;
  uchar irqState;
};

