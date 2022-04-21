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
/* File Name: MODBUSRTU.C					    							*/
/* 									    									*/
/* File Description: This file deals with everything MODBUS, from creating	*/
/* a slave to creating a master, to dealing with individual MODBUS addresses*/
/* it does it all.  Look at function description to get more detail.  Too	*/
/* much to put here.  Probably make it TL so you DR.   						*/
/*									    									*/
/****************************************************************************/
#define MODBUSRTU_H
#define MODBUSTABLES_H

#include "GLBLS.H"
#include "MODBUSTABLES.H"

/****************************************************************************/
/* MODBUS INITIALIZE														*/
/*                                                                          */
/* Description: Initializes modbus for a port                               */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       This configures a port that has already been initialized as */
/*				a MODBUS-RTU port.                                          */
/*                                                                          */
/****************************************************************************/
void Modbus_Initialize(int id)
{
	int* poll[] = {	/* Poll vector */	
					(int*)&MB_POLL_0, 
					(int*)&MB_POLL_1, 
					(int*)&MB_POLL_2, 
					(int*)&MB_POLL_3, 
					(int*)&MB_POLL_4, 
					(int*)&MB_POLL_5, 
					(int*)&MB_POLL_6, 
					(int*)&MB_POLL_7
				  };
	int* retry[] = { /* Retry vector */
					(int*)&MB_RETRY_0, 
					(int*)&MB_RETRY_1, 
					(int*)&MB_RETRY_2, 
					(int*)&MB_RETRY_3, 
					(int*)&MB_RETRY_4, 
					(int*)&MB_RETRY_5, 
					(int*)&MB_RETRY_6, 
					(int*)&MB_RETRY_7
				   };

	/* check port range */
	if ((id<0) || (id>=UART_MAX)) 
		return;

	_GIEP;

	Setup_UART(id, (int)PORTCFG[id].Baud_Rate.calc_val, 8, PORTCFG[id].Parity, 1);

	MODBUS_CRITICAL_ERROR = FALSE;

	if (PORT[id].PRESENT)
	{/* if port exists */
		PORT[id].Slave = PORTCFG[id].Slave_ID.val;

		/* set density correction mode port */
		if ((DCM_PORT.val<-1) || (DCM_PORT.val>3))	/* note: -1 means disabled */
			DCM_PORT.val = 3;
		
		if (ALYESKA.ENABLED 
			&& (  ((ANALYZER_MODE.val&0xFF) == SUB_LOW) 
			   || ((ANALYZER_MODE.val&0xFF) == SUB_MID) 
			   || ((ANALYZER_MODE.val&0xFF) == SUB_ANALYZER))
			&& (Density_Correction_Mode.val<6) 
			&& (Density_Correction_Mode.val>0))
		{
			DCM_PORT.val = 3;
			
			if ((id==1) || (id==2)) 
				PORT[id].Slave = 0;
		}
		else if ((  ((ANALYZER_MODE.val&0xFF) == SUB_LOW)	
				 || ((ANALYZER_MODE.val&0xFF) == SUB_MID) 
				 || ((ANALYZER_MODE.val&0xFF) == SUB_FULL)
				 || ((ANALYZER_MODE.val&0xFF) == SUB_ANALYZER)) 
				&& (Density_Correction_Mode.val<6) 
				&& (Density_Correction_Mode.val>0) 
				&& (id==DCM_PORT.val))	
			PORT[id].Slave = 0;
		else if (((ANALYZER_MODE.val&0xFF) == SUB_CCM) && ((id==2) || (id==3)))
			PORT[id].Slave = 0;
		/* set density correction mode port */
		
		Timer_Create(&PORT[id].TMR_Poll,  PORTCFG[id].poll_time/100.0,     1, poll[id],  0);
		Timer_Create(&PORT[id].TMR_Retry, PORTCFG[id].Retry_Time.calc_val, 1, retry[id], 0);

		if (DEMO) 
			PORT[id].Slave = 1;

		if (PORT[id].Slave>0)
		{
			PORT[id].i_main 	  = 1;
			PORT[id].tvector_main = (int*)WDOG_P;
			PORT[id].pvector_main = (int*)MODBUS_RX_ID;
			
			Timer_Insert(&PORT[id].TMR_Poll,0,TMR_action_delete);
			Timer_Insert(&PORT[id].TMR_Retry,0,TMR_action_delete);
		}
		else
		{
			MB_Init_Master(id);

			PORT[id].Received_PKT = FALSE;
			
			Timer_Insert(&PORT[id].TMR_Poll,0,TMR_action_replace);

			PORT[id].pvector_main = (int*) MODBUS_RX_nDATA;
			PORT[id].i_main 	  = 100;
		}

		RESET_PKT(id);
	}

	GIEP;
}

/****************************************************************************/
/* MODBUS RX ID																*/
/*                                                                          */
/* Description: Sets up long or NOT long address for MODBUS                 */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Long address vector 	- MODBUS_RX_LONG_ADDR				*/
/*				NOT long address vector - MODBUS_RX_FUNCTION                */
/*                                                                          */
/****************************************************************************/
void MODBUS_RX_ID(int id)
{
	unsigned int t;	/* temp variable */

 	PORT[id].RX_pending = TRUE;
	t 					= (RXbuf[id].buff[0] & 0xFF);

	if (t==0xFA)
	{/* modbus rx long address */
		PORT[id].LONG_ADDRESS 	= TRUE;
		PORT[id].pvector 		= (int*) MODBUS_RX_LONG_ADDR;
		PORT[id].i 				= EXTENDED_ADDR_LEN;
	}
	else
	{/* modbus rx NOT long address */
		PORT[id].LONG_ADDRESS 	= FALSE;
		PORT[id].pvector 		= (int*) MODBUS_RX_FUNCTION;
	}

 	PORT[id].TMR_enabled = TRUE;
}

/****************************************************************************/
/* MODBUS RX LONG ADDRESS													*/
/*                                                                          */
/* Description: Decrements i checks if greater than zero and sets pvector   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Looks like this adds an extra step for LONG address MODBUS	*/
/*				Sets pvector to MODBUS_RX_FUNCTION (what it would have been	*/
/*				if it were NOT long address.)								*/
/*                                                                          */
/****************************************************************************/
void MODBUS_RX_LONG_ADDR(int id)
{
	PORT[id].i--;
	
	if (PORT[id].i>0)
	{
	 	PORT[id].TMR_enabled = TRUE;
		return;
	}

	PORT[id].pvector 	 = (int*) MODBUS_RX_FUNCTION;
 	PORT[id].TMR_enabled = TRUE;
}

/****************************************************************************/
/* MODBUS RX FUNCTION														*/
/*                                                                          */
/* Description: Sets i and pvector based on function.                       */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:     	MODBUS_RX_nDATA is default pvector                          */
/*                                                                          */
/****************************************************************************/
void MODBUS_RX_FUNCTION(int id)
{
	int L_offset;	/* buffer offset */
	
	/* check long address */
	if (PORT[id].LONG_ADDRESS) 
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	PORT[id].func 	 = (RXbuf[id].buff[1+L_offset] & 0xFF);
	PORT[id].i 		 = 2;
	PORT[id].pvector = (int*) MODBUS_RX_nDATA;

	switch(PORT[id].func)
	{/* sets i and pvector */
		case mb_cmd_r_exception_stat:
		case mb_cmd_r_commevent_ctr:
		case mb_cmd_r_commevent_log:
		case mb_cmd_r_slave_id:
		{
			PORT[id].pvector = (int*) MODBUS_RX_CRC;
			break;
		}
		case mb_cmd_r_coil_stat:
		case mb_cmd_r_input_stat:
		case mb_cmd_r_hold_reg:
		case mb_cmd_r_input_reg:
		case mb_cmd_w_coil:
		case mb_cmd_w_reg:
		case mb_cmd_w_coils:
		case mb_cmd_w_regs:
		case mb_cmd_diag:
		{
			PORT[id].i = 4;
			break;			
		}
		case mb_cmd_pdi_force_slave:
		case mb_cmd_pdi_force_slave_pipe:
		case mb_cmd_w_mask4x:
		case mb_cmd_pdi_memory_read:
		case mb_cmd_pdi_calibrate:
		case mb_cmd_pdi_analyzer_sample:
		{
			PORT[id].i = 5;
			break;
		}
		case mb_cmd_rw_reg4x:
		{
			PORT[id].i = 8;
			break;
		}
		case mb_cmd_pdi_analyzer_setup:
		{
			PORT[id].i = 13;
			break;
		}
		case mb_cmd_pdi_memory_write:
		{
			PORT[id].i 		 = 5;
			PORT[id].pvector = (int*) MODBUS_RX_n;
			break;
		}
		case mb_cmd_pdi_set_time:
		{
			PORT[id].i = 6;
			break;
		}
		case mb_cmd_pdi_unlock:
		{
			PORT[id].i = 1;
			break;
		}
		default:
		{
			PORT[id].i 		 = 1;
			PORT[id].pvector = (int*) MODBUS_RX_n;
			break;
		}
    }

 	PORT[id].TMR_enabled = TRUE;
}

/****************************************************************************/
/* MODBUS RX n																*/
/*                                                                          */
/* Description: Sets i for memory write and default commands.               */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       mb_cmd_pdi_memory_write and default use this pvector        */
/*				new pvector is MODBUS_RX_nDATA (default for other cmds.)	*/
/*                                                                          */
/****************************************************************************/
void MODBUS_RX_n(int id)
{
	PORT[id].i--;

	if (PORT[id].i>0)
	{
	 	PORT[id].TMR_enabled = TRUE;
		return;
	}

	PORT[id].i = (unsigned int) (RXbuf[id].buff[RXbuf[id].n-1] & 0xFF);

	if (PORT[id].func == mb_cmd_pdi_memory_write)
		PORT[id].i *= 4;

	PORT[id].pvector	 = (int*) MODBUS_RX_nDATA;
 	PORT[id].TMR_enabled = TRUE;
}

/****************************************************************************/
/* MODBUS RX nDATA															*/
/*                                                                          */
/* Description: Set pvector to MODBUS_RX_n for w_coils, w_regs and rw_reg4x */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       if not an above command pvector is changed to MODBUS_RX_CRC	*/
/*                                                                          */
/****************************************************************************/
void MODBUS_RX_nDATA(int id)
{
	PORT[id].i--;

	if (PORT[id].i>0)
	{/* don't execute yet */
	 	PORT[id].TMR_enabled = TRUE;
	
		return;
	}

	if (PORT[id].Slave>0)
	{
		switch (PORT[id].func)
		{/* select command */
			case mb_cmd_w_coils:
			case mb_cmd_w_regs:
			case mb_cmd_rw_reg4x:
			{
				PORT[id].i 		 	 = 1;
				PORT[id].pvector 	 = (int*) MODBUS_RX_n;
				PORT[id].func 		^= 0x100;
			 	PORT[id].TMR_enabled = TRUE;
				
				return;
			}
			case (mb_cmd_w_coils | 0x100):
			case (mb_cmd_w_regs | 0x100):
			case (mb_cmd_rw_reg4x | 0x100):
			{
				PORT[id].func 		^= 0x100;
			 	PORT[id].TMR_enabled = TRUE;
				
				break;
			}
		}
	}

	PORT[id].i 			 = 2;
	PORT[id].pvector 	 = (int*) MODBUS_RX_CRC;
 	PORT[id].TMR_enabled = TRUE;	/* is set twice */
}

/****************************************************************************/
/* MODBUS RX CRC															*/
/*                                                                          */
/* Description: If a slave packet is passed, choose the function and execute*/
/*				If a master packet is passed, increment success stat and	*/
/*				check if disconnected.                                      */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       not sure why called CRC, does not do CRC in this function.  */
/*                                                                          */
/****************************************************************************/
void MODBUS_RX_CRC(int id)
{
	BOOL valid;								/* invalid if: CRC16 true, invalid SNUM, !broadcast OR Slave # mismatch */
	BOOL reply;								/* not used 															*/
	int i;									/* execution counter 													*/
	int z;									/* long address offset counter 											*/
	unsigned int d;							/* lock data 															*/
	unsigned int address;					/* modbus address 														*/
	unsigned int numreg;					/* number of registers 													*/
	unsigned int tmp0;						/* long address 														*/
	unsigned int tmp1;						/* not used 															*/
	int* table;								/* not used 															*/
	int L_offset;							/* extended address 													*/
	unsigned char YEAR,MONTH,DAY,HH,MM,SS; 	/* date data 															*/   
	MPKT* p;                				/* disconnection detect RS												*/
	
	p = (MPKT*)PORT[id].p;  /* disconnection detect RS */   

	PORT[id].i--;
	
	if (PORT[id].i>0)
	{
	 	PORT[id].TMR_enabled = TRUE;
		
		return;
	}
	else if (PORT[id].i<0)
		PORT[id].i = -1;
	
	_GIEP;

	if (PORT[id].LONG_ADDRESS) 
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	RXbuf[id].locked = TRUE;		/* lock the buffer */
	valid 			 = TRUE;

	if (PORT[id].Slave>0)
	{/* slave received packet */
		PORT[id].broadcast	 = FALSE;
		PORT[id].TX_complete = FALSE;

		/* validate packet */
	    if  (RXbuf[id].CRC16 != 0)
		{/* CRC16 */
			valid = FALSE;
			PORT[id].INV_PKT_COUNT++;
		}
		else if (PORT[id].LONG_ADDRESS)
		{/* long address */
			tmp0  =  (unsigned int) (RXbuf[id].buff[1] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[2] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[3] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[4] & 0xFF);

			if (tmp0 != (unsigned int)PORT[id].SNUM)
				valid = FALSE;
		}
		else
		{/* broadcast check, slave mismatch check */
			if ((RXbuf[id].buff[0] & 0xFF) == 0) 
				PORT[id].broadcast = TRUE;

			if 	( !((PORT[id].broadcast) || ((unsigned int) PORT[id].Slave == (RXbuf[id].buff[0] & 0xFF))) )
				valid = FALSE;
		}

		/* execute and form response */
		if (valid && PORT[id].BUSY)
		{
			MB_exception(id, mb_excp_slave_busy);
			Prepare_TX(id, 0);
			
			PORT[id].SUCCESS++;
		}
		else if (valid)
		{
			DIAGNOSTICS[0] &= DIAGNOSTICS_MASK[0];
			DIAGNOSTICS[1] &= DIAGNOSTICS_MASK[1];
			PORT[id].data 	= 2+L_offset;
			address 		= (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);
			address 		= address << 8;
			address 	   |= (unsigned int) (RXbuf[id].buff[3+L_offset] & 0xFF);
			address 	   += 1;
			numreg 			= (unsigned int) (RXbuf[id].buff[4+L_offset] & 0xFF);
			numreg 			= numreg << 8;
			numreg 		   |= (unsigned int) (RXbuf[id].buff[5+L_offset] & 0xFF);

			Clear(&TXbuf[id]);

			PORT[id].c = FALSE;
	
			if (MODBUS_CRITICAL_ERROR)
				MB_exception(id, mb_excp_slave_fail);
			else
			{
				switch(PORT[id].func)
				{
					case mb_cmd_diag:
					{
						MB_Diag(id);
						
						break;
					}
					case mb_cmd_w_coil:
					case mb_cmd_w_coils:
					case mb_cmd_w_reg:
					case mb_cmd_w_regs:
					{
						if ((PORT[id].func == mb_cmd_w_coils) || (PORT[id].func == mb_cmd_w_coil))
							PORT[id].c = TRUE;
						
						if ((PORT[id].func == mb_cmd_w_coil) || (PORT[id].func == mb_cmd_w_reg))
						{
							numreg 		= 1;
							PORT[id].i 	= 4+L_offset;		/* point to start of data */
						}
						else
							PORT[id].i 	= 7+L_offset;		/* point to start of data */
						
						PORT[id].r 		= FALSE;
						PORT[id].start 	= address;
						PORT[id].n 		= numreg;
						
						Process(id);

						break;
					}
					case mb_cmd_r_coil_stat:
					case mb_cmd_r_input_stat:
					case mb_cmd_r_hold_reg:
					case mb_cmd_r_input_reg:
					{
						if  ((PORT[id].func == mb_cmd_r_coil_stat) || (PORT[id].func == mb_cmd_r_input_stat))
							PORT[id].c = TRUE;
						
						PORT[id].r 		= TRUE;
						PORT[id].start 	= address;
						PORT[id].n 		= numreg;
						
						Process(id);
	
						break;
					}			
					case mb_cmd_r_slave_id:
					{
						Report_Slave_Info(id);
						
						break;
					}
					case mb_cmd_pdi_unlock:
					{
						//if ((DIPSWITCH[0] == 0)) // v.6.13.34
						//{
							//MB_exception(id, mb_excp_illegal_func); 
							//break;
						//} DKOH OCT 7, 2020 - NO NEED TO BLOCK UNLOCKING PROCESS HERE
						
						LOCKOUT = FALSE;
						d 		= (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);
						
						if (d)
							DIO_LOCK[1].val = FALSE;
						else
							DIO_LOCK[1].val = TRUE;
						
						for (z=0;z<(2+L_offset);z++)	/* echo the first part of the pkt */
							Put(&TXbuf[id], RXbuf[id].buff[z], 1);
						
						break;
					}
					case mb_cmd_pdi_set_time:
					{
						HH		= (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);
						MM		= (unsigned int) (RXbuf[id].buff[3+L_offset] & 0xFF);
						SS		= (unsigned int) (RXbuf[id].buff[4+L_offset] & 0xFF);
						MONTH	= (unsigned int) (RXbuf[id].buff[5+L_offset] & 0xFF);
						DAY		= (unsigned int) (RXbuf[id].buff[6+L_offset] & 0xFF);
						YEAR	= (unsigned int) (RXbuf[id].buff[7+L_offset] & 0xFF);

						while(1)
						{
							if (!Write_DS1340(2, 1, &HH)) 
								break;
							
							if (!Write_DS1340(1, 1, &MM)) 
								break;
							
							if (!Write_DS1340(0, 1, &SS)) 
								break;
							
							if (!Write_DS1340(5, 1, &MONTH)) 
								break;
							
							if (!Write_DS1340(4, 1, &DAY)) 
								break;
							
							if (!Write_DS1340(6, 1, &YEAR)) 
								break;
							
							RTC[1]  		= 0x00;	/* reset the OSF */
							DIAGNOSTICS[1] &= 0xFFFFFFFF ^ ERROR2_TIME_RESET;
							
							if (!Write_DS1340(8, 2, &RTC[0])) 
								break;
							
							break;
						}

						for (z=0;z<(2+L_offset);z++)	/* echo the first part of the pkt */
							Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
						break;
					}
					case mb_cmd_pdi_force_slave:
					case mb_cmd_pdi_force_slave_pipe:
					{
						Force_Slave_Pipe(id);
					
						break;
					}
					case mb_cmd_pdi_analyzer_sample: // 0x42 
					case mb_cmd_pdi_analyzer_setup: // 0x41
					{
						if (id!=PDI_id) MB_exception(id, mb_excp_illegal_func);// v.6.13.34 
						else
						{
							if (DIPSWITCH[0] != 0) // BUG#117 BY DKOH APR 21, 2022
							{
								RESEARCH();
							
								PORT[id].SUCCESS++;
								GIEP;
						
								return;
							}
						}
						
						break;
					}
					case mb_cmd_pdi_memory_read:
					{
						PORT[id].r = TRUE;
						
						Process_Memory(id);
					
						break;
					}
					case mb_cmd_pdi_memory_write:
					{
						PORT[id].r = FALSE;
						
						Process_Memory(id);
					
						break;
					}
					case mb_cmd_pdi_calibrate:
					{
						if (id!=PDI_id)
						{
							MB_exception(id, mb_excp_illegal_func);
					
							break;
						}
						else
							MB_Calibrate(id);
						
						break;
					}
					default:
					{/* not supported */
						MB_exception(id, mb_excp_illegal_func);
					
						break;			
					}		
				}
			}
	
			Prepare_TX(id, 0);

			PORT[id].SUCCESS++;       
		}
		else
			RESET_PKT(id);
	}
	else
	{/* master received packet */    	
	    if  ((RXbuf[id].CRC16!=0) || (PORT[id].STAT) || ((RXbuf[id].buff[1+L_offset]&0x80)==0x80))
		{/* validate packet */
			valid = FALSE;
			PORT[id].INV_PKT_COUNT++;
		}

		if (valid)
		{
			PORT[id].SUCCESS++;
			PORT[id].Received_PKT = TRUE;
			
			/***disconnetion detect RS***/   
			if(id==2) 
			{
				if(p->slave==2)
				{
					MM_LIQ_fail.val	= FALSE;
					PORT2_LIQ_TEMP	= 0;
				}  
				if(p->slave==3)
				{
					MM_GAS_fail.val	= FALSE;
					PORT2_GAS_TEMP	= 0;
				}
			}     
			if (id==3) 
			{
				Rosemount_fail.val = FALSE;
				PORT3_TEMP		   = 0;					 
    		}
			/***disconnetion detect RS***/   
		}
	}
    
    /***disconnetion detect RS***/
	if(PORT2_LIQ_TEMP>10) 
		MM_LIQ_fail.val = TRUE; 
	
	if(PORT2_GAS_TEMP>10) 
		MM_GAS_fail.val = TRUE;
	
	if(PORT3_TEMP>100) 
		Rosemount_fail.val = TRUE;
	/***disconnetion detect RS***/		
	
	GIEP;
}

/****************************************************************************/
/* MB EXCEPTION																*/
/*                                                                          */
/* Description: Increments invalid packet count and TXbuf gets packet info  */
/*                                                                          */
/* Arguments:   INT id - PORT ID											*/
/*				INT ex - exception type                                     */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       handles the following exceptions:							*/
/*				illegal_func												*/
/*				illegal_addr												*/
/*				illegal_data                                                */
/*                                                                          */
/****************************************************************************/
void MB_exception(int id, int ex)
{
	int z;
	int L_offset;

	if (PORT[id].LONG_ADDRESS) L_offset = EXTENDED_ADDR_LEN;
	else L_offset = 0;

	switch(ex)
	{
		case mb_excp_illegal_func:
		case mb_excp_illegal_addr:
		case mb_excp_illegal_data:
		{
			PORT[id].INV_PKT_COUNT++;
			
			break;
		}
	}

	/* exception response */
	for (z=0;z<(1+L_offset);z++)				/* echo the first part of the pkt */
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
	Put(&TXbuf[id], PORT[id].func|0x80, 1);		/* function w/ exception */
	Put(&TXbuf[id], ex, 1);						/* exception code */
	/* exception response */
}

/****************************************************************************/
/* MB DIAG																	*/
/*                                                                          */
/* Description: Puts two diagnostic registers into TXbuf                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets subfunc from RXbuf                                     */
/*                                                                          */
/****************************************************************************/
void MB_Diag(int id)
{
	int subfunc, r1, r2;
	int i,z;
	int L_offset;

	if (PORT[id].LONG_ADDRESS) 
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	for (z=0;z<(4+L_offset);z++)	/* echo the first part of the pkt */
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
	subfunc = ((RXbuf[id].buff[2+L_offset]&0xFF)<<8) | (RXbuf[id].buff[3+L_offset]&0xFF);
	
	switch (subfunc)
	{
		case 2:
		{/* diagnostics */
			r2 = DIAGNOSTICS[0];
			r1 = r1>>8;
			
			break;
		}
		case 11:
		case 17:
		case 18:
		case 19:
		{/* return bus msg count - note: slave does not count messages that are not addressed to it */
		 /* return busy slave count - note: slave does not count these                              */
			r2 = 0;
			r1 = 0;
			
			break;
		}
		case 14:
		{/* return slave msg count */
			r2 = PORT[id].SUCCESS;
			r1 = r2>>8;
			
			break;
		}
		case 12:
		{/* return comm error count */
			r2 = PORT[id].ERROR_COUNT;
			r1 = r2>>8;
			
			break;
		}
		case 13:
		{/* return bus inv count */
			r2 = PORT[id].INV_CMD_COUNT;
			r1 = r2>>8;
			
			break;
		}
		case 10:
		{/* clear counters and diag register */
			DIAGNOSTICS[0] 			= ERROR_NONE;
			DIAGNOSTICS[1] 			= ERROR_NONE;
			DIAGNOSTICS_MSG_CODE 	= M_ERROR_NONE;
			DIAGNOSTICS_ERROR_CODE 	= E_ERROR_NONE;
			PORT[id].WDOG_COUNT 	= 0;
			PORT[id].ERROR_COUNT 	= 0;
			PORT[id].INV_CMD_COUNT 	= 0;
			PORT[id].INV_PKT_COUNT 	= 0;
			PORT[id].SUCCESS 		= 0;
		}
		default:
		{/* echo the source data */
			r1 = RXbuf[id].buff[4+L_offset];
			r2 = RXbuf[id].buff[5+L_offset];
		}
	}

	Put(&TXbuf[id], r1, 1);
	Put(&TXbuf[id], r2, 1);
}

/****************************************************************************/
/* FORCE SLAVE PIPE															*/
/*                                                                          */
/* Description: Sets new slave address for the port                         */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void Force_Slave_Pipe(int id)
{
	float val;			/* slave id 			*/
	int r,i;			/* not used; counter 	*/
	unsigned int tmp0;	/* SNUM 				*/
	int L_offset;		/* Long address offset 	*/

	if (PORT[id].LONG_ADDRESS) 
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	tmp0  =  (unsigned int) (RXbuf[id].buff[3+L_offset] & 0xFF);
	tmp0  = tmp0 << 8;
	tmp0 |= (unsigned int) (RXbuf[id].buff[4+L_offset] & 0xFF);
	tmp0  = tmp0 << 8;
	tmp0 |= (unsigned int) (RXbuf[id].buff[5+L_offset] & 0xFF);
	tmp0  = tmp0 << 8;
	tmp0 |= (unsigned int) (RXbuf[id].buff[6+L_offset] & 0xFF);

	if (tmp0 == (unsigned int)PORT[id].SNUM)
	{
		PORT[id].broadcast 	= FALSE;
		val 			 	= (RXbuf[id].buff[2+L_offset] & 0xFF);
		
		if ((val>=1) && (val<=247))	/* set slave number */
			PORT[id].Slave = val;
		else
		{/* Slave id out of range */
			if ((RXbuf[id].buff[0] & 0xFF) != 0)
				MB_exception(id, mb_excp_illegal_data);
			
			return;
		}

		if (PORT[id].LONG_ADDRESS)
		{/* echo the pkt */
			for (i=0;i<(7+EXTENDED_ADDR_LEN);i++)	
				Put(&TXbuf[id], RXbuf[id].buff[i], 1);
		}
		else
		{/* respond with new slave addr */
			Put(&TXbuf[id], RXbuf[id].buff[2], 1);	
			
			for (i=1;i<7;i++)	/* echo the pkt */
				Put(&TXbuf[id], RXbuf[id].buff[i], 1);
		}
	}
}

/****************************************************************************/
/* REPORT SLAVE INFO														*/
/*                                                                          */
/* Description: Reports info about the slave.                               */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void Report_Slave_Info(int id)
{
	int z;
	int L_offset;

	if (PORT[id].LONG_ADDRESS) 
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	for (z=0;z<(1+L_offset);z++)				/* echo the first part of the pkt */
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
	Put(&TXbuf[id], PORT[id].func, 1);			/* function */
	Put(&TXbuf[id], 9, 1);						/* byte count - device specific*/
	Put(&TXbuf[id], (int)PORT[id].Slave, 1);	/* slave id */

	if (DEMO)
		Put(&TXbuf[id], 0x00, 1);				/* not running */
	else
		Put(&TXbuf[id], 0xFF, 1);				/* running */

	
	Put(&TXbuf[id], DIO_LOCK[0].val, 1);		/* device specific data goes here */
	Put(&TXbuf[id], (DIAGNOSTICS[0]>>8), 1);
	Put(&TXbuf[id], DIAGNOSTICS[0], 1);
	Put(&TXbuf[id], (ANALYZER_MODE.val>>8), 1);
	Put(&TXbuf[id], ANALYZER_MODE.val, 1);
	Put(&TXbuf[id], (SN_PIPE>>8), 1);
	Put(&TXbuf[id], SN_PIPE, 1);
}

/****************************************************************************/
/* PROCESS MEMORY															*/
/*                                                                          */
/* Description: Reads or writes to a memory address                         */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void Process_Memory(int id)
{
	unsigned int  address;	/* modbus address 		*/
	unsigned int  numreg;	/* memory size 			*/
	unsigned int* p;		/* address pointer 		*/
	unsigned int  q;		/* not used 			*/
	unsigned int  i;		/* memory counter 		*/
	unsigned int  tmp3;		/* data 				*/
	int tmp2;				/* data 				*/
	int tmp1;				/* data 				*/
	int tmp0;				/* data 				*/
	int z;					/* counter 				*/
	int L_offset;			/* Long address offset 	*/

	if (PORT[id].LONG_ADDRESS) 
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	address  = (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);
	address  = address << 8;
	address |= (unsigned int) (RXbuf[id].buff[3+L_offset] & 0xFF);
	address  = address << 8;
	address |= (unsigned int) (RXbuf[id].buff[4+L_offset] & 0xFF);
	address  = address << 8;
	address |= (unsigned int) (RXbuf[id].buff[5+L_offset] & 0xFF);
	numreg   = (unsigned int) (RXbuf[id].buff[6+L_offset] & 0xFF);

	if (numreg>60)
	{/* address exception */
		MB_exception(id, mb_excp_illegal_addr);
		
		return;
	}

	p = (unsigned int*)address;

	for (z=0;z<(7+L_offset);z++)				/* echo some of the packet */
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);

	for (i=0; i<numreg ; i++)
	{
		if (PORT[id].r)
		{/* read data */
			tmp0 = p[i];
			tmp1 = tmp0 >> 8;
			tmp2 = tmp1 >> 8;
			tmp3 = tmp2 >> 8;

			/*ABCD*/
			Put(&TXbuf[id], tmp3, 1);
			Put(&TXbuf[id], tmp2, 1);
			Put(&TXbuf[id], tmp1, 1);
			Put(&TXbuf[id], tmp0, 1);
		}
		else
		{/* blindly write to data location - assume no errors */
			tmp0  = (unsigned int) (RXbuf[id].buff[ 7+(i*4)+L_offset] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[ 8+(i*4)+L_offset] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[ 9+(i*4)+L_offset] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[10+(i*4)+L_offset] & 0xFF);
			p[i]  = tmp0;	
		}	
	}
}

/****************************************************************************/
/* PROCESS																	*/
/*                                                                          */
/* Description: Processes the port.  Finds the table and variable within and*/
/*				executes its intended function.                             */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       The buck stops here for a MODBUS register.  This is where it*/
/*				gets parsed and executed.									*/
/*				Assume tables are already sorted!							*/
/*                                                                          */
/****************************************************************************/
void Process(int id)
{
	
	int i;				/* counter 																						 */
	int j;				/* counter  																					 */
	int idx;			/* index to use while indexing packet 															 */
	int n;              /* memory size (various contexts) 																 */
	int ai;				/* array index size (2 float; 1 int) 															 */
	int	addr;			/* calculated address for compared tabulation 													 */
	int	w,x,y,z,a;		/* table index counter; table index; table counter; long address offset counter; address counter */
	int end;			/* end of MODBUS table 																			 */
	int start;          /* start of MODBUS table 																		 */
	int tmp3;			/* data 																						 */
	int tmp2;			/* data 																						 */
	int tmp1;			/* data 																						 */
	int tmp0;			/* data 																						 */
	int vi;				/* val vector index 																			 */
	int vio;			/* value int initial 																			 */
	int	k;				/* bit counter 																					 */
	int IEEE_mode;		/* float representation mode 																	 */
	int L_offset;		/* Long address offset 																			 */
	int* t;				/* table pointer 																				 */
	int* v_int;			/* integer table value 																			 */
	int* tmp;			/* temp variable 																				 */
	int	vali[130];		/* integer value vector 																		 */
	unsigned int PROT;	/* lock byte 																					 */
	unsigned int ui;
	float vfo;			/* value float initial 													*/
	float* v_flt;		/* float table value 													*/
	float val[130];		/* variable value vector												*/
	BOOL pass;			/* pass status for addr check, bounds check - okay to process register  */
	BOOL pass1;			/* table address passed 												*/
	BOOL r;  			/* port is to be read? 													*/
	BOOL c;             /* is it a COIL? 														*/
	BOOL not_a_num;		/* Not a Number? 														*/
	BOOL SAVE_MODE;		/* Enable Saving? 														*/
	BOOL cv, co;		/* coil value 															*/
	VAR* v_var;			/* table variable														*/
	COIL* v_coil;		/* table coil 															*/
	REGVECT* v_regvect;	/* table register 														*/

	#define CMD_AUTOSAVE 10000

	r = PORT[id].r;

	if (r && PORT[id].broadcast) 	/* broadcast is NOT supported on READ */
		return;
		
	if (PORT[id].LONG_ADDRESS) 		/* Long address mode */
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	c 		= PORT[id].c;
	n 		= PORT[id].n;
	ai 		= PORT[id].ai;
	start 	= PORT[id].start;

	/* do the exception handling here */
	if (c && (PORT[id].func==mb_cmd_w_coils))
	{/* coil - write_coils*/
		tmp0 = RXbuf[id].buff[PORT[id].i-1] & 0xFF;
		tmp1 = n/8;
		
		if (n%8) 
			tmp1++;

		if ((n<1) || (n>0x07B0) || (tmp0!=tmp1))
		{/* illegal data */
			MB_exception(id, mb_excp_illegal_data);
			
			return;
		}
	}
	else if (c && (PORT[id].func==mb_cmd_w_coil))
	{/* coil - write_coil */
		tmp0 = ((RXbuf[id].buff[PORT[id].i] & 0xFF)<<8) | (RXbuf[id].buff[PORT[id].i+1] & 0xFF);

		if ((tmp0!=0x0000) && (tmp0!=0xFF00))
		{/* illegal data */
			MB_exception(id, mb_excp_illegal_data);
			
			return;
		}
	}
	else if (c && ((n<1) || (n>0x07D0)))
	{/* coil - n range out of bounds */
		MB_exception(id, mb_excp_illegal_data);
		
		return;
	}
	else if (!c && (PORT[id].func==mb_cmd_w_regs))
	{/* not a coil - write_regs */
		tmp0 = RXbuf[id].buff[PORT[id].i-1] & 0xFF;
		tmp1 = 2 * n;

		if ((n<1) || (n>0x07B) || (tmp0!=tmp1))
		{/* illegal data */
			MB_exception(id, mb_excp_illegal_data);
			
			return;
		}
	}
	else if (!c && ((n<1) || (n>0x007D)))
	{/* not a coil - n range out of bounds */
			MB_exception(id, mb_excp_illegal_data);
			
			return;
		}
	/* do the exception handling here */

	/* MODBUS forever unlocked */
    PROT = 0x00000000;
    PROT |= PROT_U;			
    
    if (!DIO_LOCK[1].val)
    	PROT |= PROT_G;
    
    /*if (!DIO_LOCK[0].val)	/* if screen unlocked */
    /*	PROT |= PROT_U; 						  */
    /* MODBUS forever unlocked */
	
	pass 		= TRUE;
    IEEE_mode 	= 0;
	SAVE_MODE 	= FALSE;

	/* find correct table */
	if (c)
	{/* select coil table */
		if ((start>MB_ADDR_COIL) && (start<=2*CMD_AUTOSAVE+MB_ADDR_COIL))
		{
			start 	-= MB_ADDR_COIL;
            t 		 = (int*)mb_coil;
			ai 		 = 1;
		}
		else
			pass = FALSE;
	}
	else if ((start>MB_ADDR_EXT) && (start<=65536))
	{/* special modbus extended table */
		start -= MB_ADDR_EXT;

		while(TRUE)
		{
			if (!r)			
			{/* write to port */
			    if (DIO_LOCK[1].val)
			    {/* if locked */
				    if ((start>=2577) && !DIO_LOCK[0].val) /* allow updates to SALINITY, OIL_ADJUST, and WATER_ADJUST */
				       	pass = TRUE;
				    else
				    {
				    	pass = FALSE;
				    	
						break;
				    }
				}
				else /* unlocked passes */
					pass = TRUE;
			}
			else /* reads pass */
				pass = TRUE;
			
			ai 	= 2;
			t 	= (int*)mb_ext;		/* note: use special modbus extended table */
            
			if (n%ai)
			{/* verify int pairs */
				pass = FALSE;
		   		
				break;
			}
            			
			if ((start-1)%ai)
			{/* verify boundary */
				pass = FALSE;
		   		
				break;
			}

			end  = start + n - ai;
            n 	/= ai;

			/* check start/end addr */
			pass	= FALSE;
			pass1	= FALSE;
			x 		= 0;
			a 		= 1;
			
			while(TRUE)
			{/* traverse the table */
				if (t[x]==0)
				{/* if starting at the end, fail and break */
					pass = FALSE;
					
					break;
				}

				w = t[x+1];

				for(y=0;y<w;y++)
				{
					if (a==start)
						pass1 = TRUE;
					
					if ((pass1) && (a==end))
					{/* if at the end and passed, success and break */
						pass = TRUE;
						
						break;
					}

					a += ai;
				}

				if (pass)	/* successful, break */
					break;
				
				x += 2;		/* increment array index by 2 */
			}
			/* check start/end addr */

			break;
		}
	}
	else if ((start>MB_ADDR_FLT) && (start<=2*CMD_AUTOSAVE+MB_ADDR_FLT))
	{/* Modbus Float Register Table */
		start 	-= MB_ADDR_FLT;
        t 		 = (int*)mb_flt;
                                                        		
		if (n%2)			/* registers are in pairs */ 
			pass = FALSE;
        		
		if ((start-1)%2)
		{/* floats are in pairs, if start is even, then autosave */
			if (DIO_Autosave_on_pair_boundary)
			{
				start -= 1;
				SAVE_MODE = TRUE;
			}
			else
				pass = FALSE;
		}

		ai = 2;
		n /= ai;
	}
	else if ((start>MB_ADDR_FC) && (start<=2*CMD_AUTOSAVE+MB_ADDR_FC))
	{/* Flow Computer Register Table */
		start -= MB_ADDR_FC;
		t 	   = (int*)mb_fc;

		
		if (n%2) /* registers are in pairs */
			pass = FALSE;
		
		if ((start-1)%2)
		{/* floats are in pairs, if start is even, then autosave */
			if (DIO_Autosave_on_pair_boundary)
			{
				start 	 -= 1;
				SAVE_MODE = TRUE;
			}
			else
				pass = FALSE;
		}

		ai = 2;
		n /= ai;
	}
	else if ((start>MB_ADDR_INT) && (start<=2*CMD_AUTOSAVE+MB_ADDR_INT))
	{/* Modbus Integer Register Table */
		start 	-= MB_ADDR_INT;
		t 		 = (int*)mb_int;
		ai 		 = 1;
	}
	else
		pass = FALSE;
	/* find correct table */
	
	if (!pass)
	{/* if pass failed, indicate illegal address exception and return */
		MB_exception(id, mb_excp_illegal_addr);
		
		return;
	}

	if (c)
	{/* COIL? */
		if (start>CMD_AUTOSAVE)
		{
			start 	 -= CMD_AUTOSAVE;
			SAVE_MODE = TRUE;
		}
	}
	else
	{/* register */
		if (t!=(int*)mb_ext)
		{/* if not in the special extended register table */
			if (start>CMD_AUTOSAVE)
			{
				start 	 -= CMD_AUTOSAVE;
				SAVE_MODE = TRUE;
			}

			if (t!=(int*)mb_int)
			{/* if not in the integer register table - select start, IEEE_mode */
				if (start<2000)
					IEEE_mode = 0;
				else if (start<4000)
				{
					start    -= 2000;
					IEEE_mode = 1;
				}
				else if (start<6000)
				{
					start    -= 4000;
					IEEE_mode = 2;
				}
				else if (start<8000)
				{
					start    -= 6000;
					IEEE_mode = 3;
				}
				else if (start<CMD_AUTOSAVE)
				{
					start    -= 8000;
					IEEE_mode = 4;		/* LONG INT */
				}
			}
		}
	}

	PORT[id].n 		= n;
	PORT[id].ai 	= ai;
	PORT[id].start 	= start;

	if (t!=(int*)mb_ext)
	{/* if not in the special extended register table - check lock */
		i = 0;
		
		while(1)
		{/* find start address */
			if ((t[i]&0xFFFF) == 0)
			{/* reached end */
				pass = FALSE;		
				
				break;
			}
			else if ((t[i]&0xFFFF) == start)
			{
				tmp0 = t[i] & PROT_MASK;
				                  /*vvv Checks lock */
				if ( r || (!r && (tmp0 & PROT)||(t[i] & EN_W)) )
					break;
				else
				{
					pass = FALSE;
					
					break;
				}
			}

			i += 2;
		}

		if (pass)
		{/* verify address continuity */
			addr = start;

			for (j=i;j<(2*n+i);j=(j+2))
			{
				tmp0 = t[j] & PROT_MASK;
				                                                                 /*vvv Checks lock */
				if ( ((t[j]&0xFFFF) != addr) || ((t[j]&0xFFFF) == 0) || (!r && !((tmp0 & PROT)||(t[j] & EN_W))) )
				{  
					pass = FALSE;
					
					break;
				}

				addr += ai;
			}
		}

		if (!pass)
		{/* illegal address */
			MB_exception(id, mb_excp_illegal_addr);
			
			return;
		}
	}

	if (t==(int*)mb_ext)
	{/* if you are in the special extended register table - read or write */
		if (r)
		{/* read operation */
			for (z=0;z<(2+L_offset);z++)
				Put(&TXbuf[id], RXbuf[id].buff[z], 1);
        
			Put(&TXbuf[id], n*2*ai, 1);
		}

		idx 	= PORT[id].i;	/* start of data is pointed to after processing pkt */
		pass 	= FALSE;
		x 		= 0;
		a 		= 1;
		
		while(TRUE)
		{
			w 		= t[x+1];
			v_flt 	= (float*) t[x];

			for(y=0;y<w;y++)
			{
				if ((a>=start) && (a<=end))
				{
					if (r)
					{/* read */
						tmp0 = TOIEEE(v_flt[0]);
						tmp1 = tmp0 >> 8;
						tmp2 = tmp1 >> 8;
						tmp3 = tmp2 >> 8;
						
						/*ABCD*/
						Put(&TXbuf[id], tmp3, 1);
						Put(&TXbuf[id], tmp2, 1);
						Put(&TXbuf[id], tmp1, 1);
						Put(&TXbuf[id], tmp0, 1);
						 /*ABCD*/
					}
					else
					{/* write */
						vfo = v_flt[0];

						/*ABCD*/
						tmp0  	 =  (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
						tmp0  	 = tmp0 << 8;
						tmp0 	|= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
						tmp0  	 = tmp0 << 8;
						tmp0 	|= (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
						tmp0  	 = tmp0 << 8;
						tmp0 	|= (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
						v_flt[0] = FMIEEE(tmp0);
						idx 	+= ai*2;
						
						if (SYS_LOG_ENABLED & LOG_CFG) 
							CfgLog(id, 1, PORT[id].func, a, v_flt[0], v_flt[0], vfo, vfo);
						 /*ABCD*/
					}
				}
				else if (a>end)
				{
					pass = TRUE;
					
					break;
				}

				v_flt++;
				a += ai;
			}

			if (pass)
			{
				if (!r)
				{/* write */
					Mirror_From_Stream_Table(NULL_VAR);

					CHANGE = TRUE;

					/* update change status for HART */
					HCHANGE[0] = TRUE;
					HCHANGE[1] = TRUE;
					HCHANGE_COUNTER++;
					/* update change status for HART */
 				}
 				
				break;
			}

			x += 2;
		}
	}
	else
	{/* coil/register read/write operations */
		if (!c & !r)		
		{/* write reg */
			vi  = 0;
			idx = PORT[id].i;	/* start of data is pointed to after processing pkt */
			
			for (j=i;j<(2*n+i);j=(j+2))		
			{/* check bounds */
				switch(ai)
				{/* check and convert scaled int(ai=1) or IEEE(ai=2) to float, store in val[] */
					case 1:
					{
						tmp0  = (unsigned int) (RXbuf[id].buff[idx] & 0xFF);
						tmp0  = tmp0 << 8;
						tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
						
						if (tmp0 & 0x8000) 
							tmp0 |= 0xFFFF0000;     /* sign-extend */
						
						val[vi] = (int)tmp0;
						
						break;
					}
                    case 2:
					{
						switch (IEEE_mode)
						{
							case 4: /*LONG INT*/
							case 0:
							{/*ABCD*/
								tmp0  = (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
								
								break;
							}
                            case 1:
							{/*CDAB*/
								tmp0  = (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
								
								break;
							}
                            case 2:
							{/*DCBA*/
								tmp0  = (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
								
								break;
							}
                            case 3:
							{/*BADC*/
								tmp0  = (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
								
								break;
							}
						}

						if (IEEE_mode == 4)
						{
							vali[vi] = tmp0;
							val[vi]  = (int)tmp0;
						}
			            else
			            	val[vi] = FMIEEE(tmp0);
						
						break;
					}
				}

				if((( t[j] & 0x00FF0000 ) == reg_direct_f ) && (IEEE_mode == 4))	/* reg_direct_f, IEEE_mode 4*/
					val[vi] /= DEF_SCALE_LONG;
				else if((( t[j] & 0x00FF0000 ) == reg_direct_f ) && (ai==1))        /* reg_direct_f, ai 1 		*/
					val[vi] /= DEF_SCALE;
				else if(( t[j] & 0x00FF0000 ) == reg_indirect )                         
				{/* reg_indirect */
					v_var = (VAR*)t[j+1];

					if (ai==1)
						val[vi] /= v_var->scale;
					else if (IEEE_mode == 4)
						val[vi] /= v_var->scale_long;
					              
					if (!VAR_Update(v_var, val[vi], TRUE, 1))	
					{/* bounds check ONLY! */
						if (!DIO_PORT_IGNORE_DATA_EXCEPTION)
						{/* illegal data */
							MB_exception(id, mb_excp_illegal_data);
							
							return;
						}
					}
				}
				else if((t[j]&0x00FF0000) == reg_indirect_m)
				{/* reg_indirect_m */
					tmp 	= (int*)t[j+1];
					v_var 	= HART_Lookup(tmp[0], &ui, (int*)&HART_DV_Table);

					if (ai==1)
						val[vi] /= v_var->scale;
					else if (IEEE_mode == 4)
						val[vi] /= v_var->scale_long;
					              
					if (!VAR_Update(v_var, val[vi], TRUE, 1))	
					{/* bounds check ONLY! */
						if (!DIO_PORT_IGNORE_DATA_EXCEPTION)
						{/* illegal data */
							MB_exception(id, mb_excp_illegal_data);
							
							return;
						}
					}
				}
				else if((t[j]&0x00FFF0000) == reg_indirect_unit)
				{/* reg_indirect_unit */
					v_var = (VAR*)t[j+1];

					if (!VAR_Set_Unit(v_var, val[vi], TRUE))	
					{/* check if valid unit code */
						if (!DIO_PORT_IGNORE_DATA_EXCEPTION)
						{/* illegal data */
							MB_exception(id, mb_excp_illegal_data);
							
							return;
						}
					}
				}

				vi++;
				idx += ai*2;
			}

			vi = 0;
			
			for (j=i;j<(2*n+i);j=(j+2))				
			{/* write values */
				switch (t[j]&0x00FF0000)
				{
					case reg_direct_raw_int:
					{/* raw values are only for reading */
						break;
					}
     				case reg_direct_i:
					{
						v_int 	= (int*)t[j+1];
						vio 	= v_int[0];
						vfo 	= v_int[0];
						
						if (IEEE_mode == 4)
							v_int[0] = vali[vi];
						else
							v_int[0] = val[vi];
						
						break;
					}
                    case reg_direct_regvect:
					{
						v_regvect 	= (REGVECT*)t[j+1];
						vio 		= v_regvect[0].val*1000.0;
						vfo 		= v_regvect[0].val;
						
						if (IEEE_mode == 4)
							v_regvect[0].val = vali[vi];
						else
							v_regvect[0].val = val[vi];
						
						switch(id)
						{
							case 0:
							{/* perform register function */
								tmp 		= vect_exec0;
								vect_exec0  = v_regvect[0].vect;
								
								if (vect_exec0!=NULL_PTR)
								{
									PUSH_ALL;
									asm("		.global _vect_exec0	");
							    	asm("	ldi		0, AR2          ");	/* select the port */
								    asm("	ldp		_vect_exec0     ");
								    asm("	ldi		@_vect_exec0, R0");
								    asm("	callnz	R0				");	/* call if vect != NULL */
								    POP_ALL;
									
									vect_exec0 = tmp;
								}
								
								break;
							}
                            case 1:	
							{/* perform register function */
								tmp 		= vect_exec1;
								vect_exec1 	= v_regvect[0].vect;
								
								if (vect_exec1!=NULL_PTR)
								{
									PUSH_ALL;
									asm("		.global _vect_exec1	");
							    	asm("	ldi		1, AR2          ");	/* select the port */
								    asm("	ldp		_vect_exec1     ");
								    asm("	ldi		@_vect_exec1, R0");
								    asm("	callnz	R0				");	/* call if vect != NULL */
								    POP_ALL;
									
									vect_exec1 = tmp;
								}
								
								break;
							}
       						case 2:	
							{/* perform register function */
								tmp 		= vect_exec2;
								vect_exec2 	= v_regvect[0].vect;
								
								if (vect_exec2!=NULL_PTR)
								{
									PUSH_ALL;
									asm("		.global _vect_exec2	");
							    	asm("	ldi		2, AR2          ");	/* select the port */
								    asm("	ldp		_vect_exec2     ");
								    asm("	ldi		@_vect_exec2, R0");
								    asm("	callnz	R0				");	/* call if vect != NULL */
								    POP_ALL;
									
									vect_exec2 = tmp;
								}
								
								break;
							}
       						case 3:	
							{/* perform register function */
								tmp 		= vect_exec3;
								vect_exec3 	= v_regvect[0].vect;
								
								if (vect_exec3!=NULL_PTR)
								{
									PUSH_ALL;
									asm("		.global _vect_exec3	");
							    	asm("	ldi		3, AR2          ");	/* select the port */
								    asm("	ldp		_vect_exec3     ");
								    asm("	ldi		@_vect_exec3, R0");
								    asm("	callnz	R0				");	/* call if vect != NULL */
								    POP_ALL;
									
									vect_exec3 = tmp;
								}
								
								break;
							}
       						case 4:	
							{/* perform register function */
								tmp = vect_exec4;
								vect_exec4 = v_regvect[0].vect;
								
								if (vect_exec4!=NULL_PTR)
								{
									PUSH_ALL;
									asm("		.global _vect_exec4	");
							    	asm("	ldi		4, AR2          ");	/* select the port */
								    asm("	ldp		_vect_exec4     ");
								    asm("	ldi		@_vect_exec4, R0");
								    asm("	callnz	R0				");	/* call if vect != NULL */
								    POP_ALL;
									
									vect_exec4 = tmp;
								}
								
								break;
							}
       						case 5:	
							{/* perform register function */
								tmp 		= vect_exec5;
								vect_exec5 	= v_regvect[0].vect;
								
								if (vect_exec5!=NULL_PTR)
								{
									PUSH_ALL;
									asm("		.global _vect_exec5	");
							    	asm("	ldi		5, AR2          ");	/* select the port */
								    asm("	ldp		_vect_exec5     ");
								    asm("	ldi		@_vect_exec5, R0");
								    asm("	callnz	R0				");	/* call if vect != NULL */
								    POP_ALL;
									
									vect_exec5 = tmp;
								}
								
								break;
							}
                            case 6:	
							{/* perform register function */
								tmp 		= vect_exec6;
								vect_exec6 	= v_regvect[0].vect;
								
								if (vect_exec6!=NULL_PTR)
								{
									PUSH_ALL;
									asm("		.global _vect_exec6	");
							    	asm("	ldi		6, AR2          ");	/* select the port */
								    asm("	ldp		_vect_exec6     ");
								    asm("	ldi		@_vect_exec6, R0");
								    asm("	callnz	R0				");	/* call if vect != NULL */
								    POP_ALL;
									vect_exec6 = tmp;
								}
								
								break;
							}
       						case 7:	
							{/* perform register function */
								tmp 		= vect_exec7;
								vect_exec7 	= v_regvect[0].vect;
								
								if (vect_exec7!=NULL_PTR)
								{
									PUSH_ALL;
									asm("		.global _vect_exec7	");
							    	asm("	ldi		7, AR2          ");	/* select the port */
								    asm("	ldp		_vect_exec7     ");
								    asm("	ldi		@_vect_exec7, R0");
								    asm("	callnz	R0				");	/* call if vect != NULL */
								    POP_ALL;
									
									vect_exec7 = tmp;
								}
								
								break;
							}
						}

						break;
					}
     				case reg_direct_f:
					{
						v_flt 		= (float*)t[j+1];
						vio 		= v_flt[0]*1000.0;
						vfo 		= v_flt[0];
						v_flt[0] 	= val[vi];
						
						break;
					}
                    case reg_indirect:
					{
						v_var 	= (VAR*)t[j+1];
						vio 	= v_var->val * v_var->scale;
						vfo 	= v_var->val;
						
						VAR_Update(v_var, val[vi], FALSE, 1);
						
						break;
					}
                    case reg_indirect_m:
					{
						tmp 	= (int*)t[j+1];
						v_var 	= HART_Lookup(tmp[0], &ui, (int*)&HART_DV_Table);
						vio 	= v_var->val * v_var->scale;
						vfo 	= v_var->val;
						
						VAR_Update(v_var, val[vi], FALSE, 1);
						
						break;
					}
                    case reg_indirect_class:
					{
						v_var 		 = (VAR*)t[j+1];
						vio 		 = v_var->class;
						vfo 		 = v_var->class;
						v_var->class = val[vi];
						
						break;
					}
                    case reg_indirect_unit:
					{
						v_var 	= (VAR*)t[j+1];
						vio 	= v_var->unit;
						vfo 	= v_var->unit;
						
						VAR_Set_Unit(v_var, val[vi], FALSE);
						
						break;
					}
                    case reg_indirect_calc_unit:
					{
						v_var 			 = (VAR*)t[j+1];
						vio 			 = v_var->calc_unit;
						vfo 			 = v_var->calc_unit;
						v_var->calc_unit = val[vi];
						v_var->unit 	 = v_var->calc_unit;	/* force unit to calc_unit */
						
						break;
					}
                    default:	/* all unit parameters */
					{
						v_var 	= (VAR*)t[j+1];
      					vio 	= 0;
						vfo 	= 0;

						if (ai==1)
							VAR_Set_Unit_Param(v_var, (t[j]&0x00FF0000), val[vi], 1, 1);
						else if ((IEEE_mode == 4) && (ai==1))
							VAR_Set_Unit_Param(v_var, (t[j]&0x00FF0000), val[vi], 2, 1);
						else
							VAR_Set_Unit_Param(v_var, (t[j]&0x00FF0000), val[vi], 0, 1);
						
						break;
					}
				}

				if ( t[j] & CFGU )
				{
					if (SYS_LOG_ENABLED & LOG_CFG) 
						CfgLog(id, 1, PORT[id].func, t[j]&0xFFFF, val[vi], vali[vi], vfo, vio);

					CHANGE = TRUE;

					/* update change status for HART */
					HCHANGE[0] = TRUE;
					HCHANGE[1] = TRUE;
					HCHANGE_COUNTER++;
					/* update change status for HART */
				}

				vi++;
			}

			if ( SAVE_MODE && CHANGE )
			{
				if ( !Write_CFG_USER() )
				{/* memory error */
					MB_exception(id, mb_excp_memory_error);
					return;
				}
			}
		}
		else if ( c & !r )		
		{/* write coil */
			idx = PORT[id].i;	/* start of data is pointed to after processing pkt */
			
			switch(PORT[id].func)
			{
				case mb_cmd_w_coil:
				{
					tmp0  = (unsigned int) (RXbuf[id].buff[idx] & 0xFF);
					tmp0  = tmp0 << 8;
					tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);

					switch (t[i]&0x00FF0000)
					{
						case 0:
						{
							v_coil 	= (COIL*)t[i+1];
							co 		= v_coil[0].val;
							
							if (tmp0==0x0000)
							{
								v_coil[0].val = FALSE;
								cv = FALSE;
							}
							else if (tmp0==0xFF00)
							{
								v_coil[0].val = TRUE;
								cv = TRUE;
							}
							else
							{/* illegal data */
								MB_exception(id, mb_excp_illegal_data);
								return;
							}

							switch(id)
							{
								case 0:
								{/* perform coil function */
									tmp = vect_exec0;
									vect_exec0 = v_coil[0].vect;
									
									if (vect_exec0!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec0	");
								    	asm("	ldi		0, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec0     ");
									    asm("	ldi		@_vect_exec0, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec0 = tmp;
									} 
									
									/*added for .vect2 of coils - add stream select RS*/
									tmp 		= vect_exec8;
									vect_exec8 	= v_coil[0].vect2;
									
									if (vect_exec8!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec8	");
								    	asm("	ldi		0, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec8     ");
									    asm("	ldi		@_vect_exec8, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec8 = tmp;
									}
									
									break;
								}
								case 1:	
								{/* perform coil function */
									tmp 		= vect_exec1;
									vect_exec1  = v_coil[0].vect;
									
									if (vect_exec1!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec1	");
								    	asm("	ldi		1, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec1     ");
									    asm("	ldi		@_vect_exec1, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec1 = tmp;
									}   
									
									/*added for .vect2 of coils - add stream select RS*/
									tmp 		= vect_exec8;
									vect_exec8 	= v_coil[0].vect2;
									
									if (vect_exec8!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec8	");
								    	asm("	ldi		1, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec8     ");
									    asm("	ldi		@_vect_exec8, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec8 = tmp;
									}
									
									break;
								}
        						case 2:	
								{/* perform coil function */
									tmp 		= vect_exec2;
									vect_exec2 	= v_coil[0].vect;
									
									if (vect_exec2!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec2	");
								    	asm("	ldi		2, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec2     ");
									    asm("	ldi		@_vect_exec2, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec2 = tmp;
									}
									
									break;
								}
                                case 3:	
								{/* perform coil function */
									tmp 		= vect_exec3;
									vect_exec3  = v_coil[0].vect;
									
									if (vect_exec3!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec3	");
								    	asm("	ldi		3, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec3     ");
									    asm("	ldi		@_vect_exec3, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec3 = tmp;
									}
									
									break;
								}
        						case 4:	
								{/* perform coil function */
									tmp 		= vect_exec4;
									vect_exec4 	= v_coil[0].vect;
									
									if (vect_exec4!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec4	");
								    	asm("	ldi		4, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec4     ");
									    asm("	ldi		@_vect_exec4, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec4 = tmp;
									}
									
									break;
								}
        						case 5:	
								{/* perform coil function */
									tmp 		= vect_exec5;
									vect_exec5 	= v_coil[0].vect;
									
									if (vect_exec5!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec5	");
								    	asm("	ldi		5, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec5     ");
									    asm("	ldi		@_vect_exec5, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec5 = tmp;
									}
									
									break;
								}
        						case 6:	
								{/* perform coil function */
									tmp 		= vect_exec6;
									vect_exec6 	= v_coil[0].vect;
									
									if (vect_exec6!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec6	");
								    	asm("	ldi		6, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec6     ");
									    asm("	ldi		@_vect_exec6, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec6 = tmp;
									}
									
									break;
								}
        						case 7:	
								{/* perform coil function */
									tmp 		= vect_exec7;
									vect_exec7 	= v_coil[0].vect;
									
									if (vect_exec7!=NULL_PTR)
									{
										PUSH_ALL;
										asm("		.global _vect_exec7	");
								    	asm("	ldi		7, AR2          ");	/* select the port */
									    asm("	ldp		_vect_exec7     ");
									    asm("	ldi		@_vect_exec7, R0");
									    asm("	callnz	R0				");	/* call if vect != NULL */
									    POP_ALL;
										
										vect_exec7 = tmp;
									}
									
									break;
								}
							}

							break;
						}
                        default:
						{
							tmp1 = t[i]&0x00FF0000;
							tmp1 = tmp1 >> 16;
							tmp1--;
							tmp2 = 1;
							tmp2 = tmp2 << tmp1;
							tmp  = (int*)t[i+1];

							if (tmp[0]&tmp2) 
								co = TRUE;
							else 
								co = FALSE;

							if (tmp0==0xFF00)
							{
								tmp[0] |= tmp2;
								cv 		= TRUE;
							}
							else if (tmp0==0x0000)
							{
								tmp[0] &= (tmp2 ^ 0xFFFFFFFF);
								cv 		= FALSE;
							}
							else
							{/* illegal data */
								MB_exception(id, mb_excp_illegal_data);
								
								return;
							}

							break;
						}
					}

					if (t[i]&CFGU)
					{
						if (SYS_LOG_ENABLED & LOG_CFG) 
							CfgLog(id, 1, PORT[id].func, t[i]&0xFFFF, cv, cv, co, co);

						CHANGE = TRUE;

						/* update change status for HART */
						HCHANGE[0] = TRUE;
						HCHANGE[1] = TRUE;
						HCHANGE_COUNTER++;
						/* update change status for HART */
					}

					break;
				}
    			case mb_cmd_w_coils:
				{
					if (((float)(n/8))>(float)RXbuf[id].buff[PORT[id].i-1])
					{/* num coils exceeds data length */
						MB_exception(id, mb_excp_illegal_data);
						
						return;
					}

					k 	 = 0;
					tmp0 = (unsigned int) (RXbuf[id].buff[idx] & 0xFF);
					
					for (j=i;j<(2*n+i);j=(j+2))				/* write values */
					{
						if (k>=8)
						{
							k 	 = 0;	/* reset bit counter */
							idx++;		/* go to next byte in pkt */
							tmp0 = (unsigned int) (RXbuf[id].buff[idx] & 0xFF);
						}

						switch (t[j]&0x00FF0000)
						{
							case 0:
							{
								v_coil  = (COIL*)t[j+1];
								co 		= v_coil[0].val;
								
								if (tmp0 & 0x01)
								{
									v_coil[0].val 	= TRUE;
									cv 				= TRUE;
								}
								else
								{
									v_coil[0].val 	= FALSE;
									cv 				= FALSE;
								}

								switch(id)
								{
									case 0:
									{/* perform coil function */
										tmp 		= vect_exec0;
										vect_exec0 	= v_coil[0].vect;
										
										if (vect_exec0!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec0	");
									    	asm("	ldi		0, AR2          ");	/* select the port */
										    asm("	ldp		_vect_exec0     ");
										    asm("	ldi		@_vect_exec0, R0");
										    asm("	callnz	R0				");	/* call if vect != NULL */
										    POP_ALL;
											
											vect_exec0 = tmp;
										} 
										
										/*added for .vect2 of coils - add stream select RS*/
										tmp 		= vect_exec8;
										vect_exec8  = v_coil[0].vect2;
										
										if (vect_exec8!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec8	");
								    		asm("	ldi		0, AR2          ");	/* select the port */
									    	asm("	ldp		_vect_exec8     ");
									    	asm("	ldi		@_vect_exec8, R0");
									    	asm("	callnz	R0				");	/* call if vect != NULL */
									    	POP_ALL;
											
											vect_exec8 = tmp;
										}
										
										break;
									}
									case 1:	
									{/* perform coil function */
										tmp 		= vect_exec1;
										vect_exec1  = v_coil[0].vect;
										
										if (vect_exec1!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec1	");
									    	asm("	ldi		1, AR2          ");	/* select the port */
										    asm("	ldp		_vect_exec1     ");
										    asm("	ldi		@_vect_exec1, R0");
										    asm("	callnz	R0				");	/* call if vect != NULL */
										    POP_ALL;
											
											vect_exec1 = tmp;
										}
										
										/*added for .vect2 of coils - add stream select RS*/
										tmp 		= vect_exec8;
										vect_exec8  = v_coil[0].vect2;
										
										if (vect_exec8!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec8	");
								    		asm("	ldi		1, AR2          ");	/* select the port */
									    	asm("	ldp		_vect_exec8     ");
									    	asm("	ldi		@_vect_exec8, R0");
									    	asm("	callnz	R0				");	/* call if vect != NULL */
									    	POP_ALL;
											
											vect_exec8 = tmp;
										}
										
										break;
									}
									case 2:	
									{/* perform coil function */
										tmp 		= vect_exec2;
										vect_exec2 	= v_coil[0].vect;
										
										if (vect_exec2!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec2	");
									    	asm("	ldi		2, AR2          ");	/* select the port */
										    asm("	ldp		_vect_exec2     ");
										    asm("	ldi		@_vect_exec2, R0");
										    asm("	callnz	R0				");	/* call if vect != NULL */
										    POP_ALL;
											
											vect_exec2 = tmp;
										}
										
										break;
									}
									case 3:	
									{/* perform coil function */
										tmp 		= vect_exec3;
										vect_exec3 	= v_coil[0].vect;
										
										if (vect_exec3!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec3	");
									    	asm("	ldi		3, AR2          ");	/* select the port */
										    asm("	ldp		_vect_exec3     ");
										    asm("	ldi		@_vect_exec3, R0");
										    asm("	callnz	R0				");	/* call if vect != NULL */
										    POP_ALL;
											
											vect_exec3 = tmp;
										}
										
										break;
									}
									case 4:	
									{/* perform coil function */
										tmp 		= vect_exec4;
										vect_exec4 	= v_coil[0].vect;
										
										if (vect_exec4!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec4	");
									    	asm("	ldi		4, AR2          ");	/* select the port */
										    asm("	ldp		_vect_exec4     ");
										    asm("	ldi		@_vect_exec4, R0");
										    asm("	callnz	R0				");	/* call if vect != NULL */
										    POP_ALL;
											
											vect_exec4 = tmp;
										}
										
										break;
									}
									case 5:	
									{/* perform coil function */
										tmp 		= vect_exec5;
										vect_exec5 	= v_coil[0].vect;
										
										if (vect_exec5!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec5	");
									    	asm("	ldi		5, AR2          ");	/* select the port */
										    asm("	ldp		_vect_exec5     ");
										    asm("	ldi		@_vect_exec5, R0");
										    asm("	callnz	R0				");	/* call if vect != NULL */
										    POP_ALL;
											
											vect_exec5 = tmp;
										}
										
										break;
									}
									case 6:	
									{/* perform coil function */
										tmp 		= vect_exec6;
										vect_exec6 	= v_coil[0].vect;
										
										if (vect_exec6!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec6	");
									    	asm("	ldi		6, AR2          ");	/* select the port */
										    asm("	ldp		_vect_exec6     ");
										    asm("	ldi		@_vect_exec6, R0");
										    asm("	callnz	R0				");	/* call if vect != NULL */
										    POP_ALL;
											
											vect_exec6 = tmp;
										}
										
										break;
									}
									case 7:	
									{/* perform coil function */
										tmp 		= vect_exec7;
										vect_exec7 	= v_coil[0].vect;
										
										if (vect_exec7!=NULL_PTR)
										{
											PUSH_ALL;
											asm("		.global _vect_exec7	");
									    	asm("	ldi		7, AR2          ");	/* select the port */
										    asm("	ldp		_vect_exec7     ");
										    asm("	ldi		@_vect_exec7, R0");
										    asm("	callnz	R0				");	/* call if vect != NULL */
										    POP_ALL;
											
											vect_exec7 = tmp;
										}
										
										break;
									}
								}

								break;
							}
							default:
							{
								tmp1 = t[j]&0x00FF0000;
								tmp1 = tmp1 >> 16;
								tmp1--;
								tmp2 = 1;
								tmp2 = tmp2 << tmp1;
								tmp  = (int*)t[j+1];

								if (tmp[0]&tmp2) 
									co = TRUE;
								else 
									co = FALSE;

								if (tmp0 & 0x01)
								{
									tmp[0] |= tmp2;
									cv 		= TRUE;
								}
								else
								{
									tmp[0] &= (tmp2 ^ 0xFFFFFFFF);
									cv 		= FALSE;
								}

								break;
							}
						}

						if (t[j]&CFGU)
						{
							if (SYS_LOG_ENABLED & LOG_CFG) 
								CfgLog(id, 1, PORT[id].func, t[j]&0xFFFF, cv, cv, co, co);

							CHANGE = TRUE;

							/* update change status for HART */
							HCHANGE[0] = TRUE;
							HCHANGE[1] = TRUE;
							HCHANGE_COUNTER++;
							/* update change status for HART */
						}

						tmp0 = tmp0>>1;
						k++;
					}
					break;
				}
			}

			if (SAVE_MODE && CHANGE)
			{
				if (!Write_CFG_USER())
				{
					MB_exception(id, mb_excp_memory_error);
					
					return;
				}
			}
		}
		else if (c & r)		
		{/* read coil */
			k = n/8;
			
			if (n%8) 
				k++;

			for (z=0;z<(2+L_offset);z++)
				Put(&TXbuf[id], RXbuf[id].buff[z], 1);

			Put(&TXbuf[id], k, 1);

			k 	 = 0;
			tmp0 = 0x00;

			for (j=i;j<(2*n+i);j=(j+2))
			{
				if (k>=8)
				{
					Put(&TXbuf[id], tmp0, 1);
					
					k 	 = 0;	/* reset bit counter */
					tmp0 = 0x00;
				}

				tmp0 = tmp0>>1;

				switch (t[j]&0x00FF0000)
				{
					case 0:
					{
						v_coil = (COIL*)t[j+1];
						
						if (t[j] & DIS_R) 
							break;
						else if (v_coil[0].val) 
							tmp0 |= 0x80;
						
						break;
					}
					default:
					{
						tmp1 = t[j]&0x00FF0000;
						tmp1 = tmp1 >> 16;
						tmp1--;
						tmp2 = 1;
						tmp2 = tmp2 << tmp1;
						tmp  = (int*)t[j+1];
						
						if (t[j] & DIS_R) 
							break;
						else if (tmp[0] & tmp2) 
							tmp0 |= 0x80;
						
						break;
					}
				}

				k++;
			}

			if (k>0)
			{/* put in last partial byte */
				for (j=k;j<8;j++)
					tmp0 = tmp0>>1;		/* pad upper bits with 0 */
				
				Put(&TXbuf[id], tmp0, 1);
			}
		}
		else			
		{/* read reg */
			for (z=0;z<(2+L_offset);z++)
				Put(&TXbuf[id], RXbuf[id].buff[z], 1);
		
			Put(&TXbuf[id], n*2*ai, 1);

			for (j=i;j<(2*n+i);j=(j+2))				
			{/* read values */
				not_a_num = FALSE;

				switch (t[j]&0x00FF0000)
				{
					case reg_direct_raw_int:
					{
						val[0] = t[j+1];
						
						break;
					}
					case reg_direct_i:
					{
						v_int  = (int*)t[j+1];
						val[0] = v_int[0];
						
						break;
					}
					case reg_direct_regvect:
					{
						v_regvect = (REGVECT*)t[j+1];
						val[0] 	  = v_regvect[0].val;
						
						break;
					}
					case reg_direct_f:
					{
						v_flt  = (float*)t[j+1];
						val[0] = v_flt[0];
						
						break;
					}
					case reg_indirect:
					{
						v_var = (VAR*)t[j+1];

						if (ai==1)
							val[0] = round(v_var->val * v_var->scale,0);
						else if (IEEE_mode == 4)
							val[0] = round(v_var->val * v_var->scale_long,0);
						else
						{
							if (v_var->STAT & var_NaNum) 
								not_a_num = TRUE;
							else 
								not_a_num = FALSE;
							
							val[0] = v_var->val;
						}
						
						break;
					}
					case reg_indirect_m:
					{
						tmp   = (int*)t[j+1];
						v_var = HART_Lookup(tmp[0], &ui, (int*)&HART_DV_Table);

						if (ai==1)
							val[0] = round(v_var->val * v_var->scale,0);
						else if (IEEE_mode == 4)
							val[0] = round(v_var->val * v_var->scale_long,0);
						else
						{
							if (v_var->STAT & var_NaNum) 
								not_a_num = TRUE;
							else 
								not_a_num = FALSE;
							
							val[0] = v_var->val;
						}
						
						break;
					}
					case reg_indirect_class:
					{
						v_var  = (VAR*)t[j+1];
						val[0] = v_var->class;
						
						break;
					}
					case reg_indirect_unit:
					{
						v_var  = (VAR*)t[j+1];
						val[0] = v_var->unit;
						
						break;
					}
					case reg_indirect_calc_unit:
					{
						v_var  = (VAR*)t[j+1];
						val[0] = v_var->calc_unit;
						
						break;
					}
					default:	/* all unit parameters */
					{
						v_var = (VAR*)t[j+1];

						if (ai==1)
							val[0] = VAR_Get_Unit_Param(v_var, (t[j]&0x00FF0000), 1, 1);
						else if ((IEEE_mode == 4) && (ai==1))
							val[0] = VAR_Get_Unit_Param(v_var, (t[j]&0x00FF0000), 2, 1);
						else
							val[0] = VAR_Get_Unit_Param(v_var, (t[j]&0x00FF0000), 0, 1);
						
						break;
					}
				}

				if (t[j]&DIS_R)		/* if read is disabled, send back bogus result */
					not_a_num = TRUE;
			
				switch(ai)
				{
					case 1:
					{/* write INT to packet */
						if (not_a_num)
							tmp0 = NaN_val_int;
						else
						{
							if((t[j]&0x00FF0000)==reg_direct_i)
								 tmp0 = v_int[0];
							else if((t[j]&0x00FF0000)==reg_direct_regvect)
								 tmp0 = v_regvect[0].val;
							else
							{
								if((t[j]&0x00FF0000)==reg_direct_f) 
									val[0] = round(val[0] * DEF_SCALE,0);
								
								tmp0 = (int)val[0];
							}
						}

						tmp1 = tmp0 >> 8;

						Put(&TXbuf[id], tmp1, 1);
						Put(&TXbuf[id], tmp0, 1);
						
						break;
					}
					case 2:
					{/* write FLOAT to packet */
						if (IEEE_mode == 4)
						{
							if (not_a_num)
								tmp0 = NaN_val_int;
							else
							{
								if((t[j]&0x00FF0000)==reg_direct_i)
									 tmp0 = v_int[0];
								else if((t[j]&0x00FF0000)==reg_direct_regvect)
									 tmp0 = v_regvect[0].val;
								else
								{
									if((t[j]&0x00FF0000)==reg_direct_f) 
										val[0] = round(val[0] * DEF_SCALE_LONG,0);
									
									tmp0 = (int)val[0];
								}
							}
						}
						else
						{
							if (not_a_num)
								tmp0 = NaN_val_flt;
							else
								tmp0 = TOIEEE(val[0]);
						}

						tmp1 = tmp0 >> 8;
						tmp2 = tmp1 >> 8;
						tmp3 = tmp2 >> 8;

						switch (IEEE_mode)
						{
							case 4:	/*LONG INT*/
							case 0:
							{/*ABCD*/
								Put(&TXbuf[id], tmp3, 1);
								Put(&TXbuf[id], tmp2, 1);
								Put(&TXbuf[id], tmp1, 1);
								Put(&TXbuf[id], tmp0, 1);
								
								break;
							}
							case 1:
							{/*CDAB*/
								Put(&TXbuf[id], tmp1, 1);
								Put(&TXbuf[id], tmp0, 1);
								Put(&TXbuf[id], tmp3, 1);
								Put(&TXbuf[id], tmp2, 1);
								
								break;
							}
							case 2:
							{/*DCBA*/
								Put(&TXbuf[id], tmp0, 1);
								Put(&TXbuf[id], tmp1, 1);
								Put(&TXbuf[id], tmp2, 1);
								Put(&TXbuf[id], tmp3, 1);
								
								break;
							}
							case 3:
							{/*BADC*/
								Put(&TXbuf[id], tmp2, 1);
								Put(&TXbuf[id], tmp3, 1);
								Put(&TXbuf[id], tmp0, 1);
								Put(&TXbuf[id], tmp1, 1);
								
								break;
							}
						}
						break;
					}		
				}
			}
		}
	}

	if (!PORT[id].r)
	{/* prepare response */
		switch(PORT[id].func)
		{
			case mb_cmd_w_reg:
			case mb_cmd_w_coil:
			{
				for (z=0;z<(6+L_offset);z++)
					Put(&TXbuf[id], RXbuf[id].buff[z], 1);
			
				break;
			}
			case mb_cmd_w_regs:
			case mb_cmd_w_coils:
			{
				n = PORT[id].n * PORT[id].ai;
	
				for (z=0;z<(4+L_offset);z++)
					Put(&TXbuf[id], RXbuf[id].buff[z], 1);
		
				Put(&TXbuf[id], (n>>8), 1);
				Put(&TXbuf[id], n, 1);
				
				break;
			}
		}
	}
}

/****************************************************************************/
/* MB CALIBRATE																*/
/*                                                                          */
/* Description: updates a variable, puts variables in TXbuf                 */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void MB_Calibrate(int id)
{
	unsigned int mode;					/* variable 								 */
	unsigned int t;						/* value 									 */
	unsigned int tmp0,tmp1,tmp2,tmp3;	/* data										 */
	int i, z;							/* data counter; long address offset counter */
	float val[11];						/* variable values 							 */
	float v;							/* IEEE formatted value 					 */
	int L_offset;						/* long address offset 						 */

	if (PORT[id].LONG_ADDRESS) 
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	mode =  (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);

	/* DCBA */
	t  = (RXbuf[id].buff[6+L_offset] & 0xFF);
	t  = t<<8;
	t |= (RXbuf[id].buff[5+L_offset] & 0xFF);
	t  = t<<8;
	t |= (RXbuf[id].buff[4+L_offset] & 0xFF);
	t  = t<<8;
	t |= (RXbuf[id].buff[3+L_offset] & 0xFF);
	v = FMIEEE(t);

	switch (mode)
	{
		case  1: VAR_Update(&REG_STREAM_SELECT, v, 0, 0);	break;
		case  2: VAR_Update(&REG_CAL_OIL, 		v, 0, 0);	break;
		case  3: VAR_Update(&REG_CAL_WATER, 	v, 0, 0);	break;
		case  4: VAR_Update(&REG_SALINITY, 		v, 0, 0);	break;
		case  5: VAR_Update(&OIL_P0, 			v, 0, 0);	break;
		case  6: VAR_Update(&OIL_P1, 			v, 0, 0);	break;
		case  7: VAR_Update(&REG_OIL_ADJ, 		v, 0, 0);	break;
		case  8: VAR_Update(&REG_OIL_INDEX, 	v, 0, 0);	break;
		case  9: VAR_Update(&REG_WATER_ADJ, 	v, 0, 0);	break;
		case 10: VAR_Update(&REG_WATER_INDEX, 	v, 0, 0);	break;
		case 11: ANALYZER_MODE.val = v;						break;
		case 12: Density_Correction_Mode.val = v;			break;
	}

	if (mode>0)
	{
		CHANGE = TRUE;

		/* update change status for HART */
		HCHANGE[0] = TRUE;
		HCHANGE[1] = TRUE;
		HCHANGE_COUNTER++;
		/* update change status for HART */
	}

	for (z=0;z<(3+L_offset);z++)
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
    val[0]  = REG_STREAM_SELECT.calc_val;
    val[1]  = REG_SALINITY.calc_val;
    val[2]  = OIL_P0.calc_val;
    val[3]  = OIL_P1.calc_val;
    val[4]  = REG_OIL_ADJ.calc_val;
    val[5]  = REG_OIL_INDEX.calc_val;
    val[6]  = REG_WATER_ADJ.calc_val;
    val[7]  = REG_WATER_INDEX.calc_val;
    val[8]  = REG_EMULSION_PHASE.calc_val;
    val[9]  = ANALYZER_MODE.val;
    val[10] = Density_Correction_Mode.val;

	for (i=0;i<11;i++)
	{
		tmp0 = TOIEEE(val[i]);
		tmp1 = tmp0 >> 8;
		tmp2 = tmp1 >> 8;
		tmp3 = tmp2 >> 8;

		/* DCBA */
		Put(&TXbuf[id], tmp0, 1);
		Put(&TXbuf[id], tmp1, 1);
		Put(&TXbuf[id], tmp2, 1);
		Put(&TXbuf[id], tmp3, 1);
	}
}

/****************************************************************************/
/* MB POLL 0																*/
/*                                                                          */
/* Description: Calls MB_POLL(0)                                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets called as periodic event.                              */
/*                                                                          */
/****************************************************************************/
/****************************************************************************/
/* MASTER SECTION                                                           */
/****************************************************************************/
void MB_POLL_0(void)
{
	MB_POLL(0);
}

/****************************************************************************/
/* MB POLL 1																*/
/*                                                                          */
/* Description: Calls MB_POLL(1)                                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets called as periodic event                               */
/*                                                                          */
/****************************************************************************/
void MB_POLL_1(void)
{
	MB_POLL(1);
}

/****************************************************************************/
/* MB POLL 2																*/
/*                                                                          */
/* Description: Calls MB_POLL(2)                                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets called as periodic event                               */
/*                                                                          */
/****************************************************************************/
void MB_POLL_2(void)
{
	MB_POLL(2);
}

/****************************************************************************/
/* MB POLL 3																*/
/*                                                                          */
/* Description: Calls MB_POLL(3)                                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets called as periodic event                               */
/*                                                                          */
/****************************************************************************/
void MB_POLL_3(void)
{
	MB_POLL(3);
}

/****************************************************************************/
/* MB POLL 4																*/
/*                                                                          */
/* Description: Calls MB_POLL(4)                                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets called as periodic event                               */
/*                                                                          */
/****************************************************************************/
void MB_POLL_4(void)
{
	MB_POLL(4);
}

/****************************************************************************/
/* MB POLL 5																*/
/*                                                                          */
/* Description: Calls MB_POLL(5)                                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets called as periodic event                               */
/*                                                                          */
/****************************************************************************/
void MB_POLL_5(void)
{
	MB_POLL(5);
}

/****************************************************************************/
/* MB POLL 6																*/
/*                                                                          */
/* Description: Calls MB_POLL(6)                                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets called as periodic event                               */
/*                                                                          */
/****************************************************************************/
void MB_POLL_6(void)
{
	MB_POLL(6);
}

/****************************************************************************/
/* MB POLL 7																*/
/*                                                                          */
/* Description: Calls MB_POLL(7)                                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Gets called as periodic event                               */
/*                                                                          */
/****************************************************************************/
void MB_POLL_7(void)
{
	MB_POLL(7);
}

/****************************************************************************/
/* MB RETRY 0																*/
/*                                                                          */
/* Description: Calls MB_RETRY(0)                                           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY_0(void)
{
	MB_RETRY(0);
}

/****************************************************************************/
/* MB RETRY 1																*/
/*                                                                          */
/* Description: Calls MB_RETRY(1)                                           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY_1(void)
{
	MB_RETRY(1);
}

/****************************************************************************/
/* MB RETRY 2																*/
/*                                                                          */
/* Description: Calls MB_RETRY(2)                                           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY_2(void)
{
	MB_RETRY(2);
}

/****************************************************************************/
/* MB RETRY 3																*/
/*                                                                          */
/* Description: Calls MB_RETRY(3)                                           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY_3(void)
{
	MB_RETRY(3);
}

/****************************************************************************/
/* MB RETRY 4																*/
/*                                                                          */
/* Description: Calls MB_RETRY(4)                                           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY_4(void)
{
	MB_RETRY(4);
}

/****************************************************************************/
/* MB RETRY 5																*/
/*                                                                          */
/* Description: Calls MB_RETRY(5)                                           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY_5(void)
{
	MB_RETRY(5);
}

/****************************************************************************/
/* MB RETRY 6																*/
/*                                                                          */
/* Description: Calls MB_RETRY(6)                                           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY_6(void)
{
	MB_RETRY(6);
}

/****************************************************************************/
/* MB RETRY 7																*/
/*                                                                          */
/* Description: Calls MB_RETRY(7)                                           */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY_7(void)
{
	MB_RETRY(7);
}

/****************************************************************************/
/* MB POLL																	*/
/*                                                                          */
/* Description: Takes a MODBUS packet off the port master list.             */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_POLL(int id)
{
	int i;										/* p->num counter 				 */
	unsigned int tmp, tmpA, tmpB, tmpC, tmpD;	/* value; data; data; data; data */
	MPKT* p;									/* MODBUS packet 				 */

	if (!PORT[id].PRESENT) 
		return;

	if ((id<0) || (id>3)) 
		return;

	_GIEP;

	if (PORT[id].Slave != 0)
	{
		Modbus_Initialize(id);
		GIEP;
		
		return;
	}

	Timer_Insert(&PORT[id].TMR_Poll,0,TMR_action_delete);
	Timer_Insert(&PORT[id].TMR_Retry,0,TMR_action_delete);

	p = (MPKT*) List_Pop(&PORT[id].MASTER);

	if ( p == (MPKT*)0 )
	{/* invalid packet */
		Timer_Insert(&PORT[id].TMR_Poll,0,TMR_action_replace);
		GIEP;
		
		return;
	}

	Clear(&TXbuf[id]);
	
	PORT[id].Received_PKT = FALSE;

	switch (p->func & 0xFF)
	{/* modbus function */
		case mb_cmd_w_coil:
		{/* transmit packet */
			Put(&TXbuf[id],  p->slave, 		1);
			Put(&TXbuf[id],  p->func, 		1);
			Put(&TXbuf[id], (p->addr-1)>>8, 1);
			Put(&TXbuf[id], (p->addr-1), 	1);
			
			if (p->v[0]!=0.0)
			{
				Put(&TXbuf[id], 0xFF, 1);
				Put(&TXbuf[id], 0x00, 1);
			}
			else
			{
				Put(&TXbuf[id], 0x00, 1);
				Put(&TXbuf[id], 0x00, 1);
			}
			
			PORT[id].i_main = 6;
			
			break;
		}
        case mb_cmd_r_hold_reg:
		{/* transmit packet */
			Put(&TXbuf[id],  p->slave, 		1);
			Put(&TXbuf[id],  p->func, 		1);
			Put(&TXbuf[id], (p->addr-1)>>8, 1);
			Put(&TXbuf[id], (p->addr-1), 	1);
			
			if (p->func&mb_var_int)
			{
				Put(&TXbuf[id], (p->num>>8), 1);
				Put(&TXbuf[id], (p->num), 	 1);
				
				PORT[id].i_main = (p->num*2) + 3;
			}
			else
			{
				Put(&TXbuf[id], (p->num*2>>8), 	1);
				Put(&TXbuf[id], (p->num*2), 	1);
				
				PORT[id].i_main = (p->num*4) + 3;
			}
			
			break;
		}
        case mb_cmd_w_regs:
		{
			if (p->num>nmax) 
				p->num = nmax;
			
			Put(&TXbuf[id],  p->slave, 		1);
			Put(&TXbuf[id],  p->func, 		1);
			Put(&TXbuf[id], (p->addr-1)>>8, 1);
			Put(&TXbuf[id], (p->addr-1), 	1);

			if (p->func & mb_var_int)
			{
				Put(&TXbuf[id], (p->num>>8), 1);
				Put(&TXbuf[id], (p->num), 	 1);
				Put(&TXbuf[id], (p->num*2),  1);

				for (i=0;i<p->num;i++)
				{
					if (p->int_ptr!=(int*)0)
						tmp = p->int_ptr[i];
					else if (p->flt_ptr!=(float*)0)
						tmp = p->flt_ptr[i];
					else
						tmp = p->v[i];
					
					/* AB */
					tmpB = tmp;
					tmpA = tmpB>>8;
					
					Put(&TXbuf[id], tmpA, 1);
					Put(&TXbuf[id], tmpB, 1);
					/* AB */
				}
			}
			else
			{
				Put(&TXbuf[id], (p->num*2>>8), 	1);
				Put(&TXbuf[id], (p->num*2), 	1);
				Put(&TXbuf[id], (p->num*2*2), 	1);

				for (i=0;i<p->num;i++)
				{
					if (p->int_ptr!=(int*)0)
						p->v[i] = p->int_ptr[i];
					else if (p->flt_ptr!=(float*)0)
						p->v[i] = p->flt_ptr[i];
					
					tmp = TOIEEE(p->v[i]);

					/* CDAB */
					tmpD = tmp;
					tmpC = tmpD>>8;
					tmpB = tmpC>>8;
					tmpA = tmpB>>8;
					
					Put(&TXbuf[id], tmpC, 1);
					Put(&TXbuf[id], tmpD, 1);
					Put(&TXbuf[id], tmpA, 1);
					Put(&TXbuf[id], tmpB, 1);
					/* CDAB */
				}
			}

			PORT[id].i_main = 6;
			
			break;
		}
	}

	if (p->func)
	{
		Prepare_TX(id, 0);
		List_Push(&PORT[id].MASTER, (GENERIC*)p);
		Timer_Insert(&PORT[id].TMR_Retry,0,TMR_action_replace);
	}
	else
		Timer_Insert(&PORT[id].TMR_Poll,0,TMR_action_replace);
	   
    /***disconnetion detect RS***/       
	if(id==2)        
	{
		if(p->slave==2)
			PORT2_LIQ_TEMP++;
		
		if(p->slave==3)
			PORT2_GAS_TEMP++; 
		
		PORT[id].p = (int*)p; 
	}
	
	if(id==3) 
		PORT3_TEMP++;
    /***disconnection detect RS***/
	
	GIEP;
}

/****************************************************************************/
/* MB RETRY																	*/
/*                                                                          */
/* Description: Determines whether or not to retry.							*/
/*				Processes reading holding registers.                        */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RETRY(int id)
{
	float f[nmax];			/* float value vector 		*/
	unsigned int l[nmax];	/* int value vector 		*/
	unsigned int tmp;		/* value 					*/
	int n;					/* value size 				*/
	int i;					/* value counter 			*/
	int L_offset;			/* long address offset 		*/
	BOOL failed;			/* validate 				*/
	MPKT* p;				/* MODBUS packet to process */

	_GIEP;

	if (PORT[id].LONG_ADDRESS) 
		L_offset = EXTENDED_ADDR_LEN;
	else 
		L_offset = 0;

	if ( (!PORT[id].Received_PKT) || ((TXbuf[id].buff[1+L_offset] & 0xFF) != (RXbuf[id].buff[1+L_offset] & 0xFF)) )
	{/* retry? */
		PORT[id].nr++;
		PORT[id].NUM_RETRIES++;

		if (PORT[id].nr>=PORTCFG[id].N_retry)	/* exceeded retry limit, set flag and process "data" */
			failed = TRUE;
		else
		{/* retry */
			MB_POLL(id);
			GIEP;
			
			return;
		}
	}
	else
		failed = FALSE;

	/* process */
	p = (MPKT*) List_Pop(&PORT[id].MASTER);
	
	/* todo: handle mb_var_int */
	
	if ((TXbuf[id].buff[1+L_offset] & 0xFF) == mb_cmd_r_hold_reg)
	{/* read holding register */
		n = (RXbuf[id].buff[2+L_offset] & 0xFF);

		if ((((n%4)==0) && ((n/4)<=nmax) && ((n/4)>0)) || failed)
		{/* check size or failed */
			if (failed)
				n = nmax;
			else
				n /= 4;
			
			for (i=0;i<n;i++)
			{
				if (failed)
					f[i] = 0.0;
				else
				{/* get data */
					if ((p->func & mb_var_f_ABCD) || (p->func & mb_var_long))
					{/* ABCD */
						tmp  = (unsigned int) (RXbuf[id].buff[(i*4)+3+0+L_offset] & 0xFF);	/* A */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+1+L_offset] & 0xFF);	/* B */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+2+L_offset] & 0xFF);	/* C */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+3+L_offset] & 0xFF);	/* D */
					}
					else if (p->func & mb_var_f_DCBA)
					{/* DCBA */
						tmp  = (unsigned int) (RXbuf[id].buff[(i*4)+3+3+L_offset] & 0xFF);	/* D */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+2+L_offset] & 0xFF);	/* C */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+1+L_offset] & 0xFF);	/* B */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+0+L_offset] & 0xFF);	/* A */
					}
					else if (p->func & mb_var_f_BADC)
					{/* BADC */
						tmp  = (unsigned int) (RXbuf[id].buff[(i*4)+3+1+L_offset] & 0xFF);	/* B */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+0+L_offset] & 0xFF);	/* A */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+3+L_offset] & 0xFF);	/* D */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+2+L_offset] & 0xFF);	/* C */
					}
					else 
					{/* CDAB */
						tmp  =  (unsigned int) (RXbuf[id].buff[(i*4)+3+2+L_offset] & 0xFF);	/* C */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+3+L_offset] & 0xFF);	/* D */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+0+L_offset] & 0xFF);	/* A */
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+1+L_offset] & 0xFF);	/* B */
					}

					if (p->func & mb_var_long)
					{/* store value - float and int */
						f[i] = tmp;
						l[i] = tmp;
					}
					else
					{
						if (tmp==NaN) 
							f[i] = NaN_val;
						else 
							f[i] = FMIEEE(tmp);
						
						l[i] = f[i];
					}
				}
			}
		}
	}

	if (p!=(MPKT*)0)
	{/* invalid packet */
		PORT[id].p 		= (int*)p;
		PORT[id].failed = failed;
		PORT[id].f 		= f;
		PORT[id].l 		= l;
		PORT[id].data 	= 3+L_offset;

		if (p->rxvect != NULL_PTR) 
			MB_RX(id);

		if ((p->n==-1)||(p->n>1))
		{
			if (p->n>0) 
				p->n--;
			
			List_Add(&PORT[id].MASTER, (GENERIC*)p);
		}
		else
		{
			p->n = 0;
			
			List_Add(&LIST_MASTER_EMPTY, (GENERIC*)p);
		}
	}

	PORT[id].nr = 0;
	/* process */

	MB_POLL(id);
	GIEP;
}

/****************************************************************************/
/* MB INIT MASTER															*/
/*                                                                          */
/* Description: Initializes MODBUS ports as MODBUS master                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void MB_Init_Master(int id)
{
	MPKT* p;	/* MODBUS master packet 		  */
	BOOL r;		/* successful add to master list? */
	int n;		/* DAC Aout counter 			  */

	if (DEMO) 
		return;

	if (EXT_ANALOG_OUT && (id==DCM_PORT.val))
	{
		for (n=DAC_Aout6;n<=DAC_Aout9;n++)
		{
			r = FALSE;

			switch(n)
			{
				case DAC_Aout6:	
				{/* both Aout 6 & 7 */
					p = Master_Create((int*) MB_RX_DAC_Aout6_7, -1, 11, mb_cmd_w_regs|mb_var_int, 8212, 2, 0.0);
					
					if (p!=(MPKT*)0) 
						p->int_ptr = &DAC_INT[n];
					
					break;
				}
				case DAC_Aout8:	
				{/* both Aout 8 & 9 */
					p = Master_Create((int*) MB_RX_DAC_Aout8_9, -1, 12, mb_cmd_w_regs|mb_var_int, 8212, 2, 0.0);
					
					if (p!=(MPKT*)0) 
						p->int_ptr = &DAC_INT[n];
					
					break;
				}
				default:
				{
					p = (MPKT*) 0;
					
					continue;
				}
			}

			r = List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
		}
	}

	switch (ANALYZER_MODE.val)
	{
		case SUB_ANALYZER:
		case SUB_MID:
		case SUB_LOW:
		case SUB_FULL:
		{/* EEA - Density Correction Mode port is master */
			if (id==DCM_PORT.val)
			{
				/* read units */
				p = Master_Create((int*) MB_RX_CA1, 	  -1, 1, mb_cmd_r_hold_reg|mb_var_long, 	39, 4,    0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_CT1, 	  -1, 1, mb_cmd_r_hold_reg|mb_var_long, 	52, 8,    0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read units */

				/* read config vars */
				p = Master_Create((int*) MB_RX_COR0CFG,   -1, 1, mb_cmd_r_hold_reg, 			   189, 5,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read config vars */

				/* read vars */
				p = Master_Create((int*) MB_RX_2, 		  -1, 1, mb_cmd_r_hold_reg, 			   245, 9,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read vars */

				/* read corrected density */
				p = Master_Create((int*) MB_RX_3, 		  -1, 1, mb_cmd_r_hold_reg, 			   325, 1,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read corrected density */

				/* read tube freq, lpuv, rpuv, drive gain */
				p = Master_Create((int*) MB_RX_COR1COILS, -1, 1, mb_cmd_r_hold_reg, 			   285, 4,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read tube freq, lpuv, rpuv, drive gain */

				/* read diag */
				p = Master_Create((int*) MB_RX_5, 		  -1, 1, mb_cmd_r_hold_reg, 			   245, 1,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read diag */
			}

			if (ALYESKA.ENABLED && (id==1))
			{/* setup PLC port */
				Timer_Create(&TMR_ALYESKA_PLC, 1.0, -1, (int*)MB_TX_A_PLC, 0);
				Timer_Insert(&TMR_ALYESKA_PLC, 0, TMR_action_replace);
			}

			break;
		}
		case SUB_CCM:
		{/* CCM - MM ports are masters */
			if (id==2)
			{
				/* read units */
				p = Master_Create((int*) MB_RX_CA1,   		-1, 2, mb_cmd_r_hold_reg|mb_var_long,  39, 4,   0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_CT1,   		-1, 2, mb_cmd_r_hold_reg|mb_var_long,  52, 8,   0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_MCFU1, 		-1, 2, mb_cmd_r_hold_reg|mb_var_long, 132, 1,   0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);

				p = Master_Create((int*) MB_RX_CA2,   		-1, 3, mb_cmd_r_hold_reg|mb_var_long,  39, 4,   0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_CT2,   		-1, 3, mb_cmd_r_hold_reg|mb_var_long,  52, 8,   0);				
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_MCFU2, 		-1, 3, mb_cmd_r_hold_reg|mb_var_long, 132, 1,   0);				
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read units */

				/* read coriolis liquid */
				p = Master_Create((int*) MB_RX_C1, 			-1, 2, mb_cmd_r_hold_reg, 			  245, 9, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read coriolis liquid */

				/* read coriolis gas */
				p = Master_Create((int*) MB_RX_C2, 			-1, 3, mb_cmd_r_hold_reg, 			  245, 9, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read coriolis gas */
				
				/* read tube freq, lpuv, rpuv, drive gain on liquid MM, slave id change to 2, RS*/
				p = Master_Create((int*) MB_RX_COR1COILS, 	-1, 2, mb_cmd_r_hold_reg, 			  285, 4, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_COR2COILS, 	-1, 3, mb_cmd_r_hold_reg, 			  285, 4, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read tube freq, lpuv, rpuv, drive gain on liquid MM, slave id change to 2, RS*/
				
				/* read config vars */
				p = Master_Create((int*) MB_RX_COR0CFG, 	-1, 2, mb_cmd_r_hold_reg, 			  189, 5, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);

				p = Master_Create((int*) MB_RX_COR0CFGA, 	-1, 2, mb_cmd_r_hold_reg, 			  237, 1, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);  
				
				p = Master_Create((int*) MB_RX_COR0CFGB, 	-1, 2, mb_cmd_r_hold_reg|mb_var_int,  313, 1, 0.0);	/*MM initial Slave address config RS*/  /*don't forget to add for analyzers and other MMs*/
				List_Add(&PORT[id].MASTER, (GENERIC*)p);  
				
				p = Master_Create((int*) MB_RX_COR0CFGC, 	-1, 2, mb_cmd_r_hold_reg|mb_var_int,   39, 1, 0.0);	/*Config mass flow unit RS*/
				List_Add(&PORT[id].MASTER, (GENERIC*)p);   
				
				p = Master_Create((int*) MB_RX_COR0CFGD, 	-1, 2, mb_cmd_r_hold_reg, 			  149, 1, 0.0);	/*Config density cutoff RS*/
				List_Add(&PORT[id].MASTER, (GENERIC*)p);

				p = Master_Create((int*) MB_RX_COR1CFG, 	-1, 3, mb_cmd_r_hold_reg, 			  189, 5, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);

				p = Master_Create((int*) MB_RX_COR1CFGA, 	-1, 3, mb_cmd_r_hold_reg, 			  237, 1, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);  
				
				p = Master_Create((int*) MB_RX_COR1CFGB, 	-1, 3, mb_cmd_r_hold_reg|mb_var_int,  313, 1, 0.0);	/*MM initial Slave address config RS*/  /*don't forget to add for analyzers and other MMs*/
				List_Add(&PORT[id].MASTER, (GENERIC*)p);  
				
				p = Master_Create((int*) MB_RX_COR1CFGC, 	-1, 3, mb_cmd_r_hold_reg|mb_var_int,   39, 1, 0.0);	/*Config mass flow unit RS*/
				List_Add(&PORT[id].MASTER, (GENERIC*)p);   
				
				p = Master_Create((int*) MB_RX_COR1CFGD, 	-1, 3, mb_cmd_r_hold_reg, 			  149, 1, 0.0);	/*Config density cutoff RS*/
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read config vars */  
				
				/*MM initial Slave address config RS*/  
				p = Master_Create((int*) MB_RX_COR4CFGB, 	-1, 1, mb_cmd_r_hold_reg|mb_var_int,  313, 1, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);   
				/*MM initial Slave address config RS*/  
				
			}
			else if (id==3)
			{    
				/*MM initial Slave address config RS*/   /*might not need for port 3 slave 1*/	
				p = Master_Create((int*) MB_RX_COR4CFGB, 	 -1, 1, mb_cmd_r_hold_reg|mb_var_int, 313, 1, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);   
				/*MM initial Slave address config RS*/   /*might not need for port 3 slave 1*/
				
				/* read pressure units */
				p = Master_Create((int*) MB_RX_CAP1, 		 -1, 1, mb_cmd_r_hold_reg|mb_var_long, 60, 2, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read pressure units */

				/* read pressure */
				p = Master_Create((int*) MB_RX_C4, 			 -1, 1, mb_cmd_r_hold_reg, 			  401, 6, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				/* read pressure */

				if (CCM_2LIQ)
				{/* read units */
					p = Master_Create((int*) MB_RX_CA3, 	 -1, 4, mb_cmd_r_hold_reg|mb_var_long, 39, 4, 0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_CT3, 	 -1, 4, mb_cmd_r_hold_reg|mb_var_long, 52, 8, 0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_MCFU3, 	 -1, 4, mb_cmd_r_hold_reg|mb_var_long,132, 1, 0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);  
					
					/*MM initial Slave address config RS*/  /*don't forget to add for analyzers and other MMs*/
					p = Master_Create((int*) MB_RX_COR2CFGB, -1, 4, mb_cmd_r_hold_reg|mb_var_int, 313, 1, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);  
					
					/*Config mass flow unit RS*/
					p = Master_Create((int*) MB_RX_COR2CFGC, -1, 4, mb_cmd_r_hold_reg|mb_var_int,  39, 1, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2GAS)
				{/* read units */
					p = Master_Create((int*) MB_RX_CA4, 	 -1, 5, mb_cmd_r_hold_reg|mb_var_long, 39, 4,  0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_CT4, 	 -1, 5, mb_cmd_r_hold_reg|mb_var_long, 52, 8,  0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_MCFU4, 	 -1, 5, mb_cmd_r_hold_reg|mb_var_long,132, 1,  0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);   
					
					p = Master_Create((int*) MB_RX_COR3CFGB, -1, 5, mb_cmd_r_hold_reg|mb_var_int, 313, 1, 0.0); /*MM initial Slave address config RS*/  /*don't forget to add for analyzers and other MMs*/
					List_Add(&PORT[id].MASTER, (GENERIC*)p);  
					
					p = Master_Create((int*) MB_RX_COR3CFGC, -1, 5, mb_cmd_r_hold_reg|mb_var_int, 39, 1, 0.0);	/*Config mass flow unit RS*/
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2LIQ)
				{/* read coriolis liquid */
					p = Master_Create((int*) MB_RX_C3, 		 -1, 4, mb_cmd_r_hold_reg, 			 245, 9, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2GAS)
				{/* read coriolis gas */
					p = Master_Create((int*) MB_RX_C5, 		 -1, 5, mb_cmd_r_hold_reg, 			 245, 9, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2LIQ)
				{/* read config vars */
					p = Master_Create((int*) MB_RX_COR2CFG,  -1, 4, mb_cmd_r_hold_reg, 			 189, 5, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);

					p = Master_Create((int*) MB_RX_COR2CFGA, -1, 4, mb_cmd_r_hold_reg, 			 237, 1, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_COR2CFGD, -1, 4, mb_cmd_r_hold_reg, 			 149, 1, 0.0);	/*Config density cutoff RS*/
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2GAS)
				{/* read config vars */
					p = Master_Create((int*) MB_RX_COR3CFG,  -1, 5, mb_cmd_r_hold_reg, 			 189, 5, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);

					p = Master_Create((int*) MB_RX_COR3CFGA, -1, 5, mb_cmd_r_hold_reg, 			 237, 1, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_COR3CFGD, -1, 5, mb_cmd_r_hold_reg, 			 149, 1, 0.0);	/*Config density cutoff RS*/
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (DIO_TOTALIZER_CONTROL.val != TRUE)
				{/* clear counters and force config */
					DIO_TOTALIZER_CONTROL.val = FALSE;
					
					Totalizer_Control(id);
					Clear_Accumulators(id);     
					
					FC[0].enable_PULSE 		  = FALSE;
					FC[0].enable_GROSS 		  = TRUE;
					FC[0].enable_NET 		  = TRUE;
					FC[0].USE_PDI_TEMP 		  = TRUE;
					FC[0].USE_PDI_SALINITY 	  = TRUE;
					FC[0].MAN_TEMP 			  = FALSE;
					FC[0].MAN_SALINITY 		  = FALSE;
					FC[0].MAN_WATERCUT 		  = FALSE;
					FC[0].MAN_DENSITY 		  = FALSE;
					FC[0].MAN_PRESSURE 		  = FALSE;
					FC[0].MAN_FLOW 			  = FALSE;
					AO[1].v.val 			  = -2;
					AO[2].v.val 			  = -2;
					AO[1].PID_setpoint		  = CCM_SETPOINT_LEVEL[0].val;
					AO[2].PID_setpoint		  = CCM_SETPOINT_PRESSURE[0].val;
				}
			}

			break;
		}
	}
}

/****************************************************************************/
/* MB RX																	*/
/*                                                                          */
/* Description: Handles the received packet and executes vector             */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX(int id)
{
	MPKT* p;	/* modbus packet associated with the passed port */

	_GIEP;
	p = (MPKT*)PORT[id].p;

	switch(id)
	{
		case 0:
		{
			vect_pt0 = p->rxvect;
	
			PUSH_ALL;
			asm("		.global _vect_pt0  ");
		    asm("	ldp		_vect_pt0      ");
		    asm("	ldi		@_vect_pt0, R0 ");
		    asm("	ldi		0, AR2 		   ");	/* select the port */
		    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
		    POP_ALL;
			
			break;
		}
		case 1:
		{
			vect_pt1 = p->rxvect;

		    PUSH_ALL;
			asm("		.global _vect_pt1  ");
		    asm("	ldp		_vect_pt1      ");
		    asm("	ldi		@_vect_pt1, R0 ");
		    asm("	ldi		1, AR2 		   ");	/* select the port */
		    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
		    POP_ALL;

			break;
		}
		case 2:
		{
			vect_pt2 = p->rxvect;
		    
			PUSH_ALL;
			asm("		.global _vect_pt2  ");
		    asm("	ldp		_vect_pt2      ");
		    asm("	ldi		@_vect_pt2, R0 ");
		    asm("	ldi		2, AR2 		   ");	/* select the port */
		    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
		    POP_ALL;
			
			break;
		}
		case 3:
		{
			vect_pt3 = p->rxvect;
		    
			PUSH_ALL;
			asm("		.global _vect_pt3  ");
		    asm("	ldp		_vect_pt3      ");
		    asm("	ldi		@_vect_pt3, R0 ");
		    asm("	ldi		3, AR2 		   ");	/* select the port */
		    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
		    POP_ALL;
			
			break;
		}
		case 4:
		{
			vect_pt4 = p->rxvect;
		    
			PUSH_ALL;
			asm("		.global _vect_pt4  ");
		    asm("	ldp		_vect_pt4      ");
		    asm("	ldi		@_vect_pt4, R0 ");
		    asm("	ldi		4, AR2 		   ");	/* select the port */
		    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
		    POP_ALL;
			
			break;
		}
		case 5:
		{
			vect_pt5 = p->rxvect;
		    
			PUSH_ALL;
			asm("		.global _vect_pt5  ");
		    asm("	ldp		_vect_pt5      ");
		    asm("	ldi		@_vect_pt5, R0 ");
		    asm("	ldi		5, AR2 		   ");	/* select the port */
		    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
		    POP_ALL;
			
			break;
		}
		case 6:
		{
			vect_pt6 = p->rxvect;
		    
			PUSH_ALL;
			asm("		.global _vect_pt6  ");
		    asm("	ldp		_vect_pt6      ");
		    asm("	ldi		@_vect_pt6, R0 ");
		    asm("	ldi		6, AR2 		   ");	/* select the port */
		    asm("	callnz	R0		   	   ");	/* call if vect != NULL */
		    POP_ALL;
			
			break;
		}
		case 7:
		{
			vect_pt7 = p->rxvect;
			
			PUSH_ALL;
			asm("		.global _vect_pt7  ");
			asm("	ldp		_vect_pt7      ");
			asm("	ldi		@_vect_pt7, R0 ");
			asm("	ldi		7, AR2 		   ");	/* select the port */
			asm("	callnz	R0		   	   ");	/* call if vect != NULL */
			POP_ALL;
			
			break;
		}
	}

	GIEP;
}

/****************************************************************************/
/* MB RX MCFU1																*/
/*                                                                          */
/* Description: Recieves mass and time, sets unit. COR[0]                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MCF stands for something.                                   */
/*                                                                          */
/****************************************************************************/
void MB_RX_MCFU1(int id)
{
	int m,t,u;	/* mass; time; unit */

	if (PORT[id].failed) 
		return;

	m 					 = RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	t 					 = RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	u 					 = Join_MassTime_Units(m,t);
	COR[0].mcf.unit 	 = u;
	COR[0].mcf.calc_unit = u;
}

/****************************************************************************/
/* MB RX MCFU2																*/
/*                                                                          */
/* Description: Recieves mass and time, sets unit. COR[1]                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MCF stands for something.                                   */
/*                                                                          */
/****************************************************************************/
void MB_RX_MCFU2(int id)
{
	int m,t,u;	/* mass; time; unit */

	if (PORT[id].failed) 
		return;

	m					 = RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	t					 = RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	u 					 = Join_MassTime_Units(m,t);
	COR[1].mcf.unit 	 = u;
	COR[1].mcf.calc_unit = u;
}

/****************************************************************************/
/* MB RX MCFU3																*/
/*                                                                          */
/* Description: Recieves mass and time, sets unit. COR[2]                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MCF stands for something.                                   */
/*                                                                          */
/****************************************************************************/
void MB_RX_MCFU3(int id)
{
	int m,t,u;	/* mass; time; unit */

	if (PORT[id].failed) 
		return;

	m					 = RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	t					 = RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	u 					 = Join_MassTime_Units(m,t);
	COR[2].mcf.unit 	 = u;
	COR[2].mcf.calc_unit = u;
}

/****************************************************************************/
/* MB RX MCFU4																*/
/*                                                                          */
/* Description: Recieves mass and time, sets unit. COR[3]                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MCF stands for something.                                   */
/*                                                                          */
/****************************************************************************/
void MB_RX_MCFU4(int id)
{
	int m,t,u;	/* mass; time; unit */

	if (PORT[id].failed) 
		return;

	m					 = RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	t					 = RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	u 					 = Join_MassTime_Units(m,t);
	COR[3].mcf.unit 	 = u;
	COR[3].mcf.calc_unit = u;
}

/****************************************************************************/
/* MB RX COR0CFGA															*/
/*                                                                          */
/* Description: Sets mcf and mcf.vect2 COR[0]                               */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MCF stands for something.                                   */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR0CFGA(int id)
{
	int* vect; /* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 			 = COR[0].mcf.vect2;
	COR[0].mcf.vect2 = NULL_PTR;
	
	VAR_Update(&COR[0].mcf, PORT[id].f[0], 0, 0);
	
	COR[0].mcf.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR1CFGA															*/
/*                                                                          */
/* Description: Sets mcf and mcf.vect2 COR[1]                               */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MCF stands for something.                                   */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR1CFGA(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 			 = COR[1].mcf.vect2;
	COR[1].mcf.vect2 = NULL_PTR;
	
	VAR_Update(&COR[1].mcf, PORT[id].f[0], 0, 0);
	
	COR[1].mcf.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR2CFGA															*/
/*                                                                          */
/* Description: Sets mcf and mcf.vect2 COR[2]                               */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MCF stands for something.                                   */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR2CFGA(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 			 = COR[2].mcf.vect2;
	COR[2].mcf.vect2 = NULL_PTR;
	
	VAR_Update(&COR[2].mcf, PORT[id].f[0], 0, 0);
	
	COR[2].mcf.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR3CFGA															*/
/*                                                                          */
/* Description: Sets mcf and mcf.vect2 COR[3]                               */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MCF stands for something.                                   */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR3CFGA(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 			 = COR[3].mcf.vect2;
	COR[3].mcf.vect2 = NULL_PTR;
	
	VAR_Update(&COR[3].mcf, PORT[id].f[0], 0, 0);
	
	COR[3].mcf.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR0CFGB															*/
/*                                                                          */
/* Description: Sets address and address.vect2 COR[0]                       */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MM initial Slave address config RS                          */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR0CFGB(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 				 = COR[0].address.vect2;
	COR[0].address.vect2 = NULL_PTR;
	
	VAR_Update(&COR[0].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[0].address.vect2 = vect;
}  

/****************************************************************************/
/* MB RX COR1CFGB															*/
/*                                                                          */
/* Description: Sets address and address.vect2 COR[1]                       */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MM initial Slave address config RS                          */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR1CFGB(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 				 = COR[1].address.vect2;
	COR[1].address.vect2 = NULL_PTR;
	
	VAR_Update(&COR[1].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[1].address.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR2CFGB															*/
/*                                                                          */
/* Description: Sets address and address.vect2 COR[2]                       */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MM initial Slave address config RS                          */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR2CFGB(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 				 = COR[2].address.vect2;
	COR[2].address.vect2 = NULL_PTR;
	
	VAR_Update(&COR[2].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[2].address.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR3CFGB															*/
/*                                                                          */
/* Description: Sets address and address.vect2 COR[3]                       */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MM initial Slave address config RS                          */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR3CFGB(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) return;

	vect 				 = COR[3].address.vect2;
	COR[3].address.vect2 = NULL_PTR;
	
	VAR_Update(&COR[3].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[3].address.vect2 = vect;
} 

/****************************************************************************/
/* MB RX COR4CFGB															*/
/*                                                                          */
/* Description: Sets address and address.vect2 COR[4]                       */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       MM initial Slave address config RS                          */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR4CFGB(int id)
{
	int* vect; /* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 				 = COR[4].address.vect2;
	COR[4].address.vect2 = NULL_PTR;
	
	VAR_Update(&COR[4].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[4].address.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR0CFGC															*/
/*                                                                          */
/* Description: Sets mass_unit and mass_unit.vect2 COR[0]                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Config mass flow unit RS                                    */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR0CFGC(int id)
{
	int* vect; /* temporary vector */

	if (PORT[id].failed) return;

	vect 				   = COR[0].mass_unit.vect2;
	COR[0].mass_unit.vect2 = NULL_PTR;
	
	VAR_Update(&COR[0].mass_unit, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[0].mass_unit.vect2 = vect;
}  

/****************************************************************************/
/* MB RX COR1CFGC															*/
/*                                                                          */
/* Description: Sets mass_unit and mass_unit.vect2 COR[1]                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Config mass flow unit RS                                    */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR1CFGC(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 				   = COR[1].mass_unit.vect2;
	COR[1].mass_unit.vect2 = NULL_PTR;
	
	VAR_Update(&COR[1].mass_unit, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[1].mass_unit.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR2CFGC															*/
/*                                                                          */
/* Description: Sets mass_unit and mass_unit.vect2 COR[2]                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Config mass flow unit RS                                    */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR2CFGC(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 				   = COR[2].mass_unit.vect2;
	COR[2].mass_unit.vect2 = NULL_PTR;
	
	VAR_Update(&COR[2].mass_unit, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[2].mass_unit.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR3CFGC															*/
/*                                                                          */
/* Description: Sets mass_unit and mass_unit.vect2 COR[3]                   */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Config mass flow unit RS                                    */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR3CFGC(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 				   = COR[3].mass_unit.vect2;
	COR[3].mass_unit.vect2 = NULL_PTR;
	
	VAR_Update(&COR[3].mass_unit, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[3].mass_unit.vect2 = vect;
}
 
/****************************************************************************/
/* MB RX COR0CFGD															*/
/*                                                                          */
/* Description: Sets density_cutoff				COR[0]						*/
/*					 density_cutoff.vect2									*/
/*					 density_cutoff.calc_unit								*/
/*					 density_cutoff.unit                                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Config density cutoff RS                                    */
/*                                                                          */
/****************************************************************************/ 
void MB_RX_COR0CFGD(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 							= COR[0].density_cutoff.vect2;
	COR[0].density_cutoff.vect2 	= NULL_PTR;
	COR[0].density_cutoff.calc_unit = COR[0].u_density;
	COR[0].density_cutoff.unit 		= COR[0].u_density;
	
	VAR_Update(&COR[0].density_cutoff, PORT[id].f[0], 0, 0);
	
	COR[0].density_cutoff.vect2 	= vect;
}  

/****************************************************************************/
/* MB RX COR1CFGD															*/
/*                                                                          */
/* Description: Sets density_cutoff				COR[1]						*/
/*					 density_cutoff.vect2									*/
/*					 density_cutoff.calc_unit								*/
/*					 density_cutoff.unit                                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Config density cutoff RS                                    */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR1CFGD(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 							= COR[1].density_cutoff.vect2;
	COR[1].density_cutoff.vect2 	= NULL_PTR;
	COR[1].density_cutoff.calc_unit = COR[1].u_density;
	COR[1].density_cutoff.unit 		= COR[1].u_density;
	
	VAR_Update(&COR[1].density_cutoff, PORT[id].f[0], 0, 0);
	
	COR[1].density_cutoff.vect2 	= vect;
}

/****************************************************************************/
/* MB RX COR2CFGD															*/
/*                                                                          */
/* Description: Sets density_cutoff				COR[2]						*/
/*					 density_cutoff.vect2									*/
/*					 density_cutoff.calc_unit								*/
/*					 density_cutoff.unit                                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Config density cutoff RS                                    */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR2CFGD(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 							= COR[2].density_cutoff.vect2;
	COR[2].density_cutoff.vect2 	= NULL_PTR;
	COR[2].density_cutoff.calc_unit = COR[2].u_density;
	COR[2].density_cutoff.unit 		= COR[2].u_density;
	
	VAR_Update(&COR[2].density_cutoff, PORT[id].f[0], 0, 0);
	
	COR[2].density_cutoff.vect2 	= vect;
}

/****************************************************************************/
/* MB RX COR3CFGD															*/
/*                                                                          */
/* Description: Sets density_cutoff				COR[3]						*/
/*					 density_cutoff.vect2									*/
/*					 density_cutoff.calc_unit								*/
/*					 density_cutoff.unit                                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Config density cutoff RS                                    */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR3CFGD(int id)
{
	int* vect;	/* temporary vector */

	if (PORT[id].failed) 
		return;

	vect 							= COR[3].density_cutoff.vect2;
	COR[3].density_cutoff.vect2 	= NULL_PTR;
	COR[3].density_cutoff.calc_unit = COR[3].u_density;
	COR[3].density_cutoff.unit 		= COR[3].u_density;
	
	VAR_Update(&COR[3].density_cutoff, PORT[id].f[0], 0, 0);
	
	COR[3].density_cutoff.vect2 	= vect;
}

/****************************************************************************/
/* MB RX COR0CFG															*/
/*                                                                          */
/* Description: Sets damp_flow_rate, 	damp_flow_rate.vect2	COR[0]		*/
/*					 damp_density,		damp_density.vect2					*/
/*					 mfr_cutoff,		mfr_cutoff.vect2					*/
/*					 vfr_cutoff,		vfr_cutoff.vect2                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/	
void MB_RX_COR0CFG(int id)
{
	int* vect;	/* temp vector */

	if (PORT[id].failed) 
		return;

	vect 						= COR[0].damp_flow_rate.vect2;
	COR[0].damp_flow_rate.vect2 = NULL_PTR;
	
	VAR_Update(&COR[0].damp_flow_rate,	PORT[id].f[0], 0, 0);
	
	COR[0].damp_flow_rate.vect2 = vect;
	vect 						= COR[0].damp_density.vect2;
	COR[0].damp_density.vect2 	= NULL_PTR;
	
	VAR_Update(&COR[0].damp_density, 	PORT[id].f[2], 0, 0);
	
	COR[0].damp_density.vect2 	= vect;
	vect 						= COR[0].mfr_cutoff.vect2;
	COR[0].mfr_cutoff.vect2 	= NULL_PTR;
	COR[0].mfr_cutoff.calc_unit = COR[0].u_mfr;
	COR[0].mfr_cutoff.unit 		= COR[0].u_mfr;
	
	VAR_Update(&COR[0].mfr_cutoff, 		PORT[id].f[3], 0, 0);
	
	COR[0].mfr_cutoff.vect2 	= vect;
	vect 						= COR[0].vfr_cutoff.vect2;
	COR[0].vfr_cutoff.vect2 	= NULL_PTR;
	COR[0].vfr_cutoff.calc_unit = COR[0].u_vfr;
	COR[0].vfr_cutoff.unit 		= COR[0].u_vfr;
	
	VAR_Update(&COR[0].vfr_cutoff, 		PORT[id].f[4], 0, 0);
	
	COR[0].vfr_cutoff.vect2 	= vect;  
}

/****************************************************************************/
/* MB RX COR1CFG															*/
/*                                                                          */
/* Description: Sets damp_flow_rate, 	damp_flow_rate.vect2	COR[1]		*/
/*					 damp_density,		damp_density.vect2					*/
/*					 mfr_cutoff,		mfr_cutoff.vect2					*/
/*					 vfr_cutoff,		vfr_cutoff.vect2                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR1CFG(int id)
{
	int* vect;	/* temp vector */

	if (PORT[id].failed) 
		return;

	vect 						= COR[1].damp_flow_rate.vect2;
	COR[1].damp_flow_rate.vect2 = NULL_PTR;
	
	VAR_Update(&COR[1].damp_flow_rate, PORT[id].f[0], 0, 0);
	
	COR[1].damp_flow_rate.vect2 = vect;
	vect 						= COR[1].damp_density.vect2;
	COR[1].damp_density.vect2 	= NULL_PTR;
	
	VAR_Update(&COR[1].damp_density, PORT[id].f[2], 0, 0);
	
	COR[1].damp_density.vect2 	= vect;
	vect 						= COR[1].mfr_cutoff.vect2;
	COR[1].mfr_cutoff.vect2 	= NULL_PTR;
	COR[1].mfr_cutoff.calc_unit = COR[1].u_mfr;
	COR[1].mfr_cutoff.unit 		= COR[1].u_mfr;
	
	VAR_Update(&COR[1].mfr_cutoff, PORT[id].f[3], 0, 0);
	
	COR[1].mfr_cutoff.vect2 	= vect;
	vect 						= COR[1].vfr_cutoff.vect2;
	COR[1].vfr_cutoff.vect2 	= NULL_PTR;
	COR[1].vfr_cutoff.calc_unit = COR[1].u_vfr;
	COR[1].vfr_cutoff.unit 		= COR[1].u_vfr;
	
	VAR_Update(&COR[1].vfr_cutoff, PORT[id].f[4], 0, 0);
	
	COR[1].vfr_cutoff.vect2 	= vect;
}

/****************************************************************************/
/* MB RX COR2CFG															*/
/*                                                                          */
/* Description: Sets damp_flow_rate, 	damp_flow_rate.vect2	COR[2]		*/
/*					 damp_density,		damp_density.vect2					*/
/*					 mfr_cutoff,		mfr_cutoff.vect2					*/
/*					 vfr_cutoff,		vfr_cutoff.vect2                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR2CFG(int id)
{
	int* vect;	/* temp vector */

	if (PORT[id].failed) 
		return;

	vect 						= COR[2].damp_flow_rate.vect2;
	COR[2].damp_flow_rate.vect2 = NULL_PTR;
	
	VAR_Update(&COR[2].damp_flow_rate, PORT[id].f[0], 0, 0);
	
	COR[2].damp_flow_rate.vect2 = vect;
	vect 						= COR[2].damp_density.vect2;
	COR[2].damp_density.vect2 	= NULL_PTR;
	
	VAR_Update(&COR[2].damp_density, PORT[id].f[2], 0, 0);
	
	COR[2].damp_density.vect2 	= vect;
	vect 						= COR[2].mfr_cutoff.vect2;
	COR[2].mfr_cutoff.vect2 	= NULL_PTR;
	COR[2].mfr_cutoff.calc_unit = COR[2].u_mfr;
	COR[2].mfr_cutoff.unit 		= COR[2].u_mfr;
	
	VAR_Update(&COR[2].mfr_cutoff, PORT[id].f[3], 0, 0);
	
	COR[2].mfr_cutoff.vect2 	= vect;
	vect 						= COR[2].vfr_cutoff.vect2;
	COR[2].vfr_cutoff.vect2 	= NULL_PTR;
	COR[2].vfr_cutoff.calc_unit = COR[2].u_vfr;
	COR[2].vfr_cutoff.unit 		= COR[2].u_vfr;
	
	VAR_Update(&COR[2].vfr_cutoff, PORT[id].f[4], 0, 0);
	
	COR[2].vfr_cutoff.vect2 = vect;
}

/****************************************************************************/
/* MB RX COR3CFG															*/
/*                                                                          */
/* Description: Sets damp_flow_rate, 	damp_flow_rate.vect2	COR[3]		*/
/*					 damp_density,		damp_density.vect2					*/
/*					 mfr_cutoff,		mfr_cutoff.vect2					*/
/*					 vfr_cutoff,		vfr_cutoff.vect2                    */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR3CFG(int id)
{
	int* vect;	/* temp vector */

	if (PORT[id].failed) 
		return;

	vect 						= COR[3].damp_flow_rate.vect2;
	COR[3].damp_flow_rate.vect2 = NULL_PTR;
	
	VAR_Update(&COR[3].damp_flow_rate, PORT[id].f[0], 0, 0);
	
	COR[3].damp_flow_rate.vect2 = vect;
	vect 						= COR[3].damp_density.vect2;
	COR[3].damp_density.vect2 	= NULL_PTR;
	
	VAR_Update(&COR[3].damp_density, PORT[id].f[2], 0, 0);
	
	COR[3].damp_density.vect2 	= vect;
	vect 						= COR[3].mfr_cutoff.vect2;
	COR[3].mfr_cutoff.vect2 	= NULL_PTR;
	COR[3].mfr_cutoff.calc_unit = COR[3].u_mfr;
	COR[3].mfr_cutoff.unit 		= COR[3].u_mfr;
	
	VAR_Update(&COR[3].mfr_cutoff, PORT[id].f[3], 0, 0);
	
	COR[3].mfr_cutoff.vect2 	= vect;
	vect 						= COR[3].vfr_cutoff.vect2;
	COR[3].vfr_cutoff.vect2 	= NULL_PTR;
	COR[3].vfr_cutoff.calc_unit = COR[3].u_vfr;
	COR[3].vfr_cutoff.unit 		= COR[3].u_vfr;
	
	VAR_Update(&COR[3].vfr_cutoff, PORT[id].f[4], 0, 0);
	
	COR[3].vfr_cutoff.vect2 	= vect;
}

/****************************************************************************/
/* MB RX 2																	*/
/*                                                                          */
/* Description: COR.Z.val			COR[0]									*/
/*				COR.mfr														*/
/*				COR.density													*/
/*				COR.T														*/
/*				COR.vfr														*/
/*				COR.visc													*/
/*				COR.P														*/
/*				COR.mass_total												*/
/*				COR.volume_total											*/
/*				FC.T														*/
/*				FC.FLOW_TOTAL                                               */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_2(int id)
{
	unsigned int tmp;

	if (PORT[id].failed)
	{/* failed */
		COR[0].diag 	= -1.0;
		COR[0].Z.val 	= FALSE;
		DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}
	else
	{
		COR[0].diag = PORT[id].f[0];
		tmp 		= PORT[id].f[0];
		
		if (tmp & COR_ZERO_IN_PROGRESS)
			COR[0].Z.val = TRUE;
		else
			COR[0].Z.val = FALSE;
		
		if (tmp & COR_ERROR)
			DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}

	COR[0].mfr			= PORT[id].f[1];
	COR[0].density		= PORT[id].f[2];
	COR[0].T			= PORT[id].f[3];
	COR[0].vfr			= PORT[id].f[4];
	COR[0].visc			= PORT[id].f[5];
	COR[0].P			= PORT[id].f[6];
	COR[0].mass_total	= PORT[id].f[7];
	COR[0].volume_total	= PORT[id].f[8];

	/* update temperatures */
	if (Density_Correction_Mode.val==3)
	{
		PORT[id].f[0] = Convert(FC[0].T.class, COR[0].u_T, FC[0].T.calc_unit, COR[0].T, 0, FC[0].T.aux);
		
		VAR_Update(&FC[0].T, PORT[id].f[0], 0, 0);
	}
	/* update temperatures */

	/* update flow total */
	if (FC[0].flow_class.val == c_volumetric_flow)
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].vfr, 0, FC[0].FLOW_TOTAL.aux);
	else if (FC[0].flow_class.val == c_mass_flow)
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].mfr, 0, FC[0].FLOW_TOTAL.aux);
	else
		PORT[id].f[0] = 0.0;
	
	VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0], 0, 0);
	/* update flow total */
}

/****************************************************************************/
/* MB RX 3																	*/
/*                                                                          */
/* Description: COR.density_corrected		COR[0]							*/
/*				COR.u_density_corrected                                     */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_3(int id)
{
	if (PORT[id].failed) 
		return;

	PORT[id].f[0] 			 = Convert(c_mass_per_volume, COR[0].u_density, u_mpv_deg_API, PORT[id].f[0], 0, FC[0].density.aux);
	COR[0].density_corrected = PORT[id].f[0];

	if ((COR[0].u_T==u_temp_C) || (COR[0].u_T==u_temp_K))
		COR[0].u_density_corrected = u_mpv_deg_API_15C;
	else
		COR[0].u_density_corrected = u_mpv_deg_API_60F;
}

/****************************************************************************/
/* MB RX COR1COILS															*/
/*                                                                          */
/* Description:	raw_tube_freq				COR[0]							*/
/*				left_pickup_value											*/
/*				right_pickup_value											*/
/*				drive_gain													*/
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Raw values of the MM.                                       */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR1COILS(int id)
{
	if (PORT[id].failed) 
		return;

	COR[0].raw_tube_freq		= PORT[id].f[0];
	COR[0].left_pickup_value	= PORT[id].f[1];
	COR[0].right_pickup_value	= PORT[id].f[2];
	COR[0].drive_gain			= PORT[id].f[3];
}

/****************************************************************************/
/* MB RX COR2COILS															*/
/*                                                                          */
/* Description:	raw_tube_freq				COR[1]							*/
/*				left_pickup_value											*/
/*				right_pickup_value											*/
/*				drive_gain													*/
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Raw values of the MM.                                       */
/*                                                                          */
/****************************************************************************/
void MB_RX_COR2COILS(int id)
{
	if (PORT[id].failed) 
		return;

	COR[1].raw_tube_freq		= PORT[id].f[0];
	COR[1].left_pickup_value	= PORT[id].f[1];
	COR[1].right_pickup_value	= PORT[id].f[2];
	COR[1].drive_gain			= PORT[id].f[3];
}

/****************************************************************************/
/* MB RX 5																	*/
/*                                                                          */
/* Description: COR.Z.val													*/
/*				FC.density													*/
/*				COR.density_PDI_corrected									*/
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       decide whether or not to use density correction             */
/*                                                                          */
/****************************************************************************/
void MB_RX_5(int id)
{
	unsigned int tmp;	/* temp variable */

	if (PORT[id].failed)
	{
		COR[0].diag 	= -1.0;
		COR[0].Z.val 	= FALSE;
		DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}
	else
	{
		COR[0].diag = PORT[id].f[0];
		tmp 		= PORT[id].f[0];
		
		if (tmp & COR_ZERO_IN_PROGRESS)
			COR[0].Z.val = TRUE;
		else
			COR[0].Z.val = FALSE;
		
		if (tmp & COR_ERROR)
			DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}

    /* update densities */
	if ((Density_Correction_Mode.val==3)||(Density_Correction_Mode.val==4)||(Density_Correction_Mode.val==5))
	{/* use coriolis density compensation */
		PORT[id].f[0] = Convert(FC[0].density.class, COR[0].u_density_corrected, FC[0].density.calc_unit, COR[0].density_corrected, 0, FC[0].density.aux);
		
		VAR_Update(&FC[0].density, PORT[id].f[0], 0, 0);
	}
	else
	{/* use FC density */
		PORT[id].f[0] 				 = Convert(FC[0].density.class, COR[0].u_density, u_mpv_kg_cm, COR[0].density, 0, FC[0].density.aux);
		PORT[id].f[1] 				 = (DensityCFD_D1*PORT[id].f[0]) + (DensityCFT_D1*FC[0].T.calc_val) + DensityCF_D0;
		COR[0].density_PDI_corrected = Convert(FC[0].density.class, u_mpv_kg_cm, COR[0].u_density, PORT[id].f[1], 0, FC[0].density.aux);
		PORT[id].f[0] 				 = Convert(FC[0].density.class, u_mpv_kg_cm, FC[0].density.calc_unit, PORT[id].f[1], 0, FC[0].density.aux);
		
		VAR_Update(&FC[0].density, PORT[id].f[0], 0, 0);
	}
	/* update densities */
}

/****************************************************************************/
/* XLATE COR SPECIAL UNITS													*/
/*                                                                          */
/* Description: Checks if unit is u_generic_special selects unit accordingly*/
/*                                                                          */
/* Arguments:   INT id - PORT ID											*/
/*				INT j  - COR ID                                             */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void Xlate_COR_Special_Units(int id, int j)
{
	char s[40];	/* unit name	   	 */
	int i;		/* character counter */

/* note: in the future, this may be a lookup table */

	if (!PORT[id].failed)
	{/* port has not failed */
		for (i=0;i<32;i++)
		{
			s[i] = RXbuf[id].buff[PORT[id].data + i] & 0xFF;
			
			if ((s[i]>='a') && (s[i]<='z')) 
				s[i]-=('a'-'A');	/* upcase */
		}
		
		s[i] = 0;

		if (COR[j].u_mfr == u_generic_special){}

		if (COR[j].u_m   == u_generic_special){}

		if (COR[j].u_vfr == u_generic_special)
		{
			if (strncmp("MSCF/D",&s[16],6)==0) 
				COR[j].u_vfr = u_vfr_mscf_day;
			else if (strncmp("SCF/D",&s[16],5)==0) 
				COR[j].u_vfr = u_vfr_scf_day;
			else if (strncmp("SCF/S",&s[16],5)==0) 
				COR[j].u_vfr = u_vfr_scf_sec;
		}

		if (COR[j].u_v   == u_generic_special)
		{
			if (strncmp("MSCF",&s[24],4)==0) 
				COR[j].u_v = u_v_mscf;
			else if (strncmp("SCF",&s[24],3)==0) 
				COR[j].u_v = u_v_scf;
		}
	}
}

/****************************************************************************/
/* MB RX CT1																*/
/*                                                                          */
/* Description: Translate Coriolis Special Units COR[0]                     */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CT1(int id)
{
	Xlate_COR_Special_Units(id,0);
}

/****************************************************************************/
/* MB RX CT2																*/
/*                                                                          */
/* Description: Translate Coriolis Special Units COR[1]                     */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CT2(int id)
{
	Xlate_COR_Special_Units(id,1);
}

/****************************************************************************/
/* MB RX CT3																*/
/*                                                                          */
/* Description: Translate Coriolis Special Units COR[2]                     */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CT3(int id)
{
	Xlate_COR_Special_Units(id,2);
}

/****************************************************************************/
/* MB RX CT4																*/
/*                                                                          */
/* Description: Translate Coriolis Special Units COR[3]                     */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CT4(int id)
{
	Xlate_COR_Special_Units(id,3);
}

/****************************************************************************/
/* MB RX CA1																*/
/*                                                                          */
/* Description: Set units for COR[0]                                        */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CA1(int id)
{
	if (PORT[id].failed) 
		return;

	COR[0].u_mfr		= RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	COR[0].u_density	= RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	COR[0].u_T			= RXbuf[id].buff[PORT[id].data+ 5] & 0xFF;
	COR[0].u_vfr		= RXbuf[id].buff[PORT[id].data+ 7] & 0xFF;
	COR[0].u_visc		= RXbuf[id].buff[PORT[id].data+ 9] & 0xFF;
	COR[0].u_P			= RXbuf[id].buff[PORT[id].data+11] & 0xFF;
	COR[0].u_m			= RXbuf[id].buff[PORT[id].data+13] & 0xFF;
	COR[0].u_v			= RXbuf[id].buff[PORT[id].data+15] & 0xFF;
}

/****************************************************************************/
/* MB RX CA2																*/
/*                                                                          */
/* Description: Set units for COR[1]                                        */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CA2(int id)
{
	if (PORT[id].failed) 
		return;

	COR[1].u_mfr		= RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	COR[1].u_density	= RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	COR[1].u_T			= RXbuf[id].buff[PORT[id].data+ 5] & 0xFF;
	COR[1].u_vfr		= RXbuf[id].buff[PORT[id].data+ 7] & 0xFF;
	COR[1].u_visc		= RXbuf[id].buff[PORT[id].data+ 9] & 0xFF;
	COR[1].u_P			= RXbuf[id].buff[PORT[id].data+11] & 0xFF;
	COR[1].u_m			= RXbuf[id].buff[PORT[id].data+13] & 0xFF;
	COR[1].u_v			= RXbuf[id].buff[PORT[id].data+15] & 0xFF;
}

/****************************************************************************/
/* MB RX CA3																*/
/*                                                                          */
/* Description: Set units for COR[2]                                        */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CA3(int id)
{
	if (PORT[id].failed) return;

	COR[2].u_mfr		= RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	COR[2].u_density	= RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	COR[2].u_T			= RXbuf[id].buff[PORT[id].data+ 5] & 0xFF;
	COR[2].u_vfr		= RXbuf[id].buff[PORT[id].data+ 7] & 0xFF;
	COR[2].u_visc		= RXbuf[id].buff[PORT[id].data+ 9] & 0xFF;
	COR[2].u_P			= RXbuf[id].buff[PORT[id].data+11] & 0xFF;
	COR[2].u_m			= RXbuf[id].buff[PORT[id].data+13] & 0xFF;
	COR[2].u_v			= RXbuf[id].buff[PORT[id].data+15] & 0xFF;
}

/****************************************************************************/
/* MB RX CA4																*/
/*                                                                          */
/* Description: Set units for COR[3]                                        */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CA4(int id)
{
	if (PORT[id].failed) return;

	COR[3].u_mfr		= RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	COR[3].u_density	= RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	COR[3].u_T			= RXbuf[id].buff[PORT[id].data+ 5] & 0xFF;
	COR[3].u_vfr		= RXbuf[id].buff[PORT[id].data+ 7] & 0xFF;
	COR[3].u_visc		= RXbuf[id].buff[PORT[id].data+ 9] & 0xFF;
	COR[3].u_P			= RXbuf[id].buff[PORT[id].data+11] & 0xFF;
	COR[3].u_m			= RXbuf[id].buff[PORT[id].data+13] & 0xFF;
	COR[3].u_v			= RXbuf[id].buff[PORT[id].data+15] & 0xFF;
}

/****************************************************************************/
/* MB RX CAP1																*/
/*                                                                          */
/* Description: Updates PRESS vector units.                                 */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_CAP1(int id)
{
	if (PORT[id].failed && AO[1].PID_enable_failsafe)
		AO[1].PID_fail = TRUE;

	if (PORT[id].failed && AO[2].PID_enable_failsafe)
		AO[2].PID_fail = TRUE;

	if (PORT[id].failed) 
		return;

	PRESS[0].u_DP = Xlate_3095_P_units(RXbuf[id].buff[PORT[id].data+ 1] & 0xFF);
	PRESS[0].u_SP = Xlate_3095_P_units(RXbuf[id].buff[PORT[id].data+ 3] & 0xFF);
	PRESS[0].u_PT = Xlate_3095_T_units(RXbuf[id].buff[PORT[id].data+ 5] & 0xFF);
}

/****************************************************************************/
/* XLATE 3095 P UNITS														*/
/*                                                                          */
/* Description: Translates Pressure units                                   */
/*                                                                          */
/* Arguments:   INT u - unit                                                */
/*                                                                          */
/* Returns:     INT unit                                                    */
/*                                                                          */
/* Notes:       read function for list of units.                            */
/*                                                                          */
/****************************************************************************/
int Xlate_3095_P_units(int u)
{
	switch (u)
	{
		case  1: return u_p_in_H2O_60F;
		case  2: return u_p_Pa;
		case  3: return u_p_kPa;
		case  4: return u_p_MPa;
		case  5: return u_p_psi;
		case  6: return u_p_in_H2O_68F;
		default: return u_p_in_H2O_60F;
	}
}

/****************************************************************************/
/* XLATE 3095 T UNITS														*/
/*                                                                          */
/* Description: Translates Temp units                                       */
/*                                                                          */
/* Arguments:   INT u - unit                                                */
/*                                                                          */
/* Returns:     INT unit                                                    */
/*                                                                          */
/* Notes:       Read function for list of units.                            */
/*                                                                          */
/****************************************************************************/
int Xlate_3095_T_units(int u)
{
	switch (u)
	{
		case 20: return u_temp_C;
		case 21: return u_temp_F;
		default: return u_temp_F;
	}
}

/****************************************************************************/
/* MB RX C1																	*/
/*                                                                          */
/* Description: Updates Flow Computer FLOW_TOTAL, density, oil & water flow */
/*				COR[0]														*/
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_C1(int id)
{
	unsigned int tmp;	/* zero status and error status */
	float po,pw;		/* oil percent; water percent   */

	if (PORT[id].failed)
	{/* failed */
		COR[0].diag 	= -1.0;
		COR[0].Z.val 	= FALSE;
		DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}
	else
	{/* Check ZERO_IN_PROGRESS and ERROR */
		COR[0].diag = PORT[id].f[0];
		tmp 		= PORT[id].f[0];
		
		if (tmp & COR_ZERO_IN_PROGRESS)
			COR[0].Z.val = TRUE;
		else
			COR[0].Z.val = FALSE;
		
		if (tmp & COR_ERROR)
			DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}

	COR[0].mfr			= PORT[id].f[1];
	COR[0].density		= PORT[id].f[2];
	COR[0].T			= PORT[id].f[3];
	COR[0].vfr			= PORT[id].f[4];
	COR[0].visc			= PORT[id].f[5];
	COR[0].P			= PORT[id].f[6];
	COR[0].mass_total	= PORT[id].f[7];
	COR[0].volume_total	= PORT[id].f[8];

	/* Update FLOW_TOTAL */
	if (FC[0].FLOW_TOTAL.class == c_volumetric_flow)
	{
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].vfr, 0, FC[0].FLOW_TOTAL.aux);
		
		if (CCM_2LIQ) 
			PORT[id].f[2] = Convert(FC[0].FLOW_TOTAL.class, COR[2].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[2].vfr, 0, FC[0].FLOW_TOTAL.aux);
		else 
			PORT[id].f[2] = 0.0; 
		
		if(FC[0].enable_PULSE == FALSE)	/*disable 0 for CCM mode terbine meter*/   
			VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0]+PORT[id].f[2], 0, 0);   
	}
	else if (FC[0].FLOW_TOTAL.class == c_mass_flow)
	{
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].mfr, 0, FC[0].FLOW_TOTAL.aux);
		
		if (CCM_2LIQ) 
			PORT[id].f[2] = Convert(FC[0].FLOW_TOTAL.class, COR[2].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[2].mfr, 0, FC[0].FLOW_TOTAL.aux);
		else 
			PORT[id].f[2] = 0.0;   
		
		if(FC[0].enable_PULSE == FALSE) /*disable 0 for CCM mode terbine meter*/ 
			VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0]+PORT[id].f[2], 0, 0);
	}
	else
		VAR_Update(&FC[0].FLOW_TOTAL, 0.0, 0, 0);
	/* Update FLOW_TOTAL */
	
	PORT[id].f[0] = Convert(FC[0].density.class, COR[0].u_density, FC[0].density.calc_unit, COR[0].density, 0, FC[0].density.aux);

	if (CCM_2LIQ)
	{
		PORT[id].f[1] = Convert(FC[0].density.class, COR[2].u_density, FC[0].density.calc_unit, COR[2].density, 0, FC[0].density.aux);
		PORT[id].f[0] = (PORT[id].f[0]+PORT[id].f[1])/2.0;
	}
	
	VAR_Update(&FC[0].density, PORT[id].f[0], 0, 0);

	FC[0].enable_GROSS = TRUE;
	FC[0].enable_NET = TRUE;

	if (DIO_TOTALIZER_CONTROL.val)	/* accumulate with flow as input */
		FC[0].enable_FLOW = TRUE;
	else							/* pass through flow rates */
	{
		FC[0].enable_FLOW = FALSE;	/*enable flow computer for CCM mode terbine meter*/

		if (FC[0].FLOW_TOTAL.class == c_mass_flow)
		{
			pw = FC[0].net_watercut_mass / 100.0;
			
			if (pw>1.0) 
				pw = 1.0;
			else if (pw<0.0) 
				pw = 0.0;

			po = 1.0 - pw;
			
			if (po>1.0) 
				po = 1.0;
			else if (po<0.0) 
				po = 0.0;
		}
		else
		{
			pw = FC[0].watercut.val / 100.0;
			
			if (pw>1.0) 
				pw = 1.0;
			else if (pw<0.0) 
				pw = 0.0;
	
			po = 1.0 - pw;
			
			if (po>1.0) 
				po = 1.0;
			else if (po<0.0) 
				po = 0.0;
		}
        
		if(FC[0].enable_PULSE == FALSE)
		{/* disable 0 for CCM mode terbine meter */ 
			VAR_Update(&FC[0].FLOW_WATER, FC[0].FLOW_TOTAL.calc_val*pw, 0, 0);
			VAR_Update(&FC[0].FLOW_OIL, FC[0].FLOW_TOTAL.calc_val*po, 0, 0);   
		}
	}
}

/****************************************************************************/
/* MB RX C2																	*/
/*                                                                          */
/* Description: Updates CCM_GAS_TEMPERATURE, CCM_GAS_DENSITY, CCM_GAS_FLOW	*/
/*				CCM_GAS_TOTAL                                               */
/*				COR[1]														*/
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_C2(int id)
{
	unsigned int tmp;
	float t;
    
	if (PORT[id].failed)
	{/* failed */
		COR[1].diag 	= -1.0;
		COR[1].Z.val 	= FALSE;
		DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}
	else
	{/* Check zero and error */
		COR[1].diag 	= PORT[id].f[0];
		tmp 			= PORT[id].f[0];
		
		if (tmp&COR_ZERO_IN_PROGRESS)
			COR[1].Z.val = TRUE;
		else
			COR[1].Z.val = FALSE;
		
		if (tmp&COR_ERROR)
			DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}

	COR[1].mfr			= PORT[id].f[1];
	COR[1].density		= PORT[id].f[2];
	COR[1].T			= PORT[id].f[3];
	COR[1].vfr			= PORT[id].f[4];
	COR[1].visc			= PORT[id].f[5];
	COR[1].P			= PORT[id].f[6];
	COR[1].mass_total	= PORT[id].f[7];
	COR[1].volume_total	= PORT[id].f[8];
    
    /*GAS TEMPERATURE RS*/
    PORT[id].f[0] = Convert(CCM_GAS_TEMPERATURE.class, COR[1].u_T, CCM_GAS_TEMPERATURE.calc_unit, COR[1].T, 0, CCM_GAS_TEMPERATURE.aux);
	
	VAR_Update(&CCM_GAS_TEMPERATURE, PORT[id].f[0], 0, 0);
    
    /* Converts COR[1].density from COR[1].u_density to CCM_GAS_DENSITY f[0] goes on to be used in calculations, f[3] is used in log and display */
	PORT[id].f[0] = Convert(CCM_GAS_DENSITY.class, COR[1].u_density, CCM_GAS_DENSITY.calc_unit, COR[1].density, 0, CCM_GAS_DENSITY.aux);   //coriolis density
    PORT[id].f[3] = Convert(CCM_GAS_DENSITY.class, COR[1].u_density, CCM_GAS_DENSITY.calc_unit, COR[1].density, 0, CCM_GAS_DENSITY.aux);
    
	if (CCM_2GAS)
	{/* for second gas micromotion */
		PORT[id].f[1] = Convert(CCM_GAS_DENSITY.class, COR[3].u_density, CCM_GAS_DENSITY.calc_unit, COR[3].density, 0, CCM_GAS_DENSITY.aux);
		PORT[id].f[0] = (PORT[id].f[0]+PORT[id].f[1])/2.0;
	}  
	
	/********Gas Density Input RS - converts GAS_DENSITY_INPUT.val from GAS_DENSITY_INPUT.calc_unit (always u_mpv_kg_cm) to GAS_DENSITY.calc_unit **********/  
	if (GAS_DENSITY_INPUT_ENABLED == TRUE) //manual density
		PORT[id].f[0] = Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY_INPUT.calc_unit, CCM_GAS_DENSITY.calc_unit, CCM_GAS_DENSITY_INPUT.val, 0, CCM_GAS_DENSITY.aux);	
	/********Gas Density Input RS**********/
	
	VAR_Update(&CCM_GAS_DENSITY, PORT[id].f[0],0,0); // use either the coriolis density or input density -DHA
	VAR_Update(&CCM_GAS_LIVE_DENSITY, PORT[id].f[3],0,0);

	if ((CCM_CORRECT_GAS_TO_STP==FALSE) && (CCM_GAS_MASS==FALSE))
	{/// STP == FALSE, MASS == FALSE
		CCM_GAS_FLOW.class  = c_volumetric_flow;
		CCM_GAS_TOTAL.class = c_volume;
		
		/**********Due to reconfig GAS MM from special unit to mass RS*********/
		PORT[id].f[2] = Convert(c_mass_flow, COR[1].u_mfr, u_mfr_kg_sec, COR[1].mfr, 0, 0);
		
		if (CCM_2GAS) 
			PORT[id].f[3] = Convert(c_mass_flow, COR[3].u_mfr, u_mfr_kg_sec, COR[3].mfr, 0, 0);
		else 
			PORT[id].f[3] = 0.0;
		
		PORT[id].f[4] = PORT[id].f[2] + PORT[id].f[3];   
		PORT[id].f[4] = PORT[id].f[4] / Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY.calc_unit, u_mpv_kg_cm, CCM_GAS_DENSITY.val, 0, CCM_GAS_DENSITY.aux);	
	    PORT[id].f[3] = Convert(CCM_GAS_FLOW.class, u_vfr_cm_sec, CCM_GAS_FLOW.calc_unit, PORT[id].f[4], 0, CCM_GAS_FLOW.aux);  
	    
	    VAR_Update(&CCM_GAS_FLOW, PORT[id].f[3],0,0); 
		
		/* 
		//UPDATE 10/7/2015: Stop using coriolis accumulator values!
	    
	    PORT[id].f[2] = Convert(c_mass, COR[1].u_m, u_m_kg, COR[1].mass_total, 0, 0);
		
		if (CCM_2GAS) 
			PORT[id].f[3] = Convert(c_mass, COR[3].u_m, u_m_kg, COR[3].mass_total, 0, 0);
		else 
			PORT[id].f[3] = 0.0;
		
		PORT[id].f[4] = PORT[id].f[2] + PORT[id].f[3];   
		PORT[id].f[4] = PORT[id].f[4] / Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY.calc_unit, u_mpv_kg_cm, CCM_GAS_DENSITY.val, 0, CCM_GAS_DENSITY.aux);	
	    PORT[id].f[3] = Convert(CCM_GAS_TOTAL.class, u_v_cm, CCM_GAS_TOTAL.calc_unit, PORT[id].f[4], 0, CCM_GAS_TOTAL.aux);  
	    
		
		
		ccm_gas_total_whole_part = floor(PORT[id].f[3]);
		ccm_gas_total_fract_part = PORT[id].f[3] - ccm_gas_total_whole_part;
		
	    VAR_Update(&CCM_GAS_TOTAL, ccm_gas_total_whole_part + ccm_gas_total_fract_part,0,0); // CCM_GAS_TOTAL = PORT[id].f[3];
		*/
		
	}
	else	/// STP == TRUE and/or CCM_GAS_MASS == TRUE
	{
		PORT[id].f[2] = Convert(c_mass_flow, COR[1].u_mfr, u_mfr_kg_sec, COR[1].mfr, 0, 0);
		
		if (CCM_2GAS) 
			PORT[id].f[3] = Convert(c_mass_flow, COR[3].u_mfr, u_mfr_kg_sec, COR[3].mfr, 0, 0);
		else 
			PORT[id].f[3] = 0.0;

		if (CCM_GAS_MASS)	/// CCM_GAS_MASS == TRUE, STP == doesn't matter
		{
			CCM_CORRECT_GAS_TO_STP 	= FALSE;
            CCM_GAS_FLOW.class 		= c_mass_flow;
			CCM_GAS_TOTAL.class 	= c_mass;
            PORT[id].f[4] 			= PORT[id].f[2] + PORT[id].f[3];
			PORT[id].f[3] 			= Convert(CCM_GAS_FLOW.class, u_mfr_kg_sec, CCM_GAS_FLOW.calc_unit, PORT[id].f[4], 0, 0);
			
			VAR_Update(&CCM_GAS_FLOW, PORT[id].f[3],0,0);
		}
		else	/// CCM_GAS_MASS == FALSE, STP == TRUE
		{
			CCM_GAS_FLOW.class  = c_volumetric_flow;
			CCM_GAS_TOTAL.class = c_volume;
            PORT[id].f[0] 		= PORT[id].f[2] / Convert(c_mass_per_volume, COR[1].u_density, u_mpv_kg_cm, COR[1].density, 0, 0);

			if (CCM_2GAS)
				PORT[id].f[1] = PORT[id].f[3] / Convert(c_mass_per_volume, COR[3].u_density, u_mpv_kg_cm, COR[3].density, 0, 0);
			else 
				PORT[id].f[1] = 0.0; 
			
			/********Gas Density Input RS**********/  
			if (GAS_DENSITY_INPUT_ENABLED == TRUE) 
			{
				PORT[id].f[0] = PORT[id].f[2] / Convert(c_mass_per_volume, CCM_GAS_DENSITY_INPUT.calc_unit, u_mpv_kg_cm, CCM_GAS_DENSITY_INPUT.val, 0, 0);
				
				if (CCM_2GAS)
					PORT[id].f[1] = PORT[id].f[3] / Convert(c_mass_per_volume, CCM_GAS_DENSITY_INPUT.calc_unit, u_mpv_kg_cm, CCM_GAS_DENSITY_INPUT.val, 0, 0);
				else 
					PORT[id].f[1] = 0.0;	
			}
			/********Gas Density Input RS**********/
			
			///f[0] = VFR
			PORT[id].f[0]  = PORT[id].f[0] + PORT[id].f[1];
			
			///f[1] = pressure
            PORT[id].f[1]  = Convert(FC[0].pressure.class, FC[0].pressure.calc_unit, u_p_in_Hg_0C, FC[0].pressure.calc_val, 0, FC[0].pressure.aux);
			
			/// f[0] = vfr * pressure/30
			PORT[id].f[1] /= 30.0;		
			PORT[id].f[0] *= PORT[id].f[1];

			/// f[0] = vfr * pressure/30 * 15_C
			if ((FC[0].T.unit==u_temp_K)||(FC[0].T.unit==u_temp_C))
				PORT[id].f[0] *= Convert(FC[0].T.class, u_temp_C, u_temp_K, 15.0, 0, FC[0].T.aux);
			else
				PORT[id].f[0] *= Convert(FC[0].T.class, u_temp_F, u_temp_K, 60.0, 0, FC[0].T.aux);
			
			/// f[1] = vfr * pressure/30 * 15_C * Temperature_Kelvins
			PORT[id].f[1]  = Convert(CCM_GAS_TEMPERATURE.class, CCM_GAS_TEMPERATURE.calc_unit, u_temp_K, CCM_GAS_TEMPERATURE.calc_val, 0, CCM_GAS_TEMPERATURE.aux);  /*RS*/
			PORT[id].f[0] /= PORT[id].f[1];
            PORT[id].f[0]  = Convert(CCM_GAS_FLOW.class, u_vfr_N_cm_sec, CCM_GAS_FLOW.calc_unit, PORT[id].f[0], 0, CCM_GAS_FLOW.aux);
			
			/// GAS_FLOW = VFR @ STP
			VAR_Update(&CCM_GAS_FLOW, PORT[id].f[0],0,0);
		}
	}
}

/****************************************************************************/
/* MB RX C3																	*/
/*                                                                          */
/* Description: Updates FLOW_TOTAL, density, FLOW_WATER, FLOW_OIL for FC[0] */
/*				COR[2]                                                      */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_C3(int id)
{
	unsigned int tmp;	/* temp variable 			  */
	float po, pw;		/* percent oil; percent water */

	if (PORT[id].failed)
	{/* failed */
		COR[2].diag = -1.0;
		COR[2].Z.val = FALSE;
		DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}
	else
	{/* check zero and error */
		COR[2].diag = PORT[id].f[0];
		tmp 		= PORT[id].f[0];
		
		if (tmp&COR_ZERO_IN_PROGRESS)
			COR[2].Z.val = TRUE;
		else
			COR[2].Z.val = FALSE;
	
		if (tmp&COR_ERROR)
			DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}

	COR[2].mfr			= PORT[id].f[1];
	COR[2].density		= PORT[id].f[2];
	COR[2].T			= PORT[id].f[3];
	COR[2].vfr			= PORT[id].f[4];
	COR[2].visc			= PORT[id].f[5];
	COR[2].P			= PORT[id].f[6];
	COR[2].mass_total	= PORT[id].f[7];
	COR[2].volume_total	= PORT[id].f[8];

	/* Update FLOW_TOTAL */
	if (FC[0].FLOW_TOTAL.class == c_volumetric_flow)
	{
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].vfr, 0, FC[0].FLOW_TOTAL.aux);
		PORT[id].f[2] = Convert(FC[0].FLOW_TOTAL.class, COR[2].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[2].vfr, 0, FC[0].FLOW_TOTAL.aux);
		
		VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0]+PORT[id].f[2], 0, 0);
	}
	else if (FC[0].FLOW_TOTAL.class == c_mass_flow)
	{
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].mfr, 0, FC[0].FLOW_TOTAL.aux);
		PORT[id].f[2] = Convert(FC[0].FLOW_TOTAL.class, COR[2].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[2].mfr, 0, FC[0].FLOW_TOTAL.aux);
		
		VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0]+PORT[id].f[2], 0, 0);
	}
	else
		VAR_Update(&FC[0].FLOW_TOTAL, 0.0, 0, 0);
	/* Update FLOW_TOTAL */
	
	PORT[id].f[0] = Convert(FC[0].density.class, COR[0].u_density, FC[0].density.calc_unit, COR[0].density, 0, FC[0].density.aux);
	PORT[id].f[1] = Convert(FC[0].density.class, COR[2].u_density, FC[0].density.calc_unit, COR[2].density, 0, FC[0].density.aux);
	
	VAR_Update(&FC[0].density, (PORT[id].f[0]+PORT[id].f[1])/2.0, 0, 0);

	FC[0].enable_PULSE = FALSE;
	FC[0].enable_GROSS = TRUE;
	FC[0].enable_NET   = TRUE;

	if (DIO_TOTALIZER_CONTROL.val)	/* accumulate with flow as input */
		FC[0].enable_FLOW = TRUE;
	else
	{/* pass through flow rates */
		FC[0].enable_FLOW = FALSE;

		if (FC[0].FLOW_TOTAL.class==c_mass_flow)
		{
			pw = FC[0].net_watercut_mass / 100.0;
			
			if (pw>1.0) 
				pw = 1.0;
			else if (pw<0.0) 
				pw = 0.0;

			po = 1.0 - pw;
			
			if (po>1.0) 
				po = 1.0;
			else if (po<0.0) 
				po = 0.0;
		}
		else
		{
			pw = FC[0].watercut.val / 100.0;
			
			if (pw>1.0) 
				pw = 1.0;
			else if (pw<0.0) 
				pw = 0.0;
	
			po = 1.0 - pw;
			
			if (po>1.0) 
				po = 1.0;
			else if (po<0.0) 
				po = 0.0;
		}

		VAR_Update(&FC[0].FLOW_WATER, FC[0].FLOW_TOTAL.calc_val*pw, 0, 0);
		VAR_Update(&FC[0].FLOW_OIL,   FC[0].FLOW_TOTAL.calc_val*po, 0, 0);
	}
}

/****************************************************************************/
/* MB RX 4																	*/
/*                                                                          */
/* Description: Updates PRESS[0] variables, forces pressure units,			*/
/*				CCM_VESSEL_PRESSURE[0], FC[0].pressure, AO vector,			*/
/*				CMM_VESSEL_LEVEL[0], integer representations of all that	*/
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       For complete list of updated variables look at the bottom of*/
/*				this function in the integer representation section.		*/
/*                                                                          */
/****************************************************************************/
void MB_RX_C4(int id)
{
	int i;
	double conv_val;
	
	PRESS[0].p_delta	= PORT[id].f[0];
	PRESS[0].p_static	= PORT[id].f[1];
	PRESS[0].T			= PORT[id].f[2];
	
	if (PORT[id].failed) 
		PRESS[0].diag0 = -1.0;
	else 
		PRESS[0].diag0 = PORT[id].f[3];
	
	PRESS[0].diag1		= PORT[id].f[4];
	PRESS[0].diag2		= PORT[id].f[5];

	
	for(i=0; i<2; i++) //handle any change in units & calc_units
	{///convert this before forcing units!
		
		if (CCM_SETPOINT_PRESSURE[i].calc_unit != CCM_VESSEL_PRESSURE[i].calc_unit)
		{
			conv_val = Convert(c_pressure, CCM_SETPOINT_PRESSURE[i].calc_unit, CCM_VESSEL_PRESSURE[i].calc_unit, CCM_SETPOINT_PRESSURE[i].calc_val, 0, 0);
			CCM_SETPOINT_PRESSURE[i].calc_unit = CCM_VESSEL_PRESSURE[i].calc_unit;			
			VAR_Update(&CCM_SETPOINT_PRESSURE[i], conv_val, 0, 0);
		}
		
		if (CCM_SETPOINT_PRESSURE[i].unit != CCM_VESSEL_PRESSURE[i].unit)
		{
			conv_val = Convert(c_pressure, CCM_SETPOINT_PRESSURE[i].unit, CCM_VESSEL_PRESSURE[i].unit, CCM_SETPOINT_PRESSURE[i].val, 0, 0);
			CCM_SETPOINT_PRESSURE[i].unit = CCM_VESSEL_PRESSURE[i].unit;
			VAR_Update(&CCM_SETPOINT_PRESSURE[i], conv_val, 0, 0);
		}
		
		//the following shouldn't happen, because setpoint level is ALWAYS expressed as percentage of height -DHA
		if (CCM_SETPOINT_LEVEL[i].calc_unit != CCM_VESSEL_LEVEL[i].calc_unit)
			CCM_SETPOINT_LEVEL[i].calc_unit = CCM_VESSEL_LEVEL[i].calc_unit;
		//the following shouldn't happen, because setpoint level is ALWAYS expressed as percentage of height -DHA
		if (CCM_SETPOINT_LEVEL[i].unit != CCM_VESSEL_LEVEL[i].unit)
			CCM_SETPOINT_LEVEL[i].unit = CCM_VESSEL_LEVEL[i].unit;
		
		if (CCM_SETPOINT_PRESSURE_MAX_OVER.calc_unit != CCM_SETPOINT_PRESSURE[0].calc_unit)
		{
			conv_val = Convert(c_pressure, CCM_SETPOINT_PRESSURE_MAX_OVER.calc_unit, CCM_SETPOINT_PRESSURE[0].calc_unit, CCM_SETPOINT_PRESSURE_MAX_OVER.val, 0, 0);
			CCM_SETPOINT_PRESSURE_MAX_OVER.calc_unit = CCM_SETPOINT_PRESSURE[0].calc_unit;
			VAR_Update(&CCM_SETPOINT_PRESSURE_MAX_OVER, conv_val, 0, 0);
		}
		if (CCM_SETPOINT_PRESSURE_MAX_OVER.unit != CCM_SETPOINT_PRESSURE[0].unit)
		{
			conv_val = Convert(c_pressure, CCM_SETPOINT_PRESSURE_MAX_OVER.unit, CCM_SETPOINT_PRESSURE[0].unit, CCM_SETPOINT_PRESSURE_MAX_OVER.val, 0, 0);
			CCM_SETPOINT_PRESSURE_MAX_OVER.unit = CCM_SETPOINT_PRESSURE[0].unit;
			VAR_Update(&CCM_SETPOINT_PRESSURE_MAX_OVER, conv_val, 0, 0);
		}
	}
	
	
	if (PORT[id].failed)
	{/* failed */
		DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;

		if (AO[1].PID_enable_failsafe)
			AO[1].PID_fail = TRUE;
		else
			AO[1].PID_fail = FALSE;

		if (AO[2].PID_enable_failsafe)
			AO[2].PID_fail = TRUE;
		else
			AO[2].PID_fail = FALSE;

		return;
	}


	PORT[id].f[1] = Convert(CCM_VESSEL_PRESSURE[0].class, PRESS[0].u_SP, CCM_VESSEL_PRESSURE[0].calc_unit, PRESS[0].p_static, 0, CCM_VESSEL_PRESSURE[0].aux);
	VAR_Update(&CCM_VESSEL_PRESSURE[0], PORT[id].f[1], 0, 0);
	
	PORT[id].f[1] = Convert(CCM_VESSEL_PRESSURE[0].class, CCM_VESSEL_PRESSURE[0].calc_unit, FC[0].pressure.calc_unit, CCM_VESSEL_PRESSURE[0].calc_val, 0, CCM_VESSEL_PRESSURE[0].aux);
	VAR_Update(&FC[0].pressure, PORT[id].f[1], 0, 0);

	if (CCM_VESSEL_PRESSURE[0].val > (CCM_SETPOINT_PRESSURE_MAX_OVER.val + CCM_SETPOINT_PRESSURE[0].val))
	{/* error detect */
		DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;

		if (AO[1].PID_enable_failsafe)
			AO[1].PID_fail = TRUE;
	
		if (AO[2].PID_enable_failsafe)
			AO[2].PID_fail = TRUE;
	}
	else
	{/* no error */
		AO[1].PID_fail = FALSE;
		AO[2].PID_fail = FALSE;
	}

	/* GAS Valve */
	AO[2].PID_input		= CCM_VESSEL_PRESSURE[0].val;
	AO[2].PID_setpoint	= CCM_SETPOINT_PRESSURE[0].val;

	/* Liquid Valve */
	PORT[id].f[1] = Convert(c_pressure, PRESS[0].u_DP, u_p_in_H2O_60F, PRESS[0].p_delta, 0, 0);
	
	if (CCM_CORRECT_LIQ_HEIGHT)
	{/* Update CCM_VESSEL_LEVEL[0] */
		PORT[id].f[2] = Convert(c_mass_per_volume, FC[0].density.calc_unit, u_mpv_sg, FC[0].density.calc_val, 0, FC[0].density.aux);
		
		if (PORT[id].f[2]<=0.0)
		{/* error */
			PORT[id].f[2] = 1.0;
			DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
		}
		
		VAR_Update(&CCM_VESSEL_LEVEL[0], PORT[id].f[1]/CCM_VESSEL_MAX_LEVEL[0]/PORT[id].f[2]*100.0, 0, 0);
	}
	else
		VAR_Update(&CCM_VESSEL_LEVEL[0], PORT[id].f[1]/CCM_VESSEL_MAX_LEVEL[0]*100.0, 0, 0);
	
	AO[1].PID_input		= CCM_VESSEL_LEVEL[0].val;
	AO[1].PID_setpoint	= CCM_SETPOINT_LEVEL[0].val;  
	
	/*Close Gas Valve when Level too high for Anadarko Bulk RS*/
	if ((BULK_LEVEL_ENABLED.val==TRUE)&&(CCM_VESSEL_PRESSURE[0].val < (CCM_SETPOINT_PRESSURE_MAX_OVER.val + CCM_SETPOINT_PRESSURE[0].val)))
	{
		if (CCM_VESSEL_LEVEL[0].val>REG_BULK_LEVEL.val)
			VAR_Update(&AO[2].CURRENT_PERCENT_OF_RANGE, 0.0, 0, 0);  
	} 
	/*Close Gas Valve when Level too high for Anadarko Bulk RS*/

	/* update integer representations */
	i_CCM_Level_Setpoint 	= CCM_SETPOINT_LEVEL[0].val * 10.0;
	i_CCM_Level 		 	= CCM_VESSEL_LEVEL[0].val * 10.0;
	i_CCM_Pressure_Setpoint = CCM_SETPOINT_PRESSURE[0].val * 100.0;
	i_CCM_Pressure 			= CCM_VESSEL_PRESSURE[0].val * 100.0;
	i_CCM_Gas_Valve 		= AO[2].CURRENT_PERCENT_OF_RANGE.val * 10.0; // Gas valve
	i_CCM_Liquid_Valve 		= AO[1].CURRENT_PERCENT_OF_RANGE.val * 10.0; // Liquid valve
	i_CCM_Flow 				= FC[0].FLOW_TOTAL.val * 100.0;
	i_CCM_Flow_Oil 			= FC[0].FLOW_OIL.val * 100.0;
	i_CCM_Flow_Water 		= FC[0].FLOW_WATER.val * 100.0;
	i_CCM_Flow_Gas 			= CCM_GAS_FLOW.val * 100.0;
	/* update integer representations */
}

/****************************************************************************/
/* MB RX C5																	*/
/*                                                                          */
/* Description: Update CCM_GAS_DENSITY, CCM_GAS_FLOW, CCM_GAS_TOTAL			*/
/*				COR[3]                                                      */
/*                                                                          */
/* Arguments:   INT id - PORT ID                                            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_RX_C5(int id)
{
	unsigned int tmp;	/* temp variable */

	if (PORT[id].failed)
	{/* failed */
		COR[3].diag 	= -1.0;
		COR[3].Z.val 	= FALSE;
		DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}
	else
	{/* check zero and error */
		COR[3].diag 	= PORT[id].f[0];
		tmp 			= PORT[id].f[0];
		
		if (tmp&COR_ZERO_IN_PROGRESS)
			COR[3].Z.val = TRUE;
		else
			COR[3].Z.val = FALSE;
		
		if (tmp&COR_ERROR)
			DIAGNOSTICS[1] |= ERROR2_FC1_FAIL;
	}

	COR[3].mfr			= PORT[id].f[1];
	COR[3].density		= PORT[id].f[2];
	COR[3].T			= PORT[id].f[3];
	COR[3].vfr			= PORT[id].f[4];
	COR[3].visc			= PORT[id].f[5];
	COR[3].P			= PORT[id].f[6];
	COR[3].mass_total	= PORT[id].f[7];
	COR[3].volume_total	= PORT[id].f[8];
    PORT[id].f[0] 		= Convert(CCM_GAS_DENSITY.class, COR[1].u_density, CCM_GAS_DENSITY.calc_unit, COR[1].density, 0, CCM_GAS_DENSITY.aux);
	PORT[id].f[1] 		= Convert(CCM_GAS_DENSITY.class, COR[3].u_density, CCM_GAS_DENSITY.calc_unit, COR[3].density, 0, CCM_GAS_DENSITY.aux);
	
	/********Gas Density Input RS**********/
	PORT[id].f[0] = (PORT[id].f[0]+PORT[id].f[1])/2.0;  
	
	if (GAS_DENSITY_INPUT_ENABLED == TRUE) 
		PORT[id].f[0] = Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY_INPUT.calc_unit, CCM_GAS_DENSITY.calc_unit, CCM_GAS_DENSITY_INPUT.val, 0, CCM_GAS_DENSITY.aux);	
	/********Gas Density Input RS**********/
	
	VAR_Update(&CCM_GAS_DENSITY, PORT[id].f[0],0,0);

	if ((CCM_CORRECT_GAS_TO_STP==FALSE) && (CCM_GAS_MASS==FALSE))
	{
		CCM_GAS_FLOW.class  = c_volumetric_flow;
		CCM_GAS_TOTAL.class = c_volume;
        	
		/**********Due to reconfig GAS MM from special unit to mass RS*********/
		PORT[id].f[2] = Convert(c_mass_flow, COR[1].u_mfr, u_mfr_kg_sec, COR[1].mfr, 0, 0);
		PORT[id].f[3] = Convert(c_mass_flow, COR[3].u_mfr, u_mfr_kg_sec, COR[3].mfr, 0, 0);
		PORT[id].f[4] = PORT[id].f[2] + PORT[id].f[3];   
		PORT[id].f[4] = PORT[id].f[4] / Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY.calc_unit, u_mpv_kg_cm, CCM_GAS_DENSITY.val, 0, CCM_GAS_DENSITY.aux);	
	    PORT[id].f[3] = Convert(CCM_GAS_FLOW.class, u_vfr_cm_sec, CCM_GAS_FLOW.calc_unit, PORT[id].f[4], 0, CCM_GAS_FLOW.aux);  
	    
	    VAR_Update(&CCM_GAS_FLOW, PORT[id].f[3],0,0); 
		
		/* 
		//UPDATE 10/7/2015: Stop using coriolis accumulator values!
	    
	    PORT[id].f[2] = Convert(c_mass, COR[1].u_m, u_m_kg, COR[1].mass_total, 0, 0);
		PORT[id].f[3] = Convert(c_mass, COR[3].u_m, u_m_kg, COR[3].mass_total, 0, 0);
		PORT[id].f[4] = PORT[id].f[2] + PORT[id].f[3];   
		PORT[id].f[4] = PORT[id].f[4] / Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY.calc_unit, u_mpv_kg_cm, CCM_GAS_DENSITY.val, 0, CCM_GAS_DENSITY.aux);	
	    PORT[id].f[3] = Convert(CCM_GAS_TOTAL.class, u_v_cm, CCM_GAS_TOTAL.calc_unit, PORT[id].f[4], 0, CCM_GAS_TOTAL.aux);  
	    
		ccm_gas_total_whole_part = floor(PORT[id].f[3]);
		ccm_gas_total_fract_part = PORT[id].f[3] - ccm_gas_total_whole_part;
		
	    VAR_Update(&CCM_GAS_TOTAL, ccm_gas_total_whole_part + ccm_gas_total_fract_part,0,0);
		*/
	}
	else
	{
		PORT[id].f[2] = Convert(c_mass_flow, COR[1].u_mfr, u_mfr_kg_sec, COR[1].mfr, 0, 0);
		PORT[id].f[3] = Convert(c_mass_flow, COR[3].u_mfr, u_mfr_kg_sec, COR[3].mfr, 0, 0);

		if (CCM_GAS_MASS)
		{
			CCM_CORRECT_GAS_TO_STP 	= FALSE;
           	CCM_GAS_FLOW.class 		= c_mass_flow;
			CCM_GAS_TOTAL.class 	= c_mass;
            PORT[id].f[4] 			= PORT[id].f[2] + PORT[id].f[3];
			PORT[id].f[3] 			= Convert(CCM_GAS_FLOW.class, u_mfr_kg_sec, CCM_GAS_FLOW.calc_unit, PORT[id].f[4], 0, 0);
			
			VAR_Update(&CCM_GAS_FLOW, PORT[id].f[3],0,0);
		}
		else
		{
			CCM_GAS_FLOW.class 	= c_volumetric_flow;
			CCM_GAS_TOTAL.class = c_volume;
            PORT[id].f[0] 		= PORT[id].f[2] / Convert(c_mass_per_volume, COR[1].u_density, u_mpv_kg_cm, COR[1].density, 0, 0);
			PORT[id].f[1] 		= PORT[id].f[3] / Convert(c_mass_per_volume, COR[3].u_density, u_mpv_kg_cm, COR[3].density, 0, 0);
            
            /********Gas Density Input RS**********/  
			if (GAS_DENSITY_INPUT_ENABLED == TRUE) 
			{
				PORT[id].f[0] = PORT[id].f[2] / Convert(c_mass_per_volume, CCM_GAS_DENSITY_INPUT.calc_unit, u_mpv_kg_cm, CCM_GAS_DENSITY_INPUT.val, 0, 0);
				PORT[id].f[1] = PORT[id].f[3] / Convert(c_mass_per_volume, CCM_GAS_DENSITY_INPUT.calc_unit, u_mpv_kg_cm, CCM_GAS_DENSITY_INPUT.val, 0, 0);
			}
			/********Gas Density Input RS**********/
            
			PORT[id].f[0]  = PORT[id].f[0] + PORT[id].f[1];
            PORT[id].f[1]  = Convert(FC[0].pressure.class, FC[0].pressure.calc_unit, u_p_in_Hg_0C, FC[0].pressure.calc_val, 0, FC[0].pressure.aux);
			PORT[id].f[1] /= 30.0;
			PORT[id].f[0] *= PORT[id].f[1];

			if ((FC[0].T.unit==u_temp_K)||(FC[0].T.unit==u_temp_C))
			{
				PORT[id].f[0] *= Convert(FC[0].T.class, u_temp_C, u_temp_K, 15.0, 0, FC[0].T.aux);
				PORT[id].f[1]  = Convert(FC[0].T.class, FC[0].T.calc_unit, u_temp_K, FC[0].T.calc_val, 0, FC[0].T.aux);
			}
			else
			{
				PORT[id].f[0] *= Convert(FC[0].T.class, u_temp_F, u_temp_K, 60.0, 0, FC[0].T.aux);
				PORT[id].f[1] = Convert(FC[0].T.class, FC[0].T.calc_unit, u_temp_K, FC[0].T.calc_val, 0, FC[0].T.aux);
			}

			PORT[id].f[0] /= PORT[id].f[1];
            PORT[id].f[0]  = Convert(CCM_GAS_FLOW.class, u_vfr_N_cm_sec, CCM_GAS_FLOW.calc_unit, PORT[id].f[0], 0, CCM_GAS_FLOW.aux);
			
			VAR_Update(&CCM_GAS_FLOW, PORT[id].f[0],0,0);
		}
	}
}

/****************************************************************************/
/* MB TX A PLC																*/
/*                                                                          */
/* Description: Sets ALYESKA variables, adds to PORT[1].MASTER MODBUS list  */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void MB_TX_A_PLC(void)
{
	MPKT* p;
	int addr;

	/* convert */
	ALYESKA.WATERCUT		= REG_WATERCUT.val;
	ALYESKA.FLOW_RATE		= FC[0].FLOW_TOTAL.val;
	ALYESKA.TEMPERATURE		= FC[0].T.val;
	ALYESKA.DENSITY			= Convert(Density_Cal.class, Density_Cal.calc_unit, u_mpv_kg_cm_60F, FC[0].density_PDI_corrected, 0, FC[0].density.aux);
	ALYESKA.DENSITY			/= 1000.0;	/* convert to sg */
	ALYESKA.iWATERCUTz		= Span(ALYESKA.WATERCUT, ALYESKA.minWATERCUTz, ALYESKA.maxWATERCUTz, 0, 4095);
	ALYESKA.iWATERCUT		= Span(ALYESKA.WATERCUT, ALYESKA.minWATERCUT, ALYESKA.maxWATERCUT, 0, 4095);
	ALYESKA.iFLOW_RATE		= Span(ALYESKA.FLOW_RATE, ALYESKA.minFLOW_RATE, ALYESKA.maxFLOW_RATE, 0, 4095);
	ALYESKA.iTEMPERATURE	= Span(ALYESKA.TEMPERATURE, ALYESKA.minTEMPERATURE, ALYESKA.maxTEMPERATURE, 0, 4095);
	ALYESKA.iDENSITY		= Span(ALYESKA.DENSITY, ALYESKA.minDENSITY, ALYESKA.maxDENSITY, 0, 4095);
	ALYESKA.iVISCOSITY		= Span(ALYESKA.VISCOSITY, ALYESKA.minVISCOSITY, ALYESKA.maxVISCOSITY, 0, 4095);
	/* convert */

	addr = ALYESKA.DESTINATION_ADDRESS.val;
	p 	 = Master_Create((int*) 0, 1, 1, mb_cmd_w_regs|mb_var_int, addr, 5, 0.0);

	if (p != (MPKT*) NULL_PTR)
	{
		p->v[0] = ALYESKA.iWATERCUTz;
		p->v[1] = ALYESKA.iWATERCUT;
		p->v[2] = ALYESKA.iFLOW_RATE;
		p->v[3] = ALYESKA.iTEMPERATURE;
		p->v[4] = ALYESKA.iDENSITY;
		
		List_Add(&PORT[1].MASTER, (GENERIC*)p);
	}
}

/****************************************************************************/
/****************************************************************************/
/* MASTER CREATE															*/
/*                                                                          */
/* Description: Creates a MODBUS Master packet to send out                  */
/*                                                                          */
/* Arguments:   INT POINTER vect - receive vector							*/
/*				INT n			 - size										*/
/*				INT slave		 - slave id									*/
/*				INT func		 - function									*/
/*				INT addr		 - address									*/
/*				INT num			 - number									*/
/*				FLOAT v			 - value									*/
/*				                                                            */
/* Returns:     MPKT POINTER p - new modbus packet                          */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
MPKT* Master_Create(int* vect, int n, int slave, int func, int addr, int num, float v)
{
	MPKT* p;
	int i;

	p = (MPKT*) List_Pop(&LIST_MASTER_EMPTY);

	if (p == (MPKT*) NULL_PTR)
		return p;
	
	p->prev 	= 0;
	p->next 	= 0;
	p->rxvect 	= vect;
	p->txvect 	= NULL_PTR;
	p->n 		= n;
	p->slave 	= slave;
	p->func 	= func;
	p->addr 	= addr;
	p->num 		= num;
	p->v[0] 	= v;
	p->flt_ptr 	= (float*)0;
	p->int_ptr 	= (int*)0;

	for (i=1;i<nmax;i++) 
		p->v[i] = 0;

	return p;
}
