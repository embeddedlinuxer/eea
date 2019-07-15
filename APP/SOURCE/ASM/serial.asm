;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Jul 15 11:12:32 2019                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_64G.AAA 
	.file	"serial.c"
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
	.file	"serial.c"
	.sect	 "initialization"

	.global	_Setup_Serial_Port0
	.sym	_Setup_Serial_Port0,_Setup_Serial_Port0,32,2,0
	.func	36
;******************************************************************************
;* FUNCTION NAME: _Setup_Serial_Port0                                         *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1                                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Setup_Serial_Port0:
	.line	1
;----------------------------------------------------------------------
;  36 | void Setup_Serial_Port0(void)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  38 | SP0_RX_DATA  = 0x0000;                                                 
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |38| 
        ldiu      0,r0                  ; |38| 
        sti       r0,*ar0               ; |38| 
	.line	4
;----------------------------------------------------------------------
;  39 | *SP0_GC          = 0;
;     |          /* reset serial port */                                       
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |39| 
        sti       r0,*ar0               ; |39| 
	.line	5
;----------------------------------------------------------------------
;  40 | *SP0_XCTRL       = (CLKFUNC | DFUNC     | FSFUNC);      /* enable TX CL
;     | K, DATA, FS */                                                         
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |40| 
        ldiu      273,r0                ; |40| 
        sti       r0,*ar0               ; |40| 
	.line	6
;----------------------------------------------------------------------
;  41 | *SP0_RCTRL       = (CLKFUNC | DFUNC     | FSFUNC);      /* enable RX CL
;     | K, DATA, FS */                                                         
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |41| 
        sti       r0,*ar0               ; |41| 
	.line	7
;----------------------------------------------------------------------
;  42 | *SP0_TMRPER  = 0x00010001;                                          /*
;     | set SCLK to H1/(2*2) = CLOCK_TIMER FREQUENCY */                        
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |42| 
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |42| 
        sti       r0,*ar0               ; |42| 
	.line	8
;----------------------------------------------------------------------
;  43 | *SP0_TMRCTRL = (XGO     | XC_P              | XCLKSRC | _XHLD   | RGO
;     | | RC_P | _RHLD);                                                       
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |43| 
        ldiu      463,r0                ; |43| 
        sti       r0,*ar0               ; |43| 
	.line	9
;----------------------------------------------------------------------
;  44 | *SP0_GC          = (FSXOUT      | XCLK_SRCE | XLEN_16 | RLEN_16 | RINT
;     | | XINT | _XRESET | _RRESET);                                           
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |44| 
        ldp       @CL8,DP
        ldiu      @CL8,r0               ; |44| 
        sti       r0,*ar0               ; |44| 
	.line	10
;----------------------------------------------------------------------
;  45 | DISABLE_RINT0;                                                         
;----------------------------------------------------------------------
	andn	0020h, IE
	.line	11
;----------------------------------------------------------------------
;  46 | DISABLE_XINT0;                                                         
;----------------------------------------------------------------------
	andn	0010h, IE
	.line	12
;----------------------------------------------------------------------
;  47 | CLEAR_RINT0;                                                           
;----------------------------------------------------------------------
	andn	0020h, IF
	.line	13
;----------------------------------------------------------------------
;  48 | CLEAR_XINT0;                                                           
;----------------------------------------------------------------------
	andn	0010h, IF
	.line	14
;----------------------------------------------------------------------
;  49 | SP0_RX_DATA  = *SP0_RXDATA & 0xFFFF;                                   
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar1              ; |49| 
        ldp       @CL1,DP
        ldiu      *ar1,r0               ; |49| 
        ldiu      @CL1,ar0              ; |49| 
        and       65535,r0              ; |49| 
        sti       r0,*ar0               ; |49| 
	.line	15
;----------------------------------------------------------------------
;  50 | SP0_RX_DATA  = 0x0000;                                                 
;----------------------------------------------------------------------
        ldiu      @CL1,ar0              ; |50| 
        ldiu      0,r0                  ; |50| 
        sti       r0,*ar0               ; |50| 
	.line	16
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	51,000000000h,0


	.sect	 "interrupt_routines"

	.global	_Clear_RX
	.sym	_Clear_RX,_Clear_RX,32,2,0
	.func	65
;******************************************************************************
;* FUNCTION NAME: _Clear_RX                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,ir0,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Clear_RX:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
;  65 | void Clear_RX(int id)                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |66| 
	.line	3
;----------------------------------------------------------------------
;  67 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	4
;----------------------------------------------------------------------
;  68 | PORT[id].LONG_ADDRESS   = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldp       @CL10,DP
        mpyi      71,ir0                ; |68| 
        ldiu      @CL10,ar0             ; |68| 
        ldiu      0,r0                  ; |68| 
        sti       r0,*+ar0(ir0)         ; |68| 
	.line	5
;----------------------------------------------------------------------
;  69 | RXbuf[id].locked                = FALSE;                        /* unlo
;     | ck the buffer */                                                       
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |69| 
        ldiu      *+fp(1),ir0           ; |69| 
        mpyi      307,ir0               ; |69| 
        sti       r0,*+ar0(ir0)         ; |69| 
	.line	6
;----------------------------------------------------------------------
;  70 | PORT[id].RX_pending     = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      *+fp(1),ir0           ; |70| 
        ldiu      @CL12,ar0             ; |70| 
        mpyi      71,ir0                ; |70| 
        sti       r0,*+ar0(ir0)         ; |70| 
	.line	7
;----------------------------------------------------------------------
;  71 | PORT[id].STAT                   = 0x00;                                
;  73 | if (FIFOSIZE)                                                          
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      *+fp(1),ir0           ; |71| 
        ldiu      @CL13,ar0             ; |71| 
        mpyi      71,ir0                ; |71| 
        sti       r0,*+ar0(ir0)         ; |71| 
	.line	11
;----------------------------------------------------------------------
;  75 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	12
;----------------------------------------------------------------------
;  76 | UART[id][FCR] = 0x07;                                   /* clear FIFOS
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      *+fp(1),ir0           ; |76| 
        ldiu      @CL14,ar0             ; |76| 
        ash       4,ir0                 ; |76| 
        ldiu      7,r0                  ; |76| 
        sti       r0,*+ar0(ir0)         ; |76| 
	.line	15
;----------------------------------------------------------------------
;  79 | Clear(&RXbuf[id]);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |79| 
        ldp       @CL15,DP
        mpyi      307,ar2               ; |79| 
        addi      @CL15,ar2             ; |79| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |79| 
        callu     r0                    ; far call to _Clear	; |79| 
                                        ; |79| Far Call Occurs
	.line	17
;----------------------------------------------------------------------
;  81 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	18
;----------------------------------------------------------------------
;  82 | UART[id][IER]            = 0x01;                                /* disa
;     | ble THR, enable RHR interrupts */                                      
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |82| 
        ldiu      *+fp(1),ir0           ; |82| 
        ash       4,ir0                 ; |82| 
        ldiu      1,r0                  ; |82| 
        sti       r0,*+ar0(ir0)         ; |82| 
	.line	19
;----------------------------------------------------------------------
;  83 | PORT[id].FLAG1           = 0;                                          
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |83| 
        ldiu      *+fp(1),ir0           ; |83| 
        mpyi      71,ir0                ; |83| 
        ldiu      0,r0                  ; |83| 
        sti       r0,*+ar0(ir0)         ; |83| 
	.line	20
;----------------------------------------------------------------------
;  84 | PORT[id].FLAG2           = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |84| 
        ldp       @CL19,DP
        mpyi      71,ir0                ; |84| 
        ldiu      @CL19,ar0             ; |84| 
        sti       r0,*+ar0(ir0)         ; |84| 
	.line	21
;----------------------------------------------------------------------
;  85 | PORT[id].FLAG3           = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |85| 
        ldp       @CL20,DP
        mpyi      71,ir0                ; |85| 
        ldiu      @CL20,ar0             ; |85| 
        sti       r0,*+ar0(ir0)         ; |85| 
	.line	22
;----------------------------------------------------------------------
;  86 | PORT[id].n                       = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |86| 
        ldiu      *+fp(1),ir0           ; |86| 
        mpyi      71,ir0                ; |86| 
        sti       r0,*+ar0(ir0)         ; |86| 
	.line	23
;----------------------------------------------------------------------
;  87 | PORT[id].n_exp           = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |87| 
        ldp       @CL22,DP
        mpyi      71,ir0                ; |87| 
        ldiu      @CL22,ar0             ; |87| 
        sti       r0,*+ar0(ir0)         ; |87| 
	.line	24
;----------------------------------------------------------------------
;  88 | PORT[id].r                       = FALSE;                              
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar0             ; |88| 
        ldiu      *+fp(1),ir0           ; |88| 
        mpyi      71,ir0                ; |88| 
        sti       r0,*+ar0(ir0)         ; |88| 
	.line	25
;----------------------------------------------------------------------
;  89 | PORT[id].c                       = FALSE;                              
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      @CL24,ar0             ; |89| 
        ldiu      *+fp(1),ir0           ; |89| 
        mpyi      71,ir0                ; |89| 
        sti       r0,*+ar0(ir0)         ; |89| 
	.line	26
;----------------------------------------------------------------------
;  90 | PORT[id].TMR_enabled = FALSE;                                          
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |90| 
        ldiu      *+fp(1),ir0           ; |90| 
        mpyi      71,ir0                ; |90| 
        sti       r0,*+ar0(ir0)         ; |90| 
	.line	28
;----------------------------------------------------------------------
;  92 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |92| 
        ldiu      *ar0,r0               ; |92| 
        cmpi      0,r0                  ; |92| 
        bne       L12                   ; |92| 
;*      Branch Occurs to L12            ; |92| 
	.line	30
;----------------------------------------------------------------------
;  94 | if (id==4)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |94| 
        cmpi      4,r0                  ; |94| 
        bne       L7                    ; |94| 
;*      Branch Occurs to L7             ; |94| 
	.line	32
;----------------------------------------------------------------------
;  96 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	33
;----------------------------------------------------------------------
;  97 | UART[id][LCR] |= 0x40;                                                 
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldp       @CL27,DP
        ash       4,ar0                 ; |97| 
        addi      @CL27,ar0             ; |97| Unsigned
        ldiu      64,r0                 ; |97| 
        or        *+ar0(3),r0           ; |97| 
        sti       r0,*+ar0(3)           ; |97| 
L7:        
	.line	36
;----------------------------------------------------------------------
; 100 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	37
;----------------------------------------------------------------------
; 101 | UART[id][MCR] &= 0xFE;                                  /* disable TX *
;     | /                                                                      
; 103 | else                                                                   
; 105 | switch (id)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |101| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |101| 
        addi      @CL27,ar0             ; |101| Unsigned
        ldiu      254,r0                ; |101| 
        and       *+ar0(4),r0           ; |101| 
        sti       r0,*+ar0(4)           ; |101| 
        bu        L14                   ; |64| 
;*      Branch Occurs to L14            ; |64| 
L9:        
	.line	43
;----------------------------------------------------------------------
; 107 | case 0: DISABLE_TXA; break;                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |107| 
        ldiu      8,r0                  ; |107| 
        or3       r0,*ar0,r0            ; |107| 
        sti       r0,*ar0               ; |107| 
	pop		ST			
        bu        L14                   ; |107| 
;*      Branch Occurs to L14            ; |107| 
L10:        
	.line	44
;----------------------------------------------------------------------
; 108 | case 1: DISABLE_TXB; break;                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |108| 
        ldiu      1,r0                  ; |108| 
        or3       r0,*ar0,r0            ; |108| 
        sti       r0,*ar0               ; |108| 
	pop		ST			
        bu        L14                   ; |108| 
;*      Branch Occurs to L14            ; |108| 
L12:        
	.line	41
        ldiu      *+fp(1),r0            ; |105| 
        cmpi      0,r0                  ; |105| 
        beq       L9                    ; |105| 
;*      Branch Occurs to L9             ; |105| 
        cmpi      1,r0                  ; |105| 
        beq       L10                   ; |105| 
;*      Branch Occurs to L10            ; |105| 
L14:        
	.line	48
;----------------------------------------------------------------------
; 112 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	49
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	113,000000000h,1


	.sect	 "interrupt_routines"

	.global	_RESET_PKT
	.sym	_RESET_PKT,_RESET_PKT,32,2,0
	.func	127
;******************************************************************************
;* FUNCTION NAME: _RESET_PKT                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,ar0,ar1,ar2,ir0,ir1                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_RESET_PKT:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 127 | void RESET_PKT(int id)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |128| 
	.line	3
;----------------------------------------------------------------------
; 129 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 131 | Clear_RX(id);                                                          
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |131| 
        callu     r0                    ; far call to _Clear_RX	; |131| 
                                        ; |131| Far Call Occurs
	.line	7
;----------------------------------------------------------------------
; 133 | TIMER1_COUNTER[id]       = PORT[id].TMR_Network_WDOG + PORT[id].TMR_Cha
;     | r;                                                                     
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      @CL31,ar0             ; |133| 
        ldiu      *+fp(1),ir1           ; |133| 
        ldp       @CL32,DP
        ldiu      ir1,ir0               ; |133| 
        ldiu      @CL32,ar1             ; |133| 
        mpyi      71,ir0                ; |133| 
        ldp       @CL30,DP
        ldiu      ir1,r0
        mpyi      71,ir1                ; |133| 
        ldiu      @CL30,ar2             ; |133| 
        addi3     *+ar0(ir1),*+ar1(ir0),r1 ; |133| 
        ldiu      r0,ir0                ; |133| 
        sti       r1,*+ar2(ir0)         ; |133| 
	.line	8
;----------------------------------------------------------------------
; 134 | PORT[id].i                       = PORT[id].i_main;                    
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |134| 
        ldiu      *+fp(1),ir1           ; |134| 
        ldiu      ir1,ir0               ; |134| 
        ldp       @CL33,DP
        mpyi      71,ir0                ; |134| 
        mpyi      71,ir1                ; |134| 
        ldiu      @CL33,ar1             ; |134| 
        ldiu      *+ar0(ir1),r0         ; |134| 
        sti       r0,*+ar1(ir0)         ; |134| 
	.line	9
;----------------------------------------------------------------------
; 135 | PORT[id].pvector         = PORT[id].pvector_main;                      
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      *+fp(1),ir1           ; |135| 
        ldiu      @CL36,ar1             ; |135| 
        ldp       @CL35,DP
        ldiu      ir1,ir0               ; |135| 
        ldiu      @CL35,ar0             ; |135| 
        mpyi      71,ir1                ; |135| 
        mpyi      71,ir0                ; |135| 
        ldiu      *+ar1(ir1),r0         ; |135| 
        sti       r0,*+ar0(ir0)         ; |135| 
	.line	10
;----------------------------------------------------------------------
; 136 | PORT[id].tvector         = PORT[id].tvector_main;                      
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      *+fp(1),ir1           ; |136| 
        ldiu      ir1,ir0               ; |136| 
        ldiu      @CL38,ar1             ; |136| 
        mpyi      71,ir1                ; |136| 
        ldp       @CL37,DP
        mpyi      71,ir0                ; |136| 
        ldiu      @CL37,ar0             ; |136| 
        ldiu      *+ar1(ir1),r0         ; |136| 
        sti       r0,*+ar0(ir0)         ; |136| 
	.line	11
;----------------------------------------------------------------------
; 137 | PORT[id].TX_complete = TRUE;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |137| 
        ldp       @CL39,DP
        mpyi      71,ir0                ; |137| 
        ldiu      @CL39,ar0             ; |137| 
        ldiu      1,r0                  ; |137| 
        sti       r0,*+ar0(ir0)         ; |137| 
	.line	12
;----------------------------------------------------------------------
; 138 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	13
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	139,000000000h,1


	.sect	 ".text"

	.global	_No_Port
	.sym	_No_Port,_No_Port,32,2,0
	.func	153
;******************************************************************************
;* FUNCTION NAME: _No_Port                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,ir0                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_No_Port:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 153 | void No_Port(int id)                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |154| 
	.line	3
;----------------------------------------------------------------------
; 155 | PORT[id].i_main                 = 0;                                   
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldp       @CL34,DP
        mpyi      71,ir0                ; |155| 
        ldiu      @CL34,ar0             ; |155| 
        ldiu      0,r0                  ; |155| 
        sti       r0,*+ar0(ir0)         ; |155| 
	.line	4
;----------------------------------------------------------------------
; 156 | PORT[id].tvector_main   = (int*)0;                                     
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |156| 
        ldiu      *+fp(1),ir0           ; |156| 
        mpyi      71,ir0                ; |156| 
        sti       r0,*+ar0(ir0)         ; |156| 
	.line	5
;----------------------------------------------------------------------
; 157 | PORT[id].pvector_main   = (int*)0;                                     
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      *+fp(1),ir0           ; |157| 
        ldiu      @CL36,ar0             ; |157| 
        mpyi      71,ir0                ; |157| 
        sti       r0,*+ar0(ir0)         ; |157| 
	.line	7
;----------------------------------------------------------------------
; 159 | RESET_PKT(id);                                                         
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      *+fp(1),ar2           ; |159| 
        ldiu      @CL40,r0              ; |159| 
        callu     r0                    ; far call to _RESET_PKT	; |159| 
                                        ; |159| Far Call Occurs
	.line	9
;----------------------------------------------------------------------
; 161 | PORT[id].TMR_enabled    = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |161| 
        ldp       @CL25,DP
        mpyi      71,ir0                ; |161| 
        ldiu      @CL25,ar0             ; |161| 
        ldiu      0,r0                  ; |161| 
        sti       r0,*+ar0(ir0)         ; |161| 
	.line	10
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	162,000000000h,1


	.sect	 "initialization"

	.global	_Setup_UART
	.sym	_Setup_UART,_Setup_UART,36,2,0
	.func	180
;******************************************************************************
;* FUNCTION NAME: _Setup_UART                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar2,ir0,st,rs,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 9 Auto + 0 SOE = 11 words         *
;******************************************************************************
_Setup_UART:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
;* r3    assigned to _baud_rate
	.sym	_baud_rate,3,4,17,32
;* rc    assigned to _num_bits
	.sym	_num_bits,19,4,17,32
;* rs    assigned to _parity
	.sym	_parity,20,4,17,32
;* f2    assigned to _stop_bits
	.sym	_stop_bits,2,6,17,32
	.sym	_id,1,4,1,32
	.sym	_baud_rate,2,4,1,32
	.sym	_num_bits,3,4,1,32
	.sym	_parity,4,4,1,32
	.sym	_stop_bits,5,6,1,32
	.sym	_div,6,4,1,32
	.sym	_temp,7,6,1,32
	.sym	_n,8,6,1,32
	.sym	_x,9,14,1,32
	.line	1
;----------------------------------------------------------------------
; 180 | int Setup_UART(int id, int baud_rate, int num_bits, int parity, float s
;     | top_bits)                                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      9,sp
	.line	2
;----------------------------------------------------------------------
; 182 | int     div;            /* calculated baud rate */                     
; 183 | float temp;             /* temporary variable   */                     
; 184 | float n;                /* calculated num bits  */                     
; 185 | unsigned int x; /* port check           */                             
;----------------------------------------------------------------------
        stf       f2,*+fp(5)            ; |181| 
        sti       rs,*+fp(4)            ; |181| 
        sti       rc,*+fp(3)            ; |181| 
        sti       r3,*+fp(2)            ; |181| 
        sti       ar2,*+fp(1)           ; |181| 
	.line	8
;----------------------------------------------------------------------
; 187 | PORT[id].PRESENT = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |187| 
        ldp       @CL41,DP
        mpyi      71,ir0                ; |187| 
        ldiu      @CL41,ar0             ; |187| 
        ldiu      0,r0                  ; |187| 
        sti       r0,*+ar0(ir0)         ; |187| 
	.line	10
;----------------------------------------------------------------------
; 189 | if (SA && ((id<0) || (id>=2)))          /* check serial port range */  
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |189| 
        ldiu      *ar0,r0               ; |189| 
        cmpi      0,r0                  ; |189| 
        beq       L28                   ; |189| 
;*      Branch Occurs to L28            ; |189| 
        ldiu      *+fp(1),r0            ; |189| 
        cmpi      0,r0                  ; |189| 
        blt       L26                   ; |189| 
;*      Branch Occurs to L26            ; |189| 
        cmpi      2,r0                  ; |189| 
        blt       L28                   ; |189| 
;*      Branch Occurs to L28            ; |189| 
L26:        
	.line	11
;----------------------------------------------------------------------
; 190 | return UART_ERROR_SELECT;                                              
;----------------------------------------------------------------------
        bud       L86                   ; |190| 
	nop
	nop
        ldiu      -10,r0                ; |190| 
;*      Branch Occurs to L86            ; |190| 
L28:        
	.line	12
;----------------------------------------------------------------------
; 191 | else if ((id<0) || (id>=UART_MAX))  /* check UART range */             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |191| 
        cmpi      0,r0                  ; |191| 
        blt       L30                   ; |191| 
;*      Branch Occurs to L30            ; |191| 
        cmpi      8,r0                  ; |191| 
        blt       L31                   ; |191| 
;*      Branch Occurs to L31            ; |191| 
L30:        
	.line	13
;----------------------------------------------------------------------
; 192 | return UART_ERROR_SELECT;                                              
;----------------------------------------------------------------------
        bud       L86                   ; |192| 
	nop
	nop
        ldiu      -10,r0                ; |192| 
;*      Branch Occurs to L86            ; |192| 
L31:        
	.line	15
;----------------------------------------------------------------------
; 194 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	18
;----------------------------------------------------------------------
; 197 | x                               = 0x00;                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |197| 
        sti       r0,*+fp(9)            ; |197| 
	.line	19
;----------------------------------------------------------------------
; 198 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	20
;----------------------------------------------------------------------
; 199 | UART[id][SPR]   = 0xAA;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |199| 
        ldp       @CL42,DP
        ash       4,ir0                 ; |199| 
        ldiu      @CL42,ar0             ; |199| 
        ldiu      170,r0                ; |199| 
        sti       r0,*+ar0(ir0)         ; |199| 
	.line	21
;----------------------------------------------------------------------
; 200 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	22
;----------------------------------------------------------------------
; 201 | UART[id][SPR+1] = 0xFF; /* this write will affect the bus */           
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      *+fp(1),ir0           ; |201| 
        ldiu      @CL43,ar0             ; |201| 
        ash       4,ir0                 ; |201| 
        ldiu      255,r0                ; |201| 
        sti       r0,*+ar0(ir0)         ; |201| 
	.line	23
;----------------------------------------------------------------------
; 202 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	24
;----------------------------------------------------------------------
; 203 | x                               = UART[id][SPR] & 0xFF;                
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      *+fp(1),ir0           ; |203| 
        ldiu      @CL42,ar0             ; |203| 
        ash       4,ir0                 ; |203| 
        and3      r0,*+ar0(ir0),r0      ; |203| 
        sti       r0,*+fp(9)            ; |203| 
	.line	26
;----------------------------------------------------------------------
; 205 | if (x!=0xAA)                                                           
;----------------------------------------------------------------------
        cmpi      170,r0                ; |205| 
        beq       L33                   ; |205| 
;*      Branch Occurs to L33            ; |205| 
	.line	28
;----------------------------------------------------------------------
; 207 | No_Port(id);                                                           
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      *+fp(1),ar2           ; |207| 
        ldiu      @CL44,r0              ; |207| 
        callu     r0                    ; far call to _No_Port	; |207| 
                                        ; |207| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 208 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	30
;----------------------------------------------------------------------
; 209 | return;                                                                
;----------------------------------------------------------------------
        bu        L86                   ; |209| 
;*      Branch Occurs to L86            ; |209| 
L33:        
	.line	33
;----------------------------------------------------------------------
; 212 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	34
;----------------------------------------------------------------------
; 213 | UART[id][SPR]   = 0x55;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |213| 
        ldp       @CL42,DP
        ash       4,ir0                 ; |213| 
        ldiu      @CL42,ar0             ; |213| 
        ldiu      85,r0                 ; |213| 
        sti       r0,*+ar0(ir0)         ; |213| 
	.line	35
;----------------------------------------------------------------------
; 214 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	36
;----------------------------------------------------------------------
; 215 | UART[id][SPR+1] = 0xFF; /* this write will affect the bus */           
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      *+fp(1),ir0           ; |215| 
        ldiu      @CL43,ar0             ; |215| 
        ash       4,ir0                 ; |215| 
        ldiu      255,r0                ; |215| 
        sti       r0,*+ar0(ir0)         ; |215| 
	.line	37
;----------------------------------------------------------------------
; 216 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	38
;----------------------------------------------------------------------
; 217 | x                               = UART[id][SPR] & 0xFF;                
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      *+fp(1),ir0           ; |217| 
        ldiu      @CL42,ar0             ; |217| 
        ash       4,ir0                 ; |217| 
        and3      r0,*+ar0(ir0),r0      ; |217| 
        sti       r0,*+fp(9)            ; |217| 
	.line	40
;----------------------------------------------------------------------
; 219 | if (x!=0x55)                                                           
;----------------------------------------------------------------------
        cmpi      85,r0                 ; |219| 
        beq       L35                   ; |219| 
;*      Branch Occurs to L35            ; |219| 
	.line	42
;----------------------------------------------------------------------
; 221 | No_Port(id);                                                           
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      *+fp(1),ar2           ; |221| 
        ldiu      @CL44,r0              ; |221| 
        callu     r0                    ; far call to _No_Port	; |221| 
                                        ; |221| Far Call Occurs
	.line	43
;----------------------------------------------------------------------
; 222 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	44
;----------------------------------------------------------------------
; 223 | return;                                                                
;----------------------------------------------------------------------
        bu        L86                   ; |223| 
;*      Branch Occurs to L86            ; |223| 
L35:        
	.line	47
;----------------------------------------------------------------------
; 226 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	48
;----------------------------------------------------------------------
; 227 | UART[id][SPR]    = 0x00;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |227| 
        ldp       @CL42,DP
        ash       4,ir0                 ; |227| 
        ldiu      @CL42,ar0             ; |227| 
        ldiu      0,r0                  ; |227| 
        sti       r0,*+ar0(ir0)         ; |227| 
	.line	49
;----------------------------------------------------------------------
; 228 | PORT[id].PRESENT = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      *+fp(1),ir0           ; |228| 
        ldiu      @CL41,ar0             ; |228| 
        mpyi      71,ir0                ; |228| 
        ldiu      1,r0                  ; |228| 
        sti       r0,*+ar0(ir0)         ; |228| 
	.line	52
;----------------------------------------------------------------------
; 231 | DISABLE_INT0;                                                          
;----------------------------------------------------------------------
	andn	0001h, IE
	.line	53
;----------------------------------------------------------------------
; 232 | DISABLE_EXTINT0;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL45,DP
        ldiu      @CL45,ar0             ; |232| 
        ldiu      254,r0                ; |232| 
        and3      r0,*ar0,r0            ; |232| 
        sti       r0,*ar0               ; |232| 
	pop		ST			
	.line	54
;----------------------------------------------------------------------
; 233 | CLEAR_INT0;                                                            
;----------------------------------------------------------------------
	andn	0001h, IF
	.line	55
;----------------------------------------------------------------------
; 234 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	56
;----------------------------------------------------------------------
; 235 | UART[id][IER] = 0x00;   /* disable interrupts */                       
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |235| 
        ldiu      @CL17,ar0             ; |235| 
        ash       4,ir0                 ; |235| 
        ldiu      0,r0                  ; |235| 
        sti       r0,*+ar0(ir0)         ; |235| 
	.line	57
;----------------------------------------------------------------------
; 236 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	58
;----------------------------------------------------------------------
; 237 | UART[id][MCR] = 0x08;   /* always enable bit 3 (the INT pin) otherwise
;     | the tri-state will cause intermittent /INT */                          
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      *+fp(1),ir0           ; |237| 
        ash       4,ir0                 ; |237| 
        ldiu      @CL46,ar0             ; |237| 
        ldiu      8,r0                  ; |237| 
        sti       r0,*+ar0(ir0)         ; |237| 
	.line	60
;----------------------------------------------------------------------
; 239 | if ((id==4) && (!SA))                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |239| 
        cmpi      4,r0                  ; |239| 
        bne       L38                   ; |239| 
;*      Branch Occurs to L38            ; |239| 
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |239| 
        ldiu      *ar0,r0               ; |239| 
        cmpi      0,r0                  ; |239| 
        bne       L38                   ; |239| 
;*      Branch Occurs to L38            ; |239| 
	.line	62
;----------------------------------------------------------------------
; 241 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	63
;----------------------------------------------------------------------
; 242 | UART[id][LCR] = 0x40;                                                  
; 244 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |242| 
        ldp       @CL47,DP
        ash       4,ir0                 ; |242| 
        ldiu      @CL47,ar0             ; |242| 
        ldiu      64,r0                 ; |242| 
        sti       r0,*+ar0(ir0)         ; |242| 
        bu        L39                   ; |179| 
;*      Branch Occurs to L39            ; |179| 
L38:        
	.line	67
;----------------------------------------------------------------------
; 246 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	68
;----------------------------------------------------------------------
; 247 | UART[id][LCR] = 0x00;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |247| 
        ldp       @CL47,DP
        ash       4,ir0                 ; |247| 
        ldiu      @CL47,ar0             ; |247| 
        ldiu      0,r0                  ; |247| 
        sti       r0,*+ar0(ir0)         ; |247| 
L39:        
	.line	71
;----------------------------------------------------------------------
; 250 | if ((num_bits<5) || (num_bits>8))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |250| 
        cmpi      5,r0                  ; |250| 
        blt       L41                   ; |250| 
;*      Branch Occurs to L41            ; |250| 
        cmpi      8,r0                  ; |250| 
        ble       L42                   ; |250| 
;*      Branch Occurs to L42            ; |250| 
L41:        
	.line	72
;----------------------------------------------------------------------
; 251 | num_bits = 8;                                                          
;----------------------------------------------------------------------
        ldiu      8,r0                  ; |251| 
        sti       r0,*+fp(3)            ; |251| 
L42:        
	.line	74
;----------------------------------------------------------------------
; 253 | if (stop_bits==1.0);   /* do nothing */                                
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |253| 
        cmpf      1.0000000000e+00,f0   ; |253| 
        beq       L53                   ; |253| 
;*      Branch Occurs to L53            ; |253| 
	.line	75
;----------------------------------------------------------------------
; 254 | else if (stop_bits==2.0)                                               
;----------------------------------------------------------------------
        cmpf      2.0000000000e+00,f0   ; |254| 
        bne       L48                   ; |254| 
;*      Branch Occurs to L48            ; |254| 
	.line	77
;----------------------------------------------------------------------
; 256 | if ((num_bits<6) || (num_bits>8))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |256| 
        cmpi      6,r0                  ; |256| 
        blt       L46                   ; |256| 
;*      Branch Occurs to L46            ; |256| 
        cmpi      8,r0                  ; |256| 
        ble       L47                   ; |256| 
;*      Branch Occurs to L47            ; |256| 
L46:        
	.line	79
;----------------------------------------------------------------------
; 258 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	80
;----------------------------------------------------------------------
; 259 | return UART_ERROR_NUM_BITS;                                            
;----------------------------------------------------------------------
        bud       L86                   ; |259| 
	nop
	nop
        ldiu      -12,r0                ; |259| 
;*      Branch Occurs to L86            ; |259| 
L47:        
	.line	83
;----------------------------------------------------------------------
; 262 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	84
;----------------------------------------------------------------------
; 263 | UART[id][LCR] |= 0x04;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |263| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |263| 
        addi      @CL27,ar0             ; |263| Unsigned
        ldiu      4,r0                  ; |263| 
        or        *+ar0(3),r0           ; |263| 
        sti       r0,*+ar0(3)           ; |263| 
        bu        L53                   ; |179| 
;*      Branch Occurs to L53            ; |179| 
L48:        
	.line	86
;----------------------------------------------------------------------
; 265 | else if (stop_bits==1.5)                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |265| 
        cmpf      1.5000000000e+00,f0   ; |265| 
        bne       L52                   ; |265| 
;*      Branch Occurs to L52            ; |265| 
	.line	88
;----------------------------------------------------------------------
; 267 | if (num_bits!=5)                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |267| 
        cmpi      5,r0                  ; |267| 
        beq       L51                   ; |267| 
;*      Branch Occurs to L51            ; |267| 
	.line	90
;----------------------------------------------------------------------
; 269 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	91
;----------------------------------------------------------------------
; 270 | return UART_ERROR_NUM_BITS;                                            
;----------------------------------------------------------------------
        bud       L86                   ; |270| 
	nop
	nop
        ldiu      -12,r0                ; |270| 
;*      Branch Occurs to L86            ; |270| 
L51:        
	.line	94
;----------------------------------------------------------------------
; 273 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	95
;----------------------------------------------------------------------
; 274 | UART[id][LCR] |= 0x04;                                                 
; 276 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |274| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |274| 
        addi      @CL27,ar0             ; |274| Unsigned
        ldiu      4,r0                  ; |274| 
        or        *+ar0(3),r0           ; |274| 
        sti       r0,*+ar0(3)           ; |274| 
        bu        L53                   ; |179| 
;*      Branch Occurs to L53            ; |179| 
L52:        
	.line	98
;----------------------------------------------------------------------
; 277 | stop_bits = 1.0;                                                       
;----------------------------------------------------------------------
        ldfu      1.0000000000e+00,f0   ; |277| 
        stf       f0,*+fp(5)            ; |277| 
L53:        
	.line	100
;----------------------------------------------------------------------
; 279 | PORTCFG[id].N    = num_bits;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |279| 
        ldp       @CL48,DP
        mpyi      359,ir0               ; |279| 
        ldiu      @CL48,ar0             ; |279| 
        ldiu      *+fp(3),r0            ; |279| 
        sti       r0,*+ar0(ir0)         ; |279| 
	.line	101
;----------------------------------------------------------------------
; 280 | PORTCFG[id].STP  = stop_bits;                                          
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |280| 
        ldp       @CL49,DP
        ldiu      *+fp(1),ir0           ; |280| 
        negf      f1,f0                 ; |280| 
        ldiu      @CL49,ar0             ; |280| 
        mpyi      359,ir0               ; |280| 
        fix       f0,r0                 ; |280| 
        fix       f1,r1                 ; |280| 
        negi      r0,r0                 ; |280| 
        ldile     r0,r1                 ; |280| 
        sti       r1,*+ar0(ir0)         ; |280| 
	.line	102
;----------------------------------------------------------------------
; 281 | n                            = num_bits + stop_bits + 2.0;             
;----------------------------------------------------------------------
        float     *+fp(3),f0            ; |281| 
        addf      *+fp(5),f0            ; |281| 
        addf      2.0000000000e+00,f0   ; |281| 
        stf       f0,*+fp(8)            ; |281| 
	.line	103
;----------------------------------------------------------------------
; 282 | num_bits            -= 5;   /* setup for register - '00'=5 ... '11'=8 *
;     | /                                                                      
;----------------------------------------------------------------------
        ldiu      5,r0                  ; |282| 
        subri     *+fp(3),r0            ; |282| 
        sti       r0,*+fp(3)            ; |282| 
	.line	104
;----------------------------------------------------------------------
; 283 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	105
;----------------------------------------------------------------------
; 284 | UART[id][LCR]   |= num_bits;                                           
; 286 | switch (parity>>8)                                                     
; 288 |         case 'O':               /* ODD PARITY */                       
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      *+fp(1),ar0           ; |284| 
        ash       4,ar0                 ; |284| 
        addi      @CL27,ar0             ; |284| Unsigned
        ldiu      *+fp(3),r0            ; |284| 
        or        *+ar0(3),r0           ; |284| 
        sti       r0,*+ar0(3)           ; |284| 
        bu        L60                   ; |179| 
;*      Branch Occurs to L60            ; |179| 
L54:        
	.line	111
;----------------------------------------------------------------------
; 290 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	112
;----------------------------------------------------------------------
; 291 | UART[id][LCR]           |= 0x08;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |291| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |291| 
        addi      @CL27,ar0             ; |291| Unsigned
        ldiu      8,r0                  ; |291| 
        or        *+ar0(3),r0           ; |291| 
        sti       r0,*+ar0(3)           ; |291| 
	.line	113
;----------------------------------------------------------------------
; 292 | PORTCFG[id].Parity       = 'O'<<8;                                     
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(1),ir0           ; |292| 
        mpyi      359,ir0               ; |292| 
        ldiu      @CL50,ar0             ; |292| 
        ldiu      20224,r0              ; |292| 
        sti       r0,*+ar0(ir0)         ; |292| 
	.line	114
;----------------------------------------------------------------------
; 293 | break;                                                                 
; 295 | case 'E':               /* EVEN PARITY */                              
;----------------------------------------------------------------------
        bu        L68                   ; |293| 
;*      Branch Occurs to L68            ; |293| 
L55:        
	.line	118
;----------------------------------------------------------------------
; 297 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	119
;----------------------------------------------------------------------
; 298 | UART[id][LCR]           |= 0x18;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |298| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |298| 
        addi      @CL27,ar0             ; |298| Unsigned
        ldiu      24,r0                 ; |298| 
        or        *+ar0(3),r0           ; |298| 
        sti       r0,*+ar0(3)           ; |298| 
	.line	120
;----------------------------------------------------------------------
; 299 | PORTCFG[id].Parity       = 'E'<<8;                                     
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(1),ir0           ; |299| 
        mpyi      359,ir0               ; |299| 
        ldiu      @CL50,ar0             ; |299| 
        ldiu      17664,r0              ; |299| 
        sti       r0,*+ar0(ir0)         ; |299| 
	.line	121
;----------------------------------------------------------------------
; 300 | break;                                                                 
; 302 | case '1':               /* FORCED MARK */                              
; 303 | case 'M':               /* FORCED MARK */                              
;----------------------------------------------------------------------
        bu        L68                   ; |300| 
;*      Branch Occurs to L68            ; |300| 
L56:        
	.line	126
;----------------------------------------------------------------------
; 305 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	127
;----------------------------------------------------------------------
; 306 | UART[id][LCR]           |= 0x28;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |306| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |306| 
        addi      @CL27,ar0             ; |306| Unsigned
        ldiu      40,r0                 ; |306| 
        or        *+ar0(3),r0           ; |306| 
        sti       r0,*+ar0(3)           ; |306| 
	.line	128
;----------------------------------------------------------------------
; 307 | PORTCFG[id].Parity       = 'M'<<8;                                     
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(1),ir0           ; |307| 
        mpyi      359,ir0               ; |307| 
        ldiu      @CL50,ar0             ; |307| 
        ldiu      19712,r0              ; |307| 
        sti       r0,*+ar0(ir0)         ; |307| 
	.line	129
;----------------------------------------------------------------------
; 308 | break;                                                                 
; 310 | case '0':               /* FORCED SPACE */                             
; 311 | case 'S':               /* FORCED SPACE */                             
;----------------------------------------------------------------------
        bu        L68                   ; |308| 
;*      Branch Occurs to L68            ; |308| 
L57:        
	.line	134
;----------------------------------------------------------------------
; 313 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	135
;----------------------------------------------------------------------
; 314 | UART[id][LCR]           |= 0x38;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |314| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |314| 
        addi      @CL27,ar0             ; |314| Unsigned
        ldiu      56,r0                 ; |314| 
        or        *+ar0(3),r0           ; |314| 
        sti       r0,*+ar0(3)           ; |314| 
	.line	136
;----------------------------------------------------------------------
; 315 | PORTCFG[id].Parity       = 'S'<<8;                                     
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(1),ir0           ; |315| 
        mpyi      359,ir0               ; |315| 
        ldiu      @CL50,ar0             ; |315| 
        ldiu      21248,r0              ; |315| 
        sti       r0,*+ar0(ir0)         ; |315| 
	.line	137
;----------------------------------------------------------------------
; 316 | break;                                                                 
; 318 | default:                                                               
; 319 | case 'N':               /* NO PARITY */                                
;----------------------------------------------------------------------
        bu        L68                   ; |316| 
;*      Branch Occurs to L68            ; |316| 
L58:        
	.line	142
;----------------------------------------------------------------------
; 321 | n                                 -= 1;                                
;----------------------------------------------------------------------
        ldfu      1.0000000000e+00,f0   ; |321| 
        subrf     *+fp(8),f0            ; |321| 
        stf       f0,*+fp(8)            ; |321| 
	.line	143
;----------------------------------------------------------------------
; 322 | PORTCFG[id].Parity = 'N'<<8;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |322| 
        ldp       @CL50,DP
        mpyi      359,ir0               ; |322| 
        ldiu      @CL50,ar0             ; |322| 
        ldiu      19968,r0              ; |322| 
        sti       r0,*+ar0(ir0)         ; |322| 
	.line	144
;----------------------------------------------------------------------
; 323 | break;                                                                 
;----------------------------------------------------------------------
        bu        L68                   ; |323| 
;*      Branch Occurs to L68            ; |323| 
L60:        
	.line	107
        ldiu      *+fp(4),r0            ; |286| 
        ash       -8,r0                 ; |286| 
        cmpi      48,r0                 ; |286| 
        beq       L57                   ; |286| 
;*      Branch Occurs to L57            ; |286| 
        cmpi      49,r0                 ; |286| 
        beq       L56                   ; |286| 
;*      Branch Occurs to L56            ; |286| 
        cmpi      69,r0                 ; |286| 
        beq       L55                   ; |286| 
;*      Branch Occurs to L55            ; |286| 
        cmpi      77,r0                 ; |286| 
        beq       L56                   ; |286| 
;*      Branch Occurs to L56            ; |286| 
        cmpi      78,r0                 ; |286| 
        beq       L58                   ; |286| 
;*      Branch Occurs to L58            ; |286| 
        cmpi      79,r0                 ; |286| 
        beq       L54                   ; |286| 
;*      Branch Occurs to L54            ; |286| 
        cmpi      83,r0                 ; |286| 
        beq       L57                   ; |286| 
;*      Branch Occurs to L57            ; |286| 
        bu        L58                   ; |286| 
;*      Branch Occurs to L58            ; |286| 
L68:        
	.line	148
;----------------------------------------------------------------------
; 327 | temp = round(UART_CLOCK/(float)baud_rate/16.0, 0);                     
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,ar0             ; |327| 
        ldp       @CL52,DP
        float     *ar0,f0               ; |327| 
        ldflt     @CL52,f1              ; |327| 
        ldfge     0.0000000000e+00,f1   ; |327| 
        ldp       @CL53,DP
        addf3     f0,f1,f0              ; |327| 
        mpyf      @CL53,f0              ; |327| 
        float     *+fp(2),f1            ; |327| 
        call      DIV_F30               ; |327| 
                                        ; |327| Call Occurs
        ldp       @CL55,DP
        ldiu      @CL55,r1              ; |327| 
        ldp       @CL54,DP
        ldiu      0,ar2                 ; |327| 
        ldfu      f0,f2                 ; |327| 
        mpyf      @CL54,f2              ; |327| 
        callu     r1                    ; far call to _round	; |327| 
                                        ; |327| Far Call Occurs
        stf       f0,*+fp(7)            ; |327| 
	.line	149
;----------------------------------------------------------------------
; 328 | div  = temp;                                                           
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |328| 
        fix       f0,r0                 ; |328| 
        fix       f1,r1                 ; |328| 
        negi      r0,r0                 ; |328| 
        ldile     r0,r1                 ; |328| 
        sti       r1,*+fp(6)            ; |328| 
	.line	151
;----------------------------------------------------------------------
; 330 | Set_Baud(id, div);                                                     
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,r0              ; |330| 
        ldiu      *+fp(1),ar2           ; |330| 
        ldiu      r1,r2                 ; |330| 
        callu     r0                    ; far call to _Set_Baud	; |330| 
                                        ; |330| Far Call Occurs
	.line	153
;----------------------------------------------------------------------
; 332 | PORT[id].actual_baud_rate = (float)(UART_CLOCK/div/16.0);              
; 334 | if (FIFOSIZE)                                                          
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,ar0             ; |332| 
        ldp       @CL52,DP
        float     *ar0,f0               ; |332| 
        ldflt     @CL52,f1              ; |332| 
        ldp       @CL53,DP
        ldfge     0.0000000000e+00,f1   ; |332| 
        addf3     f0,f1,f0              ; |332| 
        mpyf      @CL53,f0              ; |332| 
        float     *+fp(6),f1            ; |332| 
        call      DIV_F30               ; |332| 
                                        ; |332| Call Occurs
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |332| 
        ldiu      *+fp(1),ir0           ; |332| 
        ldp       @CL54,DP
        mpyi      71,ir0                ; |332| 
        mpyf      @CL54,f0              ; |332| 
        stf       f0,*+ar0(ir0)         ; |332| 
	.line	157
;----------------------------------------------------------------------
; 336 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	158
;----------------------------------------------------------------------
; 337 | UART[id][FCR] = 0x07;   /* enable FIFOs(16) RxTrig = 1 */              
; 339 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      *+fp(1),ir0           ; |337| 
        ldiu      @CL14,ar0             ; |337| 
        ash       4,ir0                 ; |337| 
        ldiu      7,r0                  ; |337| 
        sti       r0,*+ar0(ir0)         ; |337| 
        bu        L70                   ; |179| 
;*      Branch Occurs to L70            ; |179| 
	.line	162
;----------------------------------------------------------------------
; 341 | NOPS;                                                                  
;----------------------------------------------------------------------
	.line	163
;----------------------------------------------------------------------
; 342 | UART[id][FCR] = 0x00;   /* no FIFOs*/                                  
;----------------------------------------------------------------------
L70:        
	.line	166
;----------------------------------------------------------------------
; 345 | PORT[id].ERROR_COUNT    = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |345| 
        ldp       @CL58,DP
        mpyi      71,ir0                ; |345| 
        ldiu      @CL58,ar0             ; |345| 
        ldiu      0,r0                  ; |345| 
        sti       r0,*+ar0(ir0)         ; |345| 
	.line	167
;----------------------------------------------------------------------
; 346 | PORT[id].WDOG_COUNT     = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      *+fp(1),ir0           ; |346| 
        ldiu      @CL59,ar0             ; |346| 
        mpyi      71,ir0                ; |346| 
        sti       r0,*+ar0(ir0)         ; |346| 
	.line	168
;----------------------------------------------------------------------
; 347 | PORT[id].INV_CMD_COUNT  = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(1),ir0           ; |347| 
        ldiu      @CL60,ar0             ; |347| 
        mpyi      71,ir0                ; |347| 
        sti       r0,*+ar0(ir0)         ; |347| 
	.line	169
;----------------------------------------------------------------------
; 348 | PORT[id].INV_PKT_COUNT  = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      *+fp(1),ir0           ; |348| 
        ldiu      @CL61,ar0             ; |348| 
        mpyi      71,ir0                ; |348| 
        sti       r0,*+ar0(ir0)         ; |348| 
	.line	170
;----------------------------------------------------------------------
; 349 | PORT[id].SUCCESS                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldiu      *+fp(1),ir0           ; |349| 
        mpyi      71,ir0                ; |349| 
        ldiu      @CL62,ar0             ; |349| 
        sti       r0,*+ar0(ir0)         ; |349| 
	.line	171
;----------------------------------------------------------------------
; 350 | PORT[id].NUM_RETRIES    = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |350| 
        ldp       @CL63,DP
        mpyi      71,ir0                ; |350| 
        ldiu      @CL63,ar0             ; |350| 
        sti       r0,*+ar0(ir0)         ; |350| 
	.line	173
;----------------------------------------------------------------------
; 352 | Clear_RX(id);                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |352| 
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |352| 
        callu     r0                    ; far call to _Clear_RX	; |352| 
                                        ; |352| Far Call Occurs
	.line	174
;----------------------------------------------------------------------
; 353 | Clear(&TXbuf[id]);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |353| 
        ldp       @CL64,DP
        mpyi      307,ar2               ; |353| 
        addi      @CL64,ar2             ; |353| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |353| 
        callu     r0                    ; far call to _Clear	; |353| 
                                        ; |353| Far Call Occurs
	.line	176
;----------------------------------------------------------------------
; 355 | PORT[id].TX_complete = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      *+fp(1),ir0           ; |355| 
        ldiu      @CL39,ar0             ; |355| 
        mpyi      71,ir0                ; |355| 
        ldiu      1,r0                  ; |355| 
        sti       r0,*+ar0(ir0)         ; |355| 
	.line	177
;----------------------------------------------------------------------
; 356 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	178
;----------------------------------------------------------------------
; 357 | UART[id][IER]                = 0x01;        /* enable RHR, disable THR
;     | interrupts */                                                          
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |357| 
        ldiu      @CL17,ar0             ; |357| 
        ash       4,ir0                 ; |357| 
        sti       r0,*+ar0(ir0)         ; |357| 
	.line	179
;----------------------------------------------------------------------
; 358 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	180
;----------------------------------------------------------------------
; 359 | UART[id][MCR]           |= 0x08;        /* enable INT */               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |359| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |359| 
        addi      @CL27,ar0             ; |359| Unsigned
        ldiu      8,r0                  ; |359| 
        or        *+ar0(4),r0           ; |359| 
        sti       r0,*+ar0(4)           ; |359| 
	.line	181
;----------------------------------------------------------------------
; 360 | PORT[id].TMR_enabled = FALSE;                                          
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |360| 
        ldiu      *+fp(1),ir0           ; |360| 
        mpyi      71,ir0                ; |360| 
        ldiu      0,r0                  ; |360| 
        sti       r0,*+ar0(ir0)         ; |360| 
	.line	182
;----------------------------------------------------------------------
; 361 | PORTCFG[id].n_bits   = n;                                              
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldfu      *+fp(8),f1            ; |361| 
        ldiu      @CL65,ar0             ; |361| 
        negf      f1,f0                 ; |361| 
        fix       f0,r0                 ; |361| 
        fix       f1,r1                 ; |361| 
        ldiu      *+fp(1),ir0           ; |361| 
        negi      r0,r0                 ; |361| 
        mpyi      359,ir0               ; |361| 
        ldile     r0,r1                 ; |361| 
        sti       r1,*+ar0(ir0)         ; |361| 
	.line	184
;----------------------------------------------------------------------
; 363 | if (PORTCFG[id].NETWDOG.calc_val<0.1)                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |363| 
        ldp       @CL66,DP
        mpyi      359,ar0               ; |363| 
        addi      @CL66,ar0             ; |363| Unsigned
        ldp       @CL67+0,DP
        ldfu      @CL67+0,f0            ; |363| 40b float hi half
        ldfu      *ar0,f1               ; |363| 40b float hi half
        ldp       @CL67+1,DP
        ldiu      *+ar0,r1              ; |363| 40b float lo half
        ldiu      @CL67+1,r0            ; |363| 40b float lo half
        cmpf      f0,f1                 ; |363| 
        bge       L72                   ; |363| 
;*      Branch Occurs to L72            ; |363| 
	.line	185
;----------------------------------------------------------------------
; 364 | VAR_Update(&PORTCFG[id].NETWDOG, DEFAULT_NETWDOG, 0, 0);               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |364| 
        ldiu      @CL70,r0              ; |364| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |364| 
        addi      @CL68,ar2             ; |364| Unsigned
        ldp       @CL69+0,DP
        ldfu      @CL69+0,f2            ; |364| 40b float hi half
        ldp       @CL69+1,DP
        ldiu      0,rc                  ; |364| 
        ldiu      @CL69+1,r2            ; |364| 40b float lo half
        ldiu      0,r3                  ; |364| 
        callu     r0                    ; far call to _VAR_Update	; |364| 
                                        ; |364| Far Call Occurs
L72:        
	.line	187
;----------------------------------------------------------------------
; 366 | if (PORTCFG[id].PREFIX.calc_val<0.0)                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |366| 
        ldp       @CL71,DP
        mpyi      359,ar0               ; |366| 
        addi      @CL71,ar0             ; |366| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f1            ; |366| 40b float hi half
        ldfu      *ar0,f0               ; |366| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      *+ar0,r0              ; |366| 40b float lo half
        ldiu      @CL72+1,r1            ; |366| 40b float lo half
        cmpf      f1,f0                 ; |366| 
        bge       L74                   ; |366| 
;*      Branch Occurs to L74            ; |366| 
	.line	188
;----------------------------------------------------------------------
; 367 | VAR_Update(&PORTCFG[id].PREFIX, DEFAULT_PREFIX, 0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |367| 
        ldiu      @CL70,r0              ; |367| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |367| 
        addi      @CL73,ar2             ; |367| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |367| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |367| 
        ldiu      @CL74+1,r2            ; |367| 40b float lo half
        ldiu      0,r3                  ; |367| 
        callu     r0                    ; far call to _VAR_Update	; |367| 
                                        ; |367| Far Call Occurs
L74:        
	.line	190
;----------------------------------------------------------------------
; 369 | if (PORTCFG[id].SUFFIX.calc_val<0.0)                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |369| 
        ldp       @CL75,DP
        mpyi      359,ar0               ; |369| 
        addi      @CL75,ar0             ; |369| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f1            ; |369| 40b float hi half
        ldfu      *ar0,f0               ; |369| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      *+ar0,r0              ; |369| 40b float lo half
        ldiu      @CL72+1,r1            ; |369| 40b float lo half
        cmpf      f1,f0                 ; |369| 
        bge       L76                   ; |369| 
;*      Branch Occurs to L76            ; |369| 
	.line	191
;----------------------------------------------------------------------
; 370 | VAR_Update(&PORTCFG[id].SUFFIX, DEFAULT_SUFFIX, 0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |370| 
        ldiu      @CL70,r0              ; |370| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |370| 
        addi      @CL76,ar2             ; |370| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |370| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |370| 
        ldiu      @CL72+1,r2            ; |370| 40b float lo half
        ldiu      0,r3                  ; |370| 
        callu     r0                    ; far call to _VAR_Update	; |370| 
                                        ; |370| Far Call Occurs
L76:        
	.line	193
;----------------------------------------------------------------------
; 372 | if (PORTCFG[id].EOT_Delay.calc_val<0.0)                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |372| 
        ldp       @CL77,DP
        mpyi      359,ar0               ; |372| 
        addi      @CL77,ar0             ; |372| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f1            ; |372| 40b float hi half
        ldfu      *ar0,f0               ; |372| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      *+ar0,r0              ; |372| 40b float lo half
        ldiu      @CL72+1,r1            ; |372| 40b float lo half
        cmpf      f1,f0                 ; |372| 
        bge       L78                   ; |372| 
;*      Branch Occurs to L78            ; |372| 
	.line	194
;----------------------------------------------------------------------
; 373 | VAR_Update(&PORTCFG[id].EOT_Delay, DEFAULT_EOT, 0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |373| 
        ldiu      @CL70,r0              ; |373| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |373| 
        addi      @CL78,ar2             ; |373| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |373| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |373| 
        ldiu      @CL79+1,r2            ; |373| 40b float lo half
        ldiu      0,r3                  ; |373| 
        callu     r0                    ; far call to _VAR_Update	; |373| 
                                        ; |373| Far Call Occurs
L78:        
	.line	196
;----------------------------------------------------------------------
; 375 | if (PORTCFG[id].Retry_Time.calc_val<0.0)                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |375| 
        ldp       @CL80,DP
        mpyi      359,ar0               ; |375| 
        addi      @CL80,ar0             ; |375| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f1            ; |375| 40b float hi half
        ldfu      *ar0,f0               ; |375| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      *+ar0,r0              ; |375| 40b float lo half
        ldiu      @CL72+1,r1            ; |375| 40b float lo half
        cmpf      f1,f0                 ; |375| 
        bge       L80                   ; |375| 
;*      Branch Occurs to L80            ; |375| 
	.line	197
;----------------------------------------------------------------------
; 376 | VAR_Update(&PORTCFG[id].Retry_Time, 0.500, 0, 0);                      
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |376| 
        ldiu      @CL70,r0              ; |376| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |376| 
        addi      @CL81,ar2             ; |376| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |376| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      0,rc                  ; |376| 
        ldiu      @CL82+1,r2            ; |376| 40b float lo half
        ldiu      0,r3                  ; |376| 
        callu     r0                    ; far call to _VAR_Update	; |376| 
                                        ; |376| Far Call Occurs
L80:        
	.line	199
;----------------------------------------------------------------------
; 378 | if (PORTCFG[id].poll_time<100)                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |378| 
        ldp       @CL83,DP
        mpyi      359,ir0               ; |378| 
        ldiu      @CL83,ar0             ; |378| 
        ldiu      *+ar0(ir0),r0         ; |378| 
        cmpi      100,r0                ; |378| 
        bge       L82                   ; |378| 
;*      Branch Occurs to L82            ; |378| 
	.line	200
;----------------------------------------------------------------------
; 379 | PORTCFG[id].poll_time = 100;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |379| 
        ldp       @CL83,DP
        mpyi      359,ir0               ; |379| 
        ldiu      @CL83,ar0             ; |379| 
        ldiu      100,r0                ; |379| 
        sti       r0,*+ar0(ir0)         ; |379| 
L82:        
	.line	202
;----------------------------------------------------------------------
; 381 | if (PORTCFG[id].N_retry<0)                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |381| 
        ldp       @CL84,DP
        mpyi      359,ir0               ; |381| 
        ldiu      @CL84,ar0             ; |381| 
        ldiu      *+ar0(ir0),r0         ; |381| 
        cmpi      0,r0                  ; |381| 
        bge       L84                   ; |381| 
;*      Branch Occurs to L84            ; |381| 
	.line	203
;----------------------------------------------------------------------
; 382 | PORTCFG[id].N_retry = 3;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |382| 
        ldp       @CL84,DP
        mpyi      359,ir0               ; |382| 
        ldiu      @CL84,ar0             ; |382| 
        ldiu      3,r0                  ; |382| 
        sti       r0,*+ar0(ir0)         ; |382| 
L84:        
	.line	206
;----------------------------------------------------------------------
; 385 | temp                                            = ceil(n*PORTCFG[id].NE
;     | TWDOG.calc_val/PORT[id].actual_baud_rate/TIME1);                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |385| 
        ldp       @CL66,DP
        ldfu      *+fp(8),f0            ; |385| 
        ldiu      255,r1                ; |385| 
        mpyi      359,ar0               ; |385| 
        addi      @CL66,ar0             ; |385| Unsigned
        andn      r1,f0                 ; |385| Bit mask for F32/F40 conversion
        ldfu      *ar0,f1               ; |385| 40b float hi half
        ldiu      *+ar0,r1              ; |385| 40b float lo half
        call      MPY_LD                ; |385| 
                                        ; |385| Call Occurs
        ldp       @CL57,DP
        ldiu      *+fp(1),ir0           ; |385| 
        ldiu      @CL57,ar0             ; |385| 
        mpyi      71,ir0                ; |385| 
        ldiu      255,r2                ; |385| 
        ldfu      *+ar0(ir0),f1         ; |385| 
        andn      r2,f1                 ; |385| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |385| 
                                        ; |385| Call Occurs
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |385| 
        ldfu      *ar0,f1               ; |385| 
        ldiu      255,r2                ; |385| 
        andn      r2,f1                 ; |385| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |385| 
                                        ; |385| Call Occurs
        ldp       @CL86,DP
        ldiu      @CL86,r1              ; |385| 
        rnd       f0,f2                 ; |385| Demote to low precision
        callu     r1                    ; far call to _ceil	; |385| 
                                        ; |385| Far Call Occurs
        stf       f0,*+fp(7)            ; |385| 
	.line	207
;----------------------------------------------------------------------
; 386 | PORT[id].TMR_Network_WDOG       = (int)temp;                           
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |386| 
        fix       f1,r1                 ; |386| 
        fix       f0,r0                 ; |386| 
        ldp       @CL32,DP
        negi      r0,r0                 ; |386| 
        ldiu      *+fp(1),ir0           ; |386| 
        ldiu      @CL32,ar0             ; |386| 
        mpyi      71,ir0                ; |386| 
        ldile     r0,r1                 ; |386| 
        sti       r1,*+ar0(ir0)         ; |386| 
	.line	208
;----------------------------------------------------------------------
; 387 | temp                                                = ceil(n*PORTCFG[id
;     | ].EOT_Delay.calc_val/PORT[id].actual_baud_rate/TIME1);                 
;----------------------------------------------------------------------
        ldiu      255,r1                ; |387| 
        ldiu      *+fp(1),ar0           ; |387| 
        ldp       @CL77,DP
        mpyi      359,ar0               ; |387| 
        ldfu      *+fp(8),f0            ; |387| 
        addi      @CL77,ar0             ; |387| Unsigned
        andn      r1,f0                 ; |387| Bit mask for F32/F40 conversion
        ldfu      *ar0,f1               ; |387| 40b float hi half
        ldiu      *+ar0,r1              ; |387| 40b float lo half
        call      MPY_LD                ; |387| 
                                        ; |387| Call Occurs
        ldiu      *+fp(1),ir0           ; |387| 
        ldp       @CL57,DP
        mpyi      71,ir0                ; |387| 
        ldiu      @CL57,ar0             ; |387| 
        ldiu      255,r2                ; |387| 
        ldfu      *+ar0(ir0),f1         ; |387| 
        andn      r2,f1                 ; |387| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |387| 
                                        ; |387| Call Occurs
        ldp       @CL85,DP
        ldiu      255,r2                ; |387| 
        ldiu      @CL85,ar0             ; |387| 
        ldfu      *ar0,f1               ; |387| 
        andn      r2,f1                 ; |387| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |387| 
                                        ; |387| Call Occurs
        ldp       @CL86,DP
        ldiu      @CL86,r1              ; |387| 
        rnd       f0,f2                 ; |387| Demote to low precision
        callu     r1                    ; far call to _ceil	; |387| 
                                        ; |387| Far Call Occurs
        stf       f0,*+fp(7)            ; |387| 
	.line	209
;----------------------------------------------------------------------
; 388 | PORT[id].TMR_EOT_Delay          = (int)temp;                           
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |388| 
        fix       f0,r0                 ; |388| 
        fix       f1,r1                 ; |388| 
        ldiu      *+fp(1),ir0           ; |388| 
        negi      r0,r0                 ; |388| 
        ldp       @CL87,DP
        mpyi      71,ir0                ; |388| 
        ldiu      @CL87,ar0             ; |388| 
        ldile     r0,r1                 ; |388| 
        sti       r1,*+ar0(ir0)         ; |388| 
	.line	210
;----------------------------------------------------------------------
; 389 | temp                                                = ceil(n*PORTCFG[id
;     | ].PREFIX.calc_val/PORT[id].actual_baud_rate/TIME1);                    
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      255,r1                ; |389| 
        ldiu      *+fp(1),ar0           ; |389| 
        ldfu      *+fp(8),f0            ; |389| 
        mpyi      359,ar0               ; |389| 
        addi      @CL71,ar0             ; |389| Unsigned
        andn      r1,f0                 ; |389| Bit mask for F32/F40 conversion
        ldfu      *ar0,f1               ; |389| 40b float hi half
        ldiu      *+ar0,r1              ; |389| 40b float lo half
        call      MPY_LD                ; |389| 
                                        ; |389| Call Occurs
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |389| 
        ldiu      255,r2                ; |389| 
        ldiu      *+fp(1),ir0           ; |389| 
        mpyi      71,ir0                ; |389| 
        ldfu      *+ar0(ir0),f1         ; |389| 
        andn      r2,f1                 ; |389| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |389| 
                                        ; |389| Call Occurs
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |389| 
        ldiu      255,r2                ; |389| 
        ldfu      *ar0,f1               ; |389| 
        andn      r2,f1                 ; |389| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |389| 
                                        ; |389| Call Occurs
        ldp       @CL86,DP
        rnd       f0,f2                 ; |389| Demote to low precision
        ldiu      @CL86,r1              ; |389| 
        callu     r1                    ; far call to _ceil	; |389| 
                                        ; |389| Far Call Occurs
        stf       f0,*+fp(7)            ; |389| 
	.line	211
;----------------------------------------------------------------------
; 390 | PORT[id].TMR_Prefix_Delay       = (int)temp;                           
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      *+fp(1),ir0           ; |390| 
        ldfu      f0,f1                 ; |390| 
        ldiu      @CL88,ar0             ; |390| 
        mpyi      71,ir0                ; |390| 
        negf      f1,f0                 ; |390| 
        fix       f0,r0                 ; |390| 
        fix       f1,r1                 ; |390| 
        negi      r0,r0                 ; |390| 
        ldile     r0,r1                 ; |390| 
        sti       r1,*+ar0(ir0)         ; |390| 
	.line	212
;----------------------------------------------------------------------
; 391 | temp                                                = ceil(n*PORTCFG[id
;     | ].SUFFIX.calc_val/PORT[id].actual_baud_rate/TIME1);                    
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      *+fp(1),ar0           ; |391| 
        mpyi      359,ar0               ; |391| 
        ldfu      *+fp(8),f0            ; |391| 
        ldiu      255,r1                ; |391| 
        addi      @CL75,ar0             ; |391| Unsigned
        andn      r1,f0                 ; |391| Bit mask for F32/F40 conversion
        ldfu      *ar0,f1               ; |391| 40b float hi half
        ldiu      *+ar0,r1              ; |391| 40b float lo half
        call      MPY_LD                ; |391| 
                                        ; |391| Call Occurs
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |391| 
        ldiu      *+fp(1),ir0           ; |391| 
        ldiu      255,r2                ; |391| 
        mpyi      71,ir0                ; |391| 
        ldfu      *+ar0(ir0),f1         ; |391| 
        andn      r2,f1                 ; |391| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |391| 
                                        ; |391| Call Occurs
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |391| 
        ldiu      255,r2                ; |391| 
        ldfu      *ar0,f1               ; |391| 
        andn      r2,f1                 ; |391| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |391| 
                                        ; |391| Call Occurs
        ldp       @CL86,DP
        ldiu      @CL86,r1              ; |391| 
        rnd       f0,f2                 ; |391| Demote to low precision
        callu     r1                    ; far call to _ceil	; |391| 
                                        ; |391| Far Call Occurs
        stf       f0,*+fp(7)            ; |391| 
	.line	213
;----------------------------------------------------------------------
; 392 | PORT[id].TMR_Suffix_Delay       = (int)temp;                           
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |392| 
        ldiu      *+fp(1),ir0           ; |392| 
        fix       f1,r1                 ; |392| 
        ldp       @CL89,DP
        fix       f0,r0                 ; |392| 
        mpyi      71,ir0                ; |392| 
        negi      r0,r0                 ; |392| 
        ldiu      @CL89,ar0             ; |392| 
        ldile     r0,r1                 ; |392| 
        sti       r1,*+ar0(ir0)         ; |392| 
	.line	214
;----------------------------------------------------------------------
; 393 | temp                                                = ceil(n/PORT[id].a
;     | ctual_baud_rate/TIME1);                                                
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      *+fp(1),ir0           ; |393| 
        mpyi      71,ir0                ; |393| 
        ldiu      @CL57,ar0             ; |393| 
        ldfu      *+ar0(ir0),f1         ; |393| 
        ldfu      *+fp(8),f0            ; |393| 
        call      DIV_F30               ; |393| 
                                        ; |393| Call Occurs
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |393| 
        ldfu      *ar0,f1               ; |393| 
        call      DIV_F30               ; |393| 
                                        ; |393| Call Occurs
        ldp       @CL86,DP
        ldiu      @CL86,r1              ; |393| 
        ldfu      f0,f2                 ; |393| 
        callu     r1                    ; far call to _ceil	; |393| 
                                        ; |393| Far Call Occurs
        stf       f0,*+fp(7)            ; |393| 
	.line	215
;----------------------------------------------------------------------
; 394 | PORT[id].TMR_Char                       = (int)temp;                   
;----------------------------------------------------------------------
        ldp       @CL31,DP
        negf      f0,f1                 ; |394| 
        ldiu      @CL31,ar0             ; |394| 
        fix       f1,r1                 ; |394| 
        fix       f0,r0                 ; |394| 
        ldiu      *+fp(1),ir0           ; |394| 
        negi      r1,r1                 ; |394| 
        mpyi      71,ir0                ; |394| 
        ldile     r1,r0                 ; |394| 
        sti       r0,*+ar0(ir0)         ; |394| 
	.line	216
;----------------------------------------------------------------------
; 395 | PORT[id].IGNORE_RX                  = FALSE;                           
;----------------------------------------------------------------------
        ldp       @CL90,DP
        ldiu      @CL90,ar0             ; |395| 
        ldiu      *+fp(1),ir0           ; |395| 
        mpyi      71,ir0                ; |395| 
        ldiu      0,r0                  ; |395| 
        sti       r0,*+ar0(ir0)         ; |395| 
	.line	217
;----------------------------------------------------------------------
; 396 | PORT[id].BUSY                           = FALSE;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |396| 
        ldp       @CL91,DP
        mpyi      71,ir0                ; |396| 
        ldiu      @CL91,ar0             ; |396| 
        sti       r0,*+ar0(ir0)         ; |396| 
	.line	218
;----------------------------------------------------------------------
; 397 | PORT[id].broadcast                      = FALSE;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |397| 
        ldp       @CL92,DP
        mpyi      71,ir0                ; |397| 
        ldiu      @CL92,ar0             ; |397| 
        sti       r0,*+ar0(ir0)         ; |397| 
	.line	219
;----------------------------------------------------------------------
; 398 | PORT[id].FLAG1                          = FALSE;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |398| 
        ldp       @CL18,DP
        mpyi      71,ir0                ; |398| 
        ldiu      @CL18,ar0             ; |398| 
        sti       r0,*+ar0(ir0)         ; |398| 
	.line	220
;----------------------------------------------------------------------
; 399 | PORT[id].FLAG2                          = FALSE;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |399| 
        ldp       @CL19,DP
        mpyi      71,ir0                ; |399| 
        ldiu      @CL19,ar0             ; |399| 
        sti       r0,*+ar0(ir0)         ; |399| 
	.line	221
;----------------------------------------------------------------------
; 400 | PORT[id].FLAG3                          = FALSE;                       
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |400| 
        ldiu      *+fp(1),ir0           ; |400| 
        mpyi      71,ir0                ; |400| 
        sti       r0,*+ar0(ir0)         ; |400| 
	.line	222
;----------------------------------------------------------------------
; 401 | PORT[id].func                           = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |401| 
        ldp       @CL93,DP
        mpyi      71,ir0                ; |401| 
        ldiu      @CL93,ar0             ; |401| 
        sti       r0,*+ar0(ir0)         ; |401| 
	.line	223
;----------------------------------------------------------------------
; 402 | PORT[id].i                                      = 0;                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      *+fp(1),ir0           ; |402| 
        ldiu      @CL33,ar0             ; |402| 
        mpyi      71,ir0                ; |402| 
        sti       r0,*+ar0(ir0)         ; |402| 
	.line	224
;----------------------------------------------------------------------
; 403 | PORT[id].i_main                         = 0;                           
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |403| 
        ldiu      *+fp(1),ir0           ; |403| 
        mpyi      71,ir0                ; |403| 
        sti       r0,*+ar0(ir0)         ; |403| 
	.line	225
;----------------------------------------------------------------------
; 404 | PORT[id].STAT                           = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |404| 
        ldp       @CL13,DP
        mpyi      71,ir0                ; |404| 
        ldiu      @CL13,ar0             ; |404| 
        sti       r0,*+ar0(ir0)         ; |404| 
	.line	226
;----------------------------------------------------------------------
; 405 | PORT[id].DAT                            = 0;                           
;----------------------------------------------------------------------
        ldp       @CL94,DP
        ldiu      *+fp(1),ir0           ; |405| 
        ldiu      @CL94,ar0             ; |405| 
        mpyi      71,ir0                ; |405| 
        sti       r0,*+ar0(ir0)         ; |405| 
	.line	227
;----------------------------------------------------------------------
; 406 | PORT[id].pvector                        = NULL_PTR;                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |406| 
        ldp       @CL35,DP
        mpyi      71,ir0                ; |406| 
        ldiu      @CL35,ar0             ; |406| 
        sti       r0,*+ar0(ir0)         ; |406| 
	.line	228
;----------------------------------------------------------------------
; 407 | PORT[id].pvector_main           = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |407| 
        ldiu      *+fp(1),ir0           ; |407| 
        mpyi      71,ir0                ; |407| 
        sti       r0,*+ar0(ir0)         ; |407| 
	.line	229
;----------------------------------------------------------------------
; 408 | PORT[id].tvector                        = NULL_PTR;                    
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |408| 
        ldiu      *+fp(1),ir0           ; |408| 
        mpyi      71,ir0                ; |408| 
        sti       r0,*+ar0(ir0)         ; |408| 
	.line	230
;----------------------------------------------------------------------
; 409 | PORT[id].tvector_main           = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      *+fp(1),ir0           ; |409| 
        ldiu      @CL38,ar0             ; |409| 
        mpyi      71,ir0                ; |409| 
        sti       r0,*+ar0(ir0)         ; |409| 
	.line	231
;----------------------------------------------------------------------
; 410 | PORT[id].fvector                        = NULL_PTR;                    
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |410| 
        ldiu      @CL95,ar0             ; |410| 
        mpyi      71,ir0                ; |410| 
        sti       r0,*+ar0(ir0)         ; |410| 
	.line	232
;----------------------------------------------------------------------
; 411 | PORT[id].nr                             = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |411| 
        ldp       @CL96,DP
        mpyi      71,ir0                ; |411| 
        ldiu      @CL96,ar0             ; |411| 
        sti       r0,*+ar0(ir0)         ; |411| 
	.line	233
;----------------------------------------------------------------------
; 412 | ENABLE_INT0;                                                           
;----------------------------------------------------------------------
	or		0001h, IE
	.line	234
;----------------------------------------------------------------------
; 413 | ENABLE_EXTINT0;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL45,DP
        ldiu      @CL45,ar0             ; |413| 
        ldiu      1,r0                  ; |413| 
        or3       r0,*ar0,r0            ; |413| 
        sti       r0,*ar0               ; |413| 
	pop		ST			
	.line	235
;----------------------------------------------------------------------
; 414 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L86:        
	.line	236
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |415| 
        ldiu      *fp,fp                ; |415| 
                                        ; Unallocate the Frame
        subi      11,sp                 ; |415| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	415,000000000h,9


	.sect	 "initialization"

	.global	_Set_Baud
	.sym	_Set_Baud,_Set_Baud,36,2,0
	.func	430
;******************************************************************************
;* FUNCTION NAME: _Set_Baud                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Set_Baud:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
;* r2    assigned to _div
	.sym	_div,2,4,17,32
	.sym	_id,1,4,1,32
	.sym	_div,2,4,1,32
	.sym	_temp1,3,12,1,32
	.line	1
;----------------------------------------------------------------------
; 430 | int Set_Baud(int id, int div)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 432 | unsigned char temp1; /* temporary variable */                          
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |431| 
        sti       ar2,*+fp(1)           ; |431| 
	.line	5
;----------------------------------------------------------------------
; 434 | if (div>65535)                                                         
;----------------------------------------------------------------------
        ldp       @CL97,DP
        ldiu      r2,r0
        cmpi      @CL97,r0              ; |434| 
        ble       L90                   ; |434| 
;*      Branch Occurs to L90            ; |434| 
	.line	6
;----------------------------------------------------------------------
; 435 | return UART_ERROR_BAUD;                                                
;----------------------------------------------------------------------
        bud       L93                   ; |435| 
	nop
	nop
        ldiu      -14,r0                ; |435| 
;*      Branch Occurs to L93            ; |435| 
L90:        
	.line	8
;----------------------------------------------------------------------
; 437 | if (div<=0)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |437| 
        cmpi      0,r0                  ; |437| 
        bgt       L92                   ; |437| 
;*      Branch Occurs to L92            ; |437| 
	.line	9
;----------------------------------------------------------------------
; 438 | return UART_ERROR_BAUD;                                                
;----------------------------------------------------------------------
        bud       L93                   ; |438| 
	nop
	nop
        ldiu      -14,r0                ; |438| 
;*      Branch Occurs to L93            ; |438| 
L92:        
	.line	11
;----------------------------------------------------------------------
; 440 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	12
;----------------------------------------------------------------------
; 441 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	13
;----------------------------------------------------------------------
; 442 | temp1                   = UART[id][LCR];                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |442| 
        ldp       @CL47,DP
        ash       4,ir0                 ; |442| 
        ldiu      @CL47,ar0             ; |442| 
        ldiu      *+ar0(ir0),r0         ; |442| 
        sti       r0,*+fp(3)            ; |442| 
	.line	14
;----------------------------------------------------------------------
; 443 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	15
;----------------------------------------------------------------------
; 444 | UART[id][LCR]   = 0x80;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |444| 
        ldiu      @CL47,ar0             ; |444| 
        ash       4,ir0                 ; |444| 
        ldiu      128,r0                ; |444| 
        sti       r0,*+ar0(ir0)         ; |444| 
	.line	16
;----------------------------------------------------------------------
; 445 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	17
;----------------------------------------------------------------------
; 446 | UART[id][DLL]   = (unsigned char)div;                                  
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      *+fp(1),ir0           ; |446| 
        ldiu      @CL27,ar0             ; |446| 
        ash       4,ir0                 ; |446| 
        ldiu      *+fp(2),r0            ; |446| 
        sti       r0,*+ar0(ir0)         ; |446| 
	.line	18
;----------------------------------------------------------------------
; 447 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	19
;----------------------------------------------------------------------
; 448 | UART[id][DLM]   = (unsigned char)(div>>8);                             
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |448| 
        ldiu      @CL17,ar0             ; |448| 
        ldiu      *+fp(2),r0            ; |448| 
        ash       4,ir0                 ; |448| 
        ash       -8,r0                 ; |448| 
        sti       r0,*+ar0(ir0)         ; |448| 
	.line	20
;----------------------------------------------------------------------
; 449 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	21
;----------------------------------------------------------------------
; 450 | UART[id][LCR]   = temp1;                                               
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      *+fp(1),ir0           ; |450| 
        ash       4,ir0                 ; |450| 
        ldiu      @CL47,ar0             ; |450| 
        ldiu      *+fp(3),r0            ; |450| 
        sti       r0,*+ar0(ir0)         ; |450| 
	.line	22
;----------------------------------------------------------------------
; 451 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L93:        
	.line	23
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |452| 
        ldiu      *fp,fp                ; |452| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |452| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	452,000000000h,3


	.sect	 "interrupt_routines"

	.global	_Process_UINT
	.sym	_Process_UINT,_Process_UINT,32,2,0
	.func	466
;******************************************************************************
;* FUNCTION NAME: _Process_UINT                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ir0,ir1,st                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 0 SOE = 8 words          *
;******************************************************************************
_Process_UINT:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_MODEMstatus,4,14,1,32
	.sym	_LINEstatus,5,14,1,32
	.sym	_INTstatus,6,14,1,32
	.line	1
;----------------------------------------------------------------------
; 466 | void Process_UINT(int id)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 468 | int i;                                                                 
; 469 | int j;                                                                 
; 470 | unsigned int MODEMstatus;                                              
; 471 | unsigned int LINEstatus;                                               
; 472 | unsigned int INTstatus;                                                
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |467| 
	.line	9
;----------------------------------------------------------------------
; 474 | if (SA && ((id<0) || (id>=2)))          /* SA ports 0, 1 allowed */    
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |474| 
        ldiu      *ar0,r0               ; |474| 
        cmpi      0,r0                  ; |474| 
        beq       L100                  ; |474| 
;*      Branch Occurs to L100           ; |474| 
        ldiu      ar2,r0
        cmpi      0,r0                  ; |474| 
        blt       L148                  ; |474| 
;*      Branch Occurs to L148           ; |474| 
        cmpi      2,r0                  ; |474| 
        blt       L100                  ; |474| 
;*      Branch Occurs to L100           ; |474| 
        bu        L148                  ; |474| 
;*      Branch Occurs to L148           ; |474| 
	.line	10
;----------------------------------------------------------------------
; 475 | return;                                                                
;----------------------------------------------------------------------
L100:        
	.line	11
;----------------------------------------------------------------------
; 476 | else if ((id<0) || (id>=UART_MAX))  /* EEA maximum UART ports allowed *
;     | /                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |476| 
        cmpi      0,r0                  ; |476| 
        blt       L148                  ; |476| 
;*      Branch Occurs to L148           ; |476| 
        cmpi      8,r0                  ; |476| 
        blt       L104                  ; |476| 
;*      Branch Occurs to L104           ; |476| 
        bu        L148                  ; |476| 
;*      Branch Occurs to L148           ; |476| 
	.line	12
;----------------------------------------------------------------------
; 477 | return;                                                                
;----------------------------------------------------------------------
L104:        
	.line	14
;----------------------------------------------------------------------
; 479 | if (!PORT[id].PRESENT)                          /* return if port is no
;     | t present */                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |479| 
        ldp       @CL41,DP
        mpyi      71,ir0                ; |479| 
        ldiu      @CL41,ar0             ; |479| 
        ldiu      *+ar0(ir0),r0         ; |479| 
        cmpi      0,r0                  ; |479| 
        beq       L148                  ; |479| 
;*      Branch Occurs to L148           ; |479| 
	.line	15
;----------------------------------------------------------------------
; 480 | return;                                                                
; 482 | while(TRUE)                                                            
;----------------------------------------------------------------------
L106:        
	.line	19
;----------------------------------------------------------------------
; 484 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	20
;----------------------------------------------------------------------
; 485 | INTstatus = UART[id][ISR] & 0x0F;                                      
; 487 | switch(INTstatus)                                                      
; 489 |         case 0x02:      /* THR interrupt */                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |485| 
        ldp       @CL14,DP
        ash       4,ir0                 ; |485| 
        ldiu      @CL14,ar0             ; |485| 
        ldiu      15,r0                 ; |485| 
        and3      r0,*+ar0(ir0),r0      ; |485| 
        sti       r0,*+fp(6)            ; |485| 
        bu        L141                  ; |465| 
;*      Branch Occurs to L141           ; |465| 
L107:        
	.line	26
;----------------------------------------------------------------------
; 491 | if      (PORT[id].TX_complete)                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |491| 
        ldp       @CL39,DP
        mpyi      71,ir0                ; |491| 
        ldiu      @CL39,ar0             ; |491| 
        ldiu      *+ar0(ir0),r0         ; |491| 
        cmpi      0,r0                  ; |491| 
        bne       L106                  ; |491| 
;*      Branch Occurs to L106           ; |491| 
	.line	27
;----------------------------------------------------------------------
; 492 | break;                                                                 
;----------------------------------------------------------------------
	.line	29
;----------------------------------------------------------------------
; 494 | if (TXbuf[id].n<=0)                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |494| 
        ldp       @CL98,DP
        mpyi      307,ir0               ; |494| 
        ldiu      @CL98,ar0             ; |494| 
        ldiu      *+ar0(ir0),r0         ; |494| 
        cmpi      0,r0                  ; |494| 
        bgt       L110                  ; |494| 
;*      Branch Occurs to L110           ; |494| 
	.line	31
;----------------------------------------------------------------------
; 496 | TIMER1_COUNTER[id]   = 1;                                              
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      *+fp(1),ir0           ; |496| 
        ldiu      @CL30,ar0             ; |496| 
        ldiu      1,r0                  ; |496| 
        sti       r0,*+ar0(ir0)         ; |496| 
	.line	32
;----------------------------------------------------------------------
; 497 | PORT[id].TMR_enabled = TRUE;    /* enable suffix timer */              
; 499 | else                                                                   
; 501 | if (FIFOSIZE) //if FIFOSIZE != 0                                       
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |497| 
        ldiu      @CL25,ar0             ; |497| 
        mpyi      71,ir0                ; |497| 
        sti       r0,*+ar0(ir0)         ; |497| 
        bu        L106                  ; |465| 
;*      Branch Occurs to L106           ; |465| 
L110:        
	.line	38
;----------------------------------------------------------------------
; 503 | for (i=0;i<FIFOSIZE-1;i++)                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |503| 
        sti       r0,*+fp(2)            ; |503| 
        cmpi      15,r0                 ; |503| 
        bge       L106                  ; |503| 
;*      Branch Occurs to L106           ; |503| 
L111:        
	.line	40
;----------------------------------------------------------------------
; 505 | if (TXbuf[id].n>0)                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |505| 
        ldp       @CL98,DP
        mpyi      307,ir0               ; |505| 
        ldiu      @CL98,ar0             ; |505| 
        ldiu      *+ar0(ir0),r0         ; |505| 
        cmpi      0,r0                  ; |505| 
        ble       L106                  ; |505| 
;*      Branch Occurs to L106           ; |505| 
	.line	42
;----------------------------------------------------------------------
; 507 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	43
;----------------------------------------------------------------------
; 508 | UART[id][THR] = Get(&TXbuf[id]);                                       
; 510 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |508| 
        ldp       @CL64,DP
        mpyi      307,ar2               ; |508| 
        addi      @CL64,ar2             ; |508| Unsigned
        ldp       @CL99,DP
        ldiu      @CL99,r0              ; |508| 
        callu     r0                    ; far call to _Get	; |508| 
                                        ; |508| Far Call Occurs
        ldp       @CL27,DP
        ldiu      *+fp(1),ir0           ; |508| 
        ldiu      @CL27,ar0             ; |508| 
        ash       4,ir0                 ; |508| 
        sti       r0,*+ar0(ir0)         ; |508| 
        bu        L114                  ; |465| 
;*      Branch Occurs to L114           ; |465| 
	.line	46
;----------------------------------------------------------------------
; 511 | break;                                                                 
; 514 | else                                                                   
;----------------------------------------------------------------------
L114:        
	.line	38
        ldiu      1,r0                  ; |503| 
        addi      *+fp(2),r0            ; |503| 
        sti       r0,*+fp(2)            ; |503| 
        cmpi      15,r0                 ; |503| 
        blt       L111                  ; |503| 
;*      Branch Occurs to L111           ; |503| 
        bu        L106                  ; |465| 
;*      Branch Occurs to L106           ; |465| 
	.line	51
;----------------------------------------------------------------------
; 516 | NOPS;                                                                  
;----------------------------------------------------------------------
	.line	52
;----------------------------------------------------------------------
; 517 | UART[id][THR] = Get(&TXbuf[id]);                                       
;----------------------------------------------------------------------
	.line	55
;----------------------------------------------------------------------
; 520 | break;                                                                 
; 522 | case 0x04:  /* RHR interrupt */                                        
; 523 | case 0x0C:      /* RX TIMEOUT interrupt */                             
;----------------------------------------------------------------------
L117:        
	.line	60
;----------------------------------------------------------------------
; 525 | if ((RXbuf[id].locked) || (UART[id][MSR]&0x80==0x00))   /* !Carrier Det
;     | ect */                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |525| 
        ldp       @CL11,DP
        mpyi      307,ir0               ; |525| 
        ldiu      @CL11,ar0             ; |525| 
        ldiu      *+ar0(ir0),r0         ; |525| 
        cmpi      0,r0                  ; |525| 
        bne       L119                  ; |525| 
;*      Branch Occurs to L119           ; |525| 
        ldiu      0,r1                  ; |525| 
        cmpi      0,r1                  ; |525| 
        ldp       @CL100,DP
        beq       L120                  ; |525| 
;*      Branch Occurs to L120           ; |525| 
L119:        
	.line	62
;----------------------------------------------------------------------
; 527 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	63
;----------------------------------------------------------------------
; 528 | UART[id][FCR] = 0x07;
;     |          /* clear FIFOS */                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |528| 
        ldp       @CL14,DP
        ash       4,ir0                 ; |528| 
        ldiu      @CL14,ar0             ; |528| 
        ldiu      7,r0                  ; |528| 
        sti       r0,*+ar0(ir0)         ; |528| 
	.line	65
;----------------------------------------------------------------------
; 530 | break;                                                                 
; 533 | while(TRUE)                                                            
;----------------------------------------------------------------------
        bu        L106                  ; |530| 
;*      Branch Occurs to L106           ; |530| 
L120:        
	.line	70
;----------------------------------------------------------------------
; 535 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	71
;----------------------------------------------------------------------
; 536 | LINEstatus = (UART[id][LSR] & 0xFF);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |536| 
        ldp       @CL101,DP
        ash       4,ir0                 ; |536| 
        ldiu      @CL101,ar0            ; |536| 
        ldiu      255,r0                ; |536| 
        and3      r0,*+ar0(ir0),r0      ; |536| 
        sti       r0,*+fp(5)            ; |536| 
	.line	73
;----------------------------------------------------------------------
; 538 | if (!(LINEstatus & 0x01))               /* no data in receive FIFO */  
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |538| 
        tstb      *+fp(5),r0            ; |538| 
        beq       L106                  ; |538| 
;*      Branch Occurs to L106           ; |538| 
	.line	74
;----------------------------------------------------------------------
; 539 | break;                                                                 
;----------------------------------------------------------------------
	.line	76
;----------------------------------------------------------------------
; 541 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	77
;----------------------------------------------------------------------
; 542 | PORT[id].DAT     = UART[id][RHR] & 0xFF;                               
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      *+fp(1),ir0           ; |542| 
        ldiu      255,r0                ; |542| 
        ldiu      @CL27,ar0             ; |542| 
        ash       4,ir0                 ; |542| 
        ldp       @CL94,DP
        and3      r0,*+ar0(ir0),r0      ; |542| 
        ldiu      @CL94,ar1             ; |542| 
        ldiu      *+fp(1),ir0           ; |542| 
        mpyi      71,ir0                ; |542| 
        sti       r0,*+ar1(ir0)         ; |542| 
	.line	78
;----------------------------------------------------------------------
; 543 | PORT[id].DAT    |= (LINEstatus<<8) | (TIMER1_COUNTER[2]<<16); //???    
;----------------------------------------------------------------------
        ldiu      16,r1                 ; |543| 
        ldp       @CL103,DP
        ldiu      *+fp(1),ar0           ; |543| 
        ldiu      @CL103,ar1            ; |543| 
        mpyi      71,ar0                ; |543| 
        ldp       @CL102,DP
        ldiu      *+fp(5),r0            ; |543| 
        addi      @CL102,ar0            ; |543| Unsigned
        ash3      r1,*ar1,r1            ; |543| 
        ash       8,r0                  ; |543| 
        or        *+ar0(8),r0           ; |543| 
        or3       r0,r1,r0              ; |543| 
        sti       r0,*+ar0(8)           ; |543| 
	.line	79
;----------------------------------------------------------------------
; 544 | PORT[id].STAT       |= LINEstatus & 0x9E;                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |544| 
        mpyi      71,ar0                ; |544| 
        ldiu      158,r0                ; |544| 
        addi      @CL102,ar0            ; |544| Unsigned
        and       *+fp(5),r0            ; |544| 
        or        *+ar0(7),r0           ; |544| 
        sti       r0,*+ar0(7)           ; |544| 
	.line	81
;----------------------------------------------------------------------
; 546 | if (!PORT[id].IGNORE_RX)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |546| 
        ldp       @CL90,DP
        mpyi      71,ir0                ; |546| 
        ldiu      @CL90,ar0             ; |546| 
        ldiu      *+ar0(ir0),r0         ; |546| 
        cmpi      0,r0                  ; |546| 
        bne       L120                  ; |546| 
;*      Branch Occurs to L120           ; |546| 
	.line	83
;----------------------------------------------------------------------
; 548 | TIMER1_COUNTER[id] = PORT[id].TMR_Network_WDOG + PORT[id].TMR_Char;    
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      *+fp(1),ir0           ; |548| 
        ldiu      @CL31,ar1             ; |548| 
        ldiu      ir0,r0                ; |548| 
        ldp       @CL32,DP
        ldiu      ir0,ir1               ; |548| 
        ldiu      @CL32,ar2             ; |548| 
        mpyi      71,ir1                ; |548| 
        mpyi      71,ir0                ; |548| 
        ldp       @CL30,DP
        addi3     *+ar1(ir0),*+ar2(ir1),r1 ; |548| 
        ldiu      @CL30,ar0             ; |548| 
        ldiu      r0,ir0                ; |548| 
        sti       r1,*+ar0(ir0)         ; |548| 
	.line	85
;----------------------------------------------------------------------
; 550 | Put(&RXbuf[id], PORT[id].DAT, 1);                                      
;----------------------------------------------------------------------
        ldp       @CL94,DP
        ldiu      @CL94,ar0             ; |550| 
        ldiu      *+fp(1),ar2           ; |550| 
        ldp       @CL104,DP
        ldiu      ar2,ir0               ; |550| 
        ldiu      @CL104,r0             ; |550| 
        mpyi      71,ir0                ; |550| 
        ldp       @CL15,DP
        mpyi      307,ar2               ; |550| 
        ldiu      *+ar0(ir0),r2         ; |550| 
        addi      @CL15,ar2             ; |550| Unsigned
        ldiu      1,r3                  ; |550| 
        callu     r0                    ; far call to _Put	; |550| 
                                        ; |550| Far Call Occurs
	.line	87
;----------------------------------------------------------------------
; 552 | if (LINEstatus & 0x9E)                                                 
;----------------------------------------------------------------------
        ldiu      158,r0                ; |552| 
        tstb      *+fp(5),r0            ; |552| 
        beq       L124                  ; |552| 
;*      Branch Occurs to L124           ; |552| 
	.line	88
;----------------------------------------------------------------------
; 553 | PORT[id].ERROR_COUNT++;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |553| 
        ldp       @CL102,DP
        mpyi      71,ar0                ; |553| 
        addi      @CL102,ar0            ; |553| Unsigned
        ldiu      1,r0                  ; |553| 
        addi      *+ar0(53),r0          ; |553| Unsigned
        sti       r0,*+ar0(53)          ; |553| 
L124:        
	.line	90
;----------------------------------------------------------------------
; 555 | if (RXbuf[id].n>0)                                                     
; 557 |             switch(id)                                                 
; 559 |                     case 0:                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |555| 
        ldp       @CL105,DP
        mpyi      307,ir0               ; |555| 
        ldiu      @CL105,ar0            ; |555| 
        ldiu      *+ar0(ir0),r0         ; |555| 
        cmpi      0,r0                  ; |555| 
        ble       L120                  ; |555| 
;*      Branch Occurs to L120           ; |555| 
        bu        L135                  ; |465| 
;*      Branch Occurs to L135           ; |465| 
L126:        
	.line	96
;----------------------------------------------------------------------
; 561 | vect_p0 = PORT[0].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar1             ; |561| 
        ldp       @CL106,DP
        ldiu      @CL106,ar0            ; |561| 
        ldiu      *ar1,r0               ; |561| 
        sti       r0,*ar0               ; |561| 
	.line	98
;----------------------------------------------------------------------
; 563 | asm("           .global _vect_p0  ");                                  
;----------------------------------------------------------------------
		.global _vect_p0  
	.line	99
;----------------------------------------------------------------------
; 564 | PUSH_ALL;                                                              
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
	.line	100
;----------------------------------------------------------------------
; 565 | asm("   ldi             0, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		0, AR2 		  
	.line	101
;----------------------------------------------------------------------
; 566 | asm("       ldp             _vect_p0      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p0      
	.line	102
;----------------------------------------------------------------------
; 567 | asm("       ldi             @_vect_p0, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p0, R0 
	.line	103
;----------------------------------------------------------------------
; 568 | asm("       callnz  R0                        ");   /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	  
	.line	104
;----------------------------------------------------------------------
; 569 | POP_ALL;                                                               
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
	.line	106
;----------------------------------------------------------------------
; 571 | break;                                                                 
; 573 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |571| 
;*      Branch Occurs to L120           ; |571| 
L127:        
	.line	110
;----------------------------------------------------------------------
; 575 | vect_p1 = PORT[1].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL108,DP
        ldiu      @CL108,ar1            ; |575| 
        ldp       @CL107,DP
        ldiu      @CL107,ar0            ; |575| 
        ldiu      *ar1,r0               ; |575| 
        sti       r0,*ar0               ; |575| 
	.line	112
;----------------------------------------------------------------------
; 577 | asm("           .global _vect_p1  ");                                  
;----------------------------------------------------------------------
		.global _vect_p1  
	.line	113
;----------------------------------------------------------------------
; 578 | PUSH_ALL;                                                              
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
	.line	114
;----------------------------------------------------------------------
; 579 | asm("   ldi             1, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		1, AR2 		  
	.line	115
;----------------------------------------------------------------------
; 580 | asm("       ldp             _vect_p1      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p1      
	.line	116
;----------------------------------------------------------------------
; 581 | asm("       ldi             @_vect_p1, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p1, R0 
	.line	117
;----------------------------------------------------------------------
; 582 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	118
;----------------------------------------------------------------------
; 583 | POP_ALL;                                                               
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
	.line	120
;----------------------------------------------------------------------
; 585 | break;                                                                 
; 587 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |585| 
;*      Branch Occurs to L120           ; |585| 
L128:        
	.line	124
;----------------------------------------------------------------------
; 589 | vect_p2 = PORT[2].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL110,DP
        ldiu      @CL110,ar1            ; |589| 
        ldp       @CL109,DP
        ldiu      @CL109,ar0            ; |589| 
        ldiu      *ar1,r0               ; |589| 
        sti       r0,*ar0               ; |589| 
	.line	126
;----------------------------------------------------------------------
; 591 | asm("           .global _vect_p2  ");                                  
;----------------------------------------------------------------------
		.global _vect_p2  
	.line	127
;----------------------------------------------------------------------
; 592 | PUSH_ALL;                                                              
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
	.line	128
;----------------------------------------------------------------------
; 593 | asm("   ldi             2, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		2, AR2 		  
	.line	129
;----------------------------------------------------------------------
; 594 | asm("       ldp             _vect_p2      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p2      
	.line	130
;----------------------------------------------------------------------
; 595 | asm("       ldi             @_vect_p2, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p2, R0 
	.line	131
;----------------------------------------------------------------------
; 596 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	132
;----------------------------------------------------------------------
; 597 | POP_ALL;                                                               
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
	.line	134
;----------------------------------------------------------------------
; 599 | break;                                                                 
; 601 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |599| 
;*      Branch Occurs to L120           ; |599| 
L129:        
	.line	138
;----------------------------------------------------------------------
; 603 | vect_p3 = PORT[3].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL112,DP
        ldiu      @CL112,ar1            ; |603| 
        ldp       @CL111,DP
        ldiu      @CL111,ar0            ; |603| 
        ldiu      *ar1,r0               ; |603| 
        sti       r0,*ar0               ; |603| 
	.line	140
;----------------------------------------------------------------------
; 605 | asm("           .global _vect_p3  ");                                  
;----------------------------------------------------------------------
		.global _vect_p3  
	.line	141
;----------------------------------------------------------------------
; 606 | PUSH_ALL;                                                              
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
	.line	142
;----------------------------------------------------------------------
; 607 | asm("   ldi             3, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		3, AR2 		  
	.line	143
;----------------------------------------------------------------------
; 608 | asm("       ldp             _vect_p3      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p3      
	.line	144
;----------------------------------------------------------------------
; 609 | asm("       ldi             @_vect_p3, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p3, R0 
	.line	145
;----------------------------------------------------------------------
; 610 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	146
;----------------------------------------------------------------------
; 611 | POP_ALL;                                                               
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
	.line	148
;----------------------------------------------------------------------
; 613 | break;                                                                 
; 615 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |613| 
;*      Branch Occurs to L120           ; |613| 
L130:        
	.line	152
;----------------------------------------------------------------------
; 617 | vect_p4 = PORT[4].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL114,DP
        ldiu      @CL114,ar1            ; |617| 
        ldp       @CL113,DP
        ldiu      @CL113,ar0            ; |617| 
        ldiu      *ar1,r0               ; |617| 
        sti       r0,*ar0               ; |617| 
	.line	154
;----------------------------------------------------------------------
; 619 | asm("           .global _vect_p4  ");                                  
;----------------------------------------------------------------------
		.global _vect_p4  
	.line	155
;----------------------------------------------------------------------
; 620 | PUSH_ALL;                                                              
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
	.line	156
;----------------------------------------------------------------------
; 621 | asm("   ldi             4, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		4, AR2 		  
	.line	157
;----------------------------------------------------------------------
; 622 | asm("       ldp             _vect_p4      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p4      
	.line	158
;----------------------------------------------------------------------
; 623 | asm("       ldi             @_vect_p4, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p4, R0 
	.line	159
;----------------------------------------------------------------------
; 624 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	160
;----------------------------------------------------------------------
; 625 | POP_ALL;                                                               
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
	.line	162
;----------------------------------------------------------------------
; 627 | break;                                                                 
; 629 | case 5:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |627| 
;*      Branch Occurs to L120           ; |627| 
L131:        
	.line	166
;----------------------------------------------------------------------
; 631 | vect_p5 = PORT[5].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL116,DP
        ldiu      @CL116,ar1            ; |631| 
        ldp       @CL115,DP
        ldiu      @CL115,ar0            ; |631| 
        ldiu      *ar1,r0               ; |631| 
        sti       r0,*ar0               ; |631| 
	.line	168
;----------------------------------------------------------------------
; 633 | asm("           .global _vect_p5  ");                                  
;----------------------------------------------------------------------
		.global _vect_p5  
	.line	169
;----------------------------------------------------------------------
; 634 | PUSH_ALL;                                                              
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
	.line	170
;----------------------------------------------------------------------
; 635 | asm("   ldi             5, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		5, AR2 		  
	.line	171
;----------------------------------------------------------------------
; 636 | asm("       ldp             _vect_p5      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p5      
	.line	172
;----------------------------------------------------------------------
; 637 | asm("       ldi             @_vect_p5, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p5, R0 
	.line	173
;----------------------------------------------------------------------
; 638 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	174
;----------------------------------------------------------------------
; 639 | POP_ALL;                                                               
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
	.line	176
;----------------------------------------------------------------------
; 641 | break;                                                                 
; 643 | case 6:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |641| 
;*      Branch Occurs to L120           ; |641| 
L132:        
	.line	180
;----------------------------------------------------------------------
; 645 | vect_p6 = PORT[6].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL118,DP
        ldiu      @CL118,ar1            ; |645| 
        ldp       @CL117,DP
        ldiu      @CL117,ar0            ; |645| 
        ldiu      *ar1,r0               ; |645| 
        sti       r0,*ar0               ; |645| 
	.line	182
;----------------------------------------------------------------------
; 647 | asm("           .global _vect_p6  ");                                  
;----------------------------------------------------------------------
		.global _vect_p6  
	.line	183
;----------------------------------------------------------------------
; 648 | PUSH_ALL;                                                              
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
	.line	184
;----------------------------------------------------------------------
; 649 | asm("   ldi             6, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		6, AR2 		  
	.line	185
;----------------------------------------------------------------------
; 650 | asm("       ldp             _vect_p6      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p6      
	.line	186
;----------------------------------------------------------------------
; 651 | asm("       ldi             @_vect_p6, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p6, R0 
	.line	187
;----------------------------------------------------------------------
; 652 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	188
;----------------------------------------------------------------------
; 653 | POP_ALL;                                                               
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
	.line	190
;----------------------------------------------------------------------
; 655 | break;                                                                 
; 657 | case 7:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |655| 
;*      Branch Occurs to L120           ; |655| 
L133:        
	.line	194
;----------------------------------------------------------------------
; 659 | vect_p7 = PORT[7].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL120,DP
        ldiu      @CL120,ar1            ; |659| 
        ldp       @CL119,DP
        ldiu      @CL119,ar0            ; |659| 
        ldiu      *ar1,r0               ; |659| 
        sti       r0,*ar0               ; |659| 
	.line	196
;----------------------------------------------------------------------
; 661 | asm("           .global _vect_p7  ");                                  
;----------------------------------------------------------------------
		.global _vect_p7  
	.line	197
;----------------------------------------------------------------------
; 662 | PUSH_ALL;                                                              
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
	.line	198
;----------------------------------------------------------------------
; 663 | asm("   ldi             7, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		7, AR2 		  
	.line	199
;----------------------------------------------------------------------
; 664 | asm("       ldp             _vect_p7      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p7      
	.line	200
;----------------------------------------------------------------------
; 665 | asm("       ldi             @_vect_p7, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p7, R0 
	.line	201
;----------------------------------------------------------------------
; 666 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	202
;----------------------------------------------------------------------
; 667 | POP_ALL;                                                               
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
	.line	204
;----------------------------------------------------------------------
; 669 | break;                                                                 
;----------------------------------------------------------------------
        bu        L120                  ; |669| 
;*      Branch Occurs to L120           ; |669| 
L135:        
	.line	92
        ldiu      *+fp(1),ir0           ; |557| 
        cmpi      7,ir0                 ; |557| 
        bhi       L120                  ; |557| 
;*      Branch Occurs to L120           ; |557| 
        ldp       @CL121,DP
        ldiu      @CL121,ar0            ; |557| 
        ldiu      *+ar0(ir0),r0         ; |557| 
        bu        r0                    ; |557| 

	.sect	".text"
SW0:	.word	L126	; 0
	.word	L127	; 1
	.word	L128	; 2
	.word	L129	; 3
	.word	L130	; 4
	.word	L131	; 5
	.word	L132	; 6
	.word	L133	; 7
	.sect	"interrupt_routines"
;*      Branch Occurs to r0             ; |557| 
	.line	209
	.line	211
;----------------------------------------------------------------------
; 676 | break;                                                                 
; 678 | case 0x06:  /* LSR interrupt */                                        
;----------------------------------------------------------------------
L138:        
	.line	215
;----------------------------------------------------------------------
; 680 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	216
;----------------------------------------------------------------------
; 681 | LINEstatus              = (UART[id][LSR] & 0xFF);                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |681| 
        ldp       @CL101,DP
        ash       4,ir0                 ; |681| 
        ldiu      @CL101,ar0            ; |681| 
        ldiu      255,r0                ; |681| 
        and3      r0,*+ar0(ir0),r0      ; |681| 
        sti       r0,*+fp(5)            ; |681| 
	.line	217
;----------------------------------------------------------------------
; 682 | PORT[id].STAT  |= LINEstatus & 0x9E;                                   
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(1),ar0           ; |682| 
        mpyi      71,ar0                ; |682| 
        addi      @CL102,ar0            ; |682| Unsigned
        ldiu      158,r0                ; |682| 
        and       *+fp(5),r0            ; |682| 
        or        *+ar0(7),r0           ; |682| 
        sti       r0,*+ar0(7)           ; |682| 
	.line	219
;----------------------------------------------------------------------
; 684 | break;                                                                 
; 686 | case 0x00:  /* MSR interrupt */                                        
;----------------------------------------------------------------------
        bu        L106                  ; |684| 
;*      Branch Occurs to L106           ; |684| 
L139:        
	.line	223
;----------------------------------------------------------------------
; 688 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	224
;----------------------------------------------------------------------
; 689 | MODEMstatus = UART[id][MSR] & 0xFF;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |689| 
        ldp       @CL100,DP
        ash       4,ir0                 ; |689| 
        ldiu      @CL100,ar0            ; |689| 
        ldiu      255,r0                ; |689| 
        and3      r0,*+ar0(ir0),r0      ; |689| 
        sti       r0,*+fp(4)            ; |689| 
	.line	226
;----------------------------------------------------------------------
; 691 | break;                                                                 
; 693 | default:                                                               
;----------------------------------------------------------------------
        bu        L106                  ; |691| 
;*      Branch Occurs to L106           ; |691| 
	.line	230
;----------------------------------------------------------------------
; 695 | return;                                                                
;----------------------------------------------------------------------
L141:        
	.line	22
        ldiu      *+fp(6),r0            ; |487| 
        cmpi      0,r0                  ; |487| 
        beq       L139                  ; |487| 
;*      Branch Occurs to L139           ; |487| 
        cmpi      2,r0                  ; |487| 
        beq       L107                  ; |487| 
;*      Branch Occurs to L107           ; |487| 
        cmpi      4,r0                  ; |487| 
        beq       L117                  ; |487| 
;*      Branch Occurs to L117           ; |487| 
        cmpi      6,r0                  ; |487| 
        beq       L138                  ; |487| 
;*      Branch Occurs to L138           ; |487| 
        cmpi      12,r0                 ; |487| 
        beq       L117                  ; |487| 
;*      Branch Occurs to L117           ; |487| 
        bu        L148                  ; |487| 
;*      Branch Occurs to L148           ; |487| 
	.line	233
L148:        
	.line	234
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      8,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	699,000000000h,6


	.sect	 "interrupt_routines"

	.global	_WDOG_P
	.sym	_WDOG_P,_WDOG_P,32,2,0
	.func	714
;******************************************************************************
;* FUNCTION NAME: _WDOG_P                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,ir0,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_WDOG_P:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 714 | void WDOG_P(int id)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |715| 
	.line	3
;----------------------------------------------------------------------
; 716 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 718 | if (!RXbuf[id].locked && PORT[id].TX_complete)                         
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |718| 
        ldp       @CL11,DP
        mpyi      307,ir0               ; |718| 
        ldiu      @CL11,ar0             ; |718| 
        ldiu      *+ar0(ir0),r0         ; |718| 
        cmpi      0,r0                  ; |718| 
        bne       L155                  ; |718| 
;*      Branch Occurs to L155           ; |718| 
        ldiu      ar2,ir0
        ldp       @CL39,DP
        mpyi      71,ir0                ; |718| 
        ldiu      @CL39,ar0             ; |718| 
        ldiu      *+ar0(ir0),r0         ; |718| 
        cmpi      0,r0                  ; |718| 
        beq       L155                  ; |718| 
;*      Branch Occurs to L155           ; |718| 
	.line	7
;----------------------------------------------------------------------
; 720 | if (PORT[id].RX_pending)                                               
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldp       @CL12,DP
        mpyi      71,ir0                ; |720| 
        ldiu      @CL12,ar0             ; |720| 
        ldiu      *+ar0(ir0),r0         ; |720| 
        cmpi      0,r0                  ; |720| 
        beq       L154                  ; |720| 
;*      Branch Occurs to L154           ; |720| 
	.line	8
;----------------------------------------------------------------------
; 721 | PORT[id].WDOG_COUNT++;                                                 
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldp       @CL102,DP
        mpyi      71,ar0                ; |721| 
        addi      @CL102,ar0            ; |721| Unsigned
        ldiu      1,r0                  ; |721| 
        addi      *+ar0(54),r0          ; |721| Unsigned
        sti       r0,*+ar0(54)          ; |721| 
L154:        
	.line	10
;----------------------------------------------------------------------
; 723 | RESET_PKT(id);                                                         
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      *+fp(1),ar2           ; |723| 
        ldiu      @CL40,r0              ; |723| 
        callu     r0                    ; far call to _RESET_PKT	; |723| 
                                        ; |723| Far Call Occurs
L155:        
	.line	13
;----------------------------------------------------------------------
; 726 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	14
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	727,000000000h,1


	.sect	 "interrupt_routines"

	.global	_TX_S1
	.sym	_TX_S1,_TX_S1,32,2,0
	.func	741
;******************************************************************************
;* FUNCTION NAME: _TX_S1                                                      *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,ir0,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_TX_S1:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.sym	_c,2,2,1,32
	.line	1
;----------------------------------------------------------------------
; 741 | void TX_S1(int id)                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 743 | char c; /* not used */                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |742| 
	.line	5
;----------------------------------------------------------------------
; 745 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 747 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |747| 
        ldiu      *ar0,r0               ; |747| 
        cmpi      0,r0                  ; |747| 
        bne       L166                  ; |747| 
;*      Branch Occurs to L166           ; |747| 
	.line	9
;----------------------------------------------------------------------
; 749 | if (id==4)                                                             
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      4,r0                  ; |749| 
        bne       L161                  ; |749| 
;*      Branch Occurs to L161           ; |749| 
	.line	11
;----------------------------------------------------------------------
; 751 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	12
;----------------------------------------------------------------------
; 752 | UART[id][LCR] |= 0x40;                                                 
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldp       @CL27,DP
        ash       4,ar0                 ; |752| 
        addi      @CL27,ar0             ; |752| Unsigned
        ldiu      64,r0                 ; |752| 
        or        *+ar0(3),r0           ; |752| 
        sti       r0,*+ar0(3)           ; |752| 
L161:        
	.line	15
;----------------------------------------------------------------------
; 755 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	16
;----------------------------------------------------------------------
; 756 | UART[id][MCR] &= 0xFE;                  /* disable TX */               
; 758 | else                                                                   
; 760 | switch (id)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |756| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |756| 
        addi      @CL27,ar0             ; |756| Unsigned
        ldiu      254,r0                ; |756| 
        and       *+ar0(4),r0           ; |756| 
        sti       r0,*+ar0(4)           ; |756| 
        bu        L168                  ; |740| 
;*      Branch Occurs to L168           ; |740| 
L163:        
	.line	22
;----------------------------------------------------------------------
; 762 | case 0: DISABLE_TXA; break;                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |762| 
        ldiu      8,r0                  ; |762| 
        or3       r0,*ar0,r0            ; |762| 
        sti       r0,*ar0               ; |762| 
	pop		ST			
        bu        L168                  ; |762| 
;*      Branch Occurs to L168           ; |762| 
L164:        
	.line	23
;----------------------------------------------------------------------
; 763 | case 1: DISABLE_TXB; break;                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |763| 
        ldiu      1,r0                  ; |763| 
        or3       r0,*ar0,r0            ; |763| 
        sti       r0,*ar0               ; |763| 
	pop		ST			
        bu        L168                  ; |763| 
;*      Branch Occurs to L168           ; |763| 
L166:        
	.line	20
        ldiu      *+fp(1),r0            ; |760| 
        cmpi      0,r0                  ; |760| 
        beq       L163                  ; |760| 
;*      Branch Occurs to L163           ; |760| 
        cmpi      1,r0                  ; |760| 
        beq       L164                  ; |760| 
;*      Branch Occurs to L164           ; |760| 
L168:        
	.line	27
;----------------------------------------------------------------------
; 767 | if (PORT[id].fvector)                                                  
; 769 |         switch(id)                                                     
; 771 |                 case 0:                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |767| 
        ldp       @CL95,DP
        mpyi      71,ir0                ; |767| 
        ldiu      @CL95,ar0             ; |767| 
        ldiu      *+ar0(ir0),r0         ; |767| 
        cmpi      0,r0                  ; |767| 
        beq       L181                  ; |767| 
;*      Branch Occurs to L181           ; |767| 
        bu        L179                  ; |740| 
;*      Branch Occurs to L179           ; |740| 
L170:        
	.line	33
;----------------------------------------------------------------------
; 773 | vect_p0                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |773| 
        ldiu      @CL95,ar1             ; |773| 
        ldp       @CL106,DP
        mpyi      71,ir0                ; |773| 
        ldiu      @CL106,ar0            ; |773| 
        ldiu      *+ar1(ir0),r0         ; |773| 
        sti       r0,*ar0               ; |773| 
	.line	34
;----------------------------------------------------------------------
; 774 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |774| 
        mpyi      71,ir0                ; |774| 
        ldiu      @CL95,ar0             ; |774| 
        ldiu      0,r0                  ; |774| 
        sti       r0,*+ar0(ir0)         ; |774| 
	.line	36
;----------------------------------------------------------------------
; 776 | asm("           .global _vect_p0  ");                                  
;----------------------------------------------------------------------
		.global _vect_p0  
	.line	37
;----------------------------------------------------------------------
; 777 | PUSH_ALL;                                                              
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
	.line	38
;----------------------------------------------------------------------
; 778 | asm("   ldi             0, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		0, AR2 		  
	.line	39
;----------------------------------------------------------------------
; 779 | asm("       ldp             _vect_p0      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p0      
	.line	40
;----------------------------------------------------------------------
; 780 | asm("       ldi             @_vect_p0, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p0, R0 
	.line	41
;----------------------------------------------------------------------
; 781 | asm("       callnz  R0                        ");   /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	  
	.line	42
;----------------------------------------------------------------------
; 782 | POP_ALL;                                                               
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
	.line	44
;----------------------------------------------------------------------
; 784 | break;                                                                 
; 786 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |784| 
;*      Branch Occurs to L181           ; |784| 
L171:        
	.line	48
;----------------------------------------------------------------------
; 788 | vect_p1                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |788| 
        ldiu      @CL95,ar0             ; |788| 
        ldp       @CL107,DP
        mpyi      71,ir0                ; |788| 
        ldiu      @CL107,ar1            ; |788| 
        ldiu      *+ar0(ir0),r0         ; |788| 
        sti       r0,*ar1               ; |788| 
	.line	49
;----------------------------------------------------------------------
; 789 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |789| 
        ldiu      @CL95,ar0             ; |789| 
        mpyi      71,ir0                ; |789| 
        ldiu      0,r0                  ; |789| 
        sti       r0,*+ar0(ir0)         ; |789| 
	.line	51
;----------------------------------------------------------------------
; 791 | asm("           .global _vect_p1  ");                                  
;----------------------------------------------------------------------
		.global _vect_p1  
	.line	52
;----------------------------------------------------------------------
; 792 | PUSH_ALL;                                                              
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
	.line	53
;----------------------------------------------------------------------
; 793 | asm("   ldi             1, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		1, AR2 		  
	.line	54
;----------------------------------------------------------------------
; 794 | asm("       ldp             _vect_p1      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p1      
	.line	55
;----------------------------------------------------------------------
; 795 | asm("       ldi             @_vect_p1, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p1, R0 
	.line	56
;----------------------------------------------------------------------
; 796 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	57
;----------------------------------------------------------------------
; 797 | POP_ALL;                                                               
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
	.line	59
;----------------------------------------------------------------------
; 799 | break;                                                                 
; 801 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |799| 
;*      Branch Occurs to L181           ; |799| 
L172:        
	.line	63
;----------------------------------------------------------------------
; 803 | vect_p2                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |803| 
        ldiu      @CL95,ar1             ; |803| 
        ldp       @CL109,DP
        mpyi      71,ir0                ; |803| 
        ldiu      @CL109,ar0            ; |803| 
        ldiu      *+ar1(ir0),r0         ; |803| 
        sti       r0,*ar0               ; |803| 
	.line	64
;----------------------------------------------------------------------
; 804 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |804| 
        mpyi      71,ir0                ; |804| 
        ldiu      @CL95,ar0             ; |804| 
        ldiu      0,r0                  ; |804| 
        sti       r0,*+ar0(ir0)         ; |804| 
	.line	66
;----------------------------------------------------------------------
; 806 | asm("           .global _vect_p2  ");                                  
;----------------------------------------------------------------------
		.global _vect_p2  
	.line	67
;----------------------------------------------------------------------
; 807 | PUSH_ALL;                                                              
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
	.line	68
;----------------------------------------------------------------------
; 808 | asm("   ldi             2, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		2, AR2 		  
	.line	69
;----------------------------------------------------------------------
; 809 | asm("       ldp             _vect_p2      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p2      
	.line	70
;----------------------------------------------------------------------
; 810 | asm("       ldi             @_vect_p2, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p2, R0 
	.line	71
;----------------------------------------------------------------------
; 811 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	72
;----------------------------------------------------------------------
; 812 | POP_ALL;                                                               
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
	.line	74
;----------------------------------------------------------------------
; 814 | break;                                                                 
; 816 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |814| 
;*      Branch Occurs to L181           ; |814| 
L173:        
	.line	78
;----------------------------------------------------------------------
; 818 | vect_p3                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |818| 
        ldiu      @CL95,ar0             ; |818| 
        ldp       @CL111,DP
        mpyi      71,ir0                ; |818| 
        ldiu      @CL111,ar1            ; |818| 
        ldiu      *+ar0(ir0),r0         ; |818| 
        sti       r0,*ar1               ; |818| 
	.line	79
;----------------------------------------------------------------------
; 819 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |819| 
        ldiu      @CL95,ar0             ; |819| 
        mpyi      71,ir0                ; |819| 
        ldiu      0,r0                  ; |819| 
        sti       r0,*+ar0(ir0)         ; |819| 
	.line	81
;----------------------------------------------------------------------
; 821 | asm("           .global _vect_p3  ");                                  
;----------------------------------------------------------------------
		.global _vect_p3  
	.line	82
;----------------------------------------------------------------------
; 822 | PUSH_ALL;                                                              
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
	.line	83
;----------------------------------------------------------------------
; 823 | asm("   ldi             3, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		3, AR2 		  
	.line	84
;----------------------------------------------------------------------
; 824 | asm("       ldp             _vect_p3      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p3      
	.line	85
;----------------------------------------------------------------------
; 825 | asm("       ldi             @_vect_p3, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p3, R0 
	.line	86
;----------------------------------------------------------------------
; 826 | asm("       callnz  R0                        ");   /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	  
	.line	87
;----------------------------------------------------------------------
; 827 | POP_ALL;                                                               
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
	.line	89
;----------------------------------------------------------------------
; 829 | break;                                                                 
; 831 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |829| 
;*      Branch Occurs to L181           ; |829| 
L174:        
	.line	93
;----------------------------------------------------------------------
; 833 | vect_p4                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |833| 
        ldiu      @CL95,ar1             ; |833| 
        ldp       @CL113,DP
        mpyi      71,ir0                ; |833| 
        ldiu      @CL113,ar0            ; |833| 
        ldiu      *+ar1(ir0),r0         ; |833| 
        sti       r0,*ar0               ; |833| 
	.line	94
;----------------------------------------------------------------------
; 834 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |834| 
        mpyi      71,ir0                ; |834| 
        ldiu      @CL95,ar0             ; |834| 
        ldiu      0,r0                  ; |834| 
        sti       r0,*+ar0(ir0)         ; |834| 
	.line	96
;----------------------------------------------------------------------
; 836 | asm("           .global _vect_p4  ");                                  
;----------------------------------------------------------------------
		.global _vect_p4  
	.line	97
;----------------------------------------------------------------------
; 837 | PUSH_ALL;                                                              
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
	.line	98
;----------------------------------------------------------------------
; 838 | asm("   ldi             4, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		4, AR2 		  
	.line	99
;----------------------------------------------------------------------
; 839 | asm("       ldp             _vect_p4      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p4      
	.line	100
;----------------------------------------------------------------------
; 840 | asm("       ldi             @_vect_p4, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p4, R0 
	.line	101
;----------------------------------------------------------------------
; 841 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	102
;----------------------------------------------------------------------
; 842 | POP_ALL;                                                               
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
	.line	104
;----------------------------------------------------------------------
; 844 | break;                                                                 
; 846 | case 5:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |844| 
;*      Branch Occurs to L181           ; |844| 
L175:        
	.line	108
;----------------------------------------------------------------------
; 848 | vect_p5                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |848| 
        ldiu      @CL95,ar0             ; |848| 
        ldp       @CL115,DP
        mpyi      71,ir0                ; |848| 
        ldiu      @CL115,ar1            ; |848| 
        ldiu      *+ar0(ir0),r0         ; |848| 
        sti       r0,*ar1               ; |848| 
	.line	109
;----------------------------------------------------------------------
; 849 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |849| 
        ldiu      @CL95,ar0             ; |849| 
        mpyi      71,ir0                ; |849| 
        ldiu      0,r0                  ; |849| 
        sti       r0,*+ar0(ir0)         ; |849| 
	.line	111
;----------------------------------------------------------------------
; 851 | asm("           .global _vect_p5  ");                                  
;----------------------------------------------------------------------
		.global _vect_p5  
	.line	112
;----------------------------------------------------------------------
; 852 | PUSH_ALL;                                                              
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
	.line	113
;----------------------------------------------------------------------
; 853 | asm("   ldi             5, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		5, AR2 		  
	.line	114
;----------------------------------------------------------------------
; 854 | asm("       ldp             _vect_p5      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p5      
	.line	115
;----------------------------------------------------------------------
; 855 | asm("       ldi             @_vect_p5, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p5, R0 
	.line	116
;----------------------------------------------------------------------
; 856 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	117
;----------------------------------------------------------------------
; 857 | POP_ALL;                                                               
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
	.line	119
;----------------------------------------------------------------------
; 859 | break;                                                                 
; 861 | case 6:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |859| 
;*      Branch Occurs to L181           ; |859| 
L176:        
	.line	123
;----------------------------------------------------------------------
; 863 | vect_p6                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |863| 
        ldiu      @CL95,ar0             ; |863| 
        ldp       @CL117,DP
        mpyi      71,ir0                ; |863| 
        ldiu      @CL117,ar1            ; |863| 
        ldiu      *+ar0(ir0),r0         ; |863| 
        sti       r0,*ar1               ; |863| 
	.line	124
;----------------------------------------------------------------------
; 864 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |864| 
        ldiu      @CL95,ar0             ; |864| 
        mpyi      71,ir0                ; |864| 
        ldiu      0,r0                  ; |864| 
        sti       r0,*+ar0(ir0)         ; |864| 
	.line	126
;----------------------------------------------------------------------
; 866 | asm("           .global _vect_p6  ");                                  
;----------------------------------------------------------------------
		.global _vect_p6  
	.line	127
;----------------------------------------------------------------------
; 867 | PUSH_ALL;                                                              
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
	.line	128
;----------------------------------------------------------------------
; 868 | asm("   ldi             6, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		6, AR2 		  
	.line	129
;----------------------------------------------------------------------
; 869 | asm("       ldp             _vect_p6      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p6      
	.line	130
;----------------------------------------------------------------------
; 870 | asm("       ldi             @_vect_p6, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p6, R0 
	.line	131
;----------------------------------------------------------------------
; 871 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	132
;----------------------------------------------------------------------
; 872 | POP_ALL;                                                               
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
	.line	134
;----------------------------------------------------------------------
; 874 | break;                                                                 
; 876 | case 7:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |874| 
;*      Branch Occurs to L181           ; |874| 
L177:        
	.line	138
;----------------------------------------------------------------------
; 878 | vect_p7                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |878| 
        ldiu      @CL95,ar0             ; |878| 
        ldp       @CL119,DP
        mpyi      71,ir0                ; |878| 
        ldiu      @CL119,ar1            ; |878| 
        ldiu      *+ar0(ir0),r0         ; |878| 
        sti       r0,*ar1               ; |878| 
	.line	139
;----------------------------------------------------------------------
; 879 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |879| 
        ldiu      @CL95,ar0             ; |879| 
        mpyi      71,ir0                ; |879| 
        ldiu      0,r0                  ; |879| 
        sti       r0,*+ar0(ir0)         ; |879| 
	.line	141
;----------------------------------------------------------------------
; 881 | asm("           .global _vect_p7  ");                                  
;----------------------------------------------------------------------
		.global _vect_p7  
	.line	142
;----------------------------------------------------------------------
; 882 | PUSH_ALL;                                                              
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
	.line	143
;----------------------------------------------------------------------
; 883 | asm("   ldi             7, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		7, AR2 		  
	.line	144
;----------------------------------------------------------------------
; 884 | asm("       ldp             _vect_p7      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p7      
	.line	145
;----------------------------------------------------------------------
; 885 | asm("       ldi             @_vect_p7, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p7, R0 
	.line	146
;----------------------------------------------------------------------
; 886 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	147
;----------------------------------------------------------------------
; 887 | POP_ALL;                                                               
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
	.line	149
;----------------------------------------------------------------------
; 889 | break;                                                                 
;----------------------------------------------------------------------
        bu        L181                  ; |889| 
;*      Branch Occurs to L181           ; |889| 
L179:        
	.line	29
        ldiu      *+fp(1),ir0           ; |769| 
        cmpi      7,ir0                 ; |769| 
        bhi       L181                  ; |769| 
;*      Branch Occurs to L181           ; |769| 
        ldp       @CL122,DP
        ldiu      @CL122,ar0            ; |769| 
        ldiu      *+ar0(ir0),r0         ; |769| 
        bu        r0                    ; |769| 

	.sect	".text"
SW1:	.word	L170	; 0
	.word	L171	; 1
	.word	L172	; 2
	.word	L173	; 3
	.word	L174	; 4
	.word	L175	; 5
	.word	L176	; 6
	.word	L177	; 7
	.sect	"interrupt_routines"
;*      Branch Occurs to r0             ; |769| 
L181:        
	.line	154
;----------------------------------------------------------------------
; 894 | RESET_PKT(id);                                                         
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      *+fp(1),ar2           ; |894| 
        ldiu      @CL40,r0              ; |894| 
        callu     r0                    ; far call to _RESET_PKT	; |894| 
                                        ; |894| Far Call Occurs
	.line	156
;----------------------------------------------------------------------
; 896 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	157
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	897,000000000h,2


	.sect	 "interrupt_routines"

	.global	_TX_S
	.sym	_TX_S,_TX_S,32,2,0
	.func	911
;******************************************************************************
;* FUNCTION NAME: _TX_S                                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,ir0,ir1,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_TX_S:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 911 | void TX_S(int id)                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |912| 
	.line	3
;----------------------------------------------------------------------
; 913 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	4
;----------------------------------------------------------------------
; 914 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	6
;----------------------------------------------------------------------
; 916 | if (!(UART[id][LSR] & 0x40))    /* make sure TSR and THR are empty */  
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldp       @CL101,DP
        ash       4,ir0                 ; |916| 
        ldiu      @CL101,ar0            ; |916| 
        ldiu      64,r0                 ; |916| 
        tstb3     *+ar0(ir0),r0         ; |916| 
        bne       L186                  ; |916| 
;*      Branch Occurs to L186           ; |916| 
	.line	7
;----------------------------------------------------------------------
; 917 | TIMER1_COUNTER[id] = 1;                                                
; 918 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      ar2,ir0
        ldiu      @CL30,ar0             ; |917| 
        ldiu      1,r0                  ; |917| 
        sti       r0,*+ar0(ir0)         ; |917| 
        bu        L187                  ; |910| 
;*      Branch Occurs to L187           ; |910| 
L186:        
	.line	10
;----------------------------------------------------------------------
; 920 | TIMER1_COUNTER[id]      = PORT[id].TMR_Suffix_Delay;                   
;----------------------------------------------------------------------
        ldp       @CL89,DP
        ldiu      *+fp(1),ir0           ; |920| 
        ldiu      @CL89,ar1             ; |920| 
        ldiu      ir0,ir1               ; |920| 
        ldp       @CL30,DP
        mpyi      71,ir0                ; |920| 
        ldiu      @CL30,ar0             ; |920| 
        ldiu      *+ar1(ir0),r0         ; |920| 
        sti       r0,*+ar0(ir1)         ; |920| 
	.line	11
;----------------------------------------------------------------------
; 921 | PORT[id].tvector        = (int*)TX_S1;                                 
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |921| 
        ldiu      *+fp(1),ir0           ; |921| 
        ldp       @CL123,DP
        mpyi      71,ir0                ; |921| 
        ldiu      @CL123,r0             ; |921| 
        sti       r0,*+ar0(ir0)         ; |921| 
L187:        
	.line	14
;----------------------------------------------------------------------
; 924 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |924| 
        ldp       @CL25,DP
        mpyi      71,ir0                ; |924| 
        ldiu      @CL25,ar0             ; |924| 
        ldiu      1,r0                  ; |924| 
        sti       r0,*+ar0(ir0)         ; |924| 
	.line	15
;----------------------------------------------------------------------
; 925 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	17
;----------------------------------------------------------------------
; 927 | return;                                                                
;----------------------------------------------------------------------
	.line	18
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	928,000000000h,1


	.sect	 "interrupt_routines"

	.global	_TX_P1
	.sym	_TX_P1,_TX_P1,32,2,0
	.func	942
;******************************************************************************
;* FUNCTION NAME: _TX_P1                                                      *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,ir0                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_TX_P1:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 942 | void TX_P1(int id)                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |943| 
	.line	3
;----------------------------------------------------------------------
; 944 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	4
;----------------------------------------------------------------------
; 945 | PORT[id].tvector = (int*)TX_S;                                         
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      ar2,ir0
        ldiu      @CL37,ar0             ; |945| 
        ldp       @CL124,DP
        mpyi      71,ir0                ; |945| 
        ldiu      @CL124,r0             ; |945| 
        sti       r0,*+ar0(ir0)         ; |945| 
	.line	5
;----------------------------------------------------------------------
; 946 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	6
;----------------------------------------------------------------------
; 947 | UART[id][IER]    = 0x02;        /* enable THR, disable RHR interrupts *
;     | /                                                                      
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |947| 
        ldiu      @CL17,ar0             ; |947| 
        ash       4,ir0                 ; |947| 
        ldiu      2,r0                  ; |947| 
        sti       r0,*+ar0(ir0)         ; |947| 
	.line	7
;----------------------------------------------------------------------
; 948 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	8
;----------------------------------------------------------------------
; 949 | UART[id][THR]    = Get(&TXbuf[id]);                                    
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      *+fp(1),ar2           ; |949| 
        mpyi      307,ar2               ; |949| 
        addi      @CL64,ar2             ; |949| Unsigned
        ldp       @CL99,DP
        ldiu      @CL99,r0              ; |949| 
        callu     r0                    ; far call to _Get	; |949| 
                                        ; |949| Far Call Occurs
        ldp       @CL27,DP
        ldiu      *+fp(1),ir0           ; |949| 
        ldiu      @CL27,ar0             ; |949| 
        ash       4,ir0                 ; |949| 
        sti       r0,*+ar0(ir0)         ; |949| 
	.line	9
;----------------------------------------------------------------------
; 950 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	10
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	951,000000000h,1


	.sect	 "interrupt_routines"

	.global	_TX_P
	.sym	_TX_P,_TX_P,32,2,0
	.func	965
;******************************************************************************
;* FUNCTION NAME: _TX_P                                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,ir0,ir1,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_TX_P:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 965 | void TX_P(int id)                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |966| 
	.line	3
;----------------------------------------------------------------------
; 967 | _GIEP;                                                                 
; 969 | switch (id)                                                            
; 971 |         case 0:                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        bu        L205                  ; |964| 
;*      Branch Occurs to L205           ; |964| 
L194:        
	.line	9
;----------------------------------------------------------------------
; 973 | if (SA && B202_PORT)                                                   
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |973| 
        ldiu      *ar0,r0               ; |973| 
        cmpi      0,r0                  ; |973| 
        beq       L207                  ; |973| 
;*      Branch Occurs to L207           ; |973| 
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |973| 
        ldiu      32,r0                 ; |973| 
        tstb3     *ar0,r0               ; |973| 
        bne       L207                  ; |973| 
;*      Branch Occurs to L207           ; |973| 
	.line	11
;----------------------------------------------------------------------
; 975 | if (B202_CARRIER)       /* Carrier Detect */                           
;----------------------------------------------------------------------
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |975| 
        ldiu      16,r0                 ; |975| 
        tstb3     *ar0,r0               ; |975| 
        beq       L207                  ; |975| 
;*      Branch Occurs to L207           ; |975| 
	.line	13
;----------------------------------------------------------------------
; 977 | TIMER1_COUNTER[id]       = 1;                                          
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      *+fp(1),ir0           ; |977| 
        ldiu      @CL30,ar0             ; |977| 
        ldiu      1,r0                  ; |977| 
        sti       r0,*+ar0(ir0)         ; |977| 
	.line	14
;----------------------------------------------------------------------
; 978 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |978| 
        ldiu      @CL25,ar0             ; |978| 
        mpyi      71,ir0                ; |978| 
        sti       r0,*+ar0(ir0)         ; |978| 
	.line	15
;----------------------------------------------------------------------
; 979 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	17
;----------------------------------------------------------------------
; 981 | return;                                                                
;----------------------------------------------------------------------
        bu        L216                  ; |981| 
;*      Branch Occurs to L216           ; |981| 
	.line	21
;----------------------------------------------------------------------
; 985 | break;                                                                 
; 987 | case 4:                                                                
; 988 | {// Extended Electronics Analyzer                                      
;----------------------------------------------------------------------
L199:        
	.line	25
;----------------------------------------------------------------------
; 989 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |989| 
        ldiu      *ar0,r0               ; |989| 
        cmpi      0,r0                  ; |989| 
        bne       L207                  ; |989| 
;*      Branch Occurs to L207           ; |989| 
	.line	27
;----------------------------------------------------------------------
; 991 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	29
;----------------------------------------------------------------------
; 993 | if (UART[id][MSR]&0x80) // Carrier Detect                              
; 994 | {// carrier detect status for BELL202                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |993| 
        ldp       @CL100,DP
        ash       4,ir0                 ; |993| 
        ldiu      @CL100,ar0            ; |993| 
        ldiu      128,r0                ; |993| 
        tstb3     *+ar0(ir0),r0         ; |993| 
        beq       L203                  ; |993| 
;*      Branch Occurs to L203           ; |993| 
	.line	31
;----------------------------------------------------------------------
; 995 | TIMER1_COUNTER[id]       = 1;                                          
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      *+fp(1),ir0           ; |995| 
        ldiu      @CL30,ar0             ; |995| 
        ldiu      1,r0                  ; |995| 
        sti       r0,*+ar0(ir0)         ; |995| 
	.line	32
;----------------------------------------------------------------------
; 996 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |996| 
        ldiu      @CL25,ar0             ; |996| 
        mpyi      71,ir0                ; |996| 
        sti       r0,*+ar0(ir0)         ; |996| 
	.line	33
;----------------------------------------------------------------------
; 997 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	35
;----------------------------------------------------------------------
; 999 | return;                                                                
; 1001 | else                                                                   
; 1002 | {// turn OFF break                                                     
;----------------------------------------------------------------------
        bu        L216                  ; |999| 
;*      Branch Occurs to L216           ; |999| 
L203:        
	.line	39
;----------------------------------------------------------------------
; 1003 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	40
;----------------------------------------------------------------------
; 1004 | UART[id][LCR]&=(0x40^0xFF);     //clear bit 6 - DA                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |1004| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |1004| 
        addi      @CL27,ar0             ; |1004| Unsigned
        ldiu      191,r0                ; |1004| 
        and       *+ar0(3),r0           ; |1004| 
        sti       r0,*+ar0(3)           ; |1004| 
	.line	44
;----------------------------------------------------------------------
; 1008 | break;                                                                 
;----------------------------------------------------------------------
        bu        L207                  ; |1008| 
;*      Branch Occurs to L207           ; |1008| 
L205:        
	.line	5
        ldiu      *+fp(1),r0            ; |969| 
        cmpi      0,r0                  ; |969| 
        beq       L194                  ; |969| 
;*      Branch Occurs to L194           ; |969| 
        cmpi      4,r0                  ; |969| 
        beq       L199                  ; |969| 
;*      Branch Occurs to L199           ; |969| 
L207:        
	.line	48
;----------------------------------------------------------------------
; 1012 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1012| 
        ldiu      *ar0,r0               ; |1012| 
        cmpi      0,r0                  ; |1012| 
        bne       L213                  ; |1012| 
;*      Branch Occurs to L213           ; |1012| 
	.line	50
;----------------------------------------------------------------------
; 1014 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	51
;----------------------------------------------------------------------
; 1015 | UART[id][MCR] |= 0x01;                                                 
; 1017 | else                                                                   
; 1019 | switch (id)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |1015| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |1015| 
        addi      @CL27,ar0             ; |1015| Unsigned
        ldiu      1,r0                  ; |1015| 
        or        *+ar0(4),r0           ; |1015| 
        sti       r0,*+ar0(4)           ; |1015| 
        bu        L215                  ; |964| 
;*      Branch Occurs to L215           ; |964| 
L210:        
	.line	57
;----------------------------------------------------------------------
; 1021 | case 0: ENABLE_TXA; break;                                             
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |1021| 
        ldiu      247,r0                ; |1021| 
        and3      r0,*ar0,r0            ; |1021| 
        sti       r0,*ar0               ; |1021| 
	pop		ST			
        bu        L215                  ; |1021| 
;*      Branch Occurs to L215           ; |1021| 
L211:        
	.line	58
;----------------------------------------------------------------------
; 1022 | case 1: ENABLE_TXB; break;                                             
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |1022| 
        ldiu      254,r0                ; |1022| 
        and3      r0,*ar0,r0            ; |1022| 
        sti       r0,*ar0               ; |1022| 
	pop		ST			
        bu        L215                  ; |1022| 
;*      Branch Occurs to L215           ; |1022| 
L213:        
	.line	55
        ldiu      *+fp(1),r0            ; |1019| 
        cmpi      0,r0                  ; |1019| 
        beq       L210                  ; |1019| 
;*      Branch Occurs to L210           ; |1019| 
        cmpi      1,r0                  ; |1019| 
        beq       L211                  ; |1019| 
;*      Branch Occurs to L211           ; |1019| 
L215:        
	.line	62
;----------------------------------------------------------------------
; 1026 | PORT[id].tvector         = (int*)TX_P1;                                
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      *+fp(1),ir0           ; |1026| 
        ldiu      @CL37,ar0             ; |1026| 
        ldp       @CL126,DP
        mpyi      71,ir0                ; |1026| 
        ldiu      @CL126,r0             ; |1026| 
        sti       r0,*+ar0(ir0)         ; |1026| 
	.line	63
;----------------------------------------------------------------------
; 1027 | TIMER1_COUNTER[id]       = PORT[id].TMR_Prefix_Delay;                  
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      @CL88,ar1             ; |1027| 
        ldiu      *+fp(1),ir0           ; |1027| 
        ldp       @CL30,DP
        ldiu      ir0,ir1
        mpyi      71,ir0                ; |1027| 
        ldiu      @CL30,ar0             ; |1027| 
        ldiu      *+ar1(ir0),r0         ; |1027| 
        sti       r0,*+ar0(ir1)         ; |1027| 
	.line	64
;----------------------------------------------------------------------
; 1028 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |1028| 
        ldiu      @CL25,ar0             ; |1028| 
        mpyi      71,ir0                ; |1028| 
        ldiu      1,r0                  ; |1028| 
        sti       r0,*+ar0(ir0)         ; |1028| 
	.line	66
;----------------------------------------------------------------------
; 1030 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L216:        
	.line	67
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1031,000000000h,1


	.sect	 "interrupt_routines"

	.global	_Prepare_TX
	.sym	_Prepare_TX,_Prepare_TX,32,2,0
	.func	1046
;******************************************************************************
;* FUNCTION NAME: _Prepare_TX                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,ir0,ir1,st                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Prepare_TX:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
;* r2    assigned to _skip_CRC
	.sym	_skip_CRC,2,14,17,32
	.sym	_id,1,4,1,32
	.sym	_skip_CRC,2,14,1,32
	.sym	_tmp0,3,14,1,32
	.line	1
;----------------------------------------------------------------------
; 1046 | void Prepare_TX(int id, BOOL skip_CRC)                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 1048 | unsigned int tmp0;                                                     
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |1047| 
        sti       ar2,*+fp(1)           ; |1047| 
	.line	5
;----------------------------------------------------------------------
; 1050 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 1052 | RESET_PKT(id);                                                         
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r0              ; |1052| 
        callu     r0                    ; far call to _RESET_PKT	; |1052| 
                                        ; |1052| Far Call Occurs
	.line	9
;----------------------------------------------------------------------
; 1054 | if (!PORT[id].broadcast)                        /* broadcast msgs do no
;     | t require a response */                                                
;----------------------------------------------------------------------
        ldp       @CL92,DP
        ldiu      *+fp(1),ir0           ; |1054| 
        ldiu      @CL92,ar0             ; |1054| 
        mpyi      71,ir0                ; |1054| 
        ldiu      *+ar0(ir0),r0         ; |1054| 
        cmpi      0,r0                  ; |1054| 
        bne       L222                  ; |1054| 
;*      Branch Occurs to L222           ; |1054| 
	.line	11
;----------------------------------------------------------------------
; 1056 | if (!skip_CRC)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1056| 
        cmpi      0,r0                  ; |1056| 
        bne       L221                  ; |1056| 
;*      Branch Occurs to L221           ; |1056| 
	.line	13
;----------------------------------------------------------------------
; 1058 | tmp0 = TXbuf[id].CRC16;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |1058| 
        ldp       @CL127,DP
        mpyi      307,ir0               ; |1058| 
        ldiu      @CL127,ar0            ; |1058| 
        ldiu      *+ar0(ir0),r0         ; |1058| 
        sti       r0,*+fp(3)            ; |1058| 
	.line	15
;----------------------------------------------------------------------
; 1060 | Put(&TXbuf[id], tmp0, 1);       /* CRCH */                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |1060| 
        ldp       @CL104,DP
        mpyi      307,ar2               ; |1060| 
        ldiu      @CL104,r0             ; |1060| 
        ldp       @CL64,DP
        ldiu      *+fp(3),r2            ; |1060| 
        addi      @CL64,ar2             ; |1060| Unsigned
        ldiu      1,r3                  ; |1060| 
        callu     r0                    ; far call to _Put	; |1060| 
                                        ; |1060| Far Call Occurs
	.line	16
;----------------------------------------------------------------------
; 1061 | Put(&TXbuf[id], tmp0>>8, 1);/* CRCL */                                 
;----------------------------------------------------------------------
        ldp       @CL104,DP
        ldiu      @CL104,r0             ; |1061| 
        ldiu      *+fp(1),ar2           ; |1061| 
        ldp       @CL64,DP
        mpyi      307,ar2               ; |1061| 
        ldiu      *+fp(3),r2            ; |1061| 
        addi      @CL64,ar2             ; |1061| Unsigned
        lsh       -8,r2                 ; |1061| 
        ldiu      1,r3                  ; |1061| 
        callu     r0                    ; far call to _Put	; |1061| 
                                        ; |1061| Far Call Occurs
L221:        
	.line	19
;----------------------------------------------------------------------
; 1064 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	20
;----------------------------------------------------------------------
; 1065 | UART[id][IER]            = 0x00;        /* disable THR, disable RHR int
;     | errupts */                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |1065| 
        ldp       @CL17,DP
        ash       4,ir0                 ; |1065| 
        ldiu      @CL17,ar0             ; |1065| 
        ldiu      0,r0                  ; |1065| 
        sti       r0,*+ar0(ir0)         ; |1065| 
	.line	21
;----------------------------------------------------------------------
; 1066 | PORT[id].tvector         = (int*)TX_P;                                 
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |1066| 
        ldiu      *+fp(1),ir0           ; |1066| 
        ldp       @CL128,DP
        mpyi      71,ir0                ; |1066| 
        ldiu      @CL128,r0             ; |1066| 
        sti       r0,*+ar0(ir0)         ; |1066| 
	.line	22
;----------------------------------------------------------------------
; 1067 | TIMER1_COUNTER[id]       = PORT[id].TMR_EOT_Delay;                     
;----------------------------------------------------------------------
        ldp       @CL87,DP
        ldiu      @CL87,ar1             ; |1067| 
        ldp       @CL30,DP
        ldiu      *+fp(1),ir0           ; |1067| 
        ldiu      ir0,ir1               ; |1067| 
        mpyi      71,ir0                ; |1067| 
        ldiu      @CL30,ar0             ; |1067| 
        ldiu      *+ar1(ir0),r0         ; |1067| 
        sti       r0,*+ar0(ir1)         ; |1067| 
	.line	23
;----------------------------------------------------------------------
; 1068 | PORT[id].TX_complete = FALSE;                                          
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      *+fp(1),ir0           ; |1068| 
        ldiu      @CL39,ar0             ; |1068| 
        mpyi      71,ir0                ; |1068| 
        ldiu      0,r0                  ; |1068| 
        sti       r0,*+ar0(ir0)         ; |1068| 
	.line	24
;----------------------------------------------------------------------
; 1069 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |1069| 
        ldiu      @CL25,ar0             ; |1069| 
        mpyi      71,ir0                ; |1069| 
        ldiu      1,r0                  ; |1069| 
        sti       r0,*+ar0(ir0)         ; |1069| 
L222:        
	.line	27
;----------------------------------------------------------------------
; 1072 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	28
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1073,000000000h,3


	.sect	 "initialization"

	.global	_Port_Defaults
	.sym	_Port_Defaults,_Port_Defaults,32,2,0
	.func	1090
;******************************************************************************
;* FUNCTION NAME: _Port_Defaults                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,f3,r3,r4,r5,f6,f7,ar0,ar1,ar2,fp, *
;*                        ar4,ar5,ar6,ar7,ir0,sp,st,rs,re,rc                  *
;*   Regs Saved         : r4,r5,f6,f7,ar4,ar5,ar6,ar7                         *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 8 SOE = 13 words         *
;******************************************************************************
_Port_Defaults:
;* ar2   assigned to _FORCE
	.sym	_FORCE,10,14,17,32
	.sym	_FORCE,1,14,1,32
	.sym	_port,2,4,1,32
	.sym	_i,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1090 | void Port_Defaults(BOOL FORCE)                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
        push      r4
        push      r5
        pushf     f6
        pushf     f7
        push      ar4
        push      ar5
        push      ar6
        push      ar7
	.line	2
;----------------------------------------------------------------------
; 1092 | int port, i;    /* port counter; MASTER_Q counter */                   
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |1091| 
	.line	5
;----------------------------------------------------------------------
; 1094 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	6
;----------------------------------------------------------------------
; 1095 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL129,DP
        ldiu      @CL129,ar0            ; |1095| 
        ldiu      247,r0                ; |1095| 
        and3      r0,*ar0,r0            ; |1095| 
        sti       r0,*ar0               ; |1095| 
	pop		ST			
	.line	8
;----------------------------------------------------------------------
; 1097 | if (!FORCE)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |1097| 
        cmpi      0,r0                  ; |1097| 
        bne       L245                  ; |1097| 
;*      Branch Occurs to L245           ; |1097| 
	.line	10
;----------------------------------------------------------------------
; 1099 | for (port=0;port<UART_MAX;port++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1099| 
        sti       r0,*+fp(2)            ; |1099| 
        cmpi      8,r0                  ; |1099| 
        bge       L276                  ; |1099| 
;*      Branch Occurs to L276           ; |1099| 
L227:        
	.line	12
;----------------------------------------------------------------------
; 1101 | if (DIPSWITCH[0])                                                      
;----------------------------------------------------------------------
        ldp       @CL130,DP
        ldiu      @CL130,ar0            ; |1101| 
        ldiu      *ar0,r0               ; |1101| 
        cmpi      0,r0                  ; |1101| 
        beq       L243                  ; |1101| 
;*      Branch Occurs to L243           ; |1101| 
	.line	14
;----------------------------------------------------------------------
; 1103 | if ( (SA && B202_PORT && (port==0)) || (!SA && (port==4)) ) /* BELL202
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1103| 
        ldiu      *ar0,r0               ; |1103| 
        cmpi      0,r0                  ; |1103| 
        beq       L231                  ; |1103| 
;*      Branch Occurs to L231           ; |1103| 
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |1103| 
        ldiu      32,r0                 ; |1103| 
        tstb3     *ar0,r0               ; |1103| 
        bne       L231                  ; |1103| 
;*      Branch Occurs to L231           ; |1103| 
        ldiu      *+fp(2),r0            ; |1103| 
        cmpi      0,r0                  ; |1103| 
        beq       L233                  ; |1103| 
;*      Branch Occurs to L233           ; |1103| 
L231:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1103| 
        ldiu      *ar0,r0               ; |1103| 
        cmpi      0,r0                  ; |1103| 
        bne       L234                  ; |1103| 
;*      Branch Occurs to L234           ; |1103| 
        ldiu      *+fp(2),r0            ; |1103| 
        cmpi      4,r0                  ; |1103| 
        bne       L234                  ; |1103| 
;*      Branch Occurs to L234           ; |1103| 
L233:        
	.line	16
;----------------------------------------------------------------------
; 1105 | DIO_HART_5.val = TRUE;                                                 
;----------------------------------------------------------------------
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1105| 
        ldiu      1,r0                  ; |1105| 
        sti       r0,*ar0               ; |1105| 
	.line	18
;----------------------------------------------------------------------
; 1107 | HART_5(port);                                                          
;----------------------------------------------------------------------
        ldp       @CL132,DP
        ldiu      *+fp(2),ar2           ; |1107| 
        ldiu      @CL132,r0             ; |1107| 
        callu     r0                    ; far call to _HART_5	; |1107| 
                                        ; |1107| Far Call Occurs
	.line	20
;----------------------------------------------------------------------
; 1109 | PORT[port].Slave = 0;                                                  
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1109| 
        ldiu      @CL102,ar0            ; |1109| 
        mpyi      71,ir0                ; |1109| 
        ldiu      0,r0                  ; |1109| 
        sti       r0,*+ar0(ir0)         ; |1109| 
	.line	21
;----------------------------------------------------------------------
; 1110 | PORTCFG[port].Parity = 'O'<<8;                                         
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(2),ir0           ; |1110| 
        ldiu      @CL50,ar0             ; |1110| 
        mpyi      359,ir0               ; |1110| 
        ldiu      20224,r0              ; |1110| 
        sti       r0,*+ar0(ir0)         ; |1110| 
	.line	23
;----------------------------------------------------------------------
; 1112 | VAR_Update(&PORTCFG[port].Slave_ID,   0.0,
;     |   0, 0);                                                               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1112| 
        ldiu      *+fp(2),ar2           ; |1112| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1112| 
        addi      @CL133,ar2            ; |1112| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1112| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |1112| 
        ldiu      @CL72+1,r2            ; |1112| 40b float lo half
        ldiu      0,r3                  ; |1112| 
        callu     r0                    ; far call to _VAR_Update	; |1112| 
                                        ; |1112| Far Call Occurs
	.line	24
;----------------------------------------------------------------------
; 1113 | VAR_Update(&PORTCFG[port].Baud_Rate,  1200.0,                    0, 0);
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1113| 
        ldp       @CL134,DP
        ldiu      *+fp(2),ar2           ; |1113| 
        mpyi      359,ar2               ; |1113| 
        addi      @CL134,ar2            ; |1113| Unsigned
        ldp       @CL135+0,DP
        ldfu      @CL135+0,f2           ; |1113| 40b float hi half
        ldp       @CL135+1,DP
        ldiu      @CL135+1,r2           ; |1113| 40b float lo half
        ldiu      0,rc                  ; |1113| 
        ldiu      0,r3                  ; |1113| 
        callu     r0                    ; far call to _VAR_Update	; |1113| 
                                        ; |1113| Far Call Occurs
	.line	25
;----------------------------------------------------------------------
; 1114 | VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_H_EOT,     0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1114| 
        ldiu      *+fp(2),ar2           ; |1114| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1114| 
        addi      @CL78,ar2             ; |1114| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1114| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      @CL136+1,r2           ; |1114| 40b float lo half
        ldiu      0,rc                  ; |1114| 
        ldiu      0,r3                  ; |1114| 
        callu     r0                    ; far call to _VAR_Update	; |1114| 
                                        ; |1114| Far Call Occurs
	.line	26
;----------------------------------------------------------------------
; 1115 | VAR_Update(&PORTCFG[port].PREFIX,         DEFAULT_H_PREFIX,  0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1115| 
        ldiu      *+fp(2),ar2           ; |1115| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1115| 
        addi      @CL73,ar2             ; |1115| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1115| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |1115| 
        ldiu      @CL74+1,r2            ; |1115| 40b float lo half
        ldiu      0,r3                  ; |1115| 
        callu     r0                    ; far call to _VAR_Update	; |1115| 
                                        ; |1115| Far Call Occurs
	.line	27
;----------------------------------------------------------------------
; 1116 | VAR_Update(&PORTCFG[port].SUFFIX,         DEFAULT_H_SUFFIX,  0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1116| 
        ldiu      @CL70,r0              ; |1116| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1116| 
        addi      @CL76,ar2             ; |1116| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1116| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      @CL82+1,r2            ; |1116| 40b float lo half
        ldiu      0,rc                  ; |1116| 
        ldiu      0,r3                  ; |1116| 
        callu     r0                    ; far call to _VAR_Update	; |1116| 
                                        ; |1116| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 1117 | VAR_Update(&PORTCFG[port].NETWDOG,        DEFAULT_H_NETWDOG, 0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1117| 
        ldiu      *+fp(2),ar2           ; |1117| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1117| 
        addi      @CL68,ar2             ; |1117| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1117| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      0,rc                  ; |1117| 
        ldiu      @CL136+1,r2           ; |1117| 40b float lo half
        ldiu      0,r3                  ; |1117| 
        callu     r0                    ; far call to _VAR_Update	; |1117| 
                                        ; |1117| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 1118 | VAR_Update(&PORTCFG[port].Retry_Time, 0.500,                     0, 0);
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1118| 
        ldiu      *+fp(2),ar2           ; |1118| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1118| 
        addi      @CL81,ar2             ; |1118| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1118| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      0,rc                  ; |1118| 
        ldiu      @CL82+1,r2            ; |1118| 40b float lo half
        ldiu      0,r3                  ; |1118| 
        callu     r0                    ; far call to _VAR_Update	; |1118| 
                                        ; |1118| Far Call Occurs
        bu        L243                  ; |1089| 
;*      Branch Occurs to L243           ; |1089| 
L234:        
	.line	31
;----------------------------------------------------------------------
; 1120 | else if (!SA && (port==5))      /* IrDA */                             
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1120| 
        ldiu      *ar0,r0               ; |1120| 
        cmpi      0,r0                  ; |1120| 
        bne       L237                  ; |1120| 
;*      Branch Occurs to L237           ; |1120| 
        ldiu      *+fp(2),r0            ; |1120| 
        cmpi      5,r0                  ; |1120| 
        bne       L237                  ; |1120| 
;*      Branch Occurs to L237           ; |1120| 
	.line	33
;----------------------------------------------------------------------
; 1122 | VAR_Update(&PORTCFG[port].Slave_ID, 1.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      r0,ar2
        ldiu      @CL70,r0              ; |1122| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1122| 
        addi      @CL133,ar2            ; |1122| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1122| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      0,rc                  ; |1122| 
        ldiu      @CL136+1,r2           ; |1122| 40b float lo half
        ldiu      0,r3                  ; |1122| 
        callu     r0                    ; far call to _VAR_Update	; |1122| 
                                        ; |1122| Far Call Occurs
	.line	35
;----------------------------------------------------------------------
; 1124 | PORT[port].Slave = 0;                                                  
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1124| 
        ldiu      @CL102,ar0            ; |1124| 
        mpyi      71,ir0                ; |1124| 
        ldiu      0,r0                  ; |1124| 
        sti       r0,*+ar0(ir0)         ; |1124| 
	.line	37
;----------------------------------------------------------------------
; 1126 | VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);                  
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1126| 
        ldp       @CL134,DP
        ldiu      *+fp(2),ar2           ; |1126| 
        mpyi      359,ar2               ; |1126| 
        addi      @CL134,ar2            ; |1126| Unsigned
        ldp       @CL137+0,DP
        ldfu      @CL137+0,f2           ; |1126| 40b float hi half
        ldp       @CL137+1,DP
        ldiu      0,rc                  ; |1126| 
        ldiu      @CL137+1,r2           ; |1126| 40b float lo half
        ldiu      0,r3                  ; |1126| 
        callu     r0                    ; far call to _VAR_Update	; |1126| 
                                        ; |1126| Far Call Occurs
	.line	39
;----------------------------------------------------------------------
; 1128 | PORTCFG[port].Parity = 'N'<<8;                                         
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      @CL50,ar0             ; |1128| 
        ldiu      *+fp(2),ir0           ; |1128| 
        mpyi      359,ir0               ; |1128| 
        ldiu      19968,r0              ; |1128| 
        sti       r0,*+ar0(ir0)         ; |1128| 
	.line	41
;----------------------------------------------------------------------
; 1130 | VAR_Update(&PORTCFG[port].EOT_Delay, 0.0, 0, 0);                       
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1130| 
        ldp       @CL78,DP
        ldiu      *+fp(2),ar2           ; |1130| 
        mpyi      359,ar2               ; |1130| 
        addi      @CL78,ar2             ; |1130| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1130| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |1130| 
        ldiu      @CL72+1,r2            ; |1130| 40b float lo half
        ldiu      0,r3                  ; |1130| 
        callu     r0                    ; far call to _VAR_Update	; |1130| 
                                        ; |1130| Far Call Occurs
	.line	42
;----------------------------------------------------------------------
; 1131 | VAR_Update(&PORTCFG[port].PREFIX, 0.0, 0, 0);                          
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1131| 
        ldiu      *+fp(2),ar2           ; |1131| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1131| 
        addi      @CL73,ar2             ; |1131| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1131| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1131| 40b float lo half
        ldiu      0,rc                  ; |1131| 
        ldiu      0,r3                  ; |1131| 
        callu     r0                    ; far call to _VAR_Update	; |1131| 
                                        ; |1131| Far Call Occurs
	.line	43
;----------------------------------------------------------------------
; 1132 | VAR_Update(&PORTCFG[port].SUFFIX, 0., 0, 0);                           
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1132| 
        ldp       @CL76,DP
        ldiu      *+fp(2),ar2           ; |1132| 
        mpyi      359,ar2               ; |1132| 
        addi      @CL76,ar2             ; |1132| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1132| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1132| 40b float lo half
        ldiu      0,rc                  ; |1132| 
        ldiu      0,r3                  ; |1132| 
        callu     r0                    ; far call to _VAR_Update	; |1132| 
                                        ; |1132| Far Call Occurs
	.line	44
;----------------------------------------------------------------------
; 1133 | VAR_Update(&PORTCFG[port].NETWDOG, 10.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1133| 
        ldp       @CL68,DP
        ldiu      *+fp(2),ar2           ; |1133| 
        mpyi      359,ar2               ; |1133| 
        addi      @CL68,ar2             ; |1133| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |1133| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r2            ; |1133| 40b float lo half
        ldiu      0,rc                  ; |1133| 
        ldiu      0,r3                  ; |1133| 
        callu     r0                    ; far call to _VAR_Update	; |1133| 
                                        ; |1133| Far Call Occurs
	.line	45
;----------------------------------------------------------------------
; 1134 | VAR_Update(&PORTCFG[port].Retry_Time, 2.0, 0, 0);                      
; 1136 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1134| 
        ldiu      *+fp(2),ar2           ; |1134| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1134| 
        addi      @CL81,ar2             ; |1134| Unsigned
        ldp       @CL138+0,DP
        ldfu      @CL138+0,f2           ; |1134| 40b float hi half
        ldp       @CL138+1,DP
        ldiu      @CL138+1,r2           ; |1134| 40b float lo half
        ldiu      0,rc                  ; |1134| 
        ldiu      0,r3                  ; |1134| 
        callu     r0                    ; far call to _VAR_Update	; |1134| 
                                        ; |1134| Far Call Occurs
        bu        L243                  ; |1089| 
;*      Branch Occurs to L243           ; |1089| 
L237:        
	.line	49
;----------------------------------------------------------------------
; 1138 | VAR_Update(&PORTCFG[port].Slave_ID, 1.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1138| 
        ldiu      @CL70,r0              ; |1138| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1138| 
        addi      @CL133,ar2            ; |1138| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1138| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      0,rc                  ; |1138| 
        ldiu      @CL136+1,r2           ; |1138| 40b float lo half
        ldiu      0,r3                  ; |1138| 
        callu     r0                    ; far call to _VAR_Update	; |1138| 
                                        ; |1138| Far Call Occurs
	.line	51
;----------------------------------------------------------------------
; 1140 | PORT[port].Slave = 1;                                                  
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1140| 
        ldiu      @CL102,ar0            ; |1140| 
        mpyi      71,ir0                ; |1140| 
        ldiu      1,r0                  ; |1140| 
        sti       r0,*+ar0(ir0)         ; |1140| 
	.line	53
;----------------------------------------------------------------------
; 1142 | if ((port==1) && (!SA) && (!ALYESKA.ENABLED))                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1142| 
        cmpi      1,r0                  ; |1142| 
        bne       L241                  ; |1142| 
;*      Branch Occurs to L241           ; |1142| 
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1142| 
        ldiu      *ar0,r0               ; |1142| 
        cmpi      0,r0                  ; |1142| 
        bne       L241                  ; |1142| 
;*      Branch Occurs to L241           ; |1142| 
        ldp       @CL139,DP
        ldiu      @CL139,ar0            ; |1142| 
        ldiu      *ar0,r0               ; |1142| 
        cmpi      0,r0                  ; |1142| 
        bne       L241                  ; |1142| 
;*      Branch Occurs to L241           ; |1142| 
	.line	54
;----------------------------------------------------------------------
; 1143 | VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);                  
; 1144 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1143| 
        ldiu      @CL70,r0              ; |1143| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1143| 
        addi      @CL134,ar2            ; |1143| Unsigned
        ldp       @CL137+0,DP
        ldfu      @CL137+0,f2           ; |1143| 40b float hi half
        ldp       @CL137+1,DP
        ldiu      0,rc                  ; |1143| 
        ldiu      @CL137+1,r2           ; |1143| 40b float lo half
        ldiu      0,r3                  ; |1143| 
        callu     r0                    ; far call to _VAR_Update	; |1143| 
                                        ; |1143| Far Call Occurs
        bu        L242                  ; |1089| 
;*      Branch Occurs to L242           ; |1089| 
L241:        
	.line	56
;----------------------------------------------------------------------
; 1145 | VAR_Update(&PORTCFG[port].Baud_Rate, 9600.0, 0, 0);                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1145| 
        ldiu      @CL70,r0              ; |1145| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1145| 
        addi      @CL134,ar2            ; |1145| Unsigned
        ldp       @CL140+0,DP
        ldfu      @CL140+0,f2           ; |1145| 40b float hi half
        ldp       @CL140+1,DP
        ldiu      0,rc                  ; |1145| 
        ldiu      @CL140+1,r2           ; |1145| 40b float lo half
        ldiu      0,r3                  ; |1145| 
        callu     r0                    ; far call to _VAR_Update	; |1145| 
                                        ; |1145| Far Call Occurs
L242:        
	.line	58
;----------------------------------------------------------------------
; 1147 | PORTCFG[port].Parity = 'N'<<8;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1147| 
        ldp       @CL50,DP
        mpyi      359,ir0               ; |1147| 
        ldiu      @CL50,ar0             ; |1147| 
        ldiu      19968,r0              ; |1147| 
        sti       r0,*+ar0(ir0)         ; |1147| 
	.line	60
;----------------------------------------------------------------------
; 1149 | VAR_Update(&PORTCFG[port].EOT_Delay, DEFAULT_EOT, 0, 0);               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1149| 
        ldiu      @CL70,r0              ; |1149| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1149| 
        addi      @CL78,ar2             ; |1149| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |1149| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |1149| 
        ldiu      @CL79+1,r2            ; |1149| 40b float lo half
        ldiu      0,r3                  ; |1149| 
        callu     r0                    ; far call to _VAR_Update	; |1149| 
                                        ; |1149| Far Call Occurs
	.line	61
;----------------------------------------------------------------------
; 1150 | VAR_Update(&PORTCFG[port].PREFIX, DEFAULT_PREFIX, 0, 0);               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1150| 
        ldiu      *+fp(2),ar2           ; |1150| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1150| 
        addi      @CL73,ar2             ; |1150| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1150| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |1150| 
        ldiu      @CL74+1,r2            ; |1150| 40b float lo half
        ldiu      0,r3                  ; |1150| 
        callu     r0                    ; far call to _VAR_Update	; |1150| 
                                        ; |1150| Far Call Occurs
	.line	62
;----------------------------------------------------------------------
; 1151 | VAR_Update(&PORTCFG[port].SUFFIX, DEFAULT_SUFFIX, 0, 0);               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1151| 
        ldiu      @CL70,r0              ; |1151| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1151| 
        addi      @CL76,ar2             ; |1151| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1151| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1151| 40b float lo half
        ldiu      0,rc                  ; |1151| 
        ldiu      0,r3                  ; |1151| 
        callu     r0                    ; far call to _VAR_Update	; |1151| 
                                        ; |1151| Far Call Occurs
	.line	63
;----------------------------------------------------------------------
; 1152 | VAR_Update(&PORTCFG[port].NETWDOG, DEFAULT_NETWDOG, 0, 0);             
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1152| 
        ldiu      *+fp(2),ar2           ; |1152| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1152| 
        addi      @CL68,ar2             ; |1152| Unsigned
        ldp       @CL69+0,DP
        ldfu      @CL69+0,f2            ; |1152| 40b float hi half
        ldp       @CL69+1,DP
        ldiu      0,rc                  ; |1152| 
        ldiu      @CL69+1,r2            ; |1152| 40b float lo half
        ldiu      0,r3                  ; |1152| 
        callu     r0                    ; far call to _VAR_Update	; |1152| 
                                        ; |1152| Far Call Occurs
	.line	64
;----------------------------------------------------------------------
; 1153 | VAR_Update(&PORTCFG[port].Retry_Time, 0.500, 0, 0);                    
; 1158 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1153| 
        ldiu      *+fp(2),ar2           ; |1153| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1153| 
        addi      @CL81,ar2             ; |1153| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1153| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      @CL82+1,r2            ; |1153| 40b float lo half
        ldiu      0,rc                  ; |1153| 
        ldiu      0,r3                  ; |1153| 
        callu     r0                    ; far call to _VAR_Update	; |1153| 
                                        ; |1153| Far Call Occurs
L243:        
	.line	10
        ldiu      1,r0                  ; |1099| 
        addi      *+fp(2),r0            ; |1099| 
        sti       r0,*+fp(2)            ; |1099| 
        cmpi      8,r0                  ; |1099| 
        blt       L227                  ; |1099| 
;*      Branch Occurs to L227           ; |1099| 
        bu        L276                  ; |1089| 
;*      Branch Occurs to L276           ; |1089| 
L245:        
	.line	71
;----------------------------------------------------------------------
; 1160 | for (port=0;port<UART_MAX;port++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1160| 
        sti       r0,*+fp(2)            ; |1160| 
        cmpi      8,r0                  ; |1160| 
        bge       L276                  ; |1160| 
;*      Branch Occurs to L276           ; |1160| 
L246:        
	.line	73
;----------------------------------------------------------------------
; 1162 | PORT[port].BUSY = FALSE;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1162| 
        ldp       @CL91,DP
        mpyi      71,ir0                ; |1162| 
        ldiu      @CL91,ar0             ; |1162| 
        ldiu      0,r0                  ; |1162| 
        sti       r0,*+ar0(ir0)         ; |1162| 
	.line	75
;----------------------------------------------------------------------
; 1164 | if ((SA && B202_PORT && (port==0)) || (!SA && (port==4)))              
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1164| 
        ldiu      *ar0,r0               ; |1164| 
        cmpi      0,r0                  ; |1164| 
        beq       L249                  ; |1164| 
;*      Branch Occurs to L249           ; |1164| 
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |1164| 
        ldiu      32,r0                 ; |1164| 
        tstb3     *ar0,r0               ; |1164| 
        bne       L249                  ; |1164| 
;*      Branch Occurs to L249           ; |1164| 
        ldiu      *+fp(2),r0            ; |1164| 
        cmpi      0,r0                  ; |1164| 
        beq       L251                  ; |1164| 
;*      Branch Occurs to L251           ; |1164| 
L249:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1164| 
        ldiu      *ar0,r0               ; |1164| 
        cmpi      0,r0                  ; |1164| 
        bne       L252                  ; |1164| 
;*      Branch Occurs to L252           ; |1164| 
        ldiu      *+fp(2),r0            ; |1164| 
        cmpi      4,r0                  ; |1164| 
        bne       L252                  ; |1164| 
;*      Branch Occurs to L252           ; |1164| 
L251:        
	.line	77
;----------------------------------------------------------------------
; 1166 | VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specif
;     | ic_none, 1.0, 1.0, var_no_alarm|var_round);                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1166| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1166| 
        ldiu      240,rs                ; |1166| 
        ldiu      260,re                ; |1166| 
        addi      @CL133,ar2            ; |1166| Unsigned
        ldp       @CL141,DP
        ldiu      0,rc                  ; |1166| 
        ldiu      @CL141,r0             ; |1166| 
        ldfu      1.0000000000e+00,f3   ; |1166| 
        ldfu      1.0000000000e+00,f2   ; |1166| 
        callu     r0                    ; far call to _VAR_Initialize	; |1166| 
                                        ; |1166| Far Call Occurs
	.line	79
;----------------------------------------------------------------------
; 1168 | DIO_HART_5.val = TRUE;                                                 
;----------------------------------------------------------------------
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1168| 
        ldiu      1,r0                  ; |1168| 
        sti       r0,*ar0               ; |1168| 
	.line	81
;----------------------------------------------------------------------
; 1170 | HART_5(port);                                                          
;----------------------------------------------------------------------
        ldp       @CL132,DP
        ldiu      *+fp(2),ar2           ; |1170| 
        ldiu      @CL132,r0             ; |1170| 
        callu     r0                    ; far call to _HART_5	; |1170| 
                                        ; |1170| Far Call Occurs
	.line	82
;----------------------------------------------------------------------
; 1171 | VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_speci
;     | fic_bps, 0.01, 0.01, var_no_alarm);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1171| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1171| 
        addi      @CL134,ar2            ; |1171| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1171| 
        ldp       @CL142,DP
        ldiu      242,rs                ; |1171| 
        ldiu      4,re                  ; |1171| 
        ldiu      0,rc                  ; |1171| 
        ldfu      @CL142,f2             ; |1171| 
        ldfu      @CL142,f3             ; |1171| 
        callu     r0                    ; far call to _VAR_Initialize	; |1171| 
                                        ; |1171| Far Call Occurs
	.line	84
;----------------------------------------------------------------------
; 1173 | VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 3
;     | 00, 115200, 300); //fix 05-08-2014                                     
;----------------------------------------------------------------------
        ldp       @CL143,DP
        ldfu      @CL143,f1             ; |1173| 
        ldp       @CL144,DP
        ldfu      @CL144,f0             ; |1173| 
        pushf     f1                    ; |1173| 
        ldp       @CL145,DP
        pushf     f0                    ; |1173| 
        ldiu      @CL145,r0             ; |1173| 
        ldiu      *+fp(2),ar2           ; |1173| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1173| 
        addi      @CL134,ar2            ; |1173| Unsigned
        ldp       @CL143,DP
        ldfu      @CL143,f3             ; |1173| 
        ldp       @CL144,DP
        ldfu      @CL144,f2             ; |1173| 
        ldiu      242,rc                ; |1173| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1173| 
                                        ; |1173| Far Call Occurs
        subi      2,sp                  ; |1173| 
	.line	86
;----------------------------------------------------------------------
; 1175 | VAR_Update(&PORTCFG[port].Baud_Rate, 1200.0, 0, 0);                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1175| 
        ldiu      @CL70,r0              ; |1175| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1175| 
        addi      @CL134,ar2            ; |1175| Unsigned
        ldp       @CL135+0,DP
        ldfu      @CL135+0,f2           ; |1175| 40b float hi half
        ldp       @CL135+1,DP
        ldiu      @CL135+1,r2           ; |1175| 40b float lo half
        ldiu      0,rc                  ; |1175| 
        ldiu      0,r3                  ; |1175| 
        callu     r0                    ; far call to _VAR_Update	; |1175| 
                                        ; |1175| Far Call Occurs
        bu        L260                  ; |1089| 
;*      Branch Occurs to L260           ; |1089| 
L252:        
	.line	88
;----------------------------------------------------------------------
; 1177 | else if (!SA && (port==5))                                             
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1177| 
        ldiu      *ar0,r0               ; |1177| 
        cmpi      0,r0                  ; |1177| 
        bne       L255                  ; |1177| 
;*      Branch Occurs to L255           ; |1177| 
        ldiu      *+fp(2),r0            ; |1177| 
        cmpi      5,r0                  ; |1177| 
        bne       L255                  ; |1177| 
;*      Branch Occurs to L255           ; |1177| 
	.line	90
;----------------------------------------------------------------------
; 1179 | VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specif
;     | ic_none, 1.0, 1.0, var_no_alarm|var_round);                            
;----------------------------------------------------------------------
        ldiu      r0,ar2
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1179| 
        ldiu      240,rs                ; |1179| 
        ldiu      260,re                ; |1179| 
        addi      @CL133,ar2            ; |1179| Unsigned
        ldp       @CL141,DP
        ldiu      0,rc                  ; |1179| 
        ldiu      @CL141,r0             ; |1179| 
        ldfu      1.0000000000e+00,f3   ; |1179| 
        ldfu      1.0000000000e+00,f2   ; |1179| 
        callu     r0                    ; far call to _VAR_Initialize	; |1179| 
                                        ; |1179| Far Call Occurs
	.line	91
;----------------------------------------------------------------------
; 1180 | VAR_Setup_Unit(&PORTCFG[port].Slave_ID, u_mfgr_specific_none, 0, 0, 0,
;     | 0);                                                                    
;----------------------------------------------------------------------
        ldp       @CL145,DP
        ldfu      0.0000000000e+00,f1   ; |1180| 
        ldfu      0.0000000000e+00,f0   ; |1180| 
        pushf     f1                    ; |1180| 
        pushf     f0                    ; |1180| 
        ldiu      *+fp(2),ar2           ; |1180| 
        ldiu      @CL145,r0             ; |1180| 
        mpyi      359,ar2               ; |1180| 
        ldp       @CL133,DP
        ldiu      240,rc                ; |1180| 
        addi      @CL133,ar2            ; |1180| Unsigned
        ldfu      0.0000000000e+00,f3   ; |1180| 
        ldfu      0.0000000000e+00,f2   ; |1180| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1180| 
                                        ; |1180| Far Call Occurs
        subi      2,sp                  ; |1180| 
	.line	92
;----------------------------------------------------------------------
; 1181 | VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_speci
;     | fic_bps, 0.01, 0.01, var_no_alarm);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1181| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1181| 
        addi      @CL134,ar2            ; |1181| Unsigned
        ldp       @CL141,DP
        ldiu      242,rs                ; |1181| 
        ldiu      @CL141,r0             ; |1181| 
        ldp       @CL142,DP
        ldiu      4,re                  ; |1181| 
        ldfu      @CL142,f2             ; |1181| 
        ldfu      @CL142,f3             ; |1181| 
        ldiu      0,rc                  ; |1181| 
        callu     r0                    ; far call to _VAR_Initialize	; |1181| 
                                        ; |1181| Far Call Occurs
	.line	93
;----------------------------------------------------------------------
; 1182 | VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 1
;     | 15200, 115200, 115200);                                                
;----------------------------------------------------------------------
        ldp       @CL144,DP
        ldfu      @CL144,f1             ; |1182| 
        pushf     f1                    ; |1182| 
        ldfu      @CL144,f0             ; |1182| 
        ldp       @CL145,DP
        pushf     f0                    ; |1182| 
        ldiu      @CL145,r0             ; |1182| 
        ldp       @CL134,DP
        ldiu      *+fp(2),ar2           ; |1182| 
        mpyi      359,ar2               ; |1182| 
        addi      @CL134,ar2            ; |1182| Unsigned
        ldp       @CL144,DP
        ldiu      242,rc                ; |1182| 
        ldfu      @CL144,f2             ; |1182| 
        ldfu      @CL144,f3             ; |1182| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1182| 
                                        ; |1182| Far Call Occurs
        subi      2,sp                  ; |1182| 
	.line	94
;----------------------------------------------------------------------
; 1183 | VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);                  
; 1185 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1183| 
        ldiu      *+fp(2),ar2           ; |1183| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1183| 
        addi      @CL134,ar2            ; |1183| Unsigned
        ldp       @CL137+0,DP
        ldfu      @CL137+0,f2           ; |1183| 40b float hi half
        ldp       @CL137+1,DP
        ldiu      0,rc                  ; |1183| 
        ldiu      @CL137+1,r2           ; |1183| 40b float lo half
        ldiu      0,r3                  ; |1183| 
        callu     r0                    ; far call to _VAR_Update	; |1183| 
                                        ; |1183| Far Call Occurs
        bu        L260                  ; |1089| 
;*      Branch Occurs to L260           ; |1089| 
L255:        
	.line	98
;----------------------------------------------------------------------
; 1187 | VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specif
;     | ic_none, 1.0, 1.0, var_no_alarm|var_round);                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1187| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1187| 
        ldiu      240,rs                ; |1187| 
        ldiu      260,re                ; |1187| 
        addi      @CL133,ar2            ; |1187| Unsigned
        ldp       @CL141,DP
        ldiu      0,rc                  ; |1187| 
        ldiu      @CL141,r0             ; |1187| 
        ldfu      1.0000000000e+00,f3   ; |1187| 
        ldfu      1.0000000000e+00,f2   ; |1187| 
        callu     r0                    ; far call to _VAR_Initialize	; |1187| 
                                        ; |1187| Far Call Occurs
	.line	99
;----------------------------------------------------------------------
; 1188 | VAR_Setup_Unit(&PORTCFG[port].Slave_ID, u_mfgr_specific_none, 247, 1, 2
;     | 47, 1);                                                                
;----------------------------------------------------------------------
        ldp       @CL145,DP
        ldfu      1.0000000000e+00,f1   ; |1188| 
        ldfu      2.4700000000e+02,f0   ; |1188| 
        pushf     f1                    ; |1188| 
        pushf     f0                    ; |1188| 
        ldiu      *+fp(2),ar2           ; |1188| 
        ldiu      @CL145,r0             ; |1188| 
        mpyi      359,ar2               ; |1188| 
        ldp       @CL133,DP
        ldiu      240,rc                ; |1188| 
        addi      @CL133,ar2            ; |1188| Unsigned
        ldfu      1.0000000000e+00,f3   ; |1188| 
        ldfu      2.4700000000e+02,f2   ; |1188| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1188| 
                                        ; |1188| Far Call Occurs
        subi      2,sp                  ; |1188| 
	.line	100
;----------------------------------------------------------------------
; 1189 | VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_speci
;     | fic_bps, 0.01, 0.01, var_no_alarm);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1189| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1189| 
        addi      @CL134,ar2            ; |1189| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1189| 
        ldp       @CL142,DP
        ldfu      @CL142,f2             ; |1189| 
        ldfu      @CL142,f3             ; |1189| 
        ldiu      242,rs                ; |1189| 
        ldiu      4,re                  ; |1189| 
        ldiu      0,rc                  ; |1189| 
        callu     r0                    ; far call to _VAR_Initialize	; |1189| 
                                        ; |1189| Far Call Occurs
	.line	101
;----------------------------------------------------------------------
; 1190 | VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 3
;     | 00, 115200, 300);                                                      
;----------------------------------------------------------------------
        ldp       @CL143,DP
        ldfu      @CL143,f1             ; |1190| 
        ldp       @CL144,DP
        ldfu      @CL144,f0             ; |1190| 
        pushf     f1                    ; |1190| 
        ldp       @CL145,DP
        pushf     f0                    ; |1190| 
        ldiu      @CL145,r0             ; |1190| 
        ldp       @CL134,DP
        ldiu      *+fp(2),ar2           ; |1190| 
        mpyi      359,ar2               ; |1190| 
        addi      @CL134,ar2            ; |1190| Unsigned
        ldp       @CL143,DP
        ldfu      @CL143,f3             ; |1190| 
        ldp       @CL144,DP
        ldiu      242,rc                ; |1190| 
        ldfu      @CL144,f2             ; |1190| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1190| 
                                        ; |1190| Far Call Occurs
        subi      2,sp                  ; |1190| 
	.line	103
;----------------------------------------------------------------------
; 1192 | if ((port==1) && (!SA) && (!ALYESKA.ENABLED))
;     |  /* EEA: Port 1 w/o Alyeska - IDEC port 115200 Baud*/                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1192| 
        cmpi      1,r0                  ; |1192| 
        bne       L259                  ; |1192| 
;*      Branch Occurs to L259           ; |1192| 
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1192| 
        ldiu      *ar0,r0               ; |1192| 
        cmpi      0,r0                  ; |1192| 
        bne       L259                  ; |1192| 
;*      Branch Occurs to L259           ; |1192| 
        ldp       @CL139,DP
        ldiu      @CL139,ar0            ; |1192| 
        ldiu      *ar0,r0               ; |1192| 
        cmpi      0,r0                  ; |1192| 
        bne       L259                  ; |1192| 
;*      Branch Occurs to L259           ; |1192| 
	.line	104
;----------------------------------------------------------------------
; 1193 | VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);                  
; 1194 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1193| 
        ldiu      @CL70,r0              ; |1193| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1193| 
        addi      @CL134,ar2            ; |1193| Unsigned
        ldp       @CL137+0,DP
        ldfu      @CL137+0,f2           ; |1193| 40b float hi half
        ldp       @CL137+1,DP
        ldiu      0,rc                  ; |1193| 
        ldiu      @CL137+1,r2           ; |1193| 40b float lo half
        ldiu      0,r3                  ; |1193| 
        callu     r0                    ; far call to _VAR_Update	; |1193| 
                                        ; |1193| Far Call Occurs
        bu        L260                  ; |1089| 
;*      Branch Occurs to L260           ; |1089| 
L259:        
	.line	106
;----------------------------------------------------------------------
; 1195 | VAR_Update(&PORTCFG[port].Baud_Rate, 9600.0, 0, 0);     /* All other po
;     | rts 9600 Baud */                                                       
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1195| 
        ldiu      @CL70,r0              ; |1195| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1195| 
        addi      @CL134,ar2            ; |1195| Unsigned
        ldp       @CL140+0,DP
        ldfu      @CL140+0,f2           ; |1195| 40b float hi half
        ldp       @CL140+1,DP
        ldiu      0,rc                  ; |1195| 
        ldiu      @CL140+1,r2           ; |1195| 40b float lo half
        ldiu      0,r3                  ; |1195| 
        callu     r0                    ; far call to _VAR_Update	; |1195| 
                                        ; |1195| Far Call Occurs
L260:        
	.line	109
;----------------------------------------------------------------------
; 1198 | PORTCFG[port].STP       = 1;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1198| 
        ldp       @CL49,DP
        mpyi      359,ir0               ; |1198| 
        ldiu      @CL49,ar0             ; |1198| 
        ldiu      1,r0                  ; |1198| 
        sti       r0,*+ar0(ir0)         ; |1198| 
	.line	110
;----------------------------------------------------------------------
; 1199 | PORTCFG[port].N     = 8;                                               
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      *+fp(2),ir0           ; |1199| 
        ldiu      @CL48,ar0             ; |1199| 
        mpyi      359,ir0               ; |1199| 
        ldiu      8,r0                  ; |1199| 
        sti       r0,*+ar0(ir0)         ; |1199| 
	.line	112
;----------------------------------------------------------------------
; 1201 | if ((port==1) && ALYESKA.ENABLED)                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1201| 
        cmpi      1,r0                  ; |1201| 
        bne       L263                  ; |1201| 
;*      Branch Occurs to L263           ; |1201| 
        ldp       @CL139,DP
        ldiu      @CL139,ar0            ; |1201| 
        ldiu      *ar0,r0               ; |1201| 
        cmpi      0,r0                  ; |1201| 
        beq       L263                  ; |1201| 
;*      Branch Occurs to L263           ; |1201| 
	.line	113
;----------------------------------------------------------------------
; 1202 | PORTCFG[port].N_retry = 0;                                             
; 1203 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1202| 
        ldp       @CL84,DP
        mpyi      359,ir0               ; |1202| 
        ldiu      @CL84,ar0             ; |1202| 
        ldiu      0,r0                  ; |1202| 
        sti       r0,*+ar0(ir0)         ; |1202| 
        bu        L264                  ; |1089| 
;*      Branch Occurs to L264           ; |1089| 
L263:        
	.line	115
;----------------------------------------------------------------------
; 1204 | PORTCFG[port].N_retry = 3;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1204| 
        ldp       @CL84,DP
        mpyi      359,ir0               ; |1204| 
        ldiu      @CL84,ar0             ; |1204| 
        ldiu      3,r0                  ; |1204| 
        sti       r0,*+ar0(ir0)         ; |1204| 
L264:        
	.line	117
;----------------------------------------------------------------------
; 1206 | PORTCFG[port].poll_time = 100;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1206| 
        ldp       @CL83,DP
        mpyi      359,ir0               ; |1206| 
        ldiu      @CL83,ar0             ; |1206| 
        ldiu      100,r0                ; |1206| 
        sti       r0,*+ar0(ir0)         ; |1206| 
	.line	118
;----------------------------------------------------------------------
; 1207 | PORTCFG[port].timeout = 1;                                             
;----------------------------------------------------------------------
        ldp       @CL146,DP
        ldiu      *+fp(2),ir0           ; |1207| 
        ldiu      @CL146,ar0            ; |1207| 
        mpyi      359,ir0               ; |1207| 
        ldiu      1,r0                  ; |1207| 
        sti       r0,*+ar0(ir0)         ; |1207| 
	.line	120
;----------------------------------------------------------------------
; 1209 | VAR_Initialize(&PORTCFG[port].EOT_Delay, c_not_used, u_generic_not_used
;     | , 100.0, 100.0, var_no_alarm);                                         
;----------------------------------------------------------------------
        ldiu      250,rs                ; |1209| 
        ldiu      4,re                  ; |1209| 
        ldp       @CL78,DP
        ldiu      *+fp(2),ar2           ; |1209| 
        mpyi      359,ar2               ; |1209| 
        addi      @CL78,ar2             ; |1209| Unsigned
        ldp       @CL141,DP
        ldiu      250,rc                ; |1209| 
        ldiu      @CL141,r0             ; |1209| 
        ldfu      1.0000000000e+02,f3   ; |1209| 
        ldfu      1.0000000000e+02,f2   ; |1209| 
        callu     r0                    ; far call to _VAR_Initialize	; |1209| 
                                        ; |1209| Far Call Occurs
	.line	121
;----------------------------------------------------------------------
; 1210 | VAR_Initialize(&PORTCFG[port].PREFIX, c_time, u_mfgr_specific_ct, 100.0
;     | , 100.0, var_no_alarm);                                                
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      *+fp(2),ar2           ; |1210| 
        mpyi      359,ar2               ; |1210| 
        addi      @CL73,ar2             ; |1210| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1210| 
        ldiu      243,rs                ; |1210| 
        ldiu      4,re                  ; |1210| 
        ldiu      70,rc                 ; |1210| 
        ldfu      1.0000000000e+02,f3   ; |1210| 
        ldfu      1.0000000000e+02,f2   ; |1210| 
        callu     r0                    ; far call to _VAR_Initialize	; |1210| 
                                        ; |1210| Far Call Occurs
	.line	122
;----------------------------------------------------------------------
; 1211 | VAR_Initialize(&PORTCFG[port].SUFFIX, c_time, u_mfgr_specific_ct, 100.0
;     | , 100.0, var_no_alarm);                                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1211| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1211| 
        addi      @CL76,ar2             ; |1211| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1211| 
        ldiu      243,rs                ; |1211| 
        ldiu      4,re                  ; |1211| 
        ldiu      70,rc                 ; |1211| 
        ldfu      1.0000000000e+02,f3   ; |1211| 
        ldfu      1.0000000000e+02,f2   ; |1211| 
        callu     r0                    ; far call to _VAR_Initialize	; |1211| 
                                        ; |1211| Far Call Occurs
	.line	127
;----------------------------------------------------------------------
; 1216 | VAR_Initialize(&PORTCFG[port].NETWDOG,          c_time,
;     |    u_mfgr_specific_ct,   100.0, 100.0, var_no_alarm);                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1216| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1216| 
        addi      @CL68,ar2             ; |1216| Unsigned
        ldiu      243,rs                ; |1216| 
        ldiu      4,re                  ; |1216| 
        ldp       @CL141,DP
        ldiu      70,rc                 ; |1216| 
        ldiu      @CL141,r0             ; |1216| 
        ldfu      1.0000000000e+02,f3   ; |1216| 
        ldfu      1.0000000000e+02,f2   ; |1216| 
        callu     r0                    ; far call to _VAR_Initialize	; |1216| 
                                        ; |1216| Far Call Occurs
	.line	128
;----------------------------------------------------------------------
; 1217 | VAR_Initialize(&PORTCFG[port].Retry_Time,   c_time,                   u
;     | _time_sec,               100.0, 100.0, var_no_alarm);                  
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldiu      *+fp(2),ar2           ; |1217| 
        mpyi      359,ar2               ; |1217| 
        addi      @CL81,ar2             ; |1217| Unsigned
        ldp       @CL141,DP
        ldiu      51,rs                 ; |1217| 
        ldiu      4,re                  ; |1217| 
        ldiu      70,rc                 ; |1217| 
        ldiu      @CL141,r0             ; |1217| 
        ldfu      1.0000000000e+02,f3   ; |1217| 
        ldfu      1.0000000000e+02,f2   ; |1217| 
        callu     r0                    ; far call to _VAR_Initialize	; |1217| 
                                        ; |1217| Far Call Occurs
	.line	129
;----------------------------------------------------------------------
; 1218 | VAR_Initialize(&PORTCFG[port].Num_Retry,    c_not_classified, u_mfgr_sp
;     | ecific_none, 1.0,   1.0,   var_no_alarm|var_round);                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1218| 
        ldp       @CL147,DP
        mpyi      359,ar2               ; |1218| 
        addi      @CL147,ar2            ; |1218| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1218| 
        ldiu      240,rs                ; |1218| 
        ldiu      260,re                ; |1218| 
        ldiu      0,rc                  ; |1218| 
        ldfu      1.0000000000e+00,f3   ; |1218| 
        ldfu      1.0000000000e+00,f2   ; |1218| 
        callu     r0                    ; far call to _VAR_Initialize	; |1218| 
                                        ; |1218| Far Call Occurs
	.line	130
;----------------------------------------------------------------------
; 1219 | VAR_Update(&PORTCFG[port].Num_Retry, 3.00, 0, 0);                      
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1219| 
        ldiu      @CL70,r0              ; |1219| 
        ldp       @CL147,DP
        mpyi      359,ar2               ; |1219| 
        addi      @CL147,ar2            ; |1219| Unsigned
        ldp       @CL148+0,DP
        ldfu      @CL148+0,f2           ; |1219| 40b float hi half
        ldp       @CL148+1,DP
        ldiu      0,rc                  ; |1219| 
        ldiu      @CL148+1,r2           ; |1219| 40b float lo half
        ldiu      0,r3                  ; |1219| 
        callu     r0                    ; far call to _VAR_Update	; |1219| 
                                        ; |1219| Far Call Occurs
	.line	131
;----------------------------------------------------------------------
; 1220 | sprintf(PORTCFG[port].Slave_ID.name,        "C%d Slave ID",         por
;     | t+1);        //R337                                                    
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1220| 
        addi      *+fp(2),r0            ; |1220| 
        ldp       @CL150,DP
        push      r0                    ; |1220| 
        ldiu      @CL150,r1             ; |1220| 
        push      r1                    ; |1220| 
        ldiu      *+fp(2),ar2           ; |1220| 
        ldp       @CL149,DP
        mpyi      359,ar2               ; |1220| 
        addi      @CL149,ar2            ; |1220| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1220| 
        callu     r0                    ; far call to _sprintf	; |1220| 
                                        ; |1220| Far Call Occurs
        subi      2,sp                  ; |1220| 
	.line	132
;----------------------------------------------------------------------
; 1221 | PORTCFG[port].Slave_ID.name_r = 337;                                   
;----------------------------------------------------------------------
        ldp       @CL152,DP
        ldiu      @CL152,ar0            ; |1221| 
        ldiu      *+fp(2),ir0           ; |1221| 
        mpyi      359,ir0               ; |1221| 
        ldiu      337,r0                ; |1221| 
        sti       r0,*+ar0(ir0)         ; |1221| 
	.line	134
;----------------------------------------------------------------------
; 1223 | sprintf(PORTCFG[port].Baud_Rate.name,   "C%d Baud Rate",        port+1)
;     | ;        //R334                                                        
;----------------------------------------------------------------------
        ldp       @CL154,DP
        ldiu      1,r0                  ; |1223| 
        ldiu      @CL154,r1             ; |1223| 
        addi      *+fp(2),r0            ; |1223| 
        push      r0                    ; |1223| 
        push      r1                    ; |1223| 
        ldiu      *+fp(2),ar2           ; |1223| 
        ldp       @CL153,DP
        mpyi      359,ar2               ; |1223| 
        addi      @CL153,ar2            ; |1223| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1223| 
        callu     r0                    ; far call to _sprintf	; |1223| 
                                        ; |1223| Far Call Occurs
        subi      2,sp                  ; |1223| 
	.line	135
;----------------------------------------------------------------------
; 1224 | PORTCFG[port].Baud_Rate.name_r = 334;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1224| 
        ldp       @CL155,DP
        mpyi      359,ir0               ; |1224| 
        ldiu      @CL155,ar0            ; |1224| 
        ldiu      334,r0                ; |1224| 
        sti       r0,*+ar0(ir0)         ; |1224| 
	.line	137
;----------------------------------------------------------------------
; 1226 | sprintf(PORTCFG[port].EOT_Delay.name,   "C%d Reply Delay",      port+1)
;     | ;        //R94                                                         
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1226| 
        ldp       @CL157,DP
        addi      *+fp(2),r0            ; |1226| 
        ldiu      @CL157,r1             ; |1226| 
        push      r0                    ; |1226| 
        push      r1                    ; |1226| 
        ldiu      *+fp(2),ar2           ; |1226| 
        ldp       @CL156,DP
        mpyi      359,ar2               ; |1226| 
        addi      @CL156,ar2            ; |1226| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1226| 
        callu     r0                    ; far call to _sprintf	; |1226| 
                                        ; |1226| Far Call Occurs
        subi      2,sp                  ; |1226| 
	.line	138
;----------------------------------------------------------------------
; 1227 | PORTCFG[port].EOT_Delay.name_r = 94;                                   
;----------------------------------------------------------------------
        ldp       @CL158,DP
        ldiu      *+fp(2),ir0           ; |1227| 
        ldiu      @CL158,ar0            ; |1227| 
        mpyi      359,ir0               ; |1227| 
        ldiu      94,r0                 ; |1227| 
        sti       r0,*+ar0(ir0)         ; |1227| 
	.line	140
;----------------------------------------------------------------------
; 1229 | sprintf(PORTCFG[port].PREFIX.name,              "C%d Prefix",
;     |  port+1);        //R335                                                
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1229| 
        ldp       @CL160,DP
        addi      *+fp(2),r0            ; |1229| 
        ldiu      @CL160,r1             ; |1229| 
        push      r0                    ; |1229| 
        push      r1                    ; |1229| 
        ldiu      *+fp(2),ar2           ; |1229| 
        ldp       @CL159,DP
        mpyi      359,ar2               ; |1229| 
        addi      @CL159,ar2            ; |1229| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1229| 
        callu     r0                    ; far call to _sprintf	; |1229| 
                                        ; |1229| Far Call Occurs
        subi      2,sp                  ; |1229| 
	.line	141
;----------------------------------------------------------------------
; 1230 | PORTCFG[port].PREFIX.name_r = 335;                                     
;----------------------------------------------------------------------
        ldp       @CL161,DP
        ldiu      *+fp(2),ir0           ; |1230| 
        ldiu      @CL161,ar0            ; |1230| 
        mpyi      359,ir0               ; |1230| 
        ldiu      335,r0                ; |1230| 
        sti       r0,*+ar0(ir0)         ; |1230| 
	.line	143
;----------------------------------------------------------------------
; 1232 | sprintf(PORTCFG[port].SUFFIX.name,              "C%d Suffix",
;     |  port+1);        //R338                                                
;----------------------------------------------------------------------
        ldp       @CL163,DP
        ldiu      @CL163,r1             ; |1232| 
        ldiu      1,r0                  ; |1232| 
        ldp       @CL162,DP
        addi      *+fp(2),r0            ; |1232| 
        push      r0                    ; |1232| 
        push      r1                    ; |1232| 
        ldiu      *+fp(2),ar2           ; |1232| 
        mpyi      359,ar2               ; |1232| 
        addi      @CL162,ar2            ; |1232| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1232| 
        callu     r0                    ; far call to _sprintf	; |1232| 
                                        ; |1232| Far Call Occurs
        subi      2,sp                  ; |1232| 
	.line	144
;----------------------------------------------------------------------
; 1233 | PORTCFG[port].SUFFIX.name_r = 338;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1233| 
        ldp       @CL164,DP
        mpyi      359,ir0               ; |1233| 
        ldiu      @CL164,ar0            ; |1233| 
        ldiu      338,r0                ; |1233| 
        sti       r0,*+ar0(ir0)         ; |1233| 
	.line	146
;----------------------------------------------------------------------
; 1235 | sprintf(PORTCFG[port].NETWDOG.name,     "C%d Watchdog",         port+1)
;     | ;        //R339                                                        
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1235| 
        addi      *+fp(2),r0            ; |1235| 
        ldp       @CL166,DP
        push      r0                    ; |1235| 
        ldiu      @CL166,r1             ; |1235| 
        push      r1                    ; |1235| 
        ldiu      *+fp(2),ar2           ; |1235| 
        ldp       @CL165,DP
        mpyi      359,ar2               ; |1235| 
        addi      @CL165,ar2            ; |1235| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1235| 
        callu     r0                    ; far call to _sprintf	; |1235| 
                                        ; |1235| Far Call Occurs
        subi      2,sp                  ; |1235| 
	.line	147
;----------------------------------------------------------------------
; 1236 | PORTCFG[port].NETWDOG.name_r = 339;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1236| 
        ldp       @CL167,DP
        mpyi      359,ir0               ; |1236| 
        ldiu      @CL167,ar0            ; |1236| 
        ldiu      339,r0                ; |1236| 
        sti       r0,*+ar0(ir0)         ; |1236| 
	.line	149
;----------------------------------------------------------------------
; 1238 | sprintf(PORTCFG[port].Retry_Time.name,  "C%d Retry Time",       port+1)
;     | ;        //R336                                                        
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1238| 
        ldp       @CL169,DP
        addi      *+fp(2),r0            ; |1238| 
        ldiu      @CL169,r1             ; |1238| 
        push      r0                    ; |1238| 
        push      r1                    ; |1238| 
        ldiu      *+fp(2),ar2           ; |1238| 
        ldp       @CL168,DP
        mpyi      359,ar2               ; |1238| 
        addi      @CL168,ar2            ; |1238| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1238| 
        callu     r0                    ; far call to _sprintf	; |1238| 
                                        ; |1238| Far Call Occurs
        subi      2,sp                  ; |1238| 
	.line	150
;----------------------------------------------------------------------
; 1239 | PORTCFG[port].Retry_Time.name_r = 336;                                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1239| 
        ldp       @CL170,DP
        mpyi      359,ir0               ; |1239| 
        ldiu      @CL170,ar0            ; |1239| 
        ldiu      336,r0                ; |1239| 
        sti       r0,*+ar0(ir0)         ; |1239| 
	.line	152
;----------------------------------------------------------------------
; 1241 | sprintf(PORTCFG[port].Num_Retry.name,   "C%d #Retries",         port+1)
;     | ;        //101                                                         
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1241| 
        addi      *+fp(2),r0            ; |1241| 
        ldp       @CL172,DP
        push      r0                    ; |1241| 
        ldiu      @CL172,r1             ; |1241| 
        push      r1                    ; |1241| 
        ldiu      *+fp(2),ar2           ; |1241| 
        ldp       @CL171,DP
        mpyi      359,ar2               ; |1241| 
        addi      @CL171,ar2            ; |1241| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1241| 
        callu     r0                    ; far call to _sprintf	; |1241| 
                                        ; |1241| Far Call Occurs
        subi      2,sp                  ; |1241| 
	.line	153
;----------------------------------------------------------------------
; 1242 | PORTCFG[port].Num_Retry.name_r = 101;                                  
;----------------------------------------------------------------------
        ldp       @CL173,DP
        ldiu      *+fp(2),ir0           ; |1242| 
        ldiu      @CL173,ar0            ; |1242| 
        mpyi      359,ir0               ; |1242| 
        ldiu      101,r0                ; |1242| 
        sti       r0,*+ar0(ir0)         ; |1242| 
	.line	156
;----------------------------------------------------------------------
; 1245 | PORTCFG[port].EOT_Delay.bound_hi_set    = 255.0;                       
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1245| 
        ldp       @CL174,DP
        mpyi      359,ir0               ; |1245| 
        ldiu      @CL174,ar0            ; |1245| 
        ldfu      2.5500000000e+02,f0   ; |1245| 
        stf       f0,*+ar0(ir0)         ; |1245| 
	.line	157
;----------------------------------------------------------------------
; 1246 | PORTCFG[port].PREFIX.bound_hi_set               = 255.0;               
;----------------------------------------------------------------------
        ldp       @CL175,DP
        ldiu      @CL175,ar0            ; |1246| 
        ldiu      *+fp(2),ir0           ; |1246| 
        mpyi      359,ir0               ; |1246| 
        ldfu      2.5500000000e+02,f0   ; |1246| 
        stf       f0,*+ar0(ir0)         ; |1246| 
	.line	158
;----------------------------------------------------------------------
; 1247 | PORTCFG[port].SUFFIX.bound_hi_set               = 255.0;               
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1247| 
        ldp       @CL176,DP
        mpyi      359,ir0               ; |1247| 
        ldiu      @CL176,ar0            ; |1247| 
        ldfu      2.5500000000e+02,f0   ; |1247| 
        stf       f0,*+ar0(ir0)         ; |1247| 
	.line	159
;----------------------------------------------------------------------
; 1248 | PORTCFG[port].NETWDOG.bound_hi_set              = 255.0;               
;----------------------------------------------------------------------
        ldp       @CL177,DP
        ldiu      *+fp(2),ir0           ; |1248| 
        mpyi      359,ir0               ; |1248| 
        ldiu      @CL177,ar0            ; |1248| 
        ldfu      2.5500000000e+02,f0   ; |1248| 
        stf       f0,*+ar0(ir0)         ; |1248| 
	.line	160
;----------------------------------------------------------------------
; 1249 | PORTCFG[port].Retry_Time.bound_hi_set   = 10.0;                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1249| 
        ldp       @CL178,DP
        mpyi      359,ir0               ; |1249| 
        ldiu      @CL178,ar0            ; |1249| 
        ldfu      1.0000000000e+01,f0   ; |1249| 
        stf       f0,*+ar0(ir0)         ; |1249| 
	.line	161
;----------------------------------------------------------------------
; 1250 | PORTCFG[port].EOT_Delay.bound_lo_set        = 0.0;                     
;----------------------------------------------------------------------
        ldp       @CL179,DP
        ldiu      *+fp(2),ir0           ; |1250| 
        ldiu      @CL179,ar0            ; |1250| 
        mpyi      359,ir0               ; |1250| 
        ldfu      0.0000000000e+00,f0   ; |1250| 
        stf       f0,*+ar0(ir0)         ; |1250| 
	.line	162
;----------------------------------------------------------------------
; 1251 | PORTCFG[port].PREFIX.bound_lo_set               = 0.0;                 
;----------------------------------------------------------------------
        ldp       @CL180,DP
        ldiu      @CL180,ar0            ; |1251| 
        ldiu      *+fp(2),ir0           ; |1251| 
        mpyi      359,ir0               ; |1251| 
        ldfu      0.0000000000e+00,f0   ; |1251| 
        stf       f0,*+ar0(ir0)         ; |1251| 
	.line	163
;----------------------------------------------------------------------
; 1252 | PORTCFG[port].SUFFIX.bound_lo_set               = 0.0;                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1252| 
        ldp       @CL181,DP
        mpyi      359,ir0               ; |1252| 
        ldiu      @CL181,ar0            ; |1252| 
        ldfu      0.0000000000e+00,f0   ; |1252| 
        stf       f0,*+ar0(ir0)         ; |1252| 
	.line	164
;----------------------------------------------------------------------
; 1253 | PORTCFG[port].NETWDOG.bound_lo_set              = 1.5;                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1253| 
        ldp       @CL182,DP
        mpyi      359,ir0               ; |1253| 
        ldiu      @CL182,ar0            ; |1253| 
        ldfu      1.5000000000e+00,f0   ; |1253| 
        stf       f0,*+ar0(ir0)         ; |1253| 
	.line	165
;----------------------------------------------------------------------
; 1254 | PORTCFG[port].Retry_Time.bound_lo_set   = 0.1;                         
;----------------------------------------------------------------------
        ldp       @CL183,DP
        ldiu      @CL183,ar0            ; |1254| 
        ldiu      *+fp(2),ir0           ; |1254| 
        ldp       @CL184,DP
        mpyi      359,ir0               ; |1254| 
        ldfu      @CL184,f0             ; |1254| 
        stf       f0,*+ar0(ir0)         ; |1254| 
	.line	167
;----------------------------------------------------------------------
; 1256 | if ((SA && B202_PORT && (port==0)) || (!SA && (port==4)))              
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1256| 
        ldiu      *ar0,r0               ; |1256| 
        cmpi      0,r0                  ; |1256| 
        beq       L268                  ; |1256| 
;*      Branch Occurs to L268           ; |1256| 
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |1256| 
        ldiu      32,r0                 ; |1256| 
        tstb3     *ar0,r0               ; |1256| 
        bne       L268                  ; |1256| 
;*      Branch Occurs to L268           ; |1256| 
        ldiu      *+fp(2),r0            ; |1256| 
        cmpi      0,r0                  ; |1256| 
        beq       L270                  ; |1256| 
;*      Branch Occurs to L270           ; |1256| 
L268:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1256| 
        ldiu      *ar0,r0               ; |1256| 
        cmpi      0,r0                  ; |1256| 
        bne       L271                  ; |1256| 
;*      Branch Occurs to L271           ; |1256| 
        ldiu      *+fp(2),r0            ; |1256| 
        cmpi      4,r0                  ; |1256| 
        bne       L271                  ; |1256| 
;*      Branch Occurs to L271           ; |1256| 
L270:        
	.line	169
;----------------------------------------------------------------------
; 1258 | LOOP_ENABLED.val        = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL185,DP
        ldiu      @CL185,ar0            ; |1258| 
        ldiu      1,r0                  ; |1258| 
        sti       r0,*ar0               ; |1258| 
	.line	170
;----------------------------------------------------------------------
; 1259 | AO[0].MANUAL            = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1259| 
        ldiu      0,r0                  ; |1259| 
        sti       r0,*ar0               ; |1259| 
	.line	172
;----------------------------------------------------------------------
; 1261 | VAR_Update(&PORTCFG[port].Slave_ID, 0.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1261| 
        ldiu      @CL70,r0              ; |1261| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1261| 
        addi      @CL133,ar2            ; |1261| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1261| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |1261| 
        ldiu      @CL72+1,r2            ; |1261| 40b float lo half
        ldiu      0,r3                  ; |1261| 
        callu     r0                    ; far call to _VAR_Update	; |1261| 
                                        ; |1261| Far Call Occurs
	.line	174
;----------------------------------------------------------------------
; 1263 | PORT[port].Slave                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |1263| 
        ldiu      *+fp(2),ir0           ; |1263| 
        mpyi      71,ir0                ; |1263| 
        ldiu      0,r0                  ; |1263| 
        sti       r0,*+ar0(ir0)         ; |1263| 
	.line	175
;----------------------------------------------------------------------
; 1264 | PORTCFG[port].Parity    = 'O'<<8;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1264| 
        ldp       @CL50,DP
        mpyi      359,ir0               ; |1264| 
        ldiu      @CL50,ar0             ; |1264| 
        ldiu      20224,r0              ; |1264| 
        sti       r0,*+ar0(ir0)         ; |1264| 
	.line	177
;----------------------------------------------------------------------
; 1266 | VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_H_EOT,     0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1266| 
        ldiu      *+fp(2),ar2           ; |1266| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1266| 
        addi      @CL78,ar2             ; |1266| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1266| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      @CL136+1,r2           ; |1266| 40b float lo half
        ldiu      0,rc                  ; |1266| 
        ldiu      0,r3                  ; |1266| 
        callu     r0                    ; far call to _VAR_Update	; |1266| 
                                        ; |1266| Far Call Occurs
	.line	178
;----------------------------------------------------------------------
; 1267 | VAR_Update(&PORTCFG[port].PREFIX,         DEFAULT_H_PREFIX,  0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1267| 
        ldiu      *+fp(2),ar2           ; |1267| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1267| 
        addi      @CL73,ar2             ; |1267| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1267| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      @CL74+1,r2            ; |1267| 40b float lo half
        ldiu      0,rc                  ; |1267| 
        ldiu      0,r3                  ; |1267| 
        callu     r0                    ; far call to _VAR_Update	; |1267| 
                                        ; |1267| Far Call Occurs
	.line	179
;----------------------------------------------------------------------
; 1268 | VAR_Update(&PORTCFG[port].SUFFIX,         DEFAULT_H_SUFFIX,  0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1268| 
        ldiu      *+fp(2),ar2           ; |1268| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1268| 
        addi      @CL76,ar2             ; |1268| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1268| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      @CL82+1,r2            ; |1268| 40b float lo half
        ldiu      0,rc                  ; |1268| 
        ldiu      0,r3                  ; |1268| 
        callu     r0                    ; far call to _VAR_Update	; |1268| 
                                        ; |1268| Far Call Occurs
	.line	180
;----------------------------------------------------------------------
; 1269 | VAR_Update(&PORTCFG[port].NETWDOG,        DEFAULT_H_NETWDOG, 0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1269| 
        ldiu      *+fp(2),ar2           ; |1269| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1269| 
        addi      @CL68,ar2             ; |1269| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1269| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      0,rc                  ; |1269| 
        ldiu      @CL136+1,r2           ; |1269| 40b float lo half
        ldiu      0,r3                  ; |1269| 
        callu     r0                    ; far call to _VAR_Update	; |1269| 
                                        ; |1269| Far Call Occurs
	.line	181
;----------------------------------------------------------------------
; 1270 | VAR_Update(&PORTCFG[port].Retry_Time, 0.500,                     0, 0);
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1270| 
        ldiu      @CL70,r0              ; |1270| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1270| 
        addi      @CL81,ar2             ; |1270| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1270| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      0,rc                  ; |1270| 
        ldiu      @CL82+1,r2            ; |1270| 40b float lo half
        ldiu      0,r3                  ; |1270| 
        callu     r0                    ; far call to _VAR_Update	; |1270| 
                                        ; |1270| Far Call Occurs
	.line	183
;----------------------------------------------------------------------
; 1272 | HCHANGE[0]              = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL187,DP
        ldiu      @CL187,ar0            ; |1272| 
        ldiu      1,r0                  ; |1272| 
        sti       r0,*ar0               ; |1272| 
	.line	184
;----------------------------------------------------------------------
; 1273 | HCHANGE[1]              = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL188,DP
        ldiu      @CL188,ar0            ; |1273| 
        sti       r0,*ar0               ; |1273| 
	.line	185
;----------------------------------------------------------------------
; 1274 | NUM_PREAMBLE_MS = 5;                                                   
;----------------------------------------------------------------------
        ldp       @CL189,DP
        ldiu      @CL189,ar0            ; |1274| 
        ldiu      5,r0                  ; |1274| 
        sti       r0,*ar0               ; |1274| 
	.line	186
;----------------------------------------------------------------------
; 1275 | NUM_PREAMBLE_SM = 5;                                                   
;----------------------------------------------------------------------
        ldp       @CL190,DP
        ldiu      @CL190,ar0            ; |1275| 
        sti       r0,*ar0               ; |1275| 
	.line	187
;----------------------------------------------------------------------
; 1276 | HCHANGE_COUNTER = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL191,DP
        ldiu      @CL191,ar0            ; |1276| 
        ldiu      0,r0                  ; |1276| 
        sti       r0,*ar0               ; |1276| 
        bu        L275                  ; |1089| 
;*      Branch Occurs to L275           ; |1089| 
L271:        
	.line	189
;----------------------------------------------------------------------
; 1278 | else if (!SA && (port==5))                                             
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1278| 
        ldiu      *ar0,r0               ; |1278| 
        cmpi      0,r0                  ; |1278| 
        bne       L274                  ; |1278| 
;*      Branch Occurs to L274           ; |1278| 
        ldiu      *+fp(2),r0            ; |1278| 
        cmpi      5,r0                  ; |1278| 
        bne       L274                  ; |1278| 
;*      Branch Occurs to L274           ; |1278| 
	.line	191
;----------------------------------------------------------------------
; 1280 | VAR_Update(&PORTCFG[port].Slave_ID, 0.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      r0,ar2
        ldiu      @CL70,r0              ; |1280| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1280| 
        addi      @CL133,ar2            ; |1280| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1280| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |1280| 
        ldiu      @CL72+1,r2            ; |1280| 40b float lo half
        ldiu      0,r3                  ; |1280| 
        callu     r0                    ; far call to _VAR_Update	; |1280| 
                                        ; |1280| Far Call Occurs
	.line	193
;----------------------------------------------------------------------
; 1282 | PORT[port].Slave                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1282| 
        ldiu      @CL102,ar0            ; |1282| 
        mpyi      71,ir0                ; |1282| 
        ldiu      0,r0                  ; |1282| 
        sti       r0,*+ar0(ir0)         ; |1282| 
	.line	194
;----------------------------------------------------------------------
; 1283 | PORTCFG[port].Parity    = 'N'<<8;                                      
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(2),ir0           ; |1283| 
        mpyi      359,ir0               ; |1283| 
        ldiu      @CL50,ar0             ; |1283| 
        ldiu      19968,r0              ; |1283| 
        sti       r0,*+ar0(ir0)         ; |1283| 
	.line	196
;----------------------------------------------------------------------
; 1285 | VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_EOT,              0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1285| 
        ldiu      *+fp(2),ar2           ; |1285| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1285| 
        addi      @CL78,ar2             ; |1285| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |1285| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r2            ; |1285| 40b float lo half
        ldiu      0,rc                  ; |1285| 
        ldiu      0,r3                  ; |1285| 
        callu     r0                    ; far call to _VAR_Update	; |1285| 
                                        ; |1285| Far Call Occurs
	.line	197
;----------------------------------------------------------------------
; 1286 | VAR_Update(&PORTCFG[port].PREFIX,         DEFAULT_PREFIX,       0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1286| 
        ldiu      @CL70,r0              ; |1286| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1286| 
        addi      @CL73,ar2             ; |1286| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1286| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |1286| 
        ldiu      @CL74+1,r2            ; |1286| 40b float lo half
        ldiu      0,r3                  ; |1286| 
        callu     r0                    ; far call to _VAR_Update	; |1286| 
                                        ; |1286| Far Call Occurs
	.line	198
;----------------------------------------------------------------------
; 1287 | VAR_Update(&PORTCFG[port].SUFFIX,         DEFAULT_SUFFIX,       0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1287| 
        ldiu      *+fp(2),ar2           ; |1287| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1287| 
        addi      @CL76,ar2             ; |1287| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1287| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1287| 40b float lo half
        ldiu      0,rc                  ; |1287| 
        ldiu      0,r3                  ; |1287| 
        callu     r0                    ; far call to _VAR_Update	; |1287| 
                                        ; |1287| Far Call Occurs
	.line	199
;----------------------------------------------------------------------
; 1288 | VAR_Update(&PORTCFG[port].NETWDOG,        DEFAULT_NETWDOG,      0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1288| 
        ldiu      *+fp(2),ar2           ; |1288| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1288| 
        addi      @CL68,ar2             ; |1288| Unsigned
        ldp       @CL69+0,DP
        ldfu      @CL69+0,f2            ; |1288| 40b float hi half
        ldp       @CL69+1,DP
        ldiu      @CL69+1,r2            ; |1288| 40b float lo half
        ldiu      0,rc                  ; |1288| 
        ldiu      0,r3                  ; |1288| 
        callu     r0                    ; far call to _VAR_Update	; |1288| 
                                        ; |1288| Far Call Occurs
	.line	200
;----------------------------------------------------------------------
; 1289 | VAR_Update(&PORTCFG[port].Retry_Time, 2.00,                     0, 0); 
; 1291 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1289| 
        ldp       @CL81,DP
        ldiu      *+fp(2),ar2           ; |1289| 
        mpyi      359,ar2               ; |1289| 
        addi      @CL81,ar2             ; |1289| Unsigned
        ldp       @CL138+0,DP
        ldfu      @CL138+0,f2           ; |1289| 40b float hi half
        ldp       @CL138+1,DP
        ldiu      @CL138+1,r2           ; |1289| 40b float lo half
        ldiu      0,rc                  ; |1289| 
        ldiu      0,r3                  ; |1289| 
        callu     r0                    ; far call to _VAR_Update	; |1289| 
                                        ; |1289| Far Call Occurs
        bu        L275                  ; |1089| 
;*      Branch Occurs to L275           ; |1089| 
L274:        
	.line	204
;----------------------------------------------------------------------
; 1293 | VAR_Update(&PORTCFG[port].EOT_Delay, DEFAULT_EOT,        0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1293| 
        ldiu      @CL70,r0              ; |1293| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1293| 
        addi      @CL78,ar2             ; |1293| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |1293| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |1293| 
        ldiu      @CL79+1,r2            ; |1293| 40b float lo half
        ldiu      0,r3                  ; |1293| 
        callu     r0                    ; far call to _VAR_Update	; |1293| 
                                        ; |1293| Far Call Occurs
	.line	205
;----------------------------------------------------------------------
; 1294 | VAR_Update(&PORTCFG[port].PREFIX,        DEFAULT_PREFIX, 0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1294| 
        ldiu      *+fp(2),ar2           ; |1294| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1294| 
        addi      @CL73,ar2             ; |1294| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1294| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |1294| 
        ldiu      @CL74+1,r2            ; |1294| 40b float lo half
        ldiu      0,r3                  ; |1294| 
        callu     r0                    ; far call to _VAR_Update	; |1294| 
                                        ; |1294| Far Call Occurs
	.line	206
;----------------------------------------------------------------------
; 1295 | VAR_Update(&PORTCFG[port].SUFFIX,        DEFAULT_SUFFIX, 0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1295| 
        ldiu      *+fp(2),ar2           ; |1295| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1295| 
        addi      @CL76,ar2             ; |1295| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1295| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1295| 40b float lo half
        ldiu      0,rc                  ; |1295| 
        ldiu      0,r3                  ; |1295| 
        callu     r0                    ; far call to _VAR_Update	; |1295| 
                                        ; |1295| Far Call Occurs
	.line	208
;----------------------------------------------------------------------
; 1297 | PORT[port].Slave         = 1;                                          
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1297| 
        ldiu      @CL102,ar0            ; |1297| 
        mpyi      71,ir0                ; |1297| 
        ldiu      1,r0                  ; |1297| 
        sti       r0,*+ar0(ir0)         ; |1297| 
	.line	209
;----------------------------------------------------------------------
; 1298 | PORTCFG[port].Parity = 'N'<<8;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1298| 
        ldp       @CL50,DP
        mpyi      359,ir0               ; |1298| 
        ldiu      @CL50,ar0             ; |1298| 
        ldiu      19968,r0              ; |1298| 
        sti       r0,*+ar0(ir0)         ; |1298| 
	.line	211
;----------------------------------------------------------------------
; 1300 | VAR_Update(&PORTCFG[port].Slave_ID,   PORT[port].Slave, 0, 0);         
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1300| 
        ldiu      @CL102,ar0            ; |1300| 
        ldp       @CL133,DP
        mpyi      71,ir0                ; |1300| 
        ldiu      *+fp(2),ar2           ; |1300| 
        mpyi      359,ar2               ; |1300| 
        addi      @CL133,ar2            ; |1300| Unsigned
        ldp       @CL70,DP
        ldiu      *+ar0(ir0),r1         ; |1300| 
        ldiu      @CL70,r0              ; |1300| 
        float     r1,f2                 ; |1300| 
        ldiu      0,rc                  ; |1300| 
        ldiu      0,r3                  ; |1300| 
        callu     r0                    ; far call to _VAR_Update	; |1300| 
                                        ; |1300| Far Call Occurs
	.line	212
;----------------------------------------------------------------------
; 1301 | VAR_Update(&PORTCFG[port].NETWDOG,        DEFAULT_NETWDOG,  0, 0);     
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1301| 
        ldiu      *+fp(2),ar2           ; |1301| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1301| 
        addi      @CL68,ar2             ; |1301| Unsigned
        ldp       @CL69+0,DP
        ldfu      @CL69+0,f2            ; |1301| 40b float hi half
        ldp       @CL69+1,DP
        ldiu      @CL69+1,r2            ; |1301| 40b float lo half
        ldiu      0,rc                  ; |1301| 
        ldiu      0,r3                  ; |1301| 
        callu     r0                    ; far call to _VAR_Update	; |1301| 
                                        ; |1301| Far Call Occurs
	.line	213
;----------------------------------------------------------------------
; 1302 | VAR_Update(&PORTCFG[port].Retry_Time, 0.400,                    0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1302| 
        ldiu      @CL70,r0              ; |1302| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1302| 
        addi      @CL81,ar2             ; |1302| Unsigned
        ldp       @CL192+0,DP
        ldfu      @CL192+0,f2           ; |1302| 40b float hi half
        ldp       @CL192+1,DP
        ldiu      @CL192+1,r2           ; |1302| 40b float lo half
        ldiu      0,rc                  ; |1302| 
        ldiu      0,r3                  ; |1302| 
        callu     r0                    ; far call to _VAR_Update	; |1302| 
                                        ; |1302| Far Call Occurs
L275:        
	.line	71
        ldiu      1,r0                  ; |1160| 
        addi      *+fp(2),r0            ; |1160| 
        sti       r0,*+fp(2)            ; |1160| 
        cmpi      8,r0                  ; |1160| 
        blt       L246                  ; |1160| 
;*      Branch Occurs to L246           ; |1160| 
L276:        
	.line	218
;----------------------------------------------------------------------
; 1307 | for (port=0;port<UART_MAX;port++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1307| 
        sti       r0,*+fp(2)            ; |1307| 
        ldiu      0,r3                  ; |1313| 
        ldiu      0,r2                  ; |1312| 
        ldiu      0,r1                  ; |1311| 
        ldiu      0,re                  ; |1310| 
        cmpi      8,r0                  ; |1307| 
        ldiu      0,rs                  ; |1314| 
        bge       L278                  ; |1307| 
;*      Branch Occurs to L278           ; |1307| 
L277:        
	.line	220
;----------------------------------------------------------------------
; 1309 | PORT[port].SNUM                 = SN_PIPE;                             
;----------------------------------------------------------------------
        ldp       @CL194,DP
        ldiu      *+fp(2),ir0           ; |1309| 
        ldiu      @CL194,ar1            ; |1309| 
        ldp       @CL193,DP
        mpyi      71,ir0                ; |1309| 
        ldiu      @CL193,ar0            ; |1309| 
        ldiu      *ar1,r0               ; |1309| 
        sti       r0,*+ar0(ir0)         ; |1309| 
	.line	221
;----------------------------------------------------------------------
; 1310 | PORT[port].tvector_main = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      *+fp(2),ir0           ; |1310| 
        ldiu      @CL38,ar0             ; |1310| 
        mpyi      71,ir0                ; |1310| 
        sti       re,*+ar0(ir0)         ; |1310| 
	.line	222
;----------------------------------------------------------------------
; 1311 | PORT[port].pvector_main = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      *+fp(2),ir0           ; |1311| 
        ldiu      @CL36,ar0             ; |1311| 
        mpyi      71,ir0                ; |1311| 
        sti       r1,*+ar0(ir0)         ; |1311| 
	.line	223
;----------------------------------------------------------------------
; 1312 | PORT[port].tvector              = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      *+fp(2),ir0           ; |1312| 
        ldiu      @CL37,ar0             ; |1312| 
        mpyi      71,ir0                ; |1312| 
        sti       r2,*+ar0(ir0)         ; |1312| 
	.line	224
;----------------------------------------------------------------------
; 1313 | PORT[port].pvector              = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      *+fp(2),ir0           ; |1313| 
        ldiu      @CL35,ar0             ; |1313| 
        mpyi      71,ir0                ; |1313| 
        sti       r3,*+ar0(ir0)         ; |1313| 
	.line	225
;----------------------------------------------------------------------
; 1314 | PORT[port].fvector              = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      @CL95,ar0             ; |1314| 
        ldiu      *+fp(2),ir0           ; |1314| 
        mpyi      71,ir0                ; |1314| 
        sti       rs,*+ar0(ir0)         ; |1314| 
	.line	218
        ldiu      1,r0                  ; |1307| 
        addi      *+fp(2),r0            ; |1307| 
        sti       r0,*+fp(2)            ; |1307| 
        cmpi      8,r0                  ; |1307| 
        blt       L277                  ; |1307| 
;*      Branch Occurs to L277           ; |1307| 
L278:        
	.line	228
;----------------------------------------------------------------------
; 1317 | List_Init(&LIST_MASTER_EMPTY);                                         
;----------------------------------------------------------------------
        ldp       @CL196,DP
        ldiu      @CL196,r0             ; |1317| 
        ldp       @CL195,DP
        ldiu      @CL195,ar2            ; |1317| 
        callu     r0                    ; far call to _List_Init	; |1317| 
                                        ; |1317| Far Call Occurs
	.line	230
;----------------------------------------------------------------------
; 1319 | for (i=0;i<MASTER_Q_LEN;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1319| 
        sti       r0,*+fp(3)            ; |1319| 
        ldiu      0,ar5                 ; |1327| 
        ldiu      0,ar4                 ; |1326| 
        ldiu      0,ar6                 ; |1323| 
        ldiu      0,ar7                 ; |1322| 
        ldiu      0,r5                  ; |1325| 
        ldiu      0,r4                  ; |1324| 
        ldfu      0.0000000000e+00,f6   ; |1332| 
        ldfu      0.0000000000e+00,f7   ; |1331| 
        cmpi      75,r0                 ; |1319| 
        bge       L280                  ; |1319| 
;*      Branch Occurs to L280           ; |1319| 
L279:        
	.line	232
;----------------------------------------------------------------------
; 1321 | QUEUE_MASTER[i].prev    = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |1321| 
        ldp       @CL197,DP
        mpyi      21,ir0                ; |1321| 
        ldiu      @CL197,ar0            ; |1321| 
        ldiu      0,r0                  ; |1321| 
        sti       r0,*+ar0(ir0)         ; |1321| 
	.line	233
;----------------------------------------------------------------------
; 1322 | QUEUE_MASTER[i].next    = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL198,DP
        ldiu      *+fp(3),ir0           ; |1322| 
        ldiu      @CL198,ar0            ; |1322| 
        mpyi      21,ir0                ; |1322| 
        sti       ar7,*+ar0(ir0)        ; |1322| 
	.line	234
;----------------------------------------------------------------------
; 1323 | QUEUE_MASTER[i].rxvect  = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldp       @CL199,DP
        ldiu      *+fp(3),ir0           ; |1323| 
        ldiu      @CL199,ar0            ; |1323| 
        mpyi      21,ir0                ; |1323| 
        sti       ar6,*+ar0(ir0)        ; |1323| 
	.line	235
;----------------------------------------------------------------------
; 1324 | QUEUE_MASTER[i].txvect  = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldp       @CL200,DP
        ldiu      *+fp(3),ir0           ; |1324| 
        ldiu      @CL200,ar0            ; |1324| 
        mpyi      21,ir0                ; |1324| 
        sti       r4,*+ar0(ir0)         ; |1324| 
	.line	236
;----------------------------------------------------------------------
; 1325 | QUEUE_MASTER[i].n               = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL201,DP
        ldiu      *+fp(3),ir0           ; |1325| 
        ldiu      @CL201,ar0            ; |1325| 
        mpyi      21,ir0                ; |1325| 
        sti       r5,*+ar0(ir0)         ; |1325| 
	.line	237
;----------------------------------------------------------------------
; 1326 | QUEUE_MASTER[i].slave   = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL202,DP
        ldiu      *+fp(3),ir0           ; |1326| 
        mpyi      21,ir0                ; |1326| 
        ldiu      @CL202,ar0            ; |1326| 
        sti       ar4,*+ar0(ir0)        ; |1326| 
	.line	238
;----------------------------------------------------------------------
; 1327 | QUEUE_MASTER[i].func    = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL203,DP
        ldiu      *+fp(3),ir0           ; |1327| 
        ldiu      @CL203,ar0            ; |1327| 
        mpyi      21,ir0                ; |1327| 
        sti       ar5,*+ar0(ir0)        ; |1327| 
	.line	239
;----------------------------------------------------------------------
; 1328 | QUEUE_MASTER[i].addr    = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |1328| 
        ldp       @CL204,DP
        mpyi      21,ir0                ; |1328| 
        ldiu      @CL204,ar0            ; |1328| 
        sti       r0,*+ar0(ir0)         ; |1328| 
	.line	240
;----------------------------------------------------------------------
; 1329 | QUEUE_MASTER[i].num     = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL205,DP
        ldiu      *+fp(3),ir0           ; |1329| 
        ldiu      @CL205,ar0            ; |1329| 
        mpyi      21,ir0                ; |1329| 
        sti       r0,*+ar0(ir0)         ; |1329| 
	.line	241
;----------------------------------------------------------------------
; 1330 | QUEUE_MASTER[i].v[0]    = 0.0;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |1330| 
        ldp       @CL206,DP
        mpyi      21,ir0                ; |1330| 
        ldiu      @CL206,ar0            ; |1330| 
        ldfu      0.0000000000e+00,f0   ; |1330| 
        stf       f0,*+ar0(ir0)         ; |1330| 
	.line	242
;----------------------------------------------------------------------
; 1331 | QUEUE_MASTER[i].v[1]    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL207,DP
        ldiu      *+fp(3),ir0           ; |1331| 
        ldiu      @CL207,ar0            ; |1331| 
        mpyi      21,ir0                ; |1331| 
        stf       f7,*+ar0(ir0)         ; |1331| 
	.line	243
;----------------------------------------------------------------------
; 1332 | QUEUE_MASTER[i].v[2]    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL208,DP
        ldiu      *+fp(3),ir0           ; |1332| 
        ldiu      @CL208,ar0            ; |1332| 
        mpyi      21,ir0                ; |1332| 
        stf       f6,*+ar0(ir0)         ; |1332| 
	.line	244
;----------------------------------------------------------------------
; 1333 | QUEUE_MASTER[i].v[3]    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL209,DP
        ldiu      *+fp(3),ir0           ; |1333| 
        ldiu      @CL209,ar0            ; |1333| 
        mpyi      21,ir0                ; |1333| 
        ldfu      0.0000000000e+00,f0   ; |1333| 
        stf       f0,*+ar0(ir0)         ; |1333| 
	.line	245
;----------------------------------------------------------------------
; 1334 | QUEUE_MASTER[i].v[4]    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL210,DP
        ldiu      @CL210,ar0            ; |1334| 
        ldiu      *+fp(3),ir0           ; |1334| 
        mpyi      21,ir0                ; |1334| 
        ldfu      0.0000000000e+00,f0   ; |1334| 
        stf       f0,*+ar0(ir0)         ; |1334| 
	.line	246
;----------------------------------------------------------------------
; 1335 | QUEUE_MASTER[i].flt_ptr = (float*)0;                                   
;----------------------------------------------------------------------
        ldp       @CL211,DP
        ldiu      *+fp(3),ir0           ; |1335| 
        ldiu      @CL211,ar0            ; |1335| 
        mpyi      21,ir0                ; |1335| 
        ldiu      0,r0                  ; |1335| 
        sti       r0,*+ar0(ir0)         ; |1335| 
	.line	247
;----------------------------------------------------------------------
; 1336 | QUEUE_MASTER[i].int_ptr = (int*)0;                                     
;----------------------------------------------------------------------
        ldp       @CL212,DP
        ldiu      *+fp(3),ir0           ; |1336| 
        ldiu      @CL212,ar0            ; |1336| 
        mpyi      21,ir0                ; |1336| 
        sti       r0,*+ar0(ir0)         ; |1336| 
	.line	249
;----------------------------------------------------------------------
; 1338 | List_Add(&LIST_MASTER_EMPTY, (GENERIC*)(&QUEUE_MASTER[i]));            
;----------------------------------------------------------------------
        ldp       @CL213,DP
        ldiu      @CL213,r0             ; |1338| 
        ldiu      *+fp(3),r2            ; |1338| 
        ldp       @CL197,DP
        mpyi      21,r2                 ; |1338| 
        addi      @CL197,r2             ; |1338| Unsigned
        ldp       @CL195,DP
        ldiu      @CL195,ar2            ; |1338| 
        callu     r0                    ; far call to _List_Add	; |1338| 
                                        ; |1338| Far Call Occurs
	.line	230
        ldiu      1,r0                  ; |1319| 
        addi      *+fp(3),r0            ; |1319| 
        sti       r0,*+fp(3)            ; |1319| 
        cmpi      75,r0                 ; |1319| 
        blt       L279                  ; |1319| 
;*      Branch Occurs to L279           ; |1319| 
L280:        
	.line	252
;----------------------------------------------------------------------
; 1341 | for (port=0;port<UART_MAX;port++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1341| 
        sti       r0,*+fp(2)            ; |1341| 
        cmpi      8,r0                  ; |1341| 
        bge       L282                  ; |1341| 
;*      Branch Occurs to L282           ; |1341| 
L281:        
	.line	253
;----------------------------------------------------------------------
; 1342 | List_Init(&PORT[port].MASTER);                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1342| 
        ldp       @CL214,DP
        mpyi      71,ar2                ; |1342| 
        addi      @CL214,ar2            ; |1342| Unsigned
        ldp       @CL196,DP
        ldiu      @CL196,r0             ; |1342| 
        callu     r0                    ; far call to _List_Init	; |1342| 
                                        ; |1342| Far Call Occurs
	.line	252
        ldiu      1,r0                  ; |1341| 
        addi      *+fp(2),r0            ; |1341| 
        sti       r0,*+fp(2)            ; |1341| 
        cmpi      8,r0                  ; |1341| 
        blt       L281                  ; |1341| 
;*      Branch Occurs to L281           ; |1341| 
L282:        
	.line	255
;----------------------------------------------------------------------
; 1344 | if ((!SA && (DIO_HART_5.val && (PORT[4].Slave==0))) || (SA && (DIO_HART
;     | _5.val && (PORT[0].Slave==0))))                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1344| 
        ldiu      *ar0,r0               ; |1344| 
        cmpi      0,r0                  ; |1344| 
        bne       L285                  ; |1344| 
;*      Branch Occurs to L285           ; |1344| 
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1344| 
        ldiu      *ar0,r0               ; |1344| 
        cmpi      0,r0                  ; |1344| 
        beq       L285                  ; |1344| 
;*      Branch Occurs to L285           ; |1344| 
        ldp       @CL215,DP
        ldiu      @CL215,ar0            ; |1344| 
        ldiu      *ar0,r0               ; |1344| 
        cmpi      0,r0                  ; |1344| 
        beq       L288                  ; |1344| 
;*      Branch Occurs to L288           ; |1344| 
L285:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1344| 
        ldiu      *ar0,r0               ; |1344| 
        cmpi      0,r0                  ; |1344| 
        beq       L289                  ; |1344| 
;*      Branch Occurs to L289           ; |1344| 
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1344| 
        ldiu      *ar0,r0               ; |1344| 
        cmpi      0,r0                  ; |1344| 
        beq       L289                  ; |1344| 
;*      Branch Occurs to L289           ; |1344| 
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |1344| 
        ldiu      *ar0,r0               ; |1344| 
        cmpi      0,r0                  ; |1344| 
        bne       L289                  ; |1344| 
;*      Branch Occurs to L289           ; |1344| 
L288:        
	.line	256
;----------------------------------------------------------------------
; 1345 | AO[0].MANUAL = FALSE;                                                  
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1345| 
        ldiu      0,r0                  ; |1345| 
        sti       r0,*ar0               ; |1345| 
        bu        L299                  ; |1089| 
;*      Branch Occurs to L299           ; |1089| 
L289:        
	.line	257
;----------------------------------------------------------------------
; 1346 | else if ((!SA && (DIO_HART_5.val && (PORT[4].Slave!=0))) || (SA && (DIO
;     | _HART_5.val && (PORT[0].Slave!=0))))                                   
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1346| 
        ldiu      *ar0,r0               ; |1346| 
        cmpi      0,r0                  ; |1346| 
        bne       L292                  ; |1346| 
;*      Branch Occurs to L292           ; |1346| 
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1346| 
        ldiu      *ar0,r0               ; |1346| 
        cmpi      0,r0                  ; |1346| 
        beq       L292                  ; |1346| 
;*      Branch Occurs to L292           ; |1346| 
        ldp       @CL215,DP
        ldiu      @CL215,ar0            ; |1346| 
        ldiu      *ar0,r0               ; |1346| 
        cmpi      0,r0                  ; |1346| 
        bne       L295                  ; |1346| 
;*      Branch Occurs to L295           ; |1346| 
L292:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1346| 
        ldiu      *ar0,r0               ; |1346| 
        cmpi      0,r0                  ; |1346| 
        beq       L296                  ; |1346| 
;*      Branch Occurs to L296           ; |1346| 
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1346| 
        ldiu      *ar0,r0               ; |1346| 
        cmpi      0,r0                  ; |1346| 
        beq       L296                  ; |1346| 
;*      Branch Occurs to L296           ; |1346| 
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |1346| 
        ldiu      *ar0,r0               ; |1346| 
        cmpi      0,r0                  ; |1346| 
        beq       L296                  ; |1346| 
;*      Branch Occurs to L296           ; |1346| 
L295:        
	.line	258
;----------------------------------------------------------------------
; 1347 | AO[0].MANUAL = TRUE;                                                   
; 1348 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1347| 
        ldiu      1,r0                  ; |1347| 
        sti       r0,*ar0               ; |1347| 
        bu        L299                  ; |1089| 
;*      Branch Occurs to L299           ; |1089| 
L296:        
	.line	261
;----------------------------------------------------------------------
; 1350 | if (LOOP_ENABLED.val)                                                  
;----------------------------------------------------------------------
        ldp       @CL185,DP
        ldiu      @CL185,ar0            ; |1350| 
        ldiu      *ar0,r0               ; |1350| 
        cmpi      0,r0                  ; |1350| 
        beq       L298                  ; |1350| 
;*      Branch Occurs to L298           ; |1350| 
	.line	262
;----------------------------------------------------------------------
; 1351 | AO[0].MANUAL = FALSE;                                                  
; 1352 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1351| 
        ldiu      0,r0                  ; |1351| 
        sti       r0,*ar0               ; |1351| 
        bu        L299                  ; |1089| 
;*      Branch Occurs to L299           ; |1089| 
L298:        
	.line	264
;----------------------------------------------------------------------
; 1353 | AO[0].MANUAL = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1353| 
        ldiu      1,r0                  ; |1353| 
        sti       r0,*ar0               ; |1353| 
L299:        
	.line	268
;----------------------------------------------------------------------
; 1357 | URESET;                                                                
; 1358 | {asm("  RPTS    100                     ");\                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL216,DP
        ldiu      @CL216,ar0            ; |1357| 
        ldiu      8,r0                  ; |1357| 
        or3       r0,*ar0,r0            ; |1357| 
        sti       r0,*ar0               ; |1357| 
	pop		ST			
	.line	270
;----------------------------------------------------------------------
; 1359 | asm("  NOP                                     ");}                    
;----------------------------------------------------------------------
	RPTS    100			
	NOP					
	.line	271
;----------------------------------------------------------------------
; 1360 | _URESET;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      247,r0                ; |1360| 
        and3      r0,*ar0,r0            ; |1360| 
        sti       r0,*ar0               ; |1360| 
	pop		ST			
	.line	273
;----------------------------------------------------------------------
; 1362 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1362| 
        ldiu      *ar0,r0               ; |1362| 
        cmpi      0,r0                  ; |1362| 
        bne       L306                  ; |1362| 
;*      Branch Occurs to L306           ; |1362| 
	.line	275
;----------------------------------------------------------------------
; 1364 | HART_Initialize(4);                                                    
;----------------------------------------------------------------------
        ldp       @CL217,DP
        ldiu      4,ar2                 ; |1364| 
        ldiu      @CL217,r0             ; |1364| 
        callu     r0                    ; far call to _HART_Initialize	; |1364| 
                                        ; |1364| Far Call Occurs
	.line	277
;----------------------------------------------------------------------
; 1366 | for (i=0;i<4;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1366| 
        sti       r0,*+fp(3)            ; |1366| 
        cmpi      4,r0                  ; |1366| 
        bge       L302                  ; |1366| 
;*      Branch Occurs to L302           ; |1366| 
L301:        
	.line	278
;----------------------------------------------------------------------
; 1367 | Modbus_Initialize(i);                                                  
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      *+fp(3),ar2           ; |1367| 
        ldiu      @CL218,r0             ; |1367| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1367| 
                                        ; |1367| Far Call Occurs
	.line	277
        ldiu      1,r0                  ; |1366| 
        addi      *+fp(3),r0            ; |1366| 
        sti       r0,*+fp(3)            ; |1366| 
        cmpi      4,r0                  ; |1366| 
        blt       L301                  ; |1366| 
;*      Branch Occurs to L301           ; |1366| 
L302:        
	.line	281
;----------------------------------------------------------------------
; 1370 | Setup_UART(5, 115200, 8, 'N', 1);                                      
;----------------------------------------------------------------------
        ldp       @CL220,DP
        ldiu      8,rc                  ; |1370| 
        ldiu      78,rs                 ; |1370| 
        ldiu      @CL220,r0             ; |1370| 
        ldiu      5,ar2                 ; |1370| 
        ldp       @CL219,DP
        ldfu      1.0000000000e+00,f2   ; |1370| 
        ldiu      @CL219,r3             ; |1370| 
        callu     r0                    ; far call to _Setup_UART	; |1370| 
                                        ; |1370| Far Call Occurs
	.line	283
;----------------------------------------------------------------------
; 1372 | Modbus_Initialize(6);   /* dedicated OIT port */                       
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      @CL218,r0             ; |1372| 
        ldiu      6,ar2                 ; |1372| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1372| 
                                        ; |1372| Far Call Occurs
	.line	284
;----------------------------------------------------------------------
; 1373 | Modbus_Initialize(7);   /* dedicated PDI port */                       
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      @CL218,r0             ; |1373| 
        ldiu      7,ar2                 ; |1373| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1373| 
                                        ; |1373| Far Call Occurs
	.line	286
;----------------------------------------------------------------------
; 1375 | if (PORT[7].PRESENT)                                                   
;----------------------------------------------------------------------
        ldp       @CL221,DP
        ldiu      @CL221,ar0            ; |1375| 
        ldiu      *ar0,r0               ; |1375| 
        cmpi      0,r0                  ; |1375| 
        beq       L304                  ; |1375| 
;*      Branch Occurs to L304           ; |1375| 
	.line	287
;----------------------------------------------------------------------
; 1376 | PDI_id = 7;                                                            
;----------------------------------------------------------------------
        ldp       @CL222,DP
        ldiu      @CL222,ar0            ; |1376| 
        ldiu      7,r0                  ; |1376| 
        sti       r0,*ar0               ; |1376| 
        bu        L309                  ; |1089| 
;*      Branch Occurs to L309           ; |1089| 
L304:        
	.line	288
;----------------------------------------------------------------------
; 1377 | else if (PORT[0].PRESENT)                                              
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |1377| 
        ldiu      *ar0,r0               ; |1377| 
        cmpi      0,r0                  ; |1377| 
        beq       L309                  ; |1377| 
;*      Branch Occurs to L309           ; |1377| 
	.line	289
;----------------------------------------------------------------------
; 1378 | PDI_id = 0;                                                            
; 1380 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL222,DP
        ldiu      @CL222,ar0            ; |1378| 
        ldiu      0,r0                  ; |1378| 
        sti       r0,*ar0               ; |1378| 
        bu        L309                  ; |1089| 
;*      Branch Occurs to L309           ; |1089| 
L306:        
	.line	293
;----------------------------------------------------------------------
; 1382 | PDI_id = 1;                                                            
;----------------------------------------------------------------------
        ldp       @CL222,DP
        ldiu      @CL222,ar0            ; |1382| 
        ldiu      1,r0                  ; |1382| 
        sti       r0,*ar0               ; |1382| 
	.line	295
;----------------------------------------------------------------------
; 1384 | Modbus_Initialize(1);   /* dedicated OIT port */                       
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      1,ar2                 ; |1384| 
        ldiu      @CL218,r0             ; |1384| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1384| 
                                        ; |1384| Far Call Occurs
	.line	297
;----------------------------------------------------------------------
; 1386 | if (B202_PORT)                                                         
;----------------------------------------------------------------------
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |1386| 
        ldiu      32,r0                 ; |1386| 
        tstb3     *ar0,r0               ; |1386| 
        bne       L308                  ; |1386| 
;*      Branch Occurs to L308           ; |1386| 
	.line	298
;----------------------------------------------------------------------
; 1387 | HART_Initialize(0);                                                    
; 1388 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL217,DP
        ldiu      0,ar2                 ; |1387| 
        ldiu      @CL217,r0             ; |1387| 
        callu     r0                    ; far call to _HART_Initialize	; |1387| 
                                        ; |1387| Far Call Occurs
        bu        L309                  ; |1089| 
;*      Branch Occurs to L309           ; |1089| 
L308:        
	.line	300
;----------------------------------------------------------------------
; 1389 | Modbus_Initialize(0);                                                  
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      0,ar2                 ; |1389| 
        ldiu      @CL218,r0             ; |1389| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1389| 
                                        ; |1389| Far Call Occurs
L309:        
	.line	303
;----------------------------------------------------------------------
; 1392 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL129,DP
        ldiu      @CL129,ar0            ; |1392| 
        ldiu      8,r0                  ; |1392| 
        or3       r0,*ar0,r0            ; |1392| 
        sti       r0,*ar0               ; |1392| 
        ldiu      128,r0                ; |1392| 
        or3       r0,*ar0,r0            ; |1392| 
        sti       r0,*ar0               ; |1392| 
	pop		ST			
	pop		ST			
	.line	304
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar7
        pop       ar6
        pop       ar5
        pop       ar4
        popf      f7
        popf      f6
        pop       r5
        pop       r4
                                        ; Unallocate the Frame
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1393,00000f0f0h,3



	.global	_UART
_UART:	.usect	"UART_ADDR",128,1
	.sym	_UART,_UART,252,2,4096,,8,16

	.global	_SP0_RX_DATA
	.bss	_SP0_RX_DATA,1
	.sym	_SP0_RX_DATA,_SP0_RX_DATA,14,2,32

	.global	_QUEUE_MASTER
	.bss	_QUEUE_MASTER,1575
	.sym	_QUEUE_MASTER,_QUEUE_MASTER,56,2,50400,.fake14,75

	.global	_TXbuf
_TXbuf:	.usect	"internal_RAM",2456,1
	.sym	_TXbuf,_TXbuf,56,2,78592,.fake10,8

	.global	_PORTCFG
_PORTCFG:	.usect	"CFG",2872,1
	.sym	_PORTCFG,_PORTCFG,56,2,91904,.fake13,8

	.global	_PORT
_PORT:	.usect	"internal_RAM",568,1
	.sym	_PORT,_PORT,56,2,18176,.fake12,8

	.global	_vect_p0
_vect_p0:	.usect	"internal_RAM",1,1
	.sym	_vect_p0,_vect_p0,20,2,32

	.global	_vect_p1
_vect_p1:	.usect	"internal_RAM",1,1
	.sym	_vect_p1,_vect_p1,20,2,32

	.global	_vect_p2
_vect_p2:	.usect	"internal_RAM",1,1
	.sym	_vect_p2,_vect_p2,20,2,32

	.global	_LIST_MASTER_EMPTY
	.bss	_LIST_MASTER_EMPTY,3
	.sym	_LIST_MASTER_EMPTY,_LIST_MASTER_EMPTY,8,2,96,.fake4

	.global	_vect_p3
_vect_p3:	.usect	"internal_RAM",1,1
	.sym	_vect_p3,_vect_p3,20,2,32

	.global	_vect_p4
_vect_p4:	.usect	"internal_RAM",1,1
	.sym	_vect_p4,_vect_p4,20,2,32

	.global	_vect_p5
_vect_p5:	.usect	"internal_RAM",1,1
	.sym	_vect_p5,_vect_p5,20,2,32

	.global	_vect_p6
_vect_p6:	.usect	"internal_RAM",1,1
	.sym	_vect_p6,_vect_p6,20,2,32

	.global	_vect_p7
_vect_p7:	.usect	"internal_RAM",1,1
	.sym	_vect_p7,_vect_p7,20,2,32

	.global	_RXbuf
_RXbuf:	.usect	"internal_RAM",2456,1
	.sym	_RXbuf,_RXbuf,56,2,78592,.fake10,8

	.global	_PDI_id
	.bss	_PDI_id,1
	.sym	_PDI_id,_PDI_id,4,2,32
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"C%d Slave ID",0
SL2:	.byte	"C%d Baud Rate",0
SL3:	.byte	"C%d Reply Delay",0
SL4:	.byte	"C%d Prefix",0
SL5:	.byte	"C%d Suffix",0
SL6:	.byte	"C%d Watchdog",0
SL7:	.byte	"C%d Retry Time",0
SL8:	.byte	"C%d #Retries",0
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
	.bss	CL67,2
	.bss	CL68,1
	.bss	CL69,2
	.bss	CL70,1
	.bss	CL71,1
	.bss	CL72,2
	.bss	CL73,1
	.bss	CL74,2
	.bss	CL75,1
	.bss	CL76,1
	.bss	CL77,1
	.bss	CL78,1
	.bss	CL79,2
	.bss	CL80,1
	.bss	CL81,1
	.bss	CL82,2
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
	.bss	CL135,2
	.bss	CL136,2
	.bss	CL137,2
	.bss	CL138,2
	.bss	CL139,1
	.bss	CL140,2
	.bss	CL141,1
	.bss	CL142,1
	.bss	CL143,1
	.bss	CL144,1
	.bss	CL145,1
	.bss	CL146,1
	.bss	CL147,1
	.bss	CL148,2
	.bss	CL149,1
	.bss	CL150,1
	.bss	CL151,1
	.bss	CL152,1
	.bss	CL153,1
	.bss	CL154,1
	.bss	CL155,1
	.bss	CL156,1
	.bss	CL157,1
	.bss	CL158,1
	.bss	CL159,1
	.bss	CL160,1
	.bss	CL161,1
	.bss	CL162,1
	.bss	CL163,1
	.bss	CL164,1
	.bss	CL165,1
	.bss	CL166,1
	.bss	CL167,1
	.bss	CL168,1
	.bss	CL169,1
	.bss	CL170,1
	.bss	CL171,1
	.bss	CL172,1
	.bss	CL173,1
	.bss	CL174,1
	.bss	CL175,1
	.bss	CL176,1
	.bss	CL177,1
	.bss	CL178,1
	.bss	CL179,1
	.bss	CL180,1
	.bss	CL181,1
	.bss	CL182,1
	.bss	CL183,1
	.bss	CL184,1
	.bss	CL185,1
	.bss	CL186,1
	.bss	CL187,1
	.bss	CL188,1
	.bss	CL189,1
	.bss	CL190,1
	.bss	CL191,1
	.bss	CL192,2
	.bss	CL193,1
	.bss	CL194,1
	.bss	CL195,1
	.bss	CL196,1
	.bss	CL197,1
	.bss	CL198,1
	.bss	CL199,1
	.bss	CL200,1
	.bss	CL201,1
	.bss	CL202,1
	.bss	CL203,1
	.bss	CL204,1
	.bss	CL205,1
	.bss	CL206,1
	.bss	CL207,1
	.bss	CL208,1
	.bss	CL209,1
	.bss	CL210,1
	.bss	CL211,1
	.bss	CL212,1
	.bss	CL213,1
	.bss	CL214,1
	.bss	CL215,1
	.bss	CL216,1
	.bss	CL217,1
	.bss	CL218,1
	.bss	CL219,1
	.bss	CL220,1
	.bss	CL221,1
	.bss	CL222,1

	.sect	".cinit"
	.field  	235,32
	.field  	CL1+0,32
	.field  	_SP0_RX_DATA,32
	.field  	8421440,32
	.field  	8421442,32
	.field  	8421443,32
	.field  	8421446,32
	.field  	65537,32
	.field  	8421444,32
	.field  	244580420,32
	.field  	8421452,32
	.field  	_PORT+62,32
	.field  	_RXbuf+306,32
	.field  	_PORT+4,32
	.field  	_PORT+7,32
	.field  	_UART+2,32
	.field  	_RXbuf,32
	.field  	_Clear,32
	.field  	_UART+1,32
	.field  	_PORT+59,32
	.field  	_PORT+60,32
	.field  	_PORT+61,32
	.field  	_PORT+46,32
	.field  	_PORT+47,32
	.field  	_PORT+45,32
	.field  	_PORT+44,32
	.field  	_PORT+37,32
	.field  	_SA,32
	.field  	_UART,32
	.field  	9437202,32
	.field  	_Clear_RX,32
	.field  	_TIMER1_COUNTER,32
	.field  	_PORT+14,32
	.field  	_PORT+10,32
	.field  	_PORT+50,32
	.field  	_PORT+51,32
	.field  	_PORT+39,32
	.field  	_PORT+40,32
	.field  	_PORT+38,32
	.field  	_PORT+41,32
	.field  	_PORT+3,32
	.field  	_RESET_PKT,32
	.field  	_PORT+2,32
	.field  	_UART+7,32
	.field  	_UART+8,32
	.field  	_No_Port,32
	.field  	9437190,32
	.field  	_UART+4,32
	.field  	_UART+3,32
	.field  	_PORTCFG+223,32
	.field  	_PORTCFG+222,32
	.field  	_PORTCFG+220,32
	.field  	_CLOCK,32
	.word   	020000000H ; float   4.294967296000000e+09
	.word   	0FF000000H ; double  5.000000000000000e-01
	.word   	0FC000000H ; double  6.250000000000000e-02
	.field  	_round,32
	.field  	_Set_Baud,32
	.field  	_PORT+43,32
	.field  	_PORT+53,32
	.field  	_PORT+54,32
	.field  	_PORT+55,32
	.field  	_PORT+56,32
	.field  	_PORT+57,32
	.field  	_PORT+58,32
	.field  	_TXbuf,32
	.field  	_PORTCFG+221,32
	.field  	_PORTCFG+97,32
	.word   	0FC4CCCCCH ; ldouble 1.000000000000000e-01
	.word   	04CCCCCCDH ; ldouble
	.field  	_PORTCFG+88,32
	.word   	005480000H ; ldouble 5.000000000000000e+01
	.word   	048000000H ; ldouble
	.field  	_VAR_Update,32
	.field  	_PORTCFG+9,32
	.word   	080000000H ; ldouble 0.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_PORTCFG,32
	.word   	000400000H ; ldouble 1.500000000000000e+00
	.word   	040000000H ; ldouble
	.field  	_PORTCFG+53,32
	.field  	_PORTCFG+44,32
	.field  	_PORTCFG+234,32
	.field  	_PORTCFG+225,32
	.word   	003200000H ; ldouble 1.000000000000000e+01
	.word   	020000000H ; ldouble
	.field  	_PORTCFG+278,32
	.field  	_PORTCFG+269,32
	.word   	0FF000000H ; ldouble 5.000000000000000e-01
	.word   	000000000H ; ldouble
	.field  	_PORTCFG+357,32
	.field  	_PORTCFG+224,32
	.field  	_TIME1,32
	.field  	_ceil,32
	.field  	_PORT+11,32
	.field  	_PORT+12,32
	.field  	_PORT+13,32
	.field  	_PORT+6,32
	.field  	_PORT+5,32
	.field  	_PORT+9,32
	.field  	_PORT+52,32
	.field  	_PORT+8,32
	.field  	_PORT+42,32
	.field  	_PORT+35,32
	.field  	65535,32
	.field  	_TXbuf+2,32
	.field  	_Get,32
	.field  	_UART+6,32
	.field  	_UART+5,32
	.field  	_PORT,32
	.field  	_TIMER1_COUNTER+2,32
	.field  	_Put,32
	.field  	_RXbuf+2,32
	.field  	_vect_p0,32
	.field  	_vect_p1,32
	.field  	_PORT+110,32
	.field  	_vect_p2,32
	.field  	_PORT+181,32
	.field  	_vect_p3,32
	.field  	_PORT+252,32
	.field  	_vect_p4,32
	.field  	_PORT+323,32
	.field  	_vect_p5,32
	.field  	_PORT+394,32
	.field  	_vect_p6,32
	.field  	_PORT+465,32
	.field  	_vect_p7,32
	.field  	_PORT+536,32
	.field  	SW0,32
	.field  	SW1,32
	.field  	_TX_S1,32
	.field  	_TX_S,32
	.field  	9437203,32
	.field  	_TX_P1,32
	.field  	_TXbuf+4,32
	.field  	_TX_P,32
	.field  	9437188,32
	.field  	_DIPSWITCH,32
	.field  	_DIO_HART_5,32
	.field  	_HART_5,32
	.field  	_PORTCFG+132,32
	.field  	_PORTCFG+176,32
	.word   	00A160000H ; ldouble 1.200000000000000e+03
	.word   	016000000H ; ldouble
	.word   	000000000H ; ldouble 1.000000000000000e+00
	.word   	000000000H ; ldouble
	.word   	010610000H ; ldouble 1.152000000000000e+05
	.word   	061000000H ; ldouble
	.word   	001000000H ; ldouble 2.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_ALYESKA+23,32
	.word   	00D160000H ; ldouble 9.600000000000000e+03
	.word   	016000000H ; ldouble
	.field  	_VAR_Initialize,32
	.word   	0F923D70AH ; double  1.000000000000000e-02
	.word   	008160000H ; float   3.000000000000000e+02
	.word   	010610000H ; float   1.152000000000000e+05
	.field  	_VAR_Setup_Unit,32
	.field  	_PORTCFG+358,32
	.field  	_PORTCFG+313,32
	.word   	001400000H ; ldouble 3.000000000000000e+00
	.word   	040000000H ; ldouble
	.field  	_PORTCFG+154,32
	.field  	SL1,32
	.field  	_sprintf,32
	.field  	_PORTCFG+175,32
	.field  	_PORTCFG+198,32
	.field  	SL2,32
	.field  	_PORTCFG+219,32
	.field  	_PORTCFG+247,32
	.field  	SL3,32
	.field  	_PORTCFG+268,32
	.field  	_PORTCFG+22,32
	.field  	SL4,32
	.field  	_PORTCFG+43,32
	.field  	_PORTCFG+66,32
	.field  	SL5,32
	.field  	_PORTCFG+87,32
	.field  	_PORTCFG+110,32
	.field  	SL6,32
	.field  	_PORTCFG+131,32
	.field  	_PORTCFG+291,32
	.field  	SL7,32
	.field  	_PORTCFG+312,32
	.field  	_PORTCFG+335,32
	.field  	SL8,32
	.field  	_PORTCFG+356,32
	.field  	_PORTCFG+243,32
	.field  	_PORTCFG+18,32
	.field  	_PORTCFG+62,32
	.field  	_PORTCFG+106,32
	.field  	_PORTCFG+287,32
	.field  	_PORTCFG+244,32
	.field  	_PORTCFG+19,32
	.field  	_PORTCFG+63,32
	.field  	_PORTCFG+107,32
	.field  	_PORTCFG+288,32
	.word   	0FC4CCCCDH ; double  1.000000000000000e-01
	.field  	_LOOP_ENABLED,32
	.field  	_AO+274,32
	.field  	_HCHANGE,32
	.field  	_HCHANGE+1,32
	.field  	_NUM_PREAMBLE_MS,32
	.field  	_NUM_PREAMBLE_SM,32
	.field  	_HCHANGE_COUNTER,32
	.word   	0FE4CCCCCH ; ldouble 4.000000000000000e-01
	.word   	04CCCCCCDH ; ldouble
	.field  	_PORT+1,32
	.field  	_SN_PIPE,32
	.field  	_LIST_MASTER_EMPTY,32
	.field  	_List_Init,32
	.field  	_QUEUE_MASTER,32
	.field  	_QUEUE_MASTER+1,32
	.field  	_QUEUE_MASTER+2,32
	.field  	_QUEUE_MASTER+3,32
	.field  	_QUEUE_MASTER+4,32
	.field  	_QUEUE_MASTER+5,32
	.field  	_QUEUE_MASTER+6,32
	.field  	_QUEUE_MASTER+7,32
	.field  	_QUEUE_MASTER+8,32
	.field  	_QUEUE_MASTER+9,32
	.field  	_QUEUE_MASTER+10,32
	.field  	_QUEUE_MASTER+11,32
	.field  	_QUEUE_MASTER+12,32
	.field  	_QUEUE_MASTER+13,32
	.field  	_QUEUE_MASTER+19,32
	.field  	_QUEUE_MASTER+20,32
	.field  	_List_Add,32
	.field  	_PORT+63,32
	.field  	_PORT+284,32
	.field  	9437185,32
	.field  	_HART_Initialize,32
	.field  	_Modbus_Initialize,32
	.field  	115200,32
	.field  	_Setup_UART,32
	.field  	_PORT+499,32
	.field  	_PDI_id,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_sprintf

	.global	_ceil

	.global	_List_Add

	.global	_List_Init

	.global	_VAR_Initialize

	.global	_VAR_Setup_Unit

	.global	_VAR_Update

	.global	_Put

	.global	_Get

	.global	_Clear

	.global	_TIMER1_COUNTER

	.global	_TIME1

	.global	_AO

	.global	_CLOCK

	.global	_SA

	.global	_DIPSWITCH

	.global	_LOOP_ENABLED

	.global	_SN_PIPE

	.global	_NUM_PREAMBLE_SM

	.global	_NUM_PREAMBLE_MS

	.global	_DIO_HART_5

	.global	_ALYESKA

	.global	_HCHANGE

	.global	_HCHANGE_COUNTER

	.global	_HART_5

	.global	_HART_Initialize

	.global	_Modbus_Initialize

	.global	_round
	.global	DIV_F30
	.global	DIV_LD
	.global	MPY_LD
