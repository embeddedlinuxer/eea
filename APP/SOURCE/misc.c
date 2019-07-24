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
/* File Name: MISC.C						    							*/
/* 									    									*/
/* File Description:							    						*/
/*									    									*/
/****************************************************************************/
#define MISC_H                                                                     
#include "GLBLS.H"
#include "MISC.H"

void Poll(void)
{   
	#define			rollover 1   
 
	int 			ot_index;
	int 			cf_index;   
    unsigned int	WC_STAT;
	unsigned int	i, j, k, l ,recalc_count;  				/* Counters */ 
	//unsigned int 	ia1, ia2, ia3, ia4, ia5, ia6;
    int*			vect;
    int             MAX_EXCEED_SPAN = 0;   
    int				u, uSTo, uSTw;
    int				mode;
    float			thresh;
    float			watercutThreshold;
	float 			OIL_CALC_DEFAULT;
	float			osv;
	float			oden, wden, den;           /* density calculations */
	long double		ot[2];                     /* oil coefficients */
	long double		wt[4];                     /* water coefficients*/
	long double		wc[2];                     /* wetercut calculation | ~For interpolating between curves~ */
	long double		w;                         /* watercut */                             
	long double		w_d;
	long double		w_o;
	long double		s[3];
	//long double		spn;
	long double		t, sg, slt, wfreq, tmp_f, next_lowest;
	long double		w_water, w_oil, wc_lowsalt;   
	long double     WC_previous;              /* previous watercut */
	long double 	t_adj_calc, t_delta_temp; /*Convert temp_adj unit to Temp_extl calc_unit for calc_value, Convert delta_temp unit as well   */
    BOOL			FULL_SAMPLE, stat, error, is_valid_type;
	BOOL			hsalt_recalc_needed = FALSE;
	char fp_name[50];
	
	if ((VT_SELECT>=VTMAX) || (VT_SELECT<0))
	{/* check oscillator out of range */
		VT_SELECT 		= 0;
		DIAGNOSTICS[1] |= ERROR2_SAMPLE_ERROR;
		
		Setup_Sample();
		
		return;
	}

	/* set BUSY status if in RESEARCH mode */
	_GIEP;

	if (DIO_RESEARCH_MODE.val && RESEARCH_FORCE_MODE) stat = TRUE;
	else stat = FALSE;
	
	for (i=0;i<UART_MAX;i++) PORT[i].BUSY = stat;
	
	PORT[PDI_id].BUSY 	 = FALSE; 
	PORT[IDEC_PORT].BUSY = FALSE; 
	GIEP;

	if (GATE_TIMEOUT && (READ_ADC_INPUTS>=3))
	{
		Read_RTC();

		sg = 1.0;
		_GIEP;
		SAMPLE_PENDING = FALSE;
		
		Timer_Insert(&TMR_SAMPLE_ERROR,0,TMR_action_delete);

		FULL_SAMPLE = FALSE;
        error 		= FALSE;
        w 			= 0.0;
		WC_STAT 	= 0;               
        
		if (DEMO) 
			mode = DEMO_ANALYZER_MODE.val;
		else 
			mode = ANALYZER_MODE.val;

		if ((mode & 0x100) || DEMO)
		{/* temp for simulation mode */
			TMP_TEMP 			 = SIM_TEMPERATURE_EXTERNAL;
			TMP_VTUNE[VT_SELECT] = SIM_VTUNE[VT_SELECT];
			TMP_VINC[VT_SELECT]  = SIM_VINC[VT_SELECT];
			TMP_VREF[VT_SELECT]  = SIM_VREF[VT_SELECT];
			TMP_FREQ[VT_SELECT]  = SIM_FREQ[VT_SELECT];
		}
		else	
		{/* temp for normal operation */
			if (USE_COR0_TEMP)
			{/* Use Coriolis 0 temp? */
				TMP_TEMP = Convert(REG_TEMPERATURE_EXTERNAL.class, COR[0].u_T, u_temp_C, COR[0].T, 0, REG_TEMPERATURE_EXTERNAL.aux);
			    
			    /*AVG TEMP */
			    if (AVG_RESET.val==TRUE) 
			    {	
			    	N_TEMP	 = 0; 
			    	SUM_TEMP = 0;
			    }                  
				
				N_TEMP++; 
				SUM_TEMP	 += TMP_TEMP; 
				AVG_TEMP	  = SUM_TEMP/N_TEMP;           
                AVG_RESET.val = FALSE;
                /*AVG TEMP -  */
			}
			else
			{/* Use ADC temp */   
			    TMP_TEMP = REG_ADC[ADC_Text].val2;	/* get the dampened value */  
			    
			    /*AVG TEMP */
			    if (AVG_RESET.val==TRUE) 
			    {
			    	N_TEMP=0; 
			    	SUM_TEMP=0;
			    }                  
				
				N_TEMP++; 
				SUM_TEMP	 += TMP_TEMP; 
				AVG_TEMP	  = SUM_TEMP/N_TEMP;           
                AVG_RESET.val = FALSE;
                /*AVG TEMP */
			}

			if (SA) 
				TMP_VTUNE[VT_SELECT] = REG_VTUNE_SET[VT_SELECT].calc_val;
			else
			{/* EEA */
				TMP_VTUNE[VT_SELECT] = REG_ADC[ADC_VTUNE].calc_val;
				
				if (!EXTUNE) 
					TMP_VTUNE[VT_SELECT] -= REG_ADC[ADC_GNDSEN].calc_val;
			}
      
			TMP_VINC[VT_SELECT] = REG_ADC[ADC_Vinc].calc_val;
			TMP_VREF[VT_SELECT] = REG_ADC[ADC_Vref].calc_val;
			
			if (!SA) 
				TMP_VINC[VT_SELECT] -= REG_ADC[ADC_GNDSEN].calc_val;
            
			if (!SA) 
				TMP_VREF[VT_SELECT] -= REG_ADC[ADC_GNDSEN].calc_val;
		}

		if (DIO_RESEARCH_MODE.val)
		{/* Research mode */
			CopyTempVars();

			/* update values and stretch integer scale to 0-30000 */
			if (OSC[VT_SELECT])
			{/* If oscillator exists */
				VAR_Update(&REG_VINC_W, REG_VINC[VT_SELECT].calc_val, 0, 0);
				VAR_Update(&REG_VREF_W, REG_VREF[VT_SELECT].calc_val, 0, 0);
				VAR_Update(&REG_FREQ_W, REG_FREQ[VT_SELECT].calc_val, 0, 0);
				
				IP_W   		= REG_VINC[VT_SELECT].val;
				i_IP_W 		= FS(&REG_VINC[VT_SELECT]);
				RP_W    	= REG_VREF[VT_SELECT].val;
				i_RP_W  	= FS(&REG_VREF[VT_SELECT]);
				IP_RP_W 	= IP_W/RP_W;
				DB_IP_RP_W  = 20.0*(log(IP_RP_W)/log(10.0));
				FREQ_W 		= REG_FREQ[VT_SELECT].val;
				i_FREQ_W 	= FS(&REG_FREQ[VT_SELECT]);
			}
			else
			{/* If oscillator missing */
				VAR_Update(&REG_VINC_O, REG_VINC[VT_SELECT].calc_val, 0, 0); 
				VAR_Update(&REG_VREF_O, REG_VREF[VT_SELECT].calc_val, 0, 0);
				VAR_Update(&REG_FREQ_O, REG_FREQ[VT_SELECT].calc_val, 0, 0);
				
				IP_O 		= REG_VINC[VT_SELECT].val;
				i_IP_O 		= FS(&REG_VINC[VT_SELECT]);
				RP_O 		= REG_VREF[VT_SELECT].val;
				i_RP_O 		= FS(&REG_VREF[VT_SELECT]);
				IP_RP_O 	= IP_O/RP_O;
				DB_IP_RP_O 	= 20.0*(log(IP_RP_O)/log(10.0));
				FREQ_O 		= REG_FREQ[VT_SELECT].val;
				i_FREQ_O 	= FS(&REG_FREQ[VT_SELECT]);
			}

			VAR_Update(&REG_WATERCUT, 0.0, 0, 0);
			
			i_WC = FS(&REG_WATERCUT);
			
			//i_TEMP = FS(&REG_TEMPERATURE_EXTERNAL);
			i_TEMP = FS(&REG_TEMPERATURE_USER); //Changed to User Temperature 2/4/2016
			
			/* update values and stretch integer scale to 0-30000 */

			Send_Sample(VT_SELECT);
		}
		else
		{/* Normal operation */
			switch(mode&0xFF)
			{
				default:
				{
					FULL_SAMPLE = TRUE;
					CopyTempVars();
					VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);
					break;
				}
                case SUB_ANALYZER:
				{/* PPM mode */
					if (VT_SELECT != OSC_WATER_CALC) 
						break;

					FULL_SAMPLE = TRUE;
					CopyTempVars();
                    VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0);
		
					/* set temperature alarm */
					DIAGNOSTICS[0] &= (ERROR_T_UNDERRANGE | ERROR_T_OVERRANGE)^0xFFFF;
					
					if (REG_TEMPERATURE_EXTERNAL.STAT & var_alarm_lo)
					{
						DIAGNOSTICS[0] 			|= ERROR_T_UNDERRANGE;
						DIAGNOSTICS_ERROR_CODE   = E_ERROR_TEMPERATURE_UNDERRANGE;
					}
					else if (REG_TEMPERATURE_EXTERNAL.STAT & var_alarm_hi)
					{
						DIAGNOSTICS[0] 			|= ERROR_T_OVERRANGE;
						DIAGNOSTICS_ERROR_CODE 	 = E_ERROR_TEMPERATURE_OVERRANGE;
					}

					/* freq errors */
					DIAGNOSTICS[0] &= (ERROR_FREQ_UNDERRANGE | ERROR_FREQ_OVERRANGE)^0xFFFF;
					
					if ((REG_FREQ[OSC_OIL_CALC].STAT & var_alarm_lo) || (REG_FREQ[OSC_WATER_CALC].STAT & var_alarm_lo))
					{
						DIAGNOSTICS[0] 			|= ERROR_FREQ_UNDERRANGE;
						DIAGNOSTICS_ERROR_CODE 	 = E_ERROR_FREQ;
					}
					else if ((REG_FREQ[OSC_OIL_CALC].STAT & var_alarm_hi) || (REG_FREQ[OSC_WATER_CALC].STAT & var_alarm_hi))
					{
						DIAGNOSTICS[0] 			|= ERROR_FREQ_OVERRANGE;
						DIAGNOSTICS_ERROR_CODE 	 = E_ERROR_FREQ;
					}

					w  = COEFF_C0;
					w += COEFF_FA2  * REG_FREQ[OSC_OIL_CALC  ].calc_val * REG_FREQ[OSC_OIL_CALC].calc_val;
					w += COEFF_FA1  * REG_FREQ[OSC_OIL_CALC  ].calc_val;
					w += COEFF_FB2  * REG_FREQ[OSC_WATER_CALC].calc_val * REG_FREQ[OSC_WATER_CALC].calc_val;
					w += COEFF_FB1  * REG_FREQ[OSC_WATER_CALC].calc_val;
					w += COEFF_RPA2 * REG_VREF[OSC_OIL_CALC  ].calc_val * REG_VREF[OSC_OIL_CALC].calc_val;
					w += COEFF_RPA1 * REG_VREF[OSC_OIL_CALC  ].calc_val;
					w += COEFF_RPB2 * REG_VREF[OSC_WATER_CALC].calc_val * REG_VREF[OSC_WATER_CALC].calc_val;
					w += COEFF_RPB1 * REG_VREF[OSC_WATER_CALC].calc_val;
					w += COEFF_IPA2 * REG_VINC[OSC_OIL_CALC  ].calc_val * REG_VINC[OSC_OIL_CALC].calc_val;
					w += COEFF_IPA1 * REG_VINC[OSC_OIL_CALC  ].calc_val;
					w += COEFF_IPB2 * REG_VINC[OSC_WATER_CALC].calc_val * REG_VINC[OSC_WATER_CALC].calc_val;
					w += COEFF_IPB1 * REG_VINC[OSC_WATER_CALC].calc_val;
					w += COEFF_T2   * REG_TEMPERATURE_EXTERNAL.calc_val * REG_TEMPERATURE_EXTERNAL.calc_val;
					w += COEFF_T1	* REG_TEMPERATURE_EXTERNAL.calc_val;   
					
					/*PPM Analyzer with MicroMotion density   */
					w += COEFF_D2	* FC[0].density.calc_val * FC[0].density.calc_val;

					//Bugfix 6/21/2016: need to remove oil_adj from WC_Raw or the Oil_Cal breaks
					REG_WATERCUT_RAW = w - REG_OIL_ADJ.calc_val; 
                    WC 				 = w;
                    break;
				}
                case SUB_MID:
				case SUB_LOW:
				{
					if (VT_SELECT != OSC_OIL_CALC) break;

					FULL_SAMPLE = TRUE;
					CopyTempVars();
					
					// convert temp_adj unit to Temp_extl calc_unit for calc_value (added 2/2/2016)
					t_adj_calc = Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, 
										 REG_TEMPERATURE_EXTERNAL.calc_unit, REG_TEMPERATURE_USER_ADJUST.val, 1, 
										 REG_TEMPERATURE_USER_ADJUST.aux);

					// adjusted temperature
	                t = REG_TEMPERATURE_EXTERNAL.calc_val+ t_adj_calc;

					// reflected power threshold
					thresh = (REG_FREQ[OSC_OIL_CALC].calc_val * OIL_P1.calc_val) + OIL_P0.calc_val;

					// force oil phase
					VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0);

					// error checking
					DIAGNOSTICS[0] &= (ERROR_T_UNDERRANGE | ERROR_T_OVERRANGE)^0xFFFF;
						
					if (REG_TEMPERATURE_EXTERNAL.STAT & var_alarm_lo)
					{
						DIAGNOSTICS[0] |= ERROR_T_UNDERRANGE;
						DIAGNOSTICS_ERROR_CODE = E_ERROR_TEMPERATURE_UNDERRANGE;
					}
					else if (REG_TEMPERATURE_EXTERNAL.STAT & var_alarm_hi)
					{
						DIAGNOSTICS[0] |= ERROR_T_OVERRANGE;
						DIAGNOSTICS_ERROR_CODE = E_ERROR_TEMPERATURE_OVERRANGE;
					}

					DIAGNOSTICS[0] &= (ERROR_FREQ_UNDERRANGE | ERROR_FREQ_OVERRANGE)^0xFFFF;
					
					if (REG_FREQ[OSC_OIL_CALC].STAT & var_alarm_lo)
					{
						DIAGNOSTICS[0] |= ERROR_FREQ_UNDERRANGE;
						DIAGNOSTICS_ERROR_CODE = E_ERROR_FREQ;
					}
					else if (REG_FREQ[OSC_OIL_CALC].STAT & var_alarm_hi)
					{
						DIAGNOSTICS[0] |= ERROR_FREQ_OVERRANGE;
						DIAGNOSTICS_ERROR_CODE = E_ERROR_FREQ;
					}

					/* calculate watercut using flow computer zero's density */
					oden = FC[0].density_oil.calc_val;
					wden = FC[0].density_water.calc_val;
					den = Convert(FC[0].density.class, FC[0].density.calc_unit, u_mpv_kg_cm, FC[0].density.calc_val, 0, FC[0].density.aux);
					w_d  = 100.0 * (den - oden) / (wden - oden); // water cut by density
					VAR_Update(&REG_WATERCUT_DENSITY, w_d, 0, 0);
					
					/*-----------------A NOTE ABOUT TEMPERATURE CURVES-----------------*\
					|	Wow, what a headache. The temperature curves for a low/midcut 	|
					|	are treated differently than full/highcut. After some tedious	|
					|	digging I discovered the reason for this is that the fullcut	|
					|	coefficient gen counts the second curve (dual curve) as part of	|
					|	TEMP_OIL_MAX, while the lowcut gen does NOT count it. So where	|
					|	a dual-curve fullcut calibrated at 3 different temps would say	|
					|	TEMP_OIL_MAX = '5' (that is, 6 minus 1 for index consistency),	|
					|	the lowcut gen would say '2' (3, minus 1).						|
					|																	|
					|	Confusing? Yes. Nonsensical? Definitely. My predecessors better |
					|	hope they don't bump into me in a dark alley somewhere...		|
					|	-DHA															|
					\*-----------------------------------------------------------------*/

                    ////////////////////////////////////////////
                    /// MID/LOWCUT CALCULATION
                    ////////////////////////////////////////////

					if (TEMP_OIL_MAX && !error)
					{ 
                        /* LOWCUT calculation */
                        switch(OIL_CALC_MODE)
                        {
                            case 2:
                            case 3:
                            {
                                if (REG_VREF[OSC_OIL_CALC].calc_val > thresh)
                                {
                                    for (i=1;i<TEMP_OIL_MAX;i++)
                                    {
                                        //if (REG_TEMPERATURE_EXTERNAL.calc_val<TEMPS_OIL[i+3]) 
                                        if (t<TEMPS_OIL[i+3]) break;// (2/2/2016)
                                            
                                    }

                                    j     = i-1;
                                    ot[0] = COEFF_TEMP_OIL[i+3][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[i+3][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[i+3][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[i+3][0];
                                    ot[1] = COEFF_TEMP_OIL[j+3][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[j+3][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[j+3][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[j+3][0];
                                    w     = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[j], t);

                                    if ((w>OIL_CALC_CUTOFF) || (OIL_CALC_MODE==2))
                                    {// w > OIL_CALC_CUTOFF --> use the second curve (i+3)
                                        REG_WATERCUT_RAW = w;
                                        w               += REG_OIL_ADJ.calc_val;
                                        WC               = w;
                                        break;
                                    }
                                    else; //move on to next switch branch if w < OIL_CALC_CUTOFF    -DHA
                                }
                                else
                                {
                                    w                = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmax, 0, 0);
                                    REG_WATERCUT_RAW = w;
                                    WC               = w;
                                    WC_STAT          = rollover;
                                    break;
                                }
                            }
                            case 0:
                            case 1:
                            default:
                            {
                                if (REG_VREF[OSC_OIL_CALC].calc_val > thresh)
                                {
                                    for (i=1;i<TEMP_OIL_MAX;i++)
                                    {
                                        if (t<TEMPS_OIL[i]) break;// (2/2/2016)
                                    }

                                    j     = i-1;
                                    ot[0] = COEFF_TEMP_OIL[i][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[i][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[i][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[i][0];
                                    ot[1] = COEFF_TEMP_OIL[j][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[j][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[j][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
                                            COEFF_TEMP_OIL[j][0];

                                    w                = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[j], t); // (2/2/2016)
                                    REG_WATERCUT_RAW = w;
                                    w               += REG_OIL_ADJ.calc_val;

                                    WC = w;
                                }
                                else // RP below P0 -DHA
                                {
                                    w = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmax, 0, 0);
                                    REG_WATERCUT_RAW = w;
                                    WC               = w;
                                    WC_STAT          = rollover;

                                    if ((mode&0xFF) == SUB_MID) VAR_Update(&REG_EMULSION_PHASE, 1.0, 0, 0); /* indicate water phase */
                                }

                                break;
                            }
                        }
                    }
                    else
                    {
                        WC_STAT          = rollover;
                        w                = 0.0;
                        WC               = 0.0;
                        REG_WATERCUT_RAW = 0.0;

                        VAR_NaN(&REG_WATERCUT);
                    }

                    break;
				}
                case SUB_HIGH:
				case SUB_FULL:
				case SUB_CCM:
				{
					// calculate after measuring OSC_WATER
					if (VT_SELECT != OSC_WATER_CALC) break; 

					FULL_SAMPLE = TRUE; 
                    CopyTempVars();
					thresh = (REG_FREQ[OSC_OIL_CALC].calc_val * OIL_P1.calc_val) + OIL_P0.calc_val;

                    // Convert temp_adj unit to Temp_extl calc_unit for calc_value 
					t_adj_calc = Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, 
										 REG_TEMPERATURE_EXTERNAL.calc_unit, REG_TEMPERATURE_USER_ADJUST.val, 1, 
									 	 REG_TEMPERATURE_USER_ADJUST.aux);

					// Adjusted temperature
	                t = REG_TEMPERATURE_EXTERNAL.calc_val+t_adj_calc;

					// Check error condition
					DIAGNOSTICS[0] &= (ERROR_T_UNDERRANGE | ERROR_T_OVERRANGE)^0xFFFF;

					if (REG_TEMPERATURE_EXTERNAL.STAT & var_alarm_lo)  
					{
						DIAGNOSTICS[0] 			|= ERROR_T_UNDERRANGE;
						DIAGNOSTICS_ERROR_CODE 	 = E_ERROR_TEMPERATURE_UNDERRANGE;
					}
					else if (REG_TEMPERATURE_EXTERNAL.STAT & var_alarm_hi)
					{
						DIAGNOSTICS[0] 			|= ERROR_T_OVERRANGE;
						DIAGNOSTICS_ERROR_CODE 	 = E_ERROR_TEMPERATURE_OVERRANGE;
					}
					DIAGNOSTICS[0] &= (ERROR_FREQ_UNDERRANGE | ERROR_FREQ_OVERRANGE)^0xFFFF;
					
					if ((REG_FREQ[OSC_OIL_CALC].STAT & var_alarm_lo) || (REG_FREQ[OSC_WATER_CALC].STAT & var_alarm_lo))
					{
						error 					 = TRUE;
						DIAGNOSTICS[0] 			|= ERROR_FREQ_UNDERRANGE;
						DIAGNOSTICS_ERROR_CODE 	 = E_ERROR_FREQ;
					}
					else if ((REG_FREQ[OSC_OIL_CALC].STAT & var_alarm_hi) || (REG_FREQ[OSC_WATER_CALC].STAT & var_alarm_hi))
					{
						error 					 = TRUE;
						DIAGNOSTICS[0] 			|= ERROR_FREQ_OVERRANGE;
						DIAGNOSTICS_ERROR_CODE 	 = E_ERROR_FREQ;
					}

					if ((error) || ((HSALT.ENABLED.val==TRUE) && (FC[0].FLOW_TOTAL.calc_val < HSALT.flow_threshold.val)))
					{
						VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);					
						break;
					}

					// gas carry under
					if((REG_WATERCUT_RAW <= 100)&&(REG_WATERCUT_RAW > 0)) WC_previous = REG_WATERCUT_RAW;
					
					// calculate watercut using flow computer zero's density
					oden = FC[0].density_oil.calc_val;
					wden = FC[0].density_water.calc_val;
					den = Convert(FC[0].density.class, FC[0].density.calc_unit, u_mpv_kg_cm, FC[0].density.calc_val, 		0, FC[0].density.aux);
					w_d  = 100.0 * (den - oden) / (wden - oden); // water cut by density
					
					VAR_Update(&REG_WATERCUT_DENSITY, w_d, 0, 0);
					
					/***********************Phase Hold Over   **************************/
					cycles++;

					if ((REG_FREQ[OSC_OIL_CALC].calc_val<REG_FREQ_OIL_LO.calc_val) 
					 || (REG_FREQ[OSC_OIL_CALC].calc_val>REG_FREQ_OIL_HI.calc_val) 
					 || (REG_VREF[OSC_OIL_CALC].calc_val > thresh)) phase = 0;
					else if ((REG_FREQ[OSC_WATER_CALC].calc_val>=REG_FREQ_WATER_LO.calc_val) 
						  && (REG_FREQ[OSC_WATER_CALC].calc_val<=REG_FREQ_WATER_HI.calc_val)) phase = 1;
					else	/* Phase Logic Error */
						VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);
					
					if (cycles == 1) previous_phase = phase;
					if (phase != previous_phase) phase_rollover_count++;
					if (cycles > REG_PHASE_HOLD_CYCLES.val)
					{
						cycles = 0;
						phase_rollover_count = 0;
					}
					
					if ((phase_rollover_count < 2) && (cycles == REG_PHASE_HOLD_CYCLES.val))
					{
						if((REG_FREQ[OSC_OIL_CALC].calc_val<REG_FREQ_OIL_LO.calc_val) 
						 || (REG_FREQ[OSC_OIL_CALC].calc_val>REG_FREQ_OIL_HI.calc_val) 
					   	 || (REG_VREF[OSC_OIL_CALC].calc_val > thresh) )
							VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0); 	/* OIL Phase */
						else if ((REG_FREQ[OSC_WATER_CALC].calc_val>=REG_FREQ_WATER_LO.calc_val) && 
								 (REG_FREQ[OSC_WATER_CALC].calc_val<=REG_FREQ_WATER_HI.calc_val))
							VAR_Update(&REG_EMULSION_PHASE, 1.0, 0, 0);			/* WATER Phase */ 
					} 
					/***********************Phase Hold Over   **************************/     
					
                    /*******Add option to force phase on each stream   *******/ 
                    if (OIL_PHASE_ONLY.val)
                    { /* Force Oil Phase */	
                        WATER_PHASE_ONLY.val = FALSE;
                    	VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0); 
					}
                    if (WATER_PHASE_ONLY.val)
                    { /* Force Water Phase */	
                    	OIL_PHASE_ONLY.val = FALSE;
						VAR_Update(&REG_EMULSION_PHASE, 1.0, 0, 0); 
					}
                    /*******Add option to force phase on each stream   *******/
                    
                    /******Implement oil dual curve, can be optimized and simplified   ***/
					/*-----------------A NOTE ABOUT TEMPERATURE CURVES-----------------*\
					|	Wow, what a headache. The temperature curves for a low/midcut 	|
					|	are treated differently than full/highcut. After some tedious	|
					|	digging I discovered the reason for this is that the fullcut	|
					|	coefficient gen counts the second curve (dual curve) as part of	|
					|	TEMP_OIL_MAX, while the lowcut gen does NOT count it. So where	|
					|	a dual-curve fullcut calibrated at 3 different temps would say	|
					|	TEMP_OIL_MAX = '5' (that is 6, minus 1 for index consistency),	|
					|	the lowcut gen would say '2' (3, minus 1).						|
					|																	|
					|	Confusing? Yes. Nonsensical? Definitely. My predecessors better |
					|	hope they don't bump into me in a dark alley somewhere...		|
					|	-DHA															|
					\*-----------------------------------------------------------------*/
					
					if (REG_EMULSION_PHASE.val == 0)     
					{/* OIL Phase */                       
						// find the two oil-temp-curves for which the current temperature falls between
						for (i=1;i<(TEMP_OIL_MAX-3);i++)         //use(TEMP_OIL_MAX-3) preventing when T>Temp_oil, go all the way to the last curve   
							if (t<TEMPS_OIL[i]) break;

						ot_index = 0;
						cf_index = i;
						for (;;)
						{
							ot[ot_index] = 
								COEFF_TEMP_OIL[cf_index][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
						   		COEFF_TEMP_OIL[cf_index][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[cf_index][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[cf_index][0];

							ot_index++;
							if (ot_index > 1) break;
							else cf_index--;
						}

						w = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[i-1], REG_TEMPERATURE_EXTERNAL.calc_val);   

						// Limit water/oil phase watercut
						if (w > Oil_Phase_Maximum.calc_val) w = Oil_Phase_Maximum.calc_val;  
						
						OIL_CALC_DEFAULT = 10.0;
                        // if user changed OIL_CALC_CUTOFF, then use it. Otherwise, use a factory default OIL_CALC_DEFAULT which is 10.0
						(OIL_CALC_CUTOFF > 0) ? (watercutThreshold = OIL_CALC_CUTOFF) : (watercutThreshold = OIL_CALC_DEFAULT);

						// USE THE FIRST CURVE ONLY IF "OIL_CALC_MODE == 0"
                        if (w<=watercutThreshold)
					    { 
						    REG_WATERCUT_RAW = w;
						    w 				+= REG_OIL_ADJ.calc_val;
						    WC 				 = w;
					    }
					    // USE THE SECOND CURVE IF "WC > watercutThreshold"
					    else
					    {	 
						    // find the two oil-temp-curves for which the current temperature falls between
						    for (i=1;i<(TEMP_OIL_MAX-3);i++)    //TEMP_OIL_MAX suppose = 3 as i+3 are used instead of i as below 
							    if (t<TEMPS_OIL[i+3]) break;
                            
                            j     = i-1; 
                            ot[0] = COEFF_TEMP_OIL[i+3][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                    COEFF_TEMP_OIL[i+3][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                    COEFF_TEMP_OIL[i+3][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
                                    COEFF_TEMP_OIL[i+3][0];
                            ot[1] = COEFF_TEMP_OIL[j+3][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                    COEFF_TEMP_OIL[j+3][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
                                    COEFF_TEMP_OIL[j+3][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
                                    COEFF_TEMP_OIL[j+3][0];
                            w     = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[j], REG_TEMPERATURE_EXTERNAL.calc_val);

						    // limit water/oil phase watetcut	
						    if (w > Oil_Phase_Maximum.calc_val) w = Oil_Phase_Maximum.calc_val;

						    REG_WATERCUT_RAW = w;
						    w += REG_OIL_ADJ.calc_val;
						    WC = w;
					    }
                    }
					/******END: Implement oil dual curve, can be optimized and simplified   *****************************/
//////////////////////////////////////////////////////////////////////////////////
				
					else if (REG_EMULSION_PHASE.val == 1)
					{/* WATER Phase */
						                    
						wfreq = REG_FREQ[OSC_WATER_CALC].calc_val;
						water_freq_in = wfreq; //take water frequency sample	

						//Check to make sure Gas Routine was purchased
						if(GAS_ENTRAINED.val)
						{	//moved this outside the HSALT block v6.13 -DHA					
							int field_H;
							field_H = STR_Analyzer_Info[3] & 0xFF;
							if ( (field_H != 0x41) && (field_H != 0x42) && (field_H != 0x43) && (field_H != 0x59))
							{// if Field H is not 'A' and not 'B' and not 'C' and not 'Y' (ASCII)
								//disable gas routine
								GAS_ENTRAINED.val = FALSE;
								
								//disable gas routine (stream)
								for (i=0; i<SMAX; i++)
								{
									GAS_ROUTINE_ENABLE[i] = FALSE; 	
								}
							}
						}						

						if (HSALT.ENABLED.val==TRUE)
						{///***** Heuristic Salinity Routine *****///
							t = 37.778;	/* set to standard 100degF temperature curve */
       
							//spn = HSALT.span.val * SaltSpan() / 100.0;   /*.val   */

							if (HSALT.Fmin < 0.0)
							{
								HSALT.Fmin = REG_FREQ[OSC_WATER_CALC].calc_val;
								//HSALT.Fmax = REG_FREQ[OSC_WATER_CALC].calc_val;  									
								HSALT.Dmin = FC[0].density.calc_val;
								HSALT.Dmax = FC[0].density.calc_val;
								//HSALT.new  = TRUE;
							}
							
							// note: boxcar_reset_needed is set TRUE by HSALT_CLEAR
							if (boxcar_reset_needed)
							{
								Reset_Boxcar();
								boxcar_reset_needed = FALSE;	//don't repeat this unless we reset
							}
							
							//Boxcar is used if HSalt time reset is enabled, and always used with gas routine
							if (GAS_ENTRAINED.val || DIO_TIME_RESET.val)
							{//Update the boxcar minimums list with new water freq measurement
								Update_Boxcar();						//update the boxcar list
								if (boxcar_list[0].freq != HSALT.Fmin)	//if the minimum has changed
								{
									HSALT.Fmin = boxcar_list[0].freq;	//Set minimum water freq
									HSALT_FREQ_TRIGGER.val = TRUE;
								}
							}
							else
							{ //non-boxcar mode
								if (wfreq < HSALT.Fmin)	
									HSALT.Fmin = wfreq;				//store lowest value
							}
							
							///***** GAS ROUTINE *****///
							if(GAS_ENTRAINED.val)	// if gas routine is enabled
							{ 
								if (gas_routine_reset_needed)	// gas_routine_reset_needed is set TRUE by HSALT_CLEAR
								{ //Initialize routine
								
									//fill up bubble and pattern arrays with our first frequency reading
									for (i=0; i<BUBBLE_SIZE_MAX; i++)
									{
										bubble.data[i] = water_freq_in;
									}
									bubble.average = water_freq_in;
									bubble.head = BUBBLE_SIZE_MAX - 1;
									bubble.tail = 0;
									bubble.length = BUBBLE_SIZE_MAX;

									for (i=0; i<PATTERN_SIZE_MAX; i++)
									{
										pattern.data[i] = water_freq_in;
									}
									pattern.average = water_freq_in;
									pattern.head = PATTERN_SIZE_MAX - 1;
									pattern.tail = 0;
									pattern.length = PATTERN_SIZE_MAX;
																	
									gas_routine_reset_needed = FALSE; //don't repeat this unless we reset
									
								}
								
								else // If we didn't just reset the routine...
								{/// Normal Operation (Gas Entrainment Routine) ///
														
									Update_Pattern();
									Update_Bubble();
								}
								
								//calculate water frequency, compensating for gas entrainment
								if ((bubble.average - pattern.average) > 0.0) //If (bubble - pattern) is a positive value
									wfreq = boxcar_list[0].freq + bubble.average - pattern.average;
								else	//don't correct freq to below boxcar minimum
									wfreq = boxcar_list[0].freq;

							}
							
							//else (removed the "HSalt span" stuff)							
							
						
							/****Temperature statistics trigger Hsalt recalc   ****/
							/* New Temperature Reset Trigger */
							/* convert temperature adjustment to C from C/F, calculate TEMP_SAMPLE, Convert delta T to C from C/F */
							t_adj_calc 		= Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, REG_TEMPERATURE_EXTERNAL.calc_unit, 
												  	  REG_TEMPERATURE_USER_ADJUST.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);
							TEMP_SAMPLE 	= REG_TEMPERATURE_EXTERNAL.calc_val +  t_adj_calc;		//get temperature
							t_delta_temp 	= Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, REG_TEMPERATURE_EXTERNAL.calc_unit, 
												  	  REG_DELTA_TEMP.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);
							
							if( fabs(LAST_TEMP_RESET - TEMP_SAMPLE) >= t_delta_temp )				// if temp since last rest is greater than the allowed variance
								HSALT_TEMP_TRIGGER.val = TRUE;										// trigger reset

                            /****HSALT RESET FLAG CHECK AND EXECUTE RESET****/
														
							//note: HSALT.new was used with span, it is now defunct
							if(DIO_MANUAL_RESET.val || DIO_CLEAR_COUNTERS.val || HSALT_TEMP_TRIGGER.val || HSALT_FREQ_TRIGGER.val )		
							{/* if manual reset OR cleared accumulators OR temperature reset OR frequency reset */																									
								
								// If "Manual Reset" is selected, clear the boxcar array
								if (DIO_MANUAL_RESET.val)
									Reset_Boxcar();		
								else if (HSALT_TEMP_TRIGGER.val)
									HSALT.Fmin = wfreq;	//Reset minimum frequency if temperature trigger is set -- 2/2/2016
								
								LAST_TEMP_RESET = TEMP_SAMPLE;                          /* Set last reset to current temp */
															
								/* salinity calibration */
								DIO_CAP_WATER.val = FALSE;							/* set 'clear' flag for capture record */
								
								Capture_Watercut_Water(0);  						/* clear capture record */
								
								//NO! //HSALT.Fmin = REG_FREQ[OSC_WATER_CALC].calc_val;     /* update old boxcar min frequency   */
								
								tmp_f = REG_FREQ[OSC_WATER_CALC].calc_val;			// save the original water freq
								
								REG_FREQ[OSC_WATER_CALC].calc_val = HSALT.Fmin;		// replace water freq with boxcar minimum
																													
								VAR_Update(&REG_CAL_WATER, 99.9, 0, 1);				// calculate salinity using boxcar min 
								
								REG_FREQ[OSC_WATER_CALC].calc_val = tmp_f;			// restore original water freq
								
								HSALT.CHANGED 			= TRUE;                         /* if CCM test started - save user data */
								
								//reset HSALT flags
								//HSALT.new 				= FALSE;                    /* don't check for CCM test - during gas entrained reset check */
								DIO_MANUAL_RESET.val	= FALSE;                        /* clear manual reset flag */
								DIO_CLEAR_COUNTERS.val  = FALSE;                        /* clear 'clear counters' reset flag */
								HSALT_FREQ_TRIGGER.val  = FALSE;
								HSALT_TEMP_TRIGGER.val  = FALSE;
							}
                            /****HSALT RESET FLAG CHECK AND EXECUTE RESET****/
							
			
							/* min/max Density */
							if (FC[0].density.calc_val > HSALT.Dmax)
								HSALT.Dmax = FC[0].density.calc_val;
							
							if (FC[0].density.calc_val < HSALT.Dmin)
								HSALT.Dmin = FC[0].density.calc_val;
							
							
							slt = REG_SALINITY.val; //what is this for? It's not used in this function
							
                        } // end of HSALT mode
                        
						recalc_count = 0; 	//this is a counter used to make sure the following loop doesn't hang
											// (safety net -- shouldn't technically be needed for realistic salinities)
											
						do //calculate WC using salinity (do-while: repeat this until WC is within bounds)
						{
							hsalt_recalc_needed = FALSE;
							
							for (i=1;i<TEMP_WATER_MAX;i++)
							{
								if (t<TEMPS_WATER[i]) 
									break;
							}

							j = i-1;

							for (k=1;k<SALT_MAX;k++)
							{
								if (REG_SALINITY.val<SALTS[k]) 
									break;
							} 

							l = k-1;
							
							if (SALTS[k]<=0.02) 
								s[0] = log(0.02);
							else 
								s[0] = log(SALTS[k]);
							
							if (SALTS[l]<=0.02) 
								s[1] = log(0.02);
							else 
								s[1] = log(SALTS[l]);
							
							if (REG_SALINITY.val<=0.02) 
								s[2] = log(0.02);
							else 
								s[2] = log(REG_SALINITY.val);

							wt[0] = COEFF_SALT_TEMP_WATER[k][i][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[k][i][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[k][i][1]*wfreq +
									COEFF_SALT_TEMP_WATER[k][i][0];
							wt[1] = COEFF_SALT_TEMP_WATER[k][j][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[k][j][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[k][j][1]*wfreq +
									COEFF_SALT_TEMP_WATER[k][j][0];
							wt[2] = COEFF_SALT_TEMP_WATER[l][i][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][i][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][i][1]*wfreq +
									COEFF_SALT_TEMP_WATER[l][i][0];
							wt[3] = COEFF_SALT_TEMP_WATER[l][j][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][1]*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][0];  
							wt[4] = COEFF_SALT_TEMP_WATER[l][j][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][1]*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][0];
							
							wc[0] = Interpolate(wt[0], TEMPS_WATER[i], wt[1], TEMPS_WATER[j], t);
							wc[1] = Interpolate(wt[2], TEMPS_WATER[i], wt[3], TEMPS_WATER[j], t);
							w 	  = Interpolate(wc[0], s[0], wc[1], s[1], s[2]);
							
							if (w < Water_Phase_Minimum.calc_val)   /*Limit water/oil phase watercut   */
								w = Water_Phase_Minimum.calc_val; 
							
							REG_WATERCUT_RAW = w;
							
							
							//Make double sure that Hsalt_Min_WC isn't something less than 60%
							// (no calibration data below that)
							if (Hsalt_Min_WC.val < 60.0)
							{
								VAR_Update(&Hsalt_Min_WC,60.0,0,1);
							}
							
							// handle OOB watercut
							if ( (w < Hsalt_Min_WC.val) && HSALT.ENABLED.val)
							{// watercut is too low (either from gas or reduced salinity)
							
								// New Fmin = (Fmin + Current Frequency) / 2
								HSALT.Fmin = (HSALT.Fmin + wfreq) / 2;	// set Fmin to the middle of the "span"
								
								// recalc salinity based on new Fmin;
								tmp_f = REG_FREQ[OSC_WATER_CALC].calc_val;			// save the original water freq
								
								REG_FREQ[OSC_WATER_CALC].calc_val = HSALT.Fmin;		// replace water freq with (modified) boxcar minimum
								
								VAR_Update(&REG_CAL_WATER, 99.9, 0, 1);				// calculate salinity using (modified) boxcar min 
								
								if (GAS_ENTRAINED.val || DIO_TIME_RESET.val)		// reset boxcar with new Fmin as "current freq"
									Reset_Boxcar();
								
								REG_FREQ[OSC_WATER_CALC].calc_val = tmp_f;			// restore original water freq
								
								HSALT.CHANGED = TRUE;							// if CCM test started - save user data *RS*
								
								hsalt_recalc_needed = TRUE;							// watercut is too low --> recalc salinity and watercut
							}
							else if ( (w >= 100) && HSALT.ENABLED.val)
							{ // watercut is too high (either from increased salinity or lull in gas?)
								/*
									THIS SHOULD NEVER HAPPEN! Why? Because HSALT_FREQ_TRIGGER.val
									and HSALT_GAS_TRIGGER.val ought to take care of this by
									resetting HSALT whenever min freq drops								
								*/
								// New Fmin = Current Frequency
								HSALT.Fmin = wfreq;	// set Fmin to this lowest freq
								
								// recalc salinity based on new Fmin;
								tmp_f = REG_FREQ[OSC_WATER_CALC].calc_val;			// save the original water freq
								REG_FREQ[OSC_WATER_CALC].calc_val = HSALT.Fmin;		// replace water freq with boxcar minimum																					
								VAR_Update(&REG_CAL_WATER, 99.9, 0, 1);				// calculate salinity using boxcar min 
								if (GAS_ENTRAINED.val || DIO_TIME_RESET.val)		// reset boxcar with new Fmin as "current freq"
									Reset_Boxcar();
								
								REG_FREQ[OSC_WATER_CALC].calc_val = tmp_f;			// restore original water freq
								HSALT.CHANGED = TRUE;								// if CCM test started - save user data
								hsalt_recalc_needed = TRUE;							// watercut is too high --> recalc salinity and watercut
								
							}

							recalc_count++;
						
						  // repeat only when WC is OOB and HSALT is enabled, AND don't repeat more than 5 times
						} while (hsalt_recalc_needed && HSALT.ENABLED.val && (recalc_count <= 5) );
						  
						if (w > 99.9)
							w = 99.9;
						
						w += REG_WATER_ADJ.calc_val;

						  
                        for (i=1;i<TEMP_OIL_MAX;i++)
						{
							if (t<TEMPS_OIL[i]) 
								break;
						}

						j 	  = i-1;
                        ot[0] = COEFF_TEMP_OIL[i][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][0];
                        ot[1] = COEFF_TEMP_OIL[j][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][0];
                        w_o   = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[j], t);
                        
                        if (w_o > Oil_Phase_Maximum.calc_val) 
                        	w_o = Oil_Phase_Maximum.calc_val; /*Limit water/oil phase watercut   */
                        
						w_o += REG_OIL_ADJ.calc_val;

						/* OLD calculate watercut using flow computer zero's density */
						
                		switch((int)Water_Phase_Filter.val) // pertains to WATER PHASE ONLY
                		{
                			case water_filter_none:
                			{ //0
                				break; // Do nothing -- hardcoded limits still apply (min water phase WC = 50%; max oil phase WC = 78%)
                			}
                			case water_filter_clipped:
                			{ //1
                				if (w < Water_Phase_Minimum.calc_val)	// Don't let watercut go below Water_Phase_Minimum
                					w = Water_Phase_Minimum.calc_val;
                				
                				break;
                			}
                			case water_filter_density:
                			{ //2
								// Set water phase watercut equal to the watercut calculated from flow computer density measurements
                				w = w_d;
                				break;
                			}
                			case water_filter_higher_clipped_or_density:
                			{ //3
                				if (w < Water_Phase_Minimum.calc_val)	// Don't let water phase watercut go below water phase minimum
                					w = Water_Phase_Minimum.calc_val;
                				
								// Don't let water phase watercut go below the watercut calculated from flow computer density measurements
                				if (w < w_d)
                					w = w_d;
                				
                				break;
                			}
                			case water_filter_higher_clipped_oil_or_water:
                			{ //4
                				if (w_o > Oil_Phase_Maximum.calc_val)	// Don't let oil phase watercut go above oil phase maximum
                					w_o = Oil_Phase_Maximum.calc_val;
                				
                				if (w < Water_Phase_Minimum.calc_val)	// Don't let water phase watercut go below water phase minimum
                					w = Water_Phase_Minimum.calc_val;
                				
                				if (w < w_o)						// Don't let the water phase watercut go below oil phase watercut
                					w = w_o;
                				
                				break;
                			}
                			case water_filter_higher_clipped_oil_or_density:
                			{ //5
                				if (w_o > Oil_Phase_Maximum.calc_val) // Don't let oil phase watercut go above oil phase maximum
                					w_o = Oil_Phase_Maximum.calc_val;
									
                				// Set water phase watercut equal to the watercut calculated from flow computer density measurements
                				w = w_d;						
                				
                				if (w < w_o) // Don't let the water phase watercut go below oil phase watercut
                					w = w_o;
                				
                				break;
                			}
                			case water_filter_higher_clipped_oil_or_higher_clipped_or_density:
                			{ //6
                				if (w_o > Oil_Phase_Maximum.calc_val) // Don't let oil phase watercut go above oil phase maximum
                					w_o = Oil_Phase_Maximum.calc_val;
                				
                				if (w < Water_Phase_Minimum.calc_val) // Don't let water phase watercut go below water phase minimum
                					w = Water_Phase_Minimum.calc_val;
                				
								// Don't let water phase watercut go below the watercut calculated from flow computer density measurements
                				if (w < w_d)
                					w = w_d;
                				
                				if (w < w_o)		 			// Don't let water phase watercut go below oil phase watercut
                					w = w_o;
                				
                				break;
                				break;
                			}
                			default:
                				break;
                		}
                			
						WC = w;
					} // end water phase routine

                                                   
					/*******************low salt mode   ***********************/ 
					// LOW SALT MODE IS NOW DEFUNCT!!
				    if(LOW_SALT_MODE)  
				    {
				    	for (i=1;i<TEMP_WATER_MAX;i++)
						{
							if (t<TEMPS_WATER[i]) 
								break;
						}
	                    
						j = i-1;
	
						for (k=1;k<SALT_MAX;k++)
						{
							if (REG_SALINITY.val<SALTS[k]) 
								break;
						} 
	
						l = k-1;
						
						if (SALTS[k]<=0.02) 
							s[0] = log(0.02);
						else 
							s[0] = log(SALTS[k]);
						
						if (SALTS[l]<=0.02) 
							s[1] = log(0.02);
						else 
							s[1] = log(SALTS[l]);
						
						if (REG_SALINITY.val<=0.02) 
							s[2] = log(0.02);
						else 
							s[2] = log(REG_SALINITY.val);
	
						wt[0] = COEFF_SALT_TEMP_WATER[k][i][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[k][i][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[k][i][1]*wfreq +
								COEFF_SALT_TEMP_WATER[k][i][0];
	                    wt[1] = COEFF_SALT_TEMP_WATER[k][j][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[k][j][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[k][j][1]*wfreq +
								COEFF_SALT_TEMP_WATER[k][j][0];
	                    wt[2] = COEFF_SALT_TEMP_WATER[l][i][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][i][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][i][1]*wfreq +
								COEFF_SALT_TEMP_WATER[l][i][0];
	                    wt[3] = COEFF_SALT_TEMP_WATER[l][j][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][1]*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][0];  
						wt[4] = COEFF_SALT_TEMP_WATER[l][j][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][1]*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][0];
	                    
	                    wc[0]   = Interpolate(wt[0], TEMPS_WATER[i], wt[1], TEMPS_WATER[j], t);
						wc[1]   = Interpolate(wt[2], TEMPS_WATER[i], wt[3], TEMPS_WATER[j], t);
	                    w_water = Interpolate(wc[0], s[0], wc[1], s[1], s[2]);
	
						w_water += REG_WATER_ADJ.calc_val;
	                
	                    for (i=1;i<TEMP_OIL_MAX;i++)
						{
							if (t<TEMPS_OIL[i]) 
								break;
						}
	
						j 	  = i-1;
	                    ot[0] = COEFF_TEMP_OIL[i][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][0];
	                    ot[1] = COEFF_TEMP_OIL[j][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][0];
	                    
	                    w_oil = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[j], t);
	
						w_oil += REG_OIL_ADJ.calc_val; 
				    	
						if (REG_FREQ[OSC_OIL_CALC].calc_val<=REG_LOWSALT_THRESHOLD.val)
				    	{ 
				    		VAR_Update(&REG_EMULSION_PHASE, 1.0, 0, 0); 
				    		
				    		wc_lowsalt = w_water;						
				    	}
				    	else
				    	{
				    		VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0); 
				    		
				    		wc_lowsalt = w_oil;
				    	}
				    	
				    }
					/*******************low salt mode   ***********************/
					
					break;    
				} // end fullcut, highcut, ccm
			}
						
			///********************* END OF GIANT "mode" SWITCH STATMENT **************************///

			/*
			if (LOG_STATUS == ALFAT_CONTINUE_LOG)
			{
				Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_replace);
				LOG_STATUS = ALFAT_WAIT_LOG;
			}
			*/
			
			is_valid_type = FALSE;
			//density correction is enabled only for valid types of analyzers
			is_valid_type = ( ((mode&0xFF)==SUB_LOW) || ((mode&0xFF)==SUB_MID) || ((mode&0xFF)==SUB_FULL) );
			
						
			if ( Density_Correction_Mode.val && FC[0].enable_DENSITY && (WC_STAT != rollover) && is_valid_type && FULL_SAMPLE )
			{/* update watercut variable with density correction */
				/* note: handle this more intelligently, with coil logic, etc */
				CALC_WC_DENSITY.val = FALSE;

				t = Convert(Density_Cal.class, Density_Cal.calc_unit, u_mpv_kg_cm_15C, FC[0].density_PDI_corrected, 0, FC[0].density.aux);
				
				if ((t<750.0) || (t>998.0))	/* valid density range, kg/m3 @ 15C */
					DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
				
				if (WC <= 5.0)
				{/* hold last value of Dadj if WC > 5.0%, otherwise calculate new Dadj */
					FC[0].Dadj = (Density_D3.calc_val * (FC[0].density_PDI_corrected - Density_Cal.calc_val) * (FC[0].density_PDI_corrected - Density_Cal.calc_val) * 
								 (FC[0].density_PDI_corrected - Density_Cal.calc_val)) +
								 (Density_D2.calc_val * (FC[0].density_PDI_corrected - Density_Cal.calc_val) * (FC[0].density_PDI_corrected - Density_Cal.calc_val)) +
								 (Density_D1.calc_val * (FC[0].density_PDI_corrected - Density_Cal.calc_val)) + 
								  Density_D0.calc_val;                       /*third order density correction   */
				}

				if (FC[0].Dadj>10.0)
				{
					FC[0].Dadj 		= 10.0;
					DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
				}
				else if (FC[0].Dadj<-10.0)
				{
					FC[0].Dadj 		= -10.0;
					DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
				}

				w = WC + FC[0].Dadj;
// APR 17, 2019 BY DKOH
// WE NO LONGER SUPPORT OIL_CALC_MODE 1 AND 2. HENCE, REMOVED
/*
				if (OIL_CALC_MODE==1)
				{
					if (w > OIL_CALC_MAX[0]) 
						w = OIL_CALC_MAX[0];
				}
				else if (OIL_CALC_MODE==2)
				{
					if (w > OIL_CALC_MAX[1]) 
						w = OIL_CALC_MAX[1];
				}
*/
				WC = w;

				if (DIO_PV_PERCMASS)
				{
					sg = Convert(c_mass_per_volume, FC[0].density.calc_unit, u_mpv_sg_15C, FC[0].density.calc_val, 0, FC[0].density.aux);
				
					if (sg<=0)
					{
						sg 				= 1.0;
						DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
					}

					WC /= sg;
				}
			}
			else if ( !(Density_Correction_Mode.val && FC[0].enable_DENSITY && (WC_STAT != rollover) && is_valid_type) )
			{// Else: Do the following, UNLESS Density Correction is properly enabled
				
				/* note: handle this more intelligently, with coil logic, etc */
				DIO_PV_PERCMASS = FALSE;
				FC[0].Dadj = 0.0;
			}

			if (FULL_SAMPLE)      
			{   /**************average filter   ******************/   
			 	for (N_WC = 1; N_WC < REG_WC_NUM_SAMPLES.val; N_WC++)
			 		WC_SAMPLE[N_WC] = WC_SAMPLE[N_WC+1];	 	
			 	
			 	N_WC 			= REG_WC_NUM_SAMPLES.val;
			 	WC_SAMPLE[N_WC] = WC;
			 	WC_SUM 			= 0;
			 	
			 	for (N_WC = REG_WC_NUM_SAMPLES.val; N_WC > 0; N_WC--)
			 		WC_SUM += WC_SAMPLE[N_WC];
			 	
			 	if (REG_WC_NUM_SAMPLES.val > 1)      /*for test, no need of this condition*/
			 		WC = WC_SUM / REG_WC_NUM_SAMPLES.val;
			  	/**************average filter   ******************/
			    
			    /**************Gas carry under   *************/ 
			    if ((GAS_ENTRAINED_DENS_DETECT.val==TRUE)&&(FC[0].density.calc_val>0))   
			    {
			    	t = Convert(FC[0].density.class, FC[0].density.calc_unit, u_mpv_kg_cm, FC[0].density.calc_val, 0, FC[0].density.aux);
			    	
			    	if(((t + 5)< ((WC*10)+(100-WC)*8.25))&&((WC_previous - WC) > 10)) //wtf is this about?
			    	{
			    		WC 				 = WC_previous; 
			    		REG_WATERCUT_RAW = WC_previous;
			    	}
			    }
			    /**************END: Gas carry under   *************/
		    
			 	/* only update the REG_WATERCUT variable here!!! */
				VAR_Update(&REG_WATERCUT, WC, 0, 0);  
				
				
				/*******************low salt mode   ***********************/   
				if(LOW_SALT_MODE)   
					VAR_Update(&REG_WATERCUT, wc_lowsalt, 0, 0);
				/*****************END: low salt mode **********************/
				
				switch(WC_STAT)
				{
					case rollover: REG_WATERCUT.STAT |= var_aux | var_alarm_hi | var_bound_hi; break;
					default: REG_WATERCUT.STAT &= (var_aux ^ 0xFFFFFFFF); break;
				}

				{/* set watercut alarm */
					DIAGNOSTICS[0] &= (ERROR_WC_UNDERRANGE | ERROR_WC_OVERRANGE)^0xFFFF;
					
					if (REG_WATERCUT.STAT & var_alarm_lo)
					{
						DIAGNOSTICS[0] |= ERROR_WC_UNDERRANGE;
						error 			= TRUE;
					}
	
					if (REG_WATERCUT.STAT & var_alarm_hi)
					{
						DIAGNOSTICS[0] |= ERROR_WC_OVERRANGE;
						error 			= TRUE;
					}
				 /* set watercut alarm */}

				//for (i=0;i<FCMAX;i++)
				//{
	
					if (USE_PDI_WATERCUT.val)
					{/* set the flow computer watercuts to reflect the PDI watercut */
						if (REG_WATERCUT.STAT & var_NaNum)
							VAR_NaN(&FC[0].watercut);
						else
							VAR_Update(&FC[0].watercut, REG_WATERCUT.calc_val * sg, 0, 0);
						
						if (CALC_WC_DENSITY.val)			//don't have both enabled at the same time
							CALC_WC_DENSITY.val = FALSE;

					}
					else if (CALC_WC_DENSITY.val)
					{/* Use watercut calculated by flow computer's density */
						VAR_Update(&FC[0].watercut, REG_WATERCUT_DENSITY.calc_val, 0, 0);
					}
				//}
			}

			{/* update values and stretch integer scale to 0-30000 */
				VAR_Update(&REG_VINC_O, REG_VINC[OSC_OIL_CALC].calc_val, 0, 0);
				VAR_Update(&REG_VREF_O, REG_VREF[OSC_OIL_CALC].calc_val, 0, 0);
				VAR_Update(&REG_FREQ_O, REG_FREQ[OSC_OIL_CALC].calc_val, 0, 0);
				VAR_Update(&REG_VINC_W, REG_VINC[OSC_WATER_CALC].calc_val, 0, 0);
				VAR_Update(&REG_VREF_W, REG_VREF[OSC_WATER_CALC].calc_val, 0, 0);
				VAR_Update(&REG_FREQ_W, REG_FREQ[OSC_WATER_CALC].calc_val, 0, 0);
				
				IP_O 		= REG_VINC[OSC_OIL_CALC].val;
				RP_O 		= REG_VREF[OSC_OIL_CALC].val;
				IP_RP_O 	= IP_O/RP_O;
				DB_IP_RP_O 	= 20.0*(log(IP_RP_O)/log(10.0));
                FREQ_O 		= REG_FREQ[OSC_OIL_CALC].val;
				IP_W 		= REG_VINC[OSC_WATER_CALC].val;
				RP_W 		= REG_VREF[OSC_WATER_CALC].val;
				IP_RP_W 	= IP_W/RP_W;
				DB_IP_RP_W 	= 20.0*(log(IP_RP_W)/log(10.0));
                FREQ_W 		= REG_FREQ[OSC_WATER_CALC].val;
				
				/*
				i_IP_O 		= FS(&REG_VINC[OSC_OIL_CALC]);
				i_RP_O 		= FS(&REG_VREF[OSC_OIL_CALC]);
				i_FREQ_O 	= FS(&REG_FREQ[OSC_OIL_CALC]);
				i_IP_W 		= FS(&REG_VINC[OSC_WATER_CALC]);
				i_RP_W 		= FS(&REG_VREF[OSC_WATER_CALC]);
				i_FREQ_W 	= FS(&REG_FREQ[OSC_WATER_CALC]);
				i_TEMP 		= FS(&REG_TEMPERATURE_USER); //Changed to User Temperature 2/4/2016
                i_WC 		= FS(&REG_WATERCUT);
				*/
								
				i_IP_O 		= FS(&REG_VINC[OSC_OIL_CALC]);
				i_RP_O 		= FS2(&REG_VREF[OSC_OIL_CALC],&Plot_Limit_Oil_RP_Low,&Plot_Limit_Oil_RP_High);
				i_FREQ_O 	= FS2(&REG_FREQ[OSC_OIL_CALC],&Plot_Limit_Oil_Freq_Low,&Plot_Limit_Oil_Freq_High);
				i_IP_W 		= FS(&REG_VINC[OSC_WATER_CALC]);
				i_RP_W 		= FS2(&REG_VREF[OSC_WATER_CALC],&Plot_Limit_Water_RP_Low,&Plot_Limit_Water_RP_High);
				i_FREQ_W 	= FS2(&REG_FREQ[OSC_WATER_CALC],&Plot_Limit_Water_Freq_Low,&Plot_Limit_Water_Freq_High);
				i_TEMP 		= FS2(&REG_TEMPERATURE_USER,&Plot_Limit_Temp_Low,&Plot_Limit_Temp_High); //Changed to User Temperature 2/4/2016
                i_WC 		= FS2(&REG_WATERCUT,&Plot_Limit_Watercut_Low,&Plot_Limit_Watercut_High);
				
			}

			if (FULL_SAMPLE)
			{/* sample data for capture registers */
				if (DIO_CAP_WATER.val && (Cap_Water.i>0))
					Get_CAPDATA(&Cap_Water);
				
				if (DIO_CAP_OIL.val && (Cap_Oil.i>0))
					Get_CAPDATA(&Cap_Oil);
			}

			{/* OSC SELECT */
				i = 0;
				while(TRUE)
				{
					//VT_SELECT++;
					i++;
                    // ADDED BY DKOH FOR CROSS SELECT OSCILLATOR [MAY 7, 2019]
                    if (VT_SELECT == 0) VT_SELECT = 2;
                    else if (VT_SELECT == 2) VT_SELECT = 1;
                    else if (VT_SELECT == 1) VT_SELECT = 3;
                    else VT_SELECT = 0;

                    /* if you are outside the range, go to osc zero */
					if ((VT_SELECT >= VTMAX) || (VT_SELECT < 0))
						VT_SELECT = 0;
					               
                    /* if you find an oscillator that works, break out */
					if (ENABLED[VT_SELECT])
						break;
					               
                    /* if counter is outside allowed range, break out -  i.e. while only happens four times */
					if (i>=VTMAX)
						break;
				}

				if (!SA)
				{/* EEA */
					if (EXTUNE) /* if externally tuned, update DAC with 5, otherwise update DAC with 0 */
						VAR_Update(&REG_DAC[DAC_TUNESEL], 5.0, 0, 0);
					else
						VAR_Update(&REG_DAC[DAC_TUNESEL], 0.0, 0, 0);
					
					Write_DAC(DAC_TUNESEL);

					switch (VT_SELECT)
					{
						case 0:
						{
							if (REG_DAC[DAC_OSCSEL].calc_val>5.0) 
								OSWITCH = TRUE;
							else 
								OSWITCH = FALSE;
							
							osv = 1.25;
							break;
						}
	                    case 1:
						{
							if (REG_DAC[DAC_OSCSEL].calc_val>5.0) 
								OSWITCH = TRUE;
							else 
								OSWITCH = FALSE;
							
							osv = 3.75;
							break;
						}
	                    case 2:
						{
							if (REG_DAC[DAC_OSCSEL].calc_val<5.0) 
								OSWITCH = TRUE;
							else 
								OSWITCH = FALSE;
							
							osv = 6.25;
							break;
						}
	                    case 3:
						default:
						{
							if (REG_DAC[DAC_OSCSEL].calc_val<5.0) 
								OSWITCH = TRUE;
							else 
								OSWITCH = FALSE;
							
							osv = 8.75;
							break;
						}
					}

					VAR_Update(&REG_DAC[DAC_OSCSEL], osv, 0, 0);
					Write_DAC(DAC_OSCSEL);
				}
				else
				{/* SA */
					if (OSC[VT_SELECT])
					{/* select water osc */
						if (OSC_SEL==OIL_OSC)
							OSWITCH = TRUE;
						else
							OSWITCH = FALSE;
						
						SELECT_OSC_WAT;
					}
					else
					{/* select oil osc */
						if (OSC_SEL==OIL_OSC)
							OSWITCH = FALSE;
						else
							OSWITCH = TRUE;
						
						SELECT_OSC_OIL;
					}
				}

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

				if (OSWITCH)
					Timer_Insert(&TMR_OSC_DELAY_LONG,0,TMR_action_replace);
				else
					Timer_Insert(&TMR_OSC_DELAY_SHORT,0,TMR_action_replace);
			}
		}

		GIEP;
	}
	else
	{
		Read_RTC();
		Timer_Insert(&TMR_POLL,0,TMR_action_replace);
	}

}
int FS(VAR* v)
{
	float			min,max,m;
	float			min2,max2;

	min2 = VAR_Get_Unit_Param(v, reg_direct_bmin, 0, 0);
	max2 = VAR_Get_Unit_Param(v, reg_direct_bmax, 0, 0);
	min = 0.0;
	max = fabs(max2-min2);
	m = (maxint-minint)/(max-min);
	return round((v->val-min2)*m + minint, 0);
}


int FS2(VAR* v, VAR* low_plot, VAR* high_plot)
{
	float	min,max,m,min2,max2;
	
	//convert to proper units
	min2 = Convert(v->class, low_plot->unit, v->unit, low_plot->val, 0, v->aux);
	max2 = Convert(v->class, high_plot->unit, v->unit, high_plot->val, 0, v->aux);
	
	if (min2 >= max2) //ensure valid fcn parameters
		return 0;
		
	min = 0.0;
	max = fabs(max2-min2);
	m = (maxint-minint)/(max-min);
	return round((v->val-min2)*m + minint, 0);
}


int Span(float v, float min2, float max2, int mini, int maxi)
{
	float			m;
	float			min,max;
	int				i;

	min = 0.0;
	max = fabs(max2-min2);
	m = (maxi-mini)/(max-min);
	i = round((v-min2)*m + mini, 0);
	if (i>maxi) i = maxi;
	if (i<mini) i = mini;
	return i;
}

void Setup_Sample(void)
{
	_GIEP;

	SAMPLE_PENDING = TRUE;

	Setup_Gate(&GATE_TIME, &PRESCALE, TRUE, DIO_AUX_FREQ_MODE);

	RESTART_GATE_TIMER;

	READ_ADC_INPUTS = 0;

	if (SA) Convert_ADC();

	Timer_Insert(&TMR_POLL,0,TMR_action_replace);

	Timer_Create(&TMR_SAMPLE_ERROR, ((4.0*GATE_TIME)+1.0), 1, (int*)Sampling_Error, 0);
	Timer_Insert(&TMR_SAMPLE_ERROR,0,TMR_action_replace);

	CURRENT_OSC = OSC[VT_SELECT];

	GIEP;
}

unsigned int Calc_CRC(unsigned int* s, unsigned int n)
{
	int i,j,k;
	unsigned int t;
	unsigned int CRC;

	DISABLE_WDOG;

	CRC = GSEED_DEFAULT;

	for(j=0;j<n;j++)
	{
		t = s[j];

		for (k=0;k<4;k++)
		{
			CRC ^= (t & 0xFF);

			for (i=0;i<8;i++)
			{	
				if (CRC & 0x01)
				{
					CRC >>= 1;
					CRC ^= GPOLY;
				}
				else
				{
					CRC >>= 1;
				}
			}

			t >>= 8;
		}
	}

	ENABLE_WDOG;

	return CRC;
}

void Refresh_IDEC_Time(void)
{
	if (!RTC_PRESENT) return;

	_GIEP;

	{/* update the time & date */
		IDEC_SA[4].val = RTC[7] & 0x1F;
		IDEC_SA[4].val |= (RTC[8]<<8) & 0xFF00;
		IDEC_SA[5].val = RTC[4] & 0x3F;
		IDEC_SA[5].val |= (RTC[6]<<8) & 0x3F00;
		IDEC_SA[6].val = RTC[2] & 0x7F;
		IDEC_SA[6].val |= (RTC[3]<<8) & 0x7F00;
		IDEC_SA[7].val ^= 0x8000;
	}

	Timer_Create(&TMR_REFRESH_TIME, 30.0, 1, (int*)Refresh_IDEC_Time, 1);
	Timer_Insert(&TMR_REFRESH_TIME,0,TMR_action_replace);

	GIEP;
}

void Reset_IDEC(int id)
{
	IDEC_SA[0].val = SCREEN_LOGO;	/* set screen */
}

void Set_IDEC_Port(int id)
{
	if (SA && ((id<0) || (id>=2))) return;
	else if ((id<0) || (id>=UART_MAX)) return;

	IDEC_PORT = id;
}

void Set_Time(int id)
{
	if (!RTC_PRESENT) return;

	if ((IDEC_SA[7].val) & 0x8000)
	{/* update the time & date */
		_GIEP;
		RTC[7] = (IDEC_SA[4].val) & 0x1F;
		RTC[8] = (IDEC_SA[4].val>>8) & 0xFF;
		RTC[4] = (IDEC_SA[5].val) & 0x3F;
		RTC[6] = (IDEC_SA[5].val>>8) & 0x3F;
		RTC[2] = (IDEC_SA[6].val) & 0x7F;
		RTC[3] = (IDEC_SA[6].val>>8) & 0x7F;
		Write_DS1340(0, 3, &RTC[2]);
		Write_DS1340(4, 3, &RTC[6]);

		RTC[1]  = 0x00;	/* reset the OSF */
		DIAGNOSTICS[1] &= 0xFFFFFFFF ^ ERROR2_TIME_RESET;
		Write_DS1340(8, 2, &RTC[0]);

		IDEC_SA[7].val &= 0x7FFF;
		Timer_Create(&TMR_REFRESH_TIME, 1.0, 1, (int*)Refresh_IDEC_Time, 1);
		Timer_Insert(&TMR_REFRESH_TIME,0,TMR_action_replace);
		GIEP;
	}
}

void Set_Density_Correction(int id)
{
	switch(Density_Correction_Mode.val)
	{
		case 0:
		case 1:
		case 4:
		case 6:
		{
			FC[0].USE_PDI_TEMP = TRUE;
			break;
		}

		default:
		{
			FC[0].USE_PDI_TEMP = FALSE;
			break;
		}
	}

	if (Density_Correction_Mode.val==0)
	{
		FC[0].enable_DENSITY = FALSE;
	}
	else
	{
		FC[0].enable_DENSITY = TRUE;
	}

/* todo: when changing DCM_PORT, be sure to remove all existing packets from MASTER and instert into MASTER_EMPTY */

	Modbus_Initialize(DCM_PORT.val);
}

void Copy_CAPDATA(CAPDATA* p, BOOL to_coeff, BOOL clr)
{
	unsigned int	i, j;
	int				num_samp;
	BOOL			cleared;

	_GIEP

	if (p == &Cap_Oil)
	{
		num_samp = Num_Oil_Samples.val;
		j = 0;
	}
	else
	{
		num_samp = Num_Water_Samples.val;
		j = 1;
	}

	i = (int)round(REG_STREAM_SELECT.val,0) - 1.0;

	if (clr || ((!to_coeff) && (((Cap_Records[i].CLRSTAT_Time_YEAR[j]&0xFFFF0000) != 0xA5A50000))))
	{
		p->Watercut				= 0.0;
		p->Temperature			= 0.0;
		p->Frequency_Oil		= 0.0;
		p->Frequency_Water		= 0.0;
		p->RefPower_Oil			= 0.0;
		p->RefPower_Water		= 0.0;
		p->Salinity				= 0.0;
		p->Dadj					= 0.0;

		p->Time_HH				= 0;
		p->Time_MM				= 0;
		p->Time_MONTH			= 0;
		p->Time_DAY				= 0;
		p->Time_DAY_OF_WEEK		= 0;
		p->Time_YEAR			= 0;

		p->i 					= 0;

		cleared = TRUE;
	}
	else
	{
		cleared = FALSE;
	}

	if (to_coeff)
	{
		Cap_Records[i].Watercut[j]				= p->Watercut;
		Cap_Records[i].Temperature[j]			= p->Temperature;
		Cap_Records[i].Salinity[j]				= p->Salinity;
		Cap_Records[i].Frequency_Oil[j]			= p->Frequency_Oil;
		Cap_Records[i].Frequency_Water[j]		= p->Frequency_Water;
		Cap_Records[i].RefPower_Oil[j]			= p->RefPower_Oil;
		Cap_Records[i].RefPower_Water[j]		= p->RefPower_Water;
		Cap_Records[i].Dadj[j]					= p->Dadj;
		Cap_Records[i].Time_MONTH_DAY_HH_MM[j]	= (p->Time_MONTH<<24)|(p->Time_DAY<<16)|(p->Time_HH<<8)|(p->Time_MM);
		Cap_Records[i].CLRSTAT_Time_YEAR[j]		= (0xA5A50000)|(p->Time_YEAR<<8)|(p->Time_DAY_OF_WEEK);

		if (clr) Cap_Records[i].CLRSTAT_Time_YEAR[j] &= 0xFFFF;
        
        if(DIO_MANUAL_RESET.val || DIO_CLEAR_COUNTERS.val);
        else
			CHANGE = TRUE;
	}
	else
	if (!cleared)
	{
		p->Watercut				= Cap_Records[i].Watercut[j];
		p->Temperature			= Cap_Records[i].Temperature[j];
		p->Salinity				= Cap_Records[i].Salinity[j];
		p->Frequency_Oil		= Cap_Records[i].Frequency_Oil[j];
		p->Frequency_Water		= Cap_Records[i].Frequency_Water[j];
		p->RefPower_Oil			= Cap_Records[i].RefPower_Oil[j];
		p->RefPower_Water		= Cap_Records[i].RefPower_Water[j];
		p->Dadj					= Cap_Records[i].Dadj[j];

		p->Time_MM				= (Cap_Records[i].Time_MONTH_DAY_HH_MM[j]    ) &0xFF;
		p->Time_HH				= (Cap_Records[i].Time_MONTH_DAY_HH_MM[j]>> 8) &0xFF;
		p->Time_DAY				= (Cap_Records[i].Time_MONTH_DAY_HH_MM[j]>>16) &0xFF;
		p->Time_MONTH			= (Cap_Records[i].Time_MONTH_DAY_HH_MM[j]>>24) &0xFF;
		p->Time_DAY_OF_WEEK		= (Cap_Records[i].CLRSTAT_Time_YEAR[j]       ) &0xFF;
		p->Time_YEAR			= (Cap_Records[i].CLRSTAT_Time_YEAR[j]   >> 8) &0xFF;

		p->i					= num_samp;	/* make the sample appear to be complete */        		
	}

	GIEP;
}

void Calibrate_OIL(VAR* v)
{/* adjust Cal Factor */
	float t;
	double sg;
	int mode;

	if (DEMO) mode = DEMO_ANALYZER_MODE.val;
	else mode = ANALYZER_MODE.val;

	if ((DIO_PV_PERCMASS) && ((Density_Correction_Mode.val) && (((mode&0xFF)==SUB_LOW)||((mode&0xFF)==SUB_MID)) && (FC[0].enable_DENSITY)))
	{
		sg = Convert(c_mass_per_volume, FC[0].density.calc_unit, u_mpv_sg_15C, FC[0].density.calc_val, 0, FC[0].density.aux);
		if (sg<=0)
		{
			sg = 1.0;
			DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
		}
	}
	else
	{
		sg = 1.0;
	}

	_GIEP;

	if (Cap_Oil.i < Num_Oil_Samples.val)
    {
	    if (REG_EMULSION_PHASE.calc_val==0.0)
	    {
			if ((REG_WATERCUT.STAT & var_aux)==0)	/* if not rollover */
			{
		    	t = (v->calc_val*sg) - (REG_WATERCUT_RAW + FC[0].Dadj);

		    	VAR_Update(&REG_OIL_ADJ, t, 0, 0);
		    }
	    }
	    else
	    {
    		DIAGNOSTICS_ERROR_CODE = E_ERROR_OIL_CAL_NOT_OIL_CONTINUOUS;
	    }
	}
	else
	{
    	t = v->calc_val - (Cap_Oil.Watercut + Cap_Oil.Dadj);
    	VAR_Update(&REG_OIL_ADJ, t, 0, 0);
	}

	REG_CAL_OIL.calc_val = 0.0;
	REG_CAL_OIL.val = 0.0;

	GIEP;
}

void Calibrate_WATER(VAR* v)
{/* perform Salinity Cal */
	// float				wci;  //not needed?   /*changed from wc to wci, as made WC global   */
	float				f;
	float				t;

	long double			wl;
	long double			coeffl[4];

	long double			wh;
	long double			coeffh[4];

	long double			wt1;
	long double			wt2;
	long double			s;
	
	long double			salt_high;
	long double			salt_low;

	int					sl;
	int					sh;
	int					tl;
	int					th;

	long double t_adj_calc;     /*Convert temp_adj unit to Temp_extl calc_unit for calc_value   */
    
	_GIEP;

	if (Cap_Water.i < Num_Water_Samples.val)      /*used for Hsalt and not enough captured data, Cap_Water.i will be cleared if Hsalt is enabled*/
    {
	    if (REG_EMULSION_PHASE.calc_val!=1.0)
	    {
    		DIAGNOSTICS_ERROR_CODE = E_ERROR_SALINITY_CAL_NOT_WATER_CONTINUOUS;
			GIEP;
    		return;
    	}

		//wci = REG_WATERCUT.base_val; //not needed?

		if (HSALT.ENABLED.val==TRUE)
		{/* Heuristic Salinity Routine */
			t = 37.778;	/* set to standard 100degF temperature curve */
		}
		else
		{
			/*****Convert temp_adj unit to Temp_extl calc_unit for calc_value   *****/ 
			t_adj_calc = Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, REG_TEMPERATURE_EXTERNAL.calc_unit, REG_TEMPERATURE_USER_ADJUST.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);
	    	t = REG_TEMPERATURE_EXTERNAL.calc_val + t_adj_calc;/*Temp adjust   */
		}

		f = REG_FREQ[OSC_WATER_CALC].calc_val; 
		/* 	
			Note: We can't use HSALT.Fmin ^ here because the 
			current freq is used when heuristic is disabled!
		*/
	}
	else                                                   
	{
		//wci = Cap_Water.Watercut; //not needed?
		t = Cap_Water.Temperature;
		f = Cap_Water.Frequency_Water;
	}

	/*new salt cal routine manual stop   * does not run into here when capture!
	if (CAP_WATER_STOP.val)
	{
		VAR_Update(&Num_Water_Samples, Cap_Water.i, 0, 0);
		CAP_WATER_STOP.val = FALSE;	
	}   	
	/*new salt cal routine manual stop   */
	
	if (TEMP_WATER_MAX >= 15) TEMP_WATER_MAX = 14;
	if (SALT_MAX >= 20) SALT_MAX = 19;

	for (th=1;th<=TEMP_WATER_MAX;th++)
	{/* scan temperature list until it exceeds t */
		if (t<TEMPS_WATER[th]) break;
	}
	tl = th - 1; /* set tl to previous temperature curve which should be less than t */

	sl = SALT_MAX - 1;	/* set min salt curve to highest salt */

	while(1)
	{
		coeffh[0] = COEFF_SALT_TEMP_WATER[sl][th][0];
		coeffh[1] = COEFF_SALT_TEMP_WATER[sl][th][1];
		coeffh[2] = COEFF_SALT_TEMP_WATER[sl][th][2];
		coeffh[3] = COEFF_SALT_TEMP_WATER[sl][th][3];
		wh = coeffh[3]*f*f*f +
		 	 coeffh[2]*f*f   +
			 coeffh[1]*f     +
			 coeffh[0];

		coeffl[0] = COEFF_SALT_TEMP_WATER[sl][tl][0];
		coeffl[1] = COEFF_SALT_TEMP_WATER[sl][tl][1];
		coeffl[2] = COEFF_SALT_TEMP_WATER[sl][tl][2];
		coeffl[3] = COEFF_SALT_TEMP_WATER[sl][tl][3];
		wl = coeffl[3]*f*f*f +
			 coeffl[2]*f*f   +
			 coeffl[1]*f     +
			 coeffl[0];

		wt1 = Interpolate(wl, TEMPS_WATER[tl], wh, TEMPS_WATER[th], t);

		if (v->calc_val <= wt1) break;
		/* calculate until salinity causes a result exceeding WC */

		sl --;

		if (sl<0)
		{
			sl = 0;
			break;
		}
	}

	sh = sl + 1;

	coeffh[0] = COEFF_SALT_TEMP_WATER[sh][th][0];
	coeffh[1] = COEFF_SALT_TEMP_WATER[sh][th][1];
	coeffh[2] = COEFF_SALT_TEMP_WATER[sh][th][2];
	coeffh[3] = COEFF_SALT_TEMP_WATER[sh][th][3];
	wh = coeffh[3]*f*f*f +
	 	 coeffh[2]*f*f   +
		 coeffh[1]*f     +
		 coeffh[0];

	coeffl[0] = COEFF_SALT_TEMP_WATER[sh][tl][0];
	coeffl[1] = COEFF_SALT_TEMP_WATER[sh][tl][1];
	coeffl[2] = COEFF_SALT_TEMP_WATER[sh][tl][2];
	coeffl[3] = COEFF_SALT_TEMP_WATER[sh][tl][3];
	wl = coeffl[3]*f*f*f +
		 coeffl[2]*f*f   +
		 coeffl[1]*f     +
		 coeffl[0];

	wt2 = Interpolate(wl, TEMPS_WATER[tl], wh, TEMPS_WATER[th], t);
	
	salt_low = log(SALTS[sl]);
	salt_high = log(SALTS[sh]);

	s = Interpolate(salt_low, wt1, salt_high, wt2, v->calc_val);
	s = exp(s);
	
/*	if ((REG_FREQ[OSC_WATER_CALC].calc_val>=REG_FREQ_WATER_LO.calc_val) && (REG_FREQ[OSC_WATER_CALC].calc_val<=REG_FREQ_WATER_HI.calc_val)&&(HSALT.ENABLED.val==TRUE))
	{    
    		s =	HSALT.S3 * HSALT.Fmin * HSALT.Fmin * HSALT.Fmin +
				HSALT.S2 * HSALT.Fmin * HSALT.Fmin +
				HSALT.S1 * HSALT.Fmin +
				HSALT.S0;}   */ 
				
   	VAR_Update(&REG_SALINITY, s, 0, 0);

	if (REG_SALINITY.STAT & var_alarm_lo)
	{
		DIAGNOSTICS_ERROR_CODE = E_ERROR_SALINITY_CAL_UNDERRANGE;
	}
	else
	if (REG_SALINITY.STAT & var_alarm_hi)
	{
		DIAGNOSTICS_ERROR_CODE = E_ERROR_SALINITY_CAL_OVERRANGE;
	}

	REG_CAL_WATER.calc_val = 0.0;
	REG_CAL_WATER.val = 0.0;

	GIEP;
}


/*
long double SaltSpan(void)
{
	long double spn, slt;

	{// calculate span for desired salinity curve 
		slt =	HSALT.S3 * HSALT.Fmin * HSALT.Fmin * HSALT.Fmin +
				HSALT.S2 * HSALT.Fmin * HSALT.Fmin +
				HSALT.S1 * HSALT.Fmin +
				HSALT.S0;

		if (slt>=HSALT.SPLOB)
		{
			if (slt<HSALT.SPLOB) slt = HSALT.SPLOB;
			else
			if (slt>HSALT.SPHIB) slt = HSALT.SPHIB;

			spn =	HSALT.SP3B * slt * slt * slt +
					HSALT.SP2B * slt * slt +
					HSALT.SP1B * slt +
					HSALT.SP0B;
		}
		else
		{
			if (slt<HSALT.SPLOA) slt = HSALT.SPLOA;
			else
			if (slt>HSALT.SPHIA) slt = HSALT.SPHIA;

			spn =	HSALT.SP3A * slt * slt * slt +
					HSALT.SP2A * slt * slt +
					HSALT.SP1A * slt +
					HSALT.SP0A;
		}
	}

	spn = fabs(spn);

	if (spn<1.0) spn = 1.0;
	else if (spn>20.0) spn = 20.0;

	return spn;
}
*/

void CLEAR_PORT_COUNT(int id)
{
	PORT[id].ERROR_COUNT = 0;
	PORT[id].WDOG_COUNT = 0;
	PORT[id].INV_CMD_COUNT = 0;
	PORT[id].INV_PKT_COUNT = 0;
	PORT[id].SUCCESS = 0;
}

BOOL Get_CAPDATA(CAPDATA* p)
{
	int r, num_samp;   
	long double t_adj_calc;     /*Convert temp_adj unit to Temp_extl calc_unit for calc_value   */

	_GIEP;

	r = TRUE;

	if (p == &Cap_Oil)
	{
		num_samp = Num_Oil_Samples.val;
	}
	else
	{
		num_samp = Num_Water_Samples.val;
	}

    if (((!DIO_CAP_WATER.val)||(REG_EMULSION_PHASE.calc_val!=1.0)) && (p == &Cap_Water))
	{
		DIO_CAP_WATER.val = FALSE;
   		if (REG_EMULSION_PHASE.calc_val!=1.0) DIAGNOSTICS_ERROR_CODE = E_ERROR_SALINITY_CAL_NOT_WATER_CONTINUOUS;
   		r = FALSE;
	}
	else
    if (((!DIO_CAP_OIL.val)||(REG_EMULSION_PHASE.calc_val!=0.0)) && (p == &Cap_Oil))
	{
		DIO_CAP_OIL.val = FALSE;
		if (REG_EMULSION_PHASE.calc_val!=0.0) DIAGNOSTICS_ERROR_CODE = E_ERROR_OIL_CAL_NOT_OIL_CONTINUOUS;
		r = FALSE;
	}
	else
	{
		/* 
			[Previous Average] * (n-1) + [Next Value]
			-----------------------------------------
								n
		*/
		if (p->i == 0)
		{
			Copy_CAPDATA(p, 1, 1);	/* clear */
		}
		else
		{	// Multiply by (n-1)
			p->Watercut				*= p->i;
			p->Temperature			*= p->i;
			p->Frequency_Oil		*= p->i;
			p->Frequency_Water		*= p->i;
			p->RefPower_Oil			*= p->i;
			p->RefPower_Water		*= p->i;
			p->Dadj					*= p->i;
			p->Salinity				*= p->i;
		}
		
		// Add next value
		p->Watercut					+= REG_WATERCUT_RAW;  
		/*****Convert temp_adj unit to Temp_extl calc_unit for calc_value   *****/ 
		t_adj_calc = Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, REG_TEMPERATURE_EXTERNAL.calc_unit, REG_TEMPERATURE_USER_ADJUST.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);
		p->Temperature				+= REG_TEMPERATURE_EXTERNAL.calc_val + t_adj_calc; /*make Capture include temperature adjust   */
		p->Frequency_Oil			+= REG_FREQ[OSC_OIL_CALC].calc_val;
		p->Frequency_Water			+= REG_FREQ[OSC_WATER_CALC].calc_val;
		p->RefPower_Oil				+= REG_VREF[OSC_OIL_CALC].calc_val;
		p->RefPower_Water			+= REG_VREF[OSC_WATER_CALC].calc_val;
		p->Dadj						+= FC[0].Dadj;
		p->Salinity					+= REG_SALINITY.val;
		
		p->i++; // increase counter

		if (p->i == 1) //if we just cleared the counter
		{
			if (!RTC_PRESENT)
			{
				p->Time_HH				= (IDEC_SA[9].val) & 0xFF;
				p->Time_MM				= (IDEC_SA[10].val>>8) & 0xFF;
				p->Time_MONTH			= (IDEC_SA[8].val) & 0xFF;
				p->Time_DAY				= (IDEC_SA[9].val>>8) & 0xFF;
				p->Time_DAY_OF_WEEK		= (IDEC_SA[11].val) & 0x0F;
				p->Time_YEAR			= (IDEC_SA[8].val>>8) & 0xFF;
			}
			else
			{
				p->Time_HH				= RTC[4] & 0x3F;
				p->Time_MM				= RTC[3] & 0x7F;
				p->Time_MONTH			= RTC[7] & 0x1F;
				p->Time_DAY				= RTC[6] & 0x3F;
				p->Time_DAY_OF_WEEK		= RTC[5] & 0x07;
				p->Time_YEAR			= RTC[8] & 0xFF;
			}
			// ( no need to divide by (n) )
		}
		else
		{	// Divide by (n)
			p->Watercut				/= p->i;
			p->Temperature			/= p->i;
			p->Frequency_Oil		/= p->i;
			p->Frequency_Water		/= p->i;
			p->RefPower_Oil			/= p->i;
			p->RefPower_Water		/= p->i;
			p->Dadj					/= p->i;
			p->Salinity				/= p->i;
		}

		/*if (p->i >= num_samp)*/ /*new salt cal routine manual stop, not use num_samp as indicate of complete   */
		
		
		if ((p->i >= CAPTURE_SAMPLES)||(CAP_WATER_STOP.val)||(CAP_OIL_STOP.val))   /*new salt cal routine manual stop   */
		{/* signal the completion of capture data */
			Copy_CAPDATA(p, 1, 0);

			if (p == &Cap_Oil)
			{
				DIO_CAP_OIL.val = FALSE;  
				CAP_OIL_STOP.val = FALSE;               /*new salt cal routine manual stop   */
				VAR_Update(&Num_Oil_Samples, p->i, 0, 0);     /*new salt cal routine manual stop   */
			}
			else
			{
				DIO_CAP_WATER.val = FALSE;
				CAP_WATER_STOP.val = FALSE;    /*new salt cal routine manual stop   */  
				VAR_Update(&Num_Water_Samples, p->i, 0, 0);     /*new salt cal routine manual stop   */
			}

			CHANGE = TRUE;               
		}
	}

	GIEP;                                                                                              

	return r;
}

void Capture_Watercut_Water(int id)
{
	if (!DIO_CAP_WATER.val)
	{
		Copy_CAPDATA(&Cap_Water, 1, 1);	/* clear */
		DIO_CAP_WATER.val = FALSE;
		
		if(DIO_MANUAL_RESET.val || DIO_CLEAR_COUNTERS.val);
		else
			CHANGE = TRUE;
			
		return;
	}

	if ((Cap_Water.i == 0) || (SA && B202_PORT && (id==0)) || (!SA && (id==4)))
	{
		Cap_Water.i = 0;
		Get_CAPDATA(&Cap_Water);	/* user must clear record prior to sampling, ignore if HART */
	}
}

void Capture_Watercut_Oil(int id)
{
	if (!DIO_CAP_OIL.val)
	{
		Copy_CAPDATA(&Cap_Oil, 1, 1);	/* clear */
		DIO_CAP_OIL.val = FALSE;
		CHANGE = TRUE;
		return;
	}

	if ((Cap_Oil.i == 0) || (SA && B202_PORT && (id==0)) || (!SA && (id==4)))
	{
		Cap_Oil.i = 0;
		Get_CAPDATA(&Cap_Oil);	/* user must clear record prior to sampling, ignore if HART */
	}
}

void PVAVG24(void)
{
	/* 5min = 300 samples */
	/* 24hr = 288 samples of 5min */
	
	/* int REG_PV_AVG_CNT */
	/* float REG_PV_AVG_1sec */
	/* BFR PV_SAMPLES_5min */
	
	int	si;			/* sum integer */
	float t; 		/* sample */
	float* f;
	float* s;
	unsigned int fi;/* first integer */
	
	_GIEP;
	REG_PV_AVG_CNT++;
	f = (float*) &fi;
	s = (float*) &si;

	if (PV_SAMPLES_5min.n >= 300)
	{/* since this uses a buffer, the raw float is stored and handled as an integer */
		fi 					 = Get(&PV_SAMPLES_5min);
		si 					 = PV_SAMPLES_5min.sum;
		s[0]   				-= f[0];
		PV_SAMPLES_5min.sum  = si;
	}

	t 					 = REG_WATERCUT.val;
	REG_PV_AVG_1sec 	 = t;
	f[0] 				 = t;
	si 					 = PV_SAMPLES_5min.sum;
	s[0] 		   		+= f[0];
	PV_SAMPLES_5min.sum  = si;

	Put(&PV_SAMPLES_5min, fi, 0);

	t 				= (s[0] / PV_SAMPLES_5min.n);
	REG_PV_AVG_5min = t;

	if (((REG_PV_AVG_CNT%300) == 0) || (PV_SAMPLES_24hr.n == 0))
	{/* if reset or starting for the first time */
		if (PV_SAMPLES_24hr.n != 0) 
			REG_PV_AVG_CNT = 0;

		if (PV_SAMPLES_24hr.n >= 288)
		{/* since this uses a buffer, the raw float is stored and handled as an integer */
			fi 					 = Get(&PV_SAMPLES_24hr);
			si 					 = PV_SAMPLES_24hr.sum;
			s[0] 				-= f[0];
			PV_SAMPLES_24hr.sum  = si;
		}

		t 					 = REG_PV_AVG_5min;
		f[0] 				 = t;
		si 					 = PV_SAMPLES_24hr.sum;
		s[0] 				+= f[0];
		PV_SAMPLES_24hr.sum  = si;

		Put(&PV_SAMPLES_24hr, fi, 0);

		t 				= (s[0] / PV_SAMPLES_24hr.n);
		REG_PV_AVG_24hr = t;
	}

	GIEP;
}

void PV_AVERAGE(VAR* v)
{
	unsigned int	fi;
	int				si;
	float*	f;
	float*	s;
	float	t;

	if (v->STAT & var_NaNum)
	{
		return;
	}

	_GIEP;

	f = (float*) &fi;
	s = (float*) &si;

	if (PV_SAMPLES.n >= REG_NUM_SAMP.val)
	{
		/* since this uses a buffer, the raw float is stored and handled as an integer */
		fi = Get(&PV_SAMPLES);
		si = PV_SAMPLES.sum;
		s[0] -= f[0];
		PV_SAMPLES.sum = si;
	}

	t = v->base_val;
	f[0] = t;
	si = PV_SAMPLES.sum;
	s[0] += f[0];
	PV_SAMPLES.sum = si;

	Put(&PV_SAMPLES, fi, 0);

	t = (s[0] / PV_SAMPLES.n);
	v->base_val = t;

	GIEP;
}

void System_Reset(void)
{
	_GIEP;
	MASTER_RESET;
	while(1){}
}

void System_Restart(void)
{
	_GIEP;
	c_int00();
	while(1){}
}

void Set_Temperature_Unit(void)
{
	if (DIO_TEMP_C.val)
	{
		REG_TEMPERATURE_EXTERNAL.unit = u_temp_C;
		REG_TEMPERATURE_AVG.unit = u_temp_C; /*  */ 
		CCM_GAS_TEMPERATURE.unit = u_temp_C; /*Gas Temperature   */		
	}
	else
	{
		REG_TEMPERATURE_EXTERNAL.unit = u_temp_F; 
		REG_TEMPERATURE_AVG.unit = u_temp_F; /*  */	
		CCM_GAS_TEMPERATURE.unit = u_temp_F; /*Gas Temperature   */	   
	}

	Set_ASCII_Temp_Unit(&REG_TEMPERATURE_EXTERNAL);   
	Set_ASCII_Temp_Unit(&REG_TEMPERATURE_AVG);   /*  */
	Set_ASCII_Temp_Unit(&CCM_GAS_TEMPERATURE);   /*Gas Temperature   */
}

void Set_ASCII_Temp_Unit(VAR* v)
{
	long double s;
	int u_old;
	int u_new;
	int u_calc;
	long double	m;

	_GIEP;

	{/* set the user-adjust units & recalculate value for proper slope! */
		u_old = REG_TEMPERATURE_USER.unit;
		u_new = REG_TEMPERATURE_EXTERNAL.unit;
		u_calc = REG_TEMPERATURE_EXTERNAL.calc_unit;

		REG_TEMPERATURE_USER.unit = REG_TEMPERATURE_EXTERNAL.unit;
		REG_TEMPERATURE_USER.calc_unit = REG_TEMPERATURE_EXTERNAL.unit;

		REG_TEMPERATURE_AVG.unit = REG_TEMPERATURE_EXTERNAL.unit;     /*  */
		REG_TEMPERATURE_AVG.calc_unit = REG_TEMPERATURE_EXTERNAL.unit;/*  */  
		
		CCM_GAS_TEMPERATURE.unit = REG_TEMPERATURE_EXTERNAL.unit;     /*Gas Temperature   */
		CCM_GAS_TEMPERATURE.calc_unit = REG_TEMPERATURE_EXTERNAL.unit;/*Gas Temperature   */

		REG_TEMPERATURE_USER_ADJUST.unit = REG_TEMPERATURE_EXTERNAL.unit;
		REG_TEMPERATURE_USER_ADJUST.calc_unit = REG_TEMPERATURE_EXTERNAL.unit;  
		
		s = Convert(REG_TEMPERATURE_EXTERNAL.class, u_old, u_new, REG_TEMPERATURE_USER_ADJUST.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);

		VAR_Update(&REG_TEMPERATURE_USER_ADJUST, s, 0, 0);
	}

	switch(v->unit & 0x00FF)
	{
		case u_emf_V:
		{
			U_TEMP_ASCII = ' '<<8 | 'V';	/* V */
			break;
		}

		case u_temp_F:
		{
			U_TEMP_ASCII = (0xB0<<8) | 'F';	/* deg F */
			break;
		}

		case u_temp_K:
		{
			U_TEMP_ASCII = (0xB0<<8) | 'K';	/* deg K */
			break;
		}

		case u_temp_C:
		{
			U_TEMP_ASCII = (0xB0<<8) | 'C';	/* deg C */
			break;
		}

		case u_temp_R:
		{
			U_TEMP_ASCII = (0xB0<<8) | 'R';	/* deg R */
			break;
		}

		default:
		{
			U_TEMP_ASCII = ' '<<8 | ' ';
			break;
		}
	}

	GIEP;
}

void Calibrate_RTD(void)
{/* a 1 means set high RTD resistance voltage, 0 means set low RTD resistance voltage */
	float f;

	f = ((float)ADC_INT[ADC_Text]*ADC_TRIM_F_1[ADC_Text]/ADC_TRIM_I_1[ADC_Text]);

	switch (RTD_CAL.val)
	{
		case 0: RTD_CAL_LO_V = f; break;
		case 1: RTD_CAL_HI_V = f; break;
	}
}

void RESEARCH(void)
{
	int i;
	unsigned int tmp0;
	float val[3];
	BOOL A;                           
	int	VT;
	int L_offset;
	float osv;

	_GIEP;

	if (PORT[PDI_id].LONG_ADDRESS) L_offset = EXTENDED_ADDR_LEN;
	else L_offset = 0;

	switch(PORT[PDI_id].func)
	{
		case mb_cmd_pdi_analyzer_setup: // it looks like this command code is never sent? -DHA
		{
			for (i=0;i<(2+L_offset);i++)
			{
				Put(&TXbuf[PDI_id], RXbuf[PDI_id].buff[i], 1);
			}

			A = (RXbuf[PDI_id].buff[14+L_offset] & 0x80);

            if (A)
            {
            	DIO_RESEARCH_MODE.val = TRUE;
            }
            else
            {
            	DIO_RESEARCH_MODE.val = FALSE;
            }

			if (!DIO_RESEARCH_MODE.val)
			{
				IDEC_SA[0].val = SCREEN_LOGO;
				RESEARCH_FORCE_MODE = FALSE;

				for (i=0;i<VTMAX;i++)
				{
					VT_SELECT = i;
					VAR_Update(&REG_VTUNE_SET[i], RESEARCH_VTUNE[i], 0, 0);
					ENABLED[i] = RESEARCH_ENABLED[i];
					OSC[i] = RESEARCH_OSC[i];
				}

				VT_SELECT = 0;

				GATE_TIME = RESEARCH_GATE;
				PRESCALE = RESEARCH_PS;

				Timer_Create(&TMR_OSC_DELAY_LONG, REG_osc_settle_long.calc_val, 1, (int*)Setup_Sample, 0);

				Prepare_TX(PDI_id, 0);

				Timer_Insert(&TMR_OSC_DELAY_LONG,0,TMR_action_replace);

				break;
			}

			IDEC_SA[0].val = SCREEN_RA_NOTIFY;
			RESEARCH_FORCE_MODE = TRUE;

			for (i=0;i<VTMAX;i++)
			{
				VT_SELECT = i;
				RESEARCH_VTUNE[i] = REG_VTUNE_SET[i].calc_val;
				RESEARCH_ENABLED[i] = ENABLED[i];
				RESEARCH_OSC[i] = OSC[i];
			}

			tmp0 =  (unsigned int) (RXbuf[PDI_id].buff[2+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[3+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[4+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[5+L_offset] & 0xFF);
            val[0] = FMIEEE(tmp0);	/* gate */

			tmp0 =  (unsigned int) (RXbuf[PDI_id].buff[6+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[7+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[8+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[9+L_offset] & 0xFF);
            val[1] = FMIEEE(tmp0);	/* prescale */

			tmp0 =  (unsigned int) (RXbuf[PDI_id].buff[10+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[11+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[12+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[13+L_offset] & 0xFF);
            val[2]= FMIEEE(tmp0); /* osc delay */

			RESEARCH_GATE = GATE_TIME;
			RESEARCH_PS = PRESCALE;
			GATE_TIME = val[0];
			PRESCALE = val[1];
			Timer_Create(&TMR_OSC_DELAY_LONG, val[2], 1, (int*)Setup_Sample, 0);

			{/* setup profile */
				VT_SELECT = 0;
				i = 0;

				ENABLED[i] = TRUE;

				for (i=1;i<VTMAX;i++)		/* Disable all others!!! */
				{
					ENABLED[i] = FALSE;
				}
			}

			Prepare_TX(PDI_id, 0);

			break;
		}

		case mb_cmd_pdi_analyzer_sample:
		{
           	if (DIO_RESEARCH_MODE.val)
           	{
				{/* setup parameters */
					EXTUNE = TRUE;

					if ((RXbuf[PDI_id].buff[2+L_offset] & 0x04) && RESEARCH_FORCE_MODE)
					{/* user-supplied vtune */
						VT_SELECT = 0;

						ENABLED[VT_SELECT] = TRUE;

						tmp0 =  (unsigned int) (RXbuf[PDI_id].buff[3+L_offset] & 0xFF);
						tmp0 = tmp0 << 8;
						tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[4+L_offset] & 0xFF);
						tmp0 = tmp0 << 8;
						tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[5+L_offset] & 0xFF);
						tmp0 = tmp0 << 8;
						tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[6+L_offset] & 0xFF);

			            val[0] = FMIEEE(tmp0);

						VAR_Update(&REG_VTUNE_SET[VT_SELECT], val[0], 0, 0);

						if (RXbuf[PDI_id].buff[2+L_offset] & 0x02)
						{
							OSC[VT_SELECT] = TRUE;
						}
						else
						{
							OSC[VT_SELECT] = FALSE;
						}

						if (!SA)
						{
							VAR_Update(&REG_DAC[DAC_TUNESEL], 5.0, 0, 0);
							Write_DAC(DAC_TUNESEL);

							if (OSC[VT_SELECT])
							{
								if (REG_DAC[DAC_OSCSEL].calc_val<5.0) OSWITCH = TRUE;
								else OSWITCH = FALSE;
								osv = 8.75;
							}
							else
							{
								if (REG_DAC[DAC_OSCSEL].calc_val>5.0) OSWITCH = TRUE;
								else OSWITCH = FALSE;
								osv = 1.25;
							}
						}
					}
					else
					{/* internal preset vtune */
						VT = (int) (RXbuf[PDI_id].buff[2+L_offset] & 0x03);
						if (VT<0) VT = 0;
						else if (VT>(VTMAX-1)) VT = VTMAX-1;
						VT_SELECT = VT;

						if (!SA)
						{
							EXTUNE = FALSE;
							VAR_Update(&REG_DAC[DAC_TUNESEL], 0.0, 0, 0);
							Write_DAC(DAC_TUNESEL);

							switch (VT_SELECT)
							{
								case 0:
								{
									if (REG_DAC[DAC_OSCSEL].calc_val>5.0) OSWITCH = TRUE;
									else OSWITCH = FALSE;
									osv = 1.25;
									break;
								}
							
								case 1:
								{
									if (REG_DAC[DAC_OSCSEL].calc_val>5.0) OSWITCH = TRUE;
									else OSWITCH = FALSE;
									osv = 3.75;
									break;
								}
							
								case 2:
								{
									if (REG_DAC[DAC_OSCSEL].calc_val<5.0) OSWITCH = TRUE;
									else OSWITCH = FALSE;
									osv = 6.25;
									break;
								}
							
								case 3:
								default:
								{
									if (REG_DAC[DAC_OSCSEL].calc_val<5.0) OSWITCH = TRUE;
									else OSWITCH = FALSE;
									osv = 8.75;
									break;
								}
							}
						}
					}

					if (SA)
					{/* setup osc */
						if (OSC[VT_SELECT])
						{/* select water osc */
							if (OSC_SEL==OIL_OSC)
							{
								OSWITCH = TRUE;
							}
							else
							{
								OSWITCH = FALSE;
							}

							SELECT_OSC_WAT;
						}
						else
						{/* select oil osc */
							if (OSC_SEL==OIL_OSC)
							{
								OSWITCH = FALSE;
							}
							else
							{
								OSWITCH = TRUE;
							}

							SELECT_OSC_OIL;
						}
					}

					VAR_Update(&REG_DAC[DAC_OSCSEL], osv, 0, 0);

					if (!SA) Write_DAC(DAC_OSCSEL);
					VAR_Update(&REG_DAC[DAC_VTUNE], REG_VTUNE_SET[VT_SELECT].calc_val, 0, 0);
					Write_DAC(DAC_VTUNE);
	
					if (OSWITCH)
					{
						Timer_Insert(&TMR_OSC_DELAY_LONG,0,TMR_action_replace);
					}
					else
					{
						Timer_Insert(&TMR_OSC_DELAY_SHORT,0,TMR_action_replace);
					}
				}
				break;
			}
			/* do not break here */
		}

		default:
		{
			DIO_RESEARCH_MODE.val = FALSE;
			RESEARCH_FORCE_MODE = FALSE;
			VT = (int) (RXbuf[PDI_id].buff[2+L_offset] & 0x03); // VTUNE?
			if (VT<0) VT = 0;
			else if (VT>(VTMAX-1)) VT = VTMAX-1;
			Send_Sample(VT);
			break;
		}
	}

	GIEP;
}

void CopyTempVars(void)
{
	int i;
	float t;
	MPKT* p;

	VAR_Update(&REG_TEMPERATURE_EXTERNAL, TMP_TEMP, 0, 0);
	
	//This was overwriting the pulse input user temp. Moved to inside the conditional below.
	//VAR_Update(&REG_TEMPERATURE_USER, REG_TEMPERATURE_EXTERNAL.val+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);
	
	if(DIO_TEMP_C.val==FALSE){AVG_TEMP=(AVG_TEMP*1.8)+32;}  
	
	VAR_Update(&REG_TEMPERATURE_AVG, AVG_TEMP+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);    /*AVG TEMP   */
    

	if (FC[0].USE_PDI_TEMP)
	{
		VAR_Update(&REG_TEMPERATURE_USER, REG_TEMPERATURE_EXTERNAL.val+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);
		VAR_Update(&FC[0].T, Convert(FC[0].T.class, REG_TEMPERATURE_USER.calc_unit, FC[0].T.calc_unit, REG_TEMPERATURE_USER.calc_val, 0, FC[0].T.aux), 0, 0);
	}

	if (FC[0].USE_PDI_SALINITY)
	{
		VAR_Update(&FC[0].salinity, Convert(FC[0].salinity.class, REG_SALINITY.unit, FC[0].salinity.unit, REG_SALINITY.val, 0, FC[0].salinity.aux), 0, 0);
	}

	{/* write temperature to Coriolis */
	    if ((Density_Correction_Mode.val==4)||(Density_Correction_Mode.val==5))
		{
			if ( (DCM_PORT.val!=2) && (DCM_PORT.val>=0) && (DCM_PORT.val<UART_MAX) )
			{/* DCM cannot be 2 AND is between 0 and UART_MAX */
				t = Convert(FC[0].T.class, FC[0].T.unit, COR[0].u_T, FC[0].T.val, 0, FC[0].T.aux);
				p = Master_Create((int*) 0, 1, 1, mb_cmd_w_regs, 449, 1, t);
				List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
			}
		}
	}

	for (i=0;i<VTMAX;i++)
	{
		if (ENABLED[i])
		{
			VAR_Update(&REG_VTUNE[i], TMP_VTUNE[i], 0, 0);
	
			VAR_Update(&REG_VINC[i], TMP_VINC[i], 0, 0);
	
			VAR_Update(&REG_VREF[i], TMP_VREF[i], 0, 0);
	
			if (TMP_FREQ[i]<0)
			{
				VAR_NaN(&REG_FREQ[i]);
			}
			else
			{
				if (i == OSC_OIL_CALC) 
					TMP_FREQ[i] += REG_OIL_INDEX.calc_val;
				else if (i == OSC_WATER_CALC) 
					TMP_FREQ[i] += REG_WATER_INDEX.calc_val;
				
				VAR_Update(&REG_FREQ[i], TMP_FREQ[i], 0, 0);
			}
		}
		else
		{
			VAR_NaN(&REG_FREQ[i]);
			VAR_NaN(&REG_VTUNE[i]);
			VAR_NaN(&REG_VINC[i]);
			VAR_NaN(&REG_VREF[i]);
		}
	}
}


void Freq_oil_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_FREQ[OSC_OIL_CALC], reg_direct_bmin, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_FREQ[OSC_OIL_CALC], reg_direct_alarm_lo, v->val, 0, 0);
}
void Freq_oil_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_FREQ[OSC_OIL_CALC], reg_direct_bmax, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_FREQ[OSC_OIL_CALC], reg_direct_alarm_hi, v->val, 0, 0);
}
void Freq_water_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_FREQ[OSC_WATER_CALC], reg_direct_bmin, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_FREQ[OSC_WATER_CALC], reg_direct_alarm_lo, v->val, 0, 0);
}
void Freq_water_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_FREQ[OSC_WATER_CALC], reg_direct_bmax, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_FREQ[OSC_WATER_CALC], reg_direct_alarm_hi, v->val, 0, 0);
}
void Temp_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_bmin, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_alarm_lo, v->val, 0, 0);
}
void Temp_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_bmax, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_alarm_hi, v->val, 0, 0);
}
void Watercut_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_WATERCUT, reg_direct_bmin, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, reg_direct_alarm_lo, v->val, 0, 0);
}
void Watercut_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_WATERCUT, reg_direct_bmax, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, reg_direct_alarm_hi, v->val, 0, 0);
}
void Oil_RP_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_VREF[OSC_OIL_CALC], reg_direct_bmin, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_VREF[OSC_OIL_CALC], reg_direct_alarm_lo, v->val, 0, 0);
}
void Oil_RP_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_VREF[OSC_OIL_CALC], reg_direct_bmax, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_VREF[OSC_OIL_CALC], reg_direct_alarm_hi, v->val, 0, 0);
}
void Water_RP_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_VREF[OSC_WATER_CALC], reg_direct_bmin, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_VREF[OSC_WATER_CALC], reg_direct_alarm_lo, v->val, 0, 0);
}
void Water_RP_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_VREF[OSC_WATER_CALC], reg_direct_bmax, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_VREF[OSC_WATER_CALC], reg_direct_alarm_hi, v->val, 0, 0);
}




void Timer_T(void)
{
	REG_TIME++;
	if (REG_TIME>1728000) REG_TIME = 0;
	else if (REG_TIME<0) REG_TIME = 0;
}

void Send_Sample(int VT)
{
	unsigned int tmp0;
	unsigned int tmp1;
	unsigned int tmp2;
	unsigned int tmp3;
	int id;
	float val[34];
	int i;
	int L_offset;

	CopyTempVars();

	id = PDI_id;

	if (PORT[id].LONG_ADDRESS) L_offset = EXTENDED_ADDR_LEN;
	else L_offset = 0;

	for (i=0;i<(2+L_offset);i++)
	{
		Put(&TXbuf[id], RXbuf[id].buff[i], 1); // slave num & fxn?
	}

	Put(&TXbuf[id], VT, 1);	// VTUNE

    val[0] = REG_FREQ[VT].calc_val;
    val[1] = REG_VREF[VT].calc_val;
    val[2] = REG_VINC[VT].calc_val;
    val[3] = REG_VTUNE[VT].calc_val;
    val[4] = REG_TEMPERATURE_EXTERNAL.calc_val;
    val[5] = REG_ADC[ADC_Tint].calc_val;
    val[6] = SN_PIPE;
    val[7] = REG_WATERCUT_RAW;
    val[8] = REG_OIL_ADJ.calc_val;
    val[9] = REG_WATER_ADJ.calc_val;
    val[10] = REG_OIL_INDEX.calc_val;
    val[11] = REG_WATER_INDEX.calc_val;
    val[12] = REG_SALINITY.val;
    val[13] = OIL_P1.calc_val;
    val[14] = OIL_P0.calc_val;
    val[15] = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmin, 0, 0);
    val[16] = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmax, 0, 0);
    val[17] = REG_FREQ[OSC_OIL_CALC].calc_val;
    val[18] = REG_VREF[OSC_OIL_CALC].calc_val;
    val[19] = REG_VINC[OSC_OIL_CALC].calc_val;
    val[20] = REG_VTUNE[OSC_OIL_CALC].calc_val;
    val[21] = REG_FREQ[OSC_WATER_CALC].calc_val;
    val[22] = REG_VREF[OSC_WATER_CALC].calc_val;
    val[23] = REG_VINC[OSC_WATER_CALC].calc_val;
    val[24] = REG_VTUNE[OSC_WATER_CALC].calc_val;

    /* kg/m3 at process temperature */
	val[25] = Convert(FC[0].density.class, FC[0].density.calc_unit, u_mpv_kg_cm, FC[0].density.calc_val, 0, FC[0].density.aux);

	/* degAPI at 60F */
	val[26] = Convert(Density_Cal.class, Density_Cal.calc_unit, u_mpv_deg_API_60F, FC[0].density_PDI_corrected, 0, FC[0].density.aux);

	val[27] = COR[0].vfr;
	val[28] = COR[0].diag;
	val[29] = AI[0].CURRENT.val;
	val[30] = FC[0].T.calc_val;
	val[31] = Density_Correction_Mode.val;
	val[32] = ANALYZER_MODE.val;
	val[33] = REG_WATERCUT.base_val;

	for (i=0;i<34;i++)
	{
		tmp0 = TOIEEE(val[i]);
		tmp1 = tmp0 >> 8;
		tmp2 = tmp1 >> 8;
		tmp3 = tmp2 >> 8;

		{/* DCBA format */
			Put(&TXbuf[id], tmp0, 1);
			Put(&TXbuf[id], tmp1, 1);
			Put(&TXbuf[id], tmp2, 1);
			Put(&TXbuf[id], tmp3, 1);
		}
	}

	Prepare_TX(id, 0);
}

long double Interpolate(long double w1, long double t1, long double w2, long double t2, long double t)
{
	long double w;

	w = w2 - ((t2-t)*(w2-w1)/(t2-t1));

	return w;
}                                                       

BOOL Set_Research_Mode(void)
{
	if (DIPSWITCH[0] == 0) // v.6.13.34
		DIO_RESEARCH_MODE.val = FALSE;	
		
	if (!DIO_RESEARCH_MODE.val && !RESEARCH_FORCE_MODE)
	{
		Setup_Sample();
	}
}

void UnLock_P0(VAR* v)
{
	UnLock_P(0);
}

void UnLock_P1(VAR* v)
{
	UnLock_P(1);
}

void UnLock_P2(VAR* v)
{
	UnLock_P(2);
}

void UnLock_P3(VAR* v)
{
	UnLock_P(3);
}

void UnLock_P4(VAR* v)     /*unlock heuristic routine   */
{
	UnLock_P(4);
}
          
void UnLock_P(int n)
{
	_GIEP;
    
    REG_PW[4] = (SN_PIPE<<1) ^ 1251;   /*Heuristic routine password  -  */
    if ((REG_LOCK[n].val==REG_PW[n]) && !LOCKOUT)
	{
		DIO_LOCK[n].val = FALSE;
		REG_LOCK[n].val = 0;
		if (n==0)
			Submit_Write_CFG_USER();
		
		else if (n==4)
			Submit_Write_CFG_USER();  /*stay unlocked heuristic routine   */
		
		else if (n==1)
		{/* unlock all others */
			DIO_LOCK[0].val = FALSE;
			REG_LOCK[0].val = 0;
			DIO_LOCK[2].val = FALSE;
			REG_LOCK[2].val = 0;
			DIO_LOCK[3].val = FALSE;
			REG_LOCK[3].val = 0;
			DIO_LOCK[4].val = FALSE;  /*unlock HS too   */
			REG_LOCK[4].val = 0;
		}
	}
	else
	{
		DIO_LOCK[n].val = TRUE;
		REG_LOCK[n].val = 0;
		LOCKOUT = TRUE;
		Timer_Insert(&TMR_CLEAR_LOCKOUT,0,TMR_action_replace);
	}

	GIEP;
}

void Put_IEEE(int id, VAR* v)
{
	int tmp0;

	if ((v->STAT & var_NaNum) || (v==(VAR*)0))
	{
		tmp0 = NaN;
	}
	else
	{
		tmp0 = TOIEEE(v->val);
	}
	Put(&TXbuf[id], tmp0>>24, 1);
	Put(&TXbuf[id], tmp0>>16, 1);
	Put(&TXbuf[id], tmp0>>8, 1);
	Put(&TXbuf[id], tmp0, 1);
}

void Unpack_ASCII(unsigned int* s, unsigned int* d, int np)
{
	/* np = length of packed data in bytes */
	/* SOURCE = 6 bit packed ASCII bytes */
	/* DEST = 8 bit ASCII pairs */
	int				i,j;
	int				n;
	unsigned int	t[100];

	n = (np*8)/6;

	if ((n>100) || (n<1)) return;

	for(i=0;i<n;i++)
	{
		t[i] = 0;
	}

	j=0;
	for(i=0;i<np;i++)
	{
		t[4*j]   = ((s[3*i]>>2) & 0x3F);
		t[4*j+1] = ((((s[3*i]&0x03)<<4) | ((s[3*i+1]&0xF0)>>4)) & 0x3F);
		t[4*j+2] = ((((s[3*i+1]&0x0F)<<2) | ((s[3*i+2]&0xC0)>>6)) & 0x3F);
		t[4*j+3] = ((s[3*i+2]) & 0x3F);
		j++;
	}

	for(i=0;i<n;i++)
	{
		if (!(t[i] & 0x20)) t[i] |= 0x40;
	}

	for (i=0;i<(n/2);i++)
	{
		d[i] = ((t[2*i]<<8) | t[2*i+1]) & 0xFFFF;
	}
}

void Pack_ASCII(unsigned int* s, unsigned int* d, int n)
{
	/* n = length of unpacked data in bytes */
	/* SOURCE = 8 bit ASCII pairs */
	/* DEST = 6 bit packed ASCII bytes */
	int				i,j;
	int				np;
	unsigned int	t[100];

	if ((n>100) || (n<1)) return;

	np = (n*6)/8;
	if ((n*6)%8) return;				/* make sure it is evenly packed */

	for(i=0;i<n;i++)
	{
		t[2*i]   = (s[i]>>8) & 0x3F;	/* copy + truncate to 6 bits */
		t[2*i+1] =  s[i]     & 0x3F;	/* copy + truncate to 6 bits */
	}

	for(i=0;i<np;i++)
	{
		d[i]=0;							/* clear packed ascii array */
	}

	j=0;
	for(i=0;i<np;i++)
	{
		switch (i%3)
		{
			case 0:
			{
				d[i] = (t[j+i]<<2) | (t[1+j+i]>>4);
				break;
			}

			case 1:
			{
				d[i] = ((t[j+i]&0x0F)<<4) | (t[1+j+i]>>2);
				break;
			}

			case 2:
			{
				d[i] = ((t[j+i]&0x03)<<6) | t[1+j+i];
				j++;
				break;
			}
		}
	}
}

void Reset_PID_Bias(VAR *v)
{
	unsigned int i;
	for(i=0;i<AO_NLOOPS;i++)
		AO[i].pid_bias = 0;	
}


void Mirror_To_Stream_Table(VAR* v)
{
/*********************************************************************/
/* NOTE: do not autosave because every time a stream is changed      */
/*       it will Var_Update the REG and this routine is activated!!! */
/*********************************************************************/
	unsigned int i;
	int*	vect;

	_GIEP;

	i = (int)round(REG_STREAM_SELECT.val,0) - 1.0;

	SALINITY[i]  = REG_SALINITY.val;
	OIL_ADJ[i]   = REG_OIL_ADJ.val;
	WATER_ADJ[i] = REG_WATER_ADJ.val;

	VAR_Set_Unit_Param(&REG_WATERCUT, reg_direct_alarm_lo, REG_WATERCUT_ALARM_LO.val, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, reg_direct_alarm_hi, REG_WATERCUT_ALARM_HI.val, 0, 0);
	WATER_ALARM_LO[i] = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_alarm_lo, 0, 0);
	WATER_ALARM_HI[i] = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_alarm_hi, 0, 0);

	CCM_SETPOINT_P1[i] = CCM_SETPOINT_PRESSURE[0].calc_val;
	CCM_SETPOINT_P2[i] = CCM_SETPOINT_PRESSURE[1].calc_val;
	CCM_SETPOINT_L1[i] = CCM_SETPOINT_LEVEL[0].calc_val;
	CCM_SETPOINT_L2[i] = CCM_SETPOINT_LEVEL[1].calc_val;
    
    /*Add stream select for Hsalt and Gas routine   */
    HSALT_ENABLE[i] 	  = HSALT.ENABLED.val;				
	GAS_ROUTINE_ENABLE[i] =	GAS_ENTRAINED.val;
	HSALT_MIN_FLOW[i] 	  =	HSALT.flow_threshold.calc_val;
	
	stream_bubble_length[i] = bubble_new_length.val;
	stream_pattern_length[i] = pattern_new_length.val;

	
	// if the boxcar_minutes was updated
	if ((int*)v == (int*)&boxcar_expire_val_minutes)
	{
		/// update boxcar length
		vect = boxcar_expire_val.vect2;
		boxcar_expire_val.vect2 = NULL_PTR; 
		VAR_Update(&boxcar_expire_val, floor(boxcar_expire_val_minutes.val * 60 / 2.67), 0, 0); //convert minutes to samples
		boxcar_expire_val.vect2 = vect;
		
		if (stream_boxcar_expire_minutes[i] != boxcar_expire_val_minutes.val)
		{
			stream_boxcar_expire_minutes[i] = boxcar_expire_val_minutes.val;
			boxcar_reset_needed = TRUE; // If anything changes we need to reset the boxcar
		}
	}
	stream_boxcar_expire[i] = boxcar_expire_val.val;
	
	
	
	stream_delta_temp[i] = REG_DELTA_TEMP.val;
	
	/*Add option to force phase on each stream   */
	OIL_PHASE_ONLY_ENABLE[i]  = OIL_PHASE_ONLY.val;
	WATER_PHASE_ONLY_ENABLE[i]= WATER_PHASE_ONLY.val;  
	/*Add PID to stream table   */     
	LIQ_VALVE_P[i] = AO[1].P.calc_val;
	LIQ_VALVE_I[i] = AO[1].I.calc_val;  
	LIQ_VALVE_D[i] = AO[1].D.calc_val;  
	GAS_VALVE_P[i] = AO[2].P.calc_val;
	GAS_VALVE_I[i] = AO[2].I.calc_val;  
	GAS_VALVE_D[i] = AO[2].D.calc_val;
	
	GIEP;
}

void Mirror_From_Stream_Table(VAR* v)
{
	unsigned int i;
	int*	vect;

	_GIEP;

	i = (int)round(REG_STREAM_SELECT.val,0) - 1.0;

	vect = REG_SALINITY.vect2;
	REG_SALINITY.vect2 = NULL_PTR;
	VAR_Update(&REG_SALINITY, SALINITY[i], 0, 0);
	REG_SALINITY.vect2 = vect;
		
	vect = REG_OIL_ADJ.vect2;
	REG_OIL_ADJ.vect2 = NULL_PTR;
	VAR_Update(&REG_OIL_ADJ, OIL_ADJ[i], 0, 0);
	REG_OIL_ADJ.vect2 = vect;

	vect = REG_WATER_ADJ.vect2;
	REG_WATER_ADJ.vect2 = NULL_PTR;
	VAR_Update(&REG_WATER_ADJ, WATER_ADJ[i], 0, 0);
	REG_WATER_ADJ.vect2 = vect;

	vect = REG_WATERCUT_ALARM_LO.vect2;
	REG_WATERCUT_ALARM_LO.vect2 = NULL_PTR;
	VAR_Update(&REG_WATERCUT_ALARM_LO, WATER_ALARM_LO[i], 0, 0);
	REG_WATERCUT_ALARM_LO.vect2 = vect;

	vect = REG_WATERCUT_ALARM_HI.vect2;
	REG_WATERCUT_ALARM_HI.vect2 = NULL_PTR;
	VAR_Update(&REG_WATERCUT_ALARM_HI, WATER_ALARM_HI[i], 0, 0);
	REG_WATERCUT_ALARM_HI.vect2 = vect;

	VAR_Set_Unit_Param(&REG_WATERCUT, reg_direct_alarm_lo, REG_WATERCUT_ALARM_LO.val, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, reg_direct_alarm_hi, REG_WATERCUT_ALARM_HI.val, 0, 0);

	{/* process variable averaging */
		Clear(&PV_SAMPLES);
		PV_SAMPLES.sum = 0x80000000;		/* force to float 0.0 */

		Clear(&PV_SAMPLES_24hr);
		PV_SAMPLES_24hr.sum = 0x80000000;	/* force to float 0.0 */
		REG_PV_AVG_24hr = 0.0;

		Clear(&PV_SAMPLES_5min);
		PV_SAMPLES_5min.sum = 0x80000000;	/* force to float 0.0 */
		REG_PV_AVG_5min = 0.0;

		REG_PV_AVG_1sec = 0.0;
		REG_PV_AVG_CNT = 0;
	}

	Copy_CAPDATA(&Cap_Water, 0, 0);
	Copy_CAPDATA(&Cap_Oil, 0, 0);

	vect = CCM_SETPOINT_PRESSURE[0].vect2;
	CCM_SETPOINT_PRESSURE[0].vect2 = NULL_PTR;
	VAR_Update(&CCM_SETPOINT_PRESSURE[0], CCM_SETPOINT_P1[i], 0, 0);
	CCM_SETPOINT_PRESSURE[0].vect2 = vect;

	vect = CCM_SETPOINT_PRESSURE[1].vect2;
	CCM_SETPOINT_PRESSURE[1].vect2 = NULL_PTR;
	VAR_Update(&CCM_SETPOINT_PRESSURE[1], CCM_SETPOINT_P2[i], 0, 0);
	CCM_SETPOINT_PRESSURE[1].vect2 = vect;

	vect = CCM_SETPOINT_LEVEL[0].vect2;
	CCM_SETPOINT_LEVEL[0].vect2 = NULL_PTR;
	VAR_Update(&CCM_SETPOINT_LEVEL[0], CCM_SETPOINT_L1[i], 0, 0);
	CCM_SETPOINT_LEVEL[0].vect2 = vect;

	vect = CCM_SETPOINT_LEVEL[1].vect2;
	CCM_SETPOINT_LEVEL[1].vect2 = NULL_PTR;
	VAR_Update(&CCM_SETPOINT_LEVEL[1], CCM_SETPOINT_L2[i], 0, 0);
	CCM_SETPOINT_LEVEL[1].vect2 = vect;

	HSALT_CLEAR();       
	
	/*Add stream select for Hsalt and Gas routine   */
    vect = HSALT.ENABLED.vect2;
	HSALT.ENABLED.vect2 = NULL_PTR;
    HSALT.ENABLED.val 	= HSALT_ENABLE[i];	 
    HSALT.ENABLED.vect2 = vect;
    
    vect = GAS_ENTRAINED.vect;
	GAS_ENTRAINED.vect = NULL_PTR;
	GAS_ENTRAINED.val 	 = GAS_ROUTINE_ENABLE[i]; 
	GAS_ENTRAINED.vect = vect;
	
	vect = HSALT.flow_threshold.vect2;
	HSALT.flow_threshold.vect2 = NULL_PTR;
	VAR_Update(&HSALT.flow_threshold, HSALT_MIN_FLOW[i], 0, 0);  
	HSALT.flow_threshold.vect2 = vect;
	
	vect = bubble_new_length.vect2;
	bubble_new_length.vect2 = NULL_PTR;
	VAR_Update(&bubble_new_length, stream_bubble_length[i], 0, 0);
	bubble_new_length.vect2 = vect;
	
	vect = pattern_new_length.vect2;
	pattern_new_length.vect2 = NULL_PTR;
	VAR_Update(&pattern_new_length, stream_pattern_length[i], 0, 0);
	pattern_new_length.vect2 = vect;
	
	vect = REG_DELTA_TEMP.vect2;
	REG_DELTA_TEMP.vect2 = NULL_PTR;
	VAR_Update(&REG_DELTA_TEMP, stream_delta_temp[i], 0, 0);
	REG_DELTA_TEMP.vect2 = vect;

	boxcar_expire_val_minutes.val = stream_boxcar_expire_minutes[i];
	vect = boxcar_expire_val.vect2;
	boxcar_expire_val.vect2 = NULL_PTR; 
	VAR_Update(&boxcar_expire_val, floor(boxcar_expire_val_minutes.val * 60 / 2.67), 0, 0); //convert minutes to samples
	boxcar_expire_val.vect2 = vect;
	stream_boxcar_expire[i] = boxcar_expire_val.val;
	boxcar_reset_needed = TRUE; // If anything changes we need to reset the boxcar
		
	/*Add option to force phase on each stream   */		
    vect = OIL_PHASE_ONLY.vect;
	OIL_PHASE_ONLY.vect = NULL_PTR;
	OIL_PHASE_ONLY.val  = OIL_PHASE_ONLY_ENABLE[i];
	OIL_PHASE_ONLY.vect = vect;    
	
	vect = WATER_PHASE_ONLY.vect;
	WATER_PHASE_ONLY.vect = NULL_PTR;
	WATER_PHASE_ONLY.val  = WATER_PHASE_ONLY_ENABLE[i];
	WATER_PHASE_ONLY.vect = vect;            
	
	/*Add PID to stream table   */  
	vect = AO[1].P.vect2;
	AO[1].P.vect2 = NULL_PTR;
	VAR_Update(&AO[1].P, LIQ_VALVE_P[i], 0, 0);
	AO[1].P.vect2 = vect; 
	
	vect = AO[1].I.vect2;
	AO[1].I.vect2 = NULL_PTR;
	VAR_Update(&AO[1].I, LIQ_VALVE_I[i], 0, 0);
	AO[1].I.vect2 = vect;
	
	vect = AO[1].D.vect2;
	AO[1].D.vect2 = NULL_PTR;
	VAR_Update(&AO[1].D, LIQ_VALVE_D[i], 0, 0);
	AO[1].D.vect2 = vect; 
	
	vect = AO[2].P.vect2;
	AO[2].P.vect2 = NULL_PTR;
	VAR_Update(&AO[2].P, GAS_VALVE_P[i], 0, 0);
	AO[2].P.vect2 = vect;  
	
	vect = AO[2].I.vect2;
	AO[2].I.vect2 = NULL_PTR;
	VAR_Update(&AO[2].I, GAS_VALVE_I[i], 0, 0);
	AO[2].I.vect2 = vect;
	
	vect = AO[2].D.vect2;
	AO[2].D.vect2 = NULL_PTR;
	VAR_Update(&AO[2].D, GAS_VALVE_D[i], 0, 0);
	AO[2].D.vect2 = vect;
	
	GIEP;
}

void BEEP_OFF(void)
{
	/* turn off beep */
	DIO_BEEP.val = FALSE;
	IDEC_SA[1].val &= 0x40^0xFFFFFFFF;
}

void BEEP_ON(void)
{
	/* turn on beep */
	if (DIO_BEEP.val)
	{
		IDEC_SA[1].val |= 0x00000040;
		Timer_Insert(&TMR_BEEP_OFF,0,TMR_action_add_if_not_exist);
	}
	else
	{
		IDEC_SA[1].val &= 0x40^0xFFFFFFFF;
		Timer_Insert(&TMR_BEEP_OFF,0,TMR_action_delete);
	}
}

void STATUS_LED_on(void)
{
	if (LED_GREEN==2)
	{
		LEDS_ON;
	}
	else
	if (LED_GREEN)
	{
		LEDG_ON;
		LEDR_OFF;
	}
	else
	{
		LEDG_OFF;
		LEDR_ON;
	}

	Timer_Insert(&TMR_LEDOFF,0,TMR_action_add_if_not_exist);
}

void STATUS_LED_off(void)
{
	LEDS_OFF;

	Timer_Insert(&TMR_LEDON,0,TMR_action_add_if_not_exist);
}

void Initialize_Periodic_Events(void)
{
	_GIEP;

	Timer_Create(&TMR_DAMP, 0.1, -1, (int*)VAR_DAMP, 0);
	Timer_Create(&TMR_SELFTEST, 600.0, 1, (int*)Self_Test1, 1);
	Timer_Create(&TMR_RTC_UPDATE, 0.5, -1, (int*)Read_RTC, 1);
	Timer_Create(&TMR_REFRESH_TIME, 5.0, 1, (int*)Refresh_IDEC_Time, 1);
	Timer_Create(&TMR_T, 0.05, -1, (int*)Timer_T, 0);
	Timer_Create(&TMR_STAT, 0.1, -1, (int*)STAT, 0);
	Timer_Create(&TMR_POLL, 0.1, 1, (int*)Poll, 0);
	Timer_Create(&TMR_OSC_DELAY_LONG, REG_osc_settle_long.calc_val, 1, (int*)Setup_Sample, 0);
	Timer_Create(&TMR_OSC_DELAY_SHORT, REG_osc_settle_short.calc_val, 1, (int*)Setup_Sample, 0);
	Timer_Create(&TMR_BEEP_OFF, 10.0, 1, (int*)BEEP_OFF, 0);
	Timer_Create(&TMR_CLEAR_LOCKOUT, 10.0, 1, (int*)CLEAR_LOCKOUT, 0);
	Timer_Create(&TMR_MENU_REFRESH, 0.05, -1, (int*)MENU_REFRESH, 0);
	Timer_Create(&TMR_ADC_UPDATE, 0.10, -1, (int*)ADC_UPDATE, 0);
	Timer_Create(&TMR_PVAVG, 1.0, -1, (int*)PVAVG24, 0);
	Timer_Create(&TMR_PULSE_UPDATE, 0.10, -1, (int*)PULSE_UPDATE, 0);
	Timer_Create(&TMR_PERIODIC_ACCUM, 0.10, -1, (int*)Periodic_Accumulate, 0);
	Timer_Create(&TMR_SET_CURRENT, 0.10, -1, (int*)Set_Current, 0);
	Timer_Create(&TMR_UPDATE_RELAYS, 0.10, -1, (int*)Update_Relays, 0);
	Timer_Create(&TMR_CHECK_ZERO, 0.10, -1, (int*)Check_Zero, 0);
	Timer_Create(&TMR_LEDOFF, 0.05, 1, (int*)STATUS_LED_off, 0);
	Timer_Create(&TMR_LEDON, 0.95, 1, (int*)STATUS_LED_on, 0);
	Timer_Create(&TMR_SAMPLE_ERROR, 10.0, 1, (int*)Sampling_Error, 0);
	Timer_Create(&TMR_CCM_PURGE, 1.0, 1, (int*)CCM_PURGING, 0);
	Timer_Create(&TMR_CCM_TEST, 1.0, 1, (int*)CCM_TESTING, 0);
	Timer_Create(&TMR_iLV, 1.0, -1, (int*)Update_i_Log_Var, 0);
	Timer_Create(&TMR_DATALOG, 1.0, 1, (int*)DataLog, 0);
	Timer_Create(&TMR_DATALOG_USER, 1.0, 1, (int*)DataLogUser, 0);
	Timer_Create(&TMR_DATALOG_COUNTERS, 60.0, -1, (int*)DataLogCounters, 0);
	Timer_Create(&TMR_CLEAR_USER_LOG_EVENT_FLAG, 0.25, 1, (int*)DataLogUserClearFlag, 0);
	Timer_Create(&TMR_CLEAR_SYS_LOG_EVENT_FLAG, 0.25, 1, (int*)DataLogSysClearFlag, 0);
	Timer_Create(&TMR_ALFAT_LOG, 9, 1, (int*)Alfat_Log_Vars, 1); //

	/* note: these functions are delayed so that the response to the command will be sent before actual execution */
	#define coil_delay 0.25
	Timer_Create(&TMR_SET_BASICS, coil_delay, 1, (int*)SET_BASICS, 0);
	Timer_Create(&TMR_RESET, coil_delay, 1, (int*)System_Reset, 0);
	Timer_Create(&TMR_SERDEF, coil_delay, 1, (int*)Serial_Defaults, 0);
	Timer_Create(&TMR_RESTART, coil_delay, 1, (int*)System_Restart, 0);
	Timer_Create(&TMR_RESTORE_CFGF, coil_delay, 1, (int*)Restore_CFG_FACTORY, 0);
	Timer_Create(&TMR_RESTORE_CFGU, coil_delay, 1, (int*)Restore_CFG_USER, 0);
	Timer_Create(&TMR_SAVE_CFGF, coil_delay, 1, (int*)Write_CFG_FACTORY, 0);
	Timer_Create(&TMR_SAVE_CFGU, coil_delay, 1, (int*)Write_CFG_USER, 0);
	Timer_Create(&TMR_SELF_TEST, coil_delay, 1, (int*)Self_Test_FULL, 0);
	Timer_Create(&TMR_GET_uP_CONFIG, coil_delay, 1, (int*)GET_uP_CONFIG, 0);
	Timer_Create(&TMR_STORE_uP_CONFIG, coil_delay, 1, (int*)STORE_uP_CONFIG, 0);
	Timer_Create(&TMR_GET_COMM_CONFIG, coil_delay, 1, (int*)GET_COMM_CONFIG, 0);
	Timer_Create(&TMR_STORE_COMM_CONFIG, coil_delay, 1, (int*)STORE_COMM_CONFIG, 0);
	Timer_Create(&TMR_GET_ANALYZER_CONFIG, coil_delay, 1, (int*)GET_ANALYZER_CONFIG, 0);
	Timer_Create(&TMR_STORE_ANALYZER_CONFIG, coil_delay, 1, (int*)STORE_ANALYZER_CONFIG, 0);
	Timer_Create(&TMR_GET_POWER_CONFIG, coil_delay, 1, (int*)GET_POWER_CONFIG, 0);
	Timer_Create(&TMR_STORE_POWER_CONFIG, coil_delay, 1, (int*)STORE_POWER_CONFIG, 0);
	Timer_Create(&TMR_GET_ANALOGIO_CONFIG, coil_delay, 1, (int*)GET_ANALOGIO_CONFIG, 0);
	Timer_Create(&TMR_STORE_ANALOGIO_CONFIG, coil_delay, 1, (int*)STORE_ANALOGIO_CONFIG, 0);
    Timer_Create(&TMR_GET_DISPLAY_CONFIG, coil_delay, 1, (int*)GET_DISPLAY_CONFIG, 0);
	Timer_Create(&TMR_STORE_DISPLAY_CONFIG, coil_delay, 1, (int*)STORE_DISPLAY_CONFIG, 0);
    Timer_Create(&TMR_GET_MOTHERBOARD_CONFIG, coil_delay, 1, (int*)GET_MOTHERBOARD_CONFIG, 0);
	Timer_Create(&TMR_STORE_MOTHERBOARD_CONFIG, coil_delay, 1, (int*)STORE_MOTHERBOARD_CONFIG, 0);

	/* insert into scheduler queue */
	Timer_Insert(&TMR_RTC_UPDATE,1,TMR_action_replace);
	Timer_Insert(&TMR_REFRESH_TIME,1,TMR_action_replace);
	Timer_Insert(&TMR_T,0,TMR_action_replace);
	Timer_Insert(&TMR_STAT,0,TMR_action_replace);
	/*Timer_Insert(&TMR_SELFTEST,0,TMR_action_replace); Removed Self Tests from LIST_TIMER0 BC*/
	Timer_Insert(&TMR_DAMP,0,TMR_action_replace);
	Timer_Insert(&TMR_DATALOG,0,TMR_action_replace);
	Timer_Insert(&TMR_DATALOG_USER,0,TMR_action_replace);
	Timer_Insert(&TMR_DATALOG_COUNTERS,0,TMR_action_replace);
	Timer_Insert(&TMR_iLV,0,TMR_action_replace);
	Timer_Insert(&TMR_MENU_REFRESH,0,TMR_action_replace);
	if(!(SA&&(HW_VER<0xB7))) Timer_Insert(&TMR_ADC_UPDATE,0,TMR_action_replace);
	Timer_Insert(&TMR_PERIODIC_ACCUM,0,TMR_action_replace);
	Timer_Insert(&TMR_PULSE_UPDATE,0,TMR_action_replace);
	Timer_Insert(&TMR_SET_CURRENT,0,TMR_action_replace);
	Timer_Insert(&TMR_UPDATE_RELAYS,0,TMR_action_replace);
	Timer_Insert(&TMR_CHECK_ZERO,0,TMR_action_replace);
	Timer_Insert(&TMR_LEDON,0,TMR_action_replace);
	Timer_Insert(&TMR_PVAVG,0,TMR_action_replace);

	GIEP;
}

/******************************************************************************/
/* Delayed functions                                                          */
/******************************************************************************/
void CLEAR_LOCKOUT(void)
{
	LOCKOUT = FALSE;
}

void Submit_Setup_Basics(void)
{
	Timer_Insert(&TMR_SET_BASICS,0,TMR_action_replace);
}

void Submit_Write_CFG_USER(void)
{
	Timer_Insert(&TMR_SAVE_CFGU,0,TMR_action_replace);
}

void Submit_Write_CFG_FACTORY(void)
{
	Timer_Insert(&TMR_SAVE_CFGF,0,TMR_action_replace);
}

void Submit_Restore_CFG_USER(void)
{
	Timer_Insert(&TMR_RESTORE_CFGU,0,TMR_action_replace);
}

void Submit_Restore_CFG_FACTORY(void)
{
	Timer_Insert(&TMR_RESTORE_CFGF,0,TMR_action_replace);
}

void Submit_SELF_TEST(void)
{
	Timer_Insert(&TMR_SELF_TEST,0,TMR_action_replace);
}

void Submit_Reset(void)
{
	Timer_Insert(&TMR_RESET,0,TMR_action_replace);
}

void Submit_Serial_Defaults(void)
{	
	// Removed because this is causing problems when "accidentally" tripped by inept MODBUS implementations
	/* 
	Timer_Insert(&TMR_SERDEF,0,TMR_action_replace);
	*/
}

void Serial_Defaults(void)
{
	Port_Defaults(TRUE);
	Write_CFG_USER();
}

void Submit_Restart(void)
{
	Timer_Insert(&TMR_RESTART,0,TMR_action_replace);
}

void SET_BASICS(void)
{
	_GIEP;
	Setup_Basics();
	Write_CFG_FACTORY();
	c_int00();
	while(1){}
}

void STAT(void)
{
	Set_Diag_Status();
}

/************************************************************/
/* Configuration                                            */
/************************************************************/
void Restore_CFG_USER(void)
{
	_GIEP;
	Restore_CFG();

	c_int00();
	while(1){}
}

void Restore_CFG_FACTORY(void)
{
	int i;
	unsigned int* source;
	unsigned int* dest;

	_GIEP;

	LEDS_ON;

	if (Calc_CRC(FLASH_LOC_CFG_FACTORY, FLASH_CFG_SIZE)==0x00000000)
	{
		dest = SRAM_LOC_CFG;
		source = FLASH_LOC_CFG_FACTORY;
		for (i=0;i<FLASH_CFG_SIZE;i++)
		{
			dest[i] = source[i];
		}

		Write_CFG_USER();
	}
	else
	{
		Setup_Basics();
		Write_CFG_FACTORY();
	}

	c_int00();
	while(1){}
}

int Restore_CFG(void)
{
	int r;
	int i;
	unsigned int* source;
	unsigned int* dest;

	_GIEP;

	LEDS_ON;

	r = 1;

/* todo: add a version variable check to verify firmware version before restoring cfg & support for CFG2 backup */

	if (Calc_CRC(FLASH_LOC_CFG1, FLASH_CFG_SIZE)!=0x00000000)
	{
		if (Calc_CRC(FLASH_LOC_CFG_FACTORY, FLASH_CFG_SIZE)==0x00000000)
		{
			dest = SRAM_LOC_CFG;
			source = FLASH_LOC_CFG_FACTORY;
			for (i=0;i<FLASH_CFG_SIZE;i++)
			{
				dest[i] = source[i];
			}

			Write_CFG_USER();
			CHANGE = TRUE;
		}
		else
		{
			r = 0;
			Setup_Basics();
			Write_CFG_FACTORY();
		}
	}

	{
		dest = SRAM_LOC_CFG;
		source = FLASH_LOC_CFG1;
		for (i=0;i<FLASH_CFG_SIZE;i++)
		{
			dest[i] = source[i];
		}
	}

	GIEP;

	return r;
}

BOOL Write_CFG_USER(void)
{
	unsigned int* source;
	unsigned int CRC;
	int r;

	_GIEP;

	LEDG_OFF;
	LEDR_ON;

	source = SRAM_LOC_CFG;

	CRC = Calc_CRC(source, FLASH_CFG_SIZE-1);

	source[FLASH_CFG_SIZE-1] = CRC;

/* todo: add support for CFG2 backup */
	r = FLASH_ERASE_BLK(FLASH_LOC_CFG1);
	r |= FLASH_WRITE_BLK(FLASH_LOC_CFG1, source, FLASH_CFG_SIZE);

	GIEP;

	if (r)
	{
		DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;
		return FALSE;
	}
	else
	{
		CHANGE = FALSE;
		return TRUE;
	}
}

BOOL Write_CFG_FACTORY(void)
{
	unsigned int* source;
	unsigned int CRC;
	int r;

	_GIEP;

	LEDG_OFF;
	LEDR_ON;

	RESET_COUNTER = 0;	/* re-initialize the reset-counter */

	{/* Config block */
		source = SRAM_LOC_CFG;

		CRC = Calc_CRC(source, FLASH_CFG_SIZE-1);

		source[FLASH_CFG_SIZE-1] = CRC;

		r = FLASH_ERASE_BLK(FLASH_LOC_CFG_FACTORY);
		r |= FLASH_WRITE_BLK(FLASH_LOC_CFG_FACTORY, source, FLASH_CFG_SIZE);

/* todo: add support for CFG2 backup */
		r |= FLASH_ERASE_BLK(FLASH_LOC_CFG1);
		r |= FLASH_WRITE_BLK(FLASH_LOC_CFG1, source, FLASH_CFG_SIZE);
	}

	GIEP;

	if (r)
	{
		DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;
		return FALSE;
	}
	else
	{
		CHANGE = FALSE;
		return TRUE;
	}
}

void Update_Relays(void)
{
	VAR* v;
	int i;
	unsigned int ui;
	BOOL r;
	long double s;

	for (i=0;i<RELAYMAX;i++)
	{
		r = RLY[i].ON.val & 0x01;

		v = HART_Lookup(RLY[i].v.val, &ui, (int*)&HART_DV_Table);

		s = Convert(v->class, v->unit, RLY[i].unit, v->val, 0, v->aux);

		switch(RLY[i].MODE)
		{
			case 0x00:
			{/* DIAG MASK */
				if (RLY[i].STATUS_MASK & v->STAT) r = TRUE;
				else r = FALSE;
				break;
			}

			case 0x01:
			{/* s == RLY[i].setpoint */
				if (l_compare(&s, (long double)RLY[i].setpoint, 0)==0)
				{
					r = TRUE;
				}
				else
				{
					r = FALSE;
				}
				break;
			}

			case 0x03:                                  
			{/* s >= RLY[i].setpoint */
				if (s>=RLY[i].setpoint) r = TRUE;
				else r = FALSE;
				break;
			}

			case 0x02:
			{/* s > RLY[i].setpoint */
				if (s>RLY[i].setpoint) r = TRUE;
				else r = FALSE;
				break;
			}

			case 0x04:
			{/* s < RLY[i].setpoint */
				if (s<RLY[i].setpoint) r = TRUE;
				else r = FALSE;
				break;
			}

			case 0x05:
			{/* s <= RLY[i].setpoint */
				if (s<=RLY[i].setpoint) r = TRUE;
				else r = FALSE;
				break;
			}

			case 0x06:
			{/* s != RLY[i].setpoint */
				if (s!=RLY[i].setpoint) r = TRUE;
				else r = FALSE;
				break;
			}

			case 0x20:
			{/* toggle mode */
				r ^= 0x01;
				break;
			}

			case 0x30:
			{/* DIAG[0] */
				if (RLY[i].STATUS_MASK & DIAGNOSTICS[0]) r = TRUE;
				else r = FALSE;
				break;
			}

			case 0x40:
			{/* DIAG[1] */
				if (RLY[i].STATUS_MASK & DIAGNOSTICS[1]) r = TRUE;
				else r = FALSE;
				break;
			}

			case 0xFF:
			{/* auto mode - relay is actuated in another part of the program */
				r = 2;
				break;
			}

			case 0x10:
			default:
			{/* manual mode */
				break;
			}
		}

		if (r==2) continue;

		RLY[i].ON.val = r;

		if (RLY[0].ON.val)
		{
			RELAY1_ON;
		}
		else
		{
			RELAY1_OFF;
		}

		if (RLY[1].ON.val)
		{
			RELAY2_ON;
		}
		else
		{
			RELAY2_OFF;
		}
	}
}

void Zero_FC1(void)
{
	Clear_Accumulator(0);
}

void Zero_FC2(void)
{
	Clear_Accumulator(1);
}

void Zero_FC3(void)
{
	Clear_Accumulator(2);
}

void Disable_PDI_WC_Mode(int id)
{
	_GIEP;
	if (CALC_WC_DENSITY.val)
		USE_PDI_WATERCUT.val = FALSE;
		
	GIEP;
}

void Disable_WC_Density_Mode(int id)
{
	_GIEP;
	if (USE_PDI_WATERCUT.val)
		CALC_WC_DENSITY.val = FALSE;	
	GIEP;
}

void Clear_Accumulator(int n)
{
	MPKT* p;
	int i;

	switch(n)
	{
		case 0: FC[n].PULSE = ((*XREG12 &0xFF)<<8) | (*XREG11 &0xFF); break;
		case 1: FC[n].PULSE = ((*XREG14 &0xFF)<<8) | (*XREG13 &0xFF); break;
		case 2: FC[n].PULSE = ((*XREG16 &0xFF)<<8) | (*XREG15 &0xFF); break;
	}

	FC[n].Z.val = FALSE;

	FC[n].CNT = *TMR1_CNT;

	FC[n].PULSE_COUNTER = 0;
	FC[n].PULSE_DELTA = 0;
	VAR_Update(&FC[n].PULSE_TOTAL, 0.0, 0, 0);
	VAR_Update(&FC[n].PULSE_FLOW, 0.0, 0, 0);

	VAR_Update(&FC[n].FLOW_OIL, 0.0, 0, 0);
	VAR_Update(&FC[n].FLOW_WATER, 0.0, 0, 0);
	if (!FC[n].MAN_FLOW) VAR_Update(&FC[n].FLOW_TOTAL, 0.0, 0, 0);

	FC[0].gross_oil_whole_part = 0.0;
	FC[0].gross_oil_fract_part = 0.0;
	FC[0].gross_water_whole_part = 0.0;
	FC[0].gross_water_fract_part = 0.0;
	
	VAR_Update(&FC[n].GROSS_OIL, 0.0, 0, 0);
	VAR_Update(&FC[n].GROSS_WATER, 0.0, 0, 0);
	VAR_Update(&FC[n].GROSS_TOTAL, 0.0, 0, 0);
	


	VAR_Update(&FC[n].NET_FLOW_OIL, 0.0, 0, 0);
	VAR_Update(&FC[n].NET_FLOW_WATER, 0.0, 0, 0);
	VAR_Update(&FC[n].NET_FLOW_TOTAL, 0.0, 0, 0);

	VAR_Update(&FC[n].NET_OIL, 0.0, 0, 0);
	VAR_Update(&FC[n].NET_WATER, 0.0, 0, 0);
	VAR_Update(&FC[n].NET_TOTAL, 0.0, 0, 0);

	if (n==0)
	{
		if ((ANALYZER_MODE.val&0xFF)==SUB_CCM)
		{
			CCM_GAS_CNT = *TMR1_CNT;
			
			ccm_gas_total_fract_part = 0.0;
			ccm_gas_total_whole_part = 0.0;
			
			VAR_Update(&CCM_GAS_TOTAL, 0.0, 0, 0);
			VAR_Update(&CCM_GAS_FLOW, 0.0, 0, 0);
			CCM_24_GAS = 0.0;
			CCM_24_TOTAL = 0.0;
			CCM_24_OIL = 0.0;
			CCM_24_WATER = 0.0;

			p = Master_Create((int*) 0, 1, 2, mb_cmd_w_coil, 3, 1, 1.0);
			List_Add(&PORT[2].MASTER, (GENERIC*)p);

			if (((CCM_CORRECT_GAS_TO_STP==FALSE) && (CCM_GAS_MASS==FALSE)) && INITIALIZING)
			{/* CCM COR GAS should not be cleared on init when in old mass-volume mode */
			}
			else
			{
				p = Master_Create((int*) 0, 1, 3, mb_cmd_w_coil, 3, 1, 1.0);
				List_Add(&PORT[2].MASTER, (GENERIC*)p);
			}

			if (CCM_2LIQ)
			{
				p = Master_Create((int*) 0, 1, 4, mb_cmd_w_coil, 3, 1, 1.0);
				List_Add(&PORT[3].MASTER, (GENERIC*)p);
			}

			if (CCM_2GAS)
			{
				if (((CCM_CORRECT_GAS_TO_STP==FALSE) && (CCM_GAS_MASS==FALSE)) && INITIALIZING)
				{/* CCM COR GAS should not be cleared on init when in old mass-volume mode */
				}
				else
				{
					p = Master_Create((int*) 0, 1, 5, mb_cmd_w_coil, 3, 1, 1.0);
					List_Add(&PORT[3].MASTER, (GENERIC*)p);
				}
			}
	 	}
	}

	if (!INITIALIZING)
	{
		DataLogCounter(n,1);

		if (FC_Periodic.erased_sector)
		{/* force a record */
			for (i=0;i<FCMAX;i++)
			{
				DataLogCounter(i,1);
			}
			FC_Periodic.erased_sector = FALSE;
		}
	}
}

void Clear_Accumulators(int id)
{
	int i;
	unsigned int mode;
	float	GROSS_OIL[FCMAX];
	float	GROSS_WATER[FCMAX];
	float	NET_OIL[FCMAX];
	float	NET_WATER[FCMAX];
	float	GAS_TOTAL;
	unsigned int* p;

	_GIEP;

	for (i=0;i<FCMAX;i++) Clear_Accumulator(i);

	if (INITIALIZING)
	{/* if initializing, then scan log space for previous values */
		GAS_TOTAL = 0.0;
		for (i=0;i<FCMAX;i++)
		{
			GROSS_OIL[i]	= 0.0;
			GROSS_WATER[i]	= 0.0;
			NET_OIL[i]		= 0.0;
			NET_WATER[i]	= 0.0;
		}

		for (i=0;i<FCMAX;i++)
		{
			mode = LOG_FC_1+i;

			p = FindLastLogRecord(&FC_Periodic, mode);

			if (p != 0x0000000)
			{
				if (mode == LOG_FC_1) GAS_TOTAL	= FMIEEE(p[6]);

				NET_OIL[i]		=  FMIEEE(p[2]);
				NET_WATER[i]	=  FMIEEE(p[3]);
				GROSS_OIL[i]	=  FMIEEE(p[4]);
				GROSS_WATER[i]	=  FMIEEE(p[5]);
			}

			if (mode == LOG_FC_1) 
			{
				
				ccm_gas_total_whole_part = floor(GAS_TOTAL);
				ccm_gas_total_fract_part = GAS_TOTAL - ccm_gas_total_whole_part;
		
				VAR_Update(&CCM_GAS_TOTAL, ccm_gas_total_whole_part + ccm_gas_total_fract_part,0,0); // CCM_GAS_TOTAL = GAS_TOTAL;
			}

			//accumulated whole number component of gross oil
			FC[i].gross_oil_whole_part		= floor(GROSS_OIL[i]);								
			//accumulated fractional component of gross oil
			FC[i].gross_oil_fract_part		= GROSS_OIL[i] - FC[i].gross_oil_whole_part;
			//Add parts together to yield GROSS_OIL
			VAR_Update(&FC[i].GROSS_OIL, FC[i].gross_oil_whole_part + FC[i].gross_oil_fract_part, 0, 0);
			
			//accumulated whole number component of gross water
			FC[i].gross_water_whole_part	= floor(GROSS_WATER[i]);
			//accumulated fractional component of gross water
			FC[i].gross_water_fract_part	= GROSS_WATER[i] - FC[i].gross_water_whole_part;	
			//Add parts together to yield GROSS_WATER
			VAR_Update(&FC[i].GROSS_WATER, FC[i].gross_water_whole_part + FC[i].gross_water_fract_part, 0, 0);
			
			VAR_Update(&FC[i].GROSS_TOTAL, GROSS_OIL[i] + GROSS_WATER[i], 0, 0);
	
			VAR_Update(&FC[i].NET_OIL, NET_OIL[i], 0, 0);
			VAR_Update(&FC[i].NET_WATER, NET_WATER[i], 0, 0);
			VAR_Update(&FC[i].NET_TOTAL, NET_OIL[i] + NET_WATER[i], 0, 0);
		}
	}

	ZERO_INPUT = 0x00;
	COR[0].mass_total		= 0.0;
	COR[0].volume_total		= 0.0;
	COR[1].mass_total		= 0.0;
	COR[1].volume_total		= 0.0;
	COR[2].mass_total		= 0.0;
	COR[2].volume_total		= 0.0;
	COR[3].mass_total		= 0.0;
	COR[3].volume_total		= 0.0;

	GIEP;
}

void Totalizer_Control(int id)
{
	MPKT* p;

	if ((ANALYZER_MODE.val&0xFF)!=SUB_CCM) return;

	_GIEP;

	if (DIO_TOTALIZER_CONTROL.val)
	{/* enable counters */
		p = Master_Create((int*) 0, 1, 2, mb_cmd_w_coil, 2, 1, 1.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);
		p = Master_Create((int*) 0, 1, 3, mb_cmd_w_coil, 2, 1, 1.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);

		if (CCM_2LIQ)
		{
			p = Master_Create((int*) 0, 1, 4, mb_cmd_w_coil, 2, 1, 1.0);
			List_Add(&PORT[3].MASTER, (GENERIC*)p);
		}

		if (CCM_2GAS)
		{
			p = Master_Create((int*) 0, 1, 5, mb_cmd_w_coil, 2, 1, 1.0);
			List_Add(&PORT[3].MASTER, (GENERIC*)p);
		}

		FC[0].enable_PULSE = FALSE;
		FC[0].enable_FLOW = TRUE;
		FC[0].enable_GROSS = TRUE;
	}
	else
	{/* disable counters */
		p = Master_Create((int*) 0, 1, 2, mb_cmd_w_coil, 2, 1, 0.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);
		p = Master_Create((int*) 0, 1, 3, mb_cmd_w_coil, 2, 1, 0.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);

		if (CCM_2LIQ)
		{
			p = Master_Create((int*) 0, 1, 4, mb_cmd_w_coil, 2, 1, 0.0);
			List_Add(&PORT[3].MASTER, (GENERIC*)p);
		}

		if (CCM_2GAS)
		{
			p = Master_Create((int*) 0, 1, 5, mb_cmd_w_coil, 2, 1, 0.0);
			List_Add(&PORT[3].MASTER, (GENERIC*)p);
		}

		FC[0].enable_PULSE = FALSE;
		FC[0].enable_FLOW = FALSE;
		FC[0].enable_GROSS = TRUE;
	}

	GIEP;
}

void Check_Zero(void)
{
	ZERO_INPUT = ZERO_INPUT << 1;

	if (ZERO==0x00)
	{
		ZERO_INPUT |= 1;
	}

	if ((ZERO_INPUT&0xFF)==0x0F)
	{
		Clear_Accumulators(0);
	}
}

double truncate (double v, int n)
{
    double a, ai;

    if (n>6) return v;
    else if (n<1) return v;

    a = v*pow(10.0, (double)(n+1));

    a /= 10.0;
    modf(a, &ai);

    return (ai/pow(10.0, (double)n));
}

double round (double v, int n)
{
    double a, ai;

    if (n>6) return v;
    else if (n<0) return v;

    a = v*pow(10.0, (double)(n+1));

    if(v<0.0) a -= 5.0;
    else a += 5.0;

    a /= 10.0;
    modf(a, &ai);

    return (ai/pow(10.0, (double)n));
}

double sigfig(double v, int n)
{
	int s;
	double t;
	double a;

    if(n<1) return v;
    else if (n>6) return v;
	else if(v==0.0) return v;

    if(v<0.0) s = -1;
    else s = 1;

    a = fabs(v);

    t = pow(10.0, floor(log10(a))+1.0);

    return (s*round(a/t, n)*t);
}

void PULSE_UPDATE(void)
{
	/* note: they are inverted */

	if (PULSE1_STAT) FC[0].PULSE_STAT = 0;
	else FC[0].PULSE_STAT = 1;

	if (PULSE2_STAT) FC[1].PULSE_STAT = 0;
	else FC[1].PULSE_STAT = 1;

	if (PULSE3_STAT) FC[2].PULSE_STAT = 0;
	else FC[2].PULSE_STAT = 1;
}

/***********************************************************************************\
| Accum_Fractional_Oil() separates out the fractional component of the oil added	|
| to GROSS_OIL so we don't lose precision when adding very small flow to			|
| a very large GROSS_OIL total. When this fractional accumulator exceeds 1.0		|
| the 'large' part is subtracted and added to the next 'o' value					|
\***********************************************************************************/
void Accum_Fractional_Oil(long double* o)
{
	FC[0].gross_oil_whole_part += floor(*o);
	
	FC[0].gross_oil_fract_part += ( *o - floor(*o) ); //accumulate the lower fractional component of 'o' (to preserve precision)
	
	if (FC[0].gross_oil_fract_part > 1.0)
	{
		FC[0].gross_oil_whole_part += floor(FC[0].gross_oil_fract_part);
		FC[0].gross_oil_fract_part -= floor(FC[0].gross_oil_fract_part);
	}
	
}

/***********************************************************************************\
| Accum_Fractional_Water() separates out the fractional component of the water added|
| to GROSS_WATER so we don't lose precision when adding very small flow to			|
| a very large GROSS_WATER total. When this fractional accumulator exceeds 1.0		|
| the whole part is subtracted from it and added to the next 'w' value				|
\***********************************************************************************/
void Accum_Fractional_Water(long double* w)
{
	FC[0].gross_water_whole_part += floor(*w);
	
	FC[0].gross_water_fract_part += ( *w - floor(*w) ); //accumulate the lower fractional component of 'w' (to preserve precision)
	
	if (FC[0].gross_water_fract_part > 1.0)
	{
		FC[0].gross_water_whole_part += floor(FC[0].gross_water_fract_part);
		FC[0].gross_water_fract_part -= floor(FC[0].gross_water_fract_part);
	}
	
}

void Accum_Fractional_Gas(long double* t)
{
	ccm_gas_total_whole_part += floor(*t);
	
	ccm_gas_total_fract_part += ( *t - floor(*t) ); //accumulate the lower fractional component of 't' (to preserve precision)
	
	if (ccm_gas_total_fract_part > 1.0)
	{
		ccm_gas_total_whole_part += floor(ccm_gas_total_fract_part);
		ccm_gas_total_fract_part -= floor(ccm_gas_total_fract_part);
	}
	
}

void Disable_Heater(void)
{
	if (DIO_HEATER_DISABLE.val)
	{
		DISABLE_HEATER;
	}
	else
	{
		ENABLE_HEATER;
	}
}

void Set_Class_Units_AO1(int id)
{
	Set_Class_Units_AO(id, 0);
}

void Set_Class_Units_AO2(int id)
{
	Set_Class_Units_AO(id, 1);
}

void Set_Class_Units_AO3(int id)
{
	Set_Class_Units_AO(id, 2);
}

void Set_Class_Units_AO4(int id)
{
	Set_Class_Units_AO(id, 3);
}

void Set_Class_Units_AO5(int id)
{
	Set_Class_Units_AO(id, 4);
}

void Set_Class_Units_AO6(int id)
{
	Set_Class_Units_AO(id, 5);
}

void Set_Class_Units_AO7(int id)
{
	Set_Class_Units_AO(id, 6);
}

void Set_Class_Units_AO8(int id)
{
	Set_Class_Units_AO(id, 7);
}

void Set_Class_Units_AO9(int id)
{
	Set_Class_Units_AO(id, 8);
}

void Set_Class_Units_AO(int id, int i)
{
	unsigned int ui;
	VAR* v;

	_GIEP;

	v = HART_Lookup(AO[i].v.val, &ui, (int*)&HART_DV_Table);
	AO[i].class.val = v->class;
	AO[i].unit.val = v->unit;

	Set_Units(id);

	GIEP;
}

void Set_Class_Units_AI1(int id)
{
	Set_Class_Units_AI(id, 0);
}

void Set_Class_Units_AI2(int id)
{
	Set_Class_Units_AI(id, 1);
}

void Set_Class_Units_AI3(int id)
{
	Set_Class_Units_AI(id, 2);
}

void Set_Class_Units_AI4(int id)
{
	Set_Class_Units_AI(id, 3);
}

void Set_Class_Units_AI5(int id)
{
	Set_Class_Units_AI(id, 4);
}

void Set_Class_Units_Pulse1(int id)
{
	Set_Class_Units_Pulse(id, 0);
}

void Set_Class_Units_Pulse2(int id)
{
	Set_Class_Units_Pulse(id, 1);
}

void Set_Class_Units_Pulse3(int id)
{
	Set_Class_Units_Pulse(id, 2);
}

void Set_Class_Units_AI(int id, int i)
{
	unsigned int ui;
	VAR* v;

	_GIEP;

	v = HART_Lookup(AI[i].v.val, &ui, (int*)&HART_DVINPUT_Table);
	AI[i].class.val = v->class;
	AI[i].unit.val = v->unit;

	Set_Units(id);

	GIEP;
}

void Set_Class_Units_Pulse(int id, int i)
{
	unsigned int ui;
	VAR* v;

	_GIEP;

	v = HART_Lookup(FC[i].pulse_v.val, &ui, (int*)&HART_DVINPUT_Table);
	FC[i].pulse_class.val = v->class;
	FC[i].pulse_unit.val = v->unit;

	Set_Pulse_Units(id);

	GIEP;
}

void Set_RLY_Units(int id)
{
	int i;
	VAR* v;
	unsigned int ui;
	
	for(i=0;i<RELAYMAX;i++)
	{
		v = HART_Lookup(RLY[i].v.val, &ui, (int*)&HART_DV_Table);
		RLY[i].class = v->class;
		RLY[i].unit = v->unit;
	}
}

void Set_Units(int id)
{
	int i;

	_GIEP;

	for (i=0;i<AI_NLOOPS;i++)
	{
		AI[i].URV.class = AI[i].class.val;
		AI[i].URV.unit = AI[i].unit.val;
		AI[i].URV.calc_unit = AI[i].unit.val;

		AI[i].LRV.class = AI[i].class.val;
		AI[i].LRV.unit = AI[i].unit.val;
		AI[i].LRV.calc_unit = AI[i].unit.val;

		AI[i].VALUE.class = AI[i].class.val;
		AI[i].VALUE.unit = AI[i].unit.val;
		AI[i].VALUE.calc_unit = AI[i].unit.val;
	}

	for (i=0;i<AO_NLOOPS;i++)
	{
		AO[i].URV.class = AO[i].class.val;
		AO[i].URV.unit = AO[i].unit.val;
		AO[i].URV.calc_unit = AO[i].unit.val;

		AO[i].LRV.class = AO[i].class.val;
		AO[i].LRV.unit = AO[i].unit.val;
		AO[i].LRV.calc_unit = AO[i].unit.val;
	}

	GIEP;
}

void Set_Pulse_Units(int id)
{
	int i;

	_GIEP;

	for (i=0;i<FCMAX;i++)
	{
		FC[i].pulse_VALUE.class = FC[i].pulse_class.val;
		FC[i].pulse_VALUE.unit = FC[i].pulse_unit.val;
		FC[i].pulse_VALUE.calc_unit = FC[i].pulse_unit.val;
	}

	GIEP;
}


void Periodic_Accumulate(void)
{
	int i;
	for (i=0;i<FCMAX;i++)
	{
		if (FC[i].enable_PULSE) continue;
		Accumulate(&FC[i].FLOW_TOTAL);
	}

	if (((ANALYZER_MODE.val&0xFF)==SUB_CCM) && FC[0].enable_FLOW)
	{
		if ((CCM_CORRECT_GAS_TO_STP==FALSE) && (CCM_GAS_MASS==FALSE))
		{
			/* this way uses the COR accumulators */
			
			//UPDATE 10/7/2015:  Stop using coriolis accumulator values! This branch used to skip Accumulate_Gas() and use the COR accumulators.
			Accumulate_Gas();
		}
		else
		{
			Accumulate_Gas();
		}
	}  
}   

void Accumulate_Gas(void)
{
	long double t;
	long double delta_time;
	int c,delta,per;
	int units[3];
	float r;

	if (!FC[0].enable_FLOW) return;

	Breakout_Flow_Units(CCM_GAS_FLOW.class, CCM_GAS_FLOW.calc_unit, units, &r);

	c = *TMR1_CNT;

	if (c>=CCM_GAS_CNT)
	{
		delta = c - CCM_GAS_CNT;
	}
	else
	{
		per = *TMR1_PER;
		delta = (per-CCM_GAS_CNT) + c;
	}

	CCM_GAS_CNT = c;

	delta_time = delta;
	delta_time /= TMR1_FREQ;

	t = CCM_GAS_FLOW.calc_val;
	t *= delta_time;
	t /= r;

	//t = CCM_GAS_TOTAL.calc_val + Convert(CCM_GAS_TOTAL.class, units[0], CCM_GAS_TOTAL.calc_unit, t, 0, CCM_GAS_TOTAL.aux);
	
	t = Convert(CCM_GAS_TOTAL.class, units[0], CCM_GAS_TOTAL.calc_unit, t, 0, CCM_GAS_TOTAL.aux);
	Accum_Fractional_Gas(&t);
	
	VAR_Update(&CCM_GAS_TOTAL, ccm_gas_total_whole_part + ccm_gas_total_fract_part,0,0);
}

void Accumulate(VAR* v)
{
	unsigned int i;
	long double t,w,o,n;
	long double delta_time;
	int c,delta,per;
	int units[3];
	float r;
	float pw,po,VCFw,VCFo,pom,pwm;
	float WCSTV, WCSTM;
	float oden,wden;

	i = v->aux;
	
	if (i>=FCMAX) 
		return;

	_GIEP;

	Breakout_Flow_Units(FC[i].FLOW_TOTAL.class, FC[i].FLOW_TOTAL.calc_unit, units, &r);

	if ((units[2]!=c_volume) && (units[2]!=c_mass))
	{
		GIEP;
		return;
	}

	{
		API_VCF(&FC[i], &VCFw, &VCFo);
		
		FC[i].VCFo = VCFo;
		FC[i].VCFw = VCFw;

		pw = FC[i].watercut.val / 100.0;
		
		if (pw > 1.0) 
			pw = 1.0;
		else if (pw < 0.0) 
			pw = 0.0;

		po = 1.0 - pw;
		
		if (po > 1.0) 
			po = 1.0;
		else if (po < 0.0) 
			po = 0.0;

		WCSTV = (pw * VCFw) / ((pw * VCFw) + (po * VCFo));
		
		if (WCSTV < 0.0) 
			WCSTV = 0.0;
		else if (WCSTV > 1.0) 
			WCSTV = 1.0;
		
		FC[i].net_watercut = WCSTV * 100.0;

		oden  = Convert(FC[i].density_oilST.class, FC[i].density_oilST.calc_unit, u_mpv_kg_cm, FC[i].density_oilST.calc_val, 0, FC[i].density_oilST.aux);
		wden  = Convert(FC[i].density_waterST.class, FC[i].density_waterST.calc_unit, u_mpv_kg_cm, FC[i].density_waterST.calc_val, 0, FC[i].density_waterST.aux);
		WCSTM = (WCSTV * wden) / ((WCSTV * wden) + ((1 - WCSTV) * oden));
		
		if (WCSTM < 0.0) 
			WCSTM = 0.0;
		else if (WCSTM > 1.0) 
			WCSTM = 1.0;
		
		FC[i].net_watercut_mass = WCSTM * 100.0;

		pwm = WCSTM;
		
		if (pwm > 1.0) 
			pwm = 1.0;
		else if (pwm < 0.0) 
			pwm = 0.0;

		pom = 1.0 - pwm;
		
		if (pom > 1.0) 
			pom = 1.0;
		else if (pom < 0.0) 
			pom = 0.0;
	}

	if (!FC[i].enable_FLOW)
	{
		GIEP;
		return;
	}

	if (FC[i].enable_PULSE)
	{
		n = ((long double)FC[i].PULSE_DELTA / (long double)FC[i].PULSES_PER_ACCUM_UNIT);
		
		if (n < 0.0) 
			n = 0.0;

		if (units[2] == c_volume)
		{
			o = Convert(FC[i].FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_unit, (po * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
			
			VAR_Update(&FC[i].FLOW_OIL, o, 0, 0);

			w = Convert(FC[i].FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].FLOW_WATER.calc_unit, (pw * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
			
			VAR_Update(&FC[i].FLOW_WATER, w, 0, 0);

			if ((FC[i].enable_GROSS) || (FC[i].enable_NET))
			{
				//Add oil
				o = Convert(FC[i].GROSS_OIL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_unit, (po * n), 0, FC[i].GROSS_OIL.aux);
				Accum_Fractional_Oil(&o);
				VAR_Update(&FC[i].GROSS_OIL, FC[0].gross_oil_whole_part + FC[0].gross_oil_fract_part, 0, 0);
				
				//Add water
				w = Convert(FC[i].GROSS_WATER.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_unit, (pw * n), 0, FC[i].GROSS_WATER.aux);
				Accum_Fractional_Water(&w);
				VAR_Update(&FC[i].GROSS_WATER, FC[0].gross_water_whole_part + FC[0].gross_water_fract_part, 0, 0);
	
				t  = Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_WATER.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_val, 0, FC[i].GROSS_WATER.aux);
				t += Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_OIL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_val, 0, FC[i].GROSS_OIL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, t, 0, 0);
				
				// Don't divide zero or by zero, don't use negative numbers
				if ( (FC[i].GROSS_TOTAL.val <= 0.0) ||  (FC[i].GROSS_WATER.val <= 0.0) )	
					t = 0.0;
				else
					t = 100 * (FC[i].GROSS_WATER.val / FC[i].GROSS_TOTAL.val );
				
				if (t > 100.0)	// We can't have more water than total liquid
					t = 100.0;
				
				VAR_Update(&FC[i].AVG_GROSS_TOTAL, t, 0, 0);
			}

			if (FC[i].enable_NET)
			{/* $$REVENUE$$ */
				/* todo: check AUTH_CODES and disable FC[i].enable_NET */
				o = Convert(FC[i].NET_OIL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].NET_OIL.calc_unit, (VCFo * po * n), 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_OIL, FC[i].NET_OIL.calc_val+o, 0, 0);

				w = Convert(FC[i].NET_WATER.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].NET_WATER.calc_unit, (VCFw * pw * n), 0, FC[i].NET_WATER.aux);
				
				VAR_Update(&FC[i].NET_WATER, FC[i].NET_WATER.calc_val+w, 0, 0);

				t  = Convert(FC[i].NET_TOTAL.class, FC[i].NET_WATER.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_val, 0, FC[i].NET_WATER.aux);
				t += Convert(FC[i].NET_TOTAL.class, FC[i].NET_OIL.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_val, 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_TOTAL, t, 0, 0);

				// Don't divide zero or by zero, don't use negative numbers
				if ( (FC[i].NET_TOTAL.val <= 0.0) ||  (FC[i].NET_WATER.val <= 0.0) )
					t = 0.0;
				else
					t = 100 * (FC[i].NET_WATER.val / FC[i].NET_TOTAL.val);
				
				if (t > 100.0)	// We can't have more water than total liquid
					t = 100.0;	
				
				VAR_Update(&FC[i].AVG_NET_TOTAL, t, 0, 0);
				
				o *= r;
				o  = Convert(FC[i].NET_FLOW_OIL.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_unit, o, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_OIL, o, 0, 0);

				w *= r;
				w  = Convert(FC[i].NET_FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_unit, w, 0, FC[i].NET_FLOW_WATER.aux);
				
				VAR_Update(&FC[i].NET_FLOW_WATER, w, 0, 0);

				t  = Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_WATER.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				t += Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_OIL.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_TOTAL, t, 0, 0);
			}
		}
		else if (units[2]==c_mass)
		{
			if (FC[i].enable_NET)
			{/* only support mass conversion if NET option $$REVENUE$$ */
				o = Convert(FC[i].FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_unit, (pom * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
				VAR_Update(&FC[i].FLOW_OIL, o, 0, 0);
	
				w = Convert(FC[i].FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].FLOW_WATER.calc_unit, (pwm * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
				VAR_Update(&FC[i].FLOW_WATER, w, 0, 0);

				//Add oil
				o = Convert(FC[i].GROSS_OIL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_unit, (pom * n), 0, FC[i].GROSS_OIL.aux);		
				Accum_Fractional_Oil(&o);
				VAR_Update(&FC[i].GROSS_OIL, FC[0].gross_oil_whole_part + FC[0].gross_oil_fract_part, 0, 0);

				//Add water
				w = Convert(FC[i].GROSS_WATER.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_unit, (pwm * n), 0, FC[i].GROSS_WATER.aux);
				Accum_Fractional_Water(&w);
				VAR_Update(&FC[i].GROSS_WATER, FC[0].gross_water_whole_part + FC[0].gross_water_fract_part, 0, 0);
	
				t  = Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_WATER.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_val, 0, FC[i].GROSS_WATER.aux);
				t += Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_OIL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_val, 0, FC[i].GROSS_OIL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, t, 0, 0);
				
				// Don't divide zero or by zero, don't use negative numbers
				if ( (FC[i].GROSS_TOTAL.val <= 0.0) ||  (FC[i].GROSS_WATER.val <= 0.0) )	
					t = 0.0;
				else
					t = 100 * (FC[i].GROSS_WATER.val / FC[i].GROSS_TOTAL.val );
				
				if (t > 100.0)	// We can't have more water than total liquid
					t = 100.0;
					
				VAR_Update(&FC[i].AVG_GROSS_TOTAL, t, 0, 0);

				o = Convert(FC[i].NET_OIL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].NET_OIL.calc_unit, (pom * n), 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_OIL, FC[i].NET_OIL.calc_val+o, 0, 0);
	
				w = Convert(FC[i].NET_WATER.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].NET_WATER.calc_unit, (pwm * n), 0, FC[i].NET_WATER.aux);
				
				VAR_Update(&FC[i].NET_WATER, FC[i].NET_WATER.calc_val+w, 0, 0);
	
				t  = Convert(FC[i].NET_TOTAL.class, FC[i].NET_WATER.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_val, 0, FC[i].NET_WATER.aux);
				t += Convert(FC[i].NET_TOTAL.class, FC[i].NET_OIL.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_val, 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_TOTAL, t, 0, 0);
				
				// Don't divide zero or by zero, don't use negative numbers
				if ( (FC[i].NET_TOTAL.val <= 0.0) ||  (FC[i].NET_WATER.val <= 0.0) )
					t = 0.0;
				else
					t = 100 * (FC[i].NET_WATER.val / FC[i].NET_TOTAL.val);
				
				if (t > 100.0)	// We can't have more water than total liquid
					t = 100.0;	
				
				VAR_Update(&FC[i].AVG_NET_TOTAL, t, 0, 0);
	
				o = Convert(FC[i].NET_FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].NET_FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_OIL, o, 0, 0);
	
				w = Convert(FC[i].NET_FLOW_WATER.class, FC[i].FLOW_WATER.calc_unit, FC[i].NET_FLOW_WATER.calc_unit, FC[i].FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				
				VAR_Update(&FC[i].NET_FLOW_WATER, w, 0, 0);
	
				t  = Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_WATER.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				t += Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_OIL.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_TOTAL, t, 0, 0);
			}
			else
			{
				n = Convert(FC[i].GROSS_TOTAL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, n, 0, FC[i].GROSS_TOTAL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, 		FC[i].GROSS_TOTAL.calc_val+n, 	0, 0);
				VAR_Update(&FC[i].AVG_GROSS_TOTAL,	0.0,							0, 0);
                VAR_Update(&FC[i].NET_OIL, 			0.0, 							0, 0);
				VAR_Update(&FC[i].NET_WATER, 		0.0, 							0, 0);
				VAR_Update(&FC[i].NET_TOTAL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].AVG_NET_TOTAL,	0.0,							0, 0);
                VAR_Update(&FC[i].NET_FLOW_OIL, 	0.0, 							0, 0);
				VAR_Update(&FC[i].NET_FLOW_WATER, 	0.0, 							0, 0);
				VAR_Update(&FC[i].NET_FLOW_TOTAL, 	0.0, 							0, 0);
                VAR_Update(&FC[i].GROSS_OIL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].GROSS_WATER, 		0.0, 							0, 0);
                VAR_Update(&FC[i].FLOW_OIL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].FLOW_WATER, 		0.0, 							0, 0);
			}
		}
	}
	else
	{
		FC[i].PULSE_COUNTER = 0;
		
		VAR_Update(&FC[i].PULSE_FREQ,  0.0, 0, 0);
		VAR_Update(&FC[i].PULSE_FLOW,  0.0, 0, 0);
		VAR_Update(&FC[i].PULSE_TOTAL, 0.0, 0, 0);

		c = *TMR1_CNT;

		//Find how much time has elapsed
			//note: I suppose this will break if elapsed time is
			//greater than timer1 rollover period (in seconds)
			//--Is this compensated for?
			//--TMR1_FREQ looks like 27648000Hz and PMR1_PER = 1000000000
			//--Therefore, the period is something like 36.179 seconds 
		if (c >= FC[i].CNT)
			delta = c - FC[i].CNT;
		else
		{
			per   = *TMR1_PER;
			delta = (per-FC[i].CNT) + c; //the counter register rolled over so take (c - CNT) + period
		}

		FC[i].CNT   = c; //set flowcomp counter to the most recent "sample time"
        delta_time  = delta;
		delta_time /= TMR1_FREQ;  //delta_time is the elapsed time in seconds
		
		//for debugging
		//global_delta_time = delta_time;
		//end: for debugging

		if (units[2] == c_volume)
		{
			o = Convert(FC[i].FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_unit, (po * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
			VAR_Update(&FC[i].FLOW_OIL, o, 0, 0);
	
			w = Convert(FC[i].FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].FLOW_WATER.calc_unit, (pw * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
			
			VAR_Update(&FC[i].FLOW_WATER, w, 0, 0);

			if ((FC[i].enable_GROSS)||(FC[i].enable_NET))
			{
				t  = FC[i].FLOW_TOTAL.calc_val;
				t *= delta_time;
				t /= r;
    			n  = Convert(FC[i].GROSS_TOTAL.class, units[0], FC[i].GROSS_TOTAL.calc_unit, t, 0, FC[i].GROSS_TOTAL.aux);
	            
				//Add oil
				o  = Convert(FC[i].GROSS_OIL.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_unit, (po * n), 0, FC[i].GROSS_OIL.aux);
				Accum_Fractional_Oil(&o);
				VAR_Update(&FC[i].GROSS_OIL, FC[0].gross_oil_whole_part + FC[0].gross_oil_fract_part, 0, 0);
	
				//Add water
				w = Convert(FC[i].GROSS_WATER.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_unit, (pw * n), 0, FC[i].GROSS_WATER.aux);
				Accum_Fractional_Water(&w);
				VAR_Update(&FC[i].GROSS_WATER, FC[0].gross_water_whole_part + FC[0].gross_water_fract_part, 0, 0);
				
	
				t  = Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_WATER.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_val, 0, FC[i].GROSS_WATER.aux);
				t += Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_OIL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_val, 0, FC[i].GROSS_OIL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, t, 0, 0);
				
				// Don't divide zero or by zero, don't use negative numbers
				if ( (FC[i].GROSS_TOTAL.val <= 0.0) ||  (FC[i].GROSS_WATER.val <= 0.0) )	
					t = 0.0;
				else
					t = 100 * (FC[i].GROSS_WATER.val / FC[i].GROSS_TOTAL.val );
				
				if (t > 100.0)	// We can't have more water than total liquid
					t = 100.0;
					
				VAR_Update(&FC[i].AVG_GROSS_TOTAL, t, 0, 0);
				
			}
	
			if (FC[i].enable_NET)
			{/* $$REVENUE$$ */
				/* todo: check AUTH_CODES and disable FC[i].enable_NET */
				o = Convert(FC[i].NET_OIL.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].NET_OIL.calc_unit, (VCFo * po * n), 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_OIL, FC[i].NET_OIL.calc_val+o, 0, 0);
	
				w = Convert(FC[i].NET_WATER.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].NET_WATER.calc_unit, (VCFw * pw * n), 0, FC[i].NET_WATER.aux);
				
				VAR_Update(&FC[i].NET_WATER, FC[i].NET_WATER.calc_val+w, 0, 0);
	
				t  = Convert(FC[i].NET_TOTAL.class, FC[i].NET_WATER.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_val, 0, FC[i].NET_WATER.aux);
				t += Convert(FC[i].NET_TOTAL.class, FC[i].NET_OIL.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_val, 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_TOTAL, t, 0, 0);
				
				// Don't divide zero or by zero, don't use negative numbers
				if ( (FC[i].NET_TOTAL.val <= 0.0) ||  (FC[i].NET_WATER.val <= 0.0) )
					t = 0.0;
				else
					t = 100 * (FC[i].NET_WATER.val / FC[i].NET_TOTAL.val);
				
				if (t > 100.0)	// We can't have more water than total liquid
					t = 100.0;	
				
				VAR_Update(&FC[i].AVG_NET_TOTAL, t, 0, 0);
	
				o *= r/delta_time;
				o  = Convert(FC[i].NET_FLOW_OIL.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_unit, o, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_OIL, o, 0, 0);
	
				w *= r/delta_time;
				w  = Convert(FC[i].NET_FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_unit, w, 0, FC[i].NET_FLOW_WATER.aux);
				
				VAR_Update(&FC[i].NET_FLOW_WATER, w, 0, 0);
	
				t  = Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_WATER.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				t += Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_OIL.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_TOTAL, t, 0, 0);
			}
		}
		else if (units[2]==c_mass)
		{
			if (FC[i].enable_NET)
			{/* only support mass conversion if NET option $$REVENUE$$ */
				t  = FC[i].FLOW_TOTAL.calc_val;
				t *= delta_time;
				t /= r;
                n  = Convert(FC[i].GROSS_TOTAL.class, units[0], FC[i].GROSS_TOTAL.calc_unit, t, 0, FC[i].GROSS_TOTAL.aux);
                o  = Convert(FC[i].FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_unit, (pom * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
				VAR_Update(&FC[i].FLOW_OIL, o, 0, 0);
	
				w = Convert(FC[i].FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].FLOW_WATER.calc_unit, (pwm * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
				VAR_Update(&FC[i].FLOW_WATER, w, 0, 0);

				//Add oil
				o = Convert(FC[i].GROSS_OIL.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_unit, (pom * n), 0, FC[i].GROSS_OIL.aux);
				Accum_Fractional_Oil(&o);
				VAR_Update(&FC[i].GROSS_OIL, FC[0].gross_oil_whole_part + FC[0].gross_oil_fract_part, 0, 0);

				//Add water
				w = Convert(FC[i].GROSS_WATER.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_unit, (pwm * n), 0, FC[i].GROSS_WATER.aux);
				Accum_Fractional_Water(&w);
				VAR_Update(&FC[i].GROSS_WATER, FC[0].gross_water_whole_part + FC[0].gross_water_fract_part, 0, 0);
					
				t  = Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_WATER.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_val, 0, FC[i].GROSS_WATER.aux);
				t += Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_OIL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_val, 0, FC[i].GROSS_OIL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, t, 0, 0);
								
				// Don't divide zero or by zero, don't use negative numbers
				if ( (FC[i].GROSS_TOTAL.val <= 0.0) ||  (FC[i].GROSS_WATER.val <= 0.0) )	
					t = 0.0;
				else
					t = 100 * (FC[i].GROSS_WATER.val / FC[i].GROSS_TOTAL.val );
				
				if (t > 100.0)	// We can't have more water than total liquid
					t = 100.0;
					
				VAR_Update(&FC[i].AVG_GROSS_TOTAL, t, 0, 0);

				o = Convert(FC[i].NET_OIL.class, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_unit, (pom * n), 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_OIL, FC[i].NET_OIL.calc_val+o, 0, 0);
	
				w = Convert(FC[i].NET_WATER.class, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_unit, (pwm * n), 0, FC[i].NET_WATER.aux);
				
				VAR_Update(&FC[i].NET_WATER, FC[i].NET_WATER.calc_val+w, 0, 0);
	
				t  = Convert(FC[i].NET_TOTAL.class, FC[i].NET_WATER.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_val, 0, FC[i].NET_WATER.aux);
				t += Convert(FC[i].NET_TOTAL.class, FC[i].NET_OIL.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_val, 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_TOTAL, t, 0, 0);
				
				// Don't divide zero or by zero, don't use negative numbers
				if ( (FC[i].NET_TOTAL.val <= 0.0) ||  (FC[i].NET_WATER.val <= 0.0) )
					t = 0.0;
				else
					t = 100 * (FC[i].NET_WATER.val / FC[i].NET_TOTAL.val);
				
				if (t > 100.0)	// We can't have more water than total liquid
					t = 100.0;	
				
				VAR_Update(&FC[i].AVG_NET_TOTAL, t, 0, 0);
	
				o = Convert(FC[i].NET_FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].NET_FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_OIL, o, 0, 0);
	
				w = Convert(FC[i].NET_FLOW_WATER.class, FC[i].FLOW_WATER.calc_unit, FC[i].NET_FLOW_WATER.calc_unit, FC[i].FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				
				VAR_Update(&FC[i].NET_FLOW_WATER, w, 0, 0);
	
				t  = Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_WATER.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				t += Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_OIL.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_TOTAL, t, 0, 0);
			}
			else
			{
				n = Convert(FC[i].GROSS_TOTAL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, n, 0, FC[i].GROSS_TOTAL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, 		FC[i].GROSS_TOTAL.calc_val+n, 	0, 0);
				VAR_Update(&FC[i].AVG_GROSS_TOTAL,	0.0,							0, 0);
                VAR_Update(&FC[i].NET_OIL, 			0.0, 							0, 0);
				VAR_Update(&FC[i].NET_WATER, 		0.0, 							0, 0);
				VAR_Update(&FC[i].NET_TOTAL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].AVG_NET_TOTAL,	0.0,							0, 0);
                VAR_Update(&FC[i].NET_FLOW_OIL, 	0.0, 							0, 0);
				VAR_Update(&FC[i].NET_FLOW_WATER, 	0.0, 							0, 0);
				VAR_Update(&FC[i].NET_FLOW_TOTAL, 	0.0, 							0, 0);
                VAR_Update(&FC[i].GROSS_OIL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].GROSS_WATER, 		0.0, 							0, 0);
                VAR_Update(&FC[i].FLOW_OIL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].FLOW_WATER, 		0.0, 							0, 0);
			}
		}
	}   

	GIEP;
}

void Set_FC_Units(int id)
{/* correct the variable classifications */
	unsigned int i;
	int units[3];
	float r;

	_GIEP;

	for (i=0;i<FCMAX;i++)
	{
		if	((FC[i].flow_class.val!=c_mass_flow)&&(FC[i].flow_class.val!=c_volumetric_flow))
		{
			FC[i].flow_class.val = c_volumetric_flow;
			FC[i].flow_unit.val = u_vfr_barrel_day;
			FC[i].accum_unit.val = u_v_barrel;
		}

		Breakout_Flow_Units(FC[i].flow_class.val, FC[i].flow_unit.val, units, &r);

		FC[i].FLOW_OIL.class = FC[i].flow_class.val;
		FC[i].FLOW_WATER.class = FC[i].flow_class.val;
		FC[i].FLOW_TOTAL.class = FC[i].flow_class.val;
		FC[i].GROSS_OIL.class = units[2];
		FC[i].GROSS_WATER.class = units[2];
		FC[i].GROSS_TOTAL.class = units[2];

		FC[i].NET_FLOW_OIL.class = FC[i].flow_class.val;
		FC[i].NET_FLOW_WATER.class = FC[i].flow_class.val;
		FC[i].NET_FLOW_TOTAL.class = FC[i].flow_class.val;
		FC[i].NET_OIL.class = units[2];
		FC[i].NET_WATER.class = units[2];
		FC[i].NET_TOTAL.class = units[2];

		FC[i].PULSE_FLOW.class = FC[i].flow_class.val;
		FC[i].PULSE_TOTAL.class = units[2];

		FC[i].FLOW_OIL.unit = FC[i].flow_unit.val;
		FC[i].FLOW_WATER.unit = FC[i].flow_unit.val;
		FC[i].FLOW_TOTAL.unit = FC[i].flow_unit.val;
		FC[i].GROSS_OIL.unit = FC[i].accum_unit.val;
		FC[i].GROSS_WATER.unit = FC[i].accum_unit.val;
		FC[i].GROSS_TOTAL.unit = FC[i].accum_unit.val;

		FC[i].NET_FLOW_OIL.unit = FC[i].flow_unit.val;
		FC[i].NET_FLOW_WATER.unit = FC[i].flow_unit.val;
		FC[i].NET_FLOW_TOTAL.unit = FC[i].flow_unit.val;
		FC[i].NET_OIL.unit = FC[i].accum_unit.val;
		FC[i].NET_WATER.unit = FC[i].accum_unit.val;
		FC[i].NET_TOTAL.unit = FC[i].accum_unit.val;

		FC[i].PULSE_FLOW.unit = FC[i].flow_unit.val;
		FC[i].PULSE_TOTAL.unit = FC[i].accum_unit.val;

		FC[i].FLOW_OIL.calc_unit =  FC[i].flow_unit.val;
		FC[i].FLOW_WATER.calc_unit = FC[i].flow_unit.val;
		FC[i].FLOW_TOTAL.calc_unit = FC[i].flow_unit.val;
		FC[i].GROSS_OIL.calc_unit = FC[i].accum_unit.val;
		FC[i].GROSS_WATER.calc_unit = FC[i].accum_unit.val;
		FC[i].GROSS_TOTAL.calc_unit = FC[i].accum_unit.val;

		FC[i].NET_FLOW_OIL.calc_unit =  FC[i].flow_unit.val;
		FC[i].NET_FLOW_WATER.calc_unit =  FC[i].flow_unit.val;
		FC[i].NET_FLOW_TOTAL.calc_unit =  FC[i].flow_unit.val;
		FC[i].NET_OIL.calc_unit =  FC[i].accum_unit.val;
		FC[i].NET_WATER.calc_unit = FC[i].accum_unit.val;
		FC[i].NET_TOTAL.calc_unit = FC[i].accum_unit.val;

		FC[i].PULSE_FLOW.calc_unit =  FC[i].flow_unit.val;
		FC[i].PULSE_TOTAL.calc_unit =  FC[i].accum_unit.val;
	}

	GIEP;
}

void Set_Density_Cal_Unit(int id)
{
	_GIEP;
	if ((Density_Cal_Unit.val==u_mpv_kg_cm_15C) || (Density_Cal_Unit.val==u_mpv_deg_API_60F))
	{
		if (Density_Cal.calc_unit!=Density_Cal_Unit.val)
		{
			Density_Cal.calc_unit = Density_Cal_Unit.val;
			Density_Cal.unit = Density_Cal.calc_unit;
		}
	}
	else
	{
		Density_Cal_Unit.val = Density_Cal.calc_unit;
	}

	if (Density_Cal_Unit.val==u_mpv_kg_cm_15C)
	{
		Density_D1.calc_unit = u_mfgr_specific_perc_per_kgm3_15C;
		Density_D1.unit = u_mfgr_specific_perc_per_kgm3_15C; 
		VAR_Update(&Density_D3, 0.00, 0, 0);       /*third order density correction   */
		VAR_Update(&Density_D2, 0.00, 0, 0);       /*third order density correction   */
		VAR_Update(&Density_D1, -0.0286, 0, 0);
		VAR_Update(&Density_D0, 24.6, 0, 0);
		VAR_Update(&Density_Cal, 0.0, 0, 0);
	}
	else
	if (Density_Cal_Unit.val==u_mpv_deg_API_60F)
	{
		Density_D1.calc_unit = u_mfgr_specific_perc_per_API_60F;
		Density_D1.unit = u_mfgr_specific_perc_per_API_60F; 
		VAR_Update(&Density_D3, 0.00, 0, 0);          /*third order density correction   */
		VAR_Update(&Density_D2, 0.00, 0, 0);          /*third order density correction   */
		VAR_Update(&Density_D1, 0.16, 0, 0);
		VAR_Update(&Density_D0, 0.00, 0, 0);
		VAR_Update(&Density_Cal, 32.0, 0, 0);
	}

	GIEP;
}

void PDI_Density_Correction(VAR* v)
{
	unsigned int i;

	i = v->aux;
	if (i>=FCMAX) return;
	if (i<0) return;

	FC[i].density_PDI_corrected = Convert(v->class, v->calc_unit, Density_Cal.calc_unit, v->calc_val, 0, v->aux);
}

void PDI_Density_Adj(VAR* v)
{
	unsigned int i;
	double t;

	i = v->aux;
	if (i>=FCMAX) return;
	if (i<0) return;

	if (FC[i].density_adj!=0.0)
	{
		t = v->base_val;

		/* convert to user units, add adjust, convert to calc units */
		t = Convert(v->class, v->calc_unit, v->unit, t, 0, v->aux);
		t += FC[i].density_adj;
		t = Convert(v->class, v->unit, v->calc_unit, t, 0, v->aux);

		v->base_val = t;
	}
}

void CORIOLIS_CFG(VAR* v)
{
	MPKT* p;
	int addr;
	int cor;
	int slave;
	int port;

	_GIEP;

	cor = v->aux>>16;
	addr = v->aux&0xFFFF;

	if ((ANALYZER_MODE.val&0xFF)==SUB_CCM)
	{
		switch(cor)
		{
			case 0: port = 2; slave = 2; break;
			case 1: port = 2; slave = 3; break;
			case 2: port = 3; slave = 4; break;
			case 3: port = 3; slave = 5; break;
			default: port = -1; slave = -1; break;
		}

		if ((port>=0) && (port<UART_MAX))
		{
			if (PORT[port].Slave == 0)
			{
				p = Master_Create((int*) 0, 1, slave, mb_cmd_w_regs, addr, 1, v->val);
				List_Add(&PORT[port].MASTER, (GENERIC*)p);
			}
		}
	}
	else
	{
		if ((DCM_PORT.val!=2) &&(DCM_PORT.val>=0) && (DCM_PORT.val<UART_MAX))
		{/* DCM port cannot be 2 and has to be in range */
			if (PORT[DCM_PORT.val].Slave == 0)
			{
				/*Master_Create((int*) 0, 1, 1, mb_cmd_w_regs, addr, 1, v->val);  old mike bug, write lc MM fail   */
				p = Master_Create((int*) 0, 1, 1, mb_cmd_w_regs, addr, 1, v->val);
				List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
			}
		}
	}

	GIEP;
}

/***************MM initial Slave address config   *******************/    
void CORIOLIS_INT_CFG(VAR* v)
{
	MPKT* p;
	int addr;
	int cor;
	int slave;
	int port;

	_GIEP;

	cor = v->aux>>16;
	addr = v->aux&0xFFFF;

	if ((ANALYZER_MODE.val&0xFF)==SUB_CCM)
	{
		switch(cor)
		{
			case 0: port = 2; slave = 2; break;
			case 1: port = 2; slave = 3; break;
			case 2: port = 3; slave = 4; break;
			case 3: port = 3; slave = 5; break; 
			case 4: port = 2; slave = 1; break;    /*ini slave ID 1   */
			default: port = -1; slave = -1; break;
		}

		if ((port>=0) && (port<UART_MAX))
		{
			if (PORT[port].Slave == 0)
			{
				p = Master_Create((int*) 0, 1, slave, mb_cmd_w_regs|mb_var_int, addr, 1, v->val);  /*add |mb_var_int*/
				List_Add(&PORT[port].MASTER, (GENERIC*)p);
			}
		}
	}
	else
	{
		if ((DCM_PORT.val!=2) && (DCM_PORT.val>=0) && (DCM_PORT.val<UART_MAX))
		{/* DCM cannot be 2 and has to be in range */
			if (PORT[DCM_PORT.val].Slave == 0)
			{
				p = Master_Create((int*) 0, 1, 1, mb_cmd_w_regs|mb_var_int, addr, 1, v->val);      /*add |mb_var_int*/
				List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
			}
		}
	}

	GIEP;
}
/***************MM initial Slave address config   *******************/

void CORIOLIS_ZERO1(void)
{
	MPKT* p;

	_GIEP;

	if ((ANALYZER_MODE.val&0xFF)==SUB_CCM)
	{
		if (PORT[2].Slave == 0)
		{
			p = Master_Create((int*) 0, 1, 2, mb_cmd_w_coil, 5, 1, 1.0);
			List_Add(&PORT[2].MASTER, (GENERIC*)p);
			COR[0].Z.val = TRUE;
		}
	}
	else if ((((ANALYZER_MODE.val&0xFF) == SUB_LOW) ||
			((ANALYZER_MODE.val&0xFF) == SUB_MID) ||
			((ANALYZER_MODE.val&0xFF) == SUB_ANALYZER)) &&
			(Density_Correction_Mode.val<6) && (Density_Correction_Mode.val>0))
	{
		if ((DCM_PORT.val!=2) && (DCM_PORT.val>=0) && (DCM_PORT.val<UART_MAX))
		{/* DCM port cannot be 2 and has to be in range */
			if (PORT[DCM_PORT.val].Slave == 0)
			{
				p = Master_Create((int*) 0, 1, 1, mb_cmd_w_coil, 5, 1, 1.0);
				List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
				COR[0].Z.val = TRUE;
			}
		}
	}

	GIEP;
}

void CORIOLIS_ZERO2(void)
{
	MPKT* p;

	if ((ANALYZER_MODE.val&0xFF)!=SUB_CCM) return;
	if (PORT[2].Slave == 0)
	{
		_GIEP;
		p = Master_Create((int*) 0, 1, 3, mb_cmd_w_coil, 5, 1, 1.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);
		COR[1].Z.val = TRUE;
		GIEP;
	}
}

void CORIOLIS_ZERO3(void)
{
	MPKT* p;

	if ((ANALYZER_MODE.val&0xFF)!=SUB_CCM) return;
	if (!CCM_2LIQ) return;
	if (PORT[3].Slave == 0)
	{
		_GIEP;
		p = Master_Create((int*) 0, 1, 4, mb_cmd_w_coil, 5, 1, 1.0);
		List_Add(&PORT[3].MASTER, (GENERIC*)p);
		COR[2].Z.val = TRUE;
		GIEP;
	}
}

void CORIOLIS_ZERO4(void)
{
	MPKT* p;

	if ((ANALYZER_MODE.val&0xFF)!=SUB_CCM) return;
	if (!CCM_2GAS) return;
	if (PORT[3].Slave == 0)
	{
		_GIEP;
		p = Master_Create((int*) 0, 1, 5, mb_cmd_w_coil, 5, 1, 1.0);
		List_Add(&PORT[3].MASTER, (GENERIC*)p);
		COR[3].Z.val = TRUE;
		GIEP;
	}
}

void Sampling_Error(void)
{
	if (DIO_RESEARCH_MODE.val) return;

	if (SAMPLE_PENDING)
	{
		DIAGNOSTICS[1] |= ERROR2_SAMPLE_ERROR;

		GATE_TIMEOUT = TRUE;
		READ_ADC_INPUTS = 3;

		Read_RTC();

		CopyTempVars();
		VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);
		REG_WATERCUT_RAW = 0.0;
		VAR_NaN(&REG_WATERCUT);

		//VT_SELECT++;
        // ADDED BY DKOH FOR CROSS OSC SELECTION [MAY 8, 2019]
        if (VT_SELECT == 0) VT_SELECT = 2;
        else if (VT_SELECT == 2) VT_SELECT = 1;
        else if (VT_SELECT == 1) VT_SELECT = 3;
        else VT_SELECT = 0;

		if ((VT_SELECT >= VTMAX) || (VT_SELECT < 0))
		{
			VT_SELECT = 0;
		}
		Setup_Sample();
	}
}

void CCM_Record_Viewer(int id)
{
	unsigned int* p;
	int i,v;

	if (CCM_Record_view.val>CCMrecmax) CCM_Record_view.val = CCMrecmax;
	else if (CCM_Record_view.val<1) CCM_Record_view.val = 1;

	v = CCM_Record_view.val - 1;
	if (v<0) v = 0;

	if (CCMREC[v]==0)
	{
		CCM_Record.Start_SS		 = 0;
		CCM_Record.Start_MM		 = 0;
		CCM_Record.Start_HH		 = 0;
		CCM_Record.Start_YEAR	 = 0;
		CCM_Record.Start_DAY	 = 0;
		CCM_Record.Start_MONTH	 = 0;
	
		CCM_Record.Stop_SS		 = 0;
		CCM_Record.Stop_MM		 = 0;
		CCM_Record.Stop_HH		 = 0;
		CCM_Record.Stop_YEAR	 = 0;
		CCM_Record.Stop_DAY		 = 0;
		CCM_Record.Stop_MONTH	 = 0;

		CCM_Record.stream		 = 0;
		CCM_Record.elapsed_s	 = 0;
		CCM_Record.duration		 = 0;
		CCM_Record.purge		 = 0;
		CCM_Record.gross_gas	 = 0;
		CCM_Record.gross_oil	 = 0;
		CCM_Record.gross_water	 = 0;
		CCM_Record.gross_total	 = 0;
		CCM_Record.gas24		 = 0;
		CCM_Record.oil24		 = 0;
		CCM_Record.water24		 = 0;
		CCM_Record.total24		 = 0;
		CCM_Record.watercut		 = 0;
	}
	else
	{
		p = (unsigned int*)CCMREC[v];

		CCM_Record.Start_SS		 = p[0] & 0xFF;
		CCM_Record.Start_MM		 = (p[0]>>8) & 0xFF;
		CCM_Record.Start_HH		 = (p[0]>>16) & 0xFF;
		CCM_Record.Start_YEAR	 = p[1] & 0xFF;
		CCM_Record.Start_DAY	 = (p[1]>>8) & 0xFF;
		CCM_Record.Start_MONTH	 = (p[1]>>16) & 0xFF;

		CCM_Record.Stop_SS		 = p[2] & 0xFF;
		CCM_Record.Stop_MM		 = (p[2]>>8) & 0xFF;
		CCM_Record.Stop_HH		 = (p[2]>>16) & 0xFF;
		CCM_Record.Stop_YEAR	 = p[3] & 0xFF;
		CCM_Record.Stop_DAY		 = (p[3]>>8) & 0xFF;
		CCM_Record.Stop_MONTH	 = (p[3]>>16) & 0xFF;

		CCM_Record.stream		 = FMIEEE(p[4]);
		CCM_Record.elapsed_s	 = FMIEEE(p[5]);
		CCM_Record.duration		 = FMIEEE(p[6]);
		CCM_Record.purge		 = FMIEEE(p[7]);
		CCM_Record.gross_gas	 = FMIEEE(p[8]);
		CCM_Record.gross_oil	 = FMIEEE(p[9]);
		CCM_Record.gross_water	 = FMIEEE(p[10]);
		CCM_Record.gross_total	 = FMIEEE(p[11]);
		CCM_Record.gas24		 = FMIEEE(p[12]);
		CCM_Record.oil24		 = FMIEEE(p[13]);
		CCM_Record.water24		 = FMIEEE(p[14]);
		CCM_Record.total24		 = FMIEEE(p[15]);
		CCM_Record.watercut		 = FMIEEE(p[16]);
	}
}

void CCM_TESTING(void)
{
	unsigned int rec[CCM_Records_log_record_size];
	long double delta_time;
	int c,delta,per;

	if ((ANALYZER_MODE.val&0xFF)!=SUB_CCM) return;
	/*if (!DIO_CCM_START.val) return;  */   /*Moved down for saving CCM test record when manually stop -  */
	if (DIO_CCM_PURGE_STAT.val) return;

	_GIEP;

	{/* countdown timer */
		c = *TMR1_CNT;

		if (c>=CCM_CNT)
		{
			delta = c - CCM_CNT;
		}
		else
		{
			per = *TMR1_PER;
			delta = (per-CCM_CNT) + c;
		}

		CCM_CNT = c;

		delta_time = delta;
		delta_time /= TMR1_FREQ;

		CCM_REMAINING_S -= delta_time;
		CCM_REMAINING = CCM_REMAINING_S/3600.0;

		CCM_ELAPSED_S += delta_time;
	}

	{
		CCM_24_GAS = CCM_GAS_TOTAL.val * (24.0*3600.0) / CCM_ELAPSED_S;
		CCM_24_TOTAL = FC[0].GROSS_TOTAL.calc_val * (24.0*3600.0) / CCM_ELAPSED_S;
		CCM_24_OIL = FC[0].GROSS_OIL.calc_val * (24.0*3600.0) / CCM_ELAPSED_S;
		CCM_24_WATER = FC[0].GROSS_WATER.calc_val * (24.0*3600.0) / CCM_ELAPSED_S;
	}

	if (CCM_REMAINING_S<=0.0)
	{/* clear test status indicator & reset */
		DIO_CCM_START.val = FALSE;    
		
		REG_CCM_TEST_STAT.val = 0;  /*logging test status   */
		
		CCM_START();        

		{/* generate record & store */

			/* note: 2 MSbits are reserved for log tracking */
 			rec[0] = ((CCM_TIME_START.tm_hour&0xFF)<<16)|((CCM_TIME_START.tm_min&0xFF)<<8|((CCM_TIME_START.tm_sec&0xFF)));
			/************************************************/

			rec[1] = ((CCM_TIME_START.tm_mon&0xFF)<<16)|((CCM_TIME_START.tm_mday&0xFF)<<8|((CCM_TIME_START.tm_year&0xFF)));
			rec[2] = ((CCM_TIME_STOP.tm_hour&0xFF)<<16)|((CCM_TIME_STOP.tm_min&0xFF)<<8|((CCM_TIME_STOP.tm_sec&0xFF)));
			rec[3] = ((CCM_TIME_STOP.tm_mon&0xFF)<<16)|((CCM_TIME_STOP.tm_mday&0xFF)<<8|((CCM_TIME_STOP.tm_year&0xFF)));
			rec[4] = TOIEEE(REG_STREAM_SELECT.val);
			rec[5] = TOIEEE(CCM_ELAPSED_S);
			rec[6] = TOIEEE(CCM_DURATION);
			rec[7] = TOIEEE(CCM_PURGE);
			rec[8] = TOIEEE(CCM_GAS_TOTAL.val);
			rec[9] = TOIEEE(FC[0].GROSS_OIL.val);
			rec[10] = TOIEEE(FC[0].GROSS_WATER.val);
			rec[11] = TOIEEE(FC[0].GROSS_TOTAL.val);
			rec[12] = TOIEEE(CCM_24_GAS);
			rec[13] = TOIEEE(CCM_24_OIL);
			rec[14] = TOIEEE(CCM_24_WATER);
			rec[15] = TOIEEE(CCM_24_TOTAL);
			rec[16] = TOIEEE(FC[0].GROSS_WATER.val/FC[0].GROSS_TOTAL.val);	/* overall watercut */

			/* note: 16 LSbits are reserved for CKSUM & must be initialized to 0 */
			rec[17] = 0;
			/******************************************/

			RecordLogEntry(&CCM_Records, 0, rec);

			FindNextLogIndex(&CCM_Records, CCMrecmax, CCMREC);
		}          

		if (HSALT.CHANGED)
		{
			Write_CFG_USER();
			HSALT.CHANGED = FALSE;
		}
	}
	else
	{/* continue testing */
		Timer_Insert(&TMR_CCM_TEST,0,TMR_action_replace);
	}
   
	GIEP;   
	
	if (!DIO_CCM_START.val) return;  /*Moved down for saving CCM test record when manually stop -  */
 
}

void CCM_PURGING(void)
{
	long double delta_time;
	int c,delta,per;
	BOOL done;

	if ((ANALYZER_MODE.val&0xFF)!=SUB_CCM) return;
	if (!DIO_CCM_START.val) return;
	if (!DIO_CCM_PURGE_STAT.val) return;

	_GIEP;

	done = FALSE;

	if(DIO_CCM_PURGE_TIME.val)
	{/* time purge */
		c = *TMR1_CNT;

		if (c>=CCM_CNT)
		{
			delta = c - CCM_CNT;
		}
		else
		{
			per = *TMR1_PER;
			delta = (per-CCM_CNT) + c;
		}

		CCM_CNT = c;

		delta_time = delta;
		delta_time /= TMR1_FREQ;

		CCM_REMAINING_S -= delta_time;
		CCM_REMAINING = CCM_REMAINING_S/3600.0;

		CCM_ELAPSED_S += delta_time;

		if (CCM_REMAINING_S<=0.0) done = TRUE;
	}
	else
	{/* mass/vol purge */
		CCM_REMAINING = CCM_PURGE - FC[0].GROSS_TOTAL.calc_val;
		if (CCM_REMAINING<=0.0) done = TRUE;
	}

	if (done)
	{/* clear purge status indicator, continue with test */
		Mirror_From_Stream_Table((VAR*)0);	/* restore salt value */    
		
		if (HSALT.ENABLED.val) // only if heuristic is running
			REG_SALINITY.val = 0.02;           /*HSALT always run option - reset after purge   */
		
		HSALT.TEST_IN_PROGRESS = TRUE;
		GET_TIME(&CCM_TIME_START);
		CCM_CNT = *TMR1_CNT;
		CCM_REMAINING = CCM_DURATION;
		CCM_REMAINING_S = CCM_REMAINING * 3600.0;
		CCM_ELAPSED_S = 0.0;
		DIO_CCM_PURGE_STAT.val = FALSE;     
		
		REG_CCM_PURGE_STAT.val = 0;   /*logging purge status   */
		
		DIO_TOTALIZER_CONTROL.val = TRUE;
		Clear_Accumulators(0);
		Totalizer_Control(0);
		Timer_Insert(&TMR_CCM_TEST,0,TMR_action_replace);
	}
	else
	{/* continue purging */
		Timer_Insert(&TMR_CCM_PURGE,0,TMR_action_replace);
	}

	GIEP;
}

void CCM_START(void)
{
	_GIEP;

	if ((!DIO_CCM_START.val)||((ANALYZER_MODE.val&0xFF)!=SUB_CCM))    
	{
		DIO_TOTALIZER_CONTROL.val = FALSE; 
		
		REG_CCM_TEST_STAT.val = 0;  /*logging test status   */
		REG_CCM_PURGE_STAT.val = 0;   /*logging purge status   */
		
		Totalizer_Control(0);
		DIO_CCM_PURGE_STAT.val = FALSE;
		CCM_REMAINING = 0.0;
		CCM_REMAINING_S = 0.0;
		GET_TIME(&CCM_TIME_STOP);
		HSALT.PURGING = FALSE;
		HSALT.TEST_IN_PROGRESS = FALSE;
		DIO_TOTALIZER_CONTROL.val = TRUE;	/* Allow for totalizers to be enabled after reset */
	}
	else
	if (DIO_CCM_START.val)
	{
		CLEAR_TIME(&CCM_TIME_START);
		CLEAR_TIME(&CCM_TIME_STOP);

		if (CCM_DURATION<=0.1)
		{
			CCM_DURATION = 0.1;
		}
		else
		if (CCM_DURATION>24.0)
		{
			CCM_DURATION = 24.0;
		}

		if(DIO_CCM_PURGE_TIME.val)
		{/* time purge */
		                                                                                                                           

			if (CCM_PURGE<=0.01)
			{
				CCM_PURGE = 0.01;
			}
			else
			if (CCM_PURGE>6.0)
			{
				CCM_PURGE = 6.0;
			}
		}
		else
		{/* mass/vol purge */
			DIO_TOTALIZER_CONTROL.val = TRUE;

			if (CCM_PURGE<=1.0)
			{
				CCM_PURGE = 1.0;
			}
			else
			if (CCM_PURGE>1000.0)
			{
				CCM_PURGE = 1000.0;
			}
		}

		GET_TIME(&CCM_TIME_START);
		DIO_CCM_PURGE_STAT.val = TRUE;  
		
		REG_CCM_TEST_STAT.val = 1;  /*logging test status   */
		REG_CCM_PURGE_STAT.val = 1;   /*logging purge status   */

		Clear_Accumulators(0);
		Totalizer_Control(0);
		CCM_24_GAS = 0.0;
		CCM_24_TOTAL = 0.0;
		CCM_24_OIL = 0.0;
		CCM_24_WATER = 0.0;                 

		CCM_CNT = *TMR1_CNT;
		CCM_REMAINING = CCM_PURGE;
		CCM_REMAINING_S = CCM_REMAINING * 3600.0;
		CCM_ELAPSED_S = 0.0;
		Timer_Insert(&TMR_CCM_PURGE,0,TMR_action_replace);

		HSALT.PURGING = TRUE;
		HSALT.TEST_IN_PROGRESS = FALSE;
	}

	GIEP;
}

void VAR_SET_STR_DV(int id)
{
	VAR* v;
	unsigned int ui;

	v = HART_Lookup(VAR_SELECT_DV.val, &ui, (int*)&HART_DV_Table);

	VAR_SET_STR(v, ui);
}

void VAR_SET_STR_DVIN(int id)
{
	VAR* v;
	unsigned int ui;

	v = HART_Lookup(VAR_SELECT_DVIN.val, &ui, (int*)&HART_DVINPUT_Table);

	VAR_SET_STR(v, ui);
}

void VAR_SET_STR(VAR* v, unsigned int ui)
{
	int i;
	char u[8];

	_GIEP;

	u[0] = 0;
	Get_Unit(v->class, v->unit, u);

	{/* initialize */
		for (i=0;i<10;i++)
		{
			STR_VAR_DESC[i] = 0;
		}

		for (i=0;i<4;i++)
		{
			STR_VAR_UNIT[i] = 0;
		}

		VAR_INT_SCALE = 0;
		VAR_LONGINT_SCALE = 0;
	}

	if (ui!=HART_RESP_Invalid_Selection)
	{
		for (i=0;i<10;i++)
		{
			STR_VAR_DESC[i] = ((v->name[2*i+0]&0xFF)<<8) | (v->name[2*i+1]&0xFF);
		}

		for (i=0;i<4;i++)
		{
			STR_VAR_UNIT[i] = ((u[2*i+0]&0xFF)<<8) | (u[2*i+1]&0xFF);
		}

		VAR_INT_SCALE = v->scale;
		VAR_LONGINT_SCALE = v->scale_long;
	}

	GIEP;
}

void Read_RTC(void)
{
	if (GATE_TIMEOUT)
	{/* in case RTC access during frequency count - may cause problems with 512Hz clock output */
		Read_DS1340(8, 10, RTC);
	}
}

void Update_i_Log_Var(void)
{
	VAR* v;
	int i;
	unsigned int ui;
	long double t;

	_GIEP;

	for (i=0;i<30;i++)
	{
		v = HART_Lookup(LOG_VAR_SEL[i], &ui, (int*)&HART_DV_Table);

		{/* short integer */
			t = v->val * v->scale;
			if (t > 32767.0) t = 32767.0;
			else if (t < -32768.0) t = -32768.0;
			i_LV[i] = t;
		}

		{/* long integer */
			t = v->val * v->scale_long;
			if (t > 2147483647.0) t = 2147483647.0;
			else if (t < -2147483648.0) t = -2147483648.0;
			il_LV[i] = t;
		}

		{/* float */
			f_LV[i] = v->val;
		}
	}

	GIEP;
}

// called by Mirror_From_Stream_Table
// called automatically when HSALT.ENABLED is updated via MB (and/or HART?)
void HSALT_CLEAR(void)
{
	int 			mode; 
	//unsigned int	i; 

	_GIEP;

	if (DEMO) mode = DEMO_ANALYZER_MODE.val;
	else mode = ANALYZER_MODE.val;

	switch(mode&0xFF)
	{
		case SUB_HIGH:
		case SUB_FULL:
		case SUB_CCM:
		{
			break;
		}

		default:
		{
			HSALT.ENABLED.val = FALSE;
			break;
		}
	}

	/*
	if ((HSALT.span.val<1.0) || (HSALT.span.val>100.0)) //HSALT.span = 50.0;    //.val  
	VAR_Update(&HSALT.span, 50.0, 0, 0);  
	*/
	
	
	
	//HSALT.new = TRUE;
	HSALT.Fmin = -1;
	//HSALT.Fmax = -1;
	HSALT.Dmin = -1;
	HSALT.Dmax = -1;
	HSALT.CHANGED = FALSE;
	HSALT.PURGING = FALSE;
	HSALT.TEST_IN_PROGRESS = FALSE;
	
	boxcar_reset_needed = TRUE;
	gas_routine_reset_needed = TRUE;
	
	
	
	/*Gas entrained freq samples clear   */
	/*
	for (i=0;i<2001;i++)          
	{
		FREQ_SAMPLE15[i] = 0;  
	}
	*/

	GIEP;
}

/*****************************************************************************************************************/

void Submit_GET_ANALYZER_CONFIG(void)
{
	Timer_Insert(&TMR_GET_ANALYZER_CONFIG,0,TMR_action_replace);
}

void GET_ANALYZER_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (!DIO_ANALYZER_GET.val) return;

	/* read record */
	r = M24C02_Record(1,ANALYZER.ADDR, p);
	if (r) DIO_ANALYZER_GET.val = FALSE;
	else return;

	i = 0;

	GetInt(&ANALYZER.SNUM,p,&i);

	ANALYZER.BNUM = p[i];
	i++;
	ANALYZER.REV = p[i];
	i++;

	ANALYZER.MONTH = p[i];
	i++;
	ANALYZER.DAY = p[i];
	i++;
	ANALYZER.YEAR = p[i];
	i++;
	i++;

	GetInt(&DAC_TRIM_I_0[DAC_VTUNE],p,&i);
	GetFlt(&DAC_TRIM_F_0[DAC_VTUNE],p,&i);
	GetInt(&DAC_TRIM_I_1[DAC_VTUNE],p,&i);
	GetFlt(&DAC_TRIM_F_1[DAC_VTUNE],p,&i);

	GetInt(&ADC_TRIM_I_0[ADC_Vinc],p,&i);
	GetFlt(&ADC_TRIM_F_0[ADC_Vinc],p,&i);
	GetInt(&ADC_TRIM_I_1[ADC_Vinc],p,&i);
	GetFlt(&ADC_TRIM_F_1[ADC_Vinc],p,&i);

	GetInt(&ADC_TRIM_I_0[ADC_Vref],p,&i);
	GetFlt(&ADC_TRIM_F_0[ADC_Vref],p,&i);
	GetInt(&ADC_TRIM_I_1[ADC_Vref],p,&i);
	GetFlt(&ADC_TRIM_F_1[ADC_Vref],p,&i);

	GetInt(&ADC_TRIM_I_0[ADC_Text],p,&i);
	GetFlt(&ADC_TRIM_F_0[ADC_Text],p,&i);
	GetInt(&ADC_TRIM_I_1[ADC_Text],p,&i);
	GetFlt(&ADC_TRIM_F_1[ADC_Text],p,&i);

	GetFlt(&RTD_CURRENT,p,&i);
	GetFlt(&RTD_GAIN,p,&i);
	GetFlt(&TEMPERATURE_TRIM_T0,p,&i);
	GetFlt(&TEMPERATURE_TRIM_T1,p,&i);
	GetFlt(&RTD_CAL_LO_OHM,p,&i);
	GetFlt(&RTD_CAL_LO_V,p,&i);
	GetFlt(&RTD_CAL_HI_OHM,p,&i);
	GetFlt(&RTD_CAL_HI_V,p,&i);

	if (SA)
	{
		GetInt(&ADC_TRIM_I_0[ADC_Spare],p,&i);
		GetFlt(&ADC_TRIM_F_0[ADC_Spare],p,&i);
		GetInt(&ADC_TRIM_I_1[ADC_Spare],p,&i);
		GetFlt(&ADC_TRIM_F_1[ADC_Spare],p,&i);
	}

	if (!SA)
	{
		GetInt(&DAC_TRIM_I_0[DAC_Aout1],p,&i);
		GetFlt(&DAC_TRIM_F_0[DAC_Aout1],p,&i);
		GetInt(&DAC_TRIM_I_1[DAC_Aout1],p,&i);
		GetFlt(&DAC_TRIM_F_1[DAC_Aout1],p,&i);
		GetInt(&t,p,&i);
		VAR_Update(&AO[0].TRIM_MIN, t, 0, 0);
		GetInt(&t,p,&i);
		VAR_Update(&AO[0].TRIM_MAX, t, 0, 0);
		GetFlt(&AO[0].TRIM_MIN_C,p,&i);
		GetFlt(&AO[0].TRIM_MAX_C,p,&i);

		GetInt(&ADC_TRIM_I_0[ADC_Ain1],p,&i);
		GetFlt(&ADC_TRIM_F_0[ADC_Ain1],p,&i);
		GetInt(&ADC_TRIM_I_1[ADC_Ain1],p,&i);
		GetFlt(&ADC_TRIM_F_1[ADC_Ain1],p,&i);
		GetInt(&t,p,&i);
		VAR_Update(&AI[0].TRIM_MIN, t, 0, 0);
		GetInt(&t,p,&i);
		VAR_Update(&AI[0].TRIM_MAX, t, 0, 0);
		GetFlt(&AI[0].TRIM_MIN_C,p,&i);
		GetFlt(&AI[0].TRIM_MAX_C,p,&i);

		GetInt(&ADC_TRIM_I_0[ADC_VTUNE],p,&i);
		GetFlt(&ADC_TRIM_F_0[ADC_VTUNE],p,&i);
		GetInt(&ADC_TRIM_I_1[ADC_VTUNE],p,&i);
		GetFlt(&ADC_TRIM_F_1[ADC_VTUNE],p,&i);

		GetInt(&ADC_TRIM_I_0[ADC_GNDSEN],p,&i);
		GetFlt(&ADC_TRIM_F_0[ADC_GNDSEN],p,&i);
		GetInt(&ADC_TRIM_I_1[ADC_GNDSEN],p,&i);
		GetFlt(&ADC_TRIM_F_1[ADC_GNDSEN],p,&i);

		GetInt(&DAC_TRIM_I_0[DAC_OSCSEL],p,&i);
		GetFlt(&DAC_TRIM_F_0[DAC_OSCSEL],p,&i);
		GetInt(&DAC_TRIM_I_1[DAC_OSCSEL],p,&i);
		GetFlt(&DAC_TRIM_F_1[DAC_OSCSEL],p,&i);

		GetInt(&DAC_TRIM_I_0[DAC_TUNESEL],p,&i);
		GetFlt(&DAC_TRIM_F_0[DAC_TUNESEL],p,&i);
		GetInt(&DAC_TRIM_I_1[DAC_TUNESEL],p,&i);
		GetFlt(&DAC_TRIM_F_1[DAC_TUNESEL],p,&i);
	}
}

void Submit_STORE_ANALYZER_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_ANALYZER_CONFIG,0,TMR_action_replace);
}

void STORE_ANALYZER_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (!DIO_ANALYZER_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(ANALYZER.SNUM,p,&i);

	p[i] = ANALYZER.BNUM;
	i++;
	p[i] = ANALYZER.REV;
	i++;

	ANALYZER.MONTH		= RTC[7] & 0x1F;
	ANALYZER.DAY		= RTC[6] & 0x3F;
	ANALYZER.YEAR		= RTC[8] & 0xFF;

	p[i] = ANALYZER.MONTH;
	i++;
	p[i] = ANALYZER.DAY;
	i++;
	p[i] = ANALYZER.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	PutInt(DAC_TRIM_I_0[DAC_VTUNE],p,&i);
	PutFlt(DAC_TRIM_F_0[DAC_VTUNE],p,&i);
	PutInt(DAC_TRIM_I_1[DAC_VTUNE],p,&i);
	PutFlt(DAC_TRIM_F_1[DAC_VTUNE],p,&i);

	PutInt(ADC_TRIM_I_0[ADC_Vinc],p,&i);
	PutFlt(ADC_TRIM_F_0[ADC_Vinc],p,&i);
	PutInt(ADC_TRIM_I_1[ADC_Vinc],p,&i);
	PutFlt(ADC_TRIM_F_1[ADC_Vinc],p,&i);

	PutInt(ADC_TRIM_I_0[ADC_Vref],p,&i);
	PutFlt(ADC_TRIM_F_0[ADC_Vref],p,&i);
	PutInt(ADC_TRIM_I_1[ADC_Vref],p,&i);
	PutFlt(ADC_TRIM_F_1[ADC_Vref],p,&i);

	PutInt(ADC_TRIM_I_0[ADC_Text],p,&i);
	PutFlt(ADC_TRIM_F_0[ADC_Text],p,&i);
	PutInt(ADC_TRIM_I_1[ADC_Text],p,&i);
	PutFlt(ADC_TRIM_F_1[ADC_Text],p,&i);

	PutFlt(RTD_CURRENT,p,&i);
	PutFlt(RTD_GAIN,p,&i);
	PutFlt(TEMPERATURE_TRIM_T0,p,&i);
	PutFlt(TEMPERATURE_TRIM_T1,p,&i);
	PutFlt(RTD_CAL_LO_OHM,p,&i);
	PutFlt(RTD_CAL_LO_V,p,&i);
	PutFlt(RTD_CAL_HI_OHM,p,&i);
	PutFlt(RTD_CAL_HI_V,p,&i);

	if (SA)
	{
		PutInt(ADC_TRIM_I_0[ADC_Spare],p,&i);
		PutFlt(ADC_TRIM_F_0[ADC_Spare],p,&i);
		PutInt(ADC_TRIM_I_1[ADC_Spare],p,&i);
		PutFlt(ADC_TRIM_F_1[ADC_Spare],p,&i);
	}

	if (!SA)
	{
		PutInt(DAC_TRIM_I_0[DAC_Aout1],p,&i);
		PutFlt(DAC_TRIM_F_0[DAC_Aout1],p,&i);
		PutInt(DAC_TRIM_I_1[DAC_Aout1],p,&i);
		PutFlt(DAC_TRIM_F_1[DAC_Aout1],p,&i);
		t = AO[0].TRIM_MIN.calc_val;
		PutInt(t,p,&i);
		t = AO[0].TRIM_MAX.calc_val;
		PutInt(t,p,&i);
		PutFlt(AO[0].TRIM_MIN_C,p,&i);
		PutFlt(AO[0].TRIM_MAX_C,p,&i);

		PutInt(ADC_TRIM_I_0[ADC_Ain1],p,&i);
		PutFlt(ADC_TRIM_F_0[ADC_Ain1],p,&i);
		PutInt(ADC_TRIM_I_1[ADC_Ain1],p,&i);
		PutFlt(ADC_TRIM_F_1[ADC_Ain1],p,&i);
		t = AI[0].TRIM_MIN.calc_val;
		PutInt(t,p,&i);
		t = AI[0].TRIM_MAX.calc_val;
		PutInt(t,p,&i);
		PutFlt(AI[0].TRIM_MIN_C,p,&i);
		PutFlt(AI[0].TRIM_MAX_C,p,&i);

		PutInt(ADC_TRIM_I_0[ADC_VTUNE],p,&i);
		PutFlt(ADC_TRIM_F_0[ADC_VTUNE],p,&i);
		PutInt(ADC_TRIM_I_1[ADC_VTUNE],p,&i);
		PutFlt(ADC_TRIM_F_1[ADC_VTUNE],p,&i);

		PutInt(ADC_TRIM_I_0[ADC_GNDSEN],p,&i);
		PutFlt(ADC_TRIM_F_0[ADC_GNDSEN],p,&i);
		PutInt(ADC_TRIM_I_1[ADC_GNDSEN],p,&i);
		PutFlt(ADC_TRIM_F_1[ADC_GNDSEN],p,&i);

		PutInt(DAC_TRIM_I_0[DAC_OSCSEL],p,&i);
		PutFlt(DAC_TRIM_F_0[DAC_OSCSEL],p,&i);
		PutInt(DAC_TRIM_I_1[DAC_OSCSEL],p,&i);
		PutFlt(DAC_TRIM_F_1[DAC_OSCSEL],p,&i);

		PutInt(DAC_TRIM_I_0[DAC_TUNESEL],p,&i);
		PutFlt(DAC_TRIM_F_0[DAC_TUNESEL],p,&i);
		PutInt(DAC_TRIM_I_1[DAC_TUNESEL],p,&i);
		PutFlt(DAC_TRIM_F_1[DAC_TUNESEL],p,&i);
	}

	/* write record */
	r = M24C02_Record(0,ANALYZER.ADDR,p);
	if (r) DIO_ANALYZER_SET.val = FALSE;
}

void Submit_GET_ANALOGIO_CONFIG(void)
{
	Timer_Insert(&TMR_GET_ANALOGIO_CONFIG,0,TMR_action_replace);
}

void GET_ANALOGIO_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int	i,j,t;

	if (!DIO_ANALOGIO_GET.val) return;

	/* read record */
	r = M24C02_Record(1,ANALOGIO.ADDR, p);
	if (r) DIO_ANALOGIO_GET.val = FALSE;
	else return;

	i = 0;

	GetInt(&ANALOGIO.SNUM,p,&i);

	ANALOGIO.BNUM = p[i];
	i++;
	ANALOGIO.REV = p[i];
	i++;

	ANALOGIO.MONTH = p[i];
	i++;
	ANALOGIO.DAY = p[i];
	i++;
	ANALOGIO.YEAR = p[i];
	i++;
	i++;

	if (SA)
	{
		GetInt(&DAC_TRIM_I_0[DAC_Aout1],p,&i);
		GetFlt(&DAC_TRIM_F_0[DAC_Aout1],p,&i);
		GetInt(&DAC_TRIM_I_1[DAC_Aout1],p,&i);
		GetFlt(&DAC_TRIM_F_1[DAC_Aout1],p,&i);
		GetInt(&t,p,&i);
		VAR_Update(&AO[0].TRIM_MIN, t, 0, 0);
		GetInt(&t,p,&i);
		VAR_Update(&AO[0].TRIM_MAX, t, 0, 0);
		GetFlt(&AO[0].TRIM_MIN_C,p,&i);
		GetFlt(&AO[0].TRIM_MAX_C,p,&i);
	}
	else
	{
		for (j=ADC_Ain2;j<=ADC_Ain5;j++)
		{
			GetInt(&ADC_TRIM_I_0[j],p,&i);
			GetFlt(&ADC_TRIM_F_0[j],p,&i);
			GetInt(&ADC_TRIM_I_1[j],p,&i);
			GetFlt(&ADC_TRIM_F_1[j],p,&i);
		}

		for (j=DAC_Aout2;j<=DAC_Aout5;j++)
		{
			GetInt(&DAC_TRIM_I_0[j],p,&i);
			GetFlt(&DAC_TRIM_F_0[j],p,&i);
			GetInt(&DAC_TRIM_I_1[j],p,&i);
			GetFlt(&DAC_TRIM_F_1[j],p,&i);
		}

		for (j=1;j<5;j++)
		{
			GetInt(&t,p,&i);
			VAR_Update(&AI[j].TRIM_MIN, t, 0, 0);
			GetInt(&t,p,&i);
			VAR_Update(&AI[j].TRIM_MAX, t, 0, 0);
			GetFlt(&AI[j].TRIM_MIN_C,p,&i);
			GetFlt(&AI[j].TRIM_MAX_C,p,&i);

			GetInt(&t,p,&i);
			VAR_Update(&AO[j].TRIM_MIN, t, 0, 0);
			GetInt(&t,p,&i);
			VAR_Update(&AO[j].TRIM_MAX, t, 0, 0);
			GetFlt(&AO[j].TRIM_MIN_C,p,&i);
			GetFlt(&AO[j].TRIM_MAX_C,p,&i);
		}
	}
}

void Submit_STORE_ANALOGIO_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_ANALOGIO_CONFIG,0,TMR_action_replace);
}

void STORE_ANALOGIO_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,j,t;

	if (!DIO_ANALOGIO_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(ANALOGIO.SNUM,p,&i);

	p[i] = ANALOGIO.BNUM;
	i++;
	p[i] = ANALOGIO.REV;
	i++;

	ANALOGIO.MONTH		= RTC[7] & 0x1F;
	ANALOGIO.DAY		= RTC[6] & 0x3F;
	ANALOGIO.YEAR		= RTC[8] & 0xFF;

	p[i] = ANALOGIO.MONTH;
	i++;
	p[i] = ANALOGIO.DAY;
	i++;
	p[i] = ANALOGIO.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	if (!SA)
	{
		PutInt(DAC_TRIM_I_0[DAC_Aout1],p,&i);
		PutFlt(DAC_TRIM_F_0[DAC_Aout1],p,&i);
		PutInt(DAC_TRIM_I_1[DAC_Aout1],p,&i);
		PutFlt(DAC_TRIM_F_1[DAC_Aout1],p,&i);
		t = AO[0].TRIM_MIN.calc_val;
		PutInt(t,p,&i);
		t = AO[0].TRIM_MAX.calc_val;
		PutInt(t,p,&i);
		PutFlt(AO[0].TRIM_MIN_C,p,&i);
		PutFlt(AO[0].TRIM_MAX_C,p,&i);
	}
	else
	{
		for (j=ADC_Ain2;j<=ADC_Ain5;j++)
		{
			PutInt(ADC_TRIM_I_0[j],p,&i);
			PutFlt(ADC_TRIM_F_0[j],p,&i);
			PutInt(ADC_TRIM_I_1[j],p,&i);
			PutFlt(ADC_TRIM_F_1[j],p,&i);
		}
	
		for (j=DAC_Aout2;j<=DAC_Aout5;j++)
		{
			PutInt(DAC_TRIM_I_0[j],p,&i);
			PutFlt(DAC_TRIM_F_0[j],p,&i);
			PutInt(DAC_TRIM_I_1[j],p,&i);
			PutFlt(DAC_TRIM_F_1[j],p,&i);
		}
	
		for (j=1;j<5;j++)
		{
			t = AI[j].TRIM_MIN.calc_val;
			PutInt(t,p,&i);
			t = AI[j].TRIM_MAX.calc_val;
			PutInt(t,p,&i);
			PutFlt(AI[j].TRIM_MIN_C,p,&i);
			PutFlt(AI[j].TRIM_MAX_C,p,&i);
		
			t = AO[j].TRIM_MIN.calc_val;
			PutInt(t,p,&i);
			t = AO[j].TRIM_MAX.calc_val;
			PutInt(t,p,&i);
			PutFlt(AO[j].TRIM_MIN_C,p,&i);
			PutFlt(AO[j].TRIM_MAX_C,p,&i);
		}
	}

	/* write record */
	r = M24C02_Record(0,ANALOGIO.ADDR,p);
	if (r) DIO_ANALOGIO_SET.val = FALSE;
}

void Submit_GET_uP_CONFIG(void)
{
	Timer_Insert(&TMR_GET_uP_CONFIG,0,TMR_action_replace);
}

void GET_uP_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (!DIO_uP_GET.val) return;

	/* read record */
	r = M24C02_Record(1,uP.ADDR, p);
	if (r) DIO_uP_GET.val = FALSE;
	else return;

	i = 0;

	GetInt(&uP.SNUM,p,&i);

	uP.BNUM = p[i];
	i++;
	uP.REV = p[i];
	i++;

	uP.MONTH = p[i];
	i++;
	uP.DAY = p[i];
	i++;
	uP.YEAR = p[i];
	i++;
	i++;

	GetFlt(&FREQ_FACTOR,p,&i);

	GetFlt(&FC[0].PULSE_FACTOR,p,&i);
	GetFlt(&FC[1].PULSE_FACTOR,p,&i);
	GetFlt(&FC[2].PULSE_FACTOR,p,&i);

	GetInt(&ADC_TRIM_I_0[ADC_Tint],p,&i);
	GetFlt(&ADC_TRIM_F_0[ADC_Tint],p,&i);
	GetInt(&ADC_TRIM_I_1[ADC_Tint],p,&i);
	GetFlt(&ADC_TRIM_F_1[ADC_Tint],p,&i);
}

void Submit_STORE_uP_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_uP_CONFIG,0,TMR_action_replace);
}

void STORE_uP_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (!DIO_uP_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(uP.SNUM,p,&i);

	p[i] = uP.BNUM;
	i++;
	p[i] = uP.REV;
	i++;

	uP.MONTH		= RTC[7] & 0x1F;
	uP.DAY		= RTC[6] & 0x3F;
	uP.YEAR		= RTC[8] & 0xFF;

	p[i] = uP.MONTH;
	i++;
	p[i] = uP.DAY;
	i++;
	p[i] = uP.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	PutFlt(FREQ_FACTOR,p,&i);

	PutFlt(FC[0].PULSE_FACTOR,p,&i);
	PutFlt(FC[1].PULSE_FACTOR,p,&i);
	PutFlt(FC[2].PULSE_FACTOR,p,&i);

	PutInt(ADC_TRIM_I_0[ADC_Tint],p,&i);
	PutFlt(ADC_TRIM_F_0[ADC_Tint],p,&i);
	PutInt(ADC_TRIM_I_1[ADC_Tint],p,&i);
	PutFlt(ADC_TRIM_F_1[ADC_Tint],p,&i);

	/* write record */
	r = M24C02_Record(0,uP.ADDR,p);
	if (r) DIO_uP_SET.val = FALSE;
}

void Submit_GET_COMM_CONFIG(void)
{
	Timer_Insert(&TMR_GET_COMM_CONFIG,0,TMR_action_replace);
}

void GET_COMM_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_COMM_GET.val) return;

	/* read record */
	r = M24C02_Record(1,COMM.ADDR, p);
	if (r) DIO_COMM_GET.val = FALSE;
	else return;

	i = 0;

	GetInt(&COMM.SNUM,p,&i);

	COMM.BNUM = p[i];
	i++;
	COMM.REV = p[i];
	i++;

	COMM.MONTH = p[i];
	i++;
	COMM.DAY = p[i];
	i++;
	COMM.YEAR = p[i];
	i++;
	i++;
}

void Submit_STORE_COMM_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_COMM_CONFIG,0,TMR_action_replace);
}

void STORE_COMM_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_COMM_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(COMM.SNUM,p,&i);

	p[i] = COMM.BNUM;
	i++;
	p[i] = COMM.REV;
	i++;

	COMM.MONTH		= RTC[7] & 0x1F;
	COMM.DAY		= RTC[6] & 0x3F;
	COMM.YEAR		= RTC[8] & 0xFF;

	p[i] = COMM.MONTH;
	i++;
	p[i] = COMM.DAY;
	i++;
	p[i] = COMM.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	/* write record */
	r = M24C02_Record(0,COMM.ADDR,p);
	if (r) DIO_COMM_SET.val = FALSE;
}

void Submit_GET_POWER_CONFIG(void)
{
	Timer_Insert(&TMR_GET_POWER_CONFIG,0,TMR_action_replace);
}

void GET_POWER_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_POWER_GET.val) return;

	/* read record */
	r = M24C02_Record(1,POWER.ADDR, p);
	if (r) DIO_POWER_GET.val = FALSE;
	else return;

	i = 0;

	GetInt(&POWER.SNUM,p,&i);

	POWER.BNUM = p[i];
	i++;
	POWER.REV = p[i];
	i++;

	POWER.MONTH = p[i];
	i++;
	POWER.DAY = p[i];
	i++;
	POWER.YEAR = p[i];
	i++;
	i++;
}

void Submit_STORE_POWER_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_POWER_CONFIG,0,TMR_action_replace);
}

void STORE_POWER_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_POWER_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(POWER.SNUM,p,&i);

	p[i] = POWER.BNUM;
	i++;
	p[i] = POWER.REV;
	i++;

	POWER.MONTH		= RTC[7] & 0x1F;
	POWER.DAY		= RTC[6] & 0x3F;
	POWER.YEAR		= RTC[8] & 0xFF;

	p[i] = POWER.MONTH;
	i++;
	p[i] = POWER.DAY;
	i++;
	p[i] = POWER.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	/* write record */
	r = M24C02_Record(0,POWER.ADDR,p);
	if (r) DIO_POWER_SET.val = FALSE;
}

void Submit_GET_DISPLAY_CONFIG(void)
{
	Timer_Insert(&TMR_GET_DISPLAY_CONFIG,0,TMR_action_replace);
}

void GET_DISPLAY_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_DISPLAY_GET.val) return;

	/* read record */
	r = M24C02_Record(1,DISPLAY.ADDR, p);
	if (r) DIO_DISPLAY_GET.val = FALSE;
	else return;

	i = 0;

	GetInt(&DISPLAY.SNUM,p,&i);

	DISPLAY.BNUM = p[i];
	i++;
	DISPLAY.REV = p[i];
	i++;

	DISPLAY.MONTH = p[i];
	i++;
	DISPLAY.DAY = p[i];
	i++;
	DISPLAY.YEAR = p[i];
	i++;
	i++;
}

void Submit_STORE_DISPLAY_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_DISPLAY_CONFIG,0,TMR_action_replace);
}

void STORE_DISPLAY_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_DISPLAY_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(DISPLAY.SNUM,p,&i);

	p[i] = DISPLAY.BNUM;
	i++;
	p[i] = DISPLAY.REV;
	i++;

	DISPLAY.MONTH		= RTC[7] & 0x1F;
	DISPLAY.DAY		= RTC[6] & 0x3F;
	DISPLAY.YEAR		= RTC[8] & 0xFF;

	p[i] = DISPLAY.MONTH;
	i++;
	p[i] = DISPLAY.DAY;
	i++;
	p[i] = DISPLAY.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	/* write record */
	r = M24C02_Record(0,DISPLAY.ADDR,p);
	if (r) DIO_DISPLAY_SET.val = FALSE;
}

void Submit_GET_MOTHERBOARD_CONFIG(void)
{
	Timer_Insert(&TMR_GET_MOTHERBOARD_CONFIG,0,TMR_action_replace);
}

void GET_MOTHERBOARD_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_MOTHERBOARD_GET.val) return;

	/* read record */
	r = M24C02_Record(1,MOTHERBOARD.ADDR, p);
	if (r) DIO_MOTHERBOARD_GET.val = FALSE;
	else return;

	i = 0;

	GetInt(&MOTHERBOARD.SNUM,p,&i);

	MOTHERBOARD.BNUM = p[i];
	i++;
	MOTHERBOARD.REV = p[i];
	i++;

	MOTHERBOARD.MONTH = p[i];
	i++;
	MOTHERBOARD.DAY = p[i];
	i++;
	MOTHERBOARD.YEAR = p[i];
	i++;
	i++;
}

void Submit_STORE_MOTHERBOARD_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_MOTHERBOARD_CONFIG,0,TMR_action_replace);
}

void STORE_MOTHERBOARD_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_MOTHERBOARD_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(MOTHERBOARD.SNUM,p,&i);

	p[i] = MOTHERBOARD.BNUM;
	i++;
	p[i] = MOTHERBOARD.REV;
	i++;

	MOTHERBOARD.MONTH		= RTC[7] & 0x1F;
	MOTHERBOARD.DAY		= RTC[6] & 0x3F;
	MOTHERBOARD.YEAR		= RTC[8] & 0xFF;

	p[i] = MOTHERBOARD.MONTH;
	i++;
	p[i] = MOTHERBOARD.DAY;
	i++;
	p[i] = MOTHERBOARD.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	/* write record */
	r = M24C02_Record(0,MOTHERBOARD.ADDR,p);
	if (r) DIO_MOTHERBOARD_SET.val = FALSE;
}

BOOL M24C02_Record(BOOL read, int addr, unsigned char* p)
{
	LEDG_OFF;
	LEDR_ON;

	CHANGE = TRUE;
	{/* update change status for HART */
		HCHANGE[0] = TRUE;
		HCHANGE[1] = TRUE;
		HCHANGE_COUNTER++;
	}

	if (!read)
	{
		PutCRC(p);
		return Write_MC24C02_Record(addr,p);
	}
	else
	{
		if (Read_MC24C02_Record(addr,p)==FALSE) return FALSE;
		else if (CRC16_bytes(p,256)==0x0000) return TRUE;
		else return FALSE;
	}		
}

void PutInt(int i, unsigned char* p, int* j)
{
	if (j[0] > 252) return;

	p[j[0]] = i>>8;
	j[0]++;
	p[j[0]] = i;
	j[0]++;
}

void GetInt(int* i, unsigned char* p, int* j)
{
	int t;

	if (j[0] > 252) return;

	t = p[j[0]];
	j[0]++;
	t = p[j[0]] | (t<<8);
	j[0]++;

	i[0] = t;
}

void PutFlt(float f, unsigned char* p, int* j)
{
	unsigned int i;

	if (j[0] > 250) return;

	i = TOIEEE(f);
	p[j[0]] = i>>24;
	j[0]++;
	p[j[0]] = i>>16;
	j[0]++;
	p[j[0]] = i>>8;
	j[0]++;
	p[j[0]] = i;
	j[0]++;
}

void GetFlt(float* f, unsigned char* p, int* j)
{
	unsigned int i;

	if (j[0] > 250) return;

	i = p[j[0]];
	j[0]++;
	i = p[j[0]] | (i<<8);
	j[0]++;
	i = p[j[0]] | (i<<8);;
	j[0]++;
	i = p[j[0]] | (i<<8);;
	j[0]++;

	f[0] = FMIEEE(i);
}

void PutCRC(unsigned char* p)
{
	unsigned int i;

	i = CRC16_bytes(p,254);
	p[254] = i;
	p[255] = i>>8;
}

unsigned int CRC16_bytes(unsigned char* s, int n)
{
	int i,j;
	unsigned int t;
	unsigned int CRC;

	CRC = GSEED_DEFAULT;

	for(j=0;j<n;j++)
	{
		t = s[j] & 0xFF;

		CRC ^= t;

		for (i=0;i<8;i++)
		{	
			if (CRC & 0x01)
			{
				CRC >>= 1;
				CRC ^= GPOLY;
			}
			else
			{
				CRC >>= 1;
			}
		}
	}

	return CRC;
}


void Check_Boxcar_Limits()
{ // conversion from minutes to samples also happens here 10/19/2015
	if (boxcar_expire_val_minutes.val > MINUTES_BOXCAR_EXPIRE_MAX)
		VAR_Update(&boxcar_expire_val_minutes, MINUTES_BOXCAR_EXPIRE_MAX, 0, 0);
	else if (boxcar_expire_val_minutes.val < MINUTES_BOXCAR_EXPIRE_MIN)
		VAR_Update(&boxcar_expire_val_minutes, MINUTES_BOXCAR_EXPIRE_MIN, 0, 0);
	
	//convert to samples
	//boxcar_expire_val.val = floor(boxcar_expire_val_minutes.val * 60 / 2.67); //note: this is done in Mirror_To_Stream_Table()
	
	
	if (boxcar_expire_val.val > BOXCAR_EXPIRE_MAX)
		VAR_Update(&boxcar_expire_val, BOXCAR_EXPIRE_MAX, 0, 0);
	else if (boxcar_expire_val.val < BOXCAR_EXPIRE_MIN)
		VAR_Update(&boxcar_expire_val, BOXCAR_EXPIRE_MIN, 0, 0);
	
}

inline void Reset_Boxcar()
{
	int i;
	
	Check_Boxcar_Limits();
	//Assign first boxcar value as current min
	boxcar_list[0].freq = REG_FREQ[OSC_WATER_CALC].calc_val;
	boxcar_list[0].counter = 0;	//start counter

	//(Re)initialize the rest of the boxcar_list
	for (i=1; i<BOXCAR_LIST_SIZE; i++)
	{
		boxcar_list[i].freq = -1;
		boxcar_list[i].counter = -1; //Counter value '-1' indicates unassigned/expired
	}
	
	HSALT.Fmin = boxcar_list[0].freq;	// Update the minimum water frequency
}


/*******************************************\
| Note: The boxcar is a bubble-sorted array |
| of values, each with an "expiration date" |
\*******************************************/
inline void Update_Boxcar()
{
	int i, j;
	
	Check_Boxcar_Limits();
	//Increment boxcar counters
	for (i=0; i<BOXCAR_LIST_SIZE; i++)
	{
		if (boxcar_list[i].counter != -1) //don't increment expired counters
			boxcar_list[i].counter++;
	}

	//Clear any expired minimums	
	for (i=0; i<BOXCAR_LIST_SIZE; i++)
	{//Reset expired boxcar values
		if ( Is_Expired(boxcar_list[i].counter) ) //if this minimum is expired
		{	// Reset the expired minimum
			boxcar_list[i].freq = -1;
			boxcar_list[i].counter = -1; //counter value '-1' indicates unassigned/expired
		}
	}

	//Re-rank the boxcar_list (because the list now has expired/empty "holes" in it)
	//This part effectively "shifts up" all unexpired boxcar values
	for (i=0; i<BOXCAR_LIST_SIZE-1; i++)
	{
		if (boxcar_list[i].counter == -1)		// if this minimum is expired 
		{// Replace with next lowest minimum
			for (j=i+1; j<BOXCAR_LIST_SIZE; j++) //look for next lowest
			{	
				if (boxcar_list[j].counter != -1) // if next on list is not also expired
				{// Move next lowest to up to "empty" slot
					Swap_Boxcar_Vals(i,j);
					break;	// If found, stop looking
				}
			}
		}
	}

	// This part sorts the list (lowest to highest) and considers the newest frequency
	// If this boxcar value is lower than the bottom "ranked" value, or if the bottom ranked is empty
	if ( water_freq_in <= boxcar_list[BOXCAR_LIST_SIZE-1].freq || boxcar_list[BOXCAR_LIST_SIZE-1].counter == -1 )
	{
		//Replace bottom ranked boxcar slot with current boxcar value
		boxcar_list[BOXCAR_LIST_SIZE-1].freq = water_freq_in;
		boxcar_list[BOXCAR_LIST_SIZE-1].counter = 0; // this is a new reading, start the counter over
		
		for(i=BOXCAR_LIST_SIZE-1; i>0; i--)
		{
			// If this boxcar value is lower than the one "ranked" 
			// above it, or if the one above is empty
			if(boxcar_list[i].freq < boxcar_list[i-1].freq || boxcar_list[i-1].counter == -1) 
				Swap_Boxcar_Vals(i,i-1); //swap the boxcar values
		}

	}

}

inline void	Update_Bubble()
{
	int i;

	//indicates the bubble average should be completely recalculated ( sum / length )
	BOOL need_resum_bubble = FALSE;	
	
	if (bubble_new_length.val > BUBBLE_SIZE_MAX)
	{// don't exceed maximum bubble size
		bubble_new_length.val = BUBBLE_SIZE_MAX;
	}
	else if (bubble_new_length.val < BUBBLE_SIZE_MIN)
	{// don't drop below min bubble size
		bubble_new_length.val = BUBBLE_SIZE_MIN;
	}
	
	// Check for bubble length changes
	if (bubble_new_length.val != bubble.length)		//if the bubble length has been modified
	{
		if (bubble_new_length.val < bubble.length)
		{//shorten the bubble sample
			bubble.tail += (bubble.length - bubble_new_length.val); //remove elements from the tail end

			if (bubble.tail > (BUBBLE_SIZE_MAX - 1))
				bubble.tail -= BUBBLE_SIZE_MAX;	//roll over when tail exceeds max bubble size
		}
		else if (bubble_new_length.val > bubble.length)
		{//extend the bubble sample
			bubble.tail -= (bubble_new_length.val - bubble.length); //extend elements from the tail end
					
			if (bubble.tail < 0)
				bubble.tail += BUBBLE_SIZE_MAX;	//loop back around if tail index drops below 0
		}

		bubble.length = (int) bubble_new_length.val;	// change the length

		//length changed, re-calculate average
		need_resum_bubble = TRUE;
	}
	
	if ( (bubble.head+1) >= BUBBLE_SIZE_MAX ) //check for wrap around
	{
		bubble.head = 0; //wrap around
				
		bubble.data[bubble.head] = water_freq_in; //store latest frequency reading
		
		/*	every time the head pointer makes a complete circuit, do a	*\
		\*	full re-sum of the moving average (cumulative error is bad) */
		need_resum_bubble = TRUE;
	}
	else
		bubble.head++;

	if ( (bubble.tail+1) >= BUBBLE_SIZE_MAX ) //check for wrap around
		bubble.tail = 0; //wrap around
	else
		bubble.tail++;


	/// Calculate new bubble average ///

	if (need_resum_bubble) //check if we need to recalculate the bubble average
	{
		bubble.average = 0;

		for (i = bubble.tail ; i != bubble.head; i++)
		{
			bubble.average += bubble.data[i];

			//check for wrap around
			if (i+1 >= BUBBLE_SIZE_MAX)
				i = -1; //this becomes index zero before the next pass
		}

		bubble.average += bubble.data[bubble.head];	//add final value to sum
		bubble.average /= bubble.length;				//divide sum by length to yield average

		need_resum_bubble = FALSE;	// we finished the resum (unnecessary, but we're being safe)
		
	}
	else //if no wrap around or re-sum is required...
	{
		bubble.data[bubble.head] = water_freq_in; //store latest frequency reading
	
		//Update the bubble average
		// new average = old average + ( newest freq - oldest freq ) / size
		bubble.average += (bubble.data[bubble.head] - bubble.data[bubble.tail]) / bubble.length;
		
	}
		
}



inline void	Update_Pattern()
{
	int i; //counter variable

	//indicates the pattern average should be completely recalculated ( sum / length)
	BOOL need_resum_pattern = FALSE;	
	
	if (pattern_new_length.val > PATTERN_SIZE_MAX)
	{
		pattern_new_length.val = PATTERN_SIZE_MAX;
	}
	else if (pattern_new_length.val < PATTERN_SIZE_MIN)
	{// don't drop below min pattern size
		pattern_new_length.val = PATTERN_SIZE_MIN;
	}
	
	// Check for changes to pattern length
	if (pattern_new_length.val != pattern.length)		//if the pattern length has been modified
	{
		if (pattern_new_length.val < pattern.length)
		{//shorten the pattern sample
			pattern.tail += (pattern.length - pattern_new_length.val); //remove elements from the tail end

			if (pattern.tail > (PATTERN_SIZE_MAX - 1))
				pattern.tail -= PATTERN_SIZE_MAX;	//roll over when tail exceeds max pattern size
		}
		else if (pattern_new_length.val > pattern.length)
		{//extend the pattern sample
			pattern.tail -= (pattern_new_length.val - pattern.length); //extend elements from the tail end
					
			if (pattern.tail < 0)
				pattern.tail += PATTERN_SIZE_MAX;	//loop back around if tail index drops below 0
		}

		pattern.length = (int) pattern_new_length.val;	// change the length

		//length changed, re-calculate average
		need_resum_pattern = TRUE;

	}


	if ( (pattern.head+1) >= PATTERN_SIZE_MAX ) //check for wrap around
	{
		pattern.head = 0; //wrap around
				
		pattern.data[pattern.head] = water_freq_in; //store latest frequency reading
		
		/*	every time the head pointer makes a complete circuit, do a	*\
		\*	full re-sum of the moving average (cumulative error is bad) */
		need_resum_pattern = TRUE;
	}
	else
		pattern.head++;

	if ( (pattern.tail+1) >= PATTERN_SIZE_MAX ) //check for wrap around
		pattern.tail = 0; //wrap around
	else
		pattern.tail++;


	/// Calculate new pattern average ///

	if (need_resum_pattern) //do we need to recalculate the pattern average?
	{
		pattern.average = 0;

		for (i = pattern.tail ; i != pattern.head; i++)
		{
			pattern.average += pattern.data[i];

			//check for wrap around
			if (i+1 >= PATTERN_SIZE_MAX)
				i = -1; //this becomes index zero before the next pass
		}

		pattern.average += pattern.data[pattern.head];	//add final value to sum
		pattern.average /= pattern.length;				//divide sum by length to yield average

		need_resum_pattern = FALSE;	// we finished the resum (unnecessary, but we're being safe)
		
	}
	else //if no wrap around or re-sum is required...
	{
		pattern.data[pattern.head] = water_freq_in; //store latest frequency reading
	
		//Update the pattern average
		// new average = old average + ( newest freq - oldest freq ) / size
		pattern.average += (pattern.data[pattern.head] - pattern.data[pattern.tail]) / pattern.length;
				
	}
	
}

void Swap_Boxcar_Vals(int x, int y)
{
	float temp_freq;
	int temp_counter;

	temp_freq = boxcar_list[x].freq;
	temp_counter = boxcar_list[x].counter;

	boxcar_list[x].freq = boxcar_list[y].freq;
	boxcar_list[x].counter = boxcar_list[y].counter;

	boxcar_list[y].freq = temp_freq;
	boxcar_list[y].counter = temp_counter;

}

BOOL Is_Expired(int boxcar_counter)
{
	return (boxcar_counter > boxcar_expire_val.val);
}

/// ALFAT
unsigned int BCD_to_Int(unsigned char bcd_val)
{
	unsigned int result;
	
	result = (int) (bcd_val & 0xF);
	
	result += 10 * (int) ( (bcd_val >> 4) & 0xF);  
	
	result += 100 * (int) ( (bcd_val >> 8) & 0xF);

	return result;
}

char Hex_to_ASCII(char hex_val)
{	
	if ( (hex_val >= 0) && (hex_val < 10) )
		return (hex_val + 0x30); //ASCII digit
	else if ( (hex_val >= 10) && (hex_val < 16) )
		return (hex_val + 0x37); //ASCII digit
	else
		return 0x00;
}

unsigned int ASCII_to_Hex(char ascii_val)
{
	if ( (ascii_val >= 0x30) && (ascii_val < 0x39) )
		return (ascii_val - 0x30);
	else if ( (ascii_val >= 0x41) && (ascii_val < 0x47) )
		return (ascii_val - 0x37);
	else if ( (ascii_val >= 0x61) && (ascii_val < 0x67) )
		return (ascii_val - 0x57);
	else
		return 0x00;
}

void Hex32_to_String(char out_string[], unsigned int hex_val)
{	//deal with suppress_zeroes later
	char temp;
	unsigned int i;
	temp = 0x00;
	
	for (i=0; i < 8; i++)
	{
		temp = (char) ( (hex_val >> (i*4)) & 0xF );
		out_string[i] = Hex_to_ASCII(temp);
	}
	
}

void  Alfat_Get_Version(void)
{
	char dummy;
	dummy = 0;
	Put(&TXbuf[5], 'V', 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1);
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	PORT[5].pvector_main = (int*) Alfat_Get_Version_Vector;
}
void Alfat_Get_Version_Vector(void)
{
	int i;
	
	//PORT[5].RX_pending = TRUE;
	
	PORT[5].pvector_main = NULL_PTR;

	for (i=0;i<8;i++)
	{
		ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
	}
}

void Alfat_Log_Vars(void)
{
	unsigned int 	i,day,iday;
	int				i_mapped, j;
	VAR* 			log_var[5];
	unsigned int 	resp[2];	// response status
	char 			entry[50];

	Alfat_Get_Status_Reg();
	NOPS;
	
	i = 0;  

	///wait for status reg response///
	while (	(PORT[5].pvector_main != NULL_PTR)   ) 
	{//failsafe for infinite while loop  
		i++; 
		
		if (i == 99500)
		{	//Interrupt probably didn't work, call the function directly
			PORT[5].pvector_main = NULL_PTR;
			Alfat_Get_Status_Reg_Vector();
		}
		
		if (i > 1000000)
		{	//It's still not working. Just give up at this point.
			PORT[5].pvector_main = NULL_PTR;
			break;
		}			
	}
	
	if ( !(ALFAT_STATUS_REG & 0x20) ) //USB not connected
	{
		if (ALFAT_INITIALIZED == TRUE)
		{
			ALFAT_INITIALIZED = FALSE;
			PORT[5].pvector_main = NULL_PTR;
		}
		
		ALFAT_USB_MOUNTED.val = FALSE;
		ALFAT_USB_DETECTED.val = FALSE;
		 
		if (LOG_STATUS != ALFAT_NO_LOG)
			Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_add_if_not_exist);
		return;
	}
	else
	{
		ALFAT_USB_DETECTED.val = TRUE;
	}
	
	if ( !(ALFAT_STATUS_REG & 0x4) ) // drive not mounted
	{
		ALFAT_INITIALIZED = FALSE;
		ALFAT_USB_MOUNTED.val = FALSE;
	}
	else
	{
		ALFAT_USB_MOUNTED.val = TRUE;
	}	
	if (ALFAT_INITIALIZED == FALSE)
	{
		ALFAT_WRITE_HEADER = FALSE;
		Alfat_Init_All();      		
	}
	else if (ALFAT_WRITE_HEADER == TRUE)
	{	//to-do: create Russian language logging

		sprintf(ALFAT_TX,"\n");
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_LINEFEED);
		NOPS;
		Alfat_Wait_For_Write();
		
		sprintf(ALFAT_TX,"Date,Time,Water Cut,User Temp,Emulsion Phase,Diagnostics,Oil Freq,");
		strcat(ALFAT_TX,"Vref. Oil,Water Freq,Vref.Water,FC1 Gross Oil,FC1 Gross Water,\n");
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_NO_LF);
		
		
		//Alfat_Wait_For_Write
		Alfat_Wait_For_Write();

		sprintf(ALFAT_TX,"FC1 Oil Flow,FC1 Water Flow,Analog Output 2%%,Analog Output 3%%,FC1 Pressure,");
		strcat(ALFAT_TX,"FC1 Density,Gas Flow,Gas Total,Gas Density,Stream Select,Salinity,\n");
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_NO_LF);
		
		//Alfat_Wait_For_Write
		Alfat_Wait_For_Write();
		
		
		sprintf(ALFAT_TX,"CCM Vessel 1 Level,CCM Vessel 1 Level Set Point,CCM Vessel 1 Pressure,");
		strcat(ALFAT_TX,"CCM Vessel 1 Pressure Set Point,Purge status,Test status,Drive gain liquid MM,\n");
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_NO_LF);
		
		//Alfat_Wait_For_Write
		Alfat_Wait_For_Write();
		
		sprintf(ALFAT_TX,"Drive gain gas MM,Water Cut by density,Gas P,Gas I,Gas D,Liquid P,");
		strcat(ALFAT_TX,"Liquid I,Liquid D,Heuristic Delta T,Heuristic Box Car,\n");
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_NO_LF);
		
		//Alfat_Wait_For_Write
		Alfat_Wait_For_Write();
		
		sprintf(ALFAT_TX,"Bubble,Pattern,FC1 Water Density @ST,FC1 Water Density @Process,");
		strcat(ALFAT_TX,"FC1 Oil Density @ST,FC1 Oil Density @Process\n");
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_LINEFEED);
		
		//Alfat_Wait_For_Write
		Alfat_Wait_For_Write();
		
		/* Add: COILS

		//Force Phase (water/oil/auto),
		//Gas Routine Enable,
		//Heuristic Enable,
		
		*/
		
		Alfat_Flush(1);
		ALFAT_WRITE_HEADER = FALSE;
		
	}
	else if ( (ALFAT_WRITE_HEADER == FALSE) && (ALFAT_INITIALIZED == TRUE) )
	{
		_GIEP;
		day			= RTC[6] & 0x3F;
		iday		= BCD_to_Int(day); //Convert from BCD to integer
		GIEP;

		if ( (iday < 32) && (iday > 0) ) //must be in bounds
		{
			if (ALFAT_LOG_DAY != iday)
			{	//reinitialize with new file every day
				ALFAT_WRITE_HEADER = FALSE;
				ALFAT_INITIALIZED  = FALSE;
			}		
		}
		
		sprintf(ALFAT_TX,"\n");
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_LINEFEED);
		NOPS;
		Alfat_Wait_For_Write();
		
		Alfat_Print_Time_Date(1);
		NOPS;
		Alfat_Wait_For_Write();
		
		_GIEP;
		NOPS;
		log_var[0] = HART_Lookup(0,resp,(int*)&HART_DV_Table);
		sprintf(ALFAT_TX,"%g,",log_var[0]->val);
		

		for (j=1; j < 22; j++) //write first half
		{
			i_mapped = Alfat_Map_Var(j);

			//i_mapped =0;
			
			if (i_mapped < 0)
					break;
			
			log_var[i_mapped] = HART_Lookup(i_mapped,resp,(int*)&HART_DV_Table);
			sprintf(entry,"%g,",log_var[i_mapped]->val);
			strcat(ALFAT_TX,entry);
		}
		GIEP;
	
		strcat(ALFAT_TX,"\n");
		//GIEP;
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_NO_LF);
		NOPS;		
		//Alfat_Wait_For_Write 
		Alfat_Wait_For_Write();
		
		
		_GIEP;
		NOPS;
		log_var[22] = HART_Lookup(22,resp,(int*)&HART_DV_Table);
		sprintf(ALFAT_TX,"%g,",log_var[22]->val);
		for (j=23; j < 44; j++) //write second half
		{
			i_mapped = Alfat_Map_Var(j);

			//i_mapped =0;
			
			if (i_mapped < 0)
					break;
			
			log_var[i_mapped] = HART_Lookup(i_mapped,resp,(int*)&HART_DV_Table);
			sprintf(entry,"%g,",log_var[i_mapped]->val);
			strcat(ALFAT_TX,entry);
		}
		GIEP;
	
		strcat(ALFAT_TX,"\n");
		//GIEP;
		Alfat_Write(ALFAT_HANDLE_1,ALFAT_AUTO_LENGTH,ALFAT_NO_LF);
		NOPS;		
		//Alfat_Wait_For_Write 
		Alfat_Wait_For_Write();
		NOPS;
		Alfat_Flush(1);
	}
	if (LOG_STATUS != ALFAT_NO_LOG)
		Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_add_if_not_exist);
}

void Alfat_Init_All(void)
{
	/*
		Note: 	Because we must wait on the ALFAT to complete each
				command, each initialization function is designed to
				call the next one after acknowledgement *if* [ALFAT_INIT_ALL == TRUE].
				Alfat_Init_RTC -> Alfat_Set_Time_Date 
				-> Alfat_Init_USB -> Alfat_Open_Append
	*/
	if(PORT[5].pvector_main != NULL_PTR)
	{
		return;		
	}
	
	//clear input 'garbage'
	ALFAT_INIT_ALL = FALSE;
	Alfat_Init_RTC();
	
	//Initialize for real
	ALFAT_INIT_ALL = TRUE;
	Alfat_Init_RTC();
}

void Alfat_Init_RTC(void) // handles 'T' command //call this in MAIN.c
{
	if(PORT[5].pvector_main != NULL_PTR)
	{
		return;		
	}
	_GIEP;
	Put(&TXbuf[5], 'T', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], 'S', 0);
	Put(&TXbuf[5], 0x0A, 0);
	
	if(ALFAT_INIT_ALL == TRUE) //if we are running the entire initialization routine
	{
		PORT[5].pvector_main = (int*) Alfat_Set_Time_Date;
	}
	else
	{
		PORT[5].pvector_main = NULL_PTR;
	}
	
	GIEP;
	Prepare_TX(5, 1); 
	
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
}

void Alfat_Print_Time_Date(int handle)
{
	unsigned char 	year,month,day,hh,mm,ss;
	unsigned int 	iyear,imonth,iday,ihh,imm,iss;
	int 			i; //counter

	char 			s_date[30];
	
	for (i=0;i<30;i++)
	{
		s_date[i] = 0x0;
	}
	PORT[5].pvector_main = NULL_PTR;
	
	_GIEP;
	hh			= RTC[4] & 0x3F;
	mm			= RTC[3] & 0x7F;
	ss			= RTC[2] & 0x7F;
	month		= RTC[7] & 0x1F;
	day			= RTC[6] & 0x3F;
	year		= RTC[8] & 0xFF;
	GIEP;
		
	//Convert from BCD to integer
	ihh			= BCD_to_Int(hh);
	imm			= BCD_to_Int(mm);
	iss			= BCD_to_Int(ss);
	imonth		= BCD_to_Int(month);
	iday		= BCD_to_Int(day);
	iyear		= BCD_to_Int(year);
	
	iyear += 2000;
	
	//check bounds for weird stuff
	if (ihh > 24)
		ihh = 0;
		
	if (imm > 60)
		imm = 0;
		
	if (iss > 60)
		imm = 0;
		
	if (imonth > 12)
		month = 0;
		
	if (iday > 31)
		iday = 0;
	
	if (iyear > 3000)
		iyear = 0;
	
	_GIEP;
	sprintf(ALFAT_TX,"%02u/%02u/%04u,",imonth,iday,iyear);
	sprintf(s_date,"%02u:%02u:%02u,\n",ihh,imm,iss);
	strcat(ALFAT_TX,s_date);
	GIEP;
	
	Alfat_Write(handle,20,ALFAT_NO_LF);
}

void Alfat_Set_Time_Date(void) // handles 'S' command //call this in MAIN.c
{
	unsigned char 	year,month,day,hh,mm,ss;
	unsigned int 	iyear,imonth,iday,ihh,imm,iss;
	int 			i; //counter
	unsigned int	time_date_FAT;
	char 			time_date_FAT_ASCII[8];
	
	_GIEP; 
	
	PORT[5].pvector_main = NULL_PTR;
	
	hh			= RTC[4] & 0x3F;
	mm			= RTC[3] & 0x7F;
	ss			= RTC[2] & 0x7F;
	month		= RTC[7] & 0x1F;
	day			= RTC[6] & 0x3F;
	year		= RTC[8] & 0xFF;
	
	//Convert from BCD to integer
	
	ihh			= BCD_to_Int(hh);
	imm			= BCD_to_Int(mm);
	iss			= BCD_to_Int(ss);
	imonth		= BCD_to_Int(month);
	iday		= BCD_to_Int(day);
	iyear		= BCD_to_Int(year);
	
	ALFAT_LOG_DAY = iday; //for keeping track of when to open a new log file
	
	//conversions
	iss			= iss >> 1; //seconds divided by 2 (0..30)
	iyear	+= 20; // years since 2000 ==> years since 1980
	
	//Assemble FAT-format date & time
	time_date_FAT 	 = 0x00;
	time_date_FAT 	|= iss;
	time_date_FAT 	|= (imm 	<< 5 );
	time_date_FAT	|= (ihh 	<< 11);
	time_date_FAT	|= (iday 	<< 16);
	time_date_FAT	|= (imonth 	<< 21);
	time_date_FAT	|= (iyear 	<< 25);
	
	
	Put(&TXbuf[5], 'S', 0);
	Put(&TXbuf[5], 0x20, 0);
	
	Hex32_to_String(time_date_FAT_ASCII, time_date_FAT);
	
	for (i=7; i >=0; i--)
		Put(&TXbuf[5], time_date_FAT_ASCII[i], 0);
	
	
	Put(&TXbuf[5], 0x0A, 0);
	GIEP;
	
	Prepare_TX(5, 1); 
	
	////PORT[5].RX_pending = TRUE;
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	PORT[5].pvector_main = (int*) Alfat_Set_Time_Date_Vector;

}

void Alfat_Set_Time_Date_Vector(void)
{
	int i;
	
	//PORT[5].RX_pending = TRUE; //causing issues?
	PORT[5].pvector_main = NULL_PTR;

	if(ALFAT_INIT_ALL == TRUE)
	{
		Alfat_Init_USB();
	}
 
}

void Alfat_Init_USB(void)
 {
	char i;
	
	PORT[5].pvector_main = NULL_PTR;

	_GIEP;
	i = '0';
	
	Put(&TXbuf[5], 'I', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], 'U', 0);
	Put(&TXbuf[5], i, 0);
	Put(&TXbuf[5], ':', 0);
	Put(&TXbuf[5], 0x0A, 0);
	
	GIEP;
	
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	PORT[5].pvector_main = (int*) Alfat_Init_USB_Vector;	
 }
 
void Alfat_Init_USB_Vector(void)
{
	int i, n;
	char fp_name[64];
	char test_c1;
	unsigned char 	year,month,day;
	unsigned int 	iyear,imonth,iday;
	
	//PORT[5].RX_pending = TRUE;
	if (RXbuf[5].n < 4)
		return;
	
	i=0;
	PORT[5].pvector_main = NULL_PTR;
	
	n = RXbuf[5].n;
	for (i=0;i<(n+1);i++)
	{
		//ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
		test_c1 = (char) Get(&RXbuf[5]);
		test_c1 = (test_c1 & 0xFF);
		ALFAT_RX[i] = test_c1;
	}
	
	if ( (ALFAT_RX[0] == '!') && (ALFAT_RX[1] == '0') && (ALFAT_RX[2] == '0') && (ALFAT_RX[3] == 0x0A) )
	{
		ALFAT_NO_ERROR = TRUE;
		
		if (ALFAT_INIT_ALL == TRUE)
		{
			_GIEP;
			month		= RTC[7] & 0x1F;
			day			= RTC[6] & 0x3F;
			year		= RTC[8] & 0xFF;
			
			//Convert from BCD to integer
			imonth		= BCD_to_Int(month);
			iday		= BCD_to_Int(day);
			iyear		= BCD_to_Int(year);
			GIEP;
			
			sprintf(fp_name,"U0:\\PDI\\Log_%i-%i-20%i.csv\n",imonth,iday,iyear);			
			Alfat_Open_Append(1,fp_name);
		}
	}
	else
	{
		//something went wrong: no media?

		PORT[5].pvector_main = NULL_PTR;
		ALFAT_INIT_ALL = FALSE;
		ALFAT_NO_ERROR = FALSE;
	}
}

void Alfat_Get_Time(void)
 {
	Put(&TXbuf[5], 'G', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], 'T', 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	PORT[5].pvector_main = (int*) Alfat_Get_Date_Vector;
 }
 
void Alfat_Get_Time_Vector(void)
{
	int i;

	PORT[5].pvector_main = NULL_PTR;

	for (i=0;i<13;i++)
	{
		ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
	}
}
 
void Alfat_Get_Date(void)
{
	Put(&TXbuf[5], 'G', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], 'D', 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	PORT[5].pvector_main = (int*) Alfat_Get_Date_Vector;
}
void Alfat_Get_Date_Vector(void)
{
	int i;
	
	PORT[5].pvector_main = NULL_PTR;

	for (i=0;i<15;i++)
	{
		ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
	}
}

void Alfat_Get_Status_Reg(void)
{
	Put(&TXbuf[5], 'J', 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	PORT[5].pvector_main = (int*) Alfat_Get_Status_Reg_Vector;
}

void Alfat_Get_Status_Reg_Vector(void)
{
	int i,n;
	unsigned int alfat_reg;
	char test_c1;
		
	if (RXbuf[5].n < 11)
		return;
	
	i=0;
	PORT[5].pvector_main = NULL_PTR;
	test_c1 = 'Z'; //for testing purposes
	
	n = RXbuf[5].n;
	for (i=0;i<(n+1);i++)
	{
		test_c1 = (char) Get(&RXbuf[5]);
		test_c1 = (test_c1 & 0xFF);
		ALFAT_RX[i] = test_c1;
	}

	PORT[5].pvector_main = NULL_PTR;
	alfat_reg = 0;
	if ( ALFAT_RX[0] != '!')
	{
		return; //something went wrong parsing the ALFAT's response, just continue
	}
	
	if ( (ALFAT_RX[1] == '0')  && (ALFAT_RX[2] == '0')
							  && (ALFAT_RX[3] == 0x0A) && (ALFAT_RX[4] == '$') )
	{
		alfat_reg  = ASCII_to_Hex(ALFAT_RX[6]);
		alfat_reg += 16 * ASCII_to_Hex(ALFAT_RX[5]);
	}	
	
	ALFAT_STATUS_REG = alfat_reg;
}

void Alfat_Open_Append(int handle, char full_path[])
{	//make sure full_path[] is terminated with linefeed (0x0A)
	int i;
	char h, fp_char;
	
	_GIEP;
	
	fp_char = full_path[0];
	
	//bounds checking goes here!
	
	h = Hex_to_ASCII(handle);
	
	Put(&TXbuf[5], 'O', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], h, 0);
	Put(&TXbuf[5], 'A', 0);
	Put(&TXbuf[5], '>', 0);
	
	i = 0;
	while ( (fp_char != 0x0A) && (i < 64) )//64 char max
	{
		Put(&TXbuf[5], fp_char, 0);
		i++;
		fp_char = full_path[i];	
	}
	
	Put(&TXbuf[5], 0x0A, 0);
	GIEP;
	
	Prepare_TX(5, 1); 
		//PORT[5].RX_pending = TRUE;
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	PORT[5].pvector_main = (int*) Alfat_Open_Append_Vector;
}

void Alfat_Open_Append_Vector(void)
{
	int i;
	
	_GIEP;
	PORT[5].pvector_main = NULL_PTR;
	
	ALFAT_INIT_ALL = FALSE;

	for (i=0;i<4;i++)
	{
		ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
	}

	if ( (ALFAT_RX[0] == '!') && (ALFAT_RX[1] == '0') && (ALFAT_RX[2] == '0') && (ALFAT_RX[3] == 0x0A) )
	{
		ALFAT_NO_ERROR = TRUE;
		ALFAT_WRITE_HEADER = TRUE;     
		ALFAT_INITIALIZED = TRUE; 

	}
	else
		ALFAT_NO_ERROR = FALSE;
	GIEP;
}

void Alfat_Close(int handle)
{
	char c_handle; //ascii version of handle
	
	if(PORT[5].pvector_main != NULL_PTR)
	{
		
		return;		
	}
	
	if ( (handle < 0) || (handle > 15) )
	{
		
		return; //parameter bounds exceeded
	}
	
	c_handle = Hex_to_ASCII(handle);
	
	Put(&TXbuf[5], 'C', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], c_handle, 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
}

void Alfat_Flush(int handle)
{
	char c_handle; //ascii version of handle
	
	if(PORT[5].pvector_main != NULL_PTR)
	{
		return;		
	}
	
	_GIEP;
	if ( (handle < 0) || (handle > 15) )
	{
		return; //parameter bounds exceeded
	}
	
	c_handle = Hex_to_ASCII(handle);
	
	Put(&TXbuf[5], 'F', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], c_handle, 0);
	Put(&TXbuf[5], 0x0A, 0);
	GIEP;
	
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	
}

/***********************************************\
| NOTE: Make sure ALFAT_TX is loaded with		|
| num_bytes worth of data before calling. Must	|
| be terminated with a line feed (0x0A).		|
\***********************************************/
void Alfat_Write(int handle, int num_bytes,int append_linefeed)
{
	int i;
	char c_handle; //ascii version of handle
	char num_bytes_ASCII[8];
	
	_GIEP;
	
	c_handle = Hex_to_ASCII(handle);
	
	if (num_bytes == -1) //need to find the byte length
	{
		
		i=0;
		while ( (ALFAT_TX[i] != 0x0A) && (i < ALFAT_TX_MAX_SIZE-1) )
		{
			i++;
			
			if (ALFAT_TX[i] == 0x0) //ignore any null characters
				i--;
		}
		
		if (append_linefeed)
		{
			ALFAT_TX[i] = 0x0A; //make sure it's a linefeed
			i++;				//extended to include linefeed
			ALFAT_APPEND_LF = TRUE;
		}
		else
			ALFAT_APPEND_LF = FALSE;
			
		SIZE_ALFAT_TX = i;
	} 
	else
		SIZE_ALFAT_TX = num_bytes;
	
	if (SIZE_ALFAT_TX > ALFAT_TX_MAX_SIZE)
	{
		SIZE_ALFAT_TX = ALFAT_TX_MAX_SIZE;
	}
	else if (SIZE_ALFAT_TX < 1)
	{
		GIEP;
		return; //nothing to send
	}
		
	Hex32_to_String(num_bytes_ASCII, SIZE_ALFAT_TX);	
	
	Put(&TXbuf[5], 'W', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], c_handle, 0);
	Put(&TXbuf[5], '>', 0);
		
	for (i=3; i >=0; i--)
		Put(&TXbuf[5], num_bytes_ASCII[i], 0);
		
	Put(&TXbuf[5], 0x0A, 0);
	
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
	PORT[5].pvector_main = (int*) Alfat_Write_Vector;	
	GIEP;
	
	Prepare_TX(5, 1); 
	//PORT[5].RX_pending = TRUE;  //was causing problems with watchdog count?
}

void Alfat_Write_Vector(void)
{
	int i;
	
	i = 0;
	while ( (ALFAT_TX[i] != 0x0A) && (i < ALFAT_TX_MAX_SIZE) && (i < SIZE_ALFAT_TX) )
	{
		if (ALFAT_TX[i] != 0x0)	//ignore any null characters
			Put(&TXbuf[5], ALFAT_TX[i], 0);
		i++;
	}
	if (ALFAT_APPEND_LF)
	{
		Put(&TXbuf[5], 0x0A, 0);
	}	
	PORT[5].pvector_main = NULL_PTR;
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,TMR_action_replace);
	Timer_Insert(&PORT[5].TMR_Retry,0,TMR_action_delete);
}

void Alfat_Wait_For_Write(void)
{
	int i;
	
	i = 0; //failsafe for infinite while loop           
	while (	(PORT[5].pvector_main != NULL_PTR)   )
	{
		i++; 
		
		if (i == 99500)
		{	//Interrupt probably didn't work (why?), call the function directly

			Alfat_Write_Vector();
			NOPS;
			NOPS;
		}
		
		if (i > 1000000)
		{	//It's still not working. Just give up at this point.
			PORT[5].pvector_main = NULL_PTR;
			break;
		}			
	}
}

int Alfat_Map_Var(int index){
	int ALFAT_LOG_MAP[]={
		0,		//Water Cut
		1,		//User Temp
		2,		//Emulsion Phase
		3,		//Diagnostics
		5,		//Oil Freq
		7,		//Vref. Oil
		8,		//Water Freq
		10,		//Vref.Water
		11, 	//FC1 Gross Oil
		12,		//FC1 Gross Water
		14,		//FC1 Oil Flow					//10
		15,		//FC1 Wate Flow
		21,		//Analog input 2 %
		23,		//Analog input 3%
		49,		//FC1 Pressure
		51,		//FC1 Density
		106,	//Gas Flow
		107,	//Gas Total
		108,	//Gas Density
		109,	//Stream Select
		110,	//Salinity						//20
		111,	//CCM Vessel 1 Level
		113,	//CCM Vessel 1 Level Set Point
		115,	//CCM Vessel 1 Pressure
		117,	//CCM Vessel 1 Pressure Set Point
		129,	//Purge status 					//25
		130,	//Test status
		131,	//Drive gain liquid MM
		132,	//Drive gain gas MM
		133,	//Water Cut by density
		134,	//Gas P							//30
		135,	//Gas I
		136,	//Gas D
		137,	//Liquid P
		138,	//Liquid I						//34
		139,	//Liquid D						//35
		140,	//HSALT Delta T					//36
		141,	//HSALT Boxcar
		142,	//Gas Entr. Bubble
		143,	//Gas Entr. Pattern
		144,	//FC1 Water Density @ST			//40
		145,	//FC1 Water Density @Process	//41
		146,	//FC1 Oil Density at @ST
		147,	//FC1 Oil Density @Process
		-1		// END OF TABLE					//44
	};
	
	if ( (index > -1) && (index < 44) )
		return ALFAT_LOG_MAP[index];
	else
		return -1;
								
}

void Begin_Alfat_Logging(COIL* c) //coil 748
{
	if ( BEGIN_ALFAT_LOGGING.val == TRUE)
	{
		ALFAT_INIT_ALL = FALSE;
		Alfat_Init_RTC(); //clear any 'junk'
		ALFAT_USB_MOUNTED.val = FALSE;
		ALFAT_USB_DETECTED.val = FALSE;
		Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_add_if_not_exist);
		LOG_STATUS = ALFAT_CONTINUE_LOG;
	}
	else
	{
		//don't insert timer
		LOG_STATUS = ALFAT_NO_LOG;	//DO NOT start logging on next boot
		ALFAT_USB_MOUNTED.val = FALSE;
		ALFAT_USB_DETECTED.val = FALSE;
		Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_delete);
		//Timer_Remove(&TMR_ALFAT_LOG); 
	}
}


// callback to change the period between USB log recordings
void Alfat_Change_Log_Period(COIL* c) 
{
	int preset;


	// check bounds
	if	( REG_ALFAT_LOG_PERIOD.val > REG_ALFAT_LOG_PERIOD.bound_hi_set) 	//  maximum bound
		REG_ALFAT_LOG_PERIOD.val = REG_ALFAT_LOG_PERIOD.bound_hi_set;
	else if	( REG_ALFAT_LOG_PERIOD.val < REG_ALFAT_LOG_PERIOD.bound_lo_set) //  minimum bound
		REG_ALFAT_LOG_PERIOD.val = REG_ALFAT_LOG_PERIOD.bound_lo_set;
	if (REG_ALFAT_LOG_PERIOD.val < 2) // mandatory minimum 2 seconds
		REG_ALFAT_LOG_PERIOD.val = 2;


		
	LOG_STATUS = ALFAT_NO_LOG;	//DO NOT start logging on next boot
	ALFAT_USB_MOUNTED.val = FALSE;
	ALFAT_USB_DETECTED.val = FALSE;
	Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_delete); //remove current timer pkt, if it exists
		
	if ( BEGIN_ALFAT_LOGGING.val == TRUE)
	{
		//adjust for timer period
		preset = ceil(REG_ALFAT_LOG_PERIOD.val/TIME0);
	
		if (preset<=0) 
			preset = 1;
		//change the timer period
		TMR_ALFAT_LOG.t 			= preset*TIME0;
		TMR_ALFAT_LOG.countdown 	= preset;
		TMR_ALFAT_LOG.preset_time 	= preset;
					
		ALFAT_INIT_ALL = FALSE;
		Alfat_Init_RTC(); //clear any 'junk'
		ALFAT_USB_MOUNTED.val = FALSE;
		ALFAT_USB_DETECTED.val = FALSE;
		Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_add_if_not_exist); //insert timer pkt into queue
		LOG_STATUS = ALFAT_CONTINUE_LOG;
	}		
}


/* 
// These ALFAT functions can be implemented later, if needed -DHA
void Alfat_Enable_Echo(void)
{
}
void Alfat_Disable_Echo(void)
{
}
void Alfat_Get_Date(void)
{
}
unsigned int Alfat_Get_Free_Size(void) // bytes in hex: should it convert?
{
}
BOOL Alfat_Init_List_Counter(char* full_path)
{
}
char* Alfat_Get_Next(void) //only call after Alfat_Init_List_Counter()
{
}
BOOL Alfat_Open_Read(int handle, char* full_path)
{
}
BOOL Alfat_Open_Write(int handle, char* full_path)
{
}
char* Alfat_Read(int handle, int num_bytes)
{
}
*/
