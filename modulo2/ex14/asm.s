.section .data

	base:
		.int 0
	height:
		.int 0
	
	.global base
	.global height
	
.section .text

	.global getArea
	
getArea:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	
	movl height, %ecx
	movl base, %eax

	mull %ecx	# height*base

	# movl $0, %ecx --- useless
	movl $2, %ecx

	divl %ecx   # area / 2
	
	
	
	
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
	
