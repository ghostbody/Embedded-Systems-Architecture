typedef unsigned short	ulong;
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

#define FFFOR          	(*((volatile ulong *)(FFUART_BASE+0x24)))
#define FFABR          	(*((volatile ulong *)(FFUART_BASE+0x28)))
#define FFACR          	(*((volatile ulong *)(FFUART_BASE+0x2c)))

#define FFDLL          	(*((volatile ulong *)(FFUART_BASE+0x00)))
#define FFDLH          	(*((volatile ulong *)(FFUART_BASE+0x04)))




void SerialInit(void){

int i=1000;

   FFIER = 0x40;

while (i>0)i--;

   
   FFLCR = 0x3;

   
   FFFCR = 0xc1;

  
   FFLCR |= 0x80;

 
   FFDLL = 0x8;

   FFDLH = 0x0;
   
   FFLCR &= 0x7F;

   while (!(FFLSR & 0x40));

   return;
}


void SerialOutputByte(const char c)
{

	
	while ((FFLSR & 0x20) == 0 );

	FFTHR = (c & 0xFF);

}

void SerialOutputString(char * str)
{
   int i=0;
   while( (*(str+i))!='\0')
     {
        SerialOutputByte(*(str+i));
        i++;
     }


}


int SerialInputByte(char *c)
{
	if((FFLSR & 0x1)==0)
	{
		return 0;
	} 
	else 
	{

		*c = FFRBR;
		return 1;
	}
}


