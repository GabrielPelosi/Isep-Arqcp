#make file ex 13

output: where_is.o main.o
	gcc where_is.o main.o -o output
	
where_is.o: where_is.c
	gcc -g -Wall -c where_is.c -o where_is.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o output
	
run: output
	./output

