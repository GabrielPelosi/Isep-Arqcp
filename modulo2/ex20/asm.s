.section .data
	.global num
	
.section .text

	.global check_num
	
check_num:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	
	movl num, %eax
	cdq
	movl $2, %ecx
	idivl %ecx		# used ebx in final commit (SEGMENTATION FAULT ERROR)
	cmp $0, %edx	# compare 0 with remainder, if equal jump to par condition
	je par
	
	
	cmp $0, num		# compare 0 with num
	js imp_neg		# if signed, jump to imp_neg (impar, negativo)
	
	movl $4, %eax	# set return value to 4
	jmp end
	
par:
	cmp $0, num		# compare 0 with num
	js par_neg		# if signed, jump to par_neg (par, negativo)
	movl $3, %eax	# set return value to 3
	jmp end

imp_neg:
	movl $2, %eax	# set return value to 2
	jmp end

par_neg:
	movl $1, %eax	# set return value to 1

end:
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
