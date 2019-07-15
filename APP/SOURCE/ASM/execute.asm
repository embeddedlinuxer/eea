;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Jul 15 11:12:33 2019                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_2M4.AAA 
	.file	"execute.c"
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
	.file	"execute.c"
	.sect	 "initialization"

	.global	_Execute_Init
	.sym	_Execute_Init,_Execute_Init,32,2,0
	.func	37
;******************************************************************************
;* FUNCTION NAME: _Execute_Init                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar2,st                                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Execute_Init:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
;  37 | void Execute_Init(void)                                                
;  39 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
;  41 | List_Init(&LIST_EXEC);                                                 
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |41| 
        ldp       @CL1,DP
        ldiu      @CL1,ar2              ; |41| 
        callu     r0                    ; far call to _List_Init	; |41| 
                                        ; |41| Far Call Occurs
	.line	6
;----------------------------------------------------------------------
;  42 | List_Init(&LIST_EXEC_EMPTY);                                           
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |42| 
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |42| 
        callu     r0                    ; far call to _List_Init	; |42| 
                                        ; |42| Far Call Occurs
	.line	8
;----------------------------------------------------------------------
;  44 | for (i=0;i<EXEC_Q_LEN;i++)      /* adds EXEC_Q_LEN QUEUE_EXECs to LIST_
;     | EXEC_EMPTY*/                                                           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |44| 
        sti       r0,*+fp(1)            ; |44| 
        cmpi      10,r0                 ; |44| 
        bge       L3                    ; |44| 
;*      Branch Occurs to L3             ; |44| 
L2:        
	.line	9
;----------------------------------------------------------------------
;  45 | List_Add(&LIST_EXEC_EMPTY, (GENERIC*)(&QUEUE_EXEC[i]));                
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      *+fp(1),r2            ; |45| 
        ldiu      @CL5,r0               ; |45| 
        ldp       @CL4,DP
        ash       2,r2                  ; |45| 
        addi      @CL4,r2               ; |45| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |45| 
        callu     r0                    ; far call to _List_Add	; |45| 
                                        ; |45| Far Call Occurs
	.line	8
        ldiu      1,r0                  ; |44| 
        addi      *+fp(1),r0            ; |44| 
        sti       r0,*+fp(1)            ; |44| 
        cmpi      10,r0                 ; |44| 
        blt       L2                    ; |44| 
;*      Branch Occurs to L2             ; |44| 
L3:        
	.line	10
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	46,000000000h,1


	.sect	 ".text"

	.global	_Execute_Insert
	.sym	_Execute_Insert,_Execute_Insert,46,2,0
	.func	61
;******************************************************************************
;* FUNCTION NAME: _Execute_Insert                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 5 Auto + 0 SOE = 7 words          *
;******************************************************************************
_Execute_Insert:
;* ar2   assigned to _p
	.sym	_p,10,24,17,32,.fake17
	.sym	_p,1,24,1,32,.fake17
	.sym	_e,2,24,1,32,.fake17
	.sym	_t,3,24,1,32,.fake17
	.sym	_l,4,24,1,32,.fake4
	.sym	_i,5,4,1,32
	.line	1
;----------------------------------------------------------------------
;  61 | BOOL Execute_Insert(EPKT *p)                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
;----------------------------------------------------------------------
;  63 | EPKT* e;        /* working packet */                                   
;  64 | EPKT* t;        /* temp packet    */                                   
;  65 | LIST* l;        /* working list   */                                   
;  66 | int i;          /* counter */                                          
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |62| 
	.line	8
;----------------------------------------------------------------------
;  68 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
;  70 | l = &LIST_EXEC;                                                 /* list
;     |  is LIST_EXEC */                                                       
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,r0               ; |70| 
        sti       r0,*+fp(4)            ; |70| 
	.line	11
;----------------------------------------------------------------------
;  71 | e = (EPKT*)List_Pop(&LIST_EXEC_EMPTY);  /* get empty EPKT        */    
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |71| 
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |71| 
        callu     r0                    ; far call to _List_Pop	; |71| 
                                        ; |71| Far Call Occurs
        sti       r0,*+fp(2)            ; |71| 
	.line	13
;----------------------------------------------------------------------
;  73 | if (e==(EPKT*)NULL)                                                    
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |73| 
        bne       L7                    ; |73| 
;*      Branch Occurs to L7             ; |73| 
	.line	15
;----------------------------------------------------------------------
;  75 | DIAGNOSTICS[0] |= ERROR_EXEC_FAIL;                                     
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |75| 
        ldiu      2,r0                  ; |75| 
        or3       r0,*ar0,r0            ; |75| 
        sti       r0,*ar0               ; |75| 
	.line	16
;----------------------------------------------------------------------
;  76 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	18
;----------------------------------------------------------------------
;  78 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L18                   ; |78| 
	nop
	nop
        ldiu      0,r0                  ; |78| 
;*      Branch Occurs to L18            ; |78| 
L7:        
	.line	21
;----------------------------------------------------------------------
;  81 | e->priority = p->priority;  /* copy priority and function vector from p
;     | acket*/                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |81| 
        ldiu      *+fp(2),ar1           ; |81| 
        ldiu      *+ar0(3),r0           ; |81| 
        sti       r0,*+ar1(3)           ; |81| 
	.line	22
;----------------------------------------------------------------------
;  82 | e->vect     = p->vect;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |82| 
        ldiu      *+fp(2),ar1           ; |82| 
        ldiu      *+ar0(2),r0           ; |82| 
        sti       r0,*+ar1(2)           ; |82| 
	.line	23
;----------------------------------------------------------------------
;  83 | l->n++;                                             /* add to number of
;     |  elements in list */                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |83| 
        ldiu      1,r0                  ; |83| 
        addi      *+ar0(2),r0           ; |83| 
        sti       r0,*+ar0(2)           ; |83| 
	.line	25
;----------------------------------------------------------------------
;  85 | if (l->head == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |85| 
        ldiu      *ar0,r0               ; |85| 
        cmpi      0,r0                  ; |85| 
        bne       L9                    ; |85| 
;*      Branch Occurs to L9             ; |85| 
	.line	27
;----------------------------------------------------------------------
;  87 | l->head = (int*)e; /* head and tail are e. next and prev are NULL_PTR *
;     | /                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |87| 
        sti       r0,*ar0               ; |87| 
	.line	28
;----------------------------------------------------------------------
;  88 | l->tail = (int*)e;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |88| 
        ldiu      *+fp(2),r0            ; |88| 
        sti       r0,*+ar0(1)           ; |88| 
	.line	29
;----------------------------------------------------------------------
;  89 | e->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |89| 
        ldiu      0,r0                  ; |89| 
        sti       r0,*ar0               ; |89| 
	.line	30
;----------------------------------------------------------------------
;  90 | e->next = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |90| 
        sti       r0,*+ar0(1)           ; |90| 
	.line	31
;----------------------------------------------------------------------
;  91 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	33
;----------------------------------------------------------------------
;  93 | return TRUE;                                                           
;----------------------------------------------------------------------
        bud       L18                   ; |93| 
	nop
	nop
        ldiu      1,r0                  ; |93| 
;*      Branch Occurs to L18            ; |93| 
L9:        
	.line	36
;----------------------------------------------------------------------
;  96 | t = (EPKT*) l->head;                /* point list head to temp packet *
;     | /                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |96| 
        ldiu      *ar0,r0               ; |96| 
        sti       r0,*+fp(3)            ; |96| 
	.line	38
;----------------------------------------------------------------------
;  98 | while (t != (EPKT*)NULL)                                               
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |98| 
        beq       L12                   ; |98| 
;*      Branch Occurs to L12            ; |98| 
L10:        
	.line	40
;----------------------------------------------------------------------
; 100 | if (e->priority > t->priority)                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar1           ; |100| 
        ldiu      *+fp(3),ar0           ; |100| 
        ldiu      *+ar1(3),r0           ; |100| 
        cmpi      *+ar0(3),r0           ; |100| 
        bgt       L12                   ; |100| 
;*      Branch Occurs to L12            ; |100| 
	.line	41
;----------------------------------------------------------------------
; 101 | break;                                                                 
;----------------------------------------------------------------------
	.line	43
;----------------------------------------------------------------------
; 103 | t = (EPKT*) t->next;                                                   
;----------------------------------------------------------------------
        ldiu      *+ar0(1),r0           ; |103| 
        sti       r0,*+fp(3)            ; |103| 
	.line	38
        cmpi      0,r0                  ; |98| 
        bne       L10                   ; |98| 
;*      Branch Occurs to L10            ; |98| 
L12:        
	.line	46
;----------------------------------------------------------------------
; 106 | if ((int*)t == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |106| 
        cmpi      0,r0                  ; |106| 
        bne       L15                   ; |106| 
;*      Branch Occurs to L15            ; |106| 
	.line	48
;----------------------------------------------------------------------
; 108 | t = (EPKT*)l->tail;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |108| 
        ldiu      *+ar0(1),r0           ; |108| 
        sti       r0,*+fp(3)            ; |108| 
	.line	49
;----------------------------------------------------------------------
; 109 | t->next = (int*)e;                                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(2),r0            ; |109| 
        sti       r0,*+ar0(1)           ; |109| 
	.line	50
;----------------------------------------------------------------------
; 110 | e->prev = l->tail;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar1           ; |110| 
        ldiu      *+fp(2),ar0           ; |110| 
        ldiu      *+ar1(1),r0           ; |110| 
        sti       r0,*ar0               ; |110| 
	.line	51
;----------------------------------------------------------------------
; 111 | l->tail = (int*)e;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |111| 
        ldiu      *+fp(2),r0            ; |111| 
        sti       r0,*+ar0(1)           ; |111| 
	.line	52
;----------------------------------------------------------------------
; 112 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	53
;----------------------------------------------------------------------
; 113 | return TRUE;                                                           
; 115 | else                                                                   
;----------------------------------------------------------------------
        bud       L18                   ; |113| 
	nop
	nop
        ldiu      1,r0                  ; |113| 
;*      Branch Occurs to L18            ; |113| 
L15:        
	.line	57
;----------------------------------------------------------------------
; 117 | if (l->head == (int*)t)                                                
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |117| 
        ldiu      *ar0,r0               ; |117| 
        cmpi      *+fp(3),r0            ; |117| 
        bne       L17                   ; |117| 
;*      Branch Occurs to L17            ; |117| 
	.line	59
;----------------------------------------------------------------------
; 119 | l->head = (int*)e;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |119| 
        sti       r0,*ar0               ; |119| 
L17:        
	.line	62
;----------------------------------------------------------------------
; 122 | e->prev = t->prev;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1           ; |122| 
        ldiu      *+fp(2),ar0           ; |122| 
        ldiu      *ar1,r0               ; |122| 
        sti       r0,*ar0               ; |122| 
	.line	63
;----------------------------------------------------------------------
; 123 | e->next = (int*)t;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |123| 
        ldiu      *+fp(3),r0            ; |123| 
        sti       r0,*+ar0(1)           ; |123| 
	.line	64
;----------------------------------------------------------------------
; 124 | t->prev = (int*)e;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |124| 
        ldiu      *+fp(2),r0            ; |124| 
        sti       r0,*ar0               ; |124| 
	.line	67
;----------------------------------------------------------------------
; 127 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	69
;----------------------------------------------------------------------
; 129 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |129| 
L18:        
	.line	70
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |130| 
        ldiu      *fp,fp                ; |130| 
                                        ; Unallocate the Frame
        subi      7,sp                  ; |130| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	130,000000000h,5


	.sect	 ".text"

	.global	_Execute
	.sym	_Execute,_Execute,32,2,0
	.func	144
;******************************************************************************
;* FUNCTION NAME: _Execute                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Execute:
	.sym	_e,1,24,1,32,.fake17
	.line	1
;----------------------------------------------------------------------
; 144 | void Execute(void)                                                     
; 146 | EPKT* e;                                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 148 | while (LIST_EXEC.n>0)                                                  
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |148| 
        ldiu      *ar0,r0               ; |148| 
        cmpi      0,r0                  ; |148| 
        ble       L24                   ; |148| 
;*      Branch Occurs to L24            ; |148| 
L21:        
	.line	7
;----------------------------------------------------------------------
; 150 | e = (EPKT*)List_Pop(&LIST_EXEC);                                       
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |150| 
        ldp       @CL1,DP
        ldiu      @CL1,ar2              ; |150| 
        callu     r0                    ; far call to _List_Pop	; |150| 
                                        ; |150| Far Call Occurs
        sti       r0,*+fp(1)            ; |150| 
	.line	9
;----------------------------------------------------------------------
; 152 | if (e != (EPKT*)NULL)                                                  
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |152| 
        beq       L23                   ; |152| 
;*      Branch Occurs to L23            ; |152| 
	.line	11
;----------------------------------------------------------------------
; 154 | vect_ex = e->vect;                                                     
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      r0,ar1
        ldiu      @CL9,ar0              ; |154| 
        ldiu      *+ar1(2),r0           ; |154| 
        sti       r0,*ar0               ; |154| 
	.line	13
;----------------------------------------------------------------------
; 156 | PUSH_ALL;                                                              
;----------------------------------------------------------------------
	push	ST			
	push	FP			
	ldi		SP,FP		
	addi	2,SP		
	push	R0			
	pushf	R0			
	push	R1			
	pushf	R1			
	push	R2			
	pushf	R2			
	push	R3			
	pushf	R3			
	push	R4			
	pushf	R4			
	push	R5			
	pushf	R5			
	push	R6			
	pushf	R6			
	push	R7			
	pushf	R7			
	push	AR0			
	push	AR1			
	push	AR2			
	push	AR4			
	push	AR5			
	push	AR6			
	push	AR7			
	push	DP			
	push	IR0			
	push	IR1			
	push	BK			
	push	IOF			
	push	RS			
	push	RE			
	push	RC			
	.line	14
;----------------------------------------------------------------------
; 157 | asm("   .global _vect_ex          ");                                  
;----------------------------------------------------------------------
	.global _vect_ex  	  
	.line	15
;----------------------------------------------------------------------
; 158 | asm("       ldp             _vect_ex      ");                          
;----------------------------------------------------------------------
	ldp		_vect_ex      
	.line	16
;----------------------------------------------------------------------
; 159 | asm("       ldi             @_vect_ex, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_ex, R0 
	.line	17
;----------------------------------------------------------------------
; 160 | asm("       callnz  R0                        ");                      
;----------------------------------------------------------------------
	callnz	R0		 	  
	.line	18
;----------------------------------------------------------------------
; 161 | POP_ALL;                                                               
;----------------------------------------------------------------------
	pop		RC			
	pop		RE			
	pop		RS			
	pop		IOF			
	pop		BK			
	pop		IR1			
	pop		IR0			
	pop		DP			
	pop		AR7			
	pop		AR6			
	pop		AR5			
	pop		AR4			
	pop		AR2			
	pop		AR1			
	pop		AR0			
	popf	R7			
	pop 	R7			
	popf	R6			
	pop		R6			
	popf	R5			
	pop		R5			
	popf 	R4			
	pop		R4			
	popf	R3			
	pop		R3			
	popf	R2			
	pop		R2			
	popf	R1			
	pop		R1			
	popf	R0			
	pop 	R0			
	subi 	2,SP		
	pop 	FP			
	pop 	ST			
	.line	20
;----------------------------------------------------------------------
; 163 | List_Add(&LIST_EXEC_EMPTY, (GENERIC*)e);                               
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,r0               ; |163| 
        ldiu      *+fp(1),r2            ; |163| 
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |163| 
        callu     r0                    ; far call to _List_Add	; |163| 
                                        ; |163| Far Call Occurs
L23:        
	.line	5
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |148| 
        ldiu      *ar0,r0               ; |148| 
        cmpi      0,r0                  ; |148| 
        bgt       L21                   ; |148| 
;*      Branch Occurs to L21            ; |148| 
L24:        
	.line	23
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	166,000000000h,1



	.global	_LIST_EXEC_EMPTY
	.bss	_LIST_EXEC_EMPTY,3
	.sym	_LIST_EXEC_EMPTY,_LIST_EXEC_EMPTY,8,2,96,.fake4

	.global	_LIST_EXEC
	.bss	_LIST_EXEC,3
	.sym	_LIST_EXEC,_LIST_EXEC,8,2,96,.fake4

	.global	_QUEUE_EXEC
	.bss	_QUEUE_EXEC,40
	.sym	_QUEUE_EXEC,_QUEUE_EXEC,56,2,1280,.fake17,10

	.global	_vect_ex
	.bss	_vect_ex,1
	.sym	_vect_ex,_vect_ex,20,2,32
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

	.sect	".cinit"
	.field  	9,32
	.field  	CL1+0,32
	.field  	_LIST_EXEC,32
	.field  	_List_Init,32
	.field  	_LIST_EXEC_EMPTY,32
	.field  	_QUEUE_EXEC,32
	.field  	_List_Add,32
	.field  	_List_Pop,32
	.field  	_DIAGNOSTICS,32
	.field  	_LIST_EXEC+2,32
	.field  	_vect_ex,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_List_Add

	.global	_List_Pop

	.global	_List_Init

	.global	_DIAGNOSTICS
