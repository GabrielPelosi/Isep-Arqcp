.section .data

.section .text
	.global calculate 	
	.global print_result 	
calculate:
	
	#Prologue
	pushl %ebp 		#save previous stack frame pointer
	movl %esp, %ebp #the stack frame pointer for sum function
	
	subl $8, %esp#abro 8 bytes de espaco na stack
	
	pushl %ebx
	pushl %esi
	pushl %edi

	
	#Parametros
	movl 8(%ebp), %esi 	#int a = 2
	movl 12(%ebp), %edi #int b = 4;


	#limpar registos para evitar erros
	movl $0, %eax
	movl $0, %ebx
	movl $0, %ecx
	movl $0, %edx
	
	#variaveis
	#a = %esi
	#b = %edi
	#sum = %ebx
	#product = %ecx
	#

	
	# soma=a+b 
	movl %esi, %ebx
	addl %edi, %ebx
	movl %ebx, -4(%ebp)  	# soma ebx = a+b;
	 

	#produto=a*b
	movl %esi, %ebx
	imull %edi, %ebx
	movl %ebx,-8(%ebp) #produto - esi= a*b


	pushl -4(%ebp) 	# quarto oaraemtro (sum)
	pushl %edi 		# terceiro parametro (b)
	pushl %esi		# segundo parametro (a)
	pushl $43 		# primeiro parametro (ASCII: +)


	#print_result(’+’, a, b, sum);
	call print_result


	addl $4 , %esp #limpa os parametos da stack
	addl $4 , %esp #limpa os parametos da stack
	addl $4 , %esp #limpa os parametos da stack
	addl $4 , %esp #limpa os parametos da stack



	pushl -8(%ebp) 	#quarto(product)
	pushl %edi 		#terceiro (b)
	pushl %esi		#segundo (a)
	pushl $42 		#primeiro(ASCII: *)


	#chama func print_result(’*’, a, b, product);
	call print_result


	addl $4 , %esp #limpa os parametos da stack
	addl $4 , %esp #limpa os parametos da stack
	addl $4 , %esp # limpa os parametos da stack
	addl $4 , %esp #limpa os parametos da stack



	#return (a+b)-(a*b);
	# movo a soma para eax 
	movl -4(%ebp), %eax


	subl -8(%ebp), %eax

	popl %edi
	popl %esi
	popl %ebx
	
	#Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer


	ret
