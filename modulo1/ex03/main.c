

#include <stdio.h>
#include "sum_even.h"

int main(int argc, char **argv)
{
	int vec[]={1,2,3,4,5,6,7,8,9,10};
	
	int* ptr = vec;
	int result;
	
	result = sum_even(ptr,10);
	
	printf("%d ", result);
	
	
	
	return 0;
}

