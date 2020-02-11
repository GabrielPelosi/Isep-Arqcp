.section .text
	.global changes_vec
	
changes_vec:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %ebx
	
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ecx
	
	cmpl $0, %ecx			# checks if array is empty
	je end
	
loop:
	movl (%ebx), %edx
	
	pushl %ecx
	pushl %ebx
	
	call changes
	
	popl %ebx
	popl %ecx
	
	addl $4, %ebx
	loop loop

end:
	popl %ebx
		
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
