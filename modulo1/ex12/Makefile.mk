# make file ex 12

output: capitalize.o main.o
	gcc capitalize.o main.o -o output

capitalize.o: capitalize.c
	gcc -g -Wall -c capitalize.c -o capitalize.o
main.o: main.c 
	gcc -g -Wall -c main.c -o main.o
clear: 
	rm -f *.o output
	
run: output
	./output
	
	
