.section .data

.section .text

	.global melhor_tempo
	
melhor_tempo:

	#
	pushl %ebp
	movl %esp, %ebp
	
	pushl %ebx #oush de alguns registos na stack caso precise deles
	pushl %esi
	pushl %edi	
	
	
	movl 8(%ebp), %eax #movo o primeiro e unico parametro passado para eax
	
	movl 6(%eax), %esi #busco o numero de provas para ter um contador para o loop
	
	addl $8, %eax  #off set para chegar no endereco do vetor de resultados
	
	movl (%eax), %ecx 
	
	movl $0, %edi #guardara o maior tempo
	
	movl $0, %edx
	
	imull $2, %esi #será meu contador ate 0
	
loop1:	
	movl %esi, %eax
	cmp $0, %eax
	je end
	
	movw (%ecx), %bx #movo o primeiro short para bx
	incl %ecx
	
	movw(%ecx), %dx #movo o seg para dx
	incl %ecx
		
	subw %bx, %dx 
	
	subl $2, %esi #contador para o loop2
	subl $1, %eax #contador para o loop1
	
	loop2:
		cmp $0, %esi
		je end
		
		pushl %eax
		pusl %ebx
		
		movw (%ecx), %ax #movo o primeiro short para bx
		incl %ecx
	
		movw(%ecx), %bx #movo o seg para dx
		incl %ecx
		
		subw %ax, %bx
		
		
		cmp %bx, %dx 
		jg maior_tempo
		je menor_ou_igual_tempo
		jl menor_ou_igual_tempo
		
		jmp loop2
		
	maior_tempo:
		movw %dx, %edi
		popl %eax
		popl %ebx
		jmp loop2
	
	menor_ou_igual_tempo:
		
		popl %eax
		popl %ebx
		jmp loop2
		
end:	


	popl %edi
	popl %esi
	popl %ebx
	
	#
	movl %ebp, %esp
	popl %ebp

	ret
