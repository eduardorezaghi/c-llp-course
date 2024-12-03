CC=gcc
CFLAGS=-g -Wall -Wextra
SRC_DIR=src
BUILD_DIR=build

# Get all .c files in src directory
SRCS=$(wildcard $(SRC_DIR)/*.c)
# Generate corresponding object file names in build directory
OBJS=$(SRCS:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)
# Generate executable names in build directory
EXECS=$(SRCS:$(SRC_DIR)/%.c=$(BUILD_DIR)/%)

all: $(EXECS)

# Rule to create build directory
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Rule to create executables
$(BUILD_DIR)/%: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean