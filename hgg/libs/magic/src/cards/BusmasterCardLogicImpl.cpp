#include "BusmasterCardLogicImpl.h"


BusmasterCardLogicImpl::BusmasterCardLogicImpl(CardPHY& phy)
: BusmasterCardLogic(phy)
, _state(CLIS_Init)
{
}

BusmasterCardLogicImpl::~BusmasterCardLogicImpl()
{
}

void BusmasterCardLogicImpl::loop()
{
	switch(getState())
	{
	case CLIS_Init:	setState(CLIS_Idle); break;
	case CLIS_Idle: setState(CLIS_Idle); break;


	case CLIS_Error:
	default: setState(CLIS_Error);
	}
}


BusmasterCardLogicImpl::eCLIState BusmasterCardLogicImpl::getState() const
{
	return _state;
}

inline void BusmasterCardLogicImpl::setState(BusmasterCardLogicImpl::eCLIState s) 
{
	_state = s;
}


const char* const BusmasterCardLogicImpl::getStateString() const
{
	#define E2S_CLIS(x) case x : return #x ;
	switch(getState())
	{
		E2S_CLIS(CLIS_Init);
		E2S_CLIS(CLIS_Error);
		default: return "<unknown>";
	}
}
