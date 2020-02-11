#


.section .data
	.global s1
	.global s2
	
.section .text
	.global  crossSumBytes
	
crossSumBytes:

	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movw s1, %ax #move s1 para ax
	movw s2, %cx #move s2 para cx
	
	addb %ch, %al #adiciono a bit mais significativo de s2 ao menos sig de s1
	addb %cl, %ah  #adiciono a bit mais significativo de s1 ao menos sig de s2
	

	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	
	ret
