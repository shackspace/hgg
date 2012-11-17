#ifndef _BUSMASTERCARDLOGIC_H_
#define _BUSMASTERCARDLOGIC_H_

#include "BusmasterCardLogic.h"
#include "Backplane.h"

#ifdef HGG_TESTING
#include <gtest/gtest_prod.h>
#endif //HGG_TESTING

class BusmasterCardLogicImpl : public BusmasterCardLogic {
public:
	BusmasterCardLogicImpl(BusmasterCardPHY& phy);
	virtual ~BusmasterCardLogicImpl();

	/// \brief the core loop doing all the work
	virtual void loop();


	enum eBMCLIState {
		BMCLIS_Init,
		BMCLIS_Error,
		BMCLIS_Enumerate,
		BMCLIS_SendEnumerationQuery,
		BMCLIS_WaitForEnumerationAnswer,
		BMCLIS_EnumerationTimeout,
		BMCLIS_Idle,
		BMCLIS_SendBusEnquiry,
		BMCLIS_WaitForBusEnquiry,
		BMCLIS_AckBusEnquiry,
		BMCLIS_NackBusEnquiry,
		BMCLIS_ListenToCommunication,
	};

	eBMCLIState getState() const;

	const char* getStateString() const;

	Backplane& 	getBackplane() { return _bp; }

protected:
	/// \brief finds out which cards need to be enumerated.
	void				handleEnumeration();

	/// \brief sends an enumeration query message.
	void				handleSendEnumerationQuery();

	/// \brief waits for the answer on the enumeration and handles it.
	void				handleWaitForEnumerationAnswer();

	/// \brief cleanup after a failed enumeration.
	void        handleEnumerationTimeout();

	/// \brief handle idle state.
	void        handleIdle();

	/// \brief sends a bus enquiry message.
	void        handleSendBusEnquiry();

	/// \brief waits for an answer to a bus enquiry
  void        handleWaitForBusEnquiry();

  /// \brief acknowledge a bus enquiry and begin communication.
  void        handleAcknowledgeBusEnquiry();

  /// \brief wait until communication finishes
  void        handleListenToCommunication();

	/// \brief get the number of encountered bus errors
	int         getBusErrorCount();

private:
	void setState(eBMCLIState s);
	eBMCLIState _state;

	Backplane _bp;

	uint32_t	_enumerationCounter;
	uint32_t _busErrorCounter;
	uint32_t _tickCountMarker;
	uint8_t _activeCard;
	uint8_t _target;

#ifdef HGG_TESTING
  FRIEND_TEST(BusmasterCardLogic, EnumerationFailureWhenEnumerationAnswerIsMissing);
  FRIEND_TEST(BusmasterCardLogic, EnumerationOfCardTimesOut);
  FRIEND_TEST(BusmasterCardLogic, SendMessageFromCardToOtherCard);
#endif //HGG_TESTING
};


#endif //_BUSMASTERCARDLOGIC_H_

