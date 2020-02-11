#make


output: asm.o main.o 
	gcc -Wall -g asm.o main.o -o output

asm.o: asm.s
	gcc -Wall -g -c asm.s
	
main.o: main.c	
	gcc -g -Wall -c main.c -o main.o
	
clear:
	rm -f *.o output
	
run: output
	./output
