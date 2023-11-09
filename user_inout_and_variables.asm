.model small
.stack 100h    
.data
msg db 3
msg1 db ?
.code

main proc    
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    add msg,48 ;karon 51 hocche 3 er ascii value ar assembly jehutu ascii te kaj kore tai ascii count korei kaj korte hoy
    mov dl,msg
    int 21h 
    
    
    mov ah,1 ;input nicchi only for new line printing
    int 21h
    mov msg1,al   
    
    mov ah,2 ;output dicchi
    mov dl,10      ; eikhan theke proborti 4 line shudhu matro ekta new line print er jonno likhchi
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,2          ; output dicchi
    mov dl,msg1
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    