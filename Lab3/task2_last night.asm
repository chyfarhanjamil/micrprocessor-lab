.code
var db ? 
main proc
    mov ah, 1
    int 21h
    mov var, al
    
    cmp al, 97
    jge small
    cmp al, 65
    jge capital
    jmp exit
    
    small:
    cmp al, 122
    jle is_small
    jmp exit
    
    is_small:
    mov bh, var
    sub bh, 32
    mov ah, 2
    mov cx, 5
    l1:  
    mov dl, bh
    int 21h 
    inc bh
    loop l1
    jmp exit
      
    
    capital:
    cmp al, 90
    jle is_capital
    jmp exit
    
    is_capital:
    mov bh, var
    mov ah, 2
    mov cx, 5
    l2:
    inc bh  
    mov dl, bh
    int 21h 
    
    loop l2
    jmp exit  
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main