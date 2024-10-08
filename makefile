# Compiler
CC = g++

# Compiler flags with -Wall we enable all warnings, including warnings that are disabled by default.
CFLAGS = -Wall -Werror

# Target executable
TARGET = main

# Source files
SRCS = main.c math.c guessTheNumber.c basic.c Vector3.c

# Object files
OBJS = $(SRCS:.c=.o)

# Default target
all: $(TARGET)

# Rule to link the target executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Rule to compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Clean up build files
clean:
	rm -f $(OBJS) $(TARGET)

# Phony targets
.PHONY: all clean
