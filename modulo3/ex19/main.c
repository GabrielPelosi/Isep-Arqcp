

#include <stdio.h>
#include "asm.h"

int num = 4;
char* ptrgrades;

int* ptrfreq;

int main(int argc, char **argv)
{
	
	char gradesArray[] = {10, 10, 20, 20};

    	  // 0 1 2 3 4 5  6 7 8 9 0   1 2 3 4 5  6 7 8 9 0
    int freq[]={0,0,0,0,0,0, 0,0,0,0,0,  0,0,0,0,0, 0,0,0,0,0}; 

	ptrgrades = gradesArray;
	ptrfreq = freq;

	frequencies();

	int i;

	for(i = 0; i < 20; i++) {
		printf("%d: %d\n", i, freq[i]);
	}
	return 0;
}

