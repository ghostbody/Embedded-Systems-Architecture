#define  FFRBR  (*(volatile unsigned long * )(0x40100000))
#define  FFTHR  (*(volatile unsigned long * )(0x40100000))
__irq void IRQ_Handler(void)

{
   char newchar;
   newchar = FFRBR;
   FFTHR  = newchar;


}