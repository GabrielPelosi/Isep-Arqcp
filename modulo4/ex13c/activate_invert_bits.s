.section .data
.section .text
	.global activate_invert_bits
activate_invert_bits:
	# prologue
	pushl %ebp      	# save previous stack frame pointer
	movl %esp, %ebp  	# the stack frame pointer for sum function
	
	pushl 16(%ebp) #faço esses push para guardar os parametros na stack, caso contrario a fun activete bits n tem acesso aos parametroa
	pushl 12(%ebp)
	pushl 8(%ebp)
	
	call activate_bits
	
	xor $0b11111111111111111111111111111111, %eax
	
	# epilogue
	movl %ebp, %esp     # restore the previous stack pointer ("clear" the stack)
	popl %ebp           # restore the previous stack frame pointer
	ret
