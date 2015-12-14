#define RTSR (*(volatile unsigned char * )(0x40900008))
extern void SerialInit(void);
extern void SerialOutputByte(const char );
extern void SerialOutputString(char * );

void dummyOs()
{
    char * string1 = "\r\nUART & Interrupt Experiment,Please Input from the keyboard\r\n";
    
    SerialInit();

    SerialOutputString(string1);
    
    while(1)
    { 
     //wait for the Interrupt from the Serial Input.
    }
 


}

