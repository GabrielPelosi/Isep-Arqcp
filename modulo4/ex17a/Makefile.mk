#make file 17a

output: add_byte.o  main.o
	gcc -g add_byte.o main.o -o output

add_byte.o: add_byte.c
		gcc -g -Wall -c add_byte.c -o add_byte.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o output
run: output
	./output
