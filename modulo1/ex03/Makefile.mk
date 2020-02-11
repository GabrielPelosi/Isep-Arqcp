# make file

output: sum_even.o main.o
		gcc sum_even.o main.o -o output
		
sum_even.o: sum_even.c
		gcc -g -Wall -c sum_even.c -o sum_even.o
		
main.o: main.c
		gcc -g -Wall -c main.c -o main.o
		
clean: 
		rm -f *.o output
		
run: output
		./output
		
		


