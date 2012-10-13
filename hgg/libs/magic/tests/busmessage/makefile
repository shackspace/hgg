OBJECTS=test.o
OBJECTS_COMMON=
INCLUDE=../../src
OUTPUT=test.elf

CFLAGS=-I$(INCLUDE) -O0 -c -g --std=c++0x -DTEST_CODE
CXXFLAGS=-I$(INCLUDE) -O0 -c -g --std=c++0x -DTEST_CODE

all: clean $(OBJECTS) $(OBJECTS_COMMON)
	c++ -o $(OUTPUT) $(OBJECTS) $(OBJECTS_COMMON)

clean:
	rm -rf $(OUTPUT) $(OBJECTS) $(OBJECTS_COMMON)


