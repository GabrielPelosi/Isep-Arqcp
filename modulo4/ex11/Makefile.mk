#make file ex

output: main.o rotate_left.o rotate_right.o
	gcc -Wall -g main.o rotate_left.o rotate_right.o -o output

main.o: main.c asm.h
	gcc -Wall -g -c main.c

rotate_left.o: rotate_left.c
	gcc -Wall -g -c rotate_left.c
rotate_right.o: rotate_right.c
	gcc -Wall -g -c rotate_right.c
run: output
	./output
clean:
	rm *.o main
