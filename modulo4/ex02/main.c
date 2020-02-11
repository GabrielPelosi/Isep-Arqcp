#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int n=8;
	
	printf("\nVALOR DO N: %d\n", n);
	printf("\nSOMA = %d\n", sum_n(n));
	
	return 0;
}
