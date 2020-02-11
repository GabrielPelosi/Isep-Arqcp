

#include <stdio.h>
#include "asm.h"

int op1=0x80000000; 
int op2=0x80000000;


int main(){

	char c;
	
	c=test_flags();
	
	printf("Resultado: (1 se ocorreu Carry ou Overflow, 0 se não ocorreu \n  %c \n ", c);
	
	return 0;
}
