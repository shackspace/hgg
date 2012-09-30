#include <stdio.h>
#include <stdlib.h>
#include <cassert>
#include <iostream>

#include "BusMock.h"
#include "BusMaster.h"

/// \brief plug bm into slot 0, bm self-selects and detects itself, success
void test_bm_slot0()
{
  // fixture: setup the mocks for the test
  BusMock busMock;
  BusMasterCard bmc;
	BusMaster bm(bmc);

	busMock.insertCard(0,bmc);
	
  // execution: let the test run
	for(int i=0; i<10; ++i)
	{
		std::cout << "[" << bm.getState() << ">";
		bm.loop();		
		std::cout << bm.getState() << "] ";
	}

	std::cout << std::endl;

  // assertions: what should have happened?
	assert(bm.getState() == BusMaster::S_IDLE && "invalid state");

  // cleanup?
}

/// \brief plug bm into slot 1, bm self-selects and does not detect itself, failure
void test_bm_slot1()
{
  // fixture: setup the mocks for the test
  BusMock busMock;
  BusMasterCard bmc;
	BusMaster bm(bmc);

	busMock.insertCard(1,bmc);
	
  // execution: let the test run
	for(int i=0; i<10; ++i)
	{
		std::cout << "[" << bm.getState() << ">";
		bm.loop();		
		std::cout << bm.getState() << "] ";
	}

	std::cout << std::endl;

  // assertions: what should have happened?
	assert(bm.getState() == BusMaster::S_ERROR && "invalid state");

  // cleanup?
}

/// \brief card operates in stand-alone mode, no external communication via bus
void test_single_card_no_bm()
{
  // fixture: setup the mocks for the test

  // execution: let the test run

  // assertions: what should have happened?

  // cleanup?

}

/// \brief bm and late-plugged single card in slot 1, bm detects new card, enumerates
void test_bm_single_card_lateplug()
{
  // fixture: setup the mocks for the test

  // execution: let the test run

  // assertions: what should have happened?

  // cleanup?

}

/// \brief bm and already-plugged card is removed, bm detects removed card, enumerates
void test_bm_single_card_lateunplug()
{
  // fixture: setup the mocks for the test

  // execution: let the test run

  // assertions: what should have happened?

  // cleanup?

}

/// \brief bm, card1, card2 plugged in this order, bm enumerates after each plug event
void test_bm_two_cards_lateplug()
{
  // fixture: setup the mocks for the test

  // execution: let the test run

  // assertions: what should have happened?

  // cleanup?

}

/// \brief card already plugged in, bm plugged late, bm enumerates
void test_bm_lateplug_single_card()
{
  // fixture: setup the mocks for the test

  // execution: let the test run

  // assertions: what should have happened?

  // cleanup?

}

/// \brief bm, card1, card2 plugged in this order, unplug card1, bm enumerates
void test_bm_two_cards_lateunplug()
{
  // fixture: setup the mocks for the test

  // execution: let the test run

  // assertions: what should have happened?

  // cleanup?

}


#define TESTRUN(test) std::cout << "Running test: " << #test << std::endl; test ();

int main(int argc, char** argv) {
	TESTRUN(test_bm_slot0);
	TESTRUN(test_bm_slot1);
  return 0;
}
