#include <stdio.h>
#include "asm.h"

int A, B;

int main(int ac, char** av){
	
	printf("Dividendo: ");
	scanf("%d", &A);
	printf("Divisor: ");
	scanf("%d", &B);
	
	int res=isMultiple();
	
	if(res==0){
		printf("A não é múltiplo de B\n");
		}
	else{
		printf("A é múltiplo de B\n");
		}
	return 0;
}
