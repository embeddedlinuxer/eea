;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Wed Feb  2 15:41:09 2022                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_B1G.AAA 
	.file	"dac.c"
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
	.file	"dac.c"
	.sect	 ".text"

	.global	_Write_DAC
	.sym	_Write_DAC,_Write_DAC,32,2,0
	.func	40
;******************************************************************************
;* FUNCTION NAME: _Write_DAC                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,fp,ir0,ir1,st,rc   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 12 Auto + 0 SOE = 14 words        *
;******************************************************************************
_Write_DAC:
;* ar2   assigned to _n
	.sym	_n,10,4,17,32
	.sym	_n,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_t,3,6,1,32
	.sym	_v,4,6,1,32
	.sym	_pt,5,62,1,160,,5
	.sym	_r,10,14,1,32
	.sym	_ext_mb,11,14,1,32
	.sym	_addr,12,4,1,32
	.line	1
;----------------------------------------------------------------------
;  40 | void Write_DAC(int n)                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
	.line	2
;----------------------------------------------------------------------
;  42 | int     i;                              /* value written to DAC */     
;  43 | float   t;                              /* temp value to help with i */
;  44 | float   v;                              /* DAC value */                
;  45 | unsigned int pt[5];             /* buffer */                           
;  46 | BOOL r,ext_mb;                  /* r - successful config; ext_mb - enab
;     | le exteneded modbus table */                                           
;  47 | int addr;                               /* DAC Address */              
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |41| 
	.line	10
;----------------------------------------------------------------------
;  49 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	12
;----------------------------------------------------------------------
;  51 | v = REG_DAC[n].val;                                                    
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |51| 
        ldp       @CL1,DP
        mpyi      44,ir0                ; |51| 
        ldiu      @CL1,ar0              ; |51| 
        ldfu      *+ar0(ir0),f0         ; |51| 
        stf       f0,*+fp(4)            ; |51| 
	.line	14
;----------------------------------------------------------------------
;  53 | if (v < 0.0)                                                           
;----------------------------------------------------------------------
        cmpf      0.0000000000e+00,f0   ; |53| 
        bge       L3                    ; |53| 
;*      Branch Occurs to L3             ; |53| 
	.line	15
;----------------------------------------------------------------------
;  54 | v = 0.0;                                                               
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |54| 
        stf       f0,*+fp(4)            ; |54| 
L3:        
	.line	17
;----------------------------------------------------------------------
;  56 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |56| 
        ldiu      *ar0,r0               ; |56| 
        cmpi      0,r0                  ; |56| 
        beq       L23                   ; |56| 
;*      Branch Occurs to L23            ; |56| 
	.line	19
;----------------------------------------------------------------------
;  58 | if ((n!=DAC_VTUNE) && (n!=DAC_Aout1))                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |58| 
        cmpi      10,r0                 ; |58| 
        beq       L7                    ; |58| 
;*      Branch Occurs to L7             ; |58| 
        cmpi      0,r0                  ; |58| 
        beq       L7                    ; |58| 
;*      Branch Occurs to L7             ; |58| 
	.line	21
;----------------------------------------------------------------------
;  60 | VAR_NaN(&REG_DAC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      r0,ar2
        ldp       @CL1,DP
        mpyi      44,ar2                ; |60| 
        addi      @CL1,ar2              ; |60| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |60| 
        callu     r0                    ; far call to _VAR_NaN	; |60| 
                                        ; |60| Far Call Occurs
	.line	22
;----------------------------------------------------------------------
;  61 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	24
;----------------------------------------------------------------------
;  63 | return;                                                                
;----------------------------------------------------------------------
        bu        L51                   ; |63| 
;*      Branch Occurs to L51            ; |63| 
L7:        
	.line	27
;----------------------------------------------------------------------
;  66 | i = (int)(v*DAC_TRIM_I_1[n] / DAC_TRIM_F_1[n]);                        
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      *+fp(1),ir1           ; |66| 
        ldiu      @CL4,ar1              ; |66| 
        ldp       @CL5,DP
        ldiu      ir1,ir0               ; |66| 
        ldiu      @CL5,ar0              ; |66| 
        float     *+ar1(ir1),f0         ; |66| 
        ldfu      *+ar0(ir0),f1         ; |66| 
        mpyf      *+fp(4),f0            ; |66| 
        call      DIV_F30               ; |66| 
                                        ; |66| Call Occurs
        negf      f0,f2                 ; |66| 
        fix       f0,r1                 ; |66| 
        fix       f2,r0                 ; |66| 
        negi      r0,r0                 ; |66| 
        ldile     r0,r1                 ; |66| 
        sti       r1,*+fp(2)            ; |66| 
	.line	28
;----------------------------------------------------------------------
;  67 | t = (v*DAC_TRIM_I_1[n]/DAC_TRIM_F_1[n]) - (float)i;                    
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |67| 
        ldiu      *+fp(1),ir0           ; |67| 
        ldp       @CL5,DP
        ldiu      ir0,ir1               ; |67| 
        ldiu      @CL5,ar1              ; |67| 
        float     *+ar0(ir0),f0         ; |67| 
        ldfu      *+ar1(ir1),f1         ; |67| 
        mpyf      *+fp(4),f0            ; |67| 
        call      DIV_F30               ; |67| 
                                        ; |67| Call Occurs
        float     *+fp(2),f1            ; |67| 
        subrf     f0,f1                 ; |67| 
        stf       f1,*+fp(3)            ; |67| 
	.line	30
;----------------------------------------------------------------------
;  69 | if (t>=0.5)                                                            
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldfu      f1,f0
        cmpf      @CL6,f0               ; |69| 
        blt       L9                    ; |69| 
;*      Branch Occurs to L9             ; |69| 
	.line	31
;----------------------------------------------------------------------
;  70 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |70| 
        addi      *+fp(2),r0            ; |70| 
        sti       r0,*+fp(2)            ; |70| 
L9:        
	.line	33
;----------------------------------------------------------------------
;  72 | if (i > DAC_TRIM_I_1[n])                                               
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      *+fp(1),ir0           ; |72| 
        ldiu      @CL4,ar0              ; |72| 
        ldiu      *+fp(2),r0            ; |72| 
        cmpi3     *+ar0(ir0),r0         ; |72| 
        ble       L11                   ; |72| 
;*      Branch Occurs to L11            ; |72| 
	.line	34
;----------------------------------------------------------------------
;  73 | i = DAC_TRIM_I_1[n];                                                   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |73| 
        ldiu      *+ar0(ir0),r0         ; |73| 
        sti       r0,*+fp(2)            ; |73| 
        bu        L13                   ; |39| 
;*      Branch Occurs to L13            ; |39| 
L11:        
	.line	35
;----------------------------------------------------------------------
;  74 | else if (i<0)                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |74| 
        cmpi      0,r0                  ; |74| 
        bge       L13                   ; |74| 
;*      Branch Occurs to L13            ; |74| 
	.line	36
;----------------------------------------------------------------------
;  75 | i = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |75| 
        sti       r0,*+fp(2)            ; |75| 
L13:        
	.line	38
;----------------------------------------------------------------------
;  77 | VAR_Update(&REG_DAC[n], (float)i*DAC_TRIM_F_1[n]/DAC_TRIM_I_1[n], 0, 0)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      *+fp(1),ir1           ; |77| 
        ldiu      @CL5,ar0              ; |77| 
        float     *+fp(2),f0            ; |77| 
        ldp       @CL4,DP
        ldiu      ir1,ir0               ; |77| 
        ldiu      @CL4,ar1              ; |77| 
        mpyf3     *+ar0(ir1),f0,f0      ; |77| 
        float     *+ar1(ir0),f1         ; |77| 
        call      DIV_F30               ; |77| 
                                        ; |77| Call Occurs
        ldiu      255,r1                ; |77| 
        ldp       @CL7,DP
        ldfu      f0,f2                 ; |77| Move F32 into F40 for CONV
        ldiu      *+fp(1),ar2           ; |77| 
        ldiu      0,rc                  ; |77| 
        ldiu      @CL7,r0               ; |77| 
        mpyi      44,ar2                ; |77| 
        ldp       @CL1,DP
        andn      r1,f2                 ; |77| Bit mask for F32/F40 conversion
        addi      @CL1,ar2              ; |77| Unsigned
        ldiu      0,r3                  ; |77| 
        callu     r0                    ; far call to _VAR_Update	; |77| 
                                        ; |77| Far Call Occurs
	.line	40
;----------------------------------------------------------------------
;  79 | DAC_INT[n] = i;                                                        
;  81 | switch(n)                                                              
;  83 |         case DAC_VTUNE:                                                
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(1),ir0           ; |79| 
        ldiu      @CL8,ar0              ; |79| 
        ldiu      *+fp(2),r0            ; |79| 
        sti       r0,*+ar0(ir0)         ; |79| 
        bu        L17                   ; |39| 
;*      Branch Occurs to L17            ; |39| 
L14:        
	.line	46
;----------------------------------------------------------------------
;  85 | SEL_DAC0;                                                              
;----------------------------------------------------------------------
	ldi		62h,IOF		
	.line	47
;----------------------------------------------------------------------
;  86 | *SP0_TXDATA = i|DAC_FASTMODE;                                          
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      16384,r0              ; |86| 
        ldiu      @CL9,ar0              ; |86| 
        or        *+fp(2),r0            ; |86| 
        sti       r0,*ar0               ; |86| 
	.line	48
;----------------------------------------------------------------------
;  87 | WAIT_SP0;                                                              
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |87| 
        ldp       @CL10,DP
        ldiu      @CL10,ar1             ; |87| 
        ldiu      *ar0,r0               ; |87| 
        and       65535,r0              ; |87| 
        sti       r0,*ar1               ; |87| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |87| 
        ldp       @CL10,DP
        ldiu      @CL10,ar1             ; |87| 
        ldiu      *ar0,r0               ; |87| 
        and       65535,r0              ; |87| 
        sti       r0,*ar1               ; |87| 
	.line	50
;----------------------------------------------------------------------
;  89 | break;                                                                 
;  91 | case DAC_Aout1:                                                        
;----------------------------------------------------------------------
        bu        L19                   ; |89| 
;*      Branch Occurs to L19            ; |89| 
L15:        
	.line	54
;----------------------------------------------------------------------
;  93 | SEL_DAC1;                                                              
;----------------------------------------------------------------------
	ldi		66h,IOF		
	.line	55
;----------------------------------------------------------------------
;  94 | *SP0_TXDATA = i|DAC_FASTMODE;                                          
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      16384,r0              ; |94| 
        ldiu      @CL9,ar0              ; |94| 
        or        *+fp(2),r0            ; |94| 
        sti       r0,*ar0               ; |94| 
	.line	56
;----------------------------------------------------------------------
;  95 | WAIT_SP0;                                                              
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |95| 
        ldp       @CL10,DP
        ldiu      *ar1,r0               ; |95| 
        ldiu      @CL10,ar0             ; |95| 
        and       65535,r0              ; |95| 
        sti       r0,*ar0               ; |95| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |95| 
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |95| 
        ldiu      *ar1,r0               ; |95| 
        and       65535,r0              ; |95| 
        sti       r0,*ar0               ; |95| 
	.line	58
;----------------------------------------------------------------------
;  97 | break;                                                                 
;----------------------------------------------------------------------
        bu        L19                   ; |97| 
;*      Branch Occurs to L19            ; |97| 
L17:        
	.line	42
        ldiu      *+fp(1),r0            ; |81| 
        cmpi      0,r0                  ; |81| 
        beq       L15                   ; |81| 
;*      Branch Occurs to L15            ; |81| 
        cmpi      10,r0                 ; |81| 
        beq       L14                   ; |81| 
;*      Branch Occurs to L14            ; |81| 
L19:        
	.line	62
;----------------------------------------------------------------------
; 101 | if ((REG_DAC[n].STAT & var_NaNum) && (n<AO_NLOOPS))                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |101| 
        ldp       @CL12,DP
        mpyi      44,ir0                ; |101| 
        ldiu      @CL12,ar0             ; |101| 
        ldiu      8,r0                  ; |101| 
        tstb3     *+ar0(ir0),r0         ; |101| 
        beq       L22                   ; |101| 
;*      Branch Occurs to L22            ; |101| 
        ldiu      *+fp(1),r0            ; |101| 
        cmpi      9,r0                  ; |101| 
        bge       L22                   ; |101| 
;*      Branch Occurs to L22            ; |101| 
	.line	64
;----------------------------------------------------------------------
; 103 | VAR_NaN(&AO[n].CURRENT);                                               
;----------------------------------------------------------------------
        ldiu      r0,ar2
        ldp       @CL13,DP
        mpyi      419,ar2               ; |103| 
        addi      @CL13,ar2             ; |103| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |103| 
        callu     r0                    ; far call to _VAR_NaN	; |103| 
                                        ; |103| Far Call Occurs
	.line	65
;----------------------------------------------------------------------
; 104 | VAR_NaN(&AO[n].CURRENT_PERCENT_OF_RANGE);                              
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      *+fp(1),ar2           ; |104| 
        mpyi      419,ar2               ; |104| 
        addi      @CL14,ar2             ; |104| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |104| 
        callu     r0                    ; far call to _VAR_NaN	; |104| 
                                        ; |104| Far Call Occurs
L22:        
	.line	68
;----------------------------------------------------------------------
; 107 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	70
;----------------------------------------------------------------------
; 109 | return;                                                                
;----------------------------------------------------------------------
        bu        L51                   ; |109| 
;*      Branch Occurs to L51            ; |109| 
L23:        
	.line	73
;----------------------------------------------------------------------
; 112 | ext_mb = FALSE;                                                        
; 114 | switch(n)                                                              
; 116 |         case DAC_OSCSEL:                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |112| 
        sti       r0,*+fp(11)           ; |112| 
        bu        L35                   ; |39| 
;*      Branch Occurs to L35            ; |39| 
L24:        
	.line	79
;----------------------------------------------------------------------
; 118 | addr  = DAC_ADDRA1;                                                    
;----------------------------------------------------------------------
        ldiu      152,r0                ; |118| 
        sti       r0,*+fp(12)           ; |118| 
	.line	80
;----------------------------------------------------------------------
; 119 | pt[0] = 0x12;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |119| 
        addi      5,ar0                 ; |119| 
        ldiu      18,r0                 ; |119| 
        sti       r0,*ar0               ; |119| 
	.line	82
;----------------------------------------------------------------------
; 121 | break;                                                                 
; 123 | case DAC_VTUNE:                                                        
;----------------------------------------------------------------------
        bu        L37                   ; |121| 
;*      Branch Occurs to L37            ; |121| 
L25:        
	.line	86
;----------------------------------------------------------------------
; 125 | addr  = DAC_ADDRA1;                                                    
;----------------------------------------------------------------------
        ldiu      152,r0                ; |125| 
        sti       r0,*+fp(12)           ; |125| 
	.line	87
;----------------------------------------------------------------------
; 126 | pt[0] = 0x14;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |126| 
        addi      5,ar0                 ; |126| 
        ldiu      20,r0                 ; |126| 
        sti       r0,*ar0               ; |126| 
	.line	89
;----------------------------------------------------------------------
; 128 | break;                                                                 
; 130 | case DAC_TUNESEL:                                                      
;----------------------------------------------------------------------
        bu        L37                   ; |128| 
;*      Branch Occurs to L37            ; |128| 
L26:        
	.line	93
;----------------------------------------------------------------------
; 132 | addr  = DAC_ADDRA1;                                                    
;----------------------------------------------------------------------
        ldiu      152,r0                ; |132| 
        sti       r0,*+fp(12)           ; |132| 
	.line	94
;----------------------------------------------------------------------
; 133 | pt[0] = 0x16;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |133| 
        addi      5,ar0                 ; |133| 
        ldiu      22,r0                 ; |133| 
        sti       r0,*ar0               ; |133| 
	.line	96
;----------------------------------------------------------------------
; 135 | break;                                                                 
; 137 | case DAC_Aout1:                                                        
;----------------------------------------------------------------------
        bu        L37                   ; |135| 
;*      Branch Occurs to L37            ; |135| 
L27:        
	.line	100
;----------------------------------------------------------------------
; 139 | addr                                    = DAC_ADDRA1;                  
;----------------------------------------------------------------------
        ldiu      152,r0                ; |139| 
        sti       r0,*+fp(12)           ; |139| 
	.line	101
;----------------------------------------------------------------------
; 140 | pt[0]                                   = 0x10;                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |140| 
        addi      5,ar0                 ; |140| 
        ldiu      16,r0                 ; |140| 
        sti       r0,*ar0               ; |140| 
	.line	102
;----------------------------------------------------------------------
; 141 | AO[n-DAC_Aout1].present = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(1),ir0           ; |141| 
        mpyi      419,ir0               ; |141| 
        ldiu      @CL15,ar0             ; |141| 
        ldiu      1,r0                  ; |141| 
        sti       r0,*+ar0(ir0)         ; |141| 
	.line	103
;----------------------------------------------------------------------
; 142 | break;                                                                 
; 144 | case DAC_Aout2:                                                        
;----------------------------------------------------------------------
        bu        L37                   ; |142| 
;*      Branch Occurs to L37            ; |142| 
L28:        
	.line	107
;----------------------------------------------------------------------
; 146 | addr                                    = DAC_ADDRA2;                  
;----------------------------------------------------------------------
        ldiu      158,r0                ; |146| 
        sti       r0,*+fp(12)           ; |146| 
	.line	108
;----------------------------------------------------------------------
; 147 | pt[0]                                   = 0x10;                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |147| 
        addi      5,ar0                 ; |147| 
        ldiu      16,r0                 ; |147| 
        sti       r0,*ar0               ; |147| 
	.line	109
;----------------------------------------------------------------------
; 148 | AO[n-DAC_Aout1].present = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(1),ir0           ; |148| 
        mpyi      419,ir0               ; |148| 
        ldiu      @CL15,ar0             ; |148| 
        ldiu      1,r0                  ; |148| 
        sti       r0,*+ar0(ir0)         ; |148| 
	.line	110
;----------------------------------------------------------------------
; 149 | break;                                                                 
; 151 | case DAC_Aout3:                                                        
;----------------------------------------------------------------------
        bu        L37                   ; |149| 
;*      Branch Occurs to L37            ; |149| 
L29:        
	.line	114
;----------------------------------------------------------------------
; 153 | addr                                    = DAC_ADDRA2;                  
;----------------------------------------------------------------------
        ldiu      158,r0                ; |153| 
        sti       r0,*+fp(12)           ; |153| 
	.line	115
;----------------------------------------------------------------------
; 154 | pt[0]                                   = 0x12;                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |154| 
        addi      5,ar0                 ; |154| 
        ldiu      18,r0                 ; |154| 
        sti       r0,*ar0               ; |154| 
	.line	116
;----------------------------------------------------------------------
; 155 | AO[n-DAC_Aout1].present = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(1),ir0           ; |155| 
        mpyi      419,ir0               ; |155| 
        ldiu      @CL15,ar0             ; |155| 
        ldiu      1,r0                  ; |155| 
        sti       r0,*+ar0(ir0)         ; |155| 
	.line	117
;----------------------------------------------------------------------
; 156 | break;                                                                 
; 158 | case DAC_Aout4:                                                        
;----------------------------------------------------------------------
        bu        L37                   ; |156| 
;*      Branch Occurs to L37            ; |156| 
L30:        
	.line	121
;----------------------------------------------------------------------
; 160 | addr                                    = DAC_ADDRA2;                  
;----------------------------------------------------------------------
        ldiu      158,r0                ; |160| 
        sti       r0,*+fp(12)           ; |160| 
	.line	122
;----------------------------------------------------------------------
; 161 | pt[0]                                   = 0x14;                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |161| 
        addi      5,ar0                 ; |161| 
        ldiu      20,r0                 ; |161| 
        sti       r0,*ar0               ; |161| 
	.line	123
;----------------------------------------------------------------------
; 162 | AO[n-DAC_Aout1].present = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(1),ir0           ; |162| 
        mpyi      419,ir0               ; |162| 
        ldiu      @CL15,ar0             ; |162| 
        ldiu      1,r0                  ; |162| 
        sti       r0,*+ar0(ir0)         ; |162| 
	.line	124
;----------------------------------------------------------------------
; 163 | break;                                                                 
; 165 | case DAC_Aout5:                                                        
;----------------------------------------------------------------------
        bu        L37                   ; |163| 
;*      Branch Occurs to L37            ; |163| 
L31:        
	.line	128
;----------------------------------------------------------------------
; 167 | addr                                    = DAC_ADDRA2;                  
;----------------------------------------------------------------------
        ldiu      158,r0                ; |167| 
        sti       r0,*+fp(12)           ; |167| 
	.line	129
;----------------------------------------------------------------------
; 168 | pt[0]                                   = 0x16;                        
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |168| 
        addi      5,ar0                 ; |168| 
        ldiu      22,r0                 ; |168| 
        sti       r0,*ar0               ; |168| 
	.line	130
;----------------------------------------------------------------------
; 169 | AO[n-DAC_Aout1].present = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(1),ir0           ; |169| 
        mpyi      419,ir0               ; |169| 
        ldiu      @CL15,ar0             ; |169| 
        ldiu      1,r0                  ; |169| 
        sti       r0,*+ar0(ir0)         ; |169| 
	.line	131
;----------------------------------------------------------------------
; 170 | break;                                                                 
; 172 | case DAC_Aout6:                                                        
; 173 | case DAC_Aout7:                                                        
; 174 | case DAC_Aout8:                                                        
; 175 | case DAC_Aout9:                                                        
;----------------------------------------------------------------------
        bu        L37                   ; |170| 
;*      Branch Occurs to L37            ; |170| 
L32:        
	.line	138
;----------------------------------------------------------------------
; 177 | ext_mb = TRUE;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |177| 
        sti       r0,*+fp(11)           ; |177| 
	.line	140
;----------------------------------------------------------------------
; 179 | break;                                                                 
; 181 | default:                                                               
;----------------------------------------------------------------------
        bu        L37                   ; |179| 
;*      Branch Occurs to L37            ; |179| 
L33:        
	.line	144
;----------------------------------------------------------------------
; 183 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	145
;----------------------------------------------------------------------
; 184 | return;                                                                
;----------------------------------------------------------------------
        bu        L51                   ; |184| 
;*      Branch Occurs to L51            ; |184| 
L35:        
	.line	75
        ldiu      *+fp(1),ir0           ; |114| 
        cmpi      11,ir0                ; |114| 
        bhi       L33                   ; |114| 
;*      Branch Occurs to L33            ; |114| 
        ldp       @CL16,DP
        ldiu      @CL16,ar0             ; |114| 
        ldiu      *+ar0(ir0),r0         ; |114| 
        bu        r0                    ; |114| 

	.sect	".text"
SW0:	.word	L27	; 0
	.word	L28	; 1
	.word	L29	; 2
	.word	L30	; 3
	.word	L31	; 4
	.word	L32	; 5
	.word	L32	; 6
	.word	L32	; 7
	.word	L32	; 8
	.word	L24	; 9
	.word	L25	; 10
	.word	L26	; 11
	.sect	".text"
;*      Branch Occurs to r0             ; |114| 
L37:        
	.line	149
;----------------------------------------------------------------------
; 188 | i = (int)(v*DAC_TRIM_I_1[n] / DAC_TRIM_F_1[n]);                        
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      *+fp(1),ir1           ; |188| 
        ldiu      @CL4,ar1              ; |188| 
        ldp       @CL5,DP
        ldiu      ir1,ir0               ; |188| 
        ldiu      @CL5,ar0              ; |188| 
        float     *+ar1(ir1),f0         ; |188| 
        ldfu      *+ar0(ir0),f1         ; |188| 
        mpyf      *+fp(4),f0            ; |188| 
        call      DIV_F30               ; |188| 
                                        ; |188| Call Occurs
        negf      f0,f2                 ; |188| 
        fix       f0,r1                 ; |188| 
        fix       f2,r0                 ; |188| 
        negi      r0,r0                 ; |188| 
        ldile     r0,r1                 ; |188| 
        sti       r1,*+fp(2)            ; |188| 
	.line	150
;----------------------------------------------------------------------
; 189 | t = (v*DAC_TRIM_I_1[n] / DAC_TRIM_F_1[n]) - (float)i;                  
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |189| 
        ldiu      *+fp(1),ir1           ; |189| 
        ldp       @CL5,DP
        ldiu      ir1,ir0               ; |189| 
        ldiu      @CL5,ar1              ; |189| 
        float     *+ar0(ir1),f0         ; |189| 
        ldfu      *+ar1(ir0),f1         ; |189| 
        mpyf      *+fp(4),f0            ; |189| 
        call      DIV_F30               ; |189| 
                                        ; |189| Call Occurs
        float     *+fp(2),f1            ; |189| 
        subrf     f0,f1                 ; |189| 
        stf       f1,*+fp(3)            ; |189| 
	.line	152
;----------------------------------------------------------------------
; 191 | if (t>=0.5)                                                            
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldfu      f1,f0
        cmpf      @CL6,f0               ; |191| 
        blt       L39                   ; |191| 
;*      Branch Occurs to L39            ; |191| 
	.line	153
;----------------------------------------------------------------------
; 192 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |192| 
        addi      *+fp(2),r0            ; |192| 
        sti       r0,*+fp(2)            ; |192| 
L39:        
	.line	155
;----------------------------------------------------------------------
; 194 | if (i>DAC_TRIM_I_1[n])                                                 
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      *+fp(1),ir0           ; |194| 
        ldiu      @CL4,ar0              ; |194| 
        ldiu      *+fp(2),r0            ; |194| 
        cmpi3     *+ar0(ir0),r0         ; |194| 
        ble       L41                   ; |194| 
;*      Branch Occurs to L41            ; |194| 
	.line	156
;----------------------------------------------------------------------
; 195 | i = DAC_TRIM_I_1[n];                                                   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |195| 
        ldiu      *+ar0(ir0),r0         ; |195| 
        sti       r0,*+fp(2)            ; |195| 
        bu        L43                   ; |39| 
;*      Branch Occurs to L43            ; |39| 
L41:        
	.line	157
;----------------------------------------------------------------------
; 196 | else if (i<0)                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |196| 
        cmpi      0,r0                  ; |196| 
        bge       L43                   ; |196| 
;*      Branch Occurs to L43            ; |196| 
	.line	158
;----------------------------------------------------------------------
; 197 | i = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |197| 
        sti       r0,*+fp(2)            ; |197| 
L43:        
	.line	160
;----------------------------------------------------------------------
; 199 | DAC_INT[n] = i;                                                        
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(1),ir0           ; |199| 
        ldiu      @CL8,ar0              ; |199| 
        ldiu      *+fp(2),r0            ; |199| 
        sti       r0,*+ar0(ir0)         ; |199| 
	.line	162
;----------------------------------------------------------------------
; 201 | if (ext_mb==FALSE)                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(11),r0           ; |201| 
        cmpi      0,r0                  ; |201| 
        bne       L50                   ; |201| 
;*      Branch Occurs to L50            ; |201| 
	.line	164
;----------------------------------------------------------------------
; 203 | pt[1] = i>>8;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |203| 
        ldiu      *+fp(2),r0            ; |203| 
        addi      6,ar0                 ; |203| 
        ash       -8,r0                 ; |203| 
        sti       r0,*ar0               ; |203| 
	.line	165
;----------------------------------------------------------------------
; 204 | pt[2] = i;                                                             
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |204| 
        addi      7,ar0                 ; |204| 
        ldiu      *+fp(2),r0            ; |204| 
        sti       r0,*ar0               ; |204| 
	.line	167
;----------------------------------------------------------------------
; 206 | r = Write_ADC_DAC(addr, 3, (unsigned char*)pt); /* setup cfg register *
;     | /                                                                      
;----------------------------------------------------------------------
        ldiu      fp,r3                 ; |206| 
        ldp       @CL17,DP
        ldiu      3,r2                  ; |206| 
        addi      5,r3                  ; |206| 
        ldiu      *+fp(12),ar2          ; |206| 
        ldiu      @CL17,r0              ; |206| 
        callu     r0                    ; far call to _Write_ADC_DAC	; |206| 
                                        ; |206| Far Call Occurs
        sti       r0,*+fp(10)           ; |206| 
	.line	169
;----------------------------------------------------------------------
; 208 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |208| 
        bne       L46                   ; |208| 
;*      Branch Occurs to L46            ; |208| 
	.line	170
;----------------------------------------------------------------------
; 209 | VAR_NaN(&REG_DAC[n]);                                                  
; 210 | else /* clear NaN flag */                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |209| 
        ldp       @CL1,DP
        mpyi      44,ar2                ; |209| 
        addi      @CL1,ar2              ; |209| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |209| 
        callu     r0                    ; far call to _VAR_NaN	; |209| 
                                        ; |209| Far Call Occurs
        bu        L47                   ; |39| 
;*      Branch Occurs to L47            ; |39| 
L46:        
	.line	172
;----------------------------------------------------------------------
; 211 | REG_DAC[n].STAT &= var_NaNum ^ 0xFFFFFFFF;                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |211| 
        ldp       @CL1,DP
        mpyi      44,ar0                ; |211| 
        addi      @CL1,ar0              ; |211| Unsigned
        ldiu      *+ar0(3),r0           ; |211| 
        andn      8,r0                  ; |211| 
        sti       r0,*+ar0(3)           ; |211| 
L47:        
	.line	174
;----------------------------------------------------------------------
; 213 | if ((REG_DAC[n].STAT & var_NaNum) && (n<=DAC_Aout9))                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |213| 
        ldp       @CL12,DP
        mpyi      44,ir0                ; |213| 
        ldiu      @CL12,ar0             ; |213| 
        ldiu      8,r0                  ; |213| 
        tstb3     *+ar0(ir0),r0         ; |213| 
        beq       L50                   ; |213| 
;*      Branch Occurs to L50            ; |213| 
        ldiu      *+fp(1),r0            ; |213| 
        cmpi      8,r0                  ; |213| 
        bgt       L50                   ; |213| 
;*      Branch Occurs to L50            ; |213| 
	.line	176
;----------------------------------------------------------------------
; 215 | VAR_NaN(&AO[n-DAC_Aout1].CURRENT);                                     
;----------------------------------------------------------------------
        ldiu      r0,ar2
        ldp       @CL13,DP
        mpyi      419,ar2               ; |215| 
        addi      @CL13,ar2             ; |215| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |215| 
        callu     r0                    ; far call to _VAR_NaN	; |215| 
                                        ; |215| Far Call Occurs
	.line	177
;----------------------------------------------------------------------
; 216 | VAR_NaN(&AO[n-DAC_Aout1].CURRENT_PERCENT_OF_RANGE);                    
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      *+fp(1),ar2           ; |216| 
        mpyi      419,ar2               ; |216| 
        addi      @CL14,ar2             ; |216| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |216| 
        callu     r0                    ; far call to _VAR_NaN	; |216| 
                                        ; |216| Far Call Occurs
	.line	178
;----------------------------------------------------------------------
; 217 | AO[n-DAC_Aout1].present = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(1),ir0           ; |217| 
        ldiu      @CL15,ar0             ; |217| 
        mpyi      419,ir0               ; |217| 
        ldiu      0,r0                  ; |217| 
        sti       r0,*+ar0(ir0)         ; |217| 
L50:        
	.line	182
;----------------------------------------------------------------------
; 221 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L51:        
	.line	183
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      14,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	222,000000000h,12


	.sect	 ".text"

	.global	_MB_RX_DAC_Aout
	.sym	_MB_RX_DAC_Aout,_MB_RX_DAC_Aout,32,2,0
	.func	237
;******************************************************************************
;* FUNCTION NAME: _MB_RX_DAC_Aout                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_MB_RX_DAC_Aout:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
;* r2    assigned to _i
	.sym	_i,2,4,17,32
	.sym	_id,1,4,1,32
	.sym	_i,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 237 | void MB_RX_DAC_Aout(int id, int i)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
        sti       r2,*+fp(2)            ; |238| 
        sti       ar2,*+fp(1)           ; |238| 
	.line	3
;----------------------------------------------------------------------
; 239 | if (!PORT[id].failed)                                                  
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |239| 
        ldp       @CL18,DP
        mpyi      71,ir0                ; |239| 
        ldiu      @CL18,ar0             ; |239| 
        ldiu      *+ar0(ir0),r0         ; |239| 
        cmpi      0,r0                  ; |239| 
        bne       L55                   ; |239| 
;*      Branch Occurs to L55            ; |239| 
	.line	5
;----------------------------------------------------------------------
; 241 | REG_DAC[i].STAT                 &= var_NaNum ^ 0xFFFFFFFF;             
;----------------------------------------------------------------------
        ldiu      r2,ar0
        ldp       @CL1,DP
        mpyi      44,ar0                ; |241| 
        addi      @CL1,ar0              ; |241| Unsigned
        ldiu      *+ar0(3),r0           ; |241| 
        andn      8,r0                  ; |241| 
        sti       r0,*+ar0(3)           ; |241| 
	.line	6
;----------------------------------------------------------------------
; 242 | AO[i-DAC_Aout1].present  = TRUE;                                       
; 244 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      *+fp(2),ir0           ; |242| 
        mpyi      419,ir0               ; |242| 
        ldiu      @CL15,ar0             ; |242| 
        ldiu      1,r0                  ; |242| 
        sti       r0,*+ar0(ir0)         ; |242| 
        bu        L56                   ; |236| 
;*      Branch Occurs to L56            ; |236| 
L55:        
	.line	10
;----------------------------------------------------------------------
; 246 | VAR_NaN(&REG_DAC[i]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |246| 
        ldp       @CL1,DP
        mpyi      44,ar2                ; |246| 
        addi      @CL1,ar2              ; |246| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |246| 
        callu     r0                    ; far call to _VAR_NaN	; |246| 
                                        ; |246| Far Call Occurs
	.line	11
;----------------------------------------------------------------------
; 247 | VAR_NaN(&AO[i-DAC_Aout1].CURRENT);                                     
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      *+fp(2),ar2           ; |247| 
        mpyi      419,ar2               ; |247| 
        addi      @CL13,ar2             ; |247| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |247| 
        callu     r0                    ; far call to _VAR_NaN	; |247| 
                                        ; |247| Far Call Occurs
	.line	12
;----------------------------------------------------------------------
; 248 | VAR_NaN(&AO[i-DAC_Aout1].CURRENT_PERCENT_OF_RANGE);                    
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      *+fp(2),ar2           ; |248| 
        mpyi      419,ar2               ; |248| 
        addi      @CL14,ar2             ; |248| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |248| 
        callu     r0                    ; far call to _VAR_NaN	; |248| 
                                        ; |248| Far Call Occurs
	.line	13
;----------------------------------------------------------------------
; 249 | AO[i-DAC_Aout1].present = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |249| 
        ldp       @CL15,DP
        mpyi      419,ir0               ; |249| 
        ldiu      @CL15,ar0             ; |249| 
        ldiu      0,r0                  ; |249| 
        sti       r0,*+ar0(ir0)         ; |249| 
L56:        
	.line	15
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	251,000000000h,2


	.sect	 ".text"

	.global	_MB_RX_DAC_Aout6_7
	.sym	_MB_RX_DAC_Aout6_7,_MB_RX_DAC_Aout6_7,32,2,0
	.func	265
;******************************************************************************
;* FUNCTION NAME: _MB_RX_DAC_Aout6_7                                          *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar2                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_MB_RX_DAC_Aout6_7:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 265 | void MB_RX_DAC_Aout6_7(int id)                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |266| 
	.line	3
;----------------------------------------------------------------------
; 267 | MB_RX_DAC_Aout(id, DAC_Aout6);                                         
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      5,r2                  ; |267| 
        ldiu      @CL19,r0              ; |267| 
        callu     r0                    ; far call to _MB_RX_DAC_Aout	; |267| 
                                        ; |267| Far Call Occurs
	.line	4
;----------------------------------------------------------------------
; 268 | MB_RX_DAC_Aout(id, DAC_Aout7);                                         
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,r0              ; |268| 
        ldiu      *+fp(1),ar2           ; |268| 
        ldiu      6,r2                  ; |268| 
        callu     r0                    ; far call to _MB_RX_DAC_Aout	; |268| 
                                        ; |268| Far Call Occurs
	.line	5
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	269,000000000h,1


	.sect	 ".text"

	.global	_MB_RX_DAC_Aout8_9
	.sym	_MB_RX_DAC_Aout8_9,_MB_RX_DAC_Aout8_9,32,2,0
	.func	283
;******************************************************************************
;* FUNCTION NAME: _MB_RX_DAC_Aout8_9                                          *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar2                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_MB_RX_DAC_Aout8_9:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
	.sym	_id,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 283 | void MB_RX_DAC_Aout8_9(int id)                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |284| 
	.line	3
;----------------------------------------------------------------------
; 285 | MB_RX_DAC_Aout(id, DAC_Aout8);                                         
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      7,r2                  ; |285| 
        ldiu      @CL19,r0              ; |285| 
        callu     r0                    ; far call to _MB_RX_DAC_Aout	; |285| 
                                        ; |285| Far Call Occurs
	.line	4
;----------------------------------------------------------------------
; 286 | MB_RX_DAC_Aout(id, DAC_Aout9);                                         
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,r0              ; |286| 
        ldiu      *+fp(1),ar2           ; |286| 
        ldiu      8,r2                  ; |286| 
        callu     r0                    ; far call to _MB_RX_DAC_Aout	; |286| 
                                        ; |286| Far Call Occurs
	.line	5
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	287,000000000h,1


	.sect	 "initialization"

	.global	_Setup_DAC
	.sym	_Setup_DAC,_Setup_DAC,32,2,0
	.func	302
;******************************************************************************
;* FUNCTION NAME: _Setup_DAC                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,f2,r3,ar0,ar1,ar2,ir0,st,rc                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Setup_DAC:
;* ar2   assigned to _n
	.sym	_n,10,4,17,32
	.sym	_n,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 302 | void Setup_DAC(int n)                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |303| 
	.line	3
;----------------------------------------------------------------------
; 304 | if( (n>=DAC_Aout1) && (n<=DAC_Aout9) )                                 
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      0,r0                  ; |304| 
        blt       L67                   ; |304| 
;*      Branch Occurs to L67            ; |304| 
        cmpi      8,r0                  ; |304| 
        bgt       L67                   ; |304| 
;*      Branch Occurs to L67            ; |304| 
	.line	4
;----------------------------------------------------------------------
; 305 | AO[n-DAC_Aout1].present = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldp       @CL15,DP
        mpyi      419,ir0               ; |305| 
        ldiu      @CL15,ar0             ; |305| 
        ldiu      0,r0                  ; |305| 
        sti       r0,*+ar0(ir0)         ; |305| 
L67:        
	.line	6
;----------------------------------------------------------------------
; 307 | VAR_NaN(&REG_DAC[n]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |307| 
        ldp       @CL1,DP
        mpyi      44,ar2                ; |307| 
        addi      @CL1,ar2              ; |307| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |307| 
        callu     r0                    ; far call to _VAR_NaN	; |307| 
                                        ; |307| Far Call Occurs
	.line	8
;----------------------------------------------------------------------
; 309 | if(SA)                                                                 
; 311 |         switch(n)                                                      
; 313 |                 case DAC_VTUNE:                                        
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |309| 
        ldiu      *ar0,r0               ; |309| 
        cmpi      0,r0                  ; |309| 
        beq       L76                   ; |309| 
;*      Branch Occurs to L76            ; |309| 
        bu        L73                   ; |301| 
;*      Branch Occurs to L73            ; |301| 
L69:        
	.line	14
;----------------------------------------------------------------------
; 315 | SEL_DAC0;                                                              
;----------------------------------------------------------------------
	ldi		62h,IOF		
	.line	15
;----------------------------------------------------------------------
; 316 | *SP0_TXDATA = DAC_INTREF;                                              
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |316| 
        ldp       @CL20,DP
        ldiu      @CL20,r0              ; |316| 
        sti       r0,*ar0               ; |316| 
	.line	16
;----------------------------------------------------------------------
; 317 | WAIT_SP0;                                                              
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |317| 
        ldp       @CL10,DP
        ldiu      *ar0,r0               ; |317| 
        ldiu      @CL10,ar1             ; |317| 
        and       65535,r0              ; |317| 
        sti       r0,*ar1               ; |317| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |317| 
        ldp       @CL10,DP
        ldiu      @CL10,ar1             ; |317| 
        ldiu      *ar0,r0               ; |317| 
        and       65535,r0              ; |317| 
        sti       r0,*ar1               ; |317| 
	.line	18
;----------------------------------------------------------------------
; 319 | break;                                                                 
; 321 | case DAC_Aout1:                                                        
;----------------------------------------------------------------------
        bu        L76                   ; |319| 
;*      Branch Occurs to L76            ; |319| 
L70:        
	.line	22
;----------------------------------------------------------------------
; 323 | if (B202_PORT)                                                         
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |323| 
        ldiu      32,r0                 ; |323| 
        tstb3     *ar0,r0               ; |323| 
        bne       L77                   ; |323| 
;*      Branch Occurs to L77            ; |323| 
	.line	24
;----------------------------------------------------------------------
; 325 | AO[n].present = TRUE;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |325| 
        ldp       @CL15,DP
        mpyi      419,ir0               ; |325| 
        ldiu      @CL15,ar0             ; |325| 
        ldiu      1,r0                  ; |325| 
        sti       r0,*+ar0(ir0)         ; |325| 
	.line	25
;----------------------------------------------------------------------
; 326 | SEL_DAC1;                                                              
;----------------------------------------------------------------------
	ldi		66h,IOF		
	.line	26
;----------------------------------------------------------------------
; 327 | *SP0_TXDATA   = DAC_INTREF;                                            
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |327| 
        ldp       @CL20,DP
        ldiu      @CL20,r0              ; |327| 
        sti       r0,*ar0               ; |327| 
	.line	27
;----------------------------------------------------------------------
; 328 | WAIT_SP0;                                                              
; 330 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |328| 
        ldp       @CL10,DP
        ldiu      @CL10,ar1             ; |328| 
        ldiu      *ar0,r0               ; |328| 
        and       65535,r0              ; |328| 
        sti       r0,*ar1               ; |328| 
	tstb	0020h, IF	
	.word	6A05FFFEh	
	andn	0020h, IF
	ldi		22h,IOF		
        ldp       @CL11,DP
        ldiu      @CL11,ar1             ; |328| 
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |328| 
        ldiu      *ar1,r0               ; |328| 
        and       65535,r0              ; |328| 
        sti       r0,*ar0               ; |328| 
        bu        L76                   ; |301| 
;*      Branch Occurs to L76            ; |301| 
	.line	30
;----------------------------------------------------------------------
; 331 | return;                                                                
;----------------------------------------------------------------------
	.line	32
;----------------------------------------------------------------------
; 333 | break;                                                                 
; 335 | default:                                                               
;----------------------------------------------------------------------
	.line	35
;----------------------------------------------------------------------
; 336 | return;                                                                
;----------------------------------------------------------------------
L73:        
	.line	10
        ldiu      *+fp(1),r0            ; |311| 
        cmpi      0,r0                  ; |311| 
        beq       L70                   ; |311| 
;*      Branch Occurs to L70            ; |311| 
        cmpi      10,r0                 ; |311| 
        beq       L69                   ; |311| 
;*      Branch Occurs to L69            ; |311| 
        bu        L77                   ; |311| 
;*      Branch Occurs to L77            ; |311| 
L76:        
	.line	39
;----------------------------------------------------------------------
; 340 | VAR_Update(&REG_DAC[n], 0.0, 0, 0);                                    
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      *+fp(1),ar2           ; |340| 
        ldiu      @CL7,r0               ; |340| 
        ldp       @CL1,DP
        mpyi      44,ar2                ; |340| 
        addi      @CL1,ar2              ; |340| Unsigned
        ldp       @CL22+0,DP
        ldfu      @CL22+0,f2            ; |340| 40b float hi half
        ldp       @CL22+1,DP
        ldiu      0,rc                  ; |340| 
        ldiu      @CL22+1,r2            ; |340| 40b float lo half
        ldiu      0,r3                  ; |340| 
        callu     r0                    ; far call to _VAR_Update	; |340| 
                                        ; |340| Far Call Occurs
	.line	40
;----------------------------------------------------------------------
; 341 | Write_DAC(n);                                                          
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,r0              ; |341| 
        ldiu      *+fp(1),ar2           ; |341| 
        callu     r0                    ; far call to _Write_DAC	; |341| 
                                        ; |341| Far Call Occurs
L77:        
	.line	41
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	342,000000000h,1


	.sect	 ".text"

	.global	_Set_Current
	.sym	_Set_Current,_Set_Current,32,2,0
	.func	356
;******************************************************************************
;* FUNCTION NAME: _Set_Current                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,ar0,ar1,ar2,fp,ar4,   *
;*                        ar5,ir0,ir1,bk,st,rs,re,rc                          *
;*   Regs Saved         : r4,ar4,ar5                                          *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 22 Auto + 3 SOE = 27 words        *
;******************************************************************************
_Set_Current:
	.sym	_minv,1,11,1,64
	.sym	_maxv,3,11,1,64
	.sym	_minc,5,11,1,64
	.sym	_maxc,7,11,1,64
	.sym	_urv,9,11,1,64
	.sym	_lrv,11,11,1,64
	.sym	_t,13,11,1,64
	.sym	_m,15,11,1,64
	.sym	_y,17,11,1,64
	.sym	_current,19,6,1,32
	.sym	_v,20,24,1,32,.fake6
	.sym	_ui,21,14,1,32
	.sym	_i,22,4,1,32
	.line	1
;----------------------------------------------------------------------
; 356 | void Set_Current(void)                                                 
; 358 | long double minv, maxv; /* minimum voltage; maximum voltage */         
; 359 | long double minc, maxc; /* maximum current; maximum current */         
; 360 | long double urv, lrv;   /* AO.URV, AO.LRV
;     |          */                                                            
; 361 | long double t;                  /* PID manual percent
;     |          */                                                            
; 362 | long double m;                  /* calculated AO.CURRENT
;     |          */                                                            
; 363 | long double y;                  /* temp caluclation variable
;     |  */                                                                    
; 364 | float current;                  /* mode -1: current
;     |                  */                                                    
; 365 | VAR* v;                                 /* HART variable
;     |                          */                                            
; 366 | unsigned int ui;                /* user index?
;     |                  */                                                    
; 367 | int i;                                  /* counter
;     |                                  */                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      22,sp
        push      r4
        push      ar4
        push      ar5
	.line	14
;----------------------------------------------------------------------
; 369 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	16
;----------------------------------------------------------------------
; 371 | for (i=0;i<AO_NLOOPS;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |371| 
        sti       r0,*+fp(22)           ; |371| 
        cmpi      9,r0                  ; |371| 
        bge       L140                  ; |371| 
;*      Branch Occurs to L140           ; |371| 
L80:        
	.line	18
;----------------------------------------------------------------------
; 373 | if (!AO[i].present)/* if channel not present, check next channel */    
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |373| 
        ldp       @CL15,DP
        mpyi      419,ir0               ; |373| 
        ldiu      @CL15,ar0             ; |373| 
        ldiu      *+ar0(ir0),r0         ; |373| 
        cmpi      0,r0                  ; |373| 
        beq       L139                  ; |373| 
;*      Branch Occurs to L139           ; |373| 
	.line	19
;----------------------------------------------------------------------
; 374 | continue;                                                              
;----------------------------------------------------------------------
	.line	21
;----------------------------------------------------------------------
; 376 | if (((i+DAC_Aout1)>=DAC_Aout6) && ((i+DAC_Aout1)<=DAC_Aout9) && (AO[i].
;     | v.val==-2))                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(22),r0           ; |376| 
        cmpi      5,r0                  ; |376| 
        blt       L85                   ; |376| 
;*      Branch Occurs to L85            ; |376| 
        cmpi      8,r0                  ; |376| 
        bgt       L85                   ; |376| 
;*      Branch Occurs to L85            ; |376| 
        ldiu      r0,ir0
        ldp       @CL24,DP
        mpyi      419,ir0               ; |376| 
        ldiu      @CL24,ar0             ; |376| 
        ldiu      *+ar0(ir0),r0         ; |376| 
        cmpi      -2,r0                 ; |376| 
        bne       L85                   ; |376| 
;*      Branch Occurs to L85            ; |376| 
	.line	22
;----------------------------------------------------------------------
; 377 | AO[i].v.val = -1; /* PID mode not allowed on AO6-9 */                  
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |377| 
        ldp       @CL24,DP
        mpyi      419,ir0               ; |377| 
        ldiu      @CL24,ar0             ; |377| 
        ldiu      -1,r0                 ; |377| 
        sti       r0,*+ar0(ir0)         ; |377| 
L85:        
	.line	24
;----------------------------------------------------------------------
; 379 | minc = VAR_Get_Unit_Param(&AO[i].CURRENT, reg_direct_bmin, 0, 0);      
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      *+fp(22),ar2          ; |379| 
        ldiu      @CL26,r0              ; |379| 
        ldp       @CL13,DP
        mpyi      419,ar2               ; |379| 
        addi      @CL13,ar2             ; |379| Unsigned
        ldp       @CL25,DP
        ldiu      0,rc                  ; |379| 
        ldiu      @CL25,r2              ; |379| 
        ldiu      0,r3                  ; |379| 
        callu     r0                    ; far call to _VAR_Get_Unit_Param	; |379| 
                                        ; |379| Far Call Occurs
        ldiu      255,r1                ; |379| 
        andn      r1,f0                 ; |379| Bit mask for F32/F40 conversion
        stf       f0,*+fp(5)            ; |379| Store high half
        sti       r0,*+fp(6)            ; |379| Store low half
	.line	25
;----------------------------------------------------------------------
; 380 | maxc = VAR_Get_Unit_Param(&AO[i].CURRENT, reg_direct_bmax, 0, 0);      
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      *+fp(22),ar2          ; |380| 
        ldiu      @CL26,r0              ; |380| 
        ldp       @CL13,DP
        mpyi      419,ar2               ; |380| 
        addi      @CL13,ar2             ; |380| Unsigned
        ldp       @CL27,DP
        ldiu      0,rc                  ; |380| 
        ldiu      @CL27,r2              ; |380| 
        ldiu      0,r3                  ; |380| 
        callu     r0                    ; far call to _VAR_Get_Unit_Param	; |380| 
                                        ; |380| Far Call Occurs
        ldiu      255,r1                ; |380| 
        andn      r1,f0                 ; |380| Bit mask for F32/F40 conversion
        stf       f0,*+fp(7)            ; |380| Store high half
        sti       r0,*+fp(8)            ; |380| Store low half
	.line	26
;----------------------------------------------------------------------
; 381 | minv = AO[i].TRIM_MIN.calc_val*(float)DAC_TRIM_F_1[i+DAC_Aout1]/DAC_TRI
;     | M_I_1[i+DAC_Aout1];                                                    
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar1              ; |381| 
        ldiu      *+fp(22),ar0          ; |381| 
        ldiu      ar0,ir0               ; |381| 
        mpyi      419,ar0               ; |381| 
        ldp       @CL28,DP
        ldfu      *+ar1(ir0),f0         ; |381| 
        addi      @CL28,ar0             ; |381| Unsigned
        ldfu      f0,f1                 ; |381| Move F32 into F40 for CONV
        ldfu      *ar0,f0               ; |381| 40b float hi half
        ldiu      255,r2                ; |381| 
        andn      r2,f1                 ; |381| Bit mask for F32/F40 conversion
        ldiu      *+ar0,r0              ; |381| 40b float lo half
        call      MPY_LD                ; |381| 
                                        ; |381| Call Occurs
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |381| 
        ldiu      *+fp(22),ir0          ; |381| 
        ldiu      *+ar0(ir0),r1         ; |381| 
        float     r1,f1                 ; |381| 
        call      DIV_LD                ; |381| 
                                        ; |381| Call Occurs
        stf       f0,*+fp(1)            ; |381| Store high half
        sti       r0,*+fp(2)            ; |381| Store low half
	.line	27
;----------------------------------------------------------------------
; 382 | maxv = AO[i].TRIM_MAX.calc_val*(float)DAC_TRIM_F_1[i+DAC_Aout1]/DAC_TRI
;     | M_I_1[i+DAC_Aout1];                                                    
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      *+fp(22),ir0          ; |382| 
        ldiu      @CL5,ar0              ; |382| 
        ldfu      *+ar0(ir0),f0         ; |382| 
        ldiu      ir0,ar0               ; |382| 
        mpyi      419,ar0               ; |382| 
        ldp       @CL29,DP
        ldfu      f0,f1                 ; |382| Move F32 into F40 for CONV
        addi      @CL29,ar0             ; |382| Unsigned
        ldiu      255,r2                ; |382| 
        ldfu      *ar0,f0               ; |382| 40b float hi half
        andn      r2,f1                 ; |382| Bit mask for F32/F40 conversion
        ldiu      *+ar0,r0              ; |382| 40b float lo half
        call      MPY_LD                ; |382| 
                                        ; |382| Call Occurs
        ldp       @CL4,DP
        ldiu      *+fp(22),ir0          ; |382| 
        ldiu      @CL4,ar0              ; |382| 
        ldiu      *+ar0(ir0),r1         ; |382| 
        float     r1,f1                 ; |382| 
        call      DIV_LD                ; |382| 
                                        ; |382| Call Occurs
        stf       f0,*+fp(3)            ; |382| Store high half
        sti       r0,*+fp(4)            ; |382| Store low half
	.line	29
;----------------------------------------------------------------------
; 384 | if ((AO[i].v.val != -2) || (AO[i].MANUAL))                             
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |384| 
        ldp       @CL24,DP
        mpyi      419,ir0               ; |384| 
        ldiu      @CL24,ar0             ; |384| 
        ldiu      *+ar0(ir0),r0         ; |384| 
        cmpi      -2,r0                 ; |384| 
        bne       L87                   ; |384| 
;*      Branch Occurs to L87            ; |384| 
        ldiu      *+fp(22),ir0          ; |384| 
        ldp       @CL30,DP
        mpyi      419,ir0               ; |384| 
        ldiu      @CL30,ar0             ; |384| 
        ldiu      *+ar0(ir0),r0         ; |384| 
        cmpi      0,r0                  ; |384| 
        beq       L88                   ; |384| 
;*      Branch Occurs to L88            ; |384| 
L87:        
	.line	30
;----------------------------------------------------------------------
; 385 | PID_Init(i);    /* this is here to prevent problems when switching betw
;     | een NORMAL/MANUAL & PID */                                             
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      *+fp(22),ar2          ; |385| 
        ldiu      @CL31,r0              ; |385| 
        callu     r0                    ; far call to _PID_Init	; |385| 
                                        ; |385| Far Call Occurs
L88:        
	.line	32
;----------------------------------------------------------------------
; 387 | if (AO[i].v.val == -2)                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |387| 
        ldp       @CL24,DP
        mpyi      419,ir0               ; |387| 
        ldiu      @CL24,ar0             ; |387| 
        ldiu      *+ar0(ir0),r0         ; |387| 
        cmpi      -2,r0                 ; |387| 
        bne       L106                  ; |387| 
;*      Branch Occurs to L106           ; |387| 
	.line	34
;----------------------------------------------------------------------
; 389 | if (AO[i].MANUAL)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |389| 
        ldp       @CL30,DP
        mpyi      419,ir0               ; |389| 
        ldiu      @CL30,ar0             ; |389| 
        ldiu      *+ar0(ir0),r0         ; |389| 
        cmpi      0,r0                  ; |389| 
        beq       L102                  ; |389| 
;*      Branch Occurs to L102           ; |389| 
	.line	36
;----------------------------------------------------------------------
; 391 | if (AO[i].MANUAL_PERCENT > 100.0)       /* check bounds of manual % */ 
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |391| 
        ldp       @CL32,DP
        mpyi      419,ir0               ; |391| 
        ldiu      @CL32,ar0             ; |391| 
        ldfu      1.0000000000e+02,f0   ; |391| 
        cmpf3     f0,*+ar0(ir0)         ; |391| 
        ble       L92                   ; |391| 
;*      Branch Occurs to L92            ; |391| 
	.line	37
;----------------------------------------------------------------------
; 392 | AO[i].MANUAL_PERCENT = 100.0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |392| 
        ldp       @CL32,DP
        mpyi      419,ir0               ; |392| 
        ldiu      @CL32,ar0             ; |392| 
        ldfu      1.0000000000e+02,f0   ; |392| 
        stf       f0,*+ar0(ir0)         ; |392| 
        bu        L94                   ; |355| 
;*      Branch Occurs to L94            ; |355| 
L92:        
	.line	38
;----------------------------------------------------------------------
; 393 | else if (AO[i].MANUAL_PERCENT<0.0)                                     
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |393| 
        ldp       @CL32,DP
        mpyi      419,ir0               ; |393| 
        ldiu      @CL32,ar0             ; |393| 
        ldfu      0.0000000000e+00,f0   ; |393| 
        cmpf3     f0,*+ar0(ir0)         ; |393| 
        bge       L94                   ; |393| 
;*      Branch Occurs to L94            ; |393| 
	.line	39
;----------------------------------------------------------------------
; 394 | AO[i].MANUAL_PERCENT = 0.0;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |394| 
        ldp       @CL32,DP
        mpyi      419,ir0               ; |394| 
        ldiu      @CL32,ar0             ; |394| 
        ldfu      0.0000000000e+00,f0   ; |394| 
        stf       f0,*+ar0(ir0)         ; |394| 
L94:        
	.line	41
;----------------------------------------------------------------------
; 396 | t = AO[i].MANUAL_PERCENT;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |396| 
        ldp       @CL32,DP
        mpyi      419,ir0               ; |396| 
        ldiu      @CL32,ar0             ; |396| 
        ldiu      255,r1                ; |396| 
        ldfu      *+ar0(ir0),f0         ; |396| 
        andn      r1,f0                 ; |396| Bit mask for F32/F40 conversion
        stf       f0,*+fp(13)           ; |396| Store high half
        sti       r0,*+fp(14)           ; |396| Store low half
	.line	43
;----------------------------------------------------------------------
; 398 | if (AO[i].PID_enable_failsafe && AO[i].PID_fail)                       
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |398| 
        ldp       @CL33,DP
        mpyi      419,ir0               ; |398| 
        ldiu      @CL33,ar0             ; |398| 
        ldiu      *+ar0(ir0),r0         ; |398| 
        cmpi      0,r0                  ; |398| 
        beq       L99                   ; |398| 
;*      Branch Occurs to L99            ; |398| 
        ldiu      *+fp(22),ir0          ; |398| 
        ldp       @CL34,DP
        mpyi      419,ir0               ; |398| 
        ldiu      @CL34,ar0             ; |398| 
        ldiu      *+ar0(ir0),r0         ; |398| 
        cmpi      0,r0                  ; |398| 
        beq       L99                   ; |398| 
;*      Branch Occurs to L99            ; |398| 
	.line	45
;----------------------------------------------------------------------
; 400 | PID_Init(i);                                                           
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      *+fp(22),ar2          ; |400| 
        ldiu      @CL31,r0              ; |400| 
        callu     r0                    ; far call to _PID_Init	; |400| 
                                        ; |400| Far Call Occurs
	.line	47
;----------------------------------------------------------------------
; 402 | if (AO[i].REVERSE)                                                     
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      *+fp(22),ir0          ; |402| 
        ldiu      @CL35,ar0             ; |402| 
        mpyi      419,ir0               ; |402| 
        ldiu      *+ar0(ir0),r0         ; |402| 
        cmpi      0,r0                  ; |402| 
        beq       L98                   ; |402| 
;*      Branch Occurs to L98            ; |402| 
	.line	48
;----------------------------------------------------------------------
; 403 | t = 100.0;                                                             
; 404 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL36+0,DP
        ldfu      @CL36+0,f0            ; |403| 40b float hi half
        ldp       @CL36+1,DP
        ldiu      @CL36+1,r0            ; |403| 40b float lo half
        stf       f0,*+fp(13)           ; |403| Store high half
        sti       r0,*+fp(14)           ; |403| Store low half
        bu        L99                   ; |355| 
;*      Branch Occurs to L99            ; |355| 
L98:        
	.line	50
;----------------------------------------------------------------------
; 405 | t = 0.0;                                                               
;----------------------------------------------------------------------
        ldp       @CL22+0,DP
        ldfu      @CL22+0,f0            ; |405| 40b float hi half
        ldp       @CL22+1,DP
        ldiu      @CL22+1,r0            ; |405| 40b float lo half
        stf       f0,*+fp(13)           ; |405| Store high half
        sti       r0,*+fp(14)           ; |405| Store low half
L99:        
	.line	53
;----------------------------------------------------------------------
; 408 | if (AO[i].REVERSE)                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |408| 
        ldp       @CL35,DP
        mpyi      419,ir0               ; |408| 
        ldiu      @CL35,ar0             ; |408| 
        ldiu      *+ar0(ir0),r0         ; |408| 
        cmpi      0,r0                  ; |408| 
        beq       L101                  ; |408| 
;*      Branch Occurs to L101           ; |408| 
	.line	54
;----------------------------------------------------------------------
; 409 | m = ((maxc-minc)*(100.0-t)/100.0) + minc;                              
; 410 | else                                                                   
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |409| 40b float hi half
        ldfu      *+fp(7),f2            ; |409| 40b float hi half
        ldfu      *+fp(13),f1           ; |409| 40b float hi half
        ldiu      *+fp(6),r0            ; |409| 40b float lo half
        ldiu      *+fp(8),r2            ; |409| 40b float lo half
        ldiu      *+fp(14),r1           ; |409| 40b float lo half
        subf3     f0,f2,f0              ; |409| 
        subrf     1.0000000000e+02,f1   ; |409| 
        call      MPY_LD                ; |409| 
                                        ; |409| Call Occurs
        ldp       @CL37+0,DP
        ldfu      @CL37+0,f1            ; |409| 40b float hi half
        ldp       @CL37+1,DP
        ldiu      @CL37+1,r1            ; |409| 40b float lo half
        call      MPY_LD                ; |409| 
                                        ; |409| Call Occurs
        ldfu      *+fp(5),f1            ; |409| 40b float hi half
        ldiu      *+fp(6),r1            ; |409| 40b float lo half
        addf      f0,f1                 ; |409| High Precision ADD
        stf       f1,*+fp(15)           ; |409| Store high half
        sti       r1,*+fp(16)           ; |409| Store low half
        bu        L105                  ; |355| 
;*      Branch Occurs to L105           ; |355| 
L101:        
	.line	56
;----------------------------------------------------------------------
; 411 | m = ((maxc-minc)*t/100.0) + minc;                                      
; 413 | else                                                                   
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |411| 40b float hi half
        ldfu      *+fp(7),f2            ; |411| 40b float hi half
        ldfu      *+fp(13),f1           ; |411| 40b float hi half
        ldiu      *+fp(6),r0            ; |411| 40b float lo half
        ldiu      *+fp(8),r2            ; |411| 40b float lo half
        ldiu      *+fp(14),r1           ; |411| 40b float lo half
        subf3     f0,f2,f0              ; |411| 
        call      MPY_LD                ; |411| 
                                        ; |411| Call Occurs
        ldp       @CL37+0,DP
        ldfu      @CL37+0,f1            ; |411| 40b float hi half
        ldp       @CL37+1,DP
        ldiu      @CL37+1,r1            ; |411| 40b float lo half
        call      MPY_LD                ; |411| 
                                        ; |411| Call Occurs
        ldfu      *+fp(5),f1            ; |411| 40b float hi half
        ldiu      *+fp(6),r1            ; |411| 40b float lo half
        addf      f0,f1                 ; |411| High Precision ADD
        stf       f1,*+fp(15)           ; |411| Store high half
        sti       r1,*+fp(16)           ; |411| Store low half
        bu        L105                  ; |355| 
;*      Branch Occurs to L105           ; |355| 
L102:        
	.line	60
;----------------------------------------------------------------------
; 415 | y = PID(i);                                                            
; 417 | //account for reverse mode! 10/22/2015                                 
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      *+fp(22),ar2          ; |415| 
        ldiu      @CL38,r0              ; |415| 
        callu     r0                    ; far call to _PID	; |415| 
                                        ; |415| Far Call Occurs
        ldiu      255,r1                ; |415| 
        andn      r1,f0                 ; |415| Bit mask for F32/F40 conversion
        stf       f0,*+fp(17)           ; |415| Store high half
        sti       r0,*+fp(18)           ; |415| Store low half
	.line	63
;----------------------------------------------------------------------
; 418 | if (!AO[i].REVERSE)                                                    
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      *+fp(22),ir0          ; |418| 
        ldiu      @CL35,ar0             ; |418| 
        mpyi      419,ir0               ; |418| 
        ldiu      *+ar0(ir0),r0         ; |418| 
        cmpi      0,r0                  ; |418| 
        bne       L104                  ; |418| 
;*      Branch Occurs to L104           ; |418| 
	.line	64
;----------------------------------------------------------------------
; 419 | m = ((maxc-minc)*y/100.0) + minc;                                      
; 420 | else //reverse mode                                                    
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |419| 40b float hi half
        ldfu      *+fp(7),f2            ; |419| 40b float hi half
        ldfu      *+fp(17),f1           ; |419| 40b float hi half
        ldiu      *+fp(6),r0            ; |419| 40b float lo half
        ldiu      *+fp(8),r2            ; |419| 40b float lo half
        ldiu      *+fp(18),r1           ; |419| 40b float lo half
        subf3     f0,f2,f0              ; |419| 
        call      MPY_LD                ; |419| 
                                        ; |419| Call Occurs
        ldp       @CL37+0,DP
        ldfu      @CL37+0,f1            ; |419| 40b float hi half
        ldp       @CL37+1,DP
        ldiu      @CL37+1,r1            ; |419| 40b float lo half
        call      MPY_LD                ; |419| 
                                        ; |419| Call Occurs
        ldfu      *+fp(5),f1            ; |419| 40b float hi half
        ldiu      *+fp(6),r1            ; |419| 40b float lo half
        addf      f0,f1                 ; |419| High Precision ADD
        stf       f1,*+fp(15)           ; |419| Store high half
        sti       r1,*+fp(16)           ; |419| Store low half
        bu        L105                  ; |355| 
;*      Branch Occurs to L105           ; |355| 
L104:        
	.line	66
;----------------------------------------------------------------------
; 421 | m = ((maxc-minc)*(100-y)/100.0) + minc;                                
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |421| 40b float hi half
        ldfu      *+fp(7),f2            ; |421| 40b float hi half
        ldfu      *+fp(17),f1           ; |421| 40b float hi half
        ldiu      *+fp(6),r0            ; |421| 40b float lo half
        ldiu      *+fp(8),r2            ; |421| 40b float lo half
        ldiu      *+fp(18),r1           ; |421| 40b float lo half
        subf3     f0,f2,f0              ; |421| 
        subrf     1.0000000000e+02,f1   ; |421| 
        call      MPY_LD                ; |421| 
                                        ; |421| Call Occurs
        ldp       @CL37+0,DP
        ldfu      @CL37+0,f1            ; |421| 40b float hi half
        ldp       @CL37+1,DP
        ldiu      @CL37+1,r1            ; |421| 40b float lo half
        call      MPY_LD                ; |421| 
                                        ; |421| Call Occurs
        ldfu      *+fp(5),f1            ; |421| 40b float hi half
        ldiu      *+fp(6),r1            ; |421| 40b float lo half
        addf      f0,f1                 ; |421| High Precision ADD
        stf       f1,*+fp(15)           ; |421| Store high half
        sti       r1,*+fp(16)           ; |421| Store low half
L105:        
	.line	69
;----------------------------------------------------------------------
; 424 | VAR_Update(&AO[i].CURRENT, m, 0, 0);                                   
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      *+fp(22),ar2          ; |424| 
        ldfu      *+fp(15),f2           ; |424| 40b float hi half
        ldiu      0,rc                  ; |424| 
        ldiu      @CL7,r0               ; |424| 
        mpyi      419,ar2               ; |424| 
        ldp       @CL13,DP
        ldiu      *+fp(16),r2           ; |424| 40b float lo half
        addi      @CL13,ar2             ; |424| Unsigned
        ldiu      0,r3                  ; |424| 
        callu     r0                    ; far call to _VAR_Update	; |424| 
                                        ; |424| Far Call Occurs
        bu        L108                  ; |355| 
;*      Branch Occurs to L108           ; |355| 
L106:        
	.line	71
;----------------------------------------------------------------------
; 426 | else if (AO[i].v.val < 0)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |426| 
        ldp       @CL24,DP
        mpyi      419,ir0               ; |426| 
        ldiu      @CL24,ar0             ; |426| 
        ldiu      *+ar0(ir0),r0         ; |426| 
        cmpi      0,r0                  ; |426| 
        bge       L108                  ; |426| 
;*      Branch Occurs to L108           ; |426| 
	.line	72
;----------------------------------------------------------------------
; 427 | AO[i].MANUAL = TRUE;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |427| 
        ldp       @CL30,DP
        mpyi      419,ir0               ; |427| 
        ldiu      @CL30,ar0             ; |427| 
        ldiu      1,r0                  ; |427| 
        sti       r0,*+ar0(ir0)         ; |427| 
L108:        
	.line	74
;----------------------------------------------------------------------
; 429 | if (AO[i].v.val>=-1)                                                   
; 430 | {// HART mode                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |429| 
        ldp       @CL24,DP
        mpyi      419,ir0               ; |429| 
        ldiu      @CL24,ar0             ; |429| 
        ldiu      *+ar0(ir0),r0         ; |429| 
        cmpi      -1,r0                 ; |429| 
        blt       L131                  ; |429| 
;*      Branch Occurs to L131           ; |429| 
	.line	76
;----------------------------------------------------------------------
; 431 | v = HART_Lookup(AO[i].v.val, &ui, (int*)&HART_DV_Table);               
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      *+fp(22),ir0          ; |431| 
        ldiu      fp,r2                 ; |431| 
        ldiu      @CL24,ar0             ; |431| 
        mpyi      419,ir0               ; |431| 
        ldp       @CL40,DP
        ldiu      *+ar0(ir0),ar2        ; |431| 
        ldiu      @CL40,r0              ; |431| 
        ldp       @CL39,DP
        addi      21,r2                 ; |431| 
        ldiu      @CL39,r3              ; |431| 
        callu     r0                    ; far call to _HART_Lookup	; |431| 
                                        ; |431| Far Call Occurs
        sti       r0,*+fp(20)           ; |431| 
	.line	89
;----------------------------------------------------------------------
; 444 | if  ( (  !SA && (PORT[4].Slave != 0) ) || (!DIO_HART_5.val && !LOOP_ENA
;     | BLED.val) )                                                            
; 445 | { //    EEA, PORT4 !Slave0  || !HART, !LOOP_ENABLED                    
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |444| 
        ldiu      *ar0,r0               ; |444| 
        cmpi      0,r0                  ; |444| 
        bne       L111                  ; |444| 
;*      Branch Occurs to L111           ; |444| 
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |444| 
        ldiu      *ar0,r0               ; |444| 
        cmpi      0,r0                  ; |444| 
        bne       L113                  ; |444| 
;*      Branch Occurs to L113           ; |444| 
L111:        
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |444| 
        ldiu      *ar0,r0               ; |444| 
        cmpi      0,r0                  ; |444| 
        bne       L114                  ; |444| 
;*      Branch Occurs to L114           ; |444| 
        ldp       @CL43,DP
        ldiu      @CL43,ar0             ; |444| 
        ldiu      *ar0,r0               ; |444| 
        cmpi      0,r0                  ; |444| 
        bne       L114                  ; |444| 
;*      Branch Occurs to L114           ; |444| 
L113:        
	.line	91
;----------------------------------------------------------------------
; 446 | AO[0].MANUAL = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |446| 
        ldiu      1,r0                  ; |446| 
        sti       r0,*ar0               ; |446| 
	.line	92
;----------------------------------------------------------------------
; 447 | VAR_Update(&AO[0].CURRENT, VAR_Get_Unit_Param(&AO[0].CURRENT, reg_direc
;     | t_bmin, 0, 0), 0, 0);                                                  
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar2             ; |447| 
        ldp       @CL26,DP
        ldiu      @CL26,r0              ; |447| 
        ldp       @CL25,DP
        ldiu      0,rc                  ; |447| 
        ldiu      @CL25,r2              ; |447| 
        ldiu      0,r3                  ; |447| 
        callu     r0                    ; far call to _VAR_Get_Unit_Param	; |447| 
                                        ; |447| Far Call Occurs
        ldp       @CL13,DP
        ldiu      255,r1                ; |447| 
        ldiu      @CL13,ar2             ; |447| 
        ldfu      f0,f2                 ; |447| Move F32 into F40 for CONV
        ldp       @CL7,DP
        andn      r1,f2                 ; |447| Bit mask for F32/F40 conversion
        ldiu      @CL7,r0               ; |447| 
        ldiu      0,rc                  ; |447| 
        ldiu      0,r3                  ; |447| 
        callu     r0                    ; far call to _VAR_Update	; |447| 
                                        ; |447| Far Call Occurs
L114:        
	.line	95
;----------------------------------------------------------------------
; 450 | if (AO[i].MANUAL)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |450| 
        ldp       @CL30,DP
        mpyi      419,ir0               ; |450| 
        ldiu      @CL30,ar0             ; |450| 
        ldiu      *+ar0(ir0),r0         ; |450| 
        cmpi      0,r0                  ; |450| 
        beq       L119                  ; |450| 
;*      Branch Occurs to L119           ; |450| 
	.line	97
;----------------------------------------------------------------------
; 452 | y = AO[i].CURRENT.val;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |452| 
        ldp       @CL13,DP
        mpyi      419,ir0               ; |452| 
        ldiu      @CL13,ar0             ; |452| 
        ldiu      255,r1                ; |452| 
        ldfu      *+ar0(ir0),f0         ; |452| 
        andn      r1,f0                 ; |452| Bit mask for F32/F40 conversion
        stf       f0,*+fp(17)           ; |452| Store high half
        sti       r0,*+fp(18)           ; |452| Store low half
	.line	99
;----------------------------------------------------------------------
; 454 | if (y > maxc)                                                          
;----------------------------------------------------------------------
        ldfu      *+fp(7),f1            ; |454| 40b float hi half
        ldfu      *+fp(17),f0           ; |454| 40b float hi half
        ldiu      *+fp(8),r1            ; |454| 40b float lo half
        ldiu      *+fp(18),r0           ; |454| 40b float lo half
        cmpf      f1,f0                 ; |454| 
        ble       L117                  ; |454| 
;*      Branch Occurs to L117           ; |454| 
	.line	101
;----------------------------------------------------------------------
; 456 | y = maxc;                                                              
;----------------------------------------------------------------------
        ldfu      f1,f0                 ; |456| High precision move
        stf       f0,*+fp(17)           ; |456| Store high half
        sti       r0,*+fp(18)           ; |456| Store low half
	.line	103
;----------------------------------------------------------------------
; 458 | VAR_Update(&AO[i].CURRENT, y, 0, 0);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(22),ar2          ; |458| 
        ldp       @CL7,DP
        mpyi      419,ar2               ; |458| 
        ldiu      @CL7,r0               ; |458| 
        ldfu      *+fp(17),f2           ; |458| 40b float hi half
        ldp       @CL13,DP
        ldiu      0,rc                  ; |458| 
        addi      @CL13,ar2             ; |458| Unsigned
        ldiu      *+fp(18),r2           ; |458| 40b float lo half
        ldiu      0,r3                  ; |458| 
        callu     r0                    ; far call to _VAR_Update	; |458| 
                                        ; |458| Far Call Occurs
        bu        L131                  ; |355| 
;*      Branch Occurs to L131           ; |355| 
L117:        
	.line	105
;----------------------------------------------------------------------
; 460 | else if (y < minc)                                                     
;----------------------------------------------------------------------
        ldfu      *+fp(17),f1           ; |460| 40b float hi half
        ldfu      *+fp(5),f0            ; |460| 40b float hi half
        ldiu      *+fp(18),r1           ; |460| 40b float lo half
        ldiu      *+fp(6),r0            ; |460| 40b float lo half
        cmpf      f0,f1                 ; |460| 
        bge       L131                  ; |460| 
;*      Branch Occurs to L131           ; |460| 
	.line	107
;----------------------------------------------------------------------
; 462 | y = minc;                                                              
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |462| 40b float hi half
        ldiu      *+fp(6),r0            ; |462| 40b float lo half
        stf       f0,*+fp(17)           ; |462| Store high half
        sti       r0,*+fp(18)           ; |462| Store low half
	.line	109
;----------------------------------------------------------------------
; 464 | VAR_Update(&AO[i].CURRENT, y, 0, 0);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(22),ar2          ; |464| 
        ldp       @CL7,DP
        mpyi      419,ar2               ; |464| 
        ldiu      @CL7,r0               ; |464| 
        ldfu      *+fp(17),f2           ; |464| 40b float hi half
        ldp       @CL13,DP
        ldiu      0,rc                  ; |464| 
        addi      @CL13,ar2             ; |464| Unsigned
        ldiu      *+fp(18),r2           ; |464| 40b float lo half
        ldiu      0,r3                  ; |464| 
        callu     r0                    ; far call to _VAR_Update	; |464| 
                                        ; |464| Far Call Occurs
        bu        L131                  ; |355| 
;*      Branch Occurs to L131           ; |355| 
L119:        
	.line	112
;----------------------------------------------------------------------
; 467 | else if ((v->STAT & (var_NaNum|var_bound_hi|var_bound_lo|var_alarm_hi|v
;     | ar_alarm_lo)) || (v==&REG_DUMMY))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(20),ar0          ; |467| 
        ldiu      248,r0                ; |467| 
        tstb      *+ar0(3),r0           ; |467| 
        bne       L121                  ; |467| 
;*      Branch Occurs to L121           ; |467| 
        ldp       @CL44,DP
        ldiu      ar0,r0
        cmpi      @CL44,r0              ; |467| 
        bne       L130                  ; |467| 
;*      Branch Occurs to L130           ; |467| 
L121:        
	.line	115
;----------------------------------------------------------------------
; 470 | if ((v->STAT & var_NaNum) || (v==&REG_DUMMY))                          
; 471 | {// NaN or Dummy                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(20),ar0          ; |470| 
        ldiu      8,r0                  ; |470| 
        tstb      *+ar0(3),r0           ; |470| 
        bne       L123                  ; |470| 
;*      Branch Occurs to L123           ; |470| 
        ldp       @CL44,DP
        ldiu      ar0,r0
        cmpi      @CL44,r0              ; |470| 
        bne       L126                  ; |470| 
;*      Branch Occurs to L126           ; |470| 
L123:        
	.line	117
;----------------------------------------------------------------------
; 472 | if (AO[i].ALARM_SELECT)                                                
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |472| 
        ldp       @CL45,DP
        mpyi      419,ir0               ; |472| 
        ldiu      @CL45,ar0             ; |472| 
        ldiu      *+ar0(ir0),r0         ; |472| 
        cmpi      0,r0                  ; |472| 
        beq       L125                  ; |472| 
;*      Branch Occurs to L125           ; |472| 
	.line	118
;----------------------------------------------------------------------
; 473 | VAR_Update(&AO[i].CURRENT, minc, 0, 0);                                
; 474 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      *+fp(22),ar2          ; |473| 
        ldfu      *+fp(5),f2            ; |473| 40b float hi half
        ldiu      0,rc                  ; |473| 
        ldiu      @CL7,r0               ; |473| 
        mpyi      419,ar2               ; |473| 
        ldp       @CL13,DP
        ldiu      *+fp(6),r2            ; |473| 40b float lo half
        addi      @CL13,ar2             ; |473| Unsigned
        ldiu      0,r3                  ; |473| 
        callu     r0                    ; far call to _VAR_Update	; |473| 
                                        ; |473| Far Call Occurs
        bu        L131                  ; |355| 
;*      Branch Occurs to L131           ; |355| 
L125:        
	.line	120
;----------------------------------------------------------------------
; 475 | VAR_Update(&AO[i].CURRENT, maxc, 0, 0);                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      *+fp(22),ar2          ; |475| 
        ldfu      *+fp(7),f2            ; |475| 40b float hi half
        ldiu      0,rc                  ; |475| 
        ldiu      @CL7,r0               ; |475| 
        mpyi      419,ar2               ; |475| 
        ldp       @CL13,DP
        ldiu      *+fp(8),r2            ; |475| 40b float lo half
        addi      @CL13,ar2             ; |475| Unsigned
        ldiu      0,r3                  ; |475| 
        callu     r0                    ; far call to _VAR_Update	; |475| 
                                        ; |475| Far Call Occurs
        bu        L131                  ; |355| 
;*      Branch Occurs to L131           ; |355| 
L126:        
	.line	122
;----------------------------------------------------------------------
; 477 | else if (v->STAT & (var_bound_lo|var_alarm_lo)) // lo bound or alarm   
;----------------------------------------------------------------------
        ldiu      *+fp(20),ar0          ; |477| 
        ldiu      160,r0                ; |477| 
        tstb      *+ar0(3),r0           ; |477| 
        beq       L128                  ; |477| 
;*      Branch Occurs to L128           ; |477| 
	.line	123
;----------------------------------------------------------------------
; 478 | VAR_Update(&AO[i].CURRENT, minc, 0, 0);                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      *+fp(22),ar2          ; |478| 
        ldfu      *+fp(5),f2            ; |478| 40b float hi half
        ldiu      0,rc                  ; |478| 
        ldiu      @CL7,r0               ; |478| 
        mpyi      419,ar2               ; |478| 
        ldp       @CL13,DP
        ldiu      *+fp(6),r2            ; |478| 40b float lo half
        addi      @CL13,ar2             ; |478| Unsigned
        ldiu      0,r3                  ; |478| 
        callu     r0                    ; far call to _VAR_Update	; |478| 
                                        ; |478| Far Call Occurs
        bu        L131                  ; |355| 
;*      Branch Occurs to L131           ; |355| 
L128:        
	.line	124
;----------------------------------------------------------------------
; 479 | else if (v->STAT & (var_bound_hi|var_alarm_hi)) // hi bound or alarm   
;----------------------------------------------------------------------
        ldiu      *+fp(20),ar0          ; |479| 
        ldiu      80,r0                 ; |479| 
        tstb      *+ar0(3),r0           ; |479| 
        beq       L131                  ; |479| 
;*      Branch Occurs to L131           ; |479| 
	.line	125
;----------------------------------------------------------------------
; 480 | VAR_Update(&AO[i].CURRENT, maxc, 0, 0);                                
; 483 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      *+fp(22),ar2          ; |480| 
        ldfu      *+fp(7),f2            ; |480| 40b float hi half
        ldiu      0,rc                  ; |480| 
        ldiu      @CL7,r0               ; |480| 
        mpyi      419,ar2               ; |480| 
        ldp       @CL13,DP
        ldiu      *+fp(8),r2            ; |480| 40b float lo half
        addi      @CL13,ar2             ; |480| Unsigned
        ldiu      0,r3                  ; |480| 
        callu     r0                    ; far call to _VAR_Update	; |480| 
                                        ; |480| Far Call Occurs
        bu        L131                  ; |355| 
;*      Branch Occurs to L131           ; |355| 
L130:        
	.line	130
;----------------------------------------------------------------------
; 485 | lrv     = Convert(AO[i].class.val, AO[i].LRV.unit, AO[i].unit.val, AO[i
;     | ].LRV.val, 0, AO[i].LRV.aux);                                          
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |485| 
        ldiu      ir0,r0                ; |485| 
        ldiu      r0,ir1                ; |485| 
        ldiu      r0,r1                 ; |485| 
        ldp       @CL49,DP
        ldiu      @CL49,ar0             ; |485| 
        ldp       @CL48,DP
        mpyi      419,ir0               ; |485| 
        ldiu      @CL48,ar1             ; |485| 
        ldp       @CL50,DP
        ldiu      r0,r2                 ; |485| 
        ldiu      @CL50,ar4             ; |485| 
        mpyi      419,r1                ; |485| 
        ldp       @CL46,DP
        ldiu      @CL46,ar5             ; |485| 
        ldiu      255,rs                ; |485| 
        ldp       @CL47,DP
        mpyi      419,ir1               ; |485| 
        ldiu      @CL47,ar2             ; |485| 
        mpyi      419,r0                ; |485| 
        ldfu      *+ar0(ir0),f4         ; |485| 
        ldiu      r1,ir0                ; |485| 
        ldiu      *+ar1(ir0),r1         ; |485| 
        ldiu      r0,ir0                ; |485| 
        ldiu      r1,rc                 ; |485| 
        mpyi      419,r2                ; |485| 
        ldiu      r2,r3                 ; |485| 
        ldfu      f4,f2                 ; |485| Move F32 into F40 for CONV
        ldiu      *+ar4(ir1),r4         ; |485| 
        ldp       @CL51,DP
        ldiu      r3,ir1                ; |485| 
        andn      rs,f2                 ; |485| Bit mask for F32/F40 conversion

        ldiu      *+ar2(ir1),r3         ; |485| 
||      ldiu      *+ar5(ir0),r0         ; |485| 

        ldiu      @CL51,bk              ; |485| 
        ldiu      0,rs                  ; |485| 
        ldiu      r0,ar2                ; |485| 
        ldiu      r4,re                 ; |485| 
        callu     bk                    ; far call to _Convert	; |485| 
                                        ; |485| Far Call Occurs
        stf       f0,*+fp(11)           ; |485| Store high half
        sti       r0,*+fp(12)           ; |485| Store low half
	.line	131
;----------------------------------------------------------------------
; 486 | urv     = Convert(AO[i].class.val, AO[i].URV.unit, AO[i].unit.val, AO[i
;     | ].URV.val, 0, AO[i].URV.aux);                                          
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |486| 
        ldiu      ir0,r0                ; |486| 
        ldiu      r0,r1                 ; |486| 
        ldiu      ir0,ir1               ; |486| 
        ldp       @CL53,DP
        ldiu      @CL53,ar2             ; |486| 
        ldp       @CL48,DP
        ldiu      @CL48,ar1             ; |486| 
        ldp       @CL54,DP
        ldiu      @CL54,ar4             ; |486| 
        ldp       @CL46,DP
        ldiu      @CL46,ar5             ; |486| 
        ldp       @CL52,DP
        mpyi      419,ir0               ; |486| 
        ldiu      @CL52,ar0             ; |486| 
        mpyi      419,ir1               ; |486| 
        ldiu      r0,r2                 ; |486| 
        mpyi      419,r1                ; |486| 
        ldiu      255,rs                ; |486| 
        mpyi      419,r0                ; |486| 
        mpyi      419,r2                ; |486| 
        ldiu      r2,r3                 ; |486| 
        ldfu      *+ar2(ir0),f2         ; |486| 
        ldiu      r1,ir0                ; |486| 

        ldiu      *+ar4(ir0),r4         ; |486| 
||      ldiu      *+ar1(ir1),r1         ; |486| 

        andn      rs,f2                 ; |486| Bit mask for F32/F40 conversion
        ldiu      r4,re                 ; |486| 
        ldiu      0,rs                  ; |486| 
        ldiu      r3,ir1                ; |486| 
        ldiu      r0,ir0                ; |486| 
        ldp       @CL51,DP

        ldiu      *+ar0(ir1),r3         ; |486| 
||      ldiu      *+ar5(ir0),r0         ; |486| 

        ldiu      r0,ar2                ; |486| 
        ldiu      @CL51,bk              ; |486| 
        ldiu      r1,rc                 ; |486| 
        callu     bk                    ; far call to _Convert	; |486| 
                                        ; |486| Far Call Occurs
        stf       f0,*+fp(9)            ; |486| Store high half
        sti       r0,*+fp(10)           ; |486| Store low half
	.line	132
;----------------------------------------------------------------------
; 487 | m               = (maxc-minc)/(urv-lrv);                               
;----------------------------------------------------------------------
        ldfu      *+fp(7),f1            ; |487| 40b float hi half
        ldfu      *+fp(5),f0            ; |487| 40b float hi half
        ldiu      *+fp(8),r1            ; |487| 40b float lo half
        ldiu      *+fp(6),r0            ; |487| 40b float lo half
        subf3     f0,f1,f0              ; |487| 
        ldfu      *+fp(9),f1            ; |487| 40b float hi half
        ldfu      *+fp(11),f2           ; |487| 40b float hi half
        ldiu      *+fp(12),r2           ; |487| 40b float lo half
        ldiu      *+fp(10),r1           ; |487| 40b float lo half
        subf3     f2,f1,f1              ; |487| 
        call      DIV_LD                ; |487| 
                                        ; |487| Call Occurs
        stf       f0,*+fp(15)           ; |487| Store high half
        sti       r0,*+fp(16)           ; |487| Store low half
	.line	133
;----------------------------------------------------------------------
; 488 | current = m * (Convert(AO[i].class.val, v->unit,AO[i].unit.val, v->val,
;     | 0, v->aux) - AO[i].LRV.val) + minc;                                    
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,ar2             ; |488| 
        ldiu      *+fp(20),ar0          ; |488| 
        ldp       @CL46,DP
        ldfu      *ar0,f0               ; |488| 
        ldiu      @CL46,ar0             ; |488| 
        ldp       @CL51,DP
        ldiu      *+fp(22),ir0          ; |488| 
        ldiu      ir0,ir1               ; |488| 
        ldiu      @CL51,bk              ; |488| 
        mpyi      419,ir0               ; |488| 
        mpyi      419,ir1               ; |488| 
        ldiu      255,rs                ; |488| 
        ldiu      *+fp(20),ar4          ; |488| 
        ldfu      f0,f2                 ; |488| Move F32 into F40 for CONV
        ldiu      *+ar4(6),re           ; |488| 
        ldiu      ar4,ar1               ; |488| 

        ldiu      *+ar0(ir1),r0         ; |488| 
||      ldiu      *+ar2(ir0),r1         ; |488| 

        ldiu      *+ar1(13),r3          ; |488| 
        ldiu      r1,rc                 ; |488| 
        andn      rs,f2                 ; |488| Bit mask for F32/F40 conversion
        ldiu      0,rs                  ; |488| 
        ldiu      r0,ar2                ; |488| 
        callu     bk                    ; far call to _Convert	; |488| 
                                        ; |488| Far Call Occurs
        ldiu      *+fp(22),ir0          ; |488| 
        ldp       @CL49,DP
        mpyi      419,ir0               ; |488| 
        ldiu      @CL49,ar0             ; |488| 
        ldfu      *+ar0(ir0),f1         ; |488| 
        ldfu      f1,f2                 ; |488| Move F32 into F40 for CONV
        ldfu      f0,f1                 ; |488| High precision move
        ldiu      255,r3                ; |488| 
        ldfu      *+fp(15),f0           ; |488| 40b float hi half
        andn      r3,f2                 ; |488| Bit mask for F32/F40 conversion
        ldiu      *+fp(16),r0           ; |488| 40b float lo half
        subf3     f2,f1,f1              ; |488| 
        call      MPY_LD                ; |488| 
                                        ; |488| Call Occurs
        ldfu      *+fp(5),f1            ; |488| 40b float hi half
        ldiu      *+fp(6),r1            ; |488| 40b float lo half
        addf      f0,f1                 ; |488| High Precision ADD
        rnd       f1,f0                 ; |488| Demote to low precision
        stf       f0,*+fp(19)           ; |488| 
	.line	135
;----------------------------------------------------------------------
; 490 | VAR_Update(&AO[i].CURRENT, current, 0, 0);                             
;----------------------------------------------------------------------
        ldiu      *+fp(22),ar2          ; |490| 
        mpyi      419,ar2               ; |490| 
        ldp       @CL13,DP
        ldiu      255,r3                ; |490| 
        addi      @CL13,ar2             ; |490| Unsigned
        ldfu      f0,f2                 ; |490| Move F32 into F40 for CONV
        ldp       @CL7,DP
        andn      r3,f2                 ; |490| Bit mask for F32/F40 conversion
        ldiu      @CL7,r1               ; |490| 
        ldiu      0,rc                  ; |490| 
        ldiu      0,r3                  ; |490| 
        callu     r1                    ; far call to _VAR_Update	; |490| 
                                        ; |490| Far Call Occurs
L131:        
	.line	145
;----------------------------------------------------------------------
; 500 | m = (maxv-minv)/(AO[i].TRIM_MAX_C-AO[i].TRIM_MIN_C);                   
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      *+fp(22),ir0          ; |500| 
        ldfu      *+fp(1),f0            ; |500| 40b float hi half
        ldfu      *+fp(3),f3            ; |500| 40b float hi half
        ldiu      255,r2                ; |500| 
        ldiu      @CL56,ar0             ; |500| 
        ldiu      ir0,ir1               ; |500| 
        ldiu      *+fp(2),r0            ; |500| 40b float lo half
        ldiu      *+fp(4),r3            ; |500| 40b float lo half
        ldp       @CL55,DP
        mpyi      419,ir1               ; |500| 
        mpyi      419,ir0               ; |500| 
        ldiu      @CL55,ar1             ; |500| 
        subf3     f0,f3,f0              ; |500| 
        subf3     *+ar0(ir0),*+ar1(ir1),f1 ; |500| 
        andn      r2,f1                 ; |500| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |500| 
                                        ; |500| Call Occurs
        stf       f0,*+fp(15)           ; |500| Store high half
        sti       r0,*+fp(16)           ; |500| Store low half
	.line	146
;----------------------------------------------------------------------
; 501 | y = m*(AO[i].CURRENT.val-AO[i].TRIM_MIN_C) + minv;                     
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar1             ; |501| 
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |501| 
        ldiu      *+fp(22),ir1          ; |501| 
        ldiu      ir1,ir0               ; |501| 
        mpyi      419,ir0               ; |501| 
        mpyi      419,ir1               ; |501| 
        ldiu      255,r2                ; |501| 
        subf3     *+ar1(ir1),*+ar0(ir0),f0 ; |501| 
        ldfu      f0,f1                 ; |501| Move F32 into F40 for CONV
        ldfu      *+fp(15),f0           ; |501| 40b float hi half
        andn      r2,f1                 ; |501| Bit mask for F32/F40 conversion
        ldiu      *+fp(16),r0           ; |501| 40b float lo half
        call      MPY_LD                ; |501| 
                                        ; |501| Call Occurs
        ldfu      *+fp(1),f1            ; |501| 40b float hi half
        ldiu      *+fp(2),r1            ; |501| 40b float lo half
        addf      f0,f1                 ; |501| High Precision ADD
        stf       f1,*+fp(17)           ; |501| Store high half
        sti       r1,*+fp(18)           ; |501| Store low half
	.line	148
;----------------------------------------------------------------------
; 503 | VAR_Update(&REG_DAC[i], y, 0, 0);                                      
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,r0               ; |503| 
        ldiu      0,rc                  ; |503| 
        ldp       @CL1,DP
        ldiu      *+fp(22),ar2          ; |503| 
        mpyi      44,ar2                ; |503| 
        addi      @CL1,ar2              ; |503| Unsigned
        ldfu      f1,f2                 ; |503| High precision move
        ldiu      0,r3                  ; |503| 
        callu     r0                    ; far call to _VAR_Update	; |503| 
                                        ; |503| Far Call Occurs
	.line	149
;----------------------------------------------------------------------
; 504 | Write_DAC(i);                                                          
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,r0              ; |504| 
        ldiu      *+fp(22),ar2          ; |504| 
        callu     r0                    ; far call to _Write_DAC	; |504| 
                                        ; |504| Far Call Occurs
	.line	151
;----------------------------------------------------------------------
; 506 | m = 100.0/( maxc - minc );                                             
;----------------------------------------------------------------------
        ldp       @CL36+0,DP
        ldfu      @CL36+0,f0            ; |506| 40b float hi half
        ldfu      *+fp(7),f2            ; |506| 40b float hi half
        ldfu      *+fp(5),f1            ; |506| 40b float hi half
        ldp       @CL36+1,DP
        ldiu      *+fp(8),r2            ; |506| 40b float lo half
        ldiu      @CL36+1,r0            ; |506| 40b float lo half
        ldiu      *+fp(6),r1            ; |506| 40b float lo half
        subf3     f1,f2,f1              ; |506| 
        call      DIV_LD                ; |506| 
                                        ; |506| Call Occurs
        stf       f0,*+fp(15)           ; |506| Store high half
        sti       r0,*+fp(16)           ; |506| Store low half
	.line	152
;----------------------------------------------------------------------
; 507 | y = m * (AO[i].CURRENT.val - minc);                                    
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      *+fp(22),ir0          ; |507| 
        mpyi      419,ir0               ; |507| 
        ldiu      @CL13,ar0             ; |507| 
        ldfu      *+ar0(ir0),f1         ; |507| 
        ldiu      255,r0                ; |507| 
        andn      r0,f1                 ; |507| Bit mask for F32/F40 conversion
        ldfu      *+fp(15),f0           ; |507| 40b float hi half
        ldfu      *+fp(5),f2            ; |507| 40b float hi half
        ldiu      *+fp(16),r0           ; |507| 40b float lo half
        ldiu      *+fp(6),r2            ; |507| 40b float lo half
        subf3     f2,f1,f1              ; |507| 
        call      MPY_LD                ; |507| 
                                        ; |507| Call Occurs
        stf       f0,*+fp(17)           ; |507| Store high half
        sti       r0,*+fp(18)           ; |507| Store low half
	.line	154
;----------------------------------------------------------------------
; 509 | if (y >= 100.0)                                                        
;----------------------------------------------------------------------
        ldp       @CL36+0,DP
        ldfu      @CL36+0,f1            ; |509| 40b float hi half
        ldfu      *+fp(17),f0           ; |509| 40b float hi half
        ldp       @CL36+1,DP
        ldiu      @CL36+1,r1            ; |509| 40b float lo half
        ldiu      *+fp(18),r0           ; |509| 40b float lo half
        cmpf      f1,f0                 ; |509| 
        blt       L133                  ; |509| 
;*      Branch Occurs to L133           ; |509| 
	.line	155
;----------------------------------------------------------------------
; 510 | y  = 100.0;                                                            
;----------------------------------------------------------------------
        ldp       @CL36+0,DP
        ldfu      @CL36+0,f0            ; |510| 40b float hi half
        ldp       @CL36+1,DP
        ldiu      @CL36+1,r0            ; |510| 40b float lo half
        stf       f0,*+fp(17)           ; |510| Store high half
        sti       r0,*+fp(18)           ; |510| Store low half
L133:        
	.line	157
;----------------------------------------------------------------------
; 512 | if (y <= 0.0)                                                          
;----------------------------------------------------------------------
        ldp       @CL22+0,DP
        ldfu      *+fp(17),f0           ; |512| 40b float hi half
        ldfu      @CL22+0,f1            ; |512| 40b float hi half
        ldp       @CL22+1,DP
        ldiu      *+fp(18),r0           ; |512| 40b float lo half
        ldiu      @CL22+1,r1            ; |512| 40b float lo half
        cmpf      f1,f0                 ; |512| 
        bgt       L135                  ; |512| 
;*      Branch Occurs to L135           ; |512| 
	.line	158
;----------------------------------------------------------------------
; 513 | y  = 0.0;                                                              
; 515 | //Restore the reversed value so that CURRENT_PERCENT_OF_RANGE represent
;     | s the VALVE POSITION!                                                  
;----------------------------------------------------------------------
        ldp       @CL22+0,DP
        ldfu      @CL22+0,f0            ; |513| 40b float hi half
        ldp       @CL22+1,DP
        ldiu      @CL22+1,r0            ; |513| 40b float lo half
        stf       f0,*+fp(17)           ; |513| Store high half
        sti       r0,*+fp(18)           ; |513| Store low half
L135:        
	.line	161
;----------------------------------------------------------------------
; 516 | if ((AO[i].v.val == -2) && (AO[i].REVERSE))                            
;----------------------------------------------------------------------
        ldiu      *+fp(22),ir0          ; |516| 
        ldp       @CL24,DP
        mpyi      419,ir0               ; |516| 
        ldiu      @CL24,ar0             ; |516| 
        ldiu      *+ar0(ir0),r0         ; |516| 
        cmpi      -2,r0                 ; |516| 
        bne       L138                  ; |516| 
;*      Branch Occurs to L138           ; |516| 
        ldiu      *+fp(22),ir0          ; |516| 
        ldp       @CL35,DP
        mpyi      419,ir0               ; |516| 
        ldiu      @CL35,ar0             ; |516| 
        ldiu      *+ar0(ir0),r0         ; |516| 
        cmpi      0,r0                  ; |516| 
        beq       L138                  ; |516| 
;*      Branch Occurs to L138           ; |516| 
	.line	162
;----------------------------------------------------------------------
; 517 | y = 100.0 - y;                                                         
;----------------------------------------------------------------------
        ldfu      *+fp(17),f0           ; |517| 40b float hi half
        ldiu      *+fp(18),r0           ; |517| 40b float lo half
        subrf     1.0000000000e+02,f0   ; |517| 
        stf       f0,*+fp(17)           ; |517| Store high half
        sti       r0,*+fp(18)           ; |517| Store low half
L138:        
	.line	164
;----------------------------------------------------------------------
; 519 | VAR_Update(&AO[i].CURRENT_PERCENT_OF_RANGE, y, 0, 0);                  
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      *+fp(22),ar2          ; |519| 
        ldfu      *+fp(17),f2           ; |519| 40b float hi half
        ldiu      0,rc                  ; |519| 
        ldiu      @CL7,r0               ; |519| 
        mpyi      419,ar2               ; |519| 
        ldp       @CL14,DP
        ldiu      *+fp(18),r2           ; |519| 40b float lo half
        addi      @CL14,ar2             ; |519| Unsigned
        ldiu      0,r3                  ; |519| 
        callu     r0                    ; far call to _VAR_Update	; |519| 
                                        ; |519| Far Call Occurs
L139:        
	.line	16
        ldiu      1,r0                  ; |371| 
        addi      *+fp(22),r0           ; |371| 
        sti       r0,*+fp(22)           ; |371| 
        cmpi      9,r0                  ; |371| 
        blt       L80                   ; |371| 
;*      Branch Occurs to L80            ; |371| 
L140:        
	.line	167
;----------------------------------------------------------------------
; 522 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	168
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar5
        pop       ar4
        pop       r4
                                        ; Unallocate the Frame
        subi      24,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	523,000003010h,22


	.sect	 ".text"

	.global	_PID_Init
	.sym	_PID_Init,_PID_Init,32,2,0
	.func	537
;******************************************************************************
;* FUNCTION NAME: _PID_Init                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,ar0,ar1,ar2,ir0,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_PID_Init:
;* ar2   assigned to _loop
	.sym	_loop,10,4,17,32
	.sym	_loop,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 537 | void PID_Init(int loop)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |538| 
	.line	3
;----------------------------------------------------------------------
; 539 | if ((loop<0) || (loop>=AO_NLOOPS))                                     
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      0,r0                  ; |539| 
        blt       L148                  ; |539| 
;*      Branch Occurs to L148           ; |539| 
        cmpi      9,r0                  ; |539| 
        blt       L147                  ; |539| 
;*      Branch Occurs to L147           ; |539| 
        bu        L148                  ; |539| 
;*      Branch Occurs to L148           ; |539| 
	.line	4
;----------------------------------------------------------------------
; 540 | return;                                                                
;----------------------------------------------------------------------
L147:        
	.line	6
;----------------------------------------------------------------------
; 542 | AO[loop].pid_output         = 0.0;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |542| 
        ldp       @CL57,DP
        mpyi      419,ir0               ; |542| 
        ldiu      @CL57,ar0             ; |542| 
        ldfu      0.0000000000e+00,f0   ; |542| 
        stf       f0,*+ar0(ir0)         ; |542| 
	.line	7
;----------------------------------------------------------------------
; 543 | AO[loop].pid_error          = 0.0;                                     
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      *+fp(1),ir0           ; |543| 
        ldiu      @CL58,ar0             ; |543| 
        mpyi      419,ir0               ; |543| 
        ldfu      0.0000000000e+00,f0   ; |543| 
        stf       f0,*+ar0(ir0)         ; |543| 
	.line	8
;----------------------------------------------------------------------
; 544 | AO[loop].PID_input          = 0.0;                                     
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      *+fp(1),ir0           ; |544| 
        ldiu      @CL59,ar0             ; |544| 
        mpyi      419,ir0               ; |544| 
        ldfu      0.0000000000e+00,f0   ; |544| 
        stf       f0,*+ar0(ir0)         ; |544| 
	.line	9
;----------------------------------------------------------------------
; 545 | AO[loop].pid_bias           = 0.0;                                     
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(1),ir0           ; |545| 
        ldiu      @CL60,ar0             ; |545| 
        mpyi      419,ir0               ; |545| 
        ldfu      0.0000000000e+00,f0   ; |545| 
        stf       f0,*+ar0(ir0)         ; |545| 
	.line	10
;----------------------------------------------------------------------
; 546 | AO[loop].pid_lastcycle  = *TMR1_CNT;                                   
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldiu      @CL62,ar1             ; |546| 
        ldp       @CL61,DP
        ldiu      *+fp(1),ir0           ; |546| 
        ldiu      @CL61,ar0             ; |546| 
        mpyi      419,ir0               ; |546| 
        ldiu      *ar1,r0               ; |546| 
        sti       r0,*+ar0(ir0)         ; |546| 
L148:        
	.line	11
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	547,000000000h,1


	.sect	 ".text"

	.global	_PID
	.sym	_PID,_PID,39,2,0
	.func	561
;******************************************************************************
;* FUNCTION NAME: _PID                                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,f2,ar0,ar1,ar2,ir0,ir1,st                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 14 Auto + 0 SOE = 16 words        *
;******************************************************************************
_PID:
;* ar2   assigned to _loop
	.sym	_loop,10,4,17,32
	.sym	_loop,1,4,1,32
	.sym	_P,2,7,1,32
	.sym	_I,3,7,1,32
	.sym	_D,4,7,1,32
	.sym	_sp,5,7,1,32
	.sym	_new_out,6,7,1,32
	.sym	_delta_bias,7,7,1,32
	.sym	_e,8,7,1,32
	.sym	_last_e,9,7,1,32
	.sym	_delta_e,10,7,1,32
	.sym	_dt,11,7,1,32
	.sym	_c,12,4,1,32
	.sym	_delta,13,4,1,32
	.sym	_per,14,4,1,32
	.line	1
;----------------------------------------------------------------------
; 561 | double PID(int loop)                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      14,sp
	.line	2
;----------------------------------------------------------------------
; 563 | double P;                   /* PID propband
;     |      */                                                                
; 564 | double I;                   /* Analog out I value                   */ 
; 565 | double D;                   /* Analog out D value                   */ 
; 566 | //double kd;                /* Analog out P value                   */ 
; 567 | double sp;                  // setpoint
;     |      */                                                                
; 568 | double new_out;             // new output                              
; 569 | double delta_bias;  // change in bias                                  
; 570 |     double e;                       // current error                   
; 571 | double last_e;              // last error                              
; 572 |     double delta_e;         // current error - last error              
; 573 |     //double last_out;      // last output <-- not needed for this PID
;     | scheme 10/16/2015                                                      
; 574 | double dt;                  /* delta time
;     |      */                                                                
; 575 | int c, delta, per;  /* Timer1 Count, time delta, Timer1 per */         
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |562| 
	.line	17
;----------------------------------------------------------------------
; 577 | if ((loop<0) || (loop>=AO_NLOOPS))  /* check range */                  
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      0,r0                  ; |577| 
        blt       L152                  ; |577| 
;*      Branch Occurs to L152           ; |577| 
        cmpi      9,r0                  ; |577| 
        blt       L153                  ; |577| 
;*      Branch Occurs to L153           ; |577| 
L152:        
	.line	18
;----------------------------------------------------------------------
; 578 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L183                  ; |578| 
	nop
	nop
        ldfu      0.0000000000e+00,f0   ; |578| 
;*      Branch Occurs to L183           ; |578| 
L153:        
	.line	20
;----------------------------------------------------------------------
; 580 | if (!AO[loop].present)                          /* present? */         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |580| 
        ldp       @CL15,DP
        mpyi      419,ir0               ; |580| 
        ldiu      @CL15,ar0             ; |580| 
        ldiu      *+ar0(ir0),r0         ; |580| 
        cmpi      0,r0                  ; |580| 
        bne       L155                  ; |580| 
;*      Branch Occurs to L155           ; |580| 
	.line	21
;----------------------------------------------------------------------
; 581 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L183                  ; |581| 
	nop
	nop
        ldfu      0.0000000000e+00,f0   ; |581| 
;*      Branch Occurs to L183           ; |581| 
L155:        
	.line	23
;----------------------------------------------------------------------
; 583 | if (AO[loop].PID_enable_failsafe && AO[loop].PID_fail)                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |583| 
        ldp       @CL33,DP
        mpyi      419,ir0               ; |583| 
        ldiu      @CL33,ar0             ; |583| 
        ldiu      *+ar0(ir0),r0         ; |583| 
        cmpi      0,r0                  ; |583| 
        beq       L158                  ; |583| 
;*      Branch Occurs to L158           ; |583| 
        ldiu      *+fp(1),ir0           ; |583| 
        ldp       @CL34,DP
        mpyi      419,ir0               ; |583| 
        ldiu      @CL34,ar0             ; |583| 
        ldiu      *+ar0(ir0),r0         ; |583| 
        cmpi      0,r0                  ; |583| 
        beq       L158                  ; |583| 
;*      Branch Occurs to L158           ; |583| 
	.line	25
;----------------------------------------------------------------------
; 585 | PID_Init(loop);                                                        
; 586 | // DKOH | OCT-29-2019 | [Bug 62] v6.13.32 Failsafe seems to be working
;     | the opposite http://bug.phasedynamics.com/bugzilla/show_bug.cgi?id=62  
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      *+fp(1),ar2           ; |585| 
        ldiu      @CL31,r0              ; |585| 
        callu     r0                    ; far call to _PID_Init	; |585| 
                                        ; |585| Far Call Occurs
	.line	34
;----------------------------------------------------------------------
; 594 | return 100.0;                                                          
; 595 | // DKOH | OCT-29-2019 | [Bug 62] v6.13.32 Failsafe seems to be working
;     | the opposite http://bug.phasedynamics.com/bugzilla/show_bug.cgi?id=62  
;----------------------------------------------------------------------
        bud       L183                  ; |594| 
	nop
	nop
        ldfu      1.0000000000e+02,f0   ; |594| 
;*      Branch Occurs to L183           ; |594| 
L158:        
	.line	39
;----------------------------------------------------------------------
; 599 | c = *TMR1_CNT;                                                         
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldiu      @CL62,ar0             ; |599| 
        ldiu      *ar0,r0               ; |599| 
        sti       r0,*+fp(12)           ; |599| 
	.line	42
;----------------------------------------------------------------------
; 602 | if (c >= AO[loop].pid_lastcycle)                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |602| 
        ldp       @CL61,DP
        mpyi      419,ir0               ; |602| 
        ldiu      @CL61,ar0             ; |602| 
        cmpi3     *+ar0(ir0),r0         ; |602| 
        blt       L160                  ; |602| 
;*      Branch Occurs to L160           ; |602| 
	.line	43
;----------------------------------------------------------------------
; 603 | delta = c - AO[loop].pid_lastcycle;                                    
; 604 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |603| 
        ldp       @CL61,DP
        mpyi      419,ir0               ; |603| 
        ldiu      @CL61,ar0             ; |603| 
        ldiu      *+ar0(ir0),r0         ; |603| 
        subri     *+fp(12),r0           ; |603| 
        sti       r0,*+fp(13)           ; |603| 
        bu        L161                  ; |560| 
;*      Branch Occurs to L161           ; |560| 
L160:        
	.line	46
;----------------------------------------------------------------------
; 606 | per       = *TMR1_PER;                                                 
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldiu      @CL63,ar0             ; |606| 
        ldiu      *ar0,r0               ; |606| 
        sti       r0,*+fp(14)           ; |606| 
	.line	47
;----------------------------------------------------------------------
; 607 | delta = (per - AO[loop].pid_lastcycle) + c;                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |607| 
        ldp       @CL61,DP
        mpyi      419,ir0               ; |607| 
        ldiu      @CL61,ar0             ; |607| 
        ldiu      *+ar0(ir0),r0         ; |607| 
        subri     *+fp(14),r0           ; |607| 
        addi      *+fp(12),r0           ; |607| 
        sti       r0,*+fp(13)           ; |607| 
L161:        
	.line	50
;----------------------------------------------------------------------
; 610 | dt  = delta;                                                           
;----------------------------------------------------------------------
        float     *+fp(13),f0           ; |610| 
        stf       f0,*+fp(11)           ; |610| 
	.line	51
;----------------------------------------------------------------------
; 611 | dt /= TMR1_FREQ;                                /* Clock/2 = 27648000 H
;     | z */                                                                   
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar0             ; |611| 
        ldp       @CL65,DP
        float     *ar0,f1               ; |611| 
        ldflt     @CL65,f0              ; |611| 
        ldfge     0.0000000000e+00,f0   ; |611| 
        ldp       @CL6,DP
        addf3     f1,f0,f1              ; |611| 
        ldfu      *+fp(11),f0           ; |611| 
        mpyf      @CL6,f1               ; |611| 
        call      DIV_F30               ; |611| 
                                        ; |611| Call Occurs
        stf       f0,*+fp(11)           ; |611| 
	.line	52
;----------------------------------------------------------------------
; 612 | dt /= 60.0;                                             /* convert to m
;     | inutes */                                                              
;----------------------------------------------------------------------
        ldp       @CL66,DP
        ldfu      @CL66,f0              ; |612| 
        mpyf      *+fp(11),f0           ; |612| 
        stf       f0,*+fp(11)           ; |612| 
	.line	54
;----------------------------------------------------------------------
; 614 | if (dt <= 0.0)                                      /* check for underf
;     | low on dt */                                                           
;----------------------------------------------------------------------
        cmpf      0.0000000000e+00,f0   ; |614| 
        bgt       L163                  ; |614| 
;*      Branch Occurs to L163           ; |614| 
	.line	55
;----------------------------------------------------------------------
; 615 | return AO[loop].pid_output;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |615| 
        ldp       @CL57,DP
        bud       L183                  ; |615| 
        mpyi      419,ir0               ; |615| 
        ldiu      @CL57,ar0             ; |615| 
        ldfu      *+ar0(ir0),f0         ; |615| 
;*      Branch Occurs to L183           ; |615| 
L163:        
	.line	57
;----------------------------------------------------------------------
; 617 | AO[loop].pid_lastcycle  = c;    /* cycle count for next pass */        
; 620 |         //kd                                            = AO[loop].P.va
;     | l;       /* P input */                                                 
; 621 |         //AO[loop].pid_propband = 1.0/(MIN_CYCLE*kd);   /* proportional
;     |  band = 1/(.1*kd)  */                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |617| 
        ldp       @CL61,DP
        mpyi      419,ir0               ; |617| 
        ldiu      @CL61,ar0             ; |617| 
        ldiu      *+fp(12),r0           ; |617| 
        sti       r0,*+ar0(ir0)         ; |617| 
	.line	63
;----------------------------------------------------------------------
; 623 | AO[loop].pid_propband   = AO[loop].P.val;       //new PID 9/29/2015    
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldiu      *+fp(1),ir1           ; |623| 
        ldiu      @CL68,ar1             ; |623| 
        ldiu      ir1,ir0               ; |623| 
        ldp       @CL67,DP
        mpyi      419,ir1               ; |623| 
        mpyi      419,ir0               ; |623| 
        ldiu      @CL67,ar0             ; |623| 
        ldfu      *+ar1(ir1),f0         ; |623| 
        stf       f0,*+ar0(ir0)         ; |623| 
	.line	65
;----------------------------------------------------------------------
; 625 | if (AO[loop].pid_propband > MAX_PBAND)                  /* Check if P >
;     |  1000 ? set to 1000 : do nothing */                                    
;----------------------------------------------------------------------
        ldiu      @CL67,ar0             ; |625| 
        ldiu      *+fp(1),ir0           ; |625| 
        ldp       @CL69,DP
        mpyi      419,ir0               ; |625| 
        ldfu      @CL69,f0              ; |625| 
        cmpf3     f0,*+ar0(ir0)         ; |625| 
        ble       L165                  ; |625| 
;*      Branch Occurs to L165           ; |625| 
	.line	66
;----------------------------------------------------------------------
; 626 | AO[loop].pid_propband = MAX_PBAND;                                     
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ir0           ; |626| 
        ldiu      @CL67,ar0             ; |626| 
        ldp       @CL69,DP
        mpyi      419,ir0               ; |626| 
        ldfu      @CL69,f0              ; |626| 
        stf       f0,*+ar0(ir0)         ; |626| 
L165:        
	.line	68
;----------------------------------------------------------------------
; 628 | P = AO[loop].pid_propband;          /*** P ***/                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |628| 
        ldp       @CL67,DP
        mpyi      419,ir0               ; |628| 
        ldiu      @CL67,ar0             ; |628| 
        ldfu      *+ar0(ir0),f0         ; |628| 
        stf       f0,*+fp(2)            ; |628| 
	.line	75
;----------------------------------------------------------------------
; 635 | if (AO[loop].I.val <= 0.0)          /* Check if I < 0 ? set to 1000 : d
;     | o nothing*/                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |635| 
        ldp       @CL70,DP
        mpyi      419,ir0               ; |635| 
        ldiu      @CL70,ar0             ; |635| 
        ldfu      0.0000000000e+00,f0   ; |635| 
        cmpf3     f0,*+ar0(ir0)         ; |635| 
        bgt       L167                  ; |635| 
;*      Branch Occurs to L167           ; |635| 
	.line	76
;----------------------------------------------------------------------
; 636 | AO[loop].I.val  = 10000.0;      /* should set to 10x10^6 */            
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ir0           ; |636| 
        ldiu      @CL70,ar0             ; |636| 
        ldp       @CL71,DP
        mpyi      419,ir0               ; |636| 
        ldfu      @CL71,f0              ; |636| 
        stf       f0,*+ar0(ir0)         ; |636| 
L167:        
	.line	78
;----------------------------------------------------------------------
; 638 | I = AO[loop].I.val;                             /*** I ***/            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |638| 
        ldp       @CL70,DP
        mpyi      419,ir0               ; |638| 
        ldiu      @CL70,ar0             ; |638| 
        ldfu      *+ar0(ir0),f0         ; |638| 
        stf       f0,*+fp(3)            ; |638| 
	.line	80
;----------------------------------------------------------------------
; 640 | if (AO[loop].D.val < 0.0)           /* Check D < 0 ? set to 0 : do noth
;     | ing */                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |640| 
        ldp       @CL72,DP
        mpyi      419,ir0               ; |640| 
        ldiu      @CL72,ar0             ; |640| 
        ldfu      0.0000000000e+00,f0   ; |640| 
        cmpf3     f0,*+ar0(ir0)         ; |640| 
        bge       L169                  ; |640| 
;*      Branch Occurs to L169           ; |640| 
	.line	81
;----------------------------------------------------------------------
; 641 | AO[loop].D.val = 0.0;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |641| 
        ldp       @CL72,DP
        mpyi      419,ir0               ; |641| 
        ldiu      @CL72,ar0             ; |641| 
        ldfu      0.0000000000e+00,f0   ; |641| 
        stf       f0,*+ar0(ir0)         ; |641| 
L169:        
	.line	83
;----------------------------------------------------------------------
; 643 | D  = AO[loop].D.val;                    /*** D ***/                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |643| 
        ldp       @CL72,DP
        mpyi      419,ir0               ; |643| 
        ldiu      @CL72,ar0             ; |643| 
        ldfu      *+ar0(ir0),f0         ; |643| 
        stf       f0,*+fp(4)            ; |643| 
	.line	85
;----------------------------------------------------------------------
; 645 | last_e  = AO[loop].pid_error;   // get last error                      
; 646 | //last_out = AO[loop].pid_output; // get last output <-- not needed for
;     |  this PID scheme 10/16/2015                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |645| 
        ldp       @CL58,DP
        mpyi      419,ir0               ; |645| 
        ldiu      @CL58,ar0             ; |645| 
        ldfu      *+ar0(ir0),f0         ; |645| 
        stf       f0,*+fp(9)            ; |645| 
	.line	88
;----------------------------------------------------------------------
; 648 | sp = AO[loop].PID_setpoint;             //setpoint                     
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      *+fp(1),ir0           ; |648| 
        mpyi      419,ir0               ; |648| 
        ldiu      @CL73,ar0             ; |648| 
        ldfu      *+ar0(ir0),f0         ; |648| 
        stf       f0,*+fp(5)            ; |648| 
	.line	90
;----------------------------------------------------------------------
; 650 | e = AO[loop].PID_input - sp;    //current error                        
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      *+fp(1),ir0           ; |650| 
        mpyi      419,ir0               ; |650| 
        ldiu      @CL59,ar0             ; |650| 
        subf3     f0,*+ar0(ir0),f0      ; |650| 
        stf       f0,*+fp(8)            ; |650| 
	.line	92
;----------------------------------------------------------------------
; 652 | delta_e = e - last_e;                                                  
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |652| 
        subrf     *+fp(8),f0            ; |652| 
        stf       f0,*+fp(10)           ; |652| 
	.line	94
;----------------------------------------------------------------------
; 654 | delta_bias = e * dt/I;                                                 
;----------------------------------------------------------------------
        ldfu      *+fp(3),f1            ; |654| 
        ldfu      *+fp(11),f0           ; |654| 
        mpyf      *+fp(8),f0            ; |654| 
        call      DIV_F30               ; |654| 
                                        ; |654| Call Occurs
        stf       f0,*+fp(7)            ; |654| 
	.line	96
;----------------------------------------------------------------------
; 656 | AO[loop].pid_bias += delta_bias;                                       
; 658 | //enforce bias limits                                                  
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      *+fp(1),ir0           ; |656| 
        mpyi      419,ir0               ; |656| 
        ldiu      415,ar0               ; |656| 
        addi      @CL13,ir0             ; |656| Unsigned
        addf3     f0,*+ar0(ir0),f0      ; |656| 
        stf       f0,*+ar0(ir0)         ; |656| 
	.line	99
;----------------------------------------------------------------------
; 659 | if (AO[loop].pid_bias > 100)                                           
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(1),ir0           ; |659| 
        ldiu      @CL60,ar0             ; |659| 
        mpyi      419,ir0               ; |659| 
        ldfu      1.0000000000e+02,f0   ; |659| 
        cmpf3     f0,*+ar0(ir0)         ; |659| 
        ble       L171                  ; |659| 
;*      Branch Occurs to L171           ; |659| 
	.line	100
;----------------------------------------------------------------------
; 660 | AO[loop].pid_bias = 100;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |660| 
        ldp       @CL60,DP
        mpyi      419,ir0               ; |660| 
        ldiu      @CL60,ar0             ; |660| 
        ldfu      1.0000000000e+02,f0   ; |660| 
        stf       f0,*+ar0(ir0)         ; |660| 
L171:        
	.line	101
;----------------------------------------------------------------------
; 661 | if (AO[loop].pid_bias < -100)                                          
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(1),ir0           ; |661| 
        ldiu      @CL60,ar0             ; |661| 
        ldp       @CL74,DP
        mpyi      419,ir0               ; |661| 
        ldfu      @CL74,f0              ; |661| 
        cmpf3     f0,*+ar0(ir0)         ; |661| 
        bge       L173                  ; |661| 
;*      Branch Occurs to L173           ; |661| 
	.line	102
;----------------------------------------------------------------------
; 662 | AO[loop].pid_bias = -100;                                              
; 665 | // we multiply output by 10 to keep customer PID values roughly in the
;     | same range as the old PID                                              
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(1),ir0           ; |662| 
        ldiu      @CL60,ar0             ; |662| 
        ldp       @CL74,DP
        mpyi      419,ir0               ; |662| 
        ldfu      @CL74,f0              ; |662| 
        stf       f0,*+ar0(ir0)         ; |662| 
L173:        
	.line	106
;----------------------------------------------------------------------
; 666 | new_out = 10*P*(e + AO[loop].pid_bias + (D*delta_e)/dt);               
; 668 | //Don't further accumulate the bias if the output hits 100% or 0%      
;----------------------------------------------------------------------
        ldfu      *+fp(10),f0           ; |666| 
        ldfu      *+fp(11),f1           ; |666| 
        mpyf      *+fp(4),f0            ; |666| 
        call      DIV_F30               ; |666| 
                                        ; |666| Call Occurs
        ldp       @CL60,DP
        ldiu      *+fp(1),ir0           ; |666| 
        mpyi      419,ir0               ; |666| 
        ldiu      @CL60,ar0             ; |666| 
        ldfu      *+ar0(ir0),f2         ; |666| 
        ldfu      *+fp(2),f1            ; |666| 
        addf      *+fp(8),f2            ; |666| 
        mpyf      1.0000000000e+01,f1   ; |666| 
        addf3     f2,f0,f0              ; |666| 
        mpyf3     f0,f1,f0              ; |666| 
        stf       f0,*+fp(6)            ; |666| 
	.line	109
;----------------------------------------------------------------------
; 669 | if ( ((new_out > 100.0) && (delta_bias > 0)) || ((new_out < 0) && (delt
;     | a_bias < 0)) )                                                         
;----------------------------------------------------------------------
        cmpf      1.0000000000e+02,f0   ; |669| 
        ble       L175                  ; |669| 
;*      Branch Occurs to L175           ; |669| 
        ldfu      *+fp(7),f0            ; |669| 
        cmpf      0.0000000000e+00,f0   ; |669| 
        bgt       L177                  ; |669| 
;*      Branch Occurs to L177           ; |669| 
L175:        
        ldfu      *+fp(6),f0            ; |669| 
        cmpf      0.0000000000e+00,f0   ; |669| 
        bge       L178                  ; |669| 
;*      Branch Occurs to L178           ; |669| 
        ldfu      *+fp(7),f0            ; |669| 
        cmpf      0.0000000000e+00,f0   ; |669| 
        bge       L178                  ; |669| 
;*      Branch Occurs to L178           ; |669| 
L177:        
	.line	110
;----------------------------------------------------------------------
; 670 | AO[loop].pid_bias -= delta_bias; //undo the accumulate from earlier    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |670| 
        ldp       @CL13,DP
        mpyi      419,ir0               ; |670| 
        ldiu      415,ar0               ; |670| 
        addi      @CL13,ir0             ; |670| Unsigned
        ldfu      *+fp(7),f0            ; |670| 
        subf3     f0,*+ar0(ir0),f0      ; |670| 
        stf       f0,*+ar0(ir0)         ; |670| 
L178:        
	.line	113
;----------------------------------------------------------------------
; 673 | if (new_out > 100.0)        // Limit output to between 0 and 100%      
;----------------------------------------------------------------------
        ldfu      *+fp(6),f0            ; |673| 
        cmpf      1.0000000000e+02,f0   ; |673| 
        ble       L180                  ; |673| 
;*      Branch Occurs to L180           ; |673| 
	.line	114
;----------------------------------------------------------------------
; 674 | new_out = 100.0;                                                       
;----------------------------------------------------------------------
        ldfu      1.0000000000e+02,f0   ; |674| 
        stf       f0,*+fp(6)            ; |674| 
        bu        L182                  ; |560| 
;*      Branch Occurs to L182           ; |560| 
L180:        
	.line	115
;----------------------------------------------------------------------
; 675 | else if (new_out < 0.0)                                                
;----------------------------------------------------------------------
        ldfu      *+fp(6),f0            ; |675| 
        cmpf      0.0000000000e+00,f0   ; |675| 
        bge       L182                  ; |675| 
;*      Branch Occurs to L182           ; |675| 
	.line	116
;----------------------------------------------------------------------
; 676 | new_out = 0.0;                                                         
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |676| 
        stf       f0,*+fp(6)            ; |676| 
L182:        
	.line	118
;----------------------------------------------------------------------
; 678 | AO[loop].pid_output  = new_out;                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |678| 
        ldp       @CL57,DP
        mpyi      419,ir0               ; |678| 
        ldiu      @CL57,ar0             ; |678| 
        ldfu      *+fp(6),f0            ; |678| 
        stf       f0,*+ar0(ir0)         ; |678| 
	.line	119
;----------------------------------------------------------------------
; 679 | AO[loop].pid_error   = e;                                              
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      *+fp(1),ir0           ; |679| 
        ldiu      @CL58,ar0             ; |679| 
        mpyi      419,ir0               ; |679| 
        ldfu      *+fp(8),f0            ; |679| 
        stf       f0,*+ar0(ir0)         ; |679| 
	.line	121
;----------------------------------------------------------------------
; 681 | return new_out;                                                        
;----------------------------------------------------------------------
        ldfu      *+fp(6),f0            ; |681| 
L183:        
	.line	122
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |682| 
        ldiu      *fp,fp                ; |682| 
                                        ; Unallocate the Frame
        subi      16,sp                 ; |682| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	682,000000000h,14



	.global	_AO
_AO:	.usect	"CFG",3771,1
	.sym	_AO,_AO,56,2,120672,.fake16,9

	.global	_DAC_INT
	.bss	_DAC_INT,12
	.sym	_DAC_INT,_DAC_INT,52,2,384,,12
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
	.bss	CL22,2
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
	.bss	CL36,2
	.bss	CL37,2
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

	.sect	".cinit"
	.field  	77,32
	.field  	CL1+0,32
	.field  	_REG_DAC,32
	.field  	_SA,32
	.field  	_VAR_NaN,32
	.field  	_DAC_TRIM_I_1,32
	.field  	_DAC_TRIM_F_1,32
	.word   	0FF000000H ; double  5.000000000000000e-01
	.field  	_VAR_Update,32
	.field  	_DAC_INT,32
	.field  	8421448,32
	.field  	_SP0_RX_DATA,32
	.field  	8421452,32
	.field  	_REG_DAC+3,32
	.field  	_AO,32
	.field  	_AO+44,32
	.field  	_AO+416,32
	.field  	SW0,32
	.field  	_Write_ADC_DAC,32
	.field  	_PORT+70,32
	.field  	_MB_RX_DAC_Aout,32
	.field  	36865,32
	.field  	9437203,32
	.word   	080000000H ; ldouble 0.000000000000000e+00
	.word   	000000000H ; ldouble
	.field  	_Write_DAC,32
	.field  	_AO+268,32
	.field  	393216,32
	.field  	_VAR_Get_Unit_Param,32
	.field  	327680,32
	.field  	_AO+185,32
	.field  	_AO+229,32
	.field  	_AO+274,32
	.field  	_PID_Init,32
	.field  	_AO+275,32
	.field  	_AO+418,32
	.field  	_AO+417,32
	.field  	_AO+276,32
	.word   	006480000H ; ldouble 1.000000000000000e+02
	.word   	048000000H ; ldouble
	.word   	0F923D70AH ; ldouble 1.000000000000000e-02
	.word   	023D70A3DH ; ldouble
	.field  	_PID,32
	.field  	_HART_DV_Table,32
	.field  	_HART_Lookup,32
	.field  	_PORT+284,32
	.field  	_DIO_HART_5,32
	.field  	_LOOP_ENABLED,32
	.field  	_REG_DUMMY,32
	.field  	_AO+266,32
	.field  	_AO+270,32
	.field  	_AO+101,32
	.field  	_AO+272,32
	.field  	_AO+88,32
	.field  	_AO+94,32
	.field  	_Convert,32
	.field  	_AO+145,32
	.field  	_AO+132,32
	.field  	_AO+138,32
	.field  	_AO+265,32
	.field  	_AO+264,32
	.field  	_AO+412,32
	.field  	_AO+414,32
	.field  	_AO+277,32
	.field  	_AO+415,32
	.field  	_AO+411,32
	.field  	8421428,32
	.field  	8421432,32
	.field  	_CLOCK,32
	.word   	020000000H ; float   4.294967296000000e+09
	.word   	0FA088889H ; double  1.666666666666667e-02
	.field  	_AO+413,32
	.field  	_AO+279,32
	.word   	0097A0000H ; double  1.000000000000000e+03
	.field  	_AO+323,32
	.word   	00D1C4000H ; double  1.000000000000000e+04
	.field  	_AO+367,32
	.field  	_AO+278,32
	.word   	006B80000H ; float   -1.000000000000000e+02

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_VAR_Get_Unit_Param

	.global	_VAR_NaN

	.global	_VAR_Update

	.global	_Convert

	.global	_SP0_RX_DATA

	.global	_PORT

	.global	_Write_ADC_DAC

	.global	_CLOCK

	.global	_SA

	.global	_LOOP_ENABLED

	.global	_DIO_HART_5

	.global	_REG_DUMMY

	.global	_REG_DAC

	.global	_DAC_TRIM_F_1

	.global	_DAC_TRIM_I_1

	.global	_HART_Lookup

	.global	_HART_DV_Table
	.global	DIV_F30
	.global	DIV_LD
	.global	MPY_LD
