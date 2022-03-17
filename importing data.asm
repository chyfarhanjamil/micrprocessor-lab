.DATA

    NUM DB 'D' ;100
    NUM2 DB ?      
    CHAR DB '#'
    STR DB "HELLO WORLD"

.CODE   
MAIN PROC   
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP

END MAIN 