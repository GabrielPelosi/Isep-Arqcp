

#include <stdio.h>
#include "asm.h"


long int *ptrvec;
int num;

int main(int argc, char **argv)
{
	long long long_array[]={100,1001,0x1000000001};
	num=3;
	ptrvec=long_array;

	int res=vec_greater20();

	printf("Numero de elementos maiores que 20: %d\n", res);
	return 0;
}

