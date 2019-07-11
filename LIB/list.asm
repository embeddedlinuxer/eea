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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_4R8.AAA 
	.file	"list.c"
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
	.file	"list.c"
	.sect	 "internal_RAM"

	.global	_List_Add
	.sym	_List_Add,_List_Add,46,2,0
	.func	14
;******************************************************************************
;* FUNCTION NAME: _List_Add                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_List_Add:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
;* r2    assigned to _p
	.sym	_p,2,24,17,32,.fake5
	.sym	_l,1,24,1,32,.fake4
	.sym	_p,2,24,1,32,.fake5
	.sym	_t,3,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
;  14 | BOOL List_Add(LIST *l, GENERIC *p)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
;  16 | GENERIC* t;                                                            
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |15| 
        sti       ar2,*+fp(1)           ; |15| 
	.line	5
;----------------------------------------------------------------------
;  18 | if (p==(GENERIC*)0) return FALSE;                                      
;----------------------------------------------------------------------
        ldiu      r2,r0
        cmpi      0,r0                  ; |18| 
        bne       L3                    ; |18| 
;*      Branch Occurs to L3             ; |18| 
        bud       L7                    ; |18| 
	nop
	nop
        ldiu      0,r0                  ; |18| 
;*      Branch Occurs to L7             ; |18| 
L3:        
	.line	7
;----------------------------------------------------------------------
;  20 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
;  22 | p->prev = l->tail;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |22| 
        ldiu      *+fp(2),ar1           ; |22| 
        ldiu      *+ar0(1),r0           ; |22| 
        sti       r0,*ar1               ; |22| 
	.line	10
;----------------------------------------------------------------------
;  23 | p->next = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |23| 
        ldiu      0,r0                  ; |23| 
        sti       r0,*+ar0(1)           ; |23| 
	.line	12
;----------------------------------------------------------------------
;  25 | if (l->tail != NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |25| 
        ldiu      *+ar0(1),r0           ; |25| 
        cmpi      0,r0                  ; |25| 
        beq       L5                    ; |25| 
;*      Branch Occurs to L5             ; |25| 
	.line	14
;----------------------------------------------------------------------
;  27 | t = (GENERIC*)l->tail;                                                 
;----------------------------------------------------------------------
        ldiu      *+ar0(1),r0           ; |27| 
        sti       r0,*+fp(3)            ; |27| 
	.line	15
;----------------------------------------------------------------------
;  28 | t->next = (int*)p;                                                     
;  30 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(2),r0            ; |28| 
        sti       r0,*+ar0(1)           ; |28| 
        bu        L6                    ; |13| 
;*      Branch Occurs to L6             ; |13| 
L5:        
	.line	19
;----------------------------------------------------------------------
;  32 | l->head = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |32| 
        ldiu      *+fp(2),r0            ; |32| 
        sti       r0,*ar0               ; |32| 
L6:        
	.line	22
;----------------------------------------------------------------------
;  35 | l->tail = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |35| 
        ldiu      *+fp(2),r0            ; |35| 
        sti       r0,*+ar0(1)           ; |35| 
	.line	24
;----------------------------------------------------------------------
;  37 | l->n++;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |37| 
        ldiu      1,r0                  ; |37| 
        addi      *+ar0(2),r0           ; |37| 
        sti       r0,*+ar0(2)           ; |37| 
	.line	26
;----------------------------------------------------------------------
;  39 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	28
;----------------------------------------------------------------------
;  41 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |41| 
L7:        
	.line	29
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |42| 
        ldiu      *fp,fp                ; |42| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |42| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	42,000000000h,3


	.sect	 "internal_RAM"

	.global	_List_Remove
	.sym	_List_Remove,_List_Remove,46,2,0
	.func	44
;******************************************************************************
;* FUNCTION NAME: _List_Remove                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_List_Remove:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
;* r2    assigned to _p
	.sym	_p,2,24,17,32,.fake5
	.sym	_l,1,24,1,32,.fake4
	.sym	_p,2,24,1,32,.fake5
	.sym	_t,3,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
;  44 | BOOL List_Remove(LIST *l, GENERIC *p)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
;  46 | GENERIC* t;                                                            
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |45| 
        sti       ar2,*+fp(1)           ; |45| 
	.line	5
;----------------------------------------------------------------------
;  48 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
;  50 | if (l->n>0)                                                            
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *+ar0(2),r0           ; |50| 
        cmpi      0,r0                  ; |50| 
        ble       L15                   ; |50| 
;*      Branch Occurs to L15            ; |50| 
	.line	9
;----------------------------------------------------------------------
;  52 | if (p->next == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      r2,ar0
        ldiu      *+ar0(1),r0           ; |52| 
        cmpi      0,r0                  ; |52| 
        bne       L12                   ; |52| 
;*      Branch Occurs to L12            ; |52| 
	.line	11
;----------------------------------------------------------------------
;  54 | l->tail = p->prev;                                                     
;----------------------------------------------------------------------
        ldiu      r2,ar1
        ldiu      ar2,ar0
        ldiu      *ar1,r0               ; |54| 
        sti       r0,*+ar0(1)           ; |54| 
L12:        
	.line	14
;----------------------------------------------------------------------
;  57 | t = (GENERIC*)p->next;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |57| 
        ldiu      *+ar0(1),r0           ; |57| 
        sti       r0,*+fp(3)            ; |57| 
	.line	15
;----------------------------------------------------------------------
;  58 | t->prev = (int*) p->prev;                                              
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldiu      r0,ar0
        ldiu      *ar1,r0               ; |58| 
        sti       r0,*ar0               ; |58| 
	.line	17
;----------------------------------------------------------------------
;  60 | if (p->prev == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |60| 
        ldiu      *ar0,r0               ; |60| 
        cmpi      0,r0                  ; |60| 
        bne       L14                   ; |60| 
;*      Branch Occurs to L14            ; |60| 
	.line	19
;----------------------------------------------------------------------
;  62 | l->head = p->next;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |62| 
        ldiu      *+ar0(1),r0           ; |62| 
        sti       r0,*ar1               ; |62| 
L14:        
	.line	22
;----------------------------------------------------------------------
;  65 | t = (GENERIC*)p->prev;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |65| 
        ldiu      *ar0,r0               ; |65| 
        sti       r0,*+fp(3)            ; |65| 
	.line	23
;----------------------------------------------------------------------
;  66 | t->next = p->next;                                                     
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldiu      r0,ar0
        ldiu      *+ar1(1),r0           ; |66| 
        sti       r0,*+ar0(1)           ; |66| 
	.line	25
;----------------------------------------------------------------------
;  68 | p->next = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |68| 
        ldiu      0,r0                  ; |68| 
        sti       r0,*+ar0(1)           ; |68| 
	.line	26
;----------------------------------------------------------------------
;  69 | p->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |69| 
        sti       r0,*ar0               ; |69| 
	.line	28
;----------------------------------------------------------------------
;  71 | l->n--;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |71| 
        ldiu      1,r0                  ; |71| 
        subri     *+ar0(2),r0           ; |71| 
        sti       r0,*+ar0(2)           ; |71| 
L15:        
	.line	31
;----------------------------------------------------------------------
;  74 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	33
;----------------------------------------------------------------------
;  76 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |76| 
	.line	34
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |77| 
        ldiu      *fp,fp                ; |77| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |77| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	77,000000000h,3


	.sect	 "internal_RAM"

	.global	_List_Push
	.sym	_List_Push,_List_Push,46,2,0
	.func	79
;******************************************************************************
;* FUNCTION NAME: _List_Push                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_List_Push:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
;* r2    assigned to _p
	.sym	_p,2,24,17,32,.fake5
	.sym	_l,1,24,1,32,.fake4
	.sym	_p,2,24,1,32,.fake5
	.sym	_t,3,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
;  79 | BOOL List_Push(LIST *l, GENERIC *p)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
;  81 | GENERIC* t;                                                            
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |80| 
        sti       ar2,*+fp(1)           ; |80| 
	.line	5
;----------------------------------------------------------------------
;  83 | if (p==(GENERIC*)0) return FALSE;                                      
;----------------------------------------------------------------------
        ldiu      r2,r0
        cmpi      0,r0                  ; |83| 
        bne       L20                   ; |83| 
;*      Branch Occurs to L20            ; |83| 
        bud       L25                   ; |83| 
	nop
	nop
        ldiu      0,r0                  ; |83| 
;*      Branch Occurs to L25            ; |83| 
L20:        
	.line	7
;----------------------------------------------------------------------
;  85 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
;  87 | p->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |87| 
        ldiu      0,r0                  ; |87| 
        sti       r0,*ar0               ; |87| 
	.line	10
;----------------------------------------------------------------------
;  88 | p->next = l->head;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |88| 
        ldiu      *+fp(2),ar1           ; |88| 
        ldiu      *ar0,r0               ; |88| 
        sti       r0,*+ar1(1)           ; |88| 
	.line	12
;----------------------------------------------------------------------
;  90 | if (l->head != NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |90| 
        ldiu      *ar0,r0               ; |90| 
        cmpi      0,r0                  ; |90| 
        beq       L22                   ; |90| 
;*      Branch Occurs to L22            ; |90| 
	.line	14
;----------------------------------------------------------------------
;  92 | t = (GENERIC*)l->head;                                                 
;----------------------------------------------------------------------
        ldiu      *ar0,r0               ; |92| 
        sti       r0,*+fp(3)            ; |92| 
	.line	15
;----------------------------------------------------------------------
;  93 | t->prev = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(2),r0            ; |93| 
        sti       r0,*ar0               ; |93| 
L22:        
	.line	18
;----------------------------------------------------------------------
;  96 | l->head = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |96| 
        ldiu      *+fp(2),r0            ; |96| 
        sti       r0,*ar0               ; |96| 
	.line	20
;----------------------------------------------------------------------
;  98 | if (l->tail == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |98| 
        ldiu      *+ar0(1),r0           ; |98| 
        cmpi      0,r0                  ; |98| 
        bne       L24                   ; |98| 
;*      Branch Occurs to L24            ; |98| 
	.line	22
;----------------------------------------------------------------------
; 100 | l->tail = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |100| 
        sti       r0,*+ar0(1)           ; |100| 
L24:        
	.line	25
;----------------------------------------------------------------------
; 103 | l->n++;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |103| 
        ldiu      1,r0                  ; |103| 
        addi      *+ar0(2),r0           ; |103| 
        sti       r0,*+ar0(2)           ; |103| 
	.line	27
;----------------------------------------------------------------------
; 105 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	29
;----------------------------------------------------------------------
; 107 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |107| 
L25:        
	.line	30
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |108| 
        ldiu      *fp,fp                ; |108| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |108| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	108,000000000h,3


	.sect	 "internal_RAM"

	.global	_List_Pop
	.sym	_List_Pop,_List_Pop,104,2,0,.fake5
	.func	110
;******************************************************************************
;* FUNCTION NAME: _List_Pop                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_List_Pop:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
	.sym	_l,1,24,1,32,.fake4
	.sym	_p,2,24,1,32,.fake5
	.sym	_t,3,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
; 110 | GENERIC* List_Pop(LIST *l)                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 112 | GENERIC* p;                                                            
; 113 | GENERIC* t;                                                            
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |111| 
	.line	6
;----------------------------------------------------------------------
; 115 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
; 117 | if (l->head != NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *ar0,r0               ; |117| 
        cmpi      0,r0                  ; |117| 
        beq       L30                   ; |117| 
;*      Branch Occurs to L30            ; |117| 
	.line	10
;----------------------------------------------------------------------
; 119 | p = (GENERIC*)l->head;                                                 
;----------------------------------------------------------------------
        ldiu      *ar0,r0               ; |119| 
        sti       r0,*+fp(2)            ; |119| 
	.line	11
;----------------------------------------------------------------------
; 120 | l->n--;                                                                
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |120| 
        subri     *+ar0(2),r0           ; |120| 
        sti       r0,*+ar0(2)           ; |120| 
	.line	12
;----------------------------------------------------------------------
; 121 | l->head = p->next;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar1           ; |121| 
        ldiu      *+fp(1),ar0           ; |121| 
        ldiu      *+ar1(1),r0           ; |121| 
        sti       r0,*ar0               ; |121| 
	.line	13
;----------------------------------------------------------------------
; 122 | p->next = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |122| 
        ldiu      0,r0                  ; |122| 
        sti       r0,*+ar0(1)           ; |122| 
	.line	14
;----------------------------------------------------------------------
; 123 | p->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |123| 
        sti       r0,*ar0               ; |123| 
	.line	15
;----------------------------------------------------------------------
; 124 | t = (GENERIC*) p->next;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |124| 
        ldiu      *+ar0(1),r0           ; |124| 
        sti       r0,*+fp(3)            ; |124| 
	.line	16
;----------------------------------------------------------------------
; 125 | t->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      0,r0                  ; |125| 
        sti       r0,*ar0               ; |125| 
	.line	17
;----------------------------------------------------------------------
; 126 | if (l->head == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |126| 
        ldiu      *ar0,r0               ; |126| 
        cmpi      0,r0                  ; |126| 
        bne       L31                   ; |126| 
;*      Branch Occurs to L31            ; |126| 
	.line	19
;----------------------------------------------------------------------
; 128 | l->tail = NULL_PTR;                                                    
; 131 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |128| 
        sti       r0,*+ar0(1)           ; |128| 
        bu        L31                   ; |109| 
;*      Branch Occurs to L31            ; |109| 
L30:        
	.line	24
;----------------------------------------------------------------------
; 133 | p = (GENERIC*) NULL_PTR;                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |133| 
        sti       r0,*+fp(2)            ; |133| 
L31:        
	.line	27
;----------------------------------------------------------------------
; 136 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	29
;----------------------------------------------------------------------
; 138 | return p;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |138| 
	.line	30
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |139| 
        ldiu      *fp,fp                ; |139| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |139| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	139,000000000h,3


	.sect	 "internal_RAM"

	.global	_List_Init
	.sym	_List_Init,_List_Init,46,2,0
	.func	141
;******************************************************************************
;* FUNCTION NAME: _List_Init                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2                                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_List_Init:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
	.sym	_l,1,24,1,32,.fake4
	.line	1
;----------------------------------------------------------------------
; 141 | BOOL List_Init(LIST *l)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |142| 
	.line	3
;----------------------------------------------------------------------
; 143 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 145 | l->head = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      0,r0                  ; |145| 
        sti       r0,*ar0               ; |145| 
	.line	6
;----------------------------------------------------------------------
; 146 | l->tail = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |146| 
        sti       r0,*+ar0(1)           ; |146| 
	.line	7
;----------------------------------------------------------------------
; 147 | l->n = 0;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |147| 
        sti       r0,*+ar0(2)           ; |147| 
	.line	9
;----------------------------------------------------------------------
; 149 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	10
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	150,000000000h,1


