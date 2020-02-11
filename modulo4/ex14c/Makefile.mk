main: main.o asm.o mixed_sum.o
	gcc -Wall -g main.o asm.o mixed_sum.o -o main

main.o: main.c asm.h mixed_sum.h
	gcc -Wall -g -c main.c

asm.o: asm.s
	gcc -Wall -g -c asm.s

mixed_sum.o: mixed_sum.s
	gcc -Wall -g -c mixed_sum.s

run: main
	./main

clean:
	rm *.o main
