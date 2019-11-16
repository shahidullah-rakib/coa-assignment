;mov ah,1 
;int 21h
;
;mov ah,2 
;mov bl,0Ah
;int 21h
;
;mov ah,2
;mov bh,0Dh
;int 21h
;
;mov ah,2
;mov dh,al
;int 21h    

;.model small
;.stack 100h
;.data
;msg1 db 'hellow world! $' 
;msg2 db 'hellow AIUB $'
;.code
;main proc 
;    mov ax,@data
;    mov ds,ax
;    
;    mov ah,9
;    lea dx,msg1
;    int 21h
;    
;    mov ah,2 
;    mov dl,0Ah
;    int 21h
;    
;    mov ah,2
;    mov dl,0Dh
;    int 21h 
;    
;    mov ah,9
;    lea dx,msg2
;    int 21h
;    
;    
;    main endp
;end main

;.model small
;.stack 100h
;.data
;msg1 db 'hellow world!',0ah,0dh,'$' 
;msg2 db 'hellow AIUB $'
;.code
;main proc 
;    mov ax,@data
;    mov ds,ax
;    
;    mov ah,9
;    lea dx,msg1
;    int 21h
;    
;    mov ah,2 
;    mov dl,0Ah
;    int 21h
;    
;    mov ah,2
;    mov dl,0Dh
;    int 21h 
;    
;    mov ah,9
;    lea dx,msg2
;    int 21h
;    
;    
;    main endp
;end main 

.model small
.stack 100h
.data
msg1 db 'hellow world! $' 
msg2 db 0dh,0ah,'hellow AIUB $'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,2 
    mov dl,0Ah
    int 21h
    
    mov ah,2
    mov dl,0Dh
    int 21h 
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    
    main endp
end main