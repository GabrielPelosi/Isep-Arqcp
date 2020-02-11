
#include <stdio.h>
#include "power_ref.h"

 void power_ref(int* x, int y){
	 int flag = 1;
	 int* ptr_flag = &flag;
	
	if (y > 0)
	{
		while (y != 0)
		{ 
		
			*ptr_flag = *ptr_flag * *x;
			y--;
		}
		*x = *ptr_flag;
				
	}else if ( y < 0 ){
	
		while (y != 0)
		{ 
			*ptr_flag = *ptr_flag * *x;
			y++;
		}	
		*x = *x / *ptr_flag;
	}else if(y == 0){
		*x = 1;
	}

 
 }
 

