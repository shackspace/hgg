
#include <cassert>
#include <algorithm>
#include "BusMock.h"

using std::find;


BusMock::BusMock() 
{
  _cards.resize(MAX_CARDS);
	_csMask = 0;
	_irqMask = 0;
}

void BusMock::insertCard(int slot, Card& client) 
{
	assert(slot < MAX_CARDS && "Not enough slots are configured. Please change number of _cards in config.h");
  _cards.at(slot) = &client;

  client.setBusImpl(*this);
}

void BusMock::removeCard(int slot) 
{
  assert(slot < MAX_CARDS && "Not enough slots are configured. Please change number of _cards in config.h");
  _cards.at(slot) = NULL;
}

void BusMock::setIRQ(Card& busController, bool state) 
{
  int slot = distance(_cards.begin(), find(_cards.begin(), _cards.end(), &busController));

  if(slot == MAX_CARDS) {
    return;
  }

  if(state) {
    _irqMask |= (1 << slot);
  } else {
    _irqMask &= ~(1 << slot);
  }
}

void BusMock::setCS(int mask) 
{
  _csMask = mask;
}


bool BusMock::isChipSelected(const Card& c)
{
	size_t slot = distance(_cards.begin(), find(_cards.begin(), _cards.end(), &c));

	if(slot == _cards.size())
		return false;

	return (_csMask & (1<<slot));
}

void BusMock::sendMessage(const Card& origin, const BusMessage& m)
{
	for_each(
			_cards.begin(),
			_cards.end(),
			[&](cbc_vec::value_type card) {
				if(card != NULL && card != &origin)	{ card->addMessage(m); }
			}
	);
}
