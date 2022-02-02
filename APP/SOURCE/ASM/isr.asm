;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Wed Feb  2 11:34:29 2022                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_BK4.AAA 
	.file	"isr.c"
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
	.file	"Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\BRANCH.H"
		.sect "branch_table"	
		.global _c_int00	
		.global _c_XINT0	
		.global _c_RINT0	
		.global _c_TINT0	
		.global _c_TINT1	
		.global _c_INT0		
		.global _c_INT1		
		.global _c_INT2		
		.global _c_INT3		
		.global _c_SPURINT	
		.global _XINT0		
		.global _RINT0		
		.global _TINT0		
		.global _TINT1		
		.global _INT0		
		.global _INT1		
		.global _INT2		
		.global _INT3		
_INT0	BR _c_INT0			
_INT1	BR _c_INT1			
_INT2	BR _c_INT2			
_INT3	BR _c_INT3			
_XINT0	BR _c_XINT0			
_RINT0	BR _c_RINT0			
		BR _c_SPURINT		
		BR _c_SPURINT		
_TINT0	BR _c_TINT0			
_TINT1	BR _c_TINT1			
_DINT	BR _c_SPURINT		
		.space	20			
_TRAPO						
		.loop 28			
		BR _c_SPURINT		
		.endloop			
		.space 4			
		.sect "application_vector"	
		.word _c_int00		
	.file	"isr.c"
	.sect	 "interrupt_routines"

	.global	_c_XINT0
	.sym	_c_XINT0,_c_XINT0,32,2,0
	.func	48
;******************************************************************************
;* FUNCTION NAME: _c_XINT0                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 1 SOE = 3 words          *
;******************************************************************************
_c_XINT0:
	.line	1
;----------------------------------------------------------------------
;  48 | void c_XINT0(void){}                                                   
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	48,010000000h,0


	.sect	 "interrupt_routines"

	.global	_c_RINT0
	.sym	_c_RINT0,_c_RINT0,32,2,0
	.func	64
;******************************************************************************
;* FUNCTION NAME: _c_RINT0                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 1 SOE = 3 words          *
;******************************************************************************
_c_RINT0:
	.line	1
;----------------------------------------------------------------------
;  64 | void c_RINT0(void){}                                                   
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	64,010000000h,0


	.sect	 "interrupt_routines"

	.global	_c_INT0
	.sym	_c_INT0,_c_INT0,32,2,0
	.func	94
;******************************************************************************
;* FUNCTION NAME: _c_INT0                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,st                                       *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,rs,re,rc,pc                      *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 26 SOE = 28 words        *
;******************************************************************************
_c_INT0:
	.line	1
;----------------------------------------------------------------------
;  94 | void c_INT0(void)                                                      
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
;  96 | DISABLE_EXTINT0;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |96| 
        ldiu      254,r0                ; |96| 
        and3      r0,*ar0,r0            ; |96| 
        sti       r0,*ar0               ; |96| 
	pop		ST			
	.line	5
;----------------------------------------------------------------------
;  98 | Process_UINT(1);        /* HANDLE COM2/OIT PORT - IDEC   */            
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |98| 
        ldiu      1,ar2                 ; |98| 
        callu     r0                    ; far call to _Process_UINT	; |98| 
                                        ; |98| Far Call Occurs
	.line	6
;----------------------------------------------------------------------
;  99 | Process_UINT(0);        /* HANDLE COM1 PORT             - MODBUS */    
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |99| 
        ldiu      0,ar2                 ; |99| 
        callu     r0                    ; far call to _Process_UINT	; |99| 
                                        ; |99| Far Call Occurs
	.line	8
;----------------------------------------------------------------------
; 101 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |101| 
        ldiu      *ar0,r0               ; |101| 
        cmpi      0,r0                  ; |101| 
        beq       L9                    ; |101| 
;*      Branch Occurs to L9             ; |101| 
	.line	10
;----------------------------------------------------------------------
; 103 | ENABLE_EXTINT0;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |103| 
        ldiu      1,r0                  ; |103| 
        or3       r0,*ar0,r0            ; |103| 
        sti       r0,*ar0               ; |103| 
	pop		ST			
	.line	12
;----------------------------------------------------------------------
; 105 | return;                                                                
;----------------------------------------------------------------------
        bu        L10                   ; |105| 
;*      Branch Occurs to L10            ; |105| 
L9:        
	.line	15
;----------------------------------------------------------------------
; 108 | Process_UINT(6);        /* HANDLE OIT PORT                      */     
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      6,ar2                 ; |108| 
        ldiu      @CL2,r0               ; |108| 
        callu     r0                    ; far call to _Process_UINT	; |108| 
                                        ; |108| Far Call Occurs
	.line	16
;----------------------------------------------------------------------
; 109 | Process_UINT(7);        /* HANDLE PDI PORT                      */     
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |109| 
        ldiu      7,ar2                 ; |109| 
        callu     r0                    ; far call to _Process_UINT	; |109| 
                                        ; |109| Far Call Occurs
	.line	17
;----------------------------------------------------------------------
; 110 | Process_UINT(3);        /* HANDLE COM4 PORT                     */     
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |110| 
        ldiu      3,ar2                 ; |110| 
        callu     r0                    ; far call to _Process_UINT	; |110| 
                                        ; |110| Far Call Occurs
	.line	18
;----------------------------------------------------------------------
; 111 | Process_UINT(2);        /* HANDLE COM3 PORT                     */     
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |111| 
        ldiu      2,ar2                 ; |111| 
        callu     r0                    ; far call to _Process_UINT	; |111| 
                                        ; |111| Far Call Occurs
	.line	19
;----------------------------------------------------------------------
; 112 | Process_UINT(5);        /* HANDLE IRDA (USB) PORT       */             
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |112| 
        ldiu      5,ar2                 ; |112| 
        callu     r0                    ; far call to _Process_UINT	; |112| 
                                        ; |112| Far Call Occurs
	.line	20
;----------------------------------------------------------------------
; 113 | Process_UINT(4);        /* HANDLE HART PORT                     */     
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      4,ar2                 ; |113| 
        ldiu      @CL2,r0               ; |113| 
        callu     r0                    ; far call to _Process_UINT	; |113| 
                                        ; |113| Far Call Occurs
	.line	22
;----------------------------------------------------------------------
; 115 | ENABLE_EXTINT0;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |115| 
        ldiu      1,r0                  ; |115| 
        or3       r0,*ar0,r0            ; |115| 
        sti       r0,*ar0               ; |115| 
	pop		ST			
L10:        
	.line	23
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	116,0103f07ffh,0


	.sect	 "interrupt_routines"

	.global	_c_INT1
	.sym	_c_INT1,_c_INT1,32,2,0
	.func	132
;******************************************************************************
;* FUNCTION NAME: _c_INT1                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,fp,ar4,ar5,ir0,ir1,*
;*                        st,rs,re,rc                                         *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ar4,ar5,ir0,ir1,bk,sp,rs,re,rc,pc           *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 28 SOE = 38 words        *
;******************************************************************************
_c_INT1:
	.sym	_i,1,4,1,32
	.sym	_p,2,52,1,96,,3
	.sym	_r,5,11,1,64
	.sym	_v,7,24,1,32,.fake6
	.sym	_ui,8,14,1,32
	.line	1
;----------------------------------------------------------------------
; 132 | void c_INT1(void)                                                      
; 137 | int i;                  /* flow computer index */                      
; 138 | int p[FCMAX];   /* pulse data */                                       
; 139 | long double r;  /* pulses per unit */   //INCORRECT, this variable is r
;     | eused...                                                               
; 140 | VAR* v;                                                                
; 141 | unsigned int ui;                                                       
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        addi      8,sp
        push      dp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      ar4
        push      ar5
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	12
;----------------------------------------------------------------------
; 143 | if (SA) return;                                                        
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |143| 
        ldiu      *ar0,r0               ; |143| 
        cmpi      0,r0                  ; |143| 
        bne       L28                   ; |143| 
;*      Branch Occurs to L28            ; |143| 
	.line	14
;----------------------------------------------------------------------
; 145 | _GIEP;                                                                 
; 146 | //Xilinx registers?                                                    
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	16
;----------------------------------------------------------------------
; 147 | p[0] = ((*XREG12 & 0xFF)<<8) | (*XREG11 & 0xFF);                       
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      fp,ar0                ; |147| 
        ldiu      255,r0                ; |147| 
        ldiu      @CL5,ar1              ; |147| 
        ldiu      255,r1                ; |147| 
        ldp       @CL4,DP
        addi      2,ar0                 ; |147| 
        and3      r0,*ar1,r0            ; |147| 
        ldiu      @CL4,ar2              ; |147| 
        ash       8,r0                  ; |147| 
        and3      r1,*ar2,r1            ; |147| 
        or3       r0,r1,r0              ; |147| 
        sti       r0,*ar0               ; |147| 
	.line	17
;----------------------------------------------------------------------
; 148 | p[1] = ((*XREG14 & 0xFF)<<8) | (*XREG13 & 0xFF);                       
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar2              ; |148| 
        ldp       @CL6,DP
        ldiu      @CL6,ar1              ; |148| 
        ldiu      fp,ar0                ; |148| 
        ldiu      255,r1                ; |148| 
        ldiu      255,r0                ; |148| 
        addi      3,ar0                 ; |148| 
        and3      r0,*ar2,r0            ; |148| 
        and3      r1,*ar1,r1            ; |148| 
        ash       8,r0                  ; |148| 
        or3       r0,r1,r0              ; |148| 
        sti       r0,*ar0               ; |148| 
	.line	18
;----------------------------------------------------------------------
; 149 | p[2] = ((*XREG16 & 0xFF)<<8) | (*XREG15 & 0xFF);                       
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar2              ; |149| 
        ldp       @CL8,DP
        ldiu      @CL8,ar1              ; |149| 
        ldiu      255,r0                ; |149| 
        and3      r0,*ar2,r0            ; |149| 
        ldiu      255,r1                ; |149| 
        ldiu      fp,ar0                ; |149| 
        ash       8,r0                  ; |149| 
        and3      r1,*ar1,r1            ; |149| 
        addi      4,ar0                 ; |149| 
        or3       r0,r1,r0              ; |149| 
        sti       r0,*ar0               ; |149| 
	.line	19
;----------------------------------------------------------------------
; 150 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	21
;----------------------------------------------------------------------
; 152 | for (i=0;i<FCMAX;i++)                                                  
; 155 |         //This part calculates how many pulses since the last routine c
;     | all                                                                    
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |152| 
        sti       r0,*+fp(1)            ; |152| 
        cmpi      3,r0                  ; |152| 
        bge       L28                   ; |152| 
;*      Branch Occurs to L28            ; |152| 
L14:        
	.line	25
;----------------------------------------------------------------------
; 156 | if (p[i] >= FC[i].PULSE)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |156| 
        ldiu      fp,ar0                ; |156| 
        ldp       @CL10,DP
        ldiu      ir0,ir1               ; |156| 
        addi      2,ar0                 ; |156| 
        ldiu      @CL10,ar1             ; |156| 
        mpyi      1336,ir0              ; |156| 
        cmpi3     *+ar1(ir0),*+ar0(ir1) ; |156| 
        blt       L16                   ; |156| 
;*      Branch Occurs to L16            ; |156| 
	.line	26
;----------------------------------------------------------------------
; 157 | r = (p[i] - FC[i].PULSE) * FC[i].PULSE_FACTOR;                         
; 158 | else                                                                   
;----------------------------------------------------------------------
        ldiu      ir1,ir0
        ldiu      fp,ar0                ; |157| 
        ldiu      ir0,r1                ; |157| 
        ldp       @CL10,DP
        ldiu      r1,r0                 ; |157| 
        ldiu      @CL10,ar1             ; |157| 
        ldiu      255,r2                ; |157| 
        ldp       @CL11,DP
        addi      2,ar0                 ; |157| 
        mpyi      1336,ir0              ; |157| 
        ldiu      @CL11,ar2             ; |157| 
        mpyi      1336,r1               ; |157| 
        ldiu      r0,ir1                ; |157| 
        subi3     *+ar1(ir0),*+ar0(ir1),r0 ; |157| 
        ldiu      r1,ir0                ; |157| 
        float     r0,f0                 ; |157| 
        mpyf3     *+ar2(ir0),f0,f0      ; |157| 
        andn      r2,f0                 ; |157| Bit mask for F32/F40 conversion
        stf       f0,*+fp(5)            ; |157| Store high half
        sti       r0,*+fp(6)            ; |157| Store low half
        bu        L17                   ; |131| 
;*      Branch Occurs to L17            ; |131| 
L16:        
	.line	28
;----------------------------------------------------------------------
; 159 | r = ((65536.0 - FC[i].PULSE) + p[i]) * FC[i].PULSE_FACTOR;             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |159| 
        ldp       @CL10,DP
        ldiu      fp,ar0                ; |159| 
        ldiu      ir0,r0                ; |159| 
        ldiu      ir0,ir1               ; |159| 
        ldiu      @CL10,ar1             ; |159| 
        ldp       @CL11,DP
        mpyi      1336,ir0              ; |159| 
        addi      2,ar0                 ; |159| 
        ldiu      @CL11,ar2             ; |159| 
        ldiu      255,r2                ; |159| 
        float     *+ar1(ir0),f1         ; |159| 
        mpyi      1336,ir1              ; |159| 
        ldp       @CL12,DP
        ldiu      r0,ir0                ; |159| 
        subrf     @CL12,f1              ; |159| 
        float     *+ar0(ir0),f0         ; |159| 
        addf3     f1,f0,f0              ; |159| 
        mpyf3     *+ar2(ir1),f0,f0      ; |159| 
        andn      r2,f0                 ; |159| Bit mask for F32/F40 conversion
        stf       f0,*+fp(5)            ; |159| Store high half
        sti       r0,*+fp(6)            ; |159| Store low half
L17:        
	.line	30
;----------------------------------------------------------------------
; 161 | FC[i].PULSE_DELTA = r;          //Number of pulses elapsed             
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |161| 40b float hi half
        ldiu      *+fp(1),ir0           ; |161| 
        ldp       @CL13,DP
        ldiu      *+fp(6),r0            ; |161| 40b float lo half
        mpyi      1336,ir0              ; |161| 
        ldfu      f0,f1                 ; |161| 40b float hi half
        ldiu      @CL13,ar0             ; |161| 
        negf      f1,f0                 ; |161| 
        fix       f0,r0                 ; |161| 
        fix       f1,r1                 ; |161| 
        negi      r0,r0                 ; |161| 
        ldile     r0,r1                 ; |161| 
        sti       r1,*+ar0(ir0)         ; |161| 
	.line	31
;----------------------------------------------------------------------
; 162 | FC[i].PULSE       = p[i];       //Like hitting "lap" on a stop watch   
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar1             ; |162| 
        ldiu      *+fp(1),ir0           ; |162| 
        ldiu      fp,ar0                ; |162| 
        ldiu      ir0,ir1               ; |162| 
        addi      2,ar0                 ; |162| 
        mpyi      1336,ir0              ; |162| 
        ldiu      *+ar0(ir1),r0         ; |162| 
        sti       r0,*+ar1(ir0)         ; |162| 
	.line	33
;----------------------------------------------------------------------
; 164 | if (!FC[i].enable_PULSE)                                               
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |164| 
        ldiu      *+fp(1),ir0           ; |164| 
        mpyi      1336,ir0              ; |164| 
        ldiu      *+ar0(ir0),r0         ; |164| 
        cmpi      0,r0                  ; |164| 
        beq       L27                   ; |164| 
;*      Branch Occurs to L27            ; |164| 
	.line	34
;----------------------------------------------------------------------
; 165 | continue;                                                              
; 167 | //Note: Experimentally verified max frequency is between 25kHz-50kHz   
;----------------------------------------------------------------------
	.line	37
;----------------------------------------------------------------------
; 168 | r = ((long double)FC[i].PULSE_DELTA/(long double)FC[i].PULSES_PER_ACCUM
;     | _UNIT);                                                                
; 170 | //variable 'r' is now the quantity of accum units since last call      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir1           ; |168| 
        ldp       @CL13,DP
        ldiu      ir1,ir0               ; |168| 
        ldiu      @CL13,ar1             ; |168| 
        mpyi      1336,ir0              ; |168| 
        ldp       @CL15,DP
        mpyi      1336,ir1              ; |168| 
        ldiu      @CL15,ar0             ; |168| 

        ldiu      *+ar0(ir0),r1         ; |168| 
||      ldiu      *+ar1(ir1),r0         ; |168| 

        float     r0,f0                 ; |168| 
        ldp       @CL16,DP
        float     r1,f1                 ; |168| 
        ldflt     @CL16,f2              ; |168| 
        ldilt     @CL16+1,r2            ; |168| 
        ldfge     0.0000000000e+00,f2   ; |168| 
        ldige     0,r2                  ; |168| 
        addf      f2,f1                 ; |168| High Precision ADD
        call      DIV_LD                ; |168| 
                                        ; |168| Call Occurs
        stf       f0,*+fp(5)            ; |168| Store high half
        sti       r0,*+fp(6)            ; |168| Store low half
	.line	40
;----------------------------------------------------------------------
; 171 | if (r < 0)                                                             
;----------------------------------------------------------------------
        ldp       @CL17+0,DP
        ldfu      @CL17+0,f0            ; |171| 40b float hi half
        ldfu      *+fp(5),f1            ; |171| 40b float hi half
        ldp       @CL17+1,DP
        ldiu      @CL17+1,r0            ; |171| 40b float lo half
        ldiu      *+fp(6),r1            ; |171| 40b float lo half
        cmpf      f0,f1                 ; |171| 
        bge       L20                   ; |171| 
;*      Branch Occurs to L20            ; |171| 
	.line	41
;----------------------------------------------------------------------
; 172 | r = 0;                                                                 
;----------------------------------------------------------------------
        ldp       @CL17+0,DP
        ldfu      @CL17+0,f0            ; |172| 40b float hi half
        ldp       @CL17+1,DP
        ldiu      @CL17+1,r0            ; |172| 40b float lo half
        stf       f0,*+fp(5)            ; |172| Store high half
        sti       r0,*+fp(6)            ; |172| Store low half
L20:        
	.line	47
;----------------------------------------------------------------------
; 178 | if (FC[i].use_totalizer.val)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |178| 
        ldp       @CL18,DP
        mpyi      1336,ir0              ; |178| 
        ldiu      @CL18,ar0             ; |178| 
        ldiu      *+ar0(ir0),r0         ; |178| 
        cmpi      0,r0                  ; |178| 
        beq       L23                   ; |178| 
;*      Branch Occurs to L23            ; |178| 
	.line	49
;----------------------------------------------------------------------
; 180 | if (!FC[i].enable_FLOW)                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |180| 
        ldp       @CL19,DP
        mpyi      1336,ir0              ; |180| 
        ldiu      @CL19,ar0             ; |180| 
        ldiu      *+ar0(ir0),r0         ; |180| 
        cmpi      0,r0                  ; |180| 
        beq       L27                   ; |180| 
;*      Branch Occurs to L27            ; |180| 
	.line	50
;----------------------------------------------------------------------
; 181 | continue;                                                              
; 183 | //store the number of pulses in PULSE_FREQ?? How is that a frequency?  
;----------------------------------------------------------------------
	.line	53
;----------------------------------------------------------------------
; 184 | VAR_Update(&FC[i].PULSE_FREQ, (long double)FC[i].PULSE_DELTA, 0, 0);   
; 186 | //add to total number of pulses? This variable isn't used anywhere else
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |184| 
        ldp       @CL13,DP
        ldiu      ar2,ir0               ; |184| 
        ldiu      @CL13,ar0             ; |184| 
        ldiu      0,rc                  ; |184| 
        mpyi      1336,ar2              ; |184| 
        ldp       @CL20,DP
        mpyi      1336,ir0              ; |184| 
        addi      @CL20,ar2             ; |184| Unsigned
        ldiu      *+ar0(ir0),r1         ; |184| 
        ldp       @CL21,DP
        float     r1,f2                 ; |184| 
        ldiu      @CL21,r0              ; |184| 
        ldiu      0,r3                  ; |184| 
        callu     r0                    ; far call to _VAR_Update	; |184| 
                                        ; |184| Far Call Occurs
	.line	56
;----------------------------------------------------------------------
; 187 | FC[i].PULSE_COUNTER += FC[i].PULSE_DELTA;                              
; 189 | //wrong         // Update quantity of accum units (volume/mass) since l
;     | ast call                                                               
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar1             ; |187| 
        ldiu      *+fp(1),ir0           ; |187| 
        ldiu      1250,ar0              ; |187| 
        ldiu      ir0,ir1               ; |187| 
        ldp       @CL22,DP
        mpyi      1336,ir0              ; |187| 
        mpyi      1336,ir1              ; |187| 
        addi      @CL22,ir0             ; |187| Unsigned
        addi3     *+ar1(ir1),*+ar0(ir0),r0 ; |187| Unsigned
        sti       r0,*+ar0(ir0)         ; |187| 
	.line	59
;----------------------------------------------------------------------
; 190 | VAR_Update(&FC[i].PULSE_TOTAL, FC[i].PULSE_TOTAL.calc_val+r, 0, 0);    
; 191 | // PULSE_TOTAL = PULSE_TOTAL + r;                                      
; 193 | // Update mass/volume flow rate -- apparently uses a period of 1 second
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |190| 
        ldiu      ar0,ar2               ; |190| 
        ldp       @CL24,DP
        mpyi      1336,ar0              ; |190| 
        addi      @CL24,ar0             ; |190| Unsigned
        mpyi      1336,ar2              ; |190| 
        ldp       @CL23,DP
        ldiu      0,rc                  ; |190| 
        addi      @CL23,ar2             ; |190| Unsigned
        ldfu      *+fp(5),f2            ; |190| 40b float hi half
        ldfu      *ar0,f1               ; |190| 40b float hi half
        ldp       @CL21,DP
        ldiu      *+ar0,r1              ; |190| 40b float lo half
        ldiu      *+fp(6),r2            ; |190| 40b float lo half
        addf3     f1,f2,f2              ; |190| High Precision ADD
        ldiu      @CL21,r0              ; |190| 
        ldiu      0,r3                  ; |190| 
        callu     r0                    ; far call to _VAR_Update	; |190| 
                                        ; |190| Far Call Occurs
	.line	63
;----------------------------------------------------------------------
; 194 | VAR_Update(&FC[i].PULSE_FLOW, Time_Scale_Flow(r, FC[i].PULSE_TOTAL.clas
;     | s, FC[i].PULSE_TOTAL.calc_unit, FC[i].PULSE_FLOW.calc_unit), 0, 0);    
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      @CL27,ar0             ; |194| 
        ldp       @CL25,DP
        ldiu      @CL25,ar2             ; |194| 
        ldp       @CL26,DP
        ldiu      @CL26,ar1             ; |194| 
        ldiu      *+fp(1),ir0           ; |194| 
        ldiu      ir0,r0                ; |194| 
        ldiu      r0,ir1
        mpyi      1336,ir0              ; |194| 
        mpyi      1336,r0               ; |194| 
        ldfu      *+fp(5),f2            ; |194| 40b float hi half
        mpyi      1336,ir1              ; |194| 
        ldp       @CL29,DP
        ldiu      *+ar0(ir0),rc         ; |194| 
        ldiu      @CL29,r1              ; |194| 
        ldiu      r0,ir0                ; |194| 
        ldiu      *+fp(6),r2            ; |194| 40b float lo half

        ldiu      *+ar2(ir0),r0         ; |194| 
||      ldiu      *+ar1(ir1),r3         ; |194| 

        ldiu      r0,ar2                ; |194| 
        callu     r1                    ; far call to _Time_Scale_Flow	; |194| 
                                        ; |194| Far Call Occurs
        ldfu      f0,f2                 ; |194| High precision move
        ldiu      *+fp(1),ar2           ; |194| 
        ldp       @CL21,DP
        ldiu      @CL21,r0              ; |194| 
        ldp       @CL28,DP
        mpyi      1336,ar2              ; |194| 
        addi      @CL28,ar2             ; |194| Unsigned
        ldiu      0,rc                  ; |194| 
        ldiu      0,r3                  ; |194| 
        callu     r0                    ; far call to _VAR_Update	; |194| 
                                        ; |194| Far Call Occurs
	.line	65
;----------------------------------------------------------------------
; 196 | _GIEP;                                                                 
; 198 | //Update the generalized "total flow" variable                         
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	68
;----------------------------------------------------------------------
; 199 | VAR_Update(&FC[i].FLOW_TOTAL, Time_Scale_Flow(r, FC[i].PULSE_TOTAL.clas
;     | s, FC[i].PULSE_TOTAL.calc_unit, FC[i].FLOW_TOTAL.calc_unit), 0, 0);    
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |199| 
        ldiu      *+fp(1),ir0           ; |199| 
        ldp       @CL25,DP
        ldiu      ir0,r0                ; |199| 
        ldiu      @CL25,ar1             ; |199| 
        ldp       @CL26,DP
        ldiu      ir0,ir1               ; |199| 
        ldiu      @CL26,ar2             ; |199| 
        mpyi      1336,ir0              ; |199| 
        mpyi      1336,ir1              ; |199| 
        mpyi      1336,r0               ; |199| 
        ldiu      *+ar0(ir0),rc         ; |199| 
        ldp       @CL29,DP
        ldfu      *+fp(5),f2            ; |199| 40b float hi half
        ldiu      r0,ir0                ; |199| 
        ldiu      *+fp(6),r2            ; |199| 40b float lo half

        ldiu      *+ar2(ir0),r3         ; |199| 
||      ldiu      *+ar1(ir1),r0         ; |199| 

        ldiu      @CL29,r1              ; |199| 
        ldiu      r0,ar2                ; |199| 
        callu     r1                    ; far call to _Time_Scale_Flow	; |199| 
                                        ; |199| Far Call Occurs
        ldiu      *+fp(1),ar2           ; |199| 
        ldp       @CL21,DP
        ldiu      @CL21,r1              ; |199| 
        mpyi      1336,ar2              ; |199| 
        ldp       @CL31,DP
        ldiu      0,rc                  ; |199| 
        addi      @CL31,ar2             ; |199| Unsigned
        ldiu      0,r3                  ; |199| 
        ldfu      f0,f2                 ; |199| High precision move
        callu     r1                    ; far call to _VAR_Update	; |199| 
                                        ; |199| Far Call Occurs
	.line	69
;----------------------------------------------------------------------
; 200 | Accumulate(&FC[i].FLOW_TOTAL);                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |200| 
        ldp       @CL31,DP
        mpyi      1336,ar2              ; |200| 
        addi      @CL31,ar2             ; |200| Unsigned
        ldp       @CL32,DP
        ldiu      @CL32,r0              ; |200| 
        callu     r0                    ; far call to _Accumulate	; |200| 
                                        ; |200| Far Call Occurs
	.line	71
;----------------------------------------------------------------------
; 202 | GIEP;                                                                  
; 204 | else //if pulse input is NOT total flow (no totalizer)                 
; 205 | {//new pulse code here!                                                
;----------------------------------------------------------------------
	pop		ST			
        bu        L27                   ; |131| 
;*      Branch Occurs to L27            ; |131| 
L23:        
	.line	76
;----------------------------------------------------------------------
; 207 | if (!FC[i].enable_PULSE)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |207| 
        ldp       @CL14,DP
        mpyi      1336,ir0              ; |207| 
        ldiu      @CL14,ar0             ; |207| 
        ldiu      *+ar0(ir0),r0         ; |207| 
        cmpi      0,r0                  ; |207| 
        beq       L27                   ; |207| 
;*      Branch Occurs to L27            ; |207| 
	.line	77
;----------------------------------------------------------------------
; 208 | continue;                                                              
;----------------------------------------------------------------------
	.line	79
;----------------------------------------------------------------------
; 210 | v = HART_Lookup(FC[i].pulse_v.val, &ui, (int*)&HART_DVINPUT_Table);    
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      *+fp(1),ir0           ; |210| 
        ldiu      fp,r2                 ; |210| 
        ldiu      @CL33,ar0             ; |210| 
        mpyi      1336,ir0              ; |210| 
        ldp       @CL35,DP
        ldiu      *+ar0(ir0),ar2        ; |210| 
        ldiu      @CL35,r0              ; |210| 
        ldp       @CL34,DP
        addi      8,r2                  ; |210| 
        ldiu      @CL34,r3              ; |210| 
        callu     r0                    ; far call to _HART_Lookup	; |210| 
                                        ; |210| Far Call Occurs
        sti       r0,*+fp(7)            ; |210| 
	.line	81
;----------------------------------------------------------------------
; 212 | if ((v!=(VAR*)0) && (v!=&REG_DUMMY))                                   
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |212| 
        beq       L27                   ; |212| 
;*      Branch Occurs to L27            ; |212| 
        ldp       @CL36,DP
        cmpi      @CL36,r0              ; |212| 
        beq       L27                   ; |212| 
;*      Branch Occurs to L27            ; |212| 
	.line	83
;----------------------------------------------------------------------
; 214 | VAR_Update(&FC[i].pulse_VALUE,(float)r,0,0);                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |214| 
        ldfu      *+fp(5),f0            ; |214| 40b float hi half
        ldp       @CL37,DP
        ldiu      255,r3                ; |214| 
        mpyi      1336,ar2              ; |214| 
        ldiu      0,rc                  ; |214| 
        ldiu      *+fp(6),r0            ; |214| 40b float lo half
        addi      @CL37,ar2             ; |214| Unsigned
        rnd       f0,f0                 ; |214| Demote to low precision
        ldp       @CL21,DP
        ldfu      f0,f2                 ; |214| Move F32 into F40 for CONV
        ldiu      @CL21,r1              ; |214| 
        andn      r3,f2                 ; |214| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |214| 
        callu     r1                    ; far call to _VAR_Update	; |214| 
                                        ; |214| Far Call Occurs
	.line	84
;----------------------------------------------------------------------
; 215 | VAR_Update(v, Convert(v->class, FC[i].pulse_VALUE.unit, v->unit, FC[i].
;     | pulse_VALUE.calc_val, 0, v->aux), 0,1);                                
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar4             ; |215| 
        ldp       @CL39,DP
        ldiu      *+fp(1),ar1           ; |215| 
        ldiu      *+fp(7),ar5           ; |215| 
        ldiu      ar1,ir0               ; |215| 
        ldiu      ar5,ar0               ; |215| 
        mpyi      1336,ar1              ; |215| 
        addi      @CL39,ar1             ; |215| Unsigned
        ldiu      ar0,ar2               ; |215| 
        mpyi      1336,ir0              ; |215| 
        ldp       @CL40,DP
        ldiu      *+ar5(13),rc          ; |215| 
        ldiu      *+ar0(6),re           ; |215| 
        ldiu      *+ar2(15),ar2         ; |215| 
        ldfu      *ar1,f2               ; |215| 40b float hi half
        ldiu      @CL40,r0              ; |215| 

        ldiu      *+ar1,r2              ; |215| 
||      ldiu      *+ar4(ir0),r3         ; |215| 

        ldiu      0,rs                  ; |215| 
        callu     r0                    ; far call to _Convert	; |215| 
                                        ; |215| Far Call Occurs
        ldp       @CL21,DP
        ldiu      @CL21,r1              ; |215| 
        ldfu      f0,f2                 ; |215| High precision move
        ldiu      0,r3                  ; |215| 
        ldiu      *+fp(7),ar2           ; |215| 
        ldiu      1,rc                  ; |215| 
        callu     r1                    ; far call to _VAR_Update	; |215| 
                                        ; |215| Far Call Occurs
L27:        
	.line	21
        ldiu      1,r0                  ; |152| 
        addi      *+fp(1),r0            ; |152| 
        sti       r0,*+fp(1)            ; |152| 
        cmpi      3,r0                  ; |152| 
        blt       L14                   ; |152| 
;*      Branch Occurs to L14            ; |152| 
L28:        
	.line	89
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       bk
        pop       ar5
        pop       ar4
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       dp
                                        ; Unallocate the Frame
        subi      8,sp
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	220,0103f37ffh,8


	.sect	 "interrupt_routines"

	.global	_c_INT2
	.sym	_c_INT2,_c_INT2,32,2,0
	.func	237
;******************************************************************************
;* FUNCTION NAME: _c_INT2                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,rs,re,rc,pc                      *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 26 SOE = 28 words        *
;******************************************************************************
_c_INT2:
	.line	1
;----------------------------------------------------------------------
; 237 | void c_INT2(void)                                                      
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
; 239 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |239| 
        ldiu      *ar0,r0               ; |239| 
        cmpi      0,r0                  ; |239| 
        beq       L32                   ; |239| 
;*      Branch Occurs to L32            ; |239| 
	.line	4
;----------------------------------------------------------------------
; 240 | return;                                                                
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 242 | Read_ADC_FIFO();                                                       
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |242| 
        callu     r0                    ; far call to _Read_ADC_FIFO	; |242| 
                                        ; |242| Far Call Occurs
	.line	8
;----------------------------------------------------------------------
; 244 | DISABLE_INT2;                                                          
;----------------------------------------------------------------------
	andn	0004h, IE
L32:        
	.line	9
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	245,0103f07ffh,0


	.sect	 "interrupt_routines"

	.global	_c_INT3
	.sym	_c_INT3,_c_INT3,32,2,0
	.func	261
;******************************************************************************
;* FUNCTION NAME: _c_INT3                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,r2,ar0,st                               *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f5,r5,ar0,bk,sp,rc,pc       *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 14 SOE = 20 words        *
;******************************************************************************
_c_INT3:
	.sym	_FREQ_COUNTER,1,14,1,32
	.sym	_tmp,2,14,1,32
	.sym	_FREQUENCY,3,11,1,64
	.line	1
;----------------------------------------------------------------------
; 261 | void c_INT3(void)                                                      
; 263 | unsigned int FREQ_COUNTER;      /* holds raw frequency */              
; 264 | unsigned int tmp;                       /* calculated aux frequency */ 
; 265 | long double FREQUENCY;          /* final frequency */                  
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        addi      4,sp
        push      dp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      rc
        push      r5
        pushf     f5
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	7
;----------------------------------------------------------------------
; 267 | if ((VT_SELECT>=VTMAX) || (VT_SELECT<0))                               
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |267| 
        ldiu      *ar0,r0               ; |267| 
        cmpi      4,r0                  ; |267| 
        bge       L36                   ; |267| 
;*      Branch Occurs to L36            ; |267| 
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |267| 
        ldiu      *ar0,r0               ; |267| 
        cmpi      0,r0                  ; |267| 
        bge       L37                   ; |267| 
;*      Branch Occurs to L37            ; |267| 
L36:        
	.line	9
;----------------------------------------------------------------------
; 269 | VT_SELECT        = 0;                                                  
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |269| 
        ldiu      0,r0                  ; |269| 
        sti       r0,*ar0               ; |269| 
	.line	10
;----------------------------------------------------------------------
; 270 | GATE_TIMEOUT = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      @CL43,ar0             ; |270| 
        ldiu      1,r0                  ; |270| 
        sti       r0,*ar0               ; |270| 
	.line	12
;----------------------------------------------------------------------
; 272 | return;                                                                
;----------------------------------------------------------------------
        bu        L41                   ; |272| 
;*      Branch Occurs to L41            ; |272| 
L37:        
	.line	15
;----------------------------------------------------------------------
; 275 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	18
;----------------------------------------------------------------------
; 278 | FREQ_COUNTER  = *XREG10 & 0xFF;                                        
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      @CL44,ar0             ; |278| 
        ldiu      255,r0                ; |278| 
        and3      r0,*ar0,r0            ; |278| 
        sti       r0,*+fp(1)            ; |278| 
	.line	19
;----------------------------------------------------------------------
; 279 | FREQ_COUNTER  = FREQ_COUNTER <<  8;                                    
;----------------------------------------------------------------------
        ash       8,r0                  ; |279| 
        sti       r0,*+fp(1)            ; |279| 
	.line	20
;----------------------------------------------------------------------
; 280 | FREQ_COUNTER |= *XREG9 & 0xFF;                                         
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      @CL45,ar0             ; |280| 
        ldiu      255,r0                ; |280| 
        and3      r0,*ar0,r0            ; |280| 
        or        *+fp(1),r0            ; |280| 
        sti       r0,*+fp(1)            ; |280| 
	.line	21
;----------------------------------------------------------------------
; 281 | FREQ_COUNTER  = FREQ_COUNTER <<  8;                                    
;----------------------------------------------------------------------
        ash       8,r0                  ; |281| 
        sti       r0,*+fp(1)            ; |281| 
	.line	22
;----------------------------------------------------------------------
; 282 | FREQ_COUNTER |= *XREG8 & 0xFF;                                         
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,ar0             ; |282| 
        ldiu      255,r0                ; |282| 
        and3      r0,*ar0,r0            ; |282| 
        or        *+fp(1),r0            ; |282| 
        sti       r0,*+fp(1)            ; |282| 
	.line	23
;----------------------------------------------------------------------
; 283 | FREQ_COUNTER  = FREQ_COUNTER <<  8;                                    
;----------------------------------------------------------------------
        ash       8,r0                  ; |283| 
        sti       r0,*+fp(1)            ; |283| 
	.line	24
;----------------------------------------------------------------------
; 284 | FREQ_COUNTER |= *XREG7 & 0xFF;                                         
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |284| 
        ldiu      255,r0                ; |284| 
        and3      r0,*ar0,r0            ; |284| 
        or        *+fp(1),r0            ; |284| 
        sti       r0,*+fp(1)            ; |284| 
	.line	27
;----------------------------------------------------------------------
; 287 | if (DIO_AUX_FREQ_MODE)                                                 
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,ar0             ; |287| 
        ldiu      *ar0,r0               ; |287| 
        cmpi      0,r0                  ; |287| 
        beq       L39                   ; |287| 
;*      Branch Occurs to L39            ; |287| 
	.line	28
;----------------------------------------------------------------------
; 288 | tmp = FREQ_COUNTER * 4;                                                
; 289 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |288| 
        ash       2,r0                  ; |288| 
        sti       r0,*+fp(2)            ; |288| 
        bu        L40                   ; |260| 
;*      Branch Occurs to L40            ; |260| 
L39:        
	.line	30
;----------------------------------------------------------------------
; 290 | tmp = FREQ_COUNTER * PRESCALE;                                         
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldiu      @CL49,ar0             ; |290| 
        ldp       @CL50,DP
        float     *+fp(1),f0            ; |290| 
        ldflt     @CL50,f1              ; |290| 
        ldfge     0.0000000000e+00,f1   ; |290| 
        ldp       @CL51,DP
        addf3     f0,f1,f0              ; |290| 
        mpyf3     *ar0,f0,f1            ; |290| 
        cmpf      @CL51,f1              ; |290| 
        ldp       @CL50,DP
        ldflt     0.0000000000e+00,f0   ; |290| 
        ldfge     @CL50,f0              ; |290| 
        subrf     f1,f0                 ; |290| 
        fix       f0,r0                 ; |290| 
        sti       r0,*+fp(2)            ; |290| 
L40:        
	.line	32
;----------------------------------------------------------------------
; 292 | FREQUENCY                        = tmp;                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |292| 
        ldp       @CL16,DP
        float     r0,f1                 ; |292| 
        ldflt     @CL16,f0              ; |292| 
        ldilt     @CL16+1,r0            ; |292| 
        ldfge     0.0000000000e+00,f0   ; |292| 
        ldige     0,r0                  ; |292| 
        addf      f0,f1                 ; |292| High Precision ADD
        stf       f1,*+fp(3)            ; |292| Store high half
        sti       r1,*+fp(4)            ; |292| Store low half
	.line	33
;----------------------------------------------------------------------
; 293 | FREQUENCY                       /= GATE_TIME;                          
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldiu      @CL52,ar0             ; |293| 
        ldiu      255,r2                ; |293| 
        ldfu      *ar0,f0               ; |293| 
        ldfu      f0,f1                 ; |293| Move F32 into F40 for CONV
        ldfu      *+fp(3),f0            ; |293| 40b float hi half
        andn      r2,f1                 ; |293| Bit mask for F32/F40 conversion
        ldiu      *+fp(4),r0            ; |293| 40b float lo half
        call      DIV_LD                ; |293| 
                                        ; |293| Call Occurs
        stf       f0,*+fp(3)            ; |293| Store high half
        sti       r0,*+fp(4)            ; |293| Store low half
	.line	34
;----------------------------------------------------------------------
; 294 | FREQUENCY                       *= FREQ_FACTOR;                        
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      @CL53,ar0             ; |294| 
        ldfu      *ar0,f0               ; |294| 
        ldfu      f0,f1                 ; |294| Move F32 into F40 for CONV
        ldiu      255,r2                ; |294| 
        ldfu      *+fp(3),f0            ; |294| 40b float hi half
        andn      r2,f1                 ; |294| Bit mask for F32/F40 conversion
        ldiu      *+fp(4),r0            ; |294| 40b float lo half
        call      MPY_LD                ; |294| 
                                        ; |294| Call Occurs
	.line	35
;----------------------------------------------------------------------
; 295 | TMP_FREQ[VT_SELECT]  = FREQUENCY/1e6;                                  
;----------------------------------------------------------------------
        ldp       @CL55+0,DP
        ldfu      @CL55+0,f1            ; |295| 40b float hi half
        ldp       @CL55+1,DP
        ldiu      @CL55+1,r1            ; |295| 40b float lo half
        stf       f0,*+fp(3)            ; |295| Store high half
        sti       r0,*+fp(4)            ; |295| Store low half
        call      MPY_LD                ; |295| 
                                        ; |295| Call Occurs
        ldp       @CL42,DP
        ldiu      1,r1                  ; |295| 
        ldiu      @CL42,ar0             ; |295| 
        ldp       @CL54,DP
        ash3      r1,*ar0,ar0           ; |295| 
        addi      @CL54,ar0             ; |295| Unsigned
        stf       f0,*ar0               ; |295| Store high half
        sti       r0,*+ar0              ; |295| Store low half
	.line	36
;----------------------------------------------------------------------
; 296 | GATE_TIMEOUT             = TRUE;                        /* GATE timed o
;     | ut and is ready for reading */                                         
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      @CL43,ar0             ; |296| 
        ldiu      1,r0                  ; |296| 
        sti       r0,*ar0               ; |296| 
	.line	38
;----------------------------------------------------------------------
; 298 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L41:        
	.line	39
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       bk
        popf      f5
        pop       r5
        pop       rc
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       dp
                                        ; Unallocate the Frame
        subi      4,sp
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	299,0100c012fh,4


	.sect	 "interrupt_routines"

	.global	_c_TINT0
	.sym	_c_TINT0,_c_TINT0,32,2,0
	.func	319
;******************************************************************************
;* FUNCTION NAME: _c_TINT0                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,st                             *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 26 SOE = 31 words        *
;******************************************************************************
_c_TINT0:
	.sym	_p,1,24,1,32,.fake11
	.sym	_tmp,2,20,1,32
	.sym	_exec,3,14,1,32
	.line	1
;----------------------------------------------------------------------
; 319 | void c_TINT0(void)                                                     
; 321 | TPKT*   p;                                                             
; 322 | int*    tmp;                                                           
; 323 | BOOL    exec;                                                          
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        addi      3,sp
        push      dp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	7
;----------------------------------------------------------------------
; 325 | DISABLE_TINT0;                                                         
;----------------------------------------------------------------------
	andn	0100h, IE
	.line	8
;----------------------------------------------------------------------
; 326 | GIE;                                                                   
; 328 | while(1)                                                               
;----------------------------------------------------------------------
	or		2000h, ST	
	.line	12
;----------------------------------------------------------------------
; 330 | TIMER1_COUNTER[UART_MAX]++;                                            
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |330| 
        ldiu      1,r0                  ; |330| 
        addi      *+ar0(8),r0           ; |330| 
        sti       r0,*+ar0(8)           ; |330| 
	.line	14
;----------------------------------------------------------------------
; 332 | if(PORT[0].TMR_enabled)                                                
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |332| 
        ldiu      *ar0,r0               ; |332| 
        cmpi      0,r0                  ; |332| 
        beq       L47                   ; |332| 
;*      Branch Occurs to L47            ; |332| 
	.line	16
;----------------------------------------------------------------------
; 334 | if (TIMER1_COUNTER[0]<=0)                                              
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |334| 
        ldiu      *ar0,r0               ; |334| 
        cmpi      0,r0                  ; |334| 
        bgt       L46                   ; |334| 
;*      Branch Occurs to L46            ; |334| 
	.line	18
;----------------------------------------------------------------------
; 336 | PORT[0].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |336| 
        ldiu      0,r0                  ; |336| 
        sti       r0,*ar0               ; |336| 
	.line	19
;----------------------------------------------------------------------
; 337 | vect_pt0                        = PORT[0].tvector;                     
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |337| 
        ldp       @CL58,DP
        ldiu      @CL58,ar1             ; |337| 
        ldiu      *ar0,r0               ; |337| 
        sti       r0,*ar1               ; |337| 
	.line	21
;----------------------------------------------------------------------
; 339 | PUSH_ALL;                                                              
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
	.line	22
;----------------------------------------------------------------------
; 340 | asm("           .global _vect_pt0  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt0  
	.line	23
;----------------------------------------------------------------------
; 341 | asm("       ldp             _vect_pt0      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt0      
	.line	24
;----------------------------------------------------------------------
; 342 | asm("       ldi             @_vect_pt0, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt0, R0 
	.line	25
;----------------------------------------------------------------------
; 343 | asm("       ldi             0, AR2             ");  /* select the port
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		0, AR2 		   
	.line	26
;----------------------------------------------------------------------
; 344 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	27
;----------------------------------------------------------------------
; 345 | POP_ALL;                                                               
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
L46:        
	.line	30
;----------------------------------------------------------------------
; 348 | TIMER1_COUNTER[0]--;                                                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |348| 
        ldiu      1,r0                  ; |348| 
        subi3     r0,*ar0,r0            ; |348| 
        sti       r0,*ar0               ; |348| 
L47:        
	.line	33
;----------------------------------------------------------------------
; 351 | if(PORT[1].TMR_enabled)                                                
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,ar0             ; |351| 
        ldiu      *ar0,r0               ; |351| 
        cmpi      0,r0                  ; |351| 
        beq       L51                   ; |351| 
;*      Branch Occurs to L51            ; |351| 
	.line	35
;----------------------------------------------------------------------
; 353 | if (TIMER1_COUNTER[1]<=0)                                              
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      @CL61,ar0             ; |353| 
        ldiu      *ar0,r0               ; |353| 
        cmpi      0,r0                  ; |353| 
        bgt       L50                   ; |353| 
;*      Branch Occurs to L50            ; |353| 
	.line	37
;----------------------------------------------------------------------
; 355 | PORT[1].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,ar0             ; |355| 
        ldiu      0,r0                  ; |355| 
        sti       r0,*ar0               ; |355| 
	.line	38
;----------------------------------------------------------------------
; 356 | vect_pt1                        = PORT[1].tvector;                     
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldiu      @CL63,ar0             ; |356| 
        ldp       @CL62,DP
        ldiu      @CL62,ar1             ; |356| 
        ldiu      *ar0,r0               ; |356| 
        sti       r0,*ar1               ; |356| 
	.line	40
;----------------------------------------------------------------------
; 358 | PUSH_ALL;                                                              
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
	.line	41
;----------------------------------------------------------------------
; 359 | asm("           .global _vect_pt1  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt1  
	.line	42
;----------------------------------------------------------------------
; 360 | asm("       ldp             _vect_pt1      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt1      
	.line	43
;----------------------------------------------------------------------
; 361 | asm("       ldi             @_vect_pt1, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt1, R0 
	.line	44
;----------------------------------------------------------------------
; 362 | asm("       ldi             1, AR2             ");  /* select the port
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		1, AR2 		   
	.line	45
;----------------------------------------------------------------------
; 363 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	46
;----------------------------------------------------------------------
; 364 | POP_ALL;                                                               
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
L50:        
	.line	49
;----------------------------------------------------------------------
; 367 | TIMER1_COUNTER[1]--;                                                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |367| 
        ldiu      1,r0                  ; |367| 
        subri     *+ar0(1),r0           ; |367| 
        sti       r0,*+ar0(1)           ; |367| 
L51:        
	.line	52
;----------------------------------------------------------------------
; 370 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |370| 
        ldiu      *ar0,r0               ; |370| 
        cmpi      0,r0                  ; |370| 
        bne       L81                   ; |370| 
;*      Branch Occurs to L81            ; |370| 
	.line	53
;----------------------------------------------------------------------
; 371 | break;                                                                 
;----------------------------------------------------------------------
	.line	55
;----------------------------------------------------------------------
; 373 | if(PORT[2].TMR_enabled)                                                
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar0             ; |373| 
        ldiu      *ar0,r0               ; |373| 
        cmpi      0,r0                  ; |373| 
        beq       L56                   ; |373| 
;*      Branch Occurs to L56            ; |373| 
	.line	57
;----------------------------------------------------------------------
; 375 | if (TIMER1_COUNTER[2]<=0)                                              
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      @CL65,ar0             ; |375| 
        ldiu      *ar0,r0               ; |375| 
        cmpi      0,r0                  ; |375| 
        bgt       L55                   ; |375| 
;*      Branch Occurs to L55            ; |375| 
	.line	59
;----------------------------------------------------------------------
; 377 | PORT[2].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar0             ; |377| 
        ldiu      0,r0                  ; |377| 
        sti       r0,*ar0               ; |377| 
	.line	60
;----------------------------------------------------------------------
; 378 | vect_pt2                        = PORT[2].tvector;                     
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,ar0             ; |378| 
        ldp       @CL66,DP
        ldiu      @CL66,ar1             ; |378| 
        ldiu      *ar0,r0               ; |378| 
        sti       r0,*ar1               ; |378| 
	.line	62
;----------------------------------------------------------------------
; 380 | PUSH_ALL;                                                              
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
	.line	63
;----------------------------------------------------------------------
; 381 | asm("           .global _vect_pt2  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt2  
	.line	64
;----------------------------------------------------------------------
; 382 | asm("       ldp             _vect_pt2      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt2      
	.line	65
;----------------------------------------------------------------------
; 383 | asm("       ldi             @_vect_pt2, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt2, R0 
	.line	66
;----------------------------------------------------------------------
; 384 | asm("       ldi             2, AR2             ");  /* select the port
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		2, AR2 		   
	.line	67
;----------------------------------------------------------------------
; 385 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	68
;----------------------------------------------------------------------
; 386 | POP_ALL;                                                               
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
L55:        
	.line	71
;----------------------------------------------------------------------
; 389 | TIMER1_COUNTER[2]--;                                                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |389| 
        ldiu      1,r0                  ; |389| 
        subri     *+ar0(2),r0           ; |389| 
        sti       r0,*+ar0(2)           ; |389| 
L56:        
	.line	74
;----------------------------------------------------------------------
; 392 | if(PORT[3].TMR_enabled)                                                
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldiu      @CL68,ar0             ; |392| 
        ldiu      *ar0,r0               ; |392| 
        cmpi      0,r0                  ; |392| 
        beq       L60                   ; |392| 
;*      Branch Occurs to L60            ; |392| 
	.line	76
;----------------------------------------------------------------------
; 394 | if (TIMER1_COUNTER[3]<=0)                                              
;----------------------------------------------------------------------
        ldp       @CL69,DP
        ldiu      @CL69,ar0             ; |394| 
        ldiu      *ar0,r0               ; |394| 
        cmpi      0,r0                  ; |394| 
        bgt       L59                   ; |394| 
;*      Branch Occurs to L59            ; |394| 
	.line	78
;----------------------------------------------------------------------
; 396 | PORT[3].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldiu      @CL68,ar0             ; |396| 
        ldiu      0,r0                  ; |396| 
        sti       r0,*ar0               ; |396| 
	.line	79
;----------------------------------------------------------------------
; 397 | vect_pt3                        = PORT[3].tvector;                     
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,ar0             ; |397| 
        ldp       @CL70,DP
        ldiu      @CL70,ar1             ; |397| 
        ldiu      *ar0,r0               ; |397| 
        sti       r0,*ar1               ; |397| 
	.line	81
;----------------------------------------------------------------------
; 399 | PUSH_ALL;                                                              
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
	.line	82
;----------------------------------------------------------------------
; 400 | asm("           .global _vect_pt3  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt3  
	.line	83
;----------------------------------------------------------------------
; 401 | asm("       ldp             _vect_pt3      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt3      
	.line	84
;----------------------------------------------------------------------
; 402 | asm("       ldi             @_vect_pt3, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt3, R0 
	.line	85
;----------------------------------------------------------------------
; 403 | asm("       ldi             3, AR2             ");  /* select the port
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		3, AR2 		   
	.line	86
;----------------------------------------------------------------------
; 404 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	87
;----------------------------------------------------------------------
; 405 | POP_ALL;                                                               
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
L59:        
	.line	90
;----------------------------------------------------------------------
; 408 | TIMER1_COUNTER[3]--;                                                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |408| 
        ldiu      1,r0                  ; |408| 
        subri     *+ar0(3),r0           ; |408| 
        sti       r0,*+ar0(3)           ; |408| 
L60:        
	.line	93
;----------------------------------------------------------------------
; 411 | if(PORT[5].TMR_enabled)                                                
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar0             ; |411| 
        ldiu      *ar0,r0               ; |411| 
        cmpi      0,r0                  ; |411| 
        beq       L64                   ; |411| 
;*      Branch Occurs to L64            ; |411| 
	.line	95
;----------------------------------------------------------------------
; 413 | if (TIMER1_COUNTER[5]<=0)                                              
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      @CL73,ar0             ; |413| 
        ldiu      *ar0,r0               ; |413| 
        cmpi      0,r0                  ; |413| 
        bgt       L63                   ; |413| 
;*      Branch Occurs to L63            ; |413| 
	.line	97
;----------------------------------------------------------------------
; 415 | PORT[5].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar0             ; |415| 
        ldiu      0,r0                  ; |415| 
        sti       r0,*ar0               ; |415| 
	.line	98
;----------------------------------------------------------------------
; 416 | vect_pt5                        = PORT[5].tvector;                     
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,ar0             ; |416| 
        ldp       @CL74,DP
        ldiu      @CL74,ar1             ; |416| 
        ldiu      *ar0,r0               ; |416| 
        sti       r0,*ar1               ; |416| 
	.line	100
;----------------------------------------------------------------------
; 418 | PUSH_ALL;                                                              
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
	.line	101
;----------------------------------------------------------------------
; 419 | asm("           .global _vect_pt5  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt5  
	.line	102
;----------------------------------------------------------------------
; 420 | asm("       ldp             _vect_pt5      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt5      
	.line	103
;----------------------------------------------------------------------
; 421 | asm("       ldi             @_vect_pt5, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt5, R0 
	.line	104
;----------------------------------------------------------------------
; 422 | asm("       ldi             5, AR2             ");  /* select the port
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		5, AR2 		   
	.line	105
;----------------------------------------------------------------------
; 423 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	106
;----------------------------------------------------------------------
; 424 | POP_ALL;                                                               
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
L63:        
	.line	109
;----------------------------------------------------------------------
; 427 | TIMER1_COUNTER[5]--;                                                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |427| 
        ldiu      1,r0                  ; |427| 
        subri     *+ar0(5),r0           ; |427| 
        sti       r0,*+ar0(5)           ; |427| 
L64:        
	.line	112
;----------------------------------------------------------------------
; 430 | if(PORT[6].TMR_enabled)                                                
;----------------------------------------------------------------------
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |430| 
        ldiu      *ar0,r0               ; |430| 
        cmpi      0,r0                  ; |430| 
        beq       L68                   ; |430| 
;*      Branch Occurs to L68            ; |430| 
	.line	114
;----------------------------------------------------------------------
; 432 | if (TIMER1_COUNTER[6]<=0)                                              
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      @CL77,ar0             ; |432| 
        ldiu      *ar0,r0               ; |432| 
        cmpi      0,r0                  ; |432| 
        bgt       L67                   ; |432| 
;*      Branch Occurs to L67            ; |432| 
	.line	116
;----------------------------------------------------------------------
; 434 | PORT[6].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |434| 
        ldiu      0,r0                  ; |434| 
        sti       r0,*ar0               ; |434| 
	.line	117
;----------------------------------------------------------------------
; 435 | vect_pt6                        = PORT[6].tvector;                     
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar1             ; |435| 
        ldp       @CL78,DP
        ldiu      @CL78,ar0             ; |435| 
        ldiu      *ar1,r0               ; |435| 
        sti       r0,*ar0               ; |435| 
	.line	119
;----------------------------------------------------------------------
; 437 | PUSH_ALL;                                                              
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
	.line	120
;----------------------------------------------------------------------
; 438 | asm("           .global _vect_pt6  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt6  
	.line	121
;----------------------------------------------------------------------
; 439 | asm("       ldp             _vect_pt6      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt6      
	.line	122
;----------------------------------------------------------------------
; 440 | asm("       ldi             @_vect_pt6, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt6, R0 
	.line	123
;----------------------------------------------------------------------
; 441 | asm("       ldi             6, AR2             ");  /* select the port
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		6, AR2 		   
	.line	124
;----------------------------------------------------------------------
; 442 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	125
;----------------------------------------------------------------------
; 443 | POP_ALL;                                                               
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
L67:        
	.line	128
;----------------------------------------------------------------------
; 446 | TIMER1_COUNTER[6]--;                                                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |446| 
        ldiu      1,r0                  ; |446| 
        subri     *+ar0(6),r0           ; |446| 
        sti       r0,*+ar0(6)           ; |446| 
L68:        
	.line	131
;----------------------------------------------------------------------
; 449 | if(PORT[7].TMR_enabled)                                                
;----------------------------------------------------------------------
        ldp       @CL80,DP
        ldiu      @CL80,ar0             ; |449| 
        ldiu      *ar0,r0               ; |449| 
        cmpi      0,r0                  ; |449| 
        beq       L72                   ; |449| 
;*      Branch Occurs to L72            ; |449| 
	.line	133
;----------------------------------------------------------------------
; 451 | if (TIMER1_COUNTER[7]<=0)                                              
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldiu      @CL81,ar0             ; |451| 
        ldiu      *ar0,r0               ; |451| 
        cmpi      0,r0                  ; |451| 
        bgt       L71                   ; |451| 
;*      Branch Occurs to L71            ; |451| 
	.line	135
;----------------------------------------------------------------------
; 453 | PORT[7].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL80,DP
        ldiu      @CL80,ar0             ; |453| 
        ldiu      0,r0                  ; |453| 
        sti       r0,*ar0               ; |453| 
	.line	136
;----------------------------------------------------------------------
; 454 | vect_pt7                        = PORT[7].tvector;                     
;----------------------------------------------------------------------
        ldp       @CL83,DP
        ldiu      @CL83,ar1             ; |454| 
        ldp       @CL82,DP
        ldiu      @CL82,ar0             ; |454| 
        ldiu      *ar1,r0               ; |454| 
        sti       r0,*ar0               ; |454| 
	.line	138
;----------------------------------------------------------------------
; 456 | PUSH_ALL;                                                              
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
	.line	139
;----------------------------------------------------------------------
; 457 | asm("           .global _vect_pt7  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt7  
	.line	140
;----------------------------------------------------------------------
; 458 | asm("       ldp             _vect_pt7      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt7      
	.line	141
;----------------------------------------------------------------------
; 459 | asm("       ldi             @_vect_pt7, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt7, R0 
	.line	142
;----------------------------------------------------------------------
; 460 | asm("       ldi             7, AR2             ");  /* select the port
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		7, AR2 		   
	.line	143
;----------------------------------------------------------------------
; 461 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	144
;----------------------------------------------------------------------
; 462 | POP_ALL;                                                               
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
L71:        
	.line	147
;----------------------------------------------------------------------
; 465 | TIMER1_COUNTER[7]--;                                                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |465| 
        ldiu      1,r0                  ; |465| 
        subri     *+ar0(7),r0           ; |465| 
        sti       r0,*+ar0(7)           ; |465| 
L72:        
	.line	150
;----------------------------------------------------------------------
; 468 | if(PORT[4].TMR_enabled)                                                
;----------------------------------------------------------------------
        ldp       @CL84,DP
        ldiu      @CL84,ar0             ; |468| 
        ldiu      *ar0,r0               ; |468| 
        cmpi      0,r0                  ; |468| 
        beq       L81                   ; |468| 
;*      Branch Occurs to L81            ; |468| 
	.line	152
;----------------------------------------------------------------------
; 470 | if (TIMER1_COUNTER[4]<=0)                                              
;----------------------------------------------------------------------
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |470| 
        ldiu      *ar0,r0               ; |470| 
        cmpi      0,r0                  ; |470| 
        bgt       L75                   ; |470| 
;*      Branch Occurs to L75            ; |470| 
	.line	154
;----------------------------------------------------------------------
; 472 | PORT[4].TMR_enabled = FALSE;                                           
;----------------------------------------------------------------------
        ldp       @CL84,DP
        ldiu      @CL84,ar0             ; |472| 
        ldiu      0,r0                  ; |472| 
        sti       r0,*ar0               ; |472| 
	.line	155
;----------------------------------------------------------------------
; 473 | vect_pt4 = PORT[4].tvector;                                            
;----------------------------------------------------------------------
        ldp       @CL87,DP
        ldiu      @CL87,ar1             ; |473| 
        ldp       @CL86,DP
        ldiu      @CL86,ar0             ; |473| 
        ldiu      *ar1,r0               ; |473| 
        sti       r0,*ar0               ; |473| 
	.line	157
;----------------------------------------------------------------------
; 475 | PUSH_ALL;                                                              
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
	.line	158
;----------------------------------------------------------------------
; 476 | asm("           .global _vect_pt4  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt4  
	.line	159
;----------------------------------------------------------------------
; 477 | asm("       ldp             _vect_pt4      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt4      
	.line	160
;----------------------------------------------------------------------
; 478 | asm("       ldi             @_vect_pt4, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt4, R0 
	.line	161
;----------------------------------------------------------------------
; 479 | asm("       ldi             4, AR2             ");  /* select the port
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		4, AR2 		   
	.line	162
;----------------------------------------------------------------------
; 480 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	163
;----------------------------------------------------------------------
; 481 | POP_ALL;                                                               
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
        bu        L79                   ; |318| 
;*      Branch Occurs to L79            ; |318| 
L75:        
	.line	165
;----------------------------------------------------------------------
; 483 | else if (HART_BURST_MODE)                                              
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      @CL88,ar0             ; |483| 
        ldiu      *ar0,r0               ; |483| 
        cmpi      0,r0                  ; |483| 
        beq       L79                   ; |483| 
;*      Branch Occurs to L79            ; |483| 
	.line	167
;----------------------------------------------------------------------
; 485 | if (TMR_BURST<=0)                                                      
;----------------------------------------------------------------------
        ldp       @CL89,DP
        ldiu      @CL89,ar0             ; |485| 
        ldiu      *ar0,r0               ; |485| 
        cmpi      0,r0                  ; |485| 
        bgt       L78                   ; |485| 
;*      Branch Occurs to L78            ; |485| 
	.line	168
;----------------------------------------------------------------------
; 486 | HART_Burst(4, 1);                                                      
;----------------------------------------------------------------------
        ldiu      4,ar2                 ; |486| 
        ldiu      1,r2                  ; |486| 
        call      _HART_Burst           ; |486| 
                                        ; |486| Call Occurs
L78:        
	.line	170
;----------------------------------------------------------------------
; 488 | TMR_BURST--;                                                           
;----------------------------------------------------------------------
        ldp       @CL89,DP
        ldiu      @CL89,ar0             ; |488| 
        ldiu      1,r0                  ; |488| 
        subi3     r0,*ar0,r0            ; |488| 
        sti       r0,*ar0               ; |488| 
L79:        
	.line	173
;----------------------------------------------------------------------
; 491 | TIMER1_COUNTER[4]--;                                                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |491| 
        ldiu      1,r0                  ; |491| 
        subri     *+ar0(4),r0           ; |491| 
        sti       r0,*+ar0(4)           ; |491| 
	.line	176
;----------------------------------------------------------------------
; 494 | break;                                                                 
;----------------------------------------------------------------------
        bu        L81                   ; |494| 
;*      Branch Occurs to L81            ; |494| 
	.line	177
L81:        
	.line	179
;----------------------------------------------------------------------
; 497 | TIMER0_COUNTER++;                                                      
;----------------------------------------------------------------------
        ldp       @CL90,DP
        ldiu      @CL90,ar0             ; |497| 
        ldiu      1,r0                  ; |497| 
        addi3     r0,*ar0,r0            ; |497| 
        sti       r0,*ar0               ; |497| 
	.line	181
;----------------------------------------------------------------------
; 499 | if (TIMER0_COUNTER>=1047)                                              
;----------------------------------------------------------------------
        ldiu      @CL90,ar0             ; |499| 
        ldiu      *ar0,r0               ; |499| 
        cmpi      1047,r0               ; |499| 
        blt       L97                   ; |499| 
;*      Branch Occurs to L97            ; |499| 
	.line	183
;----------------------------------------------------------------------
; 501 | TIMER0_COUNTER  = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL90,DP
        ldiu      @CL90,ar0             ; |501| 
        ldiu      0,r0                  ; |501| 
        sti       r0,*ar0               ; |501| 
	.line	184
;----------------------------------------------------------------------
; 502 | p                               = (TPKT*)LIST_TIMER0.head;
;     |          /* get the next event */                                      
;----------------------------------------------------------------------
        ldp       @CL91,DP
        ldiu      @CL91,ar0             ; |502| 
        ldiu      *ar0,r0               ; |502| 
        sti       r0,*+fp(1)            ; |502| 
	.line	186
;----------------------------------------------------------------------
; 504 | while((int*)p != NULL_PTR)
;     |          /* while there are events, handle them */                     
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |504| 
        beq       L97                   ; |504| 
;*      Branch Occurs to L97            ; |504| 
L83:        
	.line	188
;----------------------------------------------------------------------
; 506 | if (p->countdown > 0)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |506| 
        ldiu      *+ar0(7),r0           ; |506| 
        cmpi      0,r0                  ; |506| 
        ble       L85                   ; |506| 
;*      Branch Occurs to L85            ; |506| 
	.line	190
;----------------------------------------------------------------------
; 508 | p->countdown--;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |508| 
        subri     *+ar0(7),r0           ; |508| 
        sti       r0,*+ar0(7)           ; |508| 
	.line	191
;----------------------------------------------------------------------
; 509 | break;                                                                 
;----------------------------------------------------------------------
        bu        L97                   ; |509| 
;*      Branch Occurs to L97            ; |509| 
L85:        
	.line	194
;----------------------------------------------------------------------
; 512 | List_Remove((LIST*)&LIST_TIMER0, (GENERIC*)p);  /* remove from timer li
;     | st, but do not add to empty list until done */                         
;----------------------------------------------------------------------
        ldp       @CL92,DP
        ldiu      @CL92,r0              ; |512| 
        ldiu      *+fp(1),r2            ; |512| 
        ldp       @CL91,DP
        ldiu      @CL91,ar2             ; |512| 
        callu     r0                    ; far call to _List_Remove	; |512| 
                                        ; |512| Far Call Occurs
	.line	196
;----------------------------------------------------------------------
; 514 | if (p->vect != NULL_PTR)
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |514| 
        ldiu      *+ar0(2),r0           ; |514| 
        cmpi      0,r0                  ; |514| 
        beq       L96                   ; |514| 
;*      Branch Occurs to L96            ; |514| 
	.line	198
;----------------------------------------------------------------------
; 516 | exec = TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |516| 
        sti       r0,*+fp(3)            ; |516| 
	.line	200
;----------------------------------------------------------------------
; 518 | if (p->priority == 0)                                                  
;----------------------------------------------------------------------
        ldiu      *+ar0(3),r0           ; |518| 
        cmpi      0,r0                  ; |518| 
        bne       L88                   ; |518| 
;*      Branch Occurs to L88            ; |518| 
	.line	202
;----------------------------------------------------------------------
; 520 | tmp     = vect_tm;                                                     
;----------------------------------------------------------------------
        ldp       @CL93,DP
        ldiu      @CL93,ar0             ; |520| 
        ldiu      *ar0,r0               ; |520| 
        sti       r0,*+fp(2)            ; |520| 
	.line	203
;----------------------------------------------------------------------
; 521 | vect_tm = p->vect;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |521| 
        ldiu      @CL93,ar1             ; |521| 
        ldiu      *+ar0(2),r0           ; |521| 
        sti       r0,*ar1               ; |521| 
	.line	207
;----------------------------------------------------------------------
; 525 | PUSH_ALL;                                                              
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
	.line	208
;----------------------------------------------------------------------
; 526 | asm("           .global _vect_tm  ");                                  
;----------------------------------------------------------------------
		.global _vect_tm  
	.line	209
;----------------------------------------------------------------------
; 527 | asm("       ldp             _vect_tm      ");                          
;----------------------------------------------------------------------
	ldp		_vect_tm      
	.line	210
;----------------------------------------------------------------------
; 528 | asm("       ldi             @_vect_tm, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_tm, R0 
	.line	211
;----------------------------------------------------------------------
; 529 | asm("       callnz  R0                        ");           /* call if
;     | vect != NULL */                                                        
;----------------------------------------------------------------------
	callnz	R0		 	  
	.line	212
;----------------------------------------------------------------------
; 530 | POP_ALL;                                                               
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
	.line	213
;----------------------------------------------------------------------
; 531 | vect_tm = tmp;                                                         
;----------------------------------------------------------------------
        ldiu      @CL93,ar0             ; |531| 
        ldiu      *+fp(2),r0            ; |531| 
        sti       r0,*ar0               ; |531| 
        bu        L90                   ; |318| 
;*      Branch Occurs to L90            ; |318| 
L88:        
	.line	215
;----------------------------------------------------------------------
; 533 | else if (!Execute_Insert((EPKT*)p))                     /* execution qu
;     | eue is full!!! */                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |533| 
        call      _Execute_Insert       ; |533| 
                                        ; |533| Call Occurs
        cmpi      0,r0                  ; |533| 
        bne       L90                   ; |533| 
;*      Branch Occurs to L90            ; |533| 
	.line	216
;----------------------------------------------------------------------
; 534 | exec = FALSE;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |534| 
        sti       r0,*+fp(3)            ; |534| 
L90:        
	.line	220
;----------------------------------------------------------------------
; 538 | if (!exec)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |538| 
        cmpi      0,r0                  ; |538| 
        bne       L92                   ; |538| 
;*      Branch Occurs to L92            ; |538| 
	.line	221
;----------------------------------------------------------------------
; 539 | Timer_Insert(p,1,TMR_action_replace);   /* re-insert timer with minimum
;     |  tick*/                                                                
;----------------------------------------------------------------------
        ldp       @CL94,DP
        ldiu      *+fp(1),ar2           ; |539| 
        ldiu      1,r3                  ; |539| 
        ldiu      1,r2                  ; |539| 
        ldiu      @CL94,r0              ; |539| 
        callu     r0                    ; far call to _Timer_Insert	; |539| 
                                        ; |539| Far Call Occurs
        bu        L96                   ; |318| 
;*      Branch Occurs to L96            ; |318| 
L92:        
	.line	222
;----------------------------------------------------------------------
; 540 | else if (p->n > 1)                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |540| 
        ldiu      *+ar0(5),r0           ; |540| 
        cmpi      1,r0                  ; |540| 
        ble       L94                   ; |540| 
;*      Branch Occurs to L94            ; |540| 
	.line	224
;----------------------------------------------------------------------
; 542 | p->n--;                                                                
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |542| 
        subri     *+ar0(5),r0           ; |542| 
        sti       r0,*+ar0(5)           ; |542| 
	.line	225
;----------------------------------------------------------------------
; 543 | Timer_Insert(p,0,TMR_action_replace);   /* re-insert timer */          
;----------------------------------------------------------------------
        ldp       @CL94,DP
        ldiu      1,r3                  ; |543| 
        ldiu      0,r2                  ; |543| 
        ldiu      *+fp(1),ar2           ; |543| 
        ldiu      @CL94,r0              ; |543| 
        callu     r0                    ; far call to _Timer_Insert	; |543| 
                                        ; |543| Far Call Occurs
        bu        L96                   ; |318| 
;*      Branch Occurs to L96            ; |318| 
L94:        
	.line	227
;----------------------------------------------------------------------
; 545 | else if (p->n < 0)                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |545| 
        ldiu      *+ar0(5),r0           ; |545| 
        cmpi      0,r0                  ; |545| 
        bge       L96                   ; |545| 
;*      Branch Occurs to L96            ; |545| 
	.line	228
;----------------------------------------------------------------------
; 546 | Timer_Insert(p,0,TMR_action_replace);   /* re-insert timer */          
;----------------------------------------------------------------------
        ldp       @CL94,DP
        ldiu      ar0,ar2               ; |546| 
        ldiu      1,r3                  ; |546| 
        ldiu      0,r2                  ; |546| 
        ldiu      @CL94,r0              ; |546| 
        callu     r0                    ; far call to _Timer_Insert	; |546| 
                                        ; |546| Far Call Occurs
L96:        
	.line	231
;----------------------------------------------------------------------
; 549 | List_Add(&LIST_TMR_EMPTY, (GENERIC*)p);                                
;----------------------------------------------------------------------
        ldp       @CL96,DP
        ldiu      @CL96,r0              ; |549| 
        ldiu      *+fp(1),r2            ; |549| 
        ldp       @CL95,DP
        ldiu      @CL95,ar2             ; |549| 
        callu     r0                    ; far call to _List_Add	; |549| 
                                        ; |549| Far Call Occurs
	.line	233
;----------------------------------------------------------------------
; 551 | TICKLE_WATCHDOG;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL97,DP
        ldiu      @CL97,ar0             ; |551| 
        ldiu      128,r0                ; |551| 
        or3       r0,*ar0,r0            ; |551| 
        sti       r0,*ar0               ; |551| 
	pop		ST			
	.line	234
;----------------------------------------------------------------------
; 552 | p = (TPKT*)LIST_TIMER0.head;                                           
;----------------------------------------------------------------------
        ldp       @CL91,DP
        ldiu      @CL91,ar0             ; |552| 
        ldiu      *ar0,r0               ; |552| 
        sti       r0,*+fp(1)            ; |552| 
	.line	186
        cmpi      0,r0                  ; |504| 
        bne       L83                   ; |504| 
;*      Branch Occurs to L83            ; |504| 
L97:        
	.line	238
;----------------------------------------------------------------------
; 556 | TICKLE_WATCHDOG;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL97,DP
        ldiu      @CL97,ar0             ; |556| 
        ldiu      128,r0                ; |556| 
        or3       r0,*ar0,r0            ; |556| 
        sti       r0,*ar0               ; |556| 
	pop		ST			
	.line	239
;----------------------------------------------------------------------
; 557 | ENABLE_TINT0;                                                          
;----------------------------------------------------------------------
	or		0100h, IE
	.line	240
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       dp
                                        ; Unallocate the Frame
        subi      3,sp
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	558,0103f07ffh,3


	.sect	 "interrupt_routines"

	.global	_c_TINT1
	.sym	_c_TINT1,_c_TINT1,32,2,0
	.func	574
;******************************************************************************
;* FUNCTION NAME: _c_TINT1                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 1 SOE = 3 words          *
;******************************************************************************
_c_TINT1:
	.line	1
;----------------------------------------------------------------------
; 574 | void c_TINT1(void){}                                                   
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	574,010000000h,0


	.sect	 "interrupt_routines"

	.global	_c_SPURINT
	.sym	_c_SPURINT,_c_SPURINT,32,2,0
	.func	590
;******************************************************************************
;* FUNCTION NAME: _c_SPURINT                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 1 SOE = 3 words          *
;******************************************************************************
_c_SPURINT:
	.line	1
;----------------------------------------------------------------------
; 590 | void c_SPURINT(void){}                                                 
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	590,010000000h,0


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
	.bss	CL16,2
	.bss	CL17,2
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
	.bss	CL55,2
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

	.sect	".cinit"
	.field  	100,32
	.field  	CL1+0,32
	.field  	9437190,32
	.field  	_Process_UINT,32
	.field  	_SA,32
	.field  	9437195,32
	.field  	9437196,32
	.field  	9437197,32
	.field  	9437198,32
	.field  	9437199,32
	.field  	9437200,32
	.field  	_FC+1251,32
	.field  	_FC+1254,32
	.word   	010000000H ; double  6.553600000000000e+04
	.field  	_FC+1253,32
	.field  	_FC+1260,32
	.field  	_FC+1117,32
	.word   	020000000H ; ldouble 4.294967296000000e+09
	.word   	000000000H ; ldouble
	.word   	080000000H ; ldouble 0.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_FC+1270,32
	.field  	_FC+1258,32
	.field  	_FC+1206,32
	.field  	_VAR_Update,32
	.field  	_FC,32
	.field  	_FC+1118,32
	.field  	_FC+1127,32
	.field  	_FC+1133,32
	.field  	_FC+1132,32
	.field  	_FC+1176,32
	.field  	_FC+1162,32
	.field  	_Time_Scale_Flow,32
	.field  	_FC+1087,32
	.field  	_FC+1073,32
	.field  	_Accumulate,32
	.field  	_FC+1273,32
	.field  	_HART_DVINPUT_Table,32
	.field  	_HART_Lookup,32
	.field  	_REG_DUMMY,32
	.field  	_FC+1279,32
	.field  	_FC+1292,32
	.field  	_FC+1288,32
	.field  	_Convert,32
	.field  	_Read_ADC_FIFO,32
	.field  	_VT_SELECT,32
	.field  	_GATE_TIMEOUT,32
	.field  	9437194,32
	.field  	9437193,32
	.field  	9437192,32
	.field  	9437191,32
	.field  	_DIO_AUX_FREQ_MODE,32
	.field  	_PRESCALE,32
	.word   	020000000H ; float   4.294967296000000e+09
	.word   	01F000000H ; float   2.147483648000000e+09
	.field  	_GATE_TIME,32
	.field  	_FREQ_FACTOR,32
	.field  	_TMP_FREQ,32
	.word   	0EC0637BDH ; ldouble 1.000000000000000e-06
	.word   	00637BD06H ; ldouble
	.field  	_TIMER1_COUNTER,32
	.field  	_PORT+37,32
	.field  	_vect_pt0,32
	.field  	_PORT+38,32
	.field  	_PORT+108,32
	.field  	_TIMER1_COUNTER+1,32
	.field  	_vect_pt1,32
	.field  	_PORT+109,32
	.field  	_PORT+179,32
	.field  	_TIMER1_COUNTER+2,32
	.field  	_vect_pt2,32
	.field  	_PORT+180,32
	.field  	_PORT+250,32
	.field  	_TIMER1_COUNTER+3,32
	.field  	_vect_pt3,32
	.field  	_PORT+251,32
	.field  	_PORT+392,32
	.field  	_TIMER1_COUNTER+5,32
	.field  	_vect_pt5,32
	.field  	_PORT+393,32
	.field  	_PORT+463,32
	.field  	_TIMER1_COUNTER+6,32
	.field  	_vect_pt6,32
	.field  	_PORT+464,32
	.field  	_PORT+534,32
	.field  	_TIMER1_COUNTER+7,32
	.field  	_vect_pt7,32
	.field  	_PORT+535,32
	.field  	_PORT+321,32
	.field  	_TIMER1_COUNTER+4,32
	.field  	_vect_pt4,32
	.field  	_PORT+322,32
	.field  	_HART_BURST_MODE,32
	.field  	_TMR_BURST,32
	.field  	_TIMER0_COUNTER,32
	.field  	_LIST_TIMER0,32
	.field  	_List_Remove,32
	.field  	_vect_tm,32
	.field  	_Timer_Insert,32
	.field  	_LIST_TMR_EMPTY,32
	.field  	_List_Add,32
	.field  	9437188,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_List_Add

	.global	_List_Remove

	.global	_VAR_Update

	.global	_Time_Scale_Flow

	.global	_Convert

	.global	_TIMER1_COUNTER

	.global	_TIMER0_COUNTER

	.global	_LIST_TMR_EMPTY

	.global	_LIST_TIMER0

	.global	_vect_pt0

	.global	_vect_pt1

	.global	_vect_pt2

	.global	_vect_pt3

	.global	_vect_pt4

	.global	_vect_pt5

	.global	_vect_pt6

	.global	_vect_pt7

	.global	_vect_tm

	.global	_Timer_Insert

	.global	_GATE_TIMEOUT

	.global	_PORT

	.global	_Process_UINT

	.global	_Read_ADC_FIFO

	.global	_SA

	.global	_GATE_TIME

	.global	_PRESCALE

	.global	_VT_SELECT

	.global	_DIO_AUX_FREQ_MODE

	.global	_REG_DUMMY

	.global	_TMP_FREQ

	.global	_FREQ_FACTOR

	.global	_FC

	.global	_HART_BURST_MODE

	.global	_TMR_BURST

	.global	_HART_Lookup

	.global	_HART_DVINPUT_Table

	.global	_Accumulate
	.global	DIV_LD
	.global	MPY_LD
	.global	_HART_Burst
	.global	_Execute_Insert
