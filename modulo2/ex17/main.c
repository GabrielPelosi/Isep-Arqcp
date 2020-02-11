

#include <stdio.h>
#include "asm.h"


int number1;
int number2;

int main(void){
 	//sum, subtraction, multiplication, division, modulus, powers of 2 and 3. 
	int result;
	char operand;
	_Bool error;
	error=1;

	
	do{
		printf("%s\n", "Qual operacao deseja realizar?");
		printf("%s\n", "introduza + for soma\n- para subtrair\n* para multiplicar\n/ para dividir\n% para modulo\n^ para powers");

		scanf(" %c", &operand);
		switch(operand){
			case '+':
			printf("%s\n", "Primeiro numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number1);
			printf("%s\n", "Segundo numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number2);
			result=sum();
			printf("%d+%d=%d\n", number1, number2, result);
			error=0;
			break;

			case '-':
			printf("%s\n", "Primeiro numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number1);
			printf("%s\n", "Segundo numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number2);
			result=subtract();
			printf("%d-%d=%d\n", number1, number2, result);
			error=0;
			break;

			case '*':
			printf("%s\n", "Primeiro numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number1);
			printf("%s\n", "Segundo numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number2);
			result=multiplication();
			printf("%d*%d=%d\n", number1, number2, result);
			error=0;
			break;

			case '/':
			printf("%s\n", "Primeiro numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number1);
			printf("%s\n", "Segundo numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number2);
			result=division();
			printf("%d/%d=%d\n", number1, number2, result);
			error=0;
			break;

			case '%':
			printf("%s\n", "Primeiro numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number1);
			printf("%s\n", "Segundo numero da operacao? Qualquer letra/simbolo sera interpretada com 0");
			scanf("%d", &number2);
			result=modulo();
			printf("%dMOD%d=%d\n", number1, number2, result);
			error=0;
			break;

			case '^':
			printf("%s\n", "Power 2 ou 3?");
			scanf("%d", &number2);
				switch(number2){
					case 2:
					printf("%s\n", "Introduza um numero");
					scanf("%d", &number1);	
					result=powerOfTwo();
					printf("%d^2=%d\n", number1, result);
					error=0;
					break;

					case 3:
					printf("%s\n", "Introduza um numero");
					scanf("%d", &number1);
					result=powerOfThree();
					printf("%d^3=%d\n", number1, result);
					error=0;
					break;

					default: 
					printf("%s\n", "numero invalido");
					break;
				}
			break;
			default: 
			printf("%s\n", "NOperador invalido. Introduza novamente\n\n");
			break;	
		}
    }while(1==error);
	

 	return 0;
}
