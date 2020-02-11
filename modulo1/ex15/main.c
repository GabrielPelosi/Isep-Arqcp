#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

extern int nset;

int main(int ac, char **av){
		int num=100;
		int vec[num];
		int limit=0;
		int i;
		int x;
		int y;
		int z;
		
		populate(vec,num,limit);
		
		for(i=0; *(vec+i+2)!='\0'; i++){
			x=*(vec+i);
			y=*(vec+i+1);
			z=*(vec+i+2);
			if(check(x,y,z)==1){
					inc_nsets();
			}
		}
		
		
	return 0;
}
