




#include <stdio.h>
#include "asm.h"

short current=0;
short desired=10;

int main(void){
 	
 	int timeElapsed = 0;
	
	timeElapsed=needed_time();
	
	printf("%d Time: \n  Current Temperature: %d\n  Current Temperature : %d", timeElapsed, current, desired);

 	return 0;
}
