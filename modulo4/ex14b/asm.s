.section .text
	.global join_bits
	
join_bits:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl 8(%ebp), %ebx		# a to ebx
	movl 12(%ebp), %edi		# b to edi
	movb 16(%ebp), %cl		# pos to cl
	movl $-1, %edx			# fill register with 1s
	movl $0, %esi
	
	movl %ebx, %eax
	
	cmpb $31, %cl			# if position to change is 31, jump to end
	jge end

	incb %cl				# shift the mask pos+1, 
	shl %cl, %edx
	
	movl %edx, %esi			# puts mask in ESI
	andl %edi, %esi			# AND b and the mask

	movl $-1, %eax			# new mask
	xorl %edx, %eax			# XOR bMask with new mask to create aMask
	andl %ebx, %eax			# and aMask with a

end:
	or %esi, %eax			# or both variables with mask applied

	popl %edi
	popl %esi
	popl %ebx
		
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret

