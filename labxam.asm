.data
a db 0dh,0ah,24h

.code

main proc
    mov ah,1
    int 21h
    
    sub al,37h
    mov cl,al
    sub cl,2h
    
    mov ah,0
    
    or bx,ax
    shl bx,4
    
    or bx,cx
    shl bx,4
    
    or bx,ax
    shl bx,4
    
    
    
    mov cx,12
    
    for:
    cmp cx,0
    je exit
    rol bx,1
    jc one
    jmp zero
    
    
    one:
    mov dl,31h 
    mov ah,2
    int 21h
    dec cx
    jmp for
    
    
    zero:
    mov dl,30h
    mov ah,2
    int 21h
    dec cx
    jmp for 
    
    
    
    exit:
    mov ah,4ch
    int 21h
    
    
    
    main endp
end main