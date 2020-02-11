.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text

	.global compute
	
compute:
#   ((A * B) + C) / D (all 32-bit variables)

   
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	

	movl A, %eax #move valor de A para eax
	movl B, %ecx #move o valor de B para ecx
	
	imull %ecx, %eax #multiplicar B * A e guardar no regsitro A
	
	movl $0 , %ecx # limpar o registro ecx
	movl C , %ecx # guardar C no registro ecx
	
	addl %ecx, %eax # adicionar C no resultado de (A*B) 
	
	movl $0 , %ecx #limpar o regsitro ecx
	movl D, %ecx #mover D para o registro ecx
	
	
	cmpl $0, %ecx #compara ecx com zero, para evitar divisoes por 0
	je jump_is_equal   #pula para jump_is_equal se for igual a 0
	jl jump_is_less    #pula para jump_is_less se for menor que 0
	jg jump_is_greater #pula para jump_is_greater se for maior que 0
	
jump_is_equal:
	movl $0, %eax #move 0 em eax, pois n há divisao por 0
	jmp end
	
jump_is_greater:
	movl $0, %edx     #limpa o registro edx
	cdq               #aumenta o tamanho do registro eax para 64 bit
	idivl %ecx, %eax  #divide ecx por eax e guarda o valor em eax
	jmp end
jump_is_less:
	movl $0, %edx     #limpa o registro edx
	cdq               #aumenta o tamanho do registro eax para 64 bit
	idivl %ecx, %eax  #divide ecx por eax e guarda o valor em eax
	
end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
	
