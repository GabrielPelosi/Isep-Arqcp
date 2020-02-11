#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int a=10;
	int b=25;
	int pos=1;
	
	printf("A: %d\nB: %d\nposToChange:%d\nnumBitsJoined: %d\n", a, b, pos, join_bits(a,b,pos));

	return 0;
}
