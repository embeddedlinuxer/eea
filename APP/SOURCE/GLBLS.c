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
/* File Name: GLBLS.C						    							*/
/* 									    									*/
/* File Description: All this file does is set up basics.  See function		*/
/* description for more details.				    						*/
/*									    									*/
/****************************************************************************/
#define GLBLS_H

#include "GLBLS.H"

/****************************************************************************/
/* SETUP BASICS																*/
/*                                                                          */
/* Description: Sets up the variables during intialization.                 */
/*                                                                          */
/* Arguments: 	void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       This is one of the most important functions in the analyzer	*/
/*				program.  It basically will tell you all the global			*/
/*				variables that the analyzer uses and their default values on*/
/*				startup. Variable names and default values are commented.	*/
/*                                                                          */
/****************************************************************************/
void Setup_Basics(void)
{
	int 		i,j,k;
	char* 		c;
	VAR* 		v;
	unsigned int ui;
	unsigned int* m;

	_GIEP;

	LEDS_ON;

	DISABLE_WDOG;

	RESET_COUNTER = 0;

	if (!MEM)
	{ /* calculate CRC!!! */
		CRC_BOOT      = Calc_CRC(FLASH_LOC_BOOT, FLASH_BOOT_SIZE);
		CRC_FAST      = Calc_CRC(FLASH_LOC_FAST, FLASH_FAST_SIZE);
		CRC_APP       = Calc_CRC(FLASH_LOC_APP,  FLASH_APP_SIZE);
		CRC_INIT      = Calc_CRC(FLASH_LOC_INIT, FLASH_INIT_SIZE);
	}

		
	VAR_DAMP_Init(1);	/* note: this must be executed prior to any variable functions!!! */

	/* Dummy - NaN */
	VAR_Initialize(&REG_DUMMY, c_not_used, u_generic_not_used, 100.0, 1000.0, var_no_bound|var_no_alarm);
	VAR_NaN(&REG_DUMMY);
	sprintf(REG_DUMMY.name, "Not Used");
    
    /* Watercut - 0.0 */
	VAR_Initialize(&REG_WATERCUT, c_analytical, u_ana_percent, 100.0, 1000.0, var_dampen|var_NaNproof);
	sprintf(REG_WATERCUT.name, "Water Cut");	//R275
	REG_WATERCUT.name_r = 275;
	VAR_Setup_Unit(&REG_WATERCUT, u_ana_percent, 100.0, 0.0, 105.0, -3.0);
	VAR_Update(&REG_WATERCUT, 0.0, 0, 0);
	REG_WATERCUT_RAW = 0.0;
	REG_WATERCUT.vect1 = (int*)PV_AVERAGE;
    
    /* Watercut by Density BC - 0.0 */
	// disabled alarm and boundary alerts -- this was causing "VARIABLE BOUNDS" errors all over the place -DHA 8/7/2015
	VAR_Initialize(&REG_WATERCUT_DENSITY, c_analytical, u_ana_percent, 100.0, 1000.0, var_dampen|var_NaNproof|var_no_alarm|var_round);
	sprintf(REG_WATERCUT_DENSITY.name, "Water Cut by Density");
	VAR_Setup_Unit(&REG_WATERCUT_DENSITY, u_ana_percent, 100.0, 0.0, 105.0, -3.0);
	VAR_Update(&REG_WATERCUT_DENSITY, 0.0, 0, 0);
	
	/* Process Averaging - 1.0 */
	VAR_Initialize(&REG_NUM_SAMP, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_NUM_SAMP.name, "Process Averaging");	//R276
	REG_NUM_SAMP.name_r = 276;
	VAR_Setup_Unit(&REG_NUM_SAMP, u_mfgr_specific_none, MAXBUFF, 1.0, MAXBUFF, 1.0);
	VAR_Update(&REG_NUM_SAMP, 1.0, 0, 0);

	/* Emulsion Phase Holdover - 0.0 */
	VAR_Initialize(&REG_EM_PHASE_HOLD, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_EM_PHASE_HOLD.name, "Em. Phase Holdover");
	VAR_Setup_Unit(&REG_EM_PHASE_HOLD, u_mfgr_specific_none, 30.0, 0.0, 30.0, 0.0);
	VAR_Update(&REG_EM_PHASE_HOLD, 0.0, 0, 0);
    
    /*************phase hold over RS - 3.0 ********************/
	VAR_Initialize(&REG_PHASE_HOLD_CYCLES, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_PHASE_HOLD_CYCLES.name, "Phase Hold Over");	//R277
	REG_PHASE_HOLD_CYCLES.name_r = 277;
	VAR_Setup_Unit(&REG_PHASE_HOLD_CYCLES, u_mfgr_specific_none, 30.0, 0.0, 30.0, 0.0);
	VAR_Update(&REG_PHASE_HOLD_CYCLES, 3.0, 0, 0);
    
   	/*************average filter RS - 1.0 ********************/
	VAR_Initialize(&REG_WC_NUM_SAMPLES, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_WC_NUM_SAMPLES.name, "Num of Water Cut Samples");
	VAR_Setup_Unit(&REG_WC_NUM_SAMPLES, u_mfgr_specific_none, 30.0, 0.0, 30.0, 0.0);
	VAR_Update(&REG_WC_NUM_SAMPLES, 1.0, 0, 0); 

	/*
	//Freq statistics trigger Hsalt recalc RS - 30.0
	VAR_Initialize(&REG_FREQ_WINDOW, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_FREQ_WINDOW.name, "Frequency Window for HSALT");  
	VAR_Setup_Unit(&REG_FREQ_WINDOW, u_mfgr_specific_none, 60.0, 0.0, 60.0, 0.0);
	VAR_Update(&REG_FREQ_WINDOW, 30.0, 0, 0);   
	*/
	
	//Freq statistics trigger Hsalt recalc RS - 1.5
	VAR_Initialize(&REG_FREQ_VARIANCE_RATIO, c_analytical, u_mfgr_specific_none, 100.0, 10000.0, var_no_bound|var_no_alarm);
	sprintf(REG_FREQ_VARIANCE_RATIO.name, "Freq Variances Changing Ratio for HSALT");  
	VAR_Update(&REG_FREQ_VARIANCE_RATIO, 1.5, 0, 0); 
	
	//Temp statistics trigger Hsalt recalc RS - 3.0 
    VAR_Initialize(&REG_DELTA_TEMP, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_DELTA_TEMP.name, "Temperature Delta for HSALT");  
	VAR_Setup_Unit(&REG_DELTA_TEMP, u_mfgr_specific_none, 30.0, 0.0, 30.0, 0.0);
	VAR_Update(&REG_DELTA_TEMP, 3.0, 0, 0);
	REG_DELTA_TEMP.vect2 = (int*)Mirror_To_Stream_Table;	
    
	U_TEMP_ASCII = 0x2020;
	
	/// NEW GAS ROUTINE ///
	
	//Ensure gas routine is initialized
	gas_routine_reset_needed = TRUE;
	boxcar_reset_needed = TRUE;
	//boxcar_expire_val = 150.0;
	
	//New Boxcar Expiration Value - 157.0 samples
    VAR_Initialize(&boxcar_expire_val, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(boxcar_expire_val.name, "Boxcar Length");
	VAR_Setup_Unit(&boxcar_expire_val, u_mfgr_specific_none, BOXCAR_EXPIRE_MAX + 1, BOXCAR_EXPIRE_MIN - 1, BOXCAR_EXPIRE_MAX + 1, BOXCAR_EXPIRE_MIN - 1);
	VAR_Update(&boxcar_expire_val, 157.0, 0, 0);
	boxcar_expire_val.vect2 = (int*)Mirror_To_Stream_Table;  //stream select
	
	//New Boxcar Expiration Value - 7 minutes
    VAR_Initialize(&boxcar_expire_val_minutes, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(boxcar_expire_val_minutes.name, "Boxcar Minutes");
	VAR_Setup_Unit(&boxcar_expire_val_minutes, u_mfgr_specific_none, MINUTES_BOXCAR_EXPIRE_MAX + 1, MINUTES_BOXCAR_EXPIRE_MIN - 1, MINUTES_BOXCAR_EXPIRE_MAX + 1, MINUTES_BOXCAR_EXPIRE_MIN - 1);
	VAR_Update(&boxcar_expire_val_minutes, 7.0, 0, 0);
	boxcar_expire_val_minutes.vect2 = (int*)Mirror_To_Stream_Table;  //stream select
	
	
	bubble.length = 8;
	pattern.length = 75;

	
	//New Bubble Length - 8
    VAR_Initialize(&bubble_new_length, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(bubble_new_length.name, "New Bubble Length");  
	VAR_Setup_Unit(&bubble_new_length, u_mfgr_specific_none, BUBBLE_SIZE_MAX+1, BUBBLE_SIZE_MIN-1, BUBBLE_SIZE_MAX+1, BUBBLE_SIZE_MIN-1);
	VAR_Update(&bubble_new_length, 8.0, 0, 0);   
	bubble_new_length.vect2 = (int*)Mirror_To_Stream_Table;  //stream select
	
	//New Pattern Length - 75
    VAR_Initialize(&pattern_new_length, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(pattern_new_length.name, "New pattern Length");  
	VAR_Setup_Unit(&pattern_new_length, u_mfgr_specific_none, PATTERN_SIZE_MAX+1, PATTERN_SIZE_MIN-1, PATTERN_SIZE_MAX+1, PATTERN_SIZE_MIN-1);
	VAR_Update(&pattern_new_length, 75.0, 0, 0);   
	pattern_new_length.vect2 = (int*)Mirror_To_Stream_Table;  //stream select
	
	
	
	water_freq_in = 0.0;
	
	/// END: NEW GAS ROUTINE ///

	//RUSS = TRUE;
	RUSS = FALSE;
	RUSS_TBL_LEN = Find_Russ_Tbl_Len();
	
	/* Bulk Level Threshold - 120 */
    /* Close Gas Valve when Level too high for Anadarko Bulk RS */
    VAR_Initialize(&REG_BULK_LEVEL, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_BULK_LEVEL.name, "Bulk Level Threshold");  
	VAR_Setup_Unit(&REG_BULK_LEVEL, u_mfgr_specific_none, 200.0, 0.0, 200.0, 0.0);
	VAR_Update(&REG_BULK_LEVEL, 120, 0, 0);   
    
	/* Oil Phase Calibration - 0.0 */
	VAR_Initialize(&REG_CAL_OIL, c_volume_per_volume, u_vpv_volume_percent, 100.0, 100.0, var_no_alarm);
	sprintf(REG_CAL_OIL.name, "Cal (Oil Phase)");	//R341
	REG_CAL_OIL.name_r = 341;
	VAR_Setup_Unit(&REG_CAL_OIL, u_vpv_volume_percent, 100.0, 0.0, 100.0, 0.0);
	VAR_Update(&REG_CAL_OIL, 0.0, 0, 0);
	REG_CAL_OIL.vect2 = (int*)Calibrate_OIL;

	/* Water Phase Calibration - 0.0 */
	VAR_Initialize(&REG_CAL_WATER, c_volume_per_volume, u_vpv_volume_percent, 100.0, 100.0, var_no_alarm);
	sprintf(REG_CAL_WATER.name, "Cal (Water Phase)");	//R342
	REG_CAL_WATER.name_r = 342;
	VAR_Setup_Unit(&REG_CAL_WATER, u_vpv_volume_percent, 100.0, 0.0, 100.0, 0.0);
	VAR_Update(&REG_CAL_WATER, 0.0, 0, 0);
	REG_CAL_WATER.vect2 = (int*)Calibrate_WATER;
    
    /* Emulsion Phase - 2.0 */
	VAR_Initialize(&REG_EMULSION_PHASE, c_not_classified, u_mfgr_specific_water_phase, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_EMULSION_PHASE.name, "Emulsion Phase");	//R278
	REG_EMULSION_PHASE.name_r = 278;
	VAR_Setup_Unit(&REG_EMULSION_PHASE, u_mfgr_specific_water_phase, 2.0, 0.0, 2.0, 0.0);
	VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);

	/* Oil P0 - 0.0 */
	VAR_Initialize(&OIL_P0, c_emf, u_emf_V, 100.0, 10000.0, var_no_bound|var_no_alarm);
	sprintf(OIL_P0.name, "Oil P0");	//R279
	OIL_P0.name_r = 279;
	VAR_Update(&OIL_P0, 0.0, 0, 0);

	/* Oil P1 - 0.0 */
	VAR_Initialize(&OIL_P1, c_not_classified, u_mfgr_specific_V_per_MHz, 100.0, 10000.0, var_no_bound|var_no_alarm);
	sprintf(OIL_P1.name, "Oil P1");	//R280
	OIL_P1.name_r = 280;
	VAR_Update(&OIL_P1, 0.0, 0, 0);
    
    LOW_SALT_MODE = FALSE;      /*Low salt mode freq threshold RS*/
    
	{/* stream initialization */
		/* Stream Select - 1.0 */
		VAR_Initialize(&REG_STREAM_SELECT, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
		sprintf(REG_STREAM_SELECT.name, "Stream Select");	//R281
		REG_STREAM_SELECT.name_r = 281;
		VAR_Setup_Unit(&REG_STREAM_SELECT, u_mfgr_specific_none, SMAX, 1.0, SMAX, 1.0);
		VAR_Update(&REG_STREAM_SELECT, 1.0, 0, 0);
		REG_STREAM_SELECT.vect2 = (int*)Mirror_From_Stream_Table;

		/* Salinity - 0.02 */
		VAR_Initialize(&REG_SALINITY, c_concentration, u_conc_perc_solid_per_weight, 100.0, 100.0, 0);
		sprintf(REG_SALINITY.name, "Salinity");	//R282
		REG_SALINITY.name_r = 282;
		VAR_Setup_Unit(&REG_SALINITY, u_conc_perc_solid_per_weight, 30.0, 0.02, 30.0, 0.02);
		VAR_Update(&REG_SALINITY, 0.02, 0, 0);
		REG_SALINITY.vect2 = (int*)Mirror_To_Stream_Table;

		/* Oil Phase Adjust - 0.0 */
		VAR_Initialize(&REG_OIL_ADJ, c_volume_per_volume, u_vpv_volume_percent, 100.0, 100.0, var_no_alarm);
		sprintf(REG_OIL_ADJ.name, "Adjust (Oil Phase)");	//R283
		REG_OIL_ADJ.name_r = 283;
		VAR_Setup_Unit(&REG_OIL_ADJ, u_vpv_volume_percent, 100.0, -100.0, 100.0, -100.0);
		VAR_Update(&REG_OIL_ADJ, 0.0, 0, 0);
		REG_OIL_ADJ.vect2 = (int*)Mirror_To_Stream_Table;

		/* Water Phase Adjust - 0.0 */
		VAR_Initialize(&REG_WATER_ADJ, c_volume_per_volume, u_vpv_volume_percent, 100.0, 100.0, var_no_alarm);
		sprintf(REG_WATER_ADJ.name, "Adjust (Water Phase)");	//R284
		REG_WATER_ADJ.name_r = 284;
		VAR_Setup_Unit(&REG_WATER_ADJ, u_vpv_volume_percent, 100.0, -100.0, 100.0, -100.0);
		VAR_Update(&REG_WATER_ADJ, 0.0, 0, 0);
		REG_WATER_ADJ.vect2 = (int*)Mirror_To_Stream_Table;

		/* Process Lo Watercut Alarm - -3.0 */
		VAR_Initialize(&REG_WATERCUT_ALARM_LO, c_volume_per_volume, u_vpv_volume_percent, 100.0, 1000.0, var_no_alarm|var_no_bound);
		sprintf(REG_WATERCUT_ALARM_LO.name, "Process Lo");	//R285
		REG_WATERCUT_ALARM_LO.name_r = 285;
		VAR_Setup_Unit(&REG_WATERCUT_ALARM_LO, u_vpv_volume_percent, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&REG_WATERCUT_ALARM_LO, -3.0, 0, 0);
		REG_WATERCUT_ALARM_LO.vect2 = (int*)Mirror_To_Stream_Table;

		/* Process Hi Watercut Alarm - 103.0 */
		VAR_Initialize(&REG_WATERCUT_ALARM_HI, c_volume_per_volume, u_vpv_volume_percent, 100.0, 1000.0, var_no_alarm|var_no_bound);
		sprintf(REG_WATERCUT_ALARM_HI.name, "Process Hi");	//R286
		REG_WATERCUT_ALARM_HI.name_r = 286;
		VAR_Setup_Unit(&REG_WATERCUT_ALARM_HI, u_vpv_volume_percent, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&REG_WATERCUT_ALARM_HI, 103.0, 0, 0);
		REG_WATERCUT_ALARM_HI.vect2 = (int*)Mirror_To_Stream_Table;
        
        /*Add option to force phase on each stream RS*/
		OIL_PHASE_ONLY.val 		= FALSE; 
		OIL_PHASE_ONLY.vect 	= (int*)Mirror_To_Stream_Table;  
		OIL_PHASE_ONLY.vect2 	= NULL_PTR;
		WATER_PHASE_ONLY.val 	= FALSE;         
		WATER_PHASE_ONLY.vect 	= (int*)Mirror_To_Stream_Table; 
		WATER_PHASE_ONLY.vect2 	= NULL_PTR;
        
        /*Close Gas Valve when Level too high for Anadarko Bulk RS*/
        BULK_LEVEL_ENABLED.val = FALSE;
        BULK_LEVEL_ENABLED.vect = NULL_PTR;
        BULK_LEVEL_ENABLED.vect2 = NULL_PTR;
        
        /*Add stream select for Hsalt and Gas routine RS*/ 
        GAS_ENTRAINED.val 	= FALSE;
        HSALT.ENABLED.vect2 = (int*)Mirror_To_Stream_Table; 
        GAS_ENTRAINED.vect 	= (int*)Mirror_To_Stream_Table; 
        GAS_ENTRAINED.vect2 = NULL_PTR;
		
		//HSALT Minimum Watercut  - 60.0 
   	    VAR_Initialize(&Hsalt_Min_WC, c_not_classified, u_mfgr_specific_none, 10.0, 10.0, var_no_alarm);
		sprintf(Hsalt_Min_WC.name, "HSALT Min WC");	//R288
		Hsalt_Min_WC.name_r = 288;
		VAR_Setup_Unit(&Hsalt_Min_WC, u_ana_percent, 90.0, 59.99, 0, 0);
		VAR_Update(&Hsalt_Min_WC, 60.0, 0, 0);
	    Hsalt_Min_WC.vect2 = NULL_PTR; 
		
	    
		/* Minimum Flow Rate - 0.0 */
	    VAR_Initialize(&HSALT.flow_threshold, c_not_classified, u_mfgr_specific_none, 10.0, 10.0, var_no_alarm);
		sprintf(HSALT.flow_threshold.name, "Min Flow Rate");	//R289
		HSALT.flow_threshold.name_r = 289;
		VAR_Update(&HSALT.flow_threshold, 0.0, 0, 0);
		HSALT.flow_threshold.vect2 = (int*)Mirror_To_Stream_Table;       
		
		for (i=0;i<SMAX;i++)
		{
			SALINITY[i]  		= REG_SALINITY.calc_val;
			OIL_ADJ[i]   		= REG_OIL_ADJ.calc_val;
			WATER_ADJ[i] 		= REG_WATER_ADJ.calc_val;
			WATER_ALARM_LO[i] 	= REG_WATERCUT_ALARM_LO.calc_val;
			WATER_ALARM_HI[i] 	= REG_WATERCUT_ALARM_HI.calc_val;  
			
			/*Add stream select for Hsalt and Gas routine (search SMAX) RS*/ 
			HSALT_ENABLE[i] 		= HSALT.ENABLED.val;				
			GAS_ROUTINE_ENABLE[i] 	= GAS_ENTRAINED.val;	
			
			HSALT_MIN_FLOW[i] 		= HSALT.flow_threshold.calc_val;
			
			stream_bubble_length[i] = bubble_new_length.val;
			stream_pattern_length[i] = pattern_new_length.val;
			stream_boxcar_expire[i] = boxcar_expire_val.val;
			stream_boxcar_expire_minutes[i] = boxcar_expire_val_minutes.val;

			stream_delta_temp[i] = REG_DELTA_TEMP.val;
			
			/*Add option to force phase on each stream RS*/
			OIL_PHASE_ONLY_ENABLE[i] 	= OIL_PHASE_ONLY.val;
			WATER_PHASE_ONLY_ENABLE[i] 	= WATER_PHASE_ONLY.val;
			
			/*Add PID to stream table RS*/     
			LIQ_VALVE_P[i] = AO[1].P.calc_val;
			LIQ_VALVE_I[i] = AO[1].I.calc_val;  
			LIQ_VALVE_D[i] = AO[1].D.calc_val;  
			GAS_VALVE_P[i] = AO[2].P.calc_val;
			GAS_VALVE_I[i] = AO[2].I.calc_val;  
			GAS_VALVE_D[i] = AO[2].D.calc_val;		
		}

		/* Oil Index - 0.0 */
		VAR_Initialize(&REG_OIL_INDEX, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(REG_OIL_INDEX.name, "Oil Index");	//R290
		REG_OIL_INDEX.name_r = 290;
		VAR_Setup_Unit(&REG_OIL_INDEX, u_mfgr_specific_MHz, 1000.0, -1000.0, 1000.0, -1000.0);
		VAR_Update(&REG_OIL_INDEX, 0.0, 0, 0);

		/* Water Index - 0.0 */
		VAR_Initialize(&REG_WATER_INDEX, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(REG_WATER_INDEX.name, "Water Index");	//R291
		REG_WATER_INDEX.name_r = 291;
		VAR_Setup_Unit(&REG_WATER_INDEX, u_mfgr_specific_MHz, 1000.0, -1000.0, 1000.0, -1000.0);
		VAR_Update(&REG_WATER_INDEX, 0.0, 0, 0);
	 /* stream initialization */}

	 	 
	{/* Temperature Initialization */
		RTD_CURRENT 	= RTD_CURRENT_DEFAULT;
		RTD_GAIN 		= RTD_GAIN_DEFAULT;
		RTD_CAL_LO_OHM 	= 100.0;
		RTD_CAL_LO_V 	= RTD_CAL_LO_OHM * RTD_GAIN * RTD_CURRENT;
		RTD_CAL_HI_OHM 	= 125.0;
		RTD_CAL_HI_V 	= RTD_CAL_HI_OHM * RTD_GAIN * RTD_CURRENT;
		RTD_CAL.val 	= FALSE;
		RTD_CAL.vect 	= (int*)&Calibrate_RTD; 
		RTD_CAL.vect2 	= NULL_PTR;
		USE_COR0_TEMP 	= FALSE;

		/* Temperature Adjustment - 0.0 */
		VAR_Initialize(&REG_TEMPERATURE_USER_ADJUST, c_temperature, u_mfgr_specific_none, 100.0, 100.0, var_no_bound|var_no_alarm);    /*check for temp_adj effect -RS*/
		sprintf(REG_TEMPERATURE_USER_ADJUST.name, "Temperature Adj");	//R292
		REG_TEMPERATURE_USER_ADJUST.name_r = 292;
		VAR_Update(&REG_TEMPERATURE_USER_ADJUST, 0.0, 0, 0);

		//User Input Temperature - N/A 
		VAR_Initialize(&REG_TEMPERATURE_USER, c_temperature, u_mfgr_specific_none, 10.0, 10.0, var_no_bound|var_no_alarm);     //check for temp_adj effect -RS
		sprintf(REG_TEMPERATURE_USER.name, "User Temperature");	//R293
		REG_TEMPERATURE_USER.name_r = 293;
		VAR_Setup_Unit(&REG_WATERCUT_ALARM_LO, u_vpv_volume_percent, 100.0, 0.0, 100.0, 0.0);
		
        
		/* Average Temperature - N/A */
        VAR_Initialize(&REG_TEMPERATURE_AVG, c_temperature, u_mfgr_specific_none, 10.0, 10.0, var_no_bound|var_no_alarm);/*RS*/
		sprintf(REG_TEMPERATURE_AVG.name, "Average Temperature");	//R294
		REG_TEMPERATURE_AVG.name_r = 294;
		
		/* Process Temperature - 0.0 */
		/* Note: this must be done after REG_TEMPERATURE_USER & REG_TEMPERATURE_USER_ADJUST */
		/*       also, the dampening is handled by REG_ADC[Text]                            */
		VAR_Initialize(&REG_TEMPERATURE_EXTERNAL, c_temperature, u_temp_C, 10.0, 10.0, var_no_bound);
		sprintf(REG_TEMPERATURE_EXTERNAL.name, "Process Temperature");	//R295
		REG_TEMPERATURE_EXTERNAL.name_r = 295;
		VAR_Setup_Unit(&REG_TEMPERATURE_EXTERNAL, u_temp_C, 350.0, -50.0, 310, 0);
		VAR_Update(&REG_TEMPERATURE_EXTERNAL, 0.0, 0, 0);
		
		REG_TEMPERATURE_EXTERNAL.vect1 	= (int*)Set_ASCII_Temp_Unit;
		DIO_TEMP_C.val 					= FALSE; /*Initially set F for avg_temp etc. RS*/
		DIO_TEMP_C.vect 				= (int*)Set_Temperature_Unit; 
		DIO_TEMP_C.vect2 				= NULL_PTR;
		
		Set_Temperature_Unit();

		VAR_Update(&REG_TEMPERATURE_USER, REG_TEMPERATURE_EXTERNAL.val+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);
		VAR_Update(&REG_TEMPERATURE_AVG, REG_TEMPERATURE_EXTERNAL.val+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);/*'check error' Initialization AVG TEMP RS*/                
	 /* Temperature Initialization */}                                                                                    

	{/* setup ADC/DAC */
		for (i=0;i<ADC_MAX;i++)
		{
			ADC_TRIM_I_0[i] = 0x0000;
			ADC_TRIM_I_1[i] = 0x7FFF;
			ADC_TRIM_F_0[i] = 0.000;

			if (i==ADC_Tint)
			{
				VAR_Initialize(&REG_ADC[i], c_temperature, u_temp_C, 10.0, 10.0, var_no_bound);
				VAR_Setup_Unit(&REG_ADC[i], u_temp_C, 128, -55, 50.0, 5.0);
				
				ADC_TRIM_I_1[i] = 0x0FFF;
				ADC_TRIM_F_1[i] = 0.0;
				
				if (SA && (HW_VER<0xB7))
					ADC_TRIM_F_1[i] = ADC_EXTREF_V;
			}
			else if (i==ADC_Text)
			{
				VAR_Initialize(&REG_ADC[i], c_temperature, u_temp_C, 10.0, 10.0, var_no_bound|var_no_alarm|var_dampen);
				VAR_Setup_Unit(&REG_ADC[i], u_temp_C, 1000, -1000, 1000, -1000);
				
				REG_ADC[i].dampening = 4.0;
				
				if (SA)
				{
					ADC_TRIM_I_1[i] = 0x0FFF;
					ADC_TRIM_F_1[i] = ADC_EXTREF_V;
				}
				else
					ADC_TRIM_F_1[i] = ADC_REF_V;
				
				TEMPERATURE_TRIM_T1 = 1.0;
				TEMPERATURE_TRIM_T0 = 0.0;
			}
			else if ((i==ADC_VTUNE) || (i==ADC_Vinc) || (i==ADC_Vref) || (i==ADC_Spare))
			{
				VAR_Initialize(&REG_ADC[i], c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm);

				if (i==ADC_VTUNE)
				{
					VAR_Setup_Unit(&REG_ADC[i], u_emf_V, ADC_REF_V*6.0, 0, ADC_REF_V*6.0, 0);
					
					ADC_TRIM_F_1[i] = ADC_REF_V*6.0;
				}
				else
				{
					if (SA)
					{
						VAR_Setup_Unit(&REG_ADC[i], u_emf_V, ADC_EXTREF_V, 0, ADC_EXTREF_V, 0);
						
						ADC_TRIM_I_1[i] = 0x0FFF;
						ADC_TRIM_F_1[i] = ADC_EXTREF_V;
					}
					else
					{
						VAR_Setup_Unit(&REG_ADC[i], u_emf_V, ADC_REF_V*2.5, 0, ADC_REF_V*2.5, 0);
						
						ADC_TRIM_F_1[i] = ADC_REF_V*2.5;
					}
				}
			}
			else
			{
				VAR_Initialize(&REG_ADC[i], c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm);
				VAR_Setup_Unit(&REG_ADC[i], u_emf_V, ADC_REF_V, 0, ADC_REF_V, 0);
				
				ADC_TRIM_F_1[i] = ADC_REF_V;
			}

			VAR_Update(&REG_ADC[i], 0.0, 0, 0);

			switch (i)
			{/* These names are helpful for people that don't know about this program */
				case ADC_Spare:		sprintf(REG_ADC[i].name, "Spare Analog Input"); break;
				case ADC_VTUNE:		sprintf(REG_ADC[i].name, "VTUNE"); break;
				case ADC_Vinc:		sprintf(REG_ADC[i].name, "Vinc");  break;
				case ADC_Vref:		sprintf(REG_ADC[i].name, "Vref");  break;
				case ADC_Tint:		
					sprintf(REG_ADC[i].name, "Internal Temperature");  //R296
					REG_TEMPERATURE_EXTERNAL.name_r = 296;
				case ADC_Text:		
					sprintf(REG_ADC[i].name, "Process Temperature");  	//R295
					REG_ADC[i].name_r = 295;
					break;
				case ADC_Ain5:		sprintf(REG_ADC[i].name, "Analog Input 5");  break;
				case ADC_Ain4:		sprintf(REG_ADC[i].name, "Analog Input 4");  break;
				case ADC_Ain3:		sprintf(REG_ADC[i].name, "Analog Input 3");  break;
				case ADC_Ain2:		sprintf(REG_ADC[i].name, "Analog Input 2");  break;
				case ADC_Ain1:		
					sprintf(REG_ADC[i].name, "Analog Input 1");  	//R298
					REG_ADC[i].name_r = 298;
					break;
				case ADC_GNDSEN:	sprintf(REG_ADC[i].name, "GNDSEN");  break;
			}
		}

		for (i=0;i<DAC_MAX;i++)
		{
			DAC_TRIM_I_0[i] = 0x0000;
			DAC_TRIM_I_1[i] = 0xFFFF;
			DAC_TRIM_F_0[i] = 0.0;
			DAC_TRIM_F_1[i] = DAC_REF_V;

			if ((i>=DAC_Aout1) && (i<=DAC_Aout5))
			{
				VAR_Initialize(&REG_DAC[i], c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm);
				
				if (SA && (i==DAC_Aout1))
				{
					VAR_Setup_Unit(&REG_DAC[i], u_emf_V, DAC_INTREF_V1, 0, DAC_INTREF_V1, 0);
					DAC_TRIM_I_1[i] = 0x0FFF;
					DAC_TRIM_F_1[i] = DAC_INTREF_V1;
				}
				else
					VAR_Setup_Unit(&REG_DAC[i], u_emf_V, DAC_REF_V, 0, DAC_REF_V, 0);
			}
			else if ((i>=DAC_Aout6) && (i<=DAC_Aout9)) // greater than 5, less than 8
			{
				VAR_Initialize(&REG_DAC[i], c_current, u_cur_mA, 1000.0, 10000.0, var_no_alarm);
				VAR_Setup_Unit(&REG_DAC[i], u_cur_mA, 20.0, 0, 20.0, 0);
				
				DAC_TRIM_I_1[i] = 32767;
				DAC_TRIM_F_1[i] = 20.0;
			}
			else
			{
				VAR_Initialize(&REG_DAC[i], c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm);
				
				if ((i==DAC_OSCSEL) || (i==DAC_VTUNE))
				{
					if (SA && (i==DAC_VTUNE))
					{
						VAR_Setup_Unit(&REG_DAC[i], u_emf_V, DAC_INTREF_V0, 0, DAC_INTREF_V0, 0);
						DAC_TRIM_I_1[i] = 0x0FFF;
						DAC_TRIM_F_1[i] = DAC_INTREF_V0;
					}
					else
					{
						VAR_Setup_Unit(&REG_DAC[i], u_emf_V, DAC_REF_V*2.0, 0, DAC_REF_V*2.0, 0);
						DAC_TRIM_F_1[i] = DAC_REF_V*2.0;
					}
				}
				else
					VAR_Setup_Unit(&REG_DAC[i], u_emf_V, DAC_REF_V, 0, DAC_REF_V, 0);
			}

			VAR_Update(&REG_DAC[i], 0.0, 0, 0);

			switch (i)
			{/* These names are helpful for newcomers to this program */
				case DAC_VTUNE:		sprintf(REG_DAC[i].name, "VTUNE"); break;
				case DAC_TUNESEL:	sprintf(REG_DAC[i].name, "Tune Select"); break;
				case DAC_OSCSEL:	sprintf(REG_DAC[i].name, "OSC Select"); break;
				case DAC_Aout1:		
					sprintf(REG_DAC[i].name, "Analog Output 1");	//R299
					REG_DAC[i].name_r = 299;
					break;
				case DAC_Aout2:		sprintf(REG_DAC[i].name, "Analog Output 2"); break;
				case DAC_Aout3:		sprintf(REG_DAC[i].name, "Analog Output 3"); break;
				case DAC_Aout4:		sprintf(REG_DAC[i].name, "Analog Output 4"); break;
				case DAC_Aout5:		sprintf(REG_DAC[i].name, "Analog Output 5"); break;
				case DAC_Aout6:		sprintf(REG_DAC[i].name, "Analog Output 6"); break;
				case DAC_Aout7:		sprintf(REG_DAC[i].name, "Analog Output 7"); break;
				case DAC_Aout8:		sprintf(REG_DAC[i].name, "Analog Output 8"); break;
				case DAC_Aout9:		sprintf(REG_DAC[i].name, "Analog Output 9"); break;
			}
		}
	 /* setup ADC/DAC */}

	EXT_ANALOG_OUT = FALSE;

	for (i=0;i<AO_NLOOPS;i++)
	{
		/* Analog Out - 4.0 */
		VAR_Initialize(&AO[i].CURRENT, c_current, u_cur_mA, 100.0, 100.0, var_dampen|var_no_alarm);
		sprintf(AO[i].CURRENT.name, "Analog Out %d", i+1);	//R300
		AO[i].CURRENT.name_r = 300;
		VAR_Setup_Unit(&AO[i].CURRENT, u_cur_mA, 20.0, 4.0, 20.0, 4.0);
		VAR_Update(&AO[i].CURRENT, 4.0, 0, 0);

		/* Analog Out % - 0.0 */
		VAR_Initialize(&AO[i].CURRENT_PERCENT_OF_RANGE, c_analytical, u_ana_percent, 100.0, 100.0, var_no_alarm);
		sprintf(AO[i].CURRENT_PERCENT_OF_RANGE.name, "Analog Out %% %d", i+1);	//R300
		AO[i].CURRENT_PERCENT_OF_RANGE.name_r = 300;
		VAR_Setup_Unit(&AO[i].CURRENT_PERCENT_OF_RANGE, u_ana_percent, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&AO[i].CURRENT_PERCENT_OF_RANGE, 0.0, 0, 0);

		/* Analog out Lower Range Value? - 0.0 */
		VAR_Initialize(&AO[i].LRV, c_analytical, u_ana_percent, 100.0, 10000.0, var_no_alarm|var_no_bound);
		sprintf(AO[i].LRV.name, "AO %d LRV", i+1);	//R301
		AO[i].LRV.name_r = 301;
		VAR_Update(&AO[i].LRV, 0.0, 0, 0);

		/* Analog out Upper Range Value? - 100.0 */
		VAR_Initialize(&AO[i].URV, c_analytical, u_ana_percent, 100.0, 10000.0, var_no_alarm|var_no_bound);
		sprintf(AO[i].URV.name, "AO %d URV", i+1);	//R302
		AO[i].URV.name_r = 302;
		VAR_Update(&AO[i].URV, 100.0, 0, 0);

		/* Analog out Minimum Trim - 0.0 */
		VAR_Initialize(&AO[i].TRIM_MIN, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm);
		
		if ((i>=DAC_Aout6) && (i<=DAC_Aout9)) 
			VAR_Setup_Unit(&AO[i].TRIM_MIN, u_generic_not_used, 32767.0, 0.0, 32767.0, 0.0);
		else if (SA) 
			VAR_Setup_Unit(&AO[i].TRIM_MIN, u_generic_not_used, 4095.0, 0.0, 4095.0, 0.0);
		else 
			VAR_Setup_Unit(&AO[i].TRIM_MIN, u_generic_not_used, 65535.0, 0.0, 65535.0, 0.0);
		
		sprintf(AO[i].URV.name, "AO %d TRIM MIN", i+1);	//R303
		AO[i].URV.name_r = 303;
		VAR_Update(&AO[i].TRIM_MIN, 0.0, 0, 0);

		/* Analog out Maximum Trim - 4096 - 65535 */
		VAR_Initialize(&AO[i].TRIM_MAX, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm);
		
		if ((i>=DAC_Aout6) && (i<=DAC_Aout9)) 
			VAR_Setup_Unit(&AO[i].TRIM_MAX, u_generic_not_used, 32767.0, 0.0, 32767.0, 0.0);
		else if (SA) 
			VAR_Setup_Unit(&AO[i].TRIM_MAX, u_generic_not_used, 4095.0, 0.0, 4095.0, 0.0);
		else 
			VAR_Setup_Unit(&AO[i].TRIM_MAX, u_generic_not_used, 65535.0, 0.0, 65535.0, 0.0);
		
		sprintf(AO[i].URV.name, "AO %d TRIM MAX", i+1);	//R304
		AO[i].URV.name_r = 304;
		
		/* Default analog out max trim values */
		if ((i>=DAC_Aout6) && (i<=DAC_Aout9)) 
			VAR_Update(&AO[i].TRIM_MAX, 32767.0, 0, 0);
		else if (SA) 
			VAR_Update(&AO[i].TRIM_MAX, 4095.0, 0, 0);
		else 
			VAR_Update(&AO[i].TRIM_MAX, 65535.0, 0, 0);

		AO[i].TRIM_MIN_C 	 = VAR_Get_Unit_Param(&AO[i].CURRENT, reg_direct_bmin, 0, 0);
		AO[i].TRIM_MAX_C 	 = VAR_Get_Unit_Param(&AO[i].CURRENT, reg_direct_bmax, 0, 0);
		AO[i].MINSPAN 	 	 = 0;
		AO[i].MANUAL 	 	 = FALSE;
		AO[i].MANUAL_PERCENT = 0.0;
		AO[i].REVERSE 		 = FALSE;
		AO[i].ALARM_SELECT 	 = FALSE;


		/********Add PID to stream table RS*********/
		VAR_Initialize(&AO[i].P, c_not_classified, u_mfgr_specific_none, 10.0, 1000.0, var_no_bound|var_no_alarm);
		VAR_Update(&AO[i].P, 0.1, 0, 0);   
		
		if ((i==1)||(i==2))
		{
			AO[i].P.vect1 = (int*)Reset_PID_Bias; // need to reset bias if PID values change at all
			AO[i].P.vect2 = (int*)Mirror_To_Stream_Table;
		}
	    
	    VAR_Initialize(&AO[i].I, c_not_classified, u_mfgr_specific_none, 10.0, 1000.0, var_no_bound|var_no_alarm);
		VAR_Update(&AO[i].I, 1.0, 0, 0);
	    
		if ((i==1)||(i==2))
		{
			AO[i].I.vect1 = (int*)Reset_PID_Bias; // need to reset bias if PID values change at all
			AO[i].I.vect2 = (int*)Mirror_To_Stream_Table;
		}
	    
	    VAR_Initialize(&AO[i].D, c_not_classified, u_mfgr_specific_none, 10.0, 1000.0, var_no_bound|var_no_alarm);
		VAR_Update(&AO[i].D, 0.0, 0, 0);
		
		if ((i==1)||(i==2))
		{
			AO[i].D.vect1 = (int*)Reset_PID_Bias; // need to reset bias if PID values change at all
			AO[i].D.vect2 = (int*)Mirror_To_Stream_Table; 
		}
	    
		AO[i].PID_setpoint 			= 0.0;
		AO[i].PID_input 			= 0.0;
		AO[i].PID_fail 				= TRUE;
		AO[i].PID_enable_failsafe 	= TRUE;
		AO[i].v.val 				= -1;
		AO[i].class.val 			= c_analytical;
		AO[i].class.vect 			= (int*)Set_Units; 
		AO[i].unit.val 				= u_ana_percent;
		AO[i].unit.vect 			= (int*)Set_Units; 
	}

	AO[0].v.vect = (int*)Set_Class_Units_AO1;
	AO[1].v.vect = (int*)Set_Class_Units_AO2;
	AO[2].v.vect = (int*)Set_Class_Units_AO3;
	AO[3].v.vect = (int*)Set_Class_Units_AO4;
	AO[4].v.vect = (int*)Set_Class_Units_AO5;
	AO[5].v.vect = (int*)Set_Class_Units_AO6;
	AO[6].v.vect = (int*)Set_Class_Units_AO7;
	AO[7].v.vect = (int*)Set_Class_Units_AO8;
	AO[8].v.vect = (int*)Set_Class_Units_AO9; 
	


	for (i=0;i<AI_NLOOPS;i++)
	{
		/* Analog in - NaN */
		VAR_Initialize(&AI[i].CURRENT, c_current, u_cur_mA, 100.0, 100.0, var_dampen|var_no_alarm|var_no_bound);
		sprintf(AI[i].CURRENT.name, "Analog In %d", i+1);	//R305
		AI[i].CURRENT.name_r = 305;
		VAR_Setup_Unit(&AI[i].CURRENT, u_cur_mA, 20.0, 4.0, 20.0, 4.0);
		VAR_NaN(&AI[i].CURRENT);

		/* Analog in % - NaN */
		VAR_Initialize(&AI[i].CURRENT_PERCENT_OF_RANGE, c_analytical, u_ana_percent, 100.0, 100.0, var_no_alarm|var_no_bound);
		sprintf(AI[i].CURRENT_PERCENT_OF_RANGE.name, "Analog In %% %d", i+1);	//R305
		AI[i].CURRENT_PERCENT_OF_RANGE.name_r = 305;
		VAR_Setup_Unit(&AI[i].CURRENT_PERCENT_OF_RANGE, u_ana_percent, 100.0, 0.0, 100.0, 0.0);
		VAR_NaN(&AI[i].CURRENT_PERCENT_OF_RANGE);

		/* Analog in Value - NaN */
		VAR_Initialize(&AI[i].VALUE, c_analytical, u_ana_percent, 100.0, 100.0, var_no_alarm|var_no_bound);
		sprintf(AI[i].VALUE.name, "AI %d VALUE", i+1);	//R306
		AI[i].VALUE.name_r = 306;
		VAR_NaN(&AI[i].VALUE);

		/* Analog in Lower Range Value? - 0.0 */
		VAR_Initialize(&AI[i].LRV, c_analytical, u_ana_percent, 100.0, 10000.0, var_no_alarm|var_no_bound);
		sprintf(AI[i].LRV.name, "AI %d LRV", i+1);	//R307
		AI[i].LRV.name_r = 307;
		VAR_Update(&AI[i].LRV, 0.0, 0, 0);

		/* Analog in Upper Range Value? - 100 */
		VAR_Initialize(&AI[i].URV, c_analytical, u_ana_percent, 100.0, 10000.0, var_no_alarm|var_no_bound);
		sprintf(AI[i].URV.name, "AI %d URV", i+1);	//R308
		AI[i].URV.name_r = 308;
		VAR_Update(&AI[i].URV, 100.0, 0, 0);

		/* Analog in Minimum Trim - 0.0 */
		VAR_Initialize(&AI[i].TRIM_MIN, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound);
		VAR_Setup_Unit(&AI[i].TRIM_MIN, u_generic_not_used, 65535.0, 0.0, 65535.0, 0.0);
		sprintf(AI[i].URV.name, "AI %d TRIM MIN", i+1);	//R309
		AI[i].URV.name_r = 309;
		VAR_Update(&AI[i].TRIM_MIN, 0.0, 0, 0);

		/* Analog in Maximum Trim - 32767.0 */
		VAR_Initialize(&AI[i].TRIM_MAX, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm);
		VAR_Setup_Unit(&AI[i].TRIM_MAX, u_generic_not_used, 65535.0, 0.0, 65535.0, 0.0);
		sprintf(AI[i].URV.name, "AI %d TRIM MAX", i+1);	//R310
		AI[i].URV.name_r = 310;
		VAR_Update(&AI[i].TRIM_MAX, 32767.0, 0, 0);

		AI[i].TRIM_MIN_C 	= VAR_Get_Unit_Param(&AI[i].CURRENT, reg_direct_bmin, 0, 0);
		AI[i].TRIM_MAX_C 	= VAR_Get_Unit_Param(&AI[i].CURRENT, reg_direct_bmax, 0, 0);
		AI[i].v.val 		= 33+i;
		AI[i].class.val 	= c_analytical;
		AI[i].class.vect 	= (int*)Set_Units;
		AI[i].unit.val 		= u_ana_percent;
		AI[i].unit.vect 	= (int*)Set_Units;
	}

	AI[0].v.vect = (int*)Set_Class_Units_AI1;
	AI[1].v.vect = (int*)Set_Class_Units_AI2;
	AI[2].v.vect = (int*)Set_Class_Units_AI3;
	AI[3].v.vect = (int*)Set_Class_Units_AI4;
	AI[4].v.vect = (int*)Set_Class_Units_AI5;
	
	
	//ALFAT RX
	
	BEGIN_ALFAT_LOGGING.val 	= FALSE;		// Don't log automatically
    BEGIN_ALFAT_LOGGING.vect 	= (int*)Begin_Alfat_Logging;
    BEGIN_ALFAT_LOGGING.vect2	= NULL_PTR;
	
	VAR_Initialize(&REG_ALFAT_LOG_PERIOD, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm);
	VAR_Setup_Unit(&AI[i].TRIM_MIN, u_generic_not_used, 120.0, 2, 120.0, 2); // max = 8 hours
	VAR_Update(&REG_ALFAT_LOG_PERIOD, 10, 0, 0);
	REG_ALFAT_LOG_PERIOD.vect1 	= NULL_PTR;
    REG_ALFAT_LOG_PERIOD.vect2	= (int*)Alfat_Change_Log_Period;
	
	
	/*
	for (i=0;i<256;i++)
	{
		ALFAT_RX[i] = 0;		
	}
	Alfat_Set_Time_Date();
	ALFAT_STATUS_REG = 0x0;
	
	ALFAT_INIT_ALL = FALSE;
	ALFAT_INITIALIZED = FALSE;
	ALFAT_APPEND_LF = FALSE;
	
	//clear anything in ALFAT THR
	PORT[5].pvector_main = NULL_PTR;
	*/
	ALFAT_LOG_DAY = 0;

	ALFAT_USB_DETECTED.val 	= FALSE;
    ALFAT_USB_DETECTED.vect 	= NULL_PTR;
    ALFAT_USB_DETECTED.vect2	= NULL_PTR;
	
	ALFAT_USB_MOUNTED.val 	= FALSE;
    ALFAT_USB_MOUNTED.vect 	= NULL_PTR;
    ALFAT_USB_MOUNTED.vect2	= NULL_PTR;
	
	LOG_STATUS = ALFAT_WAIT_LOG; //don't start logging when first profiled
	
	{/* Setup locks and passwords 
		Lock 1 - User Lock
		Lock 2 - Factory Lock
		Lock 3 - Write Protect Unlock
		Lock 4 - Access Tech Mode
		Lock 5 - Heuristic Salt Lock */
		for (i=0;i<5;i++)
		{
			VAR_Initialize(&REG_LOCK[i], c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);

			switch(i)
			{
				case 0:
				{
					sprintf(REG_LOCK[i].name, "User Lock"); 	//R311
					REG_LOCK[i].name_r = 311;
					break;
				}
                case 1:
				{
					sprintf(REG_LOCK[i].name, "Factory Lock"); 	//R312
					REG_LOCK[i].name_r = 312;
					break;
				}
                case 2:
				{
					sprintf(REG_LOCK[i].name, "Write-Protect Unlock"); 	//R313
					REG_LOCK[i].name_r = 313;
					break;
				}
                case 3:
				{                                                            
					sprintf(REG_LOCK[i].name, "Access Tech Mode"); 	//R314
					REG_LOCK[i].name_r = 314;
					break;
				}                                
				case 4:
				{                                                            
					sprintf(REG_LOCK[i].name, "Heuristic Salt Routine Lock"); 	//R315
					REG_LOCK[i].name_r = 315;
					break;
				}
			}

			VAR_Setup_Unit(&REG_LOCK[i], u_mfgr_specific_none, 99999, 0, 99999, 0);
			VAR_Update(&REG_LOCK[i], 0.0, 0, 0);
			
			REG_PW[i] 			= 1357; 
			DIO_LOCK[i].val  	= TRUE;
			DIO_LOCK[i].vect 	= NULL_PTR; 
			DIO_LOCK[i].vect2 	= NULL_PTR;   /*added for .vect2 of coils - add stream select RS*/
		}
        
		DIO_LOCK[0].val		= FALSE;
		REG_LOCK[0].vect2	= (int*)UnLock_P0;
		DIO_LOCK[0].vect	= (int*)Submit_Write_CFG_USER;  
		REG_PW[1] 			= 1343;							/* Phase Dynamics internal-use default password! */    
		REG_LOCK[1].vect2	= (int*)UnLock_P1;
		REG_LOCK[2].vect2	= (int*)UnLock_P2;
		REG_LOCK[3].vect2	= (int*)UnLock_P3;
	    REG_LOCK[4].vect2	= (int*)UnLock_P4;	   			/*unlock heuristic routine RS*/ 
	    DIO_LOCK[4].vect	= (int*)Submit_Write_CFG_USER;  /*stay unlocked heuristic routine RS*/ 
	}

	NaN_val		= 0.0;
	NaN_val_flt = NaN;
	NaN_val_int = 0;
	SN_PIPE 	= 0;
	FINAL_ASSY 	= 0;
	SN_DC_BOARD = 0;
	SN_OSC 		= 0;
	uP.SNUM 	= 0;
	uP.ADDR 	= 0xA2;	//1010001x
	
	if (SA)
	{
		uP.BNUM = 73;
		uP.REV  = '';
	}
	else
	{
		uP.BNUM = 66;
		uP.REV  = '';
	}
	
	uP.MONTH 	= 0;
	uP.DAY 		= 0;
	uP.YEAR 	= 0;
	COMM.SNUM 	= 0;
	COMM.ADDR 	= 0xA4;	//1010010x
	
	if (SA)
	{
		COMM.BNUM = 0;
		COMM.REV = '';
	}
	else
	{
		COMM.BNUM = 67;
		COMM.REV = '';
	}
	
	COMM.MONTH 		= 0;
	COMM.DAY 		= 0;
	COMM.YEAR 		= 0;
	ANALYZER.SNUM 	= 0;
	ANALYZER.ADDR 	= 0xA6;	//1010011x
	
	if (SA)
	{
		ANALYZER.BNUM = 55;
		ANALYZER.REV = '';
	}
	else
	{
		ANALYZER.BNUM = 68;
		ANALYZER.REV = 'A';
	}
	
	ANALYZER.MONTH 	= 0;
	ANALYZER.DAY 	= 0;
	ANALYZER.YEAR 	= 0;
	POWER.SNUM 		= 0;
	POWER.ADDR 		= 0xA8;	//1010100x
	
	if (SA)
	{
		POWER.BNUM = 0;
		POWER.REV = '';
	}
	else
	{
		POWER.BNUM = 69;
		POWER.REV = '';
	}
	
	POWER.MONTH 	= 0;
	POWER.DAY 		= 0;
	POWER.YEAR 		= 0;
	ANALOGIO.SNUM 	= 0;
	ANALOGIO.ADDR 	= 0xAA;	//1010101x
	
	if (SA)
	{
		ANALOGIO.BNUM = 56;
		ANALOGIO.REV = '';
	}
	else
	{
		ANALOGIO.BNUM = 70;
		ANALOGIO.REV = 'A';
	}
	
	ANALOGIO.MONTH 	= 0;
	ANALOGIO.DAY 	= 0;
	ANALOGIO.YEAR 	= 0;
	DISPLAY.SNUM 	= 0;
	DISPLAY.ADDR 	= 0xAC;	//1010110x
	
	if (SA)
	{
		DISPLAY.BNUM = 0;
		DISPLAY.REV = '';
	}
	else
	{
		DISPLAY.BNUM = 71;
		DISPLAY.REV = 'A';
	}
	
	DISPLAY.MONTH 		= 0;
	DISPLAY.DAY 		= 0;
	DISPLAY.YEAR 		= 0;
	MOTHERBOARD.SNUM 	= 0;
	MOTHERBOARD.ADDR 	= 0xAE;	//1010111x
	
	if (SA)
	{
		MOTHERBOARD.BNUM = 0;
		MOTHERBOARD.REV = '';
	}
	else
	{
		MOTHERBOARD.BNUM = 72;
		MOTHERBOARD.REV = '';
	}
	
	MOTHERBOARD.MONTH 	= 0;
	MOTHERBOARD.DAY 	= 0;
	MOTHERBOARD.YEAR 	= 0;
	
	for (i=0;i<20;i++)
		REG_USER_DEFINE[i] = 0;
	
	SIM_TEMPERATURE_EXTERNAL = 0;

	for (i=0;i<VTMAX;i++)
	{
		SIM_VINC[i] = 0;
		SIM_VREF[i] = 0;
		SIM_FREQ[i] = 0;
		SIM_VTUNE[i] = 0;
		VT_SELECT = i;

		/* VINC - 0.0 */
		VAR_Initialize(&REG_VINC[i], c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm);
		sprintf(REG_VINC[i].name, "Vinc %d", i+1);
		
		if (SA) 
			VAR_Setup_Unit(&REG_VINC[i], u_emf_V, ADC_EXTREF_V, 0, ADC_EXTREF_V, 0);	//leave the alarm setting unscaled
		else 
			VAR_Setup_Unit(&REG_VINC[i], u_emf_V, ADC_REF_V*2.5, 0, ADC_REF_V*2.5, 0);	//leave the alarm setting unscaled
		
		VAR_Update(&REG_VINC[i], 0.0, 0, 0);

		/* VREF - 0.0 */
		VAR_Initialize(&REG_VREF[i], c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm);
		sprintf(REG_VREF[i].name, "Vref %d", i+1);
		
		if (SA) 
			VAR_Setup_Unit(&REG_VREF[i], u_emf_V, ADC_EXTREF_V, 0, ADC_EXTREF_V, 0);//leave the alarm setting unscaled
		else 
			VAR_Setup_Unit(&REG_VREF[i], u_emf_V, ADC_REF_V*2.5, 0, ADC_REF_V*2.5, 0);	//leave the alarm setting unscaled
		
		VAR_Update(&REG_VREF[i], 0.0, 0, 0);

		/* VTUNE - 0.0 */
		VAR_Initialize(&REG_VTUNE[i], c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm);
		sprintf(REG_VTUNE[i].name, "VTUNE %d", i+1);
		
		if (SA)
			VAR_Setup_Unit(&REG_VTUNE[i], u_emf_V, DAC_INTREF_V0, 0, DAC_INTREF_V0, 0);
		else 
			VAR_Setup_Unit(&REG_VTUNE[i], u_emf_V, DAC_REF_V*6.0, 0, DAC_REF_V*6.0, 0);
		
		VAR_Update(&REG_VTUNE[i], 0.0, 0, 0);

		/* VTUNE SET - 0.0 */
		VAR_Initialize(&REG_VTUNE_SET[i], c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm);
		sprintf(REG_VTUNE_SET[i].name, "VTUNE SET %d", i+1);
		
		if (SA)
			VAR_Setup_Unit(&REG_VTUNE_SET[i], u_emf_V, DAC_INTREF_V0, 0, DAC_INTREF_V0, 0);
		else 
			VAR_Setup_Unit(&REG_VTUNE_SET[i], u_emf_V, DAC_REF_V*6.0, 0, DAC_REF_V*6.0, 0);
		
		VAR_Update(&REG_VTUNE_SET[i], 0.0, 0, 0);

		/* Frequency - 0.0 */
		VAR_Initialize(&REG_FREQ[i], c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_dampen);
		sprintf(REG_FREQ[i].name, "Frequency %d", i+1);	//R316
		REG_FREQ[i].name_r = 316;
		VAR_Setup_Unit(&REG_FREQ[i], u_mfgr_specific_MHz, 1000.0, 0.0, 1001.0, -1.0);
		VAR_Update(&REG_FREQ[i], 0.0, 0, 0);
		
		REG_FREQ[i].dampening 	= 0.0;
		EXP_FREQ[i] 			= 0.0;
		ENABLED[i] 				= TRUE;
		OSC[i] 					= 0;
	}

	FREQ_FACTOR = 1.0;
	OSC[2] 		= 1;
	OSC[3] 		= 1;

	// Oil Frequency - 0.0 
	VAR_Initialize(&REG_FREQ_O, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm|var_no_bound);
	sprintf(REG_FREQ_O.name, "Oil Frequency");	//R317
	REG_FREQ_O.name_r = 317;
	VAR_Update(&REG_FREQ_O, 0.0, 0, 0);


	/* Oil VINC - 0.0 */
	VAR_Initialize(&REG_VINC_O, c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm|var_no_bound);
	sprintf(REG_VINC_O.name, "Vinc Oil");
	VAR_Update(&REG_VINC_O, 0.0, 0, 0);

	/* Oil VREF - 0.0 */
	VAR_Initialize(&REG_VREF_O, c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm|var_no_bound);
	sprintf(REG_VREF_O.name, "Vref Oil");
	VAR_Update(&REG_VREF_O, 0.0, 0, 0);

	// Water Frequency - 0.0
	VAR_Initialize(&REG_FREQ_W, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm|var_no_bound);
	sprintf(REG_FREQ_W.name, "Water Frequency");	//R318
	REG_FREQ_W.name_r = 318;
	VAR_Update(&REG_FREQ_W, 0.0, 0, 0);

	/* Water VINC - 0.0 */
	VAR_Initialize(&REG_VINC_W, c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm|var_no_bound);
	sprintf(REG_VINC_W.name, "Vinc Water");
	VAR_Update(&REG_VINC_W, 0.0, 0, 0);

	/* Water VREF - 0.0 */
	VAR_Initialize(&REG_VREF_W, c_emf, u_emf_V, 1000.0, 10000.0, var_no_alarm|var_no_bound);
	sprintf(REG_VREF_W.name, "Vref Water");
	VAR_Update(&REG_VREF_W, 0.0, 0, 0);

	GATE_TIME	= 1.0;
	PRESCALE	= 64.0;

	{/* Note: these must be done after REG_FREQ[] and OSC_OIL/WATER_CALC are initialized */
		/* Oil Frequency Lo - 0.0 */
		VAR_Initialize(&REG_FREQ_OIL_LO, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(REG_FREQ_OIL_LO.name, "Oil Freq Lo");	//R319
		REG_FREQ_OIL_LO.name_r = 319;
		VAR_Setup_Unit(&REG_FREQ_OIL_LO, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_FREQ_OIL_LO, 0.0, 0, 0);

		/* Oil Frequency Hi - 1000.0 */
		VAR_Initialize(&REG_FREQ_OIL_HI, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(REG_FREQ_OIL_HI.name, "Oil Freq Hi");	//R320
		REG_FREQ_OIL_HI.name_r = 320;
		VAR_Setup_Unit(&REG_FREQ_OIL_HI, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_FREQ_OIL_HI, 1000.0, 0, 0);

		/* Water Frequency Lo - 0.0 */
		VAR_Initialize(&REG_FREQ_WATER_LO, c_frequency,  u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(REG_FREQ_WATER_LO.name, "Water Freq Lo");	//R321
		REG_FREQ_WATER_LO.name_r = 321;
		VAR_Setup_Unit(&REG_FREQ_WATER_LO, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_FREQ_WATER_LO, 0.0, 0, 0);

		/* Water Frequency Hi - 1000.0 */
		VAR_Initialize(&REG_FREQ_WATER_HI, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(REG_FREQ_WATER_HI.name, "Water Freq Hi");	//R322
		REG_FREQ_WATER_HI.name_r = 322;
		VAR_Setup_Unit(&REG_FREQ_WATER_HI, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_FREQ_WATER_HI, 1000.0, 0, 0);
        
        /***********Low salt mode freq threshold RS*************/
		/* Frequency Threshold - 0.0 */
        VAR_Initialize(&REG_LOWSALT_THRESHOLD, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(REG_LOWSALT_THRESHOLD.name, "Frequency Threshold");	//R323
		REG_LOWSALT_THRESHOLD.name_r = 323;
		VAR_Setup_Unit(&REG_LOWSALT_THRESHOLD, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_LOWSALT_THRESHOLD, 0.0, 0, 0);
		
		
		VAR_Initialize(&EXTENDED_FW_VERSION_ENABLE, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm|var_no_bound);
		sprintf(EXTENDED_FW_VERSION_ENABLE.name, "Extended FW Enable");	
		VAR_Update(&EXTENDED_FW_VERSION_ENABLE, 123.00, 0, 0); //prevents IDEC screen freezing, the idea being that lowsalt threshold will never be 123
		EXTENDED_FW_VERSION_ENABLE;  // extended fw version    
		        
		
		/*** Plot & Graph Limits Initialization ***/
		// Not sure if these really need names, because I think names
		// are only used for the LCD (and the LCD can't plot)
	 
		/*
			// Oil Frequency Minimum - 0.0 
			VAR_Initialize(&Plot_Limit_Oil_Freq_Low, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
			sprintf(Plot_Limit_Oil_Freq_Low.name, "Oil Freq Min");
			VAR_Setup_Unit(&Plot_Limit_Oil_Freq_Low, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
			VAR_Update(&Plot_Limit_Oil_Freq_Low, Plot_Limit_Oil_Freq_Low.base_val, 0, 0);
			Plot_Limit_Oil_Freq_Low.vect2 = (int*)Freq_oil_plot_min;

			// Oil Frequency Maximum - 1000 
			VAR_Initialize(&Plot_Limit_Oil_Freq_High, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
			sprintf(Plot_Limit_Oil_Freq_High.name, "Oil Freq Max");
			VAR_Setup_Unit(&Plot_Limit_Oil_Freq_High, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
			VAR_Update(&Plot_Limit_Oil_Freq_High, Plot_Limit_Oil_Freq_High.base_val, 0, 0);
			Plot_Limit_Oil_Freq_High.vect2 = (int*)Freq_oil_plot_max;

			// Water frequency Minimum - 0.0 
			VAR_Initialize(&Plot_Limit_Water_Freq_Low, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
			sprintf(Plot_Limit_Water_Freq_Low.name, "Water Freq Min");
			VAR_Setup_Unit(&Plot_Limit_Water_Freq_Low, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
			VAR_Update(&Plot_Limit_Water_Freq_Low, 0.0, 0, 0);
			Plot_Limit_Water_Freq_Low.vect2 = (int*)Freq_water_plot_min;

			// Water frequency Maximum - 0.0 
			VAR_Initialize(&Plot_Limit_Water_Freq_High, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
			sprintf(Plot_Limit_Water_Freq_High.name, "Water Freq Max");
			VAR_Setup_Unit(&Plot_Limit_Water_Freq_High, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
			VAR_Update(&Plot_Limit_Water_Freq_High, 1000.0, 0, 0);
			Plot_Limit_Water_Freq_High.vect2 = (int*)Freq_water_plot_max;
			*/
	
		//Water Frequency lower limit - 100.0 MHz
		VAR_Initialize(&Plot_Limit_Water_Freq_Low, c_frequency, u_mfgr_specific_MHz,  10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Water_Freq_Low.name, "W Freq Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Water_Freq_Low, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&Plot_Limit_Water_Freq_Low, 100.0, 0, 0);
		Plot_Limit_Water_Freq_Low.vect2 = (int*)Freq_water_plot_min;
	
		//Water Frequency upper limit - 300.0 MHz
		VAR_Initialize(&Plot_Limit_Water_Freq_High, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Water_Freq_High.name, "W Freq Plot High");
		VAR_Setup_Unit(&Plot_Limit_Water_Freq_High, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&Plot_Limit_Water_Freq_High, 300.0, 0, 0);
		Plot_Limit_Water_Freq_High.vect2 = (int*)Freq_water_plot_max;
		
		//Oil Frequency lower limit - 80.0 MHz
		VAR_Initialize(&Plot_Limit_Oil_Freq_Low, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Oil_Freq_Low.name, "Oil Freq Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Oil_Freq_Low, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&Plot_Limit_Oil_Freq_Low, 80.0, 0, 0);
		Plot_Limit_Oil_Freq_Low.vect2 = (int*)Freq_oil_plot_min;
		
		//Oil Frequency upper limit - 600.0 MHz
		VAR_Initialize(&Plot_Limit_Oil_Freq_High, c_frequency, u_mfgr_specific_MHz, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Oil_Freq_High.name, "Oil Freq Plot High");
		VAR_Setup_Unit(&Plot_Limit_Oil_Freq_High, u_mfgr_specific_MHz, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&Plot_Limit_Oil_Freq_High, 600.0, 0, 0);
		Plot_Limit_Oil_Freq_High.vect2 = (int*)Freq_oil_plot_max;
					
		//Temperature lower limit - 0.0 deg C
		VAR_Initialize(&Plot_Limit_Temp_Low, c_temperature, u_temp_C, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Temp_Low.name, "Temp Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Temp_Low, u_temp_C, 400.0, 0.0, 400.0, 0.0);
		VAR_Update(&Plot_Limit_Temp_Low, 0.0, 0, 0);
		Plot_Limit_Temp_Low.vect2 = (int*)Temp_plot_min;
		
		//Temperature upper limit - 100.0 deg C
		VAR_Initialize(&Plot_Limit_Temp_High, c_temperature, u_temp_C, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Temp_High.name, "Temp Plot High");
		VAR_Setup_Unit(&Plot_Limit_Temp_High, u_temp_C, 400.0, 0.0, 400.0, 0.0);
		VAR_Update(&Plot_Limit_Temp_High, 100.0, 0, 0);
		Plot_Limit_Temp_High.vect2 = (int*)Temp_plot_max;
		
		//Watercut lower limit - 0%
		VAR_Initialize(&Plot_Limit_Watercut_Low, c_analytical, u_ana_percent, 10.0, 1000.0, var_no_alarm);
		sprintf( Plot_Limit_Watercut_Low.name, "WC Plot Low");
		VAR_Setup_Unit(& Plot_Limit_Watercut_Low, u_ana_percent, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&Plot_Limit_Watercut_Low, 0.0, 0, 0);
		Plot_Limit_Watercut_Low.vect2 = (int*)Watercut_plot_min;
		
		//Watercut upper limit - 100%
		VAR_Initialize(&Plot_Limit_Watercut_High, c_analytical, u_ana_percent, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Watercut_High.name, "WC Plot High");
		VAR_Setup_Unit(&Plot_Limit_Watercut_High, u_ana_percent, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&Plot_Limit_Watercut_High, 100.0, 0, 0);
		Plot_Limit_Watercut_High.vect2 = (int*)Watercut_plot_max;
		
		//Reflected power for oil, lower limit - 0.0V
		VAR_Initialize(&Plot_Limit_Oil_RP_Low, c_emf, u_emf_V	, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Oil_RP_Low.name, "Pr Oil Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Oil_RP_Low, u_emf_V, 10.0, 0.0, 10.0, 0.0);
		VAR_Update(&Plot_Limit_Oil_RP_Low, 0.0, 0, 0);
		Plot_Limit_Oil_RP_Low.vect2 = (int*)Oil_RP_plot_min;
	
		//Reflected power for oil, upper limit - 5.0V
		VAR_Initialize(&Plot_Limit_Oil_RP_High, c_emf, u_emf_V, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Oil_RP_High.name, "Pr Oil Plot High");
		VAR_Setup_Unit(&Plot_Limit_Oil_RP_High, u_emf_V, 10.0, 0.0, 10.0, 0.0);
		VAR_Update(&Plot_Limit_Oil_RP_High, 5.0, 0, 0);
		Plot_Limit_Oil_RP_High.vect2 = (int*)Oil_RP_plot_max;		
		
		//Reflected power for water, lower limit - 0.0V
		VAR_Initialize(&Plot_Limit_Water_RP_Low, c_emf, u_emf_V, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Water_RP_Low.name, "Pr Water Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Water_RP_Low, u_emf_V, 10.0, 0.0, 10.0, 0.0);
		VAR_Update(&Plot_Limit_Water_RP_Low, 0.0, 0, 0);
		Plot_Limit_Water_RP_Low.vect2 = (int*)Water_RP_plot_min;	
		
		//Reflected power for water, upper limit - 5.0V
		VAR_Initialize(&Plot_Limit_Water_RP_High, c_emf, u_emf_V, 10.0, 1000.0, var_no_alarm);
		sprintf(Plot_Limit_Water_RP_High.name, "Pr Water Plot High");
		VAR_Setup_Unit(&Plot_Limit_Water_RP_High, u_emf_V, 10.0, 0.0, 10.0, 0.0);
		VAR_Update(&Plot_Limit_Water_RP_High, 5.0, 0, 0);
		Plot_Limit_Water_RP_High.vect2 = (int*)Water_RP_plot_max;
		
		/*** END - Plot & Graph Limits Initialization ***/
	}
	
	//global_delta_time = 0.0;


	{
		/* Logging Period - 60.0 */
		VAR_Initialize(&SYS_log_sample_period, c_time, u_time_sec, 1.0, 1.0, var_no_alarm|var_round);
		sprintf(SYS_log_sample_period.name, "Logging Period");
		VAR_Setup_Unit(&SYS_log_sample_period, u_time_sec, 86400, 1, 86400, 1);
		VAR_Update(&SYS_log_sample_period, 60.0, 0, 0);
		SYS_log_sample_period.vect2 = (int*)LogNow;
		SYS_LOG_ENABLED = LOG_PERIODIC;
		
		/* User Logging Period - 60.0 */
		VAR_Initialize(&USER_log_sample_period, c_time, u_time_sec, 1.0, 1.0, var_no_alarm|var_round);
		sprintf(USER_log_sample_period.name, "Logging Period User");
		VAR_Setup_Unit(&USER_log_sample_period, u_time_sec, 86400, 1, 86400, 1);
		VAR_Update(&USER_log_sample_period, 60.0, 0, 0);
		USER_log_sample_period.vect2 = (int*)LogNowUser;

		USER_LOG_ENABLED = FALSE;
		USER_LOG_EVENT 	 = FALSE;
		SYS_LOG_EVENT 	 = FALSE;

		for (i=0;i<30;i++)
			LOG_VAR_SEL[i] = -1;
		
		LOG_VAR_SEL[0] 	= 0;
		LOG_VAR_SEL[1] 	= 1;
		LOG_VAR_SEL[2] 	= 2;
		LOG_VAR_SEL[3] 	= 31;
		LOG_VAR_SEL[4] 	= 33;
		LOG_VAR_SEL[5] 	= 46;
		LOG_VAR_SEL[6] 	= 49;
		LOG_VAR_SEL[7] 	= 52;
		LOG_VAR_SEL[8] 	= 53;
		LOG_VAR_SEL[9] 	= 54;
		LOG_VAR_SEL[10] = 104;
		LOG_VAR_SEL[11] = 106;
		LOG_VAR_SEL[12] = 109;
		LOG_VAR_SEL[13] = 111;
		LOG_VAR_SEL[14] = 113;
		LOG_VAR_SEL[15] = 115;
		LOG_VAR_SEL[16] = 5;
		LOG_VAR_SEL[17] = 7;
		LOG_VAR_SEL[18] = 8;
		LOG_VAR_SEL[19] = 10;
	}

	/* Oscillator Short Settle Period - 0.05 */
	VAR_Initialize(&REG_osc_settle_short, c_time, u_time_sec, 100.0, 100.0, var_no_alarm);
	sprintf(REG_osc_settle_short.name, "Short Osc Settle");
	VAR_Setup_Unit(&REG_osc_settle_short, u_time_sec, 10.0, 0.01, 10.0, 0.01);
	VAR_Update(&REG_osc_settle_short, 0.05, 0, 0);

	/* Oscillator Long se*/
	VAR_Initialize(&REG_osc_settle_long, c_time, u_time_sec, 100.0, 100.0, var_no_alarm);
	sprintf(REG_osc_settle_long.name, "Long Osc Settle");
	VAR_Setup_Unit(&REG_osc_settle_long, u_time_sec, 10.0, 0.01, 10.0, 0.01);
	VAR_Update(&REG_osc_settle_long, 0.25, 0, 0);

	ANALYZER_MODE.val  = SUB_UNDEFINED;
	ANALYZER_MODE.vect = (int*)Reset_IDEC; 

	/* Demo Mode - FALSE */
	VAR_Initialize(&DEMO_ANALYZER_MODE, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	sprintf(DEMO_ANALYZER_MODE.name, "Demo Analyzer Mode");
	VAR_Update(&DEMO_ANALYZER_MODE, SUB_CCM, 0, 0);
	DEMO_ANALYZER_MODE.vect2 = (int*)DEMO_Init;
	DEMO = FALSE;

    {/* CCM variables */
		/* CCM Vessel 1 Level - 0.0 */
		VAR_Initialize(&CCM_VESSEL_LEVEL[0], c_not_classified, u_ana_percent, 100.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_VESSEL_LEVEL[0].name, "CCM Vessel1 Level");
		VAR_Update(&CCM_VESSEL_LEVEL[0], 0.0, 0, 0);
        
		/* CCM Vessel 1 Pressure - 0.0 */
		VAR_Initialize(&CCM_VESSEL_PRESSURE[0], c_pressure, u_p_psi, 1.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_VESSEL_PRESSURE[0].name, "CCM Vessel1 Pressure");
		VAR_Update(&CCM_VESSEL_PRESSURE[0], 0.0, 0, 0);

		/* CCM Vessel 2 Level - 0.0 */
		VAR_Initialize(&CCM_VESSEL_LEVEL[1], c_not_classified, u_ana_percent, 100.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_VESSEL_LEVEL[1].name, "CCM Vessel2 Level");
		VAR_Update(&CCM_VESSEL_LEVEL[1], 0.0, 0, 0);

		/* CCM Vessel 2 Pressure - 0.0 */
		VAR_Initialize(&CCM_VESSEL_PRESSURE[1], c_pressure, u_p_psi, 1.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_VESSEL_PRESSURE[1].name, "CCM Vessel2 Pressure");
		VAR_Update(&CCM_VESSEL_PRESSURE[1], 0.0, 0, 0);
         		
		/* Gas Temperature - 0.0 */		
		VAR_Initialize(&CCM_GAS_TEMPERATURE, c_temperature, u_temp_C, 10.0, 10.0, var_no_bound|var_no_alarm);
		sprintf(CCM_GAS_TEMPERATURE.name, "Gas Temperature");
		VAR_Update(&CCM_GAS_TEMPERATURE, 0.0, 0, 0);        /*Gas Temperature RS*/
        
		/* Gas Density Input - 0.0 */
        VAR_Initialize(&CCM_GAS_DENSITY_INPUT, c_mass_per_volume, u_mpv_kg_cm, 100.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_GAS_DENSITY_INPUT.name, "Gas Density Input");
		VAR_Update(&CCM_GAS_DENSITY_INPUT, 0.0, 0, 0);       /*Gas Density Input RS*/ 
        
		/* Gas Density - 0.0 */
		VAR_Initialize(&CCM_GAS_DENSITY, c_mass_per_volume, u_mpv_kg_cm, 100.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_GAS_DENSITY.name, "Gas Density");
		VAR_Update(&CCM_GAS_DENSITY, 0.0, 0, 0);
        
        /* Gas Live Density - */
        VAR_Initialize(&CCM_GAS_LIVE_DENSITY, c_mass_per_volume, u_mpv_kg_cm, 100.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_GAS_LIVE_DENSITY.name, "Gas Live Density");
		VAR_Update(&CCM_GAS_LIVE_DENSITY, 0.0, 0, 0);
		
		/* Gas Total - 0.0 */
		VAR_Initialize(&CCM_GAS_TOTAL, c_volume, u_v_mscf, 100.0, 1000.0, var_no_alarm|var_roll);
		sprintf(CCM_GAS_TOTAL.name, "Gas Total");
		VAR_Setup_Unit(&CCM_GAS_TOTAL, u_v_mscf, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&CCM_GAS_TOTAL, 0.0, 0, 0);

		/* Gas Flow - 0.0 */
		VAR_Initialize(&CCM_GAS_FLOW, c_volumetric_flow, u_vfr_mscf_day, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(CCM_GAS_FLOW.name, "Gas Flow");
		VAR_Setup_Unit(&CCM_GAS_FLOW, u_vfr_mscf_day, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&CCM_GAS_FLOW, 0.0, 0, 0);

		/* CCM Pressure Max Over - 100.0 */
		VAR_Initialize(&CCM_SETPOINT_PRESSURE_MAX_OVER, c_pressure, u_p_psi, 1.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_SETPOINT_PRESSURE_MAX_OVER.name, "CCM Press Max Over");
		VAR_Update(&CCM_SETPOINT_PRESSURE_MAX_OVER, 100.0, 0, 0);

		/* CCM Vessel 1 Pressure @ Standard Pressure  - 300.0 */
		VAR_Initialize(&CCM_SETPOINT_PRESSURE[0], c_pressure, u_p_psi, 1.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_SETPOINT_PRESSURE[0].name, "CCM Vessel1 Press SP");
		VAR_Update(&CCM_SETPOINT_PRESSURE[0], 300.0, 0, 0);
		CCM_SETPOINT_PRESSURE[0].vect2 = (int*)Mirror_To_Stream_Table;

		/* CCM Vessel 2 Pressure @ Standard Pressure - 300.0 */
		VAR_Initialize(&CCM_SETPOINT_PRESSURE[1], c_pressure, u_p_psi, 1.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_SETPOINT_PRESSURE[1].name, "CCM Vessel2 Press SP");
		VAR_Update(&CCM_SETPOINT_PRESSURE[1], 300.0, 0, 0);
		CCM_SETPOINT_PRESSURE[1].vect2 = (int*)Mirror_To_Stream_Table;

		/* CCM Vessel 1 Level @ Standard Pressure - 60.0 */
		VAR_Initialize(&CCM_SETPOINT_LEVEL[0], c_not_classified, u_ana_percent, 100.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_SETPOINT_LEVEL[0].name, "CCM Vessel1 Level SP");
		VAR_Update(&CCM_SETPOINT_LEVEL[0], 60.0, 0, 0);
		CCM_SETPOINT_LEVEL[0].vect2 = (int*)Mirror_To_Stream_Table;

		/* CCM Vessel 2 Level @ Standard Pressure - 60.0 */
		VAR_Initialize(&CCM_SETPOINT_LEVEL[1], c_not_classified, u_ana_percent, 100.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(CCM_SETPOINT_LEVEL[1].name, "CCM Vessel2 Level SP");
		VAR_Update(&CCM_SETPOINT_LEVEL[1], 60.0, 0, 0);
		CCM_SETPOINT_LEVEL[1].vect2 = (int*)Mirror_To_Stream_Table;

		CCM_PURGE 	 				= 1000.0;
		CCM_DURATION 				= 10.0;
		CCM_REMAINING				= 0.0;
		CCM_2LIQ 					= FALSE;
		CCM_2GAS 					= FALSE;
		CCM_CORRECT_LIQ_HEIGHT 		= FALSE;
		CCM_CORRECT_GAS_TO_STP 		= FALSE;
		CCM_GAS_MASS 				= FALSE;
		CCM_GAS_CNT 				= 0;
        GAS_DENSITY_INPUT_ENABLED 	= FALSE; 	/*CCM Gas Density Input RS*/  
		RESET_AT_PURGE 				= FALSE;    /*CCM HSALT always run option RS*/ 
        
		for (i=0;i<SMAX;i++)
		{
			CCM_SETPOINT_P1[i]  = CCM_SETPOINT_PRESSURE[0].calc_val;
			CCM_SETPOINT_L1[i]  = CCM_SETPOINT_LEVEL[0].calc_val;
			CCM_SETPOINT_P2[i]  = CCM_SETPOINT_PRESSURE[1].calc_val;
			CCM_SETPOINT_L2[i]  = CCM_SETPOINT_LEVEL[1].calc_val;
		}
	}

	for (i=0;i<FCMAX;i++)
	{
 		FC[i].CNT 					= 0;
 		FC[i].PULSE_DELTA 			= 0;
		
		if (i == 0)
			FC[i].enable_NET 		= TRUE;
		else
			FC[i].enable_NET 		= FALSE;
		
		FC[i].enable_GROSS 			= FALSE;
		FC[i].enable_FLOW 			= FALSE;
		FC[i].enable_DENSITY 		= FALSE;
		FC[i].enable_PULSE 			= FALSE;
		FC[i].flow_class.vect 		= (int*)Set_FC_Units; 
		FC[i].flow_class.val 		= c_volumetric_flow;
		FC[i].flow_unit.vect 		= (int*)Set_FC_Units; 
		FC[i].flow_unit.val 		= u_vfr_barrel_day;
		FC[i].accum_unit.vect 		= (int*)Set_FC_Units;   
		FC[i].accum_unit.val 		= u_v_barrel;
		FC[i].Z.val 				= FALSE;
		FC[i].AUTHORIZATION_CODE1 	= 0x1111;
		FC[i].AUTHORIZATION_CODE2 	= 0x2222;
		FC[i].AUTHORIZATION_CODE3 	= 0x3333;
		FC[i].AUTHORIZATION_CODE4 	= 0x4444;;
	
		///New pulse input///
		FC[i].pulse_v.val 				= 33;
		FC[i].pulse_class.val 			= c_analytical;
		FC[i].pulse_class.vect 			= (int*)Set_Pulse_Units; 
		FC[i].pulse_unit.val 			= u_ana_percent;
		FC[i].pulse_unit.vect 			= (int*)Set_Pulse_Units;
		
		FC[i].use_totalizer.val		= TRUE;
		FC[i].use_totalizer.vect 	= NULL_PTR;  
		FC[i].use_totalizer.vect2 	= NULL_PTR;
		
		/* Analog In Value - NaN */
		VAR_Initialize(&FC[i].pulse_VALUE, c_analytical, u_ana_percent, 100.0, 100.0, var_no_alarm|var_no_bound);
		sprintf(FC[i].pulse_VALUE.name, "PULSE %d VALUE", i+1);
		VAR_NaN(&FC[i].pulse_VALUE);
		
		///END: New pulse input///

		/* Pulse Frequency - 0.0 */
		VAR_Initialize(&FC[i].PULSE_FREQ, c_frequency, u_freq_hertz, 1.0, 1.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].PULSE_FREQ.name, "Pulse %d Freq", i+1);
		VAR_Update(&FC[i].PULSE_FREQ, 0.0, 0, 0);
		FC[i].PULSE_FREQ.aux = i;

		/* Pulse Total - 0.0 */
		VAR_Initialize(&FC[i].PULSE_TOTAL, c_volume, u_v_barrel, 1.0, 1.0, var_no_alarm|var_roll);
		sprintf(FC[i].PULSE_TOTAL.name, "Pulse %d Total", i+1);
		VAR_Setup_Unit(&FC[i].PULSE_TOTAL, u_v_barrel, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].PULSE_TOTAL, 0.0, 0, 0);
		FC[i].PULSE_TOTAL.aux = i;

		/* Pulse Flow - 0.0 */
		VAR_Initialize(&FC[i].PULSE_FLOW, c_volumetric_flow, u_vfr_barrel_day, 1.0, 1.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].PULSE_FLOW.name, "Pulse %d Flow", i+1);
		VAR_Setup_Unit(&FC[i].PULSE_FLOW, u_vfr_barrel_day, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].PULSE_FLOW, 0.0, 0, 0);
		FC[i].PULSE_FLOW.aux = i;

		FC[i].PULSES_PER_ACCUM_UNIT = 5000;
		FC[i].PULSE_FACTOR 			= 1.0;
		

		/* Flow Computer Accumulator Net Oil - 0.0 */
		VAR_Initialize(&FC[i].NET_OIL, c_volume, u_v_barrel, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(FC[i].NET_OIL.name, "FC%d Net Oil", i+1);
		VAR_Setup_Unit(&FC[i].NET_OIL, u_v_barrel, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_OIL, 0.0, 0, 0);
		FC[i].NET_OIL.aux = i;

		/* Flow Computer Accumulator Net Water - 0.0 */
		VAR_Initialize(&FC[i].NET_WATER, c_volume, u_v_barrel, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(FC[i].NET_WATER.name, "FC%d Net Water", i+1);
		VAR_Setup_Unit(&FC[i].NET_WATER, u_v_barrel, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_WATER, 0.0, 0, 0);
		FC[i].NET_WATER.aux = i;

		/* Flow Computer Accumulator Net Total - 0.0 */
		VAR_Initialize(&FC[i].NET_TOTAL, c_volume, u_v_barrel, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(FC[i].NET_TOTAL.name, "FC%d Net Total", i+1);
		VAR_Setup_Unit(&FC[i].NET_TOTAL, u_v_barrel, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_TOTAL, 0.0, 0, 0);
		FC[i].NET_TOTAL.aux = i;
		
		/* Flow Computer Accumulator Average Net Total - 0.0 */
		VAR_Initialize(&FC[i].AVG_NET_TOTAL, c_volume, u_v_barrel, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(FC[i].AVG_NET_TOTAL.name, "FC%d Avg Net Ttl", i+1);
		VAR_Setup_Unit(&FC[i].AVG_NET_TOTAL, u_v_barrel, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].AVG_NET_TOTAL, 0.0, 0, 0);
		FC[i].AVG_NET_TOTAL.aux = i;

		/* Flow Computer Accumulator Gross Oil - 0.0 */
		VAR_Initialize(&FC[i].GROSS_OIL, c_volume, u_v_barrel, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(FC[i].GROSS_OIL.name, "FC%d Gross Oil", i+1);
		VAR_Setup_Unit(&FC[i].GROSS_OIL, u_v_barrel, 10000000.0, 0.0, 10000000.0, 0.0);
		VAR_Update(&FC[i].GROSS_OIL, 0.0, 0, 0);
		FC[i].GROSS_OIL.aux = i;

		/* Flow Computer Accumulator Gross Water - 0.0 */
		VAR_Initialize(&FC[i].GROSS_WATER, c_volume, u_v_barrel, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(FC[i].GROSS_WATER.name, "Gross Water %d", i+1);
		VAR_Setup_Unit(&FC[i].GROSS_WATER, u_v_barrel, 10000000.0, 0.0, 10000000.0, 0.0);
		VAR_Update(&FC[i].GROSS_WATER, 0.0, 0, 0);
		FC[i].GROSS_WATER.aux = i;

		/* Flow Computer Accumulator Gross Total - 0.0 */
		VAR_Initialize(&FC[i].GROSS_TOTAL, c_volume, u_v_barrel, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(FC[i].GROSS_TOTAL.name, "FC%d Gross Total", i+1);
		VAR_Setup_Unit(&FC[i].GROSS_TOTAL, u_v_barrel, 100000000.0, 0.0, 100000000.0, 0.0);
		VAR_Update(&FC[i].GROSS_TOTAL, 0.0, 0, 0);
		FC[i].GROSS_TOTAL.aux = i;
		
		/* Flow Computer Accumulator Average Gross Total - 0.0 */
        VAR_Initialize(&FC[i].AVG_GROSS_TOTAL, c_volume, u_v_barrel, 1.0, 1000.0, var_no_alarm|var_roll);
		sprintf(FC[i].AVG_GROSS_TOTAL.name, "FC%d Avg Grs Ttl", i+1);
		VAR_Setup_Unit(&FC[i].AVG_GROSS_TOTAL, u_v_barrel, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].AVG_GROSS_TOTAL, 0.0, 0, 0);
		FC[i].AVG_GROSS_TOTAL.aux = i;

		/* Flow Computer Oil Flow - 0.0 */
		VAR_Initialize(&FC[i].FLOW_OIL, c_volumetric_flow, u_vfr_barrel_day, 1.0, 1000.0, var_no_alarm);
		sprintf(FC[i].FLOW_OIL.name, "FC%d Oil Flow", i+1);
		VAR_Setup_Unit(&FC[i].FLOW_OIL, u_vfr_barrel_day, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].FLOW_OIL, 0.0, 0, 0);
		FC[i].FLOW_OIL.aux = i;

		/* Flow Computer Water Flow - 0.0 */
		VAR_Initialize(&FC[i].FLOW_WATER, c_volumetric_flow, u_vfr_barrel_day, 1.0, 1000.0, var_no_alarm);
		sprintf(FC[i].FLOW_WATER.name, "FC%d Water Flow", i+1);
		VAR_Setup_Unit(&FC[i].FLOW_WATER, u_vfr_barrel_day, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].FLOW_WATER, 0.0, 0, 0);
		FC[i].FLOW_WATER.aux = i;

		/* Flow Computer Total Flow - 0.0 */
		VAR_Initialize(&FC[i].FLOW_TOTAL, c_volumetric_flow, u_vfr_barrel_day, 1.0, 1000.0, var_no_alarm);
		sprintf(FC[i].FLOW_TOTAL.name, "FC%d Total Flow", i+1);
		VAR_Setup_Unit(&FC[i].FLOW_TOTAL, u_vfr_barrel_day, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].FLOW_TOTAL, 0.0, 0, 0);
		FC[i].FLOW_TOTAL.aux = i;

		/* Flow Computer Net Oil Flow - 0.0 */
		VAR_Initialize(&FC[i].NET_FLOW_OIL, c_volumetric_flow, u_vfr_barrel_day, 1.0, 1000.0, var_no_alarm);
		sprintf(FC[i].NET_FLOW_OIL.name, "FC%d Net Oil Flow", i+1);
		VAR_Setup_Unit(&FC[i].NET_FLOW_OIL, u_vfr_barrel_day, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_FLOW_OIL, 0.0, 0, 0);
		FC[i].NET_FLOW_OIL.aux = i;

		/* Flow Computer Net Water Flow - 0.0 */
		VAR_Initialize(&FC[i].NET_FLOW_WATER, c_volumetric_flow, u_vfr_barrel_day, 1.0, 1000.0, var_no_alarm);
		sprintf(FC[i].NET_FLOW_WATER.name, "FC%d Net Water Flow", i+1);
		VAR_Setup_Unit(&FC[i].NET_FLOW_WATER, u_vfr_barrel_day, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_FLOW_WATER, 0.0, 0, 0);
		FC[i].NET_FLOW_WATER.aux = i;

		/* Flow Computer Net Total Flow - 0.0 */
		VAR_Initialize(&FC[i].NET_FLOW_TOTAL, c_volumetric_flow, u_vfr_barrel_day, 1.0, 1000.0, var_no_alarm);
		sprintf(FC[i].NET_FLOW_TOTAL.name, "FC%d Net Total Flow", i+1);	//R369
		FC[i].NET_FLOW_TOTAL.name_r = 369;
		VAR_Setup_Unit(&FC[i].NET_FLOW_TOTAL, u_vfr_barrel_day, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_FLOW_TOTAL, 0.0, 0, 0);
		FC[i].NET_FLOW_TOTAL.aux = i;

		/* Flow Computer Process Watercut - 0.0 */
		VAR_Initialize(&FC[i].watercut, c_volume_per_volume, u_vpv_volume_percent, 100.0, 1000.0, var_no_alarm);
		sprintf(FC[i].watercut.name, "FC%d Process", i+1);	//R365
		FC[i].watercut.name_r = 365;
		VAR_Setup_Unit(&FC[i].watercut, u_vpv_volume_percent, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&FC[i].watercut, 0.0, 0, 0);
		FC[i].watercut.aux = i;

		/* Flow Computer Temperature - 0.0 */
		VAR_Initialize(&FC[i].T, c_temperature, u_temp_C, 10.0, 10.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].T.name, "FC%d Temperature", i+1);	//R368
		FC[i].T.name_r = 368;
		VAR_Update(&FC[i].T, 0.0, 0, 0);
		FC[i].T.aux = i;

		/* Flow Computer Pressure - 0.0 */
		VAR_Initialize(&FC[i].pressure, c_pressure, u_p_psi, 1.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].pressure.name, "FC%d Pressure", i+1);	//R364
		FC[i].pressure.name_r = 364;
		VAR_Update(&FC[i].pressure, 0.0, 0, 0);
		FC[i].pressure.aux = i;

		/* Flow Computer Density - 0.0 */
		VAR_Initialize(&FC[i].density, c_mass_per_volume, u_mpv_kg_cm, 10.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].density.name, "FC%d Density", i+1);	//R372
		FC[i].density.name_r = 372;
		VAR_Update(&FC[i].density, 0.0, 0, 0);
		
		FC[i].density.aux 			= i;
		FC[i].density.vect1 		= (int*)PDI_Density_Adj;
		FC[i].density.vect2 		= (int*)PDI_Density_Correction;
		FC[i].density_adj 			= 0.0;
		FC[i].density_PDI_corrected = API_error_num;
		
		/* Flow Computer Density @ Standard Temperature - 999.012 */
		/* Note: although unit code does not indicate temperature, this variable represents the value at standard temperature */
		VAR_Initialize(&FC[i].density_waterST, c_mass_per_volume, u_mpv_kg_cm, 10.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].density_waterST.name, "FC%d Water Density@ST", i+1);	//R371
		FC[i].density_waterST.name_r = 371;
		VAR_Update(&FC[i].density_waterST, 999.012, 0, 0);
		FC[i].density_waterST.aux = i;

		/* Flow Computer Density @ Process Temperature - 999.012 */
		/* Note: although unit code does not indicate temperature, this variable represents the value at process temperature */
		VAR_Initialize(&FC[i].density_water, c_mass_per_volume, u_mpv_kg_cm, 10.0, 1000.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].density_water.name, "FC%d Water Density@PT", i+1);	//R370
		FC[i].density_water.name_r = 370;
		VAR_Update(&FC[i].density_water, 999.012, 0, 0);
		FC[i].density_water.aux = i;

		/* Flow Computer Oil Density @ Standard Temperature - 865.443 */
		/* Note: although unit code does not indicate temperature, this variable represents the value at standard temperature */
		VAR_Initialize(&FC[i].density_oilST, c_mass_per_volume, u_mpv_kg_cm, 10.0, 1000.0, var_no_bound|var_no_alarm);	/*Correct oil density unit from API to kg/m3, ?check real value -RS*/
		sprintf(FC[i].density_oilST.name, "FC%d Oil Density@ST", i+1);	//R363
		FC[i].density_oilST.name_r = 363;
		VAR_Update(&FC[i].density_oilST, 865.443/*32.0*/, 0, 0);     													/*Density 32.0 API equals to 865.443 kg/m3 (=141.5/(131.5+API)) -RS*/
		FC[i].density_oilST.aux = i;

		/* Flow Computer Density @ Process Temperature - 865.443 */
		/* Note: although unit code does not indicate temperature, this variable represents the value at process temperature */
		VAR_Initialize(&FC[i].density_oil, c_mass_per_volume, u_mpv_kg_cm, 10.0, 1000.0, var_no_bound|var_no_alarm);    /*Correct oil density unit from API to kg/m3 -RS*/
		sprintf(FC[i].density_oil.name, "FC%d Oil Density@PT", i+1);	//R362
		FC[i].density_oil.name_r = 362;
		VAR_Update(&FC[i].density_oil, 865.443, 0, 0);
		FC[i].density_oil.aux = i;

		/* Flow Computer Salinity - 2.00 */
		VAR_Initialize(&FC[i].salinity, c_concentration, u_conc_perc_solid_per_weight, 100.0, 100.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].salinity.name, "FC%d Salinity", i+1);	//R366
		FC[i].salinity.name_r = 366;
		VAR_Update(&FC[i].salinity, 2.00, 0, 0);
		FC[i].salinity.aux = i;

		/* Flow Computer Meter Factor - 1.00 */
		VAR_Initialize(&FC[i].Meter_Factor, c_not_classified, u_generic_not_used, 10000.0, 100000.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].Meter_Factor.name, "FC%d Meter Factor", i+1);	//R361
		FC[i].Meter_Factor.name_r = 361;
		VAR_Update(&FC[i].Meter_Factor, 1.00, 0, 0);

		/* Flow Computer Shrinkage - 1.00 */
		VAR_Initialize(&FC[i].Shrinkage, c_not_classified, u_generic_not_used, 10000.0, 100000.0, var_no_bound|var_no_alarm);
		sprintf(FC[i].Shrinkage.name, "FC%d Shrinkage", i+1);	//R367
		FC[i].Shrinkage.name_r = 367;
		VAR_Update(&FC[i].Shrinkage, 1.00, 0, 0);

		FC[i].API_TABLE 		= 'A'<<8;
		FC[i].USE_PDI_TEMP 		= TRUE;
		FC[i].USE_PDI_SALINITY 	= TRUE;
		FC[i].MAN_TEMP 			= FALSE;
		FC[i].MAN_SALINITY 		= FALSE;
		FC[i].MAN_WATERCUT 		= FALSE;
		FC[i].MAN_DENSITY 		= FALSE;
		FC[i].MAN_PRESSURE 		= FALSE;
		FC[i].MAN_FLOW 			= FALSE;
		FC[i].VCFo 				= 1.0;
		FC[i].VCFw 				= 1.0;
		FC[i].net_watercut 		= 0.0;
		FC[i].a 				= 0.0;

		Set_FC_Units(0);

	}
	
	FC[0].pulse_v.vect				= (int*)Set_Class_Units_Pulse1;
	FC[1].pulse_v.vect				= (int*)Set_Class_Units_Pulse2;
	FC[2].pulse_v.vect				= (int*)Set_Class_Units_Pulse3;
	
	FC[0].Z.vect	= (int*)Zero_FC1;
	FC[1].Z.vect 	= (int*)Zero_FC2;
	FC[2].Z.vect 	= (int*)Zero_FC3;   
	FC[0].Z.vect2	= NULL_PTR;
	FC[1].Z.vect2 	= NULL_PTR;
	FC[2].Z.vect2 	= NULL_PTR;

	
	CALC_WC_DENSITY.val		= FALSE;
	CALC_WC_DENSITY.vect	= (int*)Disable_PDI_WC_Mode;
	CALC_WC_DENSITY.vect2	= NULL_PTR;
	
	USE_PDI_WATERCUT.val	= TRUE;
	USE_PDI_WATERCUT.vect	= (int*)Disable_WC_Density_Mode;
	USE_PDI_WATERCUT.vect2	= NULL_PTR;	
	
	
	/* User Variables - NaN */
	for (i=0;i<VARUSERMAX;i++)
	{
		VAR_Initialize(&VARUSER[i], c_not_classified, u_generic_not_used, 100.0, 100.0, var_no_bound|var_dampen|var_no_alarm);
		sprintf(VARUSER[i].name, "User Variable %d", i+1);
		VAR_NaN(&VARUSER[i]);
	}

	{
		//HSALT.new 			= TRUE;
		//HSALT.ENABLED.val 	= FALSE; //This was overriding the CSV enable of HSALT -DHA 9/1/2015
		HSALT.ENABLED.vect 	= (int*)HSALT_CLEAR;
		HSALT.S3 			= 0.0;
		HSALT.S2 			= 0.0;
		HSALT.S1 			= 0.0;
		HSALT.S0 			= 0.0;
		HSALT.SP3A 			= 0.0;
		HSALT.SP2A 			= 0.0;
		HSALT.SP1A 			= 0.0;
		HSALT.SP0A 			= 3.0;
		HSALT.SPLOA 		= 0.02;
		HSALT.SPHIA 		= 30.0;
		HSALT.SP3B 			= 0.0;
		HSALT.SP2B 			= 0.0;
		HSALT.SP1B 			= 0.0;
		HSALT.SP0B 			= 8.0;
		HSALT.SPLOB 		= 0.02;
		HSALT.SPHIB 		= 30.0;
		HSALT.Fmin 			= 0.0;
		//HSALT.Fmax 			= 0.0;
		HSALT.Dmin 			= 0.0;
		HSALT.Dmax 			= 0.0;
		HSALT.FBHI3 		= 0.0;
		HSALT.FBHI2 		= 0.0;
		HSALT.FBHI1 		= 0.0;
		HSALT.FBHI0 		= 0.0;
		HSALT.FBLO3 		= 0.0;
		HSALT.FBLO2 		= 0.0;
		HSALT.FBLO1 		= 0.0;
		HSALT.FBLO0 		= 0.0;   
	}

	for (i=0;i<SPADMAX;i++)
		SPAD[i] = 0x0000;
	
	DIO_Autosave_on_pair_boundary = FALSE;

	for (i=0;i<UART_MAX;i++)
	{
		DIO_CLEAR_PORT_COUNT[i].val		= FALSE;
		DIO_CLEAR_PORT_COUNT[i].vect 	= (int*)CLEAR_PORT_COUNT; 
		DIO_CLEAR_PORT_COUNT[i].vect2 	= NULL_PTR;
	}

	OIL_CALC_MODE 			= 0;
	OIL_CALC_MAX[0] 		= 0.0;
	OIL_CALC_MAX[1] 		= 0.0;
	OIL_CALC_CUTOFF 		= OIL_CALC_MAX[0];
	OSC_OIL_CALC 			= 0;
	OSC_WATER_CALC 			= 2;
	OSWITCH 				= 1;
	EXTUNE 					= 0;
	VT_SELECT 				= 0;
	ENABLED[OSC_OIL_CALC] 	= TRUE;
	ENABLED[OSC_WATER_CALC] = TRUE;
	IRDA_ENABLE 			= 0x0001;
	RLY[0].MODE 			= 0;
	RLY[0].STATUS_MASK 		= 0xFFFF;
	RLY[0].v.val 			= 0;
	RLY[0].v.vect 			= (int*) &Set_RLY_Units; 
	RLY[0].ON.val 			= FALSE;
	RLY[0].ON.vect 			= NULL_PTR;
	
	v = HART_Lookup(RLY[0].v.val, &ui, (int*)&HART_DV_Table);
	if ((v!=(VAR*)0) && (v!=&REG_DUMMY))
	{
		RLY[0].setpoint = VAR_Get_Unit_Param(v, reg_direct_bmax, 0, 0);
		RLY[0].class 	= v->class;
		RLY[0].unit 	= v->unit & 0xFF;
	}
	else
	{
		RLY[0].class 	= c_volume_per_volume;
		RLY[0].unit 	= u_vpv_volume_percent & 0xFF;
		RLY[0].setpoint = 100.0;
		RLY[0].v.val 	= -1;
	}

	RLY[1].MODE 		= 1;
	RLY[1].STATUS_MASK 	= 0xFFFF;
	RLY[1].v.val 		= 0;
	RLY[1].v.vect 		= (int*) &Set_RLY_Units;
	RLY[1].ON.val 		= FALSE;
	RLY[1].ON.vect 		= NULL_PTR;
		
	v = HART_Lookup(RLY[1].v.val, &ui, (int*)&HART_DV_Table);
	if ((v!=(VAR*)0) && (v!=&REG_DUMMY))
	{
		RLY[1].setpoint = VAR_Get_Unit_Param(v, reg_direct_bmax, 0, 0);
		RLY[1].class 	= v->class;
		RLY[1].unit 	= v->unit;
	}
	else
	{
		RLY[1].class 	= c_volume_per_volume;
		RLY[1].unit 	= u_vpv_volume_percent;
		RLY[1].setpoint = 100.0;
		RLY[1].v.val 	= -1;
	}

	{/* Density Correction Curves */
		Density_Correction_Mode.val  = 0;
		Density_Correction_Mode.vect = (int*)Set_Density_Correction; 
		DCM_PORT.val 				 = 3;
		DCM_PORT.vect 				 = (int*)Set_Density_Correction;  
		DensityCF_D0				 = 0.0;
		DensityCFD_D1				 = 1.0;
		DensityCFT_D1				 = 0.0;
        
        /************ third order density correction RS **************/ 
        /* Density Adjustment 3rd Order - 0.00 */
		VAR_Initialize(&Density_D3, c_analytical, u_mfgr_specific_none, 100.0, 10000.0, var_no_bound|var_no_alarm);
		sprintf(Density_D3.name, "Density Adj 3rd Ord.");	//R344
		Density_D3.name_r = 344;
		VAR_Update(&Density_D3, 0.00, 0, 0);
		
		/* Density Adjustment 2nd Order - 0.00 */
		VAR_Initialize(&Density_D2, c_analytical, u_mfgr_specific_none, 100.0, 10000.0, var_no_bound|var_no_alarm);
		sprintf(Density_D2.name, "Density Adj 2nd Ord.");	//R345
		Density_D2.name_r = 345;
		VAR_Update(&Density_D2, 0.00, 0, 0);
        /************ third order density correction RS**************/
        
		/* Density Adjustment Slope - 0.16 */
		VAR_Initialize(&Density_D1, c_analytical, u_mfgr_specific_perc_per_API_60F, 100.0, 10000.0, var_no_bound|var_no_alarm);
		sprintf(Density_D1.name, "Density Adj Slope");	//R346
		Density_D1.name_r = 346;
		VAR_Update(&Density_D1, 0.16, 0, 0);

		/* Density Adjustment Offset - 0.0 */
		VAR_Initialize(&Density_D0, c_analytical, u_ana_percent, 100.0, 10000.0, var_no_bound|var_no_alarm);
		sprintf(Density_D0.name, "Density Adj Offset");	//R347
		Density_D0.name_r = 347;
		VAR_Update(&Density_D0, 0.0, 0, 0);

		/* Density Adjustment Calibration - 32.00 */
		VAR_Initialize(&Density_Cal, c_mass_per_volume, u_mpv_deg_API_60F, 100.0, 10000.0, var_no_bound|var_no_alarm);
		sprintf(Density_Cal.name, "Calibration Density");
		VAR_Update(&Density_Cal, 32.00, 0, 0);
		
		Density_Cal_Unit.val  = u_mpv_deg_API_60F;
		Density_Cal_Unit.vect = (int*)Set_Density_Cal_Unit;
	}

	{
		/* Alyeska PLC Data Address - 41.0 */
		VAR_Initialize(&ALYESKA.DESTINATION_ADDRESS, c_not_classified, u_mfgr_specific_none, 100.0, 1000.0, var_no_alarm);
		sprintf(ALYESKA.DESTINATION_ADDRESS.name, "PLC Data Address");
		VAR_Setup_Unit(&ALYESKA.DESTINATION_ADDRESS, u_mfgr_specific_none, 65536.0, 1.0, 65536.0, 1.0);
		VAR_Update(&ALYESKA.DESTINATION_ADDRESS, 41.0, 0, 0);

		ALYESKA.WATERCUT		= 0.0;
		ALYESKA.FLOW_RATE		= 0.0;
		ALYESKA.TEMPERATURE		= 0.0;
		ALYESKA.DENSITY			= 0.0;
		ALYESKA.VISCOSITY		= 0.0;
		
		ALYESKA.iWATERCUTz		= 0;
		ALYESKA.iWATERCUT		= 0;
		ALYESKA.iFLOW_RATE		= 0;
		ALYESKA.iTEMPERATURE	= 0;
		ALYESKA.iDENSITY		= 0;
		ALYESKA.iVISCOSITY		= 0;
		
		ALYESKA.maxWATERCUTz	= 3.0;
		ALYESKA.maxWATERCUT		= 20.0;
		ALYESKA.maxFLOW_RATE	= 30.0;
		ALYESKA.maxTEMPERATURE	= 160.0;
		ALYESKA.maxDENSITY		= 1.0;
		ALYESKA.maxVISCOSITY	= 10.0;
		
		ALYESKA.minWATERCUTz	= 0.0;
		ALYESKA.minWATERCUT		= 0.0;
		ALYESKA.minFLOW_RATE	= 0.0;
		ALYESKA.minTEMPERATURE	= 60.0;
		ALYESKA.minDENSITY		= 0.7;
		ALYESKA.minVISCOSITY	= 0.5;
		
		ALYESKA.ENABLED			= FALSE;
	}

/************************************************/
/*** Added these variables to streamline HART ***/
/************************************************/
	VAR_Initialize(&REG_alarm_relay_delay, 			c_time, u_time_sec, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_flow_meter_type, 			c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_flow_volume_unit, 			c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_flow_rate_time_unit, 		c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_count_per_flow_unit, 		c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_20mA_max_flow_rate_input, 	c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_accumulator_display_format, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_HART_response_delay,		c_not_used, u_mfgr_specific_ct, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_HART_num_preamble,			c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_reference_currrent_mode,	c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_density_correction_mode, 	c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_port1_Baud_Rate, 			c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_port1_parity, 				c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
	VAR_Initialize(&REG_port1_stop_bits, 			c_not_used, u_generic_not_used, 1.0, 1.0, var_no_bound|var_no_alarm);
/************************************************/
 
	AMETEK 							= FALSE;
	DIO_PV_PERCMASS 				= FALSE;
	DIO_MSVE 						= 0;
	DIO_IDEC_ENABLE 				= TRUE;
	DIO_SYSTEM_RESET.val 			= FALSE;
	DIO_SYSTEM_RESTART.val 			= FALSE;
	DIO_BUILT_IN_TEST.val 			= TRUE;
	DIO_RESET_FACTORY_DEFAULTS.val 	= FALSE;
	DIO_ERROR.val 					= TRUE;
	DIO_ALARM.val 					= FALSE;
	DIO_RESTORE_USER_CONFIG.val 	= FALSE;
	DIO_RESTORE_USER_CONFIG.val 	= FALSE;
	DIO_SAVE_USER_CONFIG.val 		= FALSE;
	DIO_RESEARCH_MODE.val 			= FALSE;
	DIO_SAVE_FACTORY_CONFIG.val 	= FALSE;
	DIO_RESTORE_BASICS.val 			= FALSE;
	DIO_CAP_OIL.val 				= FALSE;
	DIO_CAP_WATER.val 				= FALSE;
	DIO_CCM_START.val 				= FALSE;
	DIO_CCM_PURGE_STAT.val 			= FALSE;
	
	/***********logging purge/test status RS********************/
	/* CCM Test Status "Test In Progress" - 0.0 */
	VAR_Initialize(&REG_CCM_TEST_STAT, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_CCM_TEST_STAT.name, "TEST IN PROGRESS");	//R328
	REG_CCM_TEST_STAT.name_r = 328;
	VAR_Setup_Unit(&REG_CCM_TEST_STAT, u_mfgr_specific_none, 1.0, 0.0, 1.0, 0.0);
	VAR_Update(&REG_CCM_TEST_STAT, 0.0, 0, 0);     
	
	/* CCM Purge Status "Purging" - 0.0 */
	VAR_Initialize(&REG_CCM_PURGE_STAT, c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(REG_CCM_PURGE_STAT.name, "PURGING");
	VAR_Setup_Unit(&REG_CCM_PURGE_STAT, u_mfgr_specific_none, 1.0, 0.0, 1.0, 0.0);
	VAR_Update(&REG_CCM_PURGE_STAT, 0.0, 0, 0);
	
	DIO_CCM_PURGE_TIME.val 			= FALSE;
	DIO_AUX_FREQ_MODE				= 0x0000;
	DIO_PORT_IGNORE_DATA_EXCEPTION 	= 0x0001;
	DIO_CLEAR_COUNTERS.val 			= FALSE;	/* Reset Accumulators */
	DIO_TOTALIZER_CONTROL.val 		= TRUE;		/* Enable Accumulators  */
	DIO_HART_5.val 					= TRUE;
	DIO_BUILT_IN_TEST_ENABLE.val 	= TRUE;
	DIO_HEATER_DISABLE.val 			= FALSE;
	DIO_DUMMY.val 					= FALSE;
	LOOP_ENABLED.val 				= TRUE;
	DATA_CHANGE.val 				= FALSE;
	DIO_BEEP.val 					= FALSE;
	
	/* HSALT Manual Reset */
	DIO_MANUAL_RESET.val	= FALSE;		/* Coil for Enabling Manual HSALT Reset */
	DIO_MANUAL_RESET.vect	= NULL_PTR;
	DIO_MANUAL_RESET.vect2	= NULL_PTR;
	
	
	// new boxcar routine 
    DIO_TIME_RESET.val 		= FALSE;		// Coil for Enabling Time Reset 
    DIO_TIME_RESET.vect 	= NULL_PTR;
    DIO_TIME_RESET.vect2	= NULL_PTR;
	/*
    //BOXCAR_RESET 			= TRUE; 		// ensures boxcar will be reset upon first entering TIME_RESET 
	MIN_HSALT_FREQ			= 0;			// Minimum Heurisitic Salt Frequency 
    BOXCAR_INDEX			= 0;			// Index of Minimum Frequency in Boxcar 
    CURSOR					= 0;			// Current Position in Boxcar 
	// new boxcar routine 
	*/
    
	
	DIO_PORT_DEFAULTS.val 	= 0;
	DIO_PORT_DEFAULTS.vect 	= (int*)Submit_Serial_Defaults;
	DIO_PORT_DEFAULTS.vect2 = NULL_PTR;
	
	/* DIO Coil vectors */
	DIO_BEEP.vect 					= (int*)BEEP_ON;
	DATA_CHANGE.vect 				= NULL_PTR;
	LOOP_ENABLED.vect 				= NULL_PTR;
	DIO_CCM_START.vect 				= (int*)CCM_START;
	DIO_CCM_PURGE_STAT.vect 		= NULL_PTR;
	DIO_CCM_PURGE_TIME.vect 		= NULL_PTR;
	DIO_DUMMY.vect 					= NULL_PTR;
	DIO_HEATER_DISABLE.vect 		= (int*)Disable_Heater;
	DIO_SYSTEM_RESET.vect 			= (int*)Submit_Reset;
	DIO_SYSTEM_RESTART.vect 		= (int*)Submit_Restart;
	DIO_BUILT_IN_TEST.vect 			= (int*)Submit_SELF_TEST;
	DIO_BUILT_IN_TEST_ENABLE.vect	= NULL_PTR;
	DIO_RESET_FACTORY_DEFAULTS.vect = (int*)Submit_Restore_CFG_FACTORY;
	DIO_ERROR.vect 					= (int*)Clear_Diagnostics;
	DIO_ALARM.vect 					= NULL_PTR;
	DIO_RESTORE_USER_CONFIG.vect 	= (int*)Submit_Restore_CFG_USER;
	DIO_SAVE_USER_CONFIG.vect 		= (int*)Submit_Write_CFG_USER;
	DIO_RESEARCH_MODE.vect 			= (int*)Set_Research_Mode;
	DIO_SAVE_FACTORY_CONFIG.vect 	= (int*)Submit_Write_CFG_FACTORY; 
	DIO_RESTORE_BASICS.vect 		= (int*)Submit_Setup_Basics;
	DIO_CAP_OIL.vect 				= (int*)Capture_Watercut_Oil;
	DIO_CAP_WATER.vect 				= (int*)Capture_Watercut_Water;
	DIO_CLEAR_COUNTERS.vect 		= (int*)Clear_Accumulators;
	DIO_TOTALIZER_CONTROL.vect 		= (int*)Totalizer_Control;
	DIO_HART_5.vect 				= (int*)HART_5;
    
    /*added for .vect2 of coils - add stream select RS*/
	DIO_BEEP.vect2 						= NULL_PTR;
	DATA_CHANGE.vect2 					= NULL_PTR;
	LOOP_ENABLED.vect2 					= NULL_PTR;
	DIO_CCM_START.vect2 				= NULL_PTR;
	DIO_CCM_PURGE_STAT.vect2 			= NULL_PTR;
	DIO_CCM_PURGE_TIME.vect2 			= NULL_PTR;
	DIO_DUMMY.vect2 					= NULL_PTR;
	DIO_HEATER_DISABLE.vect2 			= NULL_PTR;
	DIO_SYSTEM_RESET.vect2 				= NULL_PTR;
	DIO_SYSTEM_RESTART.vect2 			= NULL_PTR;
	DIO_BUILT_IN_TEST.vect2 			= NULL_PTR;
	DIO_BUILT_IN_TEST_ENABLE.vect2 		= NULL_PTR;
	DIO_RESET_FACTORY_DEFAULTS.vect2	= NULL_PTR;
	DIO_ERROR.vect2 					= NULL_PTR;
	DIO_ALARM.vect2 					= NULL_PTR;
	DIO_RESTORE_USER_CONFIG.vect2 		= NULL_PTR;
	DIO_SAVE_USER_CONFIG.vect2 			= NULL_PTR;
	DIO_RESEARCH_MODE.vect2 			= NULL_PTR;
	DIO_SAVE_FACTORY_CONFIG.vect2 		= NULL_PTR; 
	DIO_RESTORE_BASICS.vect2 			= NULL_PTR;
	DIO_CAP_OIL.vect2 					= NULL_PTR;
	DIO_CAP_WATER.vect2 				= NULL_PTR;
	DIO_CLEAR_COUNTERS.vect2 			= NULL_PTR;
	DIO_TOTALIZER_CONTROL.vect2 		= NULL_PTR;
	DIO_HART_5.vect2 					= NULL_PTR;
    /*added for .vect2 of coils - add stream select RS*/
    
	DIO_uP_GET.val  = FALSE;
	DIO_uP_SET.val  = FALSE;
	DIO_uP_GET.vect = (int*)Submit_GET_uP_CONFIG;
	DIO_uP_SET.vect = (int*)Submit_STORE_uP_CONFIG;

	DIO_COMM_GET.val  = FALSE;
	DIO_COMM_SET.val  = FALSE;
	DIO_COMM_GET.vect = (int*)Submit_GET_COMM_CONFIG;
	DIO_COMM_SET.vect = (int*)Submit_STORE_COMM_CONFIG;

	DIO_ANALYZER_GET.val  = FALSE;
	DIO_ANALYZER_SET.val  = FALSE;
	DIO_ANALYZER_GET.vect = (int*)Submit_GET_ANALYZER_CONFIG;
	DIO_ANALYZER_SET.vect = (int*)Submit_STORE_ANALYZER_CONFIG;

	DIO_POWER_GET.val  = FALSE;
	DIO_POWER_SET.val  = FALSE;
	DIO_POWER_GET.vect = (int*)Submit_GET_POWER_CONFIG;
	DIO_POWER_SET.vect = (int*)Submit_STORE_POWER_CONFIG;

	DIO_ANALOGIO_GET.val  = FALSE;
	DIO_ANALOGIO_SET.val  = FALSE;
	DIO_ANALOGIO_GET.vect = (int*)Submit_GET_ANALOGIO_CONFIG;
	DIO_ANALOGIO_SET.vect = (int*)Submit_STORE_ANALOGIO_CONFIG;

	DIO_DISPLAY_GET.val  = FALSE;
	DIO_DISPLAY_SET.val  = FALSE;
	DIO_DISPLAY_GET.vect = (int*)Submit_GET_DISPLAY_CONFIG;
	DIO_DISPLAY_SET.vect = (int*)Submit_STORE_DISPLAY_CONFIG;

	DIO_MOTHERBOARD_GET.val  = FALSE;
	DIO_MOTHERBOARD_SET.val  = FALSE;
	DIO_MOTHERBOARD_GET.vect = (int*)Submit_GET_MOTHERBOARD_CONFIG;
	DIO_MOTHERBOARD_SET.vect = (int*)Submit_STORE_MOTHERBOARD_CONFIG;
    
	DIO_uP_GET.vect2 			= NULL_PTR;
	DIO_uP_SET.vect2 			= NULL_PTR;
 	DIO_COMM_GET.vect2 			= NULL_PTR;
	DIO_COMM_SET.vect2 			= NULL_PTR;
	DIO_ANALYZER_GET.vect2 		= NULL_PTR;
	DIO_ANALYZER_SET.vect2 		= NULL_PTR;
	DIO_POWER_GET.vect2 		= NULL_PTR;
	DIO_POWER_SET.vect2 		= NULL_PTR;
	DIO_ANALOGIO_GET.vect2 		= NULL_PTR;
	DIO_ANALOGIO_SET.vect2 		= NULL_PTR;
	DIO_DISPLAY_GET.vect2 		= NULL_PTR;
	DIO_DISPLAY_SET.vect2 		= NULL_PTR;
	DIO_MOTHERBOARD_GET.vect2 	= NULL_PTR;
	DIO_MOTHERBOARD_SET.vect2 	= NULL_PTR;
    
	HART_VAR_LIST[0] 		= 0;
	HART_VAR_LIST[1] 		= 1;
	HART_VAR_LIST[2] 		= 2;
	HART_VAR_LIST[3] 		= var_not_used;
	HART_BURST_VAR_LIST[0] 	= 0;
	HART_BURST_VAR_LIST[1] 	= 1;
	HART_BURST_VAR_LIST[2] 	= 2;
	HART_BURST_VAR_LIST[3] 	= var_not_used;
	HART_BURST_CMD 			= HART_CMD_Read_PV;
    HART_BURST_MODE 		= FALSE;

	TEMP_OIL_MAX 	= 0;
	TEMP_WATER_MAX 	= 0;
	SALT_MAX 		= 0;

	for (i=0;i<10;i++)
	{
		TEMPS_OIL[i] = 0.0;

		for (j=0;j<4;j++)
			COEFF_TEMP_OIL[i][j] = 0.0;
	}

	for (k=0;k<20;k++)
	{
		SALTS[k] = 0.0;

		for (i=0;i<15;i++)
		{
			TEMPS_WATER[i] = 0.0;
	
			for (j=0;j<4;j++)
				COEFF_SALT_TEMP_WATER[k][i][j] = 0.0;
		}
	}

	COEFF_C0	= 0;
	COEFF_FA2 	= 1.0/1000.0;
	COEFF_FA1 	= 0;
	COEFF_FB2 	= 0;
	COEFF_FB1 	= 0;
	COEFF_RPA2 	= 0;
	COEFF_RPA1 	= 0;
	COEFF_RPB2 	= 0;
	COEFF_RPB1 	= 0;
	COEFF_IPA2 	= 0;
	COEFF_IPA1	= 0;
	COEFF_IPB2 	= 0;
	COEFF_IPB1 	= 0;
	COEFF_T2 	= 0;
	COEFF_T1 	= 0;    
	COEFF_D2 	= 0;  /*PPM Analyzer with MicroMotion density RS*/
	COEFF_D1 	= 0;  /*PPM Analyzer with MicroMotion density RS*/

	for (i=0;i< 1;i++) 
		STR_VER[i]	= 0x0000;
	
	for (i=0;i< 2;i++) 
		STR_INIT[i]  = 0x0000;
	
	c = (char*)&copyright;
	for (i=0;i<20;i++)
	{
		if (c[2*i] == 0x00) 
			break;
		
		STR_Copyright[i] = c[2*i]<<8;
		
		if (c[2*i+1] == 0x00)
		{
			STR_Copyright[i] |= 0x0020;
			i++;
			break;
		}
		else
			STR_Copyright[i] |= (int)(c[2*i+1]);
	}
	
	for (i  ;i<20;i++) 
		STR_Copyright[i]	 = 0x2020;
	
	for (i=0;i<10;i++) 
		STR_Analyzer_Info[i] = 0x2020;
	
	for (i=0;i<4 ;i++) 
		STR_HART_Tag[i]      = 0x2020;
	
	for (i=0;i<16;i++) 
		STR_HART_Tag_Long[i] = 0x0000;
	
	for (i=0;i<8 ;i++) 
		STR_HART_Desc[i]     = 0x2020;
	
	for (i=0;i<16;i++) 
		STR_HART_Msg[i]      = 0x2020;
	
	for (i=0;i<8 ;i++) 
		STR_ASSY_Date[i]     = 0x2020;   /* add profile version -RS*/
	
	for (i=0;i<10;i++) 
		STR_Analyzer_PV[i]	 = 0x2020;
	
	for (i=0;i<4 ;i++) 
		STR_Analyzer_UNIT[i] = 0x2020;

	STR_HART_Date[0]	= 0x0101;	/* byte1 = day, byte0 = month */ 
	STR_HART_Date[1]	= 0x6600;	/* byte1 = year-1900, byte0 = Not Used */

	/* Oil Phase Filter - 0.0 */
	VAR_Initialize(&Oil_Phase_Filter, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(Oil_Phase_Filter.name, "Oil Cont. Filter");
	VAR_Setup_Unit(&Oil_Phase_Filter, u_mfgr_specific_none, 6.0, 0.0, 6.0, 0.0);
	VAR_Update(&Oil_Phase_Filter, 0.0, 0, 0);

	/* Oil Phase Filter Max - 80.0 */
	VAR_Initialize(&Oil_Phase_Maximum, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(Oil_Phase_Maximum.name, "Oil Cont. Maximum");
	VAR_Setup_Unit(&Oil_Phase_Maximum, u_mfgr_specific_none, 100.0, 0.0, 100.0, 0.0);
	VAR_Update(&Oil_Phase_Maximum, 80.0, 0, 0);

	/* Water Phase Filter - 0.0 */
	VAR_Initialize(&Water_Phase_Filter, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(Water_Phase_Filter.name, "Water Cont. Filter");
	VAR_Setup_Unit(&Water_Phase_Filter, u_mfgr_specific_none, 6.0, 0.0, 6.0, 0.0);
	VAR_Update(&Water_Phase_Filter, 0.0, 0, 0);

	/* Water Phase Minimum - 65.0 */
	VAR_Initialize(&Water_Phase_Minimum, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(Water_Phase_Minimum.name, "Water Cont. Minimum");
	VAR_Setup_Unit(&Water_Phase_Minimum, u_mfgr_specific_none, 100.0, 0.0, 100.0, 0.0);
	VAR_Update(&Water_Phase_Minimum, 65.0, 0, 0);

	/* Number of Oil Samples - 5122.0 (~4 hours) */
	Copy_CAPDATA(&Cap_Oil, 0, 1);	/* clear */
	VAR_Initialize(&Num_Oil_Samples, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(Num_Oil_Samples.name, "#Oil Phase Samples");
	VAR_Setup_Unit(&Num_Oil_Samples, u_mfgr_specific_none, 6000.0, 1.0, 6000.0, 1.0);   /*new salt cal routine manual stop RS*/
	VAR_Update(&Num_Oil_Samples, CAPTURE_SAMPLES, 0, 0);                 						/*new salt cal routine manual stop RS*/
	
	/* Number of Water Samples - 5122.0 (~4 hours) */
	Copy_CAPDATA(&Cap_Water, 0, 1);	/* clear */
	VAR_Initialize(&Num_Water_Samples, c_not_used, u_generic_not_used, 1.0, 1.0, var_no_alarm|var_round);
	sprintf(Num_Water_Samples.name, "#Water Phase Samples");
	VAR_Setup_Unit(&Num_Water_Samples, u_mfgr_specific_none, 6000.0, 1.0, 6000.0, 1.0); /*new salt cal routine manual stop RS*/
	VAR_Update(&Num_Water_Samples, CAPTURE_SAMPLES, 0, 0);         							/*new salt cal routine manual stop, initial value change from 5 to 30, not use it as indicate of complete RS*/

	for (i=0;i<SMAX;i++)
	{
		Cap_Records[i].Watercut[0]				= Cap_Oil.Watercut;
		Cap_Records[i].Temperature[0]			= Cap_Oil.Temperature;
		Cap_Records[i].Salinity[0]				= Cap_Oil.Salinity;
		Cap_Records[i].Frequency_Oil[0]			= Cap_Oil.Frequency_Oil;
		Cap_Records[i].Frequency_Water[0]		= Cap_Oil.Frequency_Water;
		Cap_Records[i].RefPower_Oil[0]			= Cap_Oil.RefPower_Oil;
		Cap_Records[i].RefPower_Water[0]		= Cap_Oil.RefPower_Water;
		Cap_Records[i].Dadj[0]					= Cap_Oil.Dadj;
		Cap_Records[i].Time_MONTH_DAY_HH_MM[0]	= (Cap_Oil.Time_MONTH<<24)|(Cap_Oil.Time_DAY<<16)|(Cap_Oil.Time_HH<<8)|(Cap_Oil.Time_MM);
		Cap_Records[i].CLRSTAT_Time_YEAR[0]		= (Cap_Oil.Time_YEAR<<8)|(Cap_Oil.Time_DAY_OF_WEEK);

		Cap_Records[i].Watercut[1]				= Cap_Water.Watercut;
		Cap_Records[i].Temperature[1]			= Cap_Water.Temperature;
		Cap_Records[i].Salinity[1]				= Cap_Water.Salinity;
		Cap_Records[i].Frequency_Oil[1]			= Cap_Water.Frequency_Oil;
		Cap_Records[i].Frequency_Water[1]		= Cap_Water.Frequency_Water;
		Cap_Records[i].RefPower_Oil[1]			= Cap_Water.RefPower_Oil;
		Cap_Records[i].RefPower_Water[1]		= Cap_Water.RefPower_Water;
		Cap_Records[i].Dadj[1]					= Cap_Water.Dadj;
		Cap_Records[i].Time_MONTH_DAY_HH_MM[1]	= (Cap_Water.Time_MONTH<<24)|(Cap_Water.Time_DAY<<16)|(Cap_Water.Time_HH<<8)|(Cap_Water.Time_MM);
		Cap_Records[i].CLRSTAT_Time_YEAR[1]		= (Cap_Water.Time_YEAR<<8)|(Cap_Water.Time_DAY_OF_WEEK);
	}

	Port_Defaults(TRUE);

	CHANGE = TRUE;	// This triggers the save button on the IDEC

	/* Setup Diagnositcs */
	DIAGNOSTICS_MASK[0] 	= 0xFFFF;
	DIAGNOSTICS_MASK[1] 	= 0xFFFF;
	DIAGNOSTICS[0] 			= ERROR_RESET_BASICS;
	DIAGNOSTICS[1] 			= ERROR_NONE;
	DIAGNOSTICS_MSG_CODE	= M_ERROR_RESET;
	DIAGNOSTICS_ERROR_CODE 	= E_ERROR_NONE;

	/* Diagnostics - 0 */
	VAR_Initialize(&REG_DIAG[0], c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_bound|var_no_alarm|var_round);
	sprintf(REG_DIAG[0].name, "Diagnostics");	//R329
	REG_DIAG[0].name_r = 329;
	VAR_Update(&REG_DIAG[0], DIAGNOSTICS[0], 0, 0);

	/* Extended Diagnostics - 0 */
	VAR_Initialize(&REG_DIAG[1], c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_bound|var_no_alarm|var_round);
	sprintf(REG_DIAG[1].name, "Extended Diagnostics");	//R330
	REG_DIAG[1].name_r = 330;
	VAR_Update(&REG_DIAG[1], DIAGNOSTICS[1], 0, 0);

	/* Error Code Diagnostics - 0 */
	VAR_Initialize(&REG_DIAG[2], c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_bound|var_no_alarm|var_round);
	sprintf(REG_DIAG[2].name, "Error Code");	//R331
	REG_DIAG[2].name_r = 331;
	VAR_Update(&REG_DIAG[2], DIAGNOSTICS_ERROR_CODE, 0, 0);

	/* Message Code Diagnostics - 0 */
	VAR_Initialize(&REG_DIAG[3], c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_bound|var_no_alarm|var_round);
	sprintf(REG_DIAG[3].name, "Message Code");	//R332
	REG_DIAG[3].name_r = 332;
	VAR_Update(&REG_DIAG[3], DIAGNOSTICS_MSG_CODE, 0, 0);

	/* HART Diagnostics - 0 */
	VAR_Initialize(&REG_DIAG[4], c_not_classified, u_mfgr_specific_none, 1.0, 1.0, var_no_bound|var_no_alarm|var_round);
	sprintf(REG_DIAG[4].name, "HART Response Code");	//R333
	REG_DIAG[4].name_r = 333;
	VAR_Update(&REG_DIAG[4], 0, 0, 0);
    
	ENABLE_WDOG;
	GIEP;
}
