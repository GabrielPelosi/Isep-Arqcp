main: main.o notas.o resultado.o
	gcc -Wall -g main.o notas.o resultado.o -o main

main.o: main.c asm.h
	gcc -Wall -g -c main.c

notas.o: notas.s
	gcc -Wall -g -c notas.s

resultado.o: resultado.s
	gcc -Wall -g -c resultado.s


run: main
	./main

clean:
	rm *.o main

debug:
	ddd main
