;task 2

.code
main proc

first:

mov ah, 01h
int 21h
cmp al,'a'
mov bh, al
jl first


check_last:

mov ah, 01h
int 21h
cmp al,'a'
jl set_last
mov bl,al

set_last:
cmp al, 0dh
jz last
cmp al, 0ah
jz last

jmp check_last

last:
mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h
mov dl, bh
int 21h
mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h
mov dl, bl
int 21h


main endp 
end main
