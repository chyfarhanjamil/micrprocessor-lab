.code
main proc
    ;take input
    mov ah,1
    int 21h
           
    ;output      
    mov ah, 2
    mov dl, al
    int 21h    
    
    mov ah, 4ch
    int 21h
    main endp
end main