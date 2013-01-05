
TARGETSPEED=16000000
VARIANT=mega
CPUTYPE=atmega2560
HARDWARE=__AVR_ATmega2560__
ARCHITECTURE=arduino

TARGET=$(ARCHITECTURE)_$(CPUTYPE)
OUT=busmaster.$(TARGET).a

OBJECTS_COMMON=\
				./src/busmessage/BusMessage.o									\
				./src/cards/CardLogic.o												\
				./src/cards/BusmasterCardLogic.o							\
				./src/cards/CardLogicImpl.o										\
				./src/cards/BusmasterCardLogicImpl.o					\
				./src/backplane/Slot.o												\
				./src/backplane/Backplane.o										\


OBJECTS_ARCH=\
				./src/arch/$(ARCHITECTURE)/$(CPUTYPE)/cards/CardPHY.o				\
				./src/arch/$(ARCHITECTURE)/$(CPUTYPE)/cards/BusmasterCardPHY.o		\
				./src/arch/$(ARCHITECTURE)/$(CPUTYPE)/hal/RS485.o						\
				./src/arch/$(ARCHITECTURE)/$(CPUTYPE)/hal/SIPORegister.o		\
				./src/arch/$(ARCHITECTURE)/$(CPUTYPE)/hal/PISORegister.o		\


OBJECTS=$(OBJECTS_COMMON) $(OBJECTS_ARCH)

ARDUINO_INCLUDES=-I../../../thirdparty/arduino/libs/hardware/arduino/cores/arduino/ -I../../../thirdparty/arduino/libs/hardware/arduino/variants/mega/

ARCHITECTURE_INCLUDES=

ifeq ($(ARCHITECTURE),arduino)
ARCHITECTURE_INCLUDES+= $(ARDUINO_INCLUDES)
endif

INCLUDE=-I/usr/lib/avr/include -I./src/include $(ARCHITECTURE_INCLUDES)

STANDARD=-std=c++0x
DEBUG=
WARNING=-Wall
OPTIONS=-Os -Wl,--gc-sections -w -fno-exceptions -ffunction-sections -fdata-sections

PLATFORM=-mmcu=$(CPUTYPE) -D$(HARDWARE) -DF_CPU=$(TARGETSPEED) -Darch$(ARCHITECTURE)

CXX=avr-g++
CC=avr-gcc
LD=avr-ld
AR=avr-ar
AVRDUDE=avrdude
OBJCOPY=avr-objcopy
CFLAGS=$(INCLUDE) $(DEBUG) $(STANDARD) $(PLATFORM) $(PLATFORM) $(OPTIONS) $(WARNING)
CXXFLAGS=$(CFLAGS)

.PHONY: clean

all: $(OUT)

clean:
	@echo "Cleaning..."
	@rm -f $(OUT) $(OBJECTS)

#%.E: %.cpp
#	@echo "CPP $@"
#	$(CXX) $(CXXFLAGS) -E -o $@ $<


#busmaster.arduino_atmega2560.bin: $(OBJECTS)
#	@echo "CC $@"
#	@$(CC) $(CXXFLAGS)  -o $@ -mavr6 $< -lm

busmaster.arduino_atmega2560.a: $(OBJECTS)
	@echo "AR $@"
	@$(AR) r $@ $<

%.o: %.cpp
	@echo "CXX $@"
	@$(CXX) $(CXXFLAGS) -c -o $@ $<

#%.hex: %.bin
#	@echo "OBJCOPY $@"
#	@$(OBJCOPY) -O ihex -R.eeprom $< $@

