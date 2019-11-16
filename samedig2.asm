.stack 100h
.data
msg1 db 'Output in Decimal: $'
msg2 db 'Same digit: $'
var1 db 0,24h
var2 db 0,24h
var3 db 4,24h
var4 db 5,24h
var5 db 0,24h
newl db 0dh,0ah,24h

.code 


main proc
    
mov ax,@data
mov ds,ax
mov cx,4
mov ah,1

input:
int 21h
sub al,30h
mov bl,al
push bx

loop input

mov cx,4

store:
shl bx,4
pop ax
or bx,ax

loop store

mov cx,4
mov ah,9
lea dx,newl
int 21h
lea dx,msg1
int 21h
mov ah,2

output:

mov dl,bl
ror bx,4

and dl,0fh
add dl,30h
int 21h
loop output

mov ax,bx
mov cx,4
put:
dec var4
mov dl,bl
ror bx,4
and dl,00001111b 
mov var3,4
cmp var4,0
je same
jmp com


com:
cmp var3,0
je put
mov dh,al
ror ax,4
and dh,00001111b
dec var3
cmp dh,dl
je eql
jmp com





eql:

inc var5

jmp com


same:

mov ah,9
lea dx,newl
int 21h
lea dx,msg2
int 21h



mov ah,2
cmp var5,4
je sam0
jmp sam2


sam0:
mov dl,30h
int 21h

sam2:
cmp var5,6
jg sam24

mov dl,32h
int 21h

jmp exit

sam24:
cmp var5,8
jg sam3

mov dl,34h
int 21h
jmp exit


sam3:
cmp var5,10
jg sam4

mov dl,33h
int 21h

jmp exit 

sam4:

mov dl,34h
int 21h

exit:

mov ah,4ch
int 21h