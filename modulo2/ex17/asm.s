.section .data
	.global number1
	.global	number2




.section .text

	.global sum
	.global subtract
	.global multiplication
	.global division
	.global modulo
	.global powerOfTwo
	.global powerOfThree


sum:
	
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	movl number1,%eax 
	movl number2,%ecx
	
	addl %ecx,%eax
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	
	ret
	
subtract:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	movl number1,%eax 
	movl number2,%ecx
	
	subl %ecx,%eax
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	
	ret
	
multiplication:



	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl $0, %eax
	cdq
	movl $0, %ecx
	movl $0, %edx
	
	movl number1,%eax 
	movl number2,%ecx
	
	imull %ecx
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	
	ret
	
	
division:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl $0, %eax
	cdq
	movl $0, %ecx
	movl $0, %edx
	
	movl number1, %eax;
	movl number2, %ecx;
	idivl %ecx, %eax
	
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	
	ret
	
modulo:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	movl number1, %eax;
	movl number2, %ecx;
	
	idivl %ecx, %eax
	
	movl $0, %eax
	movl %edx, %eax
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	
	ret
	
powerOfTwo:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	movl number1,%eax 
	movl number2,%ecx
	
	imull %ecx, %eax
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	
	ret
	
powerOfThree:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	movl number1,%eax 
	movl number2,%ecx
	
	imull %ecx, %eax
	imull %ecx, %eax
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	
	ret
	
	
	
	
	
	
	
	
	
	
	
	
