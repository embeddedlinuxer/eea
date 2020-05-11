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
/* File Name: MODBUSTABLES.H				    							*/
/* 									    									*/
/* File Description:  These are the tables that define the MODBUS registers.*/
/* There are several tables here:                                           */
/* 		MB_ADDR_INT		- integers					- 440001 - 449999 all   */
/*		MB_ADDR_FC		- flow computer registers   - 420001 - 429999 odds  */
/*		MB_ADDR_FLT		- floating points           - 400001 - 409999 odds  */
/*		MB_ADDR_COIL	- coils (bits)              - 000001 - 999999 all   */
/* 		MB_ADDR_EXT		- extended registers	    - 460001 - 469999		*/
/* 																			*/
/*		Attribute Legend:	CFGU   - save user config                       */
/*							DIS_R  - disable read                           */
/*							EN_W   - enable write                           */
/*							PROT_U - protect user                           */
/*							PROT_G - protect g?							    */
/* 																			*/
/* NOTE: Auto-save will immediately save the user configuration block prior	*/ 
/* to sending a modbus response.  If a delayed action, such as DIO_uP_GET,	*/ 
/* the configuration will save before the action actually takes place.  In	*/ 
/* this case, the user must initiate the save manually.						*/
/*									    									*/
/****************************************************************************/

#ifndef _MODBUSTABLES
#define _MODBUSTABLES

#ifdef MODBUSTABLES_H

#define MB_ADDR_INT 40000
#pragma DATA_SECTION(mb_int,"TABLES")
const int mb_int[][2] =	{
/*		  [Reg # | save? | function               | protection?        ],[(cast)variable address			]	* Note * 									*/
			   1 		 | reg_direct_i									, (int)&SN_PIPE,
			   2 		 | reg_direct_i		 	  | PROT_U				, (int)&DIAGNOSTICS[0],
			   3 		 | reg_direct_i		 	  | PROT_U				, (int)&DIAGNOSTICS[1],
			   4 		 | reg_direct_i		 	  | PROT_U 				, (int)&DIAGNOSTICS_ERROR_CODE,
			   5 		 | reg_direct_i		 	  | PROT_U 				, (int)&DIAGNOSTICS_MSG_CODE,
			   6 		 | reg_indirect									, (int)&REG_WATERCUT,
			   7 		 | reg_indirect									, (int)&REG_TEMPERATURE_EXTERNAL,
			   8 		 | reg_indirect									, (int)&REG_TEMPERATURE_USER,
			   9 		 | reg_indirect									, (int)&REG_EMULSION_PHASE,
			  10 | CFGU  | reg_indirect		  	  | EN_W				, (int)&REG_STREAM_SELECT,
			  11 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_SALINITY,
			  12 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_OIL_ADJ,
			  13 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_WATER_ADJ,
			  14 | CFGU  | reg_indirect_unit	  | PROT_U 				, (int)&REG_TEMPERATURE_EXTERNAL,
			  15 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&OIL_CALC_MODE,
			  16 | CFGU  | reg_direct_regvect 	  | PROT_U 				, (int)&Density_Correction_Mode,
			  17 | CFGU  | reg_direct_regvect 	  | PROT_U 				, (int)&DCM_PORT,
			  18	 	 | reg_direct_i									, (int)&REG_TIME,
			  19 		 | reg_indirect			  | EN_W				, (int)&DEMO_ANALYZER_MODE,
			  20 | CFGU  | reg_direct_regvect 	  | PROT_G				, (int)&ANALYZER_MODE,
			  21 		 | reg_direct_raw_int  		 					, HART_MFGR_PDI,
			  22 	 	 | reg_direct_raw_int  		 					, HART_CMD_REV,
			  23 		 | reg_direct_raw_int  		 					, HART_TRANS_REV,
			  24 		 | reg_direct_raw_int  		 					, FIRMWARE_VERSION,
			  25 		 | reg_direct_i									, (int)&HW_VER,
			  26 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&REG_NUM_SAMP,
			  27 | CFGU  | reg_direct_i       	  | PROT_G				, (int)&OSC_OIL_CALC,
			  28 | CFGU  | reg_direct_i       	  | PROT_G				, (int)&OSC_WATER_CALC,
			  29 | CFGU  | reg_direct_i       	  | PROT_U 				, (int)&NaN_val_int,
			  30 		 | reg_direct_i									, (int)&RESET_COUNTER,
			  31 | CFGU  | reg_direct_i	 	 	  | PROT_U				, (int)&DIAGNOSTICS_MASK[0],
			  32 | CFGU  | reg_direct_i	 	 	  | PROT_U				, (int)&DIAGNOSTICS_MASK[1],
			  33 		 | reg_direct_i									, (int)&CURRENT_OSC,
			  34 | CFGU  | reg_direct_regvect 	  | PROT_U				, (int)&Density_Cal_Unit,
			  35 | CFGU  | reg_indirect    	 	  | PROT_U 			 	, (int)&Oil_Phase_Filter,
			  36 | CFGU  | reg_indirect    	 	  | PROT_U 			 	, (int)&Water_Phase_Filter, 

			  37 		 | reg_indirect									, (int)&REG_TEMPERATURE_AVG,   			/*AVG TEMP -RS*/
			  38 | CFGU  | reg_indirect_unit	  | PROT_U 				, (int)&REG_TEMPERATURE_AVG,   			/*AVG Unit -RS*/

			  39 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_PHASE_HOLD_CYCLES, 			/*phase hold over HR RS*/
			  40 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_WC_NUM_SAMPLES,    			/*average filter RS*/

			  41 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_CCM_PURGE_STAT,  			/*logging purge status RS*/
			  42 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_CCM_TEST_STAT,   			/*logging test status RS*/

         	  //43 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_FREQ_WINDOW,    			/*HSALT Freq trigger RS*/
			  45 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_DELTA_TEMP,  				/*HSALT Temp trigger RS*/
			  46 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_FREQ_VARIANCE_RATIO, 		/*HSALT Freq trigger RS*/
			  47 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_BULK_LEVEL,   				/*Close Gas Valve when Level too high for Anadarko Bulk RS*/

			  50 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&REG_ALFAT_LOG_PERIOD, 
			  
			  61 		 | reg_direct_i      		 					, (int)&i_LV[0],
			  62 		 | reg_direct_i      		 					, (int)&i_LV[1],
			  63 		 | reg_direct_i      		 					, (int)&i_LV[2],
			  64 		 | reg_direct_i      		 					, (int)&i_LV[3],
			  65 		 | reg_direct_i      		 					, (int)&i_LV[4],
			  66 		 | reg_direct_i      		 					, (int)&i_LV[5],
			  67 		 | reg_direct_i      		 					, (int)&i_LV[6],
			  68 		 | reg_direct_i      		 					, (int)&i_LV[7],
			  69 		 | reg_direct_i      		 					, (int)&i_LV[8],
			  70 		 | reg_direct_i      		 					, (int)&i_LV[9],
			  71 		 | reg_direct_i      		 					, (int)&i_LV[10],
			  72 		 | reg_direct_i      		 					, (int)&i_LV[11],
			  73 		 | reg_direct_i      		 					, (int)&i_LV[12],
			  74 		 | reg_direct_i      		 					, (int)&i_LV[13],
			  75 		 | reg_direct_i      		 					, (int)&i_LV[14],
			  76 		 | reg_direct_i      		 					, (int)&i_LV[15],
			  77 		 | reg_direct_i      		 					, (int)&i_LV[16],
			  78 		 | reg_direct_i      		 					, (int)&i_LV[17],
			  79 		 | reg_direct_i      		 					, (int)&i_LV[18],
			  80 		 | reg_direct_i      		 					, (int)&i_LV[19],
			  81 		 | reg_direct_i      		 					, (int)&i_LV[20],
			  82 		 | reg_direct_i      		 					, (int)&i_LV[21],
			  83		 | reg_direct_i      		 					, (int)&i_LV[22],
			  84 		 | reg_direct_i      		 					, (int)&i_LV[23],
			  85 		 | reg_direct_i      		 					, (int)&i_LV[24],
			  86 		 | reg_direct_i      		 					, (int)&i_LV[25],
			  87 		 | reg_direct_i      		 					, (int)&i_LV[26],
			  88 		 | reg_direct_i      		 					, (int)&i_LV[27],
			  89 		 | reg_direct_i      		 					, (int)&i_LV[28],
			  90 		 | reg_direct_i      		 					, (int)&i_LV[29],

			/* 0-30k scaled values for trend plots & logs */
			  91 		 | reg_direct_i      		 					, (int)&i_FREQ_O,
			  92 		 | reg_direct_i      		 					, (int)&i_IP_O,
			  93 		 | reg_direct_i      		 					, (int)&i_RP_O,
			  94 		 | reg_direct_i      		 					, (int)&i_FREQ_W,
		 	  95 		 | reg_direct_i      		 					, (int)&i_IP_W,
			  96 		 | reg_direct_i      		 					, (int)&i_RP_W,
			  97 		 | reg_direct_i      		 					, (int)&i_WC,
			  98 		 | reg_direct_i      		 					, (int)&i_TEMP,

			/* custom scaled values for trend plots & logs */
			  99 		 | reg_direct_i      		 					, (int)&i_CCM_Level_Setpoint,
			 100 		 | reg_direct_i      		 					, (int)&i_CCM_Level,
			 101 		 | reg_direct_i      		 					, (int)&i_CCM_Pressure_Setpoint,
			 102 		 | reg_direct_i      		 					, (int)&i_CCM_Pressure,
			 103 		 | reg_direct_i      		 					, (int)&i_CCM_Gas_Valve,
			 104 		 | reg_direct_i      		 					, (int)&i_CCM_Liquid_Valve,
			 105 		 | reg_direct_i      		 					, (int)&i_CCM_Flow,
			 106 		 | reg_direct_i      		 					, (int)&i_CCM_Flow_Oil,
			 107 		 | reg_direct_i      		 					, (int)&i_CCM_Flow_Water,
			 108 		 | reg_direct_i      		 					, (int)&i_CCM_Flow_Gas,
			 
			 110 		 | reg_direct_raw_int  		 					, FIRMWARE_SUBVERSION,	// extended FW version	
			 
			 
			 /// New Gas Routine ///
			 /*
			 120		| CFGU  | reg_direct_i	| PROT_U				, (int)&bubble_new_length,
			 121		| CFGU  | reg_direct_i	| PROT_U				, (int)&pattern_new_length,
			 122		| CFGU  | reg_direct_i	| PROT_U				, (int)&boxcar_expire_val,

			 */
			 123		 | reg_direct_i	| PROT_U				, (int)&bubble.length,
			 124		 | reg_direct_i	| PROT_U				, (int)&pattern.length,
			 125		 | reg_direct_i	| PROT_U				, (int)&gas_routine_reset_needed,
			 
			 			 
			 /// END: New Gas Routine ///
			 
			 201 		 | reg_direct_i      		 					, (int)&CCM_TIME_START.tm_sec,
			 202 		 | reg_direct_i      		 					, (int)&CCM_TIME_START.tm_min,
			 203 		 | reg_direct_i      		 					, (int)&CCM_TIME_START.tm_hour,
			 204 		 | reg_direct_i      		 					, (int)&CCM_TIME_START.tm_mday,
			 205 		 | reg_direct_i      		 					, (int)&CCM_TIME_START.tm_mon,
			 206 		 | reg_direct_i      		 					, (int)&CCM_TIME_START.tm_year,

			 211 		 | reg_direct_i      		 					, (int)&CCM_TIME_STOP.tm_sec,
			 212 		 | reg_direct_i      		 					, (int)&CCM_TIME_STOP.tm_min,
			 213 		 | reg_direct_i      		 					, (int)&CCM_TIME_STOP.tm_hour,
			 214 		 | reg_direct_i      		 					, (int)&CCM_TIME_STOP.tm_mday,
			 215 		 | reg_direct_i      		 					, (int)&CCM_TIME_STOP.tm_mon,
			 216 		 | reg_direct_i      		 					, (int)&CCM_TIME_STOP.tm_year,

			 221 		 | reg_direct_i      		 					, (int)&CCM_TIME_REMAINING.tm_sec,
			 222 		 | reg_direct_i      		 					, (int)&CCM_TIME_REMAINING.tm_min,
			 223 		 | reg_direct_i      		 					, (int)&CCM_TIME_REMAINING.tm_hour,
			 224 		 | reg_direct_i      		 					, (int)&CCM_TIME_REMAINING.tm_mday,
			 225 		 | reg_direct_i      		 					, (int)&CCM_TIME_REMAINING.tm_mon,
			 226 		 | reg_direct_i      		 					, (int)&CCM_TIME_REMAINING.tm_year,

			 231 		 | reg_direct_i      		 					, (int)&CCM_TIME_ELAPSED.tm_sec,
			 232 		 | reg_direct_i      		 					, (int)&CCM_TIME_ELAPSED.tm_min,
			 233 		 | reg_direct_i      		 					, (int)&CCM_TIME_ELAPSED.tm_hour,
			 234 		 | reg_direct_i      		 					, (int)&CCM_TIME_ELAPSED.tm_mday,
			 235 		 | reg_direct_i      		 					, (int)&CCM_TIME_ELAPSED.tm_mon,
			 236 		 | reg_direct_i      		 					, (int)&CCM_TIME_ELAPSED.tm_year,

			1001 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Tint],
			1002 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Tint],
			1003 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout6],
			1004 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout6],
			1005 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout7],
			1006 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout7],
			1007 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout8],
			1008 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout8],
			1009 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout9],
			1010 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout9],

			/* Analyzer Board */
			1011 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Vref],
			1012 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Vref],
			1013 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Vinc],
			1014 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Vinc],
			1015 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Text],
			1016 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Text],
			1017 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_VTUNE],
			1018 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_VTUNE],
			1019 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_GNDSEN],
			1020 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_GNDSEN],
			1021 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Ain1],
			1022 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Ain1],
			1023 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout1],
			1024 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout1],
			1025 | CFGU  | reg_direct_i		  	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_OSCSEL],
			1026 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_OSCSEL],
			1027 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_VTUNE],
			1028 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_VTUNE],
			1029 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_TUNESEL],
			1030 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_TUNESEL],

			/* Analog I/O Board */
			1031 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Ain2],
			1032 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Ain2],
			1033 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Ain3],
			1034 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Ain3],
			1035 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Ain4],
			1036 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Ain4],
			1037 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Ain5],
			1038 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Ain5],
			1039 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout2],
			1040 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout2],
			1041 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout3],
			1042 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout3],
			1043 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout4],
			1044 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout4],
			1045 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_0[DAC_Aout5],
			1046 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&DAC_TRIM_I_1[DAC_Aout5],
			1047 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_0[ADC_Spare],
			1048 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ADC_TRIM_I_1[ADC_Spare],

			1101 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&uP.BNUM,
			1102 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&uP.REV,
			1103      	 | reg_direct_i									, (int)&uP.MONTH,
			1104      	 | reg_direct_i									, (int)&uP.DAY,
			1105      	 | reg_direct_i									, (int)&uP.YEAR,

			1111 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&COMM.BNUM,
			1112 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&COMM.REV,
			1113      	 | reg_direct_i									, (int)&COMM.MONTH,
			1114      	 | reg_direct_i									, (int)&COMM.DAY,
			1115      	 | reg_direct_i									, (int)&COMM.YEAR,

			1121 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ANALYZER.BNUM,
			1122 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&ANALYZER.REV,
			1123      	 | reg_direct_i									, (int)&ANALYZER.MONTH,
			1124      	 | reg_direct_i									, (int)&ANALYZER.DAY,
			1125      	 | reg_direct_i									, (int)&ANALYZER.YEAR,

			1131 | CFGU	 | reg_direct_i		 	  | PROT_G 				, (int)&POWER.BNUM,
			1132 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&POWER.REV,
			1133      	 | reg_direct_i									, (int)&POWER.MONTH,
			1134      	 | reg_direct_i									, (int)&POWER.DAY,
			1135      	 | reg_direct_i									, (int)&POWER.YEAR,

			1141 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ANALOGIO.BNUM,
			1142 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&ANALOGIO.REV,
			1143      	 | reg_direct_i									, (int)&ANALOGIO.MONTH,
			1144      	 | reg_direct_i									, (int)&ANALOGIO.DAY,
			1145      	 | reg_direct_i									, (int)&ANALOGIO.YEAR,

			1151 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DISPLAY.BNUM,
			1152 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&DISPLAY.REV,
			1153      	 | reg_direct_i									, (int)&DISPLAY.MONTH,
			1154      	 | reg_direct_i									, (int)&DISPLAY.DAY,
			1155      	 | reg_direct_i									, (int)&DISPLAY.YEAR,

			1161 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&MOTHERBOARD.BNUM,
			1162 | CFGU  | reg_direct_i		 	  | PROT_G 				, (int)&MOTHERBOARD.REV,
			1163 		 | reg_direct_i									, (int)&MOTHERBOARD.MONTH,
			1164 		 | reg_direct_i									, (int)&MOTHERBOARD.DAY,
			1165 		 | reg_direct_i									, (int)&MOTHERBOARD.YEAR,    

			/* COM 1 - Analyzer */             
			2101 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[0].Slave_ID,
			2102 | CFGU  | reg_indirect		 	  | PROT_U 			 	, (int)&PORTCFG[0].Baud_Rate,
			2103 | CFGU  | reg_direct_i		 	  | PROT_U     			, (int)&PORTCFG[0].Parity,
			2104 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[0].EOT_Delay,
			2105 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[0].PREFIX,
			2106 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[0].SUFFIX,
			2107 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[0].NETWDOG,
			2108 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[0].N,
			2109 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[0].STP,
			2110 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[0].N_retry,
			2111 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[0].poll_time,
			2112 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[0].timeout,

			/* COM 2 - IDEC */
			2113 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[1].Slave_ID, 			
			2114 | CFGU  | reg_indirect		 	  | PROT_U 			 	, (int)&PORTCFG[1].Baud_Rate,
			2115 | CFGU  | reg_direct_i		 	  | PROT_U     			, (int)&PORTCFG[1].Parity,
			2116 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[1].EOT_Delay,
			2117 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[1].PREFIX,
			2118 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[1].SUFFIX,
			2119 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[1].NETWDOG,
			2120 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[1].N,
			2121 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[1].STP,
			2122 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[1].N_retry,
			2123 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[1].poll_time,
			2124 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[1].timeout,

			2125 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[2].Slave_ID,
			2126 | CFGU  | reg_indirect		 	  | PROT_U 			 	, (int)&PORTCFG[2].Baud_Rate,
			2127 | CFGU  | reg_direct_i		 	  | PROT_U     			, (int)&PORTCFG[2].Parity,
			2128 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[2].EOT_Delay,
			2129 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[2].PREFIX,
			2130 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[2].SUFFIX,
			2131 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[2].NETWDOG,
			2132 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[2].N,
			2133 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[2].STP,
			2134 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[2].N_retry,
			2135 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[2].poll_time,
			2136 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[2].timeout,

			2137 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[3].Slave_ID,
			2138 | CFGU  | reg_indirect		 	  | PROT_U 			 	, (int)&PORTCFG[3].Baud_Rate,
			2139 | CFGU  | reg_direct_i		 	  | PROT_U     			, (int)&PORTCFG[3].Parity,
			2140 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[3].EOT_Delay,
			2141 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[3].PREFIX,
			2142 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[3].SUFFIX,
			2143 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[3].NETWDOG,
			2144 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[3].N,
			2145 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[3].STP,
			2146 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[3].N_retry,
			2147 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[3].poll_time,
			2148 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&PORTCFG[3].timeout,

			2149 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[4].Slave_ID,
			2150 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&NUM_PREAMBLE_SM,

			2151 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[6].Slave_ID,
			2152 | CFGU  | reg_indirect		 	  | PROT_U 			 	, (int)&PORTCFG[6].Baud_Rate,
			2153 | CFGU  | reg_direct_i		 	  | PROT_U     			, (int)&PORTCFG[6].Parity,
			2154 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[6].EOT_Delay,
			2155 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[6].PREFIX,
			2156 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[6].SUFFIX,
			2157 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[6].NETWDOG,

			2158 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[7].Slave_ID,
			2159 | CFGU  | reg_indirect		 	  | PROT_U 			 	, (int)&PORTCFG[7].Baud_Rate,
			2160 | CFGU  | reg_direct_i		 	  | PROT_U     			, (int)&PORTCFG[7].Parity,
			2161 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[7].EOT_Delay,
			2162 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[7].PREFIX,
			2163 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[7].SUFFIX,
			2164 | CFGU  | reg_indirect		 	  | PROT_U 				, (int)&PORTCFG[7].NETWDOG,

			2201 		 | reg_direct_i      		 					, (int)&ALYESKA.iWATERCUTz,
			2202 		 | reg_direct_i      		 					, (int)&ALYESKA.iWATERCUT,
			2203 		 | reg_direct_i      		 					, (int)&ALYESKA.iFLOW_RATE,
			2204 		 | reg_direct_i      		 					, (int)&ALYESKA.iTEMPERATURE,
			2205 		 | reg_direct_i      		 					, (int)&ALYESKA.iDENSITY,
			2206 		 | reg_direct_i      		 					, (int)&ALYESKA.iVISCOSITY,

			4001 | CFGU  | reg_indirect    	 	  | PROT_U 			 	, (int)&Num_Oil_Samples,
			4002 		 | reg_direct_i									, (int)&Cap_Oil.i,
			4003 		 | reg_direct_i									, (int)&Cap_Oil.Time_HH,
			4004 		 | reg_direct_i									, (int)&Cap_Oil.Time_MM,
			4005 		 | reg_direct_i									, (int)&Cap_Oil.Time_MONTH,
			4006 		 | reg_direct_i									, (int)&Cap_Oil.Time_DAY,
			4007 		 | reg_direct_i									, (int)&Cap_Oil.Time_DAY_OF_WEEK,
			4008 		 | reg_direct_i									, (int)&Cap_Oil.Time_YEAR,

			4011 | CFGU  | reg_indirect 		  | PROT_U 				, (int)&Num_Water_Samples,
			4012 		 | reg_direct_i									, (int)&Cap_Water.i,
			4013 		 | reg_direct_i									, (int)&Cap_Water.Time_HH,
			4014 		 | reg_direct_i									, (int)&Cap_Water.Time_MM,
			4015 		 | reg_direct_i									, (int)&Cap_Water.Time_MONTH,
			4016 		 | reg_direct_i									, (int)&Cap_Water.Time_DAY,
			4017 		 | reg_direct_i									, (int)&Cap_Water.Time_DAY_OF_WEEK,
			4018 		 | reg_direct_i									, (int)&Cap_Water.Time_YEAR,

			5001 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Date[0],				/* byte1 = Day, byte0 = month */
			5002 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Date[1],				/* byte1 = year-1900, byte0 = NULL */

			5003 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[0],
			5004 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[1],
			5005 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[2],
			5006 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[3],
			5007 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[4],
			5008 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[5],
			5009 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[6],
			5010 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[7],
			5011 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[8],
			5012 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[9],
			5013 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[10],
			5014 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[11],
			5015 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[12],
			5016 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[13],
			5017 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[14],
			5018 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag_Long[15],
			5019 | DIS_R | reg_direct_i  		  | PROT_U 				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			5020 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag[0],
			5021 | CFGU  | reg_direct_i    	 	  | PROT_U 			 	, (int)&STR_HART_Tag[1],
			5022 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag[2],
			5023 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Tag[3],
			5024 | DIS_R | reg_direct_i  		  | PROT_U 				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			5025 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Desc[0],
			5026 | CFGU  | reg_direct_i    	 	  | PROT_U 				, (int)&STR_HART_Desc[1],
			5027 | CFGU  | reg_direct_i    	 	  | PROT_U				, (int)&STR_HART_Desc[2],
			5028 | CFGU  | reg_direct_i    	 	  | PROT_U				, (int)&STR_HART_Desc[3],
			5029 | CFGU  | reg_direct_i    	 	  | PROT_U				, (int)&STR_HART_Desc[4],
			5030 | CFGU  | reg_direct_i    	 	  | PROT_U				, (int)&STR_HART_Desc[5],
			5031 | CFGU  | reg_direct_i    	 	  | PROT_U				, (int)&STR_HART_Desc[6],
			5032 | CFGU  | reg_direct_i    	 	  | PROT_U				, (int)&STR_HART_Desc[7],
			5033 | DIS_R | reg_direct_i  		  | PROT_U				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			5034 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[0],
			5035 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[1],
			5036 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[2],
			5037 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[3],
			5038 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[4],
			5039 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[5],
			5040 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[6],
			5041 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[7],
			5042 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[8],
			5043 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&STR_HART_Msg[9],
			5044 | CFGU  | reg_direct_i 		  | PROT_U	 			, (int)&STR_HART_Msg[10],
			5045 | CFGU  | reg_direct_i   		  | PROT_U	 			, (int)&STR_HART_Msg[11],
			5046 | CFGU  | reg_direct_i   		  | PROT_U	 			, (int)&STR_HART_Msg[12],
			5047 | CFGU  | reg_direct_i   		  | PROT_U	 			, (int)&STR_HART_Msg[13],
			5048 | CFGU  | reg_direct_i   		  | PROT_U	 			, (int)&STR_HART_Msg[14],
			5049 | CFGU  | reg_direct_i   		  | PROT_U	 			, (int)&STR_HART_Msg[15],
			5050 | DIS_R | reg_direct_i  		  | PROT_U				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			5051 		 | reg_direct_i									, (int)&U_TEMP_ASCII,
			5052 | DIS_R | reg_direct_i									, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			5053 | CFGU  | reg_direct_i     	  | PROT_G				, (int)&STR_VER[0],
			5054 | DIS_R | reg_direct_i  		  | PROT_G				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			5055 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_INIT[0],
			5056 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_INIT[1],
			5057 | DIS_R | reg_direct_i  		  | PROT_G				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			5058 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[0],
			5059 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[1],
			5060 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[2],
			5061 | CFGU  | reg_direct_i     	  | PROT_G				, (int)&STR_Copyright[3],
			5062 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[4],
			5063 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[5],
			5064 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[6],
			5065 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[7],
			5066 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[8],
			5067 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[9],
			5068 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[10],
			5069 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[11],
			5070 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[12],
			5071 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[13],
			5072 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[14],
			5073 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[15],
			5074 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[16],
			5075 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[17],
			5076 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[18],
			5077 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Copyright[19],
			5078 | DIS_R | reg_direct_i      	  | PROT_G				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			5079 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[0],
			5080 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[1],
			5081 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[2],
			5082 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[3],
			5083 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[4],
			5084 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[5],
			5085 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[6],
			5086 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[7],
			5087 | CFGU  | reg_direct_i     	  | PROT_G				, (int)&STR_Analyzer_Info[8],
			5088 | CFGU  | reg_direct_i      	  | PROT_G				, (int)&STR_Analyzer_Info[9],
			5089 | DIS_R | reg_direct_i     	  | PROT_G				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */
                                                                        
			5090 | CFGU  | reg_direct_i   		  | PROT_G				, (int)&STR_ASSY_Date[0],
			5091 | CFGU  | reg_direct_i   		  | PROT_G				, (int)&STR_ASSY_Date[1],
			5092 | CFGU  | reg_direct_i   		  | PROT_G				, (int)&STR_ASSY_Date[2],
			5093 | CFGU  | reg_direct_i   		  | PROT_G				, (int)&STR_ASSY_Date[3],
			5094 | CFGU  | reg_direct_i   		  | PROT_G				, (int)&STR_ASSY_Date[4],
			5095 | CFGU  | reg_direct_i   		  | PROT_G				, (int)&STR_ASSY_Date[5], 				/* add profile version -RS*/
			5096 | CFGU  | reg_direct_i   		  | PROT_G				, (int)&STR_ASSY_Date[6], 				/* add profile version -RS*/
			5097 | CFGU  | reg_direct_i   		  | PROT_G				, (int)&STR_ASSY_Date[7], 				/* add profile version -RS*/
			5098 | DIS_R | reg_direct_i  		  | PROT_G				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */

			6001 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[0],
			6002 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[1],
			6003 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[2],
			6004 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[3],
			6005 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[4],
			6006 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[5],
			6007 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[6],
			6008 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[7],
			6009 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[8],
			6010 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[9],
			6011 | DIS_R | reg_direct_i									, (int)&DUMMY,
			6101 	 	 | reg_direct_i									, (int)&MB_LCD_DISPLAY[10],
			6102 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[11],
			6103 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[12],
			6104 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[13],
			6105 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[14],
			6106 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[15],
			6107 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[16],
			6108 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[17],
			6109 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[18],
			6110 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[19],
			6111 | DIS_R | reg_direct_i									, (int)&DUMMY,
			6201 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[20],
			6202 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[21],
			6203 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[22],
			6204 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[23],
			6205 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[24],
			6206 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[25],
			6207 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[26],
			6208 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[27],
			6209 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[28],
			6210 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[29],
			6211 | DIS_R | reg_direct_i									, (int)&DUMMY,
			6301 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[30],
			6302 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[31],
			6303 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[32],
			6304 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[33],
			6305 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[34],
			6306 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[35],
			6307 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[36],
			6308 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[37],
			6309 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[38],
			6310 		 | reg_direct_i									, (int)&MB_LCD_DISPLAY[39],
			6311 | DIS_R | reg_direct_i									, (int)&DUMMY,

			8001 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[0].watercut,
			8002 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[0].T,
			8003 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[0].pressure,
			8004 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[0].density,
			8005 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[0].flow_class,
			8006 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[0].flow_unit,
			8007 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[0].accum_unit,
			8008 		 | reg_indirect_calc_unit						, (int)&FC[0].density_oil,
			8009 		 | reg_indirect_calc_unit						, (int)&FC[0].density_oilST,
			8010 		 | reg_indirect_calc_unit						, (int)&FC[0].density_water,
			8011 		 | reg_indirect_calc_unit						, (int)&FC[0].density_waterST,
			8012 | CFGU	 | reg_direct_i		 	  | PROT_U 				, (int)&FC[0].PULSES_PER_ACCUM_UNIT,
			8013 | CFGU	 | reg_direct_i    	 	  | PROT_U 			 	, (int)&FC[0].API_TABLE,

			8021 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[1].watercut,
			8022 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[1].T,
			8023 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[1].pressure,
			8024 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[1].density,
			8025 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[1].flow_class,
			8026 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[1].flow_unit,
			8027 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[1].accum_unit,
			8028 		 | reg_indirect_calc_unit						, (int)&FC[1].density_oil,
			8029 		 | reg_indirect_calc_unit						, (int)&FC[1].density_oilST,
			8030 		 | reg_indirect_calc_unit						, (int)&FC[1].density_water,
			8031 		 | reg_indirect_calc_unit						, (int)&FC[1].density_waterST,
			8032 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&FC[1].PULSES_PER_ACCUM_UNIT,
			8033 | CFGU  | reg_direct_i    	 	  | PROT_U 			 	, (int)&FC[1].API_TABLE,

			8041 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[2].watercut,
			8042 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[2].T,
			8043 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[2].pressure,
			8044 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&FC[2].density,
			8045 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[2].flow_class,
			8046 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[2].flow_unit,
			8047 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[2].accum_unit,
			8048 		 | reg_indirect_calc_unit						, (int)&FC[2].density_oil,
			8049 		 | reg_indirect_calc_unit						, (int)&FC[2].density_oilST,
			8050 		 | reg_indirect_calc_unit						, (int)&FC[2].density_water,
			8051 		 | reg_indirect_calc_unit						, (int)&FC[2].density_waterST,
			8052 | CFGU  | reg_direct_i		 	  | PROT_U 				, (int)&FC[2].PULSES_PER_ACCUM_UNIT,
			8053 | CFGU  | reg_direct_i    	 	  | PROT_U 			 	, (int)&FC[2].API_TABLE,

			8101 | CFGU  | reg_indirect_calc_unit | PROT_U 				, (int)&CCM_VESSEL_PRESSURE[0],
			8102 | CFGU  | reg_indirect_calc_unit | PROT_U 				, (int)&CCM_VESSEL_PRESSURE[1],

			8103 		 | reg_direct_i 								, (int)&COR[0].u_v,
			8104 		 | reg_direct_i 								, (int)&COR[0].u_vfr,
			8105 		 | reg_direct_i 								, (int)&COR[0].u_m,
			8106 		 | reg_direct_i 								, (int)&COR[0].u_mfr,
			8107 		 | reg_direct_i 								, (int)&COR[0].u_density,
			8108 		 | reg_direct_i 								, (int)&COR[1].u_v,
			8109 		 | reg_direct_i 								, (int)&COR[1].u_vfr,
			8110 		 | reg_direct_i 								, (int)&COR[1].u_m,
			8111 		 | reg_direct_i 								, (int)&COR[1].u_mfr,
			8112 		 | reg_direct_i 								, (int)&COR[1].u_density,
			8113 		 | reg_direct_i 								, (int)&COR[2].u_v,
			8114 		 | reg_direct_i 								, (int)&COR[2].u_vfr,
			8115 		 | reg_direct_i 								, (int)&COR[2].u_m,
			8116 		 | reg_direct_i 								, (int)&COR[2].u_mfr,
			8117 		 | reg_direct_i 								, (int)&COR[2].u_density,
			8118 		 | reg_direct_i 								, (int)&COR[3].u_v,
			8119 		 | reg_direct_i 								, (int)&COR[3].u_vfr,
			8120 		 | reg_direct_i 								, (int)&COR[3].u_m,
			8121 		 | reg_direct_i 								, (int)&COR[3].u_mfr,
			8122 		 | reg_direct_i 								, (int)&COR[3].u_density,

			8123 		 | reg_indirect_calc_unit			 			, (int)&COR[0].mcf,
			8124 		 | reg_indirect_calc_unit			 			, (int)&COR[1].mcf,
			8125 		 | reg_indirect_calc_unit			 			, (int)&COR[2].mcf,
			8126 		 | reg_indirect_calc_unit						, (int)&COR[3].mcf,

			8131 		 | reg_direct_i									, (int)&PRESS[0].u_DP,
			8132 		 | reg_direct_i									, (int)&PRESS[0].u_SP,
			8133 		 | reg_direct_i									, (int)&PRESS[0].u_PT,

			8141 		 | reg_direct_i									, (int)&PRESS[1].u_DP,
			8142 		 | reg_direct_i									, (int)&PRESS[1].u_SP,
			8143 		 | reg_direct_i									, (int)&PRESS[1].u_PT,

			8151 		 | reg_direct_i									, (int)&PRESS[2].u_DP,
			8152 		 | reg_direct_i									, (int)&PRESS[2].u_SP,
			8153 		 | reg_direct_i									, (int)&PRESS[2].u_PT,

			8161 | CFGU  | reg_indirect_calc_unit | PROT_U 				, (int)&CCM_GAS_TOTAL,
			8162 | CFGU  | reg_indirect_calc_unit | PROT_U 				, (int)&CCM_GAS_FLOW,
			8163 | CFGU  | reg_indirect_calc_unit | PROT_U 				, (int)&CCM_GAS_DENSITY,
			8164 | CFGU  | reg_indirect_calc_unit | PROT_U 				, (int)&CCM_GAS_TEMPERATURE,  			/*Gas Temperature RS*/
			8165 | CFGU  | reg_indirect_calc_unit | PROT_U 				, (int)&CCM_GAS_DENSITY_INPUT,			/*Gas Density Input RS*/

			8201 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[0].class,
			8202 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[0].unit,
			8203 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[1].class,
			8204 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[1].unit,
			8205 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[2].class,
			8206 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[2].unit,
			8207 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[3].class,
			8208 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[3].unit,
			8209 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[4].class,
			8210 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[4].unit,
			8211 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[0].class,
			8212 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[0].unit,
			8213 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[1].class,
			8214 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[1].unit,
			8215 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[2].class,
			8216 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[2].unit,
			8217 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[3].class,
			8218 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[3].unit,
			8219 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[4].class,
			8220 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[4].unit,
			8221 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[5].class,
			8222 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[5].unit,
			8223 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[6].class,
			8224 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[6].unit,
			8225 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[7].class,
			8226 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[7].unit,
			8227 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[8].class,
			8228 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[8].unit,
			8229 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&RLY[0].class,
			8230 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&RLY[0].unit,
			8231 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&RLY[1].class,
			8232 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&RLY[1].unit,

			8301 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[0].v,
			8302 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[1].v,
			8303 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[2].v,
			8304 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[3].v,
			8305 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[4].v,
			8306 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[5].v,
			8307 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[6].v,
			8308 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[7].v,
			8309 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AO[8].v,

			8401 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[0].v,
			8402 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[1].v,
			8403 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[2].v,
			8404 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[3].v,
			8405 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&AI[4].v,

			8501 | CFGU  | reg_direct_regvect 	  | PROT_U	 			, (int)&RLY[0].v,
			8502 | CFGU  | reg_direct_regvect 	  | PROT_U	 			, (int)&RLY[1].v,
			

			8601 | reg_direct_regvect	  | PROT_U				, (int)&FC[0].pulse_v,
			8602 | reg_direct_regvect	  | PROT_U				, (int)&FC[1].pulse_v,
			8603 | reg_direct_regvect	  | PROT_U				, (int)&FC[2].pulse_v,
			
			/* Need to add to CSV
			8601 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[0].pulse_v,
			8602 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[1].pulse_v,
			8603 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[2].pulse_v,
			*/
			
			8611 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[0].pulse_class,
			8612 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[0].pulse_unit,
			8613 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[1].pulse_class,
			8614 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[1].pulse_unit,
			8615 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[2].pulse_class,
			8616 | CFGU  | reg_direct_regvect	  | PROT_U				, (int)&FC[2].pulse_unit,
			
			8650 | CFGU  | reg_direct_i	  		  | PROT_U				, (int)&LOG_STATUS,
			
			
			9000 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[0],						/* mirror of next value */
			9001 		 | reg_direct_i	 		  | PROT_U				, (int)&SPAD[0],						/* mirror of previous value */
			9002 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[1],
			9003 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[2],
			9004 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[3],
			9005 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[4],
			9006 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[5],
			9007 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[6],
			9008 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[7],
			9009 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[8],
			9010 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[9],
			9011 		 | reg_direct_i	 		  | PROT_U				, (int)&SPAD[10],
			9012 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[11],
			9013 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[12],
			9014 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[13],
			9015 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[14],
			9016 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[15],
			9017 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[16],
			9018 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[17],
			9019 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[18],
			9020 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[19],
			9021 		 | reg_direct_i	 		  | PROT_U				, (int)&SPAD[20],
			9022 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[21],
			9023 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[22],
			9024 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[23],
			9025 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[24],
			9026 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[25],
			9027 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[26],
			9028 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[27],
			9029 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[28],
			9030 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[29],
			9031 		 | reg_direct_i	 		  | PROT_U				, (int)&SPAD[30],
			9032 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[31],
			9033 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[32],
			9034 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[33],
			9035 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[34],
			9036 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[35],
			9037 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[36],
			9038 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[37],
			9039 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[38],
			9040 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[39],
			9041 		 | reg_direct_i	 		  | PROT_U				, (int)&SPAD[40],
			9042 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[41],
			9043 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[42],
			9044 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[43],
			9045 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[44],
			9046 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[45],
			9047 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[46],
			9048 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[47],
			9049 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[48],
			9050 		 | reg_direct_i			  | PROT_U				, (int)&SPAD[49],

			9101 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[0],
			9102 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[1],
			9103 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[2],
			9104 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[3],
			9105 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[4],
			9106 | CFGU  | reg_direct_i    		  | PROT_U	 			, (int)&REG_USER_DEFINE[5],
			9107 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[6],
			9108 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[7],
			9109 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[8],
			9110 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[9],
			9111 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[10],
			9112 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[11],
			9113 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[12],
			9114 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[13],
			9115 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[14],
			9116 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[15],
			9117 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[16],
			9118 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[17],
			9119 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[18],
			9120 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&REG_USER_DEFINE[19],

			9200 		 | reg_direct_regvect 	  | PROT_U	 			, (int)&VAR_SELECT_DVIN,
			9201 		 | reg_direct_regvect 	  | PROT_U	 			, (int)&VAR_SELECT_DV,
			9202 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[0],
			9203 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[1],
			9204 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[2],
			9205 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[3],
			9206 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[4],
			9207 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[5],
			9208 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[6],
			9209 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[7],
			9210 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[8],
			9211 		 | reg_direct_i      	 						, (int)&STR_VAR_DESC[9],
			9212 | DIS_R | reg_direct_i									, (int)&DUMMY,
			9213 		 | reg_direct_i      	 						, (int)&STR_VAR_UNIT[0],
			9214 		 | reg_direct_i      	 						, (int)&STR_VAR_UNIT[1],
			9215 		 | reg_direct_i      	 						, (int)&STR_VAR_UNIT[2],
			9216 		 | reg_direct_i      	 						, (int)&STR_VAR_UNIT[3],
			9217 | DIS_R | reg_direct_i									, (int)&DUMMY,

			9301 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[0],
			9302 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[1],
			9303 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[2],
			9304 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[3],
			9305 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[4],
			9306 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[5],
			9307 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[6],
			9308 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[7],
			9309 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[8],
			9310 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[9],
			9311 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[10],
			9312 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[11],
			9313 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[12],
			9314 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[13],
			9315 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[14],
			9316 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[15],
			9317 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[16],
			9318 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[17],
			9319 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[18],
			9320 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[19],
			9321 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[20],
			9322 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[21],
			9323 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[22],
			9324 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[23],
			9325 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[24],
			9326 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[25],
			9327 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[26],
			9328 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[27],
			9329 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[28],
			9330 | CFGU  | reg_direct_i    	 	  | PROT_U	 			, (int)&LOG_VAR_SEL[29],

			/****************************************************************************************************/
			/* Special Region for Research Analyzers                                                            */
			/****************************************************************************************************/
			9401 | CFGU  | reg_indirect_class	  | PROT_U				, (int)&REG_WATERCUT,
			9402 | CFGU  | reg_indirect_calc_unit | PROT_U				, (int)&REG_WATERCUT,
			9403 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[0],
			9404 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[1],
			9405 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[2],
			9406 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[3],
			9407 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[4],
			9408 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[5],
			9409 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[6],
			9410 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[7],
			9411 | CFGU  | reg_direct_i		 	  | PROT_U				, (int)&STR_Analyzer_PV[8],
			9412 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_PV[9],
			9413 | DIS_R | reg_direct_i  		  | PROT_U				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */
			9414 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_UNIT[0],
			9415 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_UNIT[1],
			9416 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_UNIT[2],
			9417 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&STR_Analyzer_UNIT[3],
			9418 | DIS_R | reg_direct_i  		  | PROT_U				, (int)&DUMMY, 							/* because on char input, the IDEC wants a NULL at the end */
			/****************************************************************************************************/

			9801 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[0].AUTHORIZATION_CODE1,
			9802 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[0].AUTHORIZATION_CODE2,
			9803 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[0].AUTHORIZATION_CODE3,
			9804 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[0].AUTHORIZATION_CODE4,
			9805 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[1].AUTHORIZATION_CODE1,
			9806 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[1].AUTHORIZATION_CODE2,
			9807 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[1].AUTHORIZATION_CODE3,
			9808 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[1].AUTHORIZATION_CODE4,
			9809 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[2].AUTHORIZATION_CODE1,
			9810 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[2].AUTHORIZATION_CODE2,
			9811 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[2].AUTHORIZATION_CODE3,
			9812 | CFGU  | reg_direct_i      	  | PROT_U				, (int)&FC[2].AUTHORIZATION_CODE4,

			9901 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[0],						/* SA1 */
			9902 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[1],
			9903 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[2],						/* SA2 */
			9904 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[3],
			9905 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[4],						/* SA3 */
			9906 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[5],
			9907 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[6],
			9908 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[7],
			9909 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[8],						/* SA4 */
			9910 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[9],
			9911 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[10],
			9912 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[11],
			9913 		 | reg_direct_regvect 	  | EN_W  	 	  		, (int)&IDEC_SA[12],					/* WDOG */

			9951 		 | reg_direct_i      	 						, (int)&CRC_BOOT,
			9952 		 | reg_direct_i      	 						, (int)&CRC_FAST,
			9953 		 | reg_direct_i      	 						, (int)&CRC_APP,
			9954 		 | reg_direct_i      	 						, (int)&CRC_INIT,

			  /* stored passwords, can be changed here */
			9980 | CFGU  | reg_direct_i 		  | DIS_R | PROT_U 		, (int)&REG_PW[0],
			9981 | CFGU  | reg_direct_i 		  | DIS_R | PROT_G   	, (int)&REG_PW[1],
			9982 | CFGU  | reg_direct_i 		  | DIS_R | PROT_U   	, (int)&REG_PW[2],						/* MSVE - WPROT     */
			9983 | CFGU  | reg_direct_i 		  | DIS_R | PROT_U   	, (int)&REG_PW[3],						/* MSVE - TECH MODE */
			9984 | CFGU  | reg_direct_i 		  | DIS_R | PROT_U 		, (int)&REG_PW[4],      				/* password of heuristic routine RS*/

			  /* enter password here to unlock  */
			9990 		 | reg_indirect		 	  | DIS_R | EN_W		, (int)&REG_LOCK[0],					/* will auto-save the config */
			9991 		 | reg_indirect		 	  | DIS_R | EN_W		, (int)&REG_LOCK[1],
			9992 		 | reg_indirect		 	  | DIS_R | EN_W		, (int)&REG_LOCK[2],					/* MSVE - WPROT     */
			9993 		 | reg_indirect		 	  | DIS_R | EN_W		, (int)&REG_LOCK[3],					/* MSVE - TECH MODE */
			9994 		 | reg_indirect		 	  | DIS_R | EN_W		, (int)&REG_LOCK[4],    				/* lock heuristic routine RS*/

			   0														, 0};									/* END OF TABLE */

#define MB_ADDR_FC 20000
#pragma DATA_SECTION(mb_fc,"TABLES")
const int mb_fc[][2] = {
			   1 		 | reg_indirect			  | PROT_U				, (int)&FC[0].watercut,
			   3 		 | reg_indirect			  | PROT_U				, (int)&FC[0].T,
			   5 		 | reg_indirect			  | PROT_U				, (int)&FC[0].pressure,
			   7 		 | reg_indirect			  | PROT_U				, (int)&FC[0].density,
			   9 		 | reg_direct_f									, (int)&FC[0].density_PDI_corrected,
			  11 		 | reg_indirect			  | PROT_U				, (int)&FC[0].salinity,
			  13 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&FC[0].Meter_Factor,
			  15 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&FC[0].Shrinkage,
			  17 		 | reg_indirect			  | PROT_U				, (int)&FC[0].density_oil,
			  19 		 | reg_indirect			  | PROT_U				, (int)&FC[0].density_oilST,
			  21 		 | reg_indirect			  | PROT_U				, (int)&FC[0].density_water,
			  23 		 | reg_indirect			  | PROT_U				, (int)&FC[0].density_waterST,
			  25 		 | reg_direct_f									, (int)&FC[0].VCFo,
			  27 		 | reg_direct_f									, (int)&FC[0].VCFw,
			  29 		 | reg_direct_f									, (int)&FC[0].net_watercut,
			  31 		 | reg_indirect			  | PROT_U				, (int)&FC[0].FLOW_TOTAL,
			  33 		 | reg_indirect									, (int)&FC[0].FLOW_OIL,
			  35 		 | reg_indirect									, (int)&FC[0].FLOW_WATER,
			  37 		 | reg_indirect									, (int)&FC[0].GROSS_TOTAL,
			  39 		 | reg_indirect									, (int)&FC[0].GROSS_OIL,
			  41 		 | reg_indirect									, (int)&FC[0].GROSS_WATER,
			  43 		 | reg_direct_i	   								, (int)&FC[0].PULSE_COUNTER,
			  45 		 | reg_indirect									, (int)&FC[0].PULSE_FLOW,
			  47 		 | reg_indirect									, (int)&FC[0].PULSE_TOTAL,
			  49 		 | reg_indirect									, (int)&FC[0].NET_FLOW_TOTAL,
			  51 		 | reg_indirect									, (int)&FC[0].NET_FLOW_OIL,
			  53 		 | reg_indirect									, (int)&FC[0].NET_FLOW_WATER,
			  55 		 | reg_indirect									, (int)&FC[0].NET_TOTAL,
			  57 		 | reg_indirect									, (int)&FC[0].NET_OIL,
			  59 		 | reg_indirect									, (int)&FC[0].NET_WATER,
			  61 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&FC[0].a,
			  63 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&FC[0].density_adj,
			  65 		 | reg_direct_i									, (int)&FC[0].PULSE_DELTA,
			  67 		 | reg_direct_f									, (int)&FC[0].Dadj,
			  69 		 | reg_direct_f									, (int)&FC[0].net_watercut_mass,
			  71 | CFGU  | reg_direct_f		 	  | PROT_G 				, (int)&FC[0].PULSE_FACTOR,
			  73 		 | reg_indirect			  | PROT_U				, (int)&FC[0].AVG_GROSS_TOTAL,
			  75 		 | reg_indirect									, (int)&FC[0].AVG_NET_TOTAL,

			 201 		 | reg_indirect			  | PROT_U				, (int)&FC[1].watercut,
			 203 		 | reg_indirect			  | PROT_U				, (int)&FC[1].T,
			 205 		 | reg_indirect			  | PROT_U				, (int)&FC[1].pressure,
			 207 		 | reg_indirect			  | PROT_U				, (int)&FC[1].density,
			 209 		 | reg_direct_f									, (int)&FC[1].density_PDI_corrected,
			 211 		 | reg_indirect			  | PROT_U				, (int)&FC[1].salinity,
			 213 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&FC[1].Meter_Factor,
			 215 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&FC[1].Shrinkage,
			 217 		 | reg_indirect			  | PROT_U				, (int)&FC[1].density_oil,
			 219 		 | reg_indirect			  | PROT_U				, (int)&FC[1].density_oilST,
			 221 		 | reg_indirect			  | PROT_U				, (int)&FC[1].density_water,
			 223 		 | reg_indirect			  | PROT_U				, (int)&FC[1].density_waterST,
			 225 		 | reg_direct_f									, (int)&FC[1].VCFo,
			 227 		 | reg_direct_f									, (int)&FC[1].VCFw,
			 229 		 | reg_direct_f									, (int)&FC[1].net_watercut,
			 231 		 | reg_indirect			  | PROT_U				, (int)&FC[1].FLOW_TOTAL,
			 233 		 | reg_indirect									, (int)&FC[1].FLOW_OIL,
			 235 		 | reg_indirect									, (int)&FC[1].FLOW_WATER,
			 237 		 | reg_indirect									, (int)&FC[1].GROSS_TOTAL,
			 239 		 | reg_indirect									, (int)&FC[1].GROSS_OIL,
			 241 		 | reg_indirect									, (int)&FC[1].GROSS_WATER,
			 243 		 | reg_direct_i	   								, (int)&FC[1].PULSE_COUNTER,
			 245 		 | reg_indirect									, (int)&FC[1].PULSE_FLOW,
			 247 		 | reg_indirect									, (int)&FC[1].PULSE_TOTAL,
			 249 		 | reg_indirect									, (int)&FC[1].NET_FLOW_TOTAL,
			 251 		 | reg_indirect									, (int)&FC[1].NET_FLOW_OIL,
			 253 		 | reg_indirect									, (int)&FC[1].NET_FLOW_WATER,
			 255 		 | reg_indirect									, (int)&FC[1].NET_TOTAL,
			 257 		 | reg_indirect									, (int)&FC[1].NET_OIL,
			 259 		 | reg_indirect									, (int)&FC[1].NET_WATER,
			 261 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&FC[1].a,
			 263 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&FC[1].density_adj,
			 265 		 | reg_direct_i									, (int)&FC[1].PULSE_DELTA,
			 267 		 | reg_direct_f									, (int)&FC[1].Dadj,
			 269 		 | reg_direct_f									, (int)&FC[1].net_watercut_mass,
			 271 | CFGU  | reg_direct_f		 	  | PROT_G				, (int)&FC[1].PULSE_FACTOR,

			 
			 401 		 | reg_indirect			  | PROT_U				, (int)&FC[2].watercut,
			 403 		 | reg_indirect			  | PROT_U				, (int)&FC[2].T,
			 405 		 | reg_indirect			  | PROT_U				, (int)&FC[2].pressure,
			 407 		 | reg_indirect			  | PROT_U				, (int)&FC[2].density,
			 409 		 | reg_direct_f									, (int)&FC[2].density_PDI_corrected,
			 411 		 | reg_indirect			  | PROT_U				, (int)&FC[2].salinity,
			 413 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&FC[2].Meter_Factor,
			 415 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&FC[2].Shrinkage,
			 417 		 | reg_indirect			  | PROT_U				, (int)&FC[2].density_oil,
			 419 		 | reg_indirect			  | PROT_U				, (int)&FC[2].density_oilST,
			 421 		 | reg_indirect			  | PROT_U				, (int)&FC[2].density_water,
			 423 		 | reg_indirect			  | PROT_U				, (int)&FC[2].density_waterST,
			 425 		 | reg_direct_f									, (int)&FC[2].VCFo,
			 427 		 | reg_direct_f									, (int)&FC[2].VCFw,
			 429 		 | reg_direct_f									, (int)&FC[2].net_watercut,
			 431 		 | reg_indirect			  | PROT_U				, (int)&FC[2].FLOW_TOTAL,
			 433 		 | reg_indirect									, (int)&FC[2].FLOW_OIL,
			 435 		 | reg_indirect									, (int)&FC[2].FLOW_WATER,
			 437 		 | reg_indirect									, (int)&FC[2].GROSS_TOTAL,
			 439 		 | reg_indirect									, (int)&FC[2].GROSS_OIL,
			 441 		 | reg_indirect									, (int)&FC[2].GROSS_WATER,
			 443 		 | reg_direct_i	   								, (int)&FC[2].PULSE_COUNTER,
			 445 		 | reg_indirect									, (int)&FC[2].PULSE_FLOW,
			 447 		 | reg_indirect									, (int)&FC[2].PULSE_TOTAL,
			 449 		 | reg_indirect									, (int)&FC[2].NET_FLOW_TOTAL,
			 451 		 | reg_indirect									, (int)&FC[2].NET_FLOW_OIL,
			 453 		 | reg_indirect									, (int)&FC[2].NET_FLOW_WATER,
			 455 		 | reg_indirect									, (int)&FC[2].NET_TOTAL,
			 457 		 | reg_indirect									, (int)&FC[2].NET_OIL,
			 459 		 | reg_indirect									, (int)&FC[2].NET_WATER,
			 461 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&FC[2].a,
			 463 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&FC[2].density_adj,
			 465 		 | reg_direct_i									, (int)&FC[2].PULSE_DELTA,
			 467 		 | reg_direct_f									, (int)&FC[2].Dadj,
			 469 		 | reg_direct_f									, (int)&FC[2].net_watercut_mass,
			 471 | CFGU  | reg_direct_f		 	  | PROT_G 				, (int)&FC[2].PULSE_FACTOR,

			 501 		 | reg_direct_i     		 					, (int)&il_LV[0],
			 503 		 | reg_direct_i      		 					, (int)&il_LV[1],
			 505 		 | reg_direct_i      		 					, (int)&il_LV[2],
			 507 		 | reg_direct_i      		 					, (int)&il_LV[3],
			 509 		 | reg_direct_i      		 					, (int)&il_LV[4],
			 511 		 | reg_direct_i      		 					, (int)&il_LV[5],
			 513 		 | reg_direct_i      		 					, (int)&il_LV[6],
			 515 		 | reg_direct_i      		 					, (int)&il_LV[7],
			 517 		 | reg_direct_i      		 					, (int)&il_LV[8],
			 519 		 | reg_direct_i      		 					, (int)&il_LV[9],
			 521 		 | reg_direct_i      		 					, (int)&il_LV[10],
			 523 		 | reg_direct_i      		 					, (int)&il_LV[11],
			 525 		 | reg_direct_i      		 					, (int)&il_LV[12],
			 527 		 | reg_direct_i      		 					, (int)&il_LV[13],
			 529 		 | reg_direct_i      		 					, (int)&il_LV[14],
			 531 		 | reg_direct_i      		 					, (int)&il_LV[15],
			 533 		 | reg_direct_i      		 					, (int)&il_LV[16],
			 535 		 | reg_direct_i      		 					, (int)&il_LV[17],
			 537 		 | reg_direct_i      		 					, (int)&il_LV[18],
			 539 		 | reg_direct_i      		 					, (int)&il_LV[19],
			 541 		 | reg_direct_i      		 					, (int)&il_LV[20],
			 543 		 | reg_direct_i      		 					, (int)&il_LV[21],
			 545 		 | reg_direct_i      		 					, (int)&il_LV[22],
			 547 		 | reg_direct_i      		 					, (int)&il_LV[23],
			 549 		 | reg_direct_i      		 					, (int)&il_LV[24],
			 551 		 | reg_direct_i      		 					, (int)&il_LV[25],
			 553 		 | reg_direct_i      		 					, (int)&il_LV[26],
			 555 		 | reg_direct_i      		 					, (int)&il_LV[27],
			 557 		 | reg_direct_i      		 					, (int)&il_LV[28],
			 559 		 | reg_direct_i      		 					, (int)&il_LV[29],

			 601 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&CCM_PURGE,
			 603 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&CCM_DURATION,
			 605 		 | reg_direct_f									, (int)&CCM_REMAINING,
			 607 		 | reg_indirect									, (int)&CCM_GAS_TOTAL,
			 609 		 | reg_indirect									, (int)&CCM_GAS_FLOW,

			 611 		 | reg_indirect									, (int)&CCM_VESSEL_LEVEL[0],
			 613 		 | reg_indirect									, (int)&CCM_VESSEL_PRESSURE[0],
			 615 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&CCM_SETPOINT_LEVEL[0],
			 617 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&CCM_SETPOINT_PRESSURE[0],
			 619 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&CCM_VESSEL_MAX_LEVEL[0],
                                                                        
			 621 		 | reg_indirect									, (int)&CCM_VESSEL_LEVEL[1],
			 623 		 | reg_indirect									, (int)&CCM_VESSEL_PRESSURE[1],
			 625 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&CCM_SETPOINT_LEVEL[1],
			 627 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&CCM_SETPOINT_PRESSURE[1],
			 629 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&CCM_VESSEL_MAX_LEVEL[1],

			 631 		 | reg_direct_f									, (int)&CCM_24_GAS,
			 633 		 | reg_direct_f									, (int)&CCM_24_TOTAL,
			 635 		 | reg_direct_f									, (int)&CCM_24_OIL,
			 637 		 | reg_direct_f									, (int)&CCM_24_WATER,
			 639 		 | reg_indirect									, (int)&CCM_GAS_DENSITY, 

			 641 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&CCM_SETPOINT_PRESSURE_MAX_OVER,
                                                                        
             643 		 | reg_indirect									, (int)&CCM_GAS_TEMPERATURE,  			/*Gas Temperature RS*/
             645 		 | reg_indirect		 	  | PROT_U				, (int)&CCM_GAS_DENSITY_INPUT,  		/*Gas Density Input RS*/
             647 		 | reg_indirect		 	  	 					, (int)&CCM_GAS_LIVE_DENSITY,			
             
			 701 		 | reg_direct_f      		 					, (int)&f_LV[0],
			 703 		 | reg_direct_f      		 					, (int)&f_LV[1],
			 705 		 | reg_direct_f      		 					, (int)&f_LV[2],
			 707 		 | reg_direct_f      		 					, (int)&f_LV[3],
			 709 		 | reg_direct_f      		 					, (int)&f_LV[4],
			 711 		 | reg_direct_f      		 					, (int)&f_LV[5],
			 713 		 | reg_direct_f      		 					, (int)&f_LV[6],
			 715 		 | reg_direct_f      		 					, (int)&f_LV[7],
			 717 		 | reg_direct_f      		 					, (int)&f_LV[8],
			 719 		 | reg_direct_f      		 					, (int)&f_LV[9],
			 721 		 | reg_direct_f      		 					, (int)&f_LV[10],
			 723 		 | reg_direct_f      		 					, (int)&f_LV[11],
			 725 		 | reg_direct_f      		 					, (int)&f_LV[12],
			 727 		 | reg_direct_f      		 					, (int)&f_LV[13],
			 729 		 | reg_direct_f      		 					, (int)&f_LV[14],
			 731 		 | reg_direct_f      		 					, (int)&f_LV[15],
			 733 		 | reg_direct_f      		 					, (int)&f_LV[16],
			 735 		 | reg_direct_f      		 					, (int)&f_LV[17],
			 737 		 | reg_direct_f      		 					, (int)&f_LV[18],
			 739 		 | reg_direct_f      		 					, (int)&f_LV[19],
			 741 		 | reg_direct_f      		 					, (int)&f_LV[20],
			 743 		 | reg_direct_f      		 					, (int)&f_LV[21],
			 745 		 | reg_direct_f      		 					, (int)&f_LV[22],
			 747 		 | reg_direct_f      		 					, (int)&f_LV[23],
			 749 		 | reg_direct_f      		 					, (int)&f_LV[24],
			 751 		 | reg_direct_f      		 					, (int)&f_LV[25],
			 753 		 | reg_direct_f      		 					, (int)&f_LV[26],
			 755 		 | reg_direct_f      		 					, (int)&f_LV[27],
			 757 		 | reg_direct_f      		 					, (int)&f_LV[28],
			 759 		 | reg_direct_f      		 					, (int)&f_LV[29],

			/* CCM LIQUID Coriolis */
			 801 		 | reg_direct_f									, (int)&COR[0].diag,
			 803 		 | reg_direct_f									, (int)&COR[0].mfr,
			 805 		 | reg_direct_f									, (int)&COR[0].density,
			 807 		 | reg_direct_f									, (int)&COR[0].T,
			 809 		 | reg_direct_f									, (int)&COR[0].vfr,
			 811 	 	 | reg_direct_f									, (int)&COR[0].visc,
			 813 		 | reg_direct_f									, (int)&COR[0].press,
			 815 		 | reg_direct_f									, (int)&COR[0].mass_total,
			 817 		 | reg_direct_f									, (int)&COR[0].volume_total,
			 819 		 | reg_direct_f									, (int)&COR[0].mass_inv,
			 821 		 | reg_direct_f									, (int)&COR[0].volume_inv,
			 823 		 | reg_direct_f									, (int)&COR[0].raw_tube_freq,
			 825 		 | reg_direct_f									, (int)&COR[0].left_pickup_value,
			 827 		 | reg_direct_f									, (int)&COR[0].right_pickup_value,
			 829 		 | reg_direct_f									, (int)&COR[0].drive_gain,
			 831 		 | reg_indirect		 	  | PROT_U				, (int)&COR[0].damp_flow_rate,
			 833 		 | reg_indirect		 	  | PROT_U				, (int)&COR[0].damp_density,
			 835 		 | reg_indirect		 	  | PROT_U				, (int)&COR[0].mfr_cutoff,				/* Mass Flow Min */
			 837 		 | reg_indirect		 	  | PROT_U				, (int)&COR[0].vfr_cutoff,
			 839 		 | reg_indirect		 	  | PROT_U				, (int)&COR[0].mcf,
             841 		 | reg_indirect		 	  | PROT_U				, (int)&COR[0].address, 				/*MM initial Slave address config RS*/
             843 		 | reg_indirect		 	  | PROT_U				, (int)&COR[0].mass_unit, 				/*Config mass flow unit RS*/
             845 		 | reg_indirect		 	  | PROT_U				, (int)&COR[0].density_cutoff, 			/*Config density cutoff RS*/
           
             
             901 		 | reg_indirect		 	  | PROT_U				, (int)&COR[4].address, 				/*MM initial Slave address config RS*/
 
             
			/* CCM GAS Coriolis */
			1001 		 | reg_direct_f									, (int)&COR[1].diag,
			1003 		 | reg_direct_f									, (int)&COR[1].mfr,
			1005 		 | reg_direct_f									, (int)&COR[1].density,
			1007 		 | reg_direct_f									, (int)&COR[1].T,
			1009 		 | reg_direct_f									, (int)&COR[1].vfr,
			1011 		 | reg_direct_f									, (int)&COR[1].visc,
			1013 		 | reg_direct_f									, (int)&COR[1].press,
			1015 		 | reg_direct_f									, (int)&COR[1].mass_total,
			1017 		 | reg_direct_f									, (int)&COR[1].volume_total,
			1019 		 | reg_direct_f									, (int)&COR[1].mass_inv,
			1021 		 | reg_direct_f									, (int)&COR[1].volume_inv,
			1023 		 | reg_direct_f									, (int)&COR[1].raw_tube_freq,
			1025 		 | reg_direct_f									, (int)&COR[1].left_pickup_value,
			1027 		 | reg_direct_f									, (int)&COR[1].right_pickup_value,
			1029 		 | reg_direct_f									, (int)&COR[1].drive_gain,
			1031 		 | reg_indirect		 	  | PROT_U				, (int)&COR[1].damp_flow_rate,
			1033 		 | reg_indirect		 	  | PROT_U				, (int)&COR[1].damp_density,
			1035 		 | reg_indirect		 	  | PROT_U				, (int)&COR[1].mfr_cutoff,
			1037 		 | reg_indirect		 	  | PROT_U				, (int)&COR[1].vfr_cutoff,
			1039 		 | reg_indirect		 	  | PROT_U				, (int)&COR[1].mcf,  
			1041 		 | reg_indirect		 	  | PROT_U				, (int)&COR[1].address, 				/*MM initial Slave address config RS*/
            1043 		 | reg_indirect		 	  | PROT_U				, (int)&COR[1].mass_unit, 				/*Config mass flow unit RS*/
            1045 		 | reg_indirect		 	  | PROT_U				, (int)&COR[1].density_cutoff, 			/*Config density cutoff RS*/
           

			/* CCM ADDITIONAL LIQUID Coriolis */
			1201 		 | reg_direct_f									, (int)&COR[2].diag,
			1203 		 | reg_direct_f									, (int)&COR[2].mfr,
			1205 		 | reg_direct_f									, (int)&COR[2].density,
			1207 		 | reg_direct_f									, (int)&COR[2].T,
			1209 		 | reg_direct_f									, (int)&COR[2].vfr,
			1211 	     | reg_direct_f									, (int)&COR[2].visc,
			1213 		 | reg_direct_f									, (int)&COR[2].press,
			1215 		 | reg_direct_f									, (int)&COR[2].mass_total,
			1217 		 | reg_direct_f									, (int)&COR[2].volume_total,
			1219 		 | reg_direct_f									, (int)&COR[2].mass_inv,
			1221 		 | reg_direct_f									, (int)&COR[2].volume_inv,
			1223 		 | reg_direct_f									, (int)&COR[2].raw_tube_freq,
			1225 		 | reg_direct_f									, (int)&COR[2].left_pickup_value,
			1227 		 | reg_direct_f									, (int)&COR[2].right_pickup_value,
			1229 		 | reg_direct_f									, (int)&COR[2].drive_gain,
			1231 		 | reg_indirect		 	  | PROT_U				, (int)&COR[2].damp_flow_rate,
			1233 		 | reg_indirect		 	  | PROT_U				, (int)&COR[2].damp_density,
			1235 		 | reg_indirect		 	  | PROT_U				, (int)&COR[2].mfr_cutoff,
			1237 		 | reg_indirect		 	  | PROT_U				, (int)&COR[2].vfr_cutoff,
			1239 		 | reg_indirect		 	  | PROT_U				, (int)&COR[2].mcf,  
			1241 		 | reg_indirect		 	  | PROT_U				, (int)&COR[2].address, 				/*MM initial Slave address config RS*/
            1243 		 | reg_indirect		 	  | PROT_U				, (int)&COR[2].mass_unit, 				/*Config mass flow unit RS*/
            1245 		 | reg_indirect		 	  | PROT_U				, (int)&COR[2].density_cutoff, 			/*Config density cutoff RS*/
           

			/* CCM ADDITIONAL GAS Coriolis */
			1401 		 | reg_direct_f									, (int)&COR[3].diag,
			1403 		 | reg_direct_f									, (int)&COR[3].mfr,
			1405 		 | reg_direct_f									, (int)&COR[3].density,
			1407 		 | reg_direct_f									, (int)&COR[3].T,
			1409 		 | reg_direct_f									, (int)&COR[3].vfr,
			1411 		 | reg_direct_f									, (int)&COR[3].visc,
			1413 		 | reg_direct_f									, (int)&COR[3].press,
			1415 		 | reg_direct_f									, (int)&COR[3].mass_total,
			1417 		 | reg_direct_f									, (int)&COR[3].volume_total,
			1419 		 | reg_direct_f									, (int)&COR[3].mass_inv,
			1421 		 | reg_direct_f									, (int)&COR[3].volume_inv,
			1423 		 | reg_direct_f									, (int)&COR[3].raw_tube_freq,
			1425 		 | reg_direct_f									, (int)&COR[3].left_pickup_value,
			1427 		 | reg_direct_f									, (int)&COR[3].right_pickup_value,
			1429 		 | reg_direct_f									, (int)&COR[3].drive_gain,
			1431 		 | reg_indirect		 	  | PROT_U				, (int)&COR[3].damp_flow_rate,
			1433 		 | reg_indirect		 	  | PROT_U				, (int)&COR[3].damp_density,
			1435 		 | reg_indirect		 	  | PROT_U				, (int)&COR[3].mfr_cutoff,
			1437 		 | reg_indirect		 	  | PROT_U				, (int)&COR[3].vfr_cutoff,
			1439 		 | reg_indirect		 	  | PROT_U				, (int)&COR[3].mcf,   
            1441 		 | reg_indirect		 	  | PROT_U				, (int)&COR[3].address, 				/*MM initial Slave address config RS*/
            1443 		 | reg_indirect		 	  | PROT_U				, (int)&COR[3].mass_unit, 				/*Config mass flow unit RS*/
            1445 		 | reg_indirect		 	  | PROT_U				, (int)&COR[3].density_cutoff, 			/*Config density cutoff RS*/
           

			1601 		 | reg_direct_f									, (int)&PRESS[0].p_delta,
			1603 		 | reg_direct_f									, (int)&PRESS[0].p_static,
			1605 	 	 | reg_direct_f									, (int)&PRESS[0].T,
			1607 		 | reg_direct_f									, (int)&PRESS[0].diag0,
			1609 		 | reg_direct_f									, (int)&PRESS[0].diag1,
			1611 		 | reg_direct_f									, (int)&PRESS[0].diag2,

			1621 		 | reg_direct_f									, (int)&PRESS[1].p_delta,
			1623 		 | reg_direct_f									, (int)&PRESS[1].p_static,
			1625 		 | reg_direct_f									, (int)&PRESS[1].T,
			1627 		 | reg_direct_f									, (int)&PRESS[1].diag0,
			1629 		 | reg_direct_f									, (int)&PRESS[1].diag1,
			1631 		 | reg_direct_f									, (int)&PRESS[1].diag2,

			1641 		 | reg_direct_f									, (int)&PRESS[2].p_delta,
			1643 		 | reg_direct_f									, (int)&PRESS[2].p_static,
			1645 		 | reg_direct_f									, (int)&PRESS[2].T,
			1647 		 | reg_direct_f									, (int)&PRESS[2].diag0,
			1649 		 | reg_direct_f									, (int)&PRESS[2].diag1,
			1651 		 | reg_direct_f									, (int)&PRESS[2].diag2,

			1661 		 | reg_direct_f									, (int)&TMPTRANS[0].T,
			1663 		 | reg_direct_f									, (int)&TMPTRANS[0].etc0,
			1665 		 | reg_direct_f									, (int)&TMPTRANS[0].etc1,
			1667 		 | reg_direct_f									, (int)&TMPTRANS[0].etc2,
			1669 		 | reg_direct_f									, (int)&TMPTRANS[0].etc3,
			1671 		 | reg_direct_f									, (int)&TMPTRANS[0].etc4,
                                                            		
			1681 		 | reg_direct_f									, (int)&TMPTRANS[1].T,
			1683 		 | reg_direct_f									, (int)&TMPTRANS[1].etc0,
			1685 		 | reg_direct_f									, (int)&TMPTRANS[1].etc1,
			1687 		 | reg_direct_f									, (int)&TMPTRANS[1].etc2,
			1689 		 | reg_direct_f									, (int)&TMPTRANS[1].etc3,
			1691 		 | reg_direct_f									, (int)&TMPTRANS[1].etc4,
                                                            
			1701 		 | reg_direct_f									, (int)&TMPTRANS[2].T,
			1703 		 | reg_direct_f									, (int)&TMPTRANS[2].etc0,
			1705 		 | reg_direct_f									, (int)&TMPTRANS[2].etc1,
			1707 		 | reg_direct_f									, (int)&TMPTRANS[2].etc2,
			1709 		 | reg_direct_f									, (int)&TMPTRANS[2].etc3,
			1711 		 | reg_direct_f									, (int)&TMPTRANS[2].etc4,

			1721 		 | reg_direct_f									, (int)&ALYESKA.WATERCUT,
			1723 		 | reg_direct_f									, (int)&ALYESKA.FLOW_RATE,
			1725 		 | reg_direct_f									, (int)&ALYESKA.TEMPERATURE,
			1727 		 | reg_direct_f									, (int)&ALYESKA.DENSITY,
			1729 		 | reg_direct_f									, (int)&ALYESKA.VISCOSITY,
			1731 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.minWATERCUT,
			1733 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.maxWATERCUT,
			1735 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.minFLOW_RATE,
			1737 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.maxFLOW_RATE,
			1739 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.minTEMPERATURE,
			1741 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.maxTEMPERATURE,
			1743 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.minDENSITY,
			1745 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.maxDENSITY,
			1747 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.minVISCOSITY,
			1749 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.maxVISCOSITY,
			1751 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.minWATERCUTz,
			1753 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&ALYESKA.maxWATERCUTz,
			1755 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&ALYESKA.DESTINATION_ADDRESS,

			1801 		 | reg_direct_i									, (int)&CCM_Records.log_n,
			1803 		 | reg_direct_i									, (int)&CCM_Records.log_n_max_per_sector,
			1805 		 | reg_direct_i									, (int)&CCM_Records.log_current_sector,
			1807 		 | reg_direct_i									, (int)&CCM_Records.log_n_sectors,
			1809 		 | reg_direct_i									, (int)&CCM_Records.log_absolute_index,
			1811 		 | reg_direct_regvect	  | PROT_U				, (int)&CCM_Record_view,
			1813 		 | reg_direct_i									, (int)&CCM_Record.Start_HH,
			1815 		 | reg_direct_i									, (int)&CCM_Record.Start_MM,
			1817 		 | reg_direct_i									, (int)&CCM_Record.Start_SS,
			1819 		 | reg_direct_i									, (int)&CCM_Record.Start_MONTH,
			1821 		 | reg_direct_i									, (int)&CCM_Record.Start_DAY,
			1823 		 | reg_direct_i									, (int)&CCM_Record.Start_YEAR,
			1825 		 | reg_direct_i									, (int)&CCM_Record.Stop_HH,
			1827 		 | reg_direct_i									, (int)&CCM_Record.Stop_MM,
			1829 		 | reg_direct_i									, (int)&CCM_Record.Stop_SS,
			1831 		 | reg_direct_i									, (int)&CCM_Record.Stop_MONTH,
			1833 		 | reg_direct_i									, (int)&CCM_Record.Stop_DAY,
			1835 		 | reg_direct_i									, (int)&CCM_Record.Stop_YEAR,
			1837 		 | reg_direct_f									, (int)&CCM_Record.stream,
			1839 		 | reg_direct_f									, (int)&CCM_Record.elapsed_s,
			1841 		 | reg_direct_f									, (int)&CCM_Record.duration,
			1843 		 | reg_direct_f									, (int)&CCM_Record.purge,
			1845 		 | reg_direct_f									, (int)&CCM_Record.gross_gas,
			1847 		 | reg_direct_f									, (int)&CCM_Record.gross_oil,
			1849 	     | reg_direct_f									, (int)&CCM_Record.gross_water,
			1851 		 | reg_direct_f									, (int)&CCM_Record.gross_total,
			1853 		 | reg_direct_f									, (int)&CCM_Record.gas24,
			1855 		 | reg_direct_f									, (int)&CCM_Record.oil24,
			1857 		 | reg_direct_f									, (int)&CCM_Record.water24,
			1859 		 | reg_direct_f									, (int)&CCM_Record.total24,
			1861 		 | reg_direct_f									, (int)&CCM_Record.watercut,
			
			1865		 | reg_indirect		 	  | PROT_U				,(int)&Hsalt_Min_WC,
			

			1901 | CFGU  | reg_indirect		 	  | PROT_U				, (int)&HSALT.flow_threshold,  			//RS
			1903 | reg_direct_f			 	  	  | PROT_U				, (int)&compatibility_dummy,            
			1905 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.S0,
			1907 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.S1,
			1909 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.S2,
			1911 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.S3,
			1913 | CFGU  | reg_direct_f									, (int)&HSALT.Fmin,
			//1915 | CFGU  | reg_direct_f									, (int)&HSALT.Fmax,
			1917 | CFGU  | reg_direct_f									, (int)&HSALT.Dmin,
			1919 | CFGU  | reg_direct_f									, (int)&HSALT.Dmax,
			1921 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SP0A,
			1923 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SP1A,
			1925 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SP2A,
			1927 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SP3A,
			1929 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SPLOA,
			1931 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SPHIA,
			1933 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SP0B,
			1935 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SP1B,
			1937 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SP2B,
			1939 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SP3B,
			1941 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SPLOB,
			1943 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.SPHIB,
			1945 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.FBHI0,
			1947 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.FBHI1,
			1949 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.FBHI2,
			1951 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.FBHI3,
			1953 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.FBLO0,
			1955 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.FBLO1,
			1957 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.FBLO2,
			1959 | CFGU  | reg_direct_f		 	  | PROT_U				, (int)&HSALT.FBLO3,

			   0														, 0				  };					/* END OF TABLE */
								

#define MB_ADDR_FLT 0
#pragma DATA_SECTION(mb_flt,"TABLES")
const int mb_flt[][2]=		{
			   1 | reg_direct_i												, (int)&SN_PIPE,
			   3 | reg_direct_i	 			 | PROT_U						, (int)&DIAGNOSTICS[0],
			   5 | reg_direct_i	 			 | PROT_U						, (int)&DIAGNOSTICS[1],
			   7 | reg_direct_i				 | PROT_U 						, (int)&DIAGNOSTICS_ERROR_CODE,
			   9 | reg_direct_i				 | PROT_U 						, (int)&DIAGNOSTICS_MSG_CODE,
			  11 | reg_indirect												, (int)&REG_WATERCUT,
			  13 | reg_indirect												, (int)&REG_TEMPERATURE_EXTERNAL,
			  15 | reg_indirect												, (int)&REG_TEMPERATURE_USER,
			  17 | reg_indirect												, (int)&REG_EMULSION_PHASE,
			  19 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_STREAM_SELECT,
			  21 |CFGU| reg_indirect		 | EN_W							, (int)&REG_SALINITY,
			  23 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_OIL_ADJ,
			  25 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_WATER_ADJ,
			  27 |CFGU| reg_indirect_unit	 | PROT_U 						, (int)&REG_TEMPERATURE_EXTERNAL,
			  29 | reg_direct_f												, (int)&REG_WATERCUT_RAW,
			  31 |CFGU| reg_indirect   		 | PROT_U						, (int)&REG_OIL_INDEX,
			  33 |CFGU| reg_indirect   		 | PROT_U						, (int)&REG_WATER_INDEX,
			  35 |CFGU| reg_indirect		 | PROT_U						, (int)&OIL_P0,
			  37 |CFGU| reg_indirect		 | PROT_U						, (int)&OIL_P1,
			  39 |CFGU| reg_indirect   		 | PROT_U						, (int)&REG_CAL_OIL,
			  41 |CFGU| reg_indirect   		 | PROT_U						, (int)&REG_CAL_WATER,
			  43 | reg_direct_f												, (int)&VAR_INT_SCALE,
			  45 | reg_direct_f												, (int)&VAR_LONGINT_SCALE,
			  47 | reg_direct_f												, (int)&REG_PV_AVG_24hr,
			  49 | reg_direct_f												, (int)&REG_PV_AVG_5min,
			  51 | reg_direct_f												, (int)&REG_PV_AVG_1sec,
			  53 | reg_direct_raw_int  		 							 	, (int)FLASH_LOC_LOG,
			  55 |CFGU| reg_direct_i	 	 | PROT_U						, (int)&DIAGNOSTICS_MASK[0],
			  57 |CFGU| reg_direct_i	 	 | PROT_U						, (int)&DIAGNOSTICS_MASK[1],
			  59 |CFGU| reg_indirect		 | PROT_U						, (int)&Oil_Phase_Maximum,
			  61 |CFGU| reg_indirect		 | PROT_U						, (int)&Water_Phase_Minimum, 
			  
			  63 | reg_indirect												, (int)&REG_TEMPERATURE_AVG,   		/*AVG TEMP -RS*/
              65 |CFGU| reg_indirect_unit	 | PROT_U 						, (int)&REG_TEMPERATURE_AVG,		/* AVG Unit -RS*/
              
              67 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_PHASE_HOLD_CYCLES, 		/*phase hold over HR RS*/
              69 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_WC_NUM_SAMPLES,    		/*average filter RS*/
			  
			  73 | CFGU  | reg_indirect		 | PROT_U						, (int)&REG_ALFAT_LOG_PERIOD, 
              
              //71 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_WINDOW,     		/*HSALT Freq trigger RS*/
              75 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_DELTA_TEMP,   			/*HSALT Temp trigger RS*/
              
              //77 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_WINDOW15,   		/*Gas entrained min freq window RS*/
              //79 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_WINDOW1,    		/*Gas entrained moving average window RS*/
              //81 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_WINDOW2,    		/*Gas entrained moving average window RS*/
              //83 | reg_indirect												, (int)&REG_FREQ_RESULT,     		/*Gas entrained final wfreq RS*/
              
              85 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_VARIANCE_RATIO,   	/*HSALT Freq trigger RS*/

              87 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_BULK_LEVEL,   			/*Close Gas Valve when Level too high for Anadarko Bulk RS*/
              
              91 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_WATERCUT_DENSITY, 		/* Watercut by density BC*/
                          
			 101 | reg_direct_f												, (int)&FREQ_O,
			 103 | reg_direct_f												, (int)&IP_O,
			 105 | reg_direct_f												, (int)&RP_O,
			 107 | reg_direct_f												, (int)&IP_RP_O,        
			 109 | reg_direct_f												, (int)&DB_IP_RP_O,

			 111 | reg_direct_f												, (int)&FREQ_W,
			 113 | reg_direct_f												, (int)&IP_W,
			 115 | reg_direct_f												, (int)&RP_W,
			 117 | reg_direct_f												, (int)&IP_RP_W,
			 119 | reg_direct_f												, (int)&DB_IP_RP_W,

			 201 |CFGU| reg_direct_f	 	 | PROT_U 						, (int)&OIL_CALC_CUTOFF,
			 203 |CFGU| reg_direct_f		 | PROT_U 						, (int)&OIL_CALC_MAX[0],
			 205 |CFGU| reg_direct_f		 | PROT_U 						, (int)&OIL_CALC_MAX[1],

			/****************************************************************************************************/
			/* Special Region for Research Analyzers                                                            */
			/****************************************************************************************************/
			 247 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_D1,  /*PPM Analyzer with MicroMotion density RS*/
			 249 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_D2,  /*PPM Analyzer with MicroMotion density RS*/
			 251 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_C0,				/* Coefficients */
			 253 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_FA1,
			 255 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_FA2,
			 257 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_FB1,
			 259 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_FB2,
			 261 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_RPA1,
			 263 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_RPA2,
			 265 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_RPB1,
			 267 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_RPB2,
			 269 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_IPA1,
			 271 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_IPA2,
			 273 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_IPB1,
			 275 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_IPB2,
			 277 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_T1,
			 279 |CFGU| reg_direct_f		 | PROT_U 						, (int)&COEFF_T2,

			 281 | reg_indirect												, (int)&REG_WATERCUT,			/* Process Variable */
			 283 | reg_direct_f												, (int)&REG_WATERCUT_RAW,
			 285 |CFGU| reg_direct_f		 | PROT_U 						, (int)&REG_WATERCUT.dampening,
			 287 |CFGU| reg_direct_bmin   	 | PROT_U						, (int)&REG_WATERCUT,
			 289 |CFGU| reg_direct_bmax   	 | PROT_U						, (int)&REG_WATERCUT,
			 291 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_WATERCUT_ALARM_LO,
			 293 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_WATERCUT_ALARM_HI,
			 295 |CFGU| reg_direct_i      	 | PROT_U						, (int)&OSC_OIL_CALC,			/* osc A */
			 297 |CFGU| reg_direct_i      	 | PROT_U						, (int)&OSC_WATER_CALC,			/* osc B */
			 299 |CFGU| reg_direct_f      	 | PROT_U						, (int)&REG_WATERCUT.scale,
			/****************************************************************************************************/

			 301 | reg_indirect												, (int)&REG_TEMPERATURE_EXTERNAL,
			 303 |CFGU| reg_direct_f		 | PROT_G						, (int)&RTD_CURRENT,
			 305 |CFGU| reg_direct_f		 | PROT_G						, (int)&RTD_GAIN,
			 307 |CFGU|	reg_direct_f		 | PROT_G						, (int)&TEMPERATURE_TRIM_T0,
			 309 |CFGU|	reg_direct_f		 | PROT_G						, (int)&TEMPERATURE_TRIM_T1,
			 311 |CFGU| reg_direct_f		 | PROT_G						, (int)&RTD_CAL_LO_OHM,
			 313 |CFGU| reg_direct_f		 | PROT_G						, (int)&RTD_CAL_LO_V,
			 315 |CFGU| reg_direct_f		 | PROT_G						, (int)&RTD_CAL_HI_OHM,
			 317 |CFGU| reg_direct_f		 | PROT_G						, (int)&RTD_CAL_HI_V,
			 319 | reg_direct_f												, (int)&RTD_R,
			              
			 351 | CFGU  | reg_indirect		| PROT_U						, (int)&bubble_new_length,
			 353 | CFGU  | reg_indirect		| PROT_U						, (int)&pattern_new_length,
			 
			 //355 | CFGU  | reg_indirect		| PROT_U						, (int)&boxcar_expire_val,
			 355 | CFGU  | reg_indirect		| PROT_U						, (int)&boxcar_expire_val_minutes, 	//in minutes			
			 357 | CFGU  | reg_indirect		| PROT_U						, (int)&boxcar_expire_val, 			//in samples


			 401 | reg_indirect												, (int)&REG_TEMPERATURE_EXTERNAL,
			 403 | reg_indirect												, (int)&REG_ADC[ADC_Tint],
			 405 | reg_indirect												, (int)&REG_FREQ[0],
			 407 |CFGU| reg_direct_f		 | PROT_G						, (int)&REG_FREQ[0].dampening,
			 409 | reg_indirect												, (int)&REG_VINC[0],
			 411 | reg_indirect												, (int)&REG_VREF[0],
			 413 | reg_indirect												, (int)&REG_VTUNE[0],
			 415 |CFGU| reg_direct_alarm_lo	 | PROT_G						, (int)&REG_FREQ[0],
			 417 |CFGU| reg_direct_alarm_hi	 | PROT_G						, (int)&REG_FREQ[0],
			 419 | reg_indirect												, (int)&REG_FREQ[1],
			 421 |CFGU| reg_direct_f		 | PROT_G						, (int)&REG_FREQ[1].dampening,
			 423 | reg_indirect												, (int)&REG_VINC[1],
			 425 | reg_indirect												, (int)&REG_VREF[1],
			 427 | reg_indirect												, (int)&REG_VTUNE[1],
			 429 |CFGU| reg_direct_alarm_lo	 | PROT_G						, (int)&REG_FREQ[1],
			 431 |CFGU| reg_direct_alarm_hi	 | PROT_G						, (int)&REG_FREQ[1],
			 433 | reg_indirect												, (int)&REG_FREQ[2],
			 435 |CFGU| reg_direct_f		 | PROT_G						, (int)&REG_FREQ[2].dampening,
			 437 | reg_indirect												, (int)&REG_VINC[2],
			 439 | reg_indirect												, (int)&REG_VREF[2],
			 441 | reg_indirect												, (int)&REG_VTUNE[2],
			 443 |CFGU| reg_direct_alarm_lo	 | PROT_G						, (int)&REG_FREQ[2],
			 445 |CFGU| reg_direct_alarm_hi	 | PROT_G						, (int)&REG_FREQ[2],
			 447 | reg_indirect												, (int)&REG_FREQ[3],
			 449 |CFGU| reg_direct_f		 | PROT_G						, (int)&REG_FREQ[3].dampening,
			 451 | reg_indirect												, (int)&REG_VINC[3],
			 453 | reg_indirect												, (int)&REG_VREF[3],
			 455 | reg_indirect												, (int)&REG_VTUNE[3],
			 457 |CFGU| reg_direct_alarm_lo	 | PROT_G						, (int)&REG_FREQ[3],
			 459 |CFGU| reg_direct_alarm_hi	 | PROT_G						, (int)&REG_FREQ[3],

			 501 |CFGU| reg_direct_i    	 | PROT_G						, (int)&ENABLED[0],
			 503 |CFGU| reg_direct_i    	 | PROT_G						, (int)&OSC[0],
			 505 |CFGU| reg_indirect    	 | PROT_G						, (int)&REG_VTUNE_SET[0],
			 507 |CFGU| reg_direct_f		 | PROT_G						, (int)&EXP_FREQ[0],

			 509 |CFGU| reg_direct_i    	 | PROT_G						, (int)&ENABLED[1],
			 511 |CFGU| reg_direct_i    	 | PROT_G						, (int)&OSC[1],
			 513 |CFGU| reg_indirect    	 | PROT_G						, (int)&REG_VTUNE_SET[1],
			 515 |CFGU| reg_direct_f		 | PROT_G						, (int)&EXP_FREQ[1],

			 517 |CFGU| reg_direct_i    	 | PROT_G						, (int)&ENABLED[2],
			 519 |CFGU| reg_direct_i    	 | PROT_G						, (int)&OSC[2],
			 521 |CFGU| reg_indirect      	 | PROT_G						, (int)&REG_VTUNE_SET[2],
			 523 |CFGU| reg_direct_f	     | PROT_G						, (int)&EXP_FREQ[2],

			 525 |CFGU| reg_direct_i      	 | PROT_G						, (int)&ENABLED[3],
			 527 |CFGU| reg_direct_i    	 | PROT_G						, (int)&OSC[3],
			 529 |CFGU| reg_indirect      	 | PROT_G						, (int)&REG_VTUNE_SET[3],
			 531 |CFGU| reg_direct_f	     | PROT_G						, (int)&EXP_FREQ[3],

			 597 |CFGU| reg_direct_f	     | PROT_G						, (int)&PRESCALE,
			 599 |CFGU| reg_direct_f	     | PROT_G						, (int)&GATE_TIME,

			 601 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Oil.Watercut,
			 603 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Oil.Temperature,
			 605 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Oil.Frequency_Oil,
			 607 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Oil.Frequency_Water,
			 609 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Oil.RefPower_Oil,
			 611 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Oil.RefPower_Water,
			 613 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Oil.Salinity,
			 615 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Oil.Dadj,

			 651 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Water.Watercut,
			 653 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Water.Temperature,
			 655 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Water.Frequency_Oil,
			 657 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Water.Frequency_Water,
			 659 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Water.RefPower_Oil,
			 661 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Water.RefPower_Water,
			 663 |CFGU| reg_direct_f   		 | PROT_G						, (int)&Cap_Water.Salinity,

			 701 |CFGU| reg_direct_f		 | PROT_U 						, (int)&REG_WATERCUT.dampening,
			 703 |CFGU| reg_direct_bmin   	 | PROT_G						, (int)&REG_WATERCUT,
			 705 |CFGU| reg_direct_bmax   	 | PROT_G						, (int)&REG_WATERCUT,
			 707 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_WATERCUT_ALARM_LO,
			 709 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_WATERCUT_ALARM_HI,

			 711 |CFGU| reg_direct_f		 | PROT_U 						, (int)&REG_ADC[ADC_Text].dampening,
			 713 |CFGU| reg_direct_bmin   	 | PROT_U /*PROT_G*/			, (int)&REG_TEMPERATURE_EXTERNAL,
			 715 |CFGU| reg_direct_bmax   	 | PROT_U /*PROT_G*/			, (int)&REG_TEMPERATURE_EXTERNAL,
			 717 |CFGU| reg_direct_alarm_lo	 | PROT_U						, (int)&REG_TEMPERATURE_EXTERNAL,
			 719 |CFGU| reg_direct_alarm_hi	 | PROT_U						, (int)&REG_TEMPERATURE_EXTERNAL,
			 721 |CFGU| reg_indirect 		 | PROT_U 						, (int)&REG_TEMPERATURE_USER_ADJUST,

			 723 |CFGU| reg_direct_bmin   	 | PROT_G						, (int)&REG_SALINITY,
			 725 |CFGU| reg_direct_bmax   	 | PROT_G						, (int)&REG_SALINITY,

			 727 |CFGU| reg_indirect		 | PROT_U						, (int)&Plot_Limit_Oil_Freq_Low,
			 729 |CFGU| reg_indirect		 | PROT_U						, (int)&Plot_Limit_Oil_Freq_High,
			 731 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_OIL_LO,
			 733 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_OIL_HI,

			 735 |CFGU| reg_indirect		 | PROT_U						, (int)&Plot_Limit_Water_Freq_Low,
			 737 |CFGU| reg_indirect		 | PROT_U						, (int)&Plot_Limit_Water_Freq_High,
			 739 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_WATER_LO,
			 741 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_FREQ_WATER_HI, 
			 
			 //743 |CFGU| reg_indirect		 | PROT_U						, (int)&REG_LOWSALT_THRESHOLD,  /*Low salt mode freq threshold RS*/
			 743 | reg_indirect		 		 | PROT_U						, (int)&EXTENDED_FW_VERSION_ENABLE,  // to enable, set to 123	

			 751 |CFGU| reg_indirect		 | PROT_G						, (int)&REG_osc_settle_short,
			 753 |CFGU| reg_indirect		 | PROT_G						, (int)&REG_osc_settle_long,

			/* Plot & Graph Limits */
			 755 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Water_Freq_Low,
			 757 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Water_Freq_High,
			 
			 759 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Oil_Freq_Low,
			 761 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Oil_Freq_High,
			 
			 763 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Temp_Low,
			 765 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Temp_High,
			 
 			 767 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Watercut_Low,
			 769 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Watercut_High,
			 
 			 771 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Oil_RP_Low,	//Reflected power for oil (lower bound)
			 773 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Oil_RP_High,	//Reflected power for oil (upper bound)

 			 775 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Water_RP_Low,	//Reflected power for water (upper bound)
			 777 | CFGU  | reg_indirect		  	  | EN_W				, (int)&Plot_Limit_Water_RP_High,	//Reflected power for water (upper bound)
			 /* END: Plot & Graph Limits */
			 
			 
			 
			 801 | reg_indirect				 | PROT_G						, (int)&REG_DAC[DAC_OSCSEL],
			 803 | reg_indirect				 | PROT_G						, (int)&REG_DAC[DAC_VTUNE],
			 805 | reg_indirect				 | PROT_G						, (int)&REG_DAC[DAC_TUNESEL],
			 807 | reg_indirect									  			, (int)&REG_ADC[ADC_Vref],
			 809 | reg_indirect									  			, (int)&REG_ADC[ADC_Vinc],
			 811 | reg_indirect									  			, (int)&REG_ADC[ADC_Text],
			 813 | reg_indirect									  			, (int)&REG_ADC[ADC_Tint],
			 815 | reg_indirect									  			, (int)&REG_ADC[ADC_GNDSEN],
			 817 | reg_indirect									  			, (int)&REG_ADC[ADC_VTUNE],

			 819 | reg_indirect    			 | PROT_U  						, (int)&REG_DAC[DAC_Aout1],
			 821 | reg_indirect    			 | PROT_U  						, (int)&REG_DAC[DAC_Aout2],
			 823 | reg_indirect    			 | PROT_U  						, (int)&REG_DAC[DAC_Aout3],
			 825 | reg_indirect    			 | PROT_U  						, (int)&REG_DAC[DAC_Aout4],
			 827 | reg_indirect    			 | PROT_U  						, (int)&REG_DAC[DAC_Aout5],
			 829 | reg_indirect    			 | PROT_U  						, (int)&REG_DAC[DAC_Aout6],
			 831 | reg_indirect 		   	 | PROT_U  						, (int)&REG_DAC[DAC_Aout7],
			 833 | reg_indirect 		   	 | PROT_U  						, (int)&REG_DAC[DAC_Aout8],
			 835 | reg_indirect 		   	 | PROT_U  						, (int)&REG_DAC[DAC_Aout9],

			 841 | reg_indirect									  			, (int)&REG_ADC[ADC_Ain1],
			 843 | reg_indirect									  			, (int)&REG_ADC[ADC_Ain2],
			 845 | reg_indirect									  			, (int)&REG_ADC[ADC_Ain3],
			 847 | reg_indirect									  			, (int)&REG_ADC[ADC_Ain4],
			 849 | reg_indirect									  			, (int)&REG_ADC[ADC_Ain5],
			 851 | reg_indirect									  			, (int)&REG_ADC[ADC_Spare],

			 871 |CFGU| reg_direct_i    	 | PROT_U	 					, (int)&RLY[0].MODE,
			 873 |CFGU| reg_direct_i    	 | PROT_U	 					, (int)&RLY[0].STATUS_MASK,
			 875 |CFGU| reg_direct_regvect 	 | PROT_U	 					, (int)&RLY[0].v,
			 877 |CFGU| reg_direct_f    	 | PROT_U	 					, (int)&RLY[0].setpoint,

			 881 |CFGU| reg_direct_i    	 | PROT_U	 					, (int)&RLY[1].MODE,
			 883 |CFGU| reg_direct_i    	 | PROT_U	 					, (int)&RLY[1].STATUS_MASK,
			 885 |CFGU| reg_direct_regvect 	 | PROT_U	 					, (int)&RLY[1].v,
			 887 |CFGU| reg_direct_f    	 | PROT_U	 					, (int)&RLY[1].setpoint,

			 889 |CFGU| reg_direct_f    	 | PROT_U	 					, (int)&DensityCFT_D1,
			 891 |CFGU| reg_direct_f    	 | PROT_U	 					, (int)&DensityCFD_D1, //1
			 893 |CFGU| reg_direct_f    	 | PROT_U	 					, (int)&DensityCF_D0,
			 895 |CFGU| reg_indirect    	 | PROT_U	 					, (int)&Density_D1,
			 897 |CFGU| reg_indirect    	 | PROT_U	 					, (int)&Density_D0,
			 899 |CFGU| reg_indirect    	 | PROT_U	 					, (int)&Density_Cal,

			 901 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_0[ADC_Tint],
			 903 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_1[ADC_Tint],
			 905 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_0[DAC_Aout6],
			 907 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_1[DAC_Aout6],
			 909 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_0[DAC_Aout7],
			 911 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_1[DAC_Aout7],
			 913 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_0[DAC_Aout8],
			 915 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_1[DAC_Aout8],
			 917 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_0[DAC_Aout9],
			 919 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_1[DAC_Aout9],

			/* Analyzer Board */
			 921 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_0[ADC_Vref],
			 923 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_1[ADC_Vref],
			 925 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_0[ADC_Vinc],
			 927 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_1[ADC_Vinc],
			 929 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_0[ADC_Text],
			 931 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_1[ADC_Text],
			 933 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_0[ADC_VTUNE],
			 935 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_1[ADC_VTUNE],
			 937 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_0[ADC_GNDSEN],
			 939 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_1[ADC_GNDSEN],
			 941 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_0[ADC_Ain1],
			 943 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&ADC_TRIM_F_1[ADC_Ain1],
			 945 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_0[DAC_Aout1],
			 947 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_1[DAC_Aout1],
			 949 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_0[DAC_OSCSEL],
			 951 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_1[DAC_OSCSEL],
			 953 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_0[DAC_VTUNE],
			 955 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_1[DAC_VTUNE],
			 957 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_0[DAC_TUNESEL],
			 959 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&DAC_TRIM_F_1[DAC_TUNESEL],

			/* Analog I/O Board */
			 961 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&ADC_TRIM_F_0[ADC_Ain2],
			 963 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&ADC_TRIM_F_1[ADC_Ain2],
			 965 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&ADC_TRIM_F_0[ADC_Ain3],
			 967 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&ADC_TRIM_F_1[ADC_Ain3],
			 969 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&ADC_TRIM_F_0[ADC_Ain4],
			 971 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&ADC_TRIM_F_1[ADC_Ain4],
			 973 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&ADC_TRIM_F_0[ADC_Ain5],
			 975 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&ADC_TRIM_F_1[ADC_Ain5],
			 977 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&DAC_TRIM_F_0[DAC_Aout2],
			 979 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&DAC_TRIM_F_1[DAC_Aout2],
			 981 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&DAC_TRIM_F_0[DAC_Aout3],
			 983 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&DAC_TRIM_F_1[DAC_Aout3],
			 985 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&DAC_TRIM_F_0[DAC_Aout4],
			 987 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&DAC_TRIM_F_1[DAC_Aout4],
			 989 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&DAC_TRIM_F_0[DAC_Aout5],
			 991 |CFGU| reg_direct_f		 | PROT_U 					 	, (int)&DAC_TRIM_F_1[DAC_Aout5],
			 993 |CFGU| reg_direct_i		 | PROT_G 					 	, (int)&ADC_TRIM_F_0[ADC_Spare],
			 995 |CFGU| reg_direct_i		 | PROT_G 					 	, (int)&ADC_TRIM_F_1[ADC_Spare],

			 999 |CFGU| reg_direct_f		 | PROT_G 					 	, (int)&FREQ_FACTOR,

			1001 | reg_indirect		 										, (int)&AI[0].CURRENT,
			1003 | reg_indirect												, (int)&AI[0].CURRENT_PERCENT_OF_RANGE,
			1005 | reg_direct_f												, (int)&AI[0].val,
			1007 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AI[0].v,
			1009 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AI[0].CURRENT.dampening,
			1011 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[0].TRIM_MIN,
			1013 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[0].TRIM_MAX,
			1015 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[0].TRIM_MIN_C,
			1017 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[0].TRIM_MAX_C,
			1019 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[0].LRV,
			1021 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[0].URV,

			1031 | reg_indirect		 										, (int)&AI[1].CURRENT,
			1033 | reg_indirect												, (int)&AI[1].CURRENT_PERCENT_OF_RANGE,
			1035 | reg_direct_f												, (int)&AI[1].val,
			1037 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AI[1].v,
			1039 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AI[1].CURRENT.dampening,
			1041 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[1].TRIM_MIN,
			1043 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[1].TRIM_MAX,
			1045 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[1].TRIM_MIN_C,
			1047 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[1].TRIM_MAX_C,
			1049 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[1].LRV,
			1051 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[1].URV,

			1061 | reg_indirect				 								, (int)&AI[2].CURRENT,
			1063 | reg_indirect												, (int)&AI[2].CURRENT_PERCENT_OF_RANGE,
			1065 | reg_direct_f												, (int)&AI[2].val,
			1067 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AI[2].v,
			1069 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AI[2].CURRENT.dampening,
			1071 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[2].TRIM_MIN,
			1073 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[2].TRIM_MAX,
			1075 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[2].TRIM_MIN_C,
			1077 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[2].TRIM_MAX_C,
			1079 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[2].LRV,
			1081 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[2].URV,

			1091 | reg_indirect		 										, (int)&AI[3].CURRENT,
			1093 | reg_indirect												, (int)&AI[3].CURRENT_PERCENT_OF_RANGE,
			1095 | reg_direct_f												, (int)&AI[3].val,
			1097 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AI[3].v,
			1099 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AI[3].CURRENT.dampening,
			1101 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[3].TRIM_MIN,
			1103 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[3].TRIM_MAX,
			1105 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[3].TRIM_MIN_C,
			1107 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[3].TRIM_MAX_C,
			1109 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[3].LRV,
			1111 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[3].URV,

			1121 | reg_indirect												, (int)&AI[4].CURRENT,
			1123 | reg_indirect												, (int)&AI[4].CURRENT_PERCENT_OF_RANGE,
			1125 | reg_direct_f												, (int)&AI[4].val,
			1127 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AI[4].v,
			1129 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AI[4].CURRENT.dampening,
			1131 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[4].TRIM_MIN,
			1133 |CFGU| reg_indirect		 | PROT_U						, (int)&AI[4].TRIM_MAX,
			1135 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[4].TRIM_MIN_C,
			1137 |CFGU| reg_direct_f		 | PROT_U						, (int)&AI[4].TRIM_MAX_C,
			1139 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[4].LRV,
			1141 |CFGU| reg_indirect   		 | PROT_U						, (int)&AI[4].URV,

			1201 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[0].CURRENT,
			1203 | reg_indirect												, (int)&AO[0].CURRENT_PERCENT_OF_RANGE,
			1205 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AO[0].v,
			1207 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[0].CURRENT.dampening,
			1209 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[0].P,
			1211 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[0].I,
			1213 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[0].D,
			1215 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[0].MANUAL_PERCENT,
			1217 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[0].PID_setpoint,
			1219 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[0].TRIM_MIN,
			1221 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[0].TRIM_MAX,
			1223 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[0].TRIM_MIN_C,
			1225 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[0].TRIM_MAX_C,
			1227 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[0].LRV,
			1229 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[0].URV,

			/* CCM LIQUID VALVE CONTROL*/
			1231 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[1].CURRENT,
			1233 | reg_indirect												, (int)&AO[1].CURRENT_PERCENT_OF_RANGE,
			1235 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AO[1].v,
			1237 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[1].CURRENT.dampening,
			1239 |CFGU| reg_indirect		 | PROT_U 						, (int)&AO[1].P,     /*change from reg_direct_f to reg_indirect RS*/
			1241 |CFGU| reg_indirect		 | PROT_U 						, (int)&AO[1].I,     /*For adding PID to stream table RS*/
			1243 |CFGU| reg_indirect		 | PROT_U 						, (int)&AO[1].D,
			1245 |CFGU| reg_direct_f		 | EN_W 						, (int)&AO[1].MANUAL_PERCENT,	/* LIQUID VALVE PERCENT */
			1247 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[1].PID_setpoint,
			1249 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[1].TRIM_MIN,
			1251 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[1].TRIM_MAX,
			1253 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[1].TRIM_MIN_C,
			1255 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[1].TRIM_MAX_C,
			1257 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[1].LRV,
			1259 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[1].URV,

			/* CCM GAS VALVE CONTROL */
			1261 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[2].CURRENT,
			1263 | reg_indirect												, (int)&AO[2].CURRENT_PERCENT_OF_RANGE,
			1265 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AO[2].v,
			1267 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[2].CURRENT.dampening,
			1269 |CFGU| reg_indirect		 | PROT_U 						, (int)&AO[2].P,  /*change from reg_direct_f to reg_indirect RS*/
			1271 |CFGU| reg_indirect		 | PROT_U 						, (int)&AO[2].I,  /*For adding PID to stream table RS*/
			1273 |CFGU| reg_indirect		 | PROT_U 						, (int)&AO[2].D,
			1275 |CFGU| reg_direct_f		 | EN_W 						, (int)&AO[2].MANUAL_PERCENT,  /* GAS VALVE PERCENT */
			1277 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[2].PID_setpoint,
			1279 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[2].TRIM_MIN,
			1281 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[2].TRIM_MAX,
			1283 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[2].TRIM_MIN_C,
			1285 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[2].TRIM_MAX_C,
			1287 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[2].LRV,
			1289 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[2].URV,

			/* CCM ADDITIONAL GAS VALVE CONTROL */
			1291 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[3].CURRENT,
			1293 | reg_indirect												, (int)&AO[3].CURRENT_PERCENT_OF_RANGE,
			1295 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AO[3].v,
			1297 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[3].CURRENT.dampening,
			1299 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[3].P,
			1301 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[3].I,
			1303 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[3].D,
			1305 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[3].MANUAL_PERCENT,
			1307 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[3].PID_setpoint,
			1309 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[3].TRIM_MIN,
			1311 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[3].TRIM_MAX,
			1313 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[3].TRIM_MIN_C,
			1315 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[3].TRIM_MAX_C,
			1317 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[3].LRV,
			1319 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[3].URV,

			1321 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[4].CURRENT,
			1323 | reg_indirect												, (int)&AO[4].CURRENT_PERCENT_OF_RANGE,
			1325 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AO[4].v,
			1327 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[4].CURRENT.dampening,
			1329 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[4].P,
			1331 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[4].I,
			1333 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[4].D,
			1335 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[4].MANUAL_PERCENT,
			1337 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[4].PID_setpoint,
			1339 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[4].TRIM_MIN,
			1341 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[4].TRIM_MAX,
			1343 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[4].TRIM_MIN_C,
			1345 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[4].TRIM_MAX_C,
			1347 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[4].LRV,
			1349 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[4].URV,

			1351 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[5].CURRENT,
			1353 | reg_indirect												, (int)&AO[5].CURRENT_PERCENT_OF_RANGE,
			1355 |CFGU| reg_direct_i		 | PROT_U						, (int)&AO[5].v,
			1357 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[5].CURRENT.dampening,
			1359 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[5].P,
			1361 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[5].I,
			1363 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[5].D,
			1365 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[5].MANUAL_PERCENT,
			1367 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[5].PID_setpoint,
			1369 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[5].TRIM_MIN,
			1371 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[5].TRIM_MAX,
			1373 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[5].TRIM_MIN_C,
			1375 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[5].TRIM_MAX_C,
			1377 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[5].LRV,
			1379 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[5].URV,

			1381 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[6].CURRENT,
			1383 | reg_indirect												, (int)&AO[6].CURRENT_PERCENT_OF_RANGE,
			1385 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AO[6].v,
			1387 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[6].CURRENT.dampening,
			1389 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[6].P,
			1391 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[6].I,
			1393 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[6].D,
			1395 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[6].MANUAL_PERCENT,
			1397 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[6].PID_setpoint,
			1399 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[6].TRIM_MIN,
			1401 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[6].TRIM_MAX,
			1403 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[6].TRIM_MIN_C,
			1405 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[6].TRIM_MAX_C,
			1407 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[6].LRV,
			1409 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[6].URV,

			1411 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[7].CURRENT,
			1413 | reg_indirect												, (int)&AO[7].CURRENT_PERCENT_OF_RANGE,
			1415 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AO[7].v,
			1417 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[7].CURRENT.dampening,
			1419 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[7].P,
			1421 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[7].I,
			1423 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[7].D,
			1425 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[7].MANUAL_PERCENT,
			1427 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[7].PID_setpoint,
			1429 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[7].TRIM_MIN,
			1431 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[7].TRIM_MAX,
			1433 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[7].TRIM_MIN_C,
			1435 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[7].TRIM_MAX_C,
			1437 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[7].LRV,
			1439 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[7].URV,

			1441 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[8].CURRENT,
			1443 | reg_indirect												, (int)&AO[8].CURRENT_PERCENT_OF_RANGE,
			1445 |CFGU| reg_direct_regvect	 | PROT_U						, (int)&AO[8].v,
			1447 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[8].CURRENT.dampening,
			1449 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[8].P,
			1451 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[8].I,
			1453 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[8].D,
			1455 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[8].MANUAL_PERCENT,
			1457 |CFGU| reg_direct_f		 | PROT_U 						, (int)&AO[8].PID_setpoint,
			1459 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[8].TRIM_MIN,
			1461 |CFGU| reg_indirect		 | PROT_U						, (int)&AO[8].TRIM_MAX,
			1463 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[8].TRIM_MIN_C,
			1465 |CFGU| reg_direct_f		 | PROT_U						, (int)&AO[8].TRIM_MAX_C,
			1467 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[8].LRV,
			1469 |CFGU| reg_indirect   		 | PROT_U						, (int)&AO[8].URV,

			/* note: the SIM registers are located in the CFG, but the flag is not set intentionally */
			1601 | reg_direct_f				 | PROT_U 						, (int)&SIM_TEMPERATURE_EXTERNAL,
			1603 | reg_direct_f				 | PROT_U 						, (int)&SIM_FREQ[0],
			1605 | reg_direct_f				 | PROT_U 						, (int)&SIM_VINC[0],
			1607 | reg_direct_f				 | PROT_U 						, (int)&SIM_VREF[0],
			1609 | reg_direct_f				 | PROT_U 						, (int)&SIM_VTUNE[0],
			1611 | reg_direct_f				 | PROT_U 						, (int)&SIM_FREQ[1],
			1613 | reg_direct_f				 | PROT_U 						, (int)&SIM_VINC[1],
			1615 | reg_direct_f				 | PROT_U 						, (int)&SIM_VREF[1],
			1617 | reg_direct_f				 | PROT_U 						, (int)&SIM_VTUNE[1],
			1619 | reg_direct_f				 | PROT_U 						, (int)&SIM_FREQ[2],
			1621 | reg_direct_f				 | PROT_U 						, (int)&SIM_VINC[2],
			1623 | reg_direct_f				 | PROT_U 						, (int)&SIM_VREF[2],
			1625 | reg_direct_f				 | PROT_U 						, (int)&SIM_VTUNE[2],
			1627 | reg_direct_f				 | PROT_U 						, (int)&SIM_FREQ[3],
			1629 | reg_direct_f				 | PROT_U 						, (int)&SIM_VINC[3],
			1631 | reg_direct_f				 | PROT_U 						, (int)&SIM_VREF[3],
			1633 | reg_direct_f				 | PROT_U 						, (int)&SIM_VTUNE[3],

			1701 | reg_direct_i												, (int)&PORT[0].WDOG_COUNT,
			1703 | reg_direct_i												, (int)&PORT[0].ERROR_COUNT,
			1705 | reg_direct_i												, (int)&PORT[0].INV_CMD_COUNT,
			1707 | reg_direct_i												, (int)&PORT[0].INV_PKT_COUNT,
			1709 | reg_direct_i												, (int)&PORT[0].SUCCESS,
			1711 | reg_direct_i												, (int)&PORT[0].NUM_RETRIES,

			1713 | reg_direct_i												, (int)&PORT[1].WDOG_COUNT,
			1715 | reg_direct_i												, (int)&PORT[1].ERROR_COUNT,
			1717 | reg_direct_i												, (int)&PORT[1].INV_CMD_COUNT,
			1719 | reg_direct_i												, (int)&PORT[1].INV_PKT_COUNT,
			1721 | reg_direct_i												, (int)&PORT[1].SUCCESS,
			1723 | reg_direct_i												, (int)&PORT[1].NUM_RETRIES,

			1725 | reg_direct_i												, (int)&PORT[2].WDOG_COUNT,
			1727 | reg_direct_i												, (int)&PORT[2].ERROR_COUNT,
			1729 | reg_direct_i												, (int)&PORT[2].INV_CMD_COUNT,
			1731 | reg_direct_i												, (int)&PORT[2].INV_PKT_COUNT,
			1733 | reg_direct_i												, (int)&PORT[2].SUCCESS,
			1735 | reg_direct_i												, (int)&PORT[2].NUM_RETRIES,

			1737 | reg_direct_i												, (int)&PORT[3].WDOG_COUNT,
			1739 | reg_direct_i												, (int)&PORT[3].ERROR_COUNT,
			1741 | reg_direct_i												, (int)&PORT[3].INV_CMD_COUNT,
			1743 | reg_direct_i												, (int)&PORT[3].INV_PKT_COUNT,
			1745 | reg_direct_i												, (int)&PORT[3].SUCCESS,
			1747 | reg_direct_i												, (int)&PORT[3].NUM_RETRIES,

			1749 | reg_direct_i												, (int)&PORT[4].WDOG_COUNT,
			1751 | reg_direct_i												, (int)&PORT[4].ERROR_COUNT,
			1753 | reg_direct_i												, (int)&PORT[4].INV_CMD_COUNT,
			1755 | reg_direct_i												, (int)&PORT[4].INV_PKT_COUNT,
			1757 | reg_direct_i												, (int)&PORT[4].SUCCESS,

			1759 | reg_direct_i												, (int)&PORT[6].WDOG_COUNT,
			1761 | reg_direct_i												, (int)&PORT[6].ERROR_COUNT,
			1763 | reg_direct_i												, (int)&PORT[6].INV_CMD_COUNT,
			1765 | reg_direct_i												, (int)&PORT[6].INV_PKT_COUNT,
			1767 | reg_direct_i												, (int)&PORT[6].SUCCESS,

			1769 | reg_direct_i												, (int)&PORT[7].WDOG_COUNT,
			1771 | reg_direct_i												, (int)&PORT[7].ERROR_COUNT,
			1773 | reg_direct_i												, (int)&PORT[7].INV_CMD_COUNT,
			1775 | reg_direct_i												, (int)&PORT[7].INV_PKT_COUNT,
			1777 | reg_direct_i												, (int)&PORT[7].SUCCESS,

			1801 | reg_indirect    			 | PROT_U  						, (int)&VARUSER[0],
			1803 | reg_indirect    			 | PROT_U  						, (int)&VARUSER[1],
			1805 | reg_indirect    			 | PROT_U  						, (int)&VARUSER[2],
			1807 | reg_indirect    			 | PROT_U  						, (int)&VARUSER[3],
			1809 | reg_indirect   		 	 | PROT_U  						, (int)&VARUSER[4],

			1851 	  | reg_direct_i										, (int)&SYS.log_n,
			1853 	  | reg_direct_i										, (int)&SYS.log_n_max_per_sector,
			1855 	  | reg_direct_i										, (int)&SYS.log_current_sector,
			1857 	  | reg_direct_i										, (int)&SYS.log_n_sectors,
			1859 |CFGU| reg_indirect    	 | PROT_U  		 				, (int)&SYS_log_sample_period,
			1861 	  | reg_direct_i										, (int)&SYS.log_absolute_index,
			1863 |CFGU| reg_indirect    	 | PROT_U  		 				, (int)&USER_log_sample_period,

			1891 |CFGU| reg_direct_i      	 | PROT_U						, (int)&NaN_val_flt,
			1893 |CFGU| reg_direct_f      	 | PROT_U						, (int)&NaN_val,

			1901 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[0],   /* use HART_DV_TABLE with values in INT table */
			1903 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[1],
			1905 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[2],
			1907 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[3],
			1909 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[4],
			1911 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[5],
			1913 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[6],
			1915 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[7],
			1917 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[8],
			1919 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[9],
			1921 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[10],
			1923 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[11],
			1925 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[12],
			1927 | reg_indirect_m   	 | PROT_U	 						, (int)&REG_USER_DEFINE[13],
			1929 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[14],
			1931 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[15],
			1933 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[16],
			1935 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[17],
			1937 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[18],
			1939 | reg_indirect_m    	 | PROT_U	 						, (int)&REG_USER_DEFINE[19],

			1941 | reg_direct_i												, (int)&SYS.log_start,
			1943 | reg_direct_i												, (int)&CCM_Records.log_start,
			1945 | reg_direct_i												, (int)&FC_Periodic.log_start,

			1951 | reg_direct_i												, (int)&ESN_MFGR[0],
			1953 | reg_direct_i												, (int)&ESN_MFGR[1],
			1955 | reg_direct_i												, (int)&ESN_MFGR[2],
			1957 | reg_direct_i												, (int)&ESN_MFGR[3],
			1959 | reg_direct_i												, (int)&ESN_USER[0],
			1961 | reg_direct_i												, (int)&ESN_USER[1],
			1963 | reg_direct_i												, (int)&ESN_USER[2],
			1965 | reg_direct_i												, (int)&ESN_USER[3],
			1967 | CFGU  | reg_direct_i | PROT_G							, (int)&SN_PIPE,
			1969 | CFGU  | reg_direct_i | PROT_G							, (int)&POWER.SNUM,
			1971 | CFGU  | reg_direct_i | PROT_G							, (int)&uP.SNUM,
			1973 | CFGU  | reg_direct_i | PROT_G							, (int)&COMM.SNUM,
			1975 | CFGU  | reg_direct_i | PROT_G							, (int)&ANALYZER.SNUM,
			1977 | CFGU  | reg_direct_i | PROT_G							, (int)&ANALOGIO.SNUM,
			1979 | CFGU  | reg_direct_i | PROT_G							, (int)&MOTHERBOARD.SNUM,
			1981 | CFGU  | reg_direct_i | PROT_G							, (int)&SN_DC_BOARD,
			1983 | CFGU  | reg_direct_i | PROT_G							, (int)&SN_OSC,
			1985 | CFGU  | reg_direct_i | PROT_U							, (int)&FINAL_ASSY,
			1987 | CFGU  | reg_direct_i | PROT_G							, (int)&DISPLAY.SNUM,  
			                                                                                       
			1991 | CFGU  | reg_indirect | PROT_U	 						, (int)&Density_D3,     /*third order density correction RS*/
			1993 | CFGU  | reg_indirect | PROT_U	 						, (int)&Density_D2,     /*third order density correction RS*/
			   0 , 0					/* END OF TABLE */
			};

#define MB_ADDR_COIL 0
#pragma DATA_SECTION(mb_coil,"TABLES")
const int mb_coil[][2]=		{
			   1 | coil_direct_bit_00 | PROT_U								, (int)&DIAGNOSTICS[0],
			   2 | coil_direct_bit_01 | PROT_U								, (int)&DIAGNOSTICS[0],
			   3 | coil_direct_bit_02 | PROT_U								, (int)&DIAGNOSTICS[0],
			   4 | coil_direct_bit_03 | PROT_U								, (int)&DIAGNOSTICS[0],
			   5 | coil_direct_bit_04 | PROT_U								, (int)&DIAGNOSTICS[0],
			   6 | coil_direct_bit_05 | PROT_U								, (int)&DIAGNOSTICS[0],
			   7 | coil_direct_bit_06 | PROT_U								, (int)&DIAGNOSTICS[0],
			   8 | coil_direct_bit_07 | PROT_U								, (int)&DIAGNOSTICS[0],
			   9 | coil_direct_bit_08 | PROT_U								, (int)&DIAGNOSTICS[0],
			  10 | coil_direct_bit_09 | PROT_U								, (int)&DIAGNOSTICS[0],
			  11 | coil_direct_bit_0A | PROT_U								, (int)&DIAGNOSTICS[0],
			  12 | coil_direct_bit_0B | PROT_U								, (int)&DIAGNOSTICS[0],
			  13 | coil_direct_bit_0C | PROT_U								, (int)&DIAGNOSTICS[0],
			  14 | coil_direct_bit_0D | PROT_U								, (int)&DIAGNOSTICS[0],
			  15 | coil_direct_bit_0E | PROT_U								, (int)&DIAGNOSTICS[0],
			  16 | coil_direct_bit_0F | PROT_U								, (int)&DIAGNOSTICS[0],
			  17 | coil_direct_bit_00 | PROT_U								, (int)&DIAGNOSTICS[1],
			  18 | coil_direct_bit_01 | PROT_U								, (int)&DIAGNOSTICS[1],
			  19 | coil_direct_bit_02 | PROT_U								, (int)&DIAGNOSTICS[1],
			  20 | coil_direct_bit_03 | PROT_U								, (int)&DIAGNOSTICS[1],
			  21 | coil_direct_bit_04 | PROT_U								, (int)&DIAGNOSTICS[1],
			  22 | coil_direct_bit_05 | PROT_U								, (int)&DIAGNOSTICS[1],
			  23 | coil_direct_bit_06 | PROT_U								, (int)&DIAGNOSTICS[1],
			  24 | coil_direct_bit_07 | PROT_U								, (int)&DIAGNOSTICS[1],
			  25 | coil_direct_bit_08 | PROT_U								, (int)&DIAGNOSTICS[1],
			  26 | coil_direct_bit_09 | PROT_U								, (int)&DIAGNOSTICS[1],
			  27 | coil_direct_bit_0A | PROT_U								, (int)&DIAGNOSTICS[1],
			  28 | coil_direct_bit_0B | PROT_U								, (int)&DIAGNOSTICS[1],
			  29 | coil_direct_bit_0C | PROT_U								, (int)&DIAGNOSTICS[1],
			  30 | coil_direct_bit_0D | PROT_U								, (int)&DIAGNOSTICS[1],
			  31 | coil_direct_bit_0E | PROT_U								, (int)&DIAGNOSTICS[1],
			  32 | coil_direct_bit_0F | PROT_U								, (int)&DIAGNOSTICS[1],
              //
			  33 | PROT_U													, (int)&DIO_ALARM,
			  34 | PROT_U													, (int)&DIO_ERROR,
              //
			  35 | coil_direct_bit_00 | PROT_G								, (int)&DEMO,
              //
			  36 | coil_direct_bit_00 | PROT_U								, (int)&CHANGE,							/* config data has been updated, but not saved */
              //
			  37 | coil_direct_bit_00										, (int)&RTC_PRESENT,
              //
			  38 | coil_direct_bit_00										, (int)&LCD_PRESENT,
              //
			  39 | coil_direct_bit_06 										, (int)&REG_WATERCUT.STAT,				/* alarm_hi */
			  40 | coil_direct_bit_07 										, (int)&REG_WATERCUT.STAT,				/* alarm_lo */
              //
			  41 | coil_direct_bit_06 										, (int)&REG_TEMPERATURE_EXTERNAL.STAT,	/* alarm_hi */
			  42 | coil_direct_bit_07 										, (int)&REG_TEMPERATURE_EXTERNAL.STAT,	/* alarm_lo */
              //
			  43 | coil_direct_bit_06 										, (int)&REG_ADC[ADC_Tint].STAT,			/* alarm_hi */
			  44 | coil_direct_bit_07 										, (int)&REG_ADC[ADC_Tint].STAT,			/* alarm_lo */
              //
			  45 | coil_direct_bit_00 										, (int)&DIPSWITCH[0], 					/* FORCE Port Defaults Indicator */
			  46 | coil_direct_bit_00 										, (int)&DIPSWITCH[1], 					/* Boot Select Indicator */
              
              //47
              //48
              //49
              
			  /* displays lock status, and allows unit to be LOCKED from here, but unlock can only happen from register or */
			  /* by writing 0 to the coil by other unlocked port - COM 1 can always read/write to a register */
			  50 | PROT_U													, (int)&DIO_LOCK[0],					/* will auto-save the config */
			  51 | PROT_G		  											, (int)&DIO_LOCK[1],
			  52 | PROT_U		  											, (int)&DIO_LOCK[2],					/* MSVE Menu - WPROT     */
			  53 | PROT_U		  											, (int)&DIO_LOCK[3],					/* MSVE Menu - TECH MODE */
              54 | PROT_U		  											, (int)&DIO_LOCK[4],    				/* lock heuristic routine RS*/
              //                                                      
			  55 | PROT_U		  											, (int)&DIO_BEEP,
              
              //56
			  //57
			  //58
			  //59
			  
			  60 | CFGU	 | coil_direct_bit_00 | PROT_U	 					, (int)&RLY[0].ON,     					/*Changed to coil_direct_bit_00 for the new coils(need .vect) added RS*/
			  61 | CFGU	 | coil_direct_bit_00 | PROT_U 						, (int)&RLY[1].ON,     					/*Changed to coil_direct_bit_00 for the new coils(need .vect) added RS*/
              
              //62 - 70
              
			  71 | CFGU  | PROT_G	 										, (int)&RTD_CAL,						/* 0 = calibrate low resistance, 1 = calibrate high resistance */
			  72 | CFGU  | PROT_U	 										, (int)&DIO_PORT_DEFAULTS,
              
              //73 - 79
              
			  80 | CFGU  | coil_direct_bit_00 | PROT_G						, (int)&AMETEK,
              
              //81 - 90
                                                                                           
              91 | CFGU  | coil_direct_bit_00 | PROT_U                      , (int)&CAP_WATER_STOP,      			/*new salt cal routine manual stop RS*/
              92 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&CAP_OIL_STOP,        			/*new salt cal routine manual stop RS*/
			  
			  //93 - 100
			  
			 101 | CFGU	 | PROT_U	 										, (int)&DIO_TEMP_C,
			 102 | PROT_U													, (int)&DIO_CAP_OIL,
			 103 | PROT_U													, (int)&DIO_CAP_WATER,
			 104 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&DIO_PORT_IGNORE_DATA_EXCEPTION,
			 105 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&DIO_Autosave_on_pair_boundary,
			 106 | CFGU  | PROT_U											, (int)&DIO_HART_5,
			 107 | CFGU  | PROT_U											, (int)&LOOP_ENABLED,
			 108 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&IRDA_ENABLE,
			 109 | CFGU  | coil_direct_bit_01 | PROT_U			 			, (int)&IRDA_ENABLE, 					/* sensitivity control bit */
			 110 | CFGU  | coil_direct_bit_00 | PROT_G	 					, (int)&EXTUNE,
			 111 | CFGU	 | PROT_G		  									, (int)&DIO_RESEARCH_MODE,
			 112 | CFGU  | coil_direct_bit_00 | PROT_G						, (int)&DIO_AUX_FREQ_MODE,
			 113 | CFGU	 | PROT_G											, (int)&DIO_HEATER_DISABLE,
			 114 | CFGU  | coil_direct_bit_00 | EN_W	 					, (int)&DIO_IDEC_ENABLE,
			 115 | CFGU  | PROT_U			 								, (int)&DIO_BUILT_IN_TEST_ENABLE,
			 116 | EN_W								 						, (int)&DIO_BUILT_IN_TEST,
			 117 | DIS_R | EN_W												, (int)&DIO_SYSTEM_RESET,
			 118 | DIS_R | PROT_U	 										, (int)&DIO_SAVE_USER_CONFIG,
			 119 | DIS_R | PROT_U  											, (int)&DIO_RESTORE_USER_CONFIG,
			 120 | DIS_R | EN_W												, (int)&DIO_RESET_FACTORY_DEFAULTS,
			 121 | DIS_R | PROT_G											, (int)&DIO_SAVE_FACTORY_CONFIG,
			 122 | DIS_R | PROT_G											, (int)&DIO_RESTORE_BASICS,
			 123 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&SYS_LOG_ENABLED,				/* periodic */
			 124 		 | coil_direct_bit_00 | PROT_U						, (int)&SYS.LOG_ERASE,
			 125 | CFGU  | coil_direct_bit_01 | PROT_U						, (int)&SYS_LOG_ENABLED,				/* config changes */
			 126 | CFGU  | coil_direct_bit_02 | PROT_U						, (int)&SYS_LOG_ENABLED,				/* errors */
			 127 | DIS_R | EN_W												, (int)&DIO_SYSTEM_RESTART,
			 128 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&USER_LOG_ENABLED,
			 129 		 | coil_direct_bit_00 | PROT_U						, (int)&CCM_Records.LOG_ERASE,
			 130 		 | coil_direct_bit_00 | PROT_U						, (int)&FC_Periodic.LOG_ERASE,
			 131 | CFGU  | coil_direct_bit_00 | PROT_G						, (int)&DIO_PV_PERCMASS,
			 132 		 | coil_direct_bit_00								, (int)&USER_LOG_EVENT,					/* actuates CF card on OIT LOG19 */
			 133 		 | coil_direct_bit_00								, (int)&SYS_LOG_EVENT,					/* actuates CF card on OIT LOG20 */
             
             //134 -140
             
			 141 | PROT_U													, (int)&FC[0].Z,
			 142 | PROT_U													, (int)&FC[1].Z,
			 143 | PROT_U													, (int)&FC[2].Z,
             
             //144 - 150
             
			 151 | coil_direct_bit_00										, (int)&FC[0].PULSE_STAT,
			 152 | coil_direct_bit_00										, (int)&FC[1].PULSE_STAT,
			 153 | coil_direct_bit_00										, (int)&FC[2].PULSE_STAT,
			 154 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].enable_NET,
			 155 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].enable_GROSS,
			 156 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].enable_FLOW,
			 157 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].enable_DENSITY,
			 158 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].enable_PULSE,
			 159 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].enable_NET,
			 160 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].enable_GROSS,
			 161 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].enable_FLOW,
			 162 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].enable_DENSITY,
			 163 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].enable_PULSE,
			 164 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].enable_NET,
			 165 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].enable_GROSS,
			 166 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].enable_FLOW,
			 167 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].enable_DENSITY,
			 168 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].enable_PULSE,
             
             //169 - 200
             
			 201 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[0].MANUAL,
			 202 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[0].REVERSE,
			 203 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[0].ALARM_SELECT,
             //
             /* CCM LIQUID VALVE CONTROL*/
			 204 | CFGU  | coil_direct_bit_00 | EN_W	 					, (int)&AO[1].MANUAL,					/* LIQUID VALVE MANUAL CONTROL */
			 205 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[1].REVERSE,
			 206 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[1].ALARM_SELECT,
             //
             /* CCM GAS VALVE CONTROL*/
			 207 | CFGU  | coil_direct_bit_00 | EN_W		 				, (int)&AO[2].MANUAL,     				/* GAS VALVE MANUAL CONTROL */
			 208 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[2].REVERSE,
			 209 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[2].ALARM_SELECT,
             //
             /* CCM ADDITIONAL GAS VALVE CONTROL*/
			 210 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[3].MANUAL,
			 211 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[3].REVERSE,
			 212 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[3].ALARM_SELECT,
             //
			 213 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[4].MANUAL,
			 214 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[4].REVERSE,
			 215 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[4].ALARM_SELECT,
			 //
			 216 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[5].MANUAL,
			 217 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[5].REVERSE,
			 218 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[5].ALARM_SELECT,
			 //
			 219 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[6].MANUAL,
			 220 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[6].REVERSE,
			 221 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[6].ALARM_SELECT,
			 //
			 222 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[7].MANUAL,
			 223 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[7].REVERSE,
			 224 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[7].ALARM_SELECT,
			 //
			 225 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[8].MANUAL,
			 226 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[8].REVERSE,
			 227 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[8].ALARM_SELECT,
             
             //228
             //229
             //230
			 
			 231 		 | coil_direct_bit_00								, (int)&AO[0].present,
			 232 		 | coil_direct_bit_00								, (int)&AO[1].present,
			 233 		 | coil_direct_bit_00								, (int)&AO[2].present,
			 234 		 | coil_direct_bit_00								, (int)&AO[3].present,
			 235 		 | coil_direct_bit_00								, (int)&AO[4].present,
			 236 		 | coil_direct_bit_00								, (int)&AO[5].present,
			 237 		 | coil_direct_bit_00								, (int)&AO[6].present,
			 238 		 | coil_direct_bit_00								, (int)&AO[7].present,
			 239 		 | coil_direct_bit_00								, (int)&AO[8].present,
             
             //240
             
			 241 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[0].PID_enable_failsafe,
			 242 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[1].PID_enable_failsafe,
			 243 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[2].PID_enable_failsafe,
			 244 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[3].PID_enable_failsafe,
			 245 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[4].PID_enable_failsafe,
			 246 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[5].PID_enable_failsafe,
			 247 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[6].PID_enable_failsafe,
			 248 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[7].PID_enable_failsafe,
			 249 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&AO[8].PID_enable_failsafe,
             
             //250
             
			 251 		 | coil_direct_bit_00								, (int)&AO[0].PID_fail,
			 252 		 | coil_direct_bit_00								, (int)&AO[1].PID_fail,
			 253 		 | coil_direct_bit_00								, (int)&AO[2].PID_fail,
			 254 		 | coil_direct_bit_00								, (int)&AO[3].PID_fail,
			 255 		 | coil_direct_bit_00								, (int)&AO[4].PID_fail,
			 256 		 | coil_direct_bit_00								, (int)&AO[5].PID_fail,
			 257 		 | coil_direct_bit_00								, (int)&AO[6].PID_fail,
			 258 		 | coil_direct_bit_00								, (int)&AO[7].PID_fail,
			 259 		 | coil_direct_bit_00								, (int)&AO[8].PID_fail,
             
             //260
             
			 261 		 | coil_direct_bit_00								, (int)&AI[0].present,
			 262 		 | coil_direct_bit_00								, (int)&AI[1].present,
			 263 		 | coil_direct_bit_00								, (int)&AI[2].present,
			 264 		 | coil_direct_bit_00								, (int)&AI[3].present,
			 265 		 | coil_direct_bit_00								, (int)&AI[4].present,
             
			 267		| PROT_U											, (int)&ALFAT_USB_DETECTED, 
			 268		| PROT_U											, (int)&ALFAT_USB_MOUNTED, 			
			 
             //269 - 300
			 
			 301 | EN_W														, (int)&DIO_CLEAR_COUNTERS,         	/* CLEAR ACCUMULATORS */
			 302 | CFGU	 | PROT_U											, (int)&DIO_TOTALIZER_CONTROL,
			 303 | EN_W														, (int)&DIO_CCM_START,					/* CCM START (TEST IN PROGRESS) */
			 304 | CFGU	 | PROT_U											, (int)&DIO_CCM_PURGE_TIME,
			 305															, (int)&DIO_CCM_PURGE_STAT,
			 306 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&CCM_2LIQ,
			 307 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&CCM_2GAS,
			 308 | CFGU  | coil_direct_bit_00 | PROT_G	 					, (int)&USE_COR0_TEMP,
			 309 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&CCM_CORRECT_LIQ_HEIGHT,
			 310 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&CCM_CORRECT_GAS_TO_STP,
			 311 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&CCM_GAS_MASS,
			 312 | CFGU  | coil_direct_bit_00 | PROT_U	 					, (int)&EXT_ANALOG_OUT,
			 313 | PROT_U													, (int)&DIO_MANUAL_RESET,
			 314 | PROT_U													, (int)&DIO_TIME_RESET,             
             
             //315 - 399
			 320 		 | coil_direct_bit_00 | PROT_U						, (int)&FC[0].use_totalizer,
			 321 		 | coil_direct_bit_00 | PROT_U						, (int)&FC[1].use_totalizer,
			 322 		 | coil_direct_bit_00 | PROT_U						, (int)&FC[2].use_totalizer,
			 
			 401 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].USE_PDI_TEMP,
			 402 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].USE_PDI_TEMP,
			 403 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].USE_PDI_TEMP,
			 404 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].USE_PDI_SALINITY,
			 405 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].USE_PDI_SALINITY,
			 406 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].USE_PDI_SALINITY,
			 407 | CFGU  | PROT_U										, (int)&USE_PDI_WATERCUT,
			 408 | CFGU  | PROT_U												, (int)&DUMMY_COIL, //not used
			 409 | CFGU  | PROT_U												, (int)&DUMMY_COIL, //not used
			 410 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].MAN_TEMP,
			 411 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].MAN_SALINITY,
			 412 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].MAN_WATERCUT,
			 413 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].MAN_DENSITY,
			 414 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].MAN_PRESSURE,
			 415 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[0].MAN_FLOW,
			 416 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].MAN_TEMP,
			 417 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].MAN_SALINITY,
			 418 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].MAN_WATERCUT,
			 419 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].MAN_DENSITY,
			 420 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].MAN_PRESSURE,
			 421 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[1].MAN_FLOW,
			 422 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].MAN_TEMP,
			 423 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].MAN_SALINITY,
			 424 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].MAN_WATERCUT,
			 425 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].MAN_DENSITY,
			 426 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].MAN_PRESSURE,
			 427 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&FC[2].MAN_FLOW,
			 428 | CFGU  | PROT_U										, (int)&CALC_WC_DENSITY,
			 429 | CFGU  | PROT_U												, (int)&DUMMY_COIL, //not used
			 430 | CFGU  | PROT_U												, (int)&DUMMY_COIL, //not used
             
             //431 - 450
             
			 451 | PROT_U													, (int)&COR[0].Z,
			 452 | PROT_U													, (int)&COR[1].Z,
			 453 | PROT_U													, (int)&COR[2].Z,
			 454 | PROT_U													, (int)&COR[3].Z,
             
             //455 - 499
             
			 500 | EN_W  | coil_direct_bit_0C								, (int)&DIO_MSVE,						/* IDEC OIT MSVE2 */
			 501 | EN_W  | coil_direct_bit_0D								, (int)&DIO_MSVE,
			 502 | EN_W  | coil_direct_bit_0E								, (int)&DIO_MSVE,
			 503 | EN_W  | coil_direct_bit_0F								, (int)&DIO_MSVE,
             
             //504 - 509
             
			 510 | EN_W  | coil_direct_bit_00								, (int)&DIO_MSVE,						/* LCD MSVE1 */
			 511 | EN_W  | coil_direct_bit_01								, (int)&DIO_MSVE,
			 512 | EN_W  | coil_direct_bit_02								, (int)&DIO_MSVE,
			 513 | EN_W  | coil_direct_bit_03								, (int)&DIO_MSVE,
             
             //514 - 600
             
			 601 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&ALYESKA.ENABLED,
             
             //602 - 700
             
			 701 | CFGU	 | PROT_U											, (int)&HSALT.ENABLED,
			 //702 		 | coil_direct_bit_00								, (int)&HSALT.new,
			 703 		 | coil_direct_bit_00								, (int)&HSALT.CHANGED,
			 704 		 | coil_direct_bit_00								, (int)&HSALT.PURGING,
			 705 		 | coil_direct_bit_00								, (int)&HSALT.TEST_IN_PROGRESS, 
			 706 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&RESET_AT_PURGE,    				//RS
             
             //707
             //708
             //709
             //710
             
			 711 | CFGU	 | PROT_U											, (int)&DIO_uP_GET,
			 712 | CFGU	 | PROT_U											, (int)&DIO_COMM_GET,
			 713 | CFGU	 | PROT_U											, (int)&DIO_ANALYZER_GET,
			 714 | CFGU	 | PROT_U											, (int)&DIO_POWER_GET,
			 715 | CFGU	 | PROT_U											, (int)&DIO_ANALOGIO_GET,
			 716 | CFGU	 | PROT_U											, (int)&DIO_DISPLAY_GET,
			 717 | CFGU	 | PROT_U											, (int)&DIO_MOTHERBOARD_GET,
             
             //718
             //719
             //720
             
			 721 | CFGU	 | PROT_G											, (int)&DIO_uP_SET,
			 722 | CFGU	 | PROT_G											, (int)&DIO_COMM_SET,
			 723 | CFGU	 | PROT_G											, (int)&DIO_ANALYZER_SET,
			 724 | CFGU	 | PROT_G											, (int)&DIO_POWER_SET,
			 725 | CFGU	 | PROT_G											, (int)&DIO_ANALOGIO_SET,
			 726 | CFGU	 | PROT_G											, (int)&DIO_DISPLAY_SET,
			 727 | CFGU	 | PROT_G											, (int)&DIO_MOTHERBOARD_SET,
             
             //728
             //729
             //730
                
             731 | CFGU  | coil_direct_bit_00 | PROT_U					    , (int)&AVG_RESET,       				//RS
             
             //732
             
             733 | CFGU  | coil_direct_bit_00 | PROT_U                      , (int)&MM_LIQ_fail,          			//RS
             734 | CFGU  | coil_direct_bit_00 | PROT_U                      , (int)&MM_GAS_fail,          			//RS
             735 | CFGU  | coil_direct_bit_00 | PROT_U                      , (int)&Rosemount_fail,       			//RS
             //
             736 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&GAS_DENSITY_INPUT_ENABLED,    	//RS
             //
             737 | CFGU  | coil_direct_bit_00 | PROT_U	                    , (int)&HSALT_FREQ_TRIGGER, 			//RS 
             738 | CFGU  | coil_direct_bit_00 | PROT_U                      , (int)&HSALT_TEMP_TRIGGER, 			//RS 
             //
             739 | CFGU  | coil_direct_bit_00 | PROT_U	                    , (int)&LOW_SALT_MODE, 					//RS
             // 
             740 | CFGU  | PROT_U					                        , (int)&GAS_ENTRAINED, 					//RS
             //741 | CFGU  | coil_direct_bit_00 | PROT_U                      , (int)&HSALT_GAS_TRIGGER, 				/*old Fmin out of window RS*/
             742 | CFGU  | coil_direct_bit_00 | PROT_U	                    , (int)&GAS_ENTRAINED_DENS_DETECT, 		//RS
             //743 | CFGU  | PROT_U	                       					, (int)&BOXCAR_ONLY, 					//RS
             744 | CFGU  | coil_direct_bit_00 | PROT_U	                    , (int)&BULK_LEVEL_ENABLED, 			//RS 
             745 | CFGU  | PROT_U	                       					, (int)&OIL_PHASE_ONLY, 				//RS
             746 | CFGU  | PROT_U	                       					, (int)&WATER_PHASE_ONLY, 				//RS
             
			 747 | CFGU  | PROT_U	                       					, (int)&gas_routine_reset_needed,
			 
			 748 | CFGU  | PROT_U											, (int)&BEGIN_ALFAT_LOGGING,
			 750 | CFGU  | coil_direct_bit_00 | PROT_U						, (int)&RUSS,
             751 | CFGU  | PROT_U                                           , (int)&RELAY1_REVERT,                  // Bug#86 by DKOH, May 5 2020
             752 | CFGU  | PROT_U                                           , (int)&RELAY2_REVERT,                  // Bug#86 by DKOH, May 5 2020
             //747 - 998
                                                 
			 999 		 | coil_direct_bit_00								, (int)&SA,
             
             //1000 - 999999
		       0 															, 0		 };								/* END OF TABLE */
								

#define MB_ADDR_EXT 60000
#pragma DATA_SECTION(mb_ext,"TABLES")
const int mb_ext[][2]=	{/* special coefficient area for modbus starting at addr 60001 (no Auto-Save) */
			(int)&TEMP_OIL_MAX,					1,		/* address, length in floats (float reg) */
			(int)&TEMPS_OIL,					10,		//60003-60022
			(int)&COEFF_TEMP_OIL,				10*4,	//60023-60102
			(int)&SALT_MAX,						1,		//60103-60102
			(int)&SALTS,						20,		//60105-60144
			(int)&TEMP_WATER_MAX,				1,		//60145-60146
			(int)&TEMPS_WATER,					15,		//60147-60176
			(int)&COEFF_SALT_TEMP_WATER,		20*15*4,//60177-62576
			(int)&SALINITY,						SMAX,	//62577-62696
			(int)&OIL_ADJ,						SMAX,	//62697-62816
			(int)&WATER_ADJ,					SMAX,	//62817-62936
			(int)&WATER_ALARM_LO,				SMAX,	//62937-63056
			(int)&WATER_ALARM_HI,				SMAX,	//63057-63176
			(int)&CCM_SETPOINT_P1,				SMAX,	//63177-63296
			(int)&CCM_SETPOINT_P2,				SMAX,	//63297-63416
			(int)&CCM_SETPOINT_L1,				SMAX,	//63417-63536
			(int)&CCM_SETPOINT_L2,				SMAX, 	//63537-63656
			//Add stream select for Hsalt and Gas routine (search SMAX) *RS*
			(int)&HSALT_ENABLE,					SMAX,	//63657-63776
			(int)&GAS_ROUTINE_ENABLE,			SMAX,	//63777-63896
			(int)&stream_bubble_length,			SMAX,	//63897-64016
				//(int)&BOXCAR_ONLY_ENABLE,			SMAX,					//n/a
			(int)&stream_pattern_length,		SMAX,	//64017-64136
				//(int)&HSALT_SPAN,					SMAX,					//n/a
			(int)&HSALT_MIN_FLOW,				SMAX,	//64137-64256
			(int)&stream_boxcar_expire,			SMAX,	//64257-64376
				//(int)&MIN_FREQ_BOXCAR,			SMAX,					//n/a
			(int)&stream_delta_temp,			SMAX,	//64377-64496
				//(int)&GAS_BUBBLE,	 				SMAX,					//n/a
			(int)&SALINITY,						SMAX,						//dummy
				//(int)&GAS_PATTERN,				SMAX, 					//n/a
			/*Add option to force phase on each stream RS*/
			(int)&OIL_PHASE_ONLY_ENABLE,		SMAX,
			(int)&WATER_PHASE_ONLY_ENABLE,		SMAX,  
			/*Add PID to stream table RS*/   
			(int)&LIQ_VALVE_P,					SMAX,
			(int)&LIQ_VALVE_I,					SMAX,  
			(int)&LIQ_VALVE_D,					SMAX,  
			(int)&GAS_VALVE_P,					SMAX,
			(int)&GAS_VALVE_I,					SMAX,  
			(int)&GAS_VALVE_D,					SMAX,
			
		       0 , 0						/* END OF TABLE */
						};

#undef MODBUSTABLES_H
#endif
#endif
