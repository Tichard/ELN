/************************************************************
**        ELN API SOURCE                             **
************************************************************/
#include <stdio.h>
#include "ELN_API.h"

/////////////////////////////////////////////////////////////
/// INIT FUNCTION
/////////////////////////////////////////////////////////////

char ELN_Init(unsigned long BaseAddress, long ELN_ic_id, long ELN_irq, alt_isr_func isr)
{
	// init interrupt
	if(alt_ic_isr_register(ELN_ic_id, ELN_irq, isr, NULL, NULL))return(-1);	
	
	//clears flag
	ELN_IRQState(BaseAddress);
	
	return((char)0);
}

/////////////////////////////////////////////////////////////
/// STATUS REGISTER
/////////////////////////////////////////////////////////////

alt_u8 ELN_Status(unsigned long BaseAddress)
{
	return((alt_u8)IORD_ELN_STATUS(BaseAddress));
}

char ELN_isBusy(unsigned long BaseAddress)
{
	return((char)((IORD_ELN_STATUS(BaseAddress) & ELN_STATUS_BUSY_MSK) >> ELN_STATUS_BUSY_OFST));
}

char ELN_isEmpty(unsigned long BaseAddress)
{
	return((char)((IORD_ELN_STATUS(BaseAddress) & ELN_STATUS_EMPTY_MSK) >> ELN_STATUS_EMPTY_OFST));
}

char ELN_isFull(unsigned long BaseAddress)
{
	return((char)((IORD_ELN_STATUS(BaseAddress) & ELN_STATUS_FULL_MSK) >> ELN_STATUS_FULL_OFST));
}

char ELN_IRQState(unsigned long BaseAddress)
{
	return((char)((IORD_ELN_STATUS(BaseAddress) & ELN_STATUS_IRQ_MSK) >> ELN_STATUS_IRQ_OFST));
}


/////////////////////////////////////////////////////////////
/// CONTROL REGISTER
/////////////////////////////////////////////////////////////

char ELN_setControl_div(unsigned long BaseAddress, alt_u8 reg)
{
	alt_u8 clock_div = (reg >> ELN_CTRL_CLK_DIV_OFST) & ELN_CTRL_CLK_DIV_MSK;
	
	if (clock_div <= 1 || clock_div >= 64) return((char)-1);
	else
	{
		IOWR_ELN_CONTROL(BaseAddress, reg);	
		return((char)0);
	}
}


alt_u8 ELN_getControl(unsigned long BaseAddress)
{
	alt_u8 reg = ((ELN_getClock_div(BaseAddress)<< ELN_CTRL_CLK_DIV_OFST)&ELN_CTRL_CLK_DIV_MSK ) | ((ELN_getIrqEn(BaseAddress) << ELN_CTRL_IRQEN_OFST)&ELN_CTRL_IRQEN_MSK) | ((ELN_getStart(BaseAddress) << ELN_CTRL_START_OFST)&ELN_CTRL_START_MSK);
	return(reg);
}


// Clock_div
char ELN_setClock_div(unsigned long BaseAddress, alt_u8 clock_div)
{	
	if (clock_div <= 1 || clock_div >= 64) return((char)-1);
	else
	{
		alt_u8 reg = ((clock_div << ELN_CTRL_CLK_DIV_OFST)&ELN_CTRL_CLK_DIV_MSK ) | ((ELN_getIrqEn(BaseAddress) << ELN_CTRL_IRQEN_OFST)&ELN_CTRL_IRQEN_MSK) | ((ELN_getStart(BaseAddress) << ELN_CTRL_START_OFST)&ELN_CTRL_START_MSK);
	
		IOWR_ELN_CONTROL(BaseAddress, reg);
		return((char)0);
	}
}


alt_u8 ELN_getClock_div(unsigned long BaseAddress)
{
	return((alt_u8)((IORD_ELN_CONTROL(BaseAddress)& ELN_CTRL_CLK_DIV_MSK) >> ELN_CTRL_CLK_DIV_OFST)) ;
}


// IRQEn
char ELN_setIrqEn(unsigned long BaseAddress, char IrqEn)
{
	alt_u8 reg = ((ELN_getClock_div(BaseAddress) << ELN_CTRL_CLK_DIV_OFST)&ELN_CTRL_CLK_DIV_MSK ) | ((IrqEn << ELN_CTRL_IRQEN_OFST)&ELN_CTRL_IRQEN_MSK)  | ((ELN_getStart(BaseAddress) << ELN_CTRL_START_OFST&ELN_CTRL_START_MSK) << ELN_CTRL_START_OFST);
	
	IOWR_ELN_CONTROL(BaseAddress, reg);
	return((char)0);
}


char ELN_getIrqEn(unsigned long BaseAddress)
{
	return((char)((IORD_ELN_CONTROL(BaseAddress) & ELN_CTRL_IRQEN_MSK ) >> ELN_CTRL_IRQEN_OFST));
}


// START
char ELN_setStart(unsigned long BaseAddress, char Start)
{
	alt_u8 reg = ((ELN_getClock_div(BaseAddress)<< ELN_CTRL_CLK_DIV_OFST)&ELN_CTRL_CLK_DIV_MSK ) | ((ELN_getIrqEn(BaseAddress) << ELN_CTRL_IRQEN_OFST)&ELN_CTRL_IRQEN_MSK) | ((Start << ELN_CTRL_START_OFST)&ELN_CTRL_START_MSK);
	
	IOWR_ELN_CONTROL(BaseAddress, reg);
	return((char)0);
}


char ELN_getStart(unsigned long BaseAddress)
{
	return((char)((IORD_ELN_CONTROL(BaseAddress) & ELN_CTRL_START_MSK ) >> ELN_CTRL_START_OFST));
}



/////////////////////////////////////////////////////////////
/// DATAIN REGISTER
/////////////////////////////////////////////////////////////

char ELN_writeData(unsigned long BaseAddress, alt_u8 data)
{	
	// return error if FIFO is Full
	if ( ELN_isFull(BaseAddress) ) return((char)-1);
		
	// else write data
	else IOWR_ELN_DATA(BaseAddress, data & ELN_DATA_MSK); return(0);
}
