.section .data
	.global prtvec
	.global num
	
.section .text
	.global vec_sum
	
vec_sum:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	##
	pushl %ebx
	pushl %esi
	##
	
	movl $0, %eax #limpa o registro eax
	movl $0, %ecx #limpa o registro ecx
	
	movl ptrvec, %esi
	movl num, %ebx
	movl $0, %eax
	movl $0, %edx
	cmpl $0, %ebx
	je end

sum_number:
	movl (%esi), %ecx
	addl %ecx, %eax
	decl %ebx
	addl $4, %esi	
	cmpl $0, %ebx
	je end
	jmp sum_number
	
	
end:
	
	##Restore Regsiters
	popl %esi
	popl %ebx
	##
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret




