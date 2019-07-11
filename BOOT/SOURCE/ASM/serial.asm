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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_7HO.AAA 
	.file	"serial.c"
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
	.file	"serial.c"
	.sect	 "initialization"

	.global	_Setup_Serial_Port0
	.sym	_Setup_Serial_Port0,_Setup_Serial_Port0,32,2,0
	.func	37
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
;  37 | void Setup_Serial_Port0(void)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  39 | SP0_RX_DATA  = 0x0000;                                                 
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |39| 
        ldiu      0,r0                  ; |39| 
        sti       r0,*ar0               ; |39| 
	.line	4
;----------------------------------------------------------------------
;  40 | *SP0_GC          = 0;
;     |          /* reset serial port */                                       
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |40| 
        sti       r0,*ar0               ; |40| 
	.line	5
;----------------------------------------------------------------------
;  41 | *SP0_XCTRL       = (CLKFUNC | DFUNC     | FSFUNC);      /* enable TX CL
;     | K, DATA, FS */                                                         
;----------------------------------------------------------------------
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |41| 
        ldiu      273,r0                ; |41| 
        sti       r0,*ar0               ; |41| 
	.line	6
;----------------------------------------------------------------------
;  42 | *SP0_RCTRL       = (CLKFUNC | DFUNC     | FSFUNC);      /* enable RX CL
;     | K, DATA, FS */                                                         
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |42| 
        sti       r0,*ar0               ; |42| 
	.line	7
;----------------------------------------------------------------------
;  43 | *SP0_TMRPER  = 0x00010001;                                          /*
;     | set SCLK to H1/(2*2) = CLOCK_TIMER FREQUENCY */                        
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |43| 
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |43| 
        sti       r0,*ar0               ; |43| 
	.line	8
;----------------------------------------------------------------------
;  44 | *SP0_TMRCTRL = (XGO     | XC_P              | XCLKSRC | _XHLD   | RGO
;     | | RC_P | _RHLD);                                                       
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |44| 
        ldiu      463,r0                ; |44| 
        sti       r0,*ar0               ; |44| 
	.line	9
;----------------------------------------------------------------------
;  45 | *SP0_GC          = (FSXOUT      | XCLK_SRCE | XLEN_16 | RLEN_16 | RINT
;     | | XINT | _XRESET | _RRESET);                                           
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |45| 
        ldp       @CL8,DP
        ldiu      @CL8,r0               ; |45| 
        sti       r0,*ar0               ; |45| 
	.line	10
;----------------------------------------------------------------------
;  46 | DISABLE_RINT0;                                                         
;----------------------------------------------------------------------
	andn	0020h, IE
	.line	11
;----------------------------------------------------------------------
;  47 | DISABLE_XINT0;                                                         
;----------------------------------------------------------------------
	andn	0010h, IE
	.line	12
;----------------------------------------------------------------------
;  48 | CLEAR_RINT0;                                                           
;----------------------------------------------------------------------
	andn	0020h, IF
	.line	13
;----------------------------------------------------------------------
;  49 | CLEAR_XINT0;                                                           
;----------------------------------------------------------------------
	andn	0010h, IF
	.line	14
;----------------------------------------------------------------------
;  50 | SP0_RX_DATA  = *SP0_RXDATA & 0xFFFF;                                   
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar1              ; |50| 
        ldp       @CL1,DP
        ldiu      *ar1,r0               ; |50| 
        ldiu      @CL1,ar0              ; |50| 
        and       65535,r0              ; |50| 
        sti       r0,*ar0               ; |50| 
	.line	15
;----------------------------------------------------------------------
;  51 | SP0_RX_DATA  = 0x0000;                                                 
;----------------------------------------------------------------------
        ldiu      @CL1,ar0              ; |51| 
        ldiu      0,r0                  ; |51| 
        sti       r0,*ar0               ; |51| 
	.line	16
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	52,000000000h,0


	.sect	 "interrupt_routines"

	.global	_Clear_RX
	.sym	_Clear_RX,_Clear_RX,32,2,0
	.func	66
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
;  66 | void Clear_RX(int id)                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |67| 
	.line	3
;----------------------------------------------------------------------
;  68 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	4
;----------------------------------------------------------------------
;  69 | PORT[id].LONG_ADDRESS   = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldp       @CL10,DP
        mpyi      71,ir0                ; |69| 
        ldiu      @CL10,ar0             ; |69| 
        ldiu      0,r0                  ; |69| 
        sti       r0,*+ar0(ir0)         ; |69| 
	.line	5
;----------------------------------------------------------------------
;  70 | RXbuf[id].locked                = FALSE;                        /* unlo
;     | ck the buffer */                                                       
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |70| 
        ldiu      *+fp(1),ir0           ; |70| 
        mpyi      307,ir0               ; |70| 
        sti       r0,*+ar0(ir0)         ; |70| 
	.line	6
;----------------------------------------------------------------------
;  71 | PORT[id].RX_pending     = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      *+fp(1),ir0           ; |71| 
        ldiu      @CL12,ar0             ; |71| 
        mpyi      71,ir0                ; |71| 
        sti       r0,*+ar0(ir0)         ; |71| 
	.line	7
;----------------------------------------------------------------------
;  72 | PORT[id].STAT                   = 0x00;                                
;  74 | if (FIFOSIZE)                                                          
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      *+fp(1),ir0           ; |72| 
        ldiu      @CL13,ar0             ; |72| 
        mpyi      71,ir0                ; |72| 
        sti       r0,*+ar0(ir0)         ; |72| 
	.line	11
;----------------------------------------------------------------------
;  76 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	12
;----------------------------------------------------------------------
;  77 | UART[id][FCR] = 0x07;                                   /* clear FIFOS
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      *+fp(1),ir0           ; |77| 
        ldiu      @CL14,ar0             ; |77| 
        ash       4,ir0                 ; |77| 
        ldiu      7,r0                  ; |77| 
        sti       r0,*+ar0(ir0)         ; |77| 
	.line	15
;----------------------------------------------------------------------
;  80 | Clear(&RXbuf[id]);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |80| 
        ldp       @CL15,DP
        mpyi      307,ar2               ; |80| 
        addi      @CL15,ar2             ; |80| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |80| 
        callu     r0                    ; far call to _Clear	; |80| 
                                        ; |80| Far Call Occurs
	.line	17
;----------------------------------------------------------------------
;  82 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	18
;----------------------------------------------------------------------
;  83 | UART[id][IER]            = 0x01;                                /* disa
;     | ble THR, enable RHR interrupts */                                      
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,ar0             ; |83| 
        ldiu      *+fp(1),ir0           ; |83| 
        ash       4,ir0                 ; |83| 
        ldiu      1,r0                  ; |83| 
        sti       r0,*+ar0(ir0)         ; |83| 
	.line	19
;----------------------------------------------------------------------
;  84 | PORT[id].FLAG1           = 0;                                          
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |84| 
        ldiu      *+fp(1),ir0           ; |84| 
        mpyi      71,ir0                ; |84| 
        ldiu      0,r0                  ; |84| 
        sti       r0,*+ar0(ir0)         ; |84| 
	.line	20
;----------------------------------------------------------------------
;  85 | PORT[id].FLAG2           = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |85| 
        ldp       @CL19,DP
        mpyi      71,ir0                ; |85| 
        ldiu      @CL19,ar0             ; |85| 
        sti       r0,*+ar0(ir0)         ; |85| 
	.line	21
;----------------------------------------------------------------------
;  86 | PORT[id].FLAG3           = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |86| 
        ldp       @CL20,DP
        mpyi      71,ir0                ; |86| 
        ldiu      @CL20,ar0             ; |86| 
        sti       r0,*+ar0(ir0)         ; |86| 
	.line	22
;----------------------------------------------------------------------
;  87 | PORT[id].n                       = 0;                                  
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |87| 
        ldiu      *+fp(1),ir0           ; |87| 
        mpyi      71,ir0                ; |87| 
        sti       r0,*+ar0(ir0)         ; |87| 
	.line	23
;----------------------------------------------------------------------
;  88 | PORT[id].n_exp           = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |88| 
        ldp       @CL22,DP
        mpyi      71,ir0                ; |88| 
        ldiu      @CL22,ar0             ; |88| 
        sti       r0,*+ar0(ir0)         ; |88| 
	.line	24
;----------------------------------------------------------------------
;  89 | PORT[id].r                       = FALSE;                              
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar0             ; |89| 
        ldiu      *+fp(1),ir0           ; |89| 
        mpyi      71,ir0                ; |89| 
        sti       r0,*+ar0(ir0)         ; |89| 
	.line	25
;----------------------------------------------------------------------
;  90 | PORT[id].c                       = FALSE;                              
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      @CL24,ar0             ; |90| 
        ldiu      *+fp(1),ir0           ; |90| 
        mpyi      71,ir0                ; |90| 
        sti       r0,*+ar0(ir0)         ; |90| 
	.line	26
;----------------------------------------------------------------------
;  91 | PORT[id].TMR_enabled = FALSE;                                          
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |91| 
        ldiu      *+fp(1),ir0           ; |91| 
        mpyi      71,ir0                ; |91| 
        sti       r0,*+ar0(ir0)         ; |91| 
	.line	28
;----------------------------------------------------------------------
;  93 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |93| 
        ldiu      *ar0,r0               ; |93| 
        cmpi      0,r0                  ; |93| 
        bne       L12                   ; |93| 
;*      Branch Occurs to L12            ; |93| 
	.line	30
;----------------------------------------------------------------------
;  95 | if (id==4)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |95| 
        cmpi      4,r0                  ; |95| 
        bne       L7                    ; |95| 
;*      Branch Occurs to L7             ; |95| 
	.line	32
;----------------------------------------------------------------------
;  97 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	33
;----------------------------------------------------------------------
;  98 | UART[id][LCR] |= 0x40;                                                 
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldp       @CL27,DP
        ash       4,ar0                 ; |98| 
        addi      @CL27,ar0             ; |98| Unsigned
        ldiu      64,r0                 ; |98| 
        or        *+ar0(3),r0           ; |98| 
        sti       r0,*+ar0(3)           ; |98| 
L7:        
	.line	36
;----------------------------------------------------------------------
; 101 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	37
;----------------------------------------------------------------------
; 102 | UART[id][MCR] &= 0xFE;                                  /* disable TX *
;     | /                                                                      
; 104 | else                                                                   
; 106 | switch (id)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |102| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |102| 
        addi      @CL27,ar0             ; |102| Unsigned
        ldiu      254,r0                ; |102| 
        and       *+ar0(4),r0           ; |102| 
        sti       r0,*+ar0(4)           ; |102| 
        bu        L14                   ; |65| 
;*      Branch Occurs to L14            ; |65| 
L9:        
	.line	43
;----------------------------------------------------------------------
; 108 | case 0: DISABLE_TXA; break;                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |108| 
        ldiu      8,r0                  ; |108| 
        or3       r0,*ar0,r0            ; |108| 
        sti       r0,*ar0               ; |108| 
	pop		ST			
        bu        L14                   ; |108| 
;*      Branch Occurs to L14            ; |108| 
L10:        
	.line	44
;----------------------------------------------------------------------
; 109 | case 1: DISABLE_TXB; break;                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |109| 
        ldiu      1,r0                  ; |109| 
        or3       r0,*ar0,r0            ; |109| 
        sti       r0,*ar0               ; |109| 
	pop		ST			
        bu        L14                   ; |109| 
;*      Branch Occurs to L14            ; |109| 
L12:        
	.line	41
        ldiu      *+fp(1),r0            ; |106| 
        cmpi      0,r0                  ; |106| 
        beq       L9                    ; |106| 
;*      Branch Occurs to L9             ; |106| 
        cmpi      1,r0                  ; |106| 
        beq       L10                   ; |106| 
;*      Branch Occurs to L10            ; |106| 
L14:        
	.line	48
;----------------------------------------------------------------------
; 113 | GIEP;                                                                  
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
	.endfunc	114,000000000h,1


	.sect	 "interrupt_routines"

	.global	_RESET_PKT
	.sym	_RESET_PKT,_RESET_PKT,32,2,0
	.func	128
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
; 128 | void RESET_PKT(int id)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |129| 
	.line	3
;----------------------------------------------------------------------
; 130 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 132 | Clear_RX(id);                                                          
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |132| 
        callu     r0                    ; far call to _Clear_RX	; |132| 
                                        ; |132| Far Call Occurs
	.line	7
;----------------------------------------------------------------------
; 134 | TIMER1_COUNTER[id]       = PORT[id].TMR_Network_WDOG + PORT[id].TMR_Cha
;     | r;                                                                     
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      @CL31,ar0             ; |134| 
        ldiu      *+fp(1),ir1           ; |134| 
        ldp       @CL32,DP
        ldiu      ir1,ir0               ; |134| 
        ldiu      @CL32,ar1             ; |134| 
        mpyi      71,ir0                ; |134| 
        ldp       @CL30,DP
        ldiu      ir1,r0
        mpyi      71,ir1                ; |134| 
        ldiu      @CL30,ar2             ; |134| 
        addi3     *+ar0(ir1),*+ar1(ir0),r1 ; |134| 
        ldiu      r0,ir0                ; |134| 
        sti       r1,*+ar2(ir0)         ; |134| 
	.line	8
;----------------------------------------------------------------------
; 135 | PORT[id].i                       = PORT[id].i_main;                    
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |135| 
        ldiu      *+fp(1),ir1           ; |135| 
        ldiu      ir1,ir0               ; |135| 
        ldp       @CL33,DP
        mpyi      71,ir0                ; |135| 
        mpyi      71,ir1                ; |135| 
        ldiu      @CL33,ar1             ; |135| 
        ldiu      *+ar0(ir1),r0         ; |135| 
        sti       r0,*+ar1(ir0)         ; |135| 
	.line	9
;----------------------------------------------------------------------
; 136 | PORT[id].pvector         = PORT[id].pvector_main;                      
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      *+fp(1),ir1           ; |136| 
        ldiu      @CL36,ar1             ; |136| 
        ldp       @CL35,DP
        ldiu      ir1,ir0               ; |136| 
        ldiu      @CL35,ar0             ; |136| 
        mpyi      71,ir1                ; |136| 
        mpyi      71,ir0                ; |136| 
        ldiu      *+ar1(ir1),r0         ; |136| 
        sti       r0,*+ar0(ir0)         ; |136| 
	.line	10
;----------------------------------------------------------------------
; 137 | PORT[id].tvector         = PORT[id].tvector_main;                      
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      *+fp(1),ir1           ; |137| 
        ldiu      ir1,ir0               ; |137| 
        ldiu      @CL38,ar1             ; |137| 
        mpyi      71,ir1                ; |137| 
        ldp       @CL37,DP
        mpyi      71,ir0                ; |137| 
        ldiu      @CL37,ar0             ; |137| 
        ldiu      *+ar1(ir1),r0         ; |137| 
        sti       r0,*+ar0(ir0)         ; |137| 
	.line	11
;----------------------------------------------------------------------
; 138 | PORT[id].TX_complete = TRUE;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |138| 
        ldp       @CL39,DP
        mpyi      71,ir0                ; |138| 
        ldiu      @CL39,ar0             ; |138| 
        ldiu      1,r0                  ; |138| 
        sti       r0,*+ar0(ir0)         ; |138| 
	.line	12
;----------------------------------------------------------------------
; 139 | GIEP;                                                                  
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
	.endfunc	140,000000000h,1


	.sect	 ".text"

	.global	_No_Port
	.sym	_No_Port,_No_Port,32,2,0
	.func	154
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
; 154 | void No_Port(int id)                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |155| 
	.line	3
;----------------------------------------------------------------------
; 156 | PORT[id].i_main                 = 0;                                   
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldp       @CL34,DP
        mpyi      71,ir0                ; |156| 
        ldiu      @CL34,ar0             ; |156| 
        ldiu      0,r0                  ; |156| 
        sti       r0,*+ar0(ir0)         ; |156| 
	.line	4
;----------------------------------------------------------------------
; 157 | PORT[id].tvector_main   = (int*)0;                                     
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |157| 
        ldiu      *+fp(1),ir0           ; |157| 
        mpyi      71,ir0                ; |157| 
        sti       r0,*+ar0(ir0)         ; |157| 
	.line	5
;----------------------------------------------------------------------
; 158 | PORT[id].pvector_main   = (int*)0;                                     
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      *+fp(1),ir0           ; |158| 
        ldiu      @CL36,ar0             ; |158| 
        mpyi      71,ir0                ; |158| 
        sti       r0,*+ar0(ir0)         ; |158| 
	.line	7
;----------------------------------------------------------------------
; 160 | RESET_PKT(id);                                                         
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      *+fp(1),ar2           ; |160| 
        ldiu      @CL40,r0              ; |160| 
        callu     r0                    ; far call to _RESET_PKT	; |160| 
                                        ; |160| Far Call Occurs
	.line	9
;----------------------------------------------------------------------
; 162 | PORT[id].TMR_enabled    = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |162| 
        ldp       @CL25,DP
        mpyi      71,ir0                ; |162| 
        ldiu      @CL25,ar0             ; |162| 
        ldiu      0,r0                  ; |162| 
        sti       r0,*+ar0(ir0)         ; |162| 
	.line	10
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	163,000000000h,1


	.sect	 "initialization"

	.global	_Setup_UART
	.sym	_Setup_UART,_Setup_UART,36,2,0
	.func	181
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
; 181 | int Setup_UART(int id, int baud_rate, int num_bits, int parity, float s
;     | top_bits)                                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      9,sp
	.line	2
;----------------------------------------------------------------------
; 183 | int     div;            /* calculated baud rate */                     
; 184 | float temp;             /* temporary variable   */                     
; 185 | float n;                /* calculated num bits  */                     
; 186 | unsigned int x; /* port check           */                             
;----------------------------------------------------------------------
        stf       f2,*+fp(5)            ; |182| 
        sti       rs,*+fp(4)            ; |182| 
        sti       rc,*+fp(3)            ; |182| 
        sti       r3,*+fp(2)            ; |182| 
        sti       ar2,*+fp(1)           ; |182| 
	.line	8
;----------------------------------------------------------------------
; 188 | PORT[id].PRESENT = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |188| 
        ldp       @CL41,DP
        mpyi      71,ir0                ; |188| 
        ldiu      @CL41,ar0             ; |188| 
        ldiu      0,r0                  ; |188| 
        sti       r0,*+ar0(ir0)         ; |188| 
	.line	10
;----------------------------------------------------------------------
; 190 | if (SA && ((id<0) || (id>=2)))          /* check serial port range */  
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |190| 
        ldiu      *ar0,r0               ; |190| 
        cmpi      0,r0                  ; |190| 
        beq       L28                   ; |190| 
;*      Branch Occurs to L28            ; |190| 
        ldiu      *+fp(1),r0            ; |190| 
        cmpi      0,r0                  ; |190| 
        blt       L26                   ; |190| 
;*      Branch Occurs to L26            ; |190| 
        cmpi      2,r0                  ; |190| 
        blt       L28                   ; |190| 
;*      Branch Occurs to L28            ; |190| 
L26:        
	.line	11
;----------------------------------------------------------------------
; 191 | return UART_ERROR_SELECT;                                              
;----------------------------------------------------------------------
        bud       L86                   ; |191| 
	nop
	nop
        ldiu      -10,r0                ; |191| 
;*      Branch Occurs to L86            ; |191| 
L28:        
	.line	12
;----------------------------------------------------------------------
; 192 | else if ((id<0) || (id>=UART_MAX))  /* check UART range */             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |192| 
        cmpi      0,r0                  ; |192| 
        blt       L30                   ; |192| 
;*      Branch Occurs to L30            ; |192| 
        cmpi      8,r0                  ; |192| 
        blt       L31                   ; |192| 
;*      Branch Occurs to L31            ; |192| 
L30:        
	.line	13
;----------------------------------------------------------------------
; 193 | return UART_ERROR_SELECT;                                              
;----------------------------------------------------------------------
        bud       L86                   ; |193| 
	nop
	nop
        ldiu      -10,r0                ; |193| 
;*      Branch Occurs to L86            ; |193| 
L31:        
	.line	15
;----------------------------------------------------------------------
; 195 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	18
;----------------------------------------------------------------------
; 198 | x                               = 0x00;                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |198| 
        sti       r0,*+fp(9)            ; |198| 
	.line	19
;----------------------------------------------------------------------
; 199 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	20
;----------------------------------------------------------------------
; 200 | UART[id][SPR]   = 0xAA;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |200| 
        ldp       @CL42,DP
        ash       4,ir0                 ; |200| 
        ldiu      @CL42,ar0             ; |200| 
        ldiu      170,r0                ; |200| 
        sti       r0,*+ar0(ir0)         ; |200| 
	.line	21
;----------------------------------------------------------------------
; 201 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	22
;----------------------------------------------------------------------
; 202 | UART[id][SPR+1] = 0xFF; /* this write will affect the bus */           
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      *+fp(1),ir0           ; |202| 
        ldiu      @CL43,ar0             ; |202| 
        ash       4,ir0                 ; |202| 
        ldiu      255,r0                ; |202| 
        sti       r0,*+ar0(ir0)         ; |202| 
	.line	23
;----------------------------------------------------------------------
; 203 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	24
;----------------------------------------------------------------------
; 204 | x                               = UART[id][SPR] & 0xFF;                
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      *+fp(1),ir0           ; |204| 
        ldiu      @CL42,ar0             ; |204| 
        ash       4,ir0                 ; |204| 
        and3      r0,*+ar0(ir0),r0      ; |204| 
        sti       r0,*+fp(9)            ; |204| 
	.line	26
;----------------------------------------------------------------------
; 206 | if (x!=0xAA)                                                           
;----------------------------------------------------------------------
        cmpi      170,r0                ; |206| 
        beq       L33                   ; |206| 
;*      Branch Occurs to L33            ; |206| 
	.line	28
;----------------------------------------------------------------------
; 208 | No_Port(id);                                                           
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      *+fp(1),ar2           ; |208| 
        ldiu      @CL44,r0              ; |208| 
        callu     r0                    ; far call to _No_Port	; |208| 
                                        ; |208| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 209 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	30
;----------------------------------------------------------------------
; 210 | return;                                                                
;----------------------------------------------------------------------
        bu        L86                   ; |210| 
;*      Branch Occurs to L86            ; |210| 
L33:        
	.line	33
;----------------------------------------------------------------------
; 213 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	34
;----------------------------------------------------------------------
; 214 | UART[id][SPR]   = 0x55;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |214| 
        ldp       @CL42,DP
        ash       4,ir0                 ; |214| 
        ldiu      @CL42,ar0             ; |214| 
        ldiu      85,r0                 ; |214| 
        sti       r0,*+ar0(ir0)         ; |214| 
	.line	35
;----------------------------------------------------------------------
; 215 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	36
;----------------------------------------------------------------------
; 216 | UART[id][SPR+1] = 0xFF; /* this write will affect the bus */           
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      *+fp(1),ir0           ; |216| 
        ldiu      @CL43,ar0             ; |216| 
        ash       4,ir0                 ; |216| 
        ldiu      255,r0                ; |216| 
        sti       r0,*+ar0(ir0)         ; |216| 
	.line	37
;----------------------------------------------------------------------
; 217 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	38
;----------------------------------------------------------------------
; 218 | x                               = UART[id][SPR] & 0xFF;                
;----------------------------------------------------------------------
        ldp       @CL42,DP
        ldiu      *+fp(1),ir0           ; |218| 
        ldiu      @CL42,ar0             ; |218| 
        ash       4,ir0                 ; |218| 
        and3      r0,*+ar0(ir0),r0      ; |218| 
        sti       r0,*+fp(9)            ; |218| 
	.line	40
;----------------------------------------------------------------------
; 220 | if (x!=0x55)                                                           
;----------------------------------------------------------------------
        cmpi      85,r0                 ; |220| 
        beq       L35                   ; |220| 
;*      Branch Occurs to L35            ; |220| 
	.line	42
;----------------------------------------------------------------------
; 222 | No_Port(id);                                                           
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      *+fp(1),ar2           ; |222| 
        ldiu      @CL44,r0              ; |222| 
        callu     r0                    ; far call to _No_Port	; |222| 
                                        ; |222| Far Call Occurs
	.line	43
;----------------------------------------------------------------------
; 223 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	44
;----------------------------------------------------------------------
; 224 | return;                                                                
;----------------------------------------------------------------------
        bu        L86                   ; |224| 
;*      Branch Occurs to L86            ; |224| 
L35:        
	.line	47
;----------------------------------------------------------------------
; 227 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	48
;----------------------------------------------------------------------
; 228 | UART[id][SPR]    = 0x00;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |228| 
        ldp       @CL42,DP
        ash       4,ir0                 ; |228| 
        ldiu      @CL42,ar0             ; |228| 
        ldiu      0,r0                  ; |228| 
        sti       r0,*+ar0(ir0)         ; |228| 
	.line	49
;----------------------------------------------------------------------
; 229 | PORT[id].PRESENT = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      *+fp(1),ir0           ; |229| 
        ldiu      @CL41,ar0             ; |229| 
        mpyi      71,ir0                ; |229| 
        ldiu      1,r0                  ; |229| 
        sti       r0,*+ar0(ir0)         ; |229| 
	.line	52
;----------------------------------------------------------------------
; 232 | DISABLE_INT0;                                                          
;----------------------------------------------------------------------
	andn	0001h, IE
	.line	53
;----------------------------------------------------------------------
; 233 | DISABLE_EXTINT0;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL45,DP
        ldiu      @CL45,ar0             ; |233| 
        ldiu      254,r0                ; |233| 
        and3      r0,*ar0,r0            ; |233| 
        sti       r0,*ar0               ; |233| 
	pop		ST			
	.line	54
;----------------------------------------------------------------------
; 234 | CLEAR_INT0;                                                            
;----------------------------------------------------------------------
	andn	0001h, IF
	.line	55
;----------------------------------------------------------------------
; 235 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	56
;----------------------------------------------------------------------
; 236 | UART[id][IER] = 0x00;   /* disable interrupts */                       
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |236| 
        ldiu      @CL17,ar0             ; |236| 
        ash       4,ir0                 ; |236| 
        ldiu      0,r0                  ; |236| 
        sti       r0,*+ar0(ir0)         ; |236| 
	.line	57
;----------------------------------------------------------------------
; 237 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	58
;----------------------------------------------------------------------
; 238 | UART[id][MCR] = 0x08;   /* always enable bit 3 (the INT pin) otherwise
;     | the tri-state will cause intermittent /INT */                          
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      *+fp(1),ir0           ; |238| 
        ash       4,ir0                 ; |238| 
        ldiu      @CL46,ar0             ; |238| 
        ldiu      8,r0                  ; |238| 
        sti       r0,*+ar0(ir0)         ; |238| 
	.line	60
;----------------------------------------------------------------------
; 240 | if ((id==4) && (!SA))                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |240| 
        cmpi      4,r0                  ; |240| 
        bne       L38                   ; |240| 
;*      Branch Occurs to L38            ; |240| 
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |240| 
        ldiu      *ar0,r0               ; |240| 
        cmpi      0,r0                  ; |240| 
        bne       L38                   ; |240| 
;*      Branch Occurs to L38            ; |240| 
	.line	62
;----------------------------------------------------------------------
; 242 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	63
;----------------------------------------------------------------------
; 243 | UART[id][LCR] = 0x40;                                                  
; 245 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |243| 
        ldp       @CL47,DP
        ash       4,ir0                 ; |243| 
        ldiu      @CL47,ar0             ; |243| 
        ldiu      64,r0                 ; |243| 
        sti       r0,*+ar0(ir0)         ; |243| 
        bu        L39                   ; |180| 
;*      Branch Occurs to L39            ; |180| 
L38:        
	.line	67
;----------------------------------------------------------------------
; 247 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	68
;----------------------------------------------------------------------
; 248 | UART[id][LCR] = 0x00;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |248| 
        ldp       @CL47,DP
        ash       4,ir0                 ; |248| 
        ldiu      @CL47,ar0             ; |248| 
        ldiu      0,r0                  ; |248| 
        sti       r0,*+ar0(ir0)         ; |248| 
L39:        
	.line	71
;----------------------------------------------------------------------
; 251 | if ((num_bits<5) || (num_bits>8))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |251| 
        cmpi      5,r0                  ; |251| 
        blt       L41                   ; |251| 
;*      Branch Occurs to L41            ; |251| 
        cmpi      8,r0                  ; |251| 
        ble       L42                   ; |251| 
;*      Branch Occurs to L42            ; |251| 
L41:        
	.line	72
;----------------------------------------------------------------------
; 252 | num_bits = 8;                                                          
;----------------------------------------------------------------------
        ldiu      8,r0                  ; |252| 
        sti       r0,*+fp(3)            ; |252| 
L42:        
	.line	74
;----------------------------------------------------------------------
; 254 | if (stop_bits==1.0);   /* do nothing */                                
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |254| 
        cmpf      1.0000000000e+00,f0   ; |254| 
        beq       L53                   ; |254| 
;*      Branch Occurs to L53            ; |254| 
	.line	75
;----------------------------------------------------------------------
; 255 | else if (stop_bits==2.0)                                               
;----------------------------------------------------------------------
        cmpf      2.0000000000e+00,f0   ; |255| 
        bne       L48                   ; |255| 
;*      Branch Occurs to L48            ; |255| 
	.line	77
;----------------------------------------------------------------------
; 257 | if ((num_bits<6) || (num_bits>8))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |257| 
        cmpi      6,r0                  ; |257| 
        blt       L46                   ; |257| 
;*      Branch Occurs to L46            ; |257| 
        cmpi      8,r0                  ; |257| 
        ble       L47                   ; |257| 
;*      Branch Occurs to L47            ; |257| 
L46:        
	.line	79
;----------------------------------------------------------------------
; 259 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	80
;----------------------------------------------------------------------
; 260 | return UART_ERROR_NUM_BITS;                                            
;----------------------------------------------------------------------
        bud       L86                   ; |260| 
	nop
	nop
        ldiu      -12,r0                ; |260| 
;*      Branch Occurs to L86            ; |260| 
L47:        
	.line	83
;----------------------------------------------------------------------
; 263 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	84
;----------------------------------------------------------------------
; 264 | UART[id][LCR] |= 0x04;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |264| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |264| 
        addi      @CL27,ar0             ; |264| Unsigned
        ldiu      4,r0                  ; |264| 
        or        *+ar0(3),r0           ; |264| 
        sti       r0,*+ar0(3)           ; |264| 
        bu        L53                   ; |180| 
;*      Branch Occurs to L53            ; |180| 
L48:        
	.line	86
;----------------------------------------------------------------------
; 266 | else if (stop_bits==1.5)                                               
;----------------------------------------------------------------------
        ldfu      *+fp(5),f0            ; |266| 
        cmpf      1.5000000000e+00,f0   ; |266| 
        bne       L52                   ; |266| 
;*      Branch Occurs to L52            ; |266| 
	.line	88
;----------------------------------------------------------------------
; 268 | if (num_bits!=5)                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |268| 
        cmpi      5,r0                  ; |268| 
        beq       L51                   ; |268| 
;*      Branch Occurs to L51            ; |268| 
	.line	90
;----------------------------------------------------------------------
; 270 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	91
;----------------------------------------------------------------------
; 271 | return UART_ERROR_NUM_BITS;                                            
;----------------------------------------------------------------------
        bud       L86                   ; |271| 
	nop
	nop
        ldiu      -12,r0                ; |271| 
;*      Branch Occurs to L86            ; |271| 
L51:        
	.line	94
;----------------------------------------------------------------------
; 274 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	95
;----------------------------------------------------------------------
; 275 | UART[id][LCR] |= 0x04;                                                 
; 277 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |275| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |275| 
        addi      @CL27,ar0             ; |275| Unsigned
        ldiu      4,r0                  ; |275| 
        or        *+ar0(3),r0           ; |275| 
        sti       r0,*+ar0(3)           ; |275| 
        bu        L53                   ; |180| 
;*      Branch Occurs to L53            ; |180| 
L52:        
	.line	98
;----------------------------------------------------------------------
; 278 | stop_bits = 1.0;                                                       
;----------------------------------------------------------------------
        ldfu      1.0000000000e+00,f0   ; |278| 
        stf       f0,*+fp(5)            ; |278| 
L53:        
	.line	100
;----------------------------------------------------------------------
; 280 | PORTCFG[id].N    = num_bits;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |280| 
        ldp       @CL48,DP
        mpyi      359,ir0               ; |280| 
        ldiu      @CL48,ar0             ; |280| 
        ldiu      *+fp(3),r0            ; |280| 
        sti       r0,*+ar0(ir0)         ; |280| 
	.line	101
;----------------------------------------------------------------------
; 281 | PORTCFG[id].STP  = stop_bits;                                          
;----------------------------------------------------------------------
        ldfu      *+fp(5),f1            ; |281| 
        ldp       @CL49,DP
        ldiu      *+fp(1),ir0           ; |281| 
        negf      f1,f0                 ; |281| 
        ldiu      @CL49,ar0             ; |281| 
        mpyi      359,ir0               ; |281| 
        fix       f0,r0                 ; |281| 
        fix       f1,r1                 ; |281| 
        negi      r0,r0                 ; |281| 
        ldile     r0,r1                 ; |281| 
        sti       r1,*+ar0(ir0)         ; |281| 
	.line	102
;----------------------------------------------------------------------
; 282 | n                            = num_bits + stop_bits + 2.0;             
;----------------------------------------------------------------------
        float     *+fp(3),f0            ; |282| 
        addf      *+fp(5),f0            ; |282| 
        addf      2.0000000000e+00,f0   ; |282| 
        stf       f0,*+fp(8)            ; |282| 
	.line	103
;----------------------------------------------------------------------
; 283 | num_bits            -= 5;   /* setup for register - '00'=5 ... '11'=8 *
;     | /                                                                      
;----------------------------------------------------------------------
        ldiu      5,r0                  ; |283| 
        subri     *+fp(3),r0            ; |283| 
        sti       r0,*+fp(3)            ; |283| 
	.line	104
;----------------------------------------------------------------------
; 284 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	105
;----------------------------------------------------------------------
; 285 | UART[id][LCR]   |= num_bits;                                           
; 287 | switch (parity>>8)                                                     
; 289 |         case 'O':               /* ODD PARITY */                       
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      *+fp(1),ar0           ; |285| 
        ash       4,ar0                 ; |285| 
        addi      @CL27,ar0             ; |285| Unsigned
        ldiu      *+fp(3),r0            ; |285| 
        or        *+ar0(3),r0           ; |285| 
        sti       r0,*+ar0(3)           ; |285| 
        bu        L60                   ; |180| 
;*      Branch Occurs to L60            ; |180| 
L54:        
	.line	111
;----------------------------------------------------------------------
; 291 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	112
;----------------------------------------------------------------------
; 292 | UART[id][LCR]           |= 0x08;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |292| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |292| 
        addi      @CL27,ar0             ; |292| Unsigned
        ldiu      8,r0                  ; |292| 
        or        *+ar0(3),r0           ; |292| 
        sti       r0,*+ar0(3)           ; |292| 
	.line	113
;----------------------------------------------------------------------
; 293 | PORTCFG[id].Parity       = 'O'<<8;                                     
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(1),ir0           ; |293| 
        mpyi      359,ir0               ; |293| 
        ldiu      @CL50,ar0             ; |293| 
        ldiu      20224,r0              ; |293| 
        sti       r0,*+ar0(ir0)         ; |293| 
	.line	114
;----------------------------------------------------------------------
; 294 | break;                                                                 
; 296 | case 'E':               /* EVEN PARITY */                              
;----------------------------------------------------------------------
        bu        L68                   ; |294| 
;*      Branch Occurs to L68            ; |294| 
L55:        
	.line	118
;----------------------------------------------------------------------
; 298 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	119
;----------------------------------------------------------------------
; 299 | UART[id][LCR]           |= 0x18;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |299| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |299| 
        addi      @CL27,ar0             ; |299| Unsigned
        ldiu      24,r0                 ; |299| 
        or        *+ar0(3),r0           ; |299| 
        sti       r0,*+ar0(3)           ; |299| 
	.line	120
;----------------------------------------------------------------------
; 300 | PORTCFG[id].Parity       = 'E'<<8;                                     
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(1),ir0           ; |300| 
        mpyi      359,ir0               ; |300| 
        ldiu      @CL50,ar0             ; |300| 
        ldiu      17664,r0              ; |300| 
        sti       r0,*+ar0(ir0)         ; |300| 
	.line	121
;----------------------------------------------------------------------
; 301 | break;                                                                 
; 303 | case '1':               /* FORCED MARK */                              
; 304 | case 'M':               /* FORCED MARK */                              
;----------------------------------------------------------------------
        bu        L68                   ; |301| 
;*      Branch Occurs to L68            ; |301| 
L56:        
	.line	126
;----------------------------------------------------------------------
; 306 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	127
;----------------------------------------------------------------------
; 307 | UART[id][LCR]           |= 0x28;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |307| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |307| 
        addi      @CL27,ar0             ; |307| Unsigned
        ldiu      40,r0                 ; |307| 
        or        *+ar0(3),r0           ; |307| 
        sti       r0,*+ar0(3)           ; |307| 
	.line	128
;----------------------------------------------------------------------
; 308 | PORTCFG[id].Parity       = 'M'<<8;                                     
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(1),ir0           ; |308| 
        mpyi      359,ir0               ; |308| 
        ldiu      @CL50,ar0             ; |308| 
        ldiu      19712,r0              ; |308| 
        sti       r0,*+ar0(ir0)         ; |308| 
	.line	129
;----------------------------------------------------------------------
; 309 | break;                                                                 
; 311 | case '0':               /* FORCED SPACE */                             
; 312 | case 'S':               /* FORCED SPACE */                             
;----------------------------------------------------------------------
        bu        L68                   ; |309| 
;*      Branch Occurs to L68            ; |309| 
L57:        
	.line	134
;----------------------------------------------------------------------
; 314 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	135
;----------------------------------------------------------------------
; 315 | UART[id][LCR]           |= 0x38;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |315| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |315| 
        addi      @CL27,ar0             ; |315| Unsigned
        ldiu      56,r0                 ; |315| 
        or        *+ar0(3),r0           ; |315| 
        sti       r0,*+ar0(3)           ; |315| 
	.line	136
;----------------------------------------------------------------------
; 316 | PORTCFG[id].Parity       = 'S'<<8;                                     
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(1),ir0           ; |316| 
        mpyi      359,ir0               ; |316| 
        ldiu      @CL50,ar0             ; |316| 
        ldiu      21248,r0              ; |316| 
        sti       r0,*+ar0(ir0)         ; |316| 
	.line	137
;----------------------------------------------------------------------
; 317 | break;                                                                 
; 319 | default:                                                               
; 320 | case 'N':               /* NO PARITY */                                
;----------------------------------------------------------------------
        bu        L68                   ; |317| 
;*      Branch Occurs to L68            ; |317| 
L58:        
	.line	142
;----------------------------------------------------------------------
; 322 | n                                 -= 1;                                
;----------------------------------------------------------------------
        ldfu      1.0000000000e+00,f0   ; |322| 
        subrf     *+fp(8),f0            ; |322| 
        stf       f0,*+fp(8)            ; |322| 
	.line	143
;----------------------------------------------------------------------
; 323 | PORTCFG[id].Parity = 'N'<<8;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |323| 
        ldp       @CL50,DP
        mpyi      359,ir0               ; |323| 
        ldiu      @CL50,ar0             ; |323| 
        ldiu      19968,r0              ; |323| 
        sti       r0,*+ar0(ir0)         ; |323| 
	.line	144
;----------------------------------------------------------------------
; 324 | break;                                                                 
;----------------------------------------------------------------------
        bu        L68                   ; |324| 
;*      Branch Occurs to L68            ; |324| 
L60:        
	.line	107
        ldiu      *+fp(4),r0            ; |287| 
        ash       -8,r0                 ; |287| 
        cmpi      48,r0                 ; |287| 
        beq       L57                   ; |287| 
;*      Branch Occurs to L57            ; |287| 
        cmpi      49,r0                 ; |287| 
        beq       L56                   ; |287| 
;*      Branch Occurs to L56            ; |287| 
        cmpi      69,r0                 ; |287| 
        beq       L55                   ; |287| 
;*      Branch Occurs to L55            ; |287| 
        cmpi      77,r0                 ; |287| 
        beq       L56                   ; |287| 
;*      Branch Occurs to L56            ; |287| 
        cmpi      78,r0                 ; |287| 
        beq       L58                   ; |287| 
;*      Branch Occurs to L58            ; |287| 
        cmpi      79,r0                 ; |287| 
        beq       L54                   ; |287| 
;*      Branch Occurs to L54            ; |287| 
        cmpi      83,r0                 ; |287| 
        beq       L57                   ; |287| 
;*      Branch Occurs to L57            ; |287| 
        bu        L58                   ; |287| 
;*      Branch Occurs to L58            ; |287| 
L68:        
	.line	148
;----------------------------------------------------------------------
; 328 | temp = round(UART_CLOCK/(float)baud_rate/16.0, 0);                     
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,ar0             ; |328| 
        ldp       @CL52,DP
        float     *ar0,f0               ; |328| 
        ldflt     @CL52,f1              ; |328| 
        ldfge     0.0000000000e+00,f1   ; |328| 
        ldp       @CL53,DP
        addf3     f0,f1,f0              ; |328| 
        mpyf      @CL53,f0              ; |328| 
        float     *+fp(2),f1            ; |328| 
        call      DIV_F30               ; |328| 
                                        ; |328| Call Occurs
        ldp       @CL55,DP
        ldiu      @CL55,r1              ; |328| 
        ldp       @CL54,DP
        ldiu      0,ar2                 ; |328| 
        ldfu      f0,f2                 ; |328| 
        mpyf      @CL54,f2              ; |328| 
        callu     r1                    ; far call to _round	; |328| 
                                        ; |328| Far Call Occurs
        stf       f0,*+fp(7)            ; |328| 
	.line	149
;----------------------------------------------------------------------
; 329 | div  = temp;                                                           
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |329| 
        fix       f0,r0                 ; |329| 
        fix       f1,r1                 ; |329| 
        negi      r0,r0                 ; |329| 
        ldile     r0,r1                 ; |329| 
        sti       r1,*+fp(6)            ; |329| 
	.line	151
;----------------------------------------------------------------------
; 331 | Set_Baud(id, div);                                                     
;----------------------------------------------------------------------
        ldp       @CL56,DP
        ldiu      @CL56,r0              ; |331| 
        ldiu      *+fp(1),ar2           ; |331| 
        ldiu      r1,r2                 ; |331| 
        callu     r0                    ; far call to _Set_Baud	; |331| 
                                        ; |331| Far Call Occurs
	.line	153
;----------------------------------------------------------------------
; 333 | PORT[id].actual_baud_rate = (float)(UART_CLOCK/div/16.0);              
; 335 | if (FIFOSIZE)                                                          
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,ar0             ; |333| 
        ldp       @CL52,DP
        float     *ar0,f0               ; |333| 
        ldflt     @CL52,f1              ; |333| 
        ldp       @CL53,DP
        ldfge     0.0000000000e+00,f1   ; |333| 
        addf3     f0,f1,f0              ; |333| 
        mpyf      @CL53,f0              ; |333| 
        float     *+fp(6),f1            ; |333| 
        call      DIV_F30               ; |333| 
                                        ; |333| Call Occurs
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |333| 
        ldiu      *+fp(1),ir0           ; |333| 
        ldp       @CL54,DP
        mpyi      71,ir0                ; |333| 
        mpyf      @CL54,f0              ; |333| 
        stf       f0,*+ar0(ir0)         ; |333| 
	.line	157
;----------------------------------------------------------------------
; 337 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	158
;----------------------------------------------------------------------
; 338 | UART[id][FCR] = 0x07;   /* enable FIFOs(16) RxTrig = 1 */              
; 340 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      *+fp(1),ir0           ; |338| 
        ldiu      @CL14,ar0             ; |338| 
        ash       4,ir0                 ; |338| 
        ldiu      7,r0                  ; |338| 
        sti       r0,*+ar0(ir0)         ; |338| 
        bu        L70                   ; |180| 
;*      Branch Occurs to L70            ; |180| 
	.line	162
;----------------------------------------------------------------------
; 342 | NOPS;                                                                  
;----------------------------------------------------------------------
	.line	163
;----------------------------------------------------------------------
; 343 | UART[id][FCR] = 0x00;   /* no FIFOs*/                                  
;----------------------------------------------------------------------
L70:        
	.line	166
;----------------------------------------------------------------------
; 346 | PORT[id].ERROR_COUNT    = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |346| 
        ldp       @CL58,DP
        mpyi      71,ir0                ; |346| 
        ldiu      @CL58,ar0             ; |346| 
        ldiu      0,r0                  ; |346| 
        sti       r0,*+ar0(ir0)         ; |346| 
	.line	167
;----------------------------------------------------------------------
; 347 | PORT[id].WDOG_COUNT     = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      *+fp(1),ir0           ; |347| 
        ldiu      @CL59,ar0             ; |347| 
        mpyi      71,ir0                ; |347| 
        sti       r0,*+ar0(ir0)         ; |347| 
	.line	168
;----------------------------------------------------------------------
; 348 | PORT[id].INV_CMD_COUNT  = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(1),ir0           ; |348| 
        ldiu      @CL60,ar0             ; |348| 
        mpyi      71,ir0                ; |348| 
        sti       r0,*+ar0(ir0)         ; |348| 
	.line	169
;----------------------------------------------------------------------
; 349 | PORT[id].INV_PKT_COUNT  = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      *+fp(1),ir0           ; |349| 
        ldiu      @CL61,ar0             ; |349| 
        mpyi      71,ir0                ; |349| 
        sti       r0,*+ar0(ir0)         ; |349| 
	.line	170
;----------------------------------------------------------------------
; 350 | PORT[id].SUCCESS                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL62,DP
        ldiu      *+fp(1),ir0           ; |350| 
        mpyi      71,ir0                ; |350| 
        ldiu      @CL62,ar0             ; |350| 
        sti       r0,*+ar0(ir0)         ; |350| 
	.line	171
;----------------------------------------------------------------------
; 351 | PORT[id].NUM_RETRIES    = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |351| 
        ldp       @CL63,DP
        mpyi      71,ir0                ; |351| 
        ldiu      @CL63,ar0             ; |351| 
        sti       r0,*+ar0(ir0)         ; |351| 
	.line	173
;----------------------------------------------------------------------
; 353 | Clear_RX(id);                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |353| 
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |353| 
        callu     r0                    ; far call to _Clear_RX	; |353| 
                                        ; |353| Far Call Occurs
	.line	174
;----------------------------------------------------------------------
; 354 | Clear(&TXbuf[id]);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |354| 
        ldp       @CL64,DP
        mpyi      307,ar2               ; |354| 
        addi      @CL64,ar2             ; |354| Unsigned
        ldp       @CL16,DP
        ldiu      @CL16,r0              ; |354| 
        callu     r0                    ; far call to _Clear	; |354| 
                                        ; |354| Far Call Occurs
	.line	176
;----------------------------------------------------------------------
; 356 | PORT[id].TX_complete = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      *+fp(1),ir0           ; |356| 
        ldiu      @CL39,ar0             ; |356| 
        mpyi      71,ir0                ; |356| 
        ldiu      1,r0                  ; |356| 
        sti       r0,*+ar0(ir0)         ; |356| 
	.line	177
;----------------------------------------------------------------------
; 357 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	178
;----------------------------------------------------------------------
; 358 | UART[id][IER]                = 0x01;        /* enable RHR, disable THR
;     | interrupts */                                                          
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |358| 
        ldiu      @CL17,ar0             ; |358| 
        ash       4,ir0                 ; |358| 
        sti       r0,*+ar0(ir0)         ; |358| 
	.line	179
;----------------------------------------------------------------------
; 359 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	180
;----------------------------------------------------------------------
; 360 | UART[id][MCR]           |= 0x08;        /* enable INT */               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |360| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |360| 
        addi      @CL27,ar0             ; |360| Unsigned
        ldiu      8,r0                  ; |360| 
        or        *+ar0(4),r0           ; |360| 
        sti       r0,*+ar0(4)           ; |360| 
	.line	181
;----------------------------------------------------------------------
; 361 | PORT[id].TMR_enabled = FALSE;                                          
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |361| 
        ldiu      *+fp(1),ir0           ; |361| 
        mpyi      71,ir0                ; |361| 
        ldiu      0,r0                  ; |361| 
        sti       r0,*+ar0(ir0)         ; |361| 
	.line	182
;----------------------------------------------------------------------
; 362 | PORTCFG[id].n_bits   = n;                                              
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldfu      *+fp(8),f1            ; |362| 
        ldiu      @CL65,ar0             ; |362| 
        negf      f1,f0                 ; |362| 
        fix       f0,r0                 ; |362| 
        fix       f1,r1                 ; |362| 
        ldiu      *+fp(1),ir0           ; |362| 
        negi      r0,r0                 ; |362| 
        mpyi      359,ir0               ; |362| 
        ldile     r0,r1                 ; |362| 
        sti       r1,*+ar0(ir0)         ; |362| 
	.line	184
;----------------------------------------------------------------------
; 364 | if (PORTCFG[id].NETWDOG.calc_val<0.1)                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |364| 
        ldp       @CL66,DP
        mpyi      359,ar0               ; |364| 
        addi      @CL66,ar0             ; |364| Unsigned
        ldp       @CL67+0,DP
        ldfu      @CL67+0,f0            ; |364| 40b float hi half
        ldfu      *ar0,f1               ; |364| 40b float hi half
        ldp       @CL67+1,DP
        ldiu      *+ar0,r1              ; |364| 40b float lo half
        ldiu      @CL67+1,r0            ; |364| 40b float lo half
        cmpf      f0,f1                 ; |364| 
        bge       L72                   ; |364| 
;*      Branch Occurs to L72            ; |364| 
	.line	185
;----------------------------------------------------------------------
; 365 | VAR_Update(&PORTCFG[id].NETWDOG, DEFAULT_NETWDOG, 0, 0);               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |365| 
        ldiu      @CL70,r0              ; |365| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |365| 
        addi      @CL68,ar2             ; |365| Unsigned
        ldp       @CL69+0,DP
        ldfu      @CL69+0,f2            ; |365| 40b float hi half
        ldp       @CL69+1,DP
        ldiu      0,rc                  ; |365| 
        ldiu      @CL69+1,r2            ; |365| 40b float lo half
        ldiu      0,r3                  ; |365| 
        callu     r0                    ; far call to _VAR_Update	; |365| 
                                        ; |365| Far Call Occurs
L72:        
	.line	187
;----------------------------------------------------------------------
; 367 | if (PORTCFG[id].PREFIX.calc_val<0.0)                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |367| 
        ldp       @CL71,DP
        mpyi      359,ar0               ; |367| 
        addi      @CL71,ar0             ; |367| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f1            ; |367| 40b float hi half
        ldfu      *ar0,f0               ; |367| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      *+ar0,r0              ; |367| 40b float lo half
        ldiu      @CL72+1,r1            ; |367| 40b float lo half
        cmpf      f1,f0                 ; |367| 
        bge       L74                   ; |367| 
;*      Branch Occurs to L74            ; |367| 
	.line	188
;----------------------------------------------------------------------
; 368 | VAR_Update(&PORTCFG[id].PREFIX, DEFAULT_PREFIX, 0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |368| 
        ldiu      @CL70,r0              ; |368| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |368| 
        addi      @CL73,ar2             ; |368| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |368| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |368| 
        ldiu      @CL74+1,r2            ; |368| 40b float lo half
        ldiu      0,r3                  ; |368| 
        callu     r0                    ; far call to _VAR_Update	; |368| 
                                        ; |368| Far Call Occurs
L74:        
	.line	190
;----------------------------------------------------------------------
; 370 | if (PORTCFG[id].SUFFIX.calc_val<0.0)                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |370| 
        ldp       @CL75,DP
        mpyi      359,ar0               ; |370| 
        addi      @CL75,ar0             ; |370| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f1            ; |370| 40b float hi half
        ldfu      *ar0,f0               ; |370| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      *+ar0,r0              ; |370| 40b float lo half
        ldiu      @CL72+1,r1            ; |370| 40b float lo half
        cmpf      f1,f0                 ; |370| 
        bge       L76                   ; |370| 
;*      Branch Occurs to L76            ; |370| 
	.line	191
;----------------------------------------------------------------------
; 371 | VAR_Update(&PORTCFG[id].SUFFIX, DEFAULT_SUFFIX, 0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |371| 
        ldiu      @CL70,r0              ; |371| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |371| 
        addi      @CL76,ar2             ; |371| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |371| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |371| 
        ldiu      @CL72+1,r2            ; |371| 40b float lo half
        ldiu      0,r3                  ; |371| 
        callu     r0                    ; far call to _VAR_Update	; |371| 
                                        ; |371| Far Call Occurs
L76:        
	.line	193
;----------------------------------------------------------------------
; 373 | if (PORTCFG[id].EOT_Delay.calc_val<0.0)                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |373| 
        ldp       @CL77,DP
        mpyi      359,ar0               ; |373| 
        addi      @CL77,ar0             ; |373| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f1            ; |373| 40b float hi half
        ldfu      *ar0,f0               ; |373| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      *+ar0,r0              ; |373| 40b float lo half
        ldiu      @CL72+1,r1            ; |373| 40b float lo half
        cmpf      f1,f0                 ; |373| 
        bge       L78                   ; |373| 
;*      Branch Occurs to L78            ; |373| 
	.line	194
;----------------------------------------------------------------------
; 374 | VAR_Update(&PORTCFG[id].EOT_Delay, DEFAULT_EOT, 0, 0);                 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |374| 
        ldiu      @CL70,r0              ; |374| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |374| 
        addi      @CL78,ar2             ; |374| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |374| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |374| 
        ldiu      @CL79+1,r2            ; |374| 40b float lo half
        ldiu      0,r3                  ; |374| 
        callu     r0                    ; far call to _VAR_Update	; |374| 
                                        ; |374| Far Call Occurs
L78:        
	.line	196
;----------------------------------------------------------------------
; 376 | if (PORTCFG[id].Retry_Time.calc_val<0.0)                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |376| 
        ldp       @CL80,DP
        mpyi      359,ar0               ; |376| 
        addi      @CL80,ar0             ; |376| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f1            ; |376| 40b float hi half
        ldfu      *ar0,f0               ; |376| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      *+ar0,r0              ; |376| 40b float lo half
        ldiu      @CL72+1,r1            ; |376| 40b float lo half
        cmpf      f1,f0                 ; |376| 
        bge       L80                   ; |376| 
;*      Branch Occurs to L80            ; |376| 
	.line	197
;----------------------------------------------------------------------
; 377 | VAR_Update(&PORTCFG[id].Retry_Time, 0.500, 0, 0);                      
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(1),ar2           ; |377| 
        ldiu      @CL70,r0              ; |377| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |377| 
        addi      @CL81,ar2             ; |377| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |377| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      0,rc                  ; |377| 
        ldiu      @CL82+1,r2            ; |377| 40b float lo half
        ldiu      0,r3                  ; |377| 
        callu     r0                    ; far call to _VAR_Update	; |377| 
                                        ; |377| Far Call Occurs
L80:        
	.line	199
;----------------------------------------------------------------------
; 379 | if (PORTCFG[id].poll_time<100)                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |379| 
        ldp       @CL83,DP
        mpyi      359,ir0               ; |379| 
        ldiu      @CL83,ar0             ; |379| 
        ldiu      *+ar0(ir0),r0         ; |379| 
        cmpi      100,r0                ; |379| 
        bge       L82                   ; |379| 
;*      Branch Occurs to L82            ; |379| 
	.line	200
;----------------------------------------------------------------------
; 380 | PORTCFG[id].poll_time = 100;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |380| 
        ldp       @CL83,DP
        mpyi      359,ir0               ; |380| 
        ldiu      @CL83,ar0             ; |380| 
        ldiu      100,r0                ; |380| 
        sti       r0,*+ar0(ir0)         ; |380| 
L82:        
	.line	202
;----------------------------------------------------------------------
; 382 | if (PORTCFG[id].N_retry<0)                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |382| 
        ldp       @CL84,DP
        mpyi      359,ir0               ; |382| 
        ldiu      @CL84,ar0             ; |382| 
        ldiu      *+ar0(ir0),r0         ; |382| 
        cmpi      0,r0                  ; |382| 
        bge       L84                   ; |382| 
;*      Branch Occurs to L84            ; |382| 
	.line	203
;----------------------------------------------------------------------
; 383 | PORTCFG[id].N_retry = 3;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |383| 
        ldp       @CL84,DP
        mpyi      359,ir0               ; |383| 
        ldiu      @CL84,ar0             ; |383| 
        ldiu      3,r0                  ; |383| 
        sti       r0,*+ar0(ir0)         ; |383| 
L84:        
	.line	206
;----------------------------------------------------------------------
; 386 | temp                                            = ceil(n*PORTCFG[id].NE
;     | TWDOG.calc_val/PORT[id].actual_baud_rate/TIME1);                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |386| 
        ldp       @CL66,DP
        ldfu      *+fp(8),f0            ; |386| 
        ldiu      255,r1                ; |386| 
        mpyi      359,ar0               ; |386| 
        addi      @CL66,ar0             ; |386| Unsigned
        andn      r1,f0                 ; |386| Bit mask for F32/F40 conversion
        ldfu      *ar0,f1               ; |386| 40b float hi half
        ldiu      *+ar0,r1              ; |386| 40b float lo half
        call      MPY_LD                ; |386| 
                                        ; |386| Call Occurs
        ldp       @CL57,DP
        ldiu      *+fp(1),ir0           ; |386| 
        ldiu      @CL57,ar0             ; |386| 
        mpyi      71,ir0                ; |386| 
        ldiu      255,r2                ; |386| 
        ldfu      *+ar0(ir0),f1         ; |386| 
        andn      r2,f1                 ; |386| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |386| 
                                        ; |386| Call Occurs
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |386| 
        ldfu      *ar0,f1               ; |386| 
        ldiu      255,r2                ; |386| 
        andn      r2,f1                 ; |386| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |386| 
                                        ; |386| Call Occurs
        ldp       @CL86,DP
        ldiu      @CL86,r1              ; |386| 
        rnd       f0,f2                 ; |386| Demote to low precision
        callu     r1                    ; far call to _ceil	; |386| 
                                        ; |386| Far Call Occurs
        stf       f0,*+fp(7)            ; |386| 
	.line	207
;----------------------------------------------------------------------
; 387 | PORT[id].TMR_Network_WDOG       = (int)temp;                           
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |387| 
        fix       f1,r1                 ; |387| 
        fix       f0,r0                 ; |387| 
        ldp       @CL32,DP
        negi      r0,r0                 ; |387| 
        ldiu      *+fp(1),ir0           ; |387| 
        ldiu      @CL32,ar0             ; |387| 
        mpyi      71,ir0                ; |387| 
        ldile     r0,r1                 ; |387| 
        sti       r1,*+ar0(ir0)         ; |387| 
	.line	208
;----------------------------------------------------------------------
; 388 | temp                                                = ceil(n*PORTCFG[id
;     | ].EOT_Delay.calc_val/PORT[id].actual_baud_rate/TIME1);                 
;----------------------------------------------------------------------
        ldiu      255,r1                ; |388| 
        ldiu      *+fp(1),ar0           ; |388| 
        ldp       @CL77,DP
        mpyi      359,ar0               ; |388| 
        ldfu      *+fp(8),f0            ; |388| 
        addi      @CL77,ar0             ; |388| Unsigned
        andn      r1,f0                 ; |388| Bit mask for F32/F40 conversion
        ldfu      *ar0,f1               ; |388| 40b float hi half
        ldiu      *+ar0,r1              ; |388| 40b float lo half
        call      MPY_LD                ; |388| 
                                        ; |388| Call Occurs
        ldiu      *+fp(1),ir0           ; |388| 
        ldp       @CL57,DP
        mpyi      71,ir0                ; |388| 
        ldiu      @CL57,ar0             ; |388| 
        ldiu      255,r2                ; |388| 
        ldfu      *+ar0(ir0),f1         ; |388| 
        andn      r2,f1                 ; |388| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |388| 
                                        ; |388| Call Occurs
        ldp       @CL85,DP
        ldiu      255,r2                ; |388| 
        ldiu      @CL85,ar0             ; |388| 
        ldfu      *ar0,f1               ; |388| 
        andn      r2,f1                 ; |388| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |388| 
                                        ; |388| Call Occurs
        ldp       @CL86,DP
        ldiu      @CL86,r1              ; |388| 
        rnd       f0,f2                 ; |388| Demote to low precision
        callu     r1                    ; far call to _ceil	; |388| 
                                        ; |388| Far Call Occurs
        stf       f0,*+fp(7)            ; |388| 
	.line	209
;----------------------------------------------------------------------
; 389 | PORT[id].TMR_EOT_Delay          = (int)temp;                           
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |389| 
        fix       f0,r0                 ; |389| 
        fix       f1,r1                 ; |389| 
        ldiu      *+fp(1),ir0           ; |389| 
        negi      r0,r0                 ; |389| 
        ldp       @CL87,DP
        mpyi      71,ir0                ; |389| 
        ldiu      @CL87,ar0             ; |389| 
        ldile     r0,r1                 ; |389| 
        sti       r1,*+ar0(ir0)         ; |389| 
	.line	210
;----------------------------------------------------------------------
; 390 | temp                                                = ceil(n*PORTCFG[id
;     | ].PREFIX.calc_val/PORT[id].actual_baud_rate/TIME1);                    
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      255,r1                ; |390| 
        ldiu      *+fp(1),ar0           ; |390| 
        ldfu      *+fp(8),f0            ; |390| 
        mpyi      359,ar0               ; |390| 
        addi      @CL71,ar0             ; |390| Unsigned
        andn      r1,f0                 ; |390| Bit mask for F32/F40 conversion
        ldfu      *ar0,f1               ; |390| 40b float hi half
        ldiu      *+ar0,r1              ; |390| 40b float lo half
        call      MPY_LD                ; |390| 
                                        ; |390| Call Occurs
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |390| 
        ldiu      255,r2                ; |390| 
        ldiu      *+fp(1),ir0           ; |390| 
        mpyi      71,ir0                ; |390| 
        ldfu      *+ar0(ir0),f1         ; |390| 
        andn      r2,f1                 ; |390| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |390| 
                                        ; |390| Call Occurs
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |390| 
        ldiu      255,r2                ; |390| 
        ldfu      *ar0,f1               ; |390| 
        andn      r2,f1                 ; |390| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |390| 
                                        ; |390| Call Occurs
        ldp       @CL86,DP
        rnd       f0,f2                 ; |390| Demote to low precision
        ldiu      @CL86,r1              ; |390| 
        callu     r1                    ; far call to _ceil	; |390| 
                                        ; |390| Far Call Occurs
        stf       f0,*+fp(7)            ; |390| 
	.line	211
;----------------------------------------------------------------------
; 391 | PORT[id].TMR_Prefix_Delay       = (int)temp;                           
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      *+fp(1),ir0           ; |391| 
        ldfu      f0,f1                 ; |391| 
        ldiu      @CL88,ar0             ; |391| 
        mpyi      71,ir0                ; |391| 
        negf      f1,f0                 ; |391| 
        fix       f0,r0                 ; |391| 
        fix       f1,r1                 ; |391| 
        negi      r0,r0                 ; |391| 
        ldile     r0,r1                 ; |391| 
        sti       r1,*+ar0(ir0)         ; |391| 
	.line	212
;----------------------------------------------------------------------
; 392 | temp                                                = ceil(n*PORTCFG[id
;     | ].SUFFIX.calc_val/PORT[id].actual_baud_rate/TIME1);                    
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      *+fp(1),ar0           ; |392| 
        mpyi      359,ar0               ; |392| 
        ldfu      *+fp(8),f0            ; |392| 
        ldiu      255,r1                ; |392| 
        addi      @CL75,ar0             ; |392| Unsigned
        andn      r1,f0                 ; |392| Bit mask for F32/F40 conversion
        ldfu      *ar0,f1               ; |392| 40b float hi half
        ldiu      *+ar0,r1              ; |392| 40b float lo half
        call      MPY_LD                ; |392| 
                                        ; |392| Call Occurs
        ldp       @CL57,DP
        ldiu      @CL57,ar0             ; |392| 
        ldiu      *+fp(1),ir0           ; |392| 
        ldiu      255,r2                ; |392| 
        mpyi      71,ir0                ; |392| 
        ldfu      *+ar0(ir0),f1         ; |392| 
        andn      r2,f1                 ; |392| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |392| 
                                        ; |392| Call Occurs
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |392| 
        ldiu      255,r2                ; |392| 
        ldfu      *ar0,f1               ; |392| 
        andn      r2,f1                 ; |392| Bit mask for F32/F40 conversion
        call      DIV_LD                ; |392| 
                                        ; |392| Call Occurs
        ldp       @CL86,DP
        ldiu      @CL86,r1              ; |392| 
        rnd       f0,f2                 ; |392| Demote to low precision
        callu     r1                    ; far call to _ceil	; |392| 
                                        ; |392| Far Call Occurs
        stf       f0,*+fp(7)            ; |392| 
	.line	213
;----------------------------------------------------------------------
; 393 | PORT[id].TMR_Suffix_Delay       = (int)temp;                           
;----------------------------------------------------------------------
        ldfu      f0,f1
        negf      f1,f0                 ; |393| 
        ldiu      *+fp(1),ir0           ; |393| 
        fix       f1,r1                 ; |393| 
        ldp       @CL89,DP
        fix       f0,r0                 ; |393| 
        mpyi      71,ir0                ; |393| 
        negi      r0,r0                 ; |393| 
        ldiu      @CL89,ar0             ; |393| 
        ldile     r0,r1                 ; |393| 
        sti       r1,*+ar0(ir0)         ; |393| 
	.line	214
;----------------------------------------------------------------------
; 394 | temp                                                = ceil(n/PORT[id].a
;     | ctual_baud_rate/TIME1);                                                
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      *+fp(1),ir0           ; |394| 
        mpyi      71,ir0                ; |394| 
        ldiu      @CL57,ar0             ; |394| 
        ldfu      *+ar0(ir0),f1         ; |394| 
        ldfu      *+fp(8),f0            ; |394| 
        call      DIV_F30               ; |394| 
                                        ; |394| Call Occurs
        ldp       @CL85,DP
        ldiu      @CL85,ar0             ; |394| 
        ldfu      *ar0,f1               ; |394| 
        call      DIV_F30               ; |394| 
                                        ; |394| Call Occurs
        ldp       @CL86,DP
        ldiu      @CL86,r1              ; |394| 
        ldfu      f0,f2                 ; |394| 
        callu     r1                    ; far call to _ceil	; |394| 
                                        ; |394| Far Call Occurs
        stf       f0,*+fp(7)            ; |394| 
	.line	215
;----------------------------------------------------------------------
; 395 | PORT[id].TMR_Char                       = (int)temp;                   
;----------------------------------------------------------------------
        ldp       @CL31,DP
        negf      f0,f1                 ; |395| 
        ldiu      @CL31,ar0             ; |395| 
        fix       f1,r1                 ; |395| 
        fix       f0,r0                 ; |395| 
        ldiu      *+fp(1),ir0           ; |395| 
        negi      r1,r1                 ; |395| 
        mpyi      71,ir0                ; |395| 
        ldile     r1,r0                 ; |395| 
        sti       r0,*+ar0(ir0)         ; |395| 
	.line	216
;----------------------------------------------------------------------
; 396 | PORT[id].IGNORE_RX                  = FALSE;                           
;----------------------------------------------------------------------
        ldp       @CL90,DP
        ldiu      @CL90,ar0             ; |396| 
        ldiu      *+fp(1),ir0           ; |396| 
        mpyi      71,ir0                ; |396| 
        ldiu      0,r0                  ; |396| 
        sti       r0,*+ar0(ir0)         ; |396| 
	.line	217
;----------------------------------------------------------------------
; 397 | PORT[id].BUSY                           = FALSE;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |397| 
        ldp       @CL91,DP
        mpyi      71,ir0                ; |397| 
        ldiu      @CL91,ar0             ; |397| 
        sti       r0,*+ar0(ir0)         ; |397| 
	.line	218
;----------------------------------------------------------------------
; 398 | PORT[id].broadcast                      = FALSE;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |398| 
        ldp       @CL92,DP
        mpyi      71,ir0                ; |398| 
        ldiu      @CL92,ar0             ; |398| 
        sti       r0,*+ar0(ir0)         ; |398| 
	.line	219
;----------------------------------------------------------------------
; 399 | PORT[id].FLAG1                          = FALSE;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |399| 
        ldp       @CL18,DP
        mpyi      71,ir0                ; |399| 
        ldiu      @CL18,ar0             ; |399| 
        sti       r0,*+ar0(ir0)         ; |399| 
	.line	220
;----------------------------------------------------------------------
; 400 | PORT[id].FLAG2                          = FALSE;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |400| 
        ldp       @CL19,DP
        mpyi      71,ir0                ; |400| 
        ldiu      @CL19,ar0             ; |400| 
        sti       r0,*+ar0(ir0)         ; |400| 
	.line	221
;----------------------------------------------------------------------
; 401 | PORT[id].FLAG3                          = FALSE;                       
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar0             ; |401| 
        ldiu      *+fp(1),ir0           ; |401| 
        mpyi      71,ir0                ; |401| 
        sti       r0,*+ar0(ir0)         ; |401| 
	.line	222
;----------------------------------------------------------------------
; 402 | PORT[id].func                           = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |402| 
        ldp       @CL93,DP
        mpyi      71,ir0                ; |402| 
        ldiu      @CL93,ar0             ; |402| 
        sti       r0,*+ar0(ir0)         ; |402| 
	.line	223
;----------------------------------------------------------------------
; 403 | PORT[id].i                                      = 0;                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      *+fp(1),ir0           ; |403| 
        ldiu      @CL33,ar0             ; |403| 
        mpyi      71,ir0                ; |403| 
        sti       r0,*+ar0(ir0)         ; |403| 
	.line	224
;----------------------------------------------------------------------
; 404 | PORT[id].i_main                         = 0;                           
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |404| 
        ldiu      *+fp(1),ir0           ; |404| 
        mpyi      71,ir0                ; |404| 
        sti       r0,*+ar0(ir0)         ; |404| 
	.line	225
;----------------------------------------------------------------------
; 405 | PORT[id].STAT                           = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |405| 
        ldp       @CL13,DP
        mpyi      71,ir0                ; |405| 
        ldiu      @CL13,ar0             ; |405| 
        sti       r0,*+ar0(ir0)         ; |405| 
	.line	226
;----------------------------------------------------------------------
; 406 | PORT[id].DAT                            = 0;                           
;----------------------------------------------------------------------
        ldp       @CL94,DP
        ldiu      *+fp(1),ir0           ; |406| 
        ldiu      @CL94,ar0             ; |406| 
        mpyi      71,ir0                ; |406| 
        sti       r0,*+ar0(ir0)         ; |406| 
	.line	227
;----------------------------------------------------------------------
; 407 | PORT[id].pvector                        = NULL_PTR;                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |407| 
        ldp       @CL35,DP
        mpyi      71,ir0                ; |407| 
        ldiu      @CL35,ar0             ; |407| 
        sti       r0,*+ar0(ir0)         ; |407| 
	.line	228
;----------------------------------------------------------------------
; 408 | PORT[id].pvector_main           = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |408| 
        ldiu      *+fp(1),ir0           ; |408| 
        mpyi      71,ir0                ; |408| 
        sti       r0,*+ar0(ir0)         ; |408| 
	.line	229
;----------------------------------------------------------------------
; 409 | PORT[id].tvector                        = NULL_PTR;                    
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |409| 
        ldiu      *+fp(1),ir0           ; |409| 
        mpyi      71,ir0                ; |409| 
        sti       r0,*+ar0(ir0)         ; |409| 
	.line	230
;----------------------------------------------------------------------
; 410 | PORT[id].tvector_main           = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      *+fp(1),ir0           ; |410| 
        ldiu      @CL38,ar0             ; |410| 
        mpyi      71,ir0                ; |410| 
        sti       r0,*+ar0(ir0)         ; |410| 
	.line	231
;----------------------------------------------------------------------
; 411 | PORT[id].fvector                        = NULL_PTR;                    
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |411| 
        ldiu      @CL95,ar0             ; |411| 
        mpyi      71,ir0                ; |411| 
        sti       r0,*+ar0(ir0)         ; |411| 
	.line	232
;----------------------------------------------------------------------
; 412 | PORT[id].nr                             = 0;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |412| 
        ldp       @CL96,DP
        mpyi      71,ir0                ; |412| 
        ldiu      @CL96,ar0             ; |412| 
        sti       r0,*+ar0(ir0)         ; |412| 
	.line	233
;----------------------------------------------------------------------
; 413 | ENABLE_INT0;                                                           
;----------------------------------------------------------------------
	or		0001h, IE
	.line	234
;----------------------------------------------------------------------
; 414 | ENABLE_EXTINT0;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL45,DP
        ldiu      @CL45,ar0             ; |414| 
        ldiu      1,r0                  ; |414| 
        or3       r0,*ar0,r0            ; |414| 
        sti       r0,*ar0               ; |414| 
	pop		ST			
	.line	235
;----------------------------------------------------------------------
; 415 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L86:        
	.line	236
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |416| 
        ldiu      *fp,fp                ; |416| 
                                        ; Unallocate the Frame
        subi      11,sp                 ; |416| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	416,000000000h,9


	.sect	 "initialization"

	.global	_Set_Baud
	.sym	_Set_Baud,_Set_Baud,36,2,0
	.func	431
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
; 431 | int Set_Baud(int id, int div)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 433 | unsigned char temp1; /* temporary variable */                          
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |432| 
        sti       ar2,*+fp(1)           ; |432| 
	.line	5
;----------------------------------------------------------------------
; 435 | if (div>65535)                                                         
;----------------------------------------------------------------------
        ldp       @CL97,DP
        ldiu      r2,r0
        cmpi      @CL97,r0              ; |435| 
        ble       L90                   ; |435| 
;*      Branch Occurs to L90            ; |435| 
	.line	6
;----------------------------------------------------------------------
; 436 | return UART_ERROR_BAUD;                                                
;----------------------------------------------------------------------
        bud       L93                   ; |436| 
	nop
	nop
        ldiu      -14,r0                ; |436| 
;*      Branch Occurs to L93            ; |436| 
L90:        
	.line	8
;----------------------------------------------------------------------
; 438 | if (div<=0)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |438| 
        cmpi      0,r0                  ; |438| 
        bgt       L92                   ; |438| 
;*      Branch Occurs to L92            ; |438| 
	.line	9
;----------------------------------------------------------------------
; 439 | return UART_ERROR_BAUD;                                                
;----------------------------------------------------------------------
        bud       L93                   ; |439| 
	nop
	nop
        ldiu      -14,r0                ; |439| 
;*      Branch Occurs to L93            ; |439| 
L92:        
	.line	11
;----------------------------------------------------------------------
; 441 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	12
;----------------------------------------------------------------------
; 442 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	13
;----------------------------------------------------------------------
; 443 | temp1                   = UART[id][LCR];                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |443| 
        ldp       @CL47,DP
        ash       4,ir0                 ; |443| 
        ldiu      @CL47,ar0             ; |443| 
        ldiu      *+ar0(ir0),r0         ; |443| 
        sti       r0,*+fp(3)            ; |443| 
	.line	14
;----------------------------------------------------------------------
; 444 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	15
;----------------------------------------------------------------------
; 445 | UART[id][LCR]   = 0x80;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |445| 
        ldiu      @CL47,ar0             ; |445| 
        ash       4,ir0                 ; |445| 
        ldiu      128,r0                ; |445| 
        sti       r0,*+ar0(ir0)         ; |445| 
	.line	16
;----------------------------------------------------------------------
; 446 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	17
;----------------------------------------------------------------------
; 447 | UART[id][DLL]   = (unsigned char)div;                                  
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      *+fp(1),ir0           ; |447| 
        ldiu      @CL27,ar0             ; |447| 
        ash       4,ir0                 ; |447| 
        ldiu      *+fp(2),r0            ; |447| 
        sti       r0,*+ar0(ir0)         ; |447| 
	.line	18
;----------------------------------------------------------------------
; 448 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	19
;----------------------------------------------------------------------
; 449 | UART[id][DLM]   = (unsigned char)(div>>8);                             
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |449| 
        ldiu      @CL17,ar0             ; |449| 
        ldiu      *+fp(2),r0            ; |449| 
        ash       4,ir0                 ; |449| 
        ash       -8,r0                 ; |449| 
        sti       r0,*+ar0(ir0)         ; |449| 
	.line	20
;----------------------------------------------------------------------
; 450 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	21
;----------------------------------------------------------------------
; 451 | UART[id][LCR]   = temp1;                                               
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      *+fp(1),ir0           ; |451| 
        ash       4,ir0                 ; |451| 
        ldiu      @CL47,ar0             ; |451| 
        ldiu      *+fp(3),r0            ; |451| 
        sti       r0,*+ar0(ir0)         ; |451| 
	.line	22
;----------------------------------------------------------------------
; 452 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
L93:        
	.line	23
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |453| 
        ldiu      *fp,fp                ; |453| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |453| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	453,000000000h,3


	.sect	 "interrupt_routines"

	.global	_Process_UINT
	.sym	_Process_UINT,_Process_UINT,32,2,0
	.func	467
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
; 467 | void Process_UINT(int id)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 469 | int i;                                                                 
; 470 | int j;                                                                 
; 471 | unsigned int MODEMstatus;                                              
; 472 | unsigned int LINEstatus;                                               
; 473 | unsigned int INTstatus;                                                
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |468| 
	.line	9
;----------------------------------------------------------------------
; 475 | if (SA && ((id<0) || (id>=2)))          /* SA ports 0, 1 allowed */    
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |475| 
        ldiu      *ar0,r0               ; |475| 
        cmpi      0,r0                  ; |475| 
        beq       L100                  ; |475| 
;*      Branch Occurs to L100           ; |475| 
        ldiu      ar2,r0
        cmpi      0,r0                  ; |475| 
        blt       L148                  ; |475| 
;*      Branch Occurs to L148           ; |475| 
        cmpi      2,r0                  ; |475| 
        blt       L100                  ; |475| 
;*      Branch Occurs to L100           ; |475| 
        bu        L148                  ; |475| 
;*      Branch Occurs to L148           ; |475| 
	.line	10
;----------------------------------------------------------------------
; 476 | return;                                                                
;----------------------------------------------------------------------
L100:        
	.line	11
;----------------------------------------------------------------------
; 477 | else if ((id<0) || (id>=UART_MAX))  /* EEA maximum UART ports allowed *
;     | /                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |477| 
        cmpi      0,r0                  ; |477| 
        blt       L148                  ; |477| 
;*      Branch Occurs to L148           ; |477| 
        cmpi      8,r0                  ; |477| 
        blt       L104                  ; |477| 
;*      Branch Occurs to L104           ; |477| 
        bu        L148                  ; |477| 
;*      Branch Occurs to L148           ; |477| 
	.line	12
;----------------------------------------------------------------------
; 478 | return;                                                                
;----------------------------------------------------------------------
L104:        
	.line	14
;----------------------------------------------------------------------
; 480 | if (!PORT[id].PRESENT)                          /* return if port is no
;     | t present */                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |480| 
        ldp       @CL41,DP
        mpyi      71,ir0                ; |480| 
        ldiu      @CL41,ar0             ; |480| 
        ldiu      *+ar0(ir0),r0         ; |480| 
        cmpi      0,r0                  ; |480| 
        beq       L148                  ; |480| 
;*      Branch Occurs to L148           ; |480| 
	.line	15
;----------------------------------------------------------------------
; 481 | return;                                                                
; 483 | while(TRUE)                                                            
;----------------------------------------------------------------------
L106:        
	.line	19
;----------------------------------------------------------------------
; 485 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	20
;----------------------------------------------------------------------
; 486 | INTstatus = UART[id][ISR] & 0x0F;                                      
; 488 | switch(INTstatus)                                                      
; 490 |         case 0x02:      /* THR interrupt */                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |486| 
        ldp       @CL14,DP
        ash       4,ir0                 ; |486| 
        ldiu      @CL14,ar0             ; |486| 
        ldiu      15,r0                 ; |486| 
        and3      r0,*+ar0(ir0),r0      ; |486| 
        sti       r0,*+fp(6)            ; |486| 
        bu        L141                  ; |466| 
;*      Branch Occurs to L141           ; |466| 
L107:        
	.line	26
;----------------------------------------------------------------------
; 492 | if      (PORT[id].TX_complete)                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |492| 
        ldp       @CL39,DP
        mpyi      71,ir0                ; |492| 
        ldiu      @CL39,ar0             ; |492| 
        ldiu      *+ar0(ir0),r0         ; |492| 
        cmpi      0,r0                  ; |492| 
        bne       L106                  ; |492| 
;*      Branch Occurs to L106           ; |492| 
	.line	27
;----------------------------------------------------------------------
; 493 | break;                                                                 
;----------------------------------------------------------------------
	.line	29
;----------------------------------------------------------------------
; 495 | if (TXbuf[id].n<=0)                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |495| 
        ldp       @CL98,DP
        mpyi      307,ir0               ; |495| 
        ldiu      @CL98,ar0             ; |495| 
        ldiu      *+ar0(ir0),r0         ; |495| 
        cmpi      0,r0                  ; |495| 
        bgt       L110                  ; |495| 
;*      Branch Occurs to L110           ; |495| 
	.line	31
;----------------------------------------------------------------------
; 497 | TIMER1_COUNTER[id]   = 1;                                              
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      *+fp(1),ir0           ; |497| 
        ldiu      @CL30,ar0             ; |497| 
        ldiu      1,r0                  ; |497| 
        sti       r0,*+ar0(ir0)         ; |497| 
	.line	32
;----------------------------------------------------------------------
; 498 | PORT[id].TMR_enabled = TRUE;    /* enable suffix timer */              
; 500 | else                                                                   
; 502 | if (FIFOSIZE) //if FIFOSIZE != 0                                       
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |498| 
        ldiu      @CL25,ar0             ; |498| 
        mpyi      71,ir0                ; |498| 
        sti       r0,*+ar0(ir0)         ; |498| 
        bu        L106                  ; |466| 
;*      Branch Occurs to L106           ; |466| 
L110:        
	.line	38
;----------------------------------------------------------------------
; 504 | for (i=0;i<FIFOSIZE-1;i++)                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |504| 
        sti       r0,*+fp(2)            ; |504| 
        cmpi      15,r0                 ; |504| 
        bge       L106                  ; |504| 
;*      Branch Occurs to L106           ; |504| 
L111:        
	.line	40
;----------------------------------------------------------------------
; 506 | if (TXbuf[id].n>0)                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |506| 
        ldp       @CL98,DP
        mpyi      307,ir0               ; |506| 
        ldiu      @CL98,ar0             ; |506| 
        ldiu      *+ar0(ir0),r0         ; |506| 
        cmpi      0,r0                  ; |506| 
        ble       L106                  ; |506| 
;*      Branch Occurs to L106           ; |506| 
	.line	42
;----------------------------------------------------------------------
; 508 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	43
;----------------------------------------------------------------------
; 509 | UART[id][THR] = Get(&TXbuf[id]);                                       
; 511 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |509| 
        ldp       @CL64,DP
        mpyi      307,ar2               ; |509| 
        addi      @CL64,ar2             ; |509| Unsigned
        ldp       @CL99,DP
        ldiu      @CL99,r0              ; |509| 
        callu     r0                    ; far call to _Get	; |509| 
                                        ; |509| Far Call Occurs
        ldp       @CL27,DP
        ldiu      *+fp(1),ir0           ; |509| 
        ldiu      @CL27,ar0             ; |509| 
        ash       4,ir0                 ; |509| 
        sti       r0,*+ar0(ir0)         ; |509| 
        bu        L114                  ; |466| 
;*      Branch Occurs to L114           ; |466| 
	.line	46
;----------------------------------------------------------------------
; 512 | break;                                                                 
; 515 | else                                                                   
;----------------------------------------------------------------------
L114:        
	.line	38
        ldiu      1,r0                  ; |504| 
        addi      *+fp(2),r0            ; |504| 
        sti       r0,*+fp(2)            ; |504| 
        cmpi      15,r0                 ; |504| 
        blt       L111                  ; |504| 
;*      Branch Occurs to L111           ; |504| 
        bu        L106                  ; |466| 
;*      Branch Occurs to L106           ; |466| 
	.line	51
;----------------------------------------------------------------------
; 517 | NOPS;                                                                  
;----------------------------------------------------------------------
	.line	52
;----------------------------------------------------------------------
; 518 | UART[id][THR] = Get(&TXbuf[id]);                                       
;----------------------------------------------------------------------
	.line	55
;----------------------------------------------------------------------
; 521 | break;                                                                 
; 523 | case 0x04:  /* RHR interrupt */                                        
; 524 | case 0x0C:      /* RX TIMEOUT interrupt */                             
;----------------------------------------------------------------------
L117:        
	.line	60
;----------------------------------------------------------------------
; 526 | if ((RXbuf[id].locked) || (UART[id][MSR]&0x80==0x00))   /* !Carrier Det
;     | ect */                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |526| 
        ldp       @CL11,DP
        mpyi      307,ir0               ; |526| 
        ldiu      @CL11,ar0             ; |526| 
        ldiu      *+ar0(ir0),r0         ; |526| 
        cmpi      0,r0                  ; |526| 
        bne       L119                  ; |526| 
;*      Branch Occurs to L119           ; |526| 
        ldiu      0,r1                  ; |526| 
        cmpi      0,r1                  ; |526| 
        ldp       @CL100,DP
        beq       L120                  ; |526| 
;*      Branch Occurs to L120           ; |526| 
L119:        
	.line	62
;----------------------------------------------------------------------
; 528 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	63
;----------------------------------------------------------------------
; 529 | UART[id][FCR] = 0x07;
;     |          /* clear FIFOS */                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |529| 
        ldp       @CL14,DP
        ash       4,ir0                 ; |529| 
        ldiu      @CL14,ar0             ; |529| 
        ldiu      7,r0                  ; |529| 
        sti       r0,*+ar0(ir0)         ; |529| 
	.line	65
;----------------------------------------------------------------------
; 531 | break;                                                                 
; 534 | while(TRUE)                                                            
;----------------------------------------------------------------------
        bu        L106                  ; |531| 
;*      Branch Occurs to L106           ; |531| 
L120:        
	.line	70
;----------------------------------------------------------------------
; 536 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	71
;----------------------------------------------------------------------
; 537 | LINEstatus = (UART[id][LSR] & 0xFF);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |537| 
        ldp       @CL101,DP
        ash       4,ir0                 ; |537| 
        ldiu      @CL101,ar0            ; |537| 
        ldiu      255,r0                ; |537| 
        and3      r0,*+ar0(ir0),r0      ; |537| 
        sti       r0,*+fp(5)            ; |537| 
	.line	73
;----------------------------------------------------------------------
; 539 | if (!(LINEstatus & 0x01))               /* no data in receive FIFO */  
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |539| 
        tstb      *+fp(5),r0            ; |539| 
        beq       L106                  ; |539| 
;*      Branch Occurs to L106           ; |539| 
	.line	74
;----------------------------------------------------------------------
; 540 | break;                                                                 
;----------------------------------------------------------------------
	.line	76
;----------------------------------------------------------------------
; 542 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	77
;----------------------------------------------------------------------
; 543 | PORT[id].DAT     = UART[id][RHR] & 0xFF;                               
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      *+fp(1),ir0           ; |543| 
        ldiu      255,r0                ; |543| 
        ldiu      @CL27,ar0             ; |543| 
        ash       4,ir0                 ; |543| 
        ldp       @CL94,DP
        and3      r0,*+ar0(ir0),r0      ; |543| 
        ldiu      @CL94,ar1             ; |543| 
        ldiu      *+fp(1),ir0           ; |543| 
        mpyi      71,ir0                ; |543| 
        sti       r0,*+ar1(ir0)         ; |543| 
	.line	78
;----------------------------------------------------------------------
; 544 | PORT[id].DAT    |= (LINEstatus<<8) | (TIMER1_COUNTER[2]<<16); //???    
;----------------------------------------------------------------------
        ldiu      16,r1                 ; |544| 
        ldp       @CL103,DP
        ldiu      *+fp(1),ar0           ; |544| 
        ldiu      @CL103,ar1            ; |544| 
        mpyi      71,ar0                ; |544| 
        ldp       @CL102,DP
        ldiu      *+fp(5),r0            ; |544| 
        addi      @CL102,ar0            ; |544| Unsigned
        ash3      r1,*ar1,r1            ; |544| 
        ash       8,r0                  ; |544| 
        or        *+ar0(8),r0           ; |544| 
        or3       r0,r1,r0              ; |544| 
        sti       r0,*+ar0(8)           ; |544| 
	.line	79
;----------------------------------------------------------------------
; 545 | PORT[id].STAT       |= LINEstatus & 0x9E;                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |545| 
        mpyi      71,ar0                ; |545| 
        ldiu      158,r0                ; |545| 
        addi      @CL102,ar0            ; |545| Unsigned
        and       *+fp(5),r0            ; |545| 
        or        *+ar0(7),r0           ; |545| 
        sti       r0,*+ar0(7)           ; |545| 
	.line	81
;----------------------------------------------------------------------
; 547 | if (!PORT[id].IGNORE_RX)                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |547| 
        ldp       @CL90,DP
        mpyi      71,ir0                ; |547| 
        ldiu      @CL90,ar0             ; |547| 
        ldiu      *+ar0(ir0),r0         ; |547| 
        cmpi      0,r0                  ; |547| 
        bne       L120                  ; |547| 
;*      Branch Occurs to L120           ; |547| 
	.line	83
;----------------------------------------------------------------------
; 549 | TIMER1_COUNTER[id] = PORT[id].TMR_Network_WDOG + PORT[id].TMR_Char;    
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      *+fp(1),ir0           ; |549| 
        ldiu      @CL31,ar1             ; |549| 
        ldiu      ir0,r0                ; |549| 
        ldp       @CL32,DP
        ldiu      ir0,ir1               ; |549| 
        ldiu      @CL32,ar2             ; |549| 
        mpyi      71,ir1                ; |549| 
        mpyi      71,ir0                ; |549| 
        ldp       @CL30,DP
        addi3     *+ar1(ir0),*+ar2(ir1),r1 ; |549| 
        ldiu      @CL30,ar0             ; |549| 
        ldiu      r0,ir0                ; |549| 
        sti       r1,*+ar0(ir0)         ; |549| 
	.line	85
;----------------------------------------------------------------------
; 551 | Put(&RXbuf[id], PORT[id].DAT, 1);                                      
;----------------------------------------------------------------------
        ldp       @CL94,DP
        ldiu      @CL94,ar0             ; |551| 
        ldiu      *+fp(1),ar2           ; |551| 
        ldp       @CL104,DP
        ldiu      ar2,ir0               ; |551| 
        ldiu      @CL104,r0             ; |551| 
        mpyi      71,ir0                ; |551| 
        ldp       @CL15,DP
        mpyi      307,ar2               ; |551| 
        ldiu      *+ar0(ir0),r2         ; |551| 
        addi      @CL15,ar2             ; |551| Unsigned
        ldiu      1,r3                  ; |551| 
        callu     r0                    ; far call to _Put	; |551| 
                                        ; |551| Far Call Occurs
	.line	87
;----------------------------------------------------------------------
; 553 | if (LINEstatus & 0x9E)                                                 
;----------------------------------------------------------------------
        ldiu      158,r0                ; |553| 
        tstb      *+fp(5),r0            ; |553| 
        beq       L124                  ; |553| 
;*      Branch Occurs to L124           ; |553| 
	.line	88
;----------------------------------------------------------------------
; 554 | PORT[id].ERROR_COUNT++;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |554| 
        ldp       @CL102,DP
        mpyi      71,ar0                ; |554| 
        addi      @CL102,ar0            ; |554| Unsigned
        ldiu      1,r0                  ; |554| 
        addi      *+ar0(53),r0          ; |554| Unsigned
        sti       r0,*+ar0(53)          ; |554| 
L124:        
	.line	90
;----------------------------------------------------------------------
; 556 | if (RXbuf[id].n>0)                                                     
; 558 |             switch(id)                                                 
; 560 |                     case 0:                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |556| 
        ldp       @CL105,DP
        mpyi      307,ir0               ; |556| 
        ldiu      @CL105,ar0            ; |556| 
        ldiu      *+ar0(ir0),r0         ; |556| 
        cmpi      0,r0                  ; |556| 
        ble       L120                  ; |556| 
;*      Branch Occurs to L120           ; |556| 
        bu        L135                  ; |466| 
;*      Branch Occurs to L135           ; |466| 
L126:        
	.line	96
;----------------------------------------------------------------------
; 562 | vect_p0 = PORT[0].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar1             ; |562| 
        ldp       @CL106,DP
        ldiu      @CL106,ar0            ; |562| 
        ldiu      *ar1,r0               ; |562| 
        sti       r0,*ar0               ; |562| 
	.line	98
;----------------------------------------------------------------------
; 564 | asm("           .global _vect_p0  ");                                  
;----------------------------------------------------------------------
		.global _vect_p0  
	.line	99
;----------------------------------------------------------------------
; 565 | PUSH_ALL;                                                              
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
; 566 | asm("   ldi             0, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		0, AR2 		  
	.line	101
;----------------------------------------------------------------------
; 567 | asm("       ldp             _vect_p0      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p0      
	.line	102
;----------------------------------------------------------------------
; 568 | asm("       ldi             @_vect_p0, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p0, R0 
	.line	103
;----------------------------------------------------------------------
; 569 | asm("       callnz  R0                        ");   /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	  
	.line	104
;----------------------------------------------------------------------
; 570 | POP_ALL;                                                               
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
; 572 | break;                                                                 
; 574 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |572| 
;*      Branch Occurs to L120           ; |572| 
L127:        
	.line	110
;----------------------------------------------------------------------
; 576 | vect_p1 = PORT[1].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL108,DP
        ldiu      @CL108,ar1            ; |576| 
        ldp       @CL107,DP
        ldiu      @CL107,ar0            ; |576| 
        ldiu      *ar1,r0               ; |576| 
        sti       r0,*ar0               ; |576| 
	.line	112
;----------------------------------------------------------------------
; 578 | asm("           .global _vect_p1  ");                                  
;----------------------------------------------------------------------
		.global _vect_p1  
	.line	113
;----------------------------------------------------------------------
; 579 | PUSH_ALL;                                                              
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
; 580 | asm("   ldi             1, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		1, AR2 		  
	.line	115
;----------------------------------------------------------------------
; 581 | asm("       ldp             _vect_p1      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p1      
	.line	116
;----------------------------------------------------------------------
; 582 | asm("       ldi             @_vect_p1, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p1, R0 
	.line	117
;----------------------------------------------------------------------
; 583 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	118
;----------------------------------------------------------------------
; 584 | POP_ALL;                                                               
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
; 586 | break;                                                                 
; 588 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |586| 
;*      Branch Occurs to L120           ; |586| 
L128:        
	.line	124
;----------------------------------------------------------------------
; 590 | vect_p2 = PORT[2].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL110,DP
        ldiu      @CL110,ar1            ; |590| 
        ldp       @CL109,DP
        ldiu      @CL109,ar0            ; |590| 
        ldiu      *ar1,r0               ; |590| 
        sti       r0,*ar0               ; |590| 
	.line	126
;----------------------------------------------------------------------
; 592 | asm("           .global _vect_p2  ");                                  
;----------------------------------------------------------------------
		.global _vect_p2  
	.line	127
;----------------------------------------------------------------------
; 593 | PUSH_ALL;                                                              
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
; 594 | asm("   ldi             2, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		2, AR2 		  
	.line	129
;----------------------------------------------------------------------
; 595 | asm("       ldp             _vect_p2      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p2      
	.line	130
;----------------------------------------------------------------------
; 596 | asm("       ldi             @_vect_p2, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p2, R0 
	.line	131
;----------------------------------------------------------------------
; 597 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	132
;----------------------------------------------------------------------
; 598 | POP_ALL;                                                               
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
; 600 | break;                                                                 
; 602 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |600| 
;*      Branch Occurs to L120           ; |600| 
L129:        
	.line	138
;----------------------------------------------------------------------
; 604 | vect_p3 = PORT[3].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL112,DP
        ldiu      @CL112,ar1            ; |604| 
        ldp       @CL111,DP
        ldiu      @CL111,ar0            ; |604| 
        ldiu      *ar1,r0               ; |604| 
        sti       r0,*ar0               ; |604| 
	.line	140
;----------------------------------------------------------------------
; 606 | asm("           .global _vect_p3  ");                                  
;----------------------------------------------------------------------
		.global _vect_p3  
	.line	141
;----------------------------------------------------------------------
; 607 | PUSH_ALL;                                                              
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
; 608 | asm("   ldi             3, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		3, AR2 		  
	.line	143
;----------------------------------------------------------------------
; 609 | asm("       ldp             _vect_p3      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p3      
	.line	144
;----------------------------------------------------------------------
; 610 | asm("       ldi             @_vect_p3, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p3, R0 
	.line	145
;----------------------------------------------------------------------
; 611 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	146
;----------------------------------------------------------------------
; 612 | POP_ALL;                                                               
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
; 614 | break;                                                                 
; 616 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |614| 
;*      Branch Occurs to L120           ; |614| 
L130:        
	.line	152
;----------------------------------------------------------------------
; 618 | vect_p4 = PORT[4].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL114,DP
        ldiu      @CL114,ar1            ; |618| 
        ldp       @CL113,DP
        ldiu      @CL113,ar0            ; |618| 
        ldiu      *ar1,r0               ; |618| 
        sti       r0,*ar0               ; |618| 
	.line	154
;----------------------------------------------------------------------
; 620 | asm("           .global _vect_p4  ");                                  
;----------------------------------------------------------------------
		.global _vect_p4  
	.line	155
;----------------------------------------------------------------------
; 621 | PUSH_ALL;                                                              
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
; 622 | asm("   ldi             4, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		4, AR2 		  
	.line	157
;----------------------------------------------------------------------
; 623 | asm("       ldp             _vect_p4      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p4      
	.line	158
;----------------------------------------------------------------------
; 624 | asm("       ldi             @_vect_p4, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p4, R0 
	.line	159
;----------------------------------------------------------------------
; 625 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	160
;----------------------------------------------------------------------
; 626 | POP_ALL;                                                               
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
; 628 | break;                                                                 
; 630 | case 5:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |628| 
;*      Branch Occurs to L120           ; |628| 
L131:        
	.line	166
;----------------------------------------------------------------------
; 632 | vect_p5 = PORT[5].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL116,DP
        ldiu      @CL116,ar1            ; |632| 
        ldp       @CL115,DP
        ldiu      @CL115,ar0            ; |632| 
        ldiu      *ar1,r0               ; |632| 
        sti       r0,*ar0               ; |632| 
	.line	168
;----------------------------------------------------------------------
; 634 | asm("           .global _vect_p5  ");                                  
;----------------------------------------------------------------------
		.global _vect_p5  
	.line	169
;----------------------------------------------------------------------
; 635 | PUSH_ALL;                                                              
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
; 636 | asm("   ldi             5, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		5, AR2 		  
	.line	171
;----------------------------------------------------------------------
; 637 | asm("       ldp             _vect_p5      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p5      
	.line	172
;----------------------------------------------------------------------
; 638 | asm("       ldi             @_vect_p5, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p5, R0 
	.line	173
;----------------------------------------------------------------------
; 639 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	174
;----------------------------------------------------------------------
; 640 | POP_ALL;                                                               
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
; 642 | break;                                                                 
; 644 | case 6:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |642| 
;*      Branch Occurs to L120           ; |642| 
L132:        
	.line	180
;----------------------------------------------------------------------
; 646 | vect_p6 = PORT[6].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL118,DP
        ldiu      @CL118,ar1            ; |646| 
        ldp       @CL117,DP
        ldiu      @CL117,ar0            ; |646| 
        ldiu      *ar1,r0               ; |646| 
        sti       r0,*ar0               ; |646| 
	.line	182
;----------------------------------------------------------------------
; 648 | asm("           .global _vect_p6  ");                                  
;----------------------------------------------------------------------
		.global _vect_p6  
	.line	183
;----------------------------------------------------------------------
; 649 | PUSH_ALL;                                                              
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
; 650 | asm("   ldi             6, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		6, AR2 		  
	.line	185
;----------------------------------------------------------------------
; 651 | asm("       ldp             _vect_p6      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p6      
	.line	186
;----------------------------------------------------------------------
; 652 | asm("       ldi             @_vect_p6, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p6, R0 
	.line	187
;----------------------------------------------------------------------
; 653 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	188
;----------------------------------------------------------------------
; 654 | POP_ALL;                                                               
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
; 656 | break;                                                                 
; 658 | case 7:                                                                
;----------------------------------------------------------------------
        bu        L120                  ; |656| 
;*      Branch Occurs to L120           ; |656| 
L133:        
	.line	194
;----------------------------------------------------------------------
; 660 | vect_p7 = PORT[7].pvector;                                             
;----------------------------------------------------------------------
        ldp       @CL120,DP
        ldiu      @CL120,ar1            ; |660| 
        ldp       @CL119,DP
        ldiu      @CL119,ar0            ; |660| 
        ldiu      *ar1,r0               ; |660| 
        sti       r0,*ar0               ; |660| 
	.line	196
;----------------------------------------------------------------------
; 662 | asm("           .global _vect_p7  ");                                  
;----------------------------------------------------------------------
		.global _vect_p7  
	.line	197
;----------------------------------------------------------------------
; 663 | PUSH_ALL;                                                              
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
; 664 | asm("   ldi             7, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		7, AR2 		  
	.line	199
;----------------------------------------------------------------------
; 665 | asm("       ldp             _vect_p7      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p7      
	.line	200
;----------------------------------------------------------------------
; 666 | asm("       ldi             @_vect_p7, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p7, R0 
	.line	201
;----------------------------------------------------------------------
; 667 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	202
;----------------------------------------------------------------------
; 668 | POP_ALL;                                                               
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
; 670 | break;                                                                 
;----------------------------------------------------------------------
        bu        L120                  ; |670| 
;*      Branch Occurs to L120           ; |670| 
L135:        
	.line	92
        ldiu      *+fp(1),ir0           ; |558| 
        cmpi      7,ir0                 ; |558| 
        bhi       L120                  ; |558| 
;*      Branch Occurs to L120           ; |558| 
        ldp       @CL121,DP
        ldiu      @CL121,ar0            ; |558| 
        ldiu      *+ar0(ir0),r0         ; |558| 
        bu        r0                    ; |558| 

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
;*      Branch Occurs to r0             ; |558| 
	.line	209
	.line	211
;----------------------------------------------------------------------
; 677 | break;                                                                 
; 679 | case 0x06:  /* LSR interrupt */                                        
;----------------------------------------------------------------------
L138:        
	.line	215
;----------------------------------------------------------------------
; 681 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	216
;----------------------------------------------------------------------
; 682 | LINEstatus              = (UART[id][LSR] & 0xFF);                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |682| 
        ldp       @CL101,DP
        ash       4,ir0                 ; |682| 
        ldiu      @CL101,ar0            ; |682| 
        ldiu      255,r0                ; |682| 
        and3      r0,*+ar0(ir0),r0      ; |682| 
        sti       r0,*+fp(5)            ; |682| 
	.line	217
;----------------------------------------------------------------------
; 683 | PORT[id].STAT  |= LINEstatus & 0x9E;                                   
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(1),ar0           ; |683| 
        mpyi      71,ar0                ; |683| 
        addi      @CL102,ar0            ; |683| Unsigned
        ldiu      158,r0                ; |683| 
        and       *+fp(5),r0            ; |683| 
        or        *+ar0(7),r0           ; |683| 
        sti       r0,*+ar0(7)           ; |683| 
	.line	219
;----------------------------------------------------------------------
; 685 | break;                                                                 
; 687 | case 0x00:  /* MSR interrupt */                                        
;----------------------------------------------------------------------
        bu        L106                  ; |685| 
;*      Branch Occurs to L106           ; |685| 
L139:        
	.line	223
;----------------------------------------------------------------------
; 689 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	224
;----------------------------------------------------------------------
; 690 | MODEMstatus = UART[id][MSR] & 0xFF;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |690| 
        ldp       @CL100,DP
        ash       4,ir0                 ; |690| 
        ldiu      @CL100,ar0            ; |690| 
        ldiu      255,r0                ; |690| 
        and3      r0,*+ar0(ir0),r0      ; |690| 
        sti       r0,*+fp(4)            ; |690| 
	.line	226
;----------------------------------------------------------------------
; 692 | break;                                                                 
; 694 | default:                                                               
;----------------------------------------------------------------------
        bu        L106                  ; |692| 
;*      Branch Occurs to L106           ; |692| 
	.line	230
;----------------------------------------------------------------------
; 696 | return;                                                                
;----------------------------------------------------------------------
L141:        
	.line	22
        ldiu      *+fp(6),r0            ; |488| 
        cmpi      0,r0                  ; |488| 
        beq       L139                  ; |488| 
;*      Branch Occurs to L139           ; |488| 
        cmpi      2,r0                  ; |488| 
        beq       L107                  ; |488| 
;*      Branch Occurs to L107           ; |488| 
        cmpi      4,r0                  ; |488| 
        beq       L117                  ; |488| 
;*      Branch Occurs to L117           ; |488| 
        cmpi      6,r0                  ; |488| 
        beq       L138                  ; |488| 
;*      Branch Occurs to L138           ; |488| 
        cmpi      12,r0                 ; |488| 
        beq       L117                  ; |488| 
;*      Branch Occurs to L117           ; |488| 
        bu        L148                  ; |488| 
;*      Branch Occurs to L148           ; |488| 
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
	.endfunc	700,000000000h,6


	.sect	 "interrupt_routines"

	.global	_WDOG_P
	.sym	_WDOG_P,_WDOG_P,32,2,0
	.func	715
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
; 715 | void WDOG_P(int id)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |716| 
	.line	3
;----------------------------------------------------------------------
; 717 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 719 | if (!RXbuf[id].locked && PORT[id].TX_complete)                         
;----------------------------------------------------------------------
        ldiu      ar2,ir0               ; |719| 
        ldp       @CL11,DP
        mpyi      307,ir0               ; |719| 
        ldiu      @CL11,ar0             ; |719| 
        ldiu      *+ar0(ir0),r0         ; |719| 
        cmpi      0,r0                  ; |719| 
        bne       L155                  ; |719| 
;*      Branch Occurs to L155           ; |719| 
        ldiu      ar2,ir0
        ldp       @CL39,DP
        mpyi      71,ir0                ; |719| 
        ldiu      @CL39,ar0             ; |719| 
        ldiu      *+ar0(ir0),r0         ; |719| 
        cmpi      0,r0                  ; |719| 
        beq       L155                  ; |719| 
;*      Branch Occurs to L155           ; |719| 
	.line	7
;----------------------------------------------------------------------
; 721 | if (PORT[id].RX_pending)                                               
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldp       @CL12,DP
        mpyi      71,ir0                ; |721| 
        ldiu      @CL12,ar0             ; |721| 
        ldiu      *+ar0(ir0),r0         ; |721| 
        cmpi      0,r0                  ; |721| 
        beq       L154                  ; |721| 
;*      Branch Occurs to L154           ; |721| 
	.line	8
;----------------------------------------------------------------------
; 722 | PORT[id].WDOG_COUNT++;                                                 
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldp       @CL102,DP
        mpyi      71,ar0                ; |722| 
        addi      @CL102,ar0            ; |722| Unsigned
        ldiu      1,r0                  ; |722| 
        addi      *+ar0(54),r0          ; |722| Unsigned
        sti       r0,*+ar0(54)          ; |722| 
L154:        
	.line	10
;----------------------------------------------------------------------
; 724 | RESET_PKT(id);                                                         
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      *+fp(1),ar2           ; |724| 
        ldiu      @CL40,r0              ; |724| 
        callu     r0                    ; far call to _RESET_PKT	; |724| 
                                        ; |724| Far Call Occurs
L155:        
	.line	13
;----------------------------------------------------------------------
; 727 | GIEP;                                                                  
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
	.endfunc	728,000000000h,1


	.sect	 "interrupt_routines"

	.global	_TX_S1
	.sym	_TX_S1,_TX_S1,32,2,0
	.func	742
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
; 742 | void TX_S1(int id)                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 744 | char c; /* not used */                                                 
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |743| 
	.line	5
;----------------------------------------------------------------------
; 746 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 748 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |748| 
        ldiu      *ar0,r0               ; |748| 
        cmpi      0,r0                  ; |748| 
        bne       L166                  ; |748| 
;*      Branch Occurs to L166           ; |748| 
	.line	9
;----------------------------------------------------------------------
; 750 | if (id==4)                                                             
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      4,r0                  ; |750| 
        bne       L161                  ; |750| 
;*      Branch Occurs to L161           ; |750| 
	.line	11
;----------------------------------------------------------------------
; 752 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	12
;----------------------------------------------------------------------
; 753 | UART[id][LCR] |= 0x40;                                                 
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldp       @CL27,DP
        ash       4,ar0                 ; |753| 
        addi      @CL27,ar0             ; |753| Unsigned
        ldiu      64,r0                 ; |753| 
        or        *+ar0(3),r0           ; |753| 
        sti       r0,*+ar0(3)           ; |753| 
L161:        
	.line	15
;----------------------------------------------------------------------
; 756 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	16
;----------------------------------------------------------------------
; 757 | UART[id][MCR] &= 0xFE;                  /* disable TX */               
; 759 | else                                                                   
; 761 | switch (id)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |757| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |757| 
        addi      @CL27,ar0             ; |757| Unsigned
        ldiu      254,r0                ; |757| 
        and       *+ar0(4),r0           ; |757| 
        sti       r0,*+ar0(4)           ; |757| 
        bu        L168                  ; |741| 
;*      Branch Occurs to L168           ; |741| 
L163:        
	.line	22
;----------------------------------------------------------------------
; 763 | case 0: DISABLE_TXA; break;                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |763| 
        ldiu      8,r0                  ; |763| 
        or3       r0,*ar0,r0            ; |763| 
        sti       r0,*ar0               ; |763| 
	pop		ST			
        bu        L168                  ; |763| 
;*      Branch Occurs to L168           ; |763| 
L164:        
	.line	23
;----------------------------------------------------------------------
; 764 | case 1: DISABLE_TXB; break;                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |764| 
        ldiu      1,r0                  ; |764| 
        or3       r0,*ar0,r0            ; |764| 
        sti       r0,*ar0               ; |764| 
	pop		ST			
        bu        L168                  ; |764| 
;*      Branch Occurs to L168           ; |764| 
L166:        
	.line	20
        ldiu      *+fp(1),r0            ; |761| 
        cmpi      0,r0                  ; |761| 
        beq       L163                  ; |761| 
;*      Branch Occurs to L163           ; |761| 
        cmpi      1,r0                  ; |761| 
        beq       L164                  ; |761| 
;*      Branch Occurs to L164           ; |761| 
L168:        
	.line	27
;----------------------------------------------------------------------
; 768 | if (PORT[id].fvector)                                                  
; 770 |         switch(id)                                                     
; 772 |                 case 0:                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |768| 
        ldp       @CL95,DP
        mpyi      71,ir0                ; |768| 
        ldiu      @CL95,ar0             ; |768| 
        ldiu      *+ar0(ir0),r0         ; |768| 
        cmpi      0,r0                  ; |768| 
        beq       L181                  ; |768| 
;*      Branch Occurs to L181           ; |768| 
        bu        L179                  ; |741| 
;*      Branch Occurs to L179           ; |741| 
L170:        
	.line	33
;----------------------------------------------------------------------
; 774 | vect_p0                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |774| 
        ldiu      @CL95,ar1             ; |774| 
        ldp       @CL106,DP
        mpyi      71,ir0                ; |774| 
        ldiu      @CL106,ar0            ; |774| 
        ldiu      *+ar1(ir0),r0         ; |774| 
        sti       r0,*ar0               ; |774| 
	.line	34
;----------------------------------------------------------------------
; 775 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |775| 
        mpyi      71,ir0                ; |775| 
        ldiu      @CL95,ar0             ; |775| 
        ldiu      0,r0                  ; |775| 
        sti       r0,*+ar0(ir0)         ; |775| 
	.line	36
;----------------------------------------------------------------------
; 777 | asm("           .global _vect_p0  ");                                  
;----------------------------------------------------------------------
		.global _vect_p0  
	.line	37
;----------------------------------------------------------------------
; 778 | PUSH_ALL;                                                              
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
; 779 | asm("   ldi             0, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		0, AR2 		  
	.line	39
;----------------------------------------------------------------------
; 780 | asm("       ldp             _vect_p0      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p0      
	.line	40
;----------------------------------------------------------------------
; 781 | asm("       ldi             @_vect_p0, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p0, R0 
	.line	41
;----------------------------------------------------------------------
; 782 | asm("       callnz  R0                        ");   /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	  
	.line	42
;----------------------------------------------------------------------
; 783 | POP_ALL;                                                               
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
; 785 | break;                                                                 
; 787 | case 1:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |785| 
;*      Branch Occurs to L181           ; |785| 
L171:        
	.line	48
;----------------------------------------------------------------------
; 789 | vect_p1                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |789| 
        ldiu      @CL95,ar0             ; |789| 
        ldp       @CL107,DP
        mpyi      71,ir0                ; |789| 
        ldiu      @CL107,ar1            ; |789| 
        ldiu      *+ar0(ir0),r0         ; |789| 
        sti       r0,*ar1               ; |789| 
	.line	49
;----------------------------------------------------------------------
; 790 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |790| 
        ldiu      @CL95,ar0             ; |790| 
        mpyi      71,ir0                ; |790| 
        ldiu      0,r0                  ; |790| 
        sti       r0,*+ar0(ir0)         ; |790| 
	.line	51
;----------------------------------------------------------------------
; 792 | asm("           .global _vect_p1  ");                                  
;----------------------------------------------------------------------
		.global _vect_p1  
	.line	52
;----------------------------------------------------------------------
; 793 | PUSH_ALL;                                                              
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
; 794 | asm("   ldi             1, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		1, AR2 		  
	.line	54
;----------------------------------------------------------------------
; 795 | asm("       ldp             _vect_p1      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p1      
	.line	55
;----------------------------------------------------------------------
; 796 | asm("       ldi             @_vect_p1, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p1, R0 
	.line	56
;----------------------------------------------------------------------
; 797 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	57
;----------------------------------------------------------------------
; 798 | POP_ALL;                                                               
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
; 800 | break;                                                                 
; 802 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |800| 
;*      Branch Occurs to L181           ; |800| 
L172:        
	.line	63
;----------------------------------------------------------------------
; 804 | vect_p2                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |804| 
        ldiu      @CL95,ar1             ; |804| 
        ldp       @CL109,DP
        mpyi      71,ir0                ; |804| 
        ldiu      @CL109,ar0            ; |804| 
        ldiu      *+ar1(ir0),r0         ; |804| 
        sti       r0,*ar0               ; |804| 
	.line	64
;----------------------------------------------------------------------
; 805 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |805| 
        mpyi      71,ir0                ; |805| 
        ldiu      @CL95,ar0             ; |805| 
        ldiu      0,r0                  ; |805| 
        sti       r0,*+ar0(ir0)         ; |805| 
	.line	66
;----------------------------------------------------------------------
; 807 | asm("           .global _vect_p2  ");                                  
;----------------------------------------------------------------------
		.global _vect_p2  
	.line	67
;----------------------------------------------------------------------
; 808 | PUSH_ALL;                                                              
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
; 809 | asm("   ldi             2, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		2, AR2 		  
	.line	69
;----------------------------------------------------------------------
; 810 | asm("       ldp             _vect_p2      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p2      
	.line	70
;----------------------------------------------------------------------
; 811 | asm("       ldi             @_vect_p2, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p2, R0 
	.line	71
;----------------------------------------------------------------------
; 812 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	72
;----------------------------------------------------------------------
; 813 | POP_ALL;                                                               
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
; 815 | break;                                                                 
; 817 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |815| 
;*      Branch Occurs to L181           ; |815| 
L173:        
	.line	78
;----------------------------------------------------------------------
; 819 | vect_p3                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |819| 
        ldiu      @CL95,ar0             ; |819| 
        ldp       @CL111,DP
        mpyi      71,ir0                ; |819| 
        ldiu      @CL111,ar1            ; |819| 
        ldiu      *+ar0(ir0),r0         ; |819| 
        sti       r0,*ar1               ; |819| 
	.line	79
;----------------------------------------------------------------------
; 820 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |820| 
        ldiu      @CL95,ar0             ; |820| 
        mpyi      71,ir0                ; |820| 
        ldiu      0,r0                  ; |820| 
        sti       r0,*+ar0(ir0)         ; |820| 
	.line	81
;----------------------------------------------------------------------
; 822 | asm("           .global _vect_p3  ");                                  
;----------------------------------------------------------------------
		.global _vect_p3  
	.line	82
;----------------------------------------------------------------------
; 823 | PUSH_ALL;                                                              
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
; 824 | asm("   ldi             3, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		3, AR2 		  
	.line	84
;----------------------------------------------------------------------
; 825 | asm("       ldp             _vect_p3      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p3      
	.line	85
;----------------------------------------------------------------------
; 826 | asm("       ldi             @_vect_p3, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p3, R0 
	.line	86
;----------------------------------------------------------------------
; 827 | asm("       callnz  R0                        ");   /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	  
	.line	87
;----------------------------------------------------------------------
; 828 | POP_ALL;                                                               
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
; 830 | break;                                                                 
; 832 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |830| 
;*      Branch Occurs to L181           ; |830| 
L174:        
	.line	93
;----------------------------------------------------------------------
; 834 | vect_p4                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |834| 
        ldiu      @CL95,ar1             ; |834| 
        ldp       @CL113,DP
        mpyi      71,ir0                ; |834| 
        ldiu      @CL113,ar0            ; |834| 
        ldiu      *+ar1(ir0),r0         ; |834| 
        sti       r0,*ar0               ; |834| 
	.line	94
;----------------------------------------------------------------------
; 835 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |835| 
        mpyi      71,ir0                ; |835| 
        ldiu      @CL95,ar0             ; |835| 
        ldiu      0,r0                  ; |835| 
        sti       r0,*+ar0(ir0)         ; |835| 
	.line	96
;----------------------------------------------------------------------
; 837 | asm("           .global _vect_p4  ");                                  
;----------------------------------------------------------------------
		.global _vect_p4  
	.line	97
;----------------------------------------------------------------------
; 838 | PUSH_ALL;                                                              
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
; 839 | asm("   ldi             4, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		4, AR2 		  
	.line	99
;----------------------------------------------------------------------
; 840 | asm("       ldp             _vect_p4      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p4      
	.line	100
;----------------------------------------------------------------------
; 841 | asm("       ldi             @_vect_p4, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p4, R0 
	.line	101
;----------------------------------------------------------------------
; 842 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	102
;----------------------------------------------------------------------
; 843 | POP_ALL;                                                               
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
; 845 | break;                                                                 
; 847 | case 5:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |845| 
;*      Branch Occurs to L181           ; |845| 
L175:        
	.line	108
;----------------------------------------------------------------------
; 849 | vect_p5                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |849| 
        ldiu      @CL95,ar0             ; |849| 
        ldp       @CL115,DP
        mpyi      71,ir0                ; |849| 
        ldiu      @CL115,ar1            ; |849| 
        ldiu      *+ar0(ir0),r0         ; |849| 
        sti       r0,*ar1               ; |849| 
	.line	109
;----------------------------------------------------------------------
; 850 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |850| 
        ldiu      @CL95,ar0             ; |850| 
        mpyi      71,ir0                ; |850| 
        ldiu      0,r0                  ; |850| 
        sti       r0,*+ar0(ir0)         ; |850| 
	.line	111
;----------------------------------------------------------------------
; 852 | asm("           .global _vect_p5  ");                                  
;----------------------------------------------------------------------
		.global _vect_p5  
	.line	112
;----------------------------------------------------------------------
; 853 | PUSH_ALL;                                                              
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
; 854 | asm("   ldi             5, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		5, AR2 		  
	.line	114
;----------------------------------------------------------------------
; 855 | asm("       ldp             _vect_p5      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p5      
	.line	115
;----------------------------------------------------------------------
; 856 | asm("       ldi             @_vect_p5, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p5, R0 
	.line	116
;----------------------------------------------------------------------
; 857 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	117
;----------------------------------------------------------------------
; 858 | POP_ALL;                                                               
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
; 860 | break;                                                                 
; 862 | case 6:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |860| 
;*      Branch Occurs to L181           ; |860| 
L176:        
	.line	123
;----------------------------------------------------------------------
; 864 | vect_p6                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |864| 
        ldiu      @CL95,ar0             ; |864| 
        ldp       @CL117,DP
        mpyi      71,ir0                ; |864| 
        ldiu      @CL117,ar1            ; |864| 
        ldiu      *+ar0(ir0),r0         ; |864| 
        sti       r0,*ar1               ; |864| 
	.line	124
;----------------------------------------------------------------------
; 865 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |865| 
        ldiu      @CL95,ar0             ; |865| 
        mpyi      71,ir0                ; |865| 
        ldiu      0,r0                  ; |865| 
        sti       r0,*+ar0(ir0)         ; |865| 
	.line	126
;----------------------------------------------------------------------
; 867 | asm("           .global _vect_p6  ");                                  
;----------------------------------------------------------------------
		.global _vect_p6  
	.line	127
;----------------------------------------------------------------------
; 868 | PUSH_ALL;                                                              
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
; 869 | asm("   ldi             6, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		6, AR2 		  
	.line	129
;----------------------------------------------------------------------
; 870 | asm("       ldp             _vect_p6      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p6      
	.line	130
;----------------------------------------------------------------------
; 871 | asm("       ldi             @_vect_p6, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p6, R0 
	.line	131
;----------------------------------------------------------------------
; 872 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	132
;----------------------------------------------------------------------
; 873 | POP_ALL;                                                               
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
; 875 | break;                                                                 
; 877 | case 7:                                                                
;----------------------------------------------------------------------
        bu        L181                  ; |875| 
;*      Branch Occurs to L181           ; |875| 
L177:        
	.line	138
;----------------------------------------------------------------------
; 879 | vect_p7                  = PORT[id].fvector;                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |879| 
        ldiu      @CL95,ar0             ; |879| 
        ldp       @CL119,DP
        mpyi      71,ir0                ; |879| 
        ldiu      @CL119,ar1            ; |879| 
        ldiu      *+ar0(ir0),r0         ; |879| 
        sti       r0,*ar1               ; |879| 
	.line	139
;----------------------------------------------------------------------
; 880 | PORT[id].fvector = NULL_PTR;                                           
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      *+fp(1),ir0           ; |880| 
        ldiu      @CL95,ar0             ; |880| 
        mpyi      71,ir0                ; |880| 
        ldiu      0,r0                  ; |880| 
        sti       r0,*+ar0(ir0)         ; |880| 
	.line	141
;----------------------------------------------------------------------
; 882 | asm("           .global _vect_p7  ");                                  
;----------------------------------------------------------------------
		.global _vect_p7  
	.line	142
;----------------------------------------------------------------------
; 883 | PUSH_ALL;                                                              
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
; 884 | asm("   ldi             7, AR2            ");   /* select the port */  
;----------------------------------------------------------------------
	ldi		7, AR2 		  
	.line	144
;----------------------------------------------------------------------
; 885 | asm("       ldp             _vect_p7      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p7      
	.line	145
;----------------------------------------------------------------------
; 886 | asm("       ldi             @_vect_p7, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p7, R0 
	.line	146
;----------------------------------------------------------------------
; 887 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
	.line	147
;----------------------------------------------------------------------
; 888 | POP_ALL;                                                               
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
; 890 | break;                                                                 
;----------------------------------------------------------------------
        bu        L181                  ; |890| 
;*      Branch Occurs to L181           ; |890| 
L179:        
	.line	29
        ldiu      *+fp(1),ir0           ; |770| 
        cmpi      7,ir0                 ; |770| 
        bhi       L181                  ; |770| 
;*      Branch Occurs to L181           ; |770| 
        ldp       @CL122,DP
        ldiu      @CL122,ar0            ; |770| 
        ldiu      *+ar0(ir0),r0         ; |770| 
        bu        r0                    ; |770| 

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
;*      Branch Occurs to r0             ; |770| 
L181:        
	.line	154
;----------------------------------------------------------------------
; 895 | RESET_PKT(id);                                                         
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      *+fp(1),ar2           ; |895| 
        ldiu      @CL40,r0              ; |895| 
        callu     r0                    ; far call to _RESET_PKT	; |895| 
                                        ; |895| Far Call Occurs
	.line	156
;----------------------------------------------------------------------
; 897 | GIEP;                                                                  
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
	.endfunc	898,000000000h,2


	.sect	 "interrupt_routines"

	.global	_TX_S
	.sym	_TX_S,_TX_S,32,2,0
	.func	912
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
; 912 | void TX_S(int id)                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |913| 
	.line	3
;----------------------------------------------------------------------
; 914 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	4
;----------------------------------------------------------------------
; 915 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	6
;----------------------------------------------------------------------
; 917 | if (!(UART[id][LSR] & 0x40))    /* make sure TSR and THR are empty */  
;----------------------------------------------------------------------
        ldiu      ar2,ir0
        ldp       @CL101,DP
        ash       4,ir0                 ; |917| 
        ldiu      @CL101,ar0            ; |917| 
        ldiu      64,r0                 ; |917| 
        tstb3     *+ar0(ir0),r0         ; |917| 
        bne       L186                  ; |917| 
;*      Branch Occurs to L186           ; |917| 
	.line	7
;----------------------------------------------------------------------
; 918 | TIMER1_COUNTER[id] = 1;                                                
; 919 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      ar2,ir0
        ldiu      @CL30,ar0             ; |918| 
        ldiu      1,r0                  ; |918| 
        sti       r0,*+ar0(ir0)         ; |918| 
        bu        L187                  ; |911| 
;*      Branch Occurs to L187           ; |911| 
L186:        
	.line	10
;----------------------------------------------------------------------
; 921 | TIMER1_COUNTER[id]      = PORT[id].TMR_Suffix_Delay;                   
;----------------------------------------------------------------------
        ldp       @CL89,DP
        ldiu      *+fp(1),ir0           ; |921| 
        ldiu      @CL89,ar1             ; |921| 
        ldiu      ir0,ir1               ; |921| 
        ldp       @CL30,DP
        mpyi      71,ir0                ; |921| 
        ldiu      @CL30,ar0             ; |921| 
        ldiu      *+ar1(ir0),r0         ; |921| 
        sti       r0,*+ar0(ir1)         ; |921| 
	.line	11
;----------------------------------------------------------------------
; 922 | PORT[id].tvector        = (int*)TX_S1;                                 
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |922| 
        ldiu      *+fp(1),ir0           ; |922| 
        ldp       @CL123,DP
        mpyi      71,ir0                ; |922| 
        ldiu      @CL123,r0             ; |922| 
        sti       r0,*+ar0(ir0)         ; |922| 
L187:        
	.line	14
;----------------------------------------------------------------------
; 925 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |925| 
        ldp       @CL25,DP
        mpyi      71,ir0                ; |925| 
        ldiu      @CL25,ar0             ; |925| 
        ldiu      1,r0                  ; |925| 
        sti       r0,*+ar0(ir0)         ; |925| 
	.line	15
;----------------------------------------------------------------------
; 926 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	17
;----------------------------------------------------------------------
; 928 | return;                                                                
;----------------------------------------------------------------------
	.line	18
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	929,000000000h,1


	.sect	 "interrupt_routines"

	.global	_TX_P1
	.sym	_TX_P1,_TX_P1,32,2,0
	.func	943
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
; 943 | void TX_P1(int id)                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |944| 
	.line	3
;----------------------------------------------------------------------
; 945 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	4
;----------------------------------------------------------------------
; 946 | PORT[id].tvector = (int*)TX_S;                                         
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      ar2,ir0
        ldiu      @CL37,ar0             ; |946| 
        ldp       @CL124,DP
        mpyi      71,ir0                ; |946| 
        ldiu      @CL124,r0             ; |946| 
        sti       r0,*+ar0(ir0)         ; |946| 
	.line	5
;----------------------------------------------------------------------
; 947 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	6
;----------------------------------------------------------------------
; 948 | UART[id][IER]    = 0x02;        /* enable THR, disable RHR interrupts *
;     | /                                                                      
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      *+fp(1),ir0           ; |948| 
        ldiu      @CL17,ar0             ; |948| 
        ash       4,ir0                 ; |948| 
        ldiu      2,r0                  ; |948| 
        sti       r0,*+ar0(ir0)         ; |948| 
	.line	7
;----------------------------------------------------------------------
; 949 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	8
;----------------------------------------------------------------------
; 950 | UART[id][THR]    = Get(&TXbuf[id]);                                    
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      *+fp(1),ar2           ; |950| 
        mpyi      307,ar2               ; |950| 
        addi      @CL64,ar2             ; |950| Unsigned
        ldp       @CL99,DP
        ldiu      @CL99,r0              ; |950| 
        callu     r0                    ; far call to _Get	; |950| 
                                        ; |950| Far Call Occurs
        ldp       @CL27,DP
        ldiu      *+fp(1),ir0           ; |950| 
        ldiu      @CL27,ar0             ; |950| 
        ash       4,ir0                 ; |950| 
        sti       r0,*+ar0(ir0)         ; |950| 
	.line	9
;----------------------------------------------------------------------
; 951 | GIEP;                                                                  
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
	.endfunc	952,000000000h,1


	.sect	 "interrupt_routines"

	.global	_TX_P
	.sym	_TX_P,_TX_P,32,2,0
	.func	966
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
; 966 | void TX_P(int id)                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |967| 
	.line	3
;----------------------------------------------------------------------
; 968 | _GIEP;                                                                 
; 970 | switch (id)                                                            
; 972 |         case 0:                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        bu        L205                  ; |965| 
;*      Branch Occurs to L205           ; |965| 
L194:        
	.line	9
;----------------------------------------------------------------------
; 974 | if (SA && B202_PORT)                                                   
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |974| 
        ldiu      *ar0,r0               ; |974| 
        cmpi      0,r0                  ; |974| 
        beq       L207                  ; |974| 
;*      Branch Occurs to L207           ; |974| 
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |974| 
        ldiu      32,r0                 ; |974| 
        tstb3     *ar0,r0               ; |974| 
        bne       L207                  ; |974| 
;*      Branch Occurs to L207           ; |974| 
	.line	11
;----------------------------------------------------------------------
; 976 | if (B202_CARRIER)       /* Carrier Detect */                           
;----------------------------------------------------------------------
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |976| 
        ldiu      16,r0                 ; |976| 
        tstb3     *ar0,r0               ; |976| 
        beq       L207                  ; |976| 
;*      Branch Occurs to L207           ; |976| 
	.line	13
;----------------------------------------------------------------------
; 978 | TIMER1_COUNTER[id]       = 1;                                          
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      *+fp(1),ir0           ; |978| 
        ldiu      @CL30,ar0             ; |978| 
        ldiu      1,r0                  ; |978| 
        sti       r0,*+ar0(ir0)         ; |978| 
	.line	14
;----------------------------------------------------------------------
; 979 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |979| 
        ldiu      @CL25,ar0             ; |979| 
        mpyi      71,ir0                ; |979| 
        sti       r0,*+ar0(ir0)         ; |979| 
	.line	15
;----------------------------------------------------------------------
; 980 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	17
;----------------------------------------------------------------------
; 982 | return;                                                                
;----------------------------------------------------------------------
        bu        L216                  ; |982| 
;*      Branch Occurs to L216           ; |982| 
	.line	21
;----------------------------------------------------------------------
; 986 | break;                                                                 
; 988 | case 4:                                                                
; 989 | {// Extended Electronics Analyzer                                      
;----------------------------------------------------------------------
L199:        
	.line	25
;----------------------------------------------------------------------
; 990 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |990| 
        ldiu      *ar0,r0               ; |990| 
        cmpi      0,r0                  ; |990| 
        bne       L207                  ; |990| 
;*      Branch Occurs to L207           ; |990| 
	.line	27
;----------------------------------------------------------------------
; 992 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	29
;----------------------------------------------------------------------
; 994 | if (UART[id][MSR]&0x80) // Carrier Detect                              
; 995 | {// carrier detect status for BELL202                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |994| 
        ldp       @CL100,DP
        ash       4,ir0                 ; |994| 
        ldiu      @CL100,ar0            ; |994| 
        ldiu      128,r0                ; |994| 
        tstb3     *+ar0(ir0),r0         ; |994| 
        beq       L203                  ; |994| 
;*      Branch Occurs to L203           ; |994| 
	.line	31
;----------------------------------------------------------------------
; 996 | TIMER1_COUNTER[id]       = 1;                                          
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      *+fp(1),ir0           ; |996| 
        ldiu      @CL30,ar0             ; |996| 
        ldiu      1,r0                  ; |996| 
        sti       r0,*+ar0(ir0)         ; |996| 
	.line	32
;----------------------------------------------------------------------
; 997 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |997| 
        ldiu      @CL25,ar0             ; |997| 
        mpyi      71,ir0                ; |997| 
        sti       r0,*+ar0(ir0)         ; |997| 
	.line	33
;----------------------------------------------------------------------
; 998 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	35
;----------------------------------------------------------------------
; 1000 | return;                                                                
; 1002 | else                                                                   
; 1003 | {// turn OFF break                                                     
;----------------------------------------------------------------------
        bu        L216                  ; |1000| 
;*      Branch Occurs to L216           ; |1000| 
L203:        
	.line	39
;----------------------------------------------------------------------
; 1004 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	40
;----------------------------------------------------------------------
; 1005 | UART[id][LCR]&=(0x40^0xFF);     //clear bit 6 - DA                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |1005| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |1005| 
        addi      @CL27,ar0             ; |1005| Unsigned
        ldiu      191,r0                ; |1005| 
        and       *+ar0(3),r0           ; |1005| 
        sti       r0,*+ar0(3)           ; |1005| 
	.line	44
;----------------------------------------------------------------------
; 1009 | break;                                                                 
;----------------------------------------------------------------------
        bu        L207                  ; |1009| 
;*      Branch Occurs to L207           ; |1009| 
L205:        
	.line	5
        ldiu      *+fp(1),r0            ; |970| 
        cmpi      0,r0                  ; |970| 
        beq       L194                  ; |970| 
;*      Branch Occurs to L194           ; |970| 
        cmpi      4,r0                  ; |970| 
        beq       L199                  ; |970| 
;*      Branch Occurs to L199           ; |970| 
L207:        
	.line	48
;----------------------------------------------------------------------
; 1013 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1013| 
        ldiu      *ar0,r0               ; |1013| 
        cmpi      0,r0                  ; |1013| 
        bne       L213                  ; |1013| 
;*      Branch Occurs to L213           ; |1013| 
	.line	50
;----------------------------------------------------------------------
; 1015 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	51
;----------------------------------------------------------------------
; 1016 | UART[id][MCR] |= 0x01;                                                 
; 1018 | else                                                                   
; 1020 | switch (id)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |1016| 
        ldp       @CL27,DP
        ash       4,ar0                 ; |1016| 
        addi      @CL27,ar0             ; |1016| Unsigned
        ldiu      1,r0                  ; |1016| 
        or        *+ar0(4),r0           ; |1016| 
        sti       r0,*+ar0(4)           ; |1016| 
        bu        L215                  ; |965| 
;*      Branch Occurs to L215           ; |965| 
L210:        
	.line	57
;----------------------------------------------------------------------
; 1022 | case 0: ENABLE_TXA; break;                                             
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |1022| 
        ldiu      247,r0                ; |1022| 
        and3      r0,*ar0,r0            ; |1022| 
        sti       r0,*ar0               ; |1022| 
	pop		ST			
        bu        L215                  ; |1022| 
;*      Branch Occurs to L215           ; |1022| 
L211:        
	.line	58
;----------------------------------------------------------------------
; 1023 | case 1: ENABLE_TXB; break;                                             
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL28,DP
        ldiu      @CL28,ar0             ; |1023| 
        ldiu      254,r0                ; |1023| 
        and3      r0,*ar0,r0            ; |1023| 
        sti       r0,*ar0               ; |1023| 
	pop		ST			
        bu        L215                  ; |1023| 
;*      Branch Occurs to L215           ; |1023| 
L213:        
	.line	55
        ldiu      *+fp(1),r0            ; |1020| 
        cmpi      0,r0                  ; |1020| 
        beq       L210                  ; |1020| 
;*      Branch Occurs to L210           ; |1020| 
        cmpi      1,r0                  ; |1020| 
        beq       L211                  ; |1020| 
;*      Branch Occurs to L211           ; |1020| 
L215:        
	.line	62
;----------------------------------------------------------------------
; 1027 | PORT[id].tvector         = (int*)TX_P1;                                
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      *+fp(1),ir0           ; |1027| 
        ldiu      @CL37,ar0             ; |1027| 
        ldp       @CL126,DP
        mpyi      71,ir0                ; |1027| 
        ldiu      @CL126,r0             ; |1027| 
        sti       r0,*+ar0(ir0)         ; |1027| 
	.line	63
;----------------------------------------------------------------------
; 1028 | TIMER1_COUNTER[id]       = PORT[id].TMR_Prefix_Delay;                  
;----------------------------------------------------------------------
        ldp       @CL88,DP
        ldiu      @CL88,ar1             ; |1028| 
        ldiu      *+fp(1),ir0           ; |1028| 
        ldp       @CL30,DP
        ldiu      ir0,ir1
        mpyi      71,ir0                ; |1028| 
        ldiu      @CL30,ar0             ; |1028| 
        ldiu      *+ar1(ir0),r0         ; |1028| 
        sti       r0,*+ar0(ir1)         ; |1028| 
	.line	64
;----------------------------------------------------------------------
; 1029 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |1029| 
        ldiu      @CL25,ar0             ; |1029| 
        mpyi      71,ir0                ; |1029| 
        ldiu      1,r0                  ; |1029| 
        sti       r0,*+ar0(ir0)         ; |1029| 
	.line	66
;----------------------------------------------------------------------
; 1031 | GIEP;                                                                  
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
	.endfunc	1032,000000000h,1


	.sect	 "interrupt_routines"

	.global	_Prepare_TX
	.sym	_Prepare_TX,_Prepare_TX,32,2,0
	.func	1047
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
; 1047 | void Prepare_TX(int id, BOOL skip_CRC)                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 1049 | unsigned int tmp0;                                                     
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |1048| 
        sti       ar2,*+fp(1)           ; |1048| 
	.line	5
;----------------------------------------------------------------------
; 1051 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 1053 | RESET_PKT(id);                                                         
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,r0              ; |1053| 
        callu     r0                    ; far call to _RESET_PKT	; |1053| 
                                        ; |1053| Far Call Occurs
	.line	9
;----------------------------------------------------------------------
; 1055 | if (!PORT[id].broadcast)                        /* broadcast msgs do no
;     | t require a response */                                                
;----------------------------------------------------------------------
        ldp       @CL92,DP
        ldiu      *+fp(1),ir0           ; |1055| 
        ldiu      @CL92,ar0             ; |1055| 
        mpyi      71,ir0                ; |1055| 
        ldiu      *+ar0(ir0),r0         ; |1055| 
        cmpi      0,r0                  ; |1055| 
        bne       L222                  ; |1055| 
;*      Branch Occurs to L222           ; |1055| 
	.line	11
;----------------------------------------------------------------------
; 1057 | if (!skip_CRC)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1057| 
        cmpi      0,r0                  ; |1057| 
        bne       L221                  ; |1057| 
;*      Branch Occurs to L221           ; |1057| 
	.line	13
;----------------------------------------------------------------------
; 1059 | tmp0 = TXbuf[id].CRC16;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |1059| 
        ldp       @CL127,DP
        mpyi      307,ir0               ; |1059| 
        ldiu      @CL127,ar0            ; |1059| 
        ldiu      *+ar0(ir0),r0         ; |1059| 
        sti       r0,*+fp(3)            ; |1059| 
	.line	15
;----------------------------------------------------------------------
; 1061 | Put(&TXbuf[id], tmp0, 1);       /* CRCH */                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar2           ; |1061| 
        ldp       @CL104,DP
        mpyi      307,ar2               ; |1061| 
        ldiu      @CL104,r0             ; |1061| 
        ldp       @CL64,DP
        ldiu      *+fp(3),r2            ; |1061| 
        addi      @CL64,ar2             ; |1061| Unsigned
        ldiu      1,r3                  ; |1061| 
        callu     r0                    ; far call to _Put	; |1061| 
                                        ; |1061| Far Call Occurs
	.line	16
;----------------------------------------------------------------------
; 1062 | Put(&TXbuf[id], tmp0>>8, 1);/* CRCL */                                 
;----------------------------------------------------------------------
        ldp       @CL104,DP
        ldiu      @CL104,r0             ; |1062| 
        ldiu      *+fp(1),ar2           ; |1062| 
        ldp       @CL64,DP
        mpyi      307,ar2               ; |1062| 
        ldiu      *+fp(3),r2            ; |1062| 
        addi      @CL64,ar2             ; |1062| Unsigned
        lsh       -8,r2                 ; |1062| 
        ldiu      1,r3                  ; |1062| 
        callu     r0                    ; far call to _Put	; |1062| 
                                        ; |1062| Far Call Occurs
L221:        
	.line	19
;----------------------------------------------------------------------
; 1065 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	20
;----------------------------------------------------------------------
; 1066 | UART[id][IER]            = 0x00;        /* disable THR, disable RHR int
;     | errupts */                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |1066| 
        ldp       @CL17,DP
        ash       4,ir0                 ; |1066| 
        ldiu      @CL17,ar0             ; |1066| 
        ldiu      0,r0                  ; |1066| 
        sti       r0,*+ar0(ir0)         ; |1066| 
	.line	21
;----------------------------------------------------------------------
; 1067 | PORT[id].tvector         = (int*)TX_P;                                 
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |1067| 
        ldiu      *+fp(1),ir0           ; |1067| 
        ldp       @CL128,DP
        mpyi      71,ir0                ; |1067| 
        ldiu      @CL128,r0             ; |1067| 
        sti       r0,*+ar0(ir0)         ; |1067| 
	.line	22
;----------------------------------------------------------------------
; 1068 | TIMER1_COUNTER[id]       = PORT[id].TMR_EOT_Delay;                     
;----------------------------------------------------------------------
        ldp       @CL87,DP
        ldiu      @CL87,ar1             ; |1068| 
        ldp       @CL30,DP
        ldiu      *+fp(1),ir0           ; |1068| 
        ldiu      ir0,ir1               ; |1068| 
        mpyi      71,ir0                ; |1068| 
        ldiu      @CL30,ar0             ; |1068| 
        ldiu      *+ar1(ir0),r0         ; |1068| 
        sti       r0,*+ar0(ir1)         ; |1068| 
	.line	23
;----------------------------------------------------------------------
; 1069 | PORT[id].TX_complete = FALSE;                                          
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      *+fp(1),ir0           ; |1069| 
        ldiu      @CL39,ar0             ; |1069| 
        mpyi      71,ir0                ; |1069| 
        ldiu      0,r0                  ; |1069| 
        sti       r0,*+ar0(ir0)         ; |1069| 
	.line	24
;----------------------------------------------------------------------
; 1070 | PORT[id].TMR_enabled = TRUE;                                           
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      *+fp(1),ir0           ; |1070| 
        ldiu      @CL25,ar0             ; |1070| 
        mpyi      71,ir0                ; |1070| 
        ldiu      1,r0                  ; |1070| 
        sti       r0,*+ar0(ir0)         ; |1070| 
L222:        
	.line	27
;----------------------------------------------------------------------
; 1073 | GIEP;                                                                  
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
	.endfunc	1074,000000000h,3


	.sect	 "initialization"

	.global	_Port_Defaults
	.sym	_Port_Defaults,_Port_Defaults,32,2,0
	.func	1091
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
; 1091 | void Port_Defaults(BOOL FORCE)                                         
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
; 1093 | int port, i;    /* port counter; MASTER_Q counter */                   
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |1092| 
	.line	5
;----------------------------------------------------------------------
; 1095 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	6
;----------------------------------------------------------------------
; 1096 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL129,DP
        ldiu      @CL129,ar0            ; |1096| 
        ldiu      247,r0                ; |1096| 
        and3      r0,*ar0,r0            ; |1096| 
        sti       r0,*ar0               ; |1096| 
	pop		ST			
	.line	8
;----------------------------------------------------------------------
; 1098 | if (!FORCE)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |1098| 
        cmpi      0,r0                  ; |1098| 
        bne       L245                  ; |1098| 
;*      Branch Occurs to L245           ; |1098| 
	.line	10
;----------------------------------------------------------------------
; 1100 | for (port=0;port<UART_MAX;port++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1100| 
        sti       r0,*+fp(2)            ; |1100| 
        cmpi      8,r0                  ; |1100| 
        bge       L276                  ; |1100| 
;*      Branch Occurs to L276           ; |1100| 
L227:        
	.line	12
;----------------------------------------------------------------------
; 1102 | if (DIPSWITCH[0])                                                      
;----------------------------------------------------------------------
        ldp       @CL130,DP
        ldiu      @CL130,ar0            ; |1102| 
        ldiu      *ar0,r0               ; |1102| 
        cmpi      0,r0                  ; |1102| 
        beq       L243                  ; |1102| 
;*      Branch Occurs to L243           ; |1102| 
	.line	14
;----------------------------------------------------------------------
; 1104 | if ( (SA && B202_PORT && (port==0)) || (!SA && (port==4)) ) /* BELL202
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1104| 
        ldiu      *ar0,r0               ; |1104| 
        cmpi      0,r0                  ; |1104| 
        beq       L231                  ; |1104| 
;*      Branch Occurs to L231           ; |1104| 
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |1104| 
        ldiu      32,r0                 ; |1104| 
        tstb3     *ar0,r0               ; |1104| 
        bne       L231                  ; |1104| 
;*      Branch Occurs to L231           ; |1104| 
        ldiu      *+fp(2),r0            ; |1104| 
        cmpi      0,r0                  ; |1104| 
        beq       L233                  ; |1104| 
;*      Branch Occurs to L233           ; |1104| 
L231:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1104| 
        ldiu      *ar0,r0               ; |1104| 
        cmpi      0,r0                  ; |1104| 
        bne       L234                  ; |1104| 
;*      Branch Occurs to L234           ; |1104| 
        ldiu      *+fp(2),r0            ; |1104| 
        cmpi      4,r0                  ; |1104| 
        bne       L234                  ; |1104| 
;*      Branch Occurs to L234           ; |1104| 
L233:        
	.line	16
;----------------------------------------------------------------------
; 1106 | DIO_HART_5.val = TRUE;                                                 
;----------------------------------------------------------------------
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1106| 
        ldiu      1,r0                  ; |1106| 
        sti       r0,*ar0               ; |1106| 
	.line	18
;----------------------------------------------------------------------
; 1108 | HART_5(port);                                                          
;----------------------------------------------------------------------
        ldp       @CL132,DP
        ldiu      *+fp(2),ar2           ; |1108| 
        ldiu      @CL132,r0             ; |1108| 
        callu     r0                    ; far call to _HART_5	; |1108| 
                                        ; |1108| Far Call Occurs
	.line	20
;----------------------------------------------------------------------
; 1110 | PORT[port].Slave = 0;                                                  
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1110| 
        ldiu      @CL102,ar0            ; |1110| 
        mpyi      71,ir0                ; |1110| 
        ldiu      0,r0                  ; |1110| 
        sti       r0,*+ar0(ir0)         ; |1110| 
	.line	21
;----------------------------------------------------------------------
; 1111 | PORTCFG[port].Parity = 'O'<<8;                                         
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(2),ir0           ; |1111| 
        ldiu      @CL50,ar0             ; |1111| 
        mpyi      359,ir0               ; |1111| 
        ldiu      20224,r0              ; |1111| 
        sti       r0,*+ar0(ir0)         ; |1111| 
	.line	23
;----------------------------------------------------------------------
; 1113 | VAR_Update(&PORTCFG[port].Slave_ID,   0.0,
;     |   0, 0);                                                               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1113| 
        ldiu      *+fp(2),ar2           ; |1113| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1113| 
        addi      @CL133,ar2            ; |1113| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1113| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |1113| 
        ldiu      @CL72+1,r2            ; |1113| 40b float lo half
        ldiu      0,r3                  ; |1113| 
        callu     r0                    ; far call to _VAR_Update	; |1113| 
                                        ; |1113| Far Call Occurs
	.line	24
;----------------------------------------------------------------------
; 1114 | VAR_Update(&PORTCFG[port].Baud_Rate,  1200.0,                    0, 0);
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1114| 
        ldp       @CL134,DP
        ldiu      *+fp(2),ar2           ; |1114| 
        mpyi      359,ar2               ; |1114| 
        addi      @CL134,ar2            ; |1114| Unsigned
        ldp       @CL135+0,DP
        ldfu      @CL135+0,f2           ; |1114| 40b float hi half
        ldp       @CL135+1,DP
        ldiu      @CL135+1,r2           ; |1114| 40b float lo half
        ldiu      0,rc                  ; |1114| 
        ldiu      0,r3                  ; |1114| 
        callu     r0                    ; far call to _VAR_Update	; |1114| 
                                        ; |1114| Far Call Occurs
	.line	25
;----------------------------------------------------------------------
; 1115 | VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_H_EOT,     0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1115| 
        ldiu      *+fp(2),ar2           ; |1115| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1115| 
        addi      @CL78,ar2             ; |1115| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1115| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      @CL136+1,r2           ; |1115| 40b float lo half
        ldiu      0,rc                  ; |1115| 
        ldiu      0,r3                  ; |1115| 
        callu     r0                    ; far call to _VAR_Update	; |1115| 
                                        ; |1115| Far Call Occurs
	.line	26
;----------------------------------------------------------------------
; 1116 | VAR_Update(&PORTCFG[port].PREFIX,         DEFAULT_H_PREFIX,  0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1116| 
        ldiu      *+fp(2),ar2           ; |1116| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1116| 
        addi      @CL73,ar2             ; |1116| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1116| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |1116| 
        ldiu      @CL74+1,r2            ; |1116| 40b float lo half
        ldiu      0,r3                  ; |1116| 
        callu     r0                    ; far call to _VAR_Update	; |1116| 
                                        ; |1116| Far Call Occurs
	.line	27
;----------------------------------------------------------------------
; 1117 | VAR_Update(&PORTCFG[port].SUFFIX,         DEFAULT_H_SUFFIX,  0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1117| 
        ldiu      @CL70,r0              ; |1117| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1117| 
        addi      @CL76,ar2             ; |1117| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1117| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      @CL82+1,r2            ; |1117| 40b float lo half
        ldiu      0,rc                  ; |1117| 
        ldiu      0,r3                  ; |1117| 
        callu     r0                    ; far call to _VAR_Update	; |1117| 
                                        ; |1117| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 1118 | VAR_Update(&PORTCFG[port].NETWDOG,        DEFAULT_H_NETWDOG, 0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1118| 
        ldiu      *+fp(2),ar2           ; |1118| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1118| 
        addi      @CL68,ar2             ; |1118| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1118| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      0,rc                  ; |1118| 
        ldiu      @CL136+1,r2           ; |1118| 40b float lo half
        ldiu      0,r3                  ; |1118| 
        callu     r0                    ; far call to _VAR_Update	; |1118| 
                                        ; |1118| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 1119 | VAR_Update(&PORTCFG[port].Retry_Time, 0.500,                     0, 0);
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1119| 
        ldiu      *+fp(2),ar2           ; |1119| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1119| 
        addi      @CL81,ar2             ; |1119| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1119| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      0,rc                  ; |1119| 
        ldiu      @CL82+1,r2            ; |1119| 40b float lo half
        ldiu      0,r3                  ; |1119| 
        callu     r0                    ; far call to _VAR_Update	; |1119| 
                                        ; |1119| Far Call Occurs
        bu        L243                  ; |1090| 
;*      Branch Occurs to L243           ; |1090| 
L234:        
	.line	31
;----------------------------------------------------------------------
; 1121 | else if (!SA && (port==5))      /* IrDA */                             
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1121| 
        ldiu      *ar0,r0               ; |1121| 
        cmpi      0,r0                  ; |1121| 
        bne       L237                  ; |1121| 
;*      Branch Occurs to L237           ; |1121| 
        ldiu      *+fp(2),r0            ; |1121| 
        cmpi      5,r0                  ; |1121| 
        bne       L237                  ; |1121| 
;*      Branch Occurs to L237           ; |1121| 
	.line	33
;----------------------------------------------------------------------
; 1123 | VAR_Update(&PORTCFG[port].Slave_ID, 1.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      r0,ar2
        ldiu      @CL70,r0              ; |1123| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1123| 
        addi      @CL133,ar2            ; |1123| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1123| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      0,rc                  ; |1123| 
        ldiu      @CL136+1,r2           ; |1123| 40b float lo half
        ldiu      0,r3                  ; |1123| 
        callu     r0                    ; far call to _VAR_Update	; |1123| 
                                        ; |1123| Far Call Occurs
	.line	35
;----------------------------------------------------------------------
; 1125 | PORT[port].Slave = 0;                                                  
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1125| 
        ldiu      @CL102,ar0            ; |1125| 
        mpyi      71,ir0                ; |1125| 
        ldiu      0,r0                  ; |1125| 
        sti       r0,*+ar0(ir0)         ; |1125| 
	.line	37
;----------------------------------------------------------------------
; 1127 | VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);                  
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1127| 
        ldp       @CL134,DP
        ldiu      *+fp(2),ar2           ; |1127| 
        mpyi      359,ar2               ; |1127| 
        addi      @CL134,ar2            ; |1127| Unsigned
        ldp       @CL137+0,DP
        ldfu      @CL137+0,f2           ; |1127| 40b float hi half
        ldp       @CL137+1,DP
        ldiu      0,rc                  ; |1127| 
        ldiu      @CL137+1,r2           ; |1127| 40b float lo half
        ldiu      0,r3                  ; |1127| 
        callu     r0                    ; far call to _VAR_Update	; |1127| 
                                        ; |1127| Far Call Occurs
	.line	39
;----------------------------------------------------------------------
; 1129 | PORTCFG[port].Parity = 'N'<<8;                                         
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      @CL50,ar0             ; |1129| 
        ldiu      *+fp(2),ir0           ; |1129| 
        mpyi      359,ir0               ; |1129| 
        ldiu      19968,r0              ; |1129| 
        sti       r0,*+ar0(ir0)         ; |1129| 
	.line	41
;----------------------------------------------------------------------
; 1131 | VAR_Update(&PORTCFG[port].EOT_Delay, 0.0, 0, 0);                       
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1131| 
        ldp       @CL78,DP
        ldiu      *+fp(2),ar2           ; |1131| 
        mpyi      359,ar2               ; |1131| 
        addi      @CL78,ar2             ; |1131| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1131| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |1131| 
        ldiu      @CL72+1,r2            ; |1131| 40b float lo half
        ldiu      0,r3                  ; |1131| 
        callu     r0                    ; far call to _VAR_Update	; |1131| 
                                        ; |1131| Far Call Occurs
	.line	42
;----------------------------------------------------------------------
; 1132 | VAR_Update(&PORTCFG[port].PREFIX, 0.0, 0, 0);                          
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1132| 
        ldiu      *+fp(2),ar2           ; |1132| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1132| 
        addi      @CL73,ar2             ; |1132| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1132| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1132| 40b float lo half
        ldiu      0,rc                  ; |1132| 
        ldiu      0,r3                  ; |1132| 
        callu     r0                    ; far call to _VAR_Update	; |1132| 
                                        ; |1132| Far Call Occurs
	.line	43
;----------------------------------------------------------------------
; 1133 | VAR_Update(&PORTCFG[port].SUFFIX, 0., 0, 0);                           
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1133| 
        ldp       @CL76,DP
        ldiu      *+fp(2),ar2           ; |1133| 
        mpyi      359,ar2               ; |1133| 
        addi      @CL76,ar2             ; |1133| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1133| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1133| 40b float lo half
        ldiu      0,rc                  ; |1133| 
        ldiu      0,r3                  ; |1133| 
        callu     r0                    ; far call to _VAR_Update	; |1133| 
                                        ; |1133| Far Call Occurs
	.line	44
;----------------------------------------------------------------------
; 1134 | VAR_Update(&PORTCFG[port].NETWDOG, 10.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1134| 
        ldp       @CL68,DP
        ldiu      *+fp(2),ar2           ; |1134| 
        mpyi      359,ar2               ; |1134| 
        addi      @CL68,ar2             ; |1134| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |1134| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r2            ; |1134| 40b float lo half
        ldiu      0,rc                  ; |1134| 
        ldiu      0,r3                  ; |1134| 
        callu     r0                    ; far call to _VAR_Update	; |1134| 
                                        ; |1134| Far Call Occurs
	.line	45
;----------------------------------------------------------------------
; 1135 | VAR_Update(&PORTCFG[port].Retry_Time, 2.0, 0, 0);                      
; 1137 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1135| 
        ldiu      *+fp(2),ar2           ; |1135| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1135| 
        addi      @CL81,ar2             ; |1135| Unsigned
        ldp       @CL138+0,DP
        ldfu      @CL138+0,f2           ; |1135| 40b float hi half
        ldp       @CL138+1,DP
        ldiu      @CL138+1,r2           ; |1135| 40b float lo half
        ldiu      0,rc                  ; |1135| 
        ldiu      0,r3                  ; |1135| 
        callu     r0                    ; far call to _VAR_Update	; |1135| 
                                        ; |1135| Far Call Occurs
        bu        L243                  ; |1090| 
;*      Branch Occurs to L243           ; |1090| 
L237:        
	.line	49
;----------------------------------------------------------------------
; 1139 | VAR_Update(&PORTCFG[port].Slave_ID, 1.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1139| 
        ldiu      @CL70,r0              ; |1139| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1139| 
        addi      @CL133,ar2            ; |1139| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1139| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      0,rc                  ; |1139| 
        ldiu      @CL136+1,r2           ; |1139| 40b float lo half
        ldiu      0,r3                  ; |1139| 
        callu     r0                    ; far call to _VAR_Update	; |1139| 
                                        ; |1139| Far Call Occurs
	.line	51
;----------------------------------------------------------------------
; 1141 | PORT[port].Slave = 1;                                                  
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1141| 
        ldiu      @CL102,ar0            ; |1141| 
        mpyi      71,ir0                ; |1141| 
        ldiu      1,r0                  ; |1141| 
        sti       r0,*+ar0(ir0)         ; |1141| 
	.line	53
;----------------------------------------------------------------------
; 1143 | if ((port==1) && (!SA) && (!ALYESKA.ENABLED))                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1143| 
        cmpi      1,r0                  ; |1143| 
        bne       L241                  ; |1143| 
;*      Branch Occurs to L241           ; |1143| 
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1143| 
        ldiu      *ar0,r0               ; |1143| 
        cmpi      0,r0                  ; |1143| 
        bne       L241                  ; |1143| 
;*      Branch Occurs to L241           ; |1143| 
        ldp       @CL139,DP
        ldiu      @CL139,ar0            ; |1143| 
        ldiu      *ar0,r0               ; |1143| 
        cmpi      0,r0                  ; |1143| 
        bne       L241                  ; |1143| 
;*      Branch Occurs to L241           ; |1143| 
	.line	54
;----------------------------------------------------------------------
; 1144 | VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);                  
; 1145 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1144| 
        ldiu      @CL70,r0              ; |1144| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1144| 
        addi      @CL134,ar2            ; |1144| Unsigned
        ldp       @CL137+0,DP
        ldfu      @CL137+0,f2           ; |1144| 40b float hi half
        ldp       @CL137+1,DP
        ldiu      0,rc                  ; |1144| 
        ldiu      @CL137+1,r2           ; |1144| 40b float lo half
        ldiu      0,r3                  ; |1144| 
        callu     r0                    ; far call to _VAR_Update	; |1144| 
                                        ; |1144| Far Call Occurs
        bu        L242                  ; |1090| 
;*      Branch Occurs to L242           ; |1090| 
L241:        
	.line	56
;----------------------------------------------------------------------
; 1146 | VAR_Update(&PORTCFG[port].Baud_Rate, 9600.0, 0, 0);                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1146| 
        ldiu      @CL70,r0              ; |1146| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1146| 
        addi      @CL134,ar2            ; |1146| Unsigned
        ldp       @CL140+0,DP
        ldfu      @CL140+0,f2           ; |1146| 40b float hi half
        ldp       @CL140+1,DP
        ldiu      0,rc                  ; |1146| 
        ldiu      @CL140+1,r2           ; |1146| 40b float lo half
        ldiu      0,r3                  ; |1146| 
        callu     r0                    ; far call to _VAR_Update	; |1146| 
                                        ; |1146| Far Call Occurs
L242:        
	.line	58
;----------------------------------------------------------------------
; 1148 | PORTCFG[port].Parity = 'N'<<8;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1148| 
        ldp       @CL50,DP
        mpyi      359,ir0               ; |1148| 
        ldiu      @CL50,ar0             ; |1148| 
        ldiu      19968,r0              ; |1148| 
        sti       r0,*+ar0(ir0)         ; |1148| 
	.line	60
;----------------------------------------------------------------------
; 1150 | VAR_Update(&PORTCFG[port].EOT_Delay, DEFAULT_EOT, 0, 0);               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1150| 
        ldiu      @CL70,r0              ; |1150| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1150| 
        addi      @CL78,ar2             ; |1150| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |1150| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |1150| 
        ldiu      @CL79+1,r2            ; |1150| 40b float lo half
        ldiu      0,r3                  ; |1150| 
        callu     r0                    ; far call to _VAR_Update	; |1150| 
                                        ; |1150| Far Call Occurs
	.line	61
;----------------------------------------------------------------------
; 1151 | VAR_Update(&PORTCFG[port].PREFIX, DEFAULT_PREFIX, 0, 0);               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1151| 
        ldiu      *+fp(2),ar2           ; |1151| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1151| 
        addi      @CL73,ar2             ; |1151| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1151| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |1151| 
        ldiu      @CL74+1,r2            ; |1151| 40b float lo half
        ldiu      0,r3                  ; |1151| 
        callu     r0                    ; far call to _VAR_Update	; |1151| 
                                        ; |1151| Far Call Occurs
	.line	62
;----------------------------------------------------------------------
; 1152 | VAR_Update(&PORTCFG[port].SUFFIX, DEFAULT_SUFFIX, 0, 0);               
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1152| 
        ldiu      @CL70,r0              ; |1152| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1152| 
        addi      @CL76,ar2             ; |1152| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1152| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1152| 40b float lo half
        ldiu      0,rc                  ; |1152| 
        ldiu      0,r3                  ; |1152| 
        callu     r0                    ; far call to _VAR_Update	; |1152| 
                                        ; |1152| Far Call Occurs
	.line	63
;----------------------------------------------------------------------
; 1153 | VAR_Update(&PORTCFG[port].NETWDOG, DEFAULT_NETWDOG, 0, 0);             
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1153| 
        ldiu      *+fp(2),ar2           ; |1153| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1153| 
        addi      @CL68,ar2             ; |1153| Unsigned
        ldp       @CL69+0,DP
        ldfu      @CL69+0,f2            ; |1153| 40b float hi half
        ldp       @CL69+1,DP
        ldiu      0,rc                  ; |1153| 
        ldiu      @CL69+1,r2            ; |1153| 40b float lo half
        ldiu      0,r3                  ; |1153| 
        callu     r0                    ; far call to _VAR_Update	; |1153| 
                                        ; |1153| Far Call Occurs
	.line	64
;----------------------------------------------------------------------
; 1154 | VAR_Update(&PORTCFG[port].Retry_Time, 0.500, 0, 0);                    
; 1159 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1154| 
        ldiu      *+fp(2),ar2           ; |1154| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1154| 
        addi      @CL81,ar2             ; |1154| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1154| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      @CL82+1,r2            ; |1154| 40b float lo half
        ldiu      0,rc                  ; |1154| 
        ldiu      0,r3                  ; |1154| 
        callu     r0                    ; far call to _VAR_Update	; |1154| 
                                        ; |1154| Far Call Occurs
L243:        
	.line	10
        ldiu      1,r0                  ; |1100| 
        addi      *+fp(2),r0            ; |1100| 
        sti       r0,*+fp(2)            ; |1100| 
        cmpi      8,r0                  ; |1100| 
        blt       L227                  ; |1100| 
;*      Branch Occurs to L227           ; |1100| 
        bu        L276                  ; |1090| 
;*      Branch Occurs to L276           ; |1090| 
L245:        
	.line	71
;----------------------------------------------------------------------
; 1161 | for (port=0;port<UART_MAX;port++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1161| 
        sti       r0,*+fp(2)            ; |1161| 
        cmpi      8,r0                  ; |1161| 
        bge       L276                  ; |1161| 
;*      Branch Occurs to L276           ; |1161| 
L246:        
	.line	73
;----------------------------------------------------------------------
; 1163 | PORT[port].BUSY = FALSE;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1163| 
        ldp       @CL91,DP
        mpyi      71,ir0                ; |1163| 
        ldiu      @CL91,ar0             ; |1163| 
        ldiu      0,r0                  ; |1163| 
        sti       r0,*+ar0(ir0)         ; |1163| 
	.line	75
;----------------------------------------------------------------------
; 1165 | if ((SA && B202_PORT && (port==0)) || (!SA && (port==4)))              
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1165| 
        ldiu      *ar0,r0               ; |1165| 
        cmpi      0,r0                  ; |1165| 
        beq       L249                  ; |1165| 
;*      Branch Occurs to L249           ; |1165| 
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |1165| 
        ldiu      32,r0                 ; |1165| 
        tstb3     *ar0,r0               ; |1165| 
        bne       L249                  ; |1165| 
;*      Branch Occurs to L249           ; |1165| 
        ldiu      *+fp(2),r0            ; |1165| 
        cmpi      0,r0                  ; |1165| 
        beq       L251                  ; |1165| 
;*      Branch Occurs to L251           ; |1165| 
L249:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1165| 
        ldiu      *ar0,r0               ; |1165| 
        cmpi      0,r0                  ; |1165| 
        bne       L252                  ; |1165| 
;*      Branch Occurs to L252           ; |1165| 
        ldiu      *+fp(2),r0            ; |1165| 
        cmpi      4,r0                  ; |1165| 
        bne       L252                  ; |1165| 
;*      Branch Occurs to L252           ; |1165| 
L251:        
	.line	77
;----------------------------------------------------------------------
; 1167 | VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specif
;     | ic_none, 1.0, 1.0, var_no_alarm|var_round);                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1167| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1167| 
        ldiu      240,rs                ; |1167| 
        ldiu      260,re                ; |1167| 
        addi      @CL133,ar2            ; |1167| Unsigned
        ldp       @CL141,DP
        ldiu      0,rc                  ; |1167| 
        ldiu      @CL141,r0             ; |1167| 
        ldfu      1.0000000000e+00,f3   ; |1167| 
        ldfu      1.0000000000e+00,f2   ; |1167| 
        callu     r0                    ; far call to _VAR_Initialize	; |1167| 
                                        ; |1167| Far Call Occurs
	.line	79
;----------------------------------------------------------------------
; 1169 | DIO_HART_5.val = TRUE;                                                 
;----------------------------------------------------------------------
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1169| 
        ldiu      1,r0                  ; |1169| 
        sti       r0,*ar0               ; |1169| 
	.line	81
;----------------------------------------------------------------------
; 1171 | HART_5(port);                                                          
;----------------------------------------------------------------------
        ldp       @CL132,DP
        ldiu      *+fp(2),ar2           ; |1171| 
        ldiu      @CL132,r0             ; |1171| 
        callu     r0                    ; far call to _HART_5	; |1171| 
                                        ; |1171| Far Call Occurs
	.line	82
;----------------------------------------------------------------------
; 1172 | VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_speci
;     | fic_bps, 0.01, 0.01, var_no_alarm);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1172| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1172| 
        addi      @CL134,ar2            ; |1172| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1172| 
        ldp       @CL142,DP
        ldiu      242,rs                ; |1172| 
        ldiu      4,re                  ; |1172| 
        ldiu      0,rc                  ; |1172| 
        ldfu      @CL142,f2             ; |1172| 
        ldfu      @CL142,f3             ; |1172| 
        callu     r0                    ; far call to _VAR_Initialize	; |1172| 
                                        ; |1172| Far Call Occurs
	.line	84
;----------------------------------------------------------------------
; 1174 | VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 3
;     | 00, 115200, 300); //fix 05-08-2014                                     
;----------------------------------------------------------------------
        ldp       @CL143,DP
        ldfu      @CL143,f1             ; |1174| 
        ldp       @CL144,DP
        ldfu      @CL144,f0             ; |1174| 
        pushf     f1                    ; |1174| 
        ldp       @CL145,DP
        pushf     f0                    ; |1174| 
        ldiu      @CL145,r0             ; |1174| 
        ldiu      *+fp(2),ar2           ; |1174| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1174| 
        addi      @CL134,ar2            ; |1174| Unsigned
        ldp       @CL143,DP
        ldfu      @CL143,f3             ; |1174| 
        ldp       @CL144,DP
        ldfu      @CL144,f2             ; |1174| 
        ldiu      242,rc                ; |1174| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1174| 
                                        ; |1174| Far Call Occurs
        subi      2,sp                  ; |1174| 
	.line	86
;----------------------------------------------------------------------
; 1176 | VAR_Update(&PORTCFG[port].Baud_Rate, 1200.0, 0, 0);                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1176| 
        ldiu      @CL70,r0              ; |1176| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1176| 
        addi      @CL134,ar2            ; |1176| Unsigned
        ldp       @CL135+0,DP
        ldfu      @CL135+0,f2           ; |1176| 40b float hi half
        ldp       @CL135+1,DP
        ldiu      @CL135+1,r2           ; |1176| 40b float lo half
        ldiu      0,rc                  ; |1176| 
        ldiu      0,r3                  ; |1176| 
        callu     r0                    ; far call to _VAR_Update	; |1176| 
                                        ; |1176| Far Call Occurs
        bu        L260                  ; |1090| 
;*      Branch Occurs to L260           ; |1090| 
L252:        
	.line	88
;----------------------------------------------------------------------
; 1178 | else if (!SA && (port==5))                                             
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1178| 
        ldiu      *ar0,r0               ; |1178| 
        cmpi      0,r0                  ; |1178| 
        bne       L255                  ; |1178| 
;*      Branch Occurs to L255           ; |1178| 
        ldiu      *+fp(2),r0            ; |1178| 
        cmpi      5,r0                  ; |1178| 
        bne       L255                  ; |1178| 
;*      Branch Occurs to L255           ; |1178| 
	.line	90
;----------------------------------------------------------------------
; 1180 | VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specif
;     | ic_none, 1.0, 1.0, var_no_alarm|var_round);                            
;----------------------------------------------------------------------
        ldiu      r0,ar2
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1180| 
        ldiu      240,rs                ; |1180| 
        ldiu      260,re                ; |1180| 
        addi      @CL133,ar2            ; |1180| Unsigned
        ldp       @CL141,DP
        ldiu      0,rc                  ; |1180| 
        ldiu      @CL141,r0             ; |1180| 
        ldfu      1.0000000000e+00,f3   ; |1180| 
        ldfu      1.0000000000e+00,f2   ; |1180| 
        callu     r0                    ; far call to _VAR_Initialize	; |1180| 
                                        ; |1180| Far Call Occurs
	.line	91
;----------------------------------------------------------------------
; 1181 | VAR_Setup_Unit(&PORTCFG[port].Slave_ID, u_mfgr_specific_none, 0, 0, 0,
;     | 0);                                                                    
;----------------------------------------------------------------------
        ldp       @CL145,DP
        ldfu      0.0000000000e+00,f1   ; |1181| 
        ldfu      0.0000000000e+00,f0   ; |1181| 
        pushf     f1                    ; |1181| 
        pushf     f0                    ; |1181| 
        ldiu      *+fp(2),ar2           ; |1181| 
        ldiu      @CL145,r0             ; |1181| 
        mpyi      359,ar2               ; |1181| 
        ldp       @CL133,DP
        ldiu      240,rc                ; |1181| 
        addi      @CL133,ar2            ; |1181| Unsigned
        ldfu      0.0000000000e+00,f3   ; |1181| 
        ldfu      0.0000000000e+00,f2   ; |1181| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1181| 
                                        ; |1181| Far Call Occurs
        subi      2,sp                  ; |1181| 
	.line	92
;----------------------------------------------------------------------
; 1182 | VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_speci
;     | fic_bps, 0.01, 0.01, var_no_alarm);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1182| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1182| 
        addi      @CL134,ar2            ; |1182| Unsigned
        ldp       @CL141,DP
        ldiu      242,rs                ; |1182| 
        ldiu      @CL141,r0             ; |1182| 
        ldp       @CL142,DP
        ldiu      4,re                  ; |1182| 
        ldfu      @CL142,f2             ; |1182| 
        ldfu      @CL142,f3             ; |1182| 
        ldiu      0,rc                  ; |1182| 
        callu     r0                    ; far call to _VAR_Initialize	; |1182| 
                                        ; |1182| Far Call Occurs
	.line	93
;----------------------------------------------------------------------
; 1183 | VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 1
;     | 15200, 115200, 115200);                                                
;----------------------------------------------------------------------
        ldp       @CL144,DP
        ldfu      @CL144,f1             ; |1183| 
        pushf     f1                    ; |1183| 
        ldfu      @CL144,f0             ; |1183| 
        ldp       @CL145,DP
        pushf     f0                    ; |1183| 
        ldiu      @CL145,r0             ; |1183| 
        ldp       @CL134,DP
        ldiu      *+fp(2),ar2           ; |1183| 
        mpyi      359,ar2               ; |1183| 
        addi      @CL134,ar2            ; |1183| Unsigned
        ldp       @CL144,DP
        ldiu      242,rc                ; |1183| 
        ldfu      @CL144,f2             ; |1183| 
        ldfu      @CL144,f3             ; |1183| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1183| 
                                        ; |1183| Far Call Occurs
        subi      2,sp                  ; |1183| 
	.line	94
;----------------------------------------------------------------------
; 1184 | VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);                  
; 1186 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1184| 
        ldiu      *+fp(2),ar2           ; |1184| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1184| 
        addi      @CL134,ar2            ; |1184| Unsigned
        ldp       @CL137+0,DP
        ldfu      @CL137+0,f2           ; |1184| 40b float hi half
        ldp       @CL137+1,DP
        ldiu      0,rc                  ; |1184| 
        ldiu      @CL137+1,r2           ; |1184| 40b float lo half
        ldiu      0,r3                  ; |1184| 
        callu     r0                    ; far call to _VAR_Update	; |1184| 
                                        ; |1184| Far Call Occurs
        bu        L260                  ; |1090| 
;*      Branch Occurs to L260           ; |1090| 
L255:        
	.line	98
;----------------------------------------------------------------------
; 1188 | VAR_Initialize(&PORTCFG[port].Slave_ID, c_not_classified, u_mfgr_specif
;     | ic_none, 1.0, 1.0, var_no_alarm|var_round);                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1188| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1188| 
        ldiu      240,rs                ; |1188| 
        ldiu      260,re                ; |1188| 
        addi      @CL133,ar2            ; |1188| Unsigned
        ldp       @CL141,DP
        ldiu      0,rc                  ; |1188| 
        ldiu      @CL141,r0             ; |1188| 
        ldfu      1.0000000000e+00,f3   ; |1188| 
        ldfu      1.0000000000e+00,f2   ; |1188| 
        callu     r0                    ; far call to _VAR_Initialize	; |1188| 
                                        ; |1188| Far Call Occurs
	.line	99
;----------------------------------------------------------------------
; 1189 | VAR_Setup_Unit(&PORTCFG[port].Slave_ID, u_mfgr_specific_none, 247, 1, 2
;     | 47, 1);                                                                
;----------------------------------------------------------------------
        ldp       @CL145,DP
        ldfu      1.0000000000e+00,f1   ; |1189| 
        ldfu      2.4700000000e+02,f0   ; |1189| 
        pushf     f1                    ; |1189| 
        pushf     f0                    ; |1189| 
        ldiu      *+fp(2),ar2           ; |1189| 
        ldiu      @CL145,r0             ; |1189| 
        mpyi      359,ar2               ; |1189| 
        ldp       @CL133,DP
        ldiu      240,rc                ; |1189| 
        addi      @CL133,ar2            ; |1189| Unsigned
        ldfu      1.0000000000e+00,f3   ; |1189| 
        ldfu      2.4700000000e+02,f2   ; |1189| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1189| 
                                        ; |1189| Far Call Occurs
        subi      2,sp                  ; |1189| 
	.line	100
;----------------------------------------------------------------------
; 1190 | VAR_Initialize(&PORTCFG[port].Baud_Rate, c_not_classified, u_mfgr_speci
;     | fic_bps, 0.01, 0.01, var_no_alarm);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1190| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1190| 
        addi      @CL134,ar2            ; |1190| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1190| 
        ldp       @CL142,DP
        ldfu      @CL142,f2             ; |1190| 
        ldfu      @CL142,f3             ; |1190| 
        ldiu      242,rs                ; |1190| 
        ldiu      4,re                  ; |1190| 
        ldiu      0,rc                  ; |1190| 
        callu     r0                    ; far call to _VAR_Initialize	; |1190| 
                                        ; |1190| Far Call Occurs
	.line	101
;----------------------------------------------------------------------
; 1191 | VAR_Setup_Unit(&PORTCFG[port].Baud_Rate, u_mfgr_specific_bps, 115200, 3
;     | 00, 115200, 300);                                                      
;----------------------------------------------------------------------
        ldp       @CL143,DP
        ldfu      @CL143,f1             ; |1191| 
        ldp       @CL144,DP
        ldfu      @CL144,f0             ; |1191| 
        pushf     f1                    ; |1191| 
        ldp       @CL145,DP
        pushf     f0                    ; |1191| 
        ldiu      @CL145,r0             ; |1191| 
        ldp       @CL134,DP
        ldiu      *+fp(2),ar2           ; |1191| 
        mpyi      359,ar2               ; |1191| 
        addi      @CL134,ar2            ; |1191| Unsigned
        ldp       @CL143,DP
        ldfu      @CL143,f3             ; |1191| 
        ldp       @CL144,DP
        ldiu      242,rc                ; |1191| 
        ldfu      @CL144,f2             ; |1191| 
        callu     r0                    ; far call to _VAR_Setup_Unit	; |1191| 
                                        ; |1191| Far Call Occurs
        subi      2,sp                  ; |1191| 
	.line	103
;----------------------------------------------------------------------
; 1193 | if ((port==1) && (!SA) && (!ALYESKA.ENABLED))
;     |  /* EEA: Port 1 w/o Alyeska - IDEC port 115200 Baud*/                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1193| 
        cmpi      1,r0                  ; |1193| 
        bne       L259                  ; |1193| 
;*      Branch Occurs to L259           ; |1193| 
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1193| 
        ldiu      *ar0,r0               ; |1193| 
        cmpi      0,r0                  ; |1193| 
        bne       L259                  ; |1193| 
;*      Branch Occurs to L259           ; |1193| 
        ldp       @CL139,DP
        ldiu      @CL139,ar0            ; |1193| 
        ldiu      *ar0,r0               ; |1193| 
        cmpi      0,r0                  ; |1193| 
        bne       L259                  ; |1193| 
;*      Branch Occurs to L259           ; |1193| 
	.line	104
;----------------------------------------------------------------------
; 1194 | VAR_Update(&PORTCFG[port].Baud_Rate, 115200.0, 0, 0);                  
; 1195 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1194| 
        ldiu      @CL70,r0              ; |1194| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1194| 
        addi      @CL134,ar2            ; |1194| Unsigned
        ldp       @CL137+0,DP
        ldfu      @CL137+0,f2           ; |1194| 40b float hi half
        ldp       @CL137+1,DP
        ldiu      0,rc                  ; |1194| 
        ldiu      @CL137+1,r2           ; |1194| 40b float lo half
        ldiu      0,r3                  ; |1194| 
        callu     r0                    ; far call to _VAR_Update	; |1194| 
                                        ; |1194| Far Call Occurs
        bu        L260                  ; |1090| 
;*      Branch Occurs to L260           ; |1090| 
L259:        
	.line	106
;----------------------------------------------------------------------
; 1196 | VAR_Update(&PORTCFG[port].Baud_Rate, 9600.0, 0, 0);     /* All other po
;     | rts 9600 Baud */                                                       
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1196| 
        ldiu      @CL70,r0              ; |1196| 
        ldp       @CL134,DP
        mpyi      359,ar2               ; |1196| 
        addi      @CL134,ar2            ; |1196| Unsigned
        ldp       @CL140+0,DP
        ldfu      @CL140+0,f2           ; |1196| 40b float hi half
        ldp       @CL140+1,DP
        ldiu      0,rc                  ; |1196| 
        ldiu      @CL140+1,r2           ; |1196| 40b float lo half
        ldiu      0,r3                  ; |1196| 
        callu     r0                    ; far call to _VAR_Update	; |1196| 
                                        ; |1196| Far Call Occurs
L260:        
	.line	109
;----------------------------------------------------------------------
; 1199 | PORTCFG[port].STP       = 1;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1199| 
        ldp       @CL49,DP
        mpyi      359,ir0               ; |1199| 
        ldiu      @CL49,ar0             ; |1199| 
        ldiu      1,r0                  ; |1199| 
        sti       r0,*+ar0(ir0)         ; |1199| 
	.line	110
;----------------------------------------------------------------------
; 1200 | PORTCFG[port].N     = 8;                                               
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      *+fp(2),ir0           ; |1200| 
        ldiu      @CL48,ar0             ; |1200| 
        mpyi      359,ir0               ; |1200| 
        ldiu      8,r0                  ; |1200| 
        sti       r0,*+ar0(ir0)         ; |1200| 
	.line	112
;----------------------------------------------------------------------
; 1202 | if ((port==1) && ALYESKA.ENABLED)                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1202| 
        cmpi      1,r0                  ; |1202| 
        bne       L263                  ; |1202| 
;*      Branch Occurs to L263           ; |1202| 
        ldp       @CL139,DP
        ldiu      @CL139,ar0            ; |1202| 
        ldiu      *ar0,r0               ; |1202| 
        cmpi      0,r0                  ; |1202| 
        beq       L263                  ; |1202| 
;*      Branch Occurs to L263           ; |1202| 
	.line	113
;----------------------------------------------------------------------
; 1203 | PORTCFG[port].N_retry = 0;                                             
; 1204 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1203| 
        ldp       @CL84,DP
        mpyi      359,ir0               ; |1203| 
        ldiu      @CL84,ar0             ; |1203| 
        ldiu      0,r0                  ; |1203| 
        sti       r0,*+ar0(ir0)         ; |1203| 
        bu        L264                  ; |1090| 
;*      Branch Occurs to L264           ; |1090| 
L263:        
	.line	115
;----------------------------------------------------------------------
; 1205 | PORTCFG[port].N_retry = 3;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1205| 
        ldp       @CL84,DP
        mpyi      359,ir0               ; |1205| 
        ldiu      @CL84,ar0             ; |1205| 
        ldiu      3,r0                  ; |1205| 
        sti       r0,*+ar0(ir0)         ; |1205| 
L264:        
	.line	117
;----------------------------------------------------------------------
; 1207 | PORTCFG[port].poll_time = 100;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1207| 
        ldp       @CL83,DP
        mpyi      359,ir0               ; |1207| 
        ldiu      @CL83,ar0             ; |1207| 
        ldiu      100,r0                ; |1207| 
        sti       r0,*+ar0(ir0)         ; |1207| 
	.line	118
;----------------------------------------------------------------------
; 1208 | PORTCFG[port].timeout = 1;                                             
;----------------------------------------------------------------------
        ldp       @CL146,DP
        ldiu      *+fp(2),ir0           ; |1208| 
        ldiu      @CL146,ar0            ; |1208| 
        mpyi      359,ir0               ; |1208| 
        ldiu      1,r0                  ; |1208| 
        sti       r0,*+ar0(ir0)         ; |1208| 
	.line	120
;----------------------------------------------------------------------
; 1210 | VAR_Initialize(&PORTCFG[port].EOT_Delay, c_not_used, u_generic_not_used
;     | , 100.0, 100.0, var_no_alarm);                                         
;----------------------------------------------------------------------
        ldiu      250,rs                ; |1210| 
        ldiu      4,re                  ; |1210| 
        ldp       @CL78,DP
        ldiu      *+fp(2),ar2           ; |1210| 
        mpyi      359,ar2               ; |1210| 
        addi      @CL78,ar2             ; |1210| Unsigned
        ldp       @CL141,DP
        ldiu      250,rc                ; |1210| 
        ldiu      @CL141,r0             ; |1210| 
        ldfu      1.0000000000e+02,f3   ; |1210| 
        ldfu      1.0000000000e+02,f2   ; |1210| 
        callu     r0                    ; far call to _VAR_Initialize	; |1210| 
                                        ; |1210| Far Call Occurs
	.line	121
;----------------------------------------------------------------------
; 1211 | VAR_Initialize(&PORTCFG[port].PREFIX, c_time, u_mfgr_specific_ct, 100.0
;     | , 100.0, var_no_alarm);                                                
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      *+fp(2),ar2           ; |1211| 
        mpyi      359,ar2               ; |1211| 
        addi      @CL73,ar2             ; |1211| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1211| 
        ldiu      243,rs                ; |1211| 
        ldiu      4,re                  ; |1211| 
        ldiu      70,rc                 ; |1211| 
        ldfu      1.0000000000e+02,f3   ; |1211| 
        ldfu      1.0000000000e+02,f2   ; |1211| 
        callu     r0                    ; far call to _VAR_Initialize	; |1211| 
                                        ; |1211| Far Call Occurs
	.line	122
;----------------------------------------------------------------------
; 1212 | VAR_Initialize(&PORTCFG[port].SUFFIX, c_time, u_mfgr_specific_ct, 100.0
;     | , 100.0, var_no_alarm);                                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1212| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1212| 
        addi      @CL76,ar2             ; |1212| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1212| 
        ldiu      243,rs                ; |1212| 
        ldiu      4,re                  ; |1212| 
        ldiu      70,rc                 ; |1212| 
        ldfu      1.0000000000e+02,f3   ; |1212| 
        ldfu      1.0000000000e+02,f2   ; |1212| 
        callu     r0                    ; far call to _VAR_Initialize	; |1212| 
                                        ; |1212| Far Call Occurs
	.line	127
;----------------------------------------------------------------------
; 1217 | VAR_Initialize(&PORTCFG[port].NETWDOG,          c_time,
;     |    u_mfgr_specific_ct,   100.0, 100.0, var_no_alarm);                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1217| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1217| 
        addi      @CL68,ar2             ; |1217| Unsigned
        ldiu      243,rs                ; |1217| 
        ldiu      4,re                  ; |1217| 
        ldp       @CL141,DP
        ldiu      70,rc                 ; |1217| 
        ldiu      @CL141,r0             ; |1217| 
        ldfu      1.0000000000e+02,f3   ; |1217| 
        ldfu      1.0000000000e+02,f2   ; |1217| 
        callu     r0                    ; far call to _VAR_Initialize	; |1217| 
                                        ; |1217| Far Call Occurs
	.line	128
;----------------------------------------------------------------------
; 1218 | VAR_Initialize(&PORTCFG[port].Retry_Time,   c_time,                   u
;     | _time_sec,               100.0, 100.0, var_no_alarm);                  
;----------------------------------------------------------------------
        ldp       @CL81,DP
        ldiu      *+fp(2),ar2           ; |1218| 
        mpyi      359,ar2               ; |1218| 
        addi      @CL81,ar2             ; |1218| Unsigned
        ldp       @CL141,DP
        ldiu      51,rs                 ; |1218| 
        ldiu      4,re                  ; |1218| 
        ldiu      70,rc                 ; |1218| 
        ldiu      @CL141,r0             ; |1218| 
        ldfu      1.0000000000e+02,f3   ; |1218| 
        ldfu      1.0000000000e+02,f2   ; |1218| 
        callu     r0                    ; far call to _VAR_Initialize	; |1218| 
                                        ; |1218| Far Call Occurs
	.line	129
;----------------------------------------------------------------------
; 1219 | VAR_Initialize(&PORTCFG[port].Num_Retry,    c_not_classified, u_mfgr_sp
;     | ecific_none, 1.0,   1.0,   var_no_alarm|var_round);                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1219| 
        ldp       @CL147,DP
        mpyi      359,ar2               ; |1219| 
        addi      @CL147,ar2            ; |1219| Unsigned
        ldp       @CL141,DP
        ldiu      @CL141,r0             ; |1219| 
        ldiu      240,rs                ; |1219| 
        ldiu      260,re                ; |1219| 
        ldiu      0,rc                  ; |1219| 
        ldfu      1.0000000000e+00,f3   ; |1219| 
        ldfu      1.0000000000e+00,f2   ; |1219| 
        callu     r0                    ; far call to _VAR_Initialize	; |1219| 
                                        ; |1219| Far Call Occurs
	.line	130
;----------------------------------------------------------------------
; 1220 | VAR_Update(&PORTCFG[port].Num_Retry, 3.00, 0, 0);                      
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1220| 
        ldiu      @CL70,r0              ; |1220| 
        ldp       @CL147,DP
        mpyi      359,ar2               ; |1220| 
        addi      @CL147,ar2            ; |1220| Unsigned
        ldp       @CL148+0,DP
        ldfu      @CL148+0,f2           ; |1220| 40b float hi half
        ldp       @CL148+1,DP
        ldiu      0,rc                  ; |1220| 
        ldiu      @CL148+1,r2           ; |1220| 40b float lo half
        ldiu      0,r3                  ; |1220| 
        callu     r0                    ; far call to _VAR_Update	; |1220| 
                                        ; |1220| Far Call Occurs
	.line	131
;----------------------------------------------------------------------
; 1221 | sprintf(PORTCFG[port].Slave_ID.name,        "C%d Slave ID",         por
;     | t+1);        //R337                                                    
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1221| 
        addi      *+fp(2),r0            ; |1221| 
        ldp       @CL150,DP
        push      r0                    ; |1221| 
        ldiu      @CL150,r1             ; |1221| 
        push      r1                    ; |1221| 
        ldiu      *+fp(2),ar2           ; |1221| 
        ldp       @CL149,DP
        mpyi      359,ar2               ; |1221| 
        addi      @CL149,ar2            ; |1221| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1221| 
        callu     r0                    ; far call to _sprintf	; |1221| 
                                        ; |1221| Far Call Occurs
        subi      2,sp                  ; |1221| 
	.line	132
;----------------------------------------------------------------------
; 1222 | PORTCFG[port].Slave_ID.name_r = 337;                                   
;----------------------------------------------------------------------
        ldp       @CL152,DP
        ldiu      @CL152,ar0            ; |1222| 
        ldiu      *+fp(2),ir0           ; |1222| 
        mpyi      359,ir0               ; |1222| 
        ldiu      337,r0                ; |1222| 
        sti       r0,*+ar0(ir0)         ; |1222| 
	.line	134
;----------------------------------------------------------------------
; 1224 | sprintf(PORTCFG[port].Baud_Rate.name,   "C%d Baud Rate",        port+1)
;     | ;        //R334                                                        
;----------------------------------------------------------------------
        ldp       @CL154,DP
        ldiu      1,r0                  ; |1224| 
        ldiu      @CL154,r1             ; |1224| 
        addi      *+fp(2),r0            ; |1224| 
        push      r0                    ; |1224| 
        push      r1                    ; |1224| 
        ldiu      *+fp(2),ar2           ; |1224| 
        ldp       @CL153,DP
        mpyi      359,ar2               ; |1224| 
        addi      @CL153,ar2            ; |1224| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1224| 
        callu     r0                    ; far call to _sprintf	; |1224| 
                                        ; |1224| Far Call Occurs
        subi      2,sp                  ; |1224| 
	.line	135
;----------------------------------------------------------------------
; 1225 | PORTCFG[port].Baud_Rate.name_r = 334;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1225| 
        ldp       @CL155,DP
        mpyi      359,ir0               ; |1225| 
        ldiu      @CL155,ar0            ; |1225| 
        ldiu      334,r0                ; |1225| 
        sti       r0,*+ar0(ir0)         ; |1225| 
	.line	137
;----------------------------------------------------------------------
; 1227 | sprintf(PORTCFG[port].EOT_Delay.name,   "C%d Reply Delay",      port+1)
;     | ;        //R94                                                         
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1227| 
        ldp       @CL157,DP
        addi      *+fp(2),r0            ; |1227| 
        ldiu      @CL157,r1             ; |1227| 
        push      r0                    ; |1227| 
        push      r1                    ; |1227| 
        ldiu      *+fp(2),ar2           ; |1227| 
        ldp       @CL156,DP
        mpyi      359,ar2               ; |1227| 
        addi      @CL156,ar2            ; |1227| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1227| 
        callu     r0                    ; far call to _sprintf	; |1227| 
                                        ; |1227| Far Call Occurs
        subi      2,sp                  ; |1227| 
	.line	138
;----------------------------------------------------------------------
; 1228 | PORTCFG[port].EOT_Delay.name_r = 94;                                   
;----------------------------------------------------------------------
        ldp       @CL158,DP
        ldiu      *+fp(2),ir0           ; |1228| 
        ldiu      @CL158,ar0            ; |1228| 
        mpyi      359,ir0               ; |1228| 
        ldiu      94,r0                 ; |1228| 
        sti       r0,*+ar0(ir0)         ; |1228| 
	.line	140
;----------------------------------------------------------------------
; 1230 | sprintf(PORTCFG[port].PREFIX.name,              "C%d Prefix",
;     |  port+1);        //R335                                                
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1230| 
        ldp       @CL160,DP
        addi      *+fp(2),r0            ; |1230| 
        ldiu      @CL160,r1             ; |1230| 
        push      r0                    ; |1230| 
        push      r1                    ; |1230| 
        ldiu      *+fp(2),ar2           ; |1230| 
        ldp       @CL159,DP
        mpyi      359,ar2               ; |1230| 
        addi      @CL159,ar2            ; |1230| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1230| 
        callu     r0                    ; far call to _sprintf	; |1230| 
                                        ; |1230| Far Call Occurs
        subi      2,sp                  ; |1230| 
	.line	141
;----------------------------------------------------------------------
; 1231 | PORTCFG[port].PREFIX.name_r = 335;                                     
;----------------------------------------------------------------------
        ldp       @CL161,DP
        ldiu      *+fp(2),ir0           ; |1231| 
        ldiu      @CL161,ar0            ; |1231| 
        mpyi      359,ir0               ; |1231| 
        ldiu      335,r0                ; |1231| 
        sti       r0,*+ar0(ir0)         ; |1231| 
	.line	143
;----------------------------------------------------------------------
; 1233 | sprintf(PORTCFG[port].SUFFIX.name,              "C%d Suffix",
;     |  port+1);        //R338                                                
;----------------------------------------------------------------------
        ldp       @CL163,DP
        ldiu      @CL163,r1             ; |1233| 
        ldiu      1,r0                  ; |1233| 
        ldp       @CL162,DP
        addi      *+fp(2),r0            ; |1233| 
        push      r0                    ; |1233| 
        push      r1                    ; |1233| 
        ldiu      *+fp(2),ar2           ; |1233| 
        mpyi      359,ar2               ; |1233| 
        addi      @CL162,ar2            ; |1233| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1233| 
        callu     r0                    ; far call to _sprintf	; |1233| 
                                        ; |1233| Far Call Occurs
        subi      2,sp                  ; |1233| 
	.line	144
;----------------------------------------------------------------------
; 1234 | PORTCFG[port].SUFFIX.name_r = 338;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1234| 
        ldp       @CL164,DP
        mpyi      359,ir0               ; |1234| 
        ldiu      @CL164,ar0            ; |1234| 
        ldiu      338,r0                ; |1234| 
        sti       r0,*+ar0(ir0)         ; |1234| 
	.line	146
;----------------------------------------------------------------------
; 1236 | sprintf(PORTCFG[port].NETWDOG.name,     "C%d Watchdog",         port+1)
;     | ;        //R339                                                        
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1236| 
        addi      *+fp(2),r0            ; |1236| 
        ldp       @CL166,DP
        push      r0                    ; |1236| 
        ldiu      @CL166,r1             ; |1236| 
        push      r1                    ; |1236| 
        ldiu      *+fp(2),ar2           ; |1236| 
        ldp       @CL165,DP
        mpyi      359,ar2               ; |1236| 
        addi      @CL165,ar2            ; |1236| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1236| 
        callu     r0                    ; far call to _sprintf	; |1236| 
                                        ; |1236| Far Call Occurs
        subi      2,sp                  ; |1236| 
	.line	147
;----------------------------------------------------------------------
; 1237 | PORTCFG[port].NETWDOG.name_r = 339;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1237| 
        ldp       @CL167,DP
        mpyi      359,ir0               ; |1237| 
        ldiu      @CL167,ar0            ; |1237| 
        ldiu      339,r0                ; |1237| 
        sti       r0,*+ar0(ir0)         ; |1237| 
	.line	149
;----------------------------------------------------------------------
; 1239 | sprintf(PORTCFG[port].Retry_Time.name,  "C%d Retry Time",       port+1)
;     | ;        //R336                                                        
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1239| 
        ldp       @CL169,DP
        addi      *+fp(2),r0            ; |1239| 
        ldiu      @CL169,r1             ; |1239| 
        push      r0                    ; |1239| 
        push      r1                    ; |1239| 
        ldiu      *+fp(2),ar2           ; |1239| 
        ldp       @CL168,DP
        mpyi      359,ar2               ; |1239| 
        addi      @CL168,ar2            ; |1239| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1239| 
        callu     r0                    ; far call to _sprintf	; |1239| 
                                        ; |1239| Far Call Occurs
        subi      2,sp                  ; |1239| 
	.line	150
;----------------------------------------------------------------------
; 1240 | PORTCFG[port].Retry_Time.name_r = 336;                                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1240| 
        ldp       @CL170,DP
        mpyi      359,ir0               ; |1240| 
        ldiu      @CL170,ar0            ; |1240| 
        ldiu      336,r0                ; |1240| 
        sti       r0,*+ar0(ir0)         ; |1240| 
	.line	152
;----------------------------------------------------------------------
; 1242 | sprintf(PORTCFG[port].Num_Retry.name,   "C%d #Retries",         port+1)
;     | ;        //101                                                         
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1242| 
        addi      *+fp(2),r0            ; |1242| 
        ldp       @CL172,DP
        push      r0                    ; |1242| 
        ldiu      @CL172,r1             ; |1242| 
        push      r1                    ; |1242| 
        ldiu      *+fp(2),ar2           ; |1242| 
        ldp       @CL171,DP
        mpyi      359,ar2               ; |1242| 
        addi      @CL171,ar2            ; |1242| Unsigned
        ldp       @CL151,DP
        ldiu      @CL151,r0             ; |1242| 
        callu     r0                    ; far call to _sprintf	; |1242| 
                                        ; |1242| Far Call Occurs
        subi      2,sp                  ; |1242| 
	.line	153
;----------------------------------------------------------------------
; 1243 | PORTCFG[port].Num_Retry.name_r = 101;                                  
;----------------------------------------------------------------------
        ldp       @CL173,DP
        ldiu      *+fp(2),ir0           ; |1243| 
        ldiu      @CL173,ar0            ; |1243| 
        mpyi      359,ir0               ; |1243| 
        ldiu      101,r0                ; |1243| 
        sti       r0,*+ar0(ir0)         ; |1243| 
	.line	156
;----------------------------------------------------------------------
; 1246 | PORTCFG[port].EOT_Delay.bound_hi_set    = 255.0;                       
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1246| 
        ldp       @CL174,DP
        mpyi      359,ir0               ; |1246| 
        ldiu      @CL174,ar0            ; |1246| 
        ldfu      2.5500000000e+02,f0   ; |1246| 
        stf       f0,*+ar0(ir0)         ; |1246| 
	.line	157
;----------------------------------------------------------------------
; 1247 | PORTCFG[port].PREFIX.bound_hi_set               = 255.0;               
;----------------------------------------------------------------------
        ldp       @CL175,DP
        ldiu      @CL175,ar0            ; |1247| 
        ldiu      *+fp(2),ir0           ; |1247| 
        mpyi      359,ir0               ; |1247| 
        ldfu      2.5500000000e+02,f0   ; |1247| 
        stf       f0,*+ar0(ir0)         ; |1247| 
	.line	158
;----------------------------------------------------------------------
; 1248 | PORTCFG[port].SUFFIX.bound_hi_set               = 255.0;               
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1248| 
        ldp       @CL176,DP
        mpyi      359,ir0               ; |1248| 
        ldiu      @CL176,ar0            ; |1248| 
        ldfu      2.5500000000e+02,f0   ; |1248| 
        stf       f0,*+ar0(ir0)         ; |1248| 
	.line	159
;----------------------------------------------------------------------
; 1249 | PORTCFG[port].NETWDOG.bound_hi_set              = 255.0;               
;----------------------------------------------------------------------
        ldp       @CL177,DP
        ldiu      *+fp(2),ir0           ; |1249| 
        mpyi      359,ir0               ; |1249| 
        ldiu      @CL177,ar0            ; |1249| 
        ldfu      2.5500000000e+02,f0   ; |1249| 
        stf       f0,*+ar0(ir0)         ; |1249| 
	.line	160
;----------------------------------------------------------------------
; 1250 | PORTCFG[port].Retry_Time.bound_hi_set   = 10.0;                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1250| 
        ldp       @CL178,DP
        mpyi      359,ir0               ; |1250| 
        ldiu      @CL178,ar0            ; |1250| 
        ldfu      1.0000000000e+01,f0   ; |1250| 
        stf       f0,*+ar0(ir0)         ; |1250| 
	.line	161
;----------------------------------------------------------------------
; 1251 | PORTCFG[port].EOT_Delay.bound_lo_set        = 0.0;                     
;----------------------------------------------------------------------
        ldp       @CL179,DP
        ldiu      *+fp(2),ir0           ; |1251| 
        ldiu      @CL179,ar0            ; |1251| 
        mpyi      359,ir0               ; |1251| 
        ldfu      0.0000000000e+00,f0   ; |1251| 
        stf       f0,*+ar0(ir0)         ; |1251| 
	.line	162
;----------------------------------------------------------------------
; 1252 | PORTCFG[port].PREFIX.bound_lo_set               = 0.0;                 
;----------------------------------------------------------------------
        ldp       @CL180,DP
        ldiu      @CL180,ar0            ; |1252| 
        ldiu      *+fp(2),ir0           ; |1252| 
        mpyi      359,ir0               ; |1252| 
        ldfu      0.0000000000e+00,f0   ; |1252| 
        stf       f0,*+ar0(ir0)         ; |1252| 
	.line	163
;----------------------------------------------------------------------
; 1253 | PORTCFG[port].SUFFIX.bound_lo_set               = 0.0;                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1253| 
        ldp       @CL181,DP
        mpyi      359,ir0               ; |1253| 
        ldiu      @CL181,ar0            ; |1253| 
        ldfu      0.0000000000e+00,f0   ; |1253| 
        stf       f0,*+ar0(ir0)         ; |1253| 
	.line	164
;----------------------------------------------------------------------
; 1254 | PORTCFG[port].NETWDOG.bound_lo_set              = 1.5;                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1254| 
        ldp       @CL182,DP
        mpyi      359,ir0               ; |1254| 
        ldiu      @CL182,ar0            ; |1254| 
        ldfu      1.5000000000e+00,f0   ; |1254| 
        stf       f0,*+ar0(ir0)         ; |1254| 
	.line	165
;----------------------------------------------------------------------
; 1255 | PORTCFG[port].Retry_Time.bound_lo_set   = 0.1;                         
;----------------------------------------------------------------------
        ldp       @CL183,DP
        ldiu      @CL183,ar0            ; |1255| 
        ldiu      *+fp(2),ir0           ; |1255| 
        ldp       @CL184,DP
        mpyi      359,ir0               ; |1255| 
        ldfu      @CL184,f0             ; |1255| 
        stf       f0,*+ar0(ir0)         ; |1255| 
	.line	167
;----------------------------------------------------------------------
; 1257 | if ((SA && B202_PORT && (port==0)) || (!SA && (port==4)))              
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1257| 
        ldiu      *ar0,r0               ; |1257| 
        cmpi      0,r0                  ; |1257| 
        beq       L268                  ; |1257| 
;*      Branch Occurs to L268           ; |1257| 
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |1257| 
        ldiu      32,r0                 ; |1257| 
        tstb3     *ar0,r0               ; |1257| 
        bne       L268                  ; |1257| 
;*      Branch Occurs to L268           ; |1257| 
        ldiu      *+fp(2),r0            ; |1257| 
        cmpi      0,r0                  ; |1257| 
        beq       L270                  ; |1257| 
;*      Branch Occurs to L270           ; |1257| 
L268:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1257| 
        ldiu      *ar0,r0               ; |1257| 
        cmpi      0,r0                  ; |1257| 
        bne       L271                  ; |1257| 
;*      Branch Occurs to L271           ; |1257| 
        ldiu      *+fp(2),r0            ; |1257| 
        cmpi      4,r0                  ; |1257| 
        bne       L271                  ; |1257| 
;*      Branch Occurs to L271           ; |1257| 
L270:        
	.line	169
;----------------------------------------------------------------------
; 1259 | LOOP_ENABLED.val        = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL185,DP
        ldiu      @CL185,ar0            ; |1259| 
        ldiu      1,r0                  ; |1259| 
        sti       r0,*ar0               ; |1259| 
	.line	170
;----------------------------------------------------------------------
; 1260 | AO[0].MANUAL            = FALSE;                                       
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1260| 
        ldiu      0,r0                  ; |1260| 
        sti       r0,*ar0               ; |1260| 
	.line	172
;----------------------------------------------------------------------
; 1262 | VAR_Update(&PORTCFG[port].Slave_ID, 0.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1262| 
        ldiu      @CL70,r0              ; |1262| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1262| 
        addi      @CL133,ar2            ; |1262| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1262| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |1262| 
        ldiu      @CL72+1,r2            ; |1262| 40b float lo half
        ldiu      0,r3                  ; |1262| 
        callu     r0                    ; far call to _VAR_Update	; |1262| 
                                        ; |1262| Far Call Occurs
	.line	174
;----------------------------------------------------------------------
; 1264 | PORT[port].Slave                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |1264| 
        ldiu      *+fp(2),ir0           ; |1264| 
        mpyi      71,ir0                ; |1264| 
        ldiu      0,r0                  ; |1264| 
        sti       r0,*+ar0(ir0)         ; |1264| 
	.line	175
;----------------------------------------------------------------------
; 1265 | PORTCFG[port].Parity    = 'O'<<8;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1265| 
        ldp       @CL50,DP
        mpyi      359,ir0               ; |1265| 
        ldiu      @CL50,ar0             ; |1265| 
        ldiu      20224,r0              ; |1265| 
        sti       r0,*+ar0(ir0)         ; |1265| 
	.line	177
;----------------------------------------------------------------------
; 1267 | VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_H_EOT,     0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1267| 
        ldiu      *+fp(2),ar2           ; |1267| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1267| 
        addi      @CL78,ar2             ; |1267| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1267| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      @CL136+1,r2           ; |1267| 40b float lo half
        ldiu      0,rc                  ; |1267| 
        ldiu      0,r3                  ; |1267| 
        callu     r0                    ; far call to _VAR_Update	; |1267| 
                                        ; |1267| Far Call Occurs
	.line	178
;----------------------------------------------------------------------
; 1268 | VAR_Update(&PORTCFG[port].PREFIX,         DEFAULT_H_PREFIX,  0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1268| 
        ldiu      *+fp(2),ar2           ; |1268| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1268| 
        addi      @CL73,ar2             ; |1268| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1268| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      @CL74+1,r2            ; |1268| 40b float lo half
        ldiu      0,rc                  ; |1268| 
        ldiu      0,r3                  ; |1268| 
        callu     r0                    ; far call to _VAR_Update	; |1268| 
                                        ; |1268| Far Call Occurs
	.line	179
;----------------------------------------------------------------------
; 1269 | VAR_Update(&PORTCFG[port].SUFFIX,         DEFAULT_H_SUFFIX,  0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1269| 
        ldiu      *+fp(2),ar2           ; |1269| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1269| 
        addi      @CL76,ar2             ; |1269| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1269| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      @CL82+1,r2            ; |1269| 40b float lo half
        ldiu      0,rc                  ; |1269| 
        ldiu      0,r3                  ; |1269| 
        callu     r0                    ; far call to _VAR_Update	; |1269| 
                                        ; |1269| Far Call Occurs
	.line	180
;----------------------------------------------------------------------
; 1270 | VAR_Update(&PORTCFG[port].NETWDOG,        DEFAULT_H_NETWDOG, 0, 0);    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1270| 
        ldiu      *+fp(2),ar2           ; |1270| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1270| 
        addi      @CL68,ar2             ; |1270| Unsigned
        ldp       @CL136+0,DP
        ldfu      @CL136+0,f2           ; |1270| 40b float hi half
        ldp       @CL136+1,DP
        ldiu      0,rc                  ; |1270| 
        ldiu      @CL136+1,r2           ; |1270| 40b float lo half
        ldiu      0,r3                  ; |1270| 
        callu     r0                    ; far call to _VAR_Update	; |1270| 
                                        ; |1270| Far Call Occurs
	.line	181
;----------------------------------------------------------------------
; 1271 | VAR_Update(&PORTCFG[port].Retry_Time, 0.500,                     0, 0);
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1271| 
        ldiu      @CL70,r0              ; |1271| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1271| 
        addi      @CL81,ar2             ; |1271| Unsigned
        ldp       @CL82+0,DP
        ldfu      @CL82+0,f2            ; |1271| 40b float hi half
        ldp       @CL82+1,DP
        ldiu      0,rc                  ; |1271| 
        ldiu      @CL82+1,r2            ; |1271| 40b float lo half
        ldiu      0,r3                  ; |1271| 
        callu     r0                    ; far call to _VAR_Update	; |1271| 
                                        ; |1271| Far Call Occurs
	.line	183
;----------------------------------------------------------------------
; 1273 | HCHANGE[0]              = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL187,DP
        ldiu      @CL187,ar0            ; |1273| 
        ldiu      1,r0                  ; |1273| 
        sti       r0,*ar0               ; |1273| 
	.line	184
;----------------------------------------------------------------------
; 1274 | HCHANGE[1]              = TRUE;                                        
;----------------------------------------------------------------------
        ldp       @CL188,DP
        ldiu      @CL188,ar0            ; |1274| 
        sti       r0,*ar0               ; |1274| 
	.line	185
;----------------------------------------------------------------------
; 1275 | NUM_PREAMBLE_MS = 5;                                                   
;----------------------------------------------------------------------
        ldp       @CL189,DP
        ldiu      @CL189,ar0            ; |1275| 
        ldiu      5,r0                  ; |1275| 
        sti       r0,*ar0               ; |1275| 
	.line	186
;----------------------------------------------------------------------
; 1276 | NUM_PREAMBLE_SM = 5;                                                   
;----------------------------------------------------------------------
        ldp       @CL190,DP
        ldiu      @CL190,ar0            ; |1276| 
        sti       r0,*ar0               ; |1276| 
	.line	187
;----------------------------------------------------------------------
; 1277 | HCHANGE_COUNTER = 0;                                                   
;----------------------------------------------------------------------
        ldp       @CL191,DP
        ldiu      @CL191,ar0            ; |1277| 
        ldiu      0,r0                  ; |1277| 
        sti       r0,*ar0               ; |1277| 
        bu        L275                  ; |1090| 
;*      Branch Occurs to L275           ; |1090| 
L271:        
	.line	189
;----------------------------------------------------------------------
; 1279 | else if (!SA && (port==5))                                             
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1279| 
        ldiu      *ar0,r0               ; |1279| 
        cmpi      0,r0                  ; |1279| 
        bne       L274                  ; |1279| 
;*      Branch Occurs to L274           ; |1279| 
        ldiu      *+fp(2),r0            ; |1279| 
        cmpi      5,r0                  ; |1279| 
        bne       L274                  ; |1279| 
;*      Branch Occurs to L274           ; |1279| 
	.line	191
;----------------------------------------------------------------------
; 1281 | VAR_Update(&PORTCFG[port].Slave_ID, 0.0, 0, 0);                        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      r0,ar2
        ldiu      @CL70,r0              ; |1281| 
        ldp       @CL133,DP
        mpyi      359,ar2               ; |1281| 
        addi      @CL133,ar2            ; |1281| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1281| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      0,rc                  ; |1281| 
        ldiu      @CL72+1,r2            ; |1281| 40b float lo half
        ldiu      0,r3                  ; |1281| 
        callu     r0                    ; far call to _VAR_Update	; |1281| 
                                        ; |1281| Far Call Occurs
	.line	193
;----------------------------------------------------------------------
; 1283 | PORT[port].Slave                = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1283| 
        ldiu      @CL102,ar0            ; |1283| 
        mpyi      71,ir0                ; |1283| 
        ldiu      0,r0                  ; |1283| 
        sti       r0,*+ar0(ir0)         ; |1283| 
	.line	194
;----------------------------------------------------------------------
; 1284 | PORTCFG[port].Parity    = 'N'<<8;                                      
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      *+fp(2),ir0           ; |1284| 
        mpyi      359,ir0               ; |1284| 
        ldiu      @CL50,ar0             ; |1284| 
        ldiu      19968,r0              ; |1284| 
        sti       r0,*+ar0(ir0)         ; |1284| 
	.line	196
;----------------------------------------------------------------------
; 1286 | VAR_Update(&PORTCFG[port].EOT_Delay,  DEFAULT_EOT,              0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1286| 
        ldiu      *+fp(2),ar2           ; |1286| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1286| 
        addi      @CL78,ar2             ; |1286| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |1286| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      @CL79+1,r2            ; |1286| 40b float lo half
        ldiu      0,rc                  ; |1286| 
        ldiu      0,r3                  ; |1286| 
        callu     r0                    ; far call to _VAR_Update	; |1286| 
                                        ; |1286| Far Call Occurs
	.line	197
;----------------------------------------------------------------------
; 1287 | VAR_Update(&PORTCFG[port].PREFIX,         DEFAULT_PREFIX,       0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1287| 
        ldiu      @CL70,r0              ; |1287| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1287| 
        addi      @CL73,ar2             ; |1287| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1287| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |1287| 
        ldiu      @CL74+1,r2            ; |1287| 40b float lo half
        ldiu      0,r3                  ; |1287| 
        callu     r0                    ; far call to _VAR_Update	; |1287| 
                                        ; |1287| Far Call Occurs
	.line	198
;----------------------------------------------------------------------
; 1288 | VAR_Update(&PORTCFG[port].SUFFIX,         DEFAULT_SUFFIX,       0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1288| 
        ldiu      *+fp(2),ar2           ; |1288| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1288| 
        addi      @CL76,ar2             ; |1288| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1288| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1288| 40b float lo half
        ldiu      0,rc                  ; |1288| 
        ldiu      0,r3                  ; |1288| 
        callu     r0                    ; far call to _VAR_Update	; |1288| 
                                        ; |1288| Far Call Occurs
	.line	199
;----------------------------------------------------------------------
; 1289 | VAR_Update(&PORTCFG[port].NETWDOG,        DEFAULT_NETWDOG,      0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1289| 
        ldiu      *+fp(2),ar2           ; |1289| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1289| 
        addi      @CL68,ar2             ; |1289| Unsigned
        ldp       @CL69+0,DP
        ldfu      @CL69+0,f2            ; |1289| 40b float hi half
        ldp       @CL69+1,DP
        ldiu      @CL69+1,r2            ; |1289| 40b float lo half
        ldiu      0,rc                  ; |1289| 
        ldiu      0,r3                  ; |1289| 
        callu     r0                    ; far call to _VAR_Update	; |1289| 
                                        ; |1289| Far Call Occurs
	.line	200
;----------------------------------------------------------------------
; 1290 | VAR_Update(&PORTCFG[port].Retry_Time, 2.00,                     0, 0); 
; 1292 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1290| 
        ldp       @CL81,DP
        ldiu      *+fp(2),ar2           ; |1290| 
        mpyi      359,ar2               ; |1290| 
        addi      @CL81,ar2             ; |1290| Unsigned
        ldp       @CL138+0,DP
        ldfu      @CL138+0,f2           ; |1290| 40b float hi half
        ldp       @CL138+1,DP
        ldiu      @CL138+1,r2           ; |1290| 40b float lo half
        ldiu      0,rc                  ; |1290| 
        ldiu      0,r3                  ; |1290| 
        callu     r0                    ; far call to _VAR_Update	; |1290| 
                                        ; |1290| Far Call Occurs
        bu        L275                  ; |1090| 
;*      Branch Occurs to L275           ; |1090| 
L274:        
	.line	204
;----------------------------------------------------------------------
; 1294 | VAR_Update(&PORTCFG[port].EOT_Delay, DEFAULT_EOT,        0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1294| 
        ldiu      @CL70,r0              ; |1294| 
        ldp       @CL78,DP
        mpyi      359,ar2               ; |1294| 
        addi      @CL78,ar2             ; |1294| Unsigned
        ldp       @CL79+0,DP
        ldfu      @CL79+0,f2            ; |1294| 40b float hi half
        ldp       @CL79+1,DP
        ldiu      0,rc                  ; |1294| 
        ldiu      @CL79+1,r2            ; |1294| 40b float lo half
        ldiu      0,r3                  ; |1294| 
        callu     r0                    ; far call to _VAR_Update	; |1294| 
                                        ; |1294| Far Call Occurs
	.line	205
;----------------------------------------------------------------------
; 1295 | VAR_Update(&PORTCFG[port].PREFIX,        DEFAULT_PREFIX, 0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1295| 
        ldiu      *+fp(2),ar2           ; |1295| 
        ldp       @CL73,DP
        mpyi      359,ar2               ; |1295| 
        addi      @CL73,ar2             ; |1295| Unsigned
        ldp       @CL74+0,DP
        ldfu      @CL74+0,f2            ; |1295| 40b float hi half
        ldp       @CL74+1,DP
        ldiu      0,rc                  ; |1295| 
        ldiu      @CL74+1,r2            ; |1295| 40b float lo half
        ldiu      0,r3                  ; |1295| 
        callu     r0                    ; far call to _VAR_Update	; |1295| 
                                        ; |1295| Far Call Occurs
	.line	206
;----------------------------------------------------------------------
; 1296 | VAR_Update(&PORTCFG[port].SUFFIX,        DEFAULT_SUFFIX, 0, 0);        
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1296| 
        ldiu      *+fp(2),ar2           ; |1296| 
        ldp       @CL76,DP
        mpyi      359,ar2               ; |1296| 
        addi      @CL76,ar2             ; |1296| Unsigned
        ldp       @CL72+0,DP
        ldfu      @CL72+0,f2            ; |1296| 40b float hi half
        ldp       @CL72+1,DP
        ldiu      @CL72+1,r2            ; |1296| 40b float lo half
        ldiu      0,rc                  ; |1296| 
        ldiu      0,r3                  ; |1296| 
        callu     r0                    ; far call to _VAR_Update	; |1296| 
                                        ; |1296| Far Call Occurs
	.line	208
;----------------------------------------------------------------------
; 1298 | PORT[port].Slave         = 1;                                          
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1298| 
        ldiu      @CL102,ar0            ; |1298| 
        mpyi      71,ir0                ; |1298| 
        ldiu      1,r0                  ; |1298| 
        sti       r0,*+ar0(ir0)         ; |1298| 
	.line	209
;----------------------------------------------------------------------
; 1299 | PORTCFG[port].Parity = 'N'<<8;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |1299| 
        ldp       @CL50,DP
        mpyi      359,ir0               ; |1299| 
        ldiu      @CL50,ar0             ; |1299| 
        ldiu      19968,r0              ; |1299| 
        sti       r0,*+ar0(ir0)         ; |1299| 
	.line	211
;----------------------------------------------------------------------
; 1301 | VAR_Update(&PORTCFG[port].Slave_ID,   PORT[port].Slave, 0, 0);         
;----------------------------------------------------------------------
        ldp       @CL102,DP
        ldiu      *+fp(2),ir0           ; |1301| 
        ldiu      @CL102,ar0            ; |1301| 
        ldp       @CL133,DP
        mpyi      71,ir0                ; |1301| 
        ldiu      *+fp(2),ar2           ; |1301| 
        mpyi      359,ar2               ; |1301| 
        addi      @CL133,ar2            ; |1301| Unsigned
        ldp       @CL70,DP
        ldiu      *+ar0(ir0),r1         ; |1301| 
        ldiu      @CL70,r0              ; |1301| 
        float     r1,f2                 ; |1301| 
        ldiu      0,rc                  ; |1301| 
        ldiu      0,r3                  ; |1301| 
        callu     r0                    ; far call to _VAR_Update	; |1301| 
                                        ; |1301| Far Call Occurs
	.line	212
;----------------------------------------------------------------------
; 1302 | VAR_Update(&PORTCFG[port].NETWDOG,        DEFAULT_NETWDOG,  0, 0);     
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      @CL70,r0              ; |1302| 
        ldiu      *+fp(2),ar2           ; |1302| 
        ldp       @CL68,DP
        mpyi      359,ar2               ; |1302| 
        addi      @CL68,ar2             ; |1302| Unsigned
        ldp       @CL69+0,DP
        ldfu      @CL69+0,f2            ; |1302| 40b float hi half
        ldp       @CL69+1,DP
        ldiu      @CL69+1,r2            ; |1302| 40b float lo half
        ldiu      0,rc                  ; |1302| 
        ldiu      0,r3                  ; |1302| 
        callu     r0                    ; far call to _VAR_Update	; |1302| 
                                        ; |1302| Far Call Occurs
	.line	213
;----------------------------------------------------------------------
; 1303 | VAR_Update(&PORTCFG[port].Retry_Time, 0.400,                    0, 0); 
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      *+fp(2),ar2           ; |1303| 
        ldiu      @CL70,r0              ; |1303| 
        ldp       @CL81,DP
        mpyi      359,ar2               ; |1303| 
        addi      @CL81,ar2             ; |1303| Unsigned
        ldp       @CL192+0,DP
        ldfu      @CL192+0,f2           ; |1303| 40b float hi half
        ldp       @CL192+1,DP
        ldiu      @CL192+1,r2           ; |1303| 40b float lo half
        ldiu      0,rc                  ; |1303| 
        ldiu      0,r3                  ; |1303| 
        callu     r0                    ; far call to _VAR_Update	; |1303| 
                                        ; |1303| Far Call Occurs
L275:        
	.line	71
        ldiu      1,r0                  ; |1161| 
        addi      *+fp(2),r0            ; |1161| 
        sti       r0,*+fp(2)            ; |1161| 
        cmpi      8,r0                  ; |1161| 
        blt       L246                  ; |1161| 
;*      Branch Occurs to L246           ; |1161| 
L276:        
	.line	218
;----------------------------------------------------------------------
; 1308 | for (port=0;port<UART_MAX;port++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1308| 
        sti       r0,*+fp(2)            ; |1308| 
        ldiu      0,r3                  ; |1314| 
        ldiu      0,r2                  ; |1313| 
        ldiu      0,r1                  ; |1312| 
        ldiu      0,re                  ; |1311| 
        cmpi      8,r0                  ; |1308| 
        ldiu      0,rs                  ; |1315| 
        bge       L278                  ; |1308| 
;*      Branch Occurs to L278           ; |1308| 
L277:        
	.line	220
;----------------------------------------------------------------------
; 1310 | PORT[port].SNUM                 = SN_PIPE;                             
;----------------------------------------------------------------------
        ldp       @CL194,DP
        ldiu      *+fp(2),ir0           ; |1310| 
        ldiu      @CL194,ar1            ; |1310| 
        ldp       @CL193,DP
        mpyi      71,ir0                ; |1310| 
        ldiu      @CL193,ar0            ; |1310| 
        ldiu      *ar1,r0               ; |1310| 
        sti       r0,*+ar0(ir0)         ; |1310| 
	.line	221
;----------------------------------------------------------------------
; 1311 | PORT[port].tvector_main = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      *+fp(2),ir0           ; |1311| 
        ldiu      @CL38,ar0             ; |1311| 
        mpyi      71,ir0                ; |1311| 
        sti       re,*+ar0(ir0)         ; |1311| 
	.line	222
;----------------------------------------------------------------------
; 1312 | PORT[port].pvector_main = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      *+fp(2),ir0           ; |1312| 
        ldiu      @CL36,ar0             ; |1312| 
        mpyi      71,ir0                ; |1312| 
        sti       r1,*+ar0(ir0)         ; |1312| 
	.line	223
;----------------------------------------------------------------------
; 1313 | PORT[port].tvector              = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      *+fp(2),ir0           ; |1313| 
        ldiu      @CL37,ar0             ; |1313| 
        mpyi      71,ir0                ; |1313| 
        sti       r2,*+ar0(ir0)         ; |1313| 
	.line	224
;----------------------------------------------------------------------
; 1314 | PORT[port].pvector              = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      *+fp(2),ir0           ; |1314| 
        ldiu      @CL35,ar0             ; |1314| 
        mpyi      71,ir0                ; |1314| 
        sti       r3,*+ar0(ir0)         ; |1314| 
	.line	225
;----------------------------------------------------------------------
; 1315 | PORT[port].fvector              = NULL_PTR;                            
;----------------------------------------------------------------------
        ldp       @CL95,DP
        ldiu      @CL95,ar0             ; |1315| 
        ldiu      *+fp(2),ir0           ; |1315| 
        mpyi      71,ir0                ; |1315| 
        sti       rs,*+ar0(ir0)         ; |1315| 
	.line	218
        ldiu      1,r0                  ; |1308| 
        addi      *+fp(2),r0            ; |1308| 
        sti       r0,*+fp(2)            ; |1308| 
        cmpi      8,r0                  ; |1308| 
        blt       L277                  ; |1308| 
;*      Branch Occurs to L277           ; |1308| 
L278:        
	.line	228
;----------------------------------------------------------------------
; 1318 | List_Init(&LIST_MASTER_EMPTY);                                         
;----------------------------------------------------------------------
        ldp       @CL196,DP
        ldiu      @CL196,r0             ; |1318| 
        ldp       @CL195,DP
        ldiu      @CL195,ar2            ; |1318| 
        callu     r0                    ; far call to _List_Init	; |1318| 
                                        ; |1318| Far Call Occurs
	.line	230
;----------------------------------------------------------------------
; 1320 | for (i=0;i<MASTER_Q_LEN;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1320| 
        sti       r0,*+fp(3)            ; |1320| 
        ldiu      0,ar5                 ; |1328| 
        ldiu      0,ar4                 ; |1327| 
        ldiu      0,ar6                 ; |1324| 
        ldiu      0,ar7                 ; |1323| 
        ldiu      0,r5                  ; |1326| 
        ldiu      0,r4                  ; |1325| 
        ldfu      0.0000000000e+00,f6   ; |1333| 
        ldfu      0.0000000000e+00,f7   ; |1332| 
        cmpi      75,r0                 ; |1320| 
        bge       L280                  ; |1320| 
;*      Branch Occurs to L280           ; |1320| 
L279:        
	.line	232
;----------------------------------------------------------------------
; 1322 | QUEUE_MASTER[i].prev    = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |1322| 
        ldp       @CL197,DP
        mpyi      21,ir0                ; |1322| 
        ldiu      @CL197,ar0            ; |1322| 
        ldiu      0,r0                  ; |1322| 
        sti       r0,*+ar0(ir0)         ; |1322| 
	.line	233
;----------------------------------------------------------------------
; 1323 | QUEUE_MASTER[i].next    = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL198,DP
        ldiu      *+fp(3),ir0           ; |1323| 
        ldiu      @CL198,ar0            ; |1323| 
        mpyi      21,ir0                ; |1323| 
        sti       ar7,*+ar0(ir0)        ; |1323| 
	.line	234
;----------------------------------------------------------------------
; 1324 | QUEUE_MASTER[i].rxvect  = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldp       @CL199,DP
        ldiu      *+fp(3),ir0           ; |1324| 
        ldiu      @CL199,ar0            ; |1324| 
        mpyi      21,ir0                ; |1324| 
        sti       ar6,*+ar0(ir0)        ; |1324| 
	.line	235
;----------------------------------------------------------------------
; 1325 | QUEUE_MASTER[i].txvect  = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldp       @CL200,DP
        ldiu      *+fp(3),ir0           ; |1325| 
        ldiu      @CL200,ar0            ; |1325| 
        mpyi      21,ir0                ; |1325| 
        sti       r4,*+ar0(ir0)         ; |1325| 
	.line	236
;----------------------------------------------------------------------
; 1326 | QUEUE_MASTER[i].n               = 0;                                   
;----------------------------------------------------------------------
        ldp       @CL201,DP
        ldiu      *+fp(3),ir0           ; |1326| 
        ldiu      @CL201,ar0            ; |1326| 
        mpyi      21,ir0                ; |1326| 
        sti       r5,*+ar0(ir0)         ; |1326| 
	.line	237
;----------------------------------------------------------------------
; 1327 | QUEUE_MASTER[i].slave   = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL202,DP
        ldiu      *+fp(3),ir0           ; |1327| 
        mpyi      21,ir0                ; |1327| 
        ldiu      @CL202,ar0            ; |1327| 
        sti       ar4,*+ar0(ir0)        ; |1327| 
	.line	238
;----------------------------------------------------------------------
; 1328 | QUEUE_MASTER[i].func    = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL203,DP
        ldiu      *+fp(3),ir0           ; |1328| 
        ldiu      @CL203,ar0            ; |1328| 
        mpyi      21,ir0                ; |1328| 
        sti       ar5,*+ar0(ir0)        ; |1328| 
	.line	239
;----------------------------------------------------------------------
; 1329 | QUEUE_MASTER[i].addr    = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |1329| 
        ldp       @CL204,DP
        mpyi      21,ir0                ; |1329| 
        ldiu      @CL204,ar0            ; |1329| 
        sti       r0,*+ar0(ir0)         ; |1329| 
	.line	240
;----------------------------------------------------------------------
; 1330 | QUEUE_MASTER[i].num     = 0;                                           
;----------------------------------------------------------------------
        ldp       @CL205,DP
        ldiu      *+fp(3),ir0           ; |1330| 
        ldiu      @CL205,ar0            ; |1330| 
        mpyi      21,ir0                ; |1330| 
        sti       r0,*+ar0(ir0)         ; |1330| 
	.line	241
;----------------------------------------------------------------------
; 1331 | QUEUE_MASTER[i].v[0]    = 0.0;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |1331| 
        ldp       @CL206,DP
        mpyi      21,ir0                ; |1331| 
        ldiu      @CL206,ar0            ; |1331| 
        ldfu      0.0000000000e+00,f0   ; |1331| 
        stf       f0,*+ar0(ir0)         ; |1331| 
	.line	242
;----------------------------------------------------------------------
; 1332 | QUEUE_MASTER[i].v[1]    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL207,DP
        ldiu      *+fp(3),ir0           ; |1332| 
        ldiu      @CL207,ar0            ; |1332| 
        mpyi      21,ir0                ; |1332| 
        stf       f7,*+ar0(ir0)         ; |1332| 
	.line	243
;----------------------------------------------------------------------
; 1333 | QUEUE_MASTER[i].v[2]    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL208,DP
        ldiu      *+fp(3),ir0           ; |1333| 
        ldiu      @CL208,ar0            ; |1333| 
        mpyi      21,ir0                ; |1333| 
        stf       f6,*+ar0(ir0)         ; |1333| 
	.line	244
;----------------------------------------------------------------------
; 1334 | QUEUE_MASTER[i].v[3]    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL209,DP
        ldiu      *+fp(3),ir0           ; |1334| 
        ldiu      @CL209,ar0            ; |1334| 
        mpyi      21,ir0                ; |1334| 
        ldfu      0.0000000000e+00,f0   ; |1334| 
        stf       f0,*+ar0(ir0)         ; |1334| 
	.line	245
;----------------------------------------------------------------------
; 1335 | QUEUE_MASTER[i].v[4]    = 0.0;                                         
;----------------------------------------------------------------------
        ldp       @CL210,DP
        ldiu      @CL210,ar0            ; |1335| 
        ldiu      *+fp(3),ir0           ; |1335| 
        mpyi      21,ir0                ; |1335| 
        ldfu      0.0000000000e+00,f0   ; |1335| 
        stf       f0,*+ar0(ir0)         ; |1335| 
	.line	246
;----------------------------------------------------------------------
; 1336 | QUEUE_MASTER[i].flt_ptr = (float*)0;                                   
;----------------------------------------------------------------------
        ldp       @CL211,DP
        ldiu      *+fp(3),ir0           ; |1336| 
        ldiu      @CL211,ar0            ; |1336| 
        mpyi      21,ir0                ; |1336| 
        ldiu      0,r0                  ; |1336| 
        sti       r0,*+ar0(ir0)         ; |1336| 
	.line	247
;----------------------------------------------------------------------
; 1337 | QUEUE_MASTER[i].int_ptr = (int*)0;                                     
;----------------------------------------------------------------------
        ldp       @CL212,DP
        ldiu      *+fp(3),ir0           ; |1337| 
        ldiu      @CL212,ar0            ; |1337| 
        mpyi      21,ir0                ; |1337| 
        sti       r0,*+ar0(ir0)         ; |1337| 
	.line	249
;----------------------------------------------------------------------
; 1339 | List_Add(&LIST_MASTER_EMPTY, (GENERIC*)(&QUEUE_MASTER[i]));            
;----------------------------------------------------------------------
        ldp       @CL213,DP
        ldiu      @CL213,r0             ; |1339| 
        ldiu      *+fp(3),r2            ; |1339| 
        ldp       @CL197,DP
        mpyi      21,r2                 ; |1339| 
        addi      @CL197,r2             ; |1339| Unsigned
        ldp       @CL195,DP
        ldiu      @CL195,ar2            ; |1339| 
        callu     r0                    ; far call to _List_Add	; |1339| 
                                        ; |1339| Far Call Occurs
	.line	230
        ldiu      1,r0                  ; |1320| 
        addi      *+fp(3),r0            ; |1320| 
        sti       r0,*+fp(3)            ; |1320| 
        cmpi      75,r0                 ; |1320| 
        blt       L279                  ; |1320| 
;*      Branch Occurs to L279           ; |1320| 
L280:        
	.line	252
;----------------------------------------------------------------------
; 1342 | for (port=0;port<UART_MAX;port++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1342| 
        sti       r0,*+fp(2)            ; |1342| 
        cmpi      8,r0                  ; |1342| 
        bge       L282                  ; |1342| 
;*      Branch Occurs to L282           ; |1342| 
L281:        
	.line	253
;----------------------------------------------------------------------
; 1343 | List_Init(&PORT[port].MASTER);                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |1343| 
        ldp       @CL214,DP
        mpyi      71,ar2                ; |1343| 
        addi      @CL214,ar2            ; |1343| Unsigned
        ldp       @CL196,DP
        ldiu      @CL196,r0             ; |1343| 
        callu     r0                    ; far call to _List_Init	; |1343| 
                                        ; |1343| Far Call Occurs
	.line	252
        ldiu      1,r0                  ; |1342| 
        addi      *+fp(2),r0            ; |1342| 
        sti       r0,*+fp(2)            ; |1342| 
        cmpi      8,r0                  ; |1342| 
        blt       L281                  ; |1342| 
;*      Branch Occurs to L281           ; |1342| 
L282:        
	.line	255
;----------------------------------------------------------------------
; 1345 | if ((!SA && (DIO_HART_5.val && (PORT[4].Slave==0))) || (SA && (DIO_HART
;     | _5.val && (PORT[0].Slave==0))))                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1345| 
        ldiu      *ar0,r0               ; |1345| 
        cmpi      0,r0                  ; |1345| 
        bne       L285                  ; |1345| 
;*      Branch Occurs to L285           ; |1345| 
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1345| 
        ldiu      *ar0,r0               ; |1345| 
        cmpi      0,r0                  ; |1345| 
        beq       L285                  ; |1345| 
;*      Branch Occurs to L285           ; |1345| 
        ldp       @CL215,DP
        ldiu      @CL215,ar0            ; |1345| 
        ldiu      *ar0,r0               ; |1345| 
        cmpi      0,r0                  ; |1345| 
        beq       L288                  ; |1345| 
;*      Branch Occurs to L288           ; |1345| 
L285:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1345| 
        ldiu      *ar0,r0               ; |1345| 
        cmpi      0,r0                  ; |1345| 
        beq       L289                  ; |1345| 
;*      Branch Occurs to L289           ; |1345| 
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1345| 
        ldiu      *ar0,r0               ; |1345| 
        cmpi      0,r0                  ; |1345| 
        beq       L289                  ; |1345| 
;*      Branch Occurs to L289           ; |1345| 
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |1345| 
        ldiu      *ar0,r0               ; |1345| 
        cmpi      0,r0                  ; |1345| 
        bne       L289                  ; |1345| 
;*      Branch Occurs to L289           ; |1345| 
L288:        
	.line	256
;----------------------------------------------------------------------
; 1346 | AO[0].MANUAL = FALSE;                                                  
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1346| 
        ldiu      0,r0                  ; |1346| 
        sti       r0,*ar0               ; |1346| 
        bu        L299                  ; |1090| 
;*      Branch Occurs to L299           ; |1090| 
L289:        
	.line	257
;----------------------------------------------------------------------
; 1347 | else if ((!SA && (DIO_HART_5.val && (PORT[4].Slave!=0))) || (SA && (DIO
;     | _HART_5.val && (PORT[0].Slave!=0))))                                   
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1347| 
        ldiu      *ar0,r0               ; |1347| 
        cmpi      0,r0                  ; |1347| 
        bne       L292                  ; |1347| 
;*      Branch Occurs to L292           ; |1347| 
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1347| 
        ldiu      *ar0,r0               ; |1347| 
        cmpi      0,r0                  ; |1347| 
        beq       L292                  ; |1347| 
;*      Branch Occurs to L292           ; |1347| 
        ldp       @CL215,DP
        ldiu      @CL215,ar0            ; |1347| 
        ldiu      *ar0,r0               ; |1347| 
        cmpi      0,r0                  ; |1347| 
        bne       L295                  ; |1347| 
;*      Branch Occurs to L295           ; |1347| 
L292:        
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1347| 
        ldiu      *ar0,r0               ; |1347| 
        cmpi      0,r0                  ; |1347| 
        beq       L296                  ; |1347| 
;*      Branch Occurs to L296           ; |1347| 
        ldp       @CL131,DP
        ldiu      @CL131,ar0            ; |1347| 
        ldiu      *ar0,r0               ; |1347| 
        cmpi      0,r0                  ; |1347| 
        beq       L296                  ; |1347| 
;*      Branch Occurs to L296           ; |1347| 
        ldp       @CL102,DP
        ldiu      @CL102,ar0            ; |1347| 
        ldiu      *ar0,r0               ; |1347| 
        cmpi      0,r0                  ; |1347| 
        beq       L296                  ; |1347| 
;*      Branch Occurs to L296           ; |1347| 
L295:        
	.line	258
;----------------------------------------------------------------------
; 1348 | AO[0].MANUAL = TRUE;                                                   
; 1349 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1348| 
        ldiu      1,r0                  ; |1348| 
        sti       r0,*ar0               ; |1348| 
        bu        L299                  ; |1090| 
;*      Branch Occurs to L299           ; |1090| 
L296:        
	.line	261
;----------------------------------------------------------------------
; 1351 | if (LOOP_ENABLED.val)                                                  
;----------------------------------------------------------------------
        ldp       @CL185,DP
        ldiu      @CL185,ar0            ; |1351| 
        ldiu      *ar0,r0               ; |1351| 
        cmpi      0,r0                  ; |1351| 
        beq       L298                  ; |1351| 
;*      Branch Occurs to L298           ; |1351| 
	.line	262
;----------------------------------------------------------------------
; 1352 | AO[0].MANUAL = FALSE;                                                  
; 1353 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1352| 
        ldiu      0,r0                  ; |1352| 
        sti       r0,*ar0               ; |1352| 
        bu        L299                  ; |1090| 
;*      Branch Occurs to L299           ; |1090| 
L298:        
	.line	264
;----------------------------------------------------------------------
; 1354 | AO[0].MANUAL = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL186,DP
        ldiu      @CL186,ar0            ; |1354| 
        ldiu      1,r0                  ; |1354| 
        sti       r0,*ar0               ; |1354| 
L299:        
	.line	268
;----------------------------------------------------------------------
; 1358 | URESET;                                                                
; 1359 | {asm("  RPTS    100                     ");\                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL216,DP
        ldiu      @CL216,ar0            ; |1358| 
        ldiu      8,r0                  ; |1358| 
        or3       r0,*ar0,r0            ; |1358| 
        sti       r0,*ar0               ; |1358| 
	pop		ST			
	.line	270
;----------------------------------------------------------------------
; 1360 | asm("  NOP                                     ");}                    
;----------------------------------------------------------------------
	RPTS    100			
	NOP					
	.line	271
;----------------------------------------------------------------------
; 1361 | _URESET;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      247,r0                ; |1361| 
        and3      r0,*ar0,r0            ; |1361| 
        sti       r0,*ar0               ; |1361| 
	pop		ST			
	.line	273
;----------------------------------------------------------------------
; 1363 | if (!SA)                                                               
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |1363| 
        ldiu      *ar0,r0               ; |1363| 
        cmpi      0,r0                  ; |1363| 
        bne       L306                  ; |1363| 
;*      Branch Occurs to L306           ; |1363| 
	.line	275
;----------------------------------------------------------------------
; 1365 | HART_Initialize(4);                                                    
;----------------------------------------------------------------------
        ldp       @CL217,DP
        ldiu      4,ar2                 ; |1365| 
        ldiu      @CL217,r0             ; |1365| 
        callu     r0                    ; far call to _HART_Initialize	; |1365| 
                                        ; |1365| Far Call Occurs
	.line	277
;----------------------------------------------------------------------
; 1367 | for (i=0;i<4;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1367| 
        sti       r0,*+fp(3)            ; |1367| 
        cmpi      4,r0                  ; |1367| 
        bge       L302                  ; |1367| 
;*      Branch Occurs to L302           ; |1367| 
L301:        
	.line	278
;----------------------------------------------------------------------
; 1368 | Modbus_Initialize(i);                                                  
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      *+fp(3),ar2           ; |1368| 
        ldiu      @CL218,r0             ; |1368| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1368| 
                                        ; |1368| Far Call Occurs
	.line	277
        ldiu      1,r0                  ; |1367| 
        addi      *+fp(3),r0            ; |1367| 
        sti       r0,*+fp(3)            ; |1367| 
        cmpi      4,r0                  ; |1367| 
        blt       L301                  ; |1367| 
;*      Branch Occurs to L301           ; |1367| 
L302:        
	.line	281
;----------------------------------------------------------------------
; 1371 | Setup_UART(5, 115200, 8, 'N', 1);                                      
;----------------------------------------------------------------------
        ldp       @CL220,DP
        ldiu      8,rc                  ; |1371| 
        ldiu      78,rs                 ; |1371| 
        ldiu      @CL220,r0             ; |1371| 
        ldiu      5,ar2                 ; |1371| 
        ldp       @CL219,DP
        ldfu      1.0000000000e+00,f2   ; |1371| 
        ldiu      @CL219,r3             ; |1371| 
        callu     r0                    ; far call to _Setup_UART	; |1371| 
                                        ; |1371| Far Call Occurs
	.line	283
;----------------------------------------------------------------------
; 1373 | Modbus_Initialize(6);   /* dedicated OIT port */                       
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      @CL218,r0             ; |1373| 
        ldiu      6,ar2                 ; |1373| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1373| 
                                        ; |1373| Far Call Occurs
	.line	284
;----------------------------------------------------------------------
; 1374 | Modbus_Initialize(7);   /* dedicated PDI port */                       
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      @CL218,r0             ; |1374| 
        ldiu      7,ar2                 ; |1374| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1374| 
                                        ; |1374| Far Call Occurs
	.line	286
;----------------------------------------------------------------------
; 1376 | if (PORT[7].PRESENT)                                                   
;----------------------------------------------------------------------
        ldp       @CL221,DP
        ldiu      @CL221,ar0            ; |1376| 
        ldiu      *ar0,r0               ; |1376| 
        cmpi      0,r0                  ; |1376| 
        beq       L304                  ; |1376| 
;*      Branch Occurs to L304           ; |1376| 
	.line	287
;----------------------------------------------------------------------
; 1377 | PDI_id = 7;                                                            
;----------------------------------------------------------------------
        ldp       @CL222,DP
        ldiu      @CL222,ar0            ; |1377| 
        ldiu      7,r0                  ; |1377| 
        sti       r0,*ar0               ; |1377| 
        bu        L309                  ; |1090| 
;*      Branch Occurs to L309           ; |1090| 
L304:        
	.line	288
;----------------------------------------------------------------------
; 1378 | else if (PORT[0].PRESENT)                                              
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |1378| 
        ldiu      *ar0,r0               ; |1378| 
        cmpi      0,r0                  ; |1378| 
        beq       L309                  ; |1378| 
;*      Branch Occurs to L309           ; |1378| 
	.line	289
;----------------------------------------------------------------------
; 1379 | PDI_id = 0;                                                            
; 1381 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL222,DP
        ldiu      @CL222,ar0            ; |1379| 
        ldiu      0,r0                  ; |1379| 
        sti       r0,*ar0               ; |1379| 
        bu        L309                  ; |1090| 
;*      Branch Occurs to L309           ; |1090| 
L306:        
	.line	293
;----------------------------------------------------------------------
; 1383 | PDI_id = 1;                                                            
;----------------------------------------------------------------------
        ldp       @CL222,DP
        ldiu      @CL222,ar0            ; |1383| 
        ldiu      1,r0                  ; |1383| 
        sti       r0,*ar0               ; |1383| 
	.line	295
;----------------------------------------------------------------------
; 1385 | Modbus_Initialize(1);   /* dedicated OIT port */                       
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      1,ar2                 ; |1385| 
        ldiu      @CL218,r0             ; |1385| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1385| 
                                        ; |1385| Far Call Occurs
	.line	297
;----------------------------------------------------------------------
; 1387 | if (B202_PORT)                                                         
;----------------------------------------------------------------------
        ldp       @CL125,DP
        ldiu      @CL125,ar0            ; |1387| 
        ldiu      32,r0                 ; |1387| 
        tstb3     *ar0,r0               ; |1387| 
        bne       L308                  ; |1387| 
;*      Branch Occurs to L308           ; |1387| 
	.line	298
;----------------------------------------------------------------------
; 1388 | HART_Initialize(0);                                                    
; 1389 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL217,DP
        ldiu      0,ar2                 ; |1388| 
        ldiu      @CL217,r0             ; |1388| 
        callu     r0                    ; far call to _HART_Initialize	; |1388| 
                                        ; |1388| Far Call Occurs
        bu        L309                  ; |1090| 
;*      Branch Occurs to L309           ; |1090| 
L308:        
	.line	300
;----------------------------------------------------------------------
; 1390 | Modbus_Initialize(0);                                                  
;----------------------------------------------------------------------
        ldp       @CL218,DP
        ldiu      0,ar2                 ; |1390| 
        ldiu      @CL218,r0             ; |1390| 
        callu     r0                    ; far call to _Modbus_Initialize	; |1390| 
                                        ; |1390| Far Call Occurs
L309:        
	.line	303
;----------------------------------------------------------------------
; 1393 | ENABLE_WDOG; GIEP;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL129,DP
        ldiu      @CL129,ar0            ; |1393| 
        ldiu      8,r0                  ; |1393| 
        or3       r0,*ar0,r0            ; |1393| 
        sti       r0,*ar0               ; |1393| 
        ldiu      128,r0                ; |1393| 
        or3       r0,*ar0,r0            ; |1393| 
        sti       r0,*ar0               ; |1393| 
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
	.endfunc	1394,00000f0f0h,3



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
