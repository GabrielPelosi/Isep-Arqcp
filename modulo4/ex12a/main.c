#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int num=10;
	int * ptr=&num;
	int pos=0;
	
	printf("numOriginal: %d\n", *(ptr));
	printf("posAlter: %d\n", pos);
	
	activate_bit(ptr, pos);
	
	printf("numFinal: %d\n", *(ptr));
	
	return 0;
}
