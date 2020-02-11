

#include <stdio.h>
#include "asm.h"


short int s= 0xCCDD;


int main(int argc, char **argv)
{
	printf("bytes antes do usa da funcao: ");
	printf("%#X \n", s);
	s=swapBytes();
	printf("bytes apos o uso da funcao: ");
	printf("%#X \n", s);
	return 0;
}

