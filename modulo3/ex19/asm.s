.section .data

	# Global Variables
	.global num
	.global ptrgrades
	.global ptrfreq

.section .text # section identifier : code

	.global frequencies

frequencies:
	
	# Prologue
	########################################
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	########################################


	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################

	# num = EAX
	# currentValue = EBX

	# ptrgrades = ESI
	# ptrfreq = EDI


	movl $0, %eax
	movl $0, %ebx
	movl $0, %ecx
	movl $0, %edx
	movl $0, %esi
	movl $0, %edi



	# move the number of grades in the array to EAX
	movl 	num, 		%eax

	# move the current index to EBX
	movl 	$0,			%ebx

	# move the pointer of the grades array to ESI
	movl	ptrgrades, 	%esi

	# move the pointer of the frequencies array to EDI
	movl	ptrfreq, 	%edi



# start the loop
start_loop:
	
	# check if we are at the end of the array
	cmpl	%eax, 	%ebx

	# jump to the end if we are
	je 	end_loop

	# clean %edx
	movl $0, %edx

	# move the first grade in the array to DL (ex: 10) (char)
	movb	(%esi), 	%dl

	pushl %eax

	# get ptrfreq[%dl] pointer into EDX
	leal 	(%edi, %edx, 4), %eax
	# get the value of ptrfreq[%dl] pointer into ECX
	movl (%eax), 	%ecx

	popl %eax

	# increment ECX
	incl %ecx

	# move ECX back to its place - %edi
	movl %ecx, (%edi, %edx, 4)


next_number:

	# increment the pointer grades (char)
	addl 	$1, 	%esi

	# increment the pointer freq (int)
	addl 	$4, 	%edi

	# increment the counter
	incl	%ebx

	# jump to the start
	jmp start_loop


# end of the loop
end_loop:


	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################

	# Epilogue
    ########################################
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	########################################


	ret
