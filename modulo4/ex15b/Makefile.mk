#make file ex 15b
output: main.o asm.o
	gcc -Wall -g main.o asm.o -o output
main.o: main.c asm.h
	gcc -Wall -g -c main.c
asm.o: asm.s
	gcc -Wall -g -c asm.s
run: output
	./output
clean:
	rm *.o main
