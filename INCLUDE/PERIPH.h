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
/* File Name: PERIPH.H						    							*/
/* 									    									*/
/* File Description:  This defines the peripherals for the microcontroller. */
/* A peripheral can be a register, serial IO, a timer, etc.  Registers are  */
/* defined as XREGS.  Each one controls a peripheral and they are described */
/* below.										    						*/
/*									    									*/
/****************************************************************************/

#ifndef _PERIPH
#define _PERIPH

#define CLOCK_DEFAULT		55296000.0

/* A note about the clock speeds and communication baud rates:
   The 60MHz clock gives a better all around clock for up to 256000 baud.
   The 55.296MHz clock gives very accurate baud rates up to 115200 baud, but no higher!
   The maximum recommmended baud rate is 115200 with limited slew rate drivers.
   The absolute maximum baud rate with the limited slew rate MAXIM MAX3483EESA is 0.25Mbaud.
   The absolute maximum baud rate with the limited slew rate MAXIM MAX3485EESA is 12Mbaud, but fuses and TVS may affect the true maximum rate.
*/

#define CLOCK_GATE		512.0
#define CLOCK_UART		(CLOCK/2.0)
#define CLOCK_TIMER		(CLOCK/2.0)

#define XREG0			((volatile char*) 0x0900000)
#define XHW_VER			XREG0

#define XREG1			((volatile char*) 0x0900001)
#define RELAY1		 	0x01
#define RELAY2		 	0x02
#define RELAY1_TOGGLE	{_GIEP;*XREG1 ^= RELAY1;GIEP}
#define RELAY1_OFF		{_GIEP;*XREG1 &= (0xFF ^ RELAY1);GIEP}
#define RELAY1_ON		{_GIEP;*XREG1 |= RELAY1;GIEP}
#define RELAY2_TOGGLE	{_GIEP;*XREG1 ^= RELAY2;GIEP}
#define RELAY2_OFF		{_GIEP;*XREG1 &= (0xFF ^ RELAY2);GIEP}
#define RELAY2_ON		{_GIEP;*XREG1 |= RELAY2;GIEP}
#define DIPSW1		 	(*XREG1 & 0x10)
#define DIPSW2		 	(*XREG1 & 0x20)
#define ZERO		 	(*XREG1 & 0x40)
#define WPROT_FLASH 	0x04
#define FLASH_LOCK		{_GIEP;*XREG1 &= (0xFF ^ WPROT_FLASH);GIEP;}
#define FLASH_UNLOCK	{_GIEP;*XREG1 |= WPROT_FLASH;GIEP;}
#define FRST			0x08
#define URESET			{_GIEP;*XREG1 |= FRST;GIEP;}
#define _URESET			{_GIEP;*XREG1 &= (0xFF ^ FRST);GIEP;}

/* XF pin I/O */
#define XFINIT_OUTPUT	{asm("	ldi		22h,IOF		");		/* XF config output low,low */}
#define XF0				{asm("	or		04h,IOF		");		/* XF0 output 1 */}
#define _XF0			{asm("	andn	04h,IOF		");     /* XF0 output 0 */}
#define XF1				{asm("	or		40h,IOF		");		/* XF1 output 1 */}
#define _XF1			{asm("	andn	40h,IOF		");		/* XF1 output 0 */}
#define SEL_CLEAR		{asm("	ldi		22h,IOF		");		/* XF output low,low */}
#define SEL_ADC			{asm("	ldi		26h,IOF		");		/* XF output low,hi  */}
#define SEL_DAC0		{asm("	ldi		62h,IOF		");		/* XF output hi,low  */}
#define SEL_DAC1		{asm("	ldi		66h,IOF		");		/* XF output hi,hi   */}

#define XREG4			((volatile char*) 0x0900004)

#define FREQ_EN		0x01	/* 1 */
#define GATE_EN		0x02	/* 1 */
#define OIL_OSC		0x04	/* 0 */
#define WD_EN		0x08	/* 1 */

#define EN_IRDA		0x10	/* 1 */
#define RST_IRDA	0x20	/* 0 */
#define RESET		0x40	/* 0 */
#define WDOG_TICKLE	0x80	/* 0 */



#define OSC_SEL				(*XREG4 & OIL_OSC)
#define SELECT_OSC_OIL		{_GIEP;*XREG4 |= OIL_OSC;GIEP;}
#define SELECT_OSC_WAT		{_GIEP;*XREG4 &= (0xFF ^ OIL_OSC);GIEP;}
#define TICKLE_WATCHDOG		{_GIEP;*XREG4 |= WDOG_TICKLE;GIEP;}
#define MASTER_RESET		{_GIEP;*XREG4 |= RESET;GIEP;}
#define DISABLE_WDOG		{_GIEP;*XREG4 &= (0xFF ^ WD_EN);GIEP;}
#define ENABLE_WDOG			{_GIEP;*XREG4 |= WD_EN; *XREG4 |= WDOG_TICKLE;GIEP;}
#define DISABLE_FREQUENCY	{_GIEP;*XREG4 &= (0xFF ^ FREQ_EN);GIEP;}
#define ENABLE_FREQUENCY	{_GIEP;*XREG4 |= FREQ_EN;GIEP;}
#define DISABLE_GATE		{_GIEP;*XREG4 &= (0xFF ^ GATE_EN);GIEP;}
#define ENABLE_GATE			{_GIEP;*XREG4 |= GATE_EN;GIEP;}
#define DISABLE_IRDA		{_GIEP;*XREG4 &= (0xFF ^ EN_IRDA);GIEP;}
#define ENABLE_IRDA			{_GIEP;*XREG4 |= EN_IRDA;GIEP;}
#define RESET_IRDA			{_GIEP;*XREG4 &= (0xFF ^ RST_IRDA);GIEP;}
#define _RESET_IRDA			{_GIEP;*XREG4 |= RST_IRDA;GIEP;}

#define XREG5			((volatile char*) 0x0900005)
#define MSVE_IN			XREG5
#define _M1				0x01
#define _S1				0x02
#define _V1				0x04
#define _E1				0x08
#define _M2				0x10
#define _S2				0x20
#define _V2				0x40
#define _E2				0x80
#define _M1a			0x100
#define _S1a			0x200
#define _V1a			0x400
#define _E1a			0x800

/* external /INT mask reg */
#define XREG6			((volatile char*) 0x0900006)
#define ENABLE_EXTINT0		{_GIEP;*XREG6 |= 0x01;GIEP;}
#define DISABLE_EXTINT0		{_GIEP;*XREG6 &= (0xFF ^ 0x01);GIEP;}
#define ENABLE_EXTINT1		{_GIEP;*XREG6 |= 0x02;GIEP;}
#define DISABLE_EXTINT1		{_GIEP;*XREG6 &= (0xFF ^ 0x02);GIEP;}
#define ENABLE_EXTINT2		{_GIEP;*XREG6 |= 0x04;GIEP;}
#define DISABLE_EXTINT2		{_GIEP;*XREG6 &= (0xFF ^ 0x04);GIEP;}
#define ENABLE_EXTINT3		{_GIEP;*XREG6 |= 0x08;GIEP;}
#define DISABLE_EXTINT3		{_GIEP;*XREG6 &= (0xFF ^ 0x08);GIEP;}
#define DISABLE_BOOTINT		{_GIEP;*XREG6 |= 0x10;GIEP;}
#define ENABLE_BOOTINT		{_GIEP;*XREG6 &= (0xFF ^ 0x10);GIEP;}
#define PULSE3_STAT		 	(*XREG6 & 0x80)
#define PULSE2_STAT		 	(*XREG6 & 0x40)
#define PULSE1_STAT		 	(*XREG6 & 0x20)

/* frequency counter register READ ONLY */
#define XREG10			((volatile char*) 0x090000A)
#define XREG9			((volatile char*) 0x0900009)
#define XREG8			((volatile char*) 0x0900008)
#define XREG7			((volatile char*) 0x0900007)
#define RESTART_GATE_TIMER	{*XREG7 = 0; GATE_TIMEOUT = FALSE;}

/* PULSE CAPTURE */
#define XREG11			((volatile char*) 0x090000B)
#define XREG12			((volatile char*) 0x090000C)

#define XREG13			((volatile char*) 0x090000D)
#define XREG14			((volatile char*) 0x090000E)

#define XREG15			((volatile char*) 0x090000F)
#define XREG16			((volatile char*) 0x0900010)
/*****************/

#define XREG17			((volatile char*) 0x0900011)
#define GATE_DIVIDER	XREG17
#define GATE_PRESCALE	4
#define GATE_CLK		(CLOCK_GATE/GATE_PRESCALE)

#define XREG18			((volatile char*) 0x0900012)
#define PRESCALE1		0x40
#define PRESCALE2		0x80
#define EN_TXA			0x08
#define EN_TXB			0x01
#define FORCE_TXA		0x20
#define FORCE_TXB		0x04
#define FORCE_TXA_DAT	0x10
#define FORCE_TXB_DAT	0x02
#define ENABLE_TXA		{_GIEP;*XREG18 &= (0xFF ^ EN_TXA);GIEP;}
#define DISABLE_TXA		{_GIEP;*XREG18 |= EN_TXA;GIEP;}
#define ENABLE_TXB		{_GIEP;*XREG18 &= (0xFF ^ EN_TXB);GIEP;}
#define DISABLE_TXB		{_GIEP;*XREG18 |= EN_TXB;GIEP;}
#define DIV_256			{_GIEP;*XREG18 &= (0xFF ^ (PRESCALE1 | PRESCALE2));GIEP;}
#define DIV_128			{_GIEP;*XREG18 |= PRESCALE1; *XREG18 &= (0xFF ^ PRESCALE2);GIEP;}
#define DIV_64			{_GIEP;*XREG18 |= PRESCALE1 | PRESCALE2;GIEP;}

#define XREG19			((volatile char*) 0x0900013)
#define PTYPE			0x20
#define CDET			0x10
#define LOAD_SEL		0x01
#define DIS_HTR			0x02
#define DIS_JTAG		0x04
#define CHK_JTAG		0x08
#define LED_STATUS		0x80
#define LED_STATUS2		0x40
#define ENABLE_HEATER	{_GIEP;*XREG19 &= (0xFF ^ DIS_HTR);GIEP;}
#define DISABLE_HEATER	{_GIEP;*XREG19 |= DIS_HTR;GIEP;}
#define ENABLE_JTAG		{_GIEP;*XREG19 &= (0xFF ^ DIS_JTAG);GIEP;}
#define DISABLE_JTAG	{_GIEP;*XREG19 |= DIS_JTAG;GIEP;}
#define SELECT_LOAD_EXT	{_GIEP;*XREG19 |= LOAD_SEL;GIEP;}
#define SELECT_LOAD_INT	{_GIEP;*XREG19 &= (0xFF ^ LOAD_SEL);GIEP;}
#define	B202_PORT		(!(*XREG19 & PTYPE))
#define	B202_CARRIER	(*XREG19 & CDET)
#define LEDR_ON			{_GIEP;*XREG19 &= (0xFF ^ LED_STATUS);GIEP;}
#define LEDR_OFF		{_GIEP;*XREG19 |= LED_STATUS;GIEP;}
#define LEDR_TOGGLE		{_GIEP;*XREG19 ^= LED_STATUS;GIEP;}
#define LEDG_ON			{_GIEP;*XREG19 &= (0xFF ^ LED_STATUS2);GIEP;}
#define LEDG_OFF		{_GIEP;*XREG19 |= LED_STATUS2;GIEP;}
#define LEDG_TOGGLE		{_GIEP;*XREG19 ^= LED_STATUS2;GIEP;}
#define LEDS_OFF		{_GIEP;*XREG19 |= LED_STATUS|LED_STATUS2;GIEP;}
#define LEDS_ON			{_GIEP;*XREG19 &= (0xFF^(LED_STATUS|LED_STATUS2));GIEP;}

#define XREG20			((volatile char*) 0x0900014)

#define RTD_CURRENT_DEFAULT 0.0002
#define RTD_GAIN_DEFAULT	30.59
//#define TCE  	(1.0/(RTD_CURRENT*RTD_GAIN))	/* converts to ohms */
#define TCE  	 1.0
#define TCE2	 0.1102750E-02
#define TCE1	 0.2333109E+01
#define TCE0	-0.2443125E+03

#endif