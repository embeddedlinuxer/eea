/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#ifndef _SERIAL
#define _SERIAL

#ifdef SERIAL_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#define MAXBAUD 115200
#define FIFOSIZE	16		/* always use 16 for BOOT!!!! */
#define	PREFIX		3.0
#define SUFFIX		3.0
#define	NETWDOG		200.0
#define EOT			50.0

typedef struct	{
					unsigned char	STAT;
					
					unsigned int	TMR_Network_WDOG;
					unsigned int	TMR_EOT_Delay;
					unsigned int	TMR_Preamble_Delay;
					unsigned int	TMR_Suffix_Delay;
					unsigned int	TMR_Char;
					BOOL			TMR_enabled;
					int*			tvector;	/* port timer vector */
					int*			pvector;	/* port vector */

					unsigned int	i;
					unsigned int	func;
					unsigned int	Slave_ID;

					BFR		TXbuf;
					BOOL	TX_complete;

					BFR		RXbuf;
					BOOL	RX_pending;
				} PORTV;

_EXTERN PORTV PORT;

#define UART_MAX 8
#pragma DATA_SECTION(UART,"UART_ADDR")
_EXTERN volatile unsigned char UART[UART_MAX][16];

_EXTERN int Setup_UART(int baud);
_EXTERN int Set_Baud(int div);
_EXTERN void Clear_RX(void);
_EXTERN void Process_UINT(void);
_EXTERN float f_ciel(double s);

/* UART */
#define UART_ERROR_SELECT 		-10
#define UART_ERROR_STOP_BITS 	-11
#define UART_ERROR_NUM_BITS		-12
#define UART_ERROR_PARITY		-13
#define UART_ERROR_BAUD			-14
#define UART_ERROR_PRESCALE		-15
#define UART_ERROR_FIFOSETUP	-16
#define UART_CLOCK 				CLOCK_UART
#define FIFOSIZE 16

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

#undef _EXTERN
#undef SERIAL_H
#endif
