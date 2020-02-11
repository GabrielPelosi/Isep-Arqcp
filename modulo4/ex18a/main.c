#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	char vector[]={3,5,11,12,7,4,0};
	char * vec=vector;
	int x=0xf0301;
	
	int i=0;
	
	printf("vectorContains: ");
	while(*(vec+i)!='\0'){
		printf("(%d)", *(vec+i));
		i++;
	}
	printf("\nsum: %d\n", sum_multiples_x(vec, x));
	
	return 0;
}
