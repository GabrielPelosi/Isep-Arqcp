


#include <stdio.h>
#include "asm.h"


int main(int argc, char **argv)
{
	
	short array[]={0,2,3,4};
	short *vec= array;
	int num = 4;
	int res = count_even(vec, num);
	printf("Número de elemtentos pares no array: %d\n", res);
	
	return 0;
}

