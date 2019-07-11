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
/* File Name: DEMO.C						    							*/
/* 									    									*/
/* File Description: This file defines several vectors for demo variables.	*/
/* Demos are useful for expos that Phase Dynamics attends.  Since there is	*/
/* no actual fluid flowing through the analyzer then we need to hard code	*/
/* some numbers for this demonstration.  Here are those numbers.			*/
/*									    									*/
/****************************************************************************/
#define DEMO_H

#include "GLBLS.H"
#include "DEMO.H"

#pragma DATA_SECTION(lowdemo,"initialization")
const float anademo[]=
{/* ANALYZER */
	 0.0,			//p_lo
	 200.0,			//p_hi
	 -30.0,			//t_lo
	 300.0,			//t_hi
	 0.02,			//s_lo
	 0.02,			//s_hi
	 0.0,			//fo_lo
	 1000.0,		//fo_hi
	 0.0,			//fw_lo
	 1000.0,		//fw_hi
	 0.0,			//p0
	 0.0,			//p1
	-1,				//SALT_MAX
     2,				//TEMP_OIL_MAX
	 0.0, 50.0, 100.0,
	-1,				//TEMP_WATER_MAX
	 0.0, 0.0,  0.0,  0.0,		// 0C
	 0.0, 0.0,  0.0,  50.0,		// 50C
	 0.0, 0.0,  0.0,  100.0,	// 100C
	 17.3,			//t_ext
	 1.69,			//ip_o
	 1.56,			//rp_o
	 231.215,		//f_o
	 0,				//ip_w
	 0,				//rp_w
	 0,				//f_w
	 0.0			//salt
};

#pragma DATA_SECTION(lowdemo,"initialization")
const float lowdemo[]=
{/* LOW RANGE based on SN2437 */
	 0.0,			//w_lo
	 4.0,			//w_hi
	 4.44,			//t_lo
	 115.55,		//t_hi
	 0.02,			//s_lo
	 0.02,			//s_hi
	 0.0,			//fo_lo
	 1000.0,		//fo_hi
	 0.0,			//fw_lo
	 1000.0,		//fw_hi
	 1.2,			//p0
	 0.0,			//p1
	-1,				//SALT_MAX
     2,				//TEMP_OIL_MAX
	 15.65, 51.05, 88.1,
	-1,				//TEMP_WATER_MAX
	 0.0000000000000E+00, -2.9817579989149E-03,  6.7362499550291E-01,  5.9049033077214E+00, //Oil 60.17F
	 0.0000000000000E+00, -3.0174798589278E-03,  6.9109113999960E-01,  4.2160704112086E+00, //Oil 123.89F
     0.0000000000000E+00, -3.0637740504044E-03,  7.1165899119260E-01,  2.2505293129302E+00, //Oil 190.58F
	 17.3,			//t_ext
	 1.69,			//ip_o
	 1.56,			//rp_o
	 231.215,		//f_o
	 0,				//ip_w
	 0,				//rp_w
	 0,				//f_w
	 0.0			//salt
};

#pragma DATA_SECTION(middemo,"initialization")
const float middemo[]=
{/* MID RANGE based on SN2462 */
	 0.0,			//w_lo
	 30.0,			//w_hi
	 4.44,			//t_lo
	 115.56,		//t_hi
	 0.02,			//s_lo
	 0.02,			//s_hi
	 0.0,			//fo_lo
	 1000.0,		//fo_hi
	 0.0,			//fw_lo
	 1000.0,		//fw_hi
	 1.2,			//p0
	 0.0,			//p1
	-1,				//SALT_MAX
     2,				//TEMP_OIL_MAX
	 15.56, 37.78, 60.0,
	-1,				//TEMP_WATER_MAX
	-9.112681667449e-04,  3.512785926388e-01, -4.666430224707e+01,  2.146328379043e+03, //Oil 060F
	-8.317782023955e-04,  3.192692682476e-01, -4.235079607969e+01,  1.951875649563e+03, //Oil 100F
	-7.624283798787e-04,  2.913132758050e-01, -3.857760664061e+01,  1.781441202611e+03, //Oil 140F
	 35.2,			//t_ext
	 1.69,			//ip_o
	 1.56,			//rp_o
	 126.290,		//f_o
	 0,				//ip_w
	 0,				//rp_w
	 0,				//f_w
	 0.0,			//salt
};

#pragma DATA_SECTION(highdemo,"initialization")
const float highdemo[]=
{/* HIGH RANGE based on SN2423 */
	 80.0,			//w_lo
	 100.0,			//w_hi
	 4.44,			//t_lo
	 82.22,			//t_hi
	 8,				//s_lo
	 25,			//s_hi
	 0.0,			//fo_lo
	 500.0,			//fo_hi
	 0.0,			//fw_lo
	 500.0,			//fw_hi
	 1.8,			//p0
	 0.0,			//p1
	 4,				//SALT_MAX
	 8.0, 11.0, 15.0, 20.0, 25.0,
     2,				//TEMP_OIL_MAX
	 15.56, 37.78, 60.00,
	 3,				//TEMP_WATER_MAX
	 10.00, 37.78, 48.89, 71.11,
	 0.000000000000e+00,  0.000000000000e+00,  0.000000000000e+00,  0.000000000000e+00, //Oil 140F
	 0.000000000000e+00,  0.000000000000e+00,  0.000000000000e+00,  0.000000000000e+00, //Oil 140F
	 0.000000000000e+00,  0.000000000000e+00,  0.000000000000e+00,  0.000000000000e+00, //Oil 140F
	 0.000000000000e+00,  6.349732368594e-02, -2.728919890121e+01,  2.984540347458e+03, //8.00 050
	 0.000000000000e+00,  6.893026018527e-02, -2.812686142969e+01,  2.924822770646e+03, //8.00 100
	 0.000000000000e+00,  7.238035511161e-02, -2.899588703931e+01,  2.961180939424e+03, //8.00 120
	 0.000000000000e+00,  5.446770213838e-02, -2.205225816755e+01,  2.282331719663e+03, //8.00 160
	 0.000000000000e+00,  6.415228101393e-02, -2.715311482160e+01,  2.926134284690e+03, //11.00 050
	 0.000000000000e+00,  7.414377463750e-02, -2.945916274649e+01,  2.984211615122e+03, //11.00 100
	 0.000000000000e+00,  5.627741023426e-02, -2.272315837728e+01,  2.344968663708e+03, //11.00 120
	 0.000000000000e+00,  4.913406543781e-02, -1.945549230372e+01,  1.979686404428e+03, //11.00 160
	 0.000000000000e+00,  6.771587819035e-02, -2.783984584713e+01,  2.916346572213e+03, //15.00 050
	 0.000000000000e+00,  4.102920331297e-02, -1.705606087260e+01,  1.813634656628e+03, //15.00 100
	 0.000000000000e+00,  4.996480869314e-02, -1.969276939853e+01,  1.995216183508e+03, //15.00 120
	 0.000000000000e+00,  5.144108927306e-02, -2.011946450805e+01,  2.023800657808e+03, //15.00 160
	 0.000000000000e+00,  7.151318612481e-02, -2.878736294756e+01,  2.953863133747e+03, //20.00 050
	 0.000000000000e+00,  5.113694677813e-02, -2.002217413813e+01,  2.016174782903e+03, //20.00 100
	 0.000000000000e+00,  5.926046483618e-02, -2.255290833957e+01,  2.207764791287e+03, //20.00 120
	 0.000000000000e+00,  6.175229080507e-02, -2.330832258868e+01,  2.262913260849e+03, //20.00 160
	 0.000000000000e+00,  6.779738111603e-02, -2.705688326480e+01,  2.755477534070e+03, //25.00 050
	 0.000000000000e+00,  6.175229080507e-02, -2.330832258868e+01,  2.262913260849e+03, //25.00 100
	 0.000000000000e+00,  2.003681621958e-02, -9.370047633062e+00,  1.097834113687e+03, //25.00 120
	 0.000000000000e+00,  2.003681621958e-02, -9.370047633062e+00,  1.097834113687e+03, //25.00 160
	 37.8,			//t_ext
	 2.1,			//ip_o
	 1.6,			//rp_o
	 108.123,		//f_o
	 0.5,			//ip_w
	 0.3,			//rp_w
	 175.295,		//f_w
	 15.0			//salt
};

#pragma DATA_SECTION(fulldemo,"initialization")
const float fulldemo[]=
{/* FULL RANGE based on SN2423 */
	 0.0,			//w_lo
	 100.0,			//w_hi
	 4.44,			//t_lo
	 82.22,			//t_hi
	 8,				//s_lo
	 25,			//s_hi
	 86.0,			//fo_lo
	 89.5,			//fo_hi
	 163.5,			//fw_lo
	 186.0,			//fw_hi
	 1.8,			//p0
	 0.0,			//p1
	 4,				//SALT_MAX
	 8.0, 11.0, 15.0, 20.0, 25.0,
     2,				//TEMP_OIL_MAX
	 15.56, 37.78, 60.00,
	 3,				//TEMP_WATER_MAX
	 10.00, 37.78, 48.89, 71.11,
    -5.920177058457e-03,  1.814327297535e+00, -1.878267855357e+02,  6.586300941540e+03, //Oil 140F
	-5.920177058457e-03,  1.814327297535e+00, -1.878267855357e+02,  6.586300941540e+03, //Oil 140F
	-5.920177058457e-03,  1.814327297535e+00, -1.878267855357e+02,  6.586300941540e+03, //Oil 140F
	 0.000000000000e+00,  6.349732368594e-02, -2.728919890121e+01,  2.984540347458e+03, //8.00 050
	 0.000000000000e+00,  6.893026018527e-02, -2.812686142969e+01,  2.924822770646e+03, //8.00 100
	 0.000000000000e+00,  7.238035511161e-02, -2.899588703931e+01,  2.961180939424e+03, //8.00 120
	 0.000000000000e+00,  5.446770213838e-02, -2.205225816755e+01,  2.282331719663e+03, //8.00 160
	 0.000000000000e+00,  6.415228101393e-02, -2.715311482160e+01,  2.926134284690e+03, //11.00 050
	 0.000000000000e+00,  7.414377463750e-02, -2.945916274649e+01,  2.984211615122e+03, //11.00 100
	 0.000000000000e+00,  5.627741023426e-02, -2.272315837728e+01,  2.344968663708e+03, //11.00 120
	 0.000000000000e+00,  4.913406543781e-02, -1.945549230372e+01,  1.979686404428e+03, //11.00 160
	 0.000000000000e+00,  6.771587819035e-02, -2.783984584713e+01,  2.916346572213e+03, //15.00 050
	 0.000000000000e+00,  4.102920331297e-02, -1.705606087260e+01,  1.813634656628e+03, //15.00 100
	 0.000000000000e+00,  4.996480869314e-02, -1.969276939853e+01,  1.995216183508e+03, //15.00 120
	 0.000000000000e+00,  5.144108927306e-02, -2.011946450805e+01,  2.023800657808e+03, //15.00 160
	 0.000000000000e+00,  7.151318612481e-02, -2.878736294756e+01,  2.953863133747e+03, //20.00 050
	 0.000000000000e+00,  5.113694677813e-02, -2.002217413813e+01,  2.016174782903e+03, //20.00 100
	 0.000000000000e+00,  5.926046483618e-02, -2.255290833957e+01,  2.207764791287e+03, //20.00 120
	 0.000000000000e+00,  6.175229080507e-02, -2.330832258868e+01,  2.262913260849e+03, //20.00 160
	 0.000000000000e+00,  6.779738111603e-02, -2.705688326480e+01,  2.755477534070e+03, //25.00 050
	 0.000000000000e+00,  6.175229080507e-02, -2.330832258868e+01,  2.262913260849e+03, //25.00 100
	 0.000000000000e+00,  2.003681621958e-02, -9.370047633062e+00,  1.097834113687e+03, //25.00 120
	 0.000000000000e+00,  2.003681621958e-02, -9.370047633062e+00,  1.097834113687e+03, //25.00 160
	 37.8,			//t_ext
	 2.1,			//ip_o
	 1.6,			//rp_o
	 108.123,		//f_o
	 0.5,			//ip_w
	 0.3,			//rp_w
	 175.295,		//f_w
	 15.0			//salt
};

/****************************************************************************/
/* DEMO																		*/
/*                                                                          */
/* Description: set the default values & point to proper coeff block        */
/*                                                                          */
/* Arguments: 	VAR POINTER v - mode                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       intializes analyzer for demonstration                       */
/*                                                                          */
/****************************************************************************/
void DEMO_Init(VAR* v)
{
	int				mode, i, j, k;
	float			s_lo, s_hi, w_lo, w_hi, t_lo, t_hi, fo_lo, fo_hi, fw_lo, fw_hi, p0, p1;
	float*			p;
	float*			s;

	if (!DEMO) 
		return;

	_GIEP;

	VAR_Update(&REG_STREAM_SELECT, 1.0, 0, 0);

	p = (float*) &COEFF_TEMP_OIL;
	
	for (i=0;i<40;i++)
		p[i] = 0.0;
	
	p = (float*) &COEFF_SALT_TEMP_WATER;
	
	for (i=0;i<1200;i++)
		p[i] = 0.0;
	
	OSC_OIL_CALC	= 0;
	OSC_WATER_CALC	= 1;
	mode 			= v->val;

	for (i=0;i<VTMAX;i++)
	{
		SIM_VINC[i] = -1.0;
		SIM_VREF[i] = -1.0;
		SIM_FREQ[i] = -1.0;
		ENABLED[i]  =  0;
	}

	for (i=0;i<10;i++) STR_Analyzer_Info[i] = 0x2020;
	
	STR_Analyzer_Info[4] = ('4'<<8) | 'A';
	STR_Analyzer_Info[5] = ('0'<<8) | '3'; // field_M
	STR_Analyzer_Info[6] = ('2'<<8) | ' ';

	switch(mode)
	{
		case SUB_FULL:
		{/* FULL RANGE */
			STR_Analyzer_Info[0] 	= ('F'<<8) | 'I';
			STR_Analyzer_Info[1] 	= ('1'<<8) | 'R';
			STR_Analyzer_Info[2] 	= ('3'<<8) | '0';
			STR_Analyzer_Info[3] 	= ('1'<<8) | '4';
			ENABLED[OSC_OIL_CALC]   =  TRUE;
			ENABLED[OSC_WATER_CALC] =  TRUE;
			p 						= (float*) &fulldemo;
			
			break;
		}
		case SUB_ANALYZER:
		case SUB_GAS_ANALYZER:
		{
			STR_Analyzer_Info[0] 	= ('A'<<8) | 'Z';
			STR_Analyzer_Info[1] 	= ('S'<<8) | 'W';
			STR_Analyzer_Info[2] 	= ('5'<<8) | '0';
			STR_Analyzer_Info[3] 	= ('0'<<8) | '8';
			ENABLED[OSC_OIL_CALC]   =  TRUE;
			p 						= (float*) &anademo;
			
			break;
		}
		case SUB_MID:
		{/* MID RANGE based */
			STR_Analyzer_Info[0] 	= ('M'<<8) | 'Z';
			STR_Analyzer_Info[1] 	= ('1'<<8) | 'R';
			STR_Analyzer_Info[2] 	= ('4'<<8) | '0';
			STR_Analyzer_Info[3] 	= ('2'<<8) | '0';
			ENABLED[OSC_OIL_CALC]  	=  TRUE;
			p 						= (float*) &middemo;
			
			break;
		}
		case SUB_HIGH:
		{/* HIGH RANGE */
			STR_Analyzer_Info[0] 	= ('H'<<8) | 'I';
			STR_Analyzer_Info[1] 	= ('1'<<8) | 'R';
			STR_Analyzer_Info[2] 	= ('3'<<8) | '0';
			STR_Analyzer_Info[3] 	= ('1'<<8) | '4';
			ENABLED[OSC_OIL_CALC]  	=  TRUE;
			ENABLED[OSC_WATER_CALC] =  TRUE;
			p 						= (float*) &highdemo;
			
			break;
		}
		case SUB_CCM:
		{/* CCM */
			STR_Analyzer_Info[0] 		= ('F'<<8) | 'L';
			STR_Analyzer_Info[1] 		= ('1'<<8) | 'R';
			STR_Analyzer_Info[2] 		= ('3'<<8) | '0';
			STR_Analyzer_Info[3] 		= ('1'<<8) | '4';
			ENABLED[OSC_OIL_CALC]  		=  TRUE;
			ENABLED[OSC_WATER_CALC] 	=  TRUE;
			p 							= (float*) &fulldemo;
			DIO_CCM_START.val			= FALSE;
			DIO_CCM_PURGE_STAT.val		= FALSE;
			DIO_CCM_PURGE_TIME.val		= FALSE;
			DIO_TOTALIZER_CONTROL.val 	= TRUE;

			VAR_Update(&CCM_SETPOINT_PRESSURE[0], 	200.0, 	0, 0);
			VAR_Update(&CCM_SETPOINT_LEVEL[0], 		66.0, 	0, 0);
			VAR_Update(&CCM_VESSEL_PRESSURE[0], 	124.6, 	0, 0);
			VAR_Update(&CCM_VESSEL_LEVEL[0], 		68.2, 	0, 0);

			CCM_PURGE 		= 1000.0;
			CCM_DURATION 	= 10.0;
			CCM_REMAINING 	= 0.0;

			VAR_Update(&FC[0].GROSS_OIL, 	1929.0, 		0, 0);
			VAR_Update(&FC[0].GROSS_WATER, 	1850.0, 		0, 0);
			VAR_Update(&FC[0].GROSS_TOTAL, 	1929.0+1850.0, 	0, 0);
			VAR_Update(&FC[0].FLOW_OIL, 	192.9, 			0, 0);
			VAR_Update(&FC[0].FLOW_WATER, 	185.0, 			0, 0);
			VAR_Update(&FC[0].FLOW_TOTAL, 	192.9+185.0, 	0, 0);
			
			COR[1].mass_total 		= 327.5;
			COR[1].mfr 				= 120.5;
			COR[1].volume_total 	= 327.5;
			COR[1].vfr 				= 120.5;
			COR[1].u_v 				= u_v_mscf;
			COR[1].u_vfr 			= u_vfr_mscf_day;
			COR[1].u_m 				= u_v_mscf;
			COR[1].u_mfr 			= u_vfr_mscf_day;
			COR[0].density 			= 950.0;
			COR[1].density 			= 28.0;
			CCM_GAS_FLOW.unit 		= COR[1].u_vfr;
			CCM_GAS_FLOW.calc_unit 	= COR[1].u_vfr;
			
			VAR_Update(&CCM_GAS_FLOW, COR[1].mfr,0,0);

			CCM_GAS_TOTAL.unit 		= COR[1].u_v;
			CCM_GAS_TOTAL.calc_unit = COR[1].u_v;
			
			VAR_Update(&CCM_GAS_TOTAL, COR[1].mass_total,0,0);

			AO[1].MANUAL_PERCENT 	= 35.8;
			AO[2].MANUAL_PERCENT 	= 16.9;
			AO[1].MANUAL 			= TRUE;
			AO[2].MANUAL 			= TRUE;

			break;
		}
		case SUB_LOW:
		default:
		{/* LOW RANGE */
			mode 					= SUB_LOW;
			DEMO_ANALYZER_MODE.val 	= mode;
			STR_Analyzer_Info[0] 	= ('L'<<8) | 'U';
			STR_Analyzer_Info[1] 	= ('3'<<8) | 'R';
			STR_Analyzer_Info[2] 	= ('1'<<8) | '0';
			STR_Analyzer_Info[3] 	= ('2'<<8) | '0';
			ENABLED[OSC_OIL_CALC]  	=  TRUE;
			p 						= (float*) &lowdemo;
			
			break;
		}
	}

	w_lo  = p[0];
	w_hi  = p[1];
	t_lo  = p[2];
	t_hi  = p[3];
	s_lo  = p[4];
	s_hi  = p[5];
	fo_lo = p[6];
	fo_hi = p[7];
	fw_lo = p[8];
	fw_hi = p[9];
	p0 	  = p[10];
	p1    = p[11];

	SALT_MAX = p[12];
    p 		+= 13;
	
	for (i=0;i<=SALT_MAX;i++)
		SALTS[i] = p[i];
	
	p 			+= (int) (SALT_MAX+1);
	TEMP_OIL_MAX = p[0];
	p++;
	
	for (i=0;i<=TEMP_OIL_MAX;i++)
		TEMPS_OIL[i] = p[i];
	
	p 				+= (int) (TEMP_OIL_MAX+1);
	TEMP_WATER_MAX 	 = p[0];
	p++;

	for (i=0;i<=TEMP_WATER_MAX;i++)
		TEMPS_WATER[i] = p[i];
	
	p += (int) (TEMP_WATER_MAX+1);

	for (i=0;i<=TEMP_OIL_MAX;i++)
	{
		COEFF_TEMP_OIL[i][0] = p[(4*i)+3];
		COEFF_TEMP_OIL[i][1] = p[(4*i)+2];
		COEFF_TEMP_OIL[i][2] = p[(4*i)+1];
		COEFF_TEMP_OIL[i][3] = p[(4*i)+0];
	}

	p += (int) (4*(TEMP_OIL_MAX+1));
	s  = p;

	for (i=0;i<=SALT_MAX;i++)
	{
		for (j=0;j<=TEMP_WATER_MAX;j++)
		{
			k 								 = ((TEMP_WATER_MAX+1)*4*i)+(4*j);
			COEFF_SALT_TEMP_WATER[i][j][0]   = p[k+3];
			COEFF_SALT_TEMP_WATER[i][j][1]   = p[k+2];
			COEFF_SALT_TEMP_WATER[i][j][2]   = p[k+1];
			COEFF_SALT_TEMP_WATER[i][j][3]   = p[k+0];
			s 								+= 4;
		}
	}

	SIM_TEMPERATURE_EXTERNAL	= s[0];
	SIM_VINC[OSC_OIL_CALC]		= s[1];
	SIM_VREF[OSC_OIL_CALC]		= s[2];
	SIM_FREQ[OSC_OIL_CALC]		= s[3];
	SIM_VINC[OSC_WATER_CALC]	= s[4];
	SIM_VREF[OSC_WATER_CALC]	= s[5];
	SIM_FREQ[OSC_WATER_CALC]	= s[6];

	Copy_CAPDATA(&Cap_Oil,   0, 1);	/* clear */
	Copy_CAPDATA(&Cap_Water, 0, 1);	/* clear */

	for (i=0;i<SMAX;i++)
	{
		Cap_Records[i].Watercut[0]				= Cap_Oil.Watercut;
		Cap_Records[i].Temperature[0]			= Cap_Oil.Temperature;
		Cap_Records[i].Salinity[0]				= Cap_Oil.Salinity;
		Cap_Records[i].Frequency_Oil[0]			= Cap_Oil.Frequency_Oil;
		Cap_Records[i].Frequency_Water[0]		= Cap_Oil.Frequency_Water;
		Cap_Records[i].RefPower_Oil[0]			= Cap_Oil.RefPower_Oil;
		Cap_Records[i].RefPower_Water[0]		= Cap_Oil.RefPower_Water;
		Cap_Records[i].Time_MONTH_DAY_HH_MM[0]	= (Cap_Oil.Time_MONTH<<24)|(Cap_Oil.Time_DAY<<16)|(Cap_Oil.Time_HH<<8)|(Cap_Oil.Time_MM);
		Cap_Records[i].CLRSTAT_Time_YEAR[0]		= (Cap_Oil.Time_YEAR<<8)|(Cap_Oil.Time_DAY_OF_WEEK);
		Cap_Records[i].Watercut[1]				= Cap_Water.Watercut;
		Cap_Records[i].Temperature[1]			= Cap_Water.Temperature;
		Cap_Records[i].Salinity[1]				= Cap_Water.Salinity;
		Cap_Records[i].Frequency_Oil[1]			= Cap_Water.Frequency_Oil;
		Cap_Records[i].Frequency_Water[1]		= Cap_Water.Frequency_Water;
		Cap_Records[i].RefPower_Oil[1]			= Cap_Water.RefPower_Oil;
		Cap_Records[i].RefPower_Water[1]		= Cap_Water.RefPower_Water;
		Cap_Records[i].Time_MONTH_DAY_HH_MM[1]	= (Cap_Water.Time_MONTH<<24)|(Cap_Water.Time_DAY<<16)|(Cap_Water.Time_HH<<8)|(Cap_Water.Time_MM);
		Cap_Records[i].CLRSTAT_Time_YEAR[1]		= (Cap_Water.Time_YEAR<<8)|(Cap_Water.Time_DAY_OF_WEEK);
		OIL_ADJ[i]								= 0.0;
		WATER_ADJ[i]							= 0.0;
		SALINITY[i]								= s[7];
		WATER_ALARM_LO[i]						= w_lo;
		WATER_ALARM_HI[i]						= w_hi;
	}

	DIO_TEMP_C.val = TRUE;
	
	Set_Temperature_Unit();
	
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_bmin, 		t_lo, 0, 0);
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_bmax, 		t_hi, 0, 0);
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_alarm_lo, 	t_lo, 0, 0);
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_alarm_hi, 	t_hi, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, 			  reg_direct_bmin, 		w_lo, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, 			  reg_direct_bmax, 		w_hi, 0, 0);
	
	VAR_Update(&REG_TEMPERATURE_EXTERNAL,	SIM_TEMPERATURE_EXTERNAL,										0, 0);
	VAR_Update(&REG_TEMPERATURE_USER_ADJUST,0.0, 															0, 0);
	VAR_Update(&REG_TEMPERATURE_USER,		REG_TEMPERATURE_EXTERNAL.val+REG_TEMPERATURE_USER_ADJUST.val, 	0, 0);
	VAR_Update(&REG_OIL_INDEX, 				0.0, 															0, 0);
	VAR_Update(&REG_WATER_INDEX, 			0.0, 															0, 0);
	VAR_Update(&OIL_P0, 					p0, 				 											0, 0);
	VAR_Update(&OIL_P1, 					p1, 															0, 0);
	VAR_Update(&Plot_Limit_Oil_Freq_Low, 			0.0, 															0, 0);
	VAR_Update(&Plot_Limit_Oil_Freq_High, 			1000.0, 														0, 0);
	VAR_Update(&Plot_Limit_Water_Freq_Low, 		0.0, 															0, 0);
	VAR_Update(&Plot_Limit_Water_Freq_High, 		1000.0, 														0, 0);
	VAR_Update(&REG_FREQ_OIL_LO, 			fo_lo, 															0, 0);
	VAR_Update(&REG_FREQ_OIL_HI, 			fo_hi, 															0, 0);
	VAR_Update(&REG_FREQ_WATER_LO, 			fw_lo, 															0, 0);
	VAR_Update(&REG_FREQ_WATER_HI, 			fw_hi, 															0, 0);

	Mirror_From_Stream_Table(&REG_STREAM_SELECT);

	Clear_Diagnostics();

	GIEP;
}
