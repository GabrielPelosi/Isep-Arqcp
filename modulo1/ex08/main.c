

#include <stdio.h>
#include "array_sort2.h"
int main(int argc, char **argv)
{
	
	int vec[]={5,6,3,2,7,8,9,0,1,4};
	int size = 10;
	
	array_sort2(vec, size);
	
	int i;
	for (i = 0; i < size; i++)
	{
		printf("%d ", *(vec + i));
		
	}
	
	return 0;
}

