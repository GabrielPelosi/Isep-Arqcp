.section .text
	.global count_bits_zero
	
count_bits_zero:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %ebx
	
	movl $0, %eax
	movb $32, %cl
	movl 8(%ebp), %ebx
	
loop:
	movl %ebx, %edx			
	sar %cl, %edx			# shifts bit to the right to read the next bit
	
	andl $1, %edx			# ANDS 1 and the bit, if(bit=0) -> then (0=%edx)
	
	cmpl $0, %edx			# checks if %edx is zero and increments if it is
	jne not_zero
	incl %eax
	
not_zero:
	decb %cl
	cmpb $0, %cl
	jne loop
	
end:
	popl %ebx
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret

