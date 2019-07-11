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
/* File Name: SELFTEST.C					    							*/
/* 									    									*/
/* File Description:  This file implements methods for checking diagnostics,*/
/* setting diagnostic codes, Testing the flash memory all at once or in five*/
/* steps.  When you test flash memory and read MODBUS at the same time, you	*/
/* will see spikes because the CRC used to test the flash memory will write	*/
/* to each byte and cause erroneous data.  These tests have been			*/
/* functionally removed as of 611beta.			    						*/
/*									    									*/
/****************************************************************************/
#define SELFTEST_H
#define ERRORS_H

#include "GLBLS.H"

/****************************************************************************/
/* CLEAR DIAGNOSTICS														*/
/*                                                                          */
/* Description: Clears diagnostics.                                         */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:		Force error to clear, regardless of value written to coil   */
/*				Calls Set_Diag_Status() at the end.							*/
/*                                                                          */
/****************************************************************************/
void Clear_Diagnostics(void)
{
	DIO_ALARM.val			= FALSE;
	DIO_ERROR.val 			= FALSE;
	DIAGNOSTICS[0] 			= ERROR_NONE;
	DIAGNOSTICS[1] 			= ERROR_NONE;
	DIAGNOSTICS_ERROR_CODE 	= E_ERROR_NONE;
	DIAGNOSTICS_MSG_CODE 	= M_ERROR_RESET;
	
	Set_Diag_Status();
}

/****************************************************************************/
/* SET DIAG STATUS															*/
/*                                                                          */
/* Description: Sets diagnostic error codes                                 */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:		Called by Clear_Diagnostics()                               */
/*                                                                          */
/****************************************************************************/
void Set_Diag_Status(void)
{
	unsigned int rec[SYS_log_record_size];	/* Log record */
	unsigned int i,j;						/* counter; diagnostic check */
	char s[17];								/* not used */
	float t;								/* temp message code */
	unsigned int e;							/* error code checked against j */

	_GIEP;

	if (CHANGE) /* check save */ 
		DATA_CHANGE.val = FALSE;
	else 
		DATA_CHANGE.val = TRUE;

	/* Note: This mask is also in the Modbus CRC routine to prevent accidental read of bits before they are masked by this routine */
	DIAGNOSTICS[0] &= DIAGNOSTICS_MASK[0];
	DIAGNOSTICS[1] &= DIAGNOSTICS_MASK[1];

	/* generate error_code */
	if (DIAGNOSTICS[0] & ERROR_RESET_BASICS)
		DIAGNOSTICS_ERROR_CODE = E_ERROR_FLASH_FAIL_RESET_BASICS;
	else if ((DIAGNOSTICS[0] & ERROR_FLASH_MEMORY) || (DIAGNOSTICS[0] & ERROR_FLASH_WPROT))
		DIAGNOSTICS_ERROR_CODE = E_ERROR_FLASH_FAIL;
	else if (DIAGNOSTICS[0] & ERROR_MEMORY)
		DIAGNOSTICS_ERROR_CODE = E_ERROR_EXTRAM_FAIL;
	else if (DIAGNOSTICS[0] & ERROR_INTERNAL_MEMORY)
		DIAGNOSTICS_ERROR_CODE = E_ERROR_INTRAM_FAIL;
	else if (REG_WATERCUT.STAT & var_aux) 				/* rolled over */
		DIAGNOSTICS_ERROR_CODE = E_ERROR_RP_THRESH;
	/********Remove Invalid Wcut Error from LCD display RS**********/
	else if ((REG_WATERCUT.STAT & var_alarm_lo) || (DIAGNOSTICS[0] & ERROR_WC_UNDERRANGE))
		DIAGNOSTICS_ERROR_CODE = E_ERROR_WATERCUT_UNDERRANGE;    
	else if ((REG_WATERCUT.STAT & var_alarm_hi) || (DIAGNOSTICS[0] & ERROR_WC_OVERRANGE))
		DIAGNOSTICS_ERROR_CODE = E_ERROR_WATERCUT_OVERRANGE;
	else if (RTC_PRESENT && (DIAGNOSTICS[1] & ERROR2_TIME_RESET))
		DIAGNOSTICS_ERROR_CODE = E_ERROR_TIME_RESET;
	/* generate error_code */

	if (DIAGNOSTICS_ERROR_CODE == E_ERROR_FLASH_FAIL_RESET_BASICS)
	{/* Flash fail reset basics */
		LED_GREEN 		= 2;
		DIO_ERROR.val 	= TRUE;
		
		Timer_Create(&TMR_LEDOFF, 0.05, 1, (int*)STATUS_LED_off, 0);
		Timer_Create(&TMR_LEDON, 0.20, 1, (int*)STATUS_LED_on, 0);
	}
	else if ((!DIAGNOSTICS[0]) && (!DIAGNOSTICS[1])) 
	{/* no errors */
		DIO_ERROR.val 			= FALSE;
		DIAGNOSTICS_MSG_CODE	= M_ERROR_NONE;
		
		if ((SA) && (HW_VER>=0xB7))
			LED_GREEN = TRUE;
		else
			LED_GREEN = FALSE;
		
		Timer_Create(&TMR_LEDOFF, 0.05, 1, (int*)STATUS_LED_off, 0);
		Timer_Create(&TMR_LEDON,  0.95, 1, (int*)STATUS_LED_on,  0);
	}
	else
	{/* create error message id based on bit location */
		DIO_ERROR.val	= TRUE;
		LED_GREEN		= FALSE;
		
		Timer_Create(&TMR_LEDOFF, 0.05, 1, (int*)STATUS_LED_off, 0);
		Timer_Create(&TMR_LEDON,  0.45, 1, (int*)STATUS_LED_on,  0);

		e = (DIAGNOSTICS[1]<<16) | (DIAGNOSTICS[0]&0xFFFF);

		/* create error message id based on bit location */
		j = 0x80000000;
		
		for (i=0;i<32;i++)
		{
			if (j & e)
				break;
			else
				j = j>>1;
		}
		
		if (j==0)
			DIAGNOSTICS_MSG_CODE = M_ERROR_NONE;
		else
		{
			t 					 = j;
			t 					 = log(t)/log(2.0);
			DIAGNOSTICS_MSG_CODE = t;
		}
		/* create error message id based on bit location */
	}

	VAR_Update(&REG_DIAG[0], DIAGNOSTICS[0],		 0, 0);
	VAR_Update(&REG_DIAG[1], DIAGNOSTICS[1], 		 0, 0);
	VAR_Update(&REG_DIAG[2], DIAGNOSTICS_ERROR_CODE, 0, 0);
	VAR_Update(&REG_DIAG[3], DIAGNOSTICS_MSG_CODE, 	 0, 0);

	if ((SYS_LOG_ENABLED & LOG_ERROR) && ((DIAGNOSTICS[0] != DIAG_TEMP[0]) || (DIAGNOSTICS[1] != DIAG_TEMP[1])))
	{/* update the log on DIAGNOSTICS changes */
		DIAG_TEMP[0] = DIAGNOSTICS[0];
		DIAG_TEMP[1] = DIAGNOSTICS[1];
		
		RecordLogEntry(&SYS, LOG_ERROR, rec);
	}

	switch(DIAGNOSTICS_ERROR_CODE)
	{/* set error string */
		case E_ERROR_NONE:				
			if (RUSS)
			{
				Get_Russ_Line(382,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else
				sprintf(E_STRING,"NO ERRORS");	//R382
			break;	
		case E_ERROR_FREQ:		
			if (RUSS)
			{
				Get_Russ_Line(351,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else		
				sprintf(E_STRING,"ERROR: Frequency");	//R351
			break;	
			
		case E_ERROR_FLASH_FAIL:		
			if (RUSS)
			{
				Get_Russ_Line(350,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else
				sprintf(E_STRING,"ERROR: FLASH Memory");	//R350
			break;	
			
		case E_ERROR_INTRAM_FAIL:	
			if (RUSS)
			{
				Get_Russ_Line(354,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else		
				sprintf(E_STRING,"ERROR: INT Memory"); 	//R354
			break;	
			
		case E_ERROR_EXTRAM_FAIL:		
			if (RUSS)
			{
				Get_Russ_Line(349,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else
				sprintf(E_STRING,"ERROR: EXT Memory"); 	//R349
			break;	
			
		case E_ERROR_WATERCUT_INVALID:
		{
			if (ANALYZER_MODE.val&0xFF==SUB_ANALYZER)
				sprintf(E_STRING,"ERROR: Invalid PV");	//R_UHOH
			else
			{
				if (RUSS)
				{
					Get_Russ_Line(356,OUT_STR,0);
					sprintf(E_STRING,OUT_STR);
				}
				else
					sprintf(E_STRING,"ERROR: Invalid WCut");	//R356
			}
			
			break;
		}
		case E_ERROR_WATERCUT_UNDERRANGE:
		{
			if (ANALYZER_MODE.val&0xFF==SUB_ANALYZER)
				sprintf(E_STRING,"ERROR: Lo PV");	//R_UHOH
			else
				if (RUSS)
				{
					Get_Russ_Line(357,OUT_STR,0);
					sprintf(E_STRING,OUT_STR);
				}
				else
					sprintf(E_STRING,"ERROR: Lo Water Cut");	//R357
			break;
		}
		case E_ERROR_RP_THRESH:
		case E_ERROR_WATERCUT_OVER:
		case E_ERROR_WATERCUT_OVERRANGE:
		{
			if (ANALYZER_MODE.val&0xFF==SUB_ANALYZER)
				sprintf(E_STRING,"ERROR: Hi PV");	//R_UHOH
			else
			{
				if (RUSS)
				{
					Get_Russ_Line(352,OUT_STR,0);
					sprintf(E_STRING,OUT_STR);
				}
				else
					sprintf(E_STRING,"ERROR: Hi Water Cut");	//R352	
			}
			
			break;
		}
		case E_ERROR_FLASH_FAIL_RESET_BASICS:	
			if (RUSS)
			{
				Get_Russ_Line(360,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else	
				sprintf(E_STRING,"ERROR: RESET BASICS"); 	//R360
			break;	
		case E_ERROR_TEMPERATURE_UNDERRANGE:	
			if (RUSS)
			{
				Get_Russ_Line(358,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else	
				sprintf(E_STRING,"ERROR: Low Temp."); 	//R358
			break;	
		case E_ERROR_TEMPERATURE_OVERRANGE:	
			if (RUSS)
			{
				Get_Russ_Line(353,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else			
				sprintf(E_STRING,"ERROR: High Temp."); 	//R353
			break;	
		case E_ERROR_TIME_RESET:	
			if (RUSS)
			{
				Get_Russ_Line(355,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else			
				sprintf(E_STRING,"ERROR: Invalid Time");	//R355
			break;	
		case E_ERROR_PHASE_LOGIC:		
			if (RUSS)
			{
				Get_Russ_Line(359,OUT_STR,0);
				sprintf(E_STRING,OUT_STR);
			}
			else			
				sprintf(E_STRING,"ERROR: Phase Logic"); 	//R359
			break;	
		default:		
			if (RUSS)
			{
				Get_Russ_Line(385,OUT_STR,0);
				sprintf(E_STRING,"%s #%02d",OUT_STR,DIAGNOSTICS_ERROR_CODE);
			}
			else			
				sprintf(E_STRING,"ERROR #%02d",DIAGNOSTICS_ERROR_CODE); //R385
			break;
	}

	GIEP;
}

/****************************************************************************/
/* SELF TEST FULL															*/
/*                                                                          */
/* Description: Tests all FLASH MEM locations using CRC                     */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       These will cause spikes in MODBUS because memory is being	*/
/*				written to during the CRCs.                                 */
/*                                                                          */
/****************************************************************************/
void Self_Test_FULL(void)
{
	unsigned int* 	s;	/* not used */
	unsigned int* 	d;	/* not used */
	int				i;	/* not used */
	unsigned int 	CRC;	/* CRC error code */

	_GIEP;
	DIO_BUILT_IN_TEST.val = TRUE;							/* test in progress */

	/* todo: add full addr/data sram testing clear mem & check, 
	   invert mem loc/check all/check loc/inc & repeat */
	if (Calc_CRC(FLASH_LOC_CFG_FACTORY, FLASH_CFG_SIZE))	/* Test Factory CFG */
		DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;

	if (Calc_CRC(FLASH_LOC_CFG1, FLASH_CFG_SIZE))			/* Test Location 1 CFG */
		DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;

	CRC = Calc_CRC(FLASH_LOC_BOOT, FLASH_BOOT_SIZE);		/* Test Boot */

	if (CRC!=CRC_BOOT)
		DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;

	CRC = Calc_CRC(FLASH_LOC_FAST, FLASH_FAST_SIZE);		/* Test Fast Flash */

	if (CRC!=CRC_FAST)
		DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;

	CRC = Calc_CRC(FLASH_LOC_APP, FLASH_APP_SIZE);			/* Test Application */

	if (CRC!=CRC_APP)
		DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;

	CRC = Calc_CRC(FLASH_LOC_INIT, FLASH_INIT_SIZE);		/* Test initialization */

	if (CRC!=CRC_INIT)
		DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;

	DIO_BUILT_IN_TEST.val = FALSE;							/* test complete */
	GIEP;
}

/****************************************************************************/
/* SELF TEST 5																*/
/*                                                                          */
/* Description:	Tests application and initialization flash memory.          */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Next test is Self_Test_1                                    */
/*                                                                          */
/****************************************************************************/
void Self_Test5(void)
{
	unsigned int* 	s;	/* not used  */
	unsigned int* 	d;	/* not used  */
	int				i;	/* not used  */
	unsigned int 	CRC;/* CRC error */

	_GIEP;
	
	if (DIO_BUILT_IN_TEST_ENABLE.val)
	{/* Check testing is enabled */
		CRC = Calc_CRC(FLASH_LOC_APP, FLASH_APP_SIZE);	/* Test Applicaton Flash */

		if (CRC!=CRC_APP)
			DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;
	
		CRC = Calc_CRC(FLASH_LOC_INIT, FLASH_INIT_SIZE);/* Test Intitialization Flash */

		if (CRC!=CRC_INIT)
			DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;
	
		TMR_SELFTEST.vect = (int*)Self_Test1;			/* Set vector to Self_Test1 */
	}

	Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);
	
	GIEP;
}

/****************************************************************************/
/* SELF TEST 4																*/
/*                                                                          */
/* Description: Test Fast Flash memory.                                     */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Next test is Self_Test5                                     */
/*                                                                          */
/****************************************************************************/
void Self_Test4(void)
{
	unsigned int* 	s;	/* not used  */
	unsigned int* 	d;	/* not used  */
	int				i;	/* not used  */
	unsigned int 	CRC;/* CRC error */

	_GIEP;
	if (DIO_BUILT_IN_TEST_ENABLE.val)
	{/* Check if testing is enabled */
		CRC = Calc_CRC(FLASH_LOC_FAST, FLASH_FAST_SIZE);	/* Check Fast Flash */

		if (CRC!=CRC_FAST)
			DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;
		
		TMR_SELFTEST.vect = (int*)Self_Test5;				/* Set vector to Self_Test5 */
	}

	Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);
	
	GIEP;
}

/****************************************************************************/
/* SELF TEST 3																*/
/*                                                                          */
/* Description: Checks Boot Flash memory.                                   */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Next test is Self_Test4                                     */
/*                                                                          */
/****************************************************************************/
void Self_Test3(void)
{
	unsigned int CRC;

	_GIEP;

	if (DIO_BUILT_IN_TEST_ENABLE.val)
	{/* Check if testing is enabled */
		CRC = Calc_CRC(FLASH_LOC_BOOT, FLASH_BOOT_SIZE);	/* Test Boot Flash */

		if (CRC!=CRC_BOOT)
			DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;

		TMR_SELFTEST.vect = (int*)Self_Test4;				/* Set vector Self_Test4 */
	}

	Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);
	
	GIEP;
}

/****************************************************************************/
/* SELF TEST 2																*/
/*                                                                          */
/* Description: Checks Config 1 Flash                                       */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Next test is Self_Test3                                     */
/*                                                                          */
/****************************************************************************/
void Self_Test2(void)
{
	_GIEP;

	if (DIO_BUILT_IN_TEST_ENABLE.val)
	{/* Check if testing is enabled */
		if (Calc_CRC(FLASH_LOC_CFG1, FLASH_CFG_SIZE))	/* Test Config 1 Flash */
			DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;
	
		TMR_SELFTEST.vect = (int*)Self_Test3;			/* Set vector to Self_Test3 */
	}

	Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);
	
	GIEP;
}

/****************************************************************************/
/* SELF TEST 1																*/
/*                                                                          */
/* Description: Test Factory Config Flash                                   */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Next test is Self_Test2                                     */
/*                                                                          */
/****************************************************************************/
void Self_Test1(void)
{
	_GIEP;

	if (DIO_BUILT_IN_TEST_ENABLE.val)
	{/* Check if testing is enabled */
		if (Calc_CRC(FLASH_LOC_CFG_FACTORY, FLASH_CFG_SIZE))	/* Test Factory Config Memory */
			DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;
	
		TMR_SELFTEST.vect = (int*)Self_Test2;					/* Set vector as Self_Test2   */
	}

	Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);
	
	GIEP;
}
