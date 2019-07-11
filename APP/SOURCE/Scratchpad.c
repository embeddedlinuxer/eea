double PID(int loop)
{
    double P;			/* PID propband 	  	  		*/
    double I;			/* Analog out I value 	  		*/
    double D;			/* Analog out D value 	  		*/
    //double kd;			/* Analog out P value 	  		*/
    double sp;			/* Set point 		  	  		*/
    double new_out;			// new output
	double e;			// current error
    double last_e;		// last error 				
	double delta_e;		// current error - last error
	double last_out; // last output
    double dt;			/* delta time 			  		*/
    int c, delta, per;	/* Timer1 Count, time delta, Timer1 per */

    if ((loop<0) || (loop>=AO_NLOOPS))	/* check range */ 
		return 0;
    
	if (!AO[loop].present) 				/* present? */
		return 0;

	if (AO[loop].PID_enable_failsafe && AO[loop].PID_fail)
	{/* failsafe and failed */
		PID_Init(loop);
		
		if (AO[loop].REVERSE) 
			return 0.0;
		else 
			return 100.0;
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

    if (!AO[loop].REVERSE)			/* Check for loop reversal */ 
		P = -P;

    if (AO[loop].I.val <= 0.0) 		/* Check if I < 0 ? set to 1000 : do nothing*/
		AO[loop].I.val  = 10000.0;	/* should set to 10x10^6 */
    
	I = AO[loop].I.val;				/*** I ***/

    if (AO[loop].D.val < 0.0) 		/* Check D < 0 ? set to 0 : do nothing */
		AO[loop].D.val = 0.0;   	
    
	D  = AO[loop].D.val;			/*** D ***/
	
	last_e  = AO[loop].pid_error;	// get last error 
	last_out = AO[loop].pid_output; // get last output 
	
	sp = AO[loop].PID_setpoint;		//setpoint
	e = sp - AO[loop].PID_input;	//current error
	
	delta_e = e - last_e;
	
	new_out = last_out + P*(delta_e + (dt/I)*e + (D*delta_e)/dt)
	
    
    if (new_out > 100.0)					/*  Limit output to between 0 and 100%  */
		new_out = 100.0;	
    else if (new_out < 0.0) 
		new_out = 0.0;
		
    AO[loop].pid_output  = new_out;
    AO[loop].pid_error 	 = e;
    
	return new_out;
}
