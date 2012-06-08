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
  cp system/makefile.arduino /tmp/makefile

  echo "  ... patching the configuration."
  sed 's/\%CPUSTRING\%/'$CPU'/' /tmp/makefile > /tmp/makefile.1
  mv /tmp/makefile.1 /tmp/makefile
ARDUINOHOME="\/usr\/share\/arduino\/"
  sed 's/\%ARDUINOHOME\%/'$ARDUINOHOME'/' /tmp/makefile > /tmp/makefile.1
  mv /tmp/makefile.1 /tmp/makefile
  sed 's/\%SPEED\%/'$SPEED'/' /tmp/makefile > /tmp/makefile.1
  mv /tmp/makefile.1 /tmp/makefile

  mv /tmp/makefile makefile

  make clean
  make lib
fi;

# 
# perform unit / integration tests on the code built currently.
#TESTCLASS=tests/poll_present/poll_present.o make test 2>&1 > /dev/null
#TEST="`cat /dev/ttyACM0 | head -n 2 | tail -n 1`"
#echo -e "Test: PISO/test ... \c"
#if [ "$TEST" != "`echo -e '4F\r'`" ]; then
#	echo "fail: Expected 4F, recieved $TEST"
#	echo "***** This test can only be passed, if there are breakouts in slot 0, 1 and 3 and slot2 is empty."
#	exit;
#fi
#echo "passed."
#
#TESTCLASS=tests/irq_wiredor/wiredor.o make test 2>&1 > /dev/null
#TEST="`cat /dev/ttyACM0 | head -n 2 | tail -n 1`"
#echo -e "Test: Wired or ... \c"
#if [ "$TEST" != "`echo -e 'OK\r'`" ]; then
#	echo "fail: Expected OK, recieved $TEST"
#	echo "***** This test can only be passed, if the port 3 IRQ is connected to port 22 of the testing device "
#	echo "***** and port2 of the testing device is connected to the wired or output on the busmaster plug."
#	exit;
#fi
#echo "passed."
#
#TESTCLASS=tests/irq_read/readirq.o make test 2>&1 > /dev/null
#TEST="`cat /dev/ttyACM0 | head -n 2 | tail -n 1`"
#echo -e "Test: IRQ Register ... \c"
#if [ "$TEST" != "`echo -e 'F6,FF\r'`" ]; then
#	echo "fail: Expected F6,FF, recieved $TEST"
#	echo "***** This test can only be passed, if the port 3 IRQ is connected to port 22 of the testing device "
#	echo "***** and port2 of the testing device is connected to the wired or output on the busmaster plug."
#	exit;
#fi
#echo "passed."

TESTCLASS=tests/chipselect/chipselect.o make test 2>&1 > /dev/null
TEST="`cat /dev/ttyACM0 | head -n 2 | tail -n 1`"
echo -e "Test: Chipselect Register ... \c"
if [ "$TEST" != "`echo -e 'OK\r'`" ]; then
	echo "fail: Expected OK, recieved $TEST"
	echo "***** This test can only be passed, if the port 3 IRQ is connected to port 22 of the testing device "
	echo "***** and port2 of the testing device is connected to the wired or output on the busmaster plug."
	exit;
fi
echo "passed."



