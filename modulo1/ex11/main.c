

#include <stdio.h>
#include "palindrome.h"


int main(int argc, char **argv)
{
	char aba[]= "0000001";
	
	int a = palindrome(aba);
	
	printf("\n %d \n", a);
	
	return 0;
}

