#include "register_variant.h"
#define LED_BOARD   (*((volatile unsigned int *)(0x0a000000)))
#define GPSR2   	(*((volatile unsigned int *)(0x40E00020)))
#define GPCR2   	(*((volatile unsigned int *)(0x40E0002C)))
#define GPDR2		(*((volatile unsigned int *)(0x40E00014)))
#define GPDR1		(*((volatile unsigned int *)(0x40E00010)))
#define GPLR2		(*((volatile unsigned int *)(0x40E00008)))

#define KPDK_VALUE	(*((volatile unsigned char *)(0x41500008)))	



void Interval(int timer)
{
	while (timer--);
}





void dummyOs(void)
{	
	int i;
	/*
 	if (GPLR2 & 0x00100000)
 	{
 		GPCR2 = 0x00100000;
 	}
 	*/
 	
 	GPCR2 = 0x00100000;
 	
 	GPDR2 |= 0x00180000;	//GPIO83,GPIO84
 	GPDR1 |= 0x00200000;	//GPIO53
 	
 	

 	
	while(1)
	{	

		i = 0x00080000;
		GPSR2 |= i;
    
 		Interval(100000);   
    
		i = 0x00080000;
		GPCR2 = i;
    
		Interval(100000); 
			

	}
		
  

}