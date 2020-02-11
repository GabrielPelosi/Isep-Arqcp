.section .data

	.global ptrvec
	.global num

.section .text
	.global vec_add_one
	
vec_add_one:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function

	movl $0, %eax
	movl $0, %edx
	movl ptrvec, %eax

loop:
	cmp num, %edx
	je end

	incl (%eax)
	addl $4, %eax
	incl %edx

	jmp loop


end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
