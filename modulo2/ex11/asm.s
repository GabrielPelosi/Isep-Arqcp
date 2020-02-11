
.section .data

	.global op1 #int
	.global op2 #int

.section .text
	.global test_flags
	
test_flags:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function

	movl op1, %ecx          #mover valor op1 para o regsitro ecx
	movl op2, %eax          #mover op2 para o registro eax

	addl %ecx, %eax         #adicionar ecx com eax e mater o resultado em eax

	jc returnIfCarry        #pular para returnIfCarry caso carry seja ativado
	jo returnIfOverFlow     #pular para returnIfOverFlow caso overflow seja ativado
	movl $0, %eax			#move 0 para eax caso nem carry nem overflow seja ativado
	jmp end


	returnIfCarry:
	movl $1, %eax #move 1 para eax para retornar verdade, pois foi ativado carry
	jmp end

	returnIfOverFlow:
	movl $1, %eax #move 1 para eax para retornar verdadeiro, pois foi acionado overflow
	jmp end

end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
