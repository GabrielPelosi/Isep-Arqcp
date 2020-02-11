.section .data
	.global current #short
	.global desired #shoty

.section .text
	.global needed_time

needed_time:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function


	movl $0, %eax #limpa eax
	movl $0, %ecx #limpa ecx
	
	movw current, %ax #move valor de current para ax
	movw desired, %cx #move o valor de desired para cx
	
	
	cmpw %cx, %ax
	jg timeForDecrasing  #se a temperatura atual for maior que a temperatura desejada
	jl timeForIncreasing #se a temperatura atual for menor que a temperatura desejada
	je noChange

	timeForIncreasing:
		subw %ax, %cx  #subtrai ax de cx e guarda o resutlado em cx
		
		movw %cx, %ax  #move cx para ax
		
		imulw $2, %ax  #multiplica ax por 2 para encontrar o tempo necessario para aumentar a temperatura
		
		jmp end

	timeForDecrasing:
		subw %cx, %ax  #subtrai cx de ax e guarda em ax
		
		imulw $3, %ax  #multiplica o resultado por 3 para encontrar o tempo necessario para aumentar a temperatura
		
		jmp end
		
	noChange:
		movl $0, %eax  #retorna 0 seg pois não há mudnaca de temperatura
		jmp end


	end:

		# epilogue
		movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
		popl %ebp        #  restore the previous stack frame pointer
		ret
	
