.global _start
_start:
	MOV R0,#5
	MOV R1,#7
	ADD R2,R0,R1//R2 = R0+R1
	SUB R2,R0,R1//R2 = R0-R1	fffffffe
	MUL R2,R0,R1//R2 = R0*R1	
	
	MOV R0,#0xFFFFFFFF
	MOV R1,#1
	SUB R2,R0,R1//R2 = R0-R1 fffffffe
	
//how to solve? 
// CPSR: flag 
// [N:negative / cpsr: 8xxxxxxx]
// arithmetic with flags : deal with negative number/ don't know what numbers you with subtract from
	MOV R0,#5
	MOV R1,#7
	SUBS R2,R0,R1//R2 = R0-R1

// add a carry  when overflow beyond 32 bits 
// [C:carry / cpsr xxxxx1xx]
	MOV R0,#0xFFFFFFFF
	MOV R1,#3
	ADC R2,R0,R1//R2 = R0+R1
	
/*

1. **N (Negative condition code flag)**: This flag is set if the result of the last operation was negative¹.

2. **Z (Zero condition code flag)**: This flag is set if the result of the last operation was zero¹.

3. **C (Carry condition code flag)**: This flag is set if the last operation resulted in a carry (for addition) or borrow (for subtraction)¹.

4. **V (Overflow condition code flag)**: This flag is set if the last operation resulted in an overflow¹.

5. **Q (Cumulative saturation bit)**: This flag is set if saturation has occurred in some DSP instructions¹.

6. **IT[1:0] and IT[7:2] (If-Then execution state bits)**: These bits hold the execution state for the Thumb IT (If-Then) instruction¹.

7. **J (Jazelle bit)**: This bit is set when the processor is in Jazelle state¹.

8. **GE (Greater than or Equal flags)**: These flags hold the results of SIMD (Single Instruction, Multiple Data) instructions¹.

9. **E (Endianness execution state bit)**: This bit is set to 0 for Little-endian and 1 for Big-endian¹.

10. **A (Asynchronous abort mask bit)**, **I (IRQ mask bit)**, and **F (FIRQ mask bit)**: These bits are used to disable (mask) corresponding exceptions¹.

11. **T (Thumb execution state bit)**: This bit is set when the processor is in Thumb state¹.

12. **M (Mode field)**: These bits define the processor mode (User, FIQ, IRQ, Supervisor, Abort, Undefined, or System)¹.


31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
N  Z  C  V  Q  _  J  _  GE GE GE GE IT IT IT IT IT IT IT IT E  A  I  F  T  M  M  M  M  M
1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  0  1  0  0  1  1

*/
	
	
	
	
	
	