;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu Sep 19 10:37:47 2019                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_D9S.AAA 
	.file	"log.c"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\GLBLS.H"
	.file	"G:\workspace\EEA\v615\INCLUDE\stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"G:\workspace\EEA\v615\INCLUDE\format.h"
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
	.file	"G:\workspace\EEA\v615\INCLUDE\string.h"
	.sym	_size_t,0,14,13,32
	.file	"G:\workspace\EEA\v615\INCLUDE\stdio.h"
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
	.file	"G:\workspace\EEA\v615\INCLUDE\stdlib.h"
	.sym	_wchar_t,0,2,13,32
	.stag	__div_t,64
	.member	_quot,0,4,8,32
	.member	_rem,32,4,8,32
	.eos
	.sym	_div_t,0,8,13,64,__div_t
	.sym	_ldiv_t,0,8,13,64,__div_t
	.file	"G:\workspace\EEA\v615\INCLUDE\math.h"
	.file	"G:\workspace\EEA\v615\INCLUDE\time.h"
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
	.file	"G:\workspace\EEA\v615\INCLUDE\ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"G:\workspace\EEA\v615\INCLUDE\LIST.H"
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
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\VARIABLE.H"
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
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\BUFFER.H"
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
	.file	"G:\workspace\EEA\v615\INCLUDE\UNITS.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\TIMER.H"
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
	.file	"G:\workspace\EEA\v615\INCLUDE\I2C.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\ERRORS.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\SERIAL.H"
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
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\ADC.H"
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
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\DAC.H"
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
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\EXECUTE.H"
	.stag	.fake17,128
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.eos
	.sym	_EPKT,0,8,13,128,.fake17
	.file	"G:\workspace\EEA\v615\INCLUDE\FLASH.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\LOG.H"
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
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\DEMO.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\SELFTEST.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\MENU.H"
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
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\FLOAT1.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\GLBLS.H"
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
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\HART.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\MODBUSRTU.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\MISC.H"
	.file	"G:\workspace\EEA\v615\APP\SOURCE\INCLUDE\API.H"
	.file	"log.c"
	.sect	 "internal_RAM"

	.global	_InitLog
	.sym	_InitLog,_InitLog,32,2,0
	.func	37
;******************************************************************************
;* FUNCTION NAME: _InitLog                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_InitLog:
	.line	1
;----------------------------------------------------------------------
;  37 | void InitLog(void)                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
;  40 | SYS.log_end                     = FLASH_SIZE() + (unsigned int)FLASH_LO
;     | C;                                                                     
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |40| 
        callu     r0                    ; far call to _FLASH_SIZE	; |40| 
                                        ; |40| Far Call Occurs
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |40| 
        ldp       @CL3,DP
        addi      @CL3,r0               ; |40| Unsigned
        sti       r0,*ar0               ; |40| 
	.line	5
;----------------------------------------------------------------------
;  41 | SYS.log_start           = FLASH_LOC_LOG;                               
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |41| 
        ldp       @CL5,DP
        ldiu      @CL5,r0               ; |41| 
        sti       r0,*ar0               ; |41| 
	.line	6
;----------------------------------------------------------------------
;  42 | SYS.log_len             = SYS.log_end - (unsigned int)SYS.log_start;   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar2              ; |42| 
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |42| 
        ldp       @CL6,DP
        ldiu      @CL6,ar1              ; |42| 
        subi3     *ar2,*ar0,r0          ; |42| Unsigned
        sti       r0,*ar1               ; |42| 
	.line	7
;----------------------------------------------------------------------
;  43 | SYS.log_sector_size = FLASH_SECTOR_SIZE;                               
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |43| 
        ldp       @CL8,DP
        ldiu      @CL8,r0               ; |43| 
        sti       r0,*ar0               ; |43| 
	.line	8
;----------------------------------------------------------------------
;  44 | SYS.erased_sector       = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |44| 
        ldiu      0,r0                  ; |44| 
        sti       r0,*ar0               ; |44| 
	.line	9
;----------------------------------------------------------------------
;  45 | SYS_LOG_EVENT           = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |45| 
        sti       r0,*ar0               ; |45| 
	.line	10
;----------------------------------------------------------------------
;  46 | USER_LOG_EVENT          = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |46| 
        sti       r0,*ar0               ; |46| 
	.line	12
;----------------------------------------------------------------------
;  48 | if (SYS.log_len<=0)                                                    
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |48| 
        ldiu      *ar0,r0               ; |48| 
        cmpi      0,r0                  ; |48| 
        bne       L3                    ; |48| 
;*      Branch Occurs to L3             ; |48| 
	.line	14
;----------------------------------------------------------------------
;  50 | SYS.log_len                             = 0;                           
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |50| 
        ldiu      0,r0                  ; |50| 
        sti       r0,*ar0               ; |50| 
	.line	15
;----------------------------------------------------------------------
;  51 | SYS.log_n_sectors                       = 0;                           
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |51| 
        sti       r0,*ar0               ; |51| 
	.line	16
;----------------------------------------------------------------------
;  52 | SYS.log_n_max_per_sector        = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |52| 
        sti       r0,*ar0               ; |52| 
	.line	17
;----------------------------------------------------------------------
;  53 | SYS.log_record_size             = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |53| 
        sti       r0,*ar0               ; |53| 
	.line	18
;----------------------------------------------------------------------
;  54 | SYS_LOG_ENABLED                         = FALSE;                       
;  56 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,ar0             ; |54| 
        sti       r0,*ar0               ; |54| 
        bu        L6                    ; |36| 
;*      Branch Occurs to L6             ; |36| 
L3:        
	.line	22
;----------------------------------------------------------------------
;  58 | SYS.log_n_sectors = SYS.log_len/SYS.log_sector_size;                   
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |58| 
        ldp       @CL7,DP
        ldiu      @CL7,ar1              ; |58| 

        ldiu      *ar1,r1               ; |58| 
||      ldiu      *ar0,r0               ; |58| 

        call      DIV_U30               ; |58| 
                                        ; |58| Call Occurs
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |58| 
        sti       r0,*ar0               ; |58| 
	.line	24
;----------------------------------------------------------------------
;  60 | if (SYS.log_n_sectors<1)                                               
;----------------------------------------------------------------------
        ldiu      @CL12,ar0             ; |60| 
        ldiu      *ar0,r0               ; |60| 
        cmpi      0,r0                  ; |60| 
        bne       L5                    ; |60| 
;*      Branch Occurs to L5             ; |60| 
	.line	26
;----------------------------------------------------------------------
;  62 | SYS.log_len                             = 0;                           
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |62| 
        ldiu      0,r0                  ; |62| 
        sti       r0,*ar0               ; |62| 
	.line	27
;----------------------------------------------------------------------
;  63 | SYS.log_n_sectors                       = 0;                           
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |63| 
        sti       r0,*ar0               ; |63| 
	.line	28
;----------------------------------------------------------------------
;  64 | SYS.log_n_max_per_sector        = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |64| 
        sti       r0,*ar0               ; |64| 
	.line	29
;----------------------------------------------------------------------
;  65 | SYS.log_record_size             = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |65| 
        sti       r0,*ar0               ; |65| 
	.line	30
;----------------------------------------------------------------------
;  66 | SYS_LOG_ENABLED                         = FALSE;                       
;  68 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,ar0             ; |66| 
        sti       r0,*ar0               ; |66| 
        bu        L6                    ; |36| 
;*      Branch Occurs to L6             ; |36| 
L5:        
	.line	34
;----------------------------------------------------------------------
;  70 | SYS.log_record_size      = SYS_log_record_size;                        
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |70| 
        ldiu      8,r0                  ; |70| 
        sti       r0,*ar0               ; |70| 
	.line	35
;----------------------------------------------------------------------
;  71 | SYS.log_n_max_per_sector = SYS.log_sector_size/SYS.log_record_size;    
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar1              ; |71| 
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |71| 

        ldiu      *ar0,r1               ; |71| 
||      ldiu      *ar1,r0               ; |71| 

        call      DIV_U30               ; |71| 
                                        ; |71| Call Occurs
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |71| 
        sti       r0,*ar0               ; |71| 
	.line	37
;----------------------------------------------------------------------
;  73 | FindNextLogIndex(&SYS, 0, (unsigned int*)0);                           
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      0,r3                  ; |73| 
        ldiu      @CL16,r0              ; |73| 
        ldp       @CL6,DP
        ldiu      0,r2                  ; |73| 
        ldiu      @CL6,ar2              ; |73| 
        callu     r0                    ; far call to _FindNextLogIndex	; |73| 
                                        ; |73| Far Call Occurs
L6:        
	.line	41
;----------------------------------------------------------------------
;  77 | SYS.LOG_ERASE = FALSE;                                                 
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |77| 
        ldiu      0,r0                  ; |77| 
        sti       r0,*ar0               ; |77| 
	.line	45
;----------------------------------------------------------------------
;  81 | CCM_Record_view.val                     = 0;                           
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |81| 
        sti       r0,*ar0               ; |81| 
	.line	46
;----------------------------------------------------------------------
;  82 | CCM_Record_view.vect            = (int*)&CCM_Record_Viewer;            
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |82| 
        ldp       @CL20,DP
        ldiu      @CL20,r0              ; |82| 
        sti       r0,*ar0               ; |82| 
	.line	47
;----------------------------------------------------------------------
;  83 | CCM_Records.log_end             = (unsigned int)FLASH_LOC_CCM_RPT + 2*F
;     | LASH_CFGB_SIZE;                                                        
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |83| 
        ldp       @CL22,DP
        ldiu      @CL22,r0              ; |83| 
        sti       r0,*ar0               ; |83| 
	.line	48
;----------------------------------------------------------------------
;  84 | CCM_Records.log_start           = (unsigned int*)FLASH_LOC_CCM_RPT;    
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar0             ; |84| 
        ldp       @CL24,DP
        ldiu      @CL24,r0              ; |84| 
        sti       r0,*ar0               ; |84| 
	.line	49
;----------------------------------------------------------------------
;  85 | CCM_Records.log_len             = CCM_Records.log_end - (unsigned int)C
;     | CM_Records.log_start;                                                  
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar0             ; |85| 
        ldp       @CL21,DP
        ldiu      @CL21,ar1             ; |85| 
        ldp       @CL25,DP
        ldiu      @CL25,ar2             ; |85| 
        subi3     *ar0,*ar1,r0          ; |85| Unsigned
        sti       r0,*ar2               ; |85| 
	.line	50
;----------------------------------------------------------------------
;  86 | CCM_Records.log_sector_size = FLASH_CFGB_SIZE;                         
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |86| 
        ldiu      4096,r0               ; |86| 
        sti       r0,*ar0               ; |86| 
	.line	51
;----------------------------------------------------------------------
;  87 | CCM_Records.erased_sector       = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      @CL27,ar0             ; |87| 
        ldiu      0,r0                  ; |87| 
        sti       r0,*ar0               ; |87| 
	.line	53
;----------------------------------------------------------------------
;  89 | if (CCM_Records.log_len<=0)                                            
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |89| 
        ldiu      *ar0,r0               ; |89| 
        cmpi      0,r0                  ; |89| 
        bne       L8                    ; |89| 
;*      Branch Occurs to L8             ; |89| 
	.line	55
;----------------------------------------------------------------------
;  91 | CCM_Records.log_len                             = 0;                   
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |91| 
        ldiu      0,r0                  ; |91| 
        sti       r0,*ar0               ; |91| 
	.line	56
;----------------------------------------------------------------------
;  92 | CCM_Records.log_n_sectors                       = 0;                   
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |92| 
        sti       r0,*ar0               ; |92| 
	.line	57
;----------------------------------------------------------------------
;  93 | CCM_Records.log_n_max_per_sector        = 0;                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,ar0             ; |93| 
        sti       r0,*ar0               ; |93| 
	.line	58
;----------------------------------------------------------------------
;  94 | CCM_Records.log_record_size             = 0;                           
;  96 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |94| 
        sti       r0,*ar0               ; |94| 
        bu        L11                   ; |36| 
;*      Branch Occurs to L11            ; |36| 
L8:        
	.line	62
;----------------------------------------------------------------------
;  98 | CCM_Records.log_n_sectors = CCM_Records.log_len/CCM_Records.log_sector_
;     | size;                                                                  
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar1             ; |98| 
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |98| 

        ldiu      *ar0,r1               ; |98| 
||      ldiu      *ar1,r0               ; |98| 

        call      DIV_U30               ; |98| 
                                        ; |98| Call Occurs
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |98| 
        sti       r0,*ar0               ; |98| 
	.line	64
;----------------------------------------------------------------------
; 100 | if (CCM_Records.log_n_sectors<1)                                       
;----------------------------------------------------------------------
        ldiu      @CL28,ar0             ; |100| 
        ldiu      *ar0,r0               ; |100| 
        cmpi      0,r0                  ; |100| 
        bne       L10                   ; |100| 
;*      Branch Occurs to L10            ; |100| 
	.line	66
;----------------------------------------------------------------------
; 102 | CCM_Records.log_len                             = 0;                   
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |102| 
        ldiu      0,r0                  ; |102| 
        sti       r0,*ar0               ; |102| 
	.line	67
;----------------------------------------------------------------------
; 103 | CCM_Records.log_n_sectors                       = 0;                   
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |103| 
        sti       r0,*ar0               ; |103| 
	.line	68
;----------------------------------------------------------------------
; 104 | CCM_Records.log_n_max_per_sector        = 0;                           
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,ar0             ; |104| 
        sti       r0,*ar0               ; |104| 
	.line	69
;----------------------------------------------------------------------
; 105 | CCM_Records.log_record_size             = 0;                           
; 107 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |105| 
        sti       r0,*ar0               ; |105| 
        bu        L11                   ; |36| 
;*      Branch Occurs to L11            ; |36| 
L10:        
	.line	73
;----------------------------------------------------------------------
; 109 | CCM_Records.log_record_size             = CCM_Records_log_record_size; 
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |109| 
        ldiu      18,r0                 ; |109| 
        sti       r0,*ar0               ; |109| 
	.line	74
;----------------------------------------------------------------------
; 110 | CCM_Records.log_n_max_per_sector        = CCM_Records.log_sector_size/C
;     | CM_Records.log_record_size;                                            
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar1             ; |110| 
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |110| 

        ldiu      *ar0,r1               ; |110| 
||      ldiu      *ar1,r0               ; |110| 

        call      DIV_U30               ; |110| 
                                        ; |110| Call Occurs
        ldp       @CL29,DP
        ldiu      @CL29,ar0             ; |110| 
        sti       r0,*ar0               ; |110| 
	.line	76
;----------------------------------------------------------------------
; 112 | FindNextLogIndex(&CCM_Records, CCMrecmax, CCMREC);                     
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |112| 
        ldp       @CL25,DP
        ldiu      @CL25,ar2             ; |112| 
        ldp       @CL31,DP
        ldiu      100,r2                ; |112| 
        ldiu      @CL31,r3              ; |112| 
        callu     r0                    ; far call to _FindNextLogIndex	; |112| 
                                        ; |112| Far Call Occurs
	.line	77
;----------------------------------------------------------------------
; 113 | CCM_Record_Viewer(0);                                                  
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      0,ar2                 ; |113| 
        ldiu      @CL20,r0              ; |113| 
        callu     r0                    ; far call to _CCM_Record_Viewer	; |113| 
                                        ; |113| Far Call Occurs
L11:        
	.line	81
;----------------------------------------------------------------------
; 117 | CCM_Records.LOG_ERASE = FALSE;                                         
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar0             ; |117| 
        ldiu      0,r0                  ; |117| 
        sti       r0,*ar0               ; |117| 
	.line	85
;----------------------------------------------------------------------
; 121 | FC_Periodic.log_end             = (unsigned int)FLASH_LOC_FC_LOG + 4*FL
;     | ASH_CFGB_SIZE;                                                         
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |121| 
        ldp       @CL34,DP
        ldiu      @CL34,r0              ; |121| 
        sti       r0,*ar0               ; |121| 
	.line	86
;----------------------------------------------------------------------
; 122 | FC_Periodic.log_start           = (unsigned int*)FLASH_LOC_FC_LOG;     
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |122| 
        ldp       @CL36,DP
        ldiu      @CL36,r0              ; |122| 
        sti       r0,*ar0               ; |122| 
	.line	87
;----------------------------------------------------------------------
; 123 | FC_Periodic.log_len             = FC_Periodic.log_end - (unsigned int)F
;     | C_Periodic.log_start;                                                  
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |123| 
        ldp       @CL33,DP
        ldiu      @CL33,ar2             ; |123| 
        ldp       @CL37,DP
        ldiu      @CL37,ar1             ; |123| 
        subi3     *ar0,*ar2,r0          ; |123| Unsigned
        sti       r0,*ar1               ; |123| 
	.line	88
;----------------------------------------------------------------------
; 124 | FC_Periodic.log_sector_size = FLASH_CFGB_SIZE;                         
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |124| 
        ldiu      4096,r0               ; |124| 
        sti       r0,*ar0               ; |124| 
	.line	89
;----------------------------------------------------------------------
; 125 | FC_Periodic.erased_sector       = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |125| 
        ldiu      0,r0                  ; |125| 
        sti       r0,*ar0               ; |125| 
	.line	91
;----------------------------------------------------------------------
; 127 | if (FC_Periodic.log_len<=0)                                            
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |127| 
        ldiu      *ar0,r0               ; |127| 
        cmpi      0,r0                  ; |127| 
        bne       L13                   ; |127| 
;*      Branch Occurs to L13            ; |127| 
	.line	93
;----------------------------------------------------------------------
; 129 | FC_Periodic.log_len                             = 0;                   
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |129| 
        ldiu      0,r0                  ; |129| 
        sti       r0,*ar0               ; |129| 
	.line	94
;----------------------------------------------------------------------
; 130 | FC_Periodic.log_n_sectors                       = 0;                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |130| 
        sti       r0,*ar0               ; |130| 
	.line	95
;----------------------------------------------------------------------
; 131 | FC_Periodic.log_n_max_per_sector        = 0;                           
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |131| 
        sti       r0,*ar0               ; |131| 
	.line	96
;----------------------------------------------------------------------
; 132 | FC_Periodic.log_record_size             = 0;                           
; 134 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |132| 
        sti       r0,*ar0               ; |132| 
        bu        L16                   ; |36| 
;*      Branch Occurs to L16            ; |36| 
L13:        
	.line	100
;----------------------------------------------------------------------
; 136 | FC_Periodic.log_n_sectors = FC_Periodic.log_len/FC_Periodic.log_sector_
;     | size;                                                                  
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |136| 
        ldp       @CL38,DP
        ldiu      @CL38,ar1             ; |136| 

        ldiu      *ar1,r1               ; |136| 
||      ldiu      *ar0,r0               ; |136| 

        call      DIV_U30               ; |136| 
                                        ; |136| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |136| 
        sti       r0,*ar0               ; |136| 
	.line	102
;----------------------------------------------------------------------
; 138 | if (FC_Periodic.log_n_sectors<1)                                       
;----------------------------------------------------------------------
        ldiu      @CL40,ar0             ; |138| 
        ldiu      *ar0,r0               ; |138| 
        cmpi      0,r0                  ; |138| 
        bne       L15                   ; |138| 
;*      Branch Occurs to L15            ; |138| 
	.line	104
;----------------------------------------------------------------------
; 140 | FC_Periodic.log_len                             = 0;                   
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |140| 
        ldiu      0,r0                  ; |140| 
        sti       r0,*ar0               ; |140| 
	.line	105
;----------------------------------------------------------------------
; 141 | FC_Periodic.log_n_sectors                       = 0;                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |141| 
        sti       r0,*ar0               ; |141| 
	.line	106
;----------------------------------------------------------------------
; 142 | FC_Periodic.log_n_max_per_sector        = 0;                           
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |142| 
        sti       r0,*ar0               ; |142| 
	.line	107
;----------------------------------------------------------------------
; 143 | FC_Periodic.log_record_size             = 0;                           
; 145 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |143| 
        sti       r0,*ar0               ; |143| 
        bu        L16                   ; |36| 
;*      Branch Occurs to L16            ; |36| 
L15:        
	.line	111
;----------------------------------------------------------------------
; 147 | FC_Periodic.log_record_size      = FC_Periodic_log_record_size;        
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |147| 
        ldiu      8,r0                  ; |147| 
        sti       r0,*ar0               ; |147| 
	.line	112
;----------------------------------------------------------------------
; 148 | FC_Periodic.log_n_max_per_sector = FC_Periodic.log_sector_size/FC_Perio
;     | dic.log_record_size;                                                   
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |148| 
        ldp       @CL42,DP
        ldiu      @CL42,ar1             ; |148| 

        ldiu      *ar0,r0               ; |148| 
||      ldiu      *ar1,r1               ; |148| 

        call      DIV_U30               ; |148| 
                                        ; |148| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |148| 
        sti       r0,*ar0               ; |148| 
	.line	114
;----------------------------------------------------------------------
; 150 | FindNextLogIndex(&FC_Periodic, 0, (unsigned int*)0);                   
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      0,r3                  ; |150| 
        ldiu      @CL16,r0              ; |150| 
        ldp       @CL37,DP
        ldiu      0,r2                  ; |150| 
        ldiu      @CL37,ar2             ; |150| 
        callu     r0                    ; far call to _FindNextLogIndex	; |150| 
                                        ; |150| Far Call Occurs
L16:        
	.line	118
;----------------------------------------------------------------------
; 154 | FC_Periodic.LOG_ERASE = FALSE;                                         
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      @CL43,ar0             ; |154| 
        ldiu      0,r0                  ; |154| 
        sti       r0,*ar0               ; |154| 
	.line	120
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	156,000000000h,0


	.sect	 "internal_RAM"

	.global	_EraseSector
	.sym	_EraseSector,_EraseSector,32,2,0
	.func	171
;******************************************************************************
;* FUNCTION NAME: _EraseSector                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_EraseSector:
;* ar2   assigned to _log
	.sym	_log,10,24,17,32,.fake18
;* r2    assigned to _s
	.sym	_s,2,14,17,32
	.sym	_log,1,24,1,32,.fake18
	.sym	_s,2,14,1,32
	.sym	_i,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 171 | void EraseSector(LOG* log, unsigned int s)                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 173 | int i;  /* not used */                                                 
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |172| 
        sti       ar2,*+fp(1)           ; |172| 
	.line	5
;----------------------------------------------------------------------
; 175 | if (log->log_len<=0)                                                   
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *ar0,r0               ; |175| 
        cmpi      0,r0                  ; |175| 
        beq       L23                   ; |175| 
;*      Branch Occurs to L23            ; |175| 
	.line	6
;----------------------------------------------------------------------
; 176 | return;                                                                
;----------------------------------------------------------------------
	.line	8
;----------------------------------------------------------------------
; 178 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 180 | while(s >= log->log_n_sectors)  /* normalize */                        
;----------------------------------------------------------------------
        ldiu      r2,r0
        cmpi3     *+ar0,r0              ; |180| 
        blo       L22                   ; |180| 
;*      Branch Occurs to L22            ; |180| 
L21:        
	.line	11
;----------------------------------------------------------------------
; 181 | s -= log->log_n_sectors;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |181| 
        ldiu      *+ar0(1),r0           ; |181| 
        subri     *+fp(2),r0            ; |181| Unsigned
        sti       r0,*+fp(2)            ; |181| 
	.line	10
        cmpi3     *+ar0,r0              ; |180| 
        bhs       L21                   ; |180| 
;*      Branch Occurs to L21            ; |180| 
L22:        
	.line	13
;----------------------------------------------------------------------
; 183 | FLASH_ERASE_BLK(log->log_start + (s*log->log_sector_size));            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |183| 
        ldiu      *+fp(2),ar2           ; |183| 
        ldp       @CL44,DP
        ldiu      ar0,ar1               ; |183| 
        mpyi      *+ar0(7),ar2          ; |183| 
        ldiu      @CL44,r0              ; |183| 
        addi      *+ar1(6),ar2          ; |183| Unsigned
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |183| 
                                        ; |183| Far Call Occurs
	.line	14
;----------------------------------------------------------------------
; 184 | FLASH_LOCK_BLK(log->log_start + (s*log->log_sector_size), TRUE);       
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      *+fp(1),ar1           ; |184| 
        ldiu      *+fp(2),ar2           ; |184| 
        ldiu      ar1,ar0               ; |184| 
        ldiu      @CL45,r0              ; |184| 
        mpyi      *+ar1(7),ar2          ; |184| 
        addi      *+ar0(6),ar2          ; |184| Unsigned
        ldiu      1,r2                  ; |184| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |184| 
                                        ; |184| Far Call Occurs
	.line	16
;----------------------------------------------------------------------
; 186 | log->erased_sector = TRUE;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |186| 
        ldiu      1,r0                  ; |186| 
        sti       r0,*+ar0(11)          ; |186| 
	.line	18
;----------------------------------------------------------------------
; 188 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L23:        
	.line	19
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	189,000000000h,3


	.sect	 "internal_RAM"

	.global	_MarkLogStart
	.sym	_MarkLogStart,_MarkLogStart,32,2,0
	.func	204
;******************************************************************************
;* FUNCTION NAME: _MarkLogStart                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 5 Auto + 0 SOE = 7 words          *
;******************************************************************************
_MarkLogStart:
;* ar2   assigned to _log
	.sym	_log,10,24,17,32,.fake18
;* r2    assigned to _s
	.sym	_s,2,14,17,32
	.sym	_log,1,24,1,32,.fake18
	.sym	_s,2,14,1,32
	.sym	_status,3,14,1,32
	.sym	_i,4,14,1,32
	.sym	_p,5,30,1,32
	.line	1
;----------------------------------------------------------------------
; 204 | void MarkLogStart(LOG* log, unsigned int s)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
;----------------------------------------------------------------------
; 206 | unsigned int status;    /* sector status        */                     
; 207 | unsigned int i;                 /* log index            */             
; 208 | unsigned int* p;                /* log data             */             
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |205| 
        sti       ar2,*+fp(1)           ; |205| 
	.line	7
;----------------------------------------------------------------------
; 210 | if (log->log_len<=0)                                                   
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *ar0,r0               ; |210| 
        cmpi      0,r0                  ; |210| 
        beq       L31                   ; |210| 
;*      Branch Occurs to L31            ; |210| 
	.line	8
;----------------------------------------------------------------------
; 211 | return;                                                                
;----------------------------------------------------------------------
	.line	10
;----------------------------------------------------------------------
; 213 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	12
;----------------------------------------------------------------------
; 215 | while(s >= log->log_n_sectors)  /* normalize */                        
;----------------------------------------------------------------------
        ldiu      r2,r0
        cmpi3     *+ar0,r0              ; |215| 
        blo       L28                   ; |215| 
;*      Branch Occurs to L28            ; |215| 
L27:        
	.line	13
;----------------------------------------------------------------------
; 216 | s -= log->log_n_sectors;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |216| 
        ldiu      *+ar0(1),r0           ; |216| 
        subri     *+fp(2),r0            ; |216| Unsigned
        sti       r0,*+fp(2)            ; |216| 
	.line	12
        cmpi3     *+ar0,r0              ; |215| 
        bhs       L27                   ; |215| 
;*      Branch Occurs to L27            ; |215| 
L28:        
	.line	15
;----------------------------------------------------------------------
; 218 | p = log->log_start + (s*log->log_sector_size);                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |218| 
        ldiu      *+fp(2),r0            ; |218| 
        ldiu      ar1,ar0               ; |218| 
        mpyi      *+ar1(7),r0           ; |218| 
        addi      *+ar0(6),r0           ; |218| Unsigned
        sti       r0,*+fp(5)            ; |218| 
	.line	16
;----------------------------------------------------------------------
; 219 | i = p[0] & 0xBFFFFFFF;                                                 
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      r0,ar0
        ldiu      @CL46,r0              ; |219| 
        and3      r0,*ar0,r0            ; |219| 
        sti       r0,*+fp(4)            ; |219| 
	.line	18
;----------------------------------------------------------------------
; 221 | FLASH_LOCK_BLK(p, FALSE);                                              
;----------------------------------------------------------------------
        ldiu      0,r2                  ; |221| 
        ldp       @CL45,DP
        ldiu      ar0,ar2
        ldiu      @CL45,r0              ; |221| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |221| 
                                        ; |221| Far Call Occurs
	.line	20
;----------------------------------------------------------------------
; 223 | *FLASH_LOC      = PROGRAM;                                             
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |223| 
        ldp       @CL48,DP
        ldiu      @CL48,r0              ; |223| 
        sti       r0,*ar0               ; |223| 
	.line	21
;----------------------------------------------------------------------
; 224 | p[0]            = i;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(5),ar0           ; |224| 
        ldiu      *+fp(4),r0            ; |224| 
        sti       r0,*ar0               ; |224| 
	.line	22
;----------------------------------------------------------------------
; 225 | *FLASH_LOC      = READ_STATUS;                                         
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |225| 
        ldp       @CL49,DP
        ldiu      @CL49,r0              ; |225| 
        sti       r0,*ar0               ; |225| 
	.line	23
;----------------------------------------------------------------------
; 226 | status          = *FLASH_LOC;                                          
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |226| 
        ldiu      *ar0,r0               ; |226| 
        sti       r0,*+fp(3)            ; |226| 
	.line	25
;----------------------------------------------------------------------
; 228 | while (!( (status & 0x00800080) == 0x00800080) )                       
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      @CL50,r0              ; |228| 
        and       *+fp(3),r0            ; |228| 
        cmpi      @CL50,r0              ; |228| 
        beq       L30                   ; |228| 
;*      Branch Occurs to L30            ; |228| 
L29:        
	.line	26
;----------------------------------------------------------------------
; 229 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |229| 
        ldiu      *ar0,r0               ; |229| 
        sti       r0,*+fp(3)            ; |229| 
	.line	25
        ldp       @CL50,DP
        ldiu      @CL50,r0              ; |228| 
        and       *+fp(3),r0            ; |228| 
        cmpi      @CL50,r0              ; |228| 
        bne       L29                   ; |228| 
;*      Branch Occurs to L29            ; |228| 
L30:        
	.line	28
;----------------------------------------------------------------------
; 231 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |231| 
        ldp       @CL51,DP
        ldiu      @CL51,r0              ; |231| 
        sti       r0,*ar0               ; |231| 
	.line	30
;----------------------------------------------------------------------
; 233 | FLASH_LOCK_BLK(p, TRUE);                                               
;----------------------------------------------------------------------
        ldiu      1,r2                  ; |233| 
        ldp       @CL45,DP
        ldiu      *+fp(5),ar2           ; |233| 
        ldiu      @CL45,r0              ; |233| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |233| 
                                        ; |233| Far Call Occurs
	.line	32
;----------------------------------------------------------------------
; 235 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L31:        
	.line	33
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      7,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	236,000000000h,5


	.sect	 "internal_RAM"

	.global	_RecordLogEntry
	.sym	_RecordLogEntry,_RecordLogEntry,32,2,0
	.func	253
;******************************************************************************
;* FUNCTION NAME: _RecordLogEntry                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,ar4,ar5,ir0,ir1,st *
;*   Regs Saved         : ar4,ar5                                             *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 12 Auto + 2 SOE = 16 words        *
;******************************************************************************
_RecordLogEntry:
;* ar2   assigned to _log
	.sym	_log,10,24,17,32,.fake18
;* r2    assigned to _mode
	.sym	_mode,2,4,17,32
;* r3    assigned to _p
	.sym	_p,3,30,17,32
	.sym	_log,1,24,1,32,.fake18
	.sym	_mode,2,4,1,32
	.sym	_p,3,30,1,32
	.sym	_addr,4,30,1,32
	.sym	_status,5,14,1,32
	.sym	_ck,6,14,1,32
	.sym	_i,7,4,1,32
	.sym	_YEAR,8,4,1,32
	.sym	_MONTH,9,4,1,32
	.sym	_DAY,10,4,1,32
	.sym	_HH,11,4,1,32
	.sym	_MM,12,4,1,32
	.line	1
;----------------------------------------------------------------------
; 253 | void RecordLogEntry(LOG* log, int mode, unsigned int* p)               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
        push      ar4
        push      ar5
	.line	2
;----------------------------------------------------------------------
; 255 | unsigned int* addr;                     /* working log address */      
; 256 | unsigned int status;            /* log flash location status */        
; 257 | unsigned int ck;                        /* checksum */                 
; 258 | int i;                                          /* log record counter *
;     | /                                                                      
; 259 | int     YEAR,MONTH,DAY,HH,MM;   /* timestamp data */                   
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |254| 
        sti       r2,*+fp(2)            ; |254| 
        sti       ar2,*+fp(1)           ; |254| 
	.line	9
;----------------------------------------------------------------------
; 261 | if (log->log_len<=0)                                                   
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *ar0,r0               ; |261| 
        cmpi      0,r0                  ; |261| 
        beq       L73                   ; |261| 
;*      Branch Occurs to L73            ; |261| 
	.line	10
;----------------------------------------------------------------------
; 262 | return;                                                                
;----------------------------------------------------------------------
	.line	12
;----------------------------------------------------------------------
; 264 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	14
;----------------------------------------------------------------------
; 266 | if (log->LOG_ERASE)                                                    
;----------------------------------------------------------------------
        ldiu      *+ar0(10),r0          ; |266| 
        cmpi      0,r0                  ; |266| 
        beq       L36                   ; |266| 
;*      Branch Occurs to L36            ; |266| 
	.line	15
;----------------------------------------------------------------------
; 267 | EraseEntireLog(log);                                                   
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldiu      @CL52,r0              ; |267| 
        callu     r0                    ; far call to _EraseEntireLog	; |267| 
                                        ; |267| Far Call Occurs
L36:        
	.line	17
;----------------------------------------------------------------------
; 269 | if (log->log_n==log->log_n_max_per_sector)                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |269| 
        ldiu      ar1,ar0               ; |269| 
        ldiu      *+ar1(3),r0           ; |269| 
        cmpi      *+ar0(2),r0           ; |269| 
        bne       L44                   ; |269| 
;*      Branch Occurs to L44            ; |269| 
	.line	19
;----------------------------------------------------------------------
; 271 | log->log_n = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |271| 
        sti       r0,*+ar0(3)           ; |271| 
	.line	20
;----------------------------------------------------------------------
; 272 | log->log_current_sector++;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |272| 
        ldiu      1,r0                  ; |272| 
        addi      *+ar0(4),r0           ; |272| Unsigned
        sti       r0,*+ar0(4)           ; |272| 
	.line	21
;----------------------------------------------------------------------
; 273 | log->log_absolute_index++;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |273| 
        ldiu      1,r0                  ; |273| 
        addi      *+ar0(5),r0           ; |273| Unsigned
        sti       r0,*+ar0(5)           ; |273| 
	.line	23
;----------------------------------------------------------------------
; 275 | if (log->log_absolute_index > (log->log_n_max_per_sector*log->log_n_sec
;     | tors))                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |275| 
        ldiu      ar1,ar0               ; |275| 
        ldiu      *+ar0(1),r1           ; |275| 
        ldiu      *+ar1(2),r0           ; |275| 
        call      MPY_I30               ; |275| 
                                        ; |275| Call Occurs
        ldiu      *+fp(1),ar0           ; |275| 
        ldiu      *+ar0(5),r1           ; |275| 
        cmpi3     r0,r1                 ; |275| 
        bls       L39                   ; |275| 
;*      Branch Occurs to L39            ; |275| 
	.line	24
;----------------------------------------------------------------------
; 276 | log->log_absolute_index = log->log_n_max_per_sector * (log->log_n_secto
;     | rs-1);                                                                 
;----------------------------------------------------------------------
        ldiu      1,r1                  ; |276| 
        ldiu      ar0,ar1
        ldiu      *+ar1(2),r0           ; |276| 
        subi3     r1,*+ar0,r1           ; |276| Unsigned
        call      MPY_I30               ; |276| 
                                        ; |276| Call Occurs
        ldiu      *+fp(1),ar0           ; |276| 
        sti       r0,*+ar0(5)           ; |276| 
L39:        
	.line	26
;----------------------------------------------------------------------
; 278 | while(log->log_current_sector >= log->log_n_sectors)    /* normalize */
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |278| 
        ldiu      4,ar2                 ; |278| 
        ldiu      ar0,ir0               ; |278| 
        cmpi3     *+ar0,*+ar2(ir0)      ; |278| 
        blod      L41                   ; |278| 
	nop
        ldiu      4,ar1                 ; |279| 
        ldiu      4,ar4                 ; |278| 
;*      Branch Occurs to L41            ; |278| 
L40:        
	.line	27
;----------------------------------------------------------------------
; 279 | log->log_current_sector -= log->log_n_sectors;                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |279| 
        ldiu      ar2,r0                ; |279| 
        ldiu      r0,ir0                ; |279| 
        ldiu      r0,ar0                ; |279| 
        subi3     *+ar2,*+ar1(ir0),r1   ; |279| Unsigned
        sti       r1,*+ar0(4)           ; |279| 
	.line	26
        ldiu      *+fp(1),ar0           ; |278| 
        ldiu      ar0,ir0               ; |278| 
        cmpi3     *+ar0,*+ar4(ir0)      ; |278| 
        bhs       L40                   ; |278| 
;*      Branch Occurs to L40            ; |278| 
L41:        
	.line	29
;----------------------------------------------------------------------
; 281 | if ((log->log_start[log->log_sector_size*log->log_current_sector] & 0x4
;     | 0000000)==0)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |281| 
        ldiu      ar0,ar2               ; |281| 
        ldiu      ar0,ar1               ; |281| 
        ldp       @CL53,DP
        ldiu      *+ar0(7),ar0          ; |281| 
        ldiu      *+ar2(6),ir0          ; |281| 
        mpyi      *+ar1(4),ar0          ; |281| 
        ldiu      @CL53,r0              ; |281| 
        tstb3     *+ar0(ir0),r0         ; |281| 
        bne       L43                   ; |281| 
;*      Branch Occurs to L43            ; |281| 
	.line	30
;----------------------------------------------------------------------
; 282 | MarkLogStart(log, log->log_current_sector+1);           /* reposition t
;     | he starting sector (in case of rollover) */                            
;----------------------------------------------------------------------
        ldiu      ar1,ar0
        ldiu      1,r2                  ; |282| 
        addi      *+ar0(4),r2           ; |282| Unsigned
        ldp       @CL54,DP
        ldiu      @CL54,r0              ; |282| 
        callu     r0                    ; far call to _MarkLogStart	; |282| 
                                        ; |282| Far Call Occurs
L43:        
	.line	32
;----------------------------------------------------------------------
; 284 | EraseSector(log, log->log_current_sector);                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |284| 
        ldp       @CL55,DP
        ldiu      ar0,ar2               ; |284| 
        ldiu      *+ar0(4),r2           ; |284| 
        ldiu      @CL55,r0              ; |284| 
        callu     r0                    ; far call to _EraseSector	; |284| 
                                        ; |284| Far Call Occurs
L44:        
	.line	35
;----------------------------------------------------------------------
; 287 | while(log->log_current_sector >= log->log_n_sectors)            /* norm
;     | alize */                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |287| 
        ldiu      4,ar2                 ; |287| 
        ldiu      ar0,ir0               ; |287| 
        cmpi3     *+ar0,*+ar2(ir0)      ; |287| 
        blod      L46                   ; |287| 
	nop
        ldiu      4,ar1                 ; |288| 
        ldiu      4,ar4                 ; |287| 
;*      Branch Occurs to L46            ; |287| 
L45:        
	.line	36
;----------------------------------------------------------------------
; 288 | log->log_current_sector -= log->log_n_sectors;                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |288| 
        ldiu      ar2,r0                ; |288| 
        ldiu      r0,ir0                ; |288| 
        ldiu      r0,ar0                ; |288| 
        subi3     *+ar2,*+ar1(ir0),r1   ; |288| Unsigned
        sti       r1,*+ar0(4)           ; |288| 
	.line	35
        ldiu      *+fp(1),ar0           ; |287| 
        ldiu      ar0,ir0               ; |287| 
        cmpi3     *+ar0,*+ar4(ir0)      ; |287| 
        bhs       L45                   ; |287| 
;*      Branch Occurs to L45            ; |287| 
L46:        
	.line	39
;----------------------------------------------------------------------
; 291 | if ((log==&SYS) || (log==&FC_Periodic))                                
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      *+fp(1),r0            ; |291| 
        cmpi      @CL6,r0               ; |291| 
        beq       L48                   ; |291| 
;*      Branch Occurs to L48            ; |291| 
        ldp       @CL37,DP
        cmpi      @CL37,r0              ; |291| 
        bne       L59                   ; |291| 
;*      Branch Occurs to L59            ; |291| 
L48:        
	.line	41
;----------------------------------------------------------------------
; 293 | if ( !((mode > LOG_USER1) && (mode <= LOG_USER6)))                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |293| 
        cmpi      5,r0                  ; |293| 
        ble       L50                   ; |293| 
;*      Branch Occurs to L50            ; |293| 
        cmpi      10,r0                 ; |293| 
        ble       L54                   ; |293| 
;*      Branch Occurs to L54            ; |293| 
L50:        
	.line	43
;----------------------------------------------------------------------
; 295 | if (!RTC_PRESENT)                                                      
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |295| 
        ldiu      *ar0,r0               ; |295| 
        cmpi      0,r0                  ; |295| 
        bne       L52                   ; |295| 
;*      Branch Occurs to L52            ; |295| 
	.line	45
;----------------------------------------------------------------------
; 297 | HH                              = (IDEC_SA[9].val)              & 0xFF;
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |297| 
        ldiu      255,r0                ; |297| 
        and3      r0,*ar0,r0            ; |297| 
        sti       r0,*+fp(11)           ; |297| 
	.line	46
;----------------------------------------------------------------------
; 298 | MM                              = (IDEC_SA[10].val>>8)  & 0xFF;        
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |298| 
        ldiu      -8,r0                 ; |298| 
        ash3      r0,*ar0,r0            ; |298| 
        and       255,r0                ; |298| 
        sti       r0,*+fp(12)           ; |298| 
	.line	47
;----------------------------------------------------------------------
; 299 | MONTH                   = (IDEC_SA[8].val)              & 0xFF;        
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |299| 
        ldiu      255,r0                ; |299| 
        and3      r0,*ar0,r0            ; |299| 
        sti       r0,*+fp(9)            ; |299| 
	.line	48
;----------------------------------------------------------------------
; 300 | DAY                             = (IDEC_SA[9].val>>8)   & 0xFF;        
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |300| 
        ldiu      -8,r0                 ; |300| 
        ash3      r0,*ar0,r0            ; |300| 
        and       255,r0                ; |300| 
        sti       r0,*+fp(10)           ; |300| 
	.line	49
;----------------------------------------------------------------------
; 301 | YEAR                    = (IDEC_SA[8].val>>8)   & 0xFF;                
; 303 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |301| 
        ldiu      -8,r0                 ; |301| 
        ash3      r0,*ar0,r0            ; |301| 
        and       255,r0                ; |301| 
        sti       r0,*+fp(8)            ; |301| 
        bu        L53                   ; |252| 
;*      Branch Occurs to L53            ; |252| 
L52:        
	.line	53
;----------------------------------------------------------------------
; 305 | HH                              = RTC[4] & 0x3F;                       
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,ar0             ; |305| 
        ldiu      63,r0                 ; |305| 
        and3      r0,*ar0,r0            ; |305| 
        sti       r0,*+fp(11)           ; |305| 
	.line	54
;----------------------------------------------------------------------
; 306 | MM                              = RTC[3] & 0x7F;                       
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      @CL61,ar0             ; |306| 
        ldiu      127,r0                ; |306| 
        and3      r0,*ar0,r0            ; |306| 
        sti       r0,*+fp(12)           ; |306| 
	.line	55
;----------------------------------------------------------------------
; 307 | MONTH                   = RTC[7] & 0x1F;                               
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldiu      @CL62,ar0             ; |307| 
        ldiu      31,r0                 ; |307| 
        and3      r0,*ar0,r0            ; |307| 
        sti       r0,*+fp(9)            ; |307| 
	.line	56
;----------------------------------------------------------------------
; 308 | DAY                             = RTC[6] & 0x3F;                       
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldiu      @CL63,ar0             ; |308| 
        ldiu      63,r0                 ; |308| 
        and3      r0,*ar0,r0            ; |308| 
        sti       r0,*+fp(10)           ; |308| 
	.line	57
;----------------------------------------------------------------------
; 309 | YEAR                    = RTC[8] & 0xFF;                               
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar0             ; |309| 
        ldiu      255,r0                ; |309| 
        and3      r0,*ar0,r0            ; |309| 
        sti       r0,*+fp(8)            ; |309| 
L53:        
	.line	60
;----------------------------------------------------------------------
; 312 | p[0]  = (REG_TIME<<16) | (DIAGNOSTICS[0] & 0xFFFF);                    
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      16,r1                 ; |312| 
        ldiu      @CL65,ar0             ; |312| 
        ldiu      *+fp(3),ar2           ; |312| 
        ldp       @CL66,DP
        ldiu      *ar0,r0               ; |312| 
        ldiu      @CL66,ar1             ; |312| 
        and       65535,r0              ; |312| 
        ash3      r1,*ar1,r1            ; |312| 
        or3       r1,r0,r0              ; |312| 
        sti       r0,*ar2               ; |312| 
	.line	61
;----------------------------------------------------------------------
; 313 | p[1]  = DAY<<24 | MONTH<<16 | HH<<8 | MM;                              
;----------------------------------------------------------------------
        ldiu      *+fp(9),r2            ; |313| 
        ldiu      *+fp(10),r1           ; |313| 
        ash       16,r2                 ; |313| 
        ldiu      *+fp(11),r0           ; |313| 
        ldiu      *+fp(3),ar0           ; |313| 
        ash       24,r1                 ; |313| 
        ash       8,r0                  ; |313| 
        or3       r1,r2,r1              ; |313| 
        or3       r1,r0,r0              ; |313| 
        or        *+fp(12),r0           ; |313| 
        sti       r0,*+ar0(1)           ; |313| 
	.line	62
;----------------------------------------------------------------------
; 314 | p[7]  = (YEAR<<16) & 0x00FF0000;                                       
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(3),ar0           ; |314| 
        ldiu      *+fp(8),r0            ; |314| 
        ash       16,r0                 ; |314| 
        and       @CL67,r0              ; |314| 
        sti       r0,*+ar0(7)           ; |314| 
	.line	63
;----------------------------------------------------------------------
; 315 | p[7] |= (mode<<24);                                                    
; 317 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |315| 
        ldiu      *+fp(2),r0            ; |315| 
        ash       24,r0                 ; |315| 
        or        *+ar0(7),r0           ; |315| 
        sti       r0,*+ar0(7)           ; |315| 
        bu        L57                   ; |252| 
;*      Branch Occurs to L57            ; |252| 
L54:        
	.line	67
;----------------------------------------------------------------------
; 319 | p[7] &= 0x00FF0000;                                                    
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldiu      *+fp(3),ar0           ; |319| 
        ldiu      @CL68,r0              ; |319| 
        and       *+ar0(7),r0           ; |319| 
        sti       r0,*+ar0(7)           ; |319| 
	.line	68
;----------------------------------------------------------------------
; 320 | p[7] |= (mode<<24);                                                    
; 323 | switch (mode)                                                          
; 325 | case LOG_ERROR:                                                        
; 326 | case LOG_PERIODIC:                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |320| 
        ldiu      *+fp(3),ar0           ; |320| 
        ash       24,r0                 ; |320| 
        or        *+ar0(7),r0           ; |320| 
        sti       r0,*+ar0(7)           ; |320| 
        bu        L57                   ; |252| 
;*      Branch Occurs to L57            ; |252| 
L55:        
	.line	76
;----------------------------------------------------------------------
; 328 | p[2] = TOIEEE(REG_WATERCUT_RAW);                                       
;----------------------------------------------------------------------
        ldp       @CL69,DP
        ldiu      @CL69,ar0             ; |328| 
        ldfu      *ar0,f2               ; |328| 
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |328| 
        callu     r0                    ; far call to _TOIEEE	; |328| 
                                        ; |328| Far Call Occurs
        ldiu      *+fp(3),ar0           ; |328| 
        sti       r0,*+ar0(2)           ; |328| 
	.line	77
;----------------------------------------------------------------------
; 329 | p[3] = TOIEEE(REG_TEMPERATURE_EXTERNAL.calc_val);                      
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,ar0             ; |329| 
        ldfu      *ar0,f0               ; |329| 40b float hi half
        ldp       @CL70,DP
        ldiu      *+ar0,r0              ; |329| 40b float lo half
        ldiu      @CL70,r1              ; |329| 
        rnd       f0,f2                 ; |329| Demote to low precision
        callu     r1                    ; far call to _TOIEEE	; |329| 
                                        ; |329| Far Call Occurs
        ldiu      *+fp(3),ar0           ; |329| 
        sti       r0,*+ar0(3)           ; |329| 
	.line	78
;----------------------------------------------------------------------
; 330 | p[4] = TOIEEE(REG_FREQ[OSC_OIL_CALC].calc_val);                        
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar0             ; |330| 
        ldp       @CL73,DP
        ldiu      44,r0                 ; |330| 
        mpyi3     r0,*ar0,ar0           ; |330| 
        addi      @CL73,ar0             ; |330| Unsigned
        ldfu      *ar0,f0               ; |330| 40b float hi half
        ldiu      *+ar0,r0              ; |330| 40b float lo half
        ldp       @CL70,DP
        rnd       f0,f2                 ; |330| Demote to low precision
        ldiu      @CL70,r1              ; |330| 
        callu     r1                    ; far call to _TOIEEE	; |330| 
                                        ; |330| Far Call Occurs
        ldiu      *+fp(3),ar0           ; |330| 
        sti       r0,*+ar0(4)           ; |330| 
	.line	79
;----------------------------------------------------------------------
; 331 | p[5] = TOIEEE(REG_FREQ[OSC_WATER_CALC].calc_val);                      
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,ar0             ; |331| 
        ldiu      44,r0                 ; |331| 
        ldp       @CL73,DP
        mpyi3     r0,*ar0,ar0           ; |331| 
        addi      @CL73,ar0             ; |331| Unsigned
        ldfu      *ar0,f0               ; |331| 40b float hi half
        ldp       @CL70,DP
        ldiu      *+ar0,r0              ; |331| 40b float lo half
        ldiu      @CL70,r1              ; |331| 
        rnd       f0,f2                 ; |331| Demote to low precision
        callu     r1                    ; far call to _TOIEEE	; |331| 
                                        ; |331| Far Call Occurs
        ldiu      *+fp(3),ar0           ; |331| 
        sti       r0,*+ar0(5)           ; |331| 
	.line	80
;----------------------------------------------------------------------
; 332 | p[6] = TOIEEE(REG_VREF[OSC_OIL_CALC].calc_val);                        
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar0             ; |332| 
        ldiu      44,r0                 ; |332| 
        ldp       @CL75,DP
        mpyi3     r0,*ar0,ar0           ; |332| 
        addi      @CL75,ar0             ; |332| Unsigned
        ldfu      *ar0,f1               ; |332| 40b float hi half
        ldp       @CL70,DP
        ldiu      *+ar0,r1              ; |332| 40b float lo half
        ldiu      @CL70,r0              ; |332| 
        rnd       f1,f2                 ; |332| Demote to low precision
        callu     r0                    ; far call to _TOIEEE	; |332| 
                                        ; |332| Far Call Occurs
        ldiu      *+fp(3),ar0           ; |332| 
        sti       r0,*+ar0(6)           ; |332| 
	.line	81
;----------------------------------------------------------------------
; 333 | break;                                                                 
; 335 | default:                                                               
;----------------------------------------------------------------------
        bu        L59                   ; |333| 
;*      Branch Occurs to L59            ; |333| 
	.line	85
;----------------------------------------------------------------------
; 337 | break;                                                                 
;----------------------------------------------------------------------
L57:        
	.line	71
        ldiu      *+fp(2),r0            ; |323| 
        cmpi      1,r0                  ; |323| 
        beq       L55                   ; |323| 
;*      Branch Occurs to L55            ; |323| 
        cmpi      4,r0                  ; |323| 
        beq       L55                   ; |323| 
;*      Branch Occurs to L55            ; |323| 
L59:        
	.line	91
;----------------------------------------------------------------------
; 343 | p[0]    |= 0x40000000;  /* set flag to show that this is not a starting
;     |  record */                                                             
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      *+fp(3),ar0           ; |343| 
        ldiu      @CL53,r0              ; |343| 
        or3       r0,*ar0,r0            ; |343| 
        sti       r0,*ar0               ; |343| 
	.line	92
;----------------------------------------------------------------------
; 344 | p[0]    &= 0x7FFFFFFF;  /* clear flag to show that this is a record */ 
;----------------------------------------------------------------------
        ldp       @CL76,DP
        ldiu      *+fp(3),ar0           ; |344| 
        ldiu      @CL76,r0              ; |344| 
        and3      r0,*ar0,r0            ; |344| 
        sti       r0,*ar0               ; |344| 
	.line	93
;----------------------------------------------------------------------
; 345 | ck               = 0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |345| 
        sti       r0,*+fp(6)            ; |345| 
	.line	95
;----------------------------------------------------------------------
; 347 | for (i=0;i<log->log_record_size;i++)                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(7)            ; |347| 
        ldiu      *+fp(1),ar0           ; |347| 
        ldiu      *+fp(7),r0            ; |347| 
        cmpi      *+ar0(8),r0           ; |347| 
        bhs       L64                   ; |347| 
;*      Branch Occurs to L64            ; |347| 
L60:        
	.line	97
;----------------------------------------------------------------------
; 349 | if (i==0)       /* ignore first two bits */                            
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |349| 
        cmpi      0,r0                  ; |349| 
        bne       L62                   ; |349| 
;*      Branch Occurs to L62            ; |349| 
	.line	98
;----------------------------------------------------------------------
; 350 | ck += ((p[i]>>24) & 0x3F);                                             
; 351 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0                ; |350| 
        ldiu      *+fp(3),ir0           ; |350| 
        ldiu      -24,r0                ; |350| 
        lsh3      r0,*+ar0(ir0),r0      ; |350| 
        and       63,r0                 ; |350| 
        addi      *+fp(6),r0            ; |350| Unsigned
        sti       r0,*+fp(6)            ; |350| 
        bu        L63                   ; |252| 
;*      Branch Occurs to L63            ; |252| 
L62:        
	.line	100
;----------------------------------------------------------------------
; 352 | ck += ((p[i]>>24) & 0xFF);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |352| 
        ldiu      *+fp(7),ar0           ; |352| 
        ldiu      -24,r0                ; |352| 
        lsh3      r0,*+ar0(ir0),r0      ; |352| 
        and       255,r0                ; |352| 
        addi      *+fp(6),r0            ; |352| Unsigned
        sti       r0,*+fp(6)            ; |352| 
L63:        
	.line	102
;----------------------------------------------------------------------
; 354 | ck += ((p[i]>>16) & 0xFF);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |354| 
        ldiu      *+fp(7),ar0           ; |354| 
        ldiu      -16,r0                ; |354| 
        lsh3      r0,*+ar0(ir0),r0      ; |354| 
        and       255,r0                ; |354| 
        addi      *+fp(6),r0            ; |354| Unsigned
        sti       r0,*+fp(6)            ; |354| 
	.line	103
;----------------------------------------------------------------------
; 355 | ck += ((p[i]>>8) & 0xFF);                                              
;----------------------------------------------------------------------
        ldiu      -8,r0                 ; |355| 
        lsh3      r0,*+ar0(ir0),r0      ; |355| 
        and       255,r0                ; |355| 
        addi      *+fp(6),r0            ; |355| Unsigned
        sti       r0,*+fp(6)            ; |355| 
	.line	104
;----------------------------------------------------------------------
; 356 | ck += ((p[i]) & 0xFF);                                                 
;----------------------------------------------------------------------
        ldiu      255,r0                ; |356| 
        and3      r0,*+ar0(ir0),r0      ; |356| 
        addi      *+fp(6),r0            ; |356| Unsigned
        sti       r0,*+fp(6)            ; |356| 
	.line	95
        ldiu      1,r0                  ; |347| 
        addi      *+fp(7),r0            ; |347| 
        sti       r0,*+fp(7)            ; |347| 
        ldiu      *+fp(1),ar0           ; |347| 
        ldiu      *+fp(7),r0            ; |347| 
        cmpi      *+ar0(8),r0           ; |347| 
        blo       L60                   ; |347| 
;*      Branch Occurs to L60            ; |347| 
L64:        
	.line	107
;----------------------------------------------------------------------
; 359 | p[log->log_record_size-1]       |= (ck & 0xFFFF);                      
;----------------------------------------------------------------------
        ldiu      1,ar0                 ; |359| 
        ldiu      *+fp(1),ar1           ; |359| 
        ldiu      *+fp(6),r0            ; |359| 
        ldiu      *+fp(3),ir0           ; |359| 
        subri     *+ar1(8),ar0          ; |359| Unsigned
        and       65535,r0              ; |359| 
        or3       r0,*+ar0(ir0),r0      ; |359| 
        sti       r0,*+ar0(ir0)         ; |359| 
	.line	108
;----------------------------------------------------------------------
; 360 | addr                                             = (unsigned int*) &log
;     | ->log_start[(log->log_sector_size*log->log_current_sector) + (log->log_
;     | record_size*log->log_n)];                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |360| 
        ldiu      ar2,ar1               ; |360| 
        ldiu      ar2,ar5               ; |360| 
        ldiu      ar1,ar4               ; |360| 
        ldiu      *+ar5(8),r1           ; |360| 
        ldiu      *+ar2(7),r0           ; |360| 
        ldiu      ar1,ar0               ; |360| 
        mpyi      *+ar1(4),r0           ; |360| 
        mpyi      *+ar4(3),r1           ; |360| 
        addi      *+ar0(6),r0           ; |360| Unsigned
        addi3     r1,r0,r0              ; |360| Unsigned
        sti       r0,*+fp(4)            ; |360| 
	.line	110
;----------------------------------------------------------------------
; 362 | FLASH_LOCK_BLK(log->log_start + (log->log_sector_size*log->log_current_
;     | sector), FALSE);                                                       
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      @CL45,r0              ; |362| 
        ldiu      *+ar0(7),ar2          ; |362| 
        mpyi      *+ar1(4),ar2          ; |362| 
        addi      *+ar4(6),ar2          ; |362| Unsigned
        ldiu      0,r2                  ; |362| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |362| 
                                        ; |362| Far Call Occurs
	.line	112
;----------------------------------------------------------------------
; 364 | for (i=0;i<log->log_record_size;i++)                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |364| 
        sti       r0,*+fp(7)            ; |364| 
        ldiu      *+fp(1),ar0           ; |364| 
        ldiu      *+fp(7),r0            ; |364| 
        cmpi      *+ar0(8),r0           ; |364| 
        bhs       L68                   ; |364| 
;*      Branch Occurs to L68            ; |364| 
L65:        
	.line	114
;----------------------------------------------------------------------
; 366 | *FLASH_LOC      = PROGRAM;                                             
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |366| 
        ldp       @CL48,DP
        ldiu      @CL48,r0              ; |366| 
        sti       r0,*ar0               ; |366| 
	.line	115
;----------------------------------------------------------------------
; 367 | addr[i]         = p[i];                                                
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar1           ; |367| 
        ldiu      *+fp(3),ir0           ; |367| 
        ldiu      *+fp(4),ir1           ; |367| 
        ldiu      ar1,ar0               ; |367| 
        ldiu      *+ar1(ir0),r0         ; |367| 
        sti       r0,*+ar0(ir1)         ; |367| 
	.line	116
;----------------------------------------------------------------------
; 368 | *FLASH_LOC      = READ_STATUS;                                         
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |368| 
        ldp       @CL49,DP
        ldiu      @CL49,r0              ; |368| 
        sti       r0,*ar0               ; |368| 
	.line	117
;----------------------------------------------------------------------
; 369 | status          = *FLASH_LOC;                                          
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |369| 
        ldiu      *ar0,r0               ; |369| 
        sti       r0,*+fp(5)            ; |369| 
	.line	119
;----------------------------------------------------------------------
; 371 | while (!((status & 0x00800080)==0x00800080))                           
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      @CL50,r0              ; |371| 
        and       *+fp(5),r0            ; |371| 
        cmpi      @CL50,r0              ; |371| 
        beq       L67                   ; |371| 
;*      Branch Occurs to L67            ; |371| 
L66:        
	.line	120
;----------------------------------------------------------------------
; 372 | status = *FLASH_LOC;                                                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |372| 
        ldiu      *ar0,r0               ; |372| 
        sti       r0,*+fp(5)            ; |372| 
	.line	119
        ldp       @CL50,DP
        ldiu      @CL50,r0              ; |371| 
        and       *+fp(5),r0            ; |371| 
        cmpi      @CL50,r0              ; |371| 
        bne       L66                   ; |371| 
;*      Branch Occurs to L66            ; |371| 
L67:        
	.line	112
        ldiu      1,r0                  ; |364| 
        addi      *+fp(7),r0            ; |364| 
        sti       r0,*+fp(7)            ; |364| 
        ldiu      *+fp(1),ar0           ; |364| 
        ldiu      *+fp(7),r0            ; |364| 
        cmpi      *+ar0(8),r0           ; |364| 
        blo       L65                   ; |364| 
;*      Branch Occurs to L65            ; |364| 
L68:        
	.line	123
;----------------------------------------------------------------------
; 375 | *FLASH_LOC = READ_ARRAY;                                               
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |375| 
        ldp       @CL51,DP
        ldiu      @CL51,r0              ; |375| 
        sti       r0,*ar0               ; |375| 
	.line	125
;----------------------------------------------------------------------
; 377 | FLASH_LOCK_BLK(log->log_start + (log->log_sector_size*log->log_current_
;     | sector), TRUE);                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |377| 
        ldp       @CL45,DP
        ldiu      ar0,ar4               ; |377| 
        ldiu      *+ar0(7),ar2          ; |377| 
        ldiu      ar0,ar1               ; |377| 
        mpyi      *+ar4(4),ar2          ; |377| 
        ldiu      @CL45,r0              ; |377| 
        addi      *+ar1(6),ar2          ; |377| Unsigned
        ldiu      1,r2                  ; |377| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |377| 
                                        ; |377| Far Call Occurs
	.line	127
;----------------------------------------------------------------------
; 379 | for (i=0;i<log->log_record_size;i++)                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |379| 
        sti       r0,*+fp(7)            ; |379| 
        ldiu      *+fp(1),ar0           ; |379| 
        ldiu      *+fp(7),r0            ; |379| 
        cmpi      *+ar0(8),r0           ; |379| 
        bhs       L72                   ; |379| 
;*      Branch Occurs to L72            ; |379| 
L69:        
	.line	129
;----------------------------------------------------------------------
; 381 | if (addr[i] != p[i])                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |381| 
        ldiu      *+fp(3),ir1           ; |381| 
        ldiu      *+fp(4),ir0           ; |381| 
        ldiu      ar0,ar1               ; |381| 
        cmpi3     *+ar0(ir1),*+ar1(ir0) ; |381| 
        beq       L71                   ; |381| 
;*      Branch Occurs to L71            ; |381| 
	.line	130
;----------------------------------------------------------------------
; 382 | DIAGNOSTICS[1] |= ERROR2_FLASH_MEMORY_LOG;                             
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      @CL65,ar0             ; |382| 
        ldiu      256,r0                ; |382| 
        or        *+ar0(1),r0           ; |382| 
        sti       r0,*+ar0(1)           ; |382| 
L71:        
	.line	127
        ldiu      1,r0                  ; |379| 
        addi      *+fp(7),r0            ; |379| 
        sti       r0,*+fp(7)            ; |379| 
        ldiu      *+fp(1),ar0           ; |379| 
        ldiu      *+fp(7),r0            ; |379| 
        cmpi      *+ar0(8),r0           ; |379| 
        blo       L69                   ; |379| 
;*      Branch Occurs to L69            ; |379| 
L72:        
	.line	133
;----------------------------------------------------------------------
; 385 | log->log_n++;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |385| 
        ldiu      1,r0                  ; |385| 
        addi      *+ar0(3),r0           ; |385| Unsigned
        sti       r0,*+ar0(3)           ; |385| 
	.line	134
;----------------------------------------------------------------------
; 386 | log->log_absolute_index++;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |386| 
        ldiu      1,r0                  ; |386| 
        addi      *+ar0(5),r0           ; |386| Unsigned
        sti       r0,*+ar0(5)           ; |386| 
	.line	137
;----------------------------------------------------------------------
; 389 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L73:        
	.line	138
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar5
        pop       ar4
                                        ; Unallocate the Frame
        subi      14,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	390,000003000h,12


	.sect	 "internal_RAM"

	.global	_LogNow
	.sym	_LogNow,_LogNow,32,2,0
	.func	404
;******************************************************************************
;* FUNCTION NAME: _LogNow                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar2                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_LogNow:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
	.sym	_v,1,24,1,32,.fake6
	.line	1
;----------------------------------------------------------------------
; 404 | void LogNow(VAR* v)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |405| 
	.line	3
;----------------------------------------------------------------------
; 406 | DataLog();                                                             
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      @CL77,r0              ; |406| 
        callu     r0                    ; far call to _DataLog	; |406| 
                                        ; |406| Far Call Occurs
	.line	4
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	407,000000000h,1


	.sect	 "internal_RAM"

	.global	_LogNowUser
	.sym	_LogNowUser,_LogNowUser,32,2,0
	.func	421
;******************************************************************************
;* FUNCTION NAME: _LogNowUser                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar2                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_LogNowUser:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
	.sym	_v,1,24,1,32,.fake6
	.line	1
;----------------------------------------------------------------------
; 421 | void LogNowUser(VAR* v)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |422| 
	.line	3
;----------------------------------------------------------------------
; 423 | DataLogUser();                                                         
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,r0              ; |423| 
        callu     r0                    ; far call to _DataLogUser	; |423| 
                                        ; |423| Far Call Occurs
	.line	4
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	424,000000000h,1


	.sect	 "internal_RAM"

	.global	_DataLogCounter
	.sym	_DataLogCounter,_DataLogCounter,46,2,0
	.func	439
;******************************************************************************
;* FUNCTION NAME: _DataLogCounter                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,f2,r2,r3,ar0,ar2,fp,ir0,st                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 11 Auto + 0 SOE = 13 words        *
;******************************************************************************
_DataLogCounter:
;* ar2   assigned to _i
	.sym	_i,10,4,17,32
;* r2    assigned to _FORCE
	.sym	_FORCE,2,14,17,32
	.sym	_i,1,4,1,32
	.sym	_FORCE,2,14,1,32
	.sym	_rec,3,62,1,256,,8
	.sym	_j,11,4,1,32
	.line	1
;----------------------------------------------------------------------
; 439 | BOOL DataLogCounter(int i, BOOL FORCE)                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      11,sp
	.line	2
;----------------------------------------------------------------------
; 441 | unsigned int rec[SYS_log_record_size];  /* log record           */     
; 442 | int j;
;     |  /* record counter       */                                            
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |440| 
        sti       ar2,*+fp(1)           ; |440| 
	.line	6
;----------------------------------------------------------------------
; 444 | if (SYS.log_len<=0)                     /* empty log, return */        
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |444| 
        ldiu      *ar0,r0               ; |444| 
        cmpi      0,r0                  ; |444| 
        bne       L83                   ; |444| 
;*      Branch Occurs to L83            ; |444| 
	.line	7
;----------------------------------------------------------------------
; 445 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L98                   ; |445| 
	nop
	nop
        ldiu      0,r0                  ; |445| 
;*      Branch Occurs to L98            ; |445| 
L83:        
	.line	9
;----------------------------------------------------------------------
; 447 | if ((i<0) || (i>=FCMAX))        /* flow computer in range */           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |447| 
        cmpi      0,r0                  ; |447| 
        blt       L85                   ; |447| 
;*      Branch Occurs to L85            ; |447| 
        cmpi      3,r0                  ; |447| 
        blt       L86                   ; |447| 
;*      Branch Occurs to L86            ; |447| 
L85:        
	.line	10
;----------------------------------------------------------------------
; 448 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L98                   ; |448| 
	nop
	nop
        ldiu      0,r0                  ; |448| 
;*      Branch Occurs to L98            ; |448| 
L86:        
	.line	12
;----------------------------------------------------------------------
; 450 | if (!FORCE)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |450| 
        cmpi      0,r0                  ; |450| 
        bne       L92                   ; |450| 
;*      Branch Occurs to L92            ; |450| 
	.line	14
;----------------------------------------------------------------------
; 452 | if (!FC[i].enable_FLOW)                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |452| 
        ldp       @CL79,DP
        mpyi      1336,ir0              ; |452| 
        ldiu      @CL79,ar0             ; |452| 
        ldiu      *+ar0(ir0),r0         ; |452| 
        cmpi      0,r0                  ; |452| 
        bne       L89                   ; |452| 
;*      Branch Occurs to L89            ; |452| 
	.line	15
;----------------------------------------------------------------------
; 453 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L98                   ; |453| 
	nop
	nop
        ldiu      0,r0                  ; |453| 
;*      Branch Occurs to L98            ; |453| 
L89:        
	.line	17
;----------------------------------------------------------------------
; 455 | if ((!FC[i].enable_GROSS)&&(!FC[i].enable_NET))                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |455| 
        ldp       @CL80,DP
        mpyi      1336,ir0              ; |455| 
        ldiu      @CL80,ar0             ; |455| 
        ldiu      *+ar0(ir0),r0         ; |455| 
        cmpi      0,r0                  ; |455| 
        bne       L92                   ; |455| 
;*      Branch Occurs to L92            ; |455| 
        ldiu      *+fp(1),ir0           ; |455| 
        ldp       @CL81,DP
        mpyi      1336,ir0              ; |455| 
        ldiu      @CL81,ar0             ; |455| 
        ldiu      *+ar0(ir0),r0         ; |455| 
        cmpi      0,r0                  ; |455| 
        bne       L92                   ; |455| 
;*      Branch Occurs to L92            ; |455| 
	.line	18
;----------------------------------------------------------------------
; 456 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L98                   ; |456| 
	nop
	nop
        ldiu      0,r0                  ; |456| 
;*      Branch Occurs to L98            ; |456| 
L92:        
	.line	21
;----------------------------------------------------------------------
; 459 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	23
;----------------------------------------------------------------------
; 461 | for (j=0;j<SYS_log_record_size;j++)
;     |          /* clear array */                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |461| 
        sti       r0,*+fp(11)           ; |461| 
        cmpi      8,r0                  ; |461| 
        ldiu      0,r1                  ; |462| 
        bge       L94                   ; |461| 
;*      Branch Occurs to L94            ; |461| 
L93:        
	.line	24
;----------------------------------------------------------------------
; 462 | rec[j] = 0x00000000;                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |462| 
        ldiu      *+fp(11),ir0          ; |462| 
        addi      3,ar0                 ; |462| 
        sti       r1,*+ar0(ir0)         ; |462| 
	.line	23
        ldiu      1,r0                  ; |461| 
        addi      *+fp(11),r0           ; |461| 
        sti       r0,*+fp(11)           ; |461| 
        cmpi      8,r0                  ; |461| 
        blt       L93                   ; |461| 
;*      Branch Occurs to L93            ; |461| 
L94:        
	.line	26
;----------------------------------------------------------------------
; 464 | rec[2] = TOIEEE(FC[i].NET_OIL.val);                                    
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      *+fp(1),ir0           ; |464| 
        ldiu      @CL82,ar0             ; |464| 
        ldp       @CL70,DP
        mpyi      1336,ir0              ; |464| 
        ldiu      @CL70,r0              ; |464| 
        ldfu      *+ar0(ir0),f2         ; |464| 
        callu     r0                    ; far call to _TOIEEE	; |464| 
                                        ; |464| Far Call Occurs
        ldiu      fp,ar0                ; |464| 
        addi      5,ar0                 ; |464| 
        sti       r0,*ar0               ; |464| 
	.line	27
;----------------------------------------------------------------------
; 465 | rec[3] = TOIEEE(FC[i].NET_WATER.val);                                  
;----------------------------------------------------------------------
        ldp       @CL83,DP
        ldiu      @CL83,ar0             ; |465| 
        ldiu      *+fp(1),ir0           ; |465| 
        ldp       @CL70,DP
        mpyi      1336,ir0              ; |465| 
        ldiu      @CL70,r0              ; |465| 
        ldfu      *+ar0(ir0),f2         ; |465| 
        callu     r0                    ; far call to _TOIEEE	; |465| 
                                        ; |465| Far Call Occurs
        ldiu      fp,ar0                ; |465| 
        addi      6,ar0                 ; |465| 
        sti       r0,*ar0               ; |465| 
	.line	28
;----------------------------------------------------------------------
; 466 | rec[4] = TOIEEE(FC[i].GROSS_OIL.val);                                  
;----------------------------------------------------------------------
        ldp       @CL84,DP
        ldiu      @CL84,ar0             ; |466| 
        ldp       @CL70,DP
        ldiu      *+fp(1),ir0           ; |466| 
        mpyi      1336,ir0              ; |466| 
        ldiu      @CL70,r0              ; |466| 
        ldfu      *+ar0(ir0),f2         ; |466| 
        callu     r0                    ; far call to _TOIEEE	; |466| 
                                        ; |466| Far Call Occurs
        ldiu      fp,ar0                ; |466| 
        addi      7,ar0                 ; |466| 
        sti       r0,*ar0               ; |466| 
	.line	29
;----------------------------------------------------------------------
; 467 | rec[5] = TOIEEE(FC[i].GROSS_WATER.val);                                
;----------------------------------------------------------------------
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |467| 
        ldp       @CL70,DP
        ldiu      *+fp(1),ir0           ; |467| 
        mpyi      1336,ir0              ; |467| 
        ldiu      @CL70,r0              ; |467| 
        ldfu      *+ar0(ir0),f2         ; |467| 
        callu     r0                    ; far call to _TOIEEE	; |467| 
                                        ; |467| Far Call Occurs
        ldiu      fp,ar0                ; |467| 
        addi      8,ar0                 ; |467| 
        sti       r0,*ar0               ; |467| 
	.line	31
;----------------------------------------------------------------------
; 469 | if ( (i==0) && ((ANALYZER_MODE.val&0xFF)==SUB_CCM) )    /* flow compute
;     | r 1 also has gas totalizer when in CCM mode */                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |469| 
        cmpi      0,r0                  ; |469| 
        bne       L97                   ; |469| 
;*      Branch Occurs to L97            ; |469| 
        ldp       @CL86,DP
        ldiu      @CL86,ar0             ; |469| 
        ldiu      255,r0                ; |469| 
        and3      r0,*ar0,r0            ; |469| 
        cmpi      6,r0                  ; |469| 
        bne       L97                   ; |469| 
;*      Branch Occurs to L97            ; |469| 
	.line	32
;----------------------------------------------------------------------
; 470 | rec[6] = TOIEEE(CCM_GAS_TOTAL.val);                                    
;----------------------------------------------------------------------
        ldp       @CL87,DP
        ldiu      @CL87,ar0             ; |470| 
        ldfu      *ar0,f2               ; |470| 
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |470| 
        callu     r0                    ; far call to _TOIEEE	; |470| 
                                        ; |470| Far Call Occurs
        ldiu      fp,ar0                ; |470| 
        addi      9,ar0                 ; |470| 
        sti       r0,*ar0               ; |470| 
L97:        
	.line	34
;----------------------------------------------------------------------
; 472 | RecordLogEntry(&FC_Periodic, LOG_FC_1+i, rec);                         
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      11,r2                 ; |472| 
        ldiu      fp,r3                 ; |472| 
        ldiu      @CL88,r0              ; |472| 
        addi      *+fp(1),r2            ; |472| 
        ldp       @CL37,DP
        addi      3,r3                  ; |472| 
        ldiu      @CL37,ar2             ; |472| 
        callu     r0                    ; far call to _RecordLogEntry	; |472| 
                                        ; |472| Far Call Occurs
	.line	36
;----------------------------------------------------------------------
; 474 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	38
;----------------------------------------------------------------------
; 476 | return 1;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |476| 
L98:        
	.line	39
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |477| 
        ldiu      *fp,fp                ; |477| 
                                        ; Unallocate the Frame
        subi      13,sp                 ; |477| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	477,000000000h,11


	.sect	 "internal_RAM"

	.global	_DataLogCounters
	.sym	_DataLogCounters,_DataLogCounters,32,2,0
	.func	492
;******************************************************************************
;* FUNCTION NAME: _DataLogCounters                                            *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DataLogCounters:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 492 | void DataLogCounters(void)                                             
; 494 | int i; /* flow computer counter */                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 496 | for (i=0;i<FCMAX;i++)   /* record only if FC enabled, etc */           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |496| 
        sti       r0,*+fp(1)            ; |496| 
        cmpi      3,r0                  ; |496| 
        bge       L102                  ; |496| 
;*      Branch Occurs to L102           ; |496| 
L101:        
	.line	6
;----------------------------------------------------------------------
; 497 | DataLogCounter(i,0);                                                   
;----------------------------------------------------------------------
        ldp       @CL89,DP
        ldiu      *+fp(1),ar2           ; |497| 
        ldiu      0,r2                  ; |497| 
        ldiu      @CL89,r0              ; |497| 
        callu     r0                    ; far call to _DataLogCounter	; |497| 
                                        ; |497| Far Call Occurs
	.line	5
        ldiu      1,r0                  ; |496| 
        addi      *+fp(1),r0            ; |496| 
        sti       r0,*+fp(1)            ; |496| 
        cmpi      3,r0                  ; |496| 
        blt       L101                  ; |496| 
;*      Branch Occurs to L101           ; |496| 
L102:        
	.line	8
;----------------------------------------------------------------------
; 499 | if (FC_Periodic.erased_sector)                                         
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |499| 
        ldiu      *ar0,r0               ; |499| 
        cmpi      0,r0                  ; |499| 
        beq       L106                  ; |499| 
;*      Branch Occurs to L106           ; |499| 
	.line	10
;----------------------------------------------------------------------
; 501 | for (i=0;i<FCMAX;i++)                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |501| 
        sti       r0,*+fp(1)            ; |501| 
        cmpi      3,r0                  ; |501| 
        bge       L105                  ; |501| 
;*      Branch Occurs to L105           ; |501| 
L104:        
	.line	11
;----------------------------------------------------------------------
; 502 | DataLogCounter(i,1);                                                   
;----------------------------------------------------------------------
        ldp       @CL89,DP
        ldiu      *+fp(1),ar2           ; |502| 
        ldiu      1,r2                  ; |502| 
        ldiu      @CL89,r0              ; |502| 
        callu     r0                    ; far call to _DataLogCounter	; |502| 
                                        ; |502| Far Call Occurs
	.line	10
        ldiu      1,r0                  ; |501| 
        addi      *+fp(1),r0            ; |501| 
        sti       r0,*+fp(1)            ; |501| 
        cmpi      3,r0                  ; |501| 
        blt       L104                  ; |501| 
;*      Branch Occurs to L104           ; |501| 
L105:        
	.line	13
;----------------------------------------------------------------------
; 504 | FC_Periodic.erased_sector = FALSE;                                     
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |504| 
        ldiu      0,r0                  ; |504| 
        sti       r0,*ar0               ; |504| 
L106:        
	.line	15
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	506,000000000h,1


	.sect	 ".text"

	.global	_DataLogUserClearFlag
	.sym	_DataLogUserClearFlag,_DataLogUserClearFlag,32,2,0
	.func	520
;******************************************************************************
;* FUNCTION NAME: _DataLogUserClearFlag                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DataLogUserClearFlag:
	.line	1
;----------------------------------------------------------------------
; 520 | void DataLogUserClearFlag(void)                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 522 | USER_LOG_EVENT = FALSE;                                                
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |522| 
        ldiu      0,r0                  ; |522| 
        sti       r0,*ar0               ; |522| 
	.line	4
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	523,000000000h,0


	.sect	 ".text"

	.global	_DataLogSysClearFlag
	.sym	_DataLogSysClearFlag,_DataLogSysClearFlag,32,2,0
	.func	537
;******************************************************************************
;* FUNCTION NAME: _DataLogSysClearFlag                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DataLogSysClearFlag:
	.line	1
;----------------------------------------------------------------------
; 537 | void DataLogSysClearFlag(void)                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 539 | SYS_LOG_EVENT = FALSE;                                                 
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |539| 
        ldiu      0,r0                  ; |539| 
        sti       r0,*ar0               ; |539| 
	.line	4
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	540,000000000h,0


	.sect	 "internal_RAM"

	.global	_DataLogUser
	.sym	_DataLogUser,_DataLogUser,32,2,0
	.func	554
;******************************************************************************
;* FUNCTION NAME: _DataLogUser                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,f2,r2,r3,r4,ar0,ar2,fp,ir0,st,rs,rc           *
;*   Regs Saved         : r4                                                  *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 42 Auto + 1 SOE = 45 words        *
;******************************************************************************
_DataLogUser:
	.sym	_v,1,120,1,960,.fake6,30
	.sym	_ui,31,14,1,32
	.sym	_rec,32,62,1,256,,8
	.sym	_i,40,4,1,32
	.sym	_j,41,4,1,32
	.sym	_k,42,4,1,32
	.line	1
;----------------------------------------------------------------------
; 554 | void DataLogUser(void)                                                 
; 556 | VAR* v[30];
;     |  /* user variable vector                                               
;     |            */                                                          
; 557 | unsigned int ui;                                                /* vari
;     | able validation                                                        
;     |    */                                                                  
; 558 | unsigned int rec[SYS_log_record_size];  /* log record vector
;     |                                                   */                   
; 559 | int i,j,k;
;     |  /* variable counter; variable offset; size of record */               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      42,sp
        push      r4
	.line	8
;----------------------------------------------------------------------
; 561 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 563 | if (USER_LOG_ENABLED && (SYS.log_len>0))                               
;----------------------------------------------------------------------
        ldp       @CL90,DP
        ldiu      @CL90,ar0             ; |563| 
        ldiu      *ar0,r0               ; |563| 
        cmpi      0,r0                  ; |563| 
        beq       L126                  ; |563| 
;*      Branch Occurs to L126           ; |563| 
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |563| 
        ldiu      *ar0,r0               ; |563| 
        cmpi      0,r0                  ; |563| 
        beq       L126                  ; |563| 
;*      Branch Occurs to L126           ; |563| 
	.line	12
;----------------------------------------------------------------------
; 565 | USER_LOG_EVENT = TRUE;                                                 
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |565| 
        ldiu      1,r0                  ; |565| 
        sti       r0,*ar0               ; |565| 
	.line	14
;----------------------------------------------------------------------
; 567 | for (i=0;i<30;i++)              /* initialize variable vector */       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |567| 
        sti       r0,*+fp(40)           ; |567| 
        cmpi      30,r0                 ; |567| 
        bge       L118                  ; |567| 
;*      Branch Occurs to L118           ; |567| 
L117:        
	.line	15
;----------------------------------------------------------------------
; 568 | v[i] = &REG_DUMMY;                                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |568| 
        ldp       @CL91,DP
        ldiu      *+fp(40),ir0          ; |568| 
        addi      1,ar0                 ; |568| 
        ldiu      @CL91,r0              ; |568| 
        sti       r0,*+ar0(ir0)         ; |568| 
	.line	14
        ldiu      1,r0                  ; |567| 
        addi      *+fp(40),r0           ; |567| 
        sti       r0,*+fp(40)           ; |567| 
        cmpi      30,r0                 ; |567| 
        blt       L117                  ; |567| 
;*      Branch Occurs to L117           ; |567| 
L118:        
	.line	17
;----------------------------------------------------------------------
; 570 | for (i=0;i<30;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |570| 
        sti       r0,*+fp(40)           ; |570| 
        cmpi      30,r0                 ; |570| 
        bge       L121                  ; |570| 
;*      Branch Occurs to L121           ; |570| 
L119:        
	.line	19
;----------------------------------------------------------------------
; 572 | v[i] = HART_Lookup(LOG_VAR_SEL[i], &ui, (int*)&HART_DV_Table);         
;----------------------------------------------------------------------
        ldp       @CL92,DP
        ldiu      *+fp(40),ir0          ; |572| 
        ldiu      @CL92,ar0             ; |572| 
        ldiu      fp,r2                 ; |572| 
        ldp       @CL94,DP
        ldiu      *+ar0(ir0),ar2        ; |572| 
        ldiu      @CL94,r0              ; |572| 
        ldp       @CL93,DP
        addi      31,r2                 ; |572| 
        ldiu      @CL93,r3              ; |572| 
        callu     r0                    ; far call to _HART_Lookup	; |572| 
                                        ; |572| Far Call Occurs
        ldiu      fp,ar0                ; |572| 
        addi      1,ar0                 ; |572| 
        ldiu      *+fp(40),ir0          ; |572| 
        sti       r0,*+ar0(ir0)         ; |572| 
	.line	21
;----------------------------------------------------------------------
; 574 | if (ui==HART_RESP_Invalid_Selection)                                   
;----------------------------------------------------------------------
        ldiu      *+fp(31),r0           ; |574| 
        cmpi      2,r0                  ; |574| 
        beq       L121                  ; |574| 
;*      Branch Occurs to L121           ; |574| 
	.line	22
;----------------------------------------------------------------------
; 575 | break;                                                                 
;----------------------------------------------------------------------
	.line	17
        ldiu      1,r0                  ; |570| 
        addi      *+fp(40),r0           ; |570| 
        sti       r0,*+fp(40)           ; |570| 
        cmpi      30,r0                 ; |570| 
        blt       L119                  ; |570| 
;*      Branch Occurs to L119           ; |570| 
L121:        
	.line	25
;----------------------------------------------------------------------
; 578 | k = i/5;                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(40),r0           ; |578| 
        ldiu      5,r1                  ; |578| 
        call      DIV_I30               ; |578| 
                                        ; |578| Call Occurs
        sti       r0,*+fp(42)           ; |578| 
	.line	27
;----------------------------------------------------------------------
; 580 | if (i%5)        /* normalize size of record */                         
;----------------------------------------------------------------------
        ldiu      5,r1                  ; |580| 
        ldiu      *+fp(40),r0           ; |580| 
        call      MOD_I30               ; |580| 
                                        ; |580| Call Occurs
        cmpi      0,r0                  ; |580| 
        beq       L123                  ; |580| 
;*      Branch Occurs to L123           ; |580| 
	.line	28
;----------------------------------------------------------------------
; 581 | k++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |581| 
        addi      *+fp(42),r0           ; |581| 
        sti       r0,*+fp(42)           ; |581| 
L123:        
	.line	30
;----------------------------------------------------------------------
; 583 | for (j=0;j<k;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |583| 
        sti       r0,*+fp(41)           ; |583| 
        cmpi      *+fp(42),r0           ; |583| 
        ldiu      5,r4                  ; |591| 
        bge       L125                  ; |583| 
;*      Branch Occurs to L125           ; |583| 
L124:        
	.line	32
;----------------------------------------------------------------------
; 585 | rec[2] = TOIEEE(v[j*5+0]->val);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(41),ir0          ; |585| 
        ldiu      fp,ar0                ; |585| 
        mpyi      5,ir0                 ; |585| 
        addi      1,ar0                 ; |585| 
        ldp       @CL70,DP
        ldiu      *+ar0(ir0),ar0        ; |585| 
        ldiu      @CL70,r0              ; |585| 
        ldfu      *ar0,f2               ; |585| 
        callu     r0                    ; far call to _TOIEEE	; |585| 
                                        ; |585| Far Call Occurs
        ldiu      fp,ar0                ; |585| 
        addi      34,ar0                ; |585| 
        sti       r0,*ar0               ; |585| 
	.line	33
;----------------------------------------------------------------------
; 586 | rec[3] = TOIEEE(v[j*5+1]->val);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(41),ir0          ; |586| 
        ldiu      fp,ar0                ; |586| 
        mpyi      5,ir0                 ; |586| 
        addi      1,ar0                 ; |586| 
        addi      1,ir0                 ; |586| 
        ldp       @CL70,DP
        ldiu      *+ar0(ir0),ar0        ; |586| 
        ldiu      @CL70,r0              ; |586| 
        ldfu      *ar0,f2               ; |586| 
        callu     r0                    ; far call to _TOIEEE	; |586| 
                                        ; |586| Far Call Occurs
        ldiu      fp,ar0                ; |586| 
        addi      35,ar0                ; |586| 
        sti       r0,*ar0               ; |586| 
	.line	34
;----------------------------------------------------------------------
; 587 | rec[4] = TOIEEE(v[j*5+2]->val);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(41),ir0          ; |587| 
        mpyi      5,ir0                 ; |587| 
        addi      2,ir0                 ; |587| 
        ldiu      fp,ar0                ; |587| 
        addi      1,ar0                 ; |587| 
        ldiu      *+ar0(ir0),ar0        ; |587| 
        ldfu      *ar0,f2               ; |587| 
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |587| 
        callu     r0                    ; far call to _TOIEEE	; |587| 
                                        ; |587| Far Call Occurs
        ldiu      fp,ar0                ; |587| 
        addi      36,ar0                ; |587| 
        sti       r0,*ar0               ; |587| 
	.line	35
;----------------------------------------------------------------------
; 588 | rec[5] = TOIEEE(v[j*5+3]->val);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(41),ir0          ; |588| 
        ldiu      fp,ar0                ; |588| 
        mpyi      5,ir0                 ; |588| 
        addi      1,ar0                 ; |588| 
        addi      3,ir0                 ; |588| 
        ldp       @CL70,DP
        ldiu      *+ar0(ir0),ar0        ; |588| 
        ldiu      @CL70,r0              ; |588| 
        ldfu      *ar0,f2               ; |588| 
        callu     r0                    ; far call to _TOIEEE	; |588| 
                                        ; |588| Far Call Occurs
        ldiu      fp,ar0                ; |588| 
        addi      37,ar0                ; |588| 
        sti       r0,*ar0               ; |588| 
	.line	36
;----------------------------------------------------------------------
; 589 | rec[6] = TOIEEE(v[j*5+4]->val);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(41),ir0          ; |589| 
        ldiu      fp,ar0                ; |589| 
        mpyi      5,ir0                 ; |589| 
        addi      1,ar0                 ; |589| 
        addi      4,ir0                 ; |589| 
        ldp       @CL70,DP
        ldiu      *+ar0(ir0),ar0        ; |589| 
        ldiu      @CL70,r0              ; |589| 
        ldfu      *ar0,f2               ; |589| 
        callu     r0                    ; far call to _TOIEEE	; |589| 
                                        ; |589| Far Call Occurs
        ldiu      fp,ar0                ; |589| 
        addi      38,ar0                ; |589| 
        sti       r0,*ar0               ; |589| 
	.line	38
;----------------------------------------------------------------------
; 591 | RecordLogEntry(&SYS, LOG_USER1+j, rec);                                
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      *+fp(41),r2           ; |591| 
        ldiu      @CL88,r0              ; |591| 
        addi      r4,r2                 ; |591| 
        ldiu      fp,r3                 ; |591| 
        ldp       @CL6,DP
        addi      32,r3                 ; |591| 
        ldiu      @CL6,ar2              ; |591| 
        callu     r0                    ; far call to _RecordLogEntry	; |591| 
                                        ; |591| Far Call Occurs
	.line	30
        ldiu      1,r0                  ; |583| 
        addi      *+fp(41),r0           ; |583| 
        sti       r0,*+fp(41)           ; |583| 
        cmpi      *+fp(42),r0           ; |583| 
        blt       L124                  ; |583| 
;*      Branch Occurs to L124           ; |583| 
L125:        
	.line	42
;----------------------------------------------------------------------
; 595 | Timer_Create(&TMR_DATALOG_USER, USER_log_sample_period.val, 1, (int*)Da
;     | taLogUser, 0);                                                         
;----------------------------------------------------------------------
        ldp       @CL96,DP
        ldiu      @CL96,ar0             ; |595| 
        ldp       @CL97,DP
        ldiu      @CL97,r0              ; |595| 
        ldp       @CL78,DP
        ldiu      0,rs                  ; |595| 
        ldiu      @CL78,rc              ; |595| 
        ldfu      *ar0,f2               ; |595| 
        ldp       @CL95,DP
        ldiu      1,r3                  ; |595| 
        ldiu      @CL95,ar2             ; |595| 
        callu     r0                    ; far call to _Timer_Create	; |595| 
                                        ; |595| Far Call Occurs
	.line	43
;----------------------------------------------------------------------
; 596 | Timer_Insert(&TMR_DATALOG_USER,0,TMR_action_replace);                  
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,r0              ; |596| 
        ldp       @CL95,DP
        ldiu      1,r3                  ; |596| 
        ldiu      0,r2                  ; |596| 
        ldiu      @CL95,ar2             ; |596| 
        callu     r0                    ; far call to _Timer_Insert	; |596| 
                                        ; |596| Far Call Occurs
	.line	44
;----------------------------------------------------------------------
; 597 | Timer_Insert(&TMR_CLEAR_USER_LOG_EVENT_FLAG,0,TMR_action_replace);     
; 599 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,r0              ; |597| 
        ldp       @CL99,DP
        ldiu      @CL99,ar2             ; |597| 
        ldiu      1,r3                  ; |597| 
        ldiu      0,r2                  ; |597| 
        callu     r0                    ; far call to _Timer_Insert	; |597| 
                                        ; |597| Far Call Occurs
        bu        L127                  ; |553| 
;*      Branch Occurs to L127           ; |553| 
L126:        
	.line	48
;----------------------------------------------------------------------
; 601 | USER_LOG_EVENT = FALSE;                                                
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |601| 
        ldiu      0,r0                  ; |601| 
        sti       r0,*ar0               ; |601| 
	.line	50
;----------------------------------------------------------------------
; 603 | Timer_Create(&TMR_DATALOG_USER, 1.0, 1, (int*)DataLogUser, 0);         
;----------------------------------------------------------------------
        ldp       @CL97,DP
        ldiu      0,rs                  ; |603| 
        ldiu      @CL97,r0              ; |603| 
        ldp       @CL78,DP
        ldiu      1,r3                  ; |603| 
        ldiu      @CL78,rc              ; |603| 
        ldp       @CL95,DP
        ldfu      1.0000000000e+00,f2   ; |603| 
        ldiu      @CL95,ar2             ; |603| 
        callu     r0                    ; far call to _Timer_Create	; |603| 
                                        ; |603| Far Call Occurs
	.line	51
;----------------------------------------------------------------------
; 604 | Timer_Insert(&TMR_DATALOG_USER,0,TMR_action_replace);                  
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,r0              ; |604| 
        ldp       @CL95,DP
        ldiu      1,r3                  ; |604| 
        ldiu      0,r2                  ; |604| 
        ldiu      @CL95,ar2             ; |604| 
        callu     r0                    ; far call to _Timer_Insert	; |604| 
                                        ; |604| Far Call Occurs
L127:        
	.line	54
;----------------------------------------------------------------------
; 607 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	55
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       r4
                                        ; Unallocate the Frame
        subi      44,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	608,000000010h,42


	.sect	 "internal_RAM"

	.global	_DataLog
	.sym	_DataLog,_DataLog,32,2,0
	.func	623
;******************************************************************************
;* FUNCTION NAME: _DataLog                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,f2,r2,r3,ar0,ar2,fp,st,rs,rc                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_DataLog:
	.sym	_rec,1,62,1,256,,8
	.line	1
;----------------------------------------------------------------------
; 623 | void DataLog(void)                                                     
; 625 | unsigned int rec[SYS_log_record_size]; /* log record */                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	5
;----------------------------------------------------------------------
; 627 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 629 | if (SYS_LOG_ENABLED & LOG_PERIODIC && (SYS.log_len>0))                 
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,ar0             ; |629| 
        ldiu      1,r0                  ; |629| 
        tstb3     *ar0,r0               ; |629| 
        beq       L133                  ; |629| 
;*      Branch Occurs to L133           ; |629| 
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |629| 
        ldiu      *ar0,r0               ; |629| 
        cmpi      0,r0                  ; |629| 
        beq       L133                  ; |629| 
;*      Branch Occurs to L133           ; |629| 
	.line	9
;----------------------------------------------------------------------
; 631 | SYS_LOG_EVENT = TRUE;                                                  
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |631| 
        ldiu      1,r0                  ; |631| 
        sti       r0,*ar0               ; |631| 
	.line	11
;----------------------------------------------------------------------
; 633 | RecordLogEntry(&SYS, LOG_PERIODIC, rec);                               
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |633| 
        ldp       @CL88,DP
        ldiu      1,r2                  ; |633| 
        ldiu      @CL88,r0              ; |633| 
        ldp       @CL6,DP
        addi      1,r3                  ; |633| 
        ldiu      @CL6,ar2              ; |633| 
        callu     r0                    ; far call to _RecordLogEntry	; |633| 
                                        ; |633| Far Call Occurs
	.line	12
;----------------------------------------------------------------------
; 634 | Timer_Create(&TMR_DATALOG, SYS_log_sample_period.val, 1, (int*)DataLog,
;     |  0);                                                                   
;----------------------------------------------------------------------
        ldp       @CL101,DP
        ldiu      @CL101,ar0            ; |634| 
        ldp       @CL97,DP
        ldiu      @CL97,r0              ; |634| 
        ldp       @CL77,DP
        ldiu      0,rs                  ; |634| 
        ldiu      @CL77,rc              ; |634| 
        ldfu      *ar0,f2               ; |634| 
        ldp       @CL100,DP
        ldiu      1,r3                  ; |634| 
        ldiu      @CL100,ar2            ; |634| 
        callu     r0                    ; far call to _Timer_Create	; |634| 
                                        ; |634| Far Call Occurs
	.line	13
;----------------------------------------------------------------------
; 635 | Timer_Insert(&TMR_DATALOG,0,TMR_action_replace);                       
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,r0              ; |635| 
        ldp       @CL100,DP
        ldiu      1,r3                  ; |635| 
        ldiu      0,r2                  ; |635| 
        ldiu      @CL100,ar2            ; |635| 
        callu     r0                    ; far call to _Timer_Insert	; |635| 
                                        ; |635| Far Call Occurs
	.line	14
;----------------------------------------------------------------------
; 636 | Timer_Insert(&TMR_CLEAR_SYS_LOG_EVENT_FLAG,0,TMR_action_replace);      
; 638 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,r0              ; |636| 
        ldp       @CL102,DP
        ldiu      1,r3                  ; |636| 
        ldiu      0,r2                  ; |636| 
        ldiu      @CL102,ar2            ; |636| 
        callu     r0                    ; far call to _Timer_Insert	; |636| 
                                        ; |636| Far Call Occurs
        bu        L134                  ; |622| 
;*      Branch Occurs to L134           ; |622| 
L133:        
	.line	18
;----------------------------------------------------------------------
; 640 | SYS_LOG_EVENT = FALSE;                                                 
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |640| 
        ldiu      0,r0                  ; |640| 
        sti       r0,*ar0               ; |640| 
	.line	20
;----------------------------------------------------------------------
; 642 | Timer_Create(&TMR_DATALOG, 1.0, 1, (int*)DataLog, 0);                  
;----------------------------------------------------------------------
        ldp       @CL97,DP
        ldiu      0,rs                  ; |642| 
        ldiu      @CL97,r0              ; |642| 
        ldp       @CL77,DP
        ldiu      1,r3                  ; |642| 
        ldiu      @CL77,rc              ; |642| 
        ldp       @CL100,DP
        ldfu      1.0000000000e+00,f2   ; |642| 
        ldiu      @CL100,ar2            ; |642| 
        callu     r0                    ; far call to _Timer_Create	; |642| 
                                        ; |642| Far Call Occurs
	.line	21
;----------------------------------------------------------------------
; 643 | Timer_Insert(&TMR_DATALOG,0,TMR_action_replace);                       
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,r0              ; |643| 
        ldp       @CL100,DP
        ldiu      1,r3                  ; |643| 
        ldiu      0,r2                  ; |643| 
        ldiu      @CL100,ar2            ; |643| 
        callu     r0                    ; far call to _Timer_Insert	; |643| 
                                        ; |643| Far Call Occurs
L134:        
	.line	24
;----------------------------------------------------------------------
; 646 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	25
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      10,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	647,000000000h,8


	.sect	 "internal_RAM"

	.global	_CfgLog
	.sym	_CfgLog,_CfgLog,32,2,0
	.func	668
;******************************************************************************
;* FUNCTION NAME: _CfgLog                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,f3,r3,ar0,ar2,fp,st,rs,re,rc      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 14 Auto + 0 SOE = 18 words        *
;******************************************************************************
_CfgLog:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
;* rc    assigned to _modbus
	.sym	_modbus,19,4,17,32
;* rs    assigned to _func
	.sym	_func,20,4,17,32
;* re    assigned to _addr
	.sym	_addr,21,4,17,32
;* f2    assigned to _val
	.sym	_val,2,6,17,32
	.sym	_vali,-2,4,9,32
;* f3    assigned to _val_orig
	.sym	_val_orig,3,6,17,32
	.sym	_vali_orig,-3,6,9,32
	.sym	_id,1,4,1,32
	.sym	_modbus,2,4,1,32
	.sym	_func,3,4,1,32
	.sym	_addr,4,4,1,32
	.sym	_val,5,6,1,32
	.sym	_val_orig,6,6,1,32
	.sym	_rec,7,62,1,256,,8
	.line	1
;----------------------------------------------------------------------
; 668 | void CfgLog(int id, int modbus, int func, int addr, float val, int vali
;     | , float val_orig, float vali_orig)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      14,sp
	.line	2
;----------------------------------------------------------------------
; 670 | unsigned int rec[SYS_log_record_size];  /* log record */               
;----------------------------------------------------------------------
        stf       f3,*+fp(6)            ; |669| 
        stf       f2,*+fp(5)            ; |669| 
        sti       re,*+fp(4)            ; |669| 
        sti       rs,*+fp(3)            ; |669| 
        sti       rc,*+fp(2)            ; |669| 
        sti       ar2,*+fp(1)           ; |669| 
	.line	5
;----------------------------------------------------------------------
; 672 | if (SYS_LOG_ENABLED & LOG_CFG)                                         
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,ar0             ; |672| 
        ldiu      2,r0                  ; |672| 
        tstb3     *ar0,r0               ; |672| 
        beq       L139                  ; |672| 
;*      Branch Occurs to L139           ; |672| 
	.line	7
;----------------------------------------------------------------------
; 674 | rec[2] = ((id&0x01)<<31) | ((modbus&0x01)<<30) | ((func&0xFF)<<16) | (a
;     | ddr&0xFFFF);                                                           
;----------------------------------------------------------------------
        ldiu      1,r2                  ; |674| 
        ldiu      1,r0                  ; |674| 
        ldiu      255,r1                ; |674| 
        ldiu      fp,ar0                ; |674| 
        ldiu      re,r3                 ; |674| 
        and       *+fp(1),r2            ; |674| 
        and       *+fp(2),r0            ; |674| 
        and       *+fp(3),r1            ; |674| 
        addi      9,ar0                 ; |674| 
        and       65535,r3              ; |674| 
        ash       31,r2                 ; |674| 
        ash       30,r0                 ; |674| 
        ash       16,r1                 ; |674| 
        or3       r2,r0,r0              ; |674| 
        or3       r0,r1,r0              ; |674| 
        or3       r0,r3,r0              ; |674| 
        sti       r0,*ar0               ; |674| 
	.line	8
;----------------------------------------------------------------------
; 675 | rec[3] = TOIEEE(val_orig);                                             
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldfu      *+fp(6),f2            ; |675| 
        ldiu      @CL70,r0              ; |675| 
        callu     r0                    ; far call to _TOIEEE	; |675| 
                                        ; |675| Far Call Occurs
        ldiu      fp,ar0                ; |675| 
        addi      10,ar0                ; |675| 
        sti       r0,*ar0               ; |675| 
	.line	9
;----------------------------------------------------------------------
; 676 | rec[4] = vali_orig;                                                    
;----------------------------------------------------------------------
        ldp       @CL103,DP
        ldfu      *-fp(3),f1            ; |676| 
        cmpf      @CL103,f1             ; |676| 
        ldp       @CL104,DP
        ldflt     0.0000000000e+00,f0   ; |676| 
        ldfge     @CL104,f0             ; |676| 
        subrf     f1,f0                 ; |676| 
        ldiu      fp,ar0                ; |676| 
        addi      11,ar0                ; |676| 
        fix       f0,r0                 ; |676| 
        sti       r0,*ar0               ; |676| 
	.line	10
;----------------------------------------------------------------------
; 677 | rec[5] = TOIEEE(val);                                                  
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |677| 
        ldfu      *+fp(5),f2            ; |677| 
        callu     r0                    ; far call to _TOIEEE	; |677| 
                                        ; |677| Far Call Occurs
        ldiu      fp,ar0                ; |677| 
        addi      12,ar0                ; |677| 
        sti       r0,*ar0               ; |677| 
	.line	11
;----------------------------------------------------------------------
; 678 | rec[6] = vali;                                                         
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |678| 
        addi      13,ar0                ; |678| 
        ldiu      *-fp(2),r0            ; |678| 
        sti       r0,*ar0               ; |678| 
	.line	12
;----------------------------------------------------------------------
; 679 | RecordLogEntry(&SYS, LOG_CFG, rec);                                    
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      @CL88,r0              ; |679| 
        ldiu      fp,r3                 ; |679| 
        ldp       @CL6,DP
        ldiu      2,r2                  ; |679| 
        ldiu      @CL6,ar2              ; |679| 
        addi      7,r3                  ; |679| 
        callu     r0                    ; far call to _RecordLogEntry	; |679| 
                                        ; |679| Far Call Occurs
L139:        
	.line	14
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      16,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	681,000000000h,14


	.sect	 "internal_RAM"

	.global	_EraseEntireLog
	.sym	_EraseEntireLog,_EraseEntireLog,32,2,0
	.func	695
;******************************************************************************
;* FUNCTION NAME: _EraseEntireLog                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_EraseEntireLog:
;* ar2   assigned to _log
	.sym	_log,10,24,17,32,.fake18
	.sym	_log,1,24,1,32,.fake18
	.sym	_i,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 695 | void EraseEntireLog(LOG* log)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 697 | int i;  /* Sector counter */                                           
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |696| 
	.line	5
;----------------------------------------------------------------------
; 699 | if (log->log_len<=0)                                                   
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *ar0,r0               ; |699| 
        cmpi      0,r0                  ; |699| 
        beq       L145                  ; |699| 
;*      Branch Occurs to L145           ; |699| 
	.line	6
;----------------------------------------------------------------------
; 700 | return;                                                                
;----------------------------------------------------------------------
	.line	8
;----------------------------------------------------------------------
; 702 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
; 703 | LEDR_ON;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL105,DP
        ldiu      @CL105,ar0            ; |703| 
        ldiu      127,r0                ; |703| 
        and3      r0,*ar0,r0            ; |703| 
        sti       r0,*ar0               ; |703| 
	pop		ST			
	.line	10
;----------------------------------------------------------------------
; 704 | LEDG_OFF;                                                              
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |704| 
        or3       r0,*ar0,r0            ; |704| 
        sti       r0,*ar0               ; |704| 
	pop		ST			
	.line	11
;----------------------------------------------------------------------
; 705 | log->log_current_sector = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |705| 
        ldiu      0,r0                  ; |705| 
        sti       r0,*+ar0(4)           ; |705| 
	.line	12
;----------------------------------------------------------------------
; 706 | log->log_n                              = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |706| 
        sti       r0,*+ar0(3)           ; |706| 
	.line	14
;----------------------------------------------------------------------
; 708 | for (i=0;i<log->log_n_sectors;i++)                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(2)            ; |708| 
        ldiu      *+fp(1),ar0           ; |708| 
        ldiu      *+fp(2),r0            ; |708| 
        cmpi3     *+ar0,r0              ; |708| 
        bhs       L144                  ; |708| 
;*      Branch Occurs to L144           ; |708| 
L143:        
	.line	16
;----------------------------------------------------------------------
; 710 | FLASH_ERASE_BLK(log->log_start+(i*log->log_sector_size));              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |710| 
        ldiu      *+fp(2),ar2           ; |710| 
        ldp       @CL44,DP
        ldiu      ar1,ar0               ; |710| 
        mpyi      *+ar1(7),ar2          ; |710| 
        ldiu      @CL44,r0              ; |710| 
        addi      *+ar0(6),ar2          ; |710| Unsigned
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |710| 
                                        ; |710| Far Call Occurs
	.line	17
;----------------------------------------------------------------------
; 711 | FLASH_LOCK_BLK(log->log_start+(i*log->log_sector_size), TRUE);         
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      *+fp(1),ar1           ; |711| 
        ldiu      *+fp(2),ar2           ; |711| 
        ldiu      ar1,ar0               ; |711| 
        ldiu      @CL45,r0              ; |711| 
        mpyi      *+ar1(7),ar2          ; |711| 
        addi      *+ar0(6),ar2          ; |711| Unsigned
        ldiu      1,r2                  ; |711| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |711| 
                                        ; |711| Far Call Occurs
	.line	14
        ldiu      1,r0                  ; |708| 
        addi      *+fp(2),r0            ; |708| 
        sti       r0,*+fp(2)            ; |708| 
        ldiu      *+fp(1),ar0           ; |708| 
        ldiu      *+fp(2),r0            ; |708| 
        cmpi3     *+ar0,r0              ; |708| 
        blo       L143                  ; |708| 
;*      Branch Occurs to L143           ; |708| 
L144:        
	.line	20
;----------------------------------------------------------------------
; 714 | log->LOG_ERASE = FALSE;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |714| 
        ldiu      0,r0                  ; |714| 
        sti       r0,*+ar0(10)          ; |714| 
	.line	22
;----------------------------------------------------------------------
; 716 | MarkLogStart(log, log->log_current_sector);                            
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldiu      *+fp(1),ar0           ; |716| 
        ldiu      @CL54,r0              ; |716| 
        ldiu      ar0,ar2               ; |716| 
        ldiu      *+ar0(4),r2           ; |716| 
        callu     r0                    ; far call to _MarkLogStart	; |716| 
                                        ; |716| Far Call Occurs
	.line	24
;----------------------------------------------------------------------
; 718 | LEDS_OFF;                                                              
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL105,DP
        ldiu      @CL105,ar0            ; |718| 
        ldiu      192,r0                ; |718| 
        or3       r0,*ar0,r0            ; |718| 
        sti       r0,*ar0               ; |718| 
	pop		ST			
	.line	25
;----------------------------------------------------------------------
; 719 | log->erased_sector = TRUE;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |719| 
        ldiu      1,r0                  ; |719| 
        sti       r0,*+ar0(11)          ; |719| 
	.line	26
;----------------------------------------------------------------------
; 720 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L145:        
	.line	27
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	721,000000000h,2


	.sect	 "internal_RAM"

	.global	_FindNextLogIndex
	.sym	_FindNextLogIndex,_FindNextLogIndex,32,2,0
	.func	737
;******************************************************************************
;* FUNCTION NAME: _FindNextLogIndex                                           *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,ir0,st                  *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 9 Auto + 1 SOE = 12 words         *
;******************************************************************************
_FindNextLogIndex:
;* ar2   assigned to _log
	.sym	_log,10,24,17,32,.fake18
;* r2    assigned to _get_last_n_records
	.sym	_get_last_n_records,2,4,17,32
;* r3    assigned to _p
	.sym	_p,3,30,17,32
	.sym	_log,1,24,1,32,.fake18
	.sym	_get_last_n_records,2,4,1,32
	.sym	_p,3,30,1,32
	.sym	_i,4,4,1,32
	.sym	_j,5,4,1,32
	.sym	_s,6,14,1,32
	.sym	_n,7,14,1,32
	.sym	_t,8,14,1,32
	.sym	_r,9,14,1,32
	.line	1
;----------------------------------------------------------------------
; 737 | void FindNextLogIndex(LOG* log, int get_last_n_records, unsigned int* p
;     | )                                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      9,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 739 | int i, j;                       /* log index; n records counter */     
; 740 | unsigned int s;         /* start record */                             
; 741 | unsigned int n;         /* number of records to get */                 
; 742 | unsigned int t;         /* working register index */                   
; 743 | BOOL r;                         /* break out of while? */              
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |738| 
        sti       r2,*+fp(2)            ; |738| 
        sti       ar2,*+fp(1)           ; |738| 
	.line	9
;----------------------------------------------------------------------
; 745 | for (n=0;n<get_last_n_records;n++)                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |745| 
        sti       r0,*+fp(7)            ; |745| 
        ldiu      r0,r1
        cmpi      *+fp(2),r1            ; |745| 
        bhs       L149                  ; |745| 
;*      Branch Occurs to L149           ; |745| 
L148:        
	.line	10
;----------------------------------------------------------------------
; 746 | p[n] = 0;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |746| 
        ldiu      *+fp(7),ar0           ; |746| 
        sti       r0,*+ar0(ir0)         ; |746| 
	.line	9
        ldiu      1,r1                  ; |745| 
        addi      *+fp(7),r1            ; |745| Unsigned
        sti       r1,*+fp(7)            ; |745| 
        cmpi      *+fp(2),r1            ; |745| 
        blo       L148                  ; |745| 
;*      Branch Occurs to L148           ; |745| 
L149:        
	.line	12
;----------------------------------------------------------------------
; 748 | if (log->log_len<=0)                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |748| 
        ldiu      *ar0,r0               ; |748| 
        cmpi      0,r0                  ; |748| 
        beq       L174                  ; |748| 
;*      Branch Occurs to L174           ; |748| 
	.line	13
;----------------------------------------------------------------------
; 749 | return;                                                                
;----------------------------------------------------------------------
	.line	15
;----------------------------------------------------------------------
; 751 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	17
;----------------------------------------------------------------------
; 753 | i                                               = 0;                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |753| 
        sti       r0,*+fp(4)            ; |753| 
	.line	18
;----------------------------------------------------------------------
; 754 | log->log_absolute_index = 0;                                           
;----------------------------------------------------------------------
        sti       r0,*+ar0(5)           ; |754| 
	.line	20
;----------------------------------------------------------------------
; 756 | for (s=0; s < log->log_n_sectors; s++)                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(6)            ; |756| 
        ldiu      *+fp(1),ar0           ; |756| 
        cmpi3     *+ar0,r0              ; |756| 
        bhs       L153                  ; |756| 
;*      Branch Occurs to L153           ; |756| 
L151:        
	.line	22
;----------------------------------------------------------------------
; 758 | if ((log->log_start[log->log_sector_size*s] & 0x40000000)==0)          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |758| 
        ldiu      ar0,ar1               ; |758| 
        ldp       @CL53,DP
        ldiu      *+ar0(7),ar0          ; |758| 
        ldiu      *+ar1(6),ir0          ; |758| 
        mpyi      *+fp(6),ar0           ; |758| 
        ldiu      @CL53,r0              ; |758| 
        tstb3     *+ar0(ir0),r0         ; |758| 
        beq       L153                  ; |758| 
;*      Branch Occurs to L153           ; |758| 
	.line	23
;----------------------------------------------------------------------
; 759 | break;                                                                 
;----------------------------------------------------------------------
	.line	20
        ldiu      1,r0                  ; |756| 
        addi      *+fp(6),r0            ; |756| Unsigned
        sti       r0,*+fp(6)            ; |756| 
        ldiu      ar1,ar0
        cmpi3     *+ar0,r0              ; |756| 
        blo       L151                  ; |756| 
;*      Branch Occurs to L151           ; |756| 
L153:        
	.line	26
;----------------------------------------------------------------------
; 762 | if (s == log->log_n_sectors)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |762| 
        ldiu      *+fp(6),r0            ; |762| 
        cmpi3     *+ar0,r0              ; |762| 
        bne       L155                  ; |762| 
;*      Branch Occurs to L155           ; |762| 
	.line	28
;----------------------------------------------------------------------
; 764 | log->log_current_sector = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |764| 
        sti       r0,*+ar0(4)           ; |764| 
	.line	29
;----------------------------------------------------------------------
; 765 | log->log_absolute_index = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |765| 
        sti       r0,*+ar0(5)           ; |765| 
	.line	30
;----------------------------------------------------------------------
; 766 | log->log_n                              = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |766| 
        sti       r0,*+ar0(3)           ; |766| 
	.line	32
;----------------------------------------------------------------------
; 768 | EraseSector(log, log->log_current_sector);                             
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldiu      *+fp(1),ar0           ; |768| 
        ldiu      ar0,ar2               ; |768| 
        ldiu      *+ar0(4),r2           ; |768| 
        ldiu      @CL55,r0              ; |768| 
        callu     r0                    ; far call to _EraseSector	; |768| 
                                        ; |768| Far Call Occurs
	.line	33
;----------------------------------------------------------------------
; 769 | MarkLogStart(log, log->log_current_sector);                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |769| 
        ldp       @CL54,DP
        ldiu      *+ar0(4),r2           ; |769| 
        ldiu      ar0,ar2               ; |769| 
        ldiu      @CL54,r0              ; |769| 
        callu     r0                    ; far call to _MarkLogStart	; |769| 
                                        ; |769| Far Call Occurs
	.line	34
;----------------------------------------------------------------------
; 770 | EraseSector(log, log->log_current_sector+1);                           
; 772 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r2                  ; |770| 
        ldp       @CL55,DP
        ldiu      *+fp(1),ar0           ; |770| 
        ldiu      @CL55,r0              ; |770| 
        addi      *+ar0(4),r2           ; |770| Unsigned
        ldiu      ar0,ar2               ; |770| 
        callu     r0                    ; far call to _EraseSector	; |770| 
                                        ; |770| Far Call Occurs
        bu        L173                  ; |736| 
;*      Branch Occurs to L173           ; |736| 
L155:        
	.line	38
;----------------------------------------------------------------------
; 774 | t = s;                                                                 
; 776 | while (1)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |774| 
        sti       r0,*+fp(8)            ; |774| 
L156:        
	.line	42
;----------------------------------------------------------------------
; 778 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |778| 
        sti       r0,*+fp(9)            ; |778| 
	.line	44
;----------------------------------------------------------------------
; 780 | for (n=0;n<log->log_n_max_per_sector;n++)                              
;----------------------------------------------------------------------
        sti       r0,*+fp(7)            ; |780| 
        ldiu      *+fp(1),ar0           ; |780| 
        cmpi      *+ar0(2),r0           ; |780| 
        bhs       L167                  ; |780| 
;*      Branch Occurs to L167           ; |780| 
L157:        
	.line	46
;----------------------------------------------------------------------
; 782 | if (log->log_start[(log->log_sector_size*s)+(n*log->log_record_size)] &
;     |  0x80000000)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar4           ; |782| 
        ldiu      *+fp(7),ar0           ; |782| 
        ldiu      ar4,ar1               ; |782| 
        ldp       @CL106,DP
        ldiu      *+ar4(7),ir0          ; |782| 
        ldiu      ar1,ar2               ; |782| 
        mpyi      *+fp(6),ir0           ; |782| 
        mpyi      *+ar1(8),ar0          ; |782| 
        addi      *+ar2(6),ir0          ; |782| Unsigned
        ldiu      @CL106,r0             ; |782| 
        tstb3     *+ar0(ir0),r0         ; |782| 
        beq       L160                  ; |782| 
;*      Branch Occurs to L160           ; |782| 
	.line	48
;----------------------------------------------------------------------
; 784 | log->log_current_sector  = s;                                          
;----------------------------------------------------------------------
        ldiu      ar1,ar0
        ldiu      *+fp(6),r0            ; |784| 
        sti       r0,*+ar0(4)           ; |784| 
	.line	49
;----------------------------------------------------------------------
; 785 | log->log_n                               = n;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |785| 
        ldiu      *+fp(7),r0            ; |785| 
        sti       r0,*+ar0(3)           ; |785| 
	.line	50
;----------------------------------------------------------------------
; 786 | log->log_absolute_index += n;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |786| 
        ldiu      *+fp(7),r0            ; |786| 
        addi      *+ar0(5),r0           ; |786| Unsigned
        sti       r0,*+ar0(5)           ; |786| 
	.line	51
;----------------------------------------------------------------------
; 787 | r                                                = TRUE;               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |787| 
        sti       r0,*+fp(9)            ; |787| 
	.line	53
;----------------------------------------------------------------------
; 789 | break;                                                                 
;----------------------------------------------------------------------
        bu        L167                  ; |789| 
;*      Branch Occurs to L167           ; |789| 
L160:        
	.line	55
;----------------------------------------------------------------------
; 791 | else if (get_last_n_records>0)                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |791| 
        cmpi      0,r0                  ; |791| 
        ble       L166                  ; |791| 
;*      Branch Occurs to L166           ; |791| 
	.line	57
;----------------------------------------------------------------------
; 793 | if (i>=get_last_n_records)                                             
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |793| 
        cmpi      *+fp(2),r0            ; |793| 
        blt       L165                  ; |793| 
;*      Branch Occurs to L165           ; |793| 
	.line	59
;----------------------------------------------------------------------
; 795 | for (j=1;j<get_last_n_records;j++)                                     
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |795| 
        sti       r0,*+fp(5)            ; |795| 
        cmpi      *+fp(2),r0            ; |795| 
        bge       L164                  ; |795| 
;*      Branch Occurs to L164           ; |795| 
L163:        
	.line	60
;----------------------------------------------------------------------
; 796 | p[j-1] = p[j];                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(5),ar0           ; |796| 
        ldiu      *+fp(3),ir0           ; |796| 
        ldiu      ar0,ar1               ; |796| 
        addi      *+fp(3),ar0           ; |796| Unsigned
        ldiu      *+ar1(ir0),r0         ; |796| 
        sti       r0,*-ar0(1)           ; |796| 
	.line	59
        ldiu      1,r0                  ; |795| 
        addi      *+fp(5),r0            ; |795| 
        sti       r0,*+fp(5)            ; |795| 
        cmpi      *+fp(2),r0            ; |795| 
        blt       L163                  ; |795| 
;*      Branch Occurs to L163           ; |795| 
L164:        
	.line	62
;----------------------------------------------------------------------
; 798 | i = get_last_n_records - 1;                                            
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |798| 
        subri     *+fp(2),r0            ; |798| 
        sti       r0,*+fp(4)            ; |798| 
L165:        
	.line	65
;----------------------------------------------------------------------
; 801 | p[i] = (unsigned int) &log->log_start[(log->log_sector_size*s)+(n*log->
;     | log_record_size)];                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |801| 
        ldiu      *+fp(7),r1            ; |801| 
        ldiu      *+fp(3),ir0           ; |801| 
        ldiu      *+ar0(7),r0           ; |801| 
        ldiu      ar0,ar1               ; |801| 
        ldiu      ar0,ar2               ; |801| 
        mpyi      *+fp(6),r0            ; |801| 
        mpyi      *+ar1(8),r1           ; |801| 
        ldiu      *+fp(4),ar0           ; |801| 
        addi      *+ar2(6),r0           ; |801| Unsigned
        addi3     r1,r0,r0              ; |801| Unsigned
        sti       r0,*+ar0(ir0)         ; |801| 
	.line	66
;----------------------------------------------------------------------
; 802 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |802| 
        addi      *+fp(4),r0            ; |802| 
        sti       r0,*+fp(4)            ; |802| 
L166:        
	.line	44
        ldiu      1,r0                  ; |780| 
        addi      *+fp(7),r0            ; |780| Unsigned
        sti       r0,*+fp(7)            ; |780| 
        ldiu      *+fp(1),ar0           ; |780| 
        cmpi      *+ar0(2),r0           ; |780| 
        blo       L157                  ; |780| 
;*      Branch Occurs to L157           ; |780| 
L167:        
	.line	70
;----------------------------------------------------------------------
; 806 | if (r)                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(9),r0            ; |806| 
        cmpi      0,r0                  ; |806| 
        bne       L173                  ; |806| 
;*      Branch Occurs to L173           ; |806| 
	.line	71
;----------------------------------------------------------------------
; 807 | break;                                                                 
;----------------------------------------------------------------------
	.line	73
;----------------------------------------------------------------------
; 809 | s++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |809| 
        addi      *+fp(6),r0            ; |809| Unsigned
        sti       r0,*+fp(6)            ; |809| 
	.line	74
;----------------------------------------------------------------------
; 810 | log->log_absolute_index += log->log_n_max_per_sector;                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |810| 
        ldiu      ar1,ar0               ; |810| 
        ldiu      *+ar1(2),r0           ; |810| 
        addi      *+ar0(5),r0           ; |810| Unsigned
        sti       r0,*+ar0(5)           ; |810| 
	.line	76
;----------------------------------------------------------------------
; 812 | if (s >= log->log_n_sectors)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |812| 
        ldiu      *+fp(6),r0            ; |812| 
        cmpi3     *+ar0,r0              ; |812| 
        blo       L170                  ; |812| 
;*      Branch Occurs to L170           ; |812| 
	.line	77
;----------------------------------------------------------------------
; 813 | s -= log->log_n_sectors;                                               
;----------------------------------------------------------------------
        ldiu      *+ar0(1),r0           ; |813| 
        subri     *+fp(6),r0            ; |813| Unsigned
        sti       r0,*+fp(6)            ; |813| 
L170:        
	.line	79
;----------------------------------------------------------------------
; 815 | if (s == t)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |815| 
        cmpi      *+fp(8),r0            ; |815| 
        bne       L156                  ; |815| 
;*      Branch Occurs to L156           ; |815| 
	.line	81
;----------------------------------------------------------------------
; 817 | log->log_current_sector = s;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |817| 
        sti       r0,*+ar0(4)           ; |817| 
	.line	82
;----------------------------------------------------------------------
; 818 | log->log_n                              = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |818| 
        ldiu      0,r0                  ; |818| 
        sti       r0,*+ar0(3)           ; |818| 
	.line	83
;----------------------------------------------------------------------
; 819 | log->log_absolute_index = log->log_n_max_per_sector * (log->log_n_secto
;     | rs-1);                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |819| 
        ldiu      ar0,ar1               ; |819| 
        ldiu      1,r1                  ; |819| 
        subi3     r1,*+ar1,r1           ; |819| Unsigned
        ldiu      *+ar0(2),r0           ; |819| 
        call      MPY_I30               ; |819| 
                                        ; |819| Call Occurs
        ldiu      *+fp(1),ar0           ; |819| 
        sti       r0,*+ar0(5)           ; |819| 
	.line	85
;----------------------------------------------------------------------
; 821 | EraseSector(log, log->log_current_sector);                             
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldiu      *+fp(1),ar0           ; |821| 
        ldiu      ar0,ar2               ; |821| 
        ldiu      @CL55,r0              ; |821| 
        ldiu      *+ar0(4),r2           ; |821| 
        callu     r0                    ; far call to _EraseSector	; |821| 
                                        ; |821| Far Call Occurs
	.line	86
;----------------------------------------------------------------------
; 822 | MarkLogStart(log, log->log_current_sector+1);                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |822| 
        ldiu      1,r2                  ; |822| 
        addi      *+ar0(4),r2           ; |822| Unsigned
        ldp       @CL54,DP
        ldiu      ar0,ar2               ; |822| 
        ldiu      @CL54,r0              ; |822| 
        callu     r0                    ; far call to _MarkLogStart	; |822| 
                                        ; |822| Far Call Occurs
	.line	87
;----------------------------------------------------------------------
; 823 | break;                                                                 
;----------------------------------------------------------------------
        bu        L173                  ; |823| 
;*      Branch Occurs to L173           ; |823| 
	.line	89
L173:        
	.line	92
;----------------------------------------------------------------------
; 828 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	94
;----------------------------------------------------------------------
; 830 | return;                                                                
;----------------------------------------------------------------------
L174:        
	.line	95
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
                                        ; Unallocate the Frame
        subi      11,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	831,000001000h,9


	.sect	 "internal_RAM"

	.global	_FindLastLogRecord
	.sym	_FindLastLogRecord,_FindLastLogRecord,110,2,0
	.func	847
;******************************************************************************
;* FUNCTION NAME: _FindLastLogRecord                                          *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ar2,ir0,st                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 9 Auto + 0 SOE = 11 words         *
;******************************************************************************
_FindLastLogRecord:
;* ar2   assigned to _log
	.sym	_log,10,24,17,32,.fake18
;* r2    assigned to _mode
	.sym	_mode,2,4,17,32
	.sym	_log,1,24,1,32,.fake18
	.sym	_mode,2,4,1,32
	.sym	_p,3,30,1,32
	.sym	_start,4,30,1,32
	.sym	_ck,5,14,1,32
	.sym	_cksum,6,14,1,32
	.sym	_log_n,7,14,1,32
	.sym	_log_current_sector,8,14,1,32
	.sym	_i,9,4,1,32
	.line	1
;----------------------------------------------------------------------
; 847 | unsigned int* FindLastLogRecord(LOG* log, int mode)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      9,sp
	.line	2
;----------------------------------------------------------------------
; 849 | unsigned int* p;
;     |                  /* interested packet                                  
;     |                                           */                           
; 850 | unsigned int* start;
;     |          /* start index                                                
;     |                                           */                           
; 851 | unsigned int ck,cksum, log_n, log_current_sector;       /* check; check
;     | sum; number of records; current log sector       */                    
; 852 | int i;
;     |                          /* log record counter                         
;     |                                                   */                   
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |848| 
        sti       ar2,*+fp(1)           ; |848| 
	.line	8
;----------------------------------------------------------------------
; 854 | if (log->log_len<=0)                                                   
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *ar0,r0               ; |854| 
        cmpi      0,r0                  ; |854| 
        bne       L178                  ; |854| 
;*      Branch Occurs to L178           ; |854| 
	.line	9
;----------------------------------------------------------------------
; 855 | return (unsigned int*)0;                                               
;----------------------------------------------------------------------
        bud       L202                  ; |855| 
	nop
	nop
        ldiu      0,r0                  ; |855| 
;*      Branch Occurs to L202           ; |855| 
L178:        
	.line	11
;----------------------------------------------------------------------
; 857 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	12
;----------------------------------------------------------------------
; 858 | log_n                           = log->log_n;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |858| 
        ldiu      *+ar0(3),r0           ; |858| 
        sti       r0,*+fp(7)            ; |858| 
	.line	13
;----------------------------------------------------------------------
; 859 | log_current_sector      = log->log_current_sector;                     
;----------------------------------------------------------------------
        ldiu      *+ar0(4),r0           ; |859| 
        sti       r0,*+fp(8)            ; |859| 
	.line	14
;----------------------------------------------------------------------
; 860 | start                           = (unsigned int*) &log->log_start[(log-
;     | >log_sector_size*log_current_sector) + (log->log_record_size*log_n)];  
;----------------------------------------------------------------------
        ldiu      ar0,ar2
        ldiu      ar0,ar1
        ldiu      *+ar2(8),r1           ; |860| 
        ldiu      *+ar1(7),r0           ; |860| 
        mpyi      *+fp(7),r1            ; |860| 
        mpyi      *+fp(8),r0            ; |860| 
        addi      *+ar0(6),r0           ; |860| Unsigned
        addi3     r1,r0,r0              ; |860| Unsigned
        sti       r0,*+fp(4)            ; |860| 
	.line	15
;----------------------------------------------------------------------
; 861 | p                                       = start;                       
; 863 | while(1)                                                               
;----------------------------------------------------------------------
        sti       r0,*+fp(3)            ; |861| 
L179:        
	.line	19
;----------------------------------------------------------------------
; 865 | if ((p[log->log_record_size-1]>>24) == mode)                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |865| 
        ldiu      *+ar0(8),ar0          ; |865| 
        addi      *+fp(3),ar0           ; |865| Unsigned
        ldiu      *-ar0(1),r0           ; |865| 
        lsh       -24,r0                ; |865| 
        cmpi      *+fp(2),r0            ; |865| 
        bne       L189                  ; |865| 
;*      Branch Occurs to L189           ; |865| 
	.line	21
;----------------------------------------------------------------------
; 867 | ck              = 0;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |867| 
        sti       r0,*+fp(5)            ; |867| 
	.line	22
;----------------------------------------------------------------------
; 868 | cksum   = p[log->log_record_size-1] & 0x0000FFFF;                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |868| 
        ldiu      *+ar0(8),ar0          ; |868| 
        addi      *+fp(3),ar0           ; |868| Unsigned
        ldiu      *-ar0(1),r0           ; |868| 
        and       65535,r0              ; |868| 
        sti       r0,*+fp(6)            ; |868| 
	.line	24
;----------------------------------------------------------------------
; 870 | for (i=0;i<log->log_record_size;i++)                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |870| 
        sti       r0,*+fp(9)            ; |870| 
        ldiu      *+fp(1),ar0           ; |870| 
        ldiu      *+fp(9),r0            ; |870| 
        cmpi      *+ar0(8),r0           ; |870| 
        bhs       L187                  ; |870| 
;*      Branch Occurs to L187           ; |870| 
L181:        
	.line	26
;----------------------------------------------------------------------
; 872 | if (i==0)       /* ignore first two bits */                            
;----------------------------------------------------------------------
        ldiu      *+fp(9),r0            ; |872| 
        cmpi      0,r0                  ; |872| 
        bne       L183                  ; |872| 
;*      Branch Occurs to L183           ; |872| 
	.line	27
;----------------------------------------------------------------------
; 873 | ck += ((p[i]>>24) & 0x3F);                                             
; 874 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0                ; |873| 
        ldiu      *+fp(3),ir0           ; |873| 
        ldiu      -24,r0                ; |873| 
        lsh3      r0,*+ar0(ir0),r0      ; |873| 
        and       63,r0                 ; |873| 
        addi      *+fp(5),r0            ; |873| Unsigned
        sti       r0,*+fp(5)            ; |873| 
        bu        L184                  ; |846| 
;*      Branch Occurs to L184           ; |846| 
L183:        
	.line	29
;----------------------------------------------------------------------
; 875 | ck += ((p[i]>>24) & 0xFF);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |875| 
        ldiu      *+fp(9),ar0           ; |875| 
        ldiu      -24,r0                ; |875| 
        lsh3      r0,*+ar0(ir0),r0      ; |875| 
        and       255,r0                ; |875| 
        addi      *+fp(5),r0            ; |875| Unsigned
        sti       r0,*+fp(5)            ; |875| 
L184:        
	.line	31
;----------------------------------------------------------------------
; 877 | ck += ((p[i]>>16) & 0xFF);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |877| 
        ldiu      *+fp(9),ar0           ; |877| 
        ldiu      -16,r0                ; |877| 
        lsh3      r0,*+ar0(ir0),r0      ; |877| 
        and       255,r0                ; |877| 
        addi      *+fp(5),r0            ; |877| Unsigned
        sti       r0,*+fp(5)            ; |877| 
	.line	33
;----------------------------------------------------------------------
; 879 | if (i!=(log->log_record_size-1))                                       
;----------------------------------------------------------------------
        ldiu      *+fp(9),r1            ; |879| 
        ldiu      *+fp(1),ar0           ; |879| 
        ldiu      1,r0                  ; |879| 
        subri     *+ar0(8),r0           ; |879| Unsigned
        cmpi3     r0,r1                 ; |879| 
        beq       L186                  ; |879| 
;*      Branch Occurs to L186           ; |879| 
	.line	35
;----------------------------------------------------------------------
; 881 | ck += ((p[i]>>8) & 0xFF);                                              
;----------------------------------------------------------------------
        ldiu      *+fp(9),ar0           ; |881| 
        ldiu      -8,r0                 ; |881| 
        lsh3      r0,*+ar0(ir0),r0      ; |881| 
        and       255,r0                ; |881| 
        addi      *+fp(5),r0            ; |881| Unsigned
        sti       r0,*+fp(5)            ; |881| 
	.line	36
;----------------------------------------------------------------------
; 882 | ck += ((p[i]) & 0xFF);                                                 
;----------------------------------------------------------------------
        ldiu      255,r0                ; |882| 
        and3      r0,*+ar0(ir0),r0      ; |882| 
        addi      *+fp(5),r0            ; |882| Unsigned
        sti       r0,*+fp(5)            ; |882| 
L186:        
	.line	24
        ldiu      1,r0                  ; |870| 
        addi      *+fp(9),r0            ; |870| 
        sti       r0,*+fp(9)            ; |870| 
        ldiu      *+fp(1),ar0           ; |870| 
        ldiu      *+fp(9),r0            ; |870| 
        cmpi      *+ar0(8),r0           ; |870| 
        blo       L181                  ; |870| 
;*      Branch Occurs to L181           ; |870| 
L187:        
	.line	40
;----------------------------------------------------------------------
; 886 | ck &= 0xFFFF;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |886| 
        and       65535,r0              ; |886| 
        sti       r0,*+fp(5)            ; |886| 
	.line	42
;----------------------------------------------------------------------
; 888 | if (ck==cksum)  /* passes checksum */                                  
;----------------------------------------------------------------------
        cmpi      *+fp(6),r0            ; |888| 
        beq       L201                  ; |888| 
;*      Branch Occurs to L201           ; |888| 
	.line	43
;----------------------------------------------------------------------
; 889 | break;                                                                 
;----------------------------------------------------------------------
L189:        
	.line	46
;----------------------------------------------------------------------
; 892 | if (log_n > 0)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |892| 
        cmpi      0,r0                  ; |892| 
        beq       L191                  ; |892| 
;*      Branch Occurs to L191           ; |892| 
	.line	47
;----------------------------------------------------------------------
; 893 | log_n--;                                                               
; 894 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |893| 
        subri     *+fp(7),r0            ; |893| Unsigned
        sti       r0,*+fp(7)            ; |893| 
        bu        L195                  ; |846| 
;*      Branch Occurs to L195           ; |846| 
L191:        
	.line	50
;----------------------------------------------------------------------
; 896 | if (log_current_sector > 0)                                            
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |896| 
        cmpi      0,r0                  ; |896| 
        beq       L193                  ; |896| 
;*      Branch Occurs to L193           ; |896| 
	.line	51
;----------------------------------------------------------------------
; 897 | log_current_sector--;                                                  
; 898 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |897| 
        subri     *+fp(8),r0            ; |897| Unsigned
        sti       r0,*+fp(8)            ; |897| 
        bu        L194                  ; |846| 
;*      Branch Occurs to L194           ; |846| 
L193:        
	.line	53
;----------------------------------------------------------------------
; 899 | log_current_sector = log->log_n_sectors - 1;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |899| 
        ldiu      1,r0                  ; |899| 
        subri     *+ar0(1),r0           ; |899| Unsigned
        sti       r0,*+fp(8)            ; |899| 
L194:        
	.line	55
;----------------------------------------------------------------------
; 901 | log_n = log->log_n_max_per_sector-1;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |901| 
        ldiu      1,r0                  ; |901| 
        subri     *+ar0(2),r0           ; |901| Unsigned
        sti       r0,*+fp(7)            ; |901| 
L195:        
	.line	58
;----------------------------------------------------------------------
; 904 | p = (unsigned int*) &log->log_start[(log->log_sector_size*log_current_s
;     | ector) + (log->log_record_size*log_n)];                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |904| 
        ldiu      ar1,ar2               ; |904| 
        ldiu      *+ar1(7),r0           ; |904| 
        ldiu      ar1,ar0               ; |904| 
        ldiu      *+ar2(8),r1           ; |904| 
        mpyi      *+fp(8),r0            ; |904| 
        mpyi      *+fp(7),r1            ; |904| 
        addi      *+ar0(6),r0           ; |904| Unsigned
        addi3     r1,r0,r0              ; |904| Unsigned
        sti       r0,*+fp(3)            ; |904| 
	.line	60
;----------------------------------------------------------------------
; 906 | if ((p[0]&0x40000000) == 0x00000000)                                   
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      r0,ar0
        ldiu      @CL53,r0              ; |906| 
        tstb3     *ar0,r0               ; |906| 
        bne       L198                  ; |906| 
;*      Branch Occurs to L198           ; |906| 
	.line	62
;----------------------------------------------------------------------
; 908 | p = (unsigned int*) 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |908| 
        sti       r0,*+fp(3)            ; |908| 
	.line	63
;----------------------------------------------------------------------
; 909 | break;                                                                 
;----------------------------------------------------------------------
        bu        L201                  ; |909| 
;*      Branch Occurs to L201           ; |909| 
L198:        
	.line	65
;----------------------------------------------------------------------
; 911 | else if (p==start)                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |911| 
        cmpi      *+fp(4),r0            ; |911| 
        bne       L179                  ; |911| 
;*      Branch Occurs to L179           ; |911| 
	.line	67
;----------------------------------------------------------------------
; 913 | p = (unsigned int*) 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |913| 
        sti       r0,*+fp(3)            ; |913| 
	.line	68
;----------------------------------------------------------------------
; 914 | break;                                                                 
;----------------------------------------------------------------------
        bu        L201                  ; |914| 
;*      Branch Occurs to L201           ; |914| 
	.line	70
L201:        
	.line	72
;----------------------------------------------------------------------
; 918 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	74
;----------------------------------------------------------------------
; 920 | return p;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |920| 
L202:        
	.line	75
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |921| 
        ldiu      *fp,fp                ; |921| 
                                        ; Unallocate the Frame
        subi      11,sp                 ; |921| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	921,000000000h,9



	.global	_CCM_Records
	.bss	_CCM_Records,12
	.sym	_CCM_Records,_CCM_Records,8,2,384,.fake18

	.global	_USER_LOG_EVENT
	.bss	_USER_LOG_EVENT,1
	.sym	_USER_LOG_EVENT,_USER_LOG_EVENT,4,2,32

	.global	_SYS_LOG_ENABLED
_SYS_LOG_ENABLED:	.usect	"CFG",1,1
	.sym	_SYS_LOG_ENABLED,_SYS_LOG_ENABLED,4,2,32

	.global	_SYS
	.bss	_SYS,12
	.sym	_SYS,_SYS,8,2,384,.fake18

	.global	_USER_LOG_ENABLED
_USER_LOG_ENABLED:	.usect	"CFG",1,1
	.sym	_USER_LOG_ENABLED,_USER_LOG_ENABLED,4,2,32

	.global	_USER_log_sample_period
_USER_log_sample_period:	.usect	"CFG",44,1
	.sym	_USER_log_sample_period,_USER_log_sample_period,8,2,1408,.fake6

	.global	_SYS_log_sample_period
_SYS_log_sample_period:	.usect	"CFG",44,1
	.sym	_SYS_log_sample_period,_SYS_log_sample_period,8,2,1408,.fake6

	.global	_SYS_LOG_EVENT
	.bss	_SYS_LOG_EVENT,1
	.sym	_SYS_LOG_EVENT,_SYS_LOG_EVENT,4,2,32

	.global	_CCM_Record_view
_CCM_Record_view:	.usect	"CFG",2,1
	.sym	_CCM_Record_view,_CCM_Record_view,8,2,64,.fake8

	.global	_FC_Periodic
	.bss	_FC_Periodic,12
	.sym	_FC_Periodic,_FC_Periodic,8,2,384,.fake18
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
	.bss	CL50,1
	.bss	CL51,1
	.bss	CL52,1
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

	.sect	".cinit"
	.field  	106,32
	.field  	CL1+0,32
	.field  	_SYS+9,32
	.field  	_FLASH_SIZE,32
	.field  	4194304,32
	.field  	_SYS+6,32
	.field  	4653056,32
	.field  	_SYS,32
	.field  	_SYS+7,32
	.field  	32768,32
	.field  	_SYS+11,32
	.field  	_SYS_LOG_EVENT,32
	.field  	_USER_LOG_EVENT,32
	.field  	_SYS+1,32
	.field  	_SYS+2,32
	.field  	_SYS+8,32
	.field  	_SYS_LOG_ENABLED,32
	.field  	_FindNextLogIndex,32
	.field  	_SYS+10,32
	.field  	_CCM_Record_view,32
	.field  	_CCM_Record_view+1,32
	.field  	_CCM_Record_Viewer,32
	.field  	_CCM_Records+9,32
	.field  	4210688,32
	.field  	_CCM_Records+6,32
	.field  	4202496,32
	.field  	_CCM_Records,32
	.field  	_CCM_Records+7,32
	.field  	_CCM_Records+11,32
	.field  	_CCM_Records+1,32
	.field  	_CCM_Records+2,32
	.field  	_CCM_Records+8,32
	.field  	_CCMREC,32
	.field  	_CCM_Records+10,32
	.field  	_FC_Periodic+9,32
	.field  	4227072,32
	.field  	_FC_Periodic+6,32
	.field  	4210688,32
	.field  	_FC_Periodic,32
	.field  	_FC_Periodic+7,32
	.field  	_FC_Periodic+11,32
	.field  	_FC_Periodic+1,32
	.field  	_FC_Periodic+2,32
	.field  	_FC_Periodic+8,32
	.field  	_FC_Periodic+10,32
	.field  	_FLASH_ERASE_BLK,32
	.field  	_FLASH_LOCK_BLK,32
	.field  	-1073741825,32
	.field  	4194304,32
	.field  	4194368,32
	.field  	7340144,32
	.field  	8388736,32
	.field  	16711935,32
	.field  	_EraseEntireLog,32
	.field  	1073741824,32
	.field  	_MarkLogStart,32
	.field  	_EraseSector,32
	.field  	_RTC_PRESENT,32
	.field  	_IDEC_SA+18,32
	.field  	_IDEC_SA+20,32
	.field  	_IDEC_SA+16,32
	.field  	_RTC+4,32
	.field  	_RTC+3,32
	.field  	_RTC+7,32
	.field  	_RTC+6,32
	.field  	_RTC+8,32
	.field  	_DIAGNOSTICS,32
	.field  	_REG_TIME,32
	.field  	16711680,32
	.field  	16711680,32
	.field  	_REG_WATERCUT_RAW,32
	.field  	_TOIEEE,32
	.field  	_REG_TEMPERATURE_EXTERNAL+9,32
	.field  	_OSC_OIL_CALC,32
	.field  	_REG_FREQ+9,32
	.field  	_OSC_WATER_CALC,32
	.field  	_REG_VREF+9,32
	.field  	2147483647,32
	.field  	_DataLog,32
	.field  	_DataLogUser,32
	.field  	_FC+1258,32
	.field  	_FC+1257,32
	.field  	_FC+1256,32
	.field  	_FC+625,32
	.field  	_FC+669,32
	.field  	_FC+801,32
	.field  	_FC+849,32
	.field  	_ANALYZER_MODE,32
	.field  	_CCM_GAS_TOTAL,32
	.field  	_RecordLogEntry,32
	.field  	_DataLogCounter,32
	.field  	_USER_LOG_ENABLED,32
	.field  	_REG_DUMMY,32
	.field  	_LOG_VAR_SEL,32
	.field  	_HART_DV_Table,32
	.field  	_HART_Lookup,32
	.field  	_TMR_DATALOG_USER,32
	.field  	_USER_log_sample_period,32
	.field  	_Timer_Create,32
	.field  	_Timer_Insert,32
	.field  	_TMR_CLEAR_USER_LOG_EVENT_FLAG,32
	.field  	_TMR_DATALOG,32
	.field  	_SYS_log_sample_period,32
	.field  	_TMR_CLEAR_SYS_LOG_EVENT_FLAG,32
	.word   	01F000000H ; float   2.147483648000000e+09
	.word   	020000000H ; float   4.294967296000000e+09
	.field  	9437203,32
	.field  	-2147483648,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_Timer_Insert

	.global	_Timer_Create

	.global	_RTC_PRESENT

	.global	_RTC

	.global	_DIAGNOSTICS

	.global	_FLASH_SIZE

	.global	_FLASH_LOCK_BLK

	.global	_FLASH_ERASE_BLK

	.global	_TOIEEE

	.global	_LOG_VAR_SEL

	.global	_IDEC_SA

	.global	_CCMREC

	.global	_CCM_GAS_TOTAL

	.global	_ANALYZER_MODE

	.global	_OSC_OIL_CALC

	.global	_OSC_WATER_CALC

	.global	_REG_TIME

	.global	_REG_DUMMY

	.global	_REG_WATERCUT_RAW

	.global	_REG_VREF

	.global	_REG_TEMPERATURE_EXTERNAL

	.global	_REG_FREQ

	.global	_FC

	.global	_HART_Lookup

	.global	_HART_DV_Table

	.global	_CCM_Record_Viewer

	.global	_TMR_DATALOG

	.global	_TMR_DATALOG_USER

	.global	_TMR_CLEAR_USER_LOG_EVENT_FLAG

	.global	_TMR_CLEAR_SYS_LOG_EVENT_FLAG
	.global	DIV_U30
	.global	MPY_I30
	.global	DIV_I30
	.global	MOD_I30
