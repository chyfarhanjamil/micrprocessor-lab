;Task Complete
ORG 0100h  

.DATA


.CODE
MAIN PROC
    
Start:  

Print_f_letter:

MOV AH, 01h
INT 21h
CMP AL,'a'
MOV BH,AL
JL Print_f_letter


Check_l_letter:

MOV AH, 01h
INT 21h
CMP AL,'a'
JL Set_l_letter
MOV BL,AL

Set_l_letter:
CMP AL, 0Dh
JZ Print_l_letter
CMP AL, 0Ah
JZ Print_l_letter

JMP Check_l_letter

Print_l_letter:
MOV AH, 02h
MOV DL, 0Dh
INT 21h
MOV DL, 0Ah
INT 21h
MOV DL, BH
INT 21h
MOV AH, 02h
MOV DL, 0Dh
INT 21h
MOV DL, 0Ah
INT 21h
MOV DL, BL
INT 21h

END:



MAIN ENDP 
END MAIN
RET