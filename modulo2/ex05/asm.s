.section .data
	.global s

.section .text
	.global swapBytes # short int swapBytes(void)


swapBytes:
	#prologue
	pushl %ebp      #save previous stack frame pointer
	movl %esp, %ebp  #the stack frame pointer for sum function


	movw s, %ax #move valor de s para ax
	
	movb %al , %cl #move valor de al para cl
	movb %ah , %ch #move valor de ah para ch
	movb %cl, %ah #move valor de cl para ah
	movb %ch, %al #move valor de ch para al

	
	
	# epilogue
	movl %ebp, %esp  #restore the previous stack pointer ("clear" the stack)
	popl %ebp     	 #restore the previous stack frame pointer
	ret
