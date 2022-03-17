.code
main proc
    mov bh, '5'
    
    mov cx, 5
    
    ;for(int i=5; i>=0; i--)
    cloop:
    mov ah, 2
    mov dl, bh
    int 21h
    mov dl, ' '
    int 21h  
    dec bh
    loop cloop; i--, i<=0   
    
    mov ah, 4ch
    int 21h
    main endp
end main
    
    