;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Nov 19 13:45:24 2018                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_6L4.AAA 
	.file	"main.c"
	.file	"GLBLS.H"
	.file	".\stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	".\format.h"
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
	.file	".\string.h"
	.sym	_size_t,0,14,13,32
	.file	".\stdio.h"
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
	.file	".\stdlib.h"
	.sym	_wchar_t,0,2,13,32
	.stag	__div_t,64
	.member	_quot,0,4,8,32
	.member	_rem,32,4,8,32
	.eos
	.sym	_div_t,0,8,13,64,__div_t
	.sym	_ldiv_t,0,8,13,64,__div_t
	.file	".\math.h"
	.file	".\time.h"
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
	.file	"ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"LIST.H"
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
	.file	"VARIABLE.H"
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
	.file	"BUFFER.H"
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
	.file	"UNITS.H"
	.file	"TIMER.H"
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
	.file	"I2C.H"
	.file	"ERRORS.H"
	.file	"SERIAL.H"
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
	.file	"ADC.H"
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
	.file	"DAC.H"
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
	.file	"EXECUTE.H"
	.stag	.fake17,128
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.eos
	.sym	_EPKT,0,8,13,128,.fake17
	.file	"FLASH.H"
	.file	"LOG.H"
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
	.file	"DEMO.H"
	.file	"SELFTEST.H"
	.file	"MENU.H"
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
	.file	"FLOAT1.H"
	.file	"GLBLS.H"
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
	.file	"HART.H"
	.file	"MODBUSRTU.H"
	.file	"MISC.H"
	.file	"API.H"
	.file	"main.c"
	.sect	 ".text"

	.global	_Debug
	.sym	_Debug,_Debug,32,2,0
	.func	41
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
;  41 | void Debug(void)                                                       
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
	.endfunc	42,000000000h,0


	.sect	 "initialization"

	.global	_Initialize_Variables
	.sym	_Initialize_Variables,_Initialize_Variables,32,2,0
	.func	57
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
;  57 | void Initialize_Variables(void)                                        
;  59 | int i,r;        /* counter; restore config successful   */             
;  60 | int port;       /* not used
;     |          */                                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	6
;----------------------------------------------------------------------
;  62 | r = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |62| 
        sti       r0,*+fp(2)            ; |62| 
	.line	8
;----------------------------------------------------------------------
;  64 | InitLog();                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,r0               ; |64| 
        callu     r0                    ; far call to _InitLog	; |64| 
                                        ; |64| Far Call Occurs
	.line	10
;----------------------------------------------------------------------
;  66 | if (MEM)                                                               
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |66| 
        ldiu      *ar0,r0               ; |66| 
        cmpi      0,r0                  ; |66| 
        beq       L6                    ; |66| 
;*      Branch Occurs to L6             ; |66| 
	.line	11
;----------------------------------------------------------------------
;  67 | Setup_Basics();                                                        
;  68 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |67| 
        callu     r0                    ; far call to _Setup_Basics	; |67| 
                                        ; |67| Far Call Occurs
        bu        L7                    ; |56| 
;*      Branch Occurs to L7             ; |56| 
L6:        
	.line	13
;----------------------------------------------------------------------
;  69 | r = Restore_CFG();                                                     
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |69| 
        callu     r0                    ; far call to _Restore_CFG	; |69| 
                                        ; |69| Far Call Occurs
        sti       r0,*+fp(2)            ; |69| 
L7:        
	.line	15
;----------------------------------------------------------------------
;  71 | DISABLE_WDOG;   /* restore & basics re-enables WDOG */                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |71| 
        ldiu      247,r0                ; |71| 
        and3      r0,*ar0,r0            ; |71| 
        sti       r0,*ar0               ; |71| 
	pop		ST			
	.line	17
;----------------------------------------------------------------------
;  73 | if (r)                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |73| 
        cmpi      0,r0                  ; |73| 
        beq       L9                    ; |73| 
;*      Branch Occurs to L9             ; |73| 
	.line	19
;----------------------------------------------------------------------
;  75 | DIAG_TEMP[0]                    = ERROR_NONE;                          
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |75| 
        ldiu      0,r0                  ; |75| 
        sti       r0,*ar0               ; |75| 
	.line	20
;----------------------------------------------------------------------
;  76 | DIAG_TEMP[1]                    = ERROR_NONE;                          
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |76| 
        sti       r0,*ar0               ; |76| 
	.line	21
;----------------------------------------------------------------------
;  77 | DIAGNOSTICS[0]                  = ERROR_RESET;                         
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |77| 
        ldiu      16384,r0              ; |77| 
        sti       r0,*ar0               ; |77| 
	.line	22
;----------------------------------------------------------------------
;  78 | DIAGNOSTICS[1]                  = ERROR_NONE;                          
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |78| 
        ldiu      0,r0                  ; |78| 
        sti       r0,*ar0               ; |78| 
	.line	23
;----------------------------------------------------------------------
;  79 | DIAGNOSTICS_MSG_CODE    = M_ERROR_RESET;                               
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |79| 
        ldiu      15,r0                 ; |79| 
        sti       r0,*ar0               ; |79| 
	.line	24
;----------------------------------------------------------------------
;  80 | DIAGNOSTICS_ERROR_CODE  = E_ERROR_NONE;                                
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |80| 
        ldiu      0,r0                  ; |80| 
        sti       r0,*ar0               ; |80| 
	.line	25
;----------------------------------------------------------------------
;  81 | CHANGE                                  = FALSE;                       
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |81| 
        sti       r0,*ar0               ; |81| 
	.line	26
;----------------------------------------------------------------------
;  82 | DATA_CHANGE.val                 = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |82| 
        sti       r0,*ar0               ; |82| 
L9:        
	.line	29
;----------------------------------------------------------------------
;  85 | sprintf(E_STRING,"");                                                  
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,r1              ; |85| 
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |85| 
        ldp       @CL15,DP
        push      r1                    ; |85| 
        ldiu      @CL15,ar2             ; |85| 
        callu     r0                    ; far call to _sprintf	; |85| 
                                        ; |85| Far Call Occurs
        subi      1,sp                  ; |85| 
	.line	30
;----------------------------------------------------------------------
;  86 | Execute_Init();                                                        
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,r0              ; |86| 
        callu     r0                    ; far call to _Execute_Init	; |86| 
                                        ; |86| Far Call Occurs
	.line	33
;----------------------------------------------------------------------
;  89 | IDEC_PORT = 6;                                                         
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |89| 
        ldiu      6,r0                  ; |89| 
        sti       r0,*ar0               ; |89| 
	.line	35
;----------------------------------------------------------------------
;  91 | for (i=0;i<13;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |91| 
        sti       r0,*+fp(1)            ; |91| 
        ldiu      0,r1                  ; |93| 
        ldiu      r0,r2
        cmpi      13,r2                 ; |91| 
        bge       L11                   ; |91| 
;*      Branch Occurs to L11            ; |91| 
L10:        
	.line	37
;----------------------------------------------------------------------
;  93 | IDEC_SA[i].val  = 0;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |93| 
        ldp       @CL19,DP
        ash       1,ir0                 ; |93| 
        ldiu      @CL19,ar0             ; |93| 
        sti       r1,*+ar0(ir0)         ; |93| 
	.line	38
;----------------------------------------------------------------------
;  94 | IDEC_SA[i].vect = NULL_PTR;                                            
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      *+fp(1),ir0           ; |94| 
        ldiu      @CL20,ar0             ; |94| 
        ash       1,ir0                 ; |94| 
        sti       r0,*+ar0(ir0)         ; |94| 
	.line	35
        ldiu      1,r2                  ; |91| 
        addi      *+fp(1),r2            ; |91| 
        sti       r2,*+fp(1)            ; |91| 
        cmpi      13,r2                 ; |91| 
        blt       L10                   ; |91| 
;*      Branch Occurs to L10            ; |91| 
L11:        
	.line	41
;----------------------------------------------------------------------
;  97 | IDEC_SA[1].val          = 0x0081;                               /* turn
;     |  on backlight and screen display */                                    
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |97| 
        ldiu      129,r0                ; |97| 
        sti       r0,*ar0               ; |97| 
	.line	42
;----------------------------------------------------------------------
;  98 | IDEC_SA[0].val          = SCREEN_LOGO;                  /* set screen *
;     | /                                                                      
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |98| 
        ldiu      1,r0                  ; |98| 
        sti       r0,*ar0               ; |98| 
	.line	43
;----------------------------------------------------------------------
;  99 | IDEC_SA[7].vect         = (int*)Set_Time;                              
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      @CL22,ar0             ; |99| 
        ldp       @CL23,DP
        ldiu      @CL23,r0              ; |99| 
        sti       r0,*ar0               ; |99| 
	.line	44
;----------------------------------------------------------------------
; 100 | IDEC_SA[12].vect        = (int*)Set_IDEC_Port;                         
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      @CL24,ar0             ; |100| 
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |100| 
        sti       r0,*ar0               ; |100| 
	.line	47
;----------------------------------------------------------------------
; 103 | FLASH_READ_ESN_MFGR(ESN_MFGR);                                         
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |103| 
        ldp       @CL26,DP
        ldiu      @CL26,ar2             ; |103| 
        callu     r0                    ; far call to _FLASH_READ_ESN_MFGR	; |103| 
                                        ; |103| Far Call Occurs
	.line	48
;----------------------------------------------------------------------
; 104 | FLASH_READ_ESN_USER(ESN_USER);                                         
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |104| 
        ldp       @CL28,DP
        ldiu      @CL28,ar2             ; |104| 
        callu     r0                    ; far call to _FLASH_READ_ESN_USER	; |104| 
                                        ; |104| Far Call Occurs
	.line	50
;----------------------------------------------------------------------
; 106 | LOCKOUT                                 = FALSE;        /* Setup Locks
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |106| 
        ldiu      0,r0                  ; |106| 
        sti       r0,*ar0               ; |106| 
	.line	51
;----------------------------------------------------------------------
; 107 | DIO_LOCK[1].val                 = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      @CL31,ar0             ; |107| 
        ldiu      1,r0                  ; |107| 
        sti       r0,*ar0               ; |107| 
	.line	52
;----------------------------------------------------------------------
; 108 | DIO_LOCK[2].val                 = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar0             ; |108| 
        sti       r0,*ar0               ; |108| 
	.line	53
;----------------------------------------------------------------------
; 109 | DIO_LOCK[3].val                 = TRUE;                                
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |109| 
        sti       r0,*ar0               ; |109| 
	.line	54
;----------------------------------------------------------------------
; 110 | RESEARCH_FORCE_MODE         = FALSE;    /* Disable Research Mode */    
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |110| 
        ldiu      0,r0                  ; |110| 
        sti       r0,*ar0               ; |110| 
	.line	55
;----------------------------------------------------------------------
; 111 | SAMPLE_PENDING                  = FALSE;    /* No Pulse Sample Pending
;     | for Poll */                                                            
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |111| 
        sti       r0,*ar0               ; |111| 
	.line	56
;----------------------------------------------------------------------
; 112 | SN_PIPE                            &= 0xFFFFFF;                        
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |112| 
        ldp       @CL37,DP
        ldiu      @CL37,r0              ; |112| 
        and3      r0,*ar0,r0            ; |112| 
        sti       r0,*ar0               ; |112| 
	.line	57
;----------------------------------------------------------------------
; 113 | DUMMY                                   = 0;                           
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |113| 
        ldiu      0,r0                  ; |113| 
        sti       r0,*ar0               ; |113| 
	.line	58
;----------------------------------------------------------------------
; 114 | PORT2_LIQ_TEMP                      = 0;            /***disconnetion de
;     | tect RS***/                                                            
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |114| 
        sti       r0,*ar0               ; |114| 
	.line	59
;----------------------------------------------------------------------
; 115 | PORT2_GAS_TEMP                      = 0;                               
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |115| 
        sti       r0,*ar0               ; |115| 
	.line	60
;----------------------------------------------------------------------
; 116 | PORT3_TEMP                          = 0;                               
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |116| 
        sti       r0,*ar0               ; |116| 
	.line	61
;----------------------------------------------------------------------
; 117 | MM_LIQ_fail.val             = TRUE;                                    
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |117| 
        ldiu      1,r0                  ; |117| 
        sti       r0,*ar0               ; |117| 
	.line	62
;----------------------------------------------------------------------
; 118 | MM_GAS_fail.val             = TRUE;                                    
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      @CL43,ar0             ; |118| 
        sti       r0,*ar0               ; |118| 
	.line	63
;----------------------------------------------------------------------
; 119 | Rosemount_fail.val          = TRUE;                                    
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      @CL44,ar0             ; |119| 
        sti       r0,*ar0               ; |119| 
	.line	64
;----------------------------------------------------------------------
; 120 | DIO_ERROR.val                       = FALSE;                           
;----------------------------------------------------------------------
        ldp       @CL45,DP
        ldiu      @CL45,ar0             ; |120| 
        ldiu      0,r0                  ; |120| 
        sti       r0,*ar0               ; |120| 
	.line	65
;----------------------------------------------------------------------
; 121 | DIO_ALARM.val                   = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,ar0             ; |121| 
        sti       r0,*ar0               ; |121| 
	.line	66
;----------------------------------------------------------------------
; 122 | DIO_SYSTEM_RESET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,ar0             ; |122| 
        sti       r0,*ar0               ; |122| 
	.line	67
;----------------------------------------------------------------------
; 123 | DIO_BUILT_IN_TEST.val   = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,ar0             ; |123| 
        sti       r0,*ar0               ; |123| 
	.line	68
;----------------------------------------------------------------------
; 124 | DIO_BEEP.val                    = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldiu      @CL49,ar0             ; |124| 
        sti       r0,*ar0               ; |124| 
	.line	69
;----------------------------------------------------------------------
; 125 | DIO_uP_GET.val                      = FALSE;                           
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      @CL50,ar0             ; |125| 
        sti       r0,*ar0               ; |125| 
	.line	70
;----------------------------------------------------------------------
; 126 | DIO_uP_SET.val                  = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,ar0             ; |126| 
        sti       r0,*ar0               ; |126| 
	.line	71
;----------------------------------------------------------------------
; 127 | DIO_COMM_GET.val                = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldiu      @CL52,ar0             ; |127| 
        sti       r0,*ar0               ; |127| 
	.line	72
;----------------------------------------------------------------------
; 128 | DIO_COMM_SET.val                = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      @CL53,ar0             ; |128| 
        sti       r0,*ar0               ; |128| 
	.line	73
;----------------------------------------------------------------------
; 129 | DIO_POWER_GET.val               = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldiu      @CL54,ar0             ; |129| 
        sti       r0,*ar0               ; |129| 
	.line	74
;----------------------------------------------------------------------
; 130 | DIO_POWER_SET.val               = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL55,DP
        ldiu      @CL55,ar0             ; |130| 
        sti       r0,*ar0               ; |130| 
	.line	75
;----------------------------------------------------------------------
; 131 | DIO_DISPLAY_GET.val     = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,ar0             ; |131| 
        sti       r0,*ar0               ; |131| 
	.line	76
;----------------------------------------------------------------------
; 132 | DIO_DISPLAY_SET.val     = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |132| 
        sti       r0,*ar0               ; |132| 
	.line	77
;----------------------------------------------------------------------
; 133 | DIO_MOTHERBOARD_GET.val = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL58,DP
        ldiu      @CL58,ar0             ; |133| 
        sti       r0,*ar0               ; |133| 
	.line	78
;----------------------------------------------------------------------
; 134 | DIO_MOTHERBOARD_SET.val = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |134| 
        sti       r0,*ar0               ; |134| 
	.line	79
;----------------------------------------------------------------------
; 135 | DIO_ANALYZER_GET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,ar0             ; |135| 
        sti       r0,*ar0               ; |135| 
	.line	80
;----------------------------------------------------------------------
; 136 | DIO_ANALYZER_SET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      @CL61,ar0             ; |136| 
        sti       r0,*ar0               ; |136| 
	.line	81
;----------------------------------------------------------------------
; 137 | DIO_ANALOGIO_GET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldiu      @CL62,ar0             ; |137| 
        sti       r0,*ar0               ; |137| 
	.line	82
;----------------------------------------------------------------------
; 138 | DIO_ANALOGIO_SET.val    = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldiu      @CL63,ar0             ; |138| 
        sti       r0,*ar0               ; |138| 
	.line	83
;----------------------------------------------------------------------
; 139 | DIO_PV_PERCMASS                 = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,ar0             ; |139| 
        sti       r0,*ar0               ; |139| 
	.line	84
;----------------------------------------------------------------------
; 140 | LED_GREEN                               = FALSE;                       
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      @CL65,ar0             ; |140| 
        sti       r0,*ar0               ; |140| 
	.line	87
;----------------------------------------------------------------------
; 143 | VAR_Update(&REG_FREQ_OIL_LO,            REG_FREQ_OIL_LO.val,
;     |  0, 0);                                                                
;----------------------------------------------------------------------
        ldp       @CL66,DP
        ldiu      @CL66,ar0             ; |143| 
        ldiu      255,r3                ; |143| 
        ldfu      *ar0,f0               ; |143| 
        ldfu      f0,f2                 ; |143| Move F32 into F40 for CONV
        andn      r3,f2                 ; |143| Bit mask for F32/F40 conversion
        ldp       @CL67,DP
        ldiu      0,r3                  ; |143| 
        ldiu      @CL67,r1              ; |143| 
        ldp       @CL66,DP
        ldiu      0,rc                  ; |143| 
        ldiu      @CL66,ar2             ; |143| 
        callu     r1                    ; far call to _VAR_Update	; |143| 
                                        ; |143| Far Call Occurs
	.line	88
;----------------------------------------------------------------------
; 144 | VAR_Update(&REG_FREQ_OIL_HI,            REG_FREQ_OIL_HI.val,
;     |  0, 0);                                                                
;----------------------------------------------------------------------
        ldp       @CL68,DP
        ldiu      @CL68,ar0             ; |144| 
        ldfu      *ar0,f0               ; |144| 
        ldfu      f0,f2                 ; |144| Move F32 into F40 for CONV
        ldp       @CL67,DP
        ldiu      255,r3                ; |144| 
        andn      r3,f2                 ; |144| Bit mask for F32/F40 conversion
        ldiu      @CL67,r1              ; |144| 
        ldp       @CL68,DP
        ldiu      0,r3                  ; |144| 
        ldiu      @CL68,ar2             ; |144| 
        ldiu      0,rc                  ; |144| 
        callu     r1                    ; far call to _VAR_Update	; |144| 
                                        ; |144| Far Call Occurs
	.line	89
;----------------------------------------------------------------------
; 145 | VAR_Update(&REG_FREQ_WATER_LO,          REG_FREQ_WATER_LO.val,
;     |  0, 0);                                                                
;----------------------------------------------------------------------
        ldp       @CL69,DP
        ldiu      @CL69,ar0             ; |145| 
        ldfu      *ar0,f0               ; |145| 
        ldfu      f0,f2                 ; |145| Move F32 into F40 for CONV
        ldiu      255,r3                ; |145| 
        ldp       @CL67,DP
        andn      r3,f2                 ; |145| Bit mask for F32/F40 conversion
        ldiu      @CL67,r1              ; |145| 
        ldp       @CL69,DP
        ldiu      0,r3                  ; |145| 
        ldiu      @CL69,ar2             ; |145| 
        ldiu      0,rc                  ; |145| 
        callu     r1                    ; far call to _VAR_Update	; |145| 
                                        ; |145| Far Call Occurs
	.line	90
;----------------------------------------------------------------------
; 146 | VAR_Update(&REG_FREQ_WATER_HI,          REG_FREQ_WATER_HI.val,
;     |  0, 0);                                                                
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,ar0             ; |146| 
        ldfu      *ar0,f0               ; |146| 
        ldfu      f0,f2                 ; |146| Move F32 into F40 for CONV
        ldp       @CL67,DP
        ldiu      255,r3                ; |146| 
        andn      r3,f2                 ; |146| Bit mask for F32/F40 conversion
        ldiu      @CL67,r1              ; |146| 
        ldp       @CL70,DP
        ldiu      0,r3                  ; |146| 
        ldiu      @CL70,ar2             ; |146| 
        ldiu      0,rc                  ; |146| 
        callu     r1                    ; far call to _VAR_Update	; |146| 
                                        ; |146| Far Call Occurs
	.line	91
;----------------------------------------------------------------------
; 147 | VAR_Update(&REG_LOWSALT_THRESHOLD,      REG_LOWSALT_THRESHOLD.val,
;     |  0, 0);               /*RS*/                                           
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,ar0             ; |147| 
        ldp       @CL67,DP
        ldfu      *ar0,f0               ; |147| 
        ldiu      @CL67,r1              ; |147| 
        ldfu      f0,f2                 ; |147| Move F32 into F40 for CONV
        ldiu      255,r3                ; |147| 
        ldp       @CL71,DP
        andn      r3,f2                 ; |147| Bit mask for F32/F40 conversion
        ldiu      0,rc                  ; |147| 
        ldiu      0,r3                  ; |147| 
        ldiu      @CL71,ar2             ; |147| 
        callu     r1                    ; far call to _VAR_Update	; |147| 
                                        ; |147| Far Call Occurs
	.line	94
;----------------------------------------------------------------------
; 150 | EXTENDED_FW_VERSION_ENABLE.val = 123.0; //prevents IDEC screen freezing
;     | , the idea being that lowsalt threshold will never be 123              
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,ar0             ; |150| 
        ldfu      1.2300000000e+02,f0   ; |150| 
        stf       f0,*ar0               ; |150| 
	.line	96
;----------------------------------------------------------------------
; 152 | if (DIPSW1)                                                            
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      @CL73,ar0             ; |152| 
        ldiu      16,r0                 ; |152| 
        tstb3     *ar0,r0               ; |152| 
        beq       L13                   ; |152| 
;*      Branch Occurs to L13            ; |152| 
	.line	97
;----------------------------------------------------------------------
; 153 | DIPSWITCH[0] = FALSE;                                                  
; 154 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,ar0             ; |153| 
        ldiu      0,r0                  ; |153| 
        sti       r0,*ar0               ; |153| 
        bu        L14                   ; |56| 
;*      Branch Occurs to L14            ; |56| 
L13:        
	.line	99
;----------------------------------------------------------------------
; 155 | DIPSWITCH[0] = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,ar0             ; |155| 
        ldiu      1,r0                  ; |155| 
        sti       r0,*ar0               ; |155| 
L14:        
	.line	101
;----------------------------------------------------------------------
; 157 | if (DIPSW2)                                                            
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      @CL73,ar0             ; |157| 
        ldiu      32,r0                 ; |157| 
        tstb3     *ar0,r0               ; |157| 
        beq       L16                   ; |157| 
;*      Branch Occurs to L16            ; |157| 
	.line	102
;----------------------------------------------------------------------
; 158 | DIPSWITCH[1] = FALSE;                                                  
; 159 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,ar0             ; |158| 
        ldiu      0,r0                  ; |158| 
        sti       r0,*ar0               ; |158| 
        bu        L17                   ; |56| 
;*      Branch Occurs to L17            ; |56| 
L16:        
	.line	104
;----------------------------------------------------------------------
; 160 | DIPSWITCH[1] = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,ar0             ; |160| 
        ldiu      1,r0                  ; |160| 
        sti       r0,*ar0               ; |160| 
L17:        
	.line	106
;----------------------------------------------------------------------
; 162 | REG_TIME                         = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |162| 
        ldiu      0,r0                  ; |162| 
        sti       r0,*ar0               ; |162| 
	.line	109
;----------------------------------------------------------------------
; 165 | N_TEMP                           = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      @CL77,ar0             ; |165| 
        sti       r0,*ar0               ; |165| 
	.line	110
;----------------------------------------------------------------------
; 166 | SUM_TEMP                         = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,ar0             ; |166| 
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f0            ; |166| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r0            ; |166| 40b float lo half
        stf       f0,*ar0               ; |166| Store high half
        sti       r0,*+ar0              ; |166| Store low half
	.line	111
;----------------------------------------------------------------------
; 167 | AVG_TEMP                         = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL80,DP
        ldiu      @CL80,ar0             ; |167| 
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f0            ; |167| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r0            ; |167| 40b float lo half
        stf       f0,*ar0               ; |167| Store high half
        sti       r0,*+ar0              ; |167| Store low half
	.line	115
;----------------------------------------------------------------------
; 171 | cycles                           = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldiu      @CL81,ar0             ; |171| 
        ldiu      0,r0                  ; |171| 
        sti       r0,*ar0               ; |171| 
	.line	116
;----------------------------------------------------------------------
; 172 | previous_phase           = 0;                                          
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      @CL82,ar0             ; |172| 
        sti       r0,*ar0               ; |172| 
	.line	117
;----------------------------------------------------------------------
; 173 | phase                            = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL83,DP
        ldiu      @CL83,ar0             ; |173| 
        sti       r0,*ar0               ; |173| 
	.line	118
;----------------------------------------------------------------------
; 174 | phase_rollover_count = 0;                                              
;----------------------------------------------------------------------
        ldp       @CL84,DP
        ldiu      @CL84,ar0             ; |174| 
        sti       r0,*ar0               ; |174| 
	.line	122
;----------------------------------------------------------------------
; 178 | N_WC                             = 1;                                  
;----------------------------------------------------------------------
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |178| 
        ldiu      1,r0                  ; |178| 
        sti       r0,*ar0               ; |178| 
	.line	123
;----------------------------------------------------------------------
; 179 | WC_SUM                           = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL86,DP
        ldiu      @CL86,ar0             ; |179| 
        ldfu      0.0000000000e+00,f0   ; |179| 
        stf       f0,*ar0               ; |179| 
	.line	126
;----------------------------------------------------------------------
; 182 | for (i=0;i<31;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |182| 
        sti       r0,*+fp(1)            ; |182| 
        ldfu      0.0000000000e+00,f1   ; |183| 
        cmpi      31,r0                 ; |182| 
        bge       L19                   ; |182| 
;*      Branch Occurs to L19            ; |182| 
L18:        
	.line	127
;----------------------------------------------------------------------
; 183 | WC_SAMPLE[i] = 0;    /*average filter RS*/                             
;----------------------------------------------------------------------
        ldp       @CL87,DP
        ldiu      *+fp(1),ir0           ; |183| 
        ldiu      @CL87,ar0             ; |183| 
        stf       f1,*+ar0(ir0)         ; |183| 
	.line	126
        ldiu      1,r0                  ; |182| 
        addi      *+fp(1),r0            ; |182| 
        sti       r0,*+fp(1)            ; |182| 
        cmpi      31,r0                 ; |182| 
        blt       L18                   ; |182| 
;*      Branch Occurs to L18            ; |182| 
L19:        
	.line	130
;----------------------------------------------------------------------
; 186 | N_FREQ                                  = 1;    /* Frequency */        
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      @CL88,ar0             ; |186| 
        ldiu      1,r0                  ; |186| 
        sti       r0,*ar0               ; |186| 
	.line	131
;----------------------------------------------------------------------
; 187 | HSALT_FREQ_TRIGGER.val  = TRUE;                                        
; 189 | //VAR_Update(&REG_FREQ_WINDOW,          30.0, 0, 0);                   
;----------------------------------------------------------------------
        ldp       @CL89,DP
        ldiu      @CL89,ar0             ; |187| 
        sti       r0,*ar0               ; |187| 
	.line	134
;----------------------------------------------------------------------
; 190 | VAR_Update(&REG_FREQ_VARIANCE_RATIO, 1.5, 0, 0);                       
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |190| 
        ldp       @CL91+0,DP
        ldfu      @CL91+0,f2            ; |190| 40b float hi half
        ldp       @CL91+1,DP
        ldiu      0,rc                  ; |190| 
        ldiu      @CL91+1,r2            ; |190| 40b float lo half
        ldp       @CL90,DP
        ldiu      0,r3                  ; |190| 
        ldiu      @CL90,ar2             ; |190| 
        callu     r0                    ; far call to _VAR_Update	; |190| 
                                        ; |190| Far Call Occurs
	.line	136
;----------------------------------------------------------------------
; 192 | TEMP_SAMPLE                     = 0;    /* Temperature */              
;----------------------------------------------------------------------
        ldp       @CL92,DP
        ldiu      @CL92,ar0             ; |192| 
        ldfu      0.0000000000e+00,f0   ; |192| 
        stf       f0,*ar0               ; |192| 
	.line	137
;----------------------------------------------------------------------
; 193 | LAST_TEMP_RESET                 = TEMP_SAMPLE;                         
;----------------------------------------------------------------------
        ldiu      @CL92,ar0             ; |193| 
        ldp       @CL93,DP
        ldiu      @CL93,ar1             ; |193| 
        ldfu      *ar0,f0               ; |193| 
        stf       f0,*ar1               ; |193| 
	.line	138
;----------------------------------------------------------------------
; 194 | HSALT_TEMP_TRIGGER.val  = FALSE;                                       
; 196 | //VAR_Update(&REG_DELTA_TEMP,           3.0,  0, 0);                   
;----------------------------------------------------------------------
        ldp       @CL94,DP
        ldiu      @CL94,ar0             ; |194| 
        ldiu      0,r0                  ; |194| 
        sti       r0,*ar0               ; |194| 
	.line	144
;----------------------------------------------------------------------
; 200 | GAS_ENTRAINED_DENS_DETECT.val = FALSE;                                 
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      @CL95,ar0             ; |200| 
        sti       r0,*ar0               ; |200| 
	.line	146
;----------------------------------------------------------------------
; 202 | gas_routine_reset_needed = TRUE;                                       
;----------------------------------------------------------------------
        ldp       @CL96,DP
        ldiu      @CL96,ar0             ; |202| 
        ldiu      1,r0                  ; |202| 
        sti       r0,*ar0               ; |202| 
	.line	147
;----------------------------------------------------------------------
; 203 | boxcar_reset_needed = TRUE;                                            
;----------------------------------------------------------------------
        ldp       @CL97,DP
        ldiu      @CL97,ar0             ; |203| 
        sti       r0,*ar0               ; |203| 
	.line	148
;----------------------------------------------------------------------
; 204 | if ( (ANALYZER_MODE.val & 0xFF) != SUB_CCM )                           
;----------------------------------------------------------------------
        ldp       @CL98,DP
        ldiu      @CL98,ar0             ; |204| 
        ldiu      255,r0                ; |204| 
        and3      r0,*ar0,r0            ; |204| 
        cmpi      6,r0                  ; |204| 
        beq       L21                   ; |204| 
;*      Branch Occurs to L21            ; |204| 
	.line	150
;----------------------------------------------------------------------
; 206 | REG_WATERCUT_DENSITY.STAT |= var_no_alarm;                             
;----------------------------------------------------------------------
        ldp       @CL99,DP
        ldiu      @CL99,ar0             ; |206| 
        ldiu      4,r0                  ; |206| 
        or3       r0,*ar0,r0            ; |206| 
        sti       r0,*ar0               ; |206| 
L21:        
	.line	156
;----------------------------------------------------------------------
; 212 | TRIM_RTD_LO = FALSE;                                                   
;----------------------------------------------------------------------
        ldp       @CL100,DP
        ldiu      @CL100,ar0            ; |212| 
        ldiu      0,r0                  ; |212| 
        sti       r0,*ar0               ; |212| 
	.line	157
;----------------------------------------------------------------------
; 213 | TRIM_RTD_HI = FALSE;                                                   
;----------------------------------------------------------------------
        ldp       @CL101,DP
        ldiu      @CL101,ar0            ; |213| 
        sti       r0,*ar0               ; |213| 
	.line	160
;----------------------------------------------------------------------
; 216 | CAP_WATER_STOP.val      = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |216| 
        sti       r0,*ar0               ; |216| 
	.line	161
;----------------------------------------------------------------------
; 217 | CAP_OIL_STOP.val        = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL103,DP
        ldiu      @CL103,ar0            ; |217| 
        sti       r0,*ar0               ; |217| 
	.line	164
;----------------------------------------------------------------------
; 220 | Clear(&PV_SAMPLES);                                                    
;----------------------------------------------------------------------
        ldp       @CL105,DP
        ldiu      @CL105,r0             ; |220| 
        ldp       @CL104,DP
        ldiu      @CL104,ar2            ; |220| 
        callu     r0                    ; far call to _Clear	; |220| 
                                        ; |220| Far Call Occurs
	.line	165
;----------------------------------------------------------------------
; 221 | Clear(&PV_SAMPLES_24hr);                                               
;----------------------------------------------------------------------
        ldp       @CL105,DP
        ldiu      @CL105,r0             ; |221| 
        ldp       @CL106,DP
        ldiu      @CL106,ar2            ; |221| 
        callu     r0                    ; far call to _Clear	; |221| 
                                        ; |221| Far Call Occurs
	.line	166
;----------------------------------------------------------------------
; 222 | Clear(&PV_SAMPLES_5min);                                               
;----------------------------------------------------------------------
        ldp       @CL105,DP
        ldiu      @CL105,r0             ; |222| 
        ldp       @CL107,DP
        ldiu      @CL107,ar2            ; |222| 
        callu     r0                    ; far call to _Clear	; |222| 
                                        ; |222| Far Call Occurs
	.line	168
;----------------------------------------------------------------------
; 224 | PV_SAMPLES.sum          = 0x80000000;           /* force to float 0.0 *
;     | /                                                                      
;----------------------------------------------------------------------
        ldp       @CL108,DP
        ldiu      @CL108,ar0            ; |224| 
        ldp       @CL109,DP
        ldiu      @CL109,r0             ; |224| 
        sti       r0,*ar0               ; |224| 
	.line	169
;----------------------------------------------------------------------
; 225 | PV_SAMPLES_24hr.sum = 0x80000000;       /* force to float 0.0 */       
;----------------------------------------------------------------------
        ldp       @CL110,DP
        ldiu      @CL110,ar0            ; |225| 
        ldp       @CL109,DP
        ldiu      @CL109,r0             ; |225| 
        sti       r0,*ar0               ; |225| 
	.line	170
;----------------------------------------------------------------------
; 226 | REG_PV_AVG_24hr         = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL111,DP
        ldiu      @CL111,ar0            ; |226| 
        ldfu      0.0000000000e+00,f0   ; |226| 
        stf       f0,*ar0               ; |226| 
	.line	171
;----------------------------------------------------------------------
; 227 | PV_SAMPLES_5min.sum = 0x80000000;       /* force to float 0.0 */       
;----------------------------------------------------------------------
        ldp       @CL112,DP
        ldiu      @CL112,ar0            ; |227| 
        ldp       @CL109,DP
        ldiu      @CL109,r0             ; |227| 
        sti       r0,*ar0               ; |227| 
	.line	172
;----------------------------------------------------------------------
; 228 | REG_PV_AVG_5min         = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL113,DP
        ldiu      @CL113,ar0            ; |228| 
        ldfu      0.0000000000e+00,f0   ; |228| 
        stf       f0,*ar0               ; |228| 
	.line	173
;----------------------------------------------------------------------
; 229 | REG_PV_AVG_1sec         = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL114,DP
        ldiu      @CL114,ar0            ; |229| 
        ldfu      0.0000000000e+00,f0   ; |229| 
        stf       f0,*ar0               ; |229| 
	.line	174
;----------------------------------------------------------------------
; 230 | REG_PV_AVG_CNT          = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL115,DP
        ldiu      @CL115,ar0            ; |230| 
        ldiu      0,r0                  ; |230| 
        sti       r0,*ar0               ; |230| 
	.line	177
;----------------------------------------------------------------------
; 233 | Mirror_From_Stream_Table(NULL_VAR);                                    
;----------------------------------------------------------------------
        ldp       @CL116,DP
        ldiu      @CL116,r0             ; |233| 
        ldiu      0,ar2                 ; |233| 
        callu     r0                    ; far call to _Mirror_From_Stream_Table	; |233| 
                                        ; |233| Far Call Occurs
	.line	179
;----------------------------------------------------------------------
; 235 | WC                                              = 0.0;     /*make WC gl
;     | obal: float WC; for store last value when phase error RS*/             
;----------------------------------------------------------------------
        ldp       @CL117,DP
        ldiu      @CL117,ar0            ; |235| 
        ldfu      0.0000000000e+00,f0   ; |235| 
        stf       f0,*ar0               ; |235| 
	.line	180
;----------------------------------------------------------------------
; 236 | REG_WATERCUT_RAW                = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL118,DP
        ldiu      @CL118,ar0            ; |236| 
        ldfu      0.0000000000e+00,f0   ; |236| 
        stf       f0,*ar0               ; |236| 
	.line	181
;----------------------------------------------------------------------
; 237 | REG_CAL_OIL.calc_val    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL119,DP
        ldiu      @CL119,ar0            ; |237| 
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f0            ; |237| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r0            ; |237| 40b float lo half
        stf       f0,*ar0               ; |237| Store high half
        sti       r0,*+ar0              ; |237| Store low half
	.line	182
;----------------------------------------------------------------------
; 238 | REG_CAL_OIL.val                 = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL120,DP
        ldiu      @CL120,ar0            ; |238| 
        ldfu      0.0000000000e+00,f0   ; |238| 
        stf       f0,*ar0               ; |238| 
	.line	183
;----------------------------------------------------------------------
; 239 | REG_CAL_WATER.calc_val  = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL121,DP
        ldiu      @CL121,ar0            ; |239| 
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f0            ; |239| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r0            ; |239| 40b float lo half
        stf       f0,*ar0               ; |239| Store high half
        sti       r0,*+ar0              ; |239| Store low half
	.line	184
;----------------------------------------------------------------------
; 240 | REG_CAL_WATER.val               = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL122,DP
        ldiu      @CL122,ar0            ; |240| 
        ldfu      0.0000000000e+00,f0   ; |240| 
        stf       f0,*ar0               ; |240| 
	.line	186
;----------------------------------------------------------------------
; 242 | VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);                            
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |242| 
        ldp       @CL124+0,DP
        ldfu      @CL124+0,f2           ; |242| 40b float hi half
        ldp       @CL124+1,DP
        ldiu      @CL124+1,r2           ; |242| 40b float lo half
        ldp       @CL123,DP
        ldiu      0,rc                  ; |242| 
        ldiu      0,r3                  ; |242| 
        ldiu      @CL123,ar2            ; |242| 
        callu     r0                    ; far call to _VAR_Update	; |242| 
                                        ; |242| Far Call Occurs
	.line	187
;----------------------------------------------------------------------
; 243 | VAR_NaN(&REG_WATERCUT);                                                
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |243| 
        ldp       @CL125,DP
        ldiu      @CL125,ar2            ; |243| 
        callu     r0                    ; far call to _VAR_NaN	; |243| 
                                        ; |243| Far Call Occurs
	.line	188
;----------------------------------------------------------------------
; 244 | VAR_NaN(&REG_TEMPERATURE_USER);                                        
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |244| 
        ldp       @CL127,DP
        ldiu      @CL127,ar2            ; |244| 
        callu     r0                    ; far call to _VAR_NaN	; |244| 
                                        ; |244| Far Call Occurs
	.line	189
;----------------------------------------------------------------------
; 245 | VAR_NaN(&REG_TEMPERATURE_AVG);/*RS*/                                   
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |245| 
        ldp       @CL128,DP
        ldiu      @CL128,ar2            ; |245| 
        callu     r0                    ; far call to _VAR_NaN	; |245| 
                                        ; |245| Far Call Occurs
	.line	190
;----------------------------------------------------------------------
; 246 | VAR_NaN(&REG_TEMPERATURE_EXTERNAL);                                    
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |246| 
        ldp       @CL129,DP
        ldiu      @CL129,ar2            ; |246| 
        callu     r0                    ; far call to _VAR_NaN	; |246| 
                                        ; |246| Far Call Occurs
	.line	191
;----------------------------------------------------------------------
; 247 | VAR_NaN(&REG_DUMMY);                                                   
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |247| 
        ldp       @CL130,DP
        ldiu      @CL130,ar2            ; |247| 
        callu     r0                    ; far call to _VAR_NaN	; |247| 
                                        ; |247| Far Call Occurs
	.line	194
;----------------------------------------------------------------------
; 250 | VAR_SELECT_DVIN.val     = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |250| 
        ldiu      0,r0                  ; |250| 
        sti       r0,*ar0               ; |250| 
	.line	195
;----------------------------------------------------------------------
; 251 | VAR_SELECT_DVIN.vect    = (int*)VAR_SET_STR_DVIN;                      
;----------------------------------------------------------------------
        ldp       @CL132,DP
        ldiu      @CL132,ar0            ; |251| 
        ldp       @CL133,DP
        ldiu      @CL133,r0             ; |251| 
        sti       r0,*ar0               ; |251| 
	.line	196
;----------------------------------------------------------------------
; 252 | VAR_SELECT_DV.val               = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL134,DP
        ldiu      @CL134,ar0            ; |252| 
        ldiu      0,r0                  ; |252| 
        sti       r0,*ar0               ; |252| 
	.line	197
;----------------------------------------------------------------------
; 253 | VAR_SELECT_DV.vect              = (int*)VAR_SET_STR_DV;                
;----------------------------------------------------------------------
        ldp       @CL135,DP
        ldiu      @CL135,ar0            ; |253| 
        ldp       @CL136,DP
        ldiu      @CL136,r0             ; |253| 
        sti       r0,*ar0               ; |253| 
	.line	199
;----------------------------------------------------------------------
; 255 | VAR_SET_STR_DV(0);                                                     
;----------------------------------------------------------------------
        ldiu      0,ar2                 ; |255| 
        ldiu      @CL136,r0             ; |255| 
        callu     r0                    ; far call to _VAR_SET_STR_DV	; |255| 
                                        ; |255| Far Call Occurs
	.line	202
;----------------------------------------------------------------------
; 258 | for (i=0;i<AO_NLOOPS;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |258| 
        sti       r0,*+fp(1)            ; |258| 
        cmpi      9,r0                  ; |258| 
        bge       L24                   ; |258| 
;*      Branch Occurs to L24            ; |258| 
L23:        
	.line	204
;----------------------------------------------------------------------
; 260 | VAR_NaN(&AO[i].CURRENT_PERCENT_OF_RANGE);                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |260| 
        ldp       @CL137,DP
        mpyi      419,ar2               ; |260| 
        addi      @CL137,ar2            ; |260| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |260| 
        callu     r0                    ; far call to _VAR_NaN	; |260| 
                                        ; |260| Far Call Occurs
	.line	205
;----------------------------------------------------------------------
; 261 | PID_Init(i);                                                           
;----------------------------------------------------------------------
        ldp       @CL138,DP
        ldiu      @CL138,r0             ; |261| 
        ldiu      *+fp(1),ar2           ; |261| 
        callu     r0                    ; far call to _PID_Init	; |261| 
                                        ; |261| Far Call Occurs
	.line	202
        ldiu      1,r0                  ; |258| 
        addi      *+fp(1),r0            ; |258| 
        sti       r0,*+fp(1)            ; |258| 
        cmpi      9,r0                  ; |258| 
        blt       L23                   ; |258| 
;*      Branch Occurs to L23            ; |258| 
L24:        
	.line	208
;----------------------------------------------------------------------
; 264 | for (i=0;i<AI_NLOOPS;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |264| 
        sti       r0,*+fp(1)            ; |264| 
        cmpi      5,r0                  ; |264| 
        bge       L26                   ; |264| 
;*      Branch Occurs to L26            ; |264| 
L25:        
	.line	210
;----------------------------------------------------------------------
; 266 | VAR_NaN(&AI[i].VALUE);                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |266| 
        ldp       @CL139,DP
        mpyi      318,ar2               ; |266| 
        addi      @CL139,ar2            ; |266| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |266| 
        callu     r0                    ; far call to _VAR_NaN	; |266| 
                                        ; |266| Far Call Occurs
	.line	211
;----------------------------------------------------------------------
; 267 | VAR_NaN(&AI[i].CURRENT);                                               
;----------------------------------------------------------------------
        ldp       @CL140,DP
        ldiu      *+fp(1),ar2           ; |267| 
        mpyi      318,ar2               ; |267| 
        addi      @CL140,ar2            ; |267| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |267| 
        callu     r0                    ; far call to _VAR_NaN	; |267| 
                                        ; |267| Far Call Occurs
	.line	212
;----------------------------------------------------------------------
; 268 | VAR_NaN(&AI[i].CURRENT_PERCENT_OF_RANGE);                              
;----------------------------------------------------------------------
        ldp       @CL141,DP
        ldiu      *+fp(1),ar2           ; |268| 
        mpyi      318,ar2               ; |268| 
        addi      @CL141,ar2            ; |268| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |268| 
        callu     r0                    ; far call to _VAR_NaN	; |268| 
                                        ; |268| Far Call Occurs
	.line	214
;----------------------------------------------------------------------
; 270 | AI[i].val = NaN_val_flt;                                               
;----------------------------------------------------------------------
        ldp       @CL143,DP
        ldiu      *+fp(1),ir0           ; |270| 
        ldiu      @CL143,ar0            ; |270| 
        ldp       @CL142,DP
        mpyi      318,ir0               ; |270| 
        ldiu      @CL142,ar1            ; |270| 
        float     *ar0,f0               ; |270| 
        stf       f0,*+ar1(ir0)         ; |270| 
	.line	208
        ldiu      1,r0                  ; |264| 
        addi      *+fp(1),r0            ; |264| 
        sti       r0,*+fp(1)            ; |264| 
        cmpi      5,r0                  ; |264| 
        blt       L25                   ; |264| 
;*      Branch Occurs to L25            ; |264| 
L26:        
	.line	217
;----------------------------------------------------------------------
; 273 | i_CCM_Level_Setpoint    = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL144,DP
        ldiu      @CL144,ar0            ; |273| 
        ldiu      0,r0                  ; |273| 
        sti       r0,*ar0               ; |273| 
	.line	218
;----------------------------------------------------------------------
; 274 | i_CCM_Level                     = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL145,DP
        ldiu      @CL145,ar0            ; |274| 
        sti       r0,*ar0               ; |274| 
	.line	219
;----------------------------------------------------------------------
; 275 | i_CCM_Pressure_Setpoint = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL146,DP
        ldiu      @CL146,ar0            ; |275| 
        sti       r0,*ar0               ; |275| 
	.line	220
;----------------------------------------------------------------------
; 276 | i_CCM_Pressure                  = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL147,DP
        ldiu      @CL147,ar0            ; |276| 
        sti       r0,*ar0               ; |276| 
	.line	221
;----------------------------------------------------------------------
; 277 | i_CCM_Gas_Valve                 = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL148,DP
        ldiu      @CL148,ar0            ; |277| 
        sti       r0,*ar0               ; |277| 
	.line	222
;----------------------------------------------------------------------
; 278 | i_CCM_Liquid_Valve              = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL149,DP
        ldiu      @CL149,ar0            ; |278| 
        sti       r0,*ar0               ; |278| 
	.line	223
;----------------------------------------------------------------------
; 279 | i_CCM_Flow                              = 0;                           
;----------------------------------------------------------------------
        ldp       @CL150,DP
        ldiu      @CL150,ar0            ; |279| 
        sti       r0,*ar0               ; |279| 
	.line	224
;----------------------------------------------------------------------
; 280 | i_CCM_Flow_Oil                  = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL151,DP
        ldiu      @CL151,ar0            ; |280| 
        sti       r0,*ar0               ; |280| 
	.line	225
;----------------------------------------------------------------------
; 281 | i_CCM_Flow_Water                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL152,DP
        ldiu      @CL152,ar0            ; |281| 
        sti       r0,*ar0               ; |281| 
	.line	226
;----------------------------------------------------------------------
; 282 | i_CCM_Flow_Gas                  = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL153,DP
        ldiu      @CL153,ar0            ; |282| 
        sti       r0,*ar0               ; |282| 
	.line	227
;----------------------------------------------------------------------
; 283 | CCM_24_GAS                              = 0.0;                         
;----------------------------------------------------------------------
        ldp       @CL154,DP
        ldiu      @CL154,ar0            ; |283| 
        ldfu      0.0000000000e+00,f0   ; |283| 
        stf       f0,*ar0               ; |283| 
	.line	228
;----------------------------------------------------------------------
; 284 | CCM_24_TOTAL                    = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL155,DP
        ldiu      @CL155,ar0            ; |284| 
        ldfu      0.0000000000e+00,f0   ; |284| 
        stf       f0,*ar0               ; |284| 
	.line	229
;----------------------------------------------------------------------
; 285 | CCM_24_OIL                              = 0.0;                         
;----------------------------------------------------------------------
        ldp       @CL156,DP
        ldiu      @CL156,ar0            ; |285| 
        ldfu      0.0000000000e+00,f0   ; |285| 
        stf       f0,*ar0               ; |285| 
	.line	230
;----------------------------------------------------------------------
; 286 | CCM_24_WATER                    = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL157,DP
        ldiu      @CL157,ar0            ; |286| 
        ldfu      0.0000000000e+00,f0   ; |286| 
        stf       f0,*ar0               ; |286| 
	.line	231
;----------------------------------------------------------------------
; 287 | CCM_REMAINING                   = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL158,DP
        ldiu      @CL158,ar0            ; |287| 
        ldfu      0.0000000000e+00,f0   ; |287| 
        stf       f0,*ar0               ; |287| 
	.line	232
;----------------------------------------------------------------------
; 288 | CCM_REMAINING_S                 = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL159,DP
        ldiu      @CL159,ar0            ; |288| 
        ldfu      0.0000000000e+00,f0   ; |288| 
        stf       f0,*ar0               ; |288| 
	.line	233
;----------------------------------------------------------------------
; 289 | CCM_ELAPSED_S                   = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL160,DP
        ldiu      @CL160,ar0            ; |289| 
        ldfu      0.0000000000e+00,f0   ; |289| 
        stf       f0,*ar0               ; |289| 
	.line	234
;----------------------------------------------------------------------
; 290 | DIO_CCM_START.val               = FALSE;                               
;----------------------------------------------------------------------
        ldp       @CL161,DP
        ldiu      @CL161,ar0            ; |290| 
        ldiu      0,r0                  ; |290| 
        sti       r0,*ar0               ; |290| 
	.line	235
;----------------------------------------------------------------------
; 291 | DIO_CCM_PURGE_STAT.val  = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL162,DP
        ldiu      @CL162,ar0            ; |291| 
        sti       r0,*ar0               ; |291| 
	.line	236
;----------------------------------------------------------------------
; 292 | REG_CCM_TEST_STAT.val   = 0;  /*logging test status RS*/               
;----------------------------------------------------------------------
        ldp       @CL163,DP
        ldiu      @CL163,ar0            ; |292| 
        ldfu      0.0000000000e+00,f0   ; |292| 
        stf       f0,*ar0               ; |292| 
	.line	237
;----------------------------------------------------------------------
; 293 | REG_CCM_PURGE_STAT.val  = 0; /*logging purge status RS*/               
;----------------------------------------------------------------------
        ldp       @CL164,DP
        ldiu      @CL164,ar0            ; |293| 
        ldfu      0.0000000000e+00,f0   ; |293| 
        stf       f0,*ar0               ; |293| 
	.line	239
;----------------------------------------------------------------------
; 295 | VAR_NaN(&CCM_GAS_FLOW);                                                
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |295| 
        ldp       @CL165,DP
        ldiu      @CL165,ar2            ; |295| 
        callu     r0                    ; far call to _VAR_NaN	; |295| 
                                        ; |295| Far Call Occurs
	.line	240
;----------------------------------------------------------------------
; 296 | VAR_NaN(&CCM_GAS_TOTAL);                                               
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |296| 
        ldp       @CL166,DP
        ldiu      @CL166,ar2            ; |296| 
        callu     r0                    ; far call to _VAR_NaN	; |296| 
                                        ; |296| Far Call Occurs
	.line	241
;----------------------------------------------------------------------
; 297 | VAR_NaN(&CCM_VESSEL_LEVEL[0]);                                         
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |297| 
        ldp       @CL167,DP
        ldiu      @CL167,ar2            ; |297| 
        callu     r0                    ; far call to _VAR_NaN	; |297| 
                                        ; |297| Far Call Occurs
	.line	242
;----------------------------------------------------------------------
; 298 | VAR_NaN(&CCM_VESSEL_LEVEL[1]);                                         
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |298| 
        ldp       @CL168,DP
        ldiu      @CL168,ar2            ; |298| 
        callu     r0                    ; far call to _VAR_NaN	; |298| 
                                        ; |298| Far Call Occurs
	.line	243
;----------------------------------------------------------------------
; 299 | VAR_NaN(&CCM_VESSEL_PRESSURE[0]);                                      
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |299| 
        ldp       @CL169,DP
        ldiu      @CL169,ar2            ; |299| 
        callu     r0                    ; far call to _VAR_NaN	; |299| 
                                        ; |299| Far Call Occurs
	.line	244
;----------------------------------------------------------------------
; 300 | VAR_NaN(&CCM_VESSEL_PRESSURE[1]);                                      
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |300| 
        ldp       @CL170,DP
        ldiu      @CL170,ar2            ; |300| 
        callu     r0                    ; far call to _VAR_NaN	; |300| 
                                        ; |300| Far Call Occurs
	.line	245
;----------------------------------------------------------------------
; 301 | CLEAR_TIME(&CCM_TIME_START);                                           
;----------------------------------------------------------------------
        ldp       @CL172,DP
        ldiu      @CL172,r0             ; |301| 
        ldp       @CL171,DP
        ldiu      @CL171,ar2            ; |301| 
        callu     r0                    ; far call to _CLEAR_TIME	; |301| 
                                        ; |301| Far Call Occurs
	.line	246
;----------------------------------------------------------------------
; 302 | CLEAR_TIME(&CCM_TIME_STOP);                                            
;----------------------------------------------------------------------
        ldp       @CL172,DP
        ldiu      @CL172,r0             ; |302| 
        ldp       @CL173,DP
        ldiu      @CL173,ar2            ; |302| 
        callu     r0                    ; far call to _CLEAR_TIME	; |302| 
                                        ; |302| Far Call Occurs
	.line	247
;----------------------------------------------------------------------
; 303 | CLEAR_TIME(&CCM_TIME_REMAINING);                                       
;----------------------------------------------------------------------
        ldp       @CL172,DP
        ldiu      @CL172,r0             ; |303| 
        ldp       @CL174,DP
        ldiu      @CL174,ar2            ; |303| 
        callu     r0                    ; far call to _CLEAR_TIME	; |303| 
                                        ; |303| Far Call Occurs
	.line	248
;----------------------------------------------------------------------
; 304 | CLEAR_TIME(&CCM_TIME_ELAPSED);                                         
;----------------------------------------------------------------------
        ldp       @CL172,DP
        ldiu      @CL172,r0             ; |304| 
        ldp       @CL175,DP
        ldiu      @CL175,ar2            ; |304| 
        callu     r0                    ; far call to _CLEAR_TIME	; |304| 
                                        ; |304| Far Call Occurs
	.line	250
;----------------------------------------------------------------------
; 306 | for (i=0;i<VTMAX;i++)                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |306| 
        sti       r0,*+fp(1)            ; |306| 
        cmpi      4,r0                  ; |306| 
        bge       L28                   ; |306| 
;*      Branch Occurs to L28            ; |306| 
L27:        
	.line	252
;----------------------------------------------------------------------
; 308 | VAR_NaN(&REG_VINC[i]);                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |308| 
        ldp       @CL176,DP
        mpyi      44,ar2                ; |308| 
        addi      @CL176,ar2            ; |308| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |308| 
        callu     r0                    ; far call to _VAR_NaN	; |308| 
                                        ; |308| Far Call Occurs
	.line	253
;----------------------------------------------------------------------
; 309 | VAR_NaN(&REG_VREF[i]);                                                 
;----------------------------------------------------------------------
        ldp       @CL177,DP
        ldiu      *+fp(1),ar2           ; |309| 
        mpyi      44,ar2                ; |309| 
        addi      @CL177,ar2            ; |309| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |309| 
        callu     r0                    ; far call to _VAR_NaN	; |309| 
                                        ; |309| Far Call Occurs
	.line	254
;----------------------------------------------------------------------
; 310 | VAR_NaN(&REG_FREQ[i]);                                                 
;----------------------------------------------------------------------
        ldp       @CL178,DP
        ldiu      *+fp(1),ar2           ; |310| 
        mpyi      44,ar2                ; |310| 
        addi      @CL178,ar2            ; |310| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |310| 
        callu     r0                    ; far call to _VAR_NaN	; |310| 
                                        ; |310| Far Call Occurs
	.line	255
;----------------------------------------------------------------------
; 311 | VAR_NaN(&REG_VTUNE[i]);                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |311| 
        ldp       @CL179,DP
        mpyi      44,ar2                ; |311| 
        addi      @CL179,ar2            ; |311| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |311| 
        callu     r0                    ; far call to _VAR_NaN	; |311| 
                                        ; |311| Far Call Occurs
	.line	257
;----------------------------------------------------------------------
; 313 | TMP_VINC[i]  = -1;                                                     
;----------------------------------------------------------------------
        ldp       @CL180,DP
        ldiu      *+fp(1),ar0           ; |313| 
        ash       1,ar0                 ; |313| 
        addi      @CL180,ar0            ; |313| Unsigned
        ldp       @CL181+0,DP
        ldfu      @CL181+0,f0           ; |313| 40b float hi half
        ldp       @CL181+1,DP
        ldiu      @CL181+1,r0           ; |313| 40b float lo half
        stf       f0,*ar0               ; |313| Store high half
        sti       r0,*+ar0              ; |313| Store low half
	.line	258
;----------------------------------------------------------------------
; 314 | TMP_VREF[i]  = -1;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |314| 
        ldp       @CL182,DP
        ash       1,ar0                 ; |314| 
        addi      @CL182,ar0            ; |314| Unsigned
        ldp       @CL181+0,DP
        ldfu      @CL181+0,f0           ; |314| 40b float hi half
        ldp       @CL181+1,DP
        ldiu      @CL181+1,r0           ; |314| 40b float lo half
        stf       f0,*ar0               ; |314| Store high half
        sti       r0,*+ar0              ; |314| Store low half
	.line	259
;----------------------------------------------------------------------
; 315 | TMP_FREQ[i]  = -1;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |315| 
        ldp       @CL183,DP
        ash       1,ar0                 ; |315| 
        addi      @CL183,ar0            ; |315| Unsigned
        ldp       @CL181+0,DP
        ldfu      @CL181+0,f0           ; |315| 40b float hi half
        ldp       @CL181+1,DP
        ldiu      @CL181+1,r0           ; |315| 40b float lo half
        stf       f0,*ar0               ; |315| Store high half
        sti       r0,*+ar0              ; |315| Store low half
	.line	260
;----------------------------------------------------------------------
; 316 | TMP_VTUNE[i] = -1;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |316| 
        ldp       @CL184,DP
        ash       1,ar0                 ; |316| 
        addi      @CL184,ar0            ; |316| Unsigned
        ldp       @CL181+0,DP
        ldfu      @CL181+0,f0           ; |316| 40b float hi half
        ldp       @CL181+1,DP
        ldiu      @CL181+1,r0           ; |316| 40b float lo half
        stf       f0,*ar0               ; |316| Store high half
        sti       r0,*+ar0              ; |316| Store low half
	.line	250
        ldiu      1,r0                  ; |306| 
        addi      *+fp(1),r0            ; |306| 
        sti       r0,*+fp(1)            ; |306| 
        cmpi      4,r0                  ; |306| 
        blt       L27                   ; |306| 
;*      Branch Occurs to L27            ; |306| 
L28:        
	.line	263
;----------------------------------------------------------------------
; 319 | VAR_NaN(&REG_VINC_O);                                                  
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |319| 
        ldp       @CL185,DP
        ldiu      @CL185,ar2            ; |319| 
        callu     r0                    ; far call to _VAR_NaN	; |319| 
                                        ; |319| Far Call Occurs
	.line	264
;----------------------------------------------------------------------
; 320 | VAR_NaN(&REG_VREF_O);                                                  
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |320| 
        ldp       @CL186,DP
        ldiu      @CL186,ar2            ; |320| 
        callu     r0                    ; far call to _VAR_NaN	; |320| 
                                        ; |320| Far Call Occurs
	.line	265
;----------------------------------------------------------------------
; 321 | VAR_NaN(&REG_FREQ_O);                                                  
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |321| 
        ldp       @CL187,DP
        ldiu      @CL187,ar2            ; |321| 
        callu     r0                    ; far call to _VAR_NaN	; |321| 
                                        ; |321| Far Call Occurs
	.line	266
;----------------------------------------------------------------------
; 322 | VAR_NaN(&REG_VINC_W);                                                  
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |322| 
        ldp       @CL188,DP
        ldiu      @CL188,ar2            ; |322| 
        callu     r0                    ; far call to _VAR_NaN	; |322| 
                                        ; |322| Far Call Occurs
	.line	267
;----------------------------------------------------------------------
; 323 | VAR_NaN(&REG_VREF_W);                                                  
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |323| 
        ldp       @CL189,DP
        ldiu      @CL189,ar2            ; |323| 
        callu     r0                    ; far call to _VAR_NaN	; |323| 
                                        ; |323| Far Call Occurs
	.line	268
;----------------------------------------------------------------------
; 324 | VAR_NaN(&REG_FREQ_W);                                                  
;----------------------------------------------------------------------
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |324| 
        ldp       @CL190,DP
        ldiu      @CL190,ar2            ; |324| 
        callu     r0                    ; far call to _VAR_NaN	; |324| 
                                        ; |324| Far Call Occurs
	.line	270
;----------------------------------------------------------------------
; 326 | FREQ_O          = 0.0;  /* Oil oscillator frequency */                 
;----------------------------------------------------------------------
        ldp       @CL191,DP
        ldiu      @CL191,ar0            ; |326| 
        ldfu      0.0000000000e+00,f0   ; |326| 
        stf       f0,*ar0               ; |326| 
	.line	271
;----------------------------------------------------------------------
; 327 | IP_O            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL192,DP
        ldiu      @CL192,ar0            ; |327| 
        ldfu      0.0000000000e+00,f0   ; |327| 
        stf       f0,*ar0               ; |327| 
	.line	272
;----------------------------------------------------------------------
; 328 | RP_O            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL193,DP
        ldiu      @CL193,ar0            ; |328| 
        ldfu      0.0000000000e+00,f0   ; |328| 
        stf       f0,*ar0               ; |328| 
	.line	273
;----------------------------------------------------------------------
; 329 | IP_RP_O         = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL194,DP
        ldiu      @CL194,ar0            ; |329| 
        ldfu      0.0000000000e+00,f0   ; |329| 
        stf       f0,*ar0               ; |329| 
	.line	274
;----------------------------------------------------------------------
; 330 | DB_IP_RP_O      = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL195,DP
        ldiu      @CL195,ar0            ; |330| 
        ldfu      0.0000000000e+00,f0   ; |330| 
        stf       f0,*ar0               ; |330| 
	.line	275
;----------------------------------------------------------------------
; 331 | FREQ_W          = 0.0;  /* Water oscillator frequency */               
;----------------------------------------------------------------------
        ldp       @CL196,DP
        ldiu      @CL196,ar0            ; |331| 
        ldfu      0.0000000000e+00,f0   ; |331| 
        stf       f0,*ar0               ; |331| 
	.line	276
;----------------------------------------------------------------------
; 332 | IP_W            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL197,DP
        ldiu      @CL197,ar0            ; |332| 
        ldfu      0.0000000000e+00,f0   ; |332| 
        stf       f0,*ar0               ; |332| 
	.line	277
;----------------------------------------------------------------------
; 333 | RP_W            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL198,DP
        ldiu      @CL198,ar0            ; |333| 
        ldfu      0.0000000000e+00,f0   ; |333| 
        stf       f0,*ar0               ; |333| 
	.line	278
;----------------------------------------------------------------------
; 334 | IP_RP_W         = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL199,DP
        ldiu      @CL199,ar0            ; |334| 
        ldfu      0.0000000000e+00,f0   ; |334| 
        stf       f0,*ar0               ; |334| 
	.line	279
;----------------------------------------------------------------------
; 335 | DB_IP_RP_W      = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL200,DP
        ldiu      @CL200,ar0            ; |335| 
        ldfu      0.0000000000e+00,f0   ; |335| 
        stf       f0,*ar0               ; |335| 
	.line	280
;----------------------------------------------------------------------
; 336 | i_FREQ_O        = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL201,DP
        ldiu      @CL201,ar0            ; |336| 
        ldiu      0,r0                  ; |336| 
        sti       r0,*ar0               ; |336| 
	.line	281
;----------------------------------------------------------------------
; 337 | i_IP_O          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL202,DP
        ldiu      @CL202,ar0            ; |337| 
        sti       r0,*ar0               ; |337| 
	.line	282
;----------------------------------------------------------------------
; 338 | i_RP_O          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL203,DP
        ldiu      @CL203,ar0            ; |338| 
        sti       r0,*ar0               ; |338| 
	.line	283
;----------------------------------------------------------------------
; 339 | i_FREQ_W        = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL204,DP
        ldiu      @CL204,ar0            ; |339| 
        sti       r0,*ar0               ; |339| 
	.line	284
;----------------------------------------------------------------------
; 340 | i_IP_W          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL205,DP
        ldiu      @CL205,ar0            ; |340| 
        sti       r0,*ar0               ; |340| 
	.line	285
;----------------------------------------------------------------------
; 341 | i_RP_W          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL206,DP
        ldiu      @CL206,ar0            ; |341| 
        sti       r0,*ar0               ; |341| 
	.line	286
;----------------------------------------------------------------------
; 342 | i_TEMP          = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL207,DP
        ldiu      @CL207,ar0            ; |342| 
        sti       r0,*ar0               ; |342| 
	.line	287
;----------------------------------------------------------------------
; 343 | i_WC            = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL208,DP
        ldiu      @CL208,ar0            ; |343| 
        sti       r0,*ar0               ; |343| 
	.line	289
;----------------------------------------------------------------------
; 345 | compatibility_dummy = 0.0;                                             
; 347 | //RUSS_TBL_LEN = Find_Russ_Tbl_Len();                                  
;----------------------------------------------------------------------
        ldp       @CL209,DP
        ldiu      @CL209,ar0            ; |345| 
        ldfu      0.0000000000e+00,f0   ; |345| 
        stf       f0,*ar0               ; |345| 
	.line	293
;----------------------------------------------------------------------
; 349 | for (i=0;i<30;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |349| 
        sti       r0,*+fp(1)            ; |349| 
        ldfu      0.0000000000e+00,f1   ; |353| 
        ldiu      0,r3                  ; |352| 
        ldiu      0,r2                  ; |351| 
        cmpi      30,r0                 ; |349| 
        bge       L30                   ; |349| 
;*      Branch Occurs to L30            ; |349| 
L29:        
	.line	295
;----------------------------------------------------------------------
; 351 | i_LV[i]         = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL210,DP
        ldiu      *+fp(1),ir0           ; |351| 
        ldiu      @CL210,ar0            ; |351| 
        sti       r2,*+ar0(ir0)         ; |351| 
	.line	296
;----------------------------------------------------------------------
; 352 | il_LV[i]        = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL211,DP
        ldiu      @CL211,ar0            ; |352| 
        ldiu      *+fp(1),ir0           ; |352| 
        sti       r3,*+ar0(ir0)         ; |352| 
	.line	297
;----------------------------------------------------------------------
; 353 | f_LV[i]         = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL212,DP
        ldiu      @CL212,ar0            ; |353| 
        ldiu      *+fp(1),ir0           ; |353| 
        stf       f1,*+ar0(ir0)         ; |353| 
	.line	293
        ldiu      1,r0                  ; |349| 
        addi      *+fp(1),r0            ; |349| 
        sti       r0,*+fp(1)            ; |349| 
        cmpi      30,r0                 ; |349| 
        blt       L29                   ; |349| 
;*      Branch Occurs to L29            ; |349| 
L30:        
	.line	300
;----------------------------------------------------------------------
; 356 | for (i=0;i<CORMAX;i++)                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |356| 
        sti       r0,*+fp(1)            ; |356| 
        cmpi      5,r0                  ; |356| 
        bge       L34                   ; |356| 
;*      Branch Occurs to L34            ; |356| 
L31:        
	.line	302
;----------------------------------------------------------------------
; 358 | COR[i].diag = 0;                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |358| 
        ldp       @CL213,DP
        mpyi      382,ir0               ; |358| 
        ldiu      @CL213,ar0            ; |358| 
        ldfu      0.0000000000e+00,f0   ; |358| 
        stf       f0,*+ar0(ir0)         ; |358| 
	.line	303
;----------------------------------------------------------------------
; 359 | COR[i].mfr = 0;                                                        
;----------------------------------------------------------------------
        ldp       @CL214,DP
        ldiu      *+fp(1),ir0           ; |359| 
        ldiu      @CL214,ar0            ; |359| 
        mpyi      382,ir0               ; |359| 
        ldfu      0.0000000000e+00,f0   ; |359| 
        stf       f0,*+ar0(ir0)         ; |359| 
	.line	304
;----------------------------------------------------------------------
; 360 | COR[i].density = 0;                                                    
;----------------------------------------------------------------------
        ldp       @CL215,DP
        ldiu      *+fp(1),ir0           ; |360| 
        ldiu      @CL215,ar0            ; |360| 
        mpyi      382,ir0               ; |360| 
        ldfu      0.0000000000e+00,f0   ; |360| 
        stf       f0,*+ar0(ir0)         ; |360| 
	.line	307
;----------------------------------------------------------------------
; 363 | VAR_Initialize(&COR[i].damp_flow_rate, c_time, u_time_sec, 100.0, 100.0
;     | , var_no_alarm|var_no_bound);                                          
;----------------------------------------------------------------------
        ldiu      51,rs                 ; |363| 
        ldiu      6,re                  ; |363| 
        ldp       @CL216,DP
        ldiu      *+fp(1),ar2           ; |363| 
        mpyi      382,ar2               ; |363| 
        addi      @CL216,ar2            ; |363| Unsigned
        ldp       @CL217,DP
        ldiu      70,rc                 ; |363| 
        ldiu      @CL217,r0             ; |363| 
        ldfu      1.0000000000e+02,f3   ; |363| 
        ldfu      1.0000000000e+02,f2   ; |363| 
        callu     r0                    ; far call to _VAR_Initialize	; |363| 
                                        ; |363| Far Call Occurs
	.line	308
;----------------------------------------------------------------------
; 364 | sprintf(COR[i].damp_flow_rate.name, "COR%i Dampen Flow", i+1);         
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |364| 
        addi      *+fp(1),r0            ; |364| 
        ldp       @CL219,DP
        push      r0                    ; |364| 
        ldiu      @CL219,r1             ; |364| 
        push      r1                    ; |364| 
        ldiu      *+fp(1),ar2           ; |364| 
        ldp       @CL218,DP
        mpyi      382,ar2               ; |364| 
        addi      @CL218,ar2            ; |364| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |364| 
        callu     r0                    ; far call to _sprintf	; |364| 
                                        ; |364| Far Call Occurs
        subi      2,sp                  ; |364| 
	.line	309
;----------------------------------------------------------------------
; 365 | COR[i].damp_flow_rate.aux = (i<<16)|(189);                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |365| 
        ldiu      r0,ir0                ; |365| 
        ldp       @CL220,DP
        mpyi      382,ir0               ; |365| 
        ash       16,r0                 ; |365| 
        ldiu      @CL220,ar0            ; |365| 
        or        189,r0                ; |365| 
        sti       r0,*+ar0(ir0)         ; |365| 
	.line	310
;----------------------------------------------------------------------
; 366 | VAR_Update(&COR[i].damp_flow_rate, 0.0, 0, 0);                         
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |366| 
        ldiu      *+fp(1),ar2           ; |366| 
        ldp       @CL216,DP
        mpyi      382,ar2               ; |366| 
        addi      @CL216,ar2            ; |366| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |366| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |366| 
        ldiu      @CL79+1,r2            ; |366| 40b float lo half
        ldiu      0,r3                  ; |366| 
        callu     r0                    ; far call to _VAR_Update	; |366| 
                                        ; |366| Far Call Occurs
	.line	311
;----------------------------------------------------------------------
; 367 | COR[i].damp_flow_rate.vect2 = (int*)CORIOLIS_CFG;                      
;----------------------------------------------------------------------
        ldp       @CL221,DP
        ldiu      @CL221,ar0            ; |367| 
        ldiu      *+fp(1),ir0           ; |367| 
        ldp       @CL222,DP
        mpyi      382,ir0               ; |367| 
        ldiu      @CL222,r0             ; |367| 
        sti       r0,*+ar0(ir0)         ; |367| 
	.line	314
;----------------------------------------------------------------------
; 370 | VAR_Initialize(&COR[i].damp_density, c_time, u_time_sec, 100.0, 100.0,
;     | var_no_alarm|var_no_bound);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |370| 
        mpyi      382,ar2               ; |370| 
        ldp       @CL223,DP
        ldiu      70,rc                 ; |370| 
        addi      @CL223,ar2            ; |370| Unsigned
        ldp       @CL217,DP
        ldiu      51,rs                 ; |370| 
        ldiu      6,re                  ; |370| 
        ldiu      @CL217,r0             ; |370| 
        ldfu      1.0000000000e+02,f3   ; |370| 
        ldfu      1.0000000000e+02,f2   ; |370| 
        callu     r0                    ; far call to _VAR_Initialize	; |370| 
                                        ; |370| Far Call Occurs
	.line	315
;----------------------------------------------------------------------
; 371 | sprintf(COR[i].damp_density.name, "COR%i Dampen Density", i+1);        
;----------------------------------------------------------------------
        ldp       @CL225,DP
        ldiu      @CL225,r1             ; |371| 
        ldiu      1,r0                  ; |371| 
        addi      *+fp(1),r0            ; |371| 
        push      r0                    ; |371| 
        push      r1                    ; |371| 
        ldiu      *+fp(1),ar2           ; |371| 
        ldp       @CL224,DP
        mpyi      382,ar2               ; |371| 
        addi      @CL224,ar2            ; |371| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |371| 
        callu     r0                    ; far call to _sprintf	; |371| 
                                        ; |371| Far Call Occurs
        subi      2,sp                  ; |371| 
	.line	316
;----------------------------------------------------------------------
; 372 | COR[i].damp_density.aux = (i<<16)|(193);                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |372| 
        ldiu      ir0,r0                ; |372| 
        ash       16,r0                 ; |372| 
        ldp       @CL226,DP
        mpyi      382,ir0               ; |372| 
        ldiu      @CL226,ar0            ; |372| 
        or        193,r0                ; |372| 
        sti       r0,*+ar0(ir0)         ; |372| 
	.line	317
;----------------------------------------------------------------------
; 373 | VAR_Update(&COR[i].damp_density, 0.0, 0, 0);                           
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |373| 
        ldp       @CL223,DP
        ldiu      *+fp(1),ar2           ; |373| 
        mpyi      382,ar2               ; |373| 
        addi      @CL223,ar2            ; |373| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |373| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |373| 
        ldiu      @CL79+1,r2            ; |373| 40b float lo half
        ldiu      0,r3                  ; |373| 
        callu     r0                    ; far call to _VAR_Update	; |373| 
                                        ; |373| Far Call Occurs
	.line	318
;----------------------------------------------------------------------
; 374 | COR[i].damp_density.vect2 = (int*)CORIOLIS_CFG;                        
;----------------------------------------------------------------------
        ldp       @CL227,DP
        ldiu      *+fp(1),ir0           ; |374| 
        ldiu      @CL227,ar0            ; |374| 
        ldp       @CL222,DP
        mpyi      382,ir0               ; |374| 
        ldiu      @CL222,r0             ; |374| 
        sti       r0,*+ar0(ir0)         ; |374| 
	.line	321
;----------------------------------------------------------------------
; 377 | VAR_Initialize(&COR[i].mfr_cutoff, c_mass_flow, u_generic_none, 100.0,
;     | 1000.0, var_no_alarm|var_no_bound);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |377| 
        ldp       @CL228,DP
        mpyi      382,ar2               ; |377| 
        addi      @CL228,ar2            ; |377| Unsigned
        ldp       @CL217,DP
        ldiu      @CL217,r0             ; |377| 
        ldp       @CL229,DP
        ldiu      72,rc                 ; |377| 
        ldfu      @CL229,f3             ; |377| 
        ldiu      251,rs                ; |377| 
        ldiu      6,re                  ; |377| 
        ldfu      1.0000000000e+02,f2   ; |377| 
        callu     r0                    ; far call to _VAR_Initialize	; |377| 
                                        ; |377| Far Call Occurs
	.line	322
;----------------------------------------------------------------------
; 378 | sprintf(COR[i].mfr_cutoff.name, "COR%i MFR Cutoff", i+1);              
;----------------------------------------------------------------------
        ldp       @CL231,DP
        ldiu      1,r0                  ; |378| 
        addi      *+fp(1),r0            ; |378| 
        ldiu      @CL231,r1             ; |378| 
        push      r0                    ; |378| 
        push      r1                    ; |378| 
        ldiu      *+fp(1),ar2           ; |378| 
        ldp       @CL230,DP
        mpyi      382,ar2               ; |378| 
        addi      @CL230,ar2            ; |378| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |378| 
        callu     r0                    ; far call to _sprintf	; |378| 
                                        ; |378| Far Call Occurs
        subi      2,sp                  ; |378| 
	.line	323
;----------------------------------------------------------------------
; 379 | COR[i].mfr_cutoff.aux = (i<<16)|(195);                                 
;----------------------------------------------------------------------
        ldp       @CL232,DP
        ldiu      *+fp(1),r0            ; |379| 
        ldiu      @CL232,ar0            ; |379| 
        ldiu      r0,ir0                ; |379| 
        ash       16,r0                 ; |379| 
        mpyi      382,ir0               ; |379| 
        or        195,r0                ; |379| 
        sti       r0,*+ar0(ir0)         ; |379| 
	.line	324
;----------------------------------------------------------------------
; 380 | VAR_Update(&COR[i].mfr_cutoff, 0.0, 0, 0);                             
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |380| 
        ldiu      *+fp(1),ar2           ; |380| 
        ldp       @CL228,DP
        mpyi      382,ar2               ; |380| 
        addi      @CL228,ar2            ; |380| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |380| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r2            ; |380| 40b float lo half
        ldiu      0,rc                  ; |380| 
        ldiu      0,r3                  ; |380| 
        callu     r0                    ; far call to _VAR_Update	; |380| 
                                        ; |380| Far Call Occurs
	.line	325
;----------------------------------------------------------------------
; 381 | COR[i].mfr_cutoff.vect2 = (int*)CORIOLIS_CFG;                          
;----------------------------------------------------------------------
        ldp       @CL233,DP
        ldiu      @CL233,ar0            ; |381| 
        ldiu      *+fp(1),ir0           ; |381| 
        ldp       @CL222,DP
        mpyi      382,ir0               ; |381| 
        ldiu      @CL222,r0             ; |381| 
        sti       r0,*+ar0(ir0)         ; |381| 
	.line	328
;----------------------------------------------------------------------
; 384 | VAR_Initialize(&COR[i].vfr_cutoff, c_volumetric_flow, u_generic_none, 1
;     | 00.0, 1000.0, var_no_alarm|var_no_bound);                              
;----------------------------------------------------------------------
        ldp       @CL234,DP
        ldiu      *+fp(1),ar2           ; |384| 
        mpyi      382,ar2               ; |384| 
        addi      @CL234,ar2            ; |384| Unsigned
        ldp       @CL217,DP
        ldiu      @CL217,r0             ; |384| 
        ldp       @CL229,DP
        ldiu      251,rs                ; |384| 
        ldiu      6,re                  ; |384| 
        ldiu      66,rc                 ; |384| 
        ldfu      @CL229,f3             ; |384| 
        ldfu      1.0000000000e+02,f2   ; |384| 
        callu     r0                    ; far call to _VAR_Initialize	; |384| 
                                        ; |384| Far Call Occurs
	.line	329
;----------------------------------------------------------------------
; 385 | sprintf(COR[i].vfr_cutoff.name, "COR%i VFR Cutoff", i+1);              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |385| 
        ldp       @CL236,DP
        addi      *+fp(1),r0            ; |385| 
        ldiu      @CL236,r1             ; |385| 
        push      r0                    ; |385| 
        ldp       @CL235,DP
        push      r1                    ; |385| 
        ldiu      *+fp(1),ar2           ; |385| 
        mpyi      382,ar2               ; |385| 
        addi      @CL235,ar2            ; |385| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |385| 
        callu     r0                    ; far call to _sprintf	; |385| 
                                        ; |385| Far Call Occurs
        subi      2,sp                  ; |385| 
	.line	330
;----------------------------------------------------------------------
; 386 | COR[i].vfr_cutoff.aux = (i<<16)|(197);                                 
;----------------------------------------------------------------------
        ldp       @CL237,DP
        ldiu      *+fp(1),r0            ; |386| 
        ldiu      r0,ir0                ; |386| 
        ldiu      @CL237,ar0            ; |386| 
        mpyi      382,ir0               ; |386| 
        ash       16,r0                 ; |386| 
        or        197,r0                ; |386| 
        sti       r0,*+ar0(ir0)         ; |386| 
	.line	331
;----------------------------------------------------------------------
; 387 | VAR_Update(&COR[i].vfr_cutoff, 0.0, 0, 0);                             
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |387| 
        ldiu      @CL67,r0              ; |387| 
        ldp       @CL234,DP
        mpyi      382,ar2               ; |387| 
        addi      @CL234,ar2            ; |387| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |387| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |387| 
        ldiu      @CL79+1,r2            ; |387| 40b float lo half
        ldiu      0,r3                  ; |387| 
        callu     r0                    ; far call to _VAR_Update	; |387| 
                                        ; |387| Far Call Occurs
	.line	332
;----------------------------------------------------------------------
; 388 | COR[i].vfr_cutoff.vect2 = (int*)CORIOLIS_CFG;                          
;----------------------------------------------------------------------
        ldp       @CL238,DP
        ldiu      *+fp(1),ir0           ; |388| 
        ldiu      @CL238,ar0            ; |388| 
        ldp       @CL222,DP
        mpyi      382,ir0               ; |388| 
        ldiu      @CL222,r0             ; |388| 
        sti       r0,*+ar0(ir0)         ; |388| 
	.line	335
;----------------------------------------------------------------------
; 391 | VAR_Initialize(&COR[i].mcf, c_mass_flow, u_generic_none, 100.0, 100000.
;     | 0, var_no_alarm|var_no_bound);                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |391| 
        mpyi      382,ar2               ; |391| 
        ldp       @CL239,DP
        ldiu      251,rs                ; |391| 
        addi      @CL239,ar2            ; |391| Unsigned
        ldp       @CL217,DP
        ldiu      6,re                  ; |391| 
        ldiu      @CL217,r0             ; |391| 
        ldp       @CL240,DP
        ldiu      72,rc                 ; |391| 
        ldfu      @CL240,f3             ; |391| 
        ldfu      1.0000000000e+02,f2   ; |391| 
        callu     r0                    ; far call to _VAR_Initialize	; |391| 
                                        ; |391| Far Call Occurs
	.line	336
;----------------------------------------------------------------------
; 392 | sprintf(COR[i].mcf.name, "COR%i MCF", i+1);                            
;----------------------------------------------------------------------
        ldp       @CL242,DP
        ldiu      1,r0                  ; |392| 
        addi      *+fp(1),r0            ; |392| 
        push      r0                    ; |392| 
        ldiu      @CL242,r1             ; |392| 
        push      r1                    ; |392| 
        ldp       @CL241,DP
        ldiu      *+fp(1),ar2           ; |392| 
        mpyi      382,ar2               ; |392| 
        addi      @CL241,ar2            ; |392| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |392| 
        callu     r0                    ; far call to _sprintf	; |392| 
                                        ; |392| Far Call Occurs
        subi      2,sp                  ; |392| 
	.line	337
;----------------------------------------------------------------------
; 393 | COR[i].mcf.aux = (i<<16)|(237);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |393| 
        ldiu      ir0,r0                ; |393| 
        ldp       @CL243,DP
        ash       16,r0                 ; |393| 
        mpyi      382,ir0               ; |393| 
        ldiu      @CL243,ar0            ; |393| 
        or        237,r0                ; |393| 
        sti       r0,*+ar0(ir0)         ; |393| 
	.line	338
;----------------------------------------------------------------------
; 394 | VAR_Update(&COR[i].mcf, 1.0, 0, 0);                                    
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |394| 
        ldiu      @CL67,r0              ; |394| 
        ldp       @CL239,DP
        mpyi      382,ar2               ; |394| 
        addi      @CL239,ar2            ; |394| Unsigned
        ldp       @CL244+0,DP
        ldfu      @CL244+0,f2           ; |394| 40b float hi half
        ldp       @CL244+1,DP
        ldiu      @CL244+1,r2           ; |394| 40b float lo half
        ldiu      0,rc                  ; |394| 
        ldiu      0,r3                  ; |394| 
        callu     r0                    ; far call to _VAR_Update	; |394| 
                                        ; |394| Far Call Occurs
	.line	339
;----------------------------------------------------------------------
; 395 | COR[i].mcf.vect2 = (int*)CORIOLIS_CFG;                                 
;----------------------------------------------------------------------
        ldp       @CL245,DP
        ldiu      *+fp(1),ir0           ; |395| 
        ldiu      @CL245,ar0            ; |395| 
        ldp       @CL222,DP
        mpyi      382,ir0               ; |395| 
        ldiu      @CL222,r0             ; |395| 
        sti       r0,*+ar0(ir0)         ; |395| 
	.line	342
;----------------------------------------------------------------------
; 398 | VAR_Initialize(&COR[i].address, c_not_classified, u_generic_none, 1.0,
;     | 1.0, var_no_alarm|var_round);                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |398| 
        ldp       @CL246,DP
        mpyi      382,ar2               ; |398| 
        addi      @CL246,ar2            ; |398| Unsigned
        ldp       @CL217,DP
        ldiu      @CL217,r0             ; |398| 
        ldiu      251,rs                ; |398| 
        ldiu      260,re                ; |398| 
        ldiu      0,rc                  ; |398| 
        ldfu      1.0000000000e+00,f3   ; |398| 
        ldfu      1.0000000000e+00,f2   ; |398| 
        callu     r0                    ; far call to _VAR_Initialize	; |398| 
                                        ; |398| Far Call Occurs
	.line	343
;----------------------------------------------------------------------
; 399 | sprintf(COR[i].address.name, "COR%i Address", i+1);                    
;----------------------------------------------------------------------
        ldp       @CL248,DP
        ldiu      @CL248,r1             ; |399| 
        ldp       @CL247,DP
        ldiu      1,r0                  ; |399| 
        addi      *+fp(1),r0            ; |399| 
        push      r0                    ; |399| 
        push      r1                    ; |399| 
        ldiu      *+fp(1),ar2           ; |399| 
        mpyi      382,ar2               ; |399| 
        addi      @CL247,ar2            ; |399| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |399| 
        callu     r0                    ; far call to _sprintf	; |399| 
                                        ; |399| Far Call Occurs
        subi      2,sp                  ; |399| 
	.line	344
;----------------------------------------------------------------------
; 400 | COR[i].address.aux = (i<<16)|(313);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |400| 
        ldiu      r0,ir0                ; |400| 
        ash       16,r0                 ; |400| 
        ldp       @CL249,DP
        mpyi      382,ir0               ; |400| 
        ldiu      @CL249,ar0            ; |400| 
        or        313,r0                ; |400| 
        sti       r0,*+ar0(ir0)         ; |400| 
	.line	345
;----------------------------------------------------------------------
; 401 | VAR_Update(&COR[i].address, 1.0, 0, 0);                                
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |401| 
        ldiu      @CL67,r0              ; |401| 
        ldp       @CL246,DP
        mpyi      382,ar2               ; |401| 
        addi      @CL246,ar2            ; |401| Unsigned
        ldp       @CL244+0,DP
        ldfu      @CL244+0,f2           ; |401| 40b float hi half
        ldp       @CL244+1,DP
        ldiu      0,rc                  ; |401| 
        ldiu      @CL244+1,r2           ; |401| 40b float lo half
        ldiu      0,r3                  ; |401| 
        callu     r0                    ; far call to _VAR_Update	; |401| 
                                        ; |401| Far Call Occurs
	.line	346
;----------------------------------------------------------------------
; 402 | COR[i].address.vect2 = (int*)CORIOLIS_INT_CFG;      /*CORIOLIS_INT_CFG
;     | instead of CORIOLIS_CFG RS*/                                           
;----------------------------------------------------------------------
        ldp       @CL250,DP
        ldiu      @CL250,ar0            ; |402| 
        ldiu      *+fp(1),ir0           ; |402| 
        ldp       @CL251,DP
        mpyi      382,ir0               ; |402| 
        ldiu      @CL251,r0             ; |402| 
        sti       r0,*+ar0(ir0)         ; |402| 
	.line	349
;----------------------------------------------------------------------
; 405 | VAR_Initialize(&COR[i].mass_unit, c_not_classified, u_generic_none, 1.0
;     | , 1.0, var_no_alarm|var_no_bound);                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |405| 
        mpyi      382,ar2               ; |405| 
        ldp       @CL252,DP
        ldiu      251,rs                ; |405| 
        addi      @CL252,ar2            ; |405| Unsigned
        ldiu      6,re                  ; |405| 
        ldp       @CL217,DP
        ldiu      0,rc                  ; |405| 
        ldiu      @CL217,r0             ; |405| 
        ldfu      1.0000000000e+00,f3   ; |405| 
        ldfu      1.0000000000e+00,f2   ; |405| 
        callu     r0                    ; far call to _VAR_Initialize	; |405| 
                                        ; |405| Far Call Occurs
	.line	350
;----------------------------------------------------------------------
; 406 | sprintf(COR[i].mass_unit.name, "COR%i Mass Flow Unit", i+1);           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |406| 
        addi      *+fp(1),r0            ; |406| 
        ldp       @CL254,DP
        push      r0                    ; |406| 
        ldiu      @CL254,r1             ; |406| 
        push      r1                    ; |406| 
        ldiu      *+fp(1),ar2           ; |406| 
        ldp       @CL253,DP
        mpyi      382,ar2               ; |406| 
        addi      @CL253,ar2            ; |406| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |406| 
        callu     r0                    ; far call to _sprintf	; |406| 
                                        ; |406| Far Call Occurs
        subi      2,sp                  ; |406| 
	.line	351
;----------------------------------------------------------------------
; 407 | COR[i].mass_unit.aux = (i<<16)|(39);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |407| 
        ldp       @CL255,DP
        ldiu      ir0,r0
        mpyi      382,ir0               ; |407| 
        ash       16,r0                 ; |407| 
        ldiu      @CL255,ar0            ; |407| 
        or        39,r0                 ; |407| 
        sti       r0,*+ar0(ir0)         ; |407| 
	.line	353
;----------------------------------------------------------------------
; 409 | COR[i].mass_unit.vect2 = (int*)CORIOLIS_INT_CFG;                       
;----------------------------------------------------------------------
        ldp       @CL256,DP
        ldiu      @CL256,ar0            ; |409| 
        ldiu      *+fp(1),ir0           ; |409| 
        ldp       @CL251,DP
        mpyi      382,ir0               ; |409| 
        ldiu      @CL251,r0             ; |409| 
        sti       r0,*+ar0(ir0)         ; |409| 
	.line	356
;----------------------------------------------------------------------
; 412 | VAR_Initialize(&COR[i].density_cutoff, c_not_classified, u_generic_none
;     | , 100.0, 1000.0, var_no_alarm|var_no_bound);                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |412| 
        ldp       @CL257,DP
        mpyi      382,ar2               ; |412| 
        addi      @CL257,ar2            ; |412| Unsigned
        ldp       @CL217,DP
        ldiu      @CL217,r0             ; |412| 
        ldiu      251,rs                ; |412| 
        ldiu      6,re                  ; |412| 
        ldp       @CL229,DP
        ldiu      0,rc                  ; |412| 
        ldfu      @CL229,f3             ; |412| 
        ldfu      1.0000000000e+02,f2   ; |412| 
        callu     r0                    ; far call to _VAR_Initialize	; |412| 
                                        ; |412| Far Call Occurs
	.line	357
;----------------------------------------------------------------------
; 413 | sprintf(COR[i].density_cutoff.name, "COR%i Density Cutoff", i+1);      
;----------------------------------------------------------------------
        ldp       @CL259,DP
        ldiu      1,r0                  ; |413| 
        addi      *+fp(1),r0            ; |413| 
        push      r0                    ; |413| 
        ldiu      @CL259,r1             ; |413| 
        push      r1                    ; |413| 
        ldp       @CL258,DP
        ldiu      *+fp(1),ar2           ; |413| 
        mpyi      382,ar2               ; |413| 
        addi      @CL258,ar2            ; |413| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |413| 
        callu     r0                    ; far call to _sprintf	; |413| 
                                        ; |413| Far Call Occurs
        subi      2,sp                  ; |413| 
	.line	358
;----------------------------------------------------------------------
; 414 | COR[i].density_cutoff.aux = (i<<16)|(149);                             
;----------------------------------------------------------------------
        ldp       @CL260,DP
        ldiu      *+fp(1),r0            ; |414| 
        ldiu      r0,ir0                ; |414| 
        ldiu      @CL260,ar0            ; |414| 
        mpyi      382,ir0               ; |414| 
        ash       16,r0                 ; |414| 
        or        149,r0                ; |414| 
        sti       r0,*+ar0(ir0)         ; |414| 
	.line	359
;----------------------------------------------------------------------
; 415 | VAR_Update(&COR[i].density_cutoff, 0.0, 0, 0);                         
;----------------------------------------------------------------------
        ldp       @CL67,DP
        ldiu      *+fp(1),ar2           ; |415| 
        ldiu      @CL67,r0              ; |415| 
        ldp       @CL257,DP
        mpyi      382,ar2               ; |415| 
        addi      @CL257,ar2            ; |415| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |415| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |415| 
        ldiu      @CL79+1,r2            ; |415| 40b float lo half
        ldiu      0,r3                  ; |415| 
        callu     r0                    ; far call to _VAR_Update	; |415| 
                                        ; |415| Far Call Occurs
	.line	360
;----------------------------------------------------------------------
; 416 | COR[i].density_cutoff.vect2 = (int*)CORIOLIS_CFG;                      
;----------------------------------------------------------------------
        ldp       @CL261,DP
        ldiu      *+fp(1),ir0           ; |416| 
        ldiu      @CL261,ar0            ; |416| 
        ldp       @CL222,DP
        mpyi      382,ir0               ; |416| 
        ldiu      @CL222,r0             ; |416| 
        sti       r0,*+ar0(ir0)         ; |416| 
	.line	362
;----------------------------------------------------------------------
; 418 | COR[i].u_density                                = u_mpv_kg_cm;         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |418| 
        ldp       @CL262,DP
        mpyi      382,ir0               ; |418| 
        ldiu      @CL262,ar0            ; |418| 
        ldiu      92,r0                 ; |418| 
        sti       r0,*+ar0(ir0)         ; |418| 
	.line	363
;----------------------------------------------------------------------
; 419 | COR[i].density_corrected                = API_error_num;               
;----------------------------------------------------------------------
        ldp       @CL263,DP
        ldiu      *+fp(1),ir0           ; |419| 
        ldiu      @CL263,ar0            ; |419| 
        ldp       @CL264,DP
        mpyi      382,ir0               ; |419| 
        ldfu      @CL264,f0             ; |419| 
        stf       f0,*+ar0(ir0)         ; |419| 
	.line	364
;----------------------------------------------------------------------
; 420 | COR[i].density_PDI_corrected    = 0;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |420| 
        ldp       @CL265,DP
        mpyi      382,ir0               ; |420| 
        ldiu      @CL265,ar0            ; |420| 
        ldfu      0.0000000000e+00,f0   ; |420| 
        stf       f0,*+ar0(ir0)         ; |420| 
	.line	365
;----------------------------------------------------------------------
; 421 | COR[i].u_density_corrected              = u_mpv_deg_API_60F;           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |421| 
        ldp       @CL266,DP
        mpyi      382,ir0               ; |421| 
        ldiu      @CL266,ar0            ; |421| 
        ldiu      105,r0                ; |421| 
        sti       r0,*+ar0(ir0)         ; |421| 
	.line	366
;----------------------------------------------------------------------
; 422 | COR[i].u_P                                              = u_p_psi;     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |422| 
        ldp       @CL267,DP
        mpyi      382,ir0               ; |422| 
        ldiu      @CL267,ar0            ; |422| 
        ldiu      6,r0                  ; |422| 
        sti       r0,*+ar0(ir0)         ; |422| 
	.line	367
;----------------------------------------------------------------------
; 423 | COR[i].P                                                = 0;           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |423| 
        ldp       @CL268,DP
        mpyi      382,ir0               ; |423| 
        ldiu      @CL268,ar0            ; |423| 
        ldfu      0.0000000000e+00,f0   ; |423| 
        stf       f0,*+ar0(ir0)         ; |423| 
	.line	368
;----------------------------------------------------------------------
; 424 | COR[i].T                                                = 0;           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |424| 
        ldp       @CL269,DP
        mpyi      382,ir0               ; |424| 
        ldiu      @CL269,ar0            ; |424| 
        ldfu      0.0000000000e+00,f0   ; |424| 
        stf       f0,*+ar0(ir0)         ; |424| 
	.line	369
;----------------------------------------------------------------------
; 425 | COR[i].u_T                                              = u_temp_F;    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |425| 
        ldp       @CL270,DP
        mpyi      382,ir0               ; |425| 
        ldiu      @CL270,ar0            ; |425| 
        ldiu      33,r0                 ; |425| 
        sti       r0,*+ar0(ir0)         ; |425| 
	.line	370
;----------------------------------------------------------------------
; 426 | COR[i].vfr                                              = 0;           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |426| 
        ldp       @CL271,DP
        mpyi      382,ir0               ; |426| 
        ldiu      @CL271,ar0            ; |426| 
        ldfu      0.0000000000e+00,f0   ; |426| 
        stf       f0,*+ar0(ir0)         ; |426| 
	.line	371
;----------------------------------------------------------------------
; 427 | COR[i].visc                                     = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |427| 
        ldp       @CL272,DP
        mpyi      382,ir0               ; |427| 
        ldiu      @CL272,ar0            ; |427| 
        ldfu      0.0000000000e+00,f0   ; |427| 
        stf       f0,*+ar0(ir0)         ; |427| 
	.line	372
;----------------------------------------------------------------------
; 428 | COR[i].press                                    = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |428| 
        ldp       @CL273,DP
        mpyi      382,ir0               ; |428| 
        ldiu      @CL273,ar0            ; |428| 
        ldfu      0.0000000000e+00,f0   ; |428| 
        stf       f0,*+ar0(ir0)         ; |428| 
	.line	373
;----------------------------------------------------------------------
; 429 | COR[i].mass_total                               = 0;                   
;----------------------------------------------------------------------
        ldp       @CL274,DP
        ldiu      *+fp(1),ir0           ; |429| 
        ldiu      @CL274,ar0            ; |429| 
        mpyi      382,ir0               ; |429| 
        ldfu      0.0000000000e+00,f0   ; |429| 
        stf       f0,*+ar0(ir0)         ; |429| 
	.line	374
;----------------------------------------------------------------------
; 430 | COR[i].volume_total                     = 0;                           
;----------------------------------------------------------------------
        ldp       @CL275,DP
        ldiu      *+fp(1),ir0           ; |430| 
        mpyi      382,ir0               ; |430| 
        ldiu      @CL275,ar0            ; |430| 
        ldfu      0.0000000000e+00,f0   ; |430| 
        stf       f0,*+ar0(ir0)         ; |430| 
	.line	375
;----------------------------------------------------------------------
; 431 | COR[i].mass_inv                                 = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |431| 
        ldp       @CL276,DP
        mpyi      382,ir0               ; |431| 
        ldiu      @CL276,ar0            ; |431| 
        ldfu      0.0000000000e+00,f0   ; |431| 
        stf       f0,*+ar0(ir0)         ; |431| 
	.line	376
;----------------------------------------------------------------------
; 432 | COR[i].volume_inv                               = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |432| 
        ldp       @CL277,DP
        mpyi      382,ir0               ; |432| 
        ldiu      @CL277,ar0            ; |432| 
        ldfu      0.0000000000e+00,f0   ; |432| 
        stf       f0,*+ar0(ir0)         ; |432| 
	.line	377
;----------------------------------------------------------------------
; 433 | COR[i].raw_tube_freq                    = 0;                           
;----------------------------------------------------------------------
        ldp       @CL278,DP
        ldiu      *+fp(1),ir0           ; |433| 
        ldiu      @CL278,ar0            ; |433| 
        mpyi      382,ir0               ; |433| 
        ldfu      0.0000000000e+00,f0   ; |433| 
        stf       f0,*+ar0(ir0)         ; |433| 
	.line	378
;----------------------------------------------------------------------
; 434 | COR[i].left_pickup_value                = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |434| 
        ldp       @CL279,DP
        mpyi      382,ir0               ; |434| 
        ldiu      @CL279,ar0            ; |434| 
        ldfu      0.0000000000e+00,f0   ; |434| 
        stf       f0,*+ar0(ir0)         ; |434| 
	.line	379
;----------------------------------------------------------------------
; 435 | COR[i].right_pickup_value               = 0;                           
;----------------------------------------------------------------------
        ldp       @CL280,DP
        ldiu      *+fp(1),ir0           ; |435| 
        ldiu      @CL280,ar0            ; |435| 
        mpyi      382,ir0               ; |435| 
        ldfu      0.0000000000e+00,f0   ; |435| 
        stf       f0,*+ar0(ir0)         ; |435| 
	.line	380
;----------------------------------------------------------------------
; 436 | COR[i].drive_gain                               = 0;                   
;----------------------------------------------------------------------
        ldp       @CL281,DP
        ldiu      @CL281,ar0            ; |436| 
        ldiu      *+fp(1),ir0           ; |436| 
        mpyi      382,ir0               ; |436| 
        ldfu      0.0000000000e+00,f0   ; |436| 
        stf       f0,*+ar0(ir0)         ; |436| 
	.line	381
;----------------------------------------------------------------------
; 437 | COR[i].u_v                                              = u_generic_unk
;     | nown;                                                                  
;----------------------------------------------------------------------
        ldp       @CL282,DP
        ldiu      *+fp(1),ir0           ; |437| 
        ldiu      @CL282,ar0            ; |437| 
        mpyi      382,ir0               ; |437| 
        ldiu      252,r0                ; |437| 
        sti       r0,*+ar0(ir0)         ; |437| 
	.line	382
;----------------------------------------------------------------------
; 438 | COR[i].u_vfr                                    = u_generic_unknown;   
;----------------------------------------------------------------------
        ldp       @CL283,DP
        ldiu      *+fp(1),ir0           ; |438| 
        mpyi      382,ir0               ; |438| 
        ldiu      @CL283,ar0            ; |438| 
        sti       r0,*+ar0(ir0)         ; |438| 
	.line	383
;----------------------------------------------------------------------
; 439 | COR[i].u_visc                                   = u_generic_unknown;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |439| 
        ldp       @CL284,DP
        mpyi      382,ir0               ; |439| 
        ldiu      @CL284,ar0            ; |439| 
        sti       r0,*+ar0(ir0)         ; |439| 
	.line	384
;----------------------------------------------------------------------
; 440 | COR[i].u_m                                              = u_generic_unk
;     | nown;                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |440| 
        ldp       @CL285,DP
        mpyi      382,ir0               ; |440| 
        ldiu      @CL285,ar0            ; |440| 
        sti       r0,*+ar0(ir0)         ; |440| 
	.line	385
;----------------------------------------------------------------------
; 441 | COR[i].u_mfr                                    = u_generic_unknown;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |441| 
        ldp       @CL286,DP
        mpyi      382,ir0               ; |441| 
        ldiu      @CL286,ar0            ; |441| 
        sti       r0,*+ar0(ir0)         ; |441| 
	.line	386
;----------------------------------------------------------------------
; 442 | COR[i].Z.val                                    = 0;                   
;----------------------------------------------------------------------
        ldp       @CL287,DP
        ldiu      *+fp(1),ir0           ; |442| 
        ldiu      @CL287,ar0            ; |442| 
        mpyi      382,ir0               ; |442| 
        ldiu      0,r0                  ; |442| 
        sti       r0,*+ar0(ir0)         ; |442| 
	.line	300
        ldiu      1,r0                  ; |356| 
        addi      *+fp(1),r0            ; |356| 
        sti       r0,*+fp(1)            ; |356| 
        cmpi      5,r0                  ; |356| 
        blt       L31                   ; |356| 
;*      Branch Occurs to L31            ; |356| 
L34:        
	.line	389
;----------------------------------------------------------------------
; 445 | COR[0].Z.vect  = (int*)CORIOLIS_ZERO1;                                 
;----------------------------------------------------------------------
        ldp       @CL288,DP
        ldiu      @CL288,ar0            ; |445| 
        ldp       @CL289,DP
        ldiu      @CL289,r0             ; |445| 
        sti       r0,*ar0               ; |445| 
	.line	390
;----------------------------------------------------------------------
; 446 | COR[1].Z.vect  = (int*)CORIOLIS_ZERO2;                                 
;----------------------------------------------------------------------
        ldp       @CL290,DP
        ldiu      @CL290,ar0            ; |446| 
        ldp       @CL291,DP
        ldiu      @CL291,r0             ; |446| 
        sti       r0,*ar0               ; |446| 
	.line	391
;----------------------------------------------------------------------
; 447 | COR[2].Z.vect  = (int*)CORIOLIS_ZERO3;                                 
;----------------------------------------------------------------------
        ldp       @CL292,DP
        ldiu      @CL292,ar0            ; |447| 
        ldp       @CL293,DP
        ldiu      @CL293,r0             ; |447| 
        sti       r0,*ar0               ; |447| 
	.line	392
;----------------------------------------------------------------------
; 448 | COR[3].Z.vect  = (int*)CORIOLIS_ZERO4;                                 
;----------------------------------------------------------------------
        ldp       @CL294,DP
        ldiu      @CL294,ar0            ; |448| 
        ldp       @CL295,DP
        ldiu      @CL295,r0             ; |448| 
        sti       r0,*ar0               ; |448| 
	.line	393
;----------------------------------------------------------------------
; 449 | COR[0].Z.vect2 = NULL_PTR;                              /*define .vect2
;     |  for ZERO coil or sys freeze RS*/                                      
;----------------------------------------------------------------------
        ldp       @CL296,DP
        ldiu      @CL296,ar0            ; |449| 
        ldiu      0,r0                  ; |449| 
        sti       r0,*ar0               ; |449| 
	.line	394
;----------------------------------------------------------------------
; 450 | COR[1].Z.vect2 = NULL_PTR;                                             
;----------------------------------------------------------------------
        ldp       @CL297,DP
        ldiu      @CL297,ar0            ; |450| 
        sti       r0,*ar0               ; |450| 
	.line	395
;----------------------------------------------------------------------
; 451 | COR[2].Z.vect2 = NULL_PTR;                                             
;----------------------------------------------------------------------
        ldp       @CL298,DP
        ldiu      @CL298,ar0            ; |451| 
        sti       r0,*ar0               ; |451| 
	.line	396
;----------------------------------------------------------------------
; 452 | COR[3].Z.vect2 = NULL_PTR;                                             
;----------------------------------------------------------------------
        ldp       @CL299,DP
        ldiu      @CL299,ar0            ; |452| 
        sti       r0,*ar0               ; |452| 
	.line	398
;----------------------------------------------------------------------
; 454 | for (i=0;i<FCMAX;i++)                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(1)            ; |454| 
        cmpi      3,r0                  ; |454| 
        bge       L51                   ; |454| 
;*      Branch Occurs to L51            ; |454| 
L35:        
	.line	401
;----------------------------------------------------------------------
; 457 | PRESS[i].u_DP           = u_p_in_H2O_60F;                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |457| 
        ldp       @CL300,DP
        mpyi      9,ir0                 ; |457| 
        ldiu      @CL300,ar0            ; |457| 
        ldiu      145,r0                ; |457| 
        sti       r0,*+ar0(ir0)         ; |457| 
	.line	402
;----------------------------------------------------------------------
; 458 | PRESS[i].u_SP           = u_p_psi;                                     
;----------------------------------------------------------------------
        ldp       @CL301,DP
        ldiu      *+fp(1),ir0           ; |458| 
        ldiu      @CL301,ar0            ; |458| 
        mpyi      9,ir0                 ; |458| 
        ldiu      6,r0                  ; |458| 
        sti       r0,*+ar0(ir0)         ; |458| 
	.line	403
;----------------------------------------------------------------------
; 459 | PRESS[i].u_PT           = u_temp_F;                                    
;----------------------------------------------------------------------
        ldp       @CL302,DP
        ldiu      *+fp(1),ir0           ; |459| 
        ldiu      @CL302,ar0            ; |459| 
        mpyi      9,ir0                 ; |459| 
        ldiu      33,r0                 ; |459| 
        sti       r0,*+ar0(ir0)         ; |459| 
	.line	404
;----------------------------------------------------------------------
; 460 | PRESS[i].p_delta        = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL303,DP
        ldiu      *+fp(1),ir0           ; |460| 
        ldiu      @CL303,ar0            ; |460| 
        mpyi      9,ir0                 ; |460| 
        ldfu      0.0000000000e+00,f0   ; |460| 
        stf       f0,*+ar0(ir0)         ; |460| 
	.line	405
;----------------------------------------------------------------------
; 461 | PRESS[i].p_static       = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL304,DP
        ldiu      *+fp(1),ir0           ; |461| 
        ldiu      @CL304,ar0            ; |461| 
        mpyi      9,ir0                 ; |461| 
        ldfu      0.0000000000e+00,f0   ; |461| 
        stf       f0,*+ar0(ir0)         ; |461| 
	.line	406
;----------------------------------------------------------------------
; 462 | PRESS[i].T                      = 0;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |462| 
        ldp       @CL305,DP
        mpyi      9,ir0                 ; |462| 
        ldiu      @CL305,ar0            ; |462| 
        ldfu      0.0000000000e+00,f0   ; |462| 
        stf       f0,*+ar0(ir0)         ; |462| 
	.line	407
;----------------------------------------------------------------------
; 463 | PRESS[i].diag0          = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL306,DP
        ldiu      *+fp(1),ir0           ; |463| 
        ldiu      @CL306,ar0            ; |463| 
        mpyi      9,ir0                 ; |463| 
        ldfu      0.0000000000e+00,f0   ; |463| 
        stf       f0,*+ar0(ir0)         ; |463| 
	.line	408
;----------------------------------------------------------------------
; 464 | PRESS[i].diag1          = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL307,DP
        ldiu      @CL307,ar0            ; |464| 
        ldiu      *+fp(1),ir0           ; |464| 
        mpyi      9,ir0                 ; |464| 
        ldfu      0.0000000000e+00,f0   ; |464| 
        stf       f0,*+ar0(ir0)         ; |464| 
	.line	409
;----------------------------------------------------------------------
; 465 | PRESS[i].diag2          = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |465| 
        ldp       @CL308,DP
        mpyi      9,ir0                 ; |465| 
        ldiu      @CL308,ar0            ; |465| 
        ldfu      0.0000000000e+00,f0   ; |465| 
        stf       f0,*+ar0(ir0)         ; |465| 
	.line	412
;----------------------------------------------------------------------
; 468 | TMPTRANS[i].T                                   = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |468| 
        ldp       @CL309,DP
        mpyi      6,ir0                 ; |468| 
        ldiu      @CL309,ar0            ; |468| 
        ldfu      0.0000000000e+00,f0   ; |468| 
        stf       f0,*+ar0(ir0)         ; |468| 
	.line	413
;----------------------------------------------------------------------
; 469 | TMPTRANS[i].etc0                                = 0;                   
;----------------------------------------------------------------------
        ldp       @CL310,DP
        ldiu      *+fp(1),ir0           ; |469| 
        ldiu      @CL310,ar0            ; |469| 
        mpyi      6,ir0                 ; |469| 
        ldfu      0.0000000000e+00,f0   ; |469| 
        stf       f0,*+ar0(ir0)         ; |469| 
	.line	414
;----------------------------------------------------------------------
; 470 | TMPTRANS[i].etc1                                = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |470| 
        ldp       @CL311,DP
        mpyi      6,ir0                 ; |470| 
        ldiu      @CL311,ar0            ; |470| 
        ldfu      0.0000000000e+00,f0   ; |470| 
        stf       f0,*+ar0(ir0)         ; |470| 
	.line	415
;----------------------------------------------------------------------
; 471 | TMPTRANS[i].etc2                                = 0;                   
;----------------------------------------------------------------------
        ldp       @CL312,DP
        ldiu      *+fp(1),ir0           ; |471| 
        ldiu      @CL312,ar0            ; |471| 
        mpyi      6,ir0                 ; |471| 
        ldfu      0.0000000000e+00,f0   ; |471| 
        stf       f0,*+ar0(ir0)         ; |471| 
	.line	416
;----------------------------------------------------------------------
; 472 | TMPTRANS[i].etc3                                = 0;                   
;----------------------------------------------------------------------
        ldp       @CL313,DP
        ldiu      *+fp(1),ir0           ; |472| 
        ldiu      @CL313,ar0            ; |472| 
        mpyi      6,ir0                 ; |472| 
        ldfu      0.0000000000e+00,f0   ; |472| 
        stf       f0,*+ar0(ir0)         ; |472| 
	.line	417
;----------------------------------------------------------------------
; 473 | TMPTRANS[i].etc4                                = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |473| 
        ldp       @CL314,DP
        mpyi      6,ir0                 ; |473| 
        ldiu      @CL314,ar0            ; |473| 
        ldfu      0.0000000000e+00,f0   ; |473| 
        stf       f0,*+ar0(ir0)         ; |473| 
	.line	418
;----------------------------------------------------------------------
; 474 | FC[i].Dadj                                              = 0;    /* Adju
;     | sted Density */                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |474| 
        ldp       @CL315,DP
        mpyi      1336,ir0              ; |474| 
        ldiu      @CL315,ar0            ; |474| 
        ldfu      0.0000000000e+00,f0   ; |474| 
        stf       f0,*+ar0(ir0)         ; |474| 
	.line	419
;----------------------------------------------------------------------
; 475 | FC[i].PULSE_STAT                                = 0;                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |475| 
        ldp       @CL316,DP
        mpyi      1336,ir0              ; |475| 
        ldiu      @CL316,ar0            ; |475| 
        ldiu      0,r0                  ; |475| 
        sti       r0,*+ar0(ir0)         ; |475| 
	.line	420
;----------------------------------------------------------------------
; 476 | FC[i].net_watercut                              = 0.0;                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |476| 
        ldp       @CL317,DP
        mpyi      1336,ir0              ; |476| 
        ldiu      @CL317,ar0            ; |476| 
        ldfu      0.0000000000e+00,f0   ; |476| 
        stf       f0,*+ar0(ir0)         ; |476| 
	.line	421
;----------------------------------------------------------------------
; 477 | FC[i].net_watercut_mass                 = 0.0;                         
;----------------------------------------------------------------------
        ldp       @CL318,DP
        ldiu      *+fp(1),ir0           ; |477| 
        ldiu      @CL318,ar0            ; |477| 
        mpyi      1336,ir0              ; |477| 
        ldfu      0.0000000000e+00,f0   ; |477| 
        stf       f0,*+ar0(ir0)         ; |477| 
	.line	422
;----------------------------------------------------------------------
; 478 | FC[i].density_PDI_corrected     = API_error_num;                       
;----------------------------------------------------------------------
        ldp       @CL319,DP
        ldiu      *+fp(1),ir0           ; |478| 
        ldiu      @CL319,ar0            ; |478| 
        ldp       @CL264,DP
        mpyi      1336,ir0              ; |478| 
        ldfu      @CL264,f0             ; |478| 
        stf       f0,*+ar0(ir0)         ; |478| 
	.line	424
;----------------------------------------------------------------------
; 480 | VAR_NaN(&FC[i].PULSE_FREQ);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |480| 
        ldp       @CL320,DP
        mpyi      1336,ar2              ; |480| 
        addi      @CL320,ar2            ; |480| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |480| 
        callu     r0                    ; far call to _VAR_NaN	; |480| 
                                        ; |480| Far Call Occurs
	.line	426
;----------------------------------------------------------------------
; 482 | if (FC[i].USE_PDI_SALINITY || !FC[i].MAN_SALINITY)                     
;----------------------------------------------------------------------
        ldp       @CL321,DP
        ldiu      *+fp(1),ir0           ; |482| 
        ldiu      @CL321,ar0            ; |482| 
        mpyi      1336,ir0              ; |482| 
        ldiu      *+ar0(ir0),r0         ; |482| 
        cmpi      0,r0                  ; |482| 
        bne       L37                   ; |482| 
;*      Branch Occurs to L37            ; |482| 
        ldiu      *+fp(1),ir0           ; |482| 
        ldp       @CL322,DP
        mpyi      1336,ir0              ; |482| 
        ldiu      @CL322,ar0            ; |482| 
        ldiu      *+ar0(ir0),r0         ; |482| 
        cmpi      0,r0                  ; |482| 
        bne       L38                   ; |482| 
;*      Branch Occurs to L38            ; |482| 
L37:        
	.line	427
;----------------------------------------------------------------------
; 483 | VAR_NaN(&FC[i].salinity);                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |483| 
        ldp       @CL323,DP
        mpyi      1336,ar2              ; |483| 
        addi      @CL323,ar2            ; |483| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |483| 
        callu     r0                    ; far call to _VAR_NaN	; |483| 
                                        ; |483| Far Call Occurs
L38:        
	.line	429
;----------------------------------------------------------------------
; 485 | if (USE_PDI_WATERCUT.val || CALC_WC_DENSITY.val || !FC[i].MAN_WATERCUT)
;     |                                                                        
;----------------------------------------------------------------------
        ldp       @CL324,DP
        ldiu      @CL324,ar0            ; |485| 
        ldiu      *ar0,r0               ; |485| 
        cmpi      0,r0                  ; |485| 
        bne       L41                   ; |485| 
;*      Branch Occurs to L41            ; |485| 
        ldp       @CL325,DP
        ldiu      @CL325,ar0            ; |485| 
        ldiu      *ar0,r0               ; |485| 
        cmpi      0,r0                  ; |485| 
        bne       L41                   ; |485| 
;*      Branch Occurs to L41            ; |485| 
        ldiu      *+fp(1),ir0           ; |485| 
        ldp       @CL326,DP
        mpyi      1336,ir0              ; |485| 
        ldiu      @CL326,ar0            ; |485| 
        ldiu      *+ar0(ir0),r0         ; |485| 
        cmpi      0,r0                  ; |485| 
        bne       L42                   ; |485| 
;*      Branch Occurs to L42            ; |485| 
L41:        
	.line	430
;----------------------------------------------------------------------
; 486 | VAR_NaN(&FC[i].watercut);                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |486| 
        ldp       @CL327,DP
        mpyi      1336,ar2              ; |486| 
        addi      @CL327,ar2            ; |486| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |486| 
        callu     r0                    ; far call to _VAR_NaN	; |486| 
                                        ; |486| Far Call Occurs
L42:        
	.line	432
;----------------------------------------------------------------------
; 488 | if (!FC[i].MAN_PRESSURE)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |488| 
        ldp       @CL328,DP
        mpyi      1336,ir0              ; |488| 
        ldiu      @CL328,ar0            ; |488| 
        ldiu      *+ar0(ir0),r0         ; |488| 
        cmpi      0,r0                  ; |488| 
        bne       L44                   ; |488| 
;*      Branch Occurs to L44            ; |488| 
	.line	433
;----------------------------------------------------------------------
; 489 | VAR_NaN(&FC[i].pressure);                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |489| 
        ldp       @CL329,DP
        mpyi      1336,ar2              ; |489| 
        addi      @CL329,ar2            ; |489| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |489| 
        callu     r0                    ; far call to _VAR_NaN	; |489| 
                                        ; |489| Far Call Occurs
L44:        
	.line	435
;----------------------------------------------------------------------
; 491 | if (FC[i].USE_PDI_TEMP || !FC[i].MAN_TEMP)                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |491| 
        ldp       @CL330,DP
        mpyi      1336,ir0              ; |491| 
        ldiu      @CL330,ar0            ; |491| 
        ldiu      *+ar0(ir0),r0         ; |491| 
        cmpi      0,r0                  ; |491| 
        bne       L46                   ; |491| 
;*      Branch Occurs to L46            ; |491| 
        ldiu      *+fp(1),ir0           ; |491| 
        ldp       @CL331,DP
        mpyi      1336,ir0              ; |491| 
        ldiu      @CL331,ar0            ; |491| 
        ldiu      *+ar0(ir0),r0         ; |491| 
        cmpi      0,r0                  ; |491| 
        bne       L47                   ; |491| 
;*      Branch Occurs to L47            ; |491| 
L46:        
	.line	436
;----------------------------------------------------------------------
; 492 | VAR_NaN(&FC[i].T);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |492| 
        ldp       @CL332,DP
        mpyi      1336,ar2              ; |492| 
        addi      @CL332,ar2            ; |492| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |492| 
        callu     r0                    ; far call to _VAR_NaN	; |492| 
                                        ; |492| Far Call Occurs
L47:        
	.line	438
;----------------------------------------------------------------------
; 494 | if (!FC[i].MAN_FLOW)                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |494| 
        ldp       @CL333,DP
        mpyi      1336,ir0              ; |494| 
        ldiu      @CL333,ar0            ; |494| 
        ldiu      *+ar0(ir0),r0         ; |494| 
        cmpi      0,r0                  ; |494| 
        bne       L49                   ; |494| 
;*      Branch Occurs to L49            ; |494| 
	.line	439
;----------------------------------------------------------------------
; 495 | VAR_NaN(&FC[i].FLOW_TOTAL);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |495| 
        ldp       @CL334,DP
        mpyi      1336,ar2              ; |495| 
        addi      @CL334,ar2            ; |495| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |495| 
        callu     r0                    ; far call to _VAR_NaN	; |495| 
                                        ; |495| Far Call Occurs
L49:        
	.line	441
;----------------------------------------------------------------------
; 497 | VAR_NaN(&FC[i].FLOW_WATER);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |497| 
        ldp       @CL335,DP
        mpyi      1336,ar2              ; |497| 
        addi      @CL335,ar2            ; |497| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |497| 
        callu     r0                    ; far call to _VAR_NaN	; |497| 
                                        ; |497| Far Call Occurs
	.line	442
;----------------------------------------------------------------------
; 498 | VAR_NaN(&FC[i].FLOW_OIL);                                              
;----------------------------------------------------------------------
        ldp       @CL336,DP
        ldiu      *+fp(1),ar2           ; |498| 
        mpyi      1336,ar2              ; |498| 
        addi      @CL336,ar2            ; |498| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |498| 
        callu     r0                    ; far call to _VAR_NaN	; |498| 
                                        ; |498| Far Call Occurs
	.line	443
;----------------------------------------------------------------------
; 499 | VAR_NaN(&FC[i].GROSS_TOTAL);                                           
;----------------------------------------------------------------------
        ldp       @CL337,DP
        ldiu      *+fp(1),ar2           ; |499| 
        mpyi      1336,ar2              ; |499| 
        addi      @CL337,ar2            ; |499| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |499| 
        callu     r0                    ; far call to _VAR_NaN	; |499| 
                                        ; |499| Far Call Occurs
	.line	444
;----------------------------------------------------------------------
; 500 | VAR_NaN(&FC[i].GROSS_WATER);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |500| 
        ldp       @CL338,DP
        mpyi      1336,ar2              ; |500| 
        addi      @CL338,ar2            ; |500| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |500| 
        callu     r0                    ; far call to _VAR_NaN	; |500| 
                                        ; |500| Far Call Occurs
	.line	445
;----------------------------------------------------------------------
; 501 | VAR_NaN(&FC[i].GROSS_OIL);                                             
;----------------------------------------------------------------------
        ldp       @CL339,DP
        ldiu      *+fp(1),ar2           ; |501| 
        mpyi      1336,ar2              ; |501| 
        addi      @CL339,ar2            ; |501| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |501| 
        callu     r0                    ; far call to _VAR_NaN	; |501| 
                                        ; |501| Far Call Occurs
	.line	446
;----------------------------------------------------------------------
; 502 | VAR_NaN(&FC[i].NET_FLOW_TOTAL);                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |502| 
        ldp       @CL340,DP
        mpyi      1336,ar2              ; |502| 
        addi      @CL340,ar2            ; |502| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |502| 
        callu     r0                    ; far call to _VAR_NaN	; |502| 
                                        ; |502| Far Call Occurs
	.line	447
;----------------------------------------------------------------------
; 503 | VAR_NaN(&FC[i].NET_FLOW_WATER);                                        
;----------------------------------------------------------------------
        ldp       @CL341,DP
        ldiu      *+fp(1),ar2           ; |503| 
        mpyi      1336,ar2              ; |503| 
        addi      @CL341,ar2            ; |503| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |503| 
        callu     r0                    ; far call to _VAR_NaN	; |503| 
                                        ; |503| Far Call Occurs
	.line	448
;----------------------------------------------------------------------
; 504 | VAR_NaN(&FC[i].NET_FLOW_OIL);                                          
;----------------------------------------------------------------------
        ldp       @CL342,DP
        ldiu      *+fp(1),ar2           ; |504| 
        mpyi      1336,ar2              ; |504| 
        addi      @CL342,ar2            ; |504| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |504| 
        callu     r0                    ; far call to _VAR_NaN	; |504| 
                                        ; |504| Far Call Occurs
	.line	449
;----------------------------------------------------------------------
; 505 | VAR_NaN(&FC[i].NET_TOTAL);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |505| 
        ldp       @CL343,DP
        mpyi      1336,ar2              ; |505| 
        addi      @CL343,ar2            ; |505| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |505| 
        callu     r0                    ; far call to _VAR_NaN	; |505| 
                                        ; |505| Far Call Occurs
	.line	450
;----------------------------------------------------------------------
; 506 | VAR_NaN(&FC[i].NET_WATER);                                             
;----------------------------------------------------------------------
        ldp       @CL344,DP
        ldiu      *+fp(1),ar2           ; |506| 
        mpyi      1336,ar2              ; |506| 
        addi      @CL344,ar2            ; |506| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |506| 
        callu     r0                    ; far call to _VAR_NaN	; |506| 
                                        ; |506| Far Call Occurs
	.line	451
;----------------------------------------------------------------------
; 507 | VAR_NaN(&FC[i].NET_OIL);                                               
; 509 | //accumulated whole number component of gross oil                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |507| 
        ldp       @CL345,DP
        mpyi      1336,ar2              ; |507| 
        addi      @CL345,ar2            ; |507| Unsigned
        ldp       @CL126,DP
        ldiu      @CL126,r0             ; |507| 
        callu     r0                    ; far call to _VAR_NaN	; |507| 
                                        ; |507| Far Call Occurs
	.line	454
;----------------------------------------------------------------------
; 510 | FC[i].gross_oil_whole_part              = floor(FC[i].GROSS_OIL.calc_va
;     | l);                                                                    
; 512 | //accumulated fractional component of gross oil                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |510| 
        ldp       @CL347,DP
        mpyi      1336,ar0              ; |510| 
        addi      @CL347,ar0            ; |510| Unsigned
        ldfu      *ar0,f0               ; |510| 40b float hi half
        ldp       @CL348,DP
        ldiu      *+ar0,r0              ; |510| 40b float lo half
        ldiu      @CL348,r1             ; |510| 
        rnd       f0,f2                 ; |510| Demote to low precision
        callu     r1                    ; far call to _floor	; |510| 
                                        ; |510| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |510| 
        ldiu      255,r1                ; |510| 
        ldp       @CL346,DP
        mpyi      1336,ar0              ; |510| 
        addi      @CL346,ar0            ; |510| Unsigned
        andn      r1,f0                 ; |510| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |510| Store high half
        sti       r0,*+ar0              ; |510| Store low half
	.line	457
;----------------------------------------------------------------------
; 513 | FC[i].gross_oil_fract_part              = FC[i].GROSS_OIL.calc_val - fl
;     | oor(FC[0].GROSS_OIL.calc_val);                                         
; 515 | //accumulated whole number component of gross water                    
;----------------------------------------------------------------------
        ldp       @CL347,DP
        ldiu      @CL347,ar0            ; |513| 
        ldfu      *ar0,f0               ; |513| 40b float hi half
        ldiu      *+ar0,r0              ; |513| 40b float lo half
        ldp       @CL348,DP
        rnd       f0,f2                 ; |513| Demote to low precision
        ldiu      @CL348,r1             ; |513| 
        callu     r1                    ; far call to _floor	; |513| 
                                        ; |513| Far Call Occurs
        ldiu      *+fp(1),ar1           ; |513| 
        ldiu      255,r1                ; |513| 
        mpyi      1336,ar1              ; |513| 
        ldp       @CL347,DP
        andn      r1,f0                 ; |513| Bit mask for F32/F40 conversion
        addi      @CL347,ar1            ; |513| Unsigned
        ldiu      *+fp(1),ar0           ; |513| 
        ldfu      *ar1,f1               ; |513| 40b float hi half
        mpyi      1336,ar0              ; |513| 
        ldp       @CL349,DP
        ldiu      *+ar1,r1              ; |513| 40b float lo half
        addi      @CL349,ar0            ; |513| Unsigned
        subrf     f1,f0                 ; |513| 
        stf       f0,*ar0               ; |513| Store high half
        sti       r0,*+ar0              ; |513| Store low half
	.line	460
;----------------------------------------------------------------------
; 516 | FC[i].gross_water_whole_part    = floor(FC[i].GROSS_WATER.calc_val);
;     |                                                                        
; 518 | //accumulated fractional component of gross water                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |516| 
        ldp       @CL351,DP
        mpyi      1336,ar0              ; |516| 
        addi      @CL351,ar0            ; |516| Unsigned
        ldfu      *ar0,f1               ; |516| 40b float hi half
        ldp       @CL348,DP
        ldiu      *+ar0,r1              ; |516| 40b float lo half
        ldiu      @CL348,r0             ; |516| 
        rnd       f1,f2                 ; |516| Demote to low precision
        callu     r0                    ; far call to _floor	; |516| 
                                        ; |516| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |516| 
        ldiu      255,r1                ; |516| 
        ldp       @CL350,DP
        mpyi      1336,ar0              ; |516| 
        addi      @CL350,ar0            ; |516| Unsigned
        andn      r1,f0                 ; |516| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |516| Store high half
        sti       r0,*+ar0              ; |516| Store low half
	.line	463
;----------------------------------------------------------------------
; 519 | FC[i].gross_water_fract_part    = FC[i].GROSS_WATER.calc_val - floor(FC
;     | [0].GROSS_WATER.calc_val);                                             
;----------------------------------------------------------------------
        ldp       @CL351,DP
        ldiu      @CL351,ar0            ; |519| 
        ldfu      *ar0,f0               ; |519| 40b float hi half
        ldp       @CL348,DP
        ldiu      *+ar0,r0              ; |519| 40b float lo half
        ldiu      @CL348,r1             ; |519| 
        rnd       f0,f2                 ; |519| Demote to low precision
        callu     r1                    ; far call to _floor	; |519| 
                                        ; |519| Far Call Occurs
        ldiu      *+fp(1),ar1           ; |519| 
        ldiu      ar1,ar0               ; |519| 
        mpyi      1336,ar0              ; |519| 
        ldiu      255,r1                ; |519| 
        mpyi      1336,ar1              ; |519| 
        ldp       @CL351,DP
        addi      @CL351,ar1            ; |519| Unsigned
        ldfu      *ar1,f2               ; |519| 40b float hi half
        ldp       @CL352,DP
        ldiu      *+ar1,r2              ; |519| 40b float lo half
        andn      r1,f0                 ; |519| Bit mask for F32/F40 conversion
        addi      @CL352,ar0            ; |519| Unsigned
        subrf     f2,f0                 ; |519| 
        stf       f0,*ar0               ; |519| Store high half
        sti       r0,*+ar0              ; |519| Store low half
	.line	398
        ldiu      1,r0                  ; |454| 
        addi      *+fp(1),r0            ; |454| 
        sti       r0,*+fp(1)            ; |454| 
        cmpi      3,r0                  ; |454| 
        blt       L35                   ; |454| 
;*      Branch Occurs to L35            ; |454| 
L51:        
	.line	466
;----------------------------------------------------------------------
; 522 | ALYESKA.WATERCUT                = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL353,DP
        ldiu      @CL353,ar0            ; |522| 
        ldfu      0.0000000000e+00,f0   ; |522| 
        stf       f0,*ar0               ; |522| 
	.line	467
;----------------------------------------------------------------------
; 523 | ALYESKA.FLOW_RATE               = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL354,DP
        ldiu      @CL354,ar0            ; |523| 
        ldfu      0.0000000000e+00,f0   ; |523| 
        stf       f0,*ar0               ; |523| 
	.line	468
;----------------------------------------------------------------------
; 524 | ALYESKA.TEMPERATURE             = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL355,DP
        ldiu      @CL355,ar0            ; |524| 
        ldfu      0.0000000000e+00,f0   ; |524| 
        stf       f0,*ar0               ; |524| 
	.line	469
;----------------------------------------------------------------------
; 525 | ALYESKA.DENSITY                 = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL356,DP
        ldiu      @CL356,ar0            ; |525| 
        ldfu      0.0000000000e+00,f0   ; |525| 
        stf       f0,*ar0               ; |525| 
	.line	470
;----------------------------------------------------------------------
; 526 | ALYESKA.VISCOSITY               = 0.0;                                 
;----------------------------------------------------------------------
        ldp       @CL357,DP
        ldiu      @CL357,ar0            ; |526| 
        ldfu      0.0000000000e+00,f0   ; |526| 
        stf       f0,*ar0               ; |526| 
	.line	471
;----------------------------------------------------------------------
; 527 | ALYESKA.iWATERCUTz              = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL358,DP
        ldiu      @CL358,ar0            ; |527| 
        ldiu      0,r0                  ; |527| 
        sti       r0,*ar0               ; |527| 
	.line	472
;----------------------------------------------------------------------
; 528 | ALYESKA.iWATERCUT               = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL359,DP
        ldiu      @CL359,ar0            ; |528| 
        sti       r0,*ar0               ; |528| 
	.line	473
;----------------------------------------------------------------------
; 529 | ALYESKA.iFLOW_RATE              = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL360,DP
        ldiu      @CL360,ar0            ; |529| 
        sti       r0,*ar0               ; |529| 
	.line	474
;----------------------------------------------------------------------
; 530 | ALYESKA.iTEMPERATURE    = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL361,DP
        ldiu      @CL361,ar0            ; |530| 
        sti       r0,*ar0               ; |530| 
	.line	475
;----------------------------------------------------------------------
; 531 | ALYESKA.iDENSITY                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL362,DP
        ldiu      @CL362,ar0            ; |531| 
        sti       r0,*ar0               ; |531| 
	.line	476
;----------------------------------------------------------------------
; 532 | ALYESKA.iVISCOSITY              = 0;                                   
; 535 | //ALFAT INIT                                                           
;----------------------------------------------------------------------
        ldp       @CL363,DP
        ldiu      @CL363,ar0            ; |532| 
        sti       r0,*ar0               ; |532| 
	.line	480
;----------------------------------------------------------------------
; 536 | ALFAT_STATUS_REG = 0x0;                                                
;----------------------------------------------------------------------
        ldp       @CL364,DP
        ldiu      @CL364,ar0            ; |536| 
        sti       r0,*ar0               ; |536| 
	.line	481
;----------------------------------------------------------------------
; 537 | ALFAT_INIT_ALL = FALSE;                                                
;----------------------------------------------------------------------
        ldp       @CL365,DP
        ldiu      @CL365,ar0            ; |537| 
        sti       r0,*ar0               ; |537| 
	.line	482
;----------------------------------------------------------------------
; 538 | ALFAT_APPEND_LF = FALSE;                                               
;----------------------------------------------------------------------
        ldp       @CL366,DP
        ldiu      @CL366,ar0            ; |538| 
        sti       r0,*ar0               ; |538| 
	.line	483
;----------------------------------------------------------------------
; 539 | PORT[5].pvector_main = NULL_PTR;                                       
;----------------------------------------------------------------------
        ldp       @CL367,DP
        ldiu      @CL367,ar0            ; |539| 
        sti       r0,*ar0               ; |539| 
	.line	485
;----------------------------------------------------------------------
; 541 | for (i=0;i<ALFAT_RX_MAX_SIZE;i++)                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(1)            ; |541| 
        ldiu      0,r1                  ; |543| 
        cmpi      128,r0                ; |541| 
        bge       L53                   ; |541| 
;*      Branch Occurs to L53            ; |541| 
L52:        
	.line	487
;----------------------------------------------------------------------
; 543 | ALFAT_RX[i] = 0;                                                       
;----------------------------------------------------------------------
        ldp       @CL368,DP
        ldiu      *+fp(1),ir0           ; |543| 
        ldiu      @CL368,ar0            ; |543| 
        sti       r1,*+ar0(ir0)         ; |543| 
	.line	485
        ldiu      1,r0                  ; |541| 
        addi      *+fp(1),r0            ; |541| 
        sti       r0,*+fp(1)            ; |541| 
        cmpi      128,r0                ; |541| 
        blt       L52                   ; |541| 
;*      Branch Occurs to L52            ; |541| 
L53:        
	.line	490
;----------------------------------------------------------------------
; 546 | DEMO_Init(&DEMO_ANALYZER_MODE);                                        
;----------------------------------------------------------------------
        ldp       @CL370,DP
        ldiu      @CL370,r0             ; |546| 
        ldp       @CL369,DP
        ldiu      @CL369,ar2            ; |546| 
        callu     r0                    ; far call to _DEMO_Init	; |546| 
                                        ; |546| Far Call Occurs
	.line	491
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	547,000000000h,3


	.sect	 "initialization"

	.global	_Initialize_Hardware
	.sym	_Initialize_Hardware,_Initialize_Hardware,32,2,0
	.func	562
;******************************************************************************
;* FUNCTION NAME: _Initialize_Hardware                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,r1,f2,r2,f3,r3,ar0,ar1,ar2,fp,ir0,ir1,sp,st,  *
;*                        rc                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Initialize_Hardware:
	.sym	_i,1,14,1,32
	.sym	_j,2,14,1,32
	.sym	_s,3,30,1,32
	.sym	_d,4,30,1,32
	.sym	_fw,5,6,1,32
	.sym	_hwu,6,4,1,32
	.sym	_hwl,7,4,1,32
	.line	1
;----------------------------------------------------------------------
; 562 | void Initialize_Hardware(void)                                         
; 564 | unsigned int i,j;       /* counters
;     |          */                                                            
; 565 | unsigned int* s;        /* branch table start
;     |  */                                                                    
; 566 | unsigned int* d;        /* program start address
;     |  */                                                                    
; 567 | float   fw;                     /* firmware version
;     |          */                                                            
; 568 | int             hwu,hwl;        /* hardware upper byte; lower byte
;     |  */                                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	9
;----------------------------------------------------------------------
; 570 | _GIE;                                                                  
;----------------------------------------------------------------------
	rpts	1			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 571 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |571| 
        ldiu      247,r0                ; |571| 
        and3      r0,*ar0,r0            ; |571| 
        sti       r0,*ar0               ; |571| 
	pop		ST			
	.line	11
;----------------------------------------------------------------------
; 572 | HW_VER  = *XHW_VER & 0xFF;                                             
;----------------------------------------------------------------------
        ldp       @CL372,DP
        ldiu      @CL372,ar0            ; |572| 
        ldp       @CL371,DP
        ldiu      255,r0                ; |572| 
        ldiu      @CL371,ar1            ; |572| 
        and3      r0,*ar0,r0            ; |572| 
        sti       r0,*ar1               ; |572| 
	.line	13
;----------------------------------------------------------------------
; 574 | if (HW_VER&0x80)                                                       
;----------------------------------------------------------------------
        ldiu      @CL371,ar0            ; |574| 
        ldiu      128,r0                ; |574| 
        tstb3     *ar0,r0               ; |574| 
        beq       L58                   ; |574| 
;*      Branch Occurs to L58            ; |574| 
	.line	14
;----------------------------------------------------------------------
; 575 | SA = TRUE;                                                             
; 576 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL373,DP
        ldiu      @CL373,ar0            ; |575| 
        ldiu      1,r0                  ; |575| 
        sti       r0,*ar0               ; |575| 
        bu        L59                   ; |561| 
;*      Branch Occurs to L59            ; |561| 
L58:        
	.line	16
;----------------------------------------------------------------------
; 577 | SA = FALSE;                                                            
;----------------------------------------------------------------------
        ldp       @CL373,DP
        ldiu      @CL373,ar0            ; |577| 
        ldiu      0,r0                  ; |577| 
        sti       r0,*ar0               ; |577| 
L59:        
	.line	18
;----------------------------------------------------------------------
; 579 | if (SA)                                                                
;----------------------------------------------------------------------
        ldp       @CL373,DP
        ldiu      @CL373,ar0            ; |579| 
        ldiu      *ar0,r0               ; |579| 
        cmpi      0,r0                  ; |579| 
        beq       L63                   ; |579| 
;*      Branch Occurs to L63            ; |579| 
	.line	20
;----------------------------------------------------------------------
; 581 | if (HW_VER>=0xB7)                                                      
;----------------------------------------------------------------------
        ldp       @CL371,DP
        ldiu      @CL371,ar0            ; |581| 
        ldiu      *ar0,r0               ; |581| 
        cmpi      183,r0                ; |581| 
        blo       L62                   ; |581| 
;*      Branch Occurs to L62            ; |581| 
	.line	21
;----------------------------------------------------------------------
; 582 | SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_EEA;                                 
; 583 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL374,DP
        ldiu      @CL374,ar0            ; |582| 
        ldp       @CL375,DP
        ldiu      @CL375,r0             ; |582| 
        sti       r0,*ar0               ; |582| 
        bu        L64                   ; |561| 
;*      Branch Occurs to L64            ; |561| 
L62:        
	.line	23
;----------------------------------------------------------------------
; 584 | SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_SA;                                  
; 586 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL374,DP
        ldiu      @CL374,ar0            ; |584| 
        ldp       @CL376,DP
        ldiu      @CL376,r0             ; |584| 
        sti       r0,*ar0               ; |584| 
        bu        L64                   ; |561| 
;*      Branch Occurs to L64            ; |561| 
L63:        
	.line	26
;----------------------------------------------------------------------
; 587 | SRAM_SCRATCHPAD = SRAM_SCRATCHPAD_EEA;                                 
;----------------------------------------------------------------------
        ldp       @CL374,DP
        ldiu      @CL374,ar0            ; |587| 
        ldp       @CL375,DP
        ldiu      @CL375,r0             ; |587| 
        sti       r0,*ar0               ; |587| 
L64:        
	.line	28
;----------------------------------------------------------------------
; 589 | *PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);   /* ws=5 for 90ns flash,
;     |  or RDY */                                                             
;----------------------------------------------------------------------
        ldp       @CL377,DP
        ldiu      @CL377,ar0            ; |589| 
        ldiu      184,r0                ; |589| 
        sti       r0,*ar0               ; |589| 
	.line	29
;----------------------------------------------------------------------
; 590 | DISABLE_BOOTINT;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL378,DP
        ldiu      @CL378,ar0            ; |590| 
        ldiu      16,r0                 ; |590| 
        or3       r0,*ar0,r0            ; |590| 
        sti       r0,*ar0               ; |590| 
	pop		ST			
	.line	30
;----------------------------------------------------------------------
; 591 | CLEAR_INT_MASK;                                                        
;----------------------------------------------------------------------
	ldi		0h, IE
	.line	31
;----------------------------------------------------------------------
; 592 | CLEAR_INT_PEND;                                                        
;----------------------------------------------------------------------
	ldi		0h, IF
	.line	32
;----------------------------------------------------------------------
; 593 | INITIALIZING = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL379,DP
        ldiu      @CL379,ar0            ; |593| 
        ldiu      1,r0                  ; |593| 
        sti       r0,*ar0               ; |593| 
	.line	33
;----------------------------------------------------------------------
; 594 | XFINIT_OUTPUT;                                                         
;----------------------------------------------------------------------
	ldi		22h,IOF		
	.line	34
;----------------------------------------------------------------------
; 595 | CACHE_ENABLE;                                                          
;----------------------------------------------------------------------
	ldi		1800h, ST
	.line	35
;----------------------------------------------------------------------
; 596 | DISABLE_EXTINT0;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL378,DP
        ldiu      @CL378,ar0            ; |596| 
        ldiu      254,r0                ; |596| 
        and3      r0,*ar0,r0            ; |596| 
        sti       r0,*ar0               ; |596| 
	pop		ST			
	.line	36
;----------------------------------------------------------------------
; 597 | DISABLE_EXTINT1;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      253,r0                ; |597| 
        and3      r0,*ar0,r0            ; |597| 
        sti       r0,*ar0               ; |597| 
	pop		ST			
	.line	37
;----------------------------------------------------------------------
; 598 | DISABLE_EXTINT2;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      251,r0                ; |598| 
        and3      r0,*ar0,r0            ; |598| 
        sti       r0,*ar0               ; |598| 
	pop		ST			
	.line	38
;----------------------------------------------------------------------
; 599 | DISABLE_EXTINT3;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      247,r0                ; |599| 
        and3      r0,*ar0,r0            ; |599| 
        sti       r0,*ar0               ; |599| 
	pop		ST			
	.line	41
;----------------------------------------------------------------------
; 602 | s = &INT0;                                                             
;----------------------------------------------------------------------
        ldp       @CL380,DP
        ldiu      @CL380,r0             ; |602| 
        sti       r0,*+fp(3)            ; |602| 
	.line	42
;----------------------------------------------------------------------
; 603 | d = (unsigned int*) 0x00809FC1;                                        
;----------------------------------------------------------------------
        ldp       @CL381,DP
        ldiu      @CL381,r0             ; |603| 
        sti       r0,*+fp(4)            ; |603| 
	.line	44
;----------------------------------------------------------------------
; 605 | for (i=0;i<0x3F;i++)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |605| 
        sti       r0,*+fp(1)            ; |605| 
        cmpi      63,r0                 ; |605| 
        bhs       L66                   ; |605| 
;*      Branch Occurs to L66            ; |605| 
L65:        
	.line	45
;----------------------------------------------------------------------
; 606 | d[i] = s[i];                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |606| 
        ldiu      *+fp(3),ir0           ; |606| 
        ldiu      *+fp(4),ir1           ; |606| 
        ldiu      ar1,ar0               ; |606| 
        ldiu      *+ar1(ir0),r0         ; |606| 
        sti       r0,*+ar0(ir1)         ; |606| 
	.line	44
        ldiu      1,r0                  ; |605| 
        addi      *+fp(1),r0            ; |605| Unsigned
        sti       r0,*+fp(1)            ; |605| 
        cmpi      63,r0                 ; |605| 
        blo       L65                   ; |605| 
;*      Branch Occurs to L65            ; |605| 
L66:        
	.line	48
;----------------------------------------------------------------------
; 609 | d = (unsigned int*) &c_int00;                                          
;----------------------------------------------------------------------
        ldp       @CL382,DP
        ldiu      @CL382,r0             ; |609| 
        sti       r0,*+fp(4)            ; |609| 
	.line	49
;----------------------------------------------------------------------
; 610 | s = (unsigned int*) FLASH_LOC;                                         
;----------------------------------------------------------------------
        ldp       @CL383,DP
        ldiu      @CL383,r0             ; |610| 
        sti       r0,*+fp(3)            ; |610| 
	.line	51
;----------------------------------------------------------------------
; 612 | if ( (d >= s) && (d < (s + FLASH_MAX_SIZE)) )                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |612| 
        cmpi      *+fp(3),r0            ; |612| 
        blo       L69                   ; |612| 
;*      Branch Occurs to L69            ; |612| 
        ldp       @CL384,DP
        ldiu      r0,r1
        ldiu      @CL384,r0             ; |612| 
        addi      *+fp(3),r0            ; |612| Unsigned
        cmpi3     r0,r1                 ; |612| 
        bhs       L69                   ; |612| 
;*      Branch Occurs to L69            ; |612| 
	.line	52
;----------------------------------------------------------------------
; 613 | MEM = FALSE;                                                           
; 614 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |613| 
        ldiu      0,r0                  ; |613| 
        sti       r0,*ar0               ; |613| 
        bu        L70                   ; |561| 
;*      Branch Occurs to L70            ; |561| 
L69:        
	.line	54
;----------------------------------------------------------------------
; 615 | MEM = TRUE;                                                            
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |615| 
        ldiu      1,r0                  ; |615| 
        sti       r0,*ar0               ; |615| 
L70:        
	.line	56
;----------------------------------------------------------------------
; 617 | RELAY1_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL73,DP
        ldiu      @CL73,ar0             ; |617| 
        ldiu      254,r0                ; |617| 
        and3      r0,*ar0,r0            ; |617| 
        sti       r0,*ar0               ; |617| 
	pop		ST			
	.line	57
;----------------------------------------------------------------------
; 618 | RELAY2_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      253,r0                ; |618| 
        and3      r0,*ar0,r0            ; |618| 
        sti       r0,*ar0               ; |618| 
	pop		ST			
	.line	58
;----------------------------------------------------------------------
; 619 | CLOCK = CLOCK_DEFAULT;                                                 
;----------------------------------------------------------------------
        ldp       @CL385,DP
        ldiu      @CL385,ar0            ; |619| 
        ldp       @CL386,DP
        ldiu      @CL386,r0             ; |619| 
        sti       r0,*ar0               ; |619| 
	.line	60
;----------------------------------------------------------------------
; 621 | LCD_INIT();                                                            
;----------------------------------------------------------------------
        ldp       @CL387,DP
        ldiu      @CL387,r0             ; |621| 
        callu     r0                    ; far call to _LCD_INIT	; |621| 
                                        ; |621| Far Call Occurs
	.line	63
;----------------------------------------------------------------------
; 624 | for (i=0;i<4;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |624| 
        sti       r0,*+fp(1)            ; |624| 
        cmpi      4,r0                  ; |624| 
        bhs       L74                   ; |624| 
;*      Branch Occurs to L74            ; |624| 
L71:        
	.line	65
;----------------------------------------------------------------------
; 626 | for (j=0;j<101;j++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |626| 
        sti       r0,*+fp(2)            ; |626| 
        cmpi      101,r0                ; |626| 
        ldiu      32,r1                 ; |627| 
        bhs       L73                   ; |626| 
;*      Branch Occurs to L73            ; |626| 
L72:        
	.line	66
;----------------------------------------------------------------------
; 627 | LCD_DISPLAY[i][j] = 0x20;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |627| 
        ldp       @CL388,DP
        mpyi      101,ir0               ; |627| 
        ldiu      @CL388,ar0            ; |627| 
        addi      *+fp(2),ir0           ; |627| Unsigned
        sti       r1,*+ar0(ir0)         ; |627| 
	.line	65
        ldiu      1,r0                  ; |626| 
        addi      *+fp(2),r0            ; |626| Unsigned
        sti       r0,*+fp(2)            ; |626| 
        cmpi      101,r0                ; |626| 
        blo       L72                   ; |626| 
;*      Branch Occurs to L72            ; |626| 
L73:        
	.line	63
        ldiu      1,r0                  ; |624| 
        addi      *+fp(1),r0            ; |624| Unsigned
        sti       r0,*+fp(1)            ; |624| 
        cmpi      4,r0                  ; |624| 
        blo       L71                   ; |624| 
;*      Branch Occurs to L71            ; |624| 
L74:        
	.line	69
;----------------------------------------------------------------------
; 630 | hwu = (HW_VER & 0x0078)>>3;                                            
;----------------------------------------------------------------------
        ldp       @CL371,DP
        ldiu      @CL371,ar0            ; |630| 
        ldiu      120,r0                ; |630| 
        and3      r0,*ar0,r0            ; |630| 
        lsh       -3,r0                 ; |630| 
        sti       r0,*+fp(6)            ; |630| 
	.line	70
;----------------------------------------------------------------------
; 631 | hwl = HW_VER & 0x0007;                                                 
;----------------------------------------------------------------------
        ldiu      @CL371,ar0            ; |631| 
        ldiu      7,r0                  ; |631| 
        and3      r0,*ar0,r0            ; |631| 
        sti       r0,*+fp(7)            ; |631| 
	.line	71
;----------------------------------------------------------------------
; 632 | fw      = FIRMWARE_VERSION/100.0;                                      
;----------------------------------------------------------------------
        ldp       @CL389,DP
        ldfu      @CL389,f0             ; |632| 
        stf       f0,*+fp(5)            ; |632| 
	.line	72
;----------------------------------------------------------------------
; 633 | i       = FIRMWARE_SUBVERSION;                                         
;----------------------------------------------------------------------
        ldiu      13,r0                 ; |633| 
        sti       r0,*+fp(1)            ; |633| 
	.line	74
;----------------------------------------------------------------------
; 635 | if(RUSS)                                                               
;----------------------------------------------------------------------
        ldp       @CL390,DP
        ldiu      @CL390,ar0            ; |635| 
        ldiu      *ar0,r0               ; |635| 
        cmpi      0,r0                  ; |635| 
        beq       L76                   ; |635| 
;*      Branch Occurs to L76            ; |635| 
	.line	76
;----------------------------------------------------------------------
; 637 | Get_Russ_Line(87,OUT_STR,0);                                           
;----------------------------------------------------------------------
        ldp       @CL392,DP
        ldiu      @CL392,r0             ; |637| 
        ldiu      87,ar2                ; |637| 
        ldp       @CL391,DP
        ldiu      0,r3                  ; |637| 
        ldiu      @CL391,r2             ; |637| 
        callu     r0                    ; far call to _Get_Russ_Line	; |637| 
                                        ; |637| Far Call Occurs
	.line	77
;----------------------------------------------------------------------
; 638 | sprintf(LCD_DISPLAY[0],"%s", OUT_STR);  //R87                          
;----------------------------------------------------------------------
        ldp       @CL391,DP
        ldiu      @CL391,r2             ; |638| 
        ldp       @CL393,DP
        ldiu      @CL393,r1             ; |638| 
        ldp       @CL388,DP
        ldiu      @CL388,ar2            ; |638| 
        ldp       @CL16,DP
        push      r2                    ; |638| 
        ldiu      @CL16,r0              ; |638| 
        push      r1                    ; |638| 
        callu     r0                    ; far call to _sprintf	; |638| 
                                        ; |638| Far Call Occurs
        subi      2,sp                  ; |638| 
	.line	78
;----------------------------------------------------------------------
; 639 | Get_Russ_Line(378,OUT_STR2,0);                                         
;----------------------------------------------------------------------
        ldp       @CL392,DP
        ldiu      @CL392,r0             ; |639| 
        ldp       @CL394,DP
        ldiu      @CL394,r2             ; |639| 
        ldiu      378,ar2               ; |639| 
        ldiu      0,r3                  ; |639| 
        callu     r0                    ; far call to _Get_Russ_Line	; |639| 
                                        ; |639| Far Call Occurs
	.line	79
;----------------------------------------------------------------------
; 640 | sprintf(LCD_DISPLAY[1],"%s", OUT_STR2); //R378                         
;----------------------------------------------------------------------
        ldp       @CL394,DP
        ldiu      @CL394,r2             ; |640| 
        ldp       @CL393,DP
        ldiu      @CL393,r1             ; |640| 
        ldp       @CL395,DP
        ldiu      @CL395,ar2            ; |640| 
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |640| 
        push      r2                    ; |640| 
        push      r1                    ; |640| 
        callu     r0                    ; far call to _sprintf	; |640| 
                                        ; |640| Far Call Occurs
        subi      2,sp                  ; |640| 
	.line	80
;----------------------------------------------------------------------
; 641 | Get_Russ_Line(377,OUT_STR,0);                                          
;----------------------------------------------------------------------
        ldp       @CL392,DP
        ldiu      @CL392,r0             ; |641| 
        ldp       @CL391,DP
        ldiu      @CL391,r2             ; |641| 
        ldiu      0,r3                  ; |641| 
        ldiu      377,ar2               ; |641| 
        callu     r0                    ; far call to _Get_Russ_Line	; |641| 
                                        ; |641| Far Call Occurs
	.line	81
;----------------------------------------------------------------------
; 642 | sprintf(LCD_DISPLAY[2],"%s:    %2d.%02d", OUT_STR, hwu, hwl);   //R377 
;----------------------------------------------------------------------
        ldp       @CL391,DP
        ldiu      @CL391,r1             ; |642| 
        ldp       @CL397,DP
        ldiu      *+fp(7),r2            ; |642| 
        ldiu      @CL397,r3             ; |642| 
        push      r2                    ; |642| 
        ldp       @CL396,DP
        ldiu      *+fp(6),r2            ; |642| 
        ldiu      @CL396,ar2            ; |642| 
        push      r2                    ; |642| 
        push      r1                    ; |642| 
        ldp       @CL16,DP
        push      r3                    ; |642| 
        ldiu      @CL16,r0              ; |642| 
        callu     r0                    ; far call to _sprintf	; |642| 
                                        ; |642| Far Call Occurs
        subi      4,sp                  ; |642| 
	.line	82
;----------------------------------------------------------------------
; 643 | Get_Russ_Line(375,OUT_STR2,0);                                         
;----------------------------------------------------------------------
        ldp       @CL392,DP
        ldiu      @CL392,r0             ; |643| 
        ldiu      375,ar2               ; |643| 
        ldp       @CL394,DP
        ldiu      0,r3                  ; |643| 
        ldiu      @CL394,r2             ; |643| 
        callu     r0                    ; far call to _Get_Russ_Line	; |643| 
                                        ; |643| Far Call Occurs
	.line	83
;----------------------------------------------------------------------
; 644 | sprintf(LCD_DISPLAY[3],"%s:      %4.2f", OUT_STR2, fw); //R375         
; 646 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL394,DP
        ldiu      @CL394,r1             ; |644| 
        ldfu      *+fp(5),f3            ; |644| 
        ldp       @CL399,DP
        pushf     f3                    ; |644| 
        ldiu      @CL399,r2             ; |644| 
        ldp       @CL398,DP
        push      r1                    ; |644| 
        ldiu      @CL398,ar2            ; |644| 
        ldp       @CL16,DP
        push      r2                    ; |644| 
        ldiu      @CL16,r0              ; |644| 
        callu     r0                    ; far call to _sprintf	; |644| 
                                        ; |644| Far Call Occurs
        subi      3,sp                  ; |644| 
        bu        L77                   ; |561| 
;*      Branch Occurs to L77            ; |561| 
L76:        
	.line	87
;----------------------------------------------------------------------
; 648 | sprintf(LCD_DISPLAY[0],"Phase Dynamics, Inc."); //R87                  
;----------------------------------------------------------------------
        ldp       @CL400,DP
        ldiu      @CL400,r1             ; |648| 
        ldp       @CL388,DP
        ldiu      @CL388,ar2            ; |648| 
        ldp       @CL16,DP
        push      r1                    ; |648| 
        ldiu      @CL16,r0              ; |648| 
        callu     r0                    ; far call to _sprintf	; |648| 
                                        ; |648| Far Call Occurs
        subi      1,sp                  ; |648| 
	.line	88
;----------------------------------------------------------------------
; 649 | sprintf(LCD_DISPLAY[1],"Initializing Data..."); //R378                 
;----------------------------------------------------------------------
        ldp       @CL401,DP
        ldiu      @CL401,r1             ; |649| 
        ldp       @CL395,DP
        ldiu      @CL395,ar2            ; |649| 
        ldp       @CL16,DP
        push      r1                    ; |649| 
        ldiu      @CL16,r0              ; |649| 
        callu     r0                    ; far call to _sprintf	; |649| 
                                        ; |649| Far Call Occurs
        subi      1,sp                  ; |649| 
	.line	89
;----------------------------------------------------------------------
; 650 | sprintf(LCD_DISPLAY[2],"HW Version:    %2d.%02d", hwu, hwl);    //R377 
; 651 | //sprintf(LCD_DISPLAY[3],"FW Version:     %4.2f", fw);                 
;----------------------------------------------------------------------
        ldp       @CL402,DP
        ldiu      @CL402,r1             ; |650| 
        ldp       @CL396,DP
        ldiu      @CL396,ar2            ; |650| 
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |650| 
        ldiu      *+fp(7),r2            ; |650| 
        push      r2                    ; |650| 
        ldiu      *+fp(6),r2            ; |650| 
        push      r2                    ; |650| 
        push      r1                    ; |650| 
        callu     r0                    ; far call to _sprintf	; |650| 
                                        ; |650| Far Call Occurs
        subi      3,sp                  ; |650| 
	.line	92
;----------------------------------------------------------------------
; 653 | sprintf(LCD_DISPLAY[3],"FW Version:  %4.2f.%02i", fw, i);       //R375 
;----------------------------------------------------------------------
        ldp       @CL403,DP
        ldiu      @CL403,r2             ; |653| 
        ldiu      *+fp(1),r0            ; |653| 
        ldp       @CL398,DP
        push      r0                    ; |653| 
        ldiu      @CL398,ar2            ; |653| 
        ldfu      *+fp(5),f0            ; |653| 
        ldp       @CL16,DP
        pushf     f0                    ; |653| 
        ldiu      @CL16,r1              ; |653| 
        push      r2                    ; |653| 
        callu     r1                    ; far call to _sprintf	; |653| 
                                        ; |653| Far Call Occurs
        subi      3,sp                  ; |653| 
L77:        
	.line	95
;----------------------------------------------------------------------
; 656 | LCD_PAGE();                                                            
;----------------------------------------------------------------------
        ldp       @CL404,DP
        ldiu      @CL404,r0             ; |656| 
        callu     r0                    ; far call to _LCD_PAGE	; |656| 
                                        ; |656| Far Call Occurs
	.line	96
;----------------------------------------------------------------------
; 657 | MENU_INIT();                                                           
;----------------------------------------------------------------------
        ldp       @CL405,DP
        ldiu      @CL405,r0             ; |657| 
        callu     r0                    ; far call to _MENU_INIT	; |657| 
                                        ; |657| Far Call Occurs
	.line	99
;----------------------------------------------------------------------
; 660 | Initialize_Variables();                                                
; 662 | switch (ANALYZER_MODE.val)                                             
; 664 |         case SUB_LOW:                                                  
;----------------------------------------------------------------------
        ldp       @CL406,DP
        ldiu      @CL406,r0             ; |660| 
        callu     r0                    ; far call to _Initialize_Variables	; |660| 
                                        ; |660| Far Call Occurs
        bu        L85                   ; |561| 
;*      Branch Occurs to L85            ; |561| 
L78:        
	.line	104
;----------------------------------------------------------------------
; 665 | sprintf(LCD_DISPLAY[1]," Low Range Analyzer "); //R380                 
;----------------------------------------------------------------------
        ldp       @CL407,DP
        ldiu      @CL407,r1             ; |665| 
        ldp       @CL395,DP
        ldiu      @CL395,ar2            ; |665| 
        ldp       @CL16,DP
        push      r1                    ; |665| 
        ldiu      @CL16,r0              ; |665| 
        callu     r0                    ; far call to _sprintf	; |665| 
                                        ; |665| Far Call Occurs
        subi      1,sp                  ; |665| 
	.line	105
;----------------------------------------------------------------------
; 666 | Print_To_LCD(1, 380, ENG_STR, 1);                                      
;----------------------------------------------------------------------
        ldp       @CL408,DP
        ldiu      1,rc                  ; |666| 
        ldiu      1,ar2                 ; |666| 
        ldiu      380,r2                ; |666| 
        ldiu      @CL408,r3             ; |666| 
        call      _Print_To_LCD         ; |666| 
                                        ; |666| Call Occurs
	.line	106
;----------------------------------------------------------------------
; 667 | break;                                                                 
; 668 | case SUB_MID:                                                          
;----------------------------------------------------------------------
        bu        L91                   ; |667| 
;*      Branch Occurs to L91            ; |667| 
L79:        
	.line	108
;----------------------------------------------------------------------
; 669 | sprintf(ENG_STR," Mid Range Analyzer ");        //R381                 
;----------------------------------------------------------------------
        ldp       @CL409,DP
        ldiu      @CL409,r1             ; |669| 
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |669| 
        ldp       @CL408,DP
        push      r1                    ; |669| 
        ldiu      @CL408,ar2            ; |669| 
        callu     r0                    ; far call to _sprintf	; |669| 
                                        ; |669| Far Call Occurs
        subi      1,sp                  ; |669| 
	.line	109
;----------------------------------------------------------------------
; 670 | Print_To_LCD(1, 381, ENG_STR, 1);                                      
;----------------------------------------------------------------------
        ldp       @CL408,DP
        ldiu      1,rc                  ; |670| 
        ldiu      1,ar2                 ; |670| 
        ldiu      381,r2                ; |670| 
        ldiu      @CL408,r3             ; |670| 
        call      _Print_To_LCD         ; |670| 
                                        ; |670| Call Occurs
	.line	110
;----------------------------------------------------------------------
; 671 | break;                                                                 
; 672 | case SUB_HIGH:                                                         
;----------------------------------------------------------------------
        bu        L91                   ; |671| 
;*      Branch Occurs to L91            ; |671| 
L80:        
	.line	112
;----------------------------------------------------------------------
; 673 | sprintf(ENG_STR,"High Range Analyzer ");        //R376                 
;----------------------------------------------------------------------
        ldp       @CL410,DP
        ldiu      @CL410,r1             ; |673| 
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |673| 
        ldp       @CL408,DP
        push      r1                    ; |673| 
        ldiu      @CL408,ar2            ; |673| 
        callu     r0                    ; far call to _sprintf	; |673| 
                                        ; |673| Far Call Occurs
        subi      1,sp                  ; |673| 
	.line	113
;----------------------------------------------------------------------
; 674 | Print_To_LCD(1, 376, ENG_STR, 1);                                      
;----------------------------------------------------------------------
        ldp       @CL408,DP
        ldiu      1,rc                  ; |674| 
        ldiu      1,ar2                 ; |674| 
        ldiu      376,r2                ; |674| 
        ldiu      @CL408,r3             ; |674| 
        call      _Print_To_LCD         ; |674| 
                                        ; |674| Call Occurs
	.line	114
;----------------------------------------------------------------------
; 675 | break;                                                                 
; 676 | case SUB_FULL:                                                         
;----------------------------------------------------------------------
        bu        L91                   ; |675| 
;*      Branch Occurs to L91            ; |675| 
L81:        
	.line	116
;----------------------------------------------------------------------
; 677 | sprintf(ENG_STR,"Full Range Analyzer ");        //R374                 
;----------------------------------------------------------------------
        ldp       @CL411,DP
        ldiu      @CL411,r1             ; |677| 
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |677| 
        ldp       @CL408,DP
        push      r1                    ; |677| 
        ldiu      @CL408,ar2            ; |677| 
        callu     r0                    ; far call to _sprintf	; |677| 
                                        ; |677| Far Call Occurs
        subi      1,sp                  ; |677| 
	.line	117
;----------------------------------------------------------------------
; 678 | Print_To_LCD(1, 374, ENG_STR, 1);                                      
;----------------------------------------------------------------------
        ldp       @CL408,DP
        ldiu      1,rc                  ; |678| 
        ldiu      1,ar2                 ; |678| 
        ldiu      374,r2                ; |678| 
        ldiu      @CL408,r3             ; |678| 
        call      _Print_To_LCD         ; |678| 
                                        ; |678| Call Occurs
	.line	118
;----------------------------------------------------------------------
; 679 | break;                                                                 
; 680 | case SUB_CCM:                                                          
;----------------------------------------------------------------------
        bu        L91                   ; |679| 
;*      Branch Occurs to L91            ; |679| 
L82:        
	.line	120
;----------------------------------------------------------------------
; 681 | sprintf(LCD_DISPLAY[1],"  CCM Application   ");                        
;----------------------------------------------------------------------
        ldp       @CL412,DP
        ldiu      @CL412,r1             ; |681| 
        ldp       @CL395,DP
        ldiu      @CL395,ar2            ; |681| 
        ldp       @CL16,DP
        push      r1                    ; |681| 
        ldiu      @CL16,r0              ; |681| 
        callu     r0                    ; far call to _sprintf	; |681| 
                                        ; |681| Far Call Occurs
        subi      1,sp                  ; |681| 
	.line	121
;----------------------------------------------------------------------
; 682 | break;                                                                 
; 683 | case SUB_ANALYZER:                                                     
;----------------------------------------------------------------------
        bu        L91                   ; |682| 
;*      Branch Occurs to L91            ; |682| 
L83:        
	.line	123
;----------------------------------------------------------------------
; 684 | sprintf(LCD_DISPLAY[1],"      Analyzer      ");                        
;----------------------------------------------------------------------
        ldp       @CL413,DP
        ldiu      @CL413,r1             ; |684| 
        ldp       @CL395,DP
        ldiu      @CL395,ar2            ; |684| 
        ldp       @CL16,DP
        push      r1                    ; |684| 
        ldiu      @CL16,r0              ; |684| 
        callu     r0                    ; far call to _sprintf	; |684| 
                                        ; |684| Far Call Occurs
        subi      1,sp                  ; |684| 
	.line	124
;----------------------------------------------------------------------
; 685 | break;                                                                 
;----------------------------------------------------------------------
        bu        L91                   ; |685| 
;*      Branch Occurs to L91            ; |685| 
	.line	125
;----------------------------------------------------------------------
; 686 | default: break;                                                        
;----------------------------------------------------------------------
L85:        
	.line	101
        ldp       @CL98,DP
        ldiu      @CL98,ar0             ; |662| 
        ldiu      *ar0,r0               ; |662| 
        cmpi      0,r0                  ; |662| 
        beq       L78                   ; |662| 
;*      Branch Occurs to L78            ; |662| 
        cmpi      1,r0                  ; |662| 
        beq       L81                   ; |662| 
;*      Branch Occurs to L81            ; |662| 
        cmpi      2,r0                  ; |662| 
        beq       L83                   ; |662| 
;*      Branch Occurs to L83            ; |662| 
        cmpi      3,r0                  ; |662| 
        beq       L79                   ; |662| 
;*      Branch Occurs to L79            ; |662| 
        cmpi      4,r0                  ; |662| 
        beq       L80                   ; |662| 
;*      Branch Occurs to L80            ; |662| 
        cmpi      6,r0                  ; |662| 
        beq       L82                   ; |662| 
;*      Branch Occurs to L82            ; |662| 
L91:        
	.line	128
;----------------------------------------------------------------------
; 689 | LCD_PAGE();                                                            
;----------------------------------------------------------------------
        ldp       @CL404,DP
        ldiu      @CL404,r0             ; |689| 
        callu     r0                    ; far call to _LCD_PAGE	; |689| 
                                        ; |689| Far Call Occurs
	.line	129
;----------------------------------------------------------------------
; 690 | RTC_setup();                                                           
;----------------------------------------------------------------------
        ldp       @CL414,DP
        ldiu      @CL414,r0             ; |690| 
        callu     r0                    ; far call to _RTC_setup	; |690| 
                                        ; |690| Far Call Occurs
	.line	130
;----------------------------------------------------------------------
; 691 | Setup_Timer(0, 11.0/(2.0*115200.0));                                   
;----------------------------------------------------------------------
        ldp       @CL415,DP
        ldfu      @CL415,f2             ; |691| 
        ldp       @CL416,DP
        ldiu      0,ar2                 ; |691| 
        ldiu      @CL416,r0             ; |691| 
        callu     r0                    ; far call to _Setup_Timer	; |691| 
                                        ; |691| Far Call Occurs
	.line	131
;----------------------------------------------------------------------
; 692 | Setup_Timer(1, 0);                                                     
;----------------------------------------------------------------------
        ldp       @CL416,DP
        ldiu      1,ar2                 ; |692| 
        ldiu      @CL416,r0             ; |692| 
        ldfu      0.0000000000e+00,f2   ; |692| 
        callu     r0                    ; far call to _Setup_Timer	; |692| 
                                        ; |692| Far Call Occurs
	.line	132
;----------------------------------------------------------------------
; 693 | VAR_DAMP_Init(0);                                                      
;----------------------------------------------------------------------
        ldp       @CL417,DP
        ldiu      @CL417,r0             ; |693| 
        ldiu      0,ar2                 ; |693| 
        callu     r0                    ; far call to _VAR_DAMP_Init	; |693| 
                                        ; |693| Far Call Occurs
	.line	133
;----------------------------------------------------------------------
; 694 | Initialize_Periodic_Events();                                          
;----------------------------------------------------------------------
        ldp       @CL418,DP
        ldiu      @CL418,r0             ; |694| 
        callu     r0                    ; far call to _Initialize_Periodic_Events	; |694| 
                                        ; |694| Far Call Occurs
	.line	134
;----------------------------------------------------------------------
; 695 | Setup_Serial_Port0();                                                  
;----------------------------------------------------------------------
        ldp       @CL419,DP
        ldiu      @CL419,r0             ; |695| 
        callu     r0                    ; far call to _Setup_Serial_Port0	; |695| 
                                        ; |695| Far Call Occurs
	.line	136
;----------------------------------------------------------------------
; 697 | for (i=0;i<ADC_MAX;i++)                                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |697| 
        sti       r0,*+fp(1)            ; |697| 
        cmpi      12,r0                 ; |697| 
        bhs       L93                   ; |697| 
;*      Branch Occurs to L93            ; |697| 
L92:        
	.line	137
;----------------------------------------------------------------------
; 698 | Setup_ADC(i);                                                          
;----------------------------------------------------------------------
        ldp       @CL420,DP
        ldiu      *+fp(1),ar2           ; |698| 
        ldiu      @CL420,r0             ; |698| 
        callu     r0                    ; far call to _Setup_ADC	; |698| 
                                        ; |698| Far Call Occurs
	.line	136
        ldiu      1,r0                  ; |697| 
        addi      *+fp(1),r0            ; |697| Unsigned
        sti       r0,*+fp(1)            ; |697| 
        cmpi      12,r0                 ; |697| 
        blo       L92                   ; |697| 
;*      Branch Occurs to L92            ; |697| 
L93:        
	.line	139
;----------------------------------------------------------------------
; 700 | for (i=0;i<DAC_MAX;i++)                                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |700| 
        sti       r0,*+fp(1)            ; |700| 
        cmpi      12,r0                 ; |700| 
        bhs       L95                   ; |700| 
;*      Branch Occurs to L95            ; |700| 
L94:        
	.line	140
;----------------------------------------------------------------------
; 701 | Setup_DAC(i);                                                          
;----------------------------------------------------------------------
        ldp       @CL421,DP
        ldiu      *+fp(1),ar2           ; |701| 
        ldiu      @CL421,r0             ; |701| 
        callu     r0                    ; far call to _Setup_DAC	; |701| 
                                        ; |701| Far Call Occurs
	.line	139
        ldiu      1,r0                  ; |700| 
        addi      *+fp(1),r0            ; |700| Unsigned
        sti       r0,*+fp(1)            ; |700| 
        cmpi      12,r0                 ; |700| 
        blo       L94                   ; |700| 
;*      Branch Occurs to L94            ; |700| 
L95:        
	.line	142
;----------------------------------------------------------------------
; 703 | if ((REG_TEMPERATURE_EXTERNAL.unit & 0xFF) == u_temp_C)                
;----------------------------------------------------------------------
        ldp       @CL422,DP
        ldiu      @CL422,ar0            ; |703| 
        ldiu      255,r0                ; |703| 
        and3      r0,*ar0,r0            ; |703| 
        cmpi      32,r0                 ; |703| 
        bne       L97                   ; |703| 
;*      Branch Occurs to L97            ; |703| 
	.line	143
;----------------------------------------------------------------------
; 704 | DIO_TEMP_C.val = TRUE;                                                 
; 705 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL423,DP
        ldiu      @CL423,ar0            ; |704| 
        ldiu      1,r0                  ; |704| 
        sti       r0,*ar0               ; |704| 
        bu        L98                   ; |561| 
;*      Branch Occurs to L98            ; |561| 
L97:        
	.line	145
;----------------------------------------------------------------------
; 706 | DIO_TEMP_C.val = FALSE;                                                
;----------------------------------------------------------------------
        ldp       @CL423,DP
        ldiu      @CL423,ar0            ; |706| 
        ldiu      0,r0                  ; |706| 
        sti       r0,*ar0               ; |706| 
L98:        
	.line	147
;----------------------------------------------------------------------
; 708 | if (DIO_BUILT_IN_TEST_ENABLE.val)                                      
;----------------------------------------------------------------------
        ldp       @CL424,DP
        ldiu      @CL424,ar0            ; |708| 
        ldiu      *ar0,r0               ; |708| 
        cmpi      0,r0                  ; |708| 
        beq       L100                  ; |708| 
;*      Branch Occurs to L100           ; |708| 
	.line	148
;----------------------------------------------------------------------
; 709 | Self_Test_FULL();                                                      
;----------------------------------------------------------------------
        ldp       @CL425,DP
        ldiu      @CL425,r0             ; |709| 
        callu     r0                    ; far call to _Self_Test_FULL	; |709| 
                                        ; |709| Far Call Occurs
L100:        
	.line	151
;----------------------------------------------------------------------
; 712 | ENABLE_EXTINT1;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL378,DP
        ldiu      @CL378,ar0            ; |712| 
        ldiu      2,r0                  ; |712| 
        or3       r0,*ar0,r0            ; |712| 
        sti       r0,*ar0               ; |712| 
	pop		ST			
	.line	152
;----------------------------------------------------------------------
; 713 | ENABLE_INT1;                                                           
;----------------------------------------------------------------------
	or		0002h, IE
	.line	153
;----------------------------------------------------------------------
; 714 | CLEAR_INT1;                                                            
;----------------------------------------------------------------------
	andn	0002h, IF
	.line	156
;----------------------------------------------------------------------
; 717 | ENABLE_IRDA; //enable IrDA (USB)                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |717| 
        ldiu      16,r0                 ; |717| 
        or3       r0,*ar0,r0            ; |717| 
        sti       r0,*ar0               ; |717| 
	pop		ST			
	.line	158
;----------------------------------------------------------------------
; 719 | if (LOG_STATUS == ALFAT_CONTINUE_LOG)                                  
;----------------------------------------------------------------------
        ldp       @CL426,DP
        ldiu      @CL426,ar0            ; |719| 
        ldiu      *ar0,r0               ; |719| 
        cmpi      82,r0                 ; |719| 
        bne       L102                  ; |719| 
;*      Branch Occurs to L102           ; |719| 
	.line	160
;----------------------------------------------------------------------
; 721 | Timer_Insert(&ALFAT_LOG,0,TMR_action_replace);                         
;----------------------------------------------------------------------
        ldp       @CL428,DP
        ldiu      @CL428,r0             ; |721| 
        ldiu      1,r3                  ; |721| 
        ldp       @CL427,DP
        ldiu      0,r2                  ; |721| 
        ldiu      @CL427,ar2            ; |721| 
        callu     r0                    ; far call to _Timer_Insert	; |721| 
                                        ; |721| Far Call Occurs
L102:        
	.line	163
;----------------------------------------------------------------------
; 724 | Port_Defaults(FALSE);                                                  
;----------------------------------------------------------------------
        ldp       @CL429,DP
        ldiu      0,ar2                 ; |724| 
        ldiu      @CL429,r0             ; |724| 
        callu     r0                    ; far call to _Port_Defaults	; |724| 
                                        ; |724| Far Call Occurs
	.line	164
;----------------------------------------------------------------------
; 725 | Disable_Heater();                                                      
;----------------------------------------------------------------------
        ldp       @CL430,DP
        ldiu      @CL430,r0             ; |725| 
        callu     r0                    ; far call to _Disable_Heater	; |725| 
                                        ; |725| Far Call Occurs
	.line	167
;----------------------------------------------------------------------
; 728 | RESET_COUNTER++;                                                       
;----------------------------------------------------------------------
        ldp       @CL431,DP
        ldiu      @CL431,ar0            ; |728| 
        ldiu      1,r0                  ; |728| 
        addi3     r0,*ar0,r0            ; |728| 
        sti       r0,*ar0               ; |728| 
	.line	168
;----------------------------------------------------------------------
; 729 | Write_CFG_USER();                                                      
;----------------------------------------------------------------------
        ldp       @CL432,DP
        ldiu      @CL432,r0             ; |729| 
        callu     r0                    ; far call to _Write_CFG_USER	; |729| 
                                        ; |729| Far Call Occurs
	.line	171
;----------------------------------------------------------------------
; 732 | if (!DEMO)                                                             
;----------------------------------------------------------------------
        ldp       @CL433,DP
        ldiu      @CL433,ar0            ; |732| 
        ldiu      *ar0,r0               ; |732| 
        cmpi      0,r0                  ; |732| 
        bne       L104                  ; |732| 
;*      Branch Occurs to L104           ; |732| 
	.line	172
;----------------------------------------------------------------------
; 733 | Clear_Accumulators(0);                                                 
;----------------------------------------------------------------------
        ldp       @CL434,DP
        ldiu      0,ar2                 ; |733| 
        ldiu      @CL434,r0             ; |733| 
        callu     r0                    ; far call to _Clear_Accumulators	; |733| 
                                        ; |733| Far Call Occurs
L104:        
	.line	175
;----------------------------------------------------------------------
; 736 | VT_SELECT       = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL435,DP
        ldiu      @CL435,ar0            ; |736| 
        ldiu      0,r0                  ; |736| 
        sti       r0,*ar0               ; |736| 
	.line	176
;----------------------------------------------------------------------
; 737 | OSWITCH         = 1;                                                   
;----------------------------------------------------------------------
        ldp       @CL436,DP
        ldiu      @CL436,ar0            ; |737| 
        ldiu      1,r0                  ; |737| 
        sti       r0,*ar0               ; |737| 
	.line	177
;----------------------------------------------------------------------
; 738 | SELECT_LOAD_EXT;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL437,DP
        ldiu      @CL437,ar0            ; |738| 
        or3       r0,*ar0,r0            ; |738| 
        sti       r0,*ar0               ; |738| 
	pop		ST			
	.line	179
;----------------------------------------------------------------------
; 740 | if (EXTUNE)                                                            
;----------------------------------------------------------------------
        ldp       @CL438,DP
        ldiu      @CL438,ar0            ; |740| 
        ldiu      *ar0,r0               ; |740| 
        cmpi      0,r0                  ; |740| 
        beq       L106                  ; |740| 
;*      Branch Occurs to L106           ; |740| 
	.line	181
;----------------------------------------------------------------------
; 742 | VAR_Update(&REG_DAC[DAC_VTUNE], REG_VTUNE_SET[VT_SELECT].calc_val, 0, 0
;     | );                                                                     
;----------------------------------------------------------------------
        ldp       @CL435,DP
        ldiu      @CL435,ar0            ; |742| 
        ldp       @CL439,DP
        ldiu      44,r0                 ; |742| 
        ldiu      @CL439,ar2            ; |742| 
        mpyi3     r0,*ar0,ar0           ; |742| 
        ldp       @CL440,DP
        ldiu      0,rc                  ; |742| 
        addi      @CL440,ar0            ; |742| Unsigned
        ldp       @CL67,DP
        ldfu      *ar0,f2               ; |742| 40b float hi half
        ldiu      @CL67,r0              ; |742| 
        ldiu      *+ar0,r2              ; |742| 40b float lo half
        ldiu      0,r3                  ; |742| 
        callu     r0                    ; far call to _VAR_Update	; |742| 
                                        ; |742| Far Call Occurs
	.line	182
;----------------------------------------------------------------------
; 743 | VAR_Update(&REG_DAC[DAC_TUNESEL], 5.0, 0, 0);                          
; 745 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL441,DP
        ldiu      @CL441,ar2            ; |743| 
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |743| 
        ldp       @CL442+0,DP
        ldfu      @CL442+0,f2           ; |743| 40b float hi half
        ldp       @CL442+1,DP
        ldiu      0,rc                  ; |743| 
        ldiu      @CL442+1,r2           ; |743| 40b float lo half
        ldiu      0,r3                  ; |743| 
        callu     r0                    ; far call to _VAR_Update	; |743| 
                                        ; |743| Far Call Occurs
        bu        L107                  ; |561| 
;*      Branch Occurs to L107           ; |561| 
L106:        
	.line	186
;----------------------------------------------------------------------
; 747 | VAR_Update(&REG_DAC[DAC_VTUNE], 0.0, 0, 0);                            
;----------------------------------------------------------------------
        ldp       @CL439,DP
        ldiu      @CL439,ar2            ; |747| 
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |747| 
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |747| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |747| 
        ldiu      @CL79+1,r2            ; |747| 40b float lo half
        ldiu      0,r3                  ; |747| 
        callu     r0                    ; far call to _VAR_Update	; |747| 
                                        ; |747| Far Call Occurs
	.line	187
;----------------------------------------------------------------------
; 748 | VAR_Update(&REG_DAC[DAC_TUNESEL], 0.0, 0, 0);                          
;----------------------------------------------------------------------
        ldp       @CL441,DP
        ldiu      @CL441,ar2            ; |748| 
        ldp       @CL67,DP
        ldiu      @CL67,r0              ; |748| 
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |748| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |748| 
        ldiu      @CL79+1,r2            ; |748| 40b float lo half
        ldiu      0,r3                  ; |748| 
        callu     r0                    ; far call to _VAR_Update	; |748| 
                                        ; |748| Far Call Occurs
L107:        
	.line	190
;----------------------------------------------------------------------
; 751 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL373,DP
        ldiu      @CL373,ar0            ; |751| 
        ldiu      *ar0,r0               ; |751| 
        cmpi      0,r0                  ; |751| 
        bne       L109                  ; |751| 
;*      Branch Occurs to L109           ; |751| 
	.line	191
;----------------------------------------------------------------------
; 752 | Write_DAC(DAC_TUNESEL);                                                
;----------------------------------------------------------------------
        ldp       @CL443,DP
        ldiu      11,ar2                ; |752| 
        ldiu      @CL443,r0             ; |752| 
        callu     r0                    ; far call to _Write_DAC	; |752| 
                                        ; |752| Far Call Occurs
L109:        
	.line	193
;----------------------------------------------------------------------
; 754 | Write_DAC(DAC_VTUNE);                                                  
;----------------------------------------------------------------------
        ldp       @CL443,DP
        ldiu      10,ar2                ; |754| 
        ldiu      @CL443,r0             ; |754| 
        callu     r0                    ; far call to _Write_DAC	; |754| 
                                        ; |754| Far Call Occurs
	.line	194
;----------------------------------------------------------------------
; 755 | Set_Research_Mode();            /* start sampling */                   
;----------------------------------------------------------------------
        ldp       @CL444,DP
        ldiu      @CL444,r0             ; |755| 
        callu     r0                    ; far call to _Set_Research_Mode	; |755| 
                                        ; |755| Far Call Occurs
	.line	197
;----------------------------------------------------------------------
; 758 | if (MEM)                                                               
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |758| 
        ldiu      *ar0,r0               ; |758| 
        cmpi      0,r0                  ; |758| 
        beq       L111                  ; |758| 
;*      Branch Occurs to L111           ; |758| 
	.line	198
;----------------------------------------------------------------------
; 759 | Debug();                                                               
;----------------------------------------------------------------------
        ldp       @CL445,DP
        ldiu      @CL445,r0             ; |759| 
        callu     r0                    ; far call to _Debug	; |759| 
                                        ; |759| Far Call Occurs
L111:        
	.line	200
;----------------------------------------------------------------------
; 761 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |761| 
        ldiu      8,r0                  ; |761| 
        or3       r0,*ar0,r0            ; |761| 
        sti       r0,*ar0               ; |761| 
        ldiu      128,r0                ; |761| 
        or3       r0,*ar0,r0            ; |761| 
        sti       r0,*ar0               ; |761| 
	pop		ST			
	.line	201
;----------------------------------------------------------------------
; 762 | INITIALIZING = FALSE;                                                  
;----------------------------------------------------------------------
        ldp       @CL379,DP
        ldiu      @CL379,ar0            ; |762| 
        ldiu      0,r0                  ; |762| 
        sti       r0,*ar0               ; |762| 
	.line	202
;----------------------------------------------------------------------
; 763 | GIE;                                                                   
;----------------------------------------------------------------------
	or		2000h, ST	
	.line	203
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      9,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	764,000000000h,7


	.sect	 "internal_RAM"

	.global	_main
	.sym	_main,_main,36,2,0
	.func	782
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
; 782 | main()                                                                 
; 784 | while (TRUE)                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
L115:        
	.line	5
;----------------------------------------------------------------------
; 786 | TICKLE_WATCHDOG;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |786| 
        ldiu      128,r0                ; |786| 
        or3       r0,*ar0,r0            ; |786| 
        sti       r0,*ar0               ; |786| 
	pop		ST			
	.line	7
;----------------------------------------------------------------------
; 788 | LCD_PAGE();                                                            
;----------------------------------------------------------------------
        ldp       @CL404,DP
        ldiu      @CL404,r0             ; |788| 
        callu     r0                    ; far call to _LCD_PAGE	; |788| 
                                        ; |788| Far Call Occurs
	.line	8
;----------------------------------------------------------------------
; 789 | Execute();                                                             
;----------------------------------------------------------------------
        call      _Execute              ; |789| 
                                        ; |789| Call Occurs
	.line	9
        bu        L115                  ; |790| 
;*      Branch Occurs to L115           ; |790| 
	.line	10
	.endfunc	791,000000000h,0


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
SL10:	.byte	"%s",0
SL11:	.byte	"%s:    %2d.%02d",0
SL12:	.byte	"%s:      %4.2f",0
SL13:	.byte	"Phase Dynamics, Inc.",0
SL14:	.byte	"Initializing Data...",0
SL15:	.byte	"HW Version:    %2d.%02d",0
SL16:	.byte	"FW Version:  %4.2f.%02i",0
SL17:	.byte	" Low Range Analyzer ",0
SL18:	.byte	" Mid Range Analyzer ",0
SL19:	.byte	"High Range Analyzer ",0
SL20:	.byte	"Full Range Analyzer ",0
SL21:	.byte	"  CCM Application   ",0
SL22:	.byte	"      Analyzer      ",0
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
	.bss	CL79,2
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
	.bss	CL91,2
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
	.bss	CL124,2
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
	.bss	CL181,2
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
	.bss	CL244,2
	.bss	CL245,1
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
	.bss	CL435,1
	.bss	CL436,1
	.bss	CL437,1
	.bss	CL438,1
	.bss	CL439,1
	.bss	CL440,1
	.bss	CL441,1
	.bss	CL442,2
	.bss	CL443,1
	.bss	CL444,1
	.bss	CL445,1

	.sect	".cinit"
	.field  	451,32
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
	.field  	_REG_LOWSALT_THRESHOLD,32
	.field  	_EXTENDED_FW_VERSION_ENABLE,32
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
	.word   	0024428F6H ; double  6.130000000000000e+00
	.field  	_RUSS,32
	.field  	_OUT_STR,32
	.field  	_Get_Russ_Line,32
	.field  	SL10,32
	.field  	_OUT_STR2,32
	.field  	_LCD_DISPLAY+101,32
	.field  	_LCD_DISPLAY+202,32
	.field  	SL11,32
	.field  	_LCD_DISPLAY+303,32
	.field  	SL12,32
	.field  	SL13,32
	.field  	SL14,32
	.field  	SL15,32
	.field  	SL16,32
	.field  	_LCD_PAGE,32
	.field  	_MENU_INIT,32
	.field  	_Initialize_Variables,32
	.field  	SL17,32
	.field  	_ENG_STR,32
	.field  	SL18,32
	.field  	SL19,32
	.field  	SL20,32
	.field  	SL21,32
	.field  	SL22,32
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
	.field  	_ALFAT_LOG,32
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

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_sprintf

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

	.global	_Get_Russ_Line

	.global	_OUT_STR

	.global	_OUT_STR2

	.global	_ENG_STR

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

	.global	_REG_LOWSALT_THRESHOLD

	.global	_EXTENDED_FW_VERSION_ENABLE

	.global	_GAS_ENTRAINED_DENS_DETECT

	.global	_gas_routine_reset_needed

	.global	_boxcar_reset_needed

	.global	_RUSS

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

	.global	_ALFAT_LOG

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
	.global	_Print_To_LCD
	.global	_Execute
