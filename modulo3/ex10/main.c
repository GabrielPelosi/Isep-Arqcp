#include <stdio.h>
#include "asm.h"

char vec1[]="hello ";
char vec2[]="world!";
char vec3[20];
char *ptr1=vec1;
char *ptr2=vec2;
char *ptr3=vec3;
int i=0;

int main(int ac, char** av){
	
	str_cat();
	
	while(*(ptr1+i)!='\0'){
		printf("%c", *(ptr1+i));
		i++;
	}
	
	printf("\n");
	i=0;
	while(*(ptr2+i)!='\0'){
		printf("%c", *(ptr2+i));
		i++;
	}
	printf("\n");
	i=0;
	while(*(ptr3+i)!='\0'){
		printf("%c", *(ptr3+i));
		i++;
	}
	printf("\n");
	return 0;
}
