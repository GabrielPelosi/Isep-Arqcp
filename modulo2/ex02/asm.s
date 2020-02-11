.section .data
	.global op1
	.global op2
	
.section .text
	.global sum # int sum(void)

sum:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	
	
	
	movl op1, %ecx #place op1 in ecx
	movl op2, %eax #place op2 in eax
	addl %ecx, %eax #add ecx to eax. Result is in eax
	
	
	
	
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
