#include <stdio.h>

#define LED_CS1   	(*((volatile unsigned short int *)(0x10200000)))	//LED1 and LED2
#define LED_CS2   	(*((volatile unsigned short int *)(0x10300000)))	//LED1 and LED2
#define LED_CS3   	(*((volatile unsigned short int *)(0x10400000)))	//LED3 and LED4

#define KPDK_VALUE	(*((volatile unsigned char *)(0x41500008)))		//Direct Keypad
#define KPAS_VALUE	(*((volatile unsigned char *)(0x41500020)))		//Matrix Keypad
#define ERR (*((volatile unsigned int *)(0xffffffff)))

void DataAbort_Fuction(void) {
	LED_CS1 = 0x2479;
}

void IRQ_Function(void)
{
	char i;
	char j;
	unsigned short int kbd_buff;
	i = KPDK_VALUE;
	j = KPAS_VALUE;

	switch (i)
	{

		case 0x40:					//key-press 1
			kbd_buff=0x8F79;
			LED_CS2 = kbd_buff;
			LED_CS3 = 0x8F8F;
			break;

		case 0x02:  				//key-press 2
			kbd_buff=0x248F;
			LED_CS2 = kbd_buff;
			LED_CS3 = 0x8F8F;
			break;

		case 0x04:  				//key-press 3
			kbd_buff=0x8F30;
			LED_CS3 = kbd_buff;
			LED_CS2 = 0x8F8F;
			break;

		case 0x20: 					//key-press 4
			kbd_buff=0x198F;
			LED_CS3 = kbd_buff;
			LED_CS2 = 0x8F8F;
			break;

		default: break;


	}

	switch (j)
	{

		case 0x00:					//key-press 5
			kbd_buff=0x8F12;
			LED_CS2 = kbd_buff;
			LED_CS3 = 0x8F8F;
			break;

		case 0x01:  				//key-press 6
			kbd_buff=0x028F;
			LED_CS2 = kbd_buff;
			LED_CS3 = 0x8F8F;
			break;

		case 0x02:  				//key-press 7
			kbd_buff=0x8F78;
			LED_CS3 = kbd_buff;
			LED_CS2 = 0x8F8F;
			break;

		case 0x05: 					//key-press 8
			kbd_buff=0x008F;
			LED_CS3 = kbd_buff;
			LED_CS2 = 0x8F8F;
			break;

		default: break;

	}

}


void dummyOs(void)
{

	unsigned short int temp = 0x8F8F;

	LED_CS2 = temp;
	LED_CS3 = temp;
	Add = 0x00000001;

 	while(1)
   	{
			//waiting for interrupt
	}



}
