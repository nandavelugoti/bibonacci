VERSION=0.1
NAME=bibonacci
GCC=gcc
LIB_NAME=lib_bibo.o
BIN_NAME=bibo

all: lib src/main.c
	mkdir -p bin
	$(GCC) src/main.c -Llib -l:$(LIB_NAME) -lm -o bin/$(BIN_NAME)

lib: src/lib/*
	mkdir -p lib
	$(GCC) -c src/lib/*.c -lm -o lib/$(LIB_NAME)

clean:
	rm -r bin/ lib/
	
