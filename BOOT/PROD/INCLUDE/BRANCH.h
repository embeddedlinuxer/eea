/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

/***************************************************************************/
/*                                                                         */
/* NAME: BRANCH.h                                                          */
/*                                                                         */
/* FUNCTION: Defines interrupt branches and trap branches for C programs   */
/*           for microcomputer boot loader mode							   */
/*                                                                         */
/***************************************************************************/

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
asm("		BR _c_SPURINT		");		/* reserved */
asm("		BR _c_SPURINT		");     /* reserved */
asm("		BR _c_TINT0			");
asm("		BR _c_TINT1			");
asm("		BR _c_SPURINT		");
asm("		.space	20			");		/* reserved */
asm("							");
asm("		.loop 28			");		/* TRAPS 0-27 are undefined */
asm("		BR _c_SPURINT		");
asm("		.endloop			");
asm("		.space 4			");		/* TRAPS 28-31 reserved */

asm("		.sect \"branch_table\"	");
asm("_BT						");
asm("_INT0	BR _c_SPURINT		");
asm("_INT1	BR _c_SPURINT		");
asm("_INT2	BR _c_SPURINT		");
asm("_INT3	BR _c_SPURINT		");
asm("_XINT0	BR _c_SPURINT		");
asm("_RINT0	BR _c_SPURINT		");
asm("		BR _c_SPURINT		");		/* reserved */
asm("		BR _c_SPURINT		");     /* reserved */
asm("_TINT0	BR _c_SPURINT		");
asm("_TINT1	BR _c_SPURINT		");
asm("_DINT	BR _c_SPURINT		");
asm("		.space	20			");		/* reserved */
asm("_TRAPO						");
asm("		.loop 28			");		/* TRAPS 0-27 are undefined */
asm("		BR _c_SPURINT		");
asm("		.endloop			");
asm("		.space 4			");		/* TRAPS 28-31 reserved */


