.section .data

.section .text
	.global  count_even 
count_even:

	#prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %edi
	pushl %ebx
	pushl %esi

	movl 8(%ebp), %edi  #movo o primeiro parametro para edi
	movl 12(%ebp), %ecx  #movo o num de elem para ecx
	movl $0,%eax  # limp o registo eax
	movl $0,%esi  # limpo o registo esi
	movl $2,%ebx   #movo 2 para ebx para verificar os pares com divisoes
	
ciclo_1:
	cmp $0,%ecx  #check se o array acabou
	je end

	movl (%edi),%eax    #movo o valro relativo ao endereco de edi para eax
	cdq  
	idivl %ebx  # divido por 2
	cmpl $0,%edx  # se edx é 0, par encontrado
	je even_found
	
inc:  
	addl $2,%edi
	decl %ecx
	jmp ciclo_1

even_found:

	incl %esi  
	jmp inc

end:
	movl %esi,%eax  

	popl %esi  
	popl %ebx
	popl %edi
	
	#ep
	movl %ebp, %esp
	popl %ebp
	
	ret
