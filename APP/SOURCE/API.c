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
/* File Name: API.C							    							*/
/* 									    									*/
/* File Description: API is a measurement unit American Patroleum Institute */
/* uses to measure radioactivity of the ground.  These functions address the*/
/* implementation of that standard unit.		    						*/
/*									    									*/
/****************************************************************************/
#define API_H
#define API_fail		2
#define API_extrapolate	1

#include "GLBLS.H"
#include "API.H"

/****************************************************************************/
/* API VCF																	*/
/*                                                                          */
/* Description: Uses Meter_Factor and Density to calculate VCF				*/
/*				(whatever that is.)											*/
/*                                                                          */
/* Arguments:	FLOW_COMP f - Flow Computer used for calculations - FC[0]	*/ 
/*				FLOAT VCFw  - water portion									*/
/*				FLOAT VCFo  - oil portion									*/
/*                                                                          */
/* Returns:    	void                                                        */
/*                                                                          */
/* Notes:       Volume Calibration Factor?  FC[0] is the only flow computer.*/
/*              Volume Correction Factor -DHA                                                            */
/****************************************************************************/
void API_VCF(FLOW_COMP* f, float* VCFw, float* VCFo)
{
	float t;
	float p;
	float B;
	double pST, vcf;

	VCFw[0]  = f->Meter_Factor.calc_val;
	VCFo[0]  = f->Meter_Factor.calc_val;
	VCFo[0] *= f->Shrinkage.calc_val;

	if((f->T.unit == u_temp_F) || (f->T.unit == u_temp_R))
	{/* API 60F */
		t = Convert(f->T.class, f->T.calc_unit, u_temp_F, f->T.calc_val, 0, f->T.aux);

		if ((f->density_oil.val>0.0) && (f->density_oilST.val>0.0))
			VCFo[0] *= (API_to_kgm3(f->density_oil.val)/API_to_kgm3(f->density_oilST.val));
		else
        {
			pST = API_to_kgm3(f->density_oilST.val);
			vcf = API_PT_ST(f->density_oilST.aux, pST, 1, 1);

			if (vcf>0.0)
				VCFo[0] *= vcf;
		}

		if ((f->density_water.val>0.0) && (f->density_waterST.val>0.0))
			VCFw[0] *= (f->density_water.val/f->density_waterST.val);
		else
        {
			if (t < 60.0)
				t = 60.0;		/* todo: how to handle this? */
			else if (t > 280.0)
				t = 280.0;		/* todo: how to handle this? */
			
			{/* calculate VCFw */
				t -= 60.0;

				if (f->density_waterST.val>0.0)
					B = (f->density_waterST.val - 999.0) / 7.2;
				else
					B = f->salinity.calc_val;
				
				if (B>14.0);	/* todo: how to handle this? */
				
				VCFw[0] *= 1.0 - (1.0312e-4 + 7.1568e-6*B)*t - (1.2701e-6 - 4.4641e-8*B)*t*t + (1.2333e-9 - 2.2436e-11*B)*t*t*t;
			}
		}
	}
	else
	{/* API 15C */
		t = Convert(f->T.class, f->T.calc_unit, u_temp_C, f->T.calc_val, 0, f->T.aux);

		if ((f->density_oil.val>0.0) && (f->density_oilST.val>0.0))
			VCFo[0] *= (f->density_oil.val/f->density_oilST.val);
		else
        {
			pST = API_to_kgm3(f->density_oilST.val);
			vcf = API_PT_ST(f->density_oilST.aux, pST, 1, 1);

			if (vcf>0.0)
				VCFo[0] *= vcf;
		}

		if ((f->density_water.val>0.0) && (f->density_waterST.val>0.0))
			VCFw[0] *= (f->density_water.val/f->density_waterST.val);
		else
        {
			if (t < 15.0)
				t = 15.0;		/* todo: how to handle this? */
			else if (t > 138.0)
				t = 138.0;		/* todo: how to handle this? */
			
			{/* calculate VCFw */
				t -= 15.0;

				if (f->density_waterST.val>0.0)
					B = (f->density_waterST.val - 999.0) / 7.2;
				else
					B = f->salinity.calc_val;
				
				if (B>14.0);	/* todo: how to handle this? */
				
				VCFw[0] *= 1.0 - (1.8562e-4 + 1.2882e-5*B)*t - (4.1151e-6 - 1.4464e-7*B)*t*t + (7.1926e-9 - 1.3085e-10*B)*t*t*t;
			}
		}
	}
}

/****************************************************************************/
/* API STATUS																*/
/*                                                                          */
/* Description: Clears DIAGNOSTICS[1]'s fail and extrapolate status bits.   */
/*                                                                          */
/* Arguments:	CONST INT fcidx - switch flow computer error index			*/
/*				CONST BOOL type - fail(1) or extrapolate(2)					*/
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Not sure what the context of fail and extrapolate are.      */
/*                                                                          */
/****************************************************************************/
void API_STATUS(const int fcidx, const BOOL type)
{
	unsigned int r;
	unsigned int f;	/* fail code */
	unsigned int e; /* extrapolate code */

	switch (fcidx)
	{/* clear bits - fail and extrapolate codes */
		case 2:
		{
			f = ERROR2_FC3_FAIL;
			e = ERROR2_FC3_EXTRAPOLATE;
			break;
		}
		case 1:
		{
			f = ERROR2_FC2_FAIL;
			e = ERROR2_FC2_EXTRAPOLATE;
			break;
		}
		case 0:
		{
			f = ERROR2_FC1_FAIL;
			e = ERROR2_FC1_EXTRAPOLATE;
			break;
		}
		default:
		{
			return;
		}
	}

	r 				= e|f;
	DIAGNOSTICS[1] &= (0xFFFFFFFF & r);
	r 				= 0;

	switch (type)
	{
		case 1:
		{/* extrapolate */
			r = e;
			break;
		}
		case 2:
		{/* fail */
			r = f;
			break;
		}
		default:
		{/* leave cleared */
			break;
		}
	}

	DIAGNOSTICS[1] |= r;
}

/****************************************************************************/
/* API 60F PT																*/
/*                                                                          */
/* Description: Converts from 60F to process temperature.                   */
/*                                                                          */
/* Arguments:   CONST INT fxidx 	- flow computer index					*/
/*				CONST DOUBLE r 		- data to be converted					*/
/*				INT POINTER k_set 	- constant set 							*/
/*                                                                          */
/* Returns:     DOUBLE t - temperature                                      */
/*                                                                          */
/* Notes:       r looks like it is used as a temporary variable used in		*/
/*				calculating the final temperature.							*/
/*                                                                          */
/****************************************************************************/
double API_60F_PT(const int fcidx, const double r, int* k_set)
{/* convert from 60F to process Temperature */
 	double t;	/* temperature */
	
	double p;	/* pressure (NOT! -DHA)*/
				/* Lesson worth learning here. False and misleading comments
				   are worse than no comments at all. This variable is DENSITY (rho)
				   -DHA
				*/	
	
	double a;
	double k0;	/* constant */
	double k1;	/* constant */
	double k2;	/* constant */
	double t1;	
	double t2;
	double t3;
	FLOW_COMP* f;

	_GIEP;
	f = &FC[fcidx];
	t = Convert(f->T.class, f->T.calc_unit, u_temp_F, f->T.calc_val, 0, f->T.aux);
	p = kgm3_to_API(r);

	API_STATUS(fcidx, 0);			/* clear API status bits */

	switch (f->API_TABLE>>8)
	{
		case 'A':
		{/* crude oil */
			//if((t<0.0) || (p<0.0) || (p>100.0))
			if((t<0.0) || (p<0.0) || (p>183.0))
			{/* fail - return API_error_num */
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if(p<40.0)
			{/* p<40 && (250<t<400) ? extrapolate : fail */
				//if(t>300.0) // FEB 2, 2022 : DKOH : bug#112
				if(t>400.0) // FEB 2, 2022 : DKOH : bug#112
				{/* fail */
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if(t>250.0)
					API_STATUS(fcidx, API_extrapolate);
			}
			else if(p<50.0)
			{/* p<50 && (200<t<400) ? extrapolate : fail */
				//if(t>250.0) // FEB 2, 2022 : DKOH : bug#112
				if(t>400.0) // FEB 2, 2022 : DKOH : bug#112
				{/* fail */
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if(t>200.0)
					API_STATUS(fcidx, API_extrapolate);
			}
			else if(p<55.0)
			{/* p<55 && (150<t<400) ? extrapolate : fail */
				//if(t>200.0) // FEB 2, 2022 : DKOH : bug#112
				if(t>400.0) // FEB 2, 2022 : DKOH : bug#112
				{/* fail */
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if(t>150.0)
					API_STATUS(fcidx, API_extrapolate);
			}
			else if(p<=100.0)
			{/* p<=100 && t<400 ? extrapolate : fail */
				//if(t>200.0) // FEB 2, 2022 : DKOH : bug#112
				if(t>400.0) // FEB 2, 2022 : DKOH : bug#112
				{/* fail */
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else
					API_STATUS(fcidx, API_extrapolate);
			}
////////// ADDED BY DKOH JAN 12, 2022 BUG#112 /////////////
			else if(p<=183.0)
			{/* p<=183 && t<400 ? PDI : fail */
				if(t>400.0) // FEB 2, 2022 : DKOH : bug#112
				{/* fail */
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if(t>200.0)
					API_STATUS(fcidx, API_extrapolate);
			}
////////// ADDED BY DKOH JAN 12, 2022 BUG#112 /////////////

			k_set[0] = 0;
			k0 		 = 341.0957;
			k1 		 = 0.0;
			k2 		 = 0.0;

			break;
		}
		case 'B':
		{/* generalized products */
			if ((t<0.0) || (p<0.0) || (p>85.0))
			{/* fail */
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if (p<40.0)
			{/* p<40 && (300<t>250) ? extrapolate : fail */
				if (t>300.0)
				{
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if (t>250.0)
					API_STATUS(fcidx, API_extrapolate);
			}
			else if (p<50.0)
			{/* p<50 && (250<t>200) ? extrapolate : fail */
				if (t>250.0)
				{
					API_STATUS(fcidx, API_fail);
					GIEP; 
					return API_error_num;
				}
				else if (t>200.0)
					API_STATUS(fcidx, API_extrapolate);
			}
			else if (p<=85.0)
			{/* p<=85 && (200<t>150) ? extrapolate : fail */
				if (t>200.0)
				{
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if (t>150.0)
					API_STATUS(fcidx, API_extrapolate);
			}
	
			if (k_set[0]==-1)
			{
				if ((p>=0.0) && (p<37.0))
					k_set[0] = 1;
				else if ((p>=37.0) && (p<48.0))
					k_set[0] = 2;
				else if ((p>=48.0) && (p<52.0))
					k_set[0] = 3;
				else if ((p>=52.0) && (p<=85.0))
					k_set[0] = 4;
				else
					k_set[0] = -1;
			}
	
			switch (k_set[0])
			{
				case 1:
				{
					k0 = 103.8720;
					k1 = 0.2701;
					k2 = 0.0;
					
					break;
				}
				case 2:
				{
					k0 = 330.3010;
					k1 = 0.0;
					k2 = 0.0;
					
					break;
				}
				case 3:
				{
					k0 = 1489.0670;
					k1 = 0.0;
					k2 = -0.00186840;
					
					break;
				}
				case 4:
				{
					k0 = 192.4571;
					k1 = 0.2438;
					k2 = 0.0;
					
					break;
				}
				case 0:
				default:
				{
					k_set[0] = -1;
					GIEP; 
					
					return API_error_num;
				}
			}

			break;
		}
		case 'C':
		{
			k_set[0] = 0;
			a = f->a * 10e6;

			if ((t<0.0) || (a<270.0) || (a>930.0))
			{/* if any of these conditions are met - error */
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if ((a<510.0) && (t>300.0))
			{
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if ((a<530.0) && (t>250.0))
			{
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if ((a<=930.0) && (t>200.0))
			{
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}

			a = f->a;
			
			break;
		}
		case 'D':
		default:
		{/* refined lubricants and oils */
			f->API_TABLE = 'D'<<8;

			if ((p<-10.0) || (p>45.0) || (t<0.0) || (t>300.0))
			{/* error conditions */
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}

			k_set[0] = 0;
			k0 		 = 0.0;
			k1 		 = 0.34878;
			k2 		 = 0.0;

			break;
		}
	}

	t -= 60.0;
	p  = r;

	if ((f->API_TABLE>>8) != 'C')
	{//a = (k0/(p*p)) + (k1/p) + k2;
		t1 = truncate((k0/p),8);
		t2 = truncate((t1/p),8);
		t3 = truncate((k1/p),8);
		a  = sigfig((t2+t3+k2), 4);
	}

	t = p * exp(-a*t*(1.0+0.8*a*t));
	GIEP;

	return t;
}

/****************************************************************************/
/* API 15C PT																*/
/*                                                                          */
/* Description: Converts 15C to process temperature.                        */
/*                                                                          */
/* Arguments:   CONST INT fxidx		- flow computer index					*/
/*				CONST DOUBLE r		- data to be converted					*/
/*				INT POINTER k_set	- constant set							*/
/*                                                                          */
/* Returns:     DOUBLE t - temperature                                      */
/*                                                                          */
/* Notes:       none.												        */
/*                                                                          */
/****************************************************************************/
double API_15C_PT(const int fcidx, const double r, int* k_set)
{/* convert from 15C to process Temperature */
	double t;	/* temperature */
	
	double p;	/* pressure (NOT! -DHA)*/
				/* Lesson worth learning here. False and misleading comments
				   are worse than no comments at all. This variable is DENSITY (rho)
				   -DHA
				*/	
	
	double a;	/* case C variable */
	double k0;	/* constant */
	double k1;	/* constant */
	double k2;	/* constant */
	double t1;
	double t2;
	double t3;
	FLOW_COMP* f; /* flow computer */

	_GIEP;

	f = &FC[fcidx];
	t = Convert(f->T.class, f->T.calc_unit, u_temp_C, f->T.calc_val, 0, f->T.aux);
	p = r;

	API_STATUS(fcidx, 0);			/* clear API status bits */

	switch (f->API_TABLE>>8)
	{
		case 'A':
		{/* crude oil */
			//if ((t<-18.0) || (p<610.5) || (p>1075.0))
			if ((t<-18.0) || (p<450.0) || (p>1075.0))
			{/* error conditions */
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if (p<758.0)
			{/* p<758 && t<204 ? extrapolate : fail */
				//if (t>90.0)// FEB 2, 2022 : DKOH : bug#112
				if (t>204.0) // FEB 2, 2022 : DKOH : bug#112
				{
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else
					API_STATUS(fcidx, API_extrapolate);
			}
			else if (p<778.5)
			{/* p<778.5 && 60<t<204 ? extrapolate : fail */
				//if (t>90.0)// FEB 2, 2022 : DKOH : bug#112
				if (t>204.0) // FEB 2, 2022 : DKOH : bug#112
				{
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if (t>60.0)
					API_STATUS(fcidx, API_extrapolate);
			}                                               
			else if (p<824.0)
			{/* p<824 && 90<t<204 ? extrapolate : fail */
				//if (t>120.0) // FEB 2, 2022 : DKOH : bug#112
				if (t>204.0) // FEB 2, 2022 : DKOH : bug#112
				{
					API_STATUS(fcidx, API_fail);
					GIEP; return API_error_num;
				}
				else if (t>90.0)
					API_STATUS(fcidx, API_extrapolate);
			}
			else if (p<=1075.0)
			{/* p<1075 && 120<t<204 ? extrapolate : fail */
				//if (t>150) // FEB 2, 2022 : DKOH : bug#112
				if (t>204.0) // FEB 2, 2022 : DKOH : bug#112
				{
					API_STATUS(fcidx, API_fail);
					GIEP; return API_error_num;
				}
				else if (t>120.0)
					API_STATUS(fcidx, API_extrapolate);
			}
	
			k_set[0] = 0;
			k0 = 613.9723;
			k1 = 0.0;
			k2 = 0.0;

			break;
		}
		case 'B':
		{/* generalized products */
			if ((t<-18.0) || (p<653.0) || (p>1075.0))
			{/* error conditions */
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if (p<778.5)
			{/* p<778.5 && 60<t<90 ? extrapolate : fail */
				if (t>90.0)
				{
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if (t>60.0)
					API_STATUS(fcidx, API_extrapolate);
			}
			else if (p<824.0)
			{/* p<824 && 90<t<120 ? extrapolate : fail */
				if (t>120.0)
				{
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if (t>90.0)
					API_STATUS(fcidx, API_extrapolate);
			}
			else if (p<=1075.0)
			{/* p<778.5 && 120<t<150 ? extrapolate : fail */
				if (t>150.0)
				{
					API_STATUS(fcidx, API_fail);
					GIEP; 
					
					return API_error_num;
				}
				else if (t>120.0)
					API_STATUS(fcidx, API_extrapolate);
			}
	
			if (k_set[0]==-1)
			{/* set constant set for pressure range */
				if ((p>=653.0) && (p<770.0))
					k_set[0] = 1;
				else if ((p>=770.0) && (p<788.0))
					k_set[0] = 2;
				else if ((p>=788.0) && (p<839.0))
					k_set[0] = 3;
				else if ((p>=839.0) && (p<=1075.0))
					k_set[0] = 4;
				else
					k_set[0] = -1;
			}
	
			switch (k_set[0])
			{/* switch on constant set */
				case 1:
				{
					k0 = 346.4228;
					k1 = 0.4388;
					k2 = 0.0;
					
					break;
				}
				case 2:
				{
					k0 = 2680.3206;
					k1 = 0.0;
					k2 = -0.00336312;
					
					break;
				}
				case 3:
				{
					k0 = 594.5470;
					k1 = 0.0;
					k2 = 0.0;
					
					break;
				}
				case 4:
				{
					k0 = 186.9696;
					k1 = 0.4862;
					k2 = 0.0;
					
					break;
				}
				case 0:
				default:
				{
					k_set[0] = -1;
					GIEP; 
					
					return API_error_num;
				}
			}

			break;
		}
		case 'C':
		{
			k_set[0] = 0;
			a 		 = f->a * 10e6;
			t1 		 = (t*1.8) + 32.0;

			if ((t1<0.0) || (a<270.0) || (a>930.0))
			{/* these cases represent error conditions */
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if ((a<510.0) && (t1>300.0))
			{
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if ((a<530.0) && (t1>250.0))
			{
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}
			else if ((a<=930.0) && (t1>200.0))
			{
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}

			a = f->a;
			
			break;
		}
		case 'D':
		default:
		{/* refined lubricants and oils */
			f->API_TABLE = 'D'<<8;
			p 			 = kgm3_to_API(r);
			t1 			 = (t*1.8) + 32.0;

			if ((p<-10.0) || (p>45.0) || (t1<0.0) || (t1>300.0))
			{/* error conditions */
				API_STATUS(fcidx, API_fail);
				GIEP; 
				
				return API_error_num;
			}

			k_set[0] = 0;
			k0 		 = 0.0;
			k1 		 = 0.6278;
			k2 		 = 0.0;

			break;
		}
	}

	t -= 15.0;
	p  = r;

	if ((f->API_TABLE>>8) != 'C')
	{//a = (k0/(p*p)) + (k1/p) + k2;
		t1 = truncate((k0/p),8);
		t2 = truncate((t1/p),8);
		t3 = truncate((k1/p),8);
		a  = sigfig((t2+t3+k2), 4);
	}

	t = p * exp(-a*t*(1.0+0.8*a*t));

	GIEP;
	return t;
}

/****************************************************************************/
/* API PT ST																*/
/*                                                                          */
/* Description: Converts from process temperature to standard temperature.  */
/*                                                                          */
/* Arguments:	CONST INT fcidx		- Flow Computer Index					*/
/*				CONST DOUBLE r		- data to be converted					*/
/*				CONST BOOL F60		- F60 API unit							*/
/*				CONST BOOL RET_VCF	- return VCF?							*/
/*                                                                          */
/* Returns:     DOUBLE pnext - r that is converted                          */
/*                                                                          */
/* Notes:                                                                   */
/*                                                                          */
/****************************************************************************/
double API_PT_ST(const int fcidx, const double r, const BOOL F60, const BOOL RET_VCF)
{/* convert from process temperature to standard temperature */
	double pini;	/* initial data */
	double pn;		/* calculated data */
	double pnext;	
	double a;		/* API @ process temperature */
	double p;		/* process API */
	double vcf;
	int i;			/* Counter */
	int k, k0;		/* Constants */
	BOOL k_change;	/* Change constants? */
	BOOL cont;		/* Continue? */
	FLOW_COMP* f;	/* FC[fcidx] - Flow Computer @ index */

	_GIEP;

	i = 0;
	f = &FC[fcidx];
	pini = r;
	pn = pini;
	pnext = API_error_num;
	k = -1;

	while(1)
	{/* loops 25 times */
		i++;

		if (i>25)
		{/* too many iterations */
			API_STATUS(fcidx, API_fail);
			pnext = API_error_num;
			
			break;
		}

		k0 = k;
		
		if (F60)
			a = API_60F_PT(fcidx, pn, &k);
		else		
			a = API_15C_PT(fcidx, pn, &k);

		if (a==API_error_num)
		{
			pnext = API_error_num;
			
			break;
		}

		p 		 = kgm3_to_API(a);
		k_change = FALSE;
		cont 	 = FALSE;

		switch (f->API_TABLE>>8)
		{/* does result fit into API range? if not, force the curve set and try again */
			case 'A':	/* crude oil */
				break;
			case 'B':
			{/* generalized products */
				if (F60)
				{/* API 60F */
					if ((p>=0.0) && (p<37.0))
					{/* k = 1 */
						if (k!=k0)
						{    
							k = 1;
							
							if (k0!=-1) 
								k_change = TRUE;
						}
					}
					else if ((p>=37.0) && (p<48.0))
					{/* k = 2 */
						if (k!=k0)
						{    
							k = 2;
							
							if (k0!=-1) 
								k_change = TRUE;
						}
					}
					else if ((p>=48.0) && (p<52.0))
					{/* k = 3 */
						if (k!=k0)
						{    
							k = 3;
							
							if (k0!=-1) 
								k_change = TRUE;
						}
					}
					else if ((p>=52.0) && (p<=85.0))
					{/* k = 4 */
						if (k!=k0)
						{    
							k = 4;
							
							if (k0!=-1) 
								k_change = TRUE;
						}
					}
				}
				else
				{
					if ((p>=653.0) && (p<770.0))
					{/* k = 1 */
						if (k!=k0)
						{    
							k = 1;
							
							if (k0!=-1) 
								k_change = TRUE;
						}
					}
					else if ((p>=770.0) && (p<788.0))
					{/* k = 2 */
						if (k!=k0)
						{    
							k = 2;
							
							if (k0!=-1) 
								k_change = TRUE;
						}
					}
					else if ((p>=788.0) && (p<839.0))
					{/* k = 3 */
						if (k!=k0)
						{    
							k = 3;
							
							if (k0!=-1) 
								k_change = TRUE;
						}
					}
					else if ((p>=839.0) && (p<=1075.0))
					{/* k = 4 */
						if (k!=k0)
						{    
							k = 4;
							
							if (k0!=-1) 
								k_change = TRUE;
						}
					}

					break;
				}
	
				if (k_change)
				{
					pn 	 = pini;
					cont = TRUE;
				}

				break;
			}
			case 'C':
				break;
			case 'D':
			default:
			{/* refined lubricants and oils */
				f->API_TABLE = 'D'<<8;
				break;
			}
		}

		if (cont)
			continue;
		
		vcf = sigfig(a/pn,7);
		
		if (RET_VCF)
		{
			pnext = vcf;
			
			break;
		}

		pnext = sigfig(pini/vcf,7);

		if ((pnext-pn)<0.050)
			break;
		
		pn = pnext;
	}

	GIEP;
	return pnext;
}

/****************************************************************************/
/* KGM3 TO API																*/
/*                                                                          */
/* Description: Converts from KG/M^3 to API                                 */
/*                                                                          */
/* Arguments:	CONST DOUBLE r - return value                               */
/*                                                                          */
/* Returns:     DOUBLE error or return value                                */
/*                                                                          */
/* Notes:       return value: ((141.5 * 999.012) / r) - 135.5               */
/*                                                                          */
/****************************************************************************/
double kgm3_to_API(const double r)
{
	if (r<=(double)0.0) 
		return (double)API_error_num;
	
	return (double)(((141.5*999.012)/r)-131.5);
}

/****************************************************************************/
/* API TO KGM3																*/
/*                                                                          */
/* Description: Converts from API to KG/M^3                                 */
/*                                                                          */
/* Arguments:   CONST DOUBLE r - return value                               */
/*                                                                          */
/* Returns:     DOUBLE 0.0 or return value                             	    */
/*                                                                          */
/* Notes:       return value: (141.5 * 999.012) / (r + 131.5)               */
/*                                                                          */
/****************************************************************************/
double API_to_kgm3(const double r)
{
	if (r==(double)API_error_num) 
		return (double)0.0;
		
	return (double)(141.5*999.012/(r+131.5));
}
