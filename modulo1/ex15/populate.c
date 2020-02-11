#include <stdio.h>
#include <stdlib.h>
#include "populate.h"

void populate(int *vec, int num, int limit){
	int i;
	
	for(i=0;i<num;i++){
		limit= rand() % 21;
		*(vec+i)=limit;
	}
}
