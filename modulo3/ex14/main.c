#include <stdio.h>
#include "exists.h"
#include "vec_diff.h"

short x=1;
short vec[]={1,2,1,3,1,4,1,5,1,6};
short *ptrvec=vec;
int num=10;
int res;

int main(int ac, char** av){
	
	res=exists();
	if(res==1){
		printf("\nX exists in vec.\n");
	}
	else{
		printf("\nX doesn't exist in vec.\n");
	}
	
	printf("\nAmount of numbers different from X in vec: %d\n", vec_diff());
	
	return 0;
}
