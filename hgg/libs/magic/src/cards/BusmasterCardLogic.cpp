/** 
 * BusmasterCardLogic.cpp 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "BusmasterCardLogic.h"


BusmasterCardLogic::BusmasterCardLogic(BusmasterCardPHY& phy) : CardLogic(phy), _bmphy(phy)
{
}

BusmasterCardLogic::~BusmasterCardLogic()
{
}



