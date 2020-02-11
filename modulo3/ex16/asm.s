.section .data
	.global ptr1
	.global ptr2
	.global num
	
.section .text
	.global swap
	
swap:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	pushl %esi
	pushl %ebx

	movl $0, %esi
	movl $0, %eax
	movl $0, %ebx 
	movl ptr1, %ecx
	movl ptr2, %edx

loop:
	cmp num, %esi
	je end
	
	movb (%ecx), %al
	movb (%edx), %bl
	movb %bl, (%ecx)
	movb %al, (%edx)
	
	incl %ecx
	incl %edx
	incl %esi
	jmp loop
	
end:
	popl %ebx
	popl %esi
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer

	ret
