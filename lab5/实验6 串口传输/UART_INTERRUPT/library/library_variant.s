     EXPORT   postDelay
     EXPORT   stack_SVC
     EXPORT   stack_IRQ 
     
     
    EXPORT	StackSvc
	EXPORT	StackIrq
	EXPORT	StackFiq
	EXPORT	StackAbt
	EXPORT	StackUnd
	EXPORT	StackUsr
     
     
     

	AREA library_variant ,DATA ,READONLY

postDelay         EQU      0x1000
stack_SVC         EQU      0xa0600000
stack_IRQ         EQU      0xa0605000




StackSvc		EQU		0xa0600000
StackIrq		EQU		0xa0605000
StackFiq		EQU		0xa060a000
StackAbt		EQU		0xa060e000
StackUnd		EQU		0xa0714000
StackUsr		EQU		0xa0720000	




	END


