#include <stdio.h>
#include "main.h"


int main(int argc, char **argv)
{
	
	s1 s;
	
	s1* ptr =&s;
	
	fill_s1(ptr,1,'2',3,'4');
	
	printf("%d\n", ptr->i);
    printf("%c\n", ptr->c);
    printf("%d\n", ptr->j);
    printf("%c\n", ptr->d);
	
	
	return 0;
}

