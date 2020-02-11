.section .data
	.global op1
	.global op2
	op3:
		.int 0
	op4:
		.int 0
	.global op3
	.global op4
.section .text
	.global sum_v3 # int sum_v3(void)

sum_v3:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	
	movl op1, %edx	# places variables in registers
	movl op2, %ecx
	movl op3, %ebx
	movl op4, %eax
	
	addl %ebx, %eax	# add op3 to op4
	subl %ecx, %eax	# sub op2 from op3+op4
	addl %edx, %eax	# add op1 to (op3+op4-op2)
	# eax = op4 + op3 - op2 + op1
	
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
