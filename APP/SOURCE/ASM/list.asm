;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Wed Feb  2 11:34:56 2022                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_BS4.AAA 
	.file	"list.c"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\GLBLS.H"
	.file	"Y:\workspace_eea\V615\INCLUDE\stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"Y:\workspace_eea\V615\INCLUDE\format.h"
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
	.file	"Y:\workspace_eea\V615\INCLUDE\string.h"
	.sym	_size_t,0,14,13,32
	.file	"Y:\workspace_eea\V615\INCLUDE\stdio.h"
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
	.file	"Y:\workspace_eea\V615\INCLUDE\stdlib.h"
	.sym	_wchar_t,0,2,13,32
	.stag	__div_t,64
	.member	_quot,0,4,8,32
	.member	_rem,32,4,8,32
	.eos
	.sym	_div_t,0,8,13,64,__div_t
	.sym	_ldiv_t,0,8,13,64,__div_t
	.file	"Y:\workspace_eea\V615\INCLUDE\math.h"
	.file	"Y:\workspace_eea\V615\INCLUDE\time.h"
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
	.file	"Y:\workspace_eea\V615\INCLUDE\ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"Y:\workspace_eea\V615\INCLUDE\LIST.H"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\VARIABLE.H"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\BUFFER.H"
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
	.file	"Y:\workspace_eea\V615\INCLUDE\UNITS.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\TIMER.H"
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
	.file	"Y:\workspace_eea\V615\INCLUDE\I2C.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\ERRORS.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\SERIAL.H"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\ADC.H"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\DAC.H"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\EXECUTE.H"
	.stag	.fake17,128
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.eos
	.sym	_EPKT,0,8,13,128,.fake17
	.file	"Y:\workspace_eea\V615\INCLUDE\FLASH.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\LOG.H"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\DEMO.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\SELFTEST.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\MENU.H"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\FLOAT1.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\GLBLS.H"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\HART.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\MODBUSRTU.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\MISC.H"
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\API.H"
	.file	"list.c"
	.sect	 "internal_RAM"

	.global	_List_Add
	.sym	_List_Add,_List_Add,46,2,0
	.func	38
;******************************************************************************
;* FUNCTION NAME: _List_Add                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_List_Add:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
;* r2    assigned to _p
	.sym	_p,2,24,17,32,.fake5
	.sym	_l,1,24,1,32,.fake4
	.sym	_p,2,24,1,32,.fake5
	.sym	_t,3,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
;  38 | BOOL List_Add(LIST *l, GENERIC *p)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
;  40 | GENERIC* t;                     /* temporary node */                   
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |39| 
        sti       ar2,*+fp(1)           ; |39| 
	.line	5
;----------------------------------------------------------------------
;  42 | if (p==(GENERIC*)0)     /* empty node */                               
;----------------------------------------------------------------------
        ldiu      r2,r0
        cmpi      0,r0                  ; |42| 
        bne       L3                    ; |42| 
;*      Branch Occurs to L3             ; |42| 
	.line	6
;----------------------------------------------------------------------
;  43 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L7                    ; |43| 
	nop
	nop
        ldiu      0,r0                  ; |43| 
;*      Branch Occurs to L7             ; |43| 
L3:        
	.line	8
;----------------------------------------------------------------------
;  45 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
;  46 | p->prev = l->tail;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |46| 
        ldiu      *+fp(2),ar1           ; |46| 
        ldiu      *+ar0(1),r0           ; |46| 
        sti       r0,*ar1               ; |46| 
	.line	10
;----------------------------------------------------------------------
;  47 | p->next = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |47| 
        ldiu      0,r0                  ; |47| 
        sti       r0,*+ar0(1)           ; |47| 
	.line	12
;----------------------------------------------------------------------
;  49 | if (l->tail != NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |49| 
        ldiu      *+ar0(1),r0           ; |49| 
        cmpi      0,r0                  ; |49| 
        beq       L5                    ; |49| 
;*      Branch Occurs to L5             ; |49| 
	.line	14
;----------------------------------------------------------------------
;  51 | t               = (GENERIC*)l->tail;                                   
;----------------------------------------------------------------------
        ldiu      *+ar0(1),r0           ; |51| 
        sti       r0,*+fp(3)            ; |51| 
	.line	15
;----------------------------------------------------------------------
;  52 | t->next = (int*)p;                                                     
;  54 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(2),r0            ; |52| 
        sti       r0,*+ar0(1)           ; |52| 
        bu        L6                    ; |37| 
;*      Branch Occurs to L6             ; |37| 
L5:        
	.line	18
;----------------------------------------------------------------------
;  55 | l->head = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |55| 
        ldiu      *+fp(2),r0            ; |55| 
        sti       r0,*ar0               ; |55| 
L6:        
	.line	20
;----------------------------------------------------------------------
;  57 | l->tail = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |57| 
        ldiu      *+fp(2),r0            ; |57| 
        sti       r0,*+ar0(1)           ; |57| 
	.line	21
;----------------------------------------------------------------------
;  58 | l->n++;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |58| 
        ldiu      1,r0                  ; |58| 
        addi      *+ar0(2),r0           ; |58| 
        sti       r0,*+ar0(2)           ; |58| 
	.line	22
;----------------------------------------------------------------------
;  59 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	24
;----------------------------------------------------------------------
;  61 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |61| 
L7:        
	.line	25
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |62| 
        ldiu      *fp,fp                ; |62| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |62| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	62,000000000h,3


	.sect	 "internal_RAM"

	.global	_List_Remove
	.sym	_List_Remove,_List_Remove,46,2,0
	.func	77
;******************************************************************************
;* FUNCTION NAME: _List_Remove                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_List_Remove:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
;* r2    assigned to _p
	.sym	_p,2,24,17,32,.fake5
	.sym	_l,1,24,1,32,.fake4
	.sym	_p,2,24,1,32,.fake5
	.sym	_t,3,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
;  77 | BOOL List_Remove(LIST *l, GENERIC *p)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
;  79 | GENERIC* t;     /* temporary node */                                   
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |78| 
        sti       ar2,*+fp(1)           ; |78| 
	.line	5
;----------------------------------------------------------------------
;  81 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
;  83 | if (l->n>0)                                                            
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *+ar0(2),r0           ; |83| 
        cmpi      0,r0                  ; |83| 
        ble       L15                   ; |83| 
;*      Branch Occurs to L15            ; |83| 
	.line	9
;----------------------------------------------------------------------
;  85 | if (p->next == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      r2,ar0
        ldiu      *+ar0(1),r0           ; |85| 
        cmpi      0,r0                  ; |85| 
        bne       L12                   ; |85| 
;*      Branch Occurs to L12            ; |85| 
	.line	10
;----------------------------------------------------------------------
;  86 | l->tail = p->prev;                                                     
;----------------------------------------------------------------------
        ldiu      r2,ar1
        ldiu      ar2,ar0
        ldiu      *ar1,r0               ; |86| 
        sti       r0,*+ar0(1)           ; |86| 
L12:        
	.line	12
;----------------------------------------------------------------------
;  88 | t               = (GENERIC*)p->next;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |88| 
        ldiu      *+ar0(1),r0           ; |88| 
        sti       r0,*+fp(3)            ; |88| 
	.line	13
;----------------------------------------------------------------------
;  89 | t->prev = (int*) p->prev;                                              
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldiu      r0,ar0
        ldiu      *ar1,r0               ; |89| 
        sti       r0,*ar0               ; |89| 
	.line	15
;----------------------------------------------------------------------
;  91 | if (p->prev == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |91| 
        ldiu      *ar0,r0               ; |91| 
        cmpi      0,r0                  ; |91| 
        bne       L14                   ; |91| 
;*      Branch Occurs to L14            ; |91| 
	.line	16
;----------------------------------------------------------------------
;  92 | l->head = p->next;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |92| 
        ldiu      *+ar0(1),r0           ; |92| 
        sti       r0,*ar1               ; |92| 
L14:        
	.line	18
;----------------------------------------------------------------------
;  94 | t               = (GENERIC*)p->prev;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |94| 
        ldiu      *ar0,r0               ; |94| 
        sti       r0,*+fp(3)            ; |94| 
	.line	19
;----------------------------------------------------------------------
;  95 | t->next = p->next;                                                     
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldiu      r0,ar0
        ldiu      *+ar1(1),r0           ; |95| 
        sti       r0,*+ar0(1)           ; |95| 
	.line	20
;----------------------------------------------------------------------
;  96 | p->next = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |96| 
        ldiu      0,r0                  ; |96| 
        sti       r0,*+ar0(1)           ; |96| 
	.line	21
;----------------------------------------------------------------------
;  97 | p->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |97| 
        sti       r0,*ar0               ; |97| 
	.line	23
;----------------------------------------------------------------------
;  99 | l->n--;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |99| 
        ldiu      1,r0                  ; |99| 
        subri     *+ar0(2),r0           ; |99| 
        sti       r0,*+ar0(2)           ; |99| 
L15:        
	.line	26
;----------------------------------------------------------------------
; 102 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	28
;----------------------------------------------------------------------
; 104 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |104| 
	.line	29
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |105| 
        ldiu      *fp,fp                ; |105| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |105| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	105,000000000h,3


	.sect	 "internal_RAM"

	.global	_List_Push
	.sym	_List_Push,_List_Push,46,2,0
	.func	120
;******************************************************************************
;* FUNCTION NAME: _List_Push                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar1,ar2,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_List_Push:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
;* r2    assigned to _p
	.sym	_p,2,24,17,32,.fake5
	.sym	_l,1,24,1,32,.fake4
	.sym	_p,2,24,1,32,.fake5
	.sym	_t,3,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
; 120 | BOOL List_Push(LIST *l, GENERIC *p)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 122 | GENERIC* t;                     /* temporary node */                   
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |121| 
        sti       ar2,*+fp(1)           ; |121| 
	.line	5
;----------------------------------------------------------------------
; 124 | if (p==(GENERIC*)0)     /* invalid node */                             
;----------------------------------------------------------------------
        ldiu      r2,r0
        cmpi      0,r0                  ; |124| 
        bne       L20                   ; |124| 
;*      Branch Occurs to L20            ; |124| 
	.line	6
;----------------------------------------------------------------------
; 125 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L25                   ; |125| 
	nop
	nop
        ldiu      0,r0                  ; |125| 
;*      Branch Occurs to L25            ; |125| 
L20:        
	.line	8
;----------------------------------------------------------------------
; 127 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
; 128 | p->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |128| 
        ldiu      0,r0                  ; |128| 
        sti       r0,*ar0               ; |128| 
	.line	10
;----------------------------------------------------------------------
; 129 | p->next = l->head;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |129| 
        ldiu      *+fp(2),ar1           ; |129| 
        ldiu      *ar0,r0               ; |129| 
        sti       r0,*+ar1(1)           ; |129| 
	.line	12
;----------------------------------------------------------------------
; 131 | if (l->head != NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |131| 
        ldiu      *ar0,r0               ; |131| 
        cmpi      0,r0                  ; |131| 
        beq       L22                   ; |131| 
;*      Branch Occurs to L22            ; |131| 
	.line	14
;----------------------------------------------------------------------
; 133 | t               = (GENERIC*)l->head;                                   
;----------------------------------------------------------------------
        ldiu      *ar0,r0               ; |133| 
        sti       r0,*+fp(3)            ; |133| 
	.line	15
;----------------------------------------------------------------------
; 134 | t->prev = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(2),r0            ; |134| 
        sti       r0,*ar0               ; |134| 
L22:        
	.line	18
;----------------------------------------------------------------------
; 137 | l->head = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |137| 
        ldiu      *+fp(2),r0            ; |137| 
        sti       r0,*ar0               ; |137| 
	.line	20
;----------------------------------------------------------------------
; 139 | if (l->tail == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |139| 
        ldiu      *+ar0(1),r0           ; |139| 
        cmpi      0,r0                  ; |139| 
        bne       L24                   ; |139| 
;*      Branch Occurs to L24            ; |139| 
	.line	21
;----------------------------------------------------------------------
; 140 | l->tail = (int*)p;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |140| 
        sti       r0,*+ar0(1)           ; |140| 
L24:        
	.line	23
;----------------------------------------------------------------------
; 142 | l->n++;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |142| 
        ldiu      1,r0                  ; |142| 
        addi      *+ar0(2),r0           ; |142| 
        sti       r0,*+ar0(2)           ; |142| 
	.line	24
;----------------------------------------------------------------------
; 143 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	26
;----------------------------------------------------------------------
; 145 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |145| 
L25:        
	.line	27
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |146| 
        ldiu      *fp,fp                ; |146| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |146| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	146,000000000h,3


	.sect	 "internal_RAM"

	.global	_List_Pop
	.sym	_List_Pop,_List_Pop,104,2,0,.fake5
	.func	160
;******************************************************************************
;* FUNCTION NAME: _List_Pop                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_List_Pop:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
	.sym	_l,1,24,1,32,.fake4
	.sym	_p,2,24,1,32,.fake5
	.sym	_t,3,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
; 160 | GENERIC* List_Pop(LIST *l)                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 162 | GENERIC* p;                                                            
; 163 | GENERIC* t;                                                            
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |161| 
	.line	6
;----------------------------------------------------------------------
; 165 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
; 167 | if (l->head != NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *ar0,r0               ; |167| 
        cmpi      0,r0                  ; |167| 
        beq       L30                   ; |167| 
;*      Branch Occurs to L30            ; |167| 
	.line	10
;----------------------------------------------------------------------
; 169 | p               = (GENERIC*)l->head;                                   
;----------------------------------------------------------------------
        ldiu      *ar0,r0               ; |169| 
        sti       r0,*+fp(2)            ; |169| 
	.line	11
;----------------------------------------------------------------------
; 170 | l->n--;                                                                
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |170| 
        subri     *+ar0(2),r0           ; |170| 
        sti       r0,*+ar0(2)           ; |170| 
	.line	12
;----------------------------------------------------------------------
; 171 | l->head = p->next;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar1           ; |171| 
        ldiu      *+fp(1),ar0           ; |171| 
        ldiu      *+ar1(1),r0           ; |171| 
        sti       r0,*ar0               ; |171| 
	.line	13
;----------------------------------------------------------------------
; 172 | p->next = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |172| 
        ldiu      0,r0                  ; |172| 
        sti       r0,*+ar0(1)           ; |172| 
	.line	14
;----------------------------------------------------------------------
; 173 | p->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |173| 
        sti       r0,*ar0               ; |173| 
	.line	15
;----------------------------------------------------------------------
; 174 | t               = (GENERIC*) p->next;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |174| 
        ldiu      *+ar0(1),r0           ; |174| 
        sti       r0,*+fp(3)            ; |174| 
	.line	16
;----------------------------------------------------------------------
; 175 | t->prev = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      0,r0                  ; |175| 
        sti       r0,*ar0               ; |175| 
	.line	18
;----------------------------------------------------------------------
; 177 | if (l->head == NULL_PTR)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |177| 
        ldiu      *ar0,r0               ; |177| 
        cmpi      0,r0                  ; |177| 
        bne       L31                   ; |177| 
;*      Branch Occurs to L31            ; |177| 
	.line	19
;----------------------------------------------------------------------
; 178 | l->tail = NULL_PTR;                                                    
; 180 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |178| 
        sti       r0,*+ar0(1)           ; |178| 
        bu        L31                   ; |159| 
;*      Branch Occurs to L31            ; |159| 
L30:        
	.line	22
;----------------------------------------------------------------------
; 181 | p = (GENERIC*) NULL_PTR;                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |181| 
        sti       r0,*+fp(2)            ; |181| 
L31:        
	.line	24
;----------------------------------------------------------------------
; 183 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	26
;----------------------------------------------------------------------
; 185 | return p;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |185| 
	.line	27
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |186| 
        ldiu      *fp,fp                ; |186| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |186| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	186,000000000h,3


	.sect	 "internal_RAM"

	.global	_List_Init
	.sym	_List_Init,_List_Init,46,2,0
	.func	200
;******************************************************************************
;* FUNCTION NAME: _List_Init                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2                                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_List_Init:
;* ar2   assigned to _l
	.sym	_l,10,24,17,32,.fake4
	.sym	_l,1,24,1,32,.fake4
	.line	1
;----------------------------------------------------------------------
; 200 | BOOL List_Init(LIST *l)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |201| 
	.line	3
;----------------------------------------------------------------------
; 202 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 204 | l->head = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      0,r0                  ; |204| 
        sti       r0,*ar0               ; |204| 
	.line	6
;----------------------------------------------------------------------
; 205 | l->tail = NULL_PTR;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |205| 
        sti       r0,*+ar0(1)           ; |205| 
	.line	7
;----------------------------------------------------------------------
; 206 | l->n = 0;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |206| 
        sti       r0,*+ar0(2)           ; |206| 
	.line	9
;----------------------------------------------------------------------
; 208 | GIEP;                                                                  
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
	.endfunc	209,000000000h,1


