#include "gmock/gmock.h"
#include "cards/CardPHY.h"

typedef void (*cardSelectPtr)(void);

/// \brief this class represents the interface to the physical layer abstraction.  implement it for each hardware platform you're targeting.
class CardPHYMock : public CardPHY {
public:
  MOCK_METHOD0(requestBus, void());
  MOCK_METHOD0(releaseBus, void());
  MOCK_METHOD0(isBusRequested, bool());
  MOCK_METHOD1(setCardSelectCallback, void(cardSelectPtr ptr));
	MOCK_METHOD0(isCardSelected, bool());
};


