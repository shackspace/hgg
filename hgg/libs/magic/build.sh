# make all the magic libraries.
# but first... 
#   call as   make.sh <architecture> <platform>
#   where     <architecture> ... arduino, atmel, pic, stm
#             <platform>     ... the cpu type (like 2560)
if [ $# != 2 ]; then
  echo "This is the build process for the magic busprotocol libraries."
  echo ""
  echo "Unfortunately you did not call it with all needed parameters,"
  echo "let us thus help you with the following usage message."
  echo ""
  echo "    Usage: $0 <architecture> <platform>"
  echo ""
  echo "If you're unsure, what architectures and platforms are supported, "
  echo "here's a list:"
  echo "Architectures:"
  echo "   - arduino"
  echo ""
  echo "Platforms:"
  echo "   - atmega2560"
  exit;
fi;

echo "Making magic "

# 
# find the cpu type for the compiler.
SPEED=
CPU=
if [ "$2" = "atmega2560" ]; then 
  CPU="__AVR_ATmega2560__"
  SPEED="16000000"
fi;


if [ "$CPU" = "" ]; then
  echo "Failed. I don't know which CPU you're talking about."
  exit;
fi;

# 
# perform configuration, copy the correct buildfile
if [ "$1" = "arduino" ]; then
  echo "  ... configuring arduino."
  cp system/Makefile.arduino /tmp/Makefile.generated

  echo "  ... patching the configuration."
  sed 's/\%CPUSTRING\%/'$CPU'/' /tmp/Makefile.generated > /tmp/Makefile.1
  mv /tmp/Makefile.1 /tmp/Makefile.generated
ARDUINOHOME="\/usr\/share\/arduino\/"
  sed 's/\%ARDUINOHOME\%/'$ARDUINOHOME'/' /tmp/Makefile.generated > /tmp/Makefile.1
  mv /tmp/Makefile.1 /tmp/Makefile.generated
  sed 's/\%SPEED\%/'$SPEED'/' /tmp/Makefile.generated > /tmp/Makefile.1
  mv /tmp/Makefile.1 /tmp/Makefile.generated

  mv /tmp/Makefile.generated Makefile.generated

  make -f Makefile.generated clean
  #make -f Makefile.generated lib
  make -f Makefile.generated arduino_lib
fi;

# 
# perform unit / integration tests on the code built currently.
# if [ "$TESTFRIENDSHIP" = "true" ]; then 
	TESTCLASS=tests/hw/poll_present/poll_present.o make -f Makefile.generated test 2>&1 > /dev/null
	TEST="`cat /dev/ttyACM0 | head -n 2 | tail -n 1`"
	echo -e "Test: PISO/test ... \c"
	if [ "$TEST" != "`echo -e '4F\r'`" ]; then
		echo -e "\033[31mfail\033[0m: Expected 4F, recieved $TEST"
		echo "***** This test can only be passed, if there are breakouts in slot 0, 1 and 3,  slot2 is empty "
	    echo "***** and the ports SH/LD IRQ/PRSNT IRQ/PRSNT CLK and PRSNT DATAINT are connected to pins 6, 7 "
		echo "***** and 5 of the testing device."
		exit;
	fi
	echo -e "\033[32mpassed\033[0m."

	TESTCLASS=tests/hw/irq_wiredor/wiredor.o make -f Makefile.generated test 2>&1 > /dev/null
	TEST="`cat /dev/ttyACM0 | head -n 2 | tail -n 1`"
	echo -e "Test: Wired or ... \c"
	if [ "$TEST" != "`echo -e 'OK\r'`" ]; then
		echo -e "\033[31mfail\033[0m: Expected OK, recieved $TEST"
		echo "***** This test can only be passed, if the port 3 IRQ is connected to port 22 of the testing device "
		echo "***** and port2 of the testing device is connected to the wired or output on the busmaster plug."
		exit;
	fi
	echo -e "\033[32mpassed\033[0m."
	
	TESTCLASS=tests/hw/irq_read/readirq.o make -f Makefile.generated test 2>&1 > /dev/null
	TEST="`cat /dev/ttyACM0 | head -n 2 | tail -n 1`"
	echo -e "Test: IRQ Register ... \c"
	if [ "$TEST" != "`echo -e 'FE,FF\r'`" ]; then
		echo -e "\033[31mfail\033[0m: Expected FE,FF, recieved $TEST"
		echo "***** This test can only be passed, if the port 3 IRQ is connected to port 22 of the testing device "
		echo "***** and port2 of the testing device is connected to the wired or output (IRQ) on the busmaster plug."
		exit;
	fi
	echo -e "\033[32mpassed\033[0m."
	
	TESTCLASS=tests/hw/chipselect/chipselect.o make -f Makefile.generated test 2>&1 > /dev/null
	TEST="`cat /dev/ttyACM0 | head -n 2 | tail -n 1`"
	echo -e "Test: Chipselect Register ... \c"
	if [ "$TEST" != "`echo -e 'OK\r'`" ]; then
		echo -e "\033[31mfail\033[0m: Expected OK, recieved $TEST"
		echo "***** This test can only be passed, if the port 3 IRQ is connected to port 22 of the testing device "
		echo "***** and port2 of the testing device is connected to the wired or output on the busmaster plug and "
	    echo "***** the pins INTACK SCK, INTACK RCK, INTACK SER are connected to 34, 30, 32 "
		exit;
	fi
	echo -e "\033[32mpassed\033[0m."
	
	TESTCLASS=tests/hw/rs485bus/rs485bus_send.o DEVICE=/dev/ttyACM0 make -f Makefile.generated test2 2>&1 > /dev/null
	TESTCLASS=tests/hw/rs485bus/rs485bus_recv.o DEVICE=/dev/ttyACM1 make -f Makefile.generated test2 2>&1 > /dev/null
	TEST="`cat /dev/ttyACM1 | head -n 2 | tail -n 1`"
	echo -e "Test: rs485 bus ... \c"
	if [ "$TEST" != "`echo -e 'TEST\r'`" ]; then
		echo -e "\033[31mfail\033[0m: Expected 'Sending: TEST, Receiving: 54 45 53 54 .', recieved $TEST"
		echo "***** This test can only be passed, if the Serial 1 of the testing device and pin 31 are connected to"
		echo "***** an rs485 transceiver on one breakout and Serial2 of the testing device and pin 33 are connected "
	    echo "***** to another rs485 transceiver on another breakout. Serial1 will be used for sending, Serial2 for "
		echo "***** receiving."
		exit;
	fi
	echo -e "\033[32mpassed\033[0m."
# fi
	
		
