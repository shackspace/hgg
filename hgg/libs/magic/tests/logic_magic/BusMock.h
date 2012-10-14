
#include <vector>
#include <busmaster/BusMasterCard.h>
#include <cards/Card.h>
#include <BusMessage.h>

using std::vector;

class BusMock {
public:
  BusMock();

 /** 
  * plugs a card into a slot.
  */
  void insertCard(int slot, Card& client);

  /** 
   * unplugs a card from the bus.
   */
  void removeCard(int slot);

  /** 
   * set or unset the irq flag for a given card.
   */
  void setIRQ(Card& busController, bool state);

  /** 
   * set or unset cards active mask. cards that have 0 here will 
   * count as chipselected (active low)
   */
  void setCS(int mask);

	void sendMessage(const Card& origin, const BusMessageRaw& m);

	bool isChipSelected(const Card& c);

private:
  friend class BusMasterCard;

  typedef vector<Card*> cbc_vec;

  cbc_vec _cards;
  int _irqMask;
  int _csMask;
};

