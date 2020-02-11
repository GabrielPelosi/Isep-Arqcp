.section .data

	.global ptr1

.section .text
	.global encrypt
	
encrypt:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	movl $0, %eax
	movl $0, %edx
	movl ptr1, %edx

loop:
	
	movb (%edx), %cl
	cmp $0, %cl
	je end
	
	cmp $32, %cl
	je inc
	
	cmp $97, %cl
	je inc
	
	addb $2, (%edx)
	incl %eax
	
inc:
	incl %edx
	jmp loop
	
end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
