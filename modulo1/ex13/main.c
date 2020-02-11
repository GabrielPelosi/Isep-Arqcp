






#include <stdio.h>
#include "where_is.h"

#define SIZE 100

int main(int argc, char **argv)
{
	int i;
	char str[]="deeeFFFeefw";
	
	int p[SIZE];
	
	int new_size = where_is(str,'f',p);
	
	for (i = 0; i < new_size ; i++)
	{
		printf("%d ", *(p + i));
	}
	
	
	return 0;
}
