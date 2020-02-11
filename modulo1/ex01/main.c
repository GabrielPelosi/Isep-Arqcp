



#include <stdio.h>

int main(int argc, char **argv)
{
	
	
	int x = 5;
	int* xPtr = &x;
	float y = *xPtr + 3;
	int vec[] = {10, 11, 12, 13};
	//int vec2[] = {1, 2, 3, 4,5,6,7,8};
	
	printf("%d \n", x);
	printf("%f\n", y);
	
	printf("%p\n", &x);
	printf("%p\n", &xPtr);
	
	printf("%d\n", *xPtr);
	
	printf("%p\n", vec);
	
	int i;
	int* ptrVec = vec;
	for (i = 0; i < 4; i++)
	{
		printf("%d ",*(vec + i));
	}
	printf("\n");
	
	for (i = 0; i < 4; i++)
	{
		printf("%p, %d \n", ptrVec, *ptrVec);
		ptrVec++;
	}
	
	
	return 0;
}


