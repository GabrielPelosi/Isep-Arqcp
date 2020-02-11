#make file ex

output: asm1.o asm.o main.o 
	gcc -Wall -g asm1.o asm.o main.o -o output

asm.o: asm.s
	gcc -Wall -g -c asm.s

asm1.o: asm1.s
	gcc -Wall -g -c asm1.s
	
main.o: main.c	
	gcc -g -Wall -c main.c -o main.o
	
clear:
	rm -f *.o output
	
run: output
	./output
	
