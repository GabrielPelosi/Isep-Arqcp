#make file ex 17
output: swap.o main.o
	gcc swap.o main.o -o output
average.o: average.c
	gcc -g -Wall -c swap.c -o average.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o output
run: output
	./output
