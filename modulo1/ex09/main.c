

#include <stdio.h>
#include "sort_without_reps.h"


int main(int argc, char **argv)
{
	int vec[] = {9,9,8,7,6,5,4,3,2,2,1,0};
	int n = 12;
	int vec2[12];
	
	int new = sort_without_reps(vec, n, vec2);
	
	int i;
	for (i = 0; i < new  ; i++)
	{
		printf("%d ", *(vec2 + i));
	}
	
	printf("\n %d \n ", new);
	
	
	return 0;
}

