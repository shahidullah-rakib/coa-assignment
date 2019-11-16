.model small
.stack 100h
.code

main proc
    
    mov aH,1
    int 21h
    mov bL,al
               
     mov aH,1
    int 21h
    mov bL,al
    
    mov aH,1
    int 21h
    mov bL,al
    
    mov aH,1
    int 21h
    mov bL,al
    
    mov aH,1
    int 21h
    mov bL,al
              
    
    
    end main