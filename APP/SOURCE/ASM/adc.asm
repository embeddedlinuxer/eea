;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Jan 31 15:50:04 2022                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_5RK.AAA 
	.file	"adc.c"
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
	.file	"adc.c"
	.sect	 "initialization"

	.global	_Setup_ADC
	.sym	_Setup_ADC,_Setup_ADC,32,2,0
	.func	36
;******************************************************************************
;* FUNCTION NAME: _Setup_ADC                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,r2,r3,ar0,ar1,ar2,fp,ir0,st                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Setup_ADC:
;* ar2   assigned to _n
	.sym	_n,10,4,17,32
	.sym	_n,1,4,1,32
	.sym	_p,2,62,1,64,,2
	.sym	_r,4,14,1,32
	.line	1
;----------------------------------------------------------------------
;  36 | void Setup_ADC(int n)                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
;  38 | unsigned int p[2];                                                     
;  39 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |37| 
	.line	6
;----------------------------------------------------------------------
;  41 | READ_ADC_INPUTS = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |41| 
        ldiu      0,r0                  ; |41| 
        sti       r0,*ar0               ; |41| 
	.line	8
;----------------------------------------------------------------------
;  43 | if ((n>=ADC_Ain1) && (n<=ADC_Ain5))                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |43| 
        cmpi      5,r0                  ; |43| 
        blt       L4                    ; |43| 
;*      Branch Occurs to L4             ; |43| 
        cmpi      9,r0                  ; |43| 
        bgt       L4                    ; |43| 
;*      Branch Occurs to L4             ; |43| 
	.line	9
;----------------------------------------------------------------------
;  44 | AI[n-ADC_Ain1].present = FALSE;                                        
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldp       @CL2,DP
        mpyi      318,ir0               ; |44| 
        ldiu      @CL2,ar0              ; |44| 
        subi      1590,ir0              ; |44| 
        ldiu      0,r0                  ; |44| 
        sti       r0,*+ar0(ir0)         ; |44| 
L4:        
	.line	11
;----------------------------------------------------------------------
;  46 | VAR_NaN(&REG_ADC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |46| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |46| 
        addi      @CL3,ar2              ; |46| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |46| 
        callu     r0                    ; far call to _VAR_NaN	; |46| 
                                        ; |46| Far Call Occurs
	.line	12
;----------------------------------------------------------------------
;  47 | ADC_INT[n] = 0;                                                        
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |47| 
        ldiu      *+fp(1),ir0           ; |47| 
        ldiu      0,r0                  ; |47| 
        sti       r0,*+ar0(ir0)         ; |47| 
	.line	14
;----------------------------------------------------------------------
;  49 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |49| 
        ldiu      *ar0,r0               ; |49| 
        cmpi      0,r0                  ; |49| 
        beq       L21                   ; |49| 
;*      Branch Occurs to L21            ; |49| 
	.line	16
;----------------------------------------------------------------------
;  51 | _GIEP;                                                                 
;  53 | switch(n)                                                              
;  55 |         case ADC_Text:                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        bu        L10                   ; |35| 
;*      Branch Occurs to L10            ; |35| 
L6:        
	.line	22
;----------------------------------------------------------------------
;  57 | RTD_R = 100.0;  /* do not break */                                     
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |57| 
        ldfu      1.0000000000e+02,f0   ; |57| 
        stf       f0,*ar0               ; |57| 
	.line	28
;----------------------------------------------------------------------
;  63 | SEL_ADC;                                                               
;----------------------------------------------------------------------
	ldi		26h,IOF		
	.line	29
;----------------------------------------------------------------------
;  64 | *SP0_TXDATA = TLV_WRCFR;        /* INIT HOST SELECT MODE */            
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |64| 
        ldp       @CL9,DP
        ldiu      @CL9,r0               ; |64| 
        sti       r0,*ar0               ; |64| 
	.line	30
;----------------------------------------------------------------------
;  65 | WAIT_SP0;                                                              
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |65| 
        ldp       @CL10,DP
        ldiu      @CL10,ar1             ; |65| 
        ldiu      *ar0,r0               ; |65| 
        and       65535,r0              ; |65| 
        sti       r0,*ar1               ; |65| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |65| 
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |65| 
        ldiu      *ar1,r0               ; |65| 
        and       65535,r0              ; |65| 
        sti       r0,*ar0               ; |65| 
	.line	32
;----------------------------------------------------------------------
;  67 | SEL_ADC;                                        /* setup ADC */        
;----------------------------------------------------------------------
	ldi		26h,IOF		
	.line	33
;----------------------------------------------------------------------
;  68 | *SP0_TXDATA = (ADC_CONFIG | TLV_CFR_EXTREF);                           
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |68| 
        ldp       @CL12,DP
        ldiu      @CL12,r0              ; |68| 
        sti       r0,*ar0               ; |68| 
	.line	34
;----------------------------------------------------------------------
;  69 | WAIT_SP0;                                                              
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |69| 
        ldp       @CL10,DP
        ldiu      *ar0,r0               ; |69| 
        ldiu      @CL10,ar1             ; |69| 
        and       65535,r0              ; |69| 
        sti       r0,*ar1               ; |69| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |69| 
        ldp       @CL10,DP
        ldiu      *ar1,r0               ; |69| 
        ldiu      @CL10,ar0             ; |69| 
        and       65535,r0              ; |69| 
        sti       r0,*ar0               ; |69| 
	.line	36
;----------------------------------------------------------------------
;  71 | ENABLE_EXTINT2;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |71| 
        ldiu      4,r0                  ; |71| 
        or3       r0,*ar0,r0            ; |71| 
        sti       r0,*ar0               ; |71| 
	pop		ST			
	.line	37
;----------------------------------------------------------------------
;  72 | DISABLE_INT2;                                                          
;----------------------------------------------------------------------
	andn	0004h, IE
	.line	38
;----------------------------------------------------------------------
;  73 | CLEAR_INT2;                                                            
;----------------------------------------------------------------------
	andn	0004h, IF
	.line	40
;----------------------------------------------------------------------
;  75 | break;                                                                 
;  77 | case ADC_Tint:                                                         
;----------------------------------------------------------------------
        bu        L12                   ; |75| 
;*      Branch Occurs to L12            ; |75| 
L7:        
	.line	44
;----------------------------------------------------------------------
;  79 | if (HW_VER>=0xB7)                                                      
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |79| 
        ldiu      *ar0,r0               ; |79| 
        cmpi      183,r0                ; |79| 
        blo       L12                   ; |79| 
;*      Branch Occurs to L12            ; |79| 
	.line	46
;----------------------------------------------------------------------
;  81 | p[0] = 0x70;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |81| 
        addi      2,ar0                 ; |81| 
        ldiu      112,r0                ; |81| 
        sti       r0,*ar0               ; |81| 
	.line	47
;----------------------------------------------------------------------
;  82 | r        = Write_TMP75(1, 1, (unsigned char*)p);        /* config regis
;     | ter */                                                                 
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |82| 
        ldp       @CL15,DP
        ldiu      1,ar2                 ; |82| 
        ldiu      1,r2                  ; |82| 
        addi      2,r3                  ; |82| 
        ldiu      @CL15,r0              ; |82| 
        callu     r0                    ; far call to _Write_TMP75	; |82| 
                                        ; |82| Far Call Occurs
        sti       r0,*+fp(4)            ; |82| 
	.line	49
;----------------------------------------------------------------------
;  84 | p[0] = 0x40;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |84| 
        addi      2,ar0                 ; |84| 
        ldiu      64,r0                 ; |84| 
        sti       r0,*ar0               ; |84| 
	.line	50
;----------------------------------------------------------------------
;  85 | p[1] = 0x00;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |85| 
        addi      3,ar0                 ; |85| 
        ldiu      0,r0                  ; |85| 
        sti       r0,*ar0               ; |85| 
	.line	51
;----------------------------------------------------------------------
;  86 | r        = Write_TMP75(2, 2, (unsigned char*)p);        /* Tlow */     
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      2,ar2                 ; |86| 
        ldiu      fp,r3                 ; |86| 
        ldiu      2,r2                  ; |86| 
        ldiu      @CL15,r0              ; |86| 
        addi      2,r3                  ; |86| 
        callu     r0                    ; far call to _Write_TMP75	; |86| 
                                        ; |86| Far Call Occurs
        sti       r0,*+fp(4)            ; |86| 
	.line	53
;----------------------------------------------------------------------
;  88 | p[0] = 0xE7;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |88| 
        addi      2,ar0                 ; |88| 
        ldiu      231,r0                ; |88| 
        sti       r0,*ar0               ; |88| 
	.line	54
;----------------------------------------------------------------------
;  89 | p[1] = 0x00;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |89| 
        addi      3,ar0                 ; |89| 
        ldiu      0,r0                  ; |89| 
        sti       r0,*ar0               ; |89| 
	.line	55
;----------------------------------------------------------------------
;  90 | r        = Write_TMP75(3, 2, (unsigned char*)p);        /* Thigh */    
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,r0              ; |90| 
        ldiu      fp,r3                 ; |90| 
        ldiu      2,r2                  ; |90| 
        ldiu      3,ar2                 ; |90| 
        addi      2,r3                  ; |90| 
        callu     r0                    ; far call to _Write_TMP75	; |90| 
                                        ; |90| Far Call Occurs
        sti       r0,*+fp(4)            ; |90| 
	.line	58
;----------------------------------------------------------------------
;  93 | break;                                                                 
;----------------------------------------------------------------------
        bu        L12                   ; |93| 
;*      Branch Occurs to L12            ; |93| 
L10:        
	.line	18
        ldiu      *+fp(1),r0            ; |53| 
        cmpi      2,r0                  ; |53| 
        beq       L6                    ; |53| 
;*      Branch Occurs to L6             ; |53| 
        cmpi      10,r0                 ; |53| 
        beq       L7                    ; |53| 
;*      Branch Occurs to L7             ; |53| 
L12:        
	.line	62
;----------------------------------------------------------------------
;  97 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	63
;----------------------------------------------------------------------
;  98 | return;                                                                
; 101 | switch(n)                                                              
; 103 | case ADC_Tint:                                                         
;----------------------------------------------------------------------
        bu        L23                   ; |98| 
;*      Branch Occurs to L23            ; |98| 
L14:        
	.line	70
;----------------------------------------------------------------------
; 105 | p[0] = 0x70;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |105| 
        addi      2,ar0                 ; |105| 
        ldiu      112,r0                ; |105| 
        sti       r0,*ar0               ; |105| 
	.line	71
;----------------------------------------------------------------------
; 106 | r = Write_TMP75(1, 1, (unsigned char*)p);       /* config register */  
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |106| 
        ldp       @CL15,DP
        ldiu      1,ar2                 ; |106| 
        ldiu      1,r2                  ; |106| 
        addi      2,r3                  ; |106| 
        ldiu      @CL15,r0              ; |106| 
        callu     r0                    ; far call to _Write_TMP75	; |106| 
                                        ; |106| Far Call Occurs
        sti       r0,*+fp(4)            ; |106| 
	.line	73
;----------------------------------------------------------------------
; 108 | p[0] = 0x40;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |108| 
        addi      2,ar0                 ; |108| 
        ldiu      64,r0                 ; |108| 
        sti       r0,*ar0               ; |108| 
	.line	74
;----------------------------------------------------------------------
; 109 | p[1] = 0x00;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |109| 
        addi      3,ar0                 ; |109| 
        ldiu      0,r0                  ; |109| 
        sti       r0,*ar0               ; |109| 
	.line	75
;----------------------------------------------------------------------
; 110 | r = Write_TMP75(2, 2, (unsigned char*)p);       /* Tlow */             
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      2,ar2                 ; |110| 
        ldiu      fp,r3                 ; |110| 
        ldiu      2,r2                  ; |110| 
        ldiu      @CL15,r0              ; |110| 
        addi      2,r3                  ; |110| 
        callu     r0                    ; far call to _Write_TMP75	; |110| 
                                        ; |110| Far Call Occurs
        sti       r0,*+fp(4)            ; |110| 
	.line	77
;----------------------------------------------------------------------
; 112 | p[0] = 0xE7;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |112| 
        addi      2,ar0                 ; |112| 
        ldiu      231,r0                ; |112| 
        sti       r0,*ar0               ; |112| 
	.line	78
;----------------------------------------------------------------------
; 113 | p[1] = 0x00;                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |113| 
        addi      3,ar0                 ; |113| 
        ldiu      0,r0                  ; |113| 
        sti       r0,*ar0               ; |113| 
	.line	79
;----------------------------------------------------------------------
; 114 | r = Write_TMP75(3, 2, (unsigned char*)p);       /* Thigh */            
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,r0              ; |114| 
        ldiu      fp,r3                 ; |114| 
        ldiu      2,r2                  ; |114| 
        ldiu      3,ar2                 ; |114| 
        addi      2,r3                  ; |114| 
        callu     r0                    ; far call to _Write_TMP75	; |114| 
                                        ; |114| Far Call Occurs
        sti       r0,*+fp(4)            ; |114| 
	.line	81
;----------------------------------------------------------------------
; 116 | break;                                                                 
; 118 | case ADC_Text:                                                         
;----------------------------------------------------------------------
        bu        L23                   ; |116| 
;*      Branch Occurs to L23            ; |116| 
L15:        
	.line	85
;----------------------------------------------------------------------
; 120 | RTD_R = 100.0;          /* do not break */                             
; 122 | case ADC_Vinc:                                                         
; 123 | case ADC_Vref:                                                         
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |120| 
        ldfu      1.0000000000e+02,f0   ; |120| 
        stf       f0,*ar0               ; |120| 
L16:        
	.line	90
;----------------------------------------------------------------------
; 125 | Read_ADCn(n, 1);        /* start conversion */                         
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      *+fp(1),ar2           ; |125| 
        ldiu      1,r2                  ; |125| 
        ldiu      @CL16,r0              ; |125| 
        callu     r0                    ; far call to _Read_ADCn	; |125| 
                                        ; |125| Far Call Occurs
	.line	91
;----------------------------------------------------------------------
; 126 | ADC_ACTIVE[0] = n;                                                     
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |126| 
        ldiu      *+fp(1),r0            ; |126| 
        sti       r0,*ar0               ; |126| 
	.line	92
;----------------------------------------------------------------------
; 127 | break;                                                                 
; 129 | case ADC_Ain1:                                                         
; 130 | case ADC_GNDSEN:                                                       
; 131 | case ADC_VTUNE:                                                        
;----------------------------------------------------------------------
        bu        L23                   ; |127| 
;*      Branch Occurs to L23            ; |127| 
L17:        
	.line	98
;----------------------------------------------------------------------
; 133 | Read_ADCn(n, 1);        /* start conversion */                         
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      *+fp(1),ar2           ; |133| 
        ldiu      1,r2                  ; |133| 
        ldiu      @CL16,r0              ; |133| 
        callu     r0                    ; far call to _Read_ADCn	; |133| 
                                        ; |133| Far Call Occurs
	.line	99
;----------------------------------------------------------------------
; 134 | ADC_ACTIVE[1] = n;                                                     
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |134| 
        ldiu      *+fp(1),r0            ; |134| 
        sti       r0,*ar0               ; |134| 
	.line	100
;----------------------------------------------------------------------
; 135 | break;                                                                 
; 137 | case ADC_Ain4:                                                         
; 138 | case ADC_Ain3:                                                         
; 139 | case ADC_Ain2:                                                         
;----------------------------------------------------------------------
        bu        L23                   ; |135| 
;*      Branch Occurs to L23            ; |135| 
L18:        
	.line	106
;----------------------------------------------------------------------
; 141 | Read_ADCn(n, 1);        /* start conversion */                         
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      *+fp(1),ar2           ; |141| 
        ldiu      1,r2                  ; |141| 
        ldiu      @CL16,r0              ; |141| 
        callu     r0                    ; far call to _Read_ADCn	; |141| 
                                        ; |141| Far Call Occurs
	.line	107
;----------------------------------------------------------------------
; 142 | ADC_ACTIVE[2] = n;                                                     
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |142| 
        ldiu      *+fp(1),r0            ; |142| 
        sti       r0,*ar0               ; |142| 
	.line	108
;----------------------------------------------------------------------
; 143 | break;                                                                 
; 145 | case ADC_Ain5:                                                         
;----------------------------------------------------------------------
        bu        L23                   ; |143| 
;*      Branch Occurs to L23            ; |143| 
L19:        
	.line	112
;----------------------------------------------------------------------
; 147 | Read_ADCn(n, 1);        /* start continuous conversion */              
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      *+fp(1),ar2           ; |147| 
        ldiu      1,r2                  ; |147| 
        ldiu      @CL16,r0              ; |147| 
        callu     r0                    ; far call to _Read_ADCn	; |147| 
                                        ; |147| Far Call Occurs
	.line	113
;----------------------------------------------------------------------
; 148 | break;                                                                 
; 150 | default:                                                               
;----------------------------------------------------------------------
        bu        L23                   ; |148| 
;*      Branch Occurs to L23            ; |148| 
	.line	117
;----------------------------------------------------------------------
; 152 | break;                                                                 
;----------------------------------------------------------------------
L21:        
	.line	66
        ldiu      *+fp(1),ir0           ; |101| 
        cmpi      10,ir0                ; |101| 
        bhi       L23                   ; |101| 
;*      Branch Occurs to L23            ; |101| 
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |101| 
        ldiu      *+ar0(ir0),r0         ; |101| 
        bu        r0                    ; |101| 

	.sect	".text"
SW0:	.word	L16	; 0
	.word	L16	; 1
	.word	L15	; 2
	.word	L17	; 3
	.word	L17	; 4
	.word	L17	; 5
	.word	L18	; 6
	.word	L18	; 7
	.word	L18	; 8
	.word	L19	; 9
	.word	L14	; 10
	.sect	"initialization"
;*      Branch Occurs to r0             ; |101| 
L23:        
	.line	120
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	155,000000000h,4


	.sect	 ".text"

	.global	_Read_ADC_test
	.sym	_Read_ADC_test,_Read_ADC_test,32,2,0
	.func	169
;******************************************************************************
;* FUNCTION NAME: _Read_ADC_test                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Read_ADC_test:
	.line	1
;----------------------------------------------------------------------
; 169 | void Read_ADC_test(void)                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 171 | if (!SA) return;                                                       
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |171| 
        ldiu      *ar0,r0               ; |171| 
        cmpi      0,r0                  ; |171| 
        beq       L27                   ; |171| 
;*      Branch Occurs to L27            ; |171| 
	.line	5
;----------------------------------------------------------------------
; 173 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
; 176 | SEL_ADC; *SP0_TXDATA = (TLV_REFPM); WAIT_SP0;                          
;----------------------------------------------------------------------
	ldi		26h,IOF		
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |176| 
        ldp       @CL21,DP
        ldiu      @CL21,r0              ; |176| 
        sti       r0,*ar0               ; |176| 
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |176| 
        ldp       @CL10,DP
        ldiu      *ar1,r0               ; |176| 
        ldiu      @CL10,ar0             ; |176| 
        and       65535,r0              ; |176| 
        sti       r0,*ar0               ; |176| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |176| 
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |176| 
        ldiu      *ar1,r0               ; |176| 
        and       65535,r0              ; |176| 
        sti       r0,*ar0               ; |176| 
	.line	9
;----------------------------------------------------------------------
; 177 | TLV_REF[0] = SP0_RX_DATA & 0xFFF0;                                     
;----------------------------------------------------------------------
        ldiu      @CL10,ar1             ; |177| 
        ldp       @CL22,DP
        ldiu      @CL22,ar0             ; |177| 
        ldiu      *ar1,r0               ; |177| 
        and       65520,r0              ; |177| 
        sti       r0,*ar0               ; |177| 
	.line	13
;----------------------------------------------------------------------
; 181 | SEL_ADC; *SP0_TXDATA = (TLV_REFP); WAIT_SP0;                           
;----------------------------------------------------------------------
	ldi		26h,IOF		
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |181| 
        ldp       @CL23,DP
        ldiu      @CL23,r0              ; |181| 
        sti       r0,*ar0               ; |181| 
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |181| 
        ldp       @CL10,DP
        ldiu      *ar0,r0               ; |181| 
        ldiu      @CL10,ar1             ; |181| 
        and       65535,r0              ; |181| 
        sti       r0,*ar1               ; |181| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |181| 
        ldp       @CL10,DP
        ldiu      *ar0,r0               ; |181| 
        ldiu      @CL10,ar1             ; |181| 
        and       65535,r0              ; |181| 
        sti       r0,*ar1               ; |181| 
	.line	14
;----------------------------------------------------------------------
; 182 | TLV_REF[1] = SP0_RX_DATA & 0xFFF0;                                     
;----------------------------------------------------------------------
        ldiu      @CL10,ar0             ; |182| 
        ldp       @CL24,DP
        ldiu      *ar0,r0               ; |182| 
        ldiu      @CL24,ar1             ; |182| 
        and       65520,r0              ; |182| 
        sti       r0,*ar1               ; |182| 
	.line	18
;----------------------------------------------------------------------
; 186 | SEL_ADC; *SP0_TXDATA = (TLV_REFM); WAIT_SP0;                           
;----------------------------------------------------------------------
	ldi		26h,IOF		
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |186| 
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |186| 
        sti       r0,*ar0               ; |186| 
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |186| 
        ldp       @CL10,DP
        ldiu      *ar1,r0               ; |186| 
        ldiu      @CL10,ar0             ; |186| 
        and       65535,r0              ; |186| 
        sti       r0,*ar0               ; |186| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |186| 
        ldp       @CL10,DP
        ldiu      *ar0,r0               ; |186| 
        ldiu      @CL10,ar1             ; |186| 
        and       65535,r0              ; |186| 
        sti       r0,*ar1               ; |186| 
	.line	19
;----------------------------------------------------------------------
; 187 | TLV_REF[2] = SP0_RX_DATA & 0xFFF0;                                     
;----------------------------------------------------------------------
        ldiu      @CL10,ar1             ; |187| 
        ldp       @CL26,DP
        ldiu      *ar1,r0               ; |187| 
        ldiu      @CL26,ar0             ; |187| 
        and       65520,r0              ; |187| 
        sti       r0,*ar0               ; |187| 
	.line	22
;----------------------------------------------------------------------
; 190 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L27:        
	.line	23
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	191,000000000h,0


	.sect	 ".text"

	.global	_Read_ADC_FIFO
	.sym	_Read_ADC_FIFO,_Read_ADC_FIFO,32,2,0
	.func	206
;******************************************************************************
;* FUNCTION NAME: _Read_ADC_FIFO                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,f3,r3,ar0,ar1,ar2,fp,ar4,ar5,ar6,ir0,*
;*                        st,rc                                               *
;*   Regs Saved         : ar4,ar5,ar6                                         *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 3 SOE = 11 words         *
;******************************************************************************
_Read_ADC_FIFO:
	.sym	_i,1,4,1,32
	.sym	_f,2,6,1,32
	.sym	_a,3,62,1,128,,4
	.line	1
;----------------------------------------------------------------------
; 206 | void Read_ADC_FIFO(void)                                               
; 208 | int i;                                                                 
; 209 | float f;                                                               
; 210 | unsigned int a[4];                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
        push      ar4
        push      ar5
        push      ar6
	.line	7
;----------------------------------------------------------------------
; 212 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |212| 
        ldiu      *ar0,r0               ; |212| 
        cmpi      0,r0                  ; |212| 
        beq       L36                   ; |212| 
;*      Branch Occurs to L36            ; |212| 
	.line	8
;----------------------------------------------------------------------
; 213 | return;                                                                
;----------------------------------------------------------------------
	.line	10
;----------------------------------------------------------------------
; 215 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	12
;----------------------------------------------------------------------
; 217 | for (i=0;i<4;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |217| 
        sti       r0,*+fp(1)            ; |217| 
        cmpi      4,r0                  ; |217| 
        bge       L32                   ; |217| 
;*      Branch Occurs to L32            ; |217| 
L31:        
	.line	14
;----------------------------------------------------------------------
; 219 | SEL_ADC;                                                               
;----------------------------------------------------------------------
	ldi		26h,IOF		
	.line	15
;----------------------------------------------------------------------
; 220 | *SP0_TXDATA = (TLV_FIFO);                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |220| 
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |220| 
        sti       r0,*ar0               ; |220| 
	.line	16
;----------------------------------------------------------------------
; 221 | WAIT_SP0;                                                              
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |221| 
        ldp       @CL10,DP
        ldiu      *ar0,r0               ; |221| 
        ldiu      @CL10,ar1             ; |221| 
        and       65535,r0              ; |221| 
        sti       r0,*ar1               ; |221| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |221| 
        ldp       @CL10,DP
        ldiu      @CL10,ar1             ; |221| 
        ldiu      *ar0,r0               ; |221| 
        and       65535,r0              ; |221| 
        sti       r0,*ar1               ; |221| 
	.line	19
;----------------------------------------------------------------------
; 224 | a[i] = (SP0_RX_DATA & 0xFFF0)>>4;                                      
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |224| 
        ldiu      @CL10,ar1             ; |224| 
        addi      3,ar0                 ; |224| 
        ldiu      *ar1,r0               ; |224| 
        and       65520,r0              ; |224| 
        ldiu      *+fp(1),ir0           ; |224| 
        lsh       -4,r0                 ; |224| 
        sti       r0,*+ar0(ir0)         ; |224| 
	.line	12
        ldiu      1,r0                  ; |217| 
        addi      *+fp(1),r0            ; |217| 
        sti       r0,*+fp(1)            ; |217| 
        cmpi      4,r0                  ; |217| 
        blt       L31                   ; |217| 
;*      Branch Occurs to L31            ; |217| 
L32:        
	.line	23
;----------------------------------------------------------------------
; 228 | ADC_INT[ADC_Text]       = a[3];                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |228| 
        ldp       @CL28,DP
        addi      6,ar0                 ; |228| 
        ldiu      @CL28,ar1             ; |228| 
        ldiu      *ar0,r0               ; |228| 
        sti       r0,*ar1               ; |228| 
	.line	24
;----------------------------------------------------------------------
; 229 | f                                       = ((float)ADC_INT[ADC_Text] * A
;     | DC_TRIM_F_1[ADC_Text] / ADC_TRIM_I_1[ADC_Text]);                       
;----------------------------------------------------------------------
        ldiu      @CL28,ar1             ; |229| 
        ldp       @CL29,DP
        ldiu      @CL29,ar2             ; |229| 
        ldp       @CL30,DP
        float     *ar1,f0               ; |229| 
        ldiu      @CL30,ar0             ; |229| 
        mpyf3     *ar2,f0,f0            ; |229| 
        float     *ar0,f1               ; |229| 
        call      DIV_F30               ; |229| 
                                        ; |229| Call Occurs
        stf       f0,*+fp(2)            ; |229| 
	.line	25
;----------------------------------------------------------------------
; 230 | f                                       =   ((RTD_CAL_HI_OHM - RTD_CAL_
;     | LO_OHM) / (RTD_CAL_HI_V - RTD_CAL_LO_V)) * f                           
; 231 |                                           + ((RTD_CAL_LO_OHM * RTD_CAL_
;     | HI_V - RTD_CAL_HI_OHM * RTD_CAL_LO_V) / (RTD_CAL_HI_V - RTD_CAL_LO_V));
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar2             ; |230| 
        ldp       @CL31,DP
        ldiu      @CL31,ar0             ; |230| 
        ldp       @CL34,DP
        ldiu      @CL34,ar1             ; |230| 
        ldp       @CL33,DP
        ldiu      @CL33,ar4             ; |230| 
        subf3     *ar2,*ar0,f0          ; |230| 
        subf3     *ar1,*ar4,f1          ; |230| 
        call      DIV_F30               ; |230| 
                                        ; |230| Call Occurs
        ldp       @CL31,DP
        ldiu      @CL31,ar2             ; |230| 
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |230| 
        ldp       @CL32,DP
        ldiu      @CL32,ar5             ; |230| 
        ldp       @CL33,DP
        ldiu      @CL33,ar4             ; |230| 
        ldp       @CL34,DP
        ldiu      @CL34,ar6             ; |230| 
        mpyf3     *ar0,*ar2,f1          ; |230| 
        mpyf3     *ar4,*ar5,f3          ; |230| 
        ldfu      f0,f2                 ; |230| 
        ldp       @CL33,DP
        subf3     f1,f3,f0              ; |230| 
        ldiu      @CL33,ar1             ; |230| 
        mpyf      *+fp(2),f2            ; |230| 
        subf3     *ar6,*ar1,f1          ; |230| 
        call      DIV_F30               ; |230| 
                                        ; |230| Call Occurs
        addf3     f2,f0,f0              ; |230| 
        stf       f0,*+fp(2)            ; |230| 
	.line	27
;----------------------------------------------------------------------
; 232 | RTD_R                           = f;                                   
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |232| 
        stf       f0,*ar0               ; |232| 
	.line	28
;----------------------------------------------------------------------
; 233 | f                                       = TCE2 * TCE * TCE * f * f + TC
;     | E1 * TCE * f + TCE0;                                                   
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldfu      *+fp(2),f0            ; |233| 
        mpyf      @CL36,f0              ; |233| 
        ldp       @CL35,DP
        ldfu      *+fp(2),f1            ; |233| 
        mpyf      @CL35,f1              ; |233| 
        mpyf      *+fp(2),f0            ; |233| 
        ldp       @CL37,DP
        addf3     f0,f1,f0              ; |233| 
        addf      @CL37,f0              ; |233| 
        stf       f0,*+fp(2)            ; |233| 
	.line	29
;----------------------------------------------------------------------
; 234 | f                                       = (f * TEMPERATURE_TRIM_T1) + T
;     | EMPERATURE_TRIM_T0;                                                    
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |234| 
        ldp       @CL38,DP
        ldfu      *ar0,f0               ; |234| 
        ldiu      @CL38,ar1             ; |234| 
        mpyf      *+fp(2),f0            ; |234| 
        addf3     f0,*ar1,f0            ; |234| 
        stf       f0,*+fp(2)            ; |234| 
	.line	31
;----------------------------------------------------------------------
; 236 | VAR_Update(&REG_ADC[ADC_Text], f, 0, 0);                               
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      255,r3                ; |236| 
        ldiu      @CL40,ar2             ; |236| 
        ldfu      f0,f2                 ; |236| Move F32 into F40 for CONV
        andn      r3,f2                 ; |236| Bit mask for F32/F40 conversion
        ldp       @CL41,DP
        ldiu      0,rc                  ; |236| 
        ldiu      @CL41,r1              ; |236| 
        ldiu      0,r3                  ; |236| 
        callu     r1                    ; far call to _VAR_Update	; |236| 
                                        ; |236| Far Call Occurs
	.line	33
;----------------------------------------------------------------------
; 238 | if(HW_VER<0xB7)                                                        
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |238| 
        ldiu      *ar0,r0               ; |238| 
        cmpi      183,r0                ; |238| 
        bhs       L34                   ; |238| 
;*      Branch Occurs to L34            ; |238| 
	.line	35
;----------------------------------------------------------------------
; 240 | ADC_INT[ADC_Tint]       = a[2];                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |240| 
        ldp       @CL42,DP
        addi      5,ar0                 ; |240| 
        ldiu      @CL42,ar1             ; |240| 
        ldiu      *ar0,r0               ; |240| 
        sti       r0,*ar1               ; |240| 
	.line	36
;----------------------------------------------------------------------
; 241 | f                                       = ((float)ADC_INT[ADC_Tint] * A
;     | DC_TRIM_F_1[ADC_Tint] / ADC_TRIM_I_1[ADC_Tint]);                       
; 243 | #define TCI 182.1493625                                                
;----------------------------------------------------------------------
        ldiu      @CL42,ar0             ; |241| 
        ldp       @CL43,DP
        ldiu      @CL43,ar2             ; |241| 
        ldp       @CL44,DP
        float     *ar0,f0               ; |241| 
        ldiu      @CL44,ar1             ; |241| 
        mpyf3     *ar2,f0,f0            ; |241| 
        float     *ar1,f1               ; |241| 
        call      DIV_F30               ; |241| 
                                        ; |241| Call Occurs
        stf       f0,*+fp(2)            ; |241| 
	.line	40
;----------------------------------------------------------------------
; 245 | f = TCI*f - 273.15;                                                    
;----------------------------------------------------------------------
        ldp       @CL45,DP
        mpyf      @CL45,f0              ; |245| 
        ldp       @CL46,DP
        subf      @CL46,f0              ; |245| 
        stf       f0,*+fp(2)            ; |245| 
	.line	42
;----------------------------------------------------------------------
; 247 | VAR_Update(&REG_ADC[ADC_Tint], f, 0, 0);                               
; 249 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      255,r3                ; |247| 
        ldiu      @CL47,ar2             ; |247| 
        ldiu      0,rc                  ; |247| 
        ldp       @CL41,DP
        ldfu      f0,f2                 ; |247| Move F32 into F40 for CONV
        andn      r3,f2                 ; |247| Bit mask for F32/F40 conversion
        ldiu      @CL41,r1              ; |247| 
        ldiu      0,r3                  ; |247| 
        callu     r1                    ; far call to _VAR_Update	; |247| 
                                        ; |247| Far Call Occurs
        bu        L35                   ; |205| 
;*      Branch Occurs to L35            ; |205| 
L34:        
	.line	46
;----------------------------------------------------------------------
; 251 | ADC_INT[ADC_Spare]      = a[2];                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |251| 
        ldp       @CL48,DP
        addi      5,ar0                 ; |251| 
        ldiu      @CL48,ar1             ; |251| 
        ldiu      *ar0,r0               ; |251| 
        sti       r0,*ar1               ; |251| 
	.line	47
;----------------------------------------------------------------------
; 252 | f                                       = ((float)ADC_INT[ADC_Spare]*AD
;     | C_TRIM_F_1[ADC_Spare]/ADC_TRIM_I_1[ADC_Spare]);                        
;----------------------------------------------------------------------
        ldiu      @CL48,ar0             ; |252| 
        ldp       @CL49,DP
        ldiu      @CL49,ar2             ; |252| 
        ldp       @CL50,DP
        float     *ar0,f0               ; |252| 
        ldiu      @CL50,ar1             ; |252| 
        mpyf3     *ar2,f0,f0            ; |252| 
        float     *ar1,f1               ; |252| 
        call      DIV_F30               ; |252| 
                                        ; |252| Call Occurs
        stf       f0,*+fp(2)            ; |252| 
	.line	49
;----------------------------------------------------------------------
; 254 | VAR_Update(&REG_ADC[ADC_Spare], f, 0, 0);                              
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      255,r3                ; |254| 
        ldiu      @CL51,ar2             ; |254| 
        ldp       @CL41,DP
        ldiu      0,rc                  ; |254| 
        ldfu      f0,f2                 ; |254| Move F32 into F40 for CONV
        ldiu      @CL41,r1              ; |254| 
        andn      r3,f2                 ; |254| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |254| 
        callu     r1                    ; far call to _VAR_Update	; |254| 
                                        ; |254| Far Call Occurs
L35:        
	.line	53
;----------------------------------------------------------------------
; 258 | ADC_INT[ADC_Vinc]       = a[1];                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |258| 
        ldp       @CL52,DP
        addi      4,ar0                 ; |258| 
        ldiu      @CL52,ar1             ; |258| 
        ldiu      *ar0,r0               ; |258| 
        sti       r0,*ar1               ; |258| 
	.line	54
;----------------------------------------------------------------------
; 259 | f                                       = ((float)ADC_INT[ADC_Vinc]*ADC
;     | _TRIM_F_1[ADC_Vinc]/ADC_TRIM_I_1[ADC_Vinc]);                           
;----------------------------------------------------------------------
        ldiu      @CL52,ar1             ; |259| 
        ldp       @CL53,DP
        ldiu      @CL53,ar2             ; |259| 
        ldp       @CL54,DP
        float     *ar1,f0               ; |259| 
        ldiu      @CL54,ar0             ; |259| 
        mpyf3     *ar2,f0,f0            ; |259| 
        float     *ar0,f1               ; |259| 
        call      DIV_F30               ; |259| 
                                        ; |259| Call Occurs
        stf       f0,*+fp(2)            ; |259| 
	.line	56
;----------------------------------------------------------------------
; 261 | VAR_Update(&REG_ADC[ADC_Vinc], f, 0, 0);                               
;----------------------------------------------------------------------
        ldiu      255,r3                ; |261| 
        ldp       @CL55,DP
        ldiu      0,rc                  ; |261| 
        ldiu      @CL55,ar2             ; |261| 
        ldp       @CL41,DP
        ldfu      f0,f1                 ; |261| 
        ldiu      @CL41,r0              ; |261| 
        ldfu      f1,f2                 ; |261| Move F32 into F40 for CONV
        andn      r3,f2                 ; |261| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |261| 
        callu     r0                    ; far call to _VAR_Update	; |261| 
                                        ; |261| Far Call Occurs
	.line	59
;----------------------------------------------------------------------
; 264 | ADC_INT[ADC_Vref]       = a[0];                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |264| 
        ldp       @CL5,DP
        addi      3,ar0                 ; |264| 
        ldiu      @CL5,ar1              ; |264| 
        ldiu      *ar0,r0               ; |264| 
        sti       r0,*ar1               ; |264| 
	.line	60
;----------------------------------------------------------------------
; 265 | f                                       = ((float)ADC_INT[ADC_Vref]*ADC
;     | _TRIM_F_1[ADC_Vref]/ADC_TRIM_I_1[ADC_Vref]);                           
;----------------------------------------------------------------------
        ldiu      @CL5,ar2              ; |265| 
        ldp       @CL56,DP
        ldiu      @CL56,ar1             ; |265| 
        ldp       @CL57,DP
        float     *ar2,f0               ; |265| 
        ldiu      @CL57,ar0             ; |265| 
        mpyf3     *ar1,f0,f0            ; |265| 
        float     *ar0,f1               ; |265| 
        call      DIV_F30               ; |265| 
                                        ; |265| Call Occurs
        stf       f0,*+fp(2)            ; |265| 
	.line	62
;----------------------------------------------------------------------
; 267 | VAR_Update(&REG_ADC[ADC_Vref], f, 0, 0);                               
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      0,rc                  ; |267| 
        ldiu      @CL3,ar2              ; |267| 
        ldfu      f0,f2                 ; |267| 
        ldp       @CL41,DP
        ldiu      255,r1                ; |267| 
        ldiu      @CL41,r0              ; |267| 
        andn      r1,f2                 ; |267| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |267| 
        callu     r0                    ; far call to _VAR_Update	; |267| 
                                        ; |267| Far Call Occurs
	.line	64
;----------------------------------------------------------------------
; 269 | READ_ADC_INPUTS = 4;                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |269| 
        ldiu      4,r0                  ; |269| 
        sti       r0,*ar0               ; |269| 
	.line	65
;----------------------------------------------------------------------
; 270 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L36:        
	.line	66
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar6
        pop       ar5
        pop       ar4
                                        ; Unallocate the Frame
        subi      8,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	271,000007000h,6


	.sect	 ".text"

	.global	_Convert_ADC
	.sym	_Convert_ADC,_Convert_ADC,32,2,0
	.func	285
;******************************************************************************
;* FUNCTION NAME: _Convert_ADC                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Convert_ADC:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 285 | void Convert_ADC(void)                                                 
; 287 | int i,j;                                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	5
;----------------------------------------------------------------------
; 289 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |289| 
        ldiu      *ar0,r0               ; |289| 
        cmpi      0,r0                  ; |289| 
        beq       L44                   ; |289| 
;*      Branch Occurs to L44            ; |289| 
	.line	6
;----------------------------------------------------------------------
; 290 | return;                                                                
;----------------------------------------------------------------------
	.line	8
;----------------------------------------------------------------------
; 292 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 294 | CLEAR_INT2;                                                            
;----------------------------------------------------------------------
	andn	0004h, IF
	.line	12
;----------------------------------------------------------------------
; 296 | for (i=0;i<4;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |296| 
        sti       r0,*+fp(1)            ; |296| 
        cmpi      4,r0                  ; |296| 
        bge       L43                   ; |296| 
;*      Branch Occurs to L43            ; |296| 
L40:        
	.line	14
;----------------------------------------------------------------------
; 298 | SEL_ADC;                                                               
;----------------------------------------------------------------------
	ldi		26h,IOF		
	.line	15
;----------------------------------------------------------------------
; 299 | *SP0_TXDATA = TLV_AIN0;                                                
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |299| 
        ldiu      0,r0                  ; |299| 
        sti       r0,*ar0               ; |299| 
	.line	16
;----------------------------------------------------------------------
; 300 | WAIT_SP0;                                                              
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |300| 
        ldp       @CL10,DP
        ldiu      *ar1,r0               ; |300| 
        ldiu      @CL10,ar0             ; |300| 
        and       65535,r0              ; |300| 
        sti       r0,*ar0               ; |300| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |300| 
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |300| 
        ldiu      *ar1,r0               ; |300| 
        and       65535,r0              ; |300| 
        sti       r0,*ar0               ; |300| 
	.line	18
;----------------------------------------------------------------------
; 302 | for (j=0;j<100;j++);    /* wait at least 14 serial bus clock cycles */ 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |302| 
        sti       r0,*+fp(2)            ; |302| 
        cmpi      100,r0                ; |302| 
        bge       L42                   ; |302| 
;*      Branch Occurs to L42            ; |302| 
L41:        
        ldiu      1,r0                  ; |302| 
        addi      *+fp(2),r0            ; |302| 
        sti       r0,*+fp(2)            ; |302| 
        cmpi      100,r0                ; |302| 
        blt       L41                   ; |302| 
;*      Branch Occurs to L41            ; |302| 
L42:        
	.line	12
        ldiu      1,r0                  ; |296| 
        addi      *+fp(1),r0            ; |296| 
        sti       r0,*+fp(1)            ; |296| 
        cmpi      4,r0                  ; |296| 
        blt       L40                   ; |296| 
;*      Branch Occurs to L40            ; |296| 
L43:        
	.line	21
;----------------------------------------------------------------------
; 305 | ENABLE_INT2;                                                           
;----------------------------------------------------------------------
	or		0004h, IE
	.line	23
;----------------------------------------------------------------------
; 307 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L44:        
	.line	24
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	308,000000000h,2


	.sect	 ".text"

	.global	_Write_ADC_DAC
	.sym	_Write_ADC_DAC,_Write_ADC_DAC,46,2,0
	.func	324
;******************************************************************************
;* FUNCTION NAME: _Write_ADC_DAC                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_ADC_DAC:
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
; 324 | BOOL Write_ADC_DAC(int addr, int n, unsigned char* p)                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 326 | int i;                                                                 
; 327 | unsigned char dat;                                                     
; 328 | BOOL ack;                                                              
; 329 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |325| 
        sti       r2,*+fp(2)            ; |325| 
        sti       ar2,*+fp(1)           ; |325| 
	.line	8
;----------------------------------------------------------------------
; 331 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |331| 
        sti       r0,*+fp(7)            ; |331| 
	.line	9
;----------------------------------------------------------------------
; 332 | I2C_START;                                                             
; 334 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |332| 
        ldiu      4,r0                  ; |332| 
        or3       r0,*ar0,r0            ; |332| 
        sti       r0,*ar0               ; |332| 
        ldiu      1,r0                  ; |332| 
        or3       r0,*ar0,r0            ; |332| 
        sti       r0,*ar0               ; |332| 
        ldiu      8,r0                  ; |332| 
        or3       r0,*ar0,r0            ; |332| 
        sti       r0,*ar0               ; |332| 
        ldiu      2,r0                  ; |332| 
        or3       r0,*ar0,r0            ; |332| 
        sti       r0,*ar0               ; |332| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |332| 
        and3      r0,*ar0,r0            ; |332| 
        sti       r0,*ar0               ; |332| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |332| 
        and3      r0,*ar0,r0            ; |332| 
        sti       r0,*ar0               ; |332| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	13
;----------------------------------------------------------------------
; 336 | dat = addr;                                             /* address with
;     | out read bit set - indicates write */                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |336| 
        sti       r0,*+fp(5)            ; |336| 
	.line	14
;----------------------------------------------------------------------
; 337 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      r0,ar2
        ldiu      @CL59,r0              ; |337| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |337| 
                                        ; |337| Far Call Occurs
        sti       r0,*+fp(6)            ; |337| 
	.line	16
;----------------------------------------------------------------------
; 339 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |339| 
        bne       L48                   ; |339| 
;*      Branch Occurs to L48            ; |339| 
	.line	18
;----------------------------------------------------------------------
; 341 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |341| 
        sti       r0,*+fp(7)            ; |341| 
	.line	19
;----------------------------------------------------------------------
; 342 | break;                                                                 
;----------------------------------------------------------------------
        bu        L54                   ; |342| 
;*      Branch Occurs to L54            ; |342| 
L48:        
	.line	22
;----------------------------------------------------------------------
; 345 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |345| 
        sti       r0,*+fp(4)            ; |345| 
        cmpi      *+fp(2),r0            ; |345| 
        bge       L54                   ; |345| 
;*      Branch Occurs to L54            ; |345| 
L49:        
	.line	24
;----------------------------------------------------------------------
; 347 | ack = I2C_TX_BYTE(p[i]);        /* write the bytes */                  
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      *+fp(3),ir0           ; |347| 
        ldiu      *+fp(4),ar0           ; |347| 
        ldiu      @CL59,r0              ; |347| 
        ldiu      *+ar0(ir0),ar2        ; |347| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |347| 
                                        ; |347| Far Call Occurs
        sti       r0,*+fp(6)            ; |347| 
	.line	26
;----------------------------------------------------------------------
; 349 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |349| 
        bne       L51                   ; |349| 
;*      Branch Occurs to L51            ; |349| 
	.line	28
;----------------------------------------------------------------------
; 351 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |351| 
        sti       r0,*+fp(7)            ; |351| 
	.line	29
;----------------------------------------------------------------------
; 352 | break;                                                                 
;----------------------------------------------------------------------
        bu        L54                   ; |352| 
;*      Branch Occurs to L54            ; |352| 
L51:        
	.line	22
        ldiu      1,r0                  ; |345| 
        addi      *+fp(4),r0            ; |345| 
        sti       r0,*+fp(4)            ; |345| 
        cmpi      *+fp(2),r0            ; |345| 
        blt       L49                   ; |345| 
;*      Branch Occurs to L49            ; |345| 
	.line	33
;----------------------------------------------------------------------
; 356 | break;                                                                 
;----------------------------------------------------------------------
        bu        L54                   ; |356| 
;*      Branch Occurs to L54            ; |356| 
	.line	34
L54:        
	.line	36
;----------------------------------------------------------------------
; 359 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |359| 
        ldiu      2,r0                  ; |359| 
        or3       r0,*ar0,r0            ; |359| 
        sti       r0,*ar0               ; |359| 
        ldiu      254,r0                ; |359| 
        and3      r0,*ar0,r0            ; |359| 
        sti       r0,*ar0               ; |359| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |359| 
        or3       r0,*ar0,r0            ; |359| 
        sti       r0,*ar0               ; |359| 
        ldiu      247,r0                ; |359| 
        and3      r0,*ar0,r0            ; |359| 
        sti       r0,*ar0               ; |359| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |359| 
        or3       r0,*ar0,r0            ; |359| 
        sti       r0,*ar0               ; |359| 
        ldiu      253,r0                ; |359| 
        and3      r0,*ar0,r0            ; |359| 
        sti       r0,*ar0               ; |359| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	38
;----------------------------------------------------------------------
; 361 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |361| 
	.line	39
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |362| 
        ldiu      *fp,fp                ; |362| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |362| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	362,000000000h,7


	.sect	 ".text"

	.global	_Read_ADC_DAC
	.sym	_Read_ADC_DAC,_Read_ADC_DAC,46,2,0
	.func	378
;******************************************************************************
;* FUNCTION NAME: _Read_ADC_DAC                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Read_ADC_DAC:
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
; 378 | BOOL Read_ADC_DAC(int addr, int n, unsigned char* p)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 380 | int i,j;                                                               
; 381 | unsigned char dat;                                                     
; 382 | BOOL ack;                                                              
; 383 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |379| 
        sti       r2,*+fp(2)            ; |379| 
        sti       ar2,*+fp(1)           ; |379| 
	.line	8
;----------------------------------------------------------------------
; 385 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |385| 
        sti       r0,*+fp(8)            ; |385| 
	.line	9
;----------------------------------------------------------------------
; 386 | I2C_START;                                                             
; 388 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |386| 
        ldiu      4,r0                  ; |386| 
        or3       r0,*ar0,r0            ; |386| 
        sti       r0,*ar0               ; |386| 
        ldiu      1,r0                  ; |386| 
        or3       r0,*ar0,r0            ; |386| 
        sti       r0,*ar0               ; |386| 
        ldiu      8,r0                  ; |386| 
        or3       r0,*ar0,r0            ; |386| 
        sti       r0,*ar0               ; |386| 
        ldiu      2,r0                  ; |386| 
        or3       r0,*ar0,r0            ; |386| 
        sti       r0,*ar0               ; |386| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |386| 
        and3      r0,*ar0,r0            ; |386| 
        sti       r0,*ar0               ; |386| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |386| 
        and3      r0,*ar0,r0            ; |386| 
        sti       r0,*ar0               ; |386| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	13
;----------------------------------------------------------------------
; 390 | dat = addr | 0x01;                              /* address with read bi
;     | t set */                                                               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |390| 
        or        *+fp(1),r0            ; |390| 
        sti       r0,*+fp(6)            ; |390| 
	.line	14
;----------------------------------------------------------------------
; 391 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      r0,ar2
        ldiu      @CL59,r0              ; |391| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |391| 
                                        ; |391| Far Call Occurs
        sti       r0,*+fp(7)            ; |391| 
	.line	16
;----------------------------------------------------------------------
; 393 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |393| 
        bne       L59                   ; |393| 
;*      Branch Occurs to L59            ; |393| 
	.line	18
;----------------------------------------------------------------------
; 395 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |395| 
        sti       r0,*+fp(8)            ; |395| 
	.line	19
;----------------------------------------------------------------------
; 396 | break;                                                                 
;----------------------------------------------------------------------
        bu        L63                   ; |396| 
;*      Branch Occurs to L63            ; |396| 
L59:        
	.line	22
;----------------------------------------------------------------------
; 399 | for (i=0;i<(n-1);i++)                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |399| 
        sti       r0,*+fp(4)            ; |399| 
        ldiu      1,r0                  ; |399| 
        ldiu      *+fp(4),r1            ; |399| 
        subri     *+fp(2),r0            ; |399| 
        cmpi3     r0,r1                 ; |399| 
        bge       L61                   ; |399| 
;*      Branch Occurs to L61            ; |399| 
L60:        
	.line	23
;----------------------------------------------------------------------
; 400 | I2C_RX_BYTE(&p[i],1);           /* read the bytes */                   
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |400| 
        ldp       @CL60,DP
        addi      *+fp(3),ar2           ; |400| Unsigned
        ldiu      @CL60,r0              ; |400| 
        ldiu      1,r2                  ; |400| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |400| 
                                        ; |400| Far Call Occurs
	.line	22
        ldiu      1,r0                  ; |399| 
        addi      *+fp(4),r0            ; |399| 
        sti       r0,*+fp(4)            ; |399| 
        ldiu      1,r0                  ; |399| 
        ldiu      *+fp(4),r1            ; |399| 
        subri     *+fp(2),r0            ; |399| 
        cmpi3     r0,r1                 ; |399| 
        blt       L60                   ; |399| 
;*      Branch Occurs to L60            ; |399| 
L61:        
	.line	25
;----------------------------------------------------------------------
; 402 | I2C_RX_BYTE(&p[n-1],0);                 /* the final byte to read */   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |402| 
        ldp       @CL60,DP
        addi      *+fp(3),ar2           ; |402| Unsigned
        ldiu      @CL60,r0              ; |402| 
        subi      1,ar2                 ; |402| Unsigned
        ldiu      0,r2                  ; |402| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |402| 
                                        ; |402| Far Call Occurs
	.line	27
;----------------------------------------------------------------------
; 404 | break;                                                                 
;----------------------------------------------------------------------
        bu        L63                   ; |404| 
;*      Branch Occurs to L63            ; |404| 
	.line	28
L63:        
	.line	30
;----------------------------------------------------------------------
; 407 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |407| 
        ldiu      2,r0                  ; |407| 
        or3       r0,*ar0,r0            ; |407| 
        sti       r0,*ar0               ; |407| 
        ldiu      254,r0                ; |407| 
        and3      r0,*ar0,r0            ; |407| 
        sti       r0,*ar0               ; |407| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |407| 
        or3       r0,*ar0,r0            ; |407| 
        sti       r0,*ar0               ; |407| 
        ldiu      247,r0                ; |407| 
        and3      r0,*ar0,r0            ; |407| 
        sti       r0,*ar0               ; |407| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |407| 
        or3       r0,*ar0,r0            ; |407| 
        sti       r0,*ar0               ; |407| 
        ldiu      253,r0                ; |407| 
        and3      r0,*ar0,r0            ; |407| 
        sti       r0,*ar0               ; |407| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	32
;----------------------------------------------------------------------
; 409 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |409| 
	.line	33
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |410| 
        ldiu      *fp,fp                ; |410| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |410| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	410,000000000h,8


	.sect	 ".text"

	.global	_Write_TMP75
	.sym	_Write_TMP75,_Write_TMP75,46,2,0
	.func	426
;******************************************************************************
;* FUNCTION NAME: _Write_TMP75                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_TMP75:
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
; 426 | BOOL Write_TMP75(int addr, int n, unsigned char* p)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 428 | int i;                                                                 
; 429 | unsigned char dat;                                                     
; 430 | BOOL ack;                                                              
; 431 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |427| 
        sti       r2,*+fp(2)            ; |427| 
        sti       ar2,*+fp(1)           ; |427| 
	.line	8
;----------------------------------------------------------------------
; 433 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |433| 
        sti       r0,*+fp(7)            ; |433| 
	.line	9
;----------------------------------------------------------------------
; 434 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 435 | I2C_START;                                                             
; 437 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |435| 
        ldiu      4,r0                  ; |435| 
        or3       r0,*ar0,r0            ; |435| 
        sti       r0,*ar0               ; |435| 
        ldiu      1,r0                  ; |435| 
        or3       r0,*ar0,r0            ; |435| 
        sti       r0,*ar0               ; |435| 
        ldiu      8,r0                  ; |435| 
        or3       r0,*ar0,r0            ; |435| 
        sti       r0,*ar0               ; |435| 
        ldiu      2,r0                  ; |435| 
        or3       r0,*ar0,r0            ; |435| 
        sti       r0,*ar0               ; |435| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |435| 
        and3      r0,*ar0,r0            ; |435| 
        sti       r0,*ar0               ; |435| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |435| 
        and3      r0,*ar0,r0            ; |435| 
        sti       r0,*ar0               ; |435| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	14
;----------------------------------------------------------------------
; 439 | dat = ADC_TMP;                                  /* address without read
;     |  bit set - Indicates Write */                                          
;----------------------------------------------------------------------
        ldiu      154,r0                ; |439| 
        sti       r0,*+fp(5)            ; |439| 
	.line	15
;----------------------------------------------------------------------
; 440 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      r0,ar2
        ldiu      @CL59,r0              ; |440| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |440| 
                                        ; |440| Far Call Occurs
        sti       r0,*+fp(6)            ; |440| 
	.line	17
;----------------------------------------------------------------------
; 442 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |442| 
        bne       L68                   ; |442| 
;*      Branch Occurs to L68            ; |442| 
	.line	19
;----------------------------------------------------------------------
; 444 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |444| 
        sti       r0,*+fp(7)            ; |444| 
	.line	20
;----------------------------------------------------------------------
; 445 | break;                                                                 
;----------------------------------------------------------------------
        bu        L76                   ; |445| 
;*      Branch Occurs to L76            ; |445| 
L68:        
	.line	23
;----------------------------------------------------------------------
; 448 | ack = I2C_TX_BYTE(addr);                /* the set the pointer */      
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      *+fp(1),ar2           ; |448| 
        ldiu      @CL59,r0              ; |448| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |448| 
                                        ; |448| Far Call Occurs
        sti       r0,*+fp(6)            ; |448| 
	.line	25
;----------------------------------------------------------------------
; 450 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |450| 
        bne       L70                   ; |450| 
;*      Branch Occurs to L70            ; |450| 
	.line	27
;----------------------------------------------------------------------
; 452 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |452| 
        sti       r0,*+fp(7)            ; |452| 
	.line	28
;----------------------------------------------------------------------
; 453 | break;                                                                 
;----------------------------------------------------------------------
        bu        L76                   ; |453| 
;*      Branch Occurs to L76            ; |453| 
L70:        
	.line	31
;----------------------------------------------------------------------
; 456 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |456| 
        sti       r0,*+fp(4)            ; |456| 
        cmpi      *+fp(2),r0            ; |456| 
        bge       L76                   ; |456| 
;*      Branch Occurs to L76            ; |456| 
L71:        
	.line	33
;----------------------------------------------------------------------
; 458 | ack = I2C_TX_BYTE(p[i]);        /* write the bytes */                  
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      *+fp(3),ir0           ; |458| 
        ldiu      *+fp(4),ar0           ; |458| 
        ldiu      @CL59,r0              ; |458| 
        ldiu      *+ar0(ir0),ar2        ; |458| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |458| 
                                        ; |458| Far Call Occurs
        sti       r0,*+fp(6)            ; |458| 
	.line	35
;----------------------------------------------------------------------
; 460 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |460| 
        bne       L73                   ; |460| 
;*      Branch Occurs to L73            ; |460| 
	.line	37
;----------------------------------------------------------------------
; 462 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |462| 
        sti       r0,*+fp(7)            ; |462| 
	.line	38
;----------------------------------------------------------------------
; 463 | break;                                                                 
;----------------------------------------------------------------------
        bu        L76                   ; |463| 
;*      Branch Occurs to L76            ; |463| 
L73:        
	.line	31
        ldiu      1,r0                  ; |456| 
        addi      *+fp(4),r0            ; |456| 
        sti       r0,*+fp(4)            ; |456| 
        cmpi      *+fp(2),r0            ; |456| 
        blt       L71                   ; |456| 
;*      Branch Occurs to L71            ; |456| 
	.line	42
;----------------------------------------------------------------------
; 467 | break;                                                                 
;----------------------------------------------------------------------
        bu        L76                   ; |467| 
;*      Branch Occurs to L76            ; |467| 
	.line	43
L76:        
	.line	45
;----------------------------------------------------------------------
; 470 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |470| 
        ldiu      2,r0                  ; |470| 
        or3       r0,*ar0,r0            ; |470| 
        sti       r0,*ar0               ; |470| 
        ldiu      254,r0                ; |470| 
        and3      r0,*ar0,r0            ; |470| 
        sti       r0,*ar0               ; |470| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |470| 
        or3       r0,*ar0,r0            ; |470| 
        sti       r0,*ar0               ; |470| 
        ldiu      247,r0                ; |470| 
        and3      r0,*ar0,r0            ; |470| 
        sti       r0,*ar0               ; |470| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |470| 
        or3       r0,*ar0,r0            ; |470| 
        sti       r0,*ar0               ; |470| 
        ldiu      253,r0                ; |470| 
        and3      r0,*ar0,r0            ; |470| 
        sti       r0,*ar0               ; |470| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	46
;----------------------------------------------------------------------
; 471 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	48
;----------------------------------------------------------------------
; 473 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |473| 
	.line	49
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |474| 
        ldiu      *fp,fp                ; |474| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |474| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	474,000000000h,7


	.sect	 ".text"

	.global	_Read_TMP75
	.sym	_Read_TMP75,_Read_TMP75,46,2,0
	.func	490
;******************************************************************************
;* FUNCTION NAME: _Read_TMP75                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Read_TMP75:
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
; 490 | BOOL Read_TMP75(int addr, int n, unsigned char* p)                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 492 | int i,j;                                                               
; 493 | unsigned char dat;                                                     
; 494 | BOOL ack;                                                              
; 495 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |491| 
        sti       r2,*+fp(2)            ; |491| 
        sti       ar2,*+fp(1)           ; |491| 
	.line	8
;----------------------------------------------------------------------
; 497 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |497| 
        sti       r0,*+fp(8)            ; |497| 
	.line	9
;----------------------------------------------------------------------
; 498 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	11
;----------------------------------------------------------------------
; 500 | if (!Write_TMP75(addr, 0, p))                                          
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,r0              ; |500| 
        ldiu      0,r2                  ; |500| 
        callu     r0                    ; far call to _Write_TMP75	; |500| 
                                        ; |500| Far Call Occurs
        cmpi      0,r0                  ; |500| 
        bne       L81                   ; |500| 
;*      Branch Occurs to L81            ; |500| 
	.line	13
;----------------------------------------------------------------------
; 502 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	14
;----------------------------------------------------------------------
; 503 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L90                   ; |503| 
	nop
	nop
        ldiu      0,r0                  ; |503| 
;*      Branch Occurs to L90            ; |503| 
L81:        
	.line	17
;----------------------------------------------------------------------
; 506 | I2C_START;                                                             
; 508 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |506| 
        ldiu      4,r0                  ; |506| 
        or3       r0,*ar0,r0            ; |506| 
        sti       r0,*ar0               ; |506| 
        ldiu      1,r0                  ; |506| 
        or3       r0,*ar0,r0            ; |506| 
        sti       r0,*ar0               ; |506| 
        ldiu      8,r0                  ; |506| 
        or3       r0,*ar0,r0            ; |506| 
        sti       r0,*ar0               ; |506| 
        ldiu      2,r0                  ; |506| 
        or3       r0,*ar0,r0            ; |506| 
        sti       r0,*ar0               ; |506| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |506| 
        and3      r0,*ar0,r0            ; |506| 
        sti       r0,*ar0               ; |506| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |506| 
        and3      r0,*ar0,r0            ; |506| 
        sti       r0,*ar0               ; |506| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	21
;----------------------------------------------------------------------
; 510 | dat = ADC_TMP | 0x01;                           /* address with read bi
;     | t set */                                                               
;----------------------------------------------------------------------
        ldiu      155,r0                ; |510| 
        sti       r0,*+fp(6)            ; |510| 
	.line	22
;----------------------------------------------------------------------
; 511 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      r0,ar2
        ldiu      @CL59,r0              ; |511| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |511| 
                                        ; |511| Far Call Occurs
        sti       r0,*+fp(7)            ; |511| 
	.line	24
;----------------------------------------------------------------------
; 513 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |513| 
        bne       L83                   ; |513| 
;*      Branch Occurs to L83            ; |513| 
	.line	26
;----------------------------------------------------------------------
; 515 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |515| 
        sti       r0,*+fp(8)            ; |515| 
	.line	27
;----------------------------------------------------------------------
; 516 | break;                                                                 
;----------------------------------------------------------------------
        bu        L89                   ; |516| 
;*      Branch Occurs to L89            ; |516| 
L83:        
	.line	30
;----------------------------------------------------------------------
; 519 | ack = TRUE;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |519| 
        sti       r0,*+fp(7)            ; |519| 
	.line	32
;----------------------------------------------------------------------
; 521 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |521| 
        sti       r0,*+fp(4)            ; |521| 
        cmpi      *+fp(2),r0            ; |521| 
        bge       L89                   ; |521| 
;*      Branch Occurs to L89            ; |521| 
L84:        
	.line	34
;----------------------------------------------------------------------
; 523 | if (i==(n-1))                                                          
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |523| 
        ldiu      *+fp(4),r1            ; |523| 
        subri     *+fp(2),r0            ; |523| 
        cmpi3     r0,r1                 ; |523| 
        bne       L86                   ; |523| 
;*      Branch Occurs to L86            ; |523| 
	.line	35
;----------------------------------------------------------------------
; 524 | ack = FALSE;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |524| 
        sti       r0,*+fp(7)            ; |524| 
L86:        
	.line	37
;----------------------------------------------------------------------
; 526 | I2C_RX_BYTE(&p[i],ack);                 /* read the bytes */           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |526| 
        ldp       @CL60,DP
        ldiu      *+fp(7),r2            ; |526| 
        addi      *+fp(3),ar2           ; |526| Unsigned
        ldiu      @CL60,r0              ; |526| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |526| 
                                        ; |526| Far Call Occurs
	.line	32
        ldiu      1,r0                  ; |521| 
        addi      *+fp(4),r0            ; |521| 
        sti       r0,*+fp(4)            ; |521| 
        cmpi      *+fp(2),r0            ; |521| 
        blt       L84                   ; |521| 
;*      Branch Occurs to L84            ; |521| 
	.line	40
;----------------------------------------------------------------------
; 529 | break;                                                                 
;----------------------------------------------------------------------
        bu        L89                   ; |529| 
;*      Branch Occurs to L89            ; |529| 
	.line	41
L89:        
	.line	43
;----------------------------------------------------------------------
; 532 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |532| 
        ldiu      2,r0                  ; |532| 
        or3       r0,*ar0,r0            ; |532| 
        sti       r0,*ar0               ; |532| 
        ldiu      254,r0                ; |532| 
        and3      r0,*ar0,r0            ; |532| 
        sti       r0,*ar0               ; |532| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |532| 
        or3       r0,*ar0,r0            ; |532| 
        sti       r0,*ar0               ; |532| 
        ldiu      247,r0                ; |532| 
        and3      r0,*ar0,r0            ; |532| 
        sti       r0,*ar0               ; |532| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |532| 
        or3       r0,*ar0,r0            ; |532| 
        sti       r0,*ar0               ; |532| 
        ldiu      253,r0                ; |532| 
        and3      r0,*ar0,r0            ; |532| 
        sti       r0,*ar0               ; |532| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	45
;----------------------------------------------------------------------
; 534 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	46
;----------------------------------------------------------------------
; 535 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |535| 
L90:        
	.line	47
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |536| 
        ldiu      *fp,fp                ; |536| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |536| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	536,000000000h,8


	.sect	 ".text"

	.global	_Read_ADCn
	.sym	_Read_ADCn,_Read_ADCn,32,2,0
	.func	552
;******************************************************************************
;* FUNCTION NAME: _Read_ADCn                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,fp,ar4,ar5,ar6,ir0,*
;*                        ir1,st,rc                                           *
;*   Regs Saved         : ar4,ar5,ar6                                         *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 9 Auto + 3 SOE = 14 words         *
;******************************************************************************
_Read_ADCn:
;* ar2   assigned to _n
	.sym	_n,10,4,17,32
;* r2    assigned to _START
	.sym	_START,2,14,17,32
	.sym	_n,1,4,1,32
	.sym	_START,2,14,1,32
	.sym	_f,3,6,1,32
	.sym	_addr,4,4,1,32
	.sym	_ch,5,14,1,32
	.sym	_p,6,62,1,96,,3
	.sym	_r,9,14,1,32
	.line	1
;----------------------------------------------------------------------
; 552 | void Read_ADCn(int n, BOOL START)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      9,sp
        push      ar4
        push      ar5
        push      ar6
	.line	2
;----------------------------------------------------------------------
; 554 | float f;                                                               
; 555 | int addr;                                                              
; 556 | unsigned int ch;                                                       
; 557 | unsigned int p[3];                                                     
; 558 | BOOL r;                                                                
; 560 | switch(n)                                                              
; 562 |         case ADC_Tint:                                                 
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |553| 
        sti       ar2,*+fp(1)           ; |553| 
        bu        L156                  ; |551| 
;*      Branch Occurs to L156           ; |551| 
L93:        
	.line	13
;----------------------------------------------------------------------
; 564 | r = Read_TMP75(0, 2, (unsigned char*)p);                               
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      fp,r3                 ; |564| 
        ldiu      0,ar2                 ; |564| 
        ldiu      2,r2                  ; |564| 
        ldiu      @CL61,r0              ; |564| 
        addi      6,r3                  ; |564| 
        callu     r0                    ; far call to _Read_TMP75	; |564| 
                                        ; |564| Far Call Occurs
        sti       r0,*+fp(9)            ; |564| 
	.line	15
;----------------------------------------------------------------------
; 566 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |566| 
        bne       L95                   ; |566| 
;*      Branch Occurs to L95            ; |566| 
	.line	16
;----------------------------------------------------------------------
; 567 | VAR_NaN(&REG_ADC[n]);                                                  
; 568 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |567| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |567| 
        addi      @CL3,ar2              ; |567| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |567| 
        callu     r0                    ; far call to _VAR_NaN	; |567| 
                                        ; |567| Far Call Occurs
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L95:        
	.line	19
;----------------------------------------------------------------------
; 570 | ADC_INT[n] = (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF));                 
;----------------------------------------------------------------------
        ldiu      fp,ar1                ; |570| 
        ldiu      fp,ar0                ; |570| 
        ldp       @CL5,DP
        ldiu      8,r0                  ; |570| 
        ldiu      255,r1                ; |570| 
        ldiu      *+fp(1),ir0           ; |570| 
        addi      6,ar1                 ; |570| 
        addi      7,ar0                 ; |570| 
        ldiu      @CL5,ar2              ; |570| 
        ash3      r0,*ar1,r0            ; |570| 
        and3      r1,*ar0,r1            ; |570| 
        and       65280,r0              ; |570| 
        or3       r0,r1,r0              ; |570| 
        sti       r0,*+ar2(ir0)         ; |570| 
	.line	20
;----------------------------------------------------------------------
; 571 | ADC_INT[n] = ADC_INT[n]>>4;                                            
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |571| 
        ldiu      @CL5,ar1              ; |571| 
        ldiu      *+fp(1),ir0           ; |571| 
        ldiu      -4,r0                 ; |571| 
        ldiu      ir0,ir1               ; |571| 
        ash3      r0,*+ar0(ir0),r0      ; |571| 
        sti       r0,*+ar1(ir1)         ; |571| 
	.line	21
;----------------------------------------------------------------------
; 572 | f = (float)ADC_INT[n]/16.0;                                            
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |572| 
        ldiu      *+fp(1),ir0           ; |572| 
        ldp       @CL62,DP
        float     *+ar0(ir0),f0         ; |572| 
        mpyf      @CL62,f0              ; |572| 
        stf       f0,*+fp(3)            ; |572| 
	.line	22
;----------------------------------------------------------------------
; 573 | VAR_Update(&REG_ADC[n], f, 0, 0);                                      
;----------------------------------------------------------------------
        ldiu      ir0,ar2               ; |573| 
        mpyi      44,ar2                ; |573| 
        ldp       @CL3,DP
        ldiu      255,r3                ; |573| 
        addi      @CL3,ar2              ; |573| Unsigned
        ldp       @CL41,DP
        ldfu      f0,f2                 ; |573| Move F32 into F40 for CONV
        ldiu      @CL41,r1              ; |573| 
        andn      r3,f2                 ; |573| Bit mask for F32/F40 conversion
        ldiu      0,rc                  ; |573| 
        ldiu      0,r3                  ; |573| 
        callu     r1                    ; far call to _VAR_Update	; |573| 
                                        ; |573| Far Call Occurs
	.line	24
;----------------------------------------------------------------------
; 575 | break;                                                                 
; 577 | case ADC_Text:                                                         
; 578 | case ADC_Vinc:                                                         
; 579 | case ADC_Vref:                                                         
;----------------------------------------------------------------------
        bu        L158                  ; |575| 
;*      Branch Occurs to L158           ; |575| 
L96:        
	.line	31
;----------------------------------------------------------------------
; 582 | addr = ADC_ADDRA1;                                                     
;----------------------------------------------------------------------
        ldiu      148,r0                ; |582| 
        sti       r0,*+fp(4)            ; |582| 
	.line	33
;----------------------------------------------------------------------
; 584 | if (n==ADC_Vref)                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |584| 
        cmpi      0,r0                  ; |584| 
        bne       L98                   ; |584| 
;*      Branch Occurs to L98            ; |584| 
	.line	34
;----------------------------------------------------------------------
; 585 | ch = ADC_CH0;                                                          
;----------------------------------------------------------------------
        ldiu      64,r0                 ; |585| 
        sti       r0,*+fp(5)            ; |585| 
        bu        L102                  ; |551| 
;*      Branch Occurs to L102           ; |551| 
L98:        
	.line	35
;----------------------------------------------------------------------
; 586 | else if (n==ADC_Vinc)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |586| 
        cmpi      1,r0                  ; |586| 
        bne       L100                  ; |586| 
;*      Branch Occurs to L100           ; |586| 
	.line	36
;----------------------------------------------------------------------
; 587 | ch = ADC_CH1;                                                          
;----------------------------------------------------------------------
        ldiu      96,r0                 ; |587| 
        sti       r0,*+fp(5)            ; |587| 
        bu        L102                  ; |551| 
;*      Branch Occurs to L102           ; |551| 
L100:        
	.line	37
;----------------------------------------------------------------------
; 588 | else if (n==ADC_Text)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |588| 
        cmpi      2,r0                  ; |588| 
        bne       L102                  ; |588| 
;*      Branch Occurs to L102           ; |588| 
	.line	38
;----------------------------------------------------------------------
; 589 | ch = ADC_CH2;                                                          
;----------------------------------------------------------------------
        ldiu      32,r0                 ; |589| 
        sti       r0,*+fp(5)            ; |589| 
L102:        
	.line	40
;----------------------------------------------------------------------
; 591 | if (START)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |591| 
        cmpi      0,r0                  ; |591| 
        beq       L105                  ; |591| 
;*      Branch Occurs to L105           ; |591| 
	.line	42
;----------------------------------------------------------------------
; 593 | p[0]    = 0x9C;                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |593| 
        addi      6,ar0                 ; |593| 
        ldiu      156,r0                ; |593| 
        sti       r0,*ar0               ; |593| 
	.line	43
;----------------------------------------------------------------------
; 594 | p[0]   |= ch;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |594| 
        addi      6,ar0                 ; |594| 
        ldiu      *+fp(5),r0            ; |594| 
        or3       r0,*ar0,r0            ; |594| 
        sti       r0,*ar0               ; |594| 
	.line	44
;----------------------------------------------------------------------
; 595 | r               = Write_ADC_DAC(addr, 1, (unsigned char*)p);    /* setu
;     | p cfg register */                                                      
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |595| 
        ldp       @CL63,DP
        ldiu      1,r2                  ; |595| 
        addi      6,r3                  ; |595| 
        ldiu      *+fp(4),ar2           ; |595| 
        ldiu      @CL63,r0              ; |595| 
        callu     r0                    ; far call to _Write_ADC_DAC	; |595| 
                                        ; |595| Far Call Occurs
        sti       r0,*+fp(9)            ; |595| 
	.line	46
;----------------------------------------------------------------------
; 597 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |597| 
        bne       L158                  ; |597| 
;*      Branch Occurs to L158           ; |597| 
	.line	47
;----------------------------------------------------------------------
; 598 | VAR_NaN(&REG_ADC[n]);                                                  
; 600 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |598| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |598| 
        addi      @CL3,ar2              ; |598| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |598| 
        callu     r0                    ; far call to _VAR_NaN	; |598| 
                                        ; |598| Far Call Occurs
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L105:        
	.line	51
;----------------------------------------------------------------------
; 602 | r = Read_ADC_DAC(addr, 3, (unsigned char*)p);                          
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      fp,r3                 ; |602| 
        ldiu      *+fp(4),ar2           ; |602| 
        ldiu      3,r2                  ; |602| 
        ldiu      @CL64,r0              ; |602| 
        addi      6,r3                  ; |602| 
        callu     r0                    ; far call to _Read_ADC_DAC	; |602| 
                                        ; |602| Far Call Occurs
        sti       r0,*+fp(9)            ; |602| 
	.line	53
;----------------------------------------------------------------------
; 604 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |604| 
        bne       L107                  ; |604| 
;*      Branch Occurs to L107           ; |604| 
	.line	54
;----------------------------------------------------------------------
; 605 | VAR_NaN(&REG_ADC[n]);                                                  
; 606 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |605| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |605| 
        addi      @CL3,ar2              ; |605| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |605| 
        callu     r0                    ; far call to _VAR_NaN	; |605| 
                                        ; |605| Far Call Occurs
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L107:        
	.line	57
;----------------------------------------------------------------------
; 608 | if ((p[2]&ch)==ch) //if the data is from the correct "channel" (I2C add
;     | ress) ?                                                                
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |608| 
        addi      8,ar0                 ; |608| 
        ldiu      *+fp(5),r0            ; |608| 
        and3      r0,*ar0,r0            ; |608| 
        cmpi      *+fp(5),r0            ; |608| 
        bne       L158                  ; |608| 
;*      Branch Occurs to L158           ; |608| 
	.line	59
;----------------------------------------------------------------------
; 610 | ADC_INT[n] = (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF)); //read the two b
;     | ytes, store in ADC_INT[n]                                              
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |610| 
        ldiu      fp,ar1                ; |610| 
        ldp       @CL5,DP
        ldiu      8,r0                  ; |610| 
        ldiu      255,r1                ; |610| 
        ldiu      *+fp(1),ir0           ; |610| 
        addi      6,ar0                 ; |610| 
        addi      7,ar1                 ; |610| 
        ldiu      @CL5,ar2              ; |610| 
        ash3      r0,*ar0,r0            ; |610| 
        and3      r1,*ar1,r1            ; |610| 
        and       65280,r0              ; |610| 
        or3       r0,r1,r0              ; |610| 
        sti       r0,*+ar2(ir0)         ; |610| 
	.line	61
;----------------------------------------------------------------------
; 612 | if (ADC_INT[n] & 0x8000) //if data msb is set, extend 1s into ADC_INT[n
;     | +1] ???                                                                
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |612| 
        ldiu      *+fp(1),ir0           ; |612| 
        ldiu      *+ar0(ir0),r0         ; |612| 
        tstb      32768,r0              ; |612| 
        beq       L110                  ; |612| 
;*      Branch Occurs to L110           ; |612| 
	.line	62
;----------------------------------------------------------------------
; 613 | ADC_INT[n] |= 0xFFFF0000; //why?                                       
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ir0              ; |613| 
        ldp       @CL65,DP
        ldiu      *+fp(1),ar0           ; |613| 
        ldiu      @CL65,r0              ; |613| 
        or3       r0,*+ar0(ir0),r0      ; |613| 
        sti       r0,*+ar0(ir0)         ; |613| 
L110:        
	.line	64
;----------------------------------------------------------------------
; 615 | f = (float)ADC_INT[n]*ADC_TRIM_F_1[n]/ADC_TRIM_I_1[n];                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |615| 
        ldp       @CL5,DP
        ldiu      ir0,r0                ; |615| 
        ldiu      @CL5,ar1              ; |615| 
        ldp       @CL56,DP
        ldiu      @CL56,ar2             ; |615| 
        ldiu      r0,ir1                ; |615| 
        ldp       @CL57,DP
        float     *+ar1(ir0),f1         ; |615| 
        ldiu      @CL57,ar0             ; |615| 
        mpyf3     *+ar2(ir0),f1,f0      ; |615| 
        float     *+ar0(ir1),f1         ; |615| 
        call      DIV_F30               ; |615| 
                                        ; |615| Call Occurs
        stf       f0,*+fp(3)            ; |615| 
	.line	66
;----------------------------------------------------------------------
; 617 | if (n==ADC_Text)                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |617| 
        cmpi      2,r0                  ; |617| 
        bne       L112                  ; |617| 
;*      Branch Occurs to L112           ; |617| 
	.line	68
;----------------------------------------------------------------------
; 619 | f               =   ((RTD_CAL_HI_OHM - RTD_CAL_LO_OHM) / (RTD_CAL_HI_V
;     | - RTD_CAL_LO_V)) * f                                                   
; 620 |                   + ((RTD_CAL_LO_OHM * RTD_CAL_HI_V - RTD_CAL_HI_OHM *
;     | RTD_CAL_LO_V) / (RTD_CAL_HI_V - RTD_CAL_LO_V));                        
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar4             ; |619| 
        ldp       @CL31,DP
        ldiu      @CL31,ar2             ; |619| 
        ldp       @CL34,DP
        ldiu      @CL34,ar1             ; |619| 
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |619| 
        subf3     *ar4,*ar2,f0          ; |619| 
        subf3     *ar1,*ar0,f1          ; |619| 
        call      DIV_F30               ; |619| 
                                        ; |619| Call Occurs
        ldp       @CL31,DP
        ldiu      @CL31,ar1             ; |619| 
        ldp       @CL34,DP
        ldiu      @CL34,ar5             ; |619| 
        ldp       @CL32,DP
        ldiu      @CL32,ar4             ; |619| 
        ldp       @CL33,DP
        ldiu      @CL33,ar2             ; |619| 
        ldp       @CL34,DP
        ldiu      @CL34,ar6             ; |619| 
        ldp       @CL33,DP
        ldfu      f0,f2                 ; |619| 
        ldiu      @CL33,ar0             ; |619| 
        mpyf      *+fp(3),f2            ; |619| 
        mpyf3     *ar5,*ar1,f0          ; |619| 
        mpyf3     *ar2,*ar4,f1          ; |619| 
        subf3     f0,f1,f0              ; |619| 
        subf3     *ar6,*ar0,f1          ; |619| 
        call      DIV_F30               ; |619| 
                                        ; |619| Call Occurs
        addf3     f2,f0,f0              ; |619| 
        stf       f0,*+fp(3)            ; |619| 
	.line	70
;----------------------------------------------------------------------
; 621 | RTD_R   = f;                                                           
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |621| 
        stf       f0,*ar0               ; |621| 
	.line	71
;----------------------------------------------------------------------
; 622 | f               = TCE2 * TCE * TCE * f * f + TCE1 * TCE * f + TCE0;    
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldfu      *+fp(3),f0            ; |622| 
        mpyf      @CL36,f0              ; |622| 
        ldfu      *+fp(3),f1            ; |622| 
        ldp       @CL35,DP
        mpyf      *+fp(3),f0            ; |622| 
        mpyf      @CL35,f1              ; |622| 
        ldp       @CL37,DP
        addf3     f0,f1,f0              ; |622| 
        addf      @CL37,f0              ; |622| 
        stf       f0,*+fp(3)            ; |622| 
	.line	72
;----------------------------------------------------------------------
; 623 | f               = (f * TEMPERATURE_TRIM_T1) + (TEMPERATURE_TRIM_T0);   
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |623| 
        ldp       @CL38,DP
        ldiu      @CL38,ar1             ; |623| 
        ldfu      *ar0,f0               ; |623| 
        mpyf      *+fp(3),f0            ; |623| 
        addf3     f0,*ar1,f0            ; |623| 
        stf       f0,*+fp(3)            ; |623| 
L112:        
	.line	75
;----------------------------------------------------------------------
; 626 | VAR_Update(&REG_ADC[n], f, 0, 0);                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |626| 
        ldp       @CL3,DP
        ldfu      *+fp(3),f0            ; |626| 
        ldiu      255,r1                ; |626| 
        mpyi      44,ar2                ; |626| 
        ldiu      0,rc                  ; |626| 
        addi      @CL3,ar2              ; |626| Unsigned
        ldfu      f0,f2                 ; |626| Move F32 into F40 for CONV
        ldp       @CL41,DP
        andn      r1,f2                 ; |626| Bit mask for F32/F40 conversion
        ldiu      @CL41,r0              ; |626| 
        ldiu      0,r3                  ; |626| 
        callu     r0                    ; far call to _VAR_Update	; |626| 
                                        ; |626| Far Call Occurs
	.line	79
;----------------------------------------------------------------------
; 630 | break;                                                                 
; 632 | case ADC_Ain1:                                                         
; 633 | case ADC_GNDSEN:                                                       
; 634 | case ADC_VTUNE:                                                        
;----------------------------------------------------------------------
        bu        L158                  ; |630| 
;*      Branch Occurs to L158           ; |630| 
L113:        
	.line	86
;----------------------------------------------------------------------
; 637 | addr = ADC_ADDRA2;                                                     
;----------------------------------------------------------------------
        ldiu      146,r0                ; |637| 
        sti       r0,*+fp(4)            ; |637| 
	.line	88
;----------------------------------------------------------------------
; 639 | if (n==ADC_VTUNE)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |639| 
        cmpi      3,r0                  ; |639| 
        bne       L115                  ; |639| 
;*      Branch Occurs to L115           ; |639| 
	.line	89
;----------------------------------------------------------------------
; 640 | ch = ADC_CH0;                                                          
;----------------------------------------------------------------------
        ldiu      64,r0                 ; |640| 
        sti       r0,*+fp(5)            ; |640| 
        bu        L119                  ; |551| 
;*      Branch Occurs to L119           ; |551| 
L115:        
	.line	90
;----------------------------------------------------------------------
; 641 | else if (n==ADC_GNDSEN)                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |641| 
        cmpi      4,r0                  ; |641| 
        bne       L117                  ; |641| 
;*      Branch Occurs to L117           ; |641| 
	.line	91
;----------------------------------------------------------------------
; 642 | ch = ADC_CH1;                                                          
;----------------------------------------------------------------------
        ldiu      96,r0                 ; |642| 
        sti       r0,*+fp(5)            ; |642| 
        bu        L119                  ; |551| 
;*      Branch Occurs to L119           ; |551| 
L117:        
	.line	92
;----------------------------------------------------------------------
; 643 | else if (n==ADC_Ain1)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |643| 
        cmpi      5,r0                  ; |643| 
        bne       L119                  ; |643| 
;*      Branch Occurs to L119           ; |643| 
	.line	93
;----------------------------------------------------------------------
; 644 | ch = ADC_CH2;                                                          
;----------------------------------------------------------------------
        ldiu      32,r0                 ; |644| 
        sti       r0,*+fp(5)            ; |644| 
L119:        
	.line	95
;----------------------------------------------------------------------
; 646 | if (START)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |646| 
        cmpi      0,r0                  ; |646| 
        beq       L123                  ; |646| 
;*      Branch Occurs to L123           ; |646| 
	.line	97
;----------------------------------------------------------------------
; 648 | p[0]     = 0x9C;        /* single conversion mode & start conversion */
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |648| 
        addi      6,ar0                 ; |648| 
        ldiu      156,r0                ; |648| 
        sti       r0,*ar0               ; |648| 
	.line	98
;----------------------------------------------------------------------
; 649 | p[0]    |= ch;                                                         
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |649| 
        addi      6,ar0                 ; |649| 
        ldiu      *+fp(5),r0            ; |649| 
        or3       r0,*ar0,r0            ; |649| 
        sti       r0,*ar0               ; |649| 
	.line	99
;----------------------------------------------------------------------
; 650 | r                = Write_ADC_DAC(addr, 1, (unsigned char*)p);   /* setu
;     | p cfg register */                                                      
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |650| 
        ldp       @CL63,DP
        ldiu      1,r2                  ; |650| 
        addi      6,r3                  ; |650| 
        ldiu      *+fp(4),ar2           ; |650| 
        ldiu      @CL63,r0              ; |650| 
        callu     r0                    ; far call to _Write_ADC_DAC	; |650| 
                                        ; |650| Far Call Occurs
        sti       r0,*+fp(9)            ; |650| 
	.line	101
;----------------------------------------------------------------------
; 652 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |652| 
        bne       L158                  ; |652| 
;*      Branch Occurs to L158           ; |652| 
	.line	103
;----------------------------------------------------------------------
; 654 | VAR_NaN(&REG_ADC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |654| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |654| 
        addi      @CL3,ar2              ; |654| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |654| 
        callu     r0                    ; far call to _VAR_NaN	; |654| 
                                        ; |654| Far Call Occurs
	.line	105
;----------------------------------------------------------------------
; 656 | if (n==ADC_Ain1)                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |656| 
        cmpi      5,r0                  ; |656| 
        bne       L158                  ; |656| 
;*      Branch Occurs to L158           ; |656| 
	.line	106
;----------------------------------------------------------------------
; 657 | AI[n-ADC_Ain1].present = FALSE;                                        
; 660 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldp       @CL2,DP
        mpyi      318,ir0               ; |657| 
        ldiu      @CL2,ar0              ; |657| 
        subi      1590,ir0              ; |657| 
        ldiu      0,r0                  ; |657| 
        sti       r0,*+ar0(ir0)         ; |657| 
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L123:        
	.line	111
;----------------------------------------------------------------------
; 662 | r = Read_ADC_DAC(addr, 3, (unsigned char*)p);                          
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      fp,r3                 ; |662| 
        ldiu      *+fp(4),ar2           ; |662| 
        ldiu      3,r2                  ; |662| 
        ldiu      @CL64,r0              ; |662| 
        addi      6,r3                  ; |662| 
        callu     r0                    ; far call to _Read_ADC_DAC	; |662| 
                                        ; |662| Far Call Occurs
        sti       r0,*+fp(9)            ; |662| 
	.line	113
;----------------------------------------------------------------------
; 664 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |664| 
        bne       L126                  ; |664| 
;*      Branch Occurs to L126           ; |664| 
	.line	115
;----------------------------------------------------------------------
; 666 | VAR_NaN(&REG_ADC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |666| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |666| 
        addi      @CL3,ar2              ; |666| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |666| 
        callu     r0                    ; far call to _VAR_NaN	; |666| 
                                        ; |666| Far Call Occurs
	.line	117
;----------------------------------------------------------------------
; 668 | if (n==ADC_Ain1)                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |668| 
        cmpi      5,r0                  ; |668| 
        bne       L158                  ; |668| 
;*      Branch Occurs to L158           ; |668| 
	.line	118
;----------------------------------------------------------------------
; 669 | AI[n-ADC_Ain1].present = FALSE;                                        
; 671 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldp       @CL2,DP
        mpyi      318,ir0               ; |669| 
        ldiu      @CL2,ar0              ; |669| 
        subi      1590,ir0              ; |669| 
        ldiu      0,r0                  ; |669| 
        sti       r0,*+ar0(ir0)         ; |669| 
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L126:        
	.line	122
;----------------------------------------------------------------------
; 673 | if (n==ADC_Ain1)                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |673| 
        cmpi      5,r0                  ; |673| 
        bne       L128                  ; |673| 
;*      Branch Occurs to L128           ; |673| 
	.line	123
;----------------------------------------------------------------------
; 674 | AI[n-ADC_Ain1].present = TRUE;                                         
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldp       @CL2,DP
        mpyi      318,ir0               ; |674| 
        ldiu      @CL2,ar0              ; |674| 
        subi      1590,ir0              ; |674| 
        ldiu      1,r0                  ; |674| 
        sti       r0,*+ar0(ir0)         ; |674| 
L128:        
	.line	125
;----------------------------------------------------------------------
; 676 | if ((p[2]&ch)==ch)                                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |676| 
        addi      8,ar0                 ; |676| 
        ldiu      *+fp(5),r0            ; |676| 
        and3      r0,*ar0,r0            ; |676| 
        cmpi      *+fp(5),r0            ; |676| 
        bne       L158                  ; |676| 
;*      Branch Occurs to L158           ; |676| 
	.line	127
;----------------------------------------------------------------------
; 678 | ADC_INT[n] = (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF));                 
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |678| 
        ldiu      fp,ar1                ; |678| 
        ldp       @CL5,DP
        ldiu      8,r0                  ; |678| 
        ldiu      255,r1                ; |678| 
        ldiu      *+fp(1),ir0           ; |678| 
        addi      6,ar0                 ; |678| 
        addi      7,ar1                 ; |678| 
        ldiu      @CL5,ar2              ; |678| 
        ash3      r0,*ar0,r0            ; |678| 
        and3      r1,*ar1,r1            ; |678| 
        and       65280,r0              ; |678| 
        or3       r0,r1,r0              ; |678| 
        sti       r0,*+ar2(ir0)         ; |678| 
	.line	129
;----------------------------------------------------------------------
; 680 | if (ADC_INT[n]&0x8000)                                                 
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |680| 
        ldiu      *+fp(1),ir0           ; |680| 
        ldiu      *+ar0(ir0),r0         ; |680| 
        tstb      32768,r0              ; |680| 
        beq       L131                  ; |680| 
;*      Branch Occurs to L131           ; |680| 
	.line	130
;----------------------------------------------------------------------
; 681 | ADC_INT[n] |= 0xFFFF0000;                                              
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ir0              ; |681| 
        ldp       @CL65,DP
        ldiu      *+fp(1),ar0           ; |681| 
        ldiu      @CL65,r0              ; |681| 
        or3       r0,*+ar0(ir0),r0      ; |681| 
        sti       r0,*+ar0(ir0)         ; |681| 
L131:        
	.line	132
;----------------------------------------------------------------------
; 683 | f = (float)ADC_INT[n] * ADC_TRIM_F_1[n] / ADC_TRIM_I_1[n];             
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      *+fp(1),ir1           ; |683| 
        ldiu      @CL5,ar0              ; |683| 
        ldp       @CL56,DP
        ldiu      ir1,ir0               ; |683| 
        ldiu      @CL56,ar2             ; |683| 
        ldp       @CL57,DP
        float     *+ar0(ir1),f0         ; |683| 
        ldiu      @CL57,ar1             ; |683| 
        mpyf3     *+ar2(ir0),f0,f0      ; |683| 
        float     *+ar1(ir0),f1         ; |683| 
        call      DIV_F30               ; |683| 
                                        ; |683| Call Occurs
        stf       f0,*+fp(3)            ; |683| 
	.line	134
;----------------------------------------------------------------------
; 685 | VAR_Update(&REG_ADC[n], f, 0, 0);                                      
;----------------------------------------------------------------------
        ldiu      255,r3                ; |685| 
        ldiu      *+fp(1),ar2           ; |685| 
        mpyi      44,ar2                ; |685| 
        ldp       @CL3,DP
        addi      @CL3,ar2              ; |685| Unsigned
        ldp       @CL41,DP
        ldfu      f0,f2                 ; |685| Move F32 into F40 for CONV
        ldiu      0,rc                  ; |685| 
        andn      r3,f2                 ; |685| Bit mask for F32/F40 conversion
        ldiu      @CL41,r1              ; |685| 
        ldiu      0,r3                  ; |685| 
        callu     r1                    ; far call to _VAR_Update	; |685| 
                                        ; |685| Far Call Occurs
	.line	139
;----------------------------------------------------------------------
; 690 | break;                                                                 
; 692 | case ADC_Ain4:                                                         
; 693 | case ADC_Ain3:                                                         
; 694 | case ADC_Ain2:                                                         
;----------------------------------------------------------------------
        bu        L158                  ; |690| 
;*      Branch Occurs to L158           ; |690| 
L132:        
	.line	146
;----------------------------------------------------------------------
; 697 | addr = ADC_ADDRIO1;                                                    
;----------------------------------------------------------------------
        ldiu      150,r0                ; |697| 
        sti       r0,*+fp(4)            ; |697| 
	.line	148
;----------------------------------------------------------------------
; 699 | if (n==ADC_Ain2)                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |699| 
        cmpi      6,r0                  ; |699| 
        bne       L134                  ; |699| 
;*      Branch Occurs to L134           ; |699| 
	.line	149
;----------------------------------------------------------------------
; 700 | ch = ADC_CH0;                                                          
;----------------------------------------------------------------------
        ldiu      64,r0                 ; |700| 
        sti       r0,*+fp(5)            ; |700| 
        bu        L138                  ; |551| 
;*      Branch Occurs to L138           ; |551| 
L134:        
	.line	150
;----------------------------------------------------------------------
; 701 | else if (n==ADC_Ain3)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |701| 
        cmpi      7,r0                  ; |701| 
        bne       L136                  ; |701| 
;*      Branch Occurs to L136           ; |701| 
	.line	151
;----------------------------------------------------------------------
; 702 | ch = ADC_CH1;                                                          
;----------------------------------------------------------------------
        ldiu      96,r0                 ; |702| 
        sti       r0,*+fp(5)            ; |702| 
        bu        L138                  ; |551| 
;*      Branch Occurs to L138           ; |551| 
L136:        
	.line	152
;----------------------------------------------------------------------
; 703 | else if (n==ADC_Ain4)                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |703| 
        cmpi      8,r0                  ; |703| 
        bne       L138                  ; |703| 
;*      Branch Occurs to L138           ; |703| 
	.line	153
;----------------------------------------------------------------------
; 704 | ch = ADC_CH2;                                                          
;----------------------------------------------------------------------
        ldiu      32,r0                 ; |704| 
        sti       r0,*+fp(5)            ; |704| 
L138:        
	.line	155
;----------------------------------------------------------------------
; 706 | if (START)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |706| 
        cmpi      0,r0                  ; |706| 
        beq       L141                  ; |706| 
;*      Branch Occurs to L141           ; |706| 
	.line	157
;----------------------------------------------------------------------
; 708 | p[0]     = 0x9C;        /* single conversion mode & start conversion */
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |708| 
        addi      6,ar0                 ; |708| 
        ldiu      156,r0                ; |708| 
        sti       r0,*ar0               ; |708| 
	.line	158
;----------------------------------------------------------------------
; 709 | p[0]    |= ch;                                                         
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |709| 
        addi      6,ar0                 ; |709| 
        ldiu      *+fp(5),r0            ; |709| 
        or3       r0,*ar0,r0            ; |709| 
        sti       r0,*ar0               ; |709| 
	.line	159
;----------------------------------------------------------------------
; 710 | r                = Write_ADC_DAC(addr, 1, (unsigned char*)p);   /* setu
;     | p cfg register */                                                      
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |710| 
        ldp       @CL63,DP
        ldiu      1,r2                  ; |710| 
        addi      6,r3                  ; |710| 
        ldiu      *+fp(4),ar2           ; |710| 
        ldiu      @CL63,r0              ; |710| 
        callu     r0                    ; far call to _Write_ADC_DAC	; |710| 
                                        ; |710| Far Call Occurs
        sti       r0,*+fp(9)            ; |710| 
	.line	161
;----------------------------------------------------------------------
; 712 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |712| 
        bne       L158                  ; |712| 
;*      Branch Occurs to L158           ; |712| 
	.line	163
;----------------------------------------------------------------------
; 714 | VAR_NaN(&REG_ADC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |714| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |714| 
        addi      @CL3,ar2              ; |714| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |714| 
        callu     r0                    ; far call to _VAR_NaN	; |714| 
                                        ; |714| Far Call Occurs
	.line	165
;----------------------------------------------------------------------
; 716 | AI[n-ADC_Ain1].present = FALSE;                                        
; 719 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(1),ir0           ; |716| 
        mpyi      318,ir0               ; |716| 
        ldiu      @CL2,ar0              ; |716| 
        subi      1590,ir0              ; |716| 
        ldiu      0,r0                  ; |716| 
        sti       r0,*+ar0(ir0)         ; |716| 
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L141:        
	.line	170
;----------------------------------------------------------------------
; 721 | r = Read_ADC_DAC(addr, 3, (unsigned char*)p);                          
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      fp,r3                 ; |721| 
        ldiu      *+fp(4),ar2           ; |721| 
        ldiu      3,r2                  ; |721| 
        ldiu      @CL64,r0              ; |721| 
        addi      6,r3                  ; |721| 
        callu     r0                    ; far call to _Read_ADC_DAC	; |721| 
                                        ; |721| Far Call Occurs
        sti       r0,*+fp(9)            ; |721| 
	.line	172
;----------------------------------------------------------------------
; 723 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |723| 
        bne       L143                  ; |723| 
;*      Branch Occurs to L143           ; |723| 
	.line	174
;----------------------------------------------------------------------
; 725 | VAR_NaN(&REG_ADC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |725| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |725| 
        addi      @CL3,ar2              ; |725| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |725| 
        callu     r0                    ; far call to _VAR_NaN	; |725| 
                                        ; |725| Far Call Occurs
	.line	176
;----------------------------------------------------------------------
; 727 | AI[n-ADC_Ain1].present = FALSE;                                        
; 729 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(1),ir0           ; |727| 
        mpyi      318,ir0               ; |727| 
        ldiu      @CL2,ar0              ; |727| 
        subi      1590,ir0              ; |727| 
        ldiu      0,r0                  ; |727| 
        sti       r0,*+ar0(ir0)         ; |727| 
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L143:        
	.line	180
;----------------------------------------------------------------------
; 731 | AI[n-ADC_Ain1].present = TRUE;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |731| 
        ldp       @CL2,DP
        mpyi      318,ir0               ; |731| 
        ldiu      @CL2,ar0              ; |731| 
        subi      1590,ir0              ; |731| 
        ldiu      1,r0                  ; |731| 
        sti       r0,*+ar0(ir0)         ; |731| 
	.line	182
;----------------------------------------------------------------------
; 733 | if ((p[2]&ch)==ch)                                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |733| 
        addi      8,ar0                 ; |733| 
        ldiu      *+fp(5),r0            ; |733| 
        and3      r0,*ar0,r0            ; |733| 
        cmpi      *+fp(5),r0            ; |733| 
        bne       L158                  ; |733| 
;*      Branch Occurs to L158           ; |733| 
	.line	184
;----------------------------------------------------------------------
; 735 | ADC_INT[n] = (((p[0]<<8) & 0xFF00) | (p[1] & 0x00FF));                 
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |735| 
        ldiu      fp,ar1                ; |735| 
        ldp       @CL5,DP
        ldiu      8,r0                  ; |735| 
        ldiu      255,r1                ; |735| 
        ldiu      *+fp(1),ir0           ; |735| 
        addi      6,ar0                 ; |735| 
        addi      7,ar1                 ; |735| 
        ldiu      @CL5,ar2              ; |735| 
        ash3      r0,*ar0,r0            ; |735| 
        and3      r1,*ar1,r1            ; |735| 
        and       65280,r0              ; |735| 
        or3       r0,r1,r0              ; |735| 
        sti       r0,*+ar2(ir0)         ; |735| 
	.line	186
;----------------------------------------------------------------------
; 737 | if (ADC_INT[n] & 0x8000)                                               
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |737| 
        ldiu      *+fp(1),ir0           ; |737| 
        ldiu      *+ar0(ir0),r0         ; |737| 
        tstb      32768,r0              ; |737| 
        beq       L146                  ; |737| 
;*      Branch Occurs to L146           ; |737| 
	.line	187
;----------------------------------------------------------------------
; 738 | ADC_INT[n] |= 0xFFFF0000;                                              
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ir0              ; |738| 
        ldp       @CL65,DP
        ldiu      *+fp(1),ar0           ; |738| 
        ldiu      @CL65,r0              ; |738| 
        or3       r0,*+ar0(ir0),r0      ; |738| 
        sti       r0,*+ar0(ir0)         ; |738| 
L146:        
	.line	189
;----------------------------------------------------------------------
; 740 | f = (float)ADC_INT[n] * ADC_TRIM_F_1[n] / ADC_TRIM_I_1[n];             
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      *+fp(1),ir1           ; |740| 
        ldiu      @CL5,ar0              ; |740| 
        ldp       @CL56,DP
        ldiu      ir1,ir0               ; |740| 
        ldiu      @CL56,ar2             ; |740| 
        ldp       @CL57,DP
        float     *+ar0(ir1),f1         ; |740| 
        ldiu      @CL57,ar1             ; |740| 
        mpyf3     *+ar2(ir0),f1,f2      ; |740| 
        ldfu      f2,f0                 ; |740| 
        float     *+ar1(ir0),f1         ; |740| 
        call      DIV_F30               ; |740| 
                                        ; |740| Call Occurs
        stf       f0,*+fp(3)            ; |740| 
	.line	191
;----------------------------------------------------------------------
; 742 | VAR_Update(&REG_ADC[n], f, 0, 0);                                      
;----------------------------------------------------------------------
        ldiu      255,r3                ; |742| 
        ldiu      *+fp(1),ar2           ; |742| 
        mpyi      44,ar2                ; |742| 
        ldp       @CL3,DP
        ldfu      f0,f2                 ; |742| Move F32 into F40 for CONV
        andn      r3,f2                 ; |742| Bit mask for F32/F40 conversion
        addi      @CL3,ar2              ; |742| Unsigned
        ldp       @CL41,DP
        ldiu      0,rc                  ; |742| 
        ldiu      @CL41,r1              ; |742| 
        ldiu      0,r3                  ; |742| 
        callu     r1                    ; far call to _VAR_Update	; |742| 
                                        ; |742| Far Call Occurs
	.line	196
;----------------------------------------------------------------------
; 747 | break;                                                                 
; 749 | case ADC_Ain5:                                                         
;----------------------------------------------------------------------
        bu        L158                  ; |747| 
;*      Branch Occurs to L158           ; |747| 
L147:        
	.line	201
;----------------------------------------------------------------------
; 752 | addr = ADC_ADDRIO2;                                                    
;----------------------------------------------------------------------
        ldiu      156,r0                ; |752| 
        sti       r0,*+fp(4)            ; |752| 
	.line	203
;----------------------------------------------------------------------
; 754 | if (START)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |754| 
        cmpi      0,r0                  ; |754| 
        beq       L150                  ; |754| 
;*      Branch Occurs to L150           ; |754| 
	.line	205
;----------------------------------------------------------------------
; 756 | p[0]    = 0x8C; /* continuous conversion mode & start conversion */    
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |756| 
        addi      6,ar0                 ; |756| 
        ldiu      140,r0                ; |756| 
        sti       r0,*ar0               ; |756| 
	.line	206
;----------------------------------------------------------------------
; 757 | r               = Write_ADC_DAC(addr, 1, (unsigned char*)p);    /* setu
;     | p cfg register */                                                      
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |757| 
        ldp       @CL63,DP
        ldiu      1,r2                  ; |757| 
        addi      6,r3                  ; |757| 
        ldiu      *+fp(4),ar2           ; |757| 
        ldiu      @CL63,r0              ; |757| 
        callu     r0                    ; far call to _Write_ADC_DAC	; |757| 
                                        ; |757| Far Call Occurs
        sti       r0,*+fp(9)            ; |757| 
	.line	208
;----------------------------------------------------------------------
; 759 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |759| 
        bne       L158                  ; |759| 
;*      Branch Occurs to L158           ; |759| 
	.line	210
;----------------------------------------------------------------------
; 761 | VAR_NaN(&REG_ADC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |761| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |761| 
        addi      @CL3,ar2              ; |761| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |761| 
        callu     r0                    ; far call to _VAR_NaN	; |761| 
                                        ; |761| Far Call Occurs
	.line	212
;----------------------------------------------------------------------
; 763 | AI[n-ADC_Ain1].present = FALSE;                                        
; 766 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(1),ir0           ; |763| 
        mpyi      318,ir0               ; |763| 
        ldiu      @CL2,ar0              ; |763| 
        subi      1590,ir0              ; |763| 
        ldiu      0,r0                  ; |763| 
        sti       r0,*+ar0(ir0)         ; |763| 
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L150:        
	.line	217
;----------------------------------------------------------------------
; 768 | r = Read_ADC_DAC(addr, 2, (unsigned char*)p);                          
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      fp,r3                 ; |768| 
        ldiu      *+fp(4),ar2           ; |768| 
        ldiu      2,r2                  ; |768| 
        ldiu      @CL64,r0              ; |768| 
        addi      6,r3                  ; |768| 
        callu     r0                    ; far call to _Read_ADC_DAC	; |768| 
                                        ; |768| Far Call Occurs
        sti       r0,*+fp(9)            ; |768| 
	.line	219
;----------------------------------------------------------------------
; 770 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |770| 
        bne       L152                  ; |770| 
;*      Branch Occurs to L152           ; |770| 
	.line	221
;----------------------------------------------------------------------
; 772 | VAR_NaN(&REG_ADC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |772| 
        ldp       @CL3,DP
        mpyi      44,ar2                ; |772| 
        addi      @CL3,ar2              ; |772| Unsigned
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |772| 
        callu     r0                    ; far call to _VAR_NaN	; |772| 
                                        ; |772| Far Call Occurs
	.line	223
;----------------------------------------------------------------------
; 774 | AI[n-ADC_Ain1].present = FALSE;                                        
; 776 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(1),ir0           ; |774| 
        mpyi      318,ir0               ; |774| 
        ldiu      @CL2,ar0              ; |774| 
        subi      1590,ir0              ; |774| 
        ldiu      0,r0                  ; |774| 
        sti       r0,*+ar0(ir0)         ; |774| 
        bu        L158                  ; |551| 
;*      Branch Occurs to L158           ; |551| 
L152:        
	.line	227
;----------------------------------------------------------------------
; 778 | AI[n-ADC_Ain1].present  = TRUE;                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |778| 
        ldp       @CL2,DP
        mpyi      318,ir0               ; |778| 
        ldiu      @CL2,ar0              ; |778| 
        subi      1590,ir0              ; |778| 
        ldiu      1,r0                  ; |778| 
        sti       r0,*+ar0(ir0)         ; |778| 
	.line	228
;----------------------------------------------------------------------
; 779 | ADC_INT[n]                              = (((p[0]<<8) & 0xFF00) | (p[1]
;     |  & 0x00FF));                                                           
;----------------------------------------------------------------------
        ldiu      fp,ar1                ; |779| 
        ldiu      255,r1                ; |779| 
        addi      6,ar1                 ; |779| 
        ldp       @CL5,DP
        ldiu      fp,ar0                ; |779| 
        addi      7,ar0                 ; |779| 
        ldiu      @CL5,ar2              ; |779| 
        ldiu      8,r0                  ; |779| 
        and3      r1,*ar0,r1            ; |779| 
        ash3      r0,*ar1,r0            ; |779| 
        ldiu      *+fp(1),ir0           ; |779| 
        and       65280,r0              ; |779| 
        or3       r0,r1,r0              ; |779| 
        sti       r0,*+ar2(ir0)         ; |779| 
	.line	230
;----------------------------------------------------------------------
; 781 | if (ADC_INT[n]&0x8000)                                                 
;----------------------------------------------------------------------
        ldiu      @CL5,ar0              ; |781| 
        ldiu      *+fp(1),ir0           ; |781| 
        ldiu      *+ar0(ir0),r0         ; |781| 
        tstb      32768,r0              ; |781| 
        beq       L154                  ; |781| 
;*      Branch Occurs to L154           ; |781| 
	.line	231
;----------------------------------------------------------------------
; 782 | ADC_INT[n] |= 0xFFFF0000;                                              
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ir0              ; |782| 
        ldp       @CL65,DP
        ldiu      *+fp(1),ar0           ; |782| 
        ldiu      @CL65,r0              ; |782| 
        or3       r0,*+ar0(ir0),r0      ; |782| 
        sti       r0,*+ar0(ir0)         ; |782| 
L154:        
	.line	233
;----------------------------------------------------------------------
; 784 | f = (float)ADC_INT[n]*ADC_TRIM_F_1[n]/ADC_TRIM_I_1[n];                 
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      *+fp(1),ir1           ; |784| 
        ldiu      @CL5,ar1              ; |784| 
        ldp       @CL56,DP
        ldiu      ir1,ir0               ; |784| 
        ldiu      @CL56,ar2             ; |784| 
        ldp       @CL57,DP
        float     *+ar1(ir1),f1         ; |784| 
        ldiu      @CL57,ar0             ; |784| 
        mpyf3     *+ar2(ir0),f1,f2      ; |784| 
        ldfu      f2,f0                 ; |784| 
        float     *+ar0(ir0),f1         ; |784| 
        call      DIV_F30               ; |784| 
                                        ; |784| Call Occurs
        stf       f0,*+fp(3)            ; |784| 
	.line	235
;----------------------------------------------------------------------
; 786 | VAR_Update(&REG_ADC[n], f, 0, 0);                                      
;----------------------------------------------------------------------
        ldiu      255,r3                ; |786| 
        ldiu      0,rc                  ; |786| 
        ldp       @CL3,DP
        ldiu      *+fp(1),ar2           ; |786| 
        mpyi      44,ar2                ; |786| 
        addi      @CL3,ar2              ; |786| Unsigned
        ldfu      f0,f1                 ; |786| 
        ldp       @CL41,DP
        ldfu      f1,f2                 ; |786| Move F32 into F40 for CONV
        ldiu      @CL41,r0              ; |786| 
        andn      r3,f2                 ; |786| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |786| 
        callu     r0                    ; far call to _VAR_Update	; |786| 
                                        ; |786| Far Call Occurs
	.line	238
;----------------------------------------------------------------------
; 789 | break;                                                                 
; 791 | default:                                                               
;----------------------------------------------------------------------
        bu        L158                  ; |789| 
;*      Branch Occurs to L158           ; |789| 
	.line	242
;----------------------------------------------------------------------
; 793 | break;                                                                 
;----------------------------------------------------------------------
L156:        
	.line	9
        ldiu      *+fp(1),ir0           ; |560| 
        cmpi      10,ir0                ; |560| 
        bhi       L158                  ; |560| 
;*      Branch Occurs to L158           ; |560| 
        ldp       @CL66,DP
        ldiu      @CL66,ar0             ; |560| 
        ldiu      *+ar0(ir0),r0         ; |560| 
        bu        r0                    ; |560| 

	.sect	".text"
SW1:	.word	L96	; 0
	.word	L96	; 1
	.word	L96	; 2
	.word	L113	; 3
	.word	L113	; 4
	.word	L113	; 5
	.word	L132	; 6
	.word	L132	; 7
	.word	L132	; 8
	.word	L147	; 9
	.word	L93	; 10
	.sect	".text"
;*      Branch Occurs to r0             ; |560| 
L158:        
	.line	245
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar6
        pop       ar5
        pop       ar4
                                        ; Unallocate the Frame
        subi      11,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	796,000007000h,9


	.sect	 ".text"

	.global	_ADC_UPDATE
	.sym	_ADC_UPDATE,_ADC_UPDATE,32,2,0
	.func	811
;******************************************************************************
;* FUNCTION NAME: _ADC_UPDATE                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,f3,r3,f4,r5,ar0,ar1,ar2,fp,ar4,   *
;*                        ar5,ir0,ir1,st,rs,re,rc                             *
;*   Regs Saved         : r4,r5,ar4,ar5                                       *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 10 Auto + 4 SOE = 16 words        *
;******************************************************************************
_ADC_UPDATE:
	.sym	_i,1,4,1,32
	.sym	_ui,2,14,1,32
	.sym	_t,3,6,1,32
	.sym	_mina,4,6,1,32
	.sym	_maxa,5,6,1,32
	.sym	_minc,6,6,1,32
	.sym	_maxc,7,6,1,32
	.sym	_m,8,6,1,32
	.sym	_current,9,6,1,32
	.sym	_v,10,24,1,32,.fake6
	.line	1
;----------------------------------------------------------------------
; 811 | void ADC_UPDATE(void)                                                  
; 813 | int i;                                                                 
; 814 | unsigned int ui;                                                       
; 815 | float t;                                                               
; 816 | float mina, maxa;                                                      
; 817 | float minc, maxc;                                                      
; 818 | float m;                                                               
; 819 | float current;                                                         
; 820 | VAR* v;                                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      10,sp
        push      r4
        push      r5
        push      ar4
        push      ar5
	.line	12
;----------------------------------------------------------------------
; 822 | if (SA && (HW_VER<0xB7))                                               
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |822| 
        ldiu      *ar0,r0               ; |822| 
        cmpi      0,r0                  ; |822| 
        beq       L163                  ; |822| 
;*      Branch Occurs to L163           ; |822| 
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |822| 
        ldiu      *ar0,r0               ; |822| 
        cmpi      183,r0                ; |822| 
        blo       L195                  ; |822| 
;*      Branch Occurs to L195           ; |822| 
	.line	13
;----------------------------------------------------------------------
; 823 | return;                                                                
;----------------------------------------------------------------------
L163:        
	.line	15
;----------------------------------------------------------------------
; 825 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	17
;----------------------------------------------------------------------
; 827 | Read_ADCn(ADC_Tint, 0);         /* read last conversion */             
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      10,ar2                ; |827| 
        ldiu      0,r2                  ; |827| 
        ldiu      @CL16,r0              ; |827| 
        callu     r0                    ; far call to _Read_ADCn	; |827| 
                                        ; |827| Far Call Occurs
	.line	19
;----------------------------------------------------------------------
; 829 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |829| 
        ldiu      *ar0,r0               ; |829| 
        cmpi      0,r0                  ; |829| 
        beq       L165                  ; |829| 
;*      Branch Occurs to L165           ; |829| 
	.line	21
;----------------------------------------------------------------------
; 831 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	22
;----------------------------------------------------------------------
; 832 | return;                                                                
;----------------------------------------------------------------------
        bu        L195                  ; |832| 
;*      Branch Occurs to L195           ; |832| 
L165:        
	.line	25
;----------------------------------------------------------------------
; 835 | Read_ADCn(ADC_Ain5, 0);         /* read last conversion */             
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      9,ar2                 ; |835| 
        ldiu      0,r2                  ; |835| 
        ldiu      @CL16,r0              ; |835| 
        callu     r0                    ; far call to _Read_ADCn	; |835| 
                                        ; |835| Far Call Occurs
	.line	27
;----------------------------------------------------------------------
; 837 | for (i=0;i<3;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |837| 
        sti       r0,*+fp(1)            ; |837| 
        cmpi      3,r0                  ; |837| 
        bge       L179                  ; |837| 
;*      Branch Occurs to L179           ; |837| 
L166:        
	.line	29
;----------------------------------------------------------------------
; 839 | Read_ADCn(ADC_ACTIVE[i], 0);            /* read last conversion */     
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |839| 
        ldiu      @CL17,ar0             ; |839| 
        ldp       @CL16,DP
        ldiu      *+ar0(ir0),ar2        ; |839| 
        ldiu      @CL16,r0              ; |839| 
        ldiu      0,r2                  ; |839| 
        callu     r0                    ; far call to _Read_ADCn	; |839| 
                                        ; |839| Far Call Occurs
	.line	31
;----------------------------------------------------------------------
; 841 | READ_ADC_INPUTS++;                                                     
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |841| 
        ldiu      1,r0                  ; |841| 
        addi3     r0,*ar0,r0            ; |841| 
        sti       r0,*ar0               ; |841| 
	.line	33
;----------------------------------------------------------------------
; 843 | ADC_ACTIVE[i]++;                                        /* select next
;     | ADC */                                                                 
; 845 | switch (i)                                                             
; 847 |         case 2:                                                        
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ir0             ; |843| 
        ldiu      *+fp(1),ar0           ; |843| 
        ldiu      1,r0                  ; |843| 
        addi3     r0,*+ar0(ir0),r0      ; |843| Unsigned
        sti       r0,*+ar0(ir0)         ; |843| 
        bu        L174                  ; |810| 
;*      Branch Occurs to L174           ; |810| 
L167:        
	.line	39
;----------------------------------------------------------------------
; 849 | if (ADC_ACTIVE[i] > ADC_Ain4)                                          
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |849| 
        ldiu      @CL17,ar0             ; |849| 
        ldiu      *+ar0(ir0),r0         ; |849| 
        cmpi      8,r0                  ; |849| 
        bls       L178                  ; |849| 
;*      Branch Occurs to L178           ; |849| 
	.line	40
;----------------------------------------------------------------------
; 850 | ADC_ACTIVE[i] = ADC_Ain2;                                              
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |850| 
        ldiu      6,r0                  ; |850| 
        sti       r0,*+ar0(ir0)         ; |850| 
	.line	42
;----------------------------------------------------------------------
; 852 | break;                                                                 
; 854 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L178                  ; |852| 
;*      Branch Occurs to L178           ; |852| 
L169:        
	.line	46
;----------------------------------------------------------------------
; 856 | if (ADC_ACTIVE[i] > ADC_Ain1)                                          
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |856| 
        ldiu      @CL17,ar0             ; |856| 
        ldiu      *+ar0(ir0),r0         ; |856| 
        cmpi      5,r0                  ; |856| 
        bls       L178                  ; |856| 
;*      Branch Occurs to L178           ; |856| 
	.line	47
;----------------------------------------------------------------------
; 857 | ADC_ACTIVE[i] = ADC_VTUNE;                                             
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |857| 
        ldiu      3,r0                  ; |857| 
        sti       r0,*+ar0(ir0)         ; |857| 
	.line	49
;----------------------------------------------------------------------
; 859 | break;                                                                 
; 861 | case 0:                                                                
; 862 | default:                                                               
;----------------------------------------------------------------------
        bu        L178                  ; |859| 
;*      Branch Occurs to L178           ; |859| 
L171:        
	.line	54
;----------------------------------------------------------------------
; 864 | if (ADC_ACTIVE[i] > ADC_Text)                                          
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |864| 
        ldiu      @CL17,ar0             ; |864| 
        ldiu      *+ar0(ir0),r0         ; |864| 
        cmpi      2,r0                  ; |864| 
        bls       L178                  ; |864| 
;*      Branch Occurs to L178           ; |864| 
	.line	55
;----------------------------------------------------------------------
; 865 | ADC_ACTIVE[i] = ADC_Vref;                                              
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |865| 
        ldiu      0,r0                  ; |865| 
        sti       r0,*+ar0(ir0)         ; |865| 
	.line	57
;----------------------------------------------------------------------
; 867 | break;                                                                 
;----------------------------------------------------------------------
        bu        L178                  ; |867| 
;*      Branch Occurs to L178           ; |867| 
L174:        
	.line	35
        ldiu      *+fp(1),r0            ; |845| 
        cmpi      0,r0                  ; |845| 
        beq       L171                  ; |845| 
;*      Branch Occurs to L171           ; |845| 
        cmpi      1,r0                  ; |845| 
        beq       L169                  ; |845| 
;*      Branch Occurs to L169           ; |845| 
        cmpi      2,r0                  ; |845| 
        beq       L167                  ; |845| 
;*      Branch Occurs to L167           ; |845| 
        bu        L171                  ; |845| 
;*      Branch Occurs to L171           ; |845| 
L178:        
	.line	61
;----------------------------------------------------------------------
; 871 | Read_ADCn(ADC_ACTIVE[i], 1);    /* start next conversion */            
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |871| 
        ldiu      @CL17,ar0             ; |871| 
        ldp       @CL16,DP
        ldiu      *+ar0(ir0),ar2        ; |871| 
        ldiu      @CL16,r0              ; |871| 
        ldiu      1,r2                  ; |871| 
        callu     r0                    ; far call to _Read_ADCn	; |871| 
                                        ; |871| Far Call Occurs
	.line	27
        ldiu      1,r0                  ; |837| 
        addi      *+fp(1),r0            ; |837| 
        sti       r0,*+fp(1)            ; |837| 
        cmpi      3,r0                  ; |837| 
        blt       L166                  ; |837| 
;*      Branch Occurs to L166           ; |837| 
L179:        
	.line	64
;----------------------------------------------------------------------
; 874 | for (i=0;i<AI_NLOOPS;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |874| 
        sti       r0,*+fp(1)            ; |874| 
        cmpi      5,r0                  ; |874| 
        bge       L194                  ; |874| 
;*      Branch Occurs to L194           ; |874| 
L180:        
	.line	66
;----------------------------------------------------------------------
; 876 | if (!AI[i].present)                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |876| 
        ldp       @CL2,DP
        mpyi      318,ir0               ; |876| 
        ldiu      @CL2,ar0              ; |876| 
        ldiu      *+ar0(ir0),r0         ; |876| 
        cmpi      0,r0                  ; |876| 
        beq       L193                  ; |876| 
;*      Branch Occurs to L193           ; |876| 
	.line	67
;----------------------------------------------------------------------
; 877 | continue;                                                              
;----------------------------------------------------------------------
	.line	69
;----------------------------------------------------------------------
; 879 | minc    = VAR_Get_Unit_Param(&AI[i].CURRENT, reg_direct_bmin, 0, 0);   
;----------------------------------------------------------------------
        ldp       @CL69,DP
        ldiu      *+fp(1),ar2           ; |879| 
        ldiu      @CL69,r0              ; |879| 
        ldp       @CL67,DP
        mpyi      318,ar2               ; |879| 
        addi      @CL67,ar2             ; |879| Unsigned
        ldp       @CL68,DP
        ldiu      0,rc                  ; |879| 
        ldiu      @CL68,r2              ; |879| 
        ldiu      0,r3                  ; |879| 
        callu     r0                    ; far call to _VAR_Get_Unit_Param	; |879| 
                                        ; |879| Far Call Occurs
        stf       f0,*+fp(6)            ; |879| 
	.line	70
;----------------------------------------------------------------------
; 880 | maxc    = VAR_Get_Unit_Param(&AI[i].CURRENT, reg_direct_bmax, 0, 0);   
;----------------------------------------------------------------------
        ldp       @CL69,DP
        ldiu      *+fp(1),ar2           ; |880| 
        ldiu      @CL69,r0              ; |880| 
        ldp       @CL67,DP
        mpyi      318,ar2               ; |880| 
        addi      @CL67,ar2             ; |880| Unsigned
        ldp       @CL70,DP
        ldiu      0,rc                  ; |880| 
        ldiu      @CL70,r2              ; |880| 
        ldiu      0,r3                  ; |880| 
        callu     r0                    ; far call to _VAR_Get_Unit_Param	; |880| 
                                        ; |880| Far Call Occurs
        stf       f0,*+fp(7)            ; |880| 
	.line	71
;----------------------------------------------------------------------
; 881 | t               = REG_ADC[i+ADC_Ain1].val * 10.0;                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |881| 
        mpyi      44,ir0                ; |881| 
        ldp       @CL3,DP
        addi      220,ir0               ; |881| 
        ldiu      @CL3,ar0              ; |881| 
        ldfu      1.0000000000e+01,f0   ; |881| 
        mpyf3     *+ar0(ir0),f0,f0      ; |881| 
        stf       f0,*+fp(3)            ; |881| 
	.line	72
;----------------------------------------------------------------------
; 882 | m               = (maxc-minc)/(AI[i].TRIM_MAX_C-AI[i].TRIM_MIN_C);     
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar0             ; |882| 
        ldp       @CL71,DP
        ldiu      @CL71,ar1             ; |882| 
        ldiu      *+fp(1),ir0           ; |882| 
        ldiu      ir0,ir1               ; |882| 
        ldfu      *+fp(6),f0            ; |882| 
        mpyi      318,ir1               ; |882| 
        mpyi      318,ir0               ; |882| 
        subrf     *+fp(7),f0            ; |882| 
        subf3     *+ar0(ir0),*+ar1(ir1),f1 ; |882| 
        call      DIV_F30               ; |882| 
                                        ; |882| Call Occurs
        stf       f0,*+fp(8)            ; |882| 
	.line	73
;----------------------------------------------------------------------
; 883 | current = m * (t-AI[i].TRIM_MIN_C) + minc;                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |883| 
        ldp       @CL72,DP
        mpyi      318,ir0               ; |883| 
        ldiu      @CL72,ar0             ; |883| 
        ldfu      *+ar0(ir0),f0         ; |883| 
        subrf     *+fp(3),f0            ; |883| 
        mpyf      *+fp(8),f0            ; |883| 
        addf      *+fp(6),f0            ; |883| 
        stf       f0,*+fp(9)            ; |883| 
	.line	75
;----------------------------------------------------------------------
; 885 | VAR_Update(&AI[i].CURRENT, current, 0, 0);                             
;----------------------------------------------------------------------
        ldiu      255,r1                ; |885| 
        ldp       @CL41,DP
        ldfu      f0,f2                 ; |885| Move F32 into F40 for CONV
        andn      r1,f2                 ; |885| Bit mask for F32/F40 conversion
        ldiu      @CL41,r0              ; |885| 
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |885| 
        ldiu      0,rc                  ; |885| 
        mpyi      318,ar2               ; |885| 
        addi      @CL67,ar2             ; |885| Unsigned
        ldiu      0,r3                  ; |885| 
        callu     r0                    ; far call to _VAR_Update	; |885| 
                                        ; |885| Far Call Occurs
	.line	77
;----------------------------------------------------------------------
; 887 | t = (AI[i].CURRENT.val-minc)/(maxc-minc);                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |887| 
        mpyi      318,ir0               ; |887| 
        ldp       @CL67,DP
        ldfu      *+fp(6),f0            ; |887| 
        ldiu      @CL67,ar0             ; |887| 
        ldfu      f0,f1                 ; |887| 
        subf3     f0,*+ar0(ir0),f0      ; |887| 
        subrf     *+fp(7),f1            ; |887| 
        call      DIV_F30               ; |887| 
                                        ; |887| Call Occurs
        stf       f0,*+fp(3)            ; |887| 
	.line	79
;----------------------------------------------------------------------
; 889 | VAR_Update(&AI[i].CURRENT_PERCENT_OF_RANGE, t*100.0, 0, 1);            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |889| 
        ldp       @CL73,DP
        mpyi      318,ar2               ; |889| 
        addi      @CL73,ar2             ; |889| Unsigned
        ldp       @CL41,DP
        ldfu      1.0000000000e+02,f0   ; |889| 
        ldiu      @CL41,r1              ; |889| 
        mpyf      *+fp(3),f0            ; |889| 
        ldiu      255,r3                ; |889| 
        ldfu      f0,f2                 ; |889| Move F32 into F40 for CONV
        andn      r3,f2                 ; |889| Bit mask for F32/F40 conversion
        ldiu      1,rc                  ; |889| 
        ldiu      0,r3                  ; |889| 
        callu     r1                    ; far call to _VAR_Update	; |889| 
                                        ; |889| Far Call Occurs
	.line	81
;----------------------------------------------------------------------
; 891 | v = HART_Lookup(AI[i].v.val, &ui, (int*)&HART_DVINPUT_Table);          
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      *+fp(1),ir0           ; |891| 
        ldiu      @CL74,ar0             ; |891| 
        mpyi      318,ir0               ; |891| 
        ldiu      fp,r2                 ; |891| 
        ldp       @CL76,DP
        ldiu      *+ar0(ir0),ar2        ; |891| 
        ldiu      @CL76,r0              ; |891| 
        ldp       @CL75,DP
        ldiu      @CL75,r3              ; |891| 
        addi      2,r2                  ; |891| 
        callu     r0                    ; far call to _HART_Lookup	; |891| 
                                        ; |891| Far Call Occurs
        sti       r0,*+fp(10)           ; |891| 
	.line	83
;----------------------------------------------------------------------
; 893 | if ((v!=(VAR*)0) && (v!=&REG_DUMMY))                                   
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |893| 
        beq       L193                  ; |893| 
;*      Branch Occurs to L193           ; |893| 
        ldp       @CL77,DP
        cmpi      @CL77,r0              ; |893| 
        beq       L193                  ; |893| 
;*      Branch Occurs to L193           ; |893| 
	.line	85
;----------------------------------------------------------------------
; 895 | if (AI[i].CURRENT.STAT & var_NaNum)                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |895| 
        ldp       @CL78,DP
        mpyi      318,ir0               ; |895| 
        ldiu      @CL78,ar0             ; |895| 
        ldiu      8,r0                  ; |895| 
        tstb3     *+ar0(ir0),r0         ; |895| 
        beq       L185                  ; |895| 
;*      Branch Occurs to L185           ; |895| 
	.line	86
;----------------------------------------------------------------------
; 896 | VAR_NaN(v);                                                            
; 897 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      *+fp(10),ar2          ; |896| 
        ldiu      @CL4,r0               ; |896| 
        callu     r0                    ; far call to _VAR_NaN	; |896| 
                                        ; |896| Far Call Occurs
        bu        L193                  ; |810| 
;*      Branch Occurs to L193           ; |810| 
L185:        
	.line	89
;----------------------------------------------------------------------
; 899 | mina            = Convert(AI[i].class.val, AI[i].LRV.unit, AI[i].unit.v
;     | al, AI[i].LRV.val, 0, AI[i].LRV.aux);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |899| 
        ldiu      ir0,r0                ; |899| 
        ldiu      r0,ir1                ; |899| 
        ldiu      r0,r2                 ; |899| 
        ldp       @CL82,DP
        mpyi      318,ir0               ; |899| 
        ldiu      r0,r1                 ; |899| 
        ldiu      @CL82,ar2             ; |899| 
        ldp       @CL81,DP
        ldiu      @CL81,ar1             ; |899| 
        ldp       @CL83,DP
        ldiu      @CL83,ar4             ; |899| 
        mpyi      318,r2                ; |899| 
        ldp       @CL79,DP
        ldiu      @CL79,ar5             ; |899| 
        ldiu      255,rs                ; |899| 
        ldp       @CL80,DP
        mpyi      318,ir1               ; |899| 
        ldiu      @CL80,ar0             ; |899| 
        mpyi      318,r0                ; |899| 
        ldfu      *+ar2(ir0),f3         ; |899| 
        mpyi      318,r1                ; |899| 
        ldiu      *+ar4(ir1),r5         ; |899| 
        ldiu      r0,ir1                ; |899| 
        ldiu      r2,ir0                ; |899| 

        ldiu      *+ar5(ir1),r0         ; |899| 
||      ldiu      *+ar1(ir0),r2         ; |899| 

        ldiu      r0,ar2                ; |899| 
        ldiu      r1,ir0                ; |899| 
        ldfu      f3,f4                 ; |899| Move F32 into F40 for CONV
        ldiu      *+ar0(ir0),r3         ; |899| 
        ldiu      r2,rc                 ; |899| 
        ldp       @CL84,DP
        andn      rs,f4                 ; |899| Bit mask for F32/F40 conversion
        ldiu      @CL84,r1              ; |899| 
        ldiu      r5,re                 ; |899| 
        ldiu      0,rs                  ; |899| 
        ldfu      f4,f2                 ; |899| High precision move
        callu     r1                    ; far call to _Convert	; |899| 
                                        ; |899| Far Call Occurs
        rnd       f0,f0                 ; |899| Demote to low precision
        stf       f0,*+fp(4)            ; |899| 
	.line	90
;----------------------------------------------------------------------
; 900 | maxa            = Convert(AI[i].class.val, AI[i].URV.unit, AI[i].unit.v
;     | al, AI[i].URV.val, 0, AI[i].URV.aux);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |900| 
        ldiu      ir0,ir1               ; |900| 
        ldiu      ir0,r0                ; |900| 
        ldiu      r0,r2                 ; |900| 
        ldp       @CL86,DP
        ldiu      r0,r1                 ; |900| 
        ldiu      @CL86,ar4             ; |900| 
        ldp       @CL81,DP
        ldiu      @CL81,ar2             ; |900| 
        ldp       @CL87,DP
        ldiu      @CL87,ar5             ; |900| 
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |900| 
        ldp       @CL85,DP
        ldiu      @CL85,ar1             ; |900| 
        mpyi      318,ir1               ; |900| 
        mpyi      318,ir0               ; |900| 
        mpyi      318,r2                ; |900| 
        ldiu      255,rs                ; |900| 
        mpyi      318,r0                ; |900| 
        mpyi      318,r1                ; |900| 
        ldfu      *+ar4(ir0),f3         ; |900| 
        ldiu      r2,ir0                ; |900| 
        ldiu      *+ar5(ir0),r5         ; |900| 
        ldiu      r1,ir0                ; |900| 
        ldfu      f3,f4                 ; |900| Move F32 into F40 for CONV
        ldp       @CL84,DP
        ldiu      r5,re                 ; |900| 
        ldiu      @CL84,r1              ; |900| 
        ldiu      *+ar2(ir1),r2         ; |900| 
        andn      rs,f4                 ; |900| Bit mask for F32/F40 conversion
        ldiu      r0,ir1                ; |900| 
        ldiu      0,rs                  ; |900| 

        ldiu      *+ar1(ir0),r3         ; |900| 
||      ldiu      *+ar0(ir1),r0         ; |900| 

        ldiu      r2,rc                 ; |900| 
        ldiu      r0,ar2                ; |900| 
        ldfu      f4,f2                 ; |900| High precision move
        callu     r1                    ; far call to _Convert	; |900| 
                                        ; |900| Far Call Occurs
        rnd       f0,f0                 ; |900| Demote to low precision
        stf       f0,*+fp(5)            ; |900| 
	.line	91
;----------------------------------------------------------------------
; 901 | m                       = (maxa-mina)/(maxc-minc);                     
;----------------------------------------------------------------------
        ldfu      *+fp(4),f0            ; |901| 
        subrf     *+fp(5),f0            ; |901| 
        ldfu      *+fp(6),f1            ; |901| 
        subrf     *+fp(7),f1            ; |901| 
        call      DIV_F30               ; |901| 
                                        ; |901| Call Occurs
        stf       f0,*+fp(8)            ; |901| 
	.line	92
;----------------------------------------------------------------------
; 902 | t                       = m * (AI[i].CURRENT.val-minc) + mina;         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |902| 
        ldp       @CL67,DP
        mpyi      318,ir0               ; |902| 
        ldiu      @CL67,ar0             ; |902| 
        ldfu      *+fp(6),f0            ; |902| 
        subf3     f0,*+ar0(ir0),f0      ; |902| 
        mpyf      *+fp(8),f0            ; |902| 
        addf      *+fp(4),f0            ; |902| 
        stf       f0,*+fp(3)            ; |902| 
	.line	93
;----------------------------------------------------------------------
; 903 | AI[i].val       = t;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |903| 
        ldp       @CL88,DP
        mpyi      318,ir0               ; |903| 
        ldiu      @CL88,ar0             ; |903| 
        stf       f0,*+ar0(ir0)         ; |903| 
	.line	95
;----------------------------------------------------------------------
; 905 | VAR_Update(&AI[i].VALUE, t, 0, 0);                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |905| 
        ldp       @CL89,DP
        mpyi      318,ar2               ; |905| 
        addi      @CL89,ar2             ; |905| Unsigned
        ldp       @CL41,DP
        ldiu      0,rc                  ; |905| 
        ldiu      255,r3                ; |905| 
        ldfu      *+fp(3),f0            ; |905| 
        ldfu      f0,f2                 ; |905| Move F32 into F40 for CONV
        ldiu      @CL41,r1              ; |905| 
        andn      r3,f2                 ; |905| Bit mask for F32/F40 conversion
        ldiu      0,r3                  ; |905| 
        callu     r1                    ; far call to _VAR_Update	; |905| 
                                        ; |905| Far Call Occurs
	.line	97
;----------------------------------------------------------------------
; 907 | t = Convert(v->class, AI[i].unit.val, v->unit, t, 0, v->aux);          
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldfu      *+fp(3),f0            ; |907| 
        ldiu      @CL81,ar4             ; |907| 
        ldiu      *+fp(10),ar1          ; |907| 
        ldp       @CL84,DP
        ldiu      255,r1                ; |907| 
        ldfu      f0,f2                 ; |907| Move F32 into F40 for CONV
        ldiu      ar1,ar0               ; |907| 
        andn      r1,f2                 ; |907| Bit mask for F32/F40 conversion
        ldiu      @CL84,r0              ; |907| 
        ldiu      *+fp(1),ir0           ; |907| 
        ldiu      ar0,ar2               ; |907| 
        ldiu      *+ar0(6),re           ; |907| 
        mpyi      318,ir0               ; |907| 
        ldiu      *+ar1(13),rc          ; |907| 
        ldiu      *+ar2(15),ar2         ; |907| 
        ldiu      *+ar4(ir0),r3         ; |907| 
        ldiu      0,rs                  ; |907| 
        callu     r0                    ; far call to _Convert	; |907| 
                                        ; |907| Far Call Occurs
        rnd       f0,f0                 ; |907| Demote to low precision
        stf       f0,*+fp(3)            ; |907| 
	.line	99
;----------------------------------------------------------------------
; 909 | if ( v == &REG_STREAM_SELECT )                                         
; 910 | {// don't update stream if nothing changed (capture bug fix)           
;----------------------------------------------------------------------
        ldp       @CL90,DP
        ldiu      *+fp(10),r0           ; |909| 
        cmpi      @CL90,r0              ; |909| 
        bne       L192                  ; |909| 
;*      Branch Occurs to L192           ; |909| 
	.line	101
;----------------------------------------------------------------------
; 911 | if (t < 1.0)                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(3),f0            ; |911| 
        cmpf      1.0000000000e+00,f0   ; |911| 
        bge       L188                  ; |911| 
;*      Branch Occurs to L188           ; |911| 
	.line	102
;----------------------------------------------------------------------
; 912 | t = 1.0;                                                               
;----------------------------------------------------------------------
        ldfu      1.0000000000e+00,f0   ; |912| 
        stf       f0,*+fp(3)            ; |912| 
L188:        
	.line	103
;----------------------------------------------------------------------
; 913 | if (t > (SMAX))                                                        
;----------------------------------------------------------------------
        ldfu      *+fp(3),f0            ; |913| 
        cmpf      6.0000000000e+01,f0   ; |913| 
        ble       L190                  ; |913| 
;*      Branch Occurs to L190           ; |913| 
	.line	104
;----------------------------------------------------------------------
; 914 | t = (SMAX);                                                            
; 915 | //if ( (int)floor(t) == (int)REG_STREAM_SELECT.val )                   
;----------------------------------------------------------------------
        ldfu      6.0000000000e+01,f0   ; |914| 
        stf       f0,*+fp(3)            ; |914| 
L190:        
	.line	106
;----------------------------------------------------------------------
; 916 | if ( (int)round(t,0) == (int)REG_STREAM_SELECT.val ) // capture stream
;     | bug                                                                    
;----------------------------------------------------------------------
        ldp       @CL91,DP
        ldfu      *+fp(3),f2            ; |916| 
        ldiu      0,ar2                 ; |916| 
        ldiu      @CL91,r0              ; |916| 
        callu     r0                    ; far call to _round	; |916| 
                                        ; |916| Far Call Occurs
        ldp       @CL90,DP
        ldiu      @CL90,ar0             ; |916| 
        negf      f0,f3                 ; |916| 
        fix       f0,r2                 ; |916| 
        ldfu      *ar0,f1               ; |916| 
        fix       f3,r0                 ; |916| 
        negi      r0,r0                 ; |916| 
        ldile     r0,r2                 ; |916| 
        negf      f1,f0                 ; |916| 
        fix       f0,r0                 ; |916| 
        fix       f1,r1                 ; |916| 
        negi      r0,r0                 ; |916| 
        ldile     r0,r1                 ; |916| 
        cmpi3     r1,r2                 ; |916| 
        beq       L193                  ; |916| 
;*      Branch Occurs to L193           ; |916| 
	.line	107
;----------------------------------------------------------------------
; 917 | continue;                                                              
;----------------------------------------------------------------------
L192:        
	.line	109
;----------------------------------------------------------------------
; 919 | VAR_Update(v, t, 0,1);                                                 
;----------------------------------------------------------------------
        ldfu      *+fp(3),f0            ; |919| 
        ldp       @CL41,DP
        ldiu      255,r1                ; |919| 
        ldiu      0,r3                  ; |919| 
        ldiu      1,rc                  ; |919| 
        ldiu      *+fp(10),ar2          ; |919| 
        ldfu      f0,f2                 ; |919| Move F32 into F40 for CONV
        ldiu      @CL41,r0              ; |919| 
        andn      r1,f2                 ; |919| Bit mask for F32/F40 conversion
        callu     r0                    ; far call to _VAR_Update	; |919| 
                                        ; |919| Far Call Occurs
L193:        
	.line	64
        ldiu      1,r0                  ; |874| 
        addi      *+fp(1),r0            ; |874| 
        sti       r0,*+fp(1)            ; |874| 
        cmpi      5,r0                  ; |874| 
        blt       L180                  ; |874| 
;*      Branch Occurs to L180           ; |874| 
L194:        
	.line	114
;----------------------------------------------------------------------
; 924 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L195:        
	.line	115
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar5
        pop       ar4
        pop       r5
        pop       r4
                                        ; Unallocate the Frame
        subi      12,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	925,000003030h,10



	.global	_ADC_INT
	.bss	_ADC_INT,12
	.sym	_ADC_INT,_ADC_INT,52,2,384,,12

	.global	_ADC_ACTIVE
	.bss	_ADC_ACTIVE,3
	.sym	_ADC_ACTIVE,_ADC_ACTIVE,62,2,96,,3

	.global	_AI
_AI:	.usect	"CFG",1590,1
	.sym	_AI,_AI,56,2,50880,.fake15,5

	.global	_TLV_REF
	.bss	_TLV_REF,3
	.sym	_TLV_REF,_TLV_REF,52,2,96,,3
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
	.bss	CL87,1
	.bss	CL88,1
	.bss	CL89,1
	.bss	CL90,1
	.bss	CL91,1

	.sect	".cinit"
	.field  	91,32
	.field  	CL1+0,32
	.field  	_READ_ADC_INPUTS,32
	.field  	_AI+316,32
	.field  	_REG_ADC,32
	.field  	_VAR_NaN,32
	.field  	_ADC_INT,32
	.field  	_SA,32
	.field  	_RTD_R,32
	.field  	8421448,32
	.field  	40960,32
	.field  	_SP0_RX_DATA,32
	.field  	8421452,32
	.field  	41322,32
	.field  	9437190,32
	.field  	_HW_VER,32
	.field  	_Write_TMP75,32
	.field  	_Read_ADCn,32
	.field  	_ADC_ACTIVE,32
	.field  	_ADC_ACTIVE+1,32
	.field  	_ADC_ACTIVE+2,32
	.field  	SW0,32
	.field  	45056,32
	.field  	_TLV_REF,32
	.field  	53248,32
	.field  	_TLV_REF+1,32
	.field  	49152,32
	.field  	_TLV_REF+2,32
	.field  	57344,32
	.field  	_ADC_INT+2,32
	.field  	_ADC_TRIM_F_1+2,32
	.field  	_ADC_TRIM_I_1+2,32
	.field  	_RTD_CAL_HI_OHM,32
	.field  	_RTD_CAL_LO_OHM,32
	.field  	_RTD_CAL_HI_V,32
	.field  	_RTD_CAL_LO_V,32
	.word   	0011551A8H ; double  2.333109000000000e+00
	.word   	0F6108A26H ; double  1.102750000000000e-03
	.word   	0078BB000H ; double  -2.443125000000000e+02
	.field  	_TEMPERATURE_TRIM_T0,32
	.field  	_TEMPERATURE_TRIM_T1,32
	.field  	_REG_ADC+88,32
	.field  	_VAR_Update,32
	.field  	_ADC_INT+10,32
	.field  	_ADC_TRIM_F_1+10,32
	.field  	_ADC_TRIM_I_1+10,32
	.word   	00736263DH ; double  1.821493625000000e+02
	.word   	008089333H ; double  2.731500000000000e+02
	.field  	_REG_ADC+440,32
	.field  	_ADC_INT+11,32
	.field  	_ADC_TRIM_F_1+11,32
	.field  	_ADC_TRIM_I_1+11,32
	.field  	_REG_ADC+484,32
	.field  	_ADC_INT+1,32
	.field  	_ADC_TRIM_F_1+1,32
	.field  	_ADC_TRIM_I_1+1,32
	.field  	_REG_ADC+44,32
	.field  	_ADC_TRIM_F_1,32
	.field  	_ADC_TRIM_I_1,32
	.field  	9437186,32
	.field  	_I2C_TX_BYTE,32
	.field  	_I2C_RX_BYTE,32
	.field  	_Read_TMP75,32
	.word   	0FC000000H ; double  6.250000000000000e-02
	.field  	_Write_ADC_DAC,32
	.field  	_Read_ADC_DAC,32
	.field  	-65536,32
	.field  	SW1,32
	.field  	_AI,32
	.field  	393216,32
	.field  	_VAR_Get_Unit_Param,32
	.field  	327680,32
	.field  	_AI+309,32
	.field  	_AI+308,32
	.field  	_AI+44,32
	.field  	_AI+310,32
	.field  	_HART_DVINPUT_Table,32
	.field  	_HART_Lookup,32
	.field  	_REG_DUMMY,32
	.field  	_AI+3,32
	.field  	_AI+312,32
	.field  	_AI+101,32
	.field  	_AI+314,32
	.field  	_AI+88,32
	.field  	_AI+94,32
	.field  	_Convert,32
	.field  	_AI+145,32
	.field  	_AI+132,32
	.field  	_AI+138,32
	.field  	_AI+317,32
	.field  	_AI+264,32
	.field  	_REG_STREAM_SELECT,32
	.field  	_round,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_VAR_Get_Unit_Param

	.global	_VAR_NaN

	.global	_VAR_Update

	.global	_Convert

	.global	_I2C_RX_BYTE

	.global	_I2C_TX_BYTE

	.global	_SP0_RX_DATA

	.global	_SA

	.global	_READ_ADC_INPUTS

	.global	_HW_VER

	.global	_TEMPERATURE_TRIM_T0

	.global	_TEMPERATURE_TRIM_T1

	.global	_RTD_CAL_LO_OHM

	.global	_RTD_CAL_HI_OHM

	.global	_RTD_CAL_LO_V

	.global	_RTD_CAL_HI_V

	.global	_RTD_R

	.global	_REG_DUMMY

	.global	_REG_STREAM_SELECT

	.global	_REG_ADC

	.global	_ADC_TRIM_F_1

	.global	_ADC_TRIM_I_1

	.global	_HART_Lookup

	.global	_HART_DVINPUT_Table

	.global	_round
	.global	DIV_F30
