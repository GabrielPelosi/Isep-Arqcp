# make file

output: replace_to_upper.o main.o
		gcc replace_to_upper.o main.o -o output
		
replace_to_upper.o: replace_to_upper.c
		gcc -g -Wall -c replace_to_upper.c -o replace_to_upper.o
		
main.o: main.c
		gcc -g -Wall -c main.c -o main.o
		
clean: 
		rm -f *.o output
		
run: output
		./output
		
		
