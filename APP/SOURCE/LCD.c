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
/* File Name: LCD.C							    							*/
/* 									    									*/
/* File Description: This file details the physical and data layer of the 	*/
/* 4 line LCD.  It implements how the I2C interacts with the hardware and	*/
/* it implements an interface on which to send lines and characters using	*/
/* the I2C implementations described in this file.  Finally it implements	*/
/* the higher level functions of sending lines and characters individually	*/
/* and initializes the LCD during startup.  IT HAS NOTHING TO DO WITH THE	*/
/* IDEC OIT COLOR LCD TOUCHSCREEN IN ANY WAY!!!	    						*/
/*									    									*/
/****************************************************************************/
#define LCD_H

#include "GLBLS.H"
#include "I2C.H"
/****************************************************************************************/
/* Note: these are "ideal, using the logic analyzer, it is nearly 400kHz                */
/****************************************************************************************/
/*
#define I2C_WAIT		{asm("		PUSH    AR1			");\
						 asm("		LDI		54,AR1		");\
						 asm("		.word	6E46FFFFh	");\
						 asm("		POP		AR1			");}

#define I2C_WAIT_LO		{asm("		PUSH    AR1			");\
						 asm("		LDI		15,AR1		");\
						 asm("		.word	6E46FFFFh	");\
						 asm("		POP		AR1			");}

#define I2C_WAIT_HI		{asm("		PUSH    AR1			");\
						 asm("		LDI		4,AR1		");\
						 asm("		.word	6E46FFFFh	");\
						 asm("		POP		AR1			");}
*/
/****************************************************************************************/
/* 54,15,4 = ideal                       	*/
/* 15, 4,4 = almost perfect               	*/
/*  8, 3,3 = borderline, short cables only 	*/
#define I2C_WAIT		{asm("		PUSH    AR1			");\
						 asm("		LDI		15,AR1		");\
						 asm("		.word	6E46FFFFh	");\
						 asm("		POP		AR1			");}

#define I2C_WAIT_LO		{asm("		PUSH    AR1			");\
						 asm("		LDI		4,AR1		");\
						 asm("		.word	6E46FFFFh	");\
						 asm("		POP		AR1			");}

#define I2C_WAIT_HI		{asm("		PUSH    AR1			");\
						 asm("		LDI		4,AR1		");\
						 asm("		.word	6E46FFFFh	");\
						 asm("		POP		AR1			");}

#define I2C_START_5	{SCL_HI_5; SDA_TX_HI_5; ENABLE_SCL_TX_5; ENABLE_SDA_TX_5; I2C_WAIT; SDA_TX_LO_5; I2C_WAIT; SCL_LO_5; I2C_WAIT;}
#define I2C_STOP_5	{ENABLE_SDA_TX_5; SDA_TX_LO_5; I2C_WAIT; SCL_HI_5; DISABLE_SCL_TX_5; I2C_WAIT; SDA_TX_HI_5; DISABLE_SDA_TX_5; I2C_WAIT;}
#define I2C_PULSE_5	{SCL_HI_5; I2C_WAIT_HI; SCL_LO_5; I2C_WAIT_LO;}
/****************************************************************************************/
/****************************************************************************/
/* I2C TX BYTE 5															*/
/*                                                                          */
/* Description: gets a byte and does some I2C operations on it.             */
/*                                                                          */
/* Arguments:   UNSIGNED CHAR b                                             */
/*                                                                          */
/* Returns:     BOOL ack - returns acknowledgement                          */
/*                                                                          */
/* Notes:       Need to scour the I2C macros in this to really know what	*/
/*				it does.                                                    */
/*                                                                          */
/****************************************************************************/
BOOL I2C_TX_BYTE_5(unsigned char b)
{
	int i;				/* counter 		*/
	unsigned char dat;	/* working byte */
	BOOL ack;			/* acknowledge? */

	dat = b;			/* copy byte 	*/

	for (i=0;i<8;i++)
	{
		if (dat&0x80)
		{/* required brackets */	
			SDA_TX_HI_5;
		}
		else
		{
			SDA_TX_LO_5;
		}
		
		I2C_PULSE_5;
		dat = dat<<1;
	}

	DISABLE_SDA_TX_5;
	SDA_TX_HI_5;
	I2C_WAIT_HI;
	SCL_HI_5;
	I2C_WAIT_HI;
	
	if (SDA_RX_5) 
	{/* required brackets */	
		ack = FALSE;
	}
	else
	{ 
		ack = TRUE;
	}
	
	SCL_LO_5;
	I2C_WAIT_LO;
	ENABLE_SDA_TX_5;

	return ack;
}

/****************************************************************************/
/* I2C RX BYTE 5															*/
/*                                                                          */
/* Description: Manipulates a byte of data and then sets it to the argument */
/*                                                                          */
/* Arguments:   UNSIGNED CHAR POINTER b - byte vector                       */
/*				BOOL ack				- acknowledge?                      */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Like the previous function, the I2C macros really need to be*/
/* 				analyzed to know what this function really does.			*/
/*                                                                          */
/****************************************************************************/
void I2C_RX_BYTE_5(unsigned char* b, BOOL ack)
{
	int i;				/* counter 	*/
	unsigned char dat;	/* data 	*/

	dat = 0;

	DISABLE_SDA_TX_5;
	
	for (i=0;i<8;i++)
	{
		SCL_HI_5;
		I2C_WAIT_HI;
		
		if (SDA_RX_5)
			dat |= 0x01;
		
		SCL_LO_5;
		I2C_WAIT_LO;
		dat = dat<<1;
	}

	dat = dat>>1;
	ENABLE_SDA_TX_5;
	
	if (ack)
	{/* required brackets */
		SDA_TX_LO_5;
	}
	else
	{
		SDA_TX_HI_5;
	}
	
	I2C_PULSE_5;
	b[0] = dat;
}

/****************************************************************************/
/* WRITE I2C 5																*/
/*                                                                          */
/* Description: Writes n bytes over I2C                                     */
/*                                                                          */
/* Arguments:   INT addr 				- address                           */
/*              INT n					- number of bytes                   */
/*              UNSIGNED CHAR POINTER p - byte vector                       */
/*                                                                          */
/* Returns:     BOOL r - TRUE if I2C_TX_BYTE_5 successful                   */
/*                                                                          */
/* Notes:       I2C_TX_BYTE_5 does the writing.  Why in LCD.c and not I2C.c?*/
/*                                                                          */
/****************************************************************************/
BOOL Write_I2C_5(int addr, int n, unsigned char* p)
{
	int i;				/* counter 					*/
	unsigned char dat;	/* copy of address 			*/
	BOOL ack;			/* acknowledge? 			*/
	BOOL r;				/* return - TRUE or FALSE 	*/

	r = TRUE;
	I2C_START_5;

	while(TRUE)
	{
		dat = addr;						/* address without read bit set */
		ack = I2C_TX_BYTE_5(dat);
		
		if (!ack)
		{
			r = FALSE;
			break;
		}

		for (i=0;i<n;i++)
		{
			ack = I2C_TX_BYTE_5(p[i]);	/* write the bytes */
			
			if (!ack)
			{
				r = FALSE;
				break;
			}
		}

		break;
	}

	I2C_STOP_5;

	return r;
}

/****************************************************************************/
/* READ I2C 5																*/
/*                                                                          */
/* Description: Reads n bytes over I2C                                      */
/*                                                                          */
/* Arguments:   INT addr 				- address                           */
/*              INT n 					- number of bytes                   */
/*              UNSIGNED CHAR POINTER p - byte vector                       */
/*                                                                          */
/* Returns:     BOOL r - TRUE if I2C_TX_BYTE_5 successful                   */
/*                                                                          */
/* Notes:       I2C_TX_BYTE_5 reads the address.  I2C_RX_BYTE_5 does the 	*/
/*				reading.  Why is this in LCD.c instead of I2C.c?			*/
/*                                                                          */
/****************************************************************************/
BOOL Read_I2C_5(int addr, int n, unsigned char* p)
{
	int i,j;			/* counter; not used 	*/
	unsigned char dat;	/* copy of address 		*/
	BOOL ack;			/* acknowledged? 		*/
	BOOL r;				/* return true or false */

	r = TRUE;
	I2C_START_5;

	while(TRUE)
	{
		dat = addr | 0x01;				/* address with read bit set */
		ack = I2C_TX_BYTE_5(dat);
	
		if (!ack)
		{
			r = FALSE;
			break;
		}

		for (i=0;i<(n-1);i++)
			I2C_RX_BYTE_5(&p[i],1);		/* read the bytes */
	
		I2C_RX_BYTE_5(&p[n-1],0);		/* the final byte to read */

		break;
	}

	I2C_STOP_5;

	return r;
}

/****************************************************************************/
/* LCD CMD																	*/
/*                                                                          */
/* Description: Sends a command to the LCD                                  */
/*                                                                          */
/* Arguments:   INT d - command                                             */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Sends LCD vector over I2C to execute commands.              */
/*                                                                          */
/****************************************************************************/
void LCD_CMD(int d)
{
	if (!LCD_PRESENT) 				/* check if LCD exists */
		return;

	LCD[0]  = 0xFF;
	LCD[1] &=(0xFF^LCDE^LCDRS);		/* clear enable, addr */
	LCD[1] |= LCDRW;				/* set R/W */
	LCD[1] |= LCD_READ_MASK;
	
	Write_I2C_5(LCD_ADDR, 2, LCD);
	Read_I2C_5(LCD_ADDR, 2, LCD);	/* UPDATE inputs */
	
	LCD_DIPSW = LCD[1]&LCD_READ_MASK;
	LCD[1] 	 |= LCDE;				/* set enable */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] &= (0xFF^LCDE);			/* clear enable */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[0]  = d;					/* COMMAND */
	LCD[1] &= (0xFF^LCDRW^LCDRS);	/* clear R/W, addr */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] |= LCDE;					/* set enable */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] &= (0xFF^LCDE);			/* clear enable */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);
}

/****************************************************************************/
/* LCD CHAR																	*/
/*                                                                          */
/* Description: Sends a character to the LCD                                */
/*                                                                          */
/* Arguments:   INT d - character                                           */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:      none                                                         */
/*                                                                          */
/****************************************************************************/
void LCD_CHAR(int d)
{
	if (!LCD_PRESENT)				/* check if LCD exists */ 
		return;

	LCD[0]  = 0xFF;
	LCD[1] &= (0xFF^LCDE^LCDRS);	/* clear enable, addr */
	LCD[1] |= LCDRW;				/* set R/W */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);
	
	LCD[1] |= LCDE;					/* set enable */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] &= (0xFF^LCDE);			/* clear enable */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[0]  = d;					/* CHAR */
	LCD[1] &= (0xFF^LCDRW);			/* clear R/W */
	LCD[1] |= LCDRS;				/* set addr */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] |= LCDE;					/* set enable */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] &= (0xFF^LCDE);			/* clear enable */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] &= (0xFF^LCDRS);			/* clear addr */
	
	Write_I2C_5(LCD_ADDR, 2, LCD);
}

/****************************************************************************/
/* LCD STR																	*/
/*                                                                          */
/* Description: Puts a 20 character line on the LCD screen.                 */
/*                                                                          */
/* Arguments:   CHAR POINTER s 	- 20 character string						*/
/*				INT line 		- LCD line			                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void LCD_STR(char* s, int line)
{
	int addr;	/* line address 					*/
	int i,j;	/* character counter; line counter 	*/
	char c;		/* current character 				*/

	switch(line)
	{/* select line number */
		case 0:
		{
			addr = 0x80;
			break;
		}
		case 1:
		{
			addr = 0xC0;
			break;
		}
		case 2:
		{
			addr = 0x94;
			break;
		}
		case 3:
		{
			addr = 0xD4;
			break;
		}
		default:
			return;
	}

	LCD_CMD(addr);

	for (i=0;i<20;i++)
	{/* put each character on the line */
		{/* mirror to modbus */
			j = 10*line+(i/2);
			c = s[i] & 0xFF;
			
			if (c== 0xDF) 
				c = 0xB0;	/* translate degree symbol */
			
			if (MSVE.CURSOR_ENABLED && (line==MSVE.CURSOR_ROW) && (i==MSVE.CURSOR_COL) && ((LCD_CNT%12)>2)) 
				c = '_';

			if (i%2)
			{/* odd, LSB */
				MB_LCD_DISPLAY[j] &= 0xFF00;
				MB_LCD_DISPLAY[j] |= (c);
			}
			else
			{/* even, MSB */
				MB_LCD_DISPLAY[j] &= 0x00FF;
				MB_LCD_DISPLAY[j] |= (c)<<8;
			}
		}

		if (MSVE.CURSOR_ENABLED && (line==MSVE.CURSOR_ROW) && (i==MSVE.CURSOR_COL))
		{/* this sets the cursor blink rate */
			if ((LCD_CNT%12)>2)
				LCD_CHAR(0xFF);
			else
				LCD_CHAR(s[i]);
			
			LCD_CNT++;
		}
		else
			LCD_CHAR(s[i]);
	}
}

/****************************************************************************/
/* LCD PAGE																	*/
/*                                                                          */
/* Description: Fills the LCD with blank characters.                        */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes: global var LCD_DISPLAY  - takes ~80ms to refresh LCD @400kHz I2C  */
/*                                                                          */
/****************************************************************************/
void LCD_PAGE(void)
{/*  */
	int i,j;				/* character counter; line counter	*/
	unsigned int tmr[3];	/* not used 						*/
	float t;				/* not used 						*/
	char LCD_tmp[4][20];	/* formatted LCD line 				*/
	BOOL z;					/* ignore special character?		*/

	_GIEP;

	for (j=0;j<4;j++)
	{
		z = FALSE;
		
		for (i=0;i<20;i++)
		{/* pad ASCIIZ with spaces, ignore special character 0x00 */
			LCD_DISPLAY[j][i] &= 0xFF;
			
			if (z) 
				LCD_DISPLAY[j][i] = 0x20;
			else if (LCD_DISPLAY[j][i]==0x00)
			{
				LCD_DISPLAY[j][i]	= 0x20;
				z 					= TRUE;
			}
			
			LCD_tmp[j][i] = LCD_DISPLAY[j][i];
		}

		LCD_DISPLAY[j][i] = 0x00;
	}

	GIEP;

	for (i=0;i<4;i++)
		LCD_STR(LCD_tmp[i],i);
}

/****************************************************************************/
/* LCD INIT																	*/
/*                                                                          */
/* Description: Initializes the 4 Line LCD                                  */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     BOOL LCD_PRESENT - determines if 4 Line LCD is present.     */
/*                                                                          */
/* Notes:       LCD is not present under Stand Alone.  r is set to false	*/
/* 				if it cannot find the LCD_ADDR.                             */
/*                                                                          */
/****************************************************************************/
BOOL LCD_INIT(void)
{
	BOOL r;	/* return true or false */
	int i;	/* not used */
	int j;	/* not used */

	if (SA)
		LCD_PRESENT = FALSE;
	else
	{
		_GIEP;

		LCD_DIPSW	= 0xFF;
		LCD[0] 		= 0xFF;
		LCD[1] 		= 0xFF;
		LCD[1] 	   |= LCD_READ_MASK;
		r 			= Write_I2C_5(LCD_ADDR, 2, LCD);
		r 			= Read_I2C_5(LCD_ADDR, 2, LCD);
		LCD_DIPSW 	= LCD[1]&LCD_READ_MASK;

	 	if (!r)
			LCD_PRESENT = FALSE;
		else
		{
			LCD_PRESENT = TRUE;
			
			LCD_CMD(0x38);		/* set 8 bit, 2 line     */
			LCD_CMD(0x30);		/* set 8 bit             */
			LCD_CMD(0x38);		/* set 8 bit, 2 line     */
			LCD_CMD(0x0C);		/* display ON, no cursor */
			LCD_CMD(0x01);		/* clear display         */
			LCD_CMD(0x06);		/* clear addr inc        */
			LCD_CMD(0x80);		/* set addr to zero      */
		}

		GIEP;
	}

	return LCD_PRESENT;
}
