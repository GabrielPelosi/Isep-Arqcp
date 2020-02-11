
.section .data




.section .text

	.global melhor_vinho

melhor_vinho:


	pushl %ebp
	movl %esp, %ebp



	pushl %ebx # save de alguns registos na stack
	pushl %esi
	pushl %edi
	subl $4, %esp #guardo espçao para uma variavel local na stack

	movl $0,%edi


	movl 8(%ebp),%eax # apontador para as estruturas em eax
	movl 12(%ebp),%ebx # numero de estruturas (vinhos)

	movl $0,%ecx
	ciclo:
		cmp %ebx,%ecx # comparo o contador com o numero de vinhos, quando for igual salto para o end, neste caso tenho 3 vinhos o ciclo vai ser iterado 3 vezes
		je end

		pushl %eax #guardar os valores que presiso para esta funçao
		pushl %ebx
		pushl %ecx

		pushl %eax # quero passar como parametro um apontador para uma estrutura para a funçao anterior
		call nota_final
		addl $4,%esp #limpo a stack

		popl %ecx # restauro os valores
		popl %ebx
		popl %eax

		jmp verifica_maior

	inc_1:
		addl $4,%eax
		incl %ecx #incremento o contador que tambem me serve para o offset
		jmp ciclo

	verifica_maior:
		movl (%eax),%edx
		addl $8,%edx # obter a nota final dentro da estrutura em que estou

		cmpw %dx,%si  # comparo a nota final do voinho com o valor em si
		jg inc_1 # se em esi ja tiver uma nota maior saltto para o incrementador do ciclo_1 para testar o proximo vinho
		# se nao guardo esse vinho e o valor da sua nota

		movw %dx,%si # ponho em si a nota do vinho se este tiver uma maior nota

		movl %eax,-4(%ebp) # guardo o apontador na stack da estrutura com o vinho mais avaliado

	jmp inc_1


end:
	movl -4(%ebp),%eax # ponho em eax o retorno (endereço do nome do vinho da estrutura com o vinho melhor classificado)

	popl %edi
	popl %esi
	popl %ebx

	movl %ebp, %esp
	popl %ebp

	ret
