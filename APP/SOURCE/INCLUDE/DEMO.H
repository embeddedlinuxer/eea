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
/* File Name: DEMO.H						    							*/
/* 									    									*/
/* File Description:  Header file for the DEMO module of the program.  Has  */
/* only one function prototype that initiates the DEMO sequence.			*/
/*									    									*/
/****************************************************************************/

#ifndef _DEMO
#define _DEMO

#ifdef DEMO_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#ifdef DEMO_H
#pragma CODE_SECTION(DEMO_Init,"initialization")
#endif

_EXTERN void DEMO_Init(VAR* v);

#undef _EXTERN
#undef DEMO_H
#endif
