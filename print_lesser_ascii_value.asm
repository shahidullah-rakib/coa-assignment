
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model stack 
.stack 100h
.data
.code
mov ah,1
int 21h
mov bl,al 

mov ah,1
int 21h 

cmp al,dl

jl p1
jmp p2

p1:
mov ah,2
mov dl,al
int 21h
jmp exit

p2:
mov ah,2
mov dl,bl
int 21h
jmp exit

exit:
mov ah,4ch
int 21h


ret




