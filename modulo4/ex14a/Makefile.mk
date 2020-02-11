main: main.o asm.o
	gcc -Wall -g main.o asm.o -o main

main.o: main.c asm.h
	gcc -Wall -g -c main.c

asm.o: asm.c
	gcc -Wall -g -c asm.c

run: main
	./main

clean:
	rm *.o main
