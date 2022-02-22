NASM = nasm
NASMFLAGS = -f elf64

LD = ld
LDARGS = -s -o $(TARGET)

TARGET = hello

all: $(TARGET)

$(TARGET): $(TARGET).o
	$(LD) $(LDARGS) $(TARGET).o

$(TARGET).o: $(TARGET).asm
	$(NASM) $(NASMFLAGS) $(TARGET).asm

run: all
	./$(TARGET)

clean:
	$(RM) $(TARGET).o $(TARGET)
