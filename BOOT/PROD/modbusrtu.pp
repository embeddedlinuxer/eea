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

#line 14 "modbusrtu.c"
void Modbus_Initialize(void)
{
	Setup_UART(9600);

	PORT.tvector = (int*)WDOG_P;
	PORT.pvector = (int*)MODBUS_RX_ID;

	TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	PORT.TMR_enabled = 1;
}

void WDOG_P(void)
{
	TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	if (!PORT.TX_complete) return;
	Clear_RX();
	PORT.pvector = (int*)MODBUS_RX_ID;
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
}

void TX_P(void)
{
	PORT.TX_complete = 0;
	if (HW_VER&0x80)
	{ 
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900012) &= (0xFF ^ 0x01);{asm("	pop		ST			");};};
	}
	else
	{
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");}; UART[BOOTPORT][4] |= 0x01;			 
	}

	PORT.tvector = (int*)TX_P1;
	TIMER1_COUNTER = PORT.TMR_Preamble_Delay;
}

void TX_P1(void)
{
	PORT.TMR_enabled = 0;
	PORT.tvector = (int*)TX_S;
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][1] = 0x02;	 
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][0] = Get(&PORT.TXbuf);
}

void TX_S(void)
{
	if (HW_VER&0x80)
	{ 
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900012) |= 0x01;{asm("	pop		ST			");};};
	}
	else
	{
		UART[BOOTPORT][4] &= 0x7E;			 
	}
	
	Clear_RX();
	PORT.tvector = (int*)WDOG_P;
	TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	PORT.TX_complete = 1;
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	UART[BOOTPORT][1] = 0x01;	 
}

void MODBUS_RX_ID(void)
{
 	PORT.TMR_enabled = 0;
	PORT.i = (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);	 
 	PORT.RX_pending = 1;
	PORT.pvector = (int*) MODBUS_RX_FUNCTION;
 	PORT.TMR_enabled = 1;
}

void MODBUS_RX_FUNCTION(void)
{
 	PORT.TMR_enabled = 0;
	PORT.func = (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);

	switch(PORT.func)
	{
		case 69:
		{
			PORT.i = 16;
			PORT.pvector = (int*) MODBUS_RX_nDATA;
			break;
		}
		
		case 100:
		case 72:
		case 104:
		case 71:
		case 70:
		case 68:
		case 102:
		{
			PORT.i = 2;
			PORT.pvector = (int*) MODBUS_RX_CRC;
			break;
		}

		case 105:
		{
			PORT.i = 4;
			PORT.pvector = (int*) MODBUS_RX_CRC;
			break;
		}

		case 66:
		{
			PORT.i = 6;
			PORT.pvector = (int*) MODBUS_RX_nDATA;
			break;
		}

		case 101:
		case 67:
		{
			PORT.i = 6;
			PORT.pvector = (int*) MODBUS_RX_nw;
			break;
		}

		case 103:
		case 65:
		{
			PORT.i = 4;
			PORT.pvector = (int*) MODBUS_RX_nDATA;
			break;
		}

		default:
		{
			PORT.i = 1;
			PORT.pvector = (int*) MODBUS_RX_n;
		}
	}

 	PORT.TMR_enabled = 1;
}

void MODBUS_RX_n(void)
{
 	PORT.TMR_enabled = 0;
	PORT.i--;
	if (PORT.i)
	{
	 	PORT.TMR_enabled = 1;
		return;
	}
	PORT.i = (unsigned int) (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);
	PORT.pvector = (int*) MODBUS_RX_nDATA;
 	PORT.TMR_enabled = 1;
}

void MODBUS_RX_nw(void)
{
 	PORT.TMR_enabled = 0;
	PORT.i--;
	if (PORT.i)
	{
	 	PORT.TMR_enabled = 1;
		return;
	}
	
	PORT.i = ((PORT.RXbuf.buff[PORT.RXbuf.n-2]&0xFF)<<8) | (PORT.RXbuf.buff[PORT.RXbuf.n-1]&0xFF);
	PORT.i *= 4;  
	PORT.pvector = (int*) MODBUS_RX_nDATA;
 	PORT.TMR_enabled = 1;
}

void MODBUS_RX_nDATA(void)
{
 	PORT.TMR_enabled = 0;
	PORT.i--;
	if (PORT.i)
	{
	 	PORT.TMR_enabled = 1;
		return;
	}

	PORT.i = 2;
	PORT.pvector = (int*) MODBUS_RX_CRC;
 	PORT.TMR_enabled = 1;
}

void MODBUS_RX_CRC(void)
{
	BOOL			validated;
	BOOL			reply;
	BOOL			c;
	unsigned int	address;
	unsigned int	numreg;
	unsigned int	tmp0;
	unsigned int	tmp1;
	int*			table;
	int				baud;

 	PORT.TMR_enabled = 0;
	PORT.i--;
	if (PORT.i)
	{
	 	PORT.TMR_enabled = 1;
		return;
	}

	validated = 1;

	PORT.RXbuf.locked = 1;		 

	 
	if(((int)PORT.Slave_ID != (int)(PORT.RXbuf.buff[0] & 0xFF)) || (PORT.RXbuf.CRC16 != 0))
	{
		validated = 0;
	}

	 
	if (validated)
	{
		{asm("	andn	0100h, IE");};		 

		address =  (unsigned int) (PORT.RXbuf.buff[2] & 0xFF);
		address =  address << 8;
		address |= (unsigned int) (PORT.RXbuf.buff[3] & 0xFF);
		address =  address << 8;
		address |= (unsigned int) (PORT.RXbuf.buff[4] & 0xFF);
		address =  address << 8;
		address |= (unsigned int) (PORT.RXbuf.buff[5] & 0xFF);

		numreg  =  (unsigned int) (PORT.RXbuf.buff[6] & 0xFF);
		numreg  =  numreg << 8;
		numreg  |= (unsigned int) (PORT.RXbuf.buff[7] & 0xFF);

		Clear(&PORT.TXbuf);

		c = 1;

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) &= (0xFF ^ 0x08);{asm("	pop		ST			");};};

		switch(PORT.func)
		{
			case 72:
			{
				if (!1)
				{
					Setup_UART(9600);
					c = 0;
					break;
				}
				else
				{
					{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x40;{asm("	pop		ST			");};};
					while(1){}
				}
			}

			case 104:
			{
				if (!1)
				{
					Setup_UART(9600);
					c = 0;
					break;
				}
				else
				{
					Exit_to_App();
					{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x40;{asm("	pop		ST			");};};
					while(1){}
				}
			}

			case 100:
			{
				Setup_UART(115200);
				c = 0;
				break;
			}

			case 105:
			{
				baud =  (unsigned int) (PORT.RXbuf.buff[2] & 0xFF);
				baud =  baud << 8;
				baud |= (unsigned int) (PORT.RXbuf.buff[3] & 0xFF);
				baud *= 100;

				switch(baud)
				{
					case 9600:
					case 19200:
					case 38400:
					case 57600:
					case 115200:
					{
						Setup_UART(baud);
						break;
					}
				}

				c = 0;
				break;
			}

			case 70:
			{
				Process_Restore_Factory_Defaults();
				break;
			}

			case 103:
			{
				Process_Store_Scratchpad(address);
				break;
			}

			case 102:
			{
				Process_Erase_Scratchpad();
				break;
			}

			case 71:
			{
				Process_Erase_Cfg();
				break;
			}

			case 68:
			{
				Process_Read_ESN();
				break;
			}

			case 69:
			{
				Process_Write_ESN(&PORT.RXbuf.buff[2]);
				break;
			}

			case 66:
			{
				Process_Read(address, numreg);
				break;
			}

			case 101:
			{
				Process_Write_Scratchpad(address, numreg, &PORT.RXbuf.buff[8]);
				break;
			}

			case 67:
			{
				Process_Write(address, numreg, &PORT.RXbuf.buff[8]);
				break;
			}

			case 65:
			{
				Process_Set_Entry_Point(address);
				break;
			}
			
			default:
			{
				c = 0;
				break;
			}
		}

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x08; *((volatile char*) 0x0900004) |= 0x80;{asm("	pop		ST			");};};

		if (c)
		{ 
			tmp0 = PORT.TXbuf.CRC16;
			tmp1 = tmp0 >> 8;

			Put(&PORT.TXbuf, tmp0);		 
			Put(&PORT.TXbuf, tmp1);		 
			{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
			UART[BOOTPORT][1] = 0x00;	 
			{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
			UART[BOOTPORT][2] = 0x07;	 
			PORT.tvector = (int*)TX_P;
			TIMER1_COUNTER = PORT.TMR_EOT_Delay;
		}
	}

	PORT.RXbuf.locked = 0;		 
	Clear_RX();
	PORT.pvector = (int*)MODBUS_RX_ID;
	PORT.TMR_enabled = 1;
}

void MB_exception(int ex)
{
	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func|0x80);					 
	Put(&PORT.TXbuf, ex);								 
}

void Process_Read(unsigned int addr, unsigned int n)
{
	unsigned int i;
	unsigned int f;
	unsigned int* c;
	unsigned int j;

	f = FLASH_SIZE();
	if (( 	(addr < (unsigned int)((unsigned int*)0x400000)) || ((addr+n)>=(f+(unsigned int)((unsigned int*)0x400000)))			&&
			(addr < (unsigned int)0x800000)  || ((addr+n)>=((unsigned int)0x808000))			&&
			(addr < (unsigned int)0x809800)  || ((addr+n)>=((unsigned int)0x80A000))
		) || (n==0) )
	{
		MB_exception(2);
		return;
	}

	c = (unsigned int*) addr;

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
	Put(&PORT.TXbuf, (n>>8));							 
	Put(&PORT.TXbuf, n);

	for (i=0;i<n;i++)
	{   
		Put(&PORT.TXbuf, c[0]>>24);
		Put(&PORT.TXbuf, c[0]>>16);
		Put(&PORT.TXbuf, c[0]>>8);
		Put(&PORT.TXbuf, c[0]);
		c++;
	}
}

void Process_Write_Scratchpad(unsigned int destination, unsigned int n, unsigned int* source)
{
	unsigned int i;
	unsigned int z;
	unsigned int* a;
	unsigned int* s;

	a = (unsigned int*) 0x0A00000;

	if ((destination+n)>(0x00008000))
	{
		MB_exception(2);
		return;
	}

	if (n>0x8000)
	{
		MB_exception(3);
		return;
	}

	s = source;
	for (i=destination;i<(destination+n);i++)
	{ 
		z = ((source[0]&0xFF)<<24) | ((source[1]&0xFF)<<16) | ((source[2]&0xFF)<<8) | (source[3]&0xFF);
		a[i] = z;
		source += 4;
	}

	for (i=destination;i<(destination+n);i++)
	{ 
		z = ((s[0]&0xFF)<<24) | ((s[1]&0xFF)<<16) | ((s[2]&0xFF)<<8) | (s[3]&0xFF);
		if (a[i] != z)
		{
			MB_exception(8);
		}
		s += 4;
	}

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
	Put(&PORT.TXbuf, destination>>24);
	Put(&PORT.TXbuf, destination>>16);
	Put(&PORT.TXbuf, destination>>8);
	Put(&PORT.TXbuf, destination);
	Put(&PORT.TXbuf, source[0]);						 
	Put(&PORT.TXbuf, source[1]);						 
}

void Process_Write(unsigned int destination, unsigned int n, unsigned int* source)
{
	unsigned int i;
	unsigned int f;
	unsigned int z;
	unsigned int* a;
	unsigned int* s;
	unsigned int current_block_size;
	unsigned int current_block_ptr;
	unsigned int* current_block_addr;
	int	nreg;
	int	nr;

	nreg = n;

	a = (unsigned int*) 0x0A00000;

	f = FLASH_SIZE();
	if ((destination < (unsigned int)((unsigned int*)0x400000)) || ((destination+n)>=(f+(unsigned int)((unsigned int*)0x400000))))
	{
		MB_exception(2);
		return;
	}

	if (n>0x8000)
	{
		MB_exception(3);
		return;
	}

	current_block_addr = (unsigned int*) destination;

	while(nreg>0)
	{
		if ( current_block_addr < (((unsigned int*)0x400000)+0x00008000) )
		{
			current_block_size = 0x00001000;
			current_block_ptr  = (unsigned int)current_block_addr & 0xFFF;
			current_block_addr = (unsigned int*)((unsigned int)current_block_addr & 0xFFF000);
		}
		else
		{
			current_block_size = 0x00008000;
			current_block_ptr  = (unsigned int)current_block_addr & 0x7FFF;
			current_block_addr = (unsigned int*)((unsigned int)current_block_addr & 0xFF8000);
		}

		for (i=0;i<current_block_size;i++)
		{ 
			a[i] = current_block_addr[i];
		}

		s = source;
		nr = nreg;
		for (i=current_block_ptr;i<current_block_size;i++)
		{ 
			z = ((source[0]&0xFF)<<24) | ((source[1]&0xFF)<<16) | ((source[2]&0xFF)<<8) | (source[3]&0xFF);
			a[i] = z;
			source += 4;
			nreg--;
			if (nreg<=0)
			{
				break;
			}
		}

		for (i=current_block_ptr;i<current_block_size;i++)
		{ 
			z = ((s[0]&0xFF)<<24) | ((s[1]&0xFF)<<16) | ((s[2]&0xFF)<<8) | (s[3]&0xFF);
	        if (a[i] != z)
	        {
				MB_exception(8);
				return;
	        }
			s += 4;
			nr--;
			if (nr<=0)
			{
				break;
			}
		}

		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};}; {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
        i = FLASH_ERASE_BLK(current_block_addr);
        if (i)
        {
			MB_exception(8);
			return;
        }

        i = FLASH_WRITE_BLK(current_block_addr, a, current_block_size);
        if (i)
        {
			MB_exception(8);
			return;
        }

		for (i=0;i<current_block_size;i++)
		{ 
			if (current_block_addr[i] != a[i])
			{
				MB_exception(8);
				return;
			}
		}

		current_block_addr += current_block_size;
	}

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
	Put(&PORT.TXbuf, destination>>24);
	Put(&PORT.TXbuf, destination>>16);
	Put(&PORT.TXbuf, destination>>8);
	Put(&PORT.TXbuf, destination);
	Put(&PORT.TXbuf, source[0]);						 
	Put(&PORT.TXbuf, source[1]);						 
}

void Process_Read_ESN(void)
{ 
	int i;

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 

	for(i=0;i<9;i++)
	{
		Put(&PORT.TXbuf, ESN[i]>>24);
		Put(&PORT.TXbuf, ESN[i]>>16);
		Put(&PORT.TXbuf, ESN[i]>>8);
		Put(&PORT.TXbuf, ESN[i]);
	}
}

void Process_Write_ESN(unsigned int* dat)
{ 
	int i;
	unsigned int ESNU[4];

	for(i=0;i<4;i++)
	{
		ESNU[i] = (dat[0]<<24) | (dat[1]<<16) | (dat[2]<<8) | (dat[3]);
		dat += 4;
	}

	if (FLASH_WRITE_ESN_USER(&ESNU[0]))
	{
		MB_exception(8);
		return;
	}

	FLASH_READ_ESN_USER(&ESN[4]);

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
}

void Process_Set_Entry_Point(unsigned int addr)
{
	unsigned int* m;
	unsigned int* f;
	unsigned int i;

	m = (unsigned int*) 0x0A00000;
	f = (unsigned int*) ((unsigned int*)0x400000);

	for (i=0;i<0x00002000;i++)
	{ 
		m[i] = f[i];
	}	

	m[0x1FFF] = addr;

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};}; {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
    i = FLASH_ERASE_BLK((unsigned int*)((unsigned int*)0x400000)+0x00001000);
    i |= FLASH_WRITE_BLK((unsigned int*)((unsigned int*)0x400000)+0x00001000, m+0x00001000, 0x00001000);

    if (i)
    {
		MB_exception(8);
		return;
    }

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
}

unsigned int Copy_Block(unsigned int* s, unsigned int* d)
{
	unsigned int i;
	unsigned int* m;

	m = (unsigned int*) 0x0A00000;

	for (i=0;i<0x00008000;i++)
	{ 
		m[i] = s[i];
	}	

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};}; {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
    i = FLASH_ERASE_BLK(d);
	i |= FLASH_WRITE_BLK(d, m, 0x00008000);

	return i;
}

void Process_Restore_Factory_Defaults(void)
{
	unsigned int r;

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};}; {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
	r = Copy_Block((unsigned int*)((unsigned int*)0x418000), (unsigned int*)((unsigned int*)0x408000));
	r = Copy_Block((unsigned int*)((unsigned int*)0x418000), (unsigned int*)((unsigned int*)0x410000));

	if (r)
	{
		MB_exception(8);
		return;
	}

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
}

void Process_Erase_Cfg(void)
{
	unsigned int i;

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};}; {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
    FLASH_ERASE_BLK((unsigned int*)((unsigned int*)0x418000));
    FLASH_ERASE_BLK((unsigned int*)((unsigned int*)0x408000));
    FLASH_ERASE_BLK((unsigned int*)((unsigned int*)0x410000));

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
}

void Process_Erase_Scratchpad(void)
{
	unsigned int* m;
	unsigned int i;

	m = (unsigned int*) 0x0A00000;
	for (i=0;i<0x00008000;i++)
	m[i] = 0x00000000;

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
}

void Process_Store_Scratchpad(unsigned int addr)
{
	unsigned int* m;
	unsigned int* f;
	unsigned int i;
	unsigned int SIZE;

	m = (unsigned int*) 0x0A00000;
	f = (unsigned int*) addr;

	if ( f < (((unsigned int*)0x400000)+0x00008000) )
	{
		SIZE = 0x00001000;
		f = (unsigned int*)((unsigned int)f & 0xFFF000);
	}
	else
	{
		SIZE = 0x00008000;
		f = (unsigned int*)((unsigned int)f & 0xFF8000);
	}

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};}; {{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
    i = FLASH_ERASE_BLK(f);
    i |= FLASH_WRITE_BLK(f, m, SIZE);

    if (i)
    {
		MB_exception(8);
		return;
    }

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				 
	Put(&PORT.TXbuf, PORT.func);						 
	Put(&PORT.TXbuf, ((unsigned int)f)>>24);
	Put(&PORT.TXbuf, ((unsigned int)f)>>16);
	Put(&PORT.TXbuf, ((unsigned int)f)>>8);
	Put(&PORT.TXbuf, ((unsigned int)f));
}
