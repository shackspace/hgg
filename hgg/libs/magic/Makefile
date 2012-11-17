OBJECTS=./src/BusMessage.o														\
				./src/cards/CardLogic.o												\
				./src/cards/BusmasterCardLogic.o							\
				./src/cards/CardLogicImpl.o										\
				./src/cards/Slot.o														\
				./src/cards/CardPHY.o													\
				./src/cards/BusmasterCardPHY.o								\
				./src/cards/BusmasterCardLogicImpl.o					\
				./src/cards/Backplane.o												\
				./src/deprecated/busmaster/BusMasterCard.o		\
				./src/deprecated/busmaster/BusMaster.o				\
				./src/arch/arduino/RS485.o										\
				./src/arch/arduino/SIPORegister.o							\
				./src/arch/arduino/PISORegister.o							\

INCLUDE=-I/usr/lib/avr/include -I. -I./src

STANDARD=-std=c++0x
DEBUG=

CXX=avr-g++
CC=avr-gcc
LD=avr-ld
CFLAGS=$(INCLUDE) $(DEBUG) $(STANDARD)
CXXFLAGS=$(INCLUDE) $(DEBUG) $(STANDARD)

.PHONY: clean

all: $(OBJECTS)

clean:
	@echo "Cleaning..."
	@rm -f $(OBJECTS)

%.E: %.cpp
	@echo "CPP $@"
	@$(CXX) $(CXXFLAGS) -E $@ $<

%.o: %.cpp
	@echo "CXX $@"
	@$(CXX) $(CXXFLAGS) -o $@ $<
