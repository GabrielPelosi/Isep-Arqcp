.section .data
	.global A #char
	.global B #short
	.global C #int
	.global D #int

.section .text

	.global sum_and_subtract

sum_and_subtract:
#C + A - D + B.
#A é uma variavel de  8-bit
#B é uma variavel de  16-bit 
#C e D são variaveis de 32-bit   
#

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	
	movl $0, %eax          #clean eax registes
	movl $0, %ecx          #clean ebx registes
	movl $0, %edx	       #clean edx register
	
	movl C, %eax           #move C into eax
	movb A, %cl			   #move A into bk	
	addl %ebx, %eax        #add ebx and eax
	adcl $0, %edx          #if there is a carry add it into edx
	movl $0, %ecx          #clean edx register
	movl D, %ecx		   #move D into  ebx	
	subl %ecx, %eax		   #subtract ebx to %eax		
	sbbl $0, %edx  		   #put carry value into edx
	movl $0, %ecx   	   #clean edx register	
	movw B, %cx			   #move b into bx	
	
	addl %ecx, %eax	 	   #add ebx into eax
	adcl $0, %edx	       #if there is a carry add it into edx
	

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
