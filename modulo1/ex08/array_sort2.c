

#include <stdio.h>
#include "array_sort2.h"

void array_sort2(int *vec, int n){
	
	int i, j, flag;
	
	for (i = 0; i < n  ; i++)
	{
		 for (j=i+1; j<n; j++)
		{
			if (*(vec + j) < *(vec + i))
			{
				flag = *(vec + i); 
                *(vec + i) = *(vec + j); 
                *(vec + j) = flag; 
			}
		}
		
		
		
	}
	

}
