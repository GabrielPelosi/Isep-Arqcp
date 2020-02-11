


#include <stdio.h>
#include "activate_invert_bits.h"
#include "activate_bits.h"

int main(int argc, char **argv)
{
	int num = 238;
	int left = 30;
	int right = 1;
	
	int res;
	res = activate_invert_bits(num, left, right);
	printf("Resultado apos a invercao e ativacao dos bits: %d\n", res);
	
	return 0;
}

