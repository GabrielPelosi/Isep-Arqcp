.section .text
	.global mixed_sum
	
mixed_sum:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %ebx
	pushl %esi
	pushl %edi

	movl 8(%ebp), %ebx		# a
	movl 12(%ebp), %edi 	# b
	movl 16(%ebp), %esi		# pos
	
	pushl %esi				# store var in stack in order
	pushl %edi	
	pushl %ebx

	call join_bits			# CALL THE FUNCTION
	addl $12, %esp			# CLEAR THE STACK

	movl %eax, %edx			# store res

	pushl %edx

	pushl %esi				# store var in stack in order
	pushl %ebx
	push %edi

	call join_bits			# CALL THE FUNCTION
	addl $12, %esp			# CLEAR THE STACK

	popl %edx

	addl %edx, %eax 		# sum both results

	popl %edi
	popl %esi
	popl %ebx
		
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret

