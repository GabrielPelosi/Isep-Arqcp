


#include <stdio.h>
#include "asm.h"
int num;

int main(int argc, char **argv)
{
	
	printf("Num: ");
	scanf("%d", &num);
	
	int result = steps();
	
	printf("Resultado: %d\n", result);
	
	return 0;
}

