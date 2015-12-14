

         EXPORT  MDCNFG
         EXPORT  MDREFR  
         EXPORT  MSC0
         EXPORT  MSC1
         EXPORT  MSC2 
         EXPORT  MECR 
         EXPORT  SXCNFG
         EXPORT  SXMRS
         EXPORT  MDMRS
         EXPORT  BOOT_DEF
         EXPORT  init_MDCNFG 
         EXPORT  init_MDREFR  
         EXPORT  init_MSC0
         EXPORT  init_MSC1 
         EXPORT  init_MSC2 
         EXPORT  init_MECR  
         EXPORT  init_SXCNFG 
         EXPORT  init_SXMRS
         EXPORT  init_MDMRS 
         EXPORT  init_BOOT_DEF 


         EXPORT  RTSR  
         EXPORT  ICMR
         EXPORT  init_ICMR
  
         EXPORT  PSSR
         EXPORT  FFRBR
         EXPORT  FFTHR 


	AREA library_register ,DATA ,READONLY

;Memory Controller
MDCNFG            EQU      0x48000000
MDREFR            EQU      0x48000004
MSC0              EQU      0x48000008
MSC1              EQU      0x4800000c
MSC2              EQU      0x48000010
MECR              EQU      0x48000014
SXCNFG            EQU      0x4800001C
SXMRS             EQU      0x48000024
MDMRS             EQU      0x48000040
BOOT_DEF          EQU      0x48000044

init_MDCNFG       EQU      0x02000ac9
init_MDREFR       EQU      0x0011e018
init_MSC0         EQU      0x95c095c0
init_MSC1         EQU      0xb884a691
init_MSC2         EQU      0x7ff4b88c
init_MECR         EQU      0x1
init_SXCNFG       EQU      0x0;6011
init_SXMRS        EQU      0x0
init_MDMRS        EQU      0x320032
init_BOOT_DEF     EQU      0x00000008



;RTC
RTSR             EQU       0x40900008



;Interrupt Controller
ICMR             EQU       0x40d00004
init_ICMR        EQU       0x00400000


;clock and power Register
PSSR             EQU       0x40f00004

;FFUART 
FFRBR            EQU       0x40100000
FFTHR            EQU       0x40100000

	END
