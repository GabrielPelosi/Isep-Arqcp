.section .data

	.global ptrvec
	.global num


.section .text

	.global vec_greater20 # short* int vec_greater20(void)
vec_greater20:
	# prologue

	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function



	movl ptrvec,%eax  	 #movo o endereco do array para eax
	push %ebx
	movl $0,%ebx
ciclo:
	cmpl $0,num      	 #compare para verificar se o array chegou ao fim
	jle terminou_vector  #se num <= 0 o array terminou

	movl (%eax),%ecx 	 # movo a parte mais significativa do elemento em quetao do array( primeiros 32 bits) para ecx


	addl $4,%eax   		 # movo para a parte menos signficativa do numero ( ultimos 32 bits) para edx
	movl (%eax),%edx
	cmpl $20,%ecx 		 # se os 32 mais significativos forem maior que um o numero é maior que 20
	jg maior_20


	cmp $0,%edx 		 # se os numeros, quer nos 32 bits mais e menos significativos, forem maiores que 0 tenho a certeza que é maior que 20
	jg test_ecx
	jmp inc

	
test_ecx:
	cmp $0,%ecx
	jg maior_20
	jmp inc


inc:
	addl $4,%eax 		# movo 4 bytes para a direita para ir ter ao proximo numero
	subl $1,num     	#decremento 1 ao num para quando num = 0 quer dizer que chegou ao fim do vetor
	jmp ciclo




maior_20:
	addl $1,%ebx

	jmp inc


terminou_vector:

	movl %ebx,%eax  	# ponho no registo de retorno
	pop %ebx   			# restauro o valor do registo ebx






	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
