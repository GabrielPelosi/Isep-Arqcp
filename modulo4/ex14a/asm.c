#include <stdio.h>
#include "asm.h"

int join_bits(int a, int b, int pos){

	int i;
    int aMask = 1;
	
    for(i=0; i< pos; i++)
    {
        aMask = aMask << 1;
        aMask++;
    }
	a = a & aMask;

    int bMask = 0xffffffff ^ aMask;
    b = b & bMask;

    return (a | b);

}
