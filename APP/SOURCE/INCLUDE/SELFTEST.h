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
/* File Name: SELFTEST.H					    							*/
/* 									    									*/
/* File Description:  Self tests are memory tests that test the coherency of*/
/* the system memory.  Incoherent system memory can be a danger when running*/
/* any real-time system over a long period of time.  These were run by      */
/* default previously.  Currently they are only read when enabled.  They    */
/* have been functionally removed since 611beta.                            */
/*                                                                          */
/* This file just defines function prototypes for the SELFTEST.C file.		*/
/*									    									*/
/****************************************************************************/

#ifndef _SELFTEST
#define _SELFTEST

#ifdef SELFTEST_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#ifndef SELFTEST_H
#endif

#ifdef SELFTEST_H
#pragma CODE_SECTION(Self_Test1,"internal_RAM")
#pragma CODE_SECTION(Self_Test2,"internal_RAM")
#pragma CODE_SECTION(Self_Test3,"internal_RAM")
#pragma CODE_SECTION(Self_Test4,"internal_RAM")
#pragma CODE_SECTION(Self_Test5,"internal_RAM")
#pragma CODE_SECTION(Self_Test_FULL,"internal_RAM")
#endif

_EXTERN void Set_Diag_Status(void);
_EXTERN void Self_Test1(void);
_EXTERN void Self_Test2(void);
_EXTERN void Self_Test3(void);
_EXTERN void Self_Test4(void);
_EXTERN void Self_Test5(void);
_EXTERN void Self_Test_FULL(void);
_EXTERN void Clear_Diagnostics(void);

#undef _EXTERN
#undef SELFTEST_H
#endif
