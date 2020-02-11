#make file ex 15a

output: main.o greater_date.o 
	gcc -Wall -g main.o greater_date.o  -o output

main.o: main.c 
	gcc -Wall -g -c main.c

greater_date.o: greater_date.c
	gcc -Wall -g -c greater_date.c
run: output
	./output
clean:
