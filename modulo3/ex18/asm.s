.section .data
	.global ptrsrc
	.global num
	.global ptrdest
	
.section .text
	.global sort_without_reps
	
sort_without_reps:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl $0, %eax
	movl ptrsrc, %esi
	movl ptrdest, %edi
	movl num, %ecx

repeated:
	movw (%esi), 

	
end:
	
	popl %edi
	popl %esi
	popl %ebx
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer

	ret
