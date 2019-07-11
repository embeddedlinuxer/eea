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
/* File Name: I2C.H							    							*/
/* 									    									*/
/* File Description: I2C is a multi-master serial single-ended computer bus */ 
/* invented by Philips that is used to attach low-speed peripherals to a    */
/* motherboard, embedded system, cellphone, or other electronic device.     */
/* - Wikipedia.                                                             */
/*                                                                          */
/* This is the header file for our implementation of that bus.              */
/* This file defines the registers XREG2 and XREG3 that implement I2C on our*/
/* microprocessor architecture.  It is also used to contact the LCD (NOT    */
/* IDEC) and defines function prototypes to implement the I2C fucntions.	*/
/*						    							                    */
/*									    									*/
/****************************************************************************/

#ifndef _I2C
#define _I2C

#ifdef I2C_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

/* IMPORTANT NOTE: for I2C bus, locate to the FAST RAM */

#define XREG2 ((volatile char*) 0x0900002)
#define SDA_RX				(*XREG2 & 0x10)
#define SCL_RX				(*XREG2 & 0x40)
#define SDA_TX_HI			{*XREG2 |= 0x01;}
#define SDA_TX_LO			{*XREG2 &= (0xFF ^ 0x01);}
#define ENABLE_SDA_TX		{*XREG2 |= 0x02;}
#define DISABLE_SDA_TX		{*XREG2 &= (0xFF ^ 0x02);}
#define SCL_HI				{*XREG2 |= 0x04;}
#define SCL_LO				{*XREG2 &= (0xFF ^ 0x04);}
#define ENABLE_SCL_TX		{*XREG2 |= 0x08;}
#define DISABLE_SCL_TX		{*XREG2 &= (0xFF ^ 0x08);}

#define XREG3 ((volatile char*) 0x0900003)
#define SDA_RX_5			(*XREG3 & 0x10)
#define SCL_RX_5			(*XREG3 & 0x40)
#define SDA_TX_HI_5			{*XREG3 |= 0x01;}
#define SDA_TX_LO_5			{*XREG3 &= (0xFF ^ 0x01);}
#define ENABLE_SDA_TX_5		{*XREG3 |= 0x02;}
#define DISABLE_SDA_TX_5	{*XREG3 &= (0xFF ^ 0x02);}
#define SCL_HI_5			{*XREG3 |= 0x04;}
#define SCL_LO_5			{*XREG3 &= (0xFF ^ 0x04);}
#define ENABLE_SCL_TX_5		{*XREG3 |= 0x08;}
#define DISABLE_SCL_TX_5	{*XREG3 &= (0xFF ^ 0x08);}

/*
#define I2C_WAIT		{asm("		RPTS	100			");\
						 asm("		NOP					");}

#define I2C_WAITF		{asm("		RPTS	20			");\
						 asm("		NOP					");}

#define I2C_WAITFL		{asm("		RPTS	55			");\
						 asm("		NOP					");}

//1300ns
#define I2C_WAIT_LO		{asm("		RPTS	55			");\
						 asm("		NOP					");}
//4*18.08		; RPTS
//18.08 * n		; NOP
//3*18.08		; bit shift-out loop
//10*18.08		; the bit operation on Xilinx

//600ns
#define I2C_WAIT_HI		{asm("		RPTS	20			");\
						 asm("		NOP					");}
//4*18.08		; RPTS
//18.08 * n		; NOP
//10*18.08		; the bit operation on Xilinx
*/

/****************************************************************************************/
#define I2C_WAITF		{asm("		PUSH    AR1			");\
						 asm("		LDI		25,AR1		");\
						 asm("		.word	6E46FFFFh	");\
						 asm("		POP		AR1			");}

#define I2C_WAITFL		{asm("		PUSH    AR1			");\
						 asm("		LDI		50,AR1		");\
						 asm("		.word	6E46FFFFh	");\
						 asm("		POP		AR1			");}

#define I2C_START	{SCL_HI; SDA_TX_HI; ENABLE_SCL_TX; ENABLE_SDA_TX; I2C_WAITFL; SDA_TX_LO; I2C_WAITFL; SCL_LO; I2C_WAITFL;}
#define I2C_STOP	{ENABLE_SDA_TX; SDA_TX_LO; I2C_WAITFL; SCL_HI; DISABLE_SCL_TX; I2C_WAITFL; SDA_TX_HI; DISABLE_SDA_TX; I2C_WAITFL;}
#define I2C_PULSE	{SCL_HI; I2C_WAITF; SCL_LO; I2C_WAITF;}
/****************************************************************************************/

#ifdef I2C_H
#pragma CODE_SECTION(I2C_TX_BYTE,"internal_RAM")
#pragma CODE_SECTION(I2C_RX_BYTE,"internal_RAM")
#pragma CODE_SECTION(Write_I2C,"internal_RAM")
#pragma CODE_SECTION(Read_I2C,"internal_RAM")
#pragma CODE_SECTION(RTC_setup,"initialization")
#pragma CODE_SECTION(Read_MC24C02_Record,"internal_RAM")
#pragma CODE_SECTION(Write_MC24C02_Record,"internal_RAM")
#endif

_EXTERN void I2C_RX_BYTE(unsigned char* b, BOOL ack);
_EXTERN BOOL I2C_TX_BYTE(unsigned char b);
_EXTERN BOOL Read_I2C(int addr, int n, unsigned char* p);
_EXTERN BOOL Write_I2C(int addr, int n, unsigned char* p);
_EXTERN BOOL RTC_setup(void);
_EXTERN BOOL Read_DS1340(int addr, int n, unsigned char* p);
_EXTERN BOOL Write_DS1340(int addr, int n, unsigned char* p);
_EXTERN BOOL Read_MC24C02_Record(int addr, unsigned char* p);
_EXTERN BOOL Write_MC24C02_Record(int addr, unsigned char* p);

 #define RTC_ADDR	0xD0
_EXTERN BOOL RTC_PRESENT;
_EXTERN unsigned char RTC[10];

/* RTC array, in the following order */
/*0 reg 08h -  TCS3|  TCS2|   TCS1|    TSC0|   DS1|   DS0| ROUT1|ROUT0 */
/*1 reg 09h -   OSF|     0|      0|       0|     0|     0|     0|     0 */
/*2 reg 00h -  EOSC|10sec3| 10sec2|  10sec1|  sec3|  sec2|  sec1|  sec0 */
/*3 reg 01h -     X|10min3| 10min2|  10min1|  min3|  min2|  min1|  min0 */
/*4 reg 02h -   CEB|    CB|  10hr1|   10hr2|   hr3|   hr2|   hr1|   hr0 */
/*5 reg 03h -     X|     X|      X|       X|     X|  day2|  day1|  day0 */

/*  (note: if day is written wrong, then year might get messed up, so just bypass it) */
/*6 reg 04h -     X|     X|10date1| 10date0| date3| date2| date1| date0 */
/*7 reg 05h -     X|     X|      X|10month0|month3|month2|month1|month0 */
/*8 reg 06h - 10yr3| 10yr2|  10yr1|   10yr0|   yr3|   yr2|   yr1|   yr0 */
/*9 reg 07h -   OUT|    FT|      S|    CAL4|  CAL3|  CAL2|  CAL1|  CAL0 */

#ifdef LCD_H
#pragma CODE_SECTION(I2C_TX_BYTE_5,"internal_RAM")
#pragma CODE_SECTION(I2C_RX_BYTE_5,"internal_RAM")
#pragma CODE_SECTION(Write_I2C_5,"internal_RAM")
#pragma CODE_SECTION(Read_I2C_5,"internal_RAM")
#pragma CODE_SECTION(LCD_CMD,"internal_RAM")
#pragma CODE_SECTION(LCD_CHAR,"internal_RAM")
#pragma CODE_SECTION(LCD_STR,"internal_RAM")
#pragma CODE_SECTION(LCD_PAGE,"internal_RAM")
#endif

_EXTERN void I2C_RX_BYTE_5(unsigned char* b, BOOL ack);
_EXTERN BOOL I2C_TX_BYTE_5(unsigned char b);
_EXTERN BOOL Read_I2C_5(int addr, int n, unsigned char* p);
_EXTERN BOOL Write_I2C_5(int addr, int n, unsigned char* p);
_EXTERN void LCD_STR(char* s, int line);
_EXTERN void LCD_CMD(int d);
_EXTERN void LCD_CHAR(int d);
_EXTERN void LCD_PAGE(void);

#define LCD_ADDR	0x40
_EXTERN unsigned char LCD_DIPSW;
_EXTERN unsigned char LCD[2];
_EXTERN char LCD_DISPLAY[4][101];			/* 4x20 display, with extended buffer for string operations  */
_EXTERN int MB_LCD_DISPLAY[4*10];			/* 4x20 display, 16 bit integers for modbus  */
_EXTERN BOOL LCD_PRESENT;
_EXTERN BOOL LCD_INIT(void);
_EXTERN unsigned int  LCD_CNT;

/* LCD registers                     */
/* register 0:                       */
/*             LCD Data bits 0-7     */
/* register 1:                       */
#define LCDRS			0x01
#define LCDRW			0x02
#define LCDE			0x04
#define LCD_IrDAsense	0x08
#define LCD_DIP1		0x10
#define LCD_DIP2		0x20
#define LCD_DIP3		0x40
#define LCD_DIP4		0x80
#define LCD_READ_MASK (LCD_DIP1|LCD_DIP2|LCD_DIP3|LCD_DIP4|LCD_IrDAsense)

#undef _EXTERN
#undef I2C_H
#endif
