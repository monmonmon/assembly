AS := nasm
ASFLAGS := -felf64 -g
CC := gcc
CCFLAGS := -g -no-pie
EXECUTABLE := fizzbuzz
SOURCES := $(wildcard *.asm)
OBJECTS := $(SOURCES:.asm=.o)

.PHONY: all clean

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CCFLAGS) $^ -o $@

$(OBJECTS): $(SOURCES)
	$(AS) $(ASFLAGS) $^ -o $@

clean:
	rm -rf $(OBJECTS) $(EXECUTABLE)
