.global _start
_start:
	MOV R0,#2
	MOV R1,#4
	CMP R0,R1
	
	//BLT addR2
	//BAl exit
	ADDLT R2, #1// add less than: only trigger when CMP is less than
	MOVGE R2,#5 // assign greater than: ...

addR2:
	ADD R2,#1
	
exit:

/*

1. `ADDEQ`: ==

2. `MOVLT`: <

3. `SUBNE`: !=

4. `CMPGT`: >=

...



*/