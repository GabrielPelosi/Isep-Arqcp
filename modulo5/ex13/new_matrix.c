
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "main.h"
int **new_matrix(int lines, int columns){
	int i =0;
	int **ptr_m =NULL;


	ptr_m = (int**) calloc(lines, sizeof(int*)); 

    for(i=0;i<columns;i++){
		*(ptr_m+i) = (int*) calloc(columns, sizeof(int)); 

    }

    return ptr_m;
}
