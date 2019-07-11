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
/* File Name: VARIABLE.C					    							*/
/* 									    									*/
/* File Description: This file contains different functions that implement	*/
/* things that you might want to do to a variable.  Something that isn't	*/
/* very obvious about this file is that it also deals with the units		*/
/* associated with variables.  It does operations on the units as well.		*/
/*									    									*/
/****************************************************************************/
#define VARIABLE_H
#define UNITS_H

#include "GLBLS.H"
#include "VARIABLE.H"

/****************************************************************************/
/* VAR DAMP INIT															*/
/*                                                                          */
/* Description: Initializes a damped variable                               */
/*                                                                          */
/* Arguments:   BOOL clear - intializes new list                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       If false - gets next variable                               */
/*                                                                          */
/****************************************************************************/
void VAR_DAMP_Init(BOOL clear)
{
	int i,j;	/* counter; not used */
	LIST* l;	/* dampened variable list */
	DPKT* d;	/* dampened variable */
	VAR* v;		/* variable */

	if (clear)
	{
		List_Init(&LIST_DAMP);
		List_Init(&LIST_DAMP_EMPTY);
	
		for (i=0;i<DAMP_MAX;i++)
			DAMP[i].v = NULL_VAR;
		
		for (i=0;i<DAMP_MAX;i++)
			List_Add(&LIST_DAMP_EMPTY, (GENERIC*)(&DAMP[i]));
	}
	else
	{
		l = &LIST_DAMP;
		d = (DPKT*)l->head;
		
		while(d!=(DPKT*)0)
		{
			v 			  = d->v;
			v->damp_count = 0;
			d 			  = (DPKT*) d->next;
		}                		
	}
}

/****************************************************************************/
/* VAR COPY																	*/
/*                                                                          */
/* Description: Can copy NULL vairable to destination or normal variable.   */
/*                                                                          */
/* Arguments:   VAR POINTER s - source variable								*/
/*				VAR POINTER d - destination variable                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void VAR_Copy(VAR *s, VAR* d)
{
	int i;	/* string counter */

	if (s==(VAR*)0)
	{/* empty/NULL variable */
		d->val = 0;
		d->vect1 = NULL_PTR;
		d->vect2 = NULL_PTR;
		d->STAT = 0;
		d->dampening = 0;
		d->damp_count = 0;
		d->aux = 0;
		d->val1 = 0;
		d->val2 = 0;
		d->calc_val = 0;
		d->base_val = 0;
		d->unit = u_generic_none;
		d->calc_unit = u_generic_none;
		d->class = c_not_classified;
		d->scale = 10;
		d->scale_long = 1000;
		d->bound_hi_set =  1000000000.0;
		d->bound_lo_set = -1000000000.0;
		d->alarm_hi_set =  1000000000.0;
		d->alarm_lo_set = -1000000000.0;

		for (i=0;i<21;i++)
			d->name[i] = 0;
		d->name_r = 0;

	}
	else
	{/* Regular variable */
		d->val 			= s->val;
		d->vect1 		= s->vect1;
		d->vect2 		= s->vect2;
		d->STAT 		= s->STAT;
		d->dampening 	= s->dampening;
		d->damp_count 	= s->damp_count;
		d->aux 			= s->aux;
		d->val1 		= s->val1;
		d->val2 		= s->val2;
		d->calc_val 	= s->calc_val;
		d->base_val 	= s->base_val;
		d->unit 		= s->unit;
		d->calc_unit = s->calc_unit;
		d->class = s->class;
		d->scale = s->scale;
		d->scale_long = s->scale_long;
		d->bound_hi_set = s->bound_hi_set;
		d->bound_lo_set = s->bound_lo_set;
		d->alarm_hi_set = s->alarm_hi_set;
		d->alarm_lo_set = s->alarm_lo_set;

		for (i=0;i<21;i++)
			d->name[i] = s->name[i];
		d->name_r = s->name_r;
	}
}

/****************************************************************************/
/* VAR INITIALIZE															*/
/*                                                                          */
/* Description: Initializes a variable                                      */
/*                                                                          */
/* Arguments:   VAR POINTER v		- variable location						*/
/*				INT class			- class									*/
/*				FLOAT scale			- scale									*/
/*				FLOAT scale_long	- scale_long							*/
/*				INT STAT			- STATUS register                       */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       calculations are done with the base_unit and upper/lower 	*/
/*				limits are compared to the actual calculated unit           */
/*				STAT var_dampen will make it a dampened variable			*/
/*                                                                          */
/****************************************************************************/
void VAR_Initialize(VAR *v, int class, int calc_unit, float scale, float scale_long, int STAT)
{
	int i;		/* name counter 	  */
	DPKT* d;	/* dampening variable */

	v->STAT  	  	= STAT;
	v->STAT 	   &= var_NaNum	   ^ 0xFFFFFFFF;
	v->STAT 	   &= var_alarm_lo ^ 0xFFFFFFFF;
	v->STAT 	   &= var_alarm_hi ^ 0xFFFFFFFF;
	v->STAT 	   &= var_bound_lo ^ 0xFFFFFFFF;
	v->STAT 	   &= var_bound_hi ^ 0xFFFFFFFF;
	v->STAT 	   &= var_aux	   ^ 0xFFFFFFFF;
	v->calc_unit  	= calc_unit;
	v->unit 	  	= v->calc_unit;
	v->class 	  	= class;
	v->dampening  	= 0.0;			/* value, in seconds, of dampening factor */
	v->scale 	  	= scale;
	v->scale_long 	= scale_long;
	v->val 		  	= 0.0;
	v->val1 	  	= 0.0;
	v->val2 	  	= 0.0;
	v->calc_val   	= 0.0;
	v->base_val   	= 0.0;
	v->vect1 	  	=	NULL_PTR;
	v->vect2 	  	= NULL_PTR;
	v->aux 		 	= 0;
	v->bound_hi_set =  1000000000.0;
	v->bound_lo_set = -1000000000.0;
	v->alarm_hi_set =  1000000000.0;
	v->alarm_lo_set = -1000000000.0;
	v->damp_count 	= 0;

	for (i=0;i<21;i++)					/* set variable name */
		v->name[i] = 0x00;
		
	v->name_r = 0x00;
		
	if ((v->STAT & var_roll)==var_roll) /* check if a roll variable */
		v->bound_lo_set = 0;
	
	if (v->STAT & var_dampen)
	{/* check if dampened variable */
	   	d = (DPKT*)List_Pop(&LIST_DAMP_EMPTY);
	   	
		if (d == (DPKT*)NULL)
	   	{
	   		v->dampening = 0.0;
	   		v->STAT     &= var_dampen ^ 0xFFFFFFFF;
	   	}
	   	else
	   	{
			d->v = v;
	   		
			List_Add(&LIST_DAMP, (GENERIC*)d);
	   	}
	}
}

/****************************************************************************/
/* VAR UPDATE																*/
/*                                                                          */
/* Description: Updates a variable, does the "VAR = x;" operation.          */
/*                                                                          */
/* Arguments:   VAR POINTER v			- variable location					*/
/*				LONG DOUBLE valin		- input value						*/
/*				BOOL check_bounds_only	- check bounds?						*/
/*				BOOL user_units         - user units?                       */
/*                                                                          */
/* Returns:     BOOL r - TRUE for normal operation.                         */
/*                                                                          */
/* Notes:       check_bounds_only excludes dampening and vect2    			*/
/*                                                                          */
/****************************************************************************/
BOOL VAR_Update(VAR *v, long double valin, BOOL check_bounds_only, BOOL user_units)
{
	BOOL  r;		/* return   		*/
	int i;			/* not used 		*/	
	int* tmp1;		/* holds function  	*/
	int* tmp2;		/* holds parameter 	*/
	long double t;	/* user unit value 	*/
	long double bv; /* base value 		*/

	r 			= TRUE;
	v->base_val = valin;

	if (user_units)	/* convert 'base_val' from USER units to calc units */
		v->base_val = Convert(v->class, v->unit, v->calc_unit, valin, 0, v->aux);
	
	if (!check_bounds_only)
	{/* Don't only check the bounds process the function vect_v1 */
		if(v->vect1)
		{
			tmp1 	  = vect_v1;
			tmp2 	  = vect_var1;
			vect_v1   = v->vect1;	/* variable function  */
			vect_var1 = (int*)v;	/* variable parameter */
			
			asm("		.global _vect_v1  ");
			asm("		.global _vect_var1");
		    PUSH_ALL;
		    asm("	ldp		_vect_var1    ");
	    	asm("	ldi		@_vect_var1, AR2 ");	/* pass the var struct */
		    asm("	ldp		_vect_v1      ");
		    asm("	ldi		@_vect_v1, R0 ");
		    asm("	callnz	R0		   	  ");		/* call if vect != NULL */
		    POP_ALL;
		    
			vect_v1   = tmp1;
		    vect_var1 = tmp2;
		}
	}

	bv = v->base_val;

	/* process incoming variable as calc_unit */
	if (!check_bounds_only)
		r = VAR_CheckSet_Bounds(v, &bv);
	else
	{/* check bounds only - function ends here */
		r = VAR_Check_Bounds(v, &bv);
		return r;
	}
	/* process incoming variable as calc_unit */

	if ((v->dampening<=0.0) || ((v->STAT & var_dampen)==0))
	{
		if ((v->STAT & var_NaNum)==0) //if it is a number (not a NaN)
		{
			/* convert to user units */
			v->val2 = v->val1;
			t 		= Convert(v->class, v->calc_unit, v->unit, v->val2, 0, v->aux);

			if ((v->STAT & var_round))
				v->val = round(t,0);
			else
				v->val = t;
			/* convert to user units */
		}
	}

	if(v->vect2)
	{/* execute second vector */
		tmp1 	  = vect_v2;
		tmp2 	  = vect_var2;
		vect_v2   = v->vect2;
		vect_var2 = (int*)v;
		
		asm("		.global _vect_v2  ");
		asm("		.global _vect_var2");
	    PUSH_ALL;
	    asm("	ldp		_vect_var2    ");
    	asm("	ldi		@_vect_var2, AR2 ");	/* pass the var struct */
	    asm("	ldp		_vect_v2      ");
	    asm("	ldi		@_vect_v2, R0 ");
	    asm("	callnz	R0		   	  ");		/* call if vect != NULL */
	    POP_ALL;
	    
		vect_v2   = tmp1;
	    vect_var2 = tmp2;
	}

	return r;
}

/****************************************************************************/
/* VAR SETUP UNIT															*/
/*                                                                          */
/* Description: sets up the variable unit bounds and alarms                 */
/*                                                                          */
/* Arguments:   VAR POINTER v 	- variable address							*/
/*				INT unit		- input unit code							*/
/*				FLOAT upper		- upper limit								*/
/*				FLOAT lower		- lower limit								*/
/*				FLOAT alarm_hi	- upper alarm								*/
/*				FLOAT alarm_lo  - lower alarm                               */
/*                                                                          */
/* Returns:     BOOL always TRUE                                            */
/*                                                                          */
/* Notes:       if input unit is same as var->calc unit, set bounds/alarms  */
/*                                                                          */
/****************************************************************************/
BOOL VAR_Setup_Unit (VAR *v, int unit, float upper, float lower, float alarm_hi, float alarm_lo)
{
	v->unit = unit;

	if (v->calc_unit==v->unit)
	{
		v->bound_hi_set = upper;
		v->bound_lo_set = lower;
		v->alarm_hi_set = alarm_hi;
		v->alarm_lo_set = alarm_lo;
	}

	if ((v->STAT & var_roll)==var_roll)
		v->bound_lo_set = 0;
	
	return TRUE;
}

/****************************************************************************/
/* VAR SET UNIT																*/
/*                                                                          */
/* Description: Sets variable unit with check_bounds_only & user_units FALSE*/
/*                                                                          */
/* Arguments:   VAR POINTER v			- variable address					*/
/*				INT unit				- input unit code					*/
/*				BOOL check_bounds_only  - check bounds only?                */
/*                                                                          */
/* Returns:     BOOL always TRUE                                            */
/*                                                                          */
/* Notes:       if check_bounds_only, this effectively does nothing.        */
/*                                                                          */
/****************************************************************************/
BOOL VAR_Set_Unit(VAR *v, int unit, BOOL check_bounds_only)
{
	if (check_bounds_only) 
		return TRUE;

	_GIEP;
	v->unit = unit;

	VAR_Update(v, v->base_val, 0, 0);

	GIEP;

	return TRUE;
}

/****************************************************************************/
/* VAR SET UNIT PARAM														*/
/*                                                                          */
/* Description: Sets unit parameters                                        */
/*                                                                          */
/* Arguments:   VAR POINTER v 	- variable address                          */
/* 				UNSIGNED INT p 	- parameter									*/
/*				FLOAT val 		- value										*/
/*				INT type 		- type (see notes)							*/
/*				BOOL user_units - user units?								*/
/*                                                                          */
/* Returns:     BOOL always TRUE                                            */
/*                                                                          */
/* Notes:       type -  0 = no scale										*/
/*						1 = int scale										*/
/*						x = long int scale                                  */
/*                                                                          */
/****************************************************************************/
BOOL VAR_Set_Unit_Param(VAR *v, unsigned int p, float val, int type, BOOL user_units)
{
	int i;				/* not used 		*/
	long double val1;	/* scaled value 	*/
	int	uu;				/* unit or calc_unit*/

	_GIEP;

	if (type==0)
		val1 = val;
	else if (type==1)
		val1 = val / v->scale;
	else
		val1 = val / v->scale_long;
	
	if (user_units)
		uu = v->unit;
	else
		uu = v->calc_unit;
	
	val1 = Convert(v->class, v->unit, v->calc_unit, val1, 0, v->aux);

    switch (p)
    {/* select variable to update */
		case reg_direct_bmax:
		{
			v->bound_hi_set = val1;

			if ((v->STAT & var_round))
				v->bound_hi_set = round(v->bound_hi_set,0);
			
			break;
		}
		case reg_direct_bmin:
		{
			v->bound_lo_set = val1;

			if ((v->STAT & var_round))
		 		v->bound_lo_set = round(v->bound_lo_set,0);
		
			break;
		}
		case reg_direct_alarm_hi:
		{
		 	v->alarm_hi_set = val1;

			if ((v->STAT & var_round))
				v->alarm_hi_set = round(v->alarm_hi_set,0);
			
			break;
		}
		case reg_direct_alarm_lo:
		{
		 	v->alarm_lo_set = val1;

			if ((v->STAT & var_round))
		 		v->alarm_lo_set = round(v->alarm_lo_set,0);
		
			break;
		}
    }

	GIEP;
	return TRUE;
}

/****************************************************************************/
/* VAR GET UNIT PARAM														*/
/*                                                                          */
/* Description: Gets converted unit parameter                               */
/*                                                                          */
/* Arguments:   VAR POINTER v	- variable									*/
/*				UNSIGNED INT p	- unit parameter							*/
/*				INT type		- unit scale								*/
/*				BOOL user_units - user units ? v->unit : v->calc_unit       */
/*                                                                          */
/* Returns:     FLOAT a - converted unit value                              */
/*                                                                          */
/* Notes:       type -  0 = no scale										*/
/*						1 = int scale										*/
/*						x = long int scale                                  */
/*                                                                          */
/****************************************************************************/
float VAR_Get_Unit_Param(VAR *v, unsigned int p, int type, BOOL user_units)
{
	int i;			/* not used 			*/
	long double a;	/* converted unit value */
	int	uu;			/* user unit value 		*/

	/* choose unit or calc_unit */
	if (user_units)			
		uu = v->unit;
	else
		uu = v->calc_unit;

    switch (p)
    {/* choose which value to convert */
		case reg_direct_bmax:
		{/* bound_hi_set */
			a = Convert(v->class, v->calc_unit, v->unit, v->bound_hi_set, 0, v->aux);
		 	
			break;
		}
		case reg_direct_bmin:
		{/* bound_lo_set */
			a = Convert(v->class, v->calc_unit, v->unit, v->bound_lo_set, 0, v->aux);
		 	
			break;
		}
		case reg_direct_alarm_hi:
		{/* alarm_hi_set */
			a = Convert(v->class, v->calc_unit, v->unit, v->alarm_hi_set, 0, v->aux);
		 	
			break;
		}
		case reg_direct_alarm_lo:
		{/* alarm_lo_set */
			a = Convert(v->class, v->calc_unit, v->unit, v->alarm_lo_set, 0, v->aux);
		 	
			break;
		}
    }

	/* return based on type */
	if (type==0)
		return (float)(a);
	else if (type==1)
		return (float)(a*v->scale);
	else
		return (float)(a*v->scale_long);
}

/****************************************************************************/
/* VAR NAN																	*/
/*                                                                          */
/* Description: Sets variable to NAN state.                                 */
/*                                                                          */
/* Arguments:   VARIABLE POINTER v - variable                               */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       NAN - Not A Number                                          */
/*                                                                          */
/****************************************************************************/
void VAR_NaN(VAR *v)
{
	_GIEP;

	if (!(v->STAT&var_NaNproof))
		v->STAT |= var_NaNum;
	else
		v->STAT &= var_NaNum ^ 0xFFFFFFFF;
	
	v->STAT |= var_alarm_lo;
	v->STAT |= var_alarm_hi;
	v->STAT |= var_bound_lo;
	v->STAT |= var_bound_hi;
	v->STAT &= var_aux ^ 0xFFFFFFFF;

	if (INITIALIZING || (!(v->STAT & var_NaNproof)))
	{/* if initializing OR variable can be NAN */
		v->val1     = NaN_val;
		v->val2     = NaN_val;
		v->val      = NaN_val;
		v->calc_val = NaN_val;
		v->base_val = NaN_val;
	}

	GIEP;
}

/****************************************************************************/
/* VAR DAMP																	*/
/*                                                                          */
/* Description: Goes through the list of variables to be dampened, dampens	*/
/*				them if necessary.                                          */
/*                                                                          */
/* Arguments:	void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:    	val2 and val1 are coefficents on dampening (they are the	*/
/*				variable bounds.                                            */
/*                                                                          */
/****************************************************************************/
void VAR_DAMP(void)
{
	LIST*	l;			/* Dampening list 								*/
	DPKT*	d;			/* Head of Dampening list 						*/
	VAR*	v;			/* variable associated with dampening list node */
	int		size;		/* not used 									*/
	int		n;			/* not used 									*/
	int		i,j;		/* not used 									*/
	float	A,t;		/* dampened value; calculated value 			*/
	float	min, max;	/* unit min and max 							*/
	float	s;			/* converted value 								*/
	long double	m,b;	/* not used 									*/

	#define damp_count_delay	50

	l = &LIST_DAMP;
	d = (DPKT*)l->head;

	while(d!=(DPKT*)0)
	{
		v = d->v;
		v->damp_count++;
		
		/* if over 50 counts, reset to 50 */
		if (v->damp_count>=damp_count_delay) 
			v->damp_count = damp_count_delay;

		/* dampening less than 0 OR variable cannot be dampened OR dampen count is less than count delay ? same dampening coefficients : calculate dampening */
		if ((v->dampening <= 0.0) || ((v->STAT & var_dampen)==0) || (v->damp_count<damp_count_delay))
			v->val2 = v->val1;
		else
		{
			A = 1 - exp(-1 / (v->dampening*10.0));
			t = (A * v->val1) + ((1-A) * v->val2);

			if ((v->STAT & var_no_bound)==0)
			{/* if there is no bounds on the variable */
				max = VAR_Get_Unit_Param(v, reg_direct_bmax, 0, 0);
				min = VAR_Get_Unit_Param(v, reg_direct_bmin, 0, 0);
				
				/* over-range ? val2 = max : (under-range ? val2 = min : val2 = dampening value) */
				if ( t>max ) 
					v->val2 = max;	
				else if ( t<min ) 
					v->val2 = min;
				else 
					v->val2 = t;
			}
			else
				v->val2 = t;
		}

		/* convert to user unit */
		s = v->val2;
		t = Convert(v->class, v->calc_unit, v->unit, s, 0, v->aux);

		/* is variable rounded ? round : don't round */
		if ((v->STAT & var_round))
			v->val = round(t,0);
		else
			v->val = t;
		/* convert to user unit */

		/* get next dampened variable */
		d = (DPKT*) d->next;
	}
}

/****************************************************************************/
/* F COMPARE																*/
/*                                                                          */
/* Description: compares float s to r +/- tol                               */
/*                                                                          */
/* Arguments:	FLOAT POINTER s - compared value							*/
/*			    FLOAT r			- comparison value							*/
/*				BOOL reset      - compared = comparison						*/
/*                                                                          */
/* Returns:     INT return value - < -1										*/
/*								   >  1										*/
/*								   =  0										*/
/*                                                                          */
/* Notes:		Don't know what tol is.                                     */
/*                                                                          */
/****************************************************************************/
int f_compare(float* s, float r, BOOL reset)
{
	if (s[0]<(r-tol)) 
		return -1;
	else if (s[0]>(r+tol)) 
		return 1;
	else
	{
		if (reset) 
			s[0] = r;	/* force to compared value */
		
		return 0;
	}
}

/****************************************************************************/
/* L COMPARE																*/
/*                                                                          */
/* Description: compares long double s to r +/- tol                         */
/*                                                                          */
/* Arguments:   LONG DOUBLE POINTER s	- compared value					*/
/*				LONG DOUBLE r 			- comparison value					*/
/*				BOOL reset				- compared = comparison             */
/*                                                                          */
/* Returns:     INT return value - 	< -1									*/
/*									>  1									*/
/*									=  0                                    */
/*                                                                          */
/* Notes:       Don't know what tol is. //tol is tolerance                  */
/*                                                                          */
/****************************************************************************/
int l_compare(long double* s, long double r, BOOL reset)
{
	if (s[0]<(r-tol)) 
		return -1;
	else if (s[0]>(r+tol)) 
		return 1;
	else
	{
		if (reset) 
			s[0] = r;	/* force to compared value */
		
		return 0;
	}
}

/****************************************************************************/
/* VAR CHECKSET BOUNDS														*/
/*                                                                          */
/* Description: Checks the value to see if it's within bounds               */
/*                                                                          */
/* Arguments:   VAR POINTER v 			- variable							*/
/*				LONG DOUBLE POINTER t 	- value to check                    */
/*                                                                          */
/* Returns:     BOOL r - T no error, F bounds error                    		*/
/*                                                                          */
/* Notes:       Errors are set here if there is an out of bounds or alarm   */
/*                                                                          */
/****************************************************************************/
BOOL VAR_CheckSet_Bounds(VAR* v, long double* t)
{
	BOOL r;	/* return value */

	r = TRUE;
	
	if ((v->STAT & var_no_alarm)==0)
	{/* alarms/bounds are based off calc value - check and set alarms */
		if (l_compare(t, v->alarm_hi_set, 1)>0)
		{/* t > alarm_hi */
			v->STAT 	 &= var_alarm_lo ^ 0xFFFFFFFF;
			v->STAT 	 |= var_alarm_hi;
			DIO_ALARM.val = TRUE;
		}
		else if (l_compare(t, v->alarm_lo_set, 1)<0)
		{/* t < alarm_lo */
			v->STAT 	 &= var_alarm_hi ^ 0xFFFFFFFF;
			v->STAT 	 |= var_alarm_lo;
			DIO_ALARM.val = TRUE;
		}
		else
		{/* t within range */
			v->STAT &= var_alarm_lo ^ 0xFFFFFFFF;
			v->STAT &= var_alarm_hi ^ 0xFFFFFFFF;
		}
	}
	else
	{/* alarms disabled */
		v->STAT &= var_alarm_lo ^ 0xFFFFFFFF;
		v->STAT &= var_alarm_hi ^ 0xFFFFFFFF;
	}

	if ((v->STAT & var_roll)==var_roll)
	{/* var_roll is enabled */
		v->STAT &= var_bound_lo ^ 0xFFFFFFFF;
		v->STAT &= var_bound_hi ^ 0xFFFFFFFF;
		t[0] 	 =  fmod(t[0], v->bound_hi_set);
		
		if (t[0] < 0.0) 
			t[0] = 0.0;
	}
	else if ((v->STAT & var_no_bound)==0)
	{/* bounds are enabled - check and set bounds */
		if (l_compare(t, v->bound_hi_set, 1)>0)
		{/* t > bound_hi */
			v->STAT &= var_bound_lo ^ 0xFFFFFFFF;
			v->STAT |= var_bound_hi;
			t[0] 	 = v->bound_hi_set;
			
			if ((v->STAT & var_no_alarm)==0) 
				DIAGNOSTICS[0] |= ERROR_VAR_BOUNDARY;
			
			r = FALSE;
		}
		else if (l_compare(t, v->bound_lo_set, 1)<0)
		{/* t < bound_lo */
			v->STAT &= var_bound_hi ^ 0xFFFFFFFF;
			v->STAT |= var_bound_lo;
			t[0] 	 = v->bound_lo_set;
			
			if ((v->STAT & var_no_alarm)==0) 
				DIAGNOSTICS[0] |= ERROR_VAR_BOUNDARY;
			
			r = FALSE;
		}
		else
		{/* t within range */
			v->STAT &= var_bound_lo ^ 0xFFFFFFFF;
			v->STAT &= var_bound_hi ^ 0xFFFFFFFF;
		}
	}
	else
	{/* var_roll and bounds are disabled */
		v->STAT &= var_bound_lo ^ 0xFFFFFFFF;
		v->STAT &= var_bound_hi ^ 0xFFFFFFFF;
	}

	v->calc_val = t[0];
	v->val1 	= v->calc_val;
	v->STAT    &= var_NaNum ^ 0xFFFFFFFF;

	return r;
}

/****************************************************************************/
/* VAR CHECK BOUNDS															*/
/*                                                                          */
/* Description: Checks if the value is in bounds.                           */
/*                                                                          */
/* Arguments:   VAR POINTER v			- variable							*/
/*				LONG DOUBLE POINTER t	- value to check                    */
/*                                                                          */
/* Returns:     BOOL r - T no error, F error                                */
/*                                                                          */
/* Notes:       Only checks the bounds, does not set STAT                   */
/*                                                                          */
/****************************************************************************/
BOOL VAR_Check_Bounds(VAR* v, long double* t)
{
	if ((v->STAT & var_no_bound)==0)
	{/* Check bounds enabled */
		if (l_compare(t, v->bound_hi_set, 1)>0)
			return FALSE;	/* t > bound_hi */
		else if (l_compare(t, v->bound_lo_set, 1)<0)
			return FALSE;	/* t < bound_lo */
	}

	return TRUE;
}

/****************************************************************************/
/* GET UNIT COEFF															*/
/*                                                                          */
/* Description: Gets the coefficients for the unit during conversion.       */
/*                                                                          */
/* Arguments:   VAR POINTER v		  - Variable							*/
/*				INT unit			  - Variable unit code					*/
/*				INT class			  - Variable unit class					*/
/*				LONG DOUBLE POINTER m - multiplier							*/
/*				LONG DOUBLE POINTER b - offset                              */
/*                                                                          */
/* Returns:     BOOL T if found F if not                                    */
/*                                                                          */
/* Notes:       This is used in context of conversion.                      */
/*              MASTER_UNITS has the following format:						*/
/*				{ classname, 0, 0, - indicates class header					*/
/*                 unitname, m, b, - indicates unit                         */
/*                        0, 0, 0} - end of table                           */
/*              This is horribly inefficient.  It looks at every index :(   */
/*                                                                          */
/****************************************************************************/
BOOL Get_Unit_Coeff(VAR* v, int unit, int class, long double* m, long double* b)
{
	int i;	/* counter */

	_GIEP;
	i = 0;
	
	while(1)
	{/* Go through the MASTER_UNITS vector - INT, 0, 0 = class header */
		if ((MASTER_UNITS[3*i+0]==0) && (MASTER_UNITS[3*i+1]==0) && (MASTER_UNITS[3*i+2]==0))
		{/* if at end of list */
			m[0] = 1.0;
			b[0] = 0.0;
			GIEP;
			
			return FALSE;
		}
		else if ((MASTER_UNITS[3*i+0]==class) && (MASTER_UNITS[3*i+1]==0) && (MASTER_UNITS[3*i+2]==0))
		{/* found variable class */
			i++;
			while(1)
			{/* search MASTER_UNITS one by one until unit code is found */
				if (MASTER_UNITS[3*i+0]==(unit&0xFF))
				{/* found variable unit code */
					m[0] = MASTER_UNITS[3*i+1];
					b[0] = MASTER_UNITS[3*i+2];
					GIEP;
					
					return TRUE;
				}
				else if ((MASTER_UNITS[3*i+1]==0) && (MASTER_UNITS[3*i+2]==0))
				{/* didn't find variable unit */
					m[0] = 1.0;
					b[0] = 0.0;
					GIEP;
					
					return FALSE;
				}
				i++;
			}
		}
		i++;
	}

	GIEP;
	
	return FALSE;
}

/****************************************************************************/
/* CONVERT																	*/
/*                                                                          */
/* Description: Converts a value from one unit to the other                 */
/*                                                                          */
/* Arguments:   INT  class		- unit class code							*/
/*				INT  from_unit	- unit code to convert from					*/
/*				INT  to_unit	- unit code to convert to					*/
/*				LONG DOUBLE val - value that needs converting				*/
/*				BOOL scale_only - offset is ignored							*/
/*				INT  aux        -                                           */
/*                                                                          */
/* Returns:		LONG DOUBLE r - converted value                             */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
long double Convert(int class, int from_unit, int to_unit, long double val, BOOL scale_only, int aux)
{
	long double m;	/* multiplier 	*/
	long double b;	/* offset 		*/
	long double r;	/* return		*/
	BOOL found;		/* found flag	*/
	int k;			/* API parameter*/

	r = val;

	/* unit converting to itself, return */
	if ((from_unit&0xFF)==(to_unit&0xFF)) 
		return r;

	_GIEP;
	found = FALSE;
	
	if (class==c_mass_per_volume)
	{/* convert to kg/m^3 @ process Temperature */
		found = TRUE;

		switch (from_unit&0xFF)
		{
			case u_mpv_sg_15C:
			case u_mpv_sg_60F:
			case u_mpv_sg:
			{
				r *= 1000.0;
				break;
			}
			case u_mpv_kg_cm_15C:
			case u_mpv_kg_cm_60F:
			case u_mpv_kg_cm:
			{
				break;
			}
			case u_mpv_deg_API_60F:
			case u_mpv_deg_API_15C:
			case u_mpv_deg_API:
			{
				r = API_to_kgm3(r);
				break;
			}
			default:
			{
				found = FALSE;
				break;
			}
		}

		switch (from_unit&0xFF)
		{/* r is in kg/m^3 */
			case u_mpv_sg_15C:
			case u_mpv_kg_cm_15C:
			case u_mpv_deg_API_15C:
			{/* convert r to process Temperature from 15C */
				k = -1;
				r = API_15C_PT(aux, r, &k);
				break;
			}
			case u_mpv_sg_60F:
			case u_mpv_kg_cm_60F:
			case u_mpv_deg_API_60F:
			{/* convert r to process Temperature from 60F */
				k = -1;
				r = API_60F_PT(aux, r, &k);
				break;
			}
		}
	}

	if (!found)
	{
		Get_Unit_Coeff((VAR*)0, from_unit&0xFF, class, &m, &b);
		
		if (scale_only) 
			b = 0;
		
		r = (r-b)/m;
	}

	found = FALSE;
	
	if (class==c_mass_per_volume)
	{
		found = TRUE;
		
		switch (to_unit&0xFF)
		{//* r is in kg/m^3 @ process Temperature */
			case u_mpv_deg_API:
			{
				break;
			}
			case u_mpv_sg_15C:
			case u_mpv_deg_API_15C:
			case u_mpv_kg_cm_15C:
			{/* convert r to 15C */
				r = API_PT_ST(aux, r, 0, 0);
				break;
			}
			case u_mpv_sg_60F:
			case u_mpv_deg_API_60F:
			case u_mpv_kg_cm_60F:
			{/* convert r to 60F */
				r = API_PT_ST(aux, r, 1, 0);
				break;
			}
			default:
			{
				found = FALSE;
				break;
			}
		}

		switch (to_unit&0xFF)
		{/* convert to API or sg */
			case u_mpv_sg_15C:
			case u_mpv_sg_60F:
			case u_mpv_sg:
			{
				r /= 1000.0;
				break;
			}
			case u_mpv_deg_API_15C:
			case u_mpv_deg_API_60F:
			case u_mpv_deg_API:
			{
				r = kgm3_to_API(r);
				break;
			}
		}
	}

	if (!found)
	{
		Get_Unit_Coeff((VAR*)0, to_unit&0xFF, class, &m, &b);
		
		if (scale_only) 
			b = 0;
		
		r = (r*m)+b;
	}

	GIEP;

	return r;
}

/****************************************************************************/
/* GET PREV UNIT															*/
/*                                                                          */
/* Description: Gets previous unit                                          */
/*                                                                          */
/* Arguments:   INT class - unit class										*/
/*				INT unit  - unit                                            */
/*                                                                          */
/* Returns:     INT unit | prev - returns the unit or previous unit         */
/*                                                                          */
/* Notes:       This is confusing.                                          */
/*							^												*/
/*              Not confusing, just unnecessarily complex.	-DHA            */
/****************************************************************************/
int Get_Prev_Unit(int class, int unit)
{
	int i,j;
	int prev;
	const int *tbl_p;

	i = 0;
	
	if(RUSS)
		tbl_p = MASTER_UNITS_STR_R;
	else
		tbl_p = MASTER_UNITS_STR;

	while(1)
	{
		if (tbl_p[9*i+0]==(c_none|0x100))
			return unit;
		else if (tbl_p[9*i+0]==(class|0x100))
		{/* found variable class */
			i++;
			j 	 = i;
			prev = unit;

			while (1)
			{/* scan to end of unit list within class to get last unit */
				if ((tbl_p[9*i+0]&0x100)==0x100)
					break;

				prev = tbl_p[9*i+0];
				i++;
			}

			i = j;
			
			while(1)
			{
				if (tbl_p[9*i+0]==(unit&0xFF))	/* found variable unit code */
					return prev;
				else if ((tbl_p[9*i+0]&0x100)==0x100)
					return unit;
				
				prev = tbl_p[9*i+0];
				i++;
			}
		}
		i++;
	}
}

/****************************************************************************/
/* GET NEXT UNIT															*/
/*                                                                          */
/* Description: Gets next unit                                              */
/*                                                                          */
/* Arguments:   INT class - class code										*/
/*				INT unit  - unit code                                       */
/*                                                                          */
/* Returns:     INT unit, t or unit code									*/
/*				unit 		- if failed										*/
/*				t    		- default										*/
/*				unit code 	- found unit code                               */
/*                                                                          */
/* Notes:       As confusing as GET PREV UNIT                               */
/*                                                                          */
/****************************************************************************/
int Get_Next_Unit(int class, int unit)
{
	int i;	/* counter 			*/
	int t;	/* temp unit code	*/
	int f;	/* found unit code 	*/
	int fv;	/* found variable  	*/
	const int *tbl_p;

	i  = 0;
	f  = 0;
	fv = 0;
	
	if(RUSS)
		tbl_p = MASTER_UNITS_STR_R;
	else
		tbl_p = MASTER_UNITS_STR;

	while(1)
	{
		if (tbl_p[9*i+0]==(c_none|0x100))
			return unit;
		else if (tbl_p[9*i+0]==(class|0x100))
		{/* found variable class */
			i++;
			
			while(1)
			{
				if (f==0)
				{
					f = 1;
					t = tbl_p[9*i+0]&0xFF;
				}

				if ((fv==0) && (tbl_p[9*i+0]==(unit&0xFF))) /* found variable unit code */
					fv = 1;
				else if ((tbl_p[9*i+0]&0x100)==0x100)
					return t;
				else if (fv==1)	/* found variable unit code */
					return (tbl_p[9*i+0]&0xFF);
				
				i++;
			}
		}
		i++;
	}
}

/****************************************************************************/
/* GET UNIT																	*/
/*                                                                          */
/* Description: Copies unit name to MASTER_UNITS_STR                        */
/*                                                                          */
/* Arguments:   INT class		 - class code								*/
/*				INT unit		 - unit code								*/
/*				CHAR POINTER str - string                                   */
/*                                                                          */
/* Returns:     BOOL TRUE - success; FALSE - failed                         */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
BOOL Get_Unit(int class, int unit, char* str)
{
	int i; /* counter */
	const int *tbl_p;

	for (i=0;i<8;i++)
		str[i] = 0;
	
	i = 0;
	
	if(RUSS)
		tbl_p = MASTER_UNITS_STR_R;
	else
		tbl_p = MASTER_UNITS_STR;

	while(1)
	{
		if (tbl_p[9*i+0]==(c_none|0x100))
			return FALSE;
		else if (tbl_p[9*i+0]==(class|0x100))
		{/* found variable class */
			i++;
			
			while(1)
			{
				if (tbl_p[9*i+0]==(unit&0xFF))
				{/* found variable unit code, copy name */
					strcpy (str, (char*) &tbl_p[9*i+1]);
					
					return TRUE;
				}
				else if ((tbl_p[9*i+0]&0x100)==0x100)
					return FALSE;
				
				i++;
			}
		}
		i++;
	}
}

/****************************************************************************/
/* GET CLASS																*/
/*                                                                          */
/* Description: Copies class name to MASTER_UNITS_STR                       */
/*                                                                          */
/* Arguments:   INT class 		 - class code								*/
/*				CHAR POINTER str - string                                   */
/*                                                                          */
/* Returns:     BOOL TRUE - success; FALSE - failed                         */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
BOOL Get_Class(int class, char* str)
{
	int i; /* counter */
	const int *tbl_p;

	i 		= 0;
	str[0]  = 0;

	if(RUSS)
		tbl_p = MASTER_UNITS_STR_R;
	else
		tbl_p = MASTER_UNITS_STR;
	
	while(1)
	{
		if (tbl_p[9*i+0]==(c_none|0x100))
			return FALSE;
		else if (tbl_p[9*i+0]==(class|0x100))
		{/* found variable class, copy string */
			strcpy (str, (char*) &tbl_p[9*i+1]);
			return TRUE;
		}
		i++;
	}
}

/****************************************************************************/
/* TIME SCALE FLOW															*/
/*                                                                          */
/* Description: Converts "in" value from "unit" to "flow_unit" then corrects*/
/*				for time unit.									            */
/*                                                                          */
/* Arguments:   LONG DOUBLE in  - input value								*/
/*				INT class		- class code								*/
/*				INT unit		- from unit									*/
/*				INT flow_unit	- to unit	                                */
/*                                                                          */
/* Returns:     LONG DOUBLE r - calculated return value                     */
/*                                                                          */
/* Notes:       This could easily be placed into a multi-dimensional 		*/
/*				table for lookup											*/
/*				Assume periodic update of 1sec and convert to unit's time 	*/
/*				scale                                            			*/
/*                                                                          */
/****************************************************************************/
long double Time_Scale_Flow(long double in, int class, int unit, int flow_unit)
{
	long double r;
	int	u;

	r = 0.0;

	switch(class&0xFF)
	{/* mass or volume */
		case c_mass:
		{/* mass */
			switch(flow_unit&0xFF)
			{/* mass scale - find unit */
				case u_mfr_g_sec:
				case u_mfr_g_min:
				case u_mfr_g_hr:
				{
					u = u_m_g;
					
					break;
				} 
				case u_mfr_metric_tons_min:
				case u_mfr_metric_tons_hr:
				case u_mfr_metric_tons_day:
				{
					u = u_m_metric_tons;
					
					break;
				} 
				case u_mfr_lbs_sec:
				case u_mfr_lbs_min:
				case u_mfr_lbs_hr:
				case u_mfr_lbs_day:
				{
					u = u_m_lbs;
					
					break;
				} 
				case u_mfr_short_tons_min:
				case u_mfr_short_tons_hr:
				case u_mfr_short_tons_day:
				{
					u = u_m_short_tons;
					
					break;
				} 
				case u_mfr_long_tons_hr:
				case u_mfr_long_tons_day:
				{
					u = u_m_long_tons;
					
					break;
				} 
				case u_mfr_kg_sec:
				case u_mfr_kg_min:
				case u_mfr_kg_hr:
				case u_mfr_kg_day:
				default:
				{
					u = u_m_kg;
					
					break;
				} 
			}

			r = Convert(class, unit, u, in, 0, -1);	/* convert */

			switch(flow_unit&0xFF)
			{/* time scale - correct time unit */
				case u_mfr_metric_tons_day:
				case u_mfr_lbs_day:
				case u_mfr_short_tons_day:
				case u_mfr_long_tons_day:
				case u_mfr_kg_day:
				{
					r *= 86400.0;
					
					break;
				}
				case u_mfr_g_hr:
				case u_mfr_metric_tons_hr:
				case u_mfr_lbs_hr:
				case u_mfr_short_tons_hr:
				case u_mfr_long_tons_hr:
				case u_mfr_kg_hr:
				{
					r *= 3600.0;
					
					break;
				}
				case u_mfr_g_min:
				case u_mfr_metric_tons_min:
				case u_mfr_lbs_min:
				case u_mfr_short_tons_min:
				case u_mfr_kg_min:
				{
					r *= 60.0;
					
					break;
				}
				case u_mfr_g_sec:
				case u_mfr_lbs_sec:
				case u_mfr_kg_sec:
				default:
					break;
			}

			break;
		}
		case c_volume:
		{/* volume */
			switch(flow_unit&0xFF)
			{/* volume scale - find unit */
				case u_vfr_barrel_day:
				case u_vfr_barrel_hr:
				case u_vfr_barrel_min:
				case u_vfr_barrel_sec:
				{
					u = u_v_barrel;
					
					break;
				}
				case u_vfr_scf_min:
				{
					u = u_v_scf;
					
					break;
				}
				case u_vfr_cf_day:
				case u_vfr_cf_hr:
				case u_vfr_cf_min:
				case u_vfr_cf_sec:
				{
					u = u_v_cf;
					
					break;
				}
				case u_vfr_N_L_hr:
				{
					u = u_v_N_L;
					
					break;
				}
				case u_vfr_L_hr:
				case u_vfr_L_min:
				case u_vfr_L_sec:
				{
					u = u_v_L;
					
					break;
				}
				case u_vfr_N_cm_sec:
				case u_vfr_N_cm_hr:
				case u_vfr_N_cm_day:
				{
					u = u_v_N_cm;
					
					break;
				}
				case u_vfr_cm_day:
				case u_vfr_cm_hr:
				case u_vfr_cm_min:
				case u_vfr_cm_sec:
				{
					u = u_v_cm;
					
					break;
				}
				case u_vfr_imp_gal_day:
				case u_vfr_imp_gal_hr:
				case u_vfr_imp_gal_sec:
				case u_vfr_imp_gal_min:
				{
					u = u_v_imp_gal;
					
					break;
				}
				case u_vfr_gal_hr:
				case u_vfr_gal_day:
				case u_vfr_gal_min:
				case u_vfr_gal_sec:
				{
					u = u_v_gal;
					
					break;
				}
				case u_vfr_mscf_day:
				{
					u = u_v_mscf;
					
					break;
				}
				case u_vfr_scf_day:
				case u_vfr_scf_sec:
				{
					u = u_v_scf;
					
					break;
				}
				case u_vfr_Mgal_day:
				case u_vfr_ML_day:
				default:
				{
					u = 0;
					
					break;
				}
			}
	
			r = Convert(class, unit, u, in, 0, -1);	/* convert */
	
			switch(flow_unit&0xFF)
			{/* time scale - correct time unit */
				case u_vfr_barrel_day:
				case u_vfr_Mgal_day:
				case u_vfr_ML_day:
				case u_vfr_cf_day:
				case u_vfr_cm_day:
				case u_vfr_imp_gal_day:
				case u_vfr_gal_day:
				case u_vfr_mscf_day:
				case u_vfr_scf_day:
				{
					r *= 86400.0;
					
					break;
				}
				case u_vfr_cm_hr:
				case u_vfr_imp_gal_hr:
				case u_vfr_N_cm_hr:
				case u_vfr_N_L_hr:
				case u_vfr_cf_hr:
				case u_vfr_barrel_hr:
				case u_vfr_gal_hr:
				case u_vfr_L_hr:
				{
					r *= 3600.0;
					
					break;
				}
				case u_vfr_barrel_min:
				case u_vfr_cm_min:
				case u_vfr_cf_min:
				case u_vfr_gal_min:
				case u_vfr_L_min:
				case u_vfr_imp_gal_min:
				case u_vfr_scf_min:
				{
					r *= 60.0;
					
					break;
				}
				case u_vfr_gal_sec:
				case u_vfr_L_sec:
				case u_vfr_cf_sec:
				case u_vfr_cm_sec:
				case u_vfr_barrel_sec:
				case u_vfr_imp_gal_sec:
				default:
					break;
			}

			break;
		}
	}

	return r;
}

/****************************************************************************/
/* BREATOUT FLOW UNITS														*/
/*                                                                          */
/* Description: Takes in a flow unit and seperates the unit from time       */
/*                                                                          */
/* Arguments:   INT class			- class code							*/
/*				INT flow_unit		- unit source							*/
/*				INT POINTER units	- [unit code][time unit]				*/
/*				FLOAT POINTER r		- number of seconds                     */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       This could easily be placed into a multi-simensional table 	*/
/*				for lookup                                                  */
/*                                                                          */
/****************************************************************************/
void Breakout_Flow_Units(int class, int flow_unit, int* units, float* r)
{
	r[0] = 1.0;
	units[0] = u_generic_unknown;
	units[1] = u_generic_unknown;
	units[2] = c_unknown;

	switch(class&0xFF)
	{
		case c_mass_flow:
		{
			units[2] = c_mass;

			switch(flow_unit&0xFF)
			{/* mass scale */
				case u_mfr_g_sec:
				case u_mfr_g_min:
				case u_mfr_g_hr:
				{
					units[0] = u_m_g;
					
					break;
				} 
				case u_mfr_metric_tons_min:
				case u_mfr_metric_tons_hr:
				case u_mfr_metric_tons_day:
				{
					units[0] = u_m_metric_tons;
					
					break;
				} 
				case u_mfr_lbs_sec:
				case u_mfr_lbs_min:
				case u_mfr_lbs_hr:
				case u_mfr_lbs_day:
				{
					units[0] = u_m_lbs;
					
					break;
				} 
				case u_mfr_short_tons_min:
				case u_mfr_short_tons_hr:
				case u_mfr_short_tons_day:
				{
					units[0] = u_m_short_tons;
					
					break;
				} 
				case u_mfr_long_tons_hr:
				case u_mfr_long_tons_day:
				{
					units[0] = u_m_long_tons;
					
					break;
				} 
				case u_mfr_kg_sec:
				case u_mfr_kg_min:
				case u_mfr_kg_hr:
				case u_mfr_kg_day:
				default:
				{
					units[0] = u_m_kg;
					
					break;
				} 
			}

			switch(flow_unit&0xFF)
			{/* time scale */
				case u_mfr_metric_tons_day:
				case u_mfr_lbs_day:
				case u_mfr_short_tons_day:
				case u_mfr_long_tons_day:
				case u_mfr_kg_day:
				{
					units[1] = u_time_day;
					r[0] 	 = 86400.0;
					
					break;
				}
				case u_mfr_g_hr:
				case u_mfr_metric_tons_hr:
				case u_mfr_lbs_hr:
				case u_mfr_short_tons_hr:
				case u_mfr_long_tons_hr:
				case u_mfr_kg_hr:
				{
					units[1] = u_time_hr;
					r[0] 	 = 3600.0;
					
					break;
				}
				case u_mfr_g_min:
				case u_mfr_metric_tons_min:
				case u_mfr_lbs_min:
				case u_mfr_short_tons_min:
				case u_mfr_kg_min:
				{
					units[1] = u_time_min;
					r[0] 	 = 60.0;
					
					break;
				}
				case u_mfr_g_sec:
				case u_mfr_lbs_sec:
				case u_mfr_kg_sec:
				default:
				{
					units[1] = u_time_sec;
					r[0] 	 = 1.0;
					
					break;
				}
			}
			
			break;
		}
		case c_volumetric_flow:
		{
			units[2] = c_volume;

			switch(flow_unit&0xFF)
			{/* volume scale */
				case u_vfr_barrel_day:
				case u_vfr_barrel_hr:
				case u_vfr_barrel_min:
				case u_vfr_barrel_sec:
				{
					units[0] = u_v_barrel;
					
					break;
				}
				case u_vfr_scf_min:
				{
					units[0] = u_v_scf;
				
					break;
				}
				case u_vfr_cf_day:
				case u_vfr_cf_hr:
				case u_vfr_cf_min:
				case u_vfr_cf_sec:
				{
					units[0] = u_v_cf;
					
					break;
				}
				case u_vfr_N_L_hr:
				{
					units[0] = u_v_N_L;
					
					break;
				}
				case u_vfr_L_hr:
				case u_vfr_L_min:
				case u_vfr_L_sec:
				{
					units[0] = u_v_L;
					
					break;
				}
				case u_vfr_N_cm_sec:
				case u_vfr_N_cm_hr:
				case u_vfr_N_cm_day:
				{
					units[0] = u_v_N_cm;
					
					break;
				}
				case u_vfr_cm_day:
				case u_vfr_cm_hr:
				case u_vfr_cm_min:
				case u_vfr_cm_sec:
				{
					units[0] = u_v_cm;
					
					break;
				}
				case u_vfr_imp_gal_day:
				case u_vfr_imp_gal_hr:
				case u_vfr_imp_gal_sec:
				case u_vfr_imp_gal_min:
				{
					units[0] = u_v_imp_gal;
					
					break;
				}
				case u_vfr_gal_hr:
				case u_vfr_gal_day:
				case u_vfr_gal_min:
				case u_vfr_gal_sec:
				{
					units[0] = u_v_gal;
					
					break;
				}
				case u_vfr_mscf_day:
				{
					units[0] = u_v_mscf;
					
					break;
				}
				case u_vfr_scf_day:
				case u_vfr_scf_sec:
				{
					units[0] = u_v_scf;
					
					break;
				}
				case u_vfr_Mgal_day:
				case u_vfr_ML_day:
				default:
				{
					units[0] = 0;
					
					break;
				}
			}

			switch(flow_unit&0xFF)
			{/* time scale */
				case u_vfr_barrel_day:
				case u_vfr_Mgal_day:
				case u_vfr_ML_day:
				case u_vfr_cf_day:
				case u_vfr_cm_day:
				case u_vfr_imp_gal_day:
				case u_vfr_gal_day:
				case u_vfr_mscf_day:
				case u_vfr_scf_day:
				case u_vfr_N_cm_day:
				{
					units[1] = u_time_day;
					r[0] 	 = 86400.0;
					
					break;
				}
				case u_vfr_cm_hr:
				case u_vfr_imp_gal_hr:
				case u_vfr_N_cm_hr:
				case u_vfr_N_L_hr:
				case u_vfr_cf_hr:
				case u_vfr_barrel_hr:
				case u_vfr_gal_hr:
				case u_vfr_L_hr:
				{
					units[1] = u_time_hr;
					r[0] 	 = 3600.0;
					
					break;
				}
				case u_vfr_barrel_min:
				case u_vfr_cm_min:
				case u_vfr_cf_min:
				case u_vfr_gal_min:
				case u_vfr_L_min:
				case u_vfr_imp_gal_min:
				case u_vfr_scf_min:
				{
					units[1] = u_time_min;
					r[0] 	 = 60.0;
					
					break;
				}
				case u_vfr_gal_sec:
				case u_vfr_L_sec:
				case u_vfr_cf_sec:
				case u_vfr_cm_sec:
				case u_vfr_barrel_sec:
				case u_vfr_imp_gal_sec:
				case u_vfr_scf_sec:
				case u_vfr_N_cm_sec:
				default:
				{
					units[1] = u_time_sec;
					r[0] 	 = 1.0;
					
					break;
				}
			}

			break;
		}
	}
}

/****************************************************************************/
/* JOIN MASSTIME UNITS														*/
/*                                                                          */
/* Description: Takes in two unit codes and returns the joined unit code    */
/*                                                                          */
/* Arguments:   INT m - mass unit code										*/
/*				INT t - time unit code                                      */
/*                                                                          */
/* Returns:     INT r - returns unit                                        */
/*                                                                          */
/* Notes:       This could easily be placed into a multi-simensional table 	*/
/*				for lookup                                                  */
/*                                                                          */
/****************************************************************************/
int Join_MassTime_Units(int m, int t)
{
	int r; /* return value */
	
	r = u_generic_unknown;

	switch(t&0xFF)
	{/* time unit */
		case u_time_day:
		{
			switch(m&0xFF)
			{/* mass unit */
				case u_m_metric_tons: 	r = u_mfr_metric_tons_day; 	break;
				case u_m_lbs: 			r = u_mfr_lbs_day; 			break;
				case u_m_short_tons: 	r = u_mfr_short_tons_day;	break;
				case u_m_long_tons: 	r = u_mfr_long_tons_day; 	break;
				case u_m_kg: 			r = u_mfr_kg_day; 			break;
			}
			
			break;
		}
		case u_time_hr:
		{
			switch(m&0xFF)
			{/* mass unit */
				case u_m_g: 			r = u_mfr_g_hr; 			break;
				case u_m_metric_tons: 	r = u_mfr_metric_tons_hr; 	break;
				case u_m_lbs: 			r = u_mfr_lbs_hr; 			break;
				case u_m_short_tons: 	r = u_mfr_short_tons_hr; 	break;
				case u_m_long_tons: 	r = u_mfr_long_tons_hr; 	break;
				case u_m_kg: 			r = u_mfr_kg_hr; 			break;
			}
			
			break;
		}
		case u_time_min:
		{
			switch(m&0xFF)
			{/* mass unit */
				case u_m_g: 			r = u_mfr_g_min; 			break;
				case u_m_metric_tons: 	r = u_mfr_metric_tons_min; 	break;
				case u_m_lbs: 			r = u_mfr_lbs_min; 			break;
				case u_m_short_tons: 	r = u_mfr_short_tons_min; 	break;
				case u_m_kg: 			r = u_mfr_kg_min; 			break;
			}
			
			break;
		}
		case u_time_sec:
		{
			switch(m&0xFF)
			{/* mass unit */
				case u_m_g: 	r = u_mfr_g_sec; 	break;
				case u_m_lbs: 	r = u_mfr_lbs_sec; 	break;
				case u_m_kg: 	r = u_mfr_kg_sec; 	break;
			}
			
			break;
		}
	}
	
	return r;
}
	