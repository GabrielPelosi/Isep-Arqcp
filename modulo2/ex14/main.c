

#include <stdio.h>
#include "asm.h"

int main(int argc, char **argv)
{	
	
	printf("base: ");
	scanf("%d", &base);
	printf("height: ");
	scanf("%d", &height);
	
	int area = getArea();
	
	printf("Area do triangulo: %d ", area);
	
	return 0;
}

