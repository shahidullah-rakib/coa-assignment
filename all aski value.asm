.model small 
.stack 100h
.data
nl db 0ah,0dh,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
   
   mov ah,1
   int 21h 
   mov bh,al
   test bh,00000001b
   
   jz even
   jmp odd
   
   even:
   
   mov ah,2
   mov dl,'e'
   int 21h
   
   jmp exit 
   
   odd:
   
   mov ah,2
   mov dl,'o'
   int 21h
   
   
    
    
    
    
    
         
    exit:
        mov ah,4ch
        int 21h     
    main endp 
end main