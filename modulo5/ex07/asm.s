.section .data



.section .text
	.global fill_s1
	
fill_s1:

	#porlogue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	pushl %ebx

	
	movl 8(%ebp), %eax #apontador da estrutura
	
	movl 12(%ebp), %ebx #movo o valor de "vi" para edx
	
	
	movl %ebx, (%eax)  #movo o valor vi recebido por parametro para o primeiro valor
	
	
	
	addl $4, %eax
	
	movb 16(%ebp), %bl
	
	movb %bl, (%eax)
	
	
	#ando para ao atibuto char
	addl $1, %eax
	
	movl 20(%ebp), %edx #busc o valor de vc passado por parametro
	
	movl %edx, (%eax) #movo o valor de vc para o respecivo valor do apontador da estrutura
	
	add $4, %eax
	
	movb 24(%ebp), %bl #busc o valor de vc passado por parametro
	
	movb %bl, (%eax)
	

	

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp
	
	popl %ebx
		
	ret
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
