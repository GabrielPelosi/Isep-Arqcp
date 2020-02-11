.section .data


.section .text

	.global update_grades
	
	
update_grades:

	#porlogue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function	
	
	
	pushl %ebx
	pushl %esi
	pushl %edi
	
	
	movl $0, %eax #ira guardar o apontador da estrutura
	movl $0, %ecx #ira guardas o apontador do array
	movl $0, %ebx #ira guardar o tamanho do array grades
	
	
	movl 8(%ebp), %eax #apontador da estutura
	movl 12(%ebp), %ecx #segundo parametro para ecx
	
	movl $0, %ebx #contador array grades
	
	loop:
		cmp $10, %ebx
		je end
		
 		leal 4(%eax,%ebx,4), %esi #indexo em esi o endereco dento da estutura de cada posicao do array de notas(ebx =0, primeira pos, ebx = 1 seg pos)
 		
		movl (%ecx), %edx #movo o respectivo valor do apontador guardado em ecx para edx(elemtno do array novo)
		
		movl %edx, (%esi) #movo o valor de edx para o respectivo valor do apontador de esi(array dentro da estutura)
		
		addl $4, %ecx
		
		incl %ebx
		
		jmp loop
	
end:

	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer


	ret
