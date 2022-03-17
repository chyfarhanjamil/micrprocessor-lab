.data
arr1 db 5 dub (?)

.code
main proc
    mov ax, @data
    mov ds, ax
    
    xor bx, bx
    mov cx, 5
    mov ah, 1
    
    l1:
    int 21h
    mov arr1[bx], al
    inc bx
    loop l1   
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    xor bx, bx
    mov cx, 5    
    mov ah, 2
    l2:
    mov dl, arr1[bx]
    int 21h
    inc bx
    loop l2
    
    mov ah, 4ch
    int 21h
    main endp
end main
    