.section .data
	.global num
	
.section .text

	.global steps
	
steps:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl $0, %edx	# sets edx to 0
	movl num, %eax	
	cdq				# converts double to quad eax -> edx:eax
	
	imull $3, %eax	# operations from exercise |
	addl $6, %eax	#						   V
	movl $3, %ecx
	cdq				# converts double to quad ecx
	idivl %ecx
	addl $12, %eax
	subl num, %eax
	subl $1, %eax	# operations end here	   _
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
