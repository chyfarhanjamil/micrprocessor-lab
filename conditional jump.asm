include 'EMU8086.INC'
.code
;je/jz jump equal or jump zero    
;jne/jnz jump not equal or not zero
;jg/jnle jump greater or jump not less or equal  
;jge/jnl jump greater/equal jump not less
;jl/jnge
;jle/jng jump less or equal  

main proc
    mov bl, '0' 
    mov ch, '5'    
    
    
    start:
    cmp bl, ch  
    
    ;print ' '
    mov ah, 2
    mov dl, bl 
    int 21h
    
    
    je last 
    inc bl
    jne start
    
    last:
    
    mov ah, 4ch
    int 21h
    main endp
end main