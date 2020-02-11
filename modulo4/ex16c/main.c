#include <stdio.h>
#include "asm.h"
#include "changes_vec.h"
	
int main(int ac, char** av){
	int vec[]={0x00f00000,0x00700000,0x00a00000};
	int num=3;
	int *ptrvec=vec;
	int i;
	printf("vecBeforeChanges: ");
	for(i=0;i<num;i++){
		printf("[%d]", *(ptrvec+i));
	}
	
	changes_vec(ptrvec,num);

	printf("\nvecAfterChanges: ");
	for(i=0;i<num;i++){
		printf("[%d]", *(ptrvec+i));
	}
	
	printf("\n");

	return 0;
}
