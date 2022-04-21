;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu Apr 21 09:28:36 2022                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_9RS.AAA 
	.file	"api.c"
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
        bu        L165                  ; |215| 
;*      Branch Occurs to L165           ; |215| 
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
        bud       L173                  ; |252| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |252| 
;*      Branch Occurs to L173           ; |252| 
L61:        
	.line	39
;----------------------------------------------------------------------
; 254 | else if(p<40.0)                                                        
; 256 |         //if(t>300.0) // FEB 2, 2022 : DKOH : bug#112                  
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |254| 
        cmpf      4.0000000000e+01,f0   ; |254| 
        bge       L67                   ; |254| 
;*      Branch Occurs to L67            ; |254| 
	.line	42
;----------------------------------------------------------------------
; 257 | if(t>400.0) // FEB 2, 2022 : DKOH : bug#112                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |257| 
        cmpf      @CL24,f0              ; |257| 
        ble       L65                   ; |257| 
;*      Branch Occurs to L65            ; |257| 
	.line	44
;----------------------------------------------------------------------
; 259 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |259| 
        ldiu      2,r2                  ; |259| 
        ldiu      @CL22,r0              ; |259| 
        callu     r0                    ; far call to _API_STATUS	; |259| 
                                        ; |259| Far Call Occurs
	.line	45
;----------------------------------------------------------------------
; 260 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	47
;----------------------------------------------------------------------
; 262 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |262| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |262| 
;*      Branch Occurs to L173           ; |262| 
L65:        
	.line	49
;----------------------------------------------------------------------
; 264 | else if(t>250.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |264| 
        cmpf      2.5000000000e+02,f0   ; |264| 
        ble       L90                   ; |264| 
;*      Branch Occurs to L90            ; |264| 
	.line	50
;----------------------------------------------------------------------
; 265 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |265| 
        ldiu      1,r2                  ; |265| 
        ldiu      @CL22,r0              ; |265| 
        callu     r0                    ; far call to _API_STATUS	; |265| 
                                        ; |265| Far Call Occurs
        bu        L90                   ; |215| 
;*      Branch Occurs to L90            ; |215| 
L67:        
	.line	52
;----------------------------------------------------------------------
; 267 | else if(p<50.0)                                                        
; 269 |         //if(t>250.0) // FEB 2, 2022 : DKOH : bug#112                  
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |267| 
        cmpf      5.0000000000e+01,f0   ; |267| 
        bge       L73                   ; |267| 
;*      Branch Occurs to L73            ; |267| 
	.line	55
;----------------------------------------------------------------------
; 270 | if(t>400.0) // FEB 2, 2022 : DKOH : bug#112                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |270| 
        cmpf      @CL24,f0              ; |270| 
        ble       L71                   ; |270| 
;*      Branch Occurs to L71            ; |270| 
	.line	57
;----------------------------------------------------------------------
; 272 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |272| 
        ldiu      2,r2                  ; |272| 
        ldiu      @CL22,r0              ; |272| 
        callu     r0                    ; far call to _API_STATUS	; |272| 
                                        ; |272| Far Call Occurs
	.line	58
;----------------------------------------------------------------------
; 273 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	60
;----------------------------------------------------------------------
; 275 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |275| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |275| 
;*      Branch Occurs to L173           ; |275| 
L71:        
	.line	62
;----------------------------------------------------------------------
; 277 | else if(t>200.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |277| 
        cmpf      2.0000000000e+02,f0   ; |277| 
        ble       L90                   ; |277| 
;*      Branch Occurs to L90            ; |277| 
	.line	63
;----------------------------------------------------------------------
; 278 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |278| 
        ldiu      1,r2                  ; |278| 
        ldiu      @CL22,r0              ; |278| 
        callu     r0                    ; far call to _API_STATUS	; |278| 
                                        ; |278| Far Call Occurs
        bu        L90                   ; |215| 
;*      Branch Occurs to L90            ; |215| 
L73:        
	.line	65
;----------------------------------------------------------------------
; 280 | else if(p<55.0)                                                        
; 282 |         //if(t>200.0) // FEB 2, 2022 : DKOH : bug#112                  
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |280| 
        cmpf      5.5000000000e+01,f0   ; |280| 
        bge       L79                   ; |280| 
;*      Branch Occurs to L79            ; |280| 
	.line	68
;----------------------------------------------------------------------
; 283 | if(t>400.0) // FEB 2, 2022 : DKOH : bug#112                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |283| 
        cmpf      @CL24,f0              ; |283| 
        ble       L77                   ; |283| 
;*      Branch Occurs to L77            ; |283| 
	.line	70
;----------------------------------------------------------------------
; 285 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |285| 
        ldiu      2,r2                  ; |285| 
        ldiu      @CL22,r0              ; |285| 
        callu     r0                    ; far call to _API_STATUS	; |285| 
                                        ; |285| Far Call Occurs
	.line	71
;----------------------------------------------------------------------
; 286 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	73
;----------------------------------------------------------------------
; 288 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |288| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |288| 
;*      Branch Occurs to L173           ; |288| 
L77:        
	.line	75
;----------------------------------------------------------------------
; 290 | else if(t>150.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |290| 
        cmpf      1.5000000000e+02,f0   ; |290| 
        ble       L90                   ; |290| 
;*      Branch Occurs to L90            ; |290| 
	.line	76
;----------------------------------------------------------------------
; 291 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |291| 
        ldiu      1,r2                  ; |291| 
        ldiu      @CL22,r0              ; |291| 
        callu     r0                    ; far call to _API_STATUS	; |291| 
                                        ; |291| Far Call Occurs
        bu        L90                   ; |215| 
;*      Branch Occurs to L90            ; |215| 
L79:        
	.line	78
;----------------------------------------------------------------------
; 293 | else if(p<=100.0)                                                      
; 295 |         //if(t>200.0) // FEB 2, 2022 : DKOH : bug#112                  
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |293| 
        cmpf      1.0000000000e+02,f0   ; |293| 
        bgt       L84                   ; |293| 
;*      Branch Occurs to L84            ; |293| 
	.line	81
;----------------------------------------------------------------------
; 296 | if(t>400.0) // FEB 2, 2022 : DKOH : bug#112                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |296| 
        cmpf      @CL24,f0              ; |296| 
        ble       L83                   ; |296| 
;*      Branch Occurs to L83            ; |296| 
	.line	83
;----------------------------------------------------------------------
; 298 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |298| 
        ldiu      2,r2                  ; |298| 
        ldiu      @CL22,r0              ; |298| 
        callu     r0                    ; far call to _API_STATUS	; |298| 
                                        ; |298| Far Call Occurs
	.line	84
;----------------------------------------------------------------------
; 299 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	86
;----------------------------------------------------------------------
; 301 | return API_error_num;                                                  
; 303 | else                                                                   
;----------------------------------------------------------------------
        bud       L173                  ; |301| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |301| 
;*      Branch Occurs to L173           ; |301| 
L83:        
	.line	89
;----------------------------------------------------------------------
; 304 | API_STATUS(fcidx, API_extrapolate);                                    
; 306 | ////////// ADDED BY DKOH JAN 12, 2022 BUG#112 /////////////            
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |304| 
        ldiu      1,r2                  ; |304| 
        ldiu      @CL22,r0              ; |304| 
        callu     r0                    ; far call to _API_STATUS	; |304| 
                                        ; |304| Far Call Occurs
        bu        L90                   ; |215| 
;*      Branch Occurs to L90            ; |215| 
L84:        
	.line	92
;----------------------------------------------------------------------
; 307 | else if(p<=183.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |307| 
        cmpf      1.8300000000e+02,f0   ; |307| 
        bgt       L90                   ; |307| 
;*      Branch Occurs to L90            ; |307| 
	.line	94
;----------------------------------------------------------------------
; 309 | if(t>400.0) // FEB 2, 2022 : DKOH : bug#112                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |309| 
        cmpf      @CL24,f0              ; |309| 
        ble       L88                   ; |309| 
;*      Branch Occurs to L88            ; |309| 
	.line	96
;----------------------------------------------------------------------
; 311 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |311| 
        ldiu      2,r2                  ; |311| 
        ldiu      @CL22,r0              ; |311| 
        callu     r0                    ; far call to _API_STATUS	; |311| 
                                        ; |311| Far Call Occurs
	.line	97
;----------------------------------------------------------------------
; 312 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	99
;----------------------------------------------------------------------
; 314 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |314| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |314| 
;*      Branch Occurs to L173           ; |314| 
L88:        
	.line	101
;----------------------------------------------------------------------
; 316 | else if(t>200.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |316| 
        cmpf      2.0000000000e+02,f0   ; |316| 
        ble       L90                   ; |316| 
;*      Branch Occurs to L90            ; |316| 
	.line	102
;----------------------------------------------------------------------
; 317 | API_STATUS(fcidx, API_extrapolate);                                    
; 319 | ////////// ADDED BY DKOH JAN 12, 2022 BUG#112 /////////////            
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |317| 
        ldiu      1,r2                  ; |317| 
        ldiu      @CL22,r0              ; |317| 
        callu     r0                    ; far call to _API_STATUS	; |317| 
                                        ; |317| Far Call Occurs
L90:        
	.line	106
;----------------------------------------------------------------------
; 321 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |321| 
        ldiu      0,r0                  ; |321| 
        sti       r0,*ar0               ; |321| 
	.line	107
;----------------------------------------------------------------------
; 322 | k0               = 341.0957;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldfu      @CL25,f0              ; |322| 
        stf       f0,*+fp(7)            ; |322| 
	.line	108
;----------------------------------------------------------------------
; 323 | k1               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |323| 
        stf       f0,*+fp(8)            ; |323| 
	.line	109
;----------------------------------------------------------------------
; 324 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |324| 
        stf       f0,*+fp(9)            ; |324| 
	.line	111
;----------------------------------------------------------------------
; 326 | break;                                                                 
; 328 | case 'B':                                                              
;----------------------------------------------------------------------
        bu        L170                  ; |326| 
;*      Branch Occurs to L170           ; |326| 
L91:        
	.line	115
;----------------------------------------------------------------------
; 330 | if ((t<0.0) || (p<0.0) || (p>85.0))                                    
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |330| 
        cmpf      0.0000000000e+00,f0   ; |330| 
        blt       L94                   ; |330| 
;*      Branch Occurs to L94            ; |330| 
        ldfu      *+fp(5),f0            ; |330| 
        cmpf      0.0000000000e+00,f0   ; |330| 
        blt       L94                   ; |330| 
;*      Branch Occurs to L94            ; |330| 
        cmpf      8.5000000000e+01,f0   ; |330| 
        ble       L96                   ; |330| 
;*      Branch Occurs to L96            ; |330| 
L94:        
	.line	117
;----------------------------------------------------------------------
; 332 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |332| 
        ldiu      2,r2                  ; |332| 
        ldiu      @CL22,r0              ; |332| 
        callu     r0                    ; far call to _API_STATUS	; |332| 
                                        ; |332| Far Call Occurs
	.line	118
;----------------------------------------------------------------------
; 333 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	120
;----------------------------------------------------------------------
; 335 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |335| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |335| 
;*      Branch Occurs to L173           ; |335| 
L96:        
	.line	122
;----------------------------------------------------------------------
; 337 | else if (p<40.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |337| 
        cmpf      4.0000000000e+01,f0   ; |337| 
        bge       L102                  ; |337| 
;*      Branch Occurs to L102           ; |337| 
	.line	124
;----------------------------------------------------------------------
; 339 | if (t>300.0)                                                           
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldfu      *+fp(4),f0            ; |339| 
        cmpf      @CL26,f0              ; |339| 
        ble       L100                  ; |339| 
;*      Branch Occurs to L100           ; |339| 
	.line	126
;----------------------------------------------------------------------
; 341 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |341| 
        ldiu      2,r2                  ; |341| 
        ldiu      @CL22,r0              ; |341| 
        callu     r0                    ; far call to _API_STATUS	; |341| 
                                        ; |341| Far Call Occurs
	.line	127
;----------------------------------------------------------------------
; 342 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	129
;----------------------------------------------------------------------
; 344 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |344| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |344| 
;*      Branch Occurs to L173           ; |344| 
L100:        
	.line	131
;----------------------------------------------------------------------
; 346 | else if (t>250.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |346| 
        cmpf      2.5000000000e+02,f0   ; |346| 
        ble       L114                  ; |346| 
;*      Branch Occurs to L114           ; |346| 
	.line	132
;----------------------------------------------------------------------
; 347 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |347| 
        ldiu      1,r2                  ; |347| 
        ldiu      @CL22,r0              ; |347| 
        callu     r0                    ; far call to _API_STATUS	; |347| 
                                        ; |347| Far Call Occurs
        bu        L114                  ; |215| 
;*      Branch Occurs to L114           ; |215| 
L102:        
	.line	134
;----------------------------------------------------------------------
; 349 | else if (p<50.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |349| 
        cmpf      5.0000000000e+01,f0   ; |349| 
        bge       L108                  ; |349| 
;*      Branch Occurs to L108           ; |349| 
	.line	136
;----------------------------------------------------------------------
; 351 | if (t>250.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |351| 
        cmpf      2.5000000000e+02,f0   ; |351| 
        ble       L106                  ; |351| 
;*      Branch Occurs to L106           ; |351| 
	.line	138
;----------------------------------------------------------------------
; 353 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |353| 
        ldiu      2,r2                  ; |353| 
        ldiu      @CL22,r0              ; |353| 
        callu     r0                    ; far call to _API_STATUS	; |353| 
                                        ; |353| Far Call Occurs
	.line	139
;----------------------------------------------------------------------
; 354 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	140
;----------------------------------------------------------------------
; 355 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |355| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |355| 
;*      Branch Occurs to L173           ; |355| 
L106:        
	.line	142
;----------------------------------------------------------------------
; 357 | else if (t>200.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |357| 
        cmpf      2.0000000000e+02,f0   ; |357| 
        ble       L114                  ; |357| 
;*      Branch Occurs to L114           ; |357| 
	.line	143
;----------------------------------------------------------------------
; 358 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |358| 
        ldiu      1,r2                  ; |358| 
        ldiu      @CL22,r0              ; |358| 
        callu     r0                    ; far call to _API_STATUS	; |358| 
                                        ; |358| Far Call Occurs
        bu        L114                  ; |215| 
;*      Branch Occurs to L114           ; |215| 
L108:        
	.line	145
;----------------------------------------------------------------------
; 360 | else if (p<=85.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |360| 
        cmpf      8.5000000000e+01,f0   ; |360| 
        bgt       L114                  ; |360| 
;*      Branch Occurs to L114           ; |360| 
	.line	147
;----------------------------------------------------------------------
; 362 | if (t>200.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |362| 
        cmpf      2.0000000000e+02,f0   ; |362| 
        ble       L112                  ; |362| 
;*      Branch Occurs to L112           ; |362| 
	.line	149
;----------------------------------------------------------------------
; 364 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |364| 
        ldiu      2,r2                  ; |364| 
        ldiu      @CL22,r0              ; |364| 
        callu     r0                    ; far call to _API_STATUS	; |364| 
                                        ; |364| Far Call Occurs
	.line	150
;----------------------------------------------------------------------
; 365 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	152
;----------------------------------------------------------------------
; 367 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |367| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |367| 
;*      Branch Occurs to L173           ; |367| 
L112:        
	.line	154
;----------------------------------------------------------------------
; 369 | else if (t>150.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |369| 
        cmpf      1.5000000000e+02,f0   ; |369| 
        ble       L114                  ; |369| 
;*      Branch Occurs to L114           ; |369| 
	.line	155
;----------------------------------------------------------------------
; 370 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |370| 
        ldiu      1,r2                  ; |370| 
        ldiu      @CL22,r0              ; |370| 
        callu     r0                    ; far call to _API_STATUS	; |370| 
                                        ; |370| Far Call Occurs
L114:        
	.line	158
;----------------------------------------------------------------------
; 373 | if (k_set[0]==-1)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |373| 
        ldiu      *ar0,r0               ; |373| 
        cmpi      -1,r0                 ; |373| 
        bne       L134                  ; |373| 
;*      Branch Occurs to L134           ; |373| 
	.line	160
;----------------------------------------------------------------------
; 375 | if ((p>=0.0) && (p<37.0))                                              
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |375| 
        cmpf      0.0000000000e+00,f0   ; |375| 
        blt       L118                  ; |375| 
;*      Branch Occurs to L118           ; |375| 
        cmpf      3.7000000000e+01,f0   ; |375| 
        bge       L118                  ; |375| 
;*      Branch Occurs to L118           ; |375| 
	.line	161
;----------------------------------------------------------------------
; 376 | k_set[0] = 1;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |376| 
        sti       r0,*ar0               ; |376| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L118:        
	.line	162
;----------------------------------------------------------------------
; 377 | else if ((p>=37.0) && (p<48.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |377| 
        cmpf      3.7000000000e+01,f0   ; |377| 
        blt       L121                  ; |377| 
;*      Branch Occurs to L121           ; |377| 
        cmpf      4.8000000000e+01,f0   ; |377| 
        bge       L121                  ; |377| 
;*      Branch Occurs to L121           ; |377| 
	.line	163
;----------------------------------------------------------------------
; 378 | k_set[0] = 2;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |378| 
        ldiu      2,r0                  ; |378| 
        sti       r0,*ar0               ; |378| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L121:        
	.line	164
;----------------------------------------------------------------------
; 379 | else if ((p>=48.0) && (p<52.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |379| 
        cmpf      4.8000000000e+01,f0   ; |379| 
        blt       L124                  ; |379| 
;*      Branch Occurs to L124           ; |379| 
        cmpf      5.2000000000e+01,f0   ; |379| 
        bge       L124                  ; |379| 
;*      Branch Occurs to L124           ; |379| 
	.line	165
;----------------------------------------------------------------------
; 380 | k_set[0] = 3;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |380| 
        ldiu      3,r0                  ; |380| 
        sti       r0,*ar0               ; |380| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L124:        
	.line	166
;----------------------------------------------------------------------
; 381 | else if ((p>=52.0) && (p<=85.0))                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |381| 
        cmpf      5.2000000000e+01,f0   ; |381| 
        blt       L127                  ; |381| 
;*      Branch Occurs to L127           ; |381| 
        cmpf      8.5000000000e+01,f0   ; |381| 
        bgt       L127                  ; |381| 
;*      Branch Occurs to L127           ; |381| 
	.line	167
;----------------------------------------------------------------------
; 382 | k_set[0] = 4;                                                          
; 383 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |382| 
        ldiu      4,r0                  ; |382| 
        sti       r0,*ar0               ; |382| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L127:        
	.line	169
;----------------------------------------------------------------------
; 384 | k_set[0] = -1;                                                         
; 387 | switch (k_set[0])                                                      
; 389 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |384| 
        ldiu      -1,r0                 ; |384| 
        sti       r0,*ar0               ; |384| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L128:        
	.line	176
;----------------------------------------------------------------------
; 391 | k0 = 103.8720;                                                         
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldfu      @CL27,f0              ; |391| 
        stf       f0,*+fp(7)            ; |391| 
	.line	177
;----------------------------------------------------------------------
; 392 | k1 = 0.2701;                                                           
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldfu      @CL28,f0              ; |392| 
        stf       f0,*+fp(8)            ; |392| 
	.line	178
;----------------------------------------------------------------------
; 393 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |393| 
        stf       f0,*+fp(9)            ; |393| 
	.line	180
;----------------------------------------------------------------------
; 395 | break;                                                                 
; 397 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L170                  ; |395| 
;*      Branch Occurs to L170           ; |395| 
L129:        
	.line	184
;----------------------------------------------------------------------
; 399 | k0 = 330.3010;                                                         
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldfu      @CL29,f0              ; |399| 
        stf       f0,*+fp(7)            ; |399| 
	.line	185
;----------------------------------------------------------------------
; 400 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |400| 
        stf       f0,*+fp(8)            ; |400| 
	.line	186
;----------------------------------------------------------------------
; 401 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |401| 
        stf       f0,*+fp(9)            ; |401| 
	.line	188
;----------------------------------------------------------------------
; 403 | break;                                                                 
; 405 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L170                  ; |403| 
;*      Branch Occurs to L170           ; |403| 
L130:        
	.line	192
;----------------------------------------------------------------------
; 407 | k0 = 1489.0670;                                                        
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldfu      @CL30,f0              ; |407| 
        stf       f0,*+fp(7)            ; |407| 
	.line	193
;----------------------------------------------------------------------
; 408 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |408| 
        stf       f0,*+fp(8)            ; |408| 
	.line	194
;----------------------------------------------------------------------
; 409 | k2 = -0.00186840;                                                      
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldfu      @CL31,f0              ; |409| 
        stf       f0,*+fp(9)            ; |409| 
	.line	196
;----------------------------------------------------------------------
; 411 | break;                                                                 
; 413 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L170                  ; |411| 
;*      Branch Occurs to L170           ; |411| 
L131:        
	.line	200
;----------------------------------------------------------------------
; 415 | k0 = 192.4571;                                                         
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldfu      @CL32,f0              ; |415| 
        stf       f0,*+fp(7)            ; |415| 
	.line	201
;----------------------------------------------------------------------
; 416 | k1 = 0.2438;                                                           
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldfu      @CL33,f0              ; |416| 
        stf       f0,*+fp(8)            ; |416| 
	.line	202
;----------------------------------------------------------------------
; 417 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |417| 
        stf       f0,*+fp(9)            ; |417| 
	.line	204
;----------------------------------------------------------------------
; 419 | break;                                                                 
; 421 | case 0:                                                                
; 422 | default:                                                               
;----------------------------------------------------------------------
        bu        L170                  ; |419| 
;*      Branch Occurs to L170           ; |419| 
L132:        
	.line	209
;----------------------------------------------------------------------
; 424 | k_set[0] = -1;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |424| 
        ldiu      -1,r0                 ; |424| 
        sti       r0,*ar0               ; |424| 
	.line	210
;----------------------------------------------------------------------
; 425 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	212
;----------------------------------------------------------------------
; 427 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |427| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |427| 
;*      Branch Occurs to L173           ; |427| 
L134:        
	.line	172
        ldiu      *+fp(3),ar0           ; |387| 
        ldiu      *ar0,r0               ; |387| 
        cmpi      0,r0                  ; |387| 
        beq       L132                  ; |387| 
;*      Branch Occurs to L132           ; |387| 
        cmpi      1,r0                  ; |387| 
        beq       L128                  ; |387| 
;*      Branch Occurs to L128           ; |387| 
        cmpi      2,r0                  ; |387| 
        beq       L129                  ; |387| 
;*      Branch Occurs to L129           ; |387| 
        cmpi      3,r0                  ; |387| 
        beq       L130                  ; |387| 
;*      Branch Occurs to L130           ; |387| 
        cmpi      4,r0                  ; |387| 
        beq       L131                  ; |387| 
;*      Branch Occurs to L131           ; |387| 
        bu        L132                  ; |387| 
;*      Branch Occurs to L132           ; |387| 
	.line	216
;----------------------------------------------------------------------
; 431 | break;                                                                 
; 433 | case 'C':                                                              
;----------------------------------------------------------------------
L141:        
	.line	220
;----------------------------------------------------------------------
; 435 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |435| 
        ldiu      0,r0                  ; |435| 
        sti       r0,*ar0               ; |435| 
	.line	221
;----------------------------------------------------------------------
; 436 | a = f->a * 10e6;                                                       
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      *+fp(13),ir0          ; |436| 
        ldiu      399,ar0               ; |436| 
        ldfu      @CL34,f0              ; |436| 
        mpyf3     *+ar0(ir0),f0,f0      ; |436| 
        stf       f0,*+fp(6)            ; |436| 
	.line	223
;----------------------------------------------------------------------
; 438 | if ((t<0.0) || (a<270.0) || (a>930.0))                                 
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |438| 
        cmpf      0.0000000000e+00,f0   ; |438| 
        blt       L144                  ; |438| 
;*      Branch Occurs to L144           ; |438| 
        ldp       @CL35,DP
        ldfu      *+fp(6),f0            ; |438| 
        cmpf      @CL35,f0              ; |438| 
        blt       L144                  ; |438| 
;*      Branch Occurs to L144           ; |438| 
        ldp       @CL36,DP
        cmpf      @CL36,f0              ; |438| 
        ble       L146                  ; |438| 
;*      Branch Occurs to L146           ; |438| 
L144:        
	.line	225
;----------------------------------------------------------------------
; 440 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |440| 
        ldiu      2,r2                  ; |440| 
        ldiu      @CL22,r0              ; |440| 
        callu     r0                    ; far call to _API_STATUS	; |440| 
                                        ; |440| Far Call Occurs
	.line	226
;----------------------------------------------------------------------
; 441 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	228
;----------------------------------------------------------------------
; 443 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |443| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |443| 
;*      Branch Occurs to L173           ; |443| 
L146:        
	.line	230
;----------------------------------------------------------------------
; 445 | else if ((a<510.0) && (t>300.0))                                       
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldfu      *+fp(6),f0            ; |445| 
        cmpf      @CL37,f0              ; |445| 
        bge       L150                  ; |445| 
;*      Branch Occurs to L150           ; |445| 
        ldp       @CL26,DP
        ldfu      *+fp(4),f0            ; |445| 
        cmpf      @CL26,f0              ; |445| 
        ble       L150                  ; |445| 
;*      Branch Occurs to L150           ; |445| 
	.line	232
;----------------------------------------------------------------------
; 447 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |447| 
        ldiu      2,r2                  ; |447| 
        ldiu      @CL22,r0              ; |447| 
        callu     r0                    ; far call to _API_STATUS	; |447| 
                                        ; |447| Far Call Occurs
	.line	233
;----------------------------------------------------------------------
; 448 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	235
;----------------------------------------------------------------------
; 450 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |450| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |450| 
;*      Branch Occurs to L173           ; |450| 
L150:        
	.line	237
;----------------------------------------------------------------------
; 452 | else if ((a<530.0) && (t>250.0))                                       
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldfu      *+fp(6),f0            ; |452| 
        cmpf      @CL38,f0              ; |452| 
        bge       L154                  ; |452| 
;*      Branch Occurs to L154           ; |452| 
        ldfu      *+fp(4),f0            ; |452| 
        cmpf      2.5000000000e+02,f0   ; |452| 
        ble       L154                  ; |452| 
;*      Branch Occurs to L154           ; |452| 
	.line	239
;----------------------------------------------------------------------
; 454 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |454| 
        ldiu      2,r2                  ; |454| 
        ldiu      @CL22,r0              ; |454| 
        callu     r0                    ; far call to _API_STATUS	; |454| 
                                        ; |454| Far Call Occurs
	.line	240
;----------------------------------------------------------------------
; 455 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	242
;----------------------------------------------------------------------
; 457 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |457| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |457| 
;*      Branch Occurs to L173           ; |457| 
L154:        
	.line	244
;----------------------------------------------------------------------
; 459 | else if ((a<=930.0) && (t>200.0))                                      
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldfu      *+fp(6),f0            ; |459| 
        cmpf      @CL36,f0              ; |459| 
        bgt       L157                  ; |459| 
;*      Branch Occurs to L157           ; |459| 
        ldfu      *+fp(4),f0            ; |459| 
        cmpf      2.0000000000e+02,f0   ; |459| 
        ble       L157                  ; |459| 
;*      Branch Occurs to L157           ; |459| 
	.line	246
;----------------------------------------------------------------------
; 461 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |461| 
        ldiu      2,r2                  ; |461| 
        ldiu      @CL22,r0              ; |461| 
        callu     r0                    ; far call to _API_STATUS	; |461| 
                                        ; |461| Far Call Occurs
	.line	247
;----------------------------------------------------------------------
; 462 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	249
;----------------------------------------------------------------------
; 464 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |464| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |464| 
;*      Branch Occurs to L173           ; |464| 
L157:        
	.line	252
;----------------------------------------------------------------------
; 467 | a = f->a;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |467| 
        ldiu      399,ar0               ; |467| 
        ldfu      *+ar0(ir0),f0         ; |467| 
        stf       f0,*+fp(6)            ; |467| 
	.line	254
;----------------------------------------------------------------------
; 469 | break;                                                                 
; 471 | case 'D':                                                              
; 472 | default:                                                               
;----------------------------------------------------------------------
        bu        L170                  ; |469| 
;*      Branch Occurs to L170           ; |469| 
L158:        
	.line	259
;----------------------------------------------------------------------
; 474 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |474| 
        ldiu      398,ar0               ; |474| 
        ldiu      17408,r0              ; |474| 
        sti       r0,*+ar0(ir0)         ; |474| 
	.line	261
;----------------------------------------------------------------------
; 476 | if ((p<-10.0) || (p>45.0) || (t<0.0) || (t>300.0))                     
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldfu      *+fp(5),f0            ; |476| 
        cmpf      @CL39,f0              ; |476| 
        blt       L162                  ; |476| 
;*      Branch Occurs to L162           ; |476| 
        cmpf      4.5000000000e+01,f0   ; |476| 
        bgt       L162                  ; |476| 
;*      Branch Occurs to L162           ; |476| 
        ldfu      *+fp(4),f0            ; |476| 
        cmpf      0.0000000000e+00,f0   ; |476| 
        blt       L162                  ; |476| 
;*      Branch Occurs to L162           ; |476| 
        ldp       @CL26,DP
        cmpf      @CL26,f0              ; |476| 
        ble       L163                  ; |476| 
;*      Branch Occurs to L163           ; |476| 
L162:        
	.line	263
;----------------------------------------------------------------------
; 478 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |478| 
        ldiu      2,r2                  ; |478| 
        ldiu      @CL22,r0              ; |478| 
        callu     r0                    ; far call to _API_STATUS	; |478| 
                                        ; |478| Far Call Occurs
	.line	264
;----------------------------------------------------------------------
; 479 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	266
;----------------------------------------------------------------------
; 481 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |481| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |481| 
;*      Branch Occurs to L173           ; |481| 
L163:        
	.line	269
;----------------------------------------------------------------------
; 484 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |484| 
        ldiu      0,r0                  ; |484| 
        sti       r0,*ar0               ; |484| 
	.line	270
;----------------------------------------------------------------------
; 485 | k0               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |485| 
        stf       f0,*+fp(7)            ; |485| 
	.line	271
;----------------------------------------------------------------------
; 486 | k1               = 0.34878;                                            
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldfu      @CL40,f0              ; |486| 
        stf       f0,*+fp(8)            ; |486| 
	.line	272
;----------------------------------------------------------------------
; 487 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |487| 
        stf       f0,*+fp(9)            ; |487| 
	.line	274
;----------------------------------------------------------------------
; 489 | break;                                                                 
;----------------------------------------------------------------------
        bu        L170                  ; |489| 
;*      Branch Occurs to L170           ; |489| 
L165:        
	.line	27
        ldiu      *+fp(13),ir0          ; |242| 
        ldiu      398,ar0               ; |242| 
        ldiu      -8,r0                 ; |242| 
        ash3      r0,*+ar0(ir0),r0      ; |242| 
        cmpi      65,r0                 ; |242| 
        beq       L56                   ; |242| 
;*      Branch Occurs to L56            ; |242| 
        cmpi      66,r0                 ; |242| 
        beq       L91                   ; |242| 
;*      Branch Occurs to L91            ; |242| 
        cmpi      67,r0                 ; |242| 
        beq       L141                  ; |242| 
;*      Branch Occurs to L141           ; |242| 
        cmpi      68,r0                 ; |242| 
        beq       L158                  ; |242| 
;*      Branch Occurs to L158           ; |242| 
        bu        L158                  ; |242| 
;*      Branch Occurs to L158           ; |242| 
L170:        
	.line	278
;----------------------------------------------------------------------
; 493 | t -= 60.0;                                                             
;----------------------------------------------------------------------
        ldfu      6.0000000000e+01,f0   ; |493| 
        subrf     *+fp(4),f0            ; |493| 
        stf       f0,*+fp(4)            ; |493| 
	.line	279
;----------------------------------------------------------------------
; 494 | p  = r;                                                                
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |494| 
        stf       f0,*+fp(5)            ; |494| 
	.line	281
;----------------------------------------------------------------------
; 496 | if ((f->API_TABLE>>8) != 'C')                                          
; 497 | {//a = (k0/(p*p)) + (k1/p) + k2;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |496| 
        ldiu      398,ar0               ; |496| 
        ldiu      -8,r0                 ; |496| 
        ash3      r0,*+ar0(ir0),r0      ; |496| 
        cmpi      67,r0                 ; |496| 
        beq       L172                  ; |496| 
;*      Branch Occurs to L172           ; |496| 
	.line	283
;----------------------------------------------------------------------
; 498 | t1 = truncate((k0/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |498| 
        ldfu      *+fp(5),f1            ; |498| 
        call      DIV_F30               ; |498| 
                                        ; |498| Call Occurs
        ldp       @CL41,DP
        ldfu      f0,f2                 ; |498| 
        ldiu      @CL41,r1              ; |498| 
        ldiu      8,ar2                 ; |498| 
        callu     r1                    ; far call to _truncate	; |498| 
                                        ; |498| Far Call Occurs
        stf       f0,*+fp(10)           ; |498| 
	.line	284
;----------------------------------------------------------------------
; 499 | t2 = truncate((t1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |499| 
        call      DIV_F30               ; |499| 
                                        ; |499| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,r1              ; |499| 
        ldiu      8,ar2                 ; |499| 
        ldfu      f0,f2                 ; |499| 
        callu     r1                    ; far call to _truncate	; |499| 
                                        ; |499| Far Call Occurs
        stf       f0,*+fp(11)           ; |499| 
	.line	285
;----------------------------------------------------------------------
; 500 | t3 = truncate((k1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |500| 
        ldfu      *+fp(8),f0            ; |500| 
        call      DIV_F30               ; |500| 
                                        ; |500| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,r1              ; |500| 
        ldfu      f0,f2                 ; |500| 
        ldiu      8,ar2                 ; |500| 
        callu     r1                    ; far call to _truncate	; |500| 
                                        ; |500| Far Call Occurs
        stf       f0,*+fp(12)           ; |500| 
	.line	286
;----------------------------------------------------------------------
; 501 | a  = sigfig((t2+t3+k2), 4);                                            
;----------------------------------------------------------------------
        ldfu      f0,f2
        addf      *+fp(11),f2           ; |501| 
        ldiu      4,ar2                 ; |501| 
        ldp       @CL42,DP
        addf      *+fp(9),f2            ; |501| 
        ldiu      @CL42,r0              ; |501| 
        callu     r0                    ; far call to _sigfig	; |501| 
                                        ; |501| Far Call Occurs
        stf       f0,*+fp(6)            ; |501| 
L172:        
	.line	289
;----------------------------------------------------------------------
; 504 | t = p * exp(-a*t*(1.0+0.8*a*t));                                       
;----------------------------------------------------------------------
        ldfu      *+fp(6),f1            ; |504| 
        ldp       @CL43,DP
        negf      *+fp(6),f0            ; |504| 
        mpyf      @CL43,f1              ; |504| 
        mpyf      *+fp(4),f0            ; |504| 
        ldp       @CL44,DP
        mpyf      *+fp(4),f1            ; |504| 
        ldiu      @CL44,r3              ; |504| 
        addf      1.0000000000e+00,f1   ; |504| 
        mpyf3     f1,f0,f2              ; |504| 
        callu     r3                    ; far call to _exp	; |504| 
                                        ; |504| Far Call Occurs
        mpyf      *+fp(5),f0            ; |504| 
        stf       f0,*+fp(4)            ; |504| 
	.line	290
;----------------------------------------------------------------------
; 505 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	292
;----------------------------------------------------------------------
; 507 | return t;                                                              
;----------------------------------------------------------------------
L173:        
	.line	293
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |508| 
        ldiu      *fp,fp                ; |508| 
                                        ; Restore SOE Registers
        pop       ar4                   ; |508| 
                                        ; Unallocate the Frame
        subi      15,sp                 ; |508| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	508,000001000h,13


	.sect	 ".text"

	.global	_API_15C_PT
	.sym	_API_15C_PT,_API_15C_PT,39,2,0
	.func	524
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
; 524 | double API_15C_PT(const int fcidx, const double r, int* k_set)         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      13,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 526 | double t;       /* temperature */                                      
; 528 | double p;       /* pressure (NOT! -DHA)*/                              
; 534 | double a;       /* case C variable */                                  
; 535 | double k0;      /* constant */                                         
; 536 | double k1;      /* constant */                                         
; 537 | double k2;      /* constant */                                         
; 538 | double t1;                                                             
; 539 | double t2;                                                             
; 540 | double t3;                                                             
; 541 | FLOW_COMP* f; /* flow computer */                                      
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |525| 
        stf       f2,*+fp(2)            ; |525| 
        sti       ar2,*+fp(1)           ; |525| 
	.line	20
;----------------------------------------------------------------------
; 543 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	22
;----------------------------------------------------------------------
; 545 | f = &FC[fcidx];                                                        
;----------------------------------------------------------------------
        ldiu      ar2,r0
        ldp       @CL20,DP
        mpyi      1336,r0               ; |545| 
        addi      @CL20,r0              ; |545| Unsigned
        sti       r0,*+fp(13)           ; |545| 
	.line	23
;----------------------------------------------------------------------
; 546 | t = Convert(f->T.class, f->T.calc_unit, u_temp_C, f->T.calc_val, 0, f->
;     | T.aux);                                                                
;----------------------------------------------------------------------
        ldiu      32,rc                 ; |546| 
        ldiu      r0,ar1
        ldp       @CL1,DP
        ldiu      r0,ar0
        ldiu      r0,ar2
        ldfu      *+ar1(53),f2          ; |546| 40b float hi half
        ldiu      r0,ar4
        ldiu      *+ar2(50),re          ; |546| 
        ldiu      *+ar0(58),r3          ; |546| 
        ldiu      *+ar4(59),ar2         ; |546| 
        ldiu      @CL1,r0               ; |546| 
        ldiu      *+ar1(54),r2          ; |546| 40b float lo half
        ldiu      0,rs                  ; |546| 
        callu     r0                    ; far call to _Convert	; |546| 
                                        ; |546| Far Call Occurs
        rnd       f0,f0                 ; |546| Demote to low precision
        stf       f0,*+fp(4)            ; |546| 
	.line	24
;----------------------------------------------------------------------
; 547 | p = r;                                                                 
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |547| 
        stf       f0,*+fp(5)            ; |547| 
	.line	26
;----------------------------------------------------------------------
; 549 | API_STATUS(fcidx, 0);                   /* clear API status bits */    
; 551 | switch (f->API_TABLE>>8)                                               
; 553 |         case 'A':                                                      
; 555 |                 //if ((t<-18.0) || (p<610.5) || (p>1075.0))            
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      @CL22,r0              ; |549| 
        ldiu      0,r2                  ; |549| 
        ldiu      *+fp(1),ar2           ; |549| 
        callu     r0                    ; far call to _API_STATUS	; |549| 
                                        ; |549| Far Call Occurs
        bu        L279                  ; |523| 
;*      Branch Occurs to L279           ; |523| 
L176:        
	.line	33
;----------------------------------------------------------------------
; 556 | if ((t<-18.0) || (p<450.0) || (p>1075.0))                              
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldfu      *+fp(4),f0            ; |556| 
        cmpf      @CL45,f0              ; |556| 
        blt       L179                  ; |556| 
;*      Branch Occurs to L179           ; |556| 
        ldp       @CL46,DP
        ldfu      *+fp(5),f0            ; |556| 
        cmpf      @CL46,f0              ; |556| 
        blt       L179                  ; |556| 
;*      Branch Occurs to L179           ; |556| 
        ldp       @CL47,DP
        cmpf      @CL47,f0              ; |556| 
        ble       L181                  ; |556| 
;*      Branch Occurs to L181           ; |556| 
L179:        
	.line	35
;----------------------------------------------------------------------
; 558 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |558| 
        ldiu      2,r2                  ; |558| 
        ldiu      @CL22,r0              ; |558| 
        callu     r0                    ; far call to _API_STATUS	; |558| 
                                        ; |558| Far Call Occurs
	.line	36
;----------------------------------------------------------------------
; 559 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	38
;----------------------------------------------------------------------
; 561 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |561| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |561| 
;*      Branch Occurs to L287           ; |561| 
L181:        
	.line	40
;----------------------------------------------------------------------
; 563 | else if (p<758.0)                                                      
; 565 |         //if (t>90.0)// FEB 2, 2022 : DKOH : bug#112                   
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldfu      *+fp(5),f0            ; |563| 
        cmpf      @CL48,f0              ; |563| 
        bge       L186                  ; |563| 
;*      Branch Occurs to L186           ; |563| 
	.line	43
;----------------------------------------------------------------------
; 566 | if (t>204.0) // FEB 2, 2022 : DKOH : bug#112                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |566| 
        cmpf      2.0400000000e+02,f0   ; |566| 
        ble       L185                  ; |566| 
;*      Branch Occurs to L185           ; |566| 
	.line	45
;----------------------------------------------------------------------
; 568 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |568| 
        ldiu      2,r2                  ; |568| 
        ldiu      @CL22,r0              ; |568| 
        callu     r0                    ; far call to _API_STATUS	; |568| 
                                        ; |568| Far Call Occurs
	.line	46
;----------------------------------------------------------------------
; 569 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	48
;----------------------------------------------------------------------
; 571 | return API_error_num;                                                  
; 573 | else                                                                   
;----------------------------------------------------------------------
        bud       L287                  ; |571| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |571| 
;*      Branch Occurs to L287           ; |571| 
L185:        
	.line	51
;----------------------------------------------------------------------
; 574 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |574| 
        ldiu      1,r2                  ; |574| 
        ldiu      @CL22,r0              ; |574| 
        callu     r0                    ; far call to _API_STATUS	; |574| 
                                        ; |574| Far Call Occurs
        bu        L204                  ; |523| 
;*      Branch Occurs to L204           ; |523| 
L186:        
	.line	53
;----------------------------------------------------------------------
; 576 | else if (p<778.5)                                                      
; 578 |         //if (t>90.0)// FEB 2, 2022 : DKOH : bug#112                   
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldfu      *+fp(5),f0            ; |576| 
        cmpf      @CL49,f0              ; |576| 
        bge       L192                  ; |576| 
;*      Branch Occurs to L192           ; |576| 
	.line	56
;----------------------------------------------------------------------
; 579 | if (t>204.0) // FEB 2, 2022 : DKOH : bug#112                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |579| 
        cmpf      2.0400000000e+02,f0   ; |579| 
        ble       L190                  ; |579| 
;*      Branch Occurs to L190           ; |579| 
	.line	58
;----------------------------------------------------------------------
; 581 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |581| 
        ldiu      2,r2                  ; |581| 
        ldiu      @CL22,r0              ; |581| 
        callu     r0                    ; far call to _API_STATUS	; |581| 
                                        ; |581| Far Call Occurs
	.line	59
;----------------------------------------------------------------------
; 582 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	61
;----------------------------------------------------------------------
; 584 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |584| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |584| 
;*      Branch Occurs to L287           ; |584| 
L190:        
	.line	63
;----------------------------------------------------------------------
; 586 | else if (t>60.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |586| 
        cmpf      6.0000000000e+01,f0   ; |586| 
        ble       L204                  ; |586| 
;*      Branch Occurs to L204           ; |586| 
	.line	64
;----------------------------------------------------------------------
; 587 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |587| 
        ldiu      1,r2                  ; |587| 
        ldiu      @CL22,r0              ; |587| 
        callu     r0                    ; far call to _API_STATUS	; |587| 
                                        ; |587| Far Call Occurs
        bu        L204                  ; |523| 
;*      Branch Occurs to L204           ; |523| 
L192:        
	.line	66
;----------------------------------------------------------------------
; 589 | else if (p<824.0)                                                      
; 591 |         //if (t>120.0) // FEB 2, 2022 : DKOH : bug#112                 
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldfu      *+fp(5),f0            ; |589| 
        cmpf      @CL50,f0              ; |589| 
        bge       L198                  ; |589| 
;*      Branch Occurs to L198           ; |589| 
	.line	69
;----------------------------------------------------------------------
; 592 | if (t>204.0) // FEB 2, 2022 : DKOH : bug#112                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |592| 
        cmpf      2.0400000000e+02,f0   ; |592| 
        ble       L196                  ; |592| 
;*      Branch Occurs to L196           ; |592| 
	.line	71
;----------------------------------------------------------------------
; 594 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |594| 
        ldiu      2,r2                  ; |594| 
        ldiu      @CL22,r0              ; |594| 
        callu     r0                    ; far call to _API_STATUS	; |594| 
                                        ; |594| Far Call Occurs
	.line	72
;----------------------------------------------------------------------
; 595 | GIEP; return API_error_num;                                            
;----------------------------------------------------------------------
	pop		ST			
        bud       L287                  ; |595| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |595| 
;*      Branch Occurs to L287           ; |595| 
L196:        
	.line	74
;----------------------------------------------------------------------
; 597 | else if (t>90.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |597| 
        cmpf      9.0000000000e+01,f0   ; |597| 
        ble       L204                  ; |597| 
;*      Branch Occurs to L204           ; |597| 
	.line	75
;----------------------------------------------------------------------
; 598 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |598| 
        ldiu      1,r2                  ; |598| 
        ldiu      @CL22,r0              ; |598| 
        callu     r0                    ; far call to _API_STATUS	; |598| 
                                        ; |598| Far Call Occurs
        bu        L204                  ; |523| 
;*      Branch Occurs to L204           ; |523| 
L198:        
	.line	77
;----------------------------------------------------------------------
; 600 | else if (p<=1075.0)                                                    
; 602 |         //if (t>150) // FEB 2, 2022 : DKOH : bug#112                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldfu      *+fp(5),f0            ; |600| 
        cmpf      @CL47,f0              ; |600| 
        bgt       L204                  ; |600| 
;*      Branch Occurs to L204           ; |600| 
	.line	80
;----------------------------------------------------------------------
; 603 | if (t>204.0) // FEB 2, 2022 : DKOH : bug#112                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |603| 
        cmpf      2.0400000000e+02,f0   ; |603| 
        ble       L202                  ; |603| 
;*      Branch Occurs to L202           ; |603| 
	.line	82
;----------------------------------------------------------------------
; 605 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |605| 
        ldiu      2,r2                  ; |605| 
        ldiu      @CL22,r0              ; |605| 
        callu     r0                    ; far call to _API_STATUS	; |605| 
                                        ; |605| Far Call Occurs
	.line	83
;----------------------------------------------------------------------
; 606 | GIEP; return API_error_num;                                            
;----------------------------------------------------------------------
	pop		ST			
        bud       L287                  ; |606| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |606| 
;*      Branch Occurs to L287           ; |606| 
L202:        
	.line	85
;----------------------------------------------------------------------
; 608 | else if (t>120.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |608| 
        cmpf      1.2000000000e+02,f0   ; |608| 
        ble       L204                  ; |608| 
;*      Branch Occurs to L204           ; |608| 
	.line	86
;----------------------------------------------------------------------
; 609 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |609| 
        ldiu      1,r2                  ; |609| 
        ldiu      @CL22,r0              ; |609| 
        callu     r0                    ; far call to _API_STATUS	; |609| 
                                        ; |609| Far Call Occurs
L204:        
	.line	89
;----------------------------------------------------------------------
; 612 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |612| 
        ldiu      0,r0                  ; |612| 
        sti       r0,*ar0               ; |612| 
	.line	90
;----------------------------------------------------------------------
; 613 | k0 = 613.9723;                                                         
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldfu      @CL51,f0              ; |613| 
        stf       f0,*+fp(7)            ; |613| 
	.line	91
;----------------------------------------------------------------------
; 614 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |614| 
        stf       f0,*+fp(8)            ; |614| 
	.line	92
;----------------------------------------------------------------------
; 615 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |615| 
        stf       f0,*+fp(9)            ; |615| 
	.line	94
;----------------------------------------------------------------------
; 617 | break;                                                                 
; 619 | case 'B':                                                              
;----------------------------------------------------------------------
        bu        L284                  ; |617| 
;*      Branch Occurs to L284           ; |617| 
L205:        
	.line	98
;----------------------------------------------------------------------
; 621 | if ((t<-18.0) || (p<653.0) || (p>1075.0))                              
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldfu      *+fp(4),f0            ; |621| 
        cmpf      @CL45,f0              ; |621| 
        blt       L208                  ; |621| 
;*      Branch Occurs to L208           ; |621| 
        ldp       @CL52,DP
        ldfu      *+fp(5),f0            ; |621| 
        cmpf      @CL52,f0              ; |621| 
        blt       L208                  ; |621| 
;*      Branch Occurs to L208           ; |621| 
        ldp       @CL47,DP
        cmpf      @CL47,f0              ; |621| 
        ble       L210                  ; |621| 
;*      Branch Occurs to L210           ; |621| 
L208:        
	.line	100
;----------------------------------------------------------------------
; 623 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |623| 
        ldiu      2,r2                  ; |623| 
        ldiu      @CL22,r0              ; |623| 
        callu     r0                    ; far call to _API_STATUS	; |623| 
                                        ; |623| Far Call Occurs
	.line	101
;----------------------------------------------------------------------
; 624 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	103
;----------------------------------------------------------------------
; 626 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |626| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |626| 
;*      Branch Occurs to L287           ; |626| 
L210:        
	.line	105
;----------------------------------------------------------------------
; 628 | else if (p<778.5)                                                      
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldfu      *+fp(5),f0            ; |628| 
        cmpf      @CL49,f0              ; |628| 
        bge       L216                  ; |628| 
;*      Branch Occurs to L216           ; |628| 
	.line	107
;----------------------------------------------------------------------
; 630 | if (t>90.0)                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |630| 
        cmpf      9.0000000000e+01,f0   ; |630| 
        ble       L214                  ; |630| 
;*      Branch Occurs to L214           ; |630| 
	.line	109
;----------------------------------------------------------------------
; 632 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |632| 
        ldiu      2,r2                  ; |632| 
        ldiu      @CL22,r0              ; |632| 
        callu     r0                    ; far call to _API_STATUS	; |632| 
                                        ; |632| Far Call Occurs
	.line	110
;----------------------------------------------------------------------
; 633 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	112
;----------------------------------------------------------------------
; 635 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |635| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |635| 
;*      Branch Occurs to L287           ; |635| 
L214:        
	.line	114
;----------------------------------------------------------------------
; 637 | else if (t>60.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |637| 
        cmpf      6.0000000000e+01,f0   ; |637| 
        ble       L228                  ; |637| 
;*      Branch Occurs to L228           ; |637| 
	.line	115
;----------------------------------------------------------------------
; 638 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |638| 
        ldiu      1,r2                  ; |638| 
        ldiu      @CL22,r0              ; |638| 
        callu     r0                    ; far call to _API_STATUS	; |638| 
                                        ; |638| Far Call Occurs
        bu        L228                  ; |523| 
;*      Branch Occurs to L228           ; |523| 
L216:        
	.line	117
;----------------------------------------------------------------------
; 640 | else if (p<824.0)                                                      
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldfu      *+fp(5),f0            ; |640| 
        cmpf      @CL50,f0              ; |640| 
        bge       L222                  ; |640| 
;*      Branch Occurs to L222           ; |640| 
	.line	119
;----------------------------------------------------------------------
; 642 | if (t>120.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |642| 
        cmpf      1.2000000000e+02,f0   ; |642| 
        ble       L220                  ; |642| 
;*      Branch Occurs to L220           ; |642| 
	.line	121
;----------------------------------------------------------------------
; 644 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |644| 
        ldiu      2,r2                  ; |644| 
        ldiu      @CL22,r0              ; |644| 
        callu     r0                    ; far call to _API_STATUS	; |644| 
                                        ; |644| Far Call Occurs
	.line	122
;----------------------------------------------------------------------
; 645 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	124
;----------------------------------------------------------------------
; 647 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |647| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |647| 
;*      Branch Occurs to L287           ; |647| 
L220:        
	.line	126
;----------------------------------------------------------------------
; 649 | else if (t>90.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |649| 
        cmpf      9.0000000000e+01,f0   ; |649| 
        ble       L228                  ; |649| 
;*      Branch Occurs to L228           ; |649| 
	.line	127
;----------------------------------------------------------------------
; 650 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |650| 
        ldiu      1,r2                  ; |650| 
        ldiu      @CL22,r0              ; |650| 
        callu     r0                    ; far call to _API_STATUS	; |650| 
                                        ; |650| Far Call Occurs
        bu        L228                  ; |523| 
;*      Branch Occurs to L228           ; |523| 
L222:        
	.line	129
;----------------------------------------------------------------------
; 652 | else if (p<=1075.0)                                                    
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldfu      *+fp(5),f0            ; |652| 
        cmpf      @CL47,f0              ; |652| 
        bgt       L228                  ; |652| 
;*      Branch Occurs to L228           ; |652| 
	.line	131
;----------------------------------------------------------------------
; 654 | if (t>150.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |654| 
        cmpf      1.5000000000e+02,f0   ; |654| 
        ble       L226                  ; |654| 
;*      Branch Occurs to L226           ; |654| 
	.line	133
;----------------------------------------------------------------------
; 656 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |656| 
        ldiu      2,r2                  ; |656| 
        ldiu      @CL22,r0              ; |656| 
        callu     r0                    ; far call to _API_STATUS	; |656| 
                                        ; |656| Far Call Occurs
	.line	134
;----------------------------------------------------------------------
; 657 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	136
;----------------------------------------------------------------------
; 659 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |659| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |659| 
;*      Branch Occurs to L287           ; |659| 
L226:        
	.line	138
;----------------------------------------------------------------------
; 661 | else if (t>120.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |661| 
        cmpf      1.2000000000e+02,f0   ; |661| 
        ble       L228                  ; |661| 
;*      Branch Occurs to L228           ; |661| 
	.line	139
;----------------------------------------------------------------------
; 662 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |662| 
        ldiu      1,r2                  ; |662| 
        ldiu      @CL22,r0              ; |662| 
        callu     r0                    ; far call to _API_STATUS	; |662| 
                                        ; |662| Far Call Occurs
L228:        
	.line	142
;----------------------------------------------------------------------
; 665 | if (k_set[0]==-1)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |665| 
        ldiu      *ar0,r0               ; |665| 
        cmpi      -1,r0                 ; |665| 
        bne       L248                  ; |665| 
;*      Branch Occurs to L248           ; |665| 
	.line	144
;----------------------------------------------------------------------
; 667 | if ((p>=653.0) && (p<770.0))                                           
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldfu      *+fp(5),f0            ; |667| 
        cmpf      @CL52,f0              ; |667| 
        blt       L232                  ; |667| 
;*      Branch Occurs to L232           ; |667| 
        ldp       @CL53,DP
        cmpf      @CL53,f0              ; |667| 
        bge       L232                  ; |667| 
;*      Branch Occurs to L232           ; |667| 
	.line	145
;----------------------------------------------------------------------
; 668 | k_set[0] = 1;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |668| 
        sti       r0,*ar0               ; |668| 
        bu        L248                  ; |523| 
;*      Branch Occurs to L248           ; |523| 
L232:        
	.line	146
;----------------------------------------------------------------------
; 669 | else if ((p>=770.0) && (p<788.0))                                      
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldfu      *+fp(5),f0            ; |669| 
        cmpf      @CL53,f0              ; |669| 
        blt       L235                  ; |669| 
;*      Branch Occurs to L235           ; |669| 
        ldp       @CL54,DP
        cmpf      @CL54,f0              ; |669| 
        bge       L235                  ; |669| 
;*      Branch Occurs to L235           ; |669| 
	.line	147
;----------------------------------------------------------------------
; 670 | k_set[0] = 2;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |670| 
        ldiu      2,r0                  ; |670| 
        sti       r0,*ar0               ; |670| 
        bu        L248                  ; |523| 
;*      Branch Occurs to L248           ; |523| 
L235:        
	.line	148
;----------------------------------------------------------------------
; 671 | else if ((p>=788.0) && (p<839.0))                                      
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldfu      *+fp(5),f0            ; |671| 
        cmpf      @CL54,f0              ; |671| 
        blt       L238                  ; |671| 
;*      Branch Occurs to L238           ; |671| 
        ldp       @CL55,DP
        cmpf      @CL55,f0              ; |671| 
        bge       L238                  ; |671| 
;*      Branch Occurs to L238           ; |671| 
	.line	149
;----------------------------------------------------------------------
; 672 | k_set[0] = 3;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |672| 
        ldiu      3,r0                  ; |672| 
        sti       r0,*ar0               ; |672| 
        bu        L248                  ; |523| 
;*      Branch Occurs to L248           ; |523| 
L238:        
	.line	150
;----------------------------------------------------------------------
; 673 | else if ((p>=839.0) && (p<=1075.0))                                    
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldfu      *+fp(5),f0            ; |673| 
        cmpf      @CL55,f0              ; |673| 
        blt       L241                  ; |673| 
;*      Branch Occurs to L241           ; |673| 
        ldp       @CL47,DP
        cmpf      @CL47,f0              ; |673| 
        bgt       L241                  ; |673| 
;*      Branch Occurs to L241           ; |673| 
	.line	151
;----------------------------------------------------------------------
; 674 | k_set[0] = 4;                                                          
; 675 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |674| 
        ldiu      4,r0                  ; |674| 
        sti       r0,*ar0               ; |674| 
        bu        L248                  ; |523| 
;*      Branch Occurs to L248           ; |523| 
L241:        
	.line	153
;----------------------------------------------------------------------
; 676 | k_set[0] = -1;                                                         
; 679 | switch (k_set[0])                                                      
; 681 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |676| 
        ldiu      -1,r0                 ; |676| 
        sti       r0,*ar0               ; |676| 
        bu        L248                  ; |523| 
;*      Branch Occurs to L248           ; |523| 
L242:        
	.line	160
;----------------------------------------------------------------------
; 683 | k0 = 346.4228;                                                         
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldfu      @CL56,f0              ; |683| 
        stf       f0,*+fp(7)            ; |683| 
	.line	161
;----------------------------------------------------------------------
; 684 | k1 = 0.4388;                                                           
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldfu      @CL57,f0              ; |684| 
        stf       f0,*+fp(8)            ; |684| 
	.line	162
;----------------------------------------------------------------------
; 685 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |685| 
        stf       f0,*+fp(9)            ; |685| 
	.line	164
;----------------------------------------------------------------------
; 687 | break;                                                                 
; 689 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L284                  ; |687| 
;*      Branch Occurs to L284           ; |687| 
L243:        
	.line	168
;----------------------------------------------------------------------
; 691 | k0 = 2680.3206;                                                        
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldfu      @CL58,f0              ; |691| 
        stf       f0,*+fp(7)            ; |691| 
	.line	169
;----------------------------------------------------------------------
; 692 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |692| 
        stf       f0,*+fp(8)            ; |692| 
	.line	170
;----------------------------------------------------------------------
; 693 | k2 = -0.00336312;                                                      
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldfu      @CL59,f0              ; |693| 
        stf       f0,*+fp(9)            ; |693| 
	.line	172
;----------------------------------------------------------------------
; 695 | break;                                                                 
; 697 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L284                  ; |695| 
;*      Branch Occurs to L284           ; |695| 
L244:        
	.line	176
;----------------------------------------------------------------------
; 699 | k0 = 594.5470;                                                         
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldfu      @CL60,f0              ; |699| 
        stf       f0,*+fp(7)            ; |699| 
	.line	177
;----------------------------------------------------------------------
; 700 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |700| 
        stf       f0,*+fp(8)            ; |700| 
	.line	178
;----------------------------------------------------------------------
; 701 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |701| 
        stf       f0,*+fp(9)            ; |701| 
	.line	180
;----------------------------------------------------------------------
; 703 | break;                                                                 
; 705 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L284                  ; |703| 
;*      Branch Occurs to L284           ; |703| 
L245:        
	.line	184
;----------------------------------------------------------------------
; 707 | k0 = 186.9696;                                                         
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldfu      @CL61,f0              ; |707| 
        stf       f0,*+fp(7)            ; |707| 
	.line	185
;----------------------------------------------------------------------
; 708 | k1 = 0.4862;                                                           
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldfu      @CL62,f0              ; |708| 
        stf       f0,*+fp(8)            ; |708| 
	.line	186
;----------------------------------------------------------------------
; 709 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |709| 
        stf       f0,*+fp(9)            ; |709| 
	.line	188
;----------------------------------------------------------------------
; 711 | break;                                                                 
; 713 | case 0:                                                                
; 714 | default:                                                               
;----------------------------------------------------------------------
        bu        L284                  ; |711| 
;*      Branch Occurs to L284           ; |711| 
L246:        
	.line	193
;----------------------------------------------------------------------
; 716 | k_set[0] = -1;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |716| 
        ldiu      -1,r0                 ; |716| 
        sti       r0,*ar0               ; |716| 
	.line	194
;----------------------------------------------------------------------
; 717 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	196
;----------------------------------------------------------------------
; 719 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |719| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |719| 
;*      Branch Occurs to L287           ; |719| 
L248:        
	.line	156
        ldiu      *+fp(3),ar0           ; |679| 
        ldiu      *ar0,r0               ; |679| 
        cmpi      0,r0                  ; |679| 
        beq       L246                  ; |679| 
;*      Branch Occurs to L246           ; |679| 
        cmpi      1,r0                  ; |679| 
        beq       L242                  ; |679| 
;*      Branch Occurs to L242           ; |679| 
        cmpi      2,r0                  ; |679| 
        beq       L243                  ; |679| 
;*      Branch Occurs to L243           ; |679| 
        cmpi      3,r0                  ; |679| 
        beq       L244                  ; |679| 
;*      Branch Occurs to L244           ; |679| 
        cmpi      4,r0                  ; |679| 
        beq       L245                  ; |679| 
;*      Branch Occurs to L245           ; |679| 
        bu        L246                  ; |679| 
;*      Branch Occurs to L246           ; |679| 
	.line	200
;----------------------------------------------------------------------
; 723 | break;                                                                 
; 725 | case 'C':                                                              
;----------------------------------------------------------------------
L255:        
	.line	204
;----------------------------------------------------------------------
; 727 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |727| 
        ldiu      0,r0                  ; |727| 
        sti       r0,*ar0               ; |727| 
	.line	205
;----------------------------------------------------------------------
; 728 | a                = f->a * 10e6;                                        
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      *+fp(13),ir0          ; |728| 
        ldiu      399,ar0               ; |728| 
        ldfu      @CL34,f0              ; |728| 
        mpyf3     *+ar0(ir0),f0,f0      ; |728| 
        stf       f0,*+fp(6)            ; |728| 
	.line	206
;----------------------------------------------------------------------
; 729 | t1               = (t*1.8) + 32.0;                                     
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldfu      @CL63,f0              ; |729| 
        mpyf      *+fp(4),f0            ; |729| 
        addf      3.2000000000e+01,f0   ; |729| 
        stf       f0,*+fp(10)           ; |729| 
	.line	208
;----------------------------------------------------------------------
; 731 | if ((t1<0.0) || (a<270.0) || (a>930.0))                                
;----------------------------------------------------------------------
        cmpf      0.0000000000e+00,f0   ; |731| 
        blt       L258                  ; |731| 
;*      Branch Occurs to L258           ; |731| 
        ldp       @CL35,DP
        ldfu      *+fp(6),f0            ; |731| 
        cmpf      @CL35,f0              ; |731| 
        blt       L258                  ; |731| 
;*      Branch Occurs to L258           ; |731| 
        ldp       @CL36,DP
        cmpf      @CL36,f0              ; |731| 
        ble       L260                  ; |731| 
;*      Branch Occurs to L260           ; |731| 
L258:        
	.line	210
;----------------------------------------------------------------------
; 733 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |733| 
        ldiu      2,r2                  ; |733| 
        ldiu      @CL22,r0              ; |733| 
        callu     r0                    ; far call to _API_STATUS	; |733| 
                                        ; |733| Far Call Occurs
	.line	211
;----------------------------------------------------------------------
; 734 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	213
;----------------------------------------------------------------------
; 736 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |736| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |736| 
;*      Branch Occurs to L287           ; |736| 
L260:        
	.line	215
;----------------------------------------------------------------------
; 738 | else if ((a<510.0) && (t1>300.0))                                      
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldfu      *+fp(6),f0            ; |738| 
        cmpf      @CL37,f0              ; |738| 
        bge       L264                  ; |738| 
;*      Branch Occurs to L264           ; |738| 
        ldp       @CL26,DP
        ldfu      *+fp(10),f0           ; |738| 
        cmpf      @CL26,f0              ; |738| 
        ble       L264                  ; |738| 
;*      Branch Occurs to L264           ; |738| 
	.line	217
;----------------------------------------------------------------------
; 740 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |740| 
        ldiu      2,r2                  ; |740| 
        ldiu      @CL22,r0              ; |740| 
        callu     r0                    ; far call to _API_STATUS	; |740| 
                                        ; |740| Far Call Occurs
	.line	218
;----------------------------------------------------------------------
; 741 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	220
;----------------------------------------------------------------------
; 743 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |743| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |743| 
;*      Branch Occurs to L287           ; |743| 
L264:        
	.line	222
;----------------------------------------------------------------------
; 745 | else if ((a<530.0) && (t1>250.0))                                      
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldfu      *+fp(6),f0            ; |745| 
        cmpf      @CL38,f0              ; |745| 
        bge       L268                  ; |745| 
;*      Branch Occurs to L268           ; |745| 
        ldfu      *+fp(10),f0           ; |745| 
        cmpf      2.5000000000e+02,f0   ; |745| 
        ble       L268                  ; |745| 
;*      Branch Occurs to L268           ; |745| 
	.line	224
;----------------------------------------------------------------------
; 747 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |747| 
        ldiu      2,r2                  ; |747| 
        ldiu      @CL22,r0              ; |747| 
        callu     r0                    ; far call to _API_STATUS	; |747| 
                                        ; |747| Far Call Occurs
	.line	225
;----------------------------------------------------------------------
; 748 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	227
;----------------------------------------------------------------------
; 750 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |750| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |750| 
;*      Branch Occurs to L287           ; |750| 
L268:        
	.line	229
;----------------------------------------------------------------------
; 752 | else if ((a<=930.0) && (t1>200.0))                                     
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldfu      *+fp(6),f0            ; |752| 
        cmpf      @CL36,f0              ; |752| 
        bgt       L271                  ; |752| 
;*      Branch Occurs to L271           ; |752| 
        ldfu      *+fp(10),f0           ; |752| 
        cmpf      2.0000000000e+02,f0   ; |752| 
        ble       L271                  ; |752| 
;*      Branch Occurs to L271           ; |752| 
	.line	231
;----------------------------------------------------------------------
; 754 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |754| 
        ldiu      2,r2                  ; |754| 
        ldiu      @CL22,r0              ; |754| 
        callu     r0                    ; far call to _API_STATUS	; |754| 
                                        ; |754| Far Call Occurs
	.line	232
;----------------------------------------------------------------------
; 755 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	234
;----------------------------------------------------------------------
; 757 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |757| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |757| 
;*      Branch Occurs to L287           ; |757| 
L271:        
	.line	237
;----------------------------------------------------------------------
; 760 | a = f->a;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |760| 
        ldiu      399,ar0               ; |760| 
        ldfu      *+ar0(ir0),f0         ; |760| 
        stf       f0,*+fp(6)            ; |760| 
	.line	239
;----------------------------------------------------------------------
; 762 | break;                                                                 
; 764 | case 'D':                                                              
; 765 | default:                                                               
;----------------------------------------------------------------------
        bu        L284                  ; |762| 
;*      Branch Occurs to L284           ; |762| 
L272:        
	.line	244
;----------------------------------------------------------------------
; 767 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |767| 
        ldiu      398,ar0               ; |767| 
        ldiu      17408,r0              ; |767| 
        sti       r0,*+ar0(ir0)         ; |767| 
	.line	245
;----------------------------------------------------------------------
; 768 | p                        = kgm3_to_API(r);                             
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldfu      *+fp(2),f2            ; |768| 
        ldiu      @CL21,r0              ; |768| 
        callu     r0                    ; far call to _kgm3_to_API	; |768| 
                                        ; |768| Far Call Occurs
        stf       f0,*+fp(5)            ; |768| 
	.line	246
;----------------------------------------------------------------------
; 769 | t1                       = (t*1.8) + 32.0;                             
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldfu      @CL63,f0              ; |769| 
        mpyf      *+fp(4),f0            ; |769| 
        addf      3.2000000000e+01,f0   ; |769| 
        stf       f0,*+fp(10)           ; |769| 
	.line	248
;----------------------------------------------------------------------
; 771 | if ((p<-10.0) || (p>45.0) || (t1<0.0) || (t1>300.0))                   
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldfu      *+fp(5),f0            ; |771| 
        cmpf      @CL39,f0              ; |771| 
        blt       L276                  ; |771| 
;*      Branch Occurs to L276           ; |771| 
        cmpf      4.5000000000e+01,f0   ; |771| 
        bgt       L276                  ; |771| 
;*      Branch Occurs to L276           ; |771| 
        ldfu      *+fp(10),f0           ; |771| 
        cmpf      0.0000000000e+00,f0   ; |771| 
        blt       L276                  ; |771| 
;*      Branch Occurs to L276           ; |771| 
        ldp       @CL26,DP
        cmpf      @CL26,f0              ; |771| 
        ble       L277                  ; |771| 
;*      Branch Occurs to L277           ; |771| 
L276:        
	.line	250
;----------------------------------------------------------------------
; 773 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |773| 
        ldiu      2,r2                  ; |773| 
        ldiu      @CL22,r0              ; |773| 
        callu     r0                    ; far call to _API_STATUS	; |773| 
                                        ; |773| Far Call Occurs
	.line	251
;----------------------------------------------------------------------
; 774 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	253
;----------------------------------------------------------------------
; 776 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |776| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |776| 
;*      Branch Occurs to L287           ; |776| 
L277:        
	.line	256
;----------------------------------------------------------------------
; 779 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |779| 
        ldiu      0,r0                  ; |779| 
        sti       r0,*ar0               ; |779| 
	.line	257
;----------------------------------------------------------------------
; 780 | k0               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |780| 
        stf       f0,*+fp(7)            ; |780| 
	.line	258
;----------------------------------------------------------------------
; 781 | k1               = 0.6278;                                             
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldfu      @CL64,f0              ; |781| 
        stf       f0,*+fp(8)            ; |781| 
	.line	259
;----------------------------------------------------------------------
; 782 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |782| 
        stf       f0,*+fp(9)            ; |782| 
	.line	261
;----------------------------------------------------------------------
; 784 | break;                                                                 
;----------------------------------------------------------------------
        bu        L284                  ; |784| 
;*      Branch Occurs to L284           ; |784| 
L279:        
	.line	28
        ldiu      *+fp(13),ir0          ; |551| 
        ldiu      398,ar0               ; |551| 
        ldiu      -8,r0                 ; |551| 
        ash3      r0,*+ar0(ir0),r0      ; |551| 
        cmpi      65,r0                 ; |551| 
        beq       L176                  ; |551| 
;*      Branch Occurs to L176           ; |551| 
        cmpi      66,r0                 ; |551| 
        beq       L205                  ; |551| 
;*      Branch Occurs to L205           ; |551| 
        cmpi      67,r0                 ; |551| 
        beq       L255                  ; |551| 
;*      Branch Occurs to L255           ; |551| 
        cmpi      68,r0                 ; |551| 
        beq       L272                  ; |551| 
;*      Branch Occurs to L272           ; |551| 
        bu        L272                  ; |551| 
;*      Branch Occurs to L272           ; |551| 
L284:        
	.line	265
;----------------------------------------------------------------------
; 788 | t -= 15.0;                                                             
;----------------------------------------------------------------------
        ldfu      1.5000000000e+01,f0   ; |788| 
        subrf     *+fp(4),f0            ; |788| 
        stf       f0,*+fp(4)            ; |788| 
	.line	266
;----------------------------------------------------------------------
; 789 | p  = r;                                                                
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |789| 
        stf       f0,*+fp(5)            ; |789| 
	.line	268
;----------------------------------------------------------------------
; 791 | if ((f->API_TABLE>>8) != 'C')                                          
; 792 | {//a = (k0/(p*p)) + (k1/p) + k2;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |791| 
        ldiu      398,ar0               ; |791| 
        ldiu      -8,r0                 ; |791| 
        ash3      r0,*+ar0(ir0),r0      ; |791| 
        cmpi      67,r0                 ; |791| 
        beq       L286                  ; |791| 
;*      Branch Occurs to L286           ; |791| 
	.line	270
;----------------------------------------------------------------------
; 793 | t1 = truncate((k0/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |793| 
        ldfu      *+fp(5),f1            ; |793| 
        call      DIV_F30               ; |793| 
                                        ; |793| Call Occurs
        ldp       @CL41,DP
        ldfu      f0,f2                 ; |793| 
        ldiu      @CL41,r1              ; |793| 
        ldiu      8,ar2                 ; |793| 
        callu     r1                    ; far call to _truncate	; |793| 
                                        ; |793| Far Call Occurs
        stf       f0,*+fp(10)           ; |793| 
	.line	271
;----------------------------------------------------------------------
; 794 | t2 = truncate((t1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |794| 
        call      DIV_F30               ; |794| 
                                        ; |794| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,r1              ; |794| 
        ldiu      8,ar2                 ; |794| 
        ldfu      f0,f2                 ; |794| 
        callu     r1                    ; far call to _truncate	; |794| 
                                        ; |794| Far Call Occurs
        stf       f0,*+fp(11)           ; |794| 
	.line	272
;----------------------------------------------------------------------
; 795 | t3 = truncate((k1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |795| 
        ldfu      *+fp(8),f0            ; |795| 
        call      DIV_F30               ; |795| 
                                        ; |795| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,r1              ; |795| 
        ldfu      f0,f2                 ; |795| 
        ldiu      8,ar2                 ; |795| 
        callu     r1                    ; far call to _truncate	; |795| 
                                        ; |795| Far Call Occurs
        stf       f0,*+fp(12)           ; |795| 
	.line	273
;----------------------------------------------------------------------
; 796 | a  = sigfig((t2+t3+k2), 4);                                            
;----------------------------------------------------------------------
        ldfu      f0,f2
        addf      *+fp(11),f2           ; |796| 
        ldiu      4,ar2                 ; |796| 
        ldp       @CL42,DP
        addf      *+fp(9),f2            ; |796| 
        ldiu      @CL42,r0              ; |796| 
        callu     r0                    ; far call to _sigfig	; |796| 
                                        ; |796| Far Call Occurs
        stf       f0,*+fp(6)            ; |796| 
L286:        
	.line	276
;----------------------------------------------------------------------
; 799 | t = p * exp(-a*t*(1.0+0.8*a*t));                                       
;----------------------------------------------------------------------
        ldfu      *+fp(6),f1            ; |799| 
        ldp       @CL43,DP
        negf      *+fp(6),f0            ; |799| 
        mpyf      @CL43,f1              ; |799| 
        mpyf      *+fp(4),f0            ; |799| 
        ldp       @CL44,DP
        mpyf      *+fp(4),f1            ; |799| 
        ldiu      @CL44,r3              ; |799| 
        addf      1.0000000000e+00,f1   ; |799| 
        mpyf3     f1,f0,f2              ; |799| 
        callu     r3                    ; far call to _exp	; |799| 
                                        ; |799| Far Call Occurs
        mpyf      *+fp(5),f0            ; |799| 
        stf       f0,*+fp(4)            ; |799| 
	.line	278
;----------------------------------------------------------------------
; 801 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	279
;----------------------------------------------------------------------
; 802 | return t;                                                              
;----------------------------------------------------------------------
L287:        
	.line	280
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |803| 
        ldiu      *fp,fp                ; |803| 
                                        ; Restore SOE Registers
        pop       ar4                   ; |803| 
                                        ; Unallocate the Frame
        subi      15,sp                 ; |803| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	803,000001000h,13


	.sect	 ".text"

	.global	_API_PT_ST
	.sym	_API_PT_ST,_API_PT_ST,39,2,0
	.func	820
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
; 820 | double API_PT_ST(const int fcidx, const double r, const BOOL F60, const
;     |  BOOL RET_VCF)                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      16,sp
	.line	2
;----------------------------------------------------------------------
; 822 | double pini;    /* initial data */                                     
; 823 | double pn;              /* calculated data */                          
; 824 | double pnext;                                                          
; 825 | double a;               /* API @ process temperature */                
; 826 | double p;               /* process API */                              
; 827 | double vcf;                                                            
; 828 | int i;                  /* Counter */                                  
; 829 | int k, k0;              /* Constants */                                
; 830 | BOOL k_change;  /* Change constants? */                                
; 831 | BOOL cont;              /* Continue? */                                
; 832 | FLOW_COMP* f;   /* FC[fcidx] - Flow Computer @ index */                
;----------------------------------------------------------------------
        sti       rc,*+fp(4)            ; |821| 
        sti       r3,*+fp(3)            ; |821| 
        stf       f2,*+fp(2)            ; |821| 
        sti       ar2,*+fp(1)           ; |821| 
	.line	15
;----------------------------------------------------------------------
; 834 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	17
;----------------------------------------------------------------------
; 836 | i = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |836| 
        sti       r0,*+fp(11)           ; |836| 
	.line	18
;----------------------------------------------------------------------
; 837 | f = &FC[fcidx];                                                        
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      ar2,r0
        mpyi      1336,r0               ; |837| 
        addi      @CL20,r0              ; |837| Unsigned
        sti       r0,*+fp(16)           ; |837| 
	.line	19
;----------------------------------------------------------------------
; 838 | pini = r;                                                              
;----------------------------------------------------------------------
        ldfu      f2,f0
        stf       f0,*+fp(5)            ; |838| 
	.line	20
;----------------------------------------------------------------------
; 839 | pn = pini;                                                             
;----------------------------------------------------------------------
        stf       f0,*+fp(6)            ; |839| 
	.line	21
;----------------------------------------------------------------------
; 840 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |840| 
        stf       f0,*+fp(7)            ; |840| 
	.line	22
;----------------------------------------------------------------------
; 841 | k = -1;                                                                
; 843 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      -1,r0                 ; |841| 
        sti       r0,*+fp(12)           ; |841| 
L290:        
	.line	26
;----------------------------------------------------------------------
; 845 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |845| 
        addi      *+fp(11),r0           ; |845| 
        sti       r0,*+fp(11)           ; |845| 
	.line	28
;----------------------------------------------------------------------
; 847 | if (i>25)                                                              
;----------------------------------------------------------------------
        cmpi      25,r0                 ; |847| 
        ble       L292                  ; |847| 
;*      Branch Occurs to L292           ; |847| 
	.line	30
;----------------------------------------------------------------------
; 849 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |849| 
        ldiu      2,r2                  ; |849| 
        ldiu      @CL22,r0              ; |849| 
        callu     r0                    ; far call to _API_STATUS	; |849| 
                                        ; |849| Far Call Occurs
	.line	31
;----------------------------------------------------------------------
; 850 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |850| 
        stf       f0,*+fp(7)            ; |850| 
	.line	33
;----------------------------------------------------------------------
; 852 | break;                                                                 
;----------------------------------------------------------------------
        bu        L355                  ; |852| 
;*      Branch Occurs to L355           ; |852| 
L292:        
	.line	36
;----------------------------------------------------------------------
; 855 | k0 = k;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |855| 
        sti       r0,*+fp(13)           ; |855| 
	.line	38
;----------------------------------------------------------------------
; 857 | if (F60)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |857| 
        cmpi      0,r0                  ; |857| 
        beq       L294                  ; |857| 
;*      Branch Occurs to L294           ; |857| 
	.line	39
;----------------------------------------------------------------------
; 858 | a = API_60F_PT(fcidx, pn, &k);                                         
; 859 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      fp,r3                 ; |858| 
        ldiu      *+fp(1),ar2           ; |858| 
        ldfu      *+fp(6),f2            ; |858| 
        ldiu      @CL65,r0              ; |858| 
        addi      12,r3                 ; |858| 
        callu     r0                    ; far call to _API_60F_PT	; |858| 
                                        ; |858| Far Call Occurs
        stf       f0,*+fp(8)            ; |858| 
        bu        L295                  ; |819| 
;*      Branch Occurs to L295           ; |819| 
L294:        
	.line	41
;----------------------------------------------------------------------
; 860 | a = API_15C_PT(fcidx, pn, &k);                                         
;----------------------------------------------------------------------
        ldp       @CL66,DP
        ldiu      fp,r3                 ; |860| 
        ldiu      *+fp(1),ar2           ; |860| 
        ldfu      *+fp(6),f2            ; |860| 
        ldiu      @CL66,r0              ; |860| 
        addi      12,r3                 ; |860| 
        callu     r0                    ; far call to _API_15C_PT	; |860| 
                                        ; |860| Far Call Occurs
        stf       f0,*+fp(8)            ; |860| 
L295:        
	.line	43
;----------------------------------------------------------------------
; 862 | if (a==API_error_num)                                                  
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      *+fp(8),f0            ; |862| 
        cmpf      @CL23,f0              ; |862| 
        bne       L297                  ; |862| 
;*      Branch Occurs to L297           ; |862| 
	.line	45
;----------------------------------------------------------------------
; 864 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |864| 
        stf       f0,*+fp(7)            ; |864| 
	.line	47
;----------------------------------------------------------------------
; 866 | break;                                                                 
;----------------------------------------------------------------------
        bu        L355                  ; |866| 
;*      Branch Occurs to L355           ; |866| 
L297:        
	.line	50
;----------------------------------------------------------------------
; 869 | p                = kgm3_to_API(a);                                     
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldfu      *+fp(8),f2            ; |869| 
        ldiu      @CL21,r0              ; |869| 
        callu     r0                    ; far call to _kgm3_to_API	; |869| 
                                        ; |869| Far Call Occurs
        stf       f0,*+fp(9)            ; |869| 
	.line	51
;----------------------------------------------------------------------
; 870 | k_change = FALSE;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |870| 
        sti       r0,*+fp(14)           ; |870| 
	.line	52
;----------------------------------------------------------------------
; 871 | cont     = FALSE;                                                      
; 873 | switch (f->API_TABLE>>8)                                               
; 875 |         case 'A':       /* crude oil */                                
;----------------------------------------------------------------------
        sti       r0,*+fp(15)           ; |871| 
        bu        L345                  ; |819| 
;*      Branch Occurs to L345           ; |819| 
	.line	57
;----------------------------------------------------------------------
; 876 | break;                                                                 
; 877 | case 'B':                                                              
;----------------------------------------------------------------------
L299:        
	.line	60
;----------------------------------------------------------------------
; 879 | if (F60)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |879| 
        cmpi      0,r0                  ; |879| 
        beq       L320                  ; |879| 
;*      Branch Occurs to L320           ; |879| 
	.line	62
;----------------------------------------------------------------------
; 881 | if ((p>=0.0) && (p<37.0))                                              
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |881| 
        cmpf      0.0000000000e+00,f0   ; |881| 
        blt       L305                  ; |881| 
;*      Branch Occurs to L305           ; |881| 
        cmpf      3.7000000000e+01,f0   ; |881| 
        bge       L305                  ; |881| 
;*      Branch Occurs to L305           ; |881| 
	.line	64
;----------------------------------------------------------------------
; 883 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |883| 
        cmpi      *+fp(13),r0           ; |883| 
        beq       L340                  ; |883| 
;*      Branch Occurs to L340           ; |883| 
	.line	66
;----------------------------------------------------------------------
; 885 | k = 1;                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |885| 
        sti       r0,*+fp(12)           ; |885| 
	.line	68
;----------------------------------------------------------------------
; 887 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |887| 
        cmpi      -1,r0                 ; |887| 
        beq       L340                  ; |887| 
;*      Branch Occurs to L340           ; |887| 
	.line	69
;----------------------------------------------------------------------
; 888 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |888| 
        sti       r0,*+fp(14)           ; |888| 
        bu        L340                  ; |819| 
;*      Branch Occurs to L340           ; |819| 
L305:        
	.line	72
;----------------------------------------------------------------------
; 891 | else if ((p>=37.0) && (p<48.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |891| 
        cmpf      3.7000000000e+01,f0   ; |891| 
        blt       L310                  ; |891| 
;*      Branch Occurs to L310           ; |891| 
        cmpf      4.8000000000e+01,f0   ; |891| 
        bge       L310                  ; |891| 
;*      Branch Occurs to L310           ; |891| 
	.line	74
;----------------------------------------------------------------------
; 893 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |893| 
        cmpi      *+fp(13),r0           ; |893| 
        beq       L340                  ; |893| 
;*      Branch Occurs to L340           ; |893| 
	.line	76
;----------------------------------------------------------------------
; 895 | k = 2;                                                                 
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |895| 
        sti       r0,*+fp(12)           ; |895| 
	.line	78
;----------------------------------------------------------------------
; 897 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |897| 
        cmpi      -1,r0                 ; |897| 
        beq       L340                  ; |897| 
;*      Branch Occurs to L340           ; |897| 
	.line	79
;----------------------------------------------------------------------
; 898 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |898| 
        sti       r0,*+fp(14)           ; |898| 
        bu        L340                  ; |819| 
;*      Branch Occurs to L340           ; |819| 
L310:        
	.line	82
;----------------------------------------------------------------------
; 901 | else if ((p>=48.0) && (p<52.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |901| 
        cmpf      4.8000000000e+01,f0   ; |901| 
        blt       L315                  ; |901| 
;*      Branch Occurs to L315           ; |901| 
        cmpf      5.2000000000e+01,f0   ; |901| 
        bge       L315                  ; |901| 
;*      Branch Occurs to L315           ; |901| 
	.line	84
;----------------------------------------------------------------------
; 903 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |903| 
        cmpi      *+fp(13),r0           ; |903| 
        beq       L340                  ; |903| 
;*      Branch Occurs to L340           ; |903| 
	.line	86
;----------------------------------------------------------------------
; 905 | k = 3;                                                                 
;----------------------------------------------------------------------
        ldiu      3,r0                  ; |905| 
        sti       r0,*+fp(12)           ; |905| 
	.line	88
;----------------------------------------------------------------------
; 907 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |907| 
        cmpi      -1,r0                 ; |907| 
        beq       L340                  ; |907| 
;*      Branch Occurs to L340           ; |907| 
	.line	89
;----------------------------------------------------------------------
; 908 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |908| 
        sti       r0,*+fp(14)           ; |908| 
        bu        L340                  ; |819| 
;*      Branch Occurs to L340           ; |819| 
L315:        
	.line	92
;----------------------------------------------------------------------
; 911 | else if ((p>=52.0) && (p<=85.0))                                       
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |911| 
        cmpf      5.2000000000e+01,f0   ; |911| 
        blt       L340                  ; |911| 
;*      Branch Occurs to L340           ; |911| 
        cmpf      8.5000000000e+01,f0   ; |911| 
        bgt       L340                  ; |911| 
;*      Branch Occurs to L340           ; |911| 
	.line	94
;----------------------------------------------------------------------
; 913 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |913| 
        cmpi      *+fp(13),r0           ; |913| 
        beq       L340                  ; |913| 
;*      Branch Occurs to L340           ; |913| 
	.line	96
;----------------------------------------------------------------------
; 915 | k = 4;                                                                 
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |915| 
        sti       r0,*+fp(12)           ; |915| 
	.line	98
;----------------------------------------------------------------------
; 917 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |917| 
        cmpi      -1,r0                 ; |917| 
        beq       L340                  ; |917| 
;*      Branch Occurs to L340           ; |917| 
	.line	99
;----------------------------------------------------------------------
; 918 | k_change = TRUE;                                                       
; 922 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |918| 
        sti       r0,*+fp(14)           ; |918| 
        bu        L340                  ; |819| 
;*      Branch Occurs to L340           ; |819| 
L320:        
	.line	105
;----------------------------------------------------------------------
; 924 | if ((p>=653.0) && (p<770.0))                                           
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldfu      *+fp(9),f0            ; |924| 
        cmpf      @CL52,f0              ; |924| 
        blt       L325                  ; |924| 
;*      Branch Occurs to L325           ; |924| 
        ldp       @CL53,DP
        cmpf      @CL53,f0              ; |924| 
        bge       L325                  ; |924| 
;*      Branch Occurs to L325           ; |924| 
	.line	107
;----------------------------------------------------------------------
; 926 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |926| 
        cmpi      *+fp(13),r0           ; |926| 
        beq       L350                  ; |926| 
;*      Branch Occurs to L350           ; |926| 
	.line	109
;----------------------------------------------------------------------
; 928 | k = 1;                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |928| 
        sti       r0,*+fp(12)           ; |928| 
	.line	111
;----------------------------------------------------------------------
; 930 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |930| 
        cmpi      -1,r0                 ; |930| 
        beq       L350                  ; |930| 
;*      Branch Occurs to L350           ; |930| 
	.line	112
;----------------------------------------------------------------------
; 931 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |931| 
        sti       r0,*+fp(14)           ; |931| 
        bu        L350                  ; |819| 
;*      Branch Occurs to L350           ; |819| 
L325:        
	.line	115
;----------------------------------------------------------------------
; 934 | else if ((p>=770.0) && (p<788.0))                                      
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldfu      *+fp(9),f0            ; |934| 
        cmpf      @CL53,f0              ; |934| 
        blt       L330                  ; |934| 
;*      Branch Occurs to L330           ; |934| 
        ldp       @CL54,DP
        cmpf      @CL54,f0              ; |934| 
        bge       L330                  ; |934| 
;*      Branch Occurs to L330           ; |934| 
	.line	117
;----------------------------------------------------------------------
; 936 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |936| 
        cmpi      *+fp(13),r0           ; |936| 
        beq       L350                  ; |936| 
;*      Branch Occurs to L350           ; |936| 
	.line	119
;----------------------------------------------------------------------
; 938 | k = 2;                                                                 
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |938| 
        sti       r0,*+fp(12)           ; |938| 
	.line	121
;----------------------------------------------------------------------
; 940 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |940| 
        cmpi      -1,r0                 ; |940| 
        beq       L350                  ; |940| 
;*      Branch Occurs to L350           ; |940| 
	.line	122
;----------------------------------------------------------------------
; 941 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |941| 
        sti       r0,*+fp(14)           ; |941| 
        bu        L350                  ; |819| 
;*      Branch Occurs to L350           ; |819| 
L330:        
	.line	125
;----------------------------------------------------------------------
; 944 | else if ((p>=788.0) && (p<839.0))                                      
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldfu      *+fp(9),f0            ; |944| 
        cmpf      @CL54,f0              ; |944| 
        blt       L335                  ; |944| 
;*      Branch Occurs to L335           ; |944| 
        ldp       @CL55,DP
        cmpf      @CL55,f0              ; |944| 
        bge       L335                  ; |944| 
;*      Branch Occurs to L335           ; |944| 
	.line	127
;----------------------------------------------------------------------
; 946 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |946| 
        cmpi      *+fp(13),r0           ; |946| 
        beq       L350                  ; |946| 
;*      Branch Occurs to L350           ; |946| 
	.line	129
;----------------------------------------------------------------------
; 948 | k = 3;                                                                 
;----------------------------------------------------------------------
        ldiu      3,r0                  ; |948| 
        sti       r0,*+fp(12)           ; |948| 
	.line	131
;----------------------------------------------------------------------
; 950 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |950| 
        cmpi      -1,r0                 ; |950| 
        beq       L350                  ; |950| 
;*      Branch Occurs to L350           ; |950| 
	.line	132
;----------------------------------------------------------------------
; 951 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |951| 
        sti       r0,*+fp(14)           ; |951| 
        bu        L350                  ; |819| 
;*      Branch Occurs to L350           ; |819| 
L335:        
	.line	135
;----------------------------------------------------------------------
; 954 | else if ((p>=839.0) && (p<=1075.0))                                    
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldfu      *+fp(9),f0            ; |954| 
        cmpf      @CL55,f0              ; |954| 
        blt       L350                  ; |954| 
;*      Branch Occurs to L350           ; |954| 
        ldp       @CL47,DP
        cmpf      @CL47,f0              ; |954| 
        bgt       L350                  ; |954| 
;*      Branch Occurs to L350           ; |954| 
	.line	137
;----------------------------------------------------------------------
; 956 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |956| 
        cmpi      *+fp(13),r0           ; |956| 
        beq       L350                  ; |956| 
;*      Branch Occurs to L350           ; |956| 
	.line	139
;----------------------------------------------------------------------
; 958 | k = 4;                                                                 
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |958| 
        sti       r0,*+fp(12)           ; |958| 
	.line	141
;----------------------------------------------------------------------
; 960 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |960| 
        cmpi      -1,r0                 ; |960| 
        beq       L350                  ; |960| 
;*      Branch Occurs to L350           ; |960| 
	.line	142
;----------------------------------------------------------------------
; 961 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |961| 
        sti       r0,*+fp(14)           ; |961| 
	.line	146
;----------------------------------------------------------------------
; 965 | break;                                                                 
;----------------------------------------------------------------------
        bu        L350                  ; |965| 
;*      Branch Occurs to L350           ; |965| 
L340:        
	.line	149
;----------------------------------------------------------------------
; 968 | if (k_change)                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(14),r0           ; |968| 
        cmpi      0,r0                  ; |968| 
        beq       L350                  ; |968| 
;*      Branch Occurs to L350           ; |968| 
	.line	151
;----------------------------------------------------------------------
; 970 | pn       = pini;                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |970| 
        stf       f0,*+fp(6)            ; |970| 
	.line	152
;----------------------------------------------------------------------
; 971 | cont = TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |971| 
        sti       r0,*+fp(15)           ; |971| 
	.line	155
;----------------------------------------------------------------------
; 974 | break;                                                                 
; 976 | case 'C':                                                              
;----------------------------------------------------------------------
        bu        L350                  ; |974| 
;*      Branch Occurs to L350           ; |974| 
	.line	158
;----------------------------------------------------------------------
; 977 | break;                                                                 
; 978 | case 'D':                                                              
; 979 | default:                                                               
;----------------------------------------------------------------------
L343:        
	.line	162
;----------------------------------------------------------------------
; 981 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(16),ir0          ; |981| 
        ldiu      398,ar0               ; |981| 
        ldiu      17408,r0              ; |981| 
        sti       r0,*+ar0(ir0)         ; |981| 
	.line	163
;----------------------------------------------------------------------
; 982 | break;                                                                 
;----------------------------------------------------------------------
        bu        L350                  ; |982| 
;*      Branch Occurs to L350           ; |982| 
L345:        
	.line	54
        ldiu      *+fp(16),ir0          ; |873| 
        ldiu      398,ar0               ; |873| 
        ldiu      -8,r0                 ; |873| 
        ash3      r0,*+ar0(ir0),r0      ; |873| 
        cmpi      65,r0                 ; |873| 
        beq       L350                  ; |873| 
;*      Branch Occurs to L350           ; |873| 
        cmpi      66,r0                 ; |873| 
        beq       L299                  ; |873| 
;*      Branch Occurs to L299           ; |873| 
        cmpi      67,r0                 ; |873| 
        beq       L350                  ; |873| 
;*      Branch Occurs to L350           ; |873| 
        cmpi      68,r0                 ; |873| 
        beq       L343                  ; |873| 
;*      Branch Occurs to L343           ; |873| 
        bu        L343                  ; |873| 
;*      Branch Occurs to L343           ; |873| 
L350:        
	.line	167
;----------------------------------------------------------------------
; 986 | if (cont)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(15),r0           ; |986| 
        cmpi      0,r0                  ; |986| 
        bne       L290                  ; |986| 
;*      Branch Occurs to L290           ; |986| 
	.line	168
;----------------------------------------------------------------------
; 987 | continue;                                                              
;----------------------------------------------------------------------
	.line	170
;----------------------------------------------------------------------
; 989 | vcf = sigfig(a/pn,7);                                                  
;----------------------------------------------------------------------
        ldfu      *+fp(8),f0            ; |989| 
        ldfu      *+fp(6),f1            ; |989| 
        call      DIV_F30               ; |989| 
                                        ; |989| Call Occurs
        ldp       @CL42,DP
        ldiu      @CL42,r1              ; |989| 
        ldiu      7,ar2                 ; |989| 
        ldfu      f0,f2                 ; |989| 
        callu     r1                    ; far call to _sigfig	; |989| 
                                        ; |989| Far Call Occurs
        stf       f0,*+fp(10)           ; |989| 
	.line	172
;----------------------------------------------------------------------
; 991 | if (RET_VCF)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |991| 
        cmpi      0,r0                  ; |991| 
        beq       L353                  ; |991| 
;*      Branch Occurs to L353           ; |991| 
	.line	174
;----------------------------------------------------------------------
; 993 | pnext = vcf;                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(10),f0           ; |993| 
        stf       f0,*+fp(7)            ; |993| 
	.line	176
;----------------------------------------------------------------------
; 995 | break;                                                                 
;----------------------------------------------------------------------
        bu        L355                  ; |995| 
;*      Branch Occurs to L355           ; |995| 
L353:        
	.line	179
;----------------------------------------------------------------------
; 998 | pnext = sigfig(pini/vcf,7);                                            
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |998| 
        ldfu      *+fp(10),f1           ; |998| 
        call      DIV_F30               ; |998| 
                                        ; |998| Call Occurs
        ldp       @CL42,DP
        ldiu      @CL42,r1              ; |998| 
        ldiu      7,ar2                 ; |998| 
        ldfu      f0,f2                 ; |998| 
        callu     r1                    ; far call to _sigfig	; |998| 
                                        ; |998| Far Call Occurs
        stf       f0,*+fp(7)            ; |998| 
	.line	181
;----------------------------------------------------------------------
; 1000 | if ((pnext-pn)<0.050)                                                  
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldfu      *+fp(6),f0            ; |1000| 
        subrf     *+fp(7),f0            ; |1000| 
        cmpf      @CL67,f0              ; |1000| 
        blt       L355                  ; |1000| 
;*      Branch Occurs to L355           ; |1000| 
	.line	182
;----------------------------------------------------------------------
; 1001 | break;                                                                 
;----------------------------------------------------------------------
	.line	184
;----------------------------------------------------------------------
; 1003 | pn = pnext;                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |1003| 
        stf       f0,*+fp(6)            ; |1003| 
	.line	185
        bu        L290                  ; |1004| 
;*      Branch Occurs to L290           ; |1004| 
L355:        
	.line	187
;----------------------------------------------------------------------
; 1006 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	188
;----------------------------------------------------------------------
; 1007 | return pnext;                                                          
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |1007| 
	.line	189
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1008| 
        ldiu      *fp,fp                ; |1008| 
                                        ; Unallocate the Frame
        subi      18,sp                 ; |1008| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1008,000000000h,16


	.sect	 ".text"

	.global	_kgm3_to_API
	.sym	_kgm3_to_API,_kgm3_to_API,39,2,0
	.func	1022
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
; 1022 | double kgm3_to_API(const double r)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        stf       f2,*+fp(1)            ; |1023| 
	.line	3
;----------------------------------------------------------------------
; 1024 | if (r<=(double)0.0)                                                    
;----------------------------------------------------------------------
        ldfu      f2,f0
        cmpf      0.0000000000e+00,f0   ; |1024| 
        bgt       L360                  ; |1024| 
;*      Branch Occurs to L360           ; |1024| 
	.line	4
;----------------------------------------------------------------------
; 1025 | return (double)API_error_num;                                          
;----------------------------------------------------------------------
        bud       L361                  ; |1025| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |1025| 
;*      Branch Occurs to L361           ; |1025| 
L360:        
	.line	6
;----------------------------------------------------------------------
; 1027 | return (double)(((141.5*999.012)/r)-131.5);                            
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldfu      *+fp(1),f1            ; |1027| 
        ldfu      @CL68,f0              ; |1027| 
        call      DIV_F30               ; |1027| 
                                        ; |1027| Call Occurs
        subf      1.3150000000e+02,f0   ; |1027| 
L361:        
	.line	7
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1028| 
        ldiu      *fp,fp                ; |1028| 
                                        ; Unallocate the Frame
        subi      3,sp                  ; |1028| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1028,000000000h,1


	.sect	 ".text"

	.global	_API_to_kgm3
	.sym	_API_to_kgm3,_API_to_kgm3,39,2,0
	.func	1042
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
; 1042 | double API_to_kgm3(const double r)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        stf       f2,*+fp(1)            ; |1043| 
	.line	3
;----------------------------------------------------------------------
; 1044 | if (r==(double)API_error_num)                                          
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      f2,f0
        cmpf      @CL23,f0              ; |1044| 
        bne       L365                  ; |1044| 
;*      Branch Occurs to L365           ; |1044| 
	.line	4
;----------------------------------------------------------------------
; 1045 | return (double)0.0;                                                    
;----------------------------------------------------------------------
        bud       L366                  ; |1045| 
	nop
	nop
        ldfu      0.0000000000e+00,f0   ; |1045| 
;*      Branch Occurs to L366           ; |1045| 
L365:        
	.line	6
;----------------------------------------------------------------------
; 1047 | return (double)(141.5*999.012/(r+131.5));                              
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldfu      1.3150000000e+02,f1   ; |1047| 
        ldfu      @CL68,f0              ; |1047| 
        addf      *+fp(1),f1            ; |1047| 
        call      DIV_F30               ; |1047| 
                                        ; |1047| Call Occurs
L366:        
	.line	7
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1048| 
        ldiu      *fp,fp                ; |1048| 
                                        ; Unallocate the Frame
        subi      3,sp                  ; |1048| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1048,000000000h,1


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

	.sect	".cinit"
	.field  	68,32
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
	.word   	008480000H ; double  4.000000000000000e+02
	.word   	0082A8C40H ; double  3.410957000000000e+02
	.word   	008160000H ; double  3.000000000000000e+02
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
