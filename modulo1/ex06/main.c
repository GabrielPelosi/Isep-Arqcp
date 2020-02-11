

#include <stdio.h>
#include "power_ref.h"

int main(int argc, char **argv)
{
	int base= -3;
	
	int exponent = -2;
	
	power_ref(&base, exponent);
	
	printf("\n %d \n", base);
	
	
	return 0;
}
