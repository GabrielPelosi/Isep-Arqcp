


#include <stdio.h>
#include "asm.h"
char num;

int main(int argc, char **argv)
{
	printf("Num: ");
	scanf("%c", &num);
	int result = check_num();
	printf("%d\n", result);
	
	if(result==1){
		printf("Par e negativo\n");
	}
	else if(result==2){
		printf("Impar e negativo\n");
	}
	else if(result==3){
		printf("Par e positivo\n");
	}
	else if(result==4){
		printf("Impar e positivo\n");
	}
	
	return 0;
}

