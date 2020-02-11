
.section .data

	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto
	
str_copy_porto:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function



	movl $0, %edx
	movl $0, %ecx
	movl ptr1, %edx
	movl ptr2, %ecx


string_loop:
	movb (%edx), %al
	movb %al, (%ecx)
	cmp $0, %al
	je end

	cmp $118, %al
	je troca

inc:
	incl %edx
	incl %ecx
	jmp string_loop

troca:

	movb $98, (%ecx)
	jmp inc


end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
