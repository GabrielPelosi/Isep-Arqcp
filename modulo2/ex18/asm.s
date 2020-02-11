.section .data
	.global i
	.global n
	A:
		.int 4
	B:
		.int 2
	
.section .text

	.global somatorio
	
somatorio:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl A, %eax
	cdq
	imull A, %eax
	movl B, %ecx
	idivl %ecx
	movl %eax, %ebx
	movl i, %ecx
	
check:
	cmp n, %ecx
	je end
	incl %ecx
	
loop:
	movl %ecx, %edx
	imull %edx, %edx
	imull %ebx, %edx
	addl %edx, %eax
	jmp check
	
end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
