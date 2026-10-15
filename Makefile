# Usage : make SRC=semaine-01/ch02/pun.c   puis   ./build/pun
CC      = gcc
CFLAGS  = -Wall -Wextra -std=c99 -g
SRC    ?= semaine-01/ch02/pun.c
BIN     = build/$(basename $(notdir $(SRC)))

all: $(BIN)

$(BIN): $(SRC) | build
	$(CC) $(CFLAGS) $< -o $@

build:
	mkdir -p build

run: $(BIN)
	./$(BIN)

clean:
	rm -rf build

.PHONY: all run clean
