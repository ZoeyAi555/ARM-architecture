.global _start
_start:
	MOV R0,#30 // R0 = 30 immediate addressing *MOV destination,source*
	MOV R7,#1 //r7 store syscalls (interrupts tell OS what we would like to do)
	SWI 0 //software interupts,func addr


	