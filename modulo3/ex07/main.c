

#include <stdio.h>
#include "asm.h"

char *ptr1;
int main(int argc, char **argv)
{
	int num;
	char str[] = "Ola, sou o jose";
	ptr1=str;
	num=encrypt();
	printf("%s\n", str);
	printf("%d\n", num);
	num=decrypt();
	printf("%s\n", str);
	printf("%d\n", num);
	return 0;
}

