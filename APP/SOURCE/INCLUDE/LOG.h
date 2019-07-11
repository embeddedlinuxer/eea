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
/* File Name: LOG.H							    							*/
/* 									    									*/
/* File Description:	This defines the abstract data type of LOG which is */
/* what it sounds like.  It records variables for output later on so you can*/
/* potentially diagnose system issues.	                                    */
/*                                                                          */
/* STRUCTS:	LOG 	- defines a log memory area.  Logs are not lists but    */
/*					rather memory areas that can be later probed rather     */
/*					printed out as a list.		    						*/
/*									    									*/
/****************************************************************************/

#ifndef _LOG
#define _LOG

#ifdef LOG_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

/******************************************************************************************************************************************************************************/
/* LOG RECORD PERIODIC & LOG RECORD ERROR                                                                                                                                     */
/******************************************************************************************************************************************************************************/
/* length   |1|1|      14       |       16       |       32BCD    |    32IEEE      |    32IEEE      |    32IEEE      |    32IEEE      |    32IEEE      |  8   | 8BCD |  16   |*/
/* contents |0|0|   50ms Timer  |  DIAGNOSTICS   | DAY|MONTH|HH|MM|  Raw Watercut  |  Temperature   |   Freq Oil     |   Freq Water   |     RP oil     | MODE | YEAR | CKSUM |*/
/******************************************************************************************************************************************************************************/

/******************************************************************************************************************************************************************************/
/* LOG RECORD USER                                                                                                                                                            */
/******************************************************************************************************************************************************************************/
/* length   |1|1|      14       |       16       |       32BCD    |    32IEEE      |    32IEEE      |    32IEEE      |    32IEEE      |    32IEEE      |  8   | 8BCD |  16   |*/
/* contents |0|0|   50ms Timer  |  DIAGNOSTICS   | DAY|MONTH|HH|MM|     VAR1       |     VAR2       |     VAR3       |     VAR4       |     VAR5       | MODE | YEAR | CKSUM |*/
/******************************************************************************************************************************************************************************/

/*******************************************************************************************************************************************/
/* LOG RECORD CFG                                                                                                                          */
/*******************************************************************************************************************************************/
/* length   |1|1|      14       |       16       |       32BCD    |          32         |  32  |  32  |  32  |  32  |  8   | 8BCD |  16   |*/
/* contents |0|0|   50ms Timer  |  DIAGNOSTICS   | DAY|MONTH|HH|MM|id/protocol/func/addr|      |      | float|  int | MODE | YEAR | CKSUM |*/
/*******************************************************************************************************************************************/

#define LOG_PERIODIC	0x01
#define LOG_CFG			0x02
#define	LOG_ERROR		0x04
#define	LOG_USER1		0x05
#define	LOG_USER2		0x06
#define	LOG_USER3		0x07
#define	LOG_USER4		0x08
#define	LOG_USER5		0x09
#define	LOG_USER6		0x0A

#define	LOG_FC_1		0x0B
#define	LOG_FC_2		0x0C
#define	LOG_FC_3		0x0D

#define	LOG_EMPTY		0xFF

typedef struct	{
					unsigned int log_len;
					unsigned int log_n_sectors;
					unsigned int log_n_max_per_sector;
					unsigned int log_n;
					unsigned int log_current_sector;
					unsigned int log_absolute_index;
					unsigned int* log_start;
					unsigned int log_sector_size;
					unsigned int log_record_size;
					unsigned int log_end;
					unsigned int LOG_ERASE;
					BOOL		 erased_sector;
				} LOG;

#define SYS_log_record_size 8
_EXTERN LOG SYS;
#pragma DATA_SECTION(SYS_log_sample_period,"CFG")
_EXTERN VAR SYS_log_sample_period;
#pragma DATA_SECTION(SYS_LOG_ENABLED,"CFG")
_EXTERN int SYS_LOG_ENABLED;
#pragma DATA_SECTION(USER_log_sample_period,"CFG")
_EXTERN VAR USER_log_sample_period;
#pragma DATA_SECTION(USER_LOG_ENABLED,"CFG")
_EXTERN int USER_LOG_ENABLED;
_EXTERN int USER_LOG_EVENT;
_EXTERN int SYS_LOG_EVENT;

#define CCM_Records_log_record_size 18
_EXTERN LOG CCM_Records;
#pragma DATA_SECTION(CCM_Record_view,"CFG")
_EXTERN REGVECT CCM_Record_view;

#define FC_Periodic_log_record_size 8
_EXTERN LOG FC_Periodic;

#ifdef LOG_H
#pragma CODE_SECTION(InitLog,"internal_RAM")
#pragma CODE_SECTION(FindNextLogIndex,"internal_RAM")
#pragma CODE_SECTION(FindLastLogRecord,"internal_RAM")
#pragma CODE_SECTION(LogNow,"internal_RAM")
#pragma CODE_SECTION(LogNowUser,"internal_RAM")
#pragma CODE_SECTION(DataLog,"internal_RAM")
#pragma CODE_SECTION(DataLogUser,"internal_RAM")
#pragma CODE_SECTION(DataLogCounters,"internal_RAM")
#pragma CODE_SECTION(DataLogCounter,"internal_RAM")
#pragma CODE_SECTION(CfgLog,"internal_RAM")
#pragma CODE_SECTION(EraseEntireLog,"internal_RAM")
#pragma CODE_SECTION(EraseSector,"internal_RAM")
#pragma CODE_SECTION(MarkLogStart,"internal_RAM")
#pragma CODE_SECTION(RecordLogEntry,"internal_RAM")
#endif

_EXTERN void InitLog(void);
_EXTERN void FindNextLogIndex(LOG* log, int get_last_n_records, unsigned int* p);
_EXTERN unsigned int* FindLastLogRecord(LOG* log, int mode);
_EXTERN void LogNow(VAR* v);
_EXTERN void LogNowUser(VAR* v);
_EXTERN void DataLog(void);
_EXTERN void DataLogUser(void);
_EXTERN void DataLogUserClearFlag(void);
_EXTERN void DataLogSysClearFlag(void);
_EXTERN void DataLogCounters(void);
_EXTERN BOOL DataLogCounter(int i, BOOL FORCE);
_EXTERN void CfgLog(int id, int modbus, int func, int addr, float val, int vali, float val_orig, float vali_orig);
_EXTERN void EraseEntireLog(LOG* log);
_EXTERN void EraseSector(LOG* log, unsigned int s);
_EXTERN void MarkLogStart(LOG* log, unsigned int s);
_EXTERN void RecordLogEntry(LOG* log, int mode, unsigned int* p);

#undef _EXTERN
#undef LOG_H
#endif
