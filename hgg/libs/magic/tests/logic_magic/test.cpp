#include <stdio.h>
#include <stdlib.h>
#include <cassert>
#include <iostream>

#include "BusMock.h"
#include "../../src/busmaster/BusMaster.h"

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
  BusMock busMock;
  Card c;

	busMock.insertCard(0,c);
	
  // execution: let the test run
	for(int i=0; i<10; ++i)
	{
		std::cout << "[" << c.getState() << ">";
		c.loop();		
		std::cout << c.getState() << "] ";
	}

	std::cout << std::endl;

  // assertions: what should have happened?
	assert(c.getState() == Card::S_WAIT_FOR_ENUMERATION && "invalid state");

  // cleanup?
}

/// \brief bm and late-plugged single card in slot 1, bm detects new card, enumerates
void test_bm_single_card_lateplug()
{
  // fixture: setup the mocks for the test
  BusMock busMock;
  BusMasterCard bmc;
  Card c;
	BusMaster bm(bmc);

	busMock.insertCard(0,bmc);
	
  // execution: let the test run
	for(int i=0; i<10; ++i)
	{
		if(i==3)
		{
			busMock.insertCard(1,c);
			std::cout << " insert ";
		}

		std::cout << "[" << bm.getState() << ',' << c.getState() << ">";
		bm.loop();		

		// usually the card would not be powered untill it got plugged in
		// we'll loop it anyway which should model any time delays which
		// could occur between plugging the card in and the busmaster noticing
		// the event

		c.loop();

		std::cout << bm.getState() << ',' << c.getState() << "] ";
	}

	std::cout << std::endl;

  // assertions: what should have happened?
	assert(false && "invalid state");

  // cleanup?
}

/// \brief bm and already-plugged card is removed, bm detects removed card, enumerates
void test_bm_single_card_lateunplug()
{
  // fixture: setup the mocks for the test
  BusMock busMock;
  BusMasterCard bmc;
  Card c;
	BusMaster bm(bmc);

	busMock.insertCard(0,bmc);
	busMock.insertCard(1,c);
	
  // execution: let the test run
	for(int i=0; i<10; ++i)
	{
		if(i==3)
		{
			busMock.removeCard(1);
			std::cout << " removal ";
		}

		std::cout << "[" << bm.getState() << ',' << c.getState() << ">";
		bm.loop();		
		c.loop();

		std::cout << bm.getState() << ',' << c.getState() << "] ";
	}

	std::cout << std::endl;

  // assertions: what should have happened?
	assert(false && "invalid state");

  // cleanup?
}

/// \brief bm, card1, card2 plugged in this order, bm enumerates after each plug event
void test_bm_two_cards_lateplug()
{
  // fixture: setup the mocks for the test
  BusMock busMock;
  BusMasterCard bmc;
  Card c1;
  Card c2;
	BusMaster bm(bmc);

  // execution: let the test run
	for(int i=0; i<10; ++i)
	{
		if(i==3)
		{
			busMock.insertCard(1,c1);
			busMock.insertCard(2,c2);
			std::cout << " insert ";
		}

		std::cout << "[" << bm.getState() << ',' << c1.getState() << ',' << c2.getState() << ">";
		bm.loop();		
		c1.loop();
		c2.loop();

		std::cout << bm.getState() << ',' << c1.getState() << ',' << c2.getState() << "] ";
	}

	std::cout << std::endl;

  // assertions: what should have happened?
	assert(false && "invalid state");

  // cleanup?
}

/// \brief card already plugged in, bm plugged late, bm enumerates
void test_bm_lateplug_single_card()
{
  // fixture: setup the mocks for the test
  BusMock busMock;
  BusMasterCard bmc;
  Card c;
	BusMaster bm(bmc);

	busMock.insertCard(1,c);
	
  // execution: let the test run
	for(int i=0; i<10; ++i)
	{
		if(i==3)
		{
			busMock.insertCard(0,bmc);
			std::cout << " insert ";
		}

		std::cout << "[" << bm.getState() << ',' << c.getState() << ">";
		bm.loop();		
		c.loop();

		std::cout << bm.getState() << ',' << c.getState() << "] ";
	}

	std::cout << std::endl;

  // assertions: what should have happened?
	assert(false && "invalid state");

  // cleanup?
}

/// \brief bm, card1, card2 plugged in this order, unplug card1, bm enumerates
void test_bm_two_cards_lateunplug()
{
  // fixture: setup the mocks for the test
  BusMock busMock;
  BusMasterCard bmc;
  Card c1;
  Card c2;
	BusMaster bm(bmc);
	busMock.insertCard(1,c1);
	busMock.insertCard(2,c2);

  // execution: let the test run
	for(int i=0; i<10; ++i)
	{
		if(i==3)
		{
			busMock.removeCard(1);
			busMock.removeCard(2);
			std::cout << " removal ";
		}

		std::cout << "[" << bm.getState() << ',' << c1.getState() << ',' << c2.getState() << ">";
		bm.loop();		
		c1.loop();
		c2.loop();

		std::cout << bm.getState() << ',' << c1.getState() << ',' << c2.getState() << "] ";
	}

	std::cout << std::endl;

  // assertions: what should have happened?
	assert(false && "invalid state");

  // cleanup?
}


#define TESTRUN(test) std::cout << "Running test: " << #test << std::endl; test ();

int main(int argc, char** argv) {
	TESTRUN(test_bm_slot0);
	TESTRUN(test_bm_slot1);
	TESTRUN(test_single_card_no_bm);
	TESTRUN(test_bm_single_card_lateplug);
	TESTRUN(test_bm_single_card_lateunplug);
	TESTRUN(test_bm_two_cards_lateplug);
	TESTRUN(test_bm_lateplug_single_card);
	TESTRUN(test_bm_two_cards_lateunplug);

  return 0;
}
