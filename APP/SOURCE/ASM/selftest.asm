;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu May 16 08:36:36 2019                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_4NC.AAA 
	.file	"selftest.c"
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
	.file	"selftest.c"
	.sect	 ".text"

	.global	_Clear_Diagnostics
	.sym	_Clear_Diagnostics,_Clear_Diagnostics,32,2,0
	.func	41
;******************************************************************************
;* FUNCTION NAME: _Clear_Diagnostics                                          *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Clear_Diagnostics:
	.line	1
;----------------------------------------------------------------------
;  41 | void Clear_Diagnostics(void)                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  43 | DIO_ALARM.val                   = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |43| 
        ldiu      0,r0                  ; |43| 
        sti       r0,*ar0               ; |43| 
	.line	4
;----------------------------------------------------------------------
;  44 | DIO_ERROR.val                   = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |44| 
        sti       r0,*ar0               ; |44| 
	.line	5
;----------------------------------------------------------------------
;  45 | DIAGNOSTICS[0]                  = ERROR_NONE;                          
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |45| 
        sti       r0,*ar0               ; |45| 
	.line	6
;----------------------------------------------------------------------
;  46 | DIAGNOSTICS[1]                  = ERROR_NONE;                          
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |46| 
        sti       r0,*ar0               ; |46| 
	.line	7
;----------------------------------------------------------------------
;  47 | DIAGNOSTICS_ERROR_CODE  = E_ERROR_NONE;                                
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |47| 
        sti       r0,*ar0               ; |47| 
	.line	8
;----------------------------------------------------------------------
;  48 | DIAGNOSTICS_MSG_CODE    = M_ERROR_RESET;                               
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |48| 
        ldiu      15,r0                 ; |48| 
        sti       r0,*ar0               ; |48| 
	.line	10
;----------------------------------------------------------------------
;  50 | Set_Diag_Status();                                                     
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,r0               ; |50| 
        callu     r0                    ; far call to _Set_Diag_Status	; |50| 
                                        ; |50| Far Call Occurs
	.line	11
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	51,000000000h,0


	.sect	 ".text"

	.global	_Set_Diag_Status
	.sym	_Set_Diag_Status,_Set_Diag_Status,32,2,0
	.func	65
;******************************************************************************
;* FUNCTION NAME: _Set_Diag_Status                                            *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,f6,ar0,ar1,ar2,fp,sp,st,rs,rc  *
;*   Regs Saved         : f6                                                  *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 29 Auto + 1 SOE = 32 words        *
;******************************************************************************
_Set_Diag_Status:
	.sym	_rec,1,62,1,256,,8
	.sym	_i,9,14,1,32
	.sym	_j,10,14,1,32
	.sym	_s,11,50,1,544,,17
	.sym	_t,28,6,1,32
	.sym	_e,29,14,1,32
	.line	1
;----------------------------------------------------------------------
;  65 | void Set_Diag_Status(void)                                             
;  67 | unsigned int rec[SYS_log_record_size];  /* Log record */               
;  68 | unsigned int i,j;                                               /* coun
;     | ter; diagnostic check */                                               
;  69 | char s[17];
;     |  /* not used */                                                        
;  70 | float t;
;     |  /* temp message code */                                               
;  71 | unsigned int e;                                                 /* erro
;     | r code checked against j */                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      29,sp
        pushf     f6
	.line	9
;----------------------------------------------------------------------
;  73 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	11
;----------------------------------------------------------------------
;  75 | if (CHANGE) /* check save */                                           
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |75| 
        ldiu      *ar0,r0               ; |75| 
        cmpi      0,r0                  ; |75| 
        beq       L6                    ; |75| 
;*      Branch Occurs to L6             ; |75| 
	.line	12
;----------------------------------------------------------------------
;  76 | DATA_CHANGE.val = FALSE;                                               
;  77 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |76| 
        ldiu      0,r0                  ; |76| 
        sti       r0,*ar0               ; |76| 
        bu        L7                    ; |64| 
;*      Branch Occurs to L7             ; |64| 
L6:        
	.line	14
;----------------------------------------------------------------------
;  78 | DATA_CHANGE.val = TRUE;                                                
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |78| 
        ldiu      1,r0                  ; |78| 
        sti       r0,*ar0               ; |78| 
L7:        
	.line	17
;----------------------------------------------------------------------
;  81 | DIAGNOSTICS[0] &= DIAGNOSTICS_MASK[0];                                 
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |81| 
        ldp       @CL10,DP
        ldiu      @CL10,ar1             ; |81| 
        and3      *ar0,*ar1,r0          ; |81| 
        sti       r0,*ar0               ; |81| 
	.line	18
;----------------------------------------------------------------------
;  82 | DIAGNOSTICS[1] &= DIAGNOSTICS_MASK[1];                                 
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |82| 
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |82| 
        and3      *+ar0,*ar1,r0         ; |82| 
        sti       r0,*+ar0(1)           ; |82| 
	.line	21
;----------------------------------------------------------------------
;  85 | if (DIAGNOSTICS[0] & ERROR_RESET_BASICS)                               
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |85| 
        ldiu      *ar0,r0               ; |85| 
        tstb      32768,r0              ; |85| 
        beq       L9                    ; |85| 
;*      Branch Occurs to L9             ; |85| 
	.line	22
;----------------------------------------------------------------------
;  86 | DIAGNOSTICS_ERROR_CODE = E_ERROR_FLASH_FAIL_RESET_BASICS;              
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |86| 
        ldiu      16,r0                 ; |86| 
        sti       r0,*ar0               ; |86| 
        bu        L27                   ; |64| 
;*      Branch Occurs to L27            ; |64| 
L9:        
	.line	23
;----------------------------------------------------------------------
;  87 | else if ((DIAGNOSTICS[0] & ERROR_FLASH_MEMORY) || (DIAGNOSTICS[0] & ERR
;     | OR_FLASH_WPROT))                                                       
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |87| 
        ldiu      8,r0                  ; |87| 
        tstb3     *ar0,r0               ; |87| 
        bne       L11                   ; |87| 
;*      Branch Occurs to L11            ; |87| 
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |87| 
        ldiu      16,r0                 ; |87| 
        tstb3     *ar0,r0               ; |87| 
        beq       L12                   ; |87| 
;*      Branch Occurs to L12            ; |87| 
L11:        
	.line	24
;----------------------------------------------------------------------
;  88 | DIAGNOSTICS_ERROR_CODE = E_ERROR_FLASH_FAIL;                           
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |88| 
        ldiu      8,r0                  ; |88| 
        sti       r0,*ar0               ; |88| 
        bu        L27                   ; |64| 
;*      Branch Occurs to L27            ; |64| 
L12:        
	.line	25
;----------------------------------------------------------------------
;  89 | else if (DIAGNOSTICS[0] & ERROR_MEMORY)                                
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |89| 
        ldiu      1,r0                  ; |89| 
        tstb3     *ar0,r0               ; |89| 
        beq       L14                   ; |89| 
;*      Branch Occurs to L14            ; |89| 
	.line	26
;----------------------------------------------------------------------
;  90 | DIAGNOSTICS_ERROR_CODE = E_ERROR_EXTRAM_FAIL;                          
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |90| 
        ldiu      10,r0                 ; |90| 
        sti       r0,*ar0               ; |90| 
        bu        L27                   ; |64| 
;*      Branch Occurs to L27            ; |64| 
L14:        
	.line	27
;----------------------------------------------------------------------
;  91 | else if (DIAGNOSTICS[0] & ERROR_INTERNAL_MEMORY)                       
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |91| 
        ldiu      128,r0                ; |91| 
        tstb3     *ar0,r0               ; |91| 
        beq       L16                   ; |91| 
;*      Branch Occurs to L16            ; |91| 
	.line	28
;----------------------------------------------------------------------
;  92 | DIAGNOSTICS_ERROR_CODE = E_ERROR_INTRAM_FAIL;                          
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |92| 
        ldiu      9,r0                  ; |92| 
        sti       r0,*ar0               ; |92| 
        bu        L27                   ; |64| 
;*      Branch Occurs to L27            ; |64| 
L16:        
	.line	29
;----------------------------------------------------------------------
;  93 | else if (REG_WATERCUT.STAT & var_aux)                           /* roll
;     | ed over */                                                             
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |93| 
        ldiu      1024,r0               ; |93| 
        tstb3     *ar0,r0               ; |93| 
        beq       L18                   ; |93| 
;*      Branch Occurs to L18            ; |93| 
	.line	30
;----------------------------------------------------------------------
;  94 | DIAGNOSTICS_ERROR_CODE = E_ERROR_RP_THRESH;                            
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |94| 
        ldiu      20,r0                 ; |94| 
        sti       r0,*ar0               ; |94| 
        bu        L27                   ; |64| 
;*      Branch Occurs to L27            ; |64| 
L18:        
	.line	32
;----------------------------------------------------------------------
;  96 | else if ((REG_WATERCUT.STAT & var_alarm_lo) || (DIAGNOSTICS[0] & ERROR_
;     | WC_UNDERRANGE))                                                        
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |96| 
        ldiu      128,r0                ; |96| 
        tstb3     *ar0,r0               ; |96| 
        bne       L20                   ; |96| 
;*      Branch Occurs to L20            ; |96| 
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |96| 
        ldiu      4096,r0               ; |96| 
        tstb3     *ar0,r0               ; |96| 
        beq       L21                   ; |96| 
;*      Branch Occurs to L21            ; |96| 
L20:        
	.line	33
;----------------------------------------------------------------------
;  97 | DIAGNOSTICS_ERROR_CODE = E_ERROR_WATERCUT_UNDERRANGE;                  
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |97| 
        ldiu      11,r0                 ; |97| 
        sti       r0,*ar0               ; |97| 
        bu        L27                   ; |64| 
;*      Branch Occurs to L27            ; |64| 
L21:        
	.line	34
;----------------------------------------------------------------------
;  98 | else if ((REG_WATERCUT.STAT & var_alarm_hi) || (DIAGNOSTICS[0] & ERROR_
;     | WC_OVERRANGE))                                                         
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |98| 
        ldiu      64,r0                 ; |98| 
        tstb3     *ar0,r0               ; |98| 
        bne       L23                   ; |98| 
;*      Branch Occurs to L23            ; |98| 
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |98| 
        ldiu      8192,r0               ; |98| 
        tstb3     *ar0,r0               ; |98| 
        beq       L24                   ; |98| 
;*      Branch Occurs to L24            ; |98| 
L23:        
	.line	35
;----------------------------------------------------------------------
;  99 | DIAGNOSTICS_ERROR_CODE = E_ERROR_WATERCUT_OVERRANGE;                   
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |99| 
        ldiu      19,r0                 ; |99| 
        sti       r0,*ar0               ; |99| 
        bu        L27                   ; |64| 
;*      Branch Occurs to L27            ; |64| 
L24:        
	.line	36
;----------------------------------------------------------------------
; 100 | else if (RTC_PRESENT && (DIAGNOSTICS[1] & ERROR2_TIME_RESET))          
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |100| 
        ldiu      *ar0,r0               ; |100| 
        cmpi      0,r0                  ; |100| 
        beq       L27                   ; |100| 
;*      Branch Occurs to L27            ; |100| 
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |100| 
        ldiu      1,r0                  ; |100| 
        tstb3     *ar0,r0               ; |100| 
        beq       L27                   ; |100| 
;*      Branch Occurs to L27            ; |100| 
	.line	37
;----------------------------------------------------------------------
; 101 | DIAGNOSTICS_ERROR_CODE = E_ERROR_TIME_RESET;                           
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |101| 
        ldiu      35,r0                 ; |101| 
        sti       r0,*ar0               ; |101| 
L27:        
	.line	40
;----------------------------------------------------------------------
; 104 | if (DIAGNOSTICS_ERROR_CODE == E_ERROR_FLASH_FAIL_RESET_BASICS)         
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |104| 
        ldiu      *ar0,r0               ; |104| 
        cmpi      16,r0                 ; |104| 
        bne       L29                   ; |104| 
;*      Branch Occurs to L29            ; |104| 
	.line	42
;----------------------------------------------------------------------
; 106 | LED_GREEN               = 2;                                           
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |106| 
        ldiu      2,r0                  ; |106| 
        sti       r0,*ar0               ; |106| 
	.line	43
;----------------------------------------------------------------------
; 107 | DIO_ERROR.val   = TRUE;                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |107| 
        ldiu      1,r0                  ; |107| 
        sti       r0,*ar0               ; |107| 
	.line	45
;----------------------------------------------------------------------
; 109 | Timer_Create(&TMR_LEDOFF, 0.05, 1, (int*)STATUS_LED_off, 0);           
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,r0              ; |109| 
        ldp       @CL17,DP
        ldiu      @CL17,rc              ; |109| 
        ldp       @CL16,DP
        ldiu      0,rs                  ; |109| 
        ldfu      @CL16,f2              ; |109| 
        ldp       @CL15,DP
        ldiu      1,r3                  ; |109| 
        ldiu      @CL15,ar2             ; |109| 
        callu     r0                    ; far call to _Timer_Create	; |109| 
                                        ; |109| Far Call Occurs
	.line	46
;----------------------------------------------------------------------
; 110 | Timer_Create(&TMR_LEDON, 0.20, 1, (int*)STATUS_LED_on, 0);             
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,r0              ; |110| 
        ldp       @CL21,DP
        ldiu      @CL21,rc              ; |110| 
        ldp       @CL20,DP
        ldfu      @CL20,f2              ; |110| 
        ldp       @CL19,DP
        ldiu      0,rs                  ; |110| 
        ldiu      @CL19,ar2             ; |110| 
        ldiu      1,r3                  ; |110| 
        callu     r0                    ; far call to _Timer_Create	; |110| 
                                        ; |110| Far Call Occurs
        bu        L44                   ; |64| 
;*      Branch Occurs to L44            ; |64| 
L29:        
	.line	48
;----------------------------------------------------------------------
; 112 | else if ((!DIAGNOSTICS[0]) && (!DIAGNOSTICS[1]))                       
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |112| 
        ldiu      *ar0,r0               ; |112| 
        cmpi      0,r0                  ; |112| 
        bne       L36                   ; |112| 
;*      Branch Occurs to L36            ; |112| 
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |112| 
        ldiu      *ar0,r0               ; |112| 
        cmpi      0,r0                  ; |112| 
        bne       L36                   ; |112| 
;*      Branch Occurs to L36            ; |112| 
	.line	50
;----------------------------------------------------------------------
; 114 | DIO_ERROR.val                   = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |114| 
        ldiu      0,r0                  ; |114| 
        sti       r0,*ar0               ; |114| 
	.line	51
;----------------------------------------------------------------------
; 115 | DIAGNOSTICS_MSG_CODE    = M_ERROR_NONE;                                
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |115| 
        sti       r0,*ar0               ; |115| 
	.line	53
;----------------------------------------------------------------------
; 117 | if ((SA) && (HW_VER>=0xB7))                                            
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      @CL22,ar0             ; |117| 
        ldiu      *ar0,r0               ; |117| 
        cmpi      0,r0                  ; |117| 
        beq       L34                   ; |117| 
;*      Branch Occurs to L34            ; |117| 
        ldp       @CL23,DP
        ldiu      @CL23,ar0             ; |117| 
        ldiu      *ar0,r0               ; |117| 
        cmpi      183,r0                ; |117| 
        blo       L34                   ; |117| 
;*      Branch Occurs to L34            ; |117| 
	.line	54
;----------------------------------------------------------------------
; 118 | LED_GREEN = TRUE;                                                      
; 119 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |118| 
        ldiu      1,r0                  ; |118| 
        sti       r0,*ar0               ; |118| 
        bu        L35                   ; |64| 
;*      Branch Occurs to L35            ; |64| 
L34:        
	.line	56
;----------------------------------------------------------------------
; 120 | LED_GREEN = FALSE;                                                     
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |120| 
        ldiu      0,r0                  ; |120| 
        sti       r0,*ar0               ; |120| 
L35:        
	.line	58
;----------------------------------------------------------------------
; 122 | Timer_Create(&TMR_LEDOFF, 0.05, 1, (int*)STATUS_LED_off, 0);           
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,r0              ; |122| 
        ldp       @CL17,DP
        ldiu      @CL17,rc              ; |122| 
        ldp       @CL16,DP
        ldiu      0,rs                  ; |122| 
        ldfu      @CL16,f2              ; |122| 
        ldp       @CL15,DP
        ldiu      1,r3                  ; |122| 
        ldiu      @CL15,ar2             ; |122| 
        callu     r0                    ; far call to _Timer_Create	; |122| 
                                        ; |122| Far Call Occurs
	.line	59
;----------------------------------------------------------------------
; 123 | Timer_Create(&TMR_LEDON,  0.95, 1, (int*)STATUS_LED_on,  0);           
; 125 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,r0              ; |123| 
        ldp       @CL21,DP
        ldiu      @CL21,rc              ; |123| 
        ldp       @CL24,DP
        ldiu      0,rs                  ; |123| 
        ldfu      @CL24,f2              ; |123| 
        ldp       @CL19,DP
        ldiu      1,r3                  ; |123| 
        ldiu      @CL19,ar2             ; |123| 
        callu     r0                    ; far call to _Timer_Create	; |123| 
                                        ; |123| Far Call Occurs
        bu        L44                   ; |64| 
;*      Branch Occurs to L44            ; |64| 
L36:        
	.line	63
;----------------------------------------------------------------------
; 127 | DIO_ERROR.val   = TRUE;                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |127| 
        ldiu      1,r0                  ; |127| 
        sti       r0,*ar0               ; |127| 
	.line	64
;----------------------------------------------------------------------
; 128 | LED_GREEN               = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |128| 
        ldiu      0,r0                  ; |128| 
        sti       r0,*ar0               ; |128| 
	.line	66
;----------------------------------------------------------------------
; 130 | Timer_Create(&TMR_LEDOFF, 0.05, 1, (int*)STATUS_LED_off, 0);           
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,r0              ; |130| 
        ldp       @CL17,DP
        ldiu      @CL17,rc              ; |130| 
        ldp       @CL16,DP
        ldiu      0,rs                  ; |130| 
        ldfu      @CL16,f2              ; |130| 
        ldp       @CL15,DP
        ldiu      1,r3                  ; |130| 
        ldiu      @CL15,ar2             ; |130| 
        callu     r0                    ; far call to _Timer_Create	; |130| 
                                        ; |130| Far Call Occurs
	.line	67
;----------------------------------------------------------------------
; 131 | Timer_Create(&TMR_LEDON,  0.45, 1, (int*)STATUS_LED_on,  0);           
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,r0              ; |131| 
        ldp       @CL21,DP
        ldiu      @CL21,rc              ; |131| 
        ldp       @CL25,DP
        ldfu      @CL25,f2              ; |131| 
        ldp       @CL19,DP
        ldiu      0,rs                  ; |131| 
        ldiu      @CL19,ar2             ; |131| 
        ldiu      1,r3                  ; |131| 
        callu     r0                    ; far call to _Timer_Create	; |131| 
                                        ; |131| Far Call Occurs
	.line	69
;----------------------------------------------------------------------
; 133 | e = (DIAGNOSTICS[1]<<16) | (DIAGNOSTICS[0]&0xFFFF);                    
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      16,r0                 ; |133| 
        ldiu      @CL3,ar1              ; |133| 
        ldp       @CL4,DP
        ldiu      *ar1,r1               ; |133| 
        ldiu      @CL4,ar0              ; |133| 
        and       65535,r1              ; |133| 
        ash3      r0,*ar0,r0            ; |133| 
        or3       r0,r1,r0              ; |133| 
        sti       r0,*+fp(29)           ; |133| 
	.line	72
;----------------------------------------------------------------------
; 136 | j = 0x80000000;                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,r0              ; |136| 
        sti       r0,*+fp(10)           ; |136| 
	.line	74
;----------------------------------------------------------------------
; 138 | for (i=0;i<32;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |138| 
        sti       r0,*+fp(9)            ; |138| 
        cmpi      32,r0                 ; |138| 
        bhs       L41                   ; |138| 
;*      Branch Occurs to L41            ; |138| 
L37:        
	.line	76
;----------------------------------------------------------------------
; 140 | if (j & e)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(29),r0           ; |140| 
        tstb      *+fp(10),r0           ; |140| 
        beq       L40                   ; |140| 
;*      Branch Occurs to L40            ; |140| 
	.line	77
;----------------------------------------------------------------------
; 141 | break;                                                                 
; 142 | else                                                                   
;----------------------------------------------------------------------
        bu        L41                   ; |141| 
;*      Branch Occurs to L41            ; |141| 
L40:        
	.line	79
;----------------------------------------------------------------------
; 143 | j = j>>1;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(10),r0           ; |143| 
        lsh       -1,r0                 ; |143| 
        sti       r0,*+fp(10)           ; |143| 
	.line	74
        ldiu      1,r0                  ; |138| 
        addi      *+fp(9),r0            ; |138| Unsigned
        sti       r0,*+fp(9)            ; |138| 
        cmpi      32,r0                 ; |138| 
        blo       L37                   ; |138| 
;*      Branch Occurs to L37            ; |138| 
L41:        
	.line	82
;----------------------------------------------------------------------
; 146 | if (j==0)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(10),r0           ; |146| 
        cmpi      0,r0                  ; |146| 
        bne       L43                   ; |146| 
;*      Branch Occurs to L43            ; |146| 
	.line	83
;----------------------------------------------------------------------
; 147 | DIAGNOSTICS_MSG_CODE = M_ERROR_NONE;                                   
; 148 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |147| 
        ldiu      0,r0                  ; |147| 
        sti       r0,*ar0               ; |147| 
        bu        L44                   ; |64| 
;*      Branch Occurs to L44            ; |64| 
L43:        
	.line	86
;----------------------------------------------------------------------
; 150 | t                                        = j;                          
;----------------------------------------------------------------------
        ldp       @CL27,DP
        float     *+fp(10),f0           ; |150| 
        ldflt     @CL27,f1              ; |150| 
        ldfge     0.0000000000e+00,f1   ; |150| 
        addf3     f0,f1,f0              ; |150| 
        stf       f0,*+fp(28)           ; |150| 
	.line	87
;----------------------------------------------------------------------
; 151 | t                                        = log(t)/log(2.0);            
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldfu      f0,f2
        ldiu      @CL28,r0              ; |151| 
        callu     r0                    ; far call to _log	; |151| 
                                        ; |151| Far Call Occurs
        ldp       @CL28,DP
        ldiu      @CL28,r1              ; |151| 
        ldfu      f0,f6                 ; |151| 
        ldfu      2.0000000000e+00,f2   ; |151| 
        callu     r1                    ; far call to _log	; |151| 
                                        ; |151| Far Call Occurs
        ldfu      f0,f1                 ; |151| 
        ldfu      f6,f0                 ; |151| 
        call      DIV_F30               ; |151| 
                                        ; |151| Call Occurs
        stf       f0,*+fp(28)           ; |151| 
	.line	88
;----------------------------------------------------------------------
; 152 | DIAGNOSTICS_MSG_CODE = t;                                              
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |152| 
        ldfu      f0,f1                 ; |152| 
        negf      f1,f0                 ; |152| 
        fix       f1,r1                 ; |152| 
        fix       f0,r0                 ; |152| 
        negi      r0,r0                 ; |152| 
        ldile     r0,r1                 ; |152| 
        sti       r1,*ar0               ; |152| 
L44:        
	.line	93
;----------------------------------------------------------------------
; 157 | VAR_Update(&REG_DIAG[0], DIAGNOSTICS[0],                 0, 0);        
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |157| 
        ldp       @CL29,DP
        ldiu      0,rc                  ; |157| 
        ldiu      @CL29,ar2             ; |157| 
        ldiu      *ar0,r1               ; |157| 
        ldp       @CL30,DP
        float     r1,f2                 ; |157| 
        ldiu      @CL30,r0              ; |157| 
        ldiu      0,r3                  ; |157| 
        callu     r0                    ; far call to _VAR_Update	; |157| 
                                        ; |157| Far Call Occurs
	.line	94
;----------------------------------------------------------------------
; 158 | VAR_Update(&REG_DIAG[1], DIAGNOSTICS[1],                 0, 0);        
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |158| 
        ldp       @CL31,DP
        ldiu      @CL31,ar2             ; |158| 
        ldiu      0,rc                  ; |158| 
        ldp       @CL30,DP
        ldiu      *ar0,r1               ; |158| 
        ldiu      @CL30,r0              ; |158| 
        float     r1,f2                 ; |158| 
        ldiu      0,r3                  ; |158| 
        callu     r0                    ; far call to _VAR_Update	; |158| 
                                        ; |158| Far Call Occurs
	.line	95
;----------------------------------------------------------------------
; 159 | VAR_Update(&REG_DIAG[2], DIAGNOSTICS_ERROR_CODE, 0, 0);                
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |159| 
        ldp       @CL32,DP
        ldiu      @CL32,ar2             ; |159| 
        ldp       @CL30,DP
        ldiu      *ar0,r1               ; |159| 
        float     r1,f2                 ; |159| 
        ldiu      @CL30,r0              ; |159| 
        ldiu      0,rc                  ; |159| 
        ldiu      0,r3                  ; |159| 
        callu     r0                    ; far call to _VAR_Update	; |159| 
                                        ; |159| Far Call Occurs
	.line	96
;----------------------------------------------------------------------
; 160 | VAR_Update(&REG_DIAG[3], DIAGNOSTICS_MSG_CODE,   0, 0);                
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |160| 
        ldp       @CL33,DP
        ldiu      @CL33,ar2             ; |160| 
        ldp       @CL30,DP
        ldiu      0,rc                  ; |160| 
        ldiu      *ar0,r1               ; |160| 
        float     r1,f2                 ; |160| 
        ldiu      @CL30,r0              ; |160| 
        ldiu      0,r3                  ; |160| 
        callu     r0                    ; far call to _VAR_Update	; |160| 
                                        ; |160| Far Call Occurs
	.line	98
;----------------------------------------------------------------------
; 162 | if ((SYS_LOG_ENABLED & LOG_ERROR) && ((DIAGNOSTICS[0] != DIAG_TEMP[0])
;     | || (DIAGNOSTICS[1] != DIAG_TEMP[1])))                                  
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |162| 
        ldiu      4,r0                  ; |162| 
        tstb3     *ar0,r0               ; |162| 
        beq       L97                   ; |162| 
;*      Branch Occurs to L97            ; |162| 
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |162| 
        ldp       @CL3,DP
        ldiu      @CL3,ar1              ; |162| 
        cmpi3     *ar0,*ar1             ; |162| 
        bne       L47                   ; |162| 
;*      Branch Occurs to L47            ; |162| 
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |162| 
        ldp       @CL4,DP
        ldiu      @CL4,ar1              ; |162| 
        cmpi3     *ar0,*ar1             ; |162| 
        beq       L97                   ; |162| 
;*      Branch Occurs to L97            ; |162| 
L47:        
	.line	100
;----------------------------------------------------------------------
; 164 | DIAG_TEMP[0] = DIAGNOSTICS[0];                                         
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |164| 
        ldp       @CL35,DP
        ldiu      @CL35,ar1             ; |164| 
        ldiu      *ar0,r0               ; |164| 
        sti       r0,*ar1               ; |164| 
	.line	101
;----------------------------------------------------------------------
; 165 | DIAG_TEMP[1] = DIAGNOSTICS[1];                                         
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar1              ; |165| 
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |165| 
        ldiu      *ar1,r0               ; |165| 
        sti       r0,*ar0               ; |165| 
	.line	103
;----------------------------------------------------------------------
; 167 | RecordLogEntry(&SYS, LOG_ERROR, rec);                                  
; 170 | switch(DIAGNOSTICS_ERROR_CODE)                                         
; 172 | case E_ERROR_NONE:                                                     
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |167| 
        ldp       @CL38,DP
        ldiu      4,r2                  ; |167| 
        ldiu      @CL38,r0              ; |167| 
        ldp       @CL37,DP
        addi      1,r3                  ; |167| 
        ldiu      @CL37,ar2             ; |167| 
        callu     r0                    ; far call to _RecordLogEntry	; |167| 
                                        ; |167| Far Call Occurs
        bu        L97                   ; |64| 
;*      Branch Occurs to L97            ; |64| 
L48:        
	.line	109
;----------------------------------------------------------------------
; 173 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |173| 
        ldiu      *ar0,r0               ; |173| 
        cmpi      0,r0                  ; |173| 
        beq       L50                   ; |173| 
;*      Branch Occurs to L50            ; |173| 
	.line	111
;----------------------------------------------------------------------
; 175 | Get_Russ_Line(382,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |175| 
        ldiu      382,ar2               ; |175| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |175| 
        ldiu      @CL40,r2              ; |175| 
        callu     r0                    ; far call to _Get_Russ_Line	; |175| 
                                        ; |175| Far Call Occurs
	.line	112
;----------------------------------------------------------------------
; 176 | sprintf(E_STRING,OUT_STR);                                             
; 178 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |176| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |176| 
        ldp       @CL42,DP
        push      r1                    ; |176| 
        ldiu      @CL42,ar2             ; |176| 
        callu     r0                    ; far call to _sprintf	; |176| 
                                        ; |176| Far Call Occurs
        subi      1,sp                  ; |176| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L50:        
	.line	115
;----------------------------------------------------------------------
; 179 | sprintf(E_STRING,"NO ERRORS");  //R382                                 
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      @CL44,r1              ; |179| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |179| 
        ldp       @CL42,DP
        push      r1                    ; |179| 
        ldiu      @CL42,ar2             ; |179| 
        callu     r0                    ; far call to _sprintf	; |179| 
                                        ; |179| Far Call Occurs
        subi      1,sp                  ; |179| 
	.line	116
;----------------------------------------------------------------------
; 180 | break;                                                                 
; 181 | case E_ERROR_FREQ:                                                     
;----------------------------------------------------------------------
        bu        L115                  ; |180| 
;*      Branch Occurs to L115           ; |180| 
L51:        
	.line	118
;----------------------------------------------------------------------
; 182 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |182| 
        ldiu      *ar0,r0               ; |182| 
        cmpi      0,r0                  ; |182| 
        beq       L53                   ; |182| 
;*      Branch Occurs to L53            ; |182| 
	.line	120
;----------------------------------------------------------------------
; 184 | Get_Russ_Line(351,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |184| 
        ldiu      351,ar2               ; |184| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |184| 
        ldiu      @CL40,r2              ; |184| 
        callu     r0                    ; far call to _Get_Russ_Line	; |184| 
                                        ; |184| Far Call Occurs
	.line	121
;----------------------------------------------------------------------
; 185 | sprintf(E_STRING,OUT_STR);                                             
; 187 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |185| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |185| 
        ldp       @CL42,DP
        push      r1                    ; |185| 
        ldiu      @CL42,ar2             ; |185| 
        callu     r0                    ; far call to _sprintf	; |185| 
                                        ; |185| Far Call Occurs
        subi      1,sp                  ; |185| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L53:        
	.line	124
;----------------------------------------------------------------------
; 188 | sprintf(E_STRING,"ERROR: Frequency");   //R351                         
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      @CL45,r1              ; |188| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |188| 
        ldp       @CL42,DP
        push      r1                    ; |188| 
        ldiu      @CL42,ar2             ; |188| 
        callu     r0                    ; far call to _sprintf	; |188| 
                                        ; |188| Far Call Occurs
        subi      1,sp                  ; |188| 
	.line	125
;----------------------------------------------------------------------
; 189 | break;                                                                 
; 191 | case E_ERROR_FLASH_FAIL:                                               
;----------------------------------------------------------------------
        bu        L115                  ; |189| 
;*      Branch Occurs to L115           ; |189| 
L54:        
	.line	128
;----------------------------------------------------------------------
; 192 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |192| 
        ldiu      *ar0,r0               ; |192| 
        cmpi      0,r0                  ; |192| 
        beq       L56                   ; |192| 
;*      Branch Occurs to L56            ; |192| 
	.line	130
;----------------------------------------------------------------------
; 194 | Get_Russ_Line(350,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |194| 
        ldiu      350,ar2               ; |194| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |194| 
        ldiu      @CL40,r2              ; |194| 
        callu     r0                    ; far call to _Get_Russ_Line	; |194| 
                                        ; |194| Far Call Occurs
	.line	131
;----------------------------------------------------------------------
; 195 | sprintf(E_STRING,OUT_STR);                                             
; 197 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |195| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |195| 
        ldp       @CL42,DP
        push      r1                    ; |195| 
        ldiu      @CL42,ar2             ; |195| 
        callu     r0                    ; far call to _sprintf	; |195| 
                                        ; |195| Far Call Occurs
        subi      1,sp                  ; |195| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L56:        
	.line	134
;----------------------------------------------------------------------
; 198 | sprintf(E_STRING,"ERROR: FLASH Memory");        //R350                 
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,r1              ; |198| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |198| 
        ldp       @CL42,DP
        push      r1                    ; |198| 
        ldiu      @CL42,ar2             ; |198| 
        callu     r0                    ; far call to _sprintf	; |198| 
                                        ; |198| Far Call Occurs
        subi      1,sp                  ; |198| 
	.line	135
;----------------------------------------------------------------------
; 199 | break;                                                                 
; 201 | case E_ERROR_INTRAM_FAIL:                                              
;----------------------------------------------------------------------
        bu        L115                  ; |199| 
;*      Branch Occurs to L115           ; |199| 
L57:        
	.line	138
;----------------------------------------------------------------------
; 202 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |202| 
        ldiu      *ar0,r0               ; |202| 
        cmpi      0,r0                  ; |202| 
        beq       L59                   ; |202| 
;*      Branch Occurs to L59            ; |202| 
	.line	140
;----------------------------------------------------------------------
; 204 | Get_Russ_Line(354,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |204| 
        ldiu      354,ar2               ; |204| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |204| 
        ldiu      @CL40,r2              ; |204| 
        callu     r0                    ; far call to _Get_Russ_Line	; |204| 
                                        ; |204| Far Call Occurs
	.line	141
;----------------------------------------------------------------------
; 205 | sprintf(E_STRING,OUT_STR);                                             
; 207 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |205| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |205| 
        ldp       @CL42,DP
        push      r1                    ; |205| 
        ldiu      @CL42,ar2             ; |205| 
        callu     r0                    ; far call to _sprintf	; |205| 
                                        ; |205| Far Call Occurs
        subi      1,sp                  ; |205| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L59:        
	.line	144
;----------------------------------------------------------------------
; 208 | sprintf(E_STRING,"ERROR: INT Memory");  //R354                         
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,r1              ; |208| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |208| 
        ldp       @CL42,DP
        push      r1                    ; |208| 
        ldiu      @CL42,ar2             ; |208| 
        callu     r0                    ; far call to _sprintf	; |208| 
                                        ; |208| Far Call Occurs
        subi      1,sp                  ; |208| 
	.line	145
;----------------------------------------------------------------------
; 209 | break;                                                                 
; 211 | case E_ERROR_EXTRAM_FAIL:                                              
;----------------------------------------------------------------------
        bu        L115                  ; |209| 
;*      Branch Occurs to L115           ; |209| 
L60:        
	.line	148
;----------------------------------------------------------------------
; 212 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |212| 
        ldiu      *ar0,r0               ; |212| 
        cmpi      0,r0                  ; |212| 
        beq       L62                   ; |212| 
;*      Branch Occurs to L62            ; |212| 
	.line	150
;----------------------------------------------------------------------
; 214 | Get_Russ_Line(349,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |214| 
        ldiu      349,ar2               ; |214| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |214| 
        ldiu      @CL40,r2              ; |214| 
        callu     r0                    ; far call to _Get_Russ_Line	; |214| 
                                        ; |214| Far Call Occurs
	.line	151
;----------------------------------------------------------------------
; 215 | sprintf(E_STRING,OUT_STR);                                             
; 217 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |215| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |215| 
        ldp       @CL42,DP
        push      r1                    ; |215| 
        ldiu      @CL42,ar2             ; |215| 
        callu     r0                    ; far call to _sprintf	; |215| 
                                        ; |215| Far Call Occurs
        subi      1,sp                  ; |215| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L62:        
	.line	154
;----------------------------------------------------------------------
; 218 | sprintf(E_STRING,"ERROR: EXT Memory");  //R349                         
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,r1              ; |218| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |218| 
        ldp       @CL42,DP
        push      r1                    ; |218| 
        ldiu      @CL42,ar2             ; |218| 
        callu     r0                    ; far call to _sprintf	; |218| 
                                        ; |218| Far Call Occurs
        subi      1,sp                  ; |218| 
	.line	155
;----------------------------------------------------------------------
; 219 | break;                                                                 
; 221 | case E_ERROR_WATERCUT_INVALID:                                         
;----------------------------------------------------------------------
        bu        L115                  ; |219| 
;*      Branch Occurs to L115           ; |219| 
L63:        
	.line	159
;----------------------------------------------------------------------
; 223 | if (ANALYZER_MODE.val&0xFF==SUB_ANALYZER)                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |223| 
        cmpi      0,r0                  ; |223| 
        ldp       @CL49,DP
        beq       L65                   ; |223| 
;*      Branch Occurs to L65            ; |223| 
	.line	160
;----------------------------------------------------------------------
; 224 | sprintf(E_STRING,"ERROR: Invalid PV");  //R_UHOH                       
; 225 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      @CL50,r1              ; |224| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |224| 
        ldp       @CL42,DP
        push      r1                    ; |224| 
        ldiu      @CL42,ar2             ; |224| 
        callu     r0                    ; far call to _sprintf	; |224| 
                                        ; |224| Far Call Occurs
        subi      1,sp                  ; |224| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L65:        
	.line	163
;----------------------------------------------------------------------
; 227 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |227| 
        ldiu      *ar0,r0               ; |227| 
        cmpi      0,r0                  ; |227| 
        beq       L67                   ; |227| 
;*      Branch Occurs to L67            ; |227| 
	.line	165
;----------------------------------------------------------------------
; 229 | Get_Russ_Line(356,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |229| 
        ldiu      356,ar2               ; |229| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |229| 
        ldiu      @CL40,r2              ; |229| 
        callu     r0                    ; far call to _Get_Russ_Line	; |229| 
                                        ; |229| Far Call Occurs
	.line	166
;----------------------------------------------------------------------
; 230 | sprintf(E_STRING,OUT_STR);                                             
; 232 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |230| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |230| 
        ldp       @CL42,DP
        push      r1                    ; |230| 
        ldiu      @CL42,ar2             ; |230| 
        callu     r0                    ; far call to _sprintf	; |230| 
                                        ; |230| Far Call Occurs
        subi      1,sp                  ; |230| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L67:        
	.line	169
;----------------------------------------------------------------------
; 233 | sprintf(E_STRING,"ERROR: Invalid WCut");        //R356                 
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,r1              ; |233| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |233| 
        ldp       @CL42,DP
        push      r1                    ; |233| 
        ldiu      @CL42,ar2             ; |233| 
        callu     r0                    ; far call to _sprintf	; |233| 
                                        ; |233| Far Call Occurs
        subi      1,sp                  ; |233| 
	.line	172
;----------------------------------------------------------------------
; 236 | break;                                                                 
; 238 | case E_ERROR_WATERCUT_UNDERRANGE:                                      
;----------------------------------------------------------------------
        bu        L115                  ; |236| 
;*      Branch Occurs to L115           ; |236| 
L68:        
	.line	176
;----------------------------------------------------------------------
; 240 | if (ANALYZER_MODE.val&0xFF==SUB_ANALYZER)                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |240| 
        cmpi      0,r0                  ; |240| 
        ldp       @CL49,DP
        beq       L70                   ; |240| 
;*      Branch Occurs to L70            ; |240| 
	.line	177
;----------------------------------------------------------------------
; 241 | sprintf(E_STRING,"ERROR: Lo PV");       //R_UHOH                       
; 242 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldiu      @CL52,r1              ; |241| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |241| 
        ldp       @CL42,DP
        push      r1                    ; |241| 
        ldiu      @CL42,ar2             ; |241| 
        callu     r0                    ; far call to _sprintf	; |241| 
                                        ; |241| Far Call Occurs
        subi      1,sp                  ; |241| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L70:        
	.line	179
;----------------------------------------------------------------------
; 243 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |243| 
        ldiu      *ar0,r0               ; |243| 
        cmpi      0,r0                  ; |243| 
        beq       L72                   ; |243| 
;*      Branch Occurs to L72            ; |243| 
	.line	181
;----------------------------------------------------------------------
; 245 | Get_Russ_Line(357,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |245| 
        ldiu      357,ar2               ; |245| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |245| 
        ldiu      @CL40,r2              ; |245| 
        callu     r0                    ; far call to _Get_Russ_Line	; |245| 
                                        ; |245| Far Call Occurs
	.line	182
;----------------------------------------------------------------------
; 246 | sprintf(E_STRING,OUT_STR);                                             
; 248 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r0              ; |246| 
        ldp       @CL43,DP
        ldiu      @CL43,r1              ; |246| 
        ldp       @CL42,DP
        push      r0                    ; |246| 
        ldiu      @CL42,ar2             ; |246| 
        callu     r1                    ; far call to _sprintf	; |246| 
                                        ; |246| Far Call Occurs
        subi      1,sp                  ; |246| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L72:        
	.line	185
;----------------------------------------------------------------------
; 249 | sprintf(E_STRING,"ERROR: Lo Water Cut");        //R357                 
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      @CL53,r0              ; |249| 
        ldp       @CL43,DP
        ldiu      @CL43,r1              ; |249| 
        ldp       @CL42,DP
        push      r0                    ; |249| 
        ldiu      @CL42,ar2             ; |249| 
        callu     r1                    ; far call to _sprintf	; |249| 
                                        ; |249| Far Call Occurs
        subi      1,sp                  ; |249| 
	.line	186
;----------------------------------------------------------------------
; 250 | break;                                                                 
; 252 | case E_ERROR_RP_THRESH:                                                
; 253 | case E_ERROR_WATERCUT_OVER:                                            
; 254 | case E_ERROR_WATERCUT_OVERRANGE:                                       
;----------------------------------------------------------------------
        bu        L115                  ; |250| 
;*      Branch Occurs to L115           ; |250| 
L73:        
	.line	192
;----------------------------------------------------------------------
; 256 | if (ANALYZER_MODE.val&0xFF==SUB_ANALYZER)                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |256| 
        cmpi      0,r0                  ; |256| 
        ldp       @CL49,DP
        beq       L75                   ; |256| 
;*      Branch Occurs to L75            ; |256| 
	.line	193
;----------------------------------------------------------------------
; 257 | sprintf(E_STRING,"ERROR: Hi PV");       //R_UHOH                       
; 258 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldiu      @CL54,r1              ; |257| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |257| 
        ldp       @CL42,DP
        push      r1                    ; |257| 
        ldiu      @CL42,ar2             ; |257| 
        callu     r0                    ; far call to _sprintf	; |257| 
                                        ; |257| Far Call Occurs
        subi      1,sp                  ; |257| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L75:        
	.line	196
;----------------------------------------------------------------------
; 260 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |260| 
        ldiu      *ar0,r0               ; |260| 
        cmpi      0,r0                  ; |260| 
        beq       L77                   ; |260| 
;*      Branch Occurs to L77            ; |260| 
	.line	198
;----------------------------------------------------------------------
; 262 | Get_Russ_Line(352,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |262| 
        ldiu      352,ar2               ; |262| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |262| 
        ldiu      @CL40,r2              ; |262| 
        callu     r0                    ; far call to _Get_Russ_Line	; |262| 
                                        ; |262| Far Call Occurs
	.line	199
;----------------------------------------------------------------------
; 263 | sprintf(E_STRING,OUT_STR);                                             
; 265 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |263| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |263| 
        ldp       @CL42,DP
        push      r1                    ; |263| 
        ldiu      @CL42,ar2             ; |263| 
        callu     r0                    ; far call to _sprintf	; |263| 
                                        ; |263| Far Call Occurs
        subi      1,sp                  ; |263| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L77:        
	.line	202
;----------------------------------------------------------------------
; 266 | sprintf(E_STRING,"ERROR: Hi Water Cut");        //R352                 
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldiu      @CL55,r1              ; |266| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |266| 
        ldp       @CL42,DP
        push      r1                    ; |266| 
        ldiu      @CL42,ar2             ; |266| 
        callu     r0                    ; far call to _sprintf	; |266| 
                                        ; |266| Far Call Occurs
        subi      1,sp                  ; |266| 
	.line	205
;----------------------------------------------------------------------
; 269 | break;                                                                 
; 271 | case E_ERROR_FLASH_FAIL_RESET_BASICS:                                  
;----------------------------------------------------------------------
        bu        L115                  ; |269| 
;*      Branch Occurs to L115           ; |269| 
L78:        
	.line	208
;----------------------------------------------------------------------
; 272 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |272| 
        ldiu      *ar0,r0               ; |272| 
        cmpi      0,r0                  ; |272| 
        beq       L80                   ; |272| 
;*      Branch Occurs to L80            ; |272| 
	.line	210
;----------------------------------------------------------------------
; 274 | Get_Russ_Line(360,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |274| 
        ldiu      360,ar2               ; |274| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |274| 
        ldiu      @CL40,r2              ; |274| 
        callu     r0                    ; far call to _Get_Russ_Line	; |274| 
                                        ; |274| Far Call Occurs
	.line	211
;----------------------------------------------------------------------
; 275 | sprintf(E_STRING,OUT_STR);                                             
; 277 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |275| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |275| 
        ldp       @CL42,DP
        push      r1                    ; |275| 
        ldiu      @CL42,ar2             ; |275| 
        callu     r0                    ; far call to _sprintf	; |275| 
                                        ; |275| Far Call Occurs
        subi      1,sp                  ; |275| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L80:        
	.line	214
;----------------------------------------------------------------------
; 278 | sprintf(E_STRING,"ERROR: RESET BASICS");        //R360                 
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,r1              ; |278| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |278| 
        ldp       @CL42,DP
        push      r1                    ; |278| 
        ldiu      @CL42,ar2             ; |278| 
        callu     r0                    ; far call to _sprintf	; |278| 
                                        ; |278| Far Call Occurs
        subi      1,sp                  ; |278| 
	.line	215
;----------------------------------------------------------------------
; 279 | break;                                                                 
; 280 | case E_ERROR_TEMPERATURE_UNDERRANGE:                                   
;----------------------------------------------------------------------
        bu        L115                  ; |279| 
;*      Branch Occurs to L115           ; |279| 
L81:        
	.line	217
;----------------------------------------------------------------------
; 281 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |281| 
        ldiu      *ar0,r0               ; |281| 
        cmpi      0,r0                  ; |281| 
        beq       L83                   ; |281| 
;*      Branch Occurs to L83            ; |281| 
	.line	219
;----------------------------------------------------------------------
; 283 | Get_Russ_Line(358,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |283| 
        ldiu      358,ar2               ; |283| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |283| 
        ldiu      @CL40,r2              ; |283| 
        callu     r0                    ; far call to _Get_Russ_Line	; |283| 
                                        ; |283| Far Call Occurs
	.line	220
;----------------------------------------------------------------------
; 284 | sprintf(E_STRING,OUT_STR);                                             
; 286 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |284| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |284| 
        ldp       @CL42,DP
        push      r1                    ; |284| 
        ldiu      @CL42,ar2             ; |284| 
        callu     r0                    ; far call to _sprintf	; |284| 
                                        ; |284| Far Call Occurs
        subi      1,sp                  ; |284| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L83:        
	.line	223
;----------------------------------------------------------------------
; 287 | sprintf(E_STRING,"ERROR: Low Temp.");   //R358                         
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      @CL57,r1              ; |287| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |287| 
        ldp       @CL42,DP
        push      r1                    ; |287| 
        ldiu      @CL42,ar2             ; |287| 
        callu     r0                    ; far call to _sprintf	; |287| 
                                        ; |287| Far Call Occurs
        subi      1,sp                  ; |287| 
	.line	224
;----------------------------------------------------------------------
; 288 | break;                                                                 
; 289 | case E_ERROR_TEMPERATURE_OVERRANGE:                                    
;----------------------------------------------------------------------
        bu        L115                  ; |288| 
;*      Branch Occurs to L115           ; |288| 
L84:        
	.line	226
;----------------------------------------------------------------------
; 290 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |290| 
        ldiu      *ar0,r0               ; |290| 
        cmpi      0,r0                  ; |290| 
        beq       L86                   ; |290| 
;*      Branch Occurs to L86            ; |290| 
	.line	228
;----------------------------------------------------------------------
; 292 | Get_Russ_Line(353,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |292| 
        ldiu      353,ar2               ; |292| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |292| 
        ldiu      @CL40,r2              ; |292| 
        callu     r0                    ; far call to _Get_Russ_Line	; |292| 
                                        ; |292| Far Call Occurs
	.line	229
;----------------------------------------------------------------------
; 293 | sprintf(E_STRING,OUT_STR);                                             
; 295 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |293| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |293| 
        ldp       @CL42,DP
        push      r1                    ; |293| 
        ldiu      @CL42,ar2             ; |293| 
        callu     r0                    ; far call to _sprintf	; |293| 
                                        ; |293| Far Call Occurs
        subi      1,sp                  ; |293| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L86:        
	.line	232
;----------------------------------------------------------------------
; 296 | sprintf(E_STRING,"ERROR: High Temp.");  //R353                         
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,r1              ; |296| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |296| 
        ldp       @CL42,DP
        push      r1                    ; |296| 
        ldiu      @CL42,ar2             ; |296| 
        callu     r0                    ; far call to _sprintf	; |296| 
                                        ; |296| Far Call Occurs
        subi      1,sp                  ; |296| 
	.line	233
;----------------------------------------------------------------------
; 297 | break;                                                                 
; 298 | case E_ERROR_TIME_RESET:                                               
;----------------------------------------------------------------------
        bu        L115                  ; |297| 
;*      Branch Occurs to L115           ; |297| 
L87:        
	.line	235
;----------------------------------------------------------------------
; 299 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |299| 
        ldiu      *ar0,r0               ; |299| 
        cmpi      0,r0                  ; |299| 
        beq       L89                   ; |299| 
;*      Branch Occurs to L89            ; |299| 
	.line	237
;----------------------------------------------------------------------
; 301 | Get_Russ_Line(355,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |301| 
        ldiu      355,ar2               ; |301| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |301| 
        ldiu      @CL40,r2              ; |301| 
        callu     r0                    ; far call to _Get_Russ_Line	; |301| 
                                        ; |301| Far Call Occurs
	.line	238
;----------------------------------------------------------------------
; 302 | sprintf(E_STRING,OUT_STR);                                             
; 304 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |302| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |302| 
        ldp       @CL42,DP
        push      r1                    ; |302| 
        ldiu      @CL42,ar2             ; |302| 
        callu     r0                    ; far call to _sprintf	; |302| 
                                        ; |302| Far Call Occurs
        subi      1,sp                  ; |302| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L89:        
	.line	241
;----------------------------------------------------------------------
; 305 | sprintf(E_STRING,"ERROR: Invalid Time");        //R355                 
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,r1              ; |305| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |305| 
        ldp       @CL42,DP
        push      r1                    ; |305| 
        ldiu      @CL42,ar2             ; |305| 
        callu     r0                    ; far call to _sprintf	; |305| 
                                        ; |305| Far Call Occurs
        subi      1,sp                  ; |305| 
	.line	242
;----------------------------------------------------------------------
; 306 | break;                                                                 
; 307 | case E_ERROR_PHASE_LOGIC:                                              
;----------------------------------------------------------------------
        bu        L115                  ; |306| 
;*      Branch Occurs to L115           ; |306| 
L90:        
	.line	244
;----------------------------------------------------------------------
; 308 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |308| 
        ldiu      *ar0,r0               ; |308| 
        cmpi      0,r0                  ; |308| 
        beq       L92                   ; |308| 
;*      Branch Occurs to L92            ; |308| 
	.line	246
;----------------------------------------------------------------------
; 310 | Get_Russ_Line(359,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |310| 
        ldiu      359,ar2               ; |310| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |310| 
        ldiu      @CL40,r2              ; |310| 
        callu     r0                    ; far call to _Get_Russ_Line	; |310| 
                                        ; |310| Far Call Occurs
	.line	247
;----------------------------------------------------------------------
; 311 | sprintf(E_STRING,OUT_STR);                                             
; 313 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |311| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |311| 
        ldp       @CL42,DP
        push      r1                    ; |311| 
        ldiu      @CL42,ar2             ; |311| 
        callu     r0                    ; far call to _sprintf	; |311| 
                                        ; |311| Far Call Occurs
        subi      1,sp                  ; |311| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L92:        
	.line	250
;----------------------------------------------------------------------
; 314 | sprintf(E_STRING,"ERROR: Phase Logic");         //R359                 
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r1              ; |314| 
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |314| 
        ldp       @CL42,DP
        push      r1                    ; |314| 
        ldiu      @CL42,ar2             ; |314| 
        callu     r0                    ; far call to _sprintf	; |314| 
                                        ; |314| Far Call Occurs
        subi      1,sp                  ; |314| 
	.line	251
;----------------------------------------------------------------------
; 315 | break;                                                                 
; 316 | default:                                                               
;----------------------------------------------------------------------
        bu        L115                  ; |315| 
;*      Branch Occurs to L115           ; |315| 
L93:        
	.line	253
;----------------------------------------------------------------------
; 317 | if (RUSS)                                                              
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |317| 
        ldiu      *ar0,r0               ; |317| 
        cmpi      0,r0                  ; |317| 
        beq       L95                   ; |317| 
;*      Branch Occurs to L95            ; |317| 
	.line	255
;----------------------------------------------------------------------
; 319 | Get_Russ_Line(385,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |319| 
        ldiu      385,ar2               ; |319| 
        ldp       @CL40,DP
        ldiu      0,r3                  ; |319| 
        ldiu      @CL40,r2              ; |319| 
        callu     r0                    ; far call to _Get_Russ_Line	; |319| 
                                        ; |319| Far Call Occurs
	.line	256
;----------------------------------------------------------------------
; 320 | sprintf(E_STRING,"%s #%02d",OUT_STR,DIAGNOSTICS_ERROR_CODE);           
; 322 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |320| 
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |320| 
        ldp       @CL61,DP
        ldiu      @CL61,r2              ; |320| 
        ldp       @CL43,DP
        ldiu      *ar0,r3               ; |320| 
        ldiu      @CL43,r0              ; |320| 
        push      r3                    ; |320| 
        ldp       @CL42,DP
        push      r1                    ; |320| 
        ldiu      @CL42,ar2             ; |320| 
        push      r2                    ; |320| 
        callu     r0                    ; far call to _sprintf	; |320| 
                                        ; |320| Far Call Occurs
        subi      3,sp                  ; |320| 
        bu        L115                  ; |64| 
;*      Branch Occurs to L115           ; |64| 
L95:        
	.line	259
;----------------------------------------------------------------------
; 323 | sprintf(E_STRING,"ERROR #%02d",DIAGNOSTICS_ERROR_CODE); //R385         
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |323| 
        ldp       @CL62,DP
        ldiu      @CL62,r0              ; |323| 
        ldp       @CL43,DP
        ldiu      *ar0,r2               ; |323| 
        ldiu      @CL43,r1              ; |323| 
        ldp       @CL42,DP
        push      r2                    ; |323| 
        ldiu      @CL42,ar2             ; |323| 
        push      r0                    ; |323| 
        callu     r1                    ; far call to _sprintf	; |323| 
                                        ; |323| Far Call Occurs
        subi      2,sp                  ; |323| 
	.line	260
;----------------------------------------------------------------------
; 324 | break;                                                                 
;----------------------------------------------------------------------
        bu        L115                  ; |324| 
;*      Branch Occurs to L115           ; |324| 
L97:        
	.line	106
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |170| 
        ldiu      *ar0,r0               ; |170| 
        cmpi      16,r0                 ; |170| 
        bgt       L107                  ; |170| 
;*      Branch Occurs to L107           ; |170| 
        beq       L78                   ; |170| 
;*      Branch Occurs to L78            ; |170| 
        cmpi      0,r0                  ; |170| 
        beq       L48                   ; |170| 
;*      Branch Occurs to L48            ; |170| 
        cmpi      1,r0                  ; |170| 
        beq       L51                   ; |170| 
;*      Branch Occurs to L51            ; |170| 
        cmpi      6,r0                  ; |170| 
        beq       L73                   ; |170| 
;*      Branch Occurs to L73            ; |170| 
        cmpi      8,r0                  ; |170| 
        beq       L54                   ; |170| 
;*      Branch Occurs to L54            ; |170| 
        cmpi      9,r0                  ; |170| 
        beq       L57                   ; |170| 
;*      Branch Occurs to L57            ; |170| 
        cmpi      10,r0                 ; |170| 
        beq       L60                   ; |170| 
;*      Branch Occurs to L60            ; |170| 
        cmpi      11,r0                 ; |170| 
        beq       L68                   ; |170| 
;*      Branch Occurs to L68            ; |170| 
        bu        L93                   ; |170| 
;*      Branch Occurs to L93            ; |170| 
L107:        
        cmpi      19,r0                 ; |170| 
        beq       L73                   ; |170| 
;*      Branch Occurs to L73            ; |170| 
        cmpi      20,r0                 ; |170| 
        beq       L73                   ; |170| 
;*      Branch Occurs to L73            ; |170| 
        cmpi      25,r0                 ; |170| 
        beq       L81                   ; |170| 
;*      Branch Occurs to L81            ; |170| 
        cmpi      26,r0                 ; |170| 
        beq       L84                   ; |170| 
;*      Branch Occurs to L84            ; |170| 
        cmpi      28,r0                 ; |170| 
        beq       L90                   ; |170| 
;*      Branch Occurs to L90            ; |170| 
        cmpi      35,r0                 ; |170| 
        beq       L87                   ; |170| 
;*      Branch Occurs to L87            ; |170| 
        cmpi      50,r0                 ; |170| 
        beq       L63                   ; |170| 
;*      Branch Occurs to L63            ; |170| 
        bu        L93                   ; |170| 
;*      Branch Occurs to L93            ; |170| 
L115:        
	.line	263
;----------------------------------------------------------------------
; 327 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	264
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        popf      f6
                                        ; Unallocate the Frame
        subi      31,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	328,000000040h,29


	.sect	 "internal_RAM"

	.global	_Self_Test_FULL
	.sym	_Self_Test_FULL,_Self_Test_FULL,32,2,0
	.func	343
;******************************************************************************
;* FUNCTION NAME: _Self_Test_FULL                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Self_Test_FULL:
	.sym	_s,1,30,1,32
	.sym	_d,2,30,1,32
	.sym	_i,3,4,1,32
	.sym	_CRC,4,14,1,32
	.line	1
;----------------------------------------------------------------------
; 343 | void Self_Test_FULL(void)                                              
; 345 | unsigned int*   s;      /* not used */                                 
; 346 | unsigned int*   d;      /* not used */                                 
; 347 | int                             i;      /* not used */                 
; 348 | unsigned int    CRC;    /* CRC error code */                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	8
;----------------------------------------------------------------------
; 350 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
; 351 | DIO_BUILT_IN_TEST.val = TRUE;
;     |          /* test in progress */                                        
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldiu      @CL63,ar0             ; |351| 
        ldiu      1,r0                  ; |351| 
        sti       r0,*ar0               ; |351| 
	.line	13
;----------------------------------------------------------------------
; 355 | if (Calc_CRC(FLASH_LOC_CFG_FACTORY, FLASH_CFG_SIZE))    /* Test Factory
;     |  CFG */                                                                
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar2             ; |355| 
        ldp       @CL65,DP
        ldiu      @CL65,r2              ; |355| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |355| 
        callu     r0                    ; far call to _Calc_CRC	; |355| 
                                        ; |355| Far Call Occurs
        cmpi      0,r0                  ; |355| 
        beq       L120                  ; |355| 
;*      Branch Occurs to L120           ; |355| 
	.line	14
;----------------------------------------------------------------------
; 356 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |356| 
        ldiu      8,r0                  ; |356| 
        or3       r0,*ar0,r0            ; |356| 
        sti       r0,*ar0               ; |356| 
L120:        
	.line	16
;----------------------------------------------------------------------
; 358 | if (Calc_CRC(FLASH_LOC_CFG1, FLASH_CFG_SIZE))                   /* Test
;     |  Location 1 CFG */                                                     
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,ar2             ; |358| 
        ldp       @CL65,DP
        ldiu      @CL65,r2              ; |358| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |358| 
        callu     r0                    ; far call to _Calc_CRC	; |358| 
                                        ; |358| Far Call Occurs
        cmpi      0,r0                  ; |358| 
        beq       L122                  ; |358| 
;*      Branch Occurs to L122           ; |358| 
	.line	17
;----------------------------------------------------------------------
; 359 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |359| 
        ldiu      8,r0                  ; |359| 
        or3       r0,*ar0,r0            ; |359| 
        sti       r0,*ar0               ; |359| 
L122:        
	.line	19
;----------------------------------------------------------------------
; 361 | CRC = Calc_CRC(FLASH_LOC_BOOT, FLASH_BOOT_SIZE);                /* Test
;     |  Boot */                                                               
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldiu      @CL68,ar2             ; |361| 
        ldp       @CL66,DP
        ldiu      8192,r2               ; |361| 
        ldiu      @CL66,r0              ; |361| 
        callu     r0                    ; far call to _Calc_CRC	; |361| 
                                        ; |361| Far Call Occurs
        sti       r0,*+fp(4)            ; |361| 
	.line	21
;----------------------------------------------------------------------
; 363 | if (CRC!=CRC_BOOT)                                                     
;----------------------------------------------------------------------
        ldp       @CL69,DP
        ldiu      @CL69,ar0             ; |363| 
        cmpi3     *ar0,r0               ; |363| 
        beq       L124                  ; |363| 
;*      Branch Occurs to L124           ; |363| 
	.line	22
;----------------------------------------------------------------------
; 364 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |364| 
        ldiu      8,r0                  ; |364| 
        or3       r0,*ar0,r0            ; |364| 
        sti       r0,*ar0               ; |364| 
L124:        
	.line	24
;----------------------------------------------------------------------
; 366 | CRC = Calc_CRC(FLASH_LOC_FAST, FLASH_FAST_SIZE);                /* Test
;     |  Fast Flash */                                                         
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,ar2             ; |366| 
        ldp       @CL65,DP
        ldiu      @CL65,r2              ; |366| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |366| 
        callu     r0                    ; far call to _Calc_CRC	; |366| 
                                        ; |366| Far Call Occurs
        sti       r0,*+fp(4)            ; |366| 
	.line	26
;----------------------------------------------------------------------
; 368 | if (CRC!=CRC_FAST)                                                     
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,ar0             ; |368| 
        cmpi3     *ar0,r0               ; |368| 
        beq       L126                  ; |368| 
;*      Branch Occurs to L126           ; |368| 
	.line	27
;----------------------------------------------------------------------
; 369 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |369| 
        ldiu      8,r0                  ; |369| 
        or3       r0,*ar0,r0            ; |369| 
        sti       r0,*ar0               ; |369| 
L126:        
	.line	29
;----------------------------------------------------------------------
; 371 | CRC = Calc_CRC(FLASH_LOC_APP, FLASH_APP_SIZE);                  /* Test
;     |  Application */                                                        
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar2             ; |371| 
        ldp       @CL73,DP
        ldiu      @CL73,r2              ; |371| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |371| 
        callu     r0                    ; far call to _Calc_CRC	; |371| 
                                        ; |371| Far Call Occurs
        sti       r0,*+fp(4)            ; |371| 
	.line	31
;----------------------------------------------------------------------
; 373 | if (CRC!=CRC_APP)                                                      
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,ar0             ; |373| 
        cmpi3     *ar0,r0               ; |373| 
        beq       L128                  ; |373| 
;*      Branch Occurs to L128           ; |373| 
	.line	32
;----------------------------------------------------------------------
; 374 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |374| 
        ldiu      8,r0                  ; |374| 
        or3       r0,*ar0,r0            ; |374| 
        sti       r0,*ar0               ; |374| 
L128:        
	.line	34
;----------------------------------------------------------------------
; 376 | CRC = Calc_CRC(FLASH_LOC_INIT, FLASH_INIT_SIZE);                /* Test
;     |  initialization */                                                     
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,ar2             ; |376| 
        ldp       @CL76,DP
        ldiu      @CL76,r2              ; |376| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |376| 
        callu     r0                    ; far call to _Calc_CRC	; |376| 
                                        ; |376| Far Call Occurs
        sti       r0,*+fp(4)            ; |376| 
	.line	36
;----------------------------------------------------------------------
; 378 | if (CRC!=CRC_INIT)                                                     
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      @CL77,ar0             ; |378| 
        cmpi3     *ar0,r0               ; |378| 
        beq       L130                  ; |378| 
;*      Branch Occurs to L130           ; |378| 
	.line	37
;----------------------------------------------------------------------
; 379 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |379| 
        ldiu      8,r0                  ; |379| 
        or3       r0,*ar0,r0            ; |379| 
        sti       r0,*ar0               ; |379| 
L130:        
	.line	39
;----------------------------------------------------------------------
; 381 | DIO_BUILT_IN_TEST.val = FALSE;
;     |          /* test complete */                                           
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldiu      @CL63,ar0             ; |381| 
        ldiu      0,r0                  ; |381| 
        sti       r0,*ar0               ; |381| 
	.line	40
;----------------------------------------------------------------------
; 382 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	41
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	383,000000000h,4


	.sect	 "internal_RAM"

	.global	_Self_Test5
	.sym	_Self_Test5,_Self_Test5,32,2,0
	.func	397
;******************************************************************************
;* FUNCTION NAME: _Self_Test5                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Self_Test5:
	.sym	_s,1,30,1,32
	.sym	_d,2,30,1,32
	.sym	_i,3,4,1,32
	.sym	_CRC,4,14,1,32
	.line	1
;----------------------------------------------------------------------
; 397 | void Self_Test5(void)                                                  
; 399 | unsigned int*   s;      /* not used  */                                
; 400 | unsigned int*   d;      /* not used  */                                
; 401 | int                             i;      /* not used  */                
; 402 | unsigned int    CRC;/* CRC error */                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	8
;----------------------------------------------------------------------
; 404 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 406 | if (DIO_BUILT_IN_TEST_ENABLE.val)                                      
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,ar0             ; |406| 
        ldiu      *ar0,r0               ; |406| 
        cmpi      0,r0                  ; |406| 
        beq       L139                  ; |406| 
;*      Branch Occurs to L139           ; |406| 
	.line	12
;----------------------------------------------------------------------
; 408 | CRC = Calc_CRC(FLASH_LOC_APP, FLASH_APP_SIZE);  /* Test Applicaton Flas
;     | h */                                                                   
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar2             ; |408| 
        ldp       @CL73,DP
        ldiu      @CL73,r2              ; |408| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |408| 
        callu     r0                    ; far call to _Calc_CRC	; |408| 
                                        ; |408| Far Call Occurs
        sti       r0,*+fp(4)            ; |408| 
	.line	14
;----------------------------------------------------------------------
; 410 | if (CRC!=CRC_APP)                                                      
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,ar0             ; |410| 
        cmpi3     *ar0,r0               ; |410| 
        beq       L136                  ; |410| 
;*      Branch Occurs to L136           ; |410| 
	.line	15
;----------------------------------------------------------------------
; 411 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |411| 
        ldiu      8,r0                  ; |411| 
        or3       r0,*ar0,r0            ; |411| 
        sti       r0,*ar0               ; |411| 
L136:        
	.line	17
;----------------------------------------------------------------------
; 413 | CRC = Calc_CRC(FLASH_LOC_INIT, FLASH_INIT_SIZE);/* Test Intitialization
;     |  Flash */                                                              
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,ar2             ; |413| 
        ldp       @CL76,DP
        ldiu      @CL76,r2              ; |413| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |413| 
        callu     r0                    ; far call to _Calc_CRC	; |413| 
                                        ; |413| Far Call Occurs
        sti       r0,*+fp(4)            ; |413| 
	.line	19
;----------------------------------------------------------------------
; 415 | if (CRC!=CRC_INIT)                                                     
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      @CL77,ar0             ; |415| 
        cmpi3     *ar0,r0               ; |415| 
        beq       L138                  ; |415| 
;*      Branch Occurs to L138           ; |415| 
	.line	20
;----------------------------------------------------------------------
; 416 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |416| 
        ldiu      8,r0                  ; |416| 
        or3       r0,*ar0,r0            ; |416| 
        sti       r0,*ar0               ; |416| 
L138:        
	.line	22
;----------------------------------------------------------------------
; 418 | TMR_SELFTEST.vect = (int*)Self_Test1;                   /* Set vector t
;     | o Self_Test1 */                                                        
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |418| 
        ldp       @CL80,DP
        ldiu      @CL80,r0              ; |418| 
        sti       r0,*ar0               ; |418| 
L139:        
	.line	25
;----------------------------------------------------------------------
; 421 | Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);             
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      @CL82,r0              ; |421| 
        ldiu      2,r3                  ; |421| 
        ldp       @CL81,DP
        ldiu      0,r2                  ; |421| 
        ldiu      @CL81,ar2             ; |421| 
        callu     r0                    ; far call to _Timer_Insert	; |421| 
                                        ; |421| Far Call Occurs
	.line	27
;----------------------------------------------------------------------
; 423 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	28
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	424,000000000h,4


	.sect	 "internal_RAM"

	.global	_Self_Test4
	.sym	_Self_Test4,_Self_Test4,32,2,0
	.func	438
;******************************************************************************
;* FUNCTION NAME: _Self_Test4                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Self_Test4:
	.sym	_s,1,30,1,32
	.sym	_d,2,30,1,32
	.sym	_i,3,4,1,32
	.sym	_CRC,4,14,1,32
	.line	1
;----------------------------------------------------------------------
; 438 | void Self_Test4(void)                                                  
; 440 | unsigned int*   s;      /* not used  */                                
; 441 | unsigned int*   d;      /* not used  */                                
; 442 | int                             i;      /* not used  */                
; 443 | unsigned int    CRC;/* CRC error */                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	8
;----------------------------------------------------------------------
; 445 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
; 446 | if (DIO_BUILT_IN_TEST_ENABLE.val)                                      
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,ar0             ; |446| 
        ldiu      *ar0,r0               ; |446| 
        cmpi      0,r0                  ; |446| 
        beq       L146                  ; |446| 
;*      Branch Occurs to L146           ; |446| 
	.line	11
;----------------------------------------------------------------------
; 448 | CRC = Calc_CRC(FLASH_LOC_FAST, FLASH_FAST_SIZE);        /* Check Fast F
;     | lash */                                                                
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,ar2             ; |448| 
        ldp       @CL65,DP
        ldiu      @CL65,r2              ; |448| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |448| 
        callu     r0                    ; far call to _Calc_CRC	; |448| 
                                        ; |448| Far Call Occurs
        sti       r0,*+fp(4)            ; |448| 
	.line	13
;----------------------------------------------------------------------
; 450 | if (CRC!=CRC_FAST)                                                     
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,ar0             ; |450| 
        cmpi3     *ar0,r0               ; |450| 
        beq       L145                  ; |450| 
;*      Branch Occurs to L145           ; |450| 
	.line	14
;----------------------------------------------------------------------
; 451 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |451| 
        ldiu      8,r0                  ; |451| 
        or3       r0,*ar0,r0            ; |451| 
        sti       r0,*ar0               ; |451| 
L145:        
	.line	16
;----------------------------------------------------------------------
; 453 | TMR_SELFTEST.vect = (int*)Self_Test5;                           /* Set
;     | vector to Self_Test5 */                                                
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |453| 
        ldp       @CL83,DP
        ldiu      @CL83,r0              ; |453| 
        sti       r0,*ar0               ; |453| 
L146:        
	.line	19
;----------------------------------------------------------------------
; 456 | Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);             
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      @CL82,r0              ; |456| 
        ldiu      2,r3                  ; |456| 
        ldp       @CL81,DP
        ldiu      0,r2                  ; |456| 
        ldiu      @CL81,ar2             ; |456| 
        callu     r0                    ; far call to _Timer_Insert	; |456| 
                                        ; |456| Far Call Occurs
	.line	21
;----------------------------------------------------------------------
; 458 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	22
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	459,000000000h,4


	.sect	 "internal_RAM"

	.global	_Self_Test3
	.sym	_Self_Test3,_Self_Test3,32,2,0
	.func	473
;******************************************************************************
;* FUNCTION NAME: _Self_Test3                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Self_Test3:
	.sym	_CRC,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 473 | void Self_Test3(void)                                                  
; 475 | unsigned int CRC;                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 477 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 479 | if (DIO_BUILT_IN_TEST_ENABLE.val)                                      
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,ar0             ; |479| 
        ldiu      *ar0,r0               ; |479| 
        cmpi      0,r0                  ; |479| 
        beq       L153                  ; |479| 
;*      Branch Occurs to L153           ; |479| 
	.line	9
;----------------------------------------------------------------------
; 481 | CRC = Calc_CRC(FLASH_LOC_BOOT, FLASH_BOOT_SIZE);        /* Test Boot Fl
;     | ash */                                                                 
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldiu      @CL68,ar2             ; |481| 
        ldp       @CL66,DP
        ldiu      8192,r2               ; |481| 
        ldiu      @CL66,r0              ; |481| 
        callu     r0                    ; far call to _Calc_CRC	; |481| 
                                        ; |481| Far Call Occurs
        sti       r0,*+fp(1)            ; |481| 
	.line	11
;----------------------------------------------------------------------
; 483 | if (CRC!=CRC_BOOT)                                                     
;----------------------------------------------------------------------
        ldp       @CL69,DP
        ldiu      @CL69,ar0             ; |483| 
        cmpi3     *ar0,r0               ; |483| 
        beq       L152                  ; |483| 
;*      Branch Occurs to L152           ; |483| 
	.line	12
;----------------------------------------------------------------------
; 484 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |484| 
        ldiu      8,r0                  ; |484| 
        or3       r0,*ar0,r0            ; |484| 
        sti       r0,*ar0               ; |484| 
L152:        
	.line	14
;----------------------------------------------------------------------
; 486 | TMR_SELFTEST.vect = (int*)Self_Test4;                           /* Set
;     | vector Self_Test4 */                                                   
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |486| 
        ldp       @CL84,DP
        ldiu      @CL84,r0              ; |486| 
        sti       r0,*ar0               ; |486| 
L153:        
	.line	17
;----------------------------------------------------------------------
; 489 | Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);             
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      @CL82,r0              ; |489| 
        ldiu      2,r3                  ; |489| 
        ldp       @CL81,DP
        ldiu      0,r2                  ; |489| 
        ldiu      @CL81,ar2             ; |489| 
        callu     r0                    ; far call to _Timer_Insert	; |489| 
                                        ; |489| Far Call Occurs
	.line	19
;----------------------------------------------------------------------
; 491 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	20
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	492,000000000h,1


	.sect	 "internal_RAM"

	.global	_Self_Test2
	.sym	_Self_Test2,_Self_Test2,32,2,0
	.func	506
;******************************************************************************
;* FUNCTION NAME: _Self_Test2                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Self_Test2:
	.line	1
;----------------------------------------------------------------------
; 506 | void Self_Test2(void)                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 508 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 510 | if (DIO_BUILT_IN_TEST_ENABLE.val)                                      
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,ar0             ; |510| 
        ldiu      *ar0,r0               ; |510| 
        cmpi      0,r0                  ; |510| 
        beq       L160                  ; |510| 
;*      Branch Occurs to L160           ; |510| 
	.line	7
;----------------------------------------------------------------------
; 512 | if (Calc_CRC(FLASH_LOC_CFG1, FLASH_CFG_SIZE))   /* Test Config 1 Flash
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,ar2             ; |512| 
        ldp       @CL65,DP
        ldiu      @CL65,r2              ; |512| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |512| 
        callu     r0                    ; far call to _Calc_CRC	; |512| 
                                        ; |512| Far Call Occurs
        cmpi      0,r0                  ; |512| 
        beq       L159                  ; |512| 
;*      Branch Occurs to L159           ; |512| 
	.line	8
;----------------------------------------------------------------------
; 513 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |513| 
        ldiu      8,r0                  ; |513| 
        or3       r0,*ar0,r0            ; |513| 
        sti       r0,*ar0               ; |513| 
L159:        
	.line	10
;----------------------------------------------------------------------
; 515 | TMR_SELFTEST.vect = (int*)Self_Test3;                   /* Set vector t
;     | o Self_Test3 */                                                        
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |515| 
        ldp       @CL85,DP
        ldiu      @CL85,r0              ; |515| 
        sti       r0,*ar0               ; |515| 
L160:        
	.line	13
;----------------------------------------------------------------------
; 518 | Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);             
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      @CL82,r0              ; |518| 
        ldiu      2,r3                  ; |518| 
        ldp       @CL81,DP
        ldiu      0,r2                  ; |518| 
        ldiu      @CL81,ar2             ; |518| 
        callu     r0                    ; far call to _Timer_Insert	; |518| 
                                        ; |518| Far Call Occurs
	.line	15
;----------------------------------------------------------------------
; 520 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	16
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	521,000000000h,0


	.sect	 "internal_RAM"

	.global	_Self_Test1
	.sym	_Self_Test1,_Self_Test1,32,2,0
	.func	535
;******************************************************************************
;* FUNCTION NAME: _Self_Test1                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Self_Test1:
	.line	1
;----------------------------------------------------------------------
; 535 | void Self_Test1(void)                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 537 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 539 | if (DIO_BUILT_IN_TEST_ENABLE.val)                                      
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,ar0             ; |539| 
        ldiu      *ar0,r0               ; |539| 
        cmpi      0,r0                  ; |539| 
        beq       L167                  ; |539| 
;*      Branch Occurs to L167           ; |539| 
	.line	7
;----------------------------------------------------------------------
; 541 | if (Calc_CRC(FLASH_LOC_CFG_FACTORY, FLASH_CFG_SIZE))    /* Test Factory
;     |  Config Memory */                                                      
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar2             ; |541| 
        ldp       @CL65,DP
        ldiu      @CL65,r2              ; |541| 
        ldp       @CL66,DP
        ldiu      @CL66,r0              ; |541| 
        callu     r0                    ; far call to _Calc_CRC	; |541| 
                                        ; |541| Far Call Occurs
        cmpi      0,r0                  ; |541| 
        beq       L166                  ; |541| 
;*      Branch Occurs to L166           ; |541| 
	.line	8
;----------------------------------------------------------------------
; 542 | DIAGNOSTICS[0] |= ERROR_FLASH_MEMORY;                                  
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |542| 
        ldiu      8,r0                  ; |542| 
        or3       r0,*ar0,r0            ; |542| 
        sti       r0,*ar0               ; |542| 
L166:        
	.line	10
;----------------------------------------------------------------------
; 544 | TMR_SELFTEST.vect = (int*)Self_Test2;
;     |  /* Set vector as Self_Test2   */                                      
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |544| 
        ldp       @CL86,DP
        ldiu      @CL86,r0              ; |544| 
        sti       r0,*ar0               ; |544| 
L167:        
	.line	13
;----------------------------------------------------------------------
; 547 | Timer_Insert(&TMR_SELFTEST,0,TMR_action_add_if_not_exist);             
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      @CL82,r0              ; |547| 
        ldiu      2,r3                  ; |547| 
        ldp       @CL81,DP
        ldiu      0,r2                  ; |547| 
        ldiu      @CL81,ar2             ; |547| 
        callu     r0                    ; far call to _Timer_Insert	; |547| 
                                        ; |547| Far Call Occurs
	.line	15
;----------------------------------------------------------------------
; 549 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	16
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	550,000000000h,0



	.global	_DIAGNOSTICS_ERROR_CODE
	.bss	_DIAGNOSTICS_ERROR_CODE,1
	.sym	_DIAGNOSTICS_ERROR_CODE,_DIAGNOSTICS_ERROR_CODE,4,2,32

	.global	_REG_DIAG
_REG_DIAG:	.usect	"CFG",220,1
	.sym	_REG_DIAG,_REG_DIAG,56,2,7040,.fake6,5

	.global	_E_STRING
	.bss	_E_STRING,101
	.sym	_E_STRING,_E_STRING,50,2,3232,,101

	.global	_DIO_ALARM
_DIO_ALARM:	.usect	"CFG",3,1
	.sym	_DIO_ALARM,_DIO_ALARM,8,2,96,.fake7

	.global	_DIAGNOSTICS_MSG_CODE
	.bss	_DIAGNOSTICS_MSG_CODE,1
	.sym	_DIAGNOSTICS_MSG_CODE,_DIAGNOSTICS_MSG_CODE,4,2,32

	.global	_DIAGNOSTICS_MASK
_DIAGNOSTICS_MASK:	.usect	"CFG",2,1
	.sym	_DIAGNOSTICS_MASK,_DIAGNOSTICS_MASK,52,2,64,,2

	.global	_DIAGNOSTICS
	.bss	_DIAGNOSTICS,2
	.sym	_DIAGNOSTICS,_DIAGNOSTICS,52,2,64,,2

	.global	_DIO_ERROR
_DIO_ERROR:	.usect	"CFG",3,1
	.sym	_DIO_ERROR,_DIO_ERROR,8,2,96,.fake7

	.global	_DIAG_TEMP
	.bss	_DIAG_TEMP,2
	.sym	_DIAG_TEMP,_DIAG_TEMP,52,2,64,,2
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"NO ERRORS",0
SL2:	.byte	"ERROR: Frequency",0
SL3:	.byte	"ERROR: FLASH Memory",0
SL4:	.byte	"ERROR: INT Memory",0
SL5:	.byte	"ERROR: EXT Memory",0
SL6:	.byte	"ERROR: Invalid PV",0
SL7:	.byte	"ERROR: Invalid WCut",0
SL8:	.byte	"ERROR: Lo PV",0
SL9:	.byte	"ERROR: Lo Water Cut",0
SL10:	.byte	"ERROR: Hi PV",0
SL11:	.byte	"ERROR: Hi Water Cut",0
SL12:	.byte	"ERROR: RESET BASICS",0
SL13:	.byte	"ERROR: Low Temp.",0
SL14:	.byte	"ERROR: High Temp.",0
SL15:	.byte	"ERROR: Invalid Time",0
SL16:	.byte	"ERROR: Phase Logic",0
SL17:	.byte	"%s #%02d",0
SL18:	.byte	"ERROR #%02d",0
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

	.sect	".cinit"
	.field  	86,32
	.field  	CL1+0,32
	.field  	_DIO_ALARM,32
	.field  	_DIO_ERROR,32
	.field  	_DIAGNOSTICS,32
	.field  	_DIAGNOSTICS+1,32
	.field  	_DIAGNOSTICS_ERROR_CODE,32
	.field  	_DIAGNOSTICS_MSG_CODE,32
	.field  	_Set_Diag_Status,32
	.field  	_CHANGE,32
	.field  	_DATA_CHANGE,32
	.field  	_DIAGNOSTICS_MASK,32
	.field  	_DIAGNOSTICS_MASK+1,32
	.field  	_REG_WATERCUT+3,32
	.field  	_RTC_PRESENT,32
	.field  	_LED_GREEN,32
	.field  	_TMR_LEDOFF,32
	.word   	0FB4CCCCDH ; double  5.000000000000000e-02
	.field  	_STATUS_LED_off,32
	.field  	_Timer_Create,32
	.field  	_TMR_LEDON,32
	.word   	0FD4CCCCDH ; double  2.000000000000000e-01
	.field  	_STATUS_LED_on,32
	.field  	_SA,32
	.field  	_HW_VER,32
	.word   	0FF733333H ; double  9.500000000000000e-01
	.word   	0FE666666H ; double  4.500000000000000e-01
	.field  	-2147483648,32
	.word   	020000000H ; float   4.294967296000000e+09
	.field  	_log,32
	.field  	_REG_DIAG,32
	.field  	_VAR_Update,32
	.field  	_REG_DIAG+44,32
	.field  	_REG_DIAG+88,32
	.field  	_REG_DIAG+132,32
	.field  	_SYS_LOG_ENABLED,32
	.field  	_DIAG_TEMP,32
	.field  	_DIAG_TEMP+1,32
	.field  	_SYS,32
	.field  	_RecordLogEntry,32
	.field  	_RUSS,32
	.field  	_OUT_STR,32
	.field  	_Get_Russ_Line,32
	.field  	_E_STRING,32
	.field  	_sprintf,32
	.field  	SL1,32
	.field  	SL2,32
	.field  	SL3,32
	.field  	SL4,32
	.field  	SL5,32
	.field  	_ANALYZER_MODE,32
	.field  	SL6,32
	.field  	SL7,32
	.field  	SL8,32
	.field  	SL9,32
	.field  	SL10,32
	.field  	SL11,32
	.field  	SL12,32
	.field  	SL13,32
	.field  	SL14,32
	.field  	SL15,32
	.field  	SL16,32
	.field  	SL17,32
	.field  	SL18,32
	.field  	_DIO_BUILT_IN_TEST,32
	.field  	4292608,32
	.field  	32768,32
	.field  	_Calc_CRC,32
	.field  	4227072,32
	.field  	4194304,32
	.field  	_CRC_BOOT,32
	.field  	4358144,32
	.field  	_CRC_FAST,32
	.field  	4390912,32
	.field  	196608,32
	.field  	_CRC_APP,32
	.field  	4587520,32
	.field  	65536,32
	.field  	_CRC_INIT,32
	.field  	_DIO_BUILT_IN_TEST_ENABLE,32
	.field  	_TMR_SELFTEST+2,32
	.field  	_Self_Test1,32
	.field  	_TMR_SELFTEST,32
	.field  	_Timer_Insert,32
	.field  	_Self_Test5,32
	.field  	_Self_Test4,32
	.field  	_Self_Test3,32
	.field  	_Self_Test2,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_sprintf

	.global	_log

	.global	_VAR_Update

	.global	_Timer_Insert

	.global	_Timer_Create

	.global	_RTC_PRESENT

	.global	_SYS

	.global	_SYS_LOG_ENABLED

	.global	_RecordLogEntry

	.global	_Get_Russ_Line

	.global	_OUT_STR

	.global	_LED_GREEN

	.global	_DATA_CHANGE

	.global	_SA

	.global	_CHANGE

	.global	_HW_VER

	.global	_ANALYZER_MODE

	.global	_DIO_BUILT_IN_TEST_ENABLE

	.global	_DIO_BUILT_IN_TEST

	.global	_REG_WATERCUT

	.global	_RUSS

	.global	_CRC_BOOT

	.global	_CRC_APP

	.global	_CRC_INIT

	.global	_CRC_FAST

	.global	_Calc_CRC

	.global	_STATUS_LED_off

	.global	_STATUS_LED_on

	.global	_TMR_LEDON

	.global	_TMR_LEDOFF

	.global	_TMR_SELFTEST
	.global	DIV_F30
