mov ah,1
int 21h
mov bl,al

cmp bl,'*'
je f1

cmp bl,'$'
je f3


jmp exit

f1:
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,2
mov dl,20h
int 21h
mov dl,20h
int 21h
mov dl,20h
int 21h

mov dl,'*'
int 21h

mov dl,0ah
int 21h
mov dl,0dh
int 21h



mov dl,20h
int 21h
mov dl,20h
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h 



mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov dl,20h
int 21h 

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

mov dl,'*'
int 21h

jmp exit

f3:
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov dl,'$'
int 21h
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov dl,'$'
int 21h
mov dl,'$'
int 21h
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h
mov dl,'$'
int 21h



exit:

mov ah,4ch
int 21h













 

