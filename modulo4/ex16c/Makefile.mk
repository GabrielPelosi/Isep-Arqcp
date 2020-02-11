main: main.o asm.o changes_vec.o
	gcc -Wall -g main.o asm.o changes_vec.o -o main

main.o: main.c asm.h changes_vec.h
	gcc -Wall -g -c main.c

asm.o: asm.s
	gcc -Wall -g -c asm.s

changes_vec.o: changes_vec.s
	gcc -Wall -g -c changes_vec.s

run: main
	./main

clean:
	rm *.o main
