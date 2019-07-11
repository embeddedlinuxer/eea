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

#line 39 "F:\WKDIR\CodeComposer\EEA_SA_V613b\BOOT\SOURCE\INCLUDE\GLBLS.H"
	const char copyright[]={"(c)2017 Phase Dynamics, Inc."};
	const char LCD_DISP0[]={"Phase Dynamics, Inc."};
	const char LCD_DISP1[]={"                    "};
	const char LCD_DISP2[]={" Boot Loader  v1.10 "};
#line 54
 char LCD_DISP3[21];

 unsigned int BOOTPORT;
 unsigned int boot_blk[FLASH_BOOT_SIZE];
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

	_GIE;

	LEDR_OFF;
	LEDG_OFF;
	DISABLE_BOOTINT;
	DISABLE_HEATER;

	RELAY1_OFF;
	RELAY2_OFF;

	if (!1)
	{
		main1();
		while(TRUE){}	
	}

	*PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);	 
	NOPS;

