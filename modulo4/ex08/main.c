#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int a=2;
	int num=1;
	int *b=&num;
	int c=4;
	
	printf("res: %d\n", calc(a, b, c));
	
	
	return 0;
}
