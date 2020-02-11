.section .data
	.global ptr1
	.global ptr2
	
.section .text
	.global str_copy_porto2

str_copy_porto2:
	
	#prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function



	#pushl %ebx
	pushl %esi
	pushl %edi


	movl	$0,			%eax 	# limpar EAX - contador
	movl 	$0, 		%ecx

	movl 	ptr1,		%esi 	# move o endereco de PTR1 to %esi
	movl 	ptr2,		%edi 	# move o endereco de PTR2 to %edi

start:

	movb	(%esi), 	%cl 	# move a primeira letra de PTR1 to %cl
	movb	%cl, 	(%edi) 		

	cmpb 	$0, 		%cl 	# verifica o fim da string
	je		end_of_function

	cmpb 	$118, 		%cl 	# compare the ASCII 118 (v) com a letra da string
	je 	v_was_found

	cmpb 	$86, 		%cl 	# compare the ASCII 56 (V) com a letra da string
	je 	V_was_found

	movb	%cl, 	(%edi) 		
	jmp 	next_letter


v_was_found:
	movb	$98, 	(%edi)
	jmp 	next_letter

V_was_found:
	movb	$66, 	(%edi)
	jmp 	next_letter

next_letter:
	addl 	$1, 	%esi
	addl 	$1, 	%edi
	jmp start

end_of_function:


	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	# popl %ebx
	######################################################

	# Epilogue
    ########################################
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	########################################


	ret
