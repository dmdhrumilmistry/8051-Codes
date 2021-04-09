// . . . . . . . .
// 0 1 2 3 4 5 6 7

// PATTERN 4 ON PORT 2
//
// .  
// .   . 
// .   .   . 
// .   .   .   .  
//     .   .   .  
//         .   .  
//             .  
//
//   .
//   .   .
//   .   .
//   .   .   . 
//   .   .   .   .
//       .   .   .
//           .   .
//               .
// 0 1 2 3 4 5 6 7


ORG 0000H
			
// MAIN PROGRAM
			// Pattern 1
REPEAT:		MOV P2,#00H
			ACALL DELAY
			SETB P2.0
			ACALL DELAY
			SETB P2.2
			ACALL DELAY
			SETB P2.4
			ACALL DELAY
			SETB P2.6
			ACALL DELAY
			
			CLR P2.0
			ACALL DELAY
			CLR P2.2
			ACALL DELAY
			CLR P2.4
			ACALL DELAY
			CLR P2.6
			ACALL DELAY
			
			// Pattern 2
			ACALL DELAY
			SETB P2.1
			ACALL DELAY
			SETB P2.3
			ACALL DELAY
			SETB P2.5
			ACALL DELAY
			SETB P2.7
			ACALL DELAY
			
			CLR P2.1
			ACALL DELAY
			CLR P2.3
			ACALL DELAY
			CLR P2.5
			ACALL DELAY
			CLR P2.7
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