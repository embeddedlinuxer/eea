/****************************************************************************/
/* Phase Dynamics, Inc.							    						*/
/* 1251 Columbia Dr.                                                        */
/* Richardson, TX 75081                                                     */
/* 972-680-1550    972-680-3262 fax                                         */
/*									    									*/
/* (C)2015 Phase Dynamics, Inc.						    					*/
/* This code is not to be used in any capacity without explicit consent by  */
/* Phase Dynamics, Inc.  Violators will be prosecuted to the fullest extent */
/* of the law.  Please contact Phase Dynamics, Inc. if you wish to use this */
/* code.  Thank you for your cooperation.                                   */
/*									    									*/
/* File Name: SERIAL.C						    							*/
/* 									    									*/
/* File Description: This file handles the UART ports.  It sets them up,	*/
/* prepares transfers, receives data and everything inbetween.				*/
/*									    									*/
/****************************************************************************/
#define SERIAL_H
#include "GLBLS.H"
#include "SERIAL.H"

/****************************************************************************/
/* SETUP SERIAL PORT0														*/
/*                                                                          */
/* Description:  Sets up the registers that control Serial Port0            */
/*                                                                          */
/* Arguments:    void                                                       */
/*                                                                          */
/* Returns:      void                                                       */
/*                                                                          */
/* Notes:        See 12-41 SPRU031E for init/reconfig                       */
/*               SCLK must be greater than 10MHz for best accuracy on ADC	*/
/*                                                                          */
/****************************************************************************/
void Setup_Serial_Port0(void)
{
	SP0_RX_DATA  = 0x0000;
	*SP0_GC 	 = 0;								/* reset serial port */
	*SP0_XCTRL 	 = (CLKFUNC | DFUNC 	| FSFUNC);	/* enable TX CLK, DATA, FS */
	*SP0_RCTRL 	 = (CLKFUNC | DFUNC 	| FSFUNC);	/* enable RX CLK, DATA, FS */
    *SP0_TMRPER  = 0x00010001;						/* set SCLK to H1/(2*2) = CLOCK_TIMER FREQUENCY */
    *SP0_TMRCTRL = (XGO     | XC_P		| XCLKSRC | _XHLD   | RGO  | RC_P | _RHLD);
	*SP0_GC 	 = (FSXOUT	| XCLK_SRCE | XLEN_16 | RLEN_16 | RINT | XINT | _XRESET | _RRESET);
	DISABLE_RINT0;
   	DISABLE_XINT0;
	CLEAR_RINT0;
   	CLEAR_XINT0;
	SP0_RX_DATA  = *SP0_RXDATA & 0xFFFF;
	SP0_RX_DATA  = 0x0000;
}

/****************************************************************************/
/* CLEAR RX																	*/
/*                                                                          */
/* Description: Clears Reciever variables                                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void Clear_RX(int id)
{
	_GIEP;
	PORT[id].LONG_ADDRESS 	= FALSE;
	RXbuf[id].locked 		= FALSE;			/* unlock the buffer */
	PORT[id].RX_pending 	= FALSE;
	PORT[id].STAT 			= 0x00;
 
 if (FIFOSIZE)
    {
		NOPS; 
		UART[id][FCR] = 0x07;					/* clear FIFOS */
	}

	Clear(&RXbuf[id]);
	
	NOPS; 
	UART[id][IER]		 = 0x01;				/* disable THR, enable RHR interrupts */
	PORT[id].FLAG1 		 = 0;
	PORT[id].FLAG2 		 = 0;
	PORT[id].FLAG3 		 = 0;
	PORT[id].n 			 = 0;
	PORT[id].n_exp 		 = 0;
	PORT[id].r 			 = FALSE;
	PORT[id].c 			 = FALSE;
 	PORT[id].TMR_enabled = FALSE;

	if (!SA)
	{/* EEA - disable transmitter*/
		if (id==4)
		{/* set break */
			NOPS; 
			UART[id][LCR] |= 0x40;		
		}

		NOPS; 
		UART[id][MCR] &= 0xFE;					/* disable TX */
	}
	else
	{/* SA - disable transmitter */
		switch (id)
		{
			case 0: DISABLE_TXA; break;
			case 1: DISABLE_TXB; break;
		}
	}

	GIEP;
}

/****************************************************************************/
/* RESET PKT																*/
/*                                                                          */
/* Description: Resets port                                                 */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void RESET_PKT(int id)
{
	_GIEP;
	
	Clear_RX(id);
	
	TIMER1_COUNTER[id] 	 = PORT[id].TMR_Network_WDOG + PORT[id].TMR_Char;
	PORT[id].i 			 = PORT[id].i_main;
	PORT[id].pvector 	 = PORT[id].pvector_main;
	PORT[id].tvector 	 = PORT[id].tvector_main;
	PORT[id].TX_complete = TRUE;
	GIEP;
}

/****************************************************************************/
/* NO PORT																	*/
/*                                                                          */
/* Description: Clears port vectors                                         */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void No_Port(int id)
{
	PORT[id].i_main 		= 0;
	PORT[id].tvector_main 	= (int*)0;
	PORT[id].pvector_main 	= (int*)0;
	
	RESET_PKT(id);
 	
	PORT[id].TMR_enabled 	= FALSE;
}

/****************************************************************************/
/* SETUP UART																*/
/*                                                                          */
/* Description: Sets up serial channel.                                     */
/*                                                                          */
/* Arguments:   INT id 			- PORT ID									*/
/*				INT baud_rate 	- baud rate									*/
/*				INT num_bits 	- number of bits							*/
/*				INT parity 		- parity									*/
/*				FLOAT stop_bits - stop bits                                 */
/*                                                                          */
/* Returns:     INT error code depending on error, otherwise returns true   */
/*                                                                          */
/* Notes:       none.  Futher familiarity with function required.           */
/*                                                                          */
/****************************************************************************/
int Setup_UART(int id, int baud_rate, int num_bits, int parity, float stop_bits)
{
	int	div;		/* calculated baud rate */
	float temp;		/* temporary variable   */
	float n;		/* calculated num bits  */
	unsigned int x;	/* port check           */

	PORT[id].PRESENT = FALSE;

	if (SA && ((id<0) || (id>=2)))		/* check serial port range */ 
		return UART_ERROR_SELECT;
	else if ((id<0) || (id>=UART_MAX))  /* check UART range */
		return UART_ERROR_SELECT;

	_GIEP;

	/* write to scratchpad to detect if port exists */
	x 				= 0x00;
	NOPS; 
	UART[id][SPR]	= 0xAA;
	NOPS; 
	UART[id][SPR+1] = 0xFF; /* this write will affect the bus */
	NOPS; 
	x 				= UART[id][SPR] & 0xFF;
	
	if (x!=0xAA)
	{/* port doesn't exist */
		No_Port(id);
		GIEP;
		return;
	}
	
	NOPS; 
	UART[id][SPR]	= 0x55;
	NOPS; 
	UART[id][SPR+1]	= 0xFF; /* this write will affect the bus */
	NOPS; 
	x 				= UART[id][SPR] & 0xFF;
	
	if (x!=0x55)
	{/* port doesn't exist */
		No_Port(id);
		GIEP;
		return;
	}
	
	NOPS; 
	UART[id][SPR] 	 = 0x00;
	PORT[id].PRESENT = TRUE;
	 /* write to scratchpad to detect if port exists */

	DISABLE_INT0;
	DISABLE_EXTINT0;
	CLEAR_INT0;
    NOPS; 
	UART[id][IER] = 0x00;	/* disable interrupts */
	NOPS; 
	UART[id][MCR] = 0x08;	/* always enable bit 3 (the INT pin) otherwise the tri-state will cause intermittent /INT */

   	if ((id==4) && (!SA))
   	{/* EEA Port 4*/
		NOPS; 
		UART[id][LCR] = 0x40;
   	}
   	else
   	{/* All other ports */
		NOPS; 
		UART[id][LCR] = 0x00;
	}

	if ((num_bits<5) || (num_bits>8))
		num_bits = 8;
	
		 if (stop_bits==1.0);	/* do nothing */
	else if (stop_bits==2.0)
	{
		if ((num_bits<6) || (num_bits>8))
		{
			GIEP;
			return UART_ERROR_NUM_BITS;
		}
		
		NOPS; 
		UART[id][LCR] |= 0x04;
	}
	else if (stop_bits==1.5)
	{
		if (num_bits!=5)
		{
			GIEP;
			return UART_ERROR_NUM_BITS;
		}
		
		NOPS; 
		UART[id][LCR] |= 0x04;
	}
	else
		stop_bits = 1.0;
 	
	PORTCFG[id].N 	 = num_bits;
	PORTCFG[id].STP  = stop_bits;
    n 				 = num_bits + stop_bits + 2.0;
    num_bits 		-= 5;	/* setup for register - '00'=5 ... '11'=8 */
	NOPS; 
	UART[id][LCR] 	|= num_bits;

	switch (parity>>8)
	{
		case 'O':		/* ODD PARITY */
		{
			NOPS; 
			UART[id][LCR] 		|= 0x08;
			PORTCFG[id].Parity 	 = 'O'<<8;
			break;
		}
        case 'E':		/* EVEN PARITY */
		{
			NOPS; 
			UART[id][LCR] 		|= 0x18;
			PORTCFG[id].Parity 	 = 'E'<<8;
			break;
		}
        case '1':		/* FORCED MARK */
		case 'M':		/* FORCED MARK */
		{
			NOPS; 
			UART[id][LCR] 		|= 0x28;
			PORTCFG[id].Parity 	 = 'M'<<8;
			break;
		}
        case '0':		/* FORCED SPACE */
		case 'S':		/* FORCED SPACE */
		{
			NOPS; 
			UART[id][LCR] 		|= 0x38;
			PORTCFG[id].Parity 	 = 'S'<<8;
			break;
		}
        default:
		case 'N':		/* NO PARITY */
		{
			n 				  -= 1;
			PORTCFG[id].Parity = 'N'<<8;
			break;
		}
	}

	temp = round(UART_CLOCK/(float)baud_rate/16.0, 0);
	div  = temp;

	Set_Baud(id, div);

	PORT[id].actual_baud_rate = (float)(UART_CLOCK/div/16.0);

	if (FIFOSIZE)
	{
		NOPS; 
		UART[id][FCR] = 0x07;	/* enable FIFOs(16) RxTrig = 1 */
	}
	else
	{
		NOPS; 
		UART[id][FCR] = 0x00;	/* no FIFOs*/
	}

	PORT[id].ERROR_COUNT 	= 0;
	PORT[id].WDOG_COUNT 	= 0;
	PORT[id].INV_CMD_COUNT 	= 0;
	PORT[id].INV_PKT_COUNT 	= 0;
	PORT[id].SUCCESS 		= 0;
	PORT[id].NUM_RETRIES 	= 0;

	Clear_RX(id);
	Clear(&TXbuf[id]);
	
	PORT[id].TX_complete = TRUE;
    NOPS; 
    UART[id][IER] 		 = 0x01;	/* enable RHR, disable THR interrupts */
	NOPS; 
	UART[id][MCR] 		|= 0x08;	/* enable INT */
    PORT[id].TMR_enabled = FALSE;
    PORTCFG[id].n_bits 	 = n;

	if (PORTCFG[id].NETWDOG.calc_val<0.1) 
		VAR_Update(&PORTCFG[id].NETWDOG, DEFAULT_NETWDOG, 0, 0);
	
	if (PORTCFG[id].PREFIX.calc_val<0.0) 
		VAR_Update(&PORTCFG[id].PREFIX, DEFAULT_PREFIX, 0, 0);
	
	if (PORTCFG[id].SUFFIX.calc_val<0.0) 
		VAR_Update(&PORTCFG[id].SUFFIX, DEFAULT_SUFFIX, 0, 0);
	
	if (PORTCFG[id].EOT_Delay.calc_val<0.0) 
		VAR_Update(&PORTCFG[id].EOT_Delay, DEFAULT_EOT, 0, 0);
	
	if (PORTCFG[id].Retry_Time.calc_val<0.0) 
		VAR_Update(&PORTCFG[id].Retry_Time, 0.500, 0, 0);
	
	if (PORTCFG[id].poll_time<100) 
		PORTCFG[id].poll_time = 100;
	
	if (PORTCFG[id].N_retry<0) 
		PORTCFG[id].N_retry = 3;

/* todo: if baud>19200 then use minimum of (1.5*0.0005 + CT) for wdog gap and minimum (3.5*0.0005) for eot */
	temp 						= ceil(n*PORTCFG[id].NETWDOG.calc_val/PORT[id].actual_baud_rate/TIME1);
	PORT[id].TMR_Network_WDOG 	= (int)temp;
    temp 						= ceil(n*PORTCFG[id].EOT_Delay.calc_val/PORT[id].actual_baud_rate/TIME1);
	PORT[id].TMR_EOT_Delay 		= (int)temp;
    temp 						= ceil(n*PORTCFG[id].PREFIX.calc_val/PORT[id].actual_baud_rate/TIME1);
	PORT[id].TMR_Prefix_Delay 	= (int)temp;
    temp 						= ceil(n*PORTCFG[id].SUFFIX.calc_val/PORT[id].actual_baud_rate/TIME1);
	PORT[id].TMR_Suffix_Delay 	= (int)temp;
    temp 						= ceil(n/PORT[id].actual_baud_rate/TIME1);
	PORT[id].TMR_Char 			= (int)temp;
    PORT[id].IGNORE_RX 			= FALSE;
	PORT[id].BUSY 				= FALSE;
	PORT[id].broadcast 			= FALSE;
	PORT[id].FLAG1 				= FALSE;
	PORT[id].FLAG2 				= FALSE;
	PORT[id].FLAG3 				= FALSE;
	PORT[id].func 				= 0;
	PORT[id].i 					= 0;
	PORT[id].i_main 			= 0;
	PORT[id].STAT 				= 0;
	PORT[id].DAT 				= 0;
	PORT[id].pvector 			= NULL_PTR;
	PORT[id].pvector_main 		= NULL_PTR;
	PORT[id].tvector 			= NULL_PTR;
	PORT[id].tvector_main 		= NULL_PTR;
	PORT[id].fvector 			= NULL_PTR;
	PORT[id].nr 				= 0;
	ENABLE_INT0;
	ENABLE_EXTINT0;
	GIEP;
}

/****************************************************************************/
/* SET BAUD																	*/
/*                                                                          */
/* Description: Sets the baud rate for a port                               */
/*                                                                          */
/* Arguments:   INT id  - PORT ID											*/
/*				INT div - baud rate                                         */
/*                                                                          */
/* Returns:     INT error - if div is outside allowed range                 */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
int Set_Baud(int id, int div)
{
	unsigned char temp1; /* temporary variable */

	if (div>65535) 
		return UART_ERROR_BAUD;
	
	if (div<=0) 
		return UART_ERROR_BAUD;

	_GIEP;
	NOPS; 
	temp1 			= UART[id][LCR];
	NOPS; 
	UART[id][LCR]	= 0x80;
	NOPS; 
	UART[id][DLL]	= (unsigned char)div;
	NOPS; 
	UART[id][DLM]	= (unsigned char)(div>>8);
	NOPS; 
	UART[id][LCR]	= temp1;
	GIEP;
}

/****************************************************************************/
/* PROCESS UINT																*/
/*                                                                          */
/* Description: Process UART Interrupt                                      */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void Process_UINT(int id)
{
	int i;
	int j;
	unsigned int MODEMstatus;
	unsigned int LINEstatus;
	unsigned int INTstatus;

	if (SA && ((id<0) || (id>=2)))		/* SA ports 0, 1 allowed */ 
		return;
	else if ((id<0) || (id>=UART_MAX))  /* EEA maximum UART ports allowed */
		return;

	if (!PORT[id].PRESENT)				/* return if port is not present */ 
		return;		

	while(TRUE)
	{
		NOPS; 
		INTstatus = UART[id][ISR] & 0x0F;

		switch(INTstatus)
		{
			case 0x02:	/* THR interrupt */
			{
				if 	(PORT[id].TX_complete)
					break;
				
				if (TXbuf[id].n<=0)
				{
					TIMER1_COUNTER[id]   = 1;
					PORT[id].TMR_enabled = TRUE;	/* enable suffix timer */
				}
				else
				{
					if (FIFOSIZE) //if FIFOSIZE != 0
					{
						for (i=0;i<FIFOSIZE-1;i++)
						{
							if (TXbuf[id].n>0)
							{
								NOPS; 
								UART[id][THR] = Get(&TXbuf[id]);
							}
							else
								break;
						}
					}
					else
					{
						NOPS; 
						UART[id][THR] = Get(&TXbuf[id]);
					}
				}
				break;
			}
            case 0x04:	/* RHR interrupt */
			case 0x0C:	/* RX TIMEOUT interrupt */
			{
				if ((RXbuf[id].locked) || (UART[id][MSR]&0x80==0x00))	/* !Carrier Detect */
				{
					NOPS; 
					UART[id][FCR] = 0x07;								/* clear FIFOS */
					
					break;
				}

				while(TRUE)
				{
					NOPS; 
					LINEstatus = (UART[id][LSR] & 0xFF);
					
					if (!(LINEstatus & 0x01))		/* no data in receive FIFO */
						break; 
					
					NOPS; 
					PORT[id].DAT 	 = UART[id][RHR] & 0xFF;
					PORT[id].DAT 	|= (LINEstatus<<8) | (TIMER1_COUNTER[2]<<16); //???
                    PORT[id].STAT 	|= LINEstatus & 0x9E;

					if (!PORT[id].IGNORE_RX)
					{
						TIMER1_COUNTER[id] = PORT[id].TMR_Network_WDOG + PORT[id].TMR_Char;

						Put(&RXbuf[id], PORT[id].DAT, 1);

						if (LINEstatus & 0x9E)
							 PORT[id].ERROR_COUNT++;
						
					    if (RXbuf[id].n>0)
					    {
							switch(id)
							{
								case 0:
								{
									vect_p0 = PORT[0].pvector;
									
									asm("		.global _vect_p0  ");
								    PUSH_ALL;
							    	asm("	ldi		0, AR2 		  ");	/* select the port */
								    asm("	ldp		_vect_p0      ");
								    asm("	ldi		@_vect_p0, R0 ");
								    asm("	callnz	R0		   	  ");	/* call if vect != NULL */
								    POP_ALL;
								    
									break;
								}
								case 1:
								{
									vect_p1 = PORT[1].pvector;
									
									asm("		.global _vect_p1  ");
								    PUSH_ALL;
							    	asm("	ldi		1, AR2 		  ");	/* select the port */
								    asm("	ldp		_vect_p1      ");
								    asm("	ldi		@_vect_p1, R0 ");
								    asm("	callnz	R0		      ");	/* call if vect != NULL */
								    POP_ALL;
								    
									break;
								}
								case 2:
								{
									vect_p2 = PORT[2].pvector;
									
									asm("		.global _vect_p2  ");
								    PUSH_ALL;
							    	asm("	ldi		2, AR2 		  ");	/* select the port */
								    asm("	ldp		_vect_p2      ");
								    asm("	ldi		@_vect_p2, R0 ");
								    asm("	callnz	R0		      ");	/* call if vect != NULL */
								    POP_ALL;
								    
									break;
								}
								case 3:
								{
									vect_p3 = PORT[3].pvector;
									
									asm("		.global _vect_p3  ");
								    PUSH_ALL;
							    	asm("	ldi		3, AR2 		  ");	/* select the port */
								    asm("	ldp		_vect_p3      ");
								    asm("	ldi		@_vect_p3, R0 ");
								    asm("	callnz	R0		      ");	/* call if vect != NULL */
								    POP_ALL;
								    
									break;
								}
								case 4:
								{
									vect_p4 = PORT[4].pvector;
									
									asm("		.global _vect_p4  ");
								    PUSH_ALL;
							    	asm("	ldi		4, AR2 		  ");	/* select the port */
								    asm("	ldp		_vect_p4      ");
								    asm("	ldi		@_vect_p4, R0 ");
								    asm("	callnz	R0		      ");	/* call if vect != NULL */
								    POP_ALL;
								    
									break;
								}
								case 5:
								{
									vect_p5 = PORT[5].pvector;
									
									asm("		.global _vect_p5  ");
								    PUSH_ALL;
							    	asm("	ldi		5, AR2 		  ");	/* select the port */
								    asm("	ldp		_vect_p5      ");
								    asm("	ldi		@_vect_p5, R0 ");
								    asm("	callnz	R0		      ");	/* call if vect != NULL */
								    POP_ALL;
								    
									break;
								}
								case 6:
								{
									vect_p6 = PORT[6].pvector;
									
									asm("		.global _vect_p6  ");
								    PUSH_ALL;
							    	asm("	ldi		6, AR2 		  ");	/* select the port */
								    asm("	ldp		_vect_p6      ");
								    asm("	ldi		@_vect_p6, R0 ");
								    asm("	callnz	R0		      ");	/* call if vect != NULL */
								    POP_ALL;
								    
									break;
								}
								case 7:
								{
									vect_p7 = PORT[7].pvector;
									
									asm("		.global _vect_p7  ");
								    PUSH_ALL;
							    	asm("	ldi		7, AR2 		  ");	/* select the port */
								    asm("	ldp		_vect_p7      ");
								    asm("	ldi		@_vect_p7, R0 ");
								    asm("	callnz	R0		      ");	/* call if vect != NULL */
								    POP_ALL;
								    
									break;
								}
							}
						}
					}
				}
				
				break;
			}
            case 0x06:	/* LSR interrupt */
			{
				NOPS; 
				LINEstatus 		= (UART[id][LSR] & 0xFF);
				PORT[id].STAT  |= LINEstatus & 0x9E;
				
				break;
			}
            case 0x00:	/* MSR interrupt */
			{
				NOPS; 
				MODEMstatus = UART[id][MSR] & 0xFF;
				
				break;
			}
			default:
			{
				return;
			}
		}
	}
}

/****************************************************************************/
/* WDOG P																	*/
/*                                                                          */
/* Description: Increment watchdog if not locked and transfer complete.     */
/*              ( ^ This is an inaccurate description!)          		    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void WDOG_P(int id)
{
	_GIEP;

	if (!RXbuf[id].locked && PORT[id].TX_complete)
	{
		if (PORT[id].RX_pending) 
			PORT[id].WDOG_COUNT++;
		
		RESET_PKT(id);
	}
	
	GIEP;
}

/****************************************************************************/
/* TX S1																	*/
/*                                                                          */
/* Description: executes fvector on the port.                               */
/*                                                                          */
/* Arguments: 	INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void TX_S1(int id)
{
	char c;	/* not used */

	_GIEP;

	if (!SA)
	{/* EEA - disable transmitter*/
		if (id==4)
		{/* set break */
			NOPS; 
			UART[id][LCR] |= 0x40;		
		}

		NOPS; 
		UART[id][MCR] &= 0xFE;			/* disable TX */
	}
	else
	{/* SA - disable transmitter*/
		switch (id)
		{
			case 0: DISABLE_TXA; break;
			case 1: DISABLE_TXB; break;
		}
	}

	if (PORT[id].fvector)
	{/* execute final vector */
		switch(id)
		{
			case 0:
			{
				vect_p0 		 = PORT[id].fvector;
				PORT[id].fvector = NULL_PTR;
				
				asm("		.global _vect_p0  ");
			    PUSH_ALL;
		    	asm("	ldi		0, AR2 		  ");	/* select the port */
			    asm("	ldp		_vect_p0      ");
			    asm("	ldi		@_vect_p0, R0 ");
			    asm("	callnz	R0		   	  ");	/* call if vect != NULL */
			    POP_ALL;
			    
				break;
			}
			case 1:
			{
				vect_p1 		 = PORT[id].fvector;
				PORT[id].fvector = NULL_PTR;
				
				asm("		.global _vect_p1  ");
			    PUSH_ALL;
		    	asm("	ldi		1, AR2 		  ");	/* select the port */
			    asm("	ldp		_vect_p1      ");
			    asm("	ldi		@_vect_p1, R0 ");
			    asm("	callnz	R0		      ");	/* call if vect != NULL */
			    POP_ALL;
			    
				break;
			}
			case 2:
			{
				vect_p2 		 = PORT[id].fvector;
				PORT[id].fvector = NULL_PTR;
				
				asm("		.global _vect_p2  ");
			    PUSH_ALL;
		    	asm("	ldi		2, AR2 		  ");	/* select the port */
			    asm("	ldp		_vect_p2      ");
			    asm("	ldi		@_vect_p2, R0 ");
			    asm("	callnz	R0		      ");	/* call if vect != NULL */
			    POP_ALL;
			    
				break;
			}
			case 3:
			{
				vect_p3 		 = PORT[id].fvector;
				PORT[id].fvector = NULL_PTR;
				
				asm("		.global _vect_p3  ");
			    PUSH_ALL;
		    	asm("	ldi		3, AR2 		  ");	/* select the port */
			    asm("	ldp		_vect_p3      ");
			    asm("	ldi		@_vect_p3, R0 ");
			    asm("	callnz	R0		   	  ");	/* call if vect != NULL */
			    POP_ALL;
			    
				break;
			}
			case 4:
			{
				vect_p4 		 = PORT[id].fvector;
				PORT[id].fvector = NULL_PTR;
				
				asm("		.global _vect_p4  ");
			    PUSH_ALL;
		    	asm("	ldi		4, AR2 		  ");	/* select the port */
			    asm("	ldp		_vect_p4      ");
			    asm("	ldi		@_vect_p4, R0 ");
			    asm("	callnz	R0		      ");	/* call if vect != NULL */
			    POP_ALL;
			    
				break;
			}
			case 5:
			{
				vect_p5 		 = PORT[id].fvector;
				PORT[id].fvector = NULL_PTR;
				
				asm("		.global _vect_p5  ");
			    PUSH_ALL;
		    	asm("	ldi		5, AR2 		  ");	/* select the port */
			    asm("	ldp		_vect_p5      ");
			    asm("	ldi		@_vect_p5, R0 ");
			    asm("	callnz	R0		      ");	/* call if vect != NULL */
			    POP_ALL;
			    
				break;
			}
			case 6:
			{
				vect_p6 		 = PORT[id].fvector;
				PORT[id].fvector = NULL_PTR;
				
				asm("		.global _vect_p6  ");
			    PUSH_ALL;
		    	asm("	ldi		6, AR2 		  ");	/* select the port */
			    asm("	ldp		_vect_p6      ");
			    asm("	ldi		@_vect_p6, R0 ");
			    asm("	callnz	R0		      ");	/* call if vect != NULL */
			    POP_ALL;
			    
				break;
			}
			case 7:
			{
				vect_p7 		 = PORT[id].fvector;
				PORT[id].fvector = NULL_PTR;
				
				asm("		.global _vect_p7  ");
			    PUSH_ALL;
		    	asm("	ldi		7, AR2 		  ");	/* select the port */
			    asm("	ldp		_vect_p7      ");
			    asm("	ldi		@_vect_p7, R0 ");
			    asm("	callnz	R0		      ");	/* call if vect != NULL */
			    POP_ALL;
			    
				break;
			}
		}
	}

	RESET_PKT(id);

	GIEP;
}

/****************************************************************************/
/* TX S																		*/
/*                                                                          */
/* Description: Sets TIMER1_COUNTER                                         */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Sets tvector to TX_S1                                       */
/*                                                                          */
/****************************************************************************/
void TX_S(int id)
{
	_GIEP;
	NOPS;
	
	if (!(UART[id][LSR] & 0x40))	/* make sure TSR and THR are empty */
		TIMER1_COUNTER[id] = 1;
	else
	{
		TIMER1_COUNTER[id] 	= PORT[id].TMR_Suffix_Delay;
		PORT[id].tvector 	= (int*)TX_S1;
	}

 	PORT[id].TMR_enabled = TRUE;
	GIEP;

	return;
}

/****************************************************************************/
/* TX P1																	*/
/*                                                                          */
/* Description: Enable THR, disable RHR interrupts                          */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Sets tvector to TX_S                                        */
/*                                                                          */
/****************************************************************************/
void TX_P1(int id)
{
	_GIEP;
	PORT[id].tvector = (int*)TX_S;
	NOPS; 
	UART[id][IER]	 = 0x02;	/* enable THR, disable RHR interrupts */
	NOPS; 
	UART[id][THR] 	 = Get(&TXbuf[id]);
	GIEP;
}

/****************************************************************************/
/* TX P																		*/
/*                                                                          */
/* Description: Select carrier detect and enable transmitter                */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Sets tvector to TX_P1                                       */
/*                                                                          */
/****************************************************************************/
void TX_P(int id)
{
	_GIEP;

	switch (id)
	{/* carrier detect method */
		case 0:
		{/* Stand alone Analyzer */
			if (SA && B202_PORT)
			{
				if (B202_CARRIER)	/* Carrier Detect */
				{/* carrier detect status for BELL202 */
					TIMER1_COUNTER[id] 	 = 1;
				 	PORT[id].TMR_enabled = TRUE;
					GIEP;
					
					return;
				}
			}
			
			break;
		}
		case 4:
		{// Extended Electronics Analyzer
			if (!SA)
			{
				NOPS;
				
				if (UART[id][MSR]&0x80)	// Carrier Detect
				{// carrier detect status for BELL202
					TIMER1_COUNTER[id] 	 = 1;
				 	PORT[id].TMR_enabled = TRUE;
					GIEP;
					
					return;
				}
				else
				{// turn OFF break
					NOPS; 
					UART[id][LCR]&=(0x40^0xFF);	//clear bit 6 - DA	
				}
			}
			
			break;
		}
	}

	if (!SA)
	{/* EEA - enable transmitter */
		NOPS; 
		UART[id][MCR] |= 0x01;
	}
	else
	{/* SA - enable transmitter */
		switch (id)
		{/* choose port */
			case 0: ENABLE_TXA; break;
			case 1: ENABLE_TXB; break;
		}
	}

	PORT[id].tvector	 = (int*)TX_P1;
	TIMER1_COUNTER[id]	 = PORT[id].TMR_Prefix_Delay;
 	PORT[id].TMR_enabled = TRUE;

	GIEP;
}

/****************************************************************************/
/* PREPARE TX																*/
/*                                                                          */
/* Description: prepares UART for transmission                              */
/*                                                                          */
/* Arguments:   INT id 		  - PORT ID										*/
/*				BOOL skip_CRC - skips the CRC routine                       */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       tvector is set to TX_P                                      */
/*                                                                          */
/****************************************************************************/
void Prepare_TX(int id, BOOL skip_CRC)
{
	unsigned int tmp0;

	_GIEP;

	RESET_PKT(id);

	if (!PORT[id].broadcast)			/* broadcast msgs do not require a response */
	{/* setup for transmission */
		if (!skip_CRC)
		{
			tmp0 = TXbuf[id].CRC16;
			
			Put(&TXbuf[id], tmp0, 1);	/* CRCH */
			Put(&TXbuf[id], tmp0>>8, 1);/* CRCL */
		}

		NOPS; 
		UART[id][IER] 		 = 0x00;	/* disable THR, disable RHR interrupts */
		PORT[id].tvector 	 = (int*)TX_P;
		TIMER1_COUNTER[id] 	 = PORT[id].TMR_EOT_Delay;
		PORT[id].TX_complete = FALSE;
	 	PORT[id].TMR_enabled = TRUE;
	}

	GIEP;
}

/****************************************************************************/
/* PORT DEFAULTS															*/
/*                                                                          */
/* Description: Sets ports to default state.                                */
/*                                                                          */
/* Arguments:   BOOL FORCE - forces port defaults                           */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
/****************************************************************************/
/* Port Setup                                               				*/
/****************************************************************************/
void Port_Defaults(BOOL FORCE)
{
	int port, i;	/* port counter; MASTER_Q counter */

	_GIEP; 
	DISABLE_WDOG;

	if (!FORCE)
	{/* Don't force port defaults */
		for (port=0;port<UART_MAX;port++)
		{/* set up each port */
			if (DIPSWITCH[0])
			{/* set port to a known configuration */
				if ( (SA && B202_PORT && (port==0)) || (!SA && (port==4)) ) /* BELL202 */
				{/* standalone analyzer AND port 0 OR EEA AND port 4 */
					DIO_HART_5.val = TRUE;
					
					HART_5(port);

					PORT[port].Slave = 0;
					PORTCFG[port].Parity = 'O'<<8;
					
					VAR_Update(&PORTCFG[port].Slave_ID,   0.0, 				 0, 0);
					VAR_Update(&PORTCFG[port].Baud_Rate,  1200.0, 			 0, 0);
					VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_H_EOT, 	 0, 0);
					VAR_Update(&PORTCFG[port].PREFIX, 	  DEFAULT_H_PREFIX,  0, 0);
					VAR_Update(&PORTCFG[port].SUFFIX, 	  DEFAULT_H_SUFFIX,  0, 0);
					VAR_Update(&PORTCFG[port].NETWDOG, 	  DEFAULT_H_NETWDOG, 0, 0);
					VAR_Update(&PORTCFG[port].Retry_Time, 0.500, 			 0, 0);
				}
				else if (!SA && (port==5))	/* IrDA */
				{/* EEA AND port 5*/
					VAR_Update(&PORTCFG[port].Slave_ID, 1.0, 0, 0);
					
					PORT[port].Slave = 0;
					
					VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);
					
					PORTCFG[port].Parity = 'N'<<8;
					
					VAR_Update(&PORTCFG[port].EOT_Delay, 0.0, 0, 0);
					VAR_Update(&PORTCFG[port].PREFIX, 0.0, 0, 0);
					VAR_Update(&PORTCFG[port].SUFFIX, 0., 0, 0);
					VAR_Update(&PORTCFG[port].NETWDOG, 10.0, 0, 0);
					VAR_Update(&PORTCFG[port].Retry_Time, 2.0, 0, 0);
				}
				else
				{/* all other ports */
					VAR_Update(&PORTCFG[port].Slave_ID, 1.0, 0, 0);
					
					PORT[port].Slave = 1;
					
					if ((port==1) && (!SA) && (!ALYESKA.ENABLED)) 
						VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);
					else 
						VAR_Update(&PORTCFG[port].Baud_Rate, 9600.0, 0, 0);
					
					PORTCFG[port].Parity = 'N'<<8;
					
					VAR_Update(&PORTCFG[port].EOT_Delay, DEFAULT_EOT, 0, 0);
					VAR_Update(&PORTCFG[port].PREFIX, DEFAULT_PREFIX, 0, 0);
					VAR_Update(&PORTCFG[port].SUFFIX, DEFAULT_SUFFIX, 0, 0);
					VAR_Update(&PORTCFG[port].NETWDOG, DEFAULT_NETWDOG, 0, 0);
					VAR_Update(&PORTCFG[port].Retry_Time, 0.500, 0, 0);
				}
			}
		}
	}
	else
	{/* force port defaults */
		for (port=0;port<UART_MAX;port++)
		{/* Go through all ports */
			PORT[port].BUSY = FALSE;

			if ((SA && B202_PORT && (port==0)) || (!SA && (port==4))) 
			{/* BELL202 - SA: Port 0 - EEA: Port 4*/
				VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
				
				DIO_HART_5.val = TRUE;
				
				HART_5(port);
                VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_specific_bps, 0.01, 0.01, var_no_alarm);
				
				VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 300, 115200, 300); //fix 05-08-2014
				
				VAR_Update(&PORTCFG[port].Baud_Rate, 1200.0, 0, 0);
			}
			else if (!SA && (port==5))	
			{/* IrDA - EEA: Port 5*/
				VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
				VAR_Setup_Unit(&PORTCFG[port].Slave_ID, u_mfgr_specific_none, 0, 0, 0, 0);
                VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_specific_bps, 0.01, 0.01, var_no_alarm);
				VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 115200, 115200, 115200);
				VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);
			}
			else
			{/* All other ports */
				VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
				VAR_Setup_Unit(&PORTCFG[port].Slave_ID, u_mfgr_specific_none, 247, 1, 247, 1);
                VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_specific_bps, 0.01, 0.01, var_no_alarm);
				VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 300, 115200, 300);
				
				if ((port==1) && (!SA) && (!ALYESKA.ENABLED))				/* EEA: Port 1 w/o Alyeska - IDEC port 115200 Baud*/ 
					VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);
				else 
					VAR_Update(&PORTCFG[port].Baud_Rate, 9600.0, 0, 0); 	/* All other ports 9600 Baud */
			}

			PORTCFG[port].STP 	= 1;
            PORTCFG[port].N 	= 8;

			if ((port==1) && ALYESKA.ENABLED) 
				PORTCFG[port].N_retry = 0;
			else 
				PORTCFG[port].N_retry = 3;

			PORTCFG[port].poll_time = 100;
            PORTCFG[port].timeout = 1;

			VAR_Initialize(&PORTCFG[port].EOT_Delay, c_not_used, u_generic_not_used, 100.0, 100.0, var_no_alarm);
            VAR_Initialize(&PORTCFG[port].PREFIX, c_time, u_mfgr_specific_ct, 100.0, 100.0, var_no_alarm);
            VAR_Initialize(&PORTCFG[port].SUFFIX, c_time, u_mfgr_specific_ct, 100.0, 100.0, var_no_alarm);
			
			/* note: Suffix is set upon THR (FIFO empty).  Suffix will wait for THR & TSR to be empty, however.             */
			/*       Therefore, it is best to have a minimum of 1 for Suffix Time so that the last character is transmitted */

			VAR_Initialize(&PORTCFG[port].NETWDOG, 		c_time, 		  u_mfgr_specific_ct, 	100.0, 100.0, var_no_alarm);
            VAR_Initialize(&PORTCFG[port].Retry_Time, 	c_time, 		  u_time_sec, 		    100.0, 100.0, var_no_alarm);
            VAR_Initialize(&PORTCFG[port].Num_Retry, 	c_not_classified, u_mfgr_specific_none, 1.0,   1.0,   var_no_alarm|var_round);
			VAR_Update(&PORTCFG[port].Num_Retry, 3.00, 0, 0);
            sprintf(PORTCFG[port].Slave_ID.name,	"C%d Slave ID",		port+1);	//R337
            PORTCFG[port].Slave_ID.name_r = 337;
			
			sprintf(PORTCFG[port].Baud_Rate.name, 	"C%d Baud Rate", 	port+1);	//R334
			PORTCFG[port].Baud_Rate.name_r = 334;
			
			sprintf(PORTCFG[port].EOT_Delay.name, 	"C%d Reply Delay", 	port+1);	//R94
			PORTCFG[port].EOT_Delay.name_r = 94;
			
			sprintf(PORTCFG[port].PREFIX.name, 		"C%d Prefix", 		port+1);	//R335
			PORTCFG[port].PREFIX.name_r = 335;
			
			sprintf(PORTCFG[port].SUFFIX.name, 		"C%d Suffix", 		port+1);	//R338
			PORTCFG[port].SUFFIX.name_r = 338;
			
			sprintf(PORTCFG[port].NETWDOG.name, 	"C%d Watchdog", 	port+1);	//R339
			PORTCFG[port].NETWDOG.name_r = 339;
			
			sprintf(PORTCFG[port].Retry_Time.name, 	"C%d Retry Time", 	port+1);	//R336
			PORTCFG[port].Retry_Time.name_r = 336;
			
			sprintf(PORTCFG[port].Num_Retry.name, 	"C%d #Retries", 	port+1);	//101
			PORTCFG[port].Num_Retry.name_r = 101;
			

			PORTCFG[port].EOT_Delay.bound_hi_set 	= 255.0;
			PORTCFG[port].PREFIX.bound_hi_set		= 255.0;
			PORTCFG[port].SUFFIX.bound_hi_set		= 255.0;
			PORTCFG[port].NETWDOG.bound_hi_set		= 255.0;
			PORTCFG[port].Retry_Time.bound_hi_set	= 10.0;
            PORTCFG[port].EOT_Delay.bound_lo_set 	= 0.0;
			PORTCFG[port].PREFIX.bound_lo_set		= 0.0;
			PORTCFG[port].SUFFIX.bound_lo_set		= 0.0;
			PORTCFG[port].NETWDOG.bound_lo_set		= 1.5;
			PORTCFG[port].Retry_Time.bound_lo_set	= 0.1;

			if ((SA && B202_PORT && (port==0)) || (!SA && (port==4))) 
			{/* BELL202 SA: Port 0 - EEA: Port 4*/
				LOOP_ENABLED.val 	= TRUE;
				AO[0].MANUAL 		= FALSE;
				
				VAR_Update(&PORTCFG[port].Slave_ID, 0.0, 0, 0);
				
				PORT[port].Slave 		= 0;
				PORTCFG[port].Parity 	= 'O'<<8;
				
				VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_H_EOT,	 0, 0);
				VAR_Update(&PORTCFG[port].PREFIX,	  DEFAULT_H_PREFIX,  0, 0);
				VAR_Update(&PORTCFG[port].SUFFIX, 	  DEFAULT_H_SUFFIX,  0, 0);
				VAR_Update(&PORTCFG[port].NETWDOG, 	  DEFAULT_H_NETWDOG, 0, 0);
				VAR_Update(&PORTCFG[port].Retry_Time, 0.500, 			 0, 0);
				
				HCHANGE[0] 		= TRUE;
				HCHANGE[1] 		= TRUE;
                NUM_PREAMBLE_MS = 5;
				NUM_PREAMBLE_SM = 5;
				HCHANGE_COUNTER = 0;
			}
			else if (!SA && (port==5))	
			{/* IrDA EEA: Port 5 */
				VAR_Update(&PORTCFG[port].Slave_ID, 0.0, 0, 0);
				
				PORT[port].Slave 		= 0;
				PORTCFG[port].Parity 	= 'N'<<8;
				
				VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_EOT, 		0, 0);
				VAR_Update(&PORTCFG[port].PREFIX,	  DEFAULT_PREFIX, 	0, 0);
				VAR_Update(&PORTCFG[port].SUFFIX, 	  DEFAULT_SUFFIX, 	0, 0);
				VAR_Update(&PORTCFG[port].NETWDOG, 	  DEFAULT_NETWDOG, 	0, 0);
				VAR_Update(&PORTCFG[port].Retry_Time, 2.00, 			0, 0);
			}
			else
			{/* All other ports */
				VAR_Update(&PORTCFG[port].EOT_Delay, DEFAULT_EOT, 	 0, 0);
				VAR_Update(&PORTCFG[port].PREFIX, 	 DEFAULT_PREFIX, 0, 0);
				VAR_Update(&PORTCFG[port].SUFFIX, 	 DEFAULT_SUFFIX, 0, 0);
				
				PORT[port].Slave 	 = 1;
                PORTCFG[port].Parity = 'N'<<8;
				
				VAR_Update(&PORTCFG[port].Slave_ID,   PORT[port].Slave, 0, 0);
				VAR_Update(&PORTCFG[port].NETWDOG, 	  DEFAULT_NETWDOG,  0, 0);
				VAR_Update(&PORTCFG[port].Retry_Time, 0.400, 			0, 0);
			}
		}
	}

	for (port=0;port<UART_MAX;port++)
	{/* update all port vectors and serial number */
		PORT[port].SNUM 		= SN_PIPE;
		PORT[port].tvector_main = NULL_PTR;
		PORT[port].pvector_main = NULL_PTR;
		PORT[port].tvector 		= NULL_PTR;
		PORT[port].pvector 		= NULL_PTR;
		PORT[port].fvector 		= NULL_PTR;
	}

	List_Init(&LIST_MASTER_EMPTY);
	
	for (i=0;i<MASTER_Q_LEN;i++)
	{
		QUEUE_MASTER[i].prev 	= 0;
		QUEUE_MASTER[i].next 	= 0;
		QUEUE_MASTER[i].rxvect 	= NULL_PTR;
		QUEUE_MASTER[i].txvect 	= NULL_PTR;
		QUEUE_MASTER[i].n 		= 0;
		QUEUE_MASTER[i].slave	= 0;
		QUEUE_MASTER[i].func	= 0;
		QUEUE_MASTER[i].addr 	= 0;
		QUEUE_MASTER[i].num 	= 0;
		QUEUE_MASTER[i].v[0] 	= 0.0;
		QUEUE_MASTER[i].v[1] 	= 0.0;
		QUEUE_MASTER[i].v[2] 	= 0.0;
		QUEUE_MASTER[i].v[3] 	= 0.0;
		QUEUE_MASTER[i].v[4] 	= 0.0;
		QUEUE_MASTER[i].flt_ptr = (float*)0;
		QUEUE_MASTER[i].int_ptr = (int*)0;

		List_Add(&LIST_MASTER_EMPTY, (GENERIC*)(&QUEUE_MASTER[i]));
	}

	for (port=0;port<UART_MAX;port++)
		List_Init(&PORT[port].MASTER);
	
	if ((!SA && (DIO_HART_5.val && (PORT[4].Slave==0))) || (SA && (DIO_HART_5.val && (PORT[0].Slave==0))))
		AO[0].MANUAL = FALSE;
	else if ((!SA && (DIO_HART_5.val && (PORT[4].Slave!=0))) || (SA && (DIO_HART_5.val && (PORT[0].Slave!=0))))
		AO[0].MANUAL = TRUE;
	else
	{
		if (LOOP_ENABLED.val) 
			AO[0].MANUAL = FALSE;
		else 
			AO[0].MANUAL = TRUE;
	}

	/* reset the UARTS (min 200ns) */
	URESET;
	{asm("	RPTS    100			");\
	 asm("	NOP					");}
    _URESET;

	if (!SA)
	{/* EEA */
		HART_Initialize(4);

		for (i=0;i<4;i++) 
			Modbus_Initialize(i);

		/* todo: change this to IrDA initialize */
		Setup_UART(5, 115200, 8, 'N', 1);

		Modbus_Initialize(6);	/* dedicated OIT port */
		Modbus_Initialize(7);	/* dedicated PDI port */

		if (PORT[7].PRESENT) 
			PDI_id = 7;
		else if (PORT[0].PRESENT) 
			PDI_id = 0;
	}
	else
	{/* Stand Alone Analyzer */
		PDI_id = 1;
		
		Modbus_Initialize(1);	/* dedicated OIT port */

		if (B202_PORT)
			HART_Initialize(0);
		else
			Modbus_Initialize(0);
	}

	ENABLE_WDOG; GIEP;
}
