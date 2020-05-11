;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue May  5 09:11:54 2020                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_83K.AAA 
	.file	"buffer.c"
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
	.file	"buffer.c"
	.sect	 "internal_RAM"

	.global	_CRC16
	.sym	_CRC16,_CRC16,32,2,0
	.func	40
;******************************************************************************
;* FUNCTION NAME: _CRC16                                                      *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_CRC16:
;* ar2   assigned to _buffer
	.sym	_buffer,10,24,17,32,.fake10
	.sym	_buffer,1,24,1,32,.fake10
	.sym	_i,2,4,1,32
	.line	1
;----------------------------------------------------------------------
;  40 | void CRC16(BFR* buffer)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
;  42 | int i;                                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |41| 
	.line	5
;----------------------------------------------------------------------
;  44 | if (buffer->n<=0)       /* empty? */                                   
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *+ar0(2),r0           ; |44| 
        cmpi      0,r0                  ; |44| 
        ble       L9                    ; |44| 
;*      Branch Occurs to L9             ; |44| 
	.line	6
;----------------------------------------------------------------------
;  45 | return;                                                                
;----------------------------------------------------------------------
	.line	8
;----------------------------------------------------------------------
;  47 | if (buffer->n==1)       /* exactly 1 element? */                       
;----------------------------------------------------------------------
        ldiu      *+ar0(2),r0           ; |47| 
        cmpi      1,r0                  ; |47| 
        bne       L4                    ; |47| 
;*      Branch Occurs to L4             ; |47| 
	.line	9
;----------------------------------------------------------------------
;  48 | buffer->CRC16 = buffer->GSEED;                                         
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldiu      *+ar0(3),r0           ; |48| 
        sti       r0,*+ar1(4)           ; |48| 
L4:        
	.line	11
;----------------------------------------------------------------------
;  50 | buffer->CRC16 ^= (buffer->buff[buffer->tail] & 0xFF);                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |50| 
        ldiu      255,r0                ; |50| 
        ldiu      *+ar0(1),ar1          ; |50| 
        addi      *+fp(1),ar1           ; |50| Unsigned
        and       *+ar1(5),r0           ; |50| 
        xor       *+ar0(4),r0           ; |50| 
        sti       r0,*+ar0(4)           ; |50| 
	.line	13
;----------------------------------------------------------------------
;  52 | for (i=0;i<8;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |52| 
        sti       r0,*+fp(2)            ; |52| 
        cmpi      8,r0                  ; |52| 
        bge       L9                    ; |52| 
;*      Branch Occurs to L9             ; |52| 
L5:        
	.line	15
;----------------------------------------------------------------------
;  54 | if (buffer->CRC16 & 0x01)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |54| 
        ldiu      1,r0                  ; |54| 
        tstb      *+ar0(4),r0           ; |54| 
        beq       L7                    ; |54| 
;*      Branch Occurs to L7             ; |54| 
	.line	17
;----------------------------------------------------------------------
;  56 | buffer->CRC16 >>= 1;                                                   
;----------------------------------------------------------------------
        ldiu      *+ar0(4),r0           ; |56| 
        lsh       -1,r0                 ; |56| 
        sti       r0,*+ar0(4)           ; |56| 
	.line	18
;----------------------------------------------------------------------
;  57 | buffer->CRC16 ^= GPOLY;                                                
;  59 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |57| 
        ldiu      *+ar0(4),r0           ; |57| 
        xor       40961,r0              ; |57| 
        sti       r0,*+ar0(4)           ; |57| 
        bu        L8                    ; |39| 
;*      Branch Occurs to L8             ; |39| 
L7:        
	.line	21
;----------------------------------------------------------------------
;  60 | buffer->CRC16 >>= 1;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |60| 
        ldiu      *+ar0(4),r0           ; |60| 
        lsh       -1,r0                 ; |60| 
        sti       r0,*+ar0(4)           ; |60| 
L8:        
	.line	13
        ldiu      1,r0                  ; |52| 
        addi      *+fp(2),r0            ; |52| 
        sti       r0,*+fp(2)            ; |52| 
        cmpi      8,r0                  ; |52| 
        blt       L5                    ; |52| 
;*      Branch Occurs to L5             ; |52| 
L9:        
	.line	23
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	62,000000000h,2


	.sect	 "internal_RAM"

	.global	_Put
	.sym	_Put,_Put,46,2,0
	.func	78
;******************************************************************************
;* FUNCTION NAME: _Put                                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Put:
;* ar2   assigned to _buffer
	.sym	_buffer,10,24,17,32,.fake10
;* r2    assigned to _b
	.sym	_b,2,14,17,32
;* r3    assigned to _CRC
	.sym	_CRC,3,14,17,32
	.sym	_buffer,1,24,1,32,.fake10
	.sym	_b,2,14,1,32
	.sym	_CRC,3,14,1,32
	.line	1
;----------------------------------------------------------------------
;  78 | BOOL Put(BFR* buffer, unsigned int b, BOOL CRC)                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
        sti       r3,*+fp(3)            ; |79| 
        sti       r2,*+fp(2)            ; |79| 
        sti       ar2,*+fp(1)           ; |79| 
	.line	3
;----------------------------------------------------------------------
;  80 | if (buffer->locked)     /* locked? */                                  
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |80| 
        ldiu      306,ar0               ; |80| 
        ldiu      *+ar0(ir0),r0         ; |80| 
        cmpi      0,r0                  ; |80| 
        beq       L13                   ; |80| 
;*      Branch Occurs to L13            ; |80| 
	.line	4
;----------------------------------------------------------------------
;  81 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L20                   ; |81| 
	nop
	nop
        ldiu      0,r0                  ; |81| 
;*      Branch Occurs to L20            ; |81| 
L13:        
	.line	6
;----------------------------------------------------------------------
;  83 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
;  85 | if (buffer->n >= MAXBUFF)       /* greater than maximum allowed buffer?
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |85| 
        ldiu      *+ar0(2),r0           ; |85| 
        cmpi      300,r0                ; |85| 
        blt       L15                   ; |85| 
;*      Branch Occurs to L15            ; |85| 
	.line	10
;----------------------------------------------------------------------
;  87 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	11
;----------------------------------------------------------------------
;  88 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L20                   ; |88| 
	nop
	nop
        ldiu      0,r0                  ; |88| 
;*      Branch Occurs to L20            ; |88| 
L15:        
	.line	14
;----------------------------------------------------------------------
;  91 | buffer->buff[buffer->tail] = b;                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |91| 
        ldiu      *+ar0(1),ar0          ; |91| 
        addi      *+fp(1),ar0           ; |91| Unsigned
        ldiu      *+fp(2),r0            ; |91| 
        sti       r0,*+ar0(5)           ; |91| 
	.line	15
;----------------------------------------------------------------------
;  92 | buffer->n ++;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |92| 
        ldiu      1,r0                  ; |92| 
        addi      *+ar0(2),r0           ; |92| 
        sti       r0,*+ar0(2)           ; |92| 
	.line	17
;----------------------------------------------------------------------
;  94 | if (CRC)        /* check CRC? */                                       
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |94| 
        cmpi      0,r0                  ; |94| 
        beq       L17                   ; |94| 
;*      Branch Occurs to L17            ; |94| 
	.line	18
;----------------------------------------------------------------------
;  95 | CRC16(buffer);                                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      *+fp(1),ar2           ; |95| 
        ldiu      @CL1,r0               ; |95| 
        callu     r0                    ; far call to _CRC16	; |95| 
                                        ; |95| Far Call Occurs
L17:        
	.line	20
;----------------------------------------------------------------------
;  97 | buffer->tail ++;                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |97| 
        ldiu      1,r0                  ; |97| 
        addi      *+ar0(1),r0           ; |97| 
        sti       r0,*+ar0(1)           ; |97| 
	.line	22
;----------------------------------------------------------------------
;  99 | if (buffer->tail >= MAXBUFF)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |99| 
        ldiu      *+ar0(1),r0           ; |99| 
        cmpi      300,r0                ; |99| 
        blt       L19                   ; |99| 
;*      Branch Occurs to L19            ; |99| 
	.line	23
;----------------------------------------------------------------------
; 100 | buffer->tail = 0;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |100| 
        sti       r0,*+ar0(1)           ; |100| 
L19:        
	.line	25
;----------------------------------------------------------------------
; 102 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	27
;----------------------------------------------------------------------
; 104 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |104| 
L20:        
	.line	28
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |105| 
        ldiu      *fp,fp                ; |105| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |105| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	105,000000000h,3


	.sect	 "internal_RAM"

	.global	_Get
	.sym	_Get,_Get,46,2,0
	.func	119
;******************************************************************************
;* FUNCTION NAME: _Get                                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,ir0,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Get:
;* ar2   assigned to _buffer
	.sym	_buffer,10,24,17,32,.fake10
	.sym	_buffer,1,24,1,32,.fake10
	.sym	_r,2,12,1,32
	.line	1
;----------------------------------------------------------------------
; 119 | unsigned int Get(BFR* buffer)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 121 | unsigned char r;                                                       
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |120| 
	.line	5
;----------------------------------------------------------------------
; 123 | if (buffer->locked)     /* locked? */                                  
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |123| 
        ldiu      306,ar0               ; |123| 
        ldiu      *+ar0(ir0),r0         ; |123| 
        cmpi      0,r0                  ; |123| 
        beq       L24                   ; |123| 
;*      Branch Occurs to L24            ; |123| 
	.line	6
;----------------------------------------------------------------------
; 124 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L29                   ; |124| 
	nop
	nop
        ldiu      0,r0                  ; |124| 
;*      Branch Occurs to L29            ; |124| 
L24:        
	.line	8
;----------------------------------------------------------------------
; 126 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 128 | if (buffer->n <= 0) /* empty? */                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |128| 
        ldiu      *+ar0(2),r0           ; |128| 
        cmpi      0,r0                  ; |128| 
        bgt       L26                   ; |128| 
;*      Branch Occurs to L26            ; |128| 
	.line	12
;----------------------------------------------------------------------
; 130 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	14
;----------------------------------------------------------------------
; 132 | return NULL;                                                           
;----------------------------------------------------------------------
        bud       L29                   ; |132| 
	nop
	nop
        ldiu      0,r0                  ; |132| 
;*      Branch Occurs to L29            ; |132| 
L26:        
	.line	17
;----------------------------------------------------------------------
; 135 | r = buffer->buff[buffer->head];                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |135| 
        ldiu      *ar0,ar0              ; |135| 
        addi      *+fp(1),ar0           ; |135| Unsigned
        ldiu      *+ar0(5),r0           ; |135| 
        sti       r0,*+fp(2)            ; |135| 
	.line	19
;----------------------------------------------------------------------
; 137 | buffer->head ++;                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |137| 
        ldiu      1,r0                  ; |137| 
        addi3     r0,*ar0,r0            ; |137| 
        sti       r0,*ar0               ; |137| 
	.line	21
;----------------------------------------------------------------------
; 139 | if (buffer->head >= MAXBUFF)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |139| 
        ldiu      *ar0,r0               ; |139| 
        cmpi      300,r0                ; |139| 
        blt       L28                   ; |139| 
;*      Branch Occurs to L28            ; |139| 
	.line	22
;----------------------------------------------------------------------
; 140 | buffer->head = 0;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |140| 
        sti       r0,*ar0               ; |140| 
L28:        
	.line	24
;----------------------------------------------------------------------
; 142 | buffer->n --;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |142| 
        ldiu      1,r0                  ; |142| 
        subri     *+ar0(2),r0           ; |142| 
        sti       r0,*+ar0(2)           ; |142| 
	.line	26
;----------------------------------------------------------------------
; 144 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	28
;----------------------------------------------------------------------
; 146 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |146| 
L29:        
	.line	29
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |147| 
        ldiu      *fp,fp                ; |147| 
                                        ; Unallocate the Frame
        subi      4,sp                  ; |147| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	147,000000000h,2


	.sect	 "internal_RAM"

	.global	_Put_n
	.sym	_Put_n,_Put_n,46,2,0
	.func	164
;******************************************************************************
;* FUNCTION NAME: _Put_n                                                      *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st,rc                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 0 SOE = 8 words          *
;******************************************************************************
_Put_n:
;* ar2   assigned to _buffer
	.sym	_buffer,10,24,17,32,.fake10
;* r2    assigned to _b
	.sym	_b,2,28,17,32
;* r3    assigned to _n
	.sym	_n,3,4,17,32
;* rc    assigned to _CRC
	.sym	_CRC,19,14,17,32
	.sym	_buffer,1,24,1,32,.fake10
	.sym	_b,2,28,1,32
	.sym	_n,3,4,1,32
	.sym	_CRC,4,14,1,32
	.sym	_temp,5,12,1,32
	.sym	_i,6,4,1,32
	.line	1
;----------------------------------------------------------------------
; 164 | BOOL Put_n(BFR* buffer, unsigned char* b, int n, BOOL CRC)             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 166 | unsigned char temp;                                                    
; 167 | int i;                                                                 
;----------------------------------------------------------------------
        sti       rc,*+fp(4)            ; |165| 
        sti       r3,*+fp(3)            ; |165| 
        sti       r2,*+fp(2)            ; |165| 
        sti       ar2,*+fp(1)           ; |165| 
	.line	6
;----------------------------------------------------------------------
; 169 | if (buffer->locked)     /* locked? */                                  
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |169| 
        ldiu      306,ar0               ; |169| 
        ldiu      *+ar0(ir0),r0         ; |169| 
        cmpi      0,r0                  ; |169| 
        beq       L33                   ; |169| 
;*      Branch Occurs to L33            ; |169| 
	.line	7
;----------------------------------------------------------------------
; 170 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L44                   ; |170| 
	nop
	nop
        ldiu      0,r0                  ; |170| 
;*      Branch Occurs to L44            ; |170| 
L33:        
	.line	9
;----------------------------------------------------------------------
; 172 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	11
;----------------------------------------------------------------------
; 174 | if (n<=0)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |174| 
        cmpi      0,r0                  ; |174| 
        bgt       L39                   ; |174| 
;*      Branch Occurs to L39            ; |174| 
	.line	13
;----------------------------------------------------------------------
; 176 | i = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |176| 
        sti       r0,*+fp(6)            ; |176| 
	.line	15
;----------------------------------------------------------------------
; 178 | while(b[i] != NULL)                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |178| 
        ldiu      r0,ar0                ; |178| 
        ldiu      *+ar0(ir0),r0         ; |178| 
        cmpi      0,r0                  ; |178| 
        beq       L43                   ; |178| 
;*      Branch Occurs to L43            ; |178| 
L35:        
	.line	17
;----------------------------------------------------------------------
; 180 | if (!Put(buffer, b[i], CRC))                                           
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(2),ir0           ; |180| 
        ldiu      *+fp(6),ar0           ; |180| 
        ldiu      *+fp(4),r3            ; |180| 
        ldiu      *+fp(1),ar2           ; |180| 
        ldiu      @CL2,r0               ; |180| 
        ldiu      *+ar0(ir0),r2         ; |180| 
        callu     r0                    ; far call to _Put	; |180| 
                                        ; |180| Far Call Occurs
        cmpi      0,r0                  ; |180| 
        bne       L37                   ; |180| 
;*      Branch Occurs to L37            ; |180| 
	.line	19
;----------------------------------------------------------------------
; 182 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	20
;----------------------------------------------------------------------
; 183 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L44                   ; |183| 
	nop
	nop
        ldiu      0,r0                  ; |183| 
;*      Branch Occurs to L44            ; |183| 
L37:        
	.line	23
;----------------------------------------------------------------------
; 186 | i++;                                                                   
; 189 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |186| 
        addi      *+fp(6),r0            ; |186| 
        sti       r0,*+fp(6)            ; |186| 
	.line	15
        ldiu      *+fp(2),ir0           ; |178| 
        ldiu      r0,ar0                ; |178| 
        ldiu      *+ar0(ir0),r0         ; |178| 
        cmpi      0,r0                  ; |178| 
        bne       L35                   ; |178| 
;*      Branch Occurs to L35            ; |178| 
        bu        L43                   ; |163| 
;*      Branch Occurs to L43            ; |163| 
L39:        
	.line	28
;----------------------------------------------------------------------
; 191 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |191| 
        sti       r0,*+fp(6)            ; |191| 
        cmpi      *+fp(3),r0            ; |191| 
        bge       L43                   ; |191| 
;*      Branch Occurs to L43            ; |191| 
L40:        
	.line	30
;----------------------------------------------------------------------
; 193 | if (!Put(buffer, b[i], CRC))                                           
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(2),ir0           ; |193| 
        ldiu      *+fp(6),ar0           ; |193| 
        ldiu      *+fp(4),r3            ; |193| 
        ldiu      *+fp(1),ar2           ; |193| 
        ldiu      @CL2,r0               ; |193| 
        ldiu      *+ar0(ir0),r2         ; |193| 
        callu     r0                    ; far call to _Put	; |193| 
                                        ; |193| Far Call Occurs
        cmpi      0,r0                  ; |193| 
        bne       L42                   ; |193| 
;*      Branch Occurs to L42            ; |193| 
	.line	32
;----------------------------------------------------------------------
; 195 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	33
;----------------------------------------------------------------------
; 196 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L44                   ; |196| 
	nop
	nop
        ldiu      0,r0                  ; |196| 
;*      Branch Occurs to L44            ; |196| 
L42:        
	.line	28
        ldiu      1,r0                  ; |191| 
        addi      *+fp(6),r0            ; |191| 
        sti       r0,*+fp(6)            ; |191| 
        cmpi      *+fp(3),r0            ; |191| 
        blt       L40                   ; |191| 
;*      Branch Occurs to L40            ; |191| 
L43:        
	.line	38
;----------------------------------------------------------------------
; 201 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	40
;----------------------------------------------------------------------
; 203 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |203| 
L44:        
	.line	41
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |204| 
        ldiu      *fp,fp                ; |204| 
                                        ; Unallocate the Frame
        subi      8,sp                  ; |204| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	204,000000000h,6


	.sect	 "internal_RAM"

	.global	_Clear
	.sym	_Clear,_Clear,32,2,0
	.func	219
;******************************************************************************
;* FUNCTION NAME: _Clear                                                      *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,ar0,ar1,ar2,ir0,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Clear:
;* ar2   assigned to _buffer
	.sym	_buffer,10,24,17,32,.fake10
	.sym	_buffer,1,24,1,32,.fake10
	.sym	_i,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 219 | void Clear(BFR* buffer)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 221 | int i;                                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |220| 
	.line	5
;----------------------------------------------------------------------
; 223 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 225 | if(INITIALIZING)                        /* Startup? */                 
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |225| 
        ldiu      *ar0,r0               ; |225| 
        cmpi      0,r0                  ; |225| 
        beq       L48                   ; |225| 
;*      Branch Occurs to L48            ; |225| 
	.line	8
;----------------------------------------------------------------------
; 226 | buffer->locked = FALSE;                                                
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldiu      306,ar0               ; |226| 
        ldiu      0,r0                  ; |226| 
        sti       r0,*+ar0(ir0)         ; |226| 
        bu        L50                   ; |218| 
;*      Branch Occurs to L50            ; |218| 
L48:        
	.line	9
;----------------------------------------------------------------------
; 227 | else if (buffer->locked)        /* locked?      */                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |227| 
        ldiu      306,ar0               ; |227| 
        ldiu      *+ar0(ir0),r0         ; |227| 
        cmpi      0,r0                  ; |227| 
        beq       L50                   ; |227| 
;*      Branch Occurs to L50            ; |227| 
	.line	11
;----------------------------------------------------------------------
; 229 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	12
;----------------------------------------------------------------------
; 230 | return;                                                                
;----------------------------------------------------------------------
        bu        L54                   ; |230| 
;*      Branch Occurs to L54            ; |230| 
L50:        
	.line	15
;----------------------------------------------------------------------
; 233 | buffer->GSEED   = GSEED_DEFAULT;                                       
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      *+fp(1),ar0           ; |233| 
        ldiu      @CL4,r0               ; |233| 
        sti       r0,*+ar0(3)           ; |233| 
	.line	16
;----------------------------------------------------------------------
; 234 | buffer->head    = 0;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |234| 
        ldiu      0,r0                  ; |234| 
        sti       r0,*ar0               ; |234| 
	.line	17
;----------------------------------------------------------------------
; 235 | buffer->tail    = 0;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |235| 
        sti       r0,*+ar0(1)           ; |235| 
	.line	18
;----------------------------------------------------------------------
; 236 | buffer->n               = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |236| 
        sti       r0,*+ar0(2)           ; |236| 
	.line	19
;----------------------------------------------------------------------
; 237 | buffer->sum     = 0;                                                   
;----------------------------------------------------------------------
        ldiu      305,ar0               ; |237| 
        ldiu      *+fp(1),ir0           ; |237| 
        sti       r0,*+ar0(ir0)         ; |237| 
	.line	21
;----------------------------------------------------------------------
; 239 | if (INITIALIZING)                       /* Startup? */                 
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |239| 
        ldiu      *ar0,r0               ; |239| 
        cmpi      0,r0                  ; |239| 
        beq       L53                   ; |239| 
;*      Branch Occurs to L53            ; |239| 
	.line	23
;----------------------------------------------------------------------
; 241 | buffer->CRC16 = buffer->GSEED;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |241| 
        ldiu      ar1,ar0               ; |241| 
        ldiu      *+ar1(3),r0           ; |241| 
        sti       r0,*+ar0(4)           ; |241| 
	.line	25
;----------------------------------------------------------------------
; 243 | for (i=0;i<MAXBUFF;i++)                                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |243| 
        sti       r0,*+fp(2)            ; |243| 
        ldiu      0,r1                  ; |244| 
        cmpi      300,r0                ; |243| 
        bge       L53                   ; |243| 
;*      Branch Occurs to L53            ; |243| 
L52:        
	.line	26
;----------------------------------------------------------------------
; 244 | buffer->buff[i] = 0x00;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |244| 
        addi      *+fp(1),ar0           ; |244| Unsigned
        sti       r1,*+ar0(5)           ; |244| 
	.line	25
        ldiu      1,r0                  ; |243| 
        addi      *+fp(2),r0            ; |243| 
        sti       r0,*+fp(2)            ; |243| 
        cmpi      300,r0                ; |243| 
        blt       L52                   ; |243| 
;*      Branch Occurs to L52            ; |243| 
L53:        
	.line	29
;----------------------------------------------------------------------
; 247 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L54:        
	.line	30
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	248,000000000h,2


;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".const"
	.bss	CL1,1
	.bss	CL2,1
	.bss	CL3,1
	.bss	CL4,1

	.sect	".cinit"
	.field  	4,32
	.field  	CL1+0,32
	.field  	_CRC16,32
	.field  	_Put,32
	.field  	_INITIALIZING,32
	.field  	65535,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_INITIALIZING
