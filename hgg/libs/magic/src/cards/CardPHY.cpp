/** 
 * CardPHY.cpp 
 * (c) 2012, hackerspace global grid project
 * written by hadez, armin and others
 * licensed under the creative commons (cc-by-nc-sa). For more 
 * information see http://hgg.aero
 */

#include "types.h"
#include "CardPHY.h"

typedef void (*cardSelectPtr)(void);

CardPHY::CardPHY()
: _callback(0)
{
}

CardPHY::~CardPHY() {

}

