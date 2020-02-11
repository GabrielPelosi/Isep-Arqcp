#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int num1=31;
	int num2=40;
	int * smaller;
	
	printf("\nVALOR 1: %d\n", num1);
	printf("\nVALOR 2: %d\n", num2);
	int sum=sum_smaller(num1, num2, smaller);
	printf("\nSOMA: %d\n", sum);
	printf("\nSMALLER = %d\n", *smaller);
	
	return 0;
}
