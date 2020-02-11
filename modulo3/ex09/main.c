

#include <stdio.h>
#include "asm.h"


short *ptrvec;
int num;
short x;

int main(int argc, char **argv)
{
	
		
	x=3;
	short short_array[]={1,2,3,4,5};
	ptrvec=short_array;
	num=5;

	short *xptr=vec_search();

	printf("%p\n", xptr);
	
	return 0;
}

