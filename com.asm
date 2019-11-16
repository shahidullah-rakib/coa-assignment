.model small
.stack 100h
.data
msg1 db 'enter 1st input : $' 
msg2 db 'enter 2nd input : $'
msg3 db 0dh,0ah,'$'
msg4 db 'result : $'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    
   ; mov ah,2
    mov bl,al
    ;int 21h
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    
    ;mov ah,2             
    mov bh,al
    ;int 21h
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,9
    lea dx,msg4
    int 21h 
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,2bh
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
                  
    mov ah,2
    mov dl,3dh
    int 21h
    
    cmp bl,bh
        jl rs
        jg s
rs:
        
    sub bh,bl
    add bh,41
    ;add bl,40h
    
  
    mov ah,2
    mov DL,bh
    int 21h
    jmp e
    
s:
        
    sub bl,bh
    add bl,48
    ;add bl,40h
    
    
    mov ah,2
    mov DL,bl
    int 21h 
    
e:     
    
     
    
    
    
    
    
    
    
    
    main endp
end main 