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
	case BMCLIS_Init:	setState(BMCLIS_Enumerate); break;
	case BMCLIS_Idle: setState(BMCLIS_Idle); break;
	case BMCLIS_Enumerate: handleEnumeration(); break;
	case BMCLIS_SendEnumerationQuery: handleSendEnumerationQuery(); break;
	case BMCLIS_WaitForEnumerationAnswer: handleWaitForEnumerationAnswer(); break;

	case BMCLIS_Error:
	default: setState(BMCLIS_Error);}
}


BusmasterCardLogicImpl::eBMCLIState BusmasterCardLogicImpl::getState() const
{
	return _state;
}

inline void BusmasterCardLogicImpl::setState(BusmasterCardLogicImpl::eBMCLIState s) 
{
	_state = s;
}


const char* BusmasterCardLogicImpl::getStateString() const
{
	#define E2S_BMCLIS(x) case x : return #x ;
	switch(getState())
	{
		E2S_BMCLIS(BMCLIS_Init);
		E2S_BMCLIS(BMCLIS_Error);
		default: return "<unknown>";
	}
}

void BusmasterCardLogicImpl::handleEnumeration() 
{
	int slots = _bmphy.getSlotOccupiedStatus();	
	for(int i=0;i<BACKPLANE_MAX_CARDS;i++) {
		_bp[i].setPopulated( (slots & (1 << i)) );
}

	// begin enumeration, assume that the busmaster is present in slot 0 and begin with slot 1.
	_enumerationCounter = 1;
	setState(BMCLIS_SendEnumerationQuery); 
}

void BusmasterCardLogicImpl::handleSendEnumerationQuery()
{
	if(_enumerationCounter >= BACKPLANE_MAX_CARDS) {
		setState(BMCLIS_Idle);
		return;
	}
	if(_bp[_enumerationCounter].isEmpty()) {
		// since the slot is empty, skip enumeration for this card.
		_enumerationCounter++;
		return;
	}

 	// set the card that is currently being enumerated 
	// as selected card.
	_bmphy.setSelectedSlots(1 << _enumerationCounter);

	// send an enumeration query.
	uint8_t data[40];
	BusMessage bm(data, BMT_ENUM_QUERY);
	bm.getPayload()->enum_query->valid_bytes = 2;
	bm.getPayload()->enum_query->slot_number = _enumerationCounter;
	_bmphy.sendPacket(bm);

	// go to a state that waits for the enumeration result.
	setState(BMCLIS_WaitForEnumerationAnswer);
}

void BusmasterCardLogicImpl::handleWaitForEnumerationAnswer() 
{
	if(!_bmphy.hasNewPacket())
	{
		return;
	}

	// recieve the enumeration answer
	const BusMessage& bm = _bmphy.getNextMessage();
	_bmphy.releaseMessageBuffer(bm);

	// TODO recieves ANY answer. write a test for that later...

	// set the card-state to enumerated.
	_bp[_enumerationCounter].setEnumerated(true);

	_enumerationCounter++;
	setState(BMCLIS_SendEnumerationQuery);
}


