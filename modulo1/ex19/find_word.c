#include <stdio.h>
#include <string.h>
#include "find_word.h"
	
char * find_word(char* str, char* word, char* initial_addr){
    char* itr = initial_addr;
    //busca o tamanho da string
    int wordsize = 0;
    int j;
    for (j = 0; *(word+j) !='\0' ; j++)
		wordsize++;
        
    while(*itr!='\0'){
        int i=0;
        if(*itr==*word){
            char flag = 1;
            for(;i<wordsize;i++){
                if(*(itr+i) == '\0' || *(itr+i)!=*(word+i)){
                    if(wordsize>=i)
                        flag=0;
                    else
                        flag=1;
                    break;
                }
            }
            if(flag){
                return itr;
            }
        }
        itr++;
    }
    return NULL;
}

