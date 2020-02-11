#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int num=0x00f00000;
	int *ptr=&num;
	
	printf("num: %d\n", *(ptr));
	changes(ptr);
	printf("alteredNum: %d\n", *(ptr));
	
	return 0;
}
