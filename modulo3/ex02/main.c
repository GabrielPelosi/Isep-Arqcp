#include <stdio.h>
#include "str_copy_porto.h"

char vec[]="vava";
	char vec2[]="";
	char *ptr1=vec;
	char *ptr2=vec2;
	int i=0;
	
int main(int ac, char** av){
	printf("\n");
	
	while(*(ptr1+i)!='\0'){
		printf("%c", *(ptr1+i));
		i++;
	}
	
	str_copy_porto();
	
	printf("\n");
	
	i=0;
	
	while(*(ptr2+i)!='\0'){
		printf("%c", *(ptr2+i));
		i++;
	}
	
	printf("\n");
	
	
	return 0;
	
}
