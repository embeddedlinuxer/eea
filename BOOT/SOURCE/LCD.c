/***************************************************************************/
/* (c) 2005 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

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
/* 54,15,4 = ideal                       */
/* 15,4,4 = almost perfect               */
/* 8,3,3 = borderline, short cables only */
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

BOOL I2C_TX_BYTE_5(unsigned char b)
{
	int i;
	unsigned char dat;
	BOOL ack;

	dat = b;

	for (i=0;i<8;i++)
	{
		if (dat&0x80)
		{
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
	if (SDA_RX_5) ack = FALSE;
	else ack = TRUE;
	SCL_LO_5;
	I2C_WAIT_LO;
	ENABLE_SDA_TX_5;

	return ack;
}

void I2C_RX_BYTE_5(unsigned char* b, BOOL ack)
{
	int i;
	unsigned char dat;

	dat = 0;

	DISABLE_SDA_TX_5;
	for (i=0;i<8;i++)
	{
		SCL_HI_5;
		I2C_WAIT_HI;
		if (SDA_RX_5)	dat |= 0x01;
		SCL_LO_5;
		I2C_WAIT_LO;
		dat = dat<<1;
	}

	dat = dat>>1;

	ENABLE_SDA_TX_5;
	if (ack)
	{
		SDA_TX_LO_5;
	}
	else
	{
		SDA_TX_HI_5;
	}
	I2C_PULSE_5;

	b[0] = dat;
}

BOOL Write_I2C_5(int addr, int n, unsigned char* p)
{
	int i;
	unsigned char dat;
	BOOL ack;
	BOOL r;

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

//		ack = I2C_TX_BYTE_5(n);			/* the number of bytes to write */
//		if (!ack)
//		{
//			r = FALSE;
//			break;
//		}

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

BOOL Read_I2C_5(int addr, int n, unsigned char* p)
{
	int i,j;
	unsigned char dat;
	BOOL ack;
	BOOL r;

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

//		ack = I2C_TX_BYTE_5(n);			/* the number of bytes to read */
//		if (!ack)
//		{
//			r = FALSE;
//			break;
//		}

		for (i=0;i<(n-1);i++)
		{
			I2C_RX_BYTE_5(&p[i],1);		/* read the bytes */
		}

		I2C_RX_BYTE_5(&p[n-1],0);		/* the final byte to read */

		break;
	}

	I2C_STOP_5;

	return r;
}

void LCD_CMD(int d)
{
	unsigned char t[2];

	LCD[0] = 0xFF;
	LCD[1] &= (0xFF^LCDE^LCDRS);	/* clear enable, addr */
	LCD[1] |= LCDRW;				/* set R/W */
	LCD[1] |= LCD_READ_MASK;
	Write_I2C_5(LCD_ADDR, 2, LCD);
	Read_I2C_5(LCD_ADDR, 2, LCD);	/* UPDATE inputs */
	LCD_DIPSW = LCD[1]&LCD_READ_MASK;

	while (TRUE)
	{
		LCD[1] |= LCDE;					/* set enable */
		Write_I2C_5(LCD_ADDR, 2, LCD);

		Read_I2C_5(LCD_ADDR, 2, t);

		LCD[1] &= (0xFF^LCDE);			/* clear enable */
		Write_I2C_5(LCD_ADDR, 2, LCD);

		if ((t[0] & 0x80)==0) break;		/* BUSY */
	}

	LCD[0] = d;						/* COMMAND */
	LCD[1] &= (0xFF^LCDRW^LCDRS);	/* clear R/W, addr */
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] |= LCDE;					/* set enable */
	Write_I2C_5(LCD_ADDR, 2, LCD);

	LCD[1] &= (0xFF^LCDE);			/* clear enable */
	Write_I2C_5(LCD_ADDR, 2, LCD);
}

void LCD_CHAR(int d)
{
	unsigned char t[2];

	if (!LCD_PRESENT) return;

	LCD[0] = 0xFF;
	LCD[1] &= (0xFF^LCDE^LCDRS);	/* clear enable, addr */
	LCD[1] |= LCDRW;				/* set R/W */
	Write_I2C_5(LCD_ADDR, 2, LCD);

	while (TRUE)
	{
		LCD[1] |= LCDE;					/* set enable */
		Write_I2C_5(LCD_ADDR, 2, LCD);

		Read_I2C_5(LCD_ADDR, 2, t);

		LCD[1] &= (0xFF^LCDE);			/* clear enable */
		Write_I2C_5(LCD_ADDR, 2, LCD);

		if ((t[0] & 0x80)==0) break;		/* BUSY */
	}

	LCD[0] = d;						/* CHAR */
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

void LCD_STR(char* s, int line)
{/* input: 20 char string, line(0-3) */
	int addr;
	int i;

	if (!LCD_PRESENT) return;

	switch(line)
	{
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
		{
			return;
		}
	}

	LCD_CMD(addr);
	for (i=0;i<20;i++)
	{
		LCD_CHAR(s[i]);
	}
}

BOOL LCD_INIT(void)
{
	BOOL r;
	int i;
	int j;

	_GIEP;

	LCD_DIPSW = 0xFF;
	LCD[0] = 0xFF;
	LCD[1] = 0xFF;
	LCD[1] |= LCD_READ_MASK;
	r =	Write_I2C_5(LCD_ADDR, 2, LCD);
	r =	Read_I2C_5(LCD_ADDR, 2, LCD);
	LCD_DIPSW = LCD[1]&LCD_READ_MASK;

 	if (!r)
	{
		LCD_PRESENT = FALSE;
	}
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

	for (i=0;i<21;i++)
	{
		LCD_DISP3[i] = 0x20;
	}

	LCD_STR((char*)&LCD_DISP0,0);
	LCD_STR((char*)&LCD_DISP1,1);
	LCD_STR((char*)&LCD_DISP2,2);
	LCD_STR((char*)&LCD_DISP3,3);

	GIEP;
	return LCD_PRESENT;
}
