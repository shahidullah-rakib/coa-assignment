.stack 100h 
.data
newl db 0dh,0ah,24h

.code

main proc 
    mov ax,@data
    mov ds,ax
    mov cx,4
    
    input:
    mov ah,1
    int 21h
    sub al,30h
    mov bl,al
    push bx
    
    loop input
    
    mov cx,4
    mov bx,0
    
    
    for:
    shl bx,4
    pop ax
    or bx,ax
    
    
    loop for
    
    mov cx,4
    mov ah,9 
    lea dx,newl
    int 21h
    mov dl,0 
    mov ah,2
    
    output:
    
    mov dl,bl
    shr bx,4 
    
    and dl,00001111b
    add dl,30h
    
    int 21h
    
    loop output
    
    
    
    
    
    main endp
  


end main