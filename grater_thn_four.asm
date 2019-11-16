.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al  
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    
    cmp bl,cl
    jge p1
    jl p2
    
    
    p1:
    cmp bl,bh
    jge p3
    jl p4
    
    p2:
    cmp cl,bh
    jge p5
    jl p4
    
    p3:
    cmp bl,al
    jl p6
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    p4:
    cmp bh,al
    jl p6
    mov ah,2
    mov dl,bh
    int 21h 
    jmp exit
    p5:
      cmp cl,al
      jl p6
      mov ah,2
      mov dl,cl
      int 21h
      jmp exit
      
      p6:
      mov ah,2
      mov dl,al
      int 21h
      jmp exit
      
      exit:
      mov ah,4ch 
      int 21h