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
/* File Name: GLBLS.H						    							*/
/* 									    									*/
/* File Description:  This file handles all global variables and anything	*/
/* that is meant to be global.  Also includes some initialization           */
/* information such as version number, copyright information and globals    */
/* attributes of the analyzer such as how many UARTs there are.  It's the   */
/* main file to include as well as it has all the include statements.  The  */
/* description may seem vague and is not completely well understood.  This  */
/* file will be updated as more information becomes available.  Any variable*/
/* that is global is defined here.                                          */
/*                                                                          */
/* Structs:                                                                 */
/* CAPDATA 			- used by the flow computer to store captured data      */
/* CAPRECORD 		- captured record                                       */
/* CCMRECORD 		- CCM record                                            */
/* BOARD 			- system board ADT                                      */
/* RELAYDATA 		- Relay Struct                                          */
/* CORIOLIS 		- Used by the MicroMotions                              */
/* PRESSURE 		- Pressure ADT                                          */
/* TMPT 			- Temperature ADT                                       */
/* FLOW_COMP 		- Flow Computer (the main brain of the program) ADT     */
/* ALYESKA_STRUCT 	- Alyeska ADT                                           */
/* HS_STRUCT 		- Heuristic Salinity(R) ADT - this is important			*/
/*									    									*/
/****************************************************************************/

#ifndef _GLBLS
#define _GLBLS

/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
///
/// V6.15.00 | May-14-2019 | applied dual curves all the time.
///                          changed VT_SELECT[i] oscillator access sequence from 0,1,2,3 to 0,2,1,3.
/// V6.15.01 | May-16-2019 | Fixed incorrect HART enabling sequence in STR_Anlyzer_Info[] array 
/// V6.15.02 | Jul-11-2019 | Fixed. Incorrect max_addr was set on ports other than port 0 in HART_5.
/// V6.15.03 | Sep-19-2019 | Fixed. Bug 64 - Maximum number limit on FC Accumulator
/// V6.15.04 | Oct-28-2019 | Fixed. Bug 71 - Liquid valve not fully open when over pressure
/// V6.15.05 | Jan-08-2020 | Fixed. Bug 69 - Analog Output doesn't output density signal
/// V6.15.06 | May-05-2020 | Fixed. Bug 86 - Add COILs for RELAY1_REVERT AND RELAY2_REVERT
/// V6.15.07 | OCT-09-2020 | Fixed. Bug xx - Logging problems fixed 
/// V6.15.08 | FEB-22-2021 | Fixed. Bug 103 - MSVE command broken for the Force Phase screen
///                          Fixed. Bug 104 - Incorrect Data Capturing in USB Data Logging
///                          Fixed. Bug 105 - Incorrect data logging array index
///
/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

#define FIRMWARE_VERSION	 			615
#define FIRMWARE_SUBVERSION				8

/*
	SUBVERSION CHANGES: ('->' arrow denotes partially non-cumulative release, i.e. a separate branch)
		v11 [10/21/2015] - PID algorithm overhauled. Boxcar length displayed in minutes (approx.)
		v12 [11/2/2015]  - Changed HART revision number back to '1'
		v13 [11/16/2015] - Bug fix: boxcar_expire_val is now stored in NON-VOLATILE memory (was causing re-profiling bug)
		v14 [01/08/2016] - Bug fix: AI stream select -> rounding error, double being typecast as an int for use as an array index
		v15 [02/02/2016] - Bug fix: HSALT temperature trigger wasn't clearing fmin. It now resets to 99.9% WC (as intended)
						   Bug fix: LOWCUTS and MIDCUTS were not factoring in User Temperature Adjust when selecting temperature curves
						   Change: i_TEMP (scaled value for plotting) now uses USER temperature
		v16 [02/24/2016] - Removed MENU_OIL_CALC_MODE menu at Enrique's request
						   Added a EXTENDED_FW_VERSION_ENABLE initialization to main.c
		v17 [02/02/2016] - Bug fix: EXTENDED_FW_VERSION_ENABLE was being stored in volatile memory, causing an error on the Info screen
							(note: in v16 the variable was initialized in Main at startup, but this apparently did not solve the problem)
		v18	[04/28/2016] - Bug fix: Stream table was not being updated with Force Phase values. The firmware does not execute COIL vector 
							functions unless the change happens via Modbus or HART. Stream table is now manually updated.
		v19 [06/21/2016] - Bug fix: PPM density adjust value was being factored into watercut_raw, breaking the oil cal
		v20 [07/14/2016] - Bug fix: Garbled LCD intialization message due to "RUSS" variable not yet intialized in MAIN.C
							Note:	For a good few moments the screen will only display "Initializing Data..." while all
									the config data is loaded from flash to RAM. After this will be the familiar intro
									in the appropriate language.
		v21 [09/16/2016] - boxcar_expire_val and boxcar_expire_val_minutes were not being updated and stored properly
							Added an array stream_boxcar_expire_minutes[] to avoid having to reconvert (erroneously) from stream_boxcar_expire[]
		v22 [09/16/2016] - Added LCD menu for USB flash drive logging. Currently it takes several moments to transition from 
							"enabled" to "detected" and "mounted". Must investigate. [This is due to the initialization being tied
							to the logging period, which could be problematic. Needs revision.]
		v23 [01/30/2017] - Fixed bug with LCD menu that was causing freezes and preventing USB logging from being re-enabled. Problem seemed to 
							stem from how the TMR packet was removed from queue.	
		v24 [02/03/2017] - RUSSIAN TRANSLATION DISABLED! BOOT LOADER IS NOW v1.10!
							Bug fix: bootloader on lowcuts was freezing/displaying random characters.
							In addition to disabling russian strings via Print_To_LCD(), also added a declaration to
							to MENU.h for Print_To_LCD() which should have been there and may have caused some of the problems.
							Also disabled the Russian ">>>>" animation on the boot loader screens.
		v25 [02/03/2017] - Fixed a bug that, with some comm boards, would cause the LCD to lock up on a HARD reboot
		v26 [02/09/2017] - Bug fix: USB Log setting wasn't being saved to config. Added call to Update_Flags_Goto_Next_Menu()
		v28 [02/13/2017] - Logging period is now adjustable (minimum 2 seconds). Added LCD menu to adjust period.
		v30 [02/24/2017] - Minor changes: log period limits -> min=2sec, max=120sec; Added linefeed before log header;
							Added log period to float table; removed IrDA menus; Removed excess AO variables & created
							new table "HART_DVOUTPUT_Table"
		v31 [03/22/2017] - Bug fix: Density Adjust menu page "MENU_Density_ADJ" did not assign a title string to MSVE.str[3], and thus
							was displaying whatever data was previously stored in MSVE.str[3]
		v32 [10/27/2017] - Added Fullcuts to the list of modes that talk to micromotion meters. This fix was added to the 6.12 branch
							on [9/14/2016] but was overlooked for 6.13 until now. (This kind of problem is why we now use Git!)		
		v33 [11/01/2017] - Bug fix: Set_Diag_Status() was taking the log of a negative integer to calculate DIAGNOSTICS_MSG_CODE. 
							I guess someone forgot how a signed integer is represented.
		v34 [11/29/2017] - Entering RESEARCH MODE now requires that we flip the dipswitch DIPSW1 to logic 1. This is to prevent it
							"accidentally" entering this mode when a customer doesn't know how to properly manage their busy Modbus bus.
							Setting DIPSW1 is now also necessary to process mb_cmd_pdi_unlock (PDI custom modbus command)
							!!NOTE: SETTING DIPSW1 ALSO RESETS SERIAL COMM TO DEFAULT SETTINGS!!
		v35 [02/15/2018] - HART_5() was wreaking havoc on other ports due to DIO_HART_5.vect. Function now always executes on port 0 (HART)
		v36 [05/15/2018] - HART is now disabled unless the unit has the proper model code
*/

#ifdef GLBLS_H
const char copyright[]={"©2018 Phase Dynamics, Inc.              "}; //R87 
const char    credit[]={"Firmware by PDI"};	//R373 (not used)
#endif

#ifndef GLBLS_H
extern const char* copyright;
extern const char* credit;
#endif

#define UART_MAX 8	/* maximum number of UARTs */
#define CORMAX 5	/* maximum number of coriolis meters */  /*change from 4 to 5 for MM initial Slave 1 RS*/
#define FCMAX 3		/* maximum number of flow computers */
#define VTMAX 4		/* maximum number of oscillator profiles */
#define SMAX 60		/* maximum number of streams */

#include <float.h>
#include <format.h>
#include <string.h>     
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include "ETC.H"
#include "PERIPH.H"
#include "LIST.H"
#include "VARIABLE.H"
#include "BUFFER.H"
#include "UNITS.H"
#include "TIMER.H"
#include "I2C.H"
#include "ERRORS.H"
#include "SERIAL.H"
#include "ADC.H"
#include "DAC.H"
#include "EXECUTE.H"
#include "FLASH.H"
#include "LOG.H"
#include "DEMO.H"
#include "SELFTEST.H" 

#include "MENU.H"
#include "FLOAT1.H"

#ifdef GLBLS_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#define maxint 30000
#define minint 0

_EXTERN unsigned int CLOCK;
_EXTERN BOOL LED_GREEN;
_EXTERN BOOL OSWITCH;
_EXTERN void c_int00(void);

#define NaN 0x7FA00000

/* ANALYZER MODE TYPES */
#define SUB_LOW				0
#define SUB_FULL			1
#define SUB_ANALYZER		2
#define SUB_MID				3
#define SUB_HIGH			4
#define SUB_GAS_ANALYZER	5
#define SUB_CCM				6
#define SUB_DUMMY			255
#define SUB_UNDEFINED		254 

#define SCREEN_LOGO				1
#define SCREEN_WPROT			497
#define SCREEN_CREDITS			498
#define SCREEN_NODE				10
#define SCREEN_ERRORS			499
#define SCREEN_LC_PV			100
#define SCREEN_FC_PV			200
#define SCREEN_MC_PV			300
#define SCREEN_HC_PV			400
#define SCREEN_CCM_PV			500
#define SCREEN_ANA_PV			50
#define SCREEN_GAS_PV			60
#define SCREEN_RA_NOTIFY		1300

#define CAPTURE_SAMPLES			5122.0

#define ALFAT_NO_LOG			(81)
#define ALFAT_CONTINUE_LOG		(82)
#define ALFAT_WAIT_LOG			(83)
#define ALFAT_HANDLE_1			(1)
#define ALFAT_AUTO_LENGTH 		(-1)
#define ALFAT_LINEFEED			(1)
#define ALFAT_NO_LF				(0)



_EXTERN unsigned int ESN_USER[5];
_EXTERN unsigned int ESN_MFGR[5];

#pragma DATA_SECTION(Oil_Phase_Maximum,"CFG")
_EXTERN VAR Oil_Phase_Maximum;
#pragma DATA_SECTION(Water_Phase_Minimum,"CFG")
_EXTERN VAR Water_Phase_Minimum;

#pragma DATA_SECTION(Oil_Phase_Filter,"CFG")
_EXTERN VAR Oil_Phase_Filter;
#pragma DATA_SECTION(Water_Phase_Filter,"CFG")
_EXTERN VAR Water_Phase_Filter;

#pragma DATA_SECTION(Num_Oil_Samples,"CFG")
_EXTERN VAR Num_Oil_Samples;
#pragma DATA_SECTION(Num_Water_Samples,"CFG")
_EXTERN VAR Num_Water_Samples;


typedef struct 	{
					int		i;
					float	Watercut;
					float	Temperature;
					float	Salinity;
					float	Frequency_Oil;
					float	Frequency_Water;
					float	RefPower_Oil;
					float	RefPower_Water;
					float	Dadj;
					int		Time_HH;
					int		Time_MM;
					int		Time_MONTH;
					int		Time_DAY;
					int		Time_DAY_OF_WEEK;
					int		Time_YEAR;
	    		} CAPDATA;

typedef struct 	{
					float	Watercut[2];
					float	Temperature[2];
					float	Salinity[2];
					float	Frequency_Oil[2];
					float	Frequency_Water[2];
					float	RefPower_Oil[2];
					float	RefPower_Water[2];
					float	Dadj[2];
					int		Time_MONTH_DAY_HH_MM[2];
					int		CLRSTAT_Time_YEAR[2];
	    		} CAPRECORD;

#pragma DATA_SECTION(DIO_RESEARCH_MODE,"CFG")
_EXTERN COIL DIO_RESEARCH_MODE;
_EXTERN BOOL RESEARCH_FORCE_MODE;

#pragma DATA_SECTION(DIO_uP_GET,"CFG")
_EXTERN COIL DIO_uP_GET;
#pragma DATA_SECTION(DIO_uP_SET,"CFG")
_EXTERN COIL DIO_uP_SET;

#pragma DATA_SECTION(DIO_COMM_GET,"CFG")
_EXTERN COIL DIO_COMM_GET;
#pragma DATA_SECTION(DIO_COMM_SET,"CFG")
_EXTERN COIL DIO_COMM_SET;

#pragma DATA_SECTION(DIO_ANALYZER_GET,"CFG")
_EXTERN COIL DIO_ANALYZER_GET;
#pragma DATA_SECTION(DIO_ANALYZER_SET,"CFG")
_EXTERN COIL DIO_ANALYZER_SET;

#pragma DATA_SECTION(DIO_POWER_GET,"CFG")
_EXTERN COIL DIO_POWER_GET;
#pragma DATA_SECTION(DIO_POWER_SET,"CFG")
_EXTERN COIL DIO_POWER_SET;

#pragma DATA_SECTION(DIO_ANALOGIO_GET,"CFG")
_EXTERN COIL DIO_ANALOGIO_GET;
#pragma DATA_SECTION(DIO_ANALOGIO_SET,"CFG")
_EXTERN COIL DIO_ANALOGIO_SET;

#pragma DATA_SECTION(DIO_DISPLAY_GET,"CFG")
_EXTERN COIL DIO_DISPLAY_GET;
#pragma DATA_SECTION(DIO_DISPLAY_SET,"CFG")
_EXTERN COIL DIO_DISPLAY_SET;

#pragma DATA_SECTION(DIO_MOTHERBOARD_GET,"CFG")
_EXTERN COIL DIO_MOTHERBOARD_GET;
#pragma DATA_SECTION(DIO_MOTHERBOARD_SET,"CFG")
_EXTERN COIL DIO_MOTHERBOARD_SET;

#pragma DATA_SECTION(DIO_BEEP,"CFG")
_EXTERN COIL DIO_BEEP;

#pragma DATA_SECTION(DIO_PV_PERCMASS,"CFG")
_EXTERN int	DIO_PV_PERCMASS;

_EXTERN REGVECT VAR_SELECT_DV;
_EXTERN REGVECT VAR_SELECT_DVIN;
_EXTERN int STR_VAR_DESC[10];
_EXTERN int STR_VAR_UNIT[4];
_EXTERN float VAR_INT_SCALE;
_EXTERN float VAR_LONGINT_SCALE;

#pragma DATA_SECTION(LOG_VAR_SEL,"CFG")
_EXTERN int LOG_VAR_SEL[30];
_EXTERN int i_LV[30];
_EXTERN int il_LV[30];
_EXTERN float f_LV[30];

#pragma DATA_SECTION(AMETEK,"CFG")
_EXTERN int AMETEK;

#pragma DATA_SECTION(Cap_Records,"CFG")
_EXTERN CAPRECORD Cap_Records[SMAX];

#pragma DATA_SECTION(Cap_Oil,"CFG")
_EXTERN CAPDATA Cap_Oil;
#pragma DATA_SECTION(Cap_Water,"CFG")
_EXTERN CAPDATA Cap_Water;

#pragma DATA_SECTION(DIO_Autosave_on_pair_boundary,"CFG")
_EXTERN int   DIO_Autosave_on_pair_boundary;

#pragma DATA_SECTION(REG_osc_settle_short,"CFG")
_EXTERN VAR REG_osc_settle_short;
#pragma DATA_SECTION(REG_osc_settle_long,"CFG")
_EXTERN VAR REG_osc_settle_long;

#pragma DATA_SECTION(DIO_PORT_DEFAULTS,"CFG")
_EXTERN COIL DIO_PORT_DEFAULTS;
#pragma DATA_SECTION(DATA_CHANGE,"CFG")
_EXTERN COIL DATA_CHANGE;
#pragma DATA_SECTION(REG_alarm_relay_delay,"CFG")
_EXTERN VAR REG_alarm_relay_delay;
#pragma DATA_SECTION(REG_flow_meter_type,"CFG")
_EXTERN VAR REG_flow_meter_type;
#pragma DATA_SECTION(REG_flow_volume_unit,"CFG")
_EXTERN VAR REG_flow_volume_unit;
#pragma DATA_SECTION(REG_flow_rate_time_unit,"CFG")
_EXTERN VAR REG_flow_rate_time_unit;
#pragma DATA_SECTION(REG_count_per_flow_unit,"CFG")
_EXTERN VAR REG_count_per_flow_unit;
#pragma DATA_SECTION(REG_20mA_max_flow_rate_input,"CFG")
_EXTERN VAR REG_20mA_max_flow_rate_input;
#pragma DATA_SECTION(REG_accumulator_display_format,"CFG")
_EXTERN VAR REG_accumulator_display_format;
#pragma DATA_SECTION(REG_HART_response_delay,"CFG")
_EXTERN VAR REG_HART_response_delay;
#pragma DATA_SECTION(REG_HART_num_preamble,"CFG")
_EXTERN VAR REG_HART_num_preamble;
#pragma DATA_SECTION(REG_reference_currrent_mode,"CFG")
_EXTERN VAR REG_reference_currrent_mode;
#pragma DATA_SECTION(REG_num_oil_cal_samples,"CFG")
_EXTERN VAR REG_num_oil_cal_samples;
#pragma DATA_SECTION(REG_num_water_cal_samples,"CFG")
_EXTERN VAR REG_num_water_cal_samples;
#pragma DATA_SECTION(REG_density_correction_mode,"CFG")
_EXTERN VAR REG_density_correction_mode;
#pragma DATA_SECTION(REG_port1_parity,"CFG")
_EXTERN VAR REG_port1_parity;
#pragma DATA_SECTION(REG_port1_stop_bits,"CFG")
_EXTERN VAR REG_port1_stop_bits;
#pragma DATA_SECTION(REG_port1_Baud_Rate,"CFG")
_EXTERN VAR REG_port1_Baud_Rate;

_EXTERN unsigned int SA;
#pragma DATA_SECTION(U_TEMP_ASCII,"CFG")
_EXTERN int U_TEMP_ASCII;
#pragma DATA_SECTION(GATE_TIME,"CFG")
_EXTERN float GATE_TIME;
#pragma DATA_SECTION(PRESCALE,"CFG")
_EXTERN float PRESCALE;
#pragma DATA_SECTION(EXTUNE,"CFG")
_EXTERN BOOL EXTUNE;
#pragma DATA_SECTION(IRDA_ENABLE,"CFG")
_EXTERN BOOL IRDA_ENABLE;
#pragma DATA_SECTION(DIO_HEATER_DISABLE,"CFG")
_EXTERN COIL DIO_HEATER_DISABLE;
_EXTERN BFR PV_SAMPLES;
_EXTERN BFR PV_SAMPLES_24hr;
_EXTERN BFR PV_SAMPLES_5min;
_EXTERN int READ_ADC_INPUTS;
_EXTERN int VT_SELECT;
_EXTERN BOOL INITIALIZING;
_EXTERN BOOL MEM;
_EXTERN BOOL DIPSWITCH[2];
_EXTERN int DUMMY;
_EXTERN int ZERO_INPUT;
_EXTERN BOOL CHANGE;
#pragma DATA_SECTION(DIO_DUMMY,"CFG")
_EXTERN COIL DIO_DUMMY;
_EXTERN REGVECT IDEC_SA[13];
_EXTERN int IDEC_PORT;

_EXTERN int i_FREQ_O;
_EXTERN int i_IP_O;
_EXTERN int i_RP_O;
_EXTERN int i_FREQ_W;
_EXTERN int i_IP_W;
_EXTERN int i_RP_W;
_EXTERN int i_TEMP;
_EXTERN int i_WC;

_EXTERN float FREQ_O;
_EXTERN float IP_O;
_EXTERN float RP_O;
_EXTERN float IP_RP_O;
_EXTERN float DB_IP_RP_O;
_EXTERN float FREQ_W;
_EXTERN float IP_W;
_EXTERN float RP_W;
_EXTERN float IP_RP_W;
_EXTERN float DB_IP_RP_W;

//_EXTERN long double global_delta_time;

_EXTERN unsigned int HW_VER;




#pragma DATA_SECTION(DCM_PORT,"CFG")
_EXTERN REGVECT DCM_PORT;
#pragma DATA_SECTION(Density_Correction_Mode,"CFG")
_EXTERN REGVECT Density_Correction_Mode;
#pragma DATA_SECTION(OIL_CALC_MODE,"CFG")
_EXTERN int OIL_CALC_MODE;
#pragma DATA_SECTION(OIL_CALC_MAX,"CFG")
_EXTERN float OIL_CALC_MAX[2];
#pragma DATA_SECTION(OIL_CALC_CUTOFF,"CFG")
_EXTERN float OIL_CALC_CUTOFF;

#pragma DATA_SECTION(REG_USER_DEFINE,"CFG")
_EXTERN int REG_USER_DEFINE[20];

typedef struct 	{
					int		Start_HH;
					int		Start_MM;
					int		Start_SS;
					int		Start_MONTH;
					int		Start_DAY;
					int		Start_YEAR;
					int		Stop_HH;
					int		Stop_MM;
					int		Stop_SS;
					int		Stop_MONTH;
					int		Stop_DAY;
					int		Stop_YEAR;
					float	stream;
					float	elapsed_s;
					float	duration;
					float	purge;
					float	gross_gas;
					float	gross_oil;
					float	gross_water;
					float	gross_total;
					float	gas24;
					float	oil24;
					float	water24;
					float	total24;
					float	watercut;
	    		} CCMRECORD;

_EXTERN CCMRECORD CCM_Record;
#define CCMrecmax 100	/* note: this should be no more than [log_n_max_per_sector*(log_n_sectors-1)] */
_EXTERN unsigned int CCMREC[CCMrecmax];
_EXTERN int i_CCM_Level_Setpoint;
_EXTERN int i_CCM_Level;
_EXTERN int i_CCM_Pressure_Setpoint;
_EXTERN int i_CCM_Pressure;
_EXTERN int i_CCM_Gas_Valve;
_EXTERN int i_CCM_Liquid_Valve;
_EXTERN int i_CCM_Flow;
_EXTERN int i_CCM_Flow_Oil;
_EXTERN int i_CCM_Flow_Water;
_EXTERN int i_CCM_Flow_Gas;
#pragma DATA_SECTION(CCM_2LIQ,"CFG")
_EXTERN	int CCM_2LIQ;
#pragma DATA_SECTION(CCM_2GAS,"CFG")
_EXTERN	int CCM_2GAS;
#pragma DATA_SECTION(CCM_CORRECT_LIQ_HEIGHT,"CFG")
_EXTERN	int CCM_CORRECT_LIQ_HEIGHT;
#pragma DATA_SECTION(CCM_CORRECT_GAS_TO_STP,"CFG")
_EXTERN	int CCM_CORRECT_GAS_TO_STP;
#pragma DATA_SECTION(CCM_GAS_MASS,"CFG")
_EXTERN	int CCM_GAS_MASS;
_EXTERN	int CCM_GAS_CNT;
_EXTERN	int CCM_CNT;
#pragma DATA_SECTION(EXT_ANALOG_OUT,"CFG")
_EXTERN int EXT_ANALOG_OUT;
_EXTERN struct tm CCM_TIME_START;
_EXTERN struct tm CCM_TIME_STOP;
_EXTERN struct tm CCM_TIME_REMAINING;
_EXTERN struct tm CCM_TIME_ELAPSED;
#pragma DATA_SECTION(CCM_VESSEL_LEVEL,"CFG")
_EXTERN VAR CCM_VESSEL_LEVEL[2];
#pragma DATA_SECTION(CCM_VESSEL_MAX_LEVEL,"CFG")
_EXTERN float CCM_VESSEL_MAX_LEVEL[2];
#pragma DATA_SECTION(CCM_VESSEL_PRESSURE,"CFG")
_EXTERN VAR CCM_VESSEL_PRESSURE[2];
#pragma DATA_SECTION(CCM_PURGE,"CFG")
_EXTERN float CCM_PURGE;
#pragma DATA_SECTION(CCM_DURATION,"CFG")
_EXTERN float CCM_DURATION;
_EXTERN float CCM_REMAINING;
_EXTERN float CCM_REMAINING_S;
_EXTERN float CCM_ELAPSED_S;
_EXTERN float CCM_24_GAS;
_EXTERN float CCM_24_OIL;
_EXTERN float CCM_24_WATER;
_EXTERN float CCM_24_TOTAL;  

_EXTERN long double ccm_gas_total_fract_part;
_EXTERN long double ccm_gas_total_whole_part;

#pragma DATA_SECTION(CCM_GAS_TEMPERATURE,"CFG")
_EXTERN VAR CCM_GAS_TEMPERATURE;   /*Gas Temperature RS*/

#pragma DATA_SECTION(CCM_GAS_DENSITY_INPUT,"CFG")
_EXTERN VAR CCM_GAS_DENSITY_INPUT;   /*Gas Density Input RS*/     

#pragma DATA_SECTION(CCM_GAS_DENSITY,"CFG")
_EXTERN VAR CCM_GAS_DENSITY;
#pragma DATA_SECTION(CCM_GAS_LIVE_DENSITY,"CFG")
_EXTERN VAR CCM_GAS_LIVE_DENSITY;
#pragma DATA_SECTION(CCM_GAS_TOTAL,"CFG")
_EXTERN VAR CCM_GAS_TOTAL;
#pragma DATA_SECTION(CCM_GAS_FLOW,"CFG")
_EXTERN VAR CCM_GAS_FLOW;
#pragma DATA_SECTION(CCM_SETPOINT_LEVEL,"CFG")
_EXTERN VAR CCM_SETPOINT_LEVEL[2];
#pragma DATA_SECTION(CCM_SETPOINT_PRESSURE,"CFG")
_EXTERN VAR CCM_SETPOINT_PRESSURE[2];
#pragma DATA_SECTION(CCM_SETPOINT_PRESSURE_MAX_OVER,"CFG")
_EXTERN VAR CCM_SETPOINT_PRESSURE_MAX_OVER;
#pragma DATA_SECTION(CCM_SETPOINT_P1,"CFG")
_EXTERN float CCM_SETPOINT_P1[SMAX];
#pragma DATA_SECTION(CCM_SETPOINT_L1,"CFG")
_EXTERN float CCM_SETPOINT_L1[SMAX];
#pragma DATA_SECTION(CCM_SETPOINT_P2,"CFG")
_EXTERN float CCM_SETPOINT_P2[SMAX];
#pragma DATA_SECTION(CCM_SETPOINT_L2,"CFG")
_EXTERN float CCM_SETPOINT_L2[SMAX];

#pragma DATA_SECTION(ANALYZER_MODE,"CFG")
_EXTERN REGVECT ANALYZER_MODE;
#pragma DATA_SECTION(DEMO,"CFG")
_EXTERN BOOL DEMO;
#pragma DATA_SECTION(DEMO_ANALYZER_MODE,"CFG")
_EXTERN VAR DEMO_ANALYZER_MODE;

#pragma DATA_SECTION(DIO_IDEC_ENABLE,"CFG")
_EXTERN int   DIO_IDEC_ENABLE;
#pragma DATA_SECTION(LOOP_ENABLED,"CFG")
_EXTERN COIL LOOP_ENABLED;
#pragma DATA_SECTION(OSC_OIL_CALC,"CFG")
_EXTERN int    OSC_OIL_CALC;
#pragma DATA_SECTION(OSC_WATER_CALC,"CFG")
_EXTERN int    OSC_WATER_CALC;

#pragma DATA_SECTION(TEMP_OIL_MAX,"CFG")
_EXTERN float TEMP_OIL_MAX;
#pragma DATA_SECTION(TEMPS_OIL,"CFG")
_EXTERN float TEMPS_OIL[10];
#pragma DATA_SECTION(COEFF_TEMP_OIL,"CFG")
_EXTERN float COEFF_TEMP_OIL[10][4];
#pragma DATA_SECTION(TEMP_WATER_MAX,"CFG")
_EXTERN float TEMP_WATER_MAX;
#pragma DATA_SECTION(SALT_MAX,"CFG")
_EXTERN float SALT_MAX;
#pragma DATA_SECTION(TEMPS_WATER,"CFG")
_EXTERN float TEMPS_WATER[15];
#pragma DATA_SECTION(SALTS,"CFG")
_EXTERN float SALTS[20];
#pragma DATA_SECTION(COEFF_SALT_TEMP_WATER,"CFG")
_EXTERN float COEFF_SALT_TEMP_WATER[20][15][4];
#pragma DATA_SECTION(SALINITY,"CFG")
_EXTERN float SALINITY[SMAX];
#pragma DATA_SECTION(OIL_ADJ,"CFG")
_EXTERN float OIL_ADJ[SMAX];
#pragma DATA_SECTION(WATER_ADJ,"CFG")
_EXTERN float WATER_ADJ[SMAX];
#pragma DATA_SECTION(WATER_ALARM_LO,"CFG")
_EXTERN float WATER_ALARM_LO[SMAX];
#pragma DATA_SECTION(WATER_ALARM_HI,"CFG")
_EXTERN float WATER_ALARM_HI[SMAX];
/*Add stream select for Hsalt and Gas routine (search SMAX) RS*/
#pragma DATA_SECTION(HSALT_ENABLE,"CFG")
_EXTERN float HSALT_ENABLE[SMAX];
#pragma DATA_SECTION(GAS_ROUTINE_ENABLE,"CFG")
_EXTERN float GAS_ROUTINE_ENABLE[SMAX];
#pragma DATA_SECTION(HSALT_MIN_FLOW,"CFG")
_EXTERN float HSALT_MIN_FLOW[SMAX];

#pragma DATA_SECTION(stream_bubble_length,"CFG")
_EXTERN float stream_bubble_length[SMAX];
#pragma DATA_SECTION(stream_pattern_length,"CFG")
_EXTERN float stream_pattern_length[SMAX];
#pragma DATA_SECTION(stream_boxcar_expire,"CFG")
_EXTERN float stream_boxcar_expire[SMAX];

#pragma DATA_SECTION(stream_boxcar_expire_minutes,"CFG")
_EXTERN int   stream_boxcar_expire_minutes[SMAX]; // THIS IS AN INTEGER ARRAY!

#pragma DATA_SECTION(stream_delta_temp,"CFG")
_EXTERN float stream_delta_temp[SMAX];



/*
#pragma DATA_SECTION(BOXCAR_ONLY_ENABLE,"CFG")
_EXTERN float BOXCAR_ONLY_ENABLE[SMAX];
#pragma DATA_SECTION(HSALT_SPAN,"CFG")
_EXTERN float HSALT_SPAN[SMAX];
*/

/*
#pragma DATA_SECTION(MIN_FREQ_BOXCAR,"CFG")
_EXTERN float MIN_FREQ_BOXCAR[SMAX];
#pragma DATA_SECTION(GAS_BUBBLE,"CFG")
_EXTERN float GAS_BUBBLE[SMAX];
#pragma DATA_SECTION(GAS_PATTERN,"CFG")
_EXTERN float GAS_PATTERN[SMAX];
*/





/*Add stream select for Hsalt and Gas routine (search SMAX) RS*/  
/*Add option to force phase on each stream RS*/
#pragma DATA_SECTION(OIL_PHASE_ONLY_ENABLE,"CFG")
_EXTERN float OIL_PHASE_ONLY_ENABLE[SMAX];
#pragma DATA_SECTION(WATER_PHASE_ONLY_ENABLE,"CFG")
_EXTERN float WATER_PHASE_ONLY_ENABLE[SMAX];
/*Add option to force phase on each stream RS*/  
/*Add PID to stream table RS*/
#pragma DATA_SECTION(LIQ_VALVE_P,"CFG")
_EXTERN float LIQ_VALVE_P[SMAX]; 
#pragma DATA_SECTION(LIQ_VALVE_I,"CFG")
_EXTERN float LIQ_VALVE_I[SMAX];
#pragma DATA_SECTION(LIQ_VALVE_D,"CFG")
_EXTERN float LIQ_VALVE_D[SMAX]; 
#pragma DATA_SECTION(GAS_VALVE_P,"CFG")
_EXTERN float GAS_VALVE_P[SMAX];
#pragma DATA_SECTION(GAS_VALVE_I,"CFG")
_EXTERN float GAS_VALVE_I[SMAX];
#pragma DATA_SECTION(GAS_VALVE_D,"CFG")
_EXTERN float GAS_VALVE_D[SMAX];
/*Add PID to stream table RS*/

#pragma DATA_SECTION(COEFF_C0,"CFG")
_EXTERN float COEFF_C0;
#pragma DATA_SECTION(COEFF_FA2,"CFG")
_EXTERN float COEFF_FA2;
#pragma DATA_SECTION(COEFF_FA1,"CFG")
_EXTERN float COEFF_FA1;
#pragma DATA_SECTION(COEFF_FB2,"CFG")
_EXTERN float COEFF_FB2;
#pragma DATA_SECTION(COEFF_FB1,"CFG")
_EXTERN float COEFF_FB1;
#pragma DATA_SECTION(COEFF_RPA2,"CFG")
_EXTERN float COEFF_RPA2;
#pragma DATA_SECTION(COEFF_RPA1,"CFG")
_EXTERN float COEFF_RPA1;
#pragma DATA_SECTION(COEFF_RPB2,"CFG")
_EXTERN float COEFF_RPB2;
#pragma DATA_SECTION(COEFF_RPB1,"CFG")
_EXTERN float COEFF_RPB1;
#pragma DATA_SECTION(COEFF_IPA2,"CFG")
_EXTERN float COEFF_IPA2;
#pragma DATA_SECTION(COEFF_IPA1,"CFG")
_EXTERN float COEFF_IPA1;
#pragma DATA_SECTION(COEFF_IPB2,"CFG")
_EXTERN float COEFF_IPB2;
#pragma DATA_SECTION(COEFF_IPB1,"CFG")
_EXTERN float COEFF_IPB1;
#pragma DATA_SECTION(COEFF_T2,"CFG")
_EXTERN float COEFF_T2;
#pragma DATA_SECTION(COEFF_T1,"CFG")
_EXTERN float COEFF_T1;  
/*PPM Analyzer with MicroMotion density RS*/
#pragma DATA_SECTION(COEFF_D2,"CFG")
_EXTERN float COEFF_D2;
#pragma DATA_SECTION(COEFF_D1,"CFG")
_EXTERN float COEFF_D1;
#pragma DATA_SECTION(STR_Analyzer_PV,"CFG")
_EXTERN int STR_Analyzer_PV[20/2];
#pragma DATA_SECTION(STR_Analyzer_UNIT,"CFG")
_EXTERN int STR_Analyzer_UNIT[8/2];

_EXTERN unsigned int		REG_TIME; 

_EXTERN BOOL SAMPLE_PENDING;

#pragma DATA_SECTION(RESET_COUNTER,"CFG")
_EXTERN int    RESET_COUNTER;

#pragma DATA_SECTION(FINAL_ASSY,"CFG")
_EXTERN int    FINAL_ASSY;

#pragma DATA_SECTION(SN_DC_BOARD,"CFG")
_EXTERN int    SN_DC_BOARD;
#pragma DATA_SECTION(SN_OSC,"CFG")
_EXTERN int    SN_OSC;
#pragma DATA_SECTION(SN_PIPE,"CFG")
_EXTERN int    SN_PIPE;

typedef struct 	{
					int		SNUM;
					int		ADDR;
					int		BNUM;
					int		REV;
					int		MONTH;
					int		DAY;
					int		YEAR;
	    		} BOARD;

#pragma DATA_SECTION(ANALYZER,"CFG")
_EXTERN BOARD	ANALYZER;
#pragma DATA_SECTION(ANALOGIO,"CFG")
_EXTERN BOARD	ANALOGIO;
#pragma DATA_SECTION(DISPLAY,"CFG")
_EXTERN BOARD	DISPLAY;
#pragma DATA_SECTION(uP,"CFG")
_EXTERN BOARD	uP;
#pragma DATA_SECTION(POWER,"CFG")
_EXTERN BOARD	POWER;
#pragma DATA_SECTION(COMM,"CFG")
_EXTERN BOARD	COMM;
#pragma DATA_SECTION(MOTHERBOARD,"CFG")
_EXTERN BOARD	MOTHERBOARD;

#pragma DATA_SECTION(NaN_val,"CFG")
_EXTERN float    NaN_val;
#pragma DATA_SECTION(NaN_val_int,"CFG")
_EXTERN int    NaN_val_int;
#pragma DATA_SECTION(NaN_val_flt,"CFG")
_EXTERN int    NaN_val_flt;

#pragma DATA_SECTION(NUM_PREAMBLE_SM,"CFG")
_EXTERN int    NUM_PREAMBLE_SM;
#pragma DATA_SECTION(NUM_PREAMBLE_MS,"CFG")
_EXTERN int    NUM_PREAMBLE_MS;

#pragma DATA_SECTION(DIO_CLEAR_PORT_COUNT,"CFG")
_EXTERN COIL DIO_CLEAR_PORT_COUNT[UART_MAX];
#pragma DATA_SECTION(DIO_SYSTEM_RESET,"CFG")
_EXTERN COIL DIO_SYSTEM_RESET;
#pragma DATA_SECTION(DIO_SYSTEM_RESTART,"CFG")
_EXTERN COIL DIO_SYSTEM_RESTART;
#pragma DATA_SECTION(DIO_BUILT_IN_TEST_ENABLE,"CFG")
_EXTERN COIL DIO_BUILT_IN_TEST_ENABLE;
#pragma DATA_SECTION(DIO_BUILT_IN_TEST,"CFG")
_EXTERN COIL DIO_BUILT_IN_TEST;
#pragma DATA_SECTION(DIO_TEMP_C,"CFG")
_EXTERN COIL DIO_TEMP_C;
#pragma DATA_SECTION(DIO_RESET_FACTORY_DEFAULTS,"CFG")
_EXTERN COIL DIO_RESET_FACTORY_DEFAULTS;
#pragma DATA_SECTION(DIO_RESTORE_USER_CONFIG,"CFG")
_EXTERN COIL DIO_RESTORE_USER_CONFIG;
#pragma DATA_SECTION(DIO_SAVE_USER_CONFIG,"CFG")
_EXTERN COIL DIO_SAVE_USER_CONFIG;
#pragma DATA_SECTION(DIO_SAVE_FACTORY_CONFIG,"CFG")
_EXTERN COIL DIO_SAVE_FACTORY_CONFIG;
#pragma DATA_SECTION(DIO_RESTORE_BASICS,"CFG")
_EXTERN COIL DIO_RESTORE_BASICS;

#pragma DATA_SECTION(DUMMY_COIL,"CFG")
_EXTERN COIL DUMMY_COIL; // used for compatibility until FC2 and FC3 are removed completely

#pragma DATA_SECTION(Density_D0,"CFG")
_EXTERN VAR Density_D0;
#pragma DATA_SECTION(Density_D1,"CFG")
_EXTERN VAR Density_D1; 
#pragma DATA_SECTION(Density_D2,"CFG")
_EXTERN VAR Density_D2; 				/*third order density correction RS*/
#pragma DATA_SECTION(Density_D3,"CFG")
_EXTERN VAR Density_D3;					/*third order density correction RS*/
#pragma DATA_SECTION(Density_Cal,"CFG")
_EXTERN VAR Density_Cal;
#pragma DATA_SECTION(Density_Cal_Unit,"CFG")
_EXTERN REGVECT Density_Cal_Unit;
#pragma DATA_SECTION(DensityCFD_D1,"CFG")
_EXTERN float DensityCFD_D1;
#pragma DATA_SECTION(DensityCFT_D1,"CFG")
_EXTERN float DensityCFT_D1;
#pragma DATA_SECTION(DensityCF_D0,"CFG")
_EXTERN float DensityCF_D0;

#pragma DATA_SECTION(DIO_CAP_OIL,"CFG")
_EXTERN COIL DIO_CAP_OIL;
#pragma DATA_SECTION(DIO_CAP_WATER,"CFG")
_EXTERN COIL DIO_CAP_WATER;
#pragma DATA_SECTION(DIO_CLEAR_COUNTERS,"CFG")
_EXTERN COIL DIO_CLEAR_COUNTERS;
#pragma DATA_SECTION(DIO_TOTALIZER_CONTROL,"CFG")
_EXTERN COIL DIO_TOTALIZER_CONTROL;
#pragma DATA_SECTION(DIO_CCM_START,"CFG")
_EXTERN COIL DIO_CCM_START;

/* new boxcar routine */
#pragma DATA_SECTION(DIO_MANUAL_RESET,"CFG")
_EXTERN COIL DIO_MANUAL_RESET;       
#pragma DATA_SECTION(DIO_TIME_RESET,"CFG")
_EXTERN COIL DIO_TIME_RESET;
#pragma DATA_SECTION(BOXCAR_RESET,"CFG")
_EXTERN BOOL BOXCAR_RESET;

//_EXTERN int BOXCAR_LENGTH;
//_EXTERN float BOXCAR[2000];			/* boxcar for frequency reset */

/*
_EXTERN long double MIN_HSALT_FREQ;
_EXTERN int BOXCAR_INDEX;
_EXTERN int CURSOR;
*/

/* new boxcar routine */

#pragma DATA_SECTION(REG_CCM_TEST_STAT,"CFG")        /*logging test status RS*/
_EXTERN VAR REG_CCM_TEST_STAT;                       /*logging test status RS*/ 

#pragma DATA_SECTION(DIO_CCM_PURGE_STAT,"CFG")
_EXTERN COIL DIO_CCM_PURGE_STAT; 

#pragma DATA_SECTION(REG_CCM_PURGE_STAT,"CFG")        /*logging purge status RS*/
_EXTERN VAR REG_CCM_PURGE_STAT;                       /*logging purge status RS*/  

#pragma DATA_SECTION(DIO_CCM_PURGE_TIME,"CFG")
_EXTERN COIL DIO_CCM_PURGE_TIME;
#pragma DATA_SECTION(DIO_AUX_FREQ_MODE,"CFG")
_EXTERN int  DIO_AUX_FREQ_MODE;
#pragma DATA_SECTION(DIO_PORT_IGNORE_DATA_EXCEPTION,"CFG")
_EXTERN int  DIO_PORT_IGNORE_DATA_EXCEPTION;
#pragma DATA_SECTION(DIO_HART_5,"CFG")
_EXTERN COIL  DIO_HART_5;

#pragma DATA_SECTION(SIM_VTUNE,"CFG")
_EXTERN float SIM_VTUNE[VTMAX];
#pragma DATA_SECTION(SIM_FREQ,"CFG")
_EXTERN float SIM_FREQ[VTMAX];
#pragma DATA_SECTION(SIM_VINC,"CFG")
_EXTERN float SIM_VINC[VTMAX];
#pragma DATA_SECTION(SIM_VREF,"CFG")
_EXTERN float SIM_VREF[VTMAX];
#pragma DATA_SECTION(SIM_TEMPERATURE_EXTERNAL,"CFG")
_EXTERN float SIM_TEMPERATURE_EXTERNAL;
#pragma DATA_SECTION(USE_COR0_TEMP,"CFG")
_EXTERN int USE_COR0_TEMP;
#pragma DATA_SECTION(TEMPERATURE_TRIM_T0,"CFG")
_EXTERN float TEMPERATURE_TRIM_T0;
#pragma DATA_SECTION(TEMPERATURE_TRIM_T1,"CFG")
_EXTERN float TEMPERATURE_TRIM_T1;
#pragma DATA_SECTION(RTD_GAIN,"CFG")
_EXTERN float RTD_GAIN;
#pragma DATA_SECTION(RTD_CURRENT,"CFG")
_EXTERN float RTD_CURRENT;
#pragma DATA_SECTION(RTD_CAL_LO_OHM,"CFG")
_EXTERN float RTD_CAL_LO_OHM;
#pragma DATA_SECTION(RTD_CAL_HI_OHM,"CFG")
_EXTERN float RTD_CAL_HI_OHM;
#pragma DATA_SECTION(RTD_CAL_LO_V,"CFG")
_EXTERN float RTD_CAL_LO_V;
#pragma DATA_SECTION(RTD_CAL_HI_V,"CFG")
_EXTERN float RTD_CAL_HI_V;
#pragma DATA_SECTION(RTD_CAL,"CFG")
_EXTERN COIL RTD_CAL;
_EXTERN float RTD_R;

#pragma DATA_SECTION(REG_DUMMY,"CFG")
_EXTERN VAR REG_DUMMY;
#pragma DATA_SECTION(REG_STREAM_SELECT,"CFG")
_EXTERN VAR REG_STREAM_SELECT;
#pragma DATA_SECTION(REG_WATERCUT_ALARM_LO,"CFG")
_EXTERN VAR REG_WATERCUT_ALARM_LO;
#pragma DATA_SECTION(REG_WATERCUT_ALARM_HI,"CFG")
_EXTERN VAR REG_WATERCUT_ALARM_HI;

_EXTERN float WC;     /*make WC global: float WC; for store last value when phase error RS*/

_EXTERN float REG_WATERCUT_RAW;
_EXTERN float REG_PV_AVG_24hr;
_EXTERN float REG_PV_AVG_5min;
_EXTERN float REG_PV_AVG_1sec;
_EXTERN int REG_PV_AVG_CNT;
#pragma DATA_SECTION(REG_WATERCUT,"CFG")
_EXTERN VAR REG_WATERCUT;

#pragma DATA_SECTION(REG_WATERCUT_DENSITY,"CFG")	/* Watercut by density BC */
_EXTERN VAR REG_WATERCUT_DENSITY;

#pragma DATA_SECTION(REG_NUM_SAMP,"CFG")
_EXTERN VAR REG_NUM_SAMP;
#pragma DATA_SECTION(REG_EM_PHASE_HOLD,"CFG")
_EXTERN VAR REG_EM_PHASE_HOLD;
_EXTERN long double TMP_VTUNE[VTMAX];
#pragma DATA_SECTION(REG_VINC,"CFG")
_EXTERN VAR REG_VINC[VTMAX];
_EXTERN long double TMP_VINC[VTMAX];
#pragma DATA_SECTION(REG_VREF,"CFG")
_EXTERN VAR REG_VREF[VTMAX];
_EXTERN long double TMP_VREF[VTMAX];
#pragma DATA_SECTION(REG_TEMPERATURE_USER,"CFG")
_EXTERN VAR REG_TEMPERATURE_USER;   
/*RS*/
#pragma DATA_SECTION(REG_TEMPERATURE_AVG,"CFG")
_EXTERN VAR REG_TEMPERATURE_AVG;

#pragma DATA_SECTION(REG_TEMPERATURE_USER_ADJUST,"CFG")
_EXTERN VAR REG_TEMPERATURE_USER_ADJUST;
#pragma DATA_SECTION(REG_TEMPERATURE_EXTERNAL,"CFG")
_EXTERN VAR REG_TEMPERATURE_EXTERNAL;
#pragma DATA_SECTION(REG_FREQ,"CFG")
_EXTERN VAR REG_FREQ[VTMAX];
#pragma DATA_SECTION(REG_FREQ_O,"CFG")
_EXTERN VAR REG_FREQ_O;
#pragma DATA_SECTION(REG_VINC_O,"CFG")
_EXTERN VAR REG_VINC_O;
#pragma DATA_SECTION(REG_VREF_O,"CFG")
_EXTERN VAR REG_VREF_O;
#pragma DATA_SECTION(REG_FREQ_W,"CFG")
_EXTERN VAR REG_FREQ_W;
#pragma DATA_SECTION(REG_VINC_W,"CFG")
_EXTERN VAR REG_VINC_W;
#pragma DATA_SECTION(REG_VREF_W,"CFG")
_EXTERN VAR REG_VREF_W;
_EXTERN long double	TMP_TEMP;    

_EXTERN long double	AVG_TEMP; /*AVG TEMP RS*/
_EXTERN long double		SUM_TEMP;   /*RS*/ 
_EXTERN unsigned int		N_TEMP;   /*RS*/  

#pragma DATA_SECTION(REG_PHASE_HOLD_CYCLES,"CFG")        /*phase hold over RS*/
_EXTERN VAR REG_PHASE_HOLD_CYCLES;                       /*phase hold over RS*/
_EXTERN unsigned int cycles;                 /*phase hold over RS*/
_EXTERN unsigned int previous_phase;         /*phase hold over RS*/
_EXTERN unsigned int phase;                  /*phase hold over RS*/
_EXTERN unsigned int phase_rollover_count;   /*phase hold over RS*/   

_EXTERN unsigned int N_WC;       /*average filter RS*/
_EXTERN float WC_SAMPLE[30];     /*average filter RS*/
_EXTERN float WC_SUM;            /*average filter RS*/    
#pragma DATA_SECTION(REG_WC_NUM_SAMPLES,"CFG")        /*average filter RS*/
_EXTERN VAR REG_WC_NUM_SAMPLES;                       /*average filter RS*/

/***disconnetion detect RS***/ 
_EXTERN unsigned int		PORT2_LIQ_TEMP; 
_EXTERN unsigned int		PORT2_GAS_TEMP;  
_EXTERN unsigned int		PORT3_TEMP;   
#pragma DATA_SECTION(MM_LIQ_fail,"CFG")
_EXTERN COIL MM_LIQ_fail;    
#pragma DATA_SECTION(MM_GAS_fail,"CFG")
_EXTERN COIL MM_GAS_fail;
#pragma DATA_SECTION(Rosemount_fail,"CFG")
_EXTERN COIL Rosemount_fail; 

#pragma DATA_SECTION(GAS_DENSITY_INPUT_ENABLED,"CFG")
_EXTERN int GAS_DENSITY_INPUT_ENABLED;            /*Gas Density Input RS*/ 

#pragma DATA_SECTION(RESET_AT_PURGE,"CFG")
_EXTERN int RESET_AT_PURGE;                     /*HSALT always run option RS*/ 

/*******Temperature & Freq statistics trigger Hsalt recalc*******/
_EXTERN unsigned int N_FREQ;
//#pragma DATA_SECTION(REG_FREQ_WINDOW,"CFG")        
//_EXTERN VAR REG_FREQ_WINDOW;  
#pragma DATA_SECTION(HSALT_FREQ_TRIGGER,"CFG")
_EXTERN COIL HSALT_FREQ_TRIGGER;   
#pragma DATA_SECTION(REG_FREQ_VARIANCE_RATIO,"CFG")        
_EXTERN VAR REG_FREQ_VARIANCE_RATIO;

_EXTERN float TEMP_SAMPLE;
_EXTERN float LAST_TEMP_RESET;
#pragma DATA_SECTION(REG_DELTA_TEMP,"CFG")        
_EXTERN VAR REG_DELTA_TEMP; 
#pragma DATA_SECTION(HSALT_TEMP_TRIGGER,"CFG")
_EXTERN COIL HSALT_TEMP_TRIGGER; 
/*******Temperature & Freq statistics trigger Hsalt recalc*******/  

#pragma DATA_SECTION(LOW_SALT_MODE,"CFG")
_EXTERN int LOW_SALT_MODE;                     /*Low salt mode freq threshold RS*/

_EXTERN VAR REG_LOWSALT_THRESHOLD;                   /*Low salt mode freq threshold RS*/    

#pragma DATA_SECTION(EXTENDED_FW_VERSION_ENABLE,"CFG")
_EXTERN VAR EXTENDED_FW_VERSION_ENABLE;  // extended fw version    


//Correction for gas carry under
#pragma DATA_SECTION(GAS_ENTRAINED,"CFG")
_EXTERN COIL GAS_ENTRAINED;  
/*
#pragma DATA_SECTION(REG_FREQ_WINDOW15,"CFG")        
_EXTERN VAR REG_FREQ_WINDOW15;
#pragma DATA_SECTION(REG_FREQ_WINDOW1,"CFG")        
_EXTERN VAR REG_FREQ_WINDOW1;
#pragma DATA_SECTION(REG_FREQ_WINDOW2,"CFG")        
_EXTERN VAR REG_FREQ_WINDOW2;  
#pragma DATA_SECTION(REG_FREQ_RESULT,"CFG")
_EXTERN VAR REG_FREQ_RESULT;  
#pragma DATA_SECTION(HSALT_GAS_TRIGGER,"CFG")
_EXTERN COIL HSALT_GAS_TRIGGER;
*/
#pragma DATA_SECTION(GAS_ENTRAINED_DENS_DETECT,"CFG")
_EXTERN COIL GAS_ENTRAINED_DENS_DETECT;   
/*
#pragma DATA_SECTION(BOXCAR_ONLY,"CFG")
_EXTERN COIL BOXCAR_ONLY;

_EXTERN float FREQ_SAMPLE15[2000];
_EXTERN float FREQ_15_MIN;
_EXTERN float FREQ_SUM1;
_EXTERN float FREQ_SUM2;
_EXTERN float FREQ_MEAN1;
_EXTERN float FREQ_MEAN2;
_EXTERN int HS_RESET_GAS;  
//Correction for gas carry under RS
*/

enum Pulse_Input_Type
{
	PULSE_GAS_TEMP 		= 1,
	PULSE_SALINITY 		= 2,
	PULSE_STREAM_SELECT = 3,
	PULSE_USER_TEMP 	= 4,
	PULSE_FC_WC 		= 5,
	PULSE_FC_TEMP 		= 6,
	PULSE_FC_TOTAL_FLOW = 7,
	PULSE_FC_PRESSURE 	= 8,
	PULSE_FC_DENSITY 	= 9,
	PULSE_FC_SALINITY 	= 10,
	PULSE_FC_OIL_DENSITY 		= 11,
	PULSE_FC_OIL_DENSITY_ST 	= 12,
	PULSE_FC_WATER_DENSITY 		= 13,
	PULSE_FC_WATER_DENSITY_ST 	= 14,
	PULSE_NONE					= 15
};


/// NEW GAS ROUTINE ///

#define BUBBLE_SIZE_MIN		2
#define BUBBLE_SIZE_MAX		30
#define PATTERN_SIZE_MIN	5
#define PATTERN_SIZE_MAX	90

#define BOXCAR_LIST_SIZE	4

#define BOXCAR_EXPIRE_MIN	22
#define BOXCAR_EXPIRE_MAX	1350

#define MINUTES_BOXCAR_EXPIRE_MIN	1
#define MINUTES_BOXCAR_EXPIRE_MAX	60

#pragma DATA_SECTION(boxcar_expire_val,"CFG")
_EXTERN VAR boxcar_expire_val;

#pragma DATA_SECTION(boxcar_expire_val_minutes,"CFG")
_EXTERN VAR boxcar_expire_val_minutes;

_EXTERN int TIME_COUNT;

_EXTERN BOOL gas_routine_reset_needed;
_EXTERN BOOL boxcar_reset_needed;

_EXTERN double water_freq_in;

typedef struct 
{
	float freq;		//water frequency
	int counter;	//counter tells us how old the frequency
					// is so we know when it expires
} Boxcar_Var;


_EXTERN Boxcar_Var boxcar_list[BOXCAR_LIST_SIZE];		//array holds the lowest unexpired frequency readings


/* [GAS ROUTINE] Bubble compensates for rapidly changing gas content */
typedef struct 
{
	float data[BUBBLE_SIZE_MAX];	//data array holding frequency values
	int head;						//Head pointer of bubble ring buffer
	int tail;						//Tail pointer of bubble ring buffer
	int length;						//Number of elements in the bubble array
	//int new_length;					
	float average;					//The current value of our moving average for bubble

} bubble_struct;


#pragma DATA_SECTION(bubble_new_length,"CFG")
_EXTERN VAR bubble_new_length;



_EXTERN bubble_struct bubble; //Ring buffer queue for bubble values


// [GAS ROUTINE] Pattern compensates for gas flow pattern
typedef struct
{
	float data[PATTERN_SIZE_MAX];	//data array holding frequency values
	int head;						//Head pointer of pattern ring buffer
	int tail;						//Tail pointer of pattern ring buffer
	int length;						//Number of elements in the pattern array
	//int new_length;				
	float average;					//The current value of our moving average for pattern

} pattern_struct;

#pragma DATA_SECTION(pattern_new_length,"CFG")
_EXTERN VAR pattern_new_length;

//#pragma DATA_SECTION(PATTERN,"CFG")
_EXTERN pattern_struct pattern; //Ring buffer queue for pattern values


/// END: NEW GAS ROUTINE ///


#pragma DATA_SECTION(RUSS,"CFG")        
_EXTERN BOOL RUSS;

#pragma DATA_SECTION(RUSS_TBL_LEN,"CFG") 
_EXTERN int RUSS_TBL_LEN;

/*Close Gas Valve when Level too high for Anadarko Bulk RS*/
#pragma DATA_SECTION(REG_BULK_LEVEL,"CFG")        
_EXTERN VAR REG_BULK_LEVEL;
#pragma DATA_SECTION(BULK_LEVEL_ENABLED,"CFG")
_EXTERN COIL BULK_LEVEL_ENABLED;
/*Close Gas Valve when Level too high for Anadarko Bulk RS*/   
/*Add option to force phase on each stream RS*/
#pragma DATA_SECTION(OIL_PHASE_ONLY,"CFG")
_EXTERN COIL OIL_PHASE_ONLY;
#pragma DATA_SECTION(WATER_PHASE_ONLY,"CFG")
_EXTERN COIL WATER_PHASE_ONLY;
/*Add option to force phase on each stream RS*/    

/*Add are you sure screens for LCD RS*/
_EXTERN BOOL TRIM_RTD_LO;
_EXTERN BOOL TRIM_RTD_HI;   

/*Add option to revert relay enable/disable - Bug#86 BY DKOH, MAY 5 2020*/
#pragma DATA_SECTION(RELAY1_REVERT,"CFG")
_EXTERN COIL RELAY1_REVERT;
#pragma DATA_SECTION(RELAY2_REVERT,"CFG")
_EXTERN COIL RELAY2_REVERT;

/*new salt cal routine manual stop RS*/   
#pragma DATA_SECTION(CAP_WATER_STOP,"CFG")
_EXTERN COIL CAP_WATER_STOP;   
#pragma DATA_SECTION(CAP_OIL_STOP,"CFG")
_EXTERN COIL CAP_OIL_STOP;

_EXTERN long double TMP_FREQ[VTMAX];

#pragma DATA_SECTION(REG_FREQ_OIL_LO,"CFG")
_EXTERN VAR REG_FREQ_OIL_LO;
#pragma DATA_SECTION(REG_FREQ_OIL_HI,"CFG")
_EXTERN VAR REG_FREQ_OIL_HI;
#pragma DATA_SECTION(REG_FREQ_WATER_LO,"CFG")
_EXTERN VAR REG_FREQ_WATER_LO;
#pragma DATA_SECTION(REG_FREQ_WATER_HI,"CFG")
_EXTERN VAR REG_FREQ_WATER_HI;
#pragma DATA_SECTION(REG_VTUNE_SET,"CFG")
_EXTERN VAR REG_VTUNE_SET[VTMAX];
#pragma DATA_SECTION(REG_VTUNE,"CFG")
_EXTERN VAR REG_VTUNE[VTMAX];
#pragma DATA_SECTION(REG_SALINITY,"CFG")
_EXTERN VAR REG_SALINITY;
#pragma DATA_SECTION(REG_OIL_ADJ,"CFG")
_EXTERN VAR REG_OIL_ADJ;
#pragma DATA_SECTION(REG_WATER_ADJ,"CFG")
_EXTERN VAR REG_WATER_ADJ;
#pragma DATA_SECTION(REG_WATER_INDEX,"CFG")
_EXTERN VAR REG_WATER_INDEX;
#pragma DATA_SECTION(REG_OIL_INDEX,"CFG")
_EXTERN VAR REG_OIL_INDEX;
#pragma DATA_SECTION(REG_EMULSION_PHASE,"CFG")
_EXTERN VAR REG_EMULSION_PHASE;
#pragma DATA_SECTION(REG_CAL_OIL,"CFG")
_EXTERN VAR REG_CAL_OIL;
#pragma DATA_SECTION(REG_CAL_WATER,"CFG")
_EXTERN VAR REG_CAL_WATER;
#pragma DATA_SECTION(OIL_P0,"CFG")
_EXTERN VAR OIL_P0;
#pragma DATA_SECTION(OIL_P1,"CFG")
_EXTERN VAR OIL_P1;


/**** Plot & Graph Limits ****/
#pragma DATA_SECTION(Plot_Limit_Water_Freq_Low,"CFG")
_EXTERN VAR Plot_Limit_Water_Freq_Low;
#pragma DATA_SECTION(Plot_Limit_Water_Freq_High,"CFG")
_EXTERN VAR Plot_Limit_Water_Freq_High;
#pragma DATA_SECTION(Plot_Limit_Oil_Freq_Low,"CFG")
_EXTERN VAR Plot_Limit_Oil_Freq_Low;
#pragma DATA_SECTION(Plot_Limit_Oil_Freq_High,"CFG")
_EXTERN VAR Plot_Limit_Oil_Freq_High;
#pragma DATA_SECTION(Plot_Limit_Temp_Low,"CFG")
_EXTERN VAR Plot_Limit_Temp_Low;
#pragma DATA_SECTION(Plot_Limit_Temp_High,"CFG")
_EXTERN VAR Plot_Limit_Temp_High;
#pragma DATA_SECTION(Plot_Limit_Watercut_Low,"CFG")
_EXTERN VAR  Plot_Limit_Watercut_Low;
#pragma DATA_SECTION(Plot_Limit_Watercut_High,"CFG")
_EXTERN VAR  Plot_Limit_Watercut_High;
#pragma DATA_SECTION(Plot_Limit_Oil_RP_Low,"CFG")
_EXTERN VAR Plot_Limit_Oil_RP_Low;
#pragma DATA_SECTION(Plot_Limit_Oil_RP_High,"CFG")
_EXTERN VAR Plot_Limit_Oil_RP_High;
#pragma DATA_SECTION(Plot_Limit_Water_RP_Low,"CFG")
_EXTERN VAR Plot_Limit_Water_RP_Low;
#pragma DATA_SECTION(Plot_Limit_Water_RP_High,"CFG")
_EXTERN VAR Plot_Limit_Water_RP_High;
/**** END: Plot & Graph Limits ****/


#pragma DATA_SECTION(DIO_LOCK,"CFG")
_EXTERN COIL DIO_LOCK[4];
#pragma DATA_SECTION(REG_PW,"CFG")
_EXTERN int REG_PW[5];       /*add 1 for heuristic routine pw, change from 4 to 5 RS*/
#pragma DATA_SECTION(REG_LOCK,"CFG")
_EXTERN VAR REG_LOCK[5];     /*add 1 for heuristic routine lock, change from 4 to 5 RS*/
_EXTERN BOOL LOCKOUT;

_EXTERN int CURRENT_OSC;
#pragma DATA_SECTION(OSC,"CFG")
_EXTERN int OSC[VTMAX];
#pragma DATA_SECTION(ENABLED,"CFG")
_EXTERN int ENABLED[VTMAX];
#pragma DATA_SECTION(EXP_FREQ,"CFG")
_EXTERN float EXP_FREQ[VTMAX];
#pragma DATA_SECTION(STR_INIT,"CFG")
_EXTERN int STR_INIT[2];
#pragma DATA_SECTION(STR_VER,"CFG")
_EXTERN int STR_VER[1];
#pragma DATA_SECTION(STR_Copyright,"CFG")
_EXTERN int STR_Copyright[40/2];
#pragma DATA_SECTION(STR_Analyzer_Info,"CFG")
_EXTERN int STR_Analyzer_Info[20/2];
#pragma DATA_SECTION(STR_HART_Tag,"CFG")
_EXTERN int STR_HART_Tag[8/2];
#pragma DATA_SECTION(STR_HART_Tag_Long,"CFG")
_EXTERN int STR_HART_Tag_Long[32/2];
#pragma DATA_SECTION(STR_HART_Desc,"CFG")
_EXTERN int STR_HART_Desc[16/2];
#pragma DATA_SECTION(STR_HART_Date,"CFG")
_EXTERN int STR_HART_Date[4/2];
#pragma DATA_SECTION(STR_HART_Msg,"CFG")
_EXTERN int STR_HART_Msg[32/2];
#pragma DATA_SECTION(STR_ASSY_Date,"CFG")
/*_EXTERN int STR_ASSY_Date[10/2];*/
_EXTERN int STR_ASSY_Date[16/2]; /* add profile version -RS*/ 
#pragma DATA_SECTION(CRC_BOOT,"CFG")
_EXTERN unsigned int CRC_BOOT;
#pragma DATA_SECTION(CRC_APP,"CFG")
_EXTERN unsigned int CRC_APP;
#pragma DATA_SECTION(CRC_INIT,"CFG")
_EXTERN unsigned int CRC_INIT;
#pragma DATA_SECTION(CRC_FAST,"CFG")
_EXTERN unsigned int CRC_FAST;

#pragma DATA_SECTION(REG_ADC,"CFG")
_EXTERN VAR REG_ADC[ADC_MAX];

#pragma DATA_SECTION(REG_DAC,"CFG")
_EXTERN VAR REG_DAC[DAC_MAX];

#pragma DATA_SECTION(ADC_TRIM_F_0,"CFG")
_EXTERN float ADC_TRIM_F_0[ADC_MAX];
#pragma DATA_SECTION(ADC_TRIM_F_1,"CFG")
_EXTERN float ADC_TRIM_F_1[ADC_MAX];
#pragma DATA_SECTION(ADC_TRIM_I_0,"CFG")
_EXTERN int ADC_TRIM_I_0[ADC_MAX];
#pragma DATA_SECTION(ADC_TRIM_I_1,"CFG")
_EXTERN int ADC_TRIM_I_1[ADC_MAX];

#pragma DATA_SECTION(DAC_TRIM_F_0,"CFG")
_EXTERN float DAC_TRIM_F_0[DAC_MAX];
#pragma DATA_SECTION(DAC_TRIM_F_1,"CFG")
_EXTERN float DAC_TRIM_F_1[DAC_MAX];
#pragma DATA_SECTION(DAC_TRIM_I_0,"CFG")
_EXTERN int DAC_TRIM_I_0[DAC_MAX];
#pragma DATA_SECTION(DAC_TRIM_I_1,"CFG")
_EXTERN int DAC_TRIM_I_1[DAC_MAX];

#pragma DATA_SECTION(FREQ_FACTOR,"CFG")
_EXTERN float FREQ_FACTOR;

typedef struct 	{
					int		MODE;
					int		STATUS_MASK;
					REGVECT	v;
					float	setpoint;

					COIL	ON;

					int		class;
					int		unit;
	    		} RELAYDATA;

#define RELAYMAX	2
#pragma DATA_SECTION(RLY,"CFG")
_EXTERN RELAYDATA RLY[RELAYMAX];

#define VARUSERMAX	5
#pragma DATA_SECTION(VARUSER,"CFG")
_EXTERN VAR VARUSER[VARUSERMAX];

#define SPADMAX 50
#pragma DATA_SECTION(SPAD,"CFG")
_EXTERN int SPAD[SPADMAX];

typedef struct 	{
					float	diag;
					float	mfr;
					int		u_mfr;
					float	density;
					int		u_density;
					float	density_PDI_corrected;
					float	density_corrected;
					int		u_density_corrected;
					float	T;
					int		u_T;
					float	vfr;
					int		u_vfr;
					float	visc;
					int		u_visc;
					float	press;
					float	mass_total;
					int		u_m;
					float	volume_total;
					int		u_v;
					int		u_P;
					float	P;
					float	mass_inv;
					float	volume_inv;
					float	raw_tube_freq;
					float	left_pickup_value;
					float	right_pickup_value;
					float	drive_gain;
					VAR		damp_flow_rate;
					VAR		damp_density;
					VAR		mfr_cutoff;
					VAR		vfr_cutoff;
					VAR		mcf;  
					VAR		address;     /*MM initial Slave address config RS*/    
					VAR     mass_unit;   /*Config mass flow unit RS*/  
					VAR     density_cutoff; /*Config density cutoff RS*/
					COIL	Z;
	    		} CORIOLIS;
_EXTERN CORIOLIS COR[CORMAX];

#define COR_EE_FAIL				1
#define COR_RAM_FAIL			2
#define COR_SENS_FAIL			4
#define COR_TSENS_FAIL			8
#define COR_INPUT_OVERRANGE		16
#define COR_FREQ_SAT			32
#define COR_NOT_CFG				64
#define COR_RTINT_FAIL			128
#define COR_PRI_MA_FAIL			256
#define COR_SEC_MA_FAIL			512
#define COR_PRI_MA_FIXED		1024
#define COR_SEC_MA_FIXED		2048
#define COR_DENSITY_OVERRANGE	4096
#define COR_FLOWZERO_FAIL		8192
#define COR_ZERO_TOO_LOW		16384
#define COR_ZERO_TOO_HIGH		32768
#define COR_ELECTR_FAIL			65536
#define COR_ZERO_IN_PROGRESS	131072
#define COR_SLUG_FLOW			262144
#define COR_POWER_RESET			524288
#define COR_CFG_CHANGED			1048576
#define COR_INIT				2097152
#define COR_ERROR				(0xFFFFFFFF ^ (COR_ZERO_IN_PROGRESS|COR_CFG_CHANGED))
                
#define water_filter_none												0
#define water_filter_clipped											1
#define water_filter_density											2
#define water_filter_higher_clipped_or_density							3
#define water_filter_higher_clipped_oil_or_water						4
#define water_filter_higher_clipped_oil_or_density						5
#define water_filter_higher_clipped_oil_or_higher_clipped_or_density	6
                
typedef struct 	{
					float	p_delta;
					float	p_static;
					float	T;
					float	diag0;
					float	diag1;
					float	diag2;
					int		u_DP;
					int		u_SP;
					int		u_PT;
	    		} PRESSURE;
_EXTERN PRESSURE PRESS[FCMAX];

typedef struct 	{
					float	T;
					float	etc0;
					float	etc1;
					float	etc2;
					float	etc3;
					float	etc4;
	    		} TMPT;
_EXTERN TMPT TMPTRANS[FCMAX];

#pragma DATA_SECTION(USE_PDI_WATERCUT,"CFG")
_EXTERN	COIL USE_PDI_WATERCUT;
#pragma DATA_SECTION(CALC_WC_DENSITY,"CFG")
_EXTERN	COIL CALC_WC_DENSITY;



typedef struct 	{
					VAR		watercut;
					VAR		T;
					VAR		pressure;
					VAR		density;
					float	density_PDI_corrected;
					float	density_adj;
					VAR		density_oilST;
					VAR		density_oil;
					VAR		density_waterST;
					VAR		density_water;
					VAR		salinity;
					int		API_TABLE;
					float	a;
					VAR		Meter_Factor;
					VAR		Shrinkage;
					float	VCFo;
					float	VCFw;
					float	net_watercut;
					float	net_watercut_mass;
					float	Dadj;

					VAR NET_FLOW_OIL;
					VAR NET_FLOW_WATER;
					VAR NET_FLOW_TOTAL;
					
					VAR NET_OIL;
					VAR NET_WATER;
					VAR NET_TOTAL;
					VAR AVG_NET_TOTAL;
					
					VAR GROSS_OIL;
					long double gross_oil_whole_part;
					long double gross_oil_fract_part;
					
					VAR GROSS_WATER;
					long double gross_water_whole_part;
					long double gross_water_fract_part;
					
					VAR GROSS_TOTAL;
					VAR AVG_GROSS_TOTAL;
					
					VAR FLOW_OIL;
					VAR FLOW_WATER;
					VAR FLOW_TOTAL;
					
					unsigned int PULSES_PER_ACCUM_UNIT;
					VAR PULSE_TOTAL;
					VAR PULSE_FLOW;
					VAR PULSE_FREQ;
					unsigned int PULSE_COUNTER;
					int PULSE;
					int CNT;
					int PULSE_DELTA;
					float	PULSE_FACTOR;
					int PULSE_STAT;
					BOOL	enable_NET;
					BOOL	enable_GROSS;
					BOOL	enable_FLOW;
					BOOL	enable_DENSITY;
					BOOL	enable_PULSE;
					REGVECT	flow_class;
					REGVECT flow_unit;
					REGVECT accum_unit;
					COIL Z;
					
					///New pulse input///
					COIL use_totalizer;
					REGVECT	pulse_v;
					REGVECT	pulse_class;
					REGVECT	pulse_unit;
					VAR pulse_VALUE;
					///New pulse input///

					BOOL USE_PDI_TEMP;
					BOOL USE_PDI_SALINITY;

					BOOL CALC_WC_DENSITY;
					
					BOOL MAN_TEMP;
					BOOL MAN_SALINITY;
					BOOL MAN_WATERCUT;
					BOOL MAN_DENSITY;
					BOOL MAN_PRESSURE;
					BOOL MAN_FLOW;

					unsigned int AUTHORIZATION_CODE1;
					unsigned int AUTHORIZATION_CODE2;
					unsigned int AUTHORIZATION_CODE3;
					unsigned int AUTHORIZATION_CODE4;
	    		} FLOW_COMP;

#pragma DATA_SECTION(FC,"CFG")
_EXTERN FLOW_COMP FC[FCMAX];

typedef struct 	{
					float	WATERCUT;
					float	FLOW_RATE;
					float	TEMPERATURE;
					float	DENSITY;
					float	VISCOSITY;

					int		iWATERCUTz;
					int		iWATERCUT;
					int		iFLOW_RATE;
					int		iTEMPERATURE;
					int		iDENSITY;
					int		iVISCOSITY;

					float	maxWATERCUTz;
					float	maxWATERCUT;
					float	maxFLOW_RATE;
					float	maxTEMPERATURE;
					float	maxDENSITY;
					float	maxVISCOSITY;

					float	minWATERCUTz;
					float	minWATERCUT;
					float	minFLOW_RATE;
					float	minTEMPERATURE;
					float	minDENSITY;
					float	minVISCOSITY;

					BOOL	ENABLED;

					VAR		DESTINATION_ADDRESS;
	    		} ALYESKA_STRUCT;

#pragma DATA_SECTION(ALYESKA,"CFG")
_EXTERN ALYESKA_STRUCT ALYESKA;

_EXTERN float compatibility_dummy;


		/* //from the old beta code for pulse
		typedef struct  {   
							BOOL	enable_PULSE;
							
							unsigned int PULSES_PER_ACCUM_UNIT;
							unsigned int PULSE_COUNTER;
							
							int 	PULSE;
							int 	PULSE_DELTA;
							int 	PULSE_STAT;
							int 	CNT;
							
							float	PULSE_FACTOR;
							
							VAR 	PULSE_FREQ;
							VAR 	PULSE_TOTAL;
							VAR 	PULSE_FLOW;
							VAR		FLOW_TOTAL;
							
							REGVECT flow_unit;
							REGVECT accum_unit;
						} PULSE_INPUT;
						
		#pragma DATA_SECTION(PULSE,"CFG")
		_EXTERN PULSE_INPUT PULSE[3];                      
				 
		*/


#define ALFAT_RX_MAX_SIZE		128
#define ALFAT_TX_MAX_SIZE		300

#pragma DATA_SECTION(ALFAT_RX,"internal_RAM")
_EXTERN	char	ALFAT_RX[ALFAT_RX_MAX_SIZE]; //receive buffer for ALFAT data

#pragma DATA_SECTION(ALFAT_TX,"internal_RAM")
_EXTERN	char	ALFAT_TX[ALFAT_TX_MAX_SIZE]; //output buffer for ALFAT data // terminate with 0x0A

#pragma DATA_SECTION(SIZE_ALFAT_TX,"internal_RAM")
_EXTERN int		SIZE_ALFAT_TX; //number of bytes to send from ALFAT_TX

#pragma DATA_SECTION(LOG_STATUS,"CFG")
_EXTERN int		LOG_STATUS; //48650

#pragma DATA_SECTION(ALFAT_NO_ERROR,"internal_RAM")
_EXTERN int		ALFAT_NO_ERROR;

#pragma DATA_SECTION(ALFAT_INIT_ALL,"internal_RAM")
_EXTERN int		ALFAT_INIT_ALL;

#pragma DATA_SECTION(ALFAT_USB_DETECTED,"CFG")
_EXTERN COIL ALFAT_USB_DETECTED;

#pragma DATA_SECTION(ALFAT_USB_MOUNTED,"CFG")
_EXTERN COIL ALFAT_USB_MOUNTED;

#pragma DATA_SECTION(ALFAT_STATUS_REG,"internal_RAM")
_EXTERN	unsigned int 	ALFAT_STATUS_REG;

#pragma DATA_SECTION(ALFAT_INITIALIZED,"CFG")
_EXTERN	unsigned int 	ALFAT_INITIALIZED;

#pragma DATA_SECTION(ALFAT_LOG_DAY,"CFG")
_EXTERN	unsigned int 	ALFAT_LOG_DAY; //for keeping track of date, to start new file

#pragma DATA_SECTION(ALFAT_WRITE_HEADER,"CFG")
_EXTERN	unsigned int 	ALFAT_WRITE_HEADER;

#pragma DATA_SECTION(ALFAT_APPEND_LF,"CFG")
_EXTERN	BOOL 	ALFAT_APPEND_LF;

#pragma DATA_SECTION(BEGIN_ALFAT_LOGGING,"CFG")
_EXTERN COIL BEGIN_ALFAT_LOGGING;

#pragma DATA_SECTION(REG_ALFAT_LOG_PERIOD,"CFG")
_EXTERN VAR REG_ALFAT_LOG_PERIOD;



	
typedef struct 	{
					COIL	ENABLED;
					/*float	flow_threshold;*/  
					VAR	flow_threshold;/*Add stream select for Hsalt and Gas routine RS*/
					/*float	span; */           
					//VAR	span;/*Add stream select for Hsalt and Gas routine RS*/
					float	S3;
					float	S2;
					float	S1;
					float	S0;
					float	Fmin;
					//float	Fmax;
					float	Dmin;
					float	Dmax;
					//BOOL	new;
					BOOL	CHANGED;
					BOOL	PURGING;
					BOOL	TEST_IN_PROGRESS;
					float	SP3A;
					float	SP2A;
					float	SP1A;
					float	SP0A;
					float	SPLOA;
					float	SPHIA;
					float	SP3B;
					float	SP2B;
					float	SP1B;
					float	SP0B;
					float	SPLOB;
					float	SPHIB;
					float	FBHI3;
					float	FBHI2;
					float	FBHI1;
					float	FBHI0;
					float	FBLO3;
					float	FBLO2;
					float	FBLO1;
					float	FBLO0;
	    		} HS_STRUCT;

#pragma DATA_SECTION(HSALT,"CFG")
_EXTERN HS_STRUCT HSALT;

#pragma DATA_SECTION(Hsalt_Min_WC,"CFG")
_EXTERN VAR Hsalt_Min_WC;

/*RS*/
#pragma DATA_SECTION(AVG_RESET,"CFG")
_EXTERN COIL AVG_RESET;

#ifdef GLBLS_H
#pragma CODE_SECTION(Setup_Basics,"initialization")
#endif

_EXTERN void Setup_Basics(void);

#undef _EXTERN
#undef GLBLS_H

#include "HART.H"
#include "MODBUSRTU.H"
#include "MISC.H"
#include "API.H"
#endif
