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

#line 87 "D:\CCS\EEA_SA_V611beta\INCLUDE\I2C.H"
#pragma CODE_SECTION(I2C_TX_BYTE,"internal_RAM")
#pragma CODE_SECTION(I2C_RX_BYTE,"internal_RAM")
#pragma CODE_SECTION(Write_I2C,"internal_RAM")
#pragma CODE_SECTION(Read_I2C,"internal_RAM")
#pragma CODE_SECTION(RTC_setup,"initialization")
#pragma CODE_SECTION(Read_MC24C02_Record,"internal_RAM")
#pragma CODE_SECTION(Write_MC24C02_Record,"internal_RAM")



 void I2C_RX_BYTE(unsigned char* b, BOOL ack);
 BOOL I2C_TX_BYTE(unsigned char b);
 BOOL Read_I2C(int addr, int n, unsigned char* p);
 BOOL Write_I2C(int addr, int n, unsigned char* p);
 BOOL RTC_setup(void);
 BOOL Read_DS1340(int addr, int n, unsigned char* p);
 BOOL Write_DS1340(int addr, int n, unsigned char* p);
 BOOL Read_MC24C02_Record(int addr, unsigned char* p);
 BOOL Write_MC24C02_Record(int addr, unsigned char* p);





 BOOL RTC_PRESENT;
 unsigned char RTC[10];
 
 
 
 
 
 
 
 
 
 
 
 

#line 136
 void I2C_RX_BYTE_5(unsigned char* b, BOOL ack);
 BOOL I2C_TX_BYTE_5(unsigned char b);
 BOOL Read_I2C_5(int addr, int n, unsigned char* p);
 BOOL Write_I2C_5(int addr, int n, unsigned char* p);
 void LCD_STR(char* s, int line);
 void LCD_CMD(int d);
 void LCD_CHAR(int d);
 void LCD_PAGE(void);


 unsigned char LCD_DIPSW;
 unsigned char LCD[2];
 char LCD_DISPLAY[4][101];			 
 int MB_LCD_DISPLAY[4*10];			 
 BOOL LCD_PRESENT;
 BOOL LCD_INIT(void);
 unsigned int  LCD_CNT;
 
 
 
 
#line 30 "D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\GLBLS.H"
const char copyright[]={"(c)2007 Phase Dynamics, Inc."};
const char LCD_DISP0[]={"Phase Dynamics, Inc."};
const char LCD_DISP1[]={"                    "};
const char LCD_DISP2[]={" Boot Loader  v1.09 "};
#line 43
 char LCD_DISP3[21];

 unsigned int BOOTPORT;
 unsigned int boot_blk[0x00002000];
 void main1(void);
 void Exit_to_App(void);

extern unsigned int call_to_main;
extern void c_int00(void);
extern unsigned int BTCOPY;

 int HW_VER;

 unsigned int ESN[9];
 BOOL MEM;
 BOOL GATE_TIMEOUT;
 unsigned int CLOCK;
 int* vect_pt1;
 int* vect_p1;

 double TIME0;
 double TIME1;
 int TIMER1_COUNTER;

#line 14 "main.c"
#pragma CODE_SECTION(main,"copytoflash")
void main(void)
{
	BOOL pass;
	unsigned int i;
	unsigned int j;
	unsigned int* c;
	unsigned int d;
	char msgf[] = " Programming Failed ";
	char msgp[] = " Programming Passed ";

	{asm("	rpts	1			");						 asm("	andn	2000h, ST	");};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x80;{asm("	pop		ST			");};};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900006) |= 0x10;{asm("	pop		ST			");};};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x02;{asm("	pop		ST			");};};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x01);{asm("	pop		ST			");}};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x02);{asm("	pop		ST			");}};

	if (!1)
	{
		main1();
		while(1){}	
	}

	*((volatile unsigned int*) 0x808064)  = (0x0018 | 0x00A0);	 
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) &= (0xFF ^ 0x08);{asm("	pop		ST			");};};

	LCD_INIT();

	pass = 1;

	for (i=0;i<0x00002000;i++)
	{
		boot_blk[i] = 0xFFFFFFFF;
		if (boot_blk[i] != 0xFFFFFFFF) {pass = 0; break;}
	}

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) |= 0x04;{asm("	pop		ST			");};};

	 
	call_to_main = (unsigned int)&main1 | 0x62000000;

	 
	boot_blk[0] = 0x00000020;										 
	if (boot_blk[0] != 0x00000020) pass = 0;
	boot_blk[1] = (0x0018 | 0x00A0);				 
	if (boot_blk[1] != (0x0018 | 0x00A0)) pass = 0;
	boot_blk[2] = 0x00001FB0 - ((unsigned int)&c_int00 & 0x1FFF);	 
	if (boot_blk[2] != 0x00001FB0 - ((unsigned int)&c_int00 & 0x1FFF)) pass = 0;
 	boot_blk[3] = (unsigned int) &c_int00;							 
 	if (boot_blk[3] != (unsigned int) &c_int00) pass = 0;
	c = (unsigned int*)c_int00;										 
	j=4;
	for (i=0;i<boot_blk[2];i++)
	{
		boot_blk[j] = c[i];
		if (boot_blk[j] != c[i]) {pass = 0; break;}
		j++;
	}

	 
	boot_blk[j] = 0x0000003F;										 
	if (boot_blk[j] != 0x0000003F) pass = 0;
	j++;
	boot_blk[j] = 0x00809FC1;										 
	if (boot_blk[j] != 0x00809FC1) pass = 0;
	c = (unsigned int*)0x00809FC1;									 
	j++;
	for (i=0;i<0x3F;i++)
	{
		boot_blk[j] = c[i];
		if (boot_blk[j] != c[i]) {pass = 0; break;}
		j++;
	}

	 
	d = j;
	boot_blk[j] = 0x00001FB0 - boot_blk[2];
	if (boot_blk[j] != 0x00001FB0 - boot_blk[2]) pass = 0;
	j++;
	boot_blk[j] = 0x00800000;
	if (boot_blk[j] != 0x00800000) pass = 0;
	c = (unsigned int*)0x00800000;
	j++;
	for (i=0;i<boot_blk[d];i++)
	{
		boot_blk[j] = c[i];
		if (boot_blk[j] != c[i]) {pass = 0; break;}
		j++;
	}

    if (pass)
    {
		i = FLASH_ERASE_BLK((unsigned int*) ((unsigned int*)0x400000));
		i |= FLASH_WRITE_BLK((unsigned int*) ((unsigned int*)0x400000), boot_blk, 0x00001000);
		i |= FLASH_ERASE_BLK((unsigned int*) ((unsigned int*)0x400000)+0x00001000);
		i |= FLASH_WRITE_BLK((unsigned int*) ((unsigned int*)0x400000)+0x00001000, boot_blk+0x00001000, 0x00001000);

		FLASH_LOCK_BLK((unsigned int*) ((unsigned int*)0x400000), 2);					 
		FLASH_LOCK_BLK((unsigned int*) ((unsigned int*)0x400000)+0x00001000, 2);	 

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x04);{asm("	pop		ST			");};};

		if (i) pass = 0;
	}

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) &= (0xFF ^ 0x08);{asm("	pop		ST			");};};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900006) &= (0xFF ^ 0x10);{asm("	pop		ST			");};};
	{asm("	ldi		0h, IE");			 };
	{asm("	ldi		0h, IF");			 };

	if (!pass)
	{ 
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) |= 0x01;{asm("	pop		ST			");}};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x02);{asm("	pop		ST			");}};
		for (i=0;i<20;i++) LCD_DISP3[i] = msgf[i];
	}
	else
	{ 
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x80;{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x40);{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) |= 0x01;{asm("	pop		ST			");}};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) |= 0x02;{asm("	pop		ST			");}};
		for (i=0;i<20;i++) LCD_DISP3[i] = msgp[i];
	}

	LCD_STR((char*)&LCD_DISP3,3);

	for (i=0;i<9999999;i++){}
}

void main1(void)
{
	unsigned int i, j;
	unsigned int* s;
	unsigned int* d;

	{ 
		{asm("	rpts	1			");						 asm("	andn	2000h, ST	");};

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x04);{asm("	pop		ST			");};};

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900006) |= 0x10;{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x02;{asm("	pop		ST			");};};

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x01);{asm("	pop		ST			");}};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x02);{asm("	pop		ST			");}};

		*((volatile unsigned int*) 0x808064)  = (0x0018 | 0x00A0);	 
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};

		{asm("	ldi		0h, IE");			 };
		{asm("	ldi		0h, IF");			 };

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) &= (0xFF ^ 0x08);{asm("	pop		ST			");};};

		LCD_INIT();

		 
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) |= 0x08;{asm("	pop		ST			");};};

		{asm("	RPTS    100			");		 asm("	NOP					");}
	    {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x08);{asm("	pop		ST			");};};

		s = &BTCOPY;					 
		d = (unsigned int*)0x00809FC1;	 
		for (i=0;i<0x3F;i++)
		{
			d[i] = s[i];
		}

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) |= 0x04;{asm("	pop		ST			");};};

		INITIALIZING = 1;

		CLOCK = 0;

		HW_VER  = *((volatile char*) 0x0900000) & 0xFF;

		CLOCK = 55296000.0;

		PORT.Slave_ID = 247;
		PORT.tvector = (int*)0;
		PORT.pvector = (int*)0;
		vect_pt1 = (int*)0;
		vect_p1 = (int*)0;

		{asm("	ldi		0h, IE");			 };

		TIME0 = (double)(7.5);
		Setup_Timer(0, TIME0);

		TIME1 = (double)(11.0/(2.0*115200.0));
		Setup_Timer(1, TIME1);

		{asm("	ldi		22h,IOF		");		 };

		{asm("	ldi		1800h, ST");		 };

		FLASH_READ_ESN_MFGR(&ESN[0]);
		FLASH_READ_ESN_USER(&ESN[4]);

		{asm("	ldi		0h, IF");			 };

		Modbus_Initialize();

		INITIALIZING = 0;

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x08; *((volatile char*) 0x0900004) |= 0x80;{asm("	pop		ST			");};};

		{asm("	or		2000h, ST	");};
	}

	j = 0;

	while(1)
	{
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x80;{asm("	pop		ST			");};};

		LCD_DISP3[j] = ' ';
		j++;
		if (j>=20) j = 0;
		LCD_DISP3[j] = '.';
		LCD_STR((char*)&LCD_DISP3,3);

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x80;{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};};
		for(i=0;i<131072;i++){}

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x80;{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x80;{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x40);{asm("	pop		ST			");};};
		for(i=0;i<262144;i++){}

		if((!(HW_VER&0x80))&&((*((volatile char*) 0x0900005)&0xFF)^0xFF)) Exit_to_App();	 
	}
}

void Exit_to_App(void)
{
 



	vect_p1 = (int*)((unsigned int*)0x400000)[0x1FFF];
	if ((vect_p1 != (int*)0x00000000) && (vect_p1 != (int*)0xFFFFFFFF))
	{
		{asm("	rpts	1			");						 asm("	andn	2000h, ST	");};
		*((volatile unsigned int*) 0x808064)  = (0x0018 | 0x00A0);	 
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x04);{asm("	pop		ST			");};};

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x40);{asm("	pop		ST			");};};

		asm("		.global _vect_p1  ");
	    asm("	ldp		_vect_p1      ");
	    asm("	ldi		@_vect_p1, R0 ");
	    asm("	callnz	R0		      ");	 
	}
}
