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
/* File Name: ISR.C							    							*/
/* 									    									*/
/* File Description: This is a very important file.  This handles the		*/
/* interrupts for the main program.  This program uses a program scheduler	*/
/* paradigm.  It is implemented with timer queue that hold timer packets	*/
/* each packet has metadata that defines its functi;on as well as priority	*/
/* so that the program knows when to execute the encapsulated function.		*/
/* 																			*/
/* Below is a list that describes each interrupt:							*/
/* C_INT0 - external interrupt 1 - handles the UART ports.					*/
/* C_INT1 - external interrupt 2 - handles the pulse input.					*/
/* C_INT2 - external interrupt 3 - handles the ADC for SA					*/
/* C_INT3 - external interrupt 4 - handles XiLinx input.					*/
/* TINT0  - timer interrupt 1    - handles timer UART ports.				*/
/*									    									*/
/****************************************************************************/
#define BRANCH_H

#include "GLBLS.H"
#include "BRANCH.H"

/****************************************************************************/
/* C XINT0 - Serial Transfer Interrupt 0   									*/
/*                                                                          */
/* Description: Reserved for future use.               						*/
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Unused                                                      */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_XINT0,"interrupt_routines")
#pragma INTERRUPT(c_XINT0)
void c_XINT0(void){}

/****************************************************************************/
/* C RINT0 - Serial Receive Interrupt 0										*/
/*                                                                          */
/* Description: Reserved for future use.                   					*/
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Unused                                                      */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_RINT0,"interrupt_routines")
#pragma INTERRUPT(c_RINT0)
void c_RINT0(void){}

/****************************************************************************/
/* C INT0 - Interrupt 1														*/
/*                                                                          */
/* Description: Handles all the COM ports		                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Handles the COM ports in the following order:               */
/*              EEA & SA:	 	IDEC, 										*/
/*								MODBUS,                                   	*/
/*              EEA Only: 		OIT, 										*/
/*								PDI, 										*/
/*								COM4, 										*/
/*								COM3, 										*/
/*								IRDA (USB), 								*/
/*								HART                 						*/
/*                                                                          */
/*              Also, this needs to be re-written.  It generally is not okay*/
/*              To keep calling functions during an interrupt.  The whole	*/
/*				program stack must be saved during each one of these		*/
/* 				function calls.  This will have to be re-written from the	*/
/*				ground up due to poor programming practice.                 */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_INT0,"interrupt_routines")
#pragma INTERRUPT(c_INT0)
void c_INT0(void)
{
	DISABLE_EXTINT0;

	Process_UINT(1);	/* HANDLE COM2/OIT PORT - IDEC   */	
	Process_UINT(0);	/* HANDLE COM1 PORT		- MODBUS */

	if (SA)
	{/* Stand Alone stops here */
		ENABLE_EXTINT0;
		
		return;
	}

	Process_UINT(6);	/* HANDLE OIT PORT			*/
	Process_UINT(7);	/* HANDLE PDI PORT			*/
	Process_UINT(3);	/* HANDLE COM4 PORT			*/
	Process_UINT(2);	/* HANDLE COM3 PORT			*/
	Process_UINT(5);	/* HANDLE IRDA (USB) PORT 	*/
	Process_UINT(4);	/* HANDLE HART PORT			*/

	ENABLE_EXTINT0;
}

/****************************************************************************/
/* C INT1 - Interrupt 2														*/
/*                                                                          */
/* Description: Handles pulse input for flow computer.                      */
/*                                                                          */
/* Arguments: 	void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_INT1,"interrupt_routines")
#pragma INTERRUPT(c_INT1)
void c_INT1(void)
{
	/* My best guess is the xilinx calls this interrupt every ~1sec.
	   If it's not once per second, the calculated flowrate is wrong. */

	int i;			/* flow computer index */ 
	int p[FCMAX];	/* pulse data */
	long double r;	/* pulses per unit */	//INCORRECT, this variable is reused...
	VAR* v;
	unsigned int ui;

	if (SA) return;
	
	_GIEP;
	//Xilinx registers?
	p[0] = ((*XREG12 & 0xFF)<<8) | (*XREG11 & 0xFF);
	p[1] = ((*XREG14 & 0xFF)<<8) | (*XREG13 & 0xFF);
	p[2] = ((*XREG16 & 0xFF)<<8) | (*XREG15 & 0xFF);
	GIEP;

	for (i=0;i<FCMAX;i++)
	{	
	
		//This part calculates how many pulses since the last routine call
		if (p[i] >= FC[i].PULSE)
			r = (p[i] - FC[i].PULSE) * FC[i].PULSE_FACTOR;
		else
			r = ((65536.0 - FC[i].PULSE) + p[i]) * FC[i].PULSE_FACTOR;
		
		FC[i].PULSE_DELTA = r;		//Number of pulses elapsed
		FC[i].PULSE 	  = p[i]; 	//Like hitting "lap" on a stop watch

		if (!FC[i].enable_PULSE) 
			continue;
		
		//Note: Experimentally verified max frequency is between 25kHz-50kHz
		r = ((long double)FC[i].PULSE_DELTA/(long double)FC[i].PULSES_PER_ACCUM_UNIT);
		
		//variable 'r' is now the quantity of accum units since last call
		if (r < 0) 
			r = 0;		
		
		/***************************************************************\
		| Note: This is the old code which only accepted total flow as 	|
		| input. Now we only use it if pulse_type is set to total flow.	|
		\***************************************************************/
		if (FC[i].use_totalizer.val)
		{
			if (!FC[i].enable_FLOW)
				continue;
		
			//store the number of pulses in PULSE_FREQ?? How is that a frequency?
			VAR_Update(&FC[i].PULSE_FREQ, (long double)FC[i].PULSE_DELTA, 0, 0); 

			//add to total number of pulses? This variable isn't used anywhere else
			FC[i].PULSE_COUNTER += FC[i].PULSE_DELTA; 
			
			//wrong 	// Update quantity of accum units (volume/mass) since last call
			VAR_Update(&FC[i].PULSE_TOTAL, FC[i].PULSE_TOTAL.calc_val+r, 0, 0);
			// PULSE_TOTAL = PULSE_TOTAL + r;
			
			// Update mass/volume flow rate -- apparently uses a period of 1 second
			VAR_Update(&FC[i].PULSE_FLOW, Time_Scale_Flow(r, FC[i].PULSE_TOTAL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].PULSE_FLOW.calc_unit), 0, 0);
			
			_GIEP;
			
			//Update the generalized "total flow" variable
			VAR_Update(&FC[i].FLOW_TOTAL, Time_Scale_Flow(r, FC[i].PULSE_TOTAL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].FLOW_TOTAL.calc_unit), 0, 0);
			Accumulate(&FC[i].FLOW_TOTAL);
			
			GIEP;
		}
		else //if pulse input is NOT total flow (no totalizer)
		{//new pulse code here!
		
			if (!FC[i].enable_PULSE) 
				continue;

			v = HART_Lookup(FC[i].pulse_v.val, &ui, (int*)&HART_DVINPUT_Table);

			if ((v!=(VAR*)0) && (v!=&REG_DUMMY))
			{
				VAR_Update(&FC[i].pulse_VALUE,(float)r,0,0);
				VAR_Update(v, Convert(v->class, FC[i].pulse_VALUE.unit, v->unit, FC[i].pulse_VALUE.calc_val, 0, v->aux), 0,1);
			}
		}
		
	}
}

/****************************************************************************/
/* C INT2 - Interrupt 3														*/
/*                                                                          */
/* Description: Read_ADC_FIFO                                               */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       EEA only - needs to be redone - calling functions in ISRs	*/
/*				is not good programming practice.                           */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_INT2,"interrupt_routines")
#pragma INTERRUPT(c_INT2)
void c_INT2(void)
{
	if (!SA) 
		return;

	Read_ADC_FIFO();
   	
	DISABLE_INT2;
}

/****************************************************************************/
/* C INT3 - Interrupt 4														*/
/*                                                                          */
/* Description: Handles XiLinx input, reads raw frequency from oscillators. */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_INT3,"interrupt_routines")
#pragma INTERRUPT(c_INT3)
void c_INT3(void)
{
	unsigned int FREQ_COUNTER;	/* holds raw frequency */
	unsigned int tmp;			/* calculated aux frequency */
	long double FREQUENCY;		/* final frequency */

	if ((VT_SELECT>=VTMAX) || (VT_SELECT<0))
	{
		VT_SELECT 	 = 0;
		GATE_TIMEOUT = TRUE;
		
		return;
	}

	_GIEP;

	{/* read the frequency counter */
		FREQ_COUNTER  = *XREG10 & 0xFF;
		FREQ_COUNTER  = FREQ_COUNTER <<  8;
		FREQ_COUNTER |= *XREG9 & 0xFF;
		FREQ_COUNTER  = FREQ_COUNTER <<  8;
		FREQ_COUNTER |= *XREG8 & 0xFF;
		FREQ_COUNTER  = FREQ_COUNTER <<  8;
		FREQ_COUNTER |= *XREG7 & 0xFF;
	}

	if (DIO_AUX_FREQ_MODE) 
		tmp = FREQ_COUNTER * 4;
	else 
		tmp = FREQ_COUNTER * PRESCALE;

	FREQUENCY  			 = tmp;
	FREQUENCY 			/= GATE_TIME;
	FREQUENCY 			*= FREQ_FACTOR;
	TMP_FREQ[VT_SELECT]  = FREQUENCY/1e6;
	GATE_TIMEOUT 		 = TRUE;			/* GATE timed out and is ready for reading */

	GIEP;
}

/****************************************************************************/
/* C TINT0 - Timer 0 Interrupt												*/
/*                                                                          */
/* Description: Checks to see if Port timer is enabled, calls port timer	*/
/*				vector.  Also executes LIST_TIMER0 head vector.             */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Timer 0 is called once every clock period. This is the meat */
/*				and potatoes of the entire program.  Where events get		*/
/*				executed and defines the runtime environement.	Basically,	*/
/*				it's what's happening right now.					        */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_TINT0,"interrupt_routines")
#pragma INTERRUPT(c_TINT0)
void c_TINT0(void)
{
	TPKT*	p;
	int*	tmp;
	BOOL	exec;

	DISABLE_TINT0;
	GIE;

	while(1)
	{/* communication timing - run the COM port vectors */
		TIMER1_COUNTER[UART_MAX]++;

	 	if(PORT[0].TMR_enabled)
		{/* COM 1 */
			if (TIMER1_COUNTER[0]<=0)
			{
				PORT[0].TMR_enabled = FALSE;
				vect_pt0 			= PORT[0].tvector;

			    PUSH_ALL;
				asm("		.global _vect_pt0  ");
			    asm("	ldp		_vect_pt0      ");
			    asm("	ldi		@_vect_pt0, R0 ");
			    asm("	ldi		0, AR2 		   ");	/* select the port */
			    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			    POP_ALL;
			}

		 	TIMER1_COUNTER[0]--;
		}

	 	if(PORT[1].TMR_enabled)
		{/* COM 2 - IDEC */
			if (TIMER1_COUNTER[1]<=0)
			{
				PORT[1].TMR_enabled = FALSE;
				vect_pt1 			= PORT[1].tvector;

			    PUSH_ALL;
				asm("		.global _vect_pt1  ");
			    asm("	ldp		_vect_pt1      ");
			    asm("	ldi		@_vect_pt1, R0 ");
			    asm("	ldi		1, AR2 		   ");	/* select the port */
			    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			    POP_ALL;
			}

			TIMER1_COUNTER[1]--;
		}

		if (SA) 
			break;

	 	if(PORT[2].TMR_enabled)
		{/* COM 3 */
			if (TIMER1_COUNTER[2]<=0)
			{
				PORT[2].TMR_enabled = FALSE;
				vect_pt2 			= PORT[2].tvector;

			    PUSH_ALL;
				asm("		.global _vect_pt2  ");
			    asm("	ldp		_vect_pt2      ");
			    asm("	ldi		@_vect_pt2, R0 ");
			    asm("	ldi		2, AR2 		   ");	/* select the port */
			    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			    POP_ALL;
			}

			TIMER1_COUNTER[2]--;
		}

	 	if(PORT[3].TMR_enabled)
		{/* COM 4 */
			if (TIMER1_COUNTER[3]<=0)
			{
				PORT[3].TMR_enabled = FALSE;
				vect_pt3 			= PORT[3].tvector;

			    PUSH_ALL;
				asm("		.global _vect_pt3  ");
			    asm("	ldp		_vect_pt3      ");
			    asm("	ldi		@_vect_pt3, R0 ");
			    asm("	ldi		3, AR2 		   ");	/* select the port */
			    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			    POP_ALL;
			}

			TIMER1_COUNTER[3]--;
		}

	 	if(PORT[5].TMR_enabled)
		{/* IRDA (USB) */
			if (TIMER1_COUNTER[5]<=0)
			{
				PORT[5].TMR_enabled = FALSE;
				vect_pt5 			= PORT[5].tvector;

			    PUSH_ALL;
				asm("		.global _vect_pt5  ");
			    asm("	ldp		_vect_pt5      ");
			    asm("	ldi		@_vect_pt5, R0 ");
			    asm("	ldi		5, AR2 		   ");	/* select the port */
			    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			    POP_ALL;
			}

			TIMER1_COUNTER[5]--;
		}

	 	if(PORT[6].TMR_enabled)
		{/* OIT */
			if (TIMER1_COUNTER[6]<=0)
			{
				PORT[6].TMR_enabled = FALSE;
				vect_pt6 			= PORT[6].tvector;

			    PUSH_ALL;
				asm("		.global _vect_pt6  ");
			    asm("	ldp		_vect_pt6      ");
			    asm("	ldi		@_vect_pt6, R0 ");
			    asm("	ldi		6, AR2 		   ");	/* select the port */
			    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			    POP_ALL;
			}

			TIMER1_COUNTER[6]--;
		}

	 	if(PORT[7].TMR_enabled)
		{/* PDI */
			if (TIMER1_COUNTER[7]<=0)
			{
				PORT[7].TMR_enabled = FALSE;
				vect_pt7 			= PORT[7].tvector;

			    PUSH_ALL;
				asm("		.global _vect_pt7  ");
			    asm("	ldp		_vect_pt7      ");
			    asm("	ldi		@_vect_pt7, R0 ");
			    asm("	ldi		7, AR2 		   ");	/* select the port */
			    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			    POP_ALL;
			}

			TIMER1_COUNTER[7]--;
		}

	 	if(PORT[4].TMR_enabled)
		{/* HART */
			if (TIMER1_COUNTER[4]<=0)
			{
				PORT[4].TMR_enabled = FALSE;
				vect_pt4 = PORT[4].tvector;

			    PUSH_ALL;
				asm("		.global _vect_pt4  ");
			    asm("	ldp		_vect_pt4      ");
			    asm("	ldi		@_vect_pt4, R0 ");
			    asm("	ldi		4, AR2 		   ");	/* select the port */
			    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			    POP_ALL;
			}
			else if (HART_BURST_MODE)
			{
				if (TMR_BURST<=0) 
					HART_Burst(4, 1);
				
				TMR_BURST--;
			}

		 	TIMER1_COUNTER[4]--;
		}

		break;
	}

	TIMER0_COUNTER++;
	
	if (TIMER0_COUNTER>=1047)
	{ /* handle all scheduled events */
		TIMER0_COUNTER  = 0;
		p 				= (TPKT*)LIST_TIMER0.head;			/* get the next event */
		
		while((int*)p != NULL_PTR)							/* while there are events, handle them */
		{
			if (p->countdown > 0)
			{/* check the time left on the event */
				p->countdown--;
				break;
			}

			List_Remove((LIST*)&LIST_TIMER0, (GENERIC*)p);	/* remove from timer list, but do not add to empty list until done */

			if (p->vect != NULL_PTR)						
			{/* execute vector */
				exec = TRUE;

				if (p->priority == 0)
				{/* execute NOW! */
					tmp 	= vect_tm;
					vect_tm = p->vect;

					/* note: if necessary, be sure that vectors push all regs!! */
					/* note: optimization problems may occur - may need to correct this */
				    PUSH_ALL;
					asm("		.global _vect_tm  ");
				    asm("	ldp		_vect_tm      ");
				    asm("	ldi		@_vect_tm, R0 ");
				    asm("	callnz	R0		 	  ");		/* call if vect != NULL */
				    POP_ALL;
				    vect_tm = tmp;
				}
				else if (!Execute_Insert((EPKT*)p))			/* execution queue is full!!! */
					exec = FALSE;
				
				
				
				if (!exec)
					Timer_Insert(p,1,TMR_action_replace);	/* re-insert timer with minimum tick*/
				else if (p->n > 1)
				{
					p->n--;
					Timer_Insert(p,0,TMR_action_replace);	/* re-insert timer */
				}
				else if (p->n < 0)
					Timer_Insert(p,0,TMR_action_replace);	/* re-insert timer */
			}

			List_Add(&LIST_TMR_EMPTY, (GENERIC*)p);

			TICKLE_WATCHDOG;
			p = (TPKT*)LIST_TIMER0.head;
		}
	}

	TICKLE_WATCHDOG;
	ENABLE_TINT0;
}

/****************************************************************************/
/* C TINT1 - Timer 1 interrupt												*/
/*                                                                          */
/* Description: Reserved for future use.                                    */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       None.                                                       */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_TINT1,"interrupt_routines")
#pragma INTERRUPT(c_TINT1)
void c_TINT1(void){}

/****************************************************************************/
/* C SPURINT - ?															*/
/*                                                                          */
/* Description: Reserved for future use                                     */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       None                                                        */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(c_SPURINT,"interrupt_routines")
#pragma INTERRUPT(c_SPURINT)
void c_SPURINT(void){}
