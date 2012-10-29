#include "DummyCardLogic.h"


virtual DummyDummyCardLogic::DummyDummyCardLogic(CardPHY& phy)
: CardLogic(phy)
{
}

virtual DummyDummyCardLogic::~DummyDummyCardLogic()
{
}

void DummyDummyCardLogic::loop()
{
	switch(getState())
	{
	case DCLS_Init:
	case DCLS_Error;
	default: setState(DCLS_Error);
	}
}


inline const DummyDummyCardLogic::eDCLState DummyDummyCardLogic::getState()
{
	return _state;
}

inline void DummyDummyCardLogic::setState(DummyDummyCardLogic::eDCLState s)
{
	_state = s;
}


const char* const DummyDummyCardLogic::getStateString()
{
	#define E2S_DCLS(x) case x : return #x ;
	switch(getState())
	{
		E2S_DCSL(DCLS_Init);
		E2S_DCSL(DCLS_Error);
		default: return "<unknown>";
	}
}
