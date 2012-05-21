# Objects to be used for the physical layer
OBJECTS_PHYSICAL_LAYER=	$(SOURCEDIR)/arch/$(ARCHITECTURE)/PISORegister.o 			\
						$(SOURCEDIR)/arch/$(ARCHITECTURE)/SIPORegister.o			\


# settings to be made by configuration file.
SOURCEDIR=src
ARCHITECTURE=arduino
HARDWARE=__AVR_ATmega2560__
OUTPUT=magic.a

# Cflags.
CC=avr-gcc
CXX=avr-g++
AR=avr-ar
CFLAGS=-I/usr/share/arduino/hardware/arduino/cores/arduino/ -I/usr/share/arduino/hardware/arduino/variants/mega -Darch$(ARCHITECTURE) -D$(HARDWARE)
CXXFLAGS=-I/usr/share/arduino/hardware/arduino/cores/arduino/ -I/usr/share/arduino/hardware/arduino/variants/mega -Darch$(ARCHITECTURE) -D$(HARDWARE)


all: $(OBJECTS_PHYSICAL_LAYER)
	$(AR) r $(OUTPUT) $(OBJECTS_PHYSICAL_LAYER)

clean:
	rm $(OBJECTS_PHYSICAL_LAYER)
	rm $(OUTPUT)

