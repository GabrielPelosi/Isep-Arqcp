#include <stdio.h>
#include "asm.h"
	
int main(int ac, char** av){
	int num=0;
	int * ptr=&num;
	int pos=1;
	
	printf("numBeforeBitActivation=>%d\n", *(ptr));
	int res=activate_bit(ptr, pos);
	printf("numWithBitActivated(pos:%d)=>%d\n", pos, *(ptr));
	
	if(res==1){
		printf("BitWasAltered\n");
	}else{
		printf("BitWasNotAltered\n");
	}
	
	
	return 0;
}
