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
/* File Name: MAIN.C						    							*/
/* 									    									*/
/* File Description:  These functions run at initialization which occurs in */
/* the boot.asm file.  The main program entry actually occurs at c_int00.	*/
/* Main() just has a few functions that run to keep the execution of the	*/
/* program tidy while the TINT0 controls the actual runtime environement.	*/
/*									    									*/
/****************************************************************************/
#define MAIN_H                                                                                  
//#define RUSS_TRANSLATION_ENABLED

#include "GLBLS.H"

void Make_Russian_Line(char code[], char out_str[]);

extern unsigned int INT0;

/****************************************************************************/
/* DEBUG																	*/
/*                                                                          */
/* Description: Used to debug in some way.                                  */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Dunno why this was included, could be used in a capacity to	*/
/* 				debug by including body code and calling in strategic places*/
/*                                                                          */
/****************************************************************************/
void Debug(void);
void Debug(void)
{ }

/****************************************************************************/
/* Initialize Variables														*/
/*                                                                          */
/* Description: Initializes global variables                                */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Called in Initialize_Hardware                               */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(Initialize_Variables,"initialization")
void Initialize_Variables(void)
{
	int i,r;	/* counter; restore config successful 	*/
	int port;	/* not used 							*/

    r = 0;

	InitLog();

    if (MEM)
    	Setup_Basics();
    else
    	r = Restore_CFG();
	
	DISABLE_WDOG;	/* restore & basics re-enables WDOG */

	if (r)
	{
		DIAG_TEMP[0] 			= ERROR_NONE;
		DIAG_TEMP[1] 			= ERROR_NONE;
		DIAGNOSTICS[0] 			= ERROR_RESET;
		DIAGNOSTICS[1] 			= ERROR_NONE;
		DIAGNOSTICS_MSG_CODE 	= M_ERROR_RESET;
		DIAGNOSTICS_ERROR_CODE 	= E_ERROR_NONE;
		CHANGE 					= FALSE;
		DATA_CHANGE.val 		= FALSE;
	}
	
	sprintf(E_STRING,"");
 	Execute_Init();

	{/* OIT Setup */
		IDEC_PORT = 6;

		for (i=0;i<13;i++)
		{
			IDEC_SA[i].val  = 0;
            IDEC_SA[i].vect = NULL_PTR;
		}

		IDEC_SA[1].val 		= 0x0081;				/* turn on backlight and screen display */
        IDEC_SA[0].val 		= SCREEN_LOGO;			/* set screen */
  		IDEC_SA[7].vect 	= (int*)Set_Time;
 		IDEC_SA[12].vect 	= (int*)Set_IDEC_Port;
	}

	FLASH_READ_ESN_MFGR(ESN_MFGR);
	FLASH_READ_ESN_USER(ESN_USER);
    
	LOCKOUT 			 	= FALSE;	/* Setup Locks */
	DIO_LOCK[1].val 	 	= TRUE;
	DIO_LOCK[2].val 	 	= TRUE;
	DIO_LOCK[3].val 	 	= TRUE;
    RESEARCH_FORCE_MODE  	= FALSE;    /* Disable Research Mode */
 	SAMPLE_PENDING 		 	= FALSE;    /* No Pulse Sample Pending for Poll */
 	SN_PIPE 			   &= 0xFFFFFF;
 	DUMMY 				 	= 0;
    PORT2_LIQ_TEMP		 	= 0;		/***disconnetion detect RS***/
    PORT2_GAS_TEMP		 	= 0;
    PORT3_TEMP			 	= 0;     
    MM_LIQ_fail.val 	 	= TRUE;
    MM_GAS_fail.val 	 	= TRUE;         
    Rosemount_fail.val	 	= TRUE;  
    DIO_ERROR.val 		 	= FALSE;
	DIO_ALARM.val 	 	 	= FALSE;
 	DIO_SYSTEM_RESET.val 	= FALSE;
	DIO_BUILT_IN_TEST.val 	= FALSE;
	DIO_BEEP.val 			= FALSE;
    DIO_uP_GET.val 			= FALSE;
	DIO_uP_SET.val 			= FALSE;
	DIO_COMM_GET.val 		= FALSE;
	DIO_COMM_SET.val 		= FALSE;
	DIO_POWER_GET.val 		= FALSE;
	DIO_POWER_SET.val 		= FALSE;
	DIO_DISPLAY_GET.val 	= FALSE;
	DIO_DISPLAY_SET.val 	= FALSE;
	DIO_MOTHERBOARD_GET.val = FALSE;
	DIO_MOTHERBOARD_SET.val = FALSE;
	DIO_ANALYZER_GET.val 	= FALSE;
	DIO_ANALYZER_SET.val 	= FALSE;
	DIO_ANALOGIO_GET.val 	= FALSE;
	DIO_ANALOGIO_SET.val 	= FALSE;
 	DIO_PV_PERCMASS 		= FALSE;
 	LED_GREEN 				= FALSE;

	/* force re-initialization to update OSC_OIL/WATER_CALC frequency bounds on REG_FREQ[] */
	VAR_Update(&REG_FREQ_OIL_LO, 		REG_FREQ_OIL_LO.val, 		0, 0);
	VAR_Update(&REG_FREQ_OIL_HI, 		REG_FREQ_OIL_HI.val, 		0, 0);
	VAR_Update(&REG_FREQ_WATER_LO, 		REG_FREQ_WATER_LO.val, 		0, 0);
	VAR_Update(&REG_FREQ_WATER_HI, 		REG_FREQ_WATER_HI.val, 		0, 0); 
	//VAR_Update(&REG_LOWSALT_THRESHOLD, 	REG_LOWSALT_THRESHOLD.val, 	0, 0);               /*RS*/
	/* force re-initialization to update OSC_OIL/WATER_CALC frequency bounds on REG_FREQ[] */
	
	//required for subversion-nonsubversion compatibilty with IDEC HMI
	//prevents IDEC screen freezing, the idea being that it virtually impossible for 
	//lowsalt threshold to randomly be exactly 123.0000000
	EXTENDED_FW_VERSION_ENABLE.val 		= 123.0; 
	EXTENDED_FW_VERSION_ENABLE.calc_val = 123.0;
	
	if (DIPSW1) 
		DIPSWITCH[0] = FALSE;
	else 
		DIPSWITCH[0] = TRUE;

	if (DIPSW2) 
		DIPSWITCH[1] = FALSE;
	else 
		DIPSWITCH[1] = TRUE;

	REG_TIME 			 = 0; 
	
	/*AVG TEMP RS*/
	N_TEMP 				 = 0;	
	SUM_TEMP 			 = 0;
	AVG_TEMP 			 = 0;
	/*AVG TEMP RS*/
	
	/*phase hold over RS*/	
	cycles 				 = 0;	
	previous_phase 		 = 0;
	phase				 = 0;
	phase_rollover_count = 0;	
	/*phase hold over RS*/  

	/*average filter RS*/	
	N_WC 				 = 1;	
	WC_SUM 				 = 0;
	/*average filter RS*/	
	
	for (i=0;i<31;i++)           
		WC_SAMPLE[i] = 0;    /*average filter RS*/
	
	/*******Temperature & Freq statistics trigger Hsalt recalc*******/	
	N_FREQ 					= 1;	/* Frequency */
	HSALT_FREQ_TRIGGER.val  = TRUE;
	
	//VAR_Update(&REG_FREQ_WINDOW, 		30.0, 0, 0);
	VAR_Update(&REG_FREQ_VARIANCE_RATIO, 1.5, 0, 0);
	
	TEMP_SAMPLE 			= 0;	/* Temperature */
	LAST_TEMP_RESET 		= TEMP_SAMPLE;
	HSALT_TEMP_TRIGGER.val 	= FALSE;
	   
	//VAR_Update(&REG_DELTA_TEMP, 		3.0,  0, 0);
	/*******Temperature & Freq statistics trigger Hsalt recalc*******/
    
    /***************Correction for gas carry under RS***************/
	GAS_ENTRAINED_DENS_DETECT.val = FALSE; 
	
	gas_routine_reset_needed = TRUE;
	boxcar_reset_needed = TRUE;
	if ( (ANALYZER_MODE.val & 0xFF) != SUB_CCM )
	{
		REG_WATERCUT_DENSITY.STAT |= var_no_alarm;
	}
	
    /***************Correction for gas carry under RS***************/    
    
    /*Add are you sure screens for LCD RS*/
	TRIM_RTD_LO = FALSE;
	TRIM_RTD_HI = FALSE;      
	
	/*new salt cal routine manual stop RS*/
	CAP_WATER_STOP.val 	= FALSE; 
	CAP_OIL_STOP.val 	= FALSE;
    
 	/* process variable averaging */
	Clear(&PV_SAMPLES);
	Clear(&PV_SAMPLES_24hr);
	Clear(&PV_SAMPLES_5min);
	
	PV_SAMPLES.sum 		= 0x80000000;		/* force to float 0.0 */
	PV_SAMPLES_24hr.sum = 0x80000000;	/* force to float 0.0 */
	REG_PV_AVG_24hr 	= 0.0;
	PV_SAMPLES_5min.sum = 0x80000000;	/* force to float 0.0 */
	REG_PV_AVG_5min 	= 0.0;
	REG_PV_AVG_1sec 	= 0.0;
	REG_PV_AVG_CNT 		= 0;
	/* process variable averaging */

	Mirror_From_Stream_Table(NULL_VAR);

	WC 						= 0.0;     /*make WC global: float WC; for store last value when phase error RS*/
	REG_WATERCUT_RAW 		= 0.0;
	REG_CAL_OIL.calc_val 	= 0.0;
	REG_CAL_OIL.val 		= 0.0;
	REG_CAL_WATER.calc_val 	= 0.0;
	REG_CAL_WATER.val	 	= 0.0;
	
	VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);
	VAR_NaN(&REG_WATERCUT);
	VAR_NaN(&REG_TEMPERATURE_USER);
	VAR_NaN(&REG_TEMPERATURE_AVG);/*RS*/
	VAR_NaN(&REG_TEMPERATURE_EXTERNAL);
	VAR_NaN(&REG_DUMMY);

	/* setup var_select */
	VAR_SELECT_DVIN.val 	= 0;
	VAR_SELECT_DVIN.vect 	= (int*)VAR_SET_STR_DVIN;
	VAR_SELECT_DV.val 		= 0;
	VAR_SELECT_DV.vect 		= (int*)VAR_SET_STR_DV;
	
	VAR_SET_STR_DV(0);
	/* setup var_select */

	for (i=0;i<AO_NLOOPS;i++)
	{/* allow user to save current	*/
		VAR_NaN(&AO[i].CURRENT_PERCENT_OF_RANGE);
		PID_Init(i);
	}

	for (i=0;i<AI_NLOOPS;i++)
	{
		VAR_NaN(&AI[i].VALUE);
		VAR_NaN(&AI[i].CURRENT);
		VAR_NaN(&AI[i].CURRENT_PERCENT_OF_RANGE);
		
		AI[i].val = NaN_val_flt;
	}

	i_CCM_Level_Setpoint 	= 0;
	i_CCM_Level 			= 0;
	i_CCM_Pressure_Setpoint = 0;
	i_CCM_Pressure 			= 0;
	i_CCM_Gas_Valve 		= 0;
	i_CCM_Liquid_Valve 		= 0;
	i_CCM_Flow 				= 0;
	i_CCM_Flow_Oil 			= 0;
	i_CCM_Flow_Water 		= 0;
	i_CCM_Flow_Gas 			= 0;
	CCM_24_GAS 				= 0.0;
	CCM_24_TOTAL 			= 0.0;
	CCM_24_OIL 				= 0.0;
	CCM_24_WATER 			= 0.0;
	CCM_REMAINING 			= 0.0;
	CCM_REMAINING_S 		= 0.0;
	CCM_ELAPSED_S 			= 0.0;
	DIO_CCM_START.val 		= FALSE;
	DIO_CCM_PURGE_STAT.val 	= FALSE;   
	REG_CCM_TEST_STAT.val 	= 0;  /*logging test status RS*/
	REG_CCM_PURGE_STAT.val 	= 0; /*logging purge status RS*/
	
	VAR_NaN(&CCM_GAS_FLOW);
	VAR_NaN(&CCM_GAS_TOTAL);
	VAR_NaN(&CCM_VESSEL_LEVEL[0]);
	VAR_NaN(&CCM_VESSEL_LEVEL[1]);
	VAR_NaN(&CCM_VESSEL_PRESSURE[0]);
	VAR_NaN(&CCM_VESSEL_PRESSURE[1]);
	CLEAR_TIME(&CCM_TIME_START);
	CLEAR_TIME(&CCM_TIME_STOP);
	CLEAR_TIME(&CCM_TIME_REMAINING);
	CLEAR_TIME(&CCM_TIME_ELAPSED);

	for (i=0;i<VTMAX;i++)
	{
		VAR_NaN(&REG_VINC[i]);
		VAR_NaN(&REG_VREF[i]);
		VAR_NaN(&REG_FREQ[i]);
		VAR_NaN(&REG_VTUNE[i]);
		
		TMP_VINC[i]  = -1;
		TMP_VREF[i]  = -1;
		TMP_FREQ[i]  = -1;
		TMP_VTUNE[i] = -1;
	}
	
	VAR_NaN(&REG_VINC_O);
	VAR_NaN(&REG_VREF_O);
	VAR_NaN(&REG_FREQ_O);
	VAR_NaN(&REG_VINC_W);
	VAR_NaN(&REG_VREF_W);
	VAR_NaN(&REG_FREQ_W);

	FREQ_O 		= 0.0;  /* Oil oscillator frequency */
	IP_O 		= 0.0;
	RP_O 		= 0.0;
	IP_RP_O 	= 0.0;
	DB_IP_RP_O 	= 0.0;
	FREQ_W 		= 0.0;	/* Water oscillator frequency */
	IP_W 		= 0.0;
	RP_W 		= 0.0;
	IP_RP_W 	= 0.0;
	DB_IP_RP_W 	= 0.0;
	i_FREQ_O 	= 0.0;
	i_IP_O 		= 0.0;
	i_RP_O 		= 0.0;
	i_FREQ_W 	= 0.0;
	i_IP_W 		= 0.0;
	i_RP_W 		= 0.0;
	i_TEMP 		= 0.0;
	i_WC 		= 0.0;

	compatibility_dummy = 0.0;
	
	//RUSS_TBL_LEN = Find_Russ_Tbl_Len();
	
	for (i=0;i<30;i++)
	{
		i_LV[i] 	= 0;
		il_LV[i] 	= 0;
		f_LV[i] 	= 0;
	}

	for (i=0;i<CORMAX;i++)
	{/* Micromotion variable initialization */
		COR[i].diag = 0;
		COR[i].mfr = 0;
		COR[i].density = 0;
        
        /* COR[].damp_flow_rate = 0.0 */
		VAR_Initialize(&COR[i].damp_flow_rate, c_time, u_time_sec, 100.0, 100.0, var_no_alarm|var_no_bound);
		sprintf(COR[i].damp_flow_rate.name, "COR%i Dampen Flow", i+1);
		COR[i].damp_flow_rate.aux = (i<<16)|(189);
		VAR_Update(&COR[i].damp_flow_rate, 0.0, 0, 0);
		COR[i].damp_flow_rate.vect2 = (int*)CORIOLIS_CFG;
        
        /* COR[].damp_density = 0.0 */
		VAR_Initialize(&COR[i].damp_density, c_time, u_time_sec, 100.0, 100.0, var_no_alarm|var_no_bound);
		sprintf(COR[i].damp_density.name, "COR%i Dampen Density", i+1);
		COR[i].damp_density.aux = (i<<16)|(193);
		VAR_Update(&COR[i].damp_density, 0.0, 0, 0);
		COR[i].damp_density.vect2 = (int*)CORIOLIS_CFG;
        
        /* COR[].mfr_cutoff = 0.0 */
		VAR_Initialize(&COR[i].mfr_cutoff, c_mass_flow, u_generic_none, 100.0, 1000.0, var_no_alarm|var_no_bound);
		sprintf(COR[i].mfr_cutoff.name, "COR%i MFR Cutoff", i+1);
		COR[i].mfr_cutoff.aux = (i<<16)|(195);
		VAR_Update(&COR[i].mfr_cutoff, 0.0, 0, 0);
		COR[i].mfr_cutoff.vect2 = (int*)CORIOLIS_CFG;
        
        /* COR[].vfr_cutoff = 0.0 */
		VAR_Initialize(&COR[i].vfr_cutoff, c_volumetric_flow, u_generic_none, 100.0, 1000.0, var_no_alarm|var_no_bound);
		sprintf(COR[i].vfr_cutoff.name, "COR%i VFR Cutoff", i+1);
		COR[i].vfr_cutoff.aux = (i<<16)|(197);
		VAR_Update(&COR[i].vfr_cutoff, 0.0, 0, 0);
		COR[i].vfr_cutoff.vect2 = (int*)CORIOLIS_CFG;
        
        /* COR[].mcf = 1.0 */
		VAR_Initialize(&COR[i].mcf, c_mass_flow, u_generic_none, 100.0, 100000.0, var_no_alarm|var_no_bound);
		sprintf(COR[i].mcf.name, "COR%i MCF", i+1);
		COR[i].mcf.aux = (i<<16)|(237);
		VAR_Update(&COR[i].mcf, 1.0, 0, 0);
		COR[i].mcf.vect2 = (int*)CORIOLIS_CFG;
        
        /*COR[].address = 1.0 - MM initial Slave address config RS*/
        VAR_Initialize(&COR[i].address, c_not_classified, u_generic_none, 1.0, 1.0, var_no_alarm|var_round);
		sprintf(COR[i].address.name, "COR%i Address", i+1);
		COR[i].address.aux = (i<<16)|(313);
		VAR_Update(&COR[i].address, 1.0, 0, 0);
		COR[i].address.vect2 = (int*)CORIOLIS_INT_CFG;      /*CORIOLIS_INT_CFG instead of CORIOLIS_CFG RS*/ 
		
		/*COR[].mass_unit = 86 - Config mass flow unit RS*/
		VAR_Initialize(&COR[i].mass_unit, c_not_classified, u_generic_none, 1.0, 1.0, var_no_alarm|var_no_bound);
		sprintf(COR[i].mass_unit.name, "COR%i Mass Flow Unit", i+1);
		COR[i].mass_unit.aux = (i<<16)|(39);
		/*VAR_Update(&COR[i].mass_unit, 86.0, 0, 0);*/
		COR[i].mass_unit.vect2 = (int*)CORIOLIS_INT_CFG;
		
		/*COR[].density_cutoff = 0.0 - Config density cutoff RS*/        
		VAR_Initialize(&COR[i].density_cutoff, c_not_classified, u_generic_none, 100.0, 1000.0, var_no_alarm|var_no_bound);
		sprintf(COR[i].density_cutoff.name, "COR%i Density Cutoff", i+1);
		COR[i].density_cutoff.aux = (i<<16)|(149);
		VAR_Update(&COR[i].density_cutoff, 0.0, 0, 0);
		COR[i].density_cutoff.vect2 = (int*)CORIOLIS_CFG;
        		
		COR[i].u_density 				= u_mpv_kg_cm;
		COR[i].density_corrected 		= API_error_num;
		COR[i].density_PDI_corrected 	= 0;
		COR[i].u_density_corrected 		= u_mpv_deg_API_60F;
		COR[i].u_P 						= u_p_psi;
		COR[i].P 						= 0;
		COR[i].T 						= 0;
		COR[i].u_T 						= u_temp_F;
		COR[i].vfr 						= 0;
		COR[i].visc 					= 0;
		COR[i].press 					= 0;
		COR[i].mass_total 				= 0;
		COR[i].volume_total 			= 0;
		COR[i].mass_inv 				= 0;
		COR[i].volume_inv 				= 0;
		COR[i].raw_tube_freq 			= 0;
		COR[i].left_pickup_value 		= 0;
		COR[i].right_pickup_value 		= 0;
		COR[i].drive_gain 				= 0;
		COR[i].u_v 						= u_generic_unknown;
		COR[i].u_vfr 					= u_generic_unknown;
		COR[i].u_visc 					= u_generic_unknown;
		COR[i].u_m 						= u_generic_unknown;
		COR[i].u_mfr 					= u_generic_unknown;
		COR[i].Z.val 					= 0;
	}
	
	COR[0].Z.vect  = (int*)CORIOLIS_ZERO1;
	COR[1].Z.vect  = (int*)CORIOLIS_ZERO2;
	COR[2].Z.vect  = (int*)CORIOLIS_ZERO3;
	COR[3].Z.vect  = (int*)CORIOLIS_ZERO4;  
	COR[0].Z.vect2 = NULL_PTR; 				/*define .vect2 for ZERO coil or sys freeze RS*/
	COR[1].Z.vect2 = NULL_PTR;
	COR[2].Z.vect2 = NULL_PTR;
	COR[3].Z.vect2 = NULL_PTR;

	for (i=0;i<FCMAX;i++)
	{/* Flow Computer Initialization */
		/* Pressure vector initialization */
		PRESS[i].u_DP 		= u_p_in_H2O_60F;	
		PRESS[i].u_SP 		= u_p_psi;
		PRESS[i].u_PT 		= u_temp_F;
		PRESS[i].p_delta 	= 0;
		PRESS[i].p_static 	= 0;
		PRESS[i].T 			= 0;
		PRESS[i].diag0 		= 0;
		PRESS[i].diag1 		= 0;
		PRESS[i].diag2 		= 0;
        /* Pressure vector initialization */
        
		TMPTRANS[i].T 	 				= 0;
		TMPTRANS[i].etc0 				= 0;
		TMPTRANS[i].etc1 				= 0;
		TMPTRANS[i].etc2 				= 0;
		TMPTRANS[i].etc3 				= 0;
		TMPTRANS[i].etc4 				= 0;
        FC[i].Dadj 						= 0;	/* Adjusted Density */
		FC[i].PULSE_STAT 				= 0;
		FC[i].net_watercut 				= 0.0;
		FC[i].net_watercut_mass 		= 0.0;
		FC[i].density_PDI_corrected 	= API_error_num;
		
		VAR_NaN(&FC[i].PULSE_FREQ);
		
		if (FC[i].USE_PDI_SALINITY || !FC[i].MAN_SALINITY) 
			VAR_NaN(&FC[i].salinity);
		
		if (USE_PDI_WATERCUT.val || CALC_WC_DENSITY.val || !FC[i].MAN_WATERCUT) 
			VAR_NaN(&FC[i].watercut);
		
		if (!FC[i].MAN_PRESSURE) 
			VAR_NaN(&FC[i].pressure);
		
		if (FC[i].USE_PDI_TEMP || !FC[i].MAN_TEMP) 
			VAR_NaN(&FC[i].T);
		
		if (!FC[i].MAN_FLOW) 
			VAR_NaN(&FC[i].FLOW_TOTAL);
		
		VAR_NaN(&FC[i].FLOW_WATER);
		VAR_NaN(&FC[i].FLOW_OIL);
		VAR_NaN(&FC[i].GROSS_TOTAL);
		VAR_NaN(&FC[i].GROSS_WATER);
		VAR_NaN(&FC[i].GROSS_OIL);
		VAR_NaN(&FC[i].NET_FLOW_TOTAL);
		VAR_NaN(&FC[i].NET_FLOW_WATER);
		VAR_NaN(&FC[i].NET_FLOW_OIL);
		VAR_NaN(&FC[i].NET_TOTAL);
		VAR_NaN(&FC[i].NET_WATER);
		VAR_NaN(&FC[i].NET_OIL);
		
		//accumulated whole number component of gross oil
		FC[i].gross_oil_whole_part		= floor(FC[i].GROSS_OIL.calc_val);								
		
		//accumulated fractional component of gross oil
		FC[i].gross_oil_fract_part		= FC[i].GROSS_OIL.calc_val - floor(FC[0].GROSS_OIL.calc_val);	
		
		//accumulated whole number component of gross water
		FC[i].gross_water_whole_part	= floor(FC[i].GROSS_WATER.calc_val);	
		
		//accumulated fractional component of gross water
		FC[i].gross_water_fract_part	= FC[i].GROSS_WATER.calc_val - floor(FC[0].GROSS_WATER.calc_val);	
	}
	
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
	
	
	//ALFAT INIT
	ALFAT_STATUS_REG = 0x0;
	ALFAT_INIT_ALL = FALSE;
	ALFAT_APPEND_LF = FALSE;
	PORT[5].pvector_main = NULL_PTR;
	
	for (i=0;i<ALFAT_RX_MAX_SIZE;i++)
	{
		ALFAT_RX[i] = 0;		
	}

	DEMO_Init(&DEMO_ANALYZER_MODE);
}

/****************************************************************************/
/* INITIALIZE HARDWARE														*/
/*                                                                          */
/* Description: Initializes the hardware.                                   */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       This is the first thing that is called in boot.asm          */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(Initialize_Hardware,"initialization")
void Initialize_Hardware(void)
{	
	unsigned int i,j;	/* counters 						*/
	unsigned int* s;	/* branch table start 				*/
	unsigned int* d;	/* program start address 			*/
	char code_line[41];
	char out_str[21];
	float	fw;			/* firmware version 				*/
	int		hwu,hwl;	/* hardware upper byte; lower byte 	*/

	_GIE;
	DISABLE_WDOG;
	HW_VER  = *XHW_VER & 0xFF;

	if (HW_VER&0x80) 
		SA = TRUE;
	else 
		SA = FALSE;

	if (SA)
	{
		if (HW_VER>=0xB7)
			SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_EEA;
		else
			SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_SA;
	}
	else
		SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_EEA;
	
	*PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);	/* ws=5 for 90ns flash, or RDY */
	DISABLE_BOOTINT;
	CLEAR_INT_MASK;
	CLEAR_INT_PEND;
	INITIALIZING = TRUE;
	XFINIT_OUTPUT;
	CACHE_ENABLE;
	DISABLE_EXTINT0;
	DISABLE_EXTINT1;
	DISABLE_EXTINT2;
	DISABLE_EXTINT3;
	
	/* copy BR Table to the BRTABLE memory area */
	s = &INT0;
	d = (unsigned int*) 0x00809FC1;
	
	for (i=0;i<0x3F;i++)
		d[i] = s[i];
	/* copy BR Table to the BRTABLE memory area */

	d = (unsigned int*) &c_int00;
	s = (unsigned int*) FLASH_LOC;

	if ( (d >= s) && (d < (s + FLASH_MAX_SIZE)) )
		MEM = FALSE;
	else
		MEM = TRUE;
	
	RELAY1_OFF;
	RELAY2_OFF;
	CLOCK = CLOCK_DEFAULT;

	LCD_INIT();

	/* initialize the LCD module */
	for (i=0;i<4;i++)
	{
		for (j=0;j<101;j++)
			LCD_DISPLAY[i][j] = 0x20;
	}

	hwu = (HW_VER & 0x0078)>>3;
	hwl = HW_VER & 0x0007;
	fw 	= FIRMWARE_VERSION/100.0;
	i 	= FIRMWARE_SUBVERSION;
	

	/* initialize the LCD module */

#ifndef RUSS_TRANSLATION_ENABLED
	sprintf(LCD_DISPLAY[0],"Phase Dynamics, Inc.");	//R87
	sprintf(LCD_DISPLAY[1],"Initializing Data...");	//R378
	sprintf(LCD_DISPLAY[2],"HW Version:    %2d.%02d", hwu, hwl);	//R377		
	sprintf(LCD_DISPLAY[3],"FW Version:  %4.2f.%02i", fw, i);	//R375
#endif
/*
#else
	if(RUSS)
	{
		sprintf(code_line,"48A8A82022A14B4322"); //R87
		Make_Russian_Line(code_line, out_str);
		sprintf(LCD_DISPLAY[0],"%s",out_str);

		sprintf(code_line,"A461B47079B7BA6120E061BDBDC3782E2E2E"); //R378
		Make_Russian_Line(code_line, out_str);
		sprintf(LCD_DISPLAY[1],"%s",out_str);
		
		
		sprintf(code_line,"42657063B8C72041BE4F"); //R377
		Make_Russian_Line(code_line, out_str);
		sprintf(LCD_DISPLAY[2],"%s:    %2d.%02d", out_str, hwu, hwl);	//R377


		sprintf(code_line,"42657063B8C720A84F"); //R375
		Make_Russian_Line(code_line, out_str);
		sprintf(LCD_DISPLAY[3],"%s:      %4.2f", out_str, fw);	//R375
	}
	else
	{
		sprintf(LCD_DISPLAY[0],"Phase Dynamics, Inc.");	//R87
		sprintf(LCD_DISPLAY[1],"Initializing Data...");	//R378
		sprintf(LCD_DISPLAY[2],"HW Version:    %2d.%02d", hwu, hwl);	//R377		
		sprintf(LCD_DISPLAY[3],"FW Version:  %4.2f.%02i", fw, i);	//R375
	}
#endif
*/

	LCD_PAGE();
	MENU_INIT();
	Initialize_Variables();
	
#ifndef RUSS_TRANSLATION_ENABLED
	switch (ANALYZER_MODE.val)
	{
		case SUB_LOW:		sprintf(LCD_DISPLAY[1]," Low Range Analyzer "); break;
		case SUB_MID:		sprintf(LCD_DISPLAY[1]," Mid Range Analyzer "); break;
		case SUB_HIGH:		sprintf(LCD_DISPLAY[1],"High Range Analyzer "); break;
		case SUB_FULL:		sprintf(LCD_DISPLAY[1],"Full Range Analyzer "); break;
		case SUB_CCM:		sprintf(LCD_DISPLAY[1],"  CCM Application   "); break;
		case SUB_ANALYZER:	sprintf(LCD_DISPLAY[1],"      Analyzer      "); break;
		default: break;
	}
#else
	if(RUSS)
	{
		switch (ANALYZER_MODE.val)
		{
			case SUB_LOW:		
				sprintf(code_line,"48B8B72EE0B861BE2E42BB61B46FBC6570"); //R380
				Make_Russian_Line(code_line, out_str);
				sprintf(LCD_DISPLAY[1],"%s",out_str);
				break;	
			case SUB_MID:		
				sprintf(code_line,"4370E32EE0B861BE2E42BB61B46FBC6570"); //R381
				Make_Russian_Line(code_line, out_str);
				sprintf(LCD_DISPLAY[1],"%s",out_str);
				break;	
			case SUB_HIGH:		
				sprintf(code_line,"426570782EE0B861BE2E42BB61B46FBC6570"); //R376
				Make_Russian_Line(code_line, out_str);
				sprintf(LCD_DISPLAY[1],"%s",out_str);
				break;	
			case SUB_FULL:		
				sprintf(code_line,"A86FBBBD2EE0B861BE2E42BB61B46FBC6570"); //R374
				Make_Russian_Line(code_line, out_str);
				sprintf(LCD_DISPLAY[1],"%s",out_str);
				break;	
			default: break;
	}
	else
	{
		case SUB_LOW:		sprintf(LCD_DISPLAY[1]," Low Range Analyzer "); break;
		case SUB_MID:		sprintf(LCD_DISPLAY[1]," Mid Range Analyzer "); break;
		case SUB_HIGH:		sprintf(LCD_DISPLAY[1],"High Range Analyzer "); break;
		case SUB_FULL:		sprintf(LCD_DISPLAY[1],"Full Range Analyzer "); break;
		case SUB_CCM:		sprintf(LCD_DISPLAY[1],"  CCM Application   "); break;
		case SUB_ANALYZER:	sprintf(LCD_DISPLAY[1],"      Analyzer      "); break;
		default: break;
	}
#endif

	LCD_PAGE();
	RTC_setup();
	Setup_Timer(0, 11.0/(2.0*115200.0));
	Setup_Timer(1, 0);
	VAR_DAMP_Init(0);
	Initialize_Periodic_Events();
	Setup_Serial_Port0();

	for (i=0;i<ADC_MAX;i++)
		Setup_ADC(i);
	
	for (i=0;i<DAC_MAX;i++)
		Setup_DAC(i);
	
	if ((REG_TEMPERATURE_EXTERNAL.unit & 0xFF) == u_temp_C)
		DIO_TEMP_C.val = TRUE;
	else
		DIO_TEMP_C.val = FALSE;

	if (DIO_BUILT_IN_TEST_ENABLE.val)
		Self_Test_FULL();
	
	/* enable automatic pulse capture timer */
	ENABLE_EXTINT1;
	ENABLE_INT1;
	CLEAR_INT1;
	/* enable automatic pulse capture timer */

	ENABLE_IRDA; //enable IrDA (USB)

	if (LOG_STATUS == ALFAT_CONTINUE_LOG)
	{
		Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_replace);
	}
	
	Port_Defaults(FALSE);
	Disable_Heater();

	/* increment the RESET_COUNTER */
	RESET_COUNTER++;
	Write_CFG_USER();
	/* increment the RESET_COUNTER */

	if (!DEMO) 
		Clear_Accumulators(0);

	/* setup oscillator */
	VT_SELECT 	= 0;
	OSWITCH 	= 1;
	SELECT_LOAD_EXT;

	if (EXTUNE)
	{
		VAR_Update(&REG_DAC[DAC_VTUNE], REG_VTUNE_SET[VT_SELECT].calc_val, 0, 0);
		VAR_Update(&REG_DAC[DAC_TUNESEL], 5.0, 0, 0);
	}
	else
	{
		VAR_Update(&REG_DAC[DAC_VTUNE], 0.0, 0, 0);
		VAR_Update(&REG_DAC[DAC_TUNESEL], 0.0, 0, 0);
	}

	if (!SA) 
		Write_DAC(DAC_TUNESEL);
	
	Write_DAC(DAC_VTUNE);
	Set_Research_Mode();		/* start sampling */
	/* setup oscillator */

	if (MEM) 
		Debug();

	ENABLE_WDOG;
	INITIALIZING = FALSE;
	GIE;
}

void Make_Russian_Line(char code[], char out_str[])
{
	int i;
	long int l_code_val;
	unsigned char code_val;
	char c[3];
	
	sprintf(out_str,"                    "); //clear string

	c[2] = NULL;
	
	for(i=0;i<40;i=i+2) // LCD: 20-length line = 40-length character code
	{
		c[0] = code[i];
		if (c[0] == NULL) //end of string - null terminated
			break;
		
		c[1] = code[i+1];
		if (c[1] == NULL) //end of string - null terminated
			break;
		
		l_code_val = strtol(c,NULL,16); //read in 2-char string as 2-digit hex
		
		if (l_code_val > 0xFF) //error checking
			break;
		code_val = (unsigned char)l_code_val; //long char -> u_char
		
		out_str[i/2] = code_val; //this character string now has non-ascii characters
	}
	
	out_str[20] == NULL;  //append null after padding
}

/****************************************************************************/
/* MAIN																		*/
/*                                                                          */
/* Description: Main function loop.                                         */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     N/A                                                         */
/*                                                                          */
/* Notes:       This is the default execution loop.  It actually has very	*/
/*				little to do with the normal execution of the program.  The	*/
/*				TINT0 which runs every clock cycle actually hold the		*/
/*				description of the runtime environment.                     */
/*                                                                          */
/****************************************************************************/
#pragma CODE_SECTION(main,"internal_RAM")
main()
{
	while (TRUE)
	{
		TICKLE_WATCHDOG;
		
		LCD_PAGE();
		Execute();
	}
}
