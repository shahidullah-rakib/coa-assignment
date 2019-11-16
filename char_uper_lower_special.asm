.model small
.stack 100h
.data
a db "how many digit $" 
v db 10,13, "enter value $"
b db 10,13, "total integer $"
x db 10,13, "total char $"
d db 10,13, "total upercase $"
e db 10,13, "total lowercase $"
i db 0
c db 0
u db 0
l db 0
.code
main proc
    mov ax,@data
    mov ds,ax 
    mov i,'0'
    mov u,'0'
    mov l,'0'
    mov c,'0'
    lea dx,a
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al 
    cmp bl,'0'
    jl exit
    
    cmp bl,'9'
    jg exit
    
    top:
    cmp bl,'0'
    jz exit
    
    lea dx,v
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,'0'
    jl p1
    cmp al,'9'
    jg p2
    inc i
    dec bl
    jmp top
    
    p1:
    inc c
    dec bl
    jmp top
    
    p2:
    cmp al,'A'
    jl p1
    cmp al,'Z'
    jg p3
    inc u
    dec bl
    jmp top
    
    p3:
    cmp al,'a'
    jl p1
    cmp al,'z'
    jg p1
    inc l
    dec bl
    jmp top
    
    exit:
    lea dx,b
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,i
    int 21h 
    
     lea dx,x
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,c
    int 21h
    
     lea dx,d
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,u
    int 21h
    
     lea dx,e
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,l
    int 21h
    
    
    
    
    