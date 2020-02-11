



#include <stdio.h>
#include "swap.h"

void swap(int* vec1, int* vec2, int size){
	
	int tmpvalue=0;
    //size--;//estudar
    while(size>=0){
        tmpvalue=*((vec1)+size);//guardar o valor do vetor 1 para nao perde-lo
        *((vec1)+size)=*((vec2)+size);
        *((vec2)+size)=tmpvalue;
        size--;
    }
}
