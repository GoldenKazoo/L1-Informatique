DEFAULT REL

extern printf
extern scanf

segment .data 
prompt1       db "Entrez m : ",0
prompt2       db "Entrez n : ",0
formatSortie1  db "Le plus grand est : ",0

formatSortie2  db "Le plus petit est : ",0

longIntFormat db "%ld",0
newLine 	db 10,0

segment .bss  
m  resq 1
n  resq 1
resultat1 resq 1
resultat2 resq 1

segment .text 
        global  main
main:  

	push rbp
        mov rbp,rsp
	push rbx
	push r12
;prise en compte des inputs m et n
	lea rdi,[prompt1]
	call print_string

        lea rdi,[m]
        call read_int
	mov rbx,[m]

        lea rdi,[prompt2]
	call print_string

        lea rdi,[n]
	call   read_int 
	mov rcx,[n]


; calcul de la premiere expression -12*m+42*n+6
	imul rbx, -12
	imul rcx, 42
	add rcx, 6
	add rbx, rcx
	mov [resultat1],rbx

; reset de rcx et rbx a leurs val d'origine
	mov rbx, [m]
	mov rcx, [n]

; calcul de la deuxieme expression 25*m-4*n+5
	imul rbx, 25
	imul rcx, -4
	add rcx, 5
	add rbx, rcx
	mov [resultat2],rbx

; comparaison de la premiere expression et la deuxieme 
	mov r12, [resultat1]
	mov r13, [resultat2]

	cmp r12, r13
	jle else1 ; si r12 <= r13 
	lea rdi,[formatSortie1] ;affiche le plus grand
	call print_string
        mov rdi,[resultat1]
	call print_int
	lea rdi,[newLine]
	call print_string

	lea rdi,[formatSortie2] ; affiche le plus petit
	call print_string
        mov rdi,[resultat2]
	call print_int
	lea rdi,[newLine]
	call print_string
	jmp endif1

else1:
; appel print_string
	lea rdi,[formatSortie1] ;affiche le plus grand
	call print_string
        
        mov rdi,[resultat2]
	call print_int
	lea rdi,[newLine]
	call print_string

	lea rdi,[formatSortie2] ;affiche le plus petit
	call print_string
        
        mov rdi,[resultat1]
	call print_int
	lea rdi,[newLine]
	call print_string


endif1:



	pop r12
	pop rbx
	pop rbp

        mov     rax, 0            
        ret

print_string:
        enter 0,0
	mov rax,0
	call printf wrt ..plt
	mov rax,0
        leave
	ret

print_int:
        enter 0,0
	mov rsi,rdi
        lea rdi,[longIntFormat]
	mov rax,0
	call printf wrt ..plt
	mov rax,0
        leave
	ret
	
read_int:
        enter 0,0
	mov rsi,rdi
        lea rdi,[longIntFormat]
        mov rax,0
	call scanf wrt ..plt
	mov rax,0
        leave
	ret
