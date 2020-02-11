


#include <stdio.h>
#include "odd_sum.h"


int main(int argc, char **argv)
{
	int vec[]= {5,2,2,2,3,2};
	
	int soma=0;
	soma=odd_sum(vec);
	
	printf("\n %d \n ", soma);
	
	return 0;
}

