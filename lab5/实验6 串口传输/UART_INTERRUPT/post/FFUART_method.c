typedef unsigned long	ulong;
#define FFUART_BASE        0x40100000
#define FFRBR	         (*((volatile ulong *)(FFUART_BASE+0x00)))
#define FFTHR              (*((volatile ulong *)(FFUART_BASE+0x00)))
#define FFIER          	(*((volatile ulong *)(FFUART_BASE+0x04)))
#define FFIIR          	(*((volatile ulong *)(FFUART_BASE+0x08)))
#define FFFCR          	(*((volatile ulong *)(FFUART_BASE+0x08)))
#define FFLCR          	(*((volatile ulong *)(FFUART_BASE+0x0C)))
#define FFMCR          	(*((volatile ulong *)(FFUART_BASE+0x10)))
#define FFLSR          	(*((volatile ulong *)(FFUART_BASE+0x14)))
#define FFMSR          	(*((volatile ulong *)(FFUART_BASE+0x18)))
#define FFSPR          	(*((volatile ulong *)(FFUART_BASE+0x1C)))
#define FFISR          	(*((volatile ulong *)(FFUART_BASE+0x20)))
#define FFDLL          	(*((volatile ulong *)(FFUART_BASE+0x00)))
#define FFDLH          	(*((volatile ulong *)(FFUART_BASE+0x04)))
#define GPDR1              (*((volatile ulong *)(0x40E00010)))
#define GAFR1_L            (*((volatile ulong *)(0x40E0005C)))


void SerialInit(void){

   GPDR1 = 0x80;
   GAFR1_L = 0x8010;
  
   
   FFLCR = 0x00000003;
   
   FFFCR = 0x00000007;

   FFIER = 0x00000041; 

   FFMCR  = 0x08;  
////

   FFLCR |= 0x00000080;
 
   FFDLL = 0x8;  
   FFLCR &= 0xFFFFFF7F;

   
   while(! FFLSR & 0x00000040 );

   return;
}


void SerialOutputByte(const char c){

	
	while ((FFLSR & 0x00000020) == 0 );

	FFTHR = ((ulong)c & 0xFF);

	if (c=='\n') SerialOutputByte('\r');
}


void SerialOutputString(char * str)
{
   int i=0;
   while(*(str+i)!='\0')
     {
        SerialOutputByte(*(str+i));
        i++;
     }


}



int SerialInputByte(char *c){


	if((FFLSR & 0x00000001)==0){
		return 0;
	} else {

		*c = FFRBR;
		return 1;
	}
}



