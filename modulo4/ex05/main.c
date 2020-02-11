


#include <stdio.h>
#include "asm.h"
int main(int argc, char **argv)
{
	int num1=9;
	int v2=3;
	int *v1=&num1;

	printf("V1 e V2 sao inicialemnte %d and %d\n", num1, v2);
	
	int res=inc_and_square(v1, v2);
	
	printf("Depois do uso da funcao: \n V1 é %d e V2 é %d\n", num1,res);

	return 0;
}

