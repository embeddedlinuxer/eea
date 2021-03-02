;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue Mar  2 13:04:09 2021                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_6U8.AAA 
	.file	"demo.c"
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
	.file	"demo.c"

	.sect	".const"
_anademo:
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[0] @ 0
	.word   	007480000H ; float   2.000000000000000e+02
                                   ; _anademo[1] @ 32
	.word   	004900000H ; float   -3.000000000000000e+01
                                   ; _anademo[2] @ 64
	.word   	008160000H ; float   3.000000000000000e+02
                                   ; _anademo[3] @ 96
	.word   	0FA23D70AH ; float   2.000000000000000e-02
                                   ; _anademo[4] @ 128
	.word   	0FA23D70AH ; float   2.000000000000000e-02
                                   ; _anademo[5] @ 160
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[6] @ 192
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _anademo[7] @ 224
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[8] @ 256
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _anademo[9] @ 288
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[10] @ 320
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[11] @ 352
	.word   	0FF800000H ; float   -1.000000000000000e+00
                                   ; _anademo[12] @ 384
	.word   	001000000H ; float   2.000000000000000e+00
                                   ; _anademo[13] @ 416
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[14] @ 448
	.word   	005480000H ; float   5.000000000000000e+01
                                   ; _anademo[15] @ 480
	.word   	006480000H ; float   1.000000000000000e+02
                                   ; _anademo[16] @ 512
	.word   	0FF800000H ; float   -1.000000000000000e+00
                                   ; _anademo[17] @ 544
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[18] @ 576
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[19] @ 608
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[20] @ 640
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[21] @ 672
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[22] @ 704
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[23] @ 736
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[24] @ 768
	.word   	005480000H ; float   5.000000000000000e+01
                                   ; _anademo[25] @ 800
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[26] @ 832
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[27] @ 864
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[28] @ 896
	.word   	006480000H ; float   1.000000000000000e+02
                                   ; _anademo[29] @ 928
	.word   	0040A6666H ; float   1.730000000000000e+01
                                   ; _anademo[30] @ 960
	.word   	0005851ECH ; float   1.690000000000000e+00
                                   ; _anademo[31] @ 992
	.word   	00047AE14H ; float   1.560000000000000e+00
                                   ; _anademo[32] @ 1024
	.word   	00767370AH ; float   2.312150000000000e+02
                                   ; _anademo[33] @ 1056
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[34] @ 1088
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[35] @ 1120
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[36] @ 1152
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _anademo[37] @ 1184

	.sect	".text"

	.global	_anademo
	.sym	_anademo,_anademo,54,2,1216,,38

	.sect	"initialization"
_lowdemo:
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[0] @ 0
	.word   	002000000H ; float   4.000000000000000e+00
                                   ; _lowdemo[1] @ 32
	.word   	0020E147BH ; float   4.440000000000000e+00
                                   ; _lowdemo[2] @ 64
	.word   	00667199AH ; float   1.155500000000000e+02
                                   ; _lowdemo[3] @ 96
	.word   	0FA23D70AH ; float   2.000000000000000e-02
                                   ; _lowdemo[4] @ 128
	.word   	0FA23D70AH ; float   2.000000000000000e-02
                                   ; _lowdemo[5] @ 160
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[6] @ 192
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _lowdemo[7] @ 224
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[8] @ 256
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _lowdemo[9] @ 288
	.word   	00019999AH ; float   1.200000000000000e+00
                                   ; _lowdemo[10] @ 320
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[11] @ 352
	.word   	0FF800000H ; float   -1.000000000000000e+00
                                   ; _lowdemo[12] @ 384
	.word   	001000000H ; float   2.000000000000000e+00
                                   ; _lowdemo[13] @ 416
	.word   	0037A6666H ; float   1.565000000000000e+01
                                   ; _lowdemo[14] @ 448
	.word   	0054C3333H ; float   5.105000000000000e+01
                                   ; _lowdemo[15] @ 480
	.word   	006303333H ; float   8.810000000000000e+01
                                   ; _lowdemo[16] @ 512
	.word   	0FF800000H ; float   -1.000000000000000e+00
                                   ; _lowdemo[17] @ 544
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[18] @ 576
	.word   	0F7BC9667H ; float   -2.981757998914900e-03
                                   ; _lowdemo[19] @ 608
	.word   	0FF2C72B0H ; float   6.736249955029100e-01
                                   ; _lowdemo[20] @ 640
	.word   	0023CF4F8H ; float   5.904903307721400e+00
                                   ; _lowdemo[21] @ 672
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[22] @ 704
	.word   	0F7BA3F17H ; float   -3.017479858927800e-03
                                   ; _lowdemo[23] @ 736
	.word   	0FF30EB59H ; float   6.910911399996000e-01
                                   ; _lowdemo[24] @ 768
	.word   	00206EA0CH ; float   4.216070411208600e+00
                                   ; _lowdemo[25] @ 800
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[26] @ 832
	.word   	0F7B73667H ; float   -3.063774050404400e-03
                                   ; _lowdemo[27] @ 864
	.word   	0FF362F49H ; float   7.116589911926000e-01
                                   ; _lowdemo[28] @ 896
	.word   	0011008ACH ; float   2.250529312930200e+00
                                   ; _lowdemo[29] @ 928
	.word   	0040A6666H ; float   1.730000000000000e+01
                                   ; _lowdemo[30] @ 960
	.word   	0005851ECH ; float   1.690000000000000e+00
                                   ; _lowdemo[31] @ 992
	.word   	00047AE14H ; float   1.560000000000000e+00
                                   ; _lowdemo[32] @ 1024
	.word   	00767370AH ; float   2.312150000000000e+02
                                   ; _lowdemo[33] @ 1056
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[34] @ 1088
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[35] @ 1120
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[36] @ 1152
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _lowdemo[37] @ 1184

	.sect	".text"

	.global	_lowdemo
	.sym	_lowdemo,_lowdemo,54,2,1216,,38

	.sect	"initialization"
_middemo:
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _middemo[0] @ 0
	.word   	004700000H ; float   3.000000000000000e+01
                                   ; _middemo[1] @ 32
	.word   	0020E147BH ; float   4.440000000000000e+00
                                   ; _middemo[2] @ 64
	.word   	006671EB8H ; float   1.155600000000000e+02
                                   ; _middemo[3] @ 96
	.word   	0FA23D70AH ; float   2.000000000000000e-02
                                   ; _middemo[4] @ 128
	.word   	0FA23D70AH ; float   2.000000000000000e-02
                                   ; _middemo[5] @ 160
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _middemo[6] @ 192
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _middemo[7] @ 224
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _middemo[8] @ 256
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _middemo[9] @ 288
	.word   	00019999AH ; float   1.200000000000000e+00
                                   ; _middemo[10] @ 320
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _middemo[11] @ 352
	.word   	0FF800000H ; float   -1.000000000000000e+00
                                   ; _middemo[12] @ 384
	.word   	001000000H ; float   2.000000000000000e+00
                                   ; _middemo[13] @ 416
	.word   	00378F5C3H ; float   1.556000000000000e+01
                                   ; _middemo[14] @ 448
	.word   	005171EB8H ; float   3.778000000000000e+01
                                   ; _middemo[15] @ 480
	.word   	005700000H ; float   6.000000000000000e+01
                                   ; _middemo[16] @ 512
	.word   	0FF800000H ; float   -1.000000000000000e+00
                                   ; _middemo[17] @ 544
	.word   	0F5911DD4H ; float   -9.112681667449000e-04
                                   ; _middemo[18] @ 576
	.word   	0FE33DACAH ; float   3.512785926388000e-01
                                   ; _middemo[19] @ 608
	.word   	005C557C1H ; float   -4.666430224707000e+01
                                   ; _middemo[20] @ 640
	.word   	00B062541H ; float   2.146328379043000e+03
                                   ; _middemo[21] @ 672
	.word   	0F5A5F44FH ; float   -8.317782023955000e-04
                                   ; _middemo[22] @ 704
	.word   	0FE237743H ; float   3.192692682476000e-01
                                   ; _middemo[23] @ 736
	.word   	005D698C9H ; float   -4.235079607969000e+01
                                   ; _middemo[24] @ 768
	.word   	00A73FC05H ; float   1.951875649563000e+03
                                   ; _middemo[25] @ 800
	.word   	0F5B8224CH ; float   -7.624283798787000e-04
                                   ; _middemo[26] @ 832
	.word   	0FE152704H ; float   2.913132758050000e-01
                                   ; _middemo[27] @ 864
	.word   	005E5B088H ; float   -3.857760664061000e+01
                                   ; _middemo[28] @ 896
	.word   	00A5EAE1EH ; float   1.781441202611000e+03
                                   ; _middemo[29] @ 928
	.word   	0050CCCCDH ; float   3.520000000000000e+01
                                   ; _middemo[30] @ 960
	.word   	0005851ECH ; float   1.690000000000000e+00
                                   ; _middemo[31] @ 992
	.word   	00047AE14H ; float   1.560000000000000e+00
                                   ; _middemo[32] @ 1024
	.word   	0067C947BH ; float   1.262900000000000e+02
                                   ; _middemo[33] @ 1056
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _middemo[34] @ 1088
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _middemo[35] @ 1120
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _middemo[36] @ 1152
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _middemo[37] @ 1184

	.sect	".text"

	.global	_middemo
	.sym	_middemo,_middemo,54,2,1216,,38

	.sect	"initialization"
_highdemo:
	.word   	006200000H ; float   8.000000000000000e+01
                                   ; _highdemo[0] @ 0
	.word   	006480000H ; float   1.000000000000000e+02
                                   ; _highdemo[1] @ 32
	.word   	0020E147BH ; float   4.440000000000000e+00
                                   ; _highdemo[2] @ 64
	.word   	0062470A4H ; float   8.222000000000000e+01
                                   ; _highdemo[3] @ 96
	.word   	003000000H ; float   8.000000000000000e+00
                                   ; _highdemo[4] @ 128
	.word   	004480000H ; float   2.500000000000000e+01
                                   ; _highdemo[5] @ 160
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[6] @ 192
	.word   	0087A0000H ; float   5.000000000000000e+02
                                   ; _highdemo[7] @ 224
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[8] @ 256
	.word   	0087A0000H ; float   5.000000000000000e+02
                                   ; _highdemo[9] @ 288
	.word   	000666666H ; float   1.800000000000000e+00
                                   ; _highdemo[10] @ 320
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[11] @ 352
	.word   	002000000H ; float   4.000000000000000e+00
                                   ; _highdemo[12] @ 384
	.word   	003000000H ; float   8.000000000000000e+00
                                   ; _highdemo[13] @ 416
	.word   	003300000H ; float   1.100000000000000e+01
                                   ; _highdemo[14] @ 448
	.word   	003700000H ; float   1.500000000000000e+01
                                   ; _highdemo[15] @ 480
	.word   	004200000H ; float   2.000000000000000e+01
                                   ; _highdemo[16] @ 512
	.word   	004480000H ; float   2.500000000000000e+01
                                   ; _highdemo[17] @ 544
	.word   	001000000H ; float   2.000000000000000e+00
                                   ; _highdemo[18] @ 576
	.word   	00378F5C3H ; float   1.556000000000000e+01
                                   ; _highdemo[19] @ 608
	.word   	005171EB8H ; float   3.778000000000000e+01
                                   ; _highdemo[20] @ 640
	.word   	005700000H ; float   6.000000000000000e+01
                                   ; _highdemo[21] @ 672
	.word   	001400000H ; float   3.000000000000000e+00
                                   ; _highdemo[22] @ 704
	.word   	003200000H ; float   1.000000000000000e+01
                                   ; _highdemo[23] @ 736
	.word   	005171EB8H ; float   3.778000000000000e+01
                                   ; _highdemo[24] @ 768
	.word   	005438F5CH ; float   4.889000000000000e+01
                                   ; _highdemo[25] @ 800
	.word   	0060E3852H ; float   7.111000000000000e+01
                                   ; _highdemo[26] @ 832
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[27] @ 864
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[28] @ 896
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[29] @ 928
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[30] @ 960
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[31] @ 992
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[32] @ 1024
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[33] @ 1056
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[34] @ 1088
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[35] @ 1120
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[36] @ 1152
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[37] @ 1184
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[38] @ 1216
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[39] @ 1248
	.word   	0FC020AE3H ; float   6.349732368594000e-02
                                   ; _highdemo[40] @ 1280
	.word   	004A5AFB8H ; float   -2.728919890121000e+01
                                   ; _highdemo[41] @ 1312
	.word   	00B3A88A5H ; float   2.984540347458000e+03
                                   ; _highdemo[42] @ 1344
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[43] @ 1376
	.word   	0FC0D2B4FH ; float   6.893026018527000e-02
                                   ; _highdemo[44] @ 1408
	.word   	0049EFC30H ; float   -2.812686142969000e+01
                                   ; _highdemo[45] @ 1440
	.word   	00B36CD2AH ; float   2.924822770646000e+03
                                   ; _highdemo[46] @ 1472
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[47] @ 1504
	.word   	0FC143C27H ; float   7.238035511161000e-02
                                   ; _highdemo[48] @ 1536
	.word   	00498086CH ; float   -2.899588703931000e+01
                                   ; _highdemo[49] @ 1568
	.word   	00B3912E5H ; float   2.961180939424000e+03
                                   ; _highdemo[50] @ 1600
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[51] @ 1632
	.word   	0FB5F1986H ; float   5.446770213838000e-02
                                   ; _highdemo[52] @ 1664
	.word   	004CF94FAH ; float   -2.205225816755000e+01
                                   ; _highdemo[53] @ 1696
	.word   	00B0EA54FH ; float   2.282331719663000e+03
                                   ; _highdemo[54] @ 1728
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[55] @ 1760
	.word   	0FC036245H ; float   6.415228101393000e-02
                                   ; _highdemo[56] @ 1792
	.word   	004A6C66CH ; float   -2.715311482160000e+01
                                   ; _highdemo[57] @ 1824
	.word   	00B36E226H ; float   2.926134284690000e+03
                                   ; _highdemo[58] @ 1856
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[59] @ 1888
	.word   	0FC17D8B1H ; float   7.414377463750000e-02
                                   ; _highdemo[60] @ 1920
	.word   	0049453A2H ; float   -2.945916274649000e+01
                                   ; _highdemo[61] @ 1952
	.word   	00B3A8363H ; float   2.984211615122000e+03
                                   ; _highdemo[62] @ 1984
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[63] @ 2016
	.word   	0FB668324H ; float   5.627741023426000e-02
                                   ; _highdemo[64] @ 2048
	.word   	004CA36F9H ; float   -2.272315837728000e+01
                                   ; _highdemo[65] @ 2080
	.word   	00B128F80H ; float   2.344968663708000e+03
                                   ; _highdemo[66] @ 2112
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[67] @ 2144
	.word   	0FB4940CDH ; float   4.913406543781000e-02
                                   ; _highdemo[68] @ 2176
	.word   	004E45B27H ; float   -1.945549230372000e+01
                                   ; _highdemo[69] @ 2208
	.word   	00A7775F7H ; float   1.979686404428000e+03
                                   ; _highdemo[70] @ 2240
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[71] @ 2272
	.word   	0FC0AAE9FH ; float   6.771587819035000e-02
                                   ; _highdemo[72] @ 2304
	.word   	004A147FFH ; float   -2.783984584713000e+01
                                   ; _highdemo[73] @ 2336
	.word   	00B36458CH ; float   2.916346572213000e+03
                                   ; _highdemo[74] @ 2368
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[75] @ 2400
	.word   	0FB280E3DH ; float   4.102920331297000e-02
                                   ; _highdemo[76] @ 2432
	.word   	004F78D30H ; float   -1.705606087260000e+01
                                   ; _highdemo[77] @ 2464
	.word   	00A62B44FH ; float   1.813634656628000e+03
                                   ; _highdemo[78] @ 2496
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[79] @ 2528
	.word   	0FB4CA7E6H ; float   4.996480869314000e-02
                                   ; _highdemo[80] @ 2560
	.word   	004E27535H ; float   -1.969276939853000e+01
                                   ; _highdemo[81] @ 2592
	.word   	00A7966EBH ; float   1.995216183508000e+03
                                   ; _highdemo[82] @ 2624
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[83] @ 2656
	.word   	0FB52B3E4H ; float   5.144108927306000e-02
                                   ; _highdemo[84] @ 2688
	.word   	004DF0B56H ; float   -2.011946450805000e+01
                                   ; _highdemo[85] @ 2720
	.word   	00A7CF99FH ; float   2.023800657808000e+03
                                   ; _highdemo[86] @ 2752
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[87] @ 2784
	.word   	0FC127581H ; float   7.151318612481000e-02
                                   ; _highdemo[88] @ 2816
	.word   	00499B37BH ; float   -2.878736294756000e+01
                                   ; _highdemo[89] @ 2848
	.word   	00B389DCFH ; float   2.953863133747000e+03
                                   ; _highdemo[90] @ 2880
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[91] @ 2912
	.word   	0FB5174FAH ; float   5.113694677813000e-02
                                   ; _highdemo[92] @ 2944
	.word   	004DFD296H ; float   -2.002217413813000e+01
                                   ; _highdemo[93] @ 2976
	.word   	00A7C0598H ; float   2.016174782903000e+03
                                   ; _highdemo[94] @ 3008
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[95] @ 3040
	.word   	0FB72BB1AH ; float   5.926046483618000e-02
                                   ; _highdemo[96] @ 3072
	.word   	004CB93A5H ; float   -2.255290833957000e+01
                                   ; _highdemo[97] @ 3104
	.word   	00B09FC3DH ; float   2.207764791287000e+03
                                   ; _highdemo[98] @ 3136
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[99] @ 3168
	.word   	0FB7CEFF8H ; float   6.175229080507000e-02
                                   ; _highdemo[100] @ 3200
	.word   	004C5888EH ; float   -2.330832258868000e+01
                                   ; _highdemo[101] @ 3232
	.word   	00B0D6E9DH ; float   2.262913260849000e+03
                                   ; _highdemo[102] @ 3264
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[103] @ 3296
	.word   	0FC0AD95AH ; float   6.779738111603000e-02
                                   ; _highdemo[104] @ 3328
	.word   	004A78B81H ; float   -2.705688326480000e+01
                                   ; _highdemo[105] @ 3360
	.word   	00B2C37A4H ; float   2.755477534070000e+03
                                   ; _highdemo[106] @ 3392
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[107] @ 3424
	.word   	0FB7CEFF8H ; float   6.175229080507000e-02
                                   ; _highdemo[108] @ 3456
	.word   	004C5888EH ; float   -2.330832258868000e+01
                                   ; _highdemo[109] @ 3488
	.word   	00B0D6E9DH ; float   2.262913260849000e+03
                                   ; _highdemo[110] @ 3520
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[111] @ 3552
	.word   	0FA242440H ; float   2.003681621958000e-02
                                   ; _highdemo[112] @ 3584
	.word   	003EA1449H ; float   -9.370047633062000e+00
                                   ; _highdemo[113] @ 3616
	.word   	00A093AB1H ; float   1.097834113687000e+03
                                   ; _highdemo[114] @ 3648
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _highdemo[115] @ 3680
	.word   	0FA242440H ; float   2.003681621958000e-02
                                   ; _highdemo[116] @ 3712
	.word   	003EA1449H ; float   -9.370047633062000e+00
                                   ; _highdemo[117] @ 3744
	.word   	00A093AB1H ; float   1.097834113687000e+03
                                   ; _highdemo[118] @ 3776
	.word   	005173333H ; float   3.780000000000000e+01
                                   ; _highdemo[119] @ 3808
	.word   	001066666H ; float   2.100000000000000e+00
                                   ; _highdemo[120] @ 3840
	.word   	0004CCCCDH ; float   1.600000000000000e+00
                                   ; _highdemo[121] @ 3872
	.word   	006583EFAH ; float   1.081230000000000e+02
                                   ; _highdemo[122] @ 3904
	.word   	0FF000000H ; float   5.000000000000000e-01
                                   ; _highdemo[123] @ 3936
	.word   	0FE19999AH ; float   3.000000000000000e-01
                                   ; _highdemo[124] @ 3968
	.word   	0072F4B85H ; float   1.752950000000000e+02
                                   ; _highdemo[125] @ 4000
	.word   	003700000H ; float   1.500000000000000e+01
                                   ; _highdemo[126] @ 4032

	.sect	".text"

	.global	_highdemo
	.sym	_highdemo,_highdemo,54,2,4064,,127

	.sect	"initialization"
_fulldemo:
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[0] @ 0
	.word   	006480000H ; float   1.000000000000000e+02
                                   ; _fulldemo[1] @ 32
	.word   	0020E147BH ; float   4.440000000000000e+00
                                   ; _fulldemo[2] @ 64
	.word   	0062470A4H ; float   8.222000000000000e+01
                                   ; _fulldemo[3] @ 96
	.word   	003000000H ; float   8.000000000000000e+00
                                   ; _fulldemo[4] @ 128
	.word   	004480000H ; float   2.500000000000000e+01
                                   ; _fulldemo[5] @ 160
	.word   	0062C0000H ; float   8.600000000000000e+01
                                   ; _fulldemo[6] @ 192
	.word   	006330000H ; float   8.950000000000000e+01
                                   ; _fulldemo[7] @ 224
	.word   	007238000H ; float   1.635000000000000e+02
                                   ; _fulldemo[8] @ 256
	.word   	0073A0000H ; float   1.860000000000000e+02
                                   ; _fulldemo[9] @ 288
	.word   	000666666H ; float   1.800000000000000e+00
                                   ; _fulldemo[10] @ 320
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[11] @ 352
	.word   	002000000H ; float   4.000000000000000e+00
                                   ; _fulldemo[12] @ 384
	.word   	003000000H ; float   8.000000000000000e+00
                                   ; _fulldemo[13] @ 416
	.word   	003300000H ; float   1.100000000000000e+01
                                   ; _fulldemo[14] @ 448
	.word   	003700000H ; float   1.500000000000000e+01
                                   ; _fulldemo[15] @ 480
	.word   	004200000H ; float   2.000000000000000e+01
                                   ; _fulldemo[16] @ 512
	.word   	004480000H ; float   2.500000000000000e+01
                                   ; _fulldemo[17] @ 544
	.word   	001000000H ; float   2.000000000000000e+00
                                   ; _fulldemo[18] @ 576
	.word   	00378F5C3H ; float   1.556000000000000e+01
                                   ; _fulldemo[19] @ 608
	.word   	005171EB8H ; float   3.778000000000000e+01
                                   ; _fulldemo[20] @ 640
	.word   	005700000H ; float   6.000000000000000e+01
                                   ; _fulldemo[21] @ 672
	.word   	001400000H ; float   3.000000000000000e+00
                                   ; _fulldemo[22] @ 704
	.word   	003200000H ; float   1.000000000000000e+01
                                   ; _fulldemo[23] @ 736
	.word   	005171EB8H ; float   3.778000000000000e+01
                                   ; _fulldemo[24] @ 768
	.word   	005438F5CH ; float   4.889000000000000e+01
                                   ; _fulldemo[25] @ 800
	.word   	0060E3852H ; float   7.111000000000000e+01
                                   ; _fulldemo[26] @ 832
	.word   	0F8BE01F5H ; float   -5.920177058457000e-03
                                   ; _fulldemo[27] @ 864
	.word   	000683BE0H ; float   1.814327297535000e+00
                                   ; _fulldemo[28] @ 896
	.word   	007C42C58H ; float   -1.878267855357000e+02
                                   ; _fulldemo[29] @ 928
	.word   	00C4DD268H ; float   6.586300941540000e+03
                                   ; _fulldemo[30] @ 960
	.word   	0F8BE01F5H ; float   -5.920177058457000e-03
                                   ; _fulldemo[31] @ 992
	.word   	000683BE0H ; float   1.814327297535000e+00
                                   ; _fulldemo[32] @ 1024
	.word   	007C42C58H ; float   -1.878267855357000e+02
                                   ; _fulldemo[33] @ 1056
	.word   	00C4DD268H ; float   6.586300941540000e+03
                                   ; _fulldemo[34] @ 1088
	.word   	0F8BE01F5H ; float   -5.920177058457000e-03
                                   ; _fulldemo[35] @ 1120
	.word   	000683BE0H ; float   1.814327297535000e+00
                                   ; _fulldemo[36] @ 1152
	.word   	007C42C58H ; float   -1.878267855357000e+02
                                   ; _fulldemo[37] @ 1184
	.word   	00C4DD268H ; float   6.586300941540000e+03
                                   ; _fulldemo[38] @ 1216
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[39] @ 1248
	.word   	0FC020AE3H ; float   6.349732368594000e-02
                                   ; _fulldemo[40] @ 1280
	.word   	004A5AFB8H ; float   -2.728919890121000e+01
                                   ; _fulldemo[41] @ 1312
	.word   	00B3A88A5H ; float   2.984540347458000e+03
                                   ; _fulldemo[42] @ 1344
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[43] @ 1376
	.word   	0FC0D2B4FH ; float   6.893026018527000e-02
                                   ; _fulldemo[44] @ 1408
	.word   	0049EFC30H ; float   -2.812686142969000e+01
                                   ; _fulldemo[45] @ 1440
	.word   	00B36CD2AH ; float   2.924822770646000e+03
                                   ; _fulldemo[46] @ 1472
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[47] @ 1504
	.word   	0FC143C27H ; float   7.238035511161000e-02
                                   ; _fulldemo[48] @ 1536
	.word   	00498086CH ; float   -2.899588703931000e+01
                                   ; _fulldemo[49] @ 1568
	.word   	00B3912E5H ; float   2.961180939424000e+03
                                   ; _fulldemo[50] @ 1600
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[51] @ 1632
	.word   	0FB5F1986H ; float   5.446770213838000e-02
                                   ; _fulldemo[52] @ 1664
	.word   	004CF94FAH ; float   -2.205225816755000e+01
                                   ; _fulldemo[53] @ 1696
	.word   	00B0EA54FH ; float   2.282331719663000e+03
                                   ; _fulldemo[54] @ 1728
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[55] @ 1760
	.word   	0FC036245H ; float   6.415228101393000e-02
                                   ; _fulldemo[56] @ 1792
	.word   	004A6C66CH ; float   -2.715311482160000e+01
                                   ; _fulldemo[57] @ 1824
	.word   	00B36E226H ; float   2.926134284690000e+03
                                   ; _fulldemo[58] @ 1856
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[59] @ 1888
	.word   	0FC17D8B1H ; float   7.414377463750000e-02
                                   ; _fulldemo[60] @ 1920
	.word   	0049453A2H ; float   -2.945916274649000e+01
                                   ; _fulldemo[61] @ 1952
	.word   	00B3A8363H ; float   2.984211615122000e+03
                                   ; _fulldemo[62] @ 1984
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[63] @ 2016
	.word   	0FB668324H ; float   5.627741023426000e-02
                                   ; _fulldemo[64] @ 2048
	.word   	004CA36F9H ; float   -2.272315837728000e+01
                                   ; _fulldemo[65] @ 2080
	.word   	00B128F80H ; float   2.344968663708000e+03
                                   ; _fulldemo[66] @ 2112
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[67] @ 2144
	.word   	0FB4940CDH ; float   4.913406543781000e-02
                                   ; _fulldemo[68] @ 2176
	.word   	004E45B27H ; float   -1.945549230372000e+01
                                   ; _fulldemo[69] @ 2208
	.word   	00A7775F7H ; float   1.979686404428000e+03
                                   ; _fulldemo[70] @ 2240
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[71] @ 2272
	.word   	0FC0AAE9FH ; float   6.771587819035000e-02
                                   ; _fulldemo[72] @ 2304
	.word   	004A147FFH ; float   -2.783984584713000e+01
                                   ; _fulldemo[73] @ 2336
	.word   	00B36458CH ; float   2.916346572213000e+03
                                   ; _fulldemo[74] @ 2368
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[75] @ 2400
	.word   	0FB280E3DH ; float   4.102920331297000e-02
                                   ; _fulldemo[76] @ 2432
	.word   	004F78D30H ; float   -1.705606087260000e+01
                                   ; _fulldemo[77] @ 2464
	.word   	00A62B44FH ; float   1.813634656628000e+03
                                   ; _fulldemo[78] @ 2496
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[79] @ 2528
	.word   	0FB4CA7E6H ; float   4.996480869314000e-02
                                   ; _fulldemo[80] @ 2560
	.word   	004E27535H ; float   -1.969276939853000e+01
                                   ; _fulldemo[81] @ 2592
	.word   	00A7966EBH ; float   1.995216183508000e+03
                                   ; _fulldemo[82] @ 2624
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[83] @ 2656
	.word   	0FB52B3E4H ; float   5.144108927306000e-02
                                   ; _fulldemo[84] @ 2688
	.word   	004DF0B56H ; float   -2.011946450805000e+01
                                   ; _fulldemo[85] @ 2720
	.word   	00A7CF99FH ; float   2.023800657808000e+03
                                   ; _fulldemo[86] @ 2752
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[87] @ 2784
	.word   	0FC127581H ; float   7.151318612481000e-02
                                   ; _fulldemo[88] @ 2816
	.word   	00499B37BH ; float   -2.878736294756000e+01
                                   ; _fulldemo[89] @ 2848
	.word   	00B389DCFH ; float   2.953863133747000e+03
                                   ; _fulldemo[90] @ 2880
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[91] @ 2912
	.word   	0FB5174FAH ; float   5.113694677813000e-02
                                   ; _fulldemo[92] @ 2944
	.word   	004DFD296H ; float   -2.002217413813000e+01
                                   ; _fulldemo[93] @ 2976
	.word   	00A7C0598H ; float   2.016174782903000e+03
                                   ; _fulldemo[94] @ 3008
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[95] @ 3040
	.word   	0FB72BB1AH ; float   5.926046483618000e-02
                                   ; _fulldemo[96] @ 3072
	.word   	004CB93A5H ; float   -2.255290833957000e+01
                                   ; _fulldemo[97] @ 3104
	.word   	00B09FC3DH ; float   2.207764791287000e+03
                                   ; _fulldemo[98] @ 3136
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[99] @ 3168
	.word   	0FB7CEFF8H ; float   6.175229080507000e-02
                                   ; _fulldemo[100] @ 3200
	.word   	004C5888EH ; float   -2.330832258868000e+01
                                   ; _fulldemo[101] @ 3232
	.word   	00B0D6E9DH ; float   2.262913260849000e+03
                                   ; _fulldemo[102] @ 3264
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[103] @ 3296
	.word   	0FC0AD95AH ; float   6.779738111603000e-02
                                   ; _fulldemo[104] @ 3328
	.word   	004A78B81H ; float   -2.705688326480000e+01
                                   ; _fulldemo[105] @ 3360
	.word   	00B2C37A4H ; float   2.755477534070000e+03
                                   ; _fulldemo[106] @ 3392
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[107] @ 3424
	.word   	0FB7CEFF8H ; float   6.175229080507000e-02
                                   ; _fulldemo[108] @ 3456
	.word   	004C5888EH ; float   -2.330832258868000e+01
                                   ; _fulldemo[109] @ 3488
	.word   	00B0D6E9DH ; float   2.262913260849000e+03
                                   ; _fulldemo[110] @ 3520
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[111] @ 3552
	.word   	0FA242440H ; float   2.003681621958000e-02
                                   ; _fulldemo[112] @ 3584
	.word   	003EA1449H ; float   -9.370047633062000e+00
                                   ; _fulldemo[113] @ 3616
	.word   	00A093AB1H ; float   1.097834113687000e+03
                                   ; _fulldemo[114] @ 3648
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _fulldemo[115] @ 3680
	.word   	0FA242440H ; float   2.003681621958000e-02
                                   ; _fulldemo[116] @ 3712
	.word   	003EA1449H ; float   -9.370047633062000e+00
                                   ; _fulldemo[117] @ 3744
	.word   	00A093AB1H ; float   1.097834113687000e+03
                                   ; _fulldemo[118] @ 3776
	.word   	005173333H ; float   3.780000000000000e+01
                                   ; _fulldemo[119] @ 3808
	.word   	001066666H ; float   2.100000000000000e+00
                                   ; _fulldemo[120] @ 3840
	.word   	0004CCCCDH ; float   1.600000000000000e+00
                                   ; _fulldemo[121] @ 3872
	.word   	006583EFAH ; float   1.081230000000000e+02
                                   ; _fulldemo[122] @ 3904
	.word   	0FF000000H ; float   5.000000000000000e-01
                                   ; _fulldemo[123] @ 3936
	.word   	0FE19999AH ; float   3.000000000000000e-01
                                   ; _fulldemo[124] @ 3968
	.word   	0072F4B85H ; float   1.752950000000000e+02
                                   ; _fulldemo[125] @ 4000
	.word   	003700000H ; float   1.500000000000000e+01
                                   ; _fulldemo[126] @ 4032

	.sect	".text"

	.global	_fulldemo
	.sym	_fulldemo,_fulldemo,54,2,4064,,127
	.sect	 "initialization"

	.global	_DEMO_Init
	.sym	_DEMO_Init,_DEMO_Init,32,2,0
	.func	242
;******************************************************************************
;* FUNCTION NAME: _DEMO_Init                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,f3,r3,r4,r5,r6,ar0,ar1,ar2,ar4,   *
;*                        ir0,ir1,bk,st,rs,re,rc                              *
;*   Regs Saved         : r4,r5,f6,ar4                                        *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 19 Auto + 4 SOE = 25 words        *
;******************************************************************************
_DEMO_Init:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
	.sym	_v,1,24,1,32,.fake6
	.sym	_mode,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_j,4,4,1,32
	.sym	_k,5,4,1,32
	.sym	_s_lo,6,6,1,32
	.sym	_s_hi,7,6,1,32
	.sym	_w_lo,8,6,1,32
	.sym	_w_hi,9,6,1,32
	.sym	_t_lo,10,6,1,32
	.sym	_t_hi,11,6,1,32
	.sym	_fo_lo,12,6,1,32
	.sym	_fo_hi,13,6,1,32
	.sym	_fw_lo,14,6,1,32
	.sym	_fw_hi,15,6,1,32
	.sym	_p0,16,6,1,32
	.sym	_p1,17,6,1,32
	.sym	_p,18,22,1,32
	.sym	_s,19,22,1,32
	.line	1
;----------------------------------------------------------------------
; 242 | void DEMO_Init(VAR* v)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      19,sp
        push      r4
        push      r5
        pushf     f6
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 244 | int                             mode, i, j, k;                         
; 245 | float                   s_lo, s_hi, w_lo, w_hi, t_lo, t_hi, fo_lo, fo_h
;     | i, fw_lo, fw_hi, p0, p1;                                               
; 246 | float*                  p;                                             
; 247 | float*                  s;                                             
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |243| 
	.line	8
;----------------------------------------------------------------------
; 249 | if (!DEMO)                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |249| 
        ldiu      *ar0,r0               ; |249| 
        cmpi      0,r0                  ; |249| 
        beq       L44                   ; |249| 
;*      Branch Occurs to L44            ; |249| 
	.line	9
;----------------------------------------------------------------------
; 250 | return;                                                                
;----------------------------------------------------------------------
	.line	11
;----------------------------------------------------------------------
; 252 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	13
;----------------------------------------------------------------------
; 254 | VAR_Update(&REG_STREAM_SELECT, 1.0, 0, 0);                             
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |254| 
        ldp       @CL3+0,DP
        ldfu      @CL3+0,f2             ; |254| 40b float hi half
        ldp       @CL3+1,DP
        ldiu      0,rc                  ; |254| 
        ldiu      @CL3+1,r2             ; |254| 40b float lo half
        ldp       @CL2,DP
        ldiu      0,r3                  ; |254| 
        ldiu      @CL2,ar2              ; |254| 
        callu     r0                    ; far call to _VAR_Update	; |254| 
                                        ; |254| Far Call Occurs
	.line	15
;----------------------------------------------------------------------
; 256 | p = (float*) &COEFF_TEMP_OIL;                                          
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,r0               ; |256| 
        sti       r0,*+fp(18)           ; |256| 
	.line	17
;----------------------------------------------------------------------
; 258 | for (i=0;i<40;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |258| 
        sti       r0,*+fp(3)            ; |258| 
        ldfu      0.0000000000e+00,f1   ; |259| 
        cmpi      40,r0                 ; |258| 
        bge       L4                    ; |258| 
;*      Branch Occurs to L4             ; |258| 
L3:        
	.line	18
;----------------------------------------------------------------------
; 259 | p[i] = 0.0;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(18),ir0          ; |259| 
        ldiu      *+fp(3),ar0           ; |259| 
        stf       f1,*+ar0(ir0)         ; |259| 
	.line	17
        ldiu      1,r0                  ; |258| 
        addi      *+fp(3),r0            ; |258| 
        sti       r0,*+fp(3)            ; |258| 
        cmpi      40,r0                 ; |258| 
        blt       L3                    ; |258| 
;*      Branch Occurs to L3             ; |258| 
L4:        
	.line	20
;----------------------------------------------------------------------
; 261 | p = (float*) &COEFF_SALT_TEMP_WATER;                                   
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |261| 
        sti       r0,*+fp(18)           ; |261| 
	.line	22
;----------------------------------------------------------------------
; 263 | for (i=0;i<1200;i++)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |263| 
        sti       r0,*+fp(3)            ; |263| 
        ldiu      r0,r1
        cmpi      1200,r1               ; |263| 
        ldfu      0.0000000000e+00,f0   ; |264| 
        bge       L6                    ; |263| 
;*      Branch Occurs to L6             ; |263| 
L5:        
	.line	23
;----------------------------------------------------------------------
; 264 | p[i] = 0.0;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(18),ir0          ; |264| 
        ldiu      *+fp(3),ar0           ; |264| 
        stf       f0,*+ar0(ir0)         ; |264| 
	.line	22
        ldiu      1,r1                  ; |263| 
        addi      *+fp(3),r1            ; |263| 
        sti       r1,*+fp(3)            ; |263| 
        cmpi      1200,r1               ; |263| 
        blt       L5                    ; |263| 
;*      Branch Occurs to L5             ; |263| 
L6:        
	.line	25
;----------------------------------------------------------------------
; 266 | OSC_OIL_CALC    = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |266| 
        ldiu      0,r0                  ; |266| 
        sti       r0,*ar0               ; |266| 
	.line	26
;----------------------------------------------------------------------
; 267 | OSC_WATER_CALC  = 1;                                                   
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |267| 
        ldiu      1,r0                  ; |267| 
        sti       r0,*ar0               ; |267| 
	.line	27
;----------------------------------------------------------------------
; 268 | mode                    = v->val;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |268| 
        ldfu      *ar0,f1               ; |268| 
        negf      f1,f0                 ; |268| 
        fix       f0,r0                 ; |268| 
        fix       f1,r1                 ; |268| 
        negi      r0,r0                 ; |268| 
        ldile     r0,r1                 ; |268| 
        sti       r1,*+fp(2)            ; |268| 
	.line	29
;----------------------------------------------------------------------
; 270 | for (i=0;i<VTMAX;i++)                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |270| 
        sti       r0,*+fp(3)            ; |270| 
        ldiu      0,r1                  ; |275| 
        cmpi      4,r0                  ; |270| 
        bge       L8                    ; |270| 
;*      Branch Occurs to L8             ; |270| 
L7:        
	.line	31
;----------------------------------------------------------------------
; 272 | SIM_VINC[i] = -1.0;                                                    
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |272| 
        ldp       @CL10,DP
        ldiu      *+fp(3),ir0           ; |272| 
        ldfu      @CL10,f0              ; |272| 
        stf       f0,*+ar0(ir0)         ; |272| 
	.line	32
;----------------------------------------------------------------------
; 273 | SIM_VREF[i] = -1.0;                                                    
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |273| 
        ldp       @CL10,DP
        ldiu      *+fp(3),ir0           ; |273| 
        ldfu      @CL10,f0              ; |273| 
        stf       f0,*+ar0(ir0)         ; |273| 
	.line	33
;----------------------------------------------------------------------
; 274 | SIM_FREQ[i] = -1.0;                                                    
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |274| 
        ldp       @CL10,DP
        ldiu      *+fp(3),ir0           ; |274| 
        ldfu      @CL10,f0              ; |274| 
        stf       f0,*+ar0(ir0)         ; |274| 
	.line	34
;----------------------------------------------------------------------
; 275 | ENABLED[i]  =  0;                                                      
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |275| 
        ldiu      *+fp(3),ir0           ; |275| 
        sti       r1,*+ar0(ir0)         ; |275| 
	.line	29
        ldiu      1,r0                  ; |270| 
        addi      *+fp(3),r0            ; |270| 
        sti       r0,*+fp(3)            ; |270| 
        cmpi      4,r0                  ; |270| 
        blt       L7                    ; |270| 
;*      Branch Occurs to L7             ; |270| 
L8:        
	.line	37
;----------------------------------------------------------------------
; 278 | for (i=0;i<10;i++) STR_Analyzer_Info[i] = 0x2020;                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |278| 
        sti       r0,*+fp(3)            ; |278| 
        cmpi      10,r0                 ; |278| 
        ldiu      8224,r1               ; |278| 
        bge       L10                   ; |278| 
;*      Branch Occurs to L10            ; |278| 
L9:        
        ldp       @CL14,DP
        ldiu      *+fp(3),ir0           ; |278| 
        ldiu      @CL14,ar0             ; |278| 
        sti       r1,*+ar0(ir0)         ; |278| 
        ldiu      1,r0                  ; |278| 
        addi      *+fp(3),r0            ; |278| 
        sti       r0,*+fp(3)            ; |278| 
        cmpi      10,r0                 ; |278| 
        blt       L9                    ; |278| 
;*      Branch Occurs to L9             ; |278| 
L10:        
	.line	39
;----------------------------------------------------------------------
; 280 | STR_Analyzer_Info[4] = ('4'<<8) | 'A';                                 
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,ar0             ; |280| 
        ldiu      13377,r0              ; |280| 
        sti       r0,*ar0               ; |280| 
	.line	40
;----------------------------------------------------------------------
; 281 | STR_Analyzer_Info[5] = ('0'<<8) | '3'; // field_M                      
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      @CL16,ar0             ; |281| 
        ldiu      12339,r0              ; |281| 
        sti       r0,*ar0               ; |281| 
	.line	41
;----------------------------------------------------------------------
; 282 | STR_Analyzer_Info[6] = ('2'<<8) | ' ';                                 
; 284 | switch(mode)                                                           
; 286 |         case SUB_FULL:                                                 
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |282| 
        ldiu      12832,r0              ; |282| 
        sti       r0,*ar0               ; |282| 
        bu        L19                   ; |241| 
;*      Branch Occurs to L19            ; |241| 
L11:        
	.line	47
;----------------------------------------------------------------------
; 288 | STR_Analyzer_Info[0]    = ('F'<<8) | 'I';                              
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |288| 
        ldiu      17993,r0              ; |288| 
        sti       r0,*ar0               ; |288| 
	.line	48
;----------------------------------------------------------------------
; 289 | STR_Analyzer_Info[1]    = ('1'<<8) | 'R';                              
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |289| 
        ldiu      12626,r0              ; |289| 
        sti       r0,*ar0               ; |289| 
	.line	49
;----------------------------------------------------------------------
; 290 | STR_Analyzer_Info[2]    = ('3'<<8) | '0';                              
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |290| 
        ldiu      13104,r0              ; |290| 
        sti       r0,*ar0               ; |290| 
	.line	50
;----------------------------------------------------------------------
; 291 | STR_Analyzer_Info[3]    = ('1'<<8) | '4';                              
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |291| 
        ldiu      12596,r0              ; |291| 
        sti       r0,*ar0               ; |291| 
	.line	51
;----------------------------------------------------------------------
; 292 | ENABLED[OSC_OIL_CALC]   =  TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |292| 
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |292| 
        ldiu      *ar0,ir0              ; |292| 
        ldiu      1,r0                  ; |292| 
        sti       r0,*+ar1(ir0)         ; |292| 
	.line	52
;----------------------------------------------------------------------
; 293 | ENABLED[OSC_WATER_CALC] =  TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |293| 
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |293| 
        ldiu      *ar0,ir0              ; |293| 
        sti       r0,*+ar1(ir0)         ; |293| 
	.line	53
;----------------------------------------------------------------------
; 294 | p                                               = (float*) &fulldemo;  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,r0              ; |294| 
        sti       r0,*+fp(18)           ; |294| 
	.line	55
;----------------------------------------------------------------------
; 296 | break;                                                                 
; 298 | case SUB_ANALYZER:                                                     
; 299 | case SUB_GAS_ANALYZER:                                                 
;----------------------------------------------------------------------
        bu        L27                   ; |296| 
;*      Branch Occurs to L27            ; |296| 
L12:        
	.line	60
;----------------------------------------------------------------------
; 301 | STR_Analyzer_Info[0]    = ('A'<<8) | 'Z';                              
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |301| 
        ldiu      16730,r0              ; |301| 
        sti       r0,*ar0               ; |301| 
	.line	61
;----------------------------------------------------------------------
; 302 | STR_Analyzer_Info[1]    = ('S'<<8) | 'W';                              
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |302| 
        ldiu      21335,r0              ; |302| 
        sti       r0,*ar0               ; |302| 
	.line	62
;----------------------------------------------------------------------
; 303 | STR_Analyzer_Info[2]    = ('5'<<8) | '0';                              
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |303| 
        ldiu      13616,r0              ; |303| 
        sti       r0,*ar0               ; |303| 
	.line	63
;----------------------------------------------------------------------
; 304 | STR_Analyzer_Info[3]    = ('0'<<8) | '8';                              
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |304| 
        ldiu      12344,r0              ; |304| 
        sti       r0,*ar0               ; |304| 
	.line	64
;----------------------------------------------------------------------
; 305 | ENABLED[OSC_OIL_CALC]   =  TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |305| 
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |305| 
        ldiu      *ar0,ir0              ; |305| 
        ldiu      1,r0                  ; |305| 
        sti       r0,*+ar1(ir0)         ; |305| 
	.line	65
;----------------------------------------------------------------------
; 306 | p                                               = (float*) &anademo;   
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      @CL22,r0              ; |306| 
        sti       r0,*+fp(18)           ; |306| 
	.line	67
;----------------------------------------------------------------------
; 308 | break;                                                                 
; 310 | case SUB_MID:                                                          
;----------------------------------------------------------------------
        bu        L27                   ; |308| 
;*      Branch Occurs to L27            ; |308| 
L13:        
	.line	71
;----------------------------------------------------------------------
; 312 | STR_Analyzer_Info[0]    = ('M'<<8) | 'Z';                              
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |312| 
        ldiu      19802,r0              ; |312| 
        sti       r0,*ar0               ; |312| 
	.line	72
;----------------------------------------------------------------------
; 313 | STR_Analyzer_Info[1]    = ('1'<<8) | 'R';                              
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |313| 
        ldiu      12626,r0              ; |313| 
        sti       r0,*ar0               ; |313| 
	.line	73
;----------------------------------------------------------------------
; 314 | STR_Analyzer_Info[2]    = ('4'<<8) | '0';                              
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |314| 
        ldiu      13360,r0              ; |314| 
        sti       r0,*ar0               ; |314| 
	.line	74
;----------------------------------------------------------------------
; 315 | STR_Analyzer_Info[3]    = ('2'<<8) | '0';                              
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |315| 
        ldiu      12848,r0              ; |315| 
        sti       r0,*ar0               ; |315| 
	.line	75
;----------------------------------------------------------------------
; 316 | ENABLED[OSC_OIL_CALC]   =  TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |316| 
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |316| 
        ldiu      *ar0,ir0              ; |316| 
        ldiu      1,r0                  ; |316| 
        sti       r0,*+ar1(ir0)         ; |316| 
	.line	76
;----------------------------------------------------------------------
; 317 | p                                               = (float*) &middemo;   
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,r0              ; |317| 
        sti       r0,*+fp(18)           ; |317| 
	.line	78
;----------------------------------------------------------------------
; 319 | break;                                                                 
; 321 | case SUB_HIGH:                                                         
;----------------------------------------------------------------------
        bu        L27                   ; |319| 
;*      Branch Occurs to L27            ; |319| 
L14:        
	.line	82
;----------------------------------------------------------------------
; 323 | STR_Analyzer_Info[0]    = ('H'<<8) | 'I';                              
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |323| 
        ldiu      18505,r0              ; |323| 
        sti       r0,*ar0               ; |323| 
	.line	83
;----------------------------------------------------------------------
; 324 | STR_Analyzer_Info[1]    = ('1'<<8) | 'R';                              
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |324| 
        ldiu      12626,r0              ; |324| 
        sti       r0,*ar0               ; |324| 
	.line	84
;----------------------------------------------------------------------
; 325 | STR_Analyzer_Info[2]    = ('3'<<8) | '0';                              
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |325| 
        ldiu      13104,r0              ; |325| 
        sti       r0,*ar0               ; |325| 
	.line	85
;----------------------------------------------------------------------
; 326 | STR_Analyzer_Info[3]    = ('1'<<8) | '4';                              
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |326| 
        ldiu      12596,r0              ; |326| 
        sti       r0,*ar0               ; |326| 
	.line	86
;----------------------------------------------------------------------
; 327 | ENABLED[OSC_OIL_CALC]   =  TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |327| 
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |327| 
        ldiu      *ar0,ir0              ; |327| 
        ldiu      1,r0                  ; |327| 
        sti       r0,*+ar1(ir0)         ; |327| 
	.line	87
;----------------------------------------------------------------------
; 328 | ENABLED[OSC_WATER_CALC] =  TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |328| 
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |328| 
        ldiu      *ar0,ir0              ; |328| 
        sti       r0,*+ar1(ir0)         ; |328| 
	.line	88
;----------------------------------------------------------------------
; 329 | p                                               = (float*) &highdemo;  
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      @CL24,r0              ; |329| 
        sti       r0,*+fp(18)           ; |329| 
	.line	90
;----------------------------------------------------------------------
; 331 | break;                                                                 
; 333 | case SUB_CCM:                                                          
;----------------------------------------------------------------------
        bu        L27                   ; |331| 
;*      Branch Occurs to L27            ; |331| 
L15:        
	.line	94
;----------------------------------------------------------------------
; 335 | STR_Analyzer_Info[0]            = ('F'<<8) | 'L';                      
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |335| 
        ldiu      17996,r0              ; |335| 
        sti       r0,*ar0               ; |335| 
	.line	95
;----------------------------------------------------------------------
; 336 | STR_Analyzer_Info[1]            = ('1'<<8) | 'R';                      
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |336| 
        ldiu      12626,r0              ; |336| 
        sti       r0,*ar0               ; |336| 
	.line	96
;----------------------------------------------------------------------
; 337 | STR_Analyzer_Info[2]            = ('3'<<8) | '0';                      
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |337| 
        ldiu      13104,r0              ; |337| 
        sti       r0,*ar0               ; |337| 
	.line	97
;----------------------------------------------------------------------
; 338 | STR_Analyzer_Info[3]            = ('1'<<8) | '4';                      
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |338| 
        ldiu      12596,r0              ; |338| 
        sti       r0,*ar0               ; |338| 
	.line	98
;----------------------------------------------------------------------
; 339 | ENABLED[OSC_OIL_CALC]           =  TRUE;                               
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |339| 
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |339| 
        ldiu      *ar0,ir0              ; |339| 
        ldiu      1,r0                  ; |339| 
        sti       r0,*+ar1(ir0)         ; |339| 
	.line	99
;----------------------------------------------------------------------
; 340 | ENABLED[OSC_WATER_CALC]         =  TRUE;                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |340| 
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |340| 
        ldiu      *ar0,ir0              ; |340| 
        sti       r0,*+ar1(ir0)         ; |340| 
	.line	100
;----------------------------------------------------------------------
; 341 | p                                                       = (float*) &ful
;     | ldemo;                                                                 
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,r0              ; |341| 
        sti       r0,*+fp(18)           ; |341| 
	.line	101
;----------------------------------------------------------------------
; 342 | DIO_CCM_START.val                       = FALSE;                       
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |342| 
        ldiu      0,r0                  ; |342| 
        sti       r0,*ar0               ; |342| 
	.line	102
;----------------------------------------------------------------------
; 343 | DIO_CCM_PURGE_STAT.val          = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |343| 
        sti       r0,*ar0               ; |343| 
	.line	103
;----------------------------------------------------------------------
; 344 | DIO_CCM_PURGE_TIME.val          = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      @CL27,ar0             ; |344| 
        sti       r0,*ar0               ; |344| 
	.line	104
;----------------------------------------------------------------------
; 345 | DIO_TOTALIZER_CONTROL.val       = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |345| 
        ldiu      1,r0                  ; |345| 
        sti       r0,*ar0               ; |345| 
	.line	106
;----------------------------------------------------------------------
; 347 | VAR_Update(&CCM_SETPOINT_PRESSURE[0],   200.0,  0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,ar2             ; |347| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |347| 
        ldp       @CL30+0,DP
        ldfu      @CL30+0,f2            ; |347| 40b float hi half
        ldp       @CL30+1,DP
        ldiu      0,rc                  ; |347| 
        ldiu      @CL30+1,r2            ; |347| 40b float lo half
        ldiu      0,r3                  ; |347| 
        callu     r0                    ; far call to _VAR_Update	; |347| 
                                        ; |347| Far Call Occurs
	.line	107
;----------------------------------------------------------------------
; 348 | VAR_Update(&CCM_SETPOINT_LEVEL[0],              66.0,   0, 0);         
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      @CL31,ar2             ; |348| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |348| 
        ldp       @CL32+0,DP
        ldfu      @CL32+0,f2            ; |348| 40b float hi half
        ldp       @CL32+1,DP
        ldiu      @CL32+1,r2            ; |348| 40b float lo half
        ldiu      0,rc                  ; |348| 
        ldiu      0,r3                  ; |348| 
        callu     r0                    ; far call to _VAR_Update	; |348| 
                                        ; |348| Far Call Occurs
	.line	108
;----------------------------------------------------------------------
; 349 | VAR_Update(&CCM_VESSEL_PRESSURE[0],     124.6,  0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar2             ; |349| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |349| 
        ldp       @CL34+0,DP
        ldfu      @CL34+0,f2            ; |349| 40b float hi half
        ldp       @CL34+1,DP
        ldiu      0,rc                  ; |349| 
        ldiu      @CL34+1,r2            ; |349| 40b float lo half
        ldiu      0,r3                  ; |349| 
        callu     r0                    ; far call to _VAR_Update	; |349| 
                                        ; |349| Far Call Occurs
	.line	109
;----------------------------------------------------------------------
; 350 | VAR_Update(&CCM_VESSEL_LEVEL[0],                68.2,   0, 0);         
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar2             ; |350| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |350| 
        ldp       @CL36+0,DP
        ldfu      @CL36+0,f2            ; |350| 40b float hi half
        ldp       @CL36+1,DP
        ldiu      0,rc                  ; |350| 
        ldiu      @CL36+1,r2            ; |350| 40b float lo half
        ldiu      0,r3                  ; |350| 
        callu     r0                    ; far call to _VAR_Update	; |350| 
                                        ; |350| Far Call Occurs
	.line	111
;----------------------------------------------------------------------
; 352 | CCM_PURGE               = 1000.0;                                      
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |352| 
        ldp       @CL38,DP
        ldfu      @CL38,f0              ; |352| 
        stf       f0,*ar0               ; |352| 
	.line	112
;----------------------------------------------------------------------
; 353 | CCM_DURATION    = 10.0;                                                
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |353| 
        ldfu      1.0000000000e+01,f0   ; |353| 
        stf       f0,*ar0               ; |353| 
	.line	113
;----------------------------------------------------------------------
; 354 | CCM_REMAINING   = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |354| 
        ldfu      0.0000000000e+00,f0   ; |354| 
        stf       f0,*ar0               ; |354| 
	.line	115
;----------------------------------------------------------------------
; 356 | VAR_Update(&FC[0].GROSS_OIL,    1929.0,                 0, 0);         
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar2             ; |356| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |356| 
        ldp       @CL42+0,DP
        ldfu      @CL42+0,f2            ; |356| 40b float hi half
        ldp       @CL42+1,DP
        ldiu      0,rc                  ; |356| 
        ldiu      @CL42+1,r2            ; |356| 40b float lo half
        ldiu      0,r3                  ; |356| 
        callu     r0                    ; far call to _VAR_Update	; |356| 
                                        ; |356| Far Call Occurs
	.line	116
;----------------------------------------------------------------------
; 357 | VAR_Update(&FC[0].GROSS_WATER,  1850.0,                 0, 0);         
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      @CL43,ar2             ; |357| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |357| 
        ldp       @CL44+0,DP
        ldfu      @CL44+0,f2            ; |357| 40b float hi half
        ldp       @CL44+1,DP
        ldiu      @CL44+1,r2            ; |357| 40b float lo half
        ldiu      0,rc                  ; |357| 
        ldiu      0,r3                  ; |357| 
        callu     r0                    ; far call to _VAR_Update	; |357| 
                                        ; |357| Far Call Occurs
	.line	117
;----------------------------------------------------------------------
; 358 | VAR_Update(&FC[0].GROSS_TOTAL,  1929.0+1850.0,  0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      @CL45,ar2             ; |358| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |358| 
        ldp       @CL46+0,DP
        ldfu      @CL46+0,f2            ; |358| 40b float hi half
        ldp       @CL46+1,DP
        ldiu      0,rc                  ; |358| 
        ldiu      @CL46+1,r2            ; |358| 40b float lo half
        ldiu      0,r3                  ; |358| 
        callu     r0                    ; far call to _VAR_Update	; |358| 
                                        ; |358| Far Call Occurs
	.line	118
;----------------------------------------------------------------------
; 359 | VAR_Update(&FC[0].FLOW_OIL,     192.9,                  0, 0);         
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar2             ; |359| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |359| 
        ldp       @CL48+0,DP
        ldfu      @CL48+0,f2            ; |359| 40b float hi half
        ldp       @CL48+1,DP
        ldiu      0,rc                  ; |359| 
        ldiu      @CL48+1,r2            ; |359| 40b float lo half
        ldiu      0,r3                  ; |359| 
        callu     r0                    ; far call to _VAR_Update	; |359| 
                                        ; |359| Far Call Occurs
	.line	119
;----------------------------------------------------------------------
; 360 | VAR_Update(&FC[0].FLOW_WATER,   185.0,                  0, 0);         
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldiu      @CL49,ar2             ; |360| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |360| 
        ldp       @CL50+0,DP
        ldfu      @CL50+0,f2            ; |360| 40b float hi half
        ldp       @CL50+1,DP
        ldiu      0,rc                  ; |360| 
        ldiu      @CL50+1,r2            ; |360| 40b float lo half
        ldiu      0,r3                  ; |360| 
        callu     r0                    ; far call to _VAR_Update	; |360| 
                                        ; |360| Far Call Occurs
	.line	120
;----------------------------------------------------------------------
; 361 | VAR_Update(&FC[0].FLOW_TOTAL,   192.9+185.0,    0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,ar2             ; |361| 
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |361| 
        ldp       @CL52+0,DP
        ldfu      @CL52+0,f2            ; |361| 40b float hi half
        ldp       @CL52+1,DP
        ldiu      @CL52+1,r2            ; |361| 40b float lo half
        ldiu      0,rc                  ; |361| 
        ldiu      0,r3                  ; |361| 
        callu     r0                    ; far call to _VAR_Update	; |361| 
                                        ; |361| Far Call Occurs
	.line	122
;----------------------------------------------------------------------
; 363 | COR[1].mass_total               = 327.5;                               
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      @CL53,ar0             ; |363| 
        ldp       @CL54,DP
        ldfu      @CL54,f0              ; |363| 
        stf       f0,*ar0               ; |363| 
	.line	123
;----------------------------------------------------------------------
; 364 | COR[1].mfr                              = 120.5;                       
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldiu      @CL55,ar0             ; |364| 
        ldfu      1.2050000000e+02,f0   ; |364| 
        stf       f0,*ar0               ; |364| 
	.line	124
;----------------------------------------------------------------------
; 365 | COR[1].volume_total     = 327.5;                                       
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |365| 
        ldp       @CL54,DP
        ldfu      @CL54,f0              ; |365| 
        stf       f0,*ar0               ; |365| 
	.line	125
;----------------------------------------------------------------------
; 366 | COR[1].vfr                              = 120.5;                       
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |366| 
        ldfu      1.2050000000e+02,f0   ; |366| 
        stf       f0,*ar0               ; |366| 
	.line	126
;----------------------------------------------------------------------
; 367 | COR[1].u_v                              = u_v_mscf;                    
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |367| 
        ldiu      248,r0                ; |367| 
        sti       r0,*ar0               ; |367| 
	.line	127
;----------------------------------------------------------------------
; 368 | COR[1].u_vfr                    = u_vfr_mscf_day;                      
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |368| 
        ldiu      249,r0                ; |368| 
        sti       r0,*ar0               ; |368| 
	.line	128
;----------------------------------------------------------------------
; 369 | COR[1].u_m                              = u_v_mscf;                    
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,ar0             ; |369| 
        ldiu      248,r0                ; |369| 
        sti       r0,*ar0               ; |369| 
	.line	129
;----------------------------------------------------------------------
; 370 | COR[1].u_mfr                    = u_vfr_mscf_day;                      
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      @CL61,ar0             ; |370| 
        ldiu      249,r0                ; |370| 
        sti       r0,*ar0               ; |370| 
	.line	130
;----------------------------------------------------------------------
; 371 | COR[0].density                  = 950.0;                               
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldiu      @CL62,ar0             ; |371| 
        ldp       @CL63,DP
        ldfu      @CL63,f0              ; |371| 
        stf       f0,*ar0               ; |371| 
	.line	131
;----------------------------------------------------------------------
; 372 | COR[1].density                  = 28.0;                                
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar0             ; |372| 
        ldfu      2.8000000000e+01,f0   ; |372| 
        stf       f0,*ar0               ; |372| 
	.line	132
;----------------------------------------------------------------------
; 373 | CCM_GAS_FLOW.unit               = COR[1].u_vfr;                        
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |373| 
        ldp       @CL65,DP
        ldiu      @CL65,ar1             ; |373| 
        ldiu      *ar0,r0               ; |373| 
        sti       r0,*ar1               ; |373| 
	.line	133
;----------------------------------------------------------------------
; 374 | CCM_GAS_FLOW.calc_unit  = COR[1].u_vfr;                                
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |374| 
        ldp       @CL66,DP
        ldiu      @CL66,ar1             ; |374| 
        ldiu      *ar0,r0               ; |374| 
        sti       r0,*ar1               ; |374| 
	.line	135
;----------------------------------------------------------------------
; 376 | VAR_Update(&CCM_GAS_FLOW, COR[1].mfr,0,0);                             
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldiu      @CL55,ar0             ; |376| 
        ldp       @CL4,DP
        ldiu      @CL4,r1               ; |376| 
        ldfu      *ar0,f0               ; |376| 
        ldiu      255,r3                ; |376| 
        ldfu      f0,f2                 ; |376| Move F32 into F40 for CONV
        andn      r3,f2                 ; |376| Bit mask for F32/F40 conversion
        ldp       @CL67,DP
        ldiu      0,r3                  ; |376| 
        ldiu      @CL67,ar2             ; |376| 
        ldiu      0,rc                  ; |376| 
        callu     r1                    ; far call to _VAR_Update	; |376| 
                                        ; |376| Far Call Occurs
	.line	137
;----------------------------------------------------------------------
; 378 | CCM_GAS_TOTAL.unit              = COR[1].u_v;                          
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |378| 
        ldp       @CL68,DP
        ldiu      @CL68,ar1             ; |378| 
        ldiu      *ar0,r0               ; |378| 
        sti       r0,*ar1               ; |378| 
	.line	138
;----------------------------------------------------------------------
; 379 | CCM_GAS_TOTAL.calc_unit = COR[1].u_v;                                  
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |379| 
        ldp       @CL69,DP
        ldiu      @CL69,ar1             ; |379| 
        ldiu      *ar0,r0               ; |379| 
        sti       r0,*ar1               ; |379| 
	.line	140
;----------------------------------------------------------------------
; 381 | VAR_Update(&CCM_GAS_TOTAL, COR[1].mass_total,0,0);                     
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      255,r3                ; |381| 
        ldiu      @CL53,ar0             ; |381| 
        ldp       @CL4,DP
        ldiu      0,rc                  ; |381| 
        ldiu      @CL4,r1               ; |381| 
        ldp       @CL70,DP
        ldfu      *ar0,f0               ; |381| 
        ldiu      @CL70,ar2             ; |381| 
        ldfu      f0,f2                 ; |381| Move F32 into F40 for CONV
        andn      r3,f2                 ; |381| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |381| 
        callu     r1                    ; far call to _VAR_Update	; |381| 
                                        ; |381| Far Call Occurs
	.line	142
;----------------------------------------------------------------------
; 383 | AO[1].MANUAL_PERCENT    = 35.8;                                        
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,ar0             ; |383| 
        ldp       @CL72,DP
        ldfu      @CL72,f0              ; |383| 
        stf       f0,*ar0               ; |383| 
	.line	143
;----------------------------------------------------------------------
; 384 | AO[2].MANUAL_PERCENT    = 16.9;                                        
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      @CL73,ar0             ; |384| 
        ldp       @CL74,DP
        ldfu      @CL74,f0              ; |384| 
        stf       f0,*ar0               ; |384| 
	.line	144
;----------------------------------------------------------------------
; 385 | AO[1].MANUAL                    = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,ar0             ; |385| 
        ldiu      1,r0                  ; |385| 
        sti       r0,*ar0               ; |385| 
	.line	145
;----------------------------------------------------------------------
; 386 | AO[2].MANUAL                    = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |386| 
        sti       r0,*ar0               ; |386| 
	.line	147
;----------------------------------------------------------------------
; 388 | break;                                                                 
; 390 | case SUB_LOW:                                                          
; 391 | default:                                                               
;----------------------------------------------------------------------
        bu        L27                   ; |388| 
;*      Branch Occurs to L27            ; |388| 
L17:        
	.line	152
;----------------------------------------------------------------------
; 393 | mode                                    = SUB_LOW;                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |393| 
        sti       r0,*+fp(2)            ; |393| 
	.line	153
;----------------------------------------------------------------------
; 394 | DEMO_ANALYZER_MODE.val  = mode;                                        
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      @CL77,ar0             ; |394| 
        float     *+fp(2),f0            ; |394| 
        stf       f0,*ar0               ; |394| 
	.line	154
;----------------------------------------------------------------------
; 395 | STR_Analyzer_Info[0]    = ('L'<<8) | 'U';                              
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |395| 
        ldiu      19541,r0              ; |395| 
        sti       r0,*ar0               ; |395| 
	.line	155
;----------------------------------------------------------------------
; 396 | STR_Analyzer_Info[1]    = ('3'<<8) | 'R';                              
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |396| 
        ldiu      13138,r0              ; |396| 
        sti       r0,*ar0               ; |396| 
	.line	156
;----------------------------------------------------------------------
; 397 | STR_Analyzer_Info[2]    = ('1'<<8) | '0';                              
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |397| 
        ldiu      12592,r0              ; |397| 
        sti       r0,*ar0               ; |397| 
	.line	157
;----------------------------------------------------------------------
; 398 | STR_Analyzer_Info[3]    = ('2'<<8) | '0';                              
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |398| 
        ldiu      12848,r0              ; |398| 
        sti       r0,*ar0               ; |398| 
	.line	158
;----------------------------------------------------------------------
; 399 | ENABLED[OSC_OIL_CALC]   =  TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar1              ; |399| 
        ldp       @CL13,DP
        ldiu      *ar1,ir0              ; |399| 
        ldiu      @CL13,ar0             ; |399| 
        ldiu      1,r0                  ; |399| 
        sti       r0,*+ar0(ir0)         ; |399| 
	.line	159
;----------------------------------------------------------------------
; 400 | p                                               = (float*) &lowdemo;   
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,r0              ; |400| 
        sti       r0,*+fp(18)           ; |400| 
	.line	161
;----------------------------------------------------------------------
; 402 | break;                                                                 
;----------------------------------------------------------------------
        bu        L27                   ; |402| 
;*      Branch Occurs to L27            ; |402| 
L19:        
	.line	43
        ldiu      *+fp(2),r0            ; |284| 
        cmpi      0,r0                  ; |284| 
        beq       L17                   ; |284| 
;*      Branch Occurs to L17            ; |284| 
        cmpi      1,r0                  ; |284| 
        beq       L11                   ; |284| 
;*      Branch Occurs to L11            ; |284| 
        cmpi      2,r0                  ; |284| 
        beq       L12                   ; |284| 
;*      Branch Occurs to L12            ; |284| 
        cmpi      3,r0                  ; |284| 
        beq       L13                   ; |284| 
;*      Branch Occurs to L13            ; |284| 
        cmpi      4,r0                  ; |284| 
        beq       L14                   ; |284| 
;*      Branch Occurs to L14            ; |284| 
        cmpi      5,r0                  ; |284| 
        beq       L12                   ; |284| 
;*      Branch Occurs to L12            ; |284| 
        cmpi      6,r0                  ; |284| 
        beq       L15                   ; |284| 
;*      Branch Occurs to L15            ; |284| 
        bu        L17                   ; |284| 
;*      Branch Occurs to L17            ; |284| 
L27:        
	.line	165
;----------------------------------------------------------------------
; 406 | w_lo  = p[0];                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(18),ar0          ; |406| 
        ldfu      *ar0,f0               ; |406| 
        stf       f0,*+fp(8)            ; |406| 
	.line	166
;----------------------------------------------------------------------
; 407 | w_hi  = p[1];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(1),f0           ; |407| 
        stf       f0,*+fp(9)            ; |407| 
	.line	167
;----------------------------------------------------------------------
; 408 | t_lo  = p[2];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(2),f0           ; |408| 
        stf       f0,*+fp(10)           ; |408| 
	.line	168
;----------------------------------------------------------------------
; 409 | t_hi  = p[3];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(3),f0           ; |409| 
        stf       f0,*+fp(11)           ; |409| 
	.line	169
;----------------------------------------------------------------------
; 410 | s_lo  = p[4];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(4),f0           ; |410| 
        stf       f0,*+fp(6)            ; |410| 
	.line	170
;----------------------------------------------------------------------
; 411 | s_hi  = p[5];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(5),f0           ; |411| 
        stf       f0,*+fp(7)            ; |411| 
	.line	171
;----------------------------------------------------------------------
; 412 | fo_lo = p[6];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(6),f0           ; |412| 
        stf       f0,*+fp(12)           ; |412| 
	.line	172
;----------------------------------------------------------------------
; 413 | fo_hi = p[7];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(7),f0           ; |413| 
        stf       f0,*+fp(13)           ; |413| 
	.line	173
;----------------------------------------------------------------------
; 414 | fw_lo = p[8];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(8),f0           ; |414| 
        stf       f0,*+fp(14)           ; |414| 
	.line	174
;----------------------------------------------------------------------
; 415 | fw_hi = p[9];                                                          
;----------------------------------------------------------------------
        ldfu      *+ar0(9),f0           ; |415| 
        stf       f0,*+fp(15)           ; |415| 
	.line	175
;----------------------------------------------------------------------
; 416 | p0        = p[10];                                                     
;----------------------------------------------------------------------
        ldfu      *+ar0(10),f0          ; |416| 
        stf       f0,*+fp(16)           ; |416| 
	.line	176
;----------------------------------------------------------------------
; 417 | p1    = p[11];                                                         
;----------------------------------------------------------------------
        ldfu      *+ar0(11),f0          ; |417| 
        stf       f0,*+fp(17)           ; |417| 
	.line	178
;----------------------------------------------------------------------
; 419 | SALT_MAX = p[12];                                                      
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      ar0,ar1
        ldiu      @CL79,ar0             ; |419| 
        ldfu      *+ar1(12),f0          ; |419| 
        stf       f0,*ar0               ; |419| 
	.line	179
;----------------------------------------------------------------------
; 420 | p           += 13;                                                     
;----------------------------------------------------------------------
        ldiu      13,r0                 ; |420| 
        addi      *+fp(18),r0           ; |420| Unsigned
        sti       r0,*+fp(18)           ; |420| 
	.line	181
;----------------------------------------------------------------------
; 422 | for (i=0;i<=SALT_MAX;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |422| 
        sti       r0,*+fp(3)            ; |422| 
        ldiu      @CL79,ar0             ; |422| 
        float     *+fp(3),f0            ; |422| 
        cmpf3     *ar0,f0               ; |422| 
        bgt       L29                   ; |422| 
;*      Branch Occurs to L29            ; |422| 
L28:        
	.line	182
;----------------------------------------------------------------------
; 423 | SALTS[i] = p[i];                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1           ; |423| 
        ldp       @CL80,DP
        ldiu      *+fp(18),ir0          ; |423| 
        ldiu      ar1,ir1               ; |423| 
        ldiu      @CL80,ar0             ; |423| 
        ldfu      *+ar1(ir0),f0         ; |423| 
        stf       f0,*+ar0(ir1)         ; |423| 
	.line	181
        ldiu      1,r0                  ; |422| 
        addi      *+fp(3),r0            ; |422| 
        sti       r0,*+fp(3)            ; |422| 
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |422| 
        float     *+fp(3),f0            ; |422| 
        cmpf3     *ar0,f0               ; |422| 
        ble       L28                   ; |422| 
;*      Branch Occurs to L28            ; |422| 
L29:        
	.line	184
;----------------------------------------------------------------------
; 425 | p                       += (int) (SALT_MAX+1);                         
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |425| 
        ldfu      1.0000000000e+00,f0   ; |425| 
        addf3     f0,*ar0,f0            ; |425| 
        negf      f0,f1                 ; |425| 
        fix       f1,r1                 ; |425| 
        fix       f0,r0                 ; |425| 
        negi      r1,r1                 ; |425| 
        ldile     r1,r0                 ; |425| 
        addi      *+fp(18),r0           ; |425| Unsigned
        sti       r0,*+fp(18)           ; |425| 
	.line	185
;----------------------------------------------------------------------
; 426 | TEMP_OIL_MAX = p[0];                                                   
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldiu      r0,ar0
        ldiu      @CL81,ar1             ; |426| 
        ldfu      *ar0,f0               ; |426| 
        stf       f0,*ar1               ; |426| 
	.line	186
;----------------------------------------------------------------------
; 427 | p++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |427| 
        addi      *+fp(18),r0           ; |427| Unsigned
        sti       r0,*+fp(18)           ; |427| 
	.line	188
;----------------------------------------------------------------------
; 429 | for (i=0;i<=TEMP_OIL_MAX;i++)                                          
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |429| 
        sti       r0,*+fp(3)            ; |429| 
        ldiu      @CL81,ar0             ; |429| 
        float     *+fp(3),f0            ; |429| 
        cmpf3     *ar0,f0               ; |429| 
        bgt       L31                   ; |429| 
;*      Branch Occurs to L31            ; |429| 
L30:        
	.line	189
;----------------------------------------------------------------------
; 430 | TEMPS_OIL[i] = p[i];                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |430| 
        ldp       @CL82,DP
        ldiu      *+fp(18),ir0          ; |430| 
        ldiu      ar0,ir1               ; |430| 
        ldiu      @CL82,ar1             ; |430| 
        ldfu      *+ar0(ir0),f0         ; |430| 
        stf       f0,*+ar1(ir1)         ; |430| 
	.line	188
        ldiu      1,r0                  ; |429| 
        addi      *+fp(3),r0            ; |429| 
        sti       r0,*+fp(3)            ; |429| 
        ldp       @CL81,DP
        ldiu      @CL81,ar0             ; |429| 
        float     *+fp(3),f0            ; |429| 
        cmpf3     *ar0,f0               ; |429| 
        ble       L30                   ; |429| 
;*      Branch Occurs to L30            ; |429| 
L31:        
	.line	191
;----------------------------------------------------------------------
; 432 | p                               += (int) (TEMP_OIL_MAX+1);             
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldiu      @CL81,ar0             ; |432| 
        ldfu      1.0000000000e+00,f0   ; |432| 
        addf3     f0,*ar0,f0            ; |432| 
        negf      f0,f1                 ; |432| 
        fix       f1,r1                 ; |432| 
        fix       f0,r0                 ; |432| 
        negi      r1,r1                 ; |432| 
        ldile     r1,r0                 ; |432| 
        addi      *+fp(18),r0           ; |432| Unsigned
        sti       r0,*+fp(18)           ; |432| 
	.line	192
;----------------------------------------------------------------------
; 433 | TEMP_WATER_MAX   = p[0];                                               
;----------------------------------------------------------------------
        ldp       @CL83,DP
        ldiu      r0,ar0
        ldiu      @CL83,ar1             ; |433| 
        ldfu      *ar0,f0               ; |433| 
        stf       f0,*ar1               ; |433| 
	.line	193
;----------------------------------------------------------------------
; 434 | p++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |434| 
        addi      *+fp(18),r0           ; |434| Unsigned
        sti       r0,*+fp(18)           ; |434| 
	.line	195
;----------------------------------------------------------------------
; 436 | for (i=0;i<=TEMP_WATER_MAX;i++)                                        
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |436| 
        sti       r0,*+fp(3)            ; |436| 
        ldiu      @CL83,ar0             ; |436| 
        float     *+fp(3),f0            ; |436| 
        cmpf3     *ar0,f0               ; |436| 
        bgt       L33                   ; |436| 
;*      Branch Occurs to L33            ; |436| 
L32:        
	.line	196
;----------------------------------------------------------------------
; 437 | TEMPS_WATER[i] = p[i];                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1           ; |437| 
        ldp       @CL84,DP
        ldiu      *+fp(18),ir1          ; |437| 
        ldiu      ar1,ir0               ; |437| 
        ldiu      @CL84,ar0             ; |437| 
        ldfu      *+ar1(ir1),f0         ; |437| 
        stf       f0,*+ar0(ir0)         ; |437| 
	.line	195
        ldiu      1,r0                  ; |436| 
        addi      *+fp(3),r0            ; |436| 
        sti       r0,*+fp(3)            ; |436| 
        ldp       @CL83,DP
        ldiu      @CL83,ar0             ; |436| 
        float     *+fp(3),f0            ; |436| 
        cmpf3     *ar0,f0               ; |436| 
        ble       L32                   ; |436| 
;*      Branch Occurs to L32            ; |436| 
L33:        
	.line	198
;----------------------------------------------------------------------
; 439 | p += (int) (TEMP_WATER_MAX+1);                                         
;----------------------------------------------------------------------
        ldp       @CL83,DP
        ldiu      @CL83,ar0             ; |439| 
        ldfu      1.0000000000e+00,f0   ; |439| 
        addf3     f0,*ar0,f0            ; |439| 
        negf      f0,f1                 ; |439| 
        fix       f1,r1                 ; |439| 
        fix       f0,r0                 ; |439| 
        negi      r1,r1                 ; |439| 
        ldile     r1,r0                 ; |439| 
        addi      *+fp(18),r0           ; |439| Unsigned
        sti       r0,*+fp(18)           ; |439| 
	.line	200
;----------------------------------------------------------------------
; 441 | for (i=0;i<=TEMP_OIL_MAX;i++)                                          
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |441| 
        sti       r0,*+fp(3)            ; |441| 
        ldp       @CL81,DP
        ldiu      @CL81,ar0             ; |441| 
        float     *+fp(3),f0            ; |441| 
        cmpf3     *ar0,f0               ; |441| 
        bgt       L35                   ; |441| 
;*      Branch Occurs to L35            ; |441| 
L34:        
	.line	202
;----------------------------------------------------------------------
; 443 | COEFF_TEMP_OIL[i][0] = p[(4*i)+3];                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |443| 
        ldp       @CL5,DP
        ldiu      ar0,ir0               ; |443| 
        ash       2,ar0                 ; |443| 
        ldiu      @CL5,ar1              ; |443| 
        addi      *+fp(18),ar0          ; |443| Unsigned
        ash       2,ir0                 ; |443| 
        ldfu      *+ar0(3),f0           ; |443| 
        stf       f0,*+ar1(ir0)         ; |443| 
	.line	203
;----------------------------------------------------------------------
; 444 | COEFF_TEMP_OIL[i][1] = p[(4*i)+2];                                     
;----------------------------------------------------------------------
        ldp       @CL85,DP
        ldiu      *+fp(3),ar0           ; |444| 
        ash       2,ar0                 ; |444| 
        ldiu      *+fp(3),ir0           ; |444| 
        ldiu      @CL85,ar1             ; |444| 
        addi      *+fp(18),ar0          ; |444| Unsigned
        ash       2,ir0                 ; |444| 
        ldfu      *+ar0(2),f0           ; |444| 
        stf       f0,*+ar1(ir0)         ; |444| 
	.line	204
;----------------------------------------------------------------------
; 445 | COEFF_TEMP_OIL[i][2] = p[(4*i)+1];                                     
;----------------------------------------------------------------------
        ldp       @CL86,DP
        ldiu      *+fp(3),ar0           ; |445| 
        ash       2,ar0                 ; |445| 
        ldiu      *+fp(3),ir0           ; |445| 
        ldiu      @CL86,ar1             ; |445| 
        addi      *+fp(18),ar0          ; |445| Unsigned
        ash       2,ir0                 ; |445| 
        ldfu      *+ar0(1),f0           ; |445| 
        stf       f0,*+ar1(ir0)         ; |445| 
	.line	205
;----------------------------------------------------------------------
; 446 | COEFF_TEMP_OIL[i][3] = p[(4*i)+0];                                     
;----------------------------------------------------------------------
        ldp       @CL87,DP
        ldiu      *+fp(3),ar0           ; |446| 
        ldiu      ar0,ir0               ; |446| 
        ash       2,ar0                 ; |446| 
        ldiu      *+fp(18),ir1          ; |446| 
        ash       2,ir0                 ; |446| 
        ldiu      @CL87,ar1             ; |446| 
        ldfu      *+ar0(ir1),f0         ; |446| 
        stf       f0,*+ar1(ir0)         ; |446| 
	.line	200
        ldiu      1,r0                  ; |441| 
        addi      *+fp(3),r0            ; |441| 
        sti       r0,*+fp(3)            ; |441| 
        ldp       @CL81,DP
        ldiu      @CL81,ar0             ; |441| 
        float     *+fp(3),f0            ; |441| 
        cmpf3     *ar0,f0               ; |441| 
        ble       L34                   ; |441| 
;*      Branch Occurs to L34            ; |441| 
L35:        
	.line	208
;----------------------------------------------------------------------
; 449 | p += (int) (4*(TEMP_OIL_MAX+1));                                       
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldiu      @CL81,ar0             ; |449| 
        ldfu      1.0000000000e+00,f0   ; |449| 
        addf3     f0,*ar0,f0            ; |449| 
        mpyf      4.0000000000e+00,f0   ; |449| 
        negf      f0,f1                 ; |449| 
        fix       f1,r1                 ; |449| 
        fix       f0,r0                 ; |449| 
        negi      r1,r1                 ; |449| 
        ldile     r1,r0                 ; |449| 
        addi      *+fp(18),r0           ; |449| Unsigned
        sti       r0,*+fp(18)           ; |449| 
	.line	209
;----------------------------------------------------------------------
; 450 | s  = p;                                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(19)           ; |450| 
	.line	211
;----------------------------------------------------------------------
; 452 | for (i=0;i<=SALT_MAX;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |452| 
        sti       r0,*+fp(3)            ; |452| 
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |452| 
        float     *+fp(3),f0            ; |452| 
        cmpf3     *ar0,f0               ; |452| 
        bgt       L39                   ; |452| 
;*      Branch Occurs to L39            ; |452| 
L36:        
	.line	213
;----------------------------------------------------------------------
; 454 | for (j=0;j<=TEMP_WATER_MAX;j++)                                        
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |454| 
        sti       r0,*+fp(4)            ; |454| 
        ldp       @CL83,DP
        ldiu      @CL83,ar0             ; |454| 
        float     *+fp(4),f0            ; |454| 
        cmpf3     *ar0,f0               ; |454| 
        ldfu      1.0000000000e+00,f3   ; |456| 
        bgt       L38                   ; |454| 
;*      Branch Occurs to L38            ; |454| 
L37:        
	.line	215
;----------------------------------------------------------------------
; 456 | k                                                                = ((TE
;     | MP_WATER_MAX+1)*4*i)+(4*j);                                            
;----------------------------------------------------------------------
        ldp       @CL83,DP
        ldiu      *+fp(4),r1            ; |456| 
        ldiu      @CL83,ar0             ; |456| 
        float     *+fp(3),f2            ; |456| 
        addf3     f3,*ar0,f0            ; |456| 
        ash       2,r1                  ; |456| 
        mpyf      4.0000000000e+00,f0   ; |456| 
        float     r1,f1                 ; |456| 
        mpyf3     f2,f0,f0              ; |456| 
        addf3     f0,f1,f0              ; |456| 
        negf      f0,f2                 ; |456| 
        fix       f0,r1                 ; |456| 
        fix       f2,r0                 ; |456| 
        negi      r0,r0                 ; |456| 
        ldile     r0,r1                 ; |456| 
        sti       r1,*+fp(5)            ; |456| 
	.line	216
;----------------------------------------------------------------------
; 457 | COEFF_SALT_TEMP_WATER[i][j][0]   = p[k+3];                             
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar1              ; |457| 
        ldiu      r1,ar0                ; |457| 
        ldiu      *+fp(3),r0            ; |457| 
        ldiu      *+fp(4),r1            ; |457| 
        addi      *+fp(18),ar0          ; |457| Unsigned
        ash       2,r1                  ; |457| 
        mpyi      60,r0                 ; |457| 
        addi3     r1,r0,ir0             ; |457| Unsigned
        ldfu      *+ar0(3),f0           ; |457| 
        stf       f0,*+ar1(ir0)         ; |457| 
	.line	217
;----------------------------------------------------------------------
; 458 | COEFF_SALT_TEMP_WATER[i][j][1]   = p[k+2];                             
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      *+fp(5),ar0           ; |458| 
        ldiu      *+fp(3),r0            ; |458| 
        ldiu      *+fp(4),r1            ; |458| 
        mpyi      60,r0                 ; |458| 
        ash       2,r1                  ; |458| 
        addi3     r1,r0,ir0             ; |458| Unsigned
        addi      *+fp(18),ar0          ; |458| Unsigned
        ldiu      @CL88,ar1             ; |458| 
        ldfu      *+ar0(2),f0           ; |458| 
        stf       f0,*+ar1(ir0)         ; |458| 
	.line	218
;----------------------------------------------------------------------
; 459 | COEFF_SALT_TEMP_WATER[i][j][2]   = p[k+1];                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |459| 
        ldiu      *+fp(5),ar1           ; |459| 
        mpyi      60,r0                 ; |459| 
        addi      *+fp(18),ar1          ; |459| Unsigned
        ldiu      *+fp(4),r1            ; |459| 
        ash       2,r1                  ; |459| 
        ldp       @CL89,DP
        addi3     r1,r0,ir0             ; |459| Unsigned
        ldiu      @CL89,ar0             ; |459| 
        ldfu      *+ar1(1),f0           ; |459| 
        stf       f0,*+ar0(ir0)         ; |459| 
	.line	219
;----------------------------------------------------------------------
; 460 | COEFF_SALT_TEMP_WATER[i][j][3]   = p[k+0];                             
;----------------------------------------------------------------------
        ldp       @CL90,DP
        ldiu      *+fp(3),r0            ; |460| 
        ldiu      *+fp(4),r1            ; |460| 
        ash       2,r1                  ; |460| 
        mpyi      60,r0                 ; |460| 
        ldiu      *+fp(5),ar1           ; |460| 
        addi3     r1,r0,ir0             ; |460| Unsigned
        ldiu      *+fp(18),ir1          ; |460| 
        ldiu      @CL90,ar0             ; |460| 
        ldfu      *+ar1(ir1),f0         ; |460| 
        stf       f0,*+ar0(ir0)         ; |460| 
	.line	220
;----------------------------------------------------------------------
; 461 | s                                                               += 4;  
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |461| 
        addi      *+fp(19),r0           ; |461| Unsigned
        sti       r0,*+fp(19)           ; |461| 
	.line	213
        ldiu      1,r0                  ; |454| 
        addi      *+fp(4),r0            ; |454| 
        sti       r0,*+fp(4)            ; |454| 
        ldp       @CL83,DP
        ldiu      @CL83,ar0             ; |454| 
        float     *+fp(4),f0            ; |454| 
        cmpf3     *ar0,f0               ; |454| 
        ble       L37                   ; |454| 
;*      Branch Occurs to L37            ; |454| 
L38:        
	.line	211
        ldiu      1,r0                  ; |452| 
        addi      *+fp(3),r0            ; |452| 
        sti       r0,*+fp(3)            ; |452| 
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |452| 
        float     *+fp(3),f0            ; |452| 
        cmpf3     *ar0,f0               ; |452| 
        ble       L36                   ; |452| 
;*      Branch Occurs to L36            ; |452| 
L39:        
	.line	224
;----------------------------------------------------------------------
; 465 | SIM_TEMPERATURE_EXTERNAL        = s[0];                                
;----------------------------------------------------------------------
        ldp       @CL91,DP
        ldiu      *+fp(19),ar1          ; |465| 
        ldiu      @CL91,ar0             ; |465| 
        ldfu      *ar1,f0               ; |465| 
        stf       f0,*ar0               ; |465| 
	.line	225
;----------------------------------------------------------------------
; 466 | SIM_VINC[OSC_OIL_CALC]          = s[1];                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar1              ; |466| 
        ldp       @CL9,DP
        ldiu      @CL9,ar2              ; |466| 
        ldiu      *+fp(19),ar0          ; |466| 
        ldiu      *ar1,ir0              ; |466| 
        ldfu      *+ar0(1),f0           ; |466| 
        stf       f0,*+ar2(ir0)         ; |466| 
	.line	226
;----------------------------------------------------------------------
; 467 | SIM_VREF[OSC_OIL_CALC]          = s[2];                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar1              ; |467| 
        ldp       @CL11,DP
        ldiu      *+fp(19),ar0          ; |467| 
        ldiu      @CL11,ar2             ; |467| 
        ldiu      *ar1,ir0              ; |467| 
        ldfu      *+ar0(2),f0           ; |467| 
        stf       f0,*+ar2(ir0)         ; |467| 
	.line	227
;----------------------------------------------------------------------
; 468 | SIM_FREQ[OSC_OIL_CALC]          = s[3];                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar2              ; |468| 
        ldp       @CL12,DP
        ldiu      *+fp(19),ar1          ; |468| 
        ldiu      @CL12,ar0             ; |468| 
        ldiu      *ar2,ir0              ; |468| 
        ldfu      *+ar1(3),f0           ; |468| 
        stf       f0,*+ar0(ir0)         ; |468| 
	.line	228
;----------------------------------------------------------------------
; 469 | SIM_VINC[OSC_WATER_CALC]        = s[4];                                
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar1              ; |469| 
        ldiu      *ar1,ir0              ; |469| 
        ldp       @CL9,DP
        ldiu      *+fp(19),ar0          ; |469| 
        ldiu      @CL9,ar2              ; |469| 
        ldfu      *+ar0(4),f0           ; |469| 
        stf       f0,*+ar2(ir0)         ; |469| 
	.line	229
;----------------------------------------------------------------------
; 470 | SIM_VREF[OSC_WATER_CALC]        = s[5];                                
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar2              ; |470| 
        ldp       @CL11,DP
        ldiu      *+fp(19),ar1          ; |470| 
        ldiu      @CL11,ar0             ; |470| 
        ldiu      *ar2,ir0              ; |470| 
        ldfu      *+ar1(5),f0           ; |470| 
        stf       f0,*+ar0(ir0)         ; |470| 
	.line	230
;----------------------------------------------------------------------
; 471 | SIM_FREQ[OSC_WATER_CALC]        = s[6];                                
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |471| 
        ldiu      *+fp(19),ar2          ; |471| 
        ldp       @CL12,DP
        ldiu      *ar0,ir0              ; |471| 
        ldiu      @CL12,ar1             ; |471| 
        ldfu      *+ar2(6),f0           ; |471| 
        stf       f0,*+ar1(ir0)         ; |471| 
	.line	232
;----------------------------------------------------------------------
; 473 | Copy_CAPDATA(&Cap_Oil,   0, 1); /* clear */                            
;----------------------------------------------------------------------
        ldp       @CL93,DP
        ldiu      1,r3                  ; |473| 
        ldiu      @CL93,r0              ; |473| 
        ldp       @CL92,DP
        ldiu      0,r2                  ; |473| 
        ldiu      @CL92,ar2             ; |473| 
        callu     r0                    ; far call to _Copy_CAPDATA	; |473| 
                                        ; |473| Far Call Occurs
	.line	233
;----------------------------------------------------------------------
; 474 | Copy_CAPDATA(&Cap_Water, 0, 1); /* clear */                            
;----------------------------------------------------------------------
        ldp       @CL93,DP
        ldiu      @CL93,r0              ; |474| 
        ldp       @CL94,DP
        ldiu      1,r3                  ; |474| 
        ldiu      0,r2                  ; |474| 
        ldiu      @CL94,ar2             ; |474| 
        callu     r0                    ; far call to _Copy_CAPDATA	; |474| 
                                        ; |474| Far Call Occurs
	.line	235
;----------------------------------------------------------------------
; 476 | for (i=0;i<SMAX;i++)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |476| 
        sti       r0,*+fp(3)            ; |476| 
        ldfu      0.0000000000e+00,f2   ; |497| 
        ldiu      8,r3                  ; |494| 
        ldfu      0.0000000000e+00,f1   ; |496| 
        ldiu      8,rc                  ; |495| 
        ldiu      16,rs                 ; |494| 
        ldiu      24,re                 ; |494| 
        ldiu      8,bk                  ; |486| 
        ldiu      8,r5                  ; |485| 
        ldiu      16,r4                 ; |485| 
        ldiu      24,ir1                ; |485| 
        cmpi      60,r0                 ; |476| 
        bge       L41                   ; |476| 
;*      Branch Occurs to L41            ; |476| 
L40:        
	.line	237
;----------------------------------------------------------------------
; 478 | Cap_Records[i].Watercut[0]                              = Cap_Oil.Water
;     | cut;                                                                   
;----------------------------------------------------------------------
        ldp       @CL96,DP
        ldiu      *+fp(3),ir0           ; |478| 
        ldiu      @CL96,ar0             ; |478| 
        ldp       @CL95,DP
        mpyi      20,ir0                ; |478| 
        ldiu      @CL95,ar1             ; |478| 
        ldfu      *ar0,f0               ; |478| 
        stf       f0,*+ar1(ir0)         ; |478| 
	.line	238
;----------------------------------------------------------------------
; 479 | Cap_Records[i].Temperature[0]                   = Cap_Oil.Temperature; 
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,ar1             ; |479| 
        ldiu      *+fp(3),ir0           ; |479| 
        ldp       @CL97,DP
        mpyi      20,ir0                ; |479| 
        ldiu      @CL97,ar0             ; |479| 
        ldfu      *ar1,f0               ; |479| 
        stf       f0,*+ar0(ir0)         ; |479| 
	.line	239
;----------------------------------------------------------------------
; 480 | Cap_Records[i].Salinity[0]                              = Cap_Oil.Salin
;     | ity;                                                                   
;----------------------------------------------------------------------
        ldp       @CL100,DP
        ldiu      @CL100,ar0            ; |480| 
        ldp       @CL99,DP
        ldiu      *+fp(3),ir0           ; |480| 
        ldiu      @CL99,ar1             ; |480| 
        mpyi      20,ir0                ; |480| 
        ldfu      *ar0,f0               ; |480| 
        stf       f0,*+ar1(ir0)         ; |480| 
	.line	240
;----------------------------------------------------------------------
; 481 | Cap_Records[i].Frequency_Oil[0]                 = Cap_Oil.Frequency_Oil
;     | ;                                                                      
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |481| 
        ldp       @CL101,DP
        ldiu      *+fp(3),ir0           ; |481| 
        ldiu      @CL101,ar1            ; |481| 
        mpyi      20,ir0                ; |481| 
        ldfu      *ar0,f0               ; |481| 
        stf       f0,*+ar1(ir0)         ; |481| 
	.line	241
;----------------------------------------------------------------------
; 482 | Cap_Records[i].Frequency_Water[0]               = Cap_Oil.Frequency_Wat
;     | er;                                                                    
;----------------------------------------------------------------------
        ldp       @CL104,DP
        ldiu      *+fp(3),ir0           ; |482| 
        ldiu      @CL104,ar0            ; |482| 
        ldp       @CL103,DP
        mpyi      20,ir0                ; |482| 
        ldiu      @CL103,ar1            ; |482| 
        ldfu      *ar0,f0               ; |482| 
        stf       f0,*+ar1(ir0)         ; |482| 
	.line	242
;----------------------------------------------------------------------
; 483 | Cap_Records[i].RefPower_Oil[0]                  = Cap_Oil.RefPower_Oil;
;----------------------------------------------------------------------
        ldp       @CL106,DP
        ldiu      @CL106,ar0            ; |483| 
        ldp       @CL105,DP
        ldiu      *+fp(3),ir0           ; |483| 
        ldiu      @CL105,ar1            ; |483| 
        mpyi      20,ir0                ; |483| 
        ldfu      *ar0,f0               ; |483| 
        stf       f0,*+ar1(ir0)         ; |483| 
	.line	243
;----------------------------------------------------------------------
; 484 | Cap_Records[i].RefPower_Water[0]                = Cap_Oil.RefPower_Wate
;     | r;                                                                     
;----------------------------------------------------------------------
        ldp       @CL108,DP
        ldiu      *+fp(3),ir0           ; |484| 
        ldiu      @CL108,ar0            ; |484| 
        ldp       @CL107,DP
        mpyi      20,ir0                ; |484| 
        ldiu      @CL107,ar1            ; |484| 
        ldfu      *ar0,f0               ; |484| 
        stf       f0,*+ar1(ir0)         ; |484| 
	.line	244
;----------------------------------------------------------------------
; 485 | Cap_Records[i].Time_MONTH_DAY_HH_MM[0]  = (Cap_Oil.Time_MONTH<<24)|(Cap
;     | _Oil.Time_DAY<<16)|(Cap_Oil.Time_HH<<8)|(Cap_Oil.Time_MM);             
;----------------------------------------------------------------------
        ldp       @CL113,DP
        ldiu      @CL113,ar0            ; |485| 
        ldp       @CL112,DP
        ldiu      @CL112,ar4            ; |485| 
        ldp       @CL111,DP
        ldiu      @CL111,ar1            ; |485| 
        ldp       @CL110,DP
        ash3      ir1,*ar0,r0           ; |485| 
        ash3      r4,*ar4,r6            ; |485| 
        ldiu      @CL110,ar0            ; |485| 
        or3       r0,r6,r0              ; |485| 
        ash3      r5,*ar1,ar1           ; |485| 
        ldiu      *+fp(3),ir0           ; |485| 
        ldp       @CL109,DP
        or3       r0,ar1,r0             ; |485| 
        mpyi      20,ir0                ; |485| 
        ldiu      @CL109,ar2            ; |485| 
        or3       r0,*ar0,r0            ; |485| 
        sti       r0,*+ar2(ir0)         ; |485| 
	.line	245
;----------------------------------------------------------------------
; 486 | Cap_Records[i].CLRSTAT_Time_YEAR[0]             = (Cap_Oil.Time_YEAR<<8
;     | )|(Cap_Oil.Time_DAY_OF_WEEK);                                          
;----------------------------------------------------------------------
        ldp       @CL116,DP
        ldiu      @CL116,ar2            ; |486| 
        ldp       @CL115,DP
        ldiu      @CL115,ar1            ; |486| 
        ldp       @CL114,DP
        ldiu      *+fp(3),ir0           ; |486| 
        ldiu      @CL114,ar0            ; |486| 
        ash3      bk,*ar2,r0            ; |486| 
        mpyi      20,ir0                ; |486| 
        or3       r0,*ar1,r0            ; |486| 
        sti       r0,*+ar0(ir0)         ; |486| 
	.line	246
;----------------------------------------------------------------------
; 487 | Cap_Records[i].Watercut[1]                              = Cap_Water.Wat
;     | ercut;                                                                 
;----------------------------------------------------------------------
        ldp       @CL118,DP
        ldiu      @CL118,ar1            ; |487| 
        ldp       @CL117,DP
        ldiu      @CL117,ar0            ; |487| 
        ldiu      *+fp(3),ir0           ; |487| 
        mpyi      20,ir0                ; |487| 
        ldfu      *ar1,f0               ; |487| 
        stf       f0,*+ar0(ir0)         ; |487| 
	.line	247
;----------------------------------------------------------------------
; 488 | Cap_Records[i].Temperature[1]                   = Cap_Water.Temperature
;     | ;                                                                      
;----------------------------------------------------------------------
        ldp       @CL120,DP
        ldiu      @CL120,ar0            ; |488| 
        ldp       @CL119,DP
        ldiu      *+fp(3),ir0           ; |488| 
        ldiu      @CL119,ar1            ; |488| 
        mpyi      20,ir0                ; |488| 
        ldfu      *ar0,f0               ; |488| 
        stf       f0,*+ar1(ir0)         ; |488| 
	.line	248
;----------------------------------------------------------------------
; 489 | Cap_Records[i].Salinity[1]                              = Cap_Water.Sal
;     | inity;                                                                 
;----------------------------------------------------------------------
        ldp       @CL122,DP
        ldiu      @CL122,ar1            ; |489| 
        ldp       @CL121,DP
        ldiu      *+fp(3),ir0           ; |489| 
        ldiu      @CL121,ar0            ; |489| 
        mpyi      20,ir0                ; |489| 
        ldfu      *ar1,f0               ; |489| 
        stf       f0,*+ar0(ir0)         ; |489| 
	.line	249
;----------------------------------------------------------------------
; 490 | Cap_Records[i].Frequency_Oil[1]                 = Cap_Water.Frequency_O
;     | il;                                                                    
;----------------------------------------------------------------------
        ldp       @CL124,DP
        ldiu      *+fp(3),ir0           ; |490| 
        ldiu      @CL124,ar0            ; |490| 
        ldp       @CL123,DP
        mpyi      20,ir0                ; |490| 
        ldiu      @CL123,ar1            ; |490| 
        ldfu      *ar0,f0               ; |490| 
        stf       f0,*+ar1(ir0)         ; |490| 
	.line	250
;----------------------------------------------------------------------
; 491 | Cap_Records[i].Frequency_Water[1]               = Cap_Water.Frequency_W
;     | ater;                                                                  
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,ar1            ; |491| 
        ldp       @CL125,DP
        ldiu      *+fp(3),ir0           ; |491| 
        ldiu      @CL125,ar0            ; |491| 
        mpyi      20,ir0                ; |491| 
        ldfu      *ar1,f0               ; |491| 
        stf       f0,*+ar0(ir0)         ; |491| 
	.line	251
;----------------------------------------------------------------------
; 492 | Cap_Records[i].RefPower_Oil[1]                  = Cap_Water.RefPower_Oi
;     | l;                                                                     
;----------------------------------------------------------------------
        ldp       @CL128,DP
        ldiu      @CL128,ar0            ; |492| 
        ldp       @CL127,DP
        ldiu      *+fp(3),ir0           ; |492| 
        ldiu      @CL127,ar1            ; |492| 
        mpyi      20,ir0                ; |492| 
        ldfu      *ar0,f0               ; |492| 
        stf       f0,*+ar1(ir0)         ; |492| 
	.line	252
;----------------------------------------------------------------------
; 493 | Cap_Records[i].RefPower_Water[1]                = Cap_Water.RefPower_Wa
;     | ter;                                                                   
;----------------------------------------------------------------------
        ldp       @CL130,DP
        ldiu      @CL130,ar1            ; |493| 
        ldp       @CL129,DP
        ldiu      *+fp(3),ir0           ; |493| 
        ldiu      @CL129,ar0            ; |493| 
        mpyi      20,ir0                ; |493| 
        ldfu      *ar1,f0               ; |493| 
        stf       f0,*+ar0(ir0)         ; |493| 
	.line	253
;----------------------------------------------------------------------
; 494 | Cap_Records[i].Time_MONTH_DAY_HH_MM[1]  = (Cap_Water.Time_MONTH<<24)|(C
;     | ap_Water.Time_DAY<<16)|(Cap_Water.Time_HH<<8)|(Cap_Water.Time_MM);     
;----------------------------------------------------------------------
        ldp       @CL135,DP
        ldiu      @CL135,ar0            ; |494| 
        ldp       @CL134,DP
        ldiu      @CL134,ar1            ; |494| 
        ash3      rs,*ar1,ir0           ; |494| 
        ash3      re,*ar0,r0            ; |494| 
        or3       r0,ir0,r0             ; |494| 
        ldp       @CL133,DP
        ldiu      *+fp(3),ir0           ; |494| 
        ldiu      @CL133,ar4            ; |494| 
        ldp       @CL132,DP
        mpyi      20,ir0                ; |494| 
        ldiu      @CL132,ar0            ; |494| 
        ldp       @CL131,DP
        ash3      r3,*ar4,ar1           ; |494| 
        ldiu      @CL131,ar2            ; |494| 
        or3       r0,ar1,r0             ; |494| 
        or3       r0,*ar0,r0            ; |494| 
        sti       r0,*+ar2(ir0)         ; |494| 
	.line	254
;----------------------------------------------------------------------
; 495 | Cap_Records[i].CLRSTAT_Time_YEAR[1]             = (Cap_Water.Time_YEAR<
;     | <8)|(Cap_Water.Time_DAY_OF_WEEK);                                      
;----------------------------------------------------------------------
        ldp       @CL138,DP
        ldiu      @CL138,ar2            ; |495| 
        ldp       @CL137,DP
        ldiu      @CL137,ar0            ; |495| 
        ldp       @CL136,DP
        ldiu      *+fp(3),ir0           ; |495| 
        ldiu      @CL136,ar1            ; |495| 
        ash3      rc,*ar2,r0            ; |495| 
        mpyi      20,ir0                ; |495| 
        or3       r0,*ar0,r0            ; |495| 
        sti       r0,*+ar1(ir0)         ; |495| 
	.line	255
;----------------------------------------------------------------------
; 496 | OIL_ADJ[i]
;     |  = 0.0;                                                                
;----------------------------------------------------------------------
        ldp       @CL139,DP
        ldiu      *+fp(3),ir0           ; |496| 
        ldiu      @CL139,ar0            ; |496| 
        stf       f1,*+ar0(ir0)         ; |496| 
	.line	256
;----------------------------------------------------------------------
; 497 | WATER_ADJ[i]                                                    = 0.0; 
;----------------------------------------------------------------------
        ldp       @CL140,DP
        ldiu      *+fp(3),ir0           ; |497| 
        ldiu      @CL140,ar0            ; |497| 
        stf       f2,*+ar0(ir0)         ; |497| 
	.line	257
;----------------------------------------------------------------------
; 498 | SALINITY[i]
;     |  = s[7];                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(19),ar1          ; |498| 
        ldp       @CL141,DP
        ldiu      *+fp(3),ir0           ; |498| 
        ldiu      @CL141,ar0            ; |498| 
        ldfu      *+ar1(7),f0           ; |498| 
        stf       f0,*+ar0(ir0)         ; |498| 
	.line	258
;----------------------------------------------------------------------
; 499 | WATER_ALARM_LO[i]                                               = w_lo;
;----------------------------------------------------------------------
        ldp       @CL142,DP
        ldiu      @CL142,ar0            ; |499| 
        ldiu      *+fp(3),ir0           ; |499| 
        ldfu      *+fp(8),f0            ; |499| 
        stf       f0,*+ar0(ir0)         ; |499| 
	.line	259
;----------------------------------------------------------------------
; 500 | WATER_ALARM_HI[i]                                               = w_hi;
;----------------------------------------------------------------------
        ldp       @CL143,DP
        ldiu      *+fp(3),ir0           ; |500| 
        ldiu      @CL143,ar0            ; |500| 
        ldfu      *+fp(9),f0            ; |500| 
        stf       f0,*+ar0(ir0)         ; |500| 
	.line	235
        ldiu      1,r0                  ; |476| 
        addi      *+fp(3),r0            ; |476| 
        sti       r0,*+fp(3)            ; |476| 
        cmpi      60,r0                 ; |476| 
        blt       L40                   ; |476| 
;*      Branch Occurs to L40            ; |476| 
L41:        
	.line	262
;----------------------------------------------------------------------
; 503 | DIO_TEMP_C.val = TRUE;                                                 
;----------------------------------------------------------------------
        ldp       @CL144,DP
        ldiu      @CL144,ar0            ; |503| 
        ldiu      1,r0                  ; |503| 
        sti       r0,*ar0               ; |503| 
	.line	264
;----------------------------------------------------------------------
; 505 | Set_Temperature_Unit();                                                
;----------------------------------------------------------------------
        ldp       @CL145,DP
        ldiu      @CL145,r0             ; |505| 
        callu     r0                    ; far call to _Set_Temperature_Unit	; |505| 
                                        ; |505| Far Call Occurs
	.line	266
;----------------------------------------------------------------------
; 507 | VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_bmin,
;     |  t_lo, 0, 0);                                                          
;----------------------------------------------------------------------
        ldp       @CL148,DP
        ldiu      @CL148,r0             ; |507| 
        ldp       @CL147,DP
        ldiu      0,rc                  ; |507| 
        ldiu      @CL147,r3             ; |507| 
        ldfu      *+fp(10),f2           ; |507| 
        ldp       @CL146,DP
        ldiu      0,rs                  ; |507| 
        ldiu      @CL146,ar2            ; |507| 
        callu     r0                    ; far call to _VAR_Set_Unit_Param	; |507| 
                                        ; |507| Far Call Occurs
	.line	267
;----------------------------------------------------------------------
; 508 | VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_bmax,
;     |  t_hi, 0, 0);                                                          
;----------------------------------------------------------------------
        ldp       @CL148,DP
        ldiu      @CL148,r0             ; |508| 
        ldp       @CL149,DP
        ldiu      @CL149,r3             ; |508| 
        ldiu      0,rc                  ; |508| 
        ldiu      0,rs                  ; |508| 
        ldp       @CL146,DP
        ldfu      *+fp(11),f2           ; |508| 
        ldiu      @CL146,ar2            ; |508| 
        callu     r0                    ; far call to _VAR_Set_Unit_Param	; |508| 
                                        ; |508| Far Call Occurs
	.line	268
;----------------------------------------------------------------------
; 509 | VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_alarm_lo,
;     |  t_lo, 0, 0);                                                          
;----------------------------------------------------------------------
        ldp       @CL148,DP
        ldiu      @CL148,r0             ; |509| 
        ldp       @CL150,DP
        ldiu      @CL150,r3             ; |509| 
        ldp       @CL146,DP
        ldfu      *+fp(10),f2           ; |509| 
        ldiu      @CL146,ar2            ; |509| 
        ldiu      0,rc                  ; |509| 
        ldiu      0,rs                  ; |509| 
        callu     r0                    ; far call to _VAR_Set_Unit_Param	; |509| 
                                        ; |509| Far Call Occurs
	.line	269
;----------------------------------------------------------------------
; 510 | VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, reg_direct_alarm_hi,
;     |  t_hi, 0, 0);                                                          
;----------------------------------------------------------------------
        ldp       @CL148,DP
        ldiu      @CL148,r0             ; |510| 
        ldp       @CL151,DP
        ldiu      @CL151,r3             ; |510| 
        ldp       @CL146,DP
        ldiu      0,rc                  ; |510| 
        ldiu      0,rs                  ; |510| 
        ldiu      @CL146,ar2            ; |510| 
        ldfu      *+fp(11),f2           ; |510| 
        callu     r0                    ; far call to _VAR_Set_Unit_Param	; |510| 
                                        ; |510| Far Call Occurs
	.line	270
;----------------------------------------------------------------------
; 511 | VAR_Set_Unit_Param(&REG_WATERCUT,                         reg_direct_bm
;     | in,              w_lo, 0, 0);                                          
;----------------------------------------------------------------------
        ldp       @CL148,DP
        ldiu      @CL148,r0             ; |511| 
        ldp       @CL147,DP
        ldiu      @CL147,r3             ; |511| 
        ldp       @CL152,DP
        ldiu      @CL152,ar2            ; |511| 
        ldiu      0,rc                  ; |511| 
        ldiu      0,rs                  ; |511| 
        ldfu      *+fp(8),f2            ; |511| 
        callu     r0                    ; far call to _VAR_Set_Unit_Param	; |511| 
                                        ; |511| Far Call Occurs
	.line	271
;----------------------------------------------------------------------
; 512 | VAR_Set_Unit_Param(&REG_WATERCUT,                         reg_direct_bm
;     | ax,              w_hi, 0, 0);                                          
;----------------------------------------------------------------------
        ldp       @CL148,DP
        ldiu      @CL148,r0             ; |512| 
        ldp       @CL149,DP
        ldiu      @CL149,r3             ; |512| 
        ldp       @CL152,DP
        ldfu      *+fp(9),f2            ; |512| 
        ldiu      0,rc                  ; |512| 
        ldiu      0,rs                  ; |512| 
        ldiu      @CL152,ar2            ; |512| 
        callu     r0                    ; far call to _VAR_Set_Unit_Param	; |512| 
                                        ; |512| Far Call Occurs
	.line	273
;----------------------------------------------------------------------
; 514 | VAR_Update(&REG_TEMPERATURE_EXTERNAL,   SIM_TEMPERATURE_EXTERNAL,
;     |                                                                        
;     |   0, 0);                                                               
;----------------------------------------------------------------------
        ldp       @CL91,DP
        ldiu      @CL91,ar0             ; |514| 
        ldfu      *ar0,f0               ; |514| 
        ldfu      f0,f2                 ; |514| Move F32 into F40 for CONV
        ldp       @CL4,DP
        ldiu      255,r3                ; |514| 
        ldiu      @CL4,r1               ; |514| 
        ldiu      0,rc                  ; |514| 
        ldp       @CL146,DP
        andn      r3,f2                 ; |514| Bit mask for F32/F40 conversion
        ldiu      @CL146,ar2            ; |514| 
        ldiu      0,r3                  ; |514| 
        callu     r1                    ; far call to _VAR_Update	; |514| 
                                        ; |514| Far Call Occurs
	.line	274
;----------------------------------------------------------------------
; 515 | VAR_Update(&REG_TEMPERATURE_USER_ADJUST,0.0,
;     |                                                                        
;     |                   0, 0);                                               
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |515| 
        ldp       @CL154+0,DP
        ldfu      @CL154+0,f2           ; |515| 40b float hi half
        ldp       @CL154+1,DP
        ldiu      0,rc                  ; |515| 
        ldiu      @CL154+1,r2           ; |515| 40b float lo half
        ldp       @CL153,DP
        ldiu      0,r3                  ; |515| 
        ldiu      @CL153,ar2            ; |515| 
        callu     r0                    ; far call to _VAR_Update	; |515| 
                                        ; |515| Far Call Occurs
	.line	275
;----------------------------------------------------------------------
; 516 | VAR_Update(&REG_TEMPERATURE_USER,               REG_TEMPERATURE_EXTERNA
;     | L.val+REG_TEMPERATURE_USER_ADJUST.val,   0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL146,DP
        ldiu      @CL146,ar0            ; |516| 
        ldp       @CL153,DP
        ldiu      @CL153,ar1            ; |516| 
        ldp       @CL4,DP
        ldiu      @CL4,r1               ; |516| 
        ldp       @CL155,DP
        addf3     *ar0,*ar1,f0          ; |516| 
        ldiu      0,rc                  ; |516| 
        ldiu      255,r3                ; |516| 
        ldiu      @CL155,ar2            ; |516| 
        ldfu      f0,f2                 ; |516| Move F32 into F40 for CONV
        andn      r3,f2                 ; |516| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |516| 
        callu     r1                    ; far call to _VAR_Update	; |516| 
                                        ; |516| Far Call Occurs
	.line	276
;----------------------------------------------------------------------
; 517 | VAR_Update(&REG_OIL_INDEX,                              0.0,
;     |                                                                        
;     |                                   0, 0);                               
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |517| 
        ldp       @CL154+0,DP
        ldfu      @CL154+0,f2           ; |517| 40b float hi half
        ldp       @CL154+1,DP
        ldiu      @CL154+1,r2           ; |517| 40b float lo half
        ldiu      0,rc                  ; |517| 
        ldp       @CL156,DP
        ldiu      0,r3                  ; |517| 
        ldiu      @CL156,ar2            ; |517| 
        callu     r0                    ; far call to _VAR_Update	; |517| 
                                        ; |517| Far Call Occurs
	.line	277
;----------------------------------------------------------------------
; 518 | VAR_Update(&REG_WATER_INDEX,                    0.0,
;     |                                                                        
;     |                           0, 0);                                       
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |518| 
        ldp       @CL154+0,DP
        ldfu      @CL154+0,f2           ; |518| 40b float hi half
        ldp       @CL154+1,DP
        ldiu      0,rc                  ; |518| 
        ldiu      @CL154+1,r2           ; |518| 40b float lo half
        ldp       @CL157,DP
        ldiu      0,r3                  ; |518| 
        ldiu      @CL157,ar2            ; |518| 
        callu     r0                    ; far call to _VAR_Update	; |518| 
                                        ; |518| Far Call Occurs
	.line	278
;----------------------------------------------------------------------
; 519 | VAR_Update(&OIL_P0,                                     p0,
;     |                                                                        
;     |                                   0, 0);                               
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r1               ; |519| 
        ldfu      *+fp(16),f0           ; |519| 
        ldp       @CL158,DP
        ldiu      0,rc                  ; |519| 
        ldiu      255,r3                ; |519| 
        ldfu      f0,f2                 ; |519| Move F32 into F40 for CONV
        ldiu      @CL158,ar2            ; |519| 
        andn      r3,f2                 ; |519| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |519| 
        callu     r1                    ; far call to _VAR_Update	; |519| 
                                        ; |519| Far Call Occurs
	.line	279
;----------------------------------------------------------------------
; 520 | VAR_Update(&OIL_P1,                                     p1,
;     |                                                                        
;     |                                   0, 0);                               
;----------------------------------------------------------------------
        ldfu      *+fp(17),f0           ; |520| 
        ldiu      255,r3                ; |520| 
        ldp       @CL4,DP
        ldfu      f0,f2                 ; |520| Move F32 into F40 for CONV
        ldiu      @CL4,r1               ; |520| 
        andn      r3,f2                 ; |520| Bit mask for F32/F40 conversion
        ldp       @CL159,DP
        ldiu      0,r3                  ; |520| 
        ldiu      0,rc                  ; |520| 
        ldiu      @CL159,ar2            ; |520| 
        callu     r1                    ; far call to _VAR_Update	; |520| 
                                        ; |520| Far Call Occurs
	.line	280
;----------------------------------------------------------------------
; 521 | VAR_Update(&Plot_Limit_Oil_Freq_Low,                    0.0,
;     |                                                                        
;     |                                   0, 0);                               
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |521| 
        ldp       @CL154+0,DP
        ldfu      @CL154+0,f2           ; |521| 40b float hi half
        ldp       @CL154+1,DP
        ldiu      @CL154+1,r2           ; |521| 40b float lo half
        ldp       @CL160,DP
        ldiu      0,r3                  ; |521| 
        ldiu      @CL160,ar2            ; |521| 
        ldiu      0,rc                  ; |521| 
        callu     r0                    ; far call to _VAR_Update	; |521| 
                                        ; |521| Far Call Occurs
	.line	281
;----------------------------------------------------------------------
; 522 | VAR_Update(&Plot_Limit_Oil_Freq_High,                   1000.0,
;     |                                                                        
;     |                                   0, 0);                               
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |522| 
        ldp       @CL162+0,DP
        ldfu      @CL162+0,f2           ; |522| 40b float hi half
        ldp       @CL162+1,DP
        ldiu      @CL162+1,r2           ; |522| 40b float lo half
        ldp       @CL161,DP
        ldiu      0,rc                  ; |522| 
        ldiu      @CL161,ar2            ; |522| 
        ldiu      0,r3                  ; |522| 
        callu     r0                    ; far call to _VAR_Update	; |522| 
                                        ; |522| Far Call Occurs
	.line	282
;----------------------------------------------------------------------
; 523 | VAR_Update(&Plot_Limit_Water_Freq_Low,          0.0,
;     |                                                                        
;     |                           0, 0);                                       
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |523| 
        ldp       @CL154+0,DP
        ldfu      @CL154+0,f2           ; |523| 40b float hi half
        ldp       @CL154+1,DP
        ldiu      @CL154+1,r2           ; |523| 40b float lo half
        ldp       @CL163,DP
        ldiu      0,rc                  ; |523| 
        ldiu      0,r3                  ; |523| 
        ldiu      @CL163,ar2            ; |523| 
        callu     r0                    ; far call to _VAR_Update	; |523| 
                                        ; |523| Far Call Occurs
	.line	283
;----------------------------------------------------------------------
; 524 | VAR_Update(&Plot_Limit_Water_Freq_High,                 1000.0,
;     |                                                                        
;     |                                   0, 0);                               
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |524| 
        ldp       @CL162+0,DP
        ldfu      @CL162+0,f2           ; |524| 40b float hi half
        ldp       @CL162+1,DP
        ldiu      @CL162+1,r2           ; |524| 40b float lo half
        ldp       @CL164,DP
        ldiu      0,rc                  ; |524| 
        ldiu      @CL164,ar2            ; |524| 
        ldiu      0,r3                  ; |524| 
        callu     r0                    ; far call to _VAR_Update	; |524| 
                                        ; |524| Far Call Occurs
	.line	284
;----------------------------------------------------------------------
; 525 | VAR_Update(&REG_FREQ_OIL_LO,                    fo_lo,
;     |                                                                        
;     |                           0, 0);                                       
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |525| 
        ldiu      255,r1                ; |525| 
        ldfu      *+fp(12),f2           ; |525| 
        ldp       @CL165,DP
        andn      r1,f2                 ; |525| Bit mask for F32/F40 conversion
        ldiu      @CL165,ar2            ; |525| 
        ldiu      0,r3                  ; |525| 
        ldiu      0,rc                  ; |525| 
        callu     r0                    ; far call to _VAR_Update	; |525| 
                                        ; |525| Far Call Occurs
	.line	285
;----------------------------------------------------------------------
; 526 | VAR_Update(&REG_FREQ_OIL_HI,                    fo_hi,
;     |                                                                        
;     |                           0, 0);                                       
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      255,r1                ; |526| 
        ldiu      @CL4,r0               ; |526| 
        ldfu      *+fp(13),f2           ; |526| 
        ldp       @CL166,DP
        andn      r1,f2                 ; |526| Bit mask for F32/F40 conversion
        ldiu      @CL166,ar2            ; |526| 
        ldiu      0,r3                  ; |526| 
        ldiu      0,rc                  ; |526| 
        callu     r0                    ; far call to _VAR_Update	; |526| 
                                        ; |526| Far Call Occurs
	.line	286
;----------------------------------------------------------------------
; 527 | VAR_Update(&REG_FREQ_WATER_LO,                  fw_lo,
;     |                                                                        
;     |                           0, 0);                                       
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |527| 
        ldiu      255,r1                ; |527| 
        ldp       @CL167,DP
        ldfu      *+fp(14),f2           ; |527| 
        ldiu      0,rc                  ; |527| 
        andn      r1,f2                 ; |527| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |527| 
        ldiu      @CL167,ar2            ; |527| 
        callu     r0                    ; far call to _VAR_Update	; |527| 
                                        ; |527| Far Call Occurs
	.line	287
;----------------------------------------------------------------------
; 528 | VAR_Update(&REG_FREQ_WATER_HI,                  fw_hi,
;     |                                                                        
;     |                           0, 0);                                       
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |528| 
        ldp       @CL168,DP
        ldiu      255,r1                ; |528| 
        ldiu      @CL168,ar2            ; |528| 
        ldfu      *+fp(15),f2           ; |528| 
        ldiu      0,r3                  ; |528| 
        andn      r1,f2                 ; |528| Bit mask for F32/F40 conversion
        ldiu      0,rc                  ; |528| 
        callu     r0                    ; far call to _VAR_Update	; |528| 
                                        ; |528| Far Call Occurs
	.line	289
;----------------------------------------------------------------------
; 530 | Mirror_From_Stream_Table(&REG_STREAM_SELECT);                          
;----------------------------------------------------------------------
        ldp       @CL169,DP
        ldiu      @CL169,r0             ; |530| 
        ldp       @CL2,DP
        ldiu      @CL2,ar2              ; |530| 
        callu     r0                    ; far call to _Mirror_From_Stream_Table	; |530| 
                                        ; |530| Far Call Occurs
	.line	291
;----------------------------------------------------------------------
; 532 | Clear_Diagnostics();                                                   
;----------------------------------------------------------------------
        ldp       @CL170,DP
        ldiu      @CL170,r0             ; |532| 
        callu     r0                    ; far call to _Clear_Diagnostics	; |532| 
                                        ; |532| Far Call Occurs
	.line	293
;----------------------------------------------------------------------
; 534 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L44:        
	.line	294
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
        popf      f6
        pop       r5
        pop       r4
                                        ; Unallocate the Frame
        subi      21,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	535,000001070h,19


;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".const"
	.bss	CL1,1
	.bss	CL2,1
	.bss	CL3,2
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
	.bss	CL30,2
	.bss	CL31,1
	.bss	CL32,2
	.bss	CL33,1
	.bss	CL34,2
	.bss	CL35,1
	.bss	CL36,2
	.bss	CL37,1
	.bss	CL38,1
	.bss	CL39,1
	.bss	CL40,1
	.bss	CL41,1
	.bss	CL42,2
	.bss	CL43,1
	.bss	CL44,2
	.bss	CL45,1
	.bss	CL46,2
	.bss	CL47,1
	.bss	CL48,2
	.bss	CL49,1
	.bss	CL50,2
	.bss	CL51,1
	.bss	CL52,2
	.bss	CL53,1
	.bss	CL54,1
	.bss	CL55,1
	.bss	CL56,1
	.bss	CL57,1
	.bss	CL58,1
	.bss	CL59,1
	.bss	CL60,1
	.bss	CL61,1
	.bss	CL62,1
	.bss	CL63,1
	.bss	CL64,1
	.bss	CL65,1
	.bss	CL66,1
	.bss	CL67,1
	.bss	CL68,1
	.bss	CL69,1
	.bss	CL70,1
	.bss	CL71,1
	.bss	CL72,1
	.bss	CL73,1
	.bss	CL74,1
	.bss	CL75,1
	.bss	CL76,1
	.bss	CL77,1
	.bss	CL78,1
	.bss	CL79,1
	.bss	CL80,1
	.bss	CL81,1
	.bss	CL82,1
	.bss	CL83,1
	.bss	CL84,1
	.bss	CL85,1
	.bss	CL86,1
	.bss	CL87,1
	.bss	CL88,1
	.bss	CL89,1
	.bss	CL90,1
	.bss	CL91,1
	.bss	CL92,1
	.bss	CL93,1
	.bss	CL94,1
	.bss	CL95,1
	.bss	CL96,1
	.bss	CL97,1
	.bss	CL98,1
	.bss	CL99,1
	.bss	CL100,1
	.bss	CL101,1
	.bss	CL102,1
	.bss	CL103,1
	.bss	CL104,1
	.bss	CL105,1
	.bss	CL106,1
	.bss	CL107,1
	.bss	CL108,1
	.bss	CL109,1
	.bss	CL110,1
	.bss	CL111,1
	.bss	CL112,1
	.bss	CL113,1
	.bss	CL114,1
	.bss	CL115,1
	.bss	CL116,1
	.bss	CL117,1
	.bss	CL118,1
	.bss	CL119,1
	.bss	CL120,1
	.bss	CL121,1
	.bss	CL122,1
	.bss	CL123,1
	.bss	CL124,1
	.bss	CL125,1
	.bss	CL126,1
	.bss	CL127,1
	.bss	CL128,1
	.bss	CL129,1
	.bss	CL130,1
	.bss	CL131,1
	.bss	CL132,1
	.bss	CL133,1
	.bss	CL134,1
	.bss	CL135,1
	.bss	CL136,1
	.bss	CL137,1
	.bss	CL138,1
	.bss	CL139,1
	.bss	CL140,1
	.bss	CL141,1
	.bss	CL142,1
	.bss	CL143,1
	.bss	CL144,1
	.bss	CL145,1
	.bss	CL146,1
	.bss	CL147,1
	.bss	CL148,1
	.bss	CL149,1
	.bss	CL150,1
	.bss	CL151,1
	.bss	CL152,1
	.bss	CL153,1
	.bss	CL154,2
	.bss	CL155,1
	.bss	CL156,1
	.bss	CL157,1
	.bss	CL158,1
	.bss	CL159,1
	.bss	CL160,1
	.bss	CL161,1
	.bss	CL162,2
	.bss	CL163,1
	.bss	CL164,1
	.bss	CL165,1
	.bss	CL166,1
	.bss	CL167,1
	.bss	CL168,1
	.bss	CL169,1
	.bss	CL170,1

	.sect	".cinit"
	.field  	183,32
	.field  	CL1+0,32
	.field  	_DEMO,32
	.field  	_REG_STREAM_SELECT,32
	.word   	000000000H ; ldouble 1.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_VAR_Update,32
	.field  	_COEFF_TEMP_OIL,32
	.field  	_COEFF_SALT_TEMP_WATER,32
	.field  	_OSC_OIL_CALC,32
	.field  	_OSC_WATER_CALC,32
	.field  	_SIM_VINC,32
	.word   	0FF800000H ; double  -1.000000000000000e+00
	.field  	_SIM_VREF,32
	.field  	_SIM_FREQ,32
	.field  	_ENABLED,32
	.field  	_STR_Analyzer_Info,32
	.field  	_STR_Analyzer_Info+4,32
	.field  	_STR_Analyzer_Info+5,32
	.field  	_STR_Analyzer_Info+6,32
	.field  	_STR_Analyzer_Info+1,32
	.field  	_STR_Analyzer_Info+2,32
	.field  	_STR_Analyzer_Info+3,32
	.field  	_fulldemo,32
	.field  	_anademo,32
	.field  	_middemo,32
	.field  	_highdemo,32
	.field  	_DIO_CCM_START,32
	.field  	_DIO_CCM_PURGE_STAT,32
	.field  	_DIO_CCM_PURGE_TIME,32
	.field  	_DIO_TOTALIZER_CONTROL,32
	.field  	_CCM_SETPOINT_PRESSURE,32
	.word   	007480000H ; ldouble 2.000000000000000e+02
	.word   	048000000H ; ldouble
	.field  	_CCM_SETPOINT_LEVEL,32
	.word   	006040000H ; ldouble 6.600000000000000e+01
	.word   	004000000H ; ldouble
	.field  	_CCM_VESSEL_PRESSURE,32
	.word   	006793333H ; ldouble 1.246000000000000e+02
	.word   	079333333H ; ldouble
	.field  	_CCM_VESSEL_LEVEL,32
	.word   	006086666H ; ldouble 6.820000000000000e+01
	.word   	008666666H ; ldouble
	.field  	_CCM_PURGE,32
	.word   	0097A0000H ; double  1.000000000000000e+03
	.field  	_CCM_DURATION,32
	.field  	_CCM_REMAINING,32
	.field  	_FC+801,32
	.word   	00A712000H ; ldouble 1.929000000000000e+03
	.word   	071200000H ; ldouble
	.field  	_FC+849,32
	.word   	00A674000H ; ldouble 1.850000000000000e+03
	.word   	067400000H ; ldouble
	.field  	_FC+897,32
	.word   	00B6C3000H ; ldouble 3.779000000000000e+03
	.word   	06C300000H ; ldouble
	.field  	_FC+985,32
	.word   	00740E666H ; ldouble 1.929000000000000e+02
	.word   	040E66666H ; ldouble
	.field  	_FC+1029,32
	.word   	007390000H ; ldouble 1.850000000000000e+02
	.word   	039000000H ; ldouble
	.field  	_FC+1073,32
	.word   	0083CF333H ; ldouble 3.779000000000000e+02
	.word   	03CF33333H ; ldouble
	.field  	_COR+397,32
	.word   	00823C000H ; double  3.275000000000000e+02
	.field  	_COR+383,32
	.field  	_COR+399,32
	.field  	_COR+392,32
	.field  	_COR+400,32
	.field  	_COR+393,32
	.field  	_COR+398,32
	.field  	_COR+384,32
	.field  	_COR+3,32
	.word   	0096D8000H ; double  9.500000000000000e+02
	.field  	_COR+385,32
	.field  	_CCM_GAS_FLOW+13,32
	.field  	_CCM_GAS_FLOW+14,32
	.field  	_CCM_GAS_FLOW,32
	.field  	_CCM_GAS_TOTAL+13,32
	.field  	_CCM_GAS_TOTAL+14,32
	.field  	_CCM_GAS_TOTAL,32
	.field  	_AO+694,32
	.word   	0050F3333H ; double  3.580000000000000e+01
	.field  	_AO+1113,32
	.word   	004073333H ; double  1.690000000000000e+01
	.field  	_AO+693,32
	.field  	_AO+1112,32
	.field  	_DEMO_ANALYZER_MODE,32
	.field  	_lowdemo,32
	.field  	_SALT_MAX,32
	.field  	_SALTS,32
	.field  	_TEMP_OIL_MAX,32
	.field  	_TEMPS_OIL,32
	.field  	_TEMP_WATER_MAX,32
	.field  	_TEMPS_WATER,32
	.field  	_COEFF_TEMP_OIL+1,32
	.field  	_COEFF_TEMP_OIL+2,32
	.field  	_COEFF_TEMP_OIL+3,32
	.field  	_COEFF_SALT_TEMP_WATER+1,32
	.field  	_COEFF_SALT_TEMP_WATER+2,32
	.field  	_COEFF_SALT_TEMP_WATER+3,32
	.field  	_SIM_TEMPERATURE_EXTERNAL,32
	.field  	_Cap_Oil,32
	.field  	_Copy_CAPDATA,32
	.field  	_Cap_Water,32
	.field  	_Cap_Records,32
	.field  	_Cap_Oil+1,32
	.field  	_Cap_Records+2,32
	.field  	_Cap_Oil+2,32
	.field  	_Cap_Records+4,32
	.field  	_Cap_Oil+3,32
	.field  	_Cap_Records+6,32
	.field  	_Cap_Oil+4,32
	.field  	_Cap_Records+8,32
	.field  	_Cap_Oil+5,32
	.field  	_Cap_Records+10,32
	.field  	_Cap_Oil+6,32
	.field  	_Cap_Records+12,32
	.field  	_Cap_Oil+7,32
	.field  	_Cap_Records+16,32
	.field  	_Cap_Oil+10,32
	.field  	_Cap_Oil+9,32
	.field  	_Cap_Oil+12,32
	.field  	_Cap_Oil+11,32
	.field  	_Cap_Records+18,32
	.field  	_Cap_Oil+13,32
	.field  	_Cap_Oil+14,32
	.field  	_Cap_Records+1,32
	.field  	_Cap_Water+1,32
	.field  	_Cap_Records+3,32
	.field  	_Cap_Water+2,32
	.field  	_Cap_Records+5,32
	.field  	_Cap_Water+3,32
	.field  	_Cap_Records+7,32
	.field  	_Cap_Water+4,32
	.field  	_Cap_Records+9,32
	.field  	_Cap_Water+5,32
	.field  	_Cap_Records+11,32
	.field  	_Cap_Water+6,32
	.field  	_Cap_Records+13,32
	.field  	_Cap_Water+7,32
	.field  	_Cap_Records+17,32
	.field  	_Cap_Water+10,32
	.field  	_Cap_Water+9,32
	.field  	_Cap_Water+12,32
	.field  	_Cap_Water+11,32
	.field  	_Cap_Records+19,32
	.field  	_Cap_Water+13,32
	.field  	_Cap_Water+14,32
	.field  	_OIL_ADJ,32
	.field  	_WATER_ADJ,32
	.field  	_SALINITY,32
	.field  	_WATER_ALARM_LO,32
	.field  	_WATER_ALARM_HI,32
	.field  	_DIO_TEMP_C,32
	.field  	_Set_Temperature_Unit,32
	.field  	_REG_TEMPERATURE_EXTERNAL,32
	.field  	393216,32
	.field  	_VAR_Set_Unit_Param,32
	.field  	327680,32
	.field  	524288,32
	.field  	458752,32
	.field  	_REG_WATERCUT,32
	.field  	_REG_TEMPERATURE_USER_ADJUST,32
	.word   	080000000H ; ldouble 0.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_REG_TEMPERATURE_USER,32
	.field  	_REG_OIL_INDEX,32
	.field  	_REG_WATER_INDEX,32
	.field  	_OIL_P0,32
	.field  	_OIL_P1,32
	.field  	_Plot_Limit_Oil_Freq_Low,32
	.field  	_Plot_Limit_Oil_Freq_High,32
	.word   	0097A0000H ; ldouble 1.000000000000000e+03
	.word   	07A000000H ; ldouble
	.field  	_Plot_Limit_Water_Freq_Low,32
	.field  	_Plot_Limit_Water_Freq_High,32
	.field  	_REG_FREQ_OIL_LO,32
	.field  	_REG_FREQ_OIL_HI,32
	.field  	_REG_FREQ_WATER_LO,32
	.field  	_REG_FREQ_WATER_HI,32
	.field  	_Mirror_From_Stream_Table,32
	.field  	_Clear_Diagnostics,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_VAR_Set_Unit_Param

	.global	_VAR_Update

	.global	_AO

	.global	_Clear_Diagnostics

	.global	_Cap_Records

	.global	_Cap_Oil

	.global	_Cap_Water

	.global	_CCM_VESSEL_LEVEL

	.global	_CCM_VESSEL_PRESSURE

	.global	_CCM_PURGE

	.global	_CCM_DURATION

	.global	_CCM_REMAINING

	.global	_CCM_GAS_TOTAL

	.global	_CCM_GAS_FLOW

	.global	_CCM_SETPOINT_LEVEL

	.global	_CCM_SETPOINT_PRESSURE

	.global	_DEMO

	.global	_DEMO_ANALYZER_MODE

	.global	_OSC_OIL_CALC

	.global	_OSC_WATER_CALC

	.global	_TEMP_OIL_MAX

	.global	_TEMPS_OIL

	.global	_COEFF_TEMP_OIL

	.global	_TEMP_WATER_MAX

	.global	_SALT_MAX

	.global	_TEMPS_WATER

	.global	_SALTS

	.global	_COEFF_SALT_TEMP_WATER

	.global	_SALINITY

	.global	_OIL_ADJ

	.global	_WATER_ADJ

	.global	_WATER_ALARM_LO

	.global	_WATER_ALARM_HI

	.global	_DIO_TEMP_C

	.global	_DIO_TOTALIZER_CONTROL

	.global	_DIO_CCM_START

	.global	_DIO_CCM_PURGE_STAT

	.global	_DIO_CCM_PURGE_TIME

	.global	_SIM_FREQ

	.global	_SIM_VINC

	.global	_SIM_VREF

	.global	_SIM_TEMPERATURE_EXTERNAL

	.global	_REG_STREAM_SELECT

	.global	_REG_WATERCUT

	.global	_REG_TEMPERATURE_USER

	.global	_REG_TEMPERATURE_USER_ADJUST

	.global	_REG_TEMPERATURE_EXTERNAL

	.global	_REG_FREQ_OIL_LO

	.global	_REG_FREQ_OIL_HI

	.global	_REG_FREQ_WATER_LO

	.global	_REG_FREQ_WATER_HI

	.global	_REG_WATER_INDEX

	.global	_REG_OIL_INDEX

	.global	_OIL_P0

	.global	_OIL_P1

	.global	_Plot_Limit_Water_Freq_Low

	.global	_Plot_Limit_Water_Freq_High

	.global	_Plot_Limit_Oil_Freq_Low

	.global	_Plot_Limit_Oil_Freq_High

	.global	_ENABLED

	.global	_STR_Analyzer_Info

	.global	_COR

	.global	_FC

	.global	_Copy_CAPDATA

	.global	_Set_Temperature_Unit

	.global	_Mirror_From_Stream_Table
