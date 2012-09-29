
#include <cassert>
#include <algorithm>
#include "BusMock.h"

using std::find;


BusMock::BusMock() 
{
  cards.resize(MAX_CARDS);
}

void BusMock::insertCard(int slot, Card& client) 
{
  assert(slot < MAX_CARDS && "Not enough slots are configured. Please change number of cards in config.h");
  cards.at(slot) = &client;

  client.setBusImpl(*this);
}

void BusMock::removeCard(int slot) 
{
  assert(slot < MAX_CARDS && "Not enough slots are configured. Please change number of cards in config.h");
  cards.at(slot) = NULL;
}

void BusMock::setIRQ(Card& busController, bool state) 
{
  int slot = distance(cards.begin(), find(cards.begin(), cards.end(), &busController));

  if(slot == MAX_CARDS) {
    return;
  }

  if(state) {
    irqMask |= (1 << slot);
  } else {
    irqMask &= ~(1 << slot);
  }
}

void BusMock::setCS(int mask) 
{
  csMask = mask;
}

void BusMock::sendMessage(const Card& origin, const BusMessage& m)
{
	for_each(
			cards.begin(),
			cards.end(),
			[&](cbc_vec::value_type card) {
				if(card != NULL && card != &origin)	{ card->addMessage(m); }
			}
	);
}
