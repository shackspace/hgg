#include "BusmasterCardLogicImpl.h"


BusmasterCardLogicImpl::BusmasterCardLogicImpl(BusmasterCardPHY& phy)
: BusmasterCardLogic(phy)
, _state(BMCLIS_Init)
{
}

BusmasterCardLogicImpl::~BusmasterCardLogicImpl()
{
}

void BusmasterCardLogicImpl::loop()
{
	switch(getState())
	{
	case BMCLIS_Init:	setState(BMCLIS_Idle); break;
	case BMCLIS_Idle: setState(BMCLIS_Idle); break;


	case BMCLIS_Error:
	default: setState(BMCLIS_Error);
	}
}


BusmasterCardLogicImpl::eBMCLIState BusmasterCardLogicImpl::getState() const
{
	return _state;
}

inline void BusmasterCardLogicImpl::setState(BusmasterCardLogicImpl::eBMCLIState s) 
{
	_state = s;
}


const char* const BusmasterCardLogicImpl::getStateString() const
{
	#define E2S_BMCLIS(x) case x : return #x ;
	switch(getState())
	{
		E2S_BMCLIS(BMCLIS_Init);
		E2S_BMCLIS(BMCLIS_Error);
		default: return "<unknown>";
	}
}
