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

INCLUDE=/usr/lib/avr/include

CXX=avr-g++
CC=avr-gcc
CFLAGS=-I$(INCLUDE)
CXXFLAGS=-I$(INCLUDE)

all: $(OBJECTS)

