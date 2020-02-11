#make file ex
output: main.o activate_bit.o 
	gcc -Wall -g main.o activate_bit.o  -o output

main.o: main.c asm.h
	gcc -Wall -g -c main.c

activate_bit.o: activate_bit.c
	gcc -Wall -g -c activate_bit.c
run: output
	./output
clean:
