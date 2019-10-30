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
/* File Name: DAC.C							    							*/
/* 									    									*/
/* File Description: This file looks like it manipulates analog outputs.	*/
/* That would make sense since it is a Digital to Analog converter.  Usually*/
/* digital signals are generated in the computer which need to be output to */
/* an analog device.  This file handles those processes... I think.			*/
/*									    									*/
/****************************************************************************/
#define DAC_H
#define MIN_CYCLE   0.100  /* used in PID 				*/
#define MAX_PBAND   1000.0 /* maximum proportional band */

#include "GLBLS.H"
#include "DAC.H"

/****************************************************************************/
/* WRITE DAC																*/
/*                                                                          */
/* Description:	Writes a value to the DAC.                                  */
/*                                                                          */
/* Arguments:	INT n - DAC to be written to.                               */
/*                                                                          */
/* Returns:		void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void Write_DAC(int n)
{
	int 	i;				/* value written to DAC */
	float 	t;				/* temp value to help with i */
	float	v;				/* DAC value */
	unsigned int pt[5];		/* buffer */
	BOOL r,ext_mb;			/* r - successful config; ext_mb - enable exteneded modbus table */
	int addr;				/* DAC Address */

	_GIEP;

	v = REG_DAC[n].val;

	if (v < 0.0) 
		v = 0.0;

	if (SA)
	{/* Stand alone? */
		if ((n!=DAC_VTUNE) && (n!=DAC_Aout1))
		{/* VTUNE or Aout1 not selected ? return */
			VAR_NaN(&REG_DAC[n]);
			GIEP;
			
			return;
		}

		i = (int)(v*DAC_TRIM_I_1[n] / DAC_TRIM_F_1[n]);
		t = (v*DAC_TRIM_I_1[n]/DAC_TRIM_F_1[n]) - (float)i;
		
		if (t>=0.5) 
			i++;

		if (i > DAC_TRIM_I_1[n]) 
			i = DAC_TRIM_I_1[n];
		else if (i<0) 
			i = 0;

		VAR_Update(&REG_DAC[n], (float)i*DAC_TRIM_F_1[n]/DAC_TRIM_I_1[n], 0, 0);
		
		DAC_INT[n] = i;

		switch(n)
		{/* write 12 bit value to DAC */
			case DAC_VTUNE:	
			{
				SEL_DAC0; 
				*SP0_TXDATA = i|DAC_FASTMODE; 
				WAIT_SP0; 
				
				break;
			}
			case DAC_Aout1:	
			{
				SEL_DAC1; 
				*SP0_TXDATA = i|DAC_FASTMODE; 
				WAIT_SP0; 
				
				break;
			}
		}

		if ((REG_DAC[n].STAT & var_NaNum) && (n<AO_NLOOPS))
		{/* if NaN flag set AND DAC within range ? set NaN */
			VAR_NaN(&AO[n].CURRENT);
			VAR_NaN(&AO[n].CURRENT_PERCENT_OF_RANGE);
		}

		GIEP;
		
		return;
	}

	ext_mb = FALSE;

	switch(n)
	{
		case DAC_OSCSEL:
		{
			addr  = DAC_ADDRA1;
			pt[0] = 0x12;
			
			break;
		}
		case DAC_VTUNE:
		{
			addr  = DAC_ADDRA1;
			pt[0] = 0x14;
			
			break;
		}
		case DAC_TUNESEL:
		{
			addr  = DAC_ADDRA1;
			pt[0] = 0x16;
			
			break;
		}
		case DAC_Aout1:
		{
			addr  					= DAC_ADDRA1;
			pt[0] 					= 0x10;
			AO[n-DAC_Aout1].present = TRUE;
			break;
		}
		case DAC_Aout2:
		{
			addr 					= DAC_ADDRA2;
			pt[0] 					= 0x10;
			AO[n-DAC_Aout1].present = TRUE;
			break;
		}
		case DAC_Aout3:
		{
			addr 					= DAC_ADDRA2;
			pt[0] 					= 0x12;
			AO[n-DAC_Aout1].present = TRUE;
			break;
		}
		case DAC_Aout4:
		{
			addr 					= DAC_ADDRA2;
			pt[0] 					= 0x14;
			AO[n-DAC_Aout1].present = TRUE;
			break;
		}
		case DAC_Aout5:
		{
			addr 					= DAC_ADDRA2;
			pt[0] 					= 0x16;
			AO[n-DAC_Aout1].present = TRUE;
			break;
		}
		case DAC_Aout6:
		case DAC_Aout7:
		case DAC_Aout8:
		case DAC_Aout9:
		{
			ext_mb = TRUE;
			/* note: these are written by another routine */
			break;
		}
		default:
		{
			GIEP;
			return;
		}
	}

	i = (int)(v*DAC_TRIM_I_1[n] / DAC_TRIM_F_1[n]);
	t = (v*DAC_TRIM_I_1[n] / DAC_TRIM_F_1[n]) - (float)i;
	
	if (t>=0.5) 
		i++;

	if (i>DAC_TRIM_I_1[n]) 
		i = DAC_TRIM_I_1[n];
	else if (i<0) 
		i = 0;

	DAC_INT[n] = i;

	if (ext_mb==FALSE)
	{
		pt[1] = i>>8;
		pt[2] = i;

		r = Write_ADC_DAC(addr, 3, (unsigned char*)pt);	/* setup cfg register */
		
		if (!r)
			VAR_NaN(&REG_DAC[n]);
		else /* clear NaN flag */
			REG_DAC[n].STAT &= var_NaNum ^ 0xFFFFFFFF;
		
		if ((REG_DAC[n].STAT & var_NaNum) && (n<=DAC_Aout9))
		{
			VAR_NaN(&AO[n-DAC_Aout1].CURRENT);
			VAR_NaN(&AO[n-DAC_Aout1].CURRENT_PERCENT_OF_RANGE);
			AO[n-DAC_Aout1].present = FALSE;
		}
	}

	GIEP;
}

/****************************************************************************/
/* MB RX DAC AOUT															*/
/*                                                                          */
/* Description: Checks to see if PORT[id].failed, sets present to TRUE      */
/*                                                                          */
/* Arguments:   INT id - Port number 										*/
/*				INT i  - DAC to update status                               */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       NaN -> REG_DAC[i], AO[].current, AO.current_percent_of_range*/
/*                                                                          */
/****************************************************************************/
void MB_RX_DAC_Aout(int id, int i)
{
	if (!PORT[id].failed)
	{
		REG_DAC[i].STAT 		&= var_NaNum ^ 0xFFFFFFFF;
		AO[i-DAC_Aout1].present  = TRUE;
	}
	else
	{
		VAR_NaN(&REG_DAC[i]);
		VAR_NaN(&AO[i-DAC_Aout1].CURRENT);
		VAR_NaN(&AO[i-DAC_Aout1].CURRENT_PERCENT_OF_RANGE);
		AO[i-DAC_Aout1].present = FALSE;
	}
}

/****************************************************************************/
/* MB RX DAC AOUT6 7														*/
/*                                                                          */
/* Description: checks Aout6 and Aout7 on a port                            */
/*                                                                          */
/* Arguments:   INT id - Port number                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_DAC_Aout6_7(int id)
{
	MB_RX_DAC_Aout(id, DAC_Aout6);
	MB_RX_DAC_Aout(id, DAC_Aout7);
}

/****************************************************************************/
/* MB RX DAC AOUT8 9														*/
/*                                                                          */
/* Description: checks Aout8 and Aout9 on a port                            */
/*                                                                          */
/* Arguments:   INT id - Port number                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_DAC_Aout8_9(int id)
{
	MB_RX_DAC_Aout(id, DAC_Aout8);
	MB_RX_DAC_Aout(id, DAC_Aout9);
}

/****************************************************************************/
/* SETUP DAC																*/
/*                                                                          */
/* Description:	Initializes DAC[n]                                          */
/*                                                                          */
/* Arguments:	INT n - DAC to set up.                                      */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       EEA writes 0 to REG_DAC[n].									*/
/*				SA sets up either DAC_VTUNE or DAC_Aout1                    */
/*                                                                          */
/****************************************************************************/
void Setup_DAC(int n)
{
	if( (n>=DAC_Aout1) && (n<=DAC_Aout9) )
		AO[n-DAC_Aout1].present = FALSE;
	
	VAR_NaN(&REG_DAC[n]);

	if(SA)
	{/* Stand alone? */
		switch(n)
		{
			case DAC_VTUNE:
			{
				SEL_DAC0; 
				*SP0_TXDATA = DAC_INTREF; 
				WAIT_SP0;
				
				break;
			}
			case DAC_Aout1:
			{
				if (B202_PORT)
				{
					AO[n].present = TRUE;
					SEL_DAC1; 
					*SP0_TXDATA   = DAC_INTREF; 
					WAIT_SP0;
				}
				else
					return;
				
				break;
			}
			default:
				return;
		}
	}

	VAR_Update(&REG_DAC[n], 0.0, 0, 0);
	Write_DAC(n);
}

/****************************************************************************/
/* SET CURRENT																*/
/*                                                                          */
/* Description: Sets AO[].CURRENT for all Analog Outputs                    */
/*                                                                          */
/* Arguments: 	void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       PID mode, Manual Mode and HART mode 						*/
/*                                                                          */
/****************************************************************************/
void Set_Current(void)
{
	long double minv, maxv;	/* minimum voltage; maximum voltage */
	long double minc, maxc; /* maximum current; maximum current */
	long double urv, lrv;	/* AO.URV, AO.LRV 					*/
	long double t;			/* PID manual percent 				*/
	long double m;			/* calculated AO.CURRENT 			*/
	long double y;			/* temp caluclation variable 		*/
	float current;			/* mode -1: current					*/
	VAR* v;					/* HART variable 					*/
	unsigned int ui;		/* user index? 						*/
	int i;					/* counter 							*/

	_GIEP;

	for (i=0;i<AO_NLOOPS;i++)
	{/* go through all analog out loops */
		if (!AO[i].present)/* if channel not present, check next channel */ 
			continue;

		if (((i+DAC_Aout1)>=DAC_Aout6) && ((i+DAC_Aout1)<=DAC_Aout9) && (AO[i].v.val==-2)) 
			AO[i].v.val = -1; /* PID mode not allowed on AO6-9 */

		minc = VAR_Get_Unit_Param(&AO[i].CURRENT, reg_direct_bmin, 0, 0);
		maxc = VAR_Get_Unit_Param(&AO[i].CURRENT, reg_direct_bmax, 0, 0);
		minv = AO[i].TRIM_MIN.calc_val*(float)DAC_TRIM_F_1[i+DAC_Aout1]/DAC_TRIM_I_1[i+DAC_Aout1];
		maxv = AO[i].TRIM_MAX.calc_val*(float)DAC_TRIM_F_1[i+DAC_Aout1]/DAC_TRIM_I_1[i+DAC_Aout1];

		if ((AO[i].v.val != -2) || (AO[i].MANUAL))
			PID_Init(i);	/* this is here to prevent problems when switching between NORMAL/MANUAL & PID */
		
		if (AO[i].v.val == -2)
		{/* PID mode */
			if (AO[i].MANUAL)
			{/* force current to manual % output - note: manual percent input only available with AO[i].v.val==-2*/
				if (AO[i].MANUAL_PERCENT > 100.0)	/* check bounds of manual % */ 
					AO[i].MANUAL_PERCENT = 100.0;
				else if (AO[i].MANUAL_PERCENT<0.0) 
					AO[i].MANUAL_PERCENT = 0.0;

				t = AO[i].MANUAL_PERCENT;

				if (AO[i].PID_enable_failsafe && AO[i].PID_fail)
				{/* failsafe and failed */
					PID_Init(i);
					
					if (AO[i].REVERSE) 
						t = 100.0;
					else 
						t = 0.0;
				}

				if (AO[i].REVERSE)
					m = ((maxc-minc)*(100.0-t)/100.0) + minc;
				else
					m = ((maxc-minc)*t/100.0) + minc;
			}
			else
			{/* PID control - note: Set_Current() must be called every 0.100s */
				y = PID(i);
								
				//account for reverse mode! 10/22/2015
				if (!AO[i].REVERSE)
					m = ((maxc-minc)*y/100.0) + minc;
				else //reverse mode
					m = ((maxc-minc)*(100-y)/100.0) + minc;
			}

			VAR_Update(&AO[i].CURRENT, m, 0, 0);
		}
		else if (AO[i].v.val < 0)
			AO[i].MANUAL = TRUE;
		
		if (AO[i].v.val>=-1)
		{// HART mode 
			v = HART_Lookup(AO[i].v.val, &ui, (int*)&HART_DV_Table);
			/* //Removed at Bentley's request. "No rhyme or reason to it."
			if  (  (i==0) 				// AO[0] 
				&& (!AO[0].MANUAL) 		// not manual 
				&& ((DIO_HART_5.val && ( (SA && (PORT[0].Slave != 0) && B202_PORT)	// HART: Standalone, PORT0 !Slave0, BELL202  
									||(  !SA && (PORT[4].Slave != 0))) ) 			// 		 EEA, 		 PORT4 !Slave0 
				   || (!DIO_HART_5.val && !LOOP_ENABLED.val)) )						// !HART, !LOOP_ENABLED 
			{
				AO[0].MANUAL = TRUE;
				
				VAR_Update(&AO[0].CURRENT, VAR_Get_Unit_Param(&AO[0].CURRENT, reg_direct_bmin, 0, 0), 0, 0);
			}
			*/
			if  ( (  !SA && (PORT[4].Slave != 0) ) || (!DIO_HART_5.val && !LOOP_ENABLED.val) )
			{ // 	EEA, PORT4 !Slave0  || !HART, !LOOP_ENABLED 
				AO[0].MANUAL = TRUE;
				VAR_Update(&AO[0].CURRENT, VAR_Get_Unit_Param(&AO[0].CURRENT, reg_direct_bmin, 0, 0), 0, 0);
			}
	
			if (AO[i].MANUAL)
			{/* MANUAL bounds check */
				y = AO[i].CURRENT.val;
				
				if (y > maxc)
				{
					y = maxc;
					
					VAR_Update(&AO[i].CURRENT, y, 0, 0);
				}
				else if (y < minc)
				{
					y = minc;
					
					VAR_Update(&AO[i].CURRENT, y, 0, 0);
				}
			}
			else if ((v->STAT & (var_NaNum|var_bound_hi|var_bound_lo|var_alarm_hi|var_alarm_lo)) || (v==&REG_DUMMY))
			{/* Error or Dummy */
				
				if ((v->STAT & var_NaNum) || (v==&REG_DUMMY))
	 			{// NaN or Dummy 
					if (AO[i].ALARM_SELECT)
						VAR_Update(&AO[i].CURRENT, minc, 0, 0);
					else
						VAR_Update(&AO[i].CURRENT, maxc, 0, 0);
				}
				else if (v->STAT & (var_bound_lo|var_alarm_lo))	// lo bound or alarm 
	 				VAR_Update(&AO[i].CURRENT, minc, 0, 0);
				else if (v->STAT & (var_bound_hi|var_alarm_hi)) // hi bound or alarm 
	 				VAR_Update(&AO[i].CURRENT, maxc, 0, 0);
		
			}
			else
			{/* m * (v->val - LRV) + minc */
				lrv 	= Convert(AO[i].class.val, AO[i].LRV.unit, AO[i].unit.val, AO[i].LRV.val, 0, AO[i].LRV.aux);
				urv 	= Convert(AO[i].class.val, AO[i].URV.unit, AO[i].unit.val, AO[i].URV.val, 0, AO[i].URV.aux);
				m 		= (maxc-minc)/(urv-lrv);
				current = m * (Convert(AO[i].class.val, v->unit,AO[i].unit.val, v->val,0, v->aux) - AO[i].LRV.val) + minc;
				
				VAR_Update(&AO[i].CURRENT, current, 0, 0);
			}
			
			
			
			
			
		}

		/* span the current to min and max trim values in mA */
		m = (maxv-minv)/(AO[i].TRIM_MAX_C-AO[i].TRIM_MIN_C);
		y = m*(AO[i].CURRENT.val-AO[i].TRIM_MIN_C) + minv;

		VAR_Update(&REG_DAC[i], y, 0, 0);
		Write_DAC(i);

		m = 100.0/( maxc - minc );
		y = m * (AO[i].CURRENT.val - minc);
		
		if (y >= 100.0) 
			y  = 100.0;
		
		if (y <= 0.0) 
			y  = 0.0;
		
		//Restore the reversed value so that CURRENT_PERCENT_OF_RANGE represents the VALVE POSITION!
		if ((AO[i].v.val == -2) && (AO[i].REVERSE))
			y = 100.0 - y;
		
		VAR_Update(&AO[i].CURRENT_PERCENT_OF_RANGE, y, 0, 0);
	}

	GIEP;
}

/****************************************************************************/
/* PID INIT																	*/
/*                                                                          */
/* Description: Set initial values of the controller's state                */
/*                                                                          */
/* Arguments:   INT loop - selects analog out loop                          */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void PID_Init(int loop)
{
    if ((loop<0) || (loop>=AO_NLOOPS)) 
		return;

    AO[loop].pid_output 	= 0.0;
    AO[loop].pid_error  	= 0.0;
    AO[loop].PID_input  	= 0.0;
    AO[loop].pid_bias  		= 0.0;
    AO[loop].pid_lastcycle  = *TMR1_CNT;
}

/*****************************************************************************/
/* PID																		 */
/*                                                                           */
/* Description: Calculates the PID output for an analog output loop.         */
/*                                                                           */
/* Arguments:	INT loop - Analog Output loop							  	 */
/*                                                                           */
/* Returns:		DOUBLE m - AO[loop].pid_output                               */
/*                                                                           */
/* Notes:       Not sure what PID stands for. <-- the plight of the CS major!*/
/*                                                                 -DHA      */
/*****************************************************************************/
double PID(int loop)
{
    double P;			/* PID propband 	  	  		*/
    double I;			/* Analog out I value 	  		*/
    double D;			/* Analog out D value 	  		*/
    //double kd;		/* Analog out P value 	  		*/
    double sp;			// setpoint 		  	  		*/
    double new_out;		// new output
    double delta_bias;	// change in bias
	double e;			// current error
    double last_e;		// last error 				
	double delta_e;		// current error - last error
	//double last_out; 	// last output <-- not needed for this PID scheme 10/16/2015
    double dt;			/* delta time 			  		*/
    int c, delta, per;	/* Timer1 Count, time delta, Timer1 per */

    if ((loop<0) || (loop>=AO_NLOOPS))	/* check range */ 
		return 0;
    
	if (!AO[loop].present) 				/* present? */
		return 0;

	if (AO[loop].PID_enable_failsafe && AO[loop].PID_fail)
	{/* failsafe and failed */
		PID_Init(loop);
    // DKOH | OCT-29-2019 | [Bug 62] v6.13.32 Failsafe seems to be working the opposite http://bug.phasedynamics.com/bugzilla/show_bug.cgi?id=62
	/*	
		if (AO[loop].REVERSE) 
			return 0.0;
		else 
			return 100.0;
    */

			return 100.0;
    // DKOH | OCT-29-2019 | [Bug 62] v6.13.32 Failsafe seems to be working the opposite http://bug.phasedynamics.com/bugzilla/show_bug.cgi?id=62
	}
	
	/**** Get time interval. ****/
	c = *TMR1_CNT;						
	
	/* count is next-count ? set delta : set up delta */
	if (c >= AO[loop].pid_lastcycle)
		delta = c - AO[loop].pid_lastcycle;
	else
	{
		per	  = *TMR1_PER;
		delta = (per - AO[loop].pid_lastcycle) + c;
	}

	dt  = delta;
	dt /= TMR1_FREQ;				/* Clock/2 = 27648000 Hz */
	dt /= 60.0;						/* convert to minutes */

    if (dt <= 0.0)					/* check for underflow on dt */
    	return AO[loop].pid_output;
	
	AO[loop].pid_lastcycle 	= c;	/* cycle count for next pass */
	/**** Get time interval. ****/
	
		//kd						= AO[loop].P.val;   	/* P input */
		//AO[loop].pid_propband	= 1.0/(MIN_CYCLE*kd);	/* proportional band = 1/(.1*kd)  */	
		
	AO[loop].pid_propband	= AO[loop].P.val;	//new PID 9/29/2015

	if (AO[loop].pid_propband > MAX_PBAND) 			/* Check if P > 1000 ? set to 1000 : do nothing */
		AO[loop].pid_propband = MAX_PBAND;
		
    P = AO[loop].pid_propband;		/*** P ***/

	/* //THIS IS WRONG
    if (!AO[loop].REVERSE)			// Check for loop reversal 
		P = -P;
	*/
	
    if (AO[loop].I.val <= 0.0) 		/* Check if I < 0 ? set to 1000 : do nothing*/
		AO[loop].I.val  = 10000.0;	/* should set to 10x10^6 */
    
	I = AO[loop].I.val;				/*** I ***/

    if (AO[loop].D.val < 0.0) 		/* Check D < 0 ? set to 0 : do nothing */
		AO[loop].D.val = 0.0;   	
    
	D  = AO[loop].D.val;			/*** D ***/
	
	last_e  = AO[loop].pid_error;	// get last error 
	//last_out = AO[loop].pid_output; // get last output <-- not needed for this PID scheme 10/16/2015
	
	sp = AO[loop].PID_setpoint;		//setpoint
	
	e = AO[loop].PID_input - sp;	//current error

	delta_e = e - last_e;

	delta_bias = e * dt/I;
	
	AO[loop].pid_bias += delta_bias;
	
	//enforce bias limits
	if (AO[loop].pid_bias > 100)
		AO[loop].pid_bias = 100;
	if (AO[loop].pid_bias < -100)
		AO[loop].pid_bias = -100;
	
	
	// we multiply output by 10 to keep customer PID values roughly in the same range as the old PID
	new_out = 10*P*(e + AO[loop].pid_bias + (D*delta_e)/dt);
	
	//Don't further accumulate the bias if the output hits 100% or 0%
	if ( ((new_out > 100.0) && (delta_bias > 0)) || ((new_out < 0) && (delta_bias < 0)) )
		AO[loop].pid_bias -= delta_bias; //undo the accumulate from earlier

    
    if (new_out > 100.0)	// Limit output to between 0 and 100%
		new_out = 100.0;	
    else if (new_out < 0.0) 
		new_out = 0.0;
		
    AO[loop].pid_output  = new_out;
    AO[loop].pid_error 	 = e;
	
	return new_out;
}
