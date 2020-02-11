.section . data

.section .text

	.global qualificados
	
qualificados:


	#
	pushl %ebp
	movl %esp, %ebp
	
	pushl %ebx #oush de alguns registos na stack caso precise deles
	pushl %esi
	pushl %edi
	
	subl $8, %esp #caso precise de varieves locais
end:



	popl %edi
	popl %esi
	popl %ebx
	
	#
	movl %ebp, %esp
	popl %ebp
	
	ret
