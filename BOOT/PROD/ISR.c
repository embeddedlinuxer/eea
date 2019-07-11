/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#include "GLBLS.H"
#include "BRANCH.H"

#pragma CODE_SECTION(c_INT0,"interrupt_routines")
#pragma INTERRUPT(c_INT0)
void c_INT0(void)
{
	DISABLE_EXTINT0;
	Process_UINT();
	ENABLE_EXTINT0;
}

#pragma CODE_SECTION(c_TINT0,"interrupt_routines")
#pragma INTERRUPT(c_TINT0)
void c_TINT0(void)
{
	/*after the period of no port activity, execute vector*/

	vect_p1 = (int*)FLASH_LOC[FLASH_ENTRY_POINT_APP];
	if ((vect_p1 != (int*)0x00000000) && (vect_p1 != (int*)0xFFFFFFFF))
	{
		DISABLE_JTAG;
	}

	Exit_to_App();
}

#pragma CODE_SECTION(c_TINT1,"interrupt_routines")
#pragma INTERRUPT(c_TINT1)
void c_TINT1(void)
{
	DISABLE_TINT1;

 	if(PORT.TMR_enabled)
	{
	 	TIMER1_COUNTER--;
		if (TIMER1_COUNTER==0)
		{
			vect_pt1 = PORT.tvector;

		    PUSH_ALL;
			asm("		.global _vect_pt1  ");
		    asm("	ldp		_vect_pt1      ");
		    asm("	ldi		@_vect_pt1, R0 ");
		    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
		    POP_ALL;
		}
	}

	ENABLE_TINT1;
}

#pragma CODE_SECTION(c_SPURINT,"interrupt_routines")
#pragma INTERRUPT(c_SPURINT)
void c_SPURINT(void)
{
}
