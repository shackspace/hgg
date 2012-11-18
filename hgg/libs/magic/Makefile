OBJECTS_ATMEGA2560=./src/BusMessage.o														\
				./src/cards/CardLogic.o												\
				./src/cards/BusmasterCardLogic.o							\
				./src/cards/CardLogicImpl.o										\
				./src/cards/Slot.o														\
				./src/cards/CardPHY.o													\
				./src/cards/BusmasterCardPHY.o								\
				./src/cards/BusmasterCardLogicImpl.o					\
				./src/cards/Backplane.o												\


#				./src/arch/arduino/RS485.o										\
#				./src/arch/arduino/SIPORegister.o							\
#				./src/arch/arduino/PISORegister.o							\
#


TARGETSPEED=16000000
VARIANT=mega
CPUTYPE=atmega2560
HARDWARE=__AVR_ATmega2560__
ARCHITECTURE=arduino


INCLUDE=-I/usr/lib/avr/include -I. -I./src

STANDARD=-std=c++0x
DEBUG=
WARNING=-Wall
OPTIONS=-Os -Wl,--gc-sections -w -fno-exceptions -ffunction-sections -fdata-sections

PLATFORM=-mmcu=$(CPUTYPE) -D$(HARDWARE) -DF_CPU=$(TARGETSPEED)
#-Darch$(ARCHITECTURE)

CXX=avr-g++
CC=avr-gcc
LD=avr-ld
AR=avr-ar
AVRDUDE=avrdude
OBJCOPY=avr-objcopy
CFLAGS=$(INCLUDE) $(DEBUG) $(STANDARD) $(PLATFORM) $(PLATFORM) $(OPTIONS) $(WARNING)
CXXFLAGS=$(CFLAGS)

.PHONY: clean

#all: busmaster_atmega2560.hex
all: $(OBJECTS_ATMEGA2560)

clean:
	@echo "Cleaning..."
	@rm -f $(OBJECTS_ATMEGA2560) ./src/cards/*.E ./src/*.E

%.E: %.cpp
	@echo "CPP $@"
	$(CXX) $(CXXFLAGS) -E -o $@ $<

%.o: %.cpp
	@echo "CXX $@"
	$(CXX) $(CXXFLAGS) -c -o $@ $<


busmaster_atmega2560.hex: $(OBJECTS_ATMEGA2560)
	$(CC) $(CXXFLAGS)  -o busmaster_atmega2560.bin -mavr6 $< -lm
	$(OBJCOPY) -O ihex -R.eeprom busmaster_atmega2560.bin busmaster_atmega2560.hex


