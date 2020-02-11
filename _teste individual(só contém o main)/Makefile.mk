#Make file ex ind

main: main.o tempo.o qualificados.o
	gcc -Wall -g main.o notas.o resultado.o -o main

main.o: main.c asm.h
	gcc -Wall -g -c main.c

tempo.o: tempo.s
	gcc -Wall -g -c notas.s

qualificados.o: qualificados.s
	gcc -Wall -g -c resultado.s

run: main
	./main

clean:
	rm *.o main
