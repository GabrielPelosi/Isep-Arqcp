#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int a=10;
	int b=16;
	int pos=3;
	
	int res=join_bits(a, b, pos);
	
	printf("joinedBitsInDecimal=%d\n", res);
	return 0;
}
