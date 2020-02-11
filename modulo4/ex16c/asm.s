.section .text
	.global changes
	
changes:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %ebx
	pushl %esi

	movl 8(%ebp), %eax
	movb $20, %cl
	movl $15, %ebx

	shll %cl, %ebx			# shift mask to most significant 4 bits of 3rd byte

	movl (%eax), %esi
	andl %ebx, %esi
	shrl %cl, %esi

	cmpl $7, %esi
	jg condition
	jmp end

condition:
	xorl %ebx, (%eax)		# xor cond
	
end:
	popl %esi
	popl %ebx
		
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret

