.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_zero
	
vec_zero:
	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	movl $0, %eax
	movl ptrvec, %edx
	movl num, %ecx
	
loop:
	cmp $0, %ecx
	je end
	cmpw $100, (%edx)
	jl inc
	movw $0, (%edx)
	incl %eax
	
inc:
	addl $2, %edx
	decl %ecx
	jmp loop
	
end:
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
