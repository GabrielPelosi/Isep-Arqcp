


#include <stdio.h>
#include "asm.h"

int main(int argc, char **argv)
{
		
	int num=1;
	int nbits=3;
	int res=rotate_left(num,nbits);
	int res1=rotate_right(num, nbits);
	printf("Numero apos rotate left: %d\n", res);
	printf("Numero apos rotate right: %d\n", res1);
	
	return 0;
}

