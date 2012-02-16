OBJECTS=gtime.o
OUTPUT=utime
CFLAGS=-O3 -g -fPIC --shared

all: $(OBJECTS)
	gcc $(OBJECTS) -o $(OUTPUT) -L`gcc -print-file-name=` -lc -lgcc
 
clean:
	rm $(OBJECTS) $(OUTPUT)
 
