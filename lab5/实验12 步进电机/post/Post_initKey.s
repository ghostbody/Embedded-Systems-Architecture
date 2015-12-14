
   EXPORT post_initKey


   AREA post_initKey, CODE, READONLY
	nop
	nop
	ldr r1,=0x41500000
	
	;KPC
	ldr r0,=0x2FAFF1C2		;≤È—Ø∑Ω Ω    £®0x2FAFF9C3:interrupt£©	
	str r0,[r1,#0x0]
	
	mov pc,r14
	
	END