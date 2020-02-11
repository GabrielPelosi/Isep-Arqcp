#include <stdio.h>
#include "asm.h"

int count_bits_zero(int x){
	int counter=0;
	int i;
	
	for(i=0;i<32;i++){
		int res=x & 0x01;
		
		if(res==0){
			counter++;
		}
		x=x>>1;
	}
	return counter;
}
