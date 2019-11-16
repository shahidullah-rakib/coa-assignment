.model small
.stack 100h
.data
msg1 db 'enter 1st input : $' 
msg2 db 'enter 2nd input : $'
msg3 db 0dh,0ah,'$'
msg4 db 'result : $'
.code
main proc 