#include <stdio.h>
#include "asm.h"


int int_array[]={1,2,-3,4,5};
int *ptrvec=int_array;
int num=5;

int main(int argc, char **argv)
{
	int res1= vec_sum();
	printf("Soma: %d\n", res1);
	int res=vec_avg();
	printf("Media: %d\n", res);
	

	return 0;
}
