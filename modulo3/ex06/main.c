#include <stdio.h>
#include "asm.h"

	char vec[]="heya world!";
	char *ptr1=vec;
	int count;
	int i;
	
int main(int ac, char** av){

	while(*(ptr1+i)!='\0'){
		printf("%c", *(ptr1+i));
		i++;
	}
	
	count=encrypt();
	
	printf("\n");
	i=0;
	while(*(ptr1+i)!='\0'){
		printf("%c", *(ptr1+i));
		i++;
	}
	
	printf("\ncount: %d\n", count);
	
	return 0;
	
}
