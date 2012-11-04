#include "CardLogicImpl.h"


CardLogicImpl::CardLogicImpl(CardPHY& phy)
: CardLogic(phy)
, _state(CLIS_Init)
{
}

CardLogicImpl::~CardLogicImpl()
{
}

void CardLogicImpl::loop()
{
	switch(getState())
	{
	case CLIS_Init:	setState(CLIS_Idle); break;
	case CLIS_Idle: setState(CLIS_Idle); break;


	case CLIS_Error:
	default: setState(CLIS_Error);
	}
}


CardLogicImpl::eCLIState CardLogicImpl::getState() const
{
	return _state;
}

inline void CardLogicImpl::setState(CardLogicImpl::eCLIState s) 
{
	_state = s;
}


const char* CardLogicImpl::getStateString() const
{
	#define E2S_CLIS(x) case x : return #x ;
	switch(getState())
	{
		E2S_CLIS(CLIS_Init);
		E2S_CLIS(CLIS_Error);
		default: return "<unknown>";
	}
}
