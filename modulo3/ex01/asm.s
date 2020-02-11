.section .data
	.global ptr1

.section .text
	.global zero_count

zero_count:
	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movl $0, %eax	   #clean eax
	movl $0, %edx
	movl ptr1, %edx
	
string_loop:
	movb (%edx), %cl
	cmp $0, %cl
	je end_loop
	
	cmp $48, %cl
	je find_zero
	
	
	incl %edx
	jmp string_loop
	
	
find_zero:
	incl %eax
	incl %edx
	jmp string_loop
	
	
end_loop:
	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	
	
	ret
