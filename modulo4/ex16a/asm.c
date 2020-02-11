#include <stdio.h>
#include "asm.h"

void changes(int *ptr){
	
	int mask = 15;
	mask = mask << 20;
	
	int bits= *ptr & mask;
	bits=bits>>20;
	
	if(bits>7){
		*ptr=*ptr^mask;
	}
}
