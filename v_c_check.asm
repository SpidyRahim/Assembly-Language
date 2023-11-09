.model small
.stack 100h

.data
msg1 db 'Enter Character: $'
vowel db 10,13,'You Enter Vowel Character $'
consonant db 10,13,'You Enter Consonant Character $'

.code 

main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,9
    int 21h     
    
    mov ah,1
    int 21h
    cmp al,'A'
    je vwl:
    cmp al,'a'
    je vwl:
    cmp al,'E'
    je vwl:
    cmp al,'e'
    je vwl:
    cmp al,'I'
    je vwl:
    cmp al,'i'
    je vwl:
    cmp al,'O'
    je vwl:
    cmp al,'o'
    je vwl:
    cmp al,'U'
    je vwl:
    cmp al,'u'
    je vwl:  
    
    mov dx,offset consonant
    mov ah,9
    int 21h 
    jmp exit
    
    
    
    vwl: 
    mov dx,offset vowel 
    mov ah,9
    int 21h 
    
    exit:
    mov ah,4ch 
    int 21h
    
    
main endp