.model small
.stack 100h
.data
msg1 db 'enter 1st input : $'
msg2 db 'enter 2nd input : $'
msg3 db 'result : $'
msg4 db 0ah,0dh, '$' 

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    mov ah,9
    lea dx,msg4
    int 21h
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    
    mov bh,al
    
    mov ah,9
    lea dx,msg4
    int 21h
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,9
    lea dx,msg4
    int 21h
    
    mov ah,9
    lea dx,msg4
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
    
    add bl,bh
    sub bl,30h
    
    mov al,2
    mov dl,bl
    int 21h
    
        
    

    
    
    
    main endp
end main