#line 18 "D:\CCS\EEA_SA_V611beta\INCLUDE\ETC.H"
typedef unsigned int BOOL;

#line 19 "D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\BUFFER.H"
typedef struct	{
					int				head;
					int				tail;
					int				n;
					unsigned int	CRC16;
					unsigned int	buff[4096+16];
					BOOL			locked;
				} BFR;

extern void Clear(BFR* buffer);
extern void CRC16(BFR* buffer);
extern BOOL Put(BFR* buffer, unsigned int b);
extern int Get(BFR* buffer);





extern BOOL INITIALIZING;

#line 32 "D:\CCS\EEA_SA_V611beta\INCLUDE\FLASH.H"
extern unsigned int* SRAM_SCRATCHPAD;
#line 92
extern unsigned int FLASH_SIZE(void);
extern int FLASH_CHECK_ADDR(unsigned int* addr, unsigned int n);
extern int FLASH_LOCK_BLK(unsigned int* addr, int lock);
extern int FLASH_ERASE_BLK(unsigned int* addr);
extern int FLASH_WRITE_BLK(unsigned int* addr, unsigned int* data, unsigned int n);
extern int FLASH_STATUS(void);
extern void FLASH_READ_ESN_MFGR(unsigned int* dat);
extern void FLASH_READ_ESN_USER(unsigned int* dat);
extern int FLASH_WRITE_ESN_USER(unsigned int* dat);
extern int FLASH_LOCK_ESN_USER(void);

#line 25 "D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\SERIAL.H"
typedef struct	{
					unsigned char	STAT;
					
					unsigned int	TMR_Network_WDOG;
					unsigned int	TMR_EOT_Delay;
					unsigned int	TMR_Preamble_Delay;
					unsigned int	TMR_Suffix_Delay;
					unsigned int	TMR_Char;
					BOOL			TMR_enabled;
					int*			tvector;	 
					int*			pvector;	 

					unsigned int	i;
					unsigned int	func;
					unsigned int	Slave_ID;

					BFR		TXbuf;
					BOOL	TX_complete;

					BFR		RXbuf;
					BOOL	RX_pending;
				} PORTV;

extern PORTV PORT;


#pragma DATA_SECTION(UART,"UART_ADDR")
extern volatile unsigned char UART[8][16];

extern int Setup_UART(int baud);
extern int Set_Baud(int div);
extern void Clear_RX(void);
extern void Process_UINT(void);
extern float f_ciel(double s);

 
#line 26 "D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\MODBUSRTU.H"
void WDOG_P(void);
void TX_P(void);
void TX_P1(void);
void TX_S(void);
void MODBUS_RX_ID(void);
void MODBUS_RX_FUNCTION(void);
void MODBUS_RX_n(void);
void MODBUS_RX_nw(void);
void MODBUS_RX_nDATA(void);
void MODBUS_RX_CRC(void);

#line 80
extern void Process_Read(unsigned int addr, unsigned int n);
extern void Process_Write(unsigned int destination, unsigned int n, unsigned int* source);
extern void Process_Write_Scratchpad(unsigned int destination, unsigned int n, unsigned int* source);
extern void Process_Set_Entry_Point(unsigned int addr);
extern void Process_Read_ESN(void);
extern void Process_Write_ESN(unsigned int* dat);
extern void Process_LOCK_ESN(void);
extern void MB_exception(int ex);
extern void Modbus_Initialize(void);
extern void Process_Restore_Factory_Defaults(void);
extern void Process_Erase_Cfg(void);
extern void Process_Erase_Scratchpad(void);
extern void Process_Store_Scratchpad(unsigned int addr);
extern unsigned int Copy_Block(unsigned int* s, unsigned int* d);

#line 96 "D:\CCS\EEA_SA_V611beta\INCLUDE\I2C.H"
extern void I2C_RX_BYTE(unsigned char* b, BOOL ack);
extern BOOL I2C_TX_BYTE(unsigned char b);
extern BOOL Read_I2C(int addr, int n, unsigned char* p);
extern BOOL Write_I2C(int addr, int n, unsigned char* p);
extern BOOL RTC_setup(void);
extern BOOL Read_DS1340(int addr, int n, unsigned char* p);
extern BOOL Write_DS1340(int addr, int n, unsigned char* p);
extern BOOL Read_MC24C02_Record(int addr, unsigned char* p);
extern BOOL Write_MC24C02_Record(int addr, unsigned char* p);





extern BOOL RTC_PRESENT;
extern unsigned char RTC[10];
 
 
 
 
 
 
 
 
 
 
 
 


#pragma CODE_SECTION(I2C_TX_BYTE_5,"internal_RAM")
#pragma CODE_SECTION(I2C_RX_BYTE_5,"internal_RAM")
#pragma CODE_SECTION(Write_I2C_5,"internal_RAM")
#pragma CODE_SECTION(Read_I2C_5,"internal_RAM")
#pragma CODE_SECTION(LCD_CMD,"internal_RAM")
#pragma CODE_SECTION(LCD_CHAR,"internal_RAM")
#pragma CODE_SECTION(LCD_STR,"internal_RAM")
#pragma CODE_SECTION(LCD_PAGE,"internal_RAM")



extern void I2C_RX_BYTE_5(unsigned char* b, BOOL ack);
extern BOOL I2C_TX_BYTE_5(unsigned char b);
extern BOOL Read_I2C_5(int addr, int n, unsigned char* p);
extern BOOL Write_I2C_5(int addr, int n, unsigned char* p);
extern void LCD_STR(char* s, int line);
extern void LCD_CMD(int d);
extern void LCD_CHAR(int d);
extern void LCD_PAGE(void);


extern unsigned char LCD_DIPSW;
extern unsigned char LCD[2];
extern char LCD_DISPLAY[4][101];			 
extern int MB_LCD_DISPLAY[4*10];			 
extern BOOL LCD_PRESENT;
extern BOOL LCD_INIT(void);
extern unsigned int  LCD_CNT;
 
 
 
 
#line 37 "D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\GLBLS.H"
extern const char* copyright;
extern const char* LCD_DISP0;
extern const char* LCD_DISP1;
extern const char* LCD_DISP2;



extern char LCD_DISP3[21];

extern unsigned int BOOTPORT;
extern unsigned int boot_blk[0x00002000];
extern void main1(void);
extern void Exit_to_App(void);

extern unsigned int call_to_main;
extern void c_int00(void);
extern unsigned int BTCOPY;

extern int HW_VER;

extern unsigned int ESN[9];
extern BOOL MEM;
extern BOOL GATE_TIMEOUT;
extern unsigned int CLOCK;
extern int* vect_pt1;
extern int* vect_p1;

extern double TIME0;
extern double TIME1;
extern int TIMER1_COUNTER;

#line 57 "lcd.c"
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
			{*((volatile char*) 0x0900003) |= 0x01;};
		}
		else
		{
			{*((volatile char*) 0x0900003) &= (0xFF ^ 0x01);};
		}

		{{*((volatile char*) 0x0900003) |= 0x04;}; {asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

		dat = dat<<1;
	}

	{*((volatile char*) 0x0900003) &= (0xFF ^ 0x02);};
	{*((volatile char*) 0x0900003) |= 0x01;};
	{asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
	{*((volatile char*) 0x0900003) |= 0x04;};
	{asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
	if ((*((volatile char*) 0x0900003) & 0x10)) ack = 0;
	else ack = 1;
	{*((volatile char*) 0x0900003) &= (0xFF ^ 0x04);};
	{asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
	{*((volatile char*) 0x0900003) |= 0x02;};

	return ack;
}

void I2C_RX_BYTE_5(unsigned char* b, BOOL ack)
{
	int i;
	unsigned char dat;

	dat = 0;

	{*((volatile char*) 0x0900003) &= (0xFF ^ 0x02);};
	for (i=0;i<8;i++)
	{
		{*((volatile char*) 0x0900003) |= 0x04;};
		{asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
		if ((*((volatile char*) 0x0900003) & 0x10))	dat |= 0x01;
		{*((volatile char*) 0x0900003) &= (0xFF ^ 0x04);};
		{asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
		dat = dat<<1;
	}

	dat = dat>>1;

	{*((volatile char*) 0x0900003) |= 0x02;};
	if (ack)
	{
		{*((volatile char*) 0x0900003) &= (0xFF ^ 0x01);};
	}
	else
	{
		{*((volatile char*) 0x0900003) |= 0x01;};
	}
	{{*((volatile char*) 0x0900003) |= 0x04;}; {asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		4,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	b[0] = dat;
}

BOOL Write_I2C_5(int addr, int n, unsigned char* p)
{
	int i;
	unsigned char dat;
	BOOL ack;
	BOOL r;

	r = 1;

	{{*((volatile char*) 0x0900003) |= 0x04;}; {*((volatile char*) 0x0900003) |= 0x01;}; {*((volatile char*) 0x0900003) |= 0x08;}; {*((volatile char*) 0x0900003) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	while(1)
	{
		dat = addr;						 
		ack = I2C_TX_BYTE_5(dat);
		if (!ack)
		{
			r = 0;
			break;
		}








		for (i=0;i<n;i++)
		{
			ack = I2C_TX_BYTE_5(p[i]);	 
			if (!ack)
			{
				r = 0;
				break;
			}
		}

		break;
	}

	{{*((volatile char*) 0x0900003) |= 0x02;}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) |= 0x04;}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) |= 0x01;}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	return r;
}

BOOL Read_I2C_5(int addr, int n, unsigned char* p)
{
	int i,j;
	unsigned char dat;
	BOOL ack;
	BOOL r;

	r = 1;

	{{*((volatile char*) 0x0900003) |= 0x04;}; {*((volatile char*) 0x0900003) |= 0x01;}; {*((volatile char*) 0x0900003) |= 0x08;}; {*((volatile char*) 0x0900003) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	while(1)
	{
		dat = addr | 0x01;				 
		ack = I2C_TX_BYTE_5(dat);
		if (!ack)
		{
			r = 0;
			break;
		}








		for (i=0;i<(n-1);i++)
		{
			I2C_RX_BYTE_5(&p[i],1);		 
		}

		I2C_RX_BYTE_5(&p[n-1],0);		 

		break;
	}

	{{*((volatile char*) 0x0900003) |= 0x02;}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) |= 0x04;}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900003) |= 0x01;}; {*((volatile char*) 0x0900003) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		15,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	return r;
}

void LCD_CMD(int d)
{
	unsigned char t[2];

	LCD[0] = 0xFF;
	LCD[1] &= (0xFF^0x04^0x01);	 
	LCD[1] |= 0x02;				 
	LCD[1] |= (0x10|0x20|0x40|0x80|0x08);
	Write_I2C_5(0x40, 2, LCD);
	Read_I2C_5(0x40, 2, LCD);	 
	LCD_DIPSW = LCD[1]&(0x10|0x20|0x40|0x80|0x08);

	while (1)
	{
		LCD[1] |= 0x04;					 
		Write_I2C_5(0x40, 2, LCD);

		Read_I2C_5(0x40, 2, t);

		LCD[1] &= (0xFF^0x04);			 
		Write_I2C_5(0x40, 2, LCD);

		if ((t[0] & 0x80)==0) break;		 
	}

	LCD[0] = d;						 
	LCD[1] &= (0xFF^0x02^0x01);	 
	Write_I2C_5(0x40, 2, LCD);

	LCD[1] |= 0x04;					 
	Write_I2C_5(0x40, 2, LCD);

	LCD[1] &= (0xFF^0x04);			 
	Write_I2C_5(0x40, 2, LCD);
}

void LCD_CHAR(int d)
{
	unsigned char t[2];

	if (!LCD_PRESENT) return;

	LCD[0] = 0xFF;
	LCD[1] &= (0xFF^0x04^0x01);	 
	LCD[1] |= 0x02;				 
	Write_I2C_5(0x40, 2, LCD);

	while (1)
	{
		LCD[1] |= 0x04;					 
		Write_I2C_5(0x40, 2, LCD);

		Read_I2C_5(0x40, 2, t);

		LCD[1] &= (0xFF^0x04);			 
		Write_I2C_5(0x40, 2, LCD);

		if ((t[0] & 0x80)==0) break;		 
	}

	LCD[0] = d;						 
	LCD[1] &= (0xFF^0x02);			 
	LCD[1] |= 0x01;				 
	Write_I2C_5(0x40, 2, LCD);

	LCD[1] |= 0x04;					 
	Write_I2C_5(0x40, 2, LCD);

	LCD[1] &= (0xFF^0x04);			 
	Write_I2C_5(0x40, 2, LCD);

	LCD[1] &= (0xFF^0x01);			 
	Write_I2C_5(0x40, 2, LCD);
}

void LCD_STR(char* s, int line)
{ 
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

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	LCD_DIPSW = 0xFF;
	LCD[0] = 0xFF;
	LCD[1] = 0xFF;
	LCD[1] |= (0x10|0x20|0x40|0x80|0x08);
	r =	Write_I2C_5(0x40, 2, LCD);
	r =	Read_I2C_5(0x40, 2, LCD);
	LCD_DIPSW = LCD[1]&(0x10|0x20|0x40|0x80|0x08);

 	if (!r)
	{
		LCD_PRESENT = 0;
	}
	else
	{
		LCD_PRESENT = 1;
		LCD_CMD(0x38);		 
		LCD_CMD(0x30);		 
		LCD_CMD(0x38);		 
		LCD_CMD(0x0C);		 
		LCD_CMD(0x01);		 
		LCD_CMD(0x06);		 
		LCD_CMD(0x80);		 
	}

	for (i=0;i<21;i++)
	{
		LCD_DISP3[i] = 0x20;
	}

	LCD_STR((char*)&LCD_DISP0,0);
	LCD_STR((char*)&LCD_DISP1,1);
	LCD_STR((char*)&LCD_DISP2,2);
	LCD_STR((char*)&LCD_DISP3,3);

	{asm("	pop		ST			");};
	return LCD_PRESENT;
}
