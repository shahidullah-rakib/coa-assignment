.model small 
.stack 100h
.data
nl db 0ah,0dh,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    xor cx,cx
    
    input:
    xor bx, bx
    mov ah,1
    int 21h
    
    mov bh,al
    
    cmp al,0dh
    je output
    
    push bx
    inc cx
    
    jmp input
    
    output:
    dec cx
    xor dx, dx
    pop dx
    
    mov ah,9
    lea dx,nl
    int 21h
                      
    mov ah,2  
    int 21h
    
    
    
    cmp cx,0
    je exit
    jmp input
    
    
    
    
    
     
    
   
    

    
    exit:
        mov ah,4ch
        int 21h     
    main endp 
end main