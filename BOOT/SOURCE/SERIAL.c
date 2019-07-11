/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#define SERIAL_H

#include "GLBLS.H"
#include "SERIAL.H"

int Setup_UART(int baud)
{
	int	div;
	double n;
	double temp;
	unsigned char u;
	int id;

	_GIEP;

	n = (double)11.0;

	for (id=0;id<UART_MAX;id++)
	{/* disable all transmitter enables for all ports!!!!! */

		NOPS; UART[id][IER] = 0x00;		/* disable interrupts */
		NOPS; UART[id][MCR] = 0x08;		/* enable the INT pin (remove from 3-state) */

		if (HW_VER&0x80)
		{/* standalone */
			switch (id)
			{
				case 0: DISABLE_TXA; break;
				case 1: DISABLE_TXB; break;
			}
		}
		else
		{
			if (id==4)
			{
				NOPS; UART[id][LCR] |= 0x40;		/* set break */
			}

			NOPS; UART[id][MCR] &= 0xFE;			/* disable TX */
		}
	}

	if (HW_VER&0x80)
	{
		BOOTPORT = 1;
	}
	else
	{/* write to scratchpad to detect if port exists */
		BOOTPORT = 7;
		NOPS;
		UART[BOOTPORT][SPR] = 0xAA;
		NOPS;
		UART[BOOTPORT][SPR+1] = 0xFF; /* this write will affect the bus-keepers */
		NOPS;
		u = UART[BOOTPORT][SPR] & 0xFF;
		if (u!=0xAA)
		{
			BOOTPORT = 0;
		}
		NOPS;
		UART[BOOTPORT][SPR] = 0x00;
	}

	NOPS;
	UART[BOOTPORT][LCR] = 0x00;

	NOPS;
	UART[BOOTPORT][LCR] |= 0x03;

	NOPS;
	UART[BOOTPORT][LCR] |= 0x08;

	temp = (UART_CLOCK/baud/16.0);
	div = f_ciel(temp);
	/* Note: 1. there is a delay from writing the received data into the RHR by one clock
	 *          cycle at (UART_CLOCK/div) frequency! this is more apparent in non-fifo mode
	 *       2. it has been mirrored and a delay has been created in the Xilinx
	 */
	Set_Baud(div);

	Clear_RX();
	Clear(&PORT.TXbuf);
	PORT.TX_complete = TRUE;

	NOPS;
	UART[BOOTPORT][FCR] = 0x07;	/* enable FIFOs(16) RxTrig = 1 */

	NOPS; UART[BOOTPORT][IER] = 0x01;	/* enable RHR, disable THR interrupts */
	NOPS; UART[BOOTPORT][MCR] |= 0x08;	/* enable INT */

	temp = n*NETWDOG/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_Network_WDOG = temp;

	temp = n*EOT/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_EOT_Delay = temp;

	temp = n*PREFIX/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_Preamble_Delay = temp;

	temp = n*SUFFIX/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_Suffix_Delay = temp;

	temp = n/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_Char = temp;

	ENABLE_INT0;
	ENABLE_EXTINT0;

	PORT.TMR_enabled = FALSE;

	GIEP;
}

void Clear_RX()
{
	_GIEP;
	PORT.RX_pending = FALSE;
	PORT.STAT = 0x00;
	Clear(&PORT.RXbuf);
	NOPS;
	UART[BOOTPORT][FCR] = 0x07;	/* clear FIFOS */
	GIEP;

	if (HW_VER&0x80)
	{/* standalone */
		DISABLE_TXB;
	}
	else
	{
		NOPS; UART[BOOTPORT][MCR] &= 0xFE;			/* disable TX */
	}
}

int Set_Baud(int div)
{
	unsigned char temp1;

	NOPS;
	temp1 = UART[BOOTPORT][LCR];
	NOPS;
	UART[BOOTPORT][LCR] = 0x80;
	NOPS;
	UART[BOOTPORT][DLL] = (unsigned char)div;
	NOPS;
	UART[BOOTPORT][DLM] = (unsigned char)(div>>8);
	NOPS;
	UART[BOOTPORT][LCR] = temp1;
}

void Process_UINT(void)
{
	int i;
	int j;
	unsigned int LINEstatus;
	unsigned int INTstatus;

	while (TRUE)
	{
		NOPS;
		INTstatus = UART[BOOTPORT][ISR] & 0x0F;

		switch(INTstatus)
		{
			case 0x02:	/* THR interrupt */
			{
				if 	(PORT.TX_complete) break;

				if (PORT.TXbuf.n<=0)
				{
					TIMER1_COUNTER = PORT.TMR_Suffix_Delay + PORT.TMR_Char;
					PORT.TMR_enabled = TRUE;	/* enable suffix timer */
				}
				else
				{
					for (i=0;i<FIFOSIZE-1;i++)
					{
						if (PORT.TXbuf.n>0)
						{
							NOPS;
							UART[BOOTPORT][THR] = Get(&PORT.TXbuf);
						}
						else
						{
							break;
						}
					}
				}
				break;
			}
			
		    case 0x04:	/* RHR interrupt */
			case 0x0C:	/* RX TIMEOUT interrupt */
			{
				while(TRUE)
				{
					NOPS;
					LINEstatus = (UART[BOOTPORT][LSR] & 0xFF);
					if (!(LINEstatus & 0x01)) break; /* no data in receive FIFO */
	
					TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	
					NOPS;
					Put(&PORT.RXbuf, (UART[BOOTPORT][RHR] & 0xFF) | (LINEstatus<<8));
	
					PORT.STAT |= LINEstatus & 0x9E;
	
				    if (PORT.RXbuf.n>0)
				    {
						vect_p1 = PORT.pvector;
					    PUSH_ALL;
						asm("		.global _vect_p1  ");
					    asm("	ldp		_vect_p1      ");
					    asm("	ldi		@_vect_p1, R0 ");
					    asm("	callnz	R0		      ");	/* call if vect != NULL */
					    POP_ALL;
					}
				}
				break;
			}

			case 0x06:	/* LSR interrupt */
			{
				NOPS;
				LINEstatus = (UART[BOOTPORT][LSR] & 0xFF);
	
				PORT.STAT |= LINEstatus & 0x9E;
				break;
			}

			default:
			{
				return;
			}
		}
	}
}

float f_ciel(double s)
{
	double y;
	return (modf(s, &y) > 0.0 ? y + 1.0 : y);
}
