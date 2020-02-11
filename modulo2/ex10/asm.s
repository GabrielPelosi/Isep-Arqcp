.section .data
	.global op1
	.global op2

.section .text
	.global  sum2ints
	
sum2ints:

	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	mov $0, %edx	# sets edx to 0
	movl op1, %eax	# move op1 to eax
	addl op2, %eax	# add op2 to op1
	adc $0, %edx	# sum 0 and eax with the excess value from the sum in edx
    cdq				# convert double to quad (extends 32 bit to 64 bit)
  
  
	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	
	ret
