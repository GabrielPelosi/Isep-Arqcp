.section .data

	# Constants


.section .text

	.global fun1
    .global fun2
    .global fun3
    .global fun4

fun1:
	
	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	pushl %ebx
	pushl %esi
	pushl %edi

    # short fun1(structB *s);
    # return s->a.x;

	movl 8(%ebp), %esi
	
    # Como na primeira posicao está o A, que é uma structA
    movl (%esi), %eax


	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret


fun2:
	
	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

    # short fun1(structB *s);
    # return s->a.x;

	# Mover o pointer do student struct para %esi
	movl 8(%ebp), %esi
    # Como na primeira posicao está o A, que é uma structA
    movl 28(%esi), %eax


	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret


fun3:
	
	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

    # short fun1(structB *s);
    # return s->a.x;

	# Mover o pointer do student struct para %esi
	movl 8(%ebp), %esi
    # Como na primeira posicao está o A, que é uma structA
    movl 28(%esi), %eax


	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret


fun4:
	
	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

    # short fun1(structB *s);
    # return s->a.x;

	# Mover o pointer do student struct para %esi
	movl 8(%ebp), %esi
    # Sacar o b (pointer)
    movl 8(%esi), %edi
	# Scar o valor apontado por b
	movl (%edi), %eax




	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret
