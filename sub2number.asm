.model small
.stack 100h     

.data
a db 'Enter First Number :  $'
b db 10,13, 'Enter Second Number :  $' 
c db 10,13, 'Result :  $'


.code       
main proc
    mov ax,@data
    mov ds,ax  
    
    mov ah,9
    lea dx,a                           ; a er string print kora lagbe
    int 21h  
    
    
    
    mov ah,1
    int 21h
    mov bl,al    

    
    
    mov ah,9
    lea dx,b                           ; b er string print kora lagbe
    int 21h  
    
    
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    mov ah,9
    lea dx,c                           ; c er string print kora lagbe
    int 21h
    
    sub bl,bh ; ekhane biyog hobe karon bh er maan ar bl er maan eikhane ache
    add bl,48    ; ascii theke code e neyar jonno
    mov ah,2
    mov dl,bl
    int 21h
    
    
   
    exit:
    mov ah,4ch
    int 21h
    jmp exit
    main endp
end main   
