.section .data
.section .text
	.global nota_final
nota_final:
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx # save de alguns registos na stack caso vá precisar deles
	pushl %esi
	pushl %edi


	movl 8(%ebp),%eax #apontador para a estrutura em eax
	addl $4,%eax # offset 4 dentro da estrutura para ir para a posiçao do vetor notas, ebx fica com o endereço do vector

	movl (%eax),%ebx

	movl $0,%edx #vou usar o edx para ter a soma de todas as notas

	movl $10,%esi # numero de notas em esi

	ciclo_notas:
		cmpl $0,%esi # verifico se chegou ao fim
		je end

		movb (%ebx),%cl #movo uma nota para cl
		andb $0b00001111,%cl #aplico mascara para ter uma das notas
		addb %cl,%dl # somo o resultado no registo dl

		movb (%ebx),%cl #restauro o valor de cl para ter la as 2 notas outra vez

		shrb $4,%cl # faço um shift 4 bits para a direita para passar a nota do bit mais significativo para o lado esquerdo e entram 0 no lado direito, obtendo o valor real da nota
		addb %cl,%dl # somo o resultado no registo bl

		incl %ebx # incremento ebx para ter a proxima posiçao do vetor ciclo_notas
		decl %esi #decremento contador
	jmp ciclo_notas

end:  
	# agora tenho que escrever o valor em dx em notas final na estrutura
	leal 8(%eax),%ebx # ebx agora tem o apontador para nota_final

	movw %dx,(%ebx) #ponho la po valor da soma

	popl %edi
	popl %esi
	popl %ebx

	movl %ebp, %esp
	popl %ebp

	ret
