.global _start
_start:
	MOV R0,#1
	MOV R1,#3
	PUSH {R0,R1} // push onto the stack sp addr
	BL get_value
	POP {R9,R0,R1}//R9 is R2's value
	B end
	
get_value:
	MOV R0,#5
	MOV R1,#7
	ADD R2,R0,R1
	PUSH {R2}
	BX lr

end: