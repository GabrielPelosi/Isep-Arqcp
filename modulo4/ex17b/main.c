


#include <stdio.h>
#include "asm.h"

int main(int argc, char **argv)
{
	
	int i =0;
	int array1[]= {3, 1, 2, 3};
	int array2[]= {0, 0, 0, 0};
	int *vec1 = array1;
	int *vec2 = array2;
	char x = 1;

	add_byte(x, vec1, vec2);

	printf("array1(antes da soma): \n");
	for(i =0; i<array1[0];i++){
		printf(" n[%d]= %d ", i+1,array1[i+1]);
	}

	printf("\narray2(depois da soma): \n");
		for(i =0; i<array1[0];i++){
			printf(" n[%d]=%d ", i,array2[i+1]);
		}



	return 0;
}

