/***************************************************
**	ELN                                     	  **
**  8 bits device for Altera/Avalon interface     **
****************************************************

****************************************************
**  Register mapping                              **
****************************************************
*   Register      |  Reg Num  |  Access  |  Reset  *
******************|***********|**********|**********
*   ELNStatus        |    0      |  R       | *
*   ELNControl       |    1      |  R/W     | *
*   ELNFIFO        |    2      |  W       | *
***************************************************/
//note 1: internal Ctrl register is initialized at 0


#ifndef __ELN_REGS_H__
#define __ELN_REGS_H__

#include <io.h>

#define	ELNStatus		0
#define	ELNControl		1
#define	ELNFIFO			2


/****************************************************
**        Access Macros                            **
****************************************************/
//ELNStatus Register, 0, RO
#define	IORD_ELN_STATUS(base)			IORD_8DIRECT(base, ELNStatus)

//ELNControl Register, 1, R/W
#define	IORD_ELN_CONTROL(base)			IORD_8DIRECT(base, ELNControl)
#define	IOWR_ELN_CONTROL(base, reg)		IOWR_8DIRECT(base, ELNControl, reg)

//ELNFIFO Register, 1, W0
#define	IOWR_ELN_DATA(base, data)		IOWR_8DIRECT(base, ELNFIFO, data)

/****************************************************
**        Mask & Offsets                           **
****************************************************/
//ELNStatus Register, RO
#define ELN_STATUS_BUSY_MSK   			(0x01)
#define ELN_STATUS_BUSY_OFST  			(0)
#define ELN_STATUS_EMPTY_MSK   			(0x02)
#define ELN_STATUS_EMPTY_OFST      		(1)
#define ELN_STATUS_FULL_MSK   			(0x04)
#define ELN_STATUS_FULL_OFST  			(2)
#define ELN_STATUS_IRQ_MSK         		(0x08)
#define ELN_STATUS_IRQ_OFST        		(3)

//CTRL Register, WO/RO
#define	ELN_CTRL_START_MSK			(0x01)
#define	ELN_CTRL_START_OFST			(0)
#define	ELN_CTRL_IRQEN_MSK			(0x02)
#define	ELN_CTRL_IRQEN_OFST			(1)
#define	ELN_CTRL_CLK_DIV_MSK			(0xFC)
#define	ELN_CTRL_CLK_DIV_OFST			(2)

//ELNFIFO Register, R/W
#define ELN_DATA_MSK				(0xFF)
#define ELN_DATA_OFST           		(0)

#endif /* __ELN_REGS_H__ */
