;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu May 16 08:36:39 2019                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_2R0.AAA 
	.file	"api.c"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\GLBLS.H"
	.file	"G:\workspace\win\eea\INCLUDE\stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"G:\workspace\win\eea\INCLUDE\format.h"
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
	.file	"G:\workspace\win\eea\INCLUDE\string.h"
	.sym	_size_t,0,14,13,32
	.file	"G:\workspace\win\eea\INCLUDE\stdio.h"
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
	.file	"G:\workspace\win\eea\INCLUDE\stdlib.h"
	.sym	_wchar_t,0,2,13,32
	.stag	__div_t,64
	.member	_quot,0,4,8,32
	.member	_rem,32,4,8,32
	.eos
	.sym	_div_t,0,8,13,64,__div_t
	.sym	_ldiv_t,0,8,13,64,__div_t
	.file	"G:\workspace\win\eea\INCLUDE\math.h"
	.file	"G:\workspace\win\eea\INCLUDE\time.h"
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
	.file	"G:\workspace\win\eea\INCLUDE\ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"G:\workspace\win\eea\INCLUDE\LIST.H"
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
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\VARIABLE.H"
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
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\BUFFER.H"
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
	.file	"G:\workspace\win\eea\INCLUDE\UNITS.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\TIMER.H"
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
	.file	"G:\workspace\win\eea\INCLUDE\I2C.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\ERRORS.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\SERIAL.H"
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
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\ADC.H"
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
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\DAC.H"
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
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\EXECUTE.H"
	.stag	.fake17,128
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.eos
	.sym	_EPKT,0,8,13,128,.fake17
	.file	"G:\workspace\win\eea\INCLUDE\FLASH.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\LOG.H"
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
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\DEMO.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\SELFTEST.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\MENU.H"
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
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\FLOAT1.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\GLBLS.H"
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
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\HART.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\MODBUSRTU.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\MISC.H"
	.file	"G:\workspace\win\eea\APP\SOURCE\INCLUDE\API.H"
	.file	"api.c"
	.sect	 ".text"

	.global	_API_VCF
	.sym	_API_VCF,_API_VCF,32,2,0
	.func	42
;******************************************************************************
;* FUNCTION NAME: _API_VCF                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,f6,ar0,ar1,ar2,ar4,ir0,ir1,st, *
;*                        rs,re,rc                                            *
;*   Regs Saved         : f6,ar4                                              *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 2 SOE = 12 words         *
;******************************************************************************
_API_VCF:
;* ar2   assigned to _f
	.sym	_f,10,24,17,32,.fake31
;* r2    assigned to _VCFw
	.sym	_VCFw,2,22,17,32
;* r3    assigned to _VCFo
	.sym	_VCFo,3,22,17,32
	.sym	_f,1,24,1,32,.fake31
	.sym	_VCFw,2,22,1,32
	.sym	_VCFo,3,22,1,32
	.sym	_t,4,6,1,32
	.sym	_p,5,6,1,32
	.sym	_B,6,6,1,32
	.sym	_pST,7,7,1,32
	.sym	_vcf,8,7,1,32
	.line	1
;----------------------------------------------------------------------
;  42 | void API_VCF(FLOW_COMP* f, float* VCFw, float* VCFo)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
        pushf     f6
        push      ar4
	.line	2
;----------------------------------------------------------------------
;  44 | float t;                                                               
;  45 | float p;                                                               
;  46 | float B;                                                               
;  47 | double pST, vcf;                                                       
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |43| 
        sti       r2,*+fp(2)            ; |43| 
        sti       ar2,*+fp(1)           ; |43| 
	.line	8
;----------------------------------------------------------------------
;  49 | VCFw[0]  = f->Meter_Factor.calc_val;                                   
;----------------------------------------------------------------------
        ldiu      409,ar0               ; |49| 
        addi      *+fp(1),ar0           ; |49| Unsigned
        ldfu      *ar0,f0               ; |49| 40b float hi half
        ldiu      r2,ar1                ; |49| 
        ldiu      *+ar0,r0              ; |49| 40b float lo half
        rnd       f0,f0                 ; |49| Demote to low precision
        stf       f0,*ar1               ; |49| 
	.line	9
;----------------------------------------------------------------------
;  50 | VCFo[0]  = f->Meter_Factor.calc_val;                                   
;----------------------------------------------------------------------
        ldiu      409,ar0               ; |50| 
        addi      *+fp(1),ar0           ; |50| Unsigned
        ldfu      *ar0,f0               ; |50| 40b float hi half
        ldiu      *+ar0,r0              ; |50| 40b float lo half
        ldiu      *+fp(3),ar1           ; |50| 
        rnd       f0,f0                 ; |50| Demote to low precision
        stf       f0,*ar1               ; |50| 
	.line	10
;----------------------------------------------------------------------
;  51 | VCFo[0] *= f->Shrinkage.calc_val;                                      
;----------------------------------------------------------------------
        ldiu      453,ar0               ; |51| 
        addi      *+fp(1),ar0           ; |51| Unsigned
        ldiu      *+fp(3),ar1           ; |51| 
        ldiu      255,r2                ; |51| 

        ldfu      *ar0,f1               ; |51| 
||      ldfu      *ar1,f0               ; |51| 

        andn      r2,f0                 ; |51| Bit mask for F32/F40 conversion
        ldiu      *+ar0,r1              ; |51| 40b float lo half
        call      MPY_LD                ; |51| 
                                        ; |51| Call Occurs
        rnd       f0,f0                 ; |51| Demote to low precision
        stf       f0,*ar1               ; |51| 
	.line	12
;----------------------------------------------------------------------
;  53 | if((f->T.unit == u_temp_F) || (f->T.unit == u_temp_R))                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |53| 
        ldiu      *+ar0(57),r0          ; |53| 
        cmpi      33,r0                 ; |53| 
        beq       L3                    ; |53| 
;*      Branch Occurs to L3             ; |53| 
        ldiu      *+ar0(57),r0          ; |53| 
        cmpi      34,r0                 ; |53| 
        bne       L19                   ; |53| 
;*      Branch Occurs to L19            ; |53| 
L3:        
	.line	14
;----------------------------------------------------------------------
;  55 | t = Convert(f->T.class, f->T.calc_unit, u_temp_F, f->T.calc_val, 0, f->
;     | T.aux);                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |55| 
        ldp       @CL1,DP
        ldiu      ar1,ar0               ; |55| 
        ldiu      33,rc                 ; |55| 
        ldiu      ar1,ar4               ; |55| 
        ldiu      ar1,ar2               ; |55| 
        ldfu      *+ar0(53),f2          ; |55| 40b float hi half
        ldiu      @CL1,r0               ; |55| 
        ldiu      *+ar1(50),re          ; |55| 
        ldiu      *+ar4(58),r3          ; |55| 
        ldiu      *+ar2(59),ar2         ; |55| 
        ldiu      *+ar0(54),r2          ; |55| 40b float lo half
        ldiu      0,rs                  ; |55| 
        callu     r0                    ; far call to _Convert	; |55| 
                                        ; |55| Far Call Occurs
        rnd       f0,f0                 ; |55| Demote to low precision
        stf       f0,*+fp(4)            ; |55| 
	.line	16
;----------------------------------------------------------------------
;  57 | if ((f->density_oil.val>0.0) && (f->density_oilST.val>0.0))            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |57| 
        ldfu      *+ar0(222),f0         ; |57| 
        cmpf      0.0000000000e+00,f0   ; |57| 
        ble       L6                    ; |57| 
;*      Branch Occurs to L6             ; |57| 
        ldfu      *+ar0(178),f0         ; |57| 
        cmpf      0.0000000000e+00,f0   ; |57| 
        ble       L6                    ; |57| 
;*      Branch Occurs to L6             ; |57| 
	.line	17
;----------------------------------------------------------------------
;  58 | VCFo[0] *= (API_to_kgm3(f->density_oil.val)/API_to_kgm3(f->density_oilS
;     | T.val));                                                               
;  59 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(3),ar4           ; |58| 
        ldfu      *+ar0(222),f2         ; |58| 
        ldiu      @CL2,r0               ; |58| 
        callu     r0                    ; far call to _API_to_kgm3	; |58| 
                                        ; |58| Far Call Occurs
        ldp       @CL2,DP
        ldiu      *+fp(1),ar0           ; |58| 
        ldiu      @CL2,r1               ; |58| 
        ldfu      f0,f6                 ; |58| 
        ldfu      *+ar0(178),f2         ; |58| 
        callu     r1                    ; far call to _API_to_kgm3	; |58| 
                                        ; |58| Far Call Occurs
        ldfu      f0,f1                 ; |58| 
        ldfu      f6,f0                 ; |58| 
        call      DIV_F30               ; |58| 
                                        ; |58| Call Occurs
        mpyf3     *ar4,f0,f0            ; |58| 
        stf       f0,*ar4               ; |58| 
        bu        L8                    ; |41| 
;*      Branch Occurs to L8             ; |41| 
L6:        
	.line	20
;----------------------------------------------------------------------
;  61 | pST = API_to_kgm3(f->density_oilST.val);                               
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(1),ar0           ; |61| 
        ldiu      @CL2,r0               ; |61| 
        ldfu      *+ar0(178),f2         ; |61| 
        callu     r0                    ; far call to _API_to_kgm3	; |61| 
                                        ; |61| Far Call Occurs
        stf       f0,*+fp(7)            ; |61| 
	.line	21
;----------------------------------------------------------------------
;  62 | vcf = API_PT_ST(f->density_oilST.aux, pST, 1, 1);                      
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      *+fp(1),ar0           ; |62| 
        ldiu      1,rc                  ; |62| 
        ldiu      *+ar0(184),ar2        ; |62| 
        ldiu      @CL3,r0               ; |62| 
        ldfu      *+fp(7),f2            ; |62| 
        ldiu      1,r3                  ; |62| 
        callu     r0                    ; far call to _API_PT_ST	; |62| 
                                        ; |62| Far Call Occurs
        stf       f0,*+fp(8)            ; |62| 
	.line	23
;----------------------------------------------------------------------
;  64 | if (vcf>0.0)                                                           
;----------------------------------------------------------------------
        cmpf      0.0000000000e+00,f0   ; |64| 
        ble       L8                    ; |64| 
;*      Branch Occurs to L8             ; |64| 
	.line	24
;----------------------------------------------------------------------
;  65 | VCFo[0] *= vcf;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |65| 
        mpyf3     *ar0,f0,f0            ; |65| 
        stf       f0,*ar0               ; |65| 
L8:        
	.line	27
;----------------------------------------------------------------------
;  68 | if ((f->density_water.val>0.0) && (f->density_waterST.val>0.0))        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |68| 
        ldiu      310,ar0               ; |68| 
        ldfu      0.0000000000e+00,f0   ; |68| 
        cmpf3     f0,*+ar0(ir0)         ; |68| 
        ble       L11                   ; |68| 
;*      Branch Occurs to L11            ; |68| 
        ldiu      266,ar0               ; |68| 
        ldfu      0.0000000000e+00,f0   ; |68| 
        cmpf3     f0,*+ar0(ir0)         ; |68| 
        ble       L11                   ; |68| 
;*      Branch Occurs to L11            ; |68| 
	.line	28
;----------------------------------------------------------------------
;  69 | VCFw[0] *= (f->density_water.val/f->density_waterST.val);              
;  70 | else                                                                   
;----------------------------------------------------------------------
        ldiu      310,ar0               ; |69| 
        ldiu      266,ar1               ; |69| 
        ldiu      ir0,ir1               ; |69| 
        ldiu      *+fp(2),ar2           ; |69| 

        ldfu      *+ar1(ir1),f1         ; |69| 
||      ldfu      *+ar0(ir0),f0         ; |69| 

        call      DIV_F30               ; |69| 
                                        ; |69| Call Occurs
        mpyf3     *ar2,f0,f0            ; |69| 
        stf       f0,*ar2               ; |69| 
        bu        L35                   ; |41| 
;*      Branch Occurs to L35            ; |41| 
L11:        
	.line	31
;----------------------------------------------------------------------
;  72 | if (t < 60.0)                                                          
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |72| 
        cmpf      6.0000000000e+01,f0   ; |72| 
        bge       L13                   ; |72| 
;*      Branch Occurs to L13            ; |72| 
	.line	32
;----------------------------------------------------------------------
;  73 | t = 60.0;               /* todo: how to handle this? */                
;----------------------------------------------------------------------
        ldfu      6.0000000000e+01,f0   ; |73| 
        stf       f0,*+fp(4)            ; |73| 
        bu        L15                   ; |41| 
;*      Branch Occurs to L15            ; |41| 
L13:        
	.line	33
;----------------------------------------------------------------------
;  74 | else if (t > 280.0)                                                    
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldfu      *+fp(4),f0            ; |74| 
        cmpf      @CL4,f0               ; |74| 
        ble       L15                   ; |74| 
;*      Branch Occurs to L15            ; |74| 
	.line	34
;----------------------------------------------------------------------
;  75 | t = 280.0;              /* todo: how to handle this? */                
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldfu      @CL4,f0               ; |75| 
        stf       f0,*+fp(4)            ; |75| 
L15:        
	.line	37
;----------------------------------------------------------------------
;  78 | t -= 60.0;                                                             
;----------------------------------------------------------------------
        ldfu      6.0000000000e+01,f0   ; |78| 
        subrf     *+fp(4),f0            ; |78| 
        stf       f0,*+fp(4)            ; |78| 
	.line	39
;----------------------------------------------------------------------
;  80 | if (f->density_waterST.val>0.0)                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |80| 
        ldiu      266,ar0               ; |80| 
        ldfu      0.0000000000e+00,f0   ; |80| 
        cmpf3     f0,*+ar0(ir0)         ; |80| 
        ble       L17                   ; |80| 
;*      Branch Occurs to L17            ; |80| 
	.line	40
;----------------------------------------------------------------------
;  81 | B = (f->density_waterST.val - 999.0) / 7.2;                            
;  82 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldfu      @CL5,f0               ; |81| 
        ldp       @CL6,DP
        subf3     f0,*+ar0(ir0),f0      ; |81| 
        mpyf      @CL6,f0               ; |81| 
        stf       f0,*+fp(6)            ; |81| 
        bu        L18                   ; |41| 
;*      Branch Occurs to L18            ; |41| 
L17:        
	.line	42
;----------------------------------------------------------------------
;  83 | B = f->salinity.calc_val;                                              
;----------------------------------------------------------------------
        ldiu      363,ar0               ; |83| 
        addi      *+fp(1),ar0           ; |83| Unsigned
        ldfu      *ar0,f0               ; |83| 40b float hi half
        ldiu      *+ar0,r0              ; |83| 40b float lo half
        rnd       f0,f0                 ; |83| Demote to low precision
        stf       f0,*+fp(6)            ; |83| 
L18:        
	.line	44
;----------------------------------------------------------------------
;  85 | if (B>14.0);    /* todo: how to handle this? */                        
;----------------------------------------------------------------------
        ldfu      *+fp(6),f0            ; |85| 
	.line	46
;----------------------------------------------------------------------
;  87 | VCFw[0] *= 1.0 - (1.0312e-4 + 7.1568e-6*B)*t - (1.2701e-6 - 4.4641e-8*B
;     | )*t*t + (1.2333e-9 - 2.2436e-11*B)*t*t*t;                              
;  91 | else                                                                   
;----------------------------------------------------------------------
        ldfu      f0,f1
        ldp       @CL8,DP
        mpyf      @CL8,f1               ; |87| 
        ldp       @CL12,DP
        ldfu      f0,f2
        mpyf      @CL12,f0              ; |87| 
        ldp       @CL9,DP
        mpyf      @CL9,f2               ; |87| 
        ldp       @CL7,DP
        subrf     @CL7,f1               ; |87| 
        ldp       @CL11,DP
        ldiu      *+fp(2),ar0           ; |87| 
        subrf     @CL11,f0              ; |87| 
        ldp       @CL10,DP
        mpyf      *+fp(4),f1            ; |87| 
        addf      @CL10,f2              ; |87| 
        mpyf      *+fp(4),f0            ; |87| 
        mpyf      *+fp(4),f1            ; |87| 
        mpyf      *+fp(4),f2            ; |87| 
        mpyf      *+fp(4),f0            ; |87| 
        mpyf      *+fp(4),f1            ; |87| 
        subrf     1.0000000000e+00,f2   ; |87| 
        subrf     f2,f0                 ; |87| 
        addf3     f0,f1,f0              ; |87| 
        mpyf3     *ar0,f0,f0            ; |87| 
        stf       f0,*ar0               ; |87| 
        bu        L35                   ; |41| 
;*      Branch Occurs to L35            ; |41| 
L19:        
	.line	52
;----------------------------------------------------------------------
;  93 | t = Convert(f->T.class, f->T.calc_unit, u_temp_C, f->T.calc_val, 0, f->
;     | T.aux);                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |93| 
        ldp       @CL1,DP
        ldiu      ar0,ar4               ; |93| 
        ldiu      32,rc                 ; |93| 
        ldiu      ar0,ar1               ; |93| 
        ldiu      ar0,ar2               ; |93| 
        ldfu      *+ar4(53),f2          ; |93| 40b float hi half
        ldiu      @CL1,r0               ; |93| 
        ldiu      *+ar0(50),re          ; |93| 
        ldiu      *+ar1(58),r3          ; |93| 
        ldiu      *+ar2(59),ar2         ; |93| 
        ldiu      *+ar4(54),r2          ; |93| 40b float lo half
        ldiu      0,rs                  ; |93| 
        callu     r0                    ; far call to _Convert	; |93| 
                                        ; |93| Far Call Occurs
        rnd       f0,f0                 ; |93| Demote to low precision
        stf       f0,*+fp(4)            ; |93| 
	.line	54
;----------------------------------------------------------------------
;  95 | if ((f->density_oil.val>0.0) && (f->density_oilST.val>0.0))            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |95| 
        ldfu      *+ar0(222),f0         ; |95| 
        cmpf      0.0000000000e+00,f0   ; |95| 
        ble       L22                   ; |95| 
;*      Branch Occurs to L22            ; |95| 
        ldfu      *+ar0(178),f0         ; |95| 
        cmpf      0.0000000000e+00,f0   ; |95| 
        ble       L22                   ; |95| 
;*      Branch Occurs to L22            ; |95| 
	.line	55
;----------------------------------------------------------------------
;  96 | VCFo[0] *= (f->density_oil.val/f->density_oilST.val);                  
;  97 | else                                                                   
;----------------------------------------------------------------------
        ldfu      *+ar0(222),f0         ; |96| 
        ldiu      ar0,ar1
        ldiu      *+fp(3),ar2           ; |96| 
        ldfu      *+ar1(178),f1         ; |96| 
        call      DIV_F30               ; |96| 
                                        ; |96| Call Occurs
        mpyf3     *ar2,f0,f0            ; |96| 
        stf       f0,*ar2               ; |96| 
        bu        L24                   ; |41| 
;*      Branch Occurs to L24            ; |41| 
L22:        
	.line	58
;----------------------------------------------------------------------
;  99 | pST = API_to_kgm3(f->density_oilST.val);                               
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(1),ar0           ; |99| 
        ldiu      @CL2,r0               ; |99| 
        ldfu      *+ar0(178),f2         ; |99| 
        callu     r0                    ; far call to _API_to_kgm3	; |99| 
                                        ; |99| Far Call Occurs
        stf       f0,*+fp(7)            ; |99| 
	.line	59
;----------------------------------------------------------------------
; 100 | vcf = API_PT_ST(f->density_oilST.aux, pST, 1, 1);                      
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      *+fp(1),ar0           ; |100| 
        ldiu      1,rc                  ; |100| 
        ldiu      *+ar0(184),ar2        ; |100| 
        ldiu      @CL3,r0               ; |100| 
        ldfu      *+fp(7),f2            ; |100| 
        ldiu      1,r3                  ; |100| 
        callu     r0                    ; far call to _API_PT_ST	; |100| 
                                        ; |100| Far Call Occurs
        stf       f0,*+fp(8)            ; |100| 
	.line	61
;----------------------------------------------------------------------
; 102 | if (vcf>0.0)                                                           
;----------------------------------------------------------------------
        cmpf      0.0000000000e+00,f0   ; |102| 
        ble       L24                   ; |102| 
;*      Branch Occurs to L24            ; |102| 
	.line	62
;----------------------------------------------------------------------
; 103 | VCFo[0] *= vcf;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |103| 
        mpyf3     *ar0,f0,f0            ; |103| 
        stf       f0,*ar0               ; |103| 
L24:        
	.line	65
;----------------------------------------------------------------------
; 106 | if ((f->density_water.val>0.0) && (f->density_waterST.val>0.0))        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |106| 
        ldiu      310,ar0               ; |106| 
        ldfu      0.0000000000e+00,f0   ; |106| 
        cmpf3     f0,*+ar0(ir0)         ; |106| 
        ble       L27                   ; |106| 
;*      Branch Occurs to L27            ; |106| 
        ldiu      266,ar0               ; |106| 
        ldfu      0.0000000000e+00,f0   ; |106| 
        cmpf3     f0,*+ar0(ir0)         ; |106| 
        ble       L27                   ; |106| 
;*      Branch Occurs to L27            ; |106| 
	.line	66
;----------------------------------------------------------------------
; 107 | VCFw[0] *= (f->density_water.val/f->density_waterST.val);              
; 108 | else                                                                   
;----------------------------------------------------------------------
        ldiu      310,ar0               ; |107| 
        ldiu      266,ar1               ; |107| 
        ldiu      ir0,ir1               ; |107| 
        ldiu      *+fp(2),ar2           ; |107| 

        ldfu      *+ar1(ir1),f1         ; |107| 
||      ldfu      *+ar0(ir0),f0         ; |107| 

        call      DIV_F30               ; |107| 
                                        ; |107| Call Occurs
        mpyf3     *ar2,f0,f0            ; |107| 
        stf       f0,*ar2               ; |107| 
        bu        L35                   ; |41| 
;*      Branch Occurs to L35            ; |41| 
L27:        
	.line	69
;----------------------------------------------------------------------
; 110 | if (t < 15.0)                                                          
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |110| 
        cmpf      1.5000000000e+01,f0   ; |110| 
        bge       L29                   ; |110| 
;*      Branch Occurs to L29            ; |110| 
	.line	70
;----------------------------------------------------------------------
; 111 | t = 15.0;               /* todo: how to handle this? */                
;----------------------------------------------------------------------
        ldfu      1.5000000000e+01,f0   ; |111| 
        stf       f0,*+fp(4)            ; |111| 
        bu        L31                   ; |41| 
;*      Branch Occurs to L31            ; |41| 
L29:        
	.line	71
;----------------------------------------------------------------------
; 112 | else if (t > 138.0)                                                    
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |112| 
        cmpf      1.3800000000e+02,f0   ; |112| 
        ble       L31                   ; |112| 
;*      Branch Occurs to L31            ; |112| 
	.line	72
;----------------------------------------------------------------------
; 113 | t = 138.0;              /* todo: how to handle this? */                
;----------------------------------------------------------------------
        ldfu      1.3800000000e+02,f0   ; |113| 
        stf       f0,*+fp(4)            ; |113| 
L31:        
	.line	75
;----------------------------------------------------------------------
; 116 | t -= 15.0;                                                             
;----------------------------------------------------------------------
        ldfu      1.5000000000e+01,f0   ; |116| 
        subrf     *+fp(4),f0            ; |116| 
        stf       f0,*+fp(4)            ; |116| 
	.line	77
;----------------------------------------------------------------------
; 118 | if (f->density_waterST.val>0.0)                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |118| 
        ldiu      266,ar0               ; |118| 
        ldfu      0.0000000000e+00,f0   ; |118| 
        cmpf3     f0,*+ar0(ir0)         ; |118| 
        ble       L33                   ; |118| 
;*      Branch Occurs to L33            ; |118| 
	.line	78
;----------------------------------------------------------------------
; 119 | B = (f->density_waterST.val - 999.0) / 7.2;                            
; 120 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldfu      @CL5,f0               ; |119| 
        ldp       @CL6,DP
        subf3     f0,*+ar0(ir0),f0      ; |119| 
        mpyf      @CL6,f0               ; |119| 
        stf       f0,*+fp(6)            ; |119| 
        bu        L34                   ; |41| 
;*      Branch Occurs to L34            ; |41| 
L33:        
	.line	80
;----------------------------------------------------------------------
; 121 | B = f->salinity.calc_val;                                              
;----------------------------------------------------------------------
        ldiu      363,ar0               ; |121| 
        addi      *+fp(1),ar0           ; |121| Unsigned
        ldfu      *ar0,f0               ; |121| 40b float hi half
        ldiu      *+ar0,r0              ; |121| 40b float lo half
        rnd       f0,f0                 ; |121| Demote to low precision
        stf       f0,*+fp(6)            ; |121| 
L34:        
	.line	82
;----------------------------------------------------------------------
; 123 | if (B>14.0);    /* todo: how to handle this? */                        
;----------------------------------------------------------------------
        ldfu      *+fp(6),f0            ; |123| 
	.line	84
;----------------------------------------------------------------------
; 125 | VCFw[0] *= 1.0 - (1.8562e-4 + 1.2882e-5*B)*t - (4.1151e-6 - 1.4464e-7*B
;     | )*t*t + (7.1926e-9 - 1.3085e-10*B)*t*t*t;                              
;----------------------------------------------------------------------
        ldfu      f0,f1
        ldp       @CL14,DP
        mpyf      @CL14,f1              ; |125| 
        ldp       @CL18,DP
        ldfu      f0,f2
        mpyf      @CL18,f0              ; |125| 
        ldp       @CL15,DP
        mpyf      @CL15,f2              ; |125| 
        ldp       @CL13,DP
        subrf     @CL13,f1              ; |125| 
        ldp       @CL17,DP
        ldiu      *+fp(2),ar0           ; |125| 
        subrf     @CL17,f0              ; |125| 
        ldp       @CL16,DP
        mpyf      *+fp(4),f1            ; |125| 
        addf      @CL16,f2              ; |125| 
        mpyf      *+fp(4),f0            ; |125| 
        mpyf      *+fp(4),f1            ; |125| 
        mpyf      *+fp(4),f2            ; |125| 
        mpyf      *+fp(4),f0            ; |125| 
        mpyf      *+fp(4),f1            ; |125| 
        subrf     1.0000000000e+00,f2   ; |125| 
        subrf     f2,f0                 ; |125| 
        addf3     f0,f1,f0              ; |125| 
        mpyf3     *ar0,f0,f0            ; |125| 
        stf       f0,*ar0               ; |125| 
L35:        
	.line	88
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
        popf      f6
                                        ; Unallocate the Frame
        subi      10,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	129,000001040h,8


	.sect	 ".text"

	.global	_API_STATUS
	.sym	_API_STATUS,_API_STATUS,32,2,0
	.func	144
;******************************************************************************
;* FUNCTION NAME: _API_STATUS                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 5 Auto + 0 SOE = 7 words          *
;******************************************************************************
_API_STATUS:
;* ar2   assigned to _fcidx
	.sym	_fcidx,10,4,17,32
;* r2    assigned to _type
	.sym	_type,2,14,17,32
	.sym	_fcidx,1,4,1,32
	.sym	_type,2,14,1,32
	.sym	_r,3,14,1,32
	.sym	_f,4,14,1,32
	.sym	_e,5,14,1,32
	.line	1
;----------------------------------------------------------------------
; 144 | void API_STATUS(const int fcidx, const BOOL type)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
;----------------------------------------------------------------------
; 146 | unsigned int r;                                                        
; 147 | unsigned int f; /* fail code */                                        
; 148 | unsigned int e; /* extrapolate code */                                 
; 150 | switch (fcidx)                                                         
; 152 |         case 2:                                                        
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |145| 
        sti       ar2,*+fp(1)           ; |145| 
        bu        L42                   ; |143| 
;*      Branch Occurs to L42            ; |143| 
L38:        
	.line	11
;----------------------------------------------------------------------
; 154 | f = ERROR2_FC3_FAIL;                                                   
;----------------------------------------------------------------------
        ldiu      8,r0                  ; |154| 
        sti       r0,*+fp(4)            ; |154| 
	.line	12
;----------------------------------------------------------------------
; 155 | e = ERROR2_FC3_EXTRAPOLATE;                                            
;----------------------------------------------------------------------
        ldiu      128,r0                ; |155| 
        sti       r0,*+fp(5)            ; |155| 
	.line	13
;----------------------------------------------------------------------
; 156 | break;                                                                 
; 158 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L46                   ; |156| 
;*      Branch Occurs to L46            ; |156| 
L39:        
	.line	17
;----------------------------------------------------------------------
; 160 | f = ERROR2_FC2_FAIL;                                                   
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |160| 
        sti       r0,*+fp(4)            ; |160| 
	.line	18
;----------------------------------------------------------------------
; 161 | e = ERROR2_FC2_EXTRAPOLATE;                                            
;----------------------------------------------------------------------
        ldiu      64,r0                 ; |161| 
        sti       r0,*+fp(5)            ; |161| 
	.line	19
;----------------------------------------------------------------------
; 162 | break;                                                                 
; 164 | case 0:                                                                
;----------------------------------------------------------------------
        bu        L46                   ; |162| 
;*      Branch Occurs to L46            ; |162| 
L40:        
	.line	23
;----------------------------------------------------------------------
; 166 | f = ERROR2_FC1_FAIL;                                                   
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |166| 
        sti       r0,*+fp(4)            ; |166| 
	.line	24
;----------------------------------------------------------------------
; 167 | e = ERROR2_FC1_EXTRAPOLATE;                                            
;----------------------------------------------------------------------
        ldiu      32,r0                 ; |167| 
        sti       r0,*+fp(5)            ; |167| 
	.line	25
;----------------------------------------------------------------------
; 168 | break;                                                                 
; 170 | default:                                                               
;----------------------------------------------------------------------
        bu        L46                   ; |168| 
;*      Branch Occurs to L46            ; |168| 
	.line	29
;----------------------------------------------------------------------
; 172 | return;                                                                
;----------------------------------------------------------------------
L42:        
	.line	7
        ldiu      *+fp(1),r0            ; |150| 
        cmpi      0,r0                  ; |150| 
        beq       L40                   ; |150| 
;*      Branch Occurs to L40            ; |150| 
        cmpi      1,r0                  ; |150| 
        beq       L39                   ; |150| 
;*      Branch Occurs to L39            ; |150| 
        cmpi      2,r0                  ; |150| 
        beq       L38                   ; |150| 
;*      Branch Occurs to L38            ; |150| 
        bu        L53                   ; |150| 
;*      Branch Occurs to L53            ; |150| 
L46:        
	.line	33
;----------------------------------------------------------------------
; 176 | r                               = e|f;                                 
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |176| 
        or        *+fp(5),r0            ; |176| 
        sti       r0,*+fp(3)            ; |176| 
	.line	34
;----------------------------------------------------------------------
; 177 | DIAGNOSTICS[1] &= (0xFFFFFFFF & r);                                    
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |177| 
        and       *+ar0(1),r0           ; |177| 
        sti       r0,*+ar0(1)           ; |177| 
	.line	35
;----------------------------------------------------------------------
; 178 | r                               = 0;                                   
; 180 | switch (type)                                                          
; 182 |         case 1:                                                        
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |178| 
        sti       r0,*+fp(3)            ; |178| 
        bu        L50                   ; |143| 
;*      Branch Occurs to L50            ; |143| 
L47:        
	.line	41
;----------------------------------------------------------------------
; 184 | r = e;                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |184| 
        sti       r0,*+fp(3)            ; |184| 
	.line	42
;----------------------------------------------------------------------
; 185 | break;                                                                 
; 187 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L52                   ; |185| 
;*      Branch Occurs to L52            ; |185| 
L48:        
	.line	46
;----------------------------------------------------------------------
; 189 | r = f;                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |189| 
        sti       r0,*+fp(3)            ; |189| 
	.line	47
;----------------------------------------------------------------------
; 190 | break;                                                                 
; 192 | default:                                                               
;----------------------------------------------------------------------
        bu        L52                   ; |190| 
;*      Branch Occurs to L52            ; |190| 
	.line	51
;----------------------------------------------------------------------
; 194 | break;                                                                 
;----------------------------------------------------------------------
L50:        
	.line	37
        ldiu      *+fp(2),r0            ; |180| 
        cmpi      1,r0                  ; |180| 
        beq       L47                   ; |180| 
;*      Branch Occurs to L47            ; |180| 
        cmpi      2,r0                  ; |180| 
        beq       L48                   ; |180| 
;*      Branch Occurs to L48            ; |180| 
L52:        
	.line	55
;----------------------------------------------------------------------
; 198 | DIAGNOSTICS[1] |= r;                                                   
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |198| 
        ldiu      *+fp(3),r0            ; |198| 
        or        *+ar0(1),r0           ; |198| 
        sti       r0,*+ar0(1)           ; |198| 
L53:        
	.line	56
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      7,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	199,000000000h,5


	.sect	 ".text"

	.global	_API_60F_PT
	.sym	_API_60F_PT,_API_60F_PT,39,2,0
	.func	216
;******************************************************************************
;* FUNCTION NAME: _API_60F_PT                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,ar4,ir0,st,rs,re,  *
;*                        rc                                                  *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 13 Auto + 1 SOE = 16 words        *
;******************************************************************************
_API_60F_PT:
;* ar2   assigned to _fcidx
	.sym	_fcidx,10,4,17,32
;* f2    assigned to _r
	.sym	_r,2,7,17,32
;* r3    assigned to _k_set
	.sym	_k_set,3,20,17,32
	.sym	_fcidx,1,4,1,32
	.sym	_r,2,7,1,32
	.sym	_k_set,3,20,1,32
	.sym	_t,4,7,1,32
	.sym	_p,5,7,1,32
	.sym	_a,6,7,1,32
	.sym	_k0,7,7,1,32
	.sym	_k1,8,7,1,32
	.sym	_k2,9,7,1,32
	.sym	_t1,10,7,1,32
	.sym	_t2,11,7,1,32
	.sym	_t3,12,7,1,32
	.sym	_f,13,24,1,32,.fake31
	.line	1
;----------------------------------------------------------------------
; 216 | double API_60F_PT(const int fcidx, const double r, int* k_set)         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      13,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 218 | double t;       /* temperature */                                      
; 220 | double p;       /* pressure (NOT! -DHA)*/                              
; 226 | double a;                                                              
; 227 | double k0;      /* constant */                                         
; 228 | double k1;      /* constant */                                         
; 229 | double k2;      /* constant */                                         
; 230 | double t1;                                                             
; 231 | double t2;                                                             
; 232 | double t3;                                                             
; 233 | FLOW_COMP* f;                                                          
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |217| 
        stf       f2,*+fp(2)            ; |217| 
        sti       ar2,*+fp(1)           ; |217| 
	.line	20
;----------------------------------------------------------------------
; 235 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	21
;----------------------------------------------------------------------
; 236 | f = &FC[fcidx];                                                        
;----------------------------------------------------------------------
        ldiu      ar2,r0
        ldp       @CL20,DP
        mpyi      1336,r0               ; |236| 
        addi      @CL20,r0              ; |236| Unsigned
        sti       r0,*+fp(13)           ; |236| 
	.line	22
;----------------------------------------------------------------------
; 237 | t = Convert(f->T.class, f->T.calc_unit, u_temp_F, f->T.calc_val, 0, f->
;     | T.aux);                                                                
;----------------------------------------------------------------------
        ldiu      33,rc                 ; |237| 
        ldiu      r0,ar1
        ldp       @CL1,DP
        ldiu      r0,ar0
        ldiu      r0,ar2
        ldfu      *+ar1(53),f2          ; |237| 40b float hi half
        ldiu      r0,ar4
        ldiu      *+ar2(50),re          ; |237| 
        ldiu      *+ar0(58),r3          ; |237| 
        ldiu      *+ar4(59),ar2         ; |237| 
        ldiu      @CL1,r0               ; |237| 
        ldiu      *+ar1(54),r2          ; |237| 40b float lo half
        ldiu      0,rs                  ; |237| 
        callu     r0                    ; far call to _Convert	; |237| 
                                        ; |237| Far Call Occurs
        rnd       f0,f0                 ; |237| Demote to low precision
        stf       f0,*+fp(4)            ; |237| 
	.line	23
;----------------------------------------------------------------------
; 238 | p = kgm3_to_API(r);                                                    
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,r0              ; |238| 
        ldfu      *+fp(2),f2            ; |238| 
        callu     r0                    ; far call to _kgm3_to_API	; |238| 
                                        ; |238| Far Call Occurs
        stf       f0,*+fp(5)            ; |238| 
	.line	25
;----------------------------------------------------------------------
; 240 | API_STATUS(fcidx, 0);                   /* clear API status bits */    
; 242 | switch (f->API_TABLE>>8)                                               
; 244 |         case 'A':                                                      
; 246 |                 //if((t<0.0) || (p<0.0) || (p>100.0))                  
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      0,r2                  ; |240| 
        ldiu      @CL22,r0              ; |240| 
        ldiu      *+fp(1),ar2           ; |240| 
        callu     r0                    ; far call to _API_STATUS	; |240| 
                                        ; |240| Far Call Occurs
        bu        L159                  ; |215| 
;*      Branch Occurs to L159           ; |215| 
L56:        
	.line	32
;----------------------------------------------------------------------
; 247 | if((t<0.0) || (p<0.0) || (p>183.0))                                    
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |247| 
        cmpf      0.0000000000e+00,f0   ; |247| 
        blt       L59                   ; |247| 
;*      Branch Occurs to L59            ; |247| 
        ldfu      *+fp(5),f0            ; |247| 
        cmpf      0.0000000000e+00,f0   ; |247| 
        blt       L59                   ; |247| 
;*      Branch Occurs to L59            ; |247| 
        cmpf      1.8300000000e+02,f0   ; |247| 
        ble       L61                   ; |247| 
;*      Branch Occurs to L61            ; |247| 
L59:        
	.line	34
;----------------------------------------------------------------------
; 249 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |249| 
        ldiu      2,r2                  ; |249| 
        ldiu      @CL22,r0              ; |249| 
        callu     r0                    ; far call to _API_STATUS	; |249| 
                                        ; |249| Far Call Occurs
	.line	35
;----------------------------------------------------------------------
; 250 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	37
;----------------------------------------------------------------------
; 252 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |252| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |252| 
;*      Branch Occurs to L167           ; |252| 
L61:        
	.line	39
;----------------------------------------------------------------------
; 254 | else if(p<40.0)                                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |254| 
        cmpf      4.0000000000e+01,f0   ; |254| 
        bge       L67                   ; |254| 
;*      Branch Occurs to L67            ; |254| 
	.line	41
;----------------------------------------------------------------------
; 256 | if(t>300.0)                                                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |256| 
        cmpf      @CL24,f0              ; |256| 
        ble       L65                   ; |256| 
;*      Branch Occurs to L65            ; |256| 
	.line	43
;----------------------------------------------------------------------
; 258 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |258| 
        ldiu      2,r2                  ; |258| 
        ldiu      @CL22,r0              ; |258| 
        callu     r0                    ; far call to _API_STATUS	; |258| 
                                        ; |258| Far Call Occurs
	.line	44
;----------------------------------------------------------------------
; 259 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	46
;----------------------------------------------------------------------
; 261 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |261| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |261| 
;*      Branch Occurs to L167           ; |261| 
L65:        
	.line	48
;----------------------------------------------------------------------
; 263 | else if(t>250.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |263| 
        cmpf      2.5000000000e+02,f0   ; |263| 
        ble       L84                   ; |263| 
;*      Branch Occurs to L84            ; |263| 
	.line	49
;----------------------------------------------------------------------
; 264 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |264| 
        ldiu      1,r2                  ; |264| 
        ldiu      @CL22,r0              ; |264| 
        callu     r0                    ; far call to _API_STATUS	; |264| 
                                        ; |264| Far Call Occurs
        bu        L84                   ; |215| 
;*      Branch Occurs to L84            ; |215| 
L67:        
	.line	51
;----------------------------------------------------------------------
; 266 | else if(p<50.0)                                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |266| 
        cmpf      5.0000000000e+01,f0   ; |266| 
        bge       L73                   ; |266| 
;*      Branch Occurs to L73            ; |266| 
	.line	53
;----------------------------------------------------------------------
; 268 | if(t>250.0)                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |268| 
        cmpf      2.5000000000e+02,f0   ; |268| 
        ble       L71                   ; |268| 
;*      Branch Occurs to L71            ; |268| 
	.line	55
;----------------------------------------------------------------------
; 270 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |270| 
        ldiu      2,r2                  ; |270| 
        ldiu      @CL22,r0              ; |270| 
        callu     r0                    ; far call to _API_STATUS	; |270| 
                                        ; |270| Far Call Occurs
	.line	56
;----------------------------------------------------------------------
; 271 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	58
;----------------------------------------------------------------------
; 273 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |273| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |273| 
;*      Branch Occurs to L167           ; |273| 
L71:        
	.line	60
;----------------------------------------------------------------------
; 275 | else if(t>200.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |275| 
        cmpf      2.0000000000e+02,f0   ; |275| 
        ble       L84                   ; |275| 
;*      Branch Occurs to L84            ; |275| 
	.line	61
;----------------------------------------------------------------------
; 276 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |276| 
        ldiu      1,r2                  ; |276| 
        ldiu      @CL22,r0              ; |276| 
        callu     r0                    ; far call to _API_STATUS	; |276| 
                                        ; |276| Far Call Occurs
        bu        L84                   ; |215| 
;*      Branch Occurs to L84            ; |215| 
L73:        
	.line	63
;----------------------------------------------------------------------
; 278 | else if(p<55.0)                                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |278| 
        cmpf      5.5000000000e+01,f0   ; |278| 
        bge       L79                   ; |278| 
;*      Branch Occurs to L79            ; |278| 
	.line	65
;----------------------------------------------------------------------
; 280 | if(t>200.0)                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |280| 
        cmpf      2.0000000000e+02,f0   ; |280| 
        ble       L77                   ; |280| 
;*      Branch Occurs to L77            ; |280| 
	.line	67
;----------------------------------------------------------------------
; 282 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |282| 
        ldiu      2,r2                  ; |282| 
        ldiu      @CL22,r0              ; |282| 
        callu     r0                    ; far call to _API_STATUS	; |282| 
                                        ; |282| Far Call Occurs
	.line	68
;----------------------------------------------------------------------
; 283 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	70
;----------------------------------------------------------------------
; 285 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |285| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |285| 
;*      Branch Occurs to L167           ; |285| 
L77:        
	.line	72
;----------------------------------------------------------------------
; 287 | else if(t>150.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |287| 
        cmpf      1.5000000000e+02,f0   ; |287| 
        ble       L84                   ; |287| 
;*      Branch Occurs to L84            ; |287| 
	.line	73
;----------------------------------------------------------------------
; 288 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |288| 
        ldiu      1,r2                  ; |288| 
        ldiu      @CL22,r0              ; |288| 
        callu     r0                    ; far call to _API_STATUS	; |288| 
                                        ; |288| Far Call Occurs
        bu        L84                   ; |215| 
;*      Branch Occurs to L84            ; |215| 
L79:        
	.line	75
;----------------------------------------------------------------------
; 290 | else if(p<=100.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |290| 
        cmpf      1.0000000000e+02,f0   ; |290| 
        bgt       L84                   ; |290| 
;*      Branch Occurs to L84            ; |290| 
	.line	77
;----------------------------------------------------------------------
; 292 | if(t>200.0)                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |292| 
        cmpf      2.0000000000e+02,f0   ; |292| 
        ble       L83                   ; |292| 
;*      Branch Occurs to L83            ; |292| 
	.line	79
;----------------------------------------------------------------------
; 294 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |294| 
        ldiu      2,r2                  ; |294| 
        ldiu      @CL22,r0              ; |294| 
        callu     r0                    ; far call to _API_STATUS	; |294| 
                                        ; |294| Far Call Occurs
	.line	80
;----------------------------------------------------------------------
; 295 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	82
;----------------------------------------------------------------------
; 297 | return API_error_num;                                                  
; 299 | else                                                                   
;----------------------------------------------------------------------
        bud       L167                  ; |297| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |297| 
;*      Branch Occurs to L167           ; |297| 
L83:        
	.line	85
;----------------------------------------------------------------------
; 300 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |300| 
        ldiu      1,r2                  ; |300| 
        ldiu      @CL22,r0              ; |300| 
        callu     r0                    ; far call to _API_STATUS	; |300| 
                                        ; |300| Far Call Occurs
L84:        
	.line	88
;----------------------------------------------------------------------
; 303 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |303| 
        ldiu      0,r0                  ; |303| 
        sti       r0,*ar0               ; |303| 
	.line	89
;----------------------------------------------------------------------
; 304 | k0               = 341.0957;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldfu      @CL25,f0              ; |304| 
        stf       f0,*+fp(7)            ; |304| 
	.line	90
;----------------------------------------------------------------------
; 305 | k1               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |305| 
        stf       f0,*+fp(8)            ; |305| 
	.line	91
;----------------------------------------------------------------------
; 306 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |306| 
        stf       f0,*+fp(9)            ; |306| 
	.line	93
;----------------------------------------------------------------------
; 308 | break;                                                                 
; 310 | case 'B':                                                              
;----------------------------------------------------------------------
        bu        L164                  ; |308| 
;*      Branch Occurs to L164           ; |308| 
L85:        
	.line	97
;----------------------------------------------------------------------
; 312 | if ((t<0.0) || (p<0.0) || (p>85.0))                                    
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |312| 
        cmpf      0.0000000000e+00,f0   ; |312| 
        blt       L88                   ; |312| 
;*      Branch Occurs to L88            ; |312| 
        ldfu      *+fp(5),f0            ; |312| 
        cmpf      0.0000000000e+00,f0   ; |312| 
        blt       L88                   ; |312| 
;*      Branch Occurs to L88            ; |312| 
        cmpf      8.5000000000e+01,f0   ; |312| 
        ble       L90                   ; |312| 
;*      Branch Occurs to L90            ; |312| 
L88:        
	.line	99
;----------------------------------------------------------------------
; 314 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |314| 
        ldiu      2,r2                  ; |314| 
        ldiu      @CL22,r0              ; |314| 
        callu     r0                    ; far call to _API_STATUS	; |314| 
                                        ; |314| Far Call Occurs
	.line	100
;----------------------------------------------------------------------
; 315 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	102
;----------------------------------------------------------------------
; 317 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |317| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |317| 
;*      Branch Occurs to L167           ; |317| 
L90:        
	.line	104
;----------------------------------------------------------------------
; 319 | else if (p<40.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |319| 
        cmpf      4.0000000000e+01,f0   ; |319| 
        bge       L96                   ; |319| 
;*      Branch Occurs to L96            ; |319| 
	.line	106
;----------------------------------------------------------------------
; 321 | if (t>300.0)                                                           
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |321| 
        cmpf      @CL24,f0              ; |321| 
        ble       L94                   ; |321| 
;*      Branch Occurs to L94            ; |321| 
	.line	108
;----------------------------------------------------------------------
; 323 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |323| 
        ldiu      2,r2                  ; |323| 
        ldiu      @CL22,r0              ; |323| 
        callu     r0                    ; far call to _API_STATUS	; |323| 
                                        ; |323| Far Call Occurs
	.line	109
;----------------------------------------------------------------------
; 324 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	111
;----------------------------------------------------------------------
; 326 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |326| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |326| 
;*      Branch Occurs to L167           ; |326| 
L94:        
	.line	113
;----------------------------------------------------------------------
; 328 | else if (t>250.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |328| 
        cmpf      2.5000000000e+02,f0   ; |328| 
        ble       L108                  ; |328| 
;*      Branch Occurs to L108           ; |328| 
	.line	114
;----------------------------------------------------------------------
; 329 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |329| 
        ldiu      1,r2                  ; |329| 
        ldiu      @CL22,r0              ; |329| 
        callu     r0                    ; far call to _API_STATUS	; |329| 
                                        ; |329| Far Call Occurs
        bu        L108                  ; |215| 
;*      Branch Occurs to L108           ; |215| 
L96:        
	.line	116
;----------------------------------------------------------------------
; 331 | else if (p<50.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |331| 
        cmpf      5.0000000000e+01,f0   ; |331| 
        bge       L102                  ; |331| 
;*      Branch Occurs to L102           ; |331| 
	.line	118
;----------------------------------------------------------------------
; 333 | if (t>250.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |333| 
        cmpf      2.5000000000e+02,f0   ; |333| 
        ble       L100                  ; |333| 
;*      Branch Occurs to L100           ; |333| 
	.line	120
;----------------------------------------------------------------------
; 335 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |335| 
        ldiu      2,r2                  ; |335| 
        ldiu      @CL22,r0              ; |335| 
        callu     r0                    ; far call to _API_STATUS	; |335| 
                                        ; |335| Far Call Occurs
	.line	121
;----------------------------------------------------------------------
; 336 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	122
;----------------------------------------------------------------------
; 337 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |337| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |337| 
;*      Branch Occurs to L167           ; |337| 
L100:        
	.line	124
;----------------------------------------------------------------------
; 339 | else if (t>200.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |339| 
        cmpf      2.0000000000e+02,f0   ; |339| 
        ble       L108                  ; |339| 
;*      Branch Occurs to L108           ; |339| 
	.line	125
;----------------------------------------------------------------------
; 340 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |340| 
        ldiu      1,r2                  ; |340| 
        ldiu      @CL22,r0              ; |340| 
        callu     r0                    ; far call to _API_STATUS	; |340| 
                                        ; |340| Far Call Occurs
        bu        L108                  ; |215| 
;*      Branch Occurs to L108           ; |215| 
L102:        
	.line	127
;----------------------------------------------------------------------
; 342 | else if (p<=85.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |342| 
        cmpf      8.5000000000e+01,f0   ; |342| 
        bgt       L108                  ; |342| 
;*      Branch Occurs to L108           ; |342| 
	.line	129
;----------------------------------------------------------------------
; 344 | if (t>200.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |344| 
        cmpf      2.0000000000e+02,f0   ; |344| 
        ble       L106                  ; |344| 
;*      Branch Occurs to L106           ; |344| 
	.line	131
;----------------------------------------------------------------------
; 346 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |346| 
        ldiu      2,r2                  ; |346| 
        ldiu      @CL22,r0              ; |346| 
        callu     r0                    ; far call to _API_STATUS	; |346| 
                                        ; |346| Far Call Occurs
	.line	132
;----------------------------------------------------------------------
; 347 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	134
;----------------------------------------------------------------------
; 349 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |349| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |349| 
;*      Branch Occurs to L167           ; |349| 
L106:        
	.line	136
;----------------------------------------------------------------------
; 351 | else if (t>150.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |351| 
        cmpf      1.5000000000e+02,f0   ; |351| 
        ble       L108                  ; |351| 
;*      Branch Occurs to L108           ; |351| 
	.line	137
;----------------------------------------------------------------------
; 352 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |352| 
        ldiu      1,r2                  ; |352| 
        ldiu      @CL22,r0              ; |352| 
        callu     r0                    ; far call to _API_STATUS	; |352| 
                                        ; |352| Far Call Occurs
L108:        
	.line	140
;----------------------------------------------------------------------
; 355 | if (k_set[0]==-1)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |355| 
        ldiu      *ar0,r0               ; |355| 
        cmpi      -1,r0                 ; |355| 
        bne       L128                  ; |355| 
;*      Branch Occurs to L128           ; |355| 
	.line	142
;----------------------------------------------------------------------
; 357 | if ((p>=0.0) && (p<37.0))                                              
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |357| 
        cmpf      0.0000000000e+00,f0   ; |357| 
        blt       L112                  ; |357| 
;*      Branch Occurs to L112           ; |357| 
        cmpf      3.7000000000e+01,f0   ; |357| 
        bge       L112                  ; |357| 
;*      Branch Occurs to L112           ; |357| 
	.line	143
;----------------------------------------------------------------------
; 358 | k_set[0] = 1;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |358| 
        sti       r0,*ar0               ; |358| 
        bu        L128                  ; |215| 
;*      Branch Occurs to L128           ; |215| 
L112:        
	.line	144
;----------------------------------------------------------------------
; 359 | else if ((p>=37.0) && (p<48.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |359| 
        cmpf      3.7000000000e+01,f0   ; |359| 
        blt       L115                  ; |359| 
;*      Branch Occurs to L115           ; |359| 
        cmpf      4.8000000000e+01,f0   ; |359| 
        bge       L115                  ; |359| 
;*      Branch Occurs to L115           ; |359| 
	.line	145
;----------------------------------------------------------------------
; 360 | k_set[0] = 2;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |360| 
        ldiu      2,r0                  ; |360| 
        sti       r0,*ar0               ; |360| 
        bu        L128                  ; |215| 
;*      Branch Occurs to L128           ; |215| 
L115:        
	.line	146
;----------------------------------------------------------------------
; 361 | else if ((p>=48.0) && (p<52.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |361| 
        cmpf      4.8000000000e+01,f0   ; |361| 
        blt       L118                  ; |361| 
;*      Branch Occurs to L118           ; |361| 
        cmpf      5.2000000000e+01,f0   ; |361| 
        bge       L118                  ; |361| 
;*      Branch Occurs to L118           ; |361| 
	.line	147
;----------------------------------------------------------------------
; 362 | k_set[0] = 3;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |362| 
        ldiu      3,r0                  ; |362| 
        sti       r0,*ar0               ; |362| 
        bu        L128                  ; |215| 
;*      Branch Occurs to L128           ; |215| 
L118:        
	.line	148
;----------------------------------------------------------------------
; 363 | else if ((p>=52.0) && (p<=85.0))                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |363| 
        cmpf      5.2000000000e+01,f0   ; |363| 
        blt       L121                  ; |363| 
;*      Branch Occurs to L121           ; |363| 
        cmpf      8.5000000000e+01,f0   ; |363| 
        bgt       L121                  ; |363| 
;*      Branch Occurs to L121           ; |363| 
	.line	149
;----------------------------------------------------------------------
; 364 | k_set[0] = 4;                                                          
; 365 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |364| 
        ldiu      4,r0                  ; |364| 
        sti       r0,*ar0               ; |364| 
        bu        L128                  ; |215| 
;*      Branch Occurs to L128           ; |215| 
L121:        
	.line	151
;----------------------------------------------------------------------
; 366 | k_set[0] = -1;                                                         
; 369 | switch (k_set[0])                                                      
; 371 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |366| 
        ldiu      -1,r0                 ; |366| 
        sti       r0,*ar0               ; |366| 
        bu        L128                  ; |215| 
;*      Branch Occurs to L128           ; |215| 
L122:        
	.line	158
;----------------------------------------------------------------------
; 373 | k0 = 103.8720;                                                         
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldfu      @CL26,f0              ; |373| 
        stf       f0,*+fp(7)            ; |373| 
	.line	159
;----------------------------------------------------------------------
; 374 | k1 = 0.2701;                                                           
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldfu      @CL27,f0              ; |374| 
        stf       f0,*+fp(8)            ; |374| 
	.line	160
;----------------------------------------------------------------------
; 375 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |375| 
        stf       f0,*+fp(9)            ; |375| 
	.line	162
;----------------------------------------------------------------------
; 377 | break;                                                                 
; 379 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L164                  ; |377| 
;*      Branch Occurs to L164           ; |377| 
L123:        
	.line	166
;----------------------------------------------------------------------
; 381 | k0 = 330.3010;                                                         
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldfu      @CL28,f0              ; |381| 
        stf       f0,*+fp(7)            ; |381| 
	.line	167
;----------------------------------------------------------------------
; 382 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |382| 
        stf       f0,*+fp(8)            ; |382| 
	.line	168
;----------------------------------------------------------------------
; 383 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |383| 
        stf       f0,*+fp(9)            ; |383| 
	.line	170
;----------------------------------------------------------------------
; 385 | break;                                                                 
; 387 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L164                  ; |385| 
;*      Branch Occurs to L164           ; |385| 
L124:        
	.line	174
;----------------------------------------------------------------------
; 389 | k0 = 1489.0670;                                                        
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldfu      @CL29,f0              ; |389| 
        stf       f0,*+fp(7)            ; |389| 
	.line	175
;----------------------------------------------------------------------
; 390 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |390| 
        stf       f0,*+fp(8)            ; |390| 
	.line	176
;----------------------------------------------------------------------
; 391 | k2 = -0.00186840;                                                      
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldfu      @CL30,f0              ; |391| 
        stf       f0,*+fp(9)            ; |391| 
	.line	178
;----------------------------------------------------------------------
; 393 | break;                                                                 
; 395 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L164                  ; |393| 
;*      Branch Occurs to L164           ; |393| 
L125:        
	.line	182
;----------------------------------------------------------------------
; 397 | k0 = 192.4571;                                                         
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldfu      @CL31,f0              ; |397| 
        stf       f0,*+fp(7)            ; |397| 
	.line	183
;----------------------------------------------------------------------
; 398 | k1 = 0.2438;                                                           
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldfu      @CL32,f0              ; |398| 
        stf       f0,*+fp(8)            ; |398| 
	.line	184
;----------------------------------------------------------------------
; 399 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |399| 
        stf       f0,*+fp(9)            ; |399| 
	.line	186
;----------------------------------------------------------------------
; 401 | break;                                                                 
; 403 | case 0:                                                                
; 404 | default:                                                               
;----------------------------------------------------------------------
        bu        L164                  ; |401| 
;*      Branch Occurs to L164           ; |401| 
L126:        
	.line	191
;----------------------------------------------------------------------
; 406 | k_set[0] = -1;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |406| 
        ldiu      -1,r0                 ; |406| 
        sti       r0,*ar0               ; |406| 
	.line	192
;----------------------------------------------------------------------
; 407 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	194
;----------------------------------------------------------------------
; 409 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |409| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |409| 
;*      Branch Occurs to L167           ; |409| 
L128:        
	.line	154
        ldiu      *+fp(3),ar0           ; |369| 
        ldiu      *ar0,r0               ; |369| 
        cmpi      0,r0                  ; |369| 
        beq       L126                  ; |369| 
;*      Branch Occurs to L126           ; |369| 
        cmpi      1,r0                  ; |369| 
        beq       L122                  ; |369| 
;*      Branch Occurs to L122           ; |369| 
        cmpi      2,r0                  ; |369| 
        beq       L123                  ; |369| 
;*      Branch Occurs to L123           ; |369| 
        cmpi      3,r0                  ; |369| 
        beq       L124                  ; |369| 
;*      Branch Occurs to L124           ; |369| 
        cmpi      4,r0                  ; |369| 
        beq       L125                  ; |369| 
;*      Branch Occurs to L125           ; |369| 
        bu        L126                  ; |369| 
;*      Branch Occurs to L126           ; |369| 
	.line	198
;----------------------------------------------------------------------
; 413 | break;                                                                 
; 415 | case 'C':                                                              
;----------------------------------------------------------------------
L135:        
	.line	202
;----------------------------------------------------------------------
; 417 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |417| 
        ldiu      0,r0                  ; |417| 
        sti       r0,*ar0               ; |417| 
	.line	203
;----------------------------------------------------------------------
; 418 | a = f->a * 10e6;                                                       
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      *+fp(13),ir0          ; |418| 
        ldiu      399,ar0               ; |418| 
        ldfu      @CL33,f0              ; |418| 
        mpyf3     *+ar0(ir0),f0,f0      ; |418| 
        stf       f0,*+fp(6)            ; |418| 
	.line	205
;----------------------------------------------------------------------
; 420 | if ((t<0.0) || (a<270.0) || (a>930.0))                                 
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |420| 
        cmpf      0.0000000000e+00,f0   ; |420| 
        blt       L138                  ; |420| 
;*      Branch Occurs to L138           ; |420| 
        ldp       @CL34,DP
        ldfu      *+fp(6),f0            ; |420| 
        cmpf      @CL34,f0              ; |420| 
        blt       L138                  ; |420| 
;*      Branch Occurs to L138           ; |420| 
        ldp       @CL35,DP
        cmpf      @CL35,f0              ; |420| 
        ble       L140                  ; |420| 
;*      Branch Occurs to L140           ; |420| 
L138:        
	.line	207
;----------------------------------------------------------------------
; 422 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |422| 
        ldiu      2,r2                  ; |422| 
        ldiu      @CL22,r0              ; |422| 
        callu     r0                    ; far call to _API_STATUS	; |422| 
                                        ; |422| Far Call Occurs
	.line	208
;----------------------------------------------------------------------
; 423 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	210
;----------------------------------------------------------------------
; 425 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |425| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |425| 
;*      Branch Occurs to L167           ; |425| 
L140:        
	.line	212
;----------------------------------------------------------------------
; 427 | else if ((a<510.0) && (t>300.0))                                       
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldfu      *+fp(6),f0            ; |427| 
        cmpf      @CL36,f0              ; |427| 
        bge       L144                  ; |427| 
;*      Branch Occurs to L144           ; |427| 
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |427| 
        cmpf      @CL24,f0              ; |427| 
        ble       L144                  ; |427| 
;*      Branch Occurs to L144           ; |427| 
	.line	214
;----------------------------------------------------------------------
; 429 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |429| 
        ldiu      2,r2                  ; |429| 
        ldiu      @CL22,r0              ; |429| 
        callu     r0                    ; far call to _API_STATUS	; |429| 
                                        ; |429| Far Call Occurs
	.line	215
;----------------------------------------------------------------------
; 430 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	217
;----------------------------------------------------------------------
; 432 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |432| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |432| 
;*      Branch Occurs to L167           ; |432| 
L144:        
	.line	219
;----------------------------------------------------------------------
; 434 | else if ((a<530.0) && (t>250.0))                                       
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldfu      *+fp(6),f0            ; |434| 
        cmpf      @CL37,f0              ; |434| 
        bge       L148                  ; |434| 
;*      Branch Occurs to L148           ; |434| 
        ldfu      *+fp(4),f0            ; |434| 
        cmpf      2.5000000000e+02,f0   ; |434| 
        ble       L148                  ; |434| 
;*      Branch Occurs to L148           ; |434| 
	.line	221
;----------------------------------------------------------------------
; 436 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |436| 
        ldiu      2,r2                  ; |436| 
        ldiu      @CL22,r0              ; |436| 
        callu     r0                    ; far call to _API_STATUS	; |436| 
                                        ; |436| Far Call Occurs
	.line	222
;----------------------------------------------------------------------
; 437 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	224
;----------------------------------------------------------------------
; 439 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |439| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |439| 
;*      Branch Occurs to L167           ; |439| 
L148:        
	.line	226
;----------------------------------------------------------------------
; 441 | else if ((a<=930.0) && (t>200.0))                                      
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldfu      *+fp(6),f0            ; |441| 
        cmpf      @CL35,f0              ; |441| 
        bgt       L151                  ; |441| 
;*      Branch Occurs to L151           ; |441| 
        ldfu      *+fp(4),f0            ; |441| 
        cmpf      2.0000000000e+02,f0   ; |441| 
        ble       L151                  ; |441| 
;*      Branch Occurs to L151           ; |441| 
	.line	228
;----------------------------------------------------------------------
; 443 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |443| 
        ldiu      2,r2                  ; |443| 
        ldiu      @CL22,r0              ; |443| 
        callu     r0                    ; far call to _API_STATUS	; |443| 
                                        ; |443| Far Call Occurs
	.line	229
;----------------------------------------------------------------------
; 444 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	231
;----------------------------------------------------------------------
; 446 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |446| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |446| 
;*      Branch Occurs to L167           ; |446| 
L151:        
	.line	234
;----------------------------------------------------------------------
; 449 | a = f->a;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |449| 
        ldiu      399,ar0               ; |449| 
        ldfu      *+ar0(ir0),f0         ; |449| 
        stf       f0,*+fp(6)            ; |449| 
	.line	236
;----------------------------------------------------------------------
; 451 | break;                                                                 
; 453 | case 'D':                                                              
; 454 | default:                                                               
;----------------------------------------------------------------------
        bu        L164                  ; |451| 
;*      Branch Occurs to L164           ; |451| 
L152:        
	.line	241
;----------------------------------------------------------------------
; 456 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |456| 
        ldiu      398,ar0               ; |456| 
        ldiu      17408,r0              ; |456| 
        sti       r0,*+ar0(ir0)         ; |456| 
	.line	243
;----------------------------------------------------------------------
; 458 | if ((p<-10.0) || (p>45.0) || (t<0.0) || (t>300.0))                     
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldfu      *+fp(5),f0            ; |458| 
        cmpf      @CL38,f0              ; |458| 
        blt       L156                  ; |458| 
;*      Branch Occurs to L156           ; |458| 
        cmpf      4.5000000000e+01,f0   ; |458| 
        bgt       L156                  ; |458| 
;*      Branch Occurs to L156           ; |458| 
        ldfu      *+fp(4),f0            ; |458| 
        cmpf      0.0000000000e+00,f0   ; |458| 
        blt       L156                  ; |458| 
;*      Branch Occurs to L156           ; |458| 
        ldp       @CL24,DP
        cmpf      @CL24,f0              ; |458| 
        ble       L157                  ; |458| 
;*      Branch Occurs to L157           ; |458| 
L156:        
	.line	245
;----------------------------------------------------------------------
; 460 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |460| 
        ldiu      2,r2                  ; |460| 
        ldiu      @CL22,r0              ; |460| 
        callu     r0                    ; far call to _API_STATUS	; |460| 
                                        ; |460| Far Call Occurs
	.line	246
;----------------------------------------------------------------------
; 461 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	248
;----------------------------------------------------------------------
; 463 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L167                  ; |463| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |463| 
;*      Branch Occurs to L167           ; |463| 
L157:        
	.line	251
;----------------------------------------------------------------------
; 466 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |466| 
        ldiu      0,r0                  ; |466| 
        sti       r0,*ar0               ; |466| 
	.line	252
;----------------------------------------------------------------------
; 467 | k0               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |467| 
        stf       f0,*+fp(7)            ; |467| 
	.line	253
;----------------------------------------------------------------------
; 468 | k1               = 0.34878;                                            
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldfu      @CL39,f0              ; |468| 
        stf       f0,*+fp(8)            ; |468| 
	.line	254
;----------------------------------------------------------------------
; 469 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |469| 
        stf       f0,*+fp(9)            ; |469| 
	.line	256
;----------------------------------------------------------------------
; 471 | break;                                                                 
;----------------------------------------------------------------------
        bu        L164                  ; |471| 
;*      Branch Occurs to L164           ; |471| 
L159:        
	.line	27
        ldiu      *+fp(13),ir0          ; |242| 
        ldiu      398,ar0               ; |242| 
        ldiu      -8,r0                 ; |242| 
        ash3      r0,*+ar0(ir0),r0      ; |242| 
        cmpi      65,r0                 ; |242| 
        beq       L56                   ; |242| 
;*      Branch Occurs to L56            ; |242| 
        cmpi      66,r0                 ; |242| 
        beq       L85                   ; |242| 
;*      Branch Occurs to L85            ; |242| 
        cmpi      67,r0                 ; |242| 
        beq       L135                  ; |242| 
;*      Branch Occurs to L135           ; |242| 
        cmpi      68,r0                 ; |242| 
        beq       L152                  ; |242| 
;*      Branch Occurs to L152           ; |242| 
        bu        L152                  ; |242| 
;*      Branch Occurs to L152           ; |242| 
L164:        
	.line	260
;----------------------------------------------------------------------
; 475 | t -= 60.0;                                                             
;----------------------------------------------------------------------
        ldfu      6.0000000000e+01,f0   ; |475| 
        subrf     *+fp(4),f0            ; |475| 
        stf       f0,*+fp(4)            ; |475| 
	.line	261
;----------------------------------------------------------------------
; 476 | p  = r;                                                                
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |476| 
        stf       f0,*+fp(5)            ; |476| 
	.line	263
;----------------------------------------------------------------------
; 478 | if ((f->API_TABLE>>8) != 'C')                                          
; 479 | {//a = (k0/(p*p)) + (k1/p) + k2;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |478| 
        ldiu      398,ar0               ; |478| 
        ldiu      -8,r0                 ; |478| 
        ash3      r0,*+ar0(ir0),r0      ; |478| 
        cmpi      67,r0                 ; |478| 
        beq       L166                  ; |478| 
;*      Branch Occurs to L166           ; |478| 
	.line	265
;----------------------------------------------------------------------
; 480 | t1 = truncate((k0/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |480| 
        ldfu      *+fp(5),f1            ; |480| 
        call      DIV_F30               ; |480| 
                                        ; |480| Call Occurs
        ldp       @CL40,DP
        ldfu      f0,f2                 ; |480| 
        ldiu      @CL40,r1              ; |480| 
        ldiu      8,ar2                 ; |480| 
        callu     r1                    ; far call to _truncate	; |480| 
                                        ; |480| Far Call Occurs
        stf       f0,*+fp(10)           ; |480| 
	.line	266
;----------------------------------------------------------------------
; 481 | t2 = truncate((t1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |481| 
        call      DIV_F30               ; |481| 
                                        ; |481| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |481| 
        ldiu      8,ar2                 ; |481| 
        ldfu      f0,f2                 ; |481| 
        callu     r1                    ; far call to _truncate	; |481| 
                                        ; |481| Far Call Occurs
        stf       f0,*+fp(11)           ; |481| 
	.line	267
;----------------------------------------------------------------------
; 482 | t3 = truncate((k1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |482| 
        ldfu      *+fp(8),f0            ; |482| 
        call      DIV_F30               ; |482| 
                                        ; |482| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |482| 
        ldfu      f0,f2                 ; |482| 
        ldiu      8,ar2                 ; |482| 
        callu     r1                    ; far call to _truncate	; |482| 
                                        ; |482| Far Call Occurs
        stf       f0,*+fp(12)           ; |482| 
	.line	268
;----------------------------------------------------------------------
; 483 | a  = sigfig((t2+t3+k2), 4);                                            
;----------------------------------------------------------------------
        ldfu      f0,f2
        addf      *+fp(11),f2           ; |483| 
        ldiu      4,ar2                 ; |483| 
        ldp       @CL41,DP
        addf      *+fp(9),f2            ; |483| 
        ldiu      @CL41,r0              ; |483| 
        callu     r0                    ; far call to _sigfig	; |483| 
                                        ; |483| Far Call Occurs
        stf       f0,*+fp(6)            ; |483| 
L166:        
	.line	271
;----------------------------------------------------------------------
; 486 | t = p * exp(-a*t*(1.0+0.8*a*t));                                       
;----------------------------------------------------------------------
        ldfu      *+fp(6),f1            ; |486| 
        ldp       @CL42,DP
        negf      *+fp(6),f0            ; |486| 
        mpyf      @CL42,f1              ; |486| 
        mpyf      *+fp(4),f0            ; |486| 
        ldp       @CL43,DP
        mpyf      *+fp(4),f1            ; |486| 
        ldiu      @CL43,r3              ; |486| 
        addf      1.0000000000e+00,f1   ; |486| 
        mpyf3     f1,f0,f2              ; |486| 
        callu     r3                    ; far call to _exp	; |486| 
                                        ; |486| Far Call Occurs
        mpyf      *+fp(5),f0            ; |486| 
        stf       f0,*+fp(4)            ; |486| 
	.line	272
;----------------------------------------------------------------------
; 487 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	274
;----------------------------------------------------------------------
; 489 | return t;                                                              
;----------------------------------------------------------------------
L167:        
	.line	275
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |490| 
        ldiu      *fp,fp                ; |490| 
                                        ; Restore SOE Registers
        pop       ar4                   ; |490| 
                                        ; Unallocate the Frame
        subi      15,sp                 ; |490| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	490,000001000h,13


	.sect	 ".text"

	.global	_API_15C_PT
	.sym	_API_15C_PT,_API_15C_PT,39,2,0
	.func	506
;******************************************************************************
;* FUNCTION NAME: _API_15C_PT                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,ar4,ir0,st,rs,re,  *
;*                        rc                                                  *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 13 Auto + 1 SOE = 16 words        *
;******************************************************************************
_API_15C_PT:
;* ar2   assigned to _fcidx
	.sym	_fcidx,10,4,17,32
;* f2    assigned to _r
	.sym	_r,2,7,17,32
;* r3    assigned to _k_set
	.sym	_k_set,3,20,17,32
	.sym	_fcidx,1,4,1,32
	.sym	_r,2,7,1,32
	.sym	_k_set,3,20,1,32
	.sym	_t,4,7,1,32
	.sym	_p,5,7,1,32
	.sym	_a,6,7,1,32
	.sym	_k0,7,7,1,32
	.sym	_k1,8,7,1,32
	.sym	_k2,9,7,1,32
	.sym	_t1,10,7,1,32
	.sym	_t2,11,7,1,32
	.sym	_t3,12,7,1,32
	.sym	_f,13,24,1,32,.fake31
	.line	1
;----------------------------------------------------------------------
; 506 | double API_15C_PT(const int fcidx, const double r, int* k_set)         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      13,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 508 | double t;       /* temperature */                                      
; 510 | double p;       /* pressure (NOT! -DHA)*/                              
; 516 | double a;       /* case C variable */                                  
; 517 | double k0;      /* constant */                                         
; 518 | double k1;      /* constant */                                         
; 519 | double k2;      /* constant */                                         
; 520 | double t1;                                                             
; 521 | double t2;                                                             
; 522 | double t3;                                                             
; 523 | FLOW_COMP* f; /* flow computer */                                      
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |507| 
        stf       f2,*+fp(2)            ; |507| 
        sti       ar2,*+fp(1)           ; |507| 
	.line	20
;----------------------------------------------------------------------
; 525 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	22
;----------------------------------------------------------------------
; 527 | f = &FC[fcidx];                                                        
;----------------------------------------------------------------------
        ldiu      ar2,r0
        ldp       @CL20,DP
        mpyi      1336,r0               ; |527| 
        addi      @CL20,r0              ; |527| Unsigned
        sti       r0,*+fp(13)           ; |527| 
	.line	23
;----------------------------------------------------------------------
; 528 | t = Convert(f->T.class, f->T.calc_unit, u_temp_C, f->T.calc_val, 0, f->
;     | T.aux);                                                                
;----------------------------------------------------------------------
        ldiu      32,rc                 ; |528| 
        ldiu      r0,ar1
        ldp       @CL1,DP
        ldiu      r0,ar0
        ldiu      r0,ar2
        ldfu      *+ar1(53),f2          ; |528| 40b float hi half
        ldiu      r0,ar4
        ldiu      *+ar2(50),re          ; |528| 
        ldiu      *+ar0(58),r3          ; |528| 
        ldiu      *+ar4(59),ar2         ; |528| 
        ldiu      @CL1,r0               ; |528| 
        ldiu      *+ar1(54),r2          ; |528| 40b float lo half
        ldiu      0,rs                  ; |528| 
        callu     r0                    ; far call to _Convert	; |528| 
                                        ; |528| Far Call Occurs
        rnd       f0,f0                 ; |528| Demote to low precision
        stf       f0,*+fp(4)            ; |528| 
	.line	24
;----------------------------------------------------------------------
; 529 | p = r;                                                                 
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |529| 
        stf       f0,*+fp(5)            ; |529| 
	.line	26
;----------------------------------------------------------------------
; 531 | API_STATUS(fcidx, 0);                   /* clear API status bits */    
; 533 | switch (f->API_TABLE>>8)                                               
; 535 |         case 'A':                                                      
; 537 |                 //if ((t<-18.0) || (p<610.5) || (p>1075.0))            
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      @CL22,r0              ; |531| 
        ldiu      0,r2                  ; |531| 
        ldiu      *+fp(1),ar2           ; |531| 
        callu     r0                    ; far call to _API_STATUS	; |531| 
                                        ; |531| Far Call Occurs
        bu        L273                  ; |505| 
;*      Branch Occurs to L273           ; |505| 
L170:        
	.line	33
;----------------------------------------------------------------------
; 538 | if ((t<-18.0) || (p<450.0) || (p>1075.0))                              
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldfu      *+fp(4),f0            ; |538| 
        cmpf      @CL44,f0              ; |538| 
        blt       L173                  ; |538| 
;*      Branch Occurs to L173           ; |538| 
        ldp       @CL45,DP
        ldfu      *+fp(5),f0            ; |538| 
        cmpf      @CL45,f0              ; |538| 
        blt       L173                  ; |538| 
;*      Branch Occurs to L173           ; |538| 
        ldp       @CL46,DP
        cmpf      @CL46,f0              ; |538| 
        ble       L175                  ; |538| 
;*      Branch Occurs to L175           ; |538| 
L173:        
	.line	35
;----------------------------------------------------------------------
; 540 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |540| 
        ldiu      2,r2                  ; |540| 
        ldiu      @CL22,r0              ; |540| 
        callu     r0                    ; far call to _API_STATUS	; |540| 
                                        ; |540| Far Call Occurs
	.line	36
;----------------------------------------------------------------------
; 541 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	38
;----------------------------------------------------------------------
; 543 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |543| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |543| 
;*      Branch Occurs to L281           ; |543| 
L175:        
	.line	40
;----------------------------------------------------------------------
; 545 | else if (p<758.0)                                                      
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldfu      *+fp(5),f0            ; |545| 
        cmpf      @CL47,f0              ; |545| 
        bge       L180                  ; |545| 
;*      Branch Occurs to L180           ; |545| 
	.line	42
;----------------------------------------------------------------------
; 547 | if (t>90.0)                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |547| 
        cmpf      9.0000000000e+01,f0   ; |547| 
        ble       L179                  ; |547| 
;*      Branch Occurs to L179           ; |547| 
	.line	44
;----------------------------------------------------------------------
; 549 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |549| 
        ldiu      2,r2                  ; |549| 
        ldiu      @CL22,r0              ; |549| 
        callu     r0                    ; far call to _API_STATUS	; |549| 
                                        ; |549| Far Call Occurs
	.line	45
;----------------------------------------------------------------------
; 550 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	47
;----------------------------------------------------------------------
; 552 | return API_error_num;                                                  
; 554 | else                                                                   
;----------------------------------------------------------------------
        bud       L281                  ; |552| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |552| 
;*      Branch Occurs to L281           ; |552| 
L179:        
	.line	50
;----------------------------------------------------------------------
; 555 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |555| 
        ldiu      1,r2                  ; |555| 
        ldiu      @CL22,r0              ; |555| 
        callu     r0                    ; far call to _API_STATUS	; |555| 
                                        ; |555| Far Call Occurs
        bu        L198                  ; |505| 
;*      Branch Occurs to L198           ; |505| 
L180:        
	.line	52
;----------------------------------------------------------------------
; 557 | else if (p<778.5)                                                      
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldfu      *+fp(5),f0            ; |557| 
        cmpf      @CL48,f0              ; |557| 
        bge       L186                  ; |557| 
;*      Branch Occurs to L186           ; |557| 
	.line	54
;----------------------------------------------------------------------
; 559 | if (t>90.0)                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |559| 
        cmpf      9.0000000000e+01,f0   ; |559| 
        ble       L184                  ; |559| 
;*      Branch Occurs to L184           ; |559| 
	.line	56
;----------------------------------------------------------------------
; 561 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |561| 
        ldiu      2,r2                  ; |561| 
        ldiu      @CL22,r0              ; |561| 
        callu     r0                    ; far call to _API_STATUS	; |561| 
                                        ; |561| Far Call Occurs
	.line	57
;----------------------------------------------------------------------
; 562 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	59
;----------------------------------------------------------------------
; 564 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |564| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |564| 
;*      Branch Occurs to L281           ; |564| 
L184:        
	.line	61
;----------------------------------------------------------------------
; 566 | else if (t>60.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |566| 
        cmpf      6.0000000000e+01,f0   ; |566| 
        ble       L198                  ; |566| 
;*      Branch Occurs to L198           ; |566| 
	.line	62
;----------------------------------------------------------------------
; 567 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |567| 
        ldiu      1,r2                  ; |567| 
        ldiu      @CL22,r0              ; |567| 
        callu     r0                    ; far call to _API_STATUS	; |567| 
                                        ; |567| Far Call Occurs
        bu        L198                  ; |505| 
;*      Branch Occurs to L198           ; |505| 
L186:        
	.line	64
;----------------------------------------------------------------------
; 569 | else if (p<824.0)                                                      
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldfu      *+fp(5),f0            ; |569| 
        cmpf      @CL49,f0              ; |569| 
        bge       L192                  ; |569| 
;*      Branch Occurs to L192           ; |569| 
	.line	66
;----------------------------------------------------------------------
; 571 | if (t>120.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |571| 
        cmpf      1.2000000000e+02,f0   ; |571| 
        ble       L190                  ; |571| 
;*      Branch Occurs to L190           ; |571| 
	.line	68
;----------------------------------------------------------------------
; 573 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |573| 
        ldiu      2,r2                  ; |573| 
        ldiu      @CL22,r0              ; |573| 
        callu     r0                    ; far call to _API_STATUS	; |573| 
                                        ; |573| Far Call Occurs
	.line	69
;----------------------------------------------------------------------
; 574 | GIEP; return API_error_num;                                            
;----------------------------------------------------------------------
	pop		ST			
        bud       L281                  ; |574| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |574| 
;*      Branch Occurs to L281           ; |574| 
L190:        
	.line	71
;----------------------------------------------------------------------
; 576 | else if (t>90.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |576| 
        cmpf      9.0000000000e+01,f0   ; |576| 
        ble       L198                  ; |576| 
;*      Branch Occurs to L198           ; |576| 
	.line	72
;----------------------------------------------------------------------
; 577 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |577| 
        ldiu      1,r2                  ; |577| 
        ldiu      @CL22,r0              ; |577| 
        callu     r0                    ; far call to _API_STATUS	; |577| 
                                        ; |577| Far Call Occurs
        bu        L198                  ; |505| 
;*      Branch Occurs to L198           ; |505| 
L192:        
	.line	74
;----------------------------------------------------------------------
; 579 | else if (p<=1075.0)                                                    
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldfu      *+fp(5),f0            ; |579| 
        cmpf      @CL46,f0              ; |579| 
        bgt       L198                  ; |579| 
;*      Branch Occurs to L198           ; |579| 
	.line	76
;----------------------------------------------------------------------
; 581 | if (t>150.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |581| 
        cmpf      1.5000000000e+02,f0   ; |581| 
        ble       L196                  ; |581| 
;*      Branch Occurs to L196           ; |581| 
	.line	78
;----------------------------------------------------------------------
; 583 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |583| 
        ldiu      2,r2                  ; |583| 
        ldiu      @CL22,r0              ; |583| 
        callu     r0                    ; far call to _API_STATUS	; |583| 
                                        ; |583| Far Call Occurs
	.line	79
;----------------------------------------------------------------------
; 584 | GIEP; return API_error_num;                                            
;----------------------------------------------------------------------
	pop		ST			
        bud       L281                  ; |584| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |584| 
;*      Branch Occurs to L281           ; |584| 
L196:        
	.line	81
;----------------------------------------------------------------------
; 586 | else if (t>120.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |586| 
        cmpf      1.2000000000e+02,f0   ; |586| 
        ble       L198                  ; |586| 
;*      Branch Occurs to L198           ; |586| 
	.line	82
;----------------------------------------------------------------------
; 587 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |587| 
        ldiu      1,r2                  ; |587| 
        ldiu      @CL22,r0              ; |587| 
        callu     r0                    ; far call to _API_STATUS	; |587| 
                                        ; |587| Far Call Occurs
L198:        
	.line	85
;----------------------------------------------------------------------
; 590 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |590| 
        ldiu      0,r0                  ; |590| 
        sti       r0,*ar0               ; |590| 
	.line	86
;----------------------------------------------------------------------
; 591 | k0 = 613.9723;                                                         
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldfu      @CL50,f0              ; |591| 
        stf       f0,*+fp(7)            ; |591| 
	.line	87
;----------------------------------------------------------------------
; 592 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |592| 
        stf       f0,*+fp(8)            ; |592| 
	.line	88
;----------------------------------------------------------------------
; 593 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |593| 
        stf       f0,*+fp(9)            ; |593| 
	.line	90
;----------------------------------------------------------------------
; 595 | break;                                                                 
; 597 | case 'B':                                                              
;----------------------------------------------------------------------
        bu        L278                  ; |595| 
;*      Branch Occurs to L278           ; |595| 
L199:        
	.line	94
;----------------------------------------------------------------------
; 599 | if ((t<-18.0) || (p<653.0) || (p>1075.0))                              
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldfu      *+fp(4),f0            ; |599| 
        cmpf      @CL44,f0              ; |599| 
        blt       L202                  ; |599| 
;*      Branch Occurs to L202           ; |599| 
        ldp       @CL51,DP
        ldfu      *+fp(5),f0            ; |599| 
        cmpf      @CL51,f0              ; |599| 
        blt       L202                  ; |599| 
;*      Branch Occurs to L202           ; |599| 
        ldp       @CL46,DP
        cmpf      @CL46,f0              ; |599| 
        ble       L204                  ; |599| 
;*      Branch Occurs to L204           ; |599| 
L202:        
	.line	96
;----------------------------------------------------------------------
; 601 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |601| 
        ldiu      2,r2                  ; |601| 
        ldiu      @CL22,r0              ; |601| 
        callu     r0                    ; far call to _API_STATUS	; |601| 
                                        ; |601| Far Call Occurs
	.line	97
;----------------------------------------------------------------------
; 602 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	99
;----------------------------------------------------------------------
; 604 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |604| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |604| 
;*      Branch Occurs to L281           ; |604| 
L204:        
	.line	101
;----------------------------------------------------------------------
; 606 | else if (p<778.5)                                                      
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldfu      *+fp(5),f0            ; |606| 
        cmpf      @CL48,f0              ; |606| 
        bge       L210                  ; |606| 
;*      Branch Occurs to L210           ; |606| 
	.line	103
;----------------------------------------------------------------------
; 608 | if (t>90.0)                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |608| 
        cmpf      9.0000000000e+01,f0   ; |608| 
        ble       L208                  ; |608| 
;*      Branch Occurs to L208           ; |608| 
	.line	105
;----------------------------------------------------------------------
; 610 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |610| 
        ldiu      2,r2                  ; |610| 
        ldiu      @CL22,r0              ; |610| 
        callu     r0                    ; far call to _API_STATUS	; |610| 
                                        ; |610| Far Call Occurs
	.line	106
;----------------------------------------------------------------------
; 611 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	108
;----------------------------------------------------------------------
; 613 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |613| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |613| 
;*      Branch Occurs to L281           ; |613| 
L208:        
	.line	110
;----------------------------------------------------------------------
; 615 | else if (t>60.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |615| 
        cmpf      6.0000000000e+01,f0   ; |615| 
        ble       L222                  ; |615| 
;*      Branch Occurs to L222           ; |615| 
	.line	111
;----------------------------------------------------------------------
; 616 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |616| 
        ldiu      1,r2                  ; |616| 
        ldiu      @CL22,r0              ; |616| 
        callu     r0                    ; far call to _API_STATUS	; |616| 
                                        ; |616| Far Call Occurs
        bu        L222                  ; |505| 
;*      Branch Occurs to L222           ; |505| 
L210:        
	.line	113
;----------------------------------------------------------------------
; 618 | else if (p<824.0)                                                      
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldfu      *+fp(5),f0            ; |618| 
        cmpf      @CL49,f0              ; |618| 
        bge       L216                  ; |618| 
;*      Branch Occurs to L216           ; |618| 
	.line	115
;----------------------------------------------------------------------
; 620 | if (t>120.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |620| 
        cmpf      1.2000000000e+02,f0   ; |620| 
        ble       L214                  ; |620| 
;*      Branch Occurs to L214           ; |620| 
	.line	117
;----------------------------------------------------------------------
; 622 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |622| 
        ldiu      2,r2                  ; |622| 
        ldiu      @CL22,r0              ; |622| 
        callu     r0                    ; far call to _API_STATUS	; |622| 
                                        ; |622| Far Call Occurs
	.line	118
;----------------------------------------------------------------------
; 623 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	120
;----------------------------------------------------------------------
; 625 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |625| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |625| 
;*      Branch Occurs to L281           ; |625| 
L214:        
	.line	122
;----------------------------------------------------------------------
; 627 | else if (t>90.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |627| 
        cmpf      9.0000000000e+01,f0   ; |627| 
        ble       L222                  ; |627| 
;*      Branch Occurs to L222           ; |627| 
	.line	123
;----------------------------------------------------------------------
; 628 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |628| 
        ldiu      1,r2                  ; |628| 
        ldiu      @CL22,r0              ; |628| 
        callu     r0                    ; far call to _API_STATUS	; |628| 
                                        ; |628| Far Call Occurs
        bu        L222                  ; |505| 
;*      Branch Occurs to L222           ; |505| 
L216:        
	.line	125
;----------------------------------------------------------------------
; 630 | else if (p<=1075.0)                                                    
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldfu      *+fp(5),f0            ; |630| 
        cmpf      @CL46,f0              ; |630| 
        bgt       L222                  ; |630| 
;*      Branch Occurs to L222           ; |630| 
	.line	127
;----------------------------------------------------------------------
; 632 | if (t>150.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |632| 
        cmpf      1.5000000000e+02,f0   ; |632| 
        ble       L220                  ; |632| 
;*      Branch Occurs to L220           ; |632| 
	.line	129
;----------------------------------------------------------------------
; 634 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |634| 
        ldiu      2,r2                  ; |634| 
        ldiu      @CL22,r0              ; |634| 
        callu     r0                    ; far call to _API_STATUS	; |634| 
                                        ; |634| Far Call Occurs
	.line	130
;----------------------------------------------------------------------
; 635 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	132
;----------------------------------------------------------------------
; 637 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |637| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |637| 
;*      Branch Occurs to L281           ; |637| 
L220:        
	.line	134
;----------------------------------------------------------------------
; 639 | else if (t>120.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |639| 
        cmpf      1.2000000000e+02,f0   ; |639| 
        ble       L222                  ; |639| 
;*      Branch Occurs to L222           ; |639| 
	.line	135
;----------------------------------------------------------------------
; 640 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |640| 
        ldiu      1,r2                  ; |640| 
        ldiu      @CL22,r0              ; |640| 
        callu     r0                    ; far call to _API_STATUS	; |640| 
                                        ; |640| Far Call Occurs
L222:        
	.line	138
;----------------------------------------------------------------------
; 643 | if (k_set[0]==-1)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |643| 
        ldiu      *ar0,r0               ; |643| 
        cmpi      -1,r0                 ; |643| 
        bne       L242                  ; |643| 
;*      Branch Occurs to L242           ; |643| 
	.line	140
;----------------------------------------------------------------------
; 645 | if ((p>=653.0) && (p<770.0))                                           
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldfu      *+fp(5),f0            ; |645| 
        cmpf      @CL51,f0              ; |645| 
        blt       L226                  ; |645| 
;*      Branch Occurs to L226           ; |645| 
        ldp       @CL52,DP
        cmpf      @CL52,f0              ; |645| 
        bge       L226                  ; |645| 
;*      Branch Occurs to L226           ; |645| 
	.line	141
;----------------------------------------------------------------------
; 646 | k_set[0] = 1;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |646| 
        sti       r0,*ar0               ; |646| 
        bu        L242                  ; |505| 
;*      Branch Occurs to L242           ; |505| 
L226:        
	.line	142
;----------------------------------------------------------------------
; 647 | else if ((p>=770.0) && (p<788.0))                                      
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldfu      *+fp(5),f0            ; |647| 
        cmpf      @CL52,f0              ; |647| 
        blt       L229                  ; |647| 
;*      Branch Occurs to L229           ; |647| 
        ldp       @CL53,DP
        cmpf      @CL53,f0              ; |647| 
        bge       L229                  ; |647| 
;*      Branch Occurs to L229           ; |647| 
	.line	143
;----------------------------------------------------------------------
; 648 | k_set[0] = 2;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |648| 
        ldiu      2,r0                  ; |648| 
        sti       r0,*ar0               ; |648| 
        bu        L242                  ; |505| 
;*      Branch Occurs to L242           ; |505| 
L229:        
	.line	144
;----------------------------------------------------------------------
; 649 | else if ((p>=788.0) && (p<839.0))                                      
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldfu      *+fp(5),f0            ; |649| 
        cmpf      @CL53,f0              ; |649| 
        blt       L232                  ; |649| 
;*      Branch Occurs to L232           ; |649| 
        ldp       @CL54,DP
        cmpf      @CL54,f0              ; |649| 
        bge       L232                  ; |649| 
;*      Branch Occurs to L232           ; |649| 
	.line	145
;----------------------------------------------------------------------
; 650 | k_set[0] = 3;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |650| 
        ldiu      3,r0                  ; |650| 
        sti       r0,*ar0               ; |650| 
        bu        L242                  ; |505| 
;*      Branch Occurs to L242           ; |505| 
L232:        
	.line	146
;----------------------------------------------------------------------
; 651 | else if ((p>=839.0) && (p<=1075.0))                                    
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldfu      *+fp(5),f0            ; |651| 
        cmpf      @CL54,f0              ; |651| 
        blt       L235                  ; |651| 
;*      Branch Occurs to L235           ; |651| 
        ldp       @CL46,DP
        cmpf      @CL46,f0              ; |651| 
        bgt       L235                  ; |651| 
;*      Branch Occurs to L235           ; |651| 
	.line	147
;----------------------------------------------------------------------
; 652 | k_set[0] = 4;                                                          
; 653 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |652| 
        ldiu      4,r0                  ; |652| 
        sti       r0,*ar0               ; |652| 
        bu        L242                  ; |505| 
;*      Branch Occurs to L242           ; |505| 
L235:        
	.line	149
;----------------------------------------------------------------------
; 654 | k_set[0] = -1;                                                         
; 657 | switch (k_set[0])                                                      
; 659 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |654| 
        ldiu      -1,r0                 ; |654| 
        sti       r0,*ar0               ; |654| 
        bu        L242                  ; |505| 
;*      Branch Occurs to L242           ; |505| 
L236:        
	.line	156
;----------------------------------------------------------------------
; 661 | k0 = 346.4228;                                                         
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldfu      @CL55,f0              ; |661| 
        stf       f0,*+fp(7)            ; |661| 
	.line	157
;----------------------------------------------------------------------
; 662 | k1 = 0.4388;                                                           
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldfu      @CL56,f0              ; |662| 
        stf       f0,*+fp(8)            ; |662| 
	.line	158
;----------------------------------------------------------------------
; 663 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |663| 
        stf       f0,*+fp(9)            ; |663| 
	.line	160
;----------------------------------------------------------------------
; 665 | break;                                                                 
; 667 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L278                  ; |665| 
;*      Branch Occurs to L278           ; |665| 
L237:        
	.line	164
;----------------------------------------------------------------------
; 669 | k0 = 2680.3206;                                                        
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldfu      @CL57,f0              ; |669| 
        stf       f0,*+fp(7)            ; |669| 
	.line	165
;----------------------------------------------------------------------
; 670 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |670| 
        stf       f0,*+fp(8)            ; |670| 
	.line	166
;----------------------------------------------------------------------
; 671 | k2 = -0.00336312;                                                      
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldfu      @CL58,f0              ; |671| 
        stf       f0,*+fp(9)            ; |671| 
	.line	168
;----------------------------------------------------------------------
; 673 | break;                                                                 
; 675 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L278                  ; |673| 
;*      Branch Occurs to L278           ; |673| 
L238:        
	.line	172
;----------------------------------------------------------------------
; 677 | k0 = 594.5470;                                                         
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldfu      @CL59,f0              ; |677| 
        stf       f0,*+fp(7)            ; |677| 
	.line	173
;----------------------------------------------------------------------
; 678 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |678| 
        stf       f0,*+fp(8)            ; |678| 
	.line	174
;----------------------------------------------------------------------
; 679 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |679| 
        stf       f0,*+fp(9)            ; |679| 
	.line	176
;----------------------------------------------------------------------
; 681 | break;                                                                 
; 683 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L278                  ; |681| 
;*      Branch Occurs to L278           ; |681| 
L239:        
	.line	180
;----------------------------------------------------------------------
; 685 | k0 = 186.9696;                                                         
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldfu      @CL60,f0              ; |685| 
        stf       f0,*+fp(7)            ; |685| 
	.line	181
;----------------------------------------------------------------------
; 686 | k1 = 0.4862;                                                           
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldfu      @CL61,f0              ; |686| 
        stf       f0,*+fp(8)            ; |686| 
	.line	182
;----------------------------------------------------------------------
; 687 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |687| 
        stf       f0,*+fp(9)            ; |687| 
	.line	184
;----------------------------------------------------------------------
; 689 | break;                                                                 
; 691 | case 0:                                                                
; 692 | default:                                                               
;----------------------------------------------------------------------
        bu        L278                  ; |689| 
;*      Branch Occurs to L278           ; |689| 
L240:        
	.line	189
;----------------------------------------------------------------------
; 694 | k_set[0] = -1;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |694| 
        ldiu      -1,r0                 ; |694| 
        sti       r0,*ar0               ; |694| 
	.line	190
;----------------------------------------------------------------------
; 695 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	192
;----------------------------------------------------------------------
; 697 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |697| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |697| 
;*      Branch Occurs to L281           ; |697| 
L242:        
	.line	152
        ldiu      *+fp(3),ar0           ; |657| 
        ldiu      *ar0,r0               ; |657| 
        cmpi      0,r0                  ; |657| 
        beq       L240                  ; |657| 
;*      Branch Occurs to L240           ; |657| 
        cmpi      1,r0                  ; |657| 
        beq       L236                  ; |657| 
;*      Branch Occurs to L236           ; |657| 
        cmpi      2,r0                  ; |657| 
        beq       L237                  ; |657| 
;*      Branch Occurs to L237           ; |657| 
        cmpi      3,r0                  ; |657| 
        beq       L238                  ; |657| 
;*      Branch Occurs to L238           ; |657| 
        cmpi      4,r0                  ; |657| 
        beq       L239                  ; |657| 
;*      Branch Occurs to L239           ; |657| 
        bu        L240                  ; |657| 
;*      Branch Occurs to L240           ; |657| 
	.line	196
;----------------------------------------------------------------------
; 701 | break;                                                                 
; 703 | case 'C':                                                              
;----------------------------------------------------------------------
L249:        
	.line	200
;----------------------------------------------------------------------
; 705 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |705| 
        ldiu      0,r0                  ; |705| 
        sti       r0,*ar0               ; |705| 
	.line	201
;----------------------------------------------------------------------
; 706 | a                = f->a * 10e6;                                        
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      *+fp(13),ir0          ; |706| 
        ldiu      399,ar0               ; |706| 
        ldfu      @CL33,f0              ; |706| 
        mpyf3     *+ar0(ir0),f0,f0      ; |706| 
        stf       f0,*+fp(6)            ; |706| 
	.line	202
;----------------------------------------------------------------------
; 707 | t1               = (t*1.8) + 32.0;                                     
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldfu      @CL62,f0              ; |707| 
        mpyf      *+fp(4),f0            ; |707| 
        addf      3.2000000000e+01,f0   ; |707| 
        stf       f0,*+fp(10)           ; |707| 
	.line	204
;----------------------------------------------------------------------
; 709 | if ((t1<0.0) || (a<270.0) || (a>930.0))                                
;----------------------------------------------------------------------
        cmpf      0.0000000000e+00,f0   ; |709| 
        blt       L252                  ; |709| 
;*      Branch Occurs to L252           ; |709| 
        ldp       @CL34,DP
        ldfu      *+fp(6),f0            ; |709| 
        cmpf      @CL34,f0              ; |709| 
        blt       L252                  ; |709| 
;*      Branch Occurs to L252           ; |709| 
        ldp       @CL35,DP
        cmpf      @CL35,f0              ; |709| 
        ble       L254                  ; |709| 
;*      Branch Occurs to L254           ; |709| 
L252:        
	.line	206
;----------------------------------------------------------------------
; 711 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |711| 
        ldiu      2,r2                  ; |711| 
        ldiu      @CL22,r0              ; |711| 
        callu     r0                    ; far call to _API_STATUS	; |711| 
                                        ; |711| Far Call Occurs
	.line	207
;----------------------------------------------------------------------
; 712 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	209
;----------------------------------------------------------------------
; 714 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |714| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |714| 
;*      Branch Occurs to L281           ; |714| 
L254:        
	.line	211
;----------------------------------------------------------------------
; 716 | else if ((a<510.0) && (t1>300.0))                                      
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldfu      *+fp(6),f0            ; |716| 
        cmpf      @CL36,f0              ; |716| 
        bge       L258                  ; |716| 
;*      Branch Occurs to L258           ; |716| 
        ldp       @CL24,DP
        ldfu      *+fp(10),f0           ; |716| 
        cmpf      @CL24,f0              ; |716| 
        ble       L258                  ; |716| 
;*      Branch Occurs to L258           ; |716| 
	.line	213
;----------------------------------------------------------------------
; 718 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |718| 
        ldiu      2,r2                  ; |718| 
        ldiu      @CL22,r0              ; |718| 
        callu     r0                    ; far call to _API_STATUS	; |718| 
                                        ; |718| Far Call Occurs
	.line	214
;----------------------------------------------------------------------
; 719 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	216
;----------------------------------------------------------------------
; 721 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |721| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |721| 
;*      Branch Occurs to L281           ; |721| 
L258:        
	.line	218
;----------------------------------------------------------------------
; 723 | else if ((a<530.0) && (t1>250.0))                                      
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldfu      *+fp(6),f0            ; |723| 
        cmpf      @CL37,f0              ; |723| 
        bge       L262                  ; |723| 
;*      Branch Occurs to L262           ; |723| 
        ldfu      *+fp(10),f0           ; |723| 
        cmpf      2.5000000000e+02,f0   ; |723| 
        ble       L262                  ; |723| 
;*      Branch Occurs to L262           ; |723| 
	.line	220
;----------------------------------------------------------------------
; 725 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |725| 
        ldiu      2,r2                  ; |725| 
        ldiu      @CL22,r0              ; |725| 
        callu     r0                    ; far call to _API_STATUS	; |725| 
                                        ; |725| Far Call Occurs
	.line	221
;----------------------------------------------------------------------
; 726 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	223
;----------------------------------------------------------------------
; 728 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |728| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |728| 
;*      Branch Occurs to L281           ; |728| 
L262:        
	.line	225
;----------------------------------------------------------------------
; 730 | else if ((a<=930.0) && (t1>200.0))                                     
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldfu      *+fp(6),f0            ; |730| 
        cmpf      @CL35,f0              ; |730| 
        bgt       L265                  ; |730| 
;*      Branch Occurs to L265           ; |730| 
        ldfu      *+fp(10),f0           ; |730| 
        cmpf      2.0000000000e+02,f0   ; |730| 
        ble       L265                  ; |730| 
;*      Branch Occurs to L265           ; |730| 
	.line	227
;----------------------------------------------------------------------
; 732 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |732| 
        ldiu      2,r2                  ; |732| 
        ldiu      @CL22,r0              ; |732| 
        callu     r0                    ; far call to _API_STATUS	; |732| 
                                        ; |732| Far Call Occurs
	.line	228
;----------------------------------------------------------------------
; 733 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	230
;----------------------------------------------------------------------
; 735 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |735| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |735| 
;*      Branch Occurs to L281           ; |735| 
L265:        
	.line	233
;----------------------------------------------------------------------
; 738 | a = f->a;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |738| 
        ldiu      399,ar0               ; |738| 
        ldfu      *+ar0(ir0),f0         ; |738| 
        stf       f0,*+fp(6)            ; |738| 
	.line	235
;----------------------------------------------------------------------
; 740 | break;                                                                 
; 742 | case 'D':                                                              
; 743 | default:                                                               
;----------------------------------------------------------------------
        bu        L278                  ; |740| 
;*      Branch Occurs to L278           ; |740| 
L266:        
	.line	240
;----------------------------------------------------------------------
; 745 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |745| 
        ldiu      398,ar0               ; |745| 
        ldiu      17408,r0              ; |745| 
        sti       r0,*+ar0(ir0)         ; |745| 
	.line	241
;----------------------------------------------------------------------
; 746 | p                        = kgm3_to_API(r);                             
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldfu      *+fp(2),f2            ; |746| 
        ldiu      @CL21,r0              ; |746| 
        callu     r0                    ; far call to _kgm3_to_API	; |746| 
                                        ; |746| Far Call Occurs
        stf       f0,*+fp(5)            ; |746| 
	.line	242
;----------------------------------------------------------------------
; 747 | t1                       = (t*1.8) + 32.0;                             
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldfu      @CL62,f0              ; |747| 
        mpyf      *+fp(4),f0            ; |747| 
        addf      3.2000000000e+01,f0   ; |747| 
        stf       f0,*+fp(10)           ; |747| 
	.line	244
;----------------------------------------------------------------------
; 749 | if ((p<-10.0) || (p>45.0) || (t1<0.0) || (t1>300.0))                   
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldfu      *+fp(5),f0            ; |749| 
        cmpf      @CL38,f0              ; |749| 
        blt       L270                  ; |749| 
;*      Branch Occurs to L270           ; |749| 
        cmpf      4.5000000000e+01,f0   ; |749| 
        bgt       L270                  ; |749| 
;*      Branch Occurs to L270           ; |749| 
        ldfu      *+fp(10),f0           ; |749| 
        cmpf      0.0000000000e+00,f0   ; |749| 
        blt       L270                  ; |749| 
;*      Branch Occurs to L270           ; |749| 
        ldp       @CL24,DP
        cmpf      @CL24,f0              ; |749| 
        ble       L271                  ; |749| 
;*      Branch Occurs to L271           ; |749| 
L270:        
	.line	246
;----------------------------------------------------------------------
; 751 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |751| 
        ldiu      2,r2                  ; |751| 
        ldiu      @CL22,r0              ; |751| 
        callu     r0                    ; far call to _API_STATUS	; |751| 
                                        ; |751| Far Call Occurs
	.line	247
;----------------------------------------------------------------------
; 752 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	249
;----------------------------------------------------------------------
; 754 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L281                  ; |754| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |754| 
;*      Branch Occurs to L281           ; |754| 
L271:        
	.line	252
;----------------------------------------------------------------------
; 757 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |757| 
        ldiu      0,r0                  ; |757| 
        sti       r0,*ar0               ; |757| 
	.line	253
;----------------------------------------------------------------------
; 758 | k0               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |758| 
        stf       f0,*+fp(7)            ; |758| 
	.line	254
;----------------------------------------------------------------------
; 759 | k1               = 0.6278;                                             
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldfu      @CL63,f0              ; |759| 
        stf       f0,*+fp(8)            ; |759| 
	.line	255
;----------------------------------------------------------------------
; 760 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |760| 
        stf       f0,*+fp(9)            ; |760| 
	.line	257
;----------------------------------------------------------------------
; 762 | break;                                                                 
;----------------------------------------------------------------------
        bu        L278                  ; |762| 
;*      Branch Occurs to L278           ; |762| 
L273:        
	.line	28
        ldiu      *+fp(13),ir0          ; |533| 
        ldiu      398,ar0               ; |533| 
        ldiu      -8,r0                 ; |533| 
        ash3      r0,*+ar0(ir0),r0      ; |533| 
        cmpi      65,r0                 ; |533| 
        beq       L170                  ; |533| 
;*      Branch Occurs to L170           ; |533| 
        cmpi      66,r0                 ; |533| 
        beq       L199                  ; |533| 
;*      Branch Occurs to L199           ; |533| 
        cmpi      67,r0                 ; |533| 
        beq       L249                  ; |533| 
;*      Branch Occurs to L249           ; |533| 
        cmpi      68,r0                 ; |533| 
        beq       L266                  ; |533| 
;*      Branch Occurs to L266           ; |533| 
        bu        L266                  ; |533| 
;*      Branch Occurs to L266           ; |533| 
L278:        
	.line	261
;----------------------------------------------------------------------
; 766 | t -= 15.0;                                                             
;----------------------------------------------------------------------
        ldfu      1.5000000000e+01,f0   ; |766| 
        subrf     *+fp(4),f0            ; |766| 
        stf       f0,*+fp(4)            ; |766| 
	.line	262
;----------------------------------------------------------------------
; 767 | p  = r;                                                                
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |767| 
        stf       f0,*+fp(5)            ; |767| 
	.line	264
;----------------------------------------------------------------------
; 769 | if ((f->API_TABLE>>8) != 'C')                                          
; 770 | {//a = (k0/(p*p)) + (k1/p) + k2;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |769| 
        ldiu      398,ar0               ; |769| 
        ldiu      -8,r0                 ; |769| 
        ash3      r0,*+ar0(ir0),r0      ; |769| 
        cmpi      67,r0                 ; |769| 
        beq       L280                  ; |769| 
;*      Branch Occurs to L280           ; |769| 
	.line	266
;----------------------------------------------------------------------
; 771 | t1 = truncate((k0/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |771| 
        ldfu      *+fp(5),f1            ; |771| 
        call      DIV_F30               ; |771| 
                                        ; |771| Call Occurs
        ldp       @CL40,DP
        ldfu      f0,f2                 ; |771| 
        ldiu      @CL40,r1              ; |771| 
        ldiu      8,ar2                 ; |771| 
        callu     r1                    ; far call to _truncate	; |771| 
                                        ; |771| Far Call Occurs
        stf       f0,*+fp(10)           ; |771| 
	.line	267
;----------------------------------------------------------------------
; 772 | t2 = truncate((t1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |772| 
        call      DIV_F30               ; |772| 
                                        ; |772| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |772| 
        ldiu      8,ar2                 ; |772| 
        ldfu      f0,f2                 ; |772| 
        callu     r1                    ; far call to _truncate	; |772| 
                                        ; |772| Far Call Occurs
        stf       f0,*+fp(11)           ; |772| 
	.line	268
;----------------------------------------------------------------------
; 773 | t3 = truncate((k1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |773| 
        ldfu      *+fp(8),f0            ; |773| 
        call      DIV_F30               ; |773| 
                                        ; |773| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |773| 
        ldfu      f0,f2                 ; |773| 
        ldiu      8,ar2                 ; |773| 
        callu     r1                    ; far call to _truncate	; |773| 
                                        ; |773| Far Call Occurs
        stf       f0,*+fp(12)           ; |773| 
	.line	269
;----------------------------------------------------------------------
; 774 | a  = sigfig((t2+t3+k2), 4);                                            
;----------------------------------------------------------------------
        ldfu      f0,f2
        addf      *+fp(11),f2           ; |774| 
        ldiu      4,ar2                 ; |774| 
        ldp       @CL41,DP
        addf      *+fp(9),f2            ; |774| 
        ldiu      @CL41,r0              ; |774| 
        callu     r0                    ; far call to _sigfig	; |774| 
                                        ; |774| Far Call Occurs
        stf       f0,*+fp(6)            ; |774| 
L280:        
	.line	272
;----------------------------------------------------------------------
; 777 | t = p * exp(-a*t*(1.0+0.8*a*t));                                       
;----------------------------------------------------------------------
        ldfu      *+fp(6),f1            ; |777| 
        ldp       @CL42,DP
        negf      *+fp(6),f0            ; |777| 
        mpyf      @CL42,f1              ; |777| 
        mpyf      *+fp(4),f0            ; |777| 
        ldp       @CL43,DP
        mpyf      *+fp(4),f1            ; |777| 
        ldiu      @CL43,r3              ; |777| 
        addf      1.0000000000e+00,f1   ; |777| 
        mpyf3     f1,f0,f2              ; |777| 
        callu     r3                    ; far call to _exp	; |777| 
                                        ; |777| Far Call Occurs
        mpyf      *+fp(5),f0            ; |777| 
        stf       f0,*+fp(4)            ; |777| 
	.line	274
;----------------------------------------------------------------------
; 779 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	275
;----------------------------------------------------------------------
; 780 | return t;                                                              
;----------------------------------------------------------------------
L281:        
	.line	276
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |781| 
        ldiu      *fp,fp                ; |781| 
                                        ; Restore SOE Registers
        pop       ar4                   ; |781| 
                                        ; Unallocate the Frame
        subi      15,sp                 ; |781| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	781,000001000h,13


	.sect	 ".text"

	.global	_API_PT_ST
	.sym	_API_PT_ST,_API_PT_ST,39,2,0
	.func	798
;******************************************************************************
;* FUNCTION NAME: _API_PT_ST                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar2,fp,ir0,st,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 16 Auto + 0 SOE = 18 words        *
;******************************************************************************
_API_PT_ST:
;* ar2   assigned to _fcidx
	.sym	_fcidx,10,4,17,32
;* f2    assigned to _r
	.sym	_r,2,7,17,32
;* r3    assigned to _F60
	.sym	_F60,3,14,17,32
;* rc    assigned to _RET_VCF
	.sym	_RET_VCF,19,14,17,32
	.sym	_fcidx,1,4,1,32
	.sym	_r,2,7,1,32
	.sym	_F60,3,14,1,32
	.sym	_RET_VCF,4,14,1,32
	.sym	_pini,5,7,1,32
	.sym	_pn,6,7,1,32
	.sym	_pnext,7,7,1,32
	.sym	_a,8,7,1,32
	.sym	_p,9,7,1,32
	.sym	_vcf,10,7,1,32
	.sym	_i,11,4,1,32
	.sym	_k,12,4,1,32
	.sym	_k0,13,4,1,32
	.sym	_k_change,14,14,1,32
	.sym	_cont,15,14,1,32
	.sym	_f,16,24,1,32,.fake31
	.line	1
;----------------------------------------------------------------------
; 798 | double API_PT_ST(const int fcidx, const double r, const BOOL F60, const
;     |  BOOL RET_VCF)                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      16,sp
	.line	2
;----------------------------------------------------------------------
; 800 | double pini;    /* initial data */                                     
; 801 | double pn;              /* calculated data */                          
; 802 | double pnext;                                                          
; 803 | double a;               /* API @ process temperature */                
; 804 | double p;               /* process API */                              
; 805 | double vcf;                                                            
; 806 | int i;                  /* Counter */                                  
; 807 | int k, k0;              /* Constants */                                
; 808 | BOOL k_change;  /* Change constants? */                                
; 809 | BOOL cont;              /* Continue? */                                
; 810 | FLOW_COMP* f;   /* FC[fcidx] - Flow Computer @ index */                
;----------------------------------------------------------------------
        sti       rc,*+fp(4)            ; |799| 
        sti       r3,*+fp(3)            ; |799| 
        stf       f2,*+fp(2)            ; |799| 
        sti       ar2,*+fp(1)           ; |799| 
	.line	15
;----------------------------------------------------------------------
; 812 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	17
;----------------------------------------------------------------------
; 814 | i = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |814| 
        sti       r0,*+fp(11)           ; |814| 
	.line	18
;----------------------------------------------------------------------
; 815 | f = &FC[fcidx];                                                        
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      ar2,r0
        mpyi      1336,r0               ; |815| 
        addi      @CL20,r0              ; |815| Unsigned
        sti       r0,*+fp(16)           ; |815| 
	.line	19
;----------------------------------------------------------------------
; 816 | pini = r;                                                              
;----------------------------------------------------------------------
        ldfu      f2,f0
        stf       f0,*+fp(5)            ; |816| 
	.line	20
;----------------------------------------------------------------------
; 817 | pn = pini;                                                             
;----------------------------------------------------------------------
        stf       f0,*+fp(6)            ; |817| 
	.line	21
;----------------------------------------------------------------------
; 818 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |818| 
        stf       f0,*+fp(7)            ; |818| 
	.line	22
;----------------------------------------------------------------------
; 819 | k = -1;                                                                
; 821 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      -1,r0                 ; |819| 
        sti       r0,*+fp(12)           ; |819| 
L284:        
	.line	26
;----------------------------------------------------------------------
; 823 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |823| 
        addi      *+fp(11),r0           ; |823| 
        sti       r0,*+fp(11)           ; |823| 
	.line	28
;----------------------------------------------------------------------
; 825 | if (i>25)                                                              
;----------------------------------------------------------------------
        cmpi      25,r0                 ; |825| 
        ble       L286                  ; |825| 
;*      Branch Occurs to L286           ; |825| 
	.line	30
;----------------------------------------------------------------------
; 827 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |827| 
        ldiu      2,r2                  ; |827| 
        ldiu      @CL22,r0              ; |827| 
        callu     r0                    ; far call to _API_STATUS	; |827| 
                                        ; |827| Far Call Occurs
	.line	31
;----------------------------------------------------------------------
; 828 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |828| 
        stf       f0,*+fp(7)            ; |828| 
	.line	33
;----------------------------------------------------------------------
; 830 | break;                                                                 
;----------------------------------------------------------------------
        bu        L349                  ; |830| 
;*      Branch Occurs to L349           ; |830| 
L286:        
	.line	36
;----------------------------------------------------------------------
; 833 | k0 = k;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |833| 
        sti       r0,*+fp(13)           ; |833| 
	.line	38
;----------------------------------------------------------------------
; 835 | if (F60)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |835| 
        cmpi      0,r0                  ; |835| 
        beq       L288                  ; |835| 
;*      Branch Occurs to L288           ; |835| 
	.line	39
;----------------------------------------------------------------------
; 836 | a = API_60F_PT(fcidx, pn, &k);                                         
; 837 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      fp,r3                 ; |836| 
        ldiu      *+fp(1),ar2           ; |836| 
        ldfu      *+fp(6),f2            ; |836| 
        ldiu      @CL64,r0              ; |836| 
        addi      12,r3                 ; |836| 
        callu     r0                    ; far call to _API_60F_PT	; |836| 
                                        ; |836| Far Call Occurs
        stf       f0,*+fp(8)            ; |836| 
        bu        L289                  ; |797| 
;*      Branch Occurs to L289           ; |797| 
L288:        
	.line	41
;----------------------------------------------------------------------
; 838 | a = API_15C_PT(fcidx, pn, &k);                                         
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      fp,r3                 ; |838| 
        ldiu      *+fp(1),ar2           ; |838| 
        ldfu      *+fp(6),f2            ; |838| 
        ldiu      @CL65,r0              ; |838| 
        addi      12,r3                 ; |838| 
        callu     r0                    ; far call to _API_15C_PT	; |838| 
                                        ; |838| Far Call Occurs
        stf       f0,*+fp(8)            ; |838| 
L289:        
	.line	43
;----------------------------------------------------------------------
; 840 | if (a==API_error_num)                                                  
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      *+fp(8),f0            ; |840| 
        cmpf      @CL23,f0              ; |840| 
        bne       L291                  ; |840| 
;*      Branch Occurs to L291           ; |840| 
	.line	45
;----------------------------------------------------------------------
; 842 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |842| 
        stf       f0,*+fp(7)            ; |842| 
	.line	47
;----------------------------------------------------------------------
; 844 | break;                                                                 
;----------------------------------------------------------------------
        bu        L349                  ; |844| 
;*      Branch Occurs to L349           ; |844| 
L291:        
	.line	50
;----------------------------------------------------------------------
; 847 | p                = kgm3_to_API(a);                                     
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldfu      *+fp(8),f2            ; |847| 
        ldiu      @CL21,r0              ; |847| 
        callu     r0                    ; far call to _kgm3_to_API	; |847| 
                                        ; |847| Far Call Occurs
        stf       f0,*+fp(9)            ; |847| 
	.line	51
;----------------------------------------------------------------------
; 848 | k_change = FALSE;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |848| 
        sti       r0,*+fp(14)           ; |848| 
	.line	52
;----------------------------------------------------------------------
; 849 | cont     = FALSE;                                                      
; 851 | switch (f->API_TABLE>>8)                                               
; 853 |         case 'A':       /* crude oil */                                
;----------------------------------------------------------------------
        sti       r0,*+fp(15)           ; |849| 
        bu        L339                  ; |797| 
;*      Branch Occurs to L339           ; |797| 
	.line	57
;----------------------------------------------------------------------
; 854 | break;                                                                 
; 855 | case 'B':                                                              
;----------------------------------------------------------------------
L293:        
	.line	60
;----------------------------------------------------------------------
; 857 | if (F60)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |857| 
        cmpi      0,r0                  ; |857| 
        beq       L314                  ; |857| 
;*      Branch Occurs to L314           ; |857| 
	.line	62
;----------------------------------------------------------------------
; 859 | if ((p>=0.0) && (p<37.0))                                              
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |859| 
        cmpf      0.0000000000e+00,f0   ; |859| 
        blt       L299                  ; |859| 
;*      Branch Occurs to L299           ; |859| 
        cmpf      3.7000000000e+01,f0   ; |859| 
        bge       L299                  ; |859| 
;*      Branch Occurs to L299           ; |859| 
	.line	64
;----------------------------------------------------------------------
; 861 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |861| 
        cmpi      *+fp(13),r0           ; |861| 
        beq       L334                  ; |861| 
;*      Branch Occurs to L334           ; |861| 
	.line	66
;----------------------------------------------------------------------
; 863 | k = 1;                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |863| 
        sti       r0,*+fp(12)           ; |863| 
	.line	68
;----------------------------------------------------------------------
; 865 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |865| 
        cmpi      -1,r0                 ; |865| 
        beq       L334                  ; |865| 
;*      Branch Occurs to L334           ; |865| 
	.line	69
;----------------------------------------------------------------------
; 866 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |866| 
        sti       r0,*+fp(14)           ; |866| 
        bu        L334                  ; |797| 
;*      Branch Occurs to L334           ; |797| 
L299:        
	.line	72
;----------------------------------------------------------------------
; 869 | else if ((p>=37.0) && (p<48.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |869| 
        cmpf      3.7000000000e+01,f0   ; |869| 
        blt       L304                  ; |869| 
;*      Branch Occurs to L304           ; |869| 
        cmpf      4.8000000000e+01,f0   ; |869| 
        bge       L304                  ; |869| 
;*      Branch Occurs to L304           ; |869| 
	.line	74
;----------------------------------------------------------------------
; 871 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |871| 
        cmpi      *+fp(13),r0           ; |871| 
        beq       L334                  ; |871| 
;*      Branch Occurs to L334           ; |871| 
	.line	76
;----------------------------------------------------------------------
; 873 | k = 2;                                                                 
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |873| 
        sti       r0,*+fp(12)           ; |873| 
	.line	78
;----------------------------------------------------------------------
; 875 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |875| 
        cmpi      -1,r0                 ; |875| 
        beq       L334                  ; |875| 
;*      Branch Occurs to L334           ; |875| 
	.line	79
;----------------------------------------------------------------------
; 876 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |876| 
        sti       r0,*+fp(14)           ; |876| 
        bu        L334                  ; |797| 
;*      Branch Occurs to L334           ; |797| 
L304:        
	.line	82
;----------------------------------------------------------------------
; 879 | else if ((p>=48.0) && (p<52.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |879| 
        cmpf      4.8000000000e+01,f0   ; |879| 
        blt       L309                  ; |879| 
;*      Branch Occurs to L309           ; |879| 
        cmpf      5.2000000000e+01,f0   ; |879| 
        bge       L309                  ; |879| 
;*      Branch Occurs to L309           ; |879| 
	.line	84
;----------------------------------------------------------------------
; 881 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |881| 
        cmpi      *+fp(13),r0           ; |881| 
        beq       L334                  ; |881| 
;*      Branch Occurs to L334           ; |881| 
	.line	86
;----------------------------------------------------------------------
; 883 | k = 3;                                                                 
;----------------------------------------------------------------------
        ldiu      3,r0                  ; |883| 
        sti       r0,*+fp(12)           ; |883| 
	.line	88
;----------------------------------------------------------------------
; 885 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |885| 
        cmpi      -1,r0                 ; |885| 
        beq       L334                  ; |885| 
;*      Branch Occurs to L334           ; |885| 
	.line	89
;----------------------------------------------------------------------
; 886 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |886| 
        sti       r0,*+fp(14)           ; |886| 
        bu        L334                  ; |797| 
;*      Branch Occurs to L334           ; |797| 
L309:        
	.line	92
;----------------------------------------------------------------------
; 889 | else if ((p>=52.0) && (p<=85.0))                                       
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |889| 
        cmpf      5.2000000000e+01,f0   ; |889| 
        blt       L334                  ; |889| 
;*      Branch Occurs to L334           ; |889| 
        cmpf      8.5000000000e+01,f0   ; |889| 
        bgt       L334                  ; |889| 
;*      Branch Occurs to L334           ; |889| 
	.line	94
;----------------------------------------------------------------------
; 891 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |891| 
        cmpi      *+fp(13),r0           ; |891| 
        beq       L334                  ; |891| 
;*      Branch Occurs to L334           ; |891| 
	.line	96
;----------------------------------------------------------------------
; 893 | k = 4;                                                                 
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |893| 
        sti       r0,*+fp(12)           ; |893| 
	.line	98
;----------------------------------------------------------------------
; 895 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |895| 
        cmpi      -1,r0                 ; |895| 
        beq       L334                  ; |895| 
;*      Branch Occurs to L334           ; |895| 
	.line	99
;----------------------------------------------------------------------
; 896 | k_change = TRUE;                                                       
; 900 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |896| 
        sti       r0,*+fp(14)           ; |896| 
        bu        L334                  ; |797| 
;*      Branch Occurs to L334           ; |797| 
L314:        
	.line	105
;----------------------------------------------------------------------
; 902 | if ((p>=653.0) && (p<770.0))                                           
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldfu      *+fp(9),f0            ; |902| 
        cmpf      @CL51,f0              ; |902| 
        blt       L319                  ; |902| 
;*      Branch Occurs to L319           ; |902| 
        ldp       @CL52,DP
        cmpf      @CL52,f0              ; |902| 
        bge       L319                  ; |902| 
;*      Branch Occurs to L319           ; |902| 
	.line	107
;----------------------------------------------------------------------
; 904 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |904| 
        cmpi      *+fp(13),r0           ; |904| 
        beq       L344                  ; |904| 
;*      Branch Occurs to L344           ; |904| 
	.line	109
;----------------------------------------------------------------------
; 906 | k = 1;                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |906| 
        sti       r0,*+fp(12)           ; |906| 
	.line	111
;----------------------------------------------------------------------
; 908 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |908| 
        cmpi      -1,r0                 ; |908| 
        beq       L344                  ; |908| 
;*      Branch Occurs to L344           ; |908| 
	.line	112
;----------------------------------------------------------------------
; 909 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |909| 
        sti       r0,*+fp(14)           ; |909| 
        bu        L344                  ; |797| 
;*      Branch Occurs to L344           ; |797| 
L319:        
	.line	115
;----------------------------------------------------------------------
; 912 | else if ((p>=770.0) && (p<788.0))                                      
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldfu      *+fp(9),f0            ; |912| 
        cmpf      @CL52,f0              ; |912| 
        blt       L324                  ; |912| 
;*      Branch Occurs to L324           ; |912| 
        ldp       @CL53,DP
        cmpf      @CL53,f0              ; |912| 
        bge       L324                  ; |912| 
;*      Branch Occurs to L324           ; |912| 
	.line	117
;----------------------------------------------------------------------
; 914 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |914| 
        cmpi      *+fp(13),r0           ; |914| 
        beq       L344                  ; |914| 
;*      Branch Occurs to L344           ; |914| 
	.line	119
;----------------------------------------------------------------------
; 916 | k = 2;                                                                 
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |916| 
        sti       r0,*+fp(12)           ; |916| 
	.line	121
;----------------------------------------------------------------------
; 918 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |918| 
        cmpi      -1,r0                 ; |918| 
        beq       L344                  ; |918| 
;*      Branch Occurs to L344           ; |918| 
	.line	122
;----------------------------------------------------------------------
; 919 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |919| 
        sti       r0,*+fp(14)           ; |919| 
        bu        L344                  ; |797| 
;*      Branch Occurs to L344           ; |797| 
L324:        
	.line	125
;----------------------------------------------------------------------
; 922 | else if ((p>=788.0) && (p<839.0))                                      
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldfu      *+fp(9),f0            ; |922| 
        cmpf      @CL53,f0              ; |922| 
        blt       L329                  ; |922| 
;*      Branch Occurs to L329           ; |922| 
        ldp       @CL54,DP
        cmpf      @CL54,f0              ; |922| 
        bge       L329                  ; |922| 
;*      Branch Occurs to L329           ; |922| 
	.line	127
;----------------------------------------------------------------------
; 924 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |924| 
        cmpi      *+fp(13),r0           ; |924| 
        beq       L344                  ; |924| 
;*      Branch Occurs to L344           ; |924| 
	.line	129
;----------------------------------------------------------------------
; 926 | k = 3;                                                                 
;----------------------------------------------------------------------
        ldiu      3,r0                  ; |926| 
        sti       r0,*+fp(12)           ; |926| 
	.line	131
;----------------------------------------------------------------------
; 928 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |928| 
        cmpi      -1,r0                 ; |928| 
        beq       L344                  ; |928| 
;*      Branch Occurs to L344           ; |928| 
	.line	132
;----------------------------------------------------------------------
; 929 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |929| 
        sti       r0,*+fp(14)           ; |929| 
        bu        L344                  ; |797| 
;*      Branch Occurs to L344           ; |797| 
L329:        
	.line	135
;----------------------------------------------------------------------
; 932 | else if ((p>=839.0) && (p<=1075.0))                                    
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldfu      *+fp(9),f0            ; |932| 
        cmpf      @CL54,f0              ; |932| 
        blt       L344                  ; |932| 
;*      Branch Occurs to L344           ; |932| 
        ldp       @CL46,DP
        cmpf      @CL46,f0              ; |932| 
        bgt       L344                  ; |932| 
;*      Branch Occurs to L344           ; |932| 
	.line	137
;----------------------------------------------------------------------
; 934 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |934| 
        cmpi      *+fp(13),r0           ; |934| 
        beq       L344                  ; |934| 
;*      Branch Occurs to L344           ; |934| 
	.line	139
;----------------------------------------------------------------------
; 936 | k = 4;                                                                 
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |936| 
        sti       r0,*+fp(12)           ; |936| 
	.line	141
;----------------------------------------------------------------------
; 938 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |938| 
        cmpi      -1,r0                 ; |938| 
        beq       L344                  ; |938| 
;*      Branch Occurs to L344           ; |938| 
	.line	142
;----------------------------------------------------------------------
; 939 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |939| 
        sti       r0,*+fp(14)           ; |939| 
	.line	146
;----------------------------------------------------------------------
; 943 | break;                                                                 
;----------------------------------------------------------------------
        bu        L344                  ; |943| 
;*      Branch Occurs to L344           ; |943| 
L334:        
	.line	149
;----------------------------------------------------------------------
; 946 | if (k_change)                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(14),r0           ; |946| 
        cmpi      0,r0                  ; |946| 
        beq       L344                  ; |946| 
;*      Branch Occurs to L344           ; |946| 
	.line	151
;----------------------------------------------------------------------
; 948 | pn       = pini;                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |948| 
        stf       f0,*+fp(6)            ; |948| 
	.line	152
;----------------------------------------------------------------------
; 949 | cont = TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |949| 
        sti       r0,*+fp(15)           ; |949| 
	.line	155
;----------------------------------------------------------------------
; 952 | break;                                                                 
; 954 | case 'C':                                                              
;----------------------------------------------------------------------
        bu        L344                  ; |952| 
;*      Branch Occurs to L344           ; |952| 
	.line	158
;----------------------------------------------------------------------
; 955 | break;                                                                 
; 956 | case 'D':                                                              
; 957 | default:                                                               
;----------------------------------------------------------------------
L337:        
	.line	162
;----------------------------------------------------------------------
; 959 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(16),ir0          ; |959| 
        ldiu      398,ar0               ; |959| 
        ldiu      17408,r0              ; |959| 
        sti       r0,*+ar0(ir0)         ; |959| 
	.line	163
;----------------------------------------------------------------------
; 960 | break;                                                                 
;----------------------------------------------------------------------
        bu        L344                  ; |960| 
;*      Branch Occurs to L344           ; |960| 
L339:        
	.line	54
        ldiu      *+fp(16),ir0          ; |851| 
        ldiu      398,ar0               ; |851| 
        ldiu      -8,r0                 ; |851| 
        ash3      r0,*+ar0(ir0),r0      ; |851| 
        cmpi      65,r0                 ; |851| 
        beq       L344                  ; |851| 
;*      Branch Occurs to L344           ; |851| 
        cmpi      66,r0                 ; |851| 
        beq       L293                  ; |851| 
;*      Branch Occurs to L293           ; |851| 
        cmpi      67,r0                 ; |851| 
        beq       L344                  ; |851| 
;*      Branch Occurs to L344           ; |851| 
        cmpi      68,r0                 ; |851| 
        beq       L337                  ; |851| 
;*      Branch Occurs to L337           ; |851| 
        bu        L337                  ; |851| 
;*      Branch Occurs to L337           ; |851| 
L344:        
	.line	167
;----------------------------------------------------------------------
; 964 | if (cont)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(15),r0           ; |964| 
        cmpi      0,r0                  ; |964| 
        bne       L284                  ; |964| 
;*      Branch Occurs to L284           ; |964| 
	.line	168
;----------------------------------------------------------------------
; 965 | continue;                                                              
;----------------------------------------------------------------------
	.line	170
;----------------------------------------------------------------------
; 967 | vcf = sigfig(a/pn,7);                                                  
;----------------------------------------------------------------------
        ldfu      *+fp(8),f0            ; |967| 
        ldfu      *+fp(6),f1            ; |967| 
        call      DIV_F30               ; |967| 
                                        ; |967| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,r1              ; |967| 
        ldiu      7,ar2                 ; |967| 
        ldfu      f0,f2                 ; |967| 
        callu     r1                    ; far call to _sigfig	; |967| 
                                        ; |967| Far Call Occurs
        stf       f0,*+fp(10)           ; |967| 
	.line	172
;----------------------------------------------------------------------
; 969 | if (RET_VCF)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |969| 
        cmpi      0,r0                  ; |969| 
        beq       L347                  ; |969| 
;*      Branch Occurs to L347           ; |969| 
	.line	174
;----------------------------------------------------------------------
; 971 | pnext = vcf;                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(10),f0           ; |971| 
        stf       f0,*+fp(7)            ; |971| 
	.line	176
;----------------------------------------------------------------------
; 973 | break;                                                                 
;----------------------------------------------------------------------
        bu        L349                  ; |973| 
;*      Branch Occurs to L349           ; |973| 
L347:        
	.line	179
;----------------------------------------------------------------------
; 976 | pnext = sigfig(pini/vcf,7);                                            
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |976| 
        ldfu      *+fp(10),f1           ; |976| 
        call      DIV_F30               ; |976| 
                                        ; |976| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,r1              ; |976| 
        ldiu      7,ar2                 ; |976| 
        ldfu      f0,f2                 ; |976| 
        callu     r1                    ; far call to _sigfig	; |976| 
                                        ; |976| Far Call Occurs
        stf       f0,*+fp(7)            ; |976| 
	.line	181
;----------------------------------------------------------------------
; 978 | if ((pnext-pn)<0.050)                                                  
;----------------------------------------------------------------------
        ldp       @CL66,DP
        ldfu      *+fp(6),f0            ; |978| 
        subrf     *+fp(7),f0            ; |978| 
        cmpf      @CL66,f0              ; |978| 
        blt       L349                  ; |978| 
;*      Branch Occurs to L349           ; |978| 
	.line	182
;----------------------------------------------------------------------
; 979 | break;                                                                 
;----------------------------------------------------------------------
	.line	184
;----------------------------------------------------------------------
; 981 | pn = pnext;                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |981| 
        stf       f0,*+fp(6)            ; |981| 
	.line	185
        bu        L284                  ; |982| 
;*      Branch Occurs to L284           ; |982| 
L349:        
	.line	187
;----------------------------------------------------------------------
; 984 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	188
;----------------------------------------------------------------------
; 985 | return pnext;                                                          
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |985| 
	.line	189
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |986| 
        ldiu      *fp,fp                ; |986| 
                                        ; Unallocate the Frame
        subi      18,sp                 ; |986| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	986,000000000h,16


	.sect	 ".text"

	.global	_kgm3_to_API
	.sym	_kgm3_to_API,_kgm3_to_API,39,2,0
	.func	1000
;******************************************************************************
;* FUNCTION NAME: _kgm3_to_API                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,f1,f2,st                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_kgm3_to_API:
;* f2    assigned to _r
	.sym	_r,2,7,17,32
	.sym	_r,1,7,1,32
	.line	1
;----------------------------------------------------------------------
; 1000 | double kgm3_to_API(const double r)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        stf       f2,*+fp(1)            ; |1001| 
	.line	3
;----------------------------------------------------------------------
; 1002 | if (r<=(double)0.0)                                                    
;----------------------------------------------------------------------
        ldfu      f2,f0
        cmpf      0.0000000000e+00,f0   ; |1002| 
        bgt       L354                  ; |1002| 
;*      Branch Occurs to L354           ; |1002| 
	.line	4
;----------------------------------------------------------------------
; 1003 | return (double)API_error_num;                                          
;----------------------------------------------------------------------
        bud       L355                  ; |1003| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |1003| 
;*      Branch Occurs to L355           ; |1003| 
L354:        
	.line	6
;----------------------------------------------------------------------
; 1005 | return (double)(((141.5*999.012)/r)-131.5);                            
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldfu      *+fp(1),f1            ; |1005| 
        ldfu      @CL67,f0              ; |1005| 
        call      DIV_F30               ; |1005| 
                                        ; |1005| Call Occurs
        subf      1.3150000000e+02,f0   ; |1005| 
L355:        
	.line	7
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1006| 
        ldiu      *fp,fp                ; |1006| 
                                        ; Unallocate the Frame
        subi      3,sp                  ; |1006| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1006,000000000h,1


	.sect	 ".text"

	.global	_API_to_kgm3
	.sym	_API_to_kgm3,_API_to_kgm3,39,2,0
	.func	1020
;******************************************************************************
;* FUNCTION NAME: _API_to_kgm3                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,f1,f2,st                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_API_to_kgm3:
;* f2    assigned to _r
	.sym	_r,2,7,17,32
	.sym	_r,1,7,1,32
	.line	1
;----------------------------------------------------------------------
; 1020 | double API_to_kgm3(const double r)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        stf       f2,*+fp(1)            ; |1021| 
	.line	3
;----------------------------------------------------------------------
; 1022 | if (r==(double)API_error_num)                                          
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      f2,f0
        cmpf      @CL23,f0              ; |1022| 
        bne       L359                  ; |1022| 
;*      Branch Occurs to L359           ; |1022| 
	.line	4
;----------------------------------------------------------------------
; 1023 | return (double)0.0;                                                    
;----------------------------------------------------------------------
        bud       L360                  ; |1023| 
	nop
	nop
        ldfu      0.0000000000e+00,f0   ; |1023| 
;*      Branch Occurs to L360           ; |1023| 
L359:        
	.line	6
;----------------------------------------------------------------------
; 1025 | return (double)(141.5*999.012/(r+131.5));                              
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldfu      1.3150000000e+02,f1   ; |1025| 
        ldfu      @CL67,f0              ; |1025| 
        addf      *+fp(1),f1            ; |1025| 
        call      DIV_F30               ; |1025| 
                                        ; |1025| Call Occurs
L360:        
	.line	7
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1026| 
        ldiu      *fp,fp                ; |1026| 
                                        ; Unallocate the Frame
        subi      3,sp                  ; |1026| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1026,000000000h,1


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

	.sect	".cinit"
	.field  	67,32
	.field  	CL1+0,32
	.field  	_Convert,32
	.field  	_API_to_kgm3,32
	.field  	_API_PT_ST,32
	.word   	0080C0000H ; double  2.800000000000000e+02
	.word   	00979C000H ; double  9.990000000000000e+02
	.word   	0FD0E38E4H ; double  1.388888888888889e-01
	.word   	0E22980E3H ; double  1.233300000000000e-09
	.word   	0DC455961H ; double  2.243600000000000e-11
	.word   	0EE702472H ; double  7.156800000000000e-06
	.word   	0F2584221H ; double  1.031200000000000e-04
	.word   	0EC2A784EH ; double  1.270100000000000e-06
	.word   	0E73FBB4CH ; double  4.464100000000000e-08
	.word   	0E47722C7H ; double  7.192600000000000e-09
	.word   	0DF0FDF00H ; double  1.308500000000000e-10
	.word   	0EF581FC5H ; double  1.288200000000000e-05
	.word   	0F342A2FDH ; double  1.856200000000000e-04
	.word   	0EE0A1471H ; double  4.115100000000000e-06
	.word   	0E91B4E57H ; double  1.446400000000000e-07
	.field  	_DIAGNOSTICS,32
	.field  	_FC,32
	.field  	_kgm3_to_API,32
	.field  	_API_STATUS,32
	.word   	006BA0000H ; double  -9.900000000000000e+01
	.word   	008160000H ; double  3.000000000000000e+02
	.word   	0082A8C40H ; double  3.410957000000000e+02
	.word   	0064FBE77H ; double  1.038720000000000e+02
	.word   	0FE0A4A8CH ; double  2.701000000000000e-01
	.word   	008252687H ; double  3.303010000000000e+02
	.word   	00A3A2225H ; double  1.489067000000000e+03
	.word   	0F68B1AE6H ; double  -1.868400000000000e-03
	.word   	007407505H ; double  1.924571000000000e+02
	.word   	0FD79A6B5H ; double  2.438000000000000e-01
	.word   	017189680H ; double  1.000000000000000e+07
	.word   	008070000H ; double  2.700000000000000e+02
	.word   	009688000H ; double  9.300000000000000e+02
	.word   	0087F0000H ; double  5.100000000000000e+02
	.word   	009048000H ; double  5.300000000000000e+02
	.word   	003E00000H ; double  -1.000000000000000e+01
	.word   	0FE32934BH ; double  3.487800000000000e-01
	.field  	_truncate,32
	.field  	_sigfig,32
	.word   	0FF4CCCCDH ; double  8.000000000000000e-01
	.field  	_exp,32
	.word   	004F00000H ; double  -1.800000000000000e+01
	.word   	008610000H ; double  4.500000000000000e+02
	.word   	00A066000H ; double  1.075000000000000e+03
	.word   	0093D8000H ; double  7.580000000000000e+02
	.word   	00942A000H ; double  7.785000000000000e+02
	.word   	0094E0000H ; double  8.240000000000000e+02
	.word   	009197E3AH ; double  6.139723000000000e+02
	.word   	009234000H ; double  6.530000000000000e+02
	.word   	009408000H ; double  7.700000000000000e+02
	.word   	009450000H ; double  7.880000000000000e+02
	.word   	00951C000H ; double  8.390000000000000e+02
	.word   	0082D361EH ; double  3.464228000000000e+02
	.word   	0FE60AA65H ; double  4.388000000000000e-01
	.word   	00B278521H ; double  2.680320600000000e+03
	.word   	0F7A39836H ; double  -3.363120000000000e-03
	.word   	00914A302H ; double  5.945470000000000e+02
	.word   	0073AF838H ; double  1.869696000000000e+02
	.word   	0FE78EF35H ; double  4.862000000000000e-01
	.word   	000666666H ; double  1.800000000000000e+00
	.word   	0FF20B780H ; double  6.278000000000000e-01
	.field  	_API_60F_PT,32
	.field  	_API_15C_PT,32
	.word   	0FB4CCCCDH ; double  5.000000000000000e-02
	.word   	0110A0C0DH ; double  1.413601980000000e+05

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_exp

	.global	_Convert

	.global	_DIAGNOSTICS

	.global	_FC

	.global	_sigfig

	.global	_truncate
	.global	MPY_LD
	.global	DIV_F30
