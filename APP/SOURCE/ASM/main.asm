;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue May  5 09:11:47 2020                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_B4G.AAA 
	.file	"main.c"
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
	.file	"main.c"
	.sect	 ".text"

	.global	_Debug
	.sym	_Debug,_Debug,32,2,0
	.func	44
;******************************************************************************
;* FUNCTION NAME: _Debug                                                      *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Debug:
	.line	1
;----------------------------------------------------------------------
;  44 | void Debug(void)                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	45,000000000h,0


	.sect	 "initialization"

	.global	_Initialize_Variables
	.sym	_Initialize_Variables,_Initialize_Variables,32,2,0
	.func	60
;******************************************************************************
;* FUNCTION NAME: _Initialize_Variables                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,f3,r3,ar0,ar1,ar2,fp,ir0,sp,st,rs,*
;*                        re,rc                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Initialize_Variables:
	.sym	_i,1,4,1,32
	.sym	_r,2,4,1,32
	.sym	_port,3,4,1,32
	.line	1
;----------------------------------------------------------------------
;  60 | void Initialize_Variables(void)                                        
;  62 | int i,r;        /* counter; restore config successful   */             
;  63 | int port;       /* not used
;     |          */                                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	6
;----------------------------------------------------------------------
;  65 | r = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |65| 
        sti       r0,*+fp(2)            ; |65| 
	.line	8
;----------------------------------------------------------------------
;  67 | InitLog();                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,r0               ; |67| 
        callu     r0                    ; far call to _InitLog	; |67| 
                                        ; |67| Far Call Occurs
	.line	10
;----------------------------------------------------------------------
;  69 | if (MEM)                                                               
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |69| 
        ldiu      *ar0,r0               ; |69| 
        cmpi      0,r0                  ; |69| 
        beq       L6                    ; |69| 
;*      Branch Occurs to L6             ; |69| 
	.line	11
;----------------------------------------------------------------------
;  70 | Setup_Basics();                                                        
;  71 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |70| 
        callu     r0                    ; far call to _Setup_Basics	; |70| 
                                        ; |70| Far Call Occurs
        bu        L7                    ; |59| 
;*      Branch Occurs to L7             ; |59| 
L6:        
	.line	13
;----------------------------------------------------------------------
;  72 | r = Restore_CFG();                                                     
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |72| 
        callu     r0                    ; far call to _Restore_CFG	; |72| 
                                        ; |72| Far Call Occurs
        sti       r0,*+fp(2)            ; |72| 
L7:        
	.line	15
;----------------------------------------------------------------------
;  74 | DISABLE_WDOG;   /* restore & basics re-enables WDOG */                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |74| 
        ldiu      247,r0                ; |74| 
        and3      r0,*ar0,r0            ; |74| 
        sti       r0,*ar0               ; |74| 
	pop		ST			
	.line	17
;----------------------------------------------------------------------
;  76 | if (r)                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |76| 
        cmpi      0,r0                  ; |76| 
        beq       L9                    ; |76| 
;*      Branch Occurs to L9             ; |76| 
	.line	19
;----------------------------------------------------------------------
;  78 | DIAG_TEMP[0]                    = ERROR_NONE;                          
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |78| 
        ldiu      0,r0                  ; |78| 
        sti       r0,*ar0               ; |78| 
	.line	20
;----------------------------------------------------------------------
;  79 | DIAG_TEMP[1]                    = ERROR_NONE;                          
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |79| 
        sti       r0,*ar0               ; |79| 
	.line	21
;----------------------------------------------------------------------
;  80 | DIAGNOSTICS[0]                  = ERROR_RESET;                         
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |80| 
        ldiu      16384,r0              ; |80| 
        sti       r0,*ar0               ; |80| 
	.line	22
;----------------------------------------------------------------------
;  81 | DIAGNOSTICS[1]                  = ERROR_NONE;                          
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |81| 
        ldiu      0,r0                  ; |81| 
        sti       r0,*ar0               ; |81| 
	.line	23
;----------------------------------------------------------------------
;  82 | DIAGNOSTICS_MSG_CODE    = M_ERROR_RESET;                               
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |82| 
        ldiu      15,r0                 ; |82| 
        sti       r0,*ar0               ; |82| 
	.line	24
;----------------------------------------------------------------------
;  83 | DIAGNOSTICS_ERROR_CODE  = E_ERROR_NONE;                                
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |83| 
        ldiu      0,r0                  ; |83| 
        sti       r0,*ar0               ; |83| 
	.line	25
;----------------------------------------------------------------------
;  84 | CHANGE                                  = FALSE;                       
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |84| 
        sti       r0,*ar0               ; |84| 
	.line	26
;----------------------------------------------------------------------
;  85 | DATA_CHANGE.val                 = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |85| 
        sti       r0,*ar0               ; |85| 
L9:        
	.line	29
;----------------------------------------------------------------------
;  88 | sprintf(E_STRING,"");                                                  
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,r1              ; |88| 
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |88| 
        ldp       @CL15,DP
        push      r1                    ; |88| 
        ldiu      @CL15,ar2             ; |88| 
        callu     r0                    ; far call to _sprintf	; |88| 
                                        ; |88| Far Call Occurs
        subi      1,sp                  ; |88| 
	.line	30
;----------------------------------------------------------------------
;  89 | Execute_Init();                                                        
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,r0              ; |89| 
        callu     r0                    ; far call to _Execute_Init	; |89| 
                                        ; |89| Far Call Occurs
	.line	33
;----------------------------------------------------------------------
;  92 | IDEC_PORT = 6;                                                         
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |92| 
        ldiu      6,r0                  ; |92| 
        sti       r0,*ar0               ; |92| 
	.line	35
;----------------------------------------------------------------------
;  94 | for (i=0;i<13;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |94| 
        sti       r0,*+fp(1)            ; |94| 
        ldiu      0,r1                  ; |96| 
        ldiu      r0,r2
        cmpi      13,r2                 ; |94| 
        bge       L11                   ; |94| 
;*      Branch Occurs to L11            ; |94| 
L10:        
	.line	37
;----------------------------------------------------------------------
;  96 | IDEC_SA[i].val  = 0;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |96| 
        ldp       @CL19,DP
        ash       1,ir0                 ; |96| 
        ldiu      @CL19,ar0             ; |96| 
        sti       r1,*+ar0(ir0)         ; |96| 
	.line	38
;----------------------------------------------------------------------
;  97 | IDEC_SA[i].vect = NULL_PTR;                                            
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      *+fp(1),ir0           ; |97| 
        ldiu      @CL20,ar0             ; |97| 
        ash       1,ir0                 ; |97| 
        sti       r0,*+ar0(ir0)         ; |97| 
	.line	35
        ldiu      1,r2                  ; |94| 
        addi      *+fp(1),r2            ; |94| 
        sti       r2,*+fp(1)            ; |94| 
        cmpi      13,r2                 ; |94| 
        blt       L10                   ; |94| 
;*      Branch Occurs to L10            ; |94| 
L11:        
	.line	41
;----------------------------------------------------------------------
; 100 | IDEC_SA[1].val          = 0x0081;                               /* turn
;     |  on backlight and screen display */                                    
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |100| 
        ldiu      129,r0                ; |100| 
        sti       r0,*ar0               ; |100| 
	.line	42
;----------------------------------------------------------------------
; 101 | IDEC_SA[0].val          = SCREEN_LOGO;                  /* set screen *
;     | /                                                                      
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |101| 
        ldiu      1,r0                  ; |101| 
        sti       r0,*ar0               ; |101| 
	.line	43
;----------------------------------------------------------------------
; 102 | IDEC_SA[7].vect         = (int*)Set_Time;                              
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      @CL22,ar0             ; |102| 
        ldp       @CL23,DP
        ldiu      @CL23,r0              ; |102| 
        sti       r0,*ar0               ; |102| 
	.line	44
;----------------------------------------------------------------------
; 103 | IDEC_SA[12].vect        = (int*)Set_IDEC_Port;                         
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      @CL24,ar0             ; |103| 
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |103| 
        sti       r0,*ar0               ; |103| 
	.line	47
;----------------------------------------------------------------------
; 106 | FLASH_READ_ESN_MFGR(ESN_MFGR);                                         
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |106| 
        ldp       @CL26,DP
        ldiu      @CL26,ar2             ; |106| 
        callu     r0                    ; far call to _FLASH_READ_ESN_MFGR	; |106| 
                                        ; |106| Far Call Occurs
	.line	48
;----------------------------------------------------------------------
; 107 | FLASH_READ_ESN_USER(ESN_USER);                                         
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |107| 
        ldp       @CL28,DP
        ldiu      @CL28,ar2             ; |107| 
        callu     r0                    ; far call to _FLASH_READ_ESN_USER	; |107| 
                                        ; |107| Far Call Occurs
	.line	50
;----------------------------------------------------------------------
; 109 | LOCKOUT                                 = FALSE;        /* Setup Locks
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |109| 
        ldiu      0,r0                  ; |109| 
        sti       r0,*ar0               ; |109| 
	.line	51
;----------------------------------------------------------------------
; 110 | DIO_LOCK[1].val                 = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      @CL31,ar0             ; |110| 
        ldiu      1,r0                  ; |110| 
        sti       r0,*ar0               ; |110| 
	.line	52
;----------------------------------------------------------------------
; 111 | DIO_LOCK[2].val                 = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar0             ; |111| 
        sti       r0,*ar0               ; |111| 
	.line	53
;----------------------------------------------------------------------
; 112 | DIO_LOCK[3].val                 = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |112| 
        sti       r0,*ar0               ; |112| 
	.line	54
;----------------------------------------------------------------------
; 113 | RESEARCH_FORCE_MODE         = FALSE;    /* Disable Research Mode */    
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |113| 
        ldiu      0,r0                  ; |113| 
        sti       r0,*ar0               ; |113| 
	.line	55
;----------------------------------------------------------------------
; 114 | SAMPLE_PENDING                  = FALSE;    /* No Pulse Sample Pending
;     | for Poll */                                                            
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |114| 
        sti       r0,*ar0               ; |114| 
	.line	56
;----------------------------------------------------------------------
; 115 | SN_PIPE                            &= 0xFFFFFF;                        
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |115| 
        ldp       @CL37,DP
        ldiu      @CL37,r0              ; |115| 
        and3      r0,*ar0,r0            ; |115| 
        sti       r0,*ar0               ; |115| 
	.line	57
;----------------------------------------------------------------------
; 116 | DUMMY                                   = 0;                           
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |116| 
        ldiu      0,r0                  ; |116| 
        sti       r0,*ar0               ; |116| 
	.line	58
;----------------------------------------------------------------------
; 117 | PORT2_LIQ_TEMP                      = 0;            /***disconnetion de
;     | tect RS***/                                                            
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |117| 
        sti       r0,*ar0               ; |117| 
	.line	59
;----------------------------------------------------------------------
; 118 | PORT2_GAS_TEMP                      = 0;                               
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |118| 
        sti       r0,*ar0               ; |118| 
	.line	60
;----------------------------------------------------------------------
; 119 | PORT3_TEMP                          = 0;                               
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |119| 
        sti       r0,*ar0               ; |119| 
	.line	61
;----------------------------------------------------------------------
; 120 | MM_LIQ_fail.val             = TRUE;                                    
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |120| 
        ldiu      1,r0                  ; |120| 
        sti       r0,*ar0               ; |120| 
	.line	62
;----------------------------------------------------------------------
; 121 | MM_GAS_fail.val             = TRUE;                                    
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      @CL43,ar0             ; |121| 
        sti       r0,*ar0               ; |121| 
	.line	63
;----------------------------------------------------------------------
; 122 | Rosemount_fail.val          = TRUE;                                    
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      @CL44,ar0             ; |122| 
        sti       r0,*ar0               ; |122| 
	.line	64
;----------------------------------------------------------------------
; 123 | DIO_ERROR.val                       = FALSE;                           
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      @CL45,ar0             ; |123| 
        ldiu      0,r0                  ; |123| 
        sti       r0,*ar0               ; |123| 
	.line	65
;----------------------------------------------------------------------
; 124 | DIO_ALARM.val                   = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,ar0             ; |124| 
        sti       r0,*ar0               ; |124| 
	.line	66
;----------------------------------------------------------------------
; 125 | DIO_SYSTEM_RESET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |125| 
        sti       r0,*ar0               ; |125| 
	.line	67
;----------------------------------------------------------------------
; 126 | DIO_BUILT_IN_TEST.val   = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,ar0             ; |126| 
        sti       r0,*ar0               ; |126| 
	.line	68
;----------------------------------------------------------------------
; 127 | DIO_BEEP.val                    = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldiu      @CL49,ar0             ; |127| 
        sti       r0,*ar0               ; |127| 
	.line	69
;----------------------------------------------------------------------
; 128 | DIO_uP_GET.val                      = FALSE;                           
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      @CL50,ar0             ; |128| 
        sti       r0,*ar0               ; |128| 
	.line	70
;----------------------------------------------------------------------
; 129 | DIO_uP_SET.val                  = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,ar0             ; |129| 
        sti       r0,*ar0               ; |129| 
	.line	71
;----------------------------------------------------------------------
; 130 | DIO_COMM_GET.val                = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldiu      @CL52,ar0             ; |130| 
        sti       r0,*ar0               ; |130| 
	.line	72
;----------------------------------------------------------------------
; 131 | DIO_COMM_SET.val                = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      @CL53,ar0             ; |131| 
        sti       r0,*ar0               ; |131| 
	.line	73
;----------------------------------------------------------------------
; 132 | DIO_POWER_GET.val               = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldiu      @CL54,ar0             ; |132| 
        sti       r0,*ar0               ; |132| 
	.line	74
;----------------------------------------------------------------------
; 133 | DIO_POWER_SET.val               = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldiu      @CL55,ar0             ; |133| 
        sti       r0,*ar0               ; |133| 
	.line	75
;----------------------------------------------------------------------
; 134 | DIO_DISPLAY_GET.val     = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |134| 
        sti       r0,*ar0               ; |134| 
	.line	76
;----------------------------------------------------------------------
; 135 | DIO_DISPLAY_SET.val     = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |135| 
        sti       r0,*ar0               ; |135| 
	.line	77
;----------------------------------------------------------------------
; 136 | DIO_MOTHERBOARD_GET.val = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |136| 
        sti       r0,*ar0               ; |136| 
	.line	78
;----------------------------------------------------------------------
; 137 | DIO_MOTHERBOARD_SET.val = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |137| 
        sti       r0,*ar0               ; |137| 
	.line	79
;----------------------------------------------------------------------
; 138 | DIO_ANALYZER_GET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,ar0             ; |138| 
        sti       r0,*ar0               ; |138| 
	.line	80
;----------------------------------------------------------------------
; 139 | DIO_ANALYZER_SET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      @CL61,ar0             ; |139| 
        sti       r0,*ar0               ; |139| 
	.line	81
;----------------------------------------------------------------------
; 140 | DIO_ANALOGIO_GET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldiu      @CL62,ar0             ; |140| 
        sti       r0,*ar0               ; |140| 
	.line	82
;----------------------------------------------------------------------
; 141 | DIO_ANALOGIO_SET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldiu      @CL63,ar0             ; |141| 
        sti       r0,*ar0               ; |141| 
	.line	83
;----------------------------------------------------------------------
; 142 | DIO_PV_PERCMASS                 = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar0             ; |142| 
        sti       r0,*ar0               ; |142| 
	.line	84
;----------------------------------------------------------------------
; 143 | LED_GREEN                               = FALSE;                       
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      @CL65,ar0             ; |143| 
        sti       r0,*ar0               ; |143| 
	.line	87
;----------------------------------------------------------------------
; 146 | VAR_Update(&REG_FREQ_OIL_LO,            REG_FREQ_OIL_LO.val,
;     |  0, 0);                                                                
;----------------------------------------------------------------------
        ldp       @CL66,DP
        ldiu      @CL66,ar0             ; |146| 
        ldiu      255,r3                ; |146| 
        ldfu      *ar0,f0               ; |146| 
        ldfu      f0,f2                 ; |146| Move F32 into F40 for CONV
        andn      r3,f2                 ; |146| Bit mask for F32/F40 conversion
        ldp       @CL67,DP
        ldiu      0,r3                  ; |146| 
        ldiu      @CL67,r1              ; |146| 
        ldp       @CL66,DP
        ldiu      0,rc                  ; |146| 
        ldiu      @CL66,ar2             ; |146| 
        callu     r1                    ; far call to _VAR_Update	; |146| 
                                        ; |146| Far Call Occurs
	.line	88
;----------------------------------------------------------------------
; 147 | VAR_Update(&REG_FREQ_OIL_HI,            REG_FREQ_OIL_HI.val,
;     |  0, 0);                                                                
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldiu      @CL68,ar0             ; |147| 
        ldfu      *ar0,f0               ; |147| 
        ldfu      f0,f2                 ; |147| Move F32 into F40 for CONV
        ldp       @CL67,DP
        ldiu      255,r3                ; |147| 
        andn      r3,f2                 ; |147| Bit mask for F32/F40 conversion
        ldiu      @CL67,r1              ; |147| 
        ldp       @CL68,DP
        ldiu      0,r3                  ; |147| 
        ldiu      @CL68,ar2             ; |147| 
        ldiu      0,rc                  ; |147| 
        callu     r1                    ; far call to _VAR_Update	; |147| 
                                        ; |147| Far Call Occurs
	.line	89
;----------------------------------------------------------------------
; 148 | VAR_Update(&REG_FREQ_WATER_LO,          REG_FREQ_WATER_LO.val,
;     |  0, 0);                                                                
;----------------------------------------------------------------------
        ldp       @CL69,DP
        ldiu      @CL69,ar0             ; |148| 
        ldfu      *ar0,f0               ; |148| 
        ldfu      f0,f2                 ; |148| Move F32 into F40 for CONV
        ldiu      255,r3                ; |148| 
        ldp       @CL67,DP
        andn      r3,f2                 ; |148| Bit mask for F32/F40 conversion
        ldiu      @CL67,r1              ; |148| 
        ldp       @CL69,DP
        ldiu      0,r3                  ; |148| 
        ldiu      @CL69,ar2             ; |148| 
        ldiu      0,rc                  ; |148| 
        callu     r1                    ; far call to _VAR_Update	; |148| 
                                        ; |148| Far Call Occurs
	.line	90
;----------------------------------------------------------------------
; 149 | VAR_Update(&REG_FREQ_WATER_HI,          REG_FREQ_WATER_HI.val,
;     |  0, 0);                                                                
; 150 | //VAR_Update(&REG_LOWSALT_THRESHOLD,    REG_LOWSALT_THRESHOLD.val,
;     |  0, 0);               /*RS*/                                           
; 153 | //required for subversion-nonsubversion compatibilty with IDEC HMI     
; 154 | //prevents IDEC screen freezing, the idea being that it virtually impos
;     | sible for                                                              
; 155 | //lowsalt threshold to randomly be exactly 123.0000000                 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,ar0             ; |149| 
        ldfu      *ar0,f0               ; |149| 
        ldfu      f0,f2                 ; |149| Move F32 into F40 for CONV
        ldp       @CL67,DP
        ldiu      255,r3                ; |149| 
        andn      r3,f2                 ; |149| Bit mask for F32/F40 conversion
        ldiu      @CL67,r1              ; |149| 
        ldp       @CL70,DP
        ldiu      0,r3                  ; |149| 
        ldiu      @CL70,ar2             ; |149| 
        ldiu      0,rc                  ; |149| 
        callu     r1                    ; far call to _VAR_Update	; |149| 
                                        ; |149| Far Call Occurs
	.line	97
;----------------------------------------------------------------------
; 156 | EXTENDED_FW_VERSION_ENABLE.val          = 123.0;                       
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,ar0             ; |156| 
        ldfu      1.2300000000e+02,f0   ; |156| 
        stf       f0,*ar0               ; |156| 
	.line	98
;----------------------------------------------------------------------
; 157 | EXTENDED_FW_VERSION_ENABLE.calc_val = 123.0;                           
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar0             ; |157| 
        ldp       @CL73+0,DP
        ldfu      @CL73+0,f0            ; |157| 40b float hi half
        ldp       @CL73+1,DP
        ldiu      @CL73+1,r0            ; |157| 40b float lo half
        stf       f0,*ar0               ; |157| Store high half
        sti       r0,*+ar0              ; |157| Store low half
	.line	100
;----------------------------------------------------------------------
; 159 | if (DIPSW1)                                                            
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,ar0             ; |159| 
        ldiu      16,r0                 ; |159| 
        tstb3     *ar0,r0               ; |159| 
        beq       L13                   ; |159| 
;*      Branch Occurs to L13            ; |159| 
	.line	101
;----------------------------------------------------------------------
; 160 | DIPSWITCH[0] = FALSE;                                                  
; 161 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,ar0             ; |160| 
        ldiu      0,r0                  ; |160| 
        sti       r0,*ar0               ; |160| 
        bu        L14                   ; |59| 
;*      Branch Occurs to L14            ; |59| 
L13:        
	.line	103
;----------------------------------------------------------------------
; 162 | DIPSWITCH[0] = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,ar0             ; |162| 
        ldiu      1,r0                  ; |162| 
        sti       r0,*ar0               ; |162| 
L14:        
	.line	105
;----------------------------------------------------------------------
; 164 | if (DIPSW2)                                                            
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,ar0             ; |164| 
        ldiu      32,r0                 ; |164| 
        tstb3     *ar0,r0               ; |164| 
        beq       L16                   ; |164| 
;*      Branch Occurs to L16            ; |164| 
	.line	106
;----------------------------------------------------------------------
; 165 | DIPSWITCH[1] = FALSE;                                                  
; 166 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |165| 
        ldiu      0,r0                  ; |165| 
        sti       r0,*ar0               ; |165| 
        bu        L17                   ; |59| 
;*      Branch Occurs to L17            ; |59| 
L16:        
	.line	108
;----------------------------------------------------------------------
; 167 | DIPSWITCH[1] = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |167| 
        ldiu      1,r0                  ; |167| 
        sti       r0,*ar0               ; |167| 
L17:        
	.line	110
;----------------------------------------------------------------------
; 169 | REG_TIME                         = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      @CL77,ar0             ; |169| 
        ldiu      0,r0                  ; |169| 
        sti       r0,*ar0               ; |169| 
	.line	113
;----------------------------------------------------------------------
; 172 | N_TEMP                           = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,ar0             ; |172| 
        sti       r0,*ar0               ; |172| 
	.line	114
;----------------------------------------------------------------------
; 173 | SUM_TEMP                         = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |173| 
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f0            ; |173| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      @CL80+1,r0            ; |173| 40b float lo half
        stf       f0,*ar0               ; |173| Store high half
        sti       r0,*+ar0              ; |173| Store low half
	.line	115
;----------------------------------------------------------------------
; 174 | AVG_TEMP                         = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldiu      @CL81,ar0             ; |174| 
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f0            ; |174| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      @CL80+1,r0            ; |174| 40b float lo half
        stf       f0,*ar0               ; |174| Store high half
        sti       r0,*+ar0              ; |174| Store low half
	.line	119
;----------------------------------------------------------------------
; 178 | cycles                           = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      @CL82,ar0             ; |178| 
        ldiu      0,r0                  ; |178| 
        sti       r0,*ar0               ; |178| 
	.line	120
;----------------------------------------------------------------------
; 179 | previous_phase           = 0;                                          
;----------------------------------------------------------------------
        ldp       @CL83,DP
        ldiu      @CL83,ar0             ; |179| 
        sti       r0,*ar0               ; |179| 
	.line	121
;----------------------------------------------------------------------
; 180 | phase                            = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL84,DP
        ldiu      @CL84,ar0             ; |180| 
        sti       r0,*ar0               ; |180| 
	.line	122
;----------------------------------------------------------------------
; 181 | phase_rollover_count = 0;                                              
;----------------------------------------------------------------------
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |181| 
        sti       r0,*ar0               ; |181| 
	.line	126
;----------------------------------------------------------------------
; 185 | N_WC                             = 1;                                  
;----------------------------------------------------------------------
        ldp       @CL86,DP
        ldiu      @CL86,ar0             ; |185| 
        ldiu      1,r0                  ; |185| 
        sti       r0,*ar0               ; |185| 
	.line	127
;----------------------------------------------------------------------
; 186 | WC_SUM                           = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL87,DP
        ldiu      @CL87,ar0             ; |186| 
        ldfu      0.0000000000e+00,f0   ; |186| 
        stf       f0,*ar0               ; |186| 
	.line	130
;----------------------------------------------------------------------
; 189 | for (i=0;i<31;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |189| 
        sti       r0,*+fp(1)            ; |189| 
        ldfu      0.0000000000e+00,f1   ; |190| 
        cmpi      31,r0                 ; |189| 
        bge       L19                   ; |189| 
;*      Branch Occurs to L19            ; |189| 
L18:        
	.line	131
;----------------------------------------------------------------------
; 190 | WC_SAMPLE[i] = 0;    /*average filter RS*/                             
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      *+fp(1),ir0           ; |190| 
        ldiu      @CL88,ar0             ; |190| 
        stf       f1,*+ar0(ir0)         ; |190| 
	.line	130
        ldiu      1,r0                  ; |189| 
        addi      *+fp(1),r0            ; |189| 
        sti       r0,*+fp(1)            ; |189| 
        cmpi      31,r0                 ; |189| 
        blt       L18                   ; |189| 
;*      Branch Occurs to L18            ; |189| 
L19:        
	.line	134
;----------------------------------------------------------------------
; 193 | N_FREQ                                  = 1;    /* Frequency */        
;----------------------------------------------------------------------
        ldp       @CL89,DP
        ldiu      @CL89,ar0             ; |193| 
        ldiu      1,r0                  ; |193| 
        sti       r0,*ar0               ; |193| 
	.line	135
;----------------------------------------------------------------------
; 194 | HSALT_FREQ_TRIGGER.val  = TRUE;                                        
; 196 | //VAR_Update(&REG_FREQ_WINDOW,          30.0, 0, 0);                   
;----------------------------------------------------------------------
        ldp       @CL90,DP
        ldiu      @CL90,ar0             ; |194| 
        sti       r0,*ar0               ; |194| 
	.line	138
;----------------------------------------------------------------------
; 197 | VAR_Update(&REG_FREQ_VARIANCE_RATIO, 1.5, 0, 0);                       
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |197| 
        ldp       @CL92+0,DP
        ldfu      @CL92+0,f2            ; |197| 40b float hi half
        ldp       @CL92+1,DP
        ldiu      0,rc                  ; |197| 
        ldiu      @CL92+1,r2            ; |197| 40b float lo half
        ldp       @CL91,DP
        ldiu      0,r3                  ; |197| 
        ldiu      @CL91,ar2             ; |197| 
        callu     r0                    ; far call to _VAR_Update	; |197| 
                                        ; |197| Far Call Occurs
	.line	140
;----------------------------------------------------------------------
; 199 | TEMP_SAMPLE                     = 0;    /* Temperature */              
;----------------------------------------------------------------------
        ldp       @CL93,DP
        ldiu      @CL93,ar0             ; |199| 
        ldfu      0.0000000000e+00,f0   ; |199| 
        stf       f0,*ar0               ; |199| 
	.line	141
;----------------------------------------------------------------------
; 200 | LAST_TEMP_RESET                 = TEMP_SAMPLE;                         
;----------------------------------------------------------------------
        ldiu      @CL93,ar0             ; |200| 
        ldp       @CL94,DP
        ldiu      @CL94,ar1             ; |200| 
        ldfu      *ar0,f0               ; |200| 
        stf       f0,*ar1               ; |200| 
	.line	142
;----------------------------------------------------------------------
; 201 | HSALT_TEMP_TRIGGER.val  = FALSE;                                       
; 203 | //VAR_Update(&REG_DELTA_TEMP,           3.0,  0, 0);                   
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      @CL95,ar0             ; |201| 
        ldiu      0,r0                  ; |201| 
        sti       r0,*ar0               ; |201| 
	.line	148
;----------------------------------------------------------------------
; 207 | GAS_ENTRAINED_DENS_DETECT.val = FALSE;                                 
;----------------------------------------------------------------------
        ldp       @CL96,DP
        ldiu      @CL96,ar0             ; |207| 
        sti       r0,*ar0               ; |207| 
	.line	150
;----------------------------------------------------------------------
; 209 | gas_routine_reset_needed = TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL97,DP
        ldiu      @CL97,ar0             ; |209| 
        ldiu      1,r0                  ; |209| 
        sti       r0,*ar0               ; |209| 
	.line	151
;----------------------------------------------------------------------
; 210 | boxcar_reset_needed = TRUE;                                            
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,ar0             ; |210| 
        sti       r0,*ar0               ; |210| 
	.line	152
;----------------------------------------------------------------------
; 211 | if ( (ANALYZER_MODE.val & 0xFF) != SUB_CCM )                           
;----------------------------------------------------------------------
        ldp       @CL99,DP
        ldiu      @CL99,ar0             ; |211| 
        ldiu      255,r0                ; |211| 
        and3      r0,*ar0,r0            ; |211| 
        cmpi      6,r0                  ; |211| 
        beq       L21                   ; |211| 
;*      Branch Occurs to L21            ; |211| 
	.line	154
;----------------------------------------------------------------------
; 213 | REG_WATERCUT_DENSITY.STAT |= var_no_alarm;                             
;----------------------------------------------------------------------
        ldp       @CL100,DP
        ldiu      @CL100,ar0            ; |213| 
        ldiu      4,r0                  ; |213| 
        or3       r0,*ar0,r0            ; |213| 
        sti       r0,*ar0               ; |213| 
L21:        
	.line	160
;----------------------------------------------------------------------
; 219 | TRIM_RTD_LO = FALSE;                                                   
;----------------------------------------------------------------------
        ldp       @CL101,DP
        ldiu      @CL101,ar0            ; |219| 
        ldiu      0,r0                  ; |219| 
        sti       r0,*ar0               ; |219| 
	.line	161
;----------------------------------------------------------------------
; 220 | TRIM_RTD_HI = FALSE;                                                   
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |220| 
        sti       r0,*ar0               ; |220| 
	.line	164
;----------------------------------------------------------------------
; 223 | CAP_WATER_STOP.val      = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL103,DP
        ldiu      @CL103,ar0            ; |223| 
        sti       r0,*ar0               ; |223| 
	.line	165
;----------------------------------------------------------------------
; 224 | CAP_OIL_STOP.val        = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL104,DP
        ldiu      @CL104,ar0            ; |224| 
        sti       r0,*ar0               ; |224| 
	.line	168
;----------------------------------------------------------------------
; 227 | Clear(&PV_SAMPLES);                                                    
;----------------------------------------------------------------------
        ldp       @CL106,DP
        ldiu      @CL106,r0             ; |227| 
        ldp       @CL105,DP
        ldiu      @CL105,ar2            ; |227| 
        callu     r0                    ; far call to _Clear	; |227| 
                                        ; |227| Far Call Occurs
	.line	169
;----------------------------------------------------------------------
; 228 | Clear(&PV_SAMPLES_24hr);                                               
;----------------------------------------------------------------------
        ldp       @CL106,DP
        ldiu      @CL106,r0             ; |228| 
        ldp       @CL107,DP
        ldiu      @CL107,ar2            ; |228| 
        callu     r0                    ; far call to _Clear	; |228| 
                                        ; |228| Far Call Occurs
	.line	170
;----------------------------------------------------------------------
; 229 | Clear(&PV_SAMPLES_5min);                                               
;----------------------------------------------------------------------
        ldp       @CL106,DP
        ldiu      @CL106,r0             ; |229| 
        ldp       @CL108,DP
        ldiu      @CL108,ar2            ; |229| 
        callu     r0                    ; far call to _Clear	; |229| 
                                        ; |229| Far Call Occurs
	.line	172
;----------------------------------------------------------------------
; 231 | PV_SAMPLES.sum          = 0x80000000;           /* force to float 0.0 *
;     | /                                                                      
;----------------------------------------------------------------------
        ldp       @CL109,DP
        ldiu      @CL109,ar0            ; |231| 
        ldp       @CL110,DP
        ldiu      @CL110,r0             ; |231| 
        sti       r0,*ar0               ; |231| 
	.line	173
;----------------------------------------------------------------------
; 232 | PV_SAMPLES_24hr.sum = 0x80000000;       /* force to float 0.0 */       
;----------------------------------------------------------------------
        ldp       @CL111,DP
        ldiu      @CL111,ar0            ; |232| 
        ldp       @CL110,DP
        ldiu      @CL110,r0             ; |232| 
        sti       r0,*ar0               ; |232| 
	.line	174
;----------------------------------------------------------------------
; 233 | REG_PV_AVG_24hr         = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL112,DP
        ldiu      @CL112,ar0            ; |233| 
        ldfu      0.0000000000e+00,f0   ; |233| 
        stf       f0,*ar0               ; |233| 
	.line	175
;----------------------------------------------------------------------
; 234 | PV_SAMPLES_5min.sum = 0x80000000;       /* force to float 0.0 */       
;----------------------------------------------------------------------
        ldp       @CL113,DP
        ldiu      @CL113,ar0            ; |234| 
        ldp       @CL110,DP
        ldiu      @CL110,r0             ; |234| 
        sti       r0,*ar0               ; |234| 
	.line	176
;----------------------------------------------------------------------
; 235 | REG_PV_AVG_5min         = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL114,DP
        ldiu      @CL114,ar0            ; |235| 
        ldfu      0.0000000000e+00,f0   ; |235| 
        stf       f0,*ar0               ; |235| 
	.line	177
;----------------------------------------------------------------------
; 236 | REG_PV_AVG_1sec         = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL115,DP
        ldiu      @CL115,ar0            ; |236| 
        ldfu      0.0000000000e+00,f0   ; |236| 
        stf       f0,*ar0               ; |236| 
	.line	178
;----------------------------------------------------------------------
; 237 | REG_PV_AVG_CNT          = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL116,DP
        ldiu      @CL116,ar0            ; |237| 
        ldiu      0,r0                  ; |237| 
        sti       r0,*ar0               ; |237| 
	.line	181
;----------------------------------------------------------------------
; 240 | Mirror_From_Stream_Table(NULL_VAR);                                    
;----------------------------------------------------------------------
        ldp       @CL117,DP
        ldiu      @CL117,r0             ; |240| 
        ldiu      0,ar2                 ; |240| 
        callu     r0                    ; far call to _Mirror_From_Stream_Table	; |240| 
                                        ; |240| Far Call Occurs
	.line	183
;----------------------------------------------------------------------
; 242 | WC                                              = 0.0;     /*make WC gl
;     | obal: float WC; for store last value when phase error RS*/             
;----------------------------------------------------------------------
        ldp       @CL118,DP
        ldiu      @CL118,ar0            ; |242| 
        ldfu      0.0000000000e+00,f0   ; |242| 
        stf       f0,*ar0               ; |242| 
	.line	184
;----------------------------------------------------------------------
; 243 | REG_WATERCUT_RAW                = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL119,DP
        ldiu      @CL119,ar0            ; |243| 
        ldfu      0.0000000000e+00,f0   ; |243| 
        stf       f0,*ar0               ; |243| 
	.line	185
;----------------------------------------------------------------------
; 244 | REG_CAL_OIL.calc_val    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL120,DP
        ldiu      @CL120,ar0            ; |244| 
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f0            ; |244| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      @CL80+1,r0            ; |244| 40b float lo half
        stf       f0,*ar0               ; |244| Store high half
        sti       r0,*+ar0              ; |244| Store low half
	.line	186
;----------------------------------------------------------------------
; 245 | REG_CAL_OIL.val                 = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL121,DP
        ldiu      @CL121,ar0            ; |245| 
        ldfu      0.0000000000e+00,f0   ; |245| 
        stf       f0,*ar0               ; |245| 
	.line	187
;----------------------------------------------------------------------
; 246 | REG_CAL_WATER.calc_val  = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL122,DP
        ldiu      @CL122,ar0            ; |246| 
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f0            ; |246| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      @CL80+1,r0            ; |246| 40b float lo half
        stf       f0,*ar0               ; |246| Store high half
        sti       r0,*+ar0              ; |246| Store low half
	.line	188
;----------------------------------------------------------------------
; 247 | REG_CAL_WATER.val               = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL123,DP
        ldiu      @CL123,ar0            ; |247| 
        ldfu      0.0000000000e+00,f0   ; |247| 
        stf       f0,*ar0               ; |247| 
	.line	190
;----------------------------------------------------------------------
; 249 | VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);                            
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |249| 
        ldp       @CL125+0,DP
        ldfu      @CL125+0,f2           ; |249| 40b float hi half
        ldp       @CL125+1,DP
        ldiu      @CL125+1,r2           ; |249| 40b float lo half
        ldp       @CL124,DP
        ldiu      0,rc                  ; |249| 
        ldiu      0,r3                  ; |249| 
        ldiu      @CL124,ar2            ; |249| 
        callu     r0                    ; far call to _VAR_Update	; |249| 
                                        ; |249| Far Call Occurs
	.line	191
;----------------------------------------------------------------------
; 250 | VAR_NaN(&REG_WATERCUT);                                                
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |250| 
        ldp       @CL126,DP
        ldiu      @CL126,ar2            ; |250| 
        callu     r0                    ; far call to _VAR_NaN	; |250| 
                                        ; |250| Far Call Occurs
	.line	192
;----------------------------------------------------------------------
; 251 | VAR_NaN(&REG_TEMPERATURE_USER);                                        
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |251| 
        ldp       @CL128,DP
        ldiu      @CL128,ar2            ; |251| 
        callu     r0                    ; far call to _VAR_NaN	; |251| 
                                        ; |251| Far Call Occurs
	.line	193
;----------------------------------------------------------------------
; 252 | VAR_NaN(&REG_TEMPERATURE_AVG);/*RS*/                                   
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |252| 
        ldp       @CL129,DP
        ldiu      @CL129,ar2            ; |252| 
        callu     r0                    ; far call to _VAR_NaN	; |252| 
                                        ; |252| Far Call Occurs
	.line	194
;----------------------------------------------------------------------
; 253 | VAR_NaN(&REG_TEMPERATURE_EXTERNAL);                                    
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |253| 
        ldp       @CL130,DP
        ldiu      @CL130,ar2            ; |253| 
        callu     r0                    ; far call to _VAR_NaN	; |253| 
                                        ; |253| Far Call Occurs
	.line	195
;----------------------------------------------------------------------
; 254 | VAR_NaN(&REG_DUMMY);                                                   
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |254| 
        ldp       @CL131,DP
        ldiu      @CL131,ar2            ; |254| 
        callu     r0                    ; far call to _VAR_NaN	; |254| 
                                        ; |254| Far Call Occurs
	.line	198
;----------------------------------------------------------------------
; 257 | VAR_SELECT_DVIN.val     = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL132,DP
        ldiu      @CL132,ar0            ; |257| 
        ldiu      0,r0                  ; |257| 
        sti       r0,*ar0               ; |257| 
	.line	199
;----------------------------------------------------------------------
; 258 | VAR_SELECT_DVIN.vect    = (int*)VAR_SET_STR_DVIN;                      
;----------------------------------------------------------------------
        ldp       @CL133,DP
        ldiu      @CL133,ar0            ; |258| 
        ldp       @CL134,DP
        ldiu      @CL134,r0             ; |258| 
        sti       r0,*ar0               ; |258| 
	.line	200
;----------------------------------------------------------------------
; 259 | VAR_SELECT_DV.val               = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL135,DP
        ldiu      @CL135,ar0            ; |259| 
        ldiu      0,r0                  ; |259| 
        sti       r0,*ar0               ; |259| 
	.line	201
;----------------------------------------------------------------------
; 260 | VAR_SELECT_DV.vect              = (int*)VAR_SET_STR_DV;                
;----------------------------------------------------------------------
        ldp       @CL136,DP
        ldiu      @CL136,ar0            ; |260| 
        ldp       @CL137,DP
        ldiu      @CL137,r0             ; |260| 
        sti       r0,*ar0               ; |260| 
	.line	203
;----------------------------------------------------------------------
; 262 | VAR_SET_STR_DV(0);                                                     
;----------------------------------------------------------------------
        ldiu      0,ar2                 ; |262| 
        ldiu      @CL137,r0             ; |262| 
        callu     r0                    ; far call to _VAR_SET_STR_DV	; |262| 
                                        ; |262| Far Call Occurs
	.line	206
;----------------------------------------------------------------------
; 265 | for (i=0;i<AO_NLOOPS;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |265| 
        sti       r0,*+fp(1)            ; |265| 
        cmpi      9,r0                  ; |265| 
        bge       L24                   ; |265| 
;*      Branch Occurs to L24            ; |265| 
L23:        
	.line	208
;----------------------------------------------------------------------
; 267 | VAR_NaN(&AO[i].CURRENT_PERCENT_OF_RANGE);                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |267| 
        ldp       @CL138,DP
        mpyi      419,ar2               ; |267| 
        addi      @CL138,ar2            ; |267| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |267| 
        callu     r0                    ; far call to _VAR_NaN	; |267| 
                                        ; |267| Far Call Occurs
	.line	209
;----------------------------------------------------------------------
; 268 | PID_Init(i);                                                           
;----------------------------------------------------------------------
        ldp       @CL139,DP
        ldiu      @CL139,r0             ; |268| 
        ldiu      *+fp(1),ar2           ; |268| 
        callu     r0                    ; far call to _PID_Init	; |268| 
                                        ; |268| Far Call Occurs
	.line	206
        ldiu      1,r0                  ; |265| 
        addi      *+fp(1),r0            ; |265| 
        sti       r0,*+fp(1)            ; |265| 
        cmpi      9,r0                  ; |265| 
        blt       L23                   ; |265| 
;*      Branch Occurs to L23            ; |265| 
L24:        
	.line	212
;----------------------------------------------------------------------
; 271 | for (i=0;i<AI_NLOOPS;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |271| 
        sti       r0,*+fp(1)            ; |271| 
        cmpi      5,r0                  ; |271| 
        bge       L26                   ; |271| 
;*      Branch Occurs to L26            ; |271| 
L25:        
	.line	214
;----------------------------------------------------------------------
; 273 | VAR_NaN(&AI[i].VALUE);                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |273| 
        ldp       @CL140,DP
        mpyi      318,ar2               ; |273| 
        addi      @CL140,ar2            ; |273| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |273| 
        callu     r0                    ; far call to _VAR_NaN	; |273| 
                                        ; |273| Far Call Occurs
	.line	215
;----------------------------------------------------------------------
; 274 | VAR_NaN(&AI[i].CURRENT);                                               
;----------------------------------------------------------------------
        ldp       @CL141,DP
        ldiu      *+fp(1),ar2           ; |274| 
        mpyi      318,ar2               ; |274| 
        addi      @CL141,ar2            ; |274| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |274| 
        callu     r0                    ; far call to _VAR_NaN	; |274| 
                                        ; |274| Far Call Occurs
	.line	216
;----------------------------------------------------------------------
; 275 | VAR_NaN(&AI[i].CURRENT_PERCENT_OF_RANGE);                              
;----------------------------------------------------------------------
        ldp       @CL142,DP
        ldiu      *+fp(1),ar2           ; |275| 
        mpyi      318,ar2               ; |275| 
        addi      @CL142,ar2            ; |275| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |275| 
        callu     r0                    ; far call to _VAR_NaN	; |275| 
                                        ; |275| Far Call Occurs
	.line	218
;----------------------------------------------------------------------
; 277 | AI[i].val = NaN_val_flt;                                               
;----------------------------------------------------------------------
        ldp       @CL144,DP
        ldiu      *+fp(1),ir0           ; |277| 
        ldiu      @CL144,ar0            ; |277| 
        ldp       @CL143,DP
        mpyi      318,ir0               ; |277| 
        ldiu      @CL143,ar1            ; |277| 
        float     *ar0,f0               ; |277| 
        stf       f0,*+ar1(ir0)         ; |277| 
	.line	212
        ldiu      1,r0                  ; |271| 
        addi      *+fp(1),r0            ; |271| 
        sti       r0,*+fp(1)            ; |271| 
        cmpi      5,r0                  ; |271| 
        blt       L25                   ; |271| 
;*      Branch Occurs to L25            ; |271| 
L26:        
	.line	221
;----------------------------------------------------------------------
; 280 | i_CCM_Level_Setpoint    = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL145,DP
        ldiu      @CL145,ar0            ; |280| 
        ldiu      0,r0                  ; |280| 
        sti       r0,*ar0               ; |280| 
	.line	222
;----------------------------------------------------------------------
; 281 | i_CCM_Level                     = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL146,DP
        ldiu      @CL146,ar0            ; |281| 
        sti       r0,*ar0               ; |281| 
	.line	223
;----------------------------------------------------------------------
; 282 | i_CCM_Pressure_Setpoint = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL147,DP
        ldiu      @CL147,ar0            ; |282| 
        sti       r0,*ar0               ; |282| 
	.line	224
;----------------------------------------------------------------------
; 283 | i_CCM_Pressure                  = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL148,DP
        ldiu      @CL148,ar0            ; |283| 
        sti       r0,*ar0               ; |283| 
	.line	225
;----------------------------------------------------------------------
; 284 | i_CCM_Gas_Valve                 = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL149,DP
        ldiu      @CL149,ar0            ; |284| 
        sti       r0,*ar0               ; |284| 
	.line	226
;----------------------------------------------------------------------
; 285 | i_CCM_Liquid_Valve              = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL150,DP
        ldiu      @CL150,ar0            ; |285| 
        sti       r0,*ar0               ; |285| 
	.line	227
;----------------------------------------------------------------------
; 286 | i_CCM_Flow                              = 0;                           
;----------------------------------------------------------------------
        ldp       @CL151,DP
        ldiu      @CL151,ar0            ; |286| 
        sti       r0,*ar0               ; |286| 
	.line	228
;----------------------------------------------------------------------
; 287 | i_CCM_Flow_Oil                  = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL152,DP
        ldiu      @CL152,ar0            ; |287| 
        sti       r0,*ar0               ; |287| 
	.line	229
;----------------------------------------------------------------------
; 288 | i_CCM_Flow_Water                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL153,DP
        ldiu      @CL153,ar0            ; |288| 
        sti       r0,*ar0               ; |288| 
	.line	230
;----------------------------------------------------------------------
; 289 | i_CCM_Flow_Gas                  = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL154,DP
        ldiu      @CL154,ar0            ; |289| 
        sti       r0,*ar0               ; |289| 
	.line	231
;----------------------------------------------------------------------
; 290 | CCM_24_GAS                              = 0.0;                         
;----------------------------------------------------------------------
        ldp       @CL155,DP
        ldiu      @CL155,ar0            ; |290| 
        ldfu      0.0000000000e+00,f0   ; |290| 
        stf       f0,*ar0               ; |290| 
	.line	232
;----------------------------------------------------------------------
; 291 | CCM_24_TOTAL                    = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL156,DP
        ldiu      @CL156,ar0            ; |291| 
        ldfu      0.0000000000e+00,f0   ; |291| 
        stf       f0,*ar0               ; |291| 
	.line	233
;----------------------------------------------------------------------
; 292 | CCM_24_OIL                              = 0.0;                         
;----------------------------------------------------------------------
        ldp       @CL157,DP
        ldiu      @CL157,ar0            ; |292| 
        ldfu      0.0000000000e+00,f0   ; |292| 
        stf       f0,*ar0               ; |292| 
	.line	234
;----------------------------------------------------------------------
; 293 | CCM_24_WATER                    = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL158,DP
        ldiu      @CL158,ar0            ; |293| 
        ldfu      0.0000000000e+00,f0   ; |293| 
        stf       f0,*ar0               ; |293| 
	.line	235
;----------------------------------------------------------------------
; 294 | CCM_REMAINING                   = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL159,DP
        ldiu      @CL159,ar0            ; |294| 
        ldfu      0.0000000000e+00,f0   ; |294| 
        stf       f0,*ar0               ; |294| 
	.line	236
;----------------------------------------------------------------------
; 295 | CCM_REMAINING_S                 = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL160,DP
        ldiu      @CL160,ar0            ; |295| 
        ldfu      0.0000000000e+00,f0   ; |295| 
        stf       f0,*ar0               ; |295| 
	.line	237
;----------------------------------------------------------------------
; 296 | CCM_ELAPSED_S                   = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL161,DP
        ldiu      @CL161,ar0            ; |296| 
        ldfu      0.0000000000e+00,f0   ; |296| 
        stf       f0,*ar0               ; |296| 
	.line	238
;----------------------------------------------------------------------
; 297 | DIO_CCM_START.val               = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL162,DP
        ldiu      @CL162,ar0            ; |297| 
        ldiu      0,r0                  ; |297| 
        sti       r0,*ar0               ; |297| 
	.line	239
;----------------------------------------------------------------------
; 298 | DIO_CCM_PURGE_STAT.val  = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL163,DP
        ldiu      @CL163,ar0            ; |298| 
        sti       r0,*ar0               ; |298| 
	.line	240
;----------------------------------------------------------------------
; 299 | REG_CCM_TEST_STAT.val   = 0;  /*logging test status RS*/               
;----------------------------------------------------------------------
        ldp       @CL164,DP
        ldiu      @CL164,ar0            ; |299| 
        ldfu      0.0000000000e+00,f0   ; |299| 
        stf       f0,*ar0               ; |299| 
	.line	241
;----------------------------------------------------------------------
; 300 | REG_CCM_PURGE_STAT.val  = 0; /*logging purge status RS*/               
;----------------------------------------------------------------------
        ldp       @CL165,DP
        ldiu      @CL165,ar0            ; |300| 
        ldfu      0.0000000000e+00,f0   ; |300| 
        stf       f0,*ar0               ; |300| 
	.line	243
;----------------------------------------------------------------------
; 302 | VAR_NaN(&CCM_GAS_FLOW);                                                
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |302| 
        ldp       @CL166,DP
        ldiu      @CL166,ar2            ; |302| 
        callu     r0                    ; far call to _VAR_NaN	; |302| 
                                        ; |302| Far Call Occurs
	.line	244
;----------------------------------------------------------------------
; 303 | VAR_NaN(&CCM_GAS_TOTAL);                                               
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |303| 
        ldp       @CL167,DP
        ldiu      @CL167,ar2            ; |303| 
        callu     r0                    ; far call to _VAR_NaN	; |303| 
                                        ; |303| Far Call Occurs
	.line	245
;----------------------------------------------------------------------
; 304 | VAR_NaN(&CCM_VESSEL_LEVEL[0]);                                         
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |304| 
        ldp       @CL168,DP
        ldiu      @CL168,ar2            ; |304| 
        callu     r0                    ; far call to _VAR_NaN	; |304| 
                                        ; |304| Far Call Occurs
	.line	246
;----------------------------------------------------------------------
; 305 | VAR_NaN(&CCM_VESSEL_LEVEL[1]);                                         
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |305| 
        ldp       @CL169,DP
        ldiu      @CL169,ar2            ; |305| 
        callu     r0                    ; far call to _VAR_NaN	; |305| 
                                        ; |305| Far Call Occurs
	.line	247
;----------------------------------------------------------------------
; 306 | VAR_NaN(&CCM_VESSEL_PRESSURE[0]);                                      
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |306| 
        ldp       @CL170,DP
        ldiu      @CL170,ar2            ; |306| 
        callu     r0                    ; far call to _VAR_NaN	; |306| 
                                        ; |306| Far Call Occurs
	.line	248
;----------------------------------------------------------------------
; 307 | VAR_NaN(&CCM_VESSEL_PRESSURE[1]);                                      
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |307| 
        ldp       @CL171,DP
        ldiu      @CL171,ar2            ; |307| 
        callu     r0                    ; far call to _VAR_NaN	; |307| 
                                        ; |307| Far Call Occurs
	.line	249
;----------------------------------------------------------------------
; 308 | CLEAR_TIME(&CCM_TIME_START);                                           
;----------------------------------------------------------------------
        ldp       @CL173,DP
        ldiu      @CL173,r0             ; |308| 
        ldp       @CL172,DP
        ldiu      @CL172,ar2            ; |308| 
        callu     r0                    ; far call to _CLEAR_TIME	; |308| 
                                        ; |308| Far Call Occurs
	.line	250
;----------------------------------------------------------------------
; 309 | CLEAR_TIME(&CCM_TIME_STOP);                                            
;----------------------------------------------------------------------
        ldp       @CL173,DP
        ldiu      @CL173,r0             ; |309| 
        ldp       @CL174,DP
        ldiu      @CL174,ar2            ; |309| 
        callu     r0                    ; far call to _CLEAR_TIME	; |309| 
                                        ; |309| Far Call Occurs
	.line	251
;----------------------------------------------------------------------
; 310 | CLEAR_TIME(&CCM_TIME_REMAINING);                                       
;----------------------------------------------------------------------
        ldp       @CL173,DP
        ldiu      @CL173,r0             ; |310| 
        ldp       @CL175,DP
        ldiu      @CL175,ar2            ; |310| 
        callu     r0                    ; far call to _CLEAR_TIME	; |310| 
                                        ; |310| Far Call Occurs
	.line	252
;----------------------------------------------------------------------
; 311 | CLEAR_TIME(&CCM_TIME_ELAPSED);                                         
;----------------------------------------------------------------------
        ldp       @CL173,DP
        ldiu      @CL173,r0             ; |311| 
        ldp       @CL176,DP
        ldiu      @CL176,ar2            ; |311| 
        callu     r0                    ; far call to _CLEAR_TIME	; |311| 
                                        ; |311| Far Call Occurs
	.line	254
;----------------------------------------------------------------------
; 313 | for (i=0;i<VTMAX;i++)                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |313| 
        sti       r0,*+fp(1)            ; |313| 
        cmpi      4,r0                  ; |313| 
        bge       L28                   ; |313| 
;*      Branch Occurs to L28            ; |313| 
L27:        
	.line	256
;----------------------------------------------------------------------
; 315 | VAR_NaN(&REG_VINC[i]);                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |315| 
        ldp       @CL177,DP
        mpyi      44,ar2                ; |315| 
        addi      @CL177,ar2            ; |315| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |315| 
        callu     r0                    ; far call to _VAR_NaN	; |315| 
                                        ; |315| Far Call Occurs
	.line	257
;----------------------------------------------------------------------
; 316 | VAR_NaN(&REG_VREF[i]);                                                 
;----------------------------------------------------------------------
        ldp       @CL178,DP
        ldiu      *+fp(1),ar2           ; |316| 
        mpyi      44,ar2                ; |316| 
        addi      @CL178,ar2            ; |316| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |316| 
        callu     r0                    ; far call to _VAR_NaN	; |316| 
                                        ; |316| Far Call Occurs
	.line	258
;----------------------------------------------------------------------
; 317 | VAR_NaN(&REG_FREQ[i]);                                                 
;----------------------------------------------------------------------
        ldp       @CL179,DP
        ldiu      *+fp(1),ar2           ; |317| 
        mpyi      44,ar2                ; |317| 
        addi      @CL179,ar2            ; |317| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |317| 
        callu     r0                    ; far call to _VAR_NaN	; |317| 
                                        ; |317| Far Call Occurs
	.line	259
;----------------------------------------------------------------------
; 318 | VAR_NaN(&REG_VTUNE[i]);                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |318| 
        ldp       @CL180,DP
        mpyi      44,ar2                ; |318| 
        addi      @CL180,ar2            ; |318| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |318| 
        callu     r0                    ; far call to _VAR_NaN	; |318| 
                                        ; |318| Far Call Occurs
	.line	261
;----------------------------------------------------------------------
; 320 | TMP_VINC[i]  = -1;                                                     
;----------------------------------------------------------------------
        ldp       @CL181,DP
        ldiu      *+fp(1),ar0           ; |320| 
        ash       1,ar0                 ; |320| 
        addi      @CL181,ar0            ; |320| Unsigned
        ldp       @CL182+0,DP
        ldfu      @CL182+0,f0           ; |320| 40b float hi half
        ldp       @CL182+1,DP
        ldiu      @CL182+1,r0           ; |320| 40b float lo half
        stf       f0,*ar0               ; |320| Store high half
        sti       r0,*+ar0              ; |320| Store low half
	.line	262
;----------------------------------------------------------------------
; 321 | TMP_VREF[i]  = -1;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |321| 
        ldp       @CL183,DP
        ash       1,ar0                 ; |321| 
        addi      @CL183,ar0            ; |321| Unsigned
        ldp       @CL182+0,DP
        ldfu      @CL182+0,f0           ; |321| 40b float hi half
        ldp       @CL182+1,DP
        ldiu      @CL182+1,r0           ; |321| 40b float lo half
        stf       f0,*ar0               ; |321| Store high half
        sti       r0,*+ar0              ; |321| Store low half
	.line	263
;----------------------------------------------------------------------
; 322 | TMP_FREQ[i]  = -1;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |322| 
        ldp       @CL184,DP
        ash       1,ar0                 ; |322| 
        addi      @CL184,ar0            ; |322| Unsigned
        ldp       @CL182+0,DP
        ldfu      @CL182+0,f0           ; |322| 40b float hi half
        ldp       @CL182+1,DP
        ldiu      @CL182+1,r0           ; |322| 40b float lo half
        stf       f0,*ar0               ; |322| Store high half
        sti       r0,*+ar0              ; |322| Store low half
	.line	264
;----------------------------------------------------------------------
; 323 | TMP_VTUNE[i] = -1;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |323| 
        ldp       @CL185,DP
        ash       1,ar0                 ; |323| 
        addi      @CL185,ar0            ; |323| Unsigned
        ldp       @CL182+0,DP
        ldfu      @CL182+0,f0           ; |323| 40b float hi half
        ldp       @CL182+1,DP
        ldiu      @CL182+1,r0           ; |323| 40b float lo half
        stf       f0,*ar0               ; |323| Store high half
        sti       r0,*+ar0              ; |323| Store low half
	.line	254
        ldiu      1,r0                  ; |313| 
        addi      *+fp(1),r0            ; |313| 
        sti       r0,*+fp(1)            ; |313| 
        cmpi      4,r0                  ; |313| 
        blt       L27                   ; |313| 
;*      Branch Occurs to L27            ; |313| 
L28:        
	.line	267
;----------------------------------------------------------------------
; 326 | VAR_NaN(&REG_VINC_O);                                                  
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |326| 
        ldp       @CL186,DP
        ldiu      @CL186,ar2            ; |326| 
        callu     r0                    ; far call to _VAR_NaN	; |326| 
                                        ; |326| Far Call Occurs
	.line	268
;----------------------------------------------------------------------
; 327 | VAR_NaN(&REG_VREF_O);                                                  
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |327| 
        ldp       @CL187,DP
        ldiu      @CL187,ar2            ; |327| 
        callu     r0                    ; far call to _VAR_NaN	; |327| 
                                        ; |327| Far Call Occurs
	.line	269
;----------------------------------------------------------------------
; 328 | VAR_NaN(&REG_FREQ_O);                                                  
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |328| 
        ldp       @CL188,DP
        ldiu      @CL188,ar2            ; |328| 
        callu     r0                    ; far call to _VAR_NaN	; |328| 
                                        ; |328| Far Call Occurs
	.line	270
;----------------------------------------------------------------------
; 329 | VAR_NaN(&REG_VINC_W);                                                  
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |329| 
        ldp       @CL189,DP
        ldiu      @CL189,ar2            ; |329| 
        callu     r0                    ; far call to _VAR_NaN	; |329| 
                                        ; |329| Far Call Occurs
	.line	271
;----------------------------------------------------------------------
; 330 | VAR_NaN(&REG_VREF_W);                                                  
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |330| 
        ldp       @CL190,DP
        ldiu      @CL190,ar2            ; |330| 
        callu     r0                    ; far call to _VAR_NaN	; |330| 
                                        ; |330| Far Call Occurs
	.line	272
;----------------------------------------------------------------------
; 331 | VAR_NaN(&REG_FREQ_W);                                                  
;----------------------------------------------------------------------
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |331| 
        ldp       @CL191,DP
        ldiu      @CL191,ar2            ; |331| 
        callu     r0                    ; far call to _VAR_NaN	; |331| 
                                        ; |331| Far Call Occurs
	.line	274
;----------------------------------------------------------------------
; 333 | FREQ_O          = 0.0;  /* Oil oscillator frequency */                 
;----------------------------------------------------------------------
        ldp       @CL192,DP
        ldiu      @CL192,ar0            ; |333| 
        ldfu      0.0000000000e+00,f0   ; |333| 
        stf       f0,*ar0               ; |333| 
	.line	275
;----------------------------------------------------------------------
; 334 | IP_O            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL193,DP
        ldiu      @CL193,ar0            ; |334| 
        ldfu      0.0000000000e+00,f0   ; |334| 
        stf       f0,*ar0               ; |334| 
	.line	276
;----------------------------------------------------------------------
; 335 | RP_O            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL194,DP
        ldiu      @CL194,ar0            ; |335| 
        ldfu      0.0000000000e+00,f0   ; |335| 
        stf       f0,*ar0               ; |335| 
	.line	277
;----------------------------------------------------------------------
; 336 | IP_RP_O         = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL195,DP
        ldiu      @CL195,ar0            ; |336| 
        ldfu      0.0000000000e+00,f0   ; |336| 
        stf       f0,*ar0               ; |336| 
	.line	278
;----------------------------------------------------------------------
; 337 | DB_IP_RP_O      = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL196,DP
        ldiu      @CL196,ar0            ; |337| 
        ldfu      0.0000000000e+00,f0   ; |337| 
        stf       f0,*ar0               ; |337| 
	.line	279
;----------------------------------------------------------------------
; 338 | FREQ_W          = 0.0;  /* Water oscillator frequency */               
;----------------------------------------------------------------------
        ldp       @CL197,DP
        ldiu      @CL197,ar0            ; |338| 
        ldfu      0.0000000000e+00,f0   ; |338| 
        stf       f0,*ar0               ; |338| 
	.line	280
;----------------------------------------------------------------------
; 339 | IP_W            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL198,DP
        ldiu      @CL198,ar0            ; |339| 
        ldfu      0.0000000000e+00,f0   ; |339| 
        stf       f0,*ar0               ; |339| 
	.line	281
;----------------------------------------------------------------------
; 340 | RP_W            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL199,DP
        ldiu      @CL199,ar0            ; |340| 
        ldfu      0.0000000000e+00,f0   ; |340| 
        stf       f0,*ar0               ; |340| 
	.line	282
;----------------------------------------------------------------------
; 341 | IP_RP_W         = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL200,DP
        ldiu      @CL200,ar0            ; |341| 
        ldfu      0.0000000000e+00,f0   ; |341| 
        stf       f0,*ar0               ; |341| 
	.line	283
;----------------------------------------------------------------------
; 342 | DB_IP_RP_W      = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL201,DP
        ldiu      @CL201,ar0            ; |342| 
        ldfu      0.0000000000e+00,f0   ; |342| 
        stf       f0,*ar0               ; |342| 
	.line	284
;----------------------------------------------------------------------
; 343 | i_FREQ_O        = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL202,DP
        ldiu      @CL202,ar0            ; |343| 
        ldiu      0,r0                  ; |343| 
        sti       r0,*ar0               ; |343| 
	.line	285
;----------------------------------------------------------------------
; 344 | i_IP_O          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL203,DP
        ldiu      @CL203,ar0            ; |344| 
        sti       r0,*ar0               ; |344| 
	.line	286
;----------------------------------------------------------------------
; 345 | i_RP_O          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL204,DP
        ldiu      @CL204,ar0            ; |345| 
        sti       r0,*ar0               ; |345| 
	.line	287
;----------------------------------------------------------------------
; 346 | i_FREQ_W        = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL205,DP
        ldiu      @CL205,ar0            ; |346| 
        sti       r0,*ar0               ; |346| 
	.line	288
;----------------------------------------------------------------------
; 347 | i_IP_W          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL206,DP
        ldiu      @CL206,ar0            ; |347| 
        sti       r0,*ar0               ; |347| 
	.line	289
;----------------------------------------------------------------------
; 348 | i_RP_W          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL207,DP
        ldiu      @CL207,ar0            ; |348| 
        sti       r0,*ar0               ; |348| 
	.line	290
;----------------------------------------------------------------------
; 349 | i_TEMP          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL208,DP
        ldiu      @CL208,ar0            ; |349| 
        sti       r0,*ar0               ; |349| 
	.line	291
;----------------------------------------------------------------------
; 350 | i_WC            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL209,DP
        ldiu      @CL209,ar0            ; |350| 
        sti       r0,*ar0               ; |350| 
	.line	293
;----------------------------------------------------------------------
; 352 | compatibility_dummy = 0.0;                                             
; 354 | //RUSS_TBL_LEN = Find_Russ_Tbl_Len();                                  
;----------------------------------------------------------------------
        ldp       @CL210,DP
        ldiu      @CL210,ar0            ; |352| 
        ldfu      0.0000000000e+00,f0   ; |352| 
        stf       f0,*ar0               ; |352| 
	.line	297
;----------------------------------------------------------------------
; 356 | for (i=0;i<30;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |356| 
        sti       r0,*+fp(1)            ; |356| 
        ldfu      0.0000000000e+00,f1   ; |360| 
        ldiu      0,r3                  ; |359| 
        ldiu      0,r2                  ; |358| 
        cmpi      30,r0                 ; |356| 
        bge       L30                   ; |356| 
;*      Branch Occurs to L30            ; |356| 
L29:        
	.line	299
;----------------------------------------------------------------------
; 358 | i_LV[i]         = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL211,DP
        ldiu      *+fp(1),ir0           ; |358| 
        ldiu      @CL211,ar0            ; |358| 
        sti       r2,*+ar0(ir0)         ; |358| 
	.line	300
;----------------------------------------------------------------------
; 359 | il_LV[i]        = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL212,DP
        ldiu      @CL212,ar0            ; |359| 
        ldiu      *+fp(1),ir0           ; |359| 
        sti       r3,*+ar0(ir0)         ; |359| 
	.line	301
;----------------------------------------------------------------------
; 360 | f_LV[i]         = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL213,DP
        ldiu      @CL213,ar0            ; |360| 
        ldiu      *+fp(1),ir0           ; |360| 
        stf       f1,*+ar0(ir0)         ; |360| 
	.line	297
        ldiu      1,r0                  ; |356| 
        addi      *+fp(1),r0            ; |356| 
        sti       r0,*+fp(1)            ; |356| 
        cmpi      30,r0                 ; |356| 
        blt       L29                   ; |356| 
;*      Branch Occurs to L29            ; |356| 
L30:        
	.line	304
;----------------------------------------------------------------------
; 363 | for (i=0;i<CORMAX;i++)                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |363| 
        sti       r0,*+fp(1)            ; |363| 
        cmpi      5,r0                  ; |363| 
        bge       L34                   ; |363| 
;*      Branch Occurs to L34            ; |363| 
L31:        
	.line	306
;----------------------------------------------------------------------
; 365 | COR[i].diag = 0;                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |365| 
        ldp       @CL214,DP
        mpyi      382,ir0               ; |365| 
        ldiu      @CL214,ar0            ; |365| 
        ldfu      0.0000000000e+00,f0   ; |365| 
        stf       f0,*+ar0(ir0)         ; |365| 
	.line	307
;----------------------------------------------------------------------
; 366 | COR[i].mfr = 0;                                                        
;----------------------------------------------------------------------
        ldp       @CL215,DP
        ldiu      *+fp(1),ir0           ; |366| 
        ldiu      @CL215,ar0            ; |366| 
        mpyi      382,ir0               ; |366| 
        ldfu      0.0000000000e+00,f0   ; |366| 
        stf       f0,*+ar0(ir0)         ; |366| 
	.line	308
;----------------------------------------------------------------------
; 367 | COR[i].density = 0;                                                    
;----------------------------------------------------------------------
        ldp       @CL216,DP
        ldiu      *+fp(1),ir0           ; |367| 
        ldiu      @CL216,ar0            ; |367| 
        mpyi      382,ir0               ; |367| 
        ldfu      0.0000000000e+00,f0   ; |367| 
        stf       f0,*+ar0(ir0)         ; |367| 
	.line	311
;----------------------------------------------------------------------
; 370 | VAR_Initialize(&COR[i].damp_flow_rate, c_time, u_time_sec, 100.0, 100.0
;     | , var_no_alarm|var_no_bound);                                          
;----------------------------------------------------------------------
        ldiu      51,rs                 ; |370| 
        ldiu      6,re                  ; |370| 
        ldp       @CL217,DP
        ldiu      *+fp(1),ar2           ; |370| 
        mpyi      382,ar2               ; |370| 
        addi      @CL217,ar2            ; |370| Unsigned
        ldp       @CL218,DP
        ldiu      70,rc                 ; |370| 
        ldiu      @CL218,r0             ; |370| 
        ldfu      1.0000000000e+02,f3   ; |370| 
        ldfu      1.0000000000e+02,f2   ; |370| 
        callu     r0                    ; far call to _VAR_Initialize	; |370| 
                                        ; |370| Far Call Occurs
	.line	312
;----------------------------------------------------------------------
; 371 | sprintf(COR[i].damp_flow_rate.name, "COR%i Dampen Flow", i+1);         
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |371| 
        addi      *+fp(1),r0            ; |371| 
        ldp       @CL220,DP
        push      r0                    ; |371| 
        ldiu      @CL220,r1             ; |371| 
        push      r1                    ; |371| 
        ldiu      *+fp(1),ar2           ; |371| 
        ldp       @CL219,DP
        mpyi      382,ar2               ; |371| 
        addi      @CL219,ar2            ; |371| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |371| 
        callu     r0                    ; far call to _sprintf	; |371| 
                                        ; |371| Far Call Occurs
        subi      2,sp                  ; |371| 
	.line	313
;----------------------------------------------------------------------
; 372 | COR[i].damp_flow_rate.aux = (i<<16)|(189);                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |372| 
        ldiu      r0,ir0                ; |372| 
        ldp       @CL221,DP
        mpyi      382,ir0               ; |372| 
        ash       16,r0                 ; |372| 
        ldiu      @CL221,ar0            ; |372| 
        or        189,r0                ; |372| 
        sti       r0,*+ar0(ir0)         ; |372| 
	.line	314
;----------------------------------------------------------------------
; 373 | VAR_Update(&COR[i].damp_flow_rate, 0.0, 0, 0);                         
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |373| 
        ldiu      *+fp(1),ar2           ; |373| 
        ldp       @CL217,DP
        mpyi      382,ar2               ; |373| 
        addi      @CL217,ar2            ; |373| Unsigned
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f2            ; |373| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      0,rc                  ; |373| 
        ldiu      @CL80+1,r2            ; |373| 40b float lo half
        ldiu      0,r3                  ; |373| 
        callu     r0                    ; far call to _VAR_Update	; |373| 
                                        ; |373| Far Call Occurs
	.line	315
;----------------------------------------------------------------------
; 374 | COR[i].damp_flow_rate.vect2 = (int*)CORIOLIS_CFG;                      
;----------------------------------------------------------------------
        ldp       @CL222,DP
        ldiu      @CL222,ar0            ; |374| 
        ldiu      *+fp(1),ir0           ; |374| 
        ldp       @CL223,DP
        mpyi      382,ir0               ; |374| 
        ldiu      @CL223,r0             ; |374| 
        sti       r0,*+ar0(ir0)         ; |374| 
	.line	318
;----------------------------------------------------------------------
; 377 | VAR_Initialize(&COR[i].damp_density, c_time, u_time_sec, 100.0, 100.0,
;     | var_no_alarm|var_no_bound);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |377| 
        mpyi      382,ar2               ; |377| 
        ldp       @CL224,DP
        ldiu      70,rc                 ; |377| 
        addi      @CL224,ar2            ; |377| Unsigned
        ldp       @CL218,DP
        ldiu      51,rs                 ; |377| 
        ldiu      6,re                  ; |377| 
        ldiu      @CL218,r0             ; |377| 
        ldfu      1.0000000000e+02,f3   ; |377| 
        ldfu      1.0000000000e+02,f2   ; |377| 
        callu     r0                    ; far call to _VAR_Initialize	; |377| 
                                        ; |377| Far Call Occurs
	.line	319
;----------------------------------------------------------------------
; 378 | sprintf(COR[i].damp_density.name, "COR%i Dampen Density", i+1);        
;----------------------------------------------------------------------
        ldp       @CL226,DP
        ldiu      @CL226,r1             ; |378| 
        ldiu      1,r0                  ; |378| 
        addi      *+fp(1),r0            ; |378| 
        push      r0                    ; |378| 
        push      r1                    ; |378| 
        ldiu      *+fp(1),ar2           ; |378| 
        ldp       @CL225,DP
        mpyi      382,ar2               ; |378| 
        addi      @CL225,ar2            ; |378| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |378| 
        callu     r0                    ; far call to _sprintf	; |378| 
                                        ; |378| Far Call Occurs
        subi      2,sp                  ; |378| 
	.line	320
;----------------------------------------------------------------------
; 379 | COR[i].damp_density.aux = (i<<16)|(193);                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |379| 
        ldiu      ir0,r0                ; |379| 
        ash       16,r0                 ; |379| 
        ldp       @CL227,DP
        mpyi      382,ir0               ; |379| 
        ldiu      @CL227,ar0            ; |379| 
        or        193,r0                ; |379| 
        sti       r0,*+ar0(ir0)         ; |379| 
	.line	321
;----------------------------------------------------------------------
; 380 | VAR_Update(&COR[i].damp_density, 0.0, 0, 0);                           
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |380| 
        ldp       @CL224,DP
        ldiu      *+fp(1),ar2           ; |380| 
        mpyi      382,ar2               ; |380| 
        addi      @CL224,ar2            ; |380| Unsigned
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f2            ; |380| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      0,rc                  ; |380| 
        ldiu      @CL80+1,r2            ; |380| 40b float lo half
        ldiu      0,r3                  ; |380| 
        callu     r0                    ; far call to _VAR_Update	; |380| 
                                        ; |380| Far Call Occurs
	.line	322
;----------------------------------------------------------------------
; 381 | COR[i].damp_density.vect2 = (int*)CORIOLIS_CFG;                        
;----------------------------------------------------------------------
        ldp       @CL228,DP
        ldiu      *+fp(1),ir0           ; |381| 
        ldiu      @CL228,ar0            ; |381| 
        ldp       @CL223,DP
        mpyi      382,ir0               ; |381| 
        ldiu      @CL223,r0             ; |381| 
        sti       r0,*+ar0(ir0)         ; |381| 
	.line	325
;----------------------------------------------------------------------
; 384 | VAR_Initialize(&COR[i].mfr_cutoff, c_mass_flow, u_generic_none, 100.0,
;     | 1000.0, var_no_alarm|var_no_bound);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |384| 
        ldp       @CL229,DP
        mpyi      382,ar2               ; |384| 
        addi      @CL229,ar2            ; |384| Unsigned
        ldp       @CL218,DP
        ldiu      @CL218,r0             ; |384| 
        ldp       @CL230,DP
        ldiu      72,rc                 ; |384| 
        ldfu      @CL230,f3             ; |384| 
        ldiu      251,rs                ; |384| 
        ldiu      6,re                  ; |384| 
        ldfu      1.0000000000e+02,f2   ; |384| 
        callu     r0                    ; far call to _VAR_Initialize	; |384| 
                                        ; |384| Far Call Occurs
	.line	326
;----------------------------------------------------------------------
; 385 | sprintf(COR[i].mfr_cutoff.name, "COR%i MFR Cutoff", i+1);              
;----------------------------------------------------------------------
        ldp       @CL232,DP
        ldiu      1,r0                  ; |385| 
        addi      *+fp(1),r0            ; |385| 
        ldiu      @CL232,r1             ; |385| 
        push      r0                    ; |385| 
        push      r1                    ; |385| 
        ldiu      *+fp(1),ar2           ; |385| 
        ldp       @CL231,DP
        mpyi      382,ar2               ; |385| 
        addi      @CL231,ar2            ; |385| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |385| 
        callu     r0                    ; far call to _sprintf	; |385| 
                                        ; |385| Far Call Occurs
        subi      2,sp                  ; |385| 
	.line	327
;----------------------------------------------------------------------
; 386 | COR[i].mfr_cutoff.aux = (i<<16)|(195);                                 
;----------------------------------------------------------------------
        ldp       @CL233,DP
        ldiu      *+fp(1),r0            ; |386| 
        ldiu      @CL233,ar0            ; |386| 
        ldiu      r0,ir0                ; |386| 
        ash       16,r0                 ; |386| 
        mpyi      382,ir0               ; |386| 
        or        195,r0                ; |386| 
        sti       r0,*+ar0(ir0)         ; |386| 
	.line	328
;----------------------------------------------------------------------
; 387 | VAR_Update(&COR[i].mfr_cutoff, 0.0, 0, 0);                             
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |387| 
        ldiu      *+fp(1),ar2           ; |387| 
        ldp       @CL229,DP
        mpyi      382,ar2               ; |387| 
        addi      @CL229,ar2            ; |387| Unsigned
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f2            ; |387| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      @CL80+1,r2            ; |387| 40b float lo half
        ldiu      0,rc                  ; |387| 
        ldiu      0,r3                  ; |387| 
        callu     r0                    ; far call to _VAR_Update	; |387| 
                                        ; |387| Far Call Occurs
	.line	329
;----------------------------------------------------------------------
; 388 | COR[i].mfr_cutoff.vect2 = (int*)CORIOLIS_CFG;                          
;----------------------------------------------------------------------
        ldp       @CL234,DP
        ldiu      @CL234,ar0            ; |388| 
        ldiu      *+fp(1),ir0           ; |388| 
        ldp       @CL223,DP
        mpyi      382,ir0               ; |388| 
        ldiu      @CL223,r0             ; |388| 
        sti       r0,*+ar0(ir0)         ; |388| 
	.line	332
;----------------------------------------------------------------------
; 391 | VAR_Initialize(&COR[i].vfr_cutoff, c_volumetric_flow, u_generic_none, 1
;     | 00.0, 1000.0, var_no_alarm|var_no_bound);                              
;----------------------------------------------------------------------
        ldp       @CL235,DP
        ldiu      *+fp(1),ar2           ; |391| 
        mpyi      382,ar2               ; |391| 
        addi      @CL235,ar2            ; |391| Unsigned
        ldp       @CL218,DP
        ldiu      @CL218,r0             ; |391| 
        ldp       @CL230,DP
        ldiu      251,rs                ; |391| 
        ldiu      6,re                  ; |391| 
        ldiu      66,rc                 ; |391| 
        ldfu      @CL230,f3             ; |391| 
        ldfu      1.0000000000e+02,f2   ; |391| 
        callu     r0                    ; far call to _VAR_Initialize	; |391| 
                                        ; |391| Far Call Occurs
	.line	333
;----------------------------------------------------------------------
; 392 | sprintf(COR[i].vfr_cutoff.name, "COR%i VFR Cutoff", i+1);              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |392| 
        ldp       @CL237,DP
        addi      *+fp(1),r0            ; |392| 
        ldiu      @CL237,r1             ; |392| 
        push      r0                    ; |392| 
        ldp       @CL236,DP
        push      r1                    ; |392| 
        ldiu      *+fp(1),ar2           ; |392| 
        mpyi      382,ar2               ; |392| 
        addi      @CL236,ar2            ; |392| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |392| 
        callu     r0                    ; far call to _sprintf	; |392| 
                                        ; |392| Far Call Occurs
        subi      2,sp                  ; |392| 
	.line	334
;----------------------------------------------------------------------
; 393 | COR[i].vfr_cutoff.aux = (i<<16)|(197);                                 
;----------------------------------------------------------------------
        ldp       @CL238,DP
        ldiu      *+fp(1),r0            ; |393| 
        ldiu      r0,ir0                ; |393| 
        ldiu      @CL238,ar0            ; |393| 
        mpyi      382,ir0               ; |393| 
        ash       16,r0                 ; |393| 
        or        197,r0                ; |393| 
        sti       r0,*+ar0(ir0)         ; |393| 
	.line	335
;----------------------------------------------------------------------
; 394 | VAR_Update(&COR[i].vfr_cutoff, 0.0, 0, 0);                             
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |394| 
        ldiu      @CL67,r0              ; |394| 
        ldp       @CL235,DP
        mpyi      382,ar2               ; |394| 
        addi      @CL235,ar2            ; |394| Unsigned
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f2            ; |394| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      0,rc                  ; |394| 
        ldiu      @CL80+1,r2            ; |394| 40b float lo half
        ldiu      0,r3                  ; |394| 
        callu     r0                    ; far call to _VAR_Update	; |394| 
                                        ; |394| Far Call Occurs
	.line	336
;----------------------------------------------------------------------
; 395 | COR[i].vfr_cutoff.vect2 = (int*)CORIOLIS_CFG;                          
;----------------------------------------------------------------------
        ldp       @CL239,DP
        ldiu      *+fp(1),ir0           ; |395| 
        ldiu      @CL239,ar0            ; |395| 
        ldp       @CL223,DP
        mpyi      382,ir0               ; |395| 
        ldiu      @CL223,r0             ; |395| 
        sti       r0,*+ar0(ir0)         ; |395| 
	.line	339
;----------------------------------------------------------------------
; 398 | VAR_Initialize(&COR[i].mcf, c_mass_flow, u_generic_none, 100.0, 100000.
;     | 0, var_no_alarm|var_no_bound);                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |398| 
        mpyi      382,ar2               ; |398| 
        ldp       @CL240,DP
        ldiu      251,rs                ; |398| 
        addi      @CL240,ar2            ; |398| Unsigned
        ldp       @CL218,DP
        ldiu      6,re                  ; |398| 
        ldiu      @CL218,r0             ; |398| 
        ldp       @CL241,DP
        ldiu      72,rc                 ; |398| 
        ldfu      @CL241,f3             ; |398| 
        ldfu      1.0000000000e+02,f2   ; |398| 
        callu     r0                    ; far call to _VAR_Initialize	; |398| 
                                        ; |398| Far Call Occurs
	.line	340
;----------------------------------------------------------------------
; 399 | sprintf(COR[i].mcf.name, "COR%i MCF", i+1);                            
;----------------------------------------------------------------------
        ldp       @CL243,DP
        ldiu      1,r0                  ; |399| 
        addi      *+fp(1),r0            ; |399| 
        push      r0                    ; |399| 
        ldiu      @CL243,r1             ; |399| 
        push      r1                    ; |399| 
        ldp       @CL242,DP
        ldiu      *+fp(1),ar2           ; |399| 
        mpyi      382,ar2               ; |399| 
        addi      @CL242,ar2            ; |399| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |399| 
        callu     r0                    ; far call to _sprintf	; |399| 
                                        ; |399| Far Call Occurs
        subi      2,sp                  ; |399| 
	.line	341
;----------------------------------------------------------------------
; 400 | COR[i].mcf.aux = (i<<16)|(237);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |400| 
        ldiu      ir0,r0                ; |400| 
        ldp       @CL244,DP
        ash       16,r0                 ; |400| 
        mpyi      382,ir0               ; |400| 
        ldiu      @CL244,ar0            ; |400| 
        or        237,r0                ; |400| 
        sti       r0,*+ar0(ir0)         ; |400| 
	.line	342
;----------------------------------------------------------------------
; 401 | VAR_Update(&COR[i].mcf, 1.0, 0, 0);                                    
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |401| 
        ldiu      @CL67,r0              ; |401| 
        ldp       @CL240,DP
        mpyi      382,ar2               ; |401| 
        addi      @CL240,ar2            ; |401| Unsigned
        ldp       @CL245+0,DP
        ldfu      @CL245+0,f2           ; |401| 40b float hi half
        ldp       @CL245+1,DP
        ldiu      @CL245+1,r2           ; |401| 40b float lo half
        ldiu      0,rc                  ; |401| 
        ldiu      0,r3                  ; |401| 
        callu     r0                    ; far call to _VAR_Update	; |401| 
                                        ; |401| Far Call Occurs
	.line	343
;----------------------------------------------------------------------
; 402 | COR[i].mcf.vect2 = (int*)CORIOLIS_CFG;                                 
;----------------------------------------------------------------------
        ldp       @CL246,DP
        ldiu      *+fp(1),ir0           ; |402| 
        ldiu      @CL246,ar0            ; |402| 
        ldp       @CL223,DP
        mpyi      382,ir0               ; |402| 
        ldiu      @CL223,r0             ; |402| 
        sti       r0,*+ar0(ir0)         ; |402| 
	.line	346
;----------------------------------------------------------------------
; 405 | VAR_Initialize(&COR[i].address, c_not_classified, u_generic_none, 1.0,
;     | 1.0, var_no_alarm|var_round);                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |405| 
        ldp       @CL247,DP
        mpyi      382,ar2               ; |405| 
        addi      @CL247,ar2            ; |405| Unsigned
        ldp       @CL218,DP
        ldiu      @CL218,r0             ; |405| 
        ldiu      251,rs                ; |405| 
        ldiu      260,re                ; |405| 
        ldiu      0,rc                  ; |405| 
        ldfu      1.0000000000e+00,f3   ; |405| 
        ldfu      1.0000000000e+00,f2   ; |405| 
        callu     r0                    ; far call to _VAR_Initialize	; |405| 
                                        ; |405| Far Call Occurs
	.line	347
;----------------------------------------------------------------------
; 406 | sprintf(COR[i].address.name, "COR%i Address", i+1);                    
;----------------------------------------------------------------------
        ldp       @CL249,DP
        ldiu      @CL249,r1             ; |406| 
        ldp       @CL248,DP
        ldiu      1,r0                  ; |406| 
        addi      *+fp(1),r0            ; |406| 
        push      r0                    ; |406| 
        push      r1                    ; |406| 
        ldiu      *+fp(1),ar2           ; |406| 
        mpyi      382,ar2               ; |406| 
        addi      @CL248,ar2            ; |406| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |406| 
        callu     r0                    ; far call to _sprintf	; |406| 
                                        ; |406| Far Call Occurs
        subi      2,sp                  ; |406| 
	.line	348
;----------------------------------------------------------------------
; 407 | COR[i].address.aux = (i<<16)|(313);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |407| 
        ldiu      r0,ir0                ; |407| 
        ash       16,r0                 ; |407| 
        ldp       @CL250,DP
        mpyi      382,ir0               ; |407| 
        ldiu      @CL250,ar0            ; |407| 
        or        313,r0                ; |407| 
        sti       r0,*+ar0(ir0)         ; |407| 
	.line	349
;----------------------------------------------------------------------
; 408 | VAR_Update(&COR[i].address, 1.0, 0, 0);                                
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |408| 
        ldiu      @CL67,r0              ; |408| 
        ldp       @CL247,DP
        mpyi      382,ar2               ; |408| 
        addi      @CL247,ar2            ; |408| Unsigned
        ldp       @CL245+0,DP
        ldfu      @CL245+0,f2           ; |408| 40b float hi half
        ldp       @CL245+1,DP
        ldiu      0,rc                  ; |408| 
        ldiu      @CL245+1,r2           ; |408| 40b float lo half
        ldiu      0,r3                  ; |408| 
        callu     r0                    ; far call to _VAR_Update	; |408| 
                                        ; |408| Far Call Occurs
	.line	350
;----------------------------------------------------------------------
; 409 | COR[i].address.vect2 = (int*)CORIOLIS_INT_CFG;      /*CORIOLIS_INT_CFG
;     | instead of CORIOLIS_CFG RS*/                                           
;----------------------------------------------------------------------
        ldp       @CL251,DP
        ldiu      @CL251,ar0            ; |409| 
        ldiu      *+fp(1),ir0           ; |409| 
        ldp       @CL252,DP
        mpyi      382,ir0               ; |409| 
        ldiu      @CL252,r0             ; |409| 
        sti       r0,*+ar0(ir0)         ; |409| 
	.line	353
;----------------------------------------------------------------------
; 412 | VAR_Initialize(&COR[i].mass_unit, c_not_classified, u_generic_none, 1.0
;     | , 1.0, var_no_alarm|var_no_bound);                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |412| 
        mpyi      382,ar2               ; |412| 
        ldp       @CL253,DP
        ldiu      251,rs                ; |412| 
        addi      @CL253,ar2            ; |412| Unsigned
        ldiu      6,re                  ; |412| 
        ldp       @CL218,DP
        ldiu      0,rc                  ; |412| 
        ldiu      @CL218,r0             ; |412| 
        ldfu      1.0000000000e+00,f3   ; |412| 
        ldfu      1.0000000000e+00,f2   ; |412| 
        callu     r0                    ; far call to _VAR_Initialize	; |412| 
                                        ; |412| Far Call Occurs
	.line	354
;----------------------------------------------------------------------
; 413 | sprintf(COR[i].mass_unit.name, "COR%i Mass Flow Unit", i+1);           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |413| 
        addi      *+fp(1),r0            ; |413| 
        ldp       @CL255,DP
        push      r0                    ; |413| 
        ldiu      @CL255,r1             ; |413| 
        push      r1                    ; |413| 
        ldiu      *+fp(1),ar2           ; |413| 
        ldp       @CL254,DP
        mpyi      382,ar2               ; |413| 
        addi      @CL254,ar2            ; |413| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |413| 
        callu     r0                    ; far call to _sprintf	; |413| 
                                        ; |413| Far Call Occurs
        subi      2,sp                  ; |413| 
	.line	355
;----------------------------------------------------------------------
; 414 | COR[i].mass_unit.aux = (i<<16)|(39);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |414| 
        ldp       @CL256,DP
        ldiu      ir0,r0
        mpyi      382,ir0               ; |414| 
        ash       16,r0                 ; |414| 
        ldiu      @CL256,ar0            ; |414| 
        or        39,r0                 ; |414| 
        sti       r0,*+ar0(ir0)         ; |414| 
	.line	357
;----------------------------------------------------------------------
; 416 | COR[i].mass_unit.vect2 = (int*)CORIOLIS_INT_CFG;                       
;----------------------------------------------------------------------
        ldp       @CL257,DP
        ldiu      @CL257,ar0            ; |416| 
        ldiu      *+fp(1),ir0           ; |416| 
        ldp       @CL252,DP
        mpyi      382,ir0               ; |416| 
        ldiu      @CL252,r0             ; |416| 
        sti       r0,*+ar0(ir0)         ; |416| 
	.line	360
;----------------------------------------------------------------------
; 419 | VAR_Initialize(&COR[i].density_cutoff, c_not_classified, u_generic_none
;     | , 100.0, 1000.0, var_no_alarm|var_no_bound);                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |419| 
        ldp       @CL258,DP
        mpyi      382,ar2               ; |419| 
        addi      @CL258,ar2            ; |419| Unsigned
        ldp       @CL218,DP
        ldiu      @CL218,r0             ; |419| 
        ldiu      251,rs                ; |419| 
        ldiu      6,re                  ; |419| 
        ldp       @CL230,DP
        ldiu      0,rc                  ; |419| 
        ldfu      @CL230,f3             ; |419| 
        ldfu      1.0000000000e+02,f2   ; |419| 
        callu     r0                    ; far call to _VAR_Initialize	; |419| 
                                        ; |419| Far Call Occurs
	.line	361
;----------------------------------------------------------------------
; 420 | sprintf(COR[i].density_cutoff.name, "COR%i Density Cutoff", i+1);      
;----------------------------------------------------------------------
        ldp       @CL260,DP
        ldiu      1,r0                  ; |420| 
        addi      *+fp(1),r0            ; |420| 
        push      r0                    ; |420| 
        ldiu      @CL260,r1             ; |420| 
        push      r1                    ; |420| 
        ldp       @CL259,DP
        ldiu      *+fp(1),ar2           ; |420| 
        mpyi      382,ar2               ; |420| 
        addi      @CL259,ar2            ; |420| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |420| 
        callu     r0                    ; far call to _sprintf	; |420| 
                                        ; |420| Far Call Occurs
        subi      2,sp                  ; |420| 
	.line	362
;----------------------------------------------------------------------
; 421 | COR[i].density_cutoff.aux = (i<<16)|(149);                             
;----------------------------------------------------------------------
        ldp       @CL261,DP
        ldiu      *+fp(1),r0            ; |421| 
        ldiu      r0,ir0                ; |421| 
        ldiu      @CL261,ar0            ; |421| 
        mpyi      382,ir0               ; |421| 
        ash       16,r0                 ; |421| 
        or        149,r0                ; |421| 
        sti       r0,*+ar0(ir0)         ; |421| 
	.line	363
;----------------------------------------------------------------------
; 422 | VAR_Update(&COR[i].density_cutoff, 0.0, 0, 0);                         
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |422| 
        ldiu      @CL67,r0              ; |422| 
        ldp       @CL258,DP
        mpyi      382,ar2               ; |422| 
        addi      @CL258,ar2            ; |422| Unsigned
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f2            ; |422| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      0,rc                  ; |422| 
        ldiu      @CL80+1,r2            ; |422| 40b float lo half
        ldiu      0,r3                  ; |422| 
        callu     r0                    ; far call to _VAR_Update	; |422| 
                                        ; |422| Far Call Occurs
	.line	364
;----------------------------------------------------------------------
; 423 | COR[i].density_cutoff.vect2 = (int*)CORIOLIS_CFG;                      
;----------------------------------------------------------------------
        ldp       @CL262,DP
        ldiu      *+fp(1),ir0           ; |423| 
        ldiu      @CL262,ar0            ; |423| 
        ldp       @CL223,DP
        mpyi      382,ir0               ; |423| 
        ldiu      @CL223,r0             ; |423| 
        sti       r0,*+ar0(ir0)         ; |423| 
	.line	366
;----------------------------------------------------------------------
; 425 | COR[i].u_density                                = u_mpv_kg_cm;         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |425| 
        ldp       @CL263,DP
        mpyi      382,ir0               ; |425| 
        ldiu      @CL263,ar0            ; |425| 
        ldiu      92,r0                 ; |425| 
        sti       r0,*+ar0(ir0)         ; |425| 
	.line	367
;----------------------------------------------------------------------
; 426 | COR[i].density_corrected                = API_error_num;               
;----------------------------------------------------------------------
        ldp       @CL264,DP
        ldiu      *+fp(1),ir0           ; |426| 
        ldiu      @CL264,ar0            ; |426| 
        ldp       @CL265,DP
        mpyi      382,ir0               ; |426| 
        ldfu      @CL265,f0             ; |426| 
        stf       f0,*+ar0(ir0)         ; |426| 
	.line	368
;----------------------------------------------------------------------
; 427 | COR[i].density_PDI_corrected    = 0;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |427| 
        ldp       @CL266,DP
        mpyi      382,ir0               ; |427| 
        ldiu      @CL266,ar0            ; |427| 
        ldfu      0.0000000000e+00,f0   ; |427| 
        stf       f0,*+ar0(ir0)         ; |427| 
	.line	369
;----------------------------------------------------------------------
; 428 | COR[i].u_density_corrected              = u_mpv_deg_API_60F;           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |428| 
        ldp       @CL267,DP
        mpyi      382,ir0               ; |428| 
        ldiu      @CL267,ar0            ; |428| 
        ldiu      105,r0                ; |428| 
        sti       r0,*+ar0(ir0)         ; |428| 
	.line	370
;----------------------------------------------------------------------
; 429 | COR[i].u_P                                              = u_p_psi;     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |429| 
        ldp       @CL268,DP
        mpyi      382,ir0               ; |429| 
        ldiu      @CL268,ar0            ; |429| 
        ldiu      6,r0                  ; |429| 
        sti       r0,*+ar0(ir0)         ; |429| 
	.line	371
;----------------------------------------------------------------------
; 430 | COR[i].P                                                = 0;           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |430| 
        ldp       @CL269,DP
        mpyi      382,ir0               ; |430| 
        ldiu      @CL269,ar0            ; |430| 
        ldfu      0.0000000000e+00,f0   ; |430| 
        stf       f0,*+ar0(ir0)         ; |430| 
	.line	372
;----------------------------------------------------------------------
; 431 | COR[i].T                                                = 0;           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |431| 
        ldp       @CL270,DP
        mpyi      382,ir0               ; |431| 
        ldiu      @CL270,ar0            ; |431| 
        ldfu      0.0000000000e+00,f0   ; |431| 
        stf       f0,*+ar0(ir0)         ; |431| 
	.line	373
;----------------------------------------------------------------------
; 432 | COR[i].u_T                                              = u_temp_F;    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |432| 
        ldp       @CL271,DP
        mpyi      382,ir0               ; |432| 
        ldiu      @CL271,ar0            ; |432| 
        ldiu      33,r0                 ; |432| 
        sti       r0,*+ar0(ir0)         ; |432| 
	.line	374
;----------------------------------------------------------------------
; 433 | COR[i].vfr                                              = 0;           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |433| 
        ldp       @CL272,DP
        mpyi      382,ir0               ; |433| 
        ldiu      @CL272,ar0            ; |433| 
        ldfu      0.0000000000e+00,f0   ; |433| 
        stf       f0,*+ar0(ir0)         ; |433| 
	.line	375
;----------------------------------------------------------------------
; 434 | COR[i].visc                                     = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |434| 
        ldp       @CL273,DP
        mpyi      382,ir0               ; |434| 
        ldiu      @CL273,ar0            ; |434| 
        ldfu      0.0000000000e+00,f0   ; |434| 
        stf       f0,*+ar0(ir0)         ; |434| 
	.line	376
;----------------------------------------------------------------------
; 435 | COR[i].press                                    = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |435| 
        ldp       @CL274,DP
        mpyi      382,ir0               ; |435| 
        ldiu      @CL274,ar0            ; |435| 
        ldfu      0.0000000000e+00,f0   ; |435| 
        stf       f0,*+ar0(ir0)         ; |435| 
	.line	377
;----------------------------------------------------------------------
; 436 | COR[i].mass_total                               = 0;                   
;----------------------------------------------------------------------
        ldp       @CL275,DP
        ldiu      *+fp(1),ir0           ; |436| 
        ldiu      @CL275,ar0            ; |436| 
        mpyi      382,ir0               ; |436| 
        ldfu      0.0000000000e+00,f0   ; |436| 
        stf       f0,*+ar0(ir0)         ; |436| 
	.line	378
;----------------------------------------------------------------------
; 437 | COR[i].volume_total                     = 0;                           
;----------------------------------------------------------------------
        ldp       @CL276,DP
        ldiu      *+fp(1),ir0           ; |437| 
        mpyi      382,ir0               ; |437| 
        ldiu      @CL276,ar0            ; |437| 
        ldfu      0.0000000000e+00,f0   ; |437| 
        stf       f0,*+ar0(ir0)         ; |437| 
	.line	379
;----------------------------------------------------------------------
; 438 | COR[i].mass_inv                                 = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |438| 
        ldp       @CL277,DP
        mpyi      382,ir0               ; |438| 
        ldiu      @CL277,ar0            ; |438| 
        ldfu      0.0000000000e+00,f0   ; |438| 
        stf       f0,*+ar0(ir0)         ; |438| 
	.line	380
;----------------------------------------------------------------------
; 439 | COR[i].volume_inv                               = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |439| 
        ldp       @CL278,DP
        mpyi      382,ir0               ; |439| 
        ldiu      @CL278,ar0            ; |439| 
        ldfu      0.0000000000e+00,f0   ; |439| 
        stf       f0,*+ar0(ir0)         ; |439| 
	.line	381
;----------------------------------------------------------------------
; 440 | COR[i].raw_tube_freq                    = 0;                           
;----------------------------------------------------------------------
        ldp       @CL279,DP
        ldiu      *+fp(1),ir0           ; |440| 
        ldiu      @CL279,ar0            ; |440| 
        mpyi      382,ir0               ; |440| 
        ldfu      0.0000000000e+00,f0   ; |440| 
        stf       f0,*+ar0(ir0)         ; |440| 
	.line	382
;----------------------------------------------------------------------
; 441 | COR[i].left_pickup_value                = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |441| 
        ldp       @CL280,DP
        mpyi      382,ir0               ; |441| 
        ldiu      @CL280,ar0            ; |441| 
        ldfu      0.0000000000e+00,f0   ; |441| 
        stf       f0,*+ar0(ir0)         ; |441| 
	.line	383
;----------------------------------------------------------------------
; 442 | COR[i].right_pickup_value               = 0;                           
;----------------------------------------------------------------------
        ldp       @CL281,DP
        ldiu      *+fp(1),ir0           ; |442| 
        ldiu      @CL281,ar0            ; |442| 
        mpyi      382,ir0               ; |442| 
        ldfu      0.0000000000e+00,f0   ; |442| 
        stf       f0,*+ar0(ir0)         ; |442| 
	.line	384
;----------------------------------------------------------------------
; 443 | COR[i].drive_gain                               = 0;                   
;----------------------------------------------------------------------
        ldp       @CL282,DP
        ldiu      @CL282,ar0            ; |443| 
        ldiu      *+fp(1),ir0           ; |443| 
        mpyi      382,ir0               ; |443| 
        ldfu      0.0000000000e+00,f0   ; |443| 
        stf       f0,*+ar0(ir0)         ; |443| 
	.line	385
;----------------------------------------------------------------------
; 444 | COR[i].u_v                                              = u_generic_unk
;     | nown;                                                                  
;----------------------------------------------------------------------
        ldp       @CL283,DP
        ldiu      *+fp(1),ir0           ; |444| 
        ldiu      @CL283,ar0            ; |444| 
        mpyi      382,ir0               ; |444| 
        ldiu      252,r0                ; |444| 
        sti       r0,*+ar0(ir0)         ; |444| 
	.line	386
;----------------------------------------------------------------------
; 445 | COR[i].u_vfr                                    = u_generic_unknown;   
;----------------------------------------------------------------------
        ldp       @CL284,DP
        ldiu      *+fp(1),ir0           ; |445| 
        mpyi      382,ir0               ; |445| 
        ldiu      @CL284,ar0            ; |445| 
        sti       r0,*+ar0(ir0)         ; |445| 
	.line	387
;----------------------------------------------------------------------
; 446 | COR[i].u_visc                                   = u_generic_unknown;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |446| 
        ldp       @CL285,DP
        mpyi      382,ir0               ; |446| 
        ldiu      @CL285,ar0            ; |446| 
        sti       r0,*+ar0(ir0)         ; |446| 
	.line	388
;----------------------------------------------------------------------
; 447 | COR[i].u_m                                              = u_generic_unk
;     | nown;                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |447| 
        ldp       @CL286,DP
        mpyi      382,ir0               ; |447| 
        ldiu      @CL286,ar0            ; |447| 
        sti       r0,*+ar0(ir0)         ; |447| 
	.line	389
;----------------------------------------------------------------------
; 448 | COR[i].u_mfr                                    = u_generic_unknown;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |448| 
        ldp       @CL287,DP
        mpyi      382,ir0               ; |448| 
        ldiu      @CL287,ar0            ; |448| 
        sti       r0,*+ar0(ir0)         ; |448| 
	.line	390
;----------------------------------------------------------------------
; 449 | COR[i].Z.val                                    = 0;                   
;----------------------------------------------------------------------
        ldp       @CL288,DP
        ldiu      *+fp(1),ir0           ; |449| 
        ldiu      @CL288,ar0            ; |449| 
        mpyi      382,ir0               ; |449| 
        ldiu      0,r0                  ; |449| 
        sti       r0,*+ar0(ir0)         ; |449| 
	.line	304
        ldiu      1,r0                  ; |363| 
        addi      *+fp(1),r0            ; |363| 
        sti       r0,*+fp(1)            ; |363| 
        cmpi      5,r0                  ; |363| 
        blt       L31                   ; |363| 
;*      Branch Occurs to L31            ; |363| 
L34:        
	.line	393
;----------------------------------------------------------------------
; 452 | COR[0].Z.vect  = (int*)CORIOLIS_ZERO1;                                 
;----------------------------------------------------------------------
        ldp       @CL289,DP
        ldiu      @CL289,ar0            ; |452| 
        ldp       @CL290,DP
        ldiu      @CL290,r0             ; |452| 
        sti       r0,*ar0               ; |452| 
	.line	394
;----------------------------------------------------------------------
; 453 | COR[1].Z.vect  = (int*)CORIOLIS_ZERO2;                                 
;----------------------------------------------------------------------
        ldp       @CL291,DP
        ldiu      @CL291,ar0            ; |453| 
        ldp       @CL292,DP
        ldiu      @CL292,r0             ; |453| 
        sti       r0,*ar0               ; |453| 
	.line	395
;----------------------------------------------------------------------
; 454 | COR[2].Z.vect  = (int*)CORIOLIS_ZERO3;                                 
;----------------------------------------------------------------------
        ldp       @CL293,DP
        ldiu      @CL293,ar0            ; |454| 
        ldp       @CL294,DP
        ldiu      @CL294,r0             ; |454| 
        sti       r0,*ar0               ; |454| 
	.line	396
;----------------------------------------------------------------------
; 455 | COR[3].Z.vect  = (int*)CORIOLIS_ZERO4;                                 
;----------------------------------------------------------------------
        ldp       @CL295,DP
        ldiu      @CL295,ar0            ; |455| 
        ldp       @CL296,DP
        ldiu      @CL296,r0             ; |455| 
        sti       r0,*ar0               ; |455| 
	.line	397
;----------------------------------------------------------------------
; 456 | COR[0].Z.vect2 = NULL_PTR;                              /*define .vect2
;     |  for ZERO coil or sys freeze RS*/                                      
;----------------------------------------------------------------------
        ldp       @CL297,DP
        ldiu      @CL297,ar0            ; |456| 
        ldiu      0,r0                  ; |456| 
        sti       r0,*ar0               ; |456| 
	.line	398
;----------------------------------------------------------------------
; 457 | COR[1].Z.vect2 = NULL_PTR;                                             
;----------------------------------------------------------------------
        ldp       @CL298,DP
        ldiu      @CL298,ar0            ; |457| 
        sti       r0,*ar0               ; |457| 
	.line	399
;----------------------------------------------------------------------
; 458 | COR[2].Z.vect2 = NULL_PTR;                                             
;----------------------------------------------------------------------
        ldp       @CL299,DP
        ldiu      @CL299,ar0            ; |458| 
        sti       r0,*ar0               ; |458| 
	.line	400
;----------------------------------------------------------------------
; 459 | COR[3].Z.vect2 = NULL_PTR;                                             
;----------------------------------------------------------------------
        ldp       @CL300,DP
        ldiu      @CL300,ar0            ; |459| 
        sti       r0,*ar0               ; |459| 
	.line	402
;----------------------------------------------------------------------
; 461 | for (i=0;i<FCMAX;i++)                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(1)            ; |461| 
        cmpi      3,r0                  ; |461| 
        bge       L51                   ; |461| 
;*      Branch Occurs to L51            ; |461| 
L35:        
	.line	405
;----------------------------------------------------------------------
; 464 | PRESS[i].u_DP           = u_p_in_H2O_60F;                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |464| 
        ldp       @CL301,DP
        mpyi      9,ir0                 ; |464| 
        ldiu      @CL301,ar0            ; |464| 
        ldiu      145,r0                ; |464| 
        sti       r0,*+ar0(ir0)         ; |464| 
	.line	406
;----------------------------------------------------------------------
; 465 | PRESS[i].u_SP           = u_p_psi;                                     
;----------------------------------------------------------------------
        ldp       @CL302,DP
        ldiu      *+fp(1),ir0           ; |465| 
        ldiu      @CL302,ar0            ; |465| 
        mpyi      9,ir0                 ; |465| 
        ldiu      6,r0                  ; |465| 
        sti       r0,*+ar0(ir0)         ; |465| 
	.line	407
;----------------------------------------------------------------------
; 466 | PRESS[i].u_PT           = u_temp_F;                                    
;----------------------------------------------------------------------
        ldp       @CL303,DP
        ldiu      *+fp(1),ir0           ; |466| 
        ldiu      @CL303,ar0            ; |466| 
        mpyi      9,ir0                 ; |466| 
        ldiu      33,r0                 ; |466| 
        sti       r0,*+ar0(ir0)         ; |466| 
	.line	408
;----------------------------------------------------------------------
; 467 | PRESS[i].p_delta        = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL304,DP
        ldiu      *+fp(1),ir0           ; |467| 
        ldiu      @CL304,ar0            ; |467| 
        mpyi      9,ir0                 ; |467| 
        ldfu      0.0000000000e+00,f0   ; |467| 
        stf       f0,*+ar0(ir0)         ; |467| 
	.line	409
;----------------------------------------------------------------------
; 468 | PRESS[i].p_static       = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL305,DP
        ldiu      *+fp(1),ir0           ; |468| 
        ldiu      @CL305,ar0            ; |468| 
        mpyi      9,ir0                 ; |468| 
        ldfu      0.0000000000e+00,f0   ; |468| 
        stf       f0,*+ar0(ir0)         ; |468| 
	.line	410
;----------------------------------------------------------------------
; 469 | PRESS[i].T                      = 0;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |469| 
        ldp       @CL306,DP
        mpyi      9,ir0                 ; |469| 
        ldiu      @CL306,ar0            ; |469| 
        ldfu      0.0000000000e+00,f0   ; |469| 
        stf       f0,*+ar0(ir0)         ; |469| 
	.line	411
;----------------------------------------------------------------------
; 470 | PRESS[i].diag0          = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL307,DP
        ldiu      *+fp(1),ir0           ; |470| 
        ldiu      @CL307,ar0            ; |470| 
        mpyi      9,ir0                 ; |470| 
        ldfu      0.0000000000e+00,f0   ; |470| 
        stf       f0,*+ar0(ir0)         ; |470| 
	.line	412
;----------------------------------------------------------------------
; 471 | PRESS[i].diag1          = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL308,DP
        ldiu      @CL308,ar0            ; |471| 
        ldiu      *+fp(1),ir0           ; |471| 
        mpyi      9,ir0                 ; |471| 
        ldfu      0.0000000000e+00,f0   ; |471| 
        stf       f0,*+ar0(ir0)         ; |471| 
	.line	413
;----------------------------------------------------------------------
; 472 | PRESS[i].diag2          = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |472| 
        ldp       @CL309,DP
        mpyi      9,ir0                 ; |472| 
        ldiu      @CL309,ar0            ; |472| 
        ldfu      0.0000000000e+00,f0   ; |472| 
        stf       f0,*+ar0(ir0)         ; |472| 
	.line	416
;----------------------------------------------------------------------
; 475 | TMPTRANS[i].T                                   = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |475| 
        ldp       @CL310,DP
        mpyi      6,ir0                 ; |475| 
        ldiu      @CL310,ar0            ; |475| 
        ldfu      0.0000000000e+00,f0   ; |475| 
        stf       f0,*+ar0(ir0)         ; |475| 
	.line	417
;----------------------------------------------------------------------
; 476 | TMPTRANS[i].etc0                                = 0;                   
;----------------------------------------------------------------------
        ldp       @CL311,DP
        ldiu      *+fp(1),ir0           ; |476| 
        ldiu      @CL311,ar0            ; |476| 
        mpyi      6,ir0                 ; |476| 
        ldfu      0.0000000000e+00,f0   ; |476| 
        stf       f0,*+ar0(ir0)         ; |476| 
	.line	418
;----------------------------------------------------------------------
; 477 | TMPTRANS[i].etc1                                = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |477| 
        ldp       @CL312,DP
        mpyi      6,ir0                 ; |477| 
        ldiu      @CL312,ar0            ; |477| 
        ldfu      0.0000000000e+00,f0   ; |477| 
        stf       f0,*+ar0(ir0)         ; |477| 
	.line	419
;----------------------------------------------------------------------
; 478 | TMPTRANS[i].etc2                                = 0;                   
;----------------------------------------------------------------------
        ldp       @CL313,DP
        ldiu      *+fp(1),ir0           ; |478| 
        ldiu      @CL313,ar0            ; |478| 
        mpyi      6,ir0                 ; |478| 
        ldfu      0.0000000000e+00,f0   ; |478| 
        stf       f0,*+ar0(ir0)         ; |478| 
	.line	420
;----------------------------------------------------------------------
; 479 | TMPTRANS[i].etc3                                = 0;                   
;----------------------------------------------------------------------
        ldp       @CL314,DP
        ldiu      *+fp(1),ir0           ; |479| 
        ldiu      @CL314,ar0            ; |479| 
        mpyi      6,ir0                 ; |479| 
        ldfu      0.0000000000e+00,f0   ; |479| 
        stf       f0,*+ar0(ir0)         ; |479| 
	.line	421
;----------------------------------------------------------------------
; 480 | TMPTRANS[i].etc4                                = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |480| 
        ldp       @CL315,DP
        mpyi      6,ir0                 ; |480| 
        ldiu      @CL315,ar0            ; |480| 
        ldfu      0.0000000000e+00,f0   ; |480| 
        stf       f0,*+ar0(ir0)         ; |480| 
	.line	422
;----------------------------------------------------------------------
; 481 | FC[i].Dadj                                              = 0;    /* Adju
;     | sted Density */                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |481| 
        ldp       @CL316,DP
        mpyi      1336,ir0              ; |481| 
        ldiu      @CL316,ar0            ; |481| 
        ldfu      0.0000000000e+00,f0   ; |481| 
        stf       f0,*+ar0(ir0)         ; |481| 
	.line	423
;----------------------------------------------------------------------
; 482 | FC[i].PULSE_STAT                                = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |482| 
        ldp       @CL317,DP
        mpyi      1336,ir0              ; |482| 
        ldiu      @CL317,ar0            ; |482| 
        ldiu      0,r0                  ; |482| 
        sti       r0,*+ar0(ir0)         ; |482| 
	.line	424
;----------------------------------------------------------------------
; 483 | FC[i].net_watercut                              = 0.0;                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |483| 
        ldp       @CL318,DP
        mpyi      1336,ir0              ; |483| 
        ldiu      @CL318,ar0            ; |483| 
        ldfu      0.0000000000e+00,f0   ; |483| 
        stf       f0,*+ar0(ir0)         ; |483| 
	.line	425
;----------------------------------------------------------------------
; 484 | FC[i].net_watercut_mass                 = 0.0;                         
;----------------------------------------------------------------------
        ldp       @CL319,DP
        ldiu      *+fp(1),ir0           ; |484| 
        ldiu      @CL319,ar0            ; |484| 
        mpyi      1336,ir0              ; |484| 
        ldfu      0.0000000000e+00,f0   ; |484| 
        stf       f0,*+ar0(ir0)         ; |484| 
	.line	426
;----------------------------------------------------------------------
; 485 | FC[i].density_PDI_corrected     = API_error_num;                       
;----------------------------------------------------------------------
        ldp       @CL320,DP
        ldiu      *+fp(1),ir0           ; |485| 
        ldiu      @CL320,ar0            ; |485| 
        ldp       @CL265,DP
        mpyi      1336,ir0              ; |485| 
        ldfu      @CL265,f0             ; |485| 
        stf       f0,*+ar0(ir0)         ; |485| 
	.line	428
;----------------------------------------------------------------------
; 487 | VAR_NaN(&FC[i].PULSE_FREQ);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |487| 
        ldp       @CL321,DP
        mpyi      1336,ar2              ; |487| 
        addi      @CL321,ar2            ; |487| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |487| 
        callu     r0                    ; far call to _VAR_NaN	; |487| 
                                        ; |487| Far Call Occurs
	.line	430
;----------------------------------------------------------------------
; 489 | if (FC[i].USE_PDI_SALINITY || !FC[i].MAN_SALINITY)                     
;----------------------------------------------------------------------
        ldp       @CL322,DP
        ldiu      *+fp(1),ir0           ; |489| 
        ldiu      @CL322,ar0            ; |489| 
        mpyi      1336,ir0              ; |489| 
        ldiu      *+ar0(ir0),r0         ; |489| 
        cmpi      0,r0                  ; |489| 
        bne       L37                   ; |489| 
;*      Branch Occurs to L37            ; |489| 
        ldiu      *+fp(1),ir0           ; |489| 
        ldp       @CL323,DP
        mpyi      1336,ir0              ; |489| 
        ldiu      @CL323,ar0            ; |489| 
        ldiu      *+ar0(ir0),r0         ; |489| 
        cmpi      0,r0                  ; |489| 
        bne       L38                   ; |489| 
;*      Branch Occurs to L38            ; |489| 
L37:        
	.line	431
;----------------------------------------------------------------------
; 490 | VAR_NaN(&FC[i].salinity);                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |490| 
        ldp       @CL324,DP
        mpyi      1336,ar2              ; |490| 
        addi      @CL324,ar2            ; |490| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |490| 
        callu     r0                    ; far call to _VAR_NaN	; |490| 
                                        ; |490| Far Call Occurs
L38:        
	.line	433
;----------------------------------------------------------------------
; 492 | if (USE_PDI_WATERCUT.val || CALC_WC_DENSITY.val || !FC[i].MAN_WATERCUT)
;     |                                                                        
;----------------------------------------------------------------------
        ldp       @CL325,DP
        ldiu      @CL325,ar0            ; |492| 
        ldiu      *ar0,r0               ; |492| 
        cmpi      0,r0                  ; |492| 
        bne       L41                   ; |492| 
;*      Branch Occurs to L41            ; |492| 
        ldp       @CL326,DP
        ldiu      @CL326,ar0            ; |492| 
        ldiu      *ar0,r0               ; |492| 
        cmpi      0,r0                  ; |492| 
        bne       L41                   ; |492| 
;*      Branch Occurs to L41            ; |492| 
        ldiu      *+fp(1),ir0           ; |492| 
        ldp       @CL327,DP
        mpyi      1336,ir0              ; |492| 
        ldiu      @CL327,ar0            ; |492| 
        ldiu      *+ar0(ir0),r0         ; |492| 
        cmpi      0,r0                  ; |492| 
        bne       L42                   ; |492| 
;*      Branch Occurs to L42            ; |492| 
L41:        
	.line	434
;----------------------------------------------------------------------
; 493 | VAR_NaN(&FC[i].watercut);                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |493| 
        ldp       @CL328,DP
        mpyi      1336,ar2              ; |493| 
        addi      @CL328,ar2            ; |493| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |493| 
        callu     r0                    ; far call to _VAR_NaN	; |493| 
                                        ; |493| Far Call Occurs
L42:        
	.line	436
;----------------------------------------------------------------------
; 495 | if (!FC[i].MAN_PRESSURE)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |495| 
        ldp       @CL329,DP
        mpyi      1336,ir0              ; |495| 
        ldiu      @CL329,ar0            ; |495| 
        ldiu      *+ar0(ir0),r0         ; |495| 
        cmpi      0,r0                  ; |495| 
        bne       L44                   ; |495| 
;*      Branch Occurs to L44            ; |495| 
	.line	437
;----------------------------------------------------------------------
; 496 | VAR_NaN(&FC[i].pressure);                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |496| 
        ldp       @CL330,DP
        mpyi      1336,ar2              ; |496| 
        addi      @CL330,ar2            ; |496| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |496| 
        callu     r0                    ; far call to _VAR_NaN	; |496| 
                                        ; |496| Far Call Occurs
L44:        
	.line	439
;----------------------------------------------------------------------
; 498 | if (FC[i].USE_PDI_TEMP || !FC[i].MAN_TEMP)                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |498| 
        ldp       @CL331,DP
        mpyi      1336,ir0              ; |498| 
        ldiu      @CL331,ar0            ; |498| 
        ldiu      *+ar0(ir0),r0         ; |498| 
        cmpi      0,r0                  ; |498| 
        bne       L46                   ; |498| 
;*      Branch Occurs to L46            ; |498| 
        ldiu      *+fp(1),ir0           ; |498| 
        ldp       @CL332,DP
        mpyi      1336,ir0              ; |498| 
        ldiu      @CL332,ar0            ; |498| 
        ldiu      *+ar0(ir0),r0         ; |498| 
        cmpi      0,r0                  ; |498| 
        bne       L47                   ; |498| 
;*      Branch Occurs to L47            ; |498| 
L46:        
	.line	440
;----------------------------------------------------------------------
; 499 | VAR_NaN(&FC[i].T);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |499| 
        ldp       @CL333,DP
        mpyi      1336,ar2              ; |499| 
        addi      @CL333,ar2            ; |499| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |499| 
        callu     r0                    ; far call to _VAR_NaN	; |499| 
                                        ; |499| Far Call Occurs
L47:        
	.line	442
;----------------------------------------------------------------------
; 501 | if (!FC[i].MAN_FLOW)                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |501| 
        ldp       @CL334,DP
        mpyi      1336,ir0              ; |501| 
        ldiu      @CL334,ar0            ; |501| 
        ldiu      *+ar0(ir0),r0         ; |501| 
        cmpi      0,r0                  ; |501| 
        bne       L49                   ; |501| 
;*      Branch Occurs to L49            ; |501| 
	.line	443
;----------------------------------------------------------------------
; 502 | VAR_NaN(&FC[i].FLOW_TOTAL);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |502| 
        ldp       @CL335,DP
        mpyi      1336,ar2              ; |502| 
        addi      @CL335,ar2            ; |502| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |502| 
        callu     r0                    ; far call to _VAR_NaN	; |502| 
                                        ; |502| Far Call Occurs
L49:        
	.line	445
;----------------------------------------------------------------------
; 504 | VAR_NaN(&FC[i].FLOW_WATER);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |504| 
        ldp       @CL336,DP
        mpyi      1336,ar2              ; |504| 
        addi      @CL336,ar2            ; |504| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |504| 
        callu     r0                    ; far call to _VAR_NaN	; |504| 
                                        ; |504| Far Call Occurs
	.line	446
;----------------------------------------------------------------------
; 505 | VAR_NaN(&FC[i].FLOW_OIL);                                              
;----------------------------------------------------------------------
        ldp       @CL337,DP
        ldiu      *+fp(1),ar2           ; |505| 
        mpyi      1336,ar2              ; |505| 
        addi      @CL337,ar2            ; |505| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |505| 
        callu     r0                    ; far call to _VAR_NaN	; |505| 
                                        ; |505| Far Call Occurs
	.line	447
;----------------------------------------------------------------------
; 506 | VAR_NaN(&FC[i].GROSS_TOTAL);                                           
;----------------------------------------------------------------------
        ldp       @CL338,DP
        ldiu      *+fp(1),ar2           ; |506| 
        mpyi      1336,ar2              ; |506| 
        addi      @CL338,ar2            ; |506| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |506| 
        callu     r0                    ; far call to _VAR_NaN	; |506| 
                                        ; |506| Far Call Occurs
	.line	448
;----------------------------------------------------------------------
; 507 | VAR_NaN(&FC[i].GROSS_WATER);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |507| 
        ldp       @CL339,DP
        mpyi      1336,ar2              ; |507| 
        addi      @CL339,ar2            ; |507| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |507| 
        callu     r0                    ; far call to _VAR_NaN	; |507| 
                                        ; |507| Far Call Occurs
	.line	449
;----------------------------------------------------------------------
; 508 | VAR_NaN(&FC[i].GROSS_OIL);                                             
;----------------------------------------------------------------------
        ldp       @CL340,DP
        ldiu      *+fp(1),ar2           ; |508| 
        mpyi      1336,ar2              ; |508| 
        addi      @CL340,ar2            ; |508| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |508| 
        callu     r0                    ; far call to _VAR_NaN	; |508| 
                                        ; |508| Far Call Occurs
	.line	450
;----------------------------------------------------------------------
; 509 | VAR_NaN(&FC[i].NET_FLOW_TOTAL);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |509| 
        ldp       @CL341,DP
        mpyi      1336,ar2              ; |509| 
        addi      @CL341,ar2            ; |509| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |509| 
        callu     r0                    ; far call to _VAR_NaN	; |509| 
                                        ; |509| Far Call Occurs
	.line	451
;----------------------------------------------------------------------
; 510 | VAR_NaN(&FC[i].NET_FLOW_WATER);                                        
;----------------------------------------------------------------------
        ldp       @CL342,DP
        ldiu      *+fp(1),ar2           ; |510| 
        mpyi      1336,ar2              ; |510| 
        addi      @CL342,ar2            ; |510| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |510| 
        callu     r0                    ; far call to _VAR_NaN	; |510| 
                                        ; |510| Far Call Occurs
	.line	452
;----------------------------------------------------------------------
; 511 | VAR_NaN(&FC[i].NET_FLOW_OIL);                                          
;----------------------------------------------------------------------
        ldp       @CL343,DP
        ldiu      *+fp(1),ar2           ; |511| 
        mpyi      1336,ar2              ; |511| 
        addi      @CL343,ar2            ; |511| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |511| 
        callu     r0                    ; far call to _VAR_NaN	; |511| 
                                        ; |511| Far Call Occurs
	.line	453
;----------------------------------------------------------------------
; 512 | VAR_NaN(&FC[i].NET_TOTAL);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |512| 
        ldp       @CL344,DP
        mpyi      1336,ar2              ; |512| 
        addi      @CL344,ar2            ; |512| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |512| 
        callu     r0                    ; far call to _VAR_NaN	; |512| 
                                        ; |512| Far Call Occurs
	.line	454
;----------------------------------------------------------------------
; 513 | VAR_NaN(&FC[i].NET_WATER);                                             
;----------------------------------------------------------------------
        ldp       @CL345,DP
        ldiu      *+fp(1),ar2           ; |513| 
        mpyi      1336,ar2              ; |513| 
        addi      @CL345,ar2            ; |513| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |513| 
        callu     r0                    ; far call to _VAR_NaN	; |513| 
                                        ; |513| Far Call Occurs
	.line	455
;----------------------------------------------------------------------
; 514 | VAR_NaN(&FC[i].NET_OIL);                                               
; 516 | //accumulated whole number component of gross oil                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |514| 
        ldp       @CL346,DP
        mpyi      1336,ar2              ; |514| 
        addi      @CL346,ar2            ; |514| Unsigned
        ldp       @CL127,DP
        ldiu      @CL127,r0             ; |514| 
        callu     r0                    ; far call to _VAR_NaN	; |514| 
                                        ; |514| Far Call Occurs
	.line	458
;----------------------------------------------------------------------
; 517 | FC[i].gross_oil_whole_part              = floor(FC[i].GROSS_OIL.calc_va
;     | l);                                                                    
; 519 | //accumulated fractional component of gross oil                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |517| 
        ldp       @CL348,DP
        mpyi      1336,ar0              ; |517| 
        addi      @CL348,ar0            ; |517| Unsigned
        ldfu      *ar0,f0               ; |517| 40b float hi half
        ldp       @CL349,DP
        ldiu      *+ar0,r0              ; |517| 40b float lo half
        ldiu      @CL349,r1             ; |517| 
        rnd       f0,f2                 ; |517| Demote to low precision
        callu     r1                    ; far call to _floor	; |517| 
                                        ; |517| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |517| 
        ldiu      255,r1                ; |517| 
        ldp       @CL347,DP
        mpyi      1336,ar0              ; |517| 
        addi      @CL347,ar0            ; |517| Unsigned
        andn      r1,f0                 ; |517| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |517| Store high half
        sti       r0,*+ar0              ; |517| Store low half
	.line	461
;----------------------------------------------------------------------
; 520 | FC[i].gross_oil_fract_part              = FC[i].GROSS_OIL.calc_val - fl
;     | oor(FC[0].GROSS_OIL.calc_val);                                         
; 522 | //accumulated whole number component of gross water                    
;----------------------------------------------------------------------
        ldp       @CL348,DP
        ldiu      @CL348,ar0            ; |520| 
        ldfu      *ar0,f0               ; |520| 40b float hi half
        ldiu      *+ar0,r0              ; |520| 40b float lo half
        ldp       @CL349,DP
        rnd       f0,f2                 ; |520| Demote to low precision
        ldiu      @CL349,r1             ; |520| 
        callu     r1                    ; far call to _floor	; |520| 
                                        ; |520| Far Call Occurs
        ldiu      *+fp(1),ar1           ; |520| 
        ldiu      255,r1                ; |520| 
        mpyi      1336,ar1              ; |520| 
        ldp       @CL348,DP
        andn      r1,f0                 ; |520| Bit mask for F32/F40 conversion
        addi      @CL348,ar1            ; |520| Unsigned
        ldiu      *+fp(1),ar0           ; |520| 
        ldfu      *ar1,f1               ; |520| 40b float hi half
        mpyi      1336,ar0              ; |520| 
        ldp       @CL350,DP
        ldiu      *+ar1,r1              ; |520| 40b float lo half
        addi      @CL350,ar0            ; |520| Unsigned
        subrf     f1,f0                 ; |520| 
        stf       f0,*ar0               ; |520| Store high half
        sti       r0,*+ar0              ; |520| Store low half
	.line	464
;----------------------------------------------------------------------
; 523 | FC[i].gross_water_whole_part    = floor(FC[i].GROSS_WATER.calc_val);
;     |                                                                        
; 525 | //accumulated fractional component of gross water                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |523| 
        ldp       @CL352,DP
        mpyi      1336,ar0              ; |523| 
        addi      @CL352,ar0            ; |523| Unsigned
        ldfu      *ar0,f1               ; |523| 40b float hi half
        ldp       @CL349,DP
        ldiu      *+ar0,r1              ; |523| 40b float lo half
        ldiu      @CL349,r0             ; |523| 
        rnd       f1,f2                 ; |523| Demote to low precision
        callu     r0                    ; far call to _floor	; |523| 
                                        ; |523| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |523| 
        ldiu      255,r1                ; |523| 
        ldp       @CL351,DP
        mpyi      1336,ar0              ; |523| 
        addi      @CL351,ar0            ; |523| Unsigned
        andn      r1,f0                 ; |523| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |523| Store high half
        sti       r0,*+ar0              ; |523| Store low half
	.line	467
;----------------------------------------------------------------------
; 526 | FC[i].gross_water_fract_part    = FC[i].GROSS_WATER.calc_val - floor(FC
;     | [0].GROSS_WATER.calc_val);                                             
;----------------------------------------------------------------------
        ldp       @CL352,DP
        ldiu      @CL352,ar0            ; |526| 
        ldfu      *ar0,f0               ; |526| 40b float hi half
        ldp       @CL349,DP
        ldiu      *+ar0,r0              ; |526| 40b float lo half
        ldiu      @CL349,r1             ; |526| 
        rnd       f0,f2                 ; |526| Demote to low precision
        callu     r1                    ; far call to _floor	; |526| 
                                        ; |526| Far Call Occurs
        ldiu      *+fp(1),ar1           ; |526| 
        ldiu      ar1,ar0               ; |526| 
        mpyi      1336,ar0              ; |526| 
        ldiu      255,r1                ; |526| 
        mpyi      1336,ar1              ; |526| 
        ldp       @CL352,DP
        addi      @CL352,ar1            ; |526| Unsigned
        ldfu      *ar1,f2               ; |526| 40b float hi half
        ldp       @CL353,DP
        ldiu      *+ar1,r2              ; |526| 40b float lo half
        andn      r1,f0                 ; |526| Bit mask for F32/F40 conversion
        addi      @CL353,ar0            ; |526| Unsigned
        subrf     f2,f0                 ; |526| 
        stf       f0,*ar0               ; |526| Store high half
        sti       r0,*+ar0              ; |526| Store low half
	.line	402
        ldiu      1,r0                  ; |461| 
        addi      *+fp(1),r0            ; |461| 
        sti       r0,*+fp(1)            ; |461| 
        cmpi      3,r0                  ; |461| 
        blt       L35                   ; |461| 
;*      Branch Occurs to L35            ; |461| 
L51:        
	.line	470
;----------------------------------------------------------------------
; 529 | ALYESKA.WATERCUT                = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL354,DP
        ldiu      @CL354,ar0            ; |529| 
        ldfu      0.0000000000e+00,f0   ; |529| 
        stf       f0,*ar0               ; |529| 
	.line	471
;----------------------------------------------------------------------
; 530 | ALYESKA.FLOW_RATE               = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL355,DP
        ldiu      @CL355,ar0            ; |530| 
        ldfu      0.0000000000e+00,f0   ; |530| 
        stf       f0,*ar0               ; |530| 
	.line	472
;----------------------------------------------------------------------
; 531 | ALYESKA.TEMPERATURE             = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL356,DP
        ldiu      @CL356,ar0            ; |531| 
        ldfu      0.0000000000e+00,f0   ; |531| 
        stf       f0,*ar0               ; |531| 
	.line	473
;----------------------------------------------------------------------
; 532 | ALYESKA.DENSITY                 = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL357,DP
        ldiu      @CL357,ar0            ; |532| 
        ldfu      0.0000000000e+00,f0   ; |532| 
        stf       f0,*ar0               ; |532| 
	.line	474
;----------------------------------------------------------------------
; 533 | ALYESKA.VISCOSITY               = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL358,DP
        ldiu      @CL358,ar0            ; |533| 
        ldfu      0.0000000000e+00,f0   ; |533| 
        stf       f0,*ar0               ; |533| 
	.line	475
;----------------------------------------------------------------------
; 534 | ALYESKA.iWATERCUTz              = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL359,DP
        ldiu      @CL359,ar0            ; |534| 
        ldiu      0,r0                  ; |534| 
        sti       r0,*ar0               ; |534| 
	.line	476
;----------------------------------------------------------------------
; 535 | ALYESKA.iWATERCUT               = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL360,DP
        ldiu      @CL360,ar0            ; |535| 
        sti       r0,*ar0               ; |535| 
	.line	477
;----------------------------------------------------------------------
; 536 | ALYESKA.iFLOW_RATE              = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL361,DP
        ldiu      @CL361,ar0            ; |536| 
        sti       r0,*ar0               ; |536| 
	.line	478
;----------------------------------------------------------------------
; 537 | ALYESKA.iTEMPERATURE    = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL362,DP
        ldiu      @CL362,ar0            ; |537| 
        sti       r0,*ar0               ; |537| 
	.line	479
;----------------------------------------------------------------------
; 538 | ALYESKA.iDENSITY                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL363,DP
        ldiu      @CL363,ar0            ; |538| 
        sti       r0,*ar0               ; |538| 
	.line	480
;----------------------------------------------------------------------
; 539 | ALYESKA.iVISCOSITY              = 0;                                   
; 542 | //ALFAT INIT                                                           
;----------------------------------------------------------------------
        ldp       @CL364,DP
        ldiu      @CL364,ar0            ; |539| 
        sti       r0,*ar0               ; |539| 
	.line	484
;----------------------------------------------------------------------
; 543 | ALFAT_STATUS_REG = 0x0;                                                
;----------------------------------------------------------------------
        ldp       @CL365,DP
        ldiu      @CL365,ar0            ; |543| 
        sti       r0,*ar0               ; |543| 
	.line	485
;----------------------------------------------------------------------
; 544 | ALFAT_INIT_ALL = FALSE;                                                
;----------------------------------------------------------------------
        ldp       @CL366,DP
        ldiu      @CL366,ar0            ; |544| 
        sti       r0,*ar0               ; |544| 
	.line	486
;----------------------------------------------------------------------
; 545 | ALFAT_APPEND_LF = FALSE;                                               
;----------------------------------------------------------------------
        ldp       @CL367,DP
        ldiu      @CL367,ar0            ; |545| 
        sti       r0,*ar0               ; |545| 
	.line	487
;----------------------------------------------------------------------
; 546 | PORT[5].pvector_main = NULL_PTR;                                       
;----------------------------------------------------------------------
        ldp       @CL368,DP
        ldiu      @CL368,ar0            ; |546| 
        sti       r0,*ar0               ; |546| 
	.line	489
;----------------------------------------------------------------------
; 548 | for (i=0;i<ALFAT_RX_MAX_SIZE;i++)                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(1)            ; |548| 
        ldiu      0,r1                  ; |550| 
        cmpi      128,r0                ; |548| 
        bge       L53                   ; |548| 
;*      Branch Occurs to L53            ; |548| 
L52:        
	.line	491
;----------------------------------------------------------------------
; 550 | ALFAT_RX[i] = 0;                                                       
;----------------------------------------------------------------------
        ldp       @CL369,DP
        ldiu      *+fp(1),ir0           ; |550| 
        ldiu      @CL369,ar0            ; |550| 
        sti       r1,*+ar0(ir0)         ; |550| 
	.line	489
        ldiu      1,r0                  ; |548| 
        addi      *+fp(1),r0            ; |548| 
        sti       r0,*+fp(1)            ; |548| 
        cmpi      128,r0                ; |548| 
        blt       L52                   ; |548| 
;*      Branch Occurs to L52            ; |548| 
L53:        
	.line	494
;----------------------------------------------------------------------
; 553 | DEMO_Init(&DEMO_ANALYZER_MODE);                                        
;----------------------------------------------------------------------
        ldp       @CL371,DP
        ldiu      @CL371,r0             ; |553| 
        ldp       @CL370,DP
        ldiu      @CL370,ar2            ; |553| 
        callu     r0                    ; far call to _DEMO_Init	; |553| 
                                        ; |553| Far Call Occurs
	.line	495
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	554,000000000h,3


	.sect	 "initialization"

	.global	_Initialize_Hardware
	.sym	_Initialize_Hardware,_Initialize_Hardware,32,2,0
	.func	569
;******************************************************************************
;* FUNCTION NAME: _Initialize_Hardware                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,fp,ir0,ir1,sp,st,  *
;*                        rc                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 69 Auto + 0 SOE = 71 words        *
;******************************************************************************
_Initialize_Hardware:
	.sym	_i,1,14,1,32
	.sym	_j,2,14,1,32
	.sym	_s,3,30,1,32
	.sym	_d,4,30,1,32
	.sym	_code_line,5,50,1,1312,,41
	.sym	_out_str,46,50,1,672,,21
	.sym	_fw,67,6,1,32
	.sym	_hwu,68,4,1,32
	.sym	_hwl,69,4,1,32
	.line	1
;----------------------------------------------------------------------
; 569 | void Initialize_Hardware(void)                                         
; 571 | unsigned int i,j;       /* counters
;     |          */                                                            
; 572 | unsigned int* s;        /* branch table start
;     |  */                                                                    
; 573 | unsigned int* d;        /* program start address
;     |  */                                                                    
; 574 | char code_line[41];                                                    
; 575 | char out_str[21];                                                      
; 576 | float   fw;                     /* firmware version
;     |          */                                                            
; 577 | int             hwu,hwl;        /* hardware upper byte; lower byte
;     |  */                                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      69,sp
	.line	11
;----------------------------------------------------------------------
; 579 | _GIE;                                                                  
;----------------------------------------------------------------------
	rpts	1			
	andn	2000h, ST	
	.line	12
;----------------------------------------------------------------------
; 580 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |580| 
        ldiu      247,r0                ; |580| 
        and3      r0,*ar0,r0            ; |580| 
        sti       r0,*ar0               ; |580| 
	pop		ST			
	.line	13
;----------------------------------------------------------------------
; 581 | HW_VER  = *XHW_VER & 0xFF;                                             
;----------------------------------------------------------------------
        ldp       @CL373,DP
        ldiu      @CL373,ar0            ; |581| 
        ldp       @CL372,DP
        ldiu      255,r0                ; |581| 
        ldiu      @CL372,ar1            ; |581| 
        and3      r0,*ar0,r0            ; |581| 
        sti       r0,*ar1               ; |581| 
	.line	15
;----------------------------------------------------------------------
; 583 | if (HW_VER&0x80)                                                       
;----------------------------------------------------------------------
        ldiu      @CL372,ar0            ; |583| 
        ldiu      128,r0                ; |583| 
        tstb3     *ar0,r0               ; |583| 
        beq       L58                   ; |583| 
;*      Branch Occurs to L58            ; |583| 
	.line	16
;----------------------------------------------------------------------
; 584 | SA = TRUE;                                                             
; 585 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL374,DP
        ldiu      @CL374,ar0            ; |584| 
        ldiu      1,r0                  ; |584| 
        sti       r0,*ar0               ; |584| 
        bu        L59                   ; |568| 
;*      Branch Occurs to L59            ; |568| 
L58:        
	.line	18
;----------------------------------------------------------------------
; 586 | SA = FALSE;                                                            
;----------------------------------------------------------------------
        ldp       @CL374,DP
        ldiu      @CL374,ar0            ; |586| 
        ldiu      0,r0                  ; |586| 
        sti       r0,*ar0               ; |586| 
L59:        
	.line	20
;----------------------------------------------------------------------
; 588 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL374,DP
        ldiu      @CL374,ar0            ; |588| 
        ldiu      *ar0,r0               ; |588| 
        cmpi      0,r0                  ; |588| 
        beq       L63                   ; |588| 
;*      Branch Occurs to L63            ; |588| 
	.line	22
;----------------------------------------------------------------------
; 590 | if (HW_VER>=0xB7)                                                      
;----------------------------------------------------------------------
        ldp       @CL372,DP
        ldiu      @CL372,ar0            ; |590| 
        ldiu      *ar0,r0               ; |590| 
        cmpi      183,r0                ; |590| 
        blo       L62                   ; |590| 
;*      Branch Occurs to L62            ; |590| 
	.line	23
;----------------------------------------------------------------------
; 591 | SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_EEA;                                 
; 592 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL375,DP
        ldiu      @CL375,ar0            ; |591| 
        ldp       @CL376,DP
        ldiu      @CL376,r0             ; |591| 
        sti       r0,*ar0               ; |591| 
        bu        L64                   ; |568| 
;*      Branch Occurs to L64            ; |568| 
L62:        
	.line	25
;----------------------------------------------------------------------
; 593 | SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_SA;                                  
; 595 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL375,DP
        ldiu      @CL375,ar0            ; |593| 
        ldp       @CL377,DP
        ldiu      @CL377,r0             ; |593| 
        sti       r0,*ar0               ; |593| 
        bu        L64                   ; |568| 
;*      Branch Occurs to L64            ; |568| 
L63:        
	.line	28
;----------------------------------------------------------------------
; 596 | SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_EEA;                                 
;----------------------------------------------------------------------
        ldp       @CL375,DP
        ldiu      @CL375,ar0            ; |596| 
        ldp       @CL376,DP
        ldiu      @CL376,r0             ; |596| 
        sti       r0,*ar0               ; |596| 
L64:        
	.line	30
;----------------------------------------------------------------------
; 598 | *PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);   /* ws=5 for 90ns flash,
;     |  or RDY */                                                             
;----------------------------------------------------------------------
        ldp       @CL378,DP
        ldiu      @CL378,ar0            ; |598| 
        ldiu      184,r0                ; |598| 
        sti       r0,*ar0               ; |598| 
	.line	31
;----------------------------------------------------------------------
; 599 | DISABLE_BOOTINT;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL379,DP
        ldiu      @CL379,ar0            ; |599| 
        ldiu      16,r0                 ; |599| 
        or3       r0,*ar0,r0            ; |599| 
        sti       r0,*ar0               ; |599| 
	pop		ST			
	.line	32
;----------------------------------------------------------------------
; 600 | CLEAR_INT_MASK;                                                        
;----------------------------------------------------------------------
	ldi		0h, IE
	.line	33
;----------------------------------------------------------------------
; 601 | CLEAR_INT_PEND;                                                        
;----------------------------------------------------------------------
	ldi		0h, IF
	.line	34
;----------------------------------------------------------------------
; 602 | INITIALIZING = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL380,DP
        ldiu      @CL380,ar0            ; |602| 
        ldiu      1,r0                  ; |602| 
        sti       r0,*ar0               ; |602| 
	.line	35
;----------------------------------------------------------------------
; 603 | XFINIT_OUTPUT;                                                         
;----------------------------------------------------------------------
	ldi		22h,IOF		
	.line	36
;----------------------------------------------------------------------
; 604 | CACHE_ENABLE;                                                          
;----------------------------------------------------------------------
	ldi		1800h, ST
	.line	37
;----------------------------------------------------------------------
; 605 | DISABLE_EXTINT0;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL379,DP
        ldiu      @CL379,ar0            ; |605| 
        ldiu      254,r0                ; |605| 
        and3      r0,*ar0,r0            ; |605| 
        sti       r0,*ar0               ; |605| 
	pop		ST			
	.line	38
;----------------------------------------------------------------------
; 606 | DISABLE_EXTINT1;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      253,r0                ; |606| 
        and3      r0,*ar0,r0            ; |606| 
        sti       r0,*ar0               ; |606| 
	pop		ST			
	.line	39
;----------------------------------------------------------------------
; 607 | DISABLE_EXTINT2;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      251,r0                ; |607| 
        and3      r0,*ar0,r0            ; |607| 
        sti       r0,*ar0               ; |607| 
	pop		ST			
	.line	40
;----------------------------------------------------------------------
; 608 | DISABLE_EXTINT3;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      247,r0                ; |608| 
        and3      r0,*ar0,r0            ; |608| 
        sti       r0,*ar0               ; |608| 
	pop		ST			
	.line	43
;----------------------------------------------------------------------
; 611 | s = &INT0;                                                             
;----------------------------------------------------------------------
        ldp       @CL381,DP
        ldiu      @CL381,r0             ; |611| 
        sti       r0,*+fp(3)            ; |611| 
	.line	44
;----------------------------------------------------------------------
; 612 | d = (unsigned int*) 0x00809FC1;                                        
;----------------------------------------------------------------------
        ldp       @CL382,DP
        ldiu      @CL382,r0             ; |612| 
        sti       r0,*+fp(4)            ; |612| 
	.line	46
;----------------------------------------------------------------------
; 614 | for (i=0;i<0x3F;i++)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |614| 
        sti       r0,*+fp(1)            ; |614| 
        cmpi      63,r0                 ; |614| 
        bhs       L66                   ; |614| 
;*      Branch Occurs to L66            ; |614| 
L65:        
	.line	47
;----------------------------------------------------------------------
; 615 | d[i] = s[i];                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |615| 
        ldiu      *+fp(3),ir0           ; |615| 
        ldiu      *+fp(4),ir1           ; |615| 
        ldiu      ar1,ar0               ; |615| 
        ldiu      *+ar1(ir0),r0         ; |615| 
        sti       r0,*+ar0(ir1)         ; |615| 
	.line	46
        ldiu      1,r0                  ; |614| 
        addi      *+fp(1),r0            ; |614| Unsigned
        sti       r0,*+fp(1)            ; |614| 
        cmpi      63,r0                 ; |614| 
        blo       L65                   ; |614| 
;*      Branch Occurs to L65            ; |614| 
L66:        
	.line	50
;----------------------------------------------------------------------
; 618 | d = (unsigned int*) &c_int00;                                          
;----------------------------------------------------------------------
        ldp       @CL383,DP
        ldiu      @CL383,r0             ; |618| 
        sti       r0,*+fp(4)            ; |618| 
	.line	51
;----------------------------------------------------------------------
; 619 | s = (unsigned int*) FLASH_LOC;                                         
;----------------------------------------------------------------------
        ldp       @CL384,DP
        ldiu      @CL384,r0             ; |619| 
        sti       r0,*+fp(3)            ; |619| 
	.line	53
;----------------------------------------------------------------------
; 621 | if ( (d >= s) && (d < (s + FLASH_MAX_SIZE)) )                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |621| 
        cmpi      *+fp(3),r0            ; |621| 
        blo       L69                   ; |621| 
;*      Branch Occurs to L69            ; |621| 
        ldp       @CL385,DP
        ldiu      r0,r1
        ldiu      @CL385,r0             ; |621| 
        addi      *+fp(3),r0            ; |621| Unsigned
        cmpi3     r0,r1                 ; |621| 
        bhs       L69                   ; |621| 
;*      Branch Occurs to L69            ; |621| 
	.line	54
;----------------------------------------------------------------------
; 622 | MEM = FALSE;                                                           
; 623 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |622| 
        ldiu      0,r0                  ; |622| 
        sti       r0,*ar0               ; |622| 
        bu        L70                   ; |568| 
;*      Branch Occurs to L70            ; |568| 
L69:        
	.line	56
;----------------------------------------------------------------------
; 624 | MEM = TRUE;                                                            
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |624| 
        ldiu      1,r0                  ; |624| 
        sti       r0,*ar0               ; |624| 
L70:        
	.line	58
;----------------------------------------------------------------------
; 626 | RELAY1_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL74,DP
        ldiu      @CL74,ar0             ; |626| 
        ldiu      254,r0                ; |626| 
        and3      r0,*ar0,r0            ; |626| 
        sti       r0,*ar0               ; |626| 
	pop		ST			
	.line	59
;----------------------------------------------------------------------
; 627 | RELAY2_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      253,r0                ; |627| 
        and3      r0,*ar0,r0            ; |627| 
        sti       r0,*ar0               ; |627| 
	pop		ST			
	.line	61
;----------------------------------------------------------------------
; 629 | CLOCK = CLOCK_DEFAULT;                                                 
;----------------------------------------------------------------------
        ldp       @CL386,DP
        ldiu      @CL386,ar0            ; |629| 
        ldp       @CL387,DP
        ldiu      @CL387,r0             ; |629| 
        sti       r0,*ar0               ; |629| 
	.line	63
;----------------------------------------------------------------------
; 631 | LCD_INIT();                                                            
;----------------------------------------------------------------------
        ldp       @CL388,DP
        ldiu      @CL388,r0             ; |631| 
        callu     r0                    ; far call to _LCD_INIT	; |631| 
                                        ; |631| Far Call Occurs
	.line	66
;----------------------------------------------------------------------
; 634 | for (i=0;i<4;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |634| 
        sti       r0,*+fp(1)            ; |634| 
        cmpi      4,r0                  ; |634| 
        bhs       L74                   ; |634| 
;*      Branch Occurs to L74            ; |634| 
L71:        
	.line	68
;----------------------------------------------------------------------
; 636 | for (j=0;j<101;j++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |636| 
        sti       r0,*+fp(2)            ; |636| 
        cmpi      101,r0                ; |636| 
        ldiu      32,r1                 ; |637| 
        bhs       L73                   ; |636| 
;*      Branch Occurs to L73            ; |636| 
L72:        
	.line	69
;----------------------------------------------------------------------
; 637 | LCD_DISPLAY[i][j] = 0x20;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |637| 
        ldp       @CL389,DP
        mpyi      101,ir0               ; |637| 
        ldiu      @CL389,ar0            ; |637| 
        addi      *+fp(2),ir0           ; |637| Unsigned
        sti       r1,*+ar0(ir0)         ; |637| 
	.line	68
        ldiu      1,r0                  ; |636| 
        addi      *+fp(2),r0            ; |636| Unsigned
        sti       r0,*+fp(2)            ; |636| 
        cmpi      101,r0                ; |636| 
        blo       L72                   ; |636| 
;*      Branch Occurs to L72            ; |636| 
L73:        
	.line	66
        ldiu      1,r0                  ; |634| 
        addi      *+fp(1),r0            ; |634| Unsigned
        sti       r0,*+fp(1)            ; |634| 
        cmpi      4,r0                  ; |634| 
        blo       L71                   ; |634| 
;*      Branch Occurs to L71            ; |634| 
L74:        
	.line	72
;----------------------------------------------------------------------
; 640 | hwu = (HW_VER & 0x0078)>>3;                                            
;----------------------------------------------------------------------
        ldp       @CL372,DP
        ldiu      @CL372,ar0            ; |640| 
        ldiu      120,r0                ; |640| 
        and3      r0,*ar0,r0            ; |640| 
        lsh       -3,r0                 ; |640| 
        sti       r0,*+fp(68)           ; |640| 
	.line	73
;----------------------------------------------------------------------
; 641 | hwl = HW_VER & 0x0007;                                                 
;----------------------------------------------------------------------
        ldiu      @CL372,ar0            ; |641| 
        ldiu      7,r0                  ; |641| 
        and3      r0,*ar0,r0            ; |641| 
        sti       r0,*+fp(69)           ; |641| 
	.line	74
;----------------------------------------------------------------------
; 642 | fw      = FIRMWARE_VERSION/100.0;                                      
;----------------------------------------------------------------------
        ldp       @CL390,DP
        ldfu      @CL390,f0             ; |642| 
        stf       f0,*+fp(67)           ; |642| 
	.line	75
;----------------------------------------------------------------------
; 643 | i       = FIRMWARE_SUBVERSION;                                         
; 648 | #ifndef RUSS_TRANSLATION_ENABLED                                       
;----------------------------------------------------------------------
        ldiu      6,r0                  ; |643| 
        sti       r0,*+fp(1)            ; |643| 
	.line	81
;----------------------------------------------------------------------
; 649 | sprintf(LCD_DISPLAY[0],"Phase Dynamics, Inc."); //R87                  
;----------------------------------------------------------------------
        ldp       @CL391,DP
        ldiu      @CL391,r1             ; |649| 
        ldp       @CL389,DP
        ldiu      @CL389,ar2            ; |649| 
        ldp       @CL16,DP
        push      r1                    ; |649| 
        ldiu      @CL16,r0              ; |649| 
        callu     r0                    ; far call to _sprintf	; |649| 
                                        ; |649| Far Call Occurs
        subi      1,sp                  ; |649| 
	.line	82
;----------------------------------------------------------------------
; 650 | sprintf(LCD_DISPLAY[1],"Initializing Data..."); //R378                 
;----------------------------------------------------------------------
        ldp       @CL393,DP
        ldiu      @CL393,r1             ; |650| 
        ldp       @CL392,DP
        ldiu      @CL392,ar2            ; |650| 
        ldp       @CL16,DP
        push      r1                    ; |650| 
        ldiu      @CL16,r0              ; |650| 
        callu     r0                    ; far call to _sprintf	; |650| 
                                        ; |650| Far Call Occurs
        subi      1,sp                  ; |650| 
	.line	83
;----------------------------------------------------------------------
; 651 | sprintf(LCD_DISPLAY[2],"HW Version:    %2d.%02d", hwu, hwl);    //R377
;     |                                                                        
;----------------------------------------------------------------------
        ldp       @CL395,DP
        ldiu      @CL395,r1             ; |651| 
        ldiu      *+fp(69),r2           ; |651| 
        push      r2                    ; |651| 
        ldp       @CL394,DP
        ldiu      *+fp(68),r2           ; |651| 
        ldiu      @CL394,ar2            ; |651| 
        push      r2                    ; |651| 
        ldp       @CL16,DP
        push      r1                    ; |651| 
        ldiu      @CL16,r0              ; |651| 
        callu     r0                    ; far call to _sprintf	; |651| 
                                        ; |651| Far Call Occurs
        subi      3,sp                  ; |651| 
	.line	84
;----------------------------------------------------------------------
; 652 | sprintf(LCD_DISPLAY[3],"FW Version:  %4.2f.%02i", fw, i);       //R375 
; 653 | #endif                                                                 
;----------------------------------------------------------------------
        ldp       @CL397,DP
        ldiu      @CL397,r2             ; |652| 
        ldp       @CL396,DP
        ldiu      *+fp(1),r1            ; |652| 
        ldiu      @CL396,ar2            ; |652| 
        push      r1                    ; |652| 
        ldp       @CL16,DP
        ldfu      *+fp(67),f1           ; |652| 
        pushf     f1                    ; |652| 
        ldiu      @CL16,r0              ; |652| 
        push      r2                    ; |652| 
        callu     r0                    ; far call to _sprintf	; |652| 
                                        ; |652| Far Call Occurs
        subi      3,sp                  ; |652| 
	.line	118
;----------------------------------------------------------------------
; 686 | LCD_PAGE();                                                            
;----------------------------------------------------------------------
        ldp       @CL398,DP
        ldiu      @CL398,r0             ; |686| 
        callu     r0                    ; far call to _LCD_PAGE	; |686| 
                                        ; |686| Far Call Occurs
	.line	119
;----------------------------------------------------------------------
; 687 | MENU_INIT();                                                           
;----------------------------------------------------------------------
        ldp       @CL399,DP
        ldiu      @CL399,r0             ; |687| 
        callu     r0                    ; far call to _MENU_INIT	; |687| 
                                        ; |687| Far Call Occurs
	.line	120
;----------------------------------------------------------------------
; 688 | Initialize_Variables();                                                
; 690 | #ifndef RUSS_TRANSLATION_ENABLED                                       
; 691 | switch (ANALYZER_MODE.val)                                             
;----------------------------------------------------------------------
        ldp       @CL400,DP
        ldiu      @CL400,r0             ; |688| 
        callu     r0                    ; far call to _Initialize_Variables	; |688| 
                                        ; |688| Far Call Occurs
        bu        L82                   ; |568| 
;*      Branch Occurs to L82            ; |568| 
L75:        
	.line	125
;----------------------------------------------------------------------
; 693 | case SUB_LOW:           sprintf(LCD_DISPLAY[1]," Low Range Analyzer ");
;     |  break;                                                                
;----------------------------------------------------------------------
        ldp       @CL401,DP
        ldiu      @CL401,r1             ; |693| 
        ldp       @CL392,DP
        ldiu      @CL392,ar2            ; |693| 
        ldp       @CL16,DP
        push      r1                    ; |693| 
        ldiu      @CL16,r0              ; |693| 
        callu     r0                    ; far call to _sprintf	; |693| 
                                        ; |693| Far Call Occurs
        subi      1,sp                  ; |693| 
        bu        L88                   ; |693| 
;*      Branch Occurs to L88            ; |693| 
L76:        
	.line	126
;----------------------------------------------------------------------
; 694 | case SUB_MID:           sprintf(LCD_DISPLAY[1]," Mid Range Analyzer ");
;     |  break;                                                                
;----------------------------------------------------------------------
        ldp       @CL402,DP
        ldiu      @CL402,r1             ; |694| 
        ldp       @CL392,DP
        ldiu      @CL392,ar2            ; |694| 
        ldp       @CL16,DP
        push      r1                    ; |694| 
        ldiu      @CL16,r0              ; |694| 
        callu     r0                    ; far call to _sprintf	; |694| 
                                        ; |694| Far Call Occurs
        subi      1,sp                  ; |694| 
        bu        L88                   ; |694| 
;*      Branch Occurs to L88            ; |694| 
L77:        
	.line	127
;----------------------------------------------------------------------
; 695 | case SUB_HIGH:          sprintf(LCD_DISPLAY[1],"High Range Analyzer ");
;     |  break;                                                                
;----------------------------------------------------------------------
        ldp       @CL403,DP
        ldiu      @CL403,r1             ; |695| 
        ldp       @CL392,DP
        ldiu      @CL392,ar2            ; |695| 
        ldp       @CL16,DP
        push      r1                    ; |695| 
        ldiu      @CL16,r0              ; |695| 
        callu     r0                    ; far call to _sprintf	; |695| 
                                        ; |695| Far Call Occurs
        subi      1,sp                  ; |695| 
        bu        L88                   ; |695| 
;*      Branch Occurs to L88            ; |695| 
L78:        
	.line	128
;----------------------------------------------------------------------
; 696 | case SUB_FULL:          sprintf(LCD_DISPLAY[1],"Full Range Analyzer ");
;     |  break;                                                                
;----------------------------------------------------------------------
        ldp       @CL404,DP
        ldiu      @CL404,r1             ; |696| 
        ldp       @CL392,DP
        ldiu      @CL392,ar2            ; |696| 
        ldp       @CL16,DP
        push      r1                    ; |696| 
        ldiu      @CL16,r0              ; |696| 
        callu     r0                    ; far call to _sprintf	; |696| 
                                        ; |696| Far Call Occurs
        subi      1,sp                  ; |696| 
        bu        L88                   ; |696| 
;*      Branch Occurs to L88            ; |696| 
L79:        
	.line	129
;----------------------------------------------------------------------
; 697 | case SUB_CCM:           sprintf(LCD_DISPLAY[1],"  CCM Application   ");
;     |  break;                                                                
;----------------------------------------------------------------------
        ldp       @CL405,DP
        ldiu      @CL405,r1             ; |697| 
        ldp       @CL392,DP
        ldiu      @CL392,ar2            ; |697| 
        ldp       @CL16,DP
        push      r1                    ; |697| 
        ldiu      @CL16,r0              ; |697| 
        callu     r0                    ; far call to _sprintf	; |697| 
                                        ; |697| Far Call Occurs
        subi      1,sp                  ; |697| 
        bu        L88                   ; |697| 
;*      Branch Occurs to L88            ; |697| 
L80:        
	.line	130
;----------------------------------------------------------------------
; 698 | case SUB_ANALYZER:      sprintf(LCD_DISPLAY[1],"      Analyzer      ");
;     |  break;                                                                
;----------------------------------------------------------------------
        ldp       @CL406,DP
        ldiu      @CL406,r1             ; |698| 
        ldp       @CL392,DP
        ldiu      @CL392,ar2            ; |698| 
        ldp       @CL16,DP
        push      r1                    ; |698| 
        ldiu      @CL16,r0              ; |698| 
        callu     r0                    ; far call to _sprintf	; |698| 
                                        ; |698| Far Call Occurs
        subi      1,sp                  ; |698| 
        bu        L88                   ; |698| 
;*      Branch Occurs to L88            ; |698| 
	.line	131
;----------------------------------------------------------------------
; 699 | default: break;                                                        
; 701 | #else                                                                  
; 702 | if(RUSS)                                                               
; 704 | switch (ANALYZER_MODE.val)                                             
; 706 |         case SUB_LOW:                                                  
; 707 |                 sprintf(code_line,"48B8B72EE0B861BE2E42BB61B46FBC6570")
;     | ; //R380                                                               
; 708 |                 Make_Russian_Line(code_line, out_str);                 
; 709 |                 sprintf(LCD_DISPLAY[1],"%s",out_str);                  
; 710 |                 break;                                                 
; 711 |         case SUB_MID:                                                  
; 712 |                 sprintf(code_line,"4370E32EE0B861BE2E42BB61B46FBC6570")
;     | ; //R381                                                               
; 713 |                 Make_Russian_Line(code_line, out_str);                 
; 714 |                 sprintf(LCD_DISPLAY[1],"%s",out_str);                  
; 715 |                 break;                                                 
; 716 |         case SUB_HIGH:                                                 
; 717 |                 sprintf(code_line,"426570782EE0B861BE2E42BB61B46FBC6570
;     | "); //R376                                                             
; 718 |                 Make_Russian_Line(code_line, out_str);                 
; 719 |                 sprintf(LCD_DISPLAY[1],"%s",out_str);                  
; 720 |                 break;                                                 
; 721 |         case SUB_FULL:                                                 
; 722 |                 sprintf(code_line,"A86FBBBD2EE0B861BE2E42BB61B46FBC6570
;     | "); //R374                                                             
; 723 |                 Make_Russian_Line(code_line, out_str);                 
; 724 |                 sprintf(LCD_DISPLAY[1],"%s",out_str);                  
; 725 |                 break;                                                 
; 726 |         default: break;                                                
; 728 | else                                                                   
; 730 | case SUB_LOW:           sprintf(LCD_DISPLAY[1]," Low Range Analyzer ");
;     |  break;                                                                
; 731 | case SUB_MID:           sprintf(LCD_DISPLAY[1]," Mid Range Analyzer ");
;     |  break;                                                                
; 732 | case SUB_HIGH:          sprintf(LCD_DISPLAY[1],"High Range Analyzer ");
;     |  break;                                                                
; 733 | case SUB_FULL:          sprintf(LCD_DISPLAY[1],"Full Range Analyzer ");
;     |  break;                                                                
; 734 | case SUB_CCM:           sprintf(LCD_DISPLAY[1],"  CCM Application   ");
;     |  break;                                                                
; 735 | case SUB_ANALYZER:      sprintf(LCD_DISPLAY[1],"      Analyzer      ");
;     |  break;                                                                
; 736 | default: break;                                                        
; 738 | #endif                                                                 
;----------------------------------------------------------------------
L82:        
	.line	123
        ldp       @CL99,DP
        ldiu      @CL99,ar0             ; |691| 
        ldiu      *ar0,r0               ; |691| 
        cmpi      0,r0                  ; |691| 
        beq       L75                   ; |691| 
;*      Branch Occurs to L75            ; |691| 
        cmpi      1,r0                  ; |691| 
        beq       L78                   ; |691| 
;*      Branch Occurs to L78            ; |691| 
        cmpi      2,r0                  ; |691| 
        beq       L80                   ; |691| 
;*      Branch Occurs to L80            ; |691| 
        cmpi      3,r0                  ; |691| 
        beq       L76                   ; |691| 
;*      Branch Occurs to L76            ; |691| 
        cmpi      4,r0                  ; |691| 
        beq       L77                   ; |691| 
;*      Branch Occurs to L77            ; |691| 
        cmpi      6,r0                  ; |691| 
        beq       L79                   ; |691| 
;*      Branch Occurs to L79            ; |691| 
L88:        
	.line	172
;----------------------------------------------------------------------
; 740 | LCD_PAGE();                                                            
;----------------------------------------------------------------------
        ldp       @CL398,DP
        ldiu      @CL398,r0             ; |740| 
        callu     r0                    ; far call to _LCD_PAGE	; |740| 
                                        ; |740| Far Call Occurs
	.line	173
;----------------------------------------------------------------------
; 741 | RTC_setup();                                                           
;----------------------------------------------------------------------
        ldp       @CL407,DP
        ldiu      @CL407,r0             ; |741| 
        callu     r0                    ; far call to _RTC_setup	; |741| 
                                        ; |741| Far Call Occurs
	.line	174
;----------------------------------------------------------------------
; 742 | Setup_Timer(0, 11.0/(2.0*115200.0));                                   
;----------------------------------------------------------------------
        ldp       @CL408,DP
        ldfu      @CL408,f2             ; |742| 
        ldp       @CL409,DP
        ldiu      0,ar2                 ; |742| 
        ldiu      @CL409,r0             ; |742| 
        callu     r0                    ; far call to _Setup_Timer	; |742| 
                                        ; |742| Far Call Occurs
	.line	175
;----------------------------------------------------------------------
; 743 | Setup_Timer(1, 0);                                                     
;----------------------------------------------------------------------
        ldp       @CL409,DP
        ldiu      1,ar2                 ; |743| 
        ldiu      @CL409,r0             ; |743| 
        ldfu      0.0000000000e+00,f2   ; |743| 
        callu     r0                    ; far call to _Setup_Timer	; |743| 
                                        ; |743| Far Call Occurs
	.line	176
;----------------------------------------------------------------------
; 744 | VAR_DAMP_Init(0);                                                      
;----------------------------------------------------------------------
        ldp       @CL410,DP
        ldiu      @CL410,r0             ; |744| 
        ldiu      0,ar2                 ; |744| 
        callu     r0                    ; far call to _VAR_DAMP_Init	; |744| 
                                        ; |744| Far Call Occurs
	.line	177
;----------------------------------------------------------------------
; 745 | Initialize_Periodic_Events();                                          
;----------------------------------------------------------------------
        ldp       @CL411,DP
        ldiu      @CL411,r0             ; |745| 
        callu     r0                    ; far call to _Initialize_Periodic_Events	; |745| 
                                        ; |745| Far Call Occurs
	.line	178
;----------------------------------------------------------------------
; 746 | Setup_Serial_Port0();                                                  
;----------------------------------------------------------------------
        ldp       @CL412,DP
        ldiu      @CL412,r0             ; |746| 
        callu     r0                    ; far call to _Setup_Serial_Port0	; |746| 
                                        ; |746| Far Call Occurs
	.line	180
;----------------------------------------------------------------------
; 748 | for (i=0;i<ADC_MAX;i++)                                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |748| 
        sti       r0,*+fp(1)            ; |748| 
        cmpi      12,r0                 ; |748| 
        bhs       L90                   ; |748| 
;*      Branch Occurs to L90            ; |748| 
L89:        
	.line	181
;----------------------------------------------------------------------
; 749 | Setup_ADC(i);                                                          
;----------------------------------------------------------------------
        ldp       @CL413,DP
        ldiu      *+fp(1),ar2           ; |749| 
        ldiu      @CL413,r0             ; |749| 
        callu     r0                    ; far call to _Setup_ADC	; |749| 
                                        ; |749| Far Call Occurs
	.line	180
        ldiu      1,r0                  ; |748| 
        addi      *+fp(1),r0            ; |748| Unsigned
        sti       r0,*+fp(1)            ; |748| 
        cmpi      12,r0                 ; |748| 
        blo       L89                   ; |748| 
;*      Branch Occurs to L89            ; |748| 
L90:        
	.line	183
;----------------------------------------------------------------------
; 751 | for (i=0;i<DAC_MAX;i++)                                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |751| 
        sti       r0,*+fp(1)            ; |751| 
        cmpi      12,r0                 ; |751| 
        bhs       L92                   ; |751| 
;*      Branch Occurs to L92            ; |751| 
L91:        
	.line	184
;----------------------------------------------------------------------
; 752 | Setup_DAC(i);                                                          
;----------------------------------------------------------------------
        ldp       @CL414,DP
        ldiu      *+fp(1),ar2           ; |752| 
        ldiu      @CL414,r0             ; |752| 
        callu     r0                    ; far call to _Setup_DAC	; |752| 
                                        ; |752| Far Call Occurs
	.line	183
        ldiu      1,r0                  ; |751| 
        addi      *+fp(1),r0            ; |751| Unsigned
        sti       r0,*+fp(1)            ; |751| 
        cmpi      12,r0                 ; |751| 
        blo       L91                   ; |751| 
;*      Branch Occurs to L91            ; |751| 
L92:        
	.line	186
;----------------------------------------------------------------------
; 754 | if ((REG_TEMPERATURE_EXTERNAL.unit & 0xFF) == u_temp_C)                
;----------------------------------------------------------------------
        ldp       @CL415,DP
        ldiu      @CL415,ar0            ; |754| 
        ldiu      255,r0                ; |754| 
        and3      r0,*ar0,r0            ; |754| 
        cmpi      32,r0                 ; |754| 
        bne       L94                   ; |754| 
;*      Branch Occurs to L94            ; |754| 
	.line	187
;----------------------------------------------------------------------
; 755 | DIO_TEMP_C.val = TRUE;                                                 
; 756 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL416,DP
        ldiu      @CL416,ar0            ; |755| 
        ldiu      1,r0                  ; |755| 
        sti       r0,*ar0               ; |755| 
        bu        L95                   ; |568| 
;*      Branch Occurs to L95            ; |568| 
L94:        
	.line	189
;----------------------------------------------------------------------
; 757 | DIO_TEMP_C.val = FALSE;                                                
;----------------------------------------------------------------------
        ldp       @CL416,DP
        ldiu      @CL416,ar0            ; |757| 
        ldiu      0,r0                  ; |757| 
        sti       r0,*ar0               ; |757| 
L95:        
	.line	191
;----------------------------------------------------------------------
; 759 | if (DIO_BUILT_IN_TEST_ENABLE.val)                                      
;----------------------------------------------------------------------
        ldp       @CL417,DP
        ldiu      @CL417,ar0            ; |759| 
        ldiu      *ar0,r0               ; |759| 
        cmpi      0,r0                  ; |759| 
        beq       L97                   ; |759| 
;*      Branch Occurs to L97            ; |759| 
	.line	192
;----------------------------------------------------------------------
; 760 | Self_Test_FULL();                                                      
;----------------------------------------------------------------------
        ldp       @CL418,DP
        ldiu      @CL418,r0             ; |760| 
        callu     r0                    ; far call to _Self_Test_FULL	; |760| 
                                        ; |760| Far Call Occurs
L97:        
	.line	195
;----------------------------------------------------------------------
; 763 | ENABLE_EXTINT1;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL379,DP
        ldiu      @CL379,ar0            ; |763| 
        ldiu      2,r0                  ; |763| 
        or3       r0,*ar0,r0            ; |763| 
        sti       r0,*ar0               ; |763| 
	pop		ST			
	.line	196
;----------------------------------------------------------------------
; 764 | ENABLE_INT1;                                                           
;----------------------------------------------------------------------
	or		0002h, IE
	.line	197
;----------------------------------------------------------------------
; 765 | CLEAR_INT1;                                                            
;----------------------------------------------------------------------
	andn	0002h, IF
	.line	200
;----------------------------------------------------------------------
; 768 | ENABLE_IRDA; //enable IrDA (USB)                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |768| 
        ldiu      16,r0                 ; |768| 
        or3       r0,*ar0,r0            ; |768| 
        sti       r0,*ar0               ; |768| 
	pop		ST			
	.line	202
;----------------------------------------------------------------------
; 770 | if (LOG_STATUS == ALFAT_CONTINUE_LOG)                                  
;----------------------------------------------------------------------
        ldp       @CL419,DP
        ldiu      @CL419,ar0            ; |770| 
        ldiu      *ar0,r0               ; |770| 
        cmpi      82,r0                 ; |770| 
        bne       L99                   ; |770| 
;*      Branch Occurs to L99            ; |770| 
	.line	204
;----------------------------------------------------------------------
; 772 | Timer_Insert(&TMR_ALFAT_LOG,0,TMR_action_replace);                     
;----------------------------------------------------------------------
        ldp       @CL421,DP
        ldiu      @CL421,r0             ; |772| 
        ldiu      1,r3                  ; |772| 
        ldp       @CL420,DP
        ldiu      0,r2                  ; |772| 
        ldiu      @CL420,ar2            ; |772| 
        callu     r0                    ; far call to _Timer_Insert	; |772| 
                                        ; |772| Far Call Occurs
L99:        
	.line	207
;----------------------------------------------------------------------
; 775 | Port_Defaults(FALSE);                                                  
;----------------------------------------------------------------------
        ldp       @CL422,DP
        ldiu      0,ar2                 ; |775| 
        ldiu      @CL422,r0             ; |775| 
        callu     r0                    ; far call to _Port_Defaults	; |775| 
                                        ; |775| Far Call Occurs
	.line	208
;----------------------------------------------------------------------
; 776 | Disable_Heater();                                                      
;----------------------------------------------------------------------
        ldp       @CL423,DP
        ldiu      @CL423,r0             ; |776| 
        callu     r0                    ; far call to _Disable_Heater	; |776| 
                                        ; |776| Far Call Occurs
	.line	211
;----------------------------------------------------------------------
; 779 | RESET_COUNTER++;                                                       
;----------------------------------------------------------------------
        ldp       @CL424,DP
        ldiu      @CL424,ar0            ; |779| 
        ldiu      1,r0                  ; |779| 
        addi3     r0,*ar0,r0            ; |779| 
        sti       r0,*ar0               ; |779| 
	.line	212
;----------------------------------------------------------------------
; 780 | Write_CFG_USER();                                                      
;----------------------------------------------------------------------
        ldp       @CL425,DP
        ldiu      @CL425,r0             ; |780| 
        callu     r0                    ; far call to _Write_CFG_USER	; |780| 
                                        ; |780| Far Call Occurs
	.line	215
;----------------------------------------------------------------------
; 783 | if (!DEMO)                                                             
;----------------------------------------------------------------------
        ldp       @CL426,DP
        ldiu      @CL426,ar0            ; |783| 
        ldiu      *ar0,r0               ; |783| 
        cmpi      0,r0                  ; |783| 
        bne       L101                  ; |783| 
;*      Branch Occurs to L101           ; |783| 
	.line	216
;----------------------------------------------------------------------
; 784 | Clear_Accumulators(0);                                                 
;----------------------------------------------------------------------
        ldp       @CL427,DP
        ldiu      0,ar2                 ; |784| 
        ldiu      @CL427,r0             ; |784| 
        callu     r0                    ; far call to _Clear_Accumulators	; |784| 
                                        ; |784| Far Call Occurs
L101:        
	.line	219
;----------------------------------------------------------------------
; 787 | VT_SELECT       = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL428,DP
        ldiu      @CL428,ar0            ; |787| 
        ldiu      0,r0                  ; |787| 
        sti       r0,*ar0               ; |787| 
	.line	220
;----------------------------------------------------------------------
; 788 | OSWITCH         = 1;                                                   
;----------------------------------------------------------------------
        ldp       @CL429,DP
        ldiu      @CL429,ar0            ; |788| 
        ldiu      1,r0                  ; |788| 
        sti       r0,*ar0               ; |788| 
	.line	221
;----------------------------------------------------------------------
; 789 | SELECT_LOAD_EXT;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL430,DP
        ldiu      @CL430,ar0            ; |789| 
        or3       r0,*ar0,r0            ; |789| 
        sti       r0,*ar0               ; |789| 
	pop		ST			
	.line	223
;----------------------------------------------------------------------
; 791 | if (EXTUNE)                                                            
;----------------------------------------------------------------------
        ldp       @CL431,DP
        ldiu      @CL431,ar0            ; |791| 
        ldiu      *ar0,r0               ; |791| 
        cmpi      0,r0                  ; |791| 
        beq       L103                  ; |791| 
;*      Branch Occurs to L103           ; |791| 
	.line	225
;----------------------------------------------------------------------
; 793 | VAR_Update(&REG_DAC[DAC_VTUNE], REG_VTUNE_SET[VT_SELECT].calc_val, 0, 0
;     | );                                                                     
;----------------------------------------------------------------------
        ldp       @CL428,DP
        ldiu      @CL428,ar0            ; |793| 
        ldp       @CL432,DP
        ldiu      44,r0                 ; |793| 
        ldiu      @CL432,ar2            ; |793| 
        mpyi3     r0,*ar0,ar0           ; |793| 
        ldp       @CL433,DP
        ldiu      0,rc                  ; |793| 
        addi      @CL433,ar0            ; |793| Unsigned
        ldp       @CL67,DP
        ldfu      *ar0,f2               ; |793| 40b float hi half
        ldiu      @CL67,r0              ; |793| 
        ldiu      *+ar0,r2              ; |793| 40b float lo half
        ldiu      0,r3                  ; |793| 
        callu     r0                    ; far call to _VAR_Update	; |793| 
                                        ; |793| Far Call Occurs
	.line	226
;----------------------------------------------------------------------
; 794 | VAR_Update(&REG_DAC[DAC_TUNESEL], 5.0, 0, 0);                          
; 796 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL434,DP
        ldiu      @CL434,ar2            ; |794| 
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |794| 
        ldp       @CL435+0,DP
        ldfu      @CL435+0,f2           ; |794| 40b float hi half
        ldp       @CL435+1,DP
        ldiu      0,rc                  ; |794| 
        ldiu      @CL435+1,r2           ; |794| 40b float lo half
        ldiu      0,r3                  ; |794| 
        callu     r0                    ; far call to _VAR_Update	; |794| 
                                        ; |794| Far Call Occurs
        bu        L104                  ; |568| 
;*      Branch Occurs to L104           ; |568| 
L103:        
	.line	230
;----------------------------------------------------------------------
; 798 | VAR_Update(&REG_DAC[DAC_VTUNE], 0.0, 0, 0);                            
;----------------------------------------------------------------------
        ldp       @CL432,DP
        ldiu      @CL432,ar2            ; |798| 
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |798| 
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f2            ; |798| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      0,rc                  ; |798| 
        ldiu      @CL80+1,r2            ; |798| 40b float lo half
        ldiu      0,r3                  ; |798| 
        callu     r0                    ; far call to _VAR_Update	; |798| 
                                        ; |798| Far Call Occurs
	.line	231
;----------------------------------------------------------------------
; 799 | VAR_Update(&REG_DAC[DAC_TUNESEL], 0.0, 0, 0);                          
;----------------------------------------------------------------------
        ldp       @CL434,DP
        ldiu      @CL434,ar2            ; |799| 
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |799| 
        ldp       @CL80+0,DP
        ldfu      @CL80+0,f2            ; |799| 40b float hi half
        ldp       @CL80+1,DP
        ldiu      0,rc                  ; |799| 
        ldiu      @CL80+1,r2            ; |799| 40b float lo half
        ldiu      0,r3                  ; |799| 
        callu     r0                    ; far call to _VAR_Update	; |799| 
                                        ; |799| Far Call Occurs
L104:        
	.line	234
;----------------------------------------------------------------------
; 802 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL374,DP
        ldiu      @CL374,ar0            ; |802| 
        ldiu      *ar0,r0               ; |802| 
        cmpi      0,r0                  ; |802| 
        bne       L106                  ; |802| 
;*      Branch Occurs to L106           ; |802| 
	.line	235
;----------------------------------------------------------------------
; 803 | Write_DAC(DAC_TUNESEL);                                                
;----------------------------------------------------------------------
        ldp       @CL436,DP
        ldiu      11,ar2                ; |803| 
        ldiu      @CL436,r0             ; |803| 
        callu     r0                    ; far call to _Write_DAC	; |803| 
                                        ; |803| Far Call Occurs
L106:        
	.line	237
;----------------------------------------------------------------------
; 805 | Write_DAC(DAC_VTUNE);                                                  
;----------------------------------------------------------------------
        ldp       @CL436,DP
        ldiu      10,ar2                ; |805| 
        ldiu      @CL436,r0             ; |805| 
        callu     r0                    ; far call to _Write_DAC	; |805| 
                                        ; |805| Far Call Occurs
	.line	238
;----------------------------------------------------------------------
; 806 | Set_Research_Mode();            /* start sampling */                   
;----------------------------------------------------------------------
        ldp       @CL437,DP
        ldiu      @CL437,r0             ; |806| 
        callu     r0                    ; far call to _Set_Research_Mode	; |806| 
                                        ; |806| Far Call Occurs
	.line	241
;----------------------------------------------------------------------
; 809 | if (MEM)                                                               
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |809| 
        ldiu      *ar0,r0               ; |809| 
        cmpi      0,r0                  ; |809| 
        beq       L108                  ; |809| 
;*      Branch Occurs to L108           ; |809| 
	.line	242
;----------------------------------------------------------------------
; 810 | Debug();                                                               
;----------------------------------------------------------------------
        ldp       @CL438,DP
        ldiu      @CL438,r0             ; |810| 
        callu     r0                    ; far call to _Debug	; |810| 
                                        ; |810| Far Call Occurs
L108:        
	.line	244
;----------------------------------------------------------------------
; 812 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |812| 
        ldiu      8,r0                  ; |812| 
        or3       r0,*ar0,r0            ; |812| 
        sti       r0,*ar0               ; |812| 
        ldiu      128,r0                ; |812| 
        or3       r0,*ar0,r0            ; |812| 
        sti       r0,*ar0               ; |812| 
	pop		ST			
	.line	245
;----------------------------------------------------------------------
; 813 | INITIALIZING = FALSE;                                                  
;----------------------------------------------------------------------
        ldp       @CL380,DP
        ldiu      @CL380,ar0            ; |813| 
        ldiu      0,r0                  ; |813| 
        sti       r0,*ar0               ; |813| 
	.line	246
;----------------------------------------------------------------------
; 814 | GIE;                                                                   
;----------------------------------------------------------------------
	or		2000h, ST	
	.line	247
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      71,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	815,000000000h,69


	.sect	 ".text"

	.global	_Make_Russian_Line
	.sym	_Make_Russian_Line,_Make_Russian_Line,32,2,0
	.func	817
;******************************************************************************
;* FUNCTION NAME: _Make_Russian_Line                                          *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ir0,sp,st                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Make_Russian_Line:
;* ar2   assigned to _code
	.sym	_code,10,18,17,32
;* r2    assigned to _out_str
	.sym	_out_str,2,18,17,32
	.sym	_code,1,18,1,32
	.sym	_out_str,2,18,1,32
	.sym	_i,3,4,1,32
	.sym	_l_code_val,4,5,1,32
	.sym	_code_val,5,12,1,32
	.sym	_c,6,50,1,96,,3
	.line	1
;----------------------------------------------------------------------
; 817 | void Make_Russian_Line(char code[], char out_str[])                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 819 | int i;                                                                 
; 820 | long int l_code_val;                                                   
; 821 | unsigned char code_val;                                                
; 822 | char c[3];                                                             
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |818| 
        sti       ar2,*+fp(1)           ; |818| 
	.line	8
;----------------------------------------------------------------------
; 824 | sprintf(out_str,"                    "); //clear string                
;----------------------------------------------------------------------
        ldp       @CL439,DP
        ldiu      @CL439,r0             ; |824| 
        ldp       @CL16,DP
        push      r0                    ; |824| 
        ldiu      *+fp(2),ar2           ; |824| 
        ldiu      @CL16,r0              ; |824| 
        callu     r0                    ; far call to _sprintf	; |824| 
                                        ; |824| Far Call Occurs
        subi      1,sp                  ; |824| 
	.line	10
;----------------------------------------------------------------------
; 826 | c[2] = NULL;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |826| 
        addi      8,ar0                 ; |826| 
        ldiu      0,r0                  ; |826| 
        sti       r0,*ar0               ; |826| 
	.line	12
;----------------------------------------------------------------------
; 828 | for(i=0;i<40;i=i+2) // LCD: 20-length line = 40-length character code  
;----------------------------------------------------------------------
        sti       r0,*+fp(3)            ; |828| 
        cmpi      40,r0                 ; |828| 
        bge       L116                  ; |828| 
;*      Branch Occurs to L116           ; |828| 
L112:        
	.line	14
;----------------------------------------------------------------------
; 830 | c[0] = code[i];                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |830| 
        ldiu      *+fp(1),ir0           ; |830| 
        ldiu      *+fp(3),ar1           ; |830| 
        addi      6,ar0                 ; |830| 
        ldiu      *+ar1(ir0),r0         ; |830| 
        sti       r0,*ar0               ; |830| 
	.line	15
;----------------------------------------------------------------------
; 831 | if (c[0] == NULL) //end of string - null terminated                    
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |831| 
        addi      6,ar0                 ; |831| 
        ldiu      *ar0,r0               ; |831| 
        cmpi      0,r0                  ; |831| 
        beq       L116                  ; |831| 
;*      Branch Occurs to L116           ; |831| 
	.line	16
;----------------------------------------------------------------------
; 832 | break;                                                                 
;----------------------------------------------------------------------
	.line	18
;----------------------------------------------------------------------
; 834 | c[1] = code[i+1];                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1           ; |834| 
        ldiu      fp,ar0                ; |834| 
        addi      *+fp(1),ar1           ; |834| Unsigned
        addi      7,ar0                 ; |834| 
        ldiu      *+ar1(1),r0           ; |834| 
        sti       r0,*ar0               ; |834| 
	.line	19
;----------------------------------------------------------------------
; 835 | if (c[1] == NULL) //end of string - null terminated                    
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |835| 
        addi      7,ar0                 ; |835| 
        ldiu      *ar0,r0               ; |835| 
        cmpi      0,r0                  ; |835| 
        beq       L116                  ; |835| 
;*      Branch Occurs to L116           ; |835| 
	.line	20
;----------------------------------------------------------------------
; 836 | break;                                                                 
;----------------------------------------------------------------------
	.line	22
;----------------------------------------------------------------------
; 838 | l_code_val = strtol(c,NULL,16); //read in 2-char string as 2-digit hex 
;----------------------------------------------------------------------
        ldp       @CL440,DP
        ldiu      fp,ar2                ; |838| 
        ldiu      16,r3                 ; |838| 
        ldiu      0,r2                  ; |838| 
        ldiu      @CL440,r0             ; |838| 
        addi      6,ar2                 ; |838| 
        callu     r0                    ; far call to _strtol	; |838| 
                                        ; |838| Far Call Occurs
        sti       r0,*+fp(4)            ; |838| 
	.line	24
;----------------------------------------------------------------------
; 840 | if (l_code_val > 0xFF) //error checking                                
;----------------------------------------------------------------------
        cmpi      255,r0                ; |840| 
        bgt       L116                  ; |840| 
;*      Branch Occurs to L116           ; |840| 
	.line	25
;----------------------------------------------------------------------
; 841 | break;                                                                 
;----------------------------------------------------------------------
	.line	26
;----------------------------------------------------------------------
; 842 | code_val = (unsigned char)l_code_val; //long char -> u_char            
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |842| 
        sti       r0,*+fp(5)            ; |842| 
	.line	28
;----------------------------------------------------------------------
; 844 | out_str[i/2] = code_val; //this character string now has non-ascii char
;     | acters                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),r1            ; |844| 
        ldiu      *+fp(2),ir0           ; |844| 
        ldiu      r1,r0                 ; |844| 
        lsh       -31,r0                ; |844| 
        addi3     r0,r1,ar0             ; |844| 
        ash       -1,ar0                ; |844| 
        ldiu      *+fp(5),r0            ; |844| 
        sti       r0,*+ar0(ir0)         ; |844| 
	.line	12
        ldiu      2,r0                  ; |828| 
        addi      *+fp(3),r0            ; |828| 
        sti       r0,*+fp(3)            ; |828| 
        cmpi      40,r0                 ; |828| 
        blt       L112                  ; |828| 
;*      Branch Occurs to L112           ; |828| 
L116:        
	.line	31
;----------------------------------------------------------------------
; 847 | out_str[20] == NULL;  //append null after padding                      
;----------------------------------------------------------------------
	.line	32
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      10,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	848,000000000h,8


	.sect	 "internal_RAM"

	.global	_main
	.sym	_main,_main,36,2,0
	.func	866
;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_main:
	.line	1
;----------------------------------------------------------------------
; 866 | main()                                                                 
; 868 | while (TRUE)                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
L120:        
	.line	5
;----------------------------------------------------------------------
; 870 | TICKLE_WATCHDOG;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |870| 
        ldiu      128,r0                ; |870| 
        or3       r0,*ar0,r0            ; |870| 
        sti       r0,*ar0               ; |870| 
	pop		ST			
	.line	7
;----------------------------------------------------------------------
; 872 | LCD_PAGE();                                                            
;----------------------------------------------------------------------
        ldp       @CL398,DP
        ldiu      @CL398,r0             ; |872| 
        callu     r0                    ; far call to _LCD_PAGE	; |872| 
                                        ; |872| Far Call Occurs
	.line	8
;----------------------------------------------------------------------
; 873 | Execute();                                                             
;----------------------------------------------------------------------
        call      _Execute              ; |873| 
                                        ; |873| Call Occurs
	.line	9
        bu        L120                  ; |874| 
;*      Branch Occurs to L120           ; |874| 
	.line	10
	.endfunc	875,000000000h,0


;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	0
SL2:	.byte	"COR%i Dampen Flow",0
SL3:	.byte	"COR%i Dampen Density",0
SL4:	.byte	"COR%i MFR Cutoff",0
SL5:	.byte	"COR%i VFR Cutoff",0
SL6:	.byte	"COR%i MCF",0
SL7:	.byte	"COR%i Address",0
SL8:	.byte	"COR%i Mass Flow Unit",0
SL9:	.byte	"COR%i Density Cutoff",0
SL10:	.byte	"Phase Dynamics, Inc.",0
SL11:	.byte	"Initializing Data...",0
SL12:	.byte	"HW Version:    %2d.%02d",0
SL13:	.byte	"FW Version:  %4.2f.%02i",0
SL14:	.byte	" Low Range Analyzer ",0
SL15:	.byte	" Mid Range Analyzer ",0
SL16:	.byte	"High Range Analyzer ",0
SL17:	.byte	"Full Range Analyzer ",0
SL18:	.byte	"  CCM Application   ",0
SL19:	.byte	"      Analyzer      ",0
SL20:	.byte	"                    ",0
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
	.bss	CL73,2
	.bss	CL74,1
	.bss	CL75,1
	.bss	CL76,1
	.bss	CL77,1
	.bss	CL78,1
	.bss	CL79,1
	.bss	CL80,2
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
	.bss	CL92,2
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
	.bss	CL125,2
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
	.bss	CL182,2
	.bss	CL183,1
	.bss	CL184,1
	.bss	CL185,1
	.bss	CL186,1
	.bss	CL187,1
	.bss	CL188,1
	.bss	CL189,1
	.bss	CL190,1
	.bss	CL191,1
	.bss	CL192,1
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
	.bss	CL223,1
	.bss	CL224,1
	.bss	CL225,1
	.bss	CL226,1
	.bss	CL227,1
	.bss	CL228,1
	.bss	CL229,1
	.bss	CL230,1
	.bss	CL231,1
	.bss	CL232,1
	.bss	CL233,1
	.bss	CL234,1
	.bss	CL235,1
	.bss	CL236,1
	.bss	CL237,1
	.bss	CL238,1
	.bss	CL239,1
	.bss	CL240,1
	.bss	CL241,1
	.bss	CL242,1
	.bss	CL243,1
	.bss	CL244,1
	.bss	CL245,2
	.bss	CL246,1
	.bss	CL247,1
	.bss	CL248,1
	.bss	CL249,1
	.bss	CL250,1
	.bss	CL251,1
	.bss	CL252,1
	.bss	CL253,1
	.bss	CL254,1
	.bss	CL255,1
	.bss	CL256,1
	.bss	CL257,1
	.bss	CL258,1
	.bss	CL259,1
	.bss	CL260,1
	.bss	CL261,1
	.bss	CL262,1
	.bss	CL263,1
	.bss	CL264,1
	.bss	CL265,1
	.bss	CL266,1
	.bss	CL267,1
	.bss	CL268,1
	.bss	CL269,1
	.bss	CL270,1
	.bss	CL271,1
	.bss	CL272,1
	.bss	CL273,1
	.bss	CL274,1
	.bss	CL275,1
	.bss	CL276,1
	.bss	CL277,1
	.bss	CL278,1
	.bss	CL279,1
	.bss	CL280,1
	.bss	CL281,1
	.bss	CL282,1
	.bss	CL283,1
	.bss	CL284,1
	.bss	CL285,1
	.bss	CL286,1
	.bss	CL287,1
	.bss	CL288,1
	.bss	CL289,1
	.bss	CL290,1
	.bss	CL291,1
	.bss	CL292,1
	.bss	CL293,1
	.bss	CL294,1
	.bss	CL295,1
	.bss	CL296,1
	.bss	CL297,1
	.bss	CL298,1
	.bss	CL299,1
	.bss	CL300,1
	.bss	CL301,1
	.bss	CL302,1
	.bss	CL303,1
	.bss	CL304,1
	.bss	CL305,1
	.bss	CL306,1
	.bss	CL307,1
	.bss	CL308,1
	.bss	CL309,1
	.bss	CL310,1
	.bss	CL311,1
	.bss	CL312,1
	.bss	CL313,1
	.bss	CL314,1
	.bss	CL315,1
	.bss	CL316,1
	.bss	CL317,1
	.bss	CL318,1
	.bss	CL319,1
	.bss	CL320,1
	.bss	CL321,1
	.bss	CL322,1
	.bss	CL323,1
	.bss	CL324,1
	.bss	CL325,1
	.bss	CL326,1
	.bss	CL327,1
	.bss	CL328,1
	.bss	CL329,1
	.bss	CL330,1
	.bss	CL331,1
	.bss	CL332,1
	.bss	CL333,1
	.bss	CL334,1
	.bss	CL335,1
	.bss	CL336,1
	.bss	CL337,1
	.bss	CL338,1
	.bss	CL339,1
	.bss	CL340,1
	.bss	CL341,1
	.bss	CL342,1
	.bss	CL343,1
	.bss	CL344,1
	.bss	CL345,1
	.bss	CL346,1
	.bss	CL347,1
	.bss	CL348,1
	.bss	CL349,1
	.bss	CL350,1
	.bss	CL351,1
	.bss	CL352,1
	.bss	CL353,1
	.bss	CL354,1
	.bss	CL355,1
	.bss	CL356,1
	.bss	CL357,1
	.bss	CL358,1
	.bss	CL359,1
	.bss	CL360,1
	.bss	CL361,1
	.bss	CL362,1
	.bss	CL363,1
	.bss	CL364,1
	.bss	CL365,1
	.bss	CL366,1
	.bss	CL367,1
	.bss	CL368,1
	.bss	CL369,1
	.bss	CL370,1
	.bss	CL371,1
	.bss	CL372,1
	.bss	CL373,1
	.bss	CL374,1
	.bss	CL375,1
	.bss	CL376,1
	.bss	CL377,1
	.bss	CL378,1
	.bss	CL379,1
	.bss	CL380,1
	.bss	CL381,1
	.bss	CL382,1
	.bss	CL383,1
	.bss	CL384,1
	.bss	CL385,1
	.bss	CL386,1
	.bss	CL387,1
	.bss	CL388,1
	.bss	CL389,1
	.bss	CL390,1
	.bss	CL391,1
	.bss	CL392,1
	.bss	CL393,1
	.bss	CL394,1
	.bss	CL395,1
	.bss	CL396,1
	.bss	CL397,1
	.bss	CL398,1
	.bss	CL399,1
	.bss	CL400,1
	.bss	CL401,1
	.bss	CL402,1
	.bss	CL403,1
	.bss	CL404,1
	.bss	CL405,1
	.bss	CL406,1
	.bss	CL407,1
	.bss	CL408,1
	.bss	CL409,1
	.bss	CL410,1
	.bss	CL411,1
	.bss	CL412,1
	.bss	CL413,1
	.bss	CL414,1
	.bss	CL415,1
	.bss	CL416,1
	.bss	CL417,1
	.bss	CL418,1
	.bss	CL419,1
	.bss	CL420,1
	.bss	CL421,1
	.bss	CL422,1
	.bss	CL423,1
	.bss	CL424,1
	.bss	CL425,1
	.bss	CL426,1
	.bss	CL427,1
	.bss	CL428,1
	.bss	CL429,1
	.bss	CL430,1
	.bss	CL431,1
	.bss	CL432,1
	.bss	CL433,1
	.bss	CL434,1
	.bss	CL435,2
	.bss	CL436,1
	.bss	CL437,1
	.bss	CL438,1
	.bss	CL439,1
	.bss	CL440,1

	.sect	".cinit"
	.field  	447,32
	.field  	CL1+0,32
	.field  	_InitLog,32
	.field  	_MEM,32
	.field  	_Setup_Basics,32
	.field  	_Restore_CFG,32
	.field  	9437188,32
	.field  	_DIAG_TEMP,32
	.field  	_DIAG_TEMP+1,32
	.field  	_DIAGNOSTICS,32
	.field  	_DIAGNOSTICS+1,32
	.field  	_DIAGNOSTICS_MSG_CODE,32
	.field  	_DIAGNOSTICS_ERROR_CODE,32
	.field  	_CHANGE,32
	.field  	_DATA_CHANGE,32
	.field  	SL1,32
	.field  	_E_STRING,32
	.field  	_sprintf,32
	.field  	_Execute_Init,32
	.field  	_IDEC_PORT,32
	.field  	_IDEC_SA,32
	.field  	_IDEC_SA+1,32
	.field  	_IDEC_SA+2,32
	.field  	_IDEC_SA+15,32
	.field  	_Set_Time,32
	.field  	_IDEC_SA+25,32
	.field  	_Set_IDEC_Port,32
	.field  	_ESN_MFGR,32
	.field  	_FLASH_READ_ESN_MFGR,32
	.field  	_ESN_USER,32
	.field  	_FLASH_READ_ESN_USER,32
	.field  	_LOCKOUT,32
	.field  	_DIO_LOCK+3,32
	.field  	_DIO_LOCK+6,32
	.field  	_DIO_LOCK+9,32
	.field  	_RESEARCH_FORCE_MODE,32
	.field  	_SAMPLE_PENDING,32
	.field  	_SN_PIPE,32
	.field  	16777215,32
	.field  	_DUMMY,32
	.field  	_PORT2_LIQ_TEMP,32
	.field  	_PORT2_GAS_TEMP,32
	.field  	_PORT3_TEMP,32
	.field  	_MM_LIQ_fail,32
	.field  	_MM_GAS_fail,32
	.field  	_Rosemount_fail,32
	.field  	_DIO_ERROR,32
	.field  	_DIO_ALARM,32
	.field  	_DIO_SYSTEM_RESET,32
	.field  	_DIO_BUILT_IN_TEST,32
	.field  	_DIO_BEEP,32
	.field  	_DIO_uP_GET,32
	.field  	_DIO_uP_SET,32
	.field  	_DIO_COMM_GET,32
	.field  	_DIO_COMM_SET,32
	.field  	_DIO_POWER_GET,32
	.field  	_DIO_POWER_SET,32
	.field  	_DIO_DISPLAY_GET,32
	.field  	_DIO_DISPLAY_SET,32
	.field  	_DIO_MOTHERBOARD_GET,32
	.field  	_DIO_MOTHERBOARD_SET,32
	.field  	_DIO_ANALYZER_GET,32
	.field  	_DIO_ANALYZER_SET,32
	.field  	_DIO_ANALOGIO_GET,32
	.field  	_DIO_ANALOGIO_SET,32
	.field  	_DIO_PV_PERCMASS,32
	.field  	_LED_GREEN,32
	.field  	_REG_FREQ_OIL_LO,32
	.field  	_VAR_Update,32
	.field  	_REG_FREQ_OIL_HI,32
	.field  	_REG_FREQ_WATER_LO,32
	.field  	_REG_FREQ_WATER_HI,32
	.field  	_EXTENDED_FW_VERSION_ENABLE,32
	.field  	_EXTENDED_FW_VERSION_ENABLE+9,32
	.word   	006760000H ; ldouble 1.230000000000000e+02
	.word   	076000000H ; ldouble
	.field  	9437185,32
	.field  	_DIPSWITCH,32
	.field  	_DIPSWITCH+1,32
	.field  	_REG_TIME,32
	.field  	_N_TEMP,32
	.field  	_SUM_TEMP,32
	.word   	080000000H ; ldouble 0.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_AVG_TEMP,32
	.field  	_cycles,32
	.field  	_previous_phase,32
	.field  	_phase,32
	.field  	_phase_rollover_count,32
	.field  	_N_WC,32
	.field  	_WC_SUM,32
	.field  	_WC_SAMPLE,32
	.field  	_N_FREQ,32
	.field  	_HSALT_FREQ_TRIGGER,32
	.field  	_REG_FREQ_VARIANCE_RATIO,32
	.word   	000400000H ; ldouble 1.500000000000000e+00
	.word   	040000000H ; ldouble
	.field  	_TEMP_SAMPLE,32
	.field  	_LAST_TEMP_RESET,32
	.field  	_HSALT_TEMP_TRIGGER,32
	.field  	_GAS_ENTRAINED_DENS_DETECT,32
	.field  	_gas_routine_reset_needed,32
	.field  	_boxcar_reset_needed,32
	.field  	_ANALYZER_MODE,32
	.field  	_REG_WATERCUT_DENSITY+3,32
	.field  	_TRIM_RTD_LO,32
	.field  	_TRIM_RTD_HI,32
	.field  	_CAP_WATER_STOP,32
	.field  	_CAP_OIL_STOP,32
	.field  	_PV_SAMPLES,32
	.field  	_Clear,32
	.field  	_PV_SAMPLES_24hr,32
	.field  	_PV_SAMPLES_5min,32
	.field  	_PV_SAMPLES+305,32
	.field  	-2147483648,32
	.field  	_PV_SAMPLES_24hr+305,32
	.field  	_REG_PV_AVG_24hr,32
	.field  	_PV_SAMPLES_5min+305,32
	.field  	_REG_PV_AVG_5min,32
	.field  	_REG_PV_AVG_1sec,32
	.field  	_REG_PV_AVG_CNT,32
	.field  	_Mirror_From_Stream_Table,32
	.field  	_WC,32
	.field  	_REG_WATERCUT_RAW,32
	.field  	_REG_CAL_OIL+9,32
	.field  	_REG_CAL_OIL,32
	.field  	_REG_CAL_WATER+9,32
	.field  	_REG_CAL_WATER,32
	.field  	_REG_EMULSION_PHASE,32
	.word   	001000000H ; ldouble 2.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_REG_WATERCUT,32
	.field  	_VAR_NaN,32
	.field  	_REG_TEMPERATURE_USER,32
	.field  	_REG_TEMPERATURE_AVG,32
	.field  	_REG_TEMPERATURE_EXTERNAL,32
	.field  	_REG_DUMMY,32
	.field  	_VAR_SELECT_DVIN,32
	.field  	_VAR_SELECT_DVIN+1,32
	.field  	_VAR_SET_STR_DVIN,32
	.field  	_VAR_SELECT_DV,32
	.field  	_VAR_SELECT_DV+1,32
	.field  	_VAR_SET_STR_DV,32
	.field  	_AO+44,32
	.field  	_PID_Init,32
	.field  	_AI+264,32
	.field  	_AI,32
	.field  	_AI+44,32
	.field  	_AI+317,32
	.field  	_NaN_val_flt,32
	.field  	_i_CCM_Level_Setpoint,32
	.field  	_i_CCM_Level,32
	.field  	_i_CCM_Pressure_Setpoint,32
	.field  	_i_CCM_Pressure,32
	.field  	_i_CCM_Gas_Valve,32
	.field  	_i_CCM_Liquid_Valve,32
	.field  	_i_CCM_Flow,32
	.field  	_i_CCM_Flow_Oil,32
	.field  	_i_CCM_Flow_Water,32
	.field  	_i_CCM_Flow_Gas,32
	.field  	_CCM_24_GAS,32
	.field  	_CCM_24_TOTAL,32
	.field  	_CCM_24_OIL,32
	.field  	_CCM_24_WATER,32
	.field  	_CCM_REMAINING,32
	.field  	_CCM_REMAINING_S,32
	.field  	_CCM_ELAPSED_S,32
	.field  	_DIO_CCM_START,32
	.field  	_DIO_CCM_PURGE_STAT,32
	.field  	_REG_CCM_TEST_STAT,32
	.field  	_REG_CCM_PURGE_STAT,32
	.field  	_CCM_GAS_FLOW,32
	.field  	_CCM_GAS_TOTAL,32
	.field  	_CCM_VESSEL_LEVEL,32
	.field  	_CCM_VESSEL_LEVEL+44,32
	.field  	_CCM_VESSEL_PRESSURE,32
	.field  	_CCM_VESSEL_PRESSURE+44,32
	.field  	_CCM_TIME_START,32
	.field  	_CLEAR_TIME,32
	.field  	_CCM_TIME_STOP,32
	.field  	_CCM_TIME_REMAINING,32
	.field  	_CCM_TIME_ELAPSED,32
	.field  	_REG_VINC,32
	.field  	_REG_VREF,32
	.field  	_REG_FREQ,32
	.field  	_REG_VTUNE,32
	.field  	_TMP_VINC,32
	.word   	0FF800000H ; ldouble -1.000000000000000e+00
	.word   	080000000H ; ldouble
	.field  	_TMP_VREF,32
	.field  	_TMP_FREQ,32
	.field  	_TMP_VTUNE,32
	.field  	_REG_VINC_O,32
	.field  	_REG_VREF_O,32
	.field  	_REG_FREQ_O,32
	.field  	_REG_VINC_W,32
	.field  	_REG_VREF_W,32
	.field  	_REG_FREQ_W,32
	.field  	_FREQ_O,32
	.field  	_IP_O,32
	.field  	_RP_O,32
	.field  	_IP_RP_O,32
	.field  	_DB_IP_RP_O,32
	.field  	_FREQ_W,32
	.field  	_IP_W,32
	.field  	_RP_W,32
	.field  	_IP_RP_W,32
	.field  	_DB_IP_RP_W,32
	.field  	_i_FREQ_O,32
	.field  	_i_IP_O,32
	.field  	_i_RP_O,32
	.field  	_i_FREQ_W,32
	.field  	_i_IP_W,32
	.field  	_i_RP_W,32
	.field  	_i_TEMP,32
	.field  	_i_WC,32
	.field  	_compatibility_dummy,32
	.field  	_i_LV,32
	.field  	_il_LV,32
	.field  	_f_LV,32
	.field  	_COR,32
	.field  	_COR+1,32
	.field  	_COR+3,32
	.field  	_COR+27,32
	.field  	_VAR_Initialize,32
	.field  	_COR+49,32
	.field  	SL2,32
	.field  	_COR+33,32
	.field  	_COR+29,32
	.field  	_CORIOLIS_CFG,32
	.field  	_COR+71,32
	.field  	_COR+93,32
	.field  	SL3,32
	.field  	_COR+77,32
	.field  	_COR+73,32
	.field  	_COR+115,32
	.word   	0097A0000H ; double  1.000000000000000e+03
	.field  	_COR+137,32
	.field  	SL4,32
	.field  	_COR+121,32
	.field  	_COR+117,32
	.field  	_COR+159,32
	.field  	_COR+181,32
	.field  	SL5,32
	.field  	_COR+165,32
	.field  	_COR+161,32
	.field  	_COR+203,32
	.word   	010435000H ; double  1.000000000000000e+05
	.field  	_COR+225,32
	.field  	SL6,32
	.field  	_COR+209,32
	.word   	000000000H ; ldouble 1.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_COR+205,32
	.field  	_COR+247,32
	.field  	_COR+269,32
	.field  	SL7,32
	.field  	_COR+253,32
	.field  	_COR+249,32
	.field  	_CORIOLIS_INT_CFG,32
	.field  	_COR+291,32
	.field  	_COR+313,32
	.field  	SL8,32
	.field  	_COR+297,32
	.field  	_COR+293,32
	.field  	_COR+335,32
	.field  	_COR+357,32
	.field  	SL9,32
	.field  	_COR+341,32
	.field  	_COR+337,32
	.field  	_COR+4,32
	.field  	_COR+6,32
	.word   	006BA0000H ; double  -9.900000000000000e+01
	.field  	_COR+5,32
	.field  	_COR+7,32
	.field  	_COR+19,32
	.field  	_COR+20,32
	.field  	_COR+8,32
	.field  	_COR+9,32
	.field  	_COR+10,32
	.field  	_COR+12,32
	.field  	_COR+14,32
	.field  	_COR+15,32
	.field  	_COR+17,32
	.field  	_COR+21,32
	.field  	_COR+22,32
	.field  	_COR+23,32
	.field  	_COR+24,32
	.field  	_COR+25,32
	.field  	_COR+26,32
	.field  	_COR+18,32
	.field  	_COR+11,32
	.field  	_COR+13,32
	.field  	_COR+16,32
	.field  	_COR+2,32
	.field  	_COR+379,32
	.field  	_COR+380,32
	.field  	_CORIOLIS_ZERO1,32
	.field  	_COR+762,32
	.field  	_CORIOLIS_ZERO2,32
	.field  	_COR+1144,32
	.field  	_CORIOLIS_ZERO3,32
	.field  	_COR+1526,32
	.field  	_CORIOLIS_ZERO4,32
	.field  	_COR+381,32
	.field  	_COR+763,32
	.field  	_COR+1145,32
	.field  	_COR+1527,32
	.field  	_PRESS+6,32
	.field  	_PRESS+7,32
	.field  	_PRESS+8,32
	.field  	_PRESS,32
	.field  	_PRESS+1,32
	.field  	_PRESS+2,32
	.field  	_PRESS+3,32
	.field  	_PRESS+4,32
	.field  	_PRESS+5,32
	.field  	_TMPTRANS,32
	.field  	_TMPTRANS+1,32
	.field  	_TMPTRANS+2,32
	.field  	_TMPTRANS+3,32
	.field  	_TMPTRANS+4,32
	.field  	_TMPTRANS+5,32
	.field  	_FC+492,32
	.field  	_FC+1255,32
	.field  	_FC+490,32
	.field  	_FC+491,32
	.field  	_FC+176,32
	.field  	_FC+1206,32
	.field  	_FC+1324,32
	.field  	_FC+1327,32
	.field  	_FC+354,32
	.field  	_USE_PDI_WATERCUT,32
	.field  	_CALC_WC_DENSITY,32
	.field  	_FC+1328,32
	.field  	_FC,32
	.field  	_FC+1330,32
	.field  	_FC+88,32
	.field  	_FC+1323,32
	.field  	_FC+1326,32
	.field  	_FC+44,32
	.field  	_FC+1331,32
	.field  	_FC+1073,32
	.field  	_FC+1029,32
	.field  	_FC+985,32
	.field  	_FC+897,32
	.field  	_FC+849,32
	.field  	_FC+801,32
	.field  	_FC+581,32
	.field  	_FC+537,32
	.field  	_FC+493,32
	.field  	_FC+713,32
	.field  	_FC+669,32
	.field  	_FC+625,32
	.field  	_FC+845,32
	.field  	_FC+810,32
	.field  	_floor,32
	.field  	_FC+847,32
	.field  	_FC+893,32
	.field  	_FC+858,32
	.field  	_FC+895,32
	.field  	_ALYESKA,32
	.field  	_ALYESKA+1,32
	.field  	_ALYESKA+2,32
	.field  	_ALYESKA+3,32
	.field  	_ALYESKA+4,32
	.field  	_ALYESKA+5,32
	.field  	_ALYESKA+6,32
	.field  	_ALYESKA+7,32
	.field  	_ALYESKA+8,32
	.field  	_ALYESKA+9,32
	.field  	_ALYESKA+10,32
	.field  	_ALFAT_STATUS_REG,32
	.field  	_ALFAT_INIT_ALL,32
	.field  	_ALFAT_APPEND_LF,32
	.field  	_PORT+395,32
	.field  	_ALFAT_RX,32
	.field  	_DEMO_ANALYZER_MODE,32
	.field  	_DEMO_Init,32
	.field  	_HW_VER,32
	.field  	9437184,32
	.field  	_SA,32
	.field  	_SRAM_SCRATCHPAD,32
	.field  	10715136,32
	.field  	11534336,32
	.field  	8421476,32
	.field  	9437190,32
	.field  	_INITIALIZING,32
	.field  	_INT0,32
	.field  	8429505,32
	.field  	_c_int00,32
	.field  	4194304,32
	.field  	4194304,32
	.field  	_CLOCK,32
	.field  	55296000,32
	.field  	_LCD_INIT,32
	.field  	_LCD_DISPLAY,32
	.word   	00244CCCDH ; double  6.150000000000000e+00
	.field  	SL10,32
	.field  	_LCD_DISPLAY+101,32
	.field  	SL11,32
	.field  	_LCD_DISPLAY+202,32
	.field  	SL12,32
	.field  	_LCD_DISPLAY+303,32
	.field  	SL13,32
	.field  	_LCD_PAGE,32
	.field  	_MENU_INIT,32
	.field  	_Initialize_Variables,32
	.field  	SL14,32
	.field  	SL15,32
	.field  	SL16,32
	.field  	SL17,32
	.field  	SL18,32
	.field  	SL19,32
	.field  	_RTC_setup,32
	.word   	0F1483FB7H ; double  4.774305555555556e-05
	.field  	_Setup_Timer,32
	.field  	_VAR_DAMP_Init,32
	.field  	_Initialize_Periodic_Events,32
	.field  	_Setup_Serial_Port0,32
	.field  	_Setup_ADC,32
	.field  	_Setup_DAC,32
	.field  	_REG_TEMPERATURE_EXTERNAL+13,32
	.field  	_DIO_TEMP_C,32
	.field  	_DIO_BUILT_IN_TEST_ENABLE,32
	.field  	_Self_Test_FULL,32
	.field  	_LOG_STATUS,32
	.field  	_TMR_ALFAT_LOG,32
	.field  	_Timer_Insert,32
	.field  	_Port_Defaults,32
	.field  	_Disable_Heater,32
	.field  	_RESET_COUNTER,32
	.field  	_Write_CFG_USER,32
	.field  	_DEMO,32
	.field  	_Clear_Accumulators,32
	.field  	_VT_SELECT,32
	.field  	_OSWITCH,32
	.field  	9437203,32
	.field  	_EXTUNE,32
	.field  	_REG_DAC+440,32
	.field  	_REG_VTUNE_SET+9,32
	.field  	_REG_DAC+484,32
	.word   	002200000H ; ldouble 5.000000000000000e+00
	.word   	020000000H ; ldouble
	.field  	_Write_DAC,32
	.field  	_Set_Research_Mode,32
	.field  	_Debug,32
	.field  	SL20,32
	.field  	_strtol,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_sprintf

	.global	_strtol

	.global	_floor

	.global	_VAR_Initialize

	.global	_VAR_DAMP_Init

	.global	_VAR_NaN

	.global	_VAR_Update

	.global	_Clear

	.global	_Setup_Timer

	.global	_Timer_Insert

	.global	_CLEAR_TIME

	.global	_RTC_setup

	.global	_LCD_PAGE

	.global	_LCD_DISPLAY

	.global	_LCD_INIT

	.global	_DIAG_TEMP

	.global	_DIAGNOSTICS

	.global	_DIAGNOSTICS_MSG_CODE

	.global	_DIAGNOSTICS_ERROR_CODE

	.global	_E_STRING

	.global	_DIO_ERROR

	.global	_DIO_ALARM

	.global	_PORT

	.global	_Setup_Serial_Port0

	.global	_Port_Defaults

	.global	_AI

	.global	_Setup_ADC

	.global	_Setup_DAC

	.global	_Write_DAC

	.global	_PID_Init

	.global	_AO

	.global	_Execute_Init

	.global	_SRAM_SCRATCHPAD

	.global	_FLASH_READ_ESN_MFGR

	.global	_FLASH_READ_ESN_USER

	.global	_InitLog

	.global	_DEMO_Init

	.global	_Self_Test_FULL

	.global	_MENU_INIT

	.global	_CLOCK

	.global	_LED_GREEN

	.global	_OSWITCH

	.global	_c_int00

	.global	_ESN_USER

	.global	_ESN_MFGR

	.global	_RESEARCH_FORCE_MODE

	.global	_DIO_uP_GET

	.global	_DIO_uP_SET

	.global	_DIO_COMM_GET

	.global	_DIO_COMM_SET

	.global	_DIO_ANALYZER_GET

	.global	_DIO_ANALYZER_SET

	.global	_DIO_POWER_GET

	.global	_DIO_POWER_SET

	.global	_DIO_ANALOGIO_GET

	.global	_DIO_ANALOGIO_SET

	.global	_DIO_DISPLAY_GET

	.global	_DIO_DISPLAY_SET

	.global	_DIO_MOTHERBOARD_GET

	.global	_DIO_MOTHERBOARD_SET

	.global	_DIO_BEEP

	.global	_DIO_PV_PERCMASS

	.global	_VAR_SELECT_DV

	.global	_VAR_SELECT_DVIN

	.global	_i_LV

	.global	_il_LV

	.global	_f_LV

	.global	_DATA_CHANGE

	.global	_SA

	.global	_EXTUNE

	.global	_PV_SAMPLES

	.global	_PV_SAMPLES_24hr

	.global	_PV_SAMPLES_5min

	.global	_VT_SELECT

	.global	_INITIALIZING

	.global	_MEM

	.global	_DIPSWITCH

	.global	_DUMMY

	.global	_CHANGE

	.global	_IDEC_SA

	.global	_IDEC_PORT

	.global	_i_FREQ_O

	.global	_i_IP_O

	.global	_i_RP_O

	.global	_i_FREQ_W

	.global	_i_IP_W

	.global	_i_RP_W

	.global	_i_TEMP

	.global	_i_WC

	.global	_FREQ_O

	.global	_IP_O

	.global	_RP_O

	.global	_IP_RP_O

	.global	_DB_IP_RP_O

	.global	_FREQ_W

	.global	_IP_W

	.global	_RP_W

	.global	_IP_RP_W

	.global	_DB_IP_RP_W

	.global	_HW_VER

	.global	_i_CCM_Level_Setpoint

	.global	_i_CCM_Level

	.global	_i_CCM_Pressure_Setpoint

	.global	_i_CCM_Pressure

	.global	_i_CCM_Gas_Valve

	.global	_i_CCM_Liquid_Valve

	.global	_i_CCM_Flow

	.global	_i_CCM_Flow_Oil

	.global	_i_CCM_Flow_Water

	.global	_i_CCM_Flow_Gas

	.global	_CCM_TIME_START

	.global	_CCM_TIME_STOP

	.global	_CCM_TIME_REMAINING

	.global	_CCM_TIME_ELAPSED

	.global	_CCM_VESSEL_LEVEL

	.global	_CCM_VESSEL_PRESSURE

	.global	_CCM_REMAINING

	.global	_CCM_REMAINING_S

	.global	_CCM_ELAPSED_S

	.global	_CCM_24_GAS

	.global	_CCM_24_OIL

	.global	_CCM_24_WATER

	.global	_CCM_24_TOTAL

	.global	_CCM_GAS_TOTAL

	.global	_CCM_GAS_FLOW

	.global	_ANALYZER_MODE

	.global	_DEMO

	.global	_DEMO_ANALYZER_MODE

	.global	_REG_TIME

	.global	_SAMPLE_PENDING

	.global	_RESET_COUNTER

	.global	_SN_PIPE

	.global	_NaN_val_flt

	.global	_DIO_SYSTEM_RESET

	.global	_DIO_BUILT_IN_TEST_ENABLE

	.global	_DIO_BUILT_IN_TEST

	.global	_DIO_TEMP_C

	.global	_DIO_CCM_START

	.global	_REG_CCM_TEST_STAT

	.global	_DIO_CCM_PURGE_STAT

	.global	_REG_CCM_PURGE_STAT

	.global	_REG_DUMMY

	.global	_WC

	.global	_REG_WATERCUT_RAW

	.global	_REG_PV_AVG_24hr

	.global	_REG_PV_AVG_5min

	.global	_REG_PV_AVG_1sec

	.global	_REG_PV_AVG_CNT

	.global	_REG_WATERCUT

	.global	_REG_WATERCUT_DENSITY

	.global	_TMP_VTUNE

	.global	_REG_VINC

	.global	_TMP_VINC

	.global	_REG_VREF

	.global	_TMP_VREF

	.global	_REG_TEMPERATURE_USER

	.global	_REG_TEMPERATURE_AVG

	.global	_REG_TEMPERATURE_EXTERNAL

	.global	_REG_FREQ

	.global	_REG_FREQ_O

	.global	_REG_VINC_O

	.global	_REG_VREF_O

	.global	_REG_FREQ_W

	.global	_REG_VINC_W

	.global	_REG_VREF_W

	.global	_AVG_TEMP

	.global	_SUM_TEMP

	.global	_N_TEMP

	.global	_cycles

	.global	_previous_phase

	.global	_phase

	.global	_phase_rollover_count

	.global	_N_WC

	.global	_WC_SAMPLE

	.global	_WC_SUM

	.global	_PORT2_LIQ_TEMP

	.global	_PORT2_GAS_TEMP

	.global	_PORT3_TEMP

	.global	_MM_LIQ_fail

	.global	_MM_GAS_fail

	.global	_Rosemount_fail

	.global	_N_FREQ

	.global	_HSALT_FREQ_TRIGGER

	.global	_REG_FREQ_VARIANCE_RATIO

	.global	_TEMP_SAMPLE

	.global	_LAST_TEMP_RESET

	.global	_HSALT_TEMP_TRIGGER

	.global	_EXTENDED_FW_VERSION_ENABLE

	.global	_GAS_ENTRAINED_DENS_DETECT

	.global	_gas_routine_reset_needed

	.global	_boxcar_reset_needed

	.global	_TRIM_RTD_LO

	.global	_TRIM_RTD_HI

	.global	_CAP_WATER_STOP

	.global	_CAP_OIL_STOP

	.global	_TMP_FREQ

	.global	_REG_FREQ_OIL_LO

	.global	_REG_FREQ_OIL_HI

	.global	_REG_FREQ_WATER_LO

	.global	_REG_FREQ_WATER_HI

	.global	_REG_VTUNE_SET

	.global	_REG_VTUNE

	.global	_REG_EMULSION_PHASE

	.global	_REG_CAL_OIL

	.global	_REG_CAL_WATER

	.global	_DIO_LOCK

	.global	_LOCKOUT

	.global	_REG_DAC

	.global	_COR

	.global	_PRESS

	.global	_TMPTRANS

	.global	_USE_PDI_WATERCUT

	.global	_CALC_WC_DENSITY

	.global	_FC

	.global	_ALYESKA

	.global	_compatibility_dummy

	.global	_ALFAT_RX

	.global	_LOG_STATUS

	.global	_ALFAT_INIT_ALL

	.global	_ALFAT_STATUS_REG

	.global	_ALFAT_APPEND_LF

	.global	_Setup_Basics

	.global	_Initialize_Periodic_Events

	.global	_Disable_Heater

	.global	_Set_IDEC_Port

	.global	_Set_Time

	.global	_VAR_SET_STR_DV

	.global	_VAR_SET_STR_DVIN

	.global	_Clear_Accumulators

	.global	_TMR_ALFAT_LOG

	.global	_Write_CFG_USER

	.global	_Restore_CFG

	.global	_Set_Research_Mode

	.global	_Mirror_From_Stream_Table

	.global	_CORIOLIS_ZERO1

	.global	_CORIOLIS_ZERO2

	.global	_CORIOLIS_ZERO3

	.global	_CORIOLIS_ZERO4

	.global	_CORIOLIS_CFG

	.global	_CORIOLIS_INT_CFG

	.global	_INT0
	.global	_Execute
