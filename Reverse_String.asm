.model small
.stack 100h

.data
st db 'rahim'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset st
    
    mov cx,5
    
    l1:
    mov bx,[si]
    push bx
    inc si
    loop l1  
    
    
    mov cx,5
    
    l2:
    pop dx
    mov ah,2
    int 21h
    loop l2
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main