org 100h
.DATA

A db 6, 5, 4, 3, 2, 1
message db 'Enter the value of NUM : $'

.CODE

MAIN PROC
    
    MOV ax, @DATA
    MOV ds, ax
    XOR ax, ax
    
    MOV si, OFFSET A
    MOV dx, OFFSET message
    
    MOV ah, 09h
    INT 21h
    
    MOV ah, 01h
    INT 21h
    
    MOV cl, al
    SUB cl, 48
    
    CMP cl, 06h
    JGE CalcSix
    
    
    MOV bl, [Si]
    INC Si
    MOV al, [Si]
    MUL bl
    MOV bl, al
    
    INC Si
    
    MOV cl, [Si]
    INC Si
    MOV al, [Si]
    MUL cl
    MOV cl, al
    
    SUB bl, cl    
    MOV al, bl 
    MOV cl, 0Ah
    DIV cl          ;8 in ah, 1 in al
    
    MOV bh, ah
    MOV bl, al
    
    ADD bh, 48
    ADD bl, 48               
    
    
    ;New Line
    MOV ah, 02h
    MOV dl, 0Dh
    INT 21h
    MOV dl, 0Ah
    INT 21h
    
    MOV dl, bl
    INT 21h
    MOV dl, bh
    INT 21h
    
    JMP END
    
    CalcSix:
    
    MOV bl, [Si]
    INC Si
    MOV al, [Si]
    MUL bl
    INC Si
    MOV bl, [Si]
    MUL bl
    MOV bl, al
    
    INC Si
    
    MOV cl, [Si]
    INC Si
    MOV al, [Si]
    MUL cl
    INC Si
    MOV cl, [Si]
    MUL cl
    MOV cl, al
    
    SUB bl, cl    
    MOV al, bl               ;114, 11 in al, 4 in ah
    MOV cl, 0Ah
    DIV cl
    MOV ch, ah               ;xx4 in ch
    XOR ah, ah
    DIV cl
    MOV bh, ah               ;x1x in bh
    MOV bl, al               ;1xx in bl
    
    ADD bh, 48
    ADD bl, 48
    ADD ch, 48
    
    
    ;New Line
    MOV ah, 02h
    MOV dl, 0Dh
    INT 21h
    MOV dl, 0Ah
    INT 21h
    
    MOV dl, bl
    INT 21h
    MOV dl, bh
    INT 21h
    MOV dl, ch
    INT 21h
    
    
    END:
    MAIN ENDP
END MAIN
RET    