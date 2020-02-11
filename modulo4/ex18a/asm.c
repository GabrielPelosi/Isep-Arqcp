#include <stdio.h>
#include "asm.h"

int sum_multiples_x(char *vec, int x){
	
	int byte=(x>>8) & 0xff;
	int sum=0;
	int i=0;
	
	if(byte==0){
		return 0;
	}

	while(vec[i]!='\0'){
		if(vec[i]%byte==0){
			sum=sum+vec[i];
		}
		i++;
	}
	return sum;
	
}
