mov bx,05h
shl bx,1

mov dh,0h
mov cx,3

for:
cmp dh,5
je exit
shl bx,1
rcl dl,1

cmp cl,1
je incrmnt

loop for

incrmnt:
inc dh
add dl,30h
mov ah,2
int 21h 

mov dl,0h


mov cl,3
jmp for


exit:

mov ah,4ch
int 21h