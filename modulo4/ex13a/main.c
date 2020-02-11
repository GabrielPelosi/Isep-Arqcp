


#include <stdio.h>
#include "asm.h"

int main(int argc, char **argv)
{
		
	int number = 0xff;

	int right = 0;
	int left = 1;

	int result = activate_bits(number, left, right);
	printf("%x\n", number);
	printf("Resultado apos a ativação dps bits= %d\n", result);
	return 0;
}

