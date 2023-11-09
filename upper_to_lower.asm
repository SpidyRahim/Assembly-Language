.model small
.stack 100h

.data
a db 'Lower Case : $'
b db 10,13, 'Upper Case : $'

.code
main proc   
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a               ; a print
    int 21h
    
    
    mov ah,1               ; char input to upper case convert
    int 21h
    mov bl,al  
    
    
    mov ah,9
    lea dx,b                ; b print
    int 21h
    
    mov ah,2
    sub bl,32         ; lower case to upper case ------ lower to upper korte gele just add bl,32 dilei hobe
    mov dl,bl
    int 21h
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main