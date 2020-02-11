

#include <stdio.h>
#include "activate_bits.h"

int main(int argc, char **argv)
{
	
	int num = 0b01010101010;
	int left = 2;
	int right = 3;

	int res;
	res = activate_bits(num, left, right);
	printf("Antes da ativacao dos bits: %x\n", num);
	printf("Depois da ativacao dos bits: %d\n", res);

	return 0;
}

