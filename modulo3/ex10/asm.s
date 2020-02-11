.section .data
	.global ptr1
	.global ptr2
	.global ptr3
	
.section .text
	.global str_cat	
	
str_cat:
	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	movl $0, %edx
	movl $0, %ecx
	movl ptr1, %edx
	movl ptr3, %ecx

loop_one:
	movb (%edx), %al
	movb %al, (%ecx)
	cmp $0, %al
	je end_loop_one
	
	incl %edx
	incl %ecx
	jmp loop_one

end_loop_one: 
	movl ptr2, %edx

loop_two:
	movb (%edx), %al
	movb %al, (%ecx)
	cmp $0, %al
	je end
	
	incl %edx
	incl %ecx
	jmp loop_two

end:

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
