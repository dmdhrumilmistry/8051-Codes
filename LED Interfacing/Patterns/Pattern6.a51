// . . . . . . . .
// 0 1 2 3 4 5 6 7
// DIFFERENT APPROACH
// PATTERN 6 ON PORT 2
//
// . . . . 
// 		   . . . .
// .   .   .   .  
//   .   .   .   .
// 0 1 2 3 4 5 6 7


			ORG 0000H
			
// MAIN PROGRAM
REPEAT:		MOV P2,#00H
			ACALL DELAY
			MOV P2,#0F0H
			ACALL DELAY
			MOV P2,#0FH
			ACALL DELAY
			MOV P2,#0AAH
			ACALL DELAY
			MOV P2,#55H
			ACALL DELAY
			SJMP REPEAT

// DELAY FOR 50MS
DELAY:	MOV TMOD,#10H
		MOV TL1,#0B0H
		MOV TH1,#3CH
		MOV TCON,#40H
WAIT:	JNB TF1, WAIT
		CLR TF1
		CLR TR1
		RET
		
// DELAY 500MS = 0.5S
DELAY500: 	MOV R7,#0AH
BACK:		ACALL DELAY
			DJNZ R1, BACK
			RET

END