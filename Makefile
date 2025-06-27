CC = g++
CFLAGS = -g -Wall

hello.out: hello.o
	$(CC) -o $@ $<
hello.o: hello.cpp
	$(CC) $(CFLAGS) -c $<
clean:
	rm -f *.o *.out
