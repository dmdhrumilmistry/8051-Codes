ORG 0000H
MOV R7, #0AH
MOV R0, #20H
MOV R1, #39H

MOV 20H,#20H
MOV 21H,#21H
MOV 22H,#22H
MOV 23H,#23H
MOV 24H,#24H
MOV 25H,#25H
MOV 26H,#26H
MOV 27H,#27H
MOV 28H,#28H
MOV 29H,#29H

BACK:MOV A,@R0
MOV @R1,A
INC R0
DEC R1
DJNZ R7,BACK

HERE: SJMP HERE
