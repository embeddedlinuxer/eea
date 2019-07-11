;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Oct 31 10:49:06 2011                                *
;******************************************************************************
	.regalias	; enable floating point register aliases
fp	.set	ar3
FP	.set	ar3
;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Optimization       : Always Choose Smaller Code Size                     *
;*   Memory             : Big Memory Model                                    *
;*   Float-to-Int       : Normal Conversions (round toward zero)              *
;*   Multiply           : in Software (32 bits)                               *
;*   Memory Info        : Unmapped Memory Exists                              *
;*   Repeat Loops       : Use RPTS and/or RPTB                                *
;*   Calls              : Normal Library ASM calls                            *
;*   Debug Info         : Standard TI Debug Information                       *
;******************************************************************************
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_4P4.AAA 
	.file	"flash.c"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\GLBLS.H"
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\format.h"
	.stag	.fake0,128
	.member	_flags,0,14,8,32
	.member	_fwidth,32,4,8,32
	.member	_precision,64,4,8,32
	.member	_conv,96,2,8,32
	.eos
	.sym	__PFIELD,0,8,13,128,.fake0
	.stag	.fake1,3200
	.member	_flags,0,14,8,32
	.member	_fwidth,32,4,8,32
	.member	_precision,64,4,8,32
	.member	_scanset,96,50,8,3072,,96
	.member	_conv,3168,2,8,32
	.eos
	.sym	__SFIELD,0,8,13,3200,.fake1
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\string.h"
	.sym	_size_t,0,14,13,32
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\stdio.h"
	.stag	.fake2,224
	.member	_fd,0,4,8,32
	.member	_buf,32,28,8,32
	.member	_pos,64,28,8,32
	.member	_bufend,96,28,8,32
	.member	_buff_stop,128,28,8,32
	.member	_flags,160,14,8,32
	.member	_index,192,4,8,32
	.eos
	.sym	_FILE,0,8,13,224,.fake2
	.sym	_fpos_t,0,5,13,32
	.stag	.fake3,544
	.member	_name,0,50,8,288,,9
	.member	_flags,288,13,8,32
	.member	_OPEN,320,148,8,32
	.member	_CLOSE,352,148,8,32
	.member	_READ,384,148,8,32
	.member	_WRITE,416,148,8,32
	.member	_LSEEK,448,149,8,32
	.member	_UNLINK,480,148,8,32
	.member	_RENAME,512,148,8,32
	.eos
	.sym	__DEVICE,0,8,13,544,.fake3
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\stdlib.h"
	.sym	_wchar_t,0,2,13,32
	.stag	__div_t,64
	.member	_quot,0,4,8,32
	.member	_rem,32,4,8,32
	.eos
	.sym	_div_t,0,8,13,64,__div_t
	.sym	_ldiv_t,0,8,13,64,__div_t
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\math.h"
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\time.h"
	.sym	_clock_t,0,15,13,32
	.sym	_time_t,0,15,13,32
	.stag	_tm,288
	.member	_tm_sec,0,4,8,32
	.member	_tm_min,32,4,8,32
	.member	_tm_hour,64,4,8,32
	.member	_tm_mday,96,4,8,32
	.member	_tm_mon,128,4,8,32
	.member	_tm_year,160,4,8,32
	.member	_tm_wday,192,4,8,32
	.member	_tm_yday,224,4,8,32
	.member	_tm_isdst,256,4,8,32
	.eos
	.stag	_tmzone,320
	.member	_daylight,0,3,8,32
	.member	_timezone,32,5,8,32
	.member	_tzname,64,50,8,128,,4
	.member	_dstname,192,50,8,128,,4
	.eos
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\LIST.H"
	.stag	.fake4,96
	.member	_head,0,20,8,32
	.member	_tail,32,20,8,32
	.member	_n,64,4,8,32
	.eos
	.sym	_LIST,0,8,13,96,.fake4
	.stag	.fake5,64
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.eos
	.sym	_GENERIC,0,8,13,64,.fake5
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\VARIABLE.H"
	.stag	.fake6,1376
	.member	_val,0,6,8,32
	.member	_vect1,32,20,8,32
	.member	_vect2,64,20,8,32
	.member	_STAT,96,4,8,32
	.member	_dampening,128,6,8,32
	.member	_damp_count,160,4,8,32
	.member	_aux,192,4,8,32
	.member	_val1,224,6,8,32
	.member	_val2,256,6,8,32
	.member	_calc_val,288,11,8,64
	.member	_base_val,352,11,8,64
	.member	_unit,416,4,8,32
	.member	_calc_unit,448,4,8,32
	.member	_class,480,4,8,32
	.member	_scale,512,6,8,32
	.member	_scale_long,544,6,8,32
	.member	_bound_hi_set,576,6,8,32
	.member	_bound_lo_set,608,6,8,32
	.member	_alarm_hi_set,640,6,8,32
	.member	_alarm_lo_set,672,6,8,32
	.member	_name,704,50,8,672,,21
	.eos
	.sym	_VAR,0,8,13,1376,.fake6
	.stag	.fake7,96
	.member	_val,0,14,8,32
	.member	_vect,32,20,8,32
	.member	_vect2,64,20,8,32
	.eos
	.sym	_COIL,0,8,13,96,.fake7
	.stag	.fake8,64
	.member	_val,0,4,8,32
	.member	_vect,32,20,8,32
	.eos
	.sym	_REGVECT,0,8,13,64,.fake8
	.stag	.fake9,96
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_v,64,24,8,32,.fake6
	.eos
	.sym	_DPKT,0,8,13,96,.fake9
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\BUFFER.H"
	.stag	.fake10,9824
	.member	_head,0,4,8,32
	.member	_tail,32,4,8,32
	.member	_n,64,4,8,32
	.member	_GSEED,96,14,8,32
	.member	_CRC16,128,14,8,32
	.member	_buff,160,62,8,9600,,300
	.member	_sum,9760,4,8,32
	.member	_locked,9792,14,8,32
	.eos
	.sym	_BFR,0,8,13,9824,.fake10
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\UNITS.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\TIMER.H"
	.stag	.fake11,320
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.member	_parent,128,20,8,32
	.member	_n,160,4,8,32
	.member	_prev_n,192,4,8,32
	.member	_countdown,224,4,8,32
	.member	_preset_time,256,4,8,32
	.member	_t,288,6,8,32
	.eos
	.sym	_TPKT,0,8,13,320,.fake11
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\I2C.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\ERRORS.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\SERIAL.H"
	.stag	.fake12,2272
	.member	_Slave,0,4,8,32
	.member	_SNUM,32,4,8,32
	.member	_PRESENT,64,14,8,32
	.member	_TX_complete,96,14,8,32
	.member	_RX_pending,128,14,8,32
	.member	_BUSY,160,14,8,32
	.member	_IGNORE_RX,192,14,8,32
	.member	_STAT,224,12,8,32
	.member	_DAT,256,12,8,32
	.member	_broadcast,288,14,8,32
	.member	_TMR_Network_WDOG,320,4,8,32
	.member	_TMR_EOT_Delay,352,4,8,32
	.member	_TMR_Prefix_Delay,384,4,8,32
	.member	_TMR_Suffix_Delay,416,4,8,32
	.member	_TMR_Char,448,4,8,32
	.member	_TMR_Poll,480,8,8,320,.fake11
	.member	_TMR_Retry,800,8,8,320,.fake11
	.member	_nr,1120,4,8,32
	.member	_Received_PKT,1152,14,8,32
	.member	_TMR_enabled,1184,14,8,32
	.member	_tvector,1216,20,8,32
	.member	_pvector,1248,20,8,32
	.member	_pvector_main,1280,20,8,32
	.member	_tvector_main,1312,20,8,32
	.member	_fvector,1344,20,8,32
	.member	_actual_baud_rate,1376,6,8,32
	.member	_c,1408,14,8,32
	.member	_r,1440,14,8,32
	.member	_n,1472,4,8,32
	.member	_n_exp,1504,4,8,32
	.member	_ai,1536,4,8,32
	.member	_start,1568,4,8,32
	.member	_i,1600,4,8,32
	.member	_i_main,1632,4,8,32
	.member	_func,1664,14,8,32
	.member	_ERROR_COUNT,1696,14,8,32
	.member	_WDOG_COUNT,1728,14,8,32
	.member	_INV_CMD_COUNT,1760,14,8,32
	.member	_INV_PKT_COUNT,1792,14,8,32
	.member	_SUCCESS,1824,14,8,32
	.member	_NUM_RETRIES,1856,14,8,32
	.member	_FLAG1,1888,14,8,32
	.member	_FLAG2,1920,14,8,32
	.member	_FLAG3,1952,14,8,32
	.member	_LONG_ADDRESS,1984,14,8,32
	.member	_MASTER,2016,8,8,96,.fake4
	.member	_p,2112,20,8,32
	.member	_data,2144,14,8,32
	.member	_f,2176,22,8,32
	.member	_l,2208,30,8,32
	.member	_failed,2240,14,8,32
	.eos
	.sym	_PORTV,0,8,13,2272,.fake12
	.stag	.fake13,11232
	.member	_PREFIX,0,8,8,1376,.fake6
	.member	_SUFFIX,1376,8,8,1376,.fake6
	.member	_NETWDOG,2752,8,8,1376,.fake6
	.member	_Slave_ID,4128,8,8,1376,.fake6
	.member	_Baud_Rate,5504,8,8,1376,.fake6
	.member	_Parity,6880,4,8,32
	.member	_n_bits,6912,4,8,32
	.member	_STP,6944,4,8,32
	.member	_N,6976,4,8,32
	.member	_N_retry,7008,4,8,32
	.member	_EOT_Delay,7040,8,8,1376,.fake6
	.member	_Retry_Time,8416,8,8,1376,.fake6
	.member	_Num_Retry,9792,8,8,1376,.fake6
	.member	_poll_time,11168,4,8,32
	.member	_timeout,11200,4,8,32
	.eos
	.sym	_PORTC,0,8,13,11232,.fake13
	.stag	.fake14,672
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_rxvect,64,20,8,32
	.member	_txvect,96,20,8,32
	.member	_n,128,4,8,32
	.member	_slave,160,4,8,32
	.member	_func,192,4,8,32
	.member	_addr,224,4,8,32
	.member	_num,256,4,8,32
	.member	_v,288,54,8,320,,10
	.member	_flt_ptr,608,22,8,32
	.member	_int_ptr,640,20,8,32
	.eos
	.sym	_MPKT,0,8,13,672,.fake14
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\ADC.H"
	.stag	.fake15,9952
	.member	_CURRENT,0,8,8,1376,.fake6
	.member	_CURRENT_PERCENT_OF_RANGE,1376,8,8,1376,.fake6
	.member	_LRV,2752,8,8,1376,.fake6
	.member	_URV,4128,8,8,1376,.fake6
	.member	_TRIM_MIN,5504,8,8,1376,.fake6
	.member	_TRIM_MAX,6880,8,8,1376,.fake6
	.member	_VALUE,8256,8,8,1376,.fake6
	.member	_TRIM_MIN_C,9632,6,8,32
	.member	_TRIM_MAX_C,9664,6,8,32
	.member	_v,9696,8,8,64,.fake8
	.member	_class,9760,8,8,64,.fake8
	.member	_unit,9824,8,8,64,.fake8
	.member	_present,9888,14,8,32
	.member	_val,9920,6,8,32
	.eos
	.sym	_LOOPDATA_I,0,8,13,9952,.fake15
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\DAC.H"
	.stag	.fake16,13120
	.member	_CURRENT,0,8,8,1376,.fake6
	.member	_CURRENT_PERCENT_OF_RANGE,1376,8,8,1376,.fake6
	.member	_LRV,2752,8,8,1376,.fake6
	.member	_URV,4128,8,8,1376,.fake6
	.member	_TRIM_MIN,5504,8,8,1376,.fake6
	.member	_TRIM_MAX,6880,8,8,1376,.fake6
	.member	_TRIM_MIN_C,8256,6,8,32
	.member	_TRIM_MAX_C,8288,6,8,32
	.member	_ALARM_SELECT,8320,4,8,32
	.member	_MINSPAN,8352,6,8,32
	.member	_v,8384,8,8,64,.fake8
	.member	_class,8448,8,8,64,.fake8
	.member	_unit,8512,8,8,64,.fake8
	.member	_MANUAL,8576,4,8,32
	.member	_MANUAL_PERCENT,8608,6,8,32
	.member	_REVERSE,8640,4,8,32
	.member	_PID_input,8672,6,8,32
	.member	_PID_setpoint,8704,6,8,32
	.member	_P,8736,8,8,1376,.fake6
	.member	_I,10112,8,8,1376,.fake6
	.member	_D,11488,8,8,1376,.fake6
	.member	_pid_lastcycle,12864,4,8,32
	.member	_pid_output,12896,6,8,32
	.member	_pid_propband,12928,6,8,32
	.member	_pid_error,12960,6,8,32
	.member	_pid_bias,12992,6,8,32
	.member	_present,13024,14,8,32
	.member	_PID_fail,13056,14,8,32
	.member	_PID_enable_failsafe,13088,14,8,32
	.eos
	.sym	_LOOPDATA_O,0,8,13,13120,.fake16
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\EXECUTE.H"
	.stag	.fake17,128
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.eos
	.sym	_EPKT,0,8,13,128,.fake17
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\FLASH.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\LOG.H"
	.stag	.fake18,384
	.member	_log_len,0,14,8,32
	.member	_log_n_sectors,32,14,8,32
	.member	_log_n_max_per_sector,64,14,8,32
	.member	_log_n,96,14,8,32
	.member	_log_current_sector,128,14,8,32
	.member	_log_absolute_index,160,14,8,32
	.member	_log_start,192,30,8,32
	.member	_log_sector_size,224,14,8,32
	.member	_log_record_size,256,14,8,32
	.member	_log_end,288,14,8,32
	.member	_LOG_ERASE,320,14,8,32
	.member	_erased_sector,352,14,8,32
	.eos
	.sym	_LOG,0,8,13,384,.fake18
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\DEMO.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\SELFTEST.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\MENU.H"
	.stag	.fake19,16064
	.member	_INIT,0,14,8,32
	.member	_FRESH,32,14,8,32
	.member	_MENU,64,14,8,32
	.member	_SELECT,96,14,8,32
	.member	_VALUE,128,14,8,32
	.member	_ENTER,160,14,8,32
	.member	_DIR,192,4,8,32
	.member	_DIR_CHANGE,224,14,8,32
	.member	_M,256,14,8,32
	.member	_S,288,14,8,32
	.member	_V,320,14,8,32
	.member	_E,352,14,8,32
	.member	_CURSOR_ENABLED,384,14,8,32
	.member	_CURSOR_ROW,416,4,8,32
	.member	_CURSOR_COL,448,4,8,32
	.member	_CNT,480,14,8,32
	.member	_MENU_CNT,512,14,8,32
	.member	_SELECT_CNT,544,14,8,32
	.member	_VALUE_CNT,576,14,8,32
	.member	_k,608,14,8,32
	.member	_MODE_LOCKDOWN,640,14,8,32
	.member	_MODE_WPROT,672,14,8,32
	.member	_MODE_DEFINE,704,14,8,32
	.member	_MODE_USER,736,14,8,32
	.member	_MODE_TECH,768,14,8,32
	.member	_MODE_NORMAL,800,14,8,32
	.member	_PAGE,832,14,8,32
	.member	_SUBPAGE,864,14,8,32
	.member	_MENU_TRAP,896,14,8,32
	.member	_DIP,928,62,8,128,,4
	.member	_tmpf,1056,54,8,320,,10
	.member	_tmpi,1376,52,8,320,,10
	.member	_str,1696,242,8,12928,,4,101
	.member	_tmpv,14624,8,8,1376,.fake6
	.member	_ptmpv,16000,24,8,32,.fake6
	.member	_tbl,16032,20,8,32
	.eos
	.sym	_MENU_STRUCT,0,8,13,16064,.fake19
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\FLOAT1.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\GLBLS.H"
	.stag	.fake20,480
	.member	_i,0,4,8,32
	.member	_Watercut,32,6,8,32
	.member	_Temperature,64,6,8,32
	.member	_Salinity,96,6,8,32
	.member	_Frequency_Oil,128,6,8,32
	.member	_Frequency_Water,160,6,8,32
	.member	_RefPower_Oil,192,6,8,32
	.member	_RefPower_Water,224,6,8,32
	.member	_Dadj,256,6,8,32
	.member	_Time_HH,288,4,8,32
	.member	_Time_MM,320,4,8,32
	.member	_Time_MONTH,352,4,8,32
	.member	_Time_DAY,384,4,8,32
	.member	_Time_DAY_OF_WEEK,416,4,8,32
	.member	_Time_YEAR,448,4,8,32
	.eos
	.sym	_CAPDATA,0,8,13,480,.fake20
	.stag	.fake21,640
	.member	_Watercut,0,54,8,64,,2
	.member	_Temperature,64,54,8,64,,2
	.member	_Salinity,128,54,8,64,,2
	.member	_Frequency_Oil,192,54,8,64,,2
	.member	_Frequency_Water,256,54,8,64,,2
	.member	_RefPower_Oil,320,54,8,64,,2
	.member	_RefPower_Water,384,54,8,64,,2
	.member	_Dadj,448,54,8,64,,2
	.member	_Time_MONTH_DAY_HH_MM,512,52,8,64,,2
	.member	_CLRSTAT_Time_YEAR,576,52,8,64,,2
	.eos
	.sym	_CAPRECORD,0,8,13,640,.fake21
	.stag	.fake22,800
	.member	_Start_HH,0,4,8,32
	.member	_Start_MM,32,4,8,32
	.member	_Start_SS,64,4,8,32
	.member	_Start_MONTH,96,4,8,32
	.member	_Start_DAY,128,4,8,32
	.member	_Start_YEAR,160,4,8,32
	.member	_Stop_HH,192,4,8,32
	.member	_Stop_MM,224,4,8,32
	.member	_Stop_SS,256,4,8,32
	.member	_Stop_MONTH,288,4,8,32
	.member	_Stop_DAY,320,4,8,32
	.member	_Stop_YEAR,352,4,8,32
	.member	_stream,384,6,8,32
	.member	_elapsed_s,416,6,8,32
	.member	_duration,448,6,8,32
	.member	_purge,480,6,8,32
	.member	_gross_gas,512,6,8,32
	.member	_gross_oil,544,6,8,32
	.member	_gross_water,576,6,8,32
	.member	_gross_total,608,6,8,32
	.member	_gas24,640,6,8,32
	.member	_oil24,672,6,8,32
	.member	_water24,704,6,8,32
	.member	_total24,736,6,8,32
	.member	_watercut,768,6,8,32
	.eos
	.sym	_CCMRECORD,0,8,13,800,.fake22
	.stag	.fake23,224
	.member	_SNUM,0,4,8,32
	.member	_ADDR,32,4,8,32
	.member	_BNUM,64,4,8,32
	.member	_REV,96,4,8,32
	.member	_MONTH,128,4,8,32
	.member	_DAY,160,4,8,32
	.member	_YEAR,192,4,8,32
	.eos
	.sym	_BOARD,0,8,13,224,.fake23
	.stag	.fake24,320
	.member	_MODE,0,4,8,32
	.member	_STATUS_MASK,32,4,8,32
	.member	_v,64,8,8,64,.fake8
	.member	_setpoint,128,6,8,32
	.member	_ON,160,8,8,96,.fake7
	.member	_class,256,4,8,32
	.member	_unit,288,4,8,32
	.eos
	.sym	_RELAYDATA,0,8,13,320,.fake24
	.stag	.fake25,11968
	.member	_diag,0,6,8,32
	.member	_mfr,32,6,8,32
	.member	_u_mfr,64,4,8,32
	.member	_density,96,6,8,32
	.member	_u_density,128,4,8,32
	.member	_density_PDI_corrected,160,6,8,32
	.member	_density_corrected,192,6,8,32
	.member	_u_density_corrected,224,4,8,32
	.member	_T,256,6,8,32
	.member	_u_T,288,4,8,32
	.member	_vfr,320,6,8,32
	.member	_u_vfr,352,4,8,32
	.member	_visc,384,6,8,32
	.member	_u_visc,416,4,8,32
	.member	_press,448,6,8,32
	.member	_mass_total,480,6,8,32
	.member	_u_m,512,4,8,32
	.member	_volume_total,544,6,8,32
	.member	_u_v,576,4,8,32
	.member	_u_P,608,4,8,32
	.member	_P,640,6,8,32
	.member	_mass_inv,672,6,8,32
	.member	_volume_inv,704,6,8,32
	.member	_raw_tube_freq,736,6,8,32
	.member	_left_pickup_value,768,6,8,32
	.member	_right_pickup_value,800,6,8,32
	.member	_drive_gain,832,6,8,32
	.member	_damp_flow_rate,864,8,8,1376,.fake6
	.member	_damp_density,2240,8,8,1376,.fake6
	.member	_mfr_cutoff,3616,8,8,1376,.fake6
	.member	_vfr_cutoff,4992,8,8,1376,.fake6
	.member	_mcf,6368,8,8,1376,.fake6
	.member	_address,7744,8,8,1376,.fake6
	.member	_mass_unit,9120,8,8,1376,.fake6
	.member	_density_cutoff,10496,8,8,1376,.fake6
	.member	_Z,11872,8,8,96,.fake7
	.eos
	.sym	_CORIOLIS,0,8,13,11968,.fake25
	.stag	.fake26,288
	.member	_p_delta,0,6,8,32
	.member	_p_static,32,6,8,32
	.member	_T,64,6,8,32
	.member	_diag0,96,6,8,32
	.member	_diag1,128,6,8,32
	.member	_diag2,160,6,8,32
	.member	_u_DP,192,4,8,32
	.member	_u_SP,224,4,8,32
	.member	_u_PT,256,4,8,32
	.eos
	.sym	_PRESSURE,0,8,13,288,.fake26
	.stag	.fake27,192
	.member	_T,0,6,8,32
	.member	_etc0,32,6,8,32
	.member	_etc1,64,6,8,32
	.member	_etc2,96,6,8,32
	.member	_etc3,128,6,8,32
	.member	_etc4,160,6,8,32
	.eos
	.sym	_TMPT,0,8,13,192,.fake27
	.stag	.fake28,37184
	.member	_watercut,0,8,8,1376,.fake6
	.member	_T,1376,8,8,1376,.fake6
	.member	_pressure,2752,8,8,1376,.fake6
	.member	_density,4128,8,8,1376,.fake6
	.member	_density_PDI_corrected,5504,6,8,32
	.member	_density_adj,5536,6,8,32
	.member	_density_oilST,5568,8,8,1376,.fake6
	.member	_density_oil,6944,8,8,1376,.fake6
	.member	_density_waterST,8320,8,8,1376,.fake6
	.member	_density_water,9696,8,8,1376,.fake6
	.member	_salinity,11072,8,8,1376,.fake6
	.member	_API_TABLE,12448,4,8,32
	.member	_a,12480,6,8,32
	.member	_Meter_Factor,12512,8,8,1376,.fake6
	.member	_Shrinkage,13888,8,8,1376,.fake6
	.member	_VCFo,15264,6,8,32
	.member	_VCFw,15296,6,8,32
	.member	_net_watercut,15328,6,8,32
	.member	_net_watercut_mass,15360,6,8,32
	.member	_Dadj,15392,6,8,32
	.member	_NET_FLOW_OIL,15424,8,8,1376,.fake6
	.member	_NET_FLOW_WATER,16800,8,8,1376,.fake6
	.member	_NET_FLOW_TOTAL,18176,8,8,1376,.fake6
	.member	_NET_OIL,19552,8,8,1376,.fake6
	.member	_NET_WATER,20928,8,8,1376,.fake6
	.member	_NET_TOTAL,22304,8,8,1376,.fake6
	.member	_GROSS_OIL,23680,8,8,1376,.fake6
	.member	_GROSS_WATER,25056,8,8,1376,.fake6
	.member	_GROSS_TOTAL,26432,8,8,1376,.fake6
	.member	_FLOW_OIL,27808,8,8,1376,.fake6
	.member	_FLOW_WATER,29184,8,8,1376,.fake6
	.member	_FLOW_TOTAL,30560,8,8,1376,.fake6
	.member	_PULSES_PER_ACCUM_UNIT,31936,14,8,32
	.member	_PULSE_TOTAL,31968,8,8,1376,.fake6
	.member	_PULSE_FLOW,33344,8,8,1376,.fake6
	.member	_PULSE_FREQ,34720,8,8,1376,.fake6
	.member	_PULSE_COUNTER,36096,14,8,32
	.member	_PULSE,36128,4,8,32
	.member	_CNT,36160,4,8,32
	.member	_PULSE_DELTA,36192,4,8,32
	.member	_PULSE_FACTOR,36224,6,8,32
	.member	_PULSE_STAT,36256,4,8,32
	.member	_enable_NET,36288,14,8,32
	.member	_enable_GROSS,36320,14,8,32
	.member	_enable_FLOW,36352,14,8,32
	.member	_enable_DENSITY,36384,14,8,32
	.member	_enable_PULSE,36416,14,8,32
	.member	_flow_class,36448,8,8,64,.fake8
	.member	_flow_unit,36512,8,8,64,.fake8
	.member	_accum_unit,36576,8,8,64,.fake8
	.member	_Z,36640,8,8,96,.fake7
	.member	_USE_PDI_TEMP,36736,14,8,32
	.member	_USE_PDI_SALINITY,36768,14,8,32
	.member	_USE_PDI_WATERCUT,36800,14,8,32
	.member	_CALC_WC_DENSITY,36832,14,8,32
	.member	_MAN_TEMP,36864,14,8,32
	.member	_MAN_SALINITY,36896,14,8,32
	.member	_MAN_WATERCUT,36928,14,8,32
	.member	_MAN_DENSITY,36960,14,8,32
	.member	_MAN_PRESSURE,36992,14,8,32
	.member	_MAN_FLOW,37024,14,8,32
	.member	_AUTHORIZATION_CODE1,37056,14,8,32
	.member	_AUTHORIZATION_CODE2,37088,14,8,32
	.member	_AUTHORIZATION_CODE3,37120,14,8,32
	.member	_AUTHORIZATION_CODE4,37152,14,8,32
	.eos
	.sym	_FLOW_COMP,0,8,13,37184,.fake28
	.stag	.fake29,2144
	.member	_WATERCUT,0,6,8,32
	.member	_FLOW_RATE,32,6,8,32
	.member	_TEMPERATURE,64,6,8,32
	.member	_DENSITY,96,6,8,32
	.member	_VISCOSITY,128,6,8,32
	.member	_iWATERCUTz,160,4,8,32
	.member	_iWATERCUT,192,4,8,32
	.member	_iFLOW_RATE,224,4,8,32
	.member	_iTEMPERATURE,256,4,8,32
	.member	_iDENSITY,288,4,8,32
	.member	_iVISCOSITY,320,4,8,32
	.member	_maxWATERCUTz,352,6,8,32
	.member	_maxWATERCUT,384,6,8,32
	.member	_maxFLOW_RATE,416,6,8,32
	.member	_maxTEMPERATURE,448,6,8,32
	.member	_maxDENSITY,480,6,8,32
	.member	_maxVISCOSITY,512,6,8,32
	.member	_minWATERCUTz,544,6,8,32
	.member	_minWATERCUT,576,6,8,32
	.member	_minFLOW_RATE,608,6,8,32
	.member	_minTEMPERATURE,640,6,8,32
	.member	_minDENSITY,672,6,8,32
	.member	_minVISCOSITY,704,6,8,32
	.member	_ENABLED,736,14,8,32
	.member	_DESTINATION_ADDRESS,768,8,8,1376,.fake6
	.eos
	.sym	_ALYESKA_STRUCT,0,8,13,2144,.fake29
	.stag	.fake30,3872
	.member	_ENABLED,0,8,8,96,.fake7
	.member	_flow_threshold,96,8,8,1376,.fake6
	.member	_span,1472,8,8,1376,.fake6
	.member	_S3,2848,6,8,32
	.member	_S2,2880,6,8,32
	.member	_S1,2912,6,8,32
	.member	_S0,2944,6,8,32
	.member	_Fmin,2976,6,8,32
	.member	_Fmax,3008,6,8,32
	.member	_Dmin,3040,6,8,32
	.member	_Dmax,3072,6,8,32
	.member	_new,3104,14,8,32
	.member	_CHANGED,3136,14,8,32
	.member	_PURGING,3168,14,8,32
	.member	_TEST_IN_PROGRESS,3200,14,8,32
	.member	_SP3A,3232,6,8,32
	.member	_SP2A,3264,6,8,32
	.member	_SP1A,3296,6,8,32
	.member	_SP0A,3328,6,8,32
	.member	_SPLOA,3360,6,8,32
	.member	_SPHIA,3392,6,8,32
	.member	_SP3B,3424,6,8,32
	.member	_SP2B,3456,6,8,32
	.member	_SP1B,3488,6,8,32
	.member	_SP0B,3520,6,8,32
	.member	_SPLOB,3552,6,8,32
	.member	_SPHIB,3584,6,8,32
	.member	_FBHI3,3616,6,8,32
	.member	_FBHI2,3648,6,8,32
	.member	_FBHI1,3680,6,8,32
	.member	_FBHI0,3712,6,8,32
	.member	_FBLO3,3744,6,8,32
	.member	_FBLO2,3776,6,8,32
	.member	_FBLO1,3808,6,8,32
	.member	_FBLO0,3840,6,8,32
	.eos
	.sym	_HS_STRUCT,0,8,13,3872,.fake30
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\HART.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\MODBUSRTU.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\MISC.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\API.H"
	.file	"flash.c"
	.sect	 "internal_RAM"

	.global	_FLASH_SIZE
	.sym	_FLASH_SIZE,_FLASH_SIZE,46,2,0
	.func	14
;******************************************************************************
;* FUNCTION NAME: _FLASH_SIZE                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,fp,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_FLASH_SIZE:
	.sym	_dev_id,1,14,1,32
	.sym	_r,2,62,1,64,,2
	.line	1
;----------------------------------------------------------------------
;  14 | unsigned int FLASH_SIZE(void)                                          
;  16 | unsigned int dev_id;                                                   
;  17 | unsigned int r[2];                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	6
;----------------------------------------------------------------------
;  19 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
;  21 | r[0] = 0;                                                              
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |21| 
        addi      2,ar0                 ; |21| 
        ldiu      0,r0                  ; |21| 
        sti       r0,*ar0               ; |21| 
	.line	9
;----------------------------------------------------------------------
;  22 | r[1] = 0;                                                              
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |22| 
        addi      3,ar0                 ; |22| 
        sti       r0,*ar0               ; |22| 
	.line	11
;----------------------------------------------------------------------
;  24 | *FLASH_LOC = READ_CONFIG;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |24| 
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |24| 
        sti       r0,*ar0               ; |24| 
	.line	12
;----------------------------------------------------------------------
;  25 | dev_id = FLASH_LOC[1];                                                 
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |25| 
        ldiu      *ar0,r0               ; |25| 
        sti       r0,*+fp(1)            ; |25| 
	.line	13
;----------------------------------------------------------------------
;  26 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |26| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |26| 
        sti       r0,*ar0               ; |26| 
	.line	15
;----------------------------------------------------------------------
;  28 | GIEP;                                                                  
;  30 | switch(dev_id & 0xFFFF)                                                
;  32 |         case 0x88C1:                                                   
;----------------------------------------------------------------------
	pop		ST			
        bu        L7                    ; |13| 
;*      Branch Occurs to L7             ; |13| 
L2:        
	.line	21
;----------------------------------------------------------------------
;  34 | r[0] = 0x80000;                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |34| 
        ldp       @CL5,DP
        addi      2,ar0                 ; |34| 
        ldiu      @CL5,r0               ; |34| 
        sti       r0,*ar0               ; |34| 
	.line	22
;----------------------------------------------------------------------
;  35 | break;                                                                 
;  38 | case 0x88C3:                                                           
;----------------------------------------------------------------------
        bu        L18                   ; |35| 
;*      Branch Occurs to L18            ; |35| 
L3:        
	.line	27
;----------------------------------------------------------------------
;  40 | r[0] = 0x100000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |40| 
        ldp       @CL6,DP
        addi      2,ar0                 ; |40| 
        ldiu      @CL6,r0               ; |40| 
        sti       r0,*ar0               ; |40| 
	.line	28
;----------------------------------------------------------------------
;  41 | break;                                                                 
;  44 | case 0x88C5:                                                           
;----------------------------------------------------------------------
        bu        L18                   ; |41| 
;*      Branch Occurs to L18            ; |41| 
L4:        
	.line	33
;----------------------------------------------------------------------
;  46 | r[0] = 0x200000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |46| 
        ldp       @CL7,DP
        addi      2,ar0                 ; |46| 
        ldiu      @CL7,r0               ; |46| 
        sti       r0,*ar0               ; |46| 
	.line	34
;----------------------------------------------------------------------
;  47 | break;                                                                 
;  50 | case 0x88CD:                                                           
;----------------------------------------------------------------------
        bu        L18                   ; |47| 
;*      Branch Occurs to L18            ; |47| 
L5:        
	.line	39
;----------------------------------------------------------------------
;  52 | r[0] = 0x400000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |52| 
        ldp       @CL8,DP
        addi      2,ar0                 ; |52| 
        ldiu      @CL8,r0               ; |52| 
        sti       r0,*ar0               ; |52| 
	.line	40
;----------------------------------------------------------------------
;  53 | break;                                                                 
;  57 | switch(dev_id >> 16)                                                   
;  59 | case 0x88C1:                                                           
;----------------------------------------------------------------------
        bu        L18                   ; |53| 
;*      Branch Occurs to L18            ; |53| 
L7:        
	.line	17
        ldp       @CL9,DP
        ldiu      @CL9,r0               ; |30| 
        ldp       @CL10,DP
        and       *+fp(1),r0            ; |30| 
        cmpi      @CL10,r0              ; |30| 
        beq       L2                    ; |30| 
;*      Branch Occurs to L2             ; |30| 
        ldp       @CL11,DP
        cmpi      @CL11,r0              ; |30| 
        beq       L3                    ; |30| 
;*      Branch Occurs to L3             ; |30| 
        ldp       @CL12,DP
        cmpi      @CL12,r0              ; |30| 
        beq       L4                    ; |30| 
;*      Branch Occurs to L4             ; |30| 
        ldp       @CL13,DP
        cmpi      @CL13,r0              ; |30| 
        beq       L5                    ; |30| 
;*      Branch Occurs to L5             ; |30| 
        bu        L18                   ; |30| 
;*      Branch Occurs to L18            ; |30| 
L13:        
	.line	48
;----------------------------------------------------------------------
;  61 | r[1] = 0x80000;                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |61| 
        ldp       @CL5,DP
        addi      3,ar0                 ; |61| 
        ldiu      @CL5,r0               ; |61| 
        sti       r0,*ar0               ; |61| 
	.line	49
;----------------------------------------------------------------------
;  62 | break;                                                                 
;  65 | case 0x88C3:                                                           
;----------------------------------------------------------------------
        bu        L22                   ; |62| 
;*      Branch Occurs to L22            ; |62| 
L14:        
	.line	54
;----------------------------------------------------------------------
;  67 | r[1] = 0x100000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |67| 
        ldp       @CL6,DP
        addi      3,ar0                 ; |67| 
        ldiu      @CL6,r0               ; |67| 
        sti       r0,*ar0               ; |67| 
	.line	55
;----------------------------------------------------------------------
;  68 | break;                                                                 
;  71 | case 0x88C5:                                                           
;----------------------------------------------------------------------
        bu        L22                   ; |68| 
;*      Branch Occurs to L22            ; |68| 
L15:        
	.line	60
;----------------------------------------------------------------------
;  73 | r[1] = 0x200000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |73| 
        ldp       @CL7,DP
        addi      3,ar0                 ; |73| 
        ldiu      @CL7,r0               ; |73| 
        sti       r0,*ar0               ; |73| 
	.line	61
;----------------------------------------------------------------------
;  74 | break;                                                                 
;  77 | case 0x88CD:                                                           
;----------------------------------------------------------------------
        bu        L22                   ; |74| 
;*      Branch Occurs to L22            ; |74| 
L16:        
	.line	66
;----------------------------------------------------------------------
;  79 | r[1] = 0x400000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |79| 
        ldp       @CL8,DP
        addi      3,ar0                 ; |79| 
        ldiu      @CL8,r0               ; |79| 
        sti       r0,*ar0               ; |79| 
	.line	67
;----------------------------------------------------------------------
;  80 | break;                                                                 
;----------------------------------------------------------------------
        bu        L22                   ; |80| 
;*      Branch Occurs to L22            ; |80| 
L18:        
	.line	44
        ldiu      *+fp(1),r0            ; |57| 
        lsh       -16,r0                ; |57| 
        ldp       @CL10,DP
        cmpi      @CL10,r0              ; |57| 
        beq       L13                   ; |57| 
;*      Branch Occurs to L13            ; |57| 
        ldp       @CL11,DP
        cmpi      @CL11,r0              ; |57| 
        beq       L14                   ; |57| 
;*      Branch Occurs to L14            ; |57| 
        ldp       @CL12,DP
        cmpi      @CL12,r0              ; |57| 
        beq       L15                   ; |57| 
;*      Branch Occurs to L15            ; |57| 
        ldp       @CL13,DP
        cmpi      @CL13,r0              ; |57| 
        beq       L16                   ; |57| 
;*      Branch Occurs to L16            ; |57| 
L22:        
	.line	71
;----------------------------------------------------------------------
;  84 | if (r[0]<r[1]) return r[0];                                            
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |84| 
        ldiu      fp,ar1                ; |84| 
        addi      3,ar0                 ; |84| 
        addi      2,ar1                 ; |84| 
        cmpi3     *ar0,*ar1             ; |84| 
        bhs       L25                   ; |84| 
;*      Branch Occurs to L25            ; |84| 
        bud       L26                   ; |84| 
        ldiu      fp,ar0                ; |84| 
        addi      2,ar0                 ; |84| 
        ldiu      *ar0,r0               ; |84| 
;*      Branch Occurs to L26            ; |84| 
L25:        
	.line	72
;----------------------------------------------------------------------
;  85 | else return r[1];                                                      
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |85| 
        addi      3,ar0                 ; |85| 
        ldiu      *ar0,r0               ; |85| 
L26:        
	.line	73
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |86| 
        ldiu      *fp,fp                ; |86| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |86| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	86,000000000h,3


	.sect	 "internal_RAM"

	.global	_FLASH_CHECK_ADDR
	.sym	_FLASH_CHECK_ADDR,_FLASH_CHECK_ADDR,36,2,0
	.func	88
;******************************************************************************
;* FUNCTION NAME: _FLASH_CHECK_ADDR                                           *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar2,st                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 5 Auto + 0 SOE = 7 words          *
;******************************************************************************
_FLASH_CHECK_ADDR:
;* ar2   assigned to _addr
	.sym	_addr,10,30,17,32
;* r2    assigned to _n
	.sym	_n,2,14,17,32
	.sym	_addr,1,30,1,32
	.sym	_n,2,14,1,32
	.sym	_dev_id,3,14,1,32
	.sym	_f,4,14,1,32
	.sym	_mask,5,14,1,32
	.line	1
;----------------------------------------------------------------------
;  88 | int FLASH_CHECK_ADDR(unsigned int* addr, unsigned int n)               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
;----------------------------------------------------------------------
;  90 | unsigned int dev_id;                                                   
;  91 | unsigned int f;                                                        
;  92 | unsigned int mask;                                                     
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |89| 
        sti       ar2,*+fp(1)           ; |89| 
	.line	7
;----------------------------------------------------------------------
;  94 | f = FLASH_SIZE();                                                      
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,r0              ; |94| 
        callu     r0                    ; far call to _FLASH_SIZE	; |94| 
                                        ; |94| Far Call Occurs
        sti       r0,*+fp(4)            ; |94| 
	.line	9
;----------------------------------------------------------------------
;  96 | if (addr >= (FLASH_LOC+f)) return FLASH_ERROR_BLKADDR;                 
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      *+fp(1),r1            ; |96| 
        ldiu      @CL1,r0               ; |96| 
        addi      *+fp(4),r0            ; |96| Unsigned
        cmpi3     r0,r1                 ; |96| 
        blo       L30                   ; |96| 
;*      Branch Occurs to L30            ; |96| 
        bud       L53                   ; |96| 
	nop
	nop
        ldiu      32,r0                 ; |96| 
;*      Branch Occurs to L53            ; |96| 
L30:        
	.line	10
;----------------------------------------------------------------------
;  97 | if (addr < FLASH_LOC) return FLASH_ERROR_BLKADDR;                      
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      *+fp(1),r0            ; |97| 
        cmpi      @CL1,r0               ; |97| 
        bhs       L32                   ; |97| 
;*      Branch Occurs to L32            ; |97| 
        bud       L53                   ; |97| 
	nop
	nop
        ldiu      32,r0                 ; |97| 
;*      Branch Occurs to L53            ; |97| 
L32:        
	.line	12
;----------------------------------------------------------------------
;  99 | if (addr < (FLASH_LOC+FLASH_SECTOR_SIZE))                              
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(1),r0            ; |99| 
        cmpi      @CL15,r0              ; |99| 
        bhs       L43                   ; |99| 
;*      Branch Occurs to L43            ; |99| 
	.line	14
;----------------------------------------------------------------------
; 101 | if (n==0)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |101| 
        cmpi      0,r0                  ; |101| 
        bne       L36                   ; |101| 
;*      Branch Occurs to L36            ; |101| 
	.line	16
;----------------------------------------------------------------------
; 103 | if ((((unsigned int)addr-(unsigned int)FLASH_LOC)%FLASH_CFGB_SIZE) == 0
;     | )                                                                      
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,r0               ; |103| 
        subri     *+fp(1),r0            ; |103| Unsigned
        tstb      4095,r0               ; |103| 
        bne       L36                   ; |103| 
;*      Branch Occurs to L36            ; |103| 
	.line	17
;----------------------------------------------------------------------
; 104 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L53                   ; |104| 
	nop
	nop
        ldiu      0,r0                  ; |104| 
;*      Branch Occurs to L53            ; |104| 
L36:        
	.line	19
;----------------------------------------------------------------------
; 106 | if (n>FLASH_CFGB_SIZE) return FLASH_ERROR_BLKADDR;                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |106| 
        cmpi      4096,r0               ; |106| 
        bls       L38                   ; |106| 
;*      Branch Occurs to L38            ; |106| 
        bud       L53                   ; |106| 
	nop
	nop
        ldiu      32,r0                 ; |106| 
;*      Branch Occurs to L53            ; |106| 
L38:        
	.line	20
;----------------------------------------------------------------------
; 107 | if (((unsigned int)addr+n-1) >= ((unsigned int)FLASH_LOC+FLASH_SECTOR_S
;     | IZE)) return FLASH_ERROR_BLKADDR;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |107| 
        ldp       @CL16,DP
        addi      *+fp(1),r0            ; |107| Unsigned
        subi      1,r0                  ; |107| Unsigned
        cmpi      @CL16,r0              ; |107| 
        blo       L40                   ; |107| 
;*      Branch Occurs to L40            ; |107| 
        bud       L53                   ; |107| 
	nop
	nop
        ldiu      32,r0                 ; |107| 
;*      Branch Occurs to L53            ; |107| 
L40:        
	.line	21
;----------------------------------------------------------------------
; 108 | mask = 0xFFFFFFFF ^ (FLASH_CFGB_SIZE-1);                               
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,r0              ; |108| 
        sti       r0,*+fp(5)            ; |108| 
	.line	22
;----------------------------------------------------------------------
; 109 | f = ((unsigned int)addr&mask) + FLASH_CFGB_SIZE;                       
;----------------------------------------------------------------------
        and       *+fp(1),r0            ; |109| 
        addi      4096,r0               ; |109| Unsigned
        sti       r0,*+fp(4)            ; |109| 
	.line	23
;----------------------------------------------------------------------
; 110 | if (((unsigned int)addr+n-1) < ((unsigned int)f)) return 0;            
; 112 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |110| 
        addi      *+fp(1),r0            ; |110| Unsigned
        subi      1,r0                  ; |110| Unsigned
        cmpi      *+fp(4),r0            ; |110| 
        bhs       L52                   ; |110| 
;*      Branch Occurs to L52            ; |110| 
        bud       L53                   ; |110| 
	nop
	nop
        ldiu      0,r0                  ; |110| 
;*      Branch Occurs to L53            ; |110| 
L43:        
	.line	27
;----------------------------------------------------------------------
; 114 | if (n==0)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |114| 
        cmpi      0,r0                  ; |114| 
        bne       L46                   ; |114| 
;*      Branch Occurs to L46            ; |114| 
	.line	29
;----------------------------------------------------------------------
; 116 | if ((((unsigned int)addr-(unsigned int)FLASH_LOC)%FLASH_SECTOR_SIZE) ==
;     |  0)                                                                    
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,r0               ; |116| 
        subri     *+fp(1),r0            ; |116| Unsigned
        tstb      32767,r0              ; |116| 
        bne       L46                   ; |116| 
;*      Branch Occurs to L46            ; |116| 
	.line	30
;----------------------------------------------------------------------
; 117 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L53                   ; |117| 
	nop
	nop
        ldiu      0,r0                  ; |117| 
;*      Branch Occurs to L53            ; |117| 
L46:        
	.line	32
;----------------------------------------------------------------------
; 119 | if (n>FLASH_SECTOR_SIZE) return FLASH_ERROR_BLKADDR;                   
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      *+fp(2),r0            ; |119| 
        cmpi      @CL18,r0              ; |119| 
        bls       L48                   ; |119| 
;*      Branch Occurs to L48            ; |119| 
        bud       L53                   ; |119| 
	nop
	nop
        ldiu      32,r0                 ; |119| 
;*      Branch Occurs to L53            ; |119| 
L48:        
	.line	33
;----------------------------------------------------------------------
; 120 | if (((unsigned int)addr+n-1) >= ((unsigned int)FLASH_LOC+f)) return FLA
;     | SH_ERROR_BLKADDR;                                                      
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(2),r0            ; |120| 
        ldiu      @CL8,r1               ; |120| 
        addi      *+fp(1),r0            ; |120| Unsigned
        addi      *+fp(4),r1            ; |120| Unsigned
        subi      1,r0                  ; |120| Unsigned
        cmpi3     r1,r0                 ; |120| 
        blo       L50                   ; |120| 
;*      Branch Occurs to L50            ; |120| 
        bud       L53                   ; |120| 
	nop
	nop
        ldiu      32,r0                 ; |120| 
;*      Branch Occurs to L53            ; |120| 
L50:        
	.line	34
;----------------------------------------------------------------------
; 121 | mask = 0xFFFFFFFF ^ (FLASH_SECTOR_SIZE-1);                             
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,r0              ; |121| 
        sti       r0,*+fp(5)            ; |121| 
	.line	35
;----------------------------------------------------------------------
; 122 | f = ((unsigned int)addr&mask) + FLASH_SECTOR_SIZE;                     
;----------------------------------------------------------------------
        ldp       @CL18,DP
        and       *+fp(1),r0            ; |122| 
        addi      @CL18,r0              ; |122| Unsigned
        sti       r0,*+fp(4)            ; |122| 
	.line	36
;----------------------------------------------------------------------
; 123 | if (((unsigned int)addr+n-1) < ((unsigned int)f)) return 0;            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |123| 
        addi      *+fp(1),r0            ; |123| Unsigned
        subi      1,r0                  ; |123| Unsigned
        cmpi      *+fp(4),r0            ; |123| 
        bhs       L52                   ; |123| 
;*      Branch Occurs to L52            ; |123| 
        bud       L53                   ; |123| 
	nop
	nop
        ldiu      0,r0                  ; |123| 
;*      Branch Occurs to L53            ; |123| 
L52:        
	.line	39
;----------------------------------------------------------------------
; 126 | return FLASH_ERROR_BLKADDR;                                            
;----------------------------------------------------------------------
        ldiu      32,r0                 ; |126| 
L53:        
	.line	40
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |127| 
        ldiu      *fp,fp                ; |127| 
                                        ; Unallocate the Frame
        subi      7,sp                  ; |127| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	127,000000000h,5


	.sect	 "internal_RAM"

	.global	_FLASH_LOCK_BLK
	.sym	_FLASH_LOCK_BLK,_FLASH_LOCK_BLK,36,2,0
	.func	129
;******************************************************************************
;* FUNCTION NAME: _FLASH_LOCK_BLK                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_FLASH_LOCK_BLK:
;* ar2   assigned to _addr
	.sym	_addr,10,30,17,32
;* r2    assigned to _lock
	.sym	_lock,2,4,17,32
	.sym	_addr,1,30,1,32
	.sym	_lock,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_r,4,4,1,32
	.line	1
;----------------------------------------------------------------------
; 129 | int FLASH_LOCK_BLK(unsigned int* addr, int lock)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 131 | int i;                                                                 
; 132 | int r;                                                                 
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |130| 
        sti       ar2,*+fp(1)           ; |130| 
	.line	6
;----------------------------------------------------------------------
; 134 | i = FLASH_CHECK_ADDR(addr, 0);                                         
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,r0              ; |134| 
        ldiu      0,r2                  ; |134| 
        callu     r0                    ; far call to _FLASH_CHECK_ADDR	; |134| 
                                        ; |134| Far Call Occurs
        sti       r0,*+fp(3)            ; |134| 
	.line	7
;----------------------------------------------------------------------
; 135 | if (i) return i;                                                       
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |135| 
        beq       L57                   ; |135| 
;*      Branch Occurs to L57            ; |135| 
        bu        L66                   ; |135| 
;*      Branch Occurs to L66            ; |135| 
L57:        
	.line	9
;----------------------------------------------------------------------
; 137 | _GIEP;                                                                 
; 139 | switch(lock)                                                           
; 141 |         case 0:                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        bu        L62                   ; |128| 
;*      Branch Occurs to L62            ; |128| 
L58:        
	.line	15
;----------------------------------------------------------------------
; 143 | addr[0] = BLOCK_LOCK;                                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      *+fp(1),ar0           ; |143| 
        ldiu      @CL21,r0              ; |143| 
        sti       r0,*ar0               ; |143| 
	.line	16
;----------------------------------------------------------------------
; 144 | addr[0] = BLOCK_LOCK_UNLOCK;                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar0           ; |144| 
        ldiu      @CL22,r0              ; |144| 
        sti       r0,*ar0               ; |144| 
	.line	17
;----------------------------------------------------------------------
; 145 | break;                                                                 
; 148 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L65                   ; |145| 
;*      Branch Occurs to L65            ; |145| 
L59:        
	.line	22
;----------------------------------------------------------------------
; 150 | addr[0] = BLOCK_LOCK;                                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      *+fp(1),ar0           ; |150| 
        ldiu      @CL21,r0              ; |150| 
        sti       r0,*ar0               ; |150| 
	.line	23
;----------------------------------------------------------------------
; 151 | addr[0] = BLOCK_LOCK_LOCK;                                             
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      *+fp(1),ar0           ; |151| 
        ldiu      @CL23,r0              ; |151| 
        sti       r0,*ar0               ; |151| 
	.line	24
;----------------------------------------------------------------------
; 152 | break;                                                                 
; 155 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L65                   ; |152| 
;*      Branch Occurs to L65            ; |152| 
L60:        
	.line	29
;----------------------------------------------------------------------
; 157 | addr[0] = BLOCK_LOCK;                                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      *+fp(1),ar0           ; |157| 
        ldiu      @CL21,r0              ; |157| 
        sti       r0,*ar0               ; |157| 
	.line	30
;----------------------------------------------------------------------
; 158 | addr[0] = BLOCK_LOCK_LOCKDOWN;                                         
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      *+fp(1),ar0           ; |158| 
        ldiu      @CL24,r0              ; |158| 
        sti       r0,*ar0               ; |158| 
	.line	31
;----------------------------------------------------------------------
; 159 | break;                                                                 
;----------------------------------------------------------------------
        bu        L65                   ; |159| 
;*      Branch Occurs to L65            ; |159| 
L62:        
	.line	11
        ldiu      *+fp(2),r0            ; |139| 
        cmpi      0,r0                  ; |139| 
        beq       L58                   ; |139| 
;*      Branch Occurs to L58            ; |139| 
        cmpi      1,r0                  ; |139| 
        beq       L59                   ; |139| 
;*      Branch Occurs to L59            ; |139| 
        cmpi      2,r0                  ; |139| 
        beq       L60                   ; |139| 
;*      Branch Occurs to L60            ; |139| 
L65:        
	.line	35
;----------------------------------------------------------------------
; 163 | r = FLASH_STATUS();                                                    
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |163| 
        callu     r0                    ; far call to _FLASH_STATUS	; |163| 
                                        ; |163| Far Call Occurs
        sti       r0,*+fp(4)            ; |163| 
	.line	37
;----------------------------------------------------------------------
; 165 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |165| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |165| 
        sti       r0,*ar0               ; |165| 
	.line	39
;----------------------------------------------------------------------
; 167 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	41
;----------------------------------------------------------------------
; 169 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |169| 
L66:        
	.line	42
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |170| 
        ldiu      *fp,fp                ; |170| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |170| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	170,000000000h,4


	.sect	 "internal_RAM"

	.global	_FLASH_ERASE_BLK
	.sym	_FLASH_ERASE_BLK,_FLASH_ERASE_BLK,36,2,0
	.func	172
;******************************************************************************
;* FUNCTION NAME: _FLASH_ERASE_BLK                                            *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_FLASH_ERASE_BLK:
;* ar2   assigned to _addr
	.sym	_addr,10,30,17,32
	.sym	_addr,1,30,1,32
	.sym	_status,2,14,1,32
	.sym	_i,3,4,1,32
	.sym	_r,4,4,1,32
	.line	1
;----------------------------------------------------------------------
; 172 | int FLASH_ERASE_BLK(unsigned int* addr)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 174 | unsigned int status;                                                   
; 175 | int i;                                                                 
; 176 | int r;                                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |173| 
	.line	7
;----------------------------------------------------------------------
; 178 | i = FLASH_CHECK_ADDR(addr, 0);                                         
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      0,r2                  ; |178| 
        ldiu      @CL20,r0              ; |178| 
        callu     r0                    ; far call to _FLASH_CHECK_ADDR	; |178| 
                                        ; |178| Far Call Occurs
        sti       r0,*+fp(3)            ; |178| 
	.line	8
;----------------------------------------------------------------------
; 179 | if (i) return i;                                                       
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |179| 
        beq       L70                   ; |179| 
;*      Branch Occurs to L70            ; |179| 
        bu        L73                   ; |179| 
;*      Branch Occurs to L73            ; |179| 
L70:        
	.line	10
;----------------------------------------------------------------------
; 181 | _GIEP; DISABLE_WDOG;                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |181| 
        ldiu      247,r0                ; |181| 
        and3      r0,*ar0,r0            ; |181| 
        sti       r0,*ar0               ; |181| 
	pop		ST			
	.line	12
;----------------------------------------------------------------------
; 183 | FLASH_LOCK_BLK(addr, FALSE);                                           
;----------------------------------------------------------------------
        ldiu      0,r2                  ; |183| 
        ldp       @CL27,DP
        ldiu      *+fp(1),ar2           ; |183| 
        ldiu      @CL27,r0              ; |183| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |183| 
                                        ; |183| Far Call Occurs
	.line	14
;----------------------------------------------------------------------
; 185 | *FLASH_LOC = BLOCK_ERASE;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |185| 
        ldp       @CL28,DP
        ldiu      @CL28,r0              ; |185| 
        sti       r0,*ar0               ; |185| 
	.line	15
;----------------------------------------------------------------------
; 186 | addr[0] = BLOCK_ERASE_CONFIRM;                                         
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar0           ; |186| 
        ldiu      @CL22,r0              ; |186| 
        sti       r0,*ar0               ; |186| 
	.line	17
;----------------------------------------------------------------------
; 188 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |188| 
        ldiu      *ar0,r0               ; |188| 
        sti       r0,*+fp(2)            ; |188| 
	.line	18
;----------------------------------------------------------------------
; 189 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |189| 
        and       *+fp(2),r0            ; |189| 
        cmpi      @CL29,r0              ; |189| 
        beq       L72                   ; |189| 
;*      Branch Occurs to L72            ; |189| 
L71:        
	.line	20
;----------------------------------------------------------------------
; 191 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |191| 
        ldiu      *ar0,r0               ; |191| 
        sti       r0,*+fp(2)            ; |191| 
	.line	18
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |189| 
        and       *+fp(2),r0            ; |189| 
        cmpi      @CL29,r0              ; |189| 
        bne       L71                   ; |189| 
;*      Branch Occurs to L71            ; |189| 
L72:        
	.line	23
;----------------------------------------------------------------------
; 194 | r = FLASH_STATUS();                                                    
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |194| 
        callu     r0                    ; far call to _FLASH_STATUS	; |194| 
                                        ; |194| Far Call Occurs
        sti       r0,*+fp(4)            ; |194| 
	.line	25
;----------------------------------------------------------------------
; 196 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |196| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |196| 
        sti       r0,*ar0               ; |196| 
	.line	27
;----------------------------------------------------------------------
; 198 | FLASH_LOCK_BLK(addr, TRUE);                                            
;----------------------------------------------------------------------
        ldiu      1,r2                  ; |198| 
        ldp       @CL27,DP
        ldiu      *+fp(1),ar2           ; |198| 
        ldiu      @CL27,r0              ; |198| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |198| 
                                        ; |198| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 200 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |200| 
        ldiu      8,r0                  ; |200| 
        or3       r0,*ar0,r0            ; |200| 
        sti       r0,*ar0               ; |200| 
        ldiu      128,r0                ; |200| 
        or3       r0,*ar0,r0            ; |200| 
        sti       r0,*ar0               ; |200| 
	pop		ST			
	pop		ST			
	.line	31
;----------------------------------------------------------------------
; 202 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |202| 
L73:        
	.line	32
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |203| 
        ldiu      *fp,fp                ; |203| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |203| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	203,000000000h,4


	.sect	 "internal_RAM"

	.global	_FLASH_WRITE_BLK
	.sym	_FLASH_WRITE_BLK,_FLASH_WRITE_BLK,36,2,0
	.func	205
;******************************************************************************
;* FUNCTION NAME: _FLASH_WRITE_BLK                                            *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,ir0,ir1,st                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 0 SOE = 8 words          *
;******************************************************************************
_FLASH_WRITE_BLK:
;* ar2   assigned to _addr
	.sym	_addr,10,30,17,32
;* r2    assigned to _data
	.sym	_data,2,30,17,32
;* r3    assigned to _n
	.sym	_n,3,14,17,32
	.sym	_addr,1,30,1,32
	.sym	_data,2,30,1,32
	.sym	_n,3,14,1,32
	.sym	_r,4,14,1,32
	.sym	_status,5,14,1,32
	.sym	_i,6,4,1,32
	.line	1
;----------------------------------------------------------------------
; 205 | int FLASH_WRITE_BLK(unsigned int* addr, unsigned int* data, unsigned in
;     | t n)                                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 207 | unsigned int r;                                                        
; 208 | unsigned int status;                                                   
; 209 | int i;                                                                 
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |206| 
        sti       r2,*+fp(2)            ; |206| 
        sti       ar2,*+fp(1)           ; |206| 
	.line	7
;----------------------------------------------------------------------
; 211 | i = FLASH_CHECK_ADDR(addr, n);                                         
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,r0              ; |211| 
        ldiu      r3,r2
        callu     r0                    ; far call to _FLASH_CHECK_ADDR	; |211| 
                                        ; |211| Far Call Occurs
        sti       r0,*+fp(6)            ; |211| 
	.line	8
;----------------------------------------------------------------------
; 212 | if (i) return i;                                                       
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |212| 
        beq       L77                   ; |212| 
;*      Branch Occurs to L77            ; |212| 
        bu        L87                   ; |212| 
;*      Branch Occurs to L87            ; |212| 
L77:        
	.line	10
;----------------------------------------------------------------------
; 214 | _GIEP; DISABLE_WDOG;                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |214| 
        ldiu      247,r0                ; |214| 
        and3      r0,*ar0,r0            ; |214| 
        sti       r0,*ar0               ; |214| 
	pop		ST			
	.line	12
;----------------------------------------------------------------------
; 216 | FLASH_LOCK_BLK(addr, FALSE);                                           
;----------------------------------------------------------------------
        ldiu      0,r2                  ; |216| 
        ldp       @CL27,DP
        ldiu      *+fp(1),ar2           ; |216| 
        ldiu      @CL27,r0              ; |216| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |216| 
                                        ; |216| Far Call Occurs
	.line	14
;----------------------------------------------------------------------
; 218 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |218| 
        sti       r0,*+fp(6)            ; |218| 
        ldiu      *+fp(6),r0            ; |218| 
        cmpi      *+fp(3),r0            ; |218| 
        bhs       L81                   ; |218| 
;*      Branch Occurs to L81            ; |218| 
L78:        
	.line	16
;----------------------------------------------------------------------
; 220 | *FLASH_LOC = PROGRAM;                                                  
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |220| 
        ldp       @CL30,DP
        ldiu      @CL30,r0              ; |220| 
        sti       r0,*ar0               ; |220| 
	.line	17
;----------------------------------------------------------------------
; 221 | addr[i] = data[i];                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar1           ; |221| 
        ldiu      *+fp(2),ir0           ; |221| 
        ldiu      *+fp(1),ir1           ; |221| 
        ldiu      ar1,ar0               ; |221| 
        ldiu      *+ar1(ir0),r0         ; |221| 
        sti       r0,*+ar0(ir1)         ; |221| 
	.line	18
;----------------------------------------------------------------------
; 222 | *FLASH_LOC = READ_STATUS;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |222| 
        ldp       @CL31,DP
        ldiu      @CL31,r0              ; |222| 
        sti       r0,*ar0               ; |222| 
	.line	19
;----------------------------------------------------------------------
; 223 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |223| 
        ldiu      *ar0,r0               ; |223| 
        sti       r0,*+fp(5)            ; |223| 
	.line	20
;----------------------------------------------------------------------
; 224 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |224| 
        and       *+fp(5),r0            ; |224| 
        cmpi      @CL29,r0              ; |224| 
        beq       L80                   ; |224| 
;*      Branch Occurs to L80            ; |224| 
L79:        
	.line	22
;----------------------------------------------------------------------
; 226 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |226| 
        ldiu      *ar0,r0               ; |226| 
        sti       r0,*+fp(5)            ; |226| 
	.line	20
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |224| 
        and       *+fp(5),r0            ; |224| 
        cmpi      @CL29,r0              ; |224| 
        bne       L79                   ; |224| 
;*      Branch Occurs to L79            ; |224| 
L80:        
	.line	14
        ldiu      1,r0                  ; |218| 
        addi      *+fp(6),r0            ; |218| 
        sti       r0,*+fp(6)            ; |218| 
        ldiu      *+fp(6),r0            ; |218| 
        cmpi      *+fp(3),r0            ; |218| 
        blo       L78                   ; |218| 
;*      Branch Occurs to L78            ; |218| 
L81:        
	.line	26
;----------------------------------------------------------------------
; 230 | r = FLASH_STATUS();                                                    
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |230| 
        callu     r0                    ; far call to _FLASH_STATUS	; |230| 
                                        ; |230| Far Call Occurs
        sti       r0,*+fp(4)            ; |230| 
	.line	28
;----------------------------------------------------------------------
; 232 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |232| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |232| 
        sti       r0,*ar0               ; |232| 
	.line	30
;----------------------------------------------------------------------
; 234 | FLASH_LOCK_BLK(addr, TRUE);                                            
;----------------------------------------------------------------------
        ldiu      1,r2                  ; |234| 
        ldp       @CL27,DP
        ldiu      *+fp(1),ar2           ; |234| 
        ldiu      @CL27,r0              ; |234| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |234| 
                                        ; |234| Far Call Occurs
	.line	32
;----------------------------------------------------------------------
; 236 | if (!r)                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |236| 
        cmpi      0,r0                  ; |236| 
        bne       L86                   ; |236| 
;*      Branch Occurs to L86            ; |236| 
	.line	34
;----------------------------------------------------------------------
; 238 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |238| 
        sti       r0,*+fp(6)            ; |238| 
        ldiu      *+fp(6),r0            ; |238| 
        cmpi      *+fp(3),r0            ; |238| 
        bhs       L86                   ; |238| 
;*      Branch Occurs to L86            ; |238| 
L83:        
	.line	36
;----------------------------------------------------------------------
; 240 | if (addr[i] != data[i])                                                
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar1           ; |240| 
        ldiu      *+fp(2),ir1           ; |240| 
        ldiu      *+fp(1),ir0           ; |240| 
        ldiu      ar1,ar0               ; |240| 
        cmpi3     *+ar1(ir1),*+ar0(ir0) ; |240| 
        beq       L85                   ; |240| 
;*      Branch Occurs to L85            ; |240| 
	.line	38
;----------------------------------------------------------------------
; 242 | r = FLASH_ERROR_PROG;                                                  
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |242| 
        sti       r0,*+fp(4)            ; |242| 
	.line	39
;----------------------------------------------------------------------
; 243 | break;                                                                 
;----------------------------------------------------------------------
        bu        L86                   ; |243| 
;*      Branch Occurs to L86            ; |243| 
L85:        
	.line	34
        ldiu      1,r0                  ; |238| 
        addi      *+fp(6),r0            ; |238| 
        sti       r0,*+fp(6)            ; |238| 
        ldiu      *+fp(6),r0            ; |238| 
        cmpi      *+fp(3),r0            ; |238| 
        blo       L83                   ; |238| 
;*      Branch Occurs to L83            ; |238| 
L86:        
	.line	44
;----------------------------------------------------------------------
; 248 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |248| 
        ldiu      8,r0                  ; |248| 
        or3       r0,*ar0,r0            ; |248| 
        sti       r0,*ar0               ; |248| 
        ldiu      128,r0                ; |248| 
        or3       r0,*ar0,r0            ; |248| 
        sti       r0,*ar0               ; |248| 
	pop		ST			
	pop		ST			
	.line	46
;----------------------------------------------------------------------
; 250 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |250| 
L87:        
	.line	47
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |251| 
        ldiu      *fp,fp                ; |251| 
                                        ; Unallocate the Frame
        subi      8,sp                  ; |251| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	251,000000000h,6


	.sect	 "internal_RAM"

	.global	_FLASH_STATUS
	.sym	_FLASH_STATUS,_FLASH_STATUS,36,2,0
	.func	253
;******************************************************************************
;* FUNCTION NAME: _FLASH_STATUS                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_FLASH_STATUS:
	.sym	_r,1,14,1,32
	.sym	_status,2,14,1,32
	.line	1
;----------------------------------------------------------------------
; 253 | int FLASH_STATUS(void)                                                 
; 255 | unsigned int r;                                                        
; 256 | unsigned int status;                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	6
;----------------------------------------------------------------------
; 258 | r = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |258| 
        sti       r0,*+fp(1)            ; |258| 
	.line	8
;----------------------------------------------------------------------
; 260 | _GIEP; DISABLE_WDOG;                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |260| 
        ldiu      247,r0                ; |260| 
        and3      r0,*ar0,r0            ; |260| 
        sti       r0,*ar0               ; |260| 
	pop		ST			
	.line	9
;----------------------------------------------------------------------
; 261 | *FLASH_LOC = READ_STATUS;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |261| 
        ldp       @CL31,DP
        ldiu      @CL31,r0              ; |261| 
        sti       r0,*ar0               ; |261| 
	.line	10
;----------------------------------------------------------------------
; 262 | status = *FLASH_LOC;                                                   
; 264 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |262| 
        ldiu      *ar0,r0               ; |262| 
        sti       r0,*+fp(2)            ; |262| 
	.line	14
;----------------------------------------------------------------------
; 266 | if (status&0x00080008)                                                 
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,r0              ; |266| 
        tstb      *+fp(2),r0            ; |266| 
        beq       L91                   ; |266| 
;*      Branch Occurs to L91            ; |266| 
	.line	16
;----------------------------------------------------------------------
; 268 | r = FLASH_ERROR_VPP;                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |268| 
        sti       r0,*+fp(1)            ; |268| 
	.line	17
;----------------------------------------------------------------------
; 269 | *FLASH_LOC = CLEAR_STATUS;                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |269| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |269| 
        sti       r0,*ar0               ; |269| 
	.line	18
;----------------------------------------------------------------------
; 270 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |270| 
;*      Branch Occurs to L100           ; |270| 
L91:        
	.line	21
;----------------------------------------------------------------------
; 273 | if (status&0x00100010)                                                 
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,r0              ; |273| 
        tstb      *+fp(2),r0            ; |273| 
        beq       L93                   ; |273| 
;*      Branch Occurs to L93            ; |273| 
	.line	23
;----------------------------------------------------------------------
; 275 | r = FLASH_ERROR_PROG;                                                  
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |275| 
        sti       r0,*+fp(1)            ; |275| 
	.line	24
;----------------------------------------------------------------------
; 276 | *FLASH_LOC = CLEAR_STATUS;                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |276| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |276| 
        sti       r0,*ar0               ; |276| 
	.line	25
;----------------------------------------------------------------------
; 277 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |277| 
;*      Branch Occurs to L100           ; |277| 
L93:        
	.line	28
;----------------------------------------------------------------------
; 280 | if (status&0x00020002)                                                 
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,r0              ; |280| 
        tstb      *+fp(2),r0            ; |280| 
        beq       L95                   ; |280| 
;*      Branch Occurs to L95            ; |280| 
	.line	30
;----------------------------------------------------------------------
; 282 | r = FLASH_ERROR_LOCKED;                                                
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |282| 
        sti       r0,*+fp(1)            ; |282| 
	.line	31
;----------------------------------------------------------------------
; 283 | *FLASH_LOC = CLEAR_STATUS;                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |283| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |283| 
        sti       r0,*ar0               ; |283| 
	.line	32
;----------------------------------------------------------------------
; 284 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |284| 
;*      Branch Occurs to L100           ; |284| 
L95:        
	.line	35
;----------------------------------------------------------------------
; 287 | if (status&0x00300030)                                                 
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,r0              ; |287| 
        tstb      *+fp(2),r0            ; |287| 
        beq       L97                   ; |287| 
;*      Branch Occurs to L97            ; |287| 
	.line	37
;----------------------------------------------------------------------
; 289 | r = FLASH_ERROR_CMD_SEQ;                                               
;----------------------------------------------------------------------
        ldiu      16,r0                 ; |289| 
        sti       r0,*+fp(1)            ; |289| 
	.line	38
;----------------------------------------------------------------------
; 290 | *FLASH_LOC = CLEAR_STATUS;                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |290| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |290| 
        sti       r0,*ar0               ; |290| 
	.line	39
;----------------------------------------------------------------------
; 291 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |291| 
;*      Branch Occurs to L100           ; |291| 
L97:        
	.line	42
;----------------------------------------------------------------------
; 294 | if (status&0x00200020)                                                 
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldiu      @CL28,r0              ; |294| 
        tstb      *+fp(2),r0            ; |294| 
        beq       L100                  ; |294| 
;*      Branch Occurs to L100           ; |294| 
	.line	44
;----------------------------------------------------------------------
; 296 | r = FLASH_ERROR_BLK_ERASE;                                             
;----------------------------------------------------------------------
        ldiu      8,r0                  ; |296| 
        sti       r0,*+fp(1)            ; |296| 
	.line	45
;----------------------------------------------------------------------
; 297 | *FLASH_LOC = CLEAR_STATUS;                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |297| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |297| 
        sti       r0,*ar0               ; |297| 
	.line	46
;----------------------------------------------------------------------
; 298 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |298| 
;*      Branch Occurs to L100           ; |298| 
	.line	49
;----------------------------------------------------------------------
; 301 | break;                                                                 
;----------------------------------------------------------------------
	.line	50
L100:        
	.line	52
;----------------------------------------------------------------------
; 304 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |304| 
        ldiu      8,r0                  ; |304| 
        or3       r0,*ar0,r0            ; |304| 
        sti       r0,*ar0               ; |304| 
        ldiu      128,r0                ; |304| 
        or3       r0,*ar0,r0            ; |304| 
        sti       r0,*ar0               ; |304| 
	pop		ST			
	pop		ST			
	.line	53
;----------------------------------------------------------------------
; 305 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |305| 
	.line	54
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |306| 
        ldiu      *fp,fp                ; |306| 
                                        ; Unallocate the Frame
        subi      4,sp                  ; |306| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	306,000000000h,2


	.sect	 "internal_RAM"

	.global	_FLASH_READ_ESN_MFGR
	.sym	_FLASH_READ_ESN_MFGR,_FLASH_READ_ESN_MFGR,32,2,0
	.func	308
;******************************************************************************
;* FUNCTION NAME: _FLASH_READ_ESN_MFGR                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,ir0,ir1,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_FLASH_READ_ESN_MFGR:
;* ar2   assigned to _dat
	.sym	_dat,10,30,17,32
	.sym	_dat,1,30,1,32
	.sym	_i,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 308 | void FLASH_READ_ESN_MFGR(unsigned int* dat)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 310 | int i;                                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |309| 
	.line	5
;----------------------------------------------------------------------
; 312 | _GIEP; DISABLE_WDOG;                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |312| 
        ldiu      247,r0                ; |312| 
        and3      r0,*ar0,r0            ; |312| 
        sti       r0,*ar0               ; |312| 
	pop		ST			
	.line	6
;----------------------------------------------------------------------
; 313 | *FLASH_LOC = READ_CONFIG;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |313| 
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |313| 
        sti       r0,*ar0               ; |313| 
	.line	7
;----------------------------------------------------------------------
; 314 | for(i=0;i<4;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |314| 
        sti       r0,*+fp(2)            ; |314| 
        cmpi      4,r0                  ; |314| 
        bge       L105                  ; |314| 
;*      Branch Occurs to L105           ; |314| 
L104:        
	.line	9
;----------------------------------------------------------------------
; 316 | dat[i] = FLASH_LOC[i+0x81];                                            
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      *+fp(2),ir0           ; |316| 
        ldiu      *+fp(1),ir1           ; |316| 
        ldiu      @CL37,ar1             ; |316| 
        ldiu      ir0,ar0               ; |316| 
        ldiu      *+ar1(ir0),r0         ; |316| 
        sti       r0,*+ar0(ir1)         ; |316| 
	.line	7
        ldiu      1,r0                  ; |314| 
        addi      *+fp(2),r0            ; |314| 
        sti       r0,*+fp(2)            ; |314| 
        cmpi      4,r0                  ; |314| 
        blt       L104                  ; |314| 
;*      Branch Occurs to L104           ; |314| 
L105:        
	.line	12
;----------------------------------------------------------------------
; 319 | dat[4] = FLASH_LOC[0x80];       /*ESN status - check bits 0,16, if they
;     |  are 0 then it is locked*/                                             
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |319| 
        ldiu      *+fp(1),ar1           ; |319| 
        ldiu      *ar0,r0               ; |319| 
        sti       r0,*+ar1(4)           ; |319| 
	.line	14
;----------------------------------------------------------------------
; 321 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |321| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |321| 
        sti       r0,*ar0               ; |321| 
	.line	15
;----------------------------------------------------------------------
; 322 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |322| 
        ldiu      8,r0                  ; |322| 
        or3       r0,*ar0,r0            ; |322| 
        sti       r0,*ar0               ; |322| 
        ldiu      128,r0                ; |322| 
        or3       r0,*ar0,r0            ; |322| 
        sti       r0,*ar0               ; |322| 
	pop		ST			
	pop		ST			
	.line	16
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	323,000000000h,2


	.sect	 "internal_RAM"

	.global	_FLASH_READ_ESN_USER
	.sym	_FLASH_READ_ESN_USER,_FLASH_READ_ESN_USER,32,2,0
	.func	325
;******************************************************************************
;* FUNCTION NAME: _FLASH_READ_ESN_USER                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,ir0,ir1,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_FLASH_READ_ESN_USER:
;* ar2   assigned to _dat
	.sym	_dat,10,30,17,32
	.sym	_dat,1,30,1,32
	.sym	_i,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 325 | void FLASH_READ_ESN_USER(unsigned int* dat)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 327 | int i;                                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |326| 
	.line	5
;----------------------------------------------------------------------
; 329 | _GIEP; DISABLE_WDOG;                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |329| 
        ldiu      247,r0                ; |329| 
        and3      r0,*ar0,r0            ; |329| 
        sti       r0,*ar0               ; |329| 
	pop		ST			
	.line	6
;----------------------------------------------------------------------
; 330 | *FLASH_LOC = READ_CONFIG;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |330| 
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |330| 
        sti       r0,*ar0               ; |330| 
	.line	7
;----------------------------------------------------------------------
; 331 | for(i=0;i<4;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |331| 
        sti       r0,*+fp(2)            ; |331| 
        cmpi      4,r0                  ; |331| 
        bge       L110                  ; |331| 
;*      Branch Occurs to L110           ; |331| 
L109:        
	.line	9
;----------------------------------------------------------------------
; 333 | dat[i] = FLASH_LOC[i+0x85];                                            
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      *+fp(2),ir0           ; |333| 
        ldiu      *+fp(1),ir1           ; |333| 
        ldiu      @CL39,ar1             ; |333| 
        ldiu      ir0,ar0               ; |333| 
        ldiu      *+ar1(ir0),r0         ; |333| 
        sti       r0,*+ar0(ir1)         ; |333| 
	.line	7
        ldiu      1,r0                  ; |331| 
        addi      *+fp(2),r0            ; |331| 
        sti       r0,*+fp(2)            ; |331| 
        cmpi      4,r0                  ; |331| 
        blt       L109                  ; |331| 
;*      Branch Occurs to L109           ; |331| 
L110:        
	.line	12
;----------------------------------------------------------------------
; 336 | dat[4] = FLASH_LOC[0x80];       /*ESN status - check bits 1,17, if they
;     |  are 0 then it is locked*/                                             
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |336| 
        ldiu      *+fp(1),ar1           ; |336| 
        ldiu      *ar0,r0               ; |336| 
        sti       r0,*+ar1(4)           ; |336| 
	.line	14
;----------------------------------------------------------------------
; 338 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |338| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |338| 
        sti       r0,*ar0               ; |338| 
	.line	15
;----------------------------------------------------------------------
; 339 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |339| 
        ldiu      8,r0                  ; |339| 
        or3       r0,*ar0,r0            ; |339| 
        sti       r0,*ar0               ; |339| 
        ldiu      128,r0                ; |339| 
        or3       r0,*ar0,r0            ; |339| 
        sti       r0,*ar0               ; |339| 
	pop		ST			
	pop		ST			
	.line	16
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	340,000000000h,2


	.sect	 "internal_RAM"

	.global	_FLASH_WRITE_ESN_USER
	.sym	_FLASH_WRITE_ESN_USER,_FLASH_WRITE_ESN_USER,36,2,0
	.func	342
;******************************************************************************
;* FUNCTION NAME: _FLASH_WRITE_ESN_USER                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,ir0,ir1,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_FLASH_WRITE_ESN_USER:
;* ar2   assigned to _dat
	.sym	_dat,10,30,17,32
	.sym	_dat,1,30,1,32
	.sym	_r,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_status,4,14,1,32
	.line	1
;----------------------------------------------------------------------
; 342 | int FLASH_WRITE_ESN_USER(unsigned int* dat)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 344 | int r;                                                                 
; 345 | int i;                                                                 
; 346 | unsigned int status;                                                   
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |343| 
	.line	7
;----------------------------------------------------------------------
; 348 | _GIEP; DISABLE_WDOG;                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |348| 
        ldiu      247,r0                ; |348| 
        and3      r0,*ar0,r0            ; |348| 
        sti       r0,*ar0               ; |348| 
	pop		ST			
	.line	9
;----------------------------------------------------------------------
; 350 | *FLASH_LOC = READ_CONFIG;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |350| 
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |350| 
        sti       r0,*ar0               ; |350| 
	.line	10
;----------------------------------------------------------------------
; 351 | status = FLASH_LOC[0x80];                                              
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |351| 
        ldiu      *ar0,r0               ; |351| 
        sti       r0,*+fp(4)            ; |351| 
	.line	11
;----------------------------------------------------------------------
; 352 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |352| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |352| 
        sti       r0,*ar0               ; |352| 
	.line	12
;----------------------------------------------------------------------
; 353 | if ((status & 0x00020002) != 0x00020002)                               
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,r0              ; |353| 
        and       *+fp(4),r0            ; |353| 
        cmpi      @CL35,r0              ; |353| 
        beq       L115                  ; |353| 
;*      Branch Occurs to L115           ; |353| 
	.line	14
;----------------------------------------------------------------------
; 355 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |355| 
        ldiu      8,r0                  ; |355| 
        or3       r0,*ar0,r0            ; |355| 
        sti       r0,*ar0               ; |355| 
        ldiu      128,r0                ; |355| 
        or3       r0,*ar0,r0            ; |355| 
        sti       r0,*ar0               ; |355| 
	pop		ST			
	pop		ST			
	.line	15
;----------------------------------------------------------------------
; 356 | return -1;      /*protection register is already locked*/              
;----------------------------------------------------------------------
        bud       L120                  ; |356| 
	nop
	nop
        ldiu      -1,r0                 ; |356| 
;*      Branch Occurs to L120           ; |356| 
L115:        
	.line	18
;----------------------------------------------------------------------
; 359 | for(i=0;i<4;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |359| 
        sti       r0,*+fp(3)            ; |359| 
        cmpi      4,r0                  ; |359| 
        bge       L119                  ; |359| 
;*      Branch Occurs to L119           ; |359| 
L116:        
	.line	20
;----------------------------------------------------------------------
; 361 | *FLASH_LOC = PROTECT_PROG;                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |361| 
        ldp       @CL40,DP
        ldiu      @CL40,r0              ; |361| 
        sti       r0,*ar0               ; |361| 
	.line	21
;----------------------------------------------------------------------
; 362 | dat[i] = FLASH_LOC[i+0x85];                                            
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      *+fp(3),ir0           ; |362| 
        ldiu      @CL39,ar1             ; |362| 
        ldiu      *+fp(1),ir1           ; |362| 
        ldiu      ir0,ar0               ; |362| 
        ldiu      *+ar1(ir0),r0         ; |362| 
        sti       r0,*+ar0(ir1)         ; |362| 
	.line	22
;----------------------------------------------------------------------
; 363 | *FLASH_LOC = READ_STATUS;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |363| 
        ldp       @CL31,DP
        ldiu      @CL31,r0              ; |363| 
        sti       r0,*ar0               ; |363| 
	.line	23
;----------------------------------------------------------------------
; 364 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |364| 
        ldiu      *ar0,r0               ; |364| 
        sti       r0,*+fp(4)            ; |364| 
	.line	24
;----------------------------------------------------------------------
; 365 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |365| 
        and       *+fp(4),r0            ; |365| 
        cmpi      @CL29,r0              ; |365| 
        beq       L118                  ; |365| 
;*      Branch Occurs to L118           ; |365| 
L117:        
	.line	26
;----------------------------------------------------------------------
; 367 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |367| 
        ldiu      *ar0,r0               ; |367| 
        sti       r0,*+fp(4)            ; |367| 
	.line	24
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |365| 
        and       *+fp(4),r0            ; |365| 
        cmpi      @CL29,r0              ; |365| 
        bne       L117                  ; |365| 
;*      Branch Occurs to L117           ; |365| 
L118:        
	.line	18
        ldiu      1,r0                  ; |359| 
        addi      *+fp(3),r0            ; |359| 
        sti       r0,*+fp(3)            ; |359| 
        cmpi      4,r0                  ; |359| 
        blt       L116                  ; |359| 
;*      Branch Occurs to L116           ; |359| 
L119:        
	.line	30
;----------------------------------------------------------------------
; 371 | r = FLASH_STATUS();                                                    
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |371| 
        callu     r0                    ; far call to _FLASH_STATUS	; |371| 
                                        ; |371| Far Call Occurs
        sti       r0,*+fp(2)            ; |371| 
	.line	32
;----------------------------------------------------------------------
; 373 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |373| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |373| 
        sti       r0,*ar0               ; |373| 
	.line	34
;----------------------------------------------------------------------
; 375 | r = FLASH_LOCK_ESN_USER();                                             
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |375| 
        callu     r0                    ; far call to _FLASH_LOCK_ESN_USER	; |375| 
                                        ; |375| Far Call Occurs
        sti       r0,*+fp(2)            ; |375| 
	.line	36
;----------------------------------------------------------------------
; 377 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |377| 
        ldiu      8,r0                  ; |377| 
        or3       r0,*ar0,r0            ; |377| 
        sti       r0,*ar0               ; |377| 
        ldiu      128,r0                ; |377| 
        or3       r0,*ar0,r0            ; |377| 
        sti       r0,*ar0               ; |377| 
	pop		ST			
	pop		ST			
	.line	38
;----------------------------------------------------------------------
; 379 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |379| 
L120:        
	.line	39
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |380| 
        ldiu      *fp,fp                ; |380| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |380| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	380,000000000h,4


	.sect	 "internal_RAM"

	.global	_FLASH_LOCK_ESN_USER
	.sym	_FLASH_LOCK_ESN_USER,_FLASH_LOCK_ESN_USER,36,2,0
	.func	382
;******************************************************************************
;* FUNCTION NAME: _FLASH_LOCK_ESN_USER                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_FLASH_LOCK_ESN_USER:
	.sym	_r,1,4,1,32
	.sym	_status,2,14,1,32
	.line	1
;----------------------------------------------------------------------
; 382 | int FLASH_LOCK_ESN_USER(void)                                          
; 384 | int r;                                                                 
; 385 | unsigned int status;                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	6
;----------------------------------------------------------------------
; 387 | _GIEP; DISABLE_WDOG;                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |387| 
        ldiu      247,r0                ; |387| 
        and3      r0,*ar0,r0            ; |387| 
        sti       r0,*ar0               ; |387| 
	pop		ST			
	.line	8
;----------------------------------------------------------------------
; 389 | *FLASH_LOC = PROTECT_PROG;                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |389| 
        ldp       @CL40,DP
        ldiu      @CL40,r0              ; |389| 
        sti       r0,*ar0               ; |389| 
	.line	9
;----------------------------------------------------------------------
; 390 | FLASH_LOC[0x80] = 0xFFFDFFFD;   /* PERMANENTLY LOCK user ESN */        
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |390| 
        ldp       @CL42,DP
        ldiu      @CL42,r0              ; |390| 
        sti       r0,*ar0               ; |390| 
	.line	10
;----------------------------------------------------------------------
; 391 | *FLASH_LOC = READ_STATUS;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |391| 
        ldp       @CL31,DP
        ldiu      @CL31,r0              ; |391| 
        sti       r0,*ar0               ; |391| 
	.line	11
;----------------------------------------------------------------------
; 392 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |392| 
        ldiu      *ar0,r0               ; |392| 
        sti       r0,*+fp(2)            ; |392| 
	.line	12
;----------------------------------------------------------------------
; 393 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |393| 
        and       *+fp(2),r0            ; |393| 
        cmpi      @CL29,r0              ; |393| 
        beq       L124                  ; |393| 
;*      Branch Occurs to L124           ; |393| 
L123:        
	.line	14
;----------------------------------------------------------------------
; 395 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |395| 
        ldiu      *ar0,r0               ; |395| 
        sti       r0,*+fp(2)            ; |395| 
	.line	12
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |393| 
        and       *+fp(2),r0            ; |393| 
        cmpi      @CL29,r0              ; |393| 
        bne       L123                  ; |393| 
;*      Branch Occurs to L123           ; |393| 
L124:        
	.line	17
;----------------------------------------------------------------------
; 398 | r = FLASH_STATUS();                                                    
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |398| 
        callu     r0                    ; far call to _FLASH_STATUS	; |398| 
                                        ; |398| Far Call Occurs
        sti       r0,*+fp(1)            ; |398| 
	.line	19
;----------------------------------------------------------------------
; 400 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |400| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |400| 
        sti       r0,*ar0               ; |400| 
	.line	21
;----------------------------------------------------------------------
; 402 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |402| 
        ldiu      8,r0                  ; |402| 
        or3       r0,*ar0,r0            ; |402| 
        sti       r0,*ar0               ; |402| 
        ldiu      128,r0                ; |402| 
        or3       r0,*ar0,r0            ; |402| 
        sti       r0,*ar0               ; |402| 
	pop		ST			
	pop		ST			
	.line	23
;----------------------------------------------------------------------
; 404 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |404| 
	.line	24
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |405| 
        ldiu      *fp,fp                ; |405| 
                                        ; Unallocate the Frame
        subi      4,sp                  ; |405| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	405,000000000h,2



	.global	_SRAM_SCRATCHPAD
	.bss	_SRAM_SCRATCHPAD,1
	.sym	_SRAM_SCRATCHPAD,_SRAM_SCRATCHPAD,30,2,32
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".const"
	.bss	CL1,1
	.bss	CL2,1
	.bss	CL3,1
	.bss	CL4,1
	.bss	CL5,1
	.bss	CL6,1
	.bss	CL7,1
	.bss	CL8,1
	.bss	CL9,1
	.bss	CL10,1
	.bss	CL11,1
	.bss	CL12,1
	.bss	CL13,1
	.bss	CL14,1
	.bss	CL15,1
	.bss	CL16,1
	.bss	CL17,1
	.bss	CL18,1
	.bss	CL19,1
	.bss	CL20,1
	.bss	CL21,1
	.bss	CL22,1
	.bss	CL23,1
	.bss	CL24,1
	.bss	CL25,1
	.bss	CL26,1
	.bss	CL27,1
	.bss	CL28,1
	.bss	CL29,1
	.bss	CL30,1
	.bss	CL31,1
	.bss	CL32,1
	.bss	CL33,1
	.bss	CL34,1
	.bss	CL35,1
	.bss	CL36,1
	.bss	CL37,1
	.bss	CL38,1
	.bss	CL39,1
	.bss	CL40,1
	.bss	CL41,1
	.bss	CL42,1

	.sect	".cinit"
	.field  	42,32
	.field  	CL1+0,32
	.field  	4194304,32
	.field  	9437328,32
	.field  	4194305,32
	.field  	16711935,32
	.field  	524288,32
	.field  	1048576,32
	.field  	2097152,32
	.field  	4194304,32
	.field  	65535,32
	.field  	35009,32
	.field  	35011,32
	.field  	35013,32
	.field  	35021,32
	.field  	_FLASH_SIZE,32
	.field  	4227072,32
	.field  	4227072,32
	.field  	-4096,32
	.field  	32768,32
	.field  	-32768,32
	.field  	_FLASH_CHECK_ADDR,32
	.field  	6291552,32
	.field  	13631696,32
	.field  	65537,32
	.field  	3080239,32
	.field  	_FLASH_STATUS,32
	.field  	9437188,32
	.field  	_FLASH_LOCK_BLK,32
	.field  	2097184,32
	.field  	8388736,32
	.field  	4194368,32
	.field  	7340144,32
	.field  	524296,32
	.field  	5242960,32
	.field  	1048592,32
	.field  	131074,32
	.field  	3145776,32
	.field  	4194433,32
	.field  	4194432,32
	.field  	4194437,32
	.field  	12583104,32
	.field  	_FLASH_LOCK_ESN_USER,32
	.field  	-131075,32

	.sect	".text"
