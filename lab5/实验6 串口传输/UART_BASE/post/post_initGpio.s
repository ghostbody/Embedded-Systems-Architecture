
 
	EXPORT	post_initGpio

	AREA post_initGpio ,CODE ,READONLY


	ldr r1,=0x40e00000
	MOV          R0,#0x3000
	STR          R0,[R1,#0x18]

	MOV          R0,#0x800
	STR          R0,[R1,#0x24]

	MOV          R0,#0x80000000
	STR          R0,[R1,#0x54]

	ldr          R0,=0x10		;0xa5000010
	STR          R0,[R1,#0x58]

	ldr          R0,=0xc1a08000
	STR          R0,[R1,#0xc]

	MOV          R0,#0
	STR          R0,[R1,#0x1c]

	MOV          R0,#0
	STR          R0,[R1,#0x28]

	LDR          R0,=0xc9c		;0xa9558
	STR          R0,[R1,#0x5c]





	LDR          R0,=0xca0		;0xaaa590aa
	STR          R0,[R1,#0x60]

	LDR          R0,=0xca4		;0xfccf0382
	STR          R0,[R1,#0x10]

	MOV          R0,#0x10000
	STR          R0,[R1,#0x20]

	MOV          R0,#0
	STR          R0,[R1,#0x2c]

	ldr          R0,=0xa0000000	;0xaaaaaaaa
	STR          R0,[R1,#0x64]

	ldr          R0,=0x400		;0x90402
	STR          R0,[R1,#0x68]

	ldr          R0,=0x0221ffff
	STR          R0,[R1,#0x14]

;	LDR          R0,=0xca8
;	STR          R0,[R1,#0x68]

	MOV          R0,#0x20000
	STR          R0,[R1,#0x118]

	MOV          R0,#0
	STR          R0,[R1,#0x124]

	MOV          R0,#0
	STR          R0,[R1,#0x6c]

	ldr          R0,=0x1408
	STR          R0,[R1,#0x70]

	MOV          R0,#0x20000
	STR          R0,[R1,#0x10c]



;config twice:
	ldr          R0,=0xa5000010	;0x0x10
	STR          R0,[R1,#0x58]


	LDR          R0,=0xa9558		;0xc9c
	STR          R0,[R1,#0x5c]


	LDR          R0,=0xaaa590aa	;0xca0
	STR          R0,[R1,#0x60]

	LDR          R0,=0xfccf0382	;0xca4
	STR          R0,[R1,#0x10]

	ldr          R0,=0xaaaaaaaa	;0xa0000000
	STR          R0,[R1,#0x64]

	ldr          R0,=0x90402		;0x400
	STR          R0,[R1,#0x68]







	mov pc,r14

	END