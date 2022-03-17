.data
num db '1'                  
str db "Hello World$"       

.code 
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 2
    mov dl, num
    int 21h
    
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h    
    
    mov ah,9
    lea dx, str
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main