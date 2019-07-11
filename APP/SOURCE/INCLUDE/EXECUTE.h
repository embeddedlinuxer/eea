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
/* File Name: EXECUTE.H						    							*/
/* 									    									*/
/* File Description:  This header file has a struct EPKT which is an		*/
/* execution packet.  Basically this file defines an Execution List         */
/* abstract data type that puts things to be executed and an empty list for */
/* things that have already been executed.		    						*/
/*									    									*/
/* Structs - EPKT - execution packet struct									*/
/*									    									*/
/****************************************************************************/

#ifndef _EXECUTE
#define _EXECUTE

#ifdef EXECUTE_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

typedef struct	{
					int*	prev;
					int*	next;
					int*	vect;
					int		priority;
				} EPKT;

#ifdef EXECUTE_H
#pragma CODE_SECTION(Execute_Init,"initialization")
#endif

_EXTERN void Execute_Init(void);

#define EXEC_Q_LEN 10
_EXTERN EPKT QUEUE_EXEC[EXEC_Q_LEN];

_EXTERN LIST LIST_EXEC;			/* execution list- after a timeout its vector is placed in the queue */
_EXTERN LIST LIST_EXEC_EMPTY;   /* empty execution list to get empty nodes from */

_EXTERN int* vect_ex;

#undef _EXTERN
#undef EXECUTE_H
#endif
