.model small
.stack 100h

.code
main proc   
    
    ;Input the character
    mov ah, 1
    int 21h
    mov bl, al    
    
    ;New line
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h              
    
    mov cx, 5
    mov ah, 2 
    sub bl,32
    mov dl, bl
    cmp dl, 'Z'
    je l3 
    
    level1:
    add dl, 1
    l2:
    int 21h
    inc dl
    loop l2
    jmp both 
      
    l3:
    sub dl, 25
    levelZ:
    int 21h
    inc dl
    loop levelZ
    
    both:
    
   ;New line
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h     
    
    mov dl, 'F'
    int 21h    
    
    ;New line
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h   
    
    mov cx, 5
    mov ah, 2 
    mov dl, bl 
    cmp dl, 'A'
    je l4 
    
    
    l4:
    add dl,25
    level2:
    int 21h
    sub dl, 1
    loop level2
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    
    