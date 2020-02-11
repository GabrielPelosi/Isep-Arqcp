


#include <stdio.h>
#include "where_is.h"
int where_is (char *str, char c, int *p)
{

	
	int i = 0;
	int count = 0;
	
	while(*(str + i) != '\0')
	{
		char letra = *(str + i);

		if(letra == c)
		{
			*(p + count) = i;
			count++;
		}

		i++;
	}
	
	return count;
}

