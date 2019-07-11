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

 PORTV PORT;


#pragma DATA_SECTION(UART,"UART_ADDR")
 volatile unsigned char UART[8][16];

 int Setup_UART(int baud);
 int Set_Baud(int div);
 void Clear_RX(void);
 void Process_UINT(void);
 float f_ciel(double s);

 
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
 
 
 
 
 
 
 
 
 
 
 
 

#line 136
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

#line 14 "serial.c"
int Setup_UART(int baud)
{
	int	div;
	double n;
	double temp;
	unsigned char u;
	int id;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	n = (double)11.0;

	for (id=0;id<8;id++)
	{ 

		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");}; UART[id][1] = 0x00;		 
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");}; UART[id][4] = 0x08;		 

		if (HW_VER&0x80)
		{ 
			switch (id)
			{
				case 0: {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900012) |= 0x08;{asm("	pop		ST			");};}; break;
				case 1: {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900012) |= 0x01;{asm("	pop		ST			");};}; break;
			}
		}
		else
		{
			if (id==4)
			{
				{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");}; UART[id][3] |= 0x40;		 
			}

			{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");}; UART[id][4] &= 0xFE;			 
		}
	}

	if (HW_VER&0x80)
	{
		BOOTPORT = 1;
	}
	else
	{ 
		BOOTPORT = 7;
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		UART[BOOTPORT][7] = 0xAA;
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		UART[BOOTPORT][7+1] = 0xFF;  
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		u = UART[BOOTPORT][7] & 0xFF;
		if (u!=0xAA)
		{
			BOOTPORT = 0;
		}
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		UART[BOOTPORT][7] = 0x00;
	}

	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][3] = 0x00;

	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][3] |= 0x03;

	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][3] |= 0x08;

	temp = ((CLOCK/2.0)/baud/16.0);
	div = f_ciel(temp);
	 



	Set_Baud(div);

	Clear_RX();
	Clear(&PORT.TXbuf);
	PORT.TX_complete = 1;

	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][2] = 0x07;	 

	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");}; UART[BOOTPORT][1] = 0x01;	 
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");}; UART[BOOTPORT][4] |= 0x08;	 

	temp = n*200.0/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_Network_WDOG = temp;

	temp = n*50.0/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_EOT_Delay = temp;

	temp = n*3.0/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_Preamble_Delay = temp;

	temp = n*3.0/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_Suffix_Delay = temp;

	temp = n/baud/TIME1;
	temp = f_ciel(temp);
	PORT.TMR_Char = temp;

	{asm("	or		0001h, IE");};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900006) |= 0x01;{asm("	pop		ST			");};};

	PORT.TMR_enabled = 0;

	{asm("	pop		ST			");};
}

void Clear_RX()
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	PORT.RX_pending = 0;
	PORT.STAT = 0x00;
	Clear(&PORT.RXbuf);
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][2] = 0x07;	 
	{asm("	pop		ST			");};

	if (HW_VER&0x80)
	{ 
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900012) |= 0x01;{asm("	pop		ST			");};};
	}
	else
	{
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");}; UART[BOOTPORT][4] &= 0xFE;			 
	}
}

int Set_Baud(int div)
{
	unsigned char temp1;

	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	temp1 = UART[BOOTPORT][3];
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][3] = 0x80;
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][0] = (unsigned char)div;
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][1] = (unsigned char)(div>>8);
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][3] = temp1;
}

void Process_UINT(void)
{
	int i;
	int j;
	unsigned int LINEstatus;
	unsigned int INTstatus;

	while (1)
	{
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		INTstatus = UART[BOOTPORT][2] & 0x0F;

		switch(INTstatus)
		{
			case 0x02:	 
			{
				if 	(PORT.TX_complete) break;

				if (PORT.TXbuf.n<=0)
				{
					TIMER1_COUNTER = PORT.TMR_Suffix_Delay + PORT.TMR_Char;
					PORT.TMR_enabled = 1;	 
				}
				else
				{
					for (i=0;i<16-1;i++)
					{
						if (PORT.TXbuf.n>0)
						{
							{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
							UART[BOOTPORT][0] = Get(&PORT.TXbuf);
						}
						else
						{
							break;
						}
					}
				}
				break;
			}
			
		    case 0x04:	 
			case 0x0C:	 
			{
				while(1)
				{
					{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
					LINEstatus = (UART[BOOTPORT][5] & 0xFF);
					if (!(LINEstatus & 0x01)) break;  
	
					TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	
					{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
					Put(&PORT.RXbuf, (UART[BOOTPORT][0] & 0xFF) | (LINEstatus<<8));
	
					PORT.STAT |= LINEstatus & 0x9E;
	
				    if (PORT.RXbuf.n>0)
				    {
						vect_p1 = PORT.pvector;
					    {asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
						asm("		.global _vect_p1  ");
					    asm("	ldp		_vect_p1      ");
					    asm("	ldi		@_vect_p1, R0 ");
					    asm("	callnz	R0		      ");	 
					    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
					}
				}
				break;
			}

			case 0x06:	 
			{
				{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
				LINEstatus = (UART[BOOTPORT][5] & 0xFF);
	
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
