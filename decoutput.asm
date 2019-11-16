.stack 100h
.code

main proc
   mov ax,-1259
   cwd
   mov bx,7
   div bx
   cmp ax,0
   jg plus
   jmp minus
    
    
    
    
    
    
    plus:
    mov dx,0
    
    jmp divide 
    
    minus:
    mov cx,ax
    mov ah,2
    mov dl,'-'
    int 21h
    mov dx,0
    mov ax,cx
    neg ax
    
    
    
    
     

    divide:
     mov bl,10
     for2:
     div bx
     push dx 
     mov dx,0
    
     cmp ax,0
     jne for2
     
   
    for3:
    pop dx
    add dl,30h
    mov ah,2
    int 21h
    cmp sp,100h
    jne for3  
    
    
    mov ah,4ch
    int 21h
   
   
   
   

end main