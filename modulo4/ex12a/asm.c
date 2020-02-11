#include <stdio.h>
#include "asm.h"

int activate_bit(int * ptr, int pos){

	int old=*(ptr);
	*(ptr)|=1<<pos;
	
	if(*(ptr)==old){
		return 0;
	}
	
	return 1;
}
