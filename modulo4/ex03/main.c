


#include <stdio.h>
#include "asm.h"
int main(int argc, char **argv)
{
	int numero1=3;
	int numero2=9;
	int numero3=1;

	int res= greatest(numero1, numero2, numero3);
	
	printf("o maior numero passado por parametro ºe: %d\n", res);
	
	return 0;
}

