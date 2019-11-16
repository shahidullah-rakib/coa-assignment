.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,1
    int 21h
    
    cmp cl,bl
    jge p1
    jl p2
    
    p1:
    cmp cl,al
    jl p3
    mov ah,2
    mov dl,cl
    int 21h 
    jmp exit
    
    p2:
    
    cmp bl,al
    jl p3
    mov ah,2
    mov dl,bl
    int 21h 
    jmp exit
    
    p3:
    
    mov ah,2
    mov dl,al
    int 21h
    
    exit:
    mov ah,4ch 
    int 21h
    
    
    
    
    