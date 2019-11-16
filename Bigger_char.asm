
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  
.model small
.stack 100h
.code


mov ah,1
int 21h
mov Bx,Ax

mov ah,1
int 21h

cmp ax,bx
jg p1
jmp p2 
mov ah,2
mov dh,0ah
mov dl,0dh
int 21h
p1:
mov Cx,ax
mov ah,2
mov dx,cx
int 21h 
jmp exit

p2:
    mov cx,bx
    mov ah,2 
    mov dx,cx
    int 21h
    jmp exit  
    exit:
    mov ah,4ch
    int 21h
    
    
ret




