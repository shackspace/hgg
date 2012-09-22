#include <stdio.h>
#include <stdlib.h>

#include "BusMock.h"


int main(int argc, char** argv) {
  // fixture: setup the mocks for the test
  BusMock busMock;
  
  BusMasterCard bm;
  Card card1;
  Card card2;

  busMock.insertCard(0, bm);
  busMock.insertCard(1, card1);
  busMock.insertCard(3, card2);

  // execution: let the test run

  // assertions: what should have happened?

  // cleanup?
  return 0;
}
