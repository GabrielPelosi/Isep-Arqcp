.section .data
	.global A
	.global B

.section .text
	.global  isMultiple
	
isMultiple:

	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl A, %eax
	movl B, %ecx
	cmp $0, %ecx	# compare 0 with B, if equal jump to zero condition
	je zero
	
	xor %edx, %edx	# set edx to 0
	divl %ecx		# divide A for B
	
	cmp $0, %edx	# compare 0 with remainder, if equal, jump to zero condition
	jne zero		
	
	movl $1, %eax	# set eax to 1
	jmp end
	
zero:
	movl $0, %eax	# set eax to 0
	
end:
  
	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	
	ret
