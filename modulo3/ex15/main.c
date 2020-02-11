

#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num;


int main(int argc, char **argv)
{
	int array[]={1,0,-1};
	ptrvec=array;
	num=3;
	int res= sum_first_byte();
	printf("Soma dos primeiros bytes: %d\n", res);
	return 0;
}

