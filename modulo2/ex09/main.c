

#include <stdio.h>
#include "asm.h"


char A=0;
short int B=-0;
int C=0;
int D=-1;


int main(int argc, char **argv)
{
	
	long long result = sum_and_subtract();
	printf("resultd %lld\n", result);
	return 0;
	
	
}

