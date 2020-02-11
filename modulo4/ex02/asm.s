
.section .text
	.global sum_n
	
sum_n:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	movl 8(%esp), %ecx
	movl $0, %eax
	cmp $0, %ecx
	jle end
	
loop:
	addl %ecx, %eax
	decl %ecx
	cmp $0, %ecx
	jne loop

end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
