.section .data
	.global code
	.global currentSalary

.section .text

	.global new_salary
	
new_salary:

	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl	currentSalary,	%eax	 # move atual salario para eax
	movl	code, 			%ecx     #move codigo para ecx

	cmpl	$10, 			%ecx     #compara o codigo com 10
	je		position_10				 #se for igual, pula para "position_10"					
	
	cmpl	$11, 			%ecx     #compara o codigo com 11
	je		position_11				 #se for igual, pula para "position_11"	
	
	cmpl	$12, 			%ecx     #compara o codigo com 12
	je		position_12				 #se for igual, pula para "position_12"	
	
	addl 	$100,			%eax 	 #caso seja um outro codigo qualquer, diferente dos comparados acima, o aumento é apenas de 100
	jmp end_of_salary

	position_10:

	addl 	$300,			%eax     #adiciona 300 ao salario
	jmp end_of_salary

	position_11:

	addl 	$250,			%eax	 #adiciona 250 ao salario
	jmp end_of_salary

	position_12:

	addl 	$150,			%eax	 #adiciona 150 ao salario
	jmp end_of_salary

	end_of_salary:

	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer


	ret
