

#include <stdio.h>
#include "odd_sum.h"

int odd_sum(int *p){
	
	int sum = 0;
	int i;
	int length = p[0];
	
	for (i = 1; i < length + 1; i++)
	{
		if (*(p + i) % 2 != 0 )
		{
			sum = sum + *(p + i);
		}
		
		
	}
	
	return sum;
	
}


