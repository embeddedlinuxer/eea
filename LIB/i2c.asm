;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Oct 31 10:49:17 2011                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_66S.AAA 
	.file	"i2c.c"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\GLBLS.H"
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\format.h"
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
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\string.h"
	.sym	_size_t,0,14,13,32
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\stdio.h"
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
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\stdlib.h"
	.sym	_wchar_t,0,2,13,32
	.stag	__div_t,64
	.member	_quot,0,4,8,32
	.member	_rem,32,4,8,32
	.eos
	.sym	_div_t,0,8,13,64,__div_t
	.sym	_ldiv_t,0,8,13,64,__div_t
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\math.h"
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\time.h"
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
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\LIST.H"
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
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\VARIABLE.H"
	.stag	.fake6,1376
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
	.eos
	.sym	_VAR,0,8,13,1376,.fake6
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
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\BUFFER.H"
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
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\UNITS.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\TIMER.H"
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
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\I2C.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\ERRORS.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\SERIAL.H"
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
	.stag	.fake13,11232
	.member	_PREFIX,0,8,8,1376,.fake6
	.member	_SUFFIX,1376,8,8,1376,.fake6
	.member	_NETWDOG,2752,8,8,1376,.fake6
	.member	_Slave_ID,4128,8,8,1376,.fake6
	.member	_Baud_Rate,5504,8,8,1376,.fake6
	.member	_Parity,6880,4,8,32
	.member	_n_bits,6912,4,8,32
	.member	_STP,6944,4,8,32
	.member	_N,6976,4,8,32
	.member	_N_retry,7008,4,8,32
	.member	_EOT_Delay,7040,8,8,1376,.fake6
	.member	_Retry_Time,8416,8,8,1376,.fake6
	.member	_Num_Retry,9792,8,8,1376,.fake6
	.member	_poll_time,11168,4,8,32
	.member	_timeout,11200,4,8,32
	.eos
	.sym	_PORTC,0,8,13,11232,.fake13
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
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\ADC.H"
	.stag	.fake15,9952
	.member	_CURRENT,0,8,8,1376,.fake6
	.member	_CURRENT_PERCENT_OF_RANGE,1376,8,8,1376,.fake6
	.member	_LRV,2752,8,8,1376,.fake6
	.member	_URV,4128,8,8,1376,.fake6
	.member	_TRIM_MIN,5504,8,8,1376,.fake6
	.member	_TRIM_MAX,6880,8,8,1376,.fake6
	.member	_VALUE,8256,8,8,1376,.fake6
	.member	_TRIM_MIN_C,9632,6,8,32
	.member	_TRIM_MAX_C,9664,6,8,32
	.member	_v,9696,8,8,64,.fake8
	.member	_class,9760,8,8,64,.fake8
	.member	_unit,9824,8,8,64,.fake8
	.member	_present,9888,14,8,32
	.member	_val,9920,6,8,32
	.eos
	.sym	_LOOPDATA_I,0,8,13,9952,.fake15
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\DAC.H"
	.stag	.fake16,13120
	.member	_CURRENT,0,8,8,1376,.fake6
	.member	_CURRENT_PERCENT_OF_RANGE,1376,8,8,1376,.fake6
	.member	_LRV,2752,8,8,1376,.fake6
	.member	_URV,4128,8,8,1376,.fake6
	.member	_TRIM_MIN,5504,8,8,1376,.fake6
	.member	_TRIM_MAX,6880,8,8,1376,.fake6
	.member	_TRIM_MIN_C,8256,6,8,32
	.member	_TRIM_MAX_C,8288,6,8,32
	.member	_ALARM_SELECT,8320,4,8,32
	.member	_MINSPAN,8352,6,8,32
	.member	_v,8384,8,8,64,.fake8
	.member	_class,8448,8,8,64,.fake8
	.member	_unit,8512,8,8,64,.fake8
	.member	_MANUAL,8576,4,8,32
	.member	_MANUAL_PERCENT,8608,6,8,32
	.member	_REVERSE,8640,4,8,32
	.member	_PID_input,8672,6,8,32
	.member	_PID_setpoint,8704,6,8,32
	.member	_P,8736,8,8,1376,.fake6
	.member	_I,10112,8,8,1376,.fake6
	.member	_D,11488,8,8,1376,.fake6
	.member	_pid_lastcycle,12864,4,8,32
	.member	_pid_output,12896,6,8,32
	.member	_pid_propband,12928,6,8,32
	.member	_pid_error,12960,6,8,32
	.member	_pid_bias,12992,6,8,32
	.member	_present,13024,14,8,32
	.member	_PID_fail,13056,14,8,32
	.member	_PID_enable_failsafe,13088,14,8,32
	.eos
	.sym	_LOOPDATA_O,0,8,13,13120,.fake16
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\EXECUTE.H"
	.stag	.fake17,128
	.member	_prev,0,20,8,32
	.member	_next,32,20,8,32
	.member	_vect,64,20,8,32
	.member	_priority,96,4,8,32
	.eos
	.sym	_EPKT,0,8,13,128,.fake17
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\FLASH.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\LOG.H"
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
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\DEMO.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\SELFTEST.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\MENU.H"
	.stag	.fake19,16064
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
	.member	_PAGE,832,14,8,32
	.member	_SUBPAGE,864,14,8,32
	.member	_MENU_TRAP,896,14,8,32
	.member	_DIP,928,62,8,128,,4
	.member	_tmpf,1056,54,8,320,,10
	.member	_tmpi,1376,52,8,320,,10
	.member	_str,1696,242,8,12928,,4,101
	.member	_tmpv,14624,8,8,1376,.fake6
	.member	_ptmpv,16000,24,8,32,.fake6
	.member	_tbl,16032,20,8,32
	.eos
	.sym	_MENU_STRUCT,0,8,13,16064,.fake19
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\FLOAT1.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\GLBLS.H"
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
	.stag	.fake24,320
	.member	_MODE,0,4,8,32
	.member	_STATUS_MASK,32,4,8,32
	.member	_v,64,8,8,64,.fake8
	.member	_setpoint,128,6,8,32
	.member	_ON,160,8,8,96,.fake7
	.member	_class,256,4,8,32
	.member	_unit,288,4,8,32
	.eos
	.sym	_RELAYDATA,0,8,13,320,.fake24
	.stag	.fake25,11968
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
	.member	_damp_flow_rate,864,8,8,1376,.fake6
	.member	_damp_density,2240,8,8,1376,.fake6
	.member	_mfr_cutoff,3616,8,8,1376,.fake6
	.member	_vfr_cutoff,4992,8,8,1376,.fake6
	.member	_mcf,6368,8,8,1376,.fake6
	.member	_address,7744,8,8,1376,.fake6
	.member	_mass_unit,9120,8,8,1376,.fake6
	.member	_density_cutoff,10496,8,8,1376,.fake6
	.member	_Z,11872,8,8,96,.fake7
	.eos
	.sym	_CORIOLIS,0,8,13,11968,.fake25
	.stag	.fake26,288
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
	.sym	_PRESSURE,0,8,13,288,.fake26
	.stag	.fake27,192
	.member	_T,0,6,8,32
	.member	_etc0,32,6,8,32
	.member	_etc1,64,6,8,32
	.member	_etc2,96,6,8,32
	.member	_etc3,128,6,8,32
	.member	_etc4,160,6,8,32
	.eos
	.sym	_TMPT,0,8,13,192,.fake27
	.stag	.fake28,37184
	.member	_watercut,0,8,8,1376,.fake6
	.member	_T,1376,8,8,1376,.fake6
	.member	_pressure,2752,8,8,1376,.fake6
	.member	_density,4128,8,8,1376,.fake6
	.member	_density_PDI_corrected,5504,6,8,32
	.member	_density_adj,5536,6,8,32
	.member	_density_oilST,5568,8,8,1376,.fake6
	.member	_density_oil,6944,8,8,1376,.fake6
	.member	_density_waterST,8320,8,8,1376,.fake6
	.member	_density_water,9696,8,8,1376,.fake6
	.member	_salinity,11072,8,8,1376,.fake6
	.member	_API_TABLE,12448,4,8,32
	.member	_a,12480,6,8,32
	.member	_Meter_Factor,12512,8,8,1376,.fake6
	.member	_Shrinkage,13888,8,8,1376,.fake6
	.member	_VCFo,15264,6,8,32
	.member	_VCFw,15296,6,8,32
	.member	_net_watercut,15328,6,8,32
	.member	_net_watercut_mass,15360,6,8,32
	.member	_Dadj,15392,6,8,32
	.member	_NET_FLOW_OIL,15424,8,8,1376,.fake6
	.member	_NET_FLOW_WATER,16800,8,8,1376,.fake6
	.member	_NET_FLOW_TOTAL,18176,8,8,1376,.fake6
	.member	_NET_OIL,19552,8,8,1376,.fake6
	.member	_NET_WATER,20928,8,8,1376,.fake6
	.member	_NET_TOTAL,22304,8,8,1376,.fake6
	.member	_GROSS_OIL,23680,8,8,1376,.fake6
	.member	_GROSS_WATER,25056,8,8,1376,.fake6
	.member	_GROSS_TOTAL,26432,8,8,1376,.fake6
	.member	_FLOW_OIL,27808,8,8,1376,.fake6
	.member	_FLOW_WATER,29184,8,8,1376,.fake6
	.member	_FLOW_TOTAL,30560,8,8,1376,.fake6
	.member	_PULSES_PER_ACCUM_UNIT,31936,14,8,32
	.member	_PULSE_TOTAL,31968,8,8,1376,.fake6
	.member	_PULSE_FLOW,33344,8,8,1376,.fake6
	.member	_PULSE_FREQ,34720,8,8,1376,.fake6
	.member	_PULSE_COUNTER,36096,14,8,32
	.member	_PULSE,36128,4,8,32
	.member	_CNT,36160,4,8,32
	.member	_PULSE_DELTA,36192,4,8,32
	.member	_PULSE_FACTOR,36224,6,8,32
	.member	_PULSE_STAT,36256,4,8,32
	.member	_enable_NET,36288,14,8,32
	.member	_enable_GROSS,36320,14,8,32
	.member	_enable_FLOW,36352,14,8,32
	.member	_enable_DENSITY,36384,14,8,32
	.member	_enable_PULSE,36416,14,8,32
	.member	_flow_class,36448,8,8,64,.fake8
	.member	_flow_unit,36512,8,8,64,.fake8
	.member	_accum_unit,36576,8,8,64,.fake8
	.member	_Z,36640,8,8,96,.fake7
	.member	_USE_PDI_TEMP,36736,14,8,32
	.member	_USE_PDI_SALINITY,36768,14,8,32
	.member	_USE_PDI_WATERCUT,36800,14,8,32
	.member	_CALC_WC_DENSITY,36832,14,8,32
	.member	_MAN_TEMP,36864,14,8,32
	.member	_MAN_SALINITY,36896,14,8,32
	.member	_MAN_WATERCUT,36928,14,8,32
	.member	_MAN_DENSITY,36960,14,8,32
	.member	_MAN_PRESSURE,36992,14,8,32
	.member	_MAN_FLOW,37024,14,8,32
	.member	_AUTHORIZATION_CODE1,37056,14,8,32
	.member	_AUTHORIZATION_CODE2,37088,14,8,32
	.member	_AUTHORIZATION_CODE3,37120,14,8,32
	.member	_AUTHORIZATION_CODE4,37152,14,8,32
	.eos
	.sym	_FLOW_COMP,0,8,13,37184,.fake28
	.stag	.fake29,2144
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
	.member	_DESTINATION_ADDRESS,768,8,8,1376,.fake6
	.eos
	.sym	_ALYESKA_STRUCT,0,8,13,2144,.fake29
	.stag	.fake30,3872
	.member	_ENABLED,0,8,8,96,.fake7
	.member	_flow_threshold,96,8,8,1376,.fake6
	.member	_span,1472,8,8,1376,.fake6
	.member	_S3,2848,6,8,32
	.member	_S2,2880,6,8,32
	.member	_S1,2912,6,8,32
	.member	_S0,2944,6,8,32
	.member	_Fmin,2976,6,8,32
	.member	_Fmax,3008,6,8,32
	.member	_Dmin,3040,6,8,32
	.member	_Dmax,3072,6,8,32
	.member	_new,3104,14,8,32
	.member	_CHANGED,3136,14,8,32
	.member	_PURGING,3168,14,8,32
	.member	_TEST_IN_PROGRESS,3200,14,8,32
	.member	_SP3A,3232,6,8,32
	.member	_SP2A,3264,6,8,32
	.member	_SP1A,3296,6,8,32
	.member	_SP0A,3328,6,8,32
	.member	_SPLOA,3360,6,8,32
	.member	_SPHIA,3392,6,8,32
	.member	_SP3B,3424,6,8,32
	.member	_SP2B,3456,6,8,32
	.member	_SP1B,3488,6,8,32
	.member	_SP0B,3520,6,8,32
	.member	_SPLOB,3552,6,8,32
	.member	_SPHIB,3584,6,8,32
	.member	_FBHI3,3616,6,8,32
	.member	_FBHI2,3648,6,8,32
	.member	_FBHI1,3680,6,8,32
	.member	_FBHI0,3712,6,8,32
	.member	_FBLO3,3744,6,8,32
	.member	_FBLO2,3776,6,8,32
	.member	_FBLO1,3808,6,8,32
	.member	_FBLO0,3840,6,8,32
	.eos
	.sym	_HS_STRUCT,0,8,13,3872,.fake30
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\HART.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\MODBUSRTU.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\MISC.H"
	.file	"D:\CCS\EEA_SA_V611beta\APP\SOURCE\INCLUDE\API.H"
	.file	"i2c.c"
	.sect	 "internal_RAM"

	.global	_I2C_TX_BYTE
	.sym	_I2C_TX_BYTE,_I2C_TX_BYTE,46,2,0
	.func	14
;******************************************************************************
;* FUNCTION NAME: _I2C_TX_BYTE                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar2,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_I2C_TX_BYTE:
;* ar2   assigned to _b
	.sym	_b,10,12,17,32
	.sym	_b,1,12,1,32
	.sym	_i,2,4,1,32
	.sym	_dat,3,12,1,32
	.sym	_ack,4,14,1,32
	.line	1
;----------------------------------------------------------------------
;  14 | BOOL I2C_TX_BYTE(unsigned char b)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
;  16 | int i;                                                                 
;  17 | unsigned char dat;                                                     
;  18 | BOOL ack;                                                              
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |15| 
	.line	7
;----------------------------------------------------------------------
;  20 | dat = b;                                                               
;----------------------------------------------------------------------
        ldiu      ar2,r0
        sti       r0,*+fp(3)            ; |20| 
	.line	9
;----------------------------------------------------------------------
;  22 | for (i=0;i<8;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |22| 
        sti       r0,*+fp(2)            ; |22| 
        cmpi      8,r0                  ; |22| 
        bge       L6                    ; |22| 
;*      Branch Occurs to L6             ; |22| 
L2:        
	.line	11
;----------------------------------------------------------------------
;  24 | if (dat&0x80)                                                          
;----------------------------------------------------------------------
        ldiu      128,r0                ; |24| 
        tstb      *+fp(3),r0            ; |24| 
        beq       L4                    ; |24| 
;*      Branch Occurs to L4             ; |24| 
	.line	13
;----------------------------------------------------------------------
;  26 | SDA_TX_HI;                                                             
;  28 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |26| 
        ldiu      1,r0                  ; |26| 
        or3       r0,*ar0,r0            ; |26| 
        sti       r0,*ar0               ; |26| 
        bu        L5                    ; |13| 
;*      Branch Occurs to L5             ; |13| 
L4:        
	.line	17
;----------------------------------------------------------------------
;  30 | SDA_TX_LO;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |30| 
        ldiu      254,r0                ; |30| 
        and3      r0,*ar0,r0            ; |30| 
        sti       r0,*ar0               ; |30| 
L5:        
	.line	20
;----------------------------------------------------------------------
;  33 | I2C_PULSE;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |33| 
        ldiu      4,r0                  ; |33| 
        or3       r0,*ar0,r0            ; |33| 
        sti       r0,*ar0               ; |33| 
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |33| 
        and3      r0,*ar0,r0            ; |33| 
        sti       r0,*ar0               ; |33| 
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	22
;----------------------------------------------------------------------
;  35 | dat = dat<<1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |35| 
        ash       1,r0                  ; |35| 
        sti       r0,*+fp(3)            ; |35| 
	.line	9
        ldiu      1,r0                  ; |22| 
        addi      *+fp(2),r0            ; |22| 
        sti       r0,*+fp(2)            ; |22| 
        cmpi      8,r0                  ; |22| 
        blt       L2                    ; |22| 
;*      Branch Occurs to L2             ; |22| 
L6:        
	.line	25
;----------------------------------------------------------------------
;  38 | DISABLE_SDA_TX;                                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |38| 
        ldiu      253,r0                ; |38| 
        and3      r0,*ar0,r0            ; |38| 
        sti       r0,*ar0               ; |38| 
	.line	26
;----------------------------------------------------------------------
;  39 | SDA_TX_HI;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |39| 
        or3       r0,*ar0,r0            ; |39| 
        sti       r0,*ar0               ; |39| 
	.line	27
;----------------------------------------------------------------------
;  40 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	28
;----------------------------------------------------------------------
;  41 | SCL_HI;                                                                
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |41| 
        or3       r0,*ar0,r0            ; |41| 
        sti       r0,*ar0               ; |41| 
	.line	29
;----------------------------------------------------------------------
;  42 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	30
;----------------------------------------------------------------------
;  43 | if (SDA_RX) ack = FALSE;                                               
;----------------------------------------------------------------------
        ldiu      16,r0                 ; |43| 
        tstb3     *ar0,r0               ; |43| 
        beq       L8                    ; |43| 
;*      Branch Occurs to L8             ; |43| 
        ldiu      0,r0                  ; |43| 
        sti       r0,*+fp(4)            ; |43| 
        bu        L9                    ; |13| 
;*      Branch Occurs to L9             ; |13| 
L8:        
	.line	31
;----------------------------------------------------------------------
;  44 | else ack = TRUE;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |44| 
        sti       r0,*+fp(4)            ; |44| 
L9:        
	.line	32
;----------------------------------------------------------------------
;  45 | SCL_LO;                                                                
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |45| 
        ldiu      251,r0                ; |45| 
        and3      r0,*ar0,r0            ; |45| 
        sti       r0,*ar0               ; |45| 
	.line	33
;----------------------------------------------------------------------
;  46 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	34
;----------------------------------------------------------------------
;  47 | ENABLE_SDA_TX;                                                         
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |47| 
        or3       r0,*ar0,r0            ; |47| 
        sti       r0,*ar0               ; |47| 
	.line	36
;----------------------------------------------------------------------
;  49 | return ack;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |49| 
	.line	37
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |50| 
        ldiu      *fp,fp                ; |50| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |50| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	50,000000000h,4


	.sect	 "internal_RAM"

	.global	_I2C_RX_BYTE
	.sym	_I2C_RX_BYTE,_I2C_RX_BYTE,32,2,0
	.func	52
;******************************************************************************
;* FUNCTION NAME: _I2C_RX_BYTE                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_I2C_RX_BYTE:
;* ar2   assigned to _b
	.sym	_b,10,28,17,32
;* r2    assigned to _ack
	.sym	_ack,2,14,17,32
	.sym	_b,1,28,1,32
	.sym	_ack,2,14,1,32
	.sym	_i,3,4,1,32
	.sym	_dat,4,12,1,32
	.line	1
;----------------------------------------------------------------------
;  52 | void I2C_RX_BYTE(unsigned char* b, BOOL ack)                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
;  54 | int i;                                                                 
;  55 | unsigned char dat;                                                     
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |53| 
        sti       ar2,*+fp(1)           ; |53| 
	.line	6
;----------------------------------------------------------------------
;  57 | dat = 0;                                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |57| 
        sti       r0,*+fp(4)            ; |57| 
	.line	8
;----------------------------------------------------------------------
;  59 | DISABLE_SDA_TX;                                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |59| 
        ldiu      253,r0                ; |59| 
        and3      r0,*ar0,r0            ; |59| 
        sti       r0,*ar0               ; |59| 
	.line	9
;----------------------------------------------------------------------
;  60 | for (i=0;i<8;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |60| 
        sti       r0,*+fp(3)            ; |60| 
        cmpi      8,r0                  ; |60| 
        bge       L16                   ; |60| 
;*      Branch Occurs to L16            ; |60| 
L13:        
	.line	11
;----------------------------------------------------------------------
;  62 | SCL_HI;                                                                
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |62| 
        ldiu      4,r0                  ; |62| 
        or3       r0,*ar0,r0            ; |62| 
        sti       r0,*ar0               ; |62| 
	.line	12
;----------------------------------------------------------------------
;  63 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	13
;----------------------------------------------------------------------
;  64 | if (SDA_RX)     dat |= 0x01;                                           
;----------------------------------------------------------------------
        ldiu      16,r0                 ; |64| 
        tstb3     *ar0,r0               ; |64| 
        beq       L15                   ; |64| 
;*      Branch Occurs to L15            ; |64| 
        ldiu      1,r0                  ; |64| 
        or        *+fp(4),r0            ; |64| 
        sti       r0,*+fp(4)            ; |64| 
L15:        
	.line	14
;----------------------------------------------------------------------
;  65 | SCL_LO;                                                                
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |65| 
        ldiu      251,r0                ; |65| 
        and3      r0,*ar0,r0            ; |65| 
        sti       r0,*ar0               ; |65| 
	.line	15
;----------------------------------------------------------------------
;  66 | I2C_WAITF;                                                             
;----------------------------------------------------------------------
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	16
;----------------------------------------------------------------------
;  67 | dat = dat<<1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |67| 
        ash       1,r0                  ; |67| 
        sti       r0,*+fp(4)            ; |67| 
	.line	9
        ldiu      1,r0                  ; |60| 
        addi      *+fp(3),r0            ; |60| 
        sti       r0,*+fp(3)            ; |60| 
        cmpi      8,r0                  ; |60| 
        blt       L13                   ; |60| 
;*      Branch Occurs to L13            ; |60| 
L16:        
	.line	19
;----------------------------------------------------------------------
;  70 | dat = dat>>1;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |70| 
        lsh       -1,r0                 ; |70| 
        sti       r0,*+fp(4)            ; |70| 
	.line	21
;----------------------------------------------------------------------
;  72 | ENABLE_SDA_TX;                                                         
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |72| 
        ldiu      2,r0                  ; |72| 
        or3       r0,*ar0,r0            ; |72| 
        sti       r0,*ar0               ; |72| 
	.line	22
;----------------------------------------------------------------------
;  73 | if (ack)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |73| 
        cmpi      0,r0                  ; |73| 
        beq       L18                   ; |73| 
;*      Branch Occurs to L18            ; |73| 
	.line	24
;----------------------------------------------------------------------
;  75 | SDA_TX_LO;                                                             
;  77 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |75| 
        ldiu      254,r0                ; |75| 
        and3      r0,*ar0,r0            ; |75| 
        sti       r0,*ar0               ; |75| 
        bu        L19                   ; |51| 
;*      Branch Occurs to L19            ; |51| 
L18:        
	.line	28
;----------------------------------------------------------------------
;  79 | SDA_TX_HI;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |79| 
        ldiu      1,r0                  ; |79| 
        or3       r0,*ar0,r0            ; |79| 
        sti       r0,*ar0               ; |79| 
L19:        
	.line	30
;----------------------------------------------------------------------
;  81 | I2C_PULSE;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |81| 
        ldiu      4,r0                  ; |81| 
        or3       r0,*ar0,r0            ; |81| 
        sti       r0,*ar0               ; |81| 
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |81| 
        and3      r0,*ar0,r0            ; |81| 
        sti       r0,*ar0               ; |81| 
		PUSH    AR1			
		LDI		25,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	32
;----------------------------------------------------------------------
;  83 | b[0] = dat;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |83| 
        ldiu      *+fp(4),r0            ; |83| 
        sti       r0,*ar0               ; |83| 
	.line	33
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	84,000000000h,4


	.sect	 "internal_RAM"

	.global	_Write_I2C
	.sym	_Write_I2C,_Write_I2C,46,2,0
	.func	86
;******************************************************************************
;* FUNCTION NAME: _Write_I2C                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_I2C:
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
;  86 | BOOL Write_I2C(int addr, int n, unsigned char* p)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
;  88 | int i;                                                                 
;  89 | unsigned char dat;                                                     
;  90 | BOOL ack;                                                              
;  91 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |87| 
        sti       r2,*+fp(2)            ; |87| 
        sti       ar2,*+fp(1)           ; |87| 
	.line	8
;----------------------------------------------------------------------
;  93 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |93| 
        sti       r0,*+fp(7)            ; |93| 
	.line	10
;----------------------------------------------------------------------
;  95 | I2C_START;                                                             
;  97 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |95| 
        ldiu      4,r0                  ; |95| 
        or3       r0,*ar0,r0            ; |95| 
        sti       r0,*ar0               ; |95| 
        ldiu      1,r0                  ; |95| 
        or3       r0,*ar0,r0            ; |95| 
        sti       r0,*ar0               ; |95| 
        ldiu      8,r0                  ; |95| 
        or3       r0,*ar0,r0            ; |95| 
        sti       r0,*ar0               ; |95| 
        ldiu      2,r0                  ; |95| 
        or3       r0,*ar0,r0            ; |95| 
        sti       r0,*ar0               ; |95| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |95| 
        and3      r0,*ar0,r0            ; |95| 
        sti       r0,*ar0               ; |95| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |95| 
        and3      r0,*ar0,r0            ; |95| 
        sti       r0,*ar0               ; |95| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	14
;----------------------------------------------------------------------
;  99 | dat = addr;                                             /* address with
;     | out read bit set */                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |99| 
        sti       r0,*+fp(5)            ; |99| 
	.line	15
;----------------------------------------------------------------------
; 100 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |100| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |100| 
                                        ; |100| Far Call Occurs
        sti       r0,*+fp(6)            ; |100| 
	.line	16
;----------------------------------------------------------------------
; 101 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |101| 
        bne       L24                   ; |101| 
;*      Branch Occurs to L24            ; |101| 
	.line	18
;----------------------------------------------------------------------
; 103 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |103| 
        sti       r0,*+fp(7)            ; |103| 
	.line	19
;----------------------------------------------------------------------
; 104 | break;                                                                 
;----------------------------------------------------------------------
        bu        L32                   ; |104| 
;*      Branch Occurs to L32            ; |104| 
L24:        
	.line	22
;----------------------------------------------------------------------
; 107 | ack = I2C_TX_BYTE(n);                   /* the number of bytes to write
;     |  */                                                                    
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(2),ar2           ; |107| 
        ldiu      @CL2,r0               ; |107| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |107| 
                                        ; |107| Far Call Occurs
        sti       r0,*+fp(6)            ; |107| 
	.line	23
;----------------------------------------------------------------------
; 108 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |108| 
        bne       L26                   ; |108| 
;*      Branch Occurs to L26            ; |108| 
	.line	25
;----------------------------------------------------------------------
; 110 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |110| 
        sti       r0,*+fp(7)            ; |110| 
	.line	26
;----------------------------------------------------------------------
; 111 | break;                                                                 
;----------------------------------------------------------------------
        bu        L32                   ; |111| 
;*      Branch Occurs to L32            ; |111| 
L26:        
	.line	29
;----------------------------------------------------------------------
; 114 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |114| 
        sti       r0,*+fp(4)            ; |114| 
        cmpi      *+fp(2),r0            ; |114| 
        bge       L32                   ; |114| 
;*      Branch Occurs to L32            ; |114| 
L27:        
	.line	31
;----------------------------------------------------------------------
; 116 | ack = I2C_TX_BYTE(p[i]);        /* write the bytes */                  
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(3),ir0           ; |116| 
        ldiu      *+fp(4),ar0           ; |116| 
        ldiu      @CL2,r0               ; |116| 
        ldiu      *+ar0(ir0),ar2        ; |116| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |116| 
                                        ; |116| Far Call Occurs
        sti       r0,*+fp(6)            ; |116| 
	.line	32
;----------------------------------------------------------------------
; 117 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |117| 
        bne       L29                   ; |117| 
;*      Branch Occurs to L29            ; |117| 
	.line	34
;----------------------------------------------------------------------
; 119 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |119| 
        sti       r0,*+fp(7)            ; |119| 
	.line	35
;----------------------------------------------------------------------
; 120 | break;                                                                 
;----------------------------------------------------------------------
        bu        L32                   ; |120| 
;*      Branch Occurs to L32            ; |120| 
L29:        
	.line	29
        ldiu      1,r0                  ; |114| 
        addi      *+fp(4),r0            ; |114| 
        sti       r0,*+fp(4)            ; |114| 
        cmpi      *+fp(2),r0            ; |114| 
        blt       L27                   ; |114| 
;*      Branch Occurs to L27            ; |114| 
	.line	39
;----------------------------------------------------------------------
; 124 | break;                                                                 
;----------------------------------------------------------------------
        bu        L32                   ; |124| 
;*      Branch Occurs to L32            ; |124| 
	.line	40
L32:        
	.line	42
;----------------------------------------------------------------------
; 127 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |127| 
        ldiu      2,r0                  ; |127| 
        or3       r0,*ar0,r0            ; |127| 
        sti       r0,*ar0               ; |127| 
        ldiu      254,r0                ; |127| 
        and3      r0,*ar0,r0            ; |127| 
        sti       r0,*ar0               ; |127| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |127| 
        or3       r0,*ar0,r0            ; |127| 
        sti       r0,*ar0               ; |127| 
        ldiu      247,r0                ; |127| 
        and3      r0,*ar0,r0            ; |127| 
        sti       r0,*ar0               ; |127| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |127| 
        or3       r0,*ar0,r0            ; |127| 
        sti       r0,*ar0               ; |127| 
        ldiu      253,r0                ; |127| 
        and3      r0,*ar0,r0            ; |127| 
        sti       r0,*ar0               ; |127| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	44
;----------------------------------------------------------------------
; 129 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |129| 
	.line	45
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |130| 
        ldiu      *fp,fp                ; |130| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |130| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	130,000000000h,7


	.sect	 "internal_RAM"

	.global	_Read_I2C
	.sym	_Read_I2C,_Read_I2C,46,2,0
	.func	132
;******************************************************************************
;* FUNCTION NAME: _Read_I2C                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Read_I2C:
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
; 132 | BOOL Read_I2C(int addr, int n, unsigned char* p)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 134 | int i,j;                                                               
; 135 | unsigned char dat;                                                     
; 136 | BOOL ack;                                                              
; 137 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |133| 
        sti       r2,*+fp(2)            ; |133| 
        sti       ar2,*+fp(1)           ; |133| 
	.line	8
;----------------------------------------------------------------------
; 139 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |139| 
        sti       r0,*+fp(8)            ; |139| 
	.line	10
;----------------------------------------------------------------------
; 141 | I2C_START;                                                             
; 143 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |141| 
        ldiu      4,r0                  ; |141| 
        or3       r0,*ar0,r0            ; |141| 
        sti       r0,*ar0               ; |141| 
        ldiu      1,r0                  ; |141| 
        or3       r0,*ar0,r0            ; |141| 
        sti       r0,*ar0               ; |141| 
        ldiu      8,r0                  ; |141| 
        or3       r0,*ar0,r0            ; |141| 
        sti       r0,*ar0               ; |141| 
        ldiu      2,r0                  ; |141| 
        or3       r0,*ar0,r0            ; |141| 
        sti       r0,*ar0               ; |141| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |141| 
        and3      r0,*ar0,r0            ; |141| 
        sti       r0,*ar0               ; |141| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |141| 
        and3      r0,*ar0,r0            ; |141| 
        sti       r0,*ar0               ; |141| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	14
;----------------------------------------------------------------------
; 145 | dat = addr | 0x01;                              /* address with read bi
;     | t set */                                                               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |145| 
        or        *+fp(1),r0            ; |145| 
        sti       r0,*+fp(6)            ; |145| 
	.line	15
;----------------------------------------------------------------------
; 146 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |146| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |146| 
                                        ; |146| Far Call Occurs
        sti       r0,*+fp(7)            ; |146| 
	.line	16
;----------------------------------------------------------------------
; 147 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |147| 
        bne       L37                   ; |147| 
;*      Branch Occurs to L37            ; |147| 
	.line	18
;----------------------------------------------------------------------
; 149 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |149| 
        sti       r0,*+fp(8)            ; |149| 
	.line	19
;----------------------------------------------------------------------
; 150 | break;                                                                 
;----------------------------------------------------------------------
        bu        L43                   ; |150| 
;*      Branch Occurs to L43            ; |150| 
L37:        
	.line	22
;----------------------------------------------------------------------
; 153 | ack = I2C_TX_BYTE(n);                   /* the number of bytes to read
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(2),ar2           ; |153| 
        ldiu      @CL2,r0               ; |153| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |153| 
                                        ; |153| Far Call Occurs
        sti       r0,*+fp(7)            ; |153| 
	.line	23
;----------------------------------------------------------------------
; 154 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |154| 
        bne       L39                   ; |154| 
;*      Branch Occurs to L39            ; |154| 
	.line	25
;----------------------------------------------------------------------
; 156 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |156| 
        sti       r0,*+fp(8)            ; |156| 
	.line	26
;----------------------------------------------------------------------
; 157 | break;                                                                 
;----------------------------------------------------------------------
        bu        L43                   ; |157| 
;*      Branch Occurs to L43            ; |157| 
L39:        
	.line	29
;----------------------------------------------------------------------
; 160 | for (i=0;i<(n-1);i++)                                                  
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |160| 
        sti       r0,*+fp(4)            ; |160| 
        ldiu      1,r0                  ; |160| 
        ldiu      *+fp(4),r1            ; |160| 
        subri     *+fp(2),r0            ; |160| 
        cmpi3     r0,r1                 ; |160| 
        bge       L41                   ; |160| 
;*      Branch Occurs to L41            ; |160| 
L40:        
	.line	31
;----------------------------------------------------------------------
; 162 | I2C_RX_BYTE(&p[i],1);           /* read the bytes */                   
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |162| 
        ldp       @CL3,DP
        addi      *+fp(3),ar2           ; |162| Unsigned
        ldiu      @CL3,r0               ; |162| 
        ldiu      1,r2                  ; |162| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |162| 
                                        ; |162| Far Call Occurs
	.line	29
        ldiu      1,r0                  ; |160| 
        addi      *+fp(4),r0            ; |160| 
        sti       r0,*+fp(4)            ; |160| 
        ldiu      1,r0                  ; |160| 
        ldiu      *+fp(4),r1            ; |160| 
        subri     *+fp(2),r0            ; |160| 
        cmpi3     r0,r1                 ; |160| 
        blt       L40                   ; |160| 
;*      Branch Occurs to L40            ; |160| 
L41:        
	.line	34
;----------------------------------------------------------------------
; 165 | I2C_RX_BYTE(&p[n-1],0);                 /* the final byte to read */   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar2           ; |165| 
        ldp       @CL3,DP
        addi      *+fp(3),ar2           ; |165| Unsigned
        ldiu      @CL3,r0               ; |165| 
        subi      1,ar2                 ; |165| Unsigned
        ldiu      0,r2                  ; |165| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |165| 
                                        ; |165| Far Call Occurs
	.line	36
;----------------------------------------------------------------------
; 167 | break;                                                                 
;----------------------------------------------------------------------
        bu        L43                   ; |167| 
;*      Branch Occurs to L43            ; |167| 
	.line	37
L43:        
	.line	39
;----------------------------------------------------------------------
; 170 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |170| 
        ldiu      2,r0                  ; |170| 
        or3       r0,*ar0,r0            ; |170| 
        sti       r0,*ar0               ; |170| 
        ldiu      254,r0                ; |170| 
        and3      r0,*ar0,r0            ; |170| 
        sti       r0,*ar0               ; |170| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |170| 
        or3       r0,*ar0,r0            ; |170| 
        sti       r0,*ar0               ; |170| 
        ldiu      247,r0                ; |170| 
        and3      r0,*ar0,r0            ; |170| 
        sti       r0,*ar0               ; |170| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |170| 
        or3       r0,*ar0,r0            ; |170| 
        sti       r0,*ar0               ; |170| 
        ldiu      253,r0                ; |170| 
        and3      r0,*ar0,r0            ; |170| 
        sti       r0,*ar0               ; |170| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	41
;----------------------------------------------------------------------
; 172 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |172| 
	.line	42
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |173| 
        ldiu      *fp,fp                ; |173| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |173| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	173,000000000h,8


	.sect	 ".text"

	.global	_Write_DS1340
	.sym	_Write_DS1340,_Write_DS1340,46,2,0
	.func	175
;******************************************************************************
;* FUNCTION NAME: _Write_DS1340                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_DS1340:
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
; 175 | BOOL Write_DS1340(int addr, int n, unsigned char* p)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 177 | int i;                                                                 
; 178 | unsigned char dat;                                                     
; 179 | BOOL ack;                                                              
; 180 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |176| 
        sti       r2,*+fp(2)            ; |176| 
        sti       ar2,*+fp(1)           ; |176| 
	.line	8
;----------------------------------------------------------------------
; 182 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 184 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |184| 
        sti       r0,*+fp(7)            ; |184| 
	.line	12
;----------------------------------------------------------------------
; 186 | I2C_START;                                                             
; 188 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |186| 
        ldiu      4,r0                  ; |186| 
        or3       r0,*ar0,r0            ; |186| 
        sti       r0,*ar0               ; |186| 
        ldiu      1,r0                  ; |186| 
        or3       r0,*ar0,r0            ; |186| 
        sti       r0,*ar0               ; |186| 
        ldiu      8,r0                  ; |186| 
        or3       r0,*ar0,r0            ; |186| 
        sti       r0,*ar0               ; |186| 
        ldiu      2,r0                  ; |186| 
        or3       r0,*ar0,r0            ; |186| 
        sti       r0,*ar0               ; |186| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |186| 
        and3      r0,*ar0,r0            ; |186| 
        sti       r0,*ar0               ; |186| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |186| 
        and3      r0,*ar0,r0            ; |186| 
        sti       r0,*ar0               ; |186| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	16
;----------------------------------------------------------------------
; 190 | dat = RTC_ADDR;                                         /* address with
;     | out read bit set */                                                    
;----------------------------------------------------------------------
        ldiu      208,r0                ; |190| 
        sti       r0,*+fp(5)            ; |190| 
	.line	17
;----------------------------------------------------------------------
; 191 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |191| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |191| 
                                        ; |191| Far Call Occurs
        sti       r0,*+fp(6)            ; |191| 
	.line	18
;----------------------------------------------------------------------
; 192 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |192| 
        bne       L48                   ; |192| 
;*      Branch Occurs to L48            ; |192| 
	.line	20
;----------------------------------------------------------------------
; 194 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |194| 
        sti       r0,*+fp(7)            ; |194| 
	.line	21
;----------------------------------------------------------------------
; 195 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56                   ; |195| 
;*      Branch Occurs to L56            ; |195| 
L48:        
	.line	24
;----------------------------------------------------------------------
; 198 | ack = I2C_TX_BYTE(addr);                        /* set the pointer */  
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(1),ar2           ; |198| 
        ldiu      @CL2,r0               ; |198| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |198| 
                                        ; |198| Far Call Occurs
        sti       r0,*+fp(6)            ; |198| 
	.line	25
;----------------------------------------------------------------------
; 199 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |199| 
        bne       L50                   ; |199| 
;*      Branch Occurs to L50            ; |199| 
	.line	27
;----------------------------------------------------------------------
; 201 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |201| 
        sti       r0,*+fp(7)            ; |201| 
	.line	28
;----------------------------------------------------------------------
; 202 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56                   ; |202| 
;*      Branch Occurs to L56            ; |202| 
L50:        
	.line	31
;----------------------------------------------------------------------
; 205 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |205| 
        sti       r0,*+fp(4)            ; |205| 
        cmpi      *+fp(2),r0            ; |205| 
        bge       L56                   ; |205| 
;*      Branch Occurs to L56            ; |205| 
L51:        
	.line	33
;----------------------------------------------------------------------
; 207 | ack = I2C_TX_BYTE(p[i]);                /* write the bytes */          
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      *+fp(3),ir0           ; |207| 
        ldiu      *+fp(4),ar0           ; |207| 
        ldiu      @CL2,r0               ; |207| 
        ldiu      *+ar0(ir0),ar2        ; |207| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |207| 
                                        ; |207| Far Call Occurs
        sti       r0,*+fp(6)            ; |207| 
	.line	34
;----------------------------------------------------------------------
; 208 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |208| 
        bne       L53                   ; |208| 
;*      Branch Occurs to L53            ; |208| 
	.line	36
;----------------------------------------------------------------------
; 210 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |210| 
        sti       r0,*+fp(7)            ; |210| 
	.line	37
;----------------------------------------------------------------------
; 211 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56                   ; |211| 
;*      Branch Occurs to L56            ; |211| 
L53:        
	.line	31
        ldiu      1,r0                  ; |205| 
        addi      *+fp(4),r0            ; |205| 
        sti       r0,*+fp(4)            ; |205| 
        cmpi      *+fp(2),r0            ; |205| 
        blt       L51                   ; |205| 
;*      Branch Occurs to L51            ; |205| 
	.line	41
;----------------------------------------------------------------------
; 215 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56                   ; |215| 
;*      Branch Occurs to L56            ; |215| 
	.line	42
L56:        
	.line	44
;----------------------------------------------------------------------
; 218 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |218| 
        ldiu      2,r0                  ; |218| 
        or3       r0,*ar0,r0            ; |218| 
        sti       r0,*ar0               ; |218| 
        ldiu      254,r0                ; |218| 
        and3      r0,*ar0,r0            ; |218| 
        sti       r0,*ar0               ; |218| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |218| 
        or3       r0,*ar0,r0            ; |218| 
        sti       r0,*ar0               ; |218| 
        ldiu      247,r0                ; |218| 
        and3      r0,*ar0,r0            ; |218| 
        sti       r0,*ar0               ; |218| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |218| 
        or3       r0,*ar0,r0            ; |218| 
        sti       r0,*ar0               ; |218| 
        ldiu      253,r0                ; |218| 
        and3      r0,*ar0,r0            ; |218| 
        sti       r0,*ar0               ; |218| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	46
;----------------------------------------------------------------------
; 220 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	47
;----------------------------------------------------------------------
; 221 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0            ; |221| 
	.line	48
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |222| 
        ldiu      *fp,fp                ; |222| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |222| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	222,000000000h,7


	.sect	 ".text"

	.global	_Read_DS1340
	.sym	_Read_DS1340,_Read_DS1340,46,2,0
	.func	224
;******************************************************************************
;* FUNCTION NAME: _Read_DS1340                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Read_DS1340:
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
; 224 | BOOL Read_DS1340(int addr, int n, unsigned char* p)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 226 | int i,j;                                                               
; 227 | unsigned char dat;                                                     
; 228 | BOOL ack;                                                              
; 229 | BOOL r;                                                                
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |225| 
        sti       r2,*+fp(2)            ; |225| 
        sti       ar2,*+fp(1)           ; |225| 
	.line	8
;----------------------------------------------------------------------
; 231 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 233 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |233| 
        sti       r0,*+fp(8)            ; |233| 
	.line	12
;----------------------------------------------------------------------
; 235 | if (!Write_DS1340(addr, 0, p))                                         
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |235| 
        ldiu      0,r2                  ; |235| 
        callu     r0                    ; far call to _Write_DS1340	; |235| 
                                        ; |235| Far Call Occurs
        cmpi      0,r0                  ; |235| 
        bne       L61                   ; |235| 
;*      Branch Occurs to L61            ; |235| 
	.line	14
;----------------------------------------------------------------------
; 237 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	15
;----------------------------------------------------------------------
; 238 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L70                   ; |238| 
	nop
	nop
        ldiu      0,r0                  ; |238| 
;*      Branch Occurs to L70            ; |238| 
L61:        
	.line	18
;----------------------------------------------------------------------
; 241 | I2C_START;                                                             
; 243 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |241| 
        ldiu      4,r0                  ; |241| 
        or3       r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
        ldiu      1,r0                  ; |241| 
        or3       r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
        ldiu      8,r0                  ; |241| 
        or3       r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
        ldiu      2,r0                  ; |241| 
        or3       r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |241| 
        and3      r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |241| 
        and3      r0,*ar0,r0            ; |241| 
        sti       r0,*ar0               ; |241| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	22
;----------------------------------------------------------------------
; 245 | dat = RTC_ADDR | 0x01;                          /* address with read bi
;     | t set */                                                               
;----------------------------------------------------------------------
        ldiu      209,r0                ; |245| 
        sti       r0,*+fp(6)            ; |245| 
	.line	23
;----------------------------------------------------------------------
; 246 | ack = I2C_TX_BYTE(dat);                                                
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      r0,ar2
        ldiu      @CL2,r0               ; |246| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |246| 
                                        ; |246| Far Call Occurs
        sti       r0,*+fp(7)            ; |246| 
	.line	24
;----------------------------------------------------------------------
; 247 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |247| 
        bne       L63                   ; |247| 
;*      Branch Occurs to L63            ; |247| 
	.line	26
;----------------------------------------------------------------------
; 249 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |249| 
        sti       r0,*+fp(8)            ; |249| 
	.line	27
;----------------------------------------------------------------------
; 250 | break;                                                                 
;----------------------------------------------------------------------
        bu        L69                   ; |250| 
;*      Branch Occurs to L69            ; |250| 
L63:        
	.line	30
;----------------------------------------------------------------------
; 253 | ack = TRUE;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |253| 
        sti       r0,*+fp(7)            ; |253| 
	.line	31
;----------------------------------------------------------------------
; 254 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |254| 
        sti       r0,*+fp(4)            ; |254| 
        cmpi      *+fp(2),r0            ; |254| 
        bge       L69                   ; |254| 
;*      Branch Occurs to L69            ; |254| 
L64:        
	.line	33
;----------------------------------------------------------------------
; 256 | if (i==(n-1)) ack = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |256| 
        ldiu      *+fp(4),r1            ; |256| 
        subri     *+fp(2),r0            ; |256| 
        cmpi3     r0,r1                 ; |256| 
        bne       L66                   ; |256| 
;*      Branch Occurs to L66            ; |256| 
        ldiu      0,r0                  ; |256| 
        sti       r0,*+fp(7)            ; |256| 
L66:        
	.line	34
;----------------------------------------------------------------------
; 257 | I2C_RX_BYTE(&p[i],ack);         /* read the bytes */                   
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |257| 
        ldp       @CL3,DP
        ldiu      *+fp(7),r2            ; |257| 
        addi      *+fp(3),ar2           ; |257| Unsigned
        ldiu      @CL3,r0               ; |257| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |257| 
                                        ; |257| Far Call Occurs
	.line	31
        ldiu      1,r0                  ; |254| 
        addi      *+fp(4),r0            ; |254| 
        sti       r0,*+fp(4)            ; |254| 
        cmpi      *+fp(2),r0            ; |254| 
        blt       L64                   ; |254| 
;*      Branch Occurs to L64            ; |254| 
	.line	37
;----------------------------------------------------------------------
; 260 | break;                                                                 
;----------------------------------------------------------------------
        bu        L69                   ; |260| 
;*      Branch Occurs to L69            ; |260| 
	.line	38
L69:        
	.line	40
;----------------------------------------------------------------------
; 263 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |263| 
        ldiu      2,r0                  ; |263| 
        or3       r0,*ar0,r0            ; |263| 
        sti       r0,*ar0               ; |263| 
        ldiu      254,r0                ; |263| 
        and3      r0,*ar0,r0            ; |263| 
        sti       r0,*ar0               ; |263| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |263| 
        or3       r0,*ar0,r0            ; |263| 
        sti       r0,*ar0               ; |263| 
        ldiu      247,r0                ; |263| 
        and3      r0,*ar0,r0            ; |263| 
        sti       r0,*ar0               ; |263| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |263| 
        or3       r0,*ar0,r0            ; |263| 
        sti       r0,*ar0               ; |263| 
        ldiu      253,r0                ; |263| 
        and3      r0,*ar0,r0            ; |263| 
        sti       r0,*ar0               ; |263| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	42
;----------------------------------------------------------------------
; 265 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	43
;----------------------------------------------------------------------
; 266 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0            ; |266| 
L70:        
	.line	44
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |267| 
        ldiu      *fp,fp                ; |267| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |267| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	267,000000000h,8


	.sect	 "initialization"

	.global	_RTC_setup
	.sym	_RTC_setup,_RTC_setup,46,2,0
	.func	269
;******************************************************************************
;* FUNCTION NAME: _RTC_setup                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_RTC_setup:
	.sym	_r,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 269 | BOOL RTC_setup(void)                                                   
; 271 | BOOL r;                                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 273 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 275 | r = Read_DS1340(8,10,RTC);                                             
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |275| 
        ldiu      8,ar2                 ; |275| 
        ldp       @CL5,DP
        ldiu      10,r2                 ; |275| 
        ldiu      @CL5,r3               ; |275| 
        callu     r0                    ; far call to _Read_DS1340	; |275| 
                                        ; |275| Far Call Occurs
        sti       r0,*+fp(1)            ; |275| 
	.line	8
;----------------------------------------------------------------------
; 276 | if (!r)                                                                
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |276| 
        bne       L74                   ; |276| 
;*      Branch Occurs to L74            ; |276| 
	.line	10
;----------------------------------------------------------------------
; 278 | RTC_PRESENT = FALSE;                                                   
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |278| 
        ldiu      0,r0                  ; |278| 
        sti       r0,*ar0               ; |278| 
	.line	11
;----------------------------------------------------------------------
; 279 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	12
;----------------------------------------------------------------------
; 280 | return r;       /* RTC is not found */                                 
;----------------------------------------------------------------------
        bud       L80                   ; |280| 
	nop
	nop
        ldiu      *+fp(1),r0            ; |280| 
;*      Branch Occurs to L80            ; |280| 
L74:        
	.line	15
;----------------------------------------------------------------------
; 283 | RTC_PRESENT = TRUE;                                                    
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |283| 
        ldiu      1,r0                  ; |283| 
        sti       r0,*ar0               ; |283| 
	.line	17
;----------------------------------------------------------------------
; 285 | if (RTC[1] & 0x80)                                                     
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |285| 
        ldiu      128,r0                ; |285| 
        tstb3     *ar0,r0               ; |285| 
        beq       L76                   ; |285| 
;*      Branch Occurs to L76            ; |285| 
	.line	19
;----------------------------------------------------------------------
; 287 | DIAGNOSTICS[1] |= ERROR2_TIME_RESET;                                   
; 289 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |287| 
        ldiu      1,r0                  ; |287| 
        or        *+ar0(1),r0           ; |287| 
        sti       r0,*+ar0(1)           ; |287| 
        bu        L77                   ; |268| 
;*      Branch Occurs to L77            ; |268| 
L76:        
	.line	23
;----------------------------------------------------------------------
; 291 | DIAGNOSTICS[1] &= 0xFFFFFFFF ^ ERROR2_TIME_RESET;                      
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |291| 
        ldiu      *+ar0(1),r0           ; |291| 
        andn      1,r0                  ; |291| 
        sti       r0,*+ar0(1)           ; |291| 
L77:        
	.line	26
;----------------------------------------------------------------------
; 294 | RTC[9] |= 0x40; /* enable FT output */                                 
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |294| 
        ldiu      64,r0                 ; |294| 
        or        *+ar0(9),r0           ; |294| 
        sti       r0,*+ar0(9)           ; |294| 
	.line	27
;----------------------------------------------------------------------
; 295 | Write_DS1340(8, 2, &RTC[0]);                                           
;----------------------------------------------------------------------
        ldiu      @CL5,r3               ; |295| 
        ldp       @CL4,DP
        ldiu      8,ar2                 ; |295| 
        ldiu      @CL4,r0               ; |295| 
        ldiu      2,r2                  ; |295| 
        callu     r0                    ; far call to _Write_DS1340	; |295| 
                                        ; |295| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 296 | Write_DS1340(7, 1, &RTC[9]);                                           
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r3              ; |296| 
        ldp       @CL4,DP
        ldiu      7,ar2                 ; |296| 
        ldiu      @CL4,r0               ; |296| 
        ldiu      1,r2                  ; |296| 
        callu     r0                    ; far call to _Write_DS1340	; |296| 
                                        ; |296| Far Call Occurs
	.line	30
;----------------------------------------------------------------------
; 298 | if (RTC[2]&0x80)                                                       
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |298| 
        ldiu      128,r0                ; |298| 
        tstb3     *ar0,r0               ; |298| 
        beq       L79                   ; |298| 
;*      Branch Occurs to L79            ; |298| 
	.line	32
;----------------------------------------------------------------------
; 300 | RTC[2] &= 0x3F;                                                        
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |300| 
        ldiu      63,r0                 ; |300| 
        and       *+ar0(2),r0           ; |300| 
        sti       r0,*+ar0(2)           ; |300| 
	.line	33
;----------------------------------------------------------------------
; 301 | Write_DS1340(0, 1, &RTC[2]);                                           
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,r3              ; |301| 
        ldp       @CL4,DP
        ldiu      0,ar2                 ; |301| 
        ldiu      @CL4,r0               ; |301| 
        ldiu      1,r2                  ; |301| 
        callu     r0                    ; far call to _Write_DS1340	; |301| 
                                        ; |301| Far Call Occurs
L79:        
	.line	36
;----------------------------------------------------------------------
; 304 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	37
;----------------------------------------------------------------------
; 305 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |305| 
L80:        
	.line	38
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |306| 
        ldiu      *fp,fp                ; |306| 
                                        ; Unallocate the Frame
        subi      3,sp                  ; |306| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	306,000000000h,1


	.sect	 "internal_RAM"

	.global	_Write_MC24C02_Record
	.sym	_Write_MC24C02_Record,_Write_MC24C02_Record,46,2,0
	.func	308
;******************************************************************************
;* FUNCTION NAME: _Write_MC24C02_Record                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Write_MC24C02_Record:
;* ar2   assigned to _addr
	.sym	_addr,10,4,17,32
;* r2    assigned to _p
	.sym	_p,2,28,17,32
	.sym	_addr,1,4,1,32
	.sym	_p,2,28,1,32
	.sym	_i,3,4,1,32
	.sym	_j,4,4,1,32
	.sym	_k,5,4,1,32
	.sym	_r,6,4,1,32
	.sym	_ack,7,14,1,32
	.line	1
;----------------------------------------------------------------------
; 308 | BOOL Write_MC24C02_Record(int addr, unsigned char* p)                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 310 | int i,j,k,r;                                                           
; 311 | BOOL ack;                                                              
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |309| 
        sti       ar2,*+fp(1)           ; |309| 
	.line	6
;----------------------------------------------------------------------
; 313 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
; 315 | for (i=0;i<256;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |315| 
        sti       r0,*+fp(3)            ; |315| 
        cmpi      256,r0                ; |315| 
        ldiu      255,r1                ; |317| 
        bge       L84                   ; |315| 
;*      Branch Occurs to L84            ; |315| 
L83:        
	.line	10
;----------------------------------------------------------------------
; 317 | p[i] &= 0xFF;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |317| 
        ldiu      *+fp(3),ar0           ; |317| 
        and3      r1,*+ar0(ir0),r0      ; |317| 
        sti       r0,*+ar0(ir0)         ; |317| 
	.line	8
        ldiu      1,r0                  ; |315| 
        addi      *+fp(3),r0            ; |315| 
        sti       r0,*+fp(3)            ; |315| 
        cmpi      256,r0                ; |315| 
        blt       L83                   ; |315| 
;*      Branch Occurs to L83            ; |315| 
L84:        
	.line	13
;----------------------------------------------------------------------
; 320 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |320| 
        sti       r0,*+fp(6)            ; |320| 
	.line	15
;----------------------------------------------------------------------
; 322 | for(j=0;j<16;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |322| 
        sti       r0,*+fp(4)            ; |322| 
        cmpi      16,r0                 ; |322| 
        bge       L101                  ; |322| 
;*      Branch Occurs to L101           ; |322| 
L85:        
	.line	17
;----------------------------------------------------------------------
; 324 | k = 0;                                                                 
; 325 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |324| 
        sti       r0,*+fp(5)            ; |324| 
L86:        
	.line	20
;----------------------------------------------------------------------
; 327 | I2C_START;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |327| 
        ldiu      4,r0                  ; |327| 
        or3       r0,*ar0,r0            ; |327| 
        sti       r0,*ar0               ; |327| 
        ldiu      1,r0                  ; |327| 
        or3       r0,*ar0,r0            ; |327| 
        sti       r0,*ar0               ; |327| 
        ldiu      8,r0                  ; |327| 
        or3       r0,*ar0,r0            ; |327| 
        sti       r0,*ar0               ; |327| 
        ldiu      2,r0                  ; |327| 
        or3       r0,*ar0,r0            ; |327| 
        sti       r0,*ar0               ; |327| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |327| 
        and3      r0,*ar0,r0            ; |327| 
        sti       r0,*ar0               ; |327| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |327| 
        and3      r0,*ar0,r0            ; |327| 
        sti       r0,*ar0               ; |327| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	21
;----------------------------------------------------------------------
; 328 | ack = I2C_TX_BYTE(addr);                /* address without read bit set
;     |  */                                                                    
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |328| 
        ldiu      *+fp(1),ar2           ; |328| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |328| 
                                        ; |328| Far Call Occurs
        sti       r0,*+fp(7)            ; |328| 
	.line	22
;----------------------------------------------------------------------
; 329 | if (!ack) k++;                                                         
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |329| 
        bne       L92                   ; |329| 
;*      Branch Occurs to L92            ; |329| 
        ldiu      1,r0                  ; |329| 
        addi      *+fp(5),r0            ; |329| 
        sti       r0,*+fp(5)            ; |329| 
        bu        L89                   ; |307| 
;*      Branch Occurs to L89            ; |307| 
	.line	23
;----------------------------------------------------------------------
; 330 | else break;                                                            
;----------------------------------------------------------------------
L89:        
	.line	24
;----------------------------------------------------------------------
; 331 | if (k>=50)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |331| 
        cmpi      50,r0                 ; |331| 
        blt       L91                   ; |331| 
;*      Branch Occurs to L91            ; |331| 
	.line	26
;----------------------------------------------------------------------
; 333 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |333| 
        sti       r0,*+fp(6)            ; |333| 
	.line	27
;----------------------------------------------------------------------
; 334 | break;                                                                 
;----------------------------------------------------------------------
        bu        L92                   ; |334| 
;*      Branch Occurs to L92            ; |334| 
L91:        
	.line	29
;----------------------------------------------------------------------
; 336 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |336| 
        ldiu      2,r0                  ; |336| 
        or3       r0,*ar0,r0            ; |336| 
        sti       r0,*ar0               ; |336| 
        ldiu      254,r0                ; |336| 
        and3      r0,*ar0,r0            ; |336| 
        sti       r0,*ar0               ; |336| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |336| 
        or3       r0,*ar0,r0            ; |336| 
        sti       r0,*ar0               ; |336| 
        ldiu      247,r0                ; |336| 
        and3      r0,*ar0,r0            ; |336| 
        sti       r0,*ar0               ; |336| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |336| 
        or3       r0,*ar0,r0            ; |336| 
        sti       r0,*ar0               ; |336| 
        ldiu      253,r0                ; |336| 
        and3      r0,*ar0,r0            ; |336| 
        sti       r0,*ar0               ; |336| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	30
        bu        L86                   ; |337| 
;*      Branch Occurs to L86            ; |337| 
L92:        
	.line	31
;----------------------------------------------------------------------
; 338 | if (r==FALSE) break;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |338| 
        cmpi      0,r0                  ; |338| 
        beq       L101                  ; |338| 
;*      Branch Occurs to L101           ; |338| 
	.line	33
;----------------------------------------------------------------------
; 340 | ack = I2C_TX_BYTE(j*16);                        /* set the pointer */  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |340| 
        ldp       @CL2,DP
        ash       4,ar2                 ; |340| 
        ldiu      @CL2,r0               ; |340| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |340| 
                                        ; |340| Far Call Occurs
        sti       r0,*+fp(7)            ; |340| 
	.line	34
;----------------------------------------------------------------------
; 341 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |341| 
        bne       L95                   ; |341| 
;*      Branch Occurs to L95            ; |341| 
	.line	36
;----------------------------------------------------------------------
; 343 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |343| 
        sti       r0,*+fp(6)            ; |343| 
	.line	37
;----------------------------------------------------------------------
; 344 | break;                                                                 
;----------------------------------------------------------------------
        bu        L101                  ; |344| 
;*      Branch Occurs to L101           ; |344| 
L95:        
	.line	40
;----------------------------------------------------------------------
; 347 | for(i=0;i<16;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |347| 
        sti       r0,*+fp(3)            ; |347| 
        cmpi      16,r0                 ; |347| 
        bge       L99                   ; |347| 
;*      Branch Occurs to L99            ; |347| 
L96:        
	.line	42
;----------------------------------------------------------------------
; 349 | ack = I2C_TX_BYTE(p[j*16+i]);                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),ir0           ; |349| 
        ldp       @CL2,DP
        ash       4,ir0                 ; |349| 
        ldiu      *+fp(3),ar0           ; |349| 
        addi      *+fp(2),ir0           ; |349| Unsigned
        ldiu      @CL2,r0               ; |349| 
        ldiu      *+ar0(ir0),ar2        ; |349| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |349| 
                                        ; |349| Far Call Occurs
        sti       r0,*+fp(7)            ; |349| 
	.line	43
;----------------------------------------------------------------------
; 350 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |350| 
        bne       L98                   ; |350| 
;*      Branch Occurs to L98            ; |350| 
	.line	45
;----------------------------------------------------------------------
; 352 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |352| 
        sti       r0,*+fp(6)            ; |352| 
	.line	46
;----------------------------------------------------------------------
; 353 | break;                                                                 
;----------------------------------------------------------------------
        bu        L99                   ; |353| 
;*      Branch Occurs to L99            ; |353| 
L98:        
	.line	40
        ldiu      1,r0                  ; |347| 
        addi      *+fp(3),r0            ; |347| 
        sti       r0,*+fp(3)            ; |347| 
        cmpi      16,r0                 ; |347| 
        blt       L96                   ; |347| 
;*      Branch Occurs to L96            ; |347| 
L99:        
	.line	50
;----------------------------------------------------------------------
; 357 | if (r==FALSE) break;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |357| 
        cmpi      0,r0                  ; |357| 
        beq       L101                  ; |357| 
;*      Branch Occurs to L101           ; |357| 
	.line	52
;----------------------------------------------------------------------
; 359 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |359| 
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
	.line	15
        ldiu      1,r0                  ; |322| 
        addi      *+fp(4),r0            ; |322| 
        sti       r0,*+fp(4)            ; |322| 
        cmpi      16,r0                 ; |322| 
        blt       L85                   ; |322| 
;*      Branch Occurs to L85            ; |322| 
L101:        
	.line	55
;----------------------------------------------------------------------
; 362 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |362| 
        ldiu      2,r0                  ; |362| 
        or3       r0,*ar0,r0            ; |362| 
        sti       r0,*ar0               ; |362| 
        ldiu      254,r0                ; |362| 
        and3      r0,*ar0,r0            ; |362| 
        sti       r0,*ar0               ; |362| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |362| 
        or3       r0,*ar0,r0            ; |362| 
        sti       r0,*ar0               ; |362| 
        ldiu      247,r0                ; |362| 
        and3      r0,*ar0,r0            ; |362| 
        sti       r0,*ar0               ; |362| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |362| 
        or3       r0,*ar0,r0            ; |362| 
        sti       r0,*ar0               ; |362| 
        ldiu      253,r0                ; |362| 
        and3      r0,*ar0,r0            ; |362| 
        sti       r0,*ar0               ; |362| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	57
;----------------------------------------------------------------------
; 364 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	58
;----------------------------------------------------------------------
; 365 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |365| 
	.line	59
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |366| 
        ldiu      *fp,fp                ; |366| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |366| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	366,000000000h,7


	.sect	 "internal_RAM"

	.global	_Read_MC24C02_Record
	.sym	_Read_MC24C02_Record,_Read_MC24C02_Record,46,2,0
	.func	368
;******************************************************************************
;* FUNCTION NAME: _Read_MC24C02_Record                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Read_MC24C02_Record:
;* ar2   assigned to _addr
	.sym	_addr,10,4,17,32
;* r2    assigned to _p
	.sym	_p,2,28,17,32
	.sym	_addr,1,4,1,32
	.sym	_p,2,28,1,32
	.sym	_i,3,4,1,32
	.sym	_j,4,4,1,32
	.sym	_k,5,4,1,32
	.sym	_r,6,4,1,32
	.sym	_ack,7,14,1,32
	.line	1
;----------------------------------------------------------------------
; 368 | BOOL Read_MC24C02_Record(int addr, unsigned char* p)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 370 | int i,j,k,r;                                                           
; 371 | BOOL ack;                                                              
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |369| 
        sti       ar2,*+fp(1)           ; |369| 
	.line	6
;----------------------------------------------------------------------
; 373 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	8
;----------------------------------------------------------------------
; 375 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |375| 
        sti       r0,*+fp(6)            ; |375| 
	.line	10
;----------------------------------------------------------------------
; 377 | for(j=0;j<16;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |377| 
        sti       r0,*+fp(4)            ; |377| 
        cmpi      16,r0                 ; |377| 
        bge       L120                  ; |377| 
;*      Branch Occurs to L120           ; |377| 
L105:        
	.line	12
;----------------------------------------------------------------------
; 379 | k = 0;                                                                 
; 380 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |379| 
        sti       r0,*+fp(5)            ; |379| 
L106:        
	.line	15
;----------------------------------------------------------------------
; 382 | I2C_START;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |382| 
        ldiu      4,r0                  ; |382| 
        or3       r0,*ar0,r0            ; |382| 
        sti       r0,*ar0               ; |382| 
        ldiu      1,r0                  ; |382| 
        or3       r0,*ar0,r0            ; |382| 
        sti       r0,*ar0               ; |382| 
        ldiu      8,r0                  ; |382| 
        or3       r0,*ar0,r0            ; |382| 
        sti       r0,*ar0               ; |382| 
        ldiu      2,r0                  ; |382| 
        or3       r0,*ar0,r0            ; |382| 
        sti       r0,*ar0               ; |382| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |382| 
        and3      r0,*ar0,r0            ; |382| 
        sti       r0,*ar0               ; |382| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |382| 
        and3      r0,*ar0,r0            ; |382| 
        sti       r0,*ar0               ; |382| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	16
;----------------------------------------------------------------------
; 383 | ack = I2C_TX_BYTE(addr);                /* address without read bit set
;     |  */                                                                    
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |383| 
        ldiu      *+fp(1),ar2           ; |383| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |383| 
                                        ; |383| Far Call Occurs
        sti       r0,*+fp(7)            ; |383| 
	.line	17
;----------------------------------------------------------------------
; 384 | if (!ack) k++;                                                         
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |384| 
        bne       L112                  ; |384| 
;*      Branch Occurs to L112           ; |384| 
        ldiu      1,r0                  ; |384| 
        addi      *+fp(5),r0            ; |384| 
        sti       r0,*+fp(5)            ; |384| 
        bu        L109                  ; |367| 
;*      Branch Occurs to L109           ; |367| 
	.line	18
;----------------------------------------------------------------------
; 385 | else break;                                                            
;----------------------------------------------------------------------
L109:        
	.line	19
;----------------------------------------------------------------------
; 386 | if (k>=50)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |386| 
        cmpi      50,r0                 ; |386| 
        blt       L111                  ; |386| 
;*      Branch Occurs to L111           ; |386| 
	.line	21
;----------------------------------------------------------------------
; 388 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |388| 
        sti       r0,*+fp(6)            ; |388| 
	.line	22
;----------------------------------------------------------------------
; 389 | break;                                                                 
;----------------------------------------------------------------------
        bu        L112                  ; |389| 
;*      Branch Occurs to L112           ; |389| 
L111:        
	.line	24
;----------------------------------------------------------------------
; 391 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |391| 
        ldiu      2,r0                  ; |391| 
        or3       r0,*ar0,r0            ; |391| 
        sti       r0,*ar0               ; |391| 
        ldiu      254,r0                ; |391| 
        and3      r0,*ar0,r0            ; |391| 
        sti       r0,*ar0               ; |391| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |391| 
        or3       r0,*ar0,r0            ; |391| 
        sti       r0,*ar0               ; |391| 
        ldiu      247,r0                ; |391| 
        and3      r0,*ar0,r0            ; |391| 
        sti       r0,*ar0               ; |391| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |391| 
        or3       r0,*ar0,r0            ; |391| 
        sti       r0,*ar0               ; |391| 
        ldiu      253,r0                ; |391| 
        and3      r0,*ar0,r0            ; |391| 
        sti       r0,*ar0               ; |391| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	25
        bu        L106                  ; |392| 
;*      Branch Occurs to L106           ; |392| 
L112:        
	.line	26
;----------------------------------------------------------------------
; 393 | if (r==FALSE) break;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |393| 
        cmpi      0,r0                  ; |393| 
        beq       L120                  ; |393| 
;*      Branch Occurs to L120           ; |393| 
	.line	28
;----------------------------------------------------------------------
; 395 | ack = I2C_TX_BYTE(j*16);                        /* set the pointer */  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |395| 
        ldp       @CL2,DP
        ash       4,ar2                 ; |395| 
        ldiu      @CL2,r0               ; |395| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |395| 
                                        ; |395| Far Call Occurs
        sti       r0,*+fp(7)            ; |395| 
	.line	29
;----------------------------------------------------------------------
; 396 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |396| 
        bne       L115                  ; |396| 
;*      Branch Occurs to L115           ; |396| 
	.line	31
;----------------------------------------------------------------------
; 398 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |398| 
        sti       r0,*+fp(6)            ; |398| 
	.line	32
;----------------------------------------------------------------------
; 399 | break;                                                                 
;----------------------------------------------------------------------
        bu        L120                  ; |399| 
;*      Branch Occurs to L120           ; |399| 
L115:        
	.line	35
;----------------------------------------------------------------------
; 402 | I2C_START;                                                             
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |402| 
        ldiu      4,r0                  ; |402| 
        or3       r0,*ar0,r0            ; |402| 
        sti       r0,*ar0               ; |402| 
        ldiu      1,r0                  ; |402| 
        or3       r0,*ar0,r0            ; |402| 
        sti       r0,*ar0               ; |402| 
        ldiu      8,r0                  ; |402| 
        or3       r0,*ar0,r0            ; |402| 
        sti       r0,*ar0               ; |402| 
        ldiu      2,r0                  ; |402| 
        or3       r0,*ar0,r0            ; |402| 
        sti       r0,*ar0               ; |402| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      254,r0                ; |402| 
        and3      r0,*ar0,r0            ; |402| 
        sti       r0,*ar0               ; |402| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      251,r0                ; |402| 
        and3      r0,*ar0,r0            ; |402| 
        sti       r0,*ar0               ; |402| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	37
;----------------------------------------------------------------------
; 404 | ack = I2C_TX_BYTE(addr|0x01);           /* address with read bit set */
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      1,ar2                 ; |404| 
        ldiu      @CL2,r0               ; |404| 
        or        *+fp(1),ar2           ; |404| 
        callu     r0                    ; far call to _I2C_TX_BYTE	; |404| 
                                        ; |404| Far Call Occurs
        sti       r0,*+fp(7)            ; |404| 
	.line	38
;----------------------------------------------------------------------
; 405 | if (!ack)                                                              
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |405| 
        bne       L117                  ; |405| 
;*      Branch Occurs to L117           ; |405| 
	.line	40
;----------------------------------------------------------------------
; 407 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |407| 
        sti       r0,*+fp(6)            ; |407| 
	.line	41
;----------------------------------------------------------------------
; 408 | break;                                                                 
;----------------------------------------------------------------------
        bu        L120                  ; |408| 
;*      Branch Occurs to L120           ; |408| 
L117:        
	.line	44
;----------------------------------------------------------------------
; 411 | for (i=0;i<15;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |411| 
        sti       r0,*+fp(3)            ; |411| 
        cmpi      15,r0                 ; |411| 
        bge       L119                  ; |411| 
;*      Branch Occurs to L119           ; |411| 
L118:        
	.line	46
;----------------------------------------------------------------------
; 413 | I2C_RX_BYTE(&p[j*16+i],1);              /* read the bytes , WITH ACK*/ 
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |413| 
        ldp       @CL3,DP
        ash       4,ar2                 ; |413| 
        addi      *+fp(2),ar2           ; |413| Unsigned
        ldiu      @CL3,r0               ; |413| 
        addi      *+fp(3),ar2           ; |413| Unsigned
        ldiu      1,r2                  ; |413| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |413| 
                                        ; |413| Far Call Occurs
	.line	44
        ldiu      1,r0                  ; |411| 
        addi      *+fp(3),r0            ; |411| 
        sti       r0,*+fp(3)            ; |411| 
        cmpi      15,r0                 ; |411| 
        blt       L118                  ; |411| 
;*      Branch Occurs to L118           ; |411| 
L119:        
	.line	49
;----------------------------------------------------------------------
; 416 | I2C_RX_BYTE(&p[j*16+i],0);                      /* the final byte to re
;     | ad, WITH NO ACK */                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar2           ; |416| 
        ldp       @CL3,DP
        ash       4,ar2                 ; |416| 
        addi      *+fp(2),ar2           ; |416| Unsigned
        ldiu      @CL3,r0               ; |416| 
        addi      *+fp(3),ar2           ; |416| Unsigned
        ldiu      0,r2                  ; |416| 
        callu     r0                    ; far call to _I2C_RX_BYTE	; |416| 
                                        ; |416| Far Call Occurs
	.line	51
;----------------------------------------------------------------------
; 418 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |418| 
        ldiu      2,r0                  ; |418| 
        or3       r0,*ar0,r0            ; |418| 
        sti       r0,*ar0               ; |418| 
        ldiu      254,r0                ; |418| 
        and3      r0,*ar0,r0            ; |418| 
        sti       r0,*ar0               ; |418| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |418| 
        or3       r0,*ar0,r0            ; |418| 
        sti       r0,*ar0               ; |418| 
        ldiu      247,r0                ; |418| 
        and3      r0,*ar0,r0            ; |418| 
        sti       r0,*ar0               ; |418| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |418| 
        or3       r0,*ar0,r0            ; |418| 
        sti       r0,*ar0               ; |418| 
        ldiu      253,r0                ; |418| 
        and3      r0,*ar0,r0            ; |418| 
        sti       r0,*ar0               ; |418| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	10
        ldiu      1,r0                  ; |377| 
        addi      *+fp(4),r0            ; |377| 
        sti       r0,*+fp(4)            ; |377| 
        cmpi      16,r0                 ; |377| 
        blt       L105                  ; |377| 
;*      Branch Occurs to L105           ; |377| 
L120:        
	.line	54
;----------------------------------------------------------------------
; 421 | I2C_STOP;                                                              
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |421| 
        ldiu      2,r0                  ; |421| 
        or3       r0,*ar0,r0            ; |421| 
        sti       r0,*ar0               ; |421| 
        ldiu      254,r0                ; |421| 
        and3      r0,*ar0,r0            ; |421| 
        sti       r0,*ar0               ; |421| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      4,r0                  ; |421| 
        or3       r0,*ar0,r0            ; |421| 
        sti       r0,*ar0               ; |421| 
        ldiu      247,r0                ; |421| 
        and3      r0,*ar0,r0            ; |421| 
        sti       r0,*ar0               ; |421| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
        ldiu      1,r0                  ; |421| 
        or3       r0,*ar0,r0            ; |421| 
        sti       r0,*ar0               ; |421| 
        ldiu      253,r0                ; |421| 
        and3      r0,*ar0,r0            ; |421| 
        sti       r0,*ar0               ; |421| 
		PUSH    AR1			
		LDI		50,AR1		
		.word	6E46FFFFh	
		POP		AR1			
	.line	56
;----------------------------------------------------------------------
; 423 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	58
;----------------------------------------------------------------------
; 425 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |425| 
	.line	59
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |426| 
        ldiu      *fp,fp                ; |426| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |426| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	426,000000000h,7



	.global	_LCD_CNT
	.bss	_LCD_CNT,1
	.sym	_LCD_CNT,_LCD_CNT,14,2,32

	.global	_RTC
	.bss	_RTC,10
	.sym	_RTC,_RTC,60,2,320,,10

	.global	_LCD
	.bss	_LCD,2
	.sym	_LCD,_LCD,60,2,64,,2

	.global	_RTC_PRESENT
	.bss	_RTC_PRESENT,1
	.sym	_RTC_PRESENT,_RTC_PRESENT,14,2,32

	.global	_MB_LCD_DISPLAY
	.bss	_MB_LCD_DISPLAY,40
	.sym	_MB_LCD_DISPLAY,_MB_LCD_DISPLAY,52,2,1280,,40

	.global	_LCD_PRESENT
	.bss	_LCD_PRESENT,1
	.sym	_LCD_PRESENT,_LCD_PRESENT,14,2,32

	.global	_LCD_DISPLAY
	.bss	_LCD_DISPLAY,404
	.sym	_LCD_DISPLAY,_LCD_DISPLAY,242,2,12928,,4,101

	.global	_LCD_DIPSW
	.bss	_LCD_DIPSW,1
	.sym	_LCD_DIPSW,_LCD_DIPSW,12,2,32
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

	.sect	".cinit"
	.field  	11,32
	.field  	CL1+0,32
	.field  	9437186,32
	.field  	_I2C_TX_BYTE,32
	.field  	_I2C_RX_BYTE,32
	.field  	_Write_DS1340,32
	.field  	_RTC,32
	.field  	_Read_DS1340,32
	.field  	_RTC_PRESENT,32
	.field  	_RTC+1,32
	.field  	_DIAGNOSTICS,32
	.field  	_RTC+9,32
	.field  	_RTC+2,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_DIAGNOSTICS
