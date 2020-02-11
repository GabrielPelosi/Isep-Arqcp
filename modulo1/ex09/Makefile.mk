#make file ex09

output: sort_without_reps.o main.o
		gcc sort_without_reps.o main.o -o output
		
sort_without_reps.o: sort_without_reps.c
		gcc -g -Wall -c sort_without_reps.c -o sort_without_reps.o
		
main.o: main.c
		gcc -g -Wall -c main.c -o main.o
		
clean:
		rm -f *.o output
		
run: output
		./output
