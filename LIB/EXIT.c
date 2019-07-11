/****************************************************************************/
/* Phase Dynamics, Inc.							    						*/
/* 1251 Columbia Dr.                                                        */
/* Richardson, TX 75081                                                     */
/* 972-680-1550    972-680-3262 fax                                         */
/*									    									*/
/* (C)2011 Phase Dynamics, Inc.						    					*/
/* This code is not to be used in any capacity without explicit consent by  */
/* Phase Dynamics, Inc.  Violators will be prosecuted to the fullest extent */
/* of the law.  Please contact Phase Dynamics, Inc. if you wish to use this */
/* code.  Thank you for your cooperation.                                   */
/*									    									*/
/* File Name:								    							*/
/* 									    									*/
/* File Description:  Apparently this is an extension of a TI code file.	*/
/*									    									*/
/****************************************************************************/

#define EXIT_H

#include "GLBLS.H"

/*****************************************************************************/
/*  EXIT.C V5.11                                                            */
/*  Copyright (c) 1995-1999 Texas Instruments Incorporated                   */
/*****************************************************************************/

#define MAX_FUN   32

static int    at_exit_count = 0;
static void (*at_exit_fun[MAX_FUN])();
void        (*_cleanup_ptr)(void) = NULL;

/****************************************************************************/
/* EXIT() - NORMAL PROGRAM TERMINATION.                                     */
/****************************************************************************/
void exit(int status)        
{
   register int i = at_exit_count;

   /*-------------------------------------------------------------------*/
   /* HANDLE FUNCTIONS REGISTERED THROUGH atexit().                     */
   /*-------------------------------------------------------------------*/
   while (i) (*at_exit_fun[--i])(); 

   /*-------------------------------------------------------------------*/
   /* IF FILES ARE POSSIBLY OPEN, _CLEANUP_PTR() WILL BE SETUP TO CLOSE */
   /* THEM.                                                             */
   /*-------------------------------------------------------------------*/
   if (_cleanup_ptr)  (*_cleanup_ptr)();

   /*-------------------------------------------------------------------*/
   /* SET C$$EXIT LABEL SO THE DEBUGGER KNOWS WHEN THE C++ PROGRAM HAS  */
   /* COMPLETED.  THIS CAN BE REMOVED IF THE DEBUGGER IS NOT USED.      */
   /*-------------------------------------------------------------------*/
   asm("        .global C$$EXIT");
   asm("C$$EXIT: nop");

   for (;;);   /* CURRENTLY, THIS SPINS FOREVER */
}

/****************************************************************************/
/* ATEXIT - ATTEMPT TO REGISTER A FUNCTION FOR CALLING AT PROGRAM END       */
/****************************************************************************/
int atexit(void (*fun)())
{
   if (at_exit_count >= MAX_FUN) return 1;
   at_exit_fun[at_exit_count++] = fun;
   return 0;
}

/****************************************************************************/
/* ABORT - ABNORMAL PROGRAM TERMINATION.  CURRENTLY JUST HALTS EXECUTION.   */
/****************************************************************************/
void abort(void)
{
   for (;;);   /* SPINS FOREVER */
}
