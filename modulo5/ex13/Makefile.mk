
#make file ex 13

output: main.o asm.o
	gcc -Wall -g main.o asm.o -o output


new_matrix.o: new_matrix.c
	gcc -Wall -g -c new_matrix.c
	

asm.o: asm.s
	gcc -Wall -g -c asm.s
	
main.o: main.c main.h
	gcc -Wall -g -c main.c

run: output
	./output
clean:
	rm *.o main
