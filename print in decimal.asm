.data

msg_1   db   'Number Is = $'
var_1   db   12

.code

add_1 proc
    mov ax, @data
    mov ds, ax
    mov ah, 09
    lea dx, msg_1
    int 21h 
    
    mov al, var_1  
    aam                ; -> AH is quotient (1) , AL is remainder (2)
    add ax, 3030h      ; -> AH is "1", AL is "2"
    push ax            ; (1)
    mov dl, ah         ; First we print the tens
    mov ah, 2        ; DOS.PrintChar
    int 21h
    pop dx             ; (1) Secondly we print the ones (moved from AL to DL via those PUSH AX and POP DX instructions
    mov ah, 2        ; DOS.PrintChar
    int 21h
    
    
    mov ah, 4ch
    int 21h
add_1 endp

end add_1