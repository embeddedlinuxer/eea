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

#line 18 "F:\WKDIR\CodeComposer\EEA_SA_V613b\BOOT\SOURCE\INCLUDE\BRANCH.H"
asm("		.global _BT			");
asm("		.global _BTCOPY		");
asm("		.global _c_XINT0	");
asm("		.global _c_RINT0	");
asm("		.global _c_TINT0	");
asm("		.global _c_TINT1	");
asm("		.global _c_INT0		");
asm("		.global _c_INT1		");
asm("		.global _c_INT2		");
asm("		.global _c_INT3		");
asm("		.global _c_SPURINT	");
asm("		.global _XINT0		");
asm("		.global _RINT0		");
asm("		.global _TINT0		");
asm("		.global _TINT1		");
asm("		.global _INT0		");
asm("		.global _INT1		");
asm("		.global _INT2		");
asm("		.global _INT3		");

asm("		.sect \"branch_table_copy\"	");
asm("_BTCOPY					");
asm("		BR _c_INT0			");
asm("		BR _c_SPURINT		");
asm("		BR _c_SPURINT		");
asm("		BR _c_SPURINT		");
asm("		BR _c_SPURINT		");
asm("		BR _c_SPURINT		");
asm("		BR _c_SPURINT		");		 
asm("		BR _c_SPURINT		");      
asm("		BR _c_TINT0			");
asm("		BR _c_TINT1			");
asm("		BR _c_SPURINT		");
asm("		.space	20			");		 
asm("							");
asm("		.loop 28			");		 
asm("		BR _c_SPURINT		");
asm("		.endloop			");
asm("		.space 4			");		 

asm("		.sect \"branch_table\"	");
asm("_BT						");
asm("_INT0	BR _c_SPURINT		");
asm("_INT1	BR _c_SPURINT		");
asm("_INT2	BR _c_SPURINT		");
asm("_INT3	BR _c_SPURINT		");
asm("_XINT0	BR _c_SPURINT		");
asm("_RINT0	BR _c_SPURINT		");
asm("		BR _c_SPURINT		");		 
asm("		BR _c_SPURINT		");      
asm("_TINT0	BR _c_SPURINT		");
asm("_TINT1	BR _c_SPURINT		");
asm("_DINT	BR _c_SPURINT		");
asm("		.space	20			");		 
asm("_TRAPO						");
asm("		.loop 28			");		 
asm("		BR _c_SPURINT		");
asm("		.endloop			");
asm("		.space 4			");		 


#line 12 "isr.c"
#pragma CODE_SECTION(c_INT0,"interrupt_routines")
#pragma INTERRUPT(c_INT0)
void c_INT0(void)
{
	DISABLE_EXTINT0;
	Process_UINT();
	ENABLE_EXTINT0;
}

#pragma CODE_SECTION(c_TINT0,"interrupt_routines")
#pragma INTERRUPT(c_TINT0)
void c_TINT0(void)
{
	 

	vect_p1 = (int*)FLASH_LOC[FLASH_ENTRY_POINT_APP];
	if ((vect_p1 != (int*)0x00000000) && (vect_p1 != (int*)0xFFFFFFFF))
	{
		DISABLE_JTAG;
	}

	Exit_to_App();
}

#pragma CODE_SECTION(c_TINT1,"interrupt_routines")
#pragma INTERRUPT(c_TINT1)
void c_TINT1(void)
{
	DISABLE_TINT1;

 	if(PORT.TMR_enabled)
	{
	 	TIMER1_COUNTER--;
		if (TIMER1_COUNTER==0)
		{
			vect_pt1 = PORT.tvector;

		    PUSH_ALL;
			asm("		.global _vect_pt1  ");
		    asm("	ldp		_vect_pt1      ");
		    asm("	ldi		@_vect_pt1, R0 ");
		    asm("	callnz	R0		   	   ");	 
		    POP_ALL;
		}
	}

	ENABLE_TINT1;
}

#pragma CODE_SECTION(c_SPURINT,"interrupt_routines")
#pragma INTERRUPT(c_SPURINT)
void c_SPURINT(void)
{
}
