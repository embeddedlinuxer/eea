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
/* File Name: TIMER.H						    							*/
/* 									    									*/
/* File Description:  This defines the Timers for the microcontroller       */
/* architecture.  The timer controls the periodic events that happen during */
/* execution.  This sets up the Timer List so that events can be managed.   */
/*                                                                          */
/* STRUCTS:  TPKT	- This is important because it defines an event that    */
/*					happens during execution whenever there is a TIMER0     */
/*					interrupt.  				    						*/
/*									    									*/
/****************************************************************************/

#ifndef _TIMER
#define _TIMER

#ifdef TIMER_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

typedef struct	{
					int*	prev;
					int*	next;
					int*	vect;
					int		priority;
					int*	parent;

					int		n;				/* Number of times to repeat  (if (n==-1) repeat forever) */
					int		prev_n;
					int		countdown;
					int		preset_time;
					float	t;
				} TPKT;

#define TMR_Q_LEN 40

#pragma DATA_SECTION(TIMER1_COUNTER,"internal_RAM")
_EXTERN int TIMER1_COUNTER[UART_MAX+1];
#pragma DATA_SECTION(TIMER0_COUNTER,"internal_RAM")
_EXTERN int TIMER0_COUNTER;
#pragma DATA_SECTION(QUEUE_TMR,"internal_RAM")
_EXTERN TPKT QUEUE_TMR[TMR_Q_LEN];
#pragma DATA_SECTION(LIST_TMR_EMPTY,"internal_RAM")
_EXTERN LIST LIST_TMR_EMPTY;
#pragma DATA_SECTION(LIST_TIMER0,"internal_RAM")
_EXTERN LIST LIST_TIMER0;

#pragma DATA_SECTION(vect_pt0,"internal_RAM")
_EXTERN int* vect_pt0;
#pragma DATA_SECTION(vect_pt1,"internal_RAM")
_EXTERN int* vect_pt1;
#pragma DATA_SECTION(vect_pt2,"internal_RAM")
_EXTERN int* vect_pt2;
#pragma DATA_SECTION(vect_pt3,"internal_RAM")
_EXTERN int* vect_pt3;
#pragma DATA_SECTION(vect_pt4,"internal_RAM")
_EXTERN int* vect_pt4;
#pragma DATA_SECTION(vect_pt5,"internal_RAM")
_EXTERN int* vect_pt5;
#pragma DATA_SECTION(vect_pt6,"internal_RAM")
_EXTERN int* vect_pt6;
#pragma DATA_SECTION(vect_pt7,"internal_RAM")
_EXTERN int* vect_pt7;
#pragma DATA_SECTION(vect_tm,"internal_RAM")
_EXTERN int* vect_tm;

#ifdef TIMER_H
#pragma CODE_SECTION(Setup_Timer,"initialization")
#pragma CODE_SECTION(Timer_Insert,"interrupt_routines")
#pragma CODE_SECTION(Timer_Remove,"interrupt_routines")
#endif

_EXTERN void Setup_Timer(int id, float t);
_EXTERN BOOL Timer_Insert(TPKT *po, BOOL force, int mode);
_EXTERN BOOL Timer_Remove(TPKT *p);

_EXTERN void CLEAR_TIME(struct tm *p);
_EXTERN void GET_TIME(struct tm *p);

_EXTERN BOOL Timer_Create(TPKT *p, float sec, int nrepeat, int* vect, int pri);
_EXTERN void Setup_Gate(float* gt, float* ps, BOOL enabled, BOOL aux_in);
_EXTERN BOOL GATE_TIMEOUT;
_EXTERN float TIME0;
_EXTERN float TIME1;

#define TMR_action_always_add		0
#define TMR_action_replace			1
#define TMR_action_add_if_not_exist	2
#define TMR_action_delete			3

#define TMR0_GC ((volatile unsigned int*) 0x808020)
#define TMR1_GC ((volatile unsigned int*) 0x808030)
#define TMR_FUNC	0x0001
#define TMR_IO		0x0002
#define TMR_DATOUT	0x0004
#define TMR_DATIN	0x0008
#define TMR_GO		0x0040
#define TMR_HLD		0x0080
#define TMR_CP		0x0100
#define TMR_CLKSRC	0x0200
#define TMR_INV		0x0400
#define TMR_TSTAT	0x0800

//define the timer counter register address (8-3 in user's guide)
#define TMR0_CNT ((volatile unsigned int*) 0x808024)
#define TMR1_CNT ((volatile unsigned int*) 0x808034)

//define the timer period register address (8-3 in user's guide)
#define TMR0_PER ((volatile unsigned int*) 0x808028)
#define TMR1_PER ((volatile unsigned int*) 0x808038)

#define TMR0_FREQ CLOCK_TIMER
#define TMR1_FREQ CLOCK_TIMER

#define TMR0_RESTART {*TMR0_GC |= (TMR__HLD | TMR_GO);}
#define TMR1_RESTART {*TMR1_GC |= (TMR__HLD | TMR_GO);}

#define TMR0_HOLD {*TMR0_GC &= 0xFFFF ^ (TMR__HLD | TMR_GO);}
#define TMR1_HOLD {*TMR1_GC &= 0xFFFF ^ (TMR__HLD | TMR_GO);}

#define TMR0_CONTINUE {*TMR0_GC |= (TMR__HLD);}
#define TMR1_CONTINUE {*TMR1_GC |= (TMR__HLD);}

#define TC0	((float)(0xFFFFFFFF*TIME0))	/* rollover time for TIMER0 */
#define TC1	((float)(0xFFFFFFFF*TIME1))	/* rollover time for TIMER1 */

#undef _EXTERN
#undef TIMER_H
#endif

