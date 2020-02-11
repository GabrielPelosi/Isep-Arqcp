#include <stdio.h>
#include "frequencies.h"

void frequencies(float *grades, int n, int *freq){
	int i, j;
	
	//programa não corre com o array vazio
	for(i=0; i<21; i++){
		*(freq+i)=0;
	}

	for(i=0; i<n; i++){
		(int)j=*(grades+i);
		*(freq+j)=*(freq+j)+1;
	}
}
