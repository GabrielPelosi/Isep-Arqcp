.section .data
	.global i
	.global j
	
.section .text

	.global f
	.global f2
	.global f3
	.global f4
	
# ------------------------------------------------------------------
	
f:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl i, %eax
	cdq
	cmp j, %eax
	je condf
	
	addl j, %eax
	subl $1, %eax
	
	jmp end
	
condf:
	subl j, %eax
	addl $1, %eax
	jmp end
	
# ------------------------------------------------------------------

f2:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl i, %eax
	cdq
	cmp j, %eax
	jg condf2
	
	movl j, %eax
	addl $1, %eax
	imull i, %eax
	jmp end
	
condf2:
	subl $1, %eax
	imull j, %eax
	cdq
	jmp end

# ------------------------------------------------------------------

f3:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl i, %eax
	cdq
	cmp %eax, j
	jge condf3
	
	addl j, %eax
	addl $2, %eax
	movl j, %ecx
	addl i, %ecx
	cdq
	idivl %ecx
	jmp end
	
condf3:
	addl $1, %eax
	movl j, %ecx
	imull i, %ecx
	cdq
	idivl %ecx
	jmp end
	
# ------------------------------------------------------------------
	
f4:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl $0, %edx
	movl i, %ecx
	cdq
	addl j, %ecx
	cmp $10, %ecx
	jg condf4
	
	movl j, %eax
	cdq
	imull j, %eax
	movl $3, %ecx
	idiv %ecx
	
	jmp end
	
condf4:
	movl i, %eax
	cdq
	imull i, %eax
	imull $4, %eax
	
	
# ------------------------------------------------------------------	

end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
