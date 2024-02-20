.global _start
_start:
	MOV R0,#1 // 1: output in standard output for computer 0: standard input,2:standard error or any file descriptor
	LDR R1,=message
	LDR R2,=len
	MOV R7,#4 // interrupt what we want the operating system to do // 4:writing gsomething to the screen
	SWI 0 // go to see what is in R7
	
	MOV R7,#1 // 1: terminate the program
	SWi 0
/*
file descriptor: unique identifier of file, where we are reading and writing from
*/
	
.data
message:
	.acsiz "hello world \n"
len = .-message //length of mesage
	