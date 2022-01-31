;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Jan 31 15:51:39 2022                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_BOG.AAA 
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
        bud       L173                  ; |261| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |261| 
;*      Branch Occurs to L173           ; |261| 
L65:        
	.line	48
;----------------------------------------------------------------------
; 263 | else if(t>250.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |263| 
        cmpf      2.5000000000e+02,f0   ; |263| 
        ble       L90                   ; |263| 
;*      Branch Occurs to L90            ; |263| 
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
        bu        L90                   ; |215| 
;*      Branch Occurs to L90            ; |215| 
L67:        
	.line	51
;----------------------------------------------------------------------
; 266 | else if(p<50.0)                                                        
; 268 |         //if(t>250.0) // JAN 12, 2022 : DKOH : bug#112                 
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |266| 
        cmpf      5.0000000000e+01,f0   ; |266| 
        bge       L73                   ; |266| 
;*      Branch Occurs to L73            ; |266| 
	.line	54
;----------------------------------------------------------------------
; 269 | if(t>300.0)                                                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |269| 
        cmpf      @CL24,f0              ; |269| 
        ble       L71                   ; |269| 
;*      Branch Occurs to L71            ; |269| 
	.line	56
;----------------------------------------------------------------------
; 271 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |271| 
        ldiu      2,r2                  ; |271| 
        ldiu      @CL22,r0              ; |271| 
        callu     r0                    ; far call to _API_STATUS	; |271| 
                                        ; |271| Far Call Occurs
	.line	57
;----------------------------------------------------------------------
; 272 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	59
;----------------------------------------------------------------------
; 274 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |274| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |274| 
;*      Branch Occurs to L173           ; |274| 
L71:        
	.line	61
;----------------------------------------------------------------------
; 276 | else if(t>200.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |276| 
        cmpf      2.0000000000e+02,f0   ; |276| 
        ble       L90                   ; |276| 
;*      Branch Occurs to L90            ; |276| 
	.line	62
;----------------------------------------------------------------------
; 277 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |277| 
        ldiu      1,r2                  ; |277| 
        ldiu      @CL22,r0              ; |277| 
        callu     r0                    ; far call to _API_STATUS	; |277| 
                                        ; |277| Far Call Occurs
        bu        L90                   ; |215| 
;*      Branch Occurs to L90            ; |215| 
L73:        
	.line	64
;----------------------------------------------------------------------
; 279 | else if(p<55.0)                                                        
; 281 |         //if(t>200.0) // JAN 12, 2022 : DKOH : bug#112                 
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |279| 
        cmpf      5.5000000000e+01,f0   ; |279| 
        bge       L79                   ; |279| 
;*      Branch Occurs to L79            ; |279| 
	.line	67
;----------------------------------------------------------------------
; 282 | if(t>300.0)                                                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |282| 
        cmpf      @CL24,f0              ; |282| 
        ble       L77                   ; |282| 
;*      Branch Occurs to L77            ; |282| 
	.line	69
;----------------------------------------------------------------------
; 284 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |284| 
        ldiu      2,r2                  ; |284| 
        ldiu      @CL22,r0              ; |284| 
        callu     r0                    ; far call to _API_STATUS	; |284| 
                                        ; |284| Far Call Occurs
	.line	70
;----------------------------------------------------------------------
; 285 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	72
;----------------------------------------------------------------------
; 287 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |287| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |287| 
;*      Branch Occurs to L173           ; |287| 
L77:        
	.line	74
;----------------------------------------------------------------------
; 289 | else if(t>150.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |289| 
        cmpf      1.5000000000e+02,f0   ; |289| 
        ble       L90                   ; |289| 
;*      Branch Occurs to L90            ; |289| 
	.line	75
;----------------------------------------------------------------------
; 290 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |290| 
        ldiu      1,r2                  ; |290| 
        ldiu      @CL22,r0              ; |290| 
        callu     r0                    ; far call to _API_STATUS	; |290| 
                                        ; |290| Far Call Occurs
        bu        L90                   ; |215| 
;*      Branch Occurs to L90            ; |215| 
L79:        
	.line	77
;----------------------------------------------------------------------
; 292 | else if(p<=100.0)                                                      
; 294 |         //if(t>200.0) // JAN 12, 2022 : DKOH : bug#112                 
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |292| 
        cmpf      1.0000000000e+02,f0   ; |292| 
        bgt       L84                   ; |292| 
;*      Branch Occurs to L84            ; |292| 
	.line	80
;----------------------------------------------------------------------
; 295 | if(t>300.0)                                                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |295| 
        cmpf      @CL24,f0              ; |295| 
        ble       L83                   ; |295| 
;*      Branch Occurs to L83            ; |295| 
	.line	82
;----------------------------------------------------------------------
; 297 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |297| 
        ldiu      2,r2                  ; |297| 
        ldiu      @CL22,r0              ; |297| 
        callu     r0                    ; far call to _API_STATUS	; |297| 
                                        ; |297| Far Call Occurs
	.line	83
;----------------------------------------------------------------------
; 298 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	85
;----------------------------------------------------------------------
; 300 | return API_error_num;                                                  
; 302 | else                                                                   
;----------------------------------------------------------------------
        bud       L173                  ; |300| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |300| 
;*      Branch Occurs to L173           ; |300| 
L83:        
	.line	88
;----------------------------------------------------------------------
; 303 | API_STATUS(fcidx, API_extrapolate);                                    
; 305 | ////////// ADDED BY DKOH JAN 12, 2022 BUG#112 /////////////            
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |303| 
        ldiu      1,r2                  ; |303| 
        ldiu      @CL22,r0              ; |303| 
        callu     r0                    ; far call to _API_STATUS	; |303| 
                                        ; |303| Far Call Occurs
        bu        L90                   ; |215| 
;*      Branch Occurs to L90            ; |215| 
L84:        
	.line	91
;----------------------------------------------------------------------
; 306 | else if(p<=183.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |306| 
        cmpf      1.8300000000e+02,f0   ; |306| 
        bgt       L90                   ; |306| 
;*      Branch Occurs to L90            ; |306| 
	.line	93
;----------------------------------------------------------------------
; 308 | if(t>300.0)                                                            
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |308| 
        cmpf      @CL24,f0              ; |308| 
        ble       L88                   ; |308| 
;*      Branch Occurs to L88            ; |308| 
	.line	95
;----------------------------------------------------------------------
; 310 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |310| 
        ldiu      2,r2                  ; |310| 
        ldiu      @CL22,r0              ; |310| 
        callu     r0                    ; far call to _API_STATUS	; |310| 
                                        ; |310| Far Call Occurs
	.line	96
;----------------------------------------------------------------------
; 311 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	98
;----------------------------------------------------------------------
; 313 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |313| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |313| 
;*      Branch Occurs to L173           ; |313| 
L88:        
	.line	100
;----------------------------------------------------------------------
; 315 | else if(t>200.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |315| 
        cmpf      2.0000000000e+02,f0   ; |315| 
        ble       L90                   ; |315| 
;*      Branch Occurs to L90            ; |315| 
	.line	101
;----------------------------------------------------------------------
; 316 | API_STATUS(fcidx, API_extrapolate);                                    
; 318 | ////////// ADDED BY DKOH JAN 12, 2022 BUG#112 /////////////            
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |316| 
        ldiu      1,r2                  ; |316| 
        ldiu      @CL22,r0              ; |316| 
        callu     r0                    ; far call to _API_STATUS	; |316| 
                                        ; |316| Far Call Occurs
L90:        
	.line	105
;----------------------------------------------------------------------
; 320 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |320| 
        ldiu      0,r0                  ; |320| 
        sti       r0,*ar0               ; |320| 
	.line	106
;----------------------------------------------------------------------
; 321 | k0               = 341.0957;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldfu      @CL25,f0              ; |321| 
        stf       f0,*+fp(7)            ; |321| 
	.line	107
;----------------------------------------------------------------------
; 322 | k1               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |322| 
        stf       f0,*+fp(8)            ; |322| 
	.line	108
;----------------------------------------------------------------------
; 323 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |323| 
        stf       f0,*+fp(9)            ; |323| 
	.line	110
;----------------------------------------------------------------------
; 325 | break;                                                                 
; 327 | case 'B':                                                              
;----------------------------------------------------------------------
        bu        L170                  ; |325| 
;*      Branch Occurs to L170           ; |325| 
L91:        
	.line	114
;----------------------------------------------------------------------
; 329 | if ((t<0.0) || (p<0.0) || (p>85.0))                                    
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |329| 
        cmpf      0.0000000000e+00,f0   ; |329| 
        blt       L94                   ; |329| 
;*      Branch Occurs to L94            ; |329| 
        ldfu      *+fp(5),f0            ; |329| 
        cmpf      0.0000000000e+00,f0   ; |329| 
        blt       L94                   ; |329| 
;*      Branch Occurs to L94            ; |329| 
        cmpf      8.5000000000e+01,f0   ; |329| 
        ble       L96                   ; |329| 
;*      Branch Occurs to L96            ; |329| 
L94:        
	.line	116
;----------------------------------------------------------------------
; 331 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |331| 
        ldiu      2,r2                  ; |331| 
        ldiu      @CL22,r0              ; |331| 
        callu     r0                    ; far call to _API_STATUS	; |331| 
                                        ; |331| Far Call Occurs
	.line	117
;----------------------------------------------------------------------
; 332 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	119
;----------------------------------------------------------------------
; 334 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |334| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |334| 
;*      Branch Occurs to L173           ; |334| 
L96:        
	.line	121
;----------------------------------------------------------------------
; 336 | else if (p<40.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |336| 
        cmpf      4.0000000000e+01,f0   ; |336| 
        bge       L102                  ; |336| 
;*      Branch Occurs to L102           ; |336| 
	.line	123
;----------------------------------------------------------------------
; 338 | if (t>300.0)                                                           
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |338| 
        cmpf      @CL24,f0              ; |338| 
        ble       L100                  ; |338| 
;*      Branch Occurs to L100           ; |338| 
	.line	125
;----------------------------------------------------------------------
; 340 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |340| 
        ldiu      2,r2                  ; |340| 
        ldiu      @CL22,r0              ; |340| 
        callu     r0                    ; far call to _API_STATUS	; |340| 
                                        ; |340| Far Call Occurs
	.line	126
;----------------------------------------------------------------------
; 341 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	128
;----------------------------------------------------------------------
; 343 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |343| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |343| 
;*      Branch Occurs to L173           ; |343| 
L100:        
	.line	130
;----------------------------------------------------------------------
; 345 | else if (t>250.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |345| 
        cmpf      2.5000000000e+02,f0   ; |345| 
        ble       L114                  ; |345| 
;*      Branch Occurs to L114           ; |345| 
	.line	131
;----------------------------------------------------------------------
; 346 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |346| 
        ldiu      1,r2                  ; |346| 
        ldiu      @CL22,r0              ; |346| 
        callu     r0                    ; far call to _API_STATUS	; |346| 
                                        ; |346| Far Call Occurs
        bu        L114                  ; |215| 
;*      Branch Occurs to L114           ; |215| 
L102:        
	.line	133
;----------------------------------------------------------------------
; 348 | else if (p<50.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |348| 
        cmpf      5.0000000000e+01,f0   ; |348| 
        bge       L108                  ; |348| 
;*      Branch Occurs to L108           ; |348| 
	.line	135
;----------------------------------------------------------------------
; 350 | if (t>250.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |350| 
        cmpf      2.5000000000e+02,f0   ; |350| 
        ble       L106                  ; |350| 
;*      Branch Occurs to L106           ; |350| 
	.line	137
;----------------------------------------------------------------------
; 352 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |352| 
        ldiu      2,r2                  ; |352| 
        ldiu      @CL22,r0              ; |352| 
        callu     r0                    ; far call to _API_STATUS	; |352| 
                                        ; |352| Far Call Occurs
	.line	138
;----------------------------------------------------------------------
; 353 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	139
;----------------------------------------------------------------------
; 354 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |354| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |354| 
;*      Branch Occurs to L173           ; |354| 
L106:        
	.line	141
;----------------------------------------------------------------------
; 356 | else if (t>200.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |356| 
        cmpf      2.0000000000e+02,f0   ; |356| 
        ble       L114                  ; |356| 
;*      Branch Occurs to L114           ; |356| 
	.line	142
;----------------------------------------------------------------------
; 357 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |357| 
        ldiu      1,r2                  ; |357| 
        ldiu      @CL22,r0              ; |357| 
        callu     r0                    ; far call to _API_STATUS	; |357| 
                                        ; |357| Far Call Occurs
        bu        L114                  ; |215| 
;*      Branch Occurs to L114           ; |215| 
L108:        
	.line	144
;----------------------------------------------------------------------
; 359 | else if (p<=85.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |359| 
        cmpf      8.5000000000e+01,f0   ; |359| 
        bgt       L114                  ; |359| 
;*      Branch Occurs to L114           ; |359| 
	.line	146
;----------------------------------------------------------------------
; 361 | if (t>200.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |361| 
        cmpf      2.0000000000e+02,f0   ; |361| 
        ble       L112                  ; |361| 
;*      Branch Occurs to L112           ; |361| 
	.line	148
;----------------------------------------------------------------------
; 363 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |363| 
        ldiu      2,r2                  ; |363| 
        ldiu      @CL22,r0              ; |363| 
        callu     r0                    ; far call to _API_STATUS	; |363| 
                                        ; |363| Far Call Occurs
	.line	149
;----------------------------------------------------------------------
; 364 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	151
;----------------------------------------------------------------------
; 366 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |366| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |366| 
;*      Branch Occurs to L173           ; |366| 
L112:        
	.line	153
;----------------------------------------------------------------------
; 368 | else if (t>150.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |368| 
        cmpf      1.5000000000e+02,f0   ; |368| 
        ble       L114                  ; |368| 
;*      Branch Occurs to L114           ; |368| 
	.line	154
;----------------------------------------------------------------------
; 369 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |369| 
        ldiu      1,r2                  ; |369| 
        ldiu      @CL22,r0              ; |369| 
        callu     r0                    ; far call to _API_STATUS	; |369| 
                                        ; |369| Far Call Occurs
L114:        
	.line	157
;----------------------------------------------------------------------
; 372 | if (k_set[0]==-1)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |372| 
        ldiu      *ar0,r0               ; |372| 
        cmpi      -1,r0                 ; |372| 
        bne       L134                  ; |372| 
;*      Branch Occurs to L134           ; |372| 
	.line	159
;----------------------------------------------------------------------
; 374 | if ((p>=0.0) && (p<37.0))                                              
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |374| 
        cmpf      0.0000000000e+00,f0   ; |374| 
        blt       L118                  ; |374| 
;*      Branch Occurs to L118           ; |374| 
        cmpf      3.7000000000e+01,f0   ; |374| 
        bge       L118                  ; |374| 
;*      Branch Occurs to L118           ; |374| 
	.line	160
;----------------------------------------------------------------------
; 375 | k_set[0] = 1;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |375| 
        sti       r0,*ar0               ; |375| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L118:        
	.line	161
;----------------------------------------------------------------------
; 376 | else if ((p>=37.0) && (p<48.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |376| 
        cmpf      3.7000000000e+01,f0   ; |376| 
        blt       L121                  ; |376| 
;*      Branch Occurs to L121           ; |376| 
        cmpf      4.8000000000e+01,f0   ; |376| 
        bge       L121                  ; |376| 
;*      Branch Occurs to L121           ; |376| 
	.line	162
;----------------------------------------------------------------------
; 377 | k_set[0] = 2;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |377| 
        ldiu      2,r0                  ; |377| 
        sti       r0,*ar0               ; |377| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L121:        
	.line	163
;----------------------------------------------------------------------
; 378 | else if ((p>=48.0) && (p<52.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |378| 
        cmpf      4.8000000000e+01,f0   ; |378| 
        blt       L124                  ; |378| 
;*      Branch Occurs to L124           ; |378| 
        cmpf      5.2000000000e+01,f0   ; |378| 
        bge       L124                  ; |378| 
;*      Branch Occurs to L124           ; |378| 
	.line	164
;----------------------------------------------------------------------
; 379 | k_set[0] = 3;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |379| 
        ldiu      3,r0                  ; |379| 
        sti       r0,*ar0               ; |379| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L124:        
	.line	165
;----------------------------------------------------------------------
; 380 | else if ((p>=52.0) && (p<=85.0))                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |380| 
        cmpf      5.2000000000e+01,f0   ; |380| 
        blt       L127                  ; |380| 
;*      Branch Occurs to L127           ; |380| 
        cmpf      8.5000000000e+01,f0   ; |380| 
        bgt       L127                  ; |380| 
;*      Branch Occurs to L127           ; |380| 
	.line	166
;----------------------------------------------------------------------
; 381 | k_set[0] = 4;                                                          
; 382 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |381| 
        ldiu      4,r0                  ; |381| 
        sti       r0,*ar0               ; |381| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L127:        
	.line	168
;----------------------------------------------------------------------
; 383 | k_set[0] = -1;                                                         
; 386 | switch (k_set[0])                                                      
; 388 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |383| 
        ldiu      -1,r0                 ; |383| 
        sti       r0,*ar0               ; |383| 
        bu        L134                  ; |215| 
;*      Branch Occurs to L134           ; |215| 
L128:        
	.line	175
;----------------------------------------------------------------------
; 390 | k0 = 103.8720;                                                         
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldfu      @CL26,f0              ; |390| 
        stf       f0,*+fp(7)            ; |390| 
	.line	176
;----------------------------------------------------------------------
; 391 | k1 = 0.2701;                                                           
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldfu      @CL27,f0              ; |391| 
        stf       f0,*+fp(8)            ; |391| 
	.line	177
;----------------------------------------------------------------------
; 392 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |392| 
        stf       f0,*+fp(9)            ; |392| 
	.line	179
;----------------------------------------------------------------------
; 394 | break;                                                                 
; 396 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L170                  ; |394| 
;*      Branch Occurs to L170           ; |394| 
L129:        
	.line	183
;----------------------------------------------------------------------
; 398 | k0 = 330.3010;                                                         
;----------------------------------------------------------------------
        ldp       @CL28,DP
        ldfu      @CL28,f0              ; |398| 
        stf       f0,*+fp(7)            ; |398| 
	.line	184
;----------------------------------------------------------------------
; 399 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |399| 
        stf       f0,*+fp(8)            ; |399| 
	.line	185
;----------------------------------------------------------------------
; 400 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |400| 
        stf       f0,*+fp(9)            ; |400| 
	.line	187
;----------------------------------------------------------------------
; 402 | break;                                                                 
; 404 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L170                  ; |402| 
;*      Branch Occurs to L170           ; |402| 
L130:        
	.line	191
;----------------------------------------------------------------------
; 406 | k0 = 1489.0670;                                                        
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldfu      @CL29,f0              ; |406| 
        stf       f0,*+fp(7)            ; |406| 
	.line	192
;----------------------------------------------------------------------
; 407 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |407| 
        stf       f0,*+fp(8)            ; |407| 
	.line	193
;----------------------------------------------------------------------
; 408 | k2 = -0.00186840;                                                      
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldfu      @CL30,f0              ; |408| 
        stf       f0,*+fp(9)            ; |408| 
	.line	195
;----------------------------------------------------------------------
; 410 | break;                                                                 
; 412 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L170                  ; |410| 
;*      Branch Occurs to L170           ; |410| 
L131:        
	.line	199
;----------------------------------------------------------------------
; 414 | k0 = 192.4571;                                                         
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldfu      @CL31,f0              ; |414| 
        stf       f0,*+fp(7)            ; |414| 
	.line	200
;----------------------------------------------------------------------
; 415 | k1 = 0.2438;                                                           
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldfu      @CL32,f0              ; |415| 
        stf       f0,*+fp(8)            ; |415| 
	.line	201
;----------------------------------------------------------------------
; 416 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |416| 
        stf       f0,*+fp(9)            ; |416| 
	.line	203
;----------------------------------------------------------------------
; 418 | break;                                                                 
; 420 | case 0:                                                                
; 421 | default:                                                               
;----------------------------------------------------------------------
        bu        L170                  ; |418| 
;*      Branch Occurs to L170           ; |418| 
L132:        
	.line	208
;----------------------------------------------------------------------
; 423 | k_set[0] = -1;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |423| 
        ldiu      -1,r0                 ; |423| 
        sti       r0,*ar0               ; |423| 
	.line	209
;----------------------------------------------------------------------
; 424 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	211
;----------------------------------------------------------------------
; 426 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |426| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |426| 
;*      Branch Occurs to L173           ; |426| 
L134:        
	.line	171
        ldiu      *+fp(3),ar0           ; |386| 
        ldiu      *ar0,r0               ; |386| 
        cmpi      0,r0                  ; |386| 
        beq       L132                  ; |386| 
;*      Branch Occurs to L132           ; |386| 
        cmpi      1,r0                  ; |386| 
        beq       L128                  ; |386| 
;*      Branch Occurs to L128           ; |386| 
        cmpi      2,r0                  ; |386| 
        beq       L129                  ; |386| 
;*      Branch Occurs to L129           ; |386| 
        cmpi      3,r0                  ; |386| 
        beq       L130                  ; |386| 
;*      Branch Occurs to L130           ; |386| 
        cmpi      4,r0                  ; |386| 
        beq       L131                  ; |386| 
;*      Branch Occurs to L131           ; |386| 
        bu        L132                  ; |386| 
;*      Branch Occurs to L132           ; |386| 
	.line	215
;----------------------------------------------------------------------
; 430 | break;                                                                 
; 432 | case 'C':                                                              
;----------------------------------------------------------------------
L141:        
	.line	219
;----------------------------------------------------------------------
; 434 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |434| 
        ldiu      0,r0                  ; |434| 
        sti       r0,*ar0               ; |434| 
	.line	220
;----------------------------------------------------------------------
; 435 | a = f->a * 10e6;                                                       
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      *+fp(13),ir0          ; |435| 
        ldiu      399,ar0               ; |435| 
        ldfu      @CL33,f0              ; |435| 
        mpyf3     *+ar0(ir0),f0,f0      ; |435| 
        stf       f0,*+fp(6)            ; |435| 
	.line	222
;----------------------------------------------------------------------
; 437 | if ((t<0.0) || (a<270.0) || (a>930.0))                                 
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |437| 
        cmpf      0.0000000000e+00,f0   ; |437| 
        blt       L144                  ; |437| 
;*      Branch Occurs to L144           ; |437| 
        ldp       @CL34,DP
        ldfu      *+fp(6),f0            ; |437| 
        cmpf      @CL34,f0              ; |437| 
        blt       L144                  ; |437| 
;*      Branch Occurs to L144           ; |437| 
        ldp       @CL35,DP
        cmpf      @CL35,f0              ; |437| 
        ble       L146                  ; |437| 
;*      Branch Occurs to L146           ; |437| 
L144:        
	.line	224
;----------------------------------------------------------------------
; 439 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |439| 
        ldiu      2,r2                  ; |439| 
        ldiu      @CL22,r0              ; |439| 
        callu     r0                    ; far call to _API_STATUS	; |439| 
                                        ; |439| Far Call Occurs
	.line	225
;----------------------------------------------------------------------
; 440 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	227
;----------------------------------------------------------------------
; 442 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |442| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |442| 
;*      Branch Occurs to L173           ; |442| 
L146:        
	.line	229
;----------------------------------------------------------------------
; 444 | else if ((a<510.0) && (t>300.0))                                       
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldfu      *+fp(6),f0            ; |444| 
        cmpf      @CL36,f0              ; |444| 
        bge       L150                  ; |444| 
;*      Branch Occurs to L150           ; |444| 
        ldp       @CL24,DP
        ldfu      *+fp(4),f0            ; |444| 
        cmpf      @CL24,f0              ; |444| 
        ble       L150                  ; |444| 
;*      Branch Occurs to L150           ; |444| 
	.line	231
;----------------------------------------------------------------------
; 446 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |446| 
        ldiu      2,r2                  ; |446| 
        ldiu      @CL22,r0              ; |446| 
        callu     r0                    ; far call to _API_STATUS	; |446| 
                                        ; |446| Far Call Occurs
	.line	232
;----------------------------------------------------------------------
; 447 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	234
;----------------------------------------------------------------------
; 449 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |449| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |449| 
;*      Branch Occurs to L173           ; |449| 
L150:        
	.line	236
;----------------------------------------------------------------------
; 451 | else if ((a<530.0) && (t>250.0))                                       
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldfu      *+fp(6),f0            ; |451| 
        cmpf      @CL37,f0              ; |451| 
        bge       L154                  ; |451| 
;*      Branch Occurs to L154           ; |451| 
        ldfu      *+fp(4),f0            ; |451| 
        cmpf      2.5000000000e+02,f0   ; |451| 
        ble       L154                  ; |451| 
;*      Branch Occurs to L154           ; |451| 
	.line	238
;----------------------------------------------------------------------
; 453 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |453| 
        ldiu      2,r2                  ; |453| 
        ldiu      @CL22,r0              ; |453| 
        callu     r0                    ; far call to _API_STATUS	; |453| 
                                        ; |453| Far Call Occurs
	.line	239
;----------------------------------------------------------------------
; 454 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	241
;----------------------------------------------------------------------
; 456 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |456| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |456| 
;*      Branch Occurs to L173           ; |456| 
L154:        
	.line	243
;----------------------------------------------------------------------
; 458 | else if ((a<=930.0) && (t>200.0))                                      
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldfu      *+fp(6),f0            ; |458| 
        cmpf      @CL35,f0              ; |458| 
        bgt       L157                  ; |458| 
;*      Branch Occurs to L157           ; |458| 
        ldfu      *+fp(4),f0            ; |458| 
        cmpf      2.0000000000e+02,f0   ; |458| 
        ble       L157                  ; |458| 
;*      Branch Occurs to L157           ; |458| 
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
        bud       L173                  ; |463| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |463| 
;*      Branch Occurs to L173           ; |463| 
L157:        
	.line	251
;----------------------------------------------------------------------
; 466 | a = f->a;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |466| 
        ldiu      399,ar0               ; |466| 
        ldfu      *+ar0(ir0),f0         ; |466| 
        stf       f0,*+fp(6)            ; |466| 
	.line	253
;----------------------------------------------------------------------
; 468 | break;                                                                 
; 470 | case 'D':                                                              
; 471 | default:                                                               
;----------------------------------------------------------------------
        bu        L170                  ; |468| 
;*      Branch Occurs to L170           ; |468| 
L158:        
	.line	258
;----------------------------------------------------------------------
; 473 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |473| 
        ldiu      398,ar0               ; |473| 
        ldiu      17408,r0              ; |473| 
        sti       r0,*+ar0(ir0)         ; |473| 
	.line	260
;----------------------------------------------------------------------
; 475 | if ((p<-10.0) || (p>45.0) || (t<0.0) || (t>300.0))                     
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldfu      *+fp(5),f0            ; |475| 
        cmpf      @CL38,f0              ; |475| 
        blt       L162                  ; |475| 
;*      Branch Occurs to L162           ; |475| 
        cmpf      4.5000000000e+01,f0   ; |475| 
        bgt       L162                  ; |475| 
;*      Branch Occurs to L162           ; |475| 
        ldfu      *+fp(4),f0            ; |475| 
        cmpf      0.0000000000e+00,f0   ; |475| 
        blt       L162                  ; |475| 
;*      Branch Occurs to L162           ; |475| 
        ldp       @CL24,DP
        cmpf      @CL24,f0              ; |475| 
        ble       L163                  ; |475| 
;*      Branch Occurs to L163           ; |475| 
L162:        
	.line	262
;----------------------------------------------------------------------
; 477 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |477| 
        ldiu      2,r2                  ; |477| 
        ldiu      @CL22,r0              ; |477| 
        callu     r0                    ; far call to _API_STATUS	; |477| 
                                        ; |477| Far Call Occurs
	.line	263
;----------------------------------------------------------------------
; 478 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	265
;----------------------------------------------------------------------
; 480 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L173                  ; |480| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |480| 
;*      Branch Occurs to L173           ; |480| 
L163:        
	.line	268
;----------------------------------------------------------------------
; 483 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |483| 
        ldiu      0,r0                  ; |483| 
        sti       r0,*ar0               ; |483| 
	.line	269
;----------------------------------------------------------------------
; 484 | k0               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |484| 
        stf       f0,*+fp(7)            ; |484| 
	.line	270
;----------------------------------------------------------------------
; 485 | k1               = 0.34878;                                            
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldfu      @CL39,f0              ; |485| 
        stf       f0,*+fp(8)            ; |485| 
	.line	271
;----------------------------------------------------------------------
; 486 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |486| 
        stf       f0,*+fp(9)            ; |486| 
	.line	273
;----------------------------------------------------------------------
; 488 | break;                                                                 
;----------------------------------------------------------------------
        bu        L170                  ; |488| 
;*      Branch Occurs to L170           ; |488| 
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
	.line	277
;----------------------------------------------------------------------
; 492 | t -= 60.0;                                                             
;----------------------------------------------------------------------
        ldfu      6.0000000000e+01,f0   ; |492| 
        subrf     *+fp(4),f0            ; |492| 
        stf       f0,*+fp(4)            ; |492| 
	.line	278
;----------------------------------------------------------------------
; 493 | p  = r;                                                                
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |493| 
        stf       f0,*+fp(5)            ; |493| 
	.line	280
;----------------------------------------------------------------------
; 495 | if ((f->API_TABLE>>8) != 'C')                                          
; 496 | {//a = (k0/(p*p)) + (k1/p) + k2;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |495| 
        ldiu      398,ar0               ; |495| 
        ldiu      -8,r0                 ; |495| 
        ash3      r0,*+ar0(ir0),r0      ; |495| 
        cmpi      67,r0                 ; |495| 
        beq       L172                  ; |495| 
;*      Branch Occurs to L172           ; |495| 
	.line	282
;----------------------------------------------------------------------
; 497 | t1 = truncate((k0/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |497| 
        ldfu      *+fp(5),f1            ; |497| 
        call      DIV_F30               ; |497| 
                                        ; |497| Call Occurs
        ldp       @CL40,DP
        ldfu      f0,f2                 ; |497| 
        ldiu      @CL40,r1              ; |497| 
        ldiu      8,ar2                 ; |497| 
        callu     r1                    ; far call to _truncate	; |497| 
                                        ; |497| Far Call Occurs
        stf       f0,*+fp(10)           ; |497| 
	.line	283
;----------------------------------------------------------------------
; 498 | t2 = truncate((t1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |498| 
        call      DIV_F30               ; |498| 
                                        ; |498| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |498| 
        ldiu      8,ar2                 ; |498| 
        ldfu      f0,f2                 ; |498| 
        callu     r1                    ; far call to _truncate	; |498| 
                                        ; |498| Far Call Occurs
        stf       f0,*+fp(11)           ; |498| 
	.line	284
;----------------------------------------------------------------------
; 499 | t3 = truncate((k1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |499| 
        ldfu      *+fp(8),f0            ; |499| 
        call      DIV_F30               ; |499| 
                                        ; |499| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |499| 
        ldfu      f0,f2                 ; |499| 
        ldiu      8,ar2                 ; |499| 
        callu     r1                    ; far call to _truncate	; |499| 
                                        ; |499| Far Call Occurs
        stf       f0,*+fp(12)           ; |499| 
	.line	285
;----------------------------------------------------------------------
; 500 | a  = sigfig((t2+t3+k2), 4);                                            
;----------------------------------------------------------------------
        ldfu      f0,f2
        addf      *+fp(11),f2           ; |500| 
        ldiu      4,ar2                 ; |500| 
        ldp       @CL41,DP
        addf      *+fp(9),f2            ; |500| 
        ldiu      @CL41,r0              ; |500| 
        callu     r0                    ; far call to _sigfig	; |500| 
                                        ; |500| Far Call Occurs
        stf       f0,*+fp(6)            ; |500| 
L172:        
	.line	288
;----------------------------------------------------------------------
; 503 | t = p * exp(-a*t*(1.0+0.8*a*t));                                       
;----------------------------------------------------------------------
        ldfu      *+fp(6),f1            ; |503| 
        ldp       @CL42,DP
        negf      *+fp(6),f0            ; |503| 
        mpyf      @CL42,f1              ; |503| 
        mpyf      *+fp(4),f0            ; |503| 
        ldp       @CL43,DP
        mpyf      *+fp(4),f1            ; |503| 
        ldiu      @CL43,r3              ; |503| 
        addf      1.0000000000e+00,f1   ; |503| 
        mpyf3     f1,f0,f2              ; |503| 
        callu     r3                    ; far call to _exp	; |503| 
                                        ; |503| Far Call Occurs
        mpyf      *+fp(5),f0            ; |503| 
        stf       f0,*+fp(4)            ; |503| 
	.line	289
;----------------------------------------------------------------------
; 504 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	291
;----------------------------------------------------------------------
; 506 | return t;                                                              
;----------------------------------------------------------------------
L173:        
	.line	292
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |507| 
        ldiu      *fp,fp                ; |507| 
                                        ; Restore SOE Registers
        pop       ar4                   ; |507| 
                                        ; Unallocate the Frame
        subi      15,sp                 ; |507| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	507,000001000h,13


	.sect	 ".text"

	.global	_API_15C_PT
	.sym	_API_15C_PT,_API_15C_PT,39,2,0
	.func	523
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
; 523 | double API_15C_PT(const int fcidx, const double r, int* k_set)         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      13,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 525 | double t;       /* temperature */                                      
; 527 | double p;       /* pressure (NOT! -DHA)*/                              
; 533 | double a;       /* case C variable */                                  
; 534 | double k0;      /* constant */                                         
; 535 | double k1;      /* constant */                                         
; 536 | double k2;      /* constant */                                         
; 537 | double t1;                                                             
; 538 | double t2;                                                             
; 539 | double t3;                                                             
; 540 | FLOW_COMP* f; /* flow computer */                                      
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |524| 
        stf       f2,*+fp(2)            ; |524| 
        sti       ar2,*+fp(1)           ; |524| 
	.line	20
;----------------------------------------------------------------------
; 542 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	22
;----------------------------------------------------------------------
; 544 | f = &FC[fcidx];                                                        
;----------------------------------------------------------------------
        ldiu      ar2,r0
        ldp       @CL20,DP
        mpyi      1336,r0               ; |544| 
        addi      @CL20,r0              ; |544| Unsigned
        sti       r0,*+fp(13)           ; |544| 
	.line	23
;----------------------------------------------------------------------
; 545 | t = Convert(f->T.class, f->T.calc_unit, u_temp_C, f->T.calc_val, 0, f->
;     | T.aux);                                                                
;----------------------------------------------------------------------
        ldiu      32,rc                 ; |545| 
        ldiu      r0,ar1
        ldp       @CL1,DP
        ldiu      r0,ar0
        ldiu      r0,ar2
        ldfu      *+ar1(53),f2          ; |545| 40b float hi half
        ldiu      r0,ar4
        ldiu      *+ar2(50),re          ; |545| 
        ldiu      *+ar0(58),r3          ; |545| 
        ldiu      *+ar4(59),ar2         ; |545| 
        ldiu      @CL1,r0               ; |545| 
        ldiu      *+ar1(54),r2          ; |545| 40b float lo half
        ldiu      0,rs                  ; |545| 
        callu     r0                    ; far call to _Convert	; |545| 
                                        ; |545| Far Call Occurs
        rnd       f0,f0                 ; |545| Demote to low precision
        stf       f0,*+fp(4)            ; |545| 
	.line	24
;----------------------------------------------------------------------
; 546 | p = r;                                                                 
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |546| 
        stf       f0,*+fp(5)            ; |546| 
	.line	26
;----------------------------------------------------------------------
; 548 | API_STATUS(fcidx, 0);                   /* clear API status bits */    
; 550 | switch (f->API_TABLE>>8)                                               
; 552 |         case 'A':                                                      
; 554 |                 //if ((t<-18.0) || (p<610.5) || (p>1075.0))            
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      @CL22,r0              ; |548| 
        ldiu      0,r2                  ; |548| 
        ldiu      *+fp(1),ar2           ; |548| 
        callu     r0                    ; far call to _API_STATUS	; |548| 
                                        ; |548| Far Call Occurs
        bu        L279                  ; |522| 
;*      Branch Occurs to L279           ; |522| 
L176:        
	.line	33
;----------------------------------------------------------------------
; 555 | if ((t<-18.0) || (p<450.0) || (p>1075.0))                              
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldfu      *+fp(4),f0            ; |555| 
        cmpf      @CL44,f0              ; |555| 
        blt       L179                  ; |555| 
;*      Branch Occurs to L179           ; |555| 
        ldp       @CL45,DP
        ldfu      *+fp(5),f0            ; |555| 
        cmpf      @CL45,f0              ; |555| 
        blt       L179                  ; |555| 
;*      Branch Occurs to L179           ; |555| 
        ldp       @CL46,DP
        cmpf      @CL46,f0              ; |555| 
        ble       L181                  ; |555| 
;*      Branch Occurs to L181           ; |555| 
L179:        
	.line	35
;----------------------------------------------------------------------
; 557 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |557| 
        ldiu      2,r2                  ; |557| 
        ldiu      @CL22,r0              ; |557| 
        callu     r0                    ; far call to _API_STATUS	; |557| 
                                        ; |557| Far Call Occurs
	.line	36
;----------------------------------------------------------------------
; 558 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	38
;----------------------------------------------------------------------
; 560 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |560| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |560| 
;*      Branch Occurs to L287           ; |560| 
L181:        
	.line	40
;----------------------------------------------------------------------
; 562 | else if (p<758.0)                                                      
; 564 |         //if (t>90.0) // JAN 12, 2022 : DKOH : bug#112                 
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldfu      *+fp(5),f0            ; |562| 
        cmpf      @CL47,f0              ; |562| 
        bge       L186                  ; |562| 
;*      Branch Occurs to L186           ; |562| 
	.line	43
;----------------------------------------------------------------------
; 565 | if (t>150.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |565| 
        cmpf      1.5000000000e+02,f0   ; |565| 
        ble       L185                  ; |565| 
;*      Branch Occurs to L185           ; |565| 
	.line	45
;----------------------------------------------------------------------
; 567 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |567| 
        ldiu      2,r2                  ; |567| 
        ldiu      @CL22,r0              ; |567| 
        callu     r0                    ; far call to _API_STATUS	; |567| 
                                        ; |567| Far Call Occurs
	.line	46
;----------------------------------------------------------------------
; 568 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	48
;----------------------------------------------------------------------
; 570 | return API_error_num;                                                  
; 572 | else                                                                   
;----------------------------------------------------------------------
        bud       L287                  ; |570| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |570| 
;*      Branch Occurs to L287           ; |570| 
L185:        
	.line	51
;----------------------------------------------------------------------
; 573 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |573| 
        ldiu      1,r2                  ; |573| 
        ldiu      @CL22,r0              ; |573| 
        callu     r0                    ; far call to _API_STATUS	; |573| 
                                        ; |573| Far Call Occurs
        bu        L204                  ; |522| 
;*      Branch Occurs to L204           ; |522| 
L186:        
	.line	53
;----------------------------------------------------------------------
; 575 | else if (p<778.5)                                                      
; 577 |         //if (t>90.0)// JAN 12, 2022 : DKOH : bug#112                  
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldfu      *+fp(5),f0            ; |575| 
        cmpf      @CL48,f0              ; |575| 
        bge       L192                  ; |575| 
;*      Branch Occurs to L192           ; |575| 
	.line	56
;----------------------------------------------------------------------
; 578 | if (t>150.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |578| 
        cmpf      1.5000000000e+02,f0   ; |578| 
        ble       L190                  ; |578| 
;*      Branch Occurs to L190           ; |578| 
	.line	58
;----------------------------------------------------------------------
; 580 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |580| 
        ldiu      2,r2                  ; |580| 
        ldiu      @CL22,r0              ; |580| 
        callu     r0                    ; far call to _API_STATUS	; |580| 
                                        ; |580| Far Call Occurs
	.line	59
;----------------------------------------------------------------------
; 581 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	61
;----------------------------------------------------------------------
; 583 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |583| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |583| 
;*      Branch Occurs to L287           ; |583| 
L190:        
	.line	63
;----------------------------------------------------------------------
; 585 | else if (t>60.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |585| 
        cmpf      6.0000000000e+01,f0   ; |585| 
        ble       L204                  ; |585| 
;*      Branch Occurs to L204           ; |585| 
	.line	64
;----------------------------------------------------------------------
; 586 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |586| 
        ldiu      1,r2                  ; |586| 
        ldiu      @CL22,r0              ; |586| 
        callu     r0                    ; far call to _API_STATUS	; |586| 
                                        ; |586| Far Call Occurs
        bu        L204                  ; |522| 
;*      Branch Occurs to L204           ; |522| 
L192:        
	.line	66
;----------------------------------------------------------------------
; 588 | else if (p<824.0)                                                      
; 590 |         //if (t>120.0)// JAN 12, 2022 : DKOH : bug#112                 
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldfu      *+fp(5),f0            ; |588| 
        cmpf      @CL49,f0              ; |588| 
        bge       L198                  ; |588| 
;*      Branch Occurs to L198           ; |588| 
	.line	69
;----------------------------------------------------------------------
; 591 | if (t>150.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |591| 
        cmpf      1.5000000000e+02,f0   ; |591| 
        ble       L196                  ; |591| 
;*      Branch Occurs to L196           ; |591| 
	.line	71
;----------------------------------------------------------------------
; 593 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |593| 
        ldiu      2,r2                  ; |593| 
        ldiu      @CL22,r0              ; |593| 
        callu     r0                    ; far call to _API_STATUS	; |593| 
                                        ; |593| Far Call Occurs
	.line	72
;----------------------------------------------------------------------
; 594 | GIEP; return API_error_num;                                            
;----------------------------------------------------------------------
	pop		ST			
        bud       L287                  ; |594| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |594| 
;*      Branch Occurs to L287           ; |594| 
L196:        
	.line	74
;----------------------------------------------------------------------
; 596 | else if (t>90.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |596| 
        cmpf      9.0000000000e+01,f0   ; |596| 
        ble       L204                  ; |596| 
;*      Branch Occurs to L204           ; |596| 
	.line	75
;----------------------------------------------------------------------
; 597 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |597| 
        ldiu      1,r2                  ; |597| 
        ldiu      @CL22,r0              ; |597| 
        callu     r0                    ; far call to _API_STATUS	; |597| 
                                        ; |597| Far Call Occurs
        bu        L204                  ; |522| 
;*      Branch Occurs to L204           ; |522| 
L198:        
	.line	77
;----------------------------------------------------------------------
; 599 | else if (p<=1075.0)                                                    
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldfu      *+fp(5),f0            ; |599| 
        cmpf      @CL46,f0              ; |599| 
        bgt       L204                  ; |599| 
;*      Branch Occurs to L204           ; |599| 
	.line	79
;----------------------------------------------------------------------
; 601 | if (t>150.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |601| 
        cmpf      1.5000000000e+02,f0   ; |601| 
        ble       L202                  ; |601| 
;*      Branch Occurs to L202           ; |601| 
	.line	81
;----------------------------------------------------------------------
; 603 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |603| 
        ldiu      2,r2                  ; |603| 
        ldiu      @CL22,r0              ; |603| 
        callu     r0                    ; far call to _API_STATUS	; |603| 
                                        ; |603| Far Call Occurs
	.line	82
;----------------------------------------------------------------------
; 604 | GIEP; return API_error_num;                                            
;----------------------------------------------------------------------
	pop		ST			
        bud       L287                  ; |604| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |604| 
;*      Branch Occurs to L287           ; |604| 
L202:        
	.line	84
;----------------------------------------------------------------------
; 606 | else if (t>120.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |606| 
        cmpf      1.2000000000e+02,f0   ; |606| 
        ble       L204                  ; |606| 
;*      Branch Occurs to L204           ; |606| 
	.line	85
;----------------------------------------------------------------------
; 607 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |607| 
        ldiu      1,r2                  ; |607| 
        ldiu      @CL22,r0              ; |607| 
        callu     r0                    ; far call to _API_STATUS	; |607| 
                                        ; |607| Far Call Occurs
L204:        
	.line	88
;----------------------------------------------------------------------
; 610 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |610| 
        ldiu      0,r0                  ; |610| 
        sti       r0,*ar0               ; |610| 
	.line	89
;----------------------------------------------------------------------
; 611 | k0 = 613.9723;                                                         
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldfu      @CL50,f0              ; |611| 
        stf       f0,*+fp(7)            ; |611| 
	.line	90
;----------------------------------------------------------------------
; 612 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |612| 
        stf       f0,*+fp(8)            ; |612| 
	.line	91
;----------------------------------------------------------------------
; 613 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |613| 
        stf       f0,*+fp(9)            ; |613| 
	.line	93
;----------------------------------------------------------------------
; 615 | break;                                                                 
; 617 | case 'B':                                                              
;----------------------------------------------------------------------
        bu        L284                  ; |615| 
;*      Branch Occurs to L284           ; |615| 
L205:        
	.line	97
;----------------------------------------------------------------------
; 619 | if ((t<-18.0) || (p<653.0) || (p>1075.0))                              
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldfu      *+fp(4),f0            ; |619| 
        cmpf      @CL44,f0              ; |619| 
        blt       L208                  ; |619| 
;*      Branch Occurs to L208           ; |619| 
        ldp       @CL51,DP
        ldfu      *+fp(5),f0            ; |619| 
        cmpf      @CL51,f0              ; |619| 
        blt       L208                  ; |619| 
;*      Branch Occurs to L208           ; |619| 
        ldp       @CL46,DP
        cmpf      @CL46,f0              ; |619| 
        ble       L210                  ; |619| 
;*      Branch Occurs to L210           ; |619| 
L208:        
	.line	99
;----------------------------------------------------------------------
; 621 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |621| 
        ldiu      2,r2                  ; |621| 
        ldiu      @CL22,r0              ; |621| 
        callu     r0                    ; far call to _API_STATUS	; |621| 
                                        ; |621| Far Call Occurs
	.line	100
;----------------------------------------------------------------------
; 622 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	102
;----------------------------------------------------------------------
; 624 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |624| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |624| 
;*      Branch Occurs to L287           ; |624| 
L210:        
	.line	104
;----------------------------------------------------------------------
; 626 | else if (p<778.5)                                                      
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldfu      *+fp(5),f0            ; |626| 
        cmpf      @CL48,f0              ; |626| 
        bge       L216                  ; |626| 
;*      Branch Occurs to L216           ; |626| 
	.line	106
;----------------------------------------------------------------------
; 628 | if (t>90.0)                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |628| 
        cmpf      9.0000000000e+01,f0   ; |628| 
        ble       L214                  ; |628| 
;*      Branch Occurs to L214           ; |628| 
	.line	108
;----------------------------------------------------------------------
; 630 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |630| 
        ldiu      2,r2                  ; |630| 
        ldiu      @CL22,r0              ; |630| 
        callu     r0                    ; far call to _API_STATUS	; |630| 
                                        ; |630| Far Call Occurs
	.line	109
;----------------------------------------------------------------------
; 631 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	111
;----------------------------------------------------------------------
; 633 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |633| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |633| 
;*      Branch Occurs to L287           ; |633| 
L214:        
	.line	113
;----------------------------------------------------------------------
; 635 | else if (t>60.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |635| 
        cmpf      6.0000000000e+01,f0   ; |635| 
        ble       L228                  ; |635| 
;*      Branch Occurs to L228           ; |635| 
	.line	114
;----------------------------------------------------------------------
; 636 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |636| 
        ldiu      1,r2                  ; |636| 
        ldiu      @CL22,r0              ; |636| 
        callu     r0                    ; far call to _API_STATUS	; |636| 
                                        ; |636| Far Call Occurs
        bu        L228                  ; |522| 
;*      Branch Occurs to L228           ; |522| 
L216:        
	.line	116
;----------------------------------------------------------------------
; 638 | else if (p<824.0)                                                      
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldfu      *+fp(5),f0            ; |638| 
        cmpf      @CL49,f0              ; |638| 
        bge       L222                  ; |638| 
;*      Branch Occurs to L222           ; |638| 
	.line	118
;----------------------------------------------------------------------
; 640 | if (t>120.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |640| 
        cmpf      1.2000000000e+02,f0   ; |640| 
        ble       L220                  ; |640| 
;*      Branch Occurs to L220           ; |640| 
	.line	120
;----------------------------------------------------------------------
; 642 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |642| 
        ldiu      2,r2                  ; |642| 
        ldiu      @CL22,r0              ; |642| 
        callu     r0                    ; far call to _API_STATUS	; |642| 
                                        ; |642| Far Call Occurs
	.line	121
;----------------------------------------------------------------------
; 643 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	123
;----------------------------------------------------------------------
; 645 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |645| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |645| 
;*      Branch Occurs to L287           ; |645| 
L220:        
	.line	125
;----------------------------------------------------------------------
; 647 | else if (t>90.0)                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |647| 
        cmpf      9.0000000000e+01,f0   ; |647| 
        ble       L228                  ; |647| 
;*      Branch Occurs to L228           ; |647| 
	.line	126
;----------------------------------------------------------------------
; 648 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |648| 
        ldiu      1,r2                  ; |648| 
        ldiu      @CL22,r0              ; |648| 
        callu     r0                    ; far call to _API_STATUS	; |648| 
                                        ; |648| Far Call Occurs
        bu        L228                  ; |522| 
;*      Branch Occurs to L228           ; |522| 
L222:        
	.line	128
;----------------------------------------------------------------------
; 650 | else if (p<=1075.0)                                                    
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldfu      *+fp(5),f0            ; |650| 
        cmpf      @CL46,f0              ; |650| 
        bgt       L228                  ; |650| 
;*      Branch Occurs to L228           ; |650| 
	.line	130
;----------------------------------------------------------------------
; 652 | if (t>150.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |652| 
        cmpf      1.5000000000e+02,f0   ; |652| 
        ble       L226                  ; |652| 
;*      Branch Occurs to L226           ; |652| 
	.line	132
;----------------------------------------------------------------------
; 654 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |654| 
        ldiu      2,r2                  ; |654| 
        ldiu      @CL22,r0              ; |654| 
        callu     r0                    ; far call to _API_STATUS	; |654| 
                                        ; |654| Far Call Occurs
	.line	133
;----------------------------------------------------------------------
; 655 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	135
;----------------------------------------------------------------------
; 657 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |657| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |657| 
;*      Branch Occurs to L287           ; |657| 
L226:        
	.line	137
;----------------------------------------------------------------------
; 659 | else if (t>120.0)                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |659| 
        cmpf      1.2000000000e+02,f0   ; |659| 
        ble       L228                  ; |659| 
;*      Branch Occurs to L228           ; |659| 
	.line	138
;----------------------------------------------------------------------
; 660 | API_STATUS(fcidx, API_extrapolate);                                    
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |660| 
        ldiu      1,r2                  ; |660| 
        ldiu      @CL22,r0              ; |660| 
        callu     r0                    ; far call to _API_STATUS	; |660| 
                                        ; |660| Far Call Occurs
L228:        
	.line	141
;----------------------------------------------------------------------
; 663 | if (k_set[0]==-1)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |663| 
        ldiu      *ar0,r0               ; |663| 
        cmpi      -1,r0                 ; |663| 
        bne       L248                  ; |663| 
;*      Branch Occurs to L248           ; |663| 
	.line	143
;----------------------------------------------------------------------
; 665 | if ((p>=653.0) && (p<770.0))                                           
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldfu      *+fp(5),f0            ; |665| 
        cmpf      @CL51,f0              ; |665| 
        blt       L232                  ; |665| 
;*      Branch Occurs to L232           ; |665| 
        ldp       @CL52,DP
        cmpf      @CL52,f0              ; |665| 
        bge       L232                  ; |665| 
;*      Branch Occurs to L232           ; |665| 
	.line	144
;----------------------------------------------------------------------
; 666 | k_set[0] = 1;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |666| 
        sti       r0,*ar0               ; |666| 
        bu        L248                  ; |522| 
;*      Branch Occurs to L248           ; |522| 
L232:        
	.line	145
;----------------------------------------------------------------------
; 667 | else if ((p>=770.0) && (p<788.0))                                      
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldfu      *+fp(5),f0            ; |667| 
        cmpf      @CL52,f0              ; |667| 
        blt       L235                  ; |667| 
;*      Branch Occurs to L235           ; |667| 
        ldp       @CL53,DP
        cmpf      @CL53,f0              ; |667| 
        bge       L235                  ; |667| 
;*      Branch Occurs to L235           ; |667| 
	.line	146
;----------------------------------------------------------------------
; 668 | k_set[0] = 2;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |668| 
        ldiu      2,r0                  ; |668| 
        sti       r0,*ar0               ; |668| 
        bu        L248                  ; |522| 
;*      Branch Occurs to L248           ; |522| 
L235:        
	.line	147
;----------------------------------------------------------------------
; 669 | else if ((p>=788.0) && (p<839.0))                                      
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldfu      *+fp(5),f0            ; |669| 
        cmpf      @CL53,f0              ; |669| 
        blt       L238                  ; |669| 
;*      Branch Occurs to L238           ; |669| 
        ldp       @CL54,DP
        cmpf      @CL54,f0              ; |669| 
        bge       L238                  ; |669| 
;*      Branch Occurs to L238           ; |669| 
	.line	148
;----------------------------------------------------------------------
; 670 | k_set[0] = 3;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |670| 
        ldiu      3,r0                  ; |670| 
        sti       r0,*ar0               ; |670| 
        bu        L248                  ; |522| 
;*      Branch Occurs to L248           ; |522| 
L238:        
	.line	149
;----------------------------------------------------------------------
; 671 | else if ((p>=839.0) && (p<=1075.0))                                    
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldfu      *+fp(5),f0            ; |671| 
        cmpf      @CL54,f0              ; |671| 
        blt       L241                  ; |671| 
;*      Branch Occurs to L241           ; |671| 
        ldp       @CL46,DP
        cmpf      @CL46,f0              ; |671| 
        bgt       L241                  ; |671| 
;*      Branch Occurs to L241           ; |671| 
	.line	150
;----------------------------------------------------------------------
; 672 | k_set[0] = 4;                                                          
; 673 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |672| 
        ldiu      4,r0                  ; |672| 
        sti       r0,*ar0               ; |672| 
        bu        L248                  ; |522| 
;*      Branch Occurs to L248           ; |522| 
L241:        
	.line	152
;----------------------------------------------------------------------
; 674 | k_set[0] = -1;                                                         
; 677 | switch (k_set[0])                                                      
; 679 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |674| 
        ldiu      -1,r0                 ; |674| 
        sti       r0,*ar0               ; |674| 
        bu        L248                  ; |522| 
;*      Branch Occurs to L248           ; |522| 
L242:        
	.line	159
;----------------------------------------------------------------------
; 681 | k0 = 346.4228;                                                         
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldfu      @CL55,f0              ; |681| 
        stf       f0,*+fp(7)            ; |681| 
	.line	160
;----------------------------------------------------------------------
; 682 | k1 = 0.4388;                                                           
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldfu      @CL56,f0              ; |682| 
        stf       f0,*+fp(8)            ; |682| 
	.line	161
;----------------------------------------------------------------------
; 683 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |683| 
        stf       f0,*+fp(9)            ; |683| 
	.line	163
;----------------------------------------------------------------------
; 685 | break;                                                                 
; 687 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L284                  ; |685| 
;*      Branch Occurs to L284           ; |685| 
L243:        
	.line	167
;----------------------------------------------------------------------
; 689 | k0 = 2680.3206;                                                        
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldfu      @CL57,f0              ; |689| 
        stf       f0,*+fp(7)            ; |689| 
	.line	168
;----------------------------------------------------------------------
; 690 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |690| 
        stf       f0,*+fp(8)            ; |690| 
	.line	169
;----------------------------------------------------------------------
; 691 | k2 = -0.00336312;                                                      
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldfu      @CL58,f0              ; |691| 
        stf       f0,*+fp(9)            ; |691| 
	.line	171
;----------------------------------------------------------------------
; 693 | break;                                                                 
; 695 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L284                  ; |693| 
;*      Branch Occurs to L284           ; |693| 
L244:        
	.line	175
;----------------------------------------------------------------------
; 697 | k0 = 594.5470;                                                         
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldfu      @CL59,f0              ; |697| 
        stf       f0,*+fp(7)            ; |697| 
	.line	176
;----------------------------------------------------------------------
; 698 | k1 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |698| 
        stf       f0,*+fp(8)            ; |698| 
	.line	177
;----------------------------------------------------------------------
; 699 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |699| 
        stf       f0,*+fp(9)            ; |699| 
	.line	179
;----------------------------------------------------------------------
; 701 | break;                                                                 
; 703 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L284                  ; |701| 
;*      Branch Occurs to L284           ; |701| 
L245:        
	.line	183
;----------------------------------------------------------------------
; 705 | k0 = 186.9696;                                                         
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldfu      @CL60,f0              ; |705| 
        stf       f0,*+fp(7)            ; |705| 
	.line	184
;----------------------------------------------------------------------
; 706 | k1 = 0.4862;                                                           
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldfu      @CL61,f0              ; |706| 
        stf       f0,*+fp(8)            ; |706| 
	.line	185
;----------------------------------------------------------------------
; 707 | k2 = 0.0;                                                              
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |707| 
        stf       f0,*+fp(9)            ; |707| 
	.line	187
;----------------------------------------------------------------------
; 709 | break;                                                                 
; 711 | case 0:                                                                
; 712 | default:                                                               
;----------------------------------------------------------------------
        bu        L284                  ; |709| 
;*      Branch Occurs to L284           ; |709| 
L246:        
	.line	192
;----------------------------------------------------------------------
; 714 | k_set[0] = -1;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |714| 
        ldiu      -1,r0                 ; |714| 
        sti       r0,*ar0               ; |714| 
	.line	193
;----------------------------------------------------------------------
; 715 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	195
;----------------------------------------------------------------------
; 717 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |717| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |717| 
;*      Branch Occurs to L287           ; |717| 
L248:        
	.line	155
        ldiu      *+fp(3),ar0           ; |677| 
        ldiu      *ar0,r0               ; |677| 
        cmpi      0,r0                  ; |677| 
        beq       L246                  ; |677| 
;*      Branch Occurs to L246           ; |677| 
        cmpi      1,r0                  ; |677| 
        beq       L242                  ; |677| 
;*      Branch Occurs to L242           ; |677| 
        cmpi      2,r0                  ; |677| 
        beq       L243                  ; |677| 
;*      Branch Occurs to L243           ; |677| 
        cmpi      3,r0                  ; |677| 
        beq       L244                  ; |677| 
;*      Branch Occurs to L244           ; |677| 
        cmpi      4,r0                  ; |677| 
        beq       L245                  ; |677| 
;*      Branch Occurs to L245           ; |677| 
        bu        L246                  ; |677| 
;*      Branch Occurs to L246           ; |677| 
	.line	199
;----------------------------------------------------------------------
; 721 | break;                                                                 
; 723 | case 'C':                                                              
;----------------------------------------------------------------------
L255:        
	.line	203
;----------------------------------------------------------------------
; 725 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |725| 
        ldiu      0,r0                  ; |725| 
        sti       r0,*ar0               ; |725| 
	.line	204
;----------------------------------------------------------------------
; 726 | a                = f->a * 10e6;                                        
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      *+fp(13),ir0          ; |726| 
        ldiu      399,ar0               ; |726| 
        ldfu      @CL33,f0              ; |726| 
        mpyf3     *+ar0(ir0),f0,f0      ; |726| 
        stf       f0,*+fp(6)            ; |726| 
	.line	205
;----------------------------------------------------------------------
; 727 | t1               = (t*1.8) + 32.0;                                     
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldfu      @CL62,f0              ; |727| 
        mpyf      *+fp(4),f0            ; |727| 
        addf      3.2000000000e+01,f0   ; |727| 
        stf       f0,*+fp(10)           ; |727| 
	.line	207
;----------------------------------------------------------------------
; 729 | if ((t1<0.0) || (a<270.0) || (a>930.0))                                
;----------------------------------------------------------------------
        cmpf      0.0000000000e+00,f0   ; |729| 
        blt       L258                  ; |729| 
;*      Branch Occurs to L258           ; |729| 
        ldp       @CL34,DP
        ldfu      *+fp(6),f0            ; |729| 
        cmpf      @CL34,f0              ; |729| 
        blt       L258                  ; |729| 
;*      Branch Occurs to L258           ; |729| 
        ldp       @CL35,DP
        cmpf      @CL35,f0              ; |729| 
        ble       L260                  ; |729| 
;*      Branch Occurs to L260           ; |729| 
L258:        
	.line	209
;----------------------------------------------------------------------
; 731 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |731| 
        ldiu      2,r2                  ; |731| 
        ldiu      @CL22,r0              ; |731| 
        callu     r0                    ; far call to _API_STATUS	; |731| 
                                        ; |731| Far Call Occurs
	.line	210
;----------------------------------------------------------------------
; 732 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	212
;----------------------------------------------------------------------
; 734 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |734| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |734| 
;*      Branch Occurs to L287           ; |734| 
L260:        
	.line	214
;----------------------------------------------------------------------
; 736 | else if ((a<510.0) && (t1>300.0))                                      
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldfu      *+fp(6),f0            ; |736| 
        cmpf      @CL36,f0              ; |736| 
        bge       L264                  ; |736| 
;*      Branch Occurs to L264           ; |736| 
        ldp       @CL24,DP
        ldfu      *+fp(10),f0           ; |736| 
        cmpf      @CL24,f0              ; |736| 
        ble       L264                  ; |736| 
;*      Branch Occurs to L264           ; |736| 
	.line	216
;----------------------------------------------------------------------
; 738 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |738| 
        ldiu      2,r2                  ; |738| 
        ldiu      @CL22,r0              ; |738| 
        callu     r0                    ; far call to _API_STATUS	; |738| 
                                        ; |738| Far Call Occurs
	.line	217
;----------------------------------------------------------------------
; 739 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	219
;----------------------------------------------------------------------
; 741 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |741| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |741| 
;*      Branch Occurs to L287           ; |741| 
L264:        
	.line	221
;----------------------------------------------------------------------
; 743 | else if ((a<530.0) && (t1>250.0))                                      
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldfu      *+fp(6),f0            ; |743| 
        cmpf      @CL37,f0              ; |743| 
        bge       L268                  ; |743| 
;*      Branch Occurs to L268           ; |743| 
        ldfu      *+fp(10),f0           ; |743| 
        cmpf      2.5000000000e+02,f0   ; |743| 
        ble       L268                  ; |743| 
;*      Branch Occurs to L268           ; |743| 
	.line	223
;----------------------------------------------------------------------
; 745 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |745| 
        ldiu      2,r2                  ; |745| 
        ldiu      @CL22,r0              ; |745| 
        callu     r0                    ; far call to _API_STATUS	; |745| 
                                        ; |745| Far Call Occurs
	.line	224
;----------------------------------------------------------------------
; 746 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	226
;----------------------------------------------------------------------
; 748 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |748| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |748| 
;*      Branch Occurs to L287           ; |748| 
L268:        
	.line	228
;----------------------------------------------------------------------
; 750 | else if ((a<=930.0) && (t1>200.0))                                     
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldfu      *+fp(6),f0            ; |750| 
        cmpf      @CL35,f0              ; |750| 
        bgt       L271                  ; |750| 
;*      Branch Occurs to L271           ; |750| 
        ldfu      *+fp(10),f0           ; |750| 
        cmpf      2.0000000000e+02,f0   ; |750| 
        ble       L271                  ; |750| 
;*      Branch Occurs to L271           ; |750| 
	.line	230
;----------------------------------------------------------------------
; 752 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |752| 
        ldiu      2,r2                  ; |752| 
        ldiu      @CL22,r0              ; |752| 
        callu     r0                    ; far call to _API_STATUS	; |752| 
                                        ; |752| Far Call Occurs
	.line	231
;----------------------------------------------------------------------
; 753 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	233
;----------------------------------------------------------------------
; 755 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |755| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |755| 
;*      Branch Occurs to L287           ; |755| 
L271:        
	.line	236
;----------------------------------------------------------------------
; 758 | a = f->a;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |758| 
        ldiu      399,ar0               ; |758| 
        ldfu      *+ar0(ir0),f0         ; |758| 
        stf       f0,*+fp(6)            ; |758| 
	.line	238
;----------------------------------------------------------------------
; 760 | break;                                                                 
; 762 | case 'D':                                                              
; 763 | default:                                                               
;----------------------------------------------------------------------
        bu        L284                  ; |760| 
;*      Branch Occurs to L284           ; |760| 
L272:        
	.line	243
;----------------------------------------------------------------------
; 765 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |765| 
        ldiu      398,ar0               ; |765| 
        ldiu      17408,r0              ; |765| 
        sti       r0,*+ar0(ir0)         ; |765| 
	.line	244
;----------------------------------------------------------------------
; 766 | p                        = kgm3_to_API(r);                             
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldfu      *+fp(2),f2            ; |766| 
        ldiu      @CL21,r0              ; |766| 
        callu     r0                    ; far call to _kgm3_to_API	; |766| 
                                        ; |766| Far Call Occurs
        stf       f0,*+fp(5)            ; |766| 
	.line	245
;----------------------------------------------------------------------
; 767 | t1                       = (t*1.8) + 32.0;                             
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldfu      @CL62,f0              ; |767| 
        mpyf      *+fp(4),f0            ; |767| 
        addf      3.2000000000e+01,f0   ; |767| 
        stf       f0,*+fp(10)           ; |767| 
	.line	247
;----------------------------------------------------------------------
; 769 | if ((p<-10.0) || (p>45.0) || (t1<0.0) || (t1>300.0))                   
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldfu      *+fp(5),f0            ; |769| 
        cmpf      @CL38,f0              ; |769| 
        blt       L276                  ; |769| 
;*      Branch Occurs to L276           ; |769| 
        cmpf      4.5000000000e+01,f0   ; |769| 
        bgt       L276                  ; |769| 
;*      Branch Occurs to L276           ; |769| 
        ldfu      *+fp(10),f0           ; |769| 
        cmpf      0.0000000000e+00,f0   ; |769| 
        blt       L276                  ; |769| 
;*      Branch Occurs to L276           ; |769| 
        ldp       @CL24,DP
        cmpf      @CL24,f0              ; |769| 
        ble       L277                  ; |769| 
;*      Branch Occurs to L277           ; |769| 
L276:        
	.line	249
;----------------------------------------------------------------------
; 771 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |771| 
        ldiu      2,r2                  ; |771| 
        ldiu      @CL22,r0              ; |771| 
        callu     r0                    ; far call to _API_STATUS	; |771| 
                                        ; |771| Far Call Occurs
	.line	250
;----------------------------------------------------------------------
; 772 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	252
;----------------------------------------------------------------------
; 774 | return API_error_num;                                                  
;----------------------------------------------------------------------
        bud       L287                  ; |774| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |774| 
;*      Branch Occurs to L287           ; |774| 
L277:        
	.line	255
;----------------------------------------------------------------------
; 777 | k_set[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |777| 
        ldiu      0,r0                  ; |777| 
        sti       r0,*ar0               ; |777| 
	.line	256
;----------------------------------------------------------------------
; 778 | k0               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |778| 
        stf       f0,*+fp(7)            ; |778| 
	.line	257
;----------------------------------------------------------------------
; 779 | k1               = 0.6278;                                             
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldfu      @CL63,f0              ; |779| 
        stf       f0,*+fp(8)            ; |779| 
	.line	258
;----------------------------------------------------------------------
; 780 | k2               = 0.0;                                                
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |780| 
        stf       f0,*+fp(9)            ; |780| 
	.line	260
;----------------------------------------------------------------------
; 782 | break;                                                                 
;----------------------------------------------------------------------
        bu        L284                  ; |782| 
;*      Branch Occurs to L284           ; |782| 
L279:        
	.line	28
        ldiu      *+fp(13),ir0          ; |550| 
        ldiu      398,ar0               ; |550| 
        ldiu      -8,r0                 ; |550| 
        ash3      r0,*+ar0(ir0),r0      ; |550| 
        cmpi      65,r0                 ; |550| 
        beq       L176                  ; |550| 
;*      Branch Occurs to L176           ; |550| 
        cmpi      66,r0                 ; |550| 
        beq       L205                  ; |550| 
;*      Branch Occurs to L205           ; |550| 
        cmpi      67,r0                 ; |550| 
        beq       L255                  ; |550| 
;*      Branch Occurs to L255           ; |550| 
        cmpi      68,r0                 ; |550| 
        beq       L272                  ; |550| 
;*      Branch Occurs to L272           ; |550| 
        bu        L272                  ; |550| 
;*      Branch Occurs to L272           ; |550| 
L284:        
	.line	264
;----------------------------------------------------------------------
; 786 | t -= 15.0;                                                             
;----------------------------------------------------------------------
        ldfu      1.5000000000e+01,f0   ; |786| 
        subrf     *+fp(4),f0            ; |786| 
        stf       f0,*+fp(4)            ; |786| 
	.line	265
;----------------------------------------------------------------------
; 787 | p  = r;                                                                
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |787| 
        stf       f0,*+fp(5)            ; |787| 
	.line	267
;----------------------------------------------------------------------
; 789 | if ((f->API_TABLE>>8) != 'C')                                          
; 790 | {//a = (k0/(p*p)) + (k1/p) + k2;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(13),ir0          ; |789| 
        ldiu      398,ar0               ; |789| 
        ldiu      -8,r0                 ; |789| 
        ash3      r0,*+ar0(ir0),r0      ; |789| 
        cmpi      67,r0                 ; |789| 
        beq       L286                  ; |789| 
;*      Branch Occurs to L286           ; |789| 
	.line	269
;----------------------------------------------------------------------
; 791 | t1 = truncate((k0/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |791| 
        ldfu      *+fp(5),f1            ; |791| 
        call      DIV_F30               ; |791| 
                                        ; |791| Call Occurs
        ldp       @CL40,DP
        ldfu      f0,f2                 ; |791| 
        ldiu      @CL40,r1              ; |791| 
        ldiu      8,ar2                 ; |791| 
        callu     r1                    ; far call to _truncate	; |791| 
                                        ; |791| Far Call Occurs
        stf       f0,*+fp(10)           ; |791| 
	.line	270
;----------------------------------------------------------------------
; 792 | t2 = truncate((t1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |792| 
        call      DIV_F30               ; |792| 
                                        ; |792| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |792| 
        ldiu      8,ar2                 ; |792| 
        ldfu      f0,f2                 ; |792| 
        callu     r1                    ; far call to _truncate	; |792| 
                                        ; |792| Far Call Occurs
        stf       f0,*+fp(11)           ; |792| 
	.line	271
;----------------------------------------------------------------------
; 793 | t3 = truncate((k1/p),8);                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |793| 
        ldfu      *+fp(8),f0            ; |793| 
        call      DIV_F30               ; |793| 
                                        ; |793| Call Occurs
        ldp       @CL40,DP
        ldiu      @CL40,r1              ; |793| 
        ldfu      f0,f2                 ; |793| 
        ldiu      8,ar2                 ; |793| 
        callu     r1                    ; far call to _truncate	; |793| 
                                        ; |793| Far Call Occurs
        stf       f0,*+fp(12)           ; |793| 
	.line	272
;----------------------------------------------------------------------
; 794 | a  = sigfig((t2+t3+k2), 4);                                            
;----------------------------------------------------------------------
        ldfu      f0,f2
        addf      *+fp(11),f2           ; |794| 
        ldiu      4,ar2                 ; |794| 
        ldp       @CL41,DP
        addf      *+fp(9),f2            ; |794| 
        ldiu      @CL41,r0              ; |794| 
        callu     r0                    ; far call to _sigfig	; |794| 
                                        ; |794| Far Call Occurs
        stf       f0,*+fp(6)            ; |794| 
L286:        
	.line	275
;----------------------------------------------------------------------
; 797 | t = p * exp(-a*t*(1.0+0.8*a*t));                                       
;----------------------------------------------------------------------
        ldfu      *+fp(6),f1            ; |797| 
        ldp       @CL42,DP
        negf      *+fp(6),f0            ; |797| 
        mpyf      @CL42,f1              ; |797| 
        mpyf      *+fp(4),f0            ; |797| 
        ldp       @CL43,DP
        mpyf      *+fp(4),f1            ; |797| 
        ldiu      @CL43,r3              ; |797| 
        addf      1.0000000000e+00,f1   ; |797| 
        mpyf3     f1,f0,f2              ; |797| 
        callu     r3                    ; far call to _exp	; |797| 
                                        ; |797| Far Call Occurs
        mpyf      *+fp(5),f0            ; |797| 
        stf       f0,*+fp(4)            ; |797| 
	.line	277
;----------------------------------------------------------------------
; 799 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	278
;----------------------------------------------------------------------
; 800 | return t;                                                              
;----------------------------------------------------------------------
L287:        
	.line	279
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |801| 
        ldiu      *fp,fp                ; |801| 
                                        ; Restore SOE Registers
        pop       ar4                   ; |801| 
                                        ; Unallocate the Frame
        subi      15,sp                 ; |801| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	801,000001000h,13


	.sect	 ".text"

	.global	_API_PT_ST
	.sym	_API_PT_ST,_API_PT_ST,39,2,0
	.func	818
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
; 818 | double API_PT_ST(const int fcidx, const double r, const BOOL F60, const
;     |  BOOL RET_VCF)                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      16,sp
	.line	2
;----------------------------------------------------------------------
; 820 | double pini;    /* initial data */                                     
; 821 | double pn;              /* calculated data */                          
; 822 | double pnext;                                                          
; 823 | double a;               /* API @ process temperature */                
; 824 | double p;               /* process API */                              
; 825 | double vcf;                                                            
; 826 | int i;                  /* Counter */                                  
; 827 | int k, k0;              /* Constants */                                
; 828 | BOOL k_change;  /* Change constants? */                                
; 829 | BOOL cont;              /* Continue? */                                
; 830 | FLOW_COMP* f;   /* FC[fcidx] - Flow Computer @ index */                
;----------------------------------------------------------------------
        sti       rc,*+fp(4)            ; |819| 
        sti       r3,*+fp(3)            ; |819| 
        stf       f2,*+fp(2)            ; |819| 
        sti       ar2,*+fp(1)           ; |819| 
	.line	15
;----------------------------------------------------------------------
; 832 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	17
;----------------------------------------------------------------------
; 834 | i = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |834| 
        sti       r0,*+fp(11)           ; |834| 
	.line	18
;----------------------------------------------------------------------
; 835 | f = &FC[fcidx];                                                        
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      ar2,r0
        mpyi      1336,r0               ; |835| 
        addi      @CL20,r0              ; |835| Unsigned
        sti       r0,*+fp(16)           ; |835| 
	.line	19
;----------------------------------------------------------------------
; 836 | pini = r;                                                              
;----------------------------------------------------------------------
        ldfu      f2,f0
        stf       f0,*+fp(5)            ; |836| 
	.line	20
;----------------------------------------------------------------------
; 837 | pn = pini;                                                             
;----------------------------------------------------------------------
        stf       f0,*+fp(6)            ; |837| 
	.line	21
;----------------------------------------------------------------------
; 838 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |838| 
        stf       f0,*+fp(7)            ; |838| 
	.line	22
;----------------------------------------------------------------------
; 839 | k = -1;                                                                
; 841 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      -1,r0                 ; |839| 
        sti       r0,*+fp(12)           ; |839| 
L290:        
	.line	26
;----------------------------------------------------------------------
; 843 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |843| 
        addi      *+fp(11),r0           ; |843| 
        sti       r0,*+fp(11)           ; |843| 
	.line	28
;----------------------------------------------------------------------
; 845 | if (i>25)                                                              
;----------------------------------------------------------------------
        cmpi      25,r0                 ; |845| 
        ble       L292                  ; |845| 
;*      Branch Occurs to L292           ; |845| 
	.line	30
;----------------------------------------------------------------------
; 847 | API_STATUS(fcidx, API_fail);                                           
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      *+fp(1),ar2           ; |847| 
        ldiu      2,r2                  ; |847| 
        ldiu      @CL22,r0              ; |847| 
        callu     r0                    ; far call to _API_STATUS	; |847| 
                                        ; |847| Far Call Occurs
	.line	31
;----------------------------------------------------------------------
; 848 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |848| 
        stf       f0,*+fp(7)            ; |848| 
	.line	33
;----------------------------------------------------------------------
; 850 | break;                                                                 
;----------------------------------------------------------------------
        bu        L355                  ; |850| 
;*      Branch Occurs to L355           ; |850| 
L292:        
	.line	36
;----------------------------------------------------------------------
; 853 | k0 = k;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |853| 
        sti       r0,*+fp(13)           ; |853| 
	.line	38
;----------------------------------------------------------------------
; 855 | if (F60)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |855| 
        cmpi      0,r0                  ; |855| 
        beq       L294                  ; |855| 
;*      Branch Occurs to L294           ; |855| 
	.line	39
;----------------------------------------------------------------------
; 856 | a = API_60F_PT(fcidx, pn, &k);                                         
; 857 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      fp,r3                 ; |856| 
        ldiu      *+fp(1),ar2           ; |856| 
        ldfu      *+fp(6),f2            ; |856| 
        ldiu      @CL64,r0              ; |856| 
        addi      12,r3                 ; |856| 
        callu     r0                    ; far call to _API_60F_PT	; |856| 
                                        ; |856| Far Call Occurs
        stf       f0,*+fp(8)            ; |856| 
        bu        L295                  ; |817| 
;*      Branch Occurs to L295           ; |817| 
L294:        
	.line	41
;----------------------------------------------------------------------
; 858 | a = API_15C_PT(fcidx, pn, &k);                                         
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      fp,r3                 ; |858| 
        ldiu      *+fp(1),ar2           ; |858| 
        ldfu      *+fp(6),f2            ; |858| 
        ldiu      @CL65,r0              ; |858| 
        addi      12,r3                 ; |858| 
        callu     r0                    ; far call to _API_15C_PT	; |858| 
                                        ; |858| Far Call Occurs
        stf       f0,*+fp(8)            ; |858| 
L295:        
	.line	43
;----------------------------------------------------------------------
; 860 | if (a==API_error_num)                                                  
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      *+fp(8),f0            ; |860| 
        cmpf      @CL23,f0              ; |860| 
        bne       L297                  ; |860| 
;*      Branch Occurs to L297           ; |860| 
	.line	45
;----------------------------------------------------------------------
; 862 | pnext = API_error_num;                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |862| 
        stf       f0,*+fp(7)            ; |862| 
	.line	47
;----------------------------------------------------------------------
; 864 | break;                                                                 
;----------------------------------------------------------------------
        bu        L355                  ; |864| 
;*      Branch Occurs to L355           ; |864| 
L297:        
	.line	50
;----------------------------------------------------------------------
; 867 | p                = kgm3_to_API(a);                                     
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldfu      *+fp(8),f2            ; |867| 
        ldiu      @CL21,r0              ; |867| 
        callu     r0                    ; far call to _kgm3_to_API	; |867| 
                                        ; |867| Far Call Occurs
        stf       f0,*+fp(9)            ; |867| 
	.line	51
;----------------------------------------------------------------------
; 868 | k_change = FALSE;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |868| 
        sti       r0,*+fp(14)           ; |868| 
	.line	52
;----------------------------------------------------------------------
; 869 | cont     = FALSE;                                                      
; 871 | switch (f->API_TABLE>>8)                                               
; 873 |         case 'A':       /* crude oil */                                
;----------------------------------------------------------------------
        sti       r0,*+fp(15)           ; |869| 
        bu        L345                  ; |817| 
;*      Branch Occurs to L345           ; |817| 
	.line	57
;----------------------------------------------------------------------
; 874 | break;                                                                 
; 875 | case 'B':                                                              
;----------------------------------------------------------------------
L299:        
	.line	60
;----------------------------------------------------------------------
; 877 | if (F60)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |877| 
        cmpi      0,r0                  ; |877| 
        beq       L320                  ; |877| 
;*      Branch Occurs to L320           ; |877| 
	.line	62
;----------------------------------------------------------------------
; 879 | if ((p>=0.0) && (p<37.0))                                              
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |879| 
        cmpf      0.0000000000e+00,f0   ; |879| 
        blt       L305                  ; |879| 
;*      Branch Occurs to L305           ; |879| 
        cmpf      3.7000000000e+01,f0   ; |879| 
        bge       L305                  ; |879| 
;*      Branch Occurs to L305           ; |879| 
	.line	64
;----------------------------------------------------------------------
; 881 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |881| 
        cmpi      *+fp(13),r0           ; |881| 
        beq       L340                  ; |881| 
;*      Branch Occurs to L340           ; |881| 
	.line	66
;----------------------------------------------------------------------
; 883 | k = 1;                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |883| 
        sti       r0,*+fp(12)           ; |883| 
	.line	68
;----------------------------------------------------------------------
; 885 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |885| 
        cmpi      -1,r0                 ; |885| 
        beq       L340                  ; |885| 
;*      Branch Occurs to L340           ; |885| 
	.line	69
;----------------------------------------------------------------------
; 886 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |886| 
        sti       r0,*+fp(14)           ; |886| 
        bu        L340                  ; |817| 
;*      Branch Occurs to L340           ; |817| 
L305:        
	.line	72
;----------------------------------------------------------------------
; 889 | else if ((p>=37.0) && (p<48.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |889| 
        cmpf      3.7000000000e+01,f0   ; |889| 
        blt       L310                  ; |889| 
;*      Branch Occurs to L310           ; |889| 
        cmpf      4.8000000000e+01,f0   ; |889| 
        bge       L310                  ; |889| 
;*      Branch Occurs to L310           ; |889| 
	.line	74
;----------------------------------------------------------------------
; 891 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |891| 
        cmpi      *+fp(13),r0           ; |891| 
        beq       L340                  ; |891| 
;*      Branch Occurs to L340           ; |891| 
	.line	76
;----------------------------------------------------------------------
; 893 | k = 2;                                                                 
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |893| 
        sti       r0,*+fp(12)           ; |893| 
	.line	78
;----------------------------------------------------------------------
; 895 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |895| 
        cmpi      -1,r0                 ; |895| 
        beq       L340                  ; |895| 
;*      Branch Occurs to L340           ; |895| 
	.line	79
;----------------------------------------------------------------------
; 896 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |896| 
        sti       r0,*+fp(14)           ; |896| 
        bu        L340                  ; |817| 
;*      Branch Occurs to L340           ; |817| 
L310:        
	.line	82
;----------------------------------------------------------------------
; 899 | else if ((p>=48.0) && (p<52.0))                                        
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |899| 
        cmpf      4.8000000000e+01,f0   ; |899| 
        blt       L315                  ; |899| 
;*      Branch Occurs to L315           ; |899| 
        cmpf      5.2000000000e+01,f0   ; |899| 
        bge       L315                  ; |899| 
;*      Branch Occurs to L315           ; |899| 
	.line	84
;----------------------------------------------------------------------
; 901 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |901| 
        cmpi      *+fp(13),r0           ; |901| 
        beq       L340                  ; |901| 
;*      Branch Occurs to L340           ; |901| 
	.line	86
;----------------------------------------------------------------------
; 903 | k = 3;                                                                 
;----------------------------------------------------------------------
        ldiu      3,r0                  ; |903| 
        sti       r0,*+fp(12)           ; |903| 
	.line	88
;----------------------------------------------------------------------
; 905 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |905| 
        cmpi      -1,r0                 ; |905| 
        beq       L340                  ; |905| 
;*      Branch Occurs to L340           ; |905| 
	.line	89
;----------------------------------------------------------------------
; 906 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |906| 
        sti       r0,*+fp(14)           ; |906| 
        bu        L340                  ; |817| 
;*      Branch Occurs to L340           ; |817| 
L315:        
	.line	92
;----------------------------------------------------------------------
; 909 | else if ((p>=52.0) && (p<=85.0))                                       
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |909| 
        cmpf      5.2000000000e+01,f0   ; |909| 
        blt       L340                  ; |909| 
;*      Branch Occurs to L340           ; |909| 
        cmpf      8.5000000000e+01,f0   ; |909| 
        bgt       L340                  ; |909| 
;*      Branch Occurs to L340           ; |909| 
	.line	94
;----------------------------------------------------------------------
; 911 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |911| 
        cmpi      *+fp(13),r0           ; |911| 
        beq       L340                  ; |911| 
;*      Branch Occurs to L340           ; |911| 
	.line	96
;----------------------------------------------------------------------
; 913 | k = 4;                                                                 
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |913| 
        sti       r0,*+fp(12)           ; |913| 
	.line	98
;----------------------------------------------------------------------
; 915 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |915| 
        cmpi      -1,r0                 ; |915| 
        beq       L340                  ; |915| 
;*      Branch Occurs to L340           ; |915| 
	.line	99
;----------------------------------------------------------------------
; 916 | k_change = TRUE;                                                       
; 920 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |916| 
        sti       r0,*+fp(14)           ; |916| 
        bu        L340                  ; |817| 
;*      Branch Occurs to L340           ; |817| 
L320:        
	.line	105
;----------------------------------------------------------------------
; 922 | if ((p>=653.0) && (p<770.0))                                           
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldfu      *+fp(9),f0            ; |922| 
        cmpf      @CL51,f0              ; |922| 
        blt       L325                  ; |922| 
;*      Branch Occurs to L325           ; |922| 
        ldp       @CL52,DP
        cmpf      @CL52,f0              ; |922| 
        bge       L325                  ; |922| 
;*      Branch Occurs to L325           ; |922| 
	.line	107
;----------------------------------------------------------------------
; 924 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |924| 
        cmpi      *+fp(13),r0           ; |924| 
        beq       L350                  ; |924| 
;*      Branch Occurs to L350           ; |924| 
	.line	109
;----------------------------------------------------------------------
; 926 | k = 1;                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |926| 
        sti       r0,*+fp(12)           ; |926| 
	.line	111
;----------------------------------------------------------------------
; 928 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |928| 
        cmpi      -1,r0                 ; |928| 
        beq       L350                  ; |928| 
;*      Branch Occurs to L350           ; |928| 
	.line	112
;----------------------------------------------------------------------
; 929 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |929| 
        sti       r0,*+fp(14)           ; |929| 
        bu        L350                  ; |817| 
;*      Branch Occurs to L350           ; |817| 
L325:        
	.line	115
;----------------------------------------------------------------------
; 932 | else if ((p>=770.0) && (p<788.0))                                      
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldfu      *+fp(9),f0            ; |932| 
        cmpf      @CL52,f0              ; |932| 
        blt       L330                  ; |932| 
;*      Branch Occurs to L330           ; |932| 
        ldp       @CL53,DP
        cmpf      @CL53,f0              ; |932| 
        bge       L330                  ; |932| 
;*      Branch Occurs to L330           ; |932| 
	.line	117
;----------------------------------------------------------------------
; 934 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |934| 
        cmpi      *+fp(13),r0           ; |934| 
        beq       L350                  ; |934| 
;*      Branch Occurs to L350           ; |934| 
	.line	119
;----------------------------------------------------------------------
; 936 | k = 2;                                                                 
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |936| 
        sti       r0,*+fp(12)           ; |936| 
	.line	121
;----------------------------------------------------------------------
; 938 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |938| 
        cmpi      -1,r0                 ; |938| 
        beq       L350                  ; |938| 
;*      Branch Occurs to L350           ; |938| 
	.line	122
;----------------------------------------------------------------------
; 939 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |939| 
        sti       r0,*+fp(14)           ; |939| 
        bu        L350                  ; |817| 
;*      Branch Occurs to L350           ; |817| 
L330:        
	.line	125
;----------------------------------------------------------------------
; 942 | else if ((p>=788.0) && (p<839.0))                                      
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldfu      *+fp(9),f0            ; |942| 
        cmpf      @CL53,f0              ; |942| 
        blt       L335                  ; |942| 
;*      Branch Occurs to L335           ; |942| 
        ldp       @CL54,DP
        cmpf      @CL54,f0              ; |942| 
        bge       L335                  ; |942| 
;*      Branch Occurs to L335           ; |942| 
	.line	127
;----------------------------------------------------------------------
; 944 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |944| 
        cmpi      *+fp(13),r0           ; |944| 
        beq       L350                  ; |944| 
;*      Branch Occurs to L350           ; |944| 
	.line	129
;----------------------------------------------------------------------
; 946 | k = 3;                                                                 
;----------------------------------------------------------------------
        ldiu      3,r0                  ; |946| 
        sti       r0,*+fp(12)           ; |946| 
	.line	131
;----------------------------------------------------------------------
; 948 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |948| 
        cmpi      -1,r0                 ; |948| 
        beq       L350                  ; |948| 
;*      Branch Occurs to L350           ; |948| 
	.line	132
;----------------------------------------------------------------------
; 949 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |949| 
        sti       r0,*+fp(14)           ; |949| 
        bu        L350                  ; |817| 
;*      Branch Occurs to L350           ; |817| 
L335:        
	.line	135
;----------------------------------------------------------------------
; 952 | else if ((p>=839.0) && (p<=1075.0))                                    
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldfu      *+fp(9),f0            ; |952| 
        cmpf      @CL54,f0              ; |952| 
        blt       L350                  ; |952| 
;*      Branch Occurs to L350           ; |952| 
        ldp       @CL46,DP
        cmpf      @CL46,f0              ; |952| 
        bgt       L350                  ; |952| 
;*      Branch Occurs to L350           ; |952| 
	.line	137
;----------------------------------------------------------------------
; 954 | if (k!=k0)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |954| 
        cmpi      *+fp(13),r0           ; |954| 
        beq       L350                  ; |954| 
;*      Branch Occurs to L350           ; |954| 
	.line	139
;----------------------------------------------------------------------
; 956 | k = 4;                                                                 
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |956| 
        sti       r0,*+fp(12)           ; |956| 
	.line	141
;----------------------------------------------------------------------
; 958 | if (k0!=-1)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(13),r0           ; |958| 
        cmpi      -1,r0                 ; |958| 
        beq       L350                  ; |958| 
;*      Branch Occurs to L350           ; |958| 
	.line	142
;----------------------------------------------------------------------
; 959 | k_change = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |959| 
        sti       r0,*+fp(14)           ; |959| 
	.line	146
;----------------------------------------------------------------------
; 963 | break;                                                                 
;----------------------------------------------------------------------
        bu        L350                  ; |963| 
;*      Branch Occurs to L350           ; |963| 
L340:        
	.line	149
;----------------------------------------------------------------------
; 966 | if (k_change)                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(14),r0           ; |966| 
        cmpi      0,r0                  ; |966| 
        beq       L350                  ; |966| 
;*      Branch Occurs to L350           ; |966| 
	.line	151
;----------------------------------------------------------------------
; 968 | pn       = pini;                                                       
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |968| 
        stf       f0,*+fp(6)            ; |968| 
	.line	152
;----------------------------------------------------------------------
; 969 | cont = TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |969| 
        sti       r0,*+fp(15)           ; |969| 
	.line	155
;----------------------------------------------------------------------
; 972 | break;                                                                 
; 974 | case 'C':                                                              
;----------------------------------------------------------------------
        bu        L350                  ; |972| 
;*      Branch Occurs to L350           ; |972| 
	.line	158
;----------------------------------------------------------------------
; 975 | break;                                                                 
; 976 | case 'D':                                                              
; 977 | default:                                                               
;----------------------------------------------------------------------
L343:        
	.line	162
;----------------------------------------------------------------------
; 979 | f->API_TABLE = 'D'<<8;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(16),ir0          ; |979| 
        ldiu      398,ar0               ; |979| 
        ldiu      17408,r0              ; |979| 
        sti       r0,*+ar0(ir0)         ; |979| 
	.line	163
;----------------------------------------------------------------------
; 980 | break;                                                                 
;----------------------------------------------------------------------
        bu        L350                  ; |980| 
;*      Branch Occurs to L350           ; |980| 
L345:        
	.line	54
        ldiu      *+fp(16),ir0          ; |871| 
        ldiu      398,ar0               ; |871| 
        ldiu      -8,r0                 ; |871| 
        ash3      r0,*+ar0(ir0),r0      ; |871| 
        cmpi      65,r0                 ; |871| 
        beq       L350                  ; |871| 
;*      Branch Occurs to L350           ; |871| 
        cmpi      66,r0                 ; |871| 
        beq       L299                  ; |871| 
;*      Branch Occurs to L299           ; |871| 
        cmpi      67,r0                 ; |871| 
        beq       L350                  ; |871| 
;*      Branch Occurs to L350           ; |871| 
        cmpi      68,r0                 ; |871| 
        beq       L343                  ; |871| 
;*      Branch Occurs to L343           ; |871| 
        bu        L343                  ; |871| 
;*      Branch Occurs to L343           ; |871| 
L350:        
	.line	167
;----------------------------------------------------------------------
; 984 | if (cont)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(15),r0           ; |984| 
        cmpi      0,r0                  ; |984| 
        bne       L290                  ; |984| 
;*      Branch Occurs to L290           ; |984| 
	.line	168
;----------------------------------------------------------------------
; 985 | continue;                                                              
;----------------------------------------------------------------------
	.line	170
;----------------------------------------------------------------------
; 987 | vcf = sigfig(a/pn,7);                                                  
;----------------------------------------------------------------------
        ldfu      *+fp(8),f0            ; |987| 
        ldfu      *+fp(6),f1            ; |987| 
        call      DIV_F30               ; |987| 
                                        ; |987| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,r1              ; |987| 
        ldiu      7,ar2                 ; |987| 
        ldfu      f0,f2                 ; |987| 
        callu     r1                    ; far call to _sigfig	; |987| 
                                        ; |987| Far Call Occurs
        stf       f0,*+fp(10)           ; |987| 
	.line	172
;----------------------------------------------------------------------
; 989 | if (RET_VCF)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |989| 
        cmpi      0,r0                  ; |989| 
        beq       L353                  ; |989| 
;*      Branch Occurs to L353           ; |989| 
	.line	174
;----------------------------------------------------------------------
; 991 | pnext = vcf;                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(10),f0           ; |991| 
        stf       f0,*+fp(7)            ; |991| 
	.line	176
;----------------------------------------------------------------------
; 993 | break;                                                                 
;----------------------------------------------------------------------
        bu        L355                  ; |993| 
;*      Branch Occurs to L355           ; |993| 
L353:        
	.line	179
;----------------------------------------------------------------------
; 996 | pnext = sigfig(pini/vcf,7);                                            
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |996| 
        ldfu      *+fp(10),f1           ; |996| 
        call      DIV_F30               ; |996| 
                                        ; |996| Call Occurs
        ldp       @CL41,DP
        ldiu      @CL41,r1              ; |996| 
        ldiu      7,ar2                 ; |996| 
        ldfu      f0,f2                 ; |996| 
        callu     r1                    ; far call to _sigfig	; |996| 
                                        ; |996| Far Call Occurs
        stf       f0,*+fp(7)            ; |996| 
	.line	181
;----------------------------------------------------------------------
; 998 | if ((pnext-pn)<0.050)                                                  
;----------------------------------------------------------------------
        ldp       @CL66,DP
        ldfu      *+fp(6),f0            ; |998| 
        subrf     *+fp(7),f0            ; |998| 
        cmpf      @CL66,f0              ; |998| 
        blt       L355                  ; |998| 
;*      Branch Occurs to L355           ; |998| 
	.line	182
;----------------------------------------------------------------------
; 999 | break;                                                                 
;----------------------------------------------------------------------
	.line	184
;----------------------------------------------------------------------
; 1001 | pn = pnext;                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |1001| 
        stf       f0,*+fp(6)            ; |1001| 
	.line	185
        bu        L290                  ; |1002| 
;*      Branch Occurs to L290           ; |1002| 
L355:        
	.line	187
;----------------------------------------------------------------------
; 1004 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	188
;----------------------------------------------------------------------
; 1005 | return pnext;                                                          
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |1005| 
	.line	189
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1006| 
        ldiu      *fp,fp                ; |1006| 
                                        ; Unallocate the Frame
        subi      18,sp                 ; |1006| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1006,000000000h,16


	.sect	 ".text"

	.global	_kgm3_to_API
	.sym	_kgm3_to_API,_kgm3_to_API,39,2,0
	.func	1020
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
; 1020 | double kgm3_to_API(const double r)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        stf       f2,*+fp(1)            ; |1021| 
	.line	3
;----------------------------------------------------------------------
; 1022 | if (r<=(double)0.0)                                                    
;----------------------------------------------------------------------
        ldfu      f2,f0
        cmpf      0.0000000000e+00,f0   ; |1022| 
        bgt       L360                  ; |1022| 
;*      Branch Occurs to L360           ; |1022| 
	.line	4
;----------------------------------------------------------------------
; 1023 | return (double)API_error_num;                                          
;----------------------------------------------------------------------
        bud       L361                  ; |1023| 
	nop
        ldp       @CL23,DP
        ldfu      @CL23,f0              ; |1023| 
;*      Branch Occurs to L361           ; |1023| 
L360:        
	.line	6
;----------------------------------------------------------------------
; 1025 | return (double)(((141.5*999.012)/r)-131.5);                            
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldfu      *+fp(1),f1            ; |1025| 
        ldfu      @CL67,f0              ; |1025| 
        call      DIV_F30               ; |1025| 
                                        ; |1025| Call Occurs
        subf      1.3150000000e+02,f0   ; |1025| 
L361:        
	.line	7
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1026| 
        ldiu      *fp,fp                ; |1026| 
                                        ; Unallocate the Frame
        subi      3,sp                  ; |1026| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1026,000000000h,1


	.sect	 ".text"

	.global	_API_to_kgm3
	.sym	_API_to_kgm3,_API_to_kgm3,39,2,0
	.func	1040
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
; 1040 | double API_to_kgm3(const double r)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        stf       f2,*+fp(1)            ; |1041| 
	.line	3
;----------------------------------------------------------------------
; 1042 | if (r==(double)API_error_num)                                          
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldfu      f2,f0
        cmpf      @CL23,f0              ; |1042| 
        bne       L365                  ; |1042| 
;*      Branch Occurs to L365           ; |1042| 
	.line	4
;----------------------------------------------------------------------
; 1043 | return (double)0.0;                                                    
;----------------------------------------------------------------------
        bud       L366                  ; |1043| 
	nop
	nop
        ldfu      0.0000000000e+00,f0   ; |1043| 
;*      Branch Occurs to L366           ; |1043| 
L365:        
	.line	6
;----------------------------------------------------------------------
; 1045 | return (double)(141.5*999.012/(r+131.5));                              
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldfu      1.3150000000e+02,f1   ; |1045| 
        ldfu      @CL67,f0              ; |1045| 
        addf      *+fp(1),f1            ; |1045| 
        call      DIV_F30               ; |1045| 
                                        ; |1045| Call Occurs
L366:        
	.line	7
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1046| 
        ldiu      *fp,fp                ; |1046| 
                                        ; Unallocate the Frame
        subi      3,sp                  ; |1046| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1046,000000000h,1


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
