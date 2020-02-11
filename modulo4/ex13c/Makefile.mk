#make file ex 13c

output: main.o activate_bits.o activate_invert_bits.o
	gcc -g -Wall main.o activate_bits.o activate_invert_bits.o -o output
	
main.o: main.c activate_invert_bits.h activate_bits.h
	gcc -g -Wall -c main.c
	
activate_invert_bits.o : activate_invert_bits.s
	gcc -g -Wall -c activate_invert_bits.s
	
activate_bits.o : activate_bits.s
	gcc -g -Wall -c activate_bits.s
	
clean:
	rm -f *.o output
		
run: output
	./output

