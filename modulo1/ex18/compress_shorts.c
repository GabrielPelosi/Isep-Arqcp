

#include <stdio.h>
#include "compress_shorts.h"

void compress_shorts(short* shorts, int n_shorts, int* integers)
{
	
	int i;
	int ratio = sizeof(int) / sizeof(short);
	int numb_of_ints = n_shorts / ratio;

	for(i = 0; i < numb_of_ints; i++)
	{
		*(integers + i) = *((int*) (shorts + (ratio * i)));
		//printf("%d\n", *(integers + i));
	}
	

}

