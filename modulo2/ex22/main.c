


#include <stdio.h>
#include "asm.h"
int i, j, res;

int main(int argc, char **argv)
{
	printf("I: ");
	scanf("%d", &i);
	printf("J: ");
	scanf("%d", &j);
	
	res=f();
	printf("F= %d\n", res);
	
	res=f2();
	printf("F2= %d\n", res);
	
	res=f3();
	printf("F3= %d\n", res);
	
	res=f4();
	printf("F4= %d\n", res);
	
	return 0;
}

