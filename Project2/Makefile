TARGET = prog.hex
CC = avr-g++
COPY = avr-objcopy
CFLAGS = -Os -DF_CPU=16000000 -mmcu=atmega2560
OFLAGS = -DF_CPU=16000000 -mmcu=atmega2560
HEXFLAGS = -O ihex 

.PHONY: default all clean

default: $(TARGET)
all: default

cswitch:
	$(CC) -c -O2 -mmcu=atmega2560 -Wa,--gstabs -o cswitch.o cswitch.S

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c)) $(patsubst %.cpp, %.o, $(wildcard *.cpp))
HEADERS = $(wildcard *.h)

%.o: %.cpp $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OFLAGS) $(OBJECTS) cswitch.o -o $@
	$(COPY) $(HEXFLAGS) $(TARGET) $(TARGET)

flash:
	avrdude -v -patmega2560 -cwiring -P/dev/ttyACM0 -b115200 -D -Uflash:w:$(TARGET)

clean:
	-rm -f *.o
	-rm -f $(TARGET)
