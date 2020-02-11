.section .text
	.global activate_bit
	
activate_bit:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %esi
	pushl %edi
	pushl %ebx

	movl $1, %ebx
	movl 8(%ebp), %esi
	mov 12(%ebp), %cl
	
	movl (%esi), %edx
	sal %cl, %ebx			# shifts %cl times %ebx to the left (1->1(0)*%cl)
	
	or %ebx, (%esi)			# or the altered number and mask created
	
	cmp (%esi), %edx		# compares number with previous version
	je equal
	
	movl $1, %eax			# sets return value to 1 if numbers in compare are different
	jmp end
	
equal:
	movl $0, %eax			# sets return value to 0 if numbers in compare are equal
end:
	
	popl %ebx
	popl %edi
	popl %esi
	
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret

