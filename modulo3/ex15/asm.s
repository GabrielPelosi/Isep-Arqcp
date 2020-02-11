.section .data
	.global ptrvec
	.global num

.section .text
	.global  sum_first_byte



sum_first_byte:

	#prologue
	pushl %ebp      
	movl %esp, %ebp 
	#Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	cmpl $0, num   #se o array for vazio
	jne not_zero
	
	movl $0, %eax
	jmp end
	
not_zero:
	movl $0, %eax
	movl $0, %ebx
	movl $0, %ecx
	movl ptrvec, %esi
	movl num, %ebx

loop_sum_1_byte:
	movl (%esi), %ecx
	addb %ecx, %eax
	decl %ebx
	addl $4, %esi	
	cmpl $0, %ebx
	je end
	jmp loop_sum_1_byte


end:
	#Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	
	#epilogue
	movl %ebp, %esp 
	popl %ebp        
	ret
