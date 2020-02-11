
#include <stdio.h>
#include "copy_vec.h"

void copy_vec(int* vec1, int* vec2, int n){
	
	int i;
	
	
	for (i = 0; i < n; i++)
	{
		*(vec2 + i) = *(vec1 + i);
	}
	
	
}
