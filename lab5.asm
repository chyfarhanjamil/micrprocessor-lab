include 'EMU8086.INC'
.data
arr1 db 6,5,4,3,2,1   
n db ? 
sum db 0

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    ;input  
    mov ah, 1
    int 21h
    sub al, 48
    mov n, al  
    
    ;output  
    ;mov ah, 2
    ;mov dl, n
    ;int 21h
     
    
    ;newline
    printn
  
    lea si, arr1
    xor bx, bx
    
    mov bh, 4 
    mov bl, n 
    cmp bl, bh
    je loop_4_ex
    mov bh, 6
    mov bl, n 
    cmp bh, bl
    je loop_6
    jne last 
    
      
    loop_4_ex:
    mov bl, [si] 
    mov al, bl
    mov bh, [si+1]
    mul bh
    
    mov sum, al   
    xor ax, ax
    mov al, [si+2]
    mov bh, [si+3]
    mul bh  
    sub sum, al 
    
    xor ax, ax 
    
    mov al, sum        ;18
    aam                ; -> AH is quotient (1) , AL is remainder (8)
    add ax, 3030h      ; -> AH is "1", AL is "8"
    push ax            ; (1)
    mov dl, ah         ; First we print the tens
    mov ah, 2        ; DOS.PrintChar
    int 21h
    pop dx             ; (1) Secondly we print the ones (moved from AL to DL via those PUSH AX and POP DX instructions
    mov ah, 2        ; DOS.PrintChar
    int 21h
     
                 
    loop_6: 
    mov bl, [si] 
    mov al, bl
    mov bh, [si+1]
    mul bh
    mov bh, [si+2]
    mul bh  
    mov sum, al
    
    xor ax, ax
    
    mov bl, [si+3] 
    mov al, bl
    mov bh, [si+4]
    mul bh
    mov bh, [si+5]
    mul bh  
    sub sum, al   
    
    mov al, sum        ;18
    aam                ; -> AH is quotient (1) , AL is remainder (8)
    add ax, 3030h      ; -> AH is "1", AL is "8"
    push ax            ; (1)
    mov dl, ah         ; First we print the tens
    mov ah, 2        ; DOS.PrintChar
    int 21h
    pop dx             ; (1) Secondly we print the ones (moved from AL to DL via those PUSH AX and POP DX instructions
    mov ah, 2        ; DOS.PrintChar
    int 21h
    
    last:
    mov ah, 4ch
    int 21h
    main endp
end main
    