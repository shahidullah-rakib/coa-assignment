.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    
    cmp al,65
    jge p1
    jmp exit
    p1:
    cmp al,122
    jg exit
    jmp p2
    
    p2:
    cmp al,90
    jg p3
    mov ah,2
    mov dl,al
    int 21h
    jmp exit
    
    p3:
    cmp al,97
    jl exit
    mov ah,2
    mov dl,al
    int 21h
   
    
    
    
    exit:
    mov ah,4ch
    int 21h