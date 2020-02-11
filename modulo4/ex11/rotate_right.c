
#include "asm.h"

int rotate_right(int num, int nbits)
{

	int k;
	k = num >> nbits;
	int c;
	c = num << (32-nbits); 
	int d;
	d= c | k;
	return d;
}

