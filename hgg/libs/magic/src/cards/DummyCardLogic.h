#ifndef _DUMMYCARDLOGIC_H_
#define _DUMMYCARDLOGIC_H_

#include "CardLogic.h"


class DummyCardLogic : public CardLogic {
public:
  virtual DummyCardLogic(CardPHY& phy);
  virtual ~DummyCardLogic();

	/// \brief the core loop doing all the work
	virtual void loop();


	enum eDCLState {
		DCLS_Init, DCLS_Error
	};

	const eDCLState getState() const;
	const char* const getStateString() const;

private:
	void setState(eDCLState s);
	eDCLState _state;
};


#endif //_DUMMYCARDLOGIC_H_

