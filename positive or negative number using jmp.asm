include 'EMU8086.INC'
.code
;je/jz jump equal or jump zero    
;jne/jnz jump not equal or not zero
;jg/jnle jump greater or jump not less or equal  
;jge/jnl jump greater/equal jump not less
;jl/jnge
;jle/jng jump less or equal  

main proc
    mov bl, -5  
    
    cmp bl, '0'
    jl if
    jge else 
    
    if:
    printn 'The no. is negative'
    jmp end_if
    
    else: 
    printn 'The no. is positive'
    
    end_if:
    
    mov ah, 4ch
    int 21h
    main endp
end main