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
/*									   	 									*/
/* File Name: API.H							    							*/
/* 									    									*/
/* File Description: API is the American Patroleum Institute unit of        */
/* radioactivity used for measuring natural gamma rays in the ground.		*/
/*									    									*/
/****************************************************************************/

#ifndef _API
#define _API

#ifdef API_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

_EXTERN void API_VCF(FLOW_COMP* f, float* VCFw, float* VCFo);
_EXTERN double API_15C_PT(const int fcidx, const double r, int* k_set);
_EXTERN double API_60F_PT(const int fcidx, const double r, int* k_set);
_EXTERN double API_PT_ST(const int fcidx, const double r, const BOOL F60, const BOOL RET_VCF);
_EXTERN double API_to_kgm3(const double r);
_EXTERN double kgm3_to_API(const double r);
_EXTERN void API_STATUS(const int fcidx, const BOOL type);

#define API_error_num	-99.0

#undef _EXTERN
#undef API_H
#endif
