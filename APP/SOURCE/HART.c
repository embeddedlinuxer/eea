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
/* File Name: HART.C						    							*/
/* 									    									*/
/* File Description: HART devices are external periphreals that display		*/
/* device data to the user.  The user then may also write data to the device*/
/* via HART.  These functions implement that device functionality.			*/
/*									    									*/
/****************************************************************************/
#define HART_H

#include "GLBLS.H"
#include "HART.H"

/****************************************************************************/
/* HART 5																	*/
/*                                                                          */
/* Description: Sets the slave address range for HART[5].	                */
/*                                                                          */
/* Arguments:	INT port - the destination port.                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Apparently there can be slaves for HART.                    */
/*                                                                          */
/****************************************************************************/
void HART_5(int port)
{
    float max_addr;
    int p = port; 

    /* Set max address */
    // 07-11-2019 http://bug.phasedynamics.com/bugzilla/show_bug.cgi?id=55
    (DIO_HART_5.val && (p == 0)) ? (max_addr = 15) : (max_addr = 63);

    /* Set address range */
    VAR_Set_Unit_Param(&PORTCFG[p].Slave_ID, reg_direct_bmin, 0,        0, 0);
    VAR_Set_Unit_Param(&PORTCFG[p].Slave_ID, reg_direct_bmax, max_addr, 0, 0);

    /* If out of range set to 0 */
    if ((PORTCFG[p].Slave_ID.val>max_addr) || (PORTCFG[p].Slave_ID.val<0))
    {
        VAR_Update(&PORTCFG[p].Slave_ID, (float)0, 0, 0);
        PORT[p].Slave = PORTCFG[p].Slave_ID.val; 
    }
}

/****************************************************************************/
/* HART VAR STAT															*/
/*                                                                          */
/* Description: Indicates which status bits are triggered.                  */
/*                                                                          */
/* Arguments:	VARIABLE v - variable passed.                               */
/*                                                                          */
/* Returns:     INT r - status			                                    */
/*                                                                          */
/* Notes:       Return stauses:												*/
/*				h_var_stat_constant 	- Not a Number						*/
/*				h_var_stat_bad			- Hi and Lo alarms tripped.			*/
/*				h_var_stat_high_limit	- Hi alarm tripped.					*/
/*				h_var_stat_low_limit    - Lo alarm tripped.                 */
/*                                                                          */
/****************************************************************************/
int HART_VAR_STAT(VAR* v)
{
	int r;

	if (v->STAT & var_NaNum)
		return (h_var_stat_constant);

	r = 0;

	/* if hi AND lo alarms triggered - h_var_stat_bad */
	if ((v->STAT & var_alarm_hi) && (v->STAT & var_alarm_lo)) r = h_var_stat_bad;
	
	/* if hi OR lo alarms triggered - indicate which one */
	if (v->STAT & var_alarm_hi) r |= h_var_stat_high_limit;
	else if (v->STAT & var_alarm_lo) r |= h_var_stat_low_limit;

	return r;
}

/****************************************************************************/
/* HART LOOPUP																*/
/*                                                                          */
/* Description: Finds a variable in a hart table.                           */
/*                                                                          */
/* Arguments:	UNSIGNED INT d			- index/address						*/
/*				UNSIGNED INT POINTER r	- response vector					*/	
/*				INT POINTER h 			- HART table vector					*/
/*                                                                          */
/* Returns:		VARIABLE DUMMY OR h[i] - Error OR HART Variable             */
/*                                                                          */
/* Notes:       h[i] == (-1 OR -2) - indicates an error						*/
/*                                                                          */
/****************************************************************************/
VAR* HART_Lookup(unsigned int d, unsigned int* r, int* h)
{
	int	i;	/* counter */

	VAR_NaN(&REG_DUMMY);

	/* check range */
	if (d >= var_not_used)
	{
		r[0] = HART_RESP_Invalid_Selection;
		return (&REG_DUMMY);
	}

	for (i=0;i<var_not_used;i++)
	{
		if (h[i]==-1)		/* incorrect table */
			break;
		else if (i==d)		/* found address */
		{
			r[0] = HART_RESP_NO_ERROR;

			if (h[i]==-2)	/* incorrect table */
				return (&REG_DUMMY);
			
			return ((VAR*)h[i]);
		}
	}

	r[0] = HART_RESP_Invalid_Selection;
	
	return (&REG_DUMMY);
}

/****************************************************************************/
/* HART LOOKUP N															*/
/*                                                                          */
/* Description: Searches for an index in HART table.                        */
/*                                                                          */
/* Arguments:	INT POINTER h - HART Table Vector                           */
/*                                                                          */
/* Returns:    	UNSIGNED INT i OR 0 - returns i if h[i] == -1 OR 0 if failed*/
/*                                                                          */
/* Notes:                                                                   */
/*                                                                          */
/****************************************************************************/
unsigned int HART_Lookup_n(int* h)
{
	int	i;	/* counter */

	for (i=0;i<var_not_used;i++)
	{
		if (h[i] == -1) 
			return (i);
	}

	return (0);
}

/****************************************************************************/
/* HCFG CHANGE																*/
/*                                                                          */
/* Description: configuration changed                                       */
/*                                                                          */
/* Arguments:	INT id					- not used.							*/
/*				BOOL pri				- select status register			*/
/*				BOOL f					- force change						*/
/*				UNSIGNED INT POINTER r	- change status.                    */
/*                                                                          */
/* Returns:                                                                 */
/*                                                                          */
/* Notes:      	1. with hart discrete variables SAVE and WRITE_PROTECT this */
/* 				auto-save is not necessary									*/
/*				2. causes problems when sending data = device disconnected 	*/
/*				error, must retry											*/
/*																			*/
/*				This is really confusing code.  Maybe there is a reason why?*/
/*                                                                          */
/****************************************************************************/
void HCFG_CHANGE(int id, BOOL pri, BOOL f, unsigned int* r)
{
	if (f)				/* force change */
	{
		HCHANGE[0] = f;
		HCHANGE[1] = f;
	}
	else				/* selected index gets forced to 0 */
		HCHANGE[pri] = f;
	
	if (HCHANGE[pri]) 	/* if pri is forced set change status - only true if f is true */
		r[1] |= HART_STATUS_CFG_changed;
	else 				/* Clear change status */
		r[1] &= (0xFF ^ HART_STATUS_CFG_changed);
	
	HCHANGE_COUNTER++;	/* increment change counter */
	CHANGE = TRUE;		/* signal global cfg change */

}

/****************************************************************************/
/* HART SEND RESPONSE 														*/
/*                                                                          */
/* Description: Performs data exchange for HART devices.                    */
/*                                                                          */
/* Arguments:	INT id								- I/O channel			*/
/* 				BOOL long_addr						- long address?			*/
/*				BOOL primary_master					- primary master?		*/
/*				BOOL pass							- error occured?		*/
/*				UNSIGNED INT POINTER response_code	- response code vector	*/
/*				BOOL BURST							- burst mode?			*/
/*				BOOL TX		                        - prepare transfer?     */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Commands not completely documented.                         */
/*                                                                          */
/****************************************************************************/
void HART_Send_Response(int id, BOOL long_addr, BOOL primary_master, BOOL pass, unsigned int* response_code, BOOL BURST, BOOL TX)
{
	int				i,j;					/* transfer byte, counter */
	int				cmd;					/* command - HART function */
	int 			tmp0;					/* used to store temporary calculations */
	int				OLD_UNIT;				/* used in unit selection of HART_CMD_Write_PV_range command */
	int				DD, MM, YY, YYYY, leap;	/* year data */
	int				bn;						/* burst number of preambles */
	int*			tmp;					/* not used */
	unsigned int 	t;						/* not used */
	unsigned int 	CKSUM;					/* response packet checksum */
	unsigned int 	RESP[2];				/* response statuses */
	unsigned int	ndata;					/* number of data */
	unsigned int 	tmpstr[50];				/* temporary char vector (string) */
	unsigned int*	data;					/* recieved data? */
	float			mina, maxa, m;			/* calculated max and min span */
	float			tmpf[4];				/* temporary floats */
	VAR				VTEMP[4];				/* temporary variable */
	VAR*			v[4];					/* HART variable from table */
	COIL*			c;						/* HART coil from table */

	bn = NUM_PREAMBLE_SM;

	if (BURST != 2)
		Clear(&TXbuf[id]);
	
	/* BURST preamble range is 2-20, so long as there are at least 2 complete preambles. */
	/* Therefore make to enable modem with enough time before transmitting, if n = 2.    */
	if (BURST)
		bn = 2;
	
	for (i=0;i<bn;i++)						/* Send preambles */
		Put(&TXbuf[id], 0xFF, 0);
	
	bn = TXbuf[id].n;
	
	if (long_addr)
	{										/* get data - setup/send address configuration */
		data  = &RXbuf[id].buff[8+PORT[id].n_exp];
		ndata = PORT[id].n;

		if (BURST)
			Put(&TXbuf[id], 0x81, 0);		/* delimiter */
		else
			Put(&TXbuf[id], 0x86, 0);		/* delimiter */
		
		if (PORT[id].broadcast) 
			i = 0;
		else 
			i = HART_MFGR_PDI & 0x3F;

		if (primary_master)
			i |= 0x80;
		
		if (HART_BURST_MODE)
			i |= 0x40;
		
		Put(&TXbuf[id], i, 0);				/* Send broadcast, primary_master, HART_BURST_MODE byte*/

		if (PORT[id].broadcast)
		{
			Put(&TXbuf[id], 0x00, 0);
			Put(&TXbuf[id], 0x00, 0);
			Put(&TXbuf[id], 0x00, 0);
			Put(&TXbuf[id], 0x00, 0);
			
			PORT[id].broadcast = FALSE;		/* IMPORTANT! Must disable the broadcast flag or Transmit will not happen!! */
		}
		else
		{
			Put(&TXbuf[id], H_DEV_TYPE, 		0);
			Put(&TXbuf[id], PORT[id].SNUM>>16, 	0);
			Put(&TXbuf[id], PORT[id].SNUM>>8, 	0);
			Put(&TXbuf[id], PORT[id].SNUM, 		0);
		}
	}
	else
	{
		data  = &RXbuf[id].buff[4+PORT[id].n_exp];
		ndata = PORT[id].n;

		if (BURST)
			Put(&TXbuf[id], 0x01, 0);		/* delimiter */
		else
			Put(&TXbuf[id], 0x06, 0);		/* delimiter */
		
		i = PORT[id].Slave;

		if (primary_master)
			i |= 0x80;
		
		if (HART_BURST_MODE)
			i |= 0x40;
		
		Put(&TXbuf[id], i, 0);				/* Slave, primary_master, HART_BURST_MODE byte */
	}

	if (!BURST)								/* choose command */ 
		cmd = PORT[id].func;
	else 
		cmd = HART_BURST_CMD;

	Put(&TXbuf[id], cmd, 0);				/* Send command */

	if (!pass)
	{
		Put(&TXbuf[id], 2, 				  0);
		Put(&TXbuf[id], response_code[0], 0);
		Put(&TXbuf[id], response_code[1], 0);
	}
	else
	{/* Execute function */
		{/* device status */
			RESP[1] = HART_STATUS_NO_ERROR;
			v[0] 	= HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
			
			if (v[0]!=&REG_DUMMY)
			{/* variable not found */
				if ((v[0]->STAT & var_bound_hi) || (v[0]->STAT & var_bound_lo)) 
					RESP[1] |= HART_STATUS_PV_bounds;
				
				if ((AO[0].CURRENT.STAT & var_bound_hi) || (AO[0].CURRENT.STAT & var_bound_lo)) 
					RESP[1] |= HART_STATUS_PV_loop_bounds;
			}
			else
			{/* set response */
				RESP[1] |= HART_STATUS_PV_bounds;
				RESP[1] |= HART_STATUS_PV_loop_bounds;
			}

			if (DIO_ALARM.val)
			{/* set alarm */
				RESP[1] 	 |= HART_STATUS_bounds;
				DIO_ALARM.val = FALSE;
			}

			if (DIAGNOSTICS[0] & (ERROR_MEMORY | ERROR_EXEC_FAIL | ERROR_TMR_FAIL | ERROR_FLASH_MEMORY | ERROR_FLASH_WPROT | ERROR_INTERNAL_MEMORY))
				RESP[1] |= HART_STATUS_Malfunction;
			
			if (HCOLD[primary_master])
			{/* HART cold start */
				RESP[1] 			 |= HART_STATUS_Cold_Start;
				HCOLD[primary_master] = FALSE;
			}

			if (AO[0].MANUAL) 
				RESP[1] |= HART_STATUS_PV_loop_fixed;

			if (HCHANGE[primary_master]) 
				RESP[1] |= HART_STATUS_CFG_changed;
		}
		
		RESP[0] = HART_RESP_NO_ERROR;		/* command response summary filled by device status section above */

		switch(cmd)
		{
		/*******************************************************************************************************/
		/* Phase Dynamics' Device-Specific Functions                                                           */
		/*******************************************************************************************************/
			case HART_CMD_PDI_Read_DVI:
			case HART_CMD_PDI_Read_DPI:
			{/* read HART DVI or DPI table */
				if (ndata<1)		/* no data */
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}
				else if (ndata>4)	/* max ndata is 4 */ 
					ndata = 4;

				for (j=0;j<ndata;j++)
				{
					data[j] &= 0xFF;

					if (cmd==HART_CMD_PDI_Read_DPI) 
						v[j] = HART_Lookup(data[j], RESP, (int*)&HART_DPI_Table);
					else 
						v[j] = HART_Lookup(data[j], RESP, (int*)&HART_DVI_Table);
				}

				if (RESP[0]) 
					break;

				Put(&TXbuf[id], (2+(ndata*5)), 0);
				Put(&TXbuf[id], RESP[0]		 , 0);
				Put(&TXbuf[id], RESP[1]		 , 0);

				for (j=0;j<ndata;j++)
				{
					Put(&TXbuf[id], data[j], 0);
	    			
					if (v[j]->STAT & var_NaNum) 
						Put(&TXbuf[id], c_not_classified, 0);
					else 
						Put(&TXbuf[id], v[j]->class, 0);
					
					if (v[j]->STAT & var_NaNum) 
						Put(&TXbuf[id], u_generic_not_used, 0);
					else
					{
						tmp0 = v[j]->unit;
						Put(&TXbuf[id], tmp0, 0);
					}

					tmp0 = round(v[j]->val*v[j]->scale,0);
					
					Put(&TXbuf[id], tmp0>>8, 0);
					Put(&TXbuf[id], tmp0, 0);
				}

				break;
			}
			case HART_CMD_PDI_Write_DPI:
			{/* write HART DPI table */
				if (DIO_LOCK[0].val)
				{/* do nothing if locked */
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<5)
				{/* do nothing if unexpected data size */
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				for (j=0;j<5;j++) 
					data[j] &= 0xFF;

				tmp0 	= ((data[3]&0xFF)<<8) | (data[4]&0xFF);
				tmpf[0] = tmp0;

				v[0] = HART_Lookup(data[0], RESP, (int*)&HART_DPI_Table);
				
				if (v[0] == &REG_DUMMY)	/* check variable */ 
					RESP[0] = HART_RESP_Invalid_Selection;
				
				if (RESP[0])	/* break if error */
					break;

				if (v[0]->class != data[1])
				{/* check class */
					RESP[0] = HART_RESP_error_12;
					break;
				}

				if ((v[0]->unit & 0x00FF) != data[2])
				{/* check unit */
					RESP[0] = HART_RESP_invalid_unit_code;
					break;
				}

				tmpf[0] /= v[0]->scale;

				if ((v[0]->STAT & var_no_bound)==0)
				{
					mina = VAR_Get_Unit_Param(v[0], reg_direct_bmin, 0, 1);
					maxa = VAR_Get_Unit_Param(v[0], reg_direct_bmax, 0, 1);

					if (f_compare(&tmpf[0], maxa, 1)>0)
						RESP[0] = HART_RESP_Large_Parameter;
					else if (f_compare(&tmpf[0], mina, 1)<0)
						RESP[0] = HART_RESP_Small_Parameter;
				}

				if (RESP[0]) 	/* break if error */
					break;

				VAR_Update(v[0], tmpf[0], 0, 1);
				
				HCFG_CHANGE(id, primary_master, TRUE, RESP);
				
				/* Packet {7, Response 0, Response 1, data0, class, unit, data3, data4 }*/
				Put(&TXbuf[id], 7, 		 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], data[0], 0);
    			
				if (v[0]->STAT & var_NaNum) 
					Put(&TXbuf[id], c_not_classified, 0);
				else 
					Put(&TXbuf[id], v[0]->class, 0);
				
				if (v[0]->STAT & var_NaNum) 
					Put(&TXbuf[id], u_generic_not_used, 0);
				else
				{
					tmp0 = v[0]->unit;
					
					Put(&TXbuf[id], tmp0, 0);
				}
				
				Put(&TXbuf[id], data[3], 0);
				Put(&TXbuf[id], data[4], 0);

				break;
			}
			case HART_CMD_PDI_Read_DPF:
			{/* read HART DPF table */
				if (ndata<1)
				{/* not enough data */
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}
				else if (ndata>4) 
					ndata = 4;

				for (j=0;j<ndata;j++)
				{/* look for variable */
					data[j] &= 0xFF;

					v[j] = HART_Lookup(data[j], RESP, (int*)&HART_DPF_Table);

					if (RESP[0])	/* break if error */ 
						break;
				}

				if (RESP[0]) 
					break;

				Put(&TXbuf[id], (2+(ndata*7)), 	0);
				Put(&TXbuf[id], RESP[0], 		0);
				Put(&TXbuf[id], RESP[1], 		0);

				for (j=0;j<ndata;j++)
				{/* Process data */
					Put(&TXbuf[id], data[j], 0);
	    			
					if (v[j]->STAT & var_NaNum)/* check class */ 
						Put(&TXbuf[id], c_not_classified, 0);
					else 
						Put(&TXbuf[id], v[j]->class, 0);
					
					if (v[j]->STAT & var_NaNum)/* check if NaN */ 
						Put(&TXbuf[id], u_generic_not_used, 0);
					else
					{
						tmp0 = v[j]->unit;

						Put(&TXbuf[id], tmp0, 0);
					}

					tmpf[0] = v[j]->val;
					tmp0 	= TOIEEE(tmpf[0]);	/* format value */
					
					Put(&TXbuf[id], tmp0>>24, 0);
					Put(&TXbuf[id], tmp0>>16, 0);
					Put(&TXbuf[id], tmp0>>8, 0);
					Put(&TXbuf[id], tmp0, 0);
				}

				break;
			}
			case HART_CMD_PDI_Write_DPF:
			{/* write HART DPF table */
				if (DIO_LOCK[0].val)
				{/* break if locked */
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<7)
				{/* not enough data */
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				for (j=0;j<7;j++) 
					data[j] &= 0xFF;

				tmp0 = ((data[3]&0xFF)<<24) | ((data[4]&0xFF)<<16) | ((data[5]&0xFF)<<8) | (data[6]&0xFF);
				
				if (tmp0 == NaN)
				{/* check not a number */
					RESP[0] = HART_RESP_Small_Parameter;
					break;
				}
				else
					tmpf[0] = FMIEEE(tmp0);
				
				v[0] = HART_Lookup(data[0], RESP, (int*)&HART_DPF_Table);
				
				if (v[0] == &REG_DUMMY)	/* check variable exists */ 
					RESP[0] = HART_RESP_Invalid_Selection;
				
				if (RESP[0])	/* if error, break */ 
					break;

				if (v[0]->class != data[1])
				{/* check class */
					RESP[0] = HART_RESP_error_12;
					break;
				}
				else if ((v[0]->unit & 0x00FF) != data[2])
				{/* check unit */
					RESP[0] = HART_RESP_invalid_unit_code;
					break;
				}

				if ((v[0]->STAT & var_no_bound)==0)
				{
					mina = VAR_Get_Unit_Param(v[0], reg_direct_bmin, 0, 1);
					maxa = VAR_Get_Unit_Param(v[0], reg_direct_bmax, 0, 1);
					
					if (f_compare(&tmpf[0], maxa, 1)>0)
						RESP[0] = HART_RESP_Large_Parameter;
					else if (f_compare(&tmpf[0], mina, 1)<0)
						RESP[0] = HART_RESP_Small_Parameter;
				}

				if (RESP[0])	/* if error, break */ 
					break;

				VAR_Update(v[0], tmpf[0], 0, 1);

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				/* Packet: {9, response 0, response 1, data0, class, unit, data3, data4, data5, data6} */
				Put(&TXbuf[id], 9, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], data[0], 0);
    			
				if (v[0]->STAT & var_NaNum) 
					Put(&TXbuf[id], c_not_classified, 0);
				else 
					Put(&TXbuf[id], v[0]->class, 0);
				
				if (v[0]->STAT & var_NaNum) 
					Put(&TXbuf[id], u_generic_not_used, 0);
				else
				{
					tmp0 = v[0]->unit;

					Put(&TXbuf[id], tmp0, 0);
				}
				
				Put(&TXbuf[id], data[3], 0);
				Put(&TXbuf[id], data[4], 0);
				Put(&TXbuf[id], data[5], 0);
				Put(&TXbuf[id], data[6], 0);

				break;
			}
			case HART_CMD_PDI_Read_DD:
			{/* Read HART DD table */
				if (ndata<1)
				{/* not enough data */
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				data[0] &= 0xFF;
				c 		 = (COIL*)HART_Lookup(data[0], RESP, (int*)&HART_DD_Table);
				
				if (RESP[0]) /* if error, break*/
					break;

				tmp0 = c->val;

				Put(&TXbuf[id], 4, 		 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], data[0], 0);
				Put(&TXbuf[id], tmp0, 	 0);

				break;
			}
			case HART_CMD_PDI_Write_DD:
			{/* write HART DD table - executes coil vector */
				data[0] &= 0xFF;
				data[1] &= 0xFF;
				
				if ((data[0]!=2) && (DIO_LOCK[0].val))
				{/* check lock */
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<2)
				{/* not enough data */
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				if ((data[1]>1) || (data[1]<0))
				{/* check data[1] range */
					RESP[0] = HART_RESP_error_12;
					break;
				}

				c = (COIL*)HART_Lookup(data[0], RESP, (int*)&HART_DD_Table);

				if (RESP[0]) 
					break;

				if (data[1]) 
					c->val = TRUE;
				else 
					c->val = FALSE;

				{/* execute vector */
					switch (id)
					{
						case 0:
						{
							vect_hexec0 = c->vect;
							if (vect_hexec0!=NULL_PTR)
							{
								PUSH_ALL;
								asm("		.global _vect_hexec0 ");
						    	asm("	ldi		0, AR2           ");	/* select the port */
							    asm("	ldp		_vect_hexec0     ");
							    asm("	ldi		@_vect_hexec0, R0");
							    asm("	callnz	R0				 ");	/* call if vect != NULL */
							    POP_ALL;
							}

							break;
						}
						case 1:
						{
							vect_hexec1 = c->vect;
							if (vect_hexec1!=NULL_PTR)
							{
								PUSH_ALL;
								asm("		.global _vect_hexec1 ");
						    	asm("	ldi		1, AR2           ");	/* select the port */
							    asm("	ldp		_vect_hexec1     ");
							    asm("	ldi		@_vect_hexec1, R0");
							    asm("	callnz	R0				 ");	/* call if vect != NULL */
							    POP_ALL;
							}

							break;
						}
						case 2:
						{
							vect_hexec2 = c->vect;
							if (vect_hexec2!=NULL_PTR)
							{
								PUSH_ALL;
								asm("		.global _vect_hexec2 ");
						    	asm("	ldi		2, AR2           ");	/* select the port */
							    asm("	ldp		_vect_hexec2     ");
							    asm("	ldi		@_vect_hexec2, R0");
							    asm("	callnz	R0				 ");	/* call if vect != NULL */
							    POP_ALL;
							}

							break;
						}
						case 3:
						{
							vect_hexec3 = c->vect;
							if (vect_hexec3!=NULL_PTR)
							{
								PUSH_ALL;
								asm("		.global _vect_hexec3 ");
						    	asm("	ldi		3, AR2           ");	/* select the port */
							    asm("	ldp		_vect_hexec3     ");
							    asm("	ldi		@_vect_hexec3, R0");
							    asm("	callnz	R0				 ");	/* call if vect != NULL */
							    POP_ALL;
							}

							break;
						}
						case 4:
						{
							vect_hexec4 = c->vect;
							if (vect_hexec4!=NULL_PTR)
							{
								PUSH_ALL;
								asm("		.global _vect_hexec4 ");
						    	asm("	ldi		4, AR2           ");	/* select the port */
							    asm("	ldp		_vect_hexec4     ");
							    asm("	ldi		@_vect_hexec4, R0");
							    asm("	callnz	R0				 ");	/* call if vect != NULL */
							    POP_ALL;
							}

							break;
						}
						case 5:
						{
							vect_hexec5 = c->vect;
							if (vect_hexec5!=NULL_PTR)
							{
								PUSH_ALL;
								asm("		.global _vect_hexec5 ");
						    	asm("	ldi		5, AR2           ");	/* select the port */
							    asm("	ldp		_vect_hexec5     ");
							    asm("	ldi		@_vect_hexec5, R0");
							    asm("	callnz	R0				 ");	/* call if vect != NULL */
							    POP_ALL;
							}

							break;
						}
						case 6:
						{
							vect_hexec6 = c->vect;
							if (vect_hexec6!=NULL_PTR)
							{
								PUSH_ALL;
								asm("		.global _vect_hexec6 ");
						    	asm("	ldi		6, AR2           ");	/* select the port */
							    asm("	ldp		_vect_hexec6     ");
							    asm("	ldi		@_vect_hexec6, R0");
							    asm("	callnz	R0				 ");	/* call if vect != NULL */
							    POP_ALL;
							}

							break;
						}
						case 7:
						{
							vect_hexec7 = c->vect;
							if (vect_hexec7!=NULL_PTR)
							{
								PUSH_ALL;
								asm("		.global _vect_hexec7 ");
						    	asm("	ldi		7, AR2           ");	/* select the port */
							    asm("	ldp		_vect_hexec7     ");
							    asm("	ldi		@_vect_hexec7, R0");
							    asm("	callnz	R0				 ");	/* call if vect != NULL */
							    POP_ALL;
							}

							break;
						}
					}
				}

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				/* Packet: {4, response 0, response 1, data0, data1} */
				Put(&TXbuf[id], 4, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], data[0], 0);
				Put(&TXbuf[id], data[1], 0);

				break;
			}
			/***************************************************************************************************/
			case HART_CMD_Read_Unique_ID_by_TAG_Long:
			{
				if (DIO_HART_5.val)
				{/* command not supported */
					RESP[0] = HART_RESP_CMD_NOT_SUPPORTED;
					break;
				}
				/* do not break */
			}
			case HART_CMD_Read_Unique_ID:
			case HART_CMD_Read_Unique_ID_by_TAG:
			{
				switch(cmd)
				{/* check command */
					case HART_CMD_Read_Unique_ID_by_TAG_Long:
					{/* check data type */
						if (ndata<32)
						{/* not enough data */
							RESET_PKT(id);
							return;
						}
		
						for (i=0;i<(32/2);i++)
						{
							j = ((data[(2*i)]&0xFF)<<8) | (data[(2*i)+1]&0xFF);
							
							if (j!=(STR_HART_Tag_Long[i]&0xFFFF))
							{
								RESET_PKT(id);
								return;
							}
						}
						break;
					}
					case HART_CMD_Read_Unique_ID_by_TAG:
					{/* check data type */
						if (ndata<6)
						{/* not enough data */
							RESET_PKT(id);
							return;
						}

						Unpack_ASCII(data, tmpstr, 8);
	
						for (i=0;i<(8/2);i++)
						{
							if (tmpstr[i]!=STR_HART_Tag[i])
							{
								RESET_PKT(id);
								return;
							}
						}
						break;
					}
				}

				if (DIO_HART_5.val) 
					Put(&TXbuf[id], 14, 0);
				else  
					Put(&TXbuf[id], 19, 0);
				
				Put(&TXbuf[id], RESP[0], 		0);
				Put(&TXbuf[id], RESP[1], 		0);
				Put(&TXbuf[id], 0xFE,			0);
				Put(&TXbuf[id], HART_MFGR_PDI, 	0);
				Put(&TXbuf[id], H_DEV_TYPE, 	0);
				
				if(DIO_HART_5.val)
				{
					Put(&TXbuf[id], NUM_PREAMBLE_SM, 0);
					Put(&TXbuf[id], 5, 				 0);
				}
				else
				{
					Put(&TXbuf[id], NUM_PREAMBLE_MS, 0);
					Put(&TXbuf[id], 6, 				 0);
				}
				
				Put(&TXbuf[id], HART_TRANS_REV, 						 0);
				Put(&TXbuf[id], FIRMWARE_VERSION/10, 					 0);
				Put(&TXbuf[id], (HW_VER&0xF8)|HART_PHYS_BELL202_CURRENT, 0);
				Put(&TXbuf[id], HART_FLAG_Multisens_Dev, 				 0);
				Put(&TXbuf[id], PORT[id].SNUM>>16, 						 0);
				Put(&TXbuf[id], PORT[id].SNUM>>8, 						 0);
				Put(&TXbuf[id], PORT[id].SNUM, 							 0);

				if (!DIO_HART_5.val)
				{
					Put(&TXbuf[id], NUM_PREAMBLE_SM, 	0);
					
					i = HART_Lookup_n((int*)&HART_DV_Table);
					
					Put(&TXbuf[id], i, 					0);
					Put(&TXbuf[id], HCHANGE_COUNTER>>8, 0);
					Put(&TXbuf[id], HCHANGE_COUNTER, 	0);
					
					i = 0;
					
					if (DIO_ALARM.val)
					{
						i 			 |= HART_EXT_STATUS_VAR_ALERT;
						DIO_ALARM.val = FALSE;
					}
					
					Put(&TXbuf[id], i, 0);
				}

				break;
			}
            case HART_CMD_Read_PV:
			{/* read HART DV table */
				Put(&TXbuf[id], 7, 		 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				
				v[0] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
				
				if (v[0]->STAT & var_NaNum) 
					Put(&TXbuf[id], u_generic_not_used, 0);
				else
				{
					tmp0 = v[0]->unit;

					Put(&TXbuf[id], tmp0, 0);
				}
				
				Put_IEEE(id, v[0]);
				
				RESP[0] = HART_RESP_NO_ERROR;
				
				break;
			}
			case HART_CMD_Read_Dynamic_Vars:
			{/* read HART DV table */
				i = 0;
				
				for (j=0;j<4;j++)
				{/* look for variable */
					if (HART_VAR_LIST[j]>=var_not_used) 
						break;
						
					i++;
				}

				if (i==0)
				{/* variable not found, break */
					RESP[0] = HART_RESP_xmtr_specific_error;
					break;
				}

				Put(&TXbuf[id], 6+(5*i), 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				Put_IEEE(id, &AO[0].CURRENT);

				for (j=0;j<i;j++)
				{
					v[j] = HART_Lookup(HART_VAR_LIST[j], RESP, (int*)&HART_DV_Table);
					
					if (v[j]->STAT & var_NaNum) 
						Put(&TXbuf[id], u_generic_not_used, 0);
					else
					{
						tmp0 = v[j]->unit;
						
						Put(&TXbuf[id], tmp0, 0);
					}
					
					Put_IEEE(id, v[j]);
				}

				RESP[0] = HART_RESP_NO_ERROR;

				break;
			}
			case HART_CMD_Read_PV_Current:
			{/* Read AO[0].CURRENT & CURRENT_PERCENT_OF_RANGE */
				Put(&TXbuf[id], 10, 	 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put_IEEE(id, &AO[0].CURRENT);
				Put_IEEE(id, &AO[0].CURRENT_PERCENT_OF_RANGE);
				break;
			}
			case HART_CMD_Read_DV_with_Status:
			{
				if (DIO_HART_5.val)
				{
					RESP[0] = HART_RESP_CMD_NOT_SUPPORTED;
					break;
				}

				if (BURST)
				{
					data = HART_BURST_VAR_LIST;
					i 	 = 0;
					
					for (j=0;j<4;j++)
					{
						if (HART_BURST_VAR_LIST[j]>=var_not_used) 
							break;
							
						i++;
					}
					
					ndata = i;
				}

				for (j=0;j<ndata;j++)
				{
					if (BURST)
						data[j] = HART_BURST_VAR_LIST[j];
					else
						data[j] &= 0xFF;
					
					v[j] = HART_Lookup(data[j], RESP, (int*)&HART_DV_Table);
				}

				/* do not break */
			}
			case HART_CMD_PDI_Read_DV:
			{/* Looks like there is an unneccisary switch statement */
				if (ndata<1)
				{/* check bounds */
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}
				else if (ndata>4) 
					ndata = 4;

				if (cmd == HART_CMD_PDI_Read_DV)
				{
					for (j=0;j<ndata;j++)
					{
						data[j] &= 0xFF;
						
						switch(data[j])
						{
							default:
							{
								v[j] = HART_Lookup(data[j], RESP, (int*)&HART_DV_Table);
								break;
							}
						}
					}
				}

				if (RESP[0]) 
					break;

				Put(&TXbuf[id], (3+(ndata*8)), 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				
				i = 0;
				
				if (DIO_ALARM.val)
				{
					i 			 |= HART_EXT_STATUS_VAR_ALERT;
					DIO_ALARM.val = FALSE;
				}
				
				Put(&TXbuf[id], i, 0);

				for (j=0;j<ndata;j++)
				{
					Put(&TXbuf[id], data[j], 0);

					if (v[j]->STAT & var_NaNum) 
						Put(&TXbuf[id], c_not_classified, 0);
					else 
						Put(&TXbuf[id], v[j]->class, 0);
					
					if (v[j]->STAT & var_NaNum) 
						Put(&TXbuf[id], u_generic_not_used, 0);
					else
					{
						tmp0 = v[j]->unit;

						Put(&TXbuf[id], tmp0, 0);
					}
					
					Put_IEEE(id, v[j]);
					
					i = HART_VAR_STAT(v[j]);
					
					Put(&TXbuf[id], i, 0);
				}

				RESP[0] = HART_RESP_NO_ERROR;

				break;
			}
			case HART_CMD_Write_TAG_Long:
			{
				if (DIO_HART_5.val)
				{
					RESP[0] = HART_RESP_CMD_NOT_SUPPORTED;
					break;
				}

				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<32)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}
				
				for (i=0;i<(32/2);i++)	/* set variables here */
					STR_HART_Tag_Long[i] = ((data[(2*i)]&0xFF)<<8) | (data[(2*i)+1]&0xFF);
				
				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				/* do not break, continue to HART_CMD_Read_TAG_Long */
			}
			case HART_CMD_Read_TAG_Long:
			{
				if (DIO_HART_5.val)
				{
					RESP[0] = HART_RESP_CMD_NOT_SUPPORTED;
					break;
				}

				Put(&TXbuf[id], 34, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				
				for (i=0;i<(32/2);i++)
				{
					Put(&TXbuf[id], STR_HART_Tag_Long[i]>>8, 0);
					Put(&TXbuf[id], STR_HART_Tag_Long[i], 0);
				}
				break;
			}
			case HART_CMD_Write_Msg:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<24)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				/* set variables here */
				Unpack_ASCII(data, (unsigned int*)STR_HART_Msg, 24);

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				/* do not break, assume HART_CMD_Read_Msg is located right after this line */
			}
			case HART_CMD_Read_Msg:
			{
				Put(&TXbuf[id], 26, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				Pack_ASCII((unsigned int*)STR_HART_Msg, tmpstr, 32);
				
				for (i=0;i<24;i++)
					Put(&TXbuf[id], tmpstr[i], 0);
				
				break;
			}
			case HART_CMD_Write_TAG_Desc_Date:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<21)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				/* set variables here */
				Unpack_ASCII(&data[0], (unsigned int*)STR_HART_Tag, 6);
				Unpack_ASCII(&data[6], (unsigned int*)STR_HART_Desc, 12);
				DD = (data[18]&0xFF);
				MM = (data[19]&0xFF);
				YY = (data[20]&0xFF);

				if (!DIO_HART_5.val)
				{
					YYYY = YY + 1900;
					if ((YYYY % 4) == 0) leap = TRUE;
					else leap = FALSE;

					switch(MM)
					{
						case 12:
						case 10:
						case 8:
						case 7:
						case 5:
						case 3:
						case 1: i = 31; break;

						case 2: i = 28; if (leap) i++; break;

						case 11:
						case 9:
						case 6:
						case 4: i = 30; break;

						default:
						{
							RESP[0] = HART_RESP_error_9;
							break;
						}
					}

					if ((DD>i) || (DD<1))
					{
						RESP[0] = HART_RESP_error_9;
					}

					if (RESP[0]) break;
				}

				STR_HART_Date[0] = (DD<<8) | MM;
				STR_HART_Date[1] = (YY<<8);
				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				/* do not break, assume HART_CMD_Read_TAG_Desc_Date is located right after this line */
			}
			case HART_CMD_Read_TAG_Desc_Date:
			{
				Put(&TXbuf[id], 23, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				Pack_ASCII((unsigned int*)STR_HART_Tag, tmpstr, 8);
				for (i=0;i<6;i++)
				{
					Put(&TXbuf[id], tmpstr[i], 0);
				}

				Pack_ASCII((unsigned int*)STR_HART_Desc, tmpstr, 16);
				for (i=0;i<12;i++)
				{
					Put(&TXbuf[id], tmpstr[i], 0);
				}

				Put(&TXbuf[id], STR_HART_Date[0]>>8, 0);
				Put(&TXbuf[id], STR_HART_Date[0], 0);
				Put(&TXbuf[id], STR_HART_Date[1]>>8, 0);
				break;
			}
			case HART_CMD_Write_Final_Assy:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<3)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				/* set variables here */
				FINAL_ASSY = ((data[0]&0xFF)<<16) | ((data[1]&0xFF)<<8) | (data[2]&0xFF);
				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				/* do not break, assume HART_CMD_Read_Final_Assy is located right after this line */
			}
			case HART_CMD_Read_Final_Assy:
			{
				Put(&TXbuf[id], 5, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], FINAL_ASSY>>16, 0);
				Put(&TXbuf[id], FINAL_ASSY>>8, 0);
				Put(&TXbuf[id], FINAL_ASSY, 0);
				break;
			}
			case HART_CMD_Write_Poll_Addr:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<1)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				if (((ndata>1) && ((data[1] & 0xFF)>1)) && !DIO_HART_5.val)
				{
					RESP[0] = HART_RESP_error_12; /* invalid mode selection */
					break;
				}

				data[0] &= 0xFF;
				tmpf[0] = data[0];

				if (!VAR_Update(&PORTCFG[id].Slave_ID, tmpf[0], 1, 0))
				{
					RESP[0] = HART_RESP_Invalid_Selection;
					break;
				}

				VAR_Update(&PORTCFG[id].Slave_ID, tmpf[0], 0, 0);
				PORT[id].Slave = PORTCFG[id].Slave_ID.val;

				/* set variables here */
				if ((DIO_HART_5.val) || (ndata==1))
				{
					if (PORT[id].Slave==0x00)
					{
						LOOP_ENABLED.val = TRUE;
						AO[0].MANUAL = FALSE;
					}
					else
					{
						LOOP_ENABLED.val = FALSE;
						AO[0].MANUAL = TRUE;
					}
				}
				else
				{
					LOOP_ENABLED.val = (data[1] & 0xFF);
					if (LOOP_ENABLED.val) AO[0].MANUAL = FALSE;
					else AO[0].MANUAL = TRUE;
				}

				if (AO[0].MANUAL)
				{
					RESP[1] |= HART_STATUS_PV_loop_fixed;
				}
				else
				{
					RESP[1] &= (HART_STATUS_PV_loop_fixed ^ 0xFF);
				}

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				if (DIO_HART_5.val) Put(&TXbuf[id], 3, 0);
				else Put(&TXbuf[id], 4, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], PORT[id].Slave, 0);
				if (!DIO_HART_5.val) Put(&TXbuf[id], LOOP_ENABLED.val, 0);

				break;
			}
			case HART_CMD_Read_Loop_Configuration:
			{
				if (DIO_HART_5.val)
				{
					RESP[0] = HART_RESP_CMD_NOT_SUPPORTED;
					break;
				}

				Put(&TXbuf[id], 4, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], PORT[id].Slave, 0);
				Put(&TXbuf[id], LOOP_ENABLED.val, 0);

				break;
			}
			case HART_CMD_Read_DV_Classifications:
			{
				if (DIO_HART_5.val)
				{
					RESP[0] = HART_RESP_CMD_NOT_SUPPORTED;
					break;
				}

				for (j=0;j<4;j++)
				{
					v[j] = HART_Lookup(HART_VAR_LIST[j], RESP, (int*)&HART_DV_Table);
				}

				RESP[0] = HART_RESP_NO_ERROR;

				Put(&TXbuf[id], 6, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				for (j=0;j<4;j++)
				{
					if (v[j]->STAT & var_NaNum) Put(&TXbuf[id], c_not_classified, 0);
					else Put(&TXbuf[id], v[j]->class, 0);
				}

				break;
			}
			case HART_CMD_Read_xmtr_status:
			{
				Put(&TXbuf[id], 10, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				/* Device Specific Status */
				Put(&TXbuf[id], DIAGNOSTICS[0]>>8, 0);
				Put(&TXbuf[id], DIAGNOSTICS[0], 0);
				Put(&TXbuf[id], DIAGNOSTICS[1]>>8, 0);
				Put(&TXbuf[id], DIAGNOSTICS[1], 0);
				Put(&TXbuf[id], DIO_ALARM.val, 0);

				/* PAD */
				Put(&TXbuf[id], 0, 0);

				/* Device Operating Modes */
				Put(&TXbuf[id], u_operating_mode_normal, 0);
				Put(&TXbuf[id], u_operating_mode_normal, 0);

				break;
			}
			case HART_CMD_MASTER_RESET:
			{
				Put(&TXbuf[id], 2, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				if (!MEM) Submit_Reset();
				break;
			}
			case HART_CMD_RESET_CONFIG_CHANGED_FLAG:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				HCFG_CHANGE(id, primary_master, FALSE, RESP);

				Put(&TXbuf[id], 2, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				break;
			}
			case HART_CMD_Read_XV:
			{
				if (BURST)
				{
					data = HART_BURST_VAR_LIST;
					i = 0;
					for (j=0;j<4;j++)
					{
						if (HART_BURST_VAR_LIST[j]>=var_not_used) break;
						i++;
					}
					ndata = i;
				}

				if (ndata<1)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				if (ndata>4) ndata = 4;

				Put(&TXbuf[id], (2+(6*ndata)), 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				for (j=0;j<ndata;j++)
				{
					v[j] = HART_Lookup((data[j]&0xFF), RESP, (int*)&HART_DV_Table);
					Put(&TXbuf[id], data[j], 0);
					if (v[j]->STAT & var_NaNum) Put(&TXbuf[id], u_generic_not_used, 0);
					else
					{
						tmp0 = v[j]->unit;
//						if (DIO_HART_5.val) tmp0 = tmp0>>8;
						Put(&TXbuf[id], tmp0, 0);
					}
					Put_IEEE(id, v[j]);
				}

				RESP[0] = HART_RESP_NO_ERROR;

				break;
			}
			case HART_CMD_Set_PV_upper_range:
			case HART_CMD_Set_PV_lower_range:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				v[0] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
				if (RESP[0])
				{
					RESP[0] = HART_RESP_Invalid_Selection;
					break;
				}

				mina = VAR_Get_Unit_Param(v[0], reg_direct_bmin, 0, 1);
				maxa = VAR_Get_Unit_Param(v[0], reg_direct_bmax, 0, 1);

				if (v[0]->val>maxa)
				{
					RESP[0] = HART_RESP_error_9;	/* process too high */
					break;
				}
				else
				if (v[0]->val<mina)
				{
					RESP[0] = HART_RESP_error_10;	/* process too low */
					break;
				}

				if (cmd==HART_CMD_Set_PV_lower_range)
				{
					if (v[0]->val<=AO[0].URV.val)
					{
						VAR_Update(&AO[0].URV, (AO[0].URV.val + v[0]->val - AO[0].LRV.val),0,0);
						VAR_Update(&AO[0].LRV, v[0]->val,0,0);
						
					}
					else
					{
						RESP[0] = HART_RESP_invalid_span;
						break;
					}
				}
				else
				{
					if (v[0]->val>=AO[0].LRV.val)
					{
						VAR_Update(&AO[0].URV, v[0]->val,0,0);
					}
					else
					{
						RESP[0] = HART_RESP_invalid_span;
						break;
					}
				}

				/* check if AO[0].URV-AO[0].LRV is at least minspan! */
				if (cmd==HART_CMD_Set_PV_lower_range)
				{
					/* now check for minspan error */
					tmpf[0] = fabs((AO[0].URV.val-AO[0].LRV.val)/(maxa-mina));
					if (tmpf[0]<AO[0].MINSPAN)
					{
						if (AO[0].URV.val > maxa)
						{/* applied process too high */
							VAR_Update(&AO[0].URV, maxa,0,0);
							RESP[0] = HART_RESP_error_9;
							break;
						}
						else
						if (AO[0].URV.val < mina)
						{/* applied process too low */
							VAR_Update(&AO[0].URV, mina,0,0);
							RESP[0] = HART_RESP_error_10;
							break;
						}
					}
					else
					if (AO[0].URV.val > maxa)
					{/* LRV pushed */
						VAR_Update(&AO[0].URV, maxa,0,0);
						RESP[0] = HART_RESP_warn_14;
					}
					else
					if (AO[0].URV.val < mina)
					{/* LRV pushed */
						VAR_Update(&AO[0].URV, mina,0,0);
						RESP[0] = HART_RESP_warn_14;
					}
				}
				else
				{
					if (tmpf[0]<AO[0].MINSPAN)
					{/* span too small */
						RESP[0] = HART_RESP_warn_14;
					}
				}

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				Put(&TXbuf[id], 2, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				break;
			}
			case HART_CMD_Write_PV_range:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<9)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				v[0] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);

				if (RESP[0])
				{
					RESP[0] = HART_RESP_Invalid_Selection;
					break;
				}

				data[0] &= 0xFF;
				
				if (DIO_HART_5.val) 
					data[0] = data[0]<<8;

				if (!VAR_Set_Unit(v[0], data[0] , TRUE))	
				{/* check if valid unit code */
					if (DIO_HART_5.val) 
						RESP[0] = HART_RESP_Invalid_Selection;
					else 
						RESP[0] = HART_RESP_invalid_unit_code;
					
					break;
				}

				OLD_UNIT = v[0]->unit;
				
				VAR_Set_Unit(v[0], data[0] , FALSE);

				tmp0 	= ((data[1]&0xFF)<<24) | ((data[2]&0xFF)<<16) | ((data[3]&0xFF)<<8) | (data[4]&0xFF);
				tmpf[0] = FMIEEE(tmp0);
				tmp0 	= ((data[5]&0xFF)<<24) | ((data[6]&0xFF)<<16) | ((data[7]&0xFF)<<8) | (data[8]&0xFF);
				tmpf[1] = FMIEEE(tmp0);
				tmpf[2] = tmpf[0]-tmpf[1];
				maxa = VAR_Get_Unit_Param(v[0], reg_direct_bmax, 0, 1);
				
				if (tmpf[0] > maxa)
					RESP[0] = HART_RESP_error_11;
				
				mina = VAR_Get_Unit_Param(v[0], reg_direct_bmin, 0, 1);
				
				if (tmpf[0] < mina)
					RESP[0] = HART_RESP_error_12;
				
				if (tmpf[1] > maxa)
				{
					if (RESP[0]!= HART_RESP_NO_ERROR)
						RESP[0] = HART_RESP_error_13;
					else
						RESP[0] = HART_RESP_error_9;
				}

				if (tmpf[1] < mina)
				{
					if (RESP[0]!= HART_RESP_NO_ERROR)
						RESP[0] = HART_RESP_error_13;
					else
						RESP[0] = HART_RESP_error_10;
				}

				if (tmpf[2]<0)
					RESP[0] = HART_RESP_error_13;
				
				if (RESP[0])
				{
					/* cleanup */
					VAR_Set_Unit(v[0], OLD_UNIT , FALSE);
					
					break;
				}

				VAR_Update(&AO[0].URV, tmpf[0],0,0);
				VAR_Update(&AO[0].LRV, tmpf[1],0,0);

				/* check if AO[0].URV-AO[0].LRV is at least minspan! */
				tmpf[0] = fabs((AO[0].URV.val-AO[0].LRV.val)/(maxa-mina));
				
				if (tmpf[0]<AO[0].MINSPAN)
					RESP[0] = HART_RESP_warn_14;
				
				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				Put(&TXbuf[id], 11, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], data[0], 0);
				
				tmp0 = TOIEEE(AO[0].URV.val);
				
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8,  0);
				Put(&TXbuf[id], tmp0, 	  0);
				
				tmp0 = TOIEEE(AO[0].LRV.val);
				
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8,  0);
				Put(&TXbuf[id], tmp0, 	  0);

				/* cleanup & change PV_UPPER/LOWER_RANGE values to reflect OLD_UNIT */
				VAR_Update(&AO[0].LRV, Convert(v[0]->class, v[0]->calc_unit, OLD_UNIT, AO[0].LRV.val, 0, v[0]->aux),0,0);
				VAR_Update(&AO[0].URV, Convert(v[0]->class, v[0]->calc_unit, OLD_UNIT, AO[0].URV.val, 0, v[0]->aux),0,0);
				VAR_Set_Unit(v[0], OLD_UNIT , FALSE);

				break;
			}
			case HART_CMD_Write_num_preamble:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<1)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				data[0] &= 0xFF;
				if (data[0]<5)
				{
					RESP[0] = HART_RESP_Small_Parameter;
					break;
				}

				if (data[0]>20)
				{
					RESP[0] = HART_RESP_Large_Parameter;
					break;
				}

				/* set variables here */
				NUM_PREAMBLE_SM = data[0];

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				Put(&TXbuf[id], 3, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], NUM_PREAMBLE_SM, 0);
				break;
			}
			case HART_CMD_Write_XV_units:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<2)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				v[0] = HART_Lookup((data[0]&0xFF), RESP, (int*)&HART_DV_Table);

				if (RESP[0])
				{
                	RESP[0] = HART_RESP_error_11;
					break;
				}

				if (v[0]->STAT & var_NaNum)
				{
					RESP[0] = HART_RESP_error_11;
					break;
				}

				data++;

				/* do not break, assume HART_CMD_Write_PV_units is located right after this line */
			}
			case HART_CMD_Write_PV_units:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<1)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				if (cmd==HART_CMD_Write_PV_units)
				{
					v[0] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
	                if (RESP[0]) break;

					if (v[0]->STAT & var_NaNum)
					{
						RESP[0] = HART_RESP_Invalid_Selection;
						break;
					}
	            }

				data[0] &= 0xFF;
				if (DIO_HART_5.val) data[0] = data[0]<<8;

				if (!VAR_Set_Unit(v[0], data[0] , TRUE))	/* check if valid unit code */
				{
					if (cmd==HART_CMD_Write_PV_units) RESP[0] = HART_RESP_Invalid_Selection;
					else RESP[0] = HART_RESP_error_12;
					break;
				}

				VAR_Set_Unit(v[0], data[0] , FALSE);

				v[1] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
				if (v[1]==v[0])
				{
					VAR_Update(&AO[0].LRV, VAR_Get_Unit_Param(v[0], reg_direct_bmin, 0, 1),0,0);
					VAR_Update(&AO[0].URV, VAR_Get_Unit_Param(v[0], reg_direct_bmax, 0, 1),0,0);
				}

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				data--;
				if (cmd==HART_CMD_Write_XV_units) Put(&TXbuf[id], 4, 0);
				else Put(&TXbuf[id], 3, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				if (cmd==HART_CMD_Write_XV_units) Put(&TXbuf[id], data[0], 0);
				if (v[0]->STAT & var_NaNum) Put(&TXbuf[id], u_generic_not_used, 0);
				else
				{
					tmp0 = v[0]->unit;
//					if (DIO_HART_5.val) tmp0 = tmp0>>8;
					Put(&TXbuf[id], tmp0, 0);
				}
				break;
			}
			case HART_CMD_Squawk:
			{
				if (DIO_HART_5.val)
				{
					RESP[0] = HART_RESP_CMD_NOT_SUPPORTED;
					break;
				}

				Put(&TXbuf[id], 2, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				DIO_BEEP.val = TRUE;
				BEEP_ON();
				break;
			}
			case HART_CMD_SELF_TEST:
			{
				Put(&TXbuf[id], 2, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Submit_SELF_TEST();
				break;
			}
			case HART_CMD_Read_DV_assignments:
			{
				for (j=0;j<4;j++)
				{
					v[j] = HART_Lookup(HART_VAR_LIST[j], RESP, (int*)&HART_DV_Table);
					if (RESP[0]) HART_VAR_LIST[j] = var_not_used;
				}

				RESP[0] = HART_RESP_NO_ERROR;

				Put(&TXbuf[id], 6, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				for (j=0;j<4;j++)
				{
					Put(&TXbuf[id], HART_VAR_LIST[j], 0);
				}

				break;
			}
			case HART_CMD_Read_BURST_Config:
			{
				Put(&TXbuf[id], 8, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], HART_BURST_MODE, 0);
				Put(&TXbuf[id], HART_BURST_CMD, 0);
				for (i=0;i<4;i++) Put(&TXbuf[id], HART_BURST_VAR_LIST[i], 0);
				break;
			}
			case HART_CMD_Write_BURST_XV:
			case HART_CMD_Write_DV_assignments:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<1)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				if (ndata>4) ndata = 4;

				for (j=0;j<ndata;j++)
				{
					data[j] &= 0xFF;
					v[j] = HART_Lookup(data[j], RESP, (int*)&HART_DV_Table);
					if (RESP[0]) break;
				}

				if (RESP[0]) break;

				if (cmd==HART_CMD_Write_DV_assignments)
				{
					for (j=0;j<ndata;j++)
					{
						HART_VAR_LIST[j] = data[j];
					}

					for (j=ndata;j<4;j++)
					{
						HART_VAR_LIST[j] = var_not_used;
					}

					v[0] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
					VAR_Update(&AO[0].LRV, VAR_Get_Unit_Param(v[0], reg_direct_bmin, 0, 1),0,0);
					VAR_Update(&AO[0].URV, VAR_Get_Unit_Param(v[0], reg_direct_bmax, 0, 1),0,0);
				}
				else
				{
					for (j=0;j<ndata;j++)
					{
						HART_BURST_VAR_LIST[j] = data[j];
					}

					for (j=ndata;j<4;j++)
					{
						HART_BURST_VAR_LIST[j] = var_not_used;
					}
				}

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				Put(&TXbuf[id], 6, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				if (cmd==HART_CMD_Write_DV_assignments)
				{
					for (i=0;i<4;i++) Put(&TXbuf[id], HART_VAR_LIST[i], 0);
				}
				else
				{
					for (i=0;i<4;i++) Put(&TXbuf[id], HART_BURST_VAR_LIST[i], 0);
				}

				break;
			}
			case HART_CMD_FIXED_PV_CURRENT_MODE:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<4)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				if ((DIO_HART_5.val && (PORT[id].Slave != 0)) || (!DIO_HART_5.val && !LOOP_ENABLED.val))
				{
					RESP[0] = HART_RESP_error_11;
					RESP[1] |= HART_STATUS_PV_loop_fixed;
					break;
				}

				tmp0 = ((data[0]&0xFF)<<24) | ((data[1]&0xFF)<<16) | ((data[2]&0xFF)<<8) | (data[3]&0xFF);
				tmpf[0] = FMIEEE(tmp0);

				if (tmpf[0]!=0.00)
				{
					mina = VAR_Get_Unit_Param(&AO[0].CURRENT, reg_direct_bmin, 0, 0);
					maxa = VAR_Get_Unit_Param(&AO[0].CURRENT, reg_direct_bmax, 0, 0);

					if (f_compare(&tmpf[0], mina, 1)<0)
					{
						RESP[0] = HART_RESP_Small_Parameter;
						break;
					}
					else
					if (f_compare(&tmpf[0], maxa, 1)>0)
					{
						RESP[0] = HART_RESP_Large_Parameter;
						break;
					}
				}

				if (tmpf[0]==0.0)
				{
					if (AO[0].MANUAL)
					{
						tmpf[0] = OLD_CURRENT;
						/* force the current value instead of waiting for Write_DAC() */
						VAR_Update(&AO[0].CURRENT, tmpf[0], 0, 0);
						AO[0].CURRENT.val1 = tmpf[0];
						AO[0].CURRENT.val2 = tmpf[0];
						AO[0].CURRENT.val  = tmpf[0];
					}

					OLD_CURRENT = 0.0;

					AO[0].MANUAL = FALSE;
				}
				else
				{
					if (!AO[0].MANUAL)
					{
						OLD_CURRENT = AO[0].CURRENT.val;
					}

					{/* force the current value instead of waiting for Write_DAC() */
						VAR_Update(&AO[0].CURRENT, tmpf[0], 0, 0);
						AO[0].CURRENT.val2 = AO[0].CURRENT.val1;
						AO[0].CURRENT.val  = AO[0].CURRENT.val2;
					}

					AO[0].MANUAL = TRUE;
				}

				if (AO[0].MANUAL)
				{
					RESP[1] |= HART_STATUS_PV_loop_fixed;
				}
				else
				{
					RESP[1] &= (HART_STATUS_PV_loop_fixed ^ 0xFF);
				}

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				Put(&TXbuf[id], 6, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put_IEEE(id, &AO[0].CURRENT);

				break;
			}
			case HART_CMD_TRIM_PV_CURRENT_GAIN:
			case HART_CMD_TRIM_PV_CURRENT_ZERO:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<4)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				if ((DIO_HART_5.val && (PORT[id].Slave != 0)) || (!DIO_HART_5.val && !LOOP_ENABLED.val))
				{
					RESP[0] = HART_RESP_error_11;
					break;                           
				}

				if (!AO[0].MANUAL)
				{
					RESP[0] = HART_RESP_error_9;
					break;                           
				}

				tmp0 = ((data[0]&0xFF)<<24) | ((data[1]&0xFF)<<16) | ((data[2]&0xFF)<<8) | (data[3]&0xFF);
				tmpf[0] = FMIEEE(tmp0);

				m = (AO[0].TRIM_MAX_C-AO[0].TRIM_MIN_C)/(AO[0].TRIM_MAX.calc_val-AO[0].TRIM_MIN.calc_val);

				if (cmd==HART_CMD_TRIM_PV_CURRENT_ZERO)
				{
					mina = VAR_Get_Unit_Param(&AO[0].CURRENT, reg_direct_bmin, 0, 0);

					AO[0].TRIM_MIN_C = tmpf[0] - m*(DAC_INT[DAC_Aout1] - AO[0].TRIM_MIN.calc_val);
				}
				else
				{
					maxa = VAR_Get_Unit_Param(&AO[0].CURRENT, reg_direct_bmax, 0, 0);

					AO[0].TRIM_MAX_C = tmpf[0] - m*(DAC_INT[DAC_Aout1] - AO[0].TRIM_MAX.calc_val);
				}

				Put(&TXbuf[id], 6, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				Put_IEEE(id, &AO[0].CURRENT);

				HCFG_CHANGE(id, primary_master, TRUE, RESP);
				break;
			}
			case HART_CMD_Write_XV_dampening:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<5)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				v[0] = HART_Lookup((data[0]&0xFF), RESP, (int*)&HART_DV_Table);
				if (RESP[0] || (!(v[0]->STAT & var_dampen)))
				{
					RESP[0] = HART_RESP_Invalid_Selection;
					break;
				}

				data++;

				/* do not break, assume HART_CMD_Write_PV_dampening is located right after this line */
			}
			case HART_CMD_Write_PV_dampening:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<4)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				if (cmd==HART_CMD_Write_PV_dampening)
				{
					v[0] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
					if (RESP[0] || (!(v[0]->STAT & var_dampen)))
					{
						RESP[0] = HART_RESP_Invalid_Selection;
						break;
					}
				}

				tmp0 = ((data[0]&0xFF)<<24) | ((data[1]&0xFF)<<16) | ((data[2]&0xFF)<<8) | (data[3]&0xFF);
				tmpf[0] = FMIEEE(tmp0);

				if (f_compare(&tmpf[0], 0.0, 1)<0)
				{
					RESP[0] = HART_RESP_Small_Parameter;
					break;
				}

				if (f_compare(&tmpf[0], 300.0, 1)>0)
				{
					RESP[0] = HART_RESP_Large_Parameter;
					break;
				}

				v[0]->dampening = tmpf[0];
				HCFG_CHANGE(id, primary_master, TRUE, RESP);
				tmp0 = TOIEEE(tmpf[0]);

				if (cmd==HART_CMD_Write_PV_dampening)
				{
					Put(&TXbuf[id], 6, 0);
					Put(&TXbuf[id], RESP[0], 0);
					Put(&TXbuf[id], RESP[1], 0);
				}
				else
				{
					data--;
					Put(&TXbuf[id], 7, 0);
					Put(&TXbuf[id], RESP[0], 0);
					Put(&TXbuf[id], RESP[1], 0);
					Put(&TXbuf[id], data[0], 0);
				}

				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);

				break;
			}
			case HART_CMD_Read_PV_Output_Info:
			{
				if (DIO_HART_5.val) Put(&TXbuf[id], 19, 0);
				else Put(&TXbuf[id], 20, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], AO[0].ALARM_SELECT, 0);
				Put(&TXbuf[id], 0x00, 0);
				v[0] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
				if (v[0]->STAT & var_NaNum) Put(&TXbuf[id], u_generic_not_used, 0);
				else
				{
					tmp0 = v[0]->unit;
//					if (DIO_HART_5.val) tmp0 = tmp0>>8;
					Put(&TXbuf[id], tmp0, 0);
				}
				if (v[0] == &REG_DUMMY) tmp0 = NaN;
				else
				{
					tmpf[0] = AO[0].URV.val;
					tmp0 = TOIEEE(tmpf[0]);
				}
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);
				if (v[0] == &REG_DUMMY) tmp0 = NaN;
				else
				{
					tmpf[0] = AO[0].LRV.val;
					tmp0 = TOIEEE(tmpf[0]);
				}
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);
				if (v[0] == &REG_DUMMY) tmp0 = NaN;
				else
				{
					tmpf[0] = v[0]->dampening;
					tmp0 = TOIEEE(tmpf[0]);
				}
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);
				Put(&TXbuf[id], DIO_LOCK[0].val, 0);
				Put(&TXbuf[id], HART_DIST_PDI, 0);
				if (!DIO_HART_5.val) Put(&TXbuf[id], 0x00, 0);
				RESP[0] = HART_RESP_NO_ERROR;
				break;
			}
			case HART_CMD_Read_PV_Sensor_Info:
			{
				Put(&TXbuf[id], 18, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);

				Put(&TXbuf[id], PORT[id].SNUM>>16, 0);
				Put(&TXbuf[id], PORT[id].SNUM>>8, 0);
				Put(&TXbuf[id], PORT[id].SNUM, 0);

				v[0] = HART_Lookup(HART_VAR_LIST[0], RESP, (int*)&HART_DV_Table);
				if (v[0]->STAT & var_NaNum) Put(&TXbuf[id], u_generic_not_used, 0);
				else
				{
					tmp0 = v[0]->unit;
//					if (DIO_HART_5.val) tmp0 = tmp0>>8;
					Put(&TXbuf[id], tmp0, 0);
				}
				if (v[0] == &REG_DUMMY) tmp0 = NaN;
				else
				{
					tmpf[1] = VAR_Get_Unit_Param(v[0], reg_direct_bmax, 0, 1);
					tmp0 = TOIEEE(tmpf[1]);
				}
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);
				if (v[0] == &REG_DUMMY) tmp0 = NaN;
				else
				{
					tmpf[0] = VAR_Get_Unit_Param(v[0], reg_direct_bmin, 0, 1);
					tmp0 = TOIEEE(tmpf[0]);
				}
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);
				tmp0 = TOIEEE(fabs(AO[0].MINSPAN*(tmpf[1]-tmpf[0])));
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);
				RESP[0] = HART_RESP_NO_ERROR;
				break;
			}
			case HART_CMD_Read_XV_info:
			{
				if (ndata<1)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				data[0] &= 0xFF;
				v[0] = HART_Lookup(data[0], RESP, (int*)&HART_DV_Table);
				if (RESP[0]) break;

				if (DIO_HART_5.val) Put(&TXbuf[id], 23, 0);
				else Put(&TXbuf[id], 25, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], data[0], 0);
				Put(&TXbuf[id], PORT[id].SNUM>>16, 0);
				Put(&TXbuf[id], PORT[id].SNUM>>8, 0);
				Put(&TXbuf[id], PORT[id].SNUM, 0);

				if (v[0]->STAT & var_NaNum) Put(&TXbuf[id], u_generic_not_used, 0);
				else
				{
					tmp0 = v[0]->unit;
//					if (DIO_HART_5.val) tmp0 = tmp0>>8;
					Put(&TXbuf[id], tmp0, 0);
				}

				if (v[0] == &REG_DUMMY) tmp0 = NaN;
				else
				{
					tmpf[1] = VAR_Get_Unit_Param(v[0], reg_direct_bmax, 0, 1);
					tmp0 = TOIEEE(tmpf[1]);
				}
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);

				if (v[0] == &REG_DUMMY) tmp0 = NaN;
				else
				{
					tmpf[0] = VAR_Get_Unit_Param(v[0], reg_direct_bmin, 0, 1);
					tmp0 = TOIEEE(tmpf[0]);
				}
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);

				if (v[0] == &REG_DUMMY) tmp0 = NaN;
				else
				{
					tmpf[0] = v[0]->dampening;
					tmp0 = TOIEEE(tmpf[0]);
				}
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);

				tmp0 = TOIEEE(fabs(AO[0].MINSPAN*(tmpf[1]-tmpf[0])));
				Put(&TXbuf[id], tmp0>>24, 0);
				Put(&TXbuf[id], tmp0>>16, 0);
				Put(&TXbuf[id], tmp0>>8, 0);
				Put(&TXbuf[id], tmp0, 0);

				if (!DIO_HART_5.val)
				{
					if (v[0]->STAT & var_NaNum) Put(&TXbuf[id], c_not_classified, 0);
					else Put(&TXbuf[id], v[0]->class, 0);
					Put(&TXbuf[id], HART_FAMILY_CODE, 0);
				}

				break;
			}
			case HART_CMD_Write_BURST_CMD:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<1)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				switch (data[0] & 0xFF)
				{
					case HART_CMD_Read_DV_with_Status:
					{
						if (DIO_HART_5.val)
						{
							RESP[0] = HART_RESP_Invalid_Selection;
							break;
						}
		
						/* do not break */
        			}

					case HART_CMD_Read_PV:
					case HART_CMD_Read_PV_Current:
					case HART_CMD_Read_Dynamic_Vars:
					case HART_CMD_Read_XV:
					{
						HART_BURST_CMD = data[0] & 0xFF;
						break;
					}

                    default:
                    {
                    	RESP[0] = HART_RESP_Invalid_Selection;
                    	break;
                    }
				}

				HCFG_CHANGE(id, primary_master, TRUE, RESP);

				if (RESP[0]) break;

				Put(&TXbuf[id], 3, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], data[0], 0);
				break;
			}
			case HART_CMD_BURST_MODE:
			{
				if (DIO_LOCK[0].val)
				{
					RESP[0] = HART_RESP_WRITE_PROTECT;
					break;
				}

				if (ndata<1)
				{
					RESP[0] = HART_RESP_not_enough_data;
					break;
				}

				/* note: must adjust bit 0x40 in ADDRESS slot of packet frame to represent the new frame status */
				/* burst on = 1, off = 0, other>1 but let it assume ON */
				data[0] &= 0xFF;
				if (data[0]==0x00)
				{
					TXbuf[id].buff[NUM_PREAMBLE_SM+1] &= (0xFF ^ 0x40);	/* adjust response bit in the first address byte */
					HART_BURST_MODE = FALSE;
				}
				else if (data[0]==0x01)
				{
					TXbuf[id].buff[NUM_PREAMBLE_SM+1] |= 0x40;			/* adjust response bit in the first address byte */
					HART_BURST_MODE = TRUE;
				}
				else
				{
					RESP[0] = HART_RESP_Invalid_Selection;
					break;
				}

				HART_BURST_MASTER_SEL = primary_master;
				
				HCFG_CHANGE(id, primary_master, TRUE, RESP);
				Put(&TXbuf[id], 3, 0);
				Put(&TXbuf[id], RESP[0], 0);
				Put(&TXbuf[id], RESP[1], 0);
				Put(&TXbuf[id], data[0], 0);
				
				break;
			}
			default:
			{/* NOT SUPPORTED */
				RESP[0] = HART_RESP_CMD_NOT_SUPPORTED;
				break;
			}
		}

		if(    (RESP[0]!=HART_RESP_NO_ERROR) 
			&& (RESP[0]!=HART_RESP_warn_8) 
			&& (RESP[0]!=HART_RESP_warn_14) 
			&& (RESP[0]!=HART_RESP_warn_EOT) 
			&& (RESP[0]!=HART_RESP_warn_31))
		{
			Put(&TXbuf[id], 2, 0);
			Put(&TXbuf[id], RESP[0], 0);
			Put(&TXbuf[id], RESP[1], 0);
			
			PORT[id].INV_CMD_COUNT++;
		}
	}

	{/* send the response packet */
	    CKSUM = 0;
		
		for (i=bn; i<TXbuf[id].n; i++)
			CKSUM ^= TXbuf[id].buff[i];
		
		CKSUM &= 0xFF;
		
		Put(&TXbuf[id], CKSUM, 0);
		
		if (TX) 
			Prepare_TX(id, 1);
	}
}

/****************************************************************************/
/* HART BURST REPEAT														*/
/*                                                                          */
/* Description: sets TMR_BURST and HART_BURST_MASTER_SEL                    */
/*                                                                          */
/* Arguments:	INT id - not used WTF?                                      */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       TMR_SET_BT and TRUE respectively                            */
/*                                                                          */
/****************************************************************************/
void HART_BURST_REPEAT(int id)
{
	TMR_BURST 				= TMR_SET_BT;
	HART_BURST_MASTER_SEL  ^= TRUE;
}

/****************************************************************************/
/* HART BURST																*/
/*                                                                          */
/* Description: sets burst mode for a port?                                 */
/*                                                                          */
/* Arguments: 	INT id		   - port										*/
/*				INT burst_mode - response mode								*/
/*                                                                          */
/* Returns:     BOOL TRUE for normal operation                              */
/*                                                                          */
/* Notes: 		BURST_MODE: 0 = none, 										*/
/*							1 = normal, 									*/
/*							2 = attach to response in TXbuf                 */
/*                                                                          */
/****************************************************************************/
BOOL HART_Burst(int id, int burst_mode)
{
	unsigned int RESP[2]; /* response status vector */
	int t;				  /* not used */

	if (!burst_mode)	/* why would you call this function with burst_mode false? */ 
		return FALSE;

	if (HART_BURST_MODE)
	{
		if (PORT[id].RX_pending)
			TMR_BURST = 0;
		else if (!PORT[id].TX_complete)
			TMR_BURST = 0;
		else
		{
			_GIEP;
			PORT[id].TMR_enabled = FALSE;
			RESP[0] 			 = HART_RESP_NO_ERROR;
			RESP[1] 			 = HART_STATUS_NO_ERROR;
			
			HART_Send_Response(id, 1, HART_BURST_MASTER_SEL, 1, RESP, burst_mode, 1);
			
			TMR_BURST = 0x7FFFFFFF;
			
			if (burst_mode!=2) 
				TIMER1_COUNTER[id] = 0;
			
			PORT[id].fvector = (int*) HART_BURST_REPEAT;
			GIEP;
			
			return TRUE;
		}
	}

	return FALSE;
}

/****************************************************************************/
/* HART RX CKSUM															*/
/*                                                                          */
/* Description:	Checks the HART data.                                       */
/*                                                                          */
/* Arguments: 	INT id - port                                               */
/*                                                                          */
/* Returns:		void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void HART_RX_CKSUM(int id)
{
	int				i;			/* counter */
	unsigned int 	CKSUM;		/* checksum byte */
	unsigned int 	j[5];		/* pass fail status byte */
	unsigned int 	RESP[2];	/* response bytes */
	BOOL			long_addr;	/* address mode */
	BOOL			primary;	/* HART RESPONSE primary */
	BOOL 			pass;		/* exception handler */
	
	/* get the packet type */
	j[0] = RXbuf[id].buff[0] & 0x07;

	if(HART_BURST_MODE)
	{
		if (j[0]==0x006)	
		{/* if ack packet from another slave, then immediately burst */
			PORT[id].RX_pending = FALSE;
			
			HART_Burst(id, 1);
			
			return;
		}
	}

	pass  = TRUE;
    CKSUM = 0;

	/* Not a Master to Slave packet OR critical error? */
	if ( (j[0]!=0x02)  || (PORT[id].FLAG3) )
		pass = FALSE;
	
	/* check byte error */
	if (PORT[id].DAT & 0x9E00)	
		PORT[id].FLAG1++;
	
	{/* validate the address */
		if (PORT[id].FLAG2==0)
		{/* LONG address format */
			long_addr = TRUE;

			for (i=0;i<5;i++)
				j[i] = RXbuf[id].buff[1+i] & 0xFF;
			
			j[2]  = j[2]<< 16;
			j[3]  = j[3]<< 8;
			j[2] |= j[3] | j[4];

			if( ((j[0] & 0x3F)==0) 
				&& (j[1]==0) 
				&& (j[2]==0) 
				&& (   (PORT[id].func==HART_CMD_Read_Unique_ID_by_TAG) 
					|| (PORT[id].func==HART_CMD_Read_Unique_ID_by_TAG_Long)))
				PORT[id].broadcast = TRUE;
			else
				PORT[id].broadcast = FALSE;
			
			if	(PORT[id].broadcast 
				|| ((( j[0] & 0x3F)==(HART_MFGR_PDI&0x3F)) 
				   && (j[1]==(H_DEV_TYPE&0xFF)) 
				   && (j[2]==(PORT[id].SNUM&0x00FFFFFF))))
			{
				if (j[0] & 0x80)
					primary = TRUE;
				else
					primary = FALSE;
			}
			else
				pass = FALSE;
		}
		else
		{/* SHORT address format */
			long_addr 			= FALSE;
			PORT[id].broadcast 	= FALSE;

			if (PORT[id].func != HART_CMD_Read_Unique_ID)
				pass = FALSE;
			else
			{
				j[2] = RXbuf[id].buff[1] & 0xFF;

				if ((j[2]&0x3F)!=PORT[id].Slave)
					pass = FALSE;
				else
				{
					if (j[2] & 0x80)
						primary = TRUE;
					else
						primary = FALSE;
				}
			}
		}
	}

	if (!pass)
	{/* failure */
		TMR_BURST = TMR_SET_RT1;
		
		RESET_PKT(id);
		
		return;
	}

	for (i=0;i<RXbuf[id].n;i++)
		CKSUM ^= RXbuf[id].buff[i];
	
	CKSUM &= 0xFF;

	if (CKSUM!=0x00) 
		PORT[id].FLAG1++;

	if (PORT[id].FLAG1) 
		pass = FALSE;

	PORT[id].SUCCESS++;

    if (!pass)
    {/* send back message with data error and NO data */
		if (PORT[id].FLAG1)
		{
			RESP[0] = HART_ERROR_COMM;
			
			if (CKSUM) 
				RESP[0] |= HART_ERROR_COMM_CKSUM;
			
			if (PORT[id].STAT & LSR_FRAMING_ERROR) 
				RESP[0] |= HART_ERROR_COMM_Framing;
			
			if (PORT[id].STAT & LSR_PARITY_ERROR ) 
				RESP[0] |= HART_ERROR_COMM_Parity;
			
			if (PORT[id].STAT & LSR_OVERRUN_ERROR) 
				RESP[0] |= HART_ERROR_COMM_Overrun;
		}

		if (CKSUM) 
			RESP[0] |= HART_ERROR_COMM_CKSUM;

		RESP[1] = 0;	/* second response code = 0 if comm error */
		PORT[id].SUCCESS--;
		PORT[id].INV_PKT_COUNT++;
    }
	else if (DIO_RESEARCH_MODE.val && RESEARCH_FORCE_MODE && (id!=PDI_id))
		RESP[0] = HART_RESP_restricted_access;
	
	_GIEP;
	
	HART_Send_Response(id, long_addr, primary, pass, RESP, 0, 0);	/* prepare packet */

	RESP[0] &= 0xFF;
	RESP[1] &= 0xFF;

	VAR_Update(&REG_DIAG[4], (RESP[1]<<8)|RESP[0], 0, 0);

	if (HART_BURST_MODE)
	{/* append BURST packet to response */
		PORT[id].RX_pending = FALSE;
		HART_Burst(id, 2);
	}
	else
	{
		Prepare_TX(id, 1);
		
		PORT[id].fvector = NULL_PTR;
	}

	GIEP;
}

/****************************************************************************/
/* HART RX N DATA															*/
/*                                                                          */
/* Description: Sets TMR_enabled, i and pvector for a port.                 */
/*                                                                          */
/* Arguments:   INT id - port	                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Strange name for a function that does this.                 */
/*                                                                          */
/****************************************************************************/
void HART_RX_N_DATA(int id)
{
	/* check byte error */
	if (PORT[id].DAT & 0x9E00)	
		PORT[id].FLAG1++;
	
	PORT[id].i--;
	
	if (PORT[id].i)
	{
	 	PORT[id].TMR_enabled = TRUE;
		
		return;
	}
	else
	{
		PORT[id].i 			 = 1;
		PORT[id].pvector 	 = (int*) HART_RX_CKSUM;
	 	PORT[id].TMR_enabled = TRUE;
	}
}

/****************************************************************************/
/* HART RX N																*/
/*                                                                          */
/* Description: sets pvector based on a ports i value.                      */
/*                                                                          */
/* Arguments:   INT id - port                                               */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       i > 0 - HART_RX_N_DATA, i == 0 - HART_RX_CKSUM              */
/*                                                                          */
/****************************************************************************/
void HART_RX_N(int id)
{
	if (PORT[id].DAT & 0x9E00)	
	{/* check byte error, return */
		TMR_BURST = TMR_SET_RT1;
		
		RESET_PKT(id);
		
		return;
	}

	PORT[id].i = PORT[id].DAT & 0xFF;
	PORT[id].n = PORT[id].i;

	if (PORT[id].i)
		PORT[id].pvector = (int*) HART_RX_N_DATA;
	else
	{
		PORT[id].i 		 = 1;
		PORT[id].pvector = (int*) HART_RX_CKSUM;
	}

 	PORT[id].TMR_enabled = TRUE;
}

/****************************************************************************/
/* HART RX COMMAND															*/
/*                                                                          */
/* Description: Set port function.                                          */
/*                                                                          */
/* Arguments:   INT id - port                                               */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       sets pvector to HART_RX_N                                   */
/*                                                                          */
/****************************************************************************/
void HART_RX_COMMAND(int id)
{
	/* check byte error */
	if (PORT[id].DAT & 0x9E00)	
		PORT[id].FLAG1++;
	
	PORT[id].func 		 = PORT[id].DAT & 0xFF;
	PORT[id].i 			 = 1;
	PORT[id].pvector 	 = (int*) HART_RX_N;
 	PORT[id].TMR_enabled = TRUE;
}

/****************************************************************************/
/* HART RX EXPANSION BYTES													*/
/*                                                                          */
/* Description: Sets port function                                          */
/*                                                                          */
/* Arguments:   INT id - port                                               */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Part of a series of functions that HART goes through        */
/*                                                                          */
/****************************************************************************/
void HART_RX_EXPANSION_BYTES(int id)
{
	if (PORT[id].DAT & 0x9E00)	
	{/* check byte error */
		PORT[id].FLAG3 = 1;
		PORT[id].FLAG1++;
	}

	PORT[id].i--;
	
	if (PORT[id].i)
	{
	 	PORT[id].TMR_enabled = TRUE;
		
		return;
	}
	else
	{
		PORT[id].i 			 = 1;
		PORT[id].pvector 	 = (int*) HART_RX_COMMAND;
	 	PORT[id].TMR_enabled = TRUE;
	 	return;
	}
}

/****************************************************************************/
/* HART RX SHORT ADDRESS													*/
/*                                                                          */
/* Description: Checks n_exp and sets pvector.                              */
/*                                                                          */
/* Arguments:   INT id - port                                               */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       if n_exp ? HART_RX_EXPANSION_BYTES : HART_RX_COMMAND        */
/*                                                                          */
/****************************************************************************/
void HART_RX_SHORT_ADDRESS(int id)
{
	if (PORT[id].DAT & 0x9E00)	
	{/* check byte error */
		PORT[id].FLAG3 = 1;
		PORT[id].FLAG1++;
	}

	if (PORT[id].n_exp)
	{
		PORT[id].i 		 = PORT[id].n_exp;
		PORT[id].pvector = (int*) HART_RX_EXPANSION_BYTES;
	}
	else
	{
		PORT[id].i 		 = 1;
		PORT[id].pvector = (int*) HART_RX_COMMAND;
	}

 	PORT[id].TMR_enabled = TRUE;
}

/****************************************************************************/
/* HART RX LONG ADDRESS														*/
/*                                                                          */
/* Description: Checks if i > 0 and n_exp                                   */
/*                                                                          */
/* Arguments:   INT id - port                                               */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       i == 0 ? return : ( n_exp == 0 ? EXPANSION_BYTES : COMMAND )*/
/*                                                                          */
/****************************************************************************/
void HART_RX_LONG_ADDRESS(int id)
{
	if (PORT[id].DAT & 0x9E00)	
	{/* check byte error */
		PORT[id].FLAG3 = 1;
		PORT[id].FLAG1++;
	}

	PORT[id].i--;
	
	if (PORT[id].i)
	{
	 	PORT[id].TMR_enabled = TRUE;
		
		return;
	}
	else
	{
		if (PORT[id].n_exp)
		{
			PORT[id].i 		 = PORT[id].n_exp;
			PORT[id].pvector = (int*) HART_RX_EXPANSION_BYTES;
		}
		else
		{
			PORT[id].i 		 = 1;
			PORT[id].pvector = (int*) HART_RX_COMMAND;
		}
	
	 	PORT[id].TMR_enabled = TRUE;
	 	return;
	}
}

/****************************************************************************/
/* HART RX DELIMTER															*/
/*                                                                          */
/* Description: Depending on the packet state does three things.            */
/*                                                                          */
/* Arguments:   INT id - port                                               */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       .DAT == 0xFF - set RX_PENDING and TMR_enabled               */
/*              .i <= 0		 - qualifies delimeter and determines address   */
/*              otherwise    - resets packet                                */
/*                                                                          */
/****************************************************************************/
void HART_RX_DELIMITER(int id)
{
	unsigned int j;

	if (PORT[id].DAT & 0x9E00)	
	{/* check byte error */
		/* setup BURST timer */
		TMR_BURST = PORT[id].TMR_Network_WDOG;
		
		RESET_PKT(id);
		
		return;
	}

	if ((PORT[id].DAT & 0xFF) == 0xFF)
	{/* set RX_PENDING and TMR_enabled, return */
		/* setup BURST timer */
		if (PORT[id].i==PORT[id].i_main)
			TMR_BURST = PORT[id].TMR_Network_WDOG;


	 	PORT[id].RX_pending  = TRUE;
		PORT[id].i--;
	 	PORT[id].TMR_enabled = TRUE;
	 	
		return;
	}
	else if (PORT[id].i <= 0)
	{/* qualify delimiter, determine address type, return */
		_GIEP;
		
		/* reset buffer so that delimiter is at the beginning instead of the preamble */
		Clear_RX(id);						
	 	
		PORT[id].RX_pending = TRUE;
		TMR_BURST 			= 0;
	 	GIEP;

		{/* qualify the delimiter */
			j = (PORT[id].DAT & 0x07);
			
			if ((j!=1) && (j!=2) && (j!=6))
			{/* return */
				PORT[id].i = PORT[id].i_main;
				
				return;
			}

			{/* expansion frame */
				j 				= (PORT[id].DAT & 0x60);
				j 				= j>>5;
				PORT[id].n_exp 	= j;
				
				/* this device will not respond to expanded framed messages */
				if (j) 
					PORT[id].FLAG3 = 1;	
			}
		}

		Put(&RXbuf[id], PORT[id].DAT, 0);

		if (PORT[id].DAT & 0x80)
		{/* long address */
			PORT[id].FLAG2 	 = 0;	/* used to determine address type */
			PORT[id].i 		 = 5;
			PORT[id].pvector = (int*) HART_RX_LONG_ADDRESS;
		 	return;
		}
		else
		{/* short address */
			PORT[id].FLAG2 	 = 1;	/* used to determine address type */
			PORT[id].i 		 = 1;
			PORT[id].pvector = (int*) HART_RX_SHORT_ADDRESS;
		 	return;
		}
	}
    else
	{/* reset packet, return */
		/* setup BURST timer */
		TMR_BURST = PORT[id].TMR_Network_WDOG;
		
		RESET_PKT(id);
		
		return;
	}
}

/****************************************************************************/
/* HART INITIALIZATION														*/
/*                                                                          */
/* Description: Setup HART for port                                         */
/*                                                                          */
/* Arguments:   INT id - port to setup                                      */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       if port is not present it breaks.                           */
/*                                                                          */
/****************************************************************************/
void HART_Initialize(int id)
{
	float t;	/* time counter */
	int field_M;

	/* check EEA port 4 or SA port 0*/
	if ((!SA) && (id!=4)) return;
	else if (SA && (id!=0)) return;

	Setup_UART(id, (int)PORTCFG[id].Baud_Rate.calc_val, 8, PORTCFG[id].Parity, 1);

	/// check model code to ensure HART option was purchased - 6.13.36 [05/15/2018]
	//field_M = STR_Analyzer_Info[5] & 0xFF; // if Field M is "3" (0x33), then enable HART routines
    field_M = (STR_Analyzer_Info[6] >> 8); // FIXED BY DKOH [05/16/2019]
	if (PORT[id].PRESENT && (field_M == 0x33))
	{
		HCOLD[0] 			  = TRUE;
		HCOLD[1] 			  = TRUE;
		HART_BURST_MASTER_SEL = TRUE;

		/* check range on NUM_PREAMBLE_MS */
		if (NUM_PREAMBLE_MS < 5) NUM_PREAMBLE_MS = 5;
		else if (NUM_PREAMBLE_MS > 20) NUM_PREAMBLE_MS = 20;
	
		/* check range on NUM_PREAMBLE_SM */
		if (NUM_PREAMBLE_SM < 5) NUM_PREAMBLE_SM = 5;
		else if (NUM_PREAMBLE_SM > 20) NUM_PREAMBLE_SM = 20;

		PORT[id].i_main 		= 2;	/* need minimum of two preambles in start of msg */
		PORT[id].tvector_main 	= (int*)WDOG_P;
		PORT[id].pvector_main 	= (int*)HART_RX_DELIMITER;
		PORT[id].Slave 			= PORTCFG[id].Slave_ID.val;
		t 						= PORTCFG[id].n_bits*HART_BT/PORT[id].actual_baud_rate/TIME1;
		
		if (0.0<(t-(int)t)) t++;
		
		TMR_SET_BT 	= (int)t;
		t 			= PORTCFG[id].n_bits*HART_RT1_0/PORT[id].actual_baud_rate/TIME1;
		
		if (0.0<(t-(int)t)) t++;
		
		TMR_SET_RT1 = (int)t;
		TMR_BURST 	= TMR_SET_BT;

		RESET_PKT(id);
	}
	//else if (field_M != 0x33)
	else if (field_M != 0x3) // FIX HART PROBLEM BY DKOH MAY 15, 2018
	{	//invalid model code for HART
		PORT[id].IGNORE_RX = 1; //ignore incoming HART data
	}
}
