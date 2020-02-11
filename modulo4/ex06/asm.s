
.section .text
	.global test_equal
	
test_equal:

	#prologue
	pushl %ebp              # save previous stack frame pointer
	movl %esp, %ebp         # the stack frame pointer for sum function
	
	pushl %esi
	pushl %edi
	pushl %ebx
	
	movl 8(%ebp), %esi
	movl 12(%ebp), %edi

next:
	movb (%esi), %al
	movb (%edi), %bl
	incl %esi
	incl %edi
	cmp $0, (%esi)
	je check
	cmpb %al, %bl
	je next
	movl $0, %eax
	jmp end

check:
	movl $1, %eax
	cmp $0, (%edi)
	je end
	movl $0, %eax
	
end:
	popl %ebx
	popl %edi
	popl %esi
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	
	ret
