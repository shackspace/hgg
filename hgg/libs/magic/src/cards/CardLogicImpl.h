#ifndef _DUMMYCARDLOGIC_H_
#define _DUMMYCARDLOGIC_H_

#include "CardLogic.h"


class CardLogicImpl : public CardLogic {
public:
  CardLogicImpl(CardPHY& phy);
  virtual ~CardLogicImpl();

	/// \brief the core loop doing all the work
	virtual void loop();


	enum eDCLState {
		DCLS_Init, DCLS_Error
	};

	eDCLState getState() const;
	const char* const getStateString() const;

private:
	void setState(eDCLState s);
	eDCLState _state;
};


#endif //_DUMMYCARDLOGIC_H_

