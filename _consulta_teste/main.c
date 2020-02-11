#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"

int main( void ){

	int N_VINHOS=3;

	Prova_Vinhos *ptr2=(Prova_Vinhos*)calloc(N_VINHOS,sizeof(Prova_Vinhos*)); //array de estrutura para ex2

	ptr2[0].vinho = (char*)calloc(10,sizeof(char));
	ptr2[0].notas = (char*)calloc(10,sizeof(char));

	ptr2[1].vinho = (char*)calloc(7,sizeof(char));
	ptr2[1].notas = (char*)calloc(10,sizeof(char));

	ptr2[2].vinho = (char*)calloc(10,sizeof(char));
	ptr2[2].notas = (char*)calloc(10,sizeof(char));


	char nome1[] = "Que titntol";
	char nome2[] = "Zurrapa";
	char nome3[] ="É da Tasca";


	char notass1[] = {1,2,3,4,5,6,7,8,9,10};
	char notass2[] = {5,5,3,4,4,5,6,7,7,8};
	char notass3[] = {10,7,3,4,9,9,9,9,9,10};

	ptr2[0].notas=notass1;
	ptr2[0].vinho=nome1;

	ptr2[1].notas=notass2;
	ptr2[1].vinho=nome2;

	ptr2[2].notas=notass3;
	ptr2[2].vinho=nome3;

	char* ex2=  melhor_vinho(ptr2, N_VINHOS);

	int i =0;
	printf("melhor vinho -- \n");
	while (*(ex2+i)!= '\0'){  //impremir nome
		printf("%c", *(ex2+i));
		i = i+1;
	}
	free(ptr2);  //liberar memoria da heap
	 return 0;

}
