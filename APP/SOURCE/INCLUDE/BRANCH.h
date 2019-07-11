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
/* File Name: BRANCH.H						    							*/
/* 									    									*/
/* File Description:  This is the branch table that tells the processor     */
/* where the interrupts branch to.  It bridges the gap between the assembly */
/* base interrupts and C.						    						*/
/*									    									*/
/****************************************************************************/

#ifndef _BRANCH
#define _BRANCH

#ifdef BRANCH_H

asm("		.sect \"branch_table\"	");	/* branch table = 0x3F in length */
asm("		.global _c_int00	");
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
asm("_INT0	BR _c_INT0			");
asm("_INT1	BR _c_INT1			");
asm("_INT2	BR _c_INT2			");
asm("_INT3	BR _c_INT3			");
asm("_XINT0	BR _c_XINT0			");
asm("_RINT0	BR _c_RINT0			");
asm("		BR _c_SPURINT		");		/* reserved */
asm("		BR _c_SPURINT		");     /* reserved */
asm("_TINT0	BR _c_TINT0			");
asm("_TINT1	BR _c_TINT1			");
asm("_DINT	BR _c_SPURINT		");
asm("		.space	20			");		/* reserved */
asm("_TRAPO						");
asm("		.loop 28			");		/* TRAPS 0-27 are undefined */
asm("		BR _c_SPURINT		");
asm("		.endloop			");
asm("		.space 4			");		/* TRAPS 28-31 reserved */

asm("		.sect \"application_vector\"	");
asm("		.word _c_int00		");

#undef BRANCH_H
#endif
#endif