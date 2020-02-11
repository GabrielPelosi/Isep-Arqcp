


#include <stdio.h>
#include "asm.h"
int i=1, n;

int main(int argc, char **argv)
{
	printf("n: ");
	scanf("%d", &n);
	int result = somatorio();
	
	printf("Resultado: %d\n", result);
	
	return 0;
}

