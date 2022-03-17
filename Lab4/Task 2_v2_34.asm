;Task 2


.data
var1 db 'MY ID is Thirty Four$'

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, var1
    mov bx,dx
    
    ;New line
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h      
    
    mov cx,20
    
    l1:
    
    mov al, [bx] 
    cmp al, 097
    jl display
    jge if
    
    
    display:
    cmp al, 32
    je if
    mov ah,2
    mov dl, al
    int 21h
    
    mov ah,2
    mov dl, ' '
    int 21h
    
    if: 
    inc bx
    loop l1 
    
      
    
    mov ah, 4ch
    int 21h
    main endp
end main