# .DEFAULT_GOAL := generate
.PHONY: all say_hello generate clean
all: say_hello generate hello

say_hello:
	@echo "Hello World"

generate:
	@echo "Creating empty text files..."
	touch file-{1..10}.txt

CC = gcc

hello: hello.c
	${CC} hello.c -o hello

clean:
	@echo "Cleaning up..."
	rm *.txt
