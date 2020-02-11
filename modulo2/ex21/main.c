


#include <stdio.h>
#include "asm.h"

int code;
int currentSalary;

int main(void) {

	code=10;
	currentSalary=600;
	printf("Salary is %d, code is %d\n", currentSalary, code);
	int resultado = new_salary();
	printf("new_salary() = %d\n\n", resultado);

	code=11;
	currentSalary=500;
	printf("Salary is %d, code is %d\n", currentSalary, code);
	resultado = new_salary();
	printf("new_salary() = %d\n\n", resultado);

	code=12;
	currentSalary=400;
	printf("Salary is %d, code is %d\n", currentSalary, code);
	resultado = new_salary();
	printf("new_salary() = %d\n\n", resultado);

	code=1435;
	currentSalary=300;
	printf("Salary is %d, code is %d\n", currentSalary, code);
	resultado = new_salary();
	printf("new_salary() = %d\n\n", resultado);

	return 0;

}
