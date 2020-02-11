

#include <stdio.h>
#include "sort_without_reps.h"


int sort_without_reps(int *src, int n, int *dest){
	
	int flag;
	int i,j;
		
	//sort
	
	for (i = 0; i < n ; i++)
	{
		 for (j=i+1; j<n; j++)
		{
			if (src[j] < src[i])
			{
				flag = src[i]; 
                src[i] = src[j]; 
                src[j] = flag; 
			}
		}	
	}
	
	//copy
	for (i = 0; i < n; i++)
	{
		dest[i] = src[i];
	}
	
	//delete repeats
	int num = n;
	i = 1;
	while(i < num){	
		if (dest[i] == dest[i-1])
		{
			num--;
			for (j = i+1; j < n; j++)
			{
				dest[j-1] = dest[j];
			}
			
		}else i++;	
	}
	
	return num;
	
}
		
  
	

