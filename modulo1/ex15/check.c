#include <stdio.h>
#include "check.h"

int check(int x, int y, int z){
	if(x<y && y<z){
		return 1;
	}
	else{
		return 0;
	}
}
