/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#define TIMER_H

#include "GLBLS.H"

void Setup_Timer(int id, double t)
{
	double ta;

	if (id==0)
	{
		ta = t * TMR0_FREQ;

		*TMR0_GC = (TMR_FUNC | TMR_GO | TMR__HLD);
		*TMR0_PER = (int)ta;
		TIME0 = ta/(double)TMR0_FREQ;
		ENABLE_TINT0;
	}
	else
	if (id==1)
	{
		ta = t * TMR1_FREQ;

		*TMR1_GC = (TMR_FUNC | TMR_GO | TMR__HLD);
		*TMR1_PER = (int)ta;
		PORT.TMR_enabled = FALSE;
		TIME1 = ta/(double)TMR1_FREQ;
		ENABLE_TINT1;
	}
}
