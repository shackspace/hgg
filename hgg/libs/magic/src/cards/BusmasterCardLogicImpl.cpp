#include "BusmasterCardLogicImpl.h"


BusmasterCardLogicImpl::BusmasterCardLogicImpl(BusmasterCardPHY& phy)
: BusmasterCardLogic(phy)
, _state(BMCLIS_Init)
, _enumerationCounter(0)
, _busErrorCounter(0)
, _activeCard(0)
, _target(0)
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
	case BMCLIS_Idle: handleIdle(); break;
	case BMCLIS_Enumerate: handleEnumeration(); break;
	case BMCLIS_SendEnumerationQuery: handleSendEnumerationQuery(); break;
	case BMCLIS_WaitForEnumerationAnswer: handleWaitForEnumerationAnswer(); break;
	case BMCLIS_EnumerationTimeout: handleEnumerationTimeout(); break;
	case BMCLIS_SendBusEnquiry: handleSendBusEnquiry(); break;
	case BMCLIS_WaitForBusEnquiry: handleWaitForBusEnquiry(); break;
	case BMCLIS_AckBusEnquiry: handleAcknowledgeBusEnquiry(); break;
	case BMCLIS_ListenToCommunication: handleListenToCommunication(); break;

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

int BusmasterCardLogicImpl::getBusErrorCount()
{
  return _busErrorCounter;
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

void BusmasterCardLogicImpl::handleIdle()
{
  if(_bmphy.readIsBusRequestedState()) {
    setState(BMCLIS_SendBusEnquiry);
    return;
  }

  setState(BMCLIS_Idle);
}

void BusmasterCardLogicImpl::handleSendBusEnquiry()
{
  uint8_t status = _bmphy.getIRQStatus();
  for(_activeCard=1;_activeCard<BACKPLANE_MAX_CARDS;_activeCard++) {
    if(status & (1 << _activeCard)) {
      // send message to the device.
      _bmphy.setSelectedSlots(1 << _activeCard);

      uint8_t data[40];
      BusMessage bm(data, BMT_IRQ_INQUIRY);
      _bmphy.sendMessage(bm);

      // wait for an answer to the bus enquiry.
      setState(BMCLIS_WaitForBusEnquiry);
      return;
    }
  }

  // no one is waiting for the bus. TODO this is an error
  setState(BMCLIS_Idle);
}

void BusmasterCardLogicImpl::handleWaitForBusEnquiry()
{
  if(!_bmphy.hasNewMessage()) {
    return;
  }

  const BusMessage& msg = _bmphy.getNextMessage();

  // acknowledge the message.
  setState(BMCLIS_AckBusEnquiry);
  _target = msg.getPayload()->comm_request->dest_address;

  // release the message...
  _bmphy.releaseMessage(msg);
}

void BusmasterCardLogicImpl::handleAcknowledgeBusEnquiry()
{
  // send message to the card.
  uint8_t data[40];
  BusMessage ackMsg(data, BMT_ACK);
  _bmphy.sendMessage(ackMsg);

  // deselect.
  _bmphy.setSelectedSlots(0x00);

  // select both parties.
  _bmphy.setSelectedSlots((1 << _target) |(1 << _activeCard));
	setState(BMCLIS_ListenToCommunication);
}

void BusmasterCardLogicImpl::handleListenToCommunication()
{
  // wait for finishing message...
  if(!_bmphy.hasNewMessage()) {
    return;
  }

  const BusMessage& bm = _bmphy.getNextMessage();

  _bmphy.setSelectedSlots(0x00);

  // cleanup.
  _bmphy.releaseMessage(bm);
  setState(BMCLIS_Idle);
}

void BusmasterCardLogicImpl::handleEnumeration() 
{
	uint32_t slots = _bmphy.getSlotOccupiedStatus();	
	for(uint32_t i=0;i<BACKPLANE_MAX_CARDS;i++) {
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
	_bmphy.sendMessage(bm);

	// go to a state that waits for the enumeration result.
	setState(BMCLIS_WaitForEnumerationAnswer);
	_tickCountMarker = _bmphy.getCurrentTicks();
}

void BusmasterCardLogicImpl::handleWaitForEnumerationAnswer() 
{
  if(_tickCountMarker + ENUMERATION_TIMEOUT_TICKS < _bmphy.getCurrentTicks()) {
    // enumeration timeout.
    setState(BMCLIS_EnumerationTimeout);
    return;
  }

	if(!_bmphy.hasNewMessage())
	{
		return;
	}

	// recieve the enumeration answer
	const BusMessage& bm = _bmphy.getNextMessage();
	_bmphy.releaseMessage(bm);

	// accept only Enumeration Replies here.
	if(bm.getType() != BMT_ENUM_ANSWER) {
	  _busErrorCounter++;
	  return;
	}

	// set the card-state to enumerated.
	_bp[_enumerationCounter].setEnumerated(true);

	_enumerationCounter++;
	setState(BMCLIS_SendEnumerationQuery);
}

void BusmasterCardLogicImpl::handleEnumerationTimeout() {

  // increase buserror counter.
  _busErrorCounter++;

  // goto next enumeration.
	_enumerationCounter++;
	setState(BMCLIS_SendEnumerationQuery);
}

