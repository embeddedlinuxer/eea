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
/* File Name: EXECUTE.C						    							*/
/* 									    									*/
/* File Description: This file intializes LIST_EXEC and LIST_EXECT_EMPTY.	*/
/* It also inserts EPKTs into LIST_EXEC.  Finally it has a function to pop	*/
/* an EPKT from LIST_EXEC and execute its vector.    						*/
/*									    									*/
/****************************************************************************/
#define EXECUTE_H

#include "GLBLS.H"
#include "EXECUTE.H"

/****************************************************************************/
/* EXECUTE INIT																*/
/*                                                                          */
/* Description: Initializes LIST_EXEC and LIST_EXEC_EMPTY	                */
/*                                                                          */
/* Arguments:	void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Generally LIST_EXEC_EMPTY is used to get an empty EPKT		*/
/*                                                                          */
/****************************************************************************/
void Execute_Init(void)
{
	int i;

	List_Init(&LIST_EXEC);
	List_Init(&LIST_EXEC_EMPTY);
	
	for (i=0;i<EXEC_Q_LEN;i++)	/* adds EXEC_Q_LEN QUEUE_EXECs to LIST_EXEC_EMPTY*/
		List_Add(&LIST_EXEC_EMPTY, (GENERIC*)(&QUEUE_EXEC[i]));
}

/****************************************************************************/
/* EXECUTE INSERT															*/
/*                                                                          */
/* Description: Adds vector and priority to the instruction queue.          */
/*                                                                          */
/* Arguments:   EPKT POINTER p - Execution packet to be added to the queue. */
/*                                                                          */
/* Returns:     BOOL TRUE or FALSE - FALSE if failed - TRUE if normal op.   */
/*                                                                          */
/* Notes:		Priority 0 is immediately executed, but otherwise the higher*/
/* 				the number the higher the priority.                         */
/*                                                                          */
/****************************************************************************/
BOOL Execute_Insert(EPKT *p)
{
	EPKT* e;	/* working packet */
	EPKT* t;	/* temp packet 	  */
	LIST* l;	/* working list   */
	int i;		/* counter */

	_GIEP;

   	l = &LIST_EXEC;							/* list is LIST_EXEC */
   	e = (EPKT*)List_Pop(&LIST_EXEC_EMPTY);	/* get empty EPKT	 */

   	if (e==(EPKT*)NULL)
   	{/* null packet from empty list? */
		DIAGNOSTICS[0] |= ERROR_EXEC_FAIL;
		GIEP;
   		
		return FALSE;
   	}

    e->priority = p->priority;	/* copy priority and function vector from packet*/
    e->vect 	= p->vect;
    l->n++;						/* add to number of elements in list */

    if (l->head == NULL_PTR)
    {/* empty list? */
    	l->head = (int*)e; /* head and tail are e. next and prev are NULL_PTR */
    	l->tail = (int*)e;
    	e->prev = NULL_PTR;
    	e->next = NULL_PTR;
		GIEP;
    	
		return TRUE;
    }

    t = (EPKT*) l->head;		/* point list head to temp packet */
	
	while (t != (EPKT*)NULL)
    {/* scan LIST_EXEC and insert EPKT based on priority */
    	if (e->priority > t->priority) 
			break;
    	
		t = (EPKT*) t->next;
    }

	if ((int*)t == NULL_PTR)
	{	/* add to end of list */
		t = (EPKT*)l->tail;
		t->next = (int*)e;
		e->prev = l->tail;
		l->tail = (int*)e;
		GIEP;
		return TRUE;
	}
	else
	{	/* insert into list */
		if (l->head == (int*)t)
		{
			l->head = (int*)e;
		}

		e->prev = t->prev;
		e->next = (int*)t;
		t->prev = (int*)e;
	}

	GIEP;

	return TRUE;
}

/****************************************************************************/
/* EXECUTE																	*/
/*                                                                          */
/* Description:	Gets a packet from the LIST_EXEC and executes its vector.   */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       executing the vector is done by a CALLNZ in ASM             */
/*                                                                          */
/****************************************************************************/
void Execute(void)
{
	EPKT* e;

	while (LIST_EXEC.n>0)
	{
	   	e = (EPKT*)List_Pop(&LIST_EXEC);

	   	if (e != (EPKT*)NULL)
	   	{
			vect_ex = e->vect;

		    PUSH_ALL;
			asm("	.global _vect_ex  	  ");
		    asm("	ldp		_vect_ex      ");
		    asm("	ldi		@_vect_ex, R0 ");
		    asm("	callnz	R0		 	  ");
		    POP_ALL;

	   		List_Add(&LIST_EXEC_EMPTY, (GENERIC*)e);
	   	}
	}
}
