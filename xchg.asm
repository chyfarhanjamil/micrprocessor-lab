include 'EMU8086.INC'
.code
main proc
    mov bh, '5'
    mov ch, '9'
    
    xchg bh, ch   
    
    printn 'After exchanging'
    
    mov ah, 2
    mov dl, bh
    int 21h     
    
    mov dl, ' '
    int 21h
                
    mov dl, ch
    int 21h
     
    mov ah, 4ch
    int 21h
    main endp
end main