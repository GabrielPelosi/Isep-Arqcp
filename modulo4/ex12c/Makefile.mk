main: main.o asm.o activate_2bits.o
	gcc -Wall -g main.o asm.o activate_2bits.o -o main

main.o: main.c asm.h activate_2bits.h
	gcc -Wall -g -c main.c

asm.o: asm.s
	gcc -Wall -g -c asm.s
	
activate_2bits.o: activate_2bits.s
	gcc -Wall -g -c activate_2bits.s

run: main
	./main

clean:
	rm *.o main
