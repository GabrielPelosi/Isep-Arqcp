.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global  vec_search #returns pointer to int, receives void



vec_search:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################

	

	cmpl $0, num   #se o array for vazio
	jne not_zero
not_found:
	movl $0, %eax
	jmp end_final
	

not_zero:
	movl $0, %eax
	movl $0, %edx
	movl $0, %edi
	movl $0, %ecx
	movl ptrvec, %esi
	movl num, %ebx
	movw x, %cx

search:
	movw (%esi), %dx	#move o valor do array para dx
	cmpw %cx, %dx		#compara com  x, se for igual pula para o fim
	je end

	cmpl %ebx, %eax
	je not_found

	addl $2, %edi
	addl $1, %eax
	addl $2, %esi       #vai para o proximo valor do array
	jmp search

end:
	movl ptrvec, %ebx 
	addl %edi, %ebx
	movl %ebx, %eax
end_final:
	
	# Restore Regsiters
	
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
