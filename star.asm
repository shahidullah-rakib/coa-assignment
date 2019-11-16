.model small
.stack 100h
.data 
msg db "enter row number:$"
a db ?
star db 'x'
.code
main proc  
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,msg
    int 21h
    mov ah,1
    int 21h
    and al,0Fh
    mov dh,al
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    mov ch,0
    mov bh,0
    mov cl,al
    mov bl,1
  
loop1:
    mov cx,bx
    
loop2:
    cmp bl,dh
    jnle exit
    mov ah,2
    mov dl,star
    int 21h
    loop loop2
    inc bl
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    loop loop1
    
exit:
    mov ah,4ch
    int 21h
main endp
end main
 
 