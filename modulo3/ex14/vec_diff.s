.section .data
	.global ptrvec
	
.section .text
	.global vec_diff
	
vec_diff:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	pushl %ebx

	movl $0, %eax 
	movl ptrvec, %ecx
	movl $0, %edx

loop:
	cmp num, %edx
	je end

	pushl %edx
	pushl %ecx
	pushl %eax

	movw (%ecx), %dx
	movw %dx, x
	call exists

	cmp $0, %eax
	je not_dup

	popl %eax
	popl %ecx
	popl %edx

	incl %edx
	addl $2, %ecx
	jmp loop



not_dup:
	popl %eax
	popl %ecx
	popl %edx
	
	incl %eax
	incl %edx
	addl $2, %ecx
	jmp loop

end:
	popl %ebx

	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer

	ret
