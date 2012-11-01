#ifndef _BUSMASTERCARDLOGIC_H_
#define _BUSMASTERCARDLOGIC_H_

#include "BusmasterCardLogic.h"


class BusmasterCardLogicImpl : public BusmasterCardLogic {
public:
  BusmasterCardLogicImpl(BusmasterCardPHY& phy);
  virtual ~BusmasterCardLogicImpl();

	/// \brief the core loop doing all the work
	virtual void loop();


	enum eBMCLIState {
		BMCLIS_Init,
		BMCLIS_Error,
		BMCLIS_Enumerate,
		BMCLIS_Idle
	};

	eBMCLIState getState() const;
	const char* const getStateString() const;

private:
	void setState(eBMCLIState s);
	eBMCLIState _state;
};


#endif //_BUSMASTERCARDLOGIC_H_

