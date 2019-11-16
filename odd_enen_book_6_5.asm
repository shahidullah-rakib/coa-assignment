;IF AL CONTAIN 1 OR 3 PRINT "o" OR FOR 2,4 "e"


.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    
    cmp al,31H
    JE odd 
    cmp al,33H
    je odd
    
    cmp al,32H
    je even
    cmp al,34H
    je even
    jmp exit
    
    odd:
    
    mov ah,2
    mov dl,"o"
    int 21h
    jmp exit
    
    even:
    mov ah,2
    mov dl,"e" 
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp 
end main
  