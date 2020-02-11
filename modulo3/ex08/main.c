#include <stdio.h>
#include "test_even.h"
#include "vec_sum_even.h"

int vec[]={1,2,3,4,5,6,7,8,9,10};
int num=10;
int even=10;
int *ptrvec=vec;
int res;
int sum;
int i=0;

int main(int ac, char** av){
	
	test_even();
	if(res==0){
		printf("\nImpar\n");
	}
	else{
		printf("\nPar\n");
	}
		
	sum=vec_sum_even();
	
	for(i=0;i<num;i++){
		printf("%d", *(ptrvec+i));
	}
	printf("\n");
	printf("%d", sum);
	printf("\n");
	return 0;
}
