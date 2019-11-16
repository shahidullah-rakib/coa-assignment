.model small
.stack 100h
.data
.code
main proc
    mov cx,4
    l1:
    mov ah,1
    int 21h
    
    mov ah,00h
    mov bx,ax
    
    push bx
    loop l1
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    
    mov cx,4 
    
    l2:
    pop dx
    mov ah,2
    int 21h
    loop l2
    
    