.section .text
	.global vec_count_bits_zero

# detects if two strings are equal. If the strings are equal, the function should return 1, or 0 otherwise.

vec_count_bits_zero:
	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %ebx
	pushl %esi
	pushl %edi

	movl 8(%ebp), %ebx
	movl 12(%ebp), %ecx
	movl $0, %eax

	cmpl $0, %ecx			# checks if array is empty
	je end

loop:
	movl (%ebx), %edx		# moves value in position to edx
	pushl %ebx				# stores values used in stack
	pushl %ecx
	pushl %edx
	pushl %eax
	pushl %edx				# pushes parameter to stack
	
	call count_bits_zero	# call function
	movl %eax, %esi			# stores returned value (numBits) to pop original values
	
	popl %edx				# restore values
	popl %eax
	popl %edx
	popl %ecx
	popl %ebx

	addl %esi, %eax			# add numBits to sum

	addl $4, %ebx			# get next position in array
	loop loop

end:
	popl %edi
	popl %esi
	popl %ebx
	
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
