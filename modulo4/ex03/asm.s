.section .data


.section .text
	.global greatest
greatest:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	pushl %ebx

	pushl %edi

	
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ecx
	movl 16(%ebp), %edi


	compare_a_b:
	
	cmpl %ecx, %ebx
	jge compare_a_c
	jmp compare_b_c


	compare_a_c:
	
	cmpl %edi, %ebx
	jge greater_a
	jmp greater_c

	compare_b_c:
	cmpl %edi, %ecx
	jge greater_b
	jmp greater_c
	
	greater_a:
	movl %ebx, %eax
	jmp end

	greater_b:
	movl %ecx, %eax
	jmp end

	greater_c:
	movl %edi, %eax
	
end:

	popl %edi

	popl %ebx

	#epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret	
