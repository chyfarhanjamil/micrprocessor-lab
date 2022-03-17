# micrprocessor-lab shortcuts
INCLUDE 'EMU8086.INC' </br>
PRINT ' ' \
PRINTN ' ' </br>
### INPUT </br>
mov ah, 1 </br>
int 21h </br>
mov n, al </br>
    
### OUTPUT </br>
mov ah, 2 </br>
mov dl, num </br>
int 21h </br>

### NEWLINE </br>
mov ah, 2 </br>
mov dl, 10 </br>
int 21h </br>
mov dl, 13 </br>
int 21h </br>

### END PROGRAM </br>
mov ah, 4ch </br>
int 21h </br>
main endp </br>
end main </br>

### JUMP
je/jz jump equal or jump zero    </br>
jne/jnz jump not equal or not zero </br>
jg/jnle jump greater or jump not less or equal  </br>
jge/jnl jump greater/equal jump not less </br>
jl/jnge </br>
jle/jng jump less or equal </br>
    
