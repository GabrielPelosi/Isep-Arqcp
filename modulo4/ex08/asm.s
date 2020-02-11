
.section .text
	.global calc
	
calc:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %ebx
	
	movl 8(%ebp), %ebx
	movl 12(%ebp), %eax
	movl 16(%ebp), %edx

	subl %ebx, (%eax)
	movl (%eax), %eax
	imull %edx, %eax
	subl $2, %eax
	
end:
	popl %ebx
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
