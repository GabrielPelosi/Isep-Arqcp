# make file

output: array_sort2.o main.o
		gcc array_sort2.o main.o -o output
		
array_sort2.o: array_sort2.c
		gcc -g -Wall -c array_sort2.c -o array_sort2.o
		
main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean: 
		rm -f *.o output
		
run: output
		./output
		
		
