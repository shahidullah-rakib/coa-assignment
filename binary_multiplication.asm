.model small
.stack 100h
.data
.code
main proc
    mov bx,101b
    mov ax,111b
    
    push bx
    push ax 
     
    xor dx,dx
    repeat:
    test bx,1
    jz next
    add dx,ax 
    
    next:
    shl ax,1
    shr bx,1
    jnz repeat 
    
    sub dx,30h
    
    mov ah,2
    int 21h
    