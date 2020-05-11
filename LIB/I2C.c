/****************************************************************************/
/* Phase Dynamics, Inc.							    						*/
/* 1251 Columbia Dr.                                                        */
/* Richardson, TX 75081                                                     */
/* 972-680-1550    972-680-3262 fax                                         */
/*									    									*/
/* (C)2011 Phase Dynamics, Inc.						    					*/
/* This code is not to be used in any capacity without explicit consent by  */
/* Phase Dynamics, Inc.  Violators will be prosecuted to the fullest extent */
/* of the law.  Please contact Phase Dynamics, Inc. if you wish to use this */
/* code.  Thank you for your cooperation.                                   */
/*									    									*/
/* File Name: I2C.C							    							*/
/* 									    									*/
/* File Description:  This implements the I2C standard.  It has functions	*/
/* for transferring and reading bytes, setting up, reading and writing to	*/
/* the Real Time Clock and EEPROM.				    						*/
/*									    									*/
/****************************************************************************/
#define I2C_H

#include "GLBLS.H"
#include "I2C.H"

/****************************************************************************/
/* I2C TX BYTE																*/
/*                                                                          */
/* Description: Transfers one byte                                          */
/*                                                                          */
/* Arguments:   UNSIGNED CHAR b - byte                                      */
/*                                                                          */
/* Returns:  	BOOL ack - SDA_RX is true                                   */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
BOOL I2C_TX_BYTE(unsigned char b)
{
	int i;				/* bit counter 		*/
	unsigned char dat;	/* copy of b 		*/
	BOOL ack;			/* acknowledgement 	*/

	dat = b;

	for (i=0;i<8;i++)
	{
		if (dat&0x80)
		{/* mandatory brackets */
			SDA_TX_HI;
		}
		else
		{
			SDA_TX_LO;
		}

		I2C_PULSE;
		dat = dat<<1;
	}

	DISABLE_SDA_TX;
	SDA_TX_HI;
	I2C_WAITF;
	SCL_HI;
	I2C_WAITF;
	
	if (SDA_RX) 
		ack = FALSE;
	else 
		ack	= TRUE;
	
	SCL_LO;
	I2C_WAITF;
	ENABLE_SDA_TX;

	return ack;
}

/****************************************************************************/
/* I2C RX BYTE																*/
/*                                                                          */
/* Description: Recieves a byte                                             */
/*                                                                          */
/* Arguments:   UNSIGNED CHAR POINTER b - byte recieved                     */
/*              BOOL ack 				- acknowledge?                      */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void I2C_RX_BYTE(unsigned char* b, BOOL ack)
{
	int i;				/* bit counter 	 */
	unsigned char dat;	/* recieved data */

	dat = 0;
	DISABLE_SDA_TX;
	
	for (i=0;i<8;i++)
	{
		SCL_HI;
		I2C_WAITF;

		if (SDA_RX)	
			dat |= 0x01;

		SCL_LO;
		I2C_WAITF;
		dat = dat<<1;
	}

	dat = dat>>1;
	ENABLE_SDA_TX;
	
	if (ack)
	{
		SDA_TX_LO;
	}
	else
	{
		SDA_TX_HI;
	}
	
	I2C_PULSE;
	b[0] = dat;
}

/****************************************************************************/
/* Write I2C																*/
/*                                                                          */
/* Description: Transfers p over I2C		                                */
/*                                                                          */
/* Arguments:   INT addr 				- address to write to               */
/*              INT n	 				- number of bytes                   */
/*              UNSIGNED CHAR POINTER p - data                              */
/*                                                                          */
/* Returns:     BOOL r - TRUE if acks are true                              */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
BOOL Write_I2C(int addr, int n, unsigned char* p)
{
	int i;				/* byte counter  	 */
	unsigned char dat;	/* write address 	 */
	BOOL ack;			/* successful write? */
	BOOL r;				/* successful return?*/

	r = TRUE;
	I2C_START;

	while(TRUE)
	{
		dat = addr;						/* address without read bit set */
		ack = I2C_TX_BYTE(dat);

		if (!ack)
		{/* address error */
			r = FALSE;
			break;
		}

		ack = I2C_TX_BYTE(n);			/* the number of bytes to write */

		if (!ack)
		{/* n transfer error */
			r = FALSE;
			break;
		}

		for (i=0;i<n;i++)
		{
			ack = I2C_TX_BYTE(p[i]);	/* write the bytes */

			if (!ack)
			{/* data transfer error */
				r = FALSE;
				break;
			}
		}

		break;
	}

	I2C_STOP;

	return r;
}

/****************************************************************************/
/* READ I2C 																*/
/*                                                                          */
/* Description: Reads over I2C                                              */
/*                                                                          */
/* Arguments:   INT addr 				- source address                    */
/*              INT n 	 				- data size                         */
/*              UNSIGNED CHAR POINTER p - data                              */
/*                                                                          */
/* Returns:     BOOL r - TRUE if acks are true                              */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
BOOL Read_I2C(int addr, int n, unsigned char* p)
{
	int i,j;			/* byte counter; not used */
	unsigned char dat;	/* address source		  */
	BOOL ack;			/* successful ack?		  */
	BOOL r;				/* successful read?		  */

	r = TRUE;
	I2C_START;

	while(TRUE)
	{
		dat = addr | 0x01;				/* address with read bit set */
		ack = I2C_TX_BYTE(dat);
		
		if (!ack)
		{/* address error */
			r = FALSE;
			break;
		}

		ack = I2C_TX_BYTE(n);			/* the number of bytes to read */
		
		if (!ack)
		{/* n transfer error */
			r = FALSE;
			break;
		}

		for (i=0;i<(n-1);i++)
			I2C_RX_BYTE(&p[i],1);		/* read the bytes */
	
		I2C_RX_BYTE(&p[n-1],0);			/* the final byte to read */

		break;
	}

	I2C_STOP;

	return r;
}

/****************************************************************************/
/* WRITE DS1340																*/
/*                                                                          */
/* Description: Writes to the RTC over I2C                                  */
/*                                                                          */
/* Arguments:   INT addr 				- source address                    */
/*              INT n 					- source size                       */
/*              UNSIGNED CHAR POINTER p - source data                       */
/*                                                                          */
/* Returns:     BOOL r - TRUE if acks are true                              */
/*                                                                          */
/* Notes:       DS1340 is a model of Real Time Clock                        */
/*                                                                          */
/****************************************************************************/
BOOL Write_DS1340(int addr, int n, unsigned char* p)
{
	int i;				/* byte counter */
	unsigned char dat;	/* RTC Address  */
	BOOL ack;			/* Error checks */
	BOOL r;				/* Write success*/

	_GIEP;
	r = TRUE;
	I2C_START;

	while(TRUE)
	{
		dat = RTC_ADDR;						/* address without read bit set */
		ack = I2C_TX_BYTE(dat);

		if (!ack)
		{/* RTC address error */
			r = FALSE;
			break;
		}

		ack = I2C_TX_BYTE(addr);			/* set the pointer */

		if (!ack)
		{/* pointer error */
			r = FALSE;
			break;
		}

		for (i=0;i<n;i++)
		{
			ack = I2C_TX_BYTE(p[i]);		/* write the bytes */
			
			if (!ack)
			{/* write error */
				r = FALSE;
				break;
			}
		}

		break;
	}

	I2C_STOP;

	GIEP;
	return r;
}

/****************************************************************************/
/* READ DS1340																*/
/*                                                                          */
/* Description: Reads the Real Time Clock over I2C                          */
/*                                                                          */
/* Arguments:   INT addr 				- RTC address						*/
/*				INT n 					- size of data						*/
/*				UNSIGNED CHAR POINTER p - data                              */
/*                                                                          */
/* Returns:     BOOL r - TRUE if acks are true                              */
/*                                                                          */
/* Notes:       See WRITE DS1340 for notes.                                 */
/*                                                                          */
/****************************************************************************/
BOOL Read_DS1340(int addr, int n, unsigned char* p)
{
	int i,j;			/* byte counter 	*/
	unsigned char dat;	/* RTC address  	*/
	BOOL ack;			/* Check errors 	*/
	BOOL r;				/* Check opperation */

	_GIEP;
	r = TRUE;

	if (!Write_DS1340(addr, 0, p))
	{/* check RTC */
		GIEP;
		return FALSE;
	}

	I2C_START;

	while(TRUE)
	{/* perform read */
		dat = RTC_ADDR | 0x01;				/* address with read bit set */
		ack = I2C_TX_BYTE(dat);
		
		if (!ack)
		{/* address error */
			r = FALSE;
			break;
		}

		ack = TRUE;
		
		for (i=0;i<n;i++)
		{
			if (i==(n-1))				/* size error */ 
				ack = FALSE;
			
			I2C_RX_BYTE(&p[i],ack);		/* read the bytes */
		}

		break;
	}

	I2C_STOP;
	GIEP;

	return r;
}

/****************************************************************************/
/* RTC SETUP																*/
/*                                                                          */
/* Description: Sets up the Real Time Clock                                 */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     BOOL r - Checks operation.                                  */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
BOOL RTC_setup(void)
{
	BOOL r;		/* check operation */

	_GIEP;
	r = Read_DS1340(8,10,RTC);
 	
	if (!r)
	{/* RTC is not found */
		RTC_PRESENT = FALSE;
		GIEP;
		
		return r;	
	}

	RTC_PRESENT = TRUE;

	if (RTC[1] & 0x80)
		DIAGNOSTICS[1] |= ERROR2_TIME_RESET;
	else
		DIAGNOSTICS[1] &= 0xFFFFFFFF ^ ERROR2_TIME_RESET;
	
	RTC[9] |= 0x40;	/* enable FT output */
	
	Write_DS1340(8, 2, &RTC[0]); // Trickle Charger 0x08
	Write_DS1340(7, 1, &RTC[9]); // FT Register     0x07

	if (RTC[2]&0x80)
	{/* enable the osc if it is disabled */
		RTC[2] &= 0x3F;
		Write_DS1340(0, 1, &RTC[2]);
	}

	GIEP;
	return TRUE;
}

/****************************************************************************/
/* Write MC24C02 RECORD														*/
/*                                                                          */
/* Description: Writes to EEPROM                                            */
/*                                                                          */
/* Arguments:   INT addr 				- destination address				*/
/* 				UNSIGNED CHAR POINTER p - data                              */
/*                                                                          */
/* Returns:     BOOL r - Checks operation                                   */
/*                                                                          */
/* Notes: 		MC24C02 is a EEPROM chip                                    */
/*                                                                          */
/****************************************************************************/
BOOL Write_MC24C02_Record(int addr, unsigned char* p)
{
	int i,j,k,r;	/* counter; counter; address error accumulator; return	*/
	BOOL ack;		/* transfer check										*/

	_GIEP;

	for (i=0;i<256;i++)
		p[i] &= 0xFF;

	r = TRUE;

	for(j=0;j<16;j++)
	{
		k = 0;
		while(1)
		{/* wait until write cycle is completed */
			I2C_START;
			ack = I2C_TX_BYTE(addr);		/* address without read bit set */
			
			if (!ack)						/* address error */ 
				k++;
			else 
				break;						/* address OK, continue */
			
			if (k>=50)
			{/* allow 50 address errors */
				r = FALSE;
				break;
			}
			
			I2C_STOP;
		}
		
		if (r==FALSE)						/* address failure, return */ 
			break;

		ack = I2C_TX_BYTE(j*16);			/* set the pointer */
		
		if (!ack)
		{/* pointer error */
			r = FALSE;
			break;
		}

		for(i=0;i<16;i++)
		{
			ack = I2C_TX_BYTE(p[j*16+i]);
			
			if (!ack)
			{/* transfer error */
				r = FALSE;
				break;
			}
		}

		if (r==FALSE)						/* transfer failure, return */ 
			break;

		I2C_STOP;
	}

	I2C_STOP;
	GIEP;
	
	return r;
}

/****************************************************************************/
/* READ MC24C02 RECORD														*/
/*                                                                          */
/* Description: Reads from EEPROM                                           */
/*                                                                          */
/* Arguments:   INT addr 				- source address					*/
/*				UNSIGNED CHAR POINTER p - data                              */
/*                                                                          */
/* Returns:     BOOL r - Checks operation                                   */
/*                                                                          */
/* Notes:       See WRITE MC24C02 RECORD for notes.                         */
/*                                                                          */
/****************************************************************************/
BOOL Read_MC24C02_Record(int addr, unsigned char* p)
{
	int i,j,k,r;	/* byte counter; counter; address error accumulator; return */
	BOOL ack;		/* check I2C operations 									*/

	_GIEP;
	r = TRUE;

	for(j=0;j<16;j++)
	{
		k = 0;
	
		while(1)
		{/* wait until write cycle is completed */
			I2C_START;
			ack = I2C_TX_BYTE(addr);		/* address without read bit set */
		
			if (!ack)						/* accumulate address errrors 	*/ 
				k++;
			else 
				break;
			
			if (k>=50)
			{/* allow 50 address errors */
				r = FALSE;
				break;
			}
			
			I2C_STOP;
		}
		
		if (r==FALSE)						/* address failure, return */ 
			break;

		ack = I2C_TX_BYTE(j*16);			/* set the pointer */
		
		if (!ack)
		{/* pointer error */
			r = FALSE;
			break;
		}

		I2C_START;
		ack = I2C_TX_BYTE(addr|0x01);		/* address with read bit set */
		
		if (!ack)
		{/* address error */
			r = FALSE;
			break;
		}

		for (i=0;i<15;i++)
			I2C_RX_BYTE(&p[j*16+i],1);		/* read the bytes , WITH ACK*/
		
		I2C_RX_BYTE(&p[j*16+i],0);			/* the final byte to read, WITH NO ACK */

		I2C_STOP;
	}

	I2C_STOP;
	GIEP;

	return r;
}
