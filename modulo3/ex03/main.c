
#include <stdio.h>
#include "asm.h"

char* ptr1;
char* ptr2;

int main(int argc, char **argv)
{
	
	
	char string1[] = "This is a vvv bbb";
	char string2[100];

	ptr1 = string1;
	ptr2 = string2;

	str_copy_porto2();

	printf("ptr1() = %s\n", string1);
	printf("ptr2() = %s\n", string2);
	
	return 0;
}

