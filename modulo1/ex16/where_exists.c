#include <stdio.h>
#include <string.h>
#include "where_exists.h"

char* where_exists(char* str1, char* str2){
	char *str=strstr(str1,str2);
	
	return str;
}
