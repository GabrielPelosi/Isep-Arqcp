.section .data
	.global even

.section .text
	.global test_even
	
test_even:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function

	movl even, %eax
	andl $1, %eax
	jz par
	
	movl $0, %eax
	jmp end
	
par:
	movl $1, %eax
	jmp end

end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
