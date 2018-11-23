caller: caller.o
	cc -O1 -o caller caller.o

caller.o: caller.c
	cc -O1 -S caller.c
	cc -O1 -c caller.c

.PHONY = clean
clean:
	rm caller *.o *.s
