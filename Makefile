BUILD_DIR=./build
INCLUDE_DIR=.
CC=g++
CFLAGS=-I$(INCLUDE_DIR)

clean:
	rm -f $(BUILD_DIR)/*.a $(BUILD_DIR)/*.o $(BUILD_DIR)/*.out

# By specifying .o files here, the compilation is done by make
build: int_math.o main.o
	$(CC) -o a.out *.o
	mv *.o a.out $(BUILD_DIR)

