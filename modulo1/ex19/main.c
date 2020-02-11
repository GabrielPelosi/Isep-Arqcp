#include <stdio.h>
#include "find_word.h"

int main(int ac, char** av)
{


    char str2[100];
	printf("%p   addres str2", str2);
	
	find_word("xrt","xaixrarrxrt xrt xrt xrt",str2+9);
	
	printf("%p  addres of the word", str2+9);
	
	return 0;
}
