#include <stdio.h>
#include "asm.h"

/*PROGRAMA SO VERIFICA SE OS APONTADORES APONTAM PARA A MESMA STRING
COM STRING DIFERENTES NAO FUNCIONA*/
	
int main(int ac, char** av){
	char string1[2]="ab";
	char string2[2]="ab";
	char *a=string1;
	char *b=string1;
	
	int check=test_equal(a, b);
	
	printf("\n%d\n", check);
	
	if(check==1){
		printf("\nEQUAL STRINGS\n");
	}
	else{
		printf("\nNON-EQUAL STRINGS\n");
	}
	
	return 0;
}
