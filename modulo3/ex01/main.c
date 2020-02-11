
#include <stdio.h>
#include "asm.h"

char vec[] ="A0B0C0D";
char *ptr1=vec;
int main(int argc, char **argv)
{
	
	int n_zero = zero_count();
	printf("Numero de vezes que o zero foi encontrado na string: %d\n", n_zero);
	return 0;
}

