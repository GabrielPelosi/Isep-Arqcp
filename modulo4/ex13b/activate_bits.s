.section .data

.section .text
	.global activate_bits

activate_bits:
	# prologue
	pushl %ebp      	
	movl %esp, %ebp

	pushl %ebx

	movl 12(%ebp),%ebx
	movl 16(%ebp),%ecx
	movl $31,%edx

	movl $0,%eax #eax sera a masc

ciclo:
	cmp $0,%edx
	jl end
	shl $1,%eax 

	cmp %ebx,%edx
	jg put_1
	jle check_right

dec_count:
	subl $1,%edx
	jmp ciclo


put_1:
	incl %eax
	jmp dec_count
	

check_right:
	cmp %ecx,%edx
	jl put_1
	jmp dec_count


end:

	movl 8(%ebp),%ecx #ja nao preciso do valor antigo em ecx, vou meter o numero em ecx e fazer um or com a mascara em eax

	or %ecx,%eax  #or para ativar os bits

	popl %ebx
	# epilogue
	movl %ebp, %esp     # restore the previous stack pointer ("clear" the stack)
	popl %ebp           # restore the previous stack frame pointer
	ret
