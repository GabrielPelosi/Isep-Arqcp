#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"


int main( void ){

	int u =0;
	int lines = 2;
	int columns = 2;

	int **ptr = new_matrix(lines, columns);

	printf("RESULTADO_endereço_matrix: %p\n", ptr);

	for (u = 0; u < lines ; u ++){
		free (*(ptr+u) );
	}
	free(ptr);
	return 0;



}

