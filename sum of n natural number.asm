include 'EMU8086.INC'
.data
n db ?
sum db 0

.code
main proc
    mov ax, @data
    mov ds, ax    
    
    print "Enter N: "
    
    ;input
    mov ah, 1
    int 21h    
    sub al, 48
    mov n, al  
    
    mov bh, 1
    
    top:
    cmp bh, n
    jg end
    add sum, bh
    inc bh
    jmp top
    
    end:
    mov ah,2
    mov dl, sum
    int 21h
    
    ;end prog
    mov ah, 4ch
    int 21h
    main endp
end main
    
    
    