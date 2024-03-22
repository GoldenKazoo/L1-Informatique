DEFAULT REL
; Définit le type de modèle de lien comme REL, qui signifie relative. Cela est utilisé pour indiquer que les références aux symboles externes sont relatives à la table des réimplantations.

; Déclaration des fonctions externes pour les entrées / sorties
extern printf
extern scanf

; Définition des données globales initialisées
segment .data
affich db "Entrer le nombre d’iterations : ", 0 ; Définit une chaîne de caractères pour afficher un message
affichsortie db "iteration no ", 0 ; Définit une autre chaîne de caractères pour afficher le numéro d'itération
longIntFormat db "%ld", 0 ; Définit le format pour la lecture d'un entier
newLine db 10, 0 ; Définit une nouvelle ligne

; Définition des données globales non initialisées
segment .bss
entier resq 1 ; Déclare une variable non initialisée pour stocker un entier

; Code du programme
segment .text

global main ; Définit la fonction principale "main"

main:
    ; Sauvegarde des registres sur la pile
    ; (doit être un nombre impair)
    push rbp
    mov rbp, rsp
    push rbx
    push r12

    ; Appel printf pour afficher la chaîne de caractères "Entrer le nombre d’iterations : "
    lea rdi, [affich]
    call printf

    ; Appel scanf pour lire un entier depuis l'entrée utilisateur
    lea rdi, [entier]
    call scanf

    ; Charge le contenu de la variable entier dans le registre rbx
    mov rbx, [entier]
    mov r12, 0 ; Initialise le compteur d'itération à zéro

boucle:
    ; Compare le compteur d'itération (r12) avec la valeur de l'entier (rbx)
    cmp r12, rbx
    jge fin ; Si le compteur d'itération est supérieur ou égal à l'entier, saute à la fin

    ; Appelle printf pour afficher la chaîne de caractères "iteration no "
    lea rdi, [affichsortie]
    call printf

    ; Affiche le numéro d'itération actuel (r12)
    mov rdi, r12
    call printf

    ; Appelle printf pour afficher une nouvelle ligne
    lea rdi, [newLine]
    call printf

    ; Incrémente le compteur d'itération (r12)
    inc r12

    ; Saute au début de la boucle
    jmp boucle

fin:
    ; Restaure les registres
    pop r12
    pop rbx
    pop rbp

    ; Envoie 0 au système d'exploitation
    mov rax, 0
    ret
