;take 2 number nd print grater one


.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    
    cmp al,bl
    jg b1
    jmp b2
    
    b1:
    mov ah,2
    mov dl,al
    int 21h
    jmp exit  
    
     b2:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h