/************************************************************
**        ELN API HEADER                             **
************************************************************/
#ifndef __ELN_API_H__
#define __ELN_API_H__

#include "ELN_regs.h"
#include "sys/alt_irq.h"        // interrupts

/************************************************************
    ELN_ISR_INSTALL: this macro installs the ELN Interrupt Service Routine
        name: instance name used in QSys (UPPER CASE LETTERS) (it will be extended with _ISR)
        cb: callback function
************************************************************/
#define ELN_ISR_INSTALL(name, cb)			\
	void name##_ISR(void* context){			\
		IORD_ELN_STATUS(name##_BASE);		\
		cb();					\
    }

/************************************************************
	ELN_INSTANCE_INIT: this macro initializes the ELN instance "name"
		name: instance name used in QSys (UPPER CASE LETTERS)
        Return: Success <=> 0, Error <=> -1
************************************************************/
#define ELN_INSTANCE_INIT(name)				\
	ELN_Init(					\
		name##_BASE,				\
		name##_IRQ_INTERRUPT_CONTROLLER_ID,	\
		name##_IRQ,				\
		name##_ISR				\
	);


/////////////////////////////////////////////////////////////
/// INIT FUNCTION
/////////////////////////////////////////////////////////////
char ELN_Init(unsigned long, long, long, alt_isr_func);

/////////////////////////////////////////////////////////////
/// STATUS REGISTER
/////////////////////////////////////////////////////////////
alt_u8 ELN_Status(unsigned long);
char ELN_isBusy(unsigned long);
char ELN_isEmpty(unsigned long);
char ELN_isFull(unsigned long);
char ELN_IRQState(unsigned long);

/////////////////////////////////////////////////////////////
/// CONTROL REGISTER
/////////////////////////////////////////////////////////////
char ELN_setControl(unsigned long, alt_u8);
alt_u8 ELN_getControl(unsigned long);
char ELN_setClock_div(unsigned long, alt_u8);
alt_u8 ELN_getClock_div(unsigned long);
char ELN_setIrqEn(unsigned long,char);
char ELN_getIrqEn(unsigned long);
char ELN_setStart(unsigned long, char);
char ELN_getStart(unsigned long);

/////////////////////////////////////////////////////////////
/// D_IN REGISTER
/////////////////////////////////////////////////////////////
char ELN_writeData(unsigned long, alt_u8);

#endif