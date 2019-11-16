.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    
    mov ah,2
    mov dl,9
    int 21h
    
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    
    mov ah,2
    mov dl,9
    int 21h  
    
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,2
    mov cl,'*'
    mov dl,cl
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,2
    mov ch,6
    mov dl,ch
    int 21h
    
     
    
    
    
    main endp
end main
    