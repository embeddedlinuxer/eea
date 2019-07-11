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
/* File Name: HART.H						    							*/
/* 									    									*/
/* File Description:  HART is a protocol that is used over a serial         */
/* connection to read certain data about a PLC.  In this case you can pretty*/
/* much get all the information from the analyzer that you want via HART the*/
/* downside is that you have to be within close proximity to connect your   */
/* HART device to the PLC.						    						*/
/*									    									*/
/****************************************************************************/

#ifndef _HART
#define _HART

#ifdef HART_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#define HART_MFGR_PDI 				146
#define HART_DIST_PDI				HART_MFGR_PDI
#define HART_CMD_REV				5

// Apparently, there is no revision 2, so use the old rev number
//#define HART_TRANS_REV_OLD			1
//#define HART_TRANS_REV				2
#define HART_TRANS_REV				1

#define H_DEV_TYPE					0x7F
#define HART_FAMILY_CODE			u_generic_not_used

#pragma DATA_SECTION(HART_VAR_LIST,"CFG")
_EXTERN unsigned int	HART_VAR_LIST[4];
#pragma DATA_SECTION(HART_BURST_VAR_LIST,"CFG")
_EXTERN unsigned int	HART_BURST_VAR_LIST[4];
#pragma DATA_SECTION(HART_BURST_CMD,"CFG")
_EXTERN int	HART_BURST_CMD;
#pragma DATA_SECTION(HART_BURST_MODE,"CFG")
_EXTERN int	HART_BURST_MODE;
#pragma DATA_SECTION(HCHANGE,"CFG")
_EXTERN int    HCHANGE[2];
_EXTERN int    HCOLD[2];
#pragma DATA_SECTION(HCHANGE_COUNTER,"CFG")
_EXTERN unsigned int    HCHANGE_COUNTER;

_EXTERN BOOL	HART_BURST_MASTER_SEL;
_EXTERN int		TMR_BURST;
_EXTERN int		TMR_SET_BT;
_EXTERN int		TMR_SET_RT1;
_EXTERN float	OLD_CURRENT;

_EXTERN int* vect_hexec0;
_EXTERN int* vect_hexec1;
_EXTERN int* vect_hexec2;
_EXTERN int* vect_hexec3;
_EXTERN int* vect_hexec4;
_EXTERN int* vect_hexec5;
_EXTERN int* vect_hexec6;
_EXTERN int* vect_hexec7;

_EXTERN void HART_5(int port);

#ifdef HART_H
#pragma CODE_SECTION(HART_Initialize,"initialization")
#endif

_EXTERN void HART_Initialize(int id);
_EXTERN VAR* HART_Lookup(unsigned int d, unsigned int* r, int* h);

#ifndef HART_H
_EXTERN const int* HART_DD_Table;
_EXTERN const int* HART_DPF_Table;
_EXTERN const int* HART_DPI_Table;
_EXTERN const int* HART_DVI_Table;
_EXTERN const int* HART_DV_Table;
_EXTERN const int* HART_DVOUTPUT_Table;
_EXTERN const int* HART_DVINPUT_Table;
#endif

#ifdef HART_H
#pragma DATA_SECTION(HART_DPI_Table,"TABLES")
const int HART_DPI_Table[]={
							(int)&REG_STREAM_SELECT,
							(int)&REG_NUM_SAMP,
							(int)&REG_EM_PHASE_HOLD,
							(int)&REG_alarm_relay_delay,
							(int)&REG_flow_meter_type,
							(int)&REG_flow_volume_unit,
							(int)&REG_flow_rate_time_unit,
							(int)&REG_count_per_flow_unit,
							(int)&REG_20mA_max_flow_rate_input,
							(int)&REG_accumulator_display_format,
							(int)&AO[0].TRIM_MIN,
							(int)&AO[0].TRIM_MAX,
							(int)&REG_HART_response_delay,
							(int)&REG_HART_num_preamble,
							(int)&REG_reference_currrent_mode,
							(int)&Num_Oil_Samples,
							(int)&Num_Water_Samples,
							(int)&REG_density_correction_mode,
							(int)&PORTCFG[1].Slave_ID,
							(int)&REG_port1_Baud_Rate,
							(int)&REG_port1_parity,
							(int)&REG_port1_stop_bits,
							(int)&PORTCFG[1].EOT_Delay,
							(int)&Oil_Phase_Filter,
							(int)&Water_Phase_Filter,
							-1 }; /* END OF TABLE */

#pragma DATA_SECTION(HART_DD_Table,"TABLES")
const int HART_DD_Table[]={
							(int)&RLY[0].ON,
							(int)&RLY[1].ON,
							(int)&DIO_LOCK[0],
							(int)&DIO_CLEAR_COUNTERS,
							(int)&DIO_RESET_FACTORY_DEFAULTS,
							(int)&DIO_RESTORE_USER_CONFIG,
							(int)&DIO_SYSTEM_RESET,
							(int)&DIO_ERROR,
							(int)&DIO_ERROR,
							(int)&DIO_BUILT_IN_TEST_ENABLE,
							(int)&DIO_DUMMY,
							(int)&DIO_DUMMY,
							(int)&DIO_DUMMY,
							(int)&DIO_TEMP_C,
							(int)&DIO_HART_5,
							(int)&LOOP_ENABLED,
							(int)&DIO_CAP_OIL,
							(int)&DIO_CAP_WATER,
							(int)&DIO_DUMMY,
							(int)&DIO_DUMMY,
							(int)&DIO_DUMMY,
							(int)&DIO_DUMMY,
							(int)&DATA_CHANGE,
							(int)&DIO_SAVE_USER_CONFIG,
							(int)&DIO_uP_GET,
							(int)&DIO_COMM_GET,
							(int)&DIO_ANALYZER_GET,
							(int)&DIO_POWER_GET,
							(int)&DIO_ANALOGIO_GET,
							(int)&DIO_DISPLAY_GET,
							(int)&DIO_MOTHERBOARD_GET,
							-1 }; /* END OF TABLE */

#pragma DATA_SECTION(HART_DPF_Table,"TABLES")
const int HART_DPF_Table[]={
							(int)&REG_SALINITY,
							(int)&REG_OIL_ADJ,
							(int)&REG_OIL_INDEX,
							(int)&REG_WATER_ADJ,
							(int)&REG_WATER_INDEX,
							(int)&REG_WATERCUT_ALARM_HI,
							(int)&AO[0].LRV,
							(int)&AO[0].URV,
							(int)&REG_TEMPERATURE_USER_ADJUST,
							(int)&OIL_P0,
							(int)&OIL_P1,
							(int)&REG_FREQ_OIL_LO,
							(int)&REG_FREQ_OIL_HI,
							(int)&REG_FREQ_WATER_LO,
							(int)&REG_FREQ_WATER_HI,
							(int)&REG_CAL_OIL,
							(int)&REG_CAL_WATER,
							(int)&Density_Cal,
							(int)&Density_D1,
							(int)&Density_D0,
							(int)&AI[0].LRV,
							(int)&AI[0].URV,
							(int)&AI[0].LRV,
							(int)&AI[0].URV,
							(int)&Oil_Phase_Maximum,
							(int)&Water_Phase_Minimum,
							-1 }; /* END OF TABLE */	

#pragma DATA_SECTION(HART_DVI_Table,"TABLES")
const int HART_DVI_Table[]={
							(int)&REG_DIAG[4],
							(int)&REG_DIAG[0],
							(int)&REG_DIAG[2],
							(int)&REG_EMULSION_PHASE,
							(int)&REG_DIAG[0],
							-1 }; /* END OF TABLE */

/* OUTPUT VARIABLES */
#pragma DATA_SECTION(HART_DV_Table,"TABLES")
const int HART_DV_Table[]={
							(int)&REG_WATERCUT,								//0
							(int)&REG_TEMPERATURE_USER,
							(int)&REG_EMULSION_PHASE,
							(int)&REG_DIAG[0],								//	DIAGNOSTICS
							(int)&REG_DIAG[2],								//	DIAGNOSTICS_ERROR_CODE
							(int)&REG_FREQ_O,
							(int)&REG_VINC_O,
							(int)&REG_VREF_O,
							(int)&REG_FREQ_W,
							(int)&REG_VINC_W,
							(int)&REG_VREF_W,								//10
							(int)&FC[0].GROSS_OIL,
							(int)&FC[0].GROSS_WATER,
							(int)&FC[0].GROSS_TOTAL,
							(int)&FC[0].FLOW_OIL,
							(int)&FC[0].FLOW_WATER,
							(int)&FC[0].FLOW_TOTAL,
							(int)&REG_ADC[ADC_Tint],
							(int)&AI[0].CURRENT,
							(int)&AI[0].CURRENT_PERCENT_OF_RANGE,
					/* the above variables are in order for backward compatibility mode */
					
							(int)&AI[1].CURRENT,							//20
							(int)&AI[1].CURRENT_PERCENT_OF_RANGE,
							(int)&AI[2].CURRENT,
							(int)&AI[2].CURRENT_PERCENT_OF_RANGE,
							(int)&AI[3].CURRENT,
							(int)&AI[3].CURRENT_PERCENT_OF_RANGE,
							(int)&AI[4].CURRENT,
							(int)&AI[4].CURRENT_PERCENT_OF_RANGE,
					
							(int)&AO[0].CURRENT,
							(int)&AO[0].CURRENT_PERCENT_OF_RANGE,
							(int)&AO[1].CURRENT,							//30
							(int)&AO[1].CURRENT_PERCENT_OF_RANGE,
							(int)&AO[2].CURRENT,
							(int)&AO[2].CURRENT_PERCENT_OF_RANGE,
							(int)&AO[3].CURRENT,
							(int)&AO[3].CURRENT_PERCENT_OF_RANGE,
							(int)&AO[4].CURRENT,
							(int)&AO[4].CURRENT_PERCENT_OF_RANGE,
							(int)&AO[5].CURRENT,
							(int)&AO[5].CURRENT_PERCENT_OF_RANGE,
							(int)&AO[6].CURRENT,							//40
							(int)&AO[6].CURRENT_PERCENT_OF_RANGE,
							(int)&AO[7].CURRENT,
							(int)&AO[7].CURRENT_PERCENT_OF_RANGE,
							(int)&AO[8].CURRENT,
							(int)&AO[8].CURRENT_PERCENT_OF_RANGE,
					
							(int)&FC[0].PULSE_FREQ,
							(int)&FC[0].watercut,
							(int)&FC[0].T,
							(int)&FC[0].pressure,
							(int)&FC[0].salinity,							//50
							(int)&FC[0].density,
							(int)&FC[0].density_oil,
							(int)&FC[0].density_water,
							(int)&FC[0].FLOW_OIL,
							(int)&FC[0].FLOW_WATER,
							(int)&FC[0].FLOW_TOTAL,
							(int)&FC[0].GROSS_OIL,
							(int)&FC[0].GROSS_WATER,
							(int)&FC[0].GROSS_TOTAL,
							(int)&FC[0].NET_OIL,							//60
							(int)&FC[0].NET_WATER,
							(int)&FC[0].NET_TOTAL,
							(int)&FC[0].NET_FLOW_OIL,
							(int)&FC[0].NET_FLOW_WATER,
							(int)&FC[0].NET_FLOW_TOTAL,
					
							(int)&FC[1].PULSE_FREQ,
							(int)&FC[1].watercut,
							(int)&FC[1].T,
							(int)&FC[1].pressure,
							(int)&FC[1].salinity,   						//70
							(int)&FC[1].density,
							(int)&FC[1].density_oil,
							(int)&FC[1].density_water,
							(int)&FC[1].FLOW_OIL,
							(int)&FC[1].FLOW_WATER,
							(int)&FC[1].FLOW_TOTAL,
							(int)&FC[1].GROSS_OIL,
							(int)&FC[1].GROSS_WATER,
							(int)&FC[1].GROSS_TOTAL,
							(int)&FC[1].NET_OIL,  							//80
							(int)&FC[1].NET_WATER,
							(int)&FC[1].NET_TOTAL,
							(int)&FC[1].NET_FLOW_OIL,
							(int)&FC[1].NET_FLOW_WATER,
							(int)&FC[1].NET_FLOW_TOTAL,
					
							(int)&FC[2].PULSE_FREQ,
							(int)&FC[2].watercut,
							(int)&FC[2].T,
							(int)&FC[2].pressure,
							(int)&FC[2].salinity,   						//90
							(int)&FC[2].density,
							(int)&FC[2].density_oil,
							(int)&FC[2].density_water,
							(int)&FC[2].FLOW_OIL,
							(int)&FC[2].FLOW_WATER,
							(int)&FC[2].FLOW_TOTAL,
							(int)&FC[2].GROSS_OIL,
							(int)&FC[2].GROSS_WATER,
							(int)&FC[2].GROSS_TOTAL,
							(int)&FC[2].NET_OIL,							//100
							(int)&FC[2].NET_WATER,
							(int)&FC[2].NET_TOTAL,
							(int)&FC[2].NET_FLOW_OIL,
							(int)&FC[2].NET_FLOW_WATER,
							(int)&FC[2].NET_FLOW_TOTAL,
					
							(int)&CCM_GAS_FLOW,
							(int)&CCM_GAS_TOTAL,
							(int)&CCM_GAS_LIVE_DENSITY,
					
							(int)&REG_STREAM_SELECT,
							(int)&REG_SALINITY,								//110
					
							(int)&CCM_VESSEL_LEVEL[0],
							(int)&CCM_VESSEL_LEVEL[1],
							(int)&CCM_SETPOINT_LEVEL[0],
							(int)&CCM_SETPOINT_LEVEL[1],
							(int)&CCM_VESSEL_PRESSURE[0],
							(int)&CCM_VESSEL_PRESSURE[1],
							(int)&CCM_SETPOINT_PRESSURE[0],
							(int)&CCM_SETPOINT_PRESSURE[1],
					
							(int)&VARUSER[0],
							(int)&VARUSER[1],								//120
							(int)&VARUSER[2],
							(int)&VARUSER[3],
							(int)&VARUSER[4],
					
							(int)&AI[0].VALUE,
							(int)&AI[1].VALUE,
							(int)&AI[2].VALUE,
							(int)&AI[3].VALUE,
							(int)&AI[4].VALUE,  
							
							(int)&REG_CCM_PURGE_STAT, 						/*129 logging purge status RS*/
							(int)&REG_CCM_TEST_STAT,  						/*130 logging test status RS*/  
							
							(int)&COR[0].drive_gain,  						/*131 logging liquid MM drive gain RS*/
							(int)&COR[1].drive_gain,                        /*132 loggin gas MM drive gain BC */
							
							(int)&REG_WATERCUT_DENSITY,						/*133 watercut by density BC*/

							(int)&AO[2].P,		//134
							(int)&AO[2].I,
							(int)&AO[2].D,
							(int)&AO[1].P,		//137
							(int)&AO[1].I,
							(int)&AO[1].D,
							
							//HSALT Enable (coil)
							//Force Phase (2 coils) (water/oil/auto)
							
							(int)&REG_DELTA_TEMP,		//140
							(int)&boxcar_expire_val,
							(int)&bubble_new_length,	//142
							(int)&pattern_new_length,
							
							(int)&FC[0].density_waterST,
							(int)&FC[0].density_water,	//145
							(int)&FC[0].density_oilST,
							(int)&FC[0].density_oil,	//147
							
					
							-1 }; /* END OF TABLE */	

#pragma DATA_SECTION(HART_DVOUTPUT_Table,"TABLES")
const int HART_DVOUTPUT_Table[]={
							(int)&REG_WATERCUT,			//0
							(int)&REG_TEMPERATURE_USER,
							(int)&REG_EMULSION_PHASE,
							(int)&REG_DIAG[0],			//	DIAGNOSTICS
							(int)&REG_DIAG[2],			//	DIAGNOSTICS_ERROR_CODE
							(int)&REG_FREQ_O,			//5
							(int)&REG_VINC_O,
							(int)&REG_VREF_O,
							(int)&REG_FREQ_W,
							(int)&REG_VINC_W,
							(int)&REG_VREF_W,			//10
							(int)&FC[0].GROSS_OIL,
							(int)&FC[0].GROSS_WATER,
							(int)&FC[0].GROSS_TOTAL,
							(int)&FC[0].FLOW_OIL,
							(int)&FC[0].FLOW_WATER,		//15
							(int)&FC[0].FLOW_TOTAL,
							(int)&REG_ADC[ADC_Tint],
							(int)&AI[0].CURRENT,
							(int)&AI[0].CURRENT_PERCENT_OF_RANGE,
					/* the above variables are in order for backward compatibility mode */
										
							(int)&FC[0].PULSE_FREQ,		//20
							(int)&FC[0].watercut,
							(int)&FC[0].T,
							(int)&FC[0].pressure,
							(int)&FC[0].salinity,							
							(int)&FC[0].density,		//25
							(int)&FC[0].density_oil,
							(int)&FC[0].density_water,
							(int)&FC[0].FLOW_OIL,
							(int)&FC[0].FLOW_WATER,
							(int)&FC[0].FLOW_TOTAL,		//30
							(int)&FC[0].GROSS_OIL,
							(int)&FC[0].GROSS_WATER,
							(int)&FC[0].GROSS_TOTAL,
							(int)&FC[0].NET_OIL,							
							(int)&FC[0].NET_WATER,		//35
							(int)&FC[0].NET_TOTAL,
							(int)&FC[0].NET_FLOW_OIL,
							(int)&FC[0].NET_FLOW_WATER,
							(int)&FC[0].NET_FLOW_TOTAL,
					
							(int)&REG_STREAM_SELECT,	//40
							(int)&REG_SALINITY,								
					
							(int)&VARUSER[0],
							(int)&VARUSER[1],							
							(int)&VARUSER[2],
							(int)&VARUSER[3],			//45
							(int)&VARUSER[4],
					
							(int)&AI[0].VALUE,
							(int)&AI[1].VALUE,
							(int)&AI[2].VALUE,
							(int)&AI[3].VALUE,			//50
							(int)&AI[4].VALUE,  

							(int)&REG_WATERCUT_DENSITY,						//133 watercut by density
							
							(int)&FC[0].density_waterST,
							(int)&FC[0].density_water,	
							(int)&FC[0].density_oilST,	//55
							(int)&FC[0].density_oil,	
							-1 }; /* END OF TABLE */	
									

/* INPUT VARIABLES */
#pragma DATA_SECTION(HART_DVINPUT_Table,"TABLES")
const int HART_DVINPUT_Table[]={ //for Analog Input?
								(int)&REG_SALINITY,			//0
								(int)&REG_STREAM_SELECT,
								(int)&REG_TEMPERATURE_USER,
								(int)&FC[0].watercut,
								(int)&FC[0].T,
								(int)&FC[0].FLOW_TOTAL,		//5
								(int)&FC[0].pressure,
								(int)&FC[0].density,
								(int)&FC[0].salinity,
								(int)&FC[0].density_oil,
								(int)&FC[0].density_oilST,	//10
								(int)&FC[0].density_water,
								(int)&FC[0].density_waterST,
								(int)&FC[1].watercut,		//13
								(int)&FC[1].T,
								(int)&FC[1].FLOW_TOTAL,		//15
								(int)&FC[1].pressure,
								(int)&FC[1].density,
								(int)&FC[1].salinity,
								(int)&FC[1].density_oil,
								(int)&FC[1].density_oilST,	//20
								(int)&FC[1].density_water,
								(int)&FC[1].density_waterST,
								(int)&FC[2].watercut,
								(int)&FC[2].T,
								(int)&FC[2].FLOW_TOTAL,		//25
								(int)&FC[2].pressure,
								(int)&FC[2].density,
								(int)&FC[2].salinity,
								(int)&FC[2].density_oil,
								(int)&FC[2].density_oilST,	//30
								(int)&FC[2].density_water,
								(int)&FC[2].density_waterST,//32
								(int)&VARUSER[0],
								(int)&VARUSER[1],
								(int)&VARUSER[2],			//35
								(int)&VARUSER[3],
								(int)&VARUSER[4],   
								(int)&CCM_GAS_TEMPERATURE, 	//38			/*add gas temperature option to AI*/
								-1 }; /* END OF TABLE */
#endif

#define HART_ST0					28		/* maximum slave response time */
#define HART_RT1_0					33
#define HART_RT1_1					41
#define HART_RT2					8
#define HART_HOLD					2
#define HART_BT						HART_RT2

#define	DEFAULT_H_PREFIX			1.5 /* hold time max = 2 ct */
#define DEFAULT_H_SUFFIX			0.5	/* max =  1, min = 0 */
#define	DEFAULT_H_NETWDOG			1.0 /* 1 ct gap */
#define DEFAULT_H_EOT				1.0 /* max = 28, min = 0 */

#define HART_ERROR_COMM				0x80
#define HART_ERROR_COMM_Parity		0x40
#define HART_ERROR_COMM_Overrun		0x20
#define HART_ERROR_COMM_Framing		0x10
#define HART_ERROR_COMM_CKSUM		0x08
#define HART_ERROR_COMM_reserved	0x40
#define HART_ERROR_COMM_Buffer_Overflow	0x20

#define HART_STATUS_NO_ERROR		0x00
#define HART_STATUS_Malfunction		0x80
#define HART_STATUS_CFG_changed		0x40
#define HART_STATUS_Cold_Start		0x20
#define HART_STATUS_More			0x10
#define HART_STATUS_PV_loop_fixed	0x08
#define HART_STATUS_PV_loop_bounds	0x04
#define HART_STATUS_bounds			0x02
#define HART_STATUS_PV_bounds		0x01

/* COMMAND ERROR RESPONSES */
#define HART_RESP_NO_ERROR					0
#define HART_RESP_Undefined					1
#define HART_RESP_Invalid_Selection			2	/* the code or index was not allowed in this command or for this field device */
#define HART_RESP_Large_Parameter			3
#define HART_RESP_Small_Parameter			4
#define HART_RESP_not_enough_data			5
#define HART_RESP_xmtr_specific_error 		6
#define HART_RESP_WRITE_PROTECT				7
#define HART_RESP_restricted_access			16
#define HART_RESP_error_9					9
#define HART_RESP_error_10					10
#define HART_RESP_error_11					11
#define HART_RESP_error_12					12
#define HART_RESP_error_13					13
#define HART_RESP_error_15					15
#define HART_RESP_invalid_unit_code			18
#define HART_RESP_invalid_range_units_code	28
#define HART_RESP_invalid_span				29
#define HART_RESP_BUSY						32
#define HART_RESP_CMD_NOT_SUPPORTED			64

/* COMMAND WARNING RESPONSES */
#define HART_RESP_warn_8					8
#define HART_RESP_warn_14					14
#define HART_RESP_warn_EOT					30
#define HART_RESP_warn_31					31

/* HART Commands - UNIVERSAL */
#define HART_CMD_Read_Unique_ID				0
#define HART_CMD_Read_PV					1
#define HART_CMD_Read_PV_Current			2
#define HART_CMD_Read_Dynamic_Vars			3
#define HART_CMD_Write_Poll_Addr			6
#define HART_CMD_Read_Unique_ID_by_TAG		11
#define HART_CMD_Read_Msg					12
#define HART_CMD_Read_TAG_Desc_Date			13
#define HART_CMD_Read_PV_Sensor_Info		14
#define HART_CMD_Read_PV_Output_Info		15
#define HART_CMD_Read_Final_Assy			16
#define HART_CMD_Write_Msg					17
#define HART_CMD_Write_TAG_Desc_Date		18
#define HART_CMD_Write_Final_Assy			19
/* HART Commands - HART6 Universal */
#define HART_CMD_Read_Loop_Configuration	7
#define HART_CMD_Read_DV_Classifications	8
#define HART_CMD_Read_DV_with_Status		9
#define HART_CMD_Read_TAG_Long				20
#define HART_CMD_Read_Unique_ID_by_TAG_Long	21
#define HART_CMD_Write_TAG_Long				22

/* HART Commands - COMMON PRACTICE */
#define HART_CMD_Read_XV					33
#define HART_CMD_Write_PV_dampening			34
#define HART_CMD_Write_PV_range				35
#define HART_CMD_Set_PV_upper_range			36
#define HART_CMD_Set_PV_lower_range			37
#define HART_CMD_RESET_CONFIG_CHANGED_FLAG	38
#define HART_CMD_FIXED_PV_CURRENT_MODE		40
#define HART_CMD_SELF_TEST					41
#define HART_CMD_MASTER_RESET				42
#define HART_CMD_Set_PV_ZERO				43
#define HART_CMD_Write_PV_units				44
#define HART_CMD_TRIM_PV_CURRENT_ZERO		45
#define HART_CMD_TRIM_PV_CURRENT_GAIN		46
#define HART_CMD_Write_PV_xfer_func			47
#define HART_CMD_Read_xmtr_status			48
#define HART_CMD_Write_PV_Serial_Number		49
#define HART_CMD_Read_DV_assignments		50
#define HART_CMD_Write_DV_assignments		51
#define HART_CMD_Set_XV_zero				52
#define HART_CMD_Write_XV_units				53
#define HART_CMD_Read_XV_info				54
#define HART_CMD_Write_XV_dampening			55
#define HART_CMD_Write_XV_Serial_Number		56
#define HART_CMD_Write_num_preamble			59
#define HART_CMD_Read_AO_perc_range			60
#define HART_CMD_Read_AO					62
#define HART_CMD_Read_AO_inform				63
#define HART_CMD_Write_AO_dampening			64
#define HART_CMD_Write_AO_range				65
#define HART_CMD_FIXED_AO_MODE				66
#define HART_CMD_TRIM_AO_CURRENT_ZERO		67
#define HART_CMD_TRIM_AO_CURRENT_GAIN		68
#define HART_CMD_Write_AO_xfer_func			69
#define HART_CMD_Read_AO_endpoints			70
#define HART_CMD_Lock						71
#define HART_CMD_Squawk						72
#define HART_CMD_Read_BURST_Config			105
#define HART_CMD_Write_BURST_XV				107
#define HART_CMD_Write_BURST_CMD			108
#define HART_CMD_BURST_MODE					109
#define HART_CMD_XFER_Service				111

#define HART_CMD_PDI_Read_DPF				128
#define HART_CMD_PDI_Write_DPF				129
#define HART_CMD_PDI_Read_DD				130
#define HART_CMD_PDI_Write_DD				131
#define HART_CMD_PDI_Read_DPI				132
#define HART_CMD_PDI_Write_DPI				133
#define HART_CMD_PDI_Read_DV				134
#define HART_CMD_PDI_Read_DVI				135

/* not recommended */
#define HART_CMD_EEPROM_Control				39
#define HART_CMD_Read_unit_tag_desc_date	57
#define HART_CMD_Write_unit_tag_desc_date	58
#define HART_CMD_Read_DV					61
#define HART_CMD_Read_ALL_DV				110

#define HART_PHYS_BELL202_CURRENT		0
#define HART_PHYS_BELL202_VOLTAGE		1
#define HART_PHYS_RS485					2
#define HART_PHYS_RS422					3
#define HART_PHYS_Special				6

#define HART_EXT_STATUS_NONE			0
#define HART_EXT_STATUS_MALFUNCTION		1
#define HART_EXT_STATUS_VAR_ALERT		2

#define HART_FLAG_Multisens_Dev			0x01
#define HART_FLAG_EEPROM_Ctrl			0x02
#define HART_FLAG_Protocol_Bridge		0x04

#undef _EXTERN
#undef HART_H
#endif
