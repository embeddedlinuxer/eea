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
/* File Name: VARIABLE.H					    							*/
/* 									    									*/
/* File Description:  In this program variables are complex abstract data   */
/* types.  VAR is the definition for a variable type.  The STRUCT described */
/* below defines the anatomy of a variable.  Variables are treated as any   */
/* mathematical variable in this implementation.  However, they need to be  */
/* defined, updated, converted, etc. using the functions prototyped in this */
/* file.  One does not simply create a VAR type, no that requires the use of*/
/* the Create() function.							   						*/
/*                                                                          */
/* STRUCTS:	VAR		- The definition of a Phase Dynamics variable           */
/*			COIL	- These act like bits, they are boolean.                */
/*			REGVECT - Register Vector, they have integer values             */
/*			DPKT	- Data Packet, linked list of variables					*/
/*                                                                          */
/****************************************************************************/

#ifndef _VARIABLE
#define _VARIABLE

#ifdef VARIABLE_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#define NULL_VAR (VAR*)NULL

#define tol 0.0001

#define DEF_SCALE_LONG		1000.0
#define DEF_SCALE			100.0

#define var_dampen			0x00000001
#define var_no_bound		0x00000002
#define var_no_alarm		0x00000004
#define var_NaNum			0x00000008
#define var_bound_hi		0x00000010
#define var_bound_lo		0x00000020
#define var_alarm_hi		0x00000040
#define var_alarm_lo		0x00000080
#define var_round			0x00000100
#define var_roll			0x00000200
#define var_aux				0x00000400
#define var_NaNproof		0x00000800

typedef struct 	{
					float	val;			/* value that is read by user & clipped */

					int*	vect1;
					int*	vect2;

					int		STAT;

					float	dampening;
					int		damp_count;

					int		aux;

					float	val1;			/* value that is intermediate for dampening */
					float	val2;			/* value that is dampened */
					long double	calc_val;	/* value used in calculations */
					long double	base_val;	/* original value prior to calculations */

					int		unit;			/* unit that is read by user */
					int		calc_unit;		/* unit that is used in calculations */
					int		class;			/* variable classification */

					float	scale;			/* amount to scale the integer values */
					float	scale_long;		/* amount to scale the integer values */

					/* based off of calc_val */
					float	bound_hi_set;
					float	bound_lo_set;
					float	alarm_hi_set;
					float	alarm_lo_set;

					char	name[21];
					int		name_r;	
					//char	name_r[21]; //memory overflow
	    		} VAR;

typedef struct 	{
					BOOL    val;
					int*	vect; 
					int*    vect2;/*Add stream select for Hsalt and Gas routine RS*/
	    		} COIL;

typedef struct 	{
					int     val;
					int*	vect;
	    		} REGVECT;

typedef struct	{
					int*	prev;
					int*	next;
					VAR*	v;
				} DPKT;

#define DAMP_MAX 40

#pragma DATA_SECTION(LIST_DAMP,"CFG")
_EXTERN LIST	LIST_DAMP;
#pragma DATA_SECTION(LIST_DAMP_EMPTY,"CFG")
_EXTERN LIST	LIST_DAMP_EMPTY;
#pragma DATA_SECTION(DAMP,"CFG")
_EXTERN DPKT 	DAMP[DAMP_MAX];

_EXTERN int f_compare(float* s, float r, BOOL reset);
_EXTERN int d_compare(double* s, double r, BOOL reset);

#ifdef VARIABLE_H
#pragma CODE_SECTION(VAR_Initialize,"initialization")
#pragma CODE_SECTION(VAR_DAMP_Init,"initialization")
#pragma CODE_SECTION(VAR_Setup_Unit,"initialization")
#endif

_EXTERN void VAR_Copy(VAR *s, VAR* d);
_EXTERN void VAR_Initialize(VAR *v, int class, int calc_unit, float scale, float scale_long, int STAT);
_EXTERN void VAR_DAMP_Init(BOOL clear);
_EXTERN BOOL VAR_Setup_Unit (VAR *v, int unit, float upper, float lower, float alarm_hi, float alarm_lo);

_EXTERN BOOL VAR_CheckSet_Bounds(VAR* v, long double* t);
_EXTERN BOOL VAR_Check_Bounds(VAR* v, long double* t);
_EXTERN BOOL VAR_Set_Unit(VAR *v, int unit, BOOL check_bounds_only);
_EXTERN BOOL VAR_Set_Unit_Param(VAR *v, unsigned int p, float val, int type, BOOL user_units);
_EXTERN float VAR_Get_Unit_Param(VAR *v, unsigned int p, int type, BOOL user_units);
_EXTERN void VAR_NaN(VAR *v);
_EXTERN void VAR_DAMP(void);
_EXTERN BOOL VAR_Update(VAR *v, long double valin, BOOL check_bounds_only, BOOL user_units);
_EXTERN BOOL Get_Unit_Coeff(VAR* v, int unit, int class, long double* m, long double* b);
_EXTERN long double Time_Scale_Flow(long double in, int class, int unit, int flow_unit);
_EXTERN void Breakout_Flow_Units(int class, int flow_unit, int* units, float* r);
_EXTERN long double Convert(int class, int from_unit, int to_unit, long double val, BOOL scale_only, int aux);
_EXTERN BOOL Get_Unit(int class, int unit, char* str);
_EXTERN BOOL Get_Class(int class, char* str);
_EXTERN int Get_Next_Unit(int class, int unit);
_EXTERN int Get_Prev_Unit(int class, int unit);
_EXTERN int Join_MassTime_Units(int m, int t);

_EXTERN int* vect_v1;
_EXTERN int* vect_v2;
_EXTERN int* vect_var1;
_EXTERN int* vect_var2;

#undef _EXTERN
#undef VARIABLE_H
#endif
