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
/* File Name: TIMER.C						    							*/
/* 									    									*/
/* File Description: This file sets up the timers.  They are the oscillators*/
/* that are written to by I2C.  The I2C file has the model numbers of the	*/
/* oscillators that we use for RTC.  NOT THE MICROWAVE OSCILLATORS THEY ARE	*/
/* MANAGED BY THE XILINX AND DO NOT APPEAR ANYWHERE IN THIS CODE.  This file*/
/* inserts, removes and creates timer variables, these are the executable	*/
/* "programs" that run in the runtime environment.  It also sets up the		*/
/* timer and the gate (which is used in polling XiLinx).  It can also get	*/
/* the time as well as clear the time by accessing the RTC[] global vector	*/
/*									    									*/
/****************************************************************************/
#define TIMER_H

#include "GLBLS.H"
#include "TIMER.H"

/****************************************************************************/
/* TIMER INSERT																*/
/*                                                                          */
/* Description: Inserts a timer packet into the LIST_TIMER0                	*/
/*                                                                          */
/* Arguments: 	TPKT POINTER po	- Time Packet								*/
/*				BOOL force		- force execution							*/
/*				INT mode		- action (described below)                  */
/*                                                                          */
/* Returns:    BOOL                                                         */
/*                                                                          */
/* Notes:		action - 0: insert packet into list							*/                                         
/*						 1: remove existing packet, if any, and insert new 	*/
/*							packet into list. 								*/
/*						 2: if existing packet in list, do not insert new 	*/
/*							packet            								*/
/*				Note: if repeating packet (n=-1), treat as #2               */
/*                                                                          */
/****************************************************************************/
BOOL Timer_Insert(TPKT *po, BOOL force, int mode)
{
	TPKT* t;	/* temporary packet 	*/
	TPKT* x;	/* swap packet 			*/
	TPKT* p;	/* head of LIST_TIMER0 	*/
	LIST* l;	/* LIST_TIMER0 			*/
	int action;	/* mode 				*/

	_GIEP;
	l 		= &LIST_TIMER0;
	action 	= mode;
	
	if ((action==TMR_action_always_add) && (po->prev_n==-1)) 
		action = TMR_action_add_if_not_exist;

	p = (TPKT*)LIST_TIMER0.head;

	switch(action)
	{
		case TMR_action_add_if_not_exist:
		{
			while(p!=(TPKT*)NULL)
			{
		    	if (p->parent == po->parent)
		    	{/* TPKT found, return without adding to LIST */
		    		GIEP;
		    		return TRUE;
		    	}
		    	
				p = (TPKT*)p->next;
		    }

			break;
		}
		case TMR_action_delete:
		case TMR_action_replace:
		{
			while(p!=(TPKT*)NULL)
			{
				/* TPKT found, remove ALL from LIST */
		    	if (p->parent == po->parent)
		    		Timer_Remove(p);
		    	
				p = (TPKT*)p->next;
		    }

			break;
		}
	}

	if (action == TMR_action_delete)
	{
		GIEP;
		
		return TRUE;
	}

   	p = (TPKT*)List_Pop(&LIST_TMR_EMPTY);
    
	if (p==(TPKT*)NULL)
    {
		DIAGNOSTICS[0] |= ERROR_TMR_FAIL;
    	GIEP;
    	
		return FALSE;
    }

    /* copy the original TPKT to the list TPKT */
	p->prev 		= po->prev;
	p->next 		= po->next;
	p->vect 		= po->vect;
	p->priority 	= po->priority;
	p->n 			= po->n;
	p->prev_n 		= po->prev_n;
	p->countdown	= po->countdown;
	p->preset_time 	= po->preset_time;
	p->parent 		= po->parent;
    /* copy the original TPKT to the list TPKT */

	if (force) 
		p->countdown = 1;
	else 
		p->countdown = p->preset_time;

    l->n++;

    if (l->head == NULL_PTR)
    {
    	l->head = (int*)p;
    	l->tail = (int*)p;
    	p->prev = NULL_PTR;
    	p->next = NULL_PTR;
		GIEP;
    	
		return TRUE;
    }

    t = (TPKT*) l->head;
	
	while ((int*)t != NULL_PTR)
    {
    	if (p->countdown < t->countdown) 
			break;
		
		p->countdown -= t->countdown;
    	t 			  = (TPKT*) t->next;
    }

	if ((int*)t == NULL_PTR)
	{	/* add to end of list */
		t 		= (TPKT*)l->tail;
		t->next = (int*)p;
		p->prev = l->tail;
		l->tail = (int*)p;
		GIEP;
		
		return TRUE;
	}
	else
	{	/* insert into list */
		if (l->head == (int*)t)
			l->head = (int*)p;
		
		p->prev 	  = t->prev;
		p->next 	  = (int*)t;
		x 			  = (TPKT*) t->prev;
		x->next 	  = (int*)p;		
		t->prev 	  = (int*)p;
		t->countdown -= p->countdown;
	}

	GIEP;
	
	return TRUE;
}

/****************************************************************************/
/* TIMER REMOVE																*/
/*                                                                          */
/* Description: Removes a timer packet from LIST_TIMER0                     */
/*                                                                          */
/* Arguments:   TPKT POINTER p - timer packet to be removed.                */
/*                                                                          */
/* Returns:     BOOL always TRUE                                            */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
BOOL Timer_Remove(TPKT *p)
{
	TPKT* t;
	LIST* l;

	_GIEP;
	l = &LIST_TIMER0;

	if (p->next != NULL_PTR)
	{
		t 			  = (TPKT*)p->next;
		t->countdown += p->countdown;
	}

	if(List_Remove(l, (GENERIC*)p))
		List_Add(&LIST_TMR_EMPTY, (GENERIC*)p);

	GIEP;

	return TRUE;
}

/****************************************************************************/
/* TIMER CREATE																*/
/*                                                                          */
/* Description: Creates a timer packet.                                     */
/*                                                                          */
/* Arguments:   TPKT POINTER p 	 - location of the packet to create			*/
/* 				FLOAT sec 		 - seconds until execution					*/
/*				INT nrepeat 	 - number of times to repeat.				*/
/*				INT POINTER vect - location of function to attach			*/
/*				INT pri 		 - priority                                 */
/*                                                                          */
/* Returns:     BOOL always TRUE                                            */
/*                                                                          */
/* Notes:       Only use high priority (0) on low frequency or n-shot modes!*/
/*				Be sure to set TIME0 prior to execution of this function.   */
/*                                                                          */
/****************************************************************************/
BOOL Timer_Create(TPKT *p, float sec, int nrepeat, int* vect, int pri)
{
	int preset;

	preset = ceil(sec/TIME0);
	
	if (preset<=0) 
		preset = 1;

	p->t 			= preset*TIME0;
	p->vect 		= vect;
	p->countdown 	= preset;
	p->preset_time 	= preset;
	p->prev 		= NULL_PTR;
	p->next 		= NULL_PTR;
    p->n 			= nrepeat;
	p->prev_n 		= nrepeat;
	p->priority 	= pri;
	p->parent 		= (int*)p;	/* this identifies the packet's master copy for reference within the queue */

	return TRUE;
}

/****************************************************************************/
/* SETUP TIMER																*/
/*                                                                          */
/* Description: Sets up Timers		                                        */
/*                                                                          */
/* Arguments:   INT id 	- Timer ID											*/
/*				FLOAT t - time 					                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void Setup_Timer(int id, float t)
{
	float 	ta;	/* timer cycles */
	int		i;	/* counter 		*/

	if (id==0)
	{/* TIMER 0 */
		ta = t * TMR0_FREQ;		/* (t sec * TMR0_FREQ Hz) = CPU cycles in t time */
		
		if (0.5<=(ta-(int)ta)) 
			ta++;

		*TMR0_GC  		= (TMR_FUNC | TMR_GO | TMR_HLD);
		*TMR0_PER 		= (int)ta;
		TIME0 	  		= ta/(float)TMR0_FREQ * 1047.0;
		TIME1 	  		= ta/(float)TMR0_FREQ;
		TIMER0_COUNTER 	= 0;

		List_Init(&LIST_TIMER0);
		List_Init(&LIST_TMR_EMPTY);
		
		for (i=0;i<TMR_Q_LEN;i++)
		{
			QUEUE_TMR[i].prev 		 = 0;
			QUEUE_TMR[i].next 		 = 0;
			QUEUE_TMR[i].vect 		 = 0;
			QUEUE_TMR[i].priority 	 = 0;
			QUEUE_TMR[i].parent 	 = 0;
			QUEUE_TMR[i].n 			 = 0;
			QUEUE_TMR[i].prev_n 	 = 0;
			QUEUE_TMR[i].countdown 	 = 0;
			QUEUE_TMR[i].preset_time = 0;

			List_Add(&LIST_TMR_EMPTY, (GENERIC*)(&QUEUE_TMR[i]));
		}

		for (i=0;i<(UART_MAX+1);i++)
		{
			TIMER1_COUNTER[i]	= 0;
			PORT[i].TMR_enabled = FALSE;
		}

		ENABLE_TINT0;
	}
	else if (id==1)
	{/* TIMER 1 */
		*TMR1_GC	= (TMR_FUNC | TMR_GO | TMR_HLD);
		*TMR1_PER	= 1000000000;	/* register is rolled to 0 after 999999999 */
		DISABLE_TINT1;
	}
}

/****************************************************************************/
/* SETUP GATE																*/
/*                                                                          */
/* Description: Sets up the gate to sample from XiLinx.                     */
/*                                                                          */
/* Arguments:   FLOAT POINTER gt - Gate time								*/
/*				FLOAT POINTER ps - Gate divider								*/
/*				BOOL enabled	 - [En|Dis]able gate						*/
/*				BOOL aux_in		 - DIO_AUX_FREQ_MODE?	                    */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Is used in polling the oscillators (XiLinx)                 */
/*                                                                          */
/****************************************************************************/
void Setup_Gate(float* gt, float* ps, BOOL enabled, BOOL aux_in)
{
	int GATE_DIV;
	float val;
	int	i;

    _GIEP;

	if (SA)
	{/* Stand Alone Analyzer */
		val 	 = gt[0];
		val 	*= GATE_CLK;
		GATE_DIV = (unsigned int)val;

		if (GATE_DIV>=255) 
			GATE_DIV = 255;
		else if (GATE_DIV<=0) 
			GATE_DIV = 1;

		val 		  = (float)GATE_DIV/(float)GATE_CLK;
		gt[0] 		  = val;
		*GATE_DIVIDER = GATE_DIV;
		i 			  = ps[0];
		
		switch (i)
		{
			case 256:	DIV_256; break;
			case 128:	DIV_128; break;
			default:	DIV_64; ps[0] = 64.0; break;
		}
	}
	else
	{/* Xilinx is permanently set for 1s gate time */
		val   = 1.0;
		gt[0] = val;
		ps[0] = 256.0;
	}

	if (aux_in)
	{/* DIO_AUX_FREQ_MIDE */
		DIO_AUX_FREQ_MODE = TRUE;
		DISABLE_FREQUENCY;
	}
	else
	{
		DIO_AUX_FREQ_MODE = FALSE;
		ENABLE_FREQUENCY;
	}

	if (enabled)
	{/* Enable Gate/ INT3 */
		ENABLE_GATE;
		ENABLE_EXTINT3;
		ENABLE_INT3;
		CLEAR_INT3;
	}
	else
	{
		DISABLE_GATE;
		DISABLE_EXTINT3;
		DISABLE_INT3;
		CLEAR_INT3;
	}

	GATE_TIMEOUT = FALSE;

	GIEP;	
}

/****************************************************************************/
/* GET TIME																	*/
/*                                                                          */
/* Description: Gets the time from the Real Time Clock.                     */
/*                                                                          */
/* Arguments:   STRUCT TM POINTER p - RTC structure.                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       RTC[] is where the clock info is kept globally              */
/*                                                                          */
/****************************************************************************/
void GET_TIME(struct tm *p)
{
	int t;	/* temp variable */

	_GIEP;
	t 		  	= RTC[4] & 0x3F;
	p->tm_hour	= (t&0x0F) + 10*((t>>4)&0x0F);
	t 			= RTC[3] & 0x7F;
	p->tm_min 	= (t&0x0F) + 10*((t>>4)&0x0F);
	t 			= RTC[2] & 0x7F;
	p->tm_sec 	= (t&0x0F) + 10*((t>>4)&0x0F);
	t 			= RTC[7] & 0x1F;
	p->tm_mon 	= (t&0x0F) + 10*((t>>4)&0x0F);
	t 			= RTC[6] & 0x3F;
	p->tm_mday 	= (t&0x0F) + 10*((t>>4)&0x0F);
	t 			= RTC[8] & 0xFF;
	p->tm_year 	= (t&0x0F) + 10*((t>>4)&0x0F);
	t 			= RTC[5] & 0x03;
	p->tm_wday 	= (t&0x0F) + 10*((t>>4)&0x0F);
	GIEP;
}

/****************************************************************************/
/* CLEAR TIME																*/
/*                                                                          */
/* Description: Clears the Real Time Clock                                  */
/*                                                                          */
/* Arguments:   STRUCT TM POINTER - RTC structure                           */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void CLEAR_TIME(struct tm *p)
{
	p->tm_sec	= 0;		/* seconds after the minute   - [0,59]  */
	p->tm_min	= 0;		/* minutes after the hour     - [0,59]  */
	p->tm_hour	= 0;		/* hours after the midnight   - [0,23]  */
	p->tm_mday	= 0;		/* day of the month           - [1,31]  */
	p->tm_mon	= 0;		/* months since January       - [0,11]  */
	p->tm_year	= 0;		/* years since 1900                     */
	p->tm_wday	= 0;		/* days since Sunday          - [0,6]   */
	p->tm_yday	= 0;		/* days since Jan 1st         - [0,365] */
	p->tm_isdst = 0;		/* Daylight Savings Time flag           */
}
