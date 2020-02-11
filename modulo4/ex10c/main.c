#include <stdio.h>
#include "count_bits_zero.h"
#include "vec_count_bits_zero.h"
	
int main(int ac, char** av){
	int x=10;
	int numBits=count_bits_zero(x);
	printf("numOfUnusedBits(%d)=>%d\n", x, numBits);
	
	int num=3;
	int array[3]={-1,-2,-4};
	int * ptr=array;
	
	numBits=vec_count_bits_zero(ptr, num);
	printf("numOfUnusedBits(array)=>%d\n", numBits);
	
	return 0;
}
