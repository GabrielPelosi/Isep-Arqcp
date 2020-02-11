.section .data
	.global ptr

.section .text
	.global encrypt #int


#adds two (2) to all the elements of an array of integers, with num elements and pointed by ptrvec.

encrypt:


	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl ptr1, %edx
	movl $0, %ecx
	movl $0, %eax

add_two:
		movb (%edx), %cl 
		cmpb $0, %cl
		je end
		
		cmpb $32, %cl
		je increment
		
		cmpb $97, %cl
		je increment
		
		addl $2, (%edx)
		incl %eax

increment:
		incl %edx
		jmp add_two


end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
