#include <stdio.h>
#include "asm.h"
#include "mixed_sum.h"
	
int main(int ac, char** av){
	int a=10;
	int b=25;
	int pos=1;
	
	printf("A: %d\nB: %d\nposToChange:%d\nnumBitsJoined: %d\n", a, b, pos, join_bits(a, b, pos));
	
	printf("mixedSum: %d\n", mixed_sum(a, b, pos));

	return 0;
}
