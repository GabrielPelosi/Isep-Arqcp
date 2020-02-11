




#include <stdio.h>
#include "swap.h"
int main(int argc, char **argv)
{
	int v1[] = {1,2,3,4,5};
	
    int v2[] = {5,4,3,2,1};

	int i;
	printf("print antes do swap. \n");
	for (i = 0; i < 5; i++)
	{
		printf("%d ",*(v1 + i) );
	}
	printf("\n ");
	for (i = 0; i < 5; i++)
	{
		printf("%d ", *(v2 + i) );
	}
    swap(v1,v2,5);
    
	printf("\n ");
	printf("print depois do swap. \n");
	
	printf("\n ");
	
	for (i = 0; i < 5; i++)
	{
		printf("%d ", *(v1 + i) );
	}
	printf("\n ");
	for (i = 0; i < 5; i++)
	{
		printf("%d ", *(v2 + i) );
	}

	return 0;
}

