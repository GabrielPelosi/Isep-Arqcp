.section .data

	.global num
	.global ptrvec

.section .text 

	.global keep_positives

keep_positives:
	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	pushl %ebx
	pushl %esi
	pushl %edi

	movl num, %edx
	movl $0, %ecx
	movl ptrvec, %esi
	
start_loop:
	cmpl %edx, %ecx

	je end_loop

	movl (%esi), %edi

	cmpl  $0, %edi
	jge next_number
	movl %ecx, (%esi)
	
next_number:
	addl $4, 	%esi
	incl %ecx
	jmp start_loop

end_loop:
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer


	ret
