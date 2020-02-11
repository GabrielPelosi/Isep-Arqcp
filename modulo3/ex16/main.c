#include <stdio.h>
#include "asm.h"

int num=10;
char vec1[]="0000--0000";
char vec2[]="1111--1111";
char *ptr1=vec1;
char *ptr2=vec2;
int i;

int main(int ac, char** av){
	
	printf("\nPRE SWAP\n");
	
	for(i=0; i<num; i++){
		printf("%c", *(ptr1+i));
	}
	printf("\n");
	for(i=0; i<num; i++){
		printf("%c", *(ptr2+i));
	}
	
	swap();
	
	printf("\nPOST SWAP\n");
	
	for(i=0; i<num; i++){
		printf("%c", *(ptr1+i));
	}
	printf("\n");
	for(i=0; i<num; i++){
		printf("%c", *(ptr2+i));
	}
	printf("\n");
	return 0;
}
