.global _start
_start:
	MOV R0,#1
	MOV R1,#3
	BL add2 // branch late: store the location that follows this branch lr
	MOV R3,#4
	B exit
	
add2:
	ADD R2,R0,R1
	BX lr // return to lr
	
exit: