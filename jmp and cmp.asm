.model small
.stack 100h             
.data
msg1 db 'this is true $'
msg2 db 'this is flse $'
.code
main proc               
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    cmp bl,053
    
    jge true   ;5<input
    jmp flse   ;5>input
    
    true:  mov ah,9
           lea dx,msg1
           int 21h
           
           jmp exit
           
    flse:  mov ah,9
           lea dx,msg2
           int 21h
                 
    exit:  mov ah,4ch
           int 21h 
           
    jmp new_function
    
    new_function:
    
    mov ah,2
    mov dl,'*'
    int 21h
           
           
main endp
end main