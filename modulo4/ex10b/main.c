#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int x=10;
	int numBits=count_bits_zero(x);
	printf("numOfUnusedBits(%d)=>%d\n", x, numBits);
	return 0;
}
