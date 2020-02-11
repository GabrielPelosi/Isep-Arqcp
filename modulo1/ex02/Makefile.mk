# make file

output: copy_vec.o main.o
		gcc copy_vec.c main.c -o output

capy_vec.o: copy_vec.c
		gcc -g -Wall -c copy_vec.c -c copy_vec.o
		
main.o: main.c 
		gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o output
	
run: output
		./output
		
		
