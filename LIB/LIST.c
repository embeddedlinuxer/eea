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
/* File Name: LIST.C						    							*/
/* 									    									*/
/* File Description: This file implements the functions for the list		*/
/* abstract data type.  Add, Remove, Push, Pop and initialize are defined in*/
/* this file.									    						*/
/*									    									*/
/****************************************************************************/
#define LIST_H

#include "GLBLS.H"
#include "LIST.H"

/****************************************************************************/
/* LIST ADD																	*/
/*                                                                          */
/* Description: Adds a node to the list                                     */
/*                                                                          */
/* Arguments:   LIST POINTER l 		- destination list						*/
/* 				GENERIC POINTER p	- node to add                           */
/*                                                                          */
/* Returns:     BOOL FALSE - if p is not a node                             */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
BOOL List_Add(LIST *l, GENERIC *p)
{
	GENERIC* t;			/* temporary node */

	if (p==(GENERIC*)0)	/* empty node */ 
		return FALSE;

	_GIEP;
	p->prev = l->tail;
	p->next = NULL_PTR;

	if (l->tail != NULL_PTR)
	{
		t 		= (GENERIC*)l->tail;
		t->next = (int*)p;
	}
	else
		l->head = (int*)p;

	l->tail = (int*)p;	
	l->n++;
	GIEP;

	return TRUE;
}

/****************************************************************************/
/* LIST REMOVE																*/
/*                                                                          */
/* Description: Removes a node from the list                                */
/*                                                                          */
/* Arguments:   LIST POINTER l 		- Source List							*/
/* 				GENERIC POINTER p 	- Node to remove                        */
/*                                                                          */
/* Returns:     BOOL Always TRUE                                            */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
BOOL List_Remove(LIST *l, GENERIC *p)
{
	GENERIC* t;	/* temporary node */

	_GIEP;

	if (l->n>0)
	{
		if (p->next == NULL_PTR)
			l->tail = p->prev;
	
		t 		= (GENERIC*)p->next;
		t->prev = (int*) p->prev;

		if (p->prev == NULL_PTR)
			l->head = p->next;
		
		t 		= (GENERIC*)p->prev;
		t->next = p->next;
		p->next = NULL_PTR;
		p->prev = NULL_PTR;

		l->n--;
	}

	GIEP;

	return TRUE;
}

/****************************************************************************/
/* LIST PUSH																*/
/*                                                                          */
/* Description: Puts node on head of list                                   */
/*                                                                          */
/* Arguments:   LIST POINTER l 		- Destination List						*/
/* 				GENERIC POINTER p	- Node to push                          */
/*                                                                          */
/* Returns:     BOOL False - if invalid node                                */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
BOOL List_Push(LIST *l, GENERIC *p)
{
	GENERIC* t;			/* temporary node */

	if (p==(GENERIC*)0)	/* invalid node */ 
		return FALSE;

	_GIEP;
	p->prev = NULL_PTR;
	p->next = l->head;

	if (l->head != NULL_PTR)
	{
		t 		= (GENERIC*)l->head;
		t->prev = (int*)p;
	}

	l->head = (int*)p;

	if (l->tail == NULL_PTR)
		l->tail = (int*)p;

	l->n++;
	GIEP;
	
	return TRUE;
}

/****************************************************************************/
/* LIST POP																	*/
/*                                                                          */
/* Description: Pops a node off the top of the list.                        */
/*                                                                          */
/* Arguments:  	LIST POINTER l - source list                                */
/*                                                                          */
/* Returns:     GENERIC POINTER p - popped node                             */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
GENERIC* List_Pop(LIST *l)
{
	GENERIC* p;
	GENERIC* t;
	
	_GIEP;
	
	if (l->head != NULL_PTR)
	{
		p 		= (GENERIC*)l->head;
		l->n--;
		l->head = p->next;
		p->next = NULL_PTR;
		p->prev = NULL_PTR;
		t 		= (GENERIC*) p->next;
		t->prev = NULL_PTR;
		
		if (l->head == NULL_PTR)
			l->tail = NULL_PTR;
	}
	else
		p = (GENERIC*) NULL_PTR;
	
	GIEP;

	return p;
}

/****************************************************************************/
/* LIST INIT							 									*/
/*                                                                          */
/* Description: Initializes empty list.                                     */
/*                                                                          */
/* Arguments:   LIST POINTER l - list to initialize                         */
/*                                                                          */
/* Returns:     BOOL not specified.                           				*/
/*                                                                          */
/* Notes:       head and tail point to null with zero nodes                 */
/*                                                                          */
/****************************************************************************/
BOOL List_Init(LIST *l)
{
	_GIEP;

	l->head = NULL_PTR;
	l->tail = NULL_PTR;
	l->n = 0;

	GIEP;
}
