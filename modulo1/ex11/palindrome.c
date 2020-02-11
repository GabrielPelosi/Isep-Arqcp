

#include <stdio.h>
#include "palindrome.h"


int palindrome(char* str) 
{ 
	int h,i;
	int count = 0;
	
	//busca o tamanho da string
	for (h = 0; *(str+h) != '\0'; h++)
	{
		count++;
	}
	//verifica se a string é NULL
	if(count == 0){
		return 0;
	}

	//elimina um valor do tamanha da string para percorrer corretamente o vetor
	count--;
	
	//percorre o vetor comparando o primera com o ultimo char
	for (i = 0; *(str+i) != '\0'; i++)
	{	
		if((*(str+i) >= 'a' && *(str+i) <= 'z') && ((*(str+count) >= 'a' && *(str+count) <= 'z')))
		{
			if (*(str+i) >= 'A' && *(str+i) <= 'Z' && ((*(str+count) >= 'A' && *(str+count) <= 'Z')))
			{
				if (*(str + i) != *(str + count))
				{	
					return 0;
				}
				//printf("%p ", (str + i));
			}
		 }
		 
		 if(*(str+i) >= '0' && *(str+i) <= '9' && ((*(str+count) >= '0' && *(str+count) <= '9')))
		 {			
			if (*(str + i) != *(str + count))
			{	
				return 0;
			}		
		}
		count--;		
	} 	
	return 1;
}
		
	
	
    

