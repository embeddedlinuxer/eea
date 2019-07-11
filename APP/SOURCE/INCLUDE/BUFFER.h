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
/* File Name: BUFFER.H						    							*/
/* 									    									*/
/* File Description: The header file for the BUFFER abstract data type.	 It */
/* includes a few definitions and a BFR struct as well as function          */
/* prototypes.																*/
/*									    									*/
/* Structs - BFR - Buffer abstract data type								*/
/* 									    									*/
/****************************************************************************/

#ifndef _BUFFER
#define _BUFFER

#ifdef BUFFER_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#define GPOLY 0xA001;
#define GSEED_DEFAULT 0xFFFF;
#define MAXBUFF 300		/* note: must be at least 300 */

typedef struct	{
					int				head;
					int				tail;
					int				n;
					unsigned int	GSEED;
					unsigned int	CRC16;
					unsigned int	buff[MAXBUFF];
					int				sum;
					BOOL			locked;
				} BFR;


#ifdef BUFFER_H
#pragma CODE_SECTION(CRC16,"internal_RAM")
#pragma CODE_SECTION(Put,"internal_RAM")
#pragma CODE_SECTION(Get,"internal_RAM")
#pragma CODE_SECTION(Put_n,"internal_RAM")
#pragma CODE_SECTION(Clear,"internal_RAM")
#endif

_EXTERN void CRC16(BFR* buffer);
_EXTERN BOOL Put(BFR* buffer, unsigned int b, BOOL CRC);
_EXTERN unsigned int Get(BFR* buffer);
_EXTERN BOOL Put_n(BFR* buffer, unsigned char* b, int n, BOOL CRC);
_EXTERN void Clear(BFR* buffer);

#undef _EXTERN
#undef BUFFER_H
#endif
