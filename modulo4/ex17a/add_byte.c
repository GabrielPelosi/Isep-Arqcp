

#include <stdio.h>

void add_byte(char x, int *vec1, int *vec2){

	int i =0;
	int temp =0;
	unsigned int get_1b =0;  	//variavel que vai guardar o primeiro byte do elemto do array
	unsigned int get_restb =0;  	//variavel que vai guardar os 3 primeiros bytes do elemento do array
	unsigned char soma_b = 0;  	//variavel que vai guardar a soma do 1 byte do elemto com o x (passa do por parametro)
	int n_vec1 = *vec1;  		// o 1º elemtno do array repreenta seu tamanho, excluindo o 1º elemento
	*vec2 = n_vec1;  			// ponho o priemiro elemento de vec 2 igual ao de vec1

	for(i =1; i<=n_vec1;i++){

		temp = *(vec1+i);    

		get_1b = temp & 0b00000000000000000000000011111111; // mascara para buscar o primeiro byte do respectivo elemento do array

		soma_b = x+get_1b;  // realizo a soma

		get_restb= temp & 0b11111111111111111111111100000000; // mascara para buscar os outros 3 bytes (int tem 4, logo falta os outros 3) 

		int number = get_restb+soma_b;  //junto atravez da soma o 1º byte somado com x com os outros 3 bytes do elemento em questão do array

		*(vec2+i) = number; 
	}
}

