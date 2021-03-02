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
/* File Name: MENU.C						    							*/
/* 									    									*/
/* File Description:							    						*/
/*									    									*/
/****************************************************************************/

//#define RUSS_TRANSLATION_ENABLED
#define MENU_H
#define RUSSTBLS_H
#include "GLBLS.H"
#include "MENU.H"
#include "RUSSTBLS.H"


/* MAIN MENU LOOP */
void MENU_PAGE_CPYRT(void);
void MENU_PAGE_MAIN(void);
void MENU_PAGE_STREAM_SELECT(void);
void MENU_PAGE_ALYESKA_PLC_DATA_ADDR(void);
void MENU_PAGE_UNLOCK_WPROT(void);
void MENU_PAGE_GOTO_TECH_MODE(void);
void MENU_PAGE_CHPW_WPROT(void);
void MENU_PAGE_CHPW_TECH_MODE(void); 
void MENU_PAGE_PHASE_HOLDOVER(void);		/*Phase Hold Over on LCD RS*/
void MENU_PAGE_NUMSAMP(void);
void MENU_PAGE_SALINITY(void);
void MENU_FORCE_PHASE(void); 				/*Add option to force phase on each stream RS*/  
void MENU_PAGE_T_UNIT(void);
void MENU_PAGE_T_ADJ(void);
void MENU_PAGE_T_AVG(void);  				/*RS*/ 
void MENU_PAGE_LOW_SALT_MODE(void);    		/*RS*/
void MENU_PAGE_LOW_SALT_THRESHOLD(void);	/*RS*/
void MENU_PAGE_OIL_ADJ(void);         
void MENU_PAGE_WATER_ADJ(void);
void MENU_PAGE_ALARM_HI(void);
void MENU_PAGE_ALARM_LO(void);
void MENU_PAGE_WATER_IDX(void);
void MENU_PAGE_WATER_LO(void);
void MENU_PAGE_WATER_HI(void);
void MENU_PAGE_OIL_IDX(void);
void MENU_PAGE_OIL_LO(void);
void MENU_PAGE_OIL_HI(void);
void MENU_PAGE_OIL_P1(void);
void MENU_PAGE_OIL_P0(void);
void MENU_PAGE_DIAG(void);
void MENU_PAGE_CAL_OIL(void);
void MENU_PAGE_CAL_WATER(void);
void MENU_PAGE_CAPTURE_OIL(void);
void MENU_PAGE_CAPTURE_WATER(void);
void MENU_PAGE_WATERCUT_RAW(void);
void MENU_PAGE_ACCUMN(int n);
void MENU_PAGE_ACCUMG(int n);
void MENU_PAGE_AVGACCUM(int n);				/* Average Watercut Percentage BC */
void MENU_PAGE_FLOW(int n);
void MENU_PAGE_NET_FLOW(int n);
void MENU_PAGE_DENSITY(int n);
void MENU_PAGE_INFO(void);
void MENU_PAGE_PORT_CFG(void);
void MENU_PAGE_RESTART(void);
void MENU_PAGE_RESTORE_FACTORY_DEFAULTS(void);
void MENU_TIME_DATE(void);
void MENU_RELAY_CFG(void);
void MENU_AI_CFG(void);
void MENU_AO_CFG(void);  
void MENU_PAGE_TRIM_RTD_SELECT(void);
//void MENU_PAGE_TRIM_RTD_LO(void); 			/*Trim RTD on LCD DISPLAY -RS*/  
//void MENU_PAGE_ASSURE_TRIM_RTD_LO(void); 	/*Add are you sure screens for LCD RS*/
//void MENU_PAGE_TRIM_RTD_HI(void); 			/*Trim RTD on LCD DISPLAY -RS*/   
//void MENU_PAGE_ASSURE_TRIM_RTD_HI(void); 	/*Add are you sure screens for LCD RS*/
void MENU_DENSITY(int n);
void MENU_OIL_CALC_MODE(void);

/* DENSITY CORRECTION SUB-MENU */
void MENU_DENSITY_CORRECTION(void);
void MENU_Density_Cal_Unit(void);
void MENU_Density_Cal(void);
void MENU_Density_D3(void);					/*third order density correction RS*/  
void MENU_Density_D2(void);					/*third order density correction RS*/
void MENU_Density_D1(void);
void MENU_Density_D0(void);
void MENU_Density_ADJ(void);
void MENU_DCM_PORT(void);
void MENU_DCM_CFG_CUTOFF(void);
void MENU_DCM_CFG_DAMP_DENSITY(void);
void MENU_DCM_CFG_DAMP_FR(void);
void MENU_DCM_ZERO(void);

/* FLOW COMPUTER SUB-MENU */
void MENU_FLOW_COMPUTER(void);
void MENU_FC_ENABLE_FLOW(int n);
void MENU_FC_ENABLE_GROSS(int n);
void MENU_FC_ENABLE_PULSE(int n);
void MENU_FC_ENABLE_DENSITY(int n);
void MENU_FC_ENABLE_NET(int n);
void MENU_FC_FLOW_CLASS(int n);
void MENU_FC_FLOW_UNIT(int n);
void MENU_FC_ACCUM_UNIT(int n);
void MENU_FC_PULSES_PER_VOL_UNIT(int n);
void MENU_FC_TEMP_UNIT(int n);
void MENU_FC_DENSITY_UNIT(int n);
void MENU_FC_PRESSURE_UNIT(int n);
void MENU_FC_MAN_WATERCUT(int n);
void MENU_FC_MAN_TEMP(int n);
void MENU_FC_MAN_SALINITY(int n);
void MENU_FC_MAN_DENSITY(int n);
void MENU_FC_MAN_PRESSURE(int n);
void MENU_FC_MAN_FLOW(int n);
void MENU_FC_USE_PDI_WATERCUT(int n);
void MENU_FC_USE_PDI_TEMP(int n);
void MENU_FC_USE_PDI_SALINITY(int n);
void MENU_FC_API_TABLE(int n);
void MENU_FC_API_C_ALPHA(int n);
void MENU_FC_DENSITY_ADJ(int n);
void MENU_FC_METER_FACTOR(int n);
void MENU_FC_SHRINKAGE(int n);
void MENU_FC_OIL_DENSITY_ST(int n);
void MENU_FC_WATER_DENSITY_ST(int n);
void MENU_FC_FLOW(int n);
void MENU_FC_WATERCUT(int n);
void MENU_FC_PRESSURE(int n);
void MENU_FC_TEMP(int n);
void MENU_FC_SALINITY(int n);
void MENU_FC_EMUL_DENSITY(int n);
void MENU_FC_OIL_DENSITY_PT(int n);
void MENU_FC_WATER_DENSITY_PT(int n);

void MENU_USB_LOGGING(int n);
void MENU_LOGGING_PERIOD(int n);


const int MENU_PAGE_USER[] = 	{
									(int)&MENU_PAGE_CPYRT,
									(int)&MENU_PAGE_MAIN,
									(int)&MENU_PAGE_UNLOCK_WPROT,
									(int)&MENU_PAGE_INFO,
									(int)&MENU_PAGE_DIAG,
									(int)&MENU_PAGE_STREAM_SELECT,
									(int)&MENU_PAGE_GOTO_TECH_MODE,
									0
								};

const int MENU_PAGE_NORMAL[] = 	{
									(int)&MENU_PAGE_CPYRT,
									(int)&MENU_PAGE_MAIN,
									(int)&MENU_PAGE_UNLOCK_WPROT,
									(int)&MENU_PAGE_INFO,
									(int)&MENU_PAGE_DIAG,
									(int)&MENU_PAGE_NUMSAMP,
									(int)&MENU_PAGE_STREAM_SELECT,
									(int)&MENU_PAGE_T_ADJ,
									(int)&MENU_PAGE_T_AVG, /*RS*/ 
									(int)&MENU_PAGE_CAPTURE_OIL,
									(int)&MENU_PAGE_CAL_OIL,
									(int)&MENU_PAGE_CAPTURE_WATER,
									(int)&MENU_PAGE_CAL_WATER,
									(int)&MENU_PAGE_OIL_ADJ,
									(int)&MENU_PAGE_SALINITY,
									(int)&MENU_Density_ADJ,
									(int)&MENU_USB_LOGGING,
									(int)&MENU_PAGE_GOTO_TECH_MODE,
									0
								};

const int MENU_PAGE_TECH[] = 	{
									(int)&MENU_PAGE_CPYRT,
									(int)&MENU_PAGE_MAIN,
									(int)&MENU_PAGE_UNLOCK_WPROT,
									(int)&MENU_PAGE_CHPW_TECH_MODE,
									(int)&MENU_PAGE_CHPW_WPROT,
									(int)&MENU_PAGE_INFO,
									(int)&MENU_PAGE_DIAG,
									(int)&MENU_TIME_DATE, 
									(int)&MENU_PAGE_PHASE_HOLDOVER, /*Phase Hold Over on LCD RS*/
									(int)&MENU_PAGE_NUMSAMP,
									(int)&MENU_PAGE_STREAM_SELECT,  
									(int)&MENU_FORCE_PHASE, 		/*Add option to force phase on each stream RS*/ 
									(int)&MENU_PAGE_T_UNIT,
									(int)&MENU_PAGE_T_ADJ,
									(int)&MENU_PAGE_T_AVG,   		/*RS*/ 
									(int)&MENU_PAGE_CAPTURE_OIL,
									(int)&MENU_PAGE_CAL_OIL,
									(int)&MENU_PAGE_CAPTURE_WATER,
									(int)&MENU_PAGE_CAL_WATER,
									(int)&MENU_PAGE_OIL_ADJ,
									(int)&MENU_PAGE_WATER_ADJ,
									(int)&MENU_PAGE_SALINITY,
									(int)&MENU_PAGE_ALARM_LO,
									(int)&MENU_PAGE_ALARM_HI,
									(int)&MENU_PAGE_OIL_IDX,
									(int)&MENU_PAGE_WATER_IDX,
									(int)&MENU_PAGE_OIL_LO,
									(int)&MENU_PAGE_OIL_HI,
									(int)&MENU_PAGE_WATER_LO,
									(int)&MENU_PAGE_WATER_HI,
									(int)&MENU_PAGE_OIL_P1,
									(int)&MENU_PAGE_OIL_P0,
									(int)&MENU_PAGE_PORT_CFG,
									(int)&MENU_RELAY_CFG,
									(int)&MENU_AI_CFG,
									(int)&MENU_AO_CFG,
									(int)&MENU_PAGE_TRIM_RTD_SELECT,
									//(int)&MENU_PAGE_TRIM_RTD_LO, 			/*Trim RTD on LCD DISPLAY -RS*/ 
									//(int)&MENU_PAGE_ASSURE_TRIM_RTD_LO,   	/*Add are you sure screens for LCD RS*/
									//(int)&MENU_PAGE_TRIM_RTD_HI, 			/*Trim RTD on LCD DISPLAY -RS*/
									//(int)&MENU_PAGE_ASSURE_TRIM_RTD_HI,   	/*Add are you sure screens for LCD RS*/
									(int)&MENU_PAGE_ALYESKA_PLC_DATA_ADDR,
									(int)&MENU_DENSITY_CORRECTION,
									(int)&MENU_DCM_PORT,
									(int)&MENU_DCM_CFG_DAMP_DENSITY,
									(int)&MENU_DCM_CFG_DAMP_FR,
									(int)&MENU_DCM_CFG_CUTOFF,
									(int)&MENU_DCM_ZERO,
									(int)&MENU_Density_Cal_Unit,
									(int)&MENU_Density_Cal,
									(int)&MENU_Density_D3, /*third order density correction RS*/
									(int)&MENU_Density_D2, /*third order density correction RS*/
									(int)&MENU_Density_D1,
									(int)&MENU_Density_D0,
									(int)&MENU_Density_ADJ,
									(int)&MENU_OIL_CALC_MODE,
									(int)&MENU_FLOW_COMPUTER,
									(int)&MENU_USB_LOGGING,
									(int)&MENU_LOGGING_PERIOD,
									(int)&MENU_PAGE_RESTART,
									(int)&MENU_PAGE_RESTORE_FACTORY_DEFAULTS,
									0
								};

/****************************************************************************/
/* MENU INIT																*/
/*                                                                          */
/* Description: Initializes the global MENU struct                          */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MENU_INIT(void)
{
	MSVE.INIT				= TRUE;
	DIO_MSVE				= 0;
	MSVE.M					= 0x00;
	MSVE.S					= 0x00;
	MSVE.V					= 0x00;
	MSVE.E					= 0x00;
	MSVE.MENU				= FALSE;
	MSVE.SELECT				= FALSE;
	MSVE.VALUE				= FALSE;
	MSVE.ENTER				= FALSE;
	MSVE.DIR				= 0;
	MSVE.DIR_CHANGE			= FALSE;
	MSVE.CURSOR_ENABLED		= FALSE;
	MSVE.CURSOR_ROW			= 0;
	MSVE.CURSOR_COL			= 0;
	MSVE.CNT				= 0;
	MSVE.MENU_CNT			= 0;
	MSVE.VALUE_CNT			= 0;
	MSVE.SELECT_CNT			= 0;
	MSVE.MODE_LOCKDOWN		= FALSE;
	MSVE.MODE_WPROT			= FALSE;
	MSVE.MODE_DEFINE		= FALSE;
	MSVE.MODE_USER			= FALSE;
	MSVE.MODE_TECH			= FALSE;
	MSVE.MODE_NORMAL		= FALSE;
	MSVE.PAGE				= 0;
	MSVE.SUBPAGE			= 0;
	MSVE.MENU_TRAP			= FALSE;
	MSVE.DIP[0]				= 0x00;
	MSVE.DIP[1]				= 0x00;
	MSVE.DIP[2]				= 0x00;
	MSVE.DIP[3]				= 0x00;
	MSVE.FRESH				= TRUE;

	VAR_Initialize(&MSVE.tmpv, c_not_used, u_generic_not_used, 100.0, 1000.0, var_no_bound|var_no_alarm);
	VAR_Update(&MSVE.tmpv, 0.0, 0, 0);
	
#ifndef RUSS_TRANSLATION_ENABLED
	sprintf(MSVE.tmpv.name, "MSVE Variable"); //R0
#else
	if(RUSS)
	{
		Get_Russ_Line(0,OUT_STR,0);
		sprintf(MSVE.tmpv.name, "%s",OUT_STR);
	}
	sprintf(MSVE.tmpv.name, "MSVE Variable"); //R0
#endif
	

	MSVE.ptmpv				= (VAR*) 0;
	MSVE.tbl				= NULL_PTR;
}

/****************************************************************************/
/* MENU REFRESH																*/
/*                                                                          */
/* Description: I guess this refreshes the screen.                          */
/*                                                                          */
/* Notes:       Will have to come back to this one.                         */
/*                                                                          */
/****************************************************************************/
void MENU_REFRESH(void)
{
	unsigned char tmp;	/* LCD DIP switch */
	int i;				/* counter 		  */
	BOOL CHANGE;		/* LCD DIP 1 or 2 */

	_GIEP;
	i 			 = (*MSVE_IN & 0xFF) ^ 0xFF;
	i 			 = i << 8;
	DIO_MSVE	&= 0x00FF;
	DIO_MSVE 	|= i;
	MSVE.M 		 = MSVE.M<<1;
	MSVE.S 		 = MSVE.S<<1;
	MSVE.V 		 = MSVE.V<<1;
	MSVE.E 		 = MSVE.E<<1;

	if (DIO_MSVE & _M1) 
		MSVE.M |= 0x01;
	
	if (DIO_MSVE & _S1) 
		MSVE.S |= 0x01;
	
	if (DIO_MSVE & _V1) 
		MSVE.V |= 0x01;
	
	if (DIO_MSVE & _E1) 
		MSVE.E |= 0x01;
	
	if (DIO_MSVE & _M1a) 
		MSVE.M |= 0x01;
	
	if (DIO_MSVE & _S1a) 
		MSVE.S |= 0x01;
	
	if (DIO_MSVE & _V1a) 
		MSVE.V |= 0x01;
	
	if (DIO_MSVE & _E1a) 
		MSVE.E |= 0x01;

	MSVE.M &= 0x03;
	MSVE.S &= 0x03;
	MSVE.V &= 0x03;
	MSVE.E &= 0x03;

	if (MSVE.M==0x03) 
		MSVE.MENU_CNT++;
	else 
		MSVE.MENU_CNT = 0;

	if (MSVE.S==0x03) 
		MSVE.SELECT_CNT++;
	else 
		MSVE.SELECT_CNT = 0;

	if (MSVE.V==0x03) 
		MSVE.VALUE_CNT++;
	else 
		MSVE.VALUE_CNT = 0;

	if (MSVE.M==0x01) 
		MSVE.MENU = TRUE;
	else 
		MSVE.MENU = FALSE;

	if (MSVE.S==0x01) 
		MSVE.SELECT = TRUE;
	else 
		MSVE.SELECT = FALSE;

	if (MSVE.V==0x01) 
		MSVE.VALUE = TRUE;
	else 
		MSVE.VALUE = FALSE;

	if (MSVE.E==0x01) 
		MSVE.ENTER = TRUE;
	else 
		MSVE.ENTER = FALSE;

	for (i=0;i<4;i++) 
		MSVE.DIP[i] = MSVE.DIP[i]<<1;

	if (LCD_PRESENT)
		tmp = (LCD_DIPSW & 0xFF) ^ 0xFF;
	else
		tmp = LCD_DIP1;
	
	if (tmp & LCD_DIP1) 
		MSVE.DIP[0] |= 0x01;
	
	if (tmp & LCD_DIP2) 
		MSVE.DIP[1] |= 0x01;
	
	if (tmp & LCD_DIP3) 
		MSVE.DIP[2] |= 0x01;
	
	if (tmp & LCD_DIP4) 
		MSVE.DIP[3] |= 0x01;

	CHANGE = FALSE;
	
	for (i=0;i<4;i++)
	{
		MSVE.DIP[i] &= 0x03;

		if ((MSVE.DIP[i]==0x01) || (MSVE.DIP[i]==0x02))
			CHANGE = TRUE;
	}

	if (MSVE.FRESH) 
		MSVE.MENU_TRAP = FALSE;

	/*** determine menu ***/
	MSVE.MODE_LOCKDOWN		= FALSE;
	MSVE.MODE_WPROT			= FALSE;
	MSVE.MODE_DEFINE		= FALSE;
	MSVE.MODE_USER			= FALSE;
	MSVE.MODE_TECH			= FALSE;
	MSVE.MODE_NORMAL		= FALSE;

	if ((MSVE.DIP[2]==0x03) && (DIO_LOCK[2].val))
		MSVE.MODE_WPROT = TRUE;
	
	if (MSVE.DIP[3]==0x03)
		MSVE.MODE_LOCKDOWN = TRUE;
	
	if ((!DIO_LOCK[3].val) || ((MSVE.DIP[0]==0x03) && (MSVE.DIP[1]==0x00)))
		MSVE.MODE_TECH = TRUE;
	else if ((MSVE.DIP[0]==0x00) && (MSVE.DIP[1]==0x03))
		MSVE.MODE_USER = TRUE;
	else if ((MSVE.DIP[0]==0x03) && (MSVE.DIP[1]==0x03))
		MSVE.MODE_DEFINE = TRUE;
	else
		MSVE.MODE_NORMAL = TRUE;
	/*** determine menu ***/

	if ((!MSVE.MENU_TRAP) && (!MSVE.MODE_LOCKDOWN))
	{/* only works in main menu ring */
		if ((MSVE.MENU_CNT>20) && (!MSVE.DIR_CHANGE))
		{
			MSVE.DIR 		^= 0x01;
			MSVE.DIR_CHANGE  = TRUE;
		}
		else if ((MSVE.DIR_CHANGE) && (MSVE.MENU_CNT<40))
		{
			if (MSVE.M==0x00)
			{
				MSVE.FRESH 		= TRUE;
				MSVE.DIR_CHANGE = FALSE;
			}
			else
			{
				if (MSVE.DIR)
				{
					for (i=0;i<4;i++)
						sprintf(LCD_DISPLAY[i],"<<<<<<<<<<<<<<<<<<<<");
				}
				else
				{
					for (i=0;i<4;i++)
						sprintf(LCD_DISPLAY[i],">>>>>>>>>>>>>>>>>>>>");
				}
				
				GIEP;
				return;
			}
		}
	}

	if ((!MSVE.INIT) && (CHANGE || (MSVE.MENU_CNT>40)))
	{
		DIO_LOCK[2].val			= TRUE;
		DIO_LOCK[3].val			= TRUE;
		MSVE.CURSOR_ENABLED		= FALSE;
		MSVE.DIR				= 0;
		MSVE.CURSOR_ROW			= 0;
		MSVE.CURSOR_COL			= 0;
		MSVE.CNT				= 0;
		MSVE.MENU_CNT			= 0;
		MSVE.SELECT_CNT			= 0;
		MSVE.VALUE_CNT			= 0;
		MSVE.PAGE				= 1;
		MSVE.SUBPAGE			= 0;
		MSVE.FRESH				= TRUE;
		MSVE.MENU_TRAP			= FALSE;
		MSVE.DIR_CHANGE			= FALSE;
	}

	if (MSVE.MODE_NORMAL)
		MSVE.tbl = (int*) &MENU_PAGE_NORMAL;
	else if (MSVE.MODE_TECH)
		MSVE.tbl = (int*) &MENU_PAGE_TECH;
	else if (MSVE.MODE_USER)
		MSVE.tbl = (int*) &MENU_PAGE_USER;
	else
	{
		for (i=0;i<4;i++)
			sprintf(LCD_DISPLAY[i],"                    ");
		
		MSVE.CNT++;
		GIEP;
		
		return;
	}

	if (MSVE.MODE_LOCKDOWN)
	{/* disable all functions - NOTE: ASSUME SELECT WILL ONLY CHANGE SUB SCREENS ON MAIN PAGE OF EACH MENU */
		if (MSVE.tbl[MSVE.PAGE]!=(int)&MENU_PAGE_MAIN) 
			MSVE.SELECT = FALSE;
		
		MSVE.MENU  = FALSE;
		MSVE.VALUE = FALSE;
		MSVE.ENTER = FALSE;
	}
	else if (MSVE.MODE_WPROT)
	{
		if	((MSVE.tbl[MSVE.PAGE]!=(int)&MENU_PAGE_UNLOCK_WPROT)&&
			 (MSVE.tbl[MSVE.PAGE]!=(int)&MENU_PAGE_GOTO_TECH_MODE))
		{
			if (MSVE.tbl[MSVE.PAGE]!=(int)&MENU_PAGE_MAIN) 
				MSVE.SELECT = FALSE;
			
			MSVE.VALUE = FALSE;
			MSVE.ENTER = FALSE;
		}
	}

	if (MSVE.MENU && !MSVE.MENU_TRAP)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		MSVE.SUBPAGE			= 0;
		MSVE.CNT				= 0;
		MSVE.FRESH				= TRUE;
		MSVE.CURSOR_ENABLED		= FALSE;
		MSVE.MENU				= FALSE;
		TRIM_RTD_LO 			= FALSE;      /*Add are you sure screens for LCD RS*/
		TRIM_RTD_HI 			= FALSE;      /*The MSVE.MENU control on the submenu doesn't work RS*/
	}
	else if (MSVE.SELECT)
	{
		MSVE.SUBPAGE++;
		MSVE.CNT = 0;
	}

	if (!MSVE.DIR)
	{
		for (i=0;i<=MSVE.PAGE;i++)
		{
			if (MSVE.tbl[i]==0)
			{
				MSVE.PAGE = 1;
				
				break;
			}
		}
	}
	else
	{
		if (MSVE.PAGE<1)
		{/* go to last page */
			MSVE.PAGE 	= 1;
			i 			= 1;
			
			while(1)
			{
				if (MSVE.tbl[i]==0) 
					break;
				
				MSVE.PAGE = i;
				i++;
			}
		}
	}

	vect_m = (int*)MSVE.tbl[MSVE.PAGE];

    PUSH_ALL;
	asm("		.global _vect_m    ");
    asm("	ldp		_vect_m        ");
    asm("	ldi		@_vect_m, R0   ");
    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
    POP_ALL;

	MSVE.CNT++;
	GIEP;
}

/****************************************************************************/
/* UPDATE FLAGS GOTO NEXT MENU												*/
/*                                                                          */
/* Description: Updates configuration and goes to next menu.                */
/*                                                                          */
/* Arguments:   BOOL cfg 	  - write config to user?						*/
/*				BOOL skip_adv - go to next menu?                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       if 0,1 sets CURSOR_ENABLED to false.                        */
/*                                                                          */
/****************************************************************************/
void Update_Flags_Goto_Next_Menu(BOOL cfg, BOOL skip_adv)
{
	if (cfg)
	{/* update CFG flags */
	/*todo: log config changes*/
		CHANGE = TRUE;

		if (CHANGE) 
			Write_CFG_USER();

		HCHANGE[0] = TRUE;
		HCHANGE[1] = TRUE;
		HCHANGE_COUNTER++;
	}

	if (!skip_adv)
	{/* advance to next menu item */
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		MSVE.SUBPAGE			= 0;
		MSVE.CNT				= 0;
		MSVE.FRESH				= TRUE;
	}

	MSVE.CURSOR_ENABLED		= FALSE;
}

/****************************************************************************/
/* MSVE DATA INPUT															*/
/*                                                                          */
/* Description: Formats screen output and controls editing data.            */
/*                                                                          */
/* Arguments:   CHAR POINTER title		- title string						*/
/*				CHAR POINTER varname	- variable name string				*/
/*				INT iw					- int number width					*/
/*				INT ip					- int decimal point width			*/
/*				BOOL is					- sign?								*/
/*				BOOL sci				- scientific notation?				*/
/*				VAR POINTER var			- input variable					*/
/*				BOOL skip_save			- skip updating user config?		*/
/*				BOOL skip_adv			- skip going to next screen?		*/
/*				                                                            */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MSVE_Data_Input(char* title, char* varname, int iw, int ip, BOOL is, BOOL sci, VAR* v, BOOL skip_save, BOOL skip_adv)
{
	int r,i,j,k1,k2,k3,m,w,p,s,vnl;	/* variable update check; counter; string format offset; t1 length; t2 length; u length; min/max; number; decimal point; sign; variable name length */
	char f[101];	/* number value */
	char t1[101];	/* title and unit string */
	char t2[101];	/* MVSE.tmpf[2] */
	char u[8];		/* unit string */
	char str[101];	/* variable name */

	_GIEP;
	w = iw;
	p = ip;
	s = is;

	if (MSVE.FRESH)
	{
		m = 0;

		if (title[0] == 0x00)
		{
			if (RUSS && (v->name_r != 0x00) )
			{
				if (Get_Russ_Line(v->name_r,OUT_STR2,0) == 0) //note the function call
					title = OUT_STR2;
			}
			else
				title = v->name;
		}

		sprintf(MSVE.str[0],"");
		sprintf(MSVE.str[1],"");
		Get_Unit(v->class, v->unit, u);
		
		k3 = strlen(u);

		if (k3>0)
			sprintf(t1,"%s (%s)",title,u);
		else
			sprintf(t1,"%s",title);
		
		i = strlen(t1);

		if ((i>20) && (k3>0))
		{/* adjust title/unit to fit on screen */
			sprintf(t1,"%s",title);
			
			i = strlen(t1);
			j = (20-i)/2;
			
			if (j<0) 
				j = 0;
			
			sprintf(MSVE.str[0],"                    ");
			strcpy(MSVE.str[0]+j, t1);
			sprintf(t1,"(%s)",u);
			
			i = strlen(t1);
			j = (20-i)/2;
			
			if (j<0) 
				j = 0;
			
			sprintf(MSVE.str[1],"                    ");
			strcpy(MSVE.str[1]+j, t1);
			strcpy(LCD_DISPLAY[0], MSVE.str[0]);
		}
		else
		{/* center title/unit string */
			j = (20-i)/2;
			
			if (j<0) 
				j = 0;
			
			sprintf(LCD_DISPLAY[0],"                    ");
			strcpy(LCD_DISPLAY[0]+j, t1);
		}

		if (w>20)
			w = 20;
		
		if (p>6)
			p = 6;
		
		if ((v->STAT & var_no_bound)==0)
		{/* bounded */
			MSVE.tmpf[0] = VAR_Get_Unit_Param(v, reg_direct_bmin, 0, 1);
			MSVE.tmpf[2] = VAR_Get_Unit_Param(v, reg_direct_bmax, 0, 1);

			if (!s && ((MSVE.tmpf[0]<0) || (MSVE.tmpf[2]<0)))
			{
				s = TRUE;
				
				if (w<19)
					w++;
			}

			while(TRUE)
			{/* print value */
				if (sci)
				{/* scientific notation */
					sprintf(f, "%%+%1dE",p);
					
					break;
				}
				else
				{/* sign specific */
					if (s)
						sprintf(f, "%%+%1d.%1df",w,p);
					else
						sprintf(f, "%%%1d.%1df",w,p);
				}

				if (strlen(f)>20)	/* Auto switch to scientific notation if value too long */
					sci = TRUE;
				else
					break;
			}

			sprintf(t2,f,MSVE.tmpf[2]);
			
			k2 = strlen(t2);
			
			if (k2>m) 
				m = k2;

			sprintf(t1,f,MSVE.tmpf[0]);
			
			k1 = strlen(t1);
			
			if (k1>m) 
				m = k1;
			
			if (RUSS)
			{
				if (m<=11)
				{// adjust display based on length - unabbreviated 
					
						sprintf(ENG_STR2,"Maximum:            "); //R1
						Print_To_LCD(1, 1, ENG_STR2, 0);
						
						sprintf(ENG_STR2,"Minimum:            "); //R2
						Print_To_LCD(2, 2, ENG_STR2, 0);
				}
				else if (m<=15)
				{// abbreviated display 

					sprintf(ENG_STR2,"Max:                "); //R3
					Print_To_LCD(1, 3, ENG_STR2, 0);
					sprintf(ENG_STR2,"Min:                "); //R4
					Print_To_LCD(2, 4, ENG_STR2, 0);

				}
				else
				{/* blank */
					sprintf(LCD_DISPLAY[1],"                    ");
					sprintf(LCD_DISPLAY[2],"                    ");
				}
			}
			else
			{
				if (m<=12)
				{/* adjust display based on length - unabreviated */
					sprintf(LCD_DISPLAY[1],"Maximum:            ");
					sprintf(LCD_DISPLAY[2],"Minimum:            ");
				}
				else if (m<=16)
				{/* abreviated display */
					sprintf(LCD_DISPLAY[1],"Max:                ");
					sprintf(LCD_DISPLAY[2],"Min:                ");
				}
				else
				{/* blank */
					sprintf(LCD_DISPLAY[1],"                    ");
					sprintf(LCD_DISPLAY[2],"                    ");
				}
			}

			for (i=0;i<k1;i++)
				LCD_DISPLAY[2][19-i] = t1[m-i-1];
			
			for (i=0;i<k2;i++)
				LCD_DISPLAY[1][19-i] = t2[m-i-1];
		}
		else
		{/* unbounded */
			sprintf(LCD_DISPLAY[1],"                    ");
			sprintf(LCD_DISPLAY[2],"                    ");
			
			vnl = strlen(varname);
		}

		MSVE.tmpf[1] = v->val;

		if (sci)/* value */
			sprintf(f, "%%+%1dE",p);
		else
		{
			if (s)
				sprintf(f, "%%+%1d.%1df",w,p);
			else
				sprintf(f, "%%%1d.%1df",w,p);
		}

		sprintf(t1,f,MSVE.tmpf[1]);
		
		k1 = strlen(t1);
		
		if (k1>m) 
			m = k1;

		if (w>m) 
			m = w;

		MSVE.k = m;
  		vnl    = 20 - m - 1;

		if (vnl>0)
		{
			strncpy(str, varname, vnl);
			sprintf(LCD_DISPLAY[3],"%s:                    ", str);
		}
		else
			sprintf(LCD_DISPLAY[3],"                    ");
		
		for (i=0;i<k1;i++)
			LCD_DISPLAY[3][19-i] = t1[k1-i-1];
		
		MSVE.FRESH = FALSE;
	}
	else if (strlen(MSVE.str[0])>0)
	{
		if ((MSVE.CNT%50)<25)
			strcpy(LCD_DISPLAY[0], MSVE.str[0]);
		else
			strcpy(LCD_DISPLAY[0], MSVE.str[1]);
	}

	if (MSVE.ENTER && MSVE.CURSOR_ENABLED)
	{/* save the value */
		LCD_DISPLAY[3][20] = 0;

		sscanf(LCD_DISPLAY[3]+(20-MSVE.k), "%f", &MSVE.tmpf[4]);

		if (VAR_Update(v, MSVE.tmpf[4],1,1))	/* bounds check ONLY! */
		{
			VAR_Update(v, MSVE.tmpf[4],0,1);
			
			if (!skip_save) 
				Update_Flags_Goto_Next_Menu(1,skip_adv);
		}
		else
			r = 0;
		
		MSVE.tmpf[1] = v->val;
	}
	else if (MSVE.SELECT)
	{/* move the cursor */
		if (!MSVE.CURSOR_ENABLED)
		{
			MSVE.CURSOR_ENABLED = TRUE;
			MSVE.CURSOR_ROW = 3;
			MSVE.CURSOR_COL = 19;
		}
		else
		{
			MSVE.CURSOR_COL--;

			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 'E') 
				MSVE.CURSOR_COL--;
			
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 'e') 
				MSVE.CURSOR_COL--;
			
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '.') 
				MSVE.CURSOR_COL--;

			if ((MSVE.CURSOR_COL<=(19-MSVE.k)) || (MSVE.CURSOR_COL>19))
				MSVE.CURSOR_COL = 19;
			
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]==' ')
			{
				if(	   (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL+1] == '-') 
					|| (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL+1] == '+'))
				{
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL  ]	= LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL+1];
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL+1]	= '0';
					MSVE.CURSOR_COL++;
				}
				else
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL  ] = '0';
			}
		}
	}
	else if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
	{/* change sign, increment value */
		if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '-')
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]  = '+';
		else if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '+')
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]  = '-';
		else
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
			
			if ( LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] > '9')
				 LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
			else if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] < '0')
				 LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
		}
	}

	GIEP;
}

/****************************************************************************/
/* MENU PAGE CPYRT															*/
/*                                                                          */
/* Description: Copyright information screen                                */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_CPYRT(void)
{
	if ((MSVE.CNT%100)==0)
		MSVE.SUBPAGE++;
	
	switch(MSVE.SUBPAGE % 4)
	{
		case 3:
		{
			MSVE.PAGE++;
			MSVE.SUBPAGE = 0;
			MSVE.FRESH   = TRUE;
			
			break;
		}
		case 2:
		{
			MSVE.FRESH = TRUE;
			
			MENU_PAGE_INFO();
			
			break;
		}
		default:
		{
			if (MSVE.FRESH)
			{
				sprintf(ENG_STR,"Copyright 2016"); //R5
				Print_To_LCD(0, 5, ENG_STR, -1);
				
				sprintf(ENG_STR,"Phase Dynamics, Inc."); //R87 
				Print_To_LCD(1, 87, ENG_STR, -1);
				
				if(RUSS)
				{
					sprintf(LCD_DISPLAY[2],"");
					sprintf(LCD_DISPLAY[3],"");
				}
				else
				{
					sprintf(LCD_DISPLAY[2],"1251 Columbia Dr.");
					sprintf(LCD_DISPLAY[3],"Richardson, TX 75081");
				}
				
				MSVE.INIT = FALSE;
				MSVE.FRESH = FALSE;
			}
			break;
		}
	}
}

/****************************************************************************/
/* MENU PAGE RESTART														*/
/*                                                                          */
/* Description: Restart screen.                                             */
/*                                                                          */
/* Notes:       Calls the first line of code.                               */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_RESTART(void)
{
	if (MSVE.FRESH)
	{/* print the screen */
		MSVE.FRESH = FALSE;
				
		sprintf(ENG_STR,"       Restart");	//R6
		Print_To_LCD(0, 6, ENG_STR, 7);
		sprintf(LCD_DISPLAY[1],"");
		
		if(RUSS)
		{
			Get_Russ_Line(6,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s",OUT_STR);
		}
		else
			sprintf(ENG_STR,"ENTER = RESTART");	//R7
		Print_To_LCD(2, 7, ENG_STR, 0);
		sprintf(LCD_DISPLAY[3],"");
	}

	if (MSVE.ENTER)
	{/* select restart operation */
		c_int00();
		while(1){} /* never reaches this code, intended for crashes to not end the program */
	}
}

/****************************************************************************/
/* MENU PAGE RESTORE FACTORY DEFAULTS										*/
/*                                                                          */
/* Description: Restores factory defaults                                   */
/*                                                                          */
/* Notes:       Calls Submit_Restore_CFG_FACTORY()                          */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_RESTORE_FACTORY_DEFAULTS(void)
{
	if (MSVE.FRESH)
	{/* Display screen */
		MSVE.FRESH = FALSE;
		
		sprintf(ENG_STR,"  Restore Factory");	//R8
		Print_To_LCD(0, 8, ENG_STR, 1);
		
		sprintf(ENG_STR,"     Defaults?");		//R9
		Print_To_LCD(1, 9, ENG_STR, 5);
		

		sprintf(LCD_DISPLAY[2],"");
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[1] = 0;
	}

	if (MSVE.tmpi[1]==0)
	{/* display value */
		
		if(RUSS)
		{
			switch (MSVE.tmpi[0]&0x01)
			{
				case 1: 
					Get_Russ_Line(10,OUT_STR,0);
					sprintf(LCD_DISPLAY[3],"        %s",OUT_STR); 
					break;
				default: 
					Get_Russ_Line(11,OUT_STR,0);
					sprintf(LCD_DISPLAY[3],"         %s",OUT_STR); 
					break;
			}
		}
		else
		{
			switch (MSVE.tmpi[0]&0x01)
			{
				case 1:  
					sprintf(ENG_STR,"        YES");	//R10
					Print_To_LCD(3, 10, ENG_STR, 9);
					break;
				default: 
					sprintf(ENG_STR,"         NO"); 	//R11
					Print_To_LCD(3, 11, ENG_STR, 8);
					break;
			}
		}
	}

	if (MSVE.SELECT || MSVE.VALUE)	/* change value */
		MSVE.tmpi[0]++;
	
	if (MSVE.ENTER)
	{/* select a value */
		if (MSVE.tmpi[0]&0x01)
		{/* if yes - Submit_Restore_CFG_FACTORY() */
			MSVE.tmpi[1] = 1;
			sprintf(ENG_STR," Restoring Factory");	//R12
			Print_To_LCD(0, 12, ENG_STR, 0);
			sprintf(ENG_STR,"    Defaults...");		//R13
			Print_To_LCD(1, 13, ENG_STR, 4);
			sprintf(LCD_DISPLAY[2],"");
			sprintf(LCD_DISPLAY[3],"");
			
			Submit_Restore_CFG_FACTORY();
		}
	}
}

/****************************************************************************/
/* MENU PAGE DIAG															*/
/*                                                                          */
/* Description: Displays diagnostic STATUS registers                        */
/*                                                                          */
/* Notes:       apparently you are allowed to change these.                 */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_DIAG(void)
{
	int i;		/* temp byte */
	char u[8];	/* unit name */

	if (!MSVE.CURSOR_ENABLED)
	{/* cursor disabled */
		sprintf(ENG_STR,"    Diagnostics");		//R14
		Print_To_LCD(0, 14, ENG_STR, 4);
		
		i = REG_DIAG[0].val;
		
		Get_Unit(REG_ADC[ADC_Tint].class, REG_ADC[ADC_Tint].unit, u);
		sprintf(LCD_DISPLAY[1],"%04X        T:%4.0f%s",i, REG_ADC[ADC_Tint].val,u);
		
		i = REG_DIAG[1].val;
		
		sprintf(LCD_DISPLAY[2],"%04X", i);
		strcpy(LCD_DISPLAY[3],E_STRING);
	}
	else if (MSVE.FRESH)
	{/* print page */
		MSVE.FRESH = FALSE;
		
		sprintf(ENG_STR,"  Diagnostics Mask");	//R15
		Print_To_LCD(0, 15, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"%04X", DIAGNOSTICS_MASK[0]);
		sprintf(LCD_DISPLAY[2],"%04X", DIAGNOSTICS_MASK[1]);
		sprintf(LCD_DISPLAY[3],"");
	}

	if (MSVE.ENTER)
	{/* ENTER button pressed */
		if (!MSVE.CURSOR_ENABLED)
			Clear_Diagnostics();
		else
		{
			sscanf(LCD_DISPLAY[1], "%04X", &DIAGNOSTICS_MASK[0]);
			sscanf(LCD_DISPLAY[2], "%04X", &DIAGNOSTICS_MASK[1]);
			Update_Flags_Goto_Next_Menu(1,1);
		}
	}
	else if (MSVE.SELECT)
	{/* SELECT button pressed */
		if (!MSVE.CURSOR_ENABLED)
		{/* cursor disabled */
			MSVE.FRESH = TRUE;
			MSVE.CURSOR_ENABLED = TRUE;
			MSVE.CURSOR_ROW = 2;
			MSVE.CURSOR_COL = 3;
		}
		else
		{/* move cursor digits and rows */
			MSVE.CURSOR_COL--;
			
			if (MSVE.CURSOR_COL<0)
			{/* col 0 -> 3*/
				MSVE.CURSOR_ROW--;
				MSVE.CURSOR_COL = 3;
			}
			
			/* row 1 -> 2 */
			if (MSVE.CURSOR_ROW<1)
				MSVE.CURSOR_ROW = 2;
		}
	}
	else if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
	{/* VALUE button pressed - change value */
		if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '9')
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]  = 'A';
		else if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 'F')
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
		else
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
	}
}

/****************************************************************************/
/* MENU PAGE MAIN															*/
/*                                                                          */
/* Description: Displays the main page, controls the SELECT branch of the	*/
/*				main menu.                                                  */
/*                                                                          */
/* Notes:       Tech mode and Normal mode have different start screens.     */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_MAIN(void)
{
	char	u[8];		/* unit name 			*/
	float	min,max;	/* min value; max value */
	BOOL	phase;		/* display phase flag 	*/

	if (MSVE.FRESH)
	{/* start at main menu screen */
		MSVE.FRESH = FALSE;
		MSVE.tmpi[0] = 0;
	}

	if (MSVE.SELECT)	/* Select "branch" of main menu */
		MSVE.tmpi[0]++;
	else if (MSVE.MENU)
		MSVE.tmpi[0] = 0;
	
	MSVE.MENU_TRAP = TRUE;
                                     
	switch(MSVE.tmpi[0])
	{/* SELECT MENU - Main page (default) */
		case 1:
		{/* Average Watercut FC1 */
			MENU_PAGE_AVGACCUM(0);
		
			if(MSVE.tmpi[0]==1)
				break;
		}
		case 2:
		{/* Net Accumulator FC1 */
			MENU_PAGE_ACCUMN(0);
			
			if(MSVE.tmpi[0]==2) 
				break;
		}
        case 3:
		{/* Net flow FC1 */
			MENU_PAGE_NET_FLOW(0);
			
			if(MSVE.tmpi[0]==3) 
				break;
		}
        case 4:
		{/* Gross Accumulator FC1 */
			MENU_PAGE_ACCUMG(0);
			
			if(MSVE.tmpi[0]==4) 
				break;
		}
        case 5:
		{/* Flow FC1 */
			MENU_PAGE_FLOW(0);
			
			if(MSVE.tmpi[0]==5) 
				break;
		}
        case 6:
		{/* Net Accumulator FC2*/
			MENU_PAGE_ACCUMN(1);
			
			if(MSVE.tmpi[0]==6) 
				break;
		}
        case 7:
		{/* Net Flow FC2 */
			MENU_PAGE_NET_FLOW(1);
			
			if(MSVE.tmpi[0]==7) 
				break;
		}
        case 8:
		{/* Gross Accumulator FC2 */
			MENU_PAGE_ACCUMG(1);
			
			if(MSVE.tmpi[0]==8) 
				break;
		}
        case 9:
		{/* Flow FC2 */
			MENU_PAGE_FLOW(1);
			
			if(MSVE.tmpi[0]==9) 
				break;
		}
        case 10:
		{/* Net Accumulator FC3 */
			MENU_PAGE_ACCUMN(2);
			
			if(MSVE.tmpi[0]==10) 
				break;
		}
        case 11:
		{/* Net flow FC3 */
			MENU_PAGE_NET_FLOW(2);
			
			if(MSVE.tmpi[0]==11) 
				break;
		}
        case 12:
		{/* Gross Accumulator FC3 */
			MENU_PAGE_ACCUMG(2);
			
			if(MSVE.tmpi[0]==12) 
				break;
		}
        case 13:
		{/* Flow FC3 */
			MENU_PAGE_FLOW(2);
			
			if(MSVE.tmpi[0]==13) 
				break;
		}
        case 14:
		{/* Density FC1 */
			MENU_DENSITY(0);
			
			if(MSVE.tmpi[0]==14) 
				break;
		}
        case 15:
		{/* Density FC2 */
			MENU_DENSITY(1);
			
			if(MSVE.tmpi[0]==15) 
				break;
		}
        case 16:
		{/* Density FC3 */
			MENU_DENSITY(2);
			
			if(MSVE.tmpi[0]==16) 
				break;
		}
        case 17:
		{/* Density FC1 */
			MENU_PAGE_DENSITY(0);
			
			if(MSVE.tmpi[0]==17) 
				break;
		}
        case 18:
		{/* Density FC2 */
			MENU_PAGE_DENSITY(1);
			
			if(MSVE.tmpi[0]==18) 
				break;
		}
        case 19:
		{/* Density FC3 */
			MENU_PAGE_DENSITY(2);
			
			if(MSVE.tmpi[0]==19) 
				break;
		}
        default:
		{
			MSVE.MENU_TRAP = FALSE;
			MSVE.tmpi[0]   = 0;

			if (MSVE.tbl == (int*) &MENU_PAGE_TECH)
			{/* tech mode */
				if ((MSVE.CNT%40)==0)
					MSVE.SUBPAGE++;
				
				if (MSVE.SUBPAGE%2)
				{/* choose phase - high */
					if ((ANALYZER_MODE.val&0xFF)!=SUB_HIGH) 
						phase = 0; /* oil */
					else 
						phase = 1; /* water */
				}
				else
				{/* choose phase - full, ccm, !?high!? */
					if (((ANALYZER_MODE.val&0xFF)==SUB_FULL) ||((ANALYZER_MODE.val&0xFF)==SUB_CCM) || ((ANALYZER_MODE.val&0xFF)==SUB_HIGH)) 
						phase = 1; /* water */
					else 
						phase = 0; /* oil */
				}
	
				/* LCD_DISPLAY 1 & 2 */
				if (phase)
				{/* water phase */
					Get_Unit(REG_FREQ[OSC_OIL_CALC].class, REG_FREQ[OSC_WATER_CALC].unit, u);
					if (RUSS)
					{
						Get_Russ_Line(16,OUT_STR,0);
						sprintf(LCD_DISPLAY[1],"%s%5.1f %s",OUT_STR,REG_FREQ[OSC_WATER_CALC].val, u);
					}	
					else
						sprintf(LCD_DISPLAY[1],"Freq(W):%8.3f %s",REG_FREQ[OSC_WATER_CALC].val, u);		//R16
					
					Get_Unit(REG_VREF[OSC_WATER_CALC].class, REG_VREF[OSC_WATER_CALC].unit, u);
					if (RUSS)
					{
						Get_Russ_Line(17,OUT_STR,0);
						sprintf(LCD_DISPLAY[2],"%s %6.3f %s",OUT_STR,REG_VREF[OSC_WATER_CALC].val,u);
					}
					else
						sprintf(LCD_DISPLAY[2],"Ref Pwr(W): %6.3f %s",REG_VREF[OSC_WATER_CALC].val,u);	//R17
				}
				else
				{/* oil phase */
					Get_Unit(REG_FREQ[OSC_OIL_CALC].class, REG_FREQ[OSC_OIL_CALC].unit, u);
					if (RUSS)
					{
						Get_Russ_Line(18,OUT_STR,0);
						sprintf(LCD_DISPLAY[1],"%s%5.1f %s",OUT_STR,REG_FREQ[OSC_OIL_CALC].val, u);
					}	
					else
						sprintf(LCD_DISPLAY[1],"Freq(O):%8.3f %s",REG_FREQ[OSC_OIL_CALC].val, u);	//R18
					
					
					Get_Unit(REG_VREF[OSC_OIL_CALC].class, REG_VREF[OSC_OIL_CALC].unit, u);
					if (RUSS)
					{
						Get_Russ_Line(19,OUT_STR,0);
						sprintf(LCD_DISPLAY[2],"%s %6.3f %s",OUT_STR,REG_VREF[OSC_OIL_CALC].val,u);
					}	
					else
					sprintf(LCD_DISPLAY[2],"Ref Pwr(O): %6.3f %s",REG_VREF[OSC_OIL_CALC].val,u);	//R19
				}
	
				Get_Unit(REG_WATERCUT.class, REG_WATERCUT.unit, u);
				
				/* LCD_DISPLAY 0 */
				if (REG_EMULSION_PHASE.val==2.0)
				{
					if(RUSS)
					{
						Get_Russ_Line(215, OUT_STR, 0);
						sprintf(LCD_DISPLAY[0],"%s:      (%2d)  ?.? %s",OUT_STR,(int)REG_STREAM_SELECT.val, u);
					}
					else
						sprintf(LCD_DISPLAY[0],"Water Cut(%2d)  ?.? %s",(int)REG_STREAM_SELECT.val, u); //R215
				}
				else
				{
					min = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmin, 0, 0);
					max = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmax, 0, 0);

					if (f_compare(&max, 10.0, 0)<=0)
					{
						if(RUSS)
						{
							Get_Russ_Line(215, OUT_STR, 0);
							sprintf(LCD_DISPLAY[0],"%s:      (%2d)%5.2f %s",OUT_STR,(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u);
						}
						else
							sprintf(LCD_DISPLAY[0],"Water Cut(%2d)%5.2f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); //R215
					}
					else
					{
						if(RUSS)
						{
							Get_Russ_Line(215, OUT_STR, 0);
							sprintf(LCD_DISPLAY[0],"%s:      (%2d)%5.1f %s",OUT_STR,(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u);
						}
						else
							sprintf(LCD_DISPLAY[0],"Water Cut(%2d)%5.1f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u);	//R215
					}
	
				}
			
				/* LCD_DISPLAY 3 */
				if ((DIAGNOSTICS_ERROR_CODE==0)||(MSVE.SUBPAGE%3>0))
				{
					if (REG_EMULSION_PHASE.val==0.0)
					{/* oil phase */
						Get_Unit(REG_TEMPERATURE_USER.class, REG_TEMPERATURE_USER.unit, u);
						
						if (RUSS)
						{
							Get_Russ_Line(20,OUT_STR,0);
							sprintf(LCD_DISPLAY[3],"%s  %5.1f%s",OUT_STR,REG_TEMPERATURE_USER.val, u);
						}
						else
							sprintf(LCD_DISPLAY[3],"Phase: Oil   %5.1f%s",REG_TEMPERATURE_USER.val, u); //R20
					}
					else if (REG_EMULSION_PHASE.val==1.0)
					{/* water phase */
						if (MSVE.SUBPAGE%3==1)
						{
							Get_Unit(REG_TEMPERATURE_USER.class, REG_TEMPERATURE_USER.unit, u);
							if (RUSS)
							{
								Get_Russ_Line(21,OUT_STR,0);
								sprintf(LCD_DISPLAY[3],"%s %7.1f%s",OUT_STR,REG_TEMPERATURE_USER.val, u);
							}
							else
								sprintf(LCD_DISPLAY[3],"Phase: Water %5.1f%s",REG_TEMPERATURE_USER.val, u); //R21
						}
						else if ((MSVE.SUBPAGE%3==2)&&((ANALYZER_MODE.val&0xFF)!=SUB_MID))  /*Don't show salinity for Mid-cut RS*/
						{
							Get_Unit(REG_SALINITY.class, REG_SALINITY.unit, u);
							
							if (RUSS)
							{
								if (HSALT.ENABLED.val==TRUE)
								{
									Get_Russ_Line(22,OUT_STR,0);
									sprintf(LCD_DISPLAY[3],"%s: %4.1f%s",OUT_STR,REG_SALINITY.val, u);
								}
								else
								{
									Get_Russ_Line(23,OUT_STR,0);
									sprintf(LCD_DISPLAY[3],"%s %4.1f%s",OUT_STR,REG_SALINITY.val, u);
								}
							}
							else
							{
								if (HSALT.ENABLED.val==TRUE)
									sprintf(LCD_DISPLAY[3],"HSALT:       %5.2f %s",REG_SALINITY.val, u);	//R22
								else
									sprintf(LCD_DISPLAY[3],"Salinity:    %5.2f %s",REG_SALINITY.val, u);	//R23
							}
						}
					}
					else
					{/* phase error */
						Get_Unit(REG_TEMPERATURE_USER.class, REG_TEMPERATURE_USER.unit, u);
						if (RUSS)
						{
							Get_Russ_Line(24,OUT_STR,0);
							sprintf(LCD_DISPLAY[3],"%s %5.1f%s",OUT_STR,REG_TEMPERATURE_USER.val, u);
						}
						else
							sprintf(LCD_DISPLAY[3],"Phase: Error %5.1f%s",REG_TEMPERATURE_USER.val, u);	//R24
					}
				}
				else
					strcpy(LCD_DISPLAY[3], E_STRING);
			}
			else
			{/* normal mode */
				MSVE.tmpi[0] = 0;
	            
				/* LCD_DISPLAY 2 */
				if (REG_EMULSION_PHASE.val==0.0)		/* oil phase */
				{
					sprintf(ENG_STR,"Oil");	//R25
					Print_To_LCD(2, 25, ENG_STR, 0);
				}
				else if (REG_EMULSION_PHASE.val==1.0)	/* water phase */
				{
					sprintf(ENG_STR,"Water");	//R69
					Print_To_LCD(2, 69, ENG_STR, 0);
				}
				else                                    /* phase error */
				{
					sprintf(ENG_STR,"Phase Logic Error");	//R26
					Print_To_LCD(2, 26, ENG_STR, 0);
				}
				
				Get_Unit(REG_WATERCUT.class, REG_WATERCUT.unit, u);
				
				/* LCD_DISPLAY 0 */
				if (REG_EMULSION_PHASE.val==2.0)
				{
					if (RUSS)
						sprintf(LCD_DISPLAY[0],"BC (%2d)        ?.? %s",(int)REG_STREAM_SELECT.val, u); //R215
					else
						sprintf(LCD_DISPLAY[0],"Water Cut(%2d)  ?.? %s",(int)REG_STREAM_SELECT.val, u); //R215
					
				}
				else
				{
					min = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmin, 0, 0);
					max = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmax, 0, 0);
					
					if (RUSS)
					{
						if (f_compare(&max, 20.0, 0)<=0)
							sprintf(LCD_DISPLAY[0],"BC (%2d)      %5.2f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); //R215
						else
							sprintf(LCD_DISPLAY[0],"BC (%2d)      %5.1f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); //R215
					}
					else
					{
						if (f_compare(&max, 20.0, 0)<=0)
							sprintf(LCD_DISPLAY[0],"Water Cut(%2d)%5.2f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); //R215
						else
							sprintf(LCD_DISPLAY[0],"Water Cut(%2d)%5.1f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); //R215
					}
				}
	
				/* LCD_DISPLAY 1 & 3 */
				Get_Unit(REG_TEMPERATURE_USER.class, REG_TEMPERATURE_USER.unit, u);
				if (RUSS)
				{
					Get_Russ_Line(28,OUT_STR,0);
					sprintf(LCD_DISPLAY[1],"%s  %5.0f%s",OUT_STR, REG_TEMPERATURE_USER.val, u);
				}
				else
					sprintf(LCD_DISPLAY[1],"Temperature  %5.0f%s", REG_TEMPERATURE_USER.val, u);	//R28
				
				sprintf(ENG_STR,"Phase Dynamics, Inc.");	//R87
				Print_To_LCD(3, 87, ENG_STR, -1);
			}

			break;
		}
	}
}

/****************************************************************************/
/* MENU PAGE STREAM SELECT													*/
/*                                                                          */
/* Description: Displays the stream select page.                            */
/*                                                                          */
/* Notes:       Edits the REG_STREAM_SELECT variable                        */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_STREAM_SELECT(void)
{
	if (RUSS)
	{
		Get_Russ_Line(29,OUT_STR2,0);
		sprintf(OUT_STR,"%s ",OUT_STR2);
		MSVE_Data_Input("", OUT_STR, 2, 0, 0, 0, &REG_STREAM_SELECT, 0, 0);
	}
	else
		MSVE_Data_Input("", "Stream ", 2, 0, 0, 0, &REG_STREAM_SELECT, 0, 0); //R29
}

/****************************************************************************/
/* MENU PAGE PHASE HOLDOVER													*/
/*                                                                          */
/* Description: Displays phase holdover screen                              */
/*                                                                          */
/* Notes:       Only display for CCM or FULLCUT, Edits REG_PHASE_HOLD_CYCLES*/
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_PHASE_HOLDOVER(void)
{   	
	if (((ANALYZER_MODE.val&0xFF)!=SUB_CCM) && ((ANALYZER_MODE.val&0xFF)!=SUB_FULL))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(30,OUT_STR,0);
			MSVE_Data_Input("",OUT_STR, 2, 0, 0, 0, &REG_PHASE_HOLD_CYCLES, 0, 0);
		}
		else
			MSVE_Data_Input("", "HoldCyc", 2, 0, 0, 0, &REG_PHASE_HOLD_CYCLES, 0, 0);  //R30
	}
}  

/****************************************************************************/
/* MENU PAGE NUMSAMP														*/
/*                                                                          */
/* Description: Displays number of samples(?) screen                        */
/*                                                                          */
/* Notes:       Edits REG_NUM_SAMP                                          */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_NUMSAMP(void)
{
	if (RUSS)
	{
		Get_Russ_Line(31,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 3, 0, 0, 0, &REG_NUM_SAMP, 0, 0);
	}
	else
		MSVE_Data_Input("", "NumSamp", 3, 0, 0, 0, &REG_NUM_SAMP, 0, 0);	//R31
}

/****************************************************************************/
/* MENU PAGE ALYESKA PLC DATA ADDR											*/
/*                                                                          */
/* Description: Displays Alyeska destination address screen.                */
/*                                                                          */
/* Notes:       only show for ALYESKA mode, Edit ALYESKA.DESTINATION_ADDRESS*/
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_ALYESKA_PLC_DATA_ADDR(void)
{
	if (!ALYESKA.ENABLED || RUSS)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
		MSVE_Data_Input("", "Address", 5, 0, 0, 0, &ALYESKA.DESTINATION_ADDRESS, 0, 0); //R32
}

/****************************************************************************/
/* MENU PAGE SALINITY														*/
/*                                                                          */
/* Description: Displays the Salinity screen                                */
/*                                                                          */
/* Notes:       Skip this for LOWCUT and MIDCUT, Edit REG_SALINITY          */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_SALINITY(void)
{
	if (((ANALYZER_MODE.val&0xFF)==SUB_LOW) || ((ANALYZER_MODE.val&0xFF)==SUB_MID))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(33,OUT_STR2,0);
			sprintf(OUT_STR,"%s   ",OUT_STR2);
			MSVE_Data_Input("", OUT_STR, 5, 2, 0, 0, &REG_SALINITY, 0, 0);
		}
		else	
			MSVE_Data_Input("", "Salt   ", 5, 2, 0, 0, &REG_SALINITY, 0, 0);	//R33
	}
}

/**************** Add option to force phase on each stream RS ***************/ 
/****************************************************************************/
/* MENU FORCE PHASE 														*/
/*                                                                          */
/* Description: Force phase screen                                          */
/*                                                                          */
/* Notes:       CCM and FULLCUT only, Edit: WATER_PHASE_ONLY, OIL_PHASE_ONLY*/
/*                                                                          */
/****************************************************************************/ 
void MENU_FORCE_PHASE(void)
{
	unsigned int i; //stream number (for bug fix)
	if (((ANALYZER_MODE.val&0xFF)!=SUB_CCM) && ((ANALYZER_MODE.val&0xFF)!=SUB_FULL))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (MSVE.FRESH)
		{/* Display screen */
			MSVE.FRESH = FALSE;
			
			sprintf(ENG_STR,"    Force Phase:");	//R34
			Print_To_LCD(0, 34, ENG_STR, 4);
			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			
			if (OIL_PHASE_ONLY.val == TRUE)
				MSVE.tmpi[0] = 1; 
			else if (WATER_PHASE_ONLY.val == TRUE)
				MSVE.tmpi[0] = 2; 
			else 
				MSVE.tmpi[0] = 0; 
		}

		switch(MSVE.tmpi[0])
		{/* Value handler */
			case 1:		
				sprintf(ENG_STR,"        OIL");	//R25	
				Print_To_LCD(3, 25, ENG_STR, 7);		
				break;
			case 2:		
				sprintf(ENG_STR,"        WATER");	//R69				
				Print_To_LCD(3, 69, ENG_STR, 8);
				break;
			default:	
				MSVE.tmpi[0]=0; 
				sprintf(ENG_STR,"        AUTO");	//R35
				Print_To_LCD(3, 35, ENG_STR, 8);
				break;
		}

		if (MSVE.SELECT)
		{/* SELECT - change value */
			MSVE.tmpi[0]++;
			
			if (MSVE.tmpi[0] > 2) 
				MSVE.tmpi[0] = 0;
		}
		else if (MSVE.VALUE)
		{/* VALUE - change value */
			MSVE.tmpi[0]--;
			
			if (MSVE.tmpi[0] < 0) 
				MSVE.tmpi[0] = 2;
		}

		if (MSVE.ENTER)
		{/* ENTER - accept value */
			if (MSVE.tmpi[0] == 1)  
			{   
				WATER_PHASE_ONLY.val = FALSE;
				OIL_PHASE_ONLY.val   = TRUE;	
			} 
			else if (MSVE.tmpi[0] == 2)  
			{
				OIL_PHASE_ONLY.val   = FALSE;
				WATER_PHASE_ONLY.val = TRUE;	
			} 
			else
			{
				OIL_PHASE_ONLY.val   = FALSE;
				WATER_PHASE_ONLY.val = FALSE; 		
			}   
			
			/// BUG FIX (4/28/2016) ///
			/* 	Stream table was not being updated with Force Phase values. The 
				firmware does not execute COIL vector functions unless the change
				happens via Modbus or HART. How silly. We'll just do it manually.	*/
			i = (int)round(REG_STREAM_SELECT.val,0) - 1.0; //get stream number
			OIL_PHASE_ONLY_ENABLE[i]  = OIL_PHASE_ONLY.val;
			WATER_PHASE_ONLY_ENABLE[i]= WATER_PHASE_ONLY.val;  
	
            /// BY DKOH FEB 22, 2021	
            Update_Flags_Goto_Next_Menu(1,0);
		}
	}
}
/**************** Add option to force phase on each stream RS ***************/ 

/****************************************************************************/
/* MENU PAGE T UNIT 														*/
/*                                                                          */
/* Description: Change temperature unit screen                              */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_T_UNIT(void)
{
	if (MSVE.FRESH)
	{/* Display screen */
		MSVE.FRESH = FALSE;
		
		sprintf(ENG_STR,"  Temperature Unit");	//R36
		Print_To_LCD(0, 36, ENG_STR, 4);
		
		MSVE.tmpi[4] = REG_TEMPERATURE_EXTERNAL.class;
		
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		if (RUSS)
		{	
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR, MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37
		
		MSVE.tmpi[3] = REG_TEMPERATURE_EXTERNAL.unit & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(46,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s :  %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(254,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
			
			Get_Russ_Line(38,OUT_STR,0);
			sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
		}
		else
		{
			sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
			sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38
		}
	}

	if (MSVE.ENTER)
	{/* ENTER - set units */
		REG_TEMPERATURE_EXTERNAL.unit = MSVE.tmpi[3]; 
		REG_TEMPERATURE_AVG.unit 	  = MSVE.tmpi[3];     /*RS*/
		
		Set_ASCII_Temp_Unit(&REG_TEMPERATURE_EXTERNAL);   
		Set_ASCII_Temp_Unit(&REG_TEMPERATURE_AVG);    /*RS*/
		Update_Flags_Goto_Next_Menu(1,0);
	}
	else if (MSVE.SELECT)
	{/* SELECT - get unit */
		if (MSVE.tmpi[4]!= c_not_classified) 
			MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else if (MSVE.VALUE)
	{/* VALUE - get unit */
		if (MSVE.tmpi[4]!= c_not_classified) 
			MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}  
	/*************LCD TEMPERATURE UNIT CONVERT C and F CONTROL IDEC -RS*********/   
	if (REG_TEMPERATURE_EXTERNAL.unit == u_temp_C)
		DIO_TEMP_C.val = TRUE;
	else
		DIO_TEMP_C.val = FALSE;	
	/*************LCD TEMPERATURE UNIT CONVERT CONTROL C and F IDEC -RS***********/
}

/****************************************************************************/
/* MENU PAGE T ADJ															*/
/*                                                                          */
/* Description: Temperature user adjust screen                              */
/*                                                                          */
/* Notes:       REG_TEMPERATURE_USER_ADJUST                                 */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_T_ADJ(void)
{
	if (RUSS)
	{
		Get_Russ_Line(39,OUT_STR2,0);
		sprintf(OUT_STR,"%s ",OUT_STR2);
		MSVE_Data_Input("", OUT_STR, 6, 2, 1, 0, &REG_TEMPERATURE_USER_ADJUST, 0, 0);
	}	
	else
		MSVE_Data_Input("", "TAdj   ", 6, 2, 1, 0, &REG_TEMPERATURE_USER_ADJUST, 0, 0);	//R39
}

/****************************************************************************/
/* MENU PAGE T AVG															*/
/*                                                                          */
/* Description: Average temperature screen                                  */
/*                                                                          */
/* Notes:       ENTER resets the average                                    */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_T_AVG(void)
{   
	char	u[8];
	
	if (MSVE.FRESH)
	{
		sprintf(ENG_STR,"Average Temperature");	//R40
		Print_To_LCD(0, 40, ENG_STR, -1);
		sprintf(LCD_DISPLAY[1],"");   
		Get_Unit(REG_TEMPERATURE_AVG.class, REG_TEMPERATURE_AVG.unit, u);   
		sprintf(LCD_DISPLAY[2]," %5.1f%s",REG_TEMPERATURE_AVG.val, u); 
		sprintf(ENG_STR,"ENTER = RESET");	//R41
		Print_To_LCD(3, 41, ENG_STR, -1);
	}  
	if (MSVE.ENTER)
		AVG_RESET.val=TRUE;		
}

/****************************************************************************/
/* MENU PAGE CHPW WPROT														*/
/*                                                                          */
/* Description: Changes the password for write protection.                  */
/*                                                                          */
/* Notes:       tmpv stores the password into REG_PW[2]                     */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_CHPW_WPROT(void)
{
	if (MSVE.MODE_WPROT)
	{/* If locked, skip this screen */
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		return;
	}

	if (MSVE.FRESH)
	{/* Display screen */
		MSVE.tmpv.class 		= c_unknown;
		MSVE.tmpv.unit			= u_generic_unknown;
		MSVE.tmpv.calc_unit 	= u_generic_unknown;
		MSVE.tmpv.val 			= 0;
		MSVE.tmpv.calc_val 		= 0;
		MSVE.tmpv.bound_hi_set 	= REG_LOCK[2].bound_hi_set;
		MSVE.tmpv.bound_lo_set 	= REG_LOCK[2].bound_lo_set;
		
		if (RUSS)
		{
			Get_Russ_Line(42,OUT_STR2,0);
			sprintf (MSVE.str[3], OUT_STR2);
		}
		else
			sprintf (MSVE.str[3], " Change WP Password");	//R42
	}

	/* Go to password change screen */
	if (RUSS)
	{
		Get_Russ_Line(46,OUT_STR2,0);
		sprintf(OUT_STR,"%s    ",OUT_STR2);
		MSVE_Data_Input(MSVE.str[3], OUT_STR, 5, 0, 0, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "CODE   ", 5, 0, 0, 0, &MSVE.tmpv, 1, 1);	//R46

	if (MSVE.ENTER)
	{/* ENTER - accept password */
		REG_PW[2] = MSVE.tmpv.val;
		
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

/****************************************************************************/
/* MENU PAGE CHPW TECH MODE													*/
/*                                                                          */
/* Description: Changes the password for TECH mode                          */
/*                                                                          */
/* Notes:       tmpv stores the password into REG_PW[3]                     */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_CHPW_TECH_MODE(void)
{
	if (MSVE.MODE_WPROT)
	{/* If locked, skip this screen */
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		return;
	}

	if (MSVE.FRESH)
	{/* Display screen */
		MSVE.tmpv.class			= c_unknown;
		MSVE.tmpv.unit 			= u_generic_unknown;
		MSVE.tmpv.calc_unit 	= u_generic_unknown;
		MSVE.tmpv.val 			= 0;
		MSVE.tmpv.calc_val 		= 0;
		MSVE.tmpv.bound_hi_set 	= REG_LOCK[3].bound_hi_set;
		MSVE.tmpv.bound_lo_set 	= REG_LOCK[3].bound_lo_set;
		
		if (RUSS)
		{
			Get_Russ_Line(43,OUT_STR2,0);
			sprintf (MSVE.str[3], OUT_STR2);
		}
		else
			sprintf (MSVE.str[3], "Change TECH Password");	//R43
	}

	/* Go to change password screen */
	if (RUSS)
	{
		Get_Russ_Line(46,OUT_STR2,0);
		sprintf(OUT_STR,"%s    ",OUT_STR2);
		MSVE_Data_Input(MSVE.str[3], OUT_STR, 5, 0, 0, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "CODE   ", 5, 0, 0, 0, &MSVE.tmpv, 1, 1);	//R46

	if (MSVE.ENTER)
	{/* ENTER - accept change */
		REG_PW[3] = MSVE.tmpv.val;
		
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

/****************************************************************************/
/* MENU PAGE UNLOCK WPROT													*/
/*                                                                          */
/* Description: Unlocks write protection                                    */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_UNLOCK_WPROT(void)
{
	if (!MSVE.MODE_WPROT)
	{/* if locked, skip this screen */
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (LOCKOUT)
		{/* locked */
			sprintf(ENG_STR,"     LOCKED OUT");	//R44
			Print_To_LCD(0, 44, ENG_STR, 3);
			sprintf(LCD_DISPLAY[1],"");
			sprintf(ENG_STR,"   Please Wait...");	//R45
			Print_To_LCD(2, 45, ENG_STR, 4);
			sprintf(LCD_DISPLAY[3],"");
		}
		else
		{/* show screen - unlock */
			if (RUSS)
			{
				Get_Russ_Line(46,OUT_STR2,0);
				sprintf(OUT_STR,"%s    ",OUT_STR2);
				MSVE_Data_Input("", OUT_STR, 5, 0, 0, 0, &REG_LOCK[2], 1, 1);
			}
			else
				MSVE_Data_Input("", "CODE   ", 5, 0, 0, 0, &REG_LOCK[2], 1, 1);	//R46

			if (MSVE.ENTER)
			{
				MSVE.FRESH 			= TRUE;
				MSVE.CURSOR_ENABLED	= FALSE;
				MSVE.CURSOR_ROW		= 0;
				MSVE.CURSOR_COL		= 0;

				if (!DIO_LOCK[2].val)
				{
					MSVE.DIR		= 0;
					MSVE.CNT		= 0;
					MSVE.MENU_CNT	= 0;
					MSVE.SELECT_CNT	= 0;
					MSVE.VALUE_CNT	= 0;
					MSVE.PAGE		= 1;
					MSVE.SUBPAGE	= 0;
					MSVE.MENU_TRAP	= FALSE;
					MSVE.DIR_CHANGE	= FALSE;
				}
			}
		}
	}
}

/****************************************************************************/
/* MENU PAGE GOTO TECH MODE													*/
/*                                                                          */
/* Description: Unlock tech mode                                            */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_GOTO_TECH_MODE(void)
{
	if (LOCKOUT)
	{/* locked */
		sprintf(ENG_STR,"     LOCKED OUT");	//R44
		Print_To_LCD(0, 44, ENG_STR, 2);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(ENG_STR,"   Please Wait...");	//R45
		Print_To_LCD(2, 45, ENG_STR, 5);
		sprintf(LCD_DISPLAY[3],"");
	}
	else
	{/* Default locked, show screen, unlock */
		if (MSVE.FRESH)
			DIO_LOCK[3].val = TRUE;
		
		if (RUSS)
		{
			Get_Russ_Line(46,OUT_STR2,0);
			sprintf(OUT_STR,"%s    ",OUT_STR2);
			MSVE_Data_Input("", OUT_STR, 5, 0, 0, 0, &REG_LOCK[3], 1, 1);
		}
		else
			MSVE_Data_Input("", "CODE   ", 5, 0, 0, 0, &REG_LOCK[3], 1, 1);	//R46

		if (MSVE.ENTER)
		{
			MSVE.FRESH 			= TRUE;
			MSVE.CURSOR_ENABLED	= FALSE;
			MSVE.CURSOR_ROW		= 0;
			MSVE.CURSOR_COL		= 0;
		}

		if (!DIO_LOCK[3].val)
		{
			MSVE.DIR			= 0;
			MSVE.CNT			= 0;
			MSVE.MENU_CNT		= 0;
			MSVE.SELECT_CNT		= 0;
			MSVE.VALUE_CNT		= 0;
			MSVE.PAGE			= 1;
			MSVE.SUBPAGE		= 0;
			MSVE.MENU_TRAP		= FALSE;
			MSVE.DIR_CHANGE		= FALSE;
		}
	}
}

/************************** Low Salt Mode RS ********************************/  
/****************************************************************************/
/* MENU PAGE LOW SALT MODE													*/
/*                                                                          */
/* Description: [En|Dis]able Low Salt Mode Screen                           */
/*                                                                          */
/* Notes:       Skip for LOWCUT and MIDCUT                                  */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_LOW_SALT_MODE(void)    
{
	if (((ANALYZER_MODE.val&0xFF)==SUB_LOW) || ((ANALYZER_MODE.val&0xFF)==SUB_MID))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (MSVE.FRESH)
		{/* Display page */
			MSVE.FRESH		= FALSE;
			
			sprintf(ENG_STR," Low Salinity Mode");	//R47
			Print_To_LCD(0, 47, ENG_STR, -1);
			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			
			MSVE.tmpi[0]	= LOW_SALT_MODE;
		}

		switch(MSVE.tmpi[0])
		{/* value handler */
			case 1:		
				sprintf(ENG_STR,"      ENABLED");	//R48
				Print_To_LCD(3, 47, ENG_STR, 6);
				break;	
			default:	
				MSVE.tmpi[0]=0; 
				sprintf(ENG_STR,"      DISABLED");	//R49
				Print_To_LCD(3, 47, ENG_STR, 5);
				break;
		}

		if (MSVE.SELECT)
		{/* SELECT - change value */
			MSVE.tmpi[0]++;
			
			if (MSVE.tmpi[0] > 1) 
				MSVE.tmpi[0] = 0;
		}
		else if (MSVE.VALUE)
		{/* VALUE - change value */
			MSVE.tmpi[0]--;
			
			if (MSVE.tmpi[0] < 0) 
				MSVE.tmpi[0] = 1;
		}

		if (MSVE.ENTER)
		{/* ENTER - accept changes */
			LOW_SALT_MODE = MSVE.tmpi[0];
			
			Update_Flags_Goto_Next_Menu(1,0);
		}
	}
}  

/****************************************************************************/
/* MENU PAGE LOW SALT THRESHOLD												*/
/*                                                                          */
/* Description: Edit low salt threshold screen                              */
/*                                                                          */
/* Notes:       Skip if LOWSALT is disabled, Edit REG_LOWSALT_THRESHOLD     */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_LOW_SALT_THRESHOLD(void)    
{	
	if (!LOW_SALT_MODE)
	{/* skip */
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(50,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_LOWSALT_THRESHOLD, 0, 0);
	}
	else
		MSVE_Data_Input("", "Threshold", 8, 3, 0, 0, &REG_LOWSALT_THRESHOLD, 0, 0);		//R50
	
	
}
/************************** Low Salt Mode RS ********************************/  

/****************************************************************************/
/* MENU PAGE OIL ADJ														*/
/*                                                                          */
/* Description: Oil adjust screen                                           */
/*                                                                          */
/* Notes:       Skip on HIGHCUT, Edit REG_OIL_ADJ                           */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_OIL_ADJ(void)
{
	float min,max;	/* min value; max value */
	
	if ((ANALYZER_MODE.val&0xFF)==SUB_HIGH)
	{/* skip */
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		min = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmin, 0, 0);
		max = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmin, 0, 0);
		max = fabs(max-min);
		
		
		if(RUSS)
		{
			Get_Russ_Line(51,OUT_STR,0);
			if (f_compare(&max, 20.0, 0)>0)
				MSVE_Data_Input("", OUT_STR, 6, 1, 1, 0, &REG_OIL_ADJ, 0, 0);	//R51
			else
				MSVE_Data_Input("", OUT_STR, 7, 2, 1, 0, &REG_OIL_ADJ, 0, 0);	//R51
		}
		else
		{
			if (f_compare(&max, 20.0, 0)>0)
				MSVE_Data_Input("", "OAdj   ", 6, 1, 1, 0, &REG_OIL_ADJ, 0, 0);	//R51
			else
				MSVE_Data_Input("", "OAdj   ", 7, 2, 1, 0, &REG_OIL_ADJ, 0, 0);	//R51
		}
		
	}
}

/****************************************************************************/
/* MENU PAGE WATER ADJ														*/
/*                                                                          */
/* Description: Water adjust screen                                         */
/*                                                                          */
/* Notes:       Skip on LOWCUT and MIDCUT                                   */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_WATER_ADJ(void)
{
	if (((ANALYZER_MODE.val&0xFF)==SUB_LOW) || ((ANALYZER_MODE.val&0xFF)==SUB_MID))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(52,OUT_STR,0);
			MSVE_Data_Input("",OUT_STR, 6, 1, 1, 0, &REG_WATER_ADJ, 0, 0);
		}
		else
			MSVE_Data_Input("", "WAdj   ", 6, 1, 1, 0, &REG_WATER_ADJ, 0, 0);	//R52
	}
}

/****************************************************************************/
/* MENU PAGE ALARM LO														*/
/*                                                                          */
/* Description: Alarm Lo screen                                             */
/*                                                                          */
/* Notes:       Edits REG_WATERCUT_ALARM_LO                                 */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_ALARM_LO(void)
{
	if (RUSS)
	{
		Get_Russ_Line(53,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 6, 1, 1, 0, &REG_WATERCUT_ALARM_LO, 0, 0);
	}
	else
		MSVE_Data_Input("", "WLo  ", 6, 1, 1, 0, &REG_WATERCUT_ALARM_LO, 0, 0);	//R53
}

/****************************************************************************/
/* MENU PAGE ALARM HI														*/
/*                                                                          */
/* Description: Alarm Hi Screen                                             */
/*                                                                          */
/* Notes:       Edits REG_WATERCUT_ALARM_HI                                 */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_ALARM_HI(void)
{
	MSVE_Data_Input("", "WHi  ", 6, 1, 1, 0, &REG_WATERCUT_ALARM_HI, 0, 0);	//R54
}

/****************************************************************************/
/* MENU PAGE WATER IDX														*/
/*                                                                          */
/* Description: Water index screen                                          */
/*                                                                          */
/* Notes:       Skip on LOWCUT and MIDCUT, Edits REG_WATER_INDEX            */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_WATER_IDX(void)
{
	if (((ANALYZER_MODE.val&0xFF)==SUB_LOW) || ((ANALYZER_MODE.val&0xFF)==SUB_MID))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(55,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 9, 3, 1, 0, &REG_WATER_INDEX, 0, 0);
		}
		else
			MSVE_Data_Input("", "Widx   ", 9, 3, 1, 0, &REG_WATER_INDEX, 0, 0);	//R55
	}
}

/****************************************************************************/
/* MENU PAGE WATER LO														*/
/*                                                                          */
/* Description: Water Frequency Lo screen                                   */
/*                                                                          */
/* Notes:       Skip on LOWCUT and MIDCUT, Edits REG_FREQ_WATER_LO          */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_WATER_LO(void)
{
	if (((ANALYZER_MODE.val&0xFF)==SUB_LOW) || ((ANALYZER_MODE.val&0xFF)==SUB_MID))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(56,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_FREQ_WATER_LO, 0, 0);
		}
		else
			MSVE_Data_Input("", "WFreqLo", 8, 3, 0, 0, &REG_FREQ_WATER_LO, 0, 0);	//R56 //R_UHOH too long
	}
}

/****************************************************************************/
/* MENU PAGE WATER HI														*/
/*                                                                          */
/* Description: Water Frequency Hi screen                                   */
/*                                                                          */
/* Notes:       Skip on LOWCUT and MIDCUT, Edits REG_FREQ_WATER_HI          */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_WATER_HI(void)
{
	if (((ANALYZER_MODE.val&0xFF)==SUB_LOW) || ((ANALYZER_MODE.val&0xFF)==SUB_MID))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(57,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_FREQ_WATER_HI, 0, 0);
		}
		else
			MSVE_Data_Input("", "WFreqHi", 8, 3, 0, 0, &REG_FREQ_WATER_HI, 0, 0);	//R57 //R_UHOH too long
	}
}

/****************************************************************************/
/* MENU PAGE OIL IDX														*/
/*                                                                          */
/* Description: Oil index screen                                            */
/*                                                                          */
/* Notes:       Skip on HIGHCUT, Edits REG_OIL_INDEX                        */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_OIL_IDX(void)
{
	if ((ANALYZER_MODE.val&0xFF)==SUB_HIGH)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(58,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 9, 3, 1, 0, &REG_OIL_INDEX, 0, 0);
		}
		else
			MSVE_Data_Input("", "Oidx   ", 9, 3, 1, 0, &REG_OIL_INDEX, 0, 0);	//R58
	}
}

/****************************************************************************/
/* MENU PAGE OIL LO															*/
/*                                                                          */
/* Description: Oil Frequency Lo screen                                     */
/*                                                                          */
/* Notes:       Skip on HIGHCUT, Edits REG_FREQ_OIL_LO                      */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_OIL_LO(void)
{
	if ((ANALYZER_MODE.val&0xFF)==SUB_HIGH)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(59,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_FREQ_OIL_LO, 0, 0);
		}
		else
			MSVE_Data_Input("", "OFreqLo", 8, 3, 0, 0, &REG_FREQ_OIL_LO, 0, 0);	//R59
	}
}

/****************************************************************************/
/* MENU PAGE OIL HI															*/
/*                                                                          */
/* Description: Oil Frequency Hi screen                                     */
/*                                                                          */
/* Notes:       Skip on HIGHCUT, Edits REG_FREQ_OIL_HI                      */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_OIL_HI(void)
{
	if ((ANALYZER_MODE.val&0xFF)==SUB_HIGH)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(60,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_FREQ_OIL_HI, 0, 0);
		}
		else
			MSVE_Data_Input("", "OFreqHi", 8, 3, 0, 0, &REG_FREQ_OIL_HI, 0, 0);	//R60
	}
}

/****************************************************************************/
/* MENU PAGE OIL P1															*/
/*                                                                          */
/* Description: Oil P1 Page                                                 */
/*                                                                          */
/* Notes:       Edits OIL_P1                                                */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_OIL_P1(void)
{
	if (RUSS)
	{
		Get_Russ_Line(61,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 10, 4, 1, 0, &OIL_P1, 0, 0);
	}
	else
		MSVE_Data_Input("", "OP1", 10, 4, 1, 0, &OIL_P1, 0, 0);	//R61
}

/****************************************************************************/
/* MENU PAGE OIL P0															*/
/*                                                                          */
/* Description: Oil P0 Page                                                 */
/*                                                                          */
/* Notes:       Edits Oil_P0                                                */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_OIL_P0(void)
{
	if (RUSS)
	{
		Get_Russ_Line(62,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 10, 4, 1, 0, &OIL_P0, 0, 0);
	}
	else	
		MSVE_Data_Input("", "OP0", 10, 4, 1, 0, &OIL_P0, 0, 0);	//R62
}

/****************************************************************************/
/* MENU PAGE CAPTURE OIL													*/
/*                                                                          */
/* Description: Controls the capture oil screen.  Calls Capture_Watercut_Oil*/
/*                                                                          */
/* Notes:       Skip HIGHCUT			                                    */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_CAPTURE_OIL(void)
{
	if ((ANALYZER_MODE.val&0xFF)==SUB_HIGH)
	{/* HIGHCUT skip */
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (REG_EMULSION_PHASE.val!=0.0)
		{/* water phase */
			sprintf(ENG_STR,"Capture (Oil Phase)");	//R63
			Print_To_LCD(0, 63, ENG_STR, -1);
			
			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			sprintf(ENG_STR,"WRONG EMULSION PHASE");	//R64
			Print_To_LCD(3, 64, ENG_STR, -1);
		}
		else
		{/* oil phase */
			if (MSVE.FRESH)
			{
				MSVE.tmpi[0] = 0;
				MSVE.FRESH   = FALSE;
				
				sprintf(ENG_STR,"Capture (Oil Phase)");	//R63
				Print_To_LCD(0, 63, ENG_STR, -1);
				
				sprintf(LCD_DISPLAY[1],"");    
				sprintf(LCD_DISPLAY[1],"");        				
				sprintf(ENG_STR,"ENTER TO START"); //R65       
				Print_To_LCD(2, 65, ENG_STR, -1);
				
				sprintf(LCD_DISPLAY[3],"%02x:%02x       %02x/%02x/%02x",Cap_Oil.Time_HH,Cap_Oil.Time_MM,Cap_Oil.Time_MONTH,Cap_Oil.Time_DAY,Cap_Oil.Time_YEAR);
			}	//to-do: change date format for Russian translation: "DD.MM.YY"
	        
	        /*********new salt cal routine manual stop RS**********/
			if (MSVE.ENTER)
				MSVE.tmpi[0]++;  
			
			if (MSVE.tmpi[0]==1)
            {/* Start oil capture */
            	MSVE.tmpi[0]    = 2;	/* oil capture running */
				DIO_CAP_OIL.val = 0;	/* erase */
				
				Capture_Watercut_Oil(0);
				
				DIO_CAP_OIL.val = 1;	/* capture */
				
				Capture_Watercut_Oil(0);    
				sprintf(ENG_STR,"ENTER TO STOP"); //R68
				Print_To_LCD(2, 68, ENG_STR, -1);
				
				sprintf(ENG_STR,"Sampling...");	//R66
				Print_To_LCD(3, 66, ENG_STR, -1);
			}   						
            
            if (MSVE.tmpi[0]==3)
            {/* stop oil capture */
            	CAP_OIL_STOP.val = TRUE;
            	MSVE.tmpi[0] = 4;	
            }
            /*********new salt cal routine manual stop RS**********/
	
			if ((DIO_CAP_OIL.val == 0)&& (MSVE.tmpi[0]==4))		/*new salt cal routine manual stop RS*/    
			{/* save after sampling */
				sprintf(LCD_DISPLAY[3],"%02x:%02x       %02x/%02x/%02x",Cap_Oil.Time_HH,Cap_Oil.Time_MM,Cap_Oil.Time_MONTH,Cap_Oil.Time_DAY,Cap_Oil.Time_YEAR);
				Update_Flags_Goto_Next_Menu(1,0);       /*new salt cal routine manual stop, auto go to next screen RS*/
			}	//to-do: change date format for Russian translation: "DD.MM.YY"
		}
	}
}

/****************************************************************************/
/* MENU PAGE CAPTURE WATER													*/
/*                                                                          */
/* Description: Controls the capture watercut screen.                       */
/*                                                                          */
/* Notes:       Skips LOWCUT and MIDCUT; calls Capture_Watercut_Water       */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_CAPTURE_WATER(void)
{
	if (((ANALYZER_MODE.val&0xFF)==SUB_LOW) || ((ANALYZER_MODE.val&0xFF)==SUB_MID))
	{/* skip LOWCUT and MIDCUT */
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (REG_EMULSION_PHASE.val!=1.0)
		{/* oil phase */
			sprintf(ENG_STR,"Capture(Water Phase)");	//R67
			Print_To_LCD(0, 67, ENG_STR, -1);
			
			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			sprintf(ENG_STR,"WRONG EMULSION PHASE");	//R64
			Print_To_LCD(3, 64, ENG_STR, -1);
		}
		else
		{/* water phase */
			if (MSVE.FRESH)
			{
				MSVE.tmpi[0] = 0;
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"Capture(Water Phase)");	//R67
				Print_To_LCD(0, 67, ENG_STR, -1);  
				sprintf(LCD_DISPLAY[1],"");                      /*new salt cal routine manual stop RS*/
				sprintf(ENG_STR,"ENTER TO START");  //R65        /*new salt cal routine manual stop RS*/
				Print_To_LCD(2, 65, ENG_STR, -1); 
				
				sprintf(LCD_DISPLAY[3],"%02x:%02x       %02x/%02x/%02x",Cap_Water.Time_HH,Cap_Water.Time_MM,Cap_Water.Time_MONTH,Cap_Water.Time_DAY,Cap_Water.Time_YEAR);
			}

            /******new salt cal routine manual stop RS**********/ 
			if (MSVE.ENTER)
				MSVE.tmpi[0]++;   
			
			if (MSVE.tmpi[0]==1)
            {/* Start capture */
            	MSVE.tmpi[0]      = 2;
            	DIO_CAP_WATER.val = 0;		/* erase */
				
				Capture_Watercut_Water(0);
				
				DIO_CAP_WATER.val = 1;		/* capture */
				
				Capture_Watercut_Water(0);    
				sprintf(ENG_STR,"ENTER TO STOP"); //R68
				Print_To_LCD(2, 68, ENG_STR, -1); 
				
				sprintf(ENG_STR,"Sampling...");	//R66
				Print_To_LCD(3, 66, ENG_STR, -1); 
            }
            
			if (MSVE.tmpi[0]==3)
            {/* stop capture */
            	CAP_WATER_STOP.val = TRUE;
            	MSVE.tmpi[0] = 4;	
            }
            /*********new salt cal routine manual stop RS**********/
            
			if ((DIO_CAP_WATER.val == 0)&& (MSVE.tmpi[0]==4)) /*new salt cal routine manual stop RS*/
			{/* save after sampling */
				sprintf(LCD_DISPLAY[3],"%02x:%02x       %02x/%02x/%02x",Cap_Water.Time_HH,Cap_Water.Time_MM,Cap_Water.Time_MONTH,Cap_Water.Time_DAY,Cap_Water.Time_YEAR);
				Update_Flags_Goto_Next_Menu(1,0);       /*new salt cal routine manual stop, auto go to next screen RS*/
			}
		}
	}
}

/****************************************************************************/
/* MENU PAGE CAL OIL														*/
/*                                                                          */
/* Description: Oil Calibration page                                        */
/*                                                                          */
/* Arguments: void                                                          */
/*                                                                          */
/* Returns:   void                                                          */
/*                                                                          */
/* Notes:     Skips HIGHCUT; Edits REG_CAL_OIL                              */
/*                                                                          */
/****************************************************************************/
void MENU_PAGE_CAL_OIL(void)
{
	if ((ANALYZER_MODE.val&0xFF)==SUB_HIGH)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(25,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 6, 2, 0, 0, &REG_CAL_OIL, 0, 0);
		}
		else
			MSVE_Data_Input("", "Oil", 6, 2, 0, 0, &REG_CAL_OIL, 0, 0); //R25
	}
}

/****************************************************************************/
void MENU_PAGE_CAL_WATER(void)
{
	if (((ANALYZER_MODE.val&0xFF)==SUB_LOW) || ((ANALYZER_MODE.val&0xFF)==SUB_MID))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(69,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 6, 2, 0, 0, &REG_CAL_WATER, 0, 0);	
		}
		else
			MSVE_Data_Input("", "Water", 6, 2, 0, 0, &REG_CAL_WATER, 0, 0);	//R69
	}
}

/****************************************************************************/
void MENU_PAGE_WATERCUT_RAW(void)
{
	char u[8];
	float t;
	t = REG_WATERCUT.base_val;
	Get_Unit(REG_WATERCUT.class, REG_WATERCUT.unit, u);
	if (RUSS)
		sprintf(LCD_DISPLAY[0],"BC :%8.4f %s",t, u);
	else
		sprintf(LCD_DISPLAY[0],"WC :%8.4f %s",t, u);	//215 + :
	
	if (RUSS)
	{
		Get_Russ_Line(384,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%8.4f %s",OUT_STR,REG_WATERCUT_RAW, u);
	}
	else
		sprintf(LCD_DISPLAY[1],"RWC:%8.4f %s",REG_WATERCUT_RAW, u); //R384
	
	Get_Unit(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_EXTERNAL.unit, u);
	sprintf(LCD_DISPLAY[2],"T  :%8.2f %s",REG_TEMPERATURE_EXTERNAL.val,u);	
	Get_Unit(REG_VREF[OSC_OIL_CALC].class, REG_VREF[OSC_OIL_CALC].unit, u);
	
	if (RUSS)
	{
		Get_Russ_Line(383,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s:%8.3f %s",OUT_STR,REG_VREF[OSC_OIL_CALC].val, u);
	}
	else
		sprintf(LCD_DISPLAY[3],"RPO:%8.3f %s",REG_VREF[OSC_OIL_CALC].val, u);	//R383
}

/****************************************************************************/
void MENU_PAGE_AVGACCUM(int n)
{
	char u[8];
	float t;
	
	if (RUSS)
	{
		Get_Russ_Line(70,OUT_STR,0);
		sprintf(LCD_DISPLAY[0],"%s %%            #%d",OUT_STR, n+1); //TO-DO: Make Russian # into (No)
	}
	else
		sprintf(LCD_DISPLAY[0]," Avg Watercut %% #%d", n+1);	//R70
	
	Get_Unit(FC[n].NET_TOTAL.class, FC[n].NET_TOTAL.unit, u);
	t = FC[n].AVG_NET_TOTAL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(71,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s%9.2f%%",OUT_STR, t);
	}
	else
		sprintf(LCD_DISPLAY[1],"Avg Net:  %9.2f%%", t);		//R71
	
	Get_Unit(FC[n].GROSS_TOTAL.class, FC[n].GROSS_TOTAL.unit, u);
	t = FC[n].AVG_GROSS_TOTAL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(72,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s%9.2f%%",OUT_STR, t);
	}
	else
		sprintf(LCD_DISPLAY[2],"Avg Gross:%9.2f%%", t);		//R72
}

/****************************************************************************/
void MENU_PAGE_ACCUMN(int n)
{
	char u[8];
	float t;

	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(73,OUT_STR,0);
		sprintf(LCD_DISPLAY[0], "%s    #%d", OUT_STR, n+1);
	}
	else
		sprintf(LCD_DISPLAY[0]," Net Accumulator #%d", n+1);	//R73

	Get_Unit(FC[n].NET_TOTAL.class, FC[n].NET_TOTAL.unit, u);
	t = FC[n].NET_TOTAL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(74,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%9.3f%s", OUT_STR, t,u);	
	}
	else
		sprintf(LCD_DISPLAY[1],"Total:%9.3f%s", t,u);		//R74 + :

	Get_Unit(FC[n].NET_WATER.class, FC[n].NET_WATER.unit, u);
	t = FC[n].NET_WATER.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s:%9.3f%s", OUT_STR, t,u);
	}
	else
		sprintf(LCD_DISPLAY[2],"Water:%9.3f%s", t,u);		//R69 + :

	Get_Unit(FC[n].NET_OIL.class, FC[n].NET_OIL.unit, u);
	t = FC[n].NET_OIL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(25,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s: %9.3f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[3],"Oil  :%9.3f%s", t,u);		//R25 + :

	if (MSVE.ENTER)
	{
		Clear_Accumulator(n);
	}
}

/****************************************************************************/
void MENU_PAGE_ACCUMG(int n)
{
	char u[8];
	float t;

	if (!FC[n].enable_GROSS)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(75,OUT_STR,0);
		sprintf(LCD_DISPLAY[0],"%s     #%d", OUT_STR,n+1);
	}
	else
		sprintf(LCD_DISPLAY[0],"Gross Accumulator #%d", n+1);	//R75

	Get_Unit(FC[n].GROSS_TOTAL.class, FC[n].GROSS_TOTAL.unit, u);
	t = FC[n].GROSS_TOTAL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(74,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%9.3f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[1],"Total:%9.3f%s", t,u);		//R74 + :

	Get_Unit(FC[n].GROSS_WATER.class, FC[n].GROSS_WATER.unit, u);
	t = FC[n].GROSS_WATER.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s :%9.3f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[2],"Water:%9.3f%s", t,u);		//R69 + :

	Get_Unit(FC[n].GROSS_OIL.class, FC[n].GROSS_OIL.unit, u);
	t = FC[n].GROSS_OIL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(25,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s:%9.3f%s", t,u);
	}
	else
		sprintf(LCD_DISPLAY[3],"Oil  :%9.3f%s", t,u);		//R25 + :

	if (MSVE.ENTER)
	{
		Clear_Accumulator(n);
	}
}

/****************************************************************************/
void MENU_PAGE_FLOW(int n)
{
	char u[8];
	float t;

	if (!FC[n].enable_FLOW)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(76,OUT_STR,0);
		sprintf(LCD_DISPLAY[0],"     %s #%d", OUT_STR, n+1);
	}
	else	
		sprintf(LCD_DISPLAY[0],"       Flow #%d", n+1);	//R76

	Get_Unit(FC[n].FLOW_TOTAL.class, FC[n].FLOW_TOTAL.unit, u);
	t = FC[n].FLOW_TOTAL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(74,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%8.1f%s", OUT_STR,t,u);
	}
	else	
		sprintf(LCD_DISPLAY[1],"Total:%8.1f%s", t,u);		//R74 + :

	Get_Unit(FC[n].FLOW_WATER.class, FC[n].FLOW_WATER.unit, u);
	t = FC[n].FLOW_WATER.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s :%8.1f%s", OUT_STR,t,u);
	}
	else	
		sprintf(LCD_DISPLAY[2],"Water:%8.1f%s", t,u);	//R69 + :

	Get_Unit(FC[n].FLOW_OIL.class, FC[n].FLOW_OIL.unit, u);
	t = FC[n].FLOW_OIL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s:%8.1f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[3],"Oil  :%8.1f%s", t,u);		//R25 + :
}

/****************************************************************************/
void MENU_PAGE_NET_FLOW(int n)
{
	char u[8];
	float t;

	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(78,OUT_STR,0);
		sprintf(LCD_DISPLAY[0]," %s #%d", OUT_STR,n+1);
	}
	else
		sprintf(LCD_DISPLAY[0],"    Net Flow #%d", n+1);	//R78

	Get_Unit(FC[n].NET_FLOW_TOTAL.class, FC[n].NET_FLOW_TOTAL.unit, u);
	t = FC[n].NET_FLOW_TOTAL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(74,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%8.1f%s", OUT_STR,t,u);
	}
	else	
		sprintf(LCD_DISPLAY[1],"Total:%8.1f%s", t,u);		//R74 + :


	Get_Unit(FC[n].NET_FLOW_WATER.class, FC[n].NET_FLOW_WATER.unit, u);
	t = FC[n].NET_FLOW_WATER.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s :%8.1f%s", OUT_STR,t,u);
	}
	else	
		sprintf(LCD_DISPLAY[2],"Water:%8.1f%s", t,u);	//R69 + :

	Get_Unit(FC[n].NET_FLOW_OIL.class, FC[n].NET_FLOW_OIL.unit, u);
	t = FC[n].NET_FLOW_OIL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s:%8.1f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[3],"Oil  :%8.1f%s", t,u);		//R25 + :
}

/****************************************************************************/
void MENU_DENSITY(int n)
{
	char u[8];
	char u1[8];
	float t, min, max;
	int a;

	if (!FC[n].enable_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	sprintf(ENG_STR,"    FC Summary");	//R79
	Print_To_LCD(0, 79, ENG_STR, 4);

	Get_Unit(FC[n].watercut.class, FC[n].watercut.unit, u1);
	Get_Unit(FC[n].T.class, FC[n].T.unit, u);
	t = FC[n].T.val;

	if (REG_EMULSION_PHASE.val==2.0)
	{
		if(RUSS)
			sprintf(LCD_DISPLAY[1],"BC: ?.?  %s T:%5.1f%s", u1, t, u);	//R215 + :
		else
			sprintf(LCD_DISPLAY[1],"WC: ?.?  %s T:%5.1f%s", u1, t, u);	//R215 + :		
	}
	else
	{
		min = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmin, 0, 0);
		max = VAR_Get_Unit_Param(&REG_WATERCUT, reg_direct_bmax, 0, 0);
		if (f_compare(&max, 20.0, 0)<=0)
		{
			if(RUSS)
				sprintf(LCD_DISPLAY[1],"BC:%6.2f%s T:%5.1f%s", FC[n].watercut.val, u1, t, u);	//R215 + :
			else
				sprintf(LCD_DISPLAY[1],"WC:%6.2f%s T:%5.1f%s", FC[n].watercut.val, u1, t, u);	//R215 + :
		}
		else
		{
			if(RUSS)
				sprintf(LCD_DISPLAY[1],"BC:%6.1f%s T:%5.1f%s", FC[n].watercut.val, u1, t, u);	//R215 + :
			else
				sprintf(LCD_DISPLAY[1],"WC:%6.1f%s T:%5.1f%s", FC[n].watercut.val, u1, t, u);	//R215 + :
		}
	}

	Get_Unit(FC[n].density.class, FC[n].density.unit, u);
	t = FC[n].density.val;
	a = FC[n].density.unit;
	if ((a==u_mpv_sg_60F) || (a==u_mpv_sg_15C) || (a==u_mpv_sg) || (a==u_mpv_g_cc))
	{
		if (RUSS)
		{
			Get_Russ_Line(268,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s :%5.4f%s", OUT_STR,t, u);
		}
		else
			sprintf(LCD_DISPLAY[2],"Density:%5.4f%s", t, u);
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(268,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s :%5.1f%s", OUT_STR,t, u);
		}
		else
			sprintf(LCD_DISPLAY[2],"Density:%5.1f%s", t, u);	//R80 + :
	}

	Get_Unit(FC[n].FLOW_TOTAL.class, FC[n].FLOW_TOTAL.unit, u);
	t = FC[n].FLOW_TOTAL.val;

	if (RUSS)
	{
		Get_Russ_Line(76,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s :%5.1f%s",OUT_STR, t, u);
	}
	else	
		sprintf(LCD_DISPLAY[3],"Flow   :%5.1f%s", t, u);	//R76
}

/****************************************************************************/
void MENU_PAGE_DENSITY(int n)
{
	char u[8];
	float t;
	int a;

	if (!FC[n].enable_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(80,OUT_STR,0);
		sprintf(LCD_DISPLAY[0],"   %s #%d", OUT_STR,n+1);
	}
	else
		sprintf(LCD_DISPLAY[0],"     DENSITY #%d", n+1);	//R80
	
	Get_Unit(FC[n].density.class, FC[n].density.unit, u);
	t = FC[n].density.val;
	a = FC[n].density.unit;
	if ((a==u_mpv_sg_60F) || (a==u_mpv_sg_15C) || (a==u_mpv_sg) || (a==u_mpv_g_cc))
	{
		if (RUSS)
		{
			Get_Russ_Line(268,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s :%5.4f%s", OUT_STR,t, u);
		}
		else
			sprintf(LCD_DISPLAY[1],"Density:%5.4f%s", t, u);
	}
	else 
	{
		if (RUSS)
		{
			Get_Russ_Line(268,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s :%5.1f%s", OUT_STR,t, u);
		}
		else
		sprintf(LCD_DISPLAY[1],"Density:%5.1f%s", t, u);	//R80
	}

    if (Density_Correction_Mode.val==6)
    {
		sprintf(LCD_DISPLAY[2],"");
	}
	else
    if ((Density_Correction_Mode.val==3)||(Density_Correction_Mode.val==4)||(Density_Correction_Mode.val==5))
    {
		Get_Unit(FC[n].density.class, COR[n].u_density_corrected, u);
		if(RUSS)
		{
			Get_Russ_Line(81,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s:%5.1f%s", OUT_STR,COR[n].density_corrected,u);
		}	
		else
			sprintf(LCD_DISPLAY[2],"COR STD:%5.1f%s", COR[n].density_corrected,u);	//R81 + :
	}
	else
	{
		Get_Unit(Density_Cal.class, Density_Cal.calc_unit, u);
		if(RUSS)
		{
			Get_Russ_Line(82,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s   :%5.1f%s", OUT_STR,FC[n].density_PDI_corrected,u);
		}	
		else
			sprintf(LCD_DISPLAY[2],"COR    :%5.1f%s", FC[n].density_PDI_corrected,u);	//R82   
	}

	Get_Unit(FC[n].T.class, FC[n].T.unit, u);
	t = FC[n].T.val;
	
	if(RUSS)
	{
		Get_Russ_Line(269,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s  :%5.1f%s", OUT_STR,t, u);
	}	
	else
		sprintf(LCD_DISPLAY[3],"Temp   :%5.1f%s", t, u);	//R269
}

/****************************************************************************/
void MENU_TIME_DATE(void)
{
	unsigned char YEAR,MONTH,DAY,HH,MM,SS;
	int r;

	if (!RTC_PRESENT)
	{
		if (MSVE.FRESH)
		{
			sprintf(ENG_STR,"    Time & Date");	//R83
			Print_To_LCD(0, 83, ENG_STR, 5);
			sprintf(LCD_DISPLAY[1],"");
			sprintf(ENG_STR," Clock not present.");	//R84
			Print_To_LCD(2, 84, ENG_STR, 3);
			sprintf(LCD_DISPLAY[3],"");
			MSVE.FRESH = FALSE;
		}
		return;
	}

	if (!MSVE.CURSOR_ENABLED)
	{
		HH				= RTC[4] & 0x3F;
		MM				= RTC[3] & 0x7F;
		SS				= RTC[2] & 0x7F;
		MONTH			= RTC[7] & 0x1F;
		DAY				= RTC[6] & 0x3F;
		YEAR			= RTC[8] & 0xFF;

		sprintf(ENG_STR,"    Time & Date");	//R83
		Print_To_LCD(0, 83, ENG_STR, 4);
		sprintf(LCD_DISPLAY[3],"");
		sprintf(LCD_DISPLAY[1],"      %02x:%02x:%02x",HH,MM,SS); //R_UHOH
		sprintf(LCD_DISPLAY[2],"      %02x/%02x/%02x",MONTH,DAY,YEAR); //R_UHOH
	}
	else
	if (MSVE.FRESH)
	{
		sprintf(ENG_STR,"  Set Time & Date");	//R85
		Print_To_LCD(0, 85, ENG_STR, 1);
		sprintf(LCD_DISPLAY[3],"");
		MSVE.FRESH = FALSE;
	}

	if (MSVE.ENTER && MSVE.CURSOR_ENABLED)
	{
		sscanf(LCD_DISPLAY[1], "      %02x:%02x:%02x", &HH, &MM, &SS);	//R_UHOH
		sscanf(LCD_DISPLAY[2], "      %02x/%02x/%02x", &MONTH, &DAY, &YEAR);	//R_UHOH

		_GIEP;
		r = 0;
		while(1)
		{
			if (HH>0x23) break;
			if (MM>0x59) break;
			if (SS>0x59) break;
			if (MONTH>0x12) break;
			if (MONTH<0x01) break;
			if (DAY>0x31) break;
			if (DAY<0x01) break;
			if (YEAR>0x99) break;

			if (!Write_DS1340(2, 1, &HH)) break;
			if (!Write_DS1340(1, 1, &MM)) break;
			if (!Write_DS1340(0, 1, &SS)) break;
			if (!Write_DS1340(5, 1, &MONTH)) break;
			if (!Write_DS1340(4, 1, &DAY)) break;
			if (!Write_DS1340(6, 1, &YEAR)) break;

			RTC[1]  = 0x00;	/* reset the OSF */
			DIAGNOSTICS[1] &= 0xFFFFFFFF ^ ERROR2_TIME_RESET;
			if (!Write_DS1340(8, 2, &RTC[0])) break;

			r = 1;

			IDEC_SA[7].val &= 0x7FFF;
			Timer_Create(&TMR_REFRESH_TIME, 1.0, 1, (int*)Refresh_IDEC_Time, 1);
			Timer_Insert(&TMR_REFRESH_TIME,0,TMR_action_replace);
			break;
		}
		if (r==0) DIAGNOSTICS[1] |= ERROR2_TIME_RESET;
		GIEP;

		MSVE.CURSOR_ENABLED = FALSE;
	}
	else
	if (MSVE.SELECT)
	{
		if (!MSVE.CURSOR_ENABLED)
		{
			MSVE.FRESH = TRUE;
			MSVE.CURSOR_ENABLED = TRUE;
			MSVE.CURSOR_ROW = 2;
			MSVE.CURSOR_COL = 13;
		}
		else
		{
			MSVE.CURSOR_COL--;
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '/') MSVE.CURSOR_COL--;
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == ':') MSVE.CURSOR_COL--;

			if (MSVE.CURSOR_COL<6)
			{
				MSVE.CURSOR_ROW--;
				MSVE.CURSOR_COL = 13;
			}
			if (MSVE.CURSOR_ROW<1)
			{
				MSVE.CURSOR_ROW = 2;
			}
		}
	}
	else
	if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
	{
		if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '9')
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
		}
		else
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
		}
	}
}

/****************************************************************************/
void MENU_PAGE_INFO(void)
{
	int i;

	if ((MSVE.FRESH)&&(!MSVE.CURSOR_ENABLED))
	{
		if (RUSS)
		{
			Get_Russ_Line(86,OUT_STR,0);
			sprintf(LCD_DISPLAY[0],"%s    %06d", OUT_STR,SN_PIPE);
		}
		else
			sprintf(LCD_DISPLAY[0],"Serial Number:%06d", SN_PIPE);	//R86
		
		for (i=0;i<4;i++)
		{
			LCD_DISPLAY[1][2*i+0] = STR_HART_Tag[i]>>8; //R_UHOH ?
			LCD_DISPLAY[1][2*i+1] = STR_HART_Tag[i];
		}
		LCD_DISPLAY[1][2*i+0] = 0;

		for (i=0;i<10;i++)
		{
			LCD_DISPLAY[2][2*i+0] = STR_Analyzer_Info[i]>>8; //R_UHOH ?
			LCD_DISPLAY[2][2*i+1] = STR_Analyzer_Info[i];
		}
		LCD_DISPLAY[2][2*i+0] = 0;

		sprintf(ENG_STR,"Phase Dynamics, Inc.");	//R87
		Print_To_LCD(3, 87, ENG_STR, -1);
		MSVE.FRESH = FALSE;
	}
	else
	if (MSVE.FRESH)
	{
		MSVE.tmpi[0] = 0;
		sprintf(ENG_STR,"      Edit Tag");	//R88
		Print_To_LCD(0, 88, ENG_STR, 5);
		for (i=0;i<4;i++)
		{
			LCD_DISPLAY[1][2*i+0] = STR_HART_Tag[i]>>8; //R_UHOH ?
			LCD_DISPLAY[1][2*i+1] = STR_HART_Tag[i];
		}
		LCD_DISPLAY[1][2*i+0] = 0;

		sprintf(LCD_DISPLAY[2],"");
		sprintf(LCD_DISPLAY[3],"");

		MSVE.FRESH = FALSE;
	}

	if (MSVE.ENTER && MSVE.CURSOR_ENABLED)
	{
		for (i=0;i<4;i++)
		{
			STR_HART_Tag[i] = ((LCD_DISPLAY[1][2*i+0]&0xFF)<<8) | (LCD_DISPLAY[1][2*i+1]&0xFF);
		}

		Update_Flags_Goto_Next_Menu(1,1);
		MSVE.FRESH = TRUE;
	}
	else
	if (MSVE.SELECT)
	{
		if (!MSVE.CURSOR_ENABLED)
		{
			MSVE.FRESH = TRUE;
			MSVE.CURSOR_ENABLED = TRUE;
			MSVE.CURSOR_ROW = 1;
			MSVE.CURSOR_COL = 0;
		}
		else
		{
			MSVE.CURSOR_COL++;

			if (MSVE.CURSOR_COL>7)
			{
				MSVE.CURSOR_COL = 0;
			}
		}
	}
	else
	if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
	{
		if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 127)
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = ' ';
		}
		else
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
		}
	}
	else
	if ((MSVE.VALUE_CNT>40) && (MSVE.CURSOR_ENABLED))
	{
		MSVE.VALUE_CNT=0;
		MSVE.tmpi[0]++;
		switch(MSVE.tmpi[0]%4)
		{
			case 0: LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]=' '; break;
			case 1: LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]='0'; break;
			case 2: LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]='A'; break;
			case 3: LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]='a'; break;
		}
	}
}

/****************************************************************************/
void MENU_PAGE_PORT_CFG(void)
{
	int i;

	if (MSVE.FRESH)
	{
		for(i=0;i<UART_MAX;i++)  // find max UART?
		{
			if (PORT[i].PRESENT) break;
		}

		if (i==UART_MAX)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"   Configure Comm");	//R89
		Print_To_LCD(0, 89, ENG_STR, 2);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		//R90
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	//R91
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
	}

	if (MSVE.tmpi[2])
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = TRUE;
		MSVE.CURSOR_ENABLED = FALSE;
	}

	switch(MSVE.tmpi[1])
	{
		case 2:
		{/* RS485 Baud Rate */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				MSVE.tmpi[3] = PORTCFG[MSVE.tmpi[0]].Baud_Rate.val;
				sprintf(LCD_DISPLAY[0],"    %s", PORTCFG[MSVE.tmpi[0]].Baud_Rate.name); //R_UHOH
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
			}

			sprintf(LCD_DISPLAY[3],"       %6d", MSVE.tmpi[3]);

			if (MSVE.SELECT)
			{
				if (MSVE.tmpi[3]<300)		MSVE.tmpi[3] = 300;
				else
				if (MSVE.tmpi[3]<1200)		MSVE.tmpi[3] = 1200;
				else
				if (MSVE.tmpi[3]<2400)		MSVE.tmpi[3] = 2400;
				else
				if (MSVE.tmpi[3]<4800)		MSVE.tmpi[3] = 4800;
				else
				if (MSVE.tmpi[3]<9600)		MSVE.tmpi[3] = 9600;
				else
				if (MSVE.tmpi[3]<19200)		MSVE.tmpi[3] = 19200;
				else
				if (MSVE.tmpi[3]<38400)		MSVE.tmpi[3] = 38400;
				else
				if (MSVE.tmpi[3]<57600)		MSVE.tmpi[3] = 57600;
				else
				if (MSVE.tmpi[3]<115200)	MSVE.tmpi[3] = 115200;
				else						MSVE.tmpi[3] = 300;
			}
			else
			if (MSVE.VALUE)
			{
				if (MSVE.tmpi[3]>115200)	MSVE.tmpi[3] = 115200;
				else
				if (MSVE.tmpi[3]>57600)		MSVE.tmpi[3] = 57600;
				else
				if (MSVE.tmpi[3]>38400)		MSVE.tmpi[3] = 38400;
				else
				if (MSVE.tmpi[3]>19200)		MSVE.tmpi[3] = 19200;
				else
				if (MSVE.tmpi[3]>9600)		MSVE.tmpi[3] = 9600;
				else
				if (MSVE.tmpi[3]>4800)		MSVE.tmpi[3] = 4800;
				else
				if (MSVE.tmpi[3]>2400)		MSVE.tmpi[3] = 2400;
				else
				if (MSVE.tmpi[3]>1200)		MSVE.tmpi[3] = 1200;
				else
				if (MSVE.tmpi[3]>300)		MSVE.tmpi[3] = 300;
				else						MSVE.tmpi[3] = 115200;
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.tmpf[0] = MSVE.tmpi[3];

				if (VAR_Update(&PORTCFG[MSVE.tmpi[0]].Baud_Rate, MSVE.tmpf[0],1,1))	/* bounds check ONLY! */
				{
					VAR_Update(&PORTCFG[MSVE.tmpi[0]].Baud_Rate, MSVE.tmpf[0],0,1);
					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 3:
		{/* RS485 Prefix */
		
			if (RUSS)
			{
				Get_Russ_Line(92,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].PREFIX, 0, 1);
			}
			else
				MSVE_Data_Input("", "PREFIX ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].PREFIX, 0, 1); //R92

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 4:
		{/* RS485 Suffix */
			if (RUSS)
			{
				Get_Russ_Line(93,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].SUFFIX, 0, 1);
			}
			else
				MSVE_Data_Input("", "SUFFIX ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].SUFFIX, 0, 1);	//R93

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 5:
		{/* RS485 EOT */
			MSVE_Data_Input("", "EOT    ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].EOT_Delay, 0, 1);	//R94 //R_UHOH too long

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 6:
		{/* RS485 WDOG */
			if (RUSS)
			{
				Get_Russ_Line(93,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].NETWDOG, 0, 1);
			}
			else
				MSVE_Data_Input("", "WDOG   ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].NETWDOG, 0, 1);	//R104

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 7:
		{/* RS485 PARITY */
    		if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				switch (PORTCFG[MSVE.tmpi[0]].Parity>>8)
				{
					case 'O':
					{
						MSVE.tmpi[3] = 1;
						break;
					}
					
					case 'E':
					{
						MSVE.tmpi[3] = 2;
						break;
					}
					
					case '1':
					case 'M':
					{
						MSVE.tmpi[3] = 3;
						break;
					}
					
					case '0':
					case 'S':
					{
						MSVE.tmpi[3] = 4;
						break;
					}
					
					case 'N':
					default:
					{
						MSVE.tmpi[3] = 0;
						break;
					}
				}

				sprintf(LCD_DISPLAY[0],"     C%d Parity", MSVE.tmpi[0]+1); //R95
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
			}

			switch (MSVE.tmpi[3])
			{
				case 1:
				{
					sprintf(ENG_STR,"        ODD");	//R96
					Print_To_LCD(3, 96, ENG_STR, 7);

					break;
				}
				
				case 2:
				{
					sprintf(ENG_STR,"        EVEN");	//R97
					Print_To_LCD(3, 97, ENG_STR, 8);
					break;
				}
				
				case 3:
				{
					sprintf(ENG_STR,"       MARK/1");	//R98
					Print_To_LCD(3, 98, ENG_STR, 6);
					break;
				}
				
				case 4:
				{
					sprintf(ENG_STR,"      SPACE/0");	//R99 / 0
					Print_To_LCD(3, 99, ENG_STR, 6);
					break;
				}
				
				case 0:
				default:
				{
					sprintf(ENG_STR,"        NONE");		//R100
					Print_To_LCD(3, 99, ENG_STR, 8);
					break;
				}
			}
			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
				if (MSVE.tmpi[3]>4) MSVE.tmpi[3] = 0;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
				if (MSVE.tmpi[3]<0) MSVE.tmpi[3] = 4;
			}
			else
			if (MSVE.ENTER)
			{
				switch (MSVE.tmpi[3])
				{
					case 1:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'O'<<8;
						break;
					}
					
					case 2:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'E'<<8;
						break;
					}
					
					case 3:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'M'<<8;
						break;
					}
					
					case 4:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'S'<<8;
						break;
					}
					
					case 0:
					default:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'N'<<8;
						break;
					}
				}

				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 8:
		{/* RS485 MASTER TRANSMIT RETRY */
			if (RUSS)
			{
				Get_Russ_Line(101,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].Retry_Time, 0, 1);
			}
			else
				MSVE_Data_Input("", "RETRY  ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].Retry_Time, 0, 1);	//R101

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

/* todo: insert poll_time, master/slave select, etc */

		case 9:
		{/* RS485 Statistics */
			MSVE.FRESH = FALSE;
			
			if (RUSS)
			{
				Get_Russ_Line(102,OUT_STR,0);
				sprintf(LCD_DISPLAY[0],"   K%d %s", MSVE.tmpi[0]+1, OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[0],"   C%d Statistics", MSVE.tmpi[0]+1);	//R102
			
			if (RUSS)
			{
				Get_Russ_Line(103,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s :  %10d", OUT_STR,PORT[MSVE.tmpi[0]].ERROR_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Errors :  %10d", PORT[MSVE.tmpi[0]].ERROR_COUNT);	//R103
			
			if (RUSS)
			{
				Get_Russ_Line(104,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].WDOG_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[2],"WDOG   :  %10d", PORT[MSVE.tmpi[0]].WDOG_COUNT);	//R104
			
			if (RUSS)
			{
				Get_Russ_Line(379,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].INV_PKT_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[3],"Inv Pkt:  %10d", PORT[MSVE.tmpi[0]].INV_PKT_COUNT);	//R379

			if (MSVE.ENTER)
			{
				PORT[MSVE.tmpi[0]].ERROR_COUNT = 0;
				PORT[MSVE.tmpi[0]].WDOG_COUNT = 0;
				PORT[MSVE.tmpi[0]].INV_PKT_COUNT = 0;
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 10:
		{/* RS485 Statistics */
			MSVE.FRESH = FALSE;
			if (RUSS)
			{
				Get_Russ_Line(102,OUT_STR,0);
				sprintf(LCD_DISPLAY[0],"   K%d %s", MSVE.tmpi[0]+1, OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[0],"   C%d Statistics", MSVE.tmpi[0]+1);	//R102

			if (RUSS)
			{
				Get_Russ_Line(106,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s: %8d", OUT_STR, PORT[MSVE.tmpi[0]].INV_CMD_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Inv Cmd:  %10d", PORT[MSVE.tmpi[0]].INV_CMD_COUNT);	//R106
			
			if (RUSS)
			{
				Get_Russ_Line(107,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s  :  %10d", OUT_STR, PORT[MSVE.tmpi[0]].SUCCESS);
			}
			else
				sprintf(LCD_DISPLAY[2],"Success:  %10d", PORT[MSVE.tmpi[0]].SUCCESS);	//R107
		
			if (RUSS)
			{
				Get_Russ_Line(108,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s:%10d", OUT_STR, PORT[MSVE.tmpi[0]].NUM_RETRIES);
			}
			else
				sprintf(LCD_DISPLAY[3],"# Retry:  %10d", PORT[MSVE.tmpi[0]].NUM_RETRIES);	//R108

			if (MSVE.ENTER)
			{
				PORT[MSVE.tmpi[0]].INV_CMD_COUNT = 0;
				PORT[MSVE.tmpi[0]].SUCCESS = 0;
				PORT[MSVE.tmpi[0]].NUM_RETRIES = 0;
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 20:
		{/* Number of HART Preambles */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"  HART #Preambles"); 	//R109
				Print_To_LCD(0,109, ENG_STR, 2);
				
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = NUM_PREAMBLE_SM;
			}

			if (MSVE.tmpi[3]<5) MSVE.tmpi[3] = 20;
			else
			if (MSVE.tmpi[3]>20) MSVE.tmpi[3] = 5;

			sprintf(LCD_DISPLAY[3],"         %2d", MSVE.tmpi[3]);

			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
			}

			if (MSVE.ENTER)
			{
				NUM_PREAMBLE_SM = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 21:
		{/* HART Version */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"    HART Version");	//R110
				Print_To_LCD(0, 110, ENG_STR, 4);
				
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = DIO_HART_5.val & 0x01;
			}

			switch (MSVE.tmpi[3]&0x01)
			{
				case 1:  sprintf(LCD_DISPLAY[3],"          5"); break;
				default: sprintf(LCD_DISPLAY[3],"          6"); break;
			}

			if (MSVE.SELECT || MSVE.VALUE)
			{
				MSVE.tmpi[3]^=0x01;
			}

			if (MSVE.ENTER)
			{
				DIO_HART_5.val = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 22:
		{/* HART Statistics */
			MSVE.FRESH = FALSE;
			sprintf(ENG_STR,"HART Port Statistics");	//R111
			Print_To_LCD(0, 111, ENG_STR, 1);
			
			if (RUSS)
			{
				Get_Russ_Line(103,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s :  %10d", OUT_STR,PORT[MSVE.tmpi[0]].ERROR_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Errors :  %10d", PORT[MSVE.tmpi[0]].ERROR_COUNT);	//R103
			
			if (RUSS)
			{
				Get_Russ_Line(104,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].WDOG_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[2],"WDOG   :  %10d", PORT[MSVE.tmpi[0]].WDOG_COUNT);	//R104
			
			if (RUSS)
			{
				Get_Russ_Line(379,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].INV_PKT_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[3],"Inv Pkt:  %10d", PORT[MSVE.tmpi[0]].INV_PKT_COUNT);	//R379

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 23:
		{/* HART Statistics */
			MSVE.FRESH = FALSE;
			sprintf(ENG_STR,"HART Port Statistics");	//R111
			Print_To_LCD(0, 111, ENG_STR, 1);
			
			if (RUSS)
			{
				Get_Russ_Line(103,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s :  %10d", OUT_STR,PORT[MSVE.tmpi[0]].ERROR_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Errors :  %10d", PORT[MSVE.tmpi[0]].ERROR_COUNT);	//R104
			
			if (RUSS)
			{
				Get_Russ_Line(106,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s: %8d", OUT_STR, PORT[MSVE.tmpi[0]].INV_CMD_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[2],"Inv Cmd:  %10d", PORT[MSVE.tmpi[0]].INV_CMD_COUNT);	//R106
			
			if (RUSS)
			{
				Get_Russ_Line(107,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s  :  %10d", OUT_STR, PORT[MSVE.tmpi[0]].SUCCESS);
			}
			else
				sprintf(LCD_DISPLAY[3],"Success:  %10d", PORT[MSVE.tmpi[0]].SUCCESS);	//R107

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 30:
		{/* IrDA Enable */
			
			MSVE.tmpi[2] = 1;
			MSVE.tmpi[1] = 0;
			//IrDA port is now used for USB Logging
			/*
    		if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				sprintf(LCD_DISPLAY[0],"    IrDA Enable");
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = IRDA_ENABLE & 0x01;
			}

			switch (MSVE.tmpi[3]&0x01)
			{
				case 0x01:  sprintf(LCD_DISPLAY[3],"        YES"); break;
				default:	sprintf(LCD_DISPLAY[3],"         NO"); break;
			}

			if (MSVE.SELECT || MSVE.VALUE)
			{
				MSVE.tmpi[3]^=0x01;
			}

			if (MSVE.ENTER)
			{
				IRDA_ENABLE &= 0xFFFFFFFF ^ 0x01;
				IRDA_ENABLE |= MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
			*/
		}

		case 31:
		{/* IrDA Sensitivity */

			MSVE.tmpi[2] = 1;
			MSVE.tmpi[1] = 0;
			/*
    		if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"  IrDA Sensitivity");	//R113
				Print_To_LCD(0, 113, ENG_STR, 2);
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = IRDA_ENABLE & 0x02;
			}

			switch (MSVE.tmpi[3]&0x02)
			{
				case 0x02:  
					sprintf(ENG_STR,"       HIGH"); 	//R270
					Print_To_LCD(3, 270, ENG_STR, 8);
					break;	
				default:    
					sprintf(ENG_STR,"       NORMAL"); //R114
					Print_To_LCD(3, 114, ENG_STR, 5);
					break;	
			}

			if (MSVE.SELECT || MSVE.VALUE)
			{
				MSVE.tmpi[3]^=0x02;
			}

			if (MSVE.ENTER)
			{
				IRDA_ENABLE &= 0xFFFFFFFF ^ 0x02;
				IRDA_ENABLE |= MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
			*/
		}

		case 32:
		{/* IrDA Statistics */
		
			MSVE.tmpi[2] = 1;
			MSVE.tmpi[1] = 0;		
			/*
			MSVE.FRESH = FALSE;
			sprintf(ENG_STR,"IrDA Port Statistics");	//R115
			Print_To_LCD(0, 115, ENG_STR, -1);
			if (RUSS)
			{
				Get_Russ_Line(103,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s :  %10d", OUT_STR,PORT[MSVE.tmpi[0]].ERROR_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Errors :  %10d", PORT[MSVE.tmpi[0]].ERROR_COUNT);	//R103
			
			if (RUSS)
			{
				Get_Russ_Line(104,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].WDOG_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[2],"WDOG   :  %10d", PORT[MSVE.tmpi[0]].WDOG_COUNT);	//R104
			
			if (RUSS)
			{
				Get_Russ_Line(379,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].INV_PKT_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[3],"Inv Pkt:  %10d", PORT[MSVE.tmpi[0]].INV_PKT_COUNT);	//R379

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
			*/
		}

		case 33:
		{/* IrDA Statistics */

			MSVE.tmpi[2] = 1;
			MSVE.tmpi[1] = 0;		
			/*
			MSVE.FRESH = FALSE;
			sprintf(ENG_STR,"IrDA Port Statistics");	//R115
			Print_To_LCD(0, 115, ENG_STR, -1);
			
			sprintf(LCD_DISPLAY[1],"");
			
			if (RUSS)
			{
				Get_Russ_Line(106,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s: %8d", OUT_STR, PORT[MSVE.tmpi[0]].INV_CMD_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[2],"Inv Cmd:  %10d", PORT[MSVE.tmpi[0]].INV_CMD_COUNT);	//R106
			
			if (RUSS)
			{
				Get_Russ_Line(107,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s  :  %10d", OUT_STR, PORT[MSVE.tmpi[0]].SUCCESS);
			}
			else
				sprintf(LCD_DISPLAY[3],"Success:  %10d", PORT[MSVE.tmpi[0]].SUCCESS);	//R107

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
			*/
		}

		case 1:
		{/* configure port number based on MSVE.tmpi[0] */
			/* slave addr */
			if (RUSS)
			{
				Get_Russ_Line(116,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 3, 0, 0, 0, &PORTCFG[MSVE.tmpi[0]].Slave_ID, 0, 1);
			}
			else
				MSVE_Data_Input("", "ADDRESS", 3, 0, 0, 0, &PORTCFG[MSVE.tmpi[0]].Slave_ID, 0, 1);	//R116

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;

				if (MSVE.tmpi[0]==4)
				{/* GOTO HART MENU */
					MSVE.tmpi[1] = 20;
				}
				else
				{/* GOTO NEXT MENU */
					MSVE.tmpi[1]++;
				}
			}

			break;
		}

		case 0:
		{/* main screen to select port number */
			MSVE.MENU_TRAP = FALSE;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[0]++;
				if (MSVE.tmpi[0] == 5) MSVE.tmpi[0]++;
				if (MSVE.tmpi[0]>=UART_MAX) MSVE.tmpi[0] = 0;

				while(!PORT[MSVE.tmpi[0]].PRESENT)
				{
					MSVE.tmpi[0]++;
					if (MSVE.tmpi[0] == 5) MSVE.tmpi[0]++;
					if (MSVE.tmpi[0]>=UART_MAX) MSVE.tmpi[0] = 0;
				}
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[0]--;
				if (MSVE.tmpi[0] == 5) MSVE.tmpi[0]--;
				if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = UART_MAX-1;
				
				while(!PORT[MSVE.tmpi[0]].PRESENT)
				{
					MSVE.tmpi[0]--;
					if (MSVE.tmpi[0] == 5) MSVE.tmpi[0]--;
					if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = UART_MAX-1;
				}
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.MENU_TRAP = TRUE;

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 1;

			}

			switch (MSVE.tmpi[0])
			{
				case 0:
				{
					if (PORT[7].PRESENT)
					{
						sprintf(ENG_STR,"    MODBUS COM 1    ");	//R117
						Print_To_LCD(3, 117, ENG_STR, 4);
					}
					else
					{
						sprintf(ENG_STR," MODBUS COM 1 / PDI ");	//R118
						Print_To_LCD(3, 118, ENG_STR, -1);
					}
					break;
				}

				case 1:
				{
					if (PORT[6].PRESENT)
					{
						sprintf(ENG_STR,"    MODBUS COM 2    ");	//R119
						Print_To_LCD(3, 119, ENG_STR, 4);
					}
					else
					{
						sprintf(ENG_STR," MODBUS COM 2 / OIT ");	//R120
						Print_To_LCD(3, 120, ENG_STR, 1);
					}
					break;
				}
				case 2:	
					sprintf(ENG_STR,"    MODBUS COM 3    ");		//R272
					Print_To_LCD(3, 272, ENG_STR, 4);
					break;
				case 3:	
					sprintf(ENG_STR,"    MODBUS COM 4    ");		//R273
					Print_To_LCD(3, 273, ENG_STR, 4);
					break;
				case 4:	
					sprintf(LCD_DISPLAY[3],"        HART        ");	
					break;
				case 5:	
					//sprintf(ENG_STR,"        IrDA        ");		//R122
					sprintf(ENG_STR,"        NONE        "); //disable IrDA 6.13.30
					Print_To_LCD(3, 122, ENG_STR, 6);
					break;
				case 6:	
					sprintf(ENG_STR,"     MODBUS OIT     ");		//R123
					Print_To_LCD(3, 123, ENG_STR, 5);
					break;
				case 7:	
					sprintf(ENG_STR,"     MODBUS PDI     ");		//R124
					Print_To_LCD(3, 124, ENG_STR, 5);					
					break;
			}

			break;
		}

		default:
		{
			MSVE.FRESH = TRUE;
			break;
		}
	}
}

/****************************************************************************/
void MENU_RELAY_CFG(void)
{
	unsigned int ui;

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"  Configure Relay");	//R125
		Print_To_LCD(0, 125, ENG_STR, 3);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		//R90
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	//R91
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
	}

	if (MSVE.tmpi[2])
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = TRUE;
		MSVE.CURSOR_ENABLED = FALSE;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:
		{/* mode */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				
				if (RUSS)
				{
					Get_Russ_Line(126,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"   #%d %s", MSVE.tmpi[0]+1, OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"   #%d Relay Mode", MSVE.tmpi[0]+1);	//R126
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = RLY[MSVE.tmpi[0]].MODE;
			}

			switch(MSVE.tmpi[3])
			{
				case 0x00:
				{/* DIAG MASK */
					sprintf(ENG_STR,"  Variable Status");	//R127
					Print_To_LCD(3, 127, ENG_STR, 1);
					break;
				}

				case 0x01:
				{/* val == RLY[i].val */
					sprintf(ENG_STR,"Variable =  Setpoint");	//R128
					Print_To_LCD(3, 128, ENG_STR, 1);
					break;
				}

				case 0x03:
				{/* val >= RLY[i].val */
					sprintf(ENG_STR,"Variable >= Setpoint");	//R252
					Print_To_LCD(3, 252, ENG_STR, 1);
					break;
				}

				case 0x02:
				{/* val > RLY[i].val */
					sprintf(ENG_STR,"Variable >  Setpoint");	//R250
					Print_To_LCD(3, 250, ENG_STR, 1);
					break;
				}

				case 0x04:
				{/* val < RLY[i].val */
					sprintf(ENG_STR,"Variable <  Setpoint");	//R249
					Print_To_LCD(3, 249, ENG_STR, 1);
					break;
				}

				case 0x05:
				{/* val <= RLY[i].val */
					sprintf(ENG_STR,"Variable <= Setpoint");	//R251
					Print_To_LCD(3, 251, ENG_STR, 1);
					break;
				}

				case 0x06:
				{/* val != RLY[i].val */
					sprintf(ENG_STR,"Variable != Setpoint");	//R253
					Print_To_LCD(3, 253, ENG_STR, 1);
					break;
				}

				case 0x20:
				{/* toggle mode */
					sprintf(ENG_STR,"       Toggle");	//R129
					Print_To_LCD(3, 129, ENG_STR, 3);
					break;
				}

				case 0x30:
				{/* DIAG[0] */
					if (RUSS)
					{
						Get_Russ_Line(14,OUT_STR,0);
						sprintf(LCD_DISPLAY[3],"   %s 1", OUT_STR);
					}
					else
						sprintf(LCD_DISPLAY[3],"   Diagnostics 1");		//R14 + number
					break;
				}

				case 0x40:
				{/* DIAG[1] */
					if (RUSS)
					{
						Get_Russ_Line(14,OUT_STR,0);
						sprintf(LCD_DISPLAY[3],"   %s 2", OUT_STR);
					}
					else
						sprintf(LCD_DISPLAY[3],"   Diagnostics 2");		//R14 + number
					break;
				}

				case 0xFF:
				{/* auto mode - relay is actuated in another part of the program */
					sprintf(ENG_STR,"       Other");	//R198
					Print_To_LCD(3, 198, ENG_STR, 7);
					break;
				}

				case 0x10:
				default:
				{/* manual mode */
					sprintf(ENG_STR,"       Manual");	//R131
					Print_To_LCD(3, 131, ENG_STR, 6);
					break;
				}
			}

			if (MSVE.ENTER)
			{
				RLY[MSVE.tmpi[0]].MODE = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;

				switch(RLY[MSVE.tmpi[0]].MODE)
				{
					case 0x00:
					{/* DIAG MASK */
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x01:
					{/* val == RLY[i].val */
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x03:
					{/* val >= RLY[i].val */
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x02:
					{/* val > RLY[i].val */
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x04:
					{/* val < RLY[i].val */
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x05:
					{/* val <= RLY[i].val */
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x06:
					{/* val != RLY[i].val */
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x20:
					{/* toggle mode */
						MSVE.tmpi[1] = 0;
						break;
					}

					case 0x30:
					{/* DIAG[0] */
						MSVE.tmpi[1] = 6;
						break;
					}

					case 0x40:
					{/* DIAG[1] */
						MSVE.tmpi[1] = 6;
						break;
					}

					case 0xFF:
					{/* other mode - relay is actuated in another part of the program */
						MSVE.tmpi[1] = 0;
						break;
					}

					case 0x10:
					default:
					{/* manual mode */
						MSVE.tmpi[1] = 5;
						break;
					}
				}
			}
			else
			if (MSVE.SELECT)
			{
				switch(MSVE.tmpi[3])
				{
					case 0x00:
					{/* DIAG MASK */
						MSVE.tmpi[3] = 0x01;
						break;
					}

					case 0x01:
					{/* val == RLY[i].val */
						MSVE.tmpi[3] = 0x03;
						break;
					}

					case 0x03:
					{/* val >= RLY[i].val */
						MSVE.tmpi[3] = 0x02;
						break;
					}

					case 0x02:
					{/* val > RLY[i].val */
						MSVE.tmpi[3] = 0x04;
						break;
					}

					case 0x04:
					{/* val < RLY[i].val */
						MSVE.tmpi[3] = 0x05;
						break;
					}

					case 0x05:
					{/* val <= RLY[i].val */
						MSVE.tmpi[3] = 0x06;
						break;
					}

					case 0x06:
					{/* val != RLY[i].val */
						MSVE.tmpi[3] = 0x20;
						break;
					}

					case 0x20:
					{/* toggle mode */
						MSVE.tmpi[3] = 0x30;
						break;
					}

					case 0x30:
					{/* DIAG[0] */
						MSVE.tmpi[3] = 0x40;
						break;
					}

					case 0x40:
					{/* DIAG[1] */
						MSVE.tmpi[3] = 0xFF;
						break;
					}

					case 0xFF:
					{/* auto mode - relay is actuated in another part of the program */
						MSVE.tmpi[3] = 0x10;
						break;
					}

					case 0x10:
					default:
					{/* manual mode */
						MSVE.tmpi[3] = 0x00;
						break;
					}
				}
			}
			else
			if (MSVE.VALUE)
			{
				switch(MSVE.tmpi[3])
				{
					case 0x00:
					{/* DIAG MASK */
						MSVE.tmpi[3] = 0x10;
						break;
					}

					case 0x01:
					{/* val == RLY[i].val */
						MSVE.tmpi[3] = 0x00;
						break;
					}

					case 0x03:
					{/* val >= RLY[i].val */
						MSVE.tmpi[3] = 0x01;
						break;
					}

					case 0x02:
					{/* val > RLY[i].val */
						MSVE.tmpi[3] = 0x03;
						break;
					}

					case 0x04:
					{/* val < RLY[i].val */
						MSVE.tmpi[3] = 0x02;
						break;
					}

					case 0x05:
					{/* val <= RLY[i].val */
						MSVE.tmpi[3] = 0x04;
						break;
					}

					case 0x06:
					{/* val != RLY[i].val */
						MSVE.tmpi[3] = 0x05;
						break;
					}

					case 0x20:
					{/* toggle mode */
						MSVE.tmpi[3] = 0x06;
						break;
					}

					case 0x30:
					{/* DIAG[0] */
						MSVE.tmpi[3] = 0x20;
						break;
					}

					case 0x40:
					{/* DIAG[1] */
						MSVE.tmpi[3] = 0x30;
						break;
					}

					case 0xFF:
					{/* auto mode - relay is actuated in another part of the program */
						MSVE.tmpi[3] = 0x40;
						break;
					}

					case 0x10:
					default:
					{/* manual mode */
						MSVE.tmpi[3] = 0xFF;
						break;
					}
				}
			}

			break;
		}

		case 2:
		{/* variable select */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				
				if (RUSS)
				{
					Get_Russ_Line(132,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s ", MSVE.tmpi[0]+1, OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d Relay Variable  ", MSVE.tmpi[0]+1);	//R132
				sprintf(LCD_DISPLAY[1],"");
				MSVE.tmpi[3] = RLY[MSVE.tmpi[0]].v.val;
			}

			if (MSVE.tmpi[3]<0)
			{
				MSVE.tmpi[3] = HART_Lookup_n((int*)&HART_DV_Table) - 1;
			}

			MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DV_Table);
			if ((MSVE.ptmpv==(VAR*)0) || (MSVE.ptmpv==&REG_DUMMY))
			{
				MSVE.tmpi[3] = 0;
				MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DV_Table);
			}

			if (RUSS)
			{
				Get_Russ_Line(133,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s %d", OUT_STR, MSVE.tmpi[3]);
			}
			else
				sprintf(LCD_DISPLAY[2],"Variable Index: %d", MSVE.tmpi[3]);	//R133
			
			if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
			{
				if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
					sprintf(LCD_DISPLAY[3],"%s", OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[3],"%s", MSVE.ptmpv->name); //R_UHOH

			if (MSVE.ENTER)
			{
				RLY[MSVE.tmpi[0]].class = MSVE.ptmpv->class;
				RLY[MSVE.tmpi[0]].unit = MSVE.ptmpv->unit & 0xFF;
				RLY[MSVE.tmpi[0]].v.val = MSVE.tmpi[3];
				Set_RLY_Units(0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				RLY[MSVE.tmpi[0]].class = MSVE.ptmpv->class;
				if (RLY[MSVE.tmpi[0]].MODE==0x00) MSVE.tmpi[1] = 6;
				else MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
			}

			break;
		}

		case 3:
		{/* unit */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				
				if (RUSS)
				{
					Get_Russ_Line(134,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", OUT_STR, MSVE.tmpi[0]+1);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d Relay Unit Code ", MSVE.tmpi[0]+1);	//R134
				
				Get_Class(RLY[MSVE.tmpi[0]].class, MSVE.str[3]);
				
				if (RUSS)
				{
					Get_Russ_Line(37,OUT_STR,0);
					sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR, MSVE.str[3]);
				}
				else
					sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37
				
				MSVE.tmpi[3] = RLY[MSVE.tmpi[0]].unit & 0xFF;
			}

			Get_Unit(RLY[MSVE.tmpi[0]].class, MSVE.tmpi[3], MSVE.str[3]);

			if (RUSS)
			{
				Get_Russ_Line(254,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
				
				Get_Russ_Line(38,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
			}
			else
			{
				sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
				sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38	//R38
			}

			if (MSVE.ENTER)
			{
				RLY[MSVE.tmpi[0]].unit = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				if (RLY[MSVE.tmpi[0]].class!=c_not_classified) MSVE.tmpi[3] = Get_Next_Unit(RLY[MSVE.tmpi[0]].class, MSVE.tmpi[3]);
			}
			else
			if (MSVE.VALUE)
			{
				if (RLY[MSVE.tmpi[0]].class!=c_not_classified) MSVE.tmpi[3] = Get_Prev_Unit(RLY[MSVE.tmpi[0]].class, MSVE.tmpi[3]);
			}

			break;
		}

		case 4:
		{/* value */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = RLY[MSVE.tmpi[0]].class;
				MSVE.tmpv.unit = RLY[MSVE.tmpi[0]].unit;
				MSVE.tmpv.calc_unit = RLY[MSVE.tmpi[0]].unit;
				MSVE.tmpv.val = RLY[MSVE.tmpi[0]].setpoint;
				MSVE.tmpv.calc_val = RLY[MSVE.tmpi[0]].setpoint;
				if (RUSS)
				{
					Get_Russ_Line(135,OUT_STR,0);
					sprintf(MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(MSVE.str[3], "#%d Relay Setpoint", MSVE.tmpi[0]+1);	//R135
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				RLY[MSVE.tmpi[0]].setpoint = MSVE.tmpv.val;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 5:
		{/* ON/OFF */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(136,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d Relay Status", MSVE.tmpi[0]+1);	//R136
				
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
			}

			RLY[MSVE.tmpi[0]].ON.val &= 0x01;

			if (RLY[MSVE.tmpi[0]].ON.val)
			{
				sprintf(ENG_STR,"         ON");		//R137
				Print_To_LCD(3, 137, ENG_STR, 8);
			}
			else
			{
				sprintf(ENG_STR,"        Off");		//R138
				Print_To_LCD(3, 138, ENG_STR, 7);
			}

			if (MSVE.ENTER)
			{
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}
			else
			if (MSVE.SELECT || MSVE.VALUE)
			{
				RLY[MSVE.tmpi[0]].ON.val ^= 0x01;
			}

			break;
		}

		case 6:
		{/* status/diag mask */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(139,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"   #%d %s", MSVE.tmpi[0]+1, OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"   #%d Relay Mask", MSVE.tmpi[0]+1);	//R139
			
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				RLY[MSVE.tmpi[0]].STATUS_MASK &= 0xFFFF;
				sprintf(LCD_DISPLAY[3],"%04X", RLY[MSVE.tmpi[0]].STATUS_MASK);
			}

			if (MSVE.ENTER && MSVE.CURSOR_ENABLED)
			{
				MSVE.CURSOR_ENABLED = FALSE;
				sscanf(LCD_DISPLAY[3], "%04X", &RLY[MSVE.tmpi[0]].STATUS_MASK);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}
			else
			if (MSVE.SELECT)
			{
				if (!MSVE.CURSOR_ENABLED)
				{
					MSVE.CURSOR_ENABLED = TRUE;
					MSVE.CURSOR_ROW = 3;
					MSVE.CURSOR_COL = 3;
				}
				else
				{
					MSVE.CURSOR_COL--;
					if (MSVE.CURSOR_COL<0)
					{
						MSVE.CURSOR_COL = 3;
					}
				}
			}
			else
			if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
			{
				if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '9')
				{
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = 'A';
				}
				else
				if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 'F')
				{
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
				}
				else
				{
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
				}
			}

			break;
		}

		case 0:
		{/* main screen to select port number */
			MSVE.MENU_TRAP = FALSE;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[0]++;
				if (MSVE.tmpi[0]>1) MSVE.tmpi[0] = 0;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[0]--;
				if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 1;
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.MENU_TRAP = TRUE;

				MSVE.tmpi[2] = 1;

				MSVE.tmpi[1] = 1;
			}

			if(RUSS)
				Get_Russ_Line(255,OUT_STR,0);
			
			if (RLY[MSVE.tmpi[0]].ON.val)
			{
				if (RUSS)
				{
					Get_Russ_Line(137,OUT_STR2,0);
					sprintf(LCD_DISPLAY[3],"#%d %s  (%s)",MSVE.tmpi[0]+1,OUT_STR,OUT_STR2);
				}
				else
					sprintf(LCD_DISPLAY[3]," #%d Relay (ON)",MSVE.tmpi[0]+1);	//R255 + R137
			}
			else
			{
				if (RUSS)
				{
					Get_Russ_Line(138,OUT_STR2,0);
					sprintf(LCD_DISPLAY[3],"#%d %s (%s)",MSVE.tmpi[0]+1,OUT_STR,OUT_STR2);
				}
				else
					sprintf(LCD_DISPLAY[3]," #%d Relay (OFF)",MSVE.tmpi[0]+1);	//R255 + R138
			}

			break;
		}

		default:
		{
			MSVE.FRESH = TRUE;
			break;
		}
	}
}

/****************************************************************************/
void MENU_AI_CFG(void)
{
	unsigned int ui;
	char u[8];
	char u1[8];
	float t;
	int i;

	if (MSVE.FRESH)
	{
		for (i=0;i<AI_NLOOPS;i++)
		{
			if (AI[i].present) break;
		}

		if (i==AI_NLOOPS)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"    Configure AI");		//R140
		Print_To_LCD(0, 140, ENG_STR, 1);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		//R90
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	//R91
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = i;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
	}

	if (MSVE.tmpi[2])
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = TRUE;
		MSVE.CURSOR_ENABLED = FALSE;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:
		{/* variable select */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				
				if (RUSS)
				{
					Get_Russ_Line(141,OUT_STR,0);
					sprintf(LCD_DISPLAY[0]," #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AI Variable", MSVE.tmpi[0]+1);	//R141
				
				sprintf(LCD_DISPLAY[1],"");
				MSVE.tmpi[3] = AI[MSVE.tmpi[0]].v.val;
			}

			if (MSVE.tmpi[3]<-1)
			{
				MSVE.tmpi[3] = HART_Lookup_n((int*)&HART_DVINPUT_Table) - 1;
			}

			if (MSVE.tmpi[3]!=-1)
			{
				MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DVINPUT_Table);
				if ((MSVE.ptmpv==(VAR*)0) || (MSVE.ptmpv==&REG_DUMMY))
				{
					MSVE.tmpi[3] = -1;
					MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DVINPUT_Table);
				}
			}

			if (MSVE.tmpi[3]==-1)
			{
				if (RUSS)
				{
					Get_Russ_Line(133,OUT_STR,0);
					sprintf(LCD_DISPLAY[2],"%s: ?",OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[2],"Variable Index: ?");	//R133
				
				sprintf(ENG_STR,"Disabled");				//R49
				Print_To_LCD(3, 49, ENG_STR, -1);
				
			}
			else
			{
				if (RUSS)
				{
					Get_Russ_Line(133,OUT_STR,0);
					sprintf(LCD_DISPLAY[2],"%s: %d", OUT_STR, MSVE.tmpi[3]);
				}
				else
					sprintf(LCD_DISPLAY[2],"Variable Index: %d", MSVE.tmpi[3]);	//R133
				
				if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
				{
					if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
						sprintf(LCD_DISPLAY[3],"%s", OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[3],"%s", MSVE.ptmpv->name); //R_UHOH
			}

			if (MSVE.ENTER)
			{
				if (AI[MSVE.tmpi[0]].v.val != MSVE.tmpi[3])
				{
					AI[MSVE.tmpi[0]].v.val = MSVE.tmpi[3];
					AI[MSVE.tmpi[0]].class.val = MSVE.ptmpv->class;
					AI[MSVE.tmpi[0]].unit.val = MSVE.ptmpv->unit & 0xFF;
					Set_Units(0);

					VAR_Update(&AI[MSVE.tmpi[0]].LRV, 0.0,0,0);
					VAR_Update(&AI[MSVE.tmpi[0]].URV, 0.0,0,0);

					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				AI[MSVE.tmpi[0]].class.val = MSVE.ptmpv->class;
				Set_Units(0);
				if (AI[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 0;
				else MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
			}

			break;
		}

		case 2:
		{/* unit */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(142,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1, OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d AI Unit Code", MSVE.tmpi[0]+1);	//R142
				
				Get_Class(AI[MSVE.tmpi[0]].class.val, MSVE.str[3]);
				if (RUSS)
				{
					Get_Russ_Line(37,OUT_STR,0);
					sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
				}
				else
					sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37
				MSVE.tmpi[3] = AI[MSVE.tmpi[0]].unit.val & 0xFF;
			}

			Get_Unit(AI[MSVE.tmpi[0]].class.val, MSVE.tmpi[3], MSVE.str[3]);

			if (RUSS)
			{
				Get_Russ_Line(254,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
				
				Get_Russ_Line(38,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
			}
			else
			{
				sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
				sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38	//R38
			}

			if (MSVE.ENTER)
			{
				if (AI[MSVE.tmpi[0]].unit.val != MSVE.tmpi[3])
				{
					MSVE.ptmpv = HART_Lookup(AI[MSVE.tmpi[0]].v.val, &ui, (int*)&HART_DVINPUT_Table);
					VAR_Update(&AI[MSVE.tmpi[0]].LRV, Convert(AI[MSVE.tmpi[0]].class.val, AI[MSVE.tmpi[0]].unit.val, MSVE.tmpi[3], AI[MSVE.tmpi[0]].LRV.val, 0, MSVE.ptmpv->aux),0,0);
					VAR_Update(&AI[MSVE.tmpi[0]].URV, Convert(AI[MSVE.tmpi[0]].class.val, AI[MSVE.tmpi[0]].unit.val, MSVE.tmpi[3], AI[MSVE.tmpi[0]].URV.val, 0, MSVE.ptmpv->aux),0,0);
					AI[MSVE.tmpi[0]].unit.val = MSVE.tmpi[3];
					Set_Units(0);
					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				Set_Units(0);

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				if (AI[MSVE.tmpi[0]].class.val!=c_not_classified) MSVE.tmpi[3] = Get_Next_Unit(AI[MSVE.tmpi[0]].class.val, MSVE.tmpi[3]);
			}
			else
			if (MSVE.VALUE)
			{
				if (AI[MSVE.tmpi[0]].class.val!=c_not_classified) MSVE.tmpi[3] = Get_Prev_Unit(AI[MSVE.tmpi[0]].class.val, MSVE.tmpi[3]);
			}

			break;
		}

		case 3:
		{/* LRV */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AI[MSVE.tmpi[0]].LRV.class;
				MSVE.tmpv.unit = AI[MSVE.tmpi[0]].LRV.unit;
				MSVE.tmpv.calc_unit = AI[MSVE.tmpi[0]].LRV.unit;
				MSVE.tmpv.val = AI[MSVE.tmpi[0]].LRV.val;
				MSVE.tmpv.calc_val = AI[MSVE.tmpi[0]].LRV.val;
				
				if (RUSS)
				{
					Get_Russ_Line(143,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], "#%d AI LRV", MSVE.tmpi[0]+1); //R143
				
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].LRV, MSVE.tmpv.val,0,0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 4:
		{/* URV */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AI[MSVE.tmpi[0]].URV.class;
				MSVE.tmpv.unit = AI[MSVE.tmpi[0]].URV.unit;
				MSVE.tmpv.calc_unit = AI[MSVE.tmpi[0]].URV.unit;
				MSVE.tmpv.val = AI[MSVE.tmpi[0]].URV.val;
				MSVE.tmpv.calc_val = AI[MSVE.tmpi[0]].URV.val;
				if (RUSS)
				{
					Get_Russ_Line(144,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], "#%d AI URV", MSVE.tmpi[0]+1); //R144
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].URV, MSVE.tmpv.val,0,0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 5:
		{/* trim 4mA */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				
				if (RUSS)
				{
					Get_Russ_Line(145,OUT_STR,0);
					Get_Russ_Line(256,OUT_STR2,0);
					sprintf(LCD_DISPLAY[0],"#%d %s %s", MSVE.tmpi[0]+1,OUT_STR,OUT_STR2);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AI Trim 4mA", MSVE.tmpi[0]+1);		//R145 + R256
				
				sprintf(ENG_STR,"SELECT = RESET");			//R146
				Print_To_LCD(2, 146, ENG_STR, -1);
				sprintf(ENG_STR,"ENTER  = TRIM");	//R147
				Print_To_LCD(3, 147, ENG_STR, -1);
				MSVE.tmpf[0] = AI[MSVE.tmpi[0]].TRIM_MIN_C;
			}
			
			if (RUSS)
			{
				Get_Russ_Line(148,OUT_STR,0);
				Get_Russ_Line(256,OUT_STR2,0);
				sprintf(LCD_DISPLAY[1],"%s %s(%5.3f)",OUT_STR,OUT_STR2,(REG_ADC[MSVE.tmpi[0]+ADC_Ain1].val * 10.0));
			}
			else
				sprintf(LCD_DISPLAY[1],"Connect  4mA(%5.3f)", (REG_ADC[MSVE.tmpi[0]+ADC_Ain1].val * 10.0));	//R148 + R256

			if (MSVE.ENTER)
			{
			/*	VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MIN, 0.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MIN_C = REG_ADC[MSVE.tmpi[0]+ADC_Ain1].val * 10.0;
				Update_Flags_Goto_Next_Menu(1,1);   */ 
				MSVE.tmpi[2] = 1;              
				MSVE.tmpi[1] = 51;            /*Add are you sure screens for LCD RS*/
			}

			if (MSVE.SELECT)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MIN, 0.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AI[MSVE.tmpi[0]].CURRENT, reg_direct_bmin, 0, 0);
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MAX, 32767.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AI[MSVE.tmpi[0]].CURRENT, reg_direct_bmax, 0, 0);
				Update_Flags_Goto_Next_Menu(1,1);
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 7;
			}

			if (MSVE.MENU /*|| MSVE.ENTER*/)     /*Add are you sure screens for LCD RS*/
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}
		/**********Add are you sure screens for LCD RS**********/
        case 51: 
        {
		   	if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"   Press SELECT if");	//R149
				Print_To_LCD(0, 149, ENG_STR, 1);
				
				sprintf(ENG_STR,"    you are sure");		//R150
				Print_To_LCD(1, 150, ENG_STR, 5);
				
				sprintf(LCD_DISPLAY[2],""); 
				
				sprintf(ENG_STR," Press MENU to skip"); 	//R164
				Print_To_LCD(3, 164, ENG_STR, 2);
			} 
		   	if (MSVE.SELECT)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MIN, 0.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MIN_C = REG_ADC[MSVE.tmpi[0]+ADC_Ain1].val * 10.0;
				Update_Flags_Goto_Next_Menu(1,1);
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 5;	
			} 
		    if (MSVE.MENU)
			{   
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 6;
			}   
			
			break;
        }
        /************Add are you sure screens for LCD RS************/
		case 6:
		{/* trim 20mA */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(145,OUT_STR,0);
					Get_Russ_Line(257,OUT_STR2,0);
					sprintf(LCD_DISPLAY[0],"#%d %s %s", MSVE.tmpi[0]+1,OUT_STR,OUT_STR2);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AI Trim 20mA", MSVE.tmpi[0]+1);	//R145 + R257
				sprintf(ENG_STR,"SELECT = RESET");			//R146
				Print_To_LCD(2, 146, ENG_STR, -1);
				sprintf(ENG_STR,"ENTER  = TRIM");	//R147
				Print_To_LCD(3, 147, ENG_STR, -1);
				MSVE.tmpf[0] = AI[MSVE.tmpi[0]].TRIM_MAX_C;
			}
			
			if (RUSS)
			{
				Get_Russ_Line(148,OUT_STR,0);
				Get_Russ_Line(257,OUT_STR2,0);
				sprintf(LCD_DISPLAY[1],"%s %s(%5.3f)",OUT_STR,OUT_STR2,(REG_ADC[MSVE.tmpi[0]+ADC_Ain1].val * 10.0));
			}
			else
				sprintf(LCD_DISPLAY[1],"Connect 20mA(%5.3f)",(REG_ADC[MSVE.tmpi[0]+ADC_Ain1].val * 10.0)); //R148 + R257

			if (MSVE.ENTER)
			{
			/*	VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MAX, 32767.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MAX_C = REG_ADC[MSVE.tmpi[0]+ADC_Ain1].val * 10.0;
				Update_Flags_Goto_Next_Menu(1,1);   */
				MSVE.tmpi[2] = 1;              
				MSVE.tmpi[1] = 61;            /*Add are you sure screens for LCD RS*/
			}

			if (MSVE.SELECT)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MIN, 0.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AI[MSVE.tmpi[0]].CURRENT, reg_direct_bmin, 0, 0);
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MAX, 32767.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AI[MSVE.tmpi[0]].CURRENT, reg_direct_bmax, 0, 0);
				Update_Flags_Goto_Next_Menu(1,1);
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 7;
			}

			if (MSVE.MENU /*|| MSVE.ENTER*/) /*Add are you sure screens for LCD RS*/
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}
        
        /**********Add are you sure screens for LCD RS**********/
        case 61: 
        {
		   	if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"   Press SELECT if");	//R149
				Print_To_LCD(0, 149, ENG_STR, 1);
				
				sprintf(ENG_STR,"    you are sure");		//R150
				Print_To_LCD(1, 150, ENG_STR, 5);
				sprintf(LCD_DISPLAY[2],""); 
				
				sprintf(ENG_STR," Press MENU to skip"); 	//R164
				Print_To_LCD(3, 164, ENG_STR, 2);
			} 
		   	if (MSVE.SELECT)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MAX, 32767.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MAX_C = REG_ADC[MSVE.tmpi[0]+ADC_Ain1].val * 10.0;
				Update_Flags_Goto_Next_Menu(1,1);
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 6;	
			} 
		    if (MSVE.MENU)
			{   
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 7;
			}   
			
			break;
        }
        /************Add are you sure screens for LCD RS************/
        
		case 7:
		{/* DAMP */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = c_time;
				MSVE.tmpv.unit = u_time_sec;
				MSVE.tmpv.calc_unit = u_time_sec;
				if (AI[MSVE.tmpi[0]].CURRENT.dampening<0.0) AI[MSVE.tmpi[0]].CURRENT.dampening = 0.0;
				MSVE.tmpv.val = AI[MSVE.tmpi[0]].CURRENT.dampening;
				MSVE.tmpv.calc_val = AI[MSVE.tmpi[0]].CURRENT.dampening;
				
				if (RUSS)
				{
					Get_Russ_Line(152,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], "#%d AI Dampening", MSVE.tmpi[0]+1);	//R152
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 4, 1, 0, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 4, 1, 0, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				AI[MSVE.tmpi[0]].CURRENT.dampening = MSVE.tmpv.val;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 8:
		{/* display current */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(154,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"%s #%d",OUT_STR,MSVE.tmpi[0]+1);
				}
				else
					sprintf(LCD_DISPLAY[0],"  Analog Input #%d",MSVE.tmpi[0]+1);		//R154
				
				sprintf(LCD_DISPLAY[1],"");
				MSVE.ptmpv = HART_Lookup(AI[MSVE.tmpi[0]].v.val, &ui, (int*)&HART_DVINPUT_Table);
			}

			Get_Unit(AI[MSVE.tmpi[0]].CURRENT.class, AI[MSVE.tmpi[0]].CURRENT.unit, u);
			Get_Unit(AI[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.class, AI[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.unit, u1);
			sprintf(LCD_DISPLAY[1],"%6.2f %s / %6.2f %s", AI[MSVE.tmpi[0]].CURRENT.val, u, AI[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.val, u1);

			if (AI[MSVE.tmpi[0]].v.val>=0)
			{
				Get_Unit(AI[MSVE.tmpi[0]].class.val, AI[MSVE.tmpi[0]].unit.val, u);
				
				if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
				{
					if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
						sprintf(LCD_DISPLAY[2],"%s", OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[2],"%s", MSVE.ptmpv->name); //R_UHOH
				
				sprintf(LCD_DISPLAY[3],"%6.2f %s", AI[MSVE.tmpi[0]].val, u);
			}
			else
			{
				sprintf(ENG_STR,"Disabled");	//R49
				Print_To_LCD(2, 49, ENG_STR, -1);
				sprintf(LCD_DISPLAY[3],"");
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 0:
		{/* main screen to select port number */
			MSVE.MENU_TRAP = FALSE;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[0]++;
				if (MSVE.tmpi[0]>=AI_NLOOPS) MSVE.tmpi[0] = 0;

				while (!AI[MSVE.tmpi[0]].present)
				{
					MSVE.tmpi[0]++;
					if (MSVE.tmpi[0]>=AI_NLOOPS) MSVE.tmpi[0] = 0;
				}
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[0]--;
				if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = AI_NLOOPS-1;

				while (!AI[MSVE.tmpi[0]].present)
				{
					MSVE.tmpi[0]--;
					if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = AI_NLOOPS-1;
				}
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.MENU_TRAP = TRUE;

				MSVE.tmpi[2] = 1;

				MSVE.tmpi[1] = 1;
			}

			if (RUSS)
			{
				Get_Russ_Line(154,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s #%d",OUT_STR,MSVE.tmpi[0]+1);
			}
			else
				sprintf(LCD_DISPLAY[3],"  Analog Input #%d",MSVE.tmpi[0]+1);	//R154

			break;
		}

		default:
		{
			MSVE.FRESH = TRUE;
			break;
		}
	}
}

/****************************************************************************/
void MENU_AO_CFG(void)
{                                                
	unsigned int ui;
	char u[8];
	char u1[8];
	float t;
	int i;

	if (MSVE.FRESH)
	{
		for (i=0;i<AO_NLOOPS;i++)
		{
			if (AO[i].present) break;
		}

		if (i==AO_NLOOPS)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"    Configure AO");		//R156
		Print_To_LCD(0, 156, ENG_STR, -1);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		//R90
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	//R91
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = i; // number of Analog Outputs?
		MSVE.tmpi[1] = 0; // submenu screen # ???
		MSVE.tmpi[2] = 0; // flag for preparing new screen?
		MSVE.tmpi[3] = 0; // the current Variable Index?
		MSVE.tmpi[4] = 0; // not used in this function
	}

	if (MSVE.tmpi[2])
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = TRUE;
		MSVE.CURSOR_ENABLED = FALSE;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:
		{/* variable select */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(157,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d AO Variable", MSVE.tmpi[0]+1);	//R157

				sprintf(LCD_DISPLAY[1],"");
				MSVE.tmpi[3] = AO[MSVE.tmpi[0]].v.val;
			}

			//wrap-around
			if (MSVE.tmpi[3]<0)
			{
				MSVE.tmpi[3] = HART_Lookup_n((int*)&HART_DVOUTPUT_Table) - 1;
			}
			

			ui = 0;
			MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DVOUTPUT_Table);
			if (ui == HART_RESP_Invalid_Selection)
			{//wrap-around -- reached the end of the table
				MSVE.tmpi[3] = 0;
				MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DVOUTPUT_Table);
			}

			if (RUSS)
			{
				Get_Russ_Line(133,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s: %d", OUT_STR,MSVE.tmpi[3]);
			}
			else
				sprintf(LCD_DISPLAY[2],"Variable Index: %d", MSVE.tmpi[3]);	//R133
			
			if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
			{
				if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
					sprintf(LCD_DISPLAY[3],"%s", OUT_STR);
			}
			else	
			{				
					if ((MSVE.ptmpv==(VAR*)0) || (MSVE.ptmpv==&REG_DUMMY))
						sprintf(LCD_DISPLAY[3],"????");
					else			
						sprintf(LCD_DISPLAY[3],"%s", MSVE.ptmpv->name);
			}


			if (MSVE.ENTER)
			{
				if (AO[MSVE.tmpi[0]].v.val != MSVE.tmpi[3])
				{
					AO[MSVE.tmpi[0]].v.val = MSVE.tmpi[3];

					AO[MSVE.tmpi[0]].class.val = MSVE.ptmpv->class;
					AO[MSVE.tmpi[0]].unit.val = MSVE.ptmpv->unit & 0xFF;
					Set_Units(0);

					VAR_Update(&AO[MSVE.tmpi[0]].LRV, 0.0,0,0);
					VAR_Update(&AO[MSVE.tmpi[0]].URV, 0.0,0,0);
					AO[MSVE.tmpi[0]].CURRENT.dampening = 0.0;
					AO[MSVE.tmpi[0]].PID_setpoint = 0.0;  
					/*TYPE change Add PID to stream table RS*/
					VAR_Update(&AO[MSVE.tmpi[0]].P, 0.1,0,0);     
					VAR_Update(&AO[MSVE.tmpi[0]].I, 1.0,0,0);     
					VAR_Update(&AO[MSVE.tmpi[0]].D, 0.0,0,0);     

					if (AO[MSVE.tmpi[0]].v.val>=0)
					{
						AO[MSVE.tmpi[0]].MANUAL = FALSE;
					}
					else
					{
						AO[MSVE.tmpi[0]].MANUAL = TRUE;
					}

					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				AO[MSVE.tmpi[0]].class.val = MSVE.ptmpv->class;
				Set_Units(0);
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 5;
				else MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
			}

			break;
		}

		case 2:
		{/* unit */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(160,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AO Unit Code", MSVE.tmpi[0]+1);	//R160
				
				Get_Class(AO[MSVE.tmpi[0]].class.val, MSVE.str[3]);
				
				if (RUSS)
				{
					Get_Russ_Line(37,OUT_STR,0);
					sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
				}
				else
					sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37

				MSVE.tmpi[3] = AO[MSVE.tmpi[0]].unit.val & 0xFF;
			}

			Get_Unit(AO[MSVE.tmpi[0]].class.val, MSVE.tmpi[3], MSVE.str[3]);

			if (RUSS)
			{
				Get_Russ_Line(254,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
				
				Get_Russ_Line(38,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
			}
			else
			{
				sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
				sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38	//R38
			}

			if (MSVE.ENTER)
			{
				if (AO[MSVE.tmpi[0]].unit.val != MSVE.tmpi[3])
				{
					MSVE.ptmpv = HART_Lookup(AO[MSVE.tmpi[0]].v.val, &ui, (int*)&HART_DV_Table);
					VAR_Update(&AO[MSVE.tmpi[0]].LRV, Convert(AO[MSVE.tmpi[0]].class.val, AO[MSVE.tmpi[0]].unit.val, MSVE.tmpi[3], AO[MSVE.tmpi[0]].LRV.val, 0, MSVE.ptmpv->aux),0,0);
					VAR_Update(&AO[MSVE.tmpi[0]].URV, Convert(AO[MSVE.tmpi[0]].class.val, AO[MSVE.tmpi[0]].unit.val, MSVE.tmpi[3], AO[MSVE.tmpi[0]].URV.val, 0, MSVE.ptmpv->aux),0,0);
					AO[MSVE.tmpi[0]].unit.val = MSVE.tmpi[3];
					Set_Units(0);
					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				Set_Units(0);

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				if (AO[MSVE.tmpi[0]].class.val!=c_not_classified) MSVE.tmpi[3] = Get_Next_Unit(AO[MSVE.tmpi[0]].class.val, MSVE.tmpi[3]);
			}
			else
			if (MSVE.VALUE)
			{
				if (AO[MSVE.tmpi[0]].class.val!=c_not_classified) MSVE.tmpi[3] = Get_Prev_Unit(AO[MSVE.tmpi[0]].class.val, MSVE.tmpi[3]);
			}

			break;
		}

		case 3:
		{/* LRV */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AO[MSVE.tmpi[0]].LRV.class;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].LRV.unit;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].LRV.unit;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].LRV.val;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].LRV.val;
				if (RUSS)
				{
					Get_Russ_Line(258,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO LRV", MSVE.tmpi[0]+1);	//R258
			}
			
			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				VAR_Update(&AO[MSVE.tmpi[0]].LRV, MSVE.tmpv.val,0,0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 4:
		{/* URV */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AO[MSVE.tmpi[0]].URV.class;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].URV.unit;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].URV.unit;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].URV.val;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].URV.val;
				
				if (RUSS)
				{
					Get_Russ_Line(259,OUT_STR,0);
					sprintf (MSVE.str[3], " #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO URV", MSVE.tmpi[0]+1);	//R259
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				VAR_Update(&AO[MSVE.tmpi[0]].URV, MSVE.tmpv.val,0,0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 5:
		{/* trim 4mA */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(161,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AO Trim 4mA", MSVE.tmpi[0]+1);	//R161
				
				sprintf(ENG_STR,"Connect Meter");			//R162
				Print_To_LCD(1, 162, ENG_STR, -1);
				
				sprintf(ENG_STR,"SELECT = RESET");			//R146
				Print_To_LCD(2, 146, ENG_STR, -1);
				
				sprintf(ENG_STR,"ENTER  = TRIM");	//R147
				Print_To_LCD(3, 147, ENG_STR, -1);
				
				MSVE.tmpf[0] = AO[MSVE.tmpi[0]].TRIM_MIN_C;
			}

			if (MSVE.SELECT)
			{
				if (((MSVE.tmpi[0]+DAC_Aout1)>=DAC_Aout6) && ((MSVE.tmpi[0]+DAC_Aout1)<=DAC_Aout9)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, TMIN2,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, TMIN,0,0);
				AO[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, reg_direct_bmin, 0, 0);
				if (((MSVE.tmpi[0]+DAC_Aout1)>=DAC_Aout6) && ((MSVE.tmpi[0]+DAC_Aout1)<=DAC_Aout9)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, TMAX2,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, TMAX,0,0);
				AO[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, reg_direct_bmax, 0, 0);

				Update_Flags_Goto_Next_Menu(1,1);

				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1] = 7;
			}

			if (MSVE.ENTER)
			{
				if (((MSVE.tmpi[0]+DAC_Aout1)>=DAC_Aout6) && ((MSVE.tmpi[0]+DAC_Aout1)<=DAC_Aout9)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, TMIN2,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, TMIN,0,0);
				AO[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, reg_direct_bmin, 0, 0);
				AO[MSVE.tmpi[0]].MANUAL = TRUE;
				VAR_Update(&AO[MSVE.tmpi[0]].CURRENT, AO[MSVE.tmpi[0]].TRIM_MIN_C, 0, 0);
				Update_Flags_Goto_Next_Menu(1,1);

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 51;
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 51:
		{/* trim 4mA */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AO[MSVE.tmpi[0]].CURRENT.class;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].CURRENT.calc_unit;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].CURRENT.calc_unit;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].TRIM_MIN_C;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].TRIM_MIN_C;
				if (RUSS)
				{
					Get_Russ_Line(161,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO Trim 4mA", MSVE.tmpi[0]+1);  //R161
			}
            
			if (RUSS)
			{
				Get_Russ_Line(163,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 6, 3, 0, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Meter Value", 6, 3, 0, 0, &MSVE.tmpv, 1, 0);	//R163
			
			sprintf(ENG_STR," Press MENU to skip"); 	//R164
			Print_To_LCD(1, 164, ENG_STR, 4);
   
			//Add are you sure screens for LCD RS
            
			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].TRIM_MIN_C = MSVE.tmpv.val;
				AO[MSVE.tmpi[0]].MANUAL = FALSE;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].MANUAL = FALSE;
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 6;
			}

			break;
		}

		case 6:
		{/* trim 20mA */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(165,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d AO Trim 20mA", MSVE.tmpi[0]+1);	//R165
				
				sprintf(ENG_STR,"Connect Meter");			//R162
				Print_To_LCD(1, 162, ENG_STR, -1);
				
				sprintf(ENG_STR,"SELECT = RESET");			//R146
				Print_To_LCD(2, 146, ENG_STR, -1);
				
				sprintf(ENG_STR,"ENTER  = TRIM");	//R147
				Print_To_LCD(3, 147, ENG_STR, -1);
				
				MSVE.tmpf[0] = AO[MSVE.tmpi[0]].TRIM_MAX_C;
			}

			if (MSVE.SELECT)
			{
				if (((MSVE.tmpi[0]+DAC_Aout1)>=DAC_Aout6) && ((MSVE.tmpi[0]+DAC_Aout1)<=DAC_Aout9)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, TMIN2,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, TMIN,0,0);
				AO[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, reg_direct_bmin, 0, 0);
				if (((MSVE.tmpi[0]+DAC_Aout1)>=DAC_Aout6) && ((MSVE.tmpi[0]+DAC_Aout1)<=DAC_Aout9)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, TMAX2,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, TMAX,0,0);
				AO[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, reg_direct_bmax, 0, 0);

				Update_Flags_Goto_Next_Menu(1,1);

				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1] = 7;
			}

			if (MSVE.ENTER)
			{
				if (((MSVE.tmpi[0]+DAC_Aout1)>=DAC_Aout6) && ((MSVE.tmpi[0]+DAC_Aout1)<=DAC_Aout9)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, TMAX2,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, TMAX,0,0);
				AO[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, reg_direct_bmax, 0, 0);
				AO[MSVE.tmpi[0]].MANUAL = TRUE;
				VAR_Update(&AO[MSVE.tmpi[0]].CURRENT, AO[MSVE.tmpi[0]].TRIM_MAX_C, 0, 0);
				Update_Flags_Goto_Next_Menu(1,1);

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 61;
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1]++;
			}

			break;
		}

		case 61:
		{/* trim 20mA */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AO[MSVE.tmpi[0]].CURRENT.class;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].CURRENT.calc_unit;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].CURRENT.calc_unit;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].TRIM_MAX_C;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].TRIM_MAX_C;
				
				if (RUSS)
				{
					Get_Russ_Line(165,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO Trim 20mA", MSVE.tmpi[0]+1);  //R165
			}
            if (RUSS)
			{
				Get_Russ_Line(163,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 6, 3, 0, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Meter Value", 6, 3, 0, 0, &MSVE.tmpv, 1, 0);	//R163
			
			sprintf(ENG_STR," Press MENU to skip"); 	//R164
			Print_To_LCD(1, 164, ENG_STR, 4);

			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].TRIM_MAX_C = MSVE.tmpv.val;
				AO[MSVE.tmpi[0]].MANUAL = FALSE;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].MANUAL = FALSE;
				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1] = 7;
			}

			break;
		}

		case 7:
		{/* Alarm Select */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(166,OUT_STR,0);
					sprintf(LCD_DISPLAY[0]," #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AO Alarm Select", MSVE.tmpi[0]+1);	//R166
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = AO[MSVE.tmpi[0]].ALARM_SELECT & 0x01;
			}

			switch (MSVE.tmpi[3]&0x01)
			{
				case 1:  
					sprintf(ENG_STR,"      LOW (4mA)"); 	//R167
					Print_To_LCD(3, 167, ENG_STR, 5);
					break;
				default: 
					sprintf(ENG_STR,"     HIGH (20mA)");	//R168
					Print_To_LCD(3, 167, ENG_STR, 4);
					break;	
			}

			if (MSVE.SELECT || MSVE.VALUE)
			{
				MSVE.tmpi[3]^=0x01;
			}

			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].ALARM_SELECT = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 8:
		{/* AUTO&PID&DAMP/MANUAL */
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				if (RUSS)
				{
					Get_Russ_Line(169,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"   #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"   #%d AO MODE", MSVE.tmpi[0]+1);	//R169
				
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");

				if ((!AO[MSVE.tmpi[0]].MANUAL) && (AO[MSVE.tmpi[0]].REVERSE)) MSVE.tmpi[3] = 2;
				else if (AO[MSVE.tmpi[0]].MANUAL) MSVE.tmpi[3] = 1;
				else MSVE.tmpi[3] = 0;
			}

			switch (MSVE.tmpi[3])
			{
				case 2:  
					sprintf(ENG_STR," Automatic/Reverse"); 	//R170
					Print_To_LCD(3, 170, ENG_STR, 4);
					break;
				case 1:  
					sprintf(ENG_STR,"       Manual"); 		//R131
					Print_To_LCD(3, 131, ENG_STR, 6);
					break;
				default: 
					sprintf(ENG_STR,"     Automatic"); MSVE.tmpi[3] = 0;	//R171
					Print_To_LCD(3, 171, ENG_STR, 8);
					break;
			}

			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
				if (MSVE.tmpi[3]<0) MSVE.tmpi[3] = 2;
			}

			if (MSVE.ENTER)
			{
				switch (MSVE.tmpi[3])
				{
					case 2:  AO[MSVE.tmpi[0]].MANUAL = 0; AO[MSVE.tmpi[0]].REVERSE = 1; break;
					case 1:  AO[MSVE.tmpi[0]].MANUAL = 1; AO[MSVE.tmpi[0]].REVERSE = 0; break;
					default: AO[MSVE.tmpi[0]].MANUAL = 0; AO[MSVE.tmpi[0]].REVERSE = 0; break;
				}

				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].MANUAL) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1] = 81;
			}

			break;
		}

		case 81:
		{/* DAMP */
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = c_time;
				MSVE.tmpv.unit = u_time_sec;
				MSVE.tmpv.calc_unit = u_time_sec;
				if (AO[MSVE.tmpi[0]].CURRENT.dampening<0.0) AO[MSVE.tmpi[0]].CURRENT.dampening = 0.0;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].CURRENT.dampening;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].CURRENT.dampening;
				if (RUSS)
				{
					Get_Russ_Line(172,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], "#%d AO Dampening", MSVE.tmpi[0]+1);	//R172
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 4, 1, 0, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 4, 1, 0, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].CURRENT.dampening = MSVE.tmpv.val;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 82:
		{/* P */
			if (MSVE.FRESH)
			{
				if (AO[MSVE.tmpi[0]].v.val!=-2)
				{
					MSVE.tmpi[2] = 1;
					MSVE.tmpi[1]++;
					break;
				}

				MSVE.tmpv.class = c_unknown;
				MSVE.tmpv.unit = u_generic_unknown;
				MSVE.tmpv.calc_unit = u_generic_unknown;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].P.val;   /*.val RS*/
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].P.val;    /*.val RS*/
				
				if (RUSS)
					sprintf (MSVE.str[3], "AO #%d %c", MSVE.tmpi[0]+1,(unsigned char) 0xA8);
				else
					sprintf (MSVE.str[3], "AO #%d P", MSVE.tmpi[0]+1); //R_ П - A8
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 9, 4, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 9, 3, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				/*AO[MSVE.tmpi[0]].P = MSVE.tmpv.val;*/
				VAR_Update(&AO[MSVE.tmpi[0]].P, MSVE.tmpv.val, 0, 0); /*TYPE change Add PID to stream table RS*/
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 83:
		{/* I */
			if (MSVE.FRESH)
			{
				if (AO[MSVE.tmpi[0]].v.val!=-2)
				{
					MSVE.tmpi[2] = 1;
					MSVE.tmpi[1]++;
					break;
				}

				MSVE.tmpv.class = c_unknown;
				MSVE.tmpv.unit = u_generic_unknown;
				MSVE.tmpv.calc_unit = u_generic_unknown;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].I.val;        /*.val RS*/
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].I.val;   /*.val RS*/
				
				if (RUSS)
					sprintf (MSVE.str[3], "AO #%d %c", MSVE.tmpi[0]+1,(unsigned char) 0xA5);
				else
					sprintf (MSVE.str[3], "AO #%d I", MSVE.tmpi[0]+1);	//R_ И - A5
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 9, 3, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 9, 3, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				/*AO[MSVE.tmpi[0]].I = MSVE.tmpv.val;  */
				VAR_Update(&AO[MSVE.tmpi[0]].I, MSVE.tmpv.val, 0, 0); /*TYPE change Add PID to stream table RS*/
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 84:
		{/* D */
			if (MSVE.FRESH)
			{
				if (AO[MSVE.tmpi[0]].v.val!=-2)
				{
					MSVE.tmpi[2] = 1;
					MSVE.tmpi[1]++;
					break;
				}

				MSVE.tmpv.class = c_unknown;
				MSVE.tmpv.unit = u_generic_unknown;
				MSVE.tmpv.calc_unit = u_generic_unknown;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].D.val;      /*.val RS*/
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].D.val;  /*.val RS*/
				
				if (RUSS)
					sprintf (MSVE.str[3], "AO #%d %c", MSVE.tmpi[0]+1,(unsigned char) 0xE0);
				else
					sprintf (MSVE.str[3], "AO #%d D", MSVE.tmpi[0]+1);	//R_ Д - E0
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 9, 3, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 9, 3, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				/*AO[MSVE.tmpi[0]].D = MSVE.tmpv.val; */
				VAR_Update(&AO[MSVE.tmpi[0]].D, MSVE.tmpv.val, 0, 0); /*TYPE change Add PID to stream table RS*/
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 85:
		{/* Setpoint */
			if (MSVE.FRESH)
			{
				if (AO[MSVE.tmpi[0]].v.val!=-2)
				{
					MSVE.tmpi[2] = 1;
					MSVE.tmpi[1] = 9;
					break;
				}

				MSVE.tmpv.class = AO[MSVE.tmpi[0]].class.val;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].unit.val;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].unit.val;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].PID_setpoint;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].PID_setpoint;
				
				if (RUSS)
				{
					Get_Russ_Line(260,OUT_STR,0);
					sprintf (MSVE.str[3], " #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO PID Setpoint", MSVE.tmpi[0]+1);	//R260
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	//R153

			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].PID_setpoint = MSVE.tmpv.val;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 9;
			}

			break;
		}

		case 9:
		{/* display current / manual current */

			if ((AO[MSVE.tmpi[0]].v.val>=0) && (!AO[MSVE.tmpi[0]].MANUAL))
			{
				if (MSVE.FRESH)
				{
					MSVE.FRESH = FALSE;
				}
				
				if (RUSS)
				{
					Get_Russ_Line(173,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"%s #%d", OUT_STR, MSVE.tmpi[0]+1);
				}
				else
					sprintf(LCD_DISPLAY[0],"  Analog Output #%d",MSVE.tmpi[0]+1);	//R173
				
				MSVE.ptmpv = HART_Lookup(AO[MSVE.tmpi[0]].v.val, &ui, (int*)&HART_DV_Table);
				Get_Unit(AO[MSVE.tmpi[0]].CURRENT.class, AO[MSVE.tmpi[0]].CURRENT.unit, u);
				Get_Unit(AO[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.class, AO[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.unit, u1);
				sprintf(LCD_DISPLAY[1],"%6.2f %s / %6.2f %s", AO[MSVE.tmpi[0]].CURRENT.val, u, AO[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.val, u1);

				Get_Unit(AO[MSVE.tmpi[0]].class.val, AO[MSVE.tmpi[0]].unit.val, u);
				
				if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
				{
					if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
						sprintf(LCD_DISPLAY[2],"%s", OUT_STR);	//only if we find the russian name
				}
				else
					sprintf(LCD_DISPLAY[2],"%s", MSVE.ptmpv->name); //R_UHOH

				t = Convert(AO[MSVE.tmpi[0]].class.val, MSVE.ptmpv->unit, AO[MSVE.tmpi[0]].unit.val, MSVE.ptmpv->val, 0, MSVE.ptmpv->aux);
				sprintf(LCD_DISPLAY[3],"%6.2f %s", t, u);
			}
			else
			{
				if (RUSS)
				{
					Get_Russ_Line(174,OUT_STR,0);
					sprintf(LCD_DISPLAY[3],"%s #%d", OUT_STR, MSVE.tmpi[0]+1);
				}
				else
					sprintf (MSVE.str[3], "Analog Out #%d", MSVE.tmpi[0]+1);	//R174

				MSVE_Data_Input(MSVE.str[3], "     AO", 6, 3, 0, 0, &AO[MSVE.tmpi[0]].CURRENT, 1, 1);

				if (MSVE.MENU)
				{/* save the last entered current, if manual mode */
					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 0:
		{/* main screen to select port number */
			MSVE.MENU_TRAP = FALSE;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[0]++;
				if (MSVE.tmpi[0]>=AO_NLOOPS) MSVE.tmpi[0] = 0;

				while (!AO[MSVE.tmpi[0]].present)
				{
					MSVE.tmpi[0]++;
					if (MSVE.tmpi[0]>=AO_NLOOPS) MSVE.tmpi[0] = 0;
				}
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[0]--;
				if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = AO_NLOOPS-1;

				while (!AO[MSVE.tmpi[0]].present)
				{
					MSVE.tmpi[0]--;
					if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = AO_NLOOPS-1;
				}
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.MENU_TRAP = TRUE;

				MSVE.tmpi[2] = 1;

				MSVE.tmpi[1] = 1;
			}
			
			if (RUSS)
			{
				Get_Russ_Line(173,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s #%d", OUT_STR, MSVE.tmpi[0]+1);
			}
			else
				sprintf(LCD_DISPLAY[3],"  Analog Output #%d",MSVE.tmpi[0]+1);		//R173

			break;
		}

		default:
		{
			MSVE.FRESH = TRUE;
			break;
		}
	}
}                   

//New RTD trimming submenu  -DA
void MENU_PAGE_TRIM_RTD_SELECT(void)
{
	int i;

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"      Trim RTD      ");	//R175
		Print_To_LCD(0,175, ENG_STR, 4);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		//R90
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	//R91
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
	}

	if (MSVE.tmpi[2]) //tmpi[2] means reset the variable for the next SUBpage
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = TRUE;
		MSVE.CURSOR_ENABLED = FALSE;
	}
	
	switch(MSVE.tmpi[0])
	{						
		case 0:
		{/* main screen to select port number */
			MSVE.MENU_TRAP = FALSE;
			MSVE.FRESH = FALSE;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[1]++;
				if (MSVE.tmpi[1]>=3)
					MSVE.tmpi[1] = 1;
			}
			else if (MSVE.VALUE)
			{
				MSVE.tmpi[1]--;
				if (MSVE.tmpi[1]<1) MSVE.tmpi[1] = 2;
			}

			switch (MSVE.tmpi[1])
			{
				//MAIN PAGE
				case 0: 
				{
					sprintf(ENG_STR,"    SELECT LO/HI    ");	//R176
					Print_To_LCD(3, 176, ENG_STR, 3);
					
					if (MSVE.ENTER)
					{
						MSVE.MENU = TRUE;
						return;
					}
					
					break;
				}
				
				//OPTION TRIM LO
				case 1:
				{
					sprintf(ENG_STR,"      TRIM LO       ");	//R177
					Print_To_LCD(3, 177, ENG_STR, 5);
					
					if (MSVE.ENTER)
					{
						MSVE.tmpi[2] = 1; //set submenu reset flag
						MSVE.tmpi[0] = 1; // go to TRIM LO submenu
					}
					break;				
				}
				
				//OPTION TRIM HI
				case 2:
				{
					sprintf(ENG_STR,"      TRIM HI       ");	//R178
					Print_To_LCD(3, 178, ENG_STR, 4);
					
					if (MSVE.ENTER)
					{
						MSVE.tmpi[2] = 1; //set submenu reset flag
						MSVE.tmpi[0] = 3; // go to TRIM LO submenu
					}
					break;
				}

			}
			

			break;
		}
		
		// TRIM LO
		case 1:
		{
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"    Trim RTD Lo     ");	//R179
				Print_To_LCD(0, 179, ENG_STR, 3);
				sprintf(ENG_STR,"Connect 100 Ohm");	//R180
				Print_To_LCD(1, 180, ENG_STR, -1);
				sprintf(ENG_STR,"ENTER  = TRIM");	//R147 
				Print_To_LCD(3, 147, ENG_STR, -1);
			}
			
			if (RUSS)
			{
				Get_Russ_Line(261,OUT_STR,0);
				sprintf(LCD_DISPLAY[2]," %7.4f %s",RTD_R,OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[2]," %7.4f Ohm",RTD_R); //R261
			//this needs to update real-time
			
			if (MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1; // set submenu reset flag
				MSVE.tmpi[0] = 2; // go to CONFIRMATION TRIM LO 
			}
			
			break;
		}
		
		// CONFIRMATION TRIM LO
		case 2:
		{	
			if (MSVE.FRESH)
			{	
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"    Press SELECT    ");	//R181
				Print_To_LCD(0, 181, ENG_STR, 3);
				sprintf(ENG_STR,"     to CONFIRM     ");	//R182
				Print_To_LCD(1, 182, ENG_STR, 1);
				sprintf(LCD_DISPLAY[2],"--------------------"); 
				sprintf(ENG_STR,"Press MENU to CANCEL"); //R183
				Print_To_LCD(3, 183, ENG_STR, -1);
			} 
			if (MSVE.SELECT)
			{
				RTD_CAL.val= 0;	
				Calibrate_RTD();
				MSVE.tmpi[2] = 1; // set submenu reset flag
				MSVE.tmpi[0] = 5; // go to SUCCESS TRIM LO
							
			} 
			break;
		}
		
		//TRIM HI
		case 3:
		{
			if (MSVE.FRESH)
			{
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"    Trim RTD Hi");	//R184
				Print_To_LCD(0, 184, ENG_STR, 2);
				sprintf(ENG_STR,"Connect 125 Ohm");	//R185
				Print_To_LCD(1, 185, ENG_STR, -1);
				sprintf(ENG_STR,"ENTER  = TRIM");	//R147 
				Print_To_LCD(3, 147, ENG_STR, -1);
			}
			
			if (RUSS)
			{
				Get_Russ_Line(261,OUT_STR,0);
				sprintf(LCD_DISPLAY[2]," %7.4f %s",RTD_R,OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[2]," %7.4f Ohm",RTD_R); //this needs to update real-time
			
			if (MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1; // set submenu reset flag
				MSVE.tmpi[0] = 4; // go to CONFIRMATION TRIM LO 
			}
			
			break;
		}
		
		//CONFIRMATION TRIM HI
		case 4:
		{
			if (MSVE.FRESH)
			{	
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR,"    Press SELECT    ");	//R181
				Print_To_LCD(0, 181, ENG_STR, 3);
				sprintf(ENG_STR,"     to CONFIRM     ");	//R182
				Print_To_LCD(1, 182, ENG_STR, 1);
				sprintf(LCD_DISPLAY[2],"--------------------"); 
				sprintf(ENG_STR,"Press MENU to CANCEL"); //R183
				Print_To_LCD(3, 183, ENG_STR, -1);
			} 
			if (MSVE.SELECT)
			{
				RTD_CAL.val= 1;	
				Calibrate_RTD();
				MSVE.tmpi[2] = 1; // set submenu reset flag
				MSVE.tmpi[0] = 6; // go to SUCCESS TRIM HI				
			} 
			break;
		}
		
		// SUCCESS TRIM LO
		case 5:
		{
			if (MSVE.FRESH)
			{	
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR," TRIM LO COMPLETED  ");	//R186
				Print_To_LCD(0, 186, ENG_STR, 2);
				sprintf(LCD_DISPLAY[1],"--------------------");
				sprintf(ENG_STR,"  Press any button  "); //R187
				Print_To_LCD(2, 187, ENG_STR, 1);
				sprintf(ENG_STR,"    to continue     "); //R188
				Print_To_LCD(3, 188, ENG_STR, 2);
			} 
			if (MSVE.SELECT || MSVE.VALUE || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1; // set submenu reset flag
				MSVE.tmpi[0] = 0; // go to RTD main menu
				MSVE.tmpi[1] = 2; // set RTD main selection	to TRIM HI			
			} 
			break;
		}
		
		// SUCCESS TRIM HI
		case 6:
		{
			if (MSVE.FRESH)
			{	
				MSVE.FRESH = FALSE;
				sprintf(ENG_STR," TRIM HI COMPLETED  ");	//R189
				Print_To_LCD(0, 189, ENG_STR, 1);
				sprintf(LCD_DISPLAY[1],"--------------------");
				sprintf(ENG_STR,"  Press any button  "); //R187
				Print_To_LCD(2, 187, ENG_STR, 1);
				sprintf(ENG_STR,"    to continue     "); //R188
				Print_To_LCD(3, 188, ENG_STR, 2);
			} 
			if (MSVE.SELECT || MSVE.VALUE || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1; // set submenu reset flag
				MSVE.tmpi[0] = 0; // go to RTD main menu
				MSVE.tmpi[1] = 0; // set RTD main selection	to default
			} 
			break;
		}		
		
		default:
		{
			MSVE.FRESH = TRUE;
			break;
		}
	}
}


/****************************************************************************/
void MENU_OIL_CALC_MODE(void)
{
	//if ((OIL_CALC_CUTOFF == 0.0) && (OIL_CALC_MAX[0] == 0.0) && (OIL_CALC_MAX[1] == 0.0))
	if(1) // Removed this menu at Enrique's request -DHA (2/24/2016)
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"  Calculation Mode");	//R190
		Print_To_LCD(0, 190, ENG_STR, 2);
		sprintf(ENG_STR,"Oil Curve Selection");	//R191
		Print_To_LCD(1, 191, ENG_STR, -1);
		sprintf(LCD_DISPLAY[2],"");
		MSVE.tmpi[0] = OIL_CALC_MODE;
	}

	switch(MSVE.tmpi[0])
	{
		case 1:		
			if (RUSS)
			{
				Get_Russ_Line(192,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"  %4.0f%%  %s", OIL_CALC_MAX[0],OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[3],"  %4.0f%%  Curve Set", OIL_CALC_MAX[0]);	//R192	
			break;
		case 2:		
			if (RUSS)
			{
				Get_Russ_Line(192,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"  %4.0f%%  %s", OIL_CALC_MAX[1],OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[3],"  %4.0f%%  Curve Set", OIL_CALC_MAX[1]);	//R192	
			break;
		case 3:		
			sprintf(ENG_STR,"    Auto Select");		//R193
			Print_To_LCD(3, 193, ENG_STR, 5);
			break;

		default:	
			MSVE.tmpi[0]=0;
		case 0:		
			sprintf(ENG_STR,"       Normal");		//R114
			Print_To_LCD(3, 114, ENG_STR, 5);
			break;
	}

	if (MSVE.SELECT||MSVE.VALUE)
	{
		MSVE.tmpi[0]++;
	}

	if (MSVE.ENTER)
	{
		OIL_CALC_MODE = MSVE.tmpi[0];
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

/****************************************************************************/
void MENU_DENSITY_CORRECTION(void)
{
	//if (((ANALYZER_MODE.val&0xFF)==SUB_HIGH) || ((ANALYZER_MODE.val&0xFF)==SUB_FULL))
	if ((ANALYZER_MODE.val&0xFF)==SUB_HIGH)
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
	}
	else
	{
		if (MSVE.FRESH)
		{
			MSVE.FRESH = FALSE;
			sprintf(ENG_STR," Density Correction");	//R194
			Print_To_LCD(0, 194, ENG_STR, 1);

			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			MSVE.tmpi[0] = Density_Correction_Mode.val;
		}

		switch(MSVE.tmpi[0])
		{
			case 1:		
				sprintf(ENG_STR," CORIOLIS, PDI TMP");	//R262
				Print_To_LCD(3, 262, ENG_STR, 1);
				break;
			case 2:		
				sprintf(ENG_STR," CORIOLIS, ALT TEMP");	//R263	
				Print_To_LCD(3, 263, ENG_STR, 1);
				break;
			case 3:		
				sprintf(ENG_STR,"COR-API60F, COR TMP");	//R195
				Print_To_LCD(3, 195, ENG_STR, -1);
				break;
			case 4:		
				sprintf(ENG_STR,"COR-API60F, PDI TMP");	//R196		
				Print_To_LCD(3, 196, ENG_STR, -1);
				break;
			case 5:		
				sprintf(ENG_STR,"COR-API60F, ALT TMP");	//R197	
				Print_To_LCD(3, 197, ENG_STR, -1);
				break;
			case 6:		
				sprintf(ENG_STR,"       OTHER");		//R198	
				Print_To_LCD(3, 198, ENG_STR, 7);
				break;
			default:	
				MSVE.tmpi[0]=0; 
				sprintf(ENG_STR,"      DISABLED");	//R49
				Print_To_LCD(3, 49, ENG_STR, 5);
				break;
		}

		if (MSVE.SELECT)
		{
			MSVE.tmpi[0]++;
			if (MSVE.tmpi[0]>6) MSVE.tmpi[0] = 0;
		}
		else
		if (MSVE.VALUE)
		{
			MSVE.tmpi[0]--;
			if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 6;
		}

		if (MSVE.ENTER)
		{
			MSVE.tmpi[1] = Density_Correction_Mode.val;

			if (MSVE.tmpi[1] != MSVE.tmpi[0])
			{
				if ((MSVE.tmpi[0]==1)||(MSVE.tmpi[0]==4)||(MSVE.tmpi[0]==6)||(MSVE.tmpi[0]==0))
					FC[0].USE_PDI_TEMP = TRUE;
				else
					FC[0].USE_PDI_TEMP = FALSE;

				if (MSVE.tmpi[0]==6)
					DCM_PORT.val = -1;
				else
					DCM_PORT.val = 3;
			}

			Density_Correction_Mode.val = MSVE.tmpi[0];
			Set_Density_Correction(0);
			Update_Flags_Goto_Next_Menu(1,0);
		}
	}
}

/******************** third order density correction RS *********************/ 
/****************************************************************************/
void MENU_Density_D3(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}
	
	if (RUSS)
	{
		sprintf(OUT_STR,"%c3   ",(unsigned char) 0xA8);
		MSVE_Data_Input("", OUT_STR, 13, 1, 1, 1, &Density_D3, 0, 0);
	}
	else
		MSVE_Data_Input("", "D3   ", 13, 1, 1, 1, &Density_D3, 0, 0);	//R_ П - A8
}  

/****************************************************************************/
void MENU_Density_D2(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (RUSS)
	{
		sprintf(OUT_STR,"%c2   ",(unsigned char) 0xA8);
		MSVE_Data_Input("", OUT_STR, 13, 1, 1, 1, &Density_D2, 0, 0);
	}
	else
		MSVE_Data_Input("", "D2   ", 13, 1, 1, 1, &Density_D2, 0, 0);	//R_ П - A8
}
/******************** third order density correction RS *********************/

/****************************************************************************/
void MENU_Density_D1(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}
	
	if (RUSS)
	{
		sprintf(OUT_STR,"%c1   ",(unsigned char) 0xA8);
		MSVE_Data_Input("", OUT_STR, 13, 1, 1, 1, &Density_D1, 0, 0);
	}
	else
		MSVE_Data_Input("", "D1   ", 13, 1, 1, 1, &Density_D1, 0, 0);	//R_ П - A8
}	

/****************************************************************************/
void MENU_Density_D0(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}
	
	if (RUSS)
	{
		sprintf(OUT_STR,"%c0   ",(unsigned char) 0xA8);
		MSVE_Data_Input("", OUT_STR, 13, 1, 1, 1, &Density_D0, 0, 0);
	}
	else
		MSVE_Data_Input("", "D0   ", 13, 1, 1, 1, &Density_D0, 0, 0);	//R_ П - A8
}	

/****************************************************************************/
void MENU_Density_Cal_Unit(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR," Density Corr. Unit");	//R348
		Print_To_LCD(0, 348, ENG_STR, 1);
		
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		MSVE.tmpi[0] = Density_Cal_Unit.val;
	}

	switch(MSVE.tmpi[0])
	{
		case 107:	sprintf(LCD_DISPLAY[3],"     kg/m3 15C");	break;

		default:	MSVE.tmpi[0]=105;
		case 105:	sprintf(LCD_DISPLAY[3],"      %cAPI 60F", 0xDF);	break;
	}

	if (MSVE.SELECT||MSVE.VALUE)
	{
		if (MSVE.tmpi[0]==105) MSVE.tmpi[0] = 107;
		else MSVE.tmpi[0] = 105;
	}

	if (MSVE.ENTER)
	{
		Density_Cal_Unit.val = MSVE.tmpi[0];
		Set_Density_Cal_Unit(0);
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

/****************************************************************************/
void MENU_Density_Cal(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(201,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 2, 1, 0, &Density_Cal, 0, 0);
	}
	else
		MSVE_Data_Input("", "CAL", 7, 2, 1, 0, &Density_Cal, 0, 0); //R340
}

/****************************************************************************/
void MENU_DCM_PORT(void)
{
	int i;

	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6) || (ALYESKA.ENABLED) || (!FC[0].enable_DENSITY))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		for(i=0;i<4;i++)
		{
			if (PORT[i].PRESENT) break;
		}

		if (i==4)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"   Coriolis Port");	//R199
		Print_To_LCD(0, 199, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		MSVE.tmpi[0] = DCM_PORT.val;
	}

	switch(MSVE.tmpi[0])
	{
		case 1:		sprintf(LCD_DISPLAY[3],"       COM 2");	break;
		case 2:		sprintf(LCD_DISPLAY[3],"       COM 3");	break;
		case 3:		sprintf(LCD_DISPLAY[3],"       COM 4");	break;

		default:	MSVE.tmpi[0]=0;
		case 0:		sprintf(LCD_DISPLAY[3],"       COM 1");	break;
	}

	if (MSVE.SELECT||MSVE.VALUE)
	{
		MSVE.tmpi[0]++;
	}

	if (MSVE.ENTER)
	{
		DCM_PORT.val = MSVE.tmpi[0];
		Set_Density_Correction(0);
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

/****************************************************************************/
void MENU_DCM_CFG_DAMP_FR(void)
{
	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(201,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 4, 1, 0, 0, &COR[0].damp_flow_rate, 0, 0);
	}
	else
		MSVE_Data_Input("", "Damp   ", 4, 1, 0, 0, &COR[0].damp_flow_rate, 0, 0);	//R201
}

/****************************************************************************/
void MENU_DCM_CFG_DAMP_DENSITY(void)
{
	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(201,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 4, 1, 0, 0, &COR[0].damp_density, 0, 0);
	}
	else
		MSVE_Data_Input("", "Damp   ", 4, 1, 0, 0, &COR[0].damp_density, 0, 0);	//R201
}

/****************************************************************************/
void MENU_DCM_CFG_CUTOFF(void)
{
	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (FC[0].flow_class.val==c_mass_flow)
	{
		if (RUSS)
		{
			Get_Russ_Line(343,OUT_STR,0);
			MSVE_Data_Input("", "Cutoff ", 6, 0, 0, 0, &COR[0].mfr_cutoff, 0, 0);
		}
		else
			MSVE_Data_Input("", OUT_STR, 6, 0, 0, 0, &COR[0].mfr_cutoff, 0, 0);	//R343
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(343,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 6, 0, 0, 0, &COR[0].vfr_cutoff, 0, 0);
		}
		else
			MSVE_Data_Input("", "Cutoff ", 6, 0, 0, 0, &COR[0].vfr_cutoff, 0, 0);	//R343
	}
}

/****************************************************************************/
void MENU_DCM_ZERO(void)
{
	int i;

	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		for(i=0;i<4;i++)
		{
			if (PORT[i].PRESENT) break;
		}

		if (i==4)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"   Coriolis Zero");	//R265
		Print_To_LCD(0, 265, ENG_STR, 2);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
	}

	MSVE.tmpi[0] = COR[0].Z.val & 0x01;

	switch(MSVE.tmpi[0])
	{
		case 1:		
			sprintf(ENG_STR,"   In Progress..."); //R202
			Print_To_LCD(3, 202, ENG_STR, 4);
			break;

		default:
		case 0:		
			sprintf(ENG_STR,"ENTER = START ZERO"); //R203	
			Print_To_LCD(3, 203, ENG_STR, -1);
			break;
	}

	if (MSVE.ENTER && !MSVE.tmpi[0])
	{
		CORIOLIS_ZERO1();
	}
}

/****************************************************************************/
void MENU_Density_ADJ(void)
{
	if ((!FC[0].enable_DENSITY)||(!Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.tmpv.class = FC[0].density.class;
		MSVE.tmpv.unit = FC[0].density.unit;
		MSVE.tmpv.calc_unit = FC[0].density.unit;
		MSVE.tmpv.val = FC[0].density_adj;
		MSVE.tmpv.calc_val = FC[0].density_adj;
		sprintf (ENG_STR, "FC Density Adjust"); //R204
		Get_Russ_Line(204,MSVE.str[3],0);
		//Print_To_LCD(3, 204, ENG_STR, -1);
	}
	
	if (RUSS)
	{
		Get_Russ_Line(205,OUT_STR,0);
		MSVE_Data_Input(MSVE.str[3],OUT_STR, 8, 4, 1, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(ENG_STR, "Adj", 8, 4, 1, 0, &MSVE.tmpv, 1, 1);	//R205

	if (MSVE.ENTER)
	{
		FC[0].density_adj = MSVE.tmpv.val;
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

/****************************************************************************/
/* 							FLOW COMPUTER MENUS 							*/
/****************************************************************************/
/****************************************************************************/
void MENU_FC_PRESSURE_UNIT(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR," FC Pressure Unit");	//R206
		Print_To_LCD(0, 206, ENG_STR, 4);
		MSVE.tmpi[4] = FC[n].pressure.class;
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37
		MSVE.tmpi[3] = FC[n].pressure.unit & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38	//R38
	}
	if (MSVE.ENTER)
	{
		FC[n].pressure.unit = MSVE.tmpi[3];
		FC[n].pressure.calc_unit = MSVE.tmpi[3];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (MSVE.tmpi[4]!=c_not_classified) MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (MSVE.tmpi[4]!=c_not_classified) MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
}

/****************************************************************************/
void MENU_FC_TEMP_UNIT(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"FC Temperature Unit");	//R207
		Print_To_LCD(0, 207, ENG_STR, 3);
		MSVE.tmpi[4] = FC[n].T.class;
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37
		MSVE.tmpi[3] = FC[n].T.unit & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38	//R38
	}

	if (MSVE.ENTER)
	{
		FC[n].T.unit = MSVE.tmpi[3];
		FC[n].T.calc_unit = MSVE.tmpi[3];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (MSVE.tmpi[4]!=c_not_classified) MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (MSVE.tmpi[4]!=c_not_classified) MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
}

/****************************************************************************/
void MENU_FC_DENSITY_UNIT(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"  FC Density Unit");	//R208
		Print_To_LCD(0, 208, ENG_STR, 4);
		MSVE.tmpi[4] = FC[n].density.class;
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37
		MSVE.tmpi[3] = FC[n].density.unit & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38	//R38
	}

	if (MSVE.ENTER)
	{
		FC[n].density.unit = MSVE.tmpi[3];
		FC[n].density.calc_unit = MSVE.tmpi[3];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (MSVE.tmpi[4]!=c_not_classified) MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (MSVE.tmpi[4]!=c_not_classified) MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
}

/****************************************************************************/
void MENU_FC_ACCUM_UNIT(int n)
{
	int units[3];
	float r;

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"FC Accumulator Unit");	//R209
		Print_To_LCD(0, 209, ENG_STR, -1);
		Breakout_Flow_Units(FC[n].flow_class.val, FC[n].flow_unit.val, units, &r);
		MSVE.tmpi[4] = units[2];
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37
		MSVE.tmpi[3] = FC[n].accum_unit.val & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38	//R38
	}

	if (MSVE.ENTER)
	{
		FC[n].accum_unit.val = MSVE.tmpi[3];
		Set_FC_Units(0);
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (MSVE.tmpi[4]!=c_not_classified) MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (MSVE.tmpi[4]!=c_not_classified) MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
}

/****************************************************************************/
void MENU_FC_FLOW_UNIT(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"   FC Flow Unit");	//R210
		Print_To_LCD(0, 210, ENG_STR, 5);
		MSVE.tmpi[4] = FC[n].flow_class.val;
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	//R37
		
		MSVE.tmpi[3] = FC[n].flow_unit.val & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	//R254 + :
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	//R38	//R38
	}

	if (MSVE.ENTER)
	{
		FC[n].flow_unit.val = MSVE.tmpi[3];
		Set_FC_Units(0);
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (FC[n].flow_class.val!=c_not_classified) MSVE.tmpi[3] = Get_Next_Unit(FC[n].flow_class.val, MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (FC[n].flow_class.val!=c_not_classified) MSVE.tmpi[3] = Get_Prev_Unit(FC[n].flow_class.val, MSVE.tmpi[3]);
	}
}

/****************************************************************************/
void MENU_FC_FLOW_CLASS(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"   FC Flow Class");	//R266
		Print_To_LCD(0, 266, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if	(FC[n].flow_class.val!=c_volumetric_flow)
		{
			MSVE.tmpi[1] = 1;
			FC[n].flow_class.val = c_mass_flow;
		}
		else
		{
			MSVE.tmpi[1] = 0;
			FC[n].flow_class.val = c_volumetric_flow;
		}
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"     Mass Flow");	//R212	
			Print_To_LCD(3, 212, ENG_STR, 2);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"  Volumetric Flow");	//R213
			Print_To_LCD(3, 213, ENG_STR, 2);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		if (MSVE.tmpi[1])
		{
			FC[n].flow_class.val = c_mass_flow;
		}
		else
		{
			FC[n].flow_class.val = c_volumetric_flow;
		}
		Set_FC_Units(0);
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_EMUL_DENSITY(int n)
{
	if (!FC[n].MAN_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(214,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density, 0, 1);
	}
	else
		MSVE_Data_Input("", "Emul.  ", 7, 3, 0, 0, &FC[n].density, 0, 1); //R214

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_SALINITY(int n)
{
	if (FC[n].USE_PDI_SALINITY && !FC[n].MAN_SALINITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(33,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].salinity, 0, 1);
	}
	else
		MSVE_Data_Input("", "Salt   ", 7, 3, 0, 0, &FC[n].salinity, 0, 1);	//R33

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_WATERCUT(int n)
{
	if (USE_PDI_WATERCUT.val && !FC[n].MAN_WATERCUT)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(215,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].watercut, 0, 1); 
	}
	else
		MSVE_Data_Input("", "WC     ", 7, 3, 0, 0, &FC[n].watercut, 0, 1); //R215

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_PRESSURE(int n)
{
	if (!FC[n].MAN_PRESSURE)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(216,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].pressure, 0, 1); 
	}
	else
		MSVE_Data_Input("", "Press  ", 7, 3, 0, 0, &FC[n].pressure, 0, 1);	//R216

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_TEMP(int n)
{
	if (FC[n].USE_PDI_TEMP && !FC[n].MAN_TEMP)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(217,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].T, 0, 1);
	}
	else
		MSVE_Data_Input("", "Temp   ", 7, 3, 0, 0, &FC[n].T, 0, 1);	//R217 

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_FLOW(int n)
{
	if (FC[n].enable_PULSE || !FC[n].MAN_FLOW)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(218,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].FLOW_TOTAL, 0, 1);
	}
	else
		MSVE_Data_Input("", "Flow   ", 7, 3, 0, 0, &FC[n].FLOW_TOTAL, 0, 1);	//R218
	
/* todo: this shows blank instead of 0 for MIN */

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_WATER_DENSITY_PT(int n)
{
	if (!FC[n].enable_NET && !FC[n].MAN_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(219,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density_water, 0, 1);
	}
	else	
		MSVE_Data_Input("", "WaterPT", 7, 3, 0, 0, &FC[n].density_water, 0, 1);	//R219

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_WATER_DENSITY_ST(int n)
{
	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(220,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density_waterST, 0, 1);
	}
	else
		MSVE_Data_Input("", "WaterST", 7, 3, 0, 0, &FC[n].density_waterST, 0, 1);	//R220

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_OIL_DENSITY_PT(int n)
{
	if (!FC[n].enable_NET && !FC[n].MAN_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(221,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density_oil, 0, 1);
	}
	else
		MSVE_Data_Input("", "OilPT  ", 7, 3, 0, 0, &FC[n].density_oil, 0, 1);	//R221

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_OIL_DENSITY_ST(int n)
{
	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(222,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density_oilST, 0, 1);
	}
	else
		MSVE_Data_Input("", "OilST  ", 7, 3, 0, 0, &FC[n].density_oilST, 0, 1);	//R222

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_SHRINKAGE(int n)
{
	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(223,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 5, 0, 0, &FC[n].Shrinkage, 1, 1);
	}
	else
		MSVE_Data_Input("", "SHRNK  ", 7, 5, 0, 0, &FC[n].Shrinkage, 1, 1);	//R223

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_METER_FACTOR(int n)
{
	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}
	if (RUSS)
	{
		Get_Russ_Line(224,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 5, 0, 0, &FC[0].Meter_Factor, 1, 1);	
	}
	else
		MSVE_Data_Input("", "M.F.", 7, 5, 0, 0, &FC[0].Meter_Factor, 1, 1);	//R224

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_ENABLE_NET(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"   FC Net Enable");	//R225
		Print_To_LCD(0, 225, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_NET) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		//R137
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		//R138
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_NET = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_ENABLE_DENSITY(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR," FC Density Enable");	//R226
		Print_To_LCD(0, 226, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_DENSITY) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		//R137
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		//R138
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_DENSITY = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_ENABLE_PULSE(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"  FC Pulse Enable");	//R227
		Print_To_LCD(0, 227, ENG_STR, 5);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_PULSE) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		//R137
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		//R138
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_PULSE = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_ENABLE_GROSS(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"  FC Gross Enable");	//R228
		Print_To_LCD(0, 228, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_GROSS) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		//R137
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		//R138
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_GROSS = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_ENABLE_FLOW(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"  FC Flow Enable");	//R229
		Print_To_LCD(0, 229, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_FLOW) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		//R137
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		//R138
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_FLOW = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_USE_PDI_TEMP(int n)
{
	if (FC[n].MAN_TEMP)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR," FC Use PDI Temp.?");	//R230
		Print_To_LCD(0, 230, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].USE_PDI_TEMP) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].USE_PDI_TEMP = MSVE.tmpi[1];
		if (FC[n].USE_PDI_TEMP) FC[n].MAN_TEMP = FALSE;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_USE_PDI_SALINITY(int n)
{
	if (FC[n].MAN_SALINITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR," FC Use PDI Salt?");	//R231
		Print_To_LCD(0, 231, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].USE_PDI_SALINITY) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].USE_PDI_SALINITY = MSVE.tmpi[1];
		if (FC[n].USE_PDI_SALINITY) FC[n].MAN_SALINITY = FALSE;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_USE_PDI_WATERCUT(int n)
{
	if (FC[n].MAN_WATERCUT)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR," FC Use PDI WCut?");	//R232
		Print_To_LCD(0, 232, ENG_STR, 2);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (USE_PDI_WATERCUT.val) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		USE_PDI_WATERCUT.val = MSVE.tmpi[1];
		if (USE_PDI_WATERCUT.val) FC[n].MAN_WATERCUT = FALSE;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_API_TABLE(int n)
{
	if ((!FC[n].enable_NET) && (!FC[n].enable_DENSITY))
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"   FC API Table");	//R233
		Print_To_LCD(0, 233, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		MSVE.tmpi[1] = FC[n].API_TABLE>>8;
	}

	switch(MSVE.tmpi[1])
	{
		case 'B':		
			sprintf(ENG_STR,"B: General Products");		//R234
			Print_To_LCD(3, 234, ENG_STR, -1);			
			break;
		case 'C':		
			sprintf(ENG_STR,"C: Special");	//R235	
			Print_To_LCD(3, 235, ENG_STR, -1);				
			break;
		case 'D':		
			sprintf(ENG_STR,"D: General Lubricant");	//R236	
			Print_To_LCD(3, 236, ENG_STR, -1);				
			break;

		default:		
			MSVE.tmpi[1]='A';
		case 'A':		
			sprintf(ENG_STR,"A: General Crude");	//R237	
			Print_To_LCD(3, 237, ENG_STR, -1);				
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1]++;
		if (MSVE.tmpi[1]>'D') MSVE.tmpi[1] = 'A';
	}

	if (MSVE.ENTER)
	{
		FC[n].API_TABLE = MSVE.tmpi[1]<<8;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_DENSITY_ADJ(int n)
{
	if (!FC[n].enable_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.tmpv.class = FC[0].density.class;
		MSVE.tmpv.unit = FC[0].density.unit;
		MSVE.tmpv.calc_unit = FC[0].density.unit;
		MSVE.tmpv.val = FC[0].density_adj;
		MSVE.tmpv.calc_val = FC[0].density_adj;
		if (RUSS)
		{
			Get_Russ_Line(238,OUT_STR,0);
			sprintf(MSVE.str[3], "%s",OUT_STR);
		}
		else
			sprintf(MSVE.str[3], "FC Density Adjust");	//R238	
	}

	if (RUSS)
	{
		Get_Russ_Line(205,OUT_STR,0);
		MSVE_Data_Input(MSVE.str[3],OUT_STR, 8, 4, 1, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "Adj", 8, 4, 1, 0, &MSVE.tmpv, 1, 1);	//R205
	
	if (MSVE.ENTER)
	{
		FC[n].density_adj = MSVE.tmpv.val;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_API_C_ALPHA(int n)
{
	if ((FC[n].API_TABLE>>8 != 'C') || !((FC[n].enable_NET) || (FC[n].enable_DENSITY)))
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.tmpv.class = c_none;
		MSVE.tmpv.unit = u_generic_none;
		MSVE.tmpv.calc_unit = u_generic_none;
		MSVE.tmpv.val = FC[n].a;
		MSVE.tmpv.calc_val = FC[n].a;
		if (RUSS)
		{
			Get_Russ_Line(239,OUT_STR,0);
			sprintf(MSVE.str[3], "%s",OUT_STR);
		}
		else
			sprintf (MSVE.str[3], "FC API Curve C");	//R239
	}

	if (RUSS)
	{
		Get_Russ_Line(240,OUT_STR,0);
		MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 1, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "alpha", 13, 1, 1, 1, &MSVE.tmpv, 1, 1);	//R240

	if (MSVE.ENTER)
	{
		FC[n].a = MSVE.tmpv.val;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_MAN_FLOW(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"  FC Manual Flow?");	//R241
		Print_To_LCD(0, 241, ENG_STR, 2);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_FLOW) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	
			MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_FLOW = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_MAN_TEMP(int n)
{
	if (FC[n].USE_PDI_TEMP)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR," FC Manual Temp.?");	//R242
		Print_To_LCD(0, 242, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_TEMP) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_TEMP = MSVE.tmpi[1];
		if (FC[n].MAN_TEMP) FC[n].USE_PDI_TEMP = FALSE;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_MAN_WATERCUT(int n)
{
	if (USE_PDI_WATERCUT.val)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"FC Manual Process?");	//R243
		Print_To_LCD(0, 243, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_WATERCUT) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_WATERCUT = MSVE.tmpi[1];
		if (FC[n].MAN_WATERCUT) USE_PDI_WATERCUT.val = FALSE;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_MAN_PRESSURE(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"FC Manual Pressure?");	//R244
		Print_To_LCD(0, 244, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_PRESSURE) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_PRESSURE = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_MAN_DENSITY(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR," FC Manual Density?");	//R245
		Print_To_LCD(0, 245, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_DENSITY) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_DENSITY = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_MAN_SALINITY(int n)
{
	if (FC[n].USE_PDI_SALINITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"  FC Manual Salt?");	//R246
		Print_To_LCD(0, 246, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_SALINITY) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	//R10
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	//R11
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_SALINITY = MSVE.tmpi[1];
		if (FC[n].MAN_SALINITY) FC[n].USE_PDI_SALINITY = FALSE;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FC_PULSES_PER_VOL_UNIT(int n)
{
	if (!FC[n].enable_PULSE)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.tmpv.class = c_none;
		MSVE.tmpv.unit = u_generic_none;
		MSVE.tmpv.calc_unit = u_generic_none;
		MSVE.tmpv.val = FC[n].PULSES_PER_ACCUM_UNIT;
		MSVE.tmpv.calc_val = FC[n].PULSES_PER_ACCUM_UNIT;
		Get_Unit(FC[n].PULSE_TOTAL.class, FC[n].PULSE_TOTAL.unit, MSVE.str[2]);
		MSVE.tmpv.bound_hi_set = 15000;
		MSVE.tmpv.bound_lo_set = 0;
		if (RUSS)
		{
			Get_Russ_Line(247,OUT_STR,0);
			sprintf (MSVE.str[3], "%s/%s",OUT_STR,MSVE.str[2]);
		}
		else
			sprintf (MSVE.str[3], "FC #Pulses/%s",MSVE.str[2]);	//R247 //R_UHOH too long
	}

	if (RUSS)
	{
		Get_Russ_Line(267,OUT_STR,0);
		MSVE_Data_Input(MSVE.str[3], "%s", 5, 0, 0, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "#Pulses", 5, 0, 0, 0, &MSVE.tmpv, 1, 1);	//R267

	if (MSVE.ENTER)
	{
		FC[n].PULSES_PER_ACCUM_UNIT = MSVE.tmpv.val;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

/****************************************************************************/
void MENU_FLOW_COMPUTER(void)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = FALSE;
		sprintf(ENG_STR,"Config Flow Computer");	//R248
		Print_To_LCD(0, 248, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1]," ");
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	//R91
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[9] = 0;
		MSVE.tmpi[8] = 0;
	}

	if (MSVE.tmpi[8])
	{/* refresh sub-menu */
		MSVE.tmpi[8] = 0;
		MSVE.FRESH = TRUE;
		MSVE.CURSOR_ENABLED = FALSE;
	}

	switch(MSVE.tmpi[0])
	{
		case 1:
		{
			//MENU_FC_ENABLE_FLOW(MSVE.tmpi[9]);
			MENU_FC_ENABLE_FLOW(0);
			if (MSVE.tmpi[0]==1)break;
		}

		case 2:
		{
			//MENU_FC_ENABLE_GROSS(MSVE.tmpi[9]);
			MENU_FC_ENABLE_GROSS(0);
			if (MSVE.tmpi[0]==2)break;
		}

		case 3:
		{
			//MENU_FC_ENABLE_PULSE(MSVE.tmpi[9]);
			MENU_FC_ENABLE_PULSE(0);
			if (MSVE.tmpi[0]==3)break;
		}

		case 4:
		{
			//MENU_FC_ENABLE_DENSITY(MSVE.tmpi[9]);
			MENU_FC_ENABLE_DENSITY(0);
			if (MSVE.tmpi[0]==4)break;
		}

		case 5:
		{
			//MENU_FC_ENABLE_NET(MSVE.tmpi[9]);
			MENU_FC_ENABLE_NET(0);
			if (MSVE.tmpi[0]==5)break;
		}

		case 6:
		{
			//MENU_FC_FLOW_CLASS(MSVE.tmpi[9]);
			MENU_FC_FLOW_CLASS(0);	//always FC1 -DHA
			if (MSVE.tmpi[0]==6)break;
		}

		case 7:
		{
			//MENU_FC_FLOW_UNIT(0);
			MENU_FC_FLOW_UNIT(0);	//always FC1 -DHA
			if (MSVE.tmpi[0]==7)break;
		}

		case 8:
		{
			//MENU_FC_ACCUM_UNIT(MSVE.tmpi[9]);
			MENU_FC_ACCUM_UNIT(0);	//always FC1 -DHA
			if (MSVE.tmpi[0]==8)break;
		}

		case 9:
		{
			//MENU_FC_PULSES_PER_VOL_UNIT(MSVE.tmpi[9]);
			MENU_FC_PULSES_PER_VOL_UNIT(0);
			if (MSVE.tmpi[0]==9)break;
		}

		case 10:
		{
			//MENU_FC_TEMP_UNIT(MSVE.tmpi[9]);
			MENU_FC_TEMP_UNIT(0);
			if (MSVE.tmpi[0]==10)break;
		}

		case 11:
		{
			//MENU_FC_DENSITY_UNIT(MSVE.tmpi[9]);
			MENU_FC_DENSITY_UNIT(0);
			if (MSVE.tmpi[0]==11)break;
		}

		case 12:
		{
			//MENU_FC_PRESSURE_UNIT(MSVE.tmpi[9]);
			MENU_FC_PRESSURE_UNIT(0);
			if (MSVE.tmpi[0]==12)break;
		}

		case 13:
		{
			//MENU_FC_MAN_WATERCUT(MSVE.tmpi[9]);
			MENU_FC_MAN_WATERCUT(0);
			if (MSVE.tmpi[0]==13)break;
		}

		case 14:
		{
			//MENU_FC_MAN_TEMP(MSVE.tmpi[9]);
			MENU_FC_MAN_TEMP(0);
			if (MSVE.tmpi[0]==14)break;
		}

		case 15:
		{
			//MENU_FC_MAN_SALINITY(MSVE.tmpi[9]);
			MENU_FC_MAN_SALINITY(0);
			if (MSVE.tmpi[0]==15)break;
		}

		case 16:
		{
			//MENU_FC_MAN_DENSITY(MSVE.tmpi[9]);
			MENU_FC_MAN_DENSITY(0);
			if (MSVE.tmpi[0]==16)break;
		}

		case 17:
		{
			//MENU_FC_MAN_PRESSURE(MSVE.tmpi[9]);
			MENU_FC_MAN_PRESSURE(0);
			if (MSVE.tmpi[0]==17)break;
		}

		case 18:
		{
			//MENU_FC_MAN_FLOW(MSVE.tmpi[9]);
			MENU_FC_MAN_FLOW(0);
			if (MSVE.tmpi[0]==18)break;
		}

		case 19:
		{
			//MENU_FC_USE_PDI_WATERCUT(MSVE.tmpi[9]);
			MENU_FC_USE_PDI_WATERCUT(0);
			if (MSVE.tmpi[0]==19)break;
		}

		case 20:
		{
			//MENU_FC_USE_PDI_TEMP(MSVE.tmpi[9]);
			MENU_FC_USE_PDI_TEMP(0);
			if (MSVE.tmpi[0]==20)break;
		}

		case 21:
		{
			//MENU_FC_USE_PDI_SALINITY(MSVE.tmpi[9]);
			MENU_FC_USE_PDI_SALINITY(0);
			if (MSVE.tmpi[0]==21)break;
		}

		case 22:
		{
			//MENU_FC_API_TABLE(MSVE.tmpi[9]);
			MENU_FC_API_TABLE(0);
			if (MSVE.tmpi[0]==22)break;
		}

		case 23:
		{
			//MENU_FC_API_C_ALPHA(MSVE.tmpi[9]);
			MENU_FC_API_C_ALPHA(0);
			if (MSVE.tmpi[0]==23)break;
		}

		case 24:
		{
			//MENU_FC_METER_FACTOR(MSVE.tmpi[9]);
			MENU_FC_METER_FACTOR(0);
			if (MSVE.tmpi[0]==24)break;
		}

		case 25:
		{
			//MENU_FC_SHRINKAGE(MSVE.tmpi[9]);
			MENU_FC_SHRINKAGE(0);
			if (MSVE.tmpi[0]==25)break;
		}

		case 26:
		{
			//MENU_FC_OIL_DENSITY_ST(MSVE.tmpi[9]);
			MENU_FC_OIL_DENSITY_ST(0);
			if (MSVE.tmpi[0]==26)break;
		}

		case 27:
		{
			//MENU_FC_WATER_DENSITY_ST(MSVE.tmpi[9]);
			MENU_FC_WATER_DENSITY_ST(0);
			if (MSVE.tmpi[0]==27)break;
		}

		case 28:
		{
			//MENU_FC_FLOW(MSVE.tmpi[9]);
			MENU_FC_FLOW(0);
			if (MSVE.tmpi[0]==28)break;
		}

		case 29:
		{
			//MENU_FC_WATERCUT(MSVE.tmpi[9]);
			MENU_FC_WATERCUT(0);
			if (MSVE.tmpi[0]==29)break;
		}

		case 30:
		{
			//MENU_FC_PRESSURE(MSVE.tmpi[9]);
			MENU_FC_PRESSURE(0);
			if (MSVE.tmpi[0]==30)break;
		}

		case 31:
		{
			//MENU_FC_TEMP(MSVE.tmpi[9]);
			MENU_FC_TEMP(0);
			if (MSVE.tmpi[0]==31)break;
		}

		case 32:
		{
			//MENU_FC_SALINITY(MSVE.tmpi[9]);
			MENU_FC_SALINITY(0);
			if (MSVE.tmpi[0]==32)break;
		}

		case 33:
		{
			//MENU_FC_EMUL_DENSITY(MSVE.tmpi[9]);
			MENU_FC_EMUL_DENSITY(0);
			if (MSVE.tmpi[0]==33)break;
		}

		case 34:
		{
			//MENU_FC_OIL_DENSITY_PT(MSVE.tmpi[9]);
			MENU_FC_OIL_DENSITY_PT(0);
			if (MSVE.tmpi[0]==34)break;
		}

		case 35:
		{
			//MENU_FC_WATER_DENSITY_PT(MSVE.tmpi[9]);
			MENU_FC_WATER_DENSITY_PT(0);
			if (MSVE.tmpi[0]==35)break;
		}

		case 36:
		{
			//MENU_FC_DENSITY_ADJ(MSVE.tmpi[9]);
			MENU_FC_DENSITY_ADJ(0);
			if (MSVE.tmpi[0]==36)break;
		}

		case 0:
		{/* main screen to select fow computer */
			MSVE.MENU_TRAP = FALSE;       
			
			if (MSVE.ENTER)
			{
				MSVE.MENU = 0;
				MSVE.ENTER = 0;
				MSVE.MENU_TRAP = TRUE;
				MSVE.tmpi[0]++;
				MSVE.tmpi[8] = 1;
			}
           
            sprintf(LCD_DISPLAY[3]," "); 
			
			break;
		}

		default:
		{
			MSVE.FRESH = TRUE;
			break;
		}
	}
}



/***********************************************************\
|	Get_Russ_Line()	- Get Russian Character Line			|
|															|
|	out_str : Minimum size of 20 chars						|
|															|
|	return_mode :	0 = not padded							|
|					1 = padded to 20 chars					|
|					2 = padded and centered 				|
|						(2 not implemented)				|
|															|
\***********************************************************/
int Get_Russ_Line(int str_num, char out_str[], int return_mode)
{	
	int i;
	long int l_code_val;
	unsigned char code_val;
	char code[64];
	char c[3];
	
	//error checking
	if ( (str_num < 0) || (str_num > RUSS_TBL_LEN) )
		return -1;
		
	_GIEP;
	sprintf(out_str,"                    "); //clear string
	sprintf(code,"%s", RUSS_MENU_TBL[str_num]); //copy from table
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
	

	if (return_mode == 1)
		out_str[20] == NULL;  //append null after padding //shouldn't it be out_str[20]?? 
	else
		out_str[i/2] = NULL; //append null to the end
	
	GIEP;
	return 0;
}


/***********************************************************\
|	Print_To_LCD()	- Put a a string in LCD buffer			|
|						(English or Russian)				|
|															|
|	whitespace :   -1 = pad after string, out to 20 chars	|
|					0 = no padding							|
|					X = Like '-1' but adds X spaces 		|
|					before string, cannot be less than 1	|
\***********************************************************/
int Print_To_LCD( int lcd_line, int str_num, char text_line[], int whitespace)
{//This function only works for strings without format specifiers!
	int i, len_out_str;
	char spaces[20];
	char prefix_s[50];
	
	if(lcd_line < 0)
		lcd_line = 0;
	else if (lcd_line > 3)
		lcd_line = 3;
	
#ifndef RUSS_TRANSLATION_ENABLED
	strcpy(LCD_DISPLAY[lcd_line],text_line);
#else	
	if(RUSS) 
	{//Russian language mode
		if (whitespace == 0)
		{//no padding
			Get_Russ_Line(str_num,OUT_STR,0);
			sprintf(LCD_DISPLAY[lcd_line],"%s",OUT_STR);
		}
		else
		{
			if(whitespace < 0) 
			{//only pad after string
				Get_Russ_Line(str_num,OUT_STR,1);
				sprintf(LCD_DISPLAY[lcd_line],"%s",OUT_STR);
			}
			else
			{//add padding before and after
				for (i=0;i<20;i++) //make spaces
				{
					spaces[i] 	= (char)0x20; //space char
					prefix_s[i]	= (char)0x20; //space char
				}
				Get_Russ_Line(str_num,OUT_STR,0);
				len_out_str = (int)strlen(OUT_STR);
				if ( (whitespace+len_out_str) > 20)	//if too much whitespace
					whitespace = 20 - len_out_str;
				else
					Get_Russ_Line(str_num,OUT_STR,1);
				spaces[whitespace] = NULL; //make spaces only as long as needed
				sprintf(prefix_s,"%s%s",spaces,OUT_STR);
				prefix_s[20] = NULL; //perhaps unnecessary...
				strncpy(LCD_DISPLAY[lcd_line],prefix_s,20);
			}
		}
	}
	else
	{//English - print as is
		strcpy(LCD_DISPLAY[lcd_line],text_line);
	}
#endif	
		
	return 0;
}

int Find_Russ_Tbl_Len(void)
{//returns length of Russian string table
	int i;
	i = 0;
	while ( RUSS_MENU_TBL[i][0] != NULL )
	{
		if (i > 999) //no infinite loops plz
			return -1;
		i++;
	}
	return --i;
}

void MENU_USB_LOGGING(int n)
{ ///NOT IN RUSSIAN
	//MSVE.tmpi[0] = menu selection
	//MSVE.tmpi[1] = made_change (boolean)
	//MSVE.tmpi[2] = need_screen_update (boolean)
	//MSVE.tmpi[3] = previous detect status	
	//MSVE.tmpi[4] = previous mount status	
	
	if (MSVE.FRESH)
	{/* Display screen */
		MSVE.FRESH = FALSE;
		MSVE.tmpi[1] = FALSE;
		MSVE.tmpi[2] = TRUE;
		MSVE.tmpi[3] = FALSE;
		MSVE.tmpi[4] = FALSE;
		
		
		MSVE.tmpi[0] = BEGIN_ALFAT_LOGGING.val; 
		sprintf(LCD_DISPLAY[1],"--------------------");
		sprintf(LCD_DISPLAY[2],"                    ");
		sprintf(LCD_DISPLAY[3],"                    ");
	}
	
	if (MSVE.tmpi[1])
	{
		sprintf(LCD_DISPLAY[1],"   ENTER = Confirm  ");
		MSVE.tmpi[1] = FALSE;
	}
	
	if ((MSVE.tmpi[0] == TRUE) && (MSVE.tmpi[2] == TRUE))
		sprintf(LCD_DISPLAY[0],"   USB Logging:   ON");
	else if (MSVE.tmpi[2] == TRUE)
		sprintf(LCD_DISPLAY[0],"   USB Logging:  OFF");
	
	MSVE.tmpi[2] = FALSE; //don't update again
	
	//if USB status has changed since last time then we should update LCD
	if ( (MSVE.tmpi[3] != ALFAT_USB_DETECTED.val) || (MSVE.tmpi[4] != ALFAT_USB_MOUNTED.val) )
		MSVE.tmpi[2] = TRUE;
 
	//update USB status variables
	MSVE.tmpi[3] = ALFAT_USB_DETECTED.val;
	MSVE.tmpi[4] = ALFAT_USB_MOUNTED.val;
	
	// reprint USB status only if there has been a change
	if ((BEGIN_ALFAT_LOGGING.val) && (MSVE.tmpi[2] == TRUE))
	{
		if (ALFAT_USB_DETECTED.val)
			sprintf(LCD_DISPLAY[2],"Media Detected?: YES");
		else
			sprintf(LCD_DISPLAY[2],"Media Detected?:  NO");
		
		if (ALFAT_USB_MOUNTED.val)
			sprintf(LCD_DISPLAY[3],"Media Mounted?:  YES");
		else
			sprintf(LCD_DISPLAY[3],"Media Mounted?:   NO");
		
	}

	if ((MSVE.SELECT) || (MSVE.VALUE))
	{/* SELECT - change value */
		
		// toggle value
		if (MSVE.tmpi[0] == TRUE)
			MSVE.tmpi[0] = FALSE;
		else
			MSVE.tmpi[0] = TRUE;
		
		MSVE.tmpi[1] = TRUE;	
		MSVE.tmpi[2] = TRUE;
	}

	//update log setting if it has changed
	if ( (MSVE.ENTER) && (BEGIN_ALFAT_LOGGING.val != MSVE.tmpi[0]) )
	{// ENTER

		//update log setting
		BEGIN_ALFAT_LOGGING.val = MSVE.tmpi[0]; 
		
		//note: despite the name, this function should be called both when logging is turned off AND when it's turned on
		Begin_Alfat_Logging(&BEGIN_ALFAT_LOGGING);
		
		MSVE.tmpi[0] = BEGIN_ALFAT_LOGGING.val;	//menu selection
		MSVE.tmpi[1] = FALSE;	//made_change (boolean)
		MSVE.tmpi[2] = TRUE;	//need_screen_update (boolean)
		MSVE.tmpi[3] = FALSE;	//previous detect status
		MSVE.tmpi[4] = FALSE;	//previous mount status		

		
		sprintf(LCD_DISPLAY[1],"--------------------");	
		
		
		if (BEGIN_ALFAT_LOGGING.val) //if logging was just turned ON
		{
			sprintf(LCD_DISPLAY[2],"Media Detected?:  NO");
			sprintf(LCD_DISPLAY[3],"Media Mounted?:   NO");
		}
		else //if logging was just turned OFF
		{
			sprintf(LCD_DISPLAY[2],"                    ");
			sprintf(LCD_DISPLAY[3],"                    ");			
		}
		
		Update_Flags_Goto_Next_Menu(1,1);
	}
}

void MENU_LOGGING_PERIOD(int n)
{ ///NOT IN RUSSIAN

	if (MSVE.FRESH)
	{/* Display screen */
		MSVE.tmpv.class			= c_unknown;
		MSVE.tmpv.unit 			= u_generic_unknown;
		MSVE.tmpv.calc_unit 	= u_generic_unknown;
		MSVE.tmpv.val 			= REG_ALFAT_LOG_PERIOD.val;
		MSVE.tmpv.calc_val 		= REG_ALFAT_LOG_PERIOD.calc_val;
		MSVE.tmpv.bound_hi_set 	= REG_ALFAT_LOG_PERIOD.bound_hi_set;
		MSVE.tmpv.bound_lo_set 	= REG_ALFAT_LOG_PERIOD.bound_lo_set;
		
		sprintf (MSVE.str[3], " Change Log Period  ");	//R43
	}
	
	MSVE_Data_Input(MSVE.str[3], "Period (s)", 6, 0, 0, 0, &MSVE.tmpv, 1, 1);	//R46

	if (MSVE.ENTER)
	{/* ENTER - accept change */
		VAR_Update(&REG_ALFAT_LOG_PERIOD, MSVE.tmpv.val,0,0);		
		Update_Flags_Goto_Next_Menu(1,0);
	}
}









