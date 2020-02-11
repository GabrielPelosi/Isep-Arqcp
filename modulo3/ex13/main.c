
#include <stdio.h>
#include "asm.h"

signed int* ptrvec;
int num = 3;

int main(int argc, char **argv)
{
	int array[] = {-1, 0, 2};

	ptrvec = array;

	
	keep_positives();

	printf("array[0] = %d\n", array[0]);
	printf("array[1] = %d\n", array[1]);
	printf("array[2] = %d\n", array[2]);
	return 0;
}

