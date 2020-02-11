

#include <stdio.h>
#include "asm.h"

int main(int argc, char **argv)
{
	unsigned int date1 = 0xb0b07de;
	unsigned int date2 = 0xa0b07de;
	unsigned int resl = greater_date(date1,date2);
		
	if(resl==date1){
		printf("A data maior é a date1\n");
	}else{
		if(resl==date2){
		printf("A data maior é a date2\n");
		}else{
			printf("erro\n");
		}
	}

	return 0;
}

