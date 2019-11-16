mov ah,1
int 21h
sub al,30h
mov bl,al
mov ah,2
mov cx,4
for:
cmp cx,0
je exit
shr bl,1
jc one
jmp two

loop for


exit:
mov ah,4ch
int 21h
one:
mov dl,31h
int 21h
dec cx
jmp for

two:
mov dl,30h
int 21h
dec cx
jmp for