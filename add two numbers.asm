.data
A db ?
B db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;input
    mov ah,1
    int 21h
     
    ;input stored in al
    mov A, al          
    sub A, 48   
    
    ;input
    int 21h
    mov B, al
    sub B, 48    
    
    ;Add
    mov bh, A
    add bh, B
    add bh, 48
               
    ;newline
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h     
    
    mov dl, bh
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main