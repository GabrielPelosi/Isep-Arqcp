


#include <stdio.h>
#include "copy_vec.h"


int main(int argc, char **argv)
{
	int vec1[] = {10, 11, 12, 13,14,15,16,17,19,20,21};
	int vec2[] = {0, 1,2,3,4,5,6,7,8,9,10};
	
	int* a = vec1;
	int* b = vec2;
	
	short i;
	
	for (i = 0; i < 11; i++)
	{
		printf("%d ", *(vec1 +i));
	}
	
	printf("\n");
	
	for (i = 0; i < 11; i++)
	{
		printf("%d ", *(vec2 +i));
	}
	
	printf("\n print do vetor 2 apos uso da funcao\n");
	
	copy_vec(a,b,4);
	
	for (i = 0; i < 11; i++)
	{
		printf("%d ", *(vec2 +i));
	}
	printf("\n");
	
	return 0;
}

