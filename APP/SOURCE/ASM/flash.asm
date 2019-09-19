;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu Sep 19 14:35:14 2019                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_C48.AAA 
	.file	"flash.c"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\GLBLS.H"
	.file	"G:\workspace\EEA\V615\INCLUDE\stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"G:\workspace\EEA\V615\INCLUDE\format.h"
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
	.file	"G:\workspace\EEA\V615\INCLUDE\string.h"
	.sym	_size_t,0,14,13,32
	.file	"G:\workspace\EEA\V615\INCLUDE\stdio.h"
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
	.file	"G:\workspace\EEA\V615\INCLUDE\stdlib.h"
	.sym	_wchar_t,0,2,13,32
	.stag	__div_t,64
	.member	_quot,0,4,8,32
	.member	_rem,32,4,8,32
	.eos
	.sym	_div_t,0,8,13,64,__div_t
	.sym	_ldiv_t,0,8,13,64,__div_t
	.file	"G:\workspace\EEA\V615\INCLUDE\math.h"
	.file	"G:\workspace\EEA\V615\INCLUDE\time.h"
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
	.file	"G:\workspace\EEA\V615\INCLUDE\ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"G:\workspace\EEA\V615\INCLUDE\LIST.H"
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
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\VARIABLE.H"
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
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\BUFFER.H"
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
	.file	"G:\workspace\EEA\V615\INCLUDE\UNITS.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\TIMER.H"
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
	.file	"G:\workspace\EEA\V615\INCLUDE\I2C.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\ERRORS.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\SERIAL.H"
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
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\ADC.H"
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
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\DAC.H"
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
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\EXECUTE.H"
	.stag	.fake17,128
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.eos
	.sym	_EPKT,0,8,13,128,.fake17
	.file	"G:\workspace\EEA\V615\INCLUDE\FLASH.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\LOG.H"
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
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\DEMO.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\SELFTEST.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MENU.H"
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
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\FLOAT1.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\GLBLS.H"
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
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\HART.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MODBUSRTU.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MISC.H"
	.file	"G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\API.H"
	.file	"flash.c"
	.sect	 "internal_RAM"

	.global	_FLASH_SIZE
	.sym	_FLASH_SIZE,_FLASH_SIZE,46,2,0
	.func	36
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
;  36 | unsigned int FLASH_SIZE(void)                                          
;  38 | unsigned int dev_id;    /* device id - FLASH_LOC[1]  */                
;  39 | unsigned int r[2];              /* return vector
;     |   */                                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	6
;----------------------------------------------------------------------
;  41 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
;  42 | r[0]            = 0;                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |42| 
        addi      2,ar0                 ; |42| 
        ldiu      0,r0                  ; |42| 
        sti       r0,*ar0               ; |42| 
	.line	8
;----------------------------------------------------------------------
;  43 | r[1]            = 0;                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |43| 
        addi      3,ar0                 ; |43| 
        sti       r0,*ar0               ; |43| 
	.line	9
;----------------------------------------------------------------------
;  44 | *FLASH_LOC      = READ_CONFIG;                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |44| 
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |44| 
        sti       r0,*ar0               ; |44| 
	.line	10
;----------------------------------------------------------------------
;  45 | dev_id          = FLASH_LOC[1];                                        
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |45| 
        ldiu      *ar0,r0               ; |45| 
        sti       r0,*+fp(1)            ; |45| 
	.line	11
;----------------------------------------------------------------------
;  46 | *FLASH_LOC      = READ_ARRAY;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |46| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |46| 
        sti       r0,*ar0               ; |46| 
	.line	12
;----------------------------------------------------------------------
;  47 | GIEP;                                                                  
;  49 | switch(dev_id & 0xFFFF)                                                
;  51 |         case 0x88C1:                                                   
;----------------------------------------------------------------------
	pop		ST			
        bu        L7                    ; |35| 
;*      Branch Occurs to L7             ; |35| 
L2:        
	.line	18
;----------------------------------------------------------------------
;  53 | r[0] = 0x80000;                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |53| 
        ldp       @CL5,DP
        addi      2,ar0                 ; |53| 
        ldiu      @CL5,r0               ; |53| 
        sti       r0,*ar0               ; |53| 
	.line	20
;----------------------------------------------------------------------
;  55 | break;                                                                 
;  57 | case 0x88C3:                                                           
;----------------------------------------------------------------------
        bu        L18                   ; |55| 
;*      Branch Occurs to L18            ; |55| 
L3:        
	.line	24
;----------------------------------------------------------------------
;  59 | r[0] = 0x100000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |59| 
        ldp       @CL6,DP
        addi      2,ar0                 ; |59| 
        ldiu      @CL6,r0               ; |59| 
        sti       r0,*ar0               ; |59| 
	.line	26
;----------------------------------------------------------------------
;  61 | break;                                                                 
;  63 | case 0x88C5:                                                           
;----------------------------------------------------------------------
        bu        L18                   ; |61| 
;*      Branch Occurs to L18            ; |61| 
L4:        
	.line	30
;----------------------------------------------------------------------
;  65 | r[0] = 0x200000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |65| 
        ldp       @CL7,DP
        addi      2,ar0                 ; |65| 
        ldiu      @CL7,r0               ; |65| 
        sti       r0,*ar0               ; |65| 
	.line	32
;----------------------------------------------------------------------
;  67 | break;                                                                 
;  69 | case 0x88CD:                                                           
;----------------------------------------------------------------------
        bu        L18                   ; |67| 
;*      Branch Occurs to L18            ; |67| 
L5:        
	.line	36
;----------------------------------------------------------------------
;  71 | r[0] = 0x400000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |71| 
        ldp       @CL8,DP
        addi      2,ar0                 ; |71| 
        ldiu      @CL8,r0               ; |71| 
        sti       r0,*ar0               ; |71| 
	.line	38
;----------------------------------------------------------------------
;  73 | break;                                                                 
;  77 | switch(dev_id >> 16)                                                   
;  79 | case 0x88C1:                                                           
;----------------------------------------------------------------------
        bu        L18                   ; |73| 
;*      Branch Occurs to L18            ; |73| 
L7:        
	.line	14
        ldp       @CL9,DP
        ldiu      @CL9,r0               ; |49| 
        ldp       @CL10,DP
        and       *+fp(1),r0            ; |49| 
        cmpi      @CL10,r0              ; |49| 
        beq       L2                    ; |49| 
;*      Branch Occurs to L2             ; |49| 
        ldp       @CL11,DP
        cmpi      @CL11,r0              ; |49| 
        beq       L3                    ; |49| 
;*      Branch Occurs to L3             ; |49| 
        ldp       @CL12,DP
        cmpi      @CL12,r0              ; |49| 
        beq       L4                    ; |49| 
;*      Branch Occurs to L4             ; |49| 
        ldp       @CL13,DP
        cmpi      @CL13,r0              ; |49| 
        beq       L5                    ; |49| 
;*      Branch Occurs to L5             ; |49| 
        bu        L18                   ; |49| 
;*      Branch Occurs to L18            ; |49| 
L13:        
	.line	46
;----------------------------------------------------------------------
;  81 | r[1] = 0x80000;                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |81| 
        ldp       @CL5,DP
        addi      3,ar0                 ; |81| 
        ldiu      @CL5,r0               ; |81| 
        sti       r0,*ar0               ; |81| 
	.line	48
;----------------------------------------------------------------------
;  83 | break;                                                                 
;  85 | case 0x88C3:                                                           
;----------------------------------------------------------------------
        bu        L22                   ; |83| 
;*      Branch Occurs to L22            ; |83| 
L14:        
	.line	52
;----------------------------------------------------------------------
;  87 | r[1] = 0x100000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |87| 
        ldp       @CL6,DP
        addi      3,ar0                 ; |87| 
        ldiu      @CL6,r0               ; |87| 
        sti       r0,*ar0               ; |87| 
	.line	54
;----------------------------------------------------------------------
;  89 | break;                                                                 
;  91 | case 0x88C5:                                                           
;----------------------------------------------------------------------
        bu        L22                   ; |89| 
;*      Branch Occurs to L22            ; |89| 
L15:        
	.line	58
;----------------------------------------------------------------------
;  93 | r[1] = 0x200000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |93| 
        ldp       @CL7,DP
        addi      3,ar0                 ; |93| 
        ldiu      @CL7,r0               ; |93| 
        sti       r0,*ar0               ; |93| 
	.line	60
;----------------------------------------------------------------------
;  95 | break;                                                                 
;  97 | case 0x88CD:                                                           
;----------------------------------------------------------------------
        bu        L22                   ; |95| 
;*      Branch Occurs to L22            ; |95| 
L16:        
	.line	64
;----------------------------------------------------------------------
;  99 | r[1] = 0x400000;                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |99| 
        ldp       @CL8,DP
        addi      3,ar0                 ; |99| 
        ldiu      @CL8,r0               ; |99| 
        sti       r0,*ar0               ; |99| 
	.line	66
;----------------------------------------------------------------------
; 101 | break;                                                                 
;----------------------------------------------------------------------
        bu        L22                   ; |101| 
;*      Branch Occurs to L22            ; |101| 
L18:        
	.line	42
        ldiu      *+fp(1),r0            ; |77| 
        lsh       -16,r0                ; |77| 
        ldp       @CL10,DP
        cmpi      @CL10,r0              ; |77| 
        beq       L13                   ; |77| 
;*      Branch Occurs to L13            ; |77| 
        ldp       @CL11,DP
        cmpi      @CL11,r0              ; |77| 
        beq       L14                   ; |77| 
;*      Branch Occurs to L14            ; |77| 
        ldp       @CL12,DP
        cmpi      @CL12,r0              ; |77| 
        beq       L15                   ; |77| 
;*      Branch Occurs to L15            ; |77| 
        ldp       @CL13,DP
        cmpi      @CL13,r0              ; |77| 
        beq       L16                   ; |77| 
;*      Branch Occurs to L16            ; |77| 
L22:        
	.line	70
;----------------------------------------------------------------------
; 105 | if (r[0]<r[1])                                                         
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |105| 
        ldiu      fp,ar1                ; |105| 
        addi      3,ar0                 ; |105| 
        addi      2,ar1                 ; |105| 
        cmpi3     *ar0,*ar1             ; |105| 
        bhs       L25                   ; |105| 
;*      Branch Occurs to L25            ; |105| 
	.line	71
;----------------------------------------------------------------------
; 106 | return r[0];                                                           
; 107 | else                                                                   
;----------------------------------------------------------------------
        bud       L26                   ; |106| 
        ldiu      fp,ar0                ; |106| 
        addi      2,ar0                 ; |106| 
        ldiu      *ar0,r0               ; |106| 
;*      Branch Occurs to L26            ; |106| 
L25:        
	.line	73
;----------------------------------------------------------------------
; 108 | return r[1];                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |108| 
        addi      3,ar0                 ; |108| 
        ldiu      *ar0,r0               ; |108| 
L26:        
	.line	74
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |109| 
        ldiu      *fp,fp                ; |109| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |109| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	109,000000000h,3


	.sect	 "internal_RAM"

	.global	_FLASH_CHECK_ADDR
	.sym	_FLASH_CHECK_ADDR,_FLASH_CHECK_ADDR,36,2,0
	.func	124
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
; 124 | int FLASH_CHECK_ADDR(unsigned int* addr, unsigned int n)               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
;----------------------------------------------------------------------
; 126 | unsigned int dev_id;    /* not used     */                             
; 127 | unsigned int f;                 /* flash size   */                     
; 128 | unsigned int mask;              /* byte mask    */                     
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |125| 
        sti       ar2,*+fp(1)           ; |125| 
	.line	7
;----------------------------------------------------------------------
; 130 | f = FLASH_SIZE();                                                      
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,r0              ; |130| 
        callu     r0                    ; far call to _FLASH_SIZE	; |130| 
                                        ; |130| Far Call Occurs
        sti       r0,*+fp(4)            ; |130| 
	.line	9
;----------------------------------------------------------------------
; 132 | if (addr >= (FLASH_LOC+f))                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      *+fp(1),r1            ; |132| 
        ldiu      @CL1,r0               ; |132| 
        addi      *+fp(4),r0            ; |132| Unsigned
        cmpi3     r0,r1                 ; |132| 
        blo       L30                   ; |132| 
;*      Branch Occurs to L30            ; |132| 
	.line	10
;----------------------------------------------------------------------
; 133 | return FLASH_ERROR_BLKADDR;                                            
;----------------------------------------------------------------------
        bud       L53                   ; |133| 
	nop
	nop
        ldiu      32,r0                 ; |133| 
;*      Branch Occurs to L53            ; |133| 
L30:        
	.line	12
;----------------------------------------------------------------------
; 135 | if (addr < FLASH_LOC)                                                  
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      *+fp(1),r0            ; |135| 
        cmpi      @CL1,r0               ; |135| 
        bhs       L32                   ; |135| 
;*      Branch Occurs to L32            ; |135| 
	.line	13
;----------------------------------------------------------------------
; 136 | return FLASH_ERROR_BLKADDR;                                            
;----------------------------------------------------------------------
        bud       L53                   ; |136| 
	nop
	nop
        ldiu      32,r0                 ; |136| 
;*      Branch Occurs to L53            ; |136| 
L32:        
	.line	15
;----------------------------------------------------------------------
; 138 | if (addr < (FLASH_LOC+FLASH_SECTOR_SIZE))                              
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(1),r0            ; |138| 
        cmpi      @CL15,r0              ; |138| 
        bhs       L43                   ; |138| 
;*      Branch Occurs to L43            ; |138| 
	.line	17
;----------------------------------------------------------------------
; 140 | if (n==0)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |140| 
        cmpi      0,r0                  ; |140| 
        bne       L36                   ; |140| 
;*      Branch Occurs to L36            ; |140| 
	.line	19
;----------------------------------------------------------------------
; 142 | if ((((unsigned int)addr-(unsigned int)FLASH_LOC)%FLASH_CFGB_SIZE) == 0
;     | )                                                                      
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,r0               ; |142| 
        subri     *+fp(1),r0            ; |142| Unsigned
        tstb      4095,r0               ; |142| 
        bne       L36                   ; |142| 
;*      Branch Occurs to L36            ; |142| 
	.line	20
;----------------------------------------------------------------------
; 143 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L53                   ; |143| 
	nop
	nop
        ldiu      0,r0                  ; |143| 
;*      Branch Occurs to L53            ; |143| 
L36:        
	.line	22
;----------------------------------------------------------------------
; 145 | if (n>FLASH_CFGB_SIZE)                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |145| 
        cmpi      4096,r0               ; |145| 
        bls       L38                   ; |145| 
;*      Branch Occurs to L38            ; |145| 
	.line	23
;----------------------------------------------------------------------
; 146 | return FLASH_ERROR_BLKADDR;                                            
;----------------------------------------------------------------------
        bud       L53                   ; |146| 
	nop
	nop
        ldiu      32,r0                 ; |146| 
;*      Branch Occurs to L53            ; |146| 
L38:        
	.line	25
;----------------------------------------------------------------------
; 148 | if (((unsigned int)addr+n-1) >= ((unsigned int)FLASH_LOC+FLASH_SECTOR_S
;     | IZE))                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |148| 
        ldp       @CL16,DP
        addi      *+fp(1),r0            ; |148| Unsigned
        subi      1,r0                  ; |148| Unsigned
        cmpi      @CL16,r0              ; |148| 
        blo       L40                   ; |148| 
;*      Branch Occurs to L40            ; |148| 
	.line	26
;----------------------------------------------------------------------
; 149 | return FLASH_ERROR_BLKADDR;                                            
;----------------------------------------------------------------------
        bud       L53                   ; |149| 
	nop
	nop
        ldiu      32,r0                 ; |149| 
;*      Branch Occurs to L53            ; |149| 
L40:        
	.line	28
;----------------------------------------------------------------------
; 151 | mask = 0xFFFFFFFF ^ (FLASH_CFGB_SIZE-1);                               
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,r0              ; |151| 
        sti       r0,*+fp(5)            ; |151| 
	.line	29
;----------------------------------------------------------------------
; 152 | f        = ((unsigned int)addr&mask) + FLASH_CFGB_SIZE;                
;----------------------------------------------------------------------
        and       *+fp(1),r0            ; |152| 
        addi      4096,r0               ; |152| Unsigned
        sti       r0,*+fp(4)            ; |152| 
	.line	31
;----------------------------------------------------------------------
; 154 | if (((unsigned int)addr+n-1) < ((unsigned int)f))                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |154| 
        addi      *+fp(1),r0            ; |154| Unsigned
        subi      1,r0                  ; |154| Unsigned
        cmpi      *+fp(4),r0            ; |154| 
        bhs       L52                   ; |154| 
;*      Branch Occurs to L52            ; |154| 
	.line	32
;----------------------------------------------------------------------
; 155 | return 0;                                                              
; 157 | else                                                                   
;----------------------------------------------------------------------
        bud       L53                   ; |155| 
	nop
	nop
        ldiu      0,r0                  ; |155| 
;*      Branch Occurs to L53            ; |155| 
L43:        
	.line	36
;----------------------------------------------------------------------
; 159 | if (n==0)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |159| 
        cmpi      0,r0                  ; |159| 
        bne       L46                   ; |159| 
;*      Branch Occurs to L46            ; |159| 
	.line	38
;----------------------------------------------------------------------
; 161 | if ((((unsigned int)addr-(unsigned int)FLASH_LOC)%FLASH_SECTOR_SIZE) ==
;     |  0)                                                                    
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,r0               ; |161| 
        subri     *+fp(1),r0            ; |161| Unsigned
        tstb      32767,r0              ; |161| 
        bne       L46                   ; |161| 
;*      Branch Occurs to L46            ; |161| 
	.line	39
;----------------------------------------------------------------------
; 162 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L53                   ; |162| 
	nop
	nop
        ldiu      0,r0                  ; |162| 
;*      Branch Occurs to L53            ; |162| 
L46:        
	.line	42
;----------------------------------------------------------------------
; 165 | if (n>FLASH_SECTOR_SIZE)                                               
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      *+fp(2),r0            ; |165| 
        cmpi      @CL18,r0              ; |165| 
        bls       L48                   ; |165| 
;*      Branch Occurs to L48            ; |165| 
	.line	43
;----------------------------------------------------------------------
; 166 | return FLASH_ERROR_BLKADDR;                                            
;----------------------------------------------------------------------
        bud       L53                   ; |166| 
	nop
	nop
        ldiu      32,r0                 ; |166| 
;*      Branch Occurs to L53            ; |166| 
L48:        
	.line	45
;----------------------------------------------------------------------
; 168 | if (((unsigned int)addr+n-1) >= ((unsigned int)FLASH_LOC+f))           
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(2),r0            ; |168| 
        ldiu      @CL8,r1               ; |168| 
        addi      *+fp(1),r0            ; |168| Unsigned
        addi      *+fp(4),r1            ; |168| Unsigned
        subi      1,r0                  ; |168| Unsigned
        cmpi3     r1,r0                 ; |168| 
        blo       L50                   ; |168| 
;*      Branch Occurs to L50            ; |168| 
	.line	46
;----------------------------------------------------------------------
; 169 | return FLASH_ERROR_BLKADDR;                                            
;----------------------------------------------------------------------
        bud       L53                   ; |169| 
	nop
	nop
        ldiu      32,r0                 ; |169| 
;*      Branch Occurs to L53            ; |169| 
L50:        
	.line	48
;----------------------------------------------------------------------
; 171 | mask = 0xFFFFFFFF ^ (FLASH_SECTOR_SIZE-1);                             
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,r0              ; |171| 
        sti       r0,*+fp(5)            ; |171| 
	.line	49
;----------------------------------------------------------------------
; 172 | f        = ((unsigned int)addr&mask) + FLASH_SECTOR_SIZE;              
;----------------------------------------------------------------------
        ldp       @CL18,DP
        and       *+fp(1),r0            ; |172| 
        addi      @CL18,r0              ; |172| Unsigned
        sti       r0,*+fp(4)            ; |172| 
	.line	51
;----------------------------------------------------------------------
; 174 | if (((unsigned int)addr+n-1) < ((unsigned int)f))                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |174| 
        addi      *+fp(1),r0            ; |174| Unsigned
        subi      1,r0                  ; |174| Unsigned
        cmpi      *+fp(4),r0            ; |174| 
        bhs       L52                   ; |174| 
;*      Branch Occurs to L52            ; |174| 
	.line	52
;----------------------------------------------------------------------
; 175 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L53                   ; |175| 
	nop
	nop
        ldiu      0,r0                  ; |175| 
;*      Branch Occurs to L53            ; |175| 
L52:        
	.line	55
;----------------------------------------------------------------------
; 178 | return FLASH_ERROR_BLKADDR;                                            
;----------------------------------------------------------------------
        ldiu      32,r0                 ; |178| 
L53:        
	.line	56
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |179| 
        ldiu      *fp,fp                ; |179| 
                                        ; Unallocate the Frame
        subi      7,sp                  ; |179| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	179,000000000h,5


	.sect	 "internal_RAM"

	.global	_FLASH_LOCK_BLK
	.sym	_FLASH_LOCK_BLK,_FLASH_LOCK_BLK,36,2,0
	.func	194
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
; 194 | int FLASH_LOCK_BLK(unsigned int* addr, int lock)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 196 | int i;  /* negative logic check - # is false */                        
; 197 | int r;  /* return flash status                           */            
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |195| 
        sti       ar2,*+fp(1)           ; |195| 
	.line	6
;----------------------------------------------------------------------
; 199 | i = FLASH_CHECK_ADDR(addr, 0);                                         
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,r0              ; |199| 
        ldiu      0,r2                  ; |199| 
        callu     r0                    ; far call to _FLASH_CHECK_ADDR	; |199| 
                                        ; |199| Far Call Occurs
        sti       r0,*+fp(3)            ; |199| 
	.line	8
;----------------------------------------------------------------------
; 201 | if (i)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |201| 
        beq       L57                   ; |201| 
;*      Branch Occurs to L57            ; |201| 
	.line	9
;----------------------------------------------------------------------
; 202 | return i;                                                              
;----------------------------------------------------------------------
        bu        L66                   ; |202| 
;*      Branch Occurs to L66            ; |202| 
L57:        
	.line	11
;----------------------------------------------------------------------
; 204 | _GIEP;                                                                 
; 206 | switch(lock)                                                           
; 208 |         case 0:                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        bu        L62                   ; |193| 
;*      Branch Occurs to L62            ; |193| 
L58:        
	.line	17
;----------------------------------------------------------------------
; 210 | addr[0] = BLOCK_LOCK;                                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      *+fp(1),ar0           ; |210| 
        ldiu      @CL21,r0              ; |210| 
        sti       r0,*ar0               ; |210| 
	.line	18
;----------------------------------------------------------------------
; 211 | addr[0] = BLOCK_LOCK_UNLOCK;                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar0           ; |211| 
        ldiu      @CL22,r0              ; |211| 
        sti       r0,*ar0               ; |211| 
	.line	19
;----------------------------------------------------------------------
; 212 | break;                                                                 
; 214 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L65                   ; |212| 
;*      Branch Occurs to L65            ; |212| 
L59:        
	.line	23
;----------------------------------------------------------------------
; 216 | addr[0] = BLOCK_LOCK;                                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      *+fp(1),ar0           ; |216| 
        ldiu      @CL21,r0              ; |216| 
        sti       r0,*ar0               ; |216| 
	.line	24
;----------------------------------------------------------------------
; 217 | addr[0] = BLOCK_LOCK_LOCK;                                             
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      *+fp(1),ar0           ; |217| 
        ldiu      @CL23,r0              ; |217| 
        sti       r0,*ar0               ; |217| 
	.line	25
;----------------------------------------------------------------------
; 218 | break;                                                                 
; 220 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L65                   ; |218| 
;*      Branch Occurs to L65            ; |218| 
L60:        
	.line	29
;----------------------------------------------------------------------
; 222 | addr[0] = BLOCK_LOCK;                                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      *+fp(1),ar0           ; |222| 
        ldiu      @CL21,r0              ; |222| 
        sti       r0,*ar0               ; |222| 
	.line	30
;----------------------------------------------------------------------
; 223 | addr[0] = BLOCK_LOCK_LOCKDOWN;                                         
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      *+fp(1),ar0           ; |223| 
        ldiu      @CL24,r0              ; |223| 
        sti       r0,*ar0               ; |223| 
	.line	31
;----------------------------------------------------------------------
; 224 | break;                                                                 
;----------------------------------------------------------------------
        bu        L65                   ; |224| 
;*      Branch Occurs to L65            ; |224| 
L62:        
	.line	13
        ldiu      *+fp(2),r0            ; |206| 
        cmpi      0,r0                  ; |206| 
        beq       L58                   ; |206| 
;*      Branch Occurs to L58            ; |206| 
        cmpi      1,r0                  ; |206| 
        beq       L59                   ; |206| 
;*      Branch Occurs to L59            ; |206| 
        cmpi      2,r0                  ; |206| 
        beq       L60                   ; |206| 
;*      Branch Occurs to L60            ; |206| 
L65:        
	.line	35
;----------------------------------------------------------------------
; 228 | r = FLASH_STATUS();                                                    
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |228| 
        callu     r0                    ; far call to _FLASH_STATUS	; |228| 
                                        ; |228| Far Call Occurs
        sti       r0,*+fp(4)            ; |228| 
	.line	37
;----------------------------------------------------------------------
; 230 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |230| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |230| 
        sti       r0,*ar0               ; |230| 
	.line	39
;----------------------------------------------------------------------
; 232 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	41
;----------------------------------------------------------------------
; 234 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |234| 
L66:        
	.line	42
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |235| 
        ldiu      *fp,fp                ; |235| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |235| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	235,000000000h,4


	.sect	 "internal_RAM"

	.global	_FLASH_ERASE_BLK
	.sym	_FLASH_ERASE_BLK,_FLASH_ERASE_BLK,36,2,0
	.func	249
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
; 249 | int FLASH_ERASE_BLK(unsigned int* addr)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 251 | unsigned int status;                                                   
; 252 | int i;                                                                 
; 253 | int r;                                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |250| 
	.line	7
;----------------------------------------------------------------------
; 255 | i = FLASH_CHECK_ADDR(addr, 0);                                         
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      0,r2                  ; |255| 
        ldiu      @CL20,r0              ; |255| 
        callu     r0                    ; far call to _FLASH_CHECK_ADDR	; |255| 
                                        ; |255| Far Call Occurs
        sti       r0,*+fp(3)            ; |255| 
	.line	9
;----------------------------------------------------------------------
; 257 | if (i)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |257| 
        beq       L70                   ; |257| 
;*      Branch Occurs to L70            ; |257| 
	.line	10
;----------------------------------------------------------------------
; 258 | return i;                                                              
;----------------------------------------------------------------------
        bu        L73                   ; |258| 
;*      Branch Occurs to L73            ; |258| 
L70:        
	.line	12
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
	.line	14
;----------------------------------------------------------------------
; 262 | FLASH_LOCK_BLK(addr, FALSE);                                           
;----------------------------------------------------------------------
        ldiu      0,r2                  ; |262| 
        ldp       @CL27,DP
        ldiu      *+fp(1),ar2           ; |262| 
        ldiu      @CL27,r0              ; |262| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |262| 
                                        ; |262| Far Call Occurs
	.line	16
;----------------------------------------------------------------------
; 264 | *FLASH_LOC      = BLOCK_ERASE;                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |264| 
        ldp       @CL28,DP
        ldiu      @CL28,r0              ; |264| 
        sti       r0,*ar0               ; |264| 
	.line	17
;----------------------------------------------------------------------
; 265 | addr[0]         = BLOCK_ERASE_CONFIRM;                                 
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar0           ; |265| 
        ldiu      @CL22,r0              ; |265| 
        sti       r0,*ar0               ; |265| 
	.line	18
;----------------------------------------------------------------------
; 266 | status          = *FLASH_LOC;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |266| 
        ldiu      *ar0,r0               ; |266| 
        sti       r0,*+fp(2)            ; |266| 
	.line	20
;----------------------------------------------------------------------
; 268 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |268| 
        and       *+fp(2),r0            ; |268| 
        cmpi      @CL29,r0              ; |268| 
        beq       L72                   ; |268| 
;*      Branch Occurs to L72            ; |268| 
L71:        
	.line	21
;----------------------------------------------------------------------
; 269 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |269| 
        ldiu      *ar0,r0               ; |269| 
        sti       r0,*+fp(2)            ; |269| 
	.line	20
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |268| 
        and       *+fp(2),r0            ; |268| 
        cmpi      @CL29,r0              ; |268| 
        bne       L71                   ; |268| 
;*      Branch Occurs to L71            ; |268| 
L72:        
	.line	23
;----------------------------------------------------------------------
; 271 | r                       = FLASH_STATUS();                              
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |271| 
        callu     r0                    ; far call to _FLASH_STATUS	; |271| 
                                        ; |271| Far Call Occurs
        sti       r0,*+fp(4)            ; |271| 
	.line	24
;----------------------------------------------------------------------
; 272 | *FLASH_LOC      = READ_ARRAY;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |272| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |272| 
        sti       r0,*ar0               ; |272| 
	.line	26
;----------------------------------------------------------------------
; 274 | FLASH_LOCK_BLK(addr, TRUE);                                            
;----------------------------------------------------------------------
        ldiu      1,r2                  ; |274| 
        ldp       @CL27,DP
        ldiu      *+fp(1),ar2           ; |274| 
        ldiu      @CL27,r0              ; |274| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |274| 
                                        ; |274| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 276 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |276| 
        ldiu      8,r0                  ; |276| 
        or3       r0,*ar0,r0            ; |276| 
        sti       r0,*ar0               ; |276| 
        ldiu      128,r0                ; |276| 
        or3       r0,*ar0,r0            ; |276| 
        sti       r0,*ar0               ; |276| 
	pop		ST			
	.line	29
;----------------------------------------------------------------------
; 277 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	31
;----------------------------------------------------------------------
; 279 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |279| 
L73:        
	.line	32
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |280| 
        ldiu      *fp,fp                ; |280| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |280| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	280,000000000h,4


	.sect	 "internal_RAM"

	.global	_FLASH_WRITE_BLK
	.sym	_FLASH_WRITE_BLK,_FLASH_WRITE_BLK,36,2,0
	.func	296
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
; 296 | int FLASH_WRITE_BLK(unsigned int* addr, unsigned int* data, unsigned in
;     | t n)                                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 298 | unsigned int r;                 /* return
;     |          */                                                            
; 299 | unsigned int status;    /* status of flash location */                 
; 300 | int i;                                  /* error check/ counter
;     |  */                                                                    
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |297| 
        sti       r2,*+fp(2)            ; |297| 
        sti       ar2,*+fp(1)           ; |297| 
	.line	7
;----------------------------------------------------------------------
; 302 | i = FLASH_CHECK_ADDR(addr, n);                                         
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,r0              ; |302| 
        ldiu      r3,r2
        callu     r0                    ; far call to _FLASH_CHECK_ADDR	; |302| 
                                        ; |302| Far Call Occurs
        sti       r0,*+fp(6)            ; |302| 
	.line	9
;----------------------------------------------------------------------
; 304 | if (i)                  /* error, return */                            
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |304| 
        beq       L77                   ; |304| 
;*      Branch Occurs to L77            ; |304| 
	.line	10
;----------------------------------------------------------------------
; 305 | return i;                                                              
;----------------------------------------------------------------------
        bu        L87                   ; |305| 
;*      Branch Occurs to L87            ; |305| 
L77:        
	.line	12
;----------------------------------------------------------------------
; 307 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	13
;----------------------------------------------------------------------
; 308 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |308| 
        ldiu      247,r0                ; |308| 
        and3      r0,*ar0,r0            ; |308| 
        sti       r0,*ar0               ; |308| 
	pop		ST			
	.line	15
;----------------------------------------------------------------------
; 310 | FLASH_LOCK_BLK(addr, FALSE);                                           
;----------------------------------------------------------------------
        ldiu      0,r2                  ; |310| 
        ldp       @CL27,DP
        ldiu      *+fp(1),ar2           ; |310| 
        ldiu      @CL27,r0              ; |310| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |310| 
                                        ; |310| Far Call Occurs
	.line	17
;----------------------------------------------------------------------
; 312 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |312| 
        sti       r0,*+fp(6)            ; |312| 
        ldiu      *+fp(6),r0            ; |312| 
        cmpi      *+fp(3),r0            ; |312| 
        bhs       L81                   ; |312| 
;*      Branch Occurs to L81            ; |312| 
L78:        
	.line	19
;----------------------------------------------------------------------
; 314 | *FLASH_LOC      = PROGRAM;                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |314| 
        ldp       @CL30,DP
        ldiu      @CL30,r0              ; |314| 
        sti       r0,*ar0               ; |314| 
	.line	20
;----------------------------------------------------------------------
; 315 | addr[i]         = data[i];                                             
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar1           ; |315| 
        ldiu      *+fp(2),ir0           ; |315| 
        ldiu      *+fp(1),ir1           ; |315| 
        ldiu      ar1,ar0               ; |315| 
        ldiu      *+ar1(ir0),r0         ; |315| 
        sti       r0,*+ar0(ir1)         ; |315| 
	.line	21
;----------------------------------------------------------------------
; 316 | *FLASH_LOC      = READ_STATUS;                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |316| 
        ldp       @CL31,DP
        ldiu      @CL31,r0              ; |316| 
        sti       r0,*ar0               ; |316| 
	.line	22
;----------------------------------------------------------------------
; 317 | status          = *FLASH_LOC;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |317| 
        ldiu      *ar0,r0               ; |317| 
        sti       r0,*+fp(5)            ; |317| 
	.line	24
;----------------------------------------------------------------------
; 319 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |319| 
        and       *+fp(5),r0            ; |319| 
        cmpi      @CL29,r0              ; |319| 
        beq       L80                   ; |319| 
;*      Branch Occurs to L80            ; |319| 
L79:        
	.line	25
;----------------------------------------------------------------------
; 320 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |320| 
        ldiu      *ar0,r0               ; |320| 
        sti       r0,*+fp(5)            ; |320| 
	.line	24
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |319| 
        and       *+fp(5),r0            ; |319| 
        cmpi      @CL29,r0              ; |319| 
        bne       L79                   ; |319| 
;*      Branch Occurs to L79            ; |319| 
L80:        
	.line	17
        ldiu      1,r0                  ; |312| 
        addi      *+fp(6),r0            ; |312| 
        sti       r0,*+fp(6)            ; |312| 
        ldiu      *+fp(6),r0            ; |312| 
        cmpi      *+fp(3),r0            ; |312| 
        blo       L78                   ; |312| 
;*      Branch Occurs to L78            ; |312| 
L81:        
	.line	28
;----------------------------------------------------------------------
; 323 | r                       = FLASH_STATUS();                              
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |323| 
        callu     r0                    ; far call to _FLASH_STATUS	; |323| 
                                        ; |323| Far Call Occurs
        sti       r0,*+fp(4)            ; |323| 
	.line	29
;----------------------------------------------------------------------
; 324 | *FLASH_LOC      = READ_ARRAY;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |324| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |324| 
        sti       r0,*ar0               ; |324| 
	.line	31
;----------------------------------------------------------------------
; 326 | FLASH_LOCK_BLK(addr, TRUE);                                            
;----------------------------------------------------------------------
        ldiu      1,r2                  ; |326| 
        ldp       @CL27,DP
        ldiu      *+fp(1),ar2           ; |326| 
        ldiu      @CL27,r0              ; |326| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |326| 
                                        ; |326| Far Call Occurs
	.line	33
;----------------------------------------------------------------------
; 328 | if (!r)                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |328| 
        cmpi      0,r0                  ; |328| 
        bne       L86                   ; |328| 
;*      Branch Occurs to L86            ; |328| 
	.line	35
;----------------------------------------------------------------------
; 330 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |330| 
        sti       r0,*+fp(6)            ; |330| 
        ldiu      *+fp(6),r0            ; |330| 
        cmpi      *+fp(3),r0            ; |330| 
        bhs       L86                   ; |330| 
;*      Branch Occurs to L86            ; |330| 
L83:        
	.line	37
;----------------------------------------------------------------------
; 332 | if (addr[i] != data[i])                                                
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar1           ; |332| 
        ldiu      *+fp(2),ir1           ; |332| 
        ldiu      *+fp(1),ir0           ; |332| 
        ldiu      ar1,ar0               ; |332| 
        cmpi3     *+ar1(ir1),*+ar0(ir0) ; |332| 
        beq       L85                   ; |332| 
;*      Branch Occurs to L85            ; |332| 
	.line	39
;----------------------------------------------------------------------
; 334 | r = FLASH_ERROR_PROG;                                                  
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |334| 
        sti       r0,*+fp(4)            ; |334| 
	.line	40
;----------------------------------------------------------------------
; 335 | break;                                                                 
;----------------------------------------------------------------------
        bu        L86                   ; |335| 
;*      Branch Occurs to L86            ; |335| 
L85:        
	.line	35
        ldiu      1,r0                  ; |330| 
        addi      *+fp(6),r0            ; |330| 
        sti       r0,*+fp(6)            ; |330| 
        ldiu      *+fp(6),r0            ; |330| 
        cmpi      *+fp(3),r0            ; |330| 
        blo       L83                   ; |330| 
;*      Branch Occurs to L83            ; |330| 
L86:        
	.line	45
;----------------------------------------------------------------------
; 340 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |340| 
        ldiu      8,r0                  ; |340| 
        or3       r0,*ar0,r0            ; |340| 
        sti       r0,*ar0               ; |340| 
        ldiu      128,r0                ; |340| 
        or3       r0,*ar0,r0            ; |340| 
        sti       r0,*ar0               ; |340| 
	pop		ST			
	.line	46
;----------------------------------------------------------------------
; 341 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	48
;----------------------------------------------------------------------
; 343 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |343| 
L87:        
	.line	49
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |344| 
        ldiu      *fp,fp                ; |344| 
                                        ; Unallocate the Frame
        subi      8,sp                  ; |344| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	344,000000000h,6


	.sect	 "internal_RAM"

	.global	_FLASH_STATUS
	.sym	_FLASH_STATUS,_FLASH_STATUS,36,2,0
	.func	362
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
; 362 | int FLASH_STATUS(void)                                                 
; 364 | unsigned int r;                                                        
; 365 | unsigned int status;                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	6
;----------------------------------------------------------------------
; 367 | r                       = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |367| 
        sti       r0,*+fp(1)            ; |367| 
	.line	7
;----------------------------------------------------------------------
; 368 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
; 369 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |369| 
        ldiu      247,r0                ; |369| 
        and3      r0,*ar0,r0            ; |369| 
        sti       r0,*ar0               ; |369| 
	pop		ST			
	.line	9
;----------------------------------------------------------------------
; 370 | *FLASH_LOC      = READ_STATUS;                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |370| 
        ldp       @CL31,DP
        ldiu      @CL31,r0              ; |370| 
        sti       r0,*ar0               ; |370| 
	.line	10
;----------------------------------------------------------------------
; 371 | status          = *FLASH_LOC;                                          
; 373 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |371| 
        ldiu      *ar0,r0               ; |371| 
        sti       r0,*+fp(2)            ; |371| 
	.line	14
;----------------------------------------------------------------------
; 375 | if (status&0x00080008)                                                 
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,r0              ; |375| 
        tstb      *+fp(2),r0            ; |375| 
        beq       L91                   ; |375| 
;*      Branch Occurs to L91            ; |375| 
	.line	16
;----------------------------------------------------------------------
; 377 | r                       = FLASH_ERROR_VPP;                             
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |377| 
        sti       r0,*+fp(1)            ; |377| 
	.line	17
;----------------------------------------------------------------------
; 378 | *FLASH_LOC      = CLEAR_STATUS;                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |378| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |378| 
        sti       r0,*ar0               ; |378| 
	.line	18
;----------------------------------------------------------------------
; 379 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |379| 
;*      Branch Occurs to L100           ; |379| 
L91:        
	.line	21
;----------------------------------------------------------------------
; 382 | if (status&0x00100010)                                                 
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,r0              ; |382| 
        tstb      *+fp(2),r0            ; |382| 
        beq       L93                   ; |382| 
;*      Branch Occurs to L93            ; |382| 
	.line	23
;----------------------------------------------------------------------
; 384 | r                       = FLASH_ERROR_PROG;                            
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |384| 
        sti       r0,*+fp(1)            ; |384| 
	.line	24
;----------------------------------------------------------------------
; 385 | *FLASH_LOC      = CLEAR_STATUS;                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |385| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |385| 
        sti       r0,*ar0               ; |385| 
	.line	25
;----------------------------------------------------------------------
; 386 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |386| 
;*      Branch Occurs to L100           ; |386| 
L93:        
	.line	28
;----------------------------------------------------------------------
; 389 | if (status&0x00020002)                                                 
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,r0              ; |389| 
        tstb      *+fp(2),r0            ; |389| 
        beq       L95                   ; |389| 
;*      Branch Occurs to L95            ; |389| 
	.line	30
;----------------------------------------------------------------------
; 391 | r                       = FLASH_ERROR_LOCKED;                          
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |391| 
        sti       r0,*+fp(1)            ; |391| 
	.line	31
;----------------------------------------------------------------------
; 392 | *FLASH_LOC      = CLEAR_STATUS;                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |392| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |392| 
        sti       r0,*ar0               ; |392| 
	.line	32
;----------------------------------------------------------------------
; 393 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |393| 
;*      Branch Occurs to L100           ; |393| 
L95:        
	.line	35
;----------------------------------------------------------------------
; 396 | if (status&0x00300030)                                                 
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,r0              ; |396| 
        tstb      *+fp(2),r0            ; |396| 
        beq       L97                   ; |396| 
;*      Branch Occurs to L97            ; |396| 
	.line	37
;----------------------------------------------------------------------
; 398 | r                       = FLASH_ERROR_CMD_SEQ;                         
;----------------------------------------------------------------------
        ldiu      16,r0                 ; |398| 
        sti       r0,*+fp(1)            ; |398| 
	.line	38
;----------------------------------------------------------------------
; 399 | *FLASH_LOC      = CLEAR_STATUS;                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |399| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |399| 
        sti       r0,*ar0               ; |399| 
	.line	39
;----------------------------------------------------------------------
; 400 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |400| 
;*      Branch Occurs to L100           ; |400| 
L97:        
	.line	42
;----------------------------------------------------------------------
; 403 | if (status&0x00200020)                                                 
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldiu      @CL28,r0              ; |403| 
        tstb      *+fp(2),r0            ; |403| 
        beq       L100                  ; |403| 
;*      Branch Occurs to L100           ; |403| 
	.line	44
;----------------------------------------------------------------------
; 405 | r                       = FLASH_ERROR_BLK_ERASE;                       
;----------------------------------------------------------------------
        ldiu      8,r0                  ; |405| 
        sti       r0,*+fp(1)            ; |405| 
	.line	45
;----------------------------------------------------------------------
; 406 | *FLASH_LOC      = CLEAR_STATUS;                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |406| 
        ldp       @CL33,DP
        ldiu      @CL33,r0              ; |406| 
        sti       r0,*ar0               ; |406| 
	.line	46
;----------------------------------------------------------------------
; 407 | break;                                                                 
;----------------------------------------------------------------------
        bu        L100                  ; |407| 
;*      Branch Occurs to L100           ; |407| 
	.line	49
;----------------------------------------------------------------------
; 410 | break;                                                                 
;----------------------------------------------------------------------
	.line	50
L100:        
	.line	52
;----------------------------------------------------------------------
; 413 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |413| 
        ldiu      8,r0                  ; |413| 
        or3       r0,*ar0,r0            ; |413| 
        sti       r0,*ar0               ; |413| 
        ldiu      128,r0                ; |413| 
        or3       r0,*ar0,r0            ; |413| 
        sti       r0,*ar0               ; |413| 
	pop		ST			
	pop		ST			
	.line	53
;----------------------------------------------------------------------
; 414 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |414| 
	.line	54
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |415| 
        ldiu      *fp,fp                ; |415| 
                                        ; Unallocate the Frame
        subi      4,sp                  ; |415| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	415,000000000h,2


	.sect	 "internal_RAM"

	.global	_FLASH_READ_ESN_MFGR
	.sym	_FLASH_READ_ESN_MFGR,_FLASH_READ_ESN_MFGR,32,2,0
	.func	429
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
; 429 | void FLASH_READ_ESN_MFGR(unsigned int* dat)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 431 | int i;                                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |430| 
	.line	5
;----------------------------------------------------------------------
; 433 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	6
;----------------------------------------------------------------------
; 434 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |434| 
        ldiu      247,r0                ; |434| 
        and3      r0,*ar0,r0            ; |434| 
        sti       r0,*ar0               ; |434| 
	pop		ST			
	.line	7
;----------------------------------------------------------------------
; 435 | *FLASH_LOC      = READ_CONFIG;                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |435| 
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |435| 
        sti       r0,*ar0               ; |435| 
	.line	9
;----------------------------------------------------------------------
; 437 | for(i=0;i<4;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |437| 
        sti       r0,*+fp(2)            ; |437| 
        cmpi      4,r0                  ; |437| 
        bge       L105                  ; |437| 
;*      Branch Occurs to L105           ; |437| 
L104:        
	.line	10
;----------------------------------------------------------------------
; 438 | dat[i] = FLASH_LOC[i+0x81];                                            
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      *+fp(2),ir0           ; |438| 
        ldiu      *+fp(1),ir1           ; |438| 
        ldiu      @CL37,ar1             ; |438| 
        ldiu      ir0,ar0               ; |438| 
        ldiu      *+ar1(ir0),r0         ; |438| 
        sti       r0,*+ar0(ir1)         ; |438| 
	.line	9
        ldiu      1,r0                  ; |437| 
        addi      *+fp(2),r0            ; |437| 
        sti       r0,*+fp(2)            ; |437| 
        cmpi      4,r0                  ; |437| 
        blt       L104                  ; |437| 
;*      Branch Occurs to L104           ; |437| 
L105:        
	.line	13
;----------------------------------------------------------------------
; 441 | dat[4]          = FLASH_LOC[0x80];                                     
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |441| 
        ldiu      *+fp(1),ar1           ; |441| 
        ldiu      *ar0,r0               ; |441| 
        sti       r0,*+ar1(4)           ; |441| 
	.line	14
;----------------------------------------------------------------------
; 442 | *FLASH_LOC      = READ_ARRAY;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |442| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |442| 
        sti       r0,*ar0               ; |442| 
	.line	15
;----------------------------------------------------------------------
; 443 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |443| 
        ldiu      8,r0                  ; |443| 
        or3       r0,*ar0,r0            ; |443| 
        sti       r0,*ar0               ; |443| 
        ldiu      128,r0                ; |443| 
        or3       r0,*ar0,r0            ; |443| 
        sti       r0,*ar0               ; |443| 
	pop		ST			
	.line	16
;----------------------------------------------------------------------
; 444 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	17
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	445,000000000h,2


	.sect	 "internal_RAM"

	.global	_FLASH_READ_ESN_USER
	.sym	_FLASH_READ_ESN_USER,_FLASH_READ_ESN_USER,32,2,0
	.func	459
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
; 459 | void FLASH_READ_ESN_USER(unsigned int* dat)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 461 | int i;                                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |460| 
	.line	5
;----------------------------------------------------------------------
; 463 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	6
;----------------------------------------------------------------------
; 464 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |464| 
        ldiu      247,r0                ; |464| 
        and3      r0,*ar0,r0            ; |464| 
        sti       r0,*ar0               ; |464| 
	pop		ST			
	.line	7
;----------------------------------------------------------------------
; 465 | *FLASH_LOC = READ_CONFIG;                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |465| 
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |465| 
        sti       r0,*ar0               ; |465| 
	.line	9
;----------------------------------------------------------------------
; 467 | for(i=0;i<4;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |467| 
        sti       r0,*+fp(2)            ; |467| 
        cmpi      4,r0                  ; |467| 
        bge       L110                  ; |467| 
;*      Branch Occurs to L110           ; |467| 
L109:        
	.line	10
;----------------------------------------------------------------------
; 468 | dat[i] = FLASH_LOC[i+0x85];                                            
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      *+fp(2),ir0           ; |468| 
        ldiu      *+fp(1),ir1           ; |468| 
        ldiu      @CL39,ar1             ; |468| 
        ldiu      ir0,ar0               ; |468| 
        ldiu      *+ar1(ir0),r0         ; |468| 
        sti       r0,*+ar0(ir1)         ; |468| 
	.line	9
        ldiu      1,r0                  ; |467| 
        addi      *+fp(2),r0            ; |467| 
        sti       r0,*+fp(2)            ; |467| 
        cmpi      4,r0                  ; |467| 
        blt       L109                  ; |467| 
;*      Branch Occurs to L109           ; |467| 
L110:        
	.line	13
;----------------------------------------------------------------------
; 471 | dat[4] = FLASH_LOC[0x80];                                              
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |471| 
        ldiu      *+fp(1),ar1           ; |471| 
        ldiu      *ar0,r0               ; |471| 
        sti       r0,*+ar1(4)           ; |471| 
	.line	14
;----------------------------------------------------------------------
; 472 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |472| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |472| 
        sti       r0,*ar0               ; |472| 
	.line	15
;----------------------------------------------------------------------
; 473 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |473| 
        ldiu      8,r0                  ; |473| 
        or3       r0,*ar0,r0            ; |473| 
        sti       r0,*ar0               ; |473| 
        ldiu      128,r0                ; |473| 
        or3       r0,*ar0,r0            ; |473| 
        sti       r0,*ar0               ; |473| 
	pop		ST			
	.line	16
;----------------------------------------------------------------------
; 474 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	17
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	475,000000000h,2


	.sect	 "internal_RAM"

	.global	_FLASH_WRITE_ESN_USER
	.sym	_FLASH_WRITE_ESN_USER,_FLASH_WRITE_ESN_USER,36,2,0
	.func	490
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
; 490 | int FLASH_WRITE_ESN_USER(unsigned int* dat)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 492 | int r;                                  /* return status        */     
; 493 | int i;                                  /* counter
;     |  */                                                                    
; 494 | unsigned int status;    /* memory status        */                     
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |491| 
	.line	7
;----------------------------------------------------------------------
; 496 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
; 497 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |497| 
        ldiu      247,r0                ; |497| 
        and3      r0,*ar0,r0            ; |497| 
        sti       r0,*ar0               ; |497| 
	pop		ST			
	.line	9
;----------------------------------------------------------------------
; 498 | *FLASH_LOC      = READ_CONFIG;                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |498| 
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |498| 
        sti       r0,*ar0               ; |498| 
	.line	10
;----------------------------------------------------------------------
; 499 | status          = FLASH_LOC[0x80];                                     
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |499| 
        ldiu      *ar0,r0               ; |499| 
        sti       r0,*+fp(4)            ; |499| 
	.line	11
;----------------------------------------------------------------------
; 500 | *FLASH_LOC      = READ_ARRAY;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |500| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |500| 
        sti       r0,*ar0               ; |500| 
	.line	13
;----------------------------------------------------------------------
; 502 | if ((status & 0x00020002) != 0x00020002)                               
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,r0              ; |502| 
        and       *+fp(4),r0            ; |502| 
        cmpi      @CL35,r0              ; |502| 
        beq       L115                  ; |502| 
;*      Branch Occurs to L115           ; |502| 
	.line	15
;----------------------------------------------------------------------
; 504 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |504| 
        ldiu      8,r0                  ; |504| 
        or3       r0,*ar0,r0            ; |504| 
        sti       r0,*ar0               ; |504| 
        ldiu      128,r0                ; |504| 
        or3       r0,*ar0,r0            ; |504| 
        sti       r0,*ar0               ; |504| 
	pop		ST			
	pop		ST			
	.line	16
;----------------------------------------------------------------------
; 505 | return -1;                                                             
;----------------------------------------------------------------------
        bud       L120                  ; |505| 
	nop
	nop
        ldiu      -1,r0                 ; |505| 
;*      Branch Occurs to L120           ; |505| 
L115:        
	.line	19
;----------------------------------------------------------------------
; 508 | for(i=0;i<4;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |508| 
        sti       r0,*+fp(3)            ; |508| 
        cmpi      4,r0                  ; |508| 
        bge       L119                  ; |508| 
;*      Branch Occurs to L119           ; |508| 
L116:        
	.line	21
;----------------------------------------------------------------------
; 510 | *FLASH_LOC      = PROTECT_PROG;                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |510| 
        ldp       @CL40,DP
        ldiu      @CL40,r0              ; |510| 
        sti       r0,*ar0               ; |510| 
	.line	22
;----------------------------------------------------------------------
; 511 | dat[i]          = FLASH_LOC[i+0x85];                                   
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      *+fp(3),ir0           ; |511| 
        ldiu      @CL39,ar1             ; |511| 
        ldiu      *+fp(1),ir1           ; |511| 
        ldiu      ir0,ar0               ; |511| 
        ldiu      *+ar1(ir0),r0         ; |511| 
        sti       r0,*+ar0(ir1)         ; |511| 
	.line	23
;----------------------------------------------------------------------
; 512 | *FLASH_LOC      = READ_STATUS;                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |512| 
        ldp       @CL31,DP
        ldiu      @CL31,r0              ; |512| 
        sti       r0,*ar0               ; |512| 
	.line	24
;----------------------------------------------------------------------
; 513 | status          = *FLASH_LOC;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |513| 
        ldiu      *ar0,r0               ; |513| 
        sti       r0,*+fp(4)            ; |513| 
	.line	26
;----------------------------------------------------------------------
; 515 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |515| 
        and       *+fp(4),r0            ; |515| 
        cmpi      @CL29,r0              ; |515| 
        beq       L118                  ; |515| 
;*      Branch Occurs to L118           ; |515| 
L117:        
	.line	27
;----------------------------------------------------------------------
; 516 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |516| 
        ldiu      *ar0,r0               ; |516| 
        sti       r0,*+fp(4)            ; |516| 
	.line	26
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |515| 
        and       *+fp(4),r0            ; |515| 
        cmpi      @CL29,r0              ; |515| 
        bne       L117                  ; |515| 
;*      Branch Occurs to L117           ; |515| 
L118:        
	.line	19
        ldiu      1,r0                  ; |508| 
        addi      *+fp(3),r0            ; |508| 
        sti       r0,*+fp(3)            ; |508| 
        cmpi      4,r0                  ; |508| 
        blt       L116                  ; |508| 
;*      Branch Occurs to L116           ; |508| 
L119:        
	.line	30
;----------------------------------------------------------------------
; 519 | r                       = FLASH_STATUS();                              
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |519| 
        callu     r0                    ; far call to _FLASH_STATUS	; |519| 
                                        ; |519| Far Call Occurs
        sti       r0,*+fp(2)            ; |519| 
	.line	31
;----------------------------------------------------------------------
; 520 | *FLASH_LOC      = READ_ARRAY;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |520| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |520| 
        sti       r0,*ar0               ; |520| 
	.line	32
;----------------------------------------------------------------------
; 521 | r                       = FLASH_LOCK_ESN_USER();                       
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |521| 
        callu     r0                    ; far call to _FLASH_LOCK_ESN_USER	; |521| 
                                        ; |521| Far Call Occurs
        sti       r0,*+fp(2)            ; |521| 
	.line	33
;----------------------------------------------------------------------
; 522 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |522| 
        ldiu      8,r0                  ; |522| 
        or3       r0,*ar0,r0            ; |522| 
        sti       r0,*ar0               ; |522| 
        ldiu      128,r0                ; |522| 
        or3       r0,*ar0,r0            ; |522| 
        sti       r0,*ar0               ; |522| 
	pop		ST			
	.line	34
;----------------------------------------------------------------------
; 523 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	36
;----------------------------------------------------------------------
; 525 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |525| 
L120:        
	.line	37
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |526| 
        ldiu      *fp,fp                ; |526| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |526| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	526,000000000h,4


	.sect	 "internal_RAM"

	.global	_FLASH_LOCK_ESN_USER
	.sym	_FLASH_LOCK_ESN_USER,_FLASH_LOCK_ESN_USER,36,2,0
	.func	540
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
; 540 | int FLASH_LOCK_ESN_USER(void)                                          
; 542 | int r;                                  /* return                */    
; 543 | unsigned int status;    /* memory status */                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	6
;----------------------------------------------------------------------
; 545 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 546 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |546| 
        ldiu      247,r0                ; |546| 
        and3      r0,*ar0,r0            ; |546| 
        sti       r0,*ar0               ; |546| 
	pop		ST			
	.line	8
;----------------------------------------------------------------------
; 547 | *FLASH_LOC              = PROTECT_PROG;                                
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |547| 
        ldp       @CL40,DP
        ldiu      @CL40,r0              ; |547| 
        sti       r0,*ar0               ; |547| 
	.line	9
;----------------------------------------------------------------------
; 548 | FLASH_LOC[0x80] = 0xFFFDFFFD;   /* PERMANENTLY LOCK user ESN */        
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |548| 
        ldp       @CL42,DP
        ldiu      @CL42,r0              ; |548| 
        sti       r0,*ar0               ; |548| 
	.line	10
;----------------------------------------------------------------------
; 549 | *FLASH_LOC              = READ_STATUS;                                 
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |549| 
        ldp       @CL31,DP
        ldiu      @CL31,r0              ; |549| 
        sti       r0,*ar0               ; |549| 
	.line	11
;----------------------------------------------------------------------
; 550 | status                  = *FLASH_LOC;                                  
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |550| 
        ldiu      *ar0,r0               ; |550| 
        sti       r0,*+fp(2)            ; |550| 
	.line	13
;----------------------------------------------------------------------
; 552 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |552| 
        and       *+fp(2),r0            ; |552| 
        cmpi      @CL29,r0              ; |552| 
        beq       L124                  ; |552| 
;*      Branch Occurs to L124           ; |552| 
L123:        
	.line	14
;----------------------------------------------------------------------
; 553 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |553| 
        ldiu      *ar0,r0               ; |553| 
        sti       r0,*+fp(2)            ; |553| 
	.line	13
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |552| 
        and       *+fp(2),r0            ; |552| 
        cmpi      @CL29,r0              ; |552| 
        bne       L123                  ; |552| 
;*      Branch Occurs to L123           ; |552| 
L124:        
	.line	16
;----------------------------------------------------------------------
; 555 | r                       = FLASH_STATUS();                              
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |555| 
        callu     r0                    ; far call to _FLASH_STATUS	; |555| 
                                        ; |555| Far Call Occurs
        sti       r0,*+fp(1)            ; |555| 
	.line	17
;----------------------------------------------------------------------
; 556 | *FLASH_LOC      = READ_ARRAY;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |556| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |556| 
        sti       r0,*ar0               ; |556| 
	.line	18
;----------------------------------------------------------------------
; 557 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |557| 
        ldiu      8,r0                  ; |557| 
        or3       r0,*ar0,r0            ; |557| 
        sti       r0,*ar0               ; |557| 
        ldiu      128,r0                ; |557| 
        or3       r0,*ar0,r0            ; |557| 
        sti       r0,*ar0               ; |557| 
	pop		ST			
	.line	19
;----------------------------------------------------------------------
; 558 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	21
;----------------------------------------------------------------------
; 560 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |560| 
	.line	22
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |561| 
        ldiu      *fp,fp                ; |561| 
                                        ; Unallocate the Frame
        subi      4,sp                  ; |561| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	561,000000000h,2



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
