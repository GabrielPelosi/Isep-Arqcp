
#include <stdio.h>
#include "capitalize.h"


int main(int argc, char **argv)
{
	char str[] = "hello      wolrd hello o";
	capitalize(str);
	int i;
	
	for (i = 0; str[i]!='\0'; i++)
	{
		printf("%c", *(str + i) );
	}
	
	return 0;
}

