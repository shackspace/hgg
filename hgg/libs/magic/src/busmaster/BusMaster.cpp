#include "../../src/busmaster/BusMaster.h"

static const uint32_t MASK_SLOT_ID_0 = (1<<0);
static const uint32_t MASK_SLOT_ID_1 = (1<<1);
static const uint32_t MASK_SLOT_ID_2 = (1<<2);
static const uint32_t MASK_SLOT_ID_3 = (1<<3);
static const uint32_t MASK_SLOT_ID_BUSMASTER = (MASK_SLOT_ID_0);

void BusMaster::sInit()
{
	setState(S_ASSURE_SLOT0);
}

void BusMaster::sAssureSlot0()
{
	// query inserted cards
	//	ASSURE: slot0 occupied
	if(_bmc.getInsertedCardsMask() & MASK_SLOT_ID_BUSMASTER == 0)
	{
		setState(S_ERROR);
		return;
	}

	// query own chip select pin
	//	ASSURE: false
	if(_bmc.isChipSelected())
	{
		setState(S_ERROR);
		return;
	}

	// chip select slot 0
	_bmc.setSelectedCardsMask(MASK_SLOT_ID_BUSMASTER);

	// query own chip select pin
	//	ASSURE: true
	if(!_bmc.isChipSelected())
	{
		setState(S_ERROR);
		return;
	}

	// clear chipselect
	_bmc.setSelectedCardsMask(0);

	// query own chip select pin
	//	ASSURE: false
	if(_bmc.isChipSelected())
	{
		setState(S_ERROR);
		return;
	}

	// success
	setState(S_IDLE);	
}

void BusMaster::sIdle()
{
	setState(S_IDLE);
}

void BusMaster::sError()
{
	setState(S_ERROR);
}

void BusMaster::loop()
{
	switch(_state)
	{
		case S_INIT: 							sInit(); break;
		case S_ASSURE_SLOT0: 			sAssureSlot0(); break;
		case S_IDLE:							sIdle(); break;

		case S_ERROR: default:		sError(); break;
	}
	

}


