.model small
.stack 100h     

.data
a db 'Enter First Number :  $'
b db 'Enter Second Number :  $' 
c db 'Result :  $'


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
    
    add bl,bh ; ekhane jog hobe karon bh er maan ar bl er maan eikhane ache
    sub bl,48
    mov ah,2
    mov dl,bl
    int 21h
    
    
   
    exit:
    mov ah,4ch
    int 21h
    jmp exit
    main endp
end main   
