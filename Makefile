CC = g++
CFLAGS = -g -Wall -fsanitize=address
LDFLAGS = -fsanitize=address

hello.out: hello.o
	$(CC) $(LDFLAGS) -o $@ $<
%.o: %.cpp
	$(CC) -MMD -MF $@.d $(CFLAGS) -c $< -o $@
clean:
	rm -f *.o*

-include $(wildcard *.d)
