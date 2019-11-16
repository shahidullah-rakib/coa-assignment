.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    
    p1:
    cmp al,'0'
    je exit
    
    mov ah,2
    mov dl,al
    int 21h
    
    dec al
    jmp p1
    
    exit:
    mov ah,4ch
    int 21h