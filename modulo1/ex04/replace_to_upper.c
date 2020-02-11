
#include <stdio.h>
#include "replace_to_upper.h"


void upper1(char *str){
	int i;
	for (i = 0; str[i]!='\0'; i++) {
   
		if(str[i] >= 'a' && str[i] <= 'z') {
	   
			str[i] = str[i] -32;
		}
	}
}

