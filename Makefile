# Makefile: Builds a C project.

# Compiler and tools
CC      := gcc
CFLAGS  := -Wall -Wextra -Werror -std=c11 -O2
LDFLAGS :=

# Directories
SRCDIR  := src
OBJDIR  := obj
BINDIR  := bin

# Project target (adjust as needed)
TARGET  := hello_world

# Find all source files in the SRCDIR
SOURCES := $(wildcard $(SRCDIR)/*.c)
# Map each source to an object file in OBJDIR
OBJECTS := $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SOURCES))
# Dependency files (generated automatically)
DEPS    := $(OBJECTS:.o=.d)

# Default target
all: $(BINDIR)/$(TARGET)

# Link objects into the final binary
$(BINDIR)/$(TARGET): $(OBJECTS)
	@mkdir -p $(BINDIR)
	$(CC) $(LDFLAGS) -o $@ $^

# Compile source files into object files with automatic dependency generation
$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -MMD -c -o $@ $<

# Include dependency files if they exist
-include $(DEPS)

# Standard phony targets
.PHONY: all clean fclean re

clean:
	$(RM) -r $(OBJDIR) $(BINDIR)

fclean: clean

re: fclean all
