/****************************************************************************/
/* Phase Dynamics, Inc.							    						*/
/* 1251 Columbia Dr.                                                        */
/* Richardson, TX 75081                                                     */
/* 972-680-1550    972-680-3262 fax                                         */
/*									    									*/
/* (C)2011 Phase Dynamics, Inc.						    					*/
/* This code is not to be used in any capacity without explicit consent by  */
/* Phase Dynamics, Inc.  Violators will be prosecuted to the fullest extent */
/* of the law.  Please contact Phase Dynamics, Inc. if you wish to use this */
/* code.  Thank you for your cooperation.                                   */
/*									    									*/
/* File Name: ETC.H							    							*/
/* 									    									*/
/* File Description:  This header file defines push and pop operations for  */
/* the stack.  Also defines boolean logic, global interrupts, enabling and  */
/* clearing of interrupts in the IE register.	    						*/
/*									    									*/
/****************************************************************************/

#ifndef _ETC
#define _ETC

#ifdef ETC_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

typedef unsigned int BOOL;

#define MEM_LOC 0x0A00000

#define TRUE 1
#define FALSE 0
#define NULL 0
#define NULL_PTR (int*)NULL

#define NOPS			{asm("	NOP			");\
						 asm("	NOP			");\
						 asm("	NOP			");}

#define PUSH_ALL_C		{asm("	push	ST			");\
						 asm("	push	FP			");\
						 asm("	ldi		SP,FP		");\
						 asm("	addi	2,SP		");\
						 asm("	push	R4			");\
						 asm("	push	R6			");\
						 asm("	pushf	R6			");\
						 asm("	push	R7			");\
						 asm("	pushf	R7			");\
						 asm("	push	AR4			");\
						 asm("	push	AR5			");\
						 asm("	push	AR6			");\
						 asm("	push	AR7			");\
						 asm("	push	DP			");\
						 asm("	push	RS			");}

#define POP_ALL_C		{asm("	pop		RS			");\
						 asm("	pop		DP			");\
						 asm("	pop		AR7			");\
						 asm("	pop		AR6			");\
						 asm("	pop		AR5			");\
						 asm("	pop		AR4			");\
						 asm("	popf	R7			");\
						 asm("	pop		R7			");\
						 asm("	popf	R6			");\
						 asm("	pop		R6			");\
						 asm("	pop		R4			");\
						 asm("	subi 	2,SP		");\
						 asm("	pop 	FP			");\
						 asm("	pop 	ST			");}

/* note: skip AR3 because it is FP */
#define PUSH_ALL		{asm("	push	ST			");\
						 asm("	push	FP			");\
						 asm("	ldi		SP,FP		");\
						 asm("	addi	2,SP		");\
						 asm("	push	R0			");\
						 asm("	pushf	R0			");\
						 asm("	push	R1			");\
						 asm("	pushf	R1			");\
						 asm("	push	R2			");\
						 asm("	pushf	R2			");\
						 asm("	push	R3			");\
						 asm("	pushf	R3			");\
						 asm("	push	R4			");\
						 asm("	pushf	R4			");\
						 asm("	push	R5			");\
						 asm("	pushf	R5			");\
						 asm("	push	R6			");\
						 asm("	pushf	R6			");\
						 asm("	push	R7			");\
						 asm("	pushf	R7			");\
						 asm("	push	AR0			");\
						 asm("	push	AR1			");\
						 asm("	push	AR2			");\
						 asm("	push	AR4			");\
						 asm("	push	AR5			");\
						 asm("	push	AR6			");\
						 asm("	push	AR7			");\
						 asm("	push	DP			");\
						 asm("	push	IR0			");\
						 asm("	push	IR1			");\
						 asm("	push	BK			");\
						 asm("	push	IOF			");\
						 asm("	push	RS			");\
						 asm("	push	RE			");\
						 asm("	push	RC			");}

/* note: skip AR3 because it is FP */
#define POP_ALL			{asm("	pop		RC			");\
						 asm("	pop		RE			");\
						 asm("	pop		RS			");\
						 asm("	pop		IOF			");\
						 asm("	pop		BK			");\
						 asm("	pop		IR1			");\
						 asm("	pop		IR0			");\
						 asm("	pop		DP			");\
						 asm("	pop		AR7			");\
						 asm("	pop		AR6			");\
						 asm("	pop		AR5			");\
						 asm("	pop		AR4			");\
						 asm("	pop		AR2			");\
						 asm("	pop		AR1			");\
						 asm("	pop		AR0			");\
						 asm("	popf	R7			");\
						 asm("	pop 	R7			");\
						 asm("	popf	R6			");\
						 asm("	pop		R6			");\
						 asm("	popf	R5			");\
						 asm("	pop		R5			");\
						 asm("	popf 	R4			");\
						 asm("	pop		R4			");\
						 asm("	popf	R3			");\
						 asm("	pop		R3			");\
						 asm("	popf	R2			");\
						 asm("	pop		R2			");\
						 asm("	popf	R1			");\
						 asm("	pop		R1			");\
						 asm("	popf	R0			");\
						 asm("	pop 	R0			");\
						 asm("	subi 	2,SP		");\
						 asm("	pop 	FP			");\
						 asm("	pop 	ST			");}

#define GIE 			{asm("	or		2000h, ST	");}	/* global enable int         */\

#define _GIE 			{asm("	rpts	1			");\
						 asm("	andn	2000h, ST	");}	/* global disable int        */\

#define _GIEP 			{asm("	push	ST			"); 	/* global enable int store   */\
						 asm("	andn	2000h, ST	");}	/* global disable int        */\

#define GIEP 			{asm("	pop		ST			");}	/* global enable int restore */\

#define CACHE_ENABLE 	{asm("	ldi		1800h, ST");		/* clear and enable cache */}
#define CLEAR_INT_MASK	{asm("	ldi		0h, IE");			/* clear all int masks */}
#define CLEAR_INT_PEND	{asm("	ldi		0h, IF");			/* clear pending int */}

#define PBCR ((volatile unsigned int*) 0x808064)
#define PBCR_HOLDST 0x00001
#define PBCR_NOHOLD 0x00002
#define PBCR_HIZ	0x00004
#define PBCR_SWW_RDY 0x0000
#define PBCR_SWW_CNT 0x0008
#define PBCR_SWW_RDYorCNT  0x0010
#define PBCR_SWW_RDYandCNT 0x0018
#define PBCR_WTCNT_0 0x0000
#define PBCR_WTCNT_1 0x0020
#define PBCR_WTCNT_2 0x0040
#define PBCR_WTCNT_3 0x0060
#define PBCR_WTCNT_4 0x0080
#define PBCR_WTCNT_5 0x00A0
#define PBCR_WTCNT_6 0x00C0
#define PBCR_WTCNT_7 0x00E0

/* (ST) STATUS REGISTER BITS */
#define ST_GIE 0x2000
#define ST_CC  0x1000
#define ST_CE  0x800
#define ST_CF  0x400
#define ST_RM  0x100
#define ST_OVM 0x80
#define ST_LUF 0x40
#define ST_LV  0x20
#define ST_UF  0x10
#define ST_N   0x8
#define ST_Z   0x4
#define ST_V   0x2
#define ST_C   0x1

/* (IE) INT ENABLE REGISTER BITS */
#define IE_DMA_EDINT  0x4000000
#define IE_DMA_ETINT1 0x2000000
#define IE_DMA_ETINT0 0x1000000
#define IE_DMA_ERINT1 0x800000
#define IE_DMA_EXINT1 0x400000
#define IE_DMA_ERINT0 0x200000
#define IE_DMA_EXINT0 0x100000
#define IE_DMA_EINT3  0x80000
#define IE_DMA_EINT2  0x40000
#define IE_DMA_EINT1  0x20000
#define IE_DMA_EINT0  0x10000
#define IE_CPU_EDINT  0x400
#define IE_CPU_ETINT1 0x200
#define IE_CPU_ETINT0 0x100
#define IE_CPU_ERINT1 0x80
#define IE_CPU_EXINT1 0x40
#define IE_CPU_ERINT0 0x20
#define IE_CPU_EXINT0 0x10
#define IE_CPU_EINT3  0x8
#define IE_CPU_EINT2  0x4
#define IE_CPU_EINT1  0x2
#define IE_CPU_EINT0  0x1

/* Enable INTs */
#define ENABLE_INT0		{asm("	or		0001h, IE");}
#define ENABLE_INT1		{asm("	or		0002h, IE");}
#define ENABLE_INT2		{asm("	or		0004h, IE");}
#define ENABLE_INT3		{asm("	or		0008h, IE");}
#define ENABLE_XINT0	{asm("	or		0010h, IE");}
#define ENABLE_RINT0	{asm("	or		0020h, IE");}
#define ENABLE_XINT1	{asm("	or		0040h, IE");}
#define ENABLE_RINT1	{asm("	or		0080h, IE");}
#define ENABLE_TINT0	{asm("	or		0100h, IE");}
#define ENABLE_TINT1	{asm("	or		0200h, IE");}
#define ENABLE_DINT 	{asm("	or		0400h, IE");}

/* Disable INTs */
#define DISABLE_INT0	{asm("	andn	0001h, IE");}
#define DISABLE_INT1	{asm("	andn	0002h, IE");}
#define DISABLE_INT2	{asm("	andn	0004h, IE");}
#define DISABLE_INT3	{asm("	andn	0008h, IE");}
#define DISABLE_XINT0	{asm("	andn	0010h, IE");}
#define DISABLE_RINT0	{asm("	andn	0020h, IE");}
#define DISABLE_XINT1	{asm("	andn	0040h, IE");}
#define DISABLE_RINT1	{asm("	andn	0080h, IE");}
#define DISABLE_TINT0	{asm("	andn	0100h, IE");}
#define DISABLE_TINT1	{asm("	andn	0200h, IE");}
#define DISABLE_DINT 	{asm("	andn	0400h, IE");}

/* Clear INTs */
#define CLEAR_INT0		{asm("	andn	0001h, IF");}
#define CLEAR_INT1		{asm("	andn	0002h, IF");}
#define CLEAR_INT2		{asm("	andn	0004h, IF");}
#define CLEAR_INT3		{asm("	andn	0008h, IF");}
#define CLEAR_XINT0		{asm("	andn	0010h, IF");}
#define CLEAR_RINT0		{asm("	andn	0020h, IF");}
#define CLEAR_XINT1		{asm("	andn	0040h, IF");}
#define CLEAR_RINT1		{asm("	andn	0080h, IF");}
#define CLEAR_TINT0		{asm("	andn	0100h, IF");}
#define CLEAR_TINT1		{asm("	andn	0200h, IF");}
#define CLEAR_DINT 		{asm("	andn	0400h, IF");}

#undef _EXTERN
#undef ETC_H
#endif
