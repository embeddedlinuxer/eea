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
/* File Name: DAC.H							    							*/
/* 									    									*/
/* File Description: The header file for the Digital to Analog Converter.   */
/* Contains definitions, struct LOOPDATA_O and function prototypes.			*/
/*									    									*/
/* Structs:  LOOPDATA_O - Structure for Analog Out Data.					*/
/*									    									*/
/****************************************************************************/

#ifndef _DAC
#define _DAC

#ifdef DAC_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#ifdef DAC_H
#pragma CODE_SECTION(Setup_DAC,"initialization")
#endif

_EXTERN void Setup_DAC(int n);

#define DAC_ADDRA1	0x98		/* Aout1, OSCSEL, VTUNE, TUNESEL */
#define DAC_ADDRA2	0x9E		/* Aout2, Aout3, Aout4, Aout5    */
#define DAC_REF_V	5.0
#define DAC_INTREF_V0 (1.024*2.0*5.99)/* note: internal gain = 2 */
#define DAC_INTREF_V1 (1.024*2.0*2.50)/* note: internal gain = 2 */
#define DAC_EXTREF 0x9000					/* setup for external 1.25V reference */
#define DAC_INTREF 0x9001					/* setup for 1.024V reference */
#define DAC_FASTMODE 0x4000					/* speed mode bit */
#define DAC_PWRDN 0x2000					/* powerdown mode bit */
#define DAC_Aout1	0
#define DAC_Aout2	1
#define DAC_Aout3	2
#define DAC_Aout4	3
#define DAC_Aout5	4
#define DAC_Aout6	5
#define DAC_Aout7	6
#define DAC_Aout8	7
#define DAC_Aout9	8
#define DAC_OSCSEL	9
#define DAC_VTUNE	10
#define DAC_TUNESEL	11
#define DAC_MAX		12

/* ideal 					*/
/* #define TMIN 0.0			*/
/* #define TMAX 65535.0		*/
/* #define TMAX2 32767.0 	*/

#define TMIN 100.0
#define TMIN2 6500.0
#define TMAX 64600.0
#define TMAX2 32000.0

#define AO_NLOOPS 9

_EXTERN void Write_DAC(int n);
_EXTERN int DAC_INT[DAC_MAX];
_EXTERN void Set_Current(void);
_EXTERN void PID_Init(int loop);
_EXTERN double PID(int loop);

typedef struct 	{
					VAR		CURRENT;
					VAR		CURRENT_PERCENT_OF_RANGE;
					VAR		LRV;
					VAR		URV;
					VAR		TRIM_MIN;
					VAR		TRIM_MAX;
					float   TRIM_MIN_C;
					float   TRIM_MAX_C;
					int		ALARM_SELECT;
					float	MINSPAN;
					REGVECT		v;
					REGVECT	class;
					REGVECT	unit;
					int		MANUAL;
					float	MANUAL_PERCENT;
					/* PID section, if v==-2 */
					int		REVERSE;
					float	PID_input;
					float	PID_setpoint;
					VAR		P;     /*Add PID to stream table RS*/
					VAR		I;     /*Add PID to stream table RS*/
					VAR		D;     /*Add PID to stream table RS*/
					int		pid_lastcycle;
					float	pid_output;
					float	pid_propband;
					float	pid_error;
					float	pid_bias;
					BOOL	present;
					BOOL	PID_fail;
					BOOL	PID_enable_failsafe;
	    		} LOOPDATA_O;

#pragma DATA_SECTION(AO,"CFG")
_EXTERN LOOPDATA_O AO[AO_NLOOPS];
_EXTERN void MB_RX_DAC_Aout(int id, int i);
_EXTERN void MB_RX_DAC_Aout6_7(int id);
_EXTERN void MB_RX_DAC_Aout8_9(int id);

#undef _EXTERN
#undef DAC_H
#endif
