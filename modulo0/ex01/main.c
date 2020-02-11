#include <stdio.h>

int main(void){

	int charSize = sizeof(char);
	int intSize = sizeof(int);
	int unsignedintSize = sizeof(unsigned int);
	int longSize = sizeof(long);
	int shortSize = sizeof(short);
	int longlongSize = sizeof(long long);
	int floatSize = sizeof(float);
	int doubleSize = sizeof(double);

	printf("chas: %d\n", charSize);
	printf("int; %d\n", intSize);
	printf("unsigned int: %d\n", unsignedintSize);
	printf("long: %d\n", longSize);
	printf("short: %d\n", shortSize);
	printf("long long: %d\n", longlongSize);
	printf("float: %d\n", floatSize);
	printf("double: %d\n", doubleSize);

	
return 0;
}
