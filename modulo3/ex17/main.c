

#include <stdio.h>
#include "asm.h"


int *ptrvec;
int num;

int main(int argc, char **argv)
{
		
	int int_array[]={3,4,5,1,2};
	num=5;
	ptrvec=int_array;
	printf("array desordenado: ");
	int i;
	for(i=0; i<num; i++){
		printf("%d ", int_array[i]);
	}
	
 	array_sort();
 	
	printf("\n");
	printf("array ordenado: ");

	for(i=0; i<num; i++){
		printf("%d ", int_array[i]);
	}
	printf("\n");
	return 0;
}

