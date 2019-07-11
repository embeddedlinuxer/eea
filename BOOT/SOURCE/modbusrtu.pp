#line 19 "F:\WKDIR\CodeComposer\EEA_SA_V613b\BOOT\SOURCE\INCLUDE\BUFFER.H"
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

#line 25 "F:\WKDIR\CodeComposer\EEA_SA_V613b\BOOT\SOURCE\INCLUDE\SERIAL.H"
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

 
#line 26 "F:\WKDIR\CodeComposer\EEA_SA_V613b\BOOT\SOURCE\INCLUDE\MODBUSRTU.H"
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

#line 48 "F:\WKDIR\CodeComposer\EEA_SA_V613b\BOOT\SOURCE\INCLUDE\GLBLS.H"
extern const char* copyright;
extern const char* LCD_DISP0;
extern const char* LCD_DISP1;
extern const char* LCD_DISP2;



extern char LCD_DISP3[21];

extern unsigned int BOOTPORT;
extern unsigned int boot_blk[FLASH_BOOT_SIZE];
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
	PORT.TMR_enabled = TRUE;
}

void WDOG_P(void)
{
	TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	if (!PORT.TX_complete) return;
	Clear_RX();
	PORT.pvector = (int*)MODBUS_RX_ID;
	NOPS;
}

void TX_P(void)
{
	PORT.TX_complete = FALSE;
	if (HW_VER&0x80)
	{ 
		ENABLE_TXB;
	}
	else
	{
		NOPS; UART[BOOTPORT][4] |= 0x01;			 
	}

	PORT.tvector = (int*)TX_P1;
	TIMER1_COUNTER = PORT.TMR_Preamble_Delay;
}

void TX_P1(void)
{
	PORT.TMR_enabled = FALSE;
	PORT.tvector = (int*)TX_S;
	NOPS;
	UART[BOOTPORT][1] = 0x02;	 
	NOPS;
	UART[BOOTPORT][0] = Get(&PORT.TXbuf);
}

void TX_S(void)
{
	if (HW_VER&0x80)
	{ 
		DISABLE_TXB;
	}
	else
	{
		UART[BOOTPORT][4] &= 0x7E;			 
	}
	
	Clear_RX();
	PORT.tvector = (int*)WDOG_P;
	TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	PORT.TX_complete = TRUE;
	NOPS;
	UART[BOOTPORT][1] = 0x01;	 
}

void MODBUS_RX_ID(void)
{
 	PORT.TMR_enabled = FALSE;
	PORT.i = (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);	 
 	PORT.RX_pending = TRUE;
	PORT.pvector = (int*) MODBUS_RX_FUNCTION;
 	PORT.TMR_enabled = TRUE;
}

void MODBUS_RX_FUNCTION(void)
{
