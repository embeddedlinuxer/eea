;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu Sep 19 10:37:49 2019                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_DD4.AAA 
	.file	"lcd.c"
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
	.file	"lcd.c"
	.sect	 "internal_RAM"

	.global	_I2C_TX_BYTE_5
	.sym	_I2C_TX_BYTE_5,_I2C_TX_BYTE_5,46,2,0
	.func	83
;******************************************************************************
;* FUNCTION NAME: _I2C_TX_BYTE_5                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_I2C_TX_BYTE_5:
;* ar2   assigned to _b
	.sym	_b,10,12,17,32
	.sym	_b,1,12,1,32
	.sym	_i,2,4,1,32
	.sym	_dat,3,12,1,32
	.sym	_ack,4,14,1,32
	.line	1
;----------------------------------------------------------------------
;  83 | BOOL I2C_TX_BYTE_5(unsigned char b)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
;  85 | int i;                          /* counter              */             
;  86 | unsigned char dat;      /* working byte */                             
;  87 | BOOL ack;                       /* acknowledge? */                     
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |84| 
	.line	7
;----------------------------------------------------------------------
;  89 | dat = b;                        /* copy byte    */                     
;----------------------------------------------------------------------
        ldiu      ar2,r0
        sti       r0,*+fp(3)            ; |89| 
	.line	9
;----------------------------------------------------------------------
;  91 | for (i=0;i<8;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |91| 
        sti       r0,*+fp(2)            ; |91| 
        cmpi      8,r0                  ; |91| 
        bge       L6                    ; |91| 
;*      Branch Occurs to L6             ; |91| 
L2:        
	.line	11
;----------------------------------------------------------------------
;  93 | if (dat&0x80)                                                          
;----------------------------------------------------------------------
        ldiu      128,r0                ; |93| 
        tstb      *+fp(3),r0            ; |93| 
        beq       L4                    ; |93| 
;*      Branch Occurs to L4             ; |93| 
	.line	13
;----------------------------------------------------------------------
;  95 | SDA_TX_HI_5;                                                           
;  97 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |95| 
        ldiu      1,r0                  ; |95| 
        or3       r0,*ar0,r0            ; |95| 
        sti       r0,*ar0               ; |95| 
        bu        L5                    ; |82| 
;*      Branch Occurs to L5             ; |82| 
L4:        
	.line	17
;----------------------------------------------------------------------
;  99 | SDA_TX_LO_5;                                                           
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |99| 
        ldiu      254,r0                ; |99| 
        and3      r0,*ar0,r0            ; |99| 
        sti       r0,*ar0               ; |99| 
L5:        
	.line	20
;----------------------------------------------------------------------
; 102 | I2C_PULSE_5;                                                           
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |102| 
        ldiu      4,r0                  ; |102| 
        or3       r0,*ar0,r0            ; |102| 
        sti       r0,*ar0               ; |102| 
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |102| 
        and3      r0,*ar0,r0            ; |102| 
        sti       r0,*ar0               ; |102| 
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	21
;----------------------------------------------------------------------
; 103 | dat = dat<<1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |103| 
        ash       1,r0                  ; |103| 
        sti       r0,*+fp(3)            ; |103| 
	.line	9
        ldiu      1,r0                  ; |91| 
        addi      *+fp(2),r0            ; |91| 
        sti       r0,*+fp(2)            ; |91| 
        cmpi      8,r0                  ; |91| 
        blt       L2                    ; |91| 
;*      Branch Occurs to L2             ; |91| 
L6:        
	.line	24
;----------------------------------------------------------------------
; 106 | DISABLE_SDA_TX_5;                                                      
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |106| 
        ldiu      253,r0                ; |106| 
        and3      r0,*ar0,r0            ; |106| 
        sti       r0,*ar0               ; |106| 
	.line	25
;----------------------------------------------------------------------
; 107 | SDA_TX_HI_5;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |107| 
        or3       r0,*ar0,r0            ; |107| 
        sti       r0,*ar0               ; |107| 
	.line	26
;----------------------------------------------------------------------
; 108 | I2C_WAIT_HI;                                                           
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	27
;----------------------------------------------------------------------
; 109 | SCL_HI_5;                                                              
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |109| 
        or3       r0,*ar0,r0            ; |109| 
        sti       r0,*ar0               ; |109| 
	.line	28
;----------------------------------------------------------------------
; 110 | I2C_WAIT_HI;                                                           
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	30
;----------------------------------------------------------------------
; 112 | if (SDA_RX_5)                                                          
;----------------------------------------------------------------------
        ldiu      16,r0                 ; |112| 
        tstb3     *ar0,r0               ; |112| 
        beq       L8                    ; |112| 
;*      Branch Occurs to L8             ; |112| 
	.line	32
;----------------------------------------------------------------------
; 114 | ack = FALSE;                                                           
; 116 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |114| 
        sti       r0,*+fp(4)            ; |114| 
        bu        L9                    ; |82| 
;*      Branch Occurs to L9             ; |82| 
L8:        
	.line	36
;----------------------------------------------------------------------
; 118 | ack = TRUE;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |118| 
        sti       r0,*+fp(4)            ; |118| 
L9:        
	.line	39
;----------------------------------------------------------------------
; 121 | SCL_LO_5;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |121| 
        ldiu      251,r0                ; |121| 
        and3      r0,*ar0,r0            ; |121| 
        sti       r0,*ar0               ; |121| 
	.line	40
;----------------------------------------------------------------------
; 122 | I2C_WAIT_LO;                                                           
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	41
;----------------------------------------------------------------------
; 123 | ENABLE_SDA_TX_5;                                                       
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |123| 
        or3       r0,*ar0,r0            ; |123| 
        sti       r0,*ar0               ; |123| 
	.line	43
;----------------------------------------------------------------------
; 125 | return ack;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |125| 
	.line	44
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |126| 
        ldiu      *fp,fp                ; |126| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |126| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	126,000000000h,4


	.sect	 "internal_RAM"

	.global	_I2C_RX_BYTE_5
	.sym	_I2C_RX_BYTE_5,_I2C_RX_BYTE_5,32,2,0
	.func	142
;******************************************************************************
;* FUNCTION NAME: _I2C_RX_BYTE_5                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_I2C_RX_BYTE_5:
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
; 142 | void I2C_RX_BYTE_5(unsigned char* b, BOOL ack)                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 144 | int i;                          /* counter      */                     
; 145 | unsigned char dat;      /* data         */                             
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |143| 
        sti       ar2,*+fp(1)           ; |143| 
	.line	6
;----------------------------------------------------------------------
; 147 | dat = 0;                                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |147| 
        sti       r0,*+fp(4)            ; |147| 
	.line	8
;----------------------------------------------------------------------
; 149 | DISABLE_SDA_TX_5;                                                      
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |149| 
        ldiu      253,r0                ; |149| 
        and3      r0,*ar0,r0            ; |149| 
        sti       r0,*ar0               ; |149| 
	.line	10
;----------------------------------------------------------------------
; 151 | for (i=0;i<8;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |151| 
        sti       r0,*+fp(3)            ; |151| 
        cmpi      8,r0                  ; |151| 
        bge       L16                   ; |151| 
;*      Branch Occurs to L16            ; |151| 
L13:        
	.line	12
;----------------------------------------------------------------------
; 153 | SCL_HI_5;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |153| 
        ldiu      4,r0                  ; |153| 
        or3       r0,*ar0,r0            ; |153| 
        sti       r0,*ar0               ; |153| 
	.line	13
;----------------------------------------------------------------------
; 154 | I2C_WAIT_HI;                                                           
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	15
;----------------------------------------------------------------------
; 156 | if (SDA_RX_5)                                                          
;----------------------------------------------------------------------
        ldiu      16,r0                 ; |156| 
        tstb3     *ar0,r0               ; |156| 
        beq       L15                   ; |156| 
;*      Branch Occurs to L15            ; |156| 
	.line	16
;----------------------------------------------------------------------
; 157 | dat |= 0x01;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |157| 
        or        *+fp(4),r0            ; |157| 
        sti       r0,*+fp(4)            ; |157| 
L15:        
	.line	18
;----------------------------------------------------------------------
; 159 | SCL_LO_5;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |159| 
        ldiu      251,r0                ; |159| 
        and3      r0,*ar0,r0            ; |159| 
        sti       r0,*ar0               ; |159| 
	.line	19
;----------------------------------------------------------------------
; 160 | I2C_WAIT_LO;                                                           
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	20
;----------------------------------------------------------------------
; 161 | dat = dat<<1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |161| 
        ash       1,r0                  ; |161| 
        sti       r0,*+fp(4)            ; |161| 
	.line	10
        ldiu      1,r0                  ; |151| 
        addi      *+fp(3),r0            ; |151| 
        sti       r0,*+fp(3)            ; |151| 
        cmpi      8,r0                  ; |151| 
        blt       L13                   ; |151| 
;*      Branch Occurs to L13            ; |151| 
L16:        
	.line	23
;----------------------------------------------------------------------
; 164 | dat = dat>>1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |164| 
        lsh       -1,r0                 ; |164| 
        sti       r0,*+fp(4)            ; |164| 
	.line	24
;----------------------------------------------------------------------
; 165 | ENABLE_SDA_TX_5;                                                       
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |165| 
        ldiu      2,r0                  ; |165| 
        or3       r0,*ar0,r0            ; |165| 
        sti       r0,*ar0               ; |165| 
	.line	26
;----------------------------------------------------------------------
; 167 | if (ack)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |167| 
        cmpi      0,r0                  ; |167| 
        beq       L18                   ; |167| 
;*      Branch Occurs to L18            ; |167| 
	.line	28
;----------------------------------------------------------------------
; 169 | SDA_TX_LO_5;                                                           
; 171 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |169| 
        ldiu      254,r0                ; |169| 
        and3      r0,*ar0,r0            ; |169| 
        sti       r0,*ar0               ; |169| 
        bu        L19                   ; |141| 
;*      Branch Occurs to L19            ; |141| 
L18:        
	.line	32
;----------------------------------------------------------------------
; 173 | SDA_TX_HI_5;                                                           
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |173| 
        ldiu      1,r0                  ; |173| 
        or3       r0,*ar0,r0            ; |173| 
        sti       r0,*ar0               ; |173| 
L19:        
	.line	35
;----------------------------------------------------------------------
; 176 | I2C_PULSE_5;                                                           
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |176| 
        ldiu      4,r0                  ; |176| 
        or3       r0,*ar0,r0            ; |176| 
        sti       r0,*ar0               ; |176| 
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |176| 
        and3      r0,*ar0,r0            ; |176| 
        sti       r0,*ar0               ; |176| 
		PUSH    AR1			
		LDI		4,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	36
;----------------------------------------------------------------------
; 177 | b[0] = dat;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |177| 
        ldiu      *+fp(4),r0            ; |177| 
        sti       r0,*ar0               ; |177| 
	.line	37
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	178,000000000h,4


	.sect	 "internal_RAM"

	.global	_Write_I2C_5
	.sym	_Write_I2C_5,_Write_I2C_5,46,2,0
	.func	194
;******************************************************************************
;* FUNCTION NAME: _Write_I2C_5                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_I2C_5:
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
; 194 | BOOL Write_I2C_5(int addr, int n, unsigned char* p)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 196 | int i;                          /* counter
;     |          */                                                            
; 197 | unsigned char dat;      /* copy of address                      */     
; 198 | BOOL ack;                       /* acknowledge?
;     |  */                                                                    
; 199 | BOOL r;                         /* return - TRUE or FALSE       */     
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |195| 
        sti       r2,*+fp(2)            ; |195| 
        sti       ar2,*+fp(1)           ; |195| 
	.line	8
;----------------------------------------------------------------------
; 201 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |201| 
        sti       r0,*+fp(7)            ; |201| 
	.line	9
;----------------------------------------------------------------------
; 202 | I2C_START_5;                                                           
; 204 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |202| 
        ldiu      4,r0                  ; |202| 
        or3       r0,*ar0,r0            ; |202| 
        sti       r0,*ar0               ; |202| 
        ldiu      1,r0                  ; |202| 
        or3       r0,*ar0,r0            ; |202| 
        sti       r0,*ar0               ; |202| 
        ldiu      8,r0                  ; |202| 
        or3       r0,*ar0,r0            ; |202| 
        sti       r0,*ar0               ; |202| 
        ldiu      2,r0                  ; |202| 
        or3       r0,*ar0,r0            ; |202| 
        sti       r0,*ar0               ; |202| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |202| 
        and3      r0,*ar0,r0            ; |202| 
        sti       r0,*ar0               ; |202| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |202| 
        and3      r0,*ar0,r0            ; |202| 
        sti       r0,*ar0               ; |202| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	13
;----------------------------------------------------------------------
; 206 | dat = addr;                                             /* address with
;     | out read bit set */                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |206| 
        sti       r0,*+fp(5)            ; |206| 
	.line	14
;----------------------------------------------------------------------
; 207 | ack = I2C_TX_BYTE_5(dat);                                              
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |207| 
        callu     r0                    ; far call to _I2C_TX_BYTE_5	; |207| 
                                        ; |207| Far Call Occurs
        sti       r0,*+fp(6)            ; |207| 
	.line	16
;----------------------------------------------------------------------
; 209 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |209| 
        bne       L24                   ; |209| 
;*      Branch Occurs to L24            ; |209| 
	.line	18
;----------------------------------------------------------------------
; 211 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |211| 
        sti       r0,*+fp(7)            ; |211| 
	.line	19
;----------------------------------------------------------------------
; 212 | break;                                                                 
;----------------------------------------------------------------------
        bu        L30                   ; |212| 
;*      Branch Occurs to L30            ; |212| 
L24:        
	.line	22
;----------------------------------------------------------------------
; 215 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |215| 
        sti       r0,*+fp(4)            ; |215| 
        cmpi      *+fp(2),r0            ; |215| 
        bge       L30                   ; |215| 
;*      Branch Occurs to L30            ; |215| 
L25:        
	.line	24
;----------------------------------------------------------------------
; 217 | ack = I2C_TX_BYTE_5(p[i]);      /* write the bytes */                  
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(3),ir0           ; |217| 
        ldiu      *+fp(4),ar0           ; |217| 
        ldiu      @CL2,r0               ; |217| 
        ldiu      *+ar0(ir0),ar2        ; |217| 
        callu     r0                    ; far call to _I2C_TX_BYTE_5	; |217| 
                                        ; |217| Far Call Occurs
        sti       r0,*+fp(6)            ; |217| 
	.line	26
;----------------------------------------------------------------------
; 219 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |219| 
        bne       L27                   ; |219| 
;*      Branch Occurs to L27            ; |219| 
	.line	28
;----------------------------------------------------------------------
; 221 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |221| 
        sti       r0,*+fp(7)            ; |221| 
	.line	29
;----------------------------------------------------------------------
; 222 | break;                                                                 
;----------------------------------------------------------------------
        bu        L30                   ; |222| 
;*      Branch Occurs to L30            ; |222| 
L27:        
	.line	22
        ldiu      1,r0                  ; |215| 
        addi      *+fp(4),r0            ; |215| 
        sti       r0,*+fp(4)            ; |215| 
        cmpi      *+fp(2),r0            ; |215| 
        blt       L25                   ; |215| 
;*      Branch Occurs to L25            ; |215| 
	.line	33
;----------------------------------------------------------------------
; 226 | break;                                                                 
;----------------------------------------------------------------------
        bu        L30                   ; |226| 
;*      Branch Occurs to L30            ; |226| 
	.line	34
L30:        
	.line	36
;----------------------------------------------------------------------
; 229 | I2C_STOP_5;                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |229| 
        ldiu      2,r0                  ; |229| 
        or3       r0,*ar0,r0            ; |229| 
        sti       r0,*ar0               ; |229| 
        ldiu      254,r0                ; |229| 
        and3      r0,*ar0,r0            ; |229| 
        sti       r0,*ar0               ; |229| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |229| 
        or3       r0,*ar0,r0            ; |229| 
        sti       r0,*ar0               ; |229| 
        ldiu      247,r0                ; |229| 
        and3      r0,*ar0,r0            ; |229| 
        sti       r0,*ar0               ; |229| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |229| 
        or3       r0,*ar0,r0            ; |229| 
        sti       r0,*ar0               ; |229| 
        ldiu      253,r0                ; |229| 
        and3      r0,*ar0,r0            ; |229| 
        sti       r0,*ar0               ; |229| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	38
;----------------------------------------------------------------------
; 231 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |231| 
	.line	39
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |232| 
        ldiu      *fp,fp                ; |232| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |232| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	232,000000000h,7


	.sect	 "internal_RAM"

	.global	_Read_I2C_5
	.sym	_Read_I2C_5,_Read_I2C_5,46,2,0
	.func	249
;******************************************************************************
;* FUNCTION NAME: _Read_I2C_5                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Read_I2C_5:
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
; 249 | BOOL Read_I2C_5(int addr, int n, unsigned char* p)                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 251 | int i,j;                        /* counter; not used    */             
; 252 | unsigned char dat;      /* copy of address              */             
; 253 | BOOL ack;                       /* acknowledged?                */     
; 254 | BOOL r;                         /* return true or false */             
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |250| 
        sti       r2,*+fp(2)            ; |250| 
        sti       ar2,*+fp(1)           ; |250| 
	.line	8
;----------------------------------------------------------------------
; 256 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |256| 
        sti       r0,*+fp(8)            ; |256| 
	.line	9
;----------------------------------------------------------------------
; 257 | I2C_START_5;                                                           
; 259 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |257| 
        ldiu      4,r0                  ; |257| 
        or3       r0,*ar0,r0            ; |257| 
        sti       r0,*ar0               ; |257| 
        ldiu      1,r0                  ; |257| 
        or3       r0,*ar0,r0            ; |257| 
        sti       r0,*ar0               ; |257| 
        ldiu      8,r0                  ; |257| 
        or3       r0,*ar0,r0            ; |257| 
        sti       r0,*ar0               ; |257| 
        ldiu      2,r0                  ; |257| 
        or3       r0,*ar0,r0            ; |257| 
        sti       r0,*ar0               ; |257| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |257| 
        and3      r0,*ar0,r0            ; |257| 
        sti       r0,*ar0               ; |257| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |257| 
        and3      r0,*ar0,r0            ; |257| 
        sti       r0,*ar0               ; |257| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	13
;----------------------------------------------------------------------
; 261 | dat = addr | 0x01;                              /* address with read bi
;     | t set */                                                               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |261| 
        or        *+fp(1),r0            ; |261| 
        sti       r0,*+fp(6)            ; |261| 
	.line	14
;----------------------------------------------------------------------
; 262 | ack = I2C_TX_BYTE_5(dat);                                              
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |262| 
        callu     r0                    ; far call to _I2C_TX_BYTE_5	; |262| 
                                        ; |262| Far Call Occurs
        sti       r0,*+fp(7)            ; |262| 
	.line	16
;----------------------------------------------------------------------
; 264 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |264| 
        bne       L35                   ; |264| 
;*      Branch Occurs to L35            ; |264| 
	.line	18
;----------------------------------------------------------------------
; 266 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |266| 
        sti       r0,*+fp(8)            ; |266| 
	.line	19
;----------------------------------------------------------------------
; 267 | break;                                                                 
;----------------------------------------------------------------------
        bu        L39                   ; |267| 
;*      Branch Occurs to L39            ; |267| 
L35:        
	.line	22
;----------------------------------------------------------------------
; 270 | for (i=0;i<(n-1);i++)                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |270| 
        sti       r0,*+fp(4)            ; |270| 
        ldiu      1,r0                  ; |270| 
        ldiu      *+fp(4),r1            ; |270| 
        subri     *+fp(2),r0            ; |270| 
        cmpi3     r0,r1                 ; |270| 
        bge       L37                   ; |270| 
;*      Branch Occurs to L37            ; |270| 
L36:        
	.line	23
;----------------------------------------------------------------------
; 271 | I2C_RX_BYTE_5(&p[i],1);         /* read the bytes */                   
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |271| 
        ldp       @CL3,DP
        addi      *+fp(3),ar2           ; |271| Unsigned
        ldiu      @CL3,r0               ; |271| 
        ldiu      1,r2                  ; |271| 
        callu     r0                    ; far call to _I2C_RX_BYTE_5	; |271| 
                                        ; |271| Far Call Occurs
	.line	22
        ldiu      1,r0                  ; |270| 
        addi      *+fp(4),r0            ; |270| 
        sti       r0,*+fp(4)            ; |270| 
        ldiu      1,r0                  ; |270| 
        ldiu      *+fp(4),r1            ; |270| 
        subri     *+fp(2),r0            ; |270| 
        cmpi3     r0,r1                 ; |270| 
        blt       L36                   ; |270| 
;*      Branch Occurs to L36            ; |270| 
L37:        
	.line	25
;----------------------------------------------------------------------
; 273 | I2C_RX_BYTE_5(&p[n-1],0);               /* the final byte to read */   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |273| 
        ldp       @CL3,DP
        addi      *+fp(3),ar2           ; |273| Unsigned
        ldiu      @CL3,r0               ; |273| 
        subi      1,ar2                 ; |273| Unsigned
        ldiu      0,r2                  ; |273| 
        callu     r0                    ; far call to _I2C_RX_BYTE_5	; |273| 
                                        ; |273| Far Call Occurs
	.line	27
;----------------------------------------------------------------------
; 275 | break;                                                                 
;----------------------------------------------------------------------
        bu        L39                   ; |275| 
;*      Branch Occurs to L39            ; |275| 
	.line	28
L39:        
	.line	30
;----------------------------------------------------------------------
; 278 | I2C_STOP_5;                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |278| 
        ldiu      2,r0                  ; |278| 
        or3       r0,*ar0,r0            ; |278| 
        sti       r0,*ar0               ; |278| 
        ldiu      254,r0                ; |278| 
        and3      r0,*ar0,r0            ; |278| 
        sti       r0,*ar0               ; |278| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |278| 
        or3       r0,*ar0,r0            ; |278| 
        sti       r0,*ar0               ; |278| 
        ldiu      247,r0                ; |278| 
        and3      r0,*ar0,r0            ; |278| 
        sti       r0,*ar0               ; |278| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |278| 
        or3       r0,*ar0,r0            ; |278| 
        sti       r0,*ar0               ; |278| 
        ldiu      253,r0                ; |278| 
        and3      r0,*ar0,r0            ; |278| 
        sti       r0,*ar0               ; |278| 
		PUSH    AR1			
		LDI		15,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	32
;----------------------------------------------------------------------
; 280 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |280| 
	.line	33
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |281| 
        ldiu      *fp,fp                ; |281| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |281| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	281,000000000h,8


	.sect	 "internal_RAM"

	.global	_LCD_CMD
	.sym	_LCD_CMD,_LCD_CMD,32,2,0
	.func	295
;******************************************************************************
;* FUNCTION NAME: _LCD_CMD                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_LCD_CMD:
;* ar2   assigned to _d
	.sym	_d,10,4,17,32
	.sym	_d,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 295 | void LCD_CMD(int d)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |296| 
	.line	3
;----------------------------------------------------------------------
; 297 | if (!LCD_PRESENT)                               /* check if LCD exists
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |297| 
        ldiu      *ar0,r0               ; |297| 
        cmpi      0,r0                  ; |297| 
        beq       L44                   ; |297| 
;*      Branch Occurs to L44            ; |297| 
	.line	4
;----------------------------------------------------------------------
; 298 | return;                                                                
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 300 | LCD[0]  = 0xFF;                                                        
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |300| 
        ldiu      255,r0                ; |300| 
        sti       r0,*ar0               ; |300| 
	.line	7
;----------------------------------------------------------------------
; 301 | LCD[1] &=(0xFF^LCDE^LCDRS);             /* clear enable, addr */       
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |301| 
        ldiu      250,r0                ; |301| 
        and       *+ar0(1),r0           ; |301| 
        sti       r0,*+ar0(1)           ; |301| 
	.line	8
;----------------------------------------------------------------------
; 302 | LCD[1] |= LCDRW;                                /* set R/W */          
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |302| 
        ldiu      2,r0                  ; |302| 
        or        *+ar0(1),r0           ; |302| 
        sti       r0,*+ar0(1)           ; |302| 
	.line	9
;----------------------------------------------------------------------
; 303 | LCD[1] |= LCD_READ_MASK;                                               
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |303| 
        ldiu      248,r0                ; |303| 
        or        *+ar0(1),r0           ; |303| 
        sti       r0,*+ar0(1)           ; |303| 
	.line	11
;----------------------------------------------------------------------
; 305 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      64,ar2                ; |305| 
        ldiu      @CL6,r0               ; |305| 
        ldp       @CL5,DP
        ldiu      2,r2                  ; |305| 
        ldiu      @CL5,r3               ; |305| 
        callu     r0                    ; far call to _Write_I2C_5	; |305| 
                                        ; |305| Far Call Occurs
	.line	12
;----------------------------------------------------------------------
; 306 | Read_I2C_5(LCD_ADDR, 2, LCD);   /* UPDATE inputs */                    
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,r0               ; |306| 
        ldp       @CL5,DP
        ldiu      @CL5,r3               ; |306| 
        ldiu      2,r2                  ; |306| 
        ldiu      64,ar2                ; |306| 
        callu     r0                    ; far call to _Read_I2C_5	; |306| 
                                        ; |306| Far Call Occurs
	.line	14
;----------------------------------------------------------------------
; 308 | LCD_DIPSW = LCD[1]&LCD_READ_MASK;                                      
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |308| 
        ldp       @CL8,DP
        ldiu      @CL8,ar1              ; |308| 
        ldiu      248,r0                ; |308| 
        and3      r0,*ar0,r0            ; |308| 
        sti       r0,*ar1               ; |308| 
	.line	15
;----------------------------------------------------------------------
; 309 | LCD[1]   |= LCDE;                               /* set enable */       
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |309| 
        ldiu      4,r0                  ; |309| 
        or        *+ar0(1),r0           ; |309| 
        sti       r0,*+ar0(1)           ; |309| 
	.line	17
;----------------------------------------------------------------------
; 311 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |311| 
        ldp       @CL5,DP
        ldiu      @CL5,r3               ; |311| 
        ldiu      2,r2                  ; |311| 
        ldiu      64,ar2                ; |311| 
        callu     r0                    ; far call to _Write_I2C_5	; |311| 
                                        ; |311| Far Call Occurs
	.line	19
;----------------------------------------------------------------------
; 313 | LCD[1] &= (0xFF^LCDE);                  /* clear enable */             
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |313| 
        ldiu      251,r0                ; |313| 
        and       *+ar0(1),r0           ; |313| 
        sti       r0,*+ar0(1)           ; |313| 
	.line	21
;----------------------------------------------------------------------
; 315 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |315| 
        ldp       @CL5,DP
        ldiu      @CL5,r3               ; |315| 
        ldiu      64,ar2                ; |315| 
        ldiu      2,r2                  ; |315| 
        callu     r0                    ; far call to _Write_I2C_5	; |315| 
                                        ; |315| Far Call Occurs
	.line	23
;----------------------------------------------------------------------
; 317 | LCD[0]  = d;                                    /* COMMAND */          
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |317| 
        ldiu      *+fp(1),r0            ; |317| 
        sti       r0,*ar0               ; |317| 
	.line	24
;----------------------------------------------------------------------
; 318 | LCD[1] &= (0xFF^LCDRW^LCDRS);   /* clear R/W, addr */                  
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |318| 
        ldiu      252,r0                ; |318| 
        and       *+ar0(1),r0           ; |318| 
        sti       r0,*+ar0(1)           ; |318| 
	.line	26
;----------------------------------------------------------------------
; 320 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |320| 
        ldp       @CL5,DP
        ldiu      @CL5,r3               ; |320| 
        ldiu      64,ar2                ; |320| 
        ldiu      2,r2                  ; |320| 
        callu     r0                    ; far call to _Write_I2C_5	; |320| 
                                        ; |320| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 322 | LCD[1] |= LCDE;                                 /* set enable */       
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |322| 
        ldiu      4,r0                  ; |322| 
        or        *+ar0(1),r0           ; |322| 
        sti       r0,*+ar0(1)           ; |322| 
	.line	30
;----------------------------------------------------------------------
; 324 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |324| 
        ldp       @CL5,DP
        ldiu      64,ar2                ; |324| 
        ldiu      2,r2                  ; |324| 
        ldiu      @CL5,r3               ; |324| 
        callu     r0                    ; far call to _Write_I2C_5	; |324| 
                                        ; |324| Far Call Occurs
	.line	32
;----------------------------------------------------------------------
; 326 | LCD[1] &= (0xFF^LCDE);                  /* clear enable */             
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |326| 
        ldiu      251,r0                ; |326| 
        and       *+ar0(1),r0           ; |326| 
        sti       r0,*+ar0(1)           ; |326| 
	.line	34
;----------------------------------------------------------------------
; 328 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |328| 
        ldp       @CL5,DP
        ldiu      64,ar2                ; |328| 
        ldiu      2,r2                  ; |328| 
        ldiu      @CL5,r3               ; |328| 
        callu     r0                    ; far call to _Write_I2C_5	; |328| 
                                        ; |328| Far Call Occurs
L44:        
	.line	35
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	329,000000000h,1


	.sect	 "internal_RAM"

	.global	_LCD_CHAR
	.sym	_LCD_CHAR,_LCD_CHAR,32,2,0
	.func	343
;******************************************************************************
;* FUNCTION NAME: _LCD_CHAR                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_LCD_CHAR:
;* ar2   assigned to _d
	.sym	_d,10,4,17,32
	.sym	_d,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 343 | void LCD_CHAR(int d)                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |344| 
	.line	3
;----------------------------------------------------------------------
; 345 | if (!LCD_PRESENT)                               /* check if LCD exists
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |345| 
        ldiu      *ar0,r0               ; |345| 
        cmpi      0,r0                  ; |345| 
        beq       L48                   ; |345| 
;*      Branch Occurs to L48            ; |345| 
	.line	4
;----------------------------------------------------------------------
; 346 | return;                                                                
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 348 | LCD[0]  = 0xFF;                                                        
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |348| 
        ldiu      255,r0                ; |348| 
        sti       r0,*ar0               ; |348| 
	.line	7
;----------------------------------------------------------------------
; 349 | LCD[1] &= (0xFF^LCDE^LCDRS);    /* clear enable, addr */               
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |349| 
        ldiu      250,r0                ; |349| 
        and       *+ar0(1),r0           ; |349| 
        sti       r0,*+ar0(1)           ; |349| 
	.line	8
;----------------------------------------------------------------------
; 350 | LCD[1] |= LCDRW;                                /* set R/W */          
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |350| 
        ldiu      2,r0                  ; |350| 
        or        *+ar0(1),r0           ; |350| 
        sti       r0,*+ar0(1)           ; |350| 
	.line	10
;----------------------------------------------------------------------
; 352 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      64,ar2                ; |352| 
        ldiu      @CL6,r0               ; |352| 
        ldp       @CL5,DP
        ldiu      2,r2                  ; |352| 
        ldiu      @CL5,r3               ; |352| 
        callu     r0                    ; far call to _Write_I2C_5	; |352| 
                                        ; |352| Far Call Occurs
	.line	12
;----------------------------------------------------------------------
; 354 | LCD[1] |= LCDE;                                 /* set enable */       
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |354| 
        ldiu      4,r0                  ; |354| 
        or        *+ar0(1),r0           ; |354| 
        sti       r0,*+ar0(1)           ; |354| 
	.line	14
;----------------------------------------------------------------------
; 356 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |356| 
        ldp       @CL5,DP
        ldiu      64,ar2                ; |356| 
        ldiu      @CL5,r3               ; |356| 
        ldiu      2,r2                  ; |356| 
        callu     r0                    ; far call to _Write_I2C_5	; |356| 
                                        ; |356| Far Call Occurs
	.line	16
;----------------------------------------------------------------------
; 358 | LCD[1] &= (0xFF^LCDE);                  /* clear enable */             
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |358| 
        ldiu      251,r0                ; |358| 
        and       *+ar0(1),r0           ; |358| 
        sti       r0,*+ar0(1)           ; |358| 
	.line	18
;----------------------------------------------------------------------
; 360 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |360| 
        ldp       @CL5,DP
        ldiu      64,ar2                ; |360| 
        ldiu      @CL5,r3               ; |360| 
        ldiu      2,r2                  ; |360| 
        callu     r0                    ; far call to _Write_I2C_5	; |360| 
                                        ; |360| Far Call Occurs
	.line	20
;----------------------------------------------------------------------
; 362 | LCD[0]  = d;                                    /* CHAR */             
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |362| 
        ldiu      *+fp(1),r0            ; |362| 
        sti       r0,*ar0               ; |362| 
	.line	21
;----------------------------------------------------------------------
; 363 | LCD[1] &= (0xFF^LCDRW);                 /* clear R/W */                
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |363| 
        ldiu      253,r0                ; |363| 
        and       *+ar0(1),r0           ; |363| 
        sti       r0,*+ar0(1)           ; |363| 
	.line	22
;----------------------------------------------------------------------
; 364 | LCD[1] |= LCDRS;                                /* set addr */         
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |364| 
        ldiu      1,r0                  ; |364| 
        or        *+ar0(1),r0           ; |364| 
        sti       r0,*+ar0(1)           ; |364| 
	.line	24
;----------------------------------------------------------------------
; 366 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |366| 
        ldp       @CL5,DP
        ldiu      @CL5,r3               ; |366| 
        ldiu      2,r2                  ; |366| 
        ldiu      64,ar2                ; |366| 
        callu     r0                    ; far call to _Write_I2C_5	; |366| 
                                        ; |366| Far Call Occurs
	.line	26
;----------------------------------------------------------------------
; 368 | LCD[1] |= LCDE;                                 /* set enable */       
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |368| 
        ldiu      4,r0                  ; |368| 
        or        *+ar0(1),r0           ; |368| 
        sti       r0,*+ar0(1)           ; |368| 
	.line	28
;----------------------------------------------------------------------
; 370 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |370| 
        ldp       @CL5,DP
        ldiu      2,r2                  ; |370| 
        ldiu      @CL5,r3               ; |370| 
        ldiu      64,ar2                ; |370| 
        callu     r0                    ; far call to _Write_I2C_5	; |370| 
                                        ; |370| Far Call Occurs
	.line	30
;----------------------------------------------------------------------
; 372 | LCD[1] &= (0xFF^LCDE);                  /* clear enable */             
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |372| 
        ldiu      251,r0                ; |372| 
        and       *+ar0(1),r0           ; |372| 
        sti       r0,*+ar0(1)           ; |372| 
	.line	32
;----------------------------------------------------------------------
; 374 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      64,ar2                ; |374| 
        ldiu      @CL6,r0               ; |374| 
        ldp       @CL5,DP
        ldiu      2,r2                  ; |374| 
        ldiu      @CL5,r3               ; |374| 
        callu     r0                    ; far call to _Write_I2C_5	; |374| 
                                        ; |374| Far Call Occurs
	.line	34
;----------------------------------------------------------------------
; 376 | LCD[1] &= (0xFF^LCDRS);                 /* clear addr */               
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |376| 
        ldiu      254,r0                ; |376| 
        and       *+ar0(1),r0           ; |376| 
        sti       r0,*+ar0(1)           ; |376| 
	.line	36
;----------------------------------------------------------------------
; 378 | Write_I2C_5(LCD_ADDR, 2, LCD);                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |378| 
        ldp       @CL5,DP
        ldiu      2,r2                  ; |378| 
        ldiu      @CL5,r3               ; |378| 
        ldiu      64,ar2                ; |378| 
        callu     r0                    ; far call to _Write_I2C_5	; |378| 
                                        ; |378| Far Call Occurs
L48:        
	.line	37
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	379,000000000h,1


	.sect	 "internal_RAM"

	.global	_LCD_STR
	.sym	_LCD_STR,_LCD_STR,32,2,0
	.func	394
;******************************************************************************
;* FUNCTION NAME: _LCD_STR                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,ir0,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 0 SOE = 8 words          *
;******************************************************************************
_LCD_STR:
;* ar2   assigned to _s
	.sym	_s,10,18,17,32
;* r2    assigned to _line
	.sym	_line,2,4,17,32
	.sym	_s,1,18,1,32
	.sym	_line,2,4,1,32
	.sym	_addr,3,4,1,32
	.sym	_i,4,4,1,32
	.sym	_j,5,4,1,32
	.sym	_c,6,2,1,32
	.line	1
;----------------------------------------------------------------------
; 394 | void LCD_STR(char* s, int line)                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 396 | int addr;       /* line address
;     |  */                                                                    
; 397 | int i,j;        /* character counter; line counter      */             
; 398 | char c;         /* current character                            */     
; 400 | switch(line)                                                           
; 402 |         case 0:                                                        
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |395| 
        sti       ar2,*+fp(1)           ; |395| 
        bu        L56                   ; |393| 
;*      Branch Occurs to L56            ; |393| 
L51:        
	.line	11
;----------------------------------------------------------------------
; 404 | addr = 0x80;                                                           
;----------------------------------------------------------------------
        ldiu      128,r0                ; |404| 
        sti       r0,*+fp(3)            ; |404| 
	.line	12
;----------------------------------------------------------------------
; 405 | break;                                                                 
; 407 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L61                   ; |405| 
;*      Branch Occurs to L61            ; |405| 
L52:        
	.line	16
;----------------------------------------------------------------------
; 409 | addr = 0xC0;                                                           
;----------------------------------------------------------------------
        ldiu      192,r0                ; |409| 
        sti       r0,*+fp(3)            ; |409| 
	.line	17
;----------------------------------------------------------------------
; 410 | break;                                                                 
; 412 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L61                   ; |410| 
;*      Branch Occurs to L61            ; |410| 
L53:        
	.line	21
;----------------------------------------------------------------------
; 414 | addr = 0x94;                                                           
;----------------------------------------------------------------------
        ldiu      148,r0                ; |414| 
        sti       r0,*+fp(3)            ; |414| 
	.line	22
;----------------------------------------------------------------------
; 415 | break;                                                                 
; 417 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L61                   ; |415| 
;*      Branch Occurs to L61            ; |415| 
L54:        
	.line	26
;----------------------------------------------------------------------
; 419 | addr = 0xD4;                                                           
;----------------------------------------------------------------------
        ldiu      212,r0                ; |419| 
        sti       r0,*+fp(3)            ; |419| 
	.line	27
;----------------------------------------------------------------------
; 420 | break;                                                                 
; 422 | default:                                                               
;----------------------------------------------------------------------
        bu        L61                   ; |420| 
;*      Branch Occurs to L61            ; |420| 
	.line	30
;----------------------------------------------------------------------
; 423 | return;                                                                
;----------------------------------------------------------------------
L56:        
	.line	7
        ldiu      *+fp(2),r0            ; |400| 
        cmpi      0,r0                  ; |400| 
        beq       L51                   ; |400| 
;*      Branch Occurs to L51            ; |400| 
        cmpi      1,r0                  ; |400| 
        beq       L52                   ; |400| 
;*      Branch Occurs to L52            ; |400| 
        cmpi      2,r0                  ; |400| 
        beq       L53                   ; |400| 
;*      Branch Occurs to L53            ; |400| 
        cmpi      3,r0                  ; |400| 
        beq       L54                   ; |400| 
;*      Branch Occurs to L54            ; |400| 
        bu        L81                   ; |400| 
;*      Branch Occurs to L81            ; |400| 
L61:        
	.line	33
;----------------------------------------------------------------------
; 426 | LCD_CMD(addr);                                                         
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      *+fp(3),ar2           ; |426| 
        ldiu      @CL10,r0              ; |426| 
        callu     r0                    ; far call to _LCD_CMD	; |426| 
                                        ; |426| Far Call Occurs
	.line	35
;----------------------------------------------------------------------
; 428 | for (i=0;i<20;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |428| 
        sti       r0,*+fp(4)            ; |428| 
        cmpi      20,r0                 ; |428| 
        bge       L81                   ; |428| 
;*      Branch Occurs to L81            ; |428| 
L62:        
	.line	38
;----------------------------------------------------------------------
; 431 | j = 10*line+(i/2);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(4),r2            ; |431| 
        ldiu      *+fp(2),r1            ; |431| 
        ldiu      r2,r0                 ; |431| 
        ldiu      r1,r3                 ; |431| 
        lsh       -31,r0                ; |431| 
        ash       3,r3                  ; |431| 
        addi3     r0,r2,r0              ; |431| 
        ash       1,r1                  ; |431| 
        ash       -1,r0                 ; |431| 
        addi3     r1,r3,r1              ; |431| 
        addi3     r0,r1,r0              ; |431| 
        sti       r0,*+fp(5)            ; |431| 
	.line	39
;----------------------------------------------------------------------
; 432 | c = s[i] & 0xFF;                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |432| 
        ldiu      r2,ar0                ; |432| 
        ldiu      255,r0                ; |432| 
        and3      r0,*+ar0(ir0),r0      ; |432| 
        sti       r0,*+fp(6)            ; |432| 
	.line	41
;----------------------------------------------------------------------
; 434 | if (c== 0xDF)                                                          
;----------------------------------------------------------------------
        cmpi      223,r0                ; |434| 
        bne       L64                   ; |434| 
;*      Branch Occurs to L64            ; |434| 
	.line	42
;----------------------------------------------------------------------
; 435 | c = 0xB0;       /* translate degree symbol */                          
;----------------------------------------------------------------------
        ldiu      176,r0                ; |435| 
        sti       r0,*+fp(6)            ; |435| 
L64:        
	.line	44
;----------------------------------------------------------------------
; 437 | if (MSVE.CURSOR_ENABLED && (line==MSVE.CURSOR_ROW) && (i==MSVE.CURSOR_C
;     | OL) && ((LCD_CNT%12)>2))                                               
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |437| 
        ldiu      *ar0,r0               ; |437| 
        cmpi      0,r0                  ; |437| 
        beq       L69                   ; |437| 
;*      Branch Occurs to L69            ; |437| 
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |437| 
        ldiu      *+fp(2),r0            ; |437| 
        cmpi3     *ar0,r0               ; |437| 
        bne       L69                   ; |437| 
;*      Branch Occurs to L69            ; |437| 
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |437| 
        ldiu      *+fp(4),r0            ; |437| 
        cmpi3     *ar0,r0               ; |437| 
        bne       L69                   ; |437| 
;*      Branch Occurs to L69            ; |437| 
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |437| 
        ldiu      12,r1                 ; |437| 
        ldiu      *ar0,r0               ; |437| 
        call      MOD_U30               ; |437| 
                                        ; |437| Call Occurs
        cmpi      2,r0                  ; |437| 
        bls       L69                   ; |437| 
;*      Branch Occurs to L69            ; |437| 
	.line	45
;----------------------------------------------------------------------
; 438 | c = '_';                                                               
;----------------------------------------------------------------------
        ldiu      95,r0                 ; |438| 
        sti       r0,*+fp(6)            ; |438| 
L69:        
	.line	47
;----------------------------------------------------------------------
; 440 | if (i%2)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(4),r1            ; |440| 
        ldp       @CL15,DP
        ldiu      r1,r0                 ; |440| 
        lsh       @CL15,r0              ; |440| 
        addi3     r0,r1,r0              ; |440| 
        andn      1,r0                  ; |440| 
        subri     r1,r0                 ; |440| 
        cmpi      0,r0                  ; |440| 
        beq       L71                   ; |440| 
;*      Branch Occurs to L71            ; |440| 
	.line	49
;----------------------------------------------------------------------
; 442 | MB_LCD_DISPLAY[j] &= 0xFF00;                                           
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      *+fp(5),ar0           ; |442| 
        ldiu      @CL16,ir0             ; |442| 
        ldiu      *+ar0(ir0),r0         ; |442| 
        and       65280,r0              ; |442| 
        sti       r0,*+ar0(ir0)         ; |442| 
	.line	50
;----------------------------------------------------------------------
; 443 | MB_LCD_DISPLAY[j] |= (c);                                              
; 445 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL16,ir0             ; |443| 
        ldiu      *+fp(5),ar0           ; |443| 
        ldiu      *+fp(6),r0            ; |443| 
        or3       r0,*+ar0(ir0),r0      ; |443| 
        sti       r0,*+ar0(ir0)         ; |443| 
        bu        L72                   ; |393| 
;*      Branch Occurs to L72            ; |393| 
L71:        
	.line	54
;----------------------------------------------------------------------
; 447 | MB_LCD_DISPLAY[j] &= 0x00FF;                                           
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      *+fp(5),ar0           ; |447| 
        ldiu      @CL16,ir0             ; |447| 
        ldiu      255,r0                ; |447| 
        and3      r0,*+ar0(ir0),r0      ; |447| 
        sti       r0,*+ar0(ir0)         ; |447| 
	.line	55
;----------------------------------------------------------------------
; 448 | MB_LCD_DISPLAY[j] |= (c)<<8;                                           
;----------------------------------------------------------------------
        ldiu      @CL16,ir0             ; |448| 
        ldiu      *+fp(6),r0            ; |448| 
        ldiu      *+fp(5),ar0           ; |448| 
        ash       8,r0                  ; |448| 
        or3       r0,*+ar0(ir0),r0      ; |448| 
        sti       r0,*+ar0(ir0)         ; |448| 
L72:        
	.line	59
;----------------------------------------------------------------------
; 452 | if (MSVE.CURSOR_ENABLED && (line==MSVE.CURSOR_ROW) && (i==MSVE.CURSOR_C
;     | OL))                                                                   
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |452| 
        ldiu      *ar0,r0               ; |452| 
        cmpi      0,r0                  ; |452| 
        beq       L79                   ; |452| 
;*      Branch Occurs to L79            ; |452| 
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |452| 
        ldiu      *+fp(2),r0            ; |452| 
        cmpi3     *ar0,r0               ; |452| 
        bne       L79                   ; |452| 
;*      Branch Occurs to L79            ; |452| 
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |452| 
        ldiu      *+fp(4),r0            ; |452| 
        cmpi3     *ar0,r0               ; |452| 
        bne       L79                   ; |452| 
;*      Branch Occurs to L79            ; |452| 
	.line	61
;----------------------------------------------------------------------
; 454 | if ((LCD_CNT%12)>2)                                                    
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |454| 
        ldiu      12,r1                 ; |454| 
        ldiu      *ar0,r0               ; |454| 
        call      MOD_U30               ; |454| 
                                        ; |454| Call Occurs
        cmpi      2,r0                  ; |454| 
        bls       L77                   ; |454| 
;*      Branch Occurs to L77            ; |454| 
	.line	62
;----------------------------------------------------------------------
; 455 | LCD_CHAR(0xFF);                                                        
; 456 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      255,ar2               ; |455| 
        ldiu      @CL17,r0              ; |455| 
        callu     r0                    ; far call to _LCD_CHAR	; |455| 
                                        ; |455| Far Call Occurs
        bu        L78                   ; |393| 
;*      Branch Occurs to L78            ; |393| 
L77:        
	.line	64
;----------------------------------------------------------------------
; 457 | LCD_CHAR(s[i]);                                                        
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |457| 
        ldiu      *+fp(4),ar0           ; |457| 
        ldiu      @CL17,r0              ; |457| 
        ldiu      *+ar0(ir0),ar2        ; |457| 
        callu     r0                    ; far call to _LCD_CHAR	; |457| 
                                        ; |457| Far Call Occurs
L78:        
	.line	66
;----------------------------------------------------------------------
; 459 | LCD_CNT++;                                                             
; 461 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |459| 
        ldiu      1,r0                  ; |459| 
        addi3     r0,*ar0,r0            ; |459| Unsigned
        sti       r0,*ar0               ; |459| 
        bu        L80                   ; |393| 
;*      Branch Occurs to L80            ; |393| 
L79:        
	.line	69
;----------------------------------------------------------------------
; 462 | LCD_CHAR(s[i]);                                                        
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |462| 
        ldiu      *+fp(4),ar0           ; |462| 
        ldiu      @CL17,r0              ; |462| 
        ldiu      *+ar0(ir0),ar2        ; |462| 
        callu     r0                    ; far call to _LCD_CHAR	; |462| 
                                        ; |462| Far Call Occurs
L80:        
	.line	35
        ldiu      1,r0                  ; |428| 
        addi      *+fp(4),r0            ; |428| 
        sti       r0,*+fp(4)            ; |428| 
        cmpi      20,r0                 ; |428| 
        blt       L62                   ; |428| 
;*      Branch Occurs to L62            ; |428| 
L81:        
	.line	71
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      8,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	464,000000000h,6


	.sect	 "internal_RAM"

	.global	_LCD_PAGE
	.sym	_LCD_PAGE,_LCD_PAGE,32,2,0
	.func	478
;******************************************************************************
;* FUNCTION NAME: _LCD_PAGE                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ar2,fp,ir0,ir1,st                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 87 Auto + 0 SOE = 89 words        *
;******************************************************************************
_LCD_PAGE:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_tmr,3,62,1,96,,3
	.sym	_t,6,6,1,32
	.sym	_LCD_tmp,7,242,1,2560,,4,20
	.sym	_z,87,14,1,32
	.line	1
;----------------------------------------------------------------------
; 478 | void LCD_PAGE(void)                                                    
; 480 | int i,j;                                /* character counter; line coun
;     | ter      */                                                            
; 481 | unsigned int tmr[3];    /* not used
;     |          */                                                            
; 482 | float t;                                /* not used
;     |                          */                                            
; 483 | char LCD_tmp[4][20];    /* formatted LCD line
;     |  */                                                                    
; 484 | BOOL z;                                 /* ignore special character?
;     |          */                                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      87,sp
	.line	9
;----------------------------------------------------------------------
; 486 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	11
;----------------------------------------------------------------------
; 488 | for (j=0;j<4;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |488| 
        sti       r0,*+fp(2)            ; |488| 
        cmpi      4,r0                  ; |488| 
        bge       L91                   ; |488| 
;*      Branch Occurs to L91            ; |488| 
L84:        
	.line	13
;----------------------------------------------------------------------
; 490 | z = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |490| 
        sti       r0,*+fp(87)           ; |490| 
	.line	15
;----------------------------------------------------------------------
; 492 | for (i=0;i<20;i++)                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(1)            ; |492| 
        cmpi      20,r0                 ; |492| 
        bge       L90                   ; |492| 
;*      Branch Occurs to L90            ; |492| 
L85:        
	.line	17
;----------------------------------------------------------------------
; 494 | LCD_DISPLAY[j][i] &= 0xFF;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |494| 
        ldp       @CL18,DP
        mpyi      101,ir0               ; |494| 
        ldiu      *+fp(1),ar0           ; |494| 
        addi      @CL18,ir0             ; |494| Unsigned
        ldiu      255,r0                ; |494| 
        and3      r0,*+ar0(ir0),r0      ; |494| 
        sti       r0,*+ar0(ir0)         ; |494| 
	.line	19
;----------------------------------------------------------------------
; 496 | if (z)                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(87),r0           ; |496| 
        cmpi      0,r0                  ; |496| 
        beq       L87                   ; |496| 
;*      Branch Occurs to L87            ; |496| 
	.line	20
;----------------------------------------------------------------------
; 497 | LCD_DISPLAY[j][i] = 0x20;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |497| 
        ldp       @CL18,DP
        mpyi      101,ir0               ; |497| 
        ldiu      @CL18,ar0             ; |497| 
        addi      *+fp(1),ir0           ; |497| Unsigned
        ldiu      32,r0                 ; |497| 
        sti       r0,*+ar0(ir0)         ; |497| 
        bu        L89                   ; |477| 
;*      Branch Occurs to L89            ; |477| 
L87:        
	.line	21
;----------------------------------------------------------------------
; 498 | else if (LCD_DISPLAY[j][i]==0x00)                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |498| 
        ldp       @CL18,DP
        mpyi      101,ir0               ; |498| 
        ldiu      @CL18,ar0             ; |498| 
        addi      *+fp(1),ir0           ; |498| Unsigned
        ldiu      *+ar0(ir0),r0         ; |498| 
        cmpi      0,r0                  ; |498| 
        bne       L89                   ; |498| 
;*      Branch Occurs to L89            ; |498| 
	.line	23
;----------------------------------------------------------------------
; 500 | LCD_DISPLAY[j][i]       = 0x20;                                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |500| 
        ldp       @CL18,DP
        mpyi      101,ir0               ; |500| 
        ldiu      @CL18,ar0             ; |500| 
        addi      *+fp(1),ir0           ; |500| Unsigned
        ldiu      32,r0                 ; |500| 
        sti       r0,*+ar0(ir0)         ; |500| 
	.line	24
;----------------------------------------------------------------------
; 501 | z                                       = TRUE;                        
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |501| 
        sti       r0,*+fp(87)           ; |501| 
L89:        
	.line	27
;----------------------------------------------------------------------
; 504 | LCD_tmp[j][i] = LCD_DISPLAY[j][i];                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir1           ; |504| 
        ldp       @CL18,DP
        ldiu      ir1,ir0               ; |504| 
        ldiu      fp,ar0                ; |504| 
        mpyi      101,ir1               ; |504| 
        mpyi      20,ir0                ; |504| 
        ldiu      @CL18,ar1             ; |504| 
        addi      7,ar0                 ; |504| 
        addi      *+fp(1),ir1           ; |504| Unsigned
        addi      *+fp(1),ir0           ; |504| Unsigned
        ldiu      *+ar1(ir1),r0         ; |504| 
        sti       r0,*+ar0(ir0)         ; |504| 
	.line	15
        ldiu      1,r0                  ; |492| 
        addi      *+fp(1),r0            ; |492| 
        sti       r0,*+fp(1)            ; |492| 
        cmpi      20,r0                 ; |492| 
        blt       L85                   ; |492| 
;*      Branch Occurs to L85            ; |492| 
L90:        
	.line	30
;----------------------------------------------------------------------
; 507 | LCD_DISPLAY[j][i] = 0x00;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |507| 
        ldp       @CL18,DP
        mpyi      101,ir0               ; |507| 
        ldiu      @CL18,ar0             ; |507| 
        addi      *+fp(1),ir0           ; |507| Unsigned
        ldiu      0,r0                  ; |507| 
        sti       r0,*+ar0(ir0)         ; |507| 
	.line	11
        ldiu      1,r0                  ; |488| 
        addi      *+fp(2),r0            ; |488| 
        sti       r0,*+fp(2)            ; |488| 
        cmpi      4,r0                  ; |488| 
        blt       L84                   ; |488| 
;*      Branch Occurs to L84            ; |488| 
L91:        
	.line	33
;----------------------------------------------------------------------
; 510 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	35
;----------------------------------------------------------------------
; 512 | for (i=0;i<4;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |512| 
        sti       r0,*+fp(1)            ; |512| 
        cmpi      4,r0                  ; |512| 
        bge       L93                   ; |512| 
;*      Branch Occurs to L93            ; |512| 
L92:        
	.line	36
;----------------------------------------------------------------------
; 513 | LCD_STR(LCD_tmp[i],i);                                                 
;----------------------------------------------------------------------
        ldiu      fp,r0                 ; |513| 
        ldp       @CL19,DP

        ldiu      *+fp(1),r2            ; |513| 
||      ldiu      *+fp(1),r1            ; |513| 

        mpyi      20,r1                 ; |513| 
        addi      7,r0                  ; |513| 
        addi3     r0,r1,ar2             ; |513| Unsigned
        ldiu      @CL19,r0              ; |513| 
        callu     r0                    ; far call to _LCD_STR	; |513| 
                                        ; |513| Far Call Occurs
	.line	35
        ldiu      1,r0                  ; |512| 
        addi      *+fp(1),r0            ; |512| 
        sti       r0,*+fp(1)            ; |512| 
        cmpi      4,r0                  ; |512| 
        blt       L92                   ; |512| 
;*      Branch Occurs to L92            ; |512| 
L93:        
	.line	37
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      89,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	514,000000000h,87


	.sect	 ".text"

	.global	_LCD_INIT
	.sym	_LCD_INIT,_LCD_INIT,46,2,0
	.func	529
;******************************************************************************
;* FUNCTION NAME: _LCD_INIT                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_LCD_INIT:
	.sym	_r,1,14,1,32
	.sym	_i,2,4,1,32
	.sym	_j,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 529 | BOOL LCD_INIT(void)                                                    
; 531 | BOOL r; /* return true or false */                                     
; 532 | int i;  /* not used */                                                 
; 533 | int j;  /* not used */                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	7
;----------------------------------------------------------------------
; 535 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |535| 
        ldiu      *ar0,r0               ; |535| 
        cmpi      0,r0                  ; |535| 
        beq       L97                   ; |535| 
;*      Branch Occurs to L97            ; |535| 
	.line	8
;----------------------------------------------------------------------
; 536 | LCD_PRESENT = FALSE;                                                   
; 537 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |536| 
        ldiu      0,r0                  ; |536| 
        sti       r0,*ar0               ; |536| 
        bu        L101                  ; |528| 
;*      Branch Occurs to L101           ; |528| 
L97:        
	.line	11
;----------------------------------------------------------------------
; 539 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	13
;----------------------------------------------------------------------
; 541 | LCD_DIPSW       = 0xFF;                                                
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |541| 
        ldiu      255,r0                ; |541| 
        sti       r0,*ar0               ; |541| 
	.line	14
;----------------------------------------------------------------------
; 542 | LCD[0]          = 0xFF;                                                
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |542| 
        sti       r0,*ar0               ; |542| 
	.line	15
;----------------------------------------------------------------------
; 543 | LCD[1]          = 0xFF;                                                
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |543| 
        sti       r0,*ar0               ; |543| 
	.line	16
;----------------------------------------------------------------------
; 544 | LCD[1]     |= LCD_READ_MASK;                                           
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |544| 
        ldiu      248,r0                ; |544| 
        or        *+ar0(1),r0           ; |544| 
        sti       r0,*+ar0(1)           ; |544| 
	.line	17
;----------------------------------------------------------------------
; 545 | r                       = Write_I2C_5(LCD_ADDR, 2, LCD);               
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      64,ar2                ; |545| 
        ldiu      @CL6,r0               ; |545| 
        ldp       @CL5,DP
        ldiu      2,r2                  ; |545| 
        ldiu      @CL5,r3               ; |545| 
        callu     r0                    ; far call to _Write_I2C_5	; |545| 
                                        ; |545| Far Call Occurs
        sti       r0,*+fp(1)            ; |545| 
	.line	18
;----------------------------------------------------------------------
; 546 | r                       = Read_I2C_5(LCD_ADDR, 2, LCD);                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,r0               ; |546| 
        ldp       @CL5,DP
        ldiu      64,ar2                ; |546| 
        ldiu      2,r2                  ; |546| 
        ldiu      @CL5,r3               ; |546| 
        callu     r0                    ; far call to _Read_I2C_5	; |546| 
                                        ; |546| Far Call Occurs
        sti       r0,*+fp(1)            ; |546| 
	.line	19
;----------------------------------------------------------------------
; 547 | LCD_DIPSW       = LCD[1]&LCD_READ_MASK;                                
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar1              ; |547| 
        ldp       @CL8,DP
        ldiu      248,r0                ; |547| 
        ldiu      @CL8,ar0              ; |547| 
        and3      r0,*ar1,r0            ; |547| 
        sti       r0,*ar0               ; |547| 
	.line	21
;----------------------------------------------------------------------
; 549 | if (!r)                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |549| 
        cmpi      0,r0                  ; |549| 
        bne       L99                   ; |549| 
;*      Branch Occurs to L99            ; |549| 
	.line	22
;----------------------------------------------------------------------
; 550 | LCD_PRESENT = FALSE;                                                   
; 551 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |550| 
        ldiu      0,r0                  ; |550| 
        sti       r0,*ar0               ; |550| 
        bu        L100                  ; |528| 
;*      Branch Occurs to L100           ; |528| 
L99:        
	.line	25
;----------------------------------------------------------------------
; 553 | LCD_PRESENT = TRUE;                                                    
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |553| 
        ldiu      1,r0                  ; |553| 
        sti       r0,*ar0               ; |553| 
	.line	27
;----------------------------------------------------------------------
; 555 | LCD_CMD(0x38);          /* set 8 bit, 2 line     */                    
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      56,ar2                ; |555| 
        ldiu      @CL10,r0              ; |555| 
        callu     r0                    ; far call to _LCD_CMD	; |555| 
                                        ; |555| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 556 | LCD_CMD(0x30);          /* set 8 bit             */                    
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r0              ; |556| 
        ldiu      48,ar2                ; |556| 
        callu     r0                    ; far call to _LCD_CMD	; |556| 
                                        ; |556| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 557 | LCD_CMD(0x38);          /* set 8 bit, 2 line     */                    
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r0              ; |557| 
        ldiu      56,ar2                ; |557| 
        callu     r0                    ; far call to _LCD_CMD	; |557| 
                                        ; |557| Far Call Occurs
	.line	30
;----------------------------------------------------------------------
; 558 | LCD_CMD(0x0C);          /* display ON, no cursor */                    
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r0              ; |558| 
        ldiu      12,ar2                ; |558| 
        callu     r0                    ; far call to _LCD_CMD	; |558| 
                                        ; |558| Far Call Occurs
	.line	31
;----------------------------------------------------------------------
; 559 | LCD_CMD(0x01);          /* clear display         */                    
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r0              ; |559| 
        ldiu      1,ar2                 ; |559| 
        callu     r0                    ; far call to _LCD_CMD	; |559| 
                                        ; |559| Far Call Occurs
	.line	32
;----------------------------------------------------------------------
; 560 | LCD_CMD(0x06);          /* clear addr inc        */                    
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      6,ar2                 ; |560| 
        ldiu      @CL10,r0              ; |560| 
        callu     r0                    ; far call to _LCD_CMD	; |560| 
                                        ; |560| Far Call Occurs
	.line	33
;----------------------------------------------------------------------
; 561 | LCD_CMD(0x80);          /* set addr to zero      */                    
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r0              ; |561| 
        ldiu      128,ar2               ; |561| 
        callu     r0                    ; far call to _LCD_CMD	; |561| 
                                        ; |561| Far Call Occurs
L100:        
	.line	36
;----------------------------------------------------------------------
; 564 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L101:        
	.line	39
;----------------------------------------------------------------------
; 567 | return LCD_PRESENT;                                                    
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |567| 
        ldiu      *ar0,r0               ; |567| 
	.line	40
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |568| 
        ldiu      *fp,fp                ; |568| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |568| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	568,000000000h,3


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

	.sect	".cinit"
	.field  	20,32
	.field  	CL1+0,32
	.field  	9437187,32
	.field  	_I2C_TX_BYTE_5,32
	.field  	_I2C_RX_BYTE_5,32
	.field  	_LCD_PRESENT,32
	.field  	_LCD,32
	.field  	_Write_I2C_5,32
	.field  	_Read_I2C_5,32
	.field  	_LCD_DIPSW,32
	.field  	_LCD+1,32
	.field  	_LCD_CMD,32
	.field  	_MSVE+12,32
	.field  	_MSVE+13,32
	.field  	_MSVE+14,32
	.field  	_LCD_CNT,32
	.field  	-31,32
	.field  	_MB_LCD_DISPLAY,32
	.field  	_LCD_CHAR,32
	.field  	_LCD_DISPLAY,32
	.field  	_LCD_STR,32
	.field  	_SA,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_LCD_DIPSW

	.global	_LCD

	.global	_LCD_DISPLAY

	.global	_MB_LCD_DISPLAY

	.global	_LCD_PRESENT

	.global	_LCD_CNT

	.global	_MSVE

	.global	_SA
	.global	MOD_U30
