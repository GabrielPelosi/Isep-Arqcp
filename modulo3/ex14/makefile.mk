# make file

output: exists.o vec_diff.o main.o
		gcc exists.o vec_diff.o main.o -o output
		
exists.o: exists.s
		gcc -g -Wall -c exists.s -o exists.o

vec_diff.o: vec_diff.s
		gcc -g -Wall -c vec_diff.s -o vec_diff.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o
		
clean: 
		rm -f *.o output
		
run: output
		./output
		
		
