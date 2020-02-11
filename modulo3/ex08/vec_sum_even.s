.section .data
	.global num
	.global ptrvec

.section .text
	.global vec_sum_even	
	
vec_sum_even:
	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	push %ebx

	movl ptrvec, %ecx
	movl num, %edx
	movl $0, %ebx

loop:
	cmp $0, %edx
	je end
	
	movl (%ecx), %eax 
	movl %eax, even
	
	call test_even
	
	cmp $0, %eax
	je next
	
	addl (%ecx), %ebx
	
next:
	addl $4, %ecx
	decl %edx
	jmp loop
	
end:
	movl %ebx, %eax
	
	pop %ebx
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
