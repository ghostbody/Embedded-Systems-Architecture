

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

         EXPORT  GPDR1
         EXPORT  GAFR1_L 
         EXPORT  init_GPDR1
         EXPORT  init_GAFR1_L


         EXPORT  FFRBR     
         EXPORT  FFTHR        
         EXPORT  FFIER            
         EXPORT  FFIIR         
         EXPORT  FFFCR        
         EXPORT  FFLCR          
         EXPORT  FFMCR       
         EXPORT  FFLSR        
         EXPORT  FFMSR       
         EXPORT  FFDLL        
         EXPORT  FFDLH            


         EXPORT  init_FFDLL      
         EXPORT  init_FFDLH     
         EXPORT  init_FFIER     
         EXPORT  init_FFFCR    
         EXPORT  init_FFLCR      

         EXPORT  PSSR
         EXPORT  PSSR_RDH
         EXPORT  PSSR_PH
 

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

;GPIO Configuration
GPDR1             EQU      0x40E00010
GAFR1_L           EQU      0x40E0005C
init_GPDR1        EQU      0x80
init_GAFR1_L      EQU      0x8010

;FFUART Configuration
FFRBR             EQU      0x40100000
FFTHR             EQU      0x40100000
FFIER             EQU      0x40100004
FFIIR             EQU      0x40100008
FFFCR             EQU      0x40100008
FFLCR             EQU      0x4010000C
FFMCR             EQU      0x40100010
FFLSR             EQU      0x40100014
FFMSR             EQU      0x40100018
FFDLL             EQU      0x40100000
FFDLH             EQU      0x40100004


init_FFDLL        EQU      0x8 ; baud:115200
init_FFDLH        EQU      0x0
init_FFIER        EQU      0x40
init_FFFCR        EQU      0x7
init_FFLCR        EQU      0x03   ;DLAB=0

PSSR              EQU      0x40f00004
PSSR_RDH          EQU      0x20
PSSR_PH           EQU      0x10


	END
