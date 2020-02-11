

#include <stdio.h>
#include "capitalize.h"


void capitalize (char *str)
{
	
	int i;
	int cap = 1; 
	
	for (i = 0; *(str + i)!='\0'; i++) {
		
		char letter = *(str + i);
			if (letter == ' ')
			{
			cap=1;
				
			}else{
				if(letter>='a' && letter<='z')
				{
					if(cap == 1) {
					*(str + i) = *(str + i) -32;
					cap = 0;
					
					}
				}else if(letter>='A' && letter<='Z' ){
					cap=0;
				}else if(letter>='0' && letter<='9' ){
					cap=0;
				}
			}	
	}
}
	

