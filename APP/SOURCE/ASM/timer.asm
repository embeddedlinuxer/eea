;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu Sep  2 10:21:49 2021                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_5GC.AAA 
	.file	"timer.c"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\GLBLS.H"
	.file	"Y:\workspace\EEA\V615\INCLUDE\stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"Y:\workspace\EEA\V615\INCLUDE\format.h"
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
	.file	"Y:\workspace\EEA\V615\INCLUDE\string.h"
	.sym	_size_t,0,14,13,32
	.file	"Y:\workspace\EEA\V615\INCLUDE\stdio.h"
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
	.file	"Y:\workspace\EEA\V615\INCLUDE\stdlib.h"
	.sym	_wchar_t,0,2,13,32
	.stag	__div_t,64
	.member	_quot,0,4,8,32
	.member	_rem,32,4,8,32
	.eos
	.sym	_div_t,0,8,13,64,__div_t
	.sym	_ldiv_t,0,8,13,64,__div_t
	.file	"Y:\workspace\EEA\V615\INCLUDE\math.h"
	.file	"Y:\workspace\EEA\V615\INCLUDE\time.h"
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
	.file	"Y:\workspace\EEA\V615\INCLUDE\ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"Y:\workspace\EEA\V615\INCLUDE\LIST.H"
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
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\VARIABLE.H"
	.stag	.fake6,1408
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
	.member	_name_r,1376,4,8,32
	.eos
	.sym	_VAR,0,8,13,1408,.fake6
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
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\BUFFER.H"
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
	.file	"Y:\workspace\EEA\V615\INCLUDE\UNITS.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\TIMER.H"
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
	.file	"Y:\workspace\EEA\V615\INCLUDE\I2C.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\ERRORS.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\SERIAL.H"
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
	.stag	.fake13,11488
	.member	_PREFIX,0,8,8,1408,.fake6
	.member	_SUFFIX,1408,8,8,1408,.fake6
	.member	_NETWDOG,2816,8,8,1408,.fake6
	.member	_Slave_ID,4224,8,8,1408,.fake6
	.member	_Baud_Rate,5632,8,8,1408,.fake6
	.member	_Parity,7040,4,8,32
	.member	_n_bits,7072,4,8,32
	.member	_STP,7104,4,8,32
	.member	_N,7136,4,8,32
	.member	_N_retry,7168,4,8,32
	.member	_EOT_Delay,7200,8,8,1408,.fake6
	.member	_Retry_Time,8608,8,8,1408,.fake6
	.member	_Num_Retry,10016,8,8,1408,.fake6
	.member	_poll_time,11424,4,8,32
	.member	_timeout,11456,4,8,32
	.eos
	.sym	_PORTC,0,8,13,11488,.fake13
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
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\ADC.H"
	.stag	.fake15,10176
	.member	_CURRENT,0,8,8,1408,.fake6
	.member	_CURRENT_PERCENT_OF_RANGE,1408,8,8,1408,.fake6
	.member	_LRV,2816,8,8,1408,.fake6
	.member	_URV,4224,8,8,1408,.fake6
	.member	_TRIM_MIN,5632,8,8,1408,.fake6
	.member	_TRIM_MAX,7040,8,8,1408,.fake6
	.member	_VALUE,8448,8,8,1408,.fake6
	.member	_TRIM_MIN_C,9856,6,8,32
	.member	_TRIM_MAX_C,9888,6,8,32
	.member	_v,9920,8,8,64,.fake8
	.member	_class,9984,8,8,64,.fake8
	.member	_unit,10048,8,8,64,.fake8
	.member	_present,10112,14,8,32
	.member	_val,10144,6,8,32
	.eos
	.sym	_LOOPDATA_I,0,8,13,10176,.fake15
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\DAC.H"
	.stag	.fake16,13408
	.member	_CURRENT,0,8,8,1408,.fake6
	.member	_CURRENT_PERCENT_OF_RANGE,1408,8,8,1408,.fake6
	.member	_LRV,2816,8,8,1408,.fake6
	.member	_URV,4224,8,8,1408,.fake6
	.member	_TRIM_MIN,5632,8,8,1408,.fake6
	.member	_TRIM_MAX,7040,8,8,1408,.fake6
	.member	_TRIM_MIN_C,8448,6,8,32
	.member	_TRIM_MAX_C,8480,6,8,32
	.member	_ALARM_SELECT,8512,4,8,32
	.member	_MINSPAN,8544,6,8,32
	.member	_v,8576,8,8,64,.fake8
	.member	_class,8640,8,8,64,.fake8
	.member	_unit,8704,8,8,64,.fake8
	.member	_MANUAL,8768,4,8,32
	.member	_MANUAL_PERCENT,8800,6,8,32
	.member	_REVERSE,8832,4,8,32
	.member	_PID_input,8864,6,8,32
	.member	_PID_setpoint,8896,6,8,32
	.member	_P,8928,8,8,1408,.fake6
	.member	_I,10336,8,8,1408,.fake6
	.member	_D,11744,8,8,1408,.fake6
	.member	_pid_lastcycle,13152,4,8,32
	.member	_pid_output,13184,6,8,32
	.member	_pid_propband,13216,6,8,32
	.member	_pid_error,13248,6,8,32
	.member	_pid_bias,13280,6,8,32
	.member	_present,13312,14,8,32
	.member	_PID_fail,13344,14,8,32
	.member	_PID_enable_failsafe,13376,14,8,32
	.eos
	.sym	_LOOPDATA_O,0,8,13,13408,.fake16
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\EXECUTE.H"
	.stag	.fake17,128
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.eos
	.sym	_EPKT,0,8,13,128,.fake17
	.file	"Y:\workspace\EEA\V615\INCLUDE\FLASH.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\LOG.H"
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
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\DEMO.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\SELFTEST.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MENU.H"
	.stag	.fake19,16288
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
	.member	_menu_list_top,832,14,8,32
	.member	_menu_list_operations,864,14,8,32
	.member	_menu_list_configurations,896,14,8,32
	.member	_menu_list_security_info,928,14,8,32
	.member	_menu_list_measurements,960,14,8,32
	.member	_menu_list_changed,992,14,8,32
	.member	_PAGE,1024,14,8,32
	.member	_SUBPAGE,1056,14,8,32
	.member	_MENU_TRAP,1088,14,8,32
	.member	_DIP,1120,62,8,128,,4
	.member	_tmpf,1248,54,8,320,,10
	.member	_tmpi,1568,52,8,320,,10
	.member	_str,1888,242,8,12928,,4,101
	.member	_tmpv,14816,8,8,1408,.fake6
	.member	_ptmpv,16224,24,8,32,.fake6
	.member	_tbl,16256,20,8,32
	.eos
	.sym	_MENU_STRUCT,0,8,13,16288,.fake19
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\FLOAT1.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\GLBLS.H"
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
	.etag	_Pulse_Input_Type,32
	.member	_PULSE_GAS_TEMP,1,4,16,32
	.member	_PULSE_SALINITY,2,4,16,32
	.member	_PULSE_STREAM_SELECT,3,4,16,32
	.member	_PULSE_USER_TEMP,4,4,16,32
	.member	_PULSE_FC_WC,5,4,16,32
	.member	_PULSE_FC_TEMP,6,4,16,32
	.member	_PULSE_FC_TOTAL_FLOW,7,4,16,32
	.member	_PULSE_FC_PRESSURE,8,4,16,32
	.member	_PULSE_FC_DENSITY,9,4,16,32
	.member	_PULSE_FC_SALINITY,10,4,16,32
	.member	_PULSE_FC_OIL_DENSITY,11,4,16,32
	.member	_PULSE_FC_OIL_DENSITY_ST,12,4,16,32
	.member	_PULSE_FC_WATER_DENSITY,13,4,16,32
	.member	_PULSE_FC_WATER_DENSITY_ST,14,4,16,32
	.member	_PULSE_NONE,15,4,16,32
	.eos
	.stag	.fake24,64
	.member	_freq,0,6,8,32
	.member	_counter,32,4,8,32
	.eos
	.sym	_Boxcar_Var,0,8,13,64,.fake24
	.stag	.fake25,1088
	.member	_data,0,54,8,960,,30
	.member	_head,960,4,8,32
	.member	_tail,992,4,8,32
	.member	_length,1024,4,8,32
	.member	_average,1056,6,8,32
	.eos
	.sym	_bubble_struct,0,8,13,1088,.fake25
	.stag	.fake26,3008
	.member	_data,0,54,8,2880,,90
	.member	_head,2880,4,8,32
	.member	_tail,2912,4,8,32
	.member	_length,2944,4,8,32
	.member	_average,2976,6,8,32
	.eos
	.sym	_pattern_struct,0,8,13,3008,.fake26
	.stag	.fake27,320
	.member	_MODE,0,4,8,32
	.member	_STATUS_MASK,32,4,8,32
	.member	_v,64,8,8,64,.fake8
	.member	_setpoint,128,6,8,32
	.member	_ON,160,8,8,96,.fake7
	.member	_class,256,4,8,32
	.member	_unit,288,4,8,32
	.eos
	.sym	_RELAYDATA,0,8,13,320,.fake27
	.stag	.fake28,12224
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
	.member	_damp_flow_rate,864,8,8,1408,.fake6
	.member	_damp_density,2272,8,8,1408,.fake6
	.member	_mfr_cutoff,3680,8,8,1408,.fake6
	.member	_vfr_cutoff,5088,8,8,1408,.fake6
	.member	_mcf,6496,8,8,1408,.fake6
	.member	_address,7904,8,8,1408,.fake6
	.member	_mass_unit,9312,8,8,1408,.fake6
	.member	_density_cutoff,10720,8,8,1408,.fake6
	.member	_Z,12128,8,8,96,.fake7
	.eos
	.sym	_CORIOLIS,0,8,13,12224,.fake28
	.stag	.fake29,288
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
	.sym	_PRESSURE,0,8,13,288,.fake29
	.stag	.fake30,192
	.member	_T,0,6,8,32
	.member	_etc0,32,6,8,32
	.member	_etc1,64,6,8,32
	.member	_etc2,96,6,8,32
	.member	_etc3,128,6,8,32
	.member	_etc4,160,6,8,32
	.eos
	.sym	_TMPT,0,8,13,192,.fake30
	.stag	.fake31,42752
	.member	_watercut,0,8,8,1408,.fake6
	.member	_T,1408,8,8,1408,.fake6
	.member	_pressure,2816,8,8,1408,.fake6
	.member	_density,4224,8,8,1408,.fake6
	.member	_density_PDI_corrected,5632,6,8,32
	.member	_density_adj,5664,6,8,32
	.member	_density_oilST,5696,8,8,1408,.fake6
	.member	_density_oil,7104,8,8,1408,.fake6
	.member	_density_waterST,8512,8,8,1408,.fake6
	.member	_density_water,9920,8,8,1408,.fake6
	.member	_salinity,11328,8,8,1408,.fake6
	.member	_API_TABLE,12736,4,8,32
	.member	_a,12768,6,8,32
	.member	_Meter_Factor,12800,8,8,1408,.fake6
	.member	_Shrinkage,14208,8,8,1408,.fake6
	.member	_VCFo,15616,6,8,32
	.member	_VCFw,15648,6,8,32
	.member	_net_watercut,15680,6,8,32
	.member	_net_watercut_mass,15712,6,8,32
	.member	_Dadj,15744,6,8,32
	.member	_NET_FLOW_OIL,15776,8,8,1408,.fake6
	.member	_NET_FLOW_WATER,17184,8,8,1408,.fake6
	.member	_NET_FLOW_TOTAL,18592,8,8,1408,.fake6
	.member	_NET_OIL,20000,8,8,1408,.fake6
	.member	_NET_WATER,21408,8,8,1408,.fake6
	.member	_NET_TOTAL,22816,8,8,1408,.fake6
	.member	_AVG_NET_TOTAL,24224,8,8,1408,.fake6
	.member	_GROSS_OIL,25632,8,8,1408,.fake6
	.member	_gross_oil_whole_part,27040,11,8,64
	.member	_gross_oil_fract_part,27104,11,8,64
	.member	_GROSS_WATER,27168,8,8,1408,.fake6
	.member	_gross_water_whole_part,28576,11,8,64
	.member	_gross_water_fract_part,28640,11,8,64
	.member	_GROSS_TOTAL,28704,8,8,1408,.fake6
	.member	_AVG_GROSS_TOTAL,30112,8,8,1408,.fake6
	.member	_FLOW_OIL,31520,8,8,1408,.fake6
	.member	_FLOW_WATER,32928,8,8,1408,.fake6
	.member	_FLOW_TOTAL,34336,8,8,1408,.fake6
	.member	_PULSES_PER_ACCUM_UNIT,35744,14,8,32
	.member	_PULSE_TOTAL,35776,8,8,1408,.fake6
	.member	_PULSE_FLOW,37184,8,8,1408,.fake6
	.member	_PULSE_FREQ,38592,8,8,1408,.fake6
	.member	_PULSE_COUNTER,40000,14,8,32
	.member	_PULSE,40032,4,8,32
	.member	_CNT,40064,4,8,32
	.member	_PULSE_DELTA,40096,4,8,32
	.member	_PULSE_FACTOR,40128,6,8,32
	.member	_PULSE_STAT,40160,4,8,32
	.member	_enable_NET,40192,14,8,32
	.member	_enable_GROSS,40224,14,8,32
	.member	_enable_FLOW,40256,14,8,32
	.member	_enable_DENSITY,40288,14,8,32
	.member	_enable_PULSE,40320,14,8,32
	.member	_flow_class,40352,8,8,64,.fake8
	.member	_flow_unit,40416,8,8,64,.fake8
	.member	_accum_unit,40480,8,8,64,.fake8
	.member	_Z,40544,8,8,96,.fake7
	.member	_use_totalizer,40640,8,8,96,.fake7
	.member	_pulse_v,40736,8,8,64,.fake8
	.member	_pulse_class,40800,8,8,64,.fake8
	.member	_pulse_unit,40864,8,8,64,.fake8
	.member	_pulse_VALUE,40928,8,8,1408,.fake6
	.member	_USE_PDI_TEMP,42336,14,8,32
	.member	_USE_PDI_SALINITY,42368,14,8,32
	.member	_CALC_WC_DENSITY,42400,14,8,32
	.member	_MAN_TEMP,42432,14,8,32
	.member	_MAN_SALINITY,42464,14,8,32
	.member	_MAN_WATERCUT,42496,14,8,32
	.member	_MAN_DENSITY,42528,14,8,32
	.member	_MAN_PRESSURE,42560,14,8,32
	.member	_MAN_FLOW,42592,14,8,32
	.member	_AUTHORIZATION_CODE1,42624,14,8,32
	.member	_AUTHORIZATION_CODE2,42656,14,8,32
	.member	_AUTHORIZATION_CODE3,42688,14,8,32
	.member	_AUTHORIZATION_CODE4,42720,14,8,32
	.eos
	.sym	_FLOW_COMP,0,8,13,42752,.fake31
	.stag	.fake32,2176
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
	.member	_DESTINATION_ADDRESS,768,8,8,1408,.fake6
	.eos
	.sym	_ALYESKA_STRUCT,0,8,13,2176,.fake32
	.stag	.fake33,2464
	.member	_ENABLED,0,8,8,96,.fake7
	.member	_flow_threshold,96,8,8,1408,.fake6
	.member	_S3,1504,6,8,32
	.member	_S2,1536,6,8,32
	.member	_S1,1568,6,8,32
	.member	_S0,1600,6,8,32
	.member	_Fmin,1632,6,8,32
	.member	_Dmin,1664,6,8,32
	.member	_Dmax,1696,6,8,32
	.member	_CHANGED,1728,14,8,32
	.member	_PURGING,1760,14,8,32
	.member	_TEST_IN_PROGRESS,1792,14,8,32
	.member	_SP3A,1824,6,8,32
	.member	_SP2A,1856,6,8,32
	.member	_SP1A,1888,6,8,32
	.member	_SP0A,1920,6,8,32
	.member	_SPLOA,1952,6,8,32
	.member	_SPHIA,1984,6,8,32
	.member	_SP3B,2016,6,8,32
	.member	_SP2B,2048,6,8,32
	.member	_SP1B,2080,6,8,32
	.member	_SP0B,2112,6,8,32
	.member	_SPLOB,2144,6,8,32
	.member	_SPHIB,2176,6,8,32
	.member	_FBHI3,2208,6,8,32
	.member	_FBHI2,2240,6,8,32
	.member	_FBHI1,2272,6,8,32
	.member	_FBHI0,2304,6,8,32
	.member	_FBLO3,2336,6,8,32
	.member	_FBLO2,2368,6,8,32
	.member	_FBLO1,2400,6,8,32
	.member	_FBLO0,2432,6,8,32
	.eos
	.sym	_HS_STRUCT,0,8,13,2464,.fake33
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\HART.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MODBUSRTU.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MISC.H"
	.file	"Y:\workspace\EEA\V615\APP\SOURCE\INCLUDE\API.H"
	.file	"timer.c"
	.sect	 "interrupt_routines"

	.global	_Timer_Insert
	.sym	_Timer_Insert,_Timer_Insert,46,2,0
	.func	49
;******************************************************************************
;* FUNCTION NAME: _Timer_Insert                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Timer_Insert:
;* ar2   assigned to _po
	.sym	_po,10,24,17,32,.fake11
;* r2    assigned to _force
	.sym	_force,2,14,17,32
;* r3    assigned to _mode
	.sym	_mode,3,4,17,32
	.sym	_po,1,24,1,32,.fake11
	.sym	_force,2,14,1,32
	.sym	_mode,3,4,1,32
	.sym	_t,4,24,1,32,.fake11
	.sym	_x,5,24,1,32,.fake11
	.sym	_p,6,24,1,32,.fake11
	.sym	_l,7,24,1,32,.fake4
	.sym	_action,8,4,1,32
	.line	1
;----------------------------------------------------------------------
;  49 | BOOL Timer_Insert(TPKT *po, BOOL force, int mode)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
;  51 | TPKT* t;        /* temporary packet     */                             
;  52 | TPKT* x;        /* swap packet                  */                     
;  53 | TPKT* p;        /* head of LIST_TIMER0  */                             
;  54 | LIST* l;        /* LIST_TIMER0                  */                     
;  55 | int action;     /* mode                                 */             
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |50| 
        sti       r2,*+fp(2)            ; |50| 
        sti       ar2,*+fp(1)           ; |50| 
	.line	9
;----------------------------------------------------------------------
;  57 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
;  58 | l               = &LIST_TIMER0;                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,r0               ; |58| 
        sti       r0,*+fp(7)            ; |58| 
	.line	11
;----------------------------------------------------------------------
;  59 | action  = mode;                                                        
;----------------------------------------------------------------------
        ldiu      r3,r0
        sti       r0,*+fp(8)            ; |59| 
	.line	13
;----------------------------------------------------------------------
;  61 | if ((action==TMR_action_always_add) && (po->prev_n==-1))               
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |61| 
        bne       L4                    ; |61| 
;*      Branch Occurs to L4             ; |61| 
        ldiu      ar2,ar0
        ldiu      *+ar0(6),r0           ; |61| 
        cmpi      -1,r0                 ; |61| 
        bne       L4                    ; |61| 
;*      Branch Occurs to L4             ; |61| 
	.line	14
;----------------------------------------------------------------------
;  62 | action = TMR_action_add_if_not_exist;                                  
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |62| 
        sti       r0,*+fp(8)            ; |62| 
L4:        
	.line	16
;----------------------------------------------------------------------
;  64 | p = (TPKT*)LIST_TIMER0.head;                                           
;  66 | switch(action)                                                         
;  68 |         case TMR_action_add_if_not_exist:                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |64| 
        ldiu      *ar0,r0               ; |64| 
        sti       r0,*+fp(6)            ; |64| 
        bu        L16                   ; |48| 
;*      Branch Occurs to L16            ; |48| 
L5:        
	.line	22
;----------------------------------------------------------------------
;  70 | while(p!=(TPKT*)NULL)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |70| 
        cmpi      0,r0                  ; |70| 
        beq       L19                   ; |70| 
;*      Branch Occurs to L19            ; |70| 
L6:        
	.line	24
;----------------------------------------------------------------------
;  72 | if (p->parent == po->parent)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar1           ; |72| 
        ldiu      *+fp(1),ar0           ; |72| 
        ldiu      *+ar1(4),r0           ; |72| 
        cmpi      *+ar0(4),r0           ; |72| 
        bne       L8                    ; |72| 
;*      Branch Occurs to L8             ; |72| 
	.line	26
;----------------------------------------------------------------------
;  74 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	27
;----------------------------------------------------------------------
;  75 | return TRUE;                                                           
;----------------------------------------------------------------------
        bud       L37                   ; |75| 
	nop
	nop
        ldiu      1,r0                  ; |75| 
;*      Branch Occurs to L37            ; |75| 
L8:        
	.line	30
;----------------------------------------------------------------------
;  78 | p = (TPKT*)p->next;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0           ; |78| 
        ldiu      *+ar0(1),r0           ; |78| 
        sti       r0,*+fp(6)            ; |78| 
	.line	22
        cmpi      0,r0                  ; |70| 
        bne       L6                    ; |70| 
;*      Branch Occurs to L6             ; |70| 
	.line	33
;----------------------------------------------------------------------
;  81 | break;                                                                 
;  83 | case TMR_action_delete:                                                
;  84 | case TMR_action_replace:                                               
;----------------------------------------------------------------------
        bu        L19                   ; |81| 
;*      Branch Occurs to L19            ; |81| 
L10:        
	.line	38
;----------------------------------------------------------------------
;  86 | while(p!=(TPKT*)NULL)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |86| 
        cmpi      0,r0                  ; |86| 
        beq       L19                   ; |86| 
;*      Branch Occurs to L19            ; |86| 
L11:        
	.line	41
;----------------------------------------------------------------------
;  89 | if (p->parent == po->parent)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0           ; |89| 
        ldiu      *+fp(1),ar1           ; |89| 
        ldiu      *+ar0(4),r0           ; |89| 
        cmpi      *+ar1(4),r0           ; |89| 
        bne       L13                   ; |89| 
;*      Branch Occurs to L13            ; |89| 
	.line	42
;----------------------------------------------------------------------
;  90 | Timer_Remove(p);                                                       
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      ar0,ar2
        ldiu      @CL2,r0               ; |90| 
        callu     r0                    ; far call to _Timer_Remove	; |90| 
                                        ; |90| Far Call Occurs
L13:        
	.line	44
;----------------------------------------------------------------------
;  92 | p = (TPKT*)p->next;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0           ; |92| 
        ldiu      *+ar0(1),r0           ; |92| 
        sti       r0,*+fp(6)            ; |92| 
	.line	38
        cmpi      0,r0                  ; |86| 
        bne       L11                   ; |86| 
;*      Branch Occurs to L11            ; |86| 
	.line	47
;----------------------------------------------------------------------
;  95 | break;                                                                 
;----------------------------------------------------------------------
        bu        L19                   ; |95| 
;*      Branch Occurs to L19            ; |95| 
L16:        
	.line	18
        ldiu      *+fp(8),r0            ; |66| 
        cmpi      1,r0                  ; |66| 
        beq       L10                   ; |66| 
;*      Branch Occurs to L10            ; |66| 
        cmpi      2,r0                  ; |66| 
        beq       L5                    ; |66| 
;*      Branch Occurs to L5             ; |66| 
        cmpi      3,r0                  ; |66| 
        beq       L10                   ; |66| 
;*      Branch Occurs to L10            ; |66| 
L19:        
	.line	51
;----------------------------------------------------------------------
;  99 | if (action == TMR_action_delete)                                       
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |99| 
        cmpi      3,r0                  ; |99| 
        bne       L21                   ; |99| 
;*      Branch Occurs to L21            ; |99| 
	.line	53
;----------------------------------------------------------------------
; 101 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	55
;----------------------------------------------------------------------
; 103 | return TRUE;                                                           
;----------------------------------------------------------------------
        bud       L37                   ; |103| 
	nop
	nop
        ldiu      1,r0                  ; |103| 
;*      Branch Occurs to L37            ; |103| 
L21:        
	.line	58
;----------------------------------------------------------------------
; 106 | p = (TPKT*)List_Pop(&LIST_TMR_EMPTY);                                  
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |106| 
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |106| 
        callu     r0                    ; far call to _List_Pop	; |106| 
                                        ; |106| Far Call Occurs
        sti       r0,*+fp(6)            ; |106| 
	.line	60
;----------------------------------------------------------------------
; 108 | if (p==(TPKT*)NULL)                                                    
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |108| 
        bne       L23                   ; |108| 
;*      Branch Occurs to L23            ; |108| 
	.line	62
;----------------------------------------------------------------------
; 110 | DIAGNOSTICS[0] |= ERROR_TMR_FAIL;                                      
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |110| 
        ldiu      4,r0                  ; |110| 
        or3       r0,*ar0,r0            ; |110| 
        sti       r0,*ar0               ; |110| 
	.line	63
;----------------------------------------------------------------------
; 111 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	65
;----------------------------------------------------------------------
; 113 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L37                   ; |113| 
	nop
	nop
        ldiu      0,r0                  ; |113| 
;*      Branch Occurs to L37            ; |113| 
L23:        
	.line	69
;----------------------------------------------------------------------
; 117 | p->prev                 = po->prev;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |117| 
        ldiu      *+fp(6),ar1           ; |117| 
        ldiu      *ar0,r0               ; |117| 
        sti       r0,*ar1               ; |117| 
	.line	70
;----------------------------------------------------------------------
; 118 | p->next                 = po->next;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |118| 
        ldiu      *+fp(6),ar1           ; |118| 
        ldiu      *+ar0(1),r0           ; |118| 
        sti       r0,*+ar1(1)           ; |118| 
	.line	71
;----------------------------------------------------------------------
; 119 | p->vect                 = po->vect;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |119| 
        ldiu      *+fp(6),ar1           ; |119| 
        ldiu      *+ar0(2),r0           ; |119| 
        sti       r0,*+ar1(2)           ; |119| 
	.line	72
;----------------------------------------------------------------------
; 120 | p->priority     = po->priority;                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |120| 
        ldiu      *+fp(6),ar0           ; |120| 
        ldiu      *+ar1(3),r0           ; |120| 
        sti       r0,*+ar0(3)           ; |120| 
	.line	73
;----------------------------------------------------------------------
; 121 | p->n                    = po->n;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |121| 
        ldiu      *+fp(6),ar0           ; |121| 
        ldiu      *+ar1(5),r0           ; |121| 
        sti       r0,*+ar0(5)           ; |121| 
	.line	74
;----------------------------------------------------------------------
; 122 | p->prev_n               = po->prev_n;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |122| 
        ldiu      *+fp(6),ar0           ; |122| 
        ldiu      *+ar1(6),r0           ; |122| 
        sti       r0,*+ar0(6)           ; |122| 
	.line	75
;----------------------------------------------------------------------
; 123 | p->countdown    = po->countdown;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |123| 
        ldiu      *+fp(6),ar0           ; |123| 
        ldiu      *+ar1(7),r0           ; |123| 
        sti       r0,*+ar0(7)           ; |123| 
	.line	76
;----------------------------------------------------------------------
; 124 | p->preset_time  = po->preset_time;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |124| 
        ldiu      *+fp(6),ar0           ; |124| 
        ldiu      *+ar1(8),r0           ; |124| 
        sti       r0,*+ar0(8)           ; |124| 
	.line	77
;----------------------------------------------------------------------
; 125 | p->parent               = po->parent;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |125| 
        ldiu      *+fp(6),ar0           ; |125| 
        ldiu      *+ar1(4),r0           ; |125| 
        sti       r0,*+ar0(4)           ; |125| 
	.line	80
;----------------------------------------------------------------------
; 128 | if (force)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |128| 
        cmpi      0,r0                  ; |128| 
        beq       L25                   ; |128| 
;*      Branch Occurs to L25            ; |128| 
	.line	81
;----------------------------------------------------------------------
; 129 | p->countdown = 1;                                                      
; 130 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0           ; |129| 
        ldiu      1,r0                  ; |129| 
        sti       r0,*+ar0(7)           ; |129| 
        bu        L26                   ; |48| 
;*      Branch Occurs to L26            ; |48| 
L25:        
	.line	83
;----------------------------------------------------------------------
; 131 | p->countdown = p->preset_time;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar1           ; |131| 
        ldiu      ar1,ar0               ; |131| 
        ldiu      *+ar1(8),r0           ; |131| 
        sti       r0,*+ar0(7)           ; |131| 
L26:        
	.line	85
;----------------------------------------------------------------------
; 133 | l->n++;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |133| 
        ldiu      1,r0                  ; |133| 
        addi      *+ar0(2),r0           ; |133| 
        sti       r0,*+ar0(2)           ; |133| 
	.line	87
;----------------------------------------------------------------------
; 135 | if (l->head == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |135| 
        ldiu      *ar0,r0               ; |135| 
        cmpi      0,r0                  ; |135| 
        bne       L28                   ; |135| 
;*      Branch Occurs to L28            ; |135| 
	.line	89
;----------------------------------------------------------------------
; 137 | l->head = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |137| 
        sti       r0,*ar0               ; |137| 
	.line	90
;----------------------------------------------------------------------
; 138 | l->tail = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |138| 
        ldiu      *+fp(6),r0            ; |138| 
        sti       r0,*+ar0(1)           ; |138| 
	.line	91
;----------------------------------------------------------------------
; 139 | p->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0           ; |139| 
        ldiu      0,r0                  ; |139| 
        sti       r0,*ar0               ; |139| 
	.line	92
;----------------------------------------------------------------------
; 140 | p->next = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0           ; |140| 
        sti       r0,*+ar0(1)           ; |140| 
	.line	93
;----------------------------------------------------------------------
; 141 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	95
;----------------------------------------------------------------------
; 143 | return TRUE;                                                           
;----------------------------------------------------------------------
        bud       L37                   ; |143| 
	nop
	nop
        ldiu      1,r0                  ; |143| 
;*      Branch Occurs to L37            ; |143| 
L28:        
	.line	98
;----------------------------------------------------------------------
; 146 | t = (TPKT*) l->head;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |146| 
        ldiu      *ar0,r0               ; |146| 
        sti       r0,*+fp(4)            ; |146| 
	.line	100
;----------------------------------------------------------------------
; 148 | while ((int*)t != NULL_PTR)                                            
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |148| 
        beq       L31                   ; |148| 
;*      Branch Occurs to L31            ; |148| 
L29:        
	.line	102
;----------------------------------------------------------------------
; 150 | if (p->countdown < t->countdown)                                       
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0           ; |150| 
        ldiu      *+fp(4),ar1           ; |150| 
        ldiu      *+ar0(7),r0           ; |150| 
        cmpi      *+ar1(7),r0           ; |150| 
        blt       L31                   ; |150| 
;*      Branch Occurs to L31            ; |150| 
	.line	103
;----------------------------------------------------------------------
; 151 | break;                                                                 
;----------------------------------------------------------------------
	.line	105
;----------------------------------------------------------------------
; 153 | p->countdown -= t->countdown;                                          
;----------------------------------------------------------------------
        ldiu      *+ar1(7),r0           ; |153| 
        subri     *+ar0(7),r0           ; |153| 
        sti       r0,*+ar0(7)           ; |153| 
	.line	106
;----------------------------------------------------------------------
; 154 | t                         = (TPKT*) t->next;                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |154| 
        ldiu      *+ar0(1),r0           ; |154| 
        sti       r0,*+fp(4)            ; |154| 
	.line	100
        cmpi      0,r0                  ; |148| 
        bne       L29                   ; |148| 
;*      Branch Occurs to L29            ; |148| 
L31:        
	.line	109
;----------------------------------------------------------------------
; 157 | if ((int*)t == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |157| 
        cmpi      0,r0                  ; |157| 
        bne       L34                   ; |157| 
;*      Branch Occurs to L34            ; |157| 
	.line	111
;----------------------------------------------------------------------
; 159 | t               = (TPKT*)l->tail;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |159| 
        ldiu      *+ar0(1),r0           ; |159| 
        sti       r0,*+fp(4)            ; |159| 
	.line	112
;----------------------------------------------------------------------
; 160 | t->next = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(6),r0            ; |160| 
        sti       r0,*+ar0(1)           ; |160| 
	.line	113
;----------------------------------------------------------------------
; 161 | p->prev = l->tail;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar1           ; |161| 
        ldiu      *+fp(6),ar0           ; |161| 
        ldiu      *+ar1(1),r0           ; |161| 
        sti       r0,*ar0               ; |161| 
	.line	114
;----------------------------------------------------------------------
; 162 | l->tail = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |162| 
        ldiu      *+fp(6),r0            ; |162| 
        sti       r0,*+ar0(1)           ; |162| 
	.line	115
;----------------------------------------------------------------------
; 163 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	117
;----------------------------------------------------------------------
; 165 | return TRUE;                                                           
; 167 | else                                                                   
;----------------------------------------------------------------------
        bud       L37                   ; |165| 
	nop
	nop
        ldiu      1,r0                  ; |165| 
;*      Branch Occurs to L37            ; |165| 
L34:        
	.line	121
;----------------------------------------------------------------------
; 169 | if (l->head == (int*)t)                                                
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |169| 
        ldiu      *ar0,r0               ; |169| 
        cmpi      *+fp(4),r0            ; |169| 
        bne       L36                   ; |169| 
;*      Branch Occurs to L36            ; |169| 
	.line	122
;----------------------------------------------------------------------
; 170 | l->head = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |170| 
        sti       r0,*ar0               ; |170| 
L36:        
	.line	124
;----------------------------------------------------------------------
; 172 | p->prev           = t->prev;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |172| 
        ldiu      *+fp(6),ar1           ; |172| 
        ldiu      *ar0,r0               ; |172| 
        sti       r0,*ar1               ; |172| 
	.line	125
;----------------------------------------------------------------------
; 173 | p->next           = (int*)t;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0           ; |173| 
        ldiu      *+fp(4),r0            ; |173| 
        sti       r0,*+ar0(1)           ; |173| 
	.line	126
;----------------------------------------------------------------------
; 174 | x                         = (TPKT*) t->prev;                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |174| 
        ldiu      *ar0,r0               ; |174| 
        sti       r0,*+fp(5)            ; |174| 
	.line	127
;----------------------------------------------------------------------
; 175 | x->next           = (int*)p;                                           
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(6),r0            ; |175| 
        sti       r0,*+ar0(1)           ; |175| 
	.line	128
;----------------------------------------------------------------------
; 176 | t->prev           = (int*)p;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |176| 
        ldiu      *+fp(6),r0            ; |176| 
        sti       r0,*ar0               ; |176| 
	.line	129
;----------------------------------------------------------------------
; 177 | t->countdown -= p->countdown;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar1           ; |177| 
        ldiu      *+fp(4),ar0           ; |177| 
        ldiu      *+ar1(7),r0           ; |177| 
        subri     *+ar0(7),r0           ; |177| 
        sti       r0,*+ar0(7)           ; |177| 
	.line	132
;----------------------------------------------------------------------
; 180 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	134
;----------------------------------------------------------------------
; 182 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |182| 
L37:        
	.line	135
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |183| 
        ldiu      *fp,fp                ; |183| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |183| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	183,000000000h,8


	.sect	 "interrupt_routines"

	.global	_Timer_Remove
	.sym	_Timer_Remove,_Timer_Remove,46,2,0
	.func	197
;******************************************************************************
;* FUNCTION NAME: _Timer_Remove                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Timer_Remove:
;* ar2   assigned to _p
	.sym	_p,10,24,17,32,.fake11
	.sym	_p,1,24,1,32,.fake11
	.sym	_t,2,24,1,32,.fake11
	.sym	_l,3,24,1,32,.fake4
	.line	1
;----------------------------------------------------------------------
; 197 | BOOL Timer_Remove(TPKT *p)                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 199 | TPKT* t;                                                               
; 200 | LIST* l;                                                               
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |198| 
	.line	6
;----------------------------------------------------------------------
; 202 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 203 | l = &LIST_TIMER0;                                                      
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,r0               ; |203| 
        sti       r0,*+fp(3)            ; |203| 
	.line	9
;----------------------------------------------------------------------
; 205 | if (p->next != NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *+ar0(1),r0           ; |205| 
        cmpi      0,r0                  ; |205| 
        beq       L41                   ; |205| 
;*      Branch Occurs to L41            ; |205| 
	.line	11
;----------------------------------------------------------------------
; 207 | t                         = (TPKT*)p->next;                            
;----------------------------------------------------------------------
        ldiu      *+ar0(1),r0           ; |207| 
        sti       r0,*+fp(2)            ; |207| 
	.line	12
;----------------------------------------------------------------------
; 208 | t->countdown += p->countdown;                                          
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldiu      r0,ar0
        ldiu      *+ar1(7),r0           ; |208| 
        addi      *+ar0(7),r0           ; |208| 
        sti       r0,*+ar0(7)           ; |208| 
L41:        
	.line	15
;----------------------------------------------------------------------
; 211 | if(List_Remove(l, (GENERIC*)p))                                        
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      *+fp(3),ar2           ; |211| 
        ldiu      *+fp(1),r2            ; |211| 
        ldiu      @CL6,r0               ; |211| 
        callu     r0                    ; far call to _List_Remove	; |211| 
                                        ; |211| Far Call Occurs
        cmpi      0,r0                  ; |211| 
        beq       L43                   ; |211| 
;*      Branch Occurs to L43            ; |211| 
	.line	16
;----------------------------------------------------------------------
; 212 | List_Add(&LIST_TMR_EMPTY, (GENERIC*)p);                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,r0               ; |212| 
        ldiu      *+fp(1),r2            ; |212| 
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |212| 
        callu     r0                    ; far call to _List_Add	; |212| 
                                        ; |212| Far Call Occurs
L43:        
	.line	18
;----------------------------------------------------------------------
; 214 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	20
;----------------------------------------------------------------------
; 216 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |216| 
	.line	21
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |217| 
        ldiu      *fp,fp                ; |217| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |217| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	217,000000000h,3


	.sect	 ".text"

	.global	_Timer_Create
	.sym	_Timer_Create,_Timer_Create,46,2,0
	.func	236
;******************************************************************************
;* FUNCTION NAME: _Timer_Create                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r3,ar0,ar1,ar2,st,rs,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 0 SOE = 8 words          *
;******************************************************************************
_Timer_Create:
;* ar2   assigned to _p
	.sym	_p,10,24,17,32,.fake11
;* f2    assigned to _sec
	.sym	_sec,2,6,17,32
;* r3    assigned to _nrepeat
	.sym	_nrepeat,3,4,17,32
;* rc    assigned to _vect
	.sym	_vect,19,20,17,32
;* rs    assigned to _pri
	.sym	_pri,20,4,17,32
	.sym	_p,1,24,1,32,.fake11
	.sym	_sec,2,6,1,32
	.sym	_nrepeat,3,4,1,32
	.sym	_vect,4,20,1,32
	.sym	_pri,5,4,1,32
	.sym	_preset,6,4,1,32
	.line	1
;----------------------------------------------------------------------
; 236 | BOOL Timer_Create(TPKT *p, float sec, int nrepeat, int* vect, int pri) 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 238 | int preset;                                                            
;----------------------------------------------------------------------
        sti       rs,*+fp(5)            ; |237| 
        sti       rc,*+fp(4)            ; |237| 
        sti       r3,*+fp(3)            ; |237| 
        stf       f2,*+fp(2)            ; |237| 
        sti       ar2,*+fp(1)           ; |237| 
	.line	5
;----------------------------------------------------------------------
; 240 | preset = ceil(sec/TIME0);                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |240| 
        ldfu      f2,f0
        ldfu      *ar0,f1               ; |240| 
        call      DIV_F30               ; |240| 
                                        ; |240| Call Occurs
        ldp       @CL9,DP
        ldiu      @CL9,r1               ; |240| 
        ldfu      f0,f2                 ; |240| 
        callu     r1                    ; far call to _ceil	; |240| 
                                        ; |240| Far Call Occurs
        fix       f0,r1                 ; |240| 
        negf      f0,f2                 ; |240| 
        fix       f2,r0                 ; |240| 
        negi      r0,r0                 ; |240| 
        ldile     r0,r1                 ; |240| 
        sti       r1,*+fp(6)            ; |240| 
	.line	7
;----------------------------------------------------------------------
; 242 | if (preset<=0)                                                         
;----------------------------------------------------------------------
        ldiu      r1,r0
        cmpi      0,r0                  ; |242| 
        bgt       L48                   ; |242| 
;*      Branch Occurs to L48            ; |242| 
	.line	8
;----------------------------------------------------------------------
; 243 | preset = 1;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |243| 
        sti       r0,*+fp(6)            ; |243| 
L48:        
	.line	10
;----------------------------------------------------------------------
; 245 | p->t                    = preset*TIME0;                                
;----------------------------------------------------------------------
        ldp       @CL8,DP
        float     *+fp(6),f0            ; |245| 
        ldiu      @CL8,ar1              ; |245| 
        ldiu      *+fp(1),ar0           ; |245| 
        mpyf3     *ar1,f0,f0            ; |245| 
        stf       f0,*+ar0(9)           ; |245| 
	.line	11
;----------------------------------------------------------------------
; 246 | p->vect                 = vect;                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |246| 
        ldiu      *+fp(4),r0            ; |246| 
        sti       r0,*+ar0(2)           ; |246| 
	.line	12
;----------------------------------------------------------------------
; 247 | p->countdown    = preset;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |247| 
        ldiu      *+fp(6),r0            ; |247| 
        sti       r0,*+ar0(7)           ; |247| 
	.line	13
;----------------------------------------------------------------------
; 248 | p->preset_time  = preset;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |248| 
        ldiu      *+fp(6),r0            ; |248| 
        sti       r0,*+ar0(8)           ; |248| 
	.line	14
;----------------------------------------------------------------------
; 249 | p->prev                 = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |249| 
        ldiu      0,r0                  ; |249| 
        sti       r0,*ar0               ; |249| 
	.line	15
;----------------------------------------------------------------------
; 250 | p->next                 = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |250| 
        sti       r0,*+ar0(1)           ; |250| 
	.line	16
;----------------------------------------------------------------------
; 251 | p->n                        = nrepeat;                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |251| 
        ldiu      *+fp(3),r0            ; |251| 
        sti       r0,*+ar0(5)           ; |251| 
	.line	17
;----------------------------------------------------------------------
; 252 | p->prev_n               = nrepeat;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |252| 
        ldiu      *+fp(3),r0            ; |252| 
        sti       r0,*+ar0(6)           ; |252| 
	.line	18
;----------------------------------------------------------------------
; 253 | p->priority     = pri;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |253| 
        ldiu      *+fp(5),r0            ; |253| 
        sti       r0,*+ar0(3)           ; |253| 
	.line	19
;----------------------------------------------------------------------
; 254 | p->parent               = (int*)p;      /* this identifies the packet's
;     |  master copy for reference within the queue */                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |254| 
        ldiu      ar0,r0                ; |254| 
        sti       r0,*+ar0(4)           ; |254| 
	.line	21
;----------------------------------------------------------------------
; 256 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |256| 
	.line	22
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |257| 
        ldiu      *fp,fp                ; |257| 
                                        ; Unallocate the Frame
        subi      8,sp                  ; |257| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	257,000000000h,6


	.sect	 "initialization"

	.global	_Setup_Timer
	.sym	_Setup_Timer,_Setup_Timer,32,2,0
	.func	272
;******************************************************************************
;* FUNCTION NAME: _Setup_Timer                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r4,r5,ar0,ar2,ar4,ar5,ar6,ar7,ir0,*
;*                        st                                                  *
;*   Regs Saved         : r4,r5,ar4,ar5,ar6,ar7                               *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 6 SOE = 12 words         *
;******************************************************************************
_Setup_Timer:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
;* f2    assigned to _t
	.sym	_t,2,6,17,32
	.sym	_id,1,4,1,32
	.sym	_t,2,6,1,32
	.sym	_ta,3,6,1,32
	.sym	_i,4,4,1,32
	.line	1
;----------------------------------------------------------------------
; 272 | void Setup_Timer(int id, float t)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
        push      r4
        push      r5
        push      ar4
        push      ar5
        push      ar6
        push      ar7
	.line	2
;----------------------------------------------------------------------
; 274 | float   ta;     /* timer cycles */                                     
; 275 | int             i;      /* counter              */                     
;----------------------------------------------------------------------
        stf       f2,*+fp(2)            ; |273| 
        sti       ar2,*+fp(1)           ; |273| 
	.line	6
;----------------------------------------------------------------------
; 277 | if (id==0)                                                             
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      0,r0                  ; |277| 
        bne       L59                   ; |277| 
;*      Branch Occurs to L59            ; |277| 
	.line	8
;----------------------------------------------------------------------
; 279 | ta = t * TMR0_FREQ;             /* (t sec * TMR0_FREQ Hz) = CPU cycles
;     | in t time */                                                           
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |279| 
        ldp       @CL11,DP
        float     *ar0,f0               ; |279| 
        ldflt     @CL11,f1              ; |279| 
        ldfge     0.0000000000e+00,f1   ; |279| 
        ldp       @CL12,DP
        addf3     f0,f1,f0              ; |279| 
        mpyf      @CL12,f0              ; |279| 
        mpyf      *+fp(2),f0            ; |279| 
        stf       f0,*+fp(3)            ; |279| 
	.line	10
;----------------------------------------------------------------------
; 281 | if (0.5<=(ta-(int)ta))                                                 
;----------------------------------------------------------------------
        ldfu      f0,f2
        ldfu      @CL12,f1              ; |281| 
        negf      f2,f0                 ; |281| 
        fix       f0,r0                 ; |281| 
        fix       f2,r2                 ; |281| 
        negi      r0,r0                 ; |281| 
        ldile     r0,r2                 ; |281| 
        float     r2,f0                 ; |281| 
        subrf     *+fp(3),f0            ; |281| 
        cmpf3     f0,f1                 ; |281| 
        bgt       L54                   ; |281| 
;*      Branch Occurs to L54            ; |281| 
	.line	11
;----------------------------------------------------------------------
; 282 | ta++;                                                                  
;----------------------------------------------------------------------
        ldfu      1.0000000000e+00,f0   ; |282| 
        addf      *+fp(3),f0            ; |282| 
        stf       f0,*+fp(3)            ; |282| 
L54:        
	.line	13
;----------------------------------------------------------------------
; 284 | *TMR0_GC                = (TMR_FUNC | TMR_GO | TMR_HLD);               
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |284| 
        ldiu      193,r0                ; |284| 
        sti       r0,*ar0               ; |284| 
	.line	14
;----------------------------------------------------------------------
; 285 | *TMR0_PER               = (int)ta;                                     
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |285| 
        ldp       @CL15,DP
        ldfu      *+fp(3),f0            ; |285| 
        cmpf      @CL15,f0              ; |285| 
        ldp       @CL11,DP
        ldflt     0.0000000000e+00,f1   ; |285| 
        ldfge     @CL11,f1              ; |285| 
        subrf     f0,f1                 ; |285| 
        fix       f1,r0                 ; |285| 
        sti       r0,*ar0               ; |285| 
	.line	15
;----------------------------------------------------------------------
; 286 | TIME0                   = ta/(float)TMR0_FREQ * 1047.0;                
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |286| 
        ldp       @CL11,DP
        float     *ar0,f1               ; |286| 
        ldflt     @CL11,f0              ; |286| 
        ldfge     0.0000000000e+00,f0   ; |286| 
        addf3     f1,f0,f1              ; |286| 
        ldp       @CL12,DP
        ldfu      *+fp(3),f0            ; |286| 
        mpyf      @CL12,f1              ; |286| 
        call      DIV_F30               ; |286| 
                                        ; |286| Call Occurs
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |286| 
        ldp       @CL16,DP
        mpyf      @CL16,f0              ; |286| 
        stf       f0,*ar0               ; |286| 
	.line	16
;----------------------------------------------------------------------
; 287 | TIME1                   = ta/(float)TMR0_FREQ;                         
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |287| 
        ldp       @CL11,DP
        float     *ar0,f1               ; |287| 
        ldflt     @CL11,f0              ; |287| 
        ldfge     0.0000000000e+00,f0   ; |287| 
        ldp       @CL12,DP
        addf3     f1,f0,f1              ; |287| 
        mpyf      @CL12,f1              ; |287| 
        ldfu      *+fp(3),f0            ; |287| 
        call      DIV_F30               ; |287| 
                                        ; |287| Call Occurs
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |287| 
        stf       f0,*ar0               ; |287| 
	.line	17
;----------------------------------------------------------------------
; 288 | TIMER0_COUNTER  = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |288| 
        ldiu      0,r0                  ; |288| 
        sti       r0,*ar0               ; |288| 
	.line	19
;----------------------------------------------------------------------
; 290 | List_Init(&LIST_TIMER0);                                               
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,r0              ; |290| 
        ldp       @CL1,DP
        ldiu      @CL1,ar2              ; |290| 
        callu     r0                    ; far call to _List_Init	; |290| 
                                        ; |290| Far Call Occurs
	.line	20
;----------------------------------------------------------------------
; 291 | List_Init(&LIST_TMR_EMPTY);                                            
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,r0              ; |291| 
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |291| 
        callu     r0                    ; far call to _List_Init	; |291| 
                                        ; |291| Far Call Occurs
	.line	22
;----------------------------------------------------------------------
; 293 | for (i=0;i<TMR_Q_LEN;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |293| 
        sti       r0,*+fp(4)            ; |293| 
        ldiu      0,ar7                 ; |301| 
        ldiu      0,ar6                 ; |300| 
        ldiu      0,ar5                 ; |299| 
        ldiu      0,ar4                 ; |298| 
        ldiu      0,r5                  ; |297| 
        ldiu      0,r4                  ; |296| 
        cmpi      40,r0                 ; |293| 
        bge       L56                   ; |293| 
;*      Branch Occurs to L56            ; |293| 
L55:        
	.line	24
;----------------------------------------------------------------------
; 295 | QUEUE_TMR[i].prev                = 0;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ir0           ; |295| 
        ldp       @CL20,DP
        mpyi      10,ir0                ; |295| 
        ldiu      @CL20,ar0             ; |295| 
        ldiu      0,r0                  ; |295| 
        sti       r0,*+ar0(ir0)         ; |295| 
	.line	25
;----------------------------------------------------------------------
; 296 | QUEUE_TMR[i].next                = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      *+fp(4),ir0           ; |296| 
        ldiu      @CL21,ar0             ; |296| 
        mpyi      10,ir0                ; |296| 
        sti       r4,*+ar0(ir0)         ; |296| 
	.line	26
;----------------------------------------------------------------------
; 297 | QUEUE_TMR[i].vect                = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(4),ir0           ; |297| 
        ldiu      @CL22,ar0             ; |297| 
        mpyi      10,ir0                ; |297| 
        sti       r5,*+ar0(ir0)         ; |297| 
	.line	27
;----------------------------------------------------------------------
; 298 | QUEUE_TMR[i].priority    = 0;                                          
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      *+fp(4),ir0           ; |298| 
        ldiu      @CL23,ar0             ; |298| 
        mpyi      10,ir0                ; |298| 
        sti       ar4,*+ar0(ir0)        ; |298| 
	.line	28
;----------------------------------------------------------------------
; 299 | QUEUE_TMR[i].parent      = 0;                                          
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      *+fp(4),ir0           ; |299| 
        ldiu      @CL24,ar0             ; |299| 
        mpyi      10,ir0                ; |299| 
        sti       ar5,*+ar0(ir0)        ; |299| 
	.line	29
;----------------------------------------------------------------------
; 300 | QUEUE_TMR[i].n                   = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(4),ir0           ; |300| 
        mpyi      10,ir0                ; |300| 
        ldiu      @CL25,ar0             ; |300| 
        sti       ar6,*+ar0(ir0)        ; |300| 
	.line	30
;----------------------------------------------------------------------
; 301 | QUEUE_TMR[i].prev_n      = 0;                                          
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      *+fp(4),ir0           ; |301| 
        ldiu      @CL26,ar0             ; |301| 
        mpyi      10,ir0                ; |301| 
        sti       ar7,*+ar0(ir0)        ; |301| 
	.line	31
;----------------------------------------------------------------------
; 302 | QUEUE_TMR[i].countdown   = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),ir0           ; |302| 
        ldp       @CL27,DP
        mpyi      10,ir0                ; |302| 
        ldiu      @CL27,ar0             ; |302| 
        sti       r0,*+ar0(ir0)         ; |302| 
	.line	32
;----------------------------------------------------------------------
; 303 | QUEUE_TMR[i].preset_time = 0;                                          
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldiu      *+fp(4),ir0           ; |303| 
        ldiu      @CL28,ar0             ; |303| 
        mpyi      10,ir0                ; |303| 
        sti       r0,*+ar0(ir0)         ; |303| 
	.line	34
;----------------------------------------------------------------------
; 305 | List_Add(&LIST_TMR_EMPTY, (GENERIC*)(&QUEUE_TMR[i]));                  
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,r0               ; |305| 
        ldp       @CL20,DP
        ldiu      *+fp(4),r2            ; |305| 
        mpyi      10,r2                 ; |305| 
        addi      @CL20,r2              ; |305| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |305| 
        callu     r0                    ; far call to _List_Add	; |305| 
                                        ; |305| Far Call Occurs
	.line	22
        ldiu      1,r0                  ; |293| 
        addi      *+fp(4),r0            ; |293| 
        sti       r0,*+fp(4)            ; |293| 
        cmpi      40,r0                 ; |293| 
        blt       L55                   ; |293| 
;*      Branch Occurs to L55            ; |293| 
L56:        
	.line	37
;----------------------------------------------------------------------
; 308 | for (i=0;i<(UART_MAX+1);i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |308| 
        sti       r0,*+fp(4)            ; |308| 
        ldiu      0,r1                  ; |310| 
        cmpi      9,r0                  ; |308| 
        ldiu      0,r2                  ; |311| 
        bge       L58                   ; |308| 
;*      Branch Occurs to L58            ; |308| 
L57:        
	.line	39
;----------------------------------------------------------------------
; 310 | TIMER1_COUNTER[i]       = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      *+fp(4),ir0           ; |310| 
        ldiu      @CL29,ar0             ; |310| 
        sti       r1,*+ar0(ir0)         ; |310| 
	.line	40
;----------------------------------------------------------------------
; 311 | PORT[i].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      *+fp(4),ir0           ; |311| 
        ldiu      @CL30,ar0             ; |311| 
        mpyi      71,ir0                ; |311| 
        sti       r2,*+ar0(ir0)         ; |311| 
	.line	37
        ldiu      1,r0                  ; |308| 
        addi      *+fp(4),r0            ; |308| 
        sti       r0,*+fp(4)            ; |308| 
        cmpi      9,r0                  ; |308| 
        blt       L57                   ; |308| 
;*      Branch Occurs to L57            ; |308| 
L58:        
	.line	43
;----------------------------------------------------------------------
; 314 | ENABLE_TINT0;                                                          
;----------------------------------------------------------------------
	or		0100h, IE
        bu        L61                   ; |271| 
;*      Branch Occurs to L61            ; |271| 
L59:        
	.line	45
;----------------------------------------------------------------------
; 316 | else if (id==1)                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |316| 
        cmpi      1,r0                  ; |316| 
        bne       L61                   ; |316| 
;*      Branch Occurs to L61            ; |316| 
	.line	47
;----------------------------------------------------------------------
; 318 | *TMR1_GC        = (TMR_FUNC | TMR_GO | TMR_HLD);                       
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      @CL31,ar0             ; |318| 
        ldiu      193,r0                ; |318| 
        sti       r0,*ar0               ; |318| 
	.line	48
;----------------------------------------------------------------------
; 319 | *TMR1_PER       = 1000000000;   /* register is rolled to 0 after 999999
;     | 999 */                                                                 
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar0             ; |319| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |319| 
        sti       r0,*ar0               ; |319| 
	.line	49
;----------------------------------------------------------------------
; 320 | DISABLE_TINT1;                                                         
;----------------------------------------------------------------------
	andn	0200h, IE
L61:        
	.line	51
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar7
        pop       ar6
        pop       ar5
        pop       ar4
        pop       r5
        pop       r4
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	322,00000f030h,4


	.sect	 ".text"

	.global	_Setup_Gate
	.sym	_Setup_Gate,_Setup_Gate,32,2,0
	.func	339
;******************************************************************************
;* FUNCTION NAME: _Setup_Gate                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,r2,r3,ar0,ar2,st,rc                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Setup_Gate:
;* ar2   assigned to _gt
	.sym	_gt,10,22,17,32
;* r2    assigned to _ps
	.sym	_ps,2,22,17,32
;* r3    assigned to _enabled
	.sym	_enabled,3,14,17,32
;* rc    assigned to _aux_in
	.sym	_aux_in,19,14,17,32
	.sym	_gt,1,22,1,32
	.sym	_ps,2,22,1,32
	.sym	_enabled,3,14,1,32
	.sym	_aux_in,4,14,1,32
	.sym	_GATE_DIV,5,4,1,32
	.sym	_val,6,6,1,32
	.sym	_i,7,4,1,32
	.line	1
;----------------------------------------------------------------------
; 339 | void Setup_Gate(float* gt, float* ps, BOOL enabled, BOOL aux_in)       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 341 | int GATE_DIV;                                                          
; 342 | float val;                                                             
; 343 | int     i;                                                             
;----------------------------------------------------------------------
        sti       rc,*+fp(4)            ; |340| 
        sti       r3,*+fp(3)            ; |340| 
        sti       r2,*+fp(2)            ; |340| 
        sti       ar2,*+fp(1)           ; |340| 
	.line	7
;----------------------------------------------------------------------
; 345 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
; 347 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |347| 
        ldiu      *ar0,r0               ; |347| 
        cmpi      0,r0                  ; |347| 
        beq       L77                   ; |347| 
;*      Branch Occurs to L77            ; |347| 
	.line	11
;----------------------------------------------------------------------
; 349 | val      = gt[0];                                                      
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldfu      *ar0,f0               ; |349| 
        stf       f0,*+fp(6)            ; |349| 
	.line	12
;----------------------------------------------------------------------
; 350 | val     *= GATE_CLK;                                                   
;----------------------------------------------------------------------
        ldfu      1.2800000000e+02,f0   ; |350| 
        mpyf      *+fp(6),f0            ; |350| 
        stf       f0,*+fp(6)            ; |350| 
	.line	13
;----------------------------------------------------------------------
; 351 | GATE_DIV = (unsigned int)val;                                          
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |351| 
        fix       f0,r0                 ; |351| 
        fix       f1,r1                 ; |351| 
        negi      r0,r0                 ; |351| 
        ldile     r0,r1                 ; |351| 
        sti       r1,*+fp(5)            ; |351| 
	.line	15
;----------------------------------------------------------------------
; 353 | if (GATE_DIV>=255)                                                     
;----------------------------------------------------------------------
        ldiu      r1,r0
        cmpi      255,r0                ; |353| 
        blt       L66                   ; |353| 
;*      Branch Occurs to L66            ; |353| 
	.line	16
;----------------------------------------------------------------------
; 354 | GATE_DIV = 255;                                                        
;----------------------------------------------------------------------
        ldiu      255,r0                ; |354| 
        sti       r0,*+fp(5)            ; |354| 
        bu        L68                   ; |338| 
;*      Branch Occurs to L68            ; |338| 
L66:        
	.line	17
;----------------------------------------------------------------------
; 355 | else if (GATE_DIV<=0)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |355| 
        cmpi      0,r0                  ; |355| 
        bgt       L68                   ; |355| 
;*      Branch Occurs to L68            ; |355| 
	.line	18
;----------------------------------------------------------------------
; 356 | GATE_DIV = 1;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |356| 
        sti       r0,*+fp(5)            ; |356| 
L68:        
	.line	20
;----------------------------------------------------------------------
; 358 | val               = (float)GATE_DIV/(float)GATE_CLK;                   
;----------------------------------------------------------------------
        ldp       @CL35,DP
        float     *+fp(5),f0            ; |358| 
        mpyf      @CL35,f0              ; |358| 
        stf       f0,*+fp(6)            ; |358| 
	.line	21
;----------------------------------------------------------------------
; 359 | gt[0]             = val;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |359| 
        stf       f0,*ar0               ; |359| 
	.line	22
;----------------------------------------------------------------------
; 360 | *GATE_DIVIDER = GATE_DIV;                                              
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |360| 
        ldiu      *+fp(5),r0            ; |360| 
        sti       r0,*ar0               ; |360| 
	.line	23
;----------------------------------------------------------------------
; 361 | i                         = ps[0];                                     
; 363 | switch (i)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |361| 
        ldfu      *ar0,f0               ; |361| 
        negf      f0,f1                 ; |361| 
        fix       f0,r2                 ; |361| 
        fix       f1,r0                 ; |361| 
        negi      r0,r0                 ; |361| 
        ldile     r0,r2                 ; |361| 
        sti       r2,*+fp(7)            ; |361| 
        bu        L73                   ; |338| 
;*      Branch Occurs to L73            ; |338| 
L69:        
	.line	27
;----------------------------------------------------------------------
; 365 | case 256:       DIV_256; break;                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |365| 
        ldiu      63,r0                 ; |365| 
        and3      r0,*ar0,r0            ; |365| 
        sti       r0,*ar0               ; |365| 
	pop		ST			
        bu        L78                   ; |365| 
;*      Branch Occurs to L78            ; |365| 
L70:        
	.line	28
;----------------------------------------------------------------------
; 366 | case 128:       DIV_128; break;                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |366| 
        ldiu      64,r0                 ; |366| 
        or3       r0,*ar0,r0            ; |366| 
        sti       r0,*ar0               ; |366| 
        ldiu      127,r0                ; |366| 
        and3      r0,*ar0,r0            ; |366| 
        sti       r0,*ar0               ; |366| 
	pop		ST			
        bu        L78                   ; |366| 
;*      Branch Occurs to L78            ; |366| 
L71:        
	.line	29
;----------------------------------------------------------------------
; 367 | default:        DIV_64; ps[0] = 64.0; break;                           
; 370 | else                                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |367| 
        ldiu      192,r0                ; |367| 
        or3       r0,*ar0,r0            ; |367| 
        sti       r0,*ar0               ; |367| 
	pop		ST			
        ldiu      *+fp(2),ar0           ; |367| 
        ldfu      6.4000000000e+01,f0   ; |367| 
        stf       f0,*ar0               ; |367| 
        bu        L78                   ; |367| 
;*      Branch Occurs to L78            ; |367| 
L73:        
	.line	25
        ldiu      *+fp(7),r0            ; |363| 
        cmpi      128,r0                ; |363| 
        beq       L70                   ; |363| 
;*      Branch Occurs to L70            ; |363| 
        cmpi      256,r0                ; |363| 
        beq       L69                   ; |363| 
;*      Branch Occurs to L69            ; |363| 
        bu        L71                   ; |363| 
;*      Branch Occurs to L71            ; |363| 
L77:        
	.line	34
;----------------------------------------------------------------------
; 372 | val   = 1.0;                                                           
;----------------------------------------------------------------------
        ldfu      1.0000000000e+00,f0   ; |372| 
        stf       f0,*+fp(6)            ; |372| 
	.line	35
;----------------------------------------------------------------------
; 373 | gt[0] = val;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |373| 
        stf       f0,*ar0               ; |373| 
	.line	36
;----------------------------------------------------------------------
; 374 | ps[0] = 256.0;                                                         
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      *+fp(2),ar0           ; |374| 
        ldfu      @CL38,f0              ; |374| 
        stf       f0,*ar0               ; |374| 
L78:        
	.line	39
;----------------------------------------------------------------------
; 377 | if (aux_in)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |377| 
        cmpi      0,r0                  ; |377| 
        beq       L80                   ; |377| 
;*      Branch Occurs to L80            ; |377| 
	.line	41
;----------------------------------------------------------------------
; 379 | DIO_AUX_FREQ_MODE = TRUE;                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |379| 
        ldiu      1,r0                  ; |379| 
        sti       r0,*ar0               ; |379| 
	.line	42
;----------------------------------------------------------------------
; 380 | DISABLE_FREQUENCY;                                                     
; 382 | else                                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |380| 
        ldiu      254,r0                ; |380| 
        and3      r0,*ar0,r0            ; |380| 
        sti       r0,*ar0               ; |380| 
	pop		ST			
        bu        L81                   ; |338| 
;*      Branch Occurs to L81            ; |338| 
L80:        
	.line	46
;----------------------------------------------------------------------
; 384 | DIO_AUX_FREQ_MODE = FALSE;                                             
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |384| 
        ldiu      0,r0                  ; |384| 
        sti       r0,*ar0               ; |384| 
	.line	47
;----------------------------------------------------------------------
; 385 | ENABLE_FREQUENCY;                                                      
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |385| 
        ldiu      1,r0                  ; |385| 
        or3       r0,*ar0,r0            ; |385| 
        sti       r0,*ar0               ; |385| 
	pop		ST			
L81:        
	.line	50
;----------------------------------------------------------------------
; 388 | if (enabled)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |388| 
        cmpi      0,r0                  ; |388| 
        beq       L83                   ; |388| 
;*      Branch Occurs to L83            ; |388| 
	.line	52
;----------------------------------------------------------------------
; 390 | ENABLE_GATE;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |390| 
        ldiu      2,r0                  ; |390| 
        or3       r0,*ar0,r0            ; |390| 
        sti       r0,*ar0               ; |390| 
	pop		ST			
	.line	53
;----------------------------------------------------------------------
; 391 | ENABLE_EXTINT3;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |391| 
        ldiu      8,r0                  ; |391| 
        or3       r0,*ar0,r0            ; |391| 
        sti       r0,*ar0               ; |391| 
	pop		ST			
	.line	54
;----------------------------------------------------------------------
; 392 | ENABLE_INT3;                                                           
;----------------------------------------------------------------------
	or		0008h, IE
	.line	55
;----------------------------------------------------------------------
; 393 | CLEAR_INT3;                                                            
; 395 | else                                                                   
;----------------------------------------------------------------------
	andn	0008h, IF
        bu        L84                   ; |338| 
;*      Branch Occurs to L84            ; |338| 
L83:        
	.line	59
;----------------------------------------------------------------------
; 397 | DISABLE_GATE;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |397| 
        ldiu      253,r0                ; |397| 
        and3      r0,*ar0,r0            ; |397| 
        sti       r0,*ar0               ; |397| 
	pop		ST			
	.line	60
;----------------------------------------------------------------------
; 398 | DISABLE_EXTINT3;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |398| 
        ldiu      247,r0                ; |398| 
        and3      r0,*ar0,r0            ; |398| 
        sti       r0,*ar0               ; |398| 
	pop		ST			
	.line	61
;----------------------------------------------------------------------
; 399 | DISABLE_INT3;                                                          
;----------------------------------------------------------------------
	andn	0008h, IE
	.line	62
;----------------------------------------------------------------------
; 400 | CLEAR_INT3;                                                            
;----------------------------------------------------------------------
	andn	0008h, IF
L84:        
	.line	65
;----------------------------------------------------------------------
; 403 | GATE_TIMEOUT = FALSE;                                                  
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |403| 
        ldiu      0,r0                  ; |403| 
        sti       r0,*ar0               ; |403| 
	.line	67
;----------------------------------------------------------------------
; 405 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	68
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      9,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	406,000000000h,7


	.sect	 ".text"

	.global	_GET_TIME
	.sym	_GET_TIME,_GET_TIME,32,2,0
	.func	420
;******************************************************************************
;* FUNCTION NAME: _GET_TIME                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_GET_TIME:
;* ar2   assigned to _p
	.sym	_p,10,24,17,32,_tm
	.sym	_p,1,24,1,32,_tm
	.sym	_t,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 420 | void GET_TIME(struct tm *p)                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 422 | int t;  /* temp variable */                                            
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |421| 
	.line	5
;----------------------------------------------------------------------
; 424 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	6
;----------------------------------------------------------------------
; 425 | t                       = RTC[4] & 0x3F;                               
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      @CL43,ar0             ; |425| 
        ldiu      63,r0                 ; |425| 
        and3      r0,*ar0,r0            ; |425| 
        sti       r0,*+fp(2)            ; |425| 
	.line	7
;----------------------------------------------------------------------
; 426 | p->tm_hour      = (t&0x0F) + 10*((t>>4)&0x0F);                         
;----------------------------------------------------------------------
        ldiu      15,r1                 ; |426| 
        ldiu      ar2,ar0               ; |426| 
        ash       -4,r0                 ; |426| 
        and       15,r0                 ; |426| 
        ldiu      r0,r2                 ; |426| 
        and       *+fp(2),r1            ; |426| 
        ash       3,r2                  ; |426| 
        ash       1,r0                  ; |426| 
        addi3     r0,r2,r0              ; |426| 
        addi3     r0,r1,r0              ; |426| 
        sti       r0,*+ar0(2)           ; |426| 
	.line	8
;----------------------------------------------------------------------
; 427 | t                       = RTC[3] & 0x7F;                               
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      @CL44,ar0             ; |427| 
        ldiu      127,r0                ; |427| 
        and3      r0,*ar0,r0            ; |427| 
        sti       r0,*+fp(2)            ; |427| 
	.line	9
;----------------------------------------------------------------------
; 428 | p->tm_min       = (t&0x0F) + 10*((t>>4)&0x0F);                         
;----------------------------------------------------------------------
        ash       -4,r0                 ; |428| 
        ldiu      *+fp(1),ar0           ; |428| 
        ldiu      15,r2                 ; |428| 
        and       15,r0                 ; |428| 
        ldiu      r0,r1                 ; |428| 
        ash       1,r0                  ; |428| 
        ash       3,r1                  ; |428| 
        addi3     r0,r1,r0              ; |428| 
        and       *+fp(2),r2            ; |428| 
        addi3     r0,r2,r0              ; |428| 
        sti       r0,*+ar0(1)           ; |428| 
	.line	10
;----------------------------------------------------------------------
; 429 | t                       = RTC[2] & 0x7F;                               
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      @CL45,ar0             ; |429| 
        ldiu      127,r0                ; |429| 
        and3      r0,*ar0,r0            ; |429| 
        sti       r0,*+fp(2)            ; |429| 
	.line	11
;----------------------------------------------------------------------
; 430 | p->tm_sec       = (t&0x0F) + 10*((t>>4)&0x0F);                         
;----------------------------------------------------------------------
        ldiu      r0,r2
        ldiu      15,r0                 ; |430| 
        ash       -4,r2                 ; |430| 
        ldiu      *+fp(1),ar0           ; |430| 
        and       15,r2                 ; |430| 
        ldiu      r2,r1                 ; |430| 
        ash       1,r2                  ; |430| 
        ash       3,r1                  ; |430| 
        and       *+fp(2),r0            ; |430| 
        addi3     r2,r1,r1              ; |430| 
        addi3     r1,r0,r0              ; |430| 
        sti       r0,*ar0               ; |430| 
	.line	12
;----------------------------------------------------------------------
; 431 | t                       = RTC[7] & 0x1F;                               
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,ar0             ; |431| 
        ldiu      31,r0                 ; |431| 
        and3      r0,*ar0,r0            ; |431| 
        sti       r0,*+fp(2)            ; |431| 
	.line	13
;----------------------------------------------------------------------
; 432 | p->tm_mon       = (t&0x0F) + 10*((t>>4)&0x0F);                         
;----------------------------------------------------------------------
        ldiu      15,r2                 ; |432| 
        ash       -4,r0                 ; |432| 
        and       15,r0                 ; |432| 
        ldiu      *+fp(1),ar0           ; |432| 
        ldiu      r0,r1                 ; |432| 
        ash       3,r1                  ; |432| 
        ash       1,r0                  ; |432| 
        and       *+fp(2),r2            ; |432| 
        addi3     r0,r1,r0              ; |432| 
        addi3     r0,r2,r0              ; |432| 
        sti       r0,*+ar0(4)           ; |432| 
	.line	14
;----------------------------------------------------------------------
; 433 | t                       = RTC[6] & 0x3F;                               
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |433| 
        ldiu      63,r0                 ; |433| 
        and3      r0,*ar0,r0            ; |433| 
        sti       r0,*+fp(2)            ; |433| 
	.line	15
;----------------------------------------------------------------------
; 434 | p->tm_mday      = (t&0x0F) + 10*((t>>4)&0x0F);                         
;----------------------------------------------------------------------
        ash       -4,r0                 ; |434| 
        ldiu      15,r2                 ; |434| 
        and       15,r0                 ; |434| 
        ldiu      r0,r1                 ; |434| 
        ash       3,r1                  ; |434| 
        ash       1,r0                  ; |434| 
        and       *+fp(2),r2            ; |434| 
        addi3     r0,r1,r0              ; |434| 
        ldiu      *+fp(1),ar0           ; |434| 
        addi3     r0,r2,r0              ; |434| 
        sti       r0,*+ar0(3)           ; |434| 
	.line	16
;----------------------------------------------------------------------
; 435 | t                       = RTC[8] & 0xFF;                               
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,ar0             ; |435| 
        ldiu      255,r0                ; |435| 
        and3      r0,*ar0,r0            ; |435| 
        sti       r0,*+fp(2)            ; |435| 
	.line	17
;----------------------------------------------------------------------
; 436 | p->tm_year      = (t&0x0F) + 10*((t>>4)&0x0F);                         
;----------------------------------------------------------------------
        ash       -4,r0                 ; |436| 
        and       15,r0                 ; |436| 
        ldiu      15,r1                 ; |436| 
        ldiu      r0,r2                 ; |436| 
        ash       3,r0                  ; |436| 
        ldiu      *+fp(1),ar0           ; |436| 
        ash       1,r2                  ; |436| 
        addi3     r2,r0,r0              ; |436| 
        and       *+fp(2),r1            ; |436| 
        addi3     r0,r1,r0              ; |436| 
        sti       r0,*+ar0(5)           ; |436| 
	.line	18
;----------------------------------------------------------------------
; 437 | t                       = RTC[5] & 0x03;                               
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldiu      @CL49,ar0             ; |437| 
        ldiu      3,r0                  ; |437| 
        and3      r0,*ar0,r0            ; |437| 
        sti       r0,*+fp(2)            ; |437| 
	.line	19
;----------------------------------------------------------------------
; 438 | p->tm_wday      = (t&0x0F) + 10*((t>>4)&0x0F);                         
;----------------------------------------------------------------------
        ldiu      r0,r1
        ash       -4,r1                 ; |438| 
        and       15,r1                 ; |438| 
        ldiu      r1,r2                 ; |438| 
        ldiu      15,r0                 ; |438| 
        ash       3,r1                  ; |438| 
        ash       1,r2                  ; |438| 
        addi3     r2,r1,r1              ; |438| 
        and       *+fp(2),r0            ; |438| 
        ldiu      *+fp(1),ar0           ; |438| 
        addi3     r1,r0,r0              ; |438| 
        sti       r0,*+ar0(6)           ; |438| 
	.line	20
;----------------------------------------------------------------------
; 439 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	21
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	440,000000000h,2


	.sect	 ".text"

	.global	_CLEAR_TIME
	.sym	_CLEAR_TIME,_CLEAR_TIME,32,2,0
	.func	454
;******************************************************************************
;* FUNCTION NAME: _CLEAR_TIME                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2                                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_CLEAR_TIME:
;* ar2   assigned to _p
	.sym	_p,10,24,17,32,_tm
	.sym	_p,1,24,1,32,_tm
	.line	1
;----------------------------------------------------------------------
; 454 | void CLEAR_TIME(struct tm *p)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |455| 
	.line	3
;----------------------------------------------------------------------
; 456 | p->tm_sec       = 0;            /* seconds after the minute   - [0,59]
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      0,r0                  ; |456| 
        sti       r0,*ar0               ; |456| 
	.line	4
;----------------------------------------------------------------------
; 457 | p->tm_min       = 0;            /* minutes after the hour     - [0,59]
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |457| 
        sti       r0,*+ar0(1)           ; |457| 
	.line	5
;----------------------------------------------------------------------
; 458 | p->tm_hour      = 0;            /* hours after the midnight   - [0,23]
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |458| 
        sti       r0,*+ar0(2)           ; |458| 
	.line	6
;----------------------------------------------------------------------
; 459 | p->tm_mday      = 0;            /* day of the month           - [1,31]
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |459| 
        sti       r0,*+ar0(3)           ; |459| 
	.line	7
;----------------------------------------------------------------------
; 460 | p->tm_mon       = 0;            /* months since January       - [0,11]
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |460| 
        sti       r0,*+ar0(4)           ; |460| 
	.line	8
;----------------------------------------------------------------------
; 461 | p->tm_year      = 0;            /* years since 1900
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |461| 
        sti       r0,*+ar0(5)           ; |461| 
	.line	9
;----------------------------------------------------------------------
; 462 | p->tm_wday      = 0;            /* days since Sunday          - [0,6]
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |462| 
        sti       r0,*+ar0(6)           ; |462| 
	.line	10
;----------------------------------------------------------------------
; 463 | p->tm_yday      = 0;            /* days since Jan 1st         - [0,365]
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |463| 
        sti       r0,*+ar0(7)           ; |463| 
	.line	11
;----------------------------------------------------------------------
; 464 | p->tm_isdst = 0;                /* Daylight Savings Time flag
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |464| 
        sti       r0,*+ar0(8)           ; |464| 
	.line	12
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	465,000000000h,1



	.global	_vect_tm
_vect_tm:	.usect	"internal_RAM",1,1
	.sym	_vect_tm,_vect_tm,20,2,32

	.global	_vect_pt0
_vect_pt0:	.usect	"internal_RAM",1,1
	.sym	_vect_pt0,_vect_pt0,20,2,32

	.global	_vect_pt1
_vect_pt1:	.usect	"internal_RAM",1,1
	.sym	_vect_pt1,_vect_pt1,20,2,32

	.global	_vect_pt2
_vect_pt2:	.usect	"internal_RAM",1,1
	.sym	_vect_pt2,_vect_pt2,20,2,32

	.global	_vect_pt3
_vect_pt3:	.usect	"internal_RAM",1,1
	.sym	_vect_pt3,_vect_pt3,20,2,32

	.global	_vect_pt4
_vect_pt4:	.usect	"internal_RAM",1,1
	.sym	_vect_pt4,_vect_pt4,20,2,32

	.global	_vect_pt5
_vect_pt5:	.usect	"internal_RAM",1,1
	.sym	_vect_pt5,_vect_pt5,20,2,32

	.global	_vect_pt6
_vect_pt6:	.usect	"internal_RAM",1,1
	.sym	_vect_pt6,_vect_pt6,20,2,32

	.global	_vect_pt7
_vect_pt7:	.usect	"internal_RAM",1,1
	.sym	_vect_pt7,_vect_pt7,20,2,32

	.global	_TIMER0_COUNTER
_TIMER0_COUNTER:	.usect	"internal_RAM",1,1
	.sym	_TIMER0_COUNTER,_TIMER0_COUNTER,4,2,32

	.global	_TIME0
	.bss	_TIME0,1
	.sym	_TIME0,_TIME0,6,2,32

	.global	_TIME1
	.bss	_TIME1,1
	.sym	_TIME1,_TIME1,6,2,32

	.global	_QUEUE_TMR
_QUEUE_TMR:	.usect	"internal_RAM",400,1
	.sym	_QUEUE_TMR,_QUEUE_TMR,56,2,12800,.fake11,40

	.global	_LIST_TMR_EMPTY
_LIST_TMR_EMPTY:	.usect	"internal_RAM",3,1
	.sym	_LIST_TMR_EMPTY,_LIST_TMR_EMPTY,8,2,96,.fake4

	.global	_GATE_TIMEOUT
	.bss	_GATE_TIMEOUT,1
	.sym	_GATE_TIMEOUT,_GATE_TIMEOUT,14,2,32

	.global	_TIMER1_COUNTER
_TIMER1_COUNTER:	.usect	"internal_RAM",9,1
	.sym	_TIMER1_COUNTER,_TIMER1_COUNTER,52,2,288,,9

	.global	_LIST_TIMER0
_LIST_TIMER0:	.usect	"internal_RAM",3,1
	.sym	_LIST_TIMER0,_LIST_TIMER0,8,2,96,.fake4
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
	.bss	CL43,1
	.bss	CL44,1
	.bss	CL45,1
	.bss	CL46,1
	.bss	CL47,1
	.bss	CL48,1
	.bss	CL49,1

	.sect	".cinit"
	.field  	49,32
	.field  	CL1+0,32
	.field  	_LIST_TIMER0,32
	.field  	_Timer_Remove,32
	.field  	_LIST_TMR_EMPTY,32
	.field  	_List_Pop,32
	.field  	_DIAGNOSTICS,32
	.field  	_List_Remove,32
	.field  	_List_Add,32
	.field  	_TIME0,32
	.field  	_ceil,32
	.field  	_CLOCK,32
	.word   	020000000H ; float   4.294967296000000e+09
	.word   	0FF000000H ; double  5.000000000000000e-01
	.field  	8421408,32
	.field  	8421416,32
	.word   	01F000000H ; float   2.147483648000000e+09
	.word   	00A02E000H ; double  1.047000000000000e+03
	.field  	_TIME1,32
	.field  	_TIMER0_COUNTER,32
	.field  	_List_Init,32
	.field  	_QUEUE_TMR,32
	.field  	_QUEUE_TMR+1,32
	.field  	_QUEUE_TMR+2,32
	.field  	_QUEUE_TMR+3,32
	.field  	_QUEUE_TMR+4,32
	.field  	_QUEUE_TMR+5,32
	.field  	_QUEUE_TMR+6,32
	.field  	_QUEUE_TMR+7,32
	.field  	_QUEUE_TMR+8,32
	.field  	_TIMER1_COUNTER,32
	.field  	_PORT+37,32
	.field  	8421424,32
	.field  	8421432,32
	.field  	1000000000,32
	.field  	_SA,32
	.word   	0F9000000H ; double  7.812500000000000e-03
	.field  	9437201,32
	.field  	9437202,32
	.word   	008000000H ; double  2.560000000000000e+02
	.field  	_DIO_AUX_FREQ_MODE,32
	.field  	9437188,32
	.field  	9437190,32
	.field  	_GATE_TIMEOUT,32
	.field  	_RTC+4,32
	.field  	_RTC+3,32
	.field  	_RTC+2,32
	.field  	_RTC+7,32
	.field  	_RTC+6,32
	.field  	_RTC+8,32
	.field  	_RTC+5,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_ceil

	.global	_List_Add

	.global	_List_Remove

	.global	_List_Pop

	.global	_List_Init

	.global	_RTC

	.global	_DIAGNOSTICS

	.global	_PORT

	.global	_CLOCK

	.global	_SA

	.global	_DIO_AUX_FREQ_MODE
	.global	DIV_F30
