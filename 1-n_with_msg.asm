;1-n

.model small
.stack 100h
.data 
msg db "Input a digit: $"
msg1 db 10,13, "Your output is: $"
msg2 db 10,13, "your total output: $"
a db ?
b db ?

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    lea dx,msg
    mov ah,9
    int 21h
                                              
    mov ah,1
    int 21h
    mov a,al
    mov b,al
    
    mov cl,'1'
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    p1:  
    
    cmp b,'0'
    je exit
    
    mov ah,2
    mov dl,cl
    int 21h
    inc cl
    dec b
    jmp p1
    
    exit:
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h
    
    