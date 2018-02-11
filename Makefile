INCLUDE_DIR=.
CC=g++
CFLAGS=-I$(INCLUDE_DIR)

clean:
	rm -f *.o *.a *.out
	rm -f build/*.a build/*.o build/*.out

build: int_math.o main.o
	$(CC) -o a.out *.o
	mv *.o a.out build/

.PHONY: build
