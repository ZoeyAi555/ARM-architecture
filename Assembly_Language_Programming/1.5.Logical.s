.global _start
_start:
	MOV R0,#0xFF
	MOV R1,#22
	AND R2,R0,R1
	ORR R2,R0,R1
	EOR R2,R0,R1 //XOR
	MVN R0,R0// move negetive: negate it and put it back in the register that we start with
	
	AND R0,R0,#0x000000FF
	
	MOV R0,#0xAA
	MVN R0,R0
	AND R0,R0,#0x000000FF