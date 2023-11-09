.model small
.stack 100h

.data
msg db 'String: $'
res db 10, 13, 'Consonant Characters: $'
consonants db 255 DUP(?) ; Buffer to store consonant characters
count db 0 ; Counter for consonant characters

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9
    lea dx, msg
    int 21h

    mov cx, 0 ; Initialize consonant counter

input_loop:
    mov ah, 1
    int 21h

    cmp al, 13 ; Check for Enter key (end of input)
    je end_input

    ; Check if the character is a consonant (uppercase or lowercase)
    cmp al, 'a'
    je not_a_consonant
    cmp al, 'A'
    je not_a_consonant
    cmp al, 'e'
    je not_a_consonant
    cmp al, 'E'
    je not_a_consonant
    cmp al, 'i'
    je not_a_consonant
    cmp al, 'I'
    je not_a_consonant
    cmp al, 'o'
    je not_a_consonant
    cmp al, 'O'
    je not_a_consonant
    cmp al, 'u'
    je not_a_consonant
    cmp al, 'U'
    je not_a_consonant

is_a_consonant:
    ; Store the consonant character and increment the counter
    mov [di], al
    inc di
    inc cx
    jmp input_loop

not_a_consonant:
    jmp input_loop

end_input:
    ; Display the consonant characters
    mov ah, 9
    lea dx, res
    int 21h

    mov di, 0

display_consonants:
    cmp di, cx ; Check if we've displayed all consonant characters
    je exit

    mov al, [di]
    mov ah, 0Eh
    int 10h

    inc di
    jmp display_consonants

exit:
    mov ah, 4Ch
    int 21h

main endp
