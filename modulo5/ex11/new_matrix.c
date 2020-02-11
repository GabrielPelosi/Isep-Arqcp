

#include <string.h>
#include <stdlib.h>
#include "asm.h"
#include <stdio.h>

int **new_matrix(int lines, int columns){
	int i =0;
	int **ptr_m =NULL;


	ptr_m = (int**) calloc(lines, sizeof(int*)); 

    for(i=0;i<columns;i++){
		*(ptr_m+i) = (int*) calloc(columns, sizeof(int)); // para cada elemento do vector anterior ponho a apontar para um array com o tamanho 4*columns

    }

    return ptr_m;
}
