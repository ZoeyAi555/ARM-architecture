.global _start
_start:
	MOV R0,#10
	LSL R0,#1
	LSR R0,#1
	// Shift
	// LSL 1 bit: multiple by 2
	// LSR 1 bit: divide by 2
	
	// Rotation
	// ROL not exits! = ROR 32-n
	// ROR 1 bit: 00000101 10000010
	
	MOV R1,R0,LSL #1
	MOV R1,#15
	ROR R1,#1