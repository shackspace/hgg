#ifndef _BUSMASTERCARDPHYMOCK_H_
#define _BUSMASTERCARDPHYMOCK_H_

#include "gmock/gmock.h"
#include "cards/BusmasterCardPHY.h"
#include "BusMessage.h"

typedef void (*cardSelectPtr)(void);

/// \brief this class represents the interface to the physical layer abstraction.  implement it for each hardware platform you're targeting.
class BusmasterCardPHYMock : public BusmasterCardPHY {
public:
  MOCK_METHOD0(requestBus, void());
  MOCK_METHOD0(releaseBus, void());
  MOCK_METHOD0(isBusRequested, bool());
  MOCK_METHOD1(setCardSelectCallback, void(cardSelectPtr ptr));
	MOCK_METHOD0(isCardSelected, bool());
	MOCK_METHOD0(getSlotOccupiedStatus, uint8_t());
	MOCK_METHOD1(setSelectedSlots, void(uint8_t));
	MOCK_METHOD1(sendMessage, void(const BusMessage&));
	MOCK_METHOD0(hasNewMessage, bool());
	MOCK_METHOD0(getNextMessage, const BusMessage&());
	MOCK_METHOD1(releaseMessage, void(const BusMessage&));
	MOCK_METHOD0(getCurrentTicks, uint32_t());
};


#endif //_BUSMASTERCARDPHYMOCK_H_
