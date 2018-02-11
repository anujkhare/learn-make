BUILD_DIR=./build
INCLUDE_DIR=.
CC=g++
CFLAGS=-I$(INCLUDE_DIR)

DEPS = *.h
OBJ = int_math.o main.o

clean:
	rm -f $(BUILD_DIR)/*.a $(BUILD_DIR)/*.o $(BUILD_DIR)/*.out

# Target for all the .o files
# $@ means the LHS of the rule, $< is first term of the dependencies, %^ is RHS
%.o: %.c $(DEPS)
	$(CC) -o $@ -c $< $(CFLAGS)

int_math.o: int_math.cpp int_math.h
	$(CC) -o int_math.o -c int_math.cpp $(CFLAGS)

# This depends on the target for .o files and on DEPS
build: $(OBJ) $(DEPS)
	$(CC) -o a.out $(OBJ) $(CFLAGS)
	mv *.o a.out $(BUILD_DIR)

.PHONY: build
