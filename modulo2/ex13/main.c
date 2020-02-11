

#include <stdio.h>
#include "asm.h"

int base=2, height=3;

int main(int argc, char **argv)
{	
	int area = getArea();
	
	printf("Area do triangulo: %d ", area);
	
	return 0;
}

