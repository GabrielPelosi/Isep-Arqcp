#include <stdio.h>
#include "asm.h"

int op1=1000000, op2=2000000;

int main(int ac, char** av){
	
	printf("%d\n", op1);
	printf("%d\n", op2);
	
	long long res=sum2ints();
	printf("%lld\n", res);
	return 0;
}
