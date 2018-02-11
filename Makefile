clean:
	rm -f *.o *.a *.out
	rm -f build/*.a build/*.o build/*.out

build:
	g++ -c *.cpp
	g++ -o a.out *.o
	mv *.o a.out build/

.PHONY: build
