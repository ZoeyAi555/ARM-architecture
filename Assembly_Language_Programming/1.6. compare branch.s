.global _start
_start:
	MOV R0,#1
	MOV R1,#2
	CMP R0,R1 // compare: do R0-R1 store result in cpsr negative?
	BGT greater//branch R0 greater than R1
	// MOV R2,#2 can't just do that, we will reach greater whatever
	BAL default//branch whaterver
	
greater:
	MOV R2,#1
default:
	MOV R2,#2
	
/*

BGT:>
BGE:>=
BLT:<
BLE:<=
BEQ:==
BNE:!=
BAL: all

*/

/*
Branch (B) Simple jump to a function
Branch link (BL) Saves (PC+4) in LR and jumps to function
Branch exchange (BX) and Branch link exchange (BLX)
	Same as B/BL + exchange instruction set (ARM <-> Thumb)
	Needs a register as first operand: BX/BLX reg


*/