;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Wed Jul 24 11:03:54 2019                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_CHC.AAA 
	.file	"i2c.c"
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
	.file	"i2c.c"
	.sect	 "internal_RAM"

	.global	_I2C_TX_BYTE
	.sym	_I2C_TX_BYTE,_I2C_TX_BYTE,46,2,0
	.func	37
;******************************************************************************
;* FUNCTION NAME: _I2C_TX_BYTE                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_I2C_TX_BYTE:
;* ar2   assigned to _b
	.sym	_b,10,12,17,32
	.sym	_b,1,12,1,32
	.sym	_i,2,4,1,32
	.sym	_dat,3,12,1,32
	.sym	_ack,4,14,1,32
	.line	1
;----------------------------------------------------------------------
;  37 | BOOL I2C_TX_BYTE(unsigned char b)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
;  39 | int i;                          /* bit counter          */             
;  40 | unsigned char dat;      /* copy of b            */                     
;  41 | BOOL ack;                       /* acknowledgement      */             
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |38| 
	.line	7
;----------------------------------------------------------------------
;  43 | dat = b;                                                               
;----------------------------------------------------------------------
        ldiu      ar2,r0
        sti       r0,*+fp(3)            ; |43| 
	.line	9
;----------------------------------------------------------------------
;  45 | for (i=0;i<8;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |45| 
        sti       r0,*+fp(2)            ; |45| 
        cmpi      8,r0                  ; |45| 
        bge       L6                    ; |45| 
;*      Branch Occurs to L6             ; |45| 
L2:        
	.line	11
;----------------------------------------------------------------------
;  47 | if (dat&0x80)                                                          
;----------------------------------------------------------------------
        ldiu      128,r0                ; |47| 
        tstb      *+fp(3),r0            ; |47| 
        beq       L4                    ; |47| 
;*      Branch Occurs to L4             ; |47| 
	.line	13
;----------------------------------------------------------------------
;  49 | SDA_TX_HI;                                                             
;  51 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |49| 
        ldiu      1,r0                  ; |49| 
        or3       r0,*ar0,r0            ; |49| 
        sti       r0,*ar0               ; |49| 
        bu        L5                    ; |36| 
;*      Branch Occurs to L5             ; |36| 
L4:        
	.line	17
;----------------------------------------------------------------------
;  53 | SDA_TX_LO;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |53| 
        ldiu      254,r0                ; |53| 
        and3      r0,*ar0,r0            ; |53| 
        sti       r0,*ar0               ; |53| 
L5:        
	.line	20
;----------------------------------------------------------------------
;  56 | I2C_PULSE;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |56| 
        ldiu      4,r0                  ; |56| 
        or3       r0,*ar0,r0            ; |56| 
        sti       r0,*ar0               ; |56| 
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |56| 
        and3      r0,*ar0,r0            ; |56| 
        sti       r0,*ar0               ; |56| 
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	21
;----------------------------------------------------------------------
;  57 | dat = dat<<1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |57| 
        ash       1,r0                  ; |57| 
        sti       r0,*+fp(3)            ; |57| 
	.line	9
        ldiu      1,r0                  ; |45| 
        addi      *+fp(2),r0            ; |45| 
        sti       r0,*+fp(2)            ; |45| 
        cmpi      8,r0                  ; |45| 
        blt       L2                    ; |45| 
;*      Branch Occurs to L2             ; |45| 
L6:        
	.line	24
;----------------------------------------------------------------------
;  60 | DISABLE_SDA_TX;                                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |60| 
        ldiu      253,r0                ; |60| 
        and3      r0,*ar0,r0            ; |60| 
        sti       r0,*ar0               ; |60| 
	.line	25
;----------------------------------------------------------------------
;  61 | SDA_TX_HI;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |61| 
        or3       r0,*ar0,r0            ; |61| 
        sti       r0,*ar0               ; |61| 
	.line	26
;----------------------------------------------------------------------
;  62 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	27
;----------------------------------------------------------------------
;  63 | SCL_HI;                                                                
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |63| 
        or3       r0,*ar0,r0            ; |63| 
        sti       r0,*ar0               ; |63| 
	.line	28
;----------------------------------------------------------------------
;  64 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	30
;----------------------------------------------------------------------
;  66 | if (SDA_RX)                                                            
;----------------------------------------------------------------------
        ldiu      16,r0                 ; |66| 
        tstb3     *ar0,r0               ; |66| 
        beq       L8                    ; |66| 
;*      Branch Occurs to L8             ; |66| 
	.line	31
;----------------------------------------------------------------------
;  67 | ack = FALSE;                                                           
;  68 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |67| 
        sti       r0,*+fp(4)            ; |67| 
        bu        L9                    ; |36| 
;*      Branch Occurs to L9             ; |36| 
L8:        
	.line	33
;----------------------------------------------------------------------
;  69 | ack     = TRUE;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |69| 
        sti       r0,*+fp(4)            ; |69| 
L9:        
	.line	35
;----------------------------------------------------------------------
;  71 | SCL_LO;                                                                
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |71| 
        ldiu      251,r0                ; |71| 
        and3      r0,*ar0,r0            ; |71| 
        sti       r0,*ar0               ; |71| 
	.line	36
;----------------------------------------------------------------------
;  72 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	37
;----------------------------------------------------------------------
;  73 | ENABLE_SDA_TX;                                                         
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |73| 
        or3       r0,*ar0,r0            ; |73| 
        sti       r0,*ar0               ; |73| 
	.line	39
;----------------------------------------------------------------------
;  75 | return ack;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |75| 
	.line	40
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |76| 
        ldiu      *fp,fp                ; |76| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |76| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	76,000000000h,4


	.sect	 "internal_RAM"

	.global	_I2C_RX_BYTE
	.sym	_I2C_RX_BYTE,_I2C_RX_BYTE,32,2,0
	.func	91
;******************************************************************************
;* FUNCTION NAME: _I2C_RX_BYTE                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_I2C_RX_BYTE:
;* ar2   assigned to _b
	.sym	_b,10,28,17,32
;* r2    assigned to _ack
	.sym	_ack,2,14,17,32
	.sym	_b,1,28,1,32
	.sym	_ack,2,14,1,32
	.sym	_i,3,4,1,32
	.sym	_dat,4,12,1,32
	.line	1
;----------------------------------------------------------------------
;  91 | void I2C_RX_BYTE(unsigned char* b, BOOL ack)                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
;  93 | int i;                          /* bit counter   */                    
;  94 | unsigned char dat;      /* recieved data */                            
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |92| 
        sti       ar2,*+fp(1)           ; |92| 
	.line	6
;----------------------------------------------------------------------
;  96 | dat = 0;                                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |96| 
        sti       r0,*+fp(4)            ; |96| 
	.line	7
;----------------------------------------------------------------------
;  97 | DISABLE_SDA_TX;                                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |97| 
        ldiu      253,r0                ; |97| 
        and3      r0,*ar0,r0            ; |97| 
        sti       r0,*ar0               ; |97| 
	.line	9
;----------------------------------------------------------------------
;  99 | for (i=0;i<8;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |99| 
        sti       r0,*+fp(3)            ; |99| 
        cmpi      8,r0                  ; |99| 
        bge       L16                   ; |99| 
;*      Branch Occurs to L16            ; |99| 
L13:        
	.line	11
;----------------------------------------------------------------------
; 101 | SCL_HI;                                                                
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |101| 
        ldiu      4,r0                  ; |101| 
        or3       r0,*ar0,r0            ; |101| 
        sti       r0,*ar0               ; |101| 
	.line	12
;----------------------------------------------------------------------
; 102 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	14
;----------------------------------------------------------------------
; 104 | if (SDA_RX)                                                            
;----------------------------------------------------------------------
        ldiu      16,r0                 ; |104| 
        tstb3     *ar0,r0               ; |104| 
        beq       L15                   ; |104| 
;*      Branch Occurs to L15            ; |104| 
	.line	15
;----------------------------------------------------------------------
; 105 | dat |= 0x01;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |105| 
        or        *+fp(4),r0            ; |105| 
        sti       r0,*+fp(4)            ; |105| 
L15:        
	.line	17
;----------------------------------------------------------------------
; 107 | SCL_LO;                                                                
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |107| 
        ldiu      251,r0                ; |107| 
        and3      r0,*ar0,r0            ; |107| 
        sti       r0,*ar0               ; |107| 
	.line	18
;----------------------------------------------------------------------
; 108 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	19
;----------------------------------------------------------------------
; 109 | dat = dat<<1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |109| 
        ash       1,r0                  ; |109| 
        sti       r0,*+fp(4)            ; |109| 
	.line	9
        ldiu      1,r0                  ; |99| 
        addi      *+fp(3),r0            ; |99| 
        sti       r0,*+fp(3)            ; |99| 
        cmpi      8,r0                  ; |99| 
        blt       L13                   ; |99| 
;*      Branch Occurs to L13            ; |99| 
L16:        
	.line	22
;----------------------------------------------------------------------
; 112 | dat = dat>>1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |112| 
        lsh       -1,r0                 ; |112| 
        sti       r0,*+fp(4)            ; |112| 
	.line	23
;----------------------------------------------------------------------
; 113 | ENABLE_SDA_TX;                                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |113| 
        ldiu      2,r0                  ; |113| 
        or3       r0,*ar0,r0            ; |113| 
        sti       r0,*ar0               ; |113| 
	.line	25
;----------------------------------------------------------------------
; 115 | if (ack)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |115| 
        cmpi      0,r0                  ; |115| 
        beq       L18                   ; |115| 
;*      Branch Occurs to L18            ; |115| 
	.line	27
;----------------------------------------------------------------------
; 117 | SDA_TX_LO;                                                             
; 119 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |117| 
        ldiu      254,r0                ; |117| 
        and3      r0,*ar0,r0            ; |117| 
        sti       r0,*ar0               ; |117| 
        bu        L19                   ; |90| 
;*      Branch Occurs to L19            ; |90| 
L18:        
	.line	31
;----------------------------------------------------------------------
; 121 | SDA_TX_HI;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |121| 
        ldiu      1,r0                  ; |121| 
        or3       r0,*ar0,r0            ; |121| 
        sti       r0,*ar0               ; |121| 
L19:        
	.line	34
;----------------------------------------------------------------------
; 124 | I2C_PULSE;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |124| 
        ldiu      4,r0                  ; |124| 
        or3       r0,*ar0,r0            ; |124| 
        sti       r0,*ar0               ; |124| 
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |124| 
        and3      r0,*ar0,r0            ; |124| 
        sti       r0,*ar0               ; |124| 
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	35
;----------------------------------------------------------------------
; 125 | b[0] = dat;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |125| 
        ldiu      *+fp(4),r0            ; |125| 
        sti       r0,*ar0               ; |125| 
	.line	36
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	126,000000000h,4


	.sect	 "internal_RAM"

	.global	_Write_I2C
	.sym	_Write_I2C,_Write_I2C,46,2,0
	.func	142
;******************************************************************************
;* FUNCTION NAME: _Write_I2C                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_I2C:
;* ar2   assigned to _addr
	.sym	_addr,10,4,17,32
;* r2    assigned to _n
	.sym	_n,2,4,17,32
;* r3    assigned to _p
	.sym	_p,3,28,17,32
	.sym	_addr,1,4,1,32
	.sym	_n,2,4,1,32
	.sym	_p,3,28,1,32
	.sym	_i,4,4,1,32
	.sym	_dat,5,12,1,32
	.sym	_ack,6,14,1,32
	.sym	_r,7,14,1,32
	.line	1
;----------------------------------------------------------------------
; 142 | BOOL Write_I2C(int addr, int n, unsigned char* p)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 144 | int i;                          /* byte counter          */            
; 145 | unsigned char dat;      /* write address         */                    
; 146 | BOOL ack;                       /* successful write? */                
; 147 | BOOL r;                         /* successful return?*/                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |143| 
        sti       r2,*+fp(2)            ; |143| 
        sti       ar2,*+fp(1)           ; |143| 
	.line	8
;----------------------------------------------------------------------
; 149 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |149| 
        sti       r0,*+fp(7)            ; |149| 
	.line	9
;----------------------------------------------------------------------
; 150 | I2C_START;                                                             
; 152 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |150| 
        ldiu      4,r0                  ; |150| 
        or3       r0,*ar0,r0            ; |150| 
        sti       r0,*ar0               ; |150| 
        ldiu      1,r0                  ; |150| 
        or3       r0,*ar0,r0            ; |150| 
        sti       r0,*ar0               ; |150| 
        ldiu      8,r0                  ; |150| 
        or3       r0,*ar0,r0            ; |150| 
        sti       r0,*ar0               ; |150| 
        ldiu      2,r0                  ; |150| 
        or3       r0,*ar0,r0            ; |150| 
        sti       r0,*ar0               ; |150| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |150| 
        and3      r0,*ar0,r0            ; |150| 
        sti       r0,*ar0               ; |150| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |150| 
        and3      r0,*ar0,r0            ; |150| 
        sti       r0,*ar0               ; |150| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	13
;----------------------------------------------------------------------
; 154 | dat = addr;                                             /* address with
;     | out read bit set */                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |154| 
        sti       r0,*+fp(5)            ; |154| 
	.line	14
;----------------------------------------------------------------------
; 155 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |155| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |155| 
                                        ; |155| Far Call Occurs
        sti       r0,*+fp(6)            ; |155| 
	.line	16
;----------------------------------------------------------------------
; 157 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |157| 
        bne       L24                   ; |157| 
;*      Branch Occurs to L24            ; |157| 
	.line	18
;----------------------------------------------------------------------
; 159 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |159| 
        sti       r0,*+fp(7)            ; |159| 
	.line	19
;----------------------------------------------------------------------
; 160 | break;                                                                 
;----------------------------------------------------------------------
        bu        L32                   ; |160| 
;*      Branch Occurs to L32            ; |160| 
L24:        
	.line	22
;----------------------------------------------------------------------
; 163 | ack = I2C_TX_BYTE(n);                   /* the number of bytes to write
;     |  */                                                                    
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(2),ar2           ; |163| 
        ldiu      @CL2,r0               ; |163| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |163| 
                                        ; |163| Far Call Occurs
        sti       r0,*+fp(6)            ; |163| 
	.line	24
;----------------------------------------------------------------------
; 165 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |165| 
        bne       L26                   ; |165| 
;*      Branch Occurs to L26            ; |165| 
	.line	26
;----------------------------------------------------------------------
; 167 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |167| 
        sti       r0,*+fp(7)            ; |167| 
	.line	27
;----------------------------------------------------------------------
; 168 | break;                                                                 
;----------------------------------------------------------------------
        bu        L32                   ; |168| 
;*      Branch Occurs to L32            ; |168| 
L26:        
	.line	30
;----------------------------------------------------------------------
; 171 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |171| 
        sti       r0,*+fp(4)            ; |171| 
        cmpi      *+fp(2),r0            ; |171| 
        bge       L32                   ; |171| 
;*      Branch Occurs to L32            ; |171| 
L27:        
	.line	32
;----------------------------------------------------------------------
; 173 | ack = I2C_TX_BYTE(p[i]);        /* write the bytes */                  
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(3),ir0           ; |173| 
        ldiu      *+fp(4),ar0           ; |173| 
        ldiu      @CL2,r0               ; |173| 
        ldiu      *+ar0(ir0),ar2        ; |173| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |173| 
                                        ; |173| Far Call Occurs
        sti       r0,*+fp(6)            ; |173| 
	.line	34
;----------------------------------------------------------------------
; 175 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |175| 
        bne       L29                   ; |175| 
;*      Branch Occurs to L29            ; |175| 
	.line	36
;----------------------------------------------------------------------
; 177 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |177| 
        sti       r0,*+fp(7)            ; |177| 
	.line	37
;----------------------------------------------------------------------
; 178 | break;                                                                 
;----------------------------------------------------------------------
        bu        L32                   ; |178| 
;*      Branch Occurs to L32            ; |178| 
L29:        
	.line	30
        ldiu      1,r0                  ; |171| 
        addi      *+fp(4),r0            ; |171| 
        sti       r0,*+fp(4)            ; |171| 
        cmpi      *+fp(2),r0            ; |171| 
        blt       L27                   ; |171| 
;*      Branch Occurs to L27            ; |171| 
	.line	41
;----------------------------------------------------------------------
; 182 | break;                                                                 
;----------------------------------------------------------------------
        bu        L32                   ; |182| 
;*      Branch Occurs to L32            ; |182| 
	.line	42
L32:        
	.line	44
;----------------------------------------------------------------------
; 185 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |185| 
        ldiu      2,r0                  ; |185| 
        or3       r0,*ar0,r0            ; |185| 
        sti       r0,*ar0               ; |185| 
        ldiu      254,r0                ; |185| 
        and3      r0,*ar0,r0            ; |185| 
        sti       r0,*ar0               ; |185| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |185| 
        or3       r0,*ar0,r0            ; |185| 
        sti       r0,*ar0               ; |185| 
        ldiu      247,r0                ; |185| 
        and3      r0,*ar0,r0            ; |185| 
        sti       r0,*ar0               ; |185| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |185| 
        or3       r0,*ar0,r0            ; |185| 
        sti       r0,*ar0               ; |185| 
        ldiu      253,r0                ; |185| 
        and3      r0,*ar0,r0            ; |185| 
        sti       r0,*ar0               ; |185| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	46
;----------------------------------------------------------------------
; 187 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |187| 
	.line	47
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |188| 
        ldiu      *fp,fp                ; |188| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |188| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	188,000000000h,7


	.sect	 "internal_RAM"

	.global	_Read_I2C
	.sym	_Read_I2C,_Read_I2C,46,2,0
	.func	204
;******************************************************************************
;* FUNCTION NAME: _Read_I2C                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Read_I2C:
;* ar2   assigned to _addr
	.sym	_addr,10,4,17,32
;* r2    assigned to _n
	.sym	_n,2,4,17,32
;* r3    assigned to _p
	.sym	_p,3,28,17,32
	.sym	_addr,1,4,1,32
	.sym	_n,2,4,1,32
	.sym	_p,3,28,1,32
	.sym	_i,4,4,1,32
	.sym	_j,5,4,1,32
	.sym	_dat,6,12,1,32
	.sym	_ack,7,14,1,32
	.sym	_r,8,14,1,32
	.line	1
;----------------------------------------------------------------------
; 204 | BOOL Read_I2C(int addr, int n, unsigned char* p)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 206 | int i,j;                        /* byte counter; not used */           
; 207 | unsigned char dat;      /* address source                 */           
; 208 | BOOL ack;                       /* successful ack?                */   
; 209 | BOOL r;                         /* successful read?               */   
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |205| 
        sti       r2,*+fp(2)            ; |205| 
        sti       ar2,*+fp(1)           ; |205| 
	.line	8
;----------------------------------------------------------------------
; 211 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |211| 
        sti       r0,*+fp(8)            ; |211| 
	.line	9
;----------------------------------------------------------------------
; 212 | I2C_START;                                                             
; 214 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |212| 
        ldiu      4,r0                  ; |212| 
        or3       r0,*ar0,r0            ; |212| 
        sti       r0,*ar0               ; |212| 
        ldiu      1,r0                  ; |212| 
        or3       r0,*ar0,r0            ; |212| 
        sti       r0,*ar0               ; |212| 
        ldiu      8,r0                  ; |212| 
        or3       r0,*ar0,r0            ; |212| 
        sti       r0,*ar0               ; |212| 
        ldiu      2,r0                  ; |212| 
        or3       r0,*ar0,r0            ; |212| 
        sti       r0,*ar0               ; |212| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |212| 
        and3      r0,*ar0,r0            ; |212| 
        sti       r0,*ar0               ; |212| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |212| 
        and3      r0,*ar0,r0            ; |212| 
        sti       r0,*ar0               ; |212| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	13
;----------------------------------------------------------------------
; 216 | dat = addr | 0x01;                              /* address with read bi
;     | t set */                                                               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |216| 
        or        *+fp(1),r0            ; |216| 
        sti       r0,*+fp(6)            ; |216| 
	.line	14
;----------------------------------------------------------------------
; 217 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |217| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |217| 
                                        ; |217| Far Call Occurs
        sti       r0,*+fp(7)            ; |217| 
	.line	16
;----------------------------------------------------------------------
; 219 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |219| 
        bne       L37                   ; |219| 
;*      Branch Occurs to L37            ; |219| 
	.line	18
;----------------------------------------------------------------------
; 221 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |221| 
        sti       r0,*+fp(8)            ; |221| 
	.line	19
;----------------------------------------------------------------------
; 222 | break;                                                                 
;----------------------------------------------------------------------
        bu        L43                   ; |222| 
;*      Branch Occurs to L43            ; |222| 
L37:        
	.line	22
;----------------------------------------------------------------------
; 225 | ack = I2C_TX_BYTE(n);                   /* the number of bytes to read
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(2),ar2           ; |225| 
        ldiu      @CL2,r0               ; |225| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |225| 
                                        ; |225| Far Call Occurs
        sti       r0,*+fp(7)            ; |225| 
	.line	24
;----------------------------------------------------------------------
; 227 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |227| 
        bne       L39                   ; |227| 
;*      Branch Occurs to L39            ; |227| 
	.line	26
;----------------------------------------------------------------------
; 229 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |229| 
        sti       r0,*+fp(8)            ; |229| 
	.line	27
;----------------------------------------------------------------------
; 230 | break;                                                                 
;----------------------------------------------------------------------
        bu        L43                   ; |230| 
;*      Branch Occurs to L43            ; |230| 
L39:        
	.line	30
;----------------------------------------------------------------------
; 233 | for (i=0;i<(n-1);i++)                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |233| 
        sti       r0,*+fp(4)            ; |233| 
        ldiu      1,r0                  ; |233| 
        ldiu      *+fp(4),r1            ; |233| 
        subri     *+fp(2),r0            ; |233| 
        cmpi3     r0,r1                 ; |233| 
        bge       L41                   ; |233| 
;*      Branch Occurs to L41            ; |233| 
L40:        
	.line	31
;----------------------------------------------------------------------
; 234 | I2C_RX_BYTE(&p[i],1);           /* read the bytes */                   
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |234| 
        ldp       @CL3,DP
        addi      *+fp(3),ar2           ; |234| Unsigned
        ldiu      @CL3,r0               ; |234| 
        ldiu      1,r2                  ; |234| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |234| 
                                        ; |234| Far Call Occurs
	.line	30
        ldiu      1,r0                  ; |233| 
        addi      *+fp(4),r0            ; |233| 
        sti       r0,*+fp(4)            ; |233| 
        ldiu      1,r0                  ; |233| 
        ldiu      *+fp(4),r1            ; |233| 
        subri     *+fp(2),r0            ; |233| 
        cmpi3     r0,r1                 ; |233| 
        blt       L40                   ; |233| 
;*      Branch Occurs to L40            ; |233| 
L41:        
	.line	33
;----------------------------------------------------------------------
; 236 | I2C_RX_BYTE(&p[n-1],0);                 /* the final byte to read */   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |236| 
        ldp       @CL3,DP
        addi      *+fp(3),ar2           ; |236| Unsigned
        ldiu      @CL3,r0               ; |236| 
        subi      1,ar2                 ; |236| Unsigned
        ldiu      0,r2                  ; |236| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |236| 
                                        ; |236| Far Call Occurs
	.line	35
;----------------------------------------------------------------------
; 238 | break;                                                                 
;----------------------------------------------------------------------
        bu        L43                   ; |238| 
;*      Branch Occurs to L43            ; |238| 
	.line	36
L43:        
	.line	38
;----------------------------------------------------------------------
; 241 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |241| 
        ldiu      2,r0                  ; |241| 
        or3       r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
        ldiu      254,r0                ; |241| 
        and3      r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |241| 
        or3       r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
        ldiu      247,r0                ; |241| 
        and3      r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |241| 
        or3       r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
        ldiu      253,r0                ; |241| 
        and3      r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	40
;----------------------------------------------------------------------
; 243 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |243| 
	.line	41
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |244| 
        ldiu      *fp,fp                ; |244| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |244| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	244,000000000h,8


	.sect	 ".text"

	.global	_Write_DS1340
	.sym	_Write_DS1340,_Write_DS1340,46,2,0
	.func	260
;******************************************************************************
;* FUNCTION NAME: _Write_DS1340                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_DS1340:
;* ar2   assigned to _addr
	.sym	_addr,10,4,17,32
;* r2    assigned to _n
	.sym	_n,2,4,17,32
;* r3    assigned to _p
	.sym	_p,3,28,17,32
	.sym	_addr,1,4,1,32
	.sym	_n,2,4,1,32
	.sym	_p,3,28,1,32
	.sym	_i,4,4,1,32
	.sym	_dat,5,12,1,32
	.sym	_ack,6,14,1,32
	.sym	_r,7,14,1,32
	.line	1
;----------------------------------------------------------------------
; 260 | BOOL Write_DS1340(int addr, int n, unsigned char* p)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 262 | int i;                          /* byte counter */                     
; 263 | unsigned char dat;      /* RTC Address  */                             
; 264 | BOOL ack;                       /* Error checks */                     
; 265 | BOOL r;                         /* Write success*/                     
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |261| 
        sti       r2,*+fp(2)            ; |261| 
        sti       ar2,*+fp(1)           ; |261| 
	.line	8
;----------------------------------------------------------------------
; 267 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
; 268 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |268| 
        sti       r0,*+fp(7)            ; |268| 
	.line	10
;----------------------------------------------------------------------
; 269 | I2C_START;                                                             
; 271 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |269| 
        ldiu      4,r0                  ; |269| 
        or3       r0,*ar0,r0            ; |269| 
        sti       r0,*ar0               ; |269| 
        ldiu      1,r0                  ; |269| 
        or3       r0,*ar0,r0            ; |269| 
        sti       r0,*ar0               ; |269| 
        ldiu      8,r0                  ; |269| 
        or3       r0,*ar0,r0            ; |269| 
        sti       r0,*ar0               ; |269| 
        ldiu      2,r0                  ; |269| 
        or3       r0,*ar0,r0            ; |269| 
        sti       r0,*ar0               ; |269| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |269| 
        and3      r0,*ar0,r0            ; |269| 
        sti       r0,*ar0               ; |269| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |269| 
        and3      r0,*ar0,r0            ; |269| 
        sti       r0,*ar0               ; |269| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	14
;----------------------------------------------------------------------
; 273 | dat = RTC_ADDR;                                         /* address with
;     | out read bit set */                                                    
;----------------------------------------------------------------------
        ldiu      208,r0                ; |273| 
        sti       r0,*+fp(5)            ; |273| 
	.line	15
;----------------------------------------------------------------------
; 274 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |274| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |274| 
                                        ; |274| Far Call Occurs
        sti       r0,*+fp(6)            ; |274| 
	.line	17
;----------------------------------------------------------------------
; 276 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |276| 
        bne       L48                   ; |276| 
;*      Branch Occurs to L48            ; |276| 
	.line	19
;----------------------------------------------------------------------
; 278 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |278| 
        sti       r0,*+fp(7)            ; |278| 
	.line	20
;----------------------------------------------------------------------
; 279 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56                   ; |279| 
;*      Branch Occurs to L56            ; |279| 
L48:        
	.line	23
;----------------------------------------------------------------------
; 282 | ack = I2C_TX_BYTE(addr);                        /* set the pointer */  
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(1),ar2           ; |282| 
        ldiu      @CL2,r0               ; |282| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |282| 
                                        ; |282| Far Call Occurs
        sti       r0,*+fp(6)            ; |282| 
	.line	25
;----------------------------------------------------------------------
; 284 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |284| 
        bne       L50                   ; |284| 
;*      Branch Occurs to L50            ; |284| 
	.line	27
;----------------------------------------------------------------------
; 286 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |286| 
        sti       r0,*+fp(7)            ; |286| 
	.line	28
;----------------------------------------------------------------------
; 287 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56                   ; |287| 
;*      Branch Occurs to L56            ; |287| 
L50:        
	.line	31
;----------------------------------------------------------------------
; 290 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |290| 
        sti       r0,*+fp(4)            ; |290| 
        cmpi      *+fp(2),r0            ; |290| 
        bge       L56                   ; |290| 
;*      Branch Occurs to L56            ; |290| 
L51:        
	.line	33
;----------------------------------------------------------------------
; 292 | ack = I2C_TX_BYTE(p[i]);                /* write the bytes */          
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(3),ir0           ; |292| 
        ldiu      *+fp(4),ar0           ; |292| 
        ldiu      @CL2,r0               ; |292| 
        ldiu      *+ar0(ir0),ar2        ; |292| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |292| 
                                        ; |292| Far Call Occurs
        sti       r0,*+fp(6)            ; |292| 
	.line	35
;----------------------------------------------------------------------
; 294 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |294| 
        bne       L53                   ; |294| 
;*      Branch Occurs to L53            ; |294| 
	.line	37
;----------------------------------------------------------------------
; 296 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |296| 
        sti       r0,*+fp(7)            ; |296| 
	.line	38
;----------------------------------------------------------------------
; 297 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56                   ; |297| 
;*      Branch Occurs to L56            ; |297| 
L53:        
	.line	31
        ldiu      1,r0                  ; |290| 
        addi      *+fp(4),r0            ; |290| 
        sti       r0,*+fp(4)            ; |290| 
        cmpi      *+fp(2),r0            ; |290| 
        blt       L51                   ; |290| 
;*      Branch Occurs to L51            ; |290| 
	.line	42
;----------------------------------------------------------------------
; 301 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56                   ; |301| 
;*      Branch Occurs to L56            ; |301| 
	.line	43
L56:        
	.line	45
;----------------------------------------------------------------------
; 304 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |304| 
        ldiu      2,r0                  ; |304| 
        or3       r0,*ar0,r0            ; |304| 
        sti       r0,*ar0               ; |304| 
        ldiu      254,r0                ; |304| 
        and3      r0,*ar0,r0            ; |304| 
        sti       r0,*ar0               ; |304| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |304| 
        or3       r0,*ar0,r0            ; |304| 
        sti       r0,*ar0               ; |304| 
        ldiu      247,r0                ; |304| 
        and3      r0,*ar0,r0            ; |304| 
        sti       r0,*ar0               ; |304| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |304| 
        or3       r0,*ar0,r0            ; |304| 
        sti       r0,*ar0               ; |304| 
        ldiu      253,r0                ; |304| 
        and3      r0,*ar0,r0            ; |304| 
        sti       r0,*ar0               ; |304| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	47
;----------------------------------------------------------------------
; 306 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	48
;----------------------------------------------------------------------
; 307 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |307| 
	.line	49
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |308| 
        ldiu      *fp,fp                ; |308| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |308| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	308,000000000h,7


	.sect	 ".text"

	.global	_Read_DS1340
	.sym	_Read_DS1340,_Read_DS1340,46,2,0
	.func	324
;******************************************************************************
;* FUNCTION NAME: _Read_DS1340                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Read_DS1340:
;* ar2   assigned to _addr
	.sym	_addr,10,4,17,32
;* r2    assigned to _n
	.sym	_n,2,4,17,32
;* r3    assigned to _p
	.sym	_p,3,28,17,32
	.sym	_addr,1,4,1,32
	.sym	_n,2,4,1,32
	.sym	_p,3,28,1,32
	.sym	_i,4,4,1,32
	.sym	_j,5,4,1,32
	.sym	_dat,6,12,1,32
	.sym	_ack,7,14,1,32
	.sym	_r,8,14,1,32
	.line	1
;----------------------------------------------------------------------
; 324 | BOOL Read_DS1340(int addr, int n, unsigned char* p)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 326 | int i,j;                        /* byte counter         */             
; 327 | unsigned char dat;      /* RTC address          */                     
; 328 | BOOL ack;                       /* Check errors         */             
; 329 | BOOL r;                         /* Check opperation */                 
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |325| 
        sti       r2,*+fp(2)            ; |325| 
        sti       ar2,*+fp(1)           ; |325| 
	.line	8
;----------------------------------------------------------------------
; 331 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
; 332 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |332| 
        sti       r0,*+fp(8)            ; |332| 
	.line	11
;----------------------------------------------------------------------
; 334 | if (!Write_DS1340(addr, 0, p))                                         
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |334| 
        ldiu      0,r2                  ; |334| 
        callu     r0                    ; far call to _Write_DS1340	; |334| 
                                        ; |334| Far Call Occurs
        cmpi      0,r0                  ; |334| 
        bne       L61                   ; |334| 
;*      Branch Occurs to L61            ; |334| 
	.line	13
;----------------------------------------------------------------------
; 336 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	14
;----------------------------------------------------------------------
; 337 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L70                   ; |337| 
	nop
	nop
        ldiu      0,r0                  ; |337| 
;*      Branch Occurs to L70            ; |337| 
L61:        
	.line	17
;----------------------------------------------------------------------
; 340 | I2C_START;                                                             
; 342 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |340| 
        ldiu      4,r0                  ; |340| 
        or3       r0,*ar0,r0            ; |340| 
        sti       r0,*ar0               ; |340| 
        ldiu      1,r0                  ; |340| 
        or3       r0,*ar0,r0            ; |340| 
        sti       r0,*ar0               ; |340| 
        ldiu      8,r0                  ; |340| 
        or3       r0,*ar0,r0            ; |340| 
        sti       r0,*ar0               ; |340| 
        ldiu      2,r0                  ; |340| 
        or3       r0,*ar0,r0            ; |340| 
        sti       r0,*ar0               ; |340| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |340| 
        and3      r0,*ar0,r0            ; |340| 
        sti       r0,*ar0               ; |340| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |340| 
        and3      r0,*ar0,r0            ; |340| 
        sti       r0,*ar0               ; |340| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	21
;----------------------------------------------------------------------
; 344 | dat = RTC_ADDR | 0x01;                          /* address with read bi
;     | t set */                                                               
;----------------------------------------------------------------------
        ldiu      209,r0                ; |344| 
        sti       r0,*+fp(6)            ; |344| 
	.line	22
;----------------------------------------------------------------------
; 345 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |345| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |345| 
                                        ; |345| Far Call Occurs
        sti       r0,*+fp(7)            ; |345| 
	.line	24
;----------------------------------------------------------------------
; 347 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |347| 
        bne       L63                   ; |347| 
;*      Branch Occurs to L63            ; |347| 
	.line	26
;----------------------------------------------------------------------
; 349 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |349| 
        sti       r0,*+fp(8)            ; |349| 
	.line	27
;----------------------------------------------------------------------
; 350 | break;                                                                 
;----------------------------------------------------------------------
        bu        L69                   ; |350| 
;*      Branch Occurs to L69            ; |350| 
L63:        
	.line	30
;----------------------------------------------------------------------
; 353 | ack = TRUE;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |353| 
        sti       r0,*+fp(7)            ; |353| 
	.line	32
;----------------------------------------------------------------------
; 355 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |355| 
        sti       r0,*+fp(4)            ; |355| 
        cmpi      *+fp(2),r0            ; |355| 
        bge       L69                   ; |355| 
;*      Branch Occurs to L69            ; |355| 
L64:        
	.line	34
;----------------------------------------------------------------------
; 357 | if (i==(n-1))                           /* size error */               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |357| 
        ldiu      *+fp(4),r1            ; |357| 
        subri     *+fp(2),r0            ; |357| 
        cmpi3     r0,r1                 ; |357| 
        bne       L66                   ; |357| 
;*      Branch Occurs to L66            ; |357| 
	.line	35
;----------------------------------------------------------------------
; 358 | ack = FALSE;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |358| 
        sti       r0,*+fp(7)            ; |358| 
L66:        
	.line	37
;----------------------------------------------------------------------
; 360 | I2C_RX_BYTE(&p[i],ack);         /* read the bytes */                   
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |360| 
        ldp       @CL3,DP
        ldiu      *+fp(7),r2            ; |360| 
        addi      *+fp(3),ar2           ; |360| Unsigned
        ldiu      @CL3,r0               ; |360| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |360| 
                                        ; |360| Far Call Occurs
	.line	32
        ldiu      1,r0                  ; |355| 
        addi      *+fp(4),r0            ; |355| 
        sti       r0,*+fp(4)            ; |355| 
        cmpi      *+fp(2),r0            ; |355| 
        blt       L64                   ; |355| 
;*      Branch Occurs to L64            ; |355| 
	.line	40
;----------------------------------------------------------------------
; 363 | break;                                                                 
;----------------------------------------------------------------------
        bu        L69                   ; |363| 
;*      Branch Occurs to L69            ; |363| 
	.line	41
L69:        
	.line	43
;----------------------------------------------------------------------
; 366 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |366| 
        ldiu      2,r0                  ; |366| 
        or3       r0,*ar0,r0            ; |366| 
        sti       r0,*ar0               ; |366| 
        ldiu      254,r0                ; |366| 
        and3      r0,*ar0,r0            ; |366| 
        sti       r0,*ar0               ; |366| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |366| 
        or3       r0,*ar0,r0            ; |366| 
        sti       r0,*ar0               ; |366| 
        ldiu      247,r0                ; |366| 
        and3      r0,*ar0,r0            ; |366| 
        sti       r0,*ar0               ; |366| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |366| 
        or3       r0,*ar0,r0            ; |366| 
        sti       r0,*ar0               ; |366| 
        ldiu      253,r0                ; |366| 
        and3      r0,*ar0,r0            ; |366| 
        sti       r0,*ar0               ; |366| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	44
;----------------------------------------------------------------------
; 367 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	46
;----------------------------------------------------------------------
; 369 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |369| 
L70:        
	.line	47
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |370| 
        ldiu      *fp,fp                ; |370| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |370| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	370,000000000h,8


	.sect	 "initialization"

	.global	_RTC_setup
	.sym	_RTC_setup,_RTC_setup,46,2,0
	.func	384
;******************************************************************************
;* FUNCTION NAME: _RTC_setup                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_RTC_setup:
	.sym	_r,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 384 | BOOL RTC_setup(void)                                                   
; 386 | BOOL r;         /* check operation */                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 388 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	6
;----------------------------------------------------------------------
; 389 | r = Read_DS1340(8,10,RTC);                                             
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |389| 
        ldiu      8,ar2                 ; |389| 
        ldp       @CL5,DP
        ldiu      10,r2                 ; |389| 
        ldiu      @CL5,r3               ; |389| 
        callu     r0                    ; far call to _Read_DS1340	; |389| 
                                        ; |389| Far Call Occurs
        sti       r0,*+fp(1)            ; |389| 
	.line	8
;----------------------------------------------------------------------
; 391 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |391| 
        bne       L74                   ; |391| 
;*      Branch Occurs to L74            ; |391| 
	.line	10
;----------------------------------------------------------------------
; 393 | RTC_PRESENT = FALSE;                                                   
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |393| 
        ldiu      0,r0                  ; |393| 
        sti       r0,*ar0               ; |393| 
	.line	11
;----------------------------------------------------------------------
; 394 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	13
;----------------------------------------------------------------------
; 396 | return r;                                                              
;----------------------------------------------------------------------
        bud       L80                   ; |396| 
	nop
	nop
        ldiu      *+fp(1),r0            ; |396| 
;*      Branch Occurs to L80            ; |396| 
L74:        
	.line	16
;----------------------------------------------------------------------
; 399 | RTC_PRESENT = TRUE;                                                    
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |399| 
        ldiu      1,r0                  ; |399| 
        sti       r0,*ar0               ; |399| 
	.line	18
;----------------------------------------------------------------------
; 401 | if (RTC[1] & 0x80)                                                     
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |401| 
        ldiu      128,r0                ; |401| 
        tstb3     *ar0,r0               ; |401| 
        beq       L76                   ; |401| 
;*      Branch Occurs to L76            ; |401| 
	.line	19
;----------------------------------------------------------------------
; 402 | DIAGNOSTICS[1] |= ERROR2_TIME_RESET;                                   
; 403 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |402| 
        ldiu      1,r0                  ; |402| 
        or        *+ar0(1),r0           ; |402| 
        sti       r0,*+ar0(1)           ; |402| 
        bu        L77                   ; |383| 
;*      Branch Occurs to L77            ; |383| 
L76:        
	.line	21
;----------------------------------------------------------------------
; 404 | DIAGNOSTICS[1] &= 0xFFFFFFFF ^ ERROR2_TIME_RESET;                      
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |404| 
        ldiu      *+ar0(1),r0           ; |404| 
        andn      1,r0                  ; |404| 
        sti       r0,*+ar0(1)           ; |404| 
L77:        
	.line	23
;----------------------------------------------------------------------
; 406 | RTC[9] |= 0x40; /* enable FT output */                                 
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |406| 
        ldiu      64,r0                 ; |406| 
        or        *+ar0(9),r0           ; |406| 
        sti       r0,*+ar0(9)           ; |406| 
	.line	25
;----------------------------------------------------------------------
; 408 | Write_DS1340(8, 2, &RTC[0]);                                           
;----------------------------------------------------------------------
        ldiu      @CL5,r3               ; |408| 
        ldp       @CL4,DP
        ldiu      8,ar2                 ; |408| 
        ldiu      @CL4,r0               ; |408| 
        ldiu      2,r2                  ; |408| 
        callu     r0                    ; far call to _Write_DS1340	; |408| 
                                        ; |408| Far Call Occurs
	.line	26
;----------------------------------------------------------------------
; 409 | Write_DS1340(7, 1, &RTC[9]);                                           
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r3              ; |409| 
        ldp       @CL4,DP
        ldiu      7,ar2                 ; |409| 
        ldiu      @CL4,r0               ; |409| 
        ldiu      1,r2                  ; |409| 
        callu     r0                    ; far call to _Write_DS1340	; |409| 
                                        ; |409| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 411 | if (RTC[2]&0x80)                                                       
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |411| 
        ldiu      128,r0                ; |411| 
        tstb3     *ar0,r0               ; |411| 
        beq       L79                   ; |411| 
;*      Branch Occurs to L79            ; |411| 
	.line	30
;----------------------------------------------------------------------
; 413 | RTC[2] &= 0x3F;                                                        
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |413| 
        ldiu      63,r0                 ; |413| 
        and       *+ar0(2),r0           ; |413| 
        sti       r0,*+ar0(2)           ; |413| 
	.line	32
;----------------------------------------------------------------------
; 415 | Write_DS1340(0, 1, &RTC[2]);                                           
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,r3              ; |415| 
        ldp       @CL4,DP
        ldiu      0,ar2                 ; |415| 
        ldiu      @CL4,r0               ; |415| 
        ldiu      1,r2                  ; |415| 
        callu     r0                    ; far call to _Write_DS1340	; |415| 
                                        ; |415| Far Call Occurs
L79:        
	.line	35
;----------------------------------------------------------------------
; 418 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	36
;----------------------------------------------------------------------
; 419 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |419| 
L80:        
	.line	37
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |420| 
        ldiu      *fp,fp                ; |420| 
                                        ; Unallocate the Frame
        subi      3,sp                  ; |420| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	420,000000000h,1


	.sect	 "internal_RAM"

	.global	_Write_MC24C02_Record
	.sym	_Write_MC24C02_Record,_Write_MC24C02_Record,46,2,0
	.func	435
;******************************************************************************
;* FUNCTION NAME: _Write_MC24C02_Record                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_MC24C02_Record:
;* ar2   assigned to _addr
	.sym	_addr,10,4,17,32
;* r2    assigned to _p
	.sym	_p,2,28,17,32
	.sym	_addr,1,4,1,32
	.sym	_p,2,28,1,32
	.sym	_i,3,4,1,32
	.sym	_j,4,4,1,32
	.sym	_k,5,4,1,32
	.sym	_r,6,4,1,32
	.sym	_ack,7,14,1,32
	.line	1
;----------------------------------------------------------------------
; 435 | BOOL Write_MC24C02_Record(int addr, unsigned char* p)                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 437 | int i,j,k,r;    /* counter; counter; address error accumulator; return
;     |  */                                                                    
; 438 | BOOL ack;               /* transfer check
;     |                                                  */                    
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |436| 
        sti       ar2,*+fp(1)           ; |436| 
	.line	6
;----------------------------------------------------------------------
; 440 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
; 442 | for (i=0;i<256;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |442| 
        sti       r0,*+fp(3)            ; |442| 
        cmpi      256,r0                ; |442| 
        ldiu      255,r1                ; |443| 
        bge       L84                   ; |442| 
;*      Branch Occurs to L84            ; |442| 
L83:        
	.line	9
;----------------------------------------------------------------------
; 443 | p[i] &= 0xFF;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |443| 
        ldiu      *+fp(3),ar0           ; |443| 
        and3      r1,*+ar0(ir0),r0      ; |443| 
        sti       r0,*+ar0(ir0)         ; |443| 
	.line	8
        ldiu      1,r0                  ; |442| 
        addi      *+fp(3),r0            ; |442| 
        sti       r0,*+fp(3)            ; |442| 
        cmpi      256,r0                ; |442| 
        blt       L83                   ; |442| 
;*      Branch Occurs to L83            ; |442| 
L84:        
	.line	11
;----------------------------------------------------------------------
; 445 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |445| 
        sti       r0,*+fp(6)            ; |445| 
	.line	13
;----------------------------------------------------------------------
; 447 | for(j=0;j<16;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |447| 
        sti       r0,*+fp(4)            ; |447| 
        cmpi      16,r0                 ; |447| 
        bge       L101                  ; |447| 
;*      Branch Occurs to L101           ; |447| 
L85:        
	.line	15
;----------------------------------------------------------------------
; 449 | k = 0;                                                                 
; 450 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |449| 
        sti       r0,*+fp(5)            ; |449| 
L86:        
	.line	18
;----------------------------------------------------------------------
; 452 | I2C_START;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |452| 
        ldiu      4,r0                  ; |452| 
        or3       r0,*ar0,r0            ; |452| 
        sti       r0,*ar0               ; |452| 
        ldiu      1,r0                  ; |452| 
        or3       r0,*ar0,r0            ; |452| 
        sti       r0,*ar0               ; |452| 
        ldiu      8,r0                  ; |452| 
        or3       r0,*ar0,r0            ; |452| 
        sti       r0,*ar0               ; |452| 
        ldiu      2,r0                  ; |452| 
        or3       r0,*ar0,r0            ; |452| 
        sti       r0,*ar0               ; |452| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |452| 
        and3      r0,*ar0,r0            ; |452| 
        sti       r0,*ar0               ; |452| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |452| 
        and3      r0,*ar0,r0            ; |452| 
        sti       r0,*ar0               ; |452| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	19
;----------------------------------------------------------------------
; 453 | ack = I2C_TX_BYTE(addr);                /* address without read bit set
;     |  */                                                                    
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |453| 
        ldiu      *+fp(1),ar2           ; |453| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |453| 
                                        ; |453| Far Call Occurs
        sti       r0,*+fp(7)            ; |453| 
	.line	21
;----------------------------------------------------------------------
; 455 | if (!ack)                                               /* address erro
;     | r */                                                                   
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |455| 
        bne       L92                   ; |455| 
;*      Branch Occurs to L92            ; |455| 
	.line	22
;----------------------------------------------------------------------
; 456 | k++;                                                                   
; 457 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |456| 
        addi      *+fp(5),r0            ; |456| 
        sti       r0,*+fp(5)            ; |456| 
        bu        L89                   ; |434| 
;*      Branch Occurs to L89            ; |434| 
	.line	24
;----------------------------------------------------------------------
; 458 | break;                                          /* address OK, continue
;     |  */                                                                    
;----------------------------------------------------------------------
L89:        
	.line	26
;----------------------------------------------------------------------
; 460 | if (k>=50)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |460| 
        cmpi      50,r0                 ; |460| 
        blt       L91                   ; |460| 
;*      Branch Occurs to L91            ; |460| 
	.line	28
;----------------------------------------------------------------------
; 462 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |462| 
        sti       r0,*+fp(6)            ; |462| 
	.line	29
;----------------------------------------------------------------------
; 463 | break;                                                                 
;----------------------------------------------------------------------
        bu        L92                   ; |463| 
;*      Branch Occurs to L92            ; |463| 
L91:        
	.line	32
;----------------------------------------------------------------------
; 466 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |466| 
        ldiu      2,r0                  ; |466| 
        or3       r0,*ar0,r0            ; |466| 
        sti       r0,*ar0               ; |466| 
        ldiu      254,r0                ; |466| 
        and3      r0,*ar0,r0            ; |466| 
        sti       r0,*ar0               ; |466| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |466| 
        or3       r0,*ar0,r0            ; |466| 
        sti       r0,*ar0               ; |466| 
        ldiu      247,r0                ; |466| 
        and3      r0,*ar0,r0            ; |466| 
        sti       r0,*ar0               ; |466| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |466| 
        or3       r0,*ar0,r0            ; |466| 
        sti       r0,*ar0               ; |466| 
        ldiu      253,r0                ; |466| 
        and3      r0,*ar0,r0            ; |466| 
        sti       r0,*ar0               ; |466| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	33
        bu        L86                   ; |467| 
;*      Branch Occurs to L86            ; |467| 
L92:        
	.line	35
;----------------------------------------------------------------------
; 469 | if (r==FALSE)                                           /* address fail
;     | ure, return */                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |469| 
        cmpi      0,r0                  ; |469| 
        beq       L101                  ; |469| 
;*      Branch Occurs to L101           ; |469| 
	.line	36
;----------------------------------------------------------------------
; 470 | break;                                                                 
;----------------------------------------------------------------------
	.line	38
;----------------------------------------------------------------------
; 472 | ack = I2C_TX_BYTE(j*16);                        /* set the pointer */  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |472| 
        ldp       @CL2,DP
        ash       4,ar2                 ; |472| 
        ldiu      @CL2,r0               ; |472| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |472| 
                                        ; |472| Far Call Occurs
        sti       r0,*+fp(7)            ; |472| 
	.line	40
;----------------------------------------------------------------------
; 474 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |474| 
        bne       L95                   ; |474| 
;*      Branch Occurs to L95            ; |474| 
	.line	42
;----------------------------------------------------------------------
; 476 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |476| 
        sti       r0,*+fp(6)            ; |476| 
	.line	43
;----------------------------------------------------------------------
; 477 | break;                                                                 
;----------------------------------------------------------------------
        bu        L101                  ; |477| 
;*      Branch Occurs to L101           ; |477| 
L95:        
	.line	46
;----------------------------------------------------------------------
; 480 | for(i=0;i<16;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |480| 
        sti       r0,*+fp(3)            ; |480| 
        cmpi      16,r0                 ; |480| 
        bge       L99                   ; |480| 
;*      Branch Occurs to L99            ; |480| 
L96:        
	.line	48
;----------------------------------------------------------------------
; 482 | ack = I2C_TX_BYTE(p[j*16+i]);                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),ir0           ; |482| 
        ldp       @CL2,DP
        ash       4,ir0                 ; |482| 
        ldiu      *+fp(3),ar0           ; |482| 
        addi      *+fp(2),ir0           ; |482| Unsigned
        ldiu      @CL2,r0               ; |482| 
        ldiu      *+ar0(ir0),ar2        ; |482| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |482| 
                                        ; |482| Far Call Occurs
        sti       r0,*+fp(7)            ; |482| 
	.line	50
;----------------------------------------------------------------------
; 484 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |484| 
        bne       L98                   ; |484| 
;*      Branch Occurs to L98            ; |484| 
	.line	52
;----------------------------------------------------------------------
; 486 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |486| 
        sti       r0,*+fp(6)            ; |486| 
	.line	53
;----------------------------------------------------------------------
; 487 | break;                                                                 
;----------------------------------------------------------------------
        bu        L99                   ; |487| 
;*      Branch Occurs to L99            ; |487| 
L98:        
	.line	46
        ldiu      1,r0                  ; |480| 
        addi      *+fp(3),r0            ; |480| 
        sti       r0,*+fp(3)            ; |480| 
        cmpi      16,r0                 ; |480| 
        blt       L96                   ; |480| 
;*      Branch Occurs to L96            ; |480| 
L99:        
	.line	57
;----------------------------------------------------------------------
; 491 | if (r==FALSE)                                           /* transfer fai
;     | lure, return */                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |491| 
        cmpi      0,r0                  ; |491| 
        beq       L101                  ; |491| 
;*      Branch Occurs to L101           ; |491| 
	.line	58
;----------------------------------------------------------------------
; 492 | break;                                                                 
;----------------------------------------------------------------------
	.line	60
;----------------------------------------------------------------------
; 494 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |494| 
        ldiu      2,r0                  ; |494| 
        or3       r0,*ar0,r0            ; |494| 
        sti       r0,*ar0               ; |494| 
        ldiu      254,r0                ; |494| 
        and3      r0,*ar0,r0            ; |494| 
        sti       r0,*ar0               ; |494| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |494| 
        or3       r0,*ar0,r0            ; |494| 
        sti       r0,*ar0               ; |494| 
        ldiu      247,r0                ; |494| 
        and3      r0,*ar0,r0            ; |494| 
        sti       r0,*ar0               ; |494| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |494| 
        or3       r0,*ar0,r0            ; |494| 
        sti       r0,*ar0               ; |494| 
        ldiu      253,r0                ; |494| 
        and3      r0,*ar0,r0            ; |494| 
        sti       r0,*ar0               ; |494| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	13
        ldiu      1,r0                  ; |447| 
        addi      *+fp(4),r0            ; |447| 
        sti       r0,*+fp(4)            ; |447| 
        cmpi      16,r0                 ; |447| 
        blt       L85                   ; |447| 
;*      Branch Occurs to L85            ; |447| 
L101:        
	.line	63
;----------------------------------------------------------------------
; 497 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |497| 
        ldiu      2,r0                  ; |497| 
        or3       r0,*ar0,r0            ; |497| 
        sti       r0,*ar0               ; |497| 
        ldiu      254,r0                ; |497| 
        and3      r0,*ar0,r0            ; |497| 
        sti       r0,*ar0               ; |497| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |497| 
        or3       r0,*ar0,r0            ; |497| 
        sti       r0,*ar0               ; |497| 
        ldiu      247,r0                ; |497| 
        and3      r0,*ar0,r0            ; |497| 
        sti       r0,*ar0               ; |497| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |497| 
        or3       r0,*ar0,r0            ; |497| 
        sti       r0,*ar0               ; |497| 
        ldiu      253,r0                ; |497| 
        and3      r0,*ar0,r0            ; |497| 
        sti       r0,*ar0               ; |497| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	64
;----------------------------------------------------------------------
; 498 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	66
;----------------------------------------------------------------------
; 500 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |500| 
	.line	67
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |501| 
        ldiu      *fp,fp                ; |501| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |501| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	501,000000000h,7


	.sect	 "internal_RAM"

	.global	_Read_MC24C02_Record
	.sym	_Read_MC24C02_Record,_Read_MC24C02_Record,46,2,0
	.func	516
;******************************************************************************
;* FUNCTION NAME: _Read_MC24C02_Record                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Read_MC24C02_Record:
;* ar2   assigned to _addr
	.sym	_addr,10,4,17,32
;* r2    assigned to _p
	.sym	_p,2,28,17,32
	.sym	_addr,1,4,1,32
	.sym	_p,2,28,1,32
	.sym	_i,3,4,1,32
	.sym	_j,4,4,1,32
	.sym	_k,5,4,1,32
	.sym	_r,6,4,1,32
	.sym	_ack,7,14,1,32
	.line	1
;----------------------------------------------------------------------
; 516 | BOOL Read_MC24C02_Record(int addr, unsigned char* p)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 518 | int i,j,k,r;    /* byte counter; counter; address error accumulator; re
;     | turn */                                                                
; 519 | BOOL ack;               /* check I2C operations
;     |                                                  */                    
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |517| 
        sti       ar2,*+fp(1)           ; |517| 
	.line	6
;----------------------------------------------------------------------
; 521 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 522 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |522| 
        sti       r0,*+fp(6)            ; |522| 
	.line	9
;----------------------------------------------------------------------
; 524 | for(j=0;j<16;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |524| 
        sti       r0,*+fp(4)            ; |524| 
        cmpi      16,r0                 ; |524| 
        bge       L120                  ; |524| 
;*      Branch Occurs to L120           ; |524| 
L105:        
	.line	11
;----------------------------------------------------------------------
; 526 | k = 0;                                                                 
; 528 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |526| 
        sti       r0,*+fp(5)            ; |526| 
L106:        
	.line	15
;----------------------------------------------------------------------
; 530 | I2C_START;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |530| 
        ldiu      4,r0                  ; |530| 
        or3       r0,*ar0,r0            ; |530| 
        sti       r0,*ar0               ; |530| 
        ldiu      1,r0                  ; |530| 
        or3       r0,*ar0,r0            ; |530| 
        sti       r0,*ar0               ; |530| 
        ldiu      8,r0                  ; |530| 
        or3       r0,*ar0,r0            ; |530| 
        sti       r0,*ar0               ; |530| 
        ldiu      2,r0                  ; |530| 
        or3       r0,*ar0,r0            ; |530| 
        sti       r0,*ar0               ; |530| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |530| 
        and3      r0,*ar0,r0            ; |530| 
        sti       r0,*ar0               ; |530| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |530| 
        and3      r0,*ar0,r0            ; |530| 
        sti       r0,*ar0               ; |530| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	16
;----------------------------------------------------------------------
; 531 | ack = I2C_TX_BYTE(addr);                /* address without read bit set
;     |  */                                                                    
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |531| 
        ldiu      *+fp(1),ar2           ; |531| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |531| 
                                        ; |531| Far Call Occurs
        sti       r0,*+fp(7)            ; |531| 
	.line	18
;----------------------------------------------------------------------
; 533 | if (!ack)                                               /* accumulate a
;     | ddress errrors   */                                                    
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |533| 
        bne       L112                  ; |533| 
;*      Branch Occurs to L112           ; |533| 
	.line	19
;----------------------------------------------------------------------
; 534 | k++;                                                                   
; 535 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |534| 
        addi      *+fp(5),r0            ; |534| 
        sti       r0,*+fp(5)            ; |534| 
        bu        L109                  ; |515| 
;*      Branch Occurs to L109           ; |515| 
	.line	21
;----------------------------------------------------------------------
; 536 | break;                                                                 
;----------------------------------------------------------------------
L109:        
	.line	23
;----------------------------------------------------------------------
; 538 | if (k>=50)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |538| 
        cmpi      50,r0                 ; |538| 
        blt       L111                  ; |538| 
;*      Branch Occurs to L111           ; |538| 
	.line	25
;----------------------------------------------------------------------
; 540 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |540| 
        sti       r0,*+fp(6)            ; |540| 
	.line	26
;----------------------------------------------------------------------
; 541 | break;                                                                 
;----------------------------------------------------------------------
        bu        L112                  ; |541| 
;*      Branch Occurs to L112           ; |541| 
L111:        
	.line	29
;----------------------------------------------------------------------
; 544 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |544| 
        ldiu      2,r0                  ; |544| 
        or3       r0,*ar0,r0            ; |544| 
        sti       r0,*ar0               ; |544| 
        ldiu      254,r0                ; |544| 
        and3      r0,*ar0,r0            ; |544| 
        sti       r0,*ar0               ; |544| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |544| 
        or3       r0,*ar0,r0            ; |544| 
        sti       r0,*ar0               ; |544| 
        ldiu      247,r0                ; |544| 
        and3      r0,*ar0,r0            ; |544| 
        sti       r0,*ar0               ; |544| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |544| 
        or3       r0,*ar0,r0            ; |544| 
        sti       r0,*ar0               ; |544| 
        ldiu      253,r0                ; |544| 
        and3      r0,*ar0,r0            ; |544| 
        sti       r0,*ar0               ; |544| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	30
        bu        L106                  ; |545| 
;*      Branch Occurs to L106           ; |545| 
L112:        
	.line	32
;----------------------------------------------------------------------
; 547 | if (r==FALSE)                                           /* address fail
;     | ure, return */                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |547| 
        cmpi      0,r0                  ; |547| 
        beq       L120                  ; |547| 
;*      Branch Occurs to L120           ; |547| 
	.line	33
;----------------------------------------------------------------------
; 548 | break;                                                                 
;----------------------------------------------------------------------
	.line	35
;----------------------------------------------------------------------
; 550 | ack = I2C_TX_BYTE(j*16);                        /* set the pointer */  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |550| 
        ldp       @CL2,DP
        ash       4,ar2                 ; |550| 
        ldiu      @CL2,r0               ; |550| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |550| 
                                        ; |550| Far Call Occurs
        sti       r0,*+fp(7)            ; |550| 
	.line	37
;----------------------------------------------------------------------
; 552 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |552| 
        bne       L115                  ; |552| 
;*      Branch Occurs to L115           ; |552| 
	.line	39
;----------------------------------------------------------------------
; 554 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |554| 
        sti       r0,*+fp(6)            ; |554| 
	.line	40
;----------------------------------------------------------------------
; 555 | break;                                                                 
;----------------------------------------------------------------------
        bu        L120                  ; |555| 
;*      Branch Occurs to L120           ; |555| 
L115:        
	.line	43
;----------------------------------------------------------------------
; 558 | I2C_START;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |558| 
        ldiu      4,r0                  ; |558| 
        or3       r0,*ar0,r0            ; |558| 
        sti       r0,*ar0               ; |558| 
        ldiu      1,r0                  ; |558| 
        or3       r0,*ar0,r0            ; |558| 
        sti       r0,*ar0               ; |558| 
        ldiu      8,r0                  ; |558| 
        or3       r0,*ar0,r0            ; |558| 
        sti       r0,*ar0               ; |558| 
        ldiu      2,r0                  ; |558| 
        or3       r0,*ar0,r0            ; |558| 
        sti       r0,*ar0               ; |558| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |558| 
        and3      r0,*ar0,r0            ; |558| 
        sti       r0,*ar0               ; |558| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |558| 
        and3      r0,*ar0,r0            ; |558| 
        sti       r0,*ar0               ; |558| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	44
;----------------------------------------------------------------------
; 559 | ack = I2C_TX_BYTE(addr|0x01);           /* address with read bit set */
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      1,ar2                 ; |559| 
        ldiu      @CL2,r0               ; |559| 
        or        *+fp(1),ar2           ; |559| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |559| 
                                        ; |559| Far Call Occurs
        sti       r0,*+fp(7)            ; |559| 
	.line	46
;----------------------------------------------------------------------
; 561 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |561| 
        bne       L117                  ; |561| 
;*      Branch Occurs to L117           ; |561| 
	.line	48
;----------------------------------------------------------------------
; 563 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |563| 
        sti       r0,*+fp(6)            ; |563| 
	.line	49
;----------------------------------------------------------------------
; 564 | break;                                                                 
;----------------------------------------------------------------------
        bu        L120                  ; |564| 
;*      Branch Occurs to L120           ; |564| 
L117:        
	.line	52
;----------------------------------------------------------------------
; 567 | for (i=0;i<15;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |567| 
        sti       r0,*+fp(3)            ; |567| 
        cmpi      15,r0                 ; |567| 
        bge       L119                  ; |567| 
;*      Branch Occurs to L119           ; |567| 
L118:        
	.line	53
;----------------------------------------------------------------------
; 568 | I2C_RX_BYTE(&p[j*16+i],1);              /* read the bytes , WITH ACK*/ 
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |568| 
        ldp       @CL3,DP
        ash       4,ar2                 ; |568| 
        addi      *+fp(2),ar2           ; |568| Unsigned
        ldiu      @CL3,r0               ; |568| 
        addi      *+fp(3),ar2           ; |568| Unsigned
        ldiu      1,r2                  ; |568| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |568| 
                                        ; |568| Far Call Occurs
	.line	52
        ldiu      1,r0                  ; |567| 
        addi      *+fp(3),r0            ; |567| 
        sti       r0,*+fp(3)            ; |567| 
        cmpi      15,r0                 ; |567| 
        blt       L118                  ; |567| 
;*      Branch Occurs to L118           ; |567| 
L119:        
	.line	55
;----------------------------------------------------------------------
; 570 | I2C_RX_BYTE(&p[j*16+i],0);                      /* the final byte to re
;     | ad, WITH NO ACK */                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |570| 
        ldp       @CL3,DP
        ash       4,ar2                 ; |570| 
        addi      *+fp(2),ar2           ; |570| Unsigned
        ldiu      @CL3,r0               ; |570| 
        addi      *+fp(3),ar2           ; |570| Unsigned
        ldiu      0,r2                  ; |570| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |570| 
                                        ; |570| Far Call Occurs
	.line	57
;----------------------------------------------------------------------
; 572 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |572| 
        ldiu      2,r0                  ; |572| 
        or3       r0,*ar0,r0            ; |572| 
        sti       r0,*ar0               ; |572| 
        ldiu      254,r0                ; |572| 
        and3      r0,*ar0,r0            ; |572| 
        sti       r0,*ar0               ; |572| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |572| 
        or3       r0,*ar0,r0            ; |572| 
        sti       r0,*ar0               ; |572| 
        ldiu      247,r0                ; |572| 
        and3      r0,*ar0,r0            ; |572| 
        sti       r0,*ar0               ; |572| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |572| 
        or3       r0,*ar0,r0            ; |572| 
        sti       r0,*ar0               ; |572| 
        ldiu      253,r0                ; |572| 
        and3      r0,*ar0,r0            ; |572| 
        sti       r0,*ar0               ; |572| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	9
        ldiu      1,r0                  ; |524| 
        addi      *+fp(4),r0            ; |524| 
        sti       r0,*+fp(4)            ; |524| 
        cmpi      16,r0                 ; |524| 
        blt       L105                  ; |524| 
;*      Branch Occurs to L105           ; |524| 
L120:        
	.line	60
;----------------------------------------------------------------------
; 575 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |575| 
        ldiu      2,r0                  ; |575| 
        or3       r0,*ar0,r0            ; |575| 
        sti       r0,*ar0               ; |575| 
        ldiu      254,r0                ; |575| 
        and3      r0,*ar0,r0            ; |575| 
        sti       r0,*ar0               ; |575| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |575| 
        or3       r0,*ar0,r0            ; |575| 
        sti       r0,*ar0               ; |575| 
        ldiu      247,r0                ; |575| 
        and3      r0,*ar0,r0            ; |575| 
        sti       r0,*ar0               ; |575| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |575| 
        or3       r0,*ar0,r0            ; |575| 
        sti       r0,*ar0               ; |575| 
        ldiu      253,r0                ; |575| 
        and3      r0,*ar0,r0            ; |575| 
        sti       r0,*ar0               ; |575| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	61
;----------------------------------------------------------------------
; 576 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	63
;----------------------------------------------------------------------
; 578 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |578| 
	.line	64
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |579| 
        ldiu      *fp,fp                ; |579| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |579| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	579,000000000h,7



	.global	_LCD_CNT
	.bss	_LCD_CNT,1
	.sym	_LCD_CNT,_LCD_CNT,14,2,32

	.global	_RTC
	.bss	_RTC,10
	.sym	_RTC,_RTC,60,2,320,,10

	.global	_LCD
	.bss	_LCD,2
	.sym	_LCD,_LCD,60,2,64,,2

	.global	_RTC_PRESENT
	.bss	_RTC_PRESENT,1
	.sym	_RTC_PRESENT,_RTC_PRESENT,14,2,32

	.global	_MB_LCD_DISPLAY
	.bss	_MB_LCD_DISPLAY,40
	.sym	_MB_LCD_DISPLAY,_MB_LCD_DISPLAY,52,2,1280,,40

	.global	_LCD_PRESENT
	.bss	_LCD_PRESENT,1
	.sym	_LCD_PRESENT,_LCD_PRESENT,14,2,32

	.global	_LCD_DISPLAY
	.bss	_LCD_DISPLAY,404
	.sym	_LCD_DISPLAY,_LCD_DISPLAY,242,2,12928,,4,101

	.global	_LCD_DIPSW
	.bss	_LCD_DIPSW,1
	.sym	_LCD_DIPSW,_LCD_DIPSW,12,2,32
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

	.sect	".cinit"
	.field  	11,32
	.field  	CL1+0,32
	.field  	9437186,32
	.field  	_I2C_TX_BYTE,32
	.field  	_I2C_RX_BYTE,32
	.field  	_Write_DS1340,32
	.field  	_RTC,32
	.field  	_Read_DS1340,32
	.field  	_RTC_PRESENT,32
	.field  	_RTC+1,32
	.field  	_DIAGNOSTICS,32
	.field  	_RTC+9,32
	.field  	_RTC+2,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_DIAGNOSTICS
