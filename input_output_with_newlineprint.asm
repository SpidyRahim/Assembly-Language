.model small
.stack 100h
.data

main proc
    
    mov ah,1
    int 21h                         ; input nilam
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h                         ; ekta newline print korlam
    mov dl,13
    int 21h
    
    
    mov ah,1
    int 21h                         ; input nilam    bh e input karon ekta notun input bh/bl conflict hoye jabe ------- dl e output
    mov bh,al 
    
    
    mov ah,2
    mov dl,10
    int 21h                         ; ekta newline print korlam
    mov dl,13
    int 21h 
    
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    
    mov ah,2
    mov dl,10
    int 21h                         ; ekta newline print korlam
    mov dl,13
    int 21h
    
    
    mov ah,2
    mov dl,bh
    int 21h 
    
    
    mov ah,2
    mov dl,10
    int 21h                         ; ekta newline print korlam
    mov dl,13
    int 21h 
    
    exit:          
    
    mov ah,4ch
    int 21h
    main endp
end main