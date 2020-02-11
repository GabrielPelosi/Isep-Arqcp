.section .text
	.global activate_2bits
	
activate_2bits:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	movl 8(%ebp), %edx
	movl 12(%ebp), %ecx
	
	pushl %ecx
	pushl %edx
	
	call activate_bit

	popl %edx	
	popl %ecx
	
	movl $31, %eax
	subl %ecx, %eax
	
	pushl %eax
	pushl %edx
	
	call activate_bit
	
	popl %edx
	popl %eax
	
	
end:
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret

