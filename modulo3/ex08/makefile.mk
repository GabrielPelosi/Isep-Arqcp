# make file

output: test_even.o vec_sum_even.o main.o
		gcc test_even.o vec_sum_even.o main.o -o output
		
test_even.o: test_even.s
		gcc -g -Wall -c test_even.s -o test_even.o
		
vec_sum_even.o: vec_sum_even.s
		gcc -g -Wall -c vec_sum_even.s -o vec_sum_even.o
		
main.o: main.c
		gcc -g -Wall -c main.c -o main.o
		
clean: 
		rm -f *.o output
		
run: output
		./output
		
		
