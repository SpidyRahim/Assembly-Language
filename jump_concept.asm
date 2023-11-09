.model small
.stack 100h     

.data
a db 'Jmp Concept $'
b db 'Assembly Language $' 
c db 'Programming $'


.code       
main proc
    mov ax,@data
    mov ds,ax  
    
    mov ah,9
    lea dx,a                           ; a er string print kora lagbe
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h                            ; new line
    mov dl,13
    int 21h        
    
    
    m:
    mov ah,9
    lea dx,b
    int 21h                            ; b er string print kora lagbe
    
    
    mov ah,2
    mov dl,10                          ; new line
    int 21h
    mov dl,13
    int 21h
    
    jmp n
    
    
    
    n:
    mov ah,9
    lea dx,c                           ; c er string print kora lagbe
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    jmp exit
    main endp
end main