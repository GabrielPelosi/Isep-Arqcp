.section .data
	.global base
	.global height
	
.section .text

	.global getArea
	
getArea:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	
	movl height, %ecx #move altura para ecx
	movl base, %eax   #move base para eax

	mull %ecx	#height*base

	movl $0, %ecx # move 0 para ecx, limpa o registro
	movl $2, %ecx #move 2 para ecx

	divl %ecx   #valor da base * altura a dividir por 2 | (area triangulo)
	
	
	
	
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
	
