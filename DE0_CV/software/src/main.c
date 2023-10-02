// Global include
#include "DE0_CV_includes.h"
// API specific include
#include "ELN_API.h"

#define ms_sleep(delay)		(usleep(1000*delay))
#define sec_sleep(delay)	(ms_sleep(1000*delay))

void cb(void){
	printf("\nData transmitted succesfully\n");	
	ELN_Status(TRANSMITTER_BASE); // clear flag
}

ELN_ISR_INSTALL(TRANSMITTER, cb);


int main(void){
	
	printf("\n*** START OF PROGRAM ***\n");	
	
	printf("Initialisation...\n");
	ELN_INSTANCE_INIT(TRANSMITTER);  //Initialisation
	
	printf("setting clock divisor...\n");
	ELN_setClock_div(TRANSMITTER_BASE, 16); // set clock_div = 16	
	
	printf("Enabling IRQ...\n");
	ELN_setIrqEn(TRANSMITTER_BASE, 1); // disable interruptions
	
	ms_sleep(500);
	
	int i;	
	while(1)
	{
		//Ask for input string
		printf("\nenter string to send :\n");	
		char* data;	
		scanf("%s[^\r]", data);
		printf("sending %i bytes\n",strlen(data));
		
		for(i=0; i<strlen(data);)
		{
			
			//writing data if data is transmit, get next char
			if(ELN_writeData(TRANSMITTER_BASE,(alt_u8)data[i]) == 0)
			{printf("%c",(alt_u8)data[i]);i++;}
			
			
			//start transmitting if FIFO is full
			if(ELN_isFull(TRANSMITTER_BASE)) // if FIFO is full
			{
				ELN_setStart(TRANSMITTER_BASE,1);
				// wait for the end
				while(ELN_isBusy(TRANSMITTER_BASE)){}
			}
			
		}
		
		//transmit the rest if FIFO is not empty
		if(!ELN_isEmpty(TRANSMITTER_BASE)) // if FIFO is full
		{
			ELN_setStart(TRANSMITTER_BASE,1);
			// wait for the end
			while(ELN_isBusy(TRANSMITTER_BASE)){}
		}		
		free(data);
		ms_sleep(50);
		printf("\n-----------------------\n");
	}
	
	printf("\n*** END OF PROGRAM ***\n");
}