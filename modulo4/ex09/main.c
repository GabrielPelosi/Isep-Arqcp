#include <stdio.h>
#include "asm.h"


void print_result(char op, int o1, int o2, int res)
{
	
	printf("%d %c %d = %d\n", o1, op, o2, res);

}

int main(int argc, char **argv)
{
	
	
	int result = calculate(2, 4);

	printf("result = %d\n", result);
	
	
	return 0;
}

