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
/* File Name: LIST.H						    							*/
/* 									    									*/
/* File Description:  This defines the list abstract data type.  This       */
/* includes the structs and the functions to implement list operations.		*/
/*                                    										*/
/* STRUCTS:	LIST 	- defines what a list is.                               */
/* 			GENERIC - a node in a list   									*/
/*                                    										*/
/****************************************************************************/

#ifndef _LIST
#define _LIST

#ifdef LIST_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

typedef struct 	{
					int*	head;
					int*	tail;
					int		n;
	    		} LIST;

typedef struct	{
					int*	prev;
					int*	next;
				} GENERIC;

#ifdef LIST_H
#pragma CODE_SECTION(List_Add,"internal_RAM")
#pragma CODE_SECTION(List_Remove,"internal_RAM")
#pragma CODE_SECTION(List_Push,"internal_RAM")
#pragma CODE_SECTION(List_Pop,"internal_RAM")
#pragma CODE_SECTION(List_Init,"internal_RAM")
#endif

_EXTERN BOOL List_Add(LIST *l, GENERIC *p);
_EXTERN BOOL List_Remove(LIST *l, GENERIC *p);
_EXTERN BOOL List_Push(LIST *l, GENERIC *p);
_EXTERN GENERIC* List_Pop(LIST *l);
_EXTERN BOOL List_Init(LIST *l);

#undef _EXTERN
#undef LIST_H
#endif
