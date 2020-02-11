#make file ex 06

output: power_ref.o main.o
		gcc power_ref.o main.o -o output
		
power_ref.o: power_ref.c
		gcc -g -Wall -c power_ref.c -o power_ref.o
		
main.o: main.c
		gcc -g -Wall -c main.c -o main.o
		
clean: 
		rm -f *.o output
		
run: output
		./output
