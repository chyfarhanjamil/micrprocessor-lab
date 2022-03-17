
org 100h

.DATA
firstSmallLetter        DB      '$'
lastSmallLetter         DB      '$'
prompt                  DB      'Type a line of text:',   0Dh,    0Ah,    '$'     ;    Our Prompt


.CODE

MAIN PROC
    
    ;   display prompt. 
    MOV     AH,     9
    LEA     DX,     prompt
    INT     21h            
    
    ;   go to a new line with carriage return. 
    MOV     AH,     2
    MOV     DL,     0DH 
    INT     21h

      
    ;   Keep taking single character inputs until new line is entered.    
    MOV     AH,     1
        
    
    traverse:
        INT     21h  
        
        
        MOV     BL,     AL       
        XOR     BL,     0DH     ;   If it is a new line, break out of the traverse loop, else keep doing the operations and go back to traversing through inputs.
        JZ      breakPoint
                                
        
        MOV     BL,     AL                                
        CMP     BL,     'Z'     ;   If it is capital, no need to follow the algo below, just continue taking inputs.
        JLE     traverse              
          
        
        MOV     BL,     firstSmallLetter             
        XOR     BL,     '$'         ;   Check if the first small letter is already recorded.
        
        JNZ     firstSmallLetterAlreadyRecorded
                                   
                
        MOV     firstSmallLetter,     AL      ;   This operation will only be executed if the first small letter was not previously recorded. The program will skip it if the variable defined is '$'.
                
           

        firstSmallLetterAlreadyRecorded:
                MOV     lastSmallLetter,     AL       ;   This is to record the latest small letter.                                                            
        
        
        JMP     traverse                         
        
        
    breakPoint:
    
    
            
    MOV     AH,     2       ;   AH is 2 to print characters using int 21h.       
               
    MOV     DL,     0DH     ;   Putting in new Lines and carriage returns as usual.  
    INT     21h
    MOV     DL,     0AH 
    INT     21h
    
    MOV     DL,     firstSmallLetter    ;   Printing the first small letter.
    INT     21h
    
    MOV     DL,     0DH     ;   Putting in new Lines and carriage returns as usual.    
    INT     21h
    MOV     DL,     0AH 
    INT     21h
     
    MOV     DL,     lastSmallLetter     ;   Printing the last small letter.
    INT     21h 
    
    
        
    
    

MAIN ENDP
END MAIN
RET

