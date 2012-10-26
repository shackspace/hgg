#include "BusMessage.h"


BusMessage::BusMessage()
{
}

BusMessage::BusMessage(eBusMessageType type)
{
}

BusMessage::~BusMessage()
{
}

BusMessage::BusMessage(const BusMessage& o)
{
	copy(o);
}

BusMessage::BusMessage& operator=(const BusMessage& o)
{
	copy(o);
	return *this;
}

bool BusMessage::isValidMessage() const
{
	return BusMessageRaw::isMessage( reinterpret_cast<const BusMessageRaw*>( &_buffer.at(0) ) );
}

eBusMessageType BusMessage::getType() const
{
	return reinterpret_cast<const BusMessageRaw*>( &_buffer.at(0) )->type;
}

void BusMessage::initialize(eBusMessageType type)
{
	_buffer.reserve( BusMessageRaw::bufferSize(type) );
	BusMessageRaw::initialize( reinterpret_cast<BusMessageRaw*>( &_buffer.at(0) ), type );
}

bool BusMessage::hasPayload() const
{
	return BusMessageRaw::hasPayload( reinterpret_cast<const BusMessageRaw*>( &_buffer.at(0) ) );
}

uint16_t BusMessage::getPayloadSize() const
{
	return BusMessageRaw::validPayloadBytes( reinterpret_cast<const BusMessageRaw*>( &_buffer.at(0) ) );
}

const uint8_t* const BusMessage::getPayload() const
{
	
}

uint8_t* BusMessage::getPayload()
{
	return const_cast<uint8_t*>( reinterpret_cast<const BusMessage&>(*this).getPayload() );
}

uint16_t BusMessage::getCRC16() const
{

}

void BusMessage::copy(const BusMessage& o)
{
	_buffer = o._buffer;
}

