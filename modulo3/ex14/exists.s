.section .data
	.global x
	.global ptrvec
	.global num
	
.section .text
	.global exists
	
exists:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	pushl %ebx

	movw x, %bx 
	movl $0, %edx
	movl ptrvec, %ecx
	movl $0, %eax

loop:
	cmp num, %edx
	je vec_end

	cmpw (%ecx), %bx
	je yes
	jmp inc
	
yes:
	incl %eax
	
inc:
	addl $2, %ecx
	incl %edx
	jmp loop
	jmp loop

vec_end:
	cmpl $1, %eax
	jg dup 
	movl $0, %eax
	jmp end

dup:

	movl $1, %eax

end:
	popl %ebx

	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer

	ret
