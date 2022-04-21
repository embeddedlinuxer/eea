;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu Apr 21 09:27:40 2022                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_9ES.AAA 
	.file	"variable.c"
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

	.sect	"TABLES"
_MASTER_UNITS:
	.word   	006080000H ; float   6.800000000000000e+01
                                   ; _MASTER_UNITS[0] @ 0
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[1] @ 32
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[2] @ 64
	.word   	005380000H ; float   4.600000000000000e+01
                                   ; _MASTER_UNITS[3] @ 96
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[4] @ 128
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[5] @ 160
	.word   	006780000H ; float   1.240000000000000e+02
                                   ; _MASTER_UNITS[6] @ 192
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[7] @ 224
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[8] @ 256
	.word   	005200000H ; float   4.000000000000000e+01
                                   ; _MASTER_UNITS[9] @ 288
	.word   	005280000H ; float   4.200000000000000e+01
                                   ; _MASTER_UNITS[10] @ 320
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[11] @ 352
	.word   	005240000H ; float   4.100000000000000e+01
                                   ; _MASTER_UNITS[12] @ 384
	.word   	0071EFCBFH ; float   1.589872949280000e+02
                                   ; _MASTER_UNITS[13] @ 416
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[14] @ 448
	.word   	005280000H ; float   4.200000000000000e+01
                                   ; _MASTER_UNITS[15] @ 480
	.word   	0050BE3A7H ; float   3.497231575441800e+01
                                   ; _MASTER_UNITS[16] @ 512
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[17] @ 544
	.word   	0052C0000H ; float   4.300000000000000e+01
                                   ; _MASTER_UNITS[18] @ 576
	.word   	0FD22CD91H ; float   1.589872949280000e-01
                                   ; _MASTER_UNITS[19] @ 608
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[20] @ 640
	.word   	0065C0000H ; float   1.100000000000000e+02
                                   ; _MASTER_UNITS[21] @ 672
	.word   	002105FA8H ; float   4.511676788719800e+00
                                   ; _MASTER_UNITS[22] @ 704
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[23] @ 736
	.word   	0065E0000H ; float   1.110000000000000e+02
                                   ; _MASTER_UNITS[24] @ 768
	.word   	0FD54F033H ; float   2.079475308642060e-01
                                   ; _MASTER_UNITS[25] @ 800
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[26] @ 832
	.word   	006600000H ; float   1.120000000000000e+02
                                   ; _MASTER_UNITS[27] @ 864
	.word   	00233AAABH ; float   5.614583333335200e+00
                                   ; _MASTER_UNITS[28] @ 896
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[29] @ 928
	.word   	006620000H ; float   1.130000000000000e+02
                                   ; _MASTER_UNITS[30] @ 960
	.word   	00D179800H ; float   9.702000000000000e+03
                                   ; _MASTER_UNITS[31] @ 992
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[32] @ 1024
	.word   	007260000H ; float   1.660000000000000e+02
                                   ; _MASTER_UNITS[33] @ 1056
	.word   	0FD22CD91H ; float   1.589872949280000e-01
                                   ; _MASTER_UNITS[34] @ 1088
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[35] @ 1120
	.word   	007270000H ; float   1.670000000000000e+02
                                   ; _MASTER_UNITS[36] @ 1152
	.word   	0071EFCBFH ; float   1.589872949280000e+02
                                   ; _MASTER_UNITS[37] @ 1184
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[38] @ 1216
	.word   	007280000H ; float   1.680000000000000e+02
                                   ; _MASTER_UNITS[39] @ 1248
	.word   	00233AAABH ; float   5.614583333335200e+00
                                   ; _MASTER_UNITS[40] @ 1280
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[41] @ 1312
	.word   	0076C0000H ; float   2.360000000000000e+02
                                   ; _MASTER_UNITS[42] @ 1344
	.word   	0004B80F5H ; float   1.589872949280000e+00
                                   ; _MASTER_UNITS[43] @ 1376
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[44] @ 1408
	.word   	007780000H ; float   2.480000000000000e+02
                                   ; _MASTER_UNITS[45] @ 1440
	.word   	0F837FA8AH ; float   5.614583333335200e-03
                                   ; _MASTER_UNITS[46] @ 1472
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[47] @ 1504
	.word   	006040000H ; float   6.600000000000000e+01
                                   ; _MASTER_UNITS[48] @ 1536
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[49] @ 1568
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[50] @ 1600
	.word   	007070000H ; float   1.350000000000000e+02
                                   ; _MASTER_UNITS[51] @ 1632
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[52] @ 1664
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[53] @ 1696
	.word   	004380000H ; float   2.300000000000000e+01
                                   ; _MASTER_UNITS[54] @ 1728
	.word   	0FB2C0831H ; float   4.200000000000000e-02
                                   ; _MASTER_UNITS[55] @ 1760
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[56] @ 1792
	.word   	004480000H ; float   2.500000000000000e+01
                                   ; _MASTER_UNITS[57] @ 1824
	.word   	0FD22CD91H ; float   1.589872949280000e-01
                                   ; _MASTER_UNITS[58] @ 1856
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[59] @ 1888
	.word   	004580000H ; float   2.700000000000000e+01
                                   ; _MASTER_UNITS[60] @ 1920
	.word   	00233AAABH ; float   5.614583333335200e+00
                                   ; _MASTER_UNITS[61] @ 1952
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[62] @ 1984
	.word   	004680000H ; float   2.900000000000000e+01
                                   ; _MASTER_UNITS[63] @ 2016
	.word   	0FD22CD91H ; float   1.589872949280000e-01
                                   ; _MASTER_UNITS[64] @ 2048
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[65] @ 2080
	.word   	004780000H ; float   3.100000000000000e+01
                                   ; _MASTER_UNITS[66] @ 2112
	.word   	0050BE3A7H ; float   3.497231575441800e+01
                                   ; _MASTER_UNITS[67] @ 2144
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[68] @ 2176
	.word   	0076B0000H ; float   2.350000000000000e+02
                                   ; _MASTER_UNITS[69] @ 2208
	.word   	005280000H ; float   4.200000000000000e+01
                                   ; _MASTER_UNITS[70] @ 2240
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[71] @ 2272
	.word   	007790000H ; float   2.490000000000000e+02
                                   ; _MASTER_UNITS[72] @ 2304
	.word   	0F837FA8AH ; float   5.614583333335200e-03
                                   ; _MASTER_UNITS[73] @ 2336
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[74] @ 2368
	.word   	0073A0000H ; float   1.860000000000000e+02
                                   ; _MASTER_UNITS[75] @ 2400
	.word   	0F20847CEH ; float   6.498360339508333e-05
                                   ; _MASTER_UNITS[76] @ 2432
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[77] @ 2464
	.word   	007380000H ; float   1.840000000000000e+02
                                   ; _MASTER_UNITS[78] @ 2496
	.word   	00233AAABH ; float   5.614583333335200e+00
                                   ; _MASTER_UNITS[79] @ 2528
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[80] @ 2560
	.word   	007050000H ; float   1.330000000000000e+02
                                   ; _MASTER_UNITS[81] @ 2592
	.word   	0F5360B61H ; float   6.944444444444445e-04
                                   ; _MASTER_UNITS[82] @ 2624
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[83] @ 2656
	.word   	007030000H ; float   1.310000000000000e+02
                                   ; _MASTER_UNITS[84] @ 2688
	.word   	0F2678AC2H ; float   1.104078437000000e-04
                                   ; _MASTER_UNITS[85] @ 2720
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[86] @ 2752
	.word   	003700000H ; float   1.500000000000000e+01
                                   ; _MASTER_UNITS[87] @ 2784
	.word   	0F77F86A3H ; float   3.899016203705000e-03
                                   ; _MASTER_UNITS[88] @ 2816
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[89] @ 2848
	.word   	004000000H ; float   1.600000000000000e+01
                                   ; _MASTER_UNITS[90] @ 2880
	.word   	0FA6EEEEFH ; float   2.916666666666666e-02
                                   ; _MASTER_UNITS[91] @ 2912
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[92] @ 2944
	.word   	004080000H ; float   1.700000000000000e+01
                                   ; _MASTER_UNITS[93] @ 2976
	.word   	0FC621D82H ; float   1.104078437000000e-01
                                   ; _MASTER_UNITS[94] @ 3008
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[95] @ 3040
	.word   	004100000H ; float   1.800000000000000e+01
                                   ; _MASTER_UNITS[96] @ 3072
	.word   	0FA46F420H ; float   2.428633038501250e-02
                                   ; _MASTER_UNITS[97] @ 3104
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[98] @ 3136
	.word   	006760000H ; float   1.230000000000000e+02
                                   ; _MASTER_UNITS[99] @ 3168
	.word   	0F77F86A3H ; float   3.899016203705000e-03
                                   ; _MASTER_UNITS[100] @ 3200
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[101] @ 3232
	.word   	004180000H ; float   1.900000000000000e+01
                                   ; _MASTER_UNITS[102] @ 3264
	.word   	0F8591216H ; float   6.624470622000000e-03
                                   ; _MASTER_UNITS[103] @ 3296
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[104] @ 3328
	.word   	004700000H ; float   3.000000000000000e+01
                                   ; _MASTER_UNITS[105] @ 3360
	.word   	0003A84DEH ; float   1.457179823100750e+00
                                   ; _MASTER_UNITS[106] @ 3392
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[107] @ 3424
	.word   	006720000H ; float   1.210000000000000e+02
                                   ; _MASTER_UNITS[108] @ 3456
	.word   	0F8591216H ; float   6.624470622000000e-03
                                   ; _MASTER_UNITS[109] @ 3488
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[110] @ 3520
	.word   	0073E0000H ; float   1.900000000000000e+02
                                   ; _MASTER_UNITS[111] @ 3552
	.word   	0EC76FA69H ; float   1.840130728333334e-06
                                   ; _MASTER_UNITS[112] @ 3584
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[113] @ 3616
	.word   	0073F0000H ; float   1.910000000000000e+02
                                   ; _MASTER_UNITS[114] @ 3648
	.word   	0FD22CD91H ; float   1.589872949280000e-01
                                   ; _MASTER_UNITS[115] @ 3680
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[116] @ 3712
	.word   	006740000H ; float   1.220000000000000e+02
                                   ; _MASTER_UNITS[117] @ 3744
	.word   	00253FBAAH ; float   6.624470622000000e+00
                                   ; _MASTER_UNITS[118] @ 3776
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[119] @ 3808
	.word   	007020000H ; float   1.300000000000000e+02
                                   ; _MASTER_UNITS[120] @ 3840
	.word   	0FD6F8E39H ; float   2.339409722223000e-01
                                   ; _MASTER_UNITS[121] @ 3872
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[122] @ 3904
	.word   	007060000H ; float   1.340000000000000e+02
                                   ; _MASTER_UNITS[123] @ 3936
	.word   	0FB2AAAABH ; float   4.166666666666666e-02
                                   ; _MASTER_UNITS[124] @ 3968
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[125] @ 4000
	.word   	007080000H ; float   1.360000000000000e+02
                                   ; _MASTER_UNITS[126] @ 4032
	.word   	000600000H ; float   1.750000000000000e+00
                                   ; _MASTER_UNITS[127] @ 4064
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[128] @ 4096
	.word   	0070A0000H ; float   1.380000000000000e+02
                                   ; _MASTER_UNITS[129] @ 4128
	.word   	00253FBAAH ; float   6.624470622000000e+00
                                   ; _MASTER_UNITS[130] @ 4160
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[131] @ 4192
	.word   	004300000H ; float   2.200000000000000e+01
                                   ; _MASTER_UNITS[132] @ 4224
	.word   	0F47EDCBBH ; float   4.861111111111111e-04
                                   ; _MASTER_UNITS[133] @ 4256
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[134] @ 4288
	.word   	004400000H ; float   2.400000000000000e+01
                                   ; _MASTER_UNITS[135] @ 4320
	.word   	0F671308BH ; float   1.840130728333334e-03
                                   ; _MASTER_UNITS[136] @ 4352
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[137] @ 4384
	.word   	004500000H ; float   2.600000000000000e+01
                                   ; _MASTER_UNITS[138] @ 4416
	.word   	0F20847CEH ; float   6.498360339508333e-05
                                   ; _MASTER_UNITS[139] @ 4448
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[140] @ 4480
	.word   	004600000H ; float   2.800000000000000e+01
                                   ; _MASTER_UNITS[141] @ 4512
	.word   	0EC76FA69H ; float   1.840130728333334e-06
                                   ; _MASTER_UNITS[142] @ 4544
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[143] @ 4576
	.word   	007040000H ; float   1.320000000000000e+02
                                   ; _MASTER_UNITS[144] @ 4608
	.word   	0EF422E45H ; float   1.157407407407407e-05
                                   ; _MASTER_UNITS[145] @ 4640
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[146] @ 4672
	.word   	007090000H ; float   1.370000000000000e+02
                                   ; _MASTER_UNITS[147] @ 4704
	.word   	0F454379AH ; float   4.047721730835416e-04
                                   ; _MASTER_UNITS[148] @ 4736
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[149] @ 4768
	.word   	006000000H ; float   6.400000000000000e+01
                                   ; _MASTER_UNITS[150] @ 4800
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[151] @ 4832
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[152] @ 4864
	.word   	005000000H ; float   3.200000000000000e+01
                                   ; _MASTER_UNITS[153] @ 4896
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[154] @ 4928
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[155] @ 4960
	.word   	005040000H ; float   3.300000000000000e+01
                                   ; _MASTER_UNITS[156] @ 4992
	.word   	000666666H ; float   1.800000000000000e+00
                                   ; _MASTER_UNITS[157] @ 5024
	.word   	005000000H ; float   3.200000000000000e+01
                                   ; _MASTER_UNITS[158] @ 5056
	.word   	005080000H ; float   3.400000000000000e+01
                                   ; _MASTER_UNITS[159] @ 5088
	.word   	000666666H ; float   1.800000000000000e+00
                                   ; _MASTER_UNITS[160] @ 5120
	.word   	00902EAE1H ; float   5.236700000000001e+02
                                   ; _MASTER_UNITS[161] @ 5152
	.word   	0050C0000H ; float   3.500000000000000e+01
                                   ; _MASTER_UNITS[162] @ 5184
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[163] @ 5216
	.word   	008089333H ; float   2.731500000000000e+02
                                   ; _MASTER_UNITS[164] @ 5248
	.word   	006340000H ; float   9.000000000000000e+01
                                   ; _MASTER_UNITS[165] @ 5280
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[166] @ 5312
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[167] @ 5344
	.word   	006540000H ; float   1.060000000000000e+02
                                   ; _MASTER_UNITS[168] @ 5376
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[169] @ 5408
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[170] @ 5440
	.word   	006520000H ; float   1.050000000000000e+02
                                   ; _MASTER_UNITS[171] @ 5472
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[172] @ 5504
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[173] @ 5536
	.word   	0070B0000H ; float   1.390000000000000e+02
                                   ; _MASTER_UNITS[174] @ 5568
	.word   	00D1C4000H ; float   1.000000000000000e+04
                                   ; _MASTER_UNITS[175] @ 5600
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[176] @ 5632
	.word   	007290000H ; float   1.690000000000000e+02
                                   ; _MASTER_UNITS[177] @ 5664
	.word   	017189680H ; float   1.000000000000000e+07
                                   ; _MASTER_UNITS[178] @ 5696
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[179] @ 5728
	.word   	006200000H ; float   8.000000000000000e+01
                                   ; _MASTER_UNITS[180] @ 5760
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[181] @ 5792
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[182] @ 5824
	.word   	007740000H ; float   2.440000000000000e+02
                                   ; _MASTER_UNITS[183] @ 5856
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[184] @ 5888
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[185] @ 5920
	.word   	005180000H ; float   3.800000000000000e+01
                                   ; _MASTER_UNITS[186] @ 5952
	.word   	013742400H ; float   1.000000000000000e+06
                                   ; _MASTER_UNITS[187] @ 5984
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[188] @ 6016
	.word   	006020000H ; float   6.500000000000000e+01
                                   ; _MASTER_UNITS[189] @ 6048
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[190] @ 6080
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[191] @ 6112
	.word   	003600000H ; float   1.400000000000000e+01
                                   ; _MASTER_UNITS[192] @ 6144
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[193] @ 6176
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[194] @ 6208
	.word   	003300000H ; float   1.100000000000000e+01
                                   ; _MASTER_UNITS[195] @ 6240
	.word   	01045E680H ; float   1.013250000000000e+05
                                   ; _MASTER_UNITS[196] @ 6272
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[197] @ 6304
	.word   	003400000H ; float   1.200000000000000e+01
                                   ; _MASTER_UNITS[198] @ 6336
	.word   	0064AA666H ; float   1.013250000000000e+02
                                   ; _MASTER_UNITS[199] @ 6368
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[200] @ 6400
	.word   	0072E0000H ; float   1.740000000000000e+02
                                   ; _MASTER_UNITS[201] @ 6432
	.word   	0097D5000H ; float   1.013250000000000e+03
                                   ; _MASTER_UNITS[202] @ 6464
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[203] @ 6496
	.word   	0076D0000H ; float   2.370000000000000e+02
                                   ; _MASTER_UNITS[204] @ 6528
	.word   	0FC4F837BH ; float   1.013250000000000e-01
                                   ; _MASTER_UNITS[205] @ 6560
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[206] @ 6592
	.word   	002400000H ; float   6.000000000000000e+00
                                   ; _MASTER_UNITS[207] @ 6624
	.word   	0036B22ABH ; float   1.469596432068000e+01
                                   ; _MASTER_UNITS[208] @ 6656
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[209] @ 6688
	.word   	0072F0000H ; float   1.750000000000000e+02
                                   ; _MASTER_UNITS[210] @ 6720
	.word   	0036B22ABH ; float   1.469596432068000e+01
                                   ; _MASTER_UNITS[211] @ 6752
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[212] @ 6784
	.word   	0072D0000H ; float   1.730000000000000e+02
                                   ; _MASTER_UNITS[213] @ 6816
	.word   	00B044380H ; float   2.116218862178000e+03
                                   ; _MASTER_UNITS[214] @ 6848
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[215] @ 6880
	.word   	002600000H ; float   7.000000000000000e+00
                                   ; _MASTER_UNITS[216] @ 6912
	.word   	00001B22DH ; float   1.013250000000000e+00
                                   ; _MASTER_UNITS[217] @ 6944
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[218] @ 6976
	.word   	003000000H ; float   8.000000000000000e+00
                                   ; _MASTER_UNITS[219] @ 7008
	.word   	0097D5000H ; float   1.013250000000000e+03
                                   ; _MASTER_UNITS[220] @ 7040
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[221] @ 7072
	.word   	003100000H ; float   9.000000000000000e+00
                                   ; _MASTER_UNITS[222] @ 7104
	.word   	00A012747H ; float   1.033227452800000e+03
                                   ; _MASTER_UNITS[223] @ 7136
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[224] @ 7168
	.word   	003200000H ; float   1.000000000000000e+01
                                   ; _MASTER_UNITS[225] @ 7200
	.word   	0000440CCH ; float   1.033227452800000e+00
                                   ; _MASTER_UNITS[226] @ 7232
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[227] @ 7264
	.word   	007300000H ; float   1.760000000000000e+02
                                   ; _MASTER_UNITS[228] @ 7296
	.word   	00D217119H ; float   1.033227452800000e+04
                                   ; _MASTER_UNITS[229] @ 7328
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[230] @ 7360
	.word   	003500000H ; float   1.300000000000000e+01
                                   ; _MASTER_UNITS[231] @ 7392
	.word   	0093E0000H ; float   7.600000000000000e+02
                                   ; _MASTER_UNITS[232] @ 7424
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[233] @ 7456
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[234] @ 7488
	.word   	0084B6428H ; float   4.067824617322385e+02
                                   ; _MASTER_UNITS[235] @ 7520
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[236] @ 7552
	.word   	001400000H ; float   3.000000000000000e+00
                                   ; _MASTER_UNITS[237] @ 7584
	.word   	00507981AH ; float   3.389853847768654e+01
                                   ; _MASTER_UNITS[238] @ 7616
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[239] @ 7648
	.word   	002000000H ; float   4.000000000000000e+00
                                   ; _MASTER_UNITS[240] @ 7680
	.word   	00D217119H ; float   1.033227452799886e+04
                                   ; _MASTER_UNITS[241] @ 7712
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[242] @ 7744
	.word   	007110000H ; float   1.450000000000000e+02
                                   ; _MASTER_UNITS[243] @ 7776
	.word   	0084B983DH ; float   4.071893586240000e+02
                                   ; _MASTER_UNITS[244] @ 7808
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[245] @ 7840
	.word   	007320000H ; float   1.780000000000000e+02
                                   ; _MASTER_UNITS[246] @ 7872
	.word   	00507BAD3H ; float   3.393244655200000e+01
                                   ; _MASTER_UNITS[247] @ 7904
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[248] @ 7936
	.word   	0076F0000H ; float   2.390000000000000e+02
                                   ; _MASTER_UNITS[249] @ 7968
	.word   	00D217119H ; float   1.033227452799886e+04
                                   ; _MASTER_UNITS[250] @ 8000
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[251] @ 8032
	.word   	0072A0000H ; float   1.700000000000000e+02
                                   ; _MASTER_UNITS[252] @ 8064
	.word   	00A012747H ; float   1.033227452799886e+03
                                   ; _MASTER_UNITS[253] @ 8096
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[254] @ 8128
	.word   	0072B0000H ; float   1.710000000000000e+02
                                   ; _MASTER_UNITS[255] @ 8160
	.word   	0064EA53FH ; float   1.033227452799886e+02
                                   ; _MASTER_UNITS[256] @ 8192
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[257] @ 8224
	.word   	0076E0000H ; float   2.380000000000000e+02
                                   ; _MASTER_UNITS[258] @ 8256
	.word   	0084B6428H ; float   4.067824617322385e+02
                                   ; _MASTER_UNITS[259] @ 8288
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[260] @ 8320
	.word   	007310000H ; float   1.770000000000000e+02
                                   ; _MASTER_UNITS[261] @ 8352
	.word   	00507981AH ; float   3.389853847768654e+01
                                   ; _MASTER_UNITS[262] @ 8384
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[263] @ 8416
	.word   	001000000H ; float   2.000000000000000e+00
                                   ; _MASTER_UNITS[264] @ 8448
	.word   	0046F5EBDH ; float   2.992125984251968e+01
                                   ; _MASTER_UNITS[265] @ 8480
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[266] @ 8512
	.word   	002200000H ; float   5.000000000000000e+00
                                   ; _MASTER_UNITS[267] @ 8544
	.word   	0093E0000H ; float   7.600000000000000e+02
                                   ; _MASTER_UNITS[268] @ 8576
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[269] @ 8608
	.word   	0072C0000H ; float   1.720000000000000e+02
                                   ; _MASTER_UNITS[270] @ 8640
	.word   	006180000H ; float   7.600000000000000e+01
                                   ; _MASTER_UNITS[271] @ 8672
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[272] @ 8704
	.word   	007330000H ; float   1.790000000000000e+02
                                   ; _MASTER_UNITS[273] @ 8736
	.word   	002733333H ; float   7.600000000000000e+00
                                   ; _MASTER_UNITS[274] @ 8768
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[275] @ 8800
	.word   	006260000H ; float   8.300000000000000e+01
                                   ; _MASTER_UNITS[276] @ 8832
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[277] @ 8864
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[278] @ 8896
	.word   	005680000H ; float   5.800000000000000e+01
                                   ; _MASTER_UNITS[279] @ 8928
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[280] @ 8960
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[281] @ 8992
	.word   	005100000H ; float   3.600000000000000e+01
                                   ; _MASTER_UNITS[282] @ 9024
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _MASTER_UNITS[283] @ 9056
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[284] @ 9088
	.word   	006280000H ; float   8.400000000000000e+01
                                   ; _MASTER_UNITS[285] @ 9120
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[286] @ 9152
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[287] @ 9184
	.word   	0051C0000H ; float   3.900000000000000e+01
                                   ; _MASTER_UNITS[288] @ 9216
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[289] @ 9248
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[290] @ 9280
	.word   	006220000H ; float   8.100000000000000e+01
                                   ; _MASTER_UNITS[291] @ 9312
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[292] @ 9344
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[293] @ 9376
	.word   	005640000H ; float   5.700000000000000e+01
                                   ; _MASTER_UNITS[294] @ 9408
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[295] @ 9440
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[296] @ 9472
	.word   	006300000H ; float   8.800000000000000e+01
                                   ; _MASTER_UNITS[297] @ 9504
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[298] @ 9536
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[299] @ 9568
	.word   	007150000H ; float   1.490000000000000e+02
                                   ; _MASTER_UNITS[300] @ 9600
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[301] @ 9632
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[302] @ 9664
	.word   	0060E0000H ; float   7.100000000000000e+01
                                   ; _MASTER_UNITS[303] @ 9696
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[304] @ 9728
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[305] @ 9760
	.word   	005740000H ; float   6.100000000000000e+01
                                   ; _MASTER_UNITS[306] @ 9792
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[307] @ 9824
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[308] @ 9856
	.word   	0057C0000H ; float   6.300000000000000e+01
                                   ; _MASTER_UNITS[309] @ 9888
	.word   	0010D1889H ; float   2.204622621849000e+00
                                   ; _MASTER_UNITS[310] @ 9920
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[311] @ 9952
	.word   	005700000H ; float   6.000000000000000e+01
                                   ; _MASTER_UNITS[312] @ 9984
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _MASTER_UNITS[313] @ 10016
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[314] @ 10048
	.word   	005780000H ; float   6.200000000000000e+01
                                   ; _MASTER_UNITS[315] @ 10080
	.word   	0F603126FH ; float   1.000000000000000e-03
                                   ; _MASTER_UNITS[316] @ 10112
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[317] @ 10144
	.word   	006000000H ; float   6.400000000000000e+01
                                   ; _MASTER_UNITS[318] @ 10176
	.word   	0F6107B6EH ; float   1.102311310924000e-03
                                   ; _MASTER_UNITS[319] @ 10208
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[320] @ 10240
	.word   	006020000H ; float   6.500000000000000e+01
                                   ; _MASTER_UNITS[321] @ 10272
	.word   	0F601007EH ; float   9.842065276111000e-04
                                   ; _MASTER_UNITS[322] @ 10304
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[323] @ 10336
	.word   	0067A0000H ; float   1.250000000000000e+02
                                   ; _MASTER_UNITS[324] @ 10368
	.word   	0050D1889H ; float   3.527396194958000e+01
                                   ; _MASTER_UNITS[325] @ 10400
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[326] @ 10432
	.word   	006100000H ; float   7.200000000000000e+01
                                   ; _MASTER_UNITS[327] @ 10464
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[328] @ 10496
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[329] @ 10528
	.word   	006120000H ; float   7.300000000000000e+01
                                   ; _MASTER_UNITS[330] @ 10560
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[331] @ 10592
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[332] @ 10624
	.word   	006140000H ; float   7.400000000000000e+01
                                   ; _MASTER_UNITS[333] @ 10656
	.word   	005700000H ; float   6.000000000000000e+01
                                   ; _MASTER_UNITS[334] @ 10688
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[335] @ 10720
	.word   	006160000H ; float   7.500000000000000e+01
                                   ; _MASTER_UNITS[336] @ 10752
	.word   	00B610000H ; float   3.600000000000000e+03
                                   ; _MASTER_UNITS[337] @ 10784
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[338] @ 10816
	.word   	006180000H ; float   7.600000000000000e+01
                                   ; _MASTER_UNITS[339] @ 10848
	.word   	01028C000H ; float   8.640000000000000e+04
                                   ; _MASTER_UNITS[340] @ 10880
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[341] @ 10912
	.word   	0060C0000H ; float   7.000000000000000e+01
                                   ; _MASTER_UNITS[342] @ 10944
	.word   	0097A0000H ; float   1.000000000000000e+03
                                   ; _MASTER_UNITS[343] @ 10976
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[344] @ 11008
	.word   	0060E0000H ; float   7.100000000000000e+01
                                   ; _MASTER_UNITS[345] @ 11040
	.word   	00F6A6000H ; float   6.000000000000000e+04
                                   ; _MASTER_UNITS[346] @ 11072
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[347] @ 11104
	.word   	006100000H ; float   7.200000000000000e+01
                                   ; _MASTER_UNITS[348] @ 11136
	.word   	0155BBA00H ; float   3.600000000000000e+06
                                   ; _MASTER_UNITS[349] @ 11168
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[350] @ 11200
	.word   	0061A0000H ; float   7.700000000000000e+01
                                   ; _MASTER_UNITS[351] @ 11232
	.word   	0FB75C28FH ; float   6.000000000000000e-02
                                   ; _MASTER_UNITS[352] @ 11264
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[353] @ 11296
	.word   	0061C0000H ; float   7.800000000000000e+01
                                   ; _MASTER_UNITS[354] @ 11328
	.word   	001666666H ; float   3.600000000000000e+00
                                   ; _MASTER_UNITS[355] @ 11360
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[356] @ 11392
	.word   	0061E0000H ; float   7.900000000000000e+01
                                   ; _MASTER_UNITS[357] @ 11424
	.word   	0062CCCCDH ; float   8.640000000000001e+01
                                   ; _MASTER_UNITS[358] @ 11456
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[359] @ 11488
	.word   	006200000H ; float   8.000000000000000e+01
                                   ; _MASTER_UNITS[360] @ 11520
	.word   	0010D1889H ; float   2.204622621849000e+00
                                   ; _MASTER_UNITS[361] @ 11552
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[362] @ 11584
	.word   	006220000H ; float   8.100000000000000e+01
                                   ; _MASTER_UNITS[363] @ 11616
	.word   	007044701H ; float   1.322773573109400e+02
                                   ; _MASTER_UNITS[364] @ 11648
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[365] @ 11680
	.word   	006240000H ; float   8.200000000000000e+01
                                   ; _MASTER_UNITS[366] @ 11712
	.word   	00C780522H ; float   7.936641438656400e+03
                                   ; _MASTER_UNITS[367] @ 11744
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[368] @ 11776
	.word   	006260000H ; float   8.300000000000000e+01
                                   ; _MASTER_UNITS[369] @ 11808
	.word   	0113A03D9H ; float   1.904793945277536e+05
                                   ; _MASTER_UNITS[370] @ 11840
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[371] @ 11872
	.word   	006280000H ; float   8.400000000000000e+01
                                   ; _MASTER_UNITS[372] @ 11904
	.word   	0FC0773B7H ; float   6.613867865544000e-02
                                   ; _MASTER_UNITS[373] @ 11936
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[374] @ 11968
	.word   	0062A0000H ; float   8.500000000000000e+01
                                   ; _MASTER_UNITS[375] @ 12000
	.word   	0017DF8F7H ; float   3.968320719326400e+00
                                   ; _MASTER_UNITS[376] @ 12032
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[377] @ 12064
	.word   	0062C0000H ; float   8.600000000000000e+01
                                   ; _MASTER_UNITS[378] @ 12096
	.word   	0063E7ABAH ; float   9.523969726383360e+01
                                   ; _MASTER_UNITS[379] @ 12128
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[380] @ 12160
	.word   	0062E0000H ; float   8.700000000000000e+01
                                   ; _MASTER_UNITS[381] @ 12192
	.word   	00162C2DDH ; float   3.543143499399960e+00
                                   ; _MASTER_UNITS[382] @ 12224
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[383] @ 12256
	.word   	006300000H ; float   8.800000000000000e+01
                                   ; _MASTER_UNITS[384] @ 12288
	.word   	0062A1226H ; float   8.503544398559904e+01
                                   ; _MASTER_UNITS[385] @ 12320
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[386] @ 12352
	.word   	006120000H ; float   7.300000000000000e+01
                                   ; _MASTER_UNITS[387] @ 12384
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[388] @ 12416
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[389] @ 12448
	.word   	006380000H ; float   9.200000000000000e+01
                                   ; _MASTER_UNITS[390] @ 12480
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[391] @ 12512
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[392] @ 12544
	.word   	006360000H ; float   9.100000000000000e+01
                                   ; _MASTER_UNITS[393] @ 12576
	.word   	0F603126FH ; float   1.000000000000000e-03
                                   ; _MASTER_UNITS[394] @ 12608
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[395] @ 12640
	.word   	0063E0000H ; float   9.500000000000000e+01
                                   ; _MASTER_UNITS[396] @ 12672
	.word   	0F603126FH ; float   1.000000000000000e-03
                                   ; _MASTER_UNITS[397] @ 12704
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[398] @ 12736
	.word   	0063A0000H ; float   9.300000000000000e+01
                                   ; _MASTER_UNITS[399] @ 12768
	.word   	0F908BB2AH ; float   8.345404474089843e-03
                                   ; _MASTER_UNITS[400] @ 12800
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[401] @ 12832
	.word   	0063C0000H ; float   9.400000000000000e+01
                                   ; _MASTER_UNITS[402] @ 12864
	.word   	0FB7FB476H ; float   6.242796203356089e-02
                                   ; _MASTER_UNITS[403] @ 12896
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[404] @ 12928
	.word   	006400000H ; float   9.600000000000000e+01
                                   ; _MASTER_UNITS[405] @ 12960
	.word   	0F603126FH ; float   1.000000000000000e-03
                                   ; _MASTER_UNITS[406] @ 12992
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[407] @ 13024
	.word   	006420000H ; float   9.700000000000000e+01
                                   ; _MASTER_UNITS[408] @ 13056
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[409] @ 13088
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[410] @ 13120
	.word   	006440000H ; float   9.800000000000000e+01
                                   ; _MASTER_UNITS[411] @ 13152
	.word   	0F1178762H ; float   3.612729162184624e-05
                                   ; _MASTER_UNITS[412] @ 13184
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[413] @ 13216
	.word   	006460000H ; float   9.900000000000000e+01
                                   ; _MASTER_UNITS[414] @ 13248
	.word   	0F55CEDD7H ; float   8.427774674338713e-04
                                   ; _MASTER_UNITS[415] @ 13280
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[416] @ 13312
	.word   	0060C0000H ; float   7.000000000000000e+01
                                   ; _MASTER_UNITS[417] @ 13344
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[418] @ 13376
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[419] @ 13408
	.word   	0054C0000H ; float   5.100000000000000e+01
                                   ; _MASTER_UNITS[420] @ 13440
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _MASTER_UNITS[421] @ 13472
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[422] @ 13504
	.word   	005480000H ; float   5.000000000000000e+01
                                   ; _MASTER_UNITS[423] @ 13536
	.word   	005700000H ; float   6.000000000000000e+01
                                   ; _MASTER_UNITS[424] @ 13568
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[425] @ 13600
	.word   	005500000H ; float   5.200000000000000e+01
                                   ; _MASTER_UNITS[426] @ 13632
	.word   	00B610000H ; float   3.600000000000000e+03
                                   ; _MASTER_UNITS[427] @ 13664
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[428] @ 13696
	.word   	005540000H ; float   5.300000000000000e+01
                                   ; _MASTER_UNITS[429] @ 13728
	.word   	01028C000H ; float   8.640000000000000e+04
                                   ; _MASTER_UNITS[430] @ 13760
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[431] @ 13792
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[432] @ 13824
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[433] @ 13856
	.word   	080000000H ; float   0.000000000000000e+00
                                   ; _MASTER_UNITS[434] @ 13888

	.sect	".text"

	.global	_MASTER_UNITS
	.sym	_MASTER_UNITS,_MASTER_UNITS,54,2,13920,,435

	.sect	"TABLES"
_MASTER_UNITS_STR:
	.field  	324,32		; _MASTER_UNITS_STR[0] @ 0
	.field  	86,32		; _MASTER_UNITS_STR[1] @ 32
	.field  	79,32		; _MASTER_UNITS_STR[2] @ 64
	.field  	76,32		; _MASTER_UNITS_STR[3] @ 96
	.field  	85,32		; _MASTER_UNITS_STR[4] @ 128
	.field  	77,32		; _MASTER_UNITS_STR[5] @ 160
	.field  	69,32		; _MASTER_UNITS_STR[6] @ 192
	.field  	0,32		; _MASTER_UNITS_STR[7] @ 224
	.field  	0,32		; _MASTER_UNITS_STR[8] @ 256
	.field  	46,32		; _MASTER_UNITS_STR[9] @ 288
	.field  	98,32		; _MASTER_UNITS_STR[10] @ 320
	.field  	98,32		; _MASTER_UNITS_STR[11] @ 352
	.field  	108,32		; _MASTER_UNITS_STR[12] @ 384
	.field  	0,32		; _MASTER_UNITS_STR[13] @ 416
	.field  	0,32		; _MASTER_UNITS_STR[14] @ 448
	.field  	0,32		; _MASTER_UNITS_STR[15] @ 480
	.field  	0,32		; _MASTER_UNITS_STR[16] @ 512
	.field  	0,32		; _MASTER_UNITS_STR[17] @ 544
	.field  	124,32		; _MASTER_UNITS_STR[18] @ 576
	.field  	98,32		; _MASTER_UNITS_STR[19] @ 608
	.field  	98,32		; _MASTER_UNITS_STR[20] @ 640
	.field  	108,32		; _MASTER_UNITS_STR[21] @ 672
	.field  	0,32		; _MASTER_UNITS_STR[22] @ 704
	.field  	0,32		; _MASTER_UNITS_STR[23] @ 736
	.field  	0,32		; _MASTER_UNITS_STR[24] @ 768
	.field  	0,32		; _MASTER_UNITS_STR[25] @ 800
	.field  	0,32		; _MASTER_UNITS_STR[26] @ 832
	.field  	40,32		; _MASTER_UNITS_STR[27] @ 864
	.field  	103,32		; _MASTER_UNITS_STR[28] @ 896
	.field  	97,32		; _MASTER_UNITS_STR[29] @ 928
	.field  	108,32		; _MASTER_UNITS_STR[30] @ 960
	.field  	0,32		; _MASTER_UNITS_STR[31] @ 992
	.field  	0,32		; _MASTER_UNITS_STR[32] @ 1024
	.field  	0,32		; _MASTER_UNITS_STR[33] @ 1056
	.field  	0,32		; _MASTER_UNITS_STR[34] @ 1088
	.field  	0,32		; _MASTER_UNITS_STR[35] @ 1120
	.field  	41,32		; _MASTER_UNITS_STR[36] @ 1152
	.field  	76,32		; _MASTER_UNITS_STR[37] @ 1184
	.field  	0,32		; _MASTER_UNITS_STR[38] @ 1216
	.field  	0,32		; _MASTER_UNITS_STR[39] @ 1248
	.field  	0,32		; _MASTER_UNITS_STR[40] @ 1280
	.field  	0,32		; _MASTER_UNITS_STR[41] @ 1312
	.field  	0,32		; _MASTER_UNITS_STR[42] @ 1344
	.field  	0,32		; _MASTER_UNITS_STR[43] @ 1376
	.field  	0,32		; _MASTER_UNITS_STR[44] @ 1408
	.field  	42,32		; _MASTER_UNITS_STR[45] @ 1440
	.field  	73,32		; _MASTER_UNITS_STR[46] @ 1472
	.field  	103,32		; _MASTER_UNITS_STR[47] @ 1504
	.field  	97,32		; _MASTER_UNITS_STR[48] @ 1536
	.field  	108,32		; _MASTER_UNITS_STR[49] @ 1568
	.field  	0,32		; _MASTER_UNITS_STR[50] @ 1600
	.field  	0,32		; _MASTER_UNITS_STR[51] @ 1632
	.field  	0,32		; _MASTER_UNITS_STR[52] @ 1664
	.field  	0,32		; _MASTER_UNITS_STR[53] @ 1696
	.field  	43,32		; _MASTER_UNITS_STR[54] @ 1728
	.field  	109,32		; _MASTER_UNITS_STR[55] @ 1760
	.field  	51,32		; _MASTER_UNITS_STR[56] @ 1792
	.field  	0,32		; _MASTER_UNITS_STR[57] @ 1824
	.field  	0,32		; _MASTER_UNITS_STR[58] @ 1856
	.field  	0,32		; _MASTER_UNITS_STR[59] @ 1888
	.field  	0,32		; _MASTER_UNITS_STR[60] @ 1920
	.field  	0,32		; _MASTER_UNITS_STR[61] @ 1952
	.field  	0,32		; _MASTER_UNITS_STR[62] @ 1984
	.field  	110,32		; _MASTER_UNITS_STR[63] @ 2016
	.field  	98,32		; _MASTER_UNITS_STR[64] @ 2048
	.field  	115,32		; _MASTER_UNITS_STR[65] @ 2080
	.field  	104,32		; _MASTER_UNITS_STR[66] @ 2112
	.field  	0,32		; _MASTER_UNITS_STR[67] @ 2144
	.field  	0,32		; _MASTER_UNITS_STR[68] @ 2176
	.field  	0,32		; _MASTER_UNITS_STR[69] @ 2208
	.field  	0,32		; _MASTER_UNITS_STR[70] @ 2240
	.field  	0,32		; _MASTER_UNITS_STR[71] @ 2272
	.field  	111,32		; _MASTER_UNITS_STR[72] @ 2304
	.field  	121,32		; _MASTER_UNITS_STR[73] @ 2336
	.field  	100,32		; _MASTER_UNITS_STR[74] @ 2368
	.field  	51,32		; _MASTER_UNITS_STR[75] @ 2400
	.field  	0,32		; _MASTER_UNITS_STR[76] @ 2432
	.field  	0,32		; _MASTER_UNITS_STR[77] @ 2464
	.field  	0,32		; _MASTER_UNITS_STR[78] @ 2496
	.field  	0,32		; _MASTER_UNITS_STR[79] @ 2528
	.field  	0,32		; _MASTER_UNITS_STR[80] @ 2560
	.field  	112,32		; _MASTER_UNITS_STR[81] @ 2592
	.field  	102,32		; _MASTER_UNITS_STR[82] @ 2624
	.field  	116,32		; _MASTER_UNITS_STR[83] @ 2656
	.field  	51,32		; _MASTER_UNITS_STR[84] @ 2688
	.field  	0,32		; _MASTER_UNITS_STR[85] @ 2720
	.field  	0,32		; _MASTER_UNITS_STR[86] @ 2752
	.field  	0,32		; _MASTER_UNITS_STR[87] @ 2784
	.field  	0,32		; _MASTER_UNITS_STR[88] @ 2816
	.field  	0,32		; _MASTER_UNITS_STR[89] @ 2848
	.field  	113,32		; _MASTER_UNITS_STR[90] @ 2880
	.field  	105,32		; _MASTER_UNITS_STR[91] @ 2912
	.field  	110,32		; _MASTER_UNITS_STR[92] @ 2944
	.field  	51,32		; _MASTER_UNITS_STR[93] @ 2976
	.field  	0,32		; _MASTER_UNITS_STR[94] @ 3008
	.field  	0,32		; _MASTER_UNITS_STR[95] @ 3040
	.field  	0,32		; _MASTER_UNITS_STR[96] @ 3072
	.field  	0,32		; _MASTER_UNITS_STR[97] @ 3104
	.field  	0,32		; _MASTER_UNITS_STR[98] @ 3136
	.field  	166,32		; _MASTER_UNITS_STR[99] @ 3168
	.field  	78,32		; _MASTER_UNITS_STR[100] @ 3200
	.field  	109,32		; _MASTER_UNITS_STR[101] @ 3232
	.field  	51,32		; _MASTER_UNITS_STR[102] @ 3264
	.field  	0,32		; _MASTER_UNITS_STR[103] @ 3296
	.field  	0,32		; _MASTER_UNITS_STR[104] @ 3328
	.field  	0,32		; _MASTER_UNITS_STR[105] @ 3360
	.field  	0,32		; _MASTER_UNITS_STR[106] @ 3392
	.field  	0,32		; _MASTER_UNITS_STR[107] @ 3424
	.field  	167,32		; _MASTER_UNITS_STR[108] @ 3456
	.field  	78,32		; _MASTER_UNITS_STR[109] @ 3488
	.field  	76,32		; _MASTER_UNITS_STR[110] @ 3520
	.field  	0,32		; _MASTER_UNITS_STR[111] @ 3552
	.field  	0,32		; _MASTER_UNITS_STR[112] @ 3584
	.field  	0,32		; _MASTER_UNITS_STR[113] @ 3616
	.field  	0,32		; _MASTER_UNITS_STR[114] @ 3648
	.field  	0,32		; _MASTER_UNITS_STR[115] @ 3680
	.field  	0,32		; _MASTER_UNITS_STR[116] @ 3712
	.field  	168,32		; _MASTER_UNITS_STR[117] @ 3744
	.field  	83,32		; _MASTER_UNITS_STR[118] @ 3776
	.field  	99,32		; _MASTER_UNITS_STR[119] @ 3808
	.field  	102,32		; _MASTER_UNITS_STR[120] @ 3840
	.field  	0,32		; _MASTER_UNITS_STR[121] @ 3872
	.field  	0,32		; _MASTER_UNITS_STR[122] @ 3904
	.field  	0,32		; _MASTER_UNITS_STR[123] @ 3936
	.field  	0,32		; _MASTER_UNITS_STR[124] @ 3968
	.field  	0,32		; _MASTER_UNITS_STR[125] @ 4000
	.field  	236,32		; _MASTER_UNITS_STR[126] @ 4032
	.field  	104,32		; _MASTER_UNITS_STR[127] @ 4064
	.field  	76,32		; _MASTER_UNITS_STR[128] @ 4096
	.field  	0,32		; _MASTER_UNITS_STR[129] @ 4128
	.field  	0,32		; _MASTER_UNITS_STR[130] @ 4160
	.field  	0,32		; _MASTER_UNITS_STR[131] @ 4192
	.field  	0,32		; _MASTER_UNITS_STR[132] @ 4224
	.field  	0,32		; _MASTER_UNITS_STR[133] @ 4256
	.field  	0,32		; _MASTER_UNITS_STR[134] @ 4288
	.field  	248,32		; _MASTER_UNITS_STR[135] @ 4320
	.field  	77,32		; _MASTER_UNITS_STR[136] @ 4352
	.field  	83,32		; _MASTER_UNITS_STR[137] @ 4384
	.field  	99,32		; _MASTER_UNITS_STR[138] @ 4416
	.field  	102,32		; _MASTER_UNITS_STR[139] @ 4448
	.field  	0,32		; _MASTER_UNITS_STR[140] @ 4480
	.field  	0,32		; _MASTER_UNITS_STR[141] @ 4512
	.field  	0,32		; _MASTER_UNITS_STR[142] @ 4544
	.field  	0,32		; _MASTER_UNITS_STR[143] @ 4576
	.field  	322,32		; _MASTER_UNITS_STR[144] @ 4608
	.field  	86,32		; _MASTER_UNITS_STR[145] @ 4640
	.field  	70,32		; _MASTER_UNITS_STR[146] @ 4672
	.field  	82,32		; _MASTER_UNITS_STR[147] @ 4704
	.field  	0,32		; _MASTER_UNITS_STR[148] @ 4736
	.field  	0,32		; _MASTER_UNITS_STR[149] @ 4768
	.field  	0,32		; _MASTER_UNITS_STR[150] @ 4800
	.field  	0,32		; _MASTER_UNITS_STR[151] @ 4832
	.field  	0,32		; _MASTER_UNITS_STR[152] @ 4864
	.field  	135,32		; _MASTER_UNITS_STR[153] @ 4896
	.field  	98,32		; _MASTER_UNITS_STR[154] @ 4928
	.field  	98,32		; _MASTER_UNITS_STR[155] @ 4960
	.field  	108,32		; _MASTER_UNITS_STR[156] @ 4992
	.field  	47,32		; _MASTER_UNITS_STR[157] @ 5024
	.field  	100,32		; _MASTER_UNITS_STR[158] @ 5056
	.field  	121,32		; _MASTER_UNITS_STR[159] @ 5088
	.field  	0,32		; _MASTER_UNITS_STR[160] @ 5120
	.field  	0,32		; _MASTER_UNITS_STR[161] @ 5152
	.field  	23,32		; _MASTER_UNITS_STR[162] @ 5184
	.field  	77,32		; _MASTER_UNITS_STR[163] @ 5216
	.field  	103,32		; _MASTER_UNITS_STR[164] @ 5248
	.field  	97,32		; _MASTER_UNITS_STR[165] @ 5280
	.field  	108,32		; _MASTER_UNITS_STR[166] @ 5312
	.field  	47,32		; _MASTER_UNITS_STR[167] @ 5344
	.field  	100,32		; _MASTER_UNITS_STR[168] @ 5376
	.field  	121,32		; _MASTER_UNITS_STR[169] @ 5408
	.field  	0,32		; _MASTER_UNITS_STR[170] @ 5440
	.field  	25,32		; _MASTER_UNITS_STR[171] @ 5472
	.field  	77,32		; _MASTER_UNITS_STR[172] @ 5504
	.field  	76,32		; _MASTER_UNITS_STR[173] @ 5536
	.field  	47,32		; _MASTER_UNITS_STR[174] @ 5568
	.field  	100,32		; _MASTER_UNITS_STR[175] @ 5600
	.field  	121,32		; _MASTER_UNITS_STR[176] @ 5632
	.field  	0,32		; _MASTER_UNITS_STR[177] @ 5664
	.field  	0,32		; _MASTER_UNITS_STR[178] @ 5696
	.field  	0,32		; _MASTER_UNITS_STR[179] @ 5728
	.field  	27,32		; _MASTER_UNITS_STR[180] @ 5760
	.field  	99,32		; _MASTER_UNITS_STR[181] @ 5792
	.field  	102,32		; _MASTER_UNITS_STR[182] @ 5824
	.field  	47,32		; _MASTER_UNITS_STR[183] @ 5856
	.field  	100,32		; _MASTER_UNITS_STR[184] @ 5888
	.field  	121,32		; _MASTER_UNITS_STR[185] @ 5920
	.field  	0,32		; _MASTER_UNITS_STR[186] @ 5952
	.field  	0,32		; _MASTER_UNITS_STR[187] @ 5984
	.field  	0,32		; _MASTER_UNITS_STR[188] @ 6016
	.field  	29,32		; _MASTER_UNITS_STR[189] @ 6048
	.field  	109,32		; _MASTER_UNITS_STR[190] @ 6080
	.field  	51,32		; _MASTER_UNITS_STR[191] @ 6112
	.field  	47,32		; _MASTER_UNITS_STR[192] @ 6144
	.field  	100,32		; _MASTER_UNITS_STR[193] @ 6176
	.field  	121,32		; _MASTER_UNITS_STR[194] @ 6208
	.field  	0,32		; _MASTER_UNITS_STR[195] @ 6240
	.field  	0,32		; _MASTER_UNITS_STR[196] @ 6272
	.field  	0,32		; _MASTER_UNITS_STR[197] @ 6304
	.field  	31,32		; _MASTER_UNITS_STR[198] @ 6336
	.field  	73,32		; _MASTER_UNITS_STR[199] @ 6368
	.field  	103,32		; _MASTER_UNITS_STR[200] @ 6400
	.field  	97,32		; _MASTER_UNITS_STR[201] @ 6432
	.field  	108,32		; _MASTER_UNITS_STR[202] @ 6464
	.field  	47,32		; _MASTER_UNITS_STR[203] @ 6496
	.field  	100,32		; _MASTER_UNITS_STR[204] @ 6528
	.field  	121,32		; _MASTER_UNITS_STR[205] @ 6560
	.field  	0,32		; _MASTER_UNITS_STR[206] @ 6592
	.field  	235,32		; _MASTER_UNITS_STR[207] @ 6624
	.field  	103,32		; _MASTER_UNITS_STR[208] @ 6656
	.field  	97,32		; _MASTER_UNITS_STR[209] @ 6688
	.field  	108,32		; _MASTER_UNITS_STR[210] @ 6720
	.field  	47,32		; _MASTER_UNITS_STR[211] @ 6752
	.field  	100,32		; _MASTER_UNITS_STR[212] @ 6784
	.field  	121,32		; _MASTER_UNITS_STR[213] @ 6816
	.field  	0,32		; _MASTER_UNITS_STR[214] @ 6848
	.field  	0,32		; _MASTER_UNITS_STR[215] @ 6880
	.field  	249,32		; _MASTER_UNITS_STR[216] @ 6912
	.field  	77,32		; _MASTER_UNITS_STR[217] @ 6944
	.field  	83,32		; _MASTER_UNITS_STR[218] @ 6976
	.field  	99,32		; _MASTER_UNITS_STR[219] @ 7008
	.field  	102,32		; _MASTER_UNITS_STR[220] @ 7040
	.field  	47,32		; _MASTER_UNITS_STR[221] @ 7072
	.field  	100,32		; _MASTER_UNITS_STR[222] @ 7104
	.field  	121,32		; _MASTER_UNITS_STR[223] @ 7136
	.field  	0,32		; _MASTER_UNITS_STR[224] @ 7168
	.field  	184,32		; _MASTER_UNITS_STR[225] @ 7200
	.field  	83,32		; _MASTER_UNITS_STR[226] @ 7232
	.field  	99,32		; _MASTER_UNITS_STR[227] @ 7264
	.field  	102,32		; _MASTER_UNITS_STR[228] @ 7296
	.field  	47,32		; _MASTER_UNITS_STR[229] @ 7328
	.field  	100,32		; _MASTER_UNITS_STR[230] @ 7360
	.field  	121,32		; _MASTER_UNITS_STR[231] @ 7392
	.field  	0,32		; _MASTER_UNITS_STR[232] @ 7424
	.field  	0,32		; _MASTER_UNITS_STR[233] @ 7456
	.field  	186,32		; _MASTER_UNITS_STR[234] @ 7488
	.field  	83,32		; _MASTER_UNITS_STR[235] @ 7520
	.field  	99,32		; _MASTER_UNITS_STR[236] @ 7552
	.field  	102,32		; _MASTER_UNITS_STR[237] @ 7584
	.field  	47,32		; _MASTER_UNITS_STR[238] @ 7616
	.field  	115,32		; _MASTER_UNITS_STR[239] @ 7648
	.field  	0,32		; _MASTER_UNITS_STR[240] @ 7680
	.field  	0,32		; _MASTER_UNITS_STR[241] @ 7712
	.field  	0,32		; _MASTER_UNITS_STR[242] @ 7744
	.field  	133,32		; _MASTER_UNITS_STR[243] @ 7776
	.field  	98,32		; _MASTER_UNITS_STR[244] @ 7808
	.field  	98,32		; _MASTER_UNITS_STR[245] @ 7840
	.field  	108,32		; _MASTER_UNITS_STR[246] @ 7872
	.field  	47,32		; _MASTER_UNITS_STR[247] @ 7904
	.field  	109,32		; _MASTER_UNITS_STR[248] @ 7936
	.field  	105,32		; _MASTER_UNITS_STR[249] @ 7968
	.field  	110,32		; _MASTER_UNITS_STR[250] @ 8000
	.field  	0,32		; _MASTER_UNITS_STR[251] @ 8032
	.field  	131,32		; _MASTER_UNITS_STR[252] @ 8064
	.field  	109,32		; _MASTER_UNITS_STR[253] @ 8096
	.field  	51,32		; _MASTER_UNITS_STR[254] @ 8128
	.field  	47,32		; _MASTER_UNITS_STR[255] @ 8160
	.field  	109,32		; _MASTER_UNITS_STR[256] @ 8192
	.field  	105,32		; _MASTER_UNITS_STR[257] @ 8224
	.field  	110,32		; _MASTER_UNITS_STR[258] @ 8256
	.field  	0,32		; _MASTER_UNITS_STR[259] @ 8288
	.field  	0,32		; _MASTER_UNITS_STR[260] @ 8320
	.field  	15,32		; _MASTER_UNITS_STR[261] @ 8352
	.field  	99,32		; _MASTER_UNITS_STR[262] @ 8384
	.field  	102,32		; _MASTER_UNITS_STR[263] @ 8416
	.field  	47,32		; _MASTER_UNITS_STR[264] @ 8448
	.field  	109,32		; _MASTER_UNITS_STR[265] @ 8480
	.field  	105,32		; _MASTER_UNITS_STR[266] @ 8512
	.field  	110,32		; _MASTER_UNITS_STR[267] @ 8544
	.field  	0,32		; _MASTER_UNITS_STR[268] @ 8576
	.field  	0,32		; _MASTER_UNITS_STR[269] @ 8608
	.field  	18,32		; _MASTER_UNITS_STR[270] @ 8640
	.field  	73,32		; _MASTER_UNITS_STR[271] @ 8672
	.field  	103,32		; _MASTER_UNITS_STR[272] @ 8704
	.field  	108,32		; _MASTER_UNITS_STR[273] @ 8736
	.field  	47,32		; _MASTER_UNITS_STR[274] @ 8768
	.field  	109,32		; _MASTER_UNITS_STR[275] @ 8800
	.field  	105,32		; _MASTER_UNITS_STR[276] @ 8832
	.field  	110,32		; _MASTER_UNITS_STR[277] @ 8864
	.field  	0,32		; _MASTER_UNITS_STR[278] @ 8896
	.field  	16,32		; _MASTER_UNITS_STR[279] @ 8928
	.field  	103,32		; _MASTER_UNITS_STR[280] @ 8960
	.field  	97,32		; _MASTER_UNITS_STR[281] @ 8992
	.field  	108,32		; _MASTER_UNITS_STR[282] @ 9024
	.field  	47,32		; _MASTER_UNITS_STR[283] @ 9056
	.field  	109,32		; _MASTER_UNITS_STR[284] @ 9088
	.field  	105,32		; _MASTER_UNITS_STR[285] @ 9120
	.field  	110,32		; _MASTER_UNITS_STR[286] @ 9152
	.field  	0,32		; _MASTER_UNITS_STR[287] @ 9184
	.field  	17,32		; _MASTER_UNITS_STR[288] @ 9216
	.field  	76,32		; _MASTER_UNITS_STR[289] @ 9248
	.field  	47,32		; _MASTER_UNITS_STR[290] @ 9280
	.field  	109,32		; _MASTER_UNITS_STR[291] @ 9312
	.field  	105,32		; _MASTER_UNITS_STR[292] @ 9344
	.field  	110,32		; _MASTER_UNITS_STR[293] @ 9376
	.field  	0,32		; _MASTER_UNITS_STR[294] @ 9408
	.field  	0,32		; _MASTER_UNITS_STR[295] @ 9440
	.field  	0,32		; _MASTER_UNITS_STR[296] @ 9472
	.field  	123,32		; _MASTER_UNITS_STR[297] @ 9504
	.field  	83,32		; _MASTER_UNITS_STR[298] @ 9536
	.field  	99,32		; _MASTER_UNITS_STR[299] @ 9568
	.field  	102,32		; _MASTER_UNITS_STR[300] @ 9600
	.field  	47,32		; _MASTER_UNITS_STR[301] @ 9632
	.field  	109,32		; _MASTER_UNITS_STR[302] @ 9664
	.field  	105,32		; _MASTER_UNITS_STR[303] @ 9696
	.field  	110,32		; _MASTER_UNITS_STR[304] @ 9728
	.field  	0,32		; _MASTER_UNITS_STR[305] @ 9760
	.field  	19,32		; _MASTER_UNITS_STR[306] @ 9792
	.field  	109,32		; _MASTER_UNITS_STR[307] @ 9824
	.field  	51,32		; _MASTER_UNITS_STR[308] @ 9856
	.field  	47,32		; _MASTER_UNITS_STR[309] @ 9888
	.field  	104,32		; _MASTER_UNITS_STR[310] @ 9920
	.field  	114,32		; _MASTER_UNITS_STR[311] @ 9952
	.field  	0,32		; _MASTER_UNITS_STR[312] @ 9984
	.field  	0,32		; _MASTER_UNITS_STR[313] @ 10016
	.field  	0,32		; _MASTER_UNITS_STR[314] @ 10048
	.field  	30,32		; _MASTER_UNITS_STR[315] @ 10080
	.field  	73,32		; _MASTER_UNITS_STR[316] @ 10112
	.field  	103,32		; _MASTER_UNITS_STR[317] @ 10144
	.field  	97,32		; _MASTER_UNITS_STR[318] @ 10176
	.field  	108,32		; _MASTER_UNITS_STR[319] @ 10208
	.field  	47,32		; _MASTER_UNITS_STR[320] @ 10240
	.field  	104,32		; _MASTER_UNITS_STR[321] @ 10272
	.field  	114,32		; _MASTER_UNITS_STR[322] @ 10304
	.field  	0,32		; _MASTER_UNITS_STR[323] @ 10336
	.field  	121,32		; _MASTER_UNITS_STR[324] @ 10368
	.field  	78,32		; _MASTER_UNITS_STR[325] @ 10400
	.field  	109,32		; _MASTER_UNITS_STR[326] @ 10432
	.field  	51,32		; _MASTER_UNITS_STR[327] @ 10464
	.field  	47,32		; _MASTER_UNITS_STR[328] @ 10496
	.field  	104,32		; _MASTER_UNITS_STR[329] @ 10528
	.field  	114,32		; _MASTER_UNITS_STR[330] @ 10560
	.field  	0,32		; _MASTER_UNITS_STR[331] @ 10592
	.field  	0,32		; _MASTER_UNITS_STR[332] @ 10624
	.field  	190,32		; _MASTER_UNITS_STR[333] @ 10656
	.field  	78,32		; _MASTER_UNITS_STR[334] @ 10688
	.field  	109,32		; _MASTER_UNITS_STR[335] @ 10720
	.field  	51,32		; _MASTER_UNITS_STR[336] @ 10752
	.field  	47,32		; _MASTER_UNITS_STR[337] @ 10784
	.field  	115,32		; _MASTER_UNITS_STR[338] @ 10816
	.field  	0,32		; _MASTER_UNITS_STR[339] @ 10848
	.field  	0,32		; _MASTER_UNITS_STR[340] @ 10880
	.field  	0,32		; _MASTER_UNITS_STR[341] @ 10912
	.field  	191,32		; _MASTER_UNITS_STR[342] @ 10944
	.field  	78,32		; _MASTER_UNITS_STR[343] @ 10976
	.field  	109,32		; _MASTER_UNITS_STR[344] @ 11008
	.field  	51,32		; _MASTER_UNITS_STR[345] @ 11040
	.field  	47,32		; _MASTER_UNITS_STR[346] @ 11072
	.field  	100,32		; _MASTER_UNITS_STR[347] @ 11104
	.field  	97,32		; _MASTER_UNITS_STR[348] @ 11136
	.field  	121,32		; _MASTER_UNITS_STR[349] @ 11168
	.field  	0,32		; _MASTER_UNITS_STR[350] @ 11200
	.field  	122,32		; _MASTER_UNITS_STR[351] @ 11232
	.field  	78,32		; _MASTER_UNITS_STR[352] @ 11264
	.field  	76,32		; _MASTER_UNITS_STR[353] @ 11296
	.field  	47,32		; _MASTER_UNITS_STR[354] @ 11328
	.field  	104,32		; _MASTER_UNITS_STR[355] @ 11360
	.field  	114,32		; _MASTER_UNITS_STR[356] @ 11392
	.field  	0,32		; _MASTER_UNITS_STR[357] @ 11424
	.field  	0,32		; _MASTER_UNITS_STR[358] @ 11456
	.field  	0,32		; _MASTER_UNITS_STR[359] @ 11488
	.field  	130,32		; _MASTER_UNITS_STR[360] @ 11520
	.field  	99,32		; _MASTER_UNITS_STR[361] @ 11552
	.field  	102,32		; _MASTER_UNITS_STR[362] @ 11584
	.field  	47,32		; _MASTER_UNITS_STR[363] @ 11616
	.field  	104,32		; _MASTER_UNITS_STR[364] @ 11648
	.field  	114,32		; _MASTER_UNITS_STR[365] @ 11680
	.field  	0,32		; _MASTER_UNITS_STR[366] @ 11712
	.field  	0,32		; _MASTER_UNITS_STR[367] @ 11744
	.field  	0,32		; _MASTER_UNITS_STR[368] @ 11776
	.field  	134,32		; _MASTER_UNITS_STR[369] @ 11808
	.field  	98,32		; _MASTER_UNITS_STR[370] @ 11840
	.field  	98,32		; _MASTER_UNITS_STR[371] @ 11872
	.field  	108,32		; _MASTER_UNITS_STR[372] @ 11904
	.field  	47,32		; _MASTER_UNITS_STR[373] @ 11936
	.field  	104,32		; _MASTER_UNITS_STR[374] @ 11968
	.field  	114,32		; _MASTER_UNITS_STR[375] @ 12000
	.field  	0,32		; _MASTER_UNITS_STR[376] @ 12032
	.field  	0,32		; _MASTER_UNITS_STR[377] @ 12064
	.field  	136,32		; _MASTER_UNITS_STR[378] @ 12096
	.field  	103,32		; _MASTER_UNITS_STR[379] @ 12128
	.field  	97,32		; _MASTER_UNITS_STR[380] @ 12160
	.field  	108,32		; _MASTER_UNITS_STR[381] @ 12192
	.field  	47,32		; _MASTER_UNITS_STR[382] @ 12224
	.field  	104,32		; _MASTER_UNITS_STR[383] @ 12256
	.field  	114,32		; _MASTER_UNITS_STR[384] @ 12288
	.field  	0,32		; _MASTER_UNITS_STR[385] @ 12320
	.field  	0,32		; _MASTER_UNITS_STR[386] @ 12352
	.field  	138,32		; _MASTER_UNITS_STR[387] @ 12384
	.field  	76,32		; _MASTER_UNITS_STR[388] @ 12416
	.field  	47,32		; _MASTER_UNITS_STR[389] @ 12448
	.field  	104,32		; _MASTER_UNITS_STR[390] @ 12480
	.field  	114,32		; _MASTER_UNITS_STR[391] @ 12512
	.field  	0,32		; _MASTER_UNITS_STR[392] @ 12544
	.field  	0,32		; _MASTER_UNITS_STR[393] @ 12576
	.field  	0,32		; _MASTER_UNITS_STR[394] @ 12608
	.field  	0,32		; _MASTER_UNITS_STR[395] @ 12640
	.field  	22,32		; _MASTER_UNITS_STR[396] @ 12672
	.field  	103,32		; _MASTER_UNITS_STR[397] @ 12704
	.field  	97,32		; _MASTER_UNITS_STR[398] @ 12736
	.field  	108,32		; _MASTER_UNITS_STR[399] @ 12768
	.field  	47,32		; _MASTER_UNITS_STR[400] @ 12800
	.field  	115,32		; _MASTER_UNITS_STR[401] @ 12832
	.field  	0,32		; _MASTER_UNITS_STR[402] @ 12864
	.field  	0,32		; _MASTER_UNITS_STR[403] @ 12896
	.field  	0,32		; _MASTER_UNITS_STR[404] @ 12928
	.field  	24,32		; _MASTER_UNITS_STR[405] @ 12960
	.field  	76,32		; _MASTER_UNITS_STR[406] @ 12992
	.field  	47,32		; _MASTER_UNITS_STR[407] @ 13024
	.field  	115,32		; _MASTER_UNITS_STR[408] @ 13056
	.field  	0,32		; _MASTER_UNITS_STR[409] @ 13088
	.field  	0,32		; _MASTER_UNITS_STR[410] @ 13120
	.field  	0,32		; _MASTER_UNITS_STR[411] @ 13152
	.field  	0,32		; _MASTER_UNITS_STR[412] @ 13184
	.field  	0,32		; _MASTER_UNITS_STR[413] @ 13216
	.field  	26,32		; _MASTER_UNITS_STR[414] @ 13248
	.field  	99,32		; _MASTER_UNITS_STR[415] @ 13280
	.field  	102,32		; _MASTER_UNITS_STR[416] @ 13312
	.field  	47,32		; _MASTER_UNITS_STR[417] @ 13344
	.field  	115,32		; _MASTER_UNITS_STR[418] @ 13376
	.field  	0,32		; _MASTER_UNITS_STR[419] @ 13408
	.field  	0,32		; _MASTER_UNITS_STR[420] @ 13440
	.field  	0,32		; _MASTER_UNITS_STR[421] @ 13472
	.field  	0,32		; _MASTER_UNITS_STR[422] @ 13504
	.field  	28,32		; _MASTER_UNITS_STR[423] @ 13536
	.field  	109,32		; _MASTER_UNITS_STR[424] @ 13568
	.field  	51,32		; _MASTER_UNITS_STR[425] @ 13600
	.field  	47,32		; _MASTER_UNITS_STR[426] @ 13632
	.field  	115,32		; _MASTER_UNITS_STR[427] @ 13664
	.field  	0,32		; _MASTER_UNITS_STR[428] @ 13696
	.field  	0,32		; _MASTER_UNITS_STR[429] @ 13728
	.field  	0,32		; _MASTER_UNITS_STR[430] @ 13760
	.field  	0,32		; _MASTER_UNITS_STR[431] @ 13792
	.field  	132,32		; _MASTER_UNITS_STR[432] @ 13824
	.field  	98,32		; _MASTER_UNITS_STR[433] @ 13856
	.field  	98,32		; _MASTER_UNITS_STR[434] @ 13888
	.field  	108,32		; _MASTER_UNITS_STR[435] @ 13920
	.field  	47,32		; _MASTER_UNITS_STR[436] @ 13952
	.field  	115,32		; _MASTER_UNITS_STR[437] @ 13984
	.field  	0,32		; _MASTER_UNITS_STR[438] @ 14016
	.field  	0,32		; _MASTER_UNITS_STR[439] @ 14048
	.field  	0,32		; _MASTER_UNITS_STR[440] @ 14080
	.field  	137,32		; _MASTER_UNITS_STR[441] @ 14112
	.field  	73,32		; _MASTER_UNITS_STR[442] @ 14144
	.field  	103,32		; _MASTER_UNITS_STR[443] @ 14176
	.field  	97,32		; _MASTER_UNITS_STR[444] @ 14208
	.field  	108,32		; _MASTER_UNITS_STR[445] @ 14240
	.field  	47,32		; _MASTER_UNITS_STR[446] @ 14272
	.field  	115,32		; _MASTER_UNITS_STR[447] @ 14304
	.field  	0,32		; _MASTER_UNITS_STR[448] @ 14336
	.field  	0,32		; _MASTER_UNITS_STR[449] @ 14368
	.field  	320,32		; _MASTER_UNITS_STR[450] @ 14400
	.field  	84,32		; _MASTER_UNITS_STR[451] @ 14432
	.field  	69,32		; _MASTER_UNITS_STR[452] @ 14464
	.field  	77,32		; _MASTER_UNITS_STR[453] @ 14496
	.field  	80,32		; _MASTER_UNITS_STR[454] @ 14528
	.field  	0,32		; _MASTER_UNITS_STR[455] @ 14560
	.field  	0,32		; _MASTER_UNITS_STR[456] @ 14592
	.field  	0,32		; _MASTER_UNITS_STR[457] @ 14624
	.field  	0,32		; _MASTER_UNITS_STR[458] @ 14656
	.field  	32,32		; _MASTER_UNITS_STR[459] @ 14688
	.field  	223,32		; _MASTER_UNITS_STR[460] @ 14720
	.field  	67,32		; _MASTER_UNITS_STR[461] @ 14752
	.field  	0,32		; _MASTER_UNITS_STR[462] @ 14784
	.field  	0,32		; _MASTER_UNITS_STR[463] @ 14816
	.field  	0,32		; _MASTER_UNITS_STR[464] @ 14848
	.field  	0,32		; _MASTER_UNITS_STR[465] @ 14880
	.field  	0,32		; _MASTER_UNITS_STR[466] @ 14912
	.field  	0,32		; _MASTER_UNITS_STR[467] @ 14944
	.field  	33,32		; _MASTER_UNITS_STR[468] @ 14976
	.field  	223,32		; _MASTER_UNITS_STR[469] @ 15008
	.field  	70,32		; _MASTER_UNITS_STR[470] @ 15040
	.field  	0,32		; _MASTER_UNITS_STR[471] @ 15072
	.field  	0,32		; _MASTER_UNITS_STR[472] @ 15104
	.field  	0,32		; _MASTER_UNITS_STR[473] @ 15136
	.field  	0,32		; _MASTER_UNITS_STR[474] @ 15168
	.field  	0,32		; _MASTER_UNITS_STR[475] @ 15200
	.field  	0,32		; _MASTER_UNITS_STR[476] @ 15232
	.field  	34,32		; _MASTER_UNITS_STR[477] @ 15264
	.field  	223,32		; _MASTER_UNITS_STR[478] @ 15296
	.field  	82,32		; _MASTER_UNITS_STR[479] @ 15328
	.field  	0,32		; _MASTER_UNITS_STR[480] @ 15360
	.field  	0,32		; _MASTER_UNITS_STR[481] @ 15392
	.field  	0,32		; _MASTER_UNITS_STR[482] @ 15424
	.field  	0,32		; _MASTER_UNITS_STR[483] @ 15456
	.field  	0,32		; _MASTER_UNITS_STR[484] @ 15488
	.field  	0,32		; _MASTER_UNITS_STR[485] @ 15520
	.field  	35,32		; _MASTER_UNITS_STR[486] @ 15552
	.field  	75,32		; _MASTER_UNITS_STR[487] @ 15584
	.field  	0,32		; _MASTER_UNITS_STR[488] @ 15616
	.field  	0,32		; _MASTER_UNITS_STR[489] @ 15648
	.field  	0,32		; _MASTER_UNITS_STR[490] @ 15680
	.field  	0,32		; _MASTER_UNITS_STR[491] @ 15712
	.field  	0,32		; _MASTER_UNITS_STR[492] @ 15744
	.field  	0,32		; _MASTER_UNITS_STR[493] @ 15776
	.field  	0,32		; _MASTER_UNITS_STR[494] @ 15808
	.field  	346,32		; _MASTER_UNITS_STR[495] @ 15840
	.field  	67,32		; _MASTER_UNITS_STR[496] @ 15872
	.field  	79,32		; _MASTER_UNITS_STR[497] @ 15904
	.field  	78,32		; _MASTER_UNITS_STR[498] @ 15936
	.field  	67,32		; _MASTER_UNITS_STR[499] @ 15968
	.field  	0,32		; _MASTER_UNITS_STR[500] @ 16000
	.field  	0,32		; _MASTER_UNITS_STR[501] @ 16032
	.field  	0,32		; _MASTER_UNITS_STR[502] @ 16064
	.field  	0,32		; _MASTER_UNITS_STR[503] @ 16096
	.field  	105,32		; _MASTER_UNITS_STR[504] @ 16128
	.field  	37,32		; _MASTER_UNITS_STR[505] @ 16160
	.field  	0,32		; _MASTER_UNITS_STR[506] @ 16192
	.field  	0,32		; _MASTER_UNITS_STR[507] @ 16224
	.field  	0,32		; _MASTER_UNITS_STR[508] @ 16256
	.field  	0,32		; _MASTER_UNITS_STR[509] @ 16288
	.field  	0,32		; _MASTER_UNITS_STR[510] @ 16320
	.field  	0,32		; _MASTER_UNITS_STR[511] @ 16352
	.field  	0,32		; _MASTER_UNITS_STR[512] @ 16384
	.field  	106,32		; _MASTER_UNITS_STR[513] @ 16416
	.field  	37,32		; _MASTER_UNITS_STR[514] @ 16448
	.field  	0,32		; _MASTER_UNITS_STR[515] @ 16480
	.field  	0,32		; _MASTER_UNITS_STR[516] @ 16512
	.field  	0,32		; _MASTER_UNITS_STR[517] @ 16544
	.field  	0,32		; _MASTER_UNITS_STR[518] @ 16576
	.field  	0,32		; _MASTER_UNITS_STR[519] @ 16608
	.field  	0,32		; _MASTER_UNITS_STR[520] @ 16640
	.field  	0,32		; _MASTER_UNITS_STR[521] @ 16672
	.field  	139,32		; _MASTER_UNITS_STR[522] @ 16704
	.field  	112,32		; _MASTER_UNITS_STR[523] @ 16736
	.field  	112,32		; _MASTER_UNITS_STR[524] @ 16768
	.field  	109,32		; _MASTER_UNITS_STR[525] @ 16800
	.field  	0,32		; _MASTER_UNITS_STR[526] @ 16832
	.field  	0,32		; _MASTER_UNITS_STR[527] @ 16864
	.field  	0,32		; _MASTER_UNITS_STR[528] @ 16896
	.field  	0,32		; _MASTER_UNITS_STR[529] @ 16928
	.field  	0,32		; _MASTER_UNITS_STR[530] @ 16960
	.field  	169,32		; _MASTER_UNITS_STR[531] @ 16992
	.field  	112,32		; _MASTER_UNITS_STR[532] @ 17024
	.field  	112,32		; _MASTER_UNITS_STR[533] @ 17056
	.field  	98,32		; _MASTER_UNITS_STR[534] @ 17088
	.field  	0,32		; _MASTER_UNITS_STR[535] @ 17120
	.field  	0,32		; _MASTER_UNITS_STR[536] @ 17152
	.field  	0,32		; _MASTER_UNITS_STR[537] @ 17184
	.field  	0,32		; _MASTER_UNITS_STR[538] @ 17216
	.field  	0,32		; _MASTER_UNITS_STR[539] @ 17248
	.field  	336,32		; _MASTER_UNITS_STR[540] @ 17280
	.field  	70,32		; _MASTER_UNITS_STR[541] @ 17312
	.field  	82,32		; _MASTER_UNITS_STR[542] @ 17344
	.field  	69,32		; _MASTER_UNITS_STR[543] @ 17376
	.field  	81,32		; _MASTER_UNITS_STR[544] @ 17408
	.field  	0,32		; _MASTER_UNITS_STR[545] @ 17440
	.field  	0,32		; _MASTER_UNITS_STR[546] @ 17472
	.field  	0,32		; _MASTER_UNITS_STR[547] @ 17504
	.field  	0,32		; _MASTER_UNITS_STR[548] @ 17536
	.field  	38,32		; _MASTER_UNITS_STR[549] @ 17568
	.field  	72,32		; _MASTER_UNITS_STR[550] @ 17600
	.field  	122,32		; _MASTER_UNITS_STR[551] @ 17632
	.field  	0,32		; _MASTER_UNITS_STR[552] @ 17664
	.field  	0,32		; _MASTER_UNITS_STR[553] @ 17696
	.field  	0,32		; _MASTER_UNITS_STR[554] @ 17728
	.field  	0,32		; _MASTER_UNITS_STR[555] @ 17760
	.field  	0,32		; _MASTER_UNITS_STR[556] @ 17792
	.field  	0,32		; _MASTER_UNITS_STR[557] @ 17824
	.field  	244,32		; _MASTER_UNITS_STR[558] @ 17856
	.field  	77,32		; _MASTER_UNITS_STR[559] @ 17888
	.field  	72,32		; _MASTER_UNITS_STR[560] @ 17920
	.field  	122,32		; _MASTER_UNITS_STR[561] @ 17952
	.field  	0,32		; _MASTER_UNITS_STR[562] @ 17984
	.field  	0,32		; _MASTER_UNITS_STR[563] @ 18016
	.field  	0,32		; _MASTER_UNITS_STR[564] @ 18048
	.field  	0,32		; _MASTER_UNITS_STR[565] @ 18080
	.field  	0,32		; _MASTER_UNITS_STR[566] @ 18112
	.field  	321,32		; _MASTER_UNITS_STR[567] @ 18144
	.field  	80,32		; _MASTER_UNITS_STR[568] @ 18176
	.field  	82,32		; _MASTER_UNITS_STR[569] @ 18208
	.field  	69,32		; _MASTER_UNITS_STR[570] @ 18240
	.field  	83,32		; _MASTER_UNITS_STR[571] @ 18272
	.field  	83,32		; _MASTER_UNITS_STR[572] @ 18304
	.field  	0,32		; _MASTER_UNITS_STR[573] @ 18336
	.field  	0,32		; _MASTER_UNITS_STR[574] @ 18368
	.field  	0,32		; _MASTER_UNITS_STR[575] @ 18400
	.field  	14,32		; _MASTER_UNITS_STR[576] @ 18432
	.field  	97,32		; _MASTER_UNITS_STR[577] @ 18464
	.field  	116,32		; _MASTER_UNITS_STR[578] @ 18496
	.field  	109,32		; _MASTER_UNITS_STR[579] @ 18528
	.field  	0,32		; _MASTER_UNITS_STR[580] @ 18560
	.field  	0,32		; _MASTER_UNITS_STR[581] @ 18592
	.field  	0,32		; _MASTER_UNITS_STR[582] @ 18624
	.field  	0,32		; _MASTER_UNITS_STR[583] @ 18656
	.field  	0,32		; _MASTER_UNITS_STR[584] @ 18688
	.field  	1,32		; _MASTER_UNITS_STR[585] @ 18720
	.field  	105,32		; _MASTER_UNITS_STR[586] @ 18752
	.field  	110,32		; _MASTER_UNITS_STR[587] @ 18784
	.field  	72,32		; _MASTER_UNITS_STR[588] @ 18816
	.field  	50,32		; _MASTER_UNITS_STR[589] @ 18848
	.field  	79,32		; _MASTER_UNITS_STR[590] @ 18880
	.field  	54,32		; _MASTER_UNITS_STR[591] @ 18912
	.field  	56,32		; _MASTER_UNITS_STR[592] @ 18944
	.field  	0,32		; _MASTER_UNITS_STR[593] @ 18976
	.field  	2,32		; _MASTER_UNITS_STR[594] @ 19008
	.field  	105,32		; _MASTER_UNITS_STR[595] @ 19040
	.field  	110,32		; _MASTER_UNITS_STR[596] @ 19072
	.field  	72,32		; _MASTER_UNITS_STR[597] @ 19104
	.field  	103,32		; _MASTER_UNITS_STR[598] @ 19136
	.field  	48,32		; _MASTER_UNITS_STR[599] @ 19168
	.field  	67,32		; _MASTER_UNITS_STR[600] @ 19200
	.field  	0,32		; _MASTER_UNITS_STR[601] @ 19232
	.field  	0,32		; _MASTER_UNITS_STR[602] @ 19264
	.field  	3,32		; _MASTER_UNITS_STR[603] @ 19296
	.field  	102,32		; _MASTER_UNITS_STR[604] @ 19328
	.field  	116,32		; _MASTER_UNITS_STR[605] @ 19360
	.field  	72,32		; _MASTER_UNITS_STR[606] @ 19392
	.field  	50,32		; _MASTER_UNITS_STR[607] @ 19424
	.field  	79,32		; _MASTER_UNITS_STR[608] @ 19456
	.field  	54,32		; _MASTER_UNITS_STR[609] @ 19488
	.field  	56,32		; _MASTER_UNITS_STR[610] @ 19520
	.field  	0,32		; _MASTER_UNITS_STR[611] @ 19552
	.field  	4,32		; _MASTER_UNITS_STR[612] @ 19584
	.field  	109,32		; _MASTER_UNITS_STR[613] @ 19616
	.field  	109,32		; _MASTER_UNITS_STR[614] @ 19648
	.field  	72,32		; _MASTER_UNITS_STR[615] @ 19680
	.field  	50,32		; _MASTER_UNITS_STR[616] @ 19712
	.field  	79,32		; _MASTER_UNITS_STR[617] @ 19744
	.field  	54,32		; _MASTER_UNITS_STR[618] @ 19776
	.field  	56,32		; _MASTER_UNITS_STR[619] @ 19808
	.field  	0,32		; _MASTER_UNITS_STR[620] @ 19840
	.field  	5,32		; _MASTER_UNITS_STR[621] @ 19872
	.field  	109,32		; _MASTER_UNITS_STR[622] @ 19904
	.field  	109,32		; _MASTER_UNITS_STR[623] @ 19936
	.field  	72,32		; _MASTER_UNITS_STR[624] @ 19968
	.field  	103,32		; _MASTER_UNITS_STR[625] @ 20000
	.field  	0,32		; _MASTER_UNITS_STR[626] @ 20032
	.field  	0,32		; _MASTER_UNITS_STR[627] @ 20064
	.field  	0,32		; _MASTER_UNITS_STR[628] @ 20096
	.field  	0,32		; _MASTER_UNITS_STR[629] @ 20128
	.field  	6,32		; _MASTER_UNITS_STR[630] @ 20160
	.field  	112,32		; _MASTER_UNITS_STR[631] @ 20192
	.field  	115,32		; _MASTER_UNITS_STR[632] @ 20224
	.field  	105,32		; _MASTER_UNITS_STR[633] @ 20256
	.field  	0,32		; _MASTER_UNITS_STR[634] @ 20288
	.field  	0,32		; _MASTER_UNITS_STR[635] @ 20320
	.field  	0,32		; _MASTER_UNITS_STR[636] @ 20352
	.field  	0,32		; _MASTER_UNITS_STR[637] @ 20384
	.field  	0,32		; _MASTER_UNITS_STR[638] @ 20416
	.field  	7,32		; _MASTER_UNITS_STR[639] @ 20448
	.field  	98,32		; _MASTER_UNITS_STR[640] @ 20480
	.field  	0,32		; _MASTER_UNITS_STR[641] @ 20512
	.field  	0,32		; _MASTER_UNITS_STR[642] @ 20544
	.field  	0,32		; _MASTER_UNITS_STR[643] @ 20576
	.field  	0,32		; _MASTER_UNITS_STR[644] @ 20608
	.field  	0,32		; _MASTER_UNITS_STR[645] @ 20640
	.field  	0,32		; _MASTER_UNITS_STR[646] @ 20672
	.field  	0,32		; _MASTER_UNITS_STR[647] @ 20704
	.field  	8,32		; _MASTER_UNITS_STR[648] @ 20736
	.field  	109,32		; _MASTER_UNITS_STR[649] @ 20768
	.field  	98,32		; _MASTER_UNITS_STR[650] @ 20800
	.field  	0,32		; _MASTER_UNITS_STR[651] @ 20832
	.field  	0,32		; _MASTER_UNITS_STR[652] @ 20864
	.field  	0,32		; _MASTER_UNITS_STR[653] @ 20896
	.field  	0,32		; _MASTER_UNITS_STR[654] @ 20928
	.field  	0,32		; _MASTER_UNITS_STR[655] @ 20960
	.field  	0,32		; _MASTER_UNITS_STR[656] @ 20992
	.field  	9,32		; _MASTER_UNITS_STR[657] @ 21024
	.field  	103,32		; _MASTER_UNITS_STR[658] @ 21056
	.field  	47,32		; _MASTER_UNITS_STR[659] @ 21088
	.field  	99,32		; _MASTER_UNITS_STR[660] @ 21120
	.field  	109,32		; _MASTER_UNITS_STR[661] @ 21152
	.field  	50,32		; _MASTER_UNITS_STR[662] @ 21184
	.field  	0,32		; _MASTER_UNITS_STR[663] @ 21216
	.field  	0,32		; _MASTER_UNITS_STR[664] @ 21248
	.field  	0,32		; _MASTER_UNITS_STR[665] @ 21280
	.field  	10,32		; _MASTER_UNITS_STR[666] @ 21312
	.field  	107,32		; _MASTER_UNITS_STR[667] @ 21344
	.field  	103,32		; _MASTER_UNITS_STR[668] @ 21376
	.field  	47,32		; _MASTER_UNITS_STR[669] @ 21408
	.field  	99,32		; _MASTER_UNITS_STR[670] @ 21440
	.field  	109,32		; _MASTER_UNITS_STR[671] @ 21472
	.field  	50,32		; _MASTER_UNITS_STR[672] @ 21504
	.field  	0,32		; _MASTER_UNITS_STR[673] @ 21536
	.field  	0,32		; _MASTER_UNITS_STR[674] @ 21568
	.field  	11,32		; _MASTER_UNITS_STR[675] @ 21600
	.field  	80,32		; _MASTER_UNITS_STR[676] @ 21632
	.field  	97,32		; _MASTER_UNITS_STR[677] @ 21664
	.field  	0,32		; _MASTER_UNITS_STR[678] @ 21696
	.field  	0,32		; _MASTER_UNITS_STR[679] @ 21728
	.field  	0,32		; _MASTER_UNITS_STR[680] @ 21760
	.field  	0,32		; _MASTER_UNITS_STR[681] @ 21792
	.field  	0,32		; _MASTER_UNITS_STR[682] @ 21824
	.field  	0,32		; _MASTER_UNITS_STR[683] @ 21856
	.field  	12,32		; _MASTER_UNITS_STR[684] @ 21888
	.field  	107,32		; _MASTER_UNITS_STR[685] @ 21920
	.field  	80,32		; _MASTER_UNITS_STR[686] @ 21952
	.field  	97,32		; _MASTER_UNITS_STR[687] @ 21984
	.field  	0,32		; _MASTER_UNITS_STR[688] @ 22016
	.field  	0,32		; _MASTER_UNITS_STR[689] @ 22048
	.field  	0,32		; _MASTER_UNITS_STR[690] @ 22080
	.field  	0,32		; _MASTER_UNITS_STR[691] @ 22112
	.field  	0,32		; _MASTER_UNITS_STR[692] @ 22144
	.field  	13,32		; _MASTER_UNITS_STR[693] @ 22176
	.field  	116,32		; _MASTER_UNITS_STR[694] @ 22208
	.field  	111,32		; _MASTER_UNITS_STR[695] @ 22240
	.field  	114,32		; _MASTER_UNITS_STR[696] @ 22272
	.field  	114,32		; _MASTER_UNITS_STR[697] @ 22304
	.field  	0,32		; _MASTER_UNITS_STR[698] @ 22336
	.field  	0,32		; _MASTER_UNITS_STR[699] @ 22368
	.field  	0,32		; _MASTER_UNITS_STR[700] @ 22400
	.field  	0,32		; _MASTER_UNITS_STR[701] @ 22432
	.field  	145,32		; _MASTER_UNITS_STR[702] @ 22464
	.field  	105,32		; _MASTER_UNITS_STR[703] @ 22496
	.field  	110,32		; _MASTER_UNITS_STR[704] @ 22528
	.field  	72,32		; _MASTER_UNITS_STR[705] @ 22560
	.field  	50,32		; _MASTER_UNITS_STR[706] @ 22592
	.field  	79,32		; _MASTER_UNITS_STR[707] @ 22624
	.field  	54,32		; _MASTER_UNITS_STR[708] @ 22656
	.field  	48,32		; _MASTER_UNITS_STR[709] @ 22688
	.field  	0,32		; _MASTER_UNITS_STR[710] @ 22720
	.field  	170,32		; _MASTER_UNITS_STR[711] @ 22752
	.field  	99,32		; _MASTER_UNITS_STR[712] @ 22784
	.field  	109,32		; _MASTER_UNITS_STR[713] @ 22816
	.field  	72,32		; _MASTER_UNITS_STR[714] @ 22848
	.field  	50,32		; _MASTER_UNITS_STR[715] @ 22880
	.field  	79,32		; _MASTER_UNITS_STR[716] @ 22912
	.field  	52,32		; _MASTER_UNITS_STR[717] @ 22944
	.field  	67,32		; _MASTER_UNITS_STR[718] @ 22976
	.field  	0,32		; _MASTER_UNITS_STR[719] @ 23008
	.field  	171,32		; _MASTER_UNITS_STR[720] @ 23040
	.field  	109,32		; _MASTER_UNITS_STR[721] @ 23072
	.field  	72,32		; _MASTER_UNITS_STR[722] @ 23104
	.field  	50,32		; _MASTER_UNITS_STR[723] @ 23136
	.field  	79,32		; _MASTER_UNITS_STR[724] @ 23168
	.field  	52,32		; _MASTER_UNITS_STR[725] @ 23200
	.field  	67,32		; _MASTER_UNITS_STR[726] @ 23232
	.field  	0,32		; _MASTER_UNITS_STR[727] @ 23264
	.field  	0,32		; _MASTER_UNITS_STR[728] @ 23296
	.field  	172,32		; _MASTER_UNITS_STR[729] @ 23328
	.field  	99,32		; _MASTER_UNITS_STR[730] @ 23360
	.field  	109,32		; _MASTER_UNITS_STR[731] @ 23392
	.field  	72,32		; _MASTER_UNITS_STR[732] @ 23424
	.field  	103,32		; _MASTER_UNITS_STR[733] @ 23456
	.field  	48,32		; _MASTER_UNITS_STR[734] @ 23488
	.field  	67,32		; _MASTER_UNITS_STR[735] @ 23520
	.field  	0,32		; _MASTER_UNITS_STR[736] @ 23552
	.field  	0,32		; _MASTER_UNITS_STR[737] @ 23584
	.field  	173,32		; _MASTER_UNITS_STR[738] @ 23616
	.field  	112,32		; _MASTER_UNITS_STR[739] @ 23648
	.field  	115,32		; _MASTER_UNITS_STR[740] @ 23680
	.field  	102,32		; _MASTER_UNITS_STR[741] @ 23712
	.field  	0,32		; _MASTER_UNITS_STR[742] @ 23744
	.field  	0,32		; _MASTER_UNITS_STR[743] @ 23776
	.field  	0,32		; _MASTER_UNITS_STR[744] @ 23808
	.field  	0,32		; _MASTER_UNITS_STR[745] @ 23840
	.field  	0,32		; _MASTER_UNITS_STR[746] @ 23872
	.field  	174,32		; _MASTER_UNITS_STR[747] @ 23904
	.field  	104,32		; _MASTER_UNITS_STR[748] @ 23936
	.field  	80,32		; _MASTER_UNITS_STR[749] @ 23968
	.field  	97,32		; _MASTER_UNITS_STR[750] @ 24000
	.field  	0,32		; _MASTER_UNITS_STR[751] @ 24032
	.field  	0,32		; _MASTER_UNITS_STR[752] @ 24064
	.field  	0,32		; _MASTER_UNITS_STR[753] @ 24096
	.field  	0,32		; _MASTER_UNITS_STR[754] @ 24128
	.field  	0,32		; _MASTER_UNITS_STR[755] @ 24160
	.field  	175,32		; _MASTER_UNITS_STR[756] @ 24192
	.field  	112,32		; _MASTER_UNITS_STR[757] @ 24224
	.field  	115,32		; _MASTER_UNITS_STR[758] @ 24256
	.field  	105,32		; _MASTER_UNITS_STR[759] @ 24288
	.field  	97,32		; _MASTER_UNITS_STR[760] @ 24320
	.field  	0,32		; _MASTER_UNITS_STR[761] @ 24352
	.field  	0,32		; _MASTER_UNITS_STR[762] @ 24384
	.field  	0,32		; _MASTER_UNITS_STR[763] @ 24416
	.field  	0,32		; _MASTER_UNITS_STR[764] @ 24448
	.field  	176,32		; _MASTER_UNITS_STR[765] @ 24480
	.field  	107,32		; _MASTER_UNITS_STR[766] @ 24512
	.field  	103,32		; _MASTER_UNITS_STR[767] @ 24544
	.field  	47,32		; _MASTER_UNITS_STR[768] @ 24576
	.field  	109,32		; _MASTER_UNITS_STR[769] @ 24608
	.field  	50,32		; _MASTER_UNITS_STR[770] @ 24640
	.field  	0,32		; _MASTER_UNITS_STR[771] @ 24672
	.field  	0,32		; _MASTER_UNITS_STR[772] @ 24704
	.field  	0,32		; _MASTER_UNITS_STR[773] @ 24736
	.field  	177,32		; _MASTER_UNITS_STR[774] @ 24768
	.field  	102,32		; _MASTER_UNITS_STR[775] @ 24800
	.field  	116,32		; _MASTER_UNITS_STR[776] @ 24832
	.field  	72,32		; _MASTER_UNITS_STR[777] @ 24864
	.field  	50,32		; _MASTER_UNITS_STR[778] @ 24896
	.field  	79,32		; _MASTER_UNITS_STR[779] @ 24928
	.field  	52,32		; _MASTER_UNITS_STR[780] @ 24960
	.field  	67,32		; _MASTER_UNITS_STR[781] @ 24992
	.field  	0,32		; _MASTER_UNITS_STR[782] @ 25024
	.field  	178,32		; _MASTER_UNITS_STR[783] @ 25056
	.field  	102,32		; _MASTER_UNITS_STR[784] @ 25088
	.field  	116,32		; _MASTER_UNITS_STR[785] @ 25120
	.field  	72,32		; _MASTER_UNITS_STR[786] @ 25152
	.field  	50,32		; _MASTER_UNITS_STR[787] @ 25184
	.field  	79,32		; _MASTER_UNITS_STR[788] @ 25216
	.field  	54,32		; _MASTER_UNITS_STR[789] @ 25248
	.field  	48,32		; _MASTER_UNITS_STR[790] @ 25280
	.field  	0,32		; _MASTER_UNITS_STR[791] @ 25312
	.field  	179,32		; _MASTER_UNITS_STR[792] @ 25344
	.field  	109,32		; _MASTER_UNITS_STR[793] @ 25376
	.field  	72,32		; _MASTER_UNITS_STR[794] @ 25408
	.field  	103,32		; _MASTER_UNITS_STR[795] @ 25440
	.field  	48,32		; _MASTER_UNITS_STR[796] @ 25472
	.field  	67,32		; _MASTER_UNITS_STR[797] @ 25504
	.field  	0,32		; _MASTER_UNITS_STR[798] @ 25536
	.field  	0,32		; _MASTER_UNITS_STR[799] @ 25568
	.field  	0,32		; _MASTER_UNITS_STR[800] @ 25600
	.field  	237,32		; _MASTER_UNITS_STR[801] @ 25632
	.field  	77,32		; _MASTER_UNITS_STR[802] @ 25664
	.field  	80,32		; _MASTER_UNITS_STR[803] @ 25696
	.field  	97,32		; _MASTER_UNITS_STR[804] @ 25728
	.field  	0,32		; _MASTER_UNITS_STR[805] @ 25760
	.field  	0,32		; _MASTER_UNITS_STR[806] @ 25792
	.field  	0,32		; _MASTER_UNITS_STR[807] @ 25824
	.field  	0,32		; _MASTER_UNITS_STR[808] @ 25856
	.field  	0,32		; _MASTER_UNITS_STR[809] @ 25888
	.field  	238,32		; _MASTER_UNITS_STR[810] @ 25920
	.field  	105,32		; _MASTER_UNITS_STR[811] @ 25952
	.field  	110,32		; _MASTER_UNITS_STR[812] @ 25984
	.field  	72,32		; _MASTER_UNITS_STR[813] @ 26016
	.field  	50,32		; _MASTER_UNITS_STR[814] @ 26048
	.field  	79,32		; _MASTER_UNITS_STR[815] @ 26080
	.field  	52,32		; _MASTER_UNITS_STR[816] @ 26112
	.field  	67,32		; _MASTER_UNITS_STR[817] @ 26144
	.field  	0,32		; _MASTER_UNITS_STR[818] @ 26176
	.field  	239,32		; _MASTER_UNITS_STR[819] @ 26208
	.field  	109,32		; _MASTER_UNITS_STR[820] @ 26240
	.field  	109,32		; _MASTER_UNITS_STR[821] @ 26272
	.field  	72,32		; _MASTER_UNITS_STR[822] @ 26304
	.field  	50,32		; _MASTER_UNITS_STR[823] @ 26336
	.field  	79,32		; _MASTER_UNITS_STR[824] @ 26368
	.field  	52,32		; _MASTER_UNITS_STR[825] @ 26400
	.field  	67,32		; _MASTER_UNITS_STR[826] @ 26432
	.field  	0,32		; _MASTER_UNITS_STR[827] @ 26464
	.field  	339,32		; _MASTER_UNITS_STR[828] @ 26496
	.field  	69,32		; _MASTER_UNITS_STR[829] @ 26528
	.field  	77,32		; _MASTER_UNITS_STR[830] @ 26560
	.field  	70,32		; _MASTER_UNITS_STR[831] @ 26592
	.field  	0,32		; _MASTER_UNITS_STR[832] @ 26624
	.field  	0,32		; _MASTER_UNITS_STR[833] @ 26656
	.field  	0,32		; _MASTER_UNITS_STR[834] @ 26688
	.field  	0,32		; _MASTER_UNITS_STR[835] @ 26720
	.field  	0,32		; _MASTER_UNITS_STR[836] @ 26752
	.field  	36,32		; _MASTER_UNITS_STR[837] @ 26784
	.field  	109,32		; _MASTER_UNITS_STR[838] @ 26816
	.field  	86,32		; _MASTER_UNITS_STR[839] @ 26848
	.field  	0,32		; _MASTER_UNITS_STR[840] @ 26880
	.field  	0,32		; _MASTER_UNITS_STR[841] @ 26912
	.field  	0,32		; _MASTER_UNITS_STR[842] @ 26944
	.field  	0,32		; _MASTER_UNITS_STR[843] @ 26976
	.field  	0,32		; _MASTER_UNITS_STR[844] @ 27008
	.field  	0,32		; _MASTER_UNITS_STR[845] @ 27040
	.field  	58,32		; _MASTER_UNITS_STR[846] @ 27072
	.field  	86,32		; _MASTER_UNITS_STR[847] @ 27104
	.field  	0,32		; _MASTER_UNITS_STR[848] @ 27136
	.field  	0,32		; _MASTER_UNITS_STR[849] @ 27168
	.field  	0,32		; _MASTER_UNITS_STR[850] @ 27200
	.field  	0,32		; _MASTER_UNITS_STR[851] @ 27232
	.field  	0,32		; _MASTER_UNITS_STR[852] @ 27264
	.field  	0,32		; _MASTER_UNITS_STR[853] @ 27296
	.field  	0,32		; _MASTER_UNITS_STR[854] @ 27328
	.field  	340,32		; _MASTER_UNITS_STR[855] @ 27360
	.field  	67,32		; _MASTER_UNITS_STR[856] @ 27392
	.field  	85,32		; _MASTER_UNITS_STR[857] @ 27424
	.field  	82,32		; _MASTER_UNITS_STR[858] @ 27456
	.field  	82,32		; _MASTER_UNITS_STR[859] @ 27488
	.field  	69,32		; _MASTER_UNITS_STR[860] @ 27520
	.field  	78,32		; _MASTER_UNITS_STR[861] @ 27552
	.field  	84,32		; _MASTER_UNITS_STR[862] @ 27584
	.field  	0,32		; _MASTER_UNITS_STR[863] @ 27616
	.field  	39,32		; _MASTER_UNITS_STR[864] @ 27648
	.field  	109,32		; _MASTER_UNITS_STR[865] @ 27680
	.field  	65,32		; _MASTER_UNITS_STR[866] @ 27712
	.field  	0,32		; _MASTER_UNITS_STR[867] @ 27744
	.field  	0,32		; _MASTER_UNITS_STR[868] @ 27776
	.field  	0,32		; _MASTER_UNITS_STR[869] @ 27808
	.field  	0,32		; _MASTER_UNITS_STR[870] @ 27840
	.field  	0,32		; _MASTER_UNITS_STR[871] @ 27872
	.field  	0,32		; _MASTER_UNITS_STR[872] @ 27904
	.field  	337,32		; _MASTER_UNITS_STR[873] @ 27936
	.field  	65,32		; _MASTER_UNITS_STR[874] @ 27968
	.field  	78,32		; _MASTER_UNITS_STR[875] @ 28000
	.field  	65,32		; _MASTER_UNITS_STR[876] @ 28032
	.field  	0,32		; _MASTER_UNITS_STR[877] @ 28064
	.field  	0,32		; _MASTER_UNITS_STR[878] @ 28096
	.field  	0,32		; _MASTER_UNITS_STR[879] @ 28128
	.field  	0,32		; _MASTER_UNITS_STR[880] @ 28160
	.field  	0,32		; _MASTER_UNITS_STR[881] @ 28192
	.field  	57,32		; _MASTER_UNITS_STR[882] @ 28224
	.field  	37,32		; _MASTER_UNITS_STR[883] @ 28256
	.field  	0,32		; _MASTER_UNITS_STR[884] @ 28288
	.field  	0,32		; _MASTER_UNITS_STR[885] @ 28320
	.field  	0,32		; _MASTER_UNITS_STR[886] @ 28352
	.field  	0,32		; _MASTER_UNITS_STR[887] @ 28384
	.field  	0,32		; _MASTER_UNITS_STR[888] @ 28416
	.field  	0,32		; _MASTER_UNITS_STR[889] @ 28448
	.field  	0,32		; _MASTER_UNITS_STR[890] @ 28480
	.field  	246,32		; _MASTER_UNITS_STR[891] @ 28512
	.field  	37,32		; _MASTER_UNITS_STR[892] @ 28544
	.field  	47,32		; _MASTER_UNITS_STR[893] @ 28576
	.field  	65,32		; _MASTER_UNITS_STR[894] @ 28608
	.field  	80,32		; _MASTER_UNITS_STR[895] @ 28640
	.field  	73,32		; _MASTER_UNITS_STR[896] @ 28672
	.field  	0,32		; _MASTER_UNITS_STR[897] @ 28704
	.field  	0,32		; _MASTER_UNITS_STR[898] @ 28736
	.field  	0,32		; _MASTER_UNITS_STR[899] @ 28768
	.field  	247,32		; _MASTER_UNITS_STR[900] @ 28800
	.field  	37,32		; _MASTER_UNITS_STR[901] @ 28832
	.field  	47,32		; _MASTER_UNITS_STR[902] @ 28864
	.field  	107,32		; _MASTER_UNITS_STR[903] @ 28896
	.field  	103,32		; _MASTER_UNITS_STR[904] @ 28928
	.field  	47,32		; _MASTER_UNITS_STR[905] @ 28960
	.field  	109,32		; _MASTER_UNITS_STR[906] @ 28992
	.field  	51,32		; _MASTER_UNITS_STR[907] @ 29024
	.field  	0,32		; _MASTER_UNITS_STR[908] @ 29056
	.field  	344,32		; _MASTER_UNITS_STR[909] @ 29088
	.field  	86,32		; _MASTER_UNITS_STR[910] @ 29120
	.field  	80,32		; _MASTER_UNITS_STR[911] @ 29152
	.field  	86,32		; _MASTER_UNITS_STR[912] @ 29184
	.field  	0,32		; _MASTER_UNITS_STR[913] @ 29216
	.field  	0,32		; _MASTER_UNITS_STR[914] @ 29248
	.field  	0,32		; _MASTER_UNITS_STR[915] @ 29280
	.field  	0,32		; _MASTER_UNITS_STR[916] @ 29312
	.field  	0,32		; _MASTER_UNITS_STR[917] @ 29344
	.field  	149,32		; _MASTER_UNITS_STR[918] @ 29376
	.field  	37,32		; _MASTER_UNITS_STR[919] @ 29408
	.field  	0,32		; _MASTER_UNITS_STR[920] @ 29440
	.field  	0,32		; _MASTER_UNITS_STR[921] @ 29472
	.field  	0,32		; _MASTER_UNITS_STR[922] @ 29504
	.field  	0,32		; _MASTER_UNITS_STR[923] @ 29536
	.field  	0,32		; _MASTER_UNITS_STR[924] @ 29568
	.field  	0,32		; _MASTER_UNITS_STR[925] @ 29600
	.field  	0,32		; _MASTER_UNITS_STR[926] @ 29632
	.field  	327,32		; _MASTER_UNITS_STR[927] @ 29664
	.field  	77,32		; _MASTER_UNITS_STR[928] @ 29696
	.field  	65,32		; _MASTER_UNITS_STR[929] @ 29728
	.field  	83,32		; _MASTER_UNITS_STR[930] @ 29760
	.field  	83,32		; _MASTER_UNITS_STR[931] @ 29792
	.field  	0,32		; _MASTER_UNITS_STR[932] @ 29824
	.field  	0,32		; _MASTER_UNITS_STR[933] @ 29856
	.field  	0,32		; _MASTER_UNITS_STR[934] @ 29888
	.field  	0,32		; _MASTER_UNITS_STR[935] @ 29920
	.field  	61,32		; _MASTER_UNITS_STR[936] @ 29952
	.field  	107,32		; _MASTER_UNITS_STR[937] @ 29984
	.field  	103,32		; _MASTER_UNITS_STR[938] @ 30016
	.field  	0,32		; _MASTER_UNITS_STR[939] @ 30048
	.field  	0,32		; _MASTER_UNITS_STR[940] @ 30080
	.field  	0,32		; _MASTER_UNITS_STR[941] @ 30112
	.field  	0,32		; _MASTER_UNITS_STR[942] @ 30144
	.field  	0,32		; _MASTER_UNITS_STR[943] @ 30176
	.field  	0,32		; _MASTER_UNITS_STR[944] @ 30208
	.field  	63,32		; _MASTER_UNITS_STR[945] @ 30240
	.field  	108,32		; _MASTER_UNITS_STR[946] @ 30272
	.field  	98,32		; _MASTER_UNITS_STR[947] @ 30304
	.field  	115,32		; _MASTER_UNITS_STR[948] @ 30336
	.field  	0,32		; _MASTER_UNITS_STR[949] @ 30368
	.field  	0,32		; _MASTER_UNITS_STR[950] @ 30400
	.field  	0,32		; _MASTER_UNITS_STR[951] @ 30432
	.field  	0,32		; _MASTER_UNITS_STR[952] @ 30464
	.field  	0,32		; _MASTER_UNITS_STR[953] @ 30496
	.field  	60,32		; _MASTER_UNITS_STR[954] @ 30528
	.field  	103,32		; _MASTER_UNITS_STR[955] @ 30560
	.field  	0,32		; _MASTER_UNITS_STR[956] @ 30592
	.field  	0,32		; _MASTER_UNITS_STR[957] @ 30624
	.field  	0,32		; _MASTER_UNITS_STR[958] @ 30656
	.field  	0,32		; _MASTER_UNITS_STR[959] @ 30688
	.field  	0,32		; _MASTER_UNITS_STR[960] @ 30720
	.field  	0,32		; _MASTER_UNITS_STR[961] @ 30752
	.field  	0,32		; _MASTER_UNITS_STR[962] @ 30784
	.field  	62,32		; _MASTER_UNITS_STR[963] @ 30816
	.field  	116,32		; _MASTER_UNITS_STR[964] @ 30848
	.field  	0,32		; _MASTER_UNITS_STR[965] @ 30880
	.field  	0,32		; _MASTER_UNITS_STR[966] @ 30912
	.field  	0,32		; _MASTER_UNITS_STR[967] @ 30944
	.field  	0,32		; _MASTER_UNITS_STR[968] @ 30976
	.field  	0,32		; _MASTER_UNITS_STR[969] @ 31008
	.field  	0,32		; _MASTER_UNITS_STR[970] @ 31040
	.field  	0,32		; _MASTER_UNITS_STR[971] @ 31072
	.field  	64,32		; _MASTER_UNITS_STR[972] @ 31104
	.field  	116,32		; _MASTER_UNITS_STR[973] @ 31136
	.field  	115,32		; _MASTER_UNITS_STR[974] @ 31168
	.field  	0,32		; _MASTER_UNITS_STR[975] @ 31200
	.field  	0,32		; _MASTER_UNITS_STR[976] @ 31232
	.field  	0,32		; _MASTER_UNITS_STR[977] @ 31264
	.field  	0,32		; _MASTER_UNITS_STR[978] @ 31296
	.field  	0,32		; _MASTER_UNITS_STR[979] @ 31328
	.field  	0,32		; _MASTER_UNITS_STR[980] @ 31360
	.field  	65,32		; _MASTER_UNITS_STR[981] @ 31392
	.field  	116,32		; _MASTER_UNITS_STR[982] @ 31424
	.field  	108,32		; _MASTER_UNITS_STR[983] @ 31456
	.field  	0,32		; _MASTER_UNITS_STR[984] @ 31488
	.field  	0,32		; _MASTER_UNITS_STR[985] @ 31520
	.field  	0,32		; _MASTER_UNITS_STR[986] @ 31552
	.field  	0,32		; _MASTER_UNITS_STR[987] @ 31584
	.field  	0,32		; _MASTER_UNITS_STR[988] @ 31616
	.field  	0,32		; _MASTER_UNITS_STR[989] @ 31648
	.field  	125,32		; _MASTER_UNITS_STR[990] @ 31680
	.field  	111,32		; _MASTER_UNITS_STR[991] @ 31712
	.field  	122,32		; _MASTER_UNITS_STR[992] @ 31744
	.field  	0,32		; _MASTER_UNITS_STR[993] @ 31776
	.field  	0,32		; _MASTER_UNITS_STR[994] @ 31808
	.field  	0,32		; _MASTER_UNITS_STR[995] @ 31840
	.field  	0,32		; _MASTER_UNITS_STR[996] @ 31872
	.field  	0,32		; _MASTER_UNITS_STR[997] @ 31904
	.field  	0,32		; _MASTER_UNITS_STR[998] @ 31936
	.field  	328,32		; _MASTER_UNITS_STR[999] @ 31968
	.field  	77,32		; _MASTER_UNITS_STR[1000] @ 32000
	.field  	70,32		; _MASTER_UNITS_STR[1001] @ 32032
	.field  	82,32		; _MASTER_UNITS_STR[1002] @ 32064
	.field  	0,32		; _MASTER_UNITS_STR[1003] @ 32096
	.field  	0,32		; _MASTER_UNITS_STR[1004] @ 32128
	.field  	0,32		; _MASTER_UNITS_STR[1005] @ 32160
	.field  	0,32		; _MASTER_UNITS_STR[1006] @ 32192
	.field  	0,32		; _MASTER_UNITS_STR[1007] @ 32224
	.field  	70,32		; _MASTER_UNITS_STR[1008] @ 32256
	.field  	103,32		; _MASTER_UNITS_STR[1009] @ 32288
	.field  	47,32		; _MASTER_UNITS_STR[1010] @ 32320
	.field  	115,32		; _MASTER_UNITS_STR[1011] @ 32352
	.field  	0,32		; _MASTER_UNITS_STR[1012] @ 32384
	.field  	0,32		; _MASTER_UNITS_STR[1013] @ 32416
	.field  	0,32		; _MASTER_UNITS_STR[1014] @ 32448
	.field  	0,32		; _MASTER_UNITS_STR[1015] @ 32480
	.field  	0,32		; _MASTER_UNITS_STR[1016] @ 32512
	.field  	71,32		; _MASTER_UNITS_STR[1017] @ 32544
	.field  	103,32		; _MASTER_UNITS_STR[1018] @ 32576
	.field  	47,32		; _MASTER_UNITS_STR[1019] @ 32608
	.field  	109,32		; _MASTER_UNITS_STR[1020] @ 32640
	.field  	105,32		; _MASTER_UNITS_STR[1021] @ 32672
	.field  	110,32		; _MASTER_UNITS_STR[1022] @ 32704
	.field  	0,32		; _MASTER_UNITS_STR[1023] @ 32736
	.field  	0,32		; _MASTER_UNITS_STR[1024] @ 32768
	.field  	0,32		; _MASTER_UNITS_STR[1025] @ 32800
	.field  	72,32		; _MASTER_UNITS_STR[1026] @ 32832
	.field  	103,32		; _MASTER_UNITS_STR[1027] @ 32864
	.field  	47,32		; _MASTER_UNITS_STR[1028] @ 32896
	.field  	104,32		; _MASTER_UNITS_STR[1029] @ 32928
	.field  	114,32		; _MASTER_UNITS_STR[1030] @ 32960
	.field  	0,32		; _MASTER_UNITS_STR[1031] @ 32992
	.field  	0,32		; _MASTER_UNITS_STR[1032] @ 33024
	.field  	0,32		; _MASTER_UNITS_STR[1033] @ 33056
	.field  	0,32		; _MASTER_UNITS_STR[1034] @ 33088
	.field  	73,32		; _MASTER_UNITS_STR[1035] @ 33120
	.field  	107,32		; _MASTER_UNITS_STR[1036] @ 33152
	.field  	103,32		; _MASTER_UNITS_STR[1037] @ 33184
	.field  	47,32		; _MASTER_UNITS_STR[1038] @ 33216
	.field  	115,32		; _MASTER_UNITS_STR[1039] @ 33248
	.field  	0,32		; _MASTER_UNITS_STR[1040] @ 33280
	.field  	0,32		; _MASTER_UNITS_STR[1041] @ 33312
	.field  	0,32		; _MASTER_UNITS_STR[1042] @ 33344
	.field  	0,32		; _MASTER_UNITS_STR[1043] @ 33376
	.field  	74,32		; _MASTER_UNITS_STR[1044] @ 33408
	.field  	107,32		; _MASTER_UNITS_STR[1045] @ 33440
	.field  	103,32		; _MASTER_UNITS_STR[1046] @ 33472
	.field  	47,32		; _MASTER_UNITS_STR[1047] @ 33504
	.field  	109,32		; _MASTER_UNITS_STR[1048] @ 33536
	.field  	105,32		; _MASTER_UNITS_STR[1049] @ 33568
	.field  	110,32		; _MASTER_UNITS_STR[1050] @ 33600
	.field  	0,32		; _MASTER_UNITS_STR[1051] @ 33632
	.field  	0,32		; _MASTER_UNITS_STR[1052] @ 33664
	.field  	75,32		; _MASTER_UNITS_STR[1053] @ 33696
	.field  	107,32		; _MASTER_UNITS_STR[1054] @ 33728
	.field  	103,32		; _MASTER_UNITS_STR[1055] @ 33760
	.field  	47,32		; _MASTER_UNITS_STR[1056] @ 33792
	.field  	104,32		; _MASTER_UNITS_STR[1057] @ 33824
	.field  	114,32		; _MASTER_UNITS_STR[1058] @ 33856
	.field  	0,32		; _MASTER_UNITS_STR[1059] @ 33888
	.field  	0,32		; _MASTER_UNITS_STR[1060] @ 33920
	.field  	0,32		; _MASTER_UNITS_STR[1061] @ 33952
	.field  	76,32		; _MASTER_UNITS_STR[1062] @ 33984
	.field  	107,32		; _MASTER_UNITS_STR[1063] @ 34016
	.field  	103,32		; _MASTER_UNITS_STR[1064] @ 34048
	.field  	47,32		; _MASTER_UNITS_STR[1065] @ 34080
	.field  	100,32		; _MASTER_UNITS_STR[1066] @ 34112
	.field  	121,32		; _MASTER_UNITS_STR[1067] @ 34144
	.field  	0,32		; _MASTER_UNITS_STR[1068] @ 34176
	.field  	0,32		; _MASTER_UNITS_STR[1069] @ 34208
	.field  	0,32		; _MASTER_UNITS_STR[1070] @ 34240
	.field  	77,32		; _MASTER_UNITS_STR[1071] @ 34272
	.field  	116,32		; _MASTER_UNITS_STR[1072] @ 34304
	.field  	47,32		; _MASTER_UNITS_STR[1073] @ 34336
	.field  	109,32		; _MASTER_UNITS_STR[1074] @ 34368
	.field  	105,32		; _MASTER_UNITS_STR[1075] @ 34400
	.field  	110,32		; _MASTER_UNITS_STR[1076] @ 34432
	.field  	0,32		; _MASTER_UNITS_STR[1077] @ 34464
	.field  	0,32		; _MASTER_UNITS_STR[1078] @ 34496
	.field  	0,32		; _MASTER_UNITS_STR[1079] @ 34528
	.field  	78,32		; _MASTER_UNITS_STR[1080] @ 34560
	.field  	116,32		; _MASTER_UNITS_STR[1081] @ 34592
	.field  	47,32		; _MASTER_UNITS_STR[1082] @ 34624
	.field  	104,32		; _MASTER_UNITS_STR[1083] @ 34656
	.field  	114,32		; _MASTER_UNITS_STR[1084] @ 34688
	.field  	0,32		; _MASTER_UNITS_STR[1085] @ 34720
	.field  	0,32		; _MASTER_UNITS_STR[1086] @ 34752
	.field  	0,32		; _MASTER_UNITS_STR[1087] @ 34784
	.field  	0,32		; _MASTER_UNITS_STR[1088] @ 34816
	.field  	79,32		; _MASTER_UNITS_STR[1089] @ 34848
	.field  	116,32		; _MASTER_UNITS_STR[1090] @ 34880
	.field  	47,32		; _MASTER_UNITS_STR[1091] @ 34912
	.field  	100,32		; _MASTER_UNITS_STR[1092] @ 34944
	.field  	121,32		; _MASTER_UNITS_STR[1093] @ 34976
	.field  	0,32		; _MASTER_UNITS_STR[1094] @ 35008
	.field  	0,32		; _MASTER_UNITS_STR[1095] @ 35040
	.field  	0,32		; _MASTER_UNITS_STR[1096] @ 35072
	.field  	0,32		; _MASTER_UNITS_STR[1097] @ 35104
	.field  	80,32		; _MASTER_UNITS_STR[1098] @ 35136
	.field  	108,32		; _MASTER_UNITS_STR[1099] @ 35168
	.field  	98,32		; _MASTER_UNITS_STR[1100] @ 35200
	.field  	115,32		; _MASTER_UNITS_STR[1101] @ 35232
	.field  	47,32		; _MASTER_UNITS_STR[1102] @ 35264
	.field  	115,32		; _MASTER_UNITS_STR[1103] @ 35296
	.field  	0,32		; _MASTER_UNITS_STR[1104] @ 35328
	.field  	0,32		; _MASTER_UNITS_STR[1105] @ 35360
	.field  	0,32		; _MASTER_UNITS_STR[1106] @ 35392
	.field  	81,32		; _MASTER_UNITS_STR[1107] @ 35424
	.field  	108,32		; _MASTER_UNITS_STR[1108] @ 35456
	.field  	98,32		; _MASTER_UNITS_STR[1109] @ 35488
	.field  	115,32		; _MASTER_UNITS_STR[1110] @ 35520
	.field  	47,32		; _MASTER_UNITS_STR[1111] @ 35552
	.field  	109,32		; _MASTER_UNITS_STR[1112] @ 35584
	.field  	105,32		; _MASTER_UNITS_STR[1113] @ 35616
	.field  	110,32		; _MASTER_UNITS_STR[1114] @ 35648
	.field  	0,32		; _MASTER_UNITS_STR[1115] @ 35680
	.field  	82,32		; _MASTER_UNITS_STR[1116] @ 35712
	.field  	108,32		; _MASTER_UNITS_STR[1117] @ 35744
	.field  	98,32		; _MASTER_UNITS_STR[1118] @ 35776
	.field  	115,32		; _MASTER_UNITS_STR[1119] @ 35808
	.field  	47,32		; _MASTER_UNITS_STR[1120] @ 35840
	.field  	104,32		; _MASTER_UNITS_STR[1121] @ 35872
	.field  	114,32		; _MASTER_UNITS_STR[1122] @ 35904
	.field  	0,32		; _MASTER_UNITS_STR[1123] @ 35936
	.field  	0,32		; _MASTER_UNITS_STR[1124] @ 35968
	.field  	83,32		; _MASTER_UNITS_STR[1125] @ 36000
	.field  	108,32		; _MASTER_UNITS_STR[1126] @ 36032
	.field  	98,32		; _MASTER_UNITS_STR[1127] @ 36064
	.field  	115,32		; _MASTER_UNITS_STR[1128] @ 36096
	.field  	47,32		; _MASTER_UNITS_STR[1129] @ 36128
	.field  	100,32		; _MASTER_UNITS_STR[1130] @ 36160
	.field  	121,32		; _MASTER_UNITS_STR[1131] @ 36192
	.field  	0,32		; _MASTER_UNITS_STR[1132] @ 36224
	.field  	0,32		; _MASTER_UNITS_STR[1133] @ 36256
	.field  	84,32		; _MASTER_UNITS_STR[1134] @ 36288
	.field  	116,32		; _MASTER_UNITS_STR[1135] @ 36320
	.field  	115,32		; _MASTER_UNITS_STR[1136] @ 36352
	.field  	47,32		; _MASTER_UNITS_STR[1137] @ 36384
	.field  	109,32		; _MASTER_UNITS_STR[1138] @ 36416
	.field  	105,32		; _MASTER_UNITS_STR[1139] @ 36448
	.field  	110,32		; _MASTER_UNITS_STR[1140] @ 36480
	.field  	0,32		; _MASTER_UNITS_STR[1141] @ 36512
	.field  	0,32		; _MASTER_UNITS_STR[1142] @ 36544
	.field  	85,32		; _MASTER_UNITS_STR[1143] @ 36576
	.field  	116,32		; _MASTER_UNITS_STR[1144] @ 36608
	.field  	115,32		; _MASTER_UNITS_STR[1145] @ 36640
	.field  	47,32		; _MASTER_UNITS_STR[1146] @ 36672
	.field  	104,32		; _MASTER_UNITS_STR[1147] @ 36704
	.field  	114,32		; _MASTER_UNITS_STR[1148] @ 36736
	.field  	0,32		; _MASTER_UNITS_STR[1149] @ 36768
	.field  	0,32		; _MASTER_UNITS_STR[1150] @ 36800
	.field  	0,32		; _MASTER_UNITS_STR[1151] @ 36832
	.field  	86,32		; _MASTER_UNITS_STR[1152] @ 36864
	.field  	116,32		; _MASTER_UNITS_STR[1153] @ 36896
	.field  	115,32		; _MASTER_UNITS_STR[1154] @ 36928
	.field  	47,32		; _MASTER_UNITS_STR[1155] @ 36960
	.field  	100,32		; _MASTER_UNITS_STR[1156] @ 36992
	.field  	121,32		; _MASTER_UNITS_STR[1157] @ 37024
	.field  	0,32		; _MASTER_UNITS_STR[1158] @ 37056
	.field  	0,32		; _MASTER_UNITS_STR[1159] @ 37088
	.field  	0,32		; _MASTER_UNITS_STR[1160] @ 37120
	.field  	87,32		; _MASTER_UNITS_STR[1161] @ 37152
	.field  	116,32		; _MASTER_UNITS_STR[1162] @ 37184
	.field  	108,32		; _MASTER_UNITS_STR[1163] @ 37216
	.field  	47,32		; _MASTER_UNITS_STR[1164] @ 37248
	.field  	104,32		; _MASTER_UNITS_STR[1165] @ 37280
	.field  	114,32		; _MASTER_UNITS_STR[1166] @ 37312
	.field  	0,32		; _MASTER_UNITS_STR[1167] @ 37344
	.field  	0,32		; _MASTER_UNITS_STR[1168] @ 37376
	.field  	0,32		; _MASTER_UNITS_STR[1169] @ 37408
	.field  	88,32		; _MASTER_UNITS_STR[1170] @ 37440
	.field  	116,32		; _MASTER_UNITS_STR[1171] @ 37472
	.field  	108,32		; _MASTER_UNITS_STR[1172] @ 37504
	.field  	47,32		; _MASTER_UNITS_STR[1173] @ 37536
	.field  	100,32		; _MASTER_UNITS_STR[1174] @ 37568
	.field  	121,32		; _MASTER_UNITS_STR[1175] @ 37600
	.field  	0,32		; _MASTER_UNITS_STR[1176] @ 37632
	.field  	0,32		; _MASTER_UNITS_STR[1177] @ 37664
	.field  	0,32		; _MASTER_UNITS_STR[1178] @ 37696
	.field  	329,32		; _MASTER_UNITS_STR[1179] @ 37728
	.field  	77,32		; _MASTER_UNITS_STR[1180] @ 37760
	.field  	80,32		; _MASTER_UNITS_STR[1181] @ 37792
	.field  	86,32		; _MASTER_UNITS_STR[1182] @ 37824
	.field  	0,32		; _MASTER_UNITS_STR[1183] @ 37856
	.field  	0,32		; _MASTER_UNITS_STR[1184] @ 37888
	.field  	0,32		; _MASTER_UNITS_STR[1185] @ 37920
	.field  	0,32		; _MASTER_UNITS_STR[1186] @ 37952
	.field  	0,32		; _MASTER_UNITS_STR[1187] @ 37984
	.field  	92,32		; _MASTER_UNITS_STR[1188] @ 38016
	.field  	107,32		; _MASTER_UNITS_STR[1189] @ 38048
	.field  	103,32		; _MASTER_UNITS_STR[1190] @ 38080
	.field  	47,32		; _MASTER_UNITS_STR[1191] @ 38112
	.field  	109,32		; _MASTER_UNITS_STR[1192] @ 38144
	.field  	51,32		; _MASTER_UNITS_STR[1193] @ 38176
	.field  	0,32		; _MASTER_UNITS_STR[1194] @ 38208
	.field  	0,32		; _MASTER_UNITS_STR[1195] @ 38240
	.field  	0,32		; _MASTER_UNITS_STR[1196] @ 38272
	.field  	107,32		; _MASTER_UNITS_STR[1197] @ 38304
	.field  	107,32		; _MASTER_UNITS_STR[1198] @ 38336
	.field  	103,32		; _MASTER_UNITS_STR[1199] @ 38368
	.field  	47,32		; _MASTER_UNITS_STR[1200] @ 38400
	.field  	109,32		; _MASTER_UNITS_STR[1201] @ 38432
	.field  	51,32		; _MASTER_UNITS_STR[1202] @ 38464
	.field  	49,32		; _MASTER_UNITS_STR[1203] @ 38496
	.field  	53,32		; _MASTER_UNITS_STR[1204] @ 38528
	.field  	0,32		; _MASTER_UNITS_STR[1205] @ 38560
	.field  	108,32		; _MASTER_UNITS_STR[1206] @ 38592
	.field  	107,32		; _MASTER_UNITS_STR[1207] @ 38624
	.field  	103,32		; _MASTER_UNITS_STR[1208] @ 38656
	.field  	47,32		; _MASTER_UNITS_STR[1209] @ 38688
	.field  	109,32		; _MASTER_UNITS_STR[1210] @ 38720
	.field  	51,32		; _MASTER_UNITS_STR[1211] @ 38752
	.field  	54,32		; _MASTER_UNITS_STR[1212] @ 38784
	.field  	48,32		; _MASTER_UNITS_STR[1213] @ 38816
	.field  	0,32		; _MASTER_UNITS_STR[1214] @ 38848
	.field  	104,32		; _MASTER_UNITS_STR[1215] @ 38880
	.field  	223,32		; _MASTER_UNITS_STR[1216] @ 38912
	.field  	65,32		; _MASTER_UNITS_STR[1217] @ 38944
	.field  	80,32		; _MASTER_UNITS_STR[1218] @ 38976
	.field  	73,32		; _MASTER_UNITS_STR[1219] @ 39008
	.field  	0,32		; _MASTER_UNITS_STR[1220] @ 39040
	.field  	0,32		; _MASTER_UNITS_STR[1221] @ 39072
	.field  	0,32		; _MASTER_UNITS_STR[1222] @ 39104
	.field  	0,32		; _MASTER_UNITS_STR[1223] @ 39136
	.field  	105,32		; _MASTER_UNITS_STR[1224] @ 39168
	.field  	223,32		; _MASTER_UNITS_STR[1225] @ 39200
	.field  	65,32		; _MASTER_UNITS_STR[1226] @ 39232
	.field  	80,32		; _MASTER_UNITS_STR[1227] @ 39264
	.field  	73,32		; _MASTER_UNITS_STR[1228] @ 39296
	.field  	54,32		; _MASTER_UNITS_STR[1229] @ 39328
	.field  	48,32		; _MASTER_UNITS_STR[1230] @ 39360
	.field  	70,32		; _MASTER_UNITS_STR[1231] @ 39392
	.field  	0,32		; _MASTER_UNITS_STR[1232] @ 39424
	.field  	106,32		; _MASTER_UNITS_STR[1233] @ 39456
	.field  	223,32		; _MASTER_UNITS_STR[1234] @ 39488
	.field  	65,32		; _MASTER_UNITS_STR[1235] @ 39520
	.field  	80,32		; _MASTER_UNITS_STR[1236] @ 39552
	.field  	73,32		; _MASTER_UNITS_STR[1237] @ 39584
	.field  	49,32		; _MASTER_UNITS_STR[1238] @ 39616
	.field  	53,32		; _MASTER_UNITS_STR[1239] @ 39648
	.field  	67,32		; _MASTER_UNITS_STR[1240] @ 39680
	.field  	0,32		; _MASTER_UNITS_STR[1241] @ 39712
	.field  	90,32		; _MASTER_UNITS_STR[1242] @ 39744
	.field  	115,32		; _MASTER_UNITS_STR[1243] @ 39776
	.field  	103,32		; _MASTER_UNITS_STR[1244] @ 39808
	.field  	0,32		; _MASTER_UNITS_STR[1245] @ 39840
	.field  	0,32		; _MASTER_UNITS_STR[1246] @ 39872
	.field  	0,32		; _MASTER_UNITS_STR[1247] @ 39904
	.field  	0,32		; _MASTER_UNITS_STR[1248] @ 39936
	.field  	0,32		; _MASTER_UNITS_STR[1249] @ 39968
	.field  	0,32		; _MASTER_UNITS_STR[1250] @ 40000
	.field  	110,32		; _MASTER_UNITS_STR[1251] @ 40032
	.field  	115,32		; _MASTER_UNITS_STR[1252] @ 40064
	.field  	103,32		; _MASTER_UNITS_STR[1253] @ 40096
	.field  	49,32		; _MASTER_UNITS_STR[1254] @ 40128
	.field  	53,32		; _MASTER_UNITS_STR[1255] @ 40160
	.field  	67,32		; _MASTER_UNITS_STR[1256] @ 40192
	.field  	0,32		; _MASTER_UNITS_STR[1257] @ 40224
	.field  	0,32		; _MASTER_UNITS_STR[1258] @ 40256
	.field  	0,32		; _MASTER_UNITS_STR[1259] @ 40288
	.field  	109,32		; _MASTER_UNITS_STR[1260] @ 40320
	.field  	115,32		; _MASTER_UNITS_STR[1261] @ 40352
	.field  	103,32		; _MASTER_UNITS_STR[1262] @ 40384
	.field  	54,32		; _MASTER_UNITS_STR[1263] @ 40416
	.field  	48,32		; _MASTER_UNITS_STR[1264] @ 40448
	.field  	70,32		; _MASTER_UNITS_STR[1265] @ 40480
	.field  	0,32		; _MASTER_UNITS_STR[1266] @ 40512
	.field  	0,32		; _MASTER_UNITS_STR[1267] @ 40544
	.field  	0,32		; _MASTER_UNITS_STR[1268] @ 40576
	.field  	91,32		; _MASTER_UNITS_STR[1269] @ 40608
	.field  	103,32		; _MASTER_UNITS_STR[1270] @ 40640
	.field  	47,32		; _MASTER_UNITS_STR[1271] @ 40672
	.field  	99,32		; _MASTER_UNITS_STR[1272] @ 40704
	.field  	99,32		; _MASTER_UNITS_STR[1273] @ 40736
	.field  	0,32		; _MASTER_UNITS_STR[1274] @ 40768
	.field  	0,32		; _MASTER_UNITS_STR[1275] @ 40800
	.field  	0,32		; _MASTER_UNITS_STR[1276] @ 40832
	.field  	0,32		; _MASTER_UNITS_STR[1277] @ 40864
	.field  	95,32		; _MASTER_UNITS_STR[1278] @ 40896
	.field  	103,32		; _MASTER_UNITS_STR[1279] @ 40928
	.field  	47,32		; _MASTER_UNITS_STR[1280] @ 40960
	.field  	109,32		; _MASTER_UNITS_STR[1281] @ 40992
	.field  	76,32		; _MASTER_UNITS_STR[1282] @ 41024
	.field  	0,32		; _MASTER_UNITS_STR[1283] @ 41056
	.field  	0,32		; _MASTER_UNITS_STR[1284] @ 41088
	.field  	0,32		; _MASTER_UNITS_STR[1285] @ 41120
	.field  	0,32		; _MASTER_UNITS_STR[1286] @ 41152
	.field  	97,32		; _MASTER_UNITS_STR[1287] @ 41184
	.field  	103,32		; _MASTER_UNITS_STR[1288] @ 41216
	.field  	47,32		; _MASTER_UNITS_STR[1289] @ 41248
	.field  	76,32		; _MASTER_UNITS_STR[1290] @ 41280
	.field  	0,32		; _MASTER_UNITS_STR[1291] @ 41312
	.field  	0,32		; _MASTER_UNITS_STR[1292] @ 41344
	.field  	0,32		; _MASTER_UNITS_STR[1293] @ 41376
	.field  	0,32		; _MASTER_UNITS_STR[1294] @ 41408
	.field  	0,32		; _MASTER_UNITS_STR[1295] @ 41440
	.field  	96,32		; _MASTER_UNITS_STR[1296] @ 41472
	.field  	107,32		; _MASTER_UNITS_STR[1297] @ 41504
	.field  	103,32		; _MASTER_UNITS_STR[1298] @ 41536
	.field  	47,32		; _MASTER_UNITS_STR[1299] @ 41568
	.field  	76,32		; _MASTER_UNITS_STR[1300] @ 41600
	.field  	0,32		; _MASTER_UNITS_STR[1301] @ 41632
	.field  	0,32		; _MASTER_UNITS_STR[1302] @ 41664
	.field  	0,32		; _MASTER_UNITS_STR[1303] @ 41696
	.field  	0,32		; _MASTER_UNITS_STR[1304] @ 41728
	.field  	93,32		; _MASTER_UNITS_STR[1305] @ 41760
	.field  	108,32		; _MASTER_UNITS_STR[1306] @ 41792
	.field  	98,32		; _MASTER_UNITS_STR[1307] @ 41824
	.field  	115,32		; _MASTER_UNITS_STR[1308] @ 41856
	.field  	47,32		; _MASTER_UNITS_STR[1309] @ 41888
	.field  	103,32		; _MASTER_UNITS_STR[1310] @ 41920
	.field  	97,32		; _MASTER_UNITS_STR[1311] @ 41952
	.field  	108,32		; _MASTER_UNITS_STR[1312] @ 41984
	.field  	0,32		; _MASTER_UNITS_STR[1313] @ 42016
	.field  	94,32		; _MASTER_UNITS_STR[1314] @ 42048
	.field  	108,32		; _MASTER_UNITS_STR[1315] @ 42080
	.field  	98,32		; _MASTER_UNITS_STR[1316] @ 42112
	.field  	115,32		; _MASTER_UNITS_STR[1317] @ 42144
	.field  	47,32		; _MASTER_UNITS_STR[1318] @ 42176
	.field  	99,32		; _MASTER_UNITS_STR[1319] @ 42208
	.field  	102,32		; _MASTER_UNITS_STR[1320] @ 42240
	.field  	0,32		; _MASTER_UNITS_STR[1321] @ 42272
	.field  	0,32		; _MASTER_UNITS_STR[1322] @ 42304
	.field  	98,32		; _MASTER_UNITS_STR[1323] @ 42336
	.field  	108,32		; _MASTER_UNITS_STR[1324] @ 42368
	.field  	98,32		; _MASTER_UNITS_STR[1325] @ 42400
	.field  	115,32		; _MASTER_UNITS_STR[1326] @ 42432
	.field  	47,32		; _MASTER_UNITS_STR[1327] @ 42464
	.field  	105,32		; _MASTER_UNITS_STR[1328] @ 42496
	.field  	110,32		; _MASTER_UNITS_STR[1329] @ 42528
	.field  	51,32		; _MASTER_UNITS_STR[1330] @ 42560
	.field  	0,32		; _MASTER_UNITS_STR[1331] @ 42592
	.field  	99,32		; _MASTER_UNITS_STR[1332] @ 42624
	.field  	116,32		; _MASTER_UNITS_STR[1333] @ 42656
	.field  	115,32		; _MASTER_UNITS_STR[1334] @ 42688
	.field  	47,32		; _MASTER_UNITS_STR[1335] @ 42720
	.field  	121,32		; _MASTER_UNITS_STR[1336] @ 42752
	.field  	100,32		; _MASTER_UNITS_STR[1337] @ 42784
	.field  	51,32		; _MASTER_UNITS_STR[1338] @ 42816
	.field  	0,32		; _MASTER_UNITS_STR[1339] @ 42848
	.field  	0,32		; _MASTER_UNITS_STR[1340] @ 42880
	.field  	326,32		; _MASTER_UNITS_STR[1341] @ 42912
	.field  	84,32		; _MASTER_UNITS_STR[1342] @ 42944
	.field  	73,32		; _MASTER_UNITS_STR[1343] @ 42976
	.field  	77,32		; _MASTER_UNITS_STR[1344] @ 43008
	.field  	69,32		; _MASTER_UNITS_STR[1345] @ 43040
	.field  	0,32		; _MASTER_UNITS_STR[1346] @ 43072
	.field  	0,32		; _MASTER_UNITS_STR[1347] @ 43104
	.field  	0,32		; _MASTER_UNITS_STR[1348] @ 43136
	.field  	0,32		; _MASTER_UNITS_STR[1349] @ 43168
	.field  	51,32		; _MASTER_UNITS_STR[1350] @ 43200
	.field  	115,32		; _MASTER_UNITS_STR[1351] @ 43232
	.field  	0,32		; _MASTER_UNITS_STR[1352] @ 43264
	.field  	0,32		; _MASTER_UNITS_STR[1353] @ 43296
	.field  	0,32		; _MASTER_UNITS_STR[1354] @ 43328
	.field  	0,32		; _MASTER_UNITS_STR[1355] @ 43360
	.field  	0,32		; _MASTER_UNITS_STR[1356] @ 43392
	.field  	0,32		; _MASTER_UNITS_STR[1357] @ 43424
	.field  	0,32		; _MASTER_UNITS_STR[1358] @ 43456
	.field  	50,32		; _MASTER_UNITS_STR[1359] @ 43488
	.field  	109,32		; _MASTER_UNITS_STR[1360] @ 43520
	.field  	105,32		; _MASTER_UNITS_STR[1361] @ 43552
	.field  	110,32		; _MASTER_UNITS_STR[1362] @ 43584
	.field  	0,32		; _MASTER_UNITS_STR[1363] @ 43616
	.field  	0,32		; _MASTER_UNITS_STR[1364] @ 43648
	.field  	0,32		; _MASTER_UNITS_STR[1365] @ 43680
	.field  	0,32		; _MASTER_UNITS_STR[1366] @ 43712
	.field  	0,32		; _MASTER_UNITS_STR[1367] @ 43744
	.field  	52,32		; _MASTER_UNITS_STR[1368] @ 43776
	.field  	104,32		; _MASTER_UNITS_STR[1369] @ 43808
	.field  	114,32		; _MASTER_UNITS_STR[1370] @ 43840
	.field  	0,32		; _MASTER_UNITS_STR[1371] @ 43872
	.field  	0,32		; _MASTER_UNITS_STR[1372] @ 43904
	.field  	0,32		; _MASTER_UNITS_STR[1373] @ 43936
	.field  	0,32		; _MASTER_UNITS_STR[1374] @ 43968
	.field  	0,32		; _MASTER_UNITS_STR[1375] @ 44000
	.field  	0,32		; _MASTER_UNITS_STR[1376] @ 44032
	.field  	53,32		; _MASTER_UNITS_STR[1377] @ 44064
	.field  	100,32		; _MASTER_UNITS_STR[1378] @ 44096
	.field  	121,32		; _MASTER_UNITS_STR[1379] @ 44128
	.field  	0,32		; _MASTER_UNITS_STR[1380] @ 44160
	.field  	0,32		; _MASTER_UNITS_STR[1381] @ 44192
	.field  	0,32		; _MASTER_UNITS_STR[1382] @ 44224
	.field  	0,32		; _MASTER_UNITS_STR[1383] @ 44256
	.field  	0,32		; _MASTER_UNITS_STR[1384] @ 44288
	.field  	0,32		; _MASTER_UNITS_STR[1385] @ 44320
	.field  	243,32		; _MASTER_UNITS_STR[1386] @ 44352
	.field  	99,32		; _MASTER_UNITS_STR[1387] @ 44384
	.field  	116,32		; _MASTER_UNITS_STR[1388] @ 44416
	.field  	0,32		; _MASTER_UNITS_STR[1389] @ 44448
	.field  	0,32		; _MASTER_UNITS_STR[1390] @ 44480
	.field  	0,32		; _MASTER_UNITS_STR[1391] @ 44512
	.field  	0,32		; _MASTER_UNITS_STR[1392] @ 44544
	.field  	0,32		; _MASTER_UNITS_STR[1393] @ 44576
	.field  	0,32		; _MASTER_UNITS_STR[1394] @ 44608
	.field  	256,32		; _MASTER_UNITS_STR[1395] @ 44640
	.field  	77,32		; _MASTER_UNITS_STR[1396] @ 44672
	.field  	73,32		; _MASTER_UNITS_STR[1397] @ 44704
	.field  	83,32		; _MASTER_UNITS_STR[1398] @ 44736
	.field  	67,32		; _MASTER_UNITS_STR[1399] @ 44768
	.field  	0,32		; _MASTER_UNITS_STR[1400] @ 44800
	.field  	0,32		; _MASTER_UNITS_STR[1401] @ 44832
	.field  	0,32		; _MASTER_UNITS_STR[1402] @ 44864
	.field  	0,32		; _MASTER_UNITS_STR[1403] @ 44896
	.field  	57,32		; _MASTER_UNITS_STR[1404] @ 44928
	.field  	37,32		; _MASTER_UNITS_STR[1405] @ 44960
	.field  	0,32		; _MASTER_UNITS_STR[1406] @ 44992
	.field  	0,32		; _MASTER_UNITS_STR[1407] @ 45024
	.field  	0,32		; _MASTER_UNITS_STR[1408] @ 45056
	.field  	0,32		; _MASTER_UNITS_STR[1409] @ 45088
	.field  	0,32		; _MASTER_UNITS_STR[1410] @ 45120
	.field  	0,32		; _MASTER_UNITS_STR[1411] @ 45152
	.field  	0,32		; _MASTER_UNITS_STR[1412] @ 45184
	.field  	242,32		; _MASTER_UNITS_STR[1413] @ 45216
	.field  	98,32		; _MASTER_UNITS_STR[1414] @ 45248
	.field  	112,32		; _MASTER_UNITS_STR[1415] @ 45280
	.field  	115,32		; _MASTER_UNITS_STR[1416] @ 45312
	.field  	0,32		; _MASTER_UNITS_STR[1417] @ 45344
	.field  	0,32		; _MASTER_UNITS_STR[1418] @ 45376
	.field  	0,32		; _MASTER_UNITS_STR[1419] @ 45408
	.field  	0,32		; _MASTER_UNITS_STR[1420] @ 45440
	.field  	0,32		; _MASTER_UNITS_STR[1421] @ 45472
	.field  	245,32		; _MASTER_UNITS_STR[1422] @ 45504
	.field  	86,32		; _MASTER_UNITS_STR[1423] @ 45536
	.field  	47,32		; _MASTER_UNITS_STR[1424] @ 45568
	.field  	77,32		; _MASTER_UNITS_STR[1425] @ 45600
	.field  	72,32		; _MASTER_UNITS_STR[1426] @ 45632
	.field  	122,32		; _MASTER_UNITS_STR[1427] @ 45664
	.field  	0,32		; _MASTER_UNITS_STR[1428] @ 45696
	.field  	0,32		; _MASTER_UNITS_STR[1429] @ 45728
	.field  	0,32		; _MASTER_UNITS_STR[1430] @ 45760
	.field  	507,32		; _MASTER_UNITS_STR[1431] @ 45792
	.field  	0,32		; _MASTER_UNITS_STR[1432] @ 45824
	.field  	0,32		; _MASTER_UNITS_STR[1433] @ 45856
	.field  	0,32		; _MASTER_UNITS_STR[1434] @ 45888
	.field  	0,32		; _MASTER_UNITS_STR[1435] @ 45920
	.field  	0,32		; _MASTER_UNITS_STR[1436] @ 45952
	.field  	0,32		; _MASTER_UNITS_STR[1437] @ 45984
	.field  	0,32		; _MASTER_UNITS_STR[1438] @ 46016
	.field  	0,32		; _MASTER_UNITS_STR[1439] @ 46048

	.sect	".text"

	.global	_MASTER_UNITS_STR
	.sym	_MASTER_UNITS_STR,_MASTER_UNITS_STR,52,2,46080,,1440

	.sect	"TABLES"
_MASTER_UNITS_STR_R:
	.field  	324,32		; _MASTER_UNITS_STR_R[0] @ 0
	.field  	79,32		; _MASTER_UNITS_STR_R[1] @ 32
	.field  	160,32		; _MASTER_UNITS_STR_R[2] @ 64
	.field  	98,32		; _MASTER_UNITS_STR_R[3] @ 96
	.field  	69,32		; _MASTER_UNITS_STR_R[4] @ 128
	.field  	77,32		; _MASTER_UNITS_STR_R[5] @ 160
	.field  	0,32		; _MASTER_UNITS_STR_R[6] @ 192
	.field  	0,32		; _MASTER_UNITS_STR_R[7] @ 224
	.field  	0,32		; _MASTER_UNITS_STR_R[8] @ 256
	.field  	46,32		; _MASTER_UNITS_STR_R[9] @ 288
	.field  	98,32		; _MASTER_UNITS_STR_R[10] @ 320
	.field  	98,32		; _MASTER_UNITS_STR_R[11] @ 352
	.field  	108,32		; _MASTER_UNITS_STR_R[12] @ 384
	.field  	0,32		; _MASTER_UNITS_STR_R[13] @ 416
	.field  	0,32		; _MASTER_UNITS_STR_R[14] @ 448
	.field  	0,32		; _MASTER_UNITS_STR_R[15] @ 480
	.field  	0,32		; _MASTER_UNITS_STR_R[16] @ 512
	.field  	0,32		; _MASTER_UNITS_STR_R[17] @ 544
	.field  	41,32		; _MASTER_UNITS_STR_R[18] @ 576
	.field  	187,32		; _MASTER_UNITS_STR_R[19] @ 608
	.field  	0,32		; _MASTER_UNITS_STR_R[20] @ 640
	.field  	0,32		; _MASTER_UNITS_STR_R[21] @ 672
	.field  	0,32		; _MASTER_UNITS_STR_R[22] @ 704
	.field  	0,32		; _MASTER_UNITS_STR_R[23] @ 736
	.field  	0,32		; _MASTER_UNITS_STR_R[24] @ 768
	.field  	0,32		; _MASTER_UNITS_STR_R[25] @ 800
	.field  	0,32		; _MASTER_UNITS_STR_R[26] @ 832
	.field  	43,32		; _MASTER_UNITS_STR_R[27] @ 864
	.field  	188,32		; _MASTER_UNITS_STR_R[28] @ 896
	.field  	51,32		; _MASTER_UNITS_STR_R[29] @ 928
	.field  	0,32		; _MASTER_UNITS_STR_R[30] @ 960
	.field  	0,32		; _MASTER_UNITS_STR_R[31] @ 992
	.field  	0,32		; _MASTER_UNITS_STR_R[32] @ 1024
	.field  	0,32		; _MASTER_UNITS_STR_R[33] @ 1056
	.field  	0,32		; _MASTER_UNITS_STR_R[34] @ 1088
	.field  	0,32		; _MASTER_UNITS_STR_R[35] @ 1120
	.field  	166,32		; _MASTER_UNITS_STR_R[36] @ 1152
	.field  	72,32		; _MASTER_UNITS_STR_R[37] @ 1184
	.field  	188,32		; _MASTER_UNITS_STR_R[38] @ 1216
	.field  	51,32		; _MASTER_UNITS_STR_R[39] @ 1248
	.field  	0,32		; _MASTER_UNITS_STR_R[40] @ 1280
	.field  	0,32		; _MASTER_UNITS_STR_R[41] @ 1312
	.field  	0,32		; _MASTER_UNITS_STR_R[42] @ 1344
	.field  	0,32		; _MASTER_UNITS_STR_R[43] @ 1376
	.field  	0,32		; _MASTER_UNITS_STR_R[44] @ 1408
	.field  	167,32		; _MASTER_UNITS_STR_R[45] @ 1440
	.field  	72,32		; _MASTER_UNITS_STR_R[46] @ 1472
	.field  	187,32		; _MASTER_UNITS_STR_R[47] @ 1504
	.field  	0,32		; _MASTER_UNITS_STR_R[48] @ 1536
	.field  	0,32		; _MASTER_UNITS_STR_R[49] @ 1568
	.field  	0,32		; _MASTER_UNITS_STR_R[50] @ 1600
	.field  	0,32		; _MASTER_UNITS_STR_R[51] @ 1632
	.field  	0,32		; _MASTER_UNITS_STR_R[52] @ 1664
	.field  	0,32		; _MASTER_UNITS_STR_R[53] @ 1696
	.field  	236,32		; _MASTER_UNITS_STR_R[54] @ 1728
	.field  	180,32		; _MASTER_UNITS_STR_R[55] @ 1760
	.field  	187,32		; _MASTER_UNITS_STR_R[56] @ 1792
	.field  	0,32		; _MASTER_UNITS_STR_R[57] @ 1824
	.field  	0,32		; _MASTER_UNITS_STR_R[58] @ 1856
	.field  	0,32		; _MASTER_UNITS_STR_R[59] @ 1888
	.field  	0,32		; _MASTER_UNITS_STR_R[60] @ 1920
	.field  	0,32		; _MASTER_UNITS_STR_R[61] @ 1952
	.field  	0,32		; _MASTER_UNITS_STR_R[62] @ 1984
	.field  	322,32		; _MASTER_UNITS_STR_R[63] @ 2016
	.field  	79,32		; _MASTER_UNITS_STR_R[64] @ 2048
	.field  	80,32		; _MASTER_UNITS_STR_R[65] @ 2080
	.field  	0,32		; _MASTER_UNITS_STR_R[66] @ 2112
	.field  	0,32		; _MASTER_UNITS_STR_R[67] @ 2144
	.field  	0,32		; _MASTER_UNITS_STR_R[68] @ 2176
	.field  	0,32		; _MASTER_UNITS_STR_R[69] @ 2208
	.field  	0,32		; _MASTER_UNITS_STR_R[70] @ 2240
	.field  	0,32		; _MASTER_UNITS_STR_R[71] @ 2272
	.field  	135,32		; _MASTER_UNITS_STR_R[72] @ 2304
	.field  	98,32		; _MASTER_UNITS_STR_R[73] @ 2336
	.field  	98,32		; _MASTER_UNITS_STR_R[74] @ 2368
	.field  	108,32		; _MASTER_UNITS_STR_R[75] @ 2400
	.field  	47,32		; _MASTER_UNITS_STR_R[76] @ 2432
	.field  	99,32		; _MASTER_UNITS_STR_R[77] @ 2464
	.field  	121,32		; _MASTER_UNITS_STR_R[78] @ 2496
	.field  	191,32		; _MASTER_UNITS_STR_R[79] @ 2528
	.field  	0,32		; _MASTER_UNITS_STR_R[80] @ 2560
	.field  	25,32		; _MASTER_UNITS_STR_R[81] @ 2592
	.field  	77,32		; _MASTER_UNITS_STR_R[82] @ 2624
	.field  	187,32		; _MASTER_UNITS_STR_R[83] @ 2656
	.field  	47,32		; _MASTER_UNITS_STR_R[84] @ 2688
	.field  	99,32		; _MASTER_UNITS_STR_R[85] @ 2720
	.field  	121,32		; _MASTER_UNITS_STR_R[86] @ 2752
	.field  	191,32		; _MASTER_UNITS_STR_R[87] @ 2784
	.field  	0,32		; _MASTER_UNITS_STR_R[88] @ 2816
	.field  	0,32		; _MASTER_UNITS_STR_R[89] @ 2848
	.field  	29,32		; _MASTER_UNITS_STR_R[90] @ 2880
	.field  	188,32		; _MASTER_UNITS_STR_R[91] @ 2912
	.field  	51,32		; _MASTER_UNITS_STR_R[92] @ 2944
	.field  	47,32		; _MASTER_UNITS_STR_R[93] @ 2976
	.field  	99,32		; _MASTER_UNITS_STR_R[94] @ 3008
	.field  	121,32		; _MASTER_UNITS_STR_R[95] @ 3040
	.field  	191,32		; _MASTER_UNITS_STR_R[96] @ 3072
	.field  	0,32		; _MASTER_UNITS_STR_R[97] @ 3104
	.field  	0,32		; _MASTER_UNITS_STR_R[98] @ 3136
	.field  	131,32		; _MASTER_UNITS_STR_R[99] @ 3168
	.field  	188,32		; _MASTER_UNITS_STR_R[100] @ 3200
	.field  	51,32		; _MASTER_UNITS_STR_R[101] @ 3232
	.field  	47,32		; _MASTER_UNITS_STR_R[102] @ 3264
	.field  	188,32		; _MASTER_UNITS_STR_R[103] @ 3296
	.field  	184,32		; _MASTER_UNITS_STR_R[104] @ 3328
	.field  	189,32		; _MASTER_UNITS_STR_R[105] @ 3360
	.field  	0,32		; _MASTER_UNITS_STR_R[106] @ 3392
	.field  	0,32		; _MASTER_UNITS_STR_R[107] @ 3424
	.field  	17,32		; _MASTER_UNITS_STR_R[108] @ 3456
	.field  	187,32		; _MASTER_UNITS_STR_R[109] @ 3488
	.field  	47,32		; _MASTER_UNITS_STR_R[110] @ 3520
	.field  	188,32		; _MASTER_UNITS_STR_R[111] @ 3552
	.field  	184,32		; _MASTER_UNITS_STR_R[112] @ 3584
	.field  	189,32		; _MASTER_UNITS_STR_R[113] @ 3616
	.field  	0,32		; _MASTER_UNITS_STR_R[114] @ 3648
	.field  	0,32		; _MASTER_UNITS_STR_R[115] @ 3680
	.field  	0,32		; _MASTER_UNITS_STR_R[116] @ 3712
	.field  	19,32		; _MASTER_UNITS_STR_R[117] @ 3744
	.field  	188,32		; _MASTER_UNITS_STR_R[118] @ 3776
	.field  	51,32		; _MASTER_UNITS_STR_R[119] @ 3808
	.field  	47,32		; _MASTER_UNITS_STR_R[120] @ 3840
	.field  	192,32		; _MASTER_UNITS_STR_R[121] @ 3872
	.field  	97,32		; _MASTER_UNITS_STR_R[122] @ 3904
	.field  	99,32		; _MASTER_UNITS_STR_R[123] @ 3936
	.field  	0,32		; _MASTER_UNITS_STR_R[124] @ 3968
	.field  	0,32		; _MASTER_UNITS_STR_R[125] @ 4000
	.field  	121,32		; _MASTER_UNITS_STR_R[126] @ 4032
	.field  	72,32		; _MASTER_UNITS_STR_R[127] @ 4064
	.field  	188,32		; _MASTER_UNITS_STR_R[128] @ 4096
	.field  	51,32		; _MASTER_UNITS_STR_R[129] @ 4128
	.field  	47,32		; _MASTER_UNITS_STR_R[130] @ 4160
	.field  	192,32		; _MASTER_UNITS_STR_R[131] @ 4192
	.field  	0,32		; _MASTER_UNITS_STR_R[132] @ 4224
	.field  	0,32		; _MASTER_UNITS_STR_R[133] @ 4256
	.field  	0,32		; _MASTER_UNITS_STR_R[134] @ 4288
	.field  	190,32		; _MASTER_UNITS_STR_R[135] @ 4320
	.field  	72,32		; _MASTER_UNITS_STR_R[136] @ 4352
	.field  	188,32		; _MASTER_UNITS_STR_R[137] @ 4384
	.field  	51,32		; _MASTER_UNITS_STR_R[138] @ 4416
	.field  	47,32		; _MASTER_UNITS_STR_R[139] @ 4448
	.field  	99,32		; _MASTER_UNITS_STR_R[140] @ 4480
	.field  	0,32		; _MASTER_UNITS_STR_R[141] @ 4512
	.field  	0,32		; _MASTER_UNITS_STR_R[142] @ 4544
	.field  	0,32		; _MASTER_UNITS_STR_R[143] @ 4576
	.field  	191,32		; _MASTER_UNITS_STR_R[144] @ 4608
	.field  	72,32		; _MASTER_UNITS_STR_R[145] @ 4640
	.field  	188,32		; _MASTER_UNITS_STR_R[146] @ 4672
	.field  	51,32		; _MASTER_UNITS_STR_R[147] @ 4704
	.field  	47,32		; _MASTER_UNITS_STR_R[148] @ 4736
	.field  	99,32		; _MASTER_UNITS_STR_R[149] @ 4768
	.field  	121,32		; _MASTER_UNITS_STR_R[150] @ 4800
	.field  	191,32		; _MASTER_UNITS_STR_R[151] @ 4832
	.field  	0,32		; _MASTER_UNITS_STR_R[152] @ 4864
	.field  	122,32		; _MASTER_UNITS_STR_R[153] @ 4896
	.field  	72,32		; _MASTER_UNITS_STR_R[154] @ 4928
	.field  	187,32		; _MASTER_UNITS_STR_R[155] @ 4960
	.field  	47,32		; _MASTER_UNITS_STR_R[156] @ 4992
	.field  	192,32		; _MASTER_UNITS_STR_R[157] @ 5024
	.field  	0,32		; _MASTER_UNITS_STR_R[158] @ 5056
	.field  	0,32		; _MASTER_UNITS_STR_R[159] @ 5088
	.field  	0,32		; _MASTER_UNITS_STR_R[160] @ 5120
	.field  	0,32		; _MASTER_UNITS_STR_R[161] @ 5152
	.field  	138,32		; _MASTER_UNITS_STR_R[162] @ 5184
	.field  	187,32		; _MASTER_UNITS_STR_R[163] @ 5216
	.field  	47,32		; _MASTER_UNITS_STR_R[164] @ 5248
	.field  	192,32		; _MASTER_UNITS_STR_R[165] @ 5280
	.field  	0,32		; _MASTER_UNITS_STR_R[166] @ 5312
	.field  	0,32		; _MASTER_UNITS_STR_R[167] @ 5344
	.field  	0,32		; _MASTER_UNITS_STR_R[168] @ 5376
	.field  	0,32		; _MASTER_UNITS_STR_R[169] @ 5408
	.field  	0,32		; _MASTER_UNITS_STR_R[170] @ 5440
	.field  	24,32		; _MASTER_UNITS_STR_R[171] @ 5472
	.field  	187,32		; _MASTER_UNITS_STR_R[172] @ 5504
	.field  	47,32		; _MASTER_UNITS_STR_R[173] @ 5536
	.field  	99,32		; _MASTER_UNITS_STR_R[174] @ 5568
	.field  	0,32		; _MASTER_UNITS_STR_R[175] @ 5600
	.field  	0,32		; _MASTER_UNITS_STR_R[176] @ 5632
	.field  	0,32		; _MASTER_UNITS_STR_R[177] @ 5664
	.field  	0,32		; _MASTER_UNITS_STR_R[178] @ 5696
	.field  	0,32		; _MASTER_UNITS_STR_R[179] @ 5728
	.field  	28,32		; _MASTER_UNITS_STR_R[180] @ 5760
	.field  	188,32		; _MASTER_UNITS_STR_R[181] @ 5792
	.field  	51,32		; _MASTER_UNITS_STR_R[182] @ 5824
	.field  	47,32		; _MASTER_UNITS_STR_R[183] @ 5856
	.field  	99,32		; _MASTER_UNITS_STR_R[184] @ 5888
	.field  	0,32		; _MASTER_UNITS_STR_R[185] @ 5920
	.field  	0,32		; _MASTER_UNITS_STR_R[186] @ 5952
	.field  	0,32		; _MASTER_UNITS_STR_R[187] @ 5984
	.field  	0,32		; _MASTER_UNITS_STR_R[188] @ 6016
	.field  	320,32		; _MASTER_UNITS_STR_R[189] @ 6048
	.field  	84,32		; _MASTER_UNITS_STR_R[190] @ 6080
	.field  	69,32		; _MASTER_UNITS_STR_R[191] @ 6112
	.field  	77,32		; _MASTER_UNITS_STR_R[192] @ 6144
	.field  	168,32		; _MASTER_UNITS_STR_R[193] @ 6176
	.field  	0,32		; _MASTER_UNITS_STR_R[194] @ 6208
	.field  	0,32		; _MASTER_UNITS_STR_R[195] @ 6240
	.field  	0,32		; _MASTER_UNITS_STR_R[196] @ 6272
	.field  	0,32		; _MASTER_UNITS_STR_R[197] @ 6304
	.field  	32,32		; _MASTER_UNITS_STR_R[198] @ 6336
	.field  	223,32		; _MASTER_UNITS_STR_R[199] @ 6368
	.field  	67,32		; _MASTER_UNITS_STR_R[200] @ 6400
	.field  	0,32		; _MASTER_UNITS_STR_R[201] @ 6432
	.field  	0,32		; _MASTER_UNITS_STR_R[202] @ 6464
	.field  	0,32		; _MASTER_UNITS_STR_R[203] @ 6496
	.field  	0,32		; _MASTER_UNITS_STR_R[204] @ 6528
	.field  	0,32		; _MASTER_UNITS_STR_R[205] @ 6560
	.field  	0,32		; _MASTER_UNITS_STR_R[206] @ 6592
	.field  	33,32		; _MASTER_UNITS_STR_R[207] @ 6624
	.field  	223,32		; _MASTER_UNITS_STR_R[208] @ 6656
	.field  	70,32		; _MASTER_UNITS_STR_R[209] @ 6688
	.field  	0,32		; _MASTER_UNITS_STR_R[210] @ 6720
	.field  	0,32		; _MASTER_UNITS_STR_R[211] @ 6752
	.field  	0,32		; _MASTER_UNITS_STR_R[212] @ 6784
	.field  	0,32		; _MASTER_UNITS_STR_R[213] @ 6816
	.field  	0,32		; _MASTER_UNITS_STR_R[214] @ 6848
	.field  	0,32		; _MASTER_UNITS_STR_R[215] @ 6880
	.field  	34,32		; _MASTER_UNITS_STR_R[216] @ 6912
	.field  	223,32		; _MASTER_UNITS_STR_R[217] @ 6944
	.field  	82,32		; _MASTER_UNITS_STR_R[218] @ 6976
	.field  	0,32		; _MASTER_UNITS_STR_R[219] @ 7008
	.field  	0,32		; _MASTER_UNITS_STR_R[220] @ 7040
	.field  	0,32		; _MASTER_UNITS_STR_R[221] @ 7072
	.field  	0,32		; _MASTER_UNITS_STR_R[222] @ 7104
	.field  	0,32		; _MASTER_UNITS_STR_R[223] @ 7136
	.field  	0,32		; _MASTER_UNITS_STR_R[224] @ 7168
	.field  	35,32		; _MASTER_UNITS_STR_R[225] @ 7200
	.field  	75,32		; _MASTER_UNITS_STR_R[226] @ 7232
	.field  	0,32		; _MASTER_UNITS_STR_R[227] @ 7264
	.field  	0,32		; _MASTER_UNITS_STR_R[228] @ 7296
	.field  	0,32		; _MASTER_UNITS_STR_R[229] @ 7328
	.field  	0,32		; _MASTER_UNITS_STR_R[230] @ 7360
	.field  	0,32		; _MASTER_UNITS_STR_R[231] @ 7392
	.field  	0,32		; _MASTER_UNITS_STR_R[232] @ 7424
	.field  	0,32		; _MASTER_UNITS_STR_R[233] @ 7456
	.field  	346,32		; _MASTER_UNITS_STR_R[234] @ 7488
	.field  	75,32		; _MASTER_UNITS_STR_R[235] @ 7520
	.field  	79,32		; _MASTER_UNITS_STR_R[236] @ 7552
	.field  	72,32		; _MASTER_UNITS_STR_R[237] @ 7584
	.field  	225,32		; _MASTER_UNITS_STR_R[238] @ 7616
	.field  	0,32		; _MASTER_UNITS_STR_R[239] @ 7648
	.field  	0,32		; _MASTER_UNITS_STR_R[240] @ 7680
	.field  	0,32		; _MASTER_UNITS_STR_R[241] @ 7712
	.field  	0,32		; _MASTER_UNITS_STR_R[242] @ 7744
	.field  	105,32		; _MASTER_UNITS_STR_R[243] @ 7776
	.field  	37,32		; _MASTER_UNITS_STR_R[244] @ 7808
	.field  	0,32		; _MASTER_UNITS_STR_R[245] @ 7840
	.field  	0,32		; _MASTER_UNITS_STR_R[246] @ 7872
	.field  	0,32		; _MASTER_UNITS_STR_R[247] @ 7904
	.field  	0,32		; _MASTER_UNITS_STR_R[248] @ 7936
	.field  	0,32		; _MASTER_UNITS_STR_R[249] @ 7968
	.field  	0,32		; _MASTER_UNITS_STR_R[250] @ 8000
	.field  	0,32		; _MASTER_UNITS_STR_R[251] @ 8032
	.field  	106,32		; _MASTER_UNITS_STR_R[252] @ 8064
	.field  	37,32		; _MASTER_UNITS_STR_R[253] @ 8096
	.field  	0,32		; _MASTER_UNITS_STR_R[254] @ 8128
	.field  	0,32		; _MASTER_UNITS_STR_R[255] @ 8160
	.field  	0,32		; _MASTER_UNITS_STR_R[256] @ 8192
	.field  	0,32		; _MASTER_UNITS_STR_R[257] @ 8224
	.field  	0,32		; _MASTER_UNITS_STR_R[258] @ 8256
	.field  	0,32		; _MASTER_UNITS_STR_R[259] @ 8288
	.field  	0,32		; _MASTER_UNITS_STR_R[260] @ 8320
	.field  	139,32		; _MASTER_UNITS_STR_R[261] @ 8352
	.field  	188,32		; _MASTER_UNITS_STR_R[262] @ 8384
	.field  	187,32		; _MASTER_UNITS_STR_R[263] @ 8416
	.field  	189,32		; _MASTER_UNITS_STR_R[264] @ 8448
	.field  	45,32		; _MASTER_UNITS_STR_R[265] @ 8480
	.field  	49,32		; _MASTER_UNITS_STR_R[266] @ 8512
	.field  	0,32		; _MASTER_UNITS_STR_R[267] @ 8544
	.field  	0,32		; _MASTER_UNITS_STR_R[268] @ 8576
	.field  	0,32		; _MASTER_UNITS_STR_R[269] @ 8608
	.field  	169,32		; _MASTER_UNITS_STR_R[270] @ 8640
	.field  	188,32		; _MASTER_UNITS_STR_R[271] @ 8672
	.field  	187,32		; _MASTER_UNITS_STR_R[272] @ 8704
	.field  	112,32		; _MASTER_UNITS_STR_R[273] @ 8736
	.field  	227,32		; _MASTER_UNITS_STR_R[274] @ 8768
	.field  	45,32		; _MASTER_UNITS_STR_R[275] @ 8800
	.field  	49,32		; _MASTER_UNITS_STR_R[276] @ 8832
	.field  	0,32		; _MASTER_UNITS_STR_R[277] @ 8864
	.field  	0,32		; _MASTER_UNITS_STR_R[278] @ 8896
	.field  	336,32		; _MASTER_UNITS_STR_R[279] @ 8928
	.field  	171,32		; _MASTER_UNITS_STR_R[280] @ 8960
	.field  	97,32		; _MASTER_UNITS_STR_R[281] @ 8992
	.field  	99,32		; _MASTER_UNITS_STR_R[282] @ 9024
	.field  	191,32		; _MASTER_UNITS_STR_R[283] @ 9056
	.field  	111,32		; _MASTER_UNITS_STR_R[284] @ 9088
	.field  	191,32		; _MASTER_UNITS_STR_R[285] @ 9120
	.field  	97,32		; _MASTER_UNITS_STR_R[286] @ 9152
	.field  	0,32		; _MASTER_UNITS_STR_R[287] @ 9184
	.field  	38,32		; _MASTER_UNITS_STR_R[288] @ 9216
	.field  	161,32		; _MASTER_UNITS_STR_R[289] @ 9248
	.field  	229,32		; _MASTER_UNITS_STR_R[290] @ 9280
	.field  	0,32		; _MASTER_UNITS_STR_R[291] @ 9312
	.field  	0,32		; _MASTER_UNITS_STR_R[292] @ 9344
	.field  	0,32		; _MASTER_UNITS_STR_R[293] @ 9376
	.field  	0,32		; _MASTER_UNITS_STR_R[294] @ 9408
	.field  	0,32		; _MASTER_UNITS_STR_R[295] @ 9440
	.field  	0,32		; _MASTER_UNITS_STR_R[296] @ 9472
	.field  	244,32		; _MASTER_UNITS_STR_R[297] @ 9504
	.field  	77,32		; _MASTER_UNITS_STR_R[298] @ 9536
	.field  	161,32		; _MASTER_UNITS_STR_R[299] @ 9568
	.field  	229,32		; _MASTER_UNITS_STR_R[300] @ 9600
	.field  	0,32		; _MASTER_UNITS_STR_R[301] @ 9632
	.field  	0,32		; _MASTER_UNITS_STR_R[302] @ 9664
	.field  	0,32		; _MASTER_UNITS_STR_R[303] @ 9696
	.field  	0,32		; _MASTER_UNITS_STR_R[304] @ 9728
	.field  	0,32		; _MASTER_UNITS_STR_R[305] @ 9760
	.field  	321,32		; _MASTER_UNITS_STR_R[306] @ 9792
	.field  	224,32		; _MASTER_UNITS_STR_R[307] @ 9824
	.field  	65,32		; _MASTER_UNITS_STR_R[308] @ 9856
	.field  	66,32		; _MASTER_UNITS_STR_R[309] @ 9888
	.field  	167,32		; _MASTER_UNITS_STR_R[310] @ 9920
	.field  	0,32		; _MASTER_UNITS_STR_R[311] @ 9952
	.field  	0,32		; _MASTER_UNITS_STR_R[312] @ 9984
	.field  	0,32		; _MASTER_UNITS_STR_R[313] @ 10016
	.field  	0,32		; _MASTER_UNITS_STR_R[314] @ 10048
	.field  	14,32		; _MASTER_UNITS_STR_R[315] @ 10080
	.field  	97,32		; _MASTER_UNITS_STR_R[316] @ 10112
	.field  	191,32		; _MASTER_UNITS_STR_R[317] @ 10144
	.field  	188,32		; _MASTER_UNITS_STR_R[318] @ 10176
	.field  	0,32		; _MASTER_UNITS_STR_R[319] @ 10208
	.field  	0,32		; _MASTER_UNITS_STR_R[320] @ 10240
	.field  	0,32		; _MASTER_UNITS_STR_R[321] @ 10272
	.field  	0,32		; _MASTER_UNITS_STR_R[322] @ 10304
	.field  	0,32		; _MASTER_UNITS_STR_R[323] @ 10336
	.field  	6,32		; _MASTER_UNITS_STR_R[324] @ 10368
	.field  	112,32		; _MASTER_UNITS_STR_R[325] @ 10400
	.field  	115,32		; _MASTER_UNITS_STR_R[326] @ 10432
	.field  	105,32		; _MASTER_UNITS_STR_R[327] @ 10464
	.field  	0,32		; _MASTER_UNITS_STR_R[328] @ 10496
	.field  	0,32		; _MASTER_UNITS_STR_R[329] @ 10528
	.field  	0,32		; _MASTER_UNITS_STR_R[330] @ 10560
	.field  	0,32		; _MASTER_UNITS_STR_R[331] @ 10592
	.field  	0,32		; _MASTER_UNITS_STR_R[332] @ 10624
	.field  	9,32		; _MASTER_UNITS_STR_R[333] @ 10656
	.field  	180,32		; _MASTER_UNITS_STR_R[334] @ 10688
	.field  	47,32		; _MASTER_UNITS_STR_R[335] @ 10720
	.field  	99,32		; _MASTER_UNITS_STR_R[336] @ 10752
	.field  	188,32		; _MASTER_UNITS_STR_R[337] @ 10784
	.field  	50,32		; _MASTER_UNITS_STR_R[338] @ 10816
	.field  	0,32		; _MASTER_UNITS_STR_R[339] @ 10848
	.field  	0,32		; _MASTER_UNITS_STR_R[340] @ 10880
	.field  	0,32		; _MASTER_UNITS_STR_R[341] @ 10912
	.field  	10,32		; _MASTER_UNITS_STR_R[342] @ 10944
	.field  	186,32		; _MASTER_UNITS_STR_R[343] @ 10976
	.field  	180,32		; _MASTER_UNITS_STR_R[344] @ 11008
	.field  	47,32		; _MASTER_UNITS_STR_R[345] @ 11040
	.field  	99,32		; _MASTER_UNITS_STR_R[346] @ 11072
	.field  	188,32		; _MASTER_UNITS_STR_R[347] @ 11104
	.field  	50,32		; _MASTER_UNITS_STR_R[348] @ 11136
	.field  	0,32		; _MASTER_UNITS_STR_R[349] @ 11168
	.field  	0,32		; _MASTER_UNITS_STR_R[350] @ 11200
	.field  	11,32		; _MASTER_UNITS_STR_R[351] @ 11232
	.field  	168,32		; _MASTER_UNITS_STR_R[352] @ 11264
	.field  	97,32		; _MASTER_UNITS_STR_R[353] @ 11296
	.field  	0,32		; _MASTER_UNITS_STR_R[354] @ 11328
	.field  	0,32		; _MASTER_UNITS_STR_R[355] @ 11360
	.field  	0,32		; _MASTER_UNITS_STR_R[356] @ 11392
	.field  	0,32		; _MASTER_UNITS_STR_R[357] @ 11424
	.field  	0,32		; _MASTER_UNITS_STR_R[358] @ 11456
	.field  	0,32		; _MASTER_UNITS_STR_R[359] @ 11488
	.field  	12,32		; _MASTER_UNITS_STR_R[360] @ 11520
	.field  	186,32		; _MASTER_UNITS_STR_R[361] @ 11552
	.field  	168,32		; _MASTER_UNITS_STR_R[362] @ 11584
	.field  	97,32		; _MASTER_UNITS_STR_R[363] @ 11616
	.field  	0,32		; _MASTER_UNITS_STR_R[364] @ 11648
	.field  	0,32		; _MASTER_UNITS_STR_R[365] @ 11680
	.field  	0,32		; _MASTER_UNITS_STR_R[366] @ 11712
	.field  	0,32		; _MASTER_UNITS_STR_R[367] @ 11744
	.field  	0,32		; _MASTER_UNITS_STR_R[368] @ 11776
	.field  	13,32		; _MASTER_UNITS_STR_R[369] @ 11808
	.field  	116,32		; _MASTER_UNITS_STR_R[370] @ 11840
	.field  	111,32		; _MASTER_UNITS_STR_R[371] @ 11872
	.field  	114,32		; _MASTER_UNITS_STR_R[372] @ 11904
	.field  	114,32		; _MASTER_UNITS_STR_R[373] @ 11936
	.field  	0,32		; _MASTER_UNITS_STR_R[374] @ 11968
	.field  	0,32		; _MASTER_UNITS_STR_R[375] @ 12000
	.field  	0,32		; _MASTER_UNITS_STR_R[376] @ 12032
	.field  	0,32		; _MASTER_UNITS_STR_R[377] @ 12064
	.field  	174,32		; _MASTER_UNITS_STR_R[378] @ 12096
	.field  	180,32		; _MASTER_UNITS_STR_R[379] @ 12128
	.field  	168,32		; _MASTER_UNITS_STR_R[380] @ 12160
	.field  	97,32		; _MASTER_UNITS_STR_R[381] @ 12192
	.field  	0,32		; _MASTER_UNITS_STR_R[382] @ 12224
	.field  	0,32		; _MASTER_UNITS_STR_R[383] @ 12256
	.field  	0,32		; _MASTER_UNITS_STR_R[384] @ 12288
	.field  	0,32		; _MASTER_UNITS_STR_R[385] @ 12320
	.field  	0,32		; _MASTER_UNITS_STR_R[386] @ 12352
	.field  	176,32		; _MASTER_UNITS_STR_R[387] @ 12384
	.field  	186,32		; _MASTER_UNITS_STR_R[388] @ 12416
	.field  	180,32		; _MASTER_UNITS_STR_R[389] @ 12448
	.field  	47,32		; _MASTER_UNITS_STR_R[390] @ 12480
	.field  	188,32		; _MASTER_UNITS_STR_R[391] @ 12512
	.field  	50,32		; _MASTER_UNITS_STR_R[392] @ 12544
	.field  	0,32		; _MASTER_UNITS_STR_R[393] @ 12576
	.field  	0,32		; _MASTER_UNITS_STR_R[394] @ 12608
	.field  	0,32		; _MASTER_UNITS_STR_R[395] @ 12640
	.field  	237,32		; _MASTER_UNITS_STR_R[396] @ 12672
	.field  	77,32		; _MASTER_UNITS_STR_R[397] @ 12704
	.field  	168,32		; _MASTER_UNITS_STR_R[398] @ 12736
	.field  	97,32		; _MASTER_UNITS_STR_R[399] @ 12768
	.field  	0,32		; _MASTER_UNITS_STR_R[400] @ 12800
	.field  	0,32		; _MASTER_UNITS_STR_R[401] @ 12832
	.field  	0,32		; _MASTER_UNITS_STR_R[402] @ 12864
	.field  	0,32		; _MASTER_UNITS_STR_R[403] @ 12896
	.field  	0,32		; _MASTER_UNITS_STR_R[404] @ 12928
	.field  	339,32		; _MASTER_UNITS_STR_R[405] @ 12960
	.field  	72,32		; _MASTER_UNITS_STR_R[406] @ 12992
	.field  	65,32		; _MASTER_UNITS_STR_R[407] @ 13024
	.field  	168,32		; _MASTER_UNITS_STR_R[408] @ 13056
	.field  	80,32		; _MASTER_UNITS_STR_R[409] @ 13088
	.field  	0,32		; _MASTER_UNITS_STR_R[410] @ 13120
	.field  	0,32		; _MASTER_UNITS_STR_R[411] @ 13152
	.field  	0,32		; _MASTER_UNITS_STR_R[412] @ 13184
	.field  	0,32		; _MASTER_UNITS_STR_R[413] @ 13216
	.field  	36,32		; _MASTER_UNITS_STR_R[414] @ 13248
	.field  	188,32		; _MASTER_UNITS_STR_R[415] @ 13280
	.field  	66,32		; _MASTER_UNITS_STR_R[416] @ 13312
	.field  	0,32		; _MASTER_UNITS_STR_R[417] @ 13344
	.field  	0,32		; _MASTER_UNITS_STR_R[418] @ 13376
	.field  	0,32		; _MASTER_UNITS_STR_R[419] @ 13408
	.field  	0,32		; _MASTER_UNITS_STR_R[420] @ 13440
	.field  	0,32		; _MASTER_UNITS_STR_R[421] @ 13472
	.field  	0,32		; _MASTER_UNITS_STR_R[422] @ 13504
	.field  	58,32		; _MASTER_UNITS_STR_R[423] @ 13536
	.field  	66,32		; _MASTER_UNITS_STR_R[424] @ 13568
	.field  	0,32		; _MASTER_UNITS_STR_R[425] @ 13600
	.field  	0,32		; _MASTER_UNITS_STR_R[426] @ 13632
	.field  	0,32		; _MASTER_UNITS_STR_R[427] @ 13664
	.field  	0,32		; _MASTER_UNITS_STR_R[428] @ 13696
	.field  	0,32		; _MASTER_UNITS_STR_R[429] @ 13728
	.field  	0,32		; _MASTER_UNITS_STR_R[430] @ 13760
	.field  	0,32		; _MASTER_UNITS_STR_R[431] @ 13792
	.field  	340,32		; _MASTER_UNITS_STR_R[432] @ 13824
	.field  	84,32		; _MASTER_UNITS_STR_R[433] @ 13856
	.field  	79,32		; _MASTER_UNITS_STR_R[434] @ 13888
	.field  	75,32		; _MASTER_UNITS_STR_R[435] @ 13920
	.field  	0,32		; _MASTER_UNITS_STR_R[436] @ 13952
	.field  	0,32		; _MASTER_UNITS_STR_R[437] @ 13984
	.field  	0,32		; _MASTER_UNITS_STR_R[438] @ 14016
	.field  	0,32		; _MASTER_UNITS_STR_R[439] @ 14048
	.field  	0,32		; _MASTER_UNITS_STR_R[440] @ 14080
	.field  	39,32		; _MASTER_UNITS_STR_R[441] @ 14112
	.field  	188,32		; _MASTER_UNITS_STR_R[442] @ 14144
	.field  	65,32		; _MASTER_UNITS_STR_R[443] @ 14176
	.field  	0,32		; _MASTER_UNITS_STR_R[444] @ 14208
	.field  	0,32		; _MASTER_UNITS_STR_R[445] @ 14240
	.field  	0,32		; _MASTER_UNITS_STR_R[446] @ 14272
	.field  	0,32		; _MASTER_UNITS_STR_R[447] @ 14304
	.field  	0,32		; _MASTER_UNITS_STR_R[448] @ 14336
	.field  	0,32		; _MASTER_UNITS_STR_R[449] @ 14368
	.field  	337,32		; _MASTER_UNITS_STR_R[450] @ 14400
	.field  	65,32		; _MASTER_UNITS_STR_R[451] @ 14432
	.field  	72,32		; _MASTER_UNITS_STR_R[452] @ 14464
	.field  	65,32		; _MASTER_UNITS_STR_R[453] @ 14496
	.field  	167,32		; _MASTER_UNITS_STR_R[454] @ 14528
	.field  	165,32		; _MASTER_UNITS_STR_R[455] @ 14560
	.field  	84,32		; _MASTER_UNITS_STR_R[456] @ 14592
	.field  	0,32		; _MASTER_UNITS_STR_R[457] @ 14624
	.field  	0,32		; _MASTER_UNITS_STR_R[458] @ 14656
	.field  	57,32		; _MASTER_UNITS_STR_R[459] @ 14688
	.field  	37,32		; _MASTER_UNITS_STR_R[460] @ 14720
	.field  	0,32		; _MASTER_UNITS_STR_R[461] @ 14752
	.field  	0,32		; _MASTER_UNITS_STR_R[462] @ 14784
	.field  	0,32		; _MASTER_UNITS_STR_R[463] @ 14816
	.field  	0,32		; _MASTER_UNITS_STR_R[464] @ 14848
	.field  	0,32		; _MASTER_UNITS_STR_R[465] @ 14880
	.field  	0,32		; _MASTER_UNITS_STR_R[466] @ 14912
	.field  	0,32		; _MASTER_UNITS_STR_R[467] @ 14944
	.field  	246,32		; _MASTER_UNITS_STR_R[468] @ 14976
	.field  	37,32		; _MASTER_UNITS_STR_R[469] @ 15008
	.field  	47,32		; _MASTER_UNITS_STR_R[470] @ 15040
	.field  	65,32		; _MASTER_UNITS_STR_R[471] @ 15072
	.field  	80,32		; _MASTER_UNITS_STR_R[472] @ 15104
	.field  	73,32		; _MASTER_UNITS_STR_R[473] @ 15136
	.field  	0,32		; _MASTER_UNITS_STR_R[474] @ 15168
	.field  	0,32		; _MASTER_UNITS_STR_R[475] @ 15200
	.field  	0,32		; _MASTER_UNITS_STR_R[476] @ 15232
	.field  	247,32		; _MASTER_UNITS_STR_R[477] @ 15264
	.field  	37,32		; _MASTER_UNITS_STR_R[478] @ 15296
	.field  	47,32		; _MASTER_UNITS_STR_R[479] @ 15328
	.field  	186,32		; _MASTER_UNITS_STR_R[480] @ 15360
	.field  	180,32		; _MASTER_UNITS_STR_R[481] @ 15392
	.field  	47,32		; _MASTER_UNITS_STR_R[482] @ 15424
	.field  	188,32		; _MASTER_UNITS_STR_R[483] @ 15456
	.field  	51,32		; _MASTER_UNITS_STR_R[484] @ 15488
	.field  	0,32		; _MASTER_UNITS_STR_R[485] @ 15520
	.field  	344,32		; _MASTER_UNITS_STR_R[486] @ 15552
	.field  	32,32		; _MASTER_UNITS_STR_R[487] @ 15584
	.field  	32,32		; _MASTER_UNITS_STR_R[488] @ 15616
	.field  	32,32		; _MASTER_UNITS_STR_R[489] @ 15648
	.field  	0,32		; _MASTER_UNITS_STR_R[490] @ 15680
	.field  	0,32		; _MASTER_UNITS_STR_R[491] @ 15712
	.field  	0,32		; _MASTER_UNITS_STR_R[492] @ 15744
	.field  	0,32		; _MASTER_UNITS_STR_R[493] @ 15776
	.field  	0,32		; _MASTER_UNITS_STR_R[494] @ 15808
	.field  	149,32		; _MASTER_UNITS_STR_R[495] @ 15840
	.field  	37,32		; _MASTER_UNITS_STR_R[496] @ 15872
	.field  	0,32		; _MASTER_UNITS_STR_R[497] @ 15904
	.field  	0,32		; _MASTER_UNITS_STR_R[498] @ 15936
	.field  	0,32		; _MASTER_UNITS_STR_R[499] @ 15968
	.field  	0,32		; _MASTER_UNITS_STR_R[500] @ 16000
	.field  	0,32		; _MASTER_UNITS_STR_R[501] @ 16032
	.field  	0,32		; _MASTER_UNITS_STR_R[502] @ 16064
	.field  	0,32		; _MASTER_UNITS_STR_R[503] @ 16096
	.field  	327,32		; _MASTER_UNITS_STR_R[504] @ 16128
	.field  	77,32		; _MASTER_UNITS_STR_R[505] @ 16160
	.field  	65,32		; _MASTER_UNITS_STR_R[506] @ 16192
	.field  	67,32		; _MASTER_UNITS_STR_R[507] @ 16224
	.field  	67,32		; _MASTER_UNITS_STR_R[508] @ 16256
	.field  	65,32		; _MASTER_UNITS_STR_R[509] @ 16288
	.field  	0,32		; _MASTER_UNITS_STR_R[510] @ 16320
	.field  	0,32		; _MASTER_UNITS_STR_R[511] @ 16352
	.field  	0,32		; _MASTER_UNITS_STR_R[512] @ 16384
	.field  	61,32		; _MASTER_UNITS_STR_R[513] @ 16416
	.field  	186,32		; _MASTER_UNITS_STR_R[514] @ 16448
	.field  	180,32		; _MASTER_UNITS_STR_R[515] @ 16480
	.field  	0,32		; _MASTER_UNITS_STR_R[516] @ 16512
	.field  	0,32		; _MASTER_UNITS_STR_R[517] @ 16544
	.field  	0,32		; _MASTER_UNITS_STR_R[518] @ 16576
	.field  	0,32		; _MASTER_UNITS_STR_R[519] @ 16608
	.field  	0,32		; _MASTER_UNITS_STR_R[520] @ 16640
	.field  	0,32		; _MASTER_UNITS_STR_R[521] @ 16672
	.field  	60,32		; _MASTER_UNITS_STR_R[522] @ 16704
	.field  	180,32		; _MASTER_UNITS_STR_R[523] @ 16736
	.field  	0,32		; _MASTER_UNITS_STR_R[524] @ 16768
	.field  	0,32		; _MASTER_UNITS_STR_R[525] @ 16800
	.field  	0,32		; _MASTER_UNITS_STR_R[526] @ 16832
	.field  	0,32		; _MASTER_UNITS_STR_R[527] @ 16864
	.field  	0,32		; _MASTER_UNITS_STR_R[528] @ 16896
	.field  	0,32		; _MASTER_UNITS_STR_R[529] @ 16928
	.field  	0,32		; _MASTER_UNITS_STR_R[530] @ 16960
	.field  	62,32		; _MASTER_UNITS_STR_R[531] @ 16992
	.field  	191,32		; _MASTER_UNITS_STR_R[532] @ 17024
	.field  	0,32		; _MASTER_UNITS_STR_R[533] @ 17056
	.field  	0,32		; _MASTER_UNITS_STR_R[534] @ 17088
	.field  	0,32		; _MASTER_UNITS_STR_R[535] @ 17120
	.field  	0,32		; _MASTER_UNITS_STR_R[536] @ 17152
	.field  	0,32		; _MASTER_UNITS_STR_R[537] @ 17184
	.field  	0,32		; _MASTER_UNITS_STR_R[538] @ 17216
	.field  	0,32		; _MASTER_UNITS_STR_R[539] @ 17248
	.field  	328,32		; _MASTER_UNITS_STR_R[540] @ 17280
	.field  	77,32		; _MASTER_UNITS_STR_R[541] @ 17312
	.field  	80,32		; _MASTER_UNITS_STR_R[542] @ 17344
	.field  	0,32		; _MASTER_UNITS_STR_R[543] @ 17376
	.field  	0,32		; _MASTER_UNITS_STR_R[544] @ 17408
	.field  	0,32		; _MASTER_UNITS_STR_R[545] @ 17440
	.field  	0,32		; _MASTER_UNITS_STR_R[546] @ 17472
	.field  	0,32		; _MASTER_UNITS_STR_R[547] @ 17504
	.field  	0,32		; _MASTER_UNITS_STR_R[548] @ 17536
	.field  	70,32		; _MASTER_UNITS_STR_R[549] @ 17568
	.field  	180,32		; _MASTER_UNITS_STR_R[550] @ 17600
	.field  	47,32		; _MASTER_UNITS_STR_R[551] @ 17632
	.field  	99,32		; _MASTER_UNITS_STR_R[552] @ 17664
	.field  	0,32		; _MASTER_UNITS_STR_R[553] @ 17696
	.field  	0,32		; _MASTER_UNITS_STR_R[554] @ 17728
	.field  	0,32		; _MASTER_UNITS_STR_R[555] @ 17760
	.field  	0,32		; _MASTER_UNITS_STR_R[556] @ 17792
	.field  	0,32		; _MASTER_UNITS_STR_R[557] @ 17824
	.field  	71,32		; _MASTER_UNITS_STR_R[558] @ 17856
	.field  	180,32		; _MASTER_UNITS_STR_R[559] @ 17888
	.field  	47,32		; _MASTER_UNITS_STR_R[560] @ 17920
	.field  	188,32		; _MASTER_UNITS_STR_R[561] @ 17952
	.field  	184,32		; _MASTER_UNITS_STR_R[562] @ 17984
	.field  	189,32		; _MASTER_UNITS_STR_R[563] @ 18016
	.field  	0,32		; _MASTER_UNITS_STR_R[564] @ 18048
	.field  	0,32		; _MASTER_UNITS_STR_R[565] @ 18080
	.field  	0,32		; _MASTER_UNITS_STR_R[566] @ 18112
	.field  	72,32		; _MASTER_UNITS_STR_R[567] @ 18144
	.field  	180,32		; _MASTER_UNITS_STR_R[568] @ 18176
	.field  	47,32		; _MASTER_UNITS_STR_R[569] @ 18208
	.field  	192,32		; _MASTER_UNITS_STR_R[570] @ 18240
	.field  	0,32		; _MASTER_UNITS_STR_R[571] @ 18272
	.field  	0,32		; _MASTER_UNITS_STR_R[572] @ 18304
	.field  	0,32		; _MASTER_UNITS_STR_R[573] @ 18336
	.field  	0,32		; _MASTER_UNITS_STR_R[574] @ 18368
	.field  	0,32		; _MASTER_UNITS_STR_R[575] @ 18400
	.field  	73,32		; _MASTER_UNITS_STR_R[576] @ 18432
	.field  	186,32		; _MASTER_UNITS_STR_R[577] @ 18464
	.field  	180,32		; _MASTER_UNITS_STR_R[578] @ 18496
	.field  	47,32		; _MASTER_UNITS_STR_R[579] @ 18528
	.field  	99,32		; _MASTER_UNITS_STR_R[580] @ 18560
	.field  	0,32		; _MASTER_UNITS_STR_R[581] @ 18592
	.field  	0,32		; _MASTER_UNITS_STR_R[582] @ 18624
	.field  	0,32		; _MASTER_UNITS_STR_R[583] @ 18656
	.field  	0,32		; _MASTER_UNITS_STR_R[584] @ 18688
	.field  	74,32		; _MASTER_UNITS_STR_R[585] @ 18720
	.field  	186,32		; _MASTER_UNITS_STR_R[586] @ 18752
	.field  	180,32		; _MASTER_UNITS_STR_R[587] @ 18784
	.field  	47,32		; _MASTER_UNITS_STR_R[588] @ 18816
	.field  	188,32		; _MASTER_UNITS_STR_R[589] @ 18848
	.field  	184,32		; _MASTER_UNITS_STR_R[590] @ 18880
	.field  	189,32		; _MASTER_UNITS_STR_R[591] @ 18912
	.field  	0,32		; _MASTER_UNITS_STR_R[592] @ 18944
	.field  	0,32		; _MASTER_UNITS_STR_R[593] @ 18976
	.field  	75,32		; _MASTER_UNITS_STR_R[594] @ 19008
	.field  	186,32		; _MASTER_UNITS_STR_R[595] @ 19040
	.field  	180,32		; _MASTER_UNITS_STR_R[596] @ 19072
	.field  	47,32		; _MASTER_UNITS_STR_R[597] @ 19104
	.field  	192,32		; _MASTER_UNITS_STR_R[598] @ 19136
	.field  	0,32		; _MASTER_UNITS_STR_R[599] @ 19168
	.field  	0,32		; _MASTER_UNITS_STR_R[600] @ 19200
	.field  	0,32		; _MASTER_UNITS_STR_R[601] @ 19232
	.field  	0,32		; _MASTER_UNITS_STR_R[602] @ 19264
	.field  	76,32		; _MASTER_UNITS_STR_R[603] @ 19296
	.field  	186,32		; _MASTER_UNITS_STR_R[604] @ 19328
	.field  	180,32		; _MASTER_UNITS_STR_R[605] @ 19360
	.field  	47,32		; _MASTER_UNITS_STR_R[606] @ 19392
	.field  	99,32		; _MASTER_UNITS_STR_R[607] @ 19424
	.field  	121,32		; _MASTER_UNITS_STR_R[608] @ 19456
	.field  	191,32		; _MASTER_UNITS_STR_R[609] @ 19488
	.field  	0,32		; _MASTER_UNITS_STR_R[610] @ 19520
	.field  	0,32		; _MASTER_UNITS_STR_R[611] @ 19552
	.field  	77,32		; _MASTER_UNITS_STR_R[612] @ 19584
	.field  	191,32		; _MASTER_UNITS_STR_R[613] @ 19616
	.field  	47,32		; _MASTER_UNITS_STR_R[614] @ 19648
	.field  	188,32		; _MASTER_UNITS_STR_R[615] @ 19680
	.field  	184,32		; _MASTER_UNITS_STR_R[616] @ 19712
	.field  	189,32		; _MASTER_UNITS_STR_R[617] @ 19744
	.field  	0,32		; _MASTER_UNITS_STR_R[618] @ 19776
	.field  	0,32		; _MASTER_UNITS_STR_R[619] @ 19808
	.field  	0,32		; _MASTER_UNITS_STR_R[620] @ 19840
	.field  	78,32		; _MASTER_UNITS_STR_R[621] @ 19872
	.field  	191,32		; _MASTER_UNITS_STR_R[622] @ 19904
	.field  	47,32		; _MASTER_UNITS_STR_R[623] @ 19936
	.field  	192,32		; _MASTER_UNITS_STR_R[624] @ 19968
	.field  	0,32		; _MASTER_UNITS_STR_R[625] @ 20000
	.field  	0,32		; _MASTER_UNITS_STR_R[626] @ 20032
	.field  	0,32		; _MASTER_UNITS_STR_R[627] @ 20064
	.field  	0,32		; _MASTER_UNITS_STR_R[628] @ 20096
	.field  	0,32		; _MASTER_UNITS_STR_R[629] @ 20128
	.field  	79,32		; _MASTER_UNITS_STR_R[630] @ 20160
	.field  	191,32		; _MASTER_UNITS_STR_R[631] @ 20192
	.field  	47,32		; _MASTER_UNITS_STR_R[632] @ 20224
	.field  	99,32		; _MASTER_UNITS_STR_R[633] @ 20256
	.field  	121,32		; _MASTER_UNITS_STR_R[634] @ 20288
	.field  	191,32		; _MASTER_UNITS_STR_R[635] @ 20320
	.field  	0,32		; _MASTER_UNITS_STR_R[636] @ 20352
	.field  	0,32		; _MASTER_UNITS_STR_R[637] @ 20384
	.field  	0,32		; _MASTER_UNITS_STR_R[638] @ 20416
	.field  	329,32		; _MASTER_UNITS_STR_R[639] @ 20448
	.field  	168,32		; _MASTER_UNITS_STR_R[640] @ 20480
	.field  	167,32		; _MASTER_UNITS_STR_R[641] @ 20512
	.field  	79,32		; _MASTER_UNITS_STR_R[642] @ 20544
	.field  	84,32		; _MASTER_UNITS_STR_R[643] @ 20576
	.field  	72,32		; _MASTER_UNITS_STR_R[644] @ 20608
	.field  	0,32		; _MASTER_UNITS_STR_R[645] @ 20640
	.field  	0,32		; _MASTER_UNITS_STR_R[646] @ 20672
	.field  	0,32		; _MASTER_UNITS_STR_R[647] @ 20704
	.field  	92,32		; _MASTER_UNITS_STR_R[648] @ 20736
	.field  	186,32		; _MASTER_UNITS_STR_R[649] @ 20768
	.field  	180,32		; _MASTER_UNITS_STR_R[650] @ 20800
	.field  	47,32		; _MASTER_UNITS_STR_R[651] @ 20832
	.field  	188,32		; _MASTER_UNITS_STR_R[652] @ 20864
	.field  	51,32		; _MASTER_UNITS_STR_R[653] @ 20896
	.field  	0,32		; _MASTER_UNITS_STR_R[654] @ 20928
	.field  	0,32		; _MASTER_UNITS_STR_R[655] @ 20960
	.field  	0,32		; _MASTER_UNITS_STR_R[656] @ 20992
	.field  	107,32		; _MASTER_UNITS_STR_R[657] @ 21024
	.field  	186,32		; _MASTER_UNITS_STR_R[658] @ 21056
	.field  	180,32		; _MASTER_UNITS_STR_R[659] @ 21088
	.field  	47,32		; _MASTER_UNITS_STR_R[660] @ 21120
	.field  	188,32		; _MASTER_UNITS_STR_R[661] @ 21152
	.field  	51,32		; _MASTER_UNITS_STR_R[662] @ 21184
	.field  	67,32		; _MASTER_UNITS_STR_R[663] @ 21216
	.field  	169,32		; _MASTER_UNITS_STR_R[664] @ 21248
	.field  	0,32		; _MASTER_UNITS_STR_R[665] @ 21280
	.field  	108,32		; _MASTER_UNITS_STR_R[666] @ 21312
	.field  	186,32		; _MASTER_UNITS_STR_R[667] @ 21344
	.field  	180,32		; _MASTER_UNITS_STR_R[668] @ 21376
	.field  	47,32		; _MASTER_UNITS_STR_R[669] @ 21408
	.field  	188,32		; _MASTER_UNITS_STR_R[670] @ 21440
	.field  	51,32		; _MASTER_UNITS_STR_R[671] @ 21472
	.field  	54,32		; _MASTER_UNITS_STR_R[672] @ 21504
	.field  	48,32		; _MASTER_UNITS_STR_R[673] @ 21536
	.field  	0,32		; _MASTER_UNITS_STR_R[674] @ 21568
	.field  	104,32		; _MASTER_UNITS_STR_R[675] @ 21600
	.field  	223,32		; _MASTER_UNITS_STR_R[676] @ 21632
	.field  	65,32		; _MASTER_UNITS_STR_R[677] @ 21664
	.field  	80,32		; _MASTER_UNITS_STR_R[678] @ 21696
	.field  	73,32		; _MASTER_UNITS_STR_R[679] @ 21728
	.field  	0,32		; _MASTER_UNITS_STR_R[680] @ 21760
	.field  	0,32		; _MASTER_UNITS_STR_R[681] @ 21792
	.field  	0,32		; _MASTER_UNITS_STR_R[682] @ 21824
	.field  	0,32		; _MASTER_UNITS_STR_R[683] @ 21856
	.field  	105,32		; _MASTER_UNITS_STR_R[684] @ 21888
	.field  	223,32		; _MASTER_UNITS_STR_R[685] @ 21920
	.field  	65,32		; _MASTER_UNITS_STR_R[686] @ 21952
	.field  	80,32		; _MASTER_UNITS_STR_R[687] @ 21984
	.field  	73,32		; _MASTER_UNITS_STR_R[688] @ 22016
	.field  	54,32		; _MASTER_UNITS_STR_R[689] @ 22048
	.field  	48,32		; _MASTER_UNITS_STR_R[690] @ 22080
	.field  	70,32		; _MASTER_UNITS_STR_R[691] @ 22112
	.field  	0,32		; _MASTER_UNITS_STR_R[692] @ 22144
	.field  	106,32		; _MASTER_UNITS_STR_R[693] @ 22176
	.field  	223,32		; _MASTER_UNITS_STR_R[694] @ 22208
	.field  	65,32		; _MASTER_UNITS_STR_R[695] @ 22240
	.field  	80,32		; _MASTER_UNITS_STR_R[696] @ 22272
	.field  	73,32		; _MASTER_UNITS_STR_R[697] @ 22304
	.field  	49,32		; _MASTER_UNITS_STR_R[698] @ 22336
	.field  	53,32		; _MASTER_UNITS_STR_R[699] @ 22368
	.field  	67,32		; _MASTER_UNITS_STR_R[700] @ 22400
	.field  	0,32		; _MASTER_UNITS_STR_R[701] @ 22432
	.field  	95,32		; _MASTER_UNITS_STR_R[702] @ 22464
	.field  	180,32		; _MASTER_UNITS_STR_R[703] @ 22496
	.field  	47,32		; _MASTER_UNITS_STR_R[704] @ 22528
	.field  	188,32		; _MASTER_UNITS_STR_R[705] @ 22560
	.field  	187,32		; _MASTER_UNITS_STR_R[706] @ 22592
	.field  	0,32		; _MASTER_UNITS_STR_R[707] @ 22624
	.field  	0,32		; _MASTER_UNITS_STR_R[708] @ 22656
	.field  	0,32		; _MASTER_UNITS_STR_R[709] @ 22688
	.field  	0,32		; _MASTER_UNITS_STR_R[710] @ 22720
	.field  	97,32		; _MASTER_UNITS_STR_R[711] @ 22752
	.field  	180,32		; _MASTER_UNITS_STR_R[712] @ 22784
	.field  	47,32		; _MASTER_UNITS_STR_R[713] @ 22816
	.field  	187,32		; _MASTER_UNITS_STR_R[714] @ 22848
	.field  	0,32		; _MASTER_UNITS_STR_R[715] @ 22880
	.field  	0,32		; _MASTER_UNITS_STR_R[716] @ 22912
	.field  	0,32		; _MASTER_UNITS_STR_R[717] @ 22944
	.field  	0,32		; _MASTER_UNITS_STR_R[718] @ 22976
	.field  	0,32		; _MASTER_UNITS_STR_R[719] @ 23008
	.field  	96,32		; _MASTER_UNITS_STR_R[720] @ 23040
	.field  	186,32		; _MASTER_UNITS_STR_R[721] @ 23072
	.field  	180,32		; _MASTER_UNITS_STR_R[722] @ 23104
	.field  	47,32		; _MASTER_UNITS_STR_R[723] @ 23136
	.field  	187,32		; _MASTER_UNITS_STR_R[724] @ 23168
	.field  	0,32		; _MASTER_UNITS_STR_R[725] @ 23200
	.field  	0,32		; _MASTER_UNITS_STR_R[726] @ 23232
	.field  	0,32		; _MASTER_UNITS_STR_R[727] @ 23264
	.field  	0,32		; _MASTER_UNITS_STR_R[728] @ 23296
	.field  	326,32		; _MASTER_UNITS_STR_R[729] @ 23328
	.field  	66,32		; _MASTER_UNITS_STR_R[730] @ 23360
	.field  	80,32		; _MASTER_UNITS_STR_R[731] @ 23392
	.field  	69,32		; _MASTER_UNITS_STR_R[732] @ 23424
	.field  	77,32		; _MASTER_UNITS_STR_R[733] @ 23456
	.field  	177,32		; _MASTER_UNITS_STR_R[734] @ 23488
	.field  	0,32		; _MASTER_UNITS_STR_R[735] @ 23520
	.field  	0,32		; _MASTER_UNITS_STR_R[736] @ 23552
	.field  	0,32		; _MASTER_UNITS_STR_R[737] @ 23584
	.field  	51,32		; _MASTER_UNITS_STR_R[738] @ 23616
	.field  	99,32		; _MASTER_UNITS_STR_R[739] @ 23648
	.field  	0,32		; _MASTER_UNITS_STR_R[740] @ 23680
	.field  	0,32		; _MASTER_UNITS_STR_R[741] @ 23712
	.field  	0,32		; _MASTER_UNITS_STR_R[742] @ 23744
	.field  	0,32		; _MASTER_UNITS_STR_R[743] @ 23776
	.field  	0,32		; _MASTER_UNITS_STR_R[744] @ 23808
	.field  	0,32		; _MASTER_UNITS_STR_R[745] @ 23840
	.field  	0,32		; _MASTER_UNITS_STR_R[746] @ 23872
	.field  	50,32		; _MASTER_UNITS_STR_R[747] @ 23904
	.field  	188,32		; _MASTER_UNITS_STR_R[748] @ 23936
	.field  	184,32		; _MASTER_UNITS_STR_R[749] @ 23968
	.field  	189,32		; _MASTER_UNITS_STR_R[750] @ 24000
	.field  	0,32		; _MASTER_UNITS_STR_R[751] @ 24032
	.field  	0,32		; _MASTER_UNITS_STR_R[752] @ 24064
	.field  	0,32		; _MASTER_UNITS_STR_R[753] @ 24096
	.field  	0,32		; _MASTER_UNITS_STR_R[754] @ 24128
	.field  	0,32		; _MASTER_UNITS_STR_R[755] @ 24160
	.field  	52,32		; _MASTER_UNITS_STR_R[756] @ 24192
	.field  	192,32		; _MASTER_UNITS_STR_R[757] @ 24224
	.field  	0,32		; _MASTER_UNITS_STR_R[758] @ 24256
	.field  	0,32		; _MASTER_UNITS_STR_R[759] @ 24288
	.field  	0,32		; _MASTER_UNITS_STR_R[760] @ 24320
	.field  	0,32		; _MASTER_UNITS_STR_R[761] @ 24352
	.field  	0,32		; _MASTER_UNITS_STR_R[762] @ 24384
	.field  	0,32		; _MASTER_UNITS_STR_R[763] @ 24416
	.field  	0,32		; _MASTER_UNITS_STR_R[764] @ 24448
	.field  	53,32		; _MASTER_UNITS_STR_R[765] @ 24480
	.field  	99,32		; _MASTER_UNITS_STR_R[766] @ 24512
	.field  	121,32		; _MASTER_UNITS_STR_R[767] @ 24544
	.field  	191,32		; _MASTER_UNITS_STR_R[768] @ 24576
	.field  	0,32		; _MASTER_UNITS_STR_R[769] @ 24608
	.field  	0,32		; _MASTER_UNITS_STR_R[770] @ 24640
	.field  	0,32		; _MASTER_UNITS_STR_R[771] @ 24672
	.field  	0,32		; _MASTER_UNITS_STR_R[772] @ 24704
	.field  	0,32		; _MASTER_UNITS_STR_R[773] @ 24736
	.field  	243,32		; _MASTER_UNITS_STR_R[774] @ 24768
	.field  	99,32		; _MASTER_UNITS_STR_R[775] @ 24800
	.field  	116,32		; _MASTER_UNITS_STR_R[776] @ 24832
	.field  	0,32		; _MASTER_UNITS_STR_R[777] @ 24864
	.field  	0,32		; _MASTER_UNITS_STR_R[778] @ 24896
	.field  	0,32		; _MASTER_UNITS_STR_R[779] @ 24928
	.field  	0,32		; _MASTER_UNITS_STR_R[780] @ 24960
	.field  	0,32		; _MASTER_UNITS_STR_R[781] @ 24992
	.field  	0,32		; _MASTER_UNITS_STR_R[782] @ 25024
	.field  	256,32		; _MASTER_UNITS_STR_R[783] @ 25056
	.field  	80,32		; _MASTER_UNITS_STR_R[784] @ 25088
	.field  	97,32		; _MASTER_UNITS_STR_R[785] @ 25120
	.field  	183,32		; _MASTER_UNITS_STR_R[786] @ 25152
	.field  	189,32		; _MASTER_UNITS_STR_R[787] @ 25184
	.field  	111,32		; _MASTER_UNITS_STR_R[788] @ 25216
	.field  	101,32		; _MASTER_UNITS_STR_R[789] @ 25248
	.field  	0,32		; _MASTER_UNITS_STR_R[790] @ 25280
	.field  	0,32		; _MASTER_UNITS_STR_R[791] @ 25312
	.field  	57,32		; _MASTER_UNITS_STR_R[792] @ 25344
	.field  	37,32		; _MASTER_UNITS_STR_R[793] @ 25376
	.field  	0,32		; _MASTER_UNITS_STR_R[794] @ 25408
	.field  	0,32		; _MASTER_UNITS_STR_R[795] @ 25440
	.field  	0,32		; _MASTER_UNITS_STR_R[796] @ 25472
	.field  	0,32		; _MASTER_UNITS_STR_R[797] @ 25504
	.field  	0,32		; _MASTER_UNITS_STR_R[798] @ 25536
	.field  	0,32		; _MASTER_UNITS_STR_R[799] @ 25568
	.field  	0,32		; _MASTER_UNITS_STR_R[800] @ 25600
	.field  	242,32		; _MASTER_UNITS_STR_R[801] @ 25632
	.field  	98,32		; _MASTER_UNITS_STR_R[802] @ 25664
	.field  	112,32		; _MASTER_UNITS_STR_R[803] @ 25696
	.field  	115,32		; _MASTER_UNITS_STR_R[804] @ 25728
	.field  	0,32		; _MASTER_UNITS_STR_R[805] @ 25760
	.field  	0,32		; _MASTER_UNITS_STR_R[806] @ 25792
	.field  	0,32		; _MASTER_UNITS_STR_R[807] @ 25824
	.field  	0,32		; _MASTER_UNITS_STR_R[808] @ 25856
	.field  	0,32		; _MASTER_UNITS_STR_R[809] @ 25888
	.field  	245,32		; _MASTER_UNITS_STR_R[810] @ 25920
	.field  	66,32		; _MASTER_UNITS_STR_R[811] @ 25952
	.field  	47,32		; _MASTER_UNITS_STR_R[812] @ 25984
	.field  	77,32		; _MASTER_UNITS_STR_R[813] @ 26016
	.field  	161,32		; _MASTER_UNITS_STR_R[814] @ 26048
	.field  	229,32		; _MASTER_UNITS_STR_R[815] @ 26080
	.field  	0,32		; _MASTER_UNITS_STR_R[816] @ 26112
	.field  	0,32		; _MASTER_UNITS_STR_R[817] @ 26144
	.field  	0,32		; _MASTER_UNITS_STR_R[818] @ 26176
	.field  	507,32		; _MASTER_UNITS_STR_R[819] @ 26208
	.field  	0,32		; _MASTER_UNITS_STR_R[820] @ 26240
	.field  	0,32		; _MASTER_UNITS_STR_R[821] @ 26272
	.field  	0,32		; _MASTER_UNITS_STR_R[822] @ 26304
	.field  	0,32		; _MASTER_UNITS_STR_R[823] @ 26336
	.field  	0,32		; _MASTER_UNITS_STR_R[824] @ 26368
	.field  	0,32		; _MASTER_UNITS_STR_R[825] @ 26400
	.field  	0,32		; _MASTER_UNITS_STR_R[826] @ 26432
	.field  	0,32		; _MASTER_UNITS_STR_R[827] @ 26464

	.sect	".text"

	.global	_MASTER_UNITS_STR_R
	.sym	_MASTER_UNITS_STR_R,_MASTER_UNITS_STR_R,52,2,26496,,828
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
	.file	"variable.c"
	.sect	 "initialization"

	.global	_VAR_DAMP_Init
	.sym	_VAR_DAMP_Init,_VAR_DAMP_Init,32,2,0
	.func	39
;******************************************************************************
;* FUNCTION NAME: _VAR_DAMP_Init                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 0 SOE = 8 words          *
;******************************************************************************
_VAR_DAMP_Init:
;* ar2   assigned to _clear
	.sym	_clear,10,14,17,32
	.sym	_clear,1,14,1,32
	.sym	_i,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_l,4,24,1,32,.fake4
	.sym	_d,5,24,1,32,.fake9
	.sym	_v,6,24,1,32,.fake6
	.line	1
;----------------------------------------------------------------------
;  39 | void VAR_DAMP_Init(BOOL clear)                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
;  41 | int i,j;        /* counter; not used */                                
;  42 | LIST* l;        /* dampened variable list */                           
;  43 | DPKT* d;        /* dampened variable */                                
;  44 | VAR* v;         /* variable */                                         
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |40| 
	.line	8
;----------------------------------------------------------------------
;  46 | if (clear)                                                             
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      0,r0                  ; |46| 
        beq       L7                    ; |46| 
;*      Branch Occurs to L7             ; |46| 
	.line	10
;----------------------------------------------------------------------
;  48 | List_Init(&LIST_DAMP);                                                 
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |48| 
        ldp       @CL1,DP
        ldiu      @CL1,ar2              ; |48| 
        callu     r0                    ; far call to _List_Init	; |48| 
                                        ; |48| Far Call Occurs
	.line	11
;----------------------------------------------------------------------
;  49 | List_Init(&LIST_DAMP_EMPTY);                                           
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |49| 
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |49| 
        callu     r0                    ; far call to _List_Init	; |49| 
                                        ; |49| Far Call Occurs
	.line	13
;----------------------------------------------------------------------
;  51 | for (i=0;i<DAMP_MAX;i++)                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |51| 
        sti       r0,*+fp(2)            ; |51| 
        ldiu      r0,r1
        cmpi      40,r1                 ; |51| 
        bge       L4                    ; |51| 
;*      Branch Occurs to L4             ; |51| 
L3:        
	.line	14
;----------------------------------------------------------------------
;  52 | DAMP[i].v = NULL_VAR;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |52| 
        ldp       @CL4,DP
        mpyi      3,ir0                 ; |52| 
        ldiu      @CL4,ar0              ; |52| 
        sti       r0,*+ar0(ir0)         ; |52| 
	.line	13
        ldiu      1,r1                  ; |51| 
        addi      *+fp(2),r1            ; |51| 
        sti       r1,*+fp(2)            ; |51| 
        cmpi      40,r1                 ; |51| 
        blt       L3                    ; |51| 
;*      Branch Occurs to L3             ; |51| 
L4:        
	.line	16
;----------------------------------------------------------------------
;  54 | for (i=0;i<DAMP_MAX;i++)                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |54| 
        sti       r0,*+fp(2)            ; |54| 
        cmpi      40,r0                 ; |54| 
        bge       L9                    ; |54| 
;*      Branch Occurs to L9             ; |54| 
L5:        
	.line	17
;----------------------------------------------------------------------
;  55 | List_Add(&LIST_DAMP_EMPTY, (GENERIC*)(&DAMP[i]));                      
;  57 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      *+fp(2),r2            ; |55| 
        ldiu      @CL6,r0               ; |55| 
        ldp       @CL5,DP
        mpyi      3,r2                  ; |55| 
        addi      @CL5,r2               ; |55| Unsigned
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |55| 
        callu     r0                    ; far call to _List_Add	; |55| 
                                        ; |55| Far Call Occurs
	.line	16
        ldiu      1,r0                  ; |54| 
        addi      *+fp(2),r0            ; |54| 
        sti       r0,*+fp(2)            ; |54| 
        cmpi      40,r0                 ; |54| 
        blt       L5                    ; |54| 
;*      Branch Occurs to L5             ; |54| 
        bu        L9                    ; |38| 
;*      Branch Occurs to L9             ; |38| 
L7:        
	.line	21
;----------------------------------------------------------------------
;  59 | l = &LIST_DAMP;                                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,r0               ; |59| 
        sti       r0,*+fp(4)            ; |59| 
	.line	22
;----------------------------------------------------------------------
;  60 | d = (DPKT*)l->head;                                                    
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *ar0,r0               ; |60| 
        sti       r0,*+fp(5)            ; |60| 
	.line	24
;----------------------------------------------------------------------
;  62 | while(d!=(DPKT*)0)                                                     
;----------------------------------------------------------------------
        ldiu      0,r1                  ; |65| 
        cmpi      0,r0                  ; |62| 
        beq       L9                    ; |62| 
;*      Branch Occurs to L9             ; |62| 
L8:        
	.line	26
;----------------------------------------------------------------------
;  64 | v                         = d->v;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(5),ar0           ; |64| 
        ldiu      *+ar0(2),r0           ; |64| 
        sti       r0,*+fp(6)            ; |64| 
	.line	27
;----------------------------------------------------------------------
;  65 | v->damp_count = 0;                                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        sti       r1,*+ar0(5)           ; |65| 
	.line	28
;----------------------------------------------------------------------
;  66 | d                         = (DPKT*) d->next;                           
;----------------------------------------------------------------------
        ldiu      *+fp(5),ar0           ; |66| 
        ldiu      *+ar0(1),r0           ; |66| 
        sti       r0,*+fp(5)            ; |66| 
	.line	24
        cmpi      0,r0                  ; |62| 
        bne       L8                    ; |62| 
;*      Branch Occurs to L8             ; |62| 
L9:        
	.line	31
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      8,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	69,000000000h,6


	.sect	 ".text"

	.global	_VAR_Copy
	.sym	_VAR_Copy,_VAR_Copy,32,2,0
	.func	84
;******************************************************************************
;* FUNCTION NAME: _VAR_Copy                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,r1,r2,ar0,ar1,ar2,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_VAR_Copy:
;* ar2   assigned to _s
	.sym	_s,10,24,17,32,.fake6
;* r2    assigned to _d
	.sym	_d,2,24,17,32,.fake6
	.sym	_s,1,24,1,32,.fake6
	.sym	_d,2,24,1,32,.fake6
	.sym	_i,3,4,1,32
	.line	1
;----------------------------------------------------------------------
;  84 | void VAR_Copy(VAR *s, VAR* d)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
;  86 | int i;  /* string counter */                                           
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |85| 
        sti       ar2,*+fp(1)           ; |85| 
	.line	5
;----------------------------------------------------------------------
;  88 | if (s==(VAR*)0)                                                        
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      0,r0                  ; |88| 
        bne       L15                   ; |88| 
;*      Branch Occurs to L15            ; |88| 
	.line	7
;----------------------------------------------------------------------
;  90 | d->val = 0;                                                            
;----------------------------------------------------------------------
        ldiu      r2,ar0
        ldfu      0.0000000000e+00,f0   ; |90| 
        stf       f0,*ar0               ; |90| 
	.line	8
;----------------------------------------------------------------------
;  91 | d->vect1 = NULL_PTR;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |91| 
        ldiu      0,r0                  ; |91| 
        sti       r0,*+ar0(1)           ; |91| 
	.line	9
;----------------------------------------------------------------------
;  92 | d->vect2 = NULL_PTR;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |92| 
        sti       r0,*+ar0(2)           ; |92| 
	.line	10
;----------------------------------------------------------------------
;  93 | d->STAT = 0;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |93| 
        sti       r0,*+ar0(3)           ; |93| 
	.line	11
;----------------------------------------------------------------------
;  94 | d->dampening = 0;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |94| 
        ldfu      0.0000000000e+00,f0   ; |94| 
        stf       f0,*+ar0(4)           ; |94| 
	.line	12
;----------------------------------------------------------------------
;  95 | d->damp_count = 0;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |95| 
        ldiu      0,r0                  ; |95| 
        sti       r0,*+ar0(5)           ; |95| 
	.line	13
;----------------------------------------------------------------------
;  96 | d->aux = 0;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |96| 
        sti       r0,*+ar0(6)           ; |96| 
	.line	14
;----------------------------------------------------------------------
;  97 | d->val1 = 0;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |97| 
        ldfu      0.0000000000e+00,f0   ; |97| 
        stf       f0,*+ar0(7)           ; |97| 
	.line	15
;----------------------------------------------------------------------
;  98 | d->val2 = 0;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |98| 
        ldfu      0.0000000000e+00,f0   ; |98| 
        stf       f0,*+ar0(8)           ; |98| 
	.line	16
;----------------------------------------------------------------------
;  99 | d->calc_val = 0;                                                       
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |99| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      *+fp(2),ar0           ; |99| 
        ldiu      @CL7+1,r0             ; |99| 40b float lo half
        stf       f0,*+ar0(9)           ; |99| Store high half
        sti       r0,*+ar0(10)          ; |99| Store low half
	.line	17
;----------------------------------------------------------------------
; 100 | d->base_val = 0;                                                       
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |100| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      *+fp(2),ar0           ; |100| 
        ldiu      @CL7+1,r0             ; |100| 40b float lo half
        stf       f0,*+ar0(11)          ; |100| Store high half
        sti       r0,*+ar0(12)          ; |100| Store low half
	.line	18
;----------------------------------------------------------------------
; 101 | d->unit = u_generic_none;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |101| 
        ldiu      251,r0                ; |101| 
        sti       r0,*+ar0(13)          ; |101| 
	.line	19
;----------------------------------------------------------------------
; 102 | d->calc_unit = u_generic_none;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |102| 
        sti       r0,*+ar0(14)          ; |102| 
	.line	20
;----------------------------------------------------------------------
; 103 | d->class = c_not_classified;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |103| 
        ldiu      0,r0                  ; |103| 
        sti       r0,*+ar0(15)          ; |103| 
	.line	21
;----------------------------------------------------------------------
; 104 | d->scale = 10;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |104| 
        ldfu      1.0000000000e+01,f0   ; |104| 
        stf       f0,*+ar0(16)          ; |104| 
	.line	22
;----------------------------------------------------------------------
; 105 | d->scale_long = 1000;                                                  
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(2),ar0           ; |105| 
        ldfu      @CL8,f0               ; |105| 
        stf       f0,*+ar0(17)          ; |105| 
	.line	23
;----------------------------------------------------------------------
; 106 | d->bound_hi_set =  1000000000.0;                                       
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      *+fp(2),ar0           ; |106| 
        ldfu      @CL9,f0               ; |106| 
        stf       f0,*+ar0(18)          ; |106| 
	.line	24
;----------------------------------------------------------------------
; 107 | d->bound_lo_set = -1000000000.0;                                       
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      *+fp(2),ar0           ; |107| 
        ldfu      @CL10,f0              ; |107| 
        stf       f0,*+ar0(19)          ; |107| 
	.line	25
;----------------------------------------------------------------------
; 108 | d->alarm_hi_set =  1000000000.0;                                       
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      *+fp(2),ar0           ; |108| 
        ldfu      @CL9,f0               ; |108| 
        stf       f0,*+ar0(20)          ; |108| 
	.line	26
;----------------------------------------------------------------------
; 109 | d->alarm_lo_set = -1000000000.0;                                       
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      *+fp(2),ar0           ; |109| 
        ldfu      @CL10,f0              ; |109| 
        stf       f0,*+ar0(21)          ; |109| 
	.line	28
;----------------------------------------------------------------------
; 111 | for (i=0;i<21;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |111| 
        sti       r0,*+fp(3)            ; |111| 
        ldiu      r0,r1
        cmpi      21,r1                 ; |111| 
        bge       L14                   ; |111| 
;*      Branch Occurs to L14            ; |111| 
L13:        
	.line	29
;----------------------------------------------------------------------
; 112 | d->name[i] = 0;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |112| 
        addi      *+fp(2),ar0           ; |112| Unsigned
        sti       r0,*+ar0(22)          ; |112| 
	.line	28
        ldiu      1,r1                  ; |111| 
        addi      *+fp(3),r1            ; |111| 
        sti       r1,*+fp(3)            ; |111| 
        cmpi      21,r1                 ; |111| 
        blt       L13                   ; |111| 
;*      Branch Occurs to L13            ; |111| 
L14:        
	.line	30
;----------------------------------------------------------------------
; 113 | d->name_r = 0;                                                         
; 116 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |113| 
        ldiu      0,r0                  ; |113| 
        sti       r0,*+ar0(43)          ; |113| 
        bu        L18                   ; |83| 
;*      Branch Occurs to L18            ; |83| 
L15:        
	.line	35
;----------------------------------------------------------------------
; 118 | d->val                  = s->val;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |118| 
        ldiu      *+fp(2),ar1           ; |118| 
        ldfu      *ar0,f0               ; |118| 
        stf       f0,*ar1               ; |118| 
	.line	36
;----------------------------------------------------------------------
; 119 | d->vect1                = s->vect1;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |119| 
        ldiu      *+fp(2),ar1           ; |119| 
        ldiu      *+ar0(1),r0           ; |119| 
        sti       r0,*+ar1(1)           ; |119| 
	.line	37
;----------------------------------------------------------------------
; 120 | d->vect2                = s->vect2;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |120| 
        ldiu      *+fp(2),ar1           ; |120| 
        ldiu      *+ar0(2),r0           ; |120| 
        sti       r0,*+ar1(2)           ; |120| 
	.line	38
;----------------------------------------------------------------------
; 121 | d->STAT                 = s->STAT;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |121| 
        ldiu      *+fp(2),ar1           ; |121| 
        ldiu      *+ar0(3),r0           ; |121| 
        sti       r0,*+ar1(3)           ; |121| 
	.line	39
;----------------------------------------------------------------------
; 122 | d->dampening    = s->dampening;                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |122| 
        ldiu      *+fp(2),ar1           ; |122| 
        ldfu      *+ar0(4),f0           ; |122| 
        stf       f0,*+ar1(4)           ; |122| 
	.line	40
;----------------------------------------------------------------------
; 123 | d->damp_count   = s->damp_count;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |123| 
        ldiu      *+fp(2),ar1           ; |123| 
        ldiu      *+ar0(5),r0           ; |123| 
        sti       r0,*+ar1(5)           ; |123| 
	.line	41
;----------------------------------------------------------------------
; 124 | d->aux                  = s->aux;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |124| 
        ldiu      *+fp(2),ar1           ; |124| 
        ldiu      *+ar0(6),r0           ; |124| 
        sti       r0,*+ar1(6)           ; |124| 
	.line	42
;----------------------------------------------------------------------
; 125 | d->val1                 = s->val1;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |125| 
        ldiu      *+fp(2),ar1           ; |125| 
        ldfu      *+ar0(7),f0           ; |125| 
        stf       f0,*+ar1(7)           ; |125| 
	.line	43
;----------------------------------------------------------------------
; 126 | d->val2                 = s->val2;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |126| 
        ldiu      *+fp(2),ar1           ; |126| 
        ldfu      *+ar0(8),f0           ; |126| 
        stf       f0,*+ar1(8)           ; |126| 
	.line	44
;----------------------------------------------------------------------
; 127 | d->calc_val     = s->calc_val;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |127| 
        ldfu      *+ar1(9),f0           ; |127| 40b float hi half
        ldiu      *+fp(2),ar0           ; |127| 
        ldiu      *+ar1(10),r0          ; |127| 40b float lo half
        stf       f0,*+ar0(9)           ; |127| Store high half
        sti       r0,*+ar0(10)          ; |127| Store low half
	.line	45
;----------------------------------------------------------------------
; 128 | d->base_val     = s->base_val;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |128| 
        ldfu      *+ar1(11),f0          ; |128| 40b float hi half
        ldiu      *+fp(2),ar0           ; |128| 
        ldiu      *+ar1(12),r0          ; |128| 40b float lo half
        stf       f0,*+ar0(11)          ; |128| Store high half
        sti       r0,*+ar0(12)          ; |128| Store low half
	.line	46
;----------------------------------------------------------------------
; 129 | d->unit                 = s->unit;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |129| 
        ldiu      *+fp(2),ar0           ; |129| 
        ldiu      *+ar1(13),r0          ; |129| 
        sti       r0,*+ar0(13)          ; |129| 
	.line	47
;----------------------------------------------------------------------
; 130 | d->calc_unit = s->calc_unit;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |130| 
        ldiu      *+fp(2),ar0           ; |130| 
        ldiu      *+ar1(14),r0          ; |130| 
        sti       r0,*+ar0(14)          ; |130| 
	.line	48
;----------------------------------------------------------------------
; 131 | d->class = s->class;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |131| 
        ldiu      *+fp(2),ar1           ; |131| 
        ldiu      *+ar0(15),r0          ; |131| 
        sti       r0,*+ar1(15)          ; |131| 
	.line	49
;----------------------------------------------------------------------
; 132 | d->scale = s->scale;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |132| 
        ldiu      *+fp(2),ar1           ; |132| 
        ldfu      *+ar0(16),f0          ; |132| 
        stf       f0,*+ar1(16)          ; |132| 
	.line	50
;----------------------------------------------------------------------
; 133 | d->scale_long = s->scale_long;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |133| 
        ldiu      *+fp(2),ar1           ; |133| 
        ldfu      *+ar0(17),f0          ; |133| 
        stf       f0,*+ar1(17)          ; |133| 
	.line	51
;----------------------------------------------------------------------
; 134 | d->bound_hi_set = s->bound_hi_set;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |134| 
        ldiu      *+fp(2),ar1           ; |134| 
        ldfu      *+ar0(18),f0          ; |134| 
        stf       f0,*+ar1(18)          ; |134| 
	.line	52
;----------------------------------------------------------------------
; 135 | d->bound_lo_set = s->bound_lo_set;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |135| 
        ldiu      *+fp(2),ar1           ; |135| 
        ldfu      *+ar0(19),f0          ; |135| 
        stf       f0,*+ar1(19)          ; |135| 
	.line	53
;----------------------------------------------------------------------
; 136 | d->alarm_hi_set = s->alarm_hi_set;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |136| 
        ldiu      *+fp(2),ar1           ; |136| 
        ldfu      *+ar0(20),f0          ; |136| 
        stf       f0,*+ar1(20)          ; |136| 
	.line	54
;----------------------------------------------------------------------
; 137 | d->alarm_lo_set = s->alarm_lo_set;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |137| 
        ldiu      *+fp(2),ar1           ; |137| 
        ldfu      *+ar0(21),f0          ; |137| 
        stf       f0,*+ar1(21)          ; |137| 
	.line	56
;----------------------------------------------------------------------
; 139 | for (i=0;i<21;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |139| 
        sti       r0,*+fp(3)            ; |139| 
        cmpi      21,r0                 ; |139| 
        bge       L17                   ; |139| 
;*      Branch Occurs to L17            ; |139| 
L16:        
	.line	57
;----------------------------------------------------------------------
; 140 | d->name[i] = s->name[i];                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |140| 
        ldiu      ar0,ar1               ; |140| 
        addi      *+fp(1),ar0           ; |140| Unsigned
        addi      *+fp(2),ar1           ; |140| Unsigned
        ldiu      *+ar0(22),r0          ; |140| 
        sti       r0,*+ar1(22)          ; |140| 
	.line	56
        ldiu      1,r0                  ; |139| 
        addi      *+fp(3),r0            ; |139| 
        sti       r0,*+fp(3)            ; |139| 
        cmpi      21,r0                 ; |139| 
        blt       L16                   ; |139| 
;*      Branch Occurs to L16            ; |139| 
L17:        
	.line	58
;----------------------------------------------------------------------
; 141 | d->name_r = s->name_r;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |141| 
        ldiu      *+fp(2),ar0           ; |141| 
        ldiu      *+ar1(43),r0          ; |141| 
        sti       r0,*+ar0(43)          ; |141| 
L18:        
	.line	60
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	143,000000000h,3


	.sect	 "initialization"

	.global	_VAR_Initialize
	.sym	_VAR_Initialize,_VAR_Initialize,32,2,0
	.func	163
;******************************************************************************
;* FUNCTION NAME: _VAR_Initialize                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,r1,f2,r2,f3,ar0,ar1,ar2,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_VAR_Initialize:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* rc    assigned to _class
	.sym	_class,19,4,17,32
;* rs    assigned to _calc_unit
	.sym	_calc_unit,20,4,17,32
;* f2    assigned to _scale
	.sym	_scale,2,6,17,32
;* f3    assigned to _scale_long
	.sym	_scale_long,3,6,17,32
;* re    assigned to _STAT
	.sym	_STAT,21,4,17,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_class,2,4,1,32
	.sym	_calc_unit,3,4,1,32
	.sym	_scale,4,6,1,32
	.sym	_scale_long,5,6,1,32
	.sym	_STAT,6,4,1,32
	.sym	_i,7,4,1,32
	.sym	_d,8,24,1,32,.fake9
	.line	1
;----------------------------------------------------------------------
; 163 | void VAR_Initialize(VAR *v, int class, int calc_unit, float scale, floa
;     | t scale_long, int STAT)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 165 | int i;          /* name counter           */                           
; 166 | DPKT* d;        /* dampening variable */                               
;----------------------------------------------------------------------
        sti       re,*+fp(6)            ; |164| 
        stf       f3,*+fp(5)            ; |164| 
        stf       f2,*+fp(4)            ; |164| 
        sti       rs,*+fp(3)            ; |164| 
        sti       rc,*+fp(2)            ; |164| 
        sti       ar2,*+fp(1)           ; |164| 
	.line	6
;----------------------------------------------------------------------
; 168 | v->STAT                 = STAT;                                        
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      re,r0
        sti       r0,*+ar0(3)           ; |168| 
	.line	7
;----------------------------------------------------------------------
; 169 | v->STAT            &= var_NaNum    ^ 0xFFFFFFFF;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |169| 
        ldiu      *+ar0(3),r0           ; |169| 
        andn      8,r0                  ; |169| 
        sti       r0,*+ar0(3)           ; |169| 
	.line	8
;----------------------------------------------------------------------
; 170 | v->STAT            &= var_alarm_lo ^ 0xFFFFFFFF;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |170| 
        ldiu      *+ar0(3),r0           ; |170| 
        andn      128,r0                ; |170| 
        sti       r0,*+ar0(3)           ; |170| 
	.line	9
;----------------------------------------------------------------------
; 171 | v->STAT            &= var_alarm_hi ^ 0xFFFFFFFF;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |171| 
        ldiu      *+ar0(3),r0           ; |171| 
        andn      64,r0                 ; |171| 
        sti       r0,*+ar0(3)           ; |171| 
	.line	10
;----------------------------------------------------------------------
; 172 | v->STAT            &= var_bound_lo ^ 0xFFFFFFFF;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |172| 
        ldiu      *+ar0(3),r0           ; |172| 
        andn      32,r0                 ; |172| 
        sti       r0,*+ar0(3)           ; |172| 
	.line	11
;----------------------------------------------------------------------
; 173 | v->STAT            &= var_bound_hi ^ 0xFFFFFFFF;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |173| 
        ldiu      *+ar0(3),r0           ; |173| 
        andn      16,r0                 ; |173| 
        sti       r0,*+ar0(3)           ; |173| 
	.line	12
;----------------------------------------------------------------------
; 174 | v->STAT            &= var_aux      ^ 0xFFFFFFFF;                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |174| 
        ldiu      *+ar0(3),r0           ; |174| 
        andn      1024,r0               ; |174| 
        sti       r0,*+ar0(3)           ; |174| 
	.line	13
;----------------------------------------------------------------------
; 175 | v->calc_unit    = calc_unit;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |175| 
        ldiu      *+fp(3),r0            ; |175| 
        sti       r0,*+ar0(14)          ; |175| 
	.line	14
;----------------------------------------------------------------------
; 176 | v->unit                 = v->calc_unit;                                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |176| 
        ldiu      ar0,ar1               ; |176| 
        ldiu      *+ar0(14),r0          ; |176| 
        sti       r0,*+ar1(13)          ; |176| 
	.line	15
;----------------------------------------------------------------------
; 177 | v->class                = class;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |177| 
        ldiu      *+fp(2),r0            ; |177| 
        sti       r0,*+ar0(15)          ; |177| 
	.line	16
;----------------------------------------------------------------------
; 178 | v->dampening    = 0.0;                  /* value, in seconds, of dampen
;     | ing factor */                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |178| 
        ldfu      0.0000000000e+00,f0   ; |178| 
        stf       f0,*+ar0(4)           ; |178| 
	.line	17
;----------------------------------------------------------------------
; 179 | v->scale                = scale;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |179| 
        ldfu      *+fp(4),f0            ; |179| 
        stf       f0,*+ar0(16)          ; |179| 
	.line	18
;----------------------------------------------------------------------
; 180 | v->scale_long   = scale_long;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |180| 
        ldfu      *+fp(5),f0            ; |180| 
        stf       f0,*+ar0(17)          ; |180| 
	.line	19
;----------------------------------------------------------------------
; 181 | v->val                  = 0.0;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |181| 
        ldfu      0.0000000000e+00,f0   ; |181| 
        stf       f0,*ar0               ; |181| 
	.line	20
;----------------------------------------------------------------------
; 182 | v->val1                 = 0.0;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |182| 
        ldfu      0.0000000000e+00,f0   ; |182| 
        stf       f0,*+ar0(7)           ; |182| 
	.line	21
;----------------------------------------------------------------------
; 183 | v->val2                 = 0.0;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |183| 
        ldfu      0.0000000000e+00,f0   ; |183| 
        stf       f0,*+ar0(8)           ; |183| 
	.line	22
;----------------------------------------------------------------------
; 184 | v->calc_val     = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |184| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      *+fp(1),ar0           ; |184| 
        ldiu      @CL7+1,r0             ; |184| 40b float lo half
        stf       f0,*+ar0(9)           ; |184| Store high half
        sti       r0,*+ar0(10)          ; |184| Store low half
	.line	23
;----------------------------------------------------------------------
; 185 | v->base_val     = 0.0;                                                 
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |185| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      *+fp(1),ar0           ; |185| 
        ldiu      @CL7+1,r0             ; |185| 40b float lo half
        stf       f0,*+ar0(11)          ; |185| Store high half
        sti       r0,*+ar0(12)          ; |185| Store low half
	.line	24
;----------------------------------------------------------------------
; 186 | v->vect1                =       NULL_PTR;                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |186| 
        ldiu      0,r0                  ; |186| 
        sti       r0,*+ar0(1)           ; |186| 
	.line	25
;----------------------------------------------------------------------
; 187 | v->vect2                = NULL_PTR;                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |187| 
        sti       r0,*+ar0(2)           ; |187| 
	.line	26
;----------------------------------------------------------------------
; 188 | v->aux                  = 0;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |188| 
        sti       r0,*+ar0(6)           ; |188| 
	.line	27
;----------------------------------------------------------------------
; 189 | v->bound_hi_set =  1000000000.0;                                       
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      *+fp(1),ar0           ; |189| 
        ldfu      @CL9,f0               ; |189| 
        stf       f0,*+ar0(18)          ; |189| 
	.line	28
;----------------------------------------------------------------------
; 190 | v->bound_lo_set = -1000000000.0;                                       
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      *+fp(1),ar0           ; |190| 
        ldfu      @CL10,f0              ; |190| 
        stf       f0,*+ar0(19)          ; |190| 
	.line	29
;----------------------------------------------------------------------
; 191 | v->alarm_hi_set =  1000000000.0;                                       
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      *+fp(1),ar0           ; |191| 
        ldfu      @CL9,f0               ; |191| 
        stf       f0,*+ar0(20)          ; |191| 
	.line	30
;----------------------------------------------------------------------
; 192 | v->alarm_lo_set = -1000000000.0;                                       
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      *+fp(1),ar0           ; |192| 
        ldfu      @CL10,f0              ; |192| 
        stf       f0,*+ar0(21)          ; |192| 
	.line	31
;----------------------------------------------------------------------
; 193 | v->damp_count   = 0;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |193| 
        ldiu      0,r0                  ; |193| 
        sti       r0,*+ar0(5)           ; |193| 
	.line	33
;----------------------------------------------------------------------
; 195 | for (i=0;i<21;i++)                                      /* set variable
;     |  name */                                                               
;----------------------------------------------------------------------
        sti       r0,*+fp(7)            ; |195| 
        ldiu      0,r1                  ; |196| 
        cmpi      21,r0                 ; |195| 
        bge       L22                   ; |195| 
;*      Branch Occurs to L22            ; |195| 
L21:        
	.line	34
;----------------------------------------------------------------------
; 196 | v->name[i] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0           ; |196| 
        addi      *+fp(1),ar0           ; |196| Unsigned
        sti       r1,*+ar0(22)          ; |196| 
	.line	33
        ldiu      1,r0                  ; |195| 
        addi      *+fp(7),r0            ; |195| 
        sti       r0,*+fp(7)            ; |195| 
        cmpi      21,r0                 ; |195| 
        blt       L21                   ; |195| 
;*      Branch Occurs to L21            ; |195| 
L22:        
	.line	36
;----------------------------------------------------------------------
; 198 | v->name_r = 0x00;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |198| 
        ldiu      0,r0                  ; |198| 
        sti       r0,*+ar0(43)          ; |198| 
	.line	38
;----------------------------------------------------------------------
; 200 | if ((v->STAT & var_roll)==var_roll) /* check if a roll variable */     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |200| 
        ldiu      512,r0                ; |200| 
        and       *+ar0(3),r0           ; |200| 
        cmpi      512,r0                ; |200| 
        bne       L24                   ; |200| 
;*      Branch Occurs to L24            ; |200| 
	.line	39
;----------------------------------------------------------------------
; 201 | v->bound_lo_set = 0;                                                   
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |201| 
        stf       f0,*+ar0(19)          ; |201| 
L24:        
	.line	41
;----------------------------------------------------------------------
; 203 | if (v->STAT & var_dampen)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |203| 
        ldiu      1,r0                  ; |203| 
        tstb      *+ar0(3),r0           ; |203| 
        beq       L28                   ; |203| 
;*      Branch Occurs to L28            ; |203| 
	.line	43
;----------------------------------------------------------------------
; 205 | d = (DPKT*)List_Pop(&LIST_DAMP_EMPTY);                                 
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,r0              ; |205| 
        ldp       @CL3,DP
        ldiu      @CL3,ar2              ; |205| 
        callu     r0                    ; far call to _List_Pop	; |205| 
                                        ; |205| Far Call Occurs
        sti       r0,*+fp(8)            ; |205| 
	.line	45
;----------------------------------------------------------------------
; 207 | if (d == (DPKT*)NULL)                                                  
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |207| 
        bne       L27                   ; |207| 
;*      Branch Occurs to L27            ; |207| 
	.line	47
;----------------------------------------------------------------------
; 209 | v->dampening = 0.0;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |209| 
        ldfu      0.0000000000e+00,f0   ; |209| 
        stf       f0,*+ar0(4)           ; |209| 
	.line	48
;----------------------------------------------------------------------
; 210 | v->STAT     &= var_dampen ^ 0xFFFFFFFF;                                
; 212 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |210| 
        ldiu      *+ar0(3),r0           ; |210| 
        andn      1,r0                  ; |210| 
        sti       r0,*+ar0(3)           ; |210| 
        bu        L28                   ; |162| 
;*      Branch Occurs to L28            ; |162| 
L27:        
	.line	52
;----------------------------------------------------------------------
; 214 | d->v = v;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(8),ar0           ; |214| 
        ldiu      *+fp(1),r0            ; |214| 
        sti       r0,*+ar0(2)           ; |214| 
	.line	54
;----------------------------------------------------------------------
; 216 | List_Add(&LIST_DAMP, (GENERIC*)d);                                     
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |216| 
        ldiu      *+fp(8),r2            ; |216| 
        ldp       @CL1,DP
        ldiu      @CL1,ar2              ; |216| 
        callu     r0                    ; far call to _List_Add	; |216| 
                                        ; |216| Far Call Occurs
L28:        
	.line	57
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      10,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	219,000000000h,8


	.sect	 ".text"

	.global	_VAR_Update
	.sym	_VAR_Update,_VAR_Update,46,2,0
	.func	236
;******************************************************************************
;* FUNCTION NAME: _VAR_Update                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,fp,ar4,st,rs,re,rc *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 13 Auto + 1 SOE = 16 words        *
;******************************************************************************
_VAR_Update:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* f2    assigned to _valin
	.sym	_valin,2,11,17,64
;* r3    assigned to _check_bounds_only
	.sym	_check_bounds_only,3,14,17,32
;* rc    assigned to _user_units
	.sym	_user_units,19,14,17,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_valin,2,11,1,64
	.sym	_check_bounds_only,4,14,1,32
	.sym	_user_units,5,14,1,32
	.sym	_r,6,14,1,32
	.sym	_i,7,4,1,32
	.sym	_tmp1,8,20,1,32
	.sym	_tmp2,9,20,1,32
	.sym	_t,10,11,1,64
	.sym	_bv,12,11,1,64
	.line	1
;----------------------------------------------------------------------
; 236 | BOOL VAR_Update(VAR *v, long double valin, BOOL check_bounds_only, BOOL
;     |  user_units)                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      13,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 238 | BOOL  r;                /* return               */                     
; 239 | int i;                  /* not used             */                     
; 240 | int* tmp1;              /* holds function       */                     
; 241 | int* tmp2;              /* holds parameter      */                     
; 242 | long double t;  /* user unit value      */                             
; 243 | long double bv; /* base value           */                             
;----------------------------------------------------------------------
        sti       r3,*+fp(4)            ; |237| 
        stf       f2,*+fp(2)            ; |237| Store high half
        sti       rc,*+fp(5)            ; |237| 
        sti       r2,*+fp(3)            ; |237| Store low half
        sti       ar2,*+fp(1)           ; |237| 
	.line	10
;----------------------------------------------------------------------
; 245 | r                       = TRUE;                                        
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |245| 
        sti       r0,*+fp(6)            ; |245| 
	.line	11
;----------------------------------------------------------------------
; 246 | v->base_val = valin;                                                   
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldfu      f2,f0                 ; |246| High precision move
        stf       f0,*+ar0(11)          ; |246| Store high half
        sti       r0,*+ar0(12)          ; |246| Store low half
	.line	13
;----------------------------------------------------------------------
; 248 | if (user_units) /* convert 'base_val' from USER units to calc units */ 
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |248| 
        cmpi      0,r0                  ; |248| 
        beq       L32                   ; |248| 
;*      Branch Occurs to L32            ; |248| 
	.line	14
;----------------------------------------------------------------------
; 249 | v->base_val = Convert(v->class, v->unit, v->calc_unit, valin, 0, v->aux
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1           ; |249| 
        ldp       @CL12,DP
        ldiu      ar1,ar0               ; |249| 
        ldfu      *+fp(2),f2            ; |249| 40b float hi half
        ldiu      ar0,ar4               ; |249| 
        ldiu      @CL12,r0              ; |249| 
        ldiu      ar0,ar2               ; |249| 
        ldiu      *+ar1(14),rc          ; |249| 
        ldiu      *+fp(3),r2            ; |249| 40b float lo half
        ldiu      *+ar0(6),re           ; |249| 
        ldiu      *+ar4(13),r3          ; |249| 
        ldiu      *+ar2(15),ar2         ; |249| 
        ldiu      0,rs                  ; |249| 
        callu     r0                    ; far call to _Convert	; |249| 
                                        ; |249| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |249| 
        stf       f0,*+ar0(11)          ; |249| Store high half
        sti       r0,*+ar0(12)          ; |249| Store low half
L32:        
	.line	16
;----------------------------------------------------------------------
; 251 | if (!check_bounds_only)                                                
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |251| 
        cmpi      0,r0                  ; |251| 
        bne       L35                   ; |251| 
;*      Branch Occurs to L35            ; |251| 
	.line	18
;----------------------------------------------------------------------
; 253 | if(v->vect1)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |253| 
        ldiu      *+ar0(1),r0           ; |253| 
        cmpi      0,r0                  ; |253| 
        beq       L35                   ; |253| 
;*      Branch Occurs to L35            ; |253| 
	.line	20
;----------------------------------------------------------------------
; 255 | tmp1      = vect_v1;                                                   
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |255| 
        ldiu      *ar0,r0               ; |255| 
        sti       r0,*+fp(8)            ; |255| 
	.line	21
;----------------------------------------------------------------------
; 256 | tmp2      = vect_var1;                                                 
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |256| 
        ldiu      *ar0,r0               ; |256| 
        sti       r0,*+fp(9)            ; |256| 
	.line	22
;----------------------------------------------------------------------
; 257 | vect_v1   = v->vect1;   /* variable function  */                       
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      *+fp(1),ar0           ; |257| 
        ldiu      @CL13,ar1             ; |257| 
        ldiu      *+ar0(1),r0           ; |257| 
        sti       r0,*ar1               ; |257| 
	.line	23
;----------------------------------------------------------------------
; 258 | vect_var1 = (int*)v;    /* variable parameter */                       
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |258| 
        ldiu      *+fp(1),r0            ; |258| 
        sti       r0,*ar0               ; |258| 
	.line	25
;----------------------------------------------------------------------
; 260 | asm("           .global _vect_v1  ");                                  
;----------------------------------------------------------------------
		.global _vect_v1  
	.line	26
;----------------------------------------------------------------------
; 261 | asm("           .global _vect_var1");                                  
;----------------------------------------------------------------------
		.global _vect_var1
	.line	27
;----------------------------------------------------------------------
; 262 | PUSH_ALL;                                                              
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
	.line	28
;----------------------------------------------------------------------
; 263 | asm("       ldp             _vect_var1    ");                          
;----------------------------------------------------------------------
	ldp		_vect_var1    
	.line	29
;----------------------------------------------------------------------
; 264 | asm("   ldi             @_vect_var1, AR2 ");    /* pass the var struct
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		@_vect_var1, AR2 
	.line	30
;----------------------------------------------------------------------
; 265 | asm("       ldp             _vect_v1      ");                          
;----------------------------------------------------------------------
	ldp		_vect_v1      
	.line	31
;----------------------------------------------------------------------
; 266 | asm("       ldi             @_vect_v1, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_v1, R0 
	.line	32
;----------------------------------------------------------------------
; 267 | asm("       callnz  R0                        ");           /* call if
;     | vect != NULL */                                                        
;----------------------------------------------------------------------
	callnz	R0		   	  
	.line	33
;----------------------------------------------------------------------
; 268 | POP_ALL;                                                               
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
	.line	35
;----------------------------------------------------------------------
; 270 | vect_v1   = tmp1;                                                      
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |270| 
        ldiu      *+fp(8),r0            ; |270| 
        sti       r0,*ar0               ; |270| 
	.line	36
;----------------------------------------------------------------------
; 271 | vect_var1 = tmp2;                                                      
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |271| 
        ldiu      *+fp(9),r0            ; |271| 
        sti       r0,*ar0               ; |271| 
L35:        
	.line	40
;----------------------------------------------------------------------
; 275 | bv = v->base_val;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |275| 
        ldfu      *+ar0(11),f0          ; |275| 40b float hi half
        ldiu      *+ar0(12),r0          ; |275| 40b float lo half
        stf       f0,*+fp(12)           ; |275| Store high half
        sti       r0,*+fp(13)           ; |275| Store low half
	.line	43
;----------------------------------------------------------------------
; 278 | if (!check_bounds_only)                                                
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |278| 
        cmpi      0,r0                  ; |278| 
        bne       L37                   ; |278| 
;*      Branch Occurs to L37            ; |278| 
	.line	44
;----------------------------------------------------------------------
; 279 | r = VAR_CheckSet_Bounds(v, &bv);                                       
; 280 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      fp,r2                 ; |279| 
        ldiu      ar0,ar2               ; |279| 
        ldiu      @CL15,r0              ; |279| 
        addi      12,r2                 ; |279| 
        callu     r0                    ; far call to _VAR_CheckSet_Bounds	; |279| 
                                        ; |279| Far Call Occurs
        sti       r0,*+fp(6)            ; |279| 
        bu        L38                   ; |235| 
;*      Branch Occurs to L38            ; |235| 
L37:        
	.line	47
;----------------------------------------------------------------------
; 282 | r = VAR_Check_Bounds(v, &bv);                                          
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      fp,r2                 ; |282| 
        ldiu      *+fp(1),ar2           ; |282| 
        ldiu      @CL16,r0              ; |282| 
        addi      12,r2                 ; |282| 
        callu     r0                    ; far call to _VAR_Check_Bounds	; |282| 
                                        ; |282| Far Call Occurs
        sti       r0,*+fp(6)            ; |282| 
	.line	48
;----------------------------------------------------------------------
; 283 | return r;                                                              
;----------------------------------------------------------------------
        bu        L47                   ; |283| 
;*      Branch Occurs to L47            ; |283| 
L38:        
	.line	52
;----------------------------------------------------------------------
; 287 | if ((v->dampening<=0.0) || ((v->STAT & var_dampen)==0))                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |287| 
        ldfu      *+ar0(4),f0           ; |287| 
        cmpf      0.0000000000e+00,f0   ; |287| 
        ble       L40                   ; |287| 
;*      Branch Occurs to L40            ; |287| 
        ldiu      1,r0                  ; |287| 
        tstb      *+ar0(3),r0           ; |287| 
        bne       L44                   ; |287| 
;*      Branch Occurs to L44            ; |287| 
L40:        
	.line	54
;----------------------------------------------------------------------
; 289 | if ((v->STAT & var_NaNum)==0) //if it is a number (not a NaN)          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |289| 
        ldiu      8,r0                  ; |289| 
        tstb      *+ar0(3),r0           ; |289| 
        bne       L44                   ; |289| 
;*      Branch Occurs to L44            ; |289| 
	.line	57
;----------------------------------------------------------------------
; 292 | v->val2 = v->val1;                                                     
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldfu      *+ar0(7),f0           ; |292| 
        stf       f0,*+ar1(8)           ; |292| 
	.line	58
;----------------------------------------------------------------------
; 293 | t               = Convert(v->class, v->calc_unit, v->unit, v->val2, 0,
;     | v->aux);                                                               
;----------------------------------------------------------------------
        ldiu      255,r1                ; |293| 
        ldiu      *+fp(1),ar4           ; |293| 
        ldiu      ar4,ar0               ; |293| 
        ldiu      ar0,ar2               ; |293| 
        ldiu      ar0,ar1               ; |293| 
        ldfu      *+ar4(8),f0           ; |293| 
        ldp       @CL12,DP
        ldfu      f0,f2                 ; |293| Move F32 into F40 for CONV
        ldiu      *+ar4(14),r3          ; |293| 
        ldiu      *+ar0(13),rc          ; |293| 
        ldiu      *+ar2(15),ar2         ; |293| 
        ldiu      *+ar1(6),re           ; |293| 
        andn      r1,f2                 ; |293| Bit mask for F32/F40 conversion
        ldiu      @CL12,r0              ; |293| 
        ldiu      0,rs                  ; |293| 
        callu     r0                    ; far call to _Convert	; |293| 
                                        ; |293| Far Call Occurs
        stf       f0,*+fp(10)           ; |293| Store high half
        sti       r0,*+fp(11)           ; |293| Store low half
	.line	60
;----------------------------------------------------------------------
; 295 | if ((v->STAT & var_round))                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |295| 
        ldiu      256,r0                ; |295| 
        tstb      *+ar0(3),r0           ; |295| 
        beq       L43                   ; |295| 
;*      Branch Occurs to L43            ; |295| 
	.line	61
;----------------------------------------------------------------------
; 296 | v->val = round(t,0);                                                   
; 297 | else                                                                   
;----------------------------------------------------------------------
        ldfu      *+fp(10),f1           ; |296| 40b float hi half
        ldp       @CL17,DP
        ldiu      0,ar2                 ; |296| 
        ldiu      *+fp(11),r1           ; |296| 40b float lo half
        ldiu      @CL17,r0              ; |296| 
        rnd       f1,f2                 ; |296| Demote to low precision
        callu     r0                    ; far call to _round	; |296| 
                                        ; |296| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |296| 
        stf       f0,*ar0               ; |296| 
        bu        L44                   ; |235| 
;*      Branch Occurs to L44            ; |235| 
L43:        
	.line	63
;----------------------------------------------------------------------
; 298 | v->val = t;                                                            
;----------------------------------------------------------------------
        ldfu      *+fp(10),f0           ; |298| 40b float hi half
        ldiu      *+fp(1),ar0           ; |298| 
        ldiu      *+fp(11),r0           ; |298| 40b float lo half
        rnd       f0,f0                 ; |298| Demote to low precision
        stf       f0,*ar0               ; |298| 
L44:        
	.line	68
;----------------------------------------------------------------------
; 303 | if(v->vect2)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |303| 
        ldiu      *+ar0(2),r0           ; |303| 
        cmpi      0,r0                  ; |303| 
        beq       L46                   ; |303| 
;*      Branch Occurs to L46            ; |303| 
	.line	70
;----------------------------------------------------------------------
; 305 | tmp1      = vect_v2;                                                   
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |305| 
        ldiu      *ar0,r0               ; |305| 
        sti       r0,*+fp(8)            ; |305| 
	.line	71
;----------------------------------------------------------------------
; 306 | tmp2      = vect_var2;                                                 
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |306| 
        ldiu      *ar0,r0               ; |306| 
        sti       r0,*+fp(9)            ; |306| 
	.line	72
;----------------------------------------------------------------------
; 307 | vect_v2   = v->vect2;                                                  
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      *+fp(1),ar1           ; |307| 
        ldiu      @CL18,ar0             ; |307| 
        ldiu      *+ar1(2),r0           ; |307| 
        sti       r0,*ar0               ; |307| 
	.line	73
;----------------------------------------------------------------------
; 308 | vect_var2 = (int*)v;                                                   
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |308| 
        ldiu      *+fp(1),r0            ; |308| 
        sti       r0,*ar0               ; |308| 
	.line	75
;----------------------------------------------------------------------
; 310 | asm("           .global _vect_v2  ");                                  
;----------------------------------------------------------------------
		.global _vect_v2  
	.line	76
;----------------------------------------------------------------------
; 311 | asm("           .global _vect_var2");                                  
;----------------------------------------------------------------------
		.global _vect_var2
	.line	77
;----------------------------------------------------------------------
; 312 | PUSH_ALL;                                                              
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
	.line	78
;----------------------------------------------------------------------
; 313 | asm("       ldp             _vect_var2    ");                          
;----------------------------------------------------------------------
	ldp		_vect_var2    
	.line	79
;----------------------------------------------------------------------
; 314 | asm("   ldi             @_vect_var2, AR2 ");    /* pass the var struct
;     | */                                                                     
;----------------------------------------------------------------------
	ldi		@_vect_var2, AR2 
	.line	80
;----------------------------------------------------------------------
; 315 | asm("       ldp             _vect_v2      ");                          
;----------------------------------------------------------------------
	ldp		_vect_v2      
	.line	81
;----------------------------------------------------------------------
; 316 | asm("       ldi             @_vect_v2, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_v2, R0 
	.line	82
;----------------------------------------------------------------------
; 317 | asm("       callnz  R0                        ");           /* call if
;     | vect != NULL */                                                        
;----------------------------------------------------------------------
	callnz	R0		   	  
	.line	83
;----------------------------------------------------------------------
; 318 | POP_ALL;                                                               
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
	.line	85
;----------------------------------------------------------------------
; 320 | vect_v2   = tmp1;                                                      
;----------------------------------------------------------------------
        ldp       @CL18,DP
        ldiu      @CL18,ar0             ; |320| 
        ldiu      *+fp(8),r0            ; |320| 
        sti       r0,*ar0               ; |320| 
	.line	86
;----------------------------------------------------------------------
; 321 | vect_var2 = tmp2;                                                      
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,ar0             ; |321| 
        ldiu      *+fp(9),r0            ; |321| 
        sti       r0,*ar0               ; |321| 
L46:        
	.line	89
;----------------------------------------------------------------------
; 324 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |324| 
L47:        
	.line	90
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |325| 
        ldiu      *fp,fp                ; |325| 
                                        ; Restore SOE Registers
        pop       ar4                   ; |325| 
                                        ; Unallocate the Frame
        subi      15,sp                 ; |325| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	325,000001000h,13


	.sect	 "initialization"

	.global	_VAR_Setup_Unit
	.sym	_VAR_Setup_Unit,_VAR_Setup_Unit,46,2,0
	.func	344
;******************************************************************************
;* FUNCTION NAME: _VAR_Setup_Unit                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f2,f3,ar0,ar1,ar2,st,rc                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 4 Auto + 0 SOE = 8 words          *
;******************************************************************************
_VAR_Setup_Unit:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* rc    assigned to _unit
	.sym	_unit,19,4,17,32
;* f2    assigned to _upper
	.sym	_upper,2,6,17,32
;* f3    assigned to _lower
	.sym	_lower,3,6,17,32
	.sym	_alarm_hi,-2,6,9,32
	.sym	_alarm_lo,-3,6,9,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_unit,2,4,1,32
	.sym	_upper,3,6,1,32
	.sym	_lower,4,6,1,32
	.line	1
;----------------------------------------------------------------------
; 344 | BOOL VAR_Setup_Unit (VAR *v, int unit, float upper, float lower, float
;     | alarm_hi, float alarm_lo)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
        stf       f3,*+fp(4)            ; |345| 
        stf       f2,*+fp(3)            ; |345| 
        sti       rc,*+fp(2)            ; |345| 
        sti       ar2,*+fp(1)           ; |345| 
	.line	3
;----------------------------------------------------------------------
; 346 | v->unit = unit;                                                        
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      rc,r0
        sti       r0,*+ar0(13)          ; |346| 
	.line	5
;----------------------------------------------------------------------
; 348 | if (v->calc_unit==v->unit)                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |348| 
        ldiu      ar0,ar1               ; |348| 
        ldiu      *+ar0(14),r0          ; |348| 
        cmpi      *+ar1(13),r0          ; |348| 
        bne       L51                   ; |348| 
;*      Branch Occurs to L51            ; |348| 
	.line	7
;----------------------------------------------------------------------
; 350 | v->bound_hi_set = upper;                                               
;----------------------------------------------------------------------
        ldfu      *+fp(3),f0            ; |350| 
        stf       f0,*+ar0(18)          ; |350| 
	.line	8
;----------------------------------------------------------------------
; 351 | v->bound_lo_set = lower;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |351| 
        ldfu      *+fp(4),f0            ; |351| 
        stf       f0,*+ar0(19)          ; |351| 
	.line	9
;----------------------------------------------------------------------
; 352 | v->alarm_hi_set = alarm_hi;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |352| 
        ldfu      *-fp(2),f0            ; |352| 
        stf       f0,*+ar0(20)          ; |352| 
	.line	10
;----------------------------------------------------------------------
; 353 | v->alarm_lo_set = alarm_lo;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |353| 
        ldfu      *-fp(3),f0            ; |353| 
        stf       f0,*+ar0(21)          ; |353| 
L51:        
	.line	13
;----------------------------------------------------------------------
; 356 | if ((v->STAT & var_roll)==var_roll)                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |356| 
        ldiu      512,r0                ; |356| 
        and       *+ar0(3),r0           ; |356| 
        cmpi      512,r0                ; |356| 
        bne       L53                   ; |356| 
;*      Branch Occurs to L53            ; |356| 
	.line	14
;----------------------------------------------------------------------
; 357 | v->bound_lo_set = 0;                                                   
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0   ; |357| 
        stf       f0,*+ar0(19)          ; |357| 
L53:        
	.line	16
;----------------------------------------------------------------------
; 359 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |359| 
	.line	17
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |360| 
        ldiu      *fp,fp                ; |360| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |360| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	360,000000000h,4


	.sect	 ".text"

	.global	_VAR_Set_Unit
	.sym	_VAR_Set_Unit,_VAR_Set_Unit,46,2,0
	.func	376
;******************************************************************************
;* FUNCTION NAME: _VAR_Set_Unit                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,f2,r2,r3,ar0,ar2,st,rc                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_VAR_Set_Unit:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* r2    assigned to _unit
	.sym	_unit,2,4,17,32
;* r3    assigned to _check_bounds_only
	.sym	_check_bounds_only,3,14,17,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_unit,2,4,1,32
	.sym	_check_bounds_only,3,14,1,32
	.line	1
;----------------------------------------------------------------------
; 376 | BOOL VAR_Set_Unit(VAR *v, int unit, BOOL check_bounds_only)            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
        sti       r3,*+fp(3)            ; |377| 
        sti       r2,*+fp(2)            ; |377| 
        sti       ar2,*+fp(1)           ; |377| 
	.line	3
;----------------------------------------------------------------------
; 378 | if (check_bounds_only)                                                 
;----------------------------------------------------------------------
        ldiu      r3,r0
        cmpi      0,r0                  ; |378| 
        beq       L58                   ; |378| 
;*      Branch Occurs to L58            ; |378| 
	.line	4
;----------------------------------------------------------------------
; 379 | return TRUE;                                                           
;----------------------------------------------------------------------
        bud       L59                   ; |379| 
	nop
	nop
        ldiu      1,r0                  ; |379| 
;*      Branch Occurs to L59            ; |379| 
L58:        
	.line	6
;----------------------------------------------------------------------
; 381 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	7
;----------------------------------------------------------------------
; 382 | v->unit = unit;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |382| 
        ldiu      *+fp(2),r0            ; |382| 
        sti       r0,*+ar0(13)          ; |382| 
	.line	9
;----------------------------------------------------------------------
; 384 | VAR_Update(v, v->base_val, 0, 0);                                      
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      0,r3                  ; |384| 
        ldiu      *+fp(1),ar0           ; |384| 
        ldiu      0,rc                  ; |384| 
        ldfu      *+ar0(11),f2          ; |384| 40b float hi half
        ldiu      @CL20,r0              ; |384| 
        ldiu      ar0,ar2               ; |384| 
        ldiu      *+ar0(12),r2          ; |384| 40b float lo half
        callu     r0                    ; far call to _VAR_Update	; |384| 
                                        ; |384| Far Call Occurs
	.line	11
;----------------------------------------------------------------------
; 386 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	13
;----------------------------------------------------------------------
; 388 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |388| 
L59:        
	.line	14
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |389| 
        ldiu      *fp,fp                ; |389| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |389| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	389,000000000h,3


	.sect	 ".text"

	.global	_VAR_Set_Unit_Param
	.sym	_VAR_Set_Unit_Param,_VAR_Set_Unit_Param,46,2,0
	.func	409
;******************************************************************************
;* FUNCTION NAME: _VAR_Set_Unit_Param                                         *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r3,ar0,ar1,ar2,ar4,st,rs,re,rc       *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 9 Auto + 1 SOE = 12 words         *
;******************************************************************************
_VAR_Set_Unit_Param:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* r3    assigned to _p
	.sym	_p,3,14,17,32
;* f2    assigned to _val
	.sym	_val,2,6,17,32
;* rc    assigned to _type
	.sym	_type,19,4,17,32
;* rs    assigned to _user_units
	.sym	_user_units,20,14,17,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_p,2,14,1,32
	.sym	_val,3,6,1,32
	.sym	_type,4,4,1,32
	.sym	_user_units,5,14,1,32
	.sym	_i,6,4,1,32
	.sym	_val1,7,11,1,64
	.sym	_uu,9,4,1,32
	.line	1
;----------------------------------------------------------------------
; 409 | BOOL VAR_Set_Unit_Param(VAR *v, unsigned int p, float val, int type, BO
;     | OL user_units)                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      9,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 411 | int i;                          /* not used             */             
; 412 | long double val1;       /* scaled value         */                     
; 413 | int     uu;                             /* unit or calc_unit*/         
;----------------------------------------------------------------------
        sti       rs,*+fp(5)            ; |410| 
        sti       rc,*+fp(4)            ; |410| 
        stf       f2,*+fp(3)            ; |410| 
        sti       r3,*+fp(2)            ; |410| 
        sti       ar2,*+fp(1)           ; |410| 
	.line	7
;----------------------------------------------------------------------
; 415 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	9
;----------------------------------------------------------------------
; 417 | if (type==0)                                                           
;----------------------------------------------------------------------
        ldiu      rc,r0
        cmpi      0,r0                  ; |417| 
        bne       L63                   ; |417| 
;*      Branch Occurs to L63            ; |417| 
	.line	10
;----------------------------------------------------------------------
; 418 | val1 = val;                                                            
;----------------------------------------------------------------------
        ldfu      f2,f0
        ldiu      255,r1                ; |418| 
        andn      r1,f0                 ; |418| Bit mask for F32/F40 conversion
        stf       f0,*+fp(7)            ; |418| Store high half
        sti       r0,*+fp(8)            ; |418| Store low half
        bu        L66                   ; |408| 
;*      Branch Occurs to L66            ; |408| 
L63:        
	.line	11
;----------------------------------------------------------------------
; 419 | else if (type==1)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |419| 
        cmpi      1,r0                  ; |419| 
        bne       L65                   ; |419| 
;*      Branch Occurs to L65            ; |419| 
	.line	12
;----------------------------------------------------------------------
; 420 | val1 = val / v->scale;                                                 
; 421 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |420| 
        ldfu      *+fp(3),f0            ; |420| 
        ldfu      *+ar0(16),f1          ; |420| 
        call      DIV_F30               ; |420| 
                                        ; |420| Call Occurs
        ldiu      255,r1                ; |420| 
        andn      r1,f0                 ; |420| Bit mask for F32/F40 conversion
        stf       f0,*+fp(7)            ; |420| Store high half
        sti       r0,*+fp(8)            ; |420| Store low half
        bu        L66                   ; |408| 
;*      Branch Occurs to L66            ; |408| 
L65:        
	.line	14
;----------------------------------------------------------------------
; 422 | val1 = val / v->scale_long;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |422| 
        ldfu      *+fp(3),f0            ; |422| 
        ldfu      *+ar0(17),f1          ; |422| 
        call      DIV_F30               ; |422| 
                                        ; |422| Call Occurs
        ldiu      255,r1                ; |422| 
        andn      r1,f0                 ; |422| Bit mask for F32/F40 conversion
        stf       f0,*+fp(7)            ; |422| Store high half
        sti       r0,*+fp(8)            ; |422| Store low half
L66:        
	.line	16
;----------------------------------------------------------------------
; 424 | if (user_units)                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |424| 
        cmpi      0,r0                  ; |424| 
        beq       L68                   ; |424| 
;*      Branch Occurs to L68            ; |424| 
	.line	17
;----------------------------------------------------------------------
; 425 | uu = v->unit;                                                          
; 426 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |425| 
        ldiu      *+ar0(13),r0          ; |425| 
        sti       r0,*+fp(9)            ; |425| 
        bu        L69                   ; |408| 
;*      Branch Occurs to L69            ; |408| 
L68:        
	.line	19
;----------------------------------------------------------------------
; 427 | uu = v->calc_unit;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |427| 
        ldiu      *+ar0(14),r0          ; |427| 
        sti       r0,*+fp(9)            ; |427| 
L69:        
	.line	21
;----------------------------------------------------------------------
; 429 | val1 = Convert(v->class, v->unit, v->calc_unit, val1, 0, v->aux);      
; 431 | switch (p)                                                             
; 433 |         case reg_direct_bmax:                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |429| 
        ldp       @CL12,DP
        ldfu      *+fp(7),f2            ; |429| 40b float hi half
        ldiu      ar0,ar1               ; |429| 
        ldiu      ar0,ar2               ; |429| 
        ldiu      ar0,ar4               ; |429| 
        ldiu      @CL12,r0              ; |429| 
        ldiu      *+ar0(14),rc          ; |429| 
        ldiu      *+fp(8),r2            ; |429| 40b float lo half
        ldiu      *+ar1(13),r3          ; |429| 
        ldiu      *+ar2(15),ar2         ; |429| 
        ldiu      *+ar4(6),re           ; |429| 
        ldiu      0,rs                  ; |429| 
        callu     r0                    ; far call to _Convert	; |429| 
                                        ; |429| Far Call Occurs
        stf       f0,*+fp(7)            ; |429| Store high half
        sti       r0,*+fp(8)            ; |429| Store low half
        bu        L79                   ; |408| 
;*      Branch Occurs to L79            ; |408| 
L70:        
	.line	27
;----------------------------------------------------------------------
; 435 | v->bound_hi_set = val1;                                                
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |435| 40b float hi half
        ldiu      *+fp(1),ar0           ; |435| 
        ldiu      *+fp(8),r0            ; |435| 40b float lo half
        rnd       f0,f0                 ; |435| Demote to low precision
        stf       f0,*+ar0(18)          ; |435| 
	.line	29
;----------------------------------------------------------------------
; 437 | if ((v->STAT & var_round))                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |437| 
        ldiu      256,r0                ; |437| 
        tstb      *+ar0(3),r0           ; |437| 
        beq       L83                   ; |437| 
;*      Branch Occurs to L83            ; |437| 
	.line	30
;----------------------------------------------------------------------
; 438 | v->bound_hi_set = round(v->bound_hi_set,0);                            
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      0,ar2                 ; |438| 
        ldfu      *+ar0(18),f2          ; |438| 
        ldiu      @CL17,r0              ; |438| 
        callu     r0                    ; far call to _round	; |438| 
                                        ; |438| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |438| 
        stf       f0,*+ar0(18)          ; |438| 
	.line	32
;----------------------------------------------------------------------
; 440 | break;                                                                 
; 442 | case reg_direct_bmin:                                                  
;----------------------------------------------------------------------
        bu        L83                   ; |440| 
;*      Branch Occurs to L83            ; |440| 
L72:        
	.line	36
;----------------------------------------------------------------------
; 444 | v->bound_lo_set = val1;                                                
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |444| 40b float hi half
        ldiu      *+fp(1),ar0           ; |444| 
        ldiu      *+fp(8),r0            ; |444| 40b float lo half
        rnd       f0,f0                 ; |444| Demote to low precision
        stf       f0,*+ar0(19)          ; |444| 
	.line	38
;----------------------------------------------------------------------
; 446 | if ((v->STAT & var_round))                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |446| 
        ldiu      256,r0                ; |446| 
        tstb      *+ar0(3),r0           ; |446| 
        beq       L83                   ; |446| 
;*      Branch Occurs to L83            ; |446| 
	.line	39
;----------------------------------------------------------------------
; 447 | v->bound_lo_set = round(v->bound_lo_set,0);                            
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      0,ar2                 ; |447| 
        ldfu      *+ar0(19),f2          ; |447| 
        ldiu      @CL17,r0              ; |447| 
        callu     r0                    ; far call to _round	; |447| 
                                        ; |447| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |447| 
        stf       f0,*+ar0(19)          ; |447| 
	.line	41
;----------------------------------------------------------------------
; 449 | break;                                                                 
; 451 | case reg_direct_alarm_hi:                                              
;----------------------------------------------------------------------
        bu        L83                   ; |449| 
;*      Branch Occurs to L83            ; |449| 
L74:        
	.line	45
;----------------------------------------------------------------------
; 453 | v->alarm_hi_set = val1;                                                
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |453| 40b float hi half
        ldiu      *+fp(1),ar0           ; |453| 
        ldiu      *+fp(8),r0            ; |453| 40b float lo half
        rnd       f0,f0                 ; |453| Demote to low precision
        stf       f0,*+ar0(20)          ; |453| 
	.line	47
;----------------------------------------------------------------------
; 455 | if ((v->STAT & var_round))                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |455| 
        ldiu      256,r0                ; |455| 
        tstb      *+ar0(3),r0           ; |455| 
        beq       L83                   ; |455| 
;*      Branch Occurs to L83            ; |455| 
	.line	48
;----------------------------------------------------------------------
; 456 | v->alarm_hi_set = round(v->alarm_hi_set,0);                            
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      0,ar2                 ; |456| 
        ldfu      *+ar0(20),f2          ; |456| 
        ldiu      @CL17,r0              ; |456| 
        callu     r0                    ; far call to _round	; |456| 
                                        ; |456| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |456| 
        stf       f0,*+ar0(20)          ; |456| 
	.line	50
;----------------------------------------------------------------------
; 458 | break;                                                                 
; 460 | case reg_direct_alarm_lo:                                              
;----------------------------------------------------------------------
        bu        L83                   ; |458| 
;*      Branch Occurs to L83            ; |458| 
L76:        
	.line	54
;----------------------------------------------------------------------
; 462 | v->alarm_lo_set = val1;                                                
;----------------------------------------------------------------------
        ldfu      *+fp(7),f0            ; |462| 40b float hi half
        ldiu      *+fp(1),ar0           ; |462| 
        ldiu      *+fp(8),r0            ; |462| 40b float lo half
        rnd       f0,f0                 ; |462| Demote to low precision
        stf       f0,*+ar0(21)          ; |462| 
	.line	56
;----------------------------------------------------------------------
; 464 | if ((v->STAT & var_round))                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |464| 
        ldiu      256,r0                ; |464| 
        tstb      *+ar0(3),r0           ; |464| 
        beq       L83                   ; |464| 
;*      Branch Occurs to L83            ; |464| 
	.line	57
;----------------------------------------------------------------------
; 465 | v->alarm_lo_set = round(v->alarm_lo_set,0);                            
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      0,ar2                 ; |465| 
        ldfu      *+ar0(21),f2          ; |465| 
        ldiu      @CL17,r0              ; |465| 
        callu     r0                    ; far call to _round	; |465| 
                                        ; |465| Far Call Occurs
        ldiu      *+fp(1),ar0           ; |465| 
        stf       f0,*+ar0(21)          ; |465| 
	.line	59
;----------------------------------------------------------------------
; 467 | break;                                                                 
;----------------------------------------------------------------------
        bu        L83                   ; |467| 
;*      Branch Occurs to L83            ; |467| 
L79:        
	.line	23
        ldp       @CL21,DP
        ldiu      *+fp(2),r0            ; |431| 
        cmpi      @CL21,r0              ; |431| 
        beq       L70                   ; |431| 
;*      Branch Occurs to L70            ; |431| 
        ldp       @CL22,DP
        cmpi      @CL22,r0              ; |431| 
        beq       L72                   ; |431| 
;*      Branch Occurs to L72            ; |431| 
        ldp       @CL23,DP
        cmpi      @CL23,r0              ; |431| 
        beq       L74                   ; |431| 
;*      Branch Occurs to L74            ; |431| 
        ldp       @CL24,DP
        cmpi      @CL24,r0              ; |431| 
        beq       L76                   ; |431| 
;*      Branch Occurs to L76            ; |431| 
L83:        
	.line	63
;----------------------------------------------------------------------
; 471 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	64
;----------------------------------------------------------------------
; 472 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |472| 
	.line	65
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |473| 
        ldiu      *fp,fp                ; |473| 
                                        ; Restore SOE Registers
        pop       ar4                   ; |473| 
                                        ; Unallocate the Frame
        subi      11,sp                 ; |473| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	473,000001000h,9


	.sect	 ".text"

	.global	_VAR_Get_Unit_Param
	.sym	_VAR_Get_Unit_Param,_VAR_Get_Unit_Param,38,2,0
	.func	492
;******************************************************************************
;* FUNCTION NAME: _VAR_Get_Unit_Param                                         *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,ar4,ar5,st,rs,re,  *
;*                        rc                                                  *
;*   Regs Saved         : ar4,ar5                                             *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 2 SOE = 12 words         *
;******************************************************************************
_VAR_Get_Unit_Param:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* r2    assigned to _p
	.sym	_p,2,14,17,32
;* r3    assigned to _type
	.sym	_type,3,4,17,32
;* rc    assigned to _user_units
	.sym	_user_units,19,14,17,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_p,2,14,1,32
	.sym	_type,3,4,1,32
	.sym	_user_units,4,14,1,32
	.sym	_i,5,4,1,32
	.sym	_a,6,11,1,64
	.sym	_uu,8,4,1,32
	.line	1
;----------------------------------------------------------------------
; 492 | float VAR_Get_Unit_Param(VAR *v, unsigned int p, int type, BOOL user_un
;     | its)                                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
        push      ar4
        push      ar5
	.line	2
;----------------------------------------------------------------------
; 494 | int i;                  /* not used                     */             
; 495 | long double a;  /* converted unit value */                             
; 496 | int     uu;                     /* user unit value              */     
;----------------------------------------------------------------------
        sti       rc,*+fp(4)            ; |493| 
        sti       r3,*+fp(3)            ; |493| 
        sti       r2,*+fp(2)            ; |493| 
        sti       ar2,*+fp(1)           ; |493| 
	.line	8
;----------------------------------------------------------------------
; 499 | if (user_units)                                                        
;----------------------------------------------------------------------
        ldiu      rc,r0
        cmpi      0,r0                  ; |499| 
        beq       L88                   ; |499| 
;*      Branch Occurs to L88            ; |499| 
	.line	9
;----------------------------------------------------------------------
; 500 | uu = v->unit;                                                          
; 501 | else                                                                   
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      *+ar0(13),r0          ; |500| 
        sti       r0,*+fp(8)            ; |500| 
        bu        L94                   ; |491| 
;*      Branch Occurs to L94            ; |491| 
L88:        
	.line	11
;----------------------------------------------------------------------
; 502 | uu = v->calc_unit;                                                     
; 504 | switch (p)                                                             
; 506 | case reg_direct_bmax:                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |502| 
        ldiu      *+ar0(14),r0          ; |502| 
        sti       r0,*+fp(8)            ; |502| 
        bu        L94                   ; |491| 
;*      Branch Occurs to L94            ; |491| 
L89:        
	.line	17
;----------------------------------------------------------------------
; 508 | a = Convert(v->class, v->calc_unit, v->unit, v->bound_hi_set, 0, v->aux
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |508| 
        ldp       @CL12,DP
        ldiu      255,r1                ; |508| 
        ldiu      ar0,ar2               ; |508| 
        ldiu      ar0,ar4               ; |508| 
        ldiu      ar0,ar5               ; |508| 
        ldfu      *+ar0(18),f0          ; |508| 
        ldiu      ar0,ar1               ; |508| 
        ldiu      *+ar2(13),rc          ; |508| 
        ldiu      *+ar4(14),r3          ; |508| 
        ldfu      f0,f2                 ; |508| Move F32 into F40 for CONV
        ldiu      *+ar5(6),re           ; |508| 
        ldiu      *+ar1(15),ar2         ; |508| 
        ldiu      @CL12,r0              ; |508| 
        andn      r1,f2                 ; |508| Bit mask for F32/F40 conversion
        ldiu      0,rs                  ; |508| 
        callu     r0                    ; far call to _Convert	; |508| 
                                        ; |508| Far Call Occurs
        stf       f0,*+fp(6)            ; |508| Store high half
        sti       r0,*+fp(7)            ; |508| Store low half
	.line	19
;----------------------------------------------------------------------
; 510 | break;                                                                 
; 512 | case reg_direct_bmin:                                                  
;----------------------------------------------------------------------
        bu        L98                   ; |510| 
;*      Branch Occurs to L98            ; |510| 
L90:        
	.line	23
;----------------------------------------------------------------------
; 514 | a = Convert(v->class, v->calc_unit, v->unit, v->bound_lo_set, 0, v->aux
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |514| 
        ldp       @CL12,DP
        ldiu      255,r1                ; |514| 
        ldiu      ar0,ar2               ; |514| 
        ldiu      ar0,ar4               ; |514| 
        ldiu      ar0,ar5               ; |514| 
        ldfu      *+ar0(19),f0          ; |514| 
        ldiu      ar0,ar1               ; |514| 
        ldiu      *+ar2(13),rc          ; |514| 
        ldiu      *+ar4(14),r3          ; |514| 
        ldfu      f0,f2                 ; |514| Move F32 into F40 for CONV
        ldiu      *+ar5(6),re           ; |514| 
        ldiu      *+ar1(15),ar2         ; |514| 
        ldiu      @CL12,r0              ; |514| 
        andn      r1,f2                 ; |514| Bit mask for F32/F40 conversion
        ldiu      0,rs                  ; |514| 
        callu     r0                    ; far call to _Convert	; |514| 
                                        ; |514| Far Call Occurs
        stf       f0,*+fp(6)            ; |514| Store high half
        sti       r0,*+fp(7)            ; |514| Store low half
	.line	25
;----------------------------------------------------------------------
; 516 | break;                                                                 
; 518 | case reg_direct_alarm_hi:                                              
;----------------------------------------------------------------------
        bu        L98                   ; |516| 
;*      Branch Occurs to L98            ; |516| 
L91:        
	.line	29
;----------------------------------------------------------------------
; 520 | a = Convert(v->class, v->calc_unit, v->unit, v->alarm_hi_set, 0, v->aux
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |520| 
        ldp       @CL12,DP
        ldiu      255,r1                ; |520| 
        ldiu      ar0,ar2               ; |520| 
        ldiu      ar0,ar4               ; |520| 
        ldiu      ar0,ar5               ; |520| 
        ldfu      *+ar0(20),f0          ; |520| 
        ldiu      ar0,ar1               ; |520| 
        ldiu      *+ar2(13),rc          ; |520| 
        ldiu      *+ar4(14),r3          ; |520| 
        ldfu      f0,f2                 ; |520| Move F32 into F40 for CONV
        ldiu      *+ar5(6),re           ; |520| 
        ldiu      *+ar1(15),ar2         ; |520| 
        ldiu      @CL12,r0              ; |520| 
        andn      r1,f2                 ; |520| Bit mask for F32/F40 conversion
        ldiu      0,rs                  ; |520| 
        callu     r0                    ; far call to _Convert	; |520| 
                                        ; |520| Far Call Occurs
        stf       f0,*+fp(6)            ; |520| Store high half
        sti       r0,*+fp(7)            ; |520| Store low half
	.line	31
;----------------------------------------------------------------------
; 522 | break;                                                                 
; 524 | case reg_direct_alarm_lo:                                              
;----------------------------------------------------------------------
        bu        L98                   ; |522| 
;*      Branch Occurs to L98            ; |522| 
L92:        
	.line	35
;----------------------------------------------------------------------
; 526 | a = Convert(v->class, v->calc_unit, v->unit, v->alarm_lo_set, 0, v->aux
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |526| 
        ldp       @CL12,DP
        ldiu      255,r1                ; |526| 
        ldiu      ar0,ar2               ; |526| 
        ldiu      ar0,ar4               ; |526| 
        ldiu      ar0,ar5               ; |526| 
        ldfu      *+ar0(21),f0          ; |526| 
        ldiu      ar0,ar1               ; |526| 
        ldiu      *+ar2(13),rc          ; |526| 
        ldiu      *+ar4(14),r3          ; |526| 
        ldfu      f0,f2                 ; |526| Move F32 into F40 for CONV
        ldiu      *+ar5(6),re           ; |526| 
        ldiu      *+ar1(15),ar2         ; |526| 
        ldiu      @CL12,r0              ; |526| 
        andn      r1,f2                 ; |526| Bit mask for F32/F40 conversion
        ldiu      0,rs                  ; |526| 
        callu     r0                    ; far call to _Convert	; |526| 
                                        ; |526| Far Call Occurs
        stf       f0,*+fp(6)            ; |526| Store high half
        sti       r0,*+fp(7)            ; |526| Store low half
	.line	37
;----------------------------------------------------------------------
; 528 | break;                                                                 
;----------------------------------------------------------------------
        bu        L98                   ; |528| 
;*      Branch Occurs to L98            ; |528| 
L94:        
	.line	13
        ldp       @CL21,DP
        ldiu      *+fp(2),r0            ; |504| 
        cmpi      @CL21,r0              ; |504| 
        beq       L89                   ; |504| 
;*      Branch Occurs to L89            ; |504| 
        ldp       @CL22,DP
        cmpi      @CL22,r0              ; |504| 
        beq       L90                   ; |504| 
;*      Branch Occurs to L90            ; |504| 
        ldp       @CL23,DP
        cmpi      @CL23,r0              ; |504| 
        beq       L91                   ; |504| 
;*      Branch Occurs to L91            ; |504| 
        ldp       @CL24,DP
        cmpi      @CL24,r0              ; |504| 
        beq       L92                   ; |504| 
;*      Branch Occurs to L92            ; |504| 
L98:        
	.line	42
;----------------------------------------------------------------------
; 533 | if (type==0)                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |533| 
        cmpi      0,r0                  ; |533| 
        bne       L101                  ; |533| 
;*      Branch Occurs to L101           ; |533| 
	.line	43
;----------------------------------------------------------------------
; 534 | return (float)(a);                                                     
;----------------------------------------------------------------------
        ldfu      *+fp(6),f0            ; |534| 40b float hi half
        bud       L105                  ; |534| 
	nop
        ldiu      *+fp(7),r0            ; |534| 40b float lo half
        rnd       f0,f0                 ; |534| Demote to low precision
;*      Branch Occurs to L105           ; |534| 
L101:        
	.line	44
;----------------------------------------------------------------------
; 535 | else if (type==1)                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |535| 
        cmpi      1,r0                  ; |535| 
        bne       L104                  ; |535| 
;*      Branch Occurs to L104           ; |535| 
	.line	45
;----------------------------------------------------------------------
; 536 | return (float)(a*v->scale);                                            
; 537 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |536| 
        ldiu      255,r2                ; |536| 
        ldfu      *+ar0(16),f0          ; |536| 
        ldfu      f0,f1                 ; |536| Move F32 into F40 for CONV
        ldfu      *+fp(6),f0            ; |536| 40b float hi half
        andn      r2,f1                 ; |536| Bit mask for F32/F40 conversion
        ldiu      *+fp(7),r0            ; |536| 40b float lo half
        call      MPY_LD                ; |536| 
                                        ; |536| Call Occurs
        bud       L105                  ; |536| 
	nop
	nop
        rnd       f0,f0                 ; |536| Demote to low precision
;*      Branch Occurs to L105           ; |536| 
L104:        
	.line	47
;----------------------------------------------------------------------
; 538 | return (float)(a*v->scale_long);                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |538| 
        ldiu      255,r2                ; |538| 
        ldfu      *+ar0(17),f0          ; |538| 
        ldfu      f0,f1                 ; |538| Move F32 into F40 for CONV
        ldfu      *+fp(6),f0            ; |538| 40b float hi half
        andn      r2,f1                 ; |538| Bit mask for F32/F40 conversion
        ldiu      *+fp(7),r0            ; |538| 40b float lo half
        call      MPY_LD                ; |538| 
                                        ; |538| Call Occurs
        rnd       f0,f0                 ; |538| Demote to low precision
L105:        
	.line	48
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |539| 
        ldiu      *fp,fp                ; |539| 
                                        ; Restore SOE Registers
        pop       ar5                   ; |539| 
        pop       ar4                   ; |539| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |539| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	539,000003000h,8


	.sect	 ".text"

	.global	_VAR_NaN
	.sym	_VAR_NaN,_VAR_NaN,32,2,0
	.func	553
;******************************************************************************
;* FUNCTION NAME: _VAR_NaN                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,r1,ar0,ar1,ar2,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_VAR_NaN:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
	.sym	_v,1,24,1,32,.fake6
	.line	1
;----------------------------------------------------------------------
; 553 | void VAR_NaN(VAR *v)                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |554| 
	.line	3
;----------------------------------------------------------------------
; 555 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	5
;----------------------------------------------------------------------
; 557 | if (!(v->STAT&var_NaNproof))                                           
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      2048,r0               ; |557| 
        tstb      *+ar0(3),r0           ; |557| 
        bne       L109                  ; |557| 
;*      Branch Occurs to L109           ; |557| 
	.line	6
;----------------------------------------------------------------------
; 558 | v->STAT |= var_NaNum;                                                  
; 559 | else                                                                   
;----------------------------------------------------------------------
        ldiu      8,r0                  ; |558| 
        or        *+ar0(3),r0           ; |558| 
        sti       r0,*+ar0(3)           ; |558| 
        bu        L110                  ; |552| 
;*      Branch Occurs to L110           ; |552| 
L109:        
	.line	8
;----------------------------------------------------------------------
; 560 | v->STAT &= var_NaNum ^ 0xFFFFFFFF;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |560| 
        ldiu      *+ar0(3),r0           ; |560| 
        andn      8,r0                  ; |560| 
        sti       r0,*+ar0(3)           ; |560| 
L110:        
	.line	10
;----------------------------------------------------------------------
; 562 | v->STAT |= var_alarm_lo;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |562| 
        ldiu      128,r0                ; |562| 
        or        *+ar0(3),r0           ; |562| 
        sti       r0,*+ar0(3)           ; |562| 
	.line	11
;----------------------------------------------------------------------
; 563 | v->STAT |= var_alarm_hi;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |563| 
        ldiu      64,r0                 ; |563| 
        or        *+ar0(3),r0           ; |563| 
        sti       r0,*+ar0(3)           ; |563| 
	.line	12
;----------------------------------------------------------------------
; 564 | v->STAT |= var_bound_lo;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |564| 
        ldiu      32,r0                 ; |564| 
        or        *+ar0(3),r0           ; |564| 
        sti       r0,*+ar0(3)           ; |564| 
	.line	13
;----------------------------------------------------------------------
; 565 | v->STAT |= var_bound_hi;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |565| 
        ldiu      16,r0                 ; |565| 
        or        *+ar0(3),r0           ; |565| 
        sti       r0,*+ar0(3)           ; |565| 
	.line	14
;----------------------------------------------------------------------
; 566 | v->STAT &= var_aux ^ 0xFFFFFFFF;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |566| 
        ldiu      *+ar0(3),r0           ; |566| 
        andn      1024,r0               ; |566| 
        sti       r0,*+ar0(3)           ; |566| 
	.line	16
;----------------------------------------------------------------------
; 568 | if (INITIALIZING || (!(v->STAT & var_NaNproof)))                       
;----------------------------------------------------------------------
        ldp       @CL25,DP
        ldiu      @CL25,ar0             ; |568| 
        ldiu      *ar0,r0               ; |568| 
        cmpi      0,r0                  ; |568| 
        bne       L112                  ; |568| 
;*      Branch Occurs to L112           ; |568| 
        ldiu      *+fp(1),ar0           ; |568| 
        ldiu      2048,r0               ; |568| 
        tstb      *+ar0(3),r0           ; |568| 
        bne       L113                  ; |568| 
;*      Branch Occurs to L113           ; |568| 
L112:        
	.line	18
;----------------------------------------------------------------------
; 570 | v->val1     = NaN_val;                                                 
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar1             ; |570| 
        ldiu      *+fp(1),ar0           ; |570| 
        ldfu      *ar1,f0               ; |570| 
        stf       f0,*+ar0(7)           ; |570| 
	.line	19
;----------------------------------------------------------------------
; 571 | v->val2     = NaN_val;                                                 
;----------------------------------------------------------------------
        ldiu      @CL26,ar1             ; |571| 
        ldiu      *+fp(1),ar0           ; |571| 
        ldfu      *ar1,f0               ; |571| 
        stf       f0,*+ar0(8)           ; |571| 
	.line	20
;----------------------------------------------------------------------
; 572 | v->val      = NaN_val;                                                 
;----------------------------------------------------------------------
        ldiu      @CL26,ar1             ; |572| 
        ldiu      *+fp(1),ar0           ; |572| 
        ldfu      *ar1,f0               ; |572| 
        stf       f0,*ar0               ; |572| 
	.line	21
;----------------------------------------------------------------------
; 573 | v->calc_val = NaN_val;                                                 
;----------------------------------------------------------------------
        ldiu      @CL26,ar0             ; |573| 
        ldfu      *ar0,f0               ; |573| 
        ldiu      255,r1                ; |573| 
        ldiu      *+fp(1),ar0           ; |573| 
        andn      r1,f0                 ; |573| Bit mask for F32/F40 conversion
        stf       f0,*+ar0(9)           ; |573| Store high half
        sti       r0,*+ar0(10)          ; |573| Store low half
	.line	22
;----------------------------------------------------------------------
; 574 | v->base_val = NaN_val;                                                 
;----------------------------------------------------------------------
        ldiu      @CL26,ar0             ; |574| 
        ldfu      *ar0,f0               ; |574| 
        ldiu      *+fp(1),ar0           ; |574| 
        andn      r1,f0                 ; |574| Bit mask for F32/F40 conversion
        stf       f0,*+ar0(11)          ; |574| Store high half
        sti       r0,*+ar0(12)          ; |574| Store low half
L113:        
	.line	25
;----------------------------------------------------------------------
; 577 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	26
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	578,000000000h,1


	.sect	 ".text"

	.global	_VAR_DAMP
	.sym	_VAR_DAMP,_VAR_DAMP,32,2,0
	.func	594
;******************************************************************************
;* FUNCTION NAME: _VAR_DAMP                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,ar4,st,rs,re,rc    *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 16 Auto + 1 SOE = 19 words        *
;******************************************************************************
_VAR_DAMP:
	.sym	_l,1,24,1,32,.fake4
	.sym	_d,2,24,1,32,.fake9
	.sym	_v,3,24,1,32,.fake6
	.sym	_size,4,4,1,32
	.sym	_n,5,4,1,32
	.sym	_i,6,4,1,32
	.sym	_j,7,4,1,32
	.sym	_A,8,6,1,32
	.sym	_t,9,6,1,32
	.sym	_min,10,6,1,32
	.sym	_max,11,6,1,32
	.sym	_s,12,6,1,32
	.sym	_m,13,11,1,64
	.sym	_b,15,11,1,64
	.line	1
;----------------------------------------------------------------------
; 594 | void VAR_DAMP(void)                                                    
; 596 | LIST*   l;                      /* Dampening list
;     |                                          */                            
; 597 | DPKT*   d;                      /* Head of Dampening list
;     |                                  */                                    
; 598 | VAR*    v;                      /* variable associated with dampening l
;     | ist node */                                                            
; 599 | int             size;           /* not used
;     |                                          */                            
; 600 | int             n;                      /* not used
;     |                                                  */                    
; 601 | int             i,j;            /* not used
;     |                                          */                            
; 602 | float   A,t;            /* dampened value; calculated value
;     |          */                                                            
; 603 | float   min, max;       /* unit min and max
;     |                          */                                            
; 604 | float   s;                      /* converted value
;     |                                          */                            
; 605 | long double     m,b;    /* not used
;     |                                  */                                    
; 607 | #define damp_count_delay        50                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      16,sp
        push      ar4
	.line	16
;----------------------------------------------------------------------
; 609 | l = &LIST_DAMP;                                                        
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,r0               ; |609| 
        sti       r0,*+fp(1)            ; |609| 
	.line	17
;----------------------------------------------------------------------
; 610 | d = (DPKT*)l->head;                                                    
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *ar0,r0               ; |610| 
        sti       r0,*+fp(2)            ; |610| 
	.line	19
;----------------------------------------------------------------------
; 612 | while(d!=(DPKT*)0)                                                     
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |612| 
        beq       L134                  ; |612| 
;*      Branch Occurs to L134           ; |612| 
L117:        
	.line	21
;----------------------------------------------------------------------
; 614 | v = d->v;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |614| 
        ldiu      *+ar0(2),r0           ; |614| 
        sti       r0,*+fp(3)            ; |614| 
	.line	22
;----------------------------------------------------------------------
; 615 | v->damp_count++;                                                       
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r0                  ; |615| 
        addi      *+ar0(5),r0           ; |615| 
        sti       r0,*+ar0(5)           ; |615| 
	.line	25
;----------------------------------------------------------------------
; 618 | if (v->damp_count>=damp_count_delay)                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |618| 
        ldiu      *+ar0(5),r0           ; |618| 
        cmpi      50,r0                 ; |618| 
        blt       L119                  ; |618| 
;*      Branch Occurs to L119           ; |618| 
	.line	26
;----------------------------------------------------------------------
; 619 | v->damp_count = damp_count_delay;                                      
;----------------------------------------------------------------------
        ldiu      50,r0                 ; |619| 
        sti       r0,*+ar0(5)           ; |619| 
L119:        
	.line	29
;----------------------------------------------------------------------
; 622 | if ((v->dampening <= 0.0) || ((v->STAT & var_dampen)==0) || (v->damp_co
;     | unt<damp_count_delay))                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |622| 
        ldfu      *+ar0(4),f0           ; |622| 
        cmpf      0.0000000000e+00,f0   ; |622| 
        ble       L122                  ; |622| 
;*      Branch Occurs to L122           ; |622| 
        ldiu      1,r0                  ; |622| 
        tstb      *+ar0(3),r0           ; |622| 
        beq       L122                  ; |622| 
;*      Branch Occurs to L122           ; |622| 
        ldiu      *+ar0(5),r0           ; |622| 
        cmpi      50,r0                 ; |622| 
        bge       L123                  ; |622| 
;*      Branch Occurs to L123           ; |622| 
L122:        
	.line	30
;----------------------------------------------------------------------
; 623 | v->val2 = v->val1;                                                     
; 624 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |623| 
        ldiu      ar0,ar1               ; |623| 
        ldfu      *+ar0(7),f0           ; |623| 
        stf       f0,*+ar1(8)           ; |623| 
        bu        L130                  ; |593| 
;*      Branch Occurs to L130           ; |593| 
L123:        
	.line	33
;----------------------------------------------------------------------
; 626 | A = 1 - exp(-1 / (v->dampening*10.0));                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |626| 
        ldp       @CL27,DP
        ldfu      *+ar0(4),f1           ; |626| 
        ldfu      @CL27,f0              ; |626| 
        mpyf      1.0000000000e+01,f1   ; |626| 
        call      DIV_F30               ; |626| 
                                        ; |626| Call Occurs
        ldp       @CL28,DP
        ldiu      @CL28,r1              ; |626| 
        ldfu      f0,f2                 ; |626| 
        callu     r1                    ; far call to _exp	; |626| 
                                        ; |626| Far Call Occurs
        subrf     1.0000000000e+00,f0   ; |626| 
        stf       f0,*+fp(8)            ; |626| 
	.line	34
;----------------------------------------------------------------------
; 627 | t = (A * v->val1) + ((1-A) * v->val2);                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1           ; |627| 
        ldiu      ar1,ar0               ; |627| 
        ldfu      *+ar1(7),f1           ; |627| 
        subrf     1.0000000000e+00,f0   ; |627| 
        mpyf      *+fp(8),f1            ; |627| 
        mpyf      *+ar0(8),f0           ; |627| 
        addf3     f1,f0,f0              ; |627| 
        stf       f0,*+fp(9)            ; |627| 
	.line	36
;----------------------------------------------------------------------
; 629 | if ((v->STAT & var_no_bound)==0)                                       
;----------------------------------------------------------------------
        ldiu      2,r0                  ; |629| 
        tstb      *+ar0(3),r0           ; |629| 
        bne       L129                  ; |629| 
;*      Branch Occurs to L129           ; |629| 
	.line	38
;----------------------------------------------------------------------
; 631 | max = VAR_Get_Unit_Param(v, reg_direct_bmax, 0, 0);                    
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      0,rc                  ; |631| 
        ldiu      @CL29,r0              ; |631| 
        ldiu      ar0,ar2               ; |631| 
        ldp       @CL21,DP
        ldiu      0,r3                  ; |631| 
        ldiu      @CL21,r2              ; |631| 
        callu     r0                    ; far call to _VAR_Get_Unit_Param	; |631| 
                                        ; |631| Far Call Occurs
        stf       f0,*+fp(11)           ; |631| 
	.line	39
;----------------------------------------------------------------------
; 632 | min = VAR_Get_Unit_Param(v, reg_direct_bmin, 0, 0);                    
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      0,rc                  ; |632| 
        ldiu      @CL29,r0              ; |632| 
        ldiu      *+fp(3),ar2           ; |632| 
        ldp       @CL22,DP
        ldiu      0,r3                  ; |632| 
        ldiu      @CL22,r2              ; |632| 
        callu     r0                    ; far call to _VAR_Get_Unit_Param	; |632| 
                                        ; |632| Far Call Occurs
        stf       f0,*+fp(10)           ; |632| 
	.line	42
;----------------------------------------------------------------------
; 635 | if ( t>max )                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |635| 
        cmpf      *+fp(11),f0           ; |635| 
        ble       L126                  ; |635| 
;*      Branch Occurs to L126           ; |635| 
	.line	43
;----------------------------------------------------------------------
; 636 | v->val2 = max;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |636| 
        ldfu      *+fp(11),f0           ; |636| 
        stf       f0,*+ar0(8)           ; |636| 
        bu        L130                  ; |593| 
;*      Branch Occurs to L130           ; |593| 
L126:        
	.line	44
;----------------------------------------------------------------------
; 637 | else if ( t<min )                                                      
;----------------------------------------------------------------------
        ldfu      *+fp(9),f0            ; |637| 
        cmpf      *+fp(10),f0           ; |637| 
        bge       L128                  ; |637| 
;*      Branch Occurs to L128           ; |637| 
	.line	45
;----------------------------------------------------------------------
; 638 | v->val2 = min;                                                         
; 639 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |638| 
        ldfu      *+fp(10),f0           ; |638| 
        stf       f0,*+ar0(8)           ; |638| 
        bu        L130                  ; |593| 
;*      Branch Occurs to L130           ; |593| 
L128:        
	.line	47
;----------------------------------------------------------------------
; 640 | v->val2 = t;                                                           
; 642 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |640| 
        ldfu      *+fp(9),f0            ; |640| 
        stf       f0,*+ar0(8)           ; |640| 
        bu        L130                  ; |593| 
;*      Branch Occurs to L130           ; |593| 
L129:        
	.line	50
;----------------------------------------------------------------------
; 643 | v->val2 = t;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |643| 
        ldfu      *+fp(9),f0            ; |643| 
        stf       f0,*+ar0(8)           ; |643| 
L130:        
	.line	54
;----------------------------------------------------------------------
; 647 | s = v->val2;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |647| 
        ldfu      *+ar0(8),f0           ; |647| 
        stf       f0,*+fp(12)           ; |647| 
	.line	55
;----------------------------------------------------------------------
; 648 | t = Convert(v->class, v->calc_unit, v->unit, s, 0, v->aux);            
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      ar0,ar4
        ldiu      ar0,ar2
        ldfu      f0,f1
        ldiu      ar0,ar1
        ldiu      *+ar0(13),rc          ; |648| 
        ldiu      255,r0                ; |648| 
        ldiu      *+ar4(14),r3          ; |648| 
        ldfu      f1,f2                 ; |648| Move F32 into F40 for CONV
        ldiu      *+ar2(15),ar2         ; |648| 
        ldiu      *+ar1(6),re           ; |648| 
        andn      r0,f2                 ; |648| Bit mask for F32/F40 conversion
        ldiu      @CL12,r0              ; |648| 
        ldiu      0,rs                  ; |648| 
        callu     r0                    ; far call to _Convert	; |648| 
                                        ; |648| Far Call Occurs
        rnd       f0,f0                 ; |648| Demote to low precision
        stf       f0,*+fp(9)            ; |648| 
	.line	58
;----------------------------------------------------------------------
; 651 | if ((v->STAT & var_round))                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |651| 
        ldiu      256,r0                ; |651| 
        tstb      *+ar0(3),r0           ; |651| 
        beq       L132                  ; |651| 
;*      Branch Occurs to L132           ; |651| 
	.line	59
;----------------------------------------------------------------------
; 652 | v->val = round(t,0);                                                   
; 653 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldfu      *+fp(9),f2            ; |652| 
        ldiu      0,ar2                 ; |652| 
        ldiu      @CL17,r0              ; |652| 
        callu     r0                    ; far call to _round	; |652| 
                                        ; |652| Far Call Occurs
        ldiu      *+fp(3),ar0           ; |652| 
        stf       f0,*ar0               ; |652| 
        bu        L133                  ; |593| 
;*      Branch Occurs to L133           ; |593| 
L132:        
	.line	61
;----------------------------------------------------------------------
; 654 | v->val = t;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |654| 
        ldfu      *+fp(9),f0            ; |654| 
        stf       f0,*ar0               ; |654| 
L133:        
	.line	65
;----------------------------------------------------------------------
; 658 | d = (DPKT*) d->next;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0           ; |658| 
        ldiu      *+ar0(1),r0           ; |658| 
        sti       r0,*+fp(2)            ; |658| 
	.line	19
        cmpi      0,r0                  ; |612| 
        bne       L117                  ; |612| 
;*      Branch Occurs to L117           ; |612| 
L134:        
	.line	67
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
                                        ; Unallocate the Frame
        subi      18,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	660,000001000h,16


	.sect	 ".text"

	.global	_f_compare
	.sym	_f_compare,_f_compare,36,2,0
	.func	678
;******************************************************************************
;* FUNCTION NAME: _f_compare                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f2,r3,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_f_compare:
;* ar2   assigned to _s
	.sym	_s,10,22,17,32
;* f2    assigned to _r
	.sym	_r,2,6,17,32
;* r3    assigned to _reset
	.sym	_reset,3,14,17,32
	.sym	_s,1,22,1,32
	.sym	_r,2,6,1,32
	.sym	_reset,3,14,1,32
	.line	1
;----------------------------------------------------------------------
; 678 | int f_compare(float* s, float r, BOOL reset)                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
        sti       r3,*+fp(3)            ; |679| 
        stf       f2,*+fp(2)            ; |679| 
        sti       ar2,*+fp(1)           ; |679| 
	.line	3
;----------------------------------------------------------------------
; 680 | if (s[0]<(r-tol))                                                      
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      ar2,ar0               ; |680| 
        ldfu      @CL30,f0              ; |680| 
        subrf     *+fp(2),f0            ; |680| 
        cmpf3     f0,*ar0               ; |680| 
        bge       L139                  ; |680| 
;*      Branch Occurs to L139           ; |680| 
	.line	4
;----------------------------------------------------------------------
; 681 | return -1;                                                             
;----------------------------------------------------------------------
        bud       L145                  ; |681| 
	nop
	nop
        ldiu      -1,r0                 ; |681| 
;*      Branch Occurs to L145           ; |681| 
L139:        
	.line	5
;----------------------------------------------------------------------
; 682 | else if (s[0]>(r+tol))                                                 
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      *+fp(1),ar0           ; |682| 
        ldfu      @CL30,f0              ; |682| 
        addf      *+fp(2),f0            ; |682| 
        cmpf3     f0,*ar0               ; |682| 
        ble       L142                  ; |682| 
;*      Branch Occurs to L142           ; |682| 
	.line	6
;----------------------------------------------------------------------
; 683 | return 1;                                                              
; 684 | else                                                                   
;----------------------------------------------------------------------
        bud       L145                  ; |683| 
	nop
	nop
        ldiu      1,r0                  ; |683| 
;*      Branch Occurs to L145           ; |683| 
L142:        
	.line	9
;----------------------------------------------------------------------
; 686 | if (reset)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |686| 
        cmpi      0,r0                  ; |686| 
        beq       L144                  ; |686| 
;*      Branch Occurs to L144           ; |686| 
	.line	10
;----------------------------------------------------------------------
; 687 | s[0] = r;       /* force to compared value */                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |687| 
        ldfu      *+fp(2),f0            ; |687| 
        stf       f0,*ar0               ; |687| 
L144:        
	.line	12
;----------------------------------------------------------------------
; 689 | return 0;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |689| 
L145:        
	.line	14
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |691| 
        ldiu      *fp,fp                ; |691| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |691| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	691,000000000h,3


	.sect	 ".text"

	.global	_l_compare
	.sym	_l_compare,_l_compare,36,2,0
	.func	709
;******************************************************************************
;* FUNCTION NAME: _l_compare                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,f2,r3,ar0,ar2,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_l_compare:
;* ar2   assigned to _s
	.sym	_s,10,27,17,32
;* f2    assigned to _r
	.sym	_r,2,11,17,64
;* r3    assigned to _reset
	.sym	_reset,3,14,17,32
	.sym	_s,1,27,1,32
	.sym	_r,2,11,1,64
	.sym	_reset,4,14,1,32
	.line	1
;----------------------------------------------------------------------
; 709 | int l_compare(long double* s, long double r, BOOL reset)               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
        sti       r3,*+fp(4)            ; |710| 
        stf       f2,*+fp(2)            ; |710| Store high half
        sti       r2,*+fp(3)            ; |710| Store low half
        sti       ar2,*+fp(1)           ; |710| 
	.line	3
;----------------------------------------------------------------------
; 711 | if (s[0]<(r-tol))                                                      
;----------------------------------------------------------------------
        ldp       @CL31+0,DP
        ldfu      @CL31+0,f0            ; |711| 40b float hi half
        ldfu      f2,f1                 ; |711| High precision move
        ldp       @CL31+1,DP
        ldiu      ar2,ar0               ; |711| 
        ldiu      @CL31+1,r0            ; |711| 40b float lo half
        subf3     f0,f1,f0              ; |711| 
        cmpf3     f0,*ar0               ; |711| 
        bge       L150                  ; |711| 
;*      Branch Occurs to L150           ; |711| 
	.line	4
;----------------------------------------------------------------------
; 712 | return -1;                                                             
;----------------------------------------------------------------------
        bud       L156                  ; |712| 
	nop
	nop
        ldiu      -1,r0                 ; |712| 
;*      Branch Occurs to L156           ; |712| 
L150:        
	.line	5
;----------------------------------------------------------------------
; 713 | else if (s[0]>(r+tol))                                                 
;----------------------------------------------------------------------
        ldp       @CL31+0,DP
        ldiu      *+fp(1),ar0           ; |713| 
        ldfu      *+fp(2),f1            ; |713| 40b float hi half
        ldfu      @CL31+0,f0            ; |713| 40b float hi half
        ldfu      *ar0,f2               ; |713| 40b float hi half
        ldp       @CL31+1,DP
        ldiu      *+fp(3),r1            ; |713| 40b float lo half
        ldiu      @CL31+1,r0            ; |713| 40b float lo half
        ldiu      *+ar0,r2              ; |713| 40b float lo half
        addf      f1,f0                 ; |713| High Precision ADD
        cmpf      f0,f2                 ; |713| 
        ble       L153                  ; |713| 
;*      Branch Occurs to L153           ; |713| 
	.line	6
;----------------------------------------------------------------------
; 714 | return 1;                                                              
; 715 | else                                                                   
;----------------------------------------------------------------------
        bud       L156                  ; |714| 
	nop
	nop
        ldiu      1,r0                  ; |714| 
;*      Branch Occurs to L156           ; |714| 
L153:        
	.line	9
;----------------------------------------------------------------------
; 717 | if (reset)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |717| 
        cmpi      0,r0                  ; |717| 
        beq       L155                  ; |717| 
;*      Branch Occurs to L155           ; |717| 
	.line	10
;----------------------------------------------------------------------
; 718 | s[0] = r;       /* force to compared value */                          
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0            ; |718| 40b float hi half
        ldiu      *+fp(1),ar0           ; |718| 
        ldiu      *+fp(3),r0            ; |718| 40b float lo half
        stf       f0,*ar0               ; |718| Store high half
        sti       r0,*+ar0              ; |718| Store low half
L155:        
	.line	12
;----------------------------------------------------------------------
; 720 | return 0;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |720| 
L156:        
	.line	14
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |722| 
        ldiu      *fp,fp                ; |722| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |722| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	722,000000000h,4


	.sect	 ".text"

	.global	_VAR_CheckSet_Bounds
	.sym	_VAR_CheckSet_Bounds,_VAR_CheckSet_Bounds,46,2,0
	.func	737
;******************************************************************************
;* FUNCTION NAME: _VAR_CheckSet_Bounds                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,f3,r3,ar0,ar1,ar2,st              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_VAR_CheckSet_Bounds:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* r2    assigned to _t
	.sym	_t,2,27,17,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_t,2,27,1,32
	.sym	_r,3,14,1,32
	.line	1
;----------------------------------------------------------------------
; 737 | BOOL VAR_CheckSet_Bounds(VAR* v, long double* t)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 739 | BOOL r; /* return value */                                             
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |738| 
        sti       ar2,*+fp(1)           ; |738| 
	.line	5
;----------------------------------------------------------------------
; 741 | r = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |741| 
        sti       r0,*+fp(3)            ; |741| 
	.line	7
;----------------------------------------------------------------------
; 743 | if ((v->STAT & var_no_alarm)==0)                                       
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      4,r0                  ; |743| 
        tstb      *+ar0(3),r0           ; |743| 
        bne       L164                  ; |743| 
;*      Branch Occurs to L164           ; |743| 
	.line	9
;----------------------------------------------------------------------
; 745 | if (l_compare(t, v->alarm_hi_set, 1)>0)                                
;----------------------------------------------------------------------
        ldfu      *+ar0(20),f0          ; |745| 
        ldp       @CL32,DP
        ldiu      255,r3                ; |745| 
        ldiu      r2,ar2                ; |745| 
        ldfu      f0,f2                 ; |745| Move F32 into F40 for CONV
        ldiu      @CL32,r1              ; |745| 
        andn      r3,f2                 ; |745| Bit mask for F32/F40 conversion
        ldiu      1,r3                  ; |745| 
        callu     r1                    ; far call to _l_compare	; |745| 
                                        ; |745| Far Call Occurs
        cmpi      0,r0                  ; |745| 
        ble       L161                  ; |745| 
;*      Branch Occurs to L161           ; |745| 
	.line	11
;----------------------------------------------------------------------
; 747 | v->STAT          &= var_alarm_lo ^ 0xFFFFFFFF;                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |747| 
        ldiu      *+ar0(3),r0           ; |747| 
        andn      128,r0                ; |747| 
        sti       r0,*+ar0(3)           ; |747| 
	.line	12
;----------------------------------------------------------------------
; 748 | v->STAT          |= var_alarm_hi;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |748| 
        ldiu      64,r0                 ; |748| 
        or        *+ar0(3),r0           ; |748| 
        sti       r0,*+ar0(3)           ; |748| 
	.line	13
;----------------------------------------------------------------------
; 749 | DIO_ALARM.val = TRUE;                                                  
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |749| 
        ldiu      1,r0                  ; |749| 
        sti       r0,*ar0               ; |749| 
        bu        L165                  ; |736| 
;*      Branch Occurs to L165           ; |736| 
L161:        
	.line	15
;----------------------------------------------------------------------
; 751 | else if (l_compare(t, v->alarm_lo_set, 1)<0)                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |751| 
        ldp       @CL32,DP
        ldiu      255,r3                ; |751| 
        ldiu      *+fp(2),ar2           ; |751| 
        ldfu      *+ar0(21),f0          ; |751| 
        ldiu      @CL32,r1              ; |751| 
        ldfu      f0,f2                 ; |751| Move F32 into F40 for CONV
        andn      r3,f2                 ; |751| Bit mask for F32/F40 conversion
        ldiu      1,r3                  ; |751| 
        callu     r1                    ; far call to _l_compare	; |751| 
                                        ; |751| Far Call Occurs
        cmpi      0,r0                  ; |751| 
        bge       L163                  ; |751| 
;*      Branch Occurs to L163           ; |751| 
	.line	17
;----------------------------------------------------------------------
; 753 | v->STAT          &= var_alarm_hi ^ 0xFFFFFFFF;                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |753| 
        ldiu      *+ar0(3),r0           ; |753| 
        andn      64,r0                 ; |753| 
        sti       r0,*+ar0(3)           ; |753| 
	.line	18
;----------------------------------------------------------------------
; 754 | v->STAT          |= var_alarm_lo;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |754| 
        ldiu      128,r0                ; |754| 
        or        *+ar0(3),r0           ; |754| 
        sti       r0,*+ar0(3)           ; |754| 
	.line	19
;----------------------------------------------------------------------
; 755 | DIO_ALARM.val = TRUE;                                                  
; 757 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |755| 
        ldiu      1,r0                  ; |755| 
        sti       r0,*ar0               ; |755| 
        bu        L165                  ; |736| 
;*      Branch Occurs to L165           ; |736| 
L163:        
	.line	23
;----------------------------------------------------------------------
; 759 | v->STAT &= var_alarm_lo ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |759| 
        ldiu      *+ar0(3),r0           ; |759| 
        andn      128,r0                ; |759| 
        sti       r0,*+ar0(3)           ; |759| 
	.line	24
;----------------------------------------------------------------------
; 760 | v->STAT &= var_alarm_hi ^ 0xFFFFFFFF;                                  
; 763 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |760| 
        ldiu      *+ar0(3),r0           ; |760| 
        andn      64,r0                 ; |760| 
        sti       r0,*+ar0(3)           ; |760| 
        bu        L165                  ; |736| 
;*      Branch Occurs to L165           ; |736| 
L164:        
	.line	29
;----------------------------------------------------------------------
; 765 | v->STAT &= var_alarm_lo ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |765| 
        ldiu      *+ar0(3),r0           ; |765| 
        andn      128,r0                ; |765| 
        sti       r0,*+ar0(3)           ; |765| 
	.line	30
;----------------------------------------------------------------------
; 766 | v->STAT &= var_alarm_hi ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |766| 
        ldiu      *+ar0(3),r0           ; |766| 
        andn      64,r0                 ; |766| 
        sti       r0,*+ar0(3)           ; |766| 
L165:        
	.line	33
;----------------------------------------------------------------------
; 769 | if ((v->STAT & var_roll)==var_roll)                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |769| 
        ldiu      512,r0                ; |769| 
        and       *+ar0(3),r0           ; |769| 
        cmpi      512,r0                ; |769| 
        bne       L168                  ; |769| 
;*      Branch Occurs to L168           ; |769| 
	.line	35
;----------------------------------------------------------------------
; 771 | v->STAT &= var_bound_lo ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+ar0(3),r0           ; |771| 
        andn      32,r0                 ; |771| 
        sti       r0,*+ar0(3)           ; |771| 
	.line	36
;----------------------------------------------------------------------
; 772 | v->STAT &= var_bound_hi ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |772| 
        ldiu      *+ar0(3),r0           ; |772| 
        andn      16,r0                 ; |772| 
        sti       r0,*+ar0(3)           ; |772| 
	.line	37
;----------------------------------------------------------------------
; 773 | t[0]     =  fmod(t[0], v->bound_hi_set);                               
;----------------------------------------------------------------------
        ldp       @CL34,DP
        ldiu      *+fp(2),ar1           ; |773| 
        ldiu      *+fp(1),ar0           ; |773| 
        ldfu      *ar1,f0               ; |773| 40b float hi half
        ldfu      *+ar0(18),f3          ; |773| 
        ldiu      @CL34,r1              ; |773| 
        ldiu      *+ar1,r0              ; |773| 40b float lo half
        rnd       f0,f2                 ; |773| Demote to low precision
        callu     r1                    ; far call to _fmod	; |773| 
                                        ; |773| Far Call Occurs
        ldiu      255,r1                ; |773| 
        ldiu      *+fp(2),ar0           ; |773| 
        andn      r1,f0                 ; |773| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |773| Store high half
        sti       r0,*+ar0              ; |773| Store low half
	.line	39
;----------------------------------------------------------------------
; 775 | if (t[0] < 0.0)                                                        
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldiu      *+fp(2),ar0           ; |775| 
        ldfu      @CL7+0,f0             ; |775| 40b float hi half
        ldfu      *ar0,f1               ; |775| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      @CL7+1,r0             ; |775| 40b float lo half
        ldiu      *+ar0,r1              ; |775| 40b float lo half
        cmpf      f0,f1                 ; |775| 
        bge       L179                  ; |775| 
;*      Branch Occurs to L179           ; |775| 
	.line	40
;----------------------------------------------------------------------
; 776 | t[0] = 0.0;                                                            
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |776| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      @CL7+1,r0             ; |776| 40b float lo half
        stf       f0,*ar0               ; |776| Store high half
        sti       r0,*+ar0              ; |776| Store low half
        bu        L179                  ; |736| 
;*      Branch Occurs to L179           ; |736| 
L168:        
	.line	42
;----------------------------------------------------------------------
; 778 | else if ((v->STAT & var_no_bound)==0)                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |778| 
        ldiu      2,r0                  ; |778| 
        tstb      *+ar0(3),r0           ; |778| 
        bne       L178                  ; |778| 
;*      Branch Occurs to L178           ; |778| 
	.line	44
;----------------------------------------------------------------------
; 780 | if (l_compare(t, v->bound_hi_set, 1)>0)                                
;----------------------------------------------------------------------
        ldfu      *+ar0(18),f0          ; |780| 
        ldp       @CL32,DP
        ldiu      255,r3                ; |780| 
        ldiu      *+fp(2),ar2           ; |780| 
        ldfu      f0,f2                 ; |780| Move F32 into F40 for CONV
        ldiu      @CL32,r1              ; |780| 
        andn      r3,f2                 ; |780| Bit mask for F32/F40 conversion
        ldiu      1,r3                  ; |780| 
        callu     r1                    ; far call to _l_compare	; |780| 
                                        ; |780| Far Call Occurs
        cmpi      0,r0                  ; |780| 
        ble       L173                  ; |780| 
;*      Branch Occurs to L173           ; |780| 
	.line	46
;----------------------------------------------------------------------
; 782 | v->STAT &= var_bound_lo ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |782| 
        ldiu      *+ar0(3),r0           ; |782| 
        andn      32,r0                 ; |782| 
        sti       r0,*+ar0(3)           ; |782| 
	.line	47
;----------------------------------------------------------------------
; 783 | v->STAT |= var_bound_hi;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |783| 
        ldiu      16,r0                 ; |783| 
        or        *+ar0(3),r0           ; |783| 
        sti       r0,*+ar0(3)           ; |783| 
	.line	48
;----------------------------------------------------------------------
; 784 | t[0]     = v->bound_hi_set;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |784| 
        ldfu      *+ar0(18),f0          ; |784| 
        ldiu      255,r1                ; |784| 
        ldiu      *+fp(2),ar0           ; |784| 
        andn      r1,f0                 ; |784| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |784| Store high half
        sti       r0,*+ar0              ; |784| Store low half
	.line	50
;----------------------------------------------------------------------
; 786 | if ((v->STAT & var_no_alarm)==0)                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |786| 
        ldiu      4,r0                  ; |786| 
        tstb      *+ar0(3),r0           ; |786| 
        bne       L172                  ; |786| 
;*      Branch Occurs to L172           ; |786| 
	.line	51
;----------------------------------------------------------------------
; 787 | DIAGNOSTICS[0] |= ERROR_VAR_BOUNDARY;                                  
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |787| 
        ldiu      32,r0                 ; |787| 
        or3       r0,*ar0,r0            ; |787| 
        sti       r0,*ar0               ; |787| 
L172:        
	.line	53
;----------------------------------------------------------------------
; 789 | r = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |789| 
        sti       r0,*+fp(3)            ; |789| 
        bu        L179                  ; |736| 
;*      Branch Occurs to L179           ; |736| 
L173:        
	.line	55
;----------------------------------------------------------------------
; 791 | else if (l_compare(t, v->bound_lo_set, 1)<0)                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |791| 
        ldp       @CL32,DP
        ldiu      255,r3                ; |791| 
        ldiu      *+fp(2),ar2           ; |791| 
        ldfu      *+ar0(19),f0          ; |791| 
        ldiu      @CL32,r1              ; |791| 
        ldfu      f0,f2                 ; |791| Move F32 into F40 for CONV
        andn      r3,f2                 ; |791| Bit mask for F32/F40 conversion
        ldiu      1,r3                  ; |791| 
        callu     r1                    ; far call to _l_compare	; |791| 
                                        ; |791| Far Call Occurs
        cmpi      0,r0                  ; |791| 
        bge       L177                  ; |791| 
;*      Branch Occurs to L177           ; |791| 
	.line	57
;----------------------------------------------------------------------
; 793 | v->STAT &= var_bound_hi ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |793| 
        ldiu      *+ar0(3),r0           ; |793| 
        andn      16,r0                 ; |793| 
        sti       r0,*+ar0(3)           ; |793| 
	.line	58
;----------------------------------------------------------------------
; 794 | v->STAT |= var_bound_lo;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |794| 
        ldiu      32,r0                 ; |794| 
        or        *+ar0(3),r0           ; |794| 
        sti       r0,*+ar0(3)           ; |794| 
	.line	59
;----------------------------------------------------------------------
; 795 | t[0]     = v->bound_lo_set;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |795| 
        ldfu      *+ar0(19),f0          ; |795| 
        ldiu      255,r1                ; |795| 
        ldiu      *+fp(2),ar0           ; |795| 
        andn      r1,f0                 ; |795| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |795| Store high half
        sti       r0,*+ar0              ; |795| Store low half
	.line	61
;----------------------------------------------------------------------
; 797 | if ((v->STAT & var_no_alarm)==0)                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |797| 
        ldiu      4,r0                  ; |797| 
        tstb      *+ar0(3),r0           ; |797| 
        bne       L176                  ; |797| 
;*      Branch Occurs to L176           ; |797| 
	.line	62
;----------------------------------------------------------------------
; 798 | DIAGNOSTICS[0] |= ERROR_VAR_BOUNDARY;                                  
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |798| 
        ldiu      32,r0                 ; |798| 
        or3       r0,*ar0,r0            ; |798| 
        sti       r0,*ar0               ; |798| 
L176:        
	.line	64
;----------------------------------------------------------------------
; 800 | r = FALSE;                                                             
; 802 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |800| 
        sti       r0,*+fp(3)            ; |800| 
        bu        L179                  ; |736| 
;*      Branch Occurs to L179           ; |736| 
L177:        
	.line	68
;----------------------------------------------------------------------
; 804 | v->STAT &= var_bound_lo ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |804| 
        ldiu      *+ar0(3),r0           ; |804| 
        andn      32,r0                 ; |804| 
        sti       r0,*+ar0(3)           ; |804| 
	.line	69
;----------------------------------------------------------------------
; 805 | v->STAT &= var_bound_hi ^ 0xFFFFFFFF;                                  
; 808 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |805| 
        ldiu      *+ar0(3),r0           ; |805| 
        andn      16,r0                 ; |805| 
        sti       r0,*+ar0(3)           ; |805| 
        bu        L179                  ; |736| 
;*      Branch Occurs to L179           ; |736| 
L178:        
	.line	74
;----------------------------------------------------------------------
; 810 | v->STAT &= var_bound_lo ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |810| 
        ldiu      *+ar0(3),r0           ; |810| 
        andn      32,r0                 ; |810| 
        sti       r0,*+ar0(3)           ; |810| 
	.line	75
;----------------------------------------------------------------------
; 811 | v->STAT &= var_bound_hi ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |811| 
        ldiu      *+ar0(3),r0           ; |811| 
        andn      16,r0                 ; |811| 
        sti       r0,*+ar0(3)           ; |811| 
L179:        
	.line	78
;----------------------------------------------------------------------
; 814 | v->calc_val = t[0];                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar1           ; |814| 
        ldfu      *ar1,f0               ; |814| 40b float hi half
        ldiu      *+fp(1),ar0           ; |814| 
        ldiu      *+ar1,r0              ; |814| 40b float lo half
        stf       f0,*+ar0(9)           ; |814| Store high half
        sti       r0,*+ar0(10)          ; |814| Store low half
	.line	79
;----------------------------------------------------------------------
; 815 | v->val1         = v->calc_val;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |815| 
        ldfu      *+ar0(9),f0           ; |815| 40b float hi half
        ldiu      ar0,ar1               ; |815| 
        ldiu      *+ar0(10),r0          ; |815| 40b float lo half
        rnd       f0,f0                 ; |815| Demote to low precision
        stf       f0,*+ar1(7)           ; |815| 
	.line	80
;----------------------------------------------------------------------
; 816 | v->STAT    &= var_NaNum ^ 0xFFFFFFFF;                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |816| 
        ldiu      *+ar0(3),r0           ; |816| 
        andn      8,r0                  ; |816| 
        sti       r0,*+ar0(3)           ; |816| 
	.line	82
;----------------------------------------------------------------------
; 818 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |818| 
	.line	83
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |819| 
        ldiu      *fp,fp                ; |819| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |819| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	819,000000000h,3


	.sect	 ".text"

	.global	_VAR_Check_Bounds
	.sym	_VAR_Check_Bounds,_VAR_Check_Bounds,46,2,0
	.func	834
;******************************************************************************
;* FUNCTION NAME: _VAR_Check_Bounds                                           *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,r1,f2,r2,r3,ar0,ar2,st                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_VAR_Check_Bounds:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* r2    assigned to _t
	.sym	_t,2,27,17,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_t,2,27,1,32
	.line	1
;----------------------------------------------------------------------
; 834 | BOOL VAR_Check_Bounds(VAR* v, long double* t)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
        sti       r2,*+fp(2)            ; |835| 
        sti       ar2,*+fp(1)           ; |835| 
	.line	3
;----------------------------------------------------------------------
; 836 | if ((v->STAT & var_no_bound)==0)                                       
;----------------------------------------------------------------------
        ldiu      ar2,ar0
        ldiu      2,r0                  ; |836| 
        tstb      *+ar0(3),r0           ; |836| 
        bne       L188                  ; |836| 
;*      Branch Occurs to L188           ; |836| 
	.line	5
;----------------------------------------------------------------------
; 838 | if (l_compare(t, v->bound_hi_set, 1)>0)                                
;----------------------------------------------------------------------
        ldfu      *+ar0(18),f0          ; |838| 
        ldp       @CL32,DP
        ldiu      255,r3                ; |838| 
        ldiu      r2,ar2                ; |838| 
        ldfu      f0,f2                 ; |838| Move F32 into F40 for CONV
        ldiu      @CL32,r1              ; |838| 
        andn      r3,f2                 ; |838| Bit mask for F32/F40 conversion
        ldiu      1,r3                  ; |838| 
        callu     r1                    ; far call to _l_compare	; |838| 
                                        ; |838| Far Call Occurs
        cmpi      0,r0                  ; |838| 
        ble       L186                  ; |838| 
;*      Branch Occurs to L186           ; |838| 
	.line	6
;----------------------------------------------------------------------
; 839 | return FALSE;   /* t > bound_hi */                                     
;----------------------------------------------------------------------
        bud       L189                  ; |839| 
	nop
	nop
        ldiu      0,r0                  ; |839| 
;*      Branch Occurs to L189           ; |839| 
L186:        
	.line	7
;----------------------------------------------------------------------
; 840 | else if (l_compare(t, v->bound_lo_set, 1)<0)                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |840| 
        ldp       @CL32,DP
        ldiu      255,r3                ; |840| 
        ldiu      *+fp(2),ar2           ; |840| 
        ldfu      *+ar0(19),f0          ; |840| 
        ldiu      @CL32,r1              ; |840| 
        ldfu      f0,f2                 ; |840| Move F32 into F40 for CONV
        andn      r3,f2                 ; |840| Bit mask for F32/F40 conversion
        ldiu      1,r3                  ; |840| 
        callu     r1                    ; far call to _l_compare	; |840| 
                                        ; |840| Far Call Occurs
        cmpi      0,r0                  ; |840| 
        bge       L188                  ; |840| 
;*      Branch Occurs to L188           ; |840| 
	.line	8
;----------------------------------------------------------------------
; 841 | return FALSE;   /* t < bound_lo */                                     
;----------------------------------------------------------------------
        bud       L189                  ; |841| 
	nop
	nop
        ldiu      0,r0                  ; |841| 
;*      Branch Occurs to L189           ; |841| 
L188:        
	.line	11
;----------------------------------------------------------------------
; 844 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |844| 
L189:        
	.line	12
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |845| 
        ldiu      *fp,fp                ; |845| 
                                        ; Unallocate the Frame
        subi      4,sp                  ; |845| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	845,000000000h,2


	.sect	 ".text"

	.global	_Get_Unit_Coeff
	.sym	_Get_Unit_Coeff,_Get_Unit_Coeff,46,2,0
	.func	868
;******************************************************************************
;* FUNCTION NAME: _Get_Unit_Coeff                                             *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,r1,r2,r3,ar0,ar1,ar2,ir0,st,rs,rc             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 0 SOE = 8 words          *
;******************************************************************************
_Get_Unit_Coeff:
;* ar2   assigned to _v
	.sym	_v,10,24,17,32,.fake6
;* r2    assigned to _unit
	.sym	_unit,2,4,17,32
;* r3    assigned to _class
	.sym	_class,3,4,17,32
;* rc    assigned to _m
	.sym	_m,19,27,17,32
;* rs    assigned to _b
	.sym	_b,20,27,17,32
	.sym	_v,1,24,1,32,.fake6
	.sym	_unit,2,4,1,32
	.sym	_class,3,4,1,32
	.sym	_m,4,27,1,32
	.sym	_b,5,27,1,32
	.sym	_i,6,4,1,32
	.line	1
;----------------------------------------------------------------------
; 868 | BOOL Get_Unit_Coeff(VAR* v, int unit, int class, long double* m, long d
;     | ouble* b)                                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 870 | int i;  /* counter */                                                  
;----------------------------------------------------------------------
        sti       rs,*+fp(5)            ; |869| 
        sti       rc,*+fp(4)            ; |869| 
        sti       r3,*+fp(3)            ; |869| 
        sti       r2,*+fp(2)            ; |869| 
        sti       ar2,*+fp(1)           ; |869| 
	.line	5
;----------------------------------------------------------------------
; 872 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	6
;----------------------------------------------------------------------
; 873 | i = 0;                                                                 
; 875 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |873| 
        sti       r0,*+fp(6)            ; |873| 
L192:        
	.line	10
;----------------------------------------------------------------------
; 877 | if ((MASTER_UNITS[3*i+0]==0) && (MASTER_UNITS[3*i+1]==0) && (MASTER_UNI
;     | TS[3*i+2]==0))                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(6),ir0           ; |877| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |877| 
        ldiu      @CL36,ar0             ; |877| 
        ldfu      0.0000000000e+00,f0   ; |877| 
        cmpf3     f0,*+ar0(ir0)         ; |877| 
        bne       L197                  ; |877| 
;*      Branch Occurs to L197           ; |877| 
        ldiu      *+fp(6),ir0           ; |877| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |877| 
        ldiu      @CL36,ar0             ; |877| 
        addi      1,ir0                 ; |877| 
        ldfu      0.0000000000e+00,f0   ; |877| 
        cmpf3     f0,*+ar0(ir0)         ; |877| 
        bne       L197                  ; |877| 
;*      Branch Occurs to L197           ; |877| 
        ldiu      *+fp(6),ir0           ; |877| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |877| 
        ldiu      @CL36,ar0             ; |877| 
        addi      2,ir0                 ; |877| 
        ldfu      0.0000000000e+00,f0   ; |877| 
        cmpf3     f0,*+ar0(ir0)         ; |877| 
        bne       L197                  ; |877| 
;*      Branch Occurs to L197           ; |877| 
	.line	12
;----------------------------------------------------------------------
; 879 | m[0] = 1.0;                                                            
;----------------------------------------------------------------------
        ldp       @CL37+0,DP
        ldfu      @CL37+0,f0            ; |879| 40b float hi half
        ldp       @CL37+1,DP
        ldiu      *+fp(4),ar0           ; |879| 
        ldiu      @CL37+1,r0            ; |879| 40b float lo half
        stf       f0,*ar0               ; |879| Store high half
        sti       r0,*+ar0              ; |879| Store low half
	.line	13
;----------------------------------------------------------------------
; 880 | b[0] = 0.0;                                                            
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |880| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      *+fp(5),ar0           ; |880| 
        ldiu      @CL7+1,r0             ; |880| 40b float lo half
        stf       f0,*ar0               ; |880| Store high half
        sti       r0,*+ar0              ; |880| Store low half
	.line	14
;----------------------------------------------------------------------
; 881 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	16
;----------------------------------------------------------------------
; 883 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L210                  ; |883| 
	nop
	nop
        ldiu      0,r0                  ; |883| 
;*      Branch Occurs to L210           ; |883| 
L197:        
	.line	18
;----------------------------------------------------------------------
; 885 | else if ((MASTER_UNITS[3*i+0]==class) && (MASTER_UNITS[3*i+1]==0) && (M
;     | ASTER_UNITS[3*i+2]==0))                                                
;----------------------------------------------------------------------
        ldiu      *+fp(6),ir0           ; |885| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |885| 
        ldiu      @CL36,ar0             ; |885| 
        float     *+fp(3),f0            ; |885| 
        cmpf3     f0,*+ar0(ir0)         ; |885| 
        bne       L208                  ; |885| 
;*      Branch Occurs to L208           ; |885| 
        ldiu      *+fp(6),ir0           ; |885| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |885| 
        ldiu      @CL36,ar0             ; |885| 
        addi      1,ir0                 ; |885| 
        ldfu      0.0000000000e+00,f0   ; |885| 
        cmpf3     f0,*+ar0(ir0)         ; |885| 
        bne       L208                  ; |885| 
;*      Branch Occurs to L208           ; |885| 
        ldiu      *+fp(6),ir0           ; |885| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |885| 
        ldiu      @CL36,ar0             ; |885| 
        addi      2,ir0                 ; |885| 
        ldfu      0.0000000000e+00,f0   ; |885| 
        cmpf3     f0,*+ar0(ir0)         ; |885| 
        bne       L208                  ; |885| 
;*      Branch Occurs to L208           ; |885| 
	.line	20
;----------------------------------------------------------------------
; 887 | i++;                                                                   
; 888 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |887| 
        addi      *+fp(6),r0            ; |887| 
        sti       r0,*+fp(6)            ; |887| 
L201:        
	.line	23
;----------------------------------------------------------------------
; 890 | if (MASTER_UNITS[3*i+0]==(unit&0xFF))                                  
;----------------------------------------------------------------------
        ldiu      *+fp(6),ir0           ; |890| 
        ldiu      255,r0                ; |890| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |890| 
        and       *+fp(2),r0            ; |890| 
        ldiu      @CL36,ar0             ; |890| 
        float     r0,f0                 ; |890| 
        cmpf3     f0,*+ar0(ir0)         ; |890| 
        bne       L204                  ; |890| 
;*      Branch Occurs to L204           ; |890| 
	.line	25
;----------------------------------------------------------------------
; 892 | m[0] = MASTER_UNITS[3*i+1];                                            
;----------------------------------------------------------------------
        ldiu      *+fp(6),ir0           ; |892| 
        ldp       @CL36,DP
        ldiu      255,r1                ; |892| 
        mpyi      3,ir0                 ; |892| 
        ldiu      @CL36,ar1             ; |892| 
        addi      1,ir0                 ; |892| 
        ldiu      *+fp(4),ar0           ; |892| 
        ldfu      *+ar1(ir0),f0         ; |892| 
        andn      r1,f0                 ; |892| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |892| Store high half
        sti       r0,*+ar0              ; |892| Store low half
	.line	26
;----------------------------------------------------------------------
; 893 | b[0] = MASTER_UNITS[3*i+2];                                            
;----------------------------------------------------------------------
        ldiu      *+fp(6),ir0           ; |893| 
        mpyi      3,ir0                 ; |893| 
        ldiu      @CL36,ar0             ; |893| 
        addi      2,ir0                 ; |893| 
        ldfu      *+ar0(ir0),f0         ; |893| 
        ldiu      *+fp(5),ar0           ; |893| 
        andn      r1,f0                 ; |893| Bit mask for F32/F40 conversion
        stf       f0,*ar0               ; |893| Store high half
        sti       r0,*+ar0              ; |893| Store low half
	.line	27
;----------------------------------------------------------------------
; 894 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	29
;----------------------------------------------------------------------
; 896 | return TRUE;                                                           
;----------------------------------------------------------------------
        bud       L210                  ; |896| 
	nop
	nop
        ldiu      1,r0                  ; |896| 
;*      Branch Occurs to L210           ; |896| 
L204:        
	.line	31
;----------------------------------------------------------------------
; 898 | else if ((MASTER_UNITS[3*i+1]==0) && (MASTER_UNITS[3*i+2]==0))         
;----------------------------------------------------------------------
        ldiu      *+fp(6),ir0           ; |898| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |898| 
        ldiu      @CL36,ar0             ; |898| 
        addi      1,ir0                 ; |898| 
        ldfu      0.0000000000e+00,f0   ; |898| 
        cmpf3     f0,*+ar0(ir0)         ; |898| 
        bne       L207                  ; |898| 
;*      Branch Occurs to L207           ; |898| 
        ldiu      *+fp(6),ir0           ; |898| 
        ldp       @CL36,DP
        mpyi      3,ir0                 ; |898| 
        ldiu      @CL36,ar0             ; |898| 
        addi      2,ir0                 ; |898| 
        ldfu      0.0000000000e+00,f0   ; |898| 
        cmpf3     f0,*+ar0(ir0)         ; |898| 
        bne       L207                  ; |898| 
;*      Branch Occurs to L207           ; |898| 
	.line	33
;----------------------------------------------------------------------
; 900 | m[0] = 1.0;                                                            
;----------------------------------------------------------------------
        ldp       @CL37+0,DP
        ldfu      @CL37+0,f0            ; |900| 40b float hi half
        ldp       @CL37+1,DP
        ldiu      *+fp(4),ar0           ; |900| 
        ldiu      @CL37+1,r0            ; |900| 40b float lo half
        stf       f0,*ar0               ; |900| Store high half
        sti       r0,*+ar0              ; |900| Store low half
	.line	34
;----------------------------------------------------------------------
; 901 | b[0] = 0.0;                                                            
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |901| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      *+fp(5),ar0           ; |901| 
        ldiu      @CL7+1,r0             ; |901| 40b float lo half
        stf       f0,*ar0               ; |901| Store high half
        sti       r0,*+ar0              ; |901| Store low half
	.line	35
;----------------------------------------------------------------------
; 902 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	37
;----------------------------------------------------------------------
; 904 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L210                  ; |904| 
	nop
	nop
        ldiu      0,r0                  ; |904| 
;*      Branch Occurs to L210           ; |904| 
L207:        
	.line	39
;----------------------------------------------------------------------
; 906 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |906| 
        addi      *+fp(6),r0            ; |906| 
        sti       r0,*+fp(6)            ; |906| 
	.line	40
        bu        L201                  ; |907| 
;*      Branch Occurs to L201           ; |907| 
L208:        
	.line	42
;----------------------------------------------------------------------
; 909 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |909| 
        addi      *+fp(6),r0            ; |909| 
        sti       r0,*+fp(6)            ; |909| 
	.line	43
        bu        L192                  ; |910| 
;*      Branch Occurs to L192           ; |910| 
	.line	45
;----------------------------------------------------------------------
; 912 | GIEP;                                                                  
;----------------------------------------------------------------------
	.line	47
;----------------------------------------------------------------------
; 914 | return FALSE;                                                          
;----------------------------------------------------------------------
L210:        
	.line	48
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |915| 
        ldiu      *fp,fp                ; |915| 
                                        ; Unallocate the Frame
        subi      8,sp                  ; |915| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	915,000000000h,6


	.sect	 ".text"

	.global	_Convert
	.sym	_Convert,_Convert,43,2,0
	.func	934
;******************************************************************************
;* FUNCTION NAME: _Convert                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar2,fp,st,rs,re,rc             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 15 Auto + 0 SOE = 17 words        *
;******************************************************************************
_Convert:
;* ar2   assigned to _class
	.sym	_class,10,4,17,32
;* r3    assigned to _from_unit
	.sym	_from_unit,3,4,17,32
;* rc    assigned to _to_unit
	.sym	_to_unit,19,4,17,32
;* f2    assigned to _val
	.sym	_val,2,11,17,64
;* rs    assigned to _scale_only
	.sym	_scale_only,20,14,17,32
;* re    assigned to _aux
	.sym	_aux,21,4,17,32
	.sym	_class,1,4,1,32
	.sym	_from_unit,2,4,1,32
	.sym	_to_unit,3,4,1,32
	.sym	_val,4,11,1,64
	.sym	_scale_only,6,14,1,32
	.sym	_aux,7,4,1,32
	.sym	_m,8,11,1,64
	.sym	_b,10,11,1,64
	.sym	_r,12,11,1,64
	.sym	_found,14,14,1,32
	.sym	_k,15,4,1,32
	.line	1
;----------------------------------------------------------------------
; 934 | long double Convert(int class, int from_unit, int to_unit, long double
;     | val, BOOL scale_only, int aux)                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      15,sp
	.line	2
;----------------------------------------------------------------------
; 936 | long double m;  /* multiplier   */                                     
; 937 | long double b;  /* offset               */                             
; 938 | long double r;  /* return               */                             
; 939 | BOOL found;             /* found flag   */                             
; 940 | int k;                  /* API parameter*/                             
;----------------------------------------------------------------------
        sti       rs,*+fp(6)            ; |935| 
        stf       f2,*+fp(4)            ; |935| Store high half
        sti       re,*+fp(7)            ; |935| 
        sti       rc,*+fp(3)            ; |935| 
        sti       r3,*+fp(2)            ; |935| 
        sti       r2,*+fp(5)            ; |935| Store low half
        sti       ar2,*+fp(1)           ; |935| 
	.line	9
;----------------------------------------------------------------------
; 942 | r = val;                                                               
;----------------------------------------------------------------------
        ldfu      f2,f0                 ; |942| High precision move
        stf       f0,*+fp(12)           ; |942| Store high half
        sti       r0,*+fp(13)           ; |942| Store low half
	.line	12
;----------------------------------------------------------------------
; 945 | if ((from_unit&0xFF)==(to_unit&0xFF))                                  
;----------------------------------------------------------------------
        ldiu      255,r1                ; |945| 
        and       *+fp(2),r1            ; |945| 
        ldiu      255,r0                ; |945| 
        and       *+fp(3),r0            ; |945| 
        cmpi3     r0,r1                 ; |945| 
        bne       L214                  ; |945| 
;*      Branch Occurs to L214           ; |945| 
	.line	13
;----------------------------------------------------------------------
; 946 | return r;                                                              
;----------------------------------------------------------------------
        bud       L277                  ; |946| 
        ldfu      *+fp(12),f0           ; |946| 40b float hi half
	nop
        ldiu      *+fp(13),r0           ; |946| 40b float lo half
;*      Branch Occurs to L277           ; |946| 
L214:        
	.line	15
;----------------------------------------------------------------------
; 948 | _GIEP;                                                                 
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
	.line	16
;----------------------------------------------------------------------
; 949 | found = FALSE;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |949| 
        sti       r0,*+fp(14)           ; |949| 
	.line	18
;----------------------------------------------------------------------
; 951 | if (class==c_mass_per_volume)                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |951| 
        cmpi      73,r0                 ; |951| 
        bne       L243                  ; |951| 
;*      Branch Occurs to L243           ; |951| 
	.line	20
;----------------------------------------------------------------------
; 953 | found = TRUE;                                                          
; 955 | switch (from_unit&0xFF)                                                
; 957 |         case u_mpv_sg_15C:                                             
; 958 |         case u_mpv_sg_60F:                                             
; 959 |         case u_mpv_sg:                                                 
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |953| 
        sti       r0,*+fp(14)           ; |953| 
        bu        L221                  ; |933| 
;*      Branch Occurs to L221           ; |933| 
L216:        
	.line	28
;----------------------------------------------------------------------
; 961 | r *= 1000.0;                                                           
;----------------------------------------------------------------------
        ldp       @CL38+0,DP
        ldfu      *+fp(12),f0           ; |961| 40b float hi half
        ldfu      @CL38+0,f1            ; |961| 40b float hi half
        ldiu      *+fp(13),r0           ; |961| 40b float lo half
        ldp       @CL38+1,DP
        ldiu      @CL38+1,r1            ; |961| 40b float lo half
        call      MPY_LD                ; |961| 
                                        ; |961| Call Occurs
        stf       f0,*+fp(12)           ; |961| Store high half
        sti       r0,*+fp(13)           ; |961| Store low half
	.line	29
;----------------------------------------------------------------------
; 962 | break;                                                                 
; 964 | case u_mpv_kg_cm_15C:                                                  
; 965 | case u_mpv_kg_cm_60F:                                                  
; 966 | case u_mpv_kg_cm:                                                      
;----------------------------------------------------------------------
        bu        L237                  ; |962| 
;*      Branch Occurs to L237           ; |962| 
	.line	35
;----------------------------------------------------------------------
; 968 | break;                                                                 
; 970 | case u_mpv_deg_API_60F:                                                
; 971 | case u_mpv_deg_API_15C:                                                
; 972 | case u_mpv_deg_API:                                                    
;----------------------------------------------------------------------
L218:        
	.line	41
;----------------------------------------------------------------------
; 974 | r = API_to_kgm3(r);                                                    
;----------------------------------------------------------------------
        ldfu      *+fp(12),f0           ; |974| 40b float hi half
        ldp       @CL39,DP
        ldiu      *+fp(13),r0           ; |974| 40b float lo half
        ldiu      @CL39,r1              ; |974| 
        rnd       f0,f2                 ; |974| Demote to low precision
        callu     r1                    ; far call to _API_to_kgm3	; |974| 
                                        ; |974| Far Call Occurs
        ldiu      255,r1                ; |974| 
        andn      r1,f0                 ; |974| Bit mask for F32/F40 conversion
        stf       f0,*+fp(12)           ; |974| Store high half
        sti       r0,*+fp(13)           ; |974| Store low half
	.line	42
;----------------------------------------------------------------------
; 975 | break;                                                                 
; 977 | default:                                                               
;----------------------------------------------------------------------
        bu        L237                  ; |975| 
;*      Branch Occurs to L237           ; |975| 
L219:        
	.line	46
;----------------------------------------------------------------------
; 979 | found = FALSE;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |979| 
        sti       r0,*+fp(14)           ; |979| 
	.line	47
;----------------------------------------------------------------------
; 980 | break;                                                                 
; 984 | switch (from_unit&0xFF)                                                
; 986 | case u_mpv_sg_15C:                                                     
; 987 | case u_mpv_kg_cm_15C:                                                  
; 988 | case u_mpv_deg_API_15C:                                                
;----------------------------------------------------------------------
        bu        L237                  ; |980| 
;*      Branch Occurs to L237           ; |980| 
L221:        
	.line	22
        ldiu      255,r0                ; |955| 
        and       *+fp(2),r0            ; |955| 
        cmpi      106,r0                ; |955| 
        bgt       L228                  ; |955| 
;*      Branch Occurs to L228           ; |955| 
        beq       L218                  ; |955| 
;*      Branch Occurs to L218           ; |955| 
        cmpi      90,r0                 ; |955| 
        beq       L216                  ; |955| 
;*      Branch Occurs to L216           ; |955| 
        cmpi      92,r0                 ; |955| 
        beq       L237                  ; |955| 
;*      Branch Occurs to L237           ; |955| 
        cmpi      104,r0                ; |955| 
        beq       L218                  ; |955| 
;*      Branch Occurs to L218           ; |955| 
        cmpi      105,r0                ; |955| 
        beq       L218                  ; |955| 
;*      Branch Occurs to L218           ; |955| 
        bu        L219                  ; |955| 
;*      Branch Occurs to L219           ; |955| 
L228:        
        cmpi      107,r0                ; |955| 
        beq       L237                  ; |955| 
;*      Branch Occurs to L237           ; |955| 
        cmpi      108,r0                ; |955| 
        beq       L237                  ; |955| 
;*      Branch Occurs to L237           ; |955| 
        cmpi      109,r0                ; |955| 
        beq       L216                  ; |955| 
;*      Branch Occurs to L216           ; |955| 
        cmpi      110,r0                ; |955| 
        beq       L216                  ; |955| 
;*      Branch Occurs to L216           ; |955| 
        bu        L219                  ; |955| 
;*      Branch Occurs to L219           ; |955| 
L234:        
	.line	57
;----------------------------------------------------------------------
; 990 | k = -1;                                                                
;----------------------------------------------------------------------
        ldiu      -1,r0                 ; |990| 
        sti       r0,*+fp(15)           ; |990| 
	.line	58
;----------------------------------------------------------------------
; 991 | r = API_15C_PT(aux, r, &k);                                            
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      fp,r3                 ; |991| 
        ldiu      *+fp(7),ar2           ; |991| 
        ldfu      *+fp(12),f0           ; |991| 40b float hi half
        ldiu      @CL40,r1              ; |991| 
        ldiu      *+fp(13),r0           ; |991| 40b float lo half
        rnd       f0,f2                 ; |991| Demote to low precision
        addi      15,r3                 ; |991| 
        callu     r1                    ; far call to _API_15C_PT	; |991| 
                                        ; |991| Far Call Occurs
        ldiu      255,r1                ; |991| 
        andn      r1,f0                 ; |991| Bit mask for F32/F40 conversion
        stf       f0,*+fp(12)           ; |991| Store high half
        sti       r0,*+fp(13)           ; |991| Store low half
	.line	59
;----------------------------------------------------------------------
; 992 | break;                                                                 
; 994 | case u_mpv_sg_60F:                                                     
; 995 | case u_mpv_kg_cm_60F:                                                  
; 996 | case u_mpv_deg_API_60F:                                                
;----------------------------------------------------------------------
        bu        L243                  ; |992| 
;*      Branch Occurs to L243           ; |992| 
L235:        
	.line	65
;----------------------------------------------------------------------
; 998 | k = -1;                                                                
;----------------------------------------------------------------------
        ldiu      -1,r0                 ; |998| 
        sti       r0,*+fp(15)           ; |998| 
	.line	66
;----------------------------------------------------------------------
; 999 | r = API_60F_PT(aux, r, &k);                                            
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      fp,r3                 ; |999| 
        ldiu      *+fp(7),ar2           ; |999| 
        ldfu      *+fp(12),f0           ; |999| 40b float hi half
        ldiu      @CL41,r1              ; |999| 
        ldiu      *+fp(13),r0           ; |999| 40b float lo half
        rnd       f0,f2                 ; |999| Demote to low precision
        addi      15,r3                 ; |999| 
        callu     r1                    ; far call to _API_60F_PT	; |999| 
                                        ; |999| Far Call Occurs
        ldiu      255,r1                ; |999| 
        andn      r1,f0                 ; |999| Bit mask for F32/F40 conversion
        stf       f0,*+fp(12)           ; |999| Store high half
        sti       r0,*+fp(13)           ; |999| Store low half
	.line	67
;----------------------------------------------------------------------
; 1000 | break;                                                                 
;----------------------------------------------------------------------
        bu        L243                  ; |1000| 
;*      Branch Occurs to L243           ; |1000| 
L237:        
	.line	51
        ldiu      255,r0                ; |984| 
        and       *+fp(2),r0            ; |984| 
        cmpi      105,r0                ; |984| 
        beq       L235                  ; |984| 
;*      Branch Occurs to L235           ; |984| 
        cmpi      106,r0                ; |984| 
        beq       L234                  ; |984| 
;*      Branch Occurs to L234           ; |984| 
        cmpi      107,r0                ; |984| 
        beq       L234                  ; |984| 
;*      Branch Occurs to L234           ; |984| 
        cmpi      108,r0                ; |984| 
        beq       L235                  ; |984| 
;*      Branch Occurs to L235           ; |984| 
        cmpi      109,r0                ; |984| 
        beq       L235                  ; |984| 
;*      Branch Occurs to L235           ; |984| 
        cmpi      110,r0                ; |984| 
        beq       L234                  ; |984| 
;*      Branch Occurs to L234           ; |984| 
L243:        
	.line	72
;----------------------------------------------------------------------
; 1005 | if (!found)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(14),r0           ; |1005| 
        cmpi      0,r0                  ; |1005| 
        bne       L247                  ; |1005| 
;*      Branch Occurs to L247           ; |1005| 
	.line	74
;----------------------------------------------------------------------
; 1007 | Get_Unit_Coeff((VAR*)0, from_unit&0xFF, class, &m, &b);                
;----------------------------------------------------------------------
        ldiu      fp,rs                 ; |1007| 
        ldiu      fp,rc                 ; |1007| 
        ldp       @CL42,DP
        ldiu      255,r2                ; |1007| 
        ldiu      0,ar2                 ; |1007| 
        ldiu      *+fp(1),r3            ; |1007| 
        addi      10,rs                 ; |1007| 
        addi      8,rc                  ; |1007| 
        ldiu      @CL42,r0              ; |1007| 
        and       *+fp(2),r2            ; |1007| 
        callu     r0                    ; far call to _Get_Unit_Coeff	; |1007| 
                                        ; |1007| Far Call Occurs
	.line	76
;----------------------------------------------------------------------
; 1009 | if (scale_only)                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |1009| 
        cmpi      0,r0                  ; |1009| 
        beq       L246                  ; |1009| 
;*      Branch Occurs to L246           ; |1009| 
	.line	77
;----------------------------------------------------------------------
; 1010 | b = 0;                                                                 
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |1010| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      @CL7+1,r0             ; |1010| 40b float lo half
        stf       f0,*+fp(10)           ; |1010| Store high half
        sti       r0,*+fp(11)           ; |1010| Store low half
L246:        
	.line	79
;----------------------------------------------------------------------
; 1012 | r = (r-b)/m;                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(10),f0           ; |1012| 40b float hi half
        ldfu      *+fp(12),f2           ; |1012| 40b float hi half
        ldfu      *+fp(8),f1            ; |1012| 40b float hi half
        ldiu      *+fp(11),r0           ; |1012| 40b float lo half
        ldiu      *+fp(13),r2           ; |1012| 40b float lo half
        ldiu      *+fp(9),r1            ; |1012| 40b float lo half
        subf3     f0,f2,f0              ; |1012| 
        call      DIV_LD                ; |1012| 
                                        ; |1012| Call Occurs
        stf       f0,*+fp(12)           ; |1012| Store high half
        sti       r0,*+fp(13)           ; |1012| Store low half
L247:        
	.line	82
;----------------------------------------------------------------------
; 1015 | found = FALSE;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1015| 
        sti       r0,*+fp(14)           ; |1015| 
	.line	84
;----------------------------------------------------------------------
; 1017 | if (class==c_mass_per_volume)                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |1017| 
        cmpi      73,r0                 ; |1017| 
        bne       L272                  ; |1017| 
;*      Branch Occurs to L272           ; |1017| 
	.line	86
;----------------------------------------------------------------------
; 1019 | found = TRUE;                                                          
; 1021 | switch (to_unit&0xFF)                                                  
; 1022 | {//* r is in kg/m^3 @ process Temperature */                           
; 1023 |         case u_mpv_deg_API:                                            
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1019| 
        sti       r0,*+fp(14)           ; |1019| 
        bu        L254                  ; |933| 
;*      Branch Occurs to L254           ; |933| 
	.line	92
;----------------------------------------------------------------------
; 1025 | break;                                                                 
; 1027 | case u_mpv_sg_15C:                                                     
; 1028 | case u_mpv_deg_API_15C:                                                
; 1029 | case u_mpv_kg_cm_15C:                                                  
;----------------------------------------------------------------------
L250:        
	.line	98
;----------------------------------------------------------------------
; 1031 | r = API_PT_ST(aux, r, 0, 0);                                           
;----------------------------------------------------------------------
        ldfu      *+fp(12),f0           ; |1031| 40b float hi half
        ldp       @CL43,DP
        ldiu      0,r3                  ; |1031| 
        ldiu      0,rc                  ; |1031| 
        ldiu      *+fp(7),ar2           ; |1031| 
        ldiu      *+fp(13),r0           ; |1031| 40b float lo half
        ldiu      @CL43,r1              ; |1031| 
        rnd       f0,f2                 ; |1031| Demote to low precision
        callu     r1                    ; far call to _API_PT_ST	; |1031| 
                                        ; |1031| Far Call Occurs
        ldiu      255,r1                ; |1031| 
        andn      r1,f0                 ; |1031| Bit mask for F32/F40 conversion
        stf       f0,*+fp(12)           ; |1031| Store high half
        sti       r0,*+fp(13)           ; |1031| Store low half
	.line	99
;----------------------------------------------------------------------
; 1032 | break;                                                                 
; 1034 | case u_mpv_sg_60F:                                                     
; 1035 | case u_mpv_deg_API_60F:                                                
; 1036 | case u_mpv_kg_cm_60F:                                                  
;----------------------------------------------------------------------
        bu        L266                  ; |1032| 
;*      Branch Occurs to L266           ; |1032| 
L251:        
	.line	105
;----------------------------------------------------------------------
; 1038 | r = API_PT_ST(aux, r, 1, 0);                                           
;----------------------------------------------------------------------
        ldfu      *+fp(12),f0           ; |1038| 40b float hi half
        ldp       @CL43,DP
        ldiu      1,r3                  ; |1038| 
        ldiu      0,rc                  ; |1038| 
        ldiu      *+fp(7),ar2           ; |1038| 
        ldiu      *+fp(13),r0           ; |1038| 40b float lo half
        ldiu      @CL43,r1              ; |1038| 
        rnd       f0,f2                 ; |1038| Demote to low precision
        callu     r1                    ; far call to _API_PT_ST	; |1038| 
                                        ; |1038| Far Call Occurs
        ldiu      255,r1                ; |1038| 
        andn      r1,f0                 ; |1038| Bit mask for F32/F40 conversion
        stf       f0,*+fp(12)           ; |1038| Store high half
        sti       r0,*+fp(13)           ; |1038| Store low half
	.line	106
;----------------------------------------------------------------------
; 1039 | break;                                                                 
; 1041 | default:                                                               
;----------------------------------------------------------------------
        bu        L266                  ; |1039| 
;*      Branch Occurs to L266           ; |1039| 
L252:        
	.line	110
;----------------------------------------------------------------------
; 1043 | found = FALSE;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1043| 
        sti       r0,*+fp(14)           ; |1043| 
	.line	111
;----------------------------------------------------------------------
; 1044 | break;                                                                 
; 1048 | switch (to_unit&0xFF)                                                  
; 1050 | case u_mpv_sg_15C:                                                     
; 1051 | case u_mpv_sg_60F:                                                     
; 1052 | case u_mpv_sg:                                                         
;----------------------------------------------------------------------
        bu        L266                  ; |1044| 
;*      Branch Occurs to L266           ; |1044| 
L254:        
	.line	88
        ldiu      255,r0                ; |1021| 
        and       *+fp(3),r0            ; |1021| 
        cmpi      104,r0                ; |1021| 
        beq       L266                  ; |1021| 
;*      Branch Occurs to L266           ; |1021| 
        cmpi      105,r0                ; |1021| 
        beq       L251                  ; |1021| 
;*      Branch Occurs to L251           ; |1021| 
        cmpi      106,r0                ; |1021| 
        beq       L250                  ; |1021| 
;*      Branch Occurs to L250           ; |1021| 
        cmpi      107,r0                ; |1021| 
        beq       L250                  ; |1021| 
;*      Branch Occurs to L250           ; |1021| 
        cmpi      108,r0                ; |1021| 
        beq       L251                  ; |1021| 
;*      Branch Occurs to L251           ; |1021| 
        cmpi      109,r0                ; |1021| 
        beq       L251                  ; |1021| 
;*      Branch Occurs to L251           ; |1021| 
        cmpi      110,r0                ; |1021| 
        beq       L250                  ; |1021| 
;*      Branch Occurs to L250           ; |1021| 
        bu        L252                  ; |1021| 
;*      Branch Occurs to L252           ; |1021| 
L263:        
	.line	121
;----------------------------------------------------------------------
; 1054 | r /= 1000.0;                                                           
;----------------------------------------------------------------------
        ldp       @CL44+0,DP
        ldfu      *+fp(12),f0           ; |1054| 40b float hi half
        ldfu      @CL44+0,f1            ; |1054| 40b float hi half
        ldiu      *+fp(13),r0           ; |1054| 40b float lo half
        ldp       @CL44+1,DP
        ldiu      @CL44+1,r1            ; |1054| 40b float lo half
        call      MPY_LD                ; |1054| 
                                        ; |1054| Call Occurs
        stf       f0,*+fp(12)           ; |1054| Store high half
        sti       r0,*+fp(13)           ; |1054| Store low half
	.line	122
;----------------------------------------------------------------------
; 1055 | break;                                                                 
; 1057 | case u_mpv_deg_API_15C:                                                
; 1058 | case u_mpv_deg_API_60F:                                                
; 1059 | case u_mpv_deg_API:                                                    
;----------------------------------------------------------------------
        bu        L272                  ; |1055| 
;*      Branch Occurs to L272           ; |1055| 
L264:        
	.line	128
;----------------------------------------------------------------------
; 1061 | r = kgm3_to_API(r);                                                    
;----------------------------------------------------------------------
        ldfu      *+fp(12),f0           ; |1061| 40b float hi half
        ldp       @CL45,DP
        ldiu      *+fp(13),r0           ; |1061| 40b float lo half
        ldiu      @CL45,r1              ; |1061| 
        rnd       f0,f2                 ; |1061| Demote to low precision
        callu     r1                    ; far call to _kgm3_to_API	; |1061| 
                                        ; |1061| Far Call Occurs
        ldiu      255,r1                ; |1061| 
        andn      r1,f0                 ; |1061| Bit mask for F32/F40 conversion
        stf       f0,*+fp(12)           ; |1061| Store high half
        sti       r0,*+fp(13)           ; |1061| Store low half
	.line	129
;----------------------------------------------------------------------
; 1062 | break;                                                                 
;----------------------------------------------------------------------
        bu        L272                  ; |1062| 
;*      Branch Occurs to L272           ; |1062| 
L266:        
	.line	115
        ldiu      255,r0                ; |1048| 
        and       *+fp(3),r0            ; |1048| 
        cmpi      90,r0                 ; |1048| 
        beq       L263                  ; |1048| 
;*      Branch Occurs to L263           ; |1048| 
        cmpi      104,r0                ; |1048| 
        beq       L264                  ; |1048| 
;*      Branch Occurs to L264           ; |1048| 
        cmpi      105,r0                ; |1048| 
        beq       L264                  ; |1048| 
;*      Branch Occurs to L264           ; |1048| 
        cmpi      106,r0                ; |1048| 
        beq       L264                  ; |1048| 
;*      Branch Occurs to L264           ; |1048| 
        cmpi      109,r0                ; |1048| 
        beq       L263                  ; |1048| 
;*      Branch Occurs to L263           ; |1048| 
        cmpi      110,r0                ; |1048| 
        beq       L263                  ; |1048| 
;*      Branch Occurs to L263           ; |1048| 
L272:        
	.line	134
;----------------------------------------------------------------------
; 1067 | if (!found)                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(14),r0           ; |1067| 
        cmpi      0,r0                  ; |1067| 
        bne       L276                  ; |1067| 
;*      Branch Occurs to L276           ; |1067| 
	.line	136
;----------------------------------------------------------------------
; 1069 | Get_Unit_Coeff((VAR*)0, to_unit&0xFF, class, &m, &b);                  
;----------------------------------------------------------------------
        ldiu      fp,rs                 ; |1069| 
        ldiu      fp,rc                 ; |1069| 
        ldp       @CL42,DP
        ldiu      255,r2                ; |1069| 
        ldiu      0,ar2                 ; |1069| 
        ldiu      *+fp(1),r3            ; |1069| 
        addi      10,rs                 ; |1069| 
        addi      8,rc                  ; |1069| 
        ldiu      @CL42,r0              ; |1069| 
        and       *+fp(3),r2            ; |1069| 
        callu     r0                    ; far call to _Get_Unit_Coeff	; |1069| 
                                        ; |1069| Far Call Occurs
	.line	138
;----------------------------------------------------------------------
; 1071 | if (scale_only)                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |1071| 
        cmpi      0,r0                  ; |1071| 
        beq       L275                  ; |1071| 
;*      Branch Occurs to L275           ; |1071| 
	.line	139
;----------------------------------------------------------------------
; 1072 | b = 0;                                                                 
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |1072| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      @CL7+1,r0             ; |1072| 40b float lo half
        stf       f0,*+fp(10)           ; |1072| Store high half
        sti       r0,*+fp(11)           ; |1072| Store low half
L275:        
	.line	141
;----------------------------------------------------------------------
; 1074 | r = (r*m)+b;                                                           
;----------------------------------------------------------------------
        ldfu      *+fp(12),f0           ; |1074| 40b float hi half
        ldfu      *+fp(8),f1            ; |1074| 40b float hi half
        ldiu      *+fp(13),r0           ; |1074| 40b float lo half
        ldiu      *+fp(9),r1            ; |1074| 40b float lo half
        call      MPY_LD                ; |1074| 
                                        ; |1074| Call Occurs
        ldfu      *+fp(10),f1           ; |1074| 40b float hi half
        ldiu      *+fp(11),r1           ; |1074| 40b float lo half
        addf      f0,f1                 ; |1074| High Precision ADD
        stf       f1,*+fp(12)           ; |1074| Store high half
        sti       r1,*+fp(13)           ; |1074| Store low half
L276:        
	.line	144
;----------------------------------------------------------------------
; 1077 | GIEP;                                                                  
;----------------------------------------------------------------------
	pop		ST			
	.line	146
;----------------------------------------------------------------------
; 1079 | return r;                                                              
;----------------------------------------------------------------------
        ldfu      *+fp(12),f0           ; |1079| 40b float hi half
        ldiu      *+fp(13),r0           ; |1079| 40b float lo half
L277:        
	.line	147
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1080| 
        ldiu      *fp,fp                ; |1080| 
                                        ; Unallocate the Frame
        subi      17,sp                 ; |1080| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1080,000000000h,15


	.sect	 ".text"

	.global	_Get_Prev_Unit
	.sym	_Get_Prev_Unit,_Get_Prev_Unit,36,2,0
	.func	1096
;******************************************************************************
;* FUNCTION NAME: _Get_Prev_Unit                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 0 SOE = 8 words          *
;******************************************************************************
_Get_Prev_Unit:
;* ar2   assigned to _class
	.sym	_class,10,4,17,32
;* r2    assigned to _unit
	.sym	_unit,2,4,17,32
	.sym	_class,1,4,1,32
	.sym	_unit,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_j,4,4,1,32
	.sym	_prev,5,4,1,32
	.sym	_tbl_p,6,20,1,32
	.line	1
;----------------------------------------------------------------------
; 1096 | int Get_Prev_Unit(int class, int unit)                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 1098 | int i,j;                                                               
; 1099 | int prev;                                                              
; 1100 | const int *tbl_p;                                                      
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |1097| 
        sti       ar2,*+fp(1)           ; |1097| 
	.line	7
;----------------------------------------------------------------------
; 1102 | i = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1102| 
        sti       r0,*+fp(3)            ; |1102| 
	.line	9
;----------------------------------------------------------------------
; 1104 | if(RUSS)                                                               
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,ar0             ; |1104| 
        ldiu      *ar0,r0               ; |1104| 
        cmpi      0,r0                  ; |1104| 
        beq       L281                  ; |1104| 
;*      Branch Occurs to L281           ; |1104| 
	.line	10
;----------------------------------------------------------------------
; 1105 | tbl_p = MASTER_UNITS_STR_R;                                            
; 1106 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,r0              ; |1105| 
        sti       r0,*+fp(6)            ; |1105| 
        bu        L282                  ; |1095| 
;*      Branch Occurs to L282           ; |1095| 
L281:        
	.line	12
;----------------------------------------------------------------------
; 1107 | tbl_p = MASTER_UNITS_STR;                                              
; 1109 | while(1)                                                               
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,r0              ; |1107| 
        sti       r0,*+fp(6)            ; |1107| 
L282:        
	.line	16
;----------------------------------------------------------------------
; 1111 | if (tbl_p[9*i+0]==(c_none|0x100))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1111| 
        ldiu      *+fp(6),ir0           ; |1111| 
        mpyi      9,ar0                 ; |1111| 
        ldiu      *+ar0(ir0),r0         ; |1111| 
        cmpi      507,r0                ; |1111| 
        bne       L285                  ; |1111| 
;*      Branch Occurs to L285           ; |1111| 
	.line	17
;----------------------------------------------------------------------
; 1112 | return unit;                                                           
;----------------------------------------------------------------------
        bud       L297                  ; |1112| 
	nop
	nop
        ldiu      *+fp(2),r0            ; |1112| 
;*      Branch Occurs to L297           ; |1112| 
L285:        
	.line	18
;----------------------------------------------------------------------
; 1113 | else if (tbl_p[9*i+0]==(class|0x100))                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1113| 
        ldiu      256,r0                ; |1113| 
        ldiu      *+fp(6),ir0           ; |1113| 
        mpyi      9,ar0                 ; |1113| 
        or        *+fp(1),r0            ; |1113| 
        ldiu      *+ar0(ir0),r1         ; |1113| 
        cmpi3     r0,r1                 ; |1113| 
        bne       L296                  ; |1113| 
;*      Branch Occurs to L296           ; |1113| 
	.line	20
;----------------------------------------------------------------------
; 1115 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1115| 
        addi      *+fp(3),r0            ; |1115| 
        sti       r0,*+fp(3)            ; |1115| 
	.line	21
;----------------------------------------------------------------------
; 1116 | j        = i;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(4)            ; |1116| 
	.line	22
;----------------------------------------------------------------------
; 1117 | prev = unit;                                                           
; 1119 | while (1)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |1117| 
        sti       r0,*+fp(5)            ; |1117| 
L287:        
	.line	26
;----------------------------------------------------------------------
; 1121 | if ((tbl_p[9*i+0]&0x100)==0x100)                                       
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1121| 
        ldiu      *+fp(6),ir0           ; |1121| 
        mpyi      9,ar0                 ; |1121| 
        ldiu      256,r0                ; |1121| 
        and3      r0,*+ar0(ir0),r0      ; |1121| 
        cmpi      256,r0                ; |1121| 
        beq       L289                  ; |1121| 
;*      Branch Occurs to L289           ; |1121| 
	.line	27
;----------------------------------------------------------------------
; 1122 | break;                                                                 
;----------------------------------------------------------------------
	.line	29
;----------------------------------------------------------------------
; 1124 | prev = tbl_p[9*i+0];                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1124| 
        mpyi      9,ar0                 ; |1124| 
        ldiu      *+ar0(ir0),r0         ; |1124| 
        sti       r0,*+fp(5)            ; |1124| 
	.line	30
;----------------------------------------------------------------------
; 1125 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1125| 
        addi      *+fp(3),r0            ; |1125| 
        sti       r0,*+fp(3)            ; |1125| 
	.line	31
        bu        L287                  ; |1126| 
;*      Branch Occurs to L287           ; |1126| 
L289:        
	.line	33
;----------------------------------------------------------------------
; 1128 | i = j;                                                                 
; 1130 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0            ; |1128| 
        sti       r0,*+fp(3)            ; |1128| 
L290:        
	.line	37
;----------------------------------------------------------------------
; 1132 | if (tbl_p[9*i+0]==(unit&0xFF))  /* found variable unit code */         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1132| 
        ldiu      255,r0                ; |1132| 
        ldiu      *+fp(6),ir0           ; |1132| 
        mpyi      9,ar0                 ; |1132| 
        and       *+fp(2),r0            ; |1132| 
        ldiu      *+ar0(ir0),r1         ; |1132| 
        cmpi3     r0,r1                 ; |1132| 
        bne       L293                  ; |1132| 
;*      Branch Occurs to L293           ; |1132| 
	.line	38
;----------------------------------------------------------------------
; 1133 | return prev;                                                           
;----------------------------------------------------------------------
        bud       L297                  ; |1133| 
	nop
	nop
        ldiu      *+fp(5),r0            ; |1133| 
;*      Branch Occurs to L297           ; |1133| 
L293:        
	.line	39
;----------------------------------------------------------------------
; 1134 | else if ((tbl_p[9*i+0]&0x100)==0x100)                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1134| 
        ldiu      *+fp(6),ir0           ; |1134| 
        mpyi      9,ar0                 ; |1134| 
        ldiu      256,r0                ; |1134| 
        and3      r0,*+ar0(ir0),r0      ; |1134| 
        cmpi      256,r0                ; |1134| 
        bne       L295                  ; |1134| 
;*      Branch Occurs to L295           ; |1134| 
	.line	40
;----------------------------------------------------------------------
; 1135 | return unit;                                                           
;----------------------------------------------------------------------
        bud       L297                  ; |1135| 
	nop
	nop
        ldiu      *+fp(2),r0            ; |1135| 
;*      Branch Occurs to L297           ; |1135| 
L295:        
	.line	42
;----------------------------------------------------------------------
; 1137 | prev = tbl_p[9*i+0];                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1137| 
        ldiu      *+fp(6),ir0           ; |1137| 
        mpyi      9,ar0                 ; |1137| 
        ldiu      *+ar0(ir0),r0         ; |1137| 
        sti       r0,*+fp(5)            ; |1137| 
	.line	43
;----------------------------------------------------------------------
; 1138 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1138| 
        addi      *+fp(3),r0            ; |1138| 
        sti       r0,*+fp(3)            ; |1138| 
	.line	44
        bu        L290                  ; |1139| 
;*      Branch Occurs to L290           ; |1139| 
L296:        
	.line	46
;----------------------------------------------------------------------
; 1141 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1141| 
        addi      *+fp(3),r0            ; |1141| 
        sti       r0,*+fp(3)            ; |1141| 
	.line	47
        bu        L282                  ; |1142| 
;*      Branch Occurs to L282           ; |1142| 
L297:        
	.line	48
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1143| 
        ldiu      *fp,fp                ; |1143| 
                                        ; Unallocate the Frame
        subi      8,sp                  ; |1143| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1143,000000000h,6


	.sect	 ".text"

	.global	_Get_Next_Unit
	.sym	_Get_Next_Unit,_Get_Next_Unit,36,2,0
	.func	1161
;******************************************************************************
;* FUNCTION NAME: _Get_Next_Unit                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Get_Next_Unit:
;* ar2   assigned to _class
	.sym	_class,10,4,17,32
;* r2    assigned to _unit
	.sym	_unit,2,4,17,32
	.sym	_class,1,4,1,32
	.sym	_unit,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_t,4,4,1,32
	.sym	_f,5,4,1,32
	.sym	_fv,6,4,1,32
	.sym	_tbl_p,7,20,1,32
	.line	1
;----------------------------------------------------------------------
; 1161 | int Get_Next_Unit(int class, int unit)                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
;----------------------------------------------------------------------
; 1163 | int i;  /* counter                      */                             
; 1164 | int t;  /* temp unit code       */                                     
; 1165 | int f;  /* found unit code      */                                     
; 1166 | int fv; /* found variable       */                                     
; 1167 | const int *tbl_p;                                                      
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |1162| 
        sti       ar2,*+fp(1)           ; |1162| 
	.line	9
;----------------------------------------------------------------------
; 1169 | i  = 0;                                                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1169| 
        sti       r0,*+fp(3)            ; |1169| 
	.line	10
;----------------------------------------------------------------------
; 1170 | f  = 0;                                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(5)            ; |1170| 
	.line	11
;----------------------------------------------------------------------
; 1171 | fv = 0;                                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(6)            ; |1171| 
	.line	13
;----------------------------------------------------------------------
; 1173 | if(RUSS)                                                               
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,ar0             ; |1173| 
        ldiu      *ar0,r0               ; |1173| 
        cmpi      0,r0                  ; |1173| 
        beq       L301                  ; |1173| 
;*      Branch Occurs to L301           ; |1173| 
	.line	14
;----------------------------------------------------------------------
; 1174 | tbl_p = MASTER_UNITS_STR_R;                                            
; 1175 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,r0              ; |1174| 
        sti       r0,*+fp(7)            ; |1174| 
        bu        L302                  ; |1160| 
;*      Branch Occurs to L302           ; |1160| 
L301:        
	.line	16
;----------------------------------------------------------------------
; 1176 | tbl_p = MASTER_UNITS_STR;                                              
; 1178 | while(1)                                                               
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,r0              ; |1176| 
        sti       r0,*+fp(7)            ; |1176| 
L302:        
	.line	20
;----------------------------------------------------------------------
; 1180 | if (tbl_p[9*i+0]==(c_none|0x100))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1180| 
        ldiu      *+fp(7),ir0           ; |1180| 
        mpyi      9,ar0                 ; |1180| 
        ldiu      *+ar0(ir0),r0         ; |1180| 
        cmpi      507,r0                ; |1180| 
        bne       L305                  ; |1180| 
;*      Branch Occurs to L305           ; |1180| 
	.line	21
;----------------------------------------------------------------------
; 1181 | return unit;                                                           
;----------------------------------------------------------------------
        bud       L319                  ; |1181| 
	nop
	nop
        ldiu      *+fp(2),r0            ; |1181| 
;*      Branch Occurs to L319           ; |1181| 
L305:        
	.line	22
;----------------------------------------------------------------------
; 1182 | else if (tbl_p[9*i+0]==(class|0x100))                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1182| 
        ldiu      256,r0                ; |1182| 
        ldiu      *+fp(7),ir0           ; |1182| 
        mpyi      9,ar0                 ; |1182| 
        or        *+fp(1),r0            ; |1182| 
        ldiu      *+ar0(ir0),r1         ; |1182| 
        cmpi3     r0,r1                 ; |1182| 
        bne       L318                  ; |1182| 
;*      Branch Occurs to L318           ; |1182| 
	.line	24
;----------------------------------------------------------------------
; 1184 | i++;                                                                   
; 1186 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1184| 
        addi      *+fp(3),r0            ; |1184| 
        sti       r0,*+fp(3)            ; |1184| 
L307:        
	.line	28
;----------------------------------------------------------------------
; 1188 | if (f==0)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0            ; |1188| 
        cmpi      0,r0                  ; |1188| 
        bne       L309                  ; |1188| 
;*      Branch Occurs to L309           ; |1188| 
	.line	30
;----------------------------------------------------------------------
; 1190 | f = 1;                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1190| 
        sti       r0,*+fp(5)            ; |1190| 
	.line	31
;----------------------------------------------------------------------
; 1191 | t = tbl_p[9*i+0]&0xFF;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1191| 
        ldiu      *+fp(7),ir0           ; |1191| 
        mpyi      9,ar0                 ; |1191| 
        ldiu      255,r0                ; |1191| 
        and3      r0,*+ar0(ir0),r0      ; |1191| 
        sti       r0,*+fp(4)            ; |1191| 
L309:        
	.line	34
;----------------------------------------------------------------------
; 1194 | if ((fv==0) && (tbl_p[9*i+0]==(unit&0xFF))) /* found variable unit code
;     |  */                                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |1194| 
        cmpi      0,r0                  ; |1194| 
        bne       L312                  ; |1194| 
;*      Branch Occurs to L312           ; |1194| 
        ldiu      *+fp(3),ar0           ; |1194| 
        ldiu      255,r0                ; |1194| 
        ldiu      *+fp(7),ir0           ; |1194| 
        mpyi      9,ar0                 ; |1194| 
        and       *+fp(2),r0            ; |1194| 
        ldiu      *+ar0(ir0),r1         ; |1194| 
        cmpi3     r0,r1                 ; |1194| 
        bne       L312                  ; |1194| 
;*      Branch Occurs to L312           ; |1194| 
	.line	35
;----------------------------------------------------------------------
; 1195 | fv = 1;                                                                
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1195| 
        sti       r0,*+fp(6)            ; |1195| 
        bu        L317                  ; |1160| 
;*      Branch Occurs to L317           ; |1160| 
L312:        
	.line	36
;----------------------------------------------------------------------
; 1196 | else if ((tbl_p[9*i+0]&0x100)==0x100)                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1196| 
        ldiu      *+fp(7),ir0           ; |1196| 
        mpyi      9,ar0                 ; |1196| 
        ldiu      256,r0                ; |1196| 
        and3      r0,*+ar0(ir0),r0      ; |1196| 
        cmpi      256,r0                ; |1196| 
        bne       L315                  ; |1196| 
;*      Branch Occurs to L315           ; |1196| 
	.line	37
;----------------------------------------------------------------------
; 1197 | return t;                                                              
;----------------------------------------------------------------------
        bud       L319                  ; |1197| 
	nop
	nop
        ldiu      *+fp(4),r0            ; |1197| 
;*      Branch Occurs to L319           ; |1197| 
L315:        
	.line	38
;----------------------------------------------------------------------
; 1198 | else if (fv==1) /* found variable unit code */                         
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0            ; |1198| 
        cmpi      1,r0                  ; |1198| 
        bne       L317                  ; |1198| 
;*      Branch Occurs to L317           ; |1198| 
	.line	39
;----------------------------------------------------------------------
; 1199 | return (tbl_p[9*i+0]&0xFF);                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1199| 
        ldiu      *+fp(7),ir0           ; |1199| 
        bud       L319                  ; |1199| 
        mpyi      9,ar0                 ; |1199| 
        ldiu      255,r0                ; |1199| 
        and3      r0,*+ar0(ir0),r0      ; |1199| 
;*      Branch Occurs to L319           ; |1199| 
L317:        
	.line	41
;----------------------------------------------------------------------
; 1201 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1201| 
        addi      *+fp(3),r0            ; |1201| 
        sti       r0,*+fp(3)            ; |1201| 
	.line	42
        bu        L307                  ; |1202| 
;*      Branch Occurs to L307           ; |1202| 
L318:        
	.line	44
;----------------------------------------------------------------------
; 1204 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1204| 
        addi      *+fp(3),r0            ; |1204| 
        sti       r0,*+fp(3)            ; |1204| 
	.line	45
        bu        L302                  ; |1205| 
;*      Branch Occurs to L302           ; |1205| 
L319:        
	.line	46
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1206| 
        ldiu      *fp,fp                ; |1206| 
                                        ; Unallocate the Frame
        subi      9,sp                  ; |1206| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1206,000000000h,7


	.sect	 ".text"

	.global	_Get_Unit
	.sym	_Get_Unit,_Get_Unit,46,2,0
	.func	1222
;******************************************************************************
;* FUNCTION NAME: _Get_Unit                                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar2,ir0,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 5 Auto + 0 SOE = 7 words          *
;******************************************************************************
_Get_Unit:
;* ar2   assigned to _class
	.sym	_class,10,4,17,32
;* r2    assigned to _unit
	.sym	_unit,2,4,17,32
;* r3    assigned to _str
	.sym	_str,3,18,17,32
	.sym	_class,1,4,1,32
	.sym	_unit,2,4,1,32
	.sym	_str,3,18,1,32
	.sym	_i,4,4,1,32
	.sym	_tbl_p,5,20,1,32
	.line	1
;----------------------------------------------------------------------
; 1222 | BOOL Get_Unit(int class, int unit, char* str)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
;----------------------------------------------------------------------
; 1224 | int i; /* counter */                                                   
; 1225 | const int *tbl_p;                                                      
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |1223| 
        sti       r2,*+fp(2)            ; |1223| 
        sti       ar2,*+fp(1)           ; |1223| 
	.line	6
;----------------------------------------------------------------------
; 1227 | for (i=0;i<8;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1227| 
        sti       r0,*+fp(4)            ; |1227| 
        cmpi      8,r0                  ; |1227| 
        ldiu      0,r1                  ; |1228| 
        bge       L323                  ; |1227| 
;*      Branch Occurs to L323           ; |1227| 
L322:        
	.line	7
;----------------------------------------------------------------------
; 1228 | str[i] = 0;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0           ; |1228| 
        ldiu      *+fp(4),ar0           ; |1228| 
        sti       r1,*+ar0(ir0)         ; |1228| 
	.line	6
        ldiu      1,r0                  ; |1227| 
        addi      *+fp(4),r0            ; |1227| 
        sti       r0,*+fp(4)            ; |1227| 
        cmpi      8,r0                  ; |1227| 
        blt       L322                  ; |1227| 
;*      Branch Occurs to L322           ; |1227| 
L323:        
	.line	9
;----------------------------------------------------------------------
; 1230 | i = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1230| 
        sti       r0,*+fp(4)            ; |1230| 
	.line	11
;----------------------------------------------------------------------
; 1232 | if(RUSS)                                                               
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,ar0             ; |1232| 
        ldiu      *ar0,r0               ; |1232| 
        cmpi      0,r0                  ; |1232| 
        beq       L325                  ; |1232| 
;*      Branch Occurs to L325           ; |1232| 
	.line	12
;----------------------------------------------------------------------
; 1233 | tbl_p = MASTER_UNITS_STR_R;                                            
; 1234 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,r0              ; |1233| 
        sti       r0,*+fp(5)            ; |1233| 
        bu        L326                  ; |1221| 
;*      Branch Occurs to L326           ; |1221| 
L325:        
	.line	14
;----------------------------------------------------------------------
; 1235 | tbl_p = MASTER_UNITS_STR;                                              
; 1237 | while(1)                                                               
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,r0              ; |1235| 
        sti       r0,*+fp(5)            ; |1235| 
L326:        
	.line	18
;----------------------------------------------------------------------
; 1239 | if (tbl_p[9*i+0]==(c_none|0x100))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |1239| 
        ldiu      *+fp(5),ir0           ; |1239| 
        mpyi      9,ar0                 ; |1239| 
        ldiu      *+ar0(ir0),r0         ; |1239| 
        cmpi      507,r0                ; |1239| 
        bne       L329                  ; |1239| 
;*      Branch Occurs to L329           ; |1239| 
	.line	19
;----------------------------------------------------------------------
; 1240 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L338                  ; |1240| 
	nop
	nop
        ldiu      0,r0                  ; |1240| 
;*      Branch Occurs to L338           ; |1240| 
L329:        
	.line	20
;----------------------------------------------------------------------
; 1241 | else if (tbl_p[9*i+0]==(class|0x100))                                  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |1241| 
        ldiu      256,r0                ; |1241| 
        ldiu      *+fp(5),ir0           ; |1241| 
        mpyi      9,ar0                 ; |1241| 
        or        *+fp(1),r0            ; |1241| 
        ldiu      *+ar0(ir0),r1         ; |1241| 
        cmpi3     r0,r1                 ; |1241| 
        bne       L337                  ; |1241| 
;*      Branch Occurs to L337           ; |1241| 
	.line	22
;----------------------------------------------------------------------
; 1243 | i++;                                                                   
; 1245 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1243| 
        addi      *+fp(4),r0            ; |1243| 
        sti       r0,*+fp(4)            ; |1243| 
L331:        
	.line	26
;----------------------------------------------------------------------
; 1247 | if (tbl_p[9*i+0]==(unit&0xFF))                                         
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |1247| 
        ldiu      255,r0                ; |1247| 
        ldiu      *+fp(5),ir0           ; |1247| 
        mpyi      9,ar0                 ; |1247| 
        and       *+fp(2),r0            ; |1247| 
        ldiu      *+ar0(ir0),r1         ; |1247| 
        cmpi3     r0,r1                 ; |1247| 
        bne       L334                  ; |1247| 
;*      Branch Occurs to L334           ; |1247| 
	.line	28
;----------------------------------------------------------------------
; 1249 | strcpy (str, (char*) &tbl_p[9*i+1]);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(4),r2            ; |1249| 
        ldp       @CL49,DP
        ldiu      *+fp(3),ar2           ; |1249| 
        mpyi      9,r2                  ; |1249| 
        ldiu      @CL49,r0              ; |1249| 
        addi      *+fp(5),r2            ; |1249| Unsigned
        addi      1,r2                  ; |1249| Unsigned
        callu     r0                    ; far call to _strcpy	; |1249| 
                                        ; |1249| Far Call Occurs
	.line	30
;----------------------------------------------------------------------
; 1251 | return TRUE;                                                           
;----------------------------------------------------------------------
        bud       L338                  ; |1251| 
	nop
	nop
        ldiu      1,r0                  ; |1251| 
;*      Branch Occurs to L338           ; |1251| 
L334:        
	.line	32
;----------------------------------------------------------------------
; 1253 | else if ((tbl_p[9*i+0]&0x100)==0x100)                                  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |1253| 
        ldiu      *+fp(5),ir0           ; |1253| 
        mpyi      9,ar0                 ; |1253| 
        ldiu      256,r0                ; |1253| 
        and3      r0,*+ar0(ir0),r0      ; |1253| 
        cmpi      256,r0                ; |1253| 
        bne       L336                  ; |1253| 
;*      Branch Occurs to L336           ; |1253| 
	.line	33
;----------------------------------------------------------------------
; 1254 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L338                  ; |1254| 
	nop
	nop
        ldiu      0,r0                  ; |1254| 
;*      Branch Occurs to L338           ; |1254| 
L336:        
	.line	35
;----------------------------------------------------------------------
; 1256 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1256| 
        addi      *+fp(4),r0            ; |1256| 
        sti       r0,*+fp(4)            ; |1256| 
	.line	36
        bu        L331                  ; |1257| 
;*      Branch Occurs to L331           ; |1257| 
L337:        
	.line	38
;----------------------------------------------------------------------
; 1259 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1259| 
        addi      *+fp(4),r0            ; |1259| 
        sti       r0,*+fp(4)            ; |1259| 
	.line	39
        bu        L326                  ; |1260| 
;*      Branch Occurs to L326           ; |1260| 
L338:        
	.line	40
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1261| 
        ldiu      *fp,fp                ; |1261| 
                                        ; Unallocate the Frame
        subi      7,sp                  ; |1261| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1261,000000000h,5


	.sect	 ".text"

	.global	_Get_Class
	.sym	_Get_Class,_Get_Class,46,2,0
	.func	1276
;******************************************************************************
;* FUNCTION NAME: _Get_Class                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Get_Class:
;* ar2   assigned to _class
	.sym	_class,10,4,17,32
;* r2    assigned to _str
	.sym	_str,2,18,17,32
	.sym	_class,1,4,1,32
	.sym	_str,2,18,1,32
	.sym	_i,3,4,1,32
	.sym	_tbl_p,4,20,1,32
	.line	1
;----------------------------------------------------------------------
; 1276 | BOOL Get_Class(int class, char* str)                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 1278 | int i; /* counter */                                                   
; 1279 | const int *tbl_p;                                                      
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |1277| 
        sti       ar2,*+fp(1)           ; |1277| 
	.line	6
;----------------------------------------------------------------------
; 1281 | i               = 0;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1281| 
        sti       r0,*+fp(3)            ; |1281| 
	.line	7
;----------------------------------------------------------------------
; 1282 | str[0]  = 0;                                                           
;----------------------------------------------------------------------
        ldiu      r2,ar0
        sti       r0,*ar0               ; |1282| 
	.line	9
;----------------------------------------------------------------------
; 1284 | if(RUSS)                                                               
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,ar0             ; |1284| 
        ldiu      *ar0,r0               ; |1284| 
        cmpi      0,r0                  ; |1284| 
        beq       L342                  ; |1284| 
;*      Branch Occurs to L342           ; |1284| 
	.line	10
;----------------------------------------------------------------------
; 1285 | tbl_p = MASTER_UNITS_STR_R;                                            
; 1286 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,r0              ; |1285| 
        sti       r0,*+fp(4)            ; |1285| 
        bu        L343                  ; |1275| 
;*      Branch Occurs to L343           ; |1275| 
L342:        
	.line	12
;----------------------------------------------------------------------
; 1287 | tbl_p = MASTER_UNITS_STR;                                              
; 1289 | while(1)                                                               
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      @CL48,r0              ; |1287| 
        sti       r0,*+fp(4)            ; |1287| 
L343:        
	.line	16
;----------------------------------------------------------------------
; 1291 | if (tbl_p[9*i+0]==(c_none|0x100))                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1291| 
        ldiu      *+fp(4),ir0           ; |1291| 
        mpyi      9,ar0                 ; |1291| 
        ldiu      *+ar0(ir0),r0         ; |1291| 
        cmpi      507,r0                ; |1291| 
        bne       L346                  ; |1291| 
;*      Branch Occurs to L346           ; |1291| 
	.line	17
;----------------------------------------------------------------------
; 1292 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L349                  ; |1292| 
	nop
	nop
        ldiu      0,r0                  ; |1292| 
;*      Branch Occurs to L349           ; |1292| 
L346:        
	.line	18
;----------------------------------------------------------------------
; 1293 | else if (tbl_p[9*i+0]==(class|0x100))                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1293| 
        ldiu      256,r0                ; |1293| 
        ldiu      *+fp(4),ir0           ; |1293| 
        mpyi      9,ar0                 ; |1293| 
        or        *+fp(1),r0            ; |1293| 
        ldiu      *+ar0(ir0),r1         ; |1293| 
        cmpi3     r0,r1                 ; |1293| 
        bne       L348                  ; |1293| 
;*      Branch Occurs to L348           ; |1293| 
	.line	20
;----------------------------------------------------------------------
; 1295 | strcpy (str, (char*) &tbl_p[9*i+1]);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),r2            ; |1295| 
        ldp       @CL49,DP
        ldiu      *+fp(2),ar2           ; |1295| 
        mpyi      9,r2                  ; |1295| 
        ldiu      @CL49,r0              ; |1295| 
        addi      *+fp(4),r2            ; |1295| Unsigned
        addi      1,r2                  ; |1295| Unsigned
        callu     r0                    ; far call to _strcpy	; |1295| 
                                        ; |1295| Far Call Occurs
	.line	21
;----------------------------------------------------------------------
; 1296 | return TRUE;                                                           
;----------------------------------------------------------------------
        bud       L349                  ; |1296| 
	nop
	nop
        ldiu      1,r0                  ; |1296| 
;*      Branch Occurs to L349           ; |1296| 
L348:        
	.line	23
;----------------------------------------------------------------------
; 1298 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |1298| 
        addi      *+fp(3),r0            ; |1298| 
        sti       r0,*+fp(3)            ; |1298| 
	.line	24
        bu        L343                  ; |1299| 
;*      Branch Occurs to L343           ; |1299| 
L349:        
	.line	25
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1300| 
        ldiu      *fp,fp                ; |1300| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |1300| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1300,000000000h,4


	.sect	 ".text"

	.global	_Time_Scale_Flow
	.sym	_Time_Scale_Flow,_Time_Scale_Flow,43,2,0
	.func	1321
;******************************************************************************
;* FUNCTION NAME: _Time_Scale_Flow                                            *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,f2,r3,ar0,ar2,ir0,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 8 Auto + 0 SOE = 10 words         *
;******************************************************************************
_Time_Scale_Flow:
;* f2    assigned to _in
	.sym	_in,2,11,17,64
;* ar2   assigned to _class
	.sym	_class,10,4,17,32
;* r3    assigned to _unit
	.sym	_unit,3,4,17,32
;* rc    assigned to _flow_unit
	.sym	_flow_unit,19,4,17,32
	.sym	_in,1,11,1,64
	.sym	_class,3,4,1,32
	.sym	_unit,4,4,1,32
	.sym	_flow_unit,5,4,1,32
	.sym	_r,6,11,1,64
	.sym	_u,8,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1321 | long double Time_Scale_Flow(long double in, int class, int unit, int fl
;     | ow_unit)                                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
	.line	2
;----------------------------------------------------------------------
; 1323 | long double r;                                                         
; 1324 | int     u;                                                             
;----------------------------------------------------------------------
        sti       ar2,*+fp(3)           ; |1322| 
        stf       f2,*+fp(1)            ; |1322| Store high half
        sti       rc,*+fp(5)            ; |1322| 
        sti       r2,*+fp(2)            ; |1322| Store low half
        sti       r3,*+fp(4)            ; |1322| 
	.line	6
;----------------------------------------------------------------------
; 1326 | r = 0.0;                                                               
; 1328 | switch(class&0xFF)                                                     
; 1330 |         case c_mass:                                                   
; 1332 |                 switch(flow_unit&0xFF)                                 
; 1334 |                         case u_mfr_g_sec:                              
; 1335 |                         case u_mfr_g_min:                              
; 1336 |                         case u_mfr_g_hr:                               
;----------------------------------------------------------------------
        ldp       @CL7+0,DP
        ldfu      @CL7+0,f0             ; |1326| 40b float hi half
        ldp       @CL7+1,DP
        ldiu      @CL7+1,r0             ; |1326| 40b float lo half
        stf       f0,*+fp(6)            ; |1326| Store high half
        sti       r0,*+fp(7)            ; |1326| Store low half
        bu        L408                  ; |1320| 
;*      Branch Occurs to L408           ; |1320| 
L353:        
	.line	18
;----------------------------------------------------------------------
; 1338 | u = u_m_g;                                                             
;----------------------------------------------------------------------
        ldiu      60,r0                 ; |1338| 
        sti       r0,*+fp(8)            ; |1338| 
	.line	20
;----------------------------------------------------------------------
; 1340 | break;                                                                 
; 1342 | case u_mfr_metric_tons_min:                                            
; 1343 | case u_mfr_metric_tons_hr:                                             
; 1344 | case u_mfr_metric_tons_day:                                            
;----------------------------------------------------------------------
        bu        L362                  ; |1340| 
;*      Branch Occurs to L362           ; |1340| 
L354:        
	.line	26
;----------------------------------------------------------------------
; 1346 | u = u_m_metric_tons;                                                   
;----------------------------------------------------------------------
        ldiu      62,r0                 ; |1346| 
        sti       r0,*+fp(8)            ; |1346| 
	.line	28
;----------------------------------------------------------------------
; 1348 | break;                                                                 
; 1350 | case u_mfr_lbs_sec:                                                    
; 1351 | case u_mfr_lbs_min:                                                    
; 1352 | case u_mfr_lbs_hr:                                                     
; 1353 | case u_mfr_lbs_day:                                                    
;----------------------------------------------------------------------
        bu        L362                  ; |1348| 
;*      Branch Occurs to L362           ; |1348| 
L355:        
	.line	35
;----------------------------------------------------------------------
; 1355 | u = u_m_lbs;                                                           
;----------------------------------------------------------------------
        ldiu      63,r0                 ; |1355| 
        sti       r0,*+fp(8)            ; |1355| 
	.line	37
;----------------------------------------------------------------------
; 1357 | break;                                                                 
; 1359 | case u_mfr_short_tons_min:                                             
; 1360 | case u_mfr_short_tons_hr:                                              
; 1361 | case u_mfr_short_tons_day:                                             
;----------------------------------------------------------------------
        bu        L362                  ; |1357| 
;*      Branch Occurs to L362           ; |1357| 
L356:        
	.line	43
;----------------------------------------------------------------------
; 1363 | u = u_m_short_tons;                                                    
;----------------------------------------------------------------------
        ldiu      64,r0                 ; |1363| 
        sti       r0,*+fp(8)            ; |1363| 
	.line	45
;----------------------------------------------------------------------
; 1365 | break;                                                                 
; 1367 | case u_mfr_long_tons_hr:                                               
; 1368 | case u_mfr_long_tons_day:                                              
;----------------------------------------------------------------------
        bu        L362                  ; |1365| 
;*      Branch Occurs to L362           ; |1365| 
L357:        
	.line	50
;----------------------------------------------------------------------
; 1370 | u = u_m_long_tons;                                                     
;----------------------------------------------------------------------
        ldiu      65,r0                 ; |1370| 
        sti       r0,*+fp(8)            ; |1370| 
	.line	52
;----------------------------------------------------------------------
; 1372 | break;                                                                 
; 1374 | case u_mfr_kg_sec:                                                     
; 1375 | case u_mfr_kg_min:                                                     
; 1376 | case u_mfr_kg_hr:                                                      
; 1377 | case u_mfr_kg_day:                                                     
; 1378 | default:                                                               
;----------------------------------------------------------------------
        bu        L362                  ; |1372| 
;*      Branch Occurs to L362           ; |1372| 
L358:        
	.line	60
;----------------------------------------------------------------------
; 1380 | u = u_m_kg;                                                            
;----------------------------------------------------------------------
        ldiu      61,r0                 ; |1380| 
        sti       r0,*+fp(8)            ; |1380| 
	.line	62
;----------------------------------------------------------------------
; 1382 | break;                                                                 
;----------------------------------------------------------------------
        bu        L362                  ; |1382| 
;*      Branch Occurs to L362           ; |1382| 
L360:        
	.line	12
        ldiu      255,ir0               ; |1332| 
        ldiu      70,r0                 ; |1332| 
        and       *+fp(5),ir0           ; |1332| 
        subri     ir0,r0                ; |1332| 
        cmpi      18,r0                 ; |1332| 
        bhi       L358                  ; |1332| 
;*      Branch Occurs to L358           ; |1332| 
        ldp       @CL50,DP
        subi      70,ir0                ; |1332| 
        ldiu      @CL50,ar0             ; |1332| 
        ldiu      *+ar0(ir0),r0         ; |1332| 
        bu        r0                    ; |1332| 

	.sect	".text"
SW0:	.word	L353	; 70
	.word	L353	; 71
	.word	L353	; 72
	.word	L358	; 73
	.word	L358	; 74
	.word	L358	; 75
	.word	L358	; 76
	.word	L354	; 77
	.word	L354	; 78
	.word	L354	; 79
	.word	L355	; 80
	.word	L355	; 81
	.word	L355	; 82
	.word	L355	; 83
	.word	L356	; 84
	.word	L356	; 85
	.word	L356	; 86
	.word	L357	; 87
	.word	L357	; 88
	.sect	".text"
;*      Branch Occurs to r0             ; |1332| 
L362:        
	.line	66
;----------------------------------------------------------------------
; 1386 | r = Convert(class, unit, u, in, 0, -1); /* convert */                  
; 1388 | switch(flow_unit&0xFF)                                                 
; 1390 |         case u_mfr_metric_tons_day:                                    
; 1391 |         case u_mfr_lbs_day:                                            
; 1392 |         case u_mfr_short_tons_day:                                     
; 1393 |         case u_mfr_long_tons_day:                                      
; 1394 |         case u_mfr_kg_day:                                             
;----------------------------------------------------------------------
        ldfu      *+fp(1),f2            ; |1386| 40b float hi half
        ldp       @CL12,DP
        ldiu      *+fp(3),ar2           ; |1386| 
        ldiu      *+fp(4),r3            ; |1386| 
        ldiu      *+fp(8),rc            ; |1386| 
        ldiu      -1,re                 ; |1386| 
        ldiu      0,rs                  ; |1386| 
        ldiu      @CL12,r0              ; |1386| 
        ldiu      *+fp(2),r2            ; |1386| 40b float lo half
        callu     r0                    ; far call to _Convert	; |1386| 
                                        ; |1386| Far Call Occurs
        stf       f0,*+fp(6)            ; |1386| Store high half
        sti       r0,*+fp(7)            ; |1386| Store low half
        bu        L367                  ; |1320| 
;*      Branch Occurs to L367           ; |1320| 
L363:        
	.line	76
;----------------------------------------------------------------------
; 1396 | r *= 86400.0;                                                          
;----------------------------------------------------------------------
        ldp       @CL51+0,DP
        ldfu      *+fp(6),f0            ; |1396| 40b float hi half
        ldfu      @CL51+0,f1            ; |1396| 40b float hi half
        ldiu      *+fp(7),r0            ; |1396| 40b float lo half
        ldp       @CL51+1,DP
        ldiu      @CL51+1,r1            ; |1396| 40b float lo half
        call      MPY_LD                ; |1396| 
                                        ; |1396| Call Occurs
        stf       f0,*+fp(6)            ; |1396| Store high half
        sti       r0,*+fp(7)            ; |1396| Store low half
	.line	78
;----------------------------------------------------------------------
; 1398 | break;                                                                 
; 1400 | case u_mfr_g_hr:                                                       
; 1401 | case u_mfr_metric_tons_hr:                                             
; 1402 | case u_mfr_lbs_hr:                                                     
; 1403 | case u_mfr_short_tons_hr:                                              
; 1404 | case u_mfr_long_tons_hr:                                               
; 1405 | case u_mfr_kg_hr:                                                      
;----------------------------------------------------------------------
        bu        L410                  ; |1398| 
;*      Branch Occurs to L410           ; |1398| 
L364:        
	.line	87
;----------------------------------------------------------------------
; 1407 | r *= 3600.0;                                                           
;----------------------------------------------------------------------
        ldp       @CL52+0,DP
        ldfu      *+fp(6),f0            ; |1407| 40b float hi half
        ldfu      @CL52+0,f1            ; |1407| 40b float hi half
        ldiu      *+fp(7),r0            ; |1407| 40b float lo half
        ldp       @CL52+1,DP
        ldiu      @CL52+1,r1            ; |1407| 40b float lo half
        call      MPY_LD                ; |1407| 
                                        ; |1407| Call Occurs
        stf       f0,*+fp(6)            ; |1407| Store high half
        sti       r0,*+fp(7)            ; |1407| Store low half
	.line	89
;----------------------------------------------------------------------
; 1409 | break;                                                                 
; 1411 | case u_mfr_g_min:                                                      
; 1412 | case u_mfr_metric_tons_min:                                            
; 1413 | case u_mfr_lbs_min:                                                    
; 1414 | case u_mfr_short_tons_min:                                             
; 1415 | case u_mfr_kg_min:                                                     
;----------------------------------------------------------------------
        bu        L410                  ; |1409| 
;*      Branch Occurs to L410           ; |1409| 
L365:        
	.line	97
;----------------------------------------------------------------------
; 1417 | r *= 60.0;                                                             
;----------------------------------------------------------------------
        ldp       @CL53+0,DP
        ldfu      *+fp(6),f0            ; |1417| 40b float hi half
        ldfu      @CL53+0,f1            ; |1417| 40b float hi half
        ldiu      *+fp(7),r0            ; |1417| 40b float lo half
        ldp       @CL53+1,DP
        ldiu      @CL53+1,r1            ; |1417| 40b float lo half
        call      MPY_LD                ; |1417| 
                                        ; |1417| Call Occurs
        stf       f0,*+fp(6)            ; |1417| Store high half
        sti       r0,*+fp(7)            ; |1417| Store low half
	.line	99
;----------------------------------------------------------------------
; 1419 | break;                                                                 
; 1421 | case u_mfr_g_sec:                                                      
; 1422 | case u_mfr_lbs_sec:                                                    
; 1423 | case u_mfr_kg_sec:                                                     
; 1424 | default:                                                               
;----------------------------------------------------------------------
        bu        L410                  ; |1419| 
;*      Branch Occurs to L410           ; |1419| 
	.line	105
;----------------------------------------------------------------------
; 1425 | break;                                                                 
;----------------------------------------------------------------------
L367:        
	.line	68
        ldiu      255,ir0               ; |1388| 
        ldiu      70,r0                 ; |1388| 
        and       *+fp(5),ir0           ; |1388| 
        subri     ir0,r0                ; |1388| 
        cmpi      18,r0                 ; |1388| 
        bhi       L410                  ; |1388| 
;*      Branch Occurs to L410           ; |1388| 
        ldp       @CL54,DP
        subi      70,ir0                ; |1388| 
        ldiu      @CL54,ar0             ; |1388| 
        ldiu      *+ar0(ir0),r0         ; |1388| 
        bu        r0                    ; |1388| 

	.sect	".text"
SW1:	.word	L410	; 70
	.word	L365	; 71
	.word	L364	; 72
	.word	L410	; 73
	.word	L365	; 74
	.word	L364	; 75
	.word	L363	; 76
	.word	L365	; 77
	.word	L364	; 78
	.word	L363	; 79
	.word	L410	; 80
	.word	L365	; 81
	.word	L364	; 82
	.word	L363	; 83
	.word	L365	; 84
	.word	L364	; 85
	.word	L363	; 86
	.word	L364	; 87
	.word	L363	; 88
	.sect	".text"
;*      Branch Occurs to r0             ; |1388| 
	.line	108
;----------------------------------------------------------------------
; 1428 | break;                                                                 
; 1430 | case c_volume:                                                         
; 1432 | switch(flow_unit&0xFF)                                                 
; 1434 |         case u_vfr_barrel_day:                                         
; 1435 |         case u_vfr_barrel_hr:                                          
; 1436 |         case u_vfr_barrel_min:                                         
; 1437 |         case u_vfr_barrel_sec:                                         
;----------------------------------------------------------------------
L370:        
	.line	119
;----------------------------------------------------------------------
; 1439 | u = u_v_barrel;                                                        
;----------------------------------------------------------------------
        ldiu      46,r0                 ; |1439| 
        sti       r0,*+fp(8)            ; |1439| 
	.line	121
;----------------------------------------------------------------------
; 1441 | break;                                                                 
; 1443 | case u_vfr_scf_min:                                                    
;----------------------------------------------------------------------
        bu        L394                  ; |1441| 
;*      Branch Occurs to L394           ; |1441| 
L371:        
	.line	125
;----------------------------------------------------------------------
; 1445 | u = u_v_scf;                                                           
;----------------------------------------------------------------------
        ldiu      168,r0                ; |1445| 
        sti       r0,*+fp(8)            ; |1445| 
	.line	127
;----------------------------------------------------------------------
; 1447 | break;                                                                 
; 1449 | case u_vfr_cf_day:                                                     
; 1450 | case u_vfr_cf_hr:                                                      
; 1451 | case u_vfr_cf_min:                                                     
; 1452 | case u_vfr_cf_sec:                                                     
;----------------------------------------------------------------------
        bu        L394                  ; |1447| 
;*      Branch Occurs to L394           ; |1447| 
L372:        
	.line	134
;----------------------------------------------------------------------
; 1454 | u = u_v_cf;                                                            
;----------------------------------------------------------------------
        ldiu      112,r0                ; |1454| 
        sti       r0,*+fp(8)            ; |1454| 
	.line	136
;----------------------------------------------------------------------
; 1456 | break;                                                                 
; 1458 | case u_vfr_N_L_hr:                                                     
;----------------------------------------------------------------------
        bu        L394                  ; |1456| 
;*      Branch Occurs to L394           ; |1456| 
L373:        
	.line	140
;----------------------------------------------------------------------
; 1460 | u = u_v_N_L;                                                           
;----------------------------------------------------------------------
        ldiu      167,r0                ; |1460| 
        sti       r0,*+fp(8)            ; |1460| 
	.line	142
;----------------------------------------------------------------------
; 1462 | break;                                                                 
; 1464 | case u_vfr_L_hr:                                                       
; 1465 | case u_vfr_L_min:                                                      
; 1466 | case u_vfr_L_sec:                                                      
;----------------------------------------------------------------------
        bu        L394                  ; |1462| 
;*      Branch Occurs to L394           ; |1462| 
L374:        
	.line	148
;----------------------------------------------------------------------
; 1468 | u = u_v_L;                                                             
;----------------------------------------------------------------------
        ldiu      41,r0                 ; |1468| 
        sti       r0,*+fp(8)            ; |1468| 
	.line	150
;----------------------------------------------------------------------
; 1470 | break;                                                                 
; 1472 | case u_vfr_N_cm_sec:                                                   
; 1473 | case u_vfr_N_cm_hr:                                                    
; 1474 | case u_vfr_N_cm_day:                                                   
;----------------------------------------------------------------------
        bu        L394                  ; |1470| 
;*      Branch Occurs to L394           ; |1470| 
L375:        
	.line	156
;----------------------------------------------------------------------
; 1476 | u = u_v_N_cm;                                                          
;----------------------------------------------------------------------
        ldiu      166,r0                ; |1476| 
        sti       r0,*+fp(8)            ; |1476| 
	.line	158
;----------------------------------------------------------------------
; 1478 | break;                                                                 
; 1480 | case u_vfr_cm_day:                                                     
; 1481 | case u_vfr_cm_hr:                                                      
; 1482 | case u_vfr_cm_min:                                                     
; 1483 | case u_vfr_cm_sec:                                                     
;----------------------------------------------------------------------
        bu        L394                  ; |1478| 
;*      Branch Occurs to L394           ; |1478| 
L376:        
	.line	165
;----------------------------------------------------------------------
; 1485 | u = u_v_cm;                                                            
;----------------------------------------------------------------------
        ldiu      43,r0                 ; |1485| 
        sti       r0,*+fp(8)            ; |1485| 
	.line	167
;----------------------------------------------------------------------
; 1487 | break;                                                                 
; 1489 | case u_vfr_imp_gal_day:                                                
; 1490 | case u_vfr_imp_gal_hr:                                                 
; 1491 | case u_vfr_imp_gal_sec:                                                
; 1492 | case u_vfr_imp_gal_min:                                                
;----------------------------------------------------------------------
        bu        L394                  ; |1487| 
;*      Branch Occurs to L394           ; |1487| 
L377:        
	.line	174
;----------------------------------------------------------------------
; 1494 | u = u_v_imp_gal;                                                       
;----------------------------------------------------------------------
        ldiu      42,r0                 ; |1494| 
        sti       r0,*+fp(8)            ; |1494| 
	.line	176
;----------------------------------------------------------------------
; 1496 | break;                                                                 
; 1498 | case u_vfr_gal_hr:                                                     
; 1499 | case u_vfr_gal_day:                                                    
; 1500 | case u_vfr_gal_min:                                                    
; 1501 | case u_vfr_gal_sec:                                                    
;----------------------------------------------------------------------
        bu        L394                  ; |1496| 
;*      Branch Occurs to L394           ; |1496| 
L378:        
	.line	183
;----------------------------------------------------------------------
; 1503 | u = u_v_gal;                                                           
;----------------------------------------------------------------------
        ldiu      40,r0                 ; |1503| 
        sti       r0,*+fp(8)            ; |1503| 
	.line	185
;----------------------------------------------------------------------
; 1505 | break;                                                                 
; 1507 | case u_vfr_mscf_day:                                                   
;----------------------------------------------------------------------
        bu        L394                  ; |1505| 
;*      Branch Occurs to L394           ; |1505| 
L379:        
	.line	189
;----------------------------------------------------------------------
; 1509 | u = u_v_mscf;                                                          
;----------------------------------------------------------------------
        ldiu      248,r0                ; |1509| 
        sti       r0,*+fp(8)            ; |1509| 
	.line	191
;----------------------------------------------------------------------
; 1511 | break;                                                                 
; 1513 | case u_vfr_scf_day:                                                    
; 1514 | case u_vfr_scf_sec:                                                    
;----------------------------------------------------------------------
        bu        L394                  ; |1511| 
;*      Branch Occurs to L394           ; |1511| 
L380:        
	.line	196
;----------------------------------------------------------------------
; 1516 | u = u_v_scf;                                                           
;----------------------------------------------------------------------
        ldiu      168,r0                ; |1516| 
        sti       r0,*+fp(8)            ; |1516| 
	.line	198
;----------------------------------------------------------------------
; 1518 | break;                                                                 
; 1520 | case u_vfr_Mgal_day:                                                   
; 1521 | case u_vfr_ML_day:                                                     
; 1522 | default:                                                               
;----------------------------------------------------------------------
        bu        L394                  ; |1518| 
;*      Branch Occurs to L394           ; |1518| 
L381:        
	.line	204
;----------------------------------------------------------------------
; 1524 | u = 0;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |1524| 
        sti       r0,*+fp(8)            ; |1524| 
	.line	206
;----------------------------------------------------------------------
; 1526 | break;                                                                 
;----------------------------------------------------------------------
        bu        L394                  ; |1526| 
;*      Branch Occurs to L394           ; |1526| 
L383:        
	.line	112
        ldiu      255,ir0               ; |1432| 
        ldiu      15,r0                 ; |1432| 
        and       *+fp(5),ir0           ; |1432| 
        subri     ir0,r0                ; |1432| 
        cmpi      16,r0                 ; |1432| 
        bls       L392                  ; |1432| 
;*      Branch Occurs to L392           ; |1432| 
        ldiu      121,r0                ; |1432| 
        subri     ir0,r0                ; |1432| 
        cmpi      17,r0                 ; |1432| 
        bls       L393                  ; |1432| 
;*      Branch Occurs to L393           ; |1432| 
        cmpi      184,ir0               ; |1432| 
        beq       L380                  ; |1432| 
;*      Branch Occurs to L380           ; |1432| 
        cmpi      186,ir0               ; |1432| 
        beq       L380                  ; |1432| 
;*      Branch Occurs to L380           ; |1432| 
        cmpi      190,ir0               ; |1432| 
        beq       L375                  ; |1432| 
;*      Branch Occurs to L375           ; |1432| 
        cmpi      191,ir0               ; |1432| 
        beq       L375                  ; |1432| 
;*      Branch Occurs to L375           ; |1432| 
        cmpi      235,ir0               ; |1432| 
        beq       L378                  ; |1432| 
;*      Branch Occurs to L378           ; |1432| 
        cmpi      249,ir0               ; |1432| 
        beq       L379                  ; |1432| 
;*      Branch Occurs to L379           ; |1432| 
        bu        L381                  ; |1432| 
;*      Branch Occurs to L381           ; |1432| 
L392:        
        ldp       @CL55,DP
        subi      15,ir0                ; |1432| 
        ldiu      @CL55,ar0             ; |1432| 
        ldiu      *+ar0(ir0),r0         ; |1432| 
        bu        r0                    ; |1432| 

	.sect	".text"
SW2:	.word	L372	; 15
	.word	L378	; 16
	.word	L374	; 17
	.word	L377	; 18
	.word	L376	; 19
	.word	L381	; 0
	.word	L381	; 0
	.word	L378	; 22
	.word	L381	; 23
	.word	L374	; 24
	.word	L381	; 25
	.word	L372	; 26
	.word	L372	; 27
	.word	L376	; 28
	.word	L376	; 29
	.word	L377	; 30
	.word	L377	; 31
	.sect	".text"
;*      Branch Occurs to r0             ; |1432| 
L393:        
        ldp       @CL56,DP
        subi      121,ir0               ; |1432| 
        ldiu      @CL56,ar0             ; |1432| 
        ldiu      *+ar0(ir0),r0         ; |1432| 
        bu        r0                    ; |1432| 

	.sect	".text"
SW3:	.word	L375	; 121
	.word	L373	; 122
	.word	L371	; 123
	.word	L381	; 0
	.word	L381	; 0
	.word	L381	; 0
	.word	L381	; 0
	.word	L381	; 0
	.word	L381	; 0
	.word	L372	; 130
	.word	L376	; 131
	.word	L370	; 132
	.word	L370	; 133
	.word	L370	; 134
	.word	L370	; 135
	.word	L378	; 136
	.word	L377	; 137
	.word	L374	; 138
	.sect	".text"
;*      Branch Occurs to r0             ; |1432| 
L394:        
	.line	210
;----------------------------------------------------------------------
; 1530 | r = Convert(class, unit, u, in, 0, -1); /* convert */                  
; 1532 | switch(flow_unit&0xFF)                                                 
; 1534 |         case u_vfr_barrel_day:                                         
; 1535 |         case u_vfr_Mgal_day:                                           
; 1536 |         case u_vfr_ML_day:                                             
; 1537 |         case u_vfr_cf_day:                                             
; 1538 |         case u_vfr_cm_day:                                             
; 1539 |         case u_vfr_imp_gal_day:                                        
; 1540 |         case u_vfr_gal_day:                                            
; 1541 |         case u_vfr_mscf_day:                                           
; 1542 |         case u_vfr_scf_day:                                            
;----------------------------------------------------------------------
        ldfu      *+fp(1),f2            ; |1530| 40b float hi half
        ldp       @CL12,DP
        ldiu      *+fp(3),ar2           ; |1530| 
        ldiu      *+fp(4),r3            ; |1530| 
        ldiu      *+fp(8),rc            ; |1530| 
        ldiu      -1,re                 ; |1530| 
        ldiu      0,rs                  ; |1530| 
        ldiu      @CL12,r0              ; |1530| 
        ldiu      *+fp(2),r2            ; |1530| 40b float lo half
        callu     r0                    ; far call to _Convert	; |1530| 
                                        ; |1530| Far Call Occurs
        stf       f0,*+fp(6)            ; |1530| Store high half
        sti       r0,*+fp(7)            ; |1530| Store low half
        bu        L399                  ; |1320| 
;*      Branch Occurs to L399           ; |1320| 
L395:        
	.line	224
;----------------------------------------------------------------------
; 1544 | r *= 86400.0;                                                          
;----------------------------------------------------------------------
        ldp       @CL51+0,DP
        ldfu      *+fp(6),f0            ; |1544| 40b float hi half
        ldfu      @CL51+0,f1            ; |1544| 40b float hi half
        ldiu      *+fp(7),r0            ; |1544| 40b float lo half
        ldp       @CL51+1,DP
        ldiu      @CL51+1,r1            ; |1544| 40b float lo half
        call      MPY_LD                ; |1544| 
                                        ; |1544| Call Occurs
        stf       f0,*+fp(6)            ; |1544| Store high half
        sti       r0,*+fp(7)            ; |1544| Store low half
	.line	226
;----------------------------------------------------------------------
; 1546 | break;                                                                 
; 1548 | case u_vfr_cm_hr:                                                      
; 1549 | case u_vfr_imp_gal_hr:                                                 
; 1550 | case u_vfr_N_cm_hr:                                                    
; 1551 | case u_vfr_N_L_hr:                                                     
; 1552 | case u_vfr_cf_hr:                                                      
; 1553 | case u_vfr_barrel_hr:                                                  
; 1554 | case u_vfr_gal_hr:                                                     
; 1555 | case u_vfr_L_hr:                                                       
;----------------------------------------------------------------------
        bu        L410                  ; |1546| 
;*      Branch Occurs to L410           ; |1546| 
L396:        
	.line	237
;----------------------------------------------------------------------
; 1557 | r *= 3600.0;                                                           
;----------------------------------------------------------------------
        ldp       @CL52+0,DP
        ldfu      *+fp(6),f0            ; |1557| 40b float hi half
        ldfu      @CL52+0,f1            ; |1557| 40b float hi half
        ldiu      *+fp(7),r0            ; |1557| 40b float lo half
        ldp       @CL52+1,DP
        ldiu      @CL52+1,r1            ; |1557| 40b float lo half
        call      MPY_LD                ; |1557| 
                                        ; |1557| Call Occurs
        stf       f0,*+fp(6)            ; |1557| Store high half
        sti       r0,*+fp(7)            ; |1557| Store low half
	.line	239
;----------------------------------------------------------------------
; 1559 | break;                                                                 
; 1561 | case u_vfr_barrel_min:                                                 
; 1562 | case u_vfr_cm_min:                                                     
; 1563 | case u_vfr_cf_min:                                                     
; 1564 | case u_vfr_gal_min:                                                    
; 1565 | case u_vfr_L_min:                                                      
; 1566 | case u_vfr_imp_gal_min:                                                
; 1567 | case u_vfr_scf_min:                                                    
;----------------------------------------------------------------------
        bu        L410                  ; |1559| 
;*      Branch Occurs to L410           ; |1559| 
L397:        
	.line	249
;----------------------------------------------------------------------
; 1569 | r *= 60.0;                                                             
;----------------------------------------------------------------------
        ldp       @CL53+0,DP
        ldfu      *+fp(6),f0            ; |1569| 40b float hi half
        ldfu      @CL53+0,f1            ; |1569| 40b float hi half
        ldiu      *+fp(7),r0            ; |1569| 40b float lo half
        ldp       @CL53+1,DP
        ldiu      @CL53+1,r1            ; |1569| 40b float lo half
        call      MPY_LD                ; |1569| 
                                        ; |1569| Call Occurs
        stf       f0,*+fp(6)            ; |1569| Store high half
        sti       r0,*+fp(7)            ; |1569| Store low half
	.line	251
;----------------------------------------------------------------------
; 1571 | break;                                                                 
; 1573 | case u_vfr_gal_sec:                                                    
; 1574 | case u_vfr_L_sec:                                                      
; 1575 | case u_vfr_cf_sec:                                                     
; 1576 | case u_vfr_cm_sec:                                                     
; 1577 | case u_vfr_barrel_sec:                                                 
; 1578 | case u_vfr_imp_gal_sec:                                                
; 1579 | default:                                                               
;----------------------------------------------------------------------
        bu        L410                  ; |1571| 
;*      Branch Occurs to L410           ; |1571| 
	.line	260
;----------------------------------------------------------------------
; 1580 | break;                                                                 
;----------------------------------------------------------------------
L399:        
	.line	212
        ldiu      255,ir0               ; |1532| 
        ldiu      15,r0                 ; |1532| 
        and       *+fp(5),ir0           ; |1532| 
        subri     ir0,r0                ; |1532| 
        cmpi      16,r0                 ; |1532| 
        bls       L405                  ; |1532| 
;*      Branch Occurs to L405           ; |1532| 
        ldiu      121,r0                ; |1532| 
        subri     ir0,r0                ; |1532| 
        cmpi      17,r0                 ; |1532| 
        bls       L406                  ; |1532| 
;*      Branch Occurs to L406           ; |1532| 
        cmpi      184,ir0               ; |1532| 
        beq       L395                  ; |1532| 
;*      Branch Occurs to L395           ; |1532| 
        cmpi      235,ir0               ; |1532| 
        beq       L395                  ; |1532| 
;*      Branch Occurs to L395           ; |1532| 
        cmpi      249,ir0               ; |1532| 
        beq       L395                  ; |1532| 
;*      Branch Occurs to L395           ; |1532| 
        bu        L410                  ; |1532| 
;*      Branch Occurs to L410           ; |1532| 
L405:        
        ldp       @CL57,DP
        subi      15,ir0                ; |1532| 
        ldiu      @CL57,ar0             ; |1532| 
        ldiu      *+ar0(ir0),r0         ; |1532| 
        bu        r0                    ; |1532| 

	.sect	".text"
SW4:	.word	L397	; 15
	.word	L397	; 16
	.word	L397	; 17
	.word	L397	; 18
	.word	L396	; 19
	.word	L410	; 0
	.word	L410	; 0
	.word	L410	; 22
	.word	L395	; 23
	.word	L410	; 24
	.word	L395	; 25
	.word	L410	; 26
	.word	L395	; 27
	.word	L410	; 28
	.word	L395	; 29
	.word	L396	; 30
	.word	L395	; 31
	.sect	".text"
;*      Branch Occurs to r0             ; |1532| 
L406:        
        ldp       @CL58,DP
        subi      121,ir0               ; |1532| 
        ldiu      @CL58,ar0             ; |1532| 
        ldiu      *+ar0(ir0),r0         ; |1532| 
        bu        r0                    ; |1532| 

	.sect	".text"
SW5:	.word	L396	; 121
	.word	L396	; 122
	.word	L397	; 123
	.word	L410	; 0
	.word	L410	; 0
	.word	L410	; 0
	.word	L410	; 0
	.word	L410	; 0
	.word	L410	; 0
	.word	L396	; 130
	.word	L397	; 131
	.word	L410	; 132
	.word	L397	; 133
	.word	L396	; 134
	.word	L395	; 135
	.word	L396	; 136
	.word	L410	; 137
	.word	L396	; 138
	.sect	".text"
;*      Branch Occurs to r0             ; |1532| 
	.line	263
;----------------------------------------------------------------------
; 1583 | break;                                                                 
;----------------------------------------------------------------------
L408:        
	.line	8
        ldiu      255,r0                ; |1328| 
        and       *+fp(3),r0            ; |1328| 
        cmpi      68,r0                 ; |1328| 
        beq       L383                  ; |1328| 
;*      Branch Occurs to L383           ; |1328| 
        cmpi      71,r0                 ; |1328| 
        beq       L360                  ; |1328| 
;*      Branch Occurs to L360           ; |1328| 
L410:        
	.line	267
;----------------------------------------------------------------------
; 1587 | return r;                                                              
;----------------------------------------------------------------------
        ldfu      *+fp(6),f0            ; |1587| 40b float hi half
        ldiu      *+fp(7),r0            ; |1587| 40b float lo half
	.line	268
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1588| 
        ldiu      *fp,fp                ; |1588| 
                                        ; Unallocate the Frame
        subi      10,sp                 ; |1588| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1588,000000000h,8


	.sect	 ".text"

	.global	_Breakout_Flow_Units
	.sym	_Breakout_Flow_Units,_Breakout_Flow_Units,32,2,0
	.func	1606
;******************************************************************************
;* FUNCTION NAME: _Breakout_Flow_Units                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,r2,r3,ar0,ar2,ir0,st,rc                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Breakout_Flow_Units:
;* ar2   assigned to _class
	.sym	_class,10,4,17,32
;* r2    assigned to _flow_unit
	.sym	_flow_unit,2,4,17,32
;* r3    assigned to _units
	.sym	_units,3,20,17,32
;* rc    assigned to _r
	.sym	_r,19,22,17,32
	.sym	_class,1,4,1,32
	.sym	_flow_unit,2,4,1,32
	.sym	_units,3,20,1,32
	.sym	_r,4,22,1,32
	.line	1
;----------------------------------------------------------------------
; 1606 | void Breakout_Flow_Units(int class, int flow_unit, int* units, float* r
;     | )                                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
        sti       rc,*+fp(4)            ; |1607| 
        sti       r3,*+fp(3)            ; |1607| 
        sti       r2,*+fp(2)            ; |1607| 
        sti       ar2,*+fp(1)           ; |1607| 
	.line	3
;----------------------------------------------------------------------
; 1608 | r[0] = 1.0;                                                            
;----------------------------------------------------------------------
        ldiu      rc,ar0
        ldfu      1.0000000000e+00,f0   ; |1608| 
        stf       f0,*ar0               ; |1608| 
	.line	4
;----------------------------------------------------------------------
; 1609 | units[0] = u_generic_unknown;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1609| 
        ldiu      252,r0                ; |1609| 
        sti       r0,*ar0               ; |1609| 
	.line	5
;----------------------------------------------------------------------
; 1610 | units[1] = u_generic_unknown;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1610| 
        sti       r0,*+ar0(1)           ; |1610| 
	.line	6
;----------------------------------------------------------------------
; 1611 | units[2] = c_unknown;                                                  
; 1613 | switch(class&0xFF)                                                     
; 1615 |         case c_mass_flow:                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1611| 
        sti       r0,*+ar0(2)           ; |1611| 
        bu        L476                  ; |1605| 
;*      Branch Occurs to L476           ; |1605| 
L414:        
	.line	12
;----------------------------------------------------------------------
; 1617 | units[2] = c_mass;                                                     
; 1619 | switch(flow_unit&0xFF)                                                 
; 1621 |         case u_mfr_g_sec:                                              
; 1622 |         case u_mfr_g_min:                                              
; 1623 |         case u_mfr_g_hr:                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1617| 
        ldiu      71,r0                 ; |1617| 
        sti       r0,*+ar0(2)           ; |1617| 
        bu        L422                  ; |1605| 
;*      Branch Occurs to L422           ; |1605| 
L415:        
	.line	20
;----------------------------------------------------------------------
; 1625 | units[0] = u_m_g;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1625| 
        ldiu      60,r0                 ; |1625| 
        sti       r0,*ar0               ; |1625| 
	.line	22
;----------------------------------------------------------------------
; 1627 | break;                                                                 
; 1629 | case u_mfr_metric_tons_min:                                            
; 1630 | case u_mfr_metric_tons_hr:                                             
; 1631 | case u_mfr_metric_tons_day:                                            
;----------------------------------------------------------------------
        bu        L430                  ; |1627| 
;*      Branch Occurs to L430           ; |1627| 
L416:        
	.line	28
;----------------------------------------------------------------------
; 1633 | units[0] = u_m_metric_tons;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1633| 
        ldiu      62,r0                 ; |1633| 
        sti       r0,*ar0               ; |1633| 
	.line	30
;----------------------------------------------------------------------
; 1635 | break;                                                                 
; 1637 | case u_mfr_lbs_sec:                                                    
; 1638 | case u_mfr_lbs_min:                                                    
; 1639 | case u_mfr_lbs_hr:                                                     
; 1640 | case u_mfr_lbs_day:                                                    
;----------------------------------------------------------------------
        bu        L430                  ; |1635| 
;*      Branch Occurs to L430           ; |1635| 
L417:        
	.line	37
;----------------------------------------------------------------------
; 1642 | units[0] = u_m_lbs;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1642| 
        ldiu      63,r0                 ; |1642| 
        sti       r0,*ar0               ; |1642| 
	.line	39
;----------------------------------------------------------------------
; 1644 | break;                                                                 
; 1646 | case u_mfr_short_tons_min:                                             
; 1647 | case u_mfr_short_tons_hr:                                              
; 1648 | case u_mfr_short_tons_day:                                             
;----------------------------------------------------------------------
        bu        L430                  ; |1644| 
;*      Branch Occurs to L430           ; |1644| 
L418:        
	.line	45
;----------------------------------------------------------------------
; 1650 | units[0] = u_m_short_tons;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1650| 
        ldiu      64,r0                 ; |1650| 
        sti       r0,*ar0               ; |1650| 
	.line	47
;----------------------------------------------------------------------
; 1652 | break;                                                                 
; 1654 | case u_mfr_long_tons_hr:                                               
; 1655 | case u_mfr_long_tons_day:                                              
;----------------------------------------------------------------------
        bu        L430                  ; |1652| 
;*      Branch Occurs to L430           ; |1652| 
L419:        
	.line	52
;----------------------------------------------------------------------
; 1657 | units[0] = u_m_long_tons;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1657| 
        ldiu      65,r0                 ; |1657| 
        sti       r0,*ar0               ; |1657| 
	.line	54
;----------------------------------------------------------------------
; 1659 | break;                                                                 
; 1661 | case u_mfr_kg_sec:                                                     
; 1662 | case u_mfr_kg_min:                                                     
; 1663 | case u_mfr_kg_hr:                                                      
; 1664 | case u_mfr_kg_day:                                                     
; 1665 | default:                                                               
;----------------------------------------------------------------------
        bu        L430                  ; |1659| 
;*      Branch Occurs to L430           ; |1659| 
L420:        
	.line	62
;----------------------------------------------------------------------
; 1667 | units[0] = u_m_kg;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1667| 
        ldiu      61,r0                 ; |1667| 
        sti       r0,*ar0               ; |1667| 
	.line	64
;----------------------------------------------------------------------
; 1669 | break;                                                                 
; 1673 | switch(flow_unit&0xFF)                                                 
; 1675 | case u_mfr_metric_tons_day:                                            
; 1676 | case u_mfr_lbs_day:                                                    
; 1677 | case u_mfr_short_tons_day:                                             
; 1678 | case u_mfr_long_tons_day:                                              
; 1679 | case u_mfr_kg_day:                                                     
;----------------------------------------------------------------------
        bu        L430                  ; |1669| 
;*      Branch Occurs to L430           ; |1669| 
L422:        
	.line	14
        ldiu      255,ir0               ; |1619| 
        ldiu      70,r0                 ; |1619| 
        and       *+fp(2),ir0           ; |1619| 
        subri     ir0,r0                ; |1619| 
        cmpi      18,r0                 ; |1619| 
        bhi       L420                  ; |1619| 
;*      Branch Occurs to L420           ; |1619| 
        ldp       @CL59,DP
        subi      70,ir0                ; |1619| 
        ldiu      @CL59,ar0             ; |1619| 
        ldiu      *+ar0(ir0),r0         ; |1619| 
        bu        r0                    ; |1619| 

	.sect	".text"
SW6:	.word	L415	; 70
	.word	L415	; 71
	.word	L415	; 72
	.word	L420	; 73
	.word	L420	; 74
	.word	L420	; 75
	.word	L420	; 76
	.word	L416	; 77
	.word	L416	; 78
	.word	L416	; 79
	.word	L417	; 80
	.word	L417	; 81
	.word	L417	; 82
	.word	L417	; 83
	.word	L418	; 84
	.word	L418	; 85
	.word	L418	; 86
	.word	L419	; 87
	.word	L419	; 88
	.sect	".text"
;*      Branch Occurs to r0             ; |1619| 
L425:        
	.line	76
;----------------------------------------------------------------------
; 1681 | units[1] = u_time_day;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1681| 
        ldiu      53,r0                 ; |1681| 
        sti       r0,*+ar0(1)           ; |1681| 
	.line	77
;----------------------------------------------------------------------
; 1682 | r[0]     = 86400.0;                                                    
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(4),ar0           ; |1682| 
        ldfu      @CL60,f0              ; |1682| 
        stf       f0,*ar0               ; |1682| 
	.line	79
;----------------------------------------------------------------------
; 1684 | break;                                                                 
; 1686 | case u_mfr_g_hr:                                                       
; 1687 | case u_mfr_metric_tons_hr:                                             
; 1688 | case u_mfr_lbs_hr:                                                     
; 1689 | case u_mfr_short_tons_hr:                                              
; 1690 | case u_mfr_long_tons_hr:                                               
; 1691 | case u_mfr_kg_hr:                                                      
;----------------------------------------------------------------------
        bu        L478                  ; |1684| 
;*      Branch Occurs to L478           ; |1684| 
L426:        
	.line	88
;----------------------------------------------------------------------
; 1693 | units[1] = u_time_hr;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1693| 
        ldiu      52,r0                 ; |1693| 
        sti       r0,*+ar0(1)           ; |1693| 
	.line	89
;----------------------------------------------------------------------
; 1694 | r[0]     = 3600.0;                                                     
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      *+fp(4),ar0           ; |1694| 
        ldfu      @CL61,f0              ; |1694| 
        stf       f0,*ar0               ; |1694| 
	.line	91
;----------------------------------------------------------------------
; 1696 | break;                                                                 
; 1698 | case u_mfr_g_min:                                                      
; 1699 | case u_mfr_metric_tons_min:                                            
; 1700 | case u_mfr_lbs_min:                                                    
; 1701 | case u_mfr_short_tons_min:                                             
; 1702 | case u_mfr_kg_min:                                                     
;----------------------------------------------------------------------
        bu        L478                  ; |1696| 
;*      Branch Occurs to L478           ; |1696| 
L427:        
	.line	99
;----------------------------------------------------------------------
; 1704 | units[1] = u_time_min;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1704| 
        ldiu      50,r0                 ; |1704| 
        sti       r0,*+ar0(1)           ; |1704| 
	.line	100
;----------------------------------------------------------------------
; 1705 | r[0]     = 60.0;                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |1705| 
        ldfu      6.0000000000e+01,f0   ; |1705| 
        stf       f0,*ar0               ; |1705| 
	.line	102
;----------------------------------------------------------------------
; 1707 | break;                                                                 
; 1709 | case u_mfr_g_sec:                                                      
; 1710 | case u_mfr_lbs_sec:                                                    
; 1711 | case u_mfr_kg_sec:                                                     
; 1712 | default:                                                               
;----------------------------------------------------------------------
        bu        L478                  ; |1707| 
;*      Branch Occurs to L478           ; |1707| 
L428:        
	.line	109
;----------------------------------------------------------------------
; 1714 | units[1] = u_time_sec;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1714| 
        ldiu      51,r0                 ; |1714| 
        sti       r0,*+ar0(1)           ; |1714| 
	.line	110
;----------------------------------------------------------------------
; 1715 | r[0]     = 1.0;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |1715| 
        ldfu      1.0000000000e+00,f0   ; |1715| 
        stf       f0,*ar0               ; |1715| 
	.line	112
;----------------------------------------------------------------------
; 1717 | break;                                                                 
;----------------------------------------------------------------------
        bu        L478                  ; |1717| 
;*      Branch Occurs to L478           ; |1717| 
L430:        
	.line	68
        ldiu      255,ir0               ; |1673| 
        ldiu      70,r0                 ; |1673| 
        and       *+fp(2),ir0           ; |1673| 
        subri     ir0,r0                ; |1673| 
        cmpi      18,r0                 ; |1673| 
        bhi       L428                  ; |1673| 
;*      Branch Occurs to L428           ; |1673| 
        ldp       @CL62,DP
        subi      70,ir0                ; |1673| 
        ldiu      @CL62,ar0             ; |1673| 
        ldiu      *+ar0(ir0),r0         ; |1673| 
        bu        r0                    ; |1673| 

	.sect	".text"
SW7:	.word	L428	; 70
	.word	L427	; 71
	.word	L426	; 72
	.word	L428	; 73
	.word	L427	; 74
	.word	L426	; 75
	.word	L425	; 76
	.word	L427	; 77
	.word	L426	; 78
	.word	L425	; 79
	.word	L428	; 80
	.word	L427	; 81
	.word	L426	; 82
	.word	L425	; 83
	.word	L427	; 84
	.word	L426	; 85
	.word	L425	; 86
	.word	L426	; 87
	.word	L425	; 88
	.sect	".text"
;*      Branch Occurs to r0             ; |1673| 
	.line	116
;----------------------------------------------------------------------
; 1721 | break;                                                                 
; 1723 | case c_volumetric_flow:                                                
;----------------------------------------------------------------------
L433:        
	.line	120
;----------------------------------------------------------------------
; 1725 | units[2] = c_volume;                                                   
; 1727 | switch(flow_unit&0xFF)                                                 
; 1729 |         case u_vfr_barrel_day:                                         
; 1730 |         case u_vfr_barrel_hr:                                          
; 1731 |         case u_vfr_barrel_min:                                         
; 1732 |         case u_vfr_barrel_sec:                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1725| 
        ldiu      68,r0                 ; |1725| 
        sti       r0,*+ar0(2)           ; |1725| 
        bu        L447                  ; |1605| 
;*      Branch Occurs to L447           ; |1605| 
L434:        
	.line	129
;----------------------------------------------------------------------
; 1734 | units[0] = u_v_barrel;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1734| 
        ldiu      46,r0                 ; |1734| 
        sti       r0,*ar0               ; |1734| 
	.line	131
;----------------------------------------------------------------------
; 1736 | break;                                                                 
; 1738 | case u_vfr_scf_min:                                                    
;----------------------------------------------------------------------
        bu        L464                  ; |1736| 
;*      Branch Occurs to L464           ; |1736| 
L435:        
	.line	135
;----------------------------------------------------------------------
; 1740 | units[0] = u_v_scf;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1740| 
        ldiu      168,r0                ; |1740| 
        sti       r0,*ar0               ; |1740| 
	.line	137
;----------------------------------------------------------------------
; 1742 | break;                                                                 
; 1744 | case u_vfr_cf_day:                                                     
; 1745 | case u_vfr_cf_hr:                                                      
; 1746 | case u_vfr_cf_min:                                                     
; 1747 | case u_vfr_cf_sec:                                                     
;----------------------------------------------------------------------
        bu        L464                  ; |1742| 
;*      Branch Occurs to L464           ; |1742| 
L436:        
	.line	144
;----------------------------------------------------------------------
; 1749 | units[0] = u_v_cf;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1749| 
        ldiu      112,r0                ; |1749| 
        sti       r0,*ar0               ; |1749| 
	.line	146
;----------------------------------------------------------------------
; 1751 | break;                                                                 
; 1753 | case u_vfr_N_L_hr:                                                     
;----------------------------------------------------------------------
        bu        L464                  ; |1751| 
;*      Branch Occurs to L464           ; |1751| 
L437:        
	.line	150
;----------------------------------------------------------------------
; 1755 | units[0] = u_v_N_L;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1755| 
        ldiu      167,r0                ; |1755| 
        sti       r0,*ar0               ; |1755| 
	.line	152
;----------------------------------------------------------------------
; 1757 | break;                                                                 
; 1759 | case u_vfr_L_hr:                                                       
; 1760 | case u_vfr_L_min:                                                      
; 1761 | case u_vfr_L_sec:                                                      
;----------------------------------------------------------------------
        bu        L464                  ; |1757| 
;*      Branch Occurs to L464           ; |1757| 
L438:        
	.line	158
;----------------------------------------------------------------------
; 1763 | units[0] = u_v_L;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1763| 
        ldiu      41,r0                 ; |1763| 
        sti       r0,*ar0               ; |1763| 
	.line	160
;----------------------------------------------------------------------
; 1765 | break;                                                                 
; 1767 | case u_vfr_N_cm_sec:                                                   
; 1768 | case u_vfr_N_cm_hr:                                                    
; 1769 | case u_vfr_N_cm_day:                                                   
;----------------------------------------------------------------------
        bu        L464                  ; |1765| 
;*      Branch Occurs to L464           ; |1765| 
L439:        
	.line	166
;----------------------------------------------------------------------
; 1771 | units[0] = u_v_N_cm;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1771| 
        ldiu      166,r0                ; |1771| 
        sti       r0,*ar0               ; |1771| 
	.line	168
;----------------------------------------------------------------------
; 1773 | break;                                                                 
; 1775 | case u_vfr_cm_day:                                                     
; 1776 | case u_vfr_cm_hr:                                                      
; 1777 | case u_vfr_cm_min:                                                     
; 1778 | case u_vfr_cm_sec:                                                     
;----------------------------------------------------------------------
        bu        L464                  ; |1773| 
;*      Branch Occurs to L464           ; |1773| 
L440:        
	.line	175
;----------------------------------------------------------------------
; 1780 | units[0] = u_v_cm;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1780| 
        ldiu      43,r0                 ; |1780| 
        sti       r0,*ar0               ; |1780| 
	.line	177
;----------------------------------------------------------------------
; 1782 | break;                                                                 
; 1784 | case u_vfr_imp_gal_day:                                                
; 1785 | case u_vfr_imp_gal_hr:                                                 
; 1786 | case u_vfr_imp_gal_sec:                                                
; 1787 | case u_vfr_imp_gal_min:                                                
;----------------------------------------------------------------------
        bu        L464                  ; |1782| 
;*      Branch Occurs to L464           ; |1782| 
L441:        
	.line	184
;----------------------------------------------------------------------
; 1789 | units[0] = u_v_imp_gal;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1789| 
        ldiu      42,r0                 ; |1789| 
        sti       r0,*ar0               ; |1789| 
	.line	186
;----------------------------------------------------------------------
; 1791 | break;                                                                 
; 1793 | case u_vfr_gal_hr:                                                     
; 1794 | case u_vfr_gal_day:                                                    
; 1795 | case u_vfr_gal_min:                                                    
; 1796 | case u_vfr_gal_sec:                                                    
;----------------------------------------------------------------------
        bu        L464                  ; |1791| 
;*      Branch Occurs to L464           ; |1791| 
L442:        
	.line	193
;----------------------------------------------------------------------
; 1798 | units[0] = u_v_gal;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1798| 
        ldiu      40,r0                 ; |1798| 
        sti       r0,*ar0               ; |1798| 
	.line	195
;----------------------------------------------------------------------
; 1800 | break;                                                                 
; 1802 | case u_vfr_mscf_day:                                                   
;----------------------------------------------------------------------
        bu        L464                  ; |1800| 
;*      Branch Occurs to L464           ; |1800| 
L443:        
	.line	199
;----------------------------------------------------------------------
; 1804 | units[0] = u_v_mscf;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1804| 
        ldiu      248,r0                ; |1804| 
        sti       r0,*ar0               ; |1804| 
	.line	201
;----------------------------------------------------------------------
; 1806 | break;                                                                 
; 1808 | case u_vfr_scf_day:                                                    
; 1809 | case u_vfr_scf_sec:                                                    
;----------------------------------------------------------------------
        bu        L464                  ; |1806| 
;*      Branch Occurs to L464           ; |1806| 
L444:        
	.line	206
;----------------------------------------------------------------------
; 1811 | units[0] = u_v_scf;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1811| 
        ldiu      168,r0                ; |1811| 
        sti       r0,*ar0               ; |1811| 
	.line	208
;----------------------------------------------------------------------
; 1813 | break;                                                                 
; 1815 | case u_vfr_Mgal_day:                                                   
; 1816 | case u_vfr_ML_day:                                                     
; 1817 | default:                                                               
;----------------------------------------------------------------------
        bu        L464                  ; |1813| 
;*      Branch Occurs to L464           ; |1813| 
L445:        
	.line	214
;----------------------------------------------------------------------
; 1819 | units[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1819| 
        ldiu      0,r0                  ; |1819| 
        sti       r0,*ar0               ; |1819| 
	.line	216
;----------------------------------------------------------------------
; 1821 | break;                                                                 
; 1825 | switch(flow_unit&0xFF)                                                 
; 1827 | case u_vfr_barrel_day:                                                 
; 1828 | case u_vfr_Mgal_day:                                                   
; 1829 | case u_vfr_ML_day:                                                     
; 1830 | case u_vfr_cf_day:                                                     
; 1831 | case u_vfr_cm_day:                                                     
; 1832 | case u_vfr_imp_gal_day:                                                
; 1833 | case u_vfr_gal_day:                                                    
; 1834 | case u_vfr_mscf_day:                                                   
; 1835 | case u_vfr_scf_day:                                                    
; 1836 | case u_vfr_N_cm_day:                                                   
;----------------------------------------------------------------------
        bu        L464                  ; |1821| 
;*      Branch Occurs to L464           ; |1821| 
L447:        
	.line	122
        ldiu      255,ir0               ; |1727| 
        ldiu      15,r0                 ; |1727| 
        and       *+fp(2),ir0           ; |1727| 
        subri     ir0,r0                ; |1727| 
        cmpi      16,r0                 ; |1727| 
        bls       L456                  ; |1727| 
;*      Branch Occurs to L456           ; |1727| 
        ldiu      121,r0                ; |1727| 
        subri     ir0,r0                ; |1727| 
        cmpi      17,r0                 ; |1727| 
        bls       L457                  ; |1727| 
;*      Branch Occurs to L457           ; |1727| 
        cmpi      184,ir0               ; |1727| 
        beq       L444                  ; |1727| 
;*      Branch Occurs to L444           ; |1727| 
        cmpi      186,ir0               ; |1727| 
        beq       L444                  ; |1727| 
;*      Branch Occurs to L444           ; |1727| 
        cmpi      190,ir0               ; |1727| 
        beq       L439                  ; |1727| 
;*      Branch Occurs to L439           ; |1727| 
        cmpi      191,ir0               ; |1727| 
        beq       L439                  ; |1727| 
;*      Branch Occurs to L439           ; |1727| 
        cmpi      235,ir0               ; |1727| 
        beq       L442                  ; |1727| 
;*      Branch Occurs to L442           ; |1727| 
        cmpi      249,ir0               ; |1727| 
        beq       L443                  ; |1727| 
;*      Branch Occurs to L443           ; |1727| 
        bu        L445                  ; |1727| 
;*      Branch Occurs to L445           ; |1727| 
L456:        
        ldp       @CL63,DP
        subi      15,ir0                ; |1727| 
        ldiu      @CL63,ar0             ; |1727| 
        ldiu      *+ar0(ir0),r0         ; |1727| 
        bu        r0                    ; |1727| 

	.sect	".text"
SW8:	.word	L436	; 15
	.word	L442	; 16
	.word	L438	; 17
	.word	L441	; 18
	.word	L440	; 19
	.word	L445	; 0
	.word	L445	; 0
	.word	L442	; 22
	.word	L445	; 23
	.word	L438	; 24
	.word	L445	; 25
	.word	L436	; 26
	.word	L436	; 27
	.word	L440	; 28
	.word	L440	; 29
	.word	L441	; 30
	.word	L441	; 31
	.sect	".text"
;*      Branch Occurs to r0             ; |1727| 
L457:        
        ldp       @CL64,DP
        subi      121,ir0               ; |1727| 
        ldiu      @CL64,ar0             ; |1727| 
        ldiu      *+ar0(ir0),r0         ; |1727| 
        bu        r0                    ; |1727| 

	.sect	".text"
SW9:	.word	L439	; 121
	.word	L437	; 122
	.word	L435	; 123
	.word	L445	; 0
	.word	L445	; 0
	.word	L445	; 0
	.word	L445	; 0
	.word	L445	; 0
	.word	L445	; 0
	.word	L436	; 130
	.word	L440	; 131
	.word	L434	; 132
	.word	L434	; 133
	.word	L434	; 134
	.word	L434	; 135
	.word	L442	; 136
	.word	L441	; 137
	.word	L438	; 138
	.sect	".text"
;*      Branch Occurs to r0             ; |1727| 
L459:        
	.line	233
;----------------------------------------------------------------------
; 1838 | units[1] = u_time_day;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1838| 
        ldiu      53,r0                 ; |1838| 
        sti       r0,*+ar0(1)           ; |1838| 
	.line	234
;----------------------------------------------------------------------
; 1839 | r[0]     = 86400.0;                                                    
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(4),ar0           ; |1839| 
        ldfu      @CL60,f0              ; |1839| 
        stf       f0,*ar0               ; |1839| 
	.line	236
;----------------------------------------------------------------------
; 1841 | break;                                                                 
; 1843 | case u_vfr_cm_hr:                                                      
; 1844 | case u_vfr_imp_gal_hr:                                                 
; 1845 | case u_vfr_N_cm_hr:                                                    
; 1846 | case u_vfr_N_L_hr:                                                     
; 1847 | case u_vfr_cf_hr:                                                      
; 1848 | case u_vfr_barrel_hr:                                                  
; 1849 | case u_vfr_gal_hr:                                                     
; 1850 | case u_vfr_L_hr:                                                       
;----------------------------------------------------------------------
        bu        L478                  ; |1841| 
;*      Branch Occurs to L478           ; |1841| 
L460:        
	.line	247
;----------------------------------------------------------------------
; 1852 | units[1] = u_time_hr;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1852| 
        ldiu      52,r0                 ; |1852| 
        sti       r0,*+ar0(1)           ; |1852| 
	.line	248
;----------------------------------------------------------------------
; 1853 | r[0]     = 3600.0;                                                     
;----------------------------------------------------------------------
        ldp       @CL61,DP
        ldiu      *+fp(4),ar0           ; |1853| 
        ldfu      @CL61,f0              ; |1853| 
        stf       f0,*ar0               ; |1853| 
	.line	250
;----------------------------------------------------------------------
; 1855 | break;                                                                 
; 1857 | case u_vfr_barrel_min:                                                 
; 1858 | case u_vfr_cm_min:                                                     
; 1859 | case u_vfr_cf_min:                                                     
; 1860 | case u_vfr_gal_min:                                                    
; 1861 | case u_vfr_L_min:                                                      
; 1862 | case u_vfr_imp_gal_min:                                                
; 1863 | case u_vfr_scf_min:                                                    
;----------------------------------------------------------------------
        bu        L478                  ; |1855| 
;*      Branch Occurs to L478           ; |1855| 
L461:        
	.line	260
;----------------------------------------------------------------------
; 1865 | units[1] = u_time_min;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1865| 
        ldiu      50,r0                 ; |1865| 
        sti       r0,*+ar0(1)           ; |1865| 
	.line	261
;----------------------------------------------------------------------
; 1866 | r[0]     = 60.0;                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |1866| 
        ldfu      6.0000000000e+01,f0   ; |1866| 
        stf       f0,*ar0               ; |1866| 
	.line	263
;----------------------------------------------------------------------
; 1868 | break;                                                                 
; 1870 | case u_vfr_gal_sec:                                                    
; 1871 | case u_vfr_L_sec:                                                      
; 1872 | case u_vfr_cf_sec:                                                     
; 1873 | case u_vfr_cm_sec:                                                     
; 1874 | case u_vfr_barrel_sec:                                                 
; 1875 | case u_vfr_imp_gal_sec:                                                
; 1876 | case u_vfr_scf_sec:                                                    
; 1877 | case u_vfr_N_cm_sec:                                                   
; 1878 | default:                                                               
;----------------------------------------------------------------------
        bu        L478                  ; |1868| 
;*      Branch Occurs to L478           ; |1868| 
L462:        
	.line	275
;----------------------------------------------------------------------
; 1880 | units[1] = u_time_sec;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |1880| 
        ldiu      51,r0                 ; |1880| 
        sti       r0,*+ar0(1)           ; |1880| 
	.line	276
;----------------------------------------------------------------------
; 1881 | r[0]     = 1.0;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |1881| 
        ldfu      1.0000000000e+00,f0   ; |1881| 
        stf       f0,*ar0               ; |1881| 
	.line	278
;----------------------------------------------------------------------
; 1883 | break;                                                                 
;----------------------------------------------------------------------
        bu        L478                  ; |1883| 
;*      Branch Occurs to L478           ; |1883| 
L464:        
	.line	220
        ldiu      255,ir0               ; |1825| 
        ldiu      15,r0                 ; |1825| 
        and       *+fp(2),ir0           ; |1825| 
        subri     ir0,r0                ; |1825| 
        cmpi      16,r0                 ; |1825| 
        bls       L473                  ; |1825| 
;*      Branch Occurs to L473           ; |1825| 
        ldiu      121,r0                ; |1825| 
        subri     ir0,r0                ; |1825| 
        cmpi      17,r0                 ; |1825| 
        bls       L474                  ; |1825| 
;*      Branch Occurs to L474           ; |1825| 
        cmpi      184,ir0               ; |1825| 
        beq       L459                  ; |1825| 
;*      Branch Occurs to L459           ; |1825| 
        cmpi      186,ir0               ; |1825| 
        beq       L462                  ; |1825| 
;*      Branch Occurs to L462           ; |1825| 
        cmpi      190,ir0               ; |1825| 
        beq       L462                  ; |1825| 
;*      Branch Occurs to L462           ; |1825| 
        cmpi      191,ir0               ; |1825| 
        beq       L459                  ; |1825| 
;*      Branch Occurs to L459           ; |1825| 
        cmpi      235,ir0               ; |1825| 
        beq       L459                  ; |1825| 
;*      Branch Occurs to L459           ; |1825| 
        cmpi      249,ir0               ; |1825| 
        beq       L459                  ; |1825| 
;*      Branch Occurs to L459           ; |1825| 
        bu        L462                  ; |1825| 
;*      Branch Occurs to L462           ; |1825| 
L473:        
        ldp       @CL65,DP
        subi      15,ir0                ; |1825| 
        ldiu      @CL65,ar0             ; |1825| 
        ldiu      *+ar0(ir0),r0         ; |1825| 
        bu        r0                    ; |1825| 

	.sect	".text"
SW10:	.word	L461	; 15
	.word	L461	; 16
	.word	L461	; 17
	.word	L461	; 18
	.word	L460	; 19
	.word	L462	; 0
	.word	L462	; 0
	.word	L462	; 22
	.word	L459	; 23
	.word	L462	; 24
	.word	L459	; 25
	.word	L462	; 26
	.word	L459	; 27
	.word	L462	; 28
	.word	L459	; 29
	.word	L460	; 30
	.word	L459	; 31
	.sect	".text"
;*      Branch Occurs to r0             ; |1825| 
L474:        
        ldp       @CL66,DP
        subi      121,ir0               ; |1825| 
        ldiu      @CL66,ar0             ; |1825| 
        ldiu      *+ar0(ir0),r0         ; |1825| 
        bu        r0                    ; |1825| 

	.sect	".text"
SW11:	.word	L460	; 121
	.word	L460	; 122
	.word	L461	; 123
	.word	L462	; 0
	.word	L462	; 0
	.word	L462	; 0
	.word	L462	; 0
	.word	L462	; 0
	.word	L462	; 0
	.word	L460	; 130
	.word	L461	; 131
	.word	L462	; 132
	.word	L461	; 133
	.word	L460	; 134
	.word	L459	; 135
	.word	L460	; 136
	.word	L462	; 137
	.word	L460	; 138
	.sect	".text"
;*      Branch Occurs to r0             ; |1825| 
	.line	282
;----------------------------------------------------------------------
; 1887 | break;                                                                 
;----------------------------------------------------------------------
L476:        
	.line	8
        ldiu      255,r0                ; |1613| 
        and       *+fp(1),r0            ; |1613| 
        cmpi      66,r0                 ; |1613| 
        beq       L433                  ; |1613| 
;*      Branch Occurs to L433           ; |1613| 
        cmpi      72,r0                 ; |1613| 
        beq       L414                  ; |1613| 
;*      Branch Occurs to L414           ; |1613| 
L478:        
	.line	285
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1890,000000000h,4


	.sect	 ".text"

	.global	_Join_MassTime_Units
	.sym	_Join_MassTime_Units,_Join_MassTime_Units,36,2,0
	.func	1906
;******************************************************************************
;* FUNCTION NAME: _Join_MassTime_Units                                        *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar2,st                                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Join_MassTime_Units:
;* ar2   assigned to _m
	.sym	_m,10,4,17,32
;* r2    assigned to _t
	.sym	_t,2,4,17,32
	.sym	_m,1,4,1,32
	.sym	_t,2,4,1,32
	.sym	_r,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1906 | int Join_MassTime_Units(int m, int t)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 1908 | int r; /* return value */                                              
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |1907| 
        sti       ar2,*+fp(1)           ; |1907| 
	.line	5
;----------------------------------------------------------------------
; 1910 | r = u_generic_unknown;                                                 
; 1912 | switch(t&0xFF)                                                         
; 1914 |         case u_time_day:                                               
; 1916 |                 switch(m&0xFF)                                         
;----------------------------------------------------------------------
        ldiu      252,r0                ; |1910| 
        sti       r0,*+fp(3)            ; |1910| 
        bu        L532                  ; |1905| 
;*      Branch Occurs to L532           ; |1905| 
L482:        
	.line	13
;----------------------------------------------------------------------
; 1918 | case u_m_metric_tons:   r = u_mfr_metric_tons_day;      break;         
;----------------------------------------------------------------------
        ldiu      79,r0                 ; |1918| 
        sti       r0,*+fp(3)            ; |1918| 
        bu        L536                  ; |1918| 
;*      Branch Occurs to L536           ; |1918| 
L483:        
	.line	14
;----------------------------------------------------------------------
; 1919 | case u_m_lbs:                   r = u_mfr_lbs_day;
;     |  break;                                                                
;----------------------------------------------------------------------
        ldiu      83,r0                 ; |1919| 
        sti       r0,*+fp(3)            ; |1919| 
        bu        L536                  ; |1919| 
;*      Branch Occurs to L536           ; |1919| 
L484:        
	.line	15
;----------------------------------------------------------------------
; 1920 | case u_m_short_tons:    r = u_mfr_short_tons_day;       break;         
;----------------------------------------------------------------------
        ldiu      86,r0                 ; |1920| 
        sti       r0,*+fp(3)            ; |1920| 
        bu        L536                  ; |1920| 
;*      Branch Occurs to L536           ; |1920| 
L485:        
	.line	16
;----------------------------------------------------------------------
; 1921 | case u_m_long_tons:     r = u_mfr_long_tons_day;        break;         
;----------------------------------------------------------------------
        ldiu      88,r0                 ; |1921| 
        sti       r0,*+fp(3)            ; |1921| 
        bu        L536                  ; |1921| 
;*      Branch Occurs to L536           ; |1921| 
L486:        
	.line	17
;----------------------------------------------------------------------
; 1922 | case u_m_kg:                    r = u_mfr_kg_day;
;     |  break;                                                                
;----------------------------------------------------------------------
        ldiu      76,r0                 ; |1922| 
        sti       r0,*+fp(3)            ; |1922| 
        bu        L536                  ; |1922| 
;*      Branch Occurs to L536           ; |1922| 
L488:        
	.line	11
        ldiu      255,r0                ; |1916| 
        and       *+fp(1),r0            ; |1916| 
        cmpi      61,r0                 ; |1916| 
        beq       L486                  ; |1916| 
;*      Branch Occurs to L486           ; |1916| 
        cmpi      62,r0                 ; |1916| 
        beq       L482                  ; |1916| 
;*      Branch Occurs to L482           ; |1916| 
        cmpi      63,r0                 ; |1916| 
        beq       L483                  ; |1916| 
;*      Branch Occurs to L483           ; |1916| 
        cmpi      64,r0                 ; |1916| 
        beq       L484                  ; |1916| 
;*      Branch Occurs to L484           ; |1916| 
        cmpi      65,r0                 ; |1916| 
        beq       L485                  ; |1916| 
;*      Branch Occurs to L485           ; |1916| 
        bu        L536                  ; |1916| 
;*      Branch Occurs to L536           ; |1916| 
	.line	20
;----------------------------------------------------------------------
; 1925 | break;                                                                 
; 1927 | case u_time_hr:                                                        
; 1929 | switch(m&0xFF)                                                         
;----------------------------------------------------------------------
L495:        
	.line	26
;----------------------------------------------------------------------
; 1931 | case u_m_g:                     r = u_mfr_g_hr;
;     |  break;                                                                
;----------------------------------------------------------------------
        ldiu      72,r0                 ; |1931| 
        sti       r0,*+fp(3)            ; |1931| 
        bu        L536                  ; |1931| 
;*      Branch Occurs to L536           ; |1931| 
L496:        
	.line	27
;----------------------------------------------------------------------
; 1932 | case u_m_metric_tons:   r = u_mfr_metric_tons_hr;       break;         
;----------------------------------------------------------------------
        ldiu      78,r0                 ; |1932| 
        sti       r0,*+fp(3)            ; |1932| 
        bu        L536                  ; |1932| 
;*      Branch Occurs to L536           ; |1932| 
L497:        
	.line	28
;----------------------------------------------------------------------
; 1933 | case u_m_lbs:                   r = u_mfr_lbs_hr;
;     |  break;                                                                
;----------------------------------------------------------------------
        ldiu      82,r0                 ; |1933| 
        sti       r0,*+fp(3)            ; |1933| 
        bu        L536                  ; |1933| 
;*      Branch Occurs to L536           ; |1933| 
L498:        
	.line	29
;----------------------------------------------------------------------
; 1934 | case u_m_short_tons:    r = u_mfr_short_tons_hr;        break;         
;----------------------------------------------------------------------
        ldiu      85,r0                 ; |1934| 
        sti       r0,*+fp(3)            ; |1934| 
        bu        L536                  ; |1934| 
;*      Branch Occurs to L536           ; |1934| 
L499:        
	.line	30
;----------------------------------------------------------------------
; 1935 | case u_m_long_tons:     r = u_mfr_long_tons_hr;         break;         
;----------------------------------------------------------------------
        ldiu      87,r0                 ; |1935| 
        sti       r0,*+fp(3)            ; |1935| 
        bu        L536                  ; |1935| 
;*      Branch Occurs to L536           ; |1935| 
L500:        
	.line	31
;----------------------------------------------------------------------
; 1936 | case u_m_kg:                    r = u_mfr_kg_hr;
;     |  break;                                                                
;----------------------------------------------------------------------
        ldiu      75,r0                 ; |1936| 
        sti       r0,*+fp(3)            ; |1936| 
        bu        L536                  ; |1936| 
;*      Branch Occurs to L536           ; |1936| 
L502:        
	.line	24
        ldiu      255,r0                ; |1929| 
        and       *+fp(1),r0            ; |1929| 
        cmpi      60,r0                 ; |1929| 
        beq       L495                  ; |1929| 
;*      Branch Occurs to L495           ; |1929| 
        cmpi      61,r0                 ; |1929| 
        beq       L500                  ; |1929| 
;*      Branch Occurs to L500           ; |1929| 
        cmpi      62,r0                 ; |1929| 
        beq       L496                  ; |1929| 
;*      Branch Occurs to L496           ; |1929| 
        cmpi      63,r0                 ; |1929| 
        beq       L497                  ; |1929| 
;*      Branch Occurs to L497           ; |1929| 
        cmpi      64,r0                 ; |1929| 
        beq       L498                  ; |1929| 
;*      Branch Occurs to L498           ; |1929| 
        cmpi      65,r0                 ; |1929| 
        beq       L499                  ; |1929| 
;*      Branch Occurs to L499           ; |1929| 
        bu        L536                  ; |1929| 
;*      Branch Occurs to L536           ; |1929| 
	.line	34
;----------------------------------------------------------------------
; 1939 | break;                                                                 
; 1941 | case u_time_min:                                                       
; 1943 | switch(m&0xFF)                                                         
;----------------------------------------------------------------------
L510:        
	.line	40
;----------------------------------------------------------------------
; 1945 | case u_m_g:                     r = u_mfr_g_min;
;     |  break;                                                                
;----------------------------------------------------------------------
        ldiu      71,r0                 ; |1945| 
        sti       r0,*+fp(3)            ; |1945| 
        bu        L536                  ; |1945| 
;*      Branch Occurs to L536           ; |1945| 
L511:        
	.line	41
;----------------------------------------------------------------------
; 1946 | case u_m_metric_tons:   r = u_mfr_metric_tons_min;      break;         
;----------------------------------------------------------------------
        ldiu      77,r0                 ; |1946| 
        sti       r0,*+fp(3)            ; |1946| 
        bu        L536                  ; |1946| 
;*      Branch Occurs to L536           ; |1946| 
L512:        
	.line	42
;----------------------------------------------------------------------
; 1947 | case u_m_lbs:                   r = u_mfr_lbs_min;
;     |  break;                                                                
;----------------------------------------------------------------------
        ldiu      81,r0                 ; |1947| 
        sti       r0,*+fp(3)            ; |1947| 
        bu        L536                  ; |1947| 
;*      Branch Occurs to L536           ; |1947| 
L513:        
	.line	43
;----------------------------------------------------------------------
; 1948 | case u_m_short_tons:    r = u_mfr_short_tons_min;       break;         
;----------------------------------------------------------------------
        ldiu      84,r0                 ; |1948| 
        sti       r0,*+fp(3)            ; |1948| 
        bu        L536                  ; |1948| 
;*      Branch Occurs to L536           ; |1948| 
L514:        
	.line	44
;----------------------------------------------------------------------
; 1949 | case u_m_kg:                    r = u_mfr_kg_min;
;     |  break;                                                                
;----------------------------------------------------------------------
        ldiu      74,r0                 ; |1949| 
        sti       r0,*+fp(3)            ; |1949| 
        bu        L536                  ; |1949| 
;*      Branch Occurs to L536           ; |1949| 
L516:        
	.line	38
        ldiu      255,r0                ; |1943| 
        and       *+fp(1),r0            ; |1943| 
        cmpi      60,r0                 ; |1943| 
        beq       L510                  ; |1943| 
;*      Branch Occurs to L510           ; |1943| 
        cmpi      61,r0                 ; |1943| 
        beq       L514                  ; |1943| 
;*      Branch Occurs to L514           ; |1943| 
        cmpi      62,r0                 ; |1943| 
        beq       L511                  ; |1943| 
;*      Branch Occurs to L511           ; |1943| 
        cmpi      63,r0                 ; |1943| 
        beq       L512                  ; |1943| 
;*      Branch Occurs to L512           ; |1943| 
        cmpi      64,r0                 ; |1943| 
        beq       L513                  ; |1943| 
;*      Branch Occurs to L513           ; |1943| 
        bu        L536                  ; |1943| 
;*      Branch Occurs to L536           ; |1943| 
	.line	47
;----------------------------------------------------------------------
; 1952 | break;                                                                 
; 1954 | case u_time_sec:                                                       
; 1956 | switch(m&0xFF)                                                         
;----------------------------------------------------------------------
L523:        
	.line	53
;----------------------------------------------------------------------
; 1958 | case u_m_g:     r = u_mfr_g_sec;        break;                         
;----------------------------------------------------------------------
        ldiu      70,r0                 ; |1958| 
        sti       r0,*+fp(3)            ; |1958| 
        bu        L536                  ; |1958| 
;*      Branch Occurs to L536           ; |1958| 
L524:        
	.line	54
;----------------------------------------------------------------------
; 1959 | case u_m_lbs:   r = u_mfr_lbs_sec;      break;                         
;----------------------------------------------------------------------
        ldiu      80,r0                 ; |1959| 
        sti       r0,*+fp(3)            ; |1959| 
        bu        L536                  ; |1959| 
;*      Branch Occurs to L536           ; |1959| 
L525:        
	.line	55
;----------------------------------------------------------------------
; 1960 | case u_m_kg:    r = u_mfr_kg_sec;       break;                         
;----------------------------------------------------------------------
        ldiu      73,r0                 ; |1960| 
        sti       r0,*+fp(3)            ; |1960| 
        bu        L536                  ; |1960| 
;*      Branch Occurs to L536           ; |1960| 
L527:        
	.line	51
        ldiu      255,r0                ; |1956| 
        and       *+fp(1),r0            ; |1956| 
        cmpi      60,r0                 ; |1956| 
        beq       L523                  ; |1956| 
;*      Branch Occurs to L523           ; |1956| 
        cmpi      61,r0                 ; |1956| 
        beq       L525                  ; |1956| 
;*      Branch Occurs to L525           ; |1956| 
        cmpi      63,r0                 ; |1956| 
        beq       L524                  ; |1956| 
;*      Branch Occurs to L524           ; |1956| 
        bu        L536                  ; |1956| 
;*      Branch Occurs to L536           ; |1956| 
	.line	58
;----------------------------------------------------------------------
; 1963 | break;                                                                 
;----------------------------------------------------------------------
L532:        
	.line	7
        ldiu      255,r0                ; |1912| 
        and       *+fp(2),r0            ; |1912| 
        cmpi      50,r0                 ; |1912| 
        beq       L516                  ; |1912| 
;*      Branch Occurs to L516           ; |1912| 
        cmpi      51,r0                 ; |1912| 
        beq       L527                  ; |1912| 
;*      Branch Occurs to L527           ; |1912| 
        cmpi      52,r0                 ; |1912| 
        beq       L502                  ; |1912| 
;*      Branch Occurs to L502           ; |1912| 
        cmpi      53,r0                 ; |1912| 
        beq       L488                  ; |1912| 
;*      Branch Occurs to L488           ; |1912| 
L536:        
	.line	62
;----------------------------------------------------------------------
; 1967 | return r;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |1967| 
	.line	63
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |1968| 
        ldiu      *fp,fp                ; |1968| 
                                        ; Unallocate the Frame
        subi      5,sp                  ; |1968| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1968,000000000h,3



	.global	_LIST_DAMP_EMPTY
_LIST_DAMP_EMPTY:	.usect	"CFG",3,1
	.sym	_LIST_DAMP_EMPTY,_LIST_DAMP_EMPTY,8,2,96,.fake4

	.global	_DAMP
_DAMP:	.usect	"CFG",120,1
	.sym	_DAMP,_DAMP,56,2,3840,.fake9,40

	.global	_LIST_DAMP
_LIST_DAMP:	.usect	"CFG",3,1
	.sym	_LIST_DAMP,_LIST_DAMP,8,2,96,.fake4

	.global	_vect_v1
	.bss	_vect_v1,1
	.sym	_vect_v1,_vect_v1,20,2,32

	.global	_vect_v2
	.bss	_vect_v2,1
	.sym	_vect_v2,_vect_v2,20,2,32

	.global	_vect_var1
	.bss	_vect_var1,1
	.sym	_vect_var1,_vect_var1,20,2,32

	.global	_vect_var2
	.bss	_vect_var2,1
	.sym	_vect_var2,_vect_var2,20,2,32
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
	.bss	CL7,2
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
	.bss	CL31,2
	.bss	CL32,1
	.bss	CL33,1
	.bss	CL34,1
	.bss	CL35,1
	.bss	CL36,1
	.bss	CL37,2
	.bss	CL38,2
	.bss	CL39,1
	.bss	CL40,1
	.bss	CL41,1
	.bss	CL42,1
	.bss	CL43,1
	.bss	CL44,2
	.bss	CL45,1
	.bss	CL46,1
	.bss	CL47,1
	.bss	CL48,1
	.bss	CL49,1
	.bss	CL50,1
	.bss	CL51,2
	.bss	CL52,2
	.bss	CL53,2
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

	.sect	".cinit"
	.field  	74,32
	.field  	CL1+0,32
	.field  	_LIST_DAMP,32
	.field  	_List_Init,32
	.field  	_LIST_DAMP_EMPTY,32
	.field  	_DAMP+2,32
	.field  	_DAMP,32
	.field  	_List_Add,32
	.word   	080000000H ; ldouble 0.000000000000000e+00
	.word   	000000000H ; ldouble
	.word   	0097A0000H ; float   1.000000000000000e+03
	.word   	01D6E6B28H ; double  1.000000000000000e+09
	.word   	01D9194D8H ; double  -1.000000000000000e+09
	.field  	_List_Pop,32
	.field  	_Convert,32
	.field  	_vect_v1,32
	.field  	_vect_var1,32
	.field  	_VAR_CheckSet_Bounds,32
	.field  	_VAR_Check_Bounds,32
	.field  	_round,32
	.field  	_vect_v2,32
	.field  	_vect_var2,32
	.field  	_VAR_Update,32
	.field  	327680,32
	.field  	393216,32
	.field  	458752,32
	.field  	524288,32
	.field  	_INITIALIZING,32
	.field  	_NaN_val,32
	.word   	0FF800000H ; float   -1.000000000000000e+00
	.field  	_exp,32
	.field  	_VAR_Get_Unit_Param,32
	.word   	0F251B717H ; double  1.000000000000000e-04
	.word   	0F251B717H ; ldouble 1.000000000000000e-04
	.word   	051B71759H ; ldouble
	.field  	_l_compare,32
	.field  	_DIO_ALARM,32
	.field  	_fmod,32
	.field  	_DIAGNOSTICS,32
	.field  	_MASTER_UNITS,32
	.word   	000000000H ; ldouble 1.000000000000000e+00
	.word   	000000000H ; ldouble
	.word   	0097A0000H ; ldouble 1.000000000000000e+03
	.word   	07A000000H ; ldouble
	.field  	_API_to_kgm3,32
	.field  	_API_15C_PT,32
	.field  	_API_60F_PT,32
	.field  	_Get_Unit_Coeff,32
	.field  	_API_PT_ST,32
	.word   	0F603126EH ; ldouble 1.000000000000000e-03
	.word   	003126E98H ; ldouble
	.field  	_kgm3_to_API,32
	.field  	_RUSS,32
	.field  	_MASTER_UNITS_STR_R,32
	.field  	_MASTER_UNITS_STR,32
	.field  	_strcpy,32
	.field  	SW0,32
	.word   	01028C000H ; ldouble 8.640000000000000e+04
	.word   	028C00000H ; ldouble
	.word   	00B610000H ; ldouble 3.600000000000000e+03
	.word   	061000000H ; ldouble
	.word   	005700000H ; ldouble 6.000000000000000e+01
	.word   	070000000H ; ldouble
	.field  	SW1,32
	.field  	SW2,32
	.field  	SW3,32
	.field  	SW4,32
	.field  	SW5,32
	.field  	SW6,32
	.word   	01028C000H ; double  8.640000000000000e+04
	.word   	00B610000H ; double  3.600000000000000e+03
	.field  	SW7,32
	.field  	SW8,32
	.field  	SW9,32
	.field  	SW10,32
	.field  	SW11,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_strcpy

	.global	_exp

	.global	_fmod

	.global	_List_Add

	.global	_List_Pop

	.global	_List_Init

	.global	_kgm3_to_API

	.global	_API_to_kgm3

	.global	_API_60F_PT

	.global	_API_15C_PT

	.global	_API_PT_ST

	.global	_DIAGNOSTICS

	.global	_DIO_ALARM

	.global	_INITIALIZING

	.global	_NaN_val

	.global	_RUSS

	.global	_round
	.global	DIV_F30
	.global	MPY_LD
	.global	DIV_LD
