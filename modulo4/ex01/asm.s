.section .data


.section .text

	.global cube 

cube:
	
	#Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl $0, %eax
	movl $0, %ecx
	
	movl 8(%ebp), %ecx  #movo o primeiro parameto para ecx
	movl 8(%ebp), %eax  #movo novamente o primeiro parametro para eax
	
	imull %ecx, %eax #multiplico 
	imull %ecx, %eax #multiplico novamente
	
	#Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret
