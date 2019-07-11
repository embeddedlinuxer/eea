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
/* File Name: LOG.C							    							*/
/* 									    									*/
/* File Description: This file implements logging.  It does everything from	*/
/* setting up the logs to recording a log entry.  It also performs log		*/
/* functions such as erasing a log or selecting log entries.				*/
/*									    									*/
/****************************************************************************/
#define LOG_H

#include "GLBLS.H"
#include "LOG.H"

/****************************************************************************/
/* INITLOG																	*/
/*                                                                          */
/* Description: Initializes System log, CCM Records log, and FC periodic Log*/
/*                                                                          */
/* Arguments:	void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       logs require at least two sectors to erase-ahead            */
/*                                                                          */
/****************************************************************************/
void InitLog(void)
{
	{/* Initialize SYS log - Standard System Log */
		SYS.log_end			= FLASH_SIZE() + (unsigned int)FLASH_LOC;
		SYS.log_start 		= FLASH_LOC_LOG;
		SYS.log_len 		= SYS.log_end - (unsigned int)SYS.log_start;
		SYS.log_sector_size = FLASH_SECTOR_SIZE;
		SYS.erased_sector 	= FALSE;
		SYS_LOG_EVENT 		= FALSE;
		USER_LOG_EVENT 		= FALSE;

		if (SYS.log_len<=0)
		{
			SYS.log_len 				= 0;
			SYS.log_n_sectors 			= 0;
			SYS.log_n_max_per_sector	= 0;
			SYS.log_record_size 		= 0;
			SYS_LOG_ENABLED 			= FALSE;
		}
		else
		{
			SYS.log_n_sectors = SYS.log_len/SYS.log_sector_size;
			
			if (SYS.log_n_sectors<1)
			{
				SYS.log_len 				= 0;
				SYS.log_n_sectors 			= 0;
				SYS.log_n_max_per_sector 	= 0;
				SYS.log_record_size 		= 0;
				SYS_LOG_ENABLED 			= FALSE;
			}
			else
			{
				SYS.log_record_size 	 = SYS_log_record_size;
				SYS.log_n_max_per_sector = SYS.log_sector_size/SYS.log_record_size;
				
				FindNextLogIndex(&SYS, 0, (unsigned int*)0);
			}
		}

		SYS.LOG_ERASE = FALSE;
	}

	{/* Initialize CCM Records log */
		CCM_Record_view.val			= 0;
		CCM_Record_view.vect 		= (int*)&CCM_Record_Viewer;
		CCM_Records.log_end 		= (unsigned int)FLASH_LOC_CCM_RPT + 2*FLASH_CFGB_SIZE;
		CCM_Records.log_start 		= (unsigned int*)FLASH_LOC_CCM_RPT;
		CCM_Records.log_len 		= CCM_Records.log_end - (unsigned int)CCM_Records.log_start;
		CCM_Records.log_sector_size = FLASH_CFGB_SIZE;
		CCM_Records.erased_sector 	= FALSE;

		if (CCM_Records.log_len<=0)
		{
			CCM_Records.log_len 				= 0;
			CCM_Records.log_n_sectors 			= 0;
			CCM_Records.log_n_max_per_sector 	= 0;
			CCM_Records.log_record_size 		= 0;
		}
		else
		{
			CCM_Records.log_n_sectors = CCM_Records.log_len/CCM_Records.log_sector_size;
			
			if (CCM_Records.log_n_sectors<1)
			{
				CCM_Records.log_len 				= 0;
				CCM_Records.log_n_sectors 			= 0;
				CCM_Records.log_n_max_per_sector	= 0;
				CCM_Records.log_record_size 		= 0;
			}
			else
			{
				CCM_Records.log_record_size 		= CCM_Records_log_record_size;
				CCM_Records.log_n_max_per_sector 	= CCM_Records.log_sector_size/CCM_Records.log_record_size;
				
				FindNextLogIndex(&CCM_Records, CCMrecmax, CCMREC);
				CCM_Record_Viewer(0);
			}
		}

		CCM_Records.LOG_ERASE = FALSE;
	}

	{/* Initialize FC Periodic log - CCM Periodic Log */
		FC_Periodic.log_end 		= (unsigned int)FLASH_LOC_FC_LOG + 4*FLASH_CFGB_SIZE;
		FC_Periodic.log_start 		= (unsigned int*)FLASH_LOC_FC_LOG;
		FC_Periodic.log_len 		= FC_Periodic.log_end - (unsigned int)FC_Periodic.log_start;
		FC_Periodic.log_sector_size = FLASH_CFGB_SIZE;
		FC_Periodic.erased_sector 	= FALSE;

		if (FC_Periodic.log_len<=0)
		{
			FC_Periodic.log_len 				= 0;
			FC_Periodic.log_n_sectors 			= 0;
			FC_Periodic.log_n_max_per_sector 	= 0;
			FC_Periodic.log_record_size 		= 0;
		}
		else
		{
			FC_Periodic.log_n_sectors = FC_Periodic.log_len/FC_Periodic.log_sector_size;
			
			if (FC_Periodic.log_n_sectors<1)
			{
				FC_Periodic.log_len 				= 0;
				FC_Periodic.log_n_sectors 			= 0;
				FC_Periodic.log_n_max_per_sector 	= 0;
				FC_Periodic.log_record_size 		= 0;
			}
			else
			{
				FC_Periodic.log_record_size 	 = FC_Periodic_log_record_size;
				FC_Periodic.log_n_max_per_sector = FC_Periodic.log_sector_size/FC_Periodic.log_record_size;
				
				FindNextLogIndex(&FC_Periodic, 0, (unsigned int*)0);
			}
		}

		FC_Periodic.LOG_ERASE = FALSE;
	}
}

/****************************************************************************/
/* ERASESECTOR																*/
/*                                                                          */
/* Description: Erases a log sector.                                        */
/*                                                                          */
/* Arguments:   LOG POINTER log - selected log.		                        */
/*				UNSIGNED INT s  - sector to be erased.						*/
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void EraseSector(LOG* log, unsigned int s)
{
	int i;	/* not used */

	if (log->log_len<=0) 
		return;

	_GIEP;

	while(s >= log->log_n_sectors)	/* normalize */
		s -= log->log_n_sectors;
	
	FLASH_ERASE_BLK(log->log_start + (s*log->log_sector_size));
	FLASH_LOCK_BLK(log->log_start + (s*log->log_sector_size), TRUE);

	log->erased_sector = TRUE;

	GIEP;
}

/****************************************************************************/
/* MARKLOGSTART																*/
/*                                                                          */
/* Description: Marks the start of the log.                                 */
/*                                                                          */
/* Arguments:   LOG POINTER - selected log.									*/
/*				UNSIGNED INT s - sector		                                */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
void MarkLogStart(LOG* log, unsigned int s)
{
	unsigned int status;	/* sector status	*/
	unsigned int i;			/* log index 		*/
	unsigned int* p;		/* log data 		*/

	if (log->log_len<=0) 
		return;

	_GIEP;

	while(s >= log->log_n_sectors)	/* normalize */
		s -= log->log_n_sectors;
	
	p = log->log_start + (s*log->log_sector_size);
	i = p[0] & 0xBFFFFFFF;

	FLASH_LOCK_BLK(p, FALSE);

	*FLASH_LOC 	= PROGRAM;
	p[0] 		= i;
	*FLASH_LOC 	= READ_STATUS;
	status 		= *FLASH_LOC;
	
	while (!( (status & 0x00800080) == 0x00800080) )
		status = *FLASH_LOC;
	
	*FLASH_LOC = READ_ARRAY;

	FLASH_LOCK_BLK(p, TRUE);

	GIEP;
}

/****************************************************************************/
/* RECORDLOGENTRY															*/
/*                                                                          */
/* Description: Records a log entry in flash memory.                        */
/*                                                                          */
/* Arguments: 	LOG POINTER log 		- selected log						*/
/* 				INT mode				- selected mode						*/
/* 				UNSIGNED INT POINTER p	- data?                             */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       p[0] 2MSbits and p[end] 16LSbits are reserved and should 	*/
/*				be initialized to 0                                         */
/*                                                                          */
/****************************************************************************/
void RecordLogEntry(LOG* log, int mode, unsigned int* p)
{
	unsigned int* addr;			/* working log address */
	unsigned int status;		/* log flash location status */
	unsigned int ck;			/* checksum */
	int i;						/* log record counter */
	int	YEAR,MONTH,DAY,HH,MM;	/* timestamp data */

	if (log->log_len<=0) 
		return;

	_GIEP;

	if (log->LOG_ERASE)
		EraseEntireLog(log);
	
	if (log->log_n==log->log_n_max_per_sector)
	{/* position log pointer & setup entry */
		log->log_n = 0;
		log->log_current_sector++;
		log->log_absolute_index++;
		
		if (log->log_absolute_index > (log->log_n_max_per_sector*log->log_n_sectors))
			log->log_absolute_index = log->log_n_max_per_sector * (log->log_n_sectors-1);
		
		while(log->log_current_sector >= log->log_n_sectors)	/* normalize */	
			log->log_current_sector -= log->log_n_sectors;	
		
		if ((log->log_start[log->log_sector_size*log->log_current_sector] & 0x40000000)==0)
			MarkLogStart(log, log->log_current_sector+1);		/* reposition the starting sector (in case of rollover) */
		
		EraseSector(log, log->log_current_sector);
	}

	while(log->log_current_sector >= log->log_n_sectors)		/* normalize */
		log->log_current_sector -= log->log_n_sectors; 		


	if ((log==&SYS) || (log==&FC_Periodic))
	{/* SYS or FC_Periodic logs */
		if ( !((mode > LOG_USER1) && (mode <= LOG_USER6)))
		{/* note: LOG_USER2-6 use the same time stamp as LOG_USER1 and is passed through the *p */
			if (!RTC_PRESENT)
			{/* no realtime clock */
				HH				= (IDEC_SA[9].val)		& 0xFF;
				MM				= (IDEC_SA[10].val>>8)	& 0xFF;
				MONTH			= (IDEC_SA[8].val)		& 0xFF;
				DAY				= (IDEC_SA[9].val>>8)	& 0xFF;
				YEAR			= (IDEC_SA[8].val>>8)	& 0xFF;
			}
			else
			{
				HH				= RTC[4] & 0x3F;
				MM				= RTC[3] & 0x7F;
				MONTH			= RTC[7] & 0x1F;
				DAY				= RTC[6] & 0x3F;
				YEAR			= RTC[8] & 0xFF;
			}

			p[0]  = (REG_TIME<<16) | (DIAGNOSTICS[0] & 0xFFFF);
			p[1]  = DAY<<24 | MONTH<<16 | HH<<8 | MM;
			p[7]  = (YEAR<<16) & 0x00FF0000;
			p[7] |= (mode<<24);
		}
		else
		{
			p[7] &= 0x00FF0000;
			p[7] |= (mode<<24);
		}

		switch (mode)
		{
			case LOG_ERROR:
			case LOG_PERIODIC:
			{
				p[2] = TOIEEE(REG_WATERCUT_RAW);
				p[3] = TOIEEE(REG_TEMPERATURE_EXTERNAL.calc_val);
				p[4] = TOIEEE(REG_FREQ[OSC_OIL_CALC].calc_val);
				p[5] = TOIEEE(REG_FREQ[OSC_WATER_CALC].calc_val);
				p[6] = TOIEEE(REG_VREF[OSC_OIL_CALC].calc_val);
				break;
			}
            default:
			{/* Note: only assign p[2] through p[6] in calling procedure */
				break;
			}
		}
	}

	{/* write record */
		p[0] 	|= 0x40000000;	/* set flag to show that this is not a starting record */
		p[0] 	&= 0x7FFFFFFF;	/* clear flag to show that this is a record */
        ck 		 = 0;
		
		for (i=0;i<log->log_record_size;i++)
		{/* calculate cksum */
			if (i==0)	/* ignore first two bits */
				ck += ((p[i]>>24) & 0x3F);
			else
				ck += ((p[i]>>24) & 0xFF);
			
			ck += ((p[i]>>16) & 0xFF);
			ck += ((p[i]>>8) & 0xFF);
			ck += ((p[i]) & 0xFF);
		}

		p[log->log_record_size-1]	|= (ck & 0xFFFF);
		addr 						 = (unsigned int*) &log->log_start[(log->log_sector_size*log->log_current_sector) + (log->log_record_size*log->log_n)];

		FLASH_LOCK_BLK(log->log_start + (log->log_sector_size*log->log_current_sector), FALSE);

		for (i=0;i<log->log_record_size;i++)
		{
			*FLASH_LOC 	= PROGRAM;
			addr[i] 	= p[i];
			*FLASH_LOC 	= READ_STATUS;
			status		= *FLASH_LOC;
			
			while (!((status & 0x00800080)==0x00800080))
				status = *FLASH_LOC;
		}
		
		*FLASH_LOC = READ_ARRAY;

		FLASH_LOCK_BLK(log->log_start + (log->log_sector_size*log->log_current_sector), TRUE);

		for (i=0;i<log->log_record_size;i++)
		{/* verify if written to flash correctly */
			if (addr[i] != p[i])
				DIAGNOSTICS[1] |= ERROR2_FLASH_MEMORY_LOG;
		}

		log->log_n++;
		log->log_absolute_index++;
	 /* write record */}

	GIEP;
}

/****************************************************************************/
/* LOGNOW																	*/
/*                                                                          */
/* Description: Does nothing but calls the DataLog function.                */
/*                                                                          */
/* Arguments:   VAR POINTER v - variable                                    */
/*                                                                          */
/* Returns:     void	                                                    */
/*                                                                          */
/* Notes:       Calls DataLog();                                            */
/*                                                                          */
/****************************************************************************/
void LogNow(VAR* v)
{
	DataLog();
}

/****************************************************************************/
/* LOGNOWUSER																*/
/*                                                                          */
/* Description: Does nothing but calls the DataLog function - user context  */
/*                                                                          */
/* Arguments:   VAR POINTER v - variable                                    */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Log in user context.                                        */
/*                                                                          */
/****************************************************************************/
void LogNowUser(VAR* v)
{
	DataLogUser();
}

/****************************************************************************/
/* DATALOGCOUNTER															*/
/*                                                                          */
/* Description: Logs the accumulators                                       */
/*                                                                          */
/* Arguments:   INT i 		- Flow Computer									*/
/* 				BOOL FORCE 	- don't check accumulators                      */
/*                                                                          */
/* Returns:     BOOL 0 if failed 1 if success                               */
/*                                                                          */
/* Notes:       FORCE disables checking accumulators before logging.        */
/*                                                                          */
/****************************************************************************/
BOOL DataLogCounter(int i, BOOL FORCE)
{
	unsigned int rec[SYS_log_record_size];	/* log record 		*/
	int j;									/* record counter 	*/

	if (SYS.log_len<=0)			/* empty log, return */ 
		return 0;
	
	if ((i<0) || (i>=FCMAX)) 	/* flow computer in range */
		return 0;

	if (!FORCE)
	{/* verify if flow computer and accumulators are enabled before logging them */
		if (!FC[i].enable_FLOW) 
			return 0;
		
		if ((!FC[i].enable_GROSS)&&(!FC[i].enable_NET)) 
			return 0;
	}

	_GIEP;

	for (j=0;j<SYS_log_record_size;j++)						/* clear array */
		rec[j] = 0x00000000;
	
	rec[2] = TOIEEE(FC[i].NET_OIL.val);
	rec[3] = TOIEEE(FC[i].NET_WATER.val);
	rec[4] = TOIEEE(FC[i].GROSS_OIL.val);
	rec[5] = TOIEEE(FC[i].GROSS_WATER.val);

	if ( (i==0) && ((ANALYZER_MODE.val&0xFF)==SUB_CCM) )	/* flow computer 1 also has gas totalizer when in CCM mode */
		rec[6] = TOIEEE(CCM_GAS_TOTAL.val);
	
	RecordLogEntry(&FC_Periodic, LOG_FC_1+i, rec);

	GIEP;

	return 1;
}

/****************************************************************************/
/* DATALOGCOUNTERS															*/
/*                                                                          */
/* Description: logs accumulators for all flow computers.	                */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Can be optimized.                                           */
/*				periodic routine to log only if counters are enabled        */
/*																			*/
/****************************************************************************/
void DataLogCounters(void)
{
	int i; /* flow computer counter */
	
	for (i=0;i<FCMAX;i++)	/* record only if FC enabled, etc */
		DataLogCounter(i,0);

	if (FC_Periodic.erased_sector)
	{/* force a record */
		for (i=0;i<FCMAX;i++)
			DataLogCounter(i,1);
			
		FC_Periodic.erased_sector = FALSE;
	}
}

/****************************************************************************/
/* DATALOGUSERCLEARFLAG														*/
/*                                                                          */
/* Description: Sets a global variable to false.                            */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       USER_LOG_EVENT = False                                      */
/*                                                                          */
/****************************************************************************/
void DataLogUserClearFlag(void)
{
	USER_LOG_EVENT = FALSE;
}

/****************************************************************************/
/* DATALOGSYSCLEARFLAG														*/
/*                                                                          */
/* Description: Sets a global variable to false                             */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       SYS_LOG_EVENT = False                                       */
/*                                                                          */
/****************************************************************************/
void DataLogSysClearFlag(void)
{
	SYS_LOG_EVENT = FALSE;
}

/****************************************************************************/
/* DATALOGUSER																*/
/*                                                                          */
/* Description: Logs the 30 user variables                                  */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Called by LOGNOWUSER.                                       */
/*                                                                          */
/****************************************************************************/
void DataLogUser(void)
{
	VAR* v[30];								/* user variable vector 							 */
	unsigned int ui;						/* variable validation  							 */
	unsigned int rec[SYS_log_record_size];	/* log record vector 								 */
	int i,j,k;								/* variable counter; variable offset; size of record */

	_GIEP;

	if (USER_LOG_ENABLED && (SYS.log_len>0))
	{/* USER log is enabled and SYS log is not empty */
		USER_LOG_EVENT = TRUE;

		for (i=0;i<30;i++)		/* initialize variable vector */
			v[i] = &REG_DUMMY;
		
		for (i=0;i<30;i++)
		{/* grab variables from HART table */
			v[i] = HART_Lookup(LOG_VAR_SEL[i], &ui, (int*)&HART_DV_Table);
			
			if (ui==HART_RESP_Invalid_Selection) 
				break;
		}

		k = i/5;
		
		if (i%5)	/* normalize size of record */ 
			k++;

		for (j=0;j<k;j++)
		{/* populate and log record */
			rec[2] = TOIEEE(v[j*5+0]->val);
			rec[3] = TOIEEE(v[j*5+1]->val);
			rec[4] = TOIEEE(v[j*5+2]->val);
			rec[5] = TOIEEE(v[j*5+3]->val);
			rec[6] = TOIEEE(v[j*5+4]->val);
			
			RecordLogEntry(&SYS, LOG_USER1+j, rec);
		}

		/* create events for next USER log entry */
		Timer_Create(&TMR_DATALOG_USER, USER_log_sample_period.val, 1, (int*)DataLogUser, 0);
		Timer_Insert(&TMR_DATALOG_USER,0,TMR_action_replace);
		Timer_Insert(&TMR_CLEAR_USER_LOG_EVENT_FLAG,0,TMR_action_replace);
	}
	else
	{/* Don't log USER variables */
		USER_LOG_EVENT = FALSE;

		Timer_Create(&TMR_DATALOG_USER, 1.0, 1, (int*)DataLogUser, 0);
		Timer_Insert(&TMR_DATALOG_USER,0,TMR_action_replace);
	}

	GIEP;
}

/****************************************************************************/
/* DATALOG																	*/
/*                                                                          */
/* Description: Logs SYS data.                                              */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       RecordLogEntry(&SYS, LOG_PERIODIC, rec);                    */
/*              Called by LOGNOW.                                           */
/*                                                                          */
/****************************************************************************/
void DataLog(void)
{
	unsigned int rec[SYS_log_record_size]; /* log record */

	_GIEP;

	if (SYS_LOG_ENABLED & LOG_PERIODIC && (SYS.log_len>0))
	{/* System Log Enabled AND Not empty */
		SYS_LOG_EVENT = TRUE;

		RecordLogEntry(&SYS, LOG_PERIODIC, rec);
		Timer_Create(&TMR_DATALOG, SYS_log_sample_period.val, 1, (int*)DataLog, 0);
		Timer_Insert(&TMR_DATALOG,0,TMR_action_replace);
		Timer_Insert(&TMR_CLEAR_SYS_LOG_EVENT_FLAG,0,TMR_action_replace);
	}
	else
	{/* Don't log */
		SYS_LOG_EVENT = FALSE;

		Timer_Create(&TMR_DATALOG, 1.0, 1, (int*)DataLog, 0);
		Timer_Insert(&TMR_DATALOG,0,TMR_action_replace);
	}

	GIEP;
}

/****************************************************************************/
/* CFGLOG																	*/
/*                                                                          */
/* Description: Logs a modbus variable                                      */
/*                                                                          */
/* Arguments:   INT id			- port										*/
/*				INT modbus		- slave address								*/
/*				INT func		- modbus function							*/
/* 				INT addr		- variable address							*/
/*				FLOAT val		- value										*/
/*				FLOAT vali		- value immediate?							*/
/*				FLOAT val_orig	- original value?							*/
/*				Float vali_orig - original value immediate?                 */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       Puts all the parameters into a record and logs it.          */
/*                                                                          */
/****************************************************************************/
void CfgLog(int id, int modbus, int func, int addr, float val, int vali, float val_orig, float vali_orig)
{
	unsigned int rec[SYS_log_record_size];	/* log record */

	if (SYS_LOG_ENABLED & LOG_CFG)
	{
		rec[2] = ((id&0x01)<<31) | ((modbus&0x01)<<30) | ((func&0xFF)<<16) | (addr&0xFFFF);
		rec[3] = TOIEEE(val_orig);
		rec[4] = vali_orig;
		rec[5] = TOIEEE(val);
		rec[6] = vali;
		RecordLogEntry(&SYS, LOG_CFG, rec);
	}
}

/****************************************************************************/
/* ERASEENTIRELOG															*/
/*                                                                          */
/* Description: Erases an entire log.                                       */
/*                                                                          */
/* Arguments:   LOG POINTER log - selected log to erase                     */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void EraseEntireLog(LOG* log)
{
	int i;	/* Sector counter */

	if (log->log_len<=0) 
		return;

	_GIEP;
	LEDR_ON;
	LEDG_OFF;
	log->log_current_sector = 0;
	log->log_n 				= 0;

	for (i=0;i<log->log_n_sectors;i++)
	{
		FLASH_ERASE_BLK(log->log_start+(i*log->log_sector_size));
		FLASH_LOCK_BLK(log->log_start+(i*log->log_sector_size), TRUE);
	}

	log->LOG_ERASE = FALSE;

	MarkLogStart(log, log->log_current_sector);

	LEDS_OFF;
	log->erased_sector = TRUE;
	GIEP;
}

/****************************************************************************/
/* FINDNEXTLOGINDEX															*/
/*                                                                          */
/* Description: Gets an n number of records                                 */
/*                                                                          */
/* Arguments:   LOG POINTER log 		- selected log						*/
/*				INT get_last_n_records  - number of records to select		*/
/*				UNSIGNED INT POINTER p  - data vector                       */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void FindNextLogIndex(LOG* log, int get_last_n_records, unsigned int* p)
{
	int i, j;			/* log index; n records counter */
	unsigned int s;		/* start record */
	unsigned int n;		/* number of records to get */
	unsigned int t;		/* working register index */
	BOOL r;				/* break out of while? */

	for (n=0;n<get_last_n_records;n++) 
		p[n] = 0;

	if (log->log_len<=0) 
		return;

	_GIEP;

	i 						= 0;
	log->log_absolute_index = 0;

	for (s=0; s < log->log_n_sectors; s++)
	{/* look for start record */
		if ((log->log_start[log->log_sector_size*s] & 0x40000000)==0) 
			break;
	}

	if (s == log->log_n_sectors)
	{/* reached end with no starting record found */
		log->log_current_sector = 0;
		log->log_absolute_index = 0;
		log->log_n 				= 0;
		
		EraseSector(log, log->log_current_sector);
		MarkLogStart(log, log->log_current_sector);
		EraseSector(log, log->log_current_sector+1);
	}
	else
	{/* starting sector found, search for last record */
		t = s;
		
		while (1)
		{
			r = FALSE;
			
			for (n=0;n<log->log_n_max_per_sector;n++)
			{/* look for next available record */
				if (log->log_start[(log->log_sector_size*s)+(n*log->log_record_size)] & 0x80000000)
				{
					log->log_current_sector  = s;
					log->log_n 				 = n;
					log->log_absolute_index += n;
					r 						 = TRUE;
					
					break;
				}
				else if (get_last_n_records>0)
				{
					if (i>=get_last_n_records)
					{/* shift */
						for (j=1;j<get_last_n_records;j++)
							p[j-1] = p[j];
						
						i = get_last_n_records - 1;
					}
					
					p[i] = (unsigned int) &log->log_start[(log->log_sector_size*s)+(n*log->log_record_size)];
					i++;
				}
			}
			
			if (r) 
				break;

			s++;
			log->log_absolute_index += log->log_n_max_per_sector;

			if (s >= log->log_n_sectors)
				s -= log->log_n_sectors;
			
			if (s == t)
			{/* wrapped around */
				log->log_current_sector = s;
				log->log_n 				= 0;
				log->log_absolute_index = log->log_n_max_per_sector * (log->log_n_sectors-1);
				
				EraseSector(log, log->log_current_sector);
				MarkLogStart(log, log->log_current_sector+1);
				break;
			}
		}
	}

	GIEP;
	
	return;
}

/****************************************************************************/
/* FINDLASTLOGRECORD														*/
/*                                                                          */
/* Description: Finds the next log index                                    */
/*                                                                          */
/* Arguments:   LOG POINTER log - selected log								*/
/*				INT mode		- mode                                      */
/*                                                                          */
/* Returns:     UNSIGNED INT POINTER p - return the record                  */
/*                                                                          */
/* Notes:       Don't exactly know what record it selects.  Need to look at */
/* 				more thouroughly.                                           */
/*                                                                          */
/****************************************************************************/
unsigned int* FindLastLogRecord(LOG* log, int mode)
{
	unsigned int* p;									/* interested packet 										*/
	unsigned int* start;								/* start index 												*/
	unsigned int ck,cksum, log_n, log_current_sector;	/* check; checksum; number of records; current log sector 	*/
	int i;												/* log record counter 										*/

	if (log->log_len<=0) 
		return (unsigned int*)0;

	_GIEP;
	log_n 				= log->log_n;
	log_current_sector 	= log->log_current_sector;
	start				= (unsigned int*) &log->log_start[(log->log_sector_size*log_current_sector) + (log->log_record_size*log_n)];
	p 					= start;

	while(1)
	{/* find it, verify it, etc */
		if ((p[log->log_record_size-1]>>24) == mode)
		{/* found packet, verify cksum */
			ck 		= 0;
			cksum 	= p[log->log_record_size-1] & 0x0000FFFF;

			for (i=0;i<log->log_record_size;i++)
			{/* check packet */
				if (i==0)	/* ignore first two bits */
					ck += ((p[i]>>24) & 0x3F);
				else
					ck += ((p[i]>>24) & 0xFF);
				
				ck += ((p[i]>>16) & 0xFF);

				if (i!=(log->log_record_size-1))
				{
					ck += ((p[i]>>8) & 0xFF);
					ck += ((p[i]) & 0xFF);
				}
			}

			ck &= 0xFFFF;

			if (ck==cksum)	/* passes checksum */ 
				break;
		}

		if (log_n > 0)
			log_n--;
		else
		{
			if (log_current_sector > 0)
				log_current_sector--;
			else
				log_current_sector = log->log_n_sectors - 1;
			
			log_n = log->log_n_max_per_sector-1;
		}

		p = (unsigned int*) &log->log_start[(log->log_sector_size*log_current_sector) + (log->log_record_size*log_n)];

		if ((p[0]&0x40000000) == 0x00000000)
		{/* reached beginning of log */
			p = (unsigned int*) 0;
			break;
		}
		else if (p==start)
		{/* reached starting point */
			p = (unsigned int*) 0;
			break;
		}
	}

	GIEP;

	return p;
}
