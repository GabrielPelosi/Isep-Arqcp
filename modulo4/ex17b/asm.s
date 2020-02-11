.section .data
.section .text
	.global add_byte
	
add_byte:

	# prologue 
	pushl %ebp # save previous stack frame pointer 
	movl %esp, %ebp # the stack frame pointer for sum function
	
	pushl %ebx 
	pushl %esi 
	pushl %edi
	
	movl $0, %eax
	movl $0, %ecx
	
	
	movl 8(%ebp), %ebx  #ebx é o x
	movl 12(%ebp), %esi  #esi apontador do array com os elementos a serem somados
	movl 16(%ebp), %edi # edi apontador do array q guardara o valor das somas
	
	movl (%esi) , %ecx #movo o primeiro elem de array1, o num de elemen do array
	addl $4, %esi #ando para o 2º elem
	
	loop:
		cmp $0, %ecx #verifico se o array acabou
		je end
		
		movl (%esi), %eax
		
		andl $0b00000000000000000000000011111111, %eax
		
		addl %ebx, %eax

		pushl %ebx #movo x para a stack, n vou mais utiliza-lo dps dessa linha
		
		movl (%esi), %ebx
		andl $0b11111111111111111111111100000000, %ebx
		
		addl %ebx, %eax
		
		movl %eax, (%edi)
		
		popl %ebx
		
		addl $4, %esi
		addl $4, %edi
		decl %ecx
		
		jmp loop
		
		
end:

	movl $0, %eax
	
	popl %ebx 
	popl %esi 
	popl %edi
	
	# epilogue
	movl %ebp, %esp     # restore the previous stack pointer ("clear" the stack)
	popl %ebp           # restore the previous stack frame pointer
	ret


	
	
	
	
	
	
	
	
	
