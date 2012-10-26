#ifndef _INCLUDE_CLIENTBUSCONTROLLER_H
#define _INCLUDE_CLIENTBUSCONTROLLER_H
/** 
 * Card.h 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "BusMessage.h"

typedef void (*cardSelectPtr)(void);
#ifdef TEST_CODE
class BusMock;
#include <queue>
#endif // TEST_CODE

#ifdef TEST_CODE
	#define TEST_PUBLIC public
#else
	#define TEST_PUBLIC private
#endif

/** 
 * this class implements code to request / manage interrupt requests for 
 * the client side (non busmaster mode).
 */
class Card {
public:
  Card();
  ~Card();

  /** 
   * requests the bus through sending an IRQ
   */
  void requestBus();

  /** 
   * takes back a pending bus request through revoking an IRQ.
   */
  void releaseBus();

  /** 
   * @return 1 if the bus is currently requested, 0 otherwise.
   */ 
  bool isBusRequested() { return _irqState; }
   
  /** 
   * registers a card select function pointer. set null to disable
   * @param ptr pointer to the card selected function.
   */
  void setCardSelectCallback(cardSelectPtr ptr);

	bool isChipSelected();

	void loop();
TEST_PUBLIC:
	enum eState
	{
		S_INIT=0,
		S_ERROR,
		S_WAIT_FOR_ENUMERATION
	};

	inline eState getState() { return _state; }
	inline void setState(eState s) { _state = s; }

protected:
#ifdef TEST_CODE
  BusMock* _bus;
  friend class BusMock;

  void setBusImpl(BusMock& bus);
  void releaseBusImpl();
	void addMessage(const BusMessage& m);
	bool hasMessage();
	const BusMessage getNextMessage();

	typedef std::queue<BusMessage> MsgQueue;
	MsgQueue _inqueue;

#endif // TEST_CODE

	void sInit();
	void sError();
	void sWaitForEnumeration();

  cardSelectPtr _callback;
  bool _irqState;

	eState _state;
};

#endif // _INCLUDE_CLIENTBUSCONTROLLER_H

