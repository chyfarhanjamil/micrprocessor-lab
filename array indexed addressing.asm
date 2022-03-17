.data
arr1 db 1,2,3,4,5
arr2 dw 65,66,67,68,69

.code 
main proc
    mov ax, @data
    mov ds, ax
    
    xor bx, bx
    mov cx, 5
    mov ah, 2
    
  ;  for:
   ; mov dl, arr1[bx]
    ;add dl, 48
    ;int 21h
    ;add si, 1
   ; add bx, 1
    ;loop for  
    
    
    
    for:
    mov dx, arr2[bx]
    xor dh, dh
    int 21h
    ;add si, 1
    add bx, 2
    
    loop for
    
    mov ah, 4ch
    int 21h
    main endp
end main