#include <stdio.h>
#include "asm.h"


char byte1= ' ';
char byte2= ' ';

int main(int argc, char **argv)
{
	
	printf("%c \n", byte1);
	printf("%c \n", byte2);
	short int s=concatBytes();
	printf("%#X \n", s);
	return 0;
}

