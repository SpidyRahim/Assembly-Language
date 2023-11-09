.model small
.stack 100h

.data
msg db ?

.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    add bl,bh ; bl,bh jog korlam
    sub bl,48 ; ascii nilam
    mov ch,bl ; ch notun register nilam
    add ch,cl ; notun register er sathe input neya cl jog korlam
    sub ch,48 ; again ascii
    
    mov msg,ch
    mov ah,2       
    mov dl,msg ; etai display
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main