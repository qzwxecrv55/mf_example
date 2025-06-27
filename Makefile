CC = g++
CFLAGS = -g -Wall

hello.out: hello.o
	$(CC) -o $@ $<
%.o: %.cpp
	$(CC) -MMD -MF $@.d $(CFLAGS) -c $< -o $@
clean:
	rm -f *.o*
