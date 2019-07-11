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
/* File Name: ADC.C							    							*/
/* 									    									*/
/* File Description:  This file implements some functions that are useful	*/
/* for reading the ADCs and setting them up.	    						*/
/*									    									*/
/****************************************************************************/
#define ADC_H

#include "GLBLS.H"
#include "ADC.H"

/****************************************************************************/
/* SETS UP THE ADC                              							*/
/*                                                                          */
/* Description: Sets up an ADC although I'm not quite sure how.	            */
/*                                                                          */
/* Arguments:	n - the ADC number                                          */
/*                                                                          */
/* Returns:		void                                                        */
/*                                                                          */
/* Notes: 		Reads ADCs based on either SA or EEA.                       */
/*                                                                          */
/****************************************************************************/
void Setup_ADC(int n)
{
	unsigned int p[2];
	BOOL r;

	READ_ADC_INPUTS = 0;

	if ((n>=ADC_Ain1) && (n<=ADC_Ain5))
		AI[n-ADC_Ain1].present = FALSE;
	
	VAR_NaN(&REG_ADC[n]);
	ADC_INT[n] = 0;

	if (SA)
	{
		_GIEP;

		switch(n)
		{
			case ADC_Text:
			{
				RTD_R = 100.0;	/* do not break */
			}
			/*case ADC_Vref:
			//case ADC_Vinc:
			//case ADC_Spare ADC_Tint:*/
			{
				SEL_ADC;        		
				*SP0_TXDATA = TLV_WRCFR;	/* INIT HOST SELECT MODE */ 
				WAIT_SP0;
				
				SEL_ADC; 					/* setup ADC */
				*SP0_TXDATA = (ADC_CONFIG | TLV_CFR_EXTREF); 
				WAIT_SP0;
                
                ENABLE_EXTINT2;
			   	DISABLE_INT2;
			   	CLEAR_INT2;

				break;
			}
   			case ADC_Tint:
			{
				if (HW_VER>=0xB7)
				{
					p[0] = 0x70;
					r 	 = Write_TMP75(1, 1, (unsigned char*)p);	/* config register */
		
					p[0] = 0x40;
					p[1] = 0x00;
					r 	 = Write_TMP75(2, 2, (unsigned char*)p);	/* Tlow */
		
					p[0] = 0xE7;
					p[1] = 0x00;
					r 	 = Write_TMP75(3, 2, (unsigned char*)p);	/* Thigh */
				}

				break;
			}
		}

		GIEP;
		return;
	}

	switch(n)
	{
		case ADC_Tint:
		{
			p[0] = 0x70;
			r = Write_TMP75(1, 1, (unsigned char*)p);	/* config register */

			p[0] = 0x40;
			p[1] = 0x00;
			r = Write_TMP75(2, 2, (unsigned char*)p);	/* Tlow */

			p[0] = 0xE7;
			p[1] = 0x00;
			r = Write_TMP75(3, 2, (unsigned char*)p);	/* Thigh */

			break;
		}
  		case ADC_Text:
		{
			RTD_R = 100.0;		/* do not break */
		}
		case ADC_Vinc:
		case ADC_Vref:
		{/* ADC_ADDRA1 */
			Read_ADCn(n, 1);	/* start conversion */
			ADC_ACTIVE[0] = n;
			break;
		}
        case ADC_Ain1:
		case ADC_GNDSEN:
		case ADC_VTUNE:
		{/* ADC_ADDRA2 */
			Read_ADCn(n, 1);	/* start conversion */
			ADC_ACTIVE[1] = n;
			break;
		}
        case ADC_Ain4:
		case ADC_Ain3:
		case ADC_Ain2:
		{/* ADC_ADDRIO1 */
			Read_ADCn(n, 1);	/* start conversion */
			ADC_ACTIVE[2] = n;
			break;
		}
        case ADC_Ain5:
		{/* ADC_ADDRIO2 */
			Read_ADCn(n, 1);	/* start continuous conversion */
			break;
		}
        default:
		{
         	break;
		}
	}
}

/****************************************************************************/
/* READ TEST FOR THE ADC                              						*/
/*                                                                          */
/* Description: Tests to see if you can read the ADC.			            */
/*                                                                          */
/* Arguments:	void				                                        */
/*                                                                          */
/* Returns:		void                                                        */
/*                                                                          */
/* Notes: 		Tests the voltages (REFP+REFM)/2, REFP and REFM             */
/*                                                                          */
/****************************************************************************/
void Read_ADC_test(void)
{
	if (!SA) return;

	_GIEP;

	{/* test, voltage (REFP+REFM)/2 */
		SEL_ADC; *SP0_TXDATA = (TLV_REFPM); WAIT_SP0;
	    TLV_REF[0] = SP0_RX_DATA & 0xFFF0;
	}

	{/* test, voltage REFP */
		SEL_ADC; *SP0_TXDATA = (TLV_REFP); WAIT_SP0;
	    TLV_REF[1] = SP0_RX_DATA & 0xFFF0;
	}

	{/* test, voltage REFM */
		SEL_ADC; *SP0_TXDATA = (TLV_REFM); WAIT_SP0;
	    TLV_REF[2] = SP0_RX_DATA & 0xFFF0;
	}

	GIEP;
}

/****************************************************************************/
/* READ ADC FIFO															*/
/*                                                                          */
/* Description: Updates REG_ADC[ADC_Text], REG_ADC[ADC_Spare]            	*/
/*              REG_ADC[ADC_Vinc], REG_ADC[ADC_Vref]         	            */
/*																			*/
/* Arguments:  	void                                                        */
/*                                                                          */
/* Returns:    	void                                                        */
/*                                                                          */
/* Notes:		SA ONLY - Some of these equations could be optimized.       */
/*                                                                          */
/****************************************************************************/
void Read_ADC_FIFO(void)
{
	int i;
	float f;
	unsigned int a[4];

	if (!SA) 
		return;

	_GIEP;

	for (i=0;i<4;i++)
	{/* select channel to start sweep */
		SEL_ADC; 
		*SP0_TXDATA = (TLV_FIFO); 
		WAIT_SP0;
	 /* select channel to start sweep */		
	
		a[i] = (SP0_RX_DATA & 0xFFF0)>>4;
	}
	
	/* Calculate ADC_Text */
	ADC_INT[ADC_Text] 	= a[3];
	f 					= ((float)ADC_INT[ADC_Text] * ADC_TRIM_F_1[ADC_Text] / ADC_TRIM_I_1[ADC_Text]);
	f 					=   ((RTD_CAL_HI_OHM - RTD_CAL_LO_OHM) / (RTD_CAL_HI_V - RTD_CAL_LO_V)) * f 
						  + ((RTD_CAL_LO_OHM * RTD_CAL_HI_V - RTD_CAL_HI_OHM * RTD_CAL_LO_V) / (RTD_CAL_HI_V - RTD_CAL_LO_V));
	RTD_R 				= f;
	f 					= TCE2 * TCE * TCE * f * f + TCE1 * TCE * f + TCE0;
	f 					= (f * TEMPERATURE_TRIM_T1) + TEMPERATURE_TRIM_T0;
	
	VAR_Update(&REG_ADC[ADC_Text], f, 0, 0);

	if(HW_VER<0xB7)
	{/* old method for reading internal temperature with AD592 - REG_ADC[ADC_Tint] */
		ADC_INT[ADC_Tint] 	= a[2];
		f 					= ((float)ADC_INT[ADC_Tint] * ADC_TRIM_F_1[ADC_Tint] / ADC_TRIM_I_1[ADC_Tint]);
		
		#define TCI 182.1493625
		
		f = TCI*f - 273.15;
		
		VAR_Update(&REG_ADC[ADC_Tint], f, 0, 0);
	}
	else
	{/* Calculate ADC_Spare */
		ADC_INT[ADC_Spare] 	= a[2];
		f 					= ((float)ADC_INT[ADC_Spare]*ADC_TRIM_F_1[ADC_Spare]/ADC_TRIM_I_1[ADC_Spare]);
		
		VAR_Update(&REG_ADC[ADC_Spare], f, 0, 0);
	}
	
	/* Calculate ADC_Vinc */
	ADC_INT[ADC_Vinc] 	= a[1];
	f 					= ((float)ADC_INT[ADC_Vinc]*ADC_TRIM_F_1[ADC_Vinc]/ADC_TRIM_I_1[ADC_Vinc]);
	
	VAR_Update(&REG_ADC[ADC_Vinc], f, 0, 0);

	/* Calculate ADC_Vref */
	ADC_INT[ADC_Vref] 	= a[0];
	f 					= ((float)ADC_INT[ADC_Vref]*ADC_TRIM_F_1[ADC_Vref]/ADC_TRIM_I_1[ADC_Vref]);
	
	VAR_Update(&REG_ADC[ADC_Vref], f, 0, 0);

	READ_ADC_INPUTS = 4;
	GIEP;
}

/****************************************************************************/
/* CONVERT ADC																*/
/*                                                                          */
/* Description:	TLV_AIN0 gets put into SP0_TXDATA for each ADC?             */
/*                                                                          */
/* Arguments:	void                                                        */
/*                                                                          */
/* Returns:		void                                                        */
/*                                                                          */
/* Notes:		SA ONLY - Not sure what TLV_AIN0 is.                        */
/*                                                                          */
/****************************************************************************/
void Convert_ADC(void)
{
	int i,j;

	if (!SA) 
		return;

	_GIEP;

   	CLEAR_INT2;

	for (i=0;i<4;i++)
	{
		SEL_ADC; 
		*SP0_TXDATA = TLV_AIN0; 
		WAIT_SP0;
		
		for (j=0;j<100;j++);	/* wait at least 14 serial bus clock cycles */
	}

   	ENABLE_INT2;

	GIEP;
}

/****************************************************************************/
/* WRITE ADC DAC															*/
/*                                                                          */
/* Description: Writes n bytes to an address.								*/
/*                                                                          */
/* Arguments:	INT addr 				- Destination Address				*/
/*				INT n					- Number of bytes 					*/
/*				UNSIGNED CHAR POINTER p - Payload buffer           			*/
/*                                                                          */
/* Returns:		BOOL r - TRUE if transfer is successful.                    */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
BOOL Write_ADC_DAC(int addr, int n, unsigned char* p)
{
	int i;
	unsigned char dat;
	BOOL ack;
	BOOL r;

	r = TRUE;
	I2C_START;

	while(TRUE)
	{
		dat = addr;						/* address without read bit set - indicates write */
		ack = I2C_TX_BYTE(dat);
		
		if (!ack)
		{/* check if address exists */
			r = FALSE;
			break;
		}

		for (i=0;i<n;i++)
		{/* start transfer of bytes */
			ack = I2C_TX_BYTE(p[i]);	/* write the bytes */
			
			if (!ack)
			{/* check for successful write */
				r = FALSE;
				break;
			}
		}

		break;
	}

	I2C_STOP;

	return r;
}

/****************************************************************************/
/* READ ADC DAC																*/
/*                                                                          */
/* Description: Reads n bytes from an address	                            */
/*                                                                          */
/* Arguments:   INT addr 				- Source Address                    */
/*				INT n 					- Number of bytes					*/
/*				UNSIGNED CHAR POINTER p	- Payload buffer                    */
/*																			*/
/* Returns:		BOOL r - Returns TRUE if successful read.                   */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
BOOL Read_ADC_DAC(int addr, int n, unsigned char* p)
{
	int i,j;
	unsigned char dat;
	BOOL ack;
	BOOL r;

	r = TRUE;
	I2C_START;

	while(TRUE)
	{
		dat = addr | 0x01;				/* address with read bit set */
		ack = I2C_TX_BYTE(dat);
		
		if (!ack)
		{/* check if address exists */
			r = FALSE;
			break;
		}

		for (i=0;i<(n-1);i++)
			I2C_RX_BYTE(&p[i],1);		/* read the bytes */
		
		I2C_RX_BYTE(&p[n-1],0);			/* the final byte to read */

		break;
	}

	I2C_STOP;

	return r;
}

/****************************************************************************/
/* WRITE TMP75																*/
/*                                                                          */
/* Description: Write n bytes to the RTD ADC  								*/
/*                                                                          */
/* Arguments:	INT addr 				- Destination Address.				*/
/*				INT n					- Number of Bytes to Write.			*/
/*				UNSIGNED CHAR POINTER p - Payload Buffer					*/
/*                                                                          */
/* Returns:     BOOL r - Returns TRUE if successful Write.                  */
/*                                                                          */
/* Notes:       ADC_TMP is the address of the RTD ADC                       */
/*                                                                          */
/****************************************************************************/
BOOL Write_TMP75(int addr, int n, unsigned char* p)
{
	int i;
	unsigned char dat;
	BOOL ack;
	BOOL r;

	r = TRUE;
	_GIEP;
	I2C_START;

	while(TRUE)
	{
		dat = ADC_TMP;					/* address without read bit set - Indicates Write */
		ack = I2C_TX_BYTE(dat);
		
		if (!ack)
		{
			r = FALSE;
			break;
		}

		ack = I2C_TX_BYTE(addr);		/* the set the pointer */
		
		if (!ack)
		{
			r = FALSE;
			break;
		}

		for (i=0;i<n;i++)
		{
			ack = I2C_TX_BYTE(p[i]);	/* write the bytes */
			
			if (!ack)
			{
				r = FALSE;
				break;
			}
		}

		break;
	}

	I2C_STOP;
	GIEP;

	return r;
}

/****************************************************************************/
/* READ TMP75																*/
/*                                                                          */
/* Description: Reads n Bytes from RTD ADC, for n>1 bytes.                  */
/*                                                                          */
/* Arguments:   INT addr				- Source Address					*/
/*				INT n					- Number of Bytes to Write			*/
/*				UNSIGNED CHAR POINTER p - Payload Buffer					*/
/*                                                                          */
/* Returns:     BOOL r - Returns TRUE if successful Read                    */
/*                                                                          */
/* Notes:       ADC_TMP is the address of the RTD ADC                       */
/*                                                                          */
/****************************************************************************/
BOOL Read_TMP75(int addr, int n, unsigned char* p)
{
	int i,j;
	unsigned char dat;
	BOOL ack;
	BOOL r;

	r = TRUE;
	_GIEP;

	if (!Write_TMP75(addr, 0, p))
	{/* check the ADC_TMP address */
		GIEP;
		return FALSE;
	}

	I2C_START;

	while(TRUE)
	{
		dat = ADC_TMP | 0x01;				/* address with read bit set */
		ack = I2C_TX_BYTE(dat);
		
		if (!ack)
		{/* check ADC_TMP address */
			r = FALSE;
			break;
		}

		ack = TRUE;
		
		for (i=0;i<n;i++)
		{/* if n is 1 don't do it */
			if (i==(n-1)) 
				ack = FALSE;
			
			I2C_RX_BYTE(&p[i],ack);			/* read the bytes */
		}

		break;
	}

	I2C_STOP;

	GIEP;
	return r;
}

/****************************************************************************/
/* READ ADCn																*/
/*                                                                          */
/* Description:	Reads ADC n.                                                */
/*                                                                          */
/* Arguments:	INT n 		- selects which ADC to read.					*/
/*				BOOL START 	- setup cfg register							*/
/*                                                                          */
/* Returns:     BOOL r - returns TRUE if successful Read                    */
/*                                                                          */
/* Notes:       Not sure what setting up cfg register does.  May need to	*/
/*				debug.                                                      */
/*                                                                          */
/****************************************************************************/
void Read_ADCn(int n, BOOL START)
{
	float f;
	int addr;
	unsigned int ch;
	unsigned int p[3];
	BOOL r;
	
	switch(n)
	{
		case ADC_Tint:
		{/* ADC_TMP */
			r = Read_TMP75(0, 2, (unsigned char*)p);
			
			if (!r)
				VAR_NaN(&REG_ADC[n]);
			else
			{
				ADC_INT[n] = (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF));
				ADC_INT[n] = ADC_INT[n]>>4;
				f = (float)ADC_INT[n]/16.0;
				VAR_Update(&REG_ADC[n], f, 0, 0);
			}
			break;
		}
		case ADC_Text:
		case ADC_Vinc:
		case ADC_Vref:
		{/* ADC_ADDRA1 */
		 /* note: can read +/-2.048, but assume >=0) */
			addr = ADC_ADDRA1;
			
			if (n==ADC_Vref) 
				ch = ADC_CH0;
			else if (n==ADC_Vinc) 
				ch = ADC_CH1;
			else if (n==ADC_Text) 
				ch = ADC_CH2;
			
			if (START)
			{/* single conversion mode & start conversion */
				p[0]	= 0x9C;	
				p[0]   |= ch;
				r 		= Write_ADC_DAC(addr, 1, (unsigned char*)p);	/* setup cfg register */
				
				if (!r)
					VAR_NaN(&REG_ADC[n]);
			}
			else
			{
				r = Read_ADC_DAC(addr, 3, (unsigned char*)p);
				
				if (!r)
					VAR_NaN(&REG_ADC[n]);
				else
				{
					if ((p[2]&ch)==ch) //if the data is from the correct "channel" (I2C address) ?
					{
						ADC_INT[n] = (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF)); //read the two bytes, store in ADC_INT[n]
						
						if (ADC_INT[n] & 0x8000) //if data msb is set, extend 1s into ADC_INT[n+1] ???
							ADC_INT[n] |= 0xFFFF0000; //why?
						
						f = (float)ADC_INT[n]*ADC_TRIM_F_1[n]/ADC_TRIM_I_1[n];
						
						if (n==ADC_Text)
						{
							f 		=   ((RTD_CAL_HI_OHM - RTD_CAL_LO_OHM) / (RTD_CAL_HI_V - RTD_CAL_LO_V)) * f 
									  + ((RTD_CAL_LO_OHM * RTD_CAL_HI_V - RTD_CAL_HI_OHM * RTD_CAL_LO_V) / (RTD_CAL_HI_V - RTD_CAL_LO_V));
							RTD_R 	= f;
							f 		= TCE2 * TCE * TCE * f * f + TCE1 * TCE * f + TCE0;
							f 		= (f * TEMPERATURE_TRIM_T1) + (TEMPERATURE_TRIM_T0);
						}
						
						VAR_Update(&REG_ADC[n], f, 0, 0);
					}
				}
			}
			break;
		}
		case ADC_Ain1:
		case ADC_GNDSEN:
		case ADC_VTUNE:
		{/* ADC_ADDRA2 */
		 /* note: can read +/-2.048, but assume >=0) */
			addr = ADC_ADDRA2;
			
			if (n==ADC_VTUNE) 
				ch = ADC_CH0;
			else if (n==ADC_GNDSEN) 
				ch = ADC_CH1;
			else if (n==ADC_Ain1) 
				ch = ADC_CH2;
			
			if (START)
			{
				p[0]	 = 0x9C;	/* single conversion mode & start conversion */
				p[0]	|= ch;
				r		 = Write_ADC_DAC(addr, 1, (unsigned char*)p);	/* setup cfg register */
				
				if (!r)
				{
					VAR_NaN(&REG_ADC[n]);
					
					if (n==ADC_Ain1) 
						AI[n-ADC_Ain1].present = FALSE;
				}
			}
			else
			{
				r = Read_ADC_DAC(addr, 3, (unsigned char*)p);
				
				if (!r)
				{
					VAR_NaN(&REG_ADC[n]);
					
					if (n==ADC_Ain1) 
						AI[n-ADC_Ain1].present = FALSE;
				}
				else
				{
					if (n==ADC_Ain1) 
						AI[n-ADC_Ain1].present = TRUE;
					
					if ((p[2]&ch)==ch)
					{
						ADC_INT[n] = (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF));
						
						if (ADC_INT[n]&0x8000) 
							ADC_INT[n] |= 0xFFFF0000;
						
						f = (float)ADC_INT[n] * ADC_TRIM_F_1[n] / ADC_TRIM_I_1[n];
						
						VAR_Update(&REG_ADC[n], f, 0, 0);
					}
				}
			}
			
			break;
		}
		case ADC_Ain4:
		case ADC_Ain3:
		case ADC_Ain2:
		{/* ADC_ADDRIO1 */
		 /* note: can read +/-2.048, but assume >=0) */
			addr = ADC_ADDRIO1;
			
			if (n==ADC_Ain2) 
				ch = ADC_CH0;
			else if (n==ADC_Ain3) 
				ch = ADC_CH1;
			else if (n==ADC_Ain4) 
				ch = ADC_CH2;
			
			if (START)
			{
				p[0] 	 = 0x9C;	/* single conversion mode & start conversion */
				p[0] 	|= ch;
				r 		 = Write_ADC_DAC(addr, 1, (unsigned char*)p);	/* setup cfg register */
				
				if (!r)
				{
					VAR_NaN(&REG_ADC[n]);
					
					AI[n-ADC_Ain1].present = FALSE;
				}
			}
			else
			{
				r = Read_ADC_DAC(addr, 3, (unsigned char*)p);
				
				if (!r)
				{
					VAR_NaN(&REG_ADC[n]);
					
					AI[n-ADC_Ain1].present = FALSE;
				}
				else
				{
					AI[n-ADC_Ain1].present = TRUE;
					
					if ((p[2]&ch)==ch)
					{
						ADC_INT[n] = (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF));
						
						if (ADC_INT[n] & 0x8000) 
							ADC_INT[n] |= 0xFFFF0000;
						
						f = (float)ADC_INT[n] * ADC_TRIM_F_1[n] / ADC_TRIM_I_1[n];
						
						VAR_Update(&REG_ADC[n], f, 0, 0);
					}
				}
			}
			
			break;
		}
		case ADC_Ain5:
		{/* ADC_ADDRIO2 */
		 /* note: can read +/-2.048, but assume >=0) */
			addr = ADC_ADDRIO2;
			
			if (START)
			{
				p[0] 	= 0x8C;	/* continuous conversion mode & start conversion */
				r 		= Write_ADC_DAC(addr, 1, (unsigned char*)p);	/* setup cfg register */
				
				if (!r)
				{
					VAR_NaN(&REG_ADC[n]);
					
					AI[n-ADC_Ain1].present = FALSE;
				}
			}
			else
			{
				r = Read_ADC_DAC(addr, 2, (unsigned char*)p);
				
				if (!r)
				{
					VAR_NaN(&REG_ADC[n]);
					
					AI[n-ADC_Ain1].present = FALSE;
				}
				else
				{
					AI[n-ADC_Ain1].present 	= TRUE;
					ADC_INT[n] 				= (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF));
					
					if (ADC_INT[n]&0x8000) 
						ADC_INT[n] |= 0xFFFF0000;
					
					f = (float)ADC_INT[n]*ADC_TRIM_F_1[n]/ADC_TRIM_I_1[n];
					
					VAR_Update(&REG_ADC[n], f, 0, 0);
				}
			}
			break;
		}
		default:
		{
         	break;
		}
	}
}

/****************************************************************************/
/* ADC UPDATE																*/
/*                                                                          */
/* Description:	Check bounds of ADC_ACTIVE.  Updates AI[].CURRENT,			*/
/*			    AI[].CURRENT_PERCENT_OF_RANGE, AI[].VALUE, AI[].v           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes: 		EEA ONLY - need to look up HART_LOOKUP function usage here. */
/*                                                                          */
/****************************************************************************/
void ADC_UPDATE(void)
{
	int i;
	unsigned int ui;
	float t;
	float mina, maxa;
	float minc, maxc;
	float m;
	float current;
	VAR* v;

	if (SA && (HW_VER<0xB7)) 
		return;

	_GIEP;

	Read_ADCn(ADC_Tint, 0);		/* read last conversion */

	if (SA)
	{/* SA - quit */
		GIEP;
		return;
	}

	Read_ADCn(ADC_Ain5, 0);		/* read last conversion */

	for (i=0;i<3;i++)
	{/* check bounds on ADC_ACTIVE */
		Read_ADCn(ADC_ACTIVE[i], 0);		/* read last conversion */

		READ_ADC_INPUTS++;

		ADC_ACTIVE[i]++;					/* select next ADC */

		switch (i)
		{
			case 2:
			{/* ADC_ADDRIO1 */
				if (ADC_ACTIVE[i] > ADC_Ain4) 
					ADC_ACTIVE[i] = ADC_Ain2;
				
				break;
			}
			case 1:
			{/* ADC_ADDRA2 */
				if (ADC_ACTIVE[i] > ADC_Ain1) 
					ADC_ACTIVE[i] = ADC_VTUNE;
				
				break;
			}
			case 0:
			default:
			{/* ADC_ADDRA1 */
				if (ADC_ACTIVE[i] > ADC_Text) 
					ADC_ACTIVE[i] = ADC_Vref;
				
				break;
			}
		}

		Read_ADCn(ADC_ACTIVE[i], 1);	/* start next conversion */
	}

	for (i=0;i<AI_NLOOPS;i++)
	{
		if (!AI[i].present) 
			continue;

		minc 	= VAR_Get_Unit_Param(&AI[i].CURRENT, reg_direct_bmin, 0, 0);
		maxc 	= VAR_Get_Unit_Param(&AI[i].CURRENT, reg_direct_bmax, 0, 0);
		t 		= REG_ADC[i+ADC_Ain1].val * 10.0;
		m 		= (maxc-minc)/(AI[i].TRIM_MAX_C-AI[i].TRIM_MIN_C);
		current = m * (t-AI[i].TRIM_MIN_C) + minc;

		VAR_Update(&AI[i].CURRENT, current, 0, 0);
		
		t = (AI[i].CURRENT.val-minc)/(maxc-minc);
		
		VAR_Update(&AI[i].CURRENT_PERCENT_OF_RANGE, t*100.0, 0, 1);

		v = HART_Lookup(AI[i].v.val, &ui, (int*)&HART_DVINPUT_Table);

		if ((v!=(VAR*)0) && (v!=&REG_DUMMY))
		{
			if (AI[i].CURRENT.STAT & var_NaNum)
				VAR_NaN(v);
			else
			{
				mina 		= Convert(AI[i].class.val, AI[i].LRV.unit, AI[i].unit.val, AI[i].LRV.val, 0, AI[i].LRV.aux);
				maxa 		= Convert(AI[i].class.val, AI[i].URV.unit, AI[i].unit.val, AI[i].URV.val, 0, AI[i].URV.aux);
				m 			= (maxa-mina)/(maxc-minc);
				t 			= m * (AI[i].CURRENT.val-minc) + mina;
				AI[i].val 	= t;

   				VAR_Update(&AI[i].VALUE, t, 0, 0);

				t = Convert(v->class, AI[i].unit.val, v->unit, t, 0, v->aux);
   				
				if ( v == &REG_STREAM_SELECT )
				{// don't update stream if nothing changed (capture bug fix)
					if (t < 1.0)
						t = 1.0;
					if (t > (SMAX))
						t = (SMAX);
					//if ( (int)floor(t) == (int)REG_STREAM_SELECT.val ) 
					if ( (int)round(t,0) == (int)REG_STREAM_SELECT.val ) // capture stream bug
						continue;
				}                
				VAR_Update(v, t, 0,1);
	    	}
		}
	}

	GIEP;
}
