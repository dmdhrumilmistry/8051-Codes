MOV R7, #0AH
MOV R0, #20H
MOV R1, #30H

BACK:MOV A,@R0
MOV @R1,A
INC R0
INC R1
DJNZ R7,BACK

HERE: SJMP HERE