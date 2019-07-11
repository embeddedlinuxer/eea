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
/* File Name: SERIAL.H						    							*/
/* 									    									*/
/* File Description:  If I2C.H explains the physical layer then this        */
/* explains the data layer.  This packetizes the serial data into MODBUS    */
/* packets.  This also defines the PORTs and PORTCFGs.  It also defines user*/
/* readable serial functionality such as when a transfer has been complete. */
/*                                                                          */
/* STRUCTS:	PORTV	- PORT sturcture.  Ports are imPORTant because they 	*/
/*					define an IO channel. 	                                */
/*					PORT0	- MODBUS Master Channel                         */
/*					PORT1   - IDEC Port for Screen Communication            */
/*					PORT2   - MicroMotion Liquid and Gas                    */
/*					PORT3   - MicroMotion for extra MicroMotion LIQ & GAS   */
/*					PORT4   - Analog In Channel (?)                         */
/*			PORTC	- Each port has a CFG that it undergoes before it can   */
/*					be used.  These structs are used to implement and       */
/*					facitilitate those configurations.                      */
/*			MPKT	- MODBUS packet struct.  It defines the slave, address, */
/*					function and data so that it can be used by MODBUS		*/
/*					compatible periphreals.  This is really cool IMO.		*/
/*									    									*/
/****************************************************************************/

#ifndef _SERIAL
#define _SERIAL

#ifdef SERIAL_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

typedef struct	{
					int				Slave;
					int				SNUM;

					BOOL			PRESENT;
					BOOL			TX_complete;
					BOOL			RX_pending;
					BOOL			BUSY;
					BOOL			IGNORE_RX;

					unsigned char	STAT;
					unsigned char	DAT;
					BOOL			broadcast;

					int				TMR_Network_WDOG;
					int				TMR_EOT_Delay;
					int				TMR_Prefix_Delay;
					int				TMR_Suffix_Delay;
					int				TMR_Char;

					TPKT			TMR_Poll;
					TPKT			TMR_Retry;
					int				nr;
					BOOL			Received_PKT;

					BOOL			TMR_enabled;
					int*			tvector;		/* port timer vector */
					int*			pvector;		/* port vector current */
					int*			pvector_main;	/* port vector start */
					int*			tvector_main;	/* port timer vector start */
					int*			fvector;		/* final vector - this vector executes (GIE) after the suffix, and before releasing the port */

					float			actual_baud_rate;
					BOOL			c;
					BOOL			r;
					int				n;
					int				n_exp;
					int				ai;
					int				start;
					int				i;
					int				i_main;
					unsigned int	func;
					unsigned int	ERROR_COUNT;
					unsigned int	WDOG_COUNT;
					unsigned int	INV_CMD_COUNT;
					unsigned int	INV_PKT_COUNT;
					unsigned int	SUCCESS;
					unsigned int	NUM_RETRIES;
					BOOL			FLAG1;
					BOOL			FLAG2;
					BOOL			FLAG3;
					BOOL			LONG_ADDRESS;

					LIST			MASTER;
					int*			p;
					unsigned int	data;
					float*			f;
					unsigned int*	l;
					BOOL			failed;
				} PORTV;

typedef struct	{
					VAR				PREFIX;
					VAR				SUFFIX;
					VAR				NETWDOG;
					VAR				Slave_ID;
					VAR				Baud_Rate;
					int				Parity;
					int				n_bits;
					int				STP;
					int				N;
					int				N_retry;
					VAR				EOT_Delay;
					VAR				Retry_Time;
					VAR				Num_Retry;
					int				poll_time;
					int				timeout;
				} PORTC;

#define nmax 10
typedef struct	{
					int*	prev;
					int*	next;

					int*	rxvect;
					int*	txvect;
					int		n;
					int		slave;
					int		func;
					int		addr;
					int		num;
					float	v[nmax];
					float*	flt_ptr;
					int*	int_ptr;
				} MPKT;

_EXTERN int  PDI_id;
_EXTERN void No_Port(int id);

_EXTERN unsigned int SP0_RX_DATA;

#define MASTER_Q_LEN 75
_EXTERN MPKT QUEUE_MASTER[MASTER_Q_LEN];
_EXTERN LIST LIST_MASTER_EMPTY;

#pragma DATA_SECTION(PORTCFG,"CFG")
_EXTERN PORTC PORTCFG[UART_MAX];

#pragma DATA_SECTION(UART,"UART_ADDR")
_EXTERN volatile unsigned char UART[UART_MAX][16];

#pragma DATA_SECTION(PORT,"internal_RAM")
_EXTERN PORTV PORT[UART_MAX];
#pragma DATA_SECTION(RXbuf,"internal_RAM")
_EXTERN BFR	RXbuf[UART_MAX];
#pragma DATA_SECTION(TXbuf,"internal_RAM")
_EXTERN BFR	TXbuf[UART_MAX];

#pragma DATA_SECTION(vect_p0,"internal_RAM")
_EXTERN int* vect_p0;
#pragma DATA_SECTION(vect_p1,"internal_RAM")
_EXTERN int* vect_p1;
#pragma DATA_SECTION(vect_p2,"internal_RAM")
_EXTERN int* vect_p2;
#pragma DATA_SECTION(vect_p3,"internal_RAM")
_EXTERN int* vect_p3;
#pragma DATA_SECTION(vect_p4,"internal_RAM")
_EXTERN int* vect_p4;
#pragma DATA_SECTION(vect_p5,"internal_RAM")
_EXTERN int* vect_p5;
#pragma DATA_SECTION(vect_p6,"internal_RAM")
_EXTERN int* vect_p6;
#pragma DATA_SECTION(vect_p7,"internal_RAM")
_EXTERN int* vect_p7;

#ifdef SERIAL_H
#pragma CODE_SECTION(Setup_Serial_Port0,"initialization")
#pragma CODE_SECTION(Clear_RX,"interrupt_routines")
#pragma CODE_SECTION(RESET_PKT,"interrupt_routines")
#pragma CODE_SECTION(Setup_UART,"initialization")
#pragma CODE_SECTION(Set_Baud,"initialization")
#pragma CODE_SECTION(Process_UINT,"interrupt_routines")
#pragma CODE_SECTION(WDOG_P,"interrupt_routines")
#pragma CODE_SECTION(TX_S1,"interrupt_routines")
#pragma CODE_SECTION(TX_S,"interrupt_routines")
#pragma CODE_SECTION(TX_P1,"interrupt_routines")
#pragma CODE_SECTION(TX_P,"interrupt_routines")
#pragma CODE_SECTION(Prepare_TX,"interrupt_routines")
#pragma CODE_SECTION(Port_Defaults,"initialization")
#endif

_EXTERN void Prepare_TX(int id, BOOL skip_CRC);
_EXTERN void RESET_PKT(int id);
_EXTERN void Clear_RX(int id);
_EXTERN void WDOG_P(int id);
_EXTERN void Setup_Serial_Port0(void);
_EXTERN int  Setup_UART(int id, int baud_rate, int num_bits, int parity, float stop_bits);
_EXTERN int  Set_Baud(int id, int div);
_EXTERN void Process_UINT(int id);
_EXTERN void TX_P(int id);
_EXTERN void TX_P1(int id);                                     
_EXTERN void TX_S(int id);
_EXTERN void TX_S1(int id);
_EXTERN void Port_Defaults(BOOL FORCE);

#define LSR_FIFO_DATA_ERROR			0x80
#define LSR_THR_TSR_EMPTY			0x40
#define LSR_THR_EMPTY				0x20
#define LSR_break_int				0x10
#define LSR_FRAMING_ERROR			0x08
#define LSR_PARITY_ERROR			0x04
#define LSR_OVERRUN_ERROR			0x02
#define LSR_receive_data_rdy		0x01

/* UART */
#define UART_ERROR_SELECT 		-10
#define UART_ERROR_STOP_BITS 	-11
#define UART_ERROR_NUM_BITS		-12
#define UART_ERROR_PARITY		-13
#define UART_ERROR_BAUD			-14
#define UART_ERROR_PRESCALE		-15
#define UART_ERROR_FIFOSETUP	-16
#define UART_CLOCK 				CLOCK_UART
#define FIFOSIZE				16

#define RHR		0					/* receiver holding register */
#define THR		0					/* transmitter holding register */
#define IER		1					/* interrupt enable register */
#define FCR		2					/* FIFO control register */
#define ISR		2					/* interrupt ID register */
#define LCR		3					/* line control register */
#define MCR		4					/* modem control register */
#define LSR		5					/* line status register */
#define MSR		6					/* modem status register */
#define SPR		7
#define DLL		0
#define DLM		1

#define SP0_GC ((volatile unsigned int*) 0x808040)
#define RRDY 0x0001
#define XRDY 0x0002
#define FSXOUT 0x0004
#define XSREMPTY 0x0008
#define RSRFULL 0x0010
#define HS 0x0020
#define XCLK_SRCE 0x0040
#define RCLK_SRCE 0x0080
#define XVAREN 0x0100
#define RVAREN 0x0200
#define XFSM 0x0400
#define RSFM 0x0800
#define CLKXP 0x1000
#define CLKRP 0x2000
#define DXP 0x4000
#define DRP 0x8000
#define FSXP 0x00010000
#define FSRP 0x00020000
#define XLEN 0x000C0000
#define XLEN_8 0x00000000
#define XLEN_16 0x00040000
#define XLEN_24 0x00080000
#define XLEN_32 0x000C0000
#define RLEN 0x00300000
#define RLEN_8 0x00000000
#define RLEN_16 0x00100000
#define RLEN_24 0x00200000
#define RLEN_32 0x00300000
#define XTINT 0x00400000
#define XINT 0x00800000
#define RTINT 0x01000000
#define RINT 0x02000000
#define _XRESET 0x04000000
#define _RRESET 0x08000000

#define SP0_XCTRL ((volatile unsigned int*) 0x808042)
#define SP0_RCTRL ((volatile unsigned int*) 0x808043)
#define CLKFUNC 0x0001
#define DFUNC 0x0010
#define FSFUNC 0x0100

#define SP0_TMRCTRL ((volatile unsigned int*) 0x808044)
#define XGO		0x00000001
#define _XHLD	0x00000002
#define XC_P	0x00000004
#define XCLKSRC	0x00000008
#define XTSTAT	0x00000020
#define RGO		0x00000040
#define _RHLD	0x00000080
#define RC_P	0x00000100
#define RCLKSRC	0x00000200
#define RSTAT	0x00000800

#define SP0_TMRCNTR ((volatile unsigned int*) 0x808045)

#define SP0_TMRPER ((volatile unsigned int*) 0x808046)
#define SP0_TXDATA ((volatile unsigned int*) 0x808048)
#define SP0_RXDATA ((volatile unsigned int*) 0x80804C)

#define WAIT_SP0	{	SP0_RX_DATA = *SP0_RXDATA & 0xFFFF;\
						asm("	tstb	0020h, IF	");\
						asm("	.word	6A05FFFEh	");\
						CLEAR_RINT0;\
						SEL_CLEAR;\
						SP0_RX_DATA = *SP0_RXDATA & 0xFFFF;}

#undef _EXTERN
#undef SERIAL_H
#endif
