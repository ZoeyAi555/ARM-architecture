.global _start
_start:
	LDR R0,=list // direct addressing,load addr of label list into r0
	LDR R1,[R0] // load the first value of list into R1
	LDR R2,[R0,#4]!//pre-increment add 4 to R0 addr(000000010)->(000000014) 
	LDR R2,[R0],#4 // post-increment
.data
list:
	.word 4,5,-9,1,0,2,-3

//list = [4,5,-9,1,0,2,-3]
//list[R0]

ldmib r0, {r4-r6}            /* words[4] -> r4 = 0x04; words[5] -> r5 = 0x05; words[6] -> r6 = 0x06 */
stmib r1, {r4-r6}            /* r4 -> array_buff[1] = 0x04; r5 -> array_buff[2] = 0x05; r6 -> array_buff[3] = 0x06 */


/*
    1. `LDR`: The `LDR` instruction is used to load a value from memory into a register. 
	For example, `ldr r0, [r1]` loads the value at the memory address contained in `r1` into `r0`¹. 
	If the immediate value is small, the assembler will use `mov` to implement it, so `mov` and `ldr` are exactly the same if the immediate value is less or equal to 255.

    2. `MOV`: The `MOV` instruction is used to move an immediate value or a value stored in a register into a destination register. 
	For example, `mov r0, r1` moves the value in `r1` into `r0`¹. `MOV` is really fast because it has the accompanying value directly stored as a part of the instruction.  

    In summary, while both `LDR` and `MOV` can be used to put a value into a register, 
	`LDR` is typically used when the value is in memory, 
	and `MOV` is used when the value is an immediate or is already in another register.

*/

/*
    - pre increment: ```LDR R2,[R0,#4]!``` ```list[R0+1]``` = ``` R0 = R0 +1   list[R0]```
    - post increment: ```LDR R2,[R0],#4``
*/