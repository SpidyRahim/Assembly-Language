.model small
.stack 100h

.data
msg db 'String : $'
res db 10, 13, 'Vowel Characters: $'
vowels db 255 DUP(?) ; Buffer to store vowel characters
count db 0           ; Counter for vowel characters

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9
    lea dx, msg
    int 21h

    mov cx, 0     ; Initialize vowel counter

input_loop:
    mov ah, 1
    int 21h

    cmp al, 13     ; Check for Enter key (end of input)
    je end_input

    ; Check if the character is a vowel (uppercase or lowercase)
    cmp al, 'a'
    je is_a_vowel
    cmp al, 'A'
    je is_a_vowel
    cmp al, 'e'
    je is_a_vowel
    cmp al, 'E'
    je is_a_vowel
    cmp al, 'i'
    je is_a_vowel
    cmp al, 'I'
    je is_a_vowel
    cmp al, 'o'
    je is_a_vowel
    cmp al, 'O'
    je is_a_vowel
    cmp al, 'u'
    je is_a_vowel
    cmp al, 'U'
    je is_a_vowel

not_a_vowel:
    jmp input_loop

is_a_vowel:
    ; Store the vowel character and increment the counter
    mov [si], al
    inc si
    inc cx
    jmp input_loop

end_input:
    ; Display the vowel characters
    mov ah, 9
    lea dx, res
    int 21h

    mov si, 0

display_vowels:
    cmp si, cx   ; Check if we've displayed all vowel characters
    je exit

    mov al, [si]
    mov ah, 0Eh
    int 10h

    inc si
    jmp display_vowels

exit:
    mov ah, 4Ch
    int 21h

main endp
