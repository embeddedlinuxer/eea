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
/* File Name:  ERRORS.H						    							*/
/* 									    									*/
/* File Description:  This header file has no C file accompanying it.  It   */
/* only defines error vectors, error variables and an error string.  It     */
/* mostly is used to define the errors that may occur in the analyzer.		*/
/*									    									*/
/****************************************************************************/

#ifndef _ERRORS
#define _ERRORS

#ifdef ERRORS_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#pragma DATA_SECTION(REG_DIAG,"CFG")
_EXTERN VAR REG_DIAG[5];
_EXTERN int DIAG_TEMP[2];
_EXTERN int DIAGNOSTICS[2];
#pragma DATA_SECTION(DIAGNOSTICS_MASK,"CFG")
_EXTERN int DIAGNOSTICS_MASK[2];
_EXTERN int DIAGNOSTICS_MSG_CODE;
_EXTERN int DIAGNOSTICS_ERROR_CODE;
_EXTERN char E_STRING[101];
#pragma DATA_SECTION(DIO_ERROR,"CFG")
_EXTERN COIL DIO_ERROR;
#pragma DATA_SECTION(DIO_ALARM,"CFG")
_EXTERN COIL DIO_ALARM;

/* Error - 1st digit */
#define		ERROR_NONE				0x0000
#define		ERROR_MEMORY			0x0001
#define		ERROR_EXEC_FAIL			0x0002
#define		ERROR_TMR_FAIL			0x0004
#define		ERROR_FLASH_MEMORY		0x0008

/* Error - 2nd digit */
#define		ERROR_FLASH_WPROT		0x0010
#define		ERROR_VAR_BOUNDARY		0x0020
#define		ERROR_VAR_UNIT			0x0040
#define		ERROR_INTERNAL_MEMORY	0x0080

/* Error - 3rd digit */
#define		ERROR_FREQ_UNDERRANGE	0x0100
#define		ERROR_FREQ_OVERRANGE	0x0200
#define		ERROR_T_UNDERRANGE		0x0400
#define		ERROR_T_OVERRANGE		0x0800

/* Error - 4th digit */
#define		ERROR_WC_UNDERRANGE		0x1000
#define		ERROR_WC_OVERRANGE		0x2000
#define		ERROR_RESET				0x4000
#define		ERROR_RESET_BASICS		0x8000

/* Error2 - 1st digit */
#define		ERROR2_TIME_RESET		0x0001
#define		ERROR2_FC1_FAIL			0x0002
#define		ERROR2_FC2_FAIL			0x0004
#define		ERROR2_FC3_FAIL			0x0008

/* Error2 - 2nd digit */
#define		ERROR2_SAMPLE_ERROR		0x0010
#define		ERROR2_FC1_EXTRAPOLATE	0x0020
#define		ERROR2_FC2_EXTRAPOLATE	0x0040
#define		ERROR2_FC3_EXTRAPOLATE	0x0080

/* Error2 - 3rd digit */
#define		ERROR2_FLASH_MEMORY_LOG	0x0100

/* 5 digit hex errors */
#define		M_ERROR_NONE				0  /* 00000 */
#define		M_ERROR_MEMORY				1
#define		M_ERROR_EXEC_FAIL			2
#define		M_ERROR_TMR_FAIL			3
#define		M_ERROR_FLASH_MEMORY		4
#define		M_ERROR_FLASH_WPROT			5
#define		M_ERROR_VAR_BOUNDARY		6
#define		M_ERROR_VAR_UNIT			7
#define		M_ERROR_INTERNAL_MEMORY		8
#define		M_ERROR_FREQ_UNDERRANGE		9
#define		M_ERROR_FREQ_OVERRANGE		10
#define		M_ERROR_T_UNDERRANGE		11
#define		M_ERROR_T_OVERRANGE			12
#define		M_ERROR_WC_UNDERRANGE		13
#define		M_ERROR_WC_OVERRANGE		14
#define		M_ERROR_RESET				15
#define		M_ERROR_RESET_BASICS		16 /* 10000 */

/* 6 digit hex errors */
#define		E_ERROR_NONE						0 /* 0000 */
#define		E_ERROR_FREQ						1
#define		E_ERROR_TEMP_USER_OUT_OF_RANGE		4
#define		E_ERROR_SCALING_ERROR				5
#define		E_ERROR_WATERCUT_OVER				6
#define		E_ERROR_FLASH_FAIL					8
#define		E_ERROR_INTRAM_FAIL					9
#define		E_ERROR_EXTRAM_FAIL					10
#define		E_ERROR_WATERCUT_UNDERRANGE			11
#define		E_ERROR_CURRENT_LOOP_ERROR			15 /* 1111 */

#define		E_ERROR_FLASH_FAIL_RESET_BASICS		16 /* 10000 */
#define		E_ERROR_WATERCUT_OVERRANGE			19
#define		E_ERROR_RP_THRESH					20
#define		E_ERROR_SALINITY_TIME				21
#define		E_ERROR_SALINITY_CAL_OVERRANGE		22
#define		E_ERROR_SALINITY_CAL_UNDERRANGE		23
#define		E_ERROR_SALINITY_CAL_NOT_WATER_CONTINUOUS	24
#define		E_ERROR_TEMPERATURE_UNDERRANGE		25
#define		E_ERROR_TEMPERATURE_OVERRANGE		26
#define		E_ERROR_PHASE_LOGIC					28 /* 11100*/

#define		E_ERROR_OIL_CAL_NOT_OIL_CONTINUOUS	34 /* 100010 */
#define		E_ERROR_TIME_RESET					35
#define		E_ERROR_WATERCUT_INVALID			50 /* 110010 */

#undef _EXTERN
#undef ERRORS_H
#endif
