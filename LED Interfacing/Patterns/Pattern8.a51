// . . . . . . . .
// 7 6 5 4 3 2 1 0

// PATTERN 8 ON PORT 2
//
// . . . . . . . .
// . . . . . . . 
// . . . . .   . 
// . . .   .   . 
// .   .   .   .  
//     .   .   .   
//         .   .   
//             .      
// 7 6 5 4 3 2 1 0


			ORG 0000H
			
// MAIN PROGRAM
REPEAT:		MOV P2,#00H
			ACALL DELAY
			MOV P2,#0FFH
			ACALL DELAY
			MOV P2,#0FEH
			ACALL DELAY
			MOV P2,#0FAH
			ACALL DELAY
			MOV P2,#0EAH
			ACALL DELAY
			MOV P2,#0AAH
			ACALL DELAY
			
			MOV P2,#2AH
			ACALL DELAY
			MOV P2,#0AH
			ACALL DELAY
			MOV P2,#02H
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