
.section .text
	.global sum_smaller
	
sum_smaller:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	movl 8(%esp), %eax
	movl 12(%esp), %ecx
	
	cmp %eax, %ecx
	jl smaller2
	
smaller1:
	movl 16(%ebp), %edx
	movl %eax, (%edx)
	addl %ecx, %eax
	jmp end


smaller2:
	movl 16(%ebp), %edx
	movl %ecx, (%edx)
	addl %ecx, %eax
	
end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
