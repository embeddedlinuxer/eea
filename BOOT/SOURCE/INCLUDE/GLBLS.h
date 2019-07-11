/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

//#define RUSS_TRANSLATION_BOOT

#ifndef _GLBLS
#define _GLBLS

#include "ETC.H"
#include "BUFFER.H"
#include "PERIPH.H"
#include "FLASH.H"
#include "SERIAL.H"
#include "MODBUSRTU.H"
#include "I2C.H"

#ifdef GLBLS_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

/* Note: when programming, be sure there are NO breakpoints set within the code space! */
#define PROGRAM_MODE 1

#ifdef GLBLS_H

#ifdef RUSS_TRANSLATION_BOOT
	const char copyright[]={"<>><<>><<>><<>><<>><"};
	char LCD_DISP0[]={">><<>><<>><<>><<>><<"};
	char LCD_DISP1[]={"><<>><<>><<>><<>><<>"};
	char LCD_DISP2[]={"<<>><<>><<>><<>><<>>"}; 
#else
	const char copyright[]={"(c)2017 Phase Dynamics, Inc."};
	const char LCD_DISP0[]={"Phase Dynamics, Inc."};
	const char LCD_DISP1[]={"                    "};
	const char LCD_DISP2[]={" Boot Loader  v1.10 "};
#endif

#endif

#ifndef GLBLS_H
extern const char* copyright;
extern const char* LCD_DISP0;
extern const char* LCD_DISP1;
extern const char* LCD_DISP2;
#endif

_EXTERN char LCD_DISP3[21];

_EXTERN unsigned int BOOTPORT;
_EXTERN unsigned int boot_blk[FLASH_BOOT_SIZE];
_EXTERN void main1(void);
_EXTERN void Exit_to_App(void);

extern unsigned int call_to_main;
extern void c_int00(void);
extern unsigned int BTCOPY;

_EXTERN int HW_VER;

_EXTERN unsigned int ESN[9];
_EXTERN BOOL MEM;
_EXTERN BOOL GATE_TIMEOUT;
_EXTERN unsigned int CLOCK;
_EXTERN int* vect_pt1;
_EXTERN int* vect_p1;

_EXTERN double TIME0;
_EXTERN double TIME1;
_EXTERN int TIMER1_COUNTER;

#define TMR0_GC ((volatile unsigned int*) 0x808020)
#define TMR1_GC ((volatile unsigned int*) 0x808030)
#define TMR_FUNC	0x0001
#define TMR_IO		0x0002
#define TMR_DATOUT	0x0004
#define TMR_DATIN	0x0008
#define TMR_GO		0x0040
#define TMR__HLD	0x0080
#define TMR_CP		0x0100
#define TMR_CLKSRC	0x0200
#define TMR_INV		0x0400
#define TMR_TSTAT	0x0800

#define TMR0_CNT ((volatile unsigned int*) 0x808024)
#define TMR1_CNT ((volatile unsigned int*) 0x808034)

#define TMR0_PER ((volatile unsigned int*) 0x808028)
#define TMR1_PER ((volatile unsigned int*) 0x808038)

#define TMR0_FREQ CLOCK_TIMER
#define TMR1_FREQ CLOCK_TIMER

#define TMR0_RESTART {*TMR0_GC |= (TMR__HLD | TMR_GO);}
#define TMR1_RESTART {*TMR1_GC |= (TMR__HLD | TMR_GO);}

#define TMR0_HOLD {*TMR0_GC &= 0xFFFF ^ (TMR__HLD | TMR_GO);}
#define TMR1_HOLD {*TMR1_GC &= 0xFFFF ^ (TMR__HLD | TMR_GO);}

#define TMR0_CONTINUE {*TMR0_GC |= (TMR__HLD);}
#define TMR1_CONTINUE {*TMR1_GC |= (TMR__HLD);}

#define TC0	((float)(0xFFFFFFFF*TIME0))	/* rollover time for TIMER0 */
#define TC1	((float)(0xFFFFFFFF*TIME1))	/* rollover time for TIMER1 */


#undef _EXTERN
#undef GLBLS_H
#endif

