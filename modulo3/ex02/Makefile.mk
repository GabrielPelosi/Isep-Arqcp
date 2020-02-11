main: main.o str_copy_porto.o
	gcc -Wall -g main.o str_copy_porto.o -o main

main.o: main.c str_copy_porto.h
	gcc -Wall -g -c main.c

str_copy_porto.o: str_copy_porto.s
	gcc -Wall -g -c str_copy_porto.s

run: main
	./main

clean:
	rm *.o main
