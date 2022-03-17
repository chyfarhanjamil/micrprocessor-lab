.data
arr1 db 6,5,4,3,2,1   
n db ? 
sum db 0

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;input  
    mov ah, 1
    int 21h
    mov n, al 
    
    xor bx, bx
    
    mov bl, 4
    cmp bl, n
    je loop_4
    mov bl, 6 
    cmp bl, n
    je loop_6
    jne last   
    
    mov cx, 2
    loop_4:
    mov al, arr1[bx]
    add 
    
    
    last:
    mov ah, 4ch
    int 21h
    main endp
end main
    