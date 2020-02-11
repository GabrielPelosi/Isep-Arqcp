#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int x=0;
	int numBits=count_bits_zero(x);
	printf("numOfUnusedBits=%d\n", numBits);
	return 0;
}
