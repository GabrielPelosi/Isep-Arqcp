output: main.o new_matrix.o 
	gcc -Wall -g main.o new_matrix.o  -o output

main.o: main.c asm.h
	gcc -Wall -g -c main.c

new_matrix.o: new_matrix.c
	gcc -Wall -g -c new_matrix.c
run: output
	./output
clean:
