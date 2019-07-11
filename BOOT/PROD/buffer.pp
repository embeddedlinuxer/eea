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

 void Clear(BFR* buffer);
 void CRC16(BFR* buffer);
 BOOL Put(BFR* buffer, unsigned int b);
 int Get(BFR* buffer);





 BOOL INITIALIZING;

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

#line 14 "buffer.c"
void CRC16(BFR* buffer)
{
	int i;
	
	if (buffer->n<=0) return;
	
	if (buffer->n==1)
	{
		buffer->CRC16 = 0x1343;;
	}

	buffer->CRC16 ^= (buffer->buff[buffer->tail] & 0xFF);

	for (i=0;i<8;i++)
	{	
		if (buffer->CRC16 & 0x01)
		{
			buffer->CRC16 >>= 1;
			buffer->CRC16 ^= 0xA001;;
		}
		else
		{
			buffer->CRC16 >>= 1;
		}
	}
}

BOOL Put(BFR* buffer, unsigned int b)
{
	if (buffer->locked) return 0;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (buffer->n >= 4096+16)
	{
		{asm("	pop		ST			");};
		return 0;
	}
	buffer->buff[buffer->tail] = b;
	buffer->n ++;
	CRC16(buffer);
	buffer->tail ++;
	if (buffer->tail >= 4096+16) buffer->tail = 0;

	{asm("	pop		ST			");};
	
	return 1;
}

int Get(BFR* buffer)
{
	unsigned char r;

	if (buffer->locked) return 0;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (buffer->n <= 0)
	{
		{asm("	pop		ST			");};
		return 0;
	}
	
	r = buffer->buff[buffer->head];

	buffer->head ++;
	if (buffer->head >= 4096+16) buffer->head = 0;
	buffer->n --;
	
	{asm("	pop		ST			");};
	
	return r;
}

void Clear(BFR* buffer)
{
	int i;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	
	if (INITIALIZING) buffer->locked = 0;
	else
	if (buffer->locked)
	{
		{asm("	pop		ST			");};
		return;
	}
	
	buffer->head = 0;
	buffer->tail = 0;
	buffer->n = 0;
	
	if (INITIALIZING)
	{
		buffer->CRC16 = 0x1343;;
		for (i=0;i<4096+16;i++)
		{
			buffer->buff[i] = 0x00;
		}
	}
	
	{asm("	pop		ST			");};
}
