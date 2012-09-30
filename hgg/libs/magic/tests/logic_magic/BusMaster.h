#ifndef _BUSMASTER_H_
#define _BUSMASTER_H_

#include "../../src/busmaster/BusMasterCard.h"

#ifdef TEST_CODE
	#define TEST_PUBLIC public
#else
	#define TEST_PUBLIC private
#endif

class BusMaster
{
public:
	BusMaster(BusMasterCard& bmc) : _bmc(bmc), _state(S_INIT) {}

	void loop();

TEST_PUBLIC:
	enum eState
	{
		S_INIT=0,
		S_ERROR,
		S_ASSURE_SLOT0,
		S_IDLE
	};

	inline eState getState() { return _state; }
	inline void setState(eState s) { _state = s; }

private:
	void sInit();
	void sAssureSlot0();
	void sIdle();
	void sError();

	BusMasterCard& _bmc;
	eState _state;
};


#endif //_BUSMASTER_H_

