.model small
.stack 100h

.data
msg db 'String : $'
res1 db 10,13,'Total Chars : $'
res2 db 10,13,'Counting Vowel : $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov bl,0 ; prothome 0 dhore nilam
    mov cl,0 ; prothome 0 dhore nilam
    
    mov ah,1 ;input segment
    int 21h                
    
    while:
    cmp al,13
    je endl
       
    cmp al,'a'
    je ok
    cmp al,'A'
    je ok
        
    cmp al,'e'
    je ok
    cmp al,'E'
    je ok
        
    cmp al,'i'
    je ok
    cmp al,'I'
    je ok
        
    cmp al,'o'
    je ok
    cmp al,'O'
    je ok
        
    cmp al,'u'
    je ok
    cmp al,'U'
    je ok
        
    up:
    inc bl
    int 21h
    jmp while
        
    ok:
    inc cl  
    jmp up
    
    endl:
    mov ah,9
    lea dx,res1
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    mov ah,9
    lea dx,res2
    int 21h
    
    mov ah,2
    mov dl,cl
    add dl,30h
    int 21h  
    
endp