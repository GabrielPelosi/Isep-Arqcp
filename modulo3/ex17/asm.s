.section .data
	.global ptrvec 
	.global num    


.section .text
	.global array_sort  
 


array_sort:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl $0, %ecx  # i
	movl $0, %ebx  #j
	movl $0, %edx # j+1 
	movl $0, %eax
	movl num, %ecx  #check if empty array
	cmpl $0, %ecx
	je end

	movl ptrvec, %esi 

	decl %ecx

	first_loop:
		cmpl $0, %ecx
		je end
		movl $0, %ebx
		movl $1, %edx
		push %ecx
		second_loop:

			leal (%esi, %ebx, 4), %edi  #movendo arr[j] in edi
			movl (%edi), %eax
			push %eax 
			leal (%esi, %edx, 4), %eax  #movendo  arr[j+1] in eax
			movl (%eax), %edi
			pop %eax 

			cmpl %eax, %edi             #comapracao if arr[j]>arr[i]
			
			jl no_switch
				
				movl %edi, (%esi, %ebx, 4)
				movl %eax, (%esi, %edx, 4)
				

			no_switch:
				incl %ebx          #aumentando j
				incl %edx		   #aumentando j+1

				decl %ecx
				cmp $0, %ecx

			jne second_loop
		
		pop %ecx
		decl %ecx
		jmp first_loop

end:
	popl %edi
	popl %esi
	popl %ebx
	
	
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
