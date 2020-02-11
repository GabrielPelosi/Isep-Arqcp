

#include <stdio.h>
#include "asm.h"


int main(int argc, char **argv)
{
	
	unsigned int date1 = 0b00001011010111011000011111011110;
	unsigned int date2 = 0b00001010010111011000011111011110;
	unsigned int res=greater_date(date1, date2);
	

	if(res==date1){
		printf("%s\n", "date1");
	}else{
		if(res==date2){
			printf("%s\n", "date2");
		}else{
			printf("%s\n", "unexpected result");
		}
	}

	return 0;
}

