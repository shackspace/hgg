#include "CardLogicImpl.h"


CardLogicImpl::CardLogicImpl(CardPHY& phy)
: CardLogic(phy)
{
}

CardLogicImpl::~CardLogicImpl()
{
}

void CardLogicImpl::loop()
{
	switch(getState())
	{
	case DCLS_Init:
	case DCLS_Error:
	default: setState(DCLS_Error);
	}
}


CardLogicImpl::eDCLState CardLogicImpl::getState() const
{
	return _state;
}

inline void CardLogicImpl::setState(CardLogicImpl::eDCLState s) 
{
	_state = s;
}


const char* const CardLogicImpl::getStateString() const
{
	#define E2S_DCLS(x) case x : return #x ;
	switch(getState())
	{
		E2S_DCLS(DCLS_Init);
		E2S_DCLS(DCLS_Error);
		default: return "<unknown>";
	}
}
