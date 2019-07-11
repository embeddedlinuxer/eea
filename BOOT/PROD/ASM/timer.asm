;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Oct 31 11:29:48 2011                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_3S8.AAA 
	.file	"timer.c"
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\ETC.H"
	.sym	_BOOL,0,14,13,32
	.file	"D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\BUFFER.H"
	.stag	.fake0,131744
	.member	_head,0,4,8,32
	.member	_tail,32,4,8,32
	.member	_n,64,4,8,32
	.member	_CRC16,96,14,8,32
	.member	_buff,128,62,8,131584,,4112
	.member	_locked,131712,14,8,32
	.eos
	.sym	_BFR,0,8,13,131744,.fake0
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\FLASH.H"
	.file	"D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\SERIAL.H"
	.stag	.fake1,263936
	.member	_STAT,0,12,8,32
	.member	_TMR_Network_WDOG,32,14,8,32
	.member	_TMR_EOT_Delay,64,14,8,32
	.member	_TMR_Preamble_Delay,96,14,8,32
	.member	_TMR_Suffix_Delay,128,14,8,32
	.member	_TMR_Char,160,14,8,32
	.member	_TMR_enabled,192,14,8,32
	.member	_tvector,224,20,8,32
	.member	_pvector,256,20,8,32
	.member	_i,288,14,8,32
	.member	_func,320,14,8,32
	.member	_Slave_ID,352,14,8,32
	.member	_TXbuf,384,8,8,131744,.fake0
	.member	_TX_complete,132128,14,8,32
	.member	_RXbuf,132160,8,8,131744,.fake0
	.member	_RX_pending,263904,14,8,32
	.eos
	.sym	_PORTV,0,8,13,263936,.fake1
	.file	"D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\MODBUSRTU.H"
	.file	"D:\CCS\EEA_SA_V611beta\INCLUDE\I2C.H"
	.file	"D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\GLBLS.H"
	.file	"timer.c"
	.sect	 ".text"

	.global	_Setup_Timer
	.sym	_Setup_Timer,_Setup_Timer,32,2,0
	.func	13
;******************************************************************************
;* FUNCTION NAME: _Setup_Timer                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f1,f2,ar0,ar2,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Setup_Timer:
;* ar2   assigned to _id
	.sym	_id,10,4,17,32
;* f2    assigned to _t
	.sym	_t,2,7,17,32
	.sym	_id,1,4,1,32
	.sym	_t,2,7,1,32
	.sym	_ta,3,7,1,32
	.line	1
;----------------------------------------------------------------------
;  13 | void Setup_Timer(int id, double t)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
;  15 | double ta;                                                             
;----------------------------------------------------------------------
        stf       f2,*+fp(2)            ; |14| 
        sti       ar2,*+fp(1)           ; |14| 
	.line	5
;----------------------------------------------------------------------
;  17 | if (id==0)                                                             
;----------------------------------------------------------------------
        ldiu      ar2,r0
        cmpi      0,r0                  ; |17| 
        bne       L3                    ; |17| 
;*      Branch Occurs to L3             ; |17| 
	.line	7
;----------------------------------------------------------------------
;  19 | ta = t * TMR0_FREQ;                                                    
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |19| 
        ldp       @CL2,DP
        float     *ar0,f0               ; |19| 
        ldflt     @CL2,f1               ; |19| 
        ldfge     0.0000000000e+00,f1   ; |19| 
        ldp       @CL3,DP
        addf3     f0,f1,f0              ; |19| 
        mpyf      @CL3,f0               ; |19| 
        mpyf      *+fp(2),f0            ; |19| 
        stf       f0,*+fp(3)            ; |19| 
	.line	9
;----------------------------------------------------------------------
;  21 | *TMR0_GC = (TMR_FUNC | TMR_GO | TMR__HLD);                             
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |21| 
        ldiu      193,r0                ; |21| 
        sti       r0,*ar0               ; |21| 
	.line	10
;----------------------------------------------------------------------
;  22 | *TMR0_PER = (int)ta;                                                   
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |22| 
        ldp       @CL6,DP
        ldfu      *+fp(3),f0            ; |22| 
        cmpf      @CL6,f0               ; |22| 
        ldp       @CL2,DP
        ldflt     0.0000000000e+00,f1   ; |22| 
        ldfge     @CL2,f1               ; |22| 
        subrf     f0,f1                 ; |22| 
        fix       f1,r0                 ; |22| 
        sti       r0,*ar0               ; |22| 
	.line	11
;----------------------------------------------------------------------
;  23 | TIME0 = ta/(double)TMR0_FREQ;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |23| 
        ldp       @CL2,DP
        float     *ar0,f1               ; |23| 
        ldflt     @CL2,f0               ; |23| 
        ldfge     0.0000000000e+00,f0   ; |23| 
        ldp       @CL3,DP
        addf3     f1,f0,f1              ; |23| 
        ldfu      *+fp(3),f0            ; |23| 
        mpyf      @CL3,f1               ; |23| 
        call      DIV_F30               ; |23| 
                                        ; |23| Call Occurs
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |23| 
        stf       f0,*ar0               ; |23| 
	.line	12
;----------------------------------------------------------------------
;  24 | ENABLE_TINT0;                                                          
;  26 | else                                                                   
;----------------------------------------------------------------------
	or		0100h, IE
        bu        L5                    ; |12| 
;*      Branch Occurs to L5             ; |12| 
L3:        
	.line	15
;----------------------------------------------------------------------
;  27 | if (id==1)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |27| 
        cmpi      1,r0                  ; |27| 
        bne       L5                    ; |27| 
;*      Branch Occurs to L5             ; |27| 
	.line	17
;----------------------------------------------------------------------
;  29 | ta = t * TMR1_FREQ;                                                    
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |29| 
        ldp       @CL2,DP
        float     *ar0,f0               ; |29| 
        ldflt     @CL2,f1               ; |29| 
        ldfge     0.0000000000e+00,f1   ; |29| 
        ldp       @CL3,DP
        addf3     f0,f1,f0              ; |29| 
        mpyf      @CL3,f0               ; |29| 
        mpyf      *+fp(2),f0            ; |29| 
        stf       f0,*+fp(3)            ; |29| 
	.line	19
;----------------------------------------------------------------------
;  31 | *TMR1_GC = (TMR_FUNC | TMR_GO | TMR__HLD);                             
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |31| 
        ldiu      193,r0                ; |31| 
        sti       r0,*ar0               ; |31| 
	.line	20
;----------------------------------------------------------------------
;  32 | *TMR1_PER = (int)ta;                                                   
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |32| 
        ldp       @CL6,DP
        ldfu      *+fp(3),f1            ; |32| 
        cmpf      @CL6,f1               ; |32| 
        ldp       @CL2,DP
        ldflt     0.0000000000e+00,f0   ; |32| 
        ldfge     @CL2,f0               ; |32| 
        subrf     f1,f0                 ; |32| 
        fix       f0,r0                 ; |32| 
        sti       r0,*ar0               ; |32| 
	.line	21
;----------------------------------------------------------------------
;  33 | PORT.TMR_enabled = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |33| 
        ldiu      0,r0                  ; |33| 
        sti       r0,*ar0               ; |33| 
	.line	22
;----------------------------------------------------------------------
;  34 | TIME1 = ta/(double)TMR1_FREQ;                                          
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |34| 
        ldp       @CL2,DP
        float     *ar0,f1               ; |34| 
        ldflt     @CL2,f0               ; |34| 
        ldfge     0.0000000000e+00,f0   ; |34| 
        addf3     f1,f0,f1              ; |34| 
        ldp       @CL3,DP
        ldfu      *+fp(3),f0            ; |34| 
        mpyf      @CL3,f1               ; |34| 
        call      DIV_F30               ; |34| 
                                        ; |34| Call Occurs
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |34| 
        stf       f0,*ar0               ; |34| 
	.line	23
;----------------------------------------------------------------------
;  35 | ENABLE_TINT1;                                                          
;----------------------------------------------------------------------
	or		0200h, IE
L5:        
	.line	25
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	37,000000000h,3


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
	.field  	_CLOCK,32
	.word   	020000000H ; float   4.294967296000000e+09
	.word   	0FF000000H ; double  5.000000000000000e-01
	.field  	8421408,32
	.field  	8421416,32
	.word   	01F000000H ; float   2.147483648000000e+09
	.field  	_TIME0,32
	.field  	8421424,32
	.field  	8421432,32
	.field  	_PORT+6,32
	.field  	_TIME1,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_PORT

	.global	_CLOCK

	.global	_TIME0

	.global	_TIME1
	.global	DIV_F30
