


#include <stdio.h>
#include "compress_shorts.h"
int main(int argc, char **argv)
{
	short shorts[] = {0x1111, 0x2222, 0x3333, 0x4444};
	int n_shorts = 4;
	int integers[2];

	// o resultado tem q ser algo parecido 0x22221111
	//mais correto, byte menos significativo fica na zona mais isginifitcativa

	compress_shorts(shorts, n_shorts, integers);

	int i;
	for(i = 0; i < 2; i++)
	{
		printf("%x\n", integers[i]);
	}


	return 0;
}

