.model small
.stack 100h
.data
m db 'I Love Bangladesh $'
.code 

main proc
    ; 1 -> single key input
    ; 2 -> single character output
    ; 9 -> character string output
    
    mov ax,@data
    mov ds,ax ; ax theke ds e store kortesi ar sob somoy boro man ax e thake choto maan al e thake
    
    mov ah,9 ; string output 9 er maddhome nite hoy
    lea dx,m ; lea hocche load effective register jar karone string outpu hote pare ar dx diye boro maan display hoy...dl diye choto maan
    int 21h   
    
    ; lea hoche address niye kaj korbe ar mov hocche direct value niye kaj korbe                 
    
    mov ah,1 ; input er kaj korbo
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,bl ; bl theke niye dl er maddhome display korbao
    int 21h ; ekhon amra execute kore dicchi
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main