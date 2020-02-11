#include <stdio.h>
#include "asm.h"

short vec[]={99,100,99,101,99,102,99,103,99,104};
short *ptrvec=vec;
int num=10;
int i=0;

int main(int ac, char** av){
	
	for(i=0;i<num;i++){
		printf("-%d-", *(ptrvec+i));
	}
	printf("\n");
	
	vec_zero();
	
	for(i=0;i<num;i++){
		printf("-%d-", *(ptrvec+i));
	}
	printf("\n");
	
	return 0;
}
