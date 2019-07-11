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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_528.AAA 
	.file	"main.c"
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

	.sect	".const"
_copyright:
	.field  	40,32		; _copyright[0] @ 0
	.field  	99,32		; _copyright[1] @ 32
	.field  	41,32		; _copyright[2] @ 64
	.field  	50,32		; _copyright[3] @ 96
	.field  	48,32		; _copyright[4] @ 128
	.field  	48,32		; _copyright[5] @ 160
	.field  	55,32		; _copyright[6] @ 192
	.field  	32,32		; _copyright[7] @ 224
	.field  	80,32		; _copyright[8] @ 256
	.field  	104,32		; _copyright[9] @ 288
	.field  	97,32		; _copyright[10] @ 320
	.field  	115,32		; _copyright[11] @ 352
	.field  	101,32		; _copyright[12] @ 384
	.field  	32,32		; _copyright[13] @ 416
	.field  	68,32		; _copyright[14] @ 448
	.field  	121,32		; _copyright[15] @ 480
	.field  	110,32		; _copyright[16] @ 512
	.field  	97,32		; _copyright[17] @ 544
	.field  	109,32		; _copyright[18] @ 576
	.field  	105,32		; _copyright[19] @ 608
	.field  	99,32		; _copyright[20] @ 640
	.field  	115,32		; _copyright[21] @ 672
	.field  	44,32		; _copyright[22] @ 704
	.field  	32,32		; _copyright[23] @ 736
	.field  	73,32		; _copyright[24] @ 768
	.field  	110,32		; _copyright[25] @ 800
	.field  	99,32		; _copyright[26] @ 832
	.field  	46,32		; _copyright[27] @ 864
	.field  	0,32		; _copyright[28] @ 896

	.sect	".text"

	.global	_copyright
	.sym	_copyright,_copyright,50,2,928,,29

	.sect	".const"
_LCD_DISP0:
	.field  	80,32		; _LCD_DISP0[0] @ 0
	.field  	104,32		; _LCD_DISP0[1] @ 32
	.field  	97,32		; _LCD_DISP0[2] @ 64
	.field  	115,32		; _LCD_DISP0[3] @ 96
	.field  	101,32		; _LCD_DISP0[4] @ 128
	.field  	32,32		; _LCD_DISP0[5] @ 160
	.field  	68,32		; _LCD_DISP0[6] @ 192
	.field  	121,32		; _LCD_DISP0[7] @ 224
	.field  	110,32		; _LCD_DISP0[8] @ 256
	.field  	97,32		; _LCD_DISP0[9] @ 288
	.field  	109,32		; _LCD_DISP0[10] @ 320
	.field  	105,32		; _LCD_DISP0[11] @ 352
	.field  	99,32		; _LCD_DISP0[12] @ 384
	.field  	115,32		; _LCD_DISP0[13] @ 416
	.field  	44,32		; _LCD_DISP0[14] @ 448
	.field  	32,32		; _LCD_DISP0[15] @ 480
	.field  	73,32		; _LCD_DISP0[16] @ 512
	.field  	110,32		; _LCD_DISP0[17] @ 544
	.field  	99,32		; _LCD_DISP0[18] @ 576
	.field  	46,32		; _LCD_DISP0[19] @ 608
	.field  	0,32		; _LCD_DISP0[20] @ 640

	.sect	".text"

	.global	_LCD_DISP0
	.sym	_LCD_DISP0,_LCD_DISP0,50,2,672,,21

	.sect	".const"
_LCD_DISP1:
	.field  	32,32		; _LCD_DISP1[0] @ 0
	.field  	32,32		; _LCD_DISP1[1] @ 32
	.field  	32,32		; _LCD_DISP1[2] @ 64
	.field  	32,32		; _LCD_DISP1[3] @ 96
	.field  	32,32		; _LCD_DISP1[4] @ 128
	.field  	32,32		; _LCD_DISP1[5] @ 160
	.field  	32,32		; _LCD_DISP1[6] @ 192
	.field  	32,32		; _LCD_DISP1[7] @ 224
	.field  	32,32		; _LCD_DISP1[8] @ 256
	.field  	32,32		; _LCD_DISP1[9] @ 288
	.field  	32,32		; _LCD_DISP1[10] @ 320
	.field  	32,32		; _LCD_DISP1[11] @ 352
	.field  	32,32		; _LCD_DISP1[12] @ 384
	.field  	32,32		; _LCD_DISP1[13] @ 416
	.field  	32,32		; _LCD_DISP1[14] @ 448
	.field  	32,32		; _LCD_DISP1[15] @ 480
	.field  	32,32		; _LCD_DISP1[16] @ 512
	.field  	32,32		; _LCD_DISP1[17] @ 544
	.field  	32,32		; _LCD_DISP1[18] @ 576
	.field  	32,32		; _LCD_DISP1[19] @ 608
	.field  	0,32		; _LCD_DISP1[20] @ 640

	.sect	".text"

	.global	_LCD_DISP1
	.sym	_LCD_DISP1,_LCD_DISP1,50,2,672,,21

	.sect	".const"
_LCD_DISP2:
	.field  	32,32		; _LCD_DISP2[0] @ 0
	.field  	66,32		; _LCD_DISP2[1] @ 32
	.field  	111,32		; _LCD_DISP2[2] @ 64
	.field  	111,32		; _LCD_DISP2[3] @ 96
	.field  	116,32		; _LCD_DISP2[4] @ 128
	.field  	32,32		; _LCD_DISP2[5] @ 160
	.field  	76,32		; _LCD_DISP2[6] @ 192
	.field  	111,32		; _LCD_DISP2[7] @ 224
	.field  	97,32		; _LCD_DISP2[8] @ 256
	.field  	100,32		; _LCD_DISP2[9] @ 288
	.field  	101,32		; _LCD_DISP2[10] @ 320
	.field  	114,32		; _LCD_DISP2[11] @ 352
	.field  	32,32		; _LCD_DISP2[12] @ 384
	.field  	32,32		; _LCD_DISP2[13] @ 416
	.field  	118,32		; _LCD_DISP2[14] @ 448
	.field  	49,32		; _LCD_DISP2[15] @ 480
	.field  	46,32		; _LCD_DISP2[16] @ 512
	.field  	48,32		; _LCD_DISP2[17] @ 544
	.field  	57,32		; _LCD_DISP2[18] @ 576
	.field  	32,32		; _LCD_DISP2[19] @ 608
	.field  	0,32		; _LCD_DISP2[20] @ 640

	.sect	".text"

	.global	_LCD_DISP2
	.sym	_LCD_DISP2,_LCD_DISP2,50,2,672,,21
	.file	"main.c"
	.sect	 "copytoflash"

	.global	_main
	.sym	_main,_main,32,2,0
	.func	15
;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ir0,ir1,st               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 47 Auto + 0 SOE = 49 words        *
;******************************************************************************
_main:
	.sym	_pass,1,14,1,32
	.sym	_i,2,14,1,32
	.sym	_j,3,14,1,32
	.sym	_c,4,30,1,32
	.sym	_d,5,14,1,32
	.sym	_msgf,6,50,1,672,,21
	.sym	_msgp,27,50,1,672,,21
	.line	1
;----------------------------------------------------------------------
;  15 | void main(void)                                                        
;  17 | BOOL pass;                                                             
;  18 | unsigned int i;                                                        
;  19 | unsigned int j;                                                        
;  20 | unsigned int* c;                                                       
;  21 | unsigned int d;                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      47,sp
	.line	8
;----------------------------------------------------------------------
;  22 | char msgf[] = " Programming Failed ";                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |22| 
        addi      6,ar0                 ; |22| 
        ldiu      32,r0                 ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      7,ar0                 ; |22| 
        ldiu      80,r0                 ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      8,ar0                 ; |22| 
        ldiu      114,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      9,ar0                 ; |22| 
        ldiu      111,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      10,ar0                ; |22| 
        ldiu      103,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      11,ar0                ; |22| 
        ldiu      114,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      12,ar0                ; |22| 
        ldiu      97,r0                 ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      13,ar0                ; |22| 
        ldiu      109,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      14,ar0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      15,ar0                ; |22| 
        ldiu      105,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      16,ar0                ; |22| 
        ldiu      110,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      17,ar0                ; |22| 
        ldiu      103,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      18,ar0                ; |22| 
        ldiu      32,r0                 ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      19,ar0                ; |22| 
        ldiu      70,r0                 ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      20,ar0                ; |22| 
        ldiu      97,r0                 ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      21,ar0                ; |22| 
        ldiu      105,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      22,ar0                ; |22| 
        ldiu      108,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      23,ar0                ; |22| 
        ldiu      101,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      24,ar0                ; |22| 
        ldiu      100,r0                ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      25,ar0                ; |22| 
        ldiu      32,r0                 ; |22| 
        sti       r0,*ar0               ; |22| 
        ldiu      fp,ar0                ; |22| 
        addi      26,ar0                ; |22| 
        ldiu      0,r0                  ; |22| 
        sti       r0,*ar0               ; |22| 
	.line	9
;----------------------------------------------------------------------
;  23 | char msgp[] = " Programming Passed ";                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0                ; |23| 
        addi      27,ar0                ; |23| 
        ldiu      32,r0                 ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      28,ar0                ; |23| 
        ldiu      80,r0                 ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      29,ar0                ; |23| 
        ldiu      114,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      30,ar0                ; |23| 
        ldiu      111,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      31,ar0                ; |23| 
        ldiu      103,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      32,ar0                ; |23| 
        ldiu      114,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      33,ar0                ; |23| 
        ldiu      97,r0                 ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      34,ar0                ; |23| 
        ldiu      109,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      35,ar0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      36,ar0                ; |23| 
        ldiu      105,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      37,ar0                ; |23| 
        ldiu      110,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      38,ar0                ; |23| 
        ldiu      103,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      39,ar0                ; |23| 
        ldiu      32,r0                 ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      40,ar0                ; |23| 
        ldiu      80,r0                 ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      41,ar0                ; |23| 
        ldiu      97,r0                 ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      42,ar0                ; |23| 
        ldiu      115,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      43,ar0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      44,ar0                ; |23| 
        ldiu      101,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      45,ar0                ; |23| 
        ldiu      100,r0                ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      46,ar0                ; |23| 
        ldiu      32,r0                 ; |23| 
        sti       r0,*ar0               ; |23| 
        ldiu      fp,ar0                ; |23| 
        addi      47,ar0                ; |23| 
        ldiu      0,r0                  ; |23| 
        sti       r0,*ar0               ; |23| 
	.line	11
;----------------------------------------------------------------------
;  25 | _GIE;                                                                  
;----------------------------------------------------------------------
	rpts	1			
	andn	2000h, ST	
	.line	13
;----------------------------------------------------------------------
;  27 | LEDR_OFF;                                                              
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |27| 
        ldiu      128,r0                ; |27| 
        or3       r0,*ar0,r0            ; |27| 
        sti       r0,*ar0               ; |27| 
	pop		ST			
	.line	14
;----------------------------------------------------------------------
;  28 | LEDG_OFF;                                                              
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |28| 
        or3       r0,*ar0,r0            ; |28| 
        sti       r0,*ar0               ; |28| 
	pop		ST			
	.line	15
;----------------------------------------------------------------------
;  29 | DISABLE_BOOTINT;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |29| 
        ldiu      16,r0                 ; |29| 
        or3       r0,*ar0,r0            ; |29| 
        sti       r0,*ar0               ; |29| 
	pop		ST			
	.line	16
;----------------------------------------------------------------------
;  30 | DISABLE_HEATER;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |30| 
        ldiu      2,r0                  ; |30| 
        or3       r0,*ar0,r0            ; |30| 
        sti       r0,*ar0               ; |30| 
	pop		ST			
	.line	18
;----------------------------------------------------------------------
;  32 | RELAY1_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |32| 
        ldiu      254,r0                ; |32| 
        and3      r0,*ar0,r0            ; |32| 
        sti       r0,*ar0               ; |32| 
	pop		ST			
	.line	19
;----------------------------------------------------------------------
;  33 | RELAY2_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      253,r0                ; |33| 
        and3      r0,*ar0,r0            ; |33| 
        sti       r0,*ar0               ; |33| 
	pop		ST			
	.line	21
;----------------------------------------------------------------------
;  35 | if (!PROGRAM_MODE)                                                     
;----------------------------------------------------------------------
        bu        L3                    ; |35| 
;*      Branch Occurs to L3             ; |35| 
	.line	23
;----------------------------------------------------------------------
;  37 | main1();                                                               
;----------------------------------------------------------------------
	.line	24
;----------------------------------------------------------------------
;  38 | while(TRUE){}                                                          
;----------------------------------------------------------------------
L3:        
	.line	27
;----------------------------------------------------------------------
;  41 | *PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);   /* ws=5 for 90ns flash
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |41| 
        ldiu      184,r0                ; |41| 
        sti       r0,*ar0               ; |41| 
	.line	28
;----------------------------------------------------------------------
;  42 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	30
;----------------------------------------------------------------------
;  44 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |44| 
        ldiu      247,r0                ; |44| 
        and3      r0,*ar0,r0            ; |44| 
        sti       r0,*ar0               ; |44| 
	pop		ST			
	.line	32
;----------------------------------------------------------------------
;  46 | LCD_INIT();                                                            
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,r0               ; |46| 
        callu     r0                    ; far call to _LCD_INIT	; |46| 
                                        ; |46| Far Call Occurs
	.line	34
;----------------------------------------------------------------------
;  48 | pass = TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |48| 
        sti       r0,*+fp(1)            ; |48| 
	.line	36
;----------------------------------------------------------------------
;  50 | for (i=0;i<FLASH_BOOT_SIZE;i++)                                        
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |50| 
        sti       r0,*+fp(2)            ; |50| 
        cmpi      8192,r0               ; |50| 
        bhs       L7                    ; |50| 
;*      Branch Occurs to L7             ; |50| 
L4:        
	.line	38
;----------------------------------------------------------------------
;  52 | boot_blk[i] = 0xFFFFFFFF;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |52| 
        ldp       @CL9,DP
        ldiu      *+fp(2),ir0           ; |52| 
        ldiu      @CL9,r0               ; |52| 
        sti       r0,*+ar0(ir0)         ; |52| 
	.line	39
;----------------------------------------------------------------------
;  53 | if (boot_blk[i] != 0xFFFFFFFF) {pass = FALSE; break;}                  
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |53| 
        ldiu      *+fp(2),ir0           ; |53| 
        ldp       @CL9,DP
        ldiu      *+ar0(ir0),r0         ; |53| 
        cmpi      @CL9,r0               ; |53| 
        beq       L6                    ; |53| 
;*      Branch Occurs to L6             ; |53| 
        ldiu      0,r0                  ; |53| 
        sti       r0,*+fp(1)            ; |53| 
        bu        L7                    ; |53| 
;*      Branch Occurs to L7             ; |53| 
L6:        
	.line	36
        ldiu      1,r0                  ; |50| 
        addi      *+fp(2),r0            ; |50| Unsigned
        sti       r0,*+fp(2)            ; |50| 
        cmpi      8192,r0               ; |50| 
        blo       L4                    ; |50| 
;*      Branch Occurs to L4             ; |50| 
L7:        
	.line	42
;----------------------------------------------------------------------
;  56 | FLASH_UNLOCK;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |56| 
        ldiu      4,r0                  ; |56| 
        or3       r0,*ar0,r0            ; |56| 
        sti       r0,*ar0               ; |56| 
	pop		ST			
	.line	45
;----------------------------------------------------------------------
;  59 | call_to_main = (unsigned int)&main1 | 0x62000000;                      
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,r0               ; |59| 
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |59| 
        ldp       @CL11,DP
        or        @CL11,r0              ; |59| 
        sti       r0,*ar0               ; |59| 
	.line	48
;----------------------------------------------------------------------
;  62 | boot_blk[0] = 0x00000020;
;     |                                  /* memory width = 32 bits */          
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |62| 
        ldiu      32,r0                 ; |62| 
        sti       r0,*ar0               ; |62| 
	.line	49
;----------------------------------------------------------------------
;  63 | if (boot_blk[0] != 0x00000020) pass = FALSE;                           
;----------------------------------------------------------------------
        ldiu      @CL8,ar0              ; |63| 
        ldiu      *ar0,r0               ; |63| 
        cmpi      32,r0                 ; |63| 
        beq       L9                    ; |63| 
;*      Branch Occurs to L9             ; |63| 
        ldiu      0,r0                  ; |63| 
        sti       r0,*+fp(1)            ; |63| 
L9:        
	.line	50
;----------------------------------------------------------------------
;  64 | boot_blk[1] = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);
;     |          /* ws=5 for 90ns flash */                                     
;----------------------------------------------------------------------
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |64| 
        ldiu      184,r0                ; |64| 
        sti       r0,*ar0               ; |64| 
	.line	51
;----------------------------------------------------------------------
;  65 | if (boot_blk[1] != (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5)) pass = FALSE;  
;----------------------------------------------------------------------
        ldiu      @CL12,ar0             ; |65| 
        ldiu      *ar0,r0               ; |65| 
        cmpi      184,r0                ; |65| 
        beq       L11                   ; |65| 
;*      Branch Occurs to L11            ; |65| 
        ldiu      0,r0                  ; |65| 
        sti       r0,*+fp(1)            ; |65| 
L11:        
	.line	52
;----------------------------------------------------------------------
;  66 | boot_blk[2] = 0x00001FB0 - ((unsigned int)&c_int00 & 0x1FFF);   /* BOOT
;     |  CODE SIZE */                                                          
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,r0              ; |66| 
        ldp       @CL13,DP
        and       8191,r0               ; |66| 
        ldiu      @CL13,ar0             ; |66| 
        subri     8112,r0               ; |66| Unsigned
        sti       r0,*ar0               ; |66| 
	.line	53
;----------------------------------------------------------------------
;  67 | if (boot_blk[2] != 0x00001FB0 - ((unsigned int)&c_int00 & 0x1FFF)) pass
;     |  = FALSE;                                                              
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,r0              ; |67| 
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |67| 
        and       8191,r0               ; |67| 
        ldiu      *ar0,r1               ; |67| 
        subri     8112,r0               ; |67| Unsigned
        cmpi3     r0,r1                 ; |67| 
        beq       L13                   ; |67| 
;*      Branch Occurs to L13            ; |67| 
        ldiu      0,r0                  ; |67| 
        sti       r0,*+fp(1)            ; |67| 
L13:        
	.line	54
;----------------------------------------------------------------------
;  68 | boot_blk[3] = (unsigned int) &c_int00;
;     |                  /* BOOT CODE DESTINATION ADDR */                      
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,ar0             ; |68| 
        ldp       @CL14,DP
        ldiu      @CL14,r0              ; |68| 
        sti       r0,*ar0               ; |68| 
	.line	55
;----------------------------------------------------------------------
;  69 | if (boot_blk[3] != (unsigned int) &c_int00) pass = FALSE;              
;----------------------------------------------------------------------
        ldp       @CL15,DP
        ldiu      @CL15,ar0             ; |69| 
        ldp       @CL14,DP
        ldiu      *ar0,r0               ; |69| 
        cmpi      @CL14,r0              ; |69| 
        beq       L15                   ; |69| 
;*      Branch Occurs to L15            ; |69| 
        ldiu      0,r0                  ; |69| 
        sti       r0,*+fp(1)            ; |69| 
L15:        
	.line	56
;----------------------------------------------------------------------
;  70 | c = (unsigned int*)c_int00;
;     |                                  /* BOOT MIRROR IN RAM */              
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,r0              ; |70| 
        sti       r0,*+fp(4)            ; |70| 
	.line	57
;----------------------------------------------------------------------
;  71 | j=4;                                                                   
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |71| 
        sti       r0,*+fp(3)            ; |71| 
	.line	58
;----------------------------------------------------------------------
;  72 | for (i=0;i<boot_blk[2];i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |72| 
        sti       r0,*+fp(2)            ; |72| 
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |72| 
        cmpi3     *ar0,r0               ; |72| 
        bhs       L19                   ; |72| 
;*      Branch Occurs to L19            ; |72| 
L16:        
	.line	60
;----------------------------------------------------------------------
;  74 | boot_blk[j] = c[i];                                                    
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(4),ir1           ; |74| 
        ldiu      *+fp(2),ar0           ; |74| 
        ldiu      *+fp(3),ir0           ; |74| 
        ldiu      @CL8,ar1              ; |74| 
        ldiu      *+ar0(ir1),r0         ; |74| 
        sti       r0,*+ar1(ir0)         ; |74| 
	.line	61
;----------------------------------------------------------------------
;  75 | if (boot_blk[j] != c[i]) {pass = FALSE; break;}                        
;----------------------------------------------------------------------
        ldiu      @CL8,ar1              ; |75| 
        ldiu      *+fp(4),ir1           ; |75| 
        ldiu      *+fp(2),ar0           ; |75| 
        ldiu      *+fp(3),ir0           ; |75| 
        cmpi3     *+ar0(ir1),*+ar1(ir0) ; |75| 
        beq       L18                   ; |75| 
;*      Branch Occurs to L18            ; |75| 
        ldiu      0,r0                  ; |75| 
        sti       r0,*+fp(1)            ; |75| 
        bu        L19                   ; |75| 
;*      Branch Occurs to L19            ; |75| 
L18:        
	.line	62
;----------------------------------------------------------------------
;  76 | j++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |76| 
        addi      *+fp(3),r0            ; |76| Unsigned
        sti       r0,*+fp(3)            ; |76| 
	.line	58
        ldiu      1,r0                  ; |72| 
        addi      *+fp(2),r0            ; |72| Unsigned
        sti       r0,*+fp(2)            ; |72| 
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |72| 
        cmpi3     *ar0,r0               ; |72| 
        blo       L16                   ; |72| 
;*      Branch Occurs to L16            ; |72| 
L19:        
	.line	66
;----------------------------------------------------------------------
;  80 | boot_blk[j] = 0x0000003F;
;     |                                  /* BRANCH TABLE SIZE */               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(3),ir0           ; |80| 
        ldiu      @CL8,ar0              ; |80| 
        ldiu      63,r0                 ; |80| 
        sti       r0,*+ar0(ir0)         ; |80| 
	.line	67
;----------------------------------------------------------------------
;  81 | if (boot_blk[j] != 0x0000003F) pass = FALSE;                           
;----------------------------------------------------------------------
        ldiu      @CL8,ar0              ; |81| 
        ldiu      *+fp(3),ir0           ; |81| 
        ldiu      *+ar0(ir0),r0         ; |81| 
        cmpi      63,r0                 ; |81| 
        beq       L21                   ; |81| 
;*      Branch Occurs to L21            ; |81| 
        ldiu      0,r0                  ; |81| 
        sti       r0,*+fp(1)            ; |81| 
L21:        
	.line	68
;----------------------------------------------------------------------
;  82 | j++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |82| 
        addi      *+fp(3),r0            ; |82| Unsigned
        sti       r0,*+fp(3)            ; |82| 
	.line	69
;----------------------------------------------------------------------
;  83 | boot_blk[j] = 0x00809FC1;
;     |                                  /* BRANCH TABLE DESTINATION ADDR */   
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |83| 
        ldp       @CL16,DP
        ldiu      *+fp(3),ir0           ; |83| 
        ldiu      @CL16,r0              ; |83| 
        sti       r0,*+ar0(ir0)         ; |83| 
	.line	70
;----------------------------------------------------------------------
;  84 | if (boot_blk[j] != 0x00809FC1) pass = FALSE;                           
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |84| 
        ldiu      *+fp(3),ir0           ; |84| 
        ldp       @CL16,DP
        ldiu      *+ar0(ir0),r0         ; |84| 
        cmpi      @CL16,r0              ; |84| 
        beq       L23                   ; |84| 
;*      Branch Occurs to L23            ; |84| 
        ldiu      0,r0                  ; |84| 
        sti       r0,*+fp(1)            ; |84| 
L23:        
	.line	71
;----------------------------------------------------------------------
;  85 | c = (unsigned int*)0x00809FC1;
;     |                          /* BR TABLE MIRROR IN RAM */                  
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,r0              ; |85| 
        sti       r0,*+fp(4)            ; |85| 
	.line	72
;----------------------------------------------------------------------
;  86 | j++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |86| 
        addi      *+fp(3),r0            ; |86| Unsigned
        sti       r0,*+fp(3)            ; |86| 
	.line	73
;----------------------------------------------------------------------
;  87 | for (i=0;i<0x3F;i++)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |87| 
        sti       r0,*+fp(2)            ; |87| 
        cmpi      63,r0                 ; |87| 
        bhs       L27                   ; |87| 
;*      Branch Occurs to L27            ; |87| 
L24:        
	.line	75
;----------------------------------------------------------------------
;  89 | boot_blk[j] = c[i];                                                    
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(4),ir1           ; |89| 
        ldiu      *+fp(2),ar1           ; |89| 
        ldiu      *+fp(3),ir0           ; |89| 
        ldiu      @CL8,ar0              ; |89| 
        ldiu      *+ar1(ir1),r0         ; |89| 
        sti       r0,*+ar0(ir0)         ; |89| 
	.line	76
;----------------------------------------------------------------------
;  90 | if (boot_blk[j] != c[i]) {pass = FALSE; break;}                        
;----------------------------------------------------------------------
        ldiu      @CL8,ar1              ; |90| 
        ldiu      *+fp(4),ir1           ; |90| 
        ldiu      *+fp(2),ar0           ; |90| 
        ldiu      *+fp(3),ir0           ; |90| 
        cmpi3     *+ar0(ir1),*+ar1(ir0) ; |90| 
        beq       L26                   ; |90| 
;*      Branch Occurs to L26            ; |90| 
        ldiu      0,r0                  ; |90| 
        sti       r0,*+fp(1)            ; |90| 
        bu        L27                   ; |90| 
;*      Branch Occurs to L27            ; |90| 
L26:        
	.line	77
;----------------------------------------------------------------------
;  91 | j++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |91| 
        addi      *+fp(3),r0            ; |91| Unsigned
        sti       r0,*+fp(3)            ; |91| 
	.line	73
        ldiu      1,r0                  ; |87| 
        addi      *+fp(2),r0            ; |87| Unsigned
        sti       r0,*+fp(2)            ; |87| 
        cmpi      63,r0                 ; |87| 
        blo       L24                   ; |87| 
;*      Branch Occurs to L24            ; |87| 
L27:        
	.line	81
;----------------------------------------------------------------------
;  95 | d = j;                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |95| 
        sti       r0,*+fp(5)            ; |95| 
	.line	82
;----------------------------------------------------------------------
;  96 | boot_blk[j] = 0x00001FB0 - boot_blk[2];                                
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |96| 
        ldiu      *+fp(3),ir0           ; |96| 
        ldp       @CL8,DP
        ldiu      *ar0,r0               ; |96| 
        ldiu      @CL8,ar1              ; |96| 
        subri     8112,r0               ; |96| Unsigned
        sti       r0,*+ar1(ir0)         ; |96| 
	.line	83
;----------------------------------------------------------------------
;  97 | if (boot_blk[j] != 0x00001FB0 - boot_blk[2]) pass = FALSE;             
;----------------------------------------------------------------------
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |97| 
        ldp       @CL8,DP
        ldiu      @CL8,ar1              ; |97| 
        ldiu      *+fp(3),ir0           ; |97| 

        ldiu      *+ar1(ir0),r1         ; |97| 
||      ldiu      *ar0,r0               ; |97| 

        subri     8112,r0               ; |97| Unsigned
        cmpi3     r0,r1                 ; |97| 
        beq       L29                   ; |97| 
;*      Branch Occurs to L29            ; |97| 
        ldiu      0,r0                  ; |97| 
        sti       r0,*+fp(1)            ; |97| 
L29:        
	.line	84
;----------------------------------------------------------------------
;  98 | j++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |98| 
        addi      *+fp(3),r0            ; |98| Unsigned
        sti       r0,*+fp(3)            ; |98| 
	.line	85
;----------------------------------------------------------------------
;  99 | boot_blk[j] = 0x00800000;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |99| 
        ldp       @CL18,DP
        ldiu      *+fp(3),ir0           ; |99| 
        ldiu      @CL18,r0              ; |99| 
        sti       r0,*+ar0(ir0)         ; |99| 
	.line	86
;----------------------------------------------------------------------
; 100 | if (boot_blk[j] != 0x00800000) pass = FALSE;                           
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |100| 
        ldiu      *+fp(3),ir0           ; |100| 
        ldp       @CL18,DP
        ldiu      *+ar0(ir0),r0         ; |100| 
        cmpi      @CL18,r0              ; |100| 
        beq       L31                   ; |100| 
;*      Branch Occurs to L31            ; |100| 
        ldiu      0,r0                  ; |100| 
        sti       r0,*+fp(1)            ; |100| 
L31:        
	.line	87
;----------------------------------------------------------------------
; 101 | c = (unsigned int*)0x00800000;                                         
;----------------------------------------------------------------------
        ldp       @CL19,DP
        ldiu      @CL19,r0              ; |101| 
        sti       r0,*+fp(4)            ; |101| 
	.line	88
;----------------------------------------------------------------------
; 102 | j++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |102| 
        addi      *+fp(3),r0            ; |102| Unsigned
        sti       r0,*+fp(3)            ; |102| 
	.line	89
;----------------------------------------------------------------------
; 103 | for (i=0;i<boot_blk[d];i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |103| 
        sti       r0,*+fp(2)            ; |103| 
        ldp       @CL8,DP
        ldiu      *+fp(5),ir0           ; |103| 
        ldiu      @CL8,ar0              ; |103| 
        cmpi3     *+ar0(ir0),r0         ; |103| 
        bhs       L35                   ; |103| 
;*      Branch Occurs to L35            ; |103| 
L32:        
	.line	91
;----------------------------------------------------------------------
; 105 | boot_blk[j] = c[i];                                                    
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      *+fp(4),ir0           ; |105| 
        ldiu      *+fp(2),ar0           ; |105| 
        ldiu      *+fp(3),ir1           ; |105| 
        ldiu      @CL8,ar1              ; |105| 
        ldiu      *+ar0(ir0),r0         ; |105| 
        sti       r0,*+ar1(ir1)         ; |105| 
	.line	92
;----------------------------------------------------------------------
; 106 | if (boot_blk[j] != c[i]) {pass = FALSE; break;}                        
;----------------------------------------------------------------------
        ldiu      @CL8,ar0              ; |106| 
        ldiu      *+fp(3),ir0           ; |106| 
        ldiu      *+fp(4),ir1           ; |106| 
        ldiu      *+fp(2),ar1           ; |106| 
        cmpi3     *+ar1(ir1),*+ar0(ir0) ; |106| 
        beq       L34                   ; |106| 
;*      Branch Occurs to L34            ; |106| 
        ldiu      0,r0                  ; |106| 
        sti       r0,*+fp(1)            ; |106| 
        bu        L35                   ; |106| 
;*      Branch Occurs to L35            ; |106| 
L34:        
	.line	93
;----------------------------------------------------------------------
; 107 | j++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |107| 
        addi      *+fp(3),r0            ; |107| Unsigned
        sti       r0,*+fp(3)            ; |107| 
	.line	89
        ldiu      1,r0                  ; |103| 
        addi      *+fp(2),r0            ; |103| Unsigned
        sti       r0,*+fp(2)            ; |103| 
        ldp       @CL8,DP
        ldiu      *+fp(5),ir0           ; |103| 
        ldiu      @CL8,ar0              ; |103| 
        cmpi3     *+ar0(ir0),r0         ; |103| 
        blo       L32                   ; |103| 
;*      Branch Occurs to L32            ; |103| 
L35:        
	.line	96
;----------------------------------------------------------------------
; 110 | if (pass)                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |110| 
        cmpi      0,r0                  ; |110| 
        beq       L38                   ; |110| 
;*      Branch Occurs to L38            ; |110| 
	.line	98
;----------------------------------------------------------------------
; 112 | i = FLASH_ERASE_BLK((unsigned int*) FLASH_LOC);                        
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar2             ; |112| 
        ldp       @CL21,DP
        ldiu      @CL21,r0              ; |112| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |112| 
                                        ; |112| Far Call Occurs
        sti       r0,*+fp(2)            ; |112| 
	.line	99
;----------------------------------------------------------------------
; 113 | i |= FLASH_WRITE_BLK((unsigned int*) FLASH_LOC, boot_blk, FLASH_CFGB_SI
;     | ZE);                                                                   
;----------------------------------------------------------------------
        ldp       @CL22,DP
        ldiu      @CL22,r0              ; |113| 
        ldp       @CL20,DP
        ldiu      @CL20,ar2             ; |113| 
        ldp       @CL8,DP
        ldiu      4096,r3               ; |113| 
        ldiu      @CL8,r2               ; |113| 
        callu     r0                    ; far call to _FLASH_WRITE_BLK	; |113| 
                                        ; |113| Far Call Occurs
        or        *+fp(2),r0            ; |113| 
        sti       r0,*+fp(2)            ; |113| 
	.line	100
;----------------------------------------------------------------------
; 114 | i |= FLASH_ERASE_BLK((unsigned int*) FLASH_LOC+FLASH_CFGB_SIZE);       
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar2             ; |114| 
        ldp       @CL21,DP
        ldiu      @CL21,r0              ; |114| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |114| 
                                        ; |114| Far Call Occurs
        or        *+fp(2),r0            ; |114| 
        sti       r0,*+fp(2)            ; |114| 
	.line	101
;----------------------------------------------------------------------
; 115 | i |= FLASH_WRITE_BLK((unsigned int*) FLASH_LOC+FLASH_CFGB_SIZE, boot_bl
;     | k+FLASH_CFGB_SIZE, FLASH_CFGB_SIZE);                                   
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      @CL24,r2              ; |115| 
        ldp       @CL22,DP
        ldiu      @CL22,r0              ; |115| 
        ldp       @CL23,DP
        ldiu      @CL23,ar2             ; |115| 
        ldiu      4096,r3               ; |115| 
        callu     r0                    ; far call to _FLASH_WRITE_BLK	; |115| 
                                        ; |115| Far Call Occurs
        or        *+fp(2),r0            ; |115| 
        sti       r0,*+fp(2)            ; |115| 
	.line	103
;----------------------------------------------------------------------
; 117 | FLASH_LOCK_BLK((unsigned int*) FLASH_LOC, 2);
;     |          /* lockdown */                                                
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,ar2             ; |117| 
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |117| 
        ldiu      2,r2                  ; |117| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |117| 
                                        ; |117| Far Call Occurs
	.line	104
;----------------------------------------------------------------------
; 118 | FLASH_LOCK_BLK((unsigned int*) FLASH_LOC+FLASH_CFGB_SIZE, 2);   /* lock
;     | down */                                                                
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar2             ; |118| 
        ldp       @CL25,DP
        ldiu      2,r2                  ; |118| 
        ldiu      @CL25,r0              ; |118| 
        callu     r0                    ; far call to _FLASH_LOCK_BLK	; |118| 
                                        ; |118| Far Call Occurs
	.line	106
;----------------------------------------------------------------------
; 120 | FLASH_LOCK;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |120| 
        ldiu      251,r0                ; |120| 
        and3      r0,*ar0,r0            ; |120| 
        sti       r0,*ar0               ; |120| 
	pop		ST			
	.line	108
;----------------------------------------------------------------------
; 122 | if (i) pass = FALSE;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |122| 
        cmpi      0,r0                  ; |122| 
        beq       L38                   ; |122| 
;*      Branch Occurs to L38            ; |122| 
        ldiu      0,r0                  ; |122| 
        sti       r0,*+fp(1)            ; |122| 
L38:        
	.line	111
;----------------------------------------------------------------------
; 125 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |125| 
        ldiu      247,r0                ; |125| 
        and3      r0,*ar0,r0            ; |125| 
        sti       r0,*ar0               ; |125| 
	pop		ST			
	.line	113
;----------------------------------------------------------------------
; 127 | ENABLE_BOOTINT;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |127| 
        ldiu      239,r0                ; |127| 
        and3      r0,*ar0,r0            ; |127| 
        sti       r0,*ar0               ; |127| 
	pop		ST			
	.line	114
;----------------------------------------------------------------------
; 128 | CLEAR_INT_MASK;                                                        
;----------------------------------------------------------------------
	ldi		0h, IE
	.line	115
;----------------------------------------------------------------------
; 129 | CLEAR_INT_PEND;                                                        
;----------------------------------------------------------------------
	ldi		0h, IF
	.line	117
;----------------------------------------------------------------------
; 131 | if (!pass)                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |131| 
        cmpi      0,r0                  ; |131| 
        bne       L42                   ; |131| 
;*      Branch Occurs to L42            ; |131| 
	.line	119
;----------------------------------------------------------------------
; 133 | LEDR_ON;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |133| 
        ldiu      127,r0                ; |133| 
        and3      r0,*ar0,r0            ; |133| 
        sti       r0,*ar0               ; |133| 
	pop		ST			
	.line	120
;----------------------------------------------------------------------
; 134 | LEDG_OFF;                                                              
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |134| 
        or3       r0,*ar0,r0            ; |134| 
        sti       r0,*ar0               ; |134| 
	pop		ST			
	.line	121
;----------------------------------------------------------------------
; 135 | RELAY1_ON;                                                             
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |135| 
        ldiu      1,r0                  ; |135| 
        or3       r0,*ar0,r0            ; |135| 
        sti       r0,*ar0               ; |135| 
	pop		ST			
	.line	122
;----------------------------------------------------------------------
; 136 | RELAY2_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      253,r0                ; |136| 
        and3      r0,*ar0,r0            ; |136| 
        sti       r0,*ar0               ; |136| 
	pop		ST			
	.line	123
;----------------------------------------------------------------------
; 137 | for (i=0;i<20;i++) LCD_DISP3[i] = msgf[i];                             
; 139 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |137| 
        sti       r0,*+fp(2)            ; |137| 
        cmpi      20,r0                 ; |137| 
        bhs       L44                   ; |137| 
;*      Branch Occurs to L44            ; |137| 
L40:        
        ldiu      fp,ar0                ; |137| 
        ldiu      *+fp(2),ir0           ; |137| 
        ldp       @CL26,DP
        addi      6,ar0                 ; |137| 
        ldiu      ir0,ir1               ; |137| 
        ldiu      @CL26,ar1             ; |137| 
        ldiu      *+ar0(ir0),r0         ; |137| 
        sti       r0,*+ar1(ir1)         ; |137| 
        ldiu      1,r0                  ; |137| 
        addi      *+fp(2),r0            ; |137| Unsigned
        sti       r0,*+fp(2)            ; |137| 
        cmpi      20,r0                 ; |137| 
        blo       L40                   ; |137| 
;*      Branch Occurs to L40            ; |137| 
        bu        L44                   ; |14| 
;*      Branch Occurs to L44            ; |14| 
L42:        
	.line	127
;----------------------------------------------------------------------
; 141 | LEDR_OFF;                                                              
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |141| 
        ldiu      128,r0                ; |141| 
        or3       r0,*ar0,r0            ; |141| 
        sti       r0,*ar0               ; |141| 
	pop		ST			
	.line	128
;----------------------------------------------------------------------
; 142 | LEDG_ON;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      191,r0                ; |142| 
        and3      r0,*ar0,r0            ; |142| 
        sti       r0,*ar0               ; |142| 
	pop		ST			
	.line	129
;----------------------------------------------------------------------
; 143 | RELAY1_ON;                                                             
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |143| 
        ldiu      1,r0                  ; |143| 
        or3       r0,*ar0,r0            ; |143| 
        sti       r0,*ar0               ; |143| 
	pop		ST			
	.line	130
;----------------------------------------------------------------------
; 144 | RELAY2_ON;                                                             
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      2,r0                  ; |144| 
        or3       r0,*ar0,r0            ; |144| 
        sti       r0,*ar0               ; |144| 
	pop		ST			
	.line	131
;----------------------------------------------------------------------
; 145 | for (i=0;i<20;i++) LCD_DISP3[i] = msgp[i];                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |145| 
        sti       r0,*+fp(2)            ; |145| 
        cmpi      20,r0                 ; |145| 
        bhs       L44                   ; |145| 
;*      Branch Occurs to L44            ; |145| 
L43:        
        ldiu      fp,ar0                ; |145| 
        ldiu      *+fp(2),ir0           ; |145| 
        ldp       @CL26,DP
        addi      27,ar0                ; |145| 
        ldiu      ir0,ir1               ; |145| 
        ldiu      @CL26,ar1             ; |145| 
        ldiu      *+ar0(ir0),r0         ; |145| 
        sti       r0,*+ar1(ir1)         ; |145| 
        ldiu      1,r0                  ; |145| 
        addi      *+fp(2),r0            ; |145| Unsigned
        sti       r0,*+fp(2)            ; |145| 
        cmpi      20,r0                 ; |145| 
        blo       L43                   ; |145| 
;*      Branch Occurs to L43            ; |145| 
L44:        
	.line	134
;----------------------------------------------------------------------
; 148 | LCD_STR((char*)&LCD_DISP3,3);                                          
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |148| 
        ldp       @CL26,DP
        ldiu      3,r2                  ; |148| 
        ldiu      @CL26,ar2             ; |148| 
        callu     r0                    ; far call to _LCD_STR	; |148| 
                                        ; |148| Far Call Occurs
	.line	136
;----------------------------------------------------------------------
; 150 | for (i=0;i<9999999;i++){}                                              
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |150| 
        sti       r0,*+fp(2)            ; |150| 
        ldp       @CL28,DP
        cmpi      @CL28,r0              ; |150| 
        bhs       L46                   ; |150| 
;*      Branch Occurs to L46            ; |150| 
L45:        
        ldiu      1,r0                  ; |150| 
        addi      *+fp(2),r0            ; |150| Unsigned
        sti       r0,*+fp(2)            ; |150| 
        ldp       @CL28,DP
        cmpi      @CL28,r0              ; |150| 
        blo       L45                   ; |150| 
;*      Branch Occurs to L45            ; |150| 
L46:        
	.line	137
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      49,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	151,000000000h,47


	.sect	 ".text"

	.global	_main1
	.sym	_main1,_main1,32,2,0
	.func	153
;******************************************************************************
;* FUNCTION NAME: _main1                                                      *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : f0,r0,f2,r2,ar0,ar1,ar2,ir0,ir1,st                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_main1:
	.sym	_i,1,14,1,32
	.sym	_j,2,14,1,32
	.sym	_s,3,30,1,32
	.sym	_d,4,30,1,32
	.line	1
;----------------------------------------------------------------------
; 153 | void main1(void)                                                       
; 155 | unsigned int i, j;                                                     
; 156 | unsigned int* s;                                                       
; 157 | unsigned int* d;                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	8
;----------------------------------------------------------------------
; 160 | _GIE;                                                                  
;----------------------------------------------------------------------
	rpts	1			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 162 | ENABLE_JTAG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |162| 
        ldiu      251,r0                ; |162| 
        and3      r0,*ar0,r0            ; |162| 
        sti       r0,*ar0               ; |162| 
	pop		ST			
	.line	12
;----------------------------------------------------------------------
; 164 | DISABLE_BOOTINT;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |164| 
        ldiu      16,r0                 ; |164| 
        or3       r0,*ar0,r0            ; |164| 
        sti       r0,*ar0               ; |164| 
	pop		ST			
	.line	13
;----------------------------------------------------------------------
; 165 | DISABLE_HEATER;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |165| 
        ldiu      2,r0                  ; |165| 
        or3       r0,*ar0,r0            ; |165| 
        sti       r0,*ar0               ; |165| 
	pop		ST			
	.line	15
;----------------------------------------------------------------------
; 167 | RELAY1_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |167| 
        ldiu      254,r0                ; |167| 
        and3      r0,*ar0,r0            ; |167| 
        sti       r0,*ar0               ; |167| 
	pop		ST			
	.line	16
;----------------------------------------------------------------------
; 168 | RELAY2_OFF;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      253,r0                ; |168| 
        and3      r0,*ar0,r0            ; |168| 
        sti       r0,*ar0               ; |168| 
	pop		ST			
	.line	18
;----------------------------------------------------------------------
; 170 | *PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);   /* ws=5 for 90ns flash
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |170| 
        ldiu      184,r0                ; |170| 
        sti       r0,*ar0               ; |170| 
	.line	19
;----------------------------------------------------------------------
; 171 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	21
;----------------------------------------------------------------------
; 173 | CLEAR_INT_MASK;                                                        
;----------------------------------------------------------------------
	ldi		0h, IE
	.line	22
;----------------------------------------------------------------------
; 174 | CLEAR_INT_PEND;                                                        
;----------------------------------------------------------------------
	ldi		0h, IF
	.line	24
;----------------------------------------------------------------------
; 176 | DISABLE_WDOG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |176| 
        ldiu      247,r0                ; |176| 
        and3      r0,*ar0,r0            ; |176| 
        sti       r0,*ar0               ; |176| 
	pop		ST			
	.line	26
;----------------------------------------------------------------------
; 178 | LCD_INIT();                                                            
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,r0               ; |178| 
        callu     r0                    ; far call to _LCD_INIT	; |178| 
                                        ; |178| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 181 | URESET;                                                                
; 182 | {asm("  RPTS    100                     ");\                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |181| 
        ldiu      8,r0                  ; |181| 
        or3       r0,*ar0,r0            ; |181| 
        sti       r0,*ar0               ; |181| 
	pop		ST			
	.line	31
;----------------------------------------------------------------------
; 183 | asm("  NOP                                     ");}                    
;----------------------------------------------------------------------
	RPTS    100			
	NOP					
	.line	32
;----------------------------------------------------------------------
; 184 | _URESET;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      247,r0                ; |184| 
        and3      r0,*ar0,r0            ; |184| 
        sti       r0,*ar0               ; |184| 
	pop		ST			
	.line	34
;----------------------------------------------------------------------
; 186 | s = &BTCOPY;                                    /* BR TABLE MIRROR IN R
;     | AM */                                                                  
;----------------------------------------------------------------------
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |186| 
        sti       r0,*+fp(3)            ; |186| 
	.line	35
;----------------------------------------------------------------------
; 187 | d = (unsigned int*)0x00809FC1;  /* BRANCH TABLE DESTINATION ADDR */    
;----------------------------------------------------------------------
        ldp       @CL17,DP
        ldiu      @CL17,r0              ; |187| 
        sti       r0,*+fp(4)            ; |187| 
	.line	36
;----------------------------------------------------------------------
; 188 | for (i=0;i<0x3F;i++)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |188| 
        sti       r0,*+fp(1)            ; |188| 
        cmpi      63,r0                 ; |188| 
        bhs       L50                   ; |188| 
;*      Branch Occurs to L50            ; |188| 
L49:        
	.line	38
;----------------------------------------------------------------------
; 190 | d[i] = s[i];                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0           ; |190| 
        ldiu      *+fp(3),ir0           ; |190| 
        ldiu      *+fp(4),ir1           ; |190| 
        ldiu      ar0,ar1               ; |190| 
        ldiu      *+ar0(ir0),r0         ; |190| 
        sti       r0,*+ar1(ir1)         ; |190| 
	.line	36
        ldiu      1,r0                  ; |188| 
        addi      *+fp(1),r0            ; |188| Unsigned
        sti       r0,*+fp(1)            ; |188| 
        cmpi      63,r0                 ; |188| 
        blo       L49                   ; |188| 
;*      Branch Occurs to L49            ; |188| 
L50:        
	.line	41
;----------------------------------------------------------------------
; 193 | FLASH_UNLOCK;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |193| 
        ldiu      4,r0                  ; |193| 
        or3       r0,*ar0,r0            ; |193| 
        sti       r0,*ar0               ; |193| 
	pop		ST			
	.line	43
;----------------------------------------------------------------------
; 195 | INITIALIZING = TRUE;                                                   
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |195| 
        ldiu      1,r0                  ; |195| 
        sti       r0,*ar0               ; |195| 
	.line	45
;----------------------------------------------------------------------
; 197 | CLOCK = 0;                                                             
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      @CL31,ar0             ; |197| 
        ldiu      0,r0                  ; |197| 
        sti       r0,*ar0               ; |197| 
	.line	47
;----------------------------------------------------------------------
; 199 | HW_VER  = *XHW_VER & 0xFF;                                             
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |199| 
        ldp       @CL32,DP
        ldiu      255,r0                ; |199| 
        ldiu      @CL32,ar1             ; |199| 
        and3      r0,*ar0,r0            ; |199| 
        sti       r0,*ar1               ; |199| 
	.line	49
;----------------------------------------------------------------------
; 201 | CLOCK = CLOCK_DEFAULT;                                                 
;----------------------------------------------------------------------
        ldp       @CL31,DP
        ldiu      @CL31,ar0             ; |201| 
        ldp       @CL34,DP
        ldiu      @CL34,r0              ; |201| 
        sti       r0,*ar0               ; |201| 
	.line	51
;----------------------------------------------------------------------
; 203 | PORT.Slave_ID = 247;                                                   
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |203| 
        ldiu      247,r0                ; |203| 
        sti       r0,*ar0               ; |203| 
	.line	52
;----------------------------------------------------------------------
; 204 | PORT.tvector = (int*)0;                                                
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |204| 
        ldiu      0,r0                  ; |204| 
        sti       r0,*ar0               ; |204| 
	.line	53
;----------------------------------------------------------------------
; 205 | PORT.pvector = (int*)0;                                                
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |205| 
        sti       r0,*ar0               ; |205| 
	.line	54
;----------------------------------------------------------------------
; 206 | vect_pt1 = (int*)0;                                                    
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |206| 
        sti       r0,*ar0               ; |206| 
	.line	55
;----------------------------------------------------------------------
; 207 | vect_p1 = (int*)0;                                                     
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |207| 
        sti       r0,*ar0               ; |207| 
	.line	57
;----------------------------------------------------------------------
; 209 | CLEAR_INT_MASK;                                                        
;----------------------------------------------------------------------
	ldi		0h, IE
	.line	59
;----------------------------------------------------------------------
; 211 | TIME0 = (double)(7.5);                                                 
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |211| 
        ldfu      7.5000000000e+00,f0   ; |211| 
        stf       f0,*ar0               ; |211| 
	.line	60
;----------------------------------------------------------------------
; 212 | Setup_Timer(0, TIME0);                                                 
;----------------------------------------------------------------------
        ldiu      @CL40,ar0             ; |212| 
        ldiu      0,ar2                 ; |212| 
        ldfu      *ar0,f2               ; |212| 
        call      _Setup_Timer          ; |212| 
                                        ; |212| Call Occurs
	.line	62
;----------------------------------------------------------------------
; 214 | TIME1 = (double)(11.0/(2.0*115200.0));                                 
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |214| 
        ldp       @CL42,DP
        ldfu      @CL42,f0              ; |214| 
        stf       f0,*ar0               ; |214| 
	.line	63
;----------------------------------------------------------------------
; 215 | Setup_Timer(1, TIME1);                                                 
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,ar0             ; |215| 
        ldiu      1,ar2                 ; |215| 
        ldfu      *ar0,f2               ; |215| 
        call      _Setup_Timer          ; |215| 
                                        ; |215| Call Occurs
	.line	65
;----------------------------------------------------------------------
; 217 | XFINIT_OUTPUT;                                                         
;----------------------------------------------------------------------
	ldi		22h,IOF		
	.line	67
;----------------------------------------------------------------------
; 219 | CACHE_ENABLE;                                                          
;----------------------------------------------------------------------
	ldi		1800h, ST
	.line	69
;----------------------------------------------------------------------
; 221 | FLASH_READ_ESN_MFGR(&ESN[0]);                                          
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      @CL44,r0              ; |221| 
        ldp       @CL43,DP
        ldiu      @CL43,ar2             ; |221| 
        callu     r0                    ; far call to _FLASH_READ_ESN_MFGR	; |221| 
                                        ; |221| Far Call Occurs
	.line	70
;----------------------------------------------------------------------
; 222 | FLASH_READ_ESN_USER(&ESN[4]);                                          
;----------------------------------------------------------------------
        ldp       @CL46,DP
        ldiu      @CL46,r0              ; |222| 
        ldp       @CL45,DP
        ldiu      @CL45,ar2             ; |222| 
        callu     r0                    ; far call to _FLASH_READ_ESN_USER	; |222| 
                                        ; |222| Far Call Occurs
	.line	72
;----------------------------------------------------------------------
; 224 | CLEAR_INT_PEND;                                                        
;----------------------------------------------------------------------
	ldi		0h, IF
	.line	74
;----------------------------------------------------------------------
; 226 | Modbus_Initialize();                                                   
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,r0              ; |226| 
        callu     r0                    ; far call to _Modbus_Initialize	; |226| 
                                        ; |226| Far Call Occurs
	.line	76
;----------------------------------------------------------------------
; 228 | INITIALIZING = FALSE;                                                  
;----------------------------------------------------------------------
        ldp       @CL30,DP
        ldiu      @CL30,ar0             ; |228| 
        ldiu      0,r0                  ; |228| 
        sti       r0,*ar0               ; |228| 
	.line	78
;----------------------------------------------------------------------
; 230 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |230| 
        ldiu      8,r0                  ; |230| 
        or3       r0,*ar0,r0            ; |230| 
        sti       r0,*ar0               ; |230| 
        ldiu      128,r0                ; |230| 
        or3       r0,*ar0,r0            ; |230| 
        sti       r0,*ar0               ; |230| 
	pop		ST			
	.line	80
;----------------------------------------------------------------------
; 232 | GIE;                                                                   
;----------------------------------------------------------------------
	or		2000h, ST	
	.line	83
;----------------------------------------------------------------------
; 235 | j = 0;                                                                 
; 237 | while(TRUE)                                                            
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |235| 
        sti       r0,*+fp(2)            ; |235| 
L51:        
	.line	87
;----------------------------------------------------------------------
; 239 | TICKLE_WATCHDOG;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |239| 
        ldiu      128,r0                ; |239| 
        or3       r0,*ar0,r0            ; |239| 
        sti       r0,*ar0               ; |239| 
	pop		ST			
	.line	89
;----------------------------------------------------------------------
; 241 | LCD_DISP3[j] = ' ';                                                    
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      *+fp(2),ir0           ; |241| 
        ldiu      @CL26,ar0             ; |241| 
        ldiu      32,r0                 ; |241| 
        sti       r0,*+ar0(ir0)         ; |241| 
	.line	90
;----------------------------------------------------------------------
; 242 | j++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |242| 
        addi      *+fp(2),r0            ; |242| Unsigned
        sti       r0,*+fp(2)            ; |242| 
	.line	91
;----------------------------------------------------------------------
; 243 | if (j>=20) j = 0;                                                      
;----------------------------------------------------------------------
        cmpi      20,r0                 ; |243| 
        blo       L53                   ; |243| 
;*      Branch Occurs to L53            ; |243| 
        ldiu      0,r0                  ; |243| 
        sti       r0,*+fp(2)            ; |243| 
L53:        
	.line	92
;----------------------------------------------------------------------
; 244 | LCD_DISP3[j] = '.';                                                    
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      *+fp(2),ir0           ; |244| 
        ldiu      @CL26,ar0             ; |244| 
        ldiu      46,r0                 ; |244| 
        sti       r0,*+ar0(ir0)         ; |244| 
	.line	93
;----------------------------------------------------------------------
; 245 | LCD_STR((char*)&LCD_DISP3,3);                                          
;----------------------------------------------------------------------
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |245| 
        ldp       @CL26,DP
        ldiu      3,r2                  ; |245| 
        ldiu      @CL26,ar2             ; |245| 
        callu     r0                    ; far call to _LCD_STR	; |245| 
                                        ; |245| Far Call Occurs
	.line	95
;----------------------------------------------------------------------
; 247 | TICKLE_WATCHDOG;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |247| 
        ldiu      128,r0                ; |247| 
        or3       r0,*ar0,r0            ; |247| 
        sti       r0,*ar0               ; |247| 
	pop		ST			
	.line	96
;----------------------------------------------------------------------
; 248 | LEDG_OFF;                                                              
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |248| 
        ldiu      64,r0                 ; |248| 
        or3       r0,*ar0,r0            ; |248| 
        sti       r0,*ar0               ; |248| 
	pop		ST			
	.line	97
;----------------------------------------------------------------------
; 249 | LEDR_ON;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      127,r0                ; |249| 
        and3      r0,*ar0,r0            ; |249| 
        sti       r0,*ar0               ; |249| 
	pop		ST			
	.line	98
;----------------------------------------------------------------------
; 250 | for(i=0;i<131072;i++){}                                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |250| 
        sti       r0,*+fp(1)            ; |250| 
        ldp       @CL48,DP
        cmpi      @CL48,r0              ; |250| 
        bhs       L55                   ; |250| 
;*      Branch Occurs to L55            ; |250| 
L54:        
        ldiu      1,r0                  ; |250| 
        addi      *+fp(1),r0            ; |250| Unsigned
        sti       r0,*+fp(1)            ; |250| 
        ldp       @CL48,DP
        cmpi      @CL48,r0              ; |250| 
        blo       L54                   ; |250| 
;*      Branch Occurs to L54            ; |250| 
L55:        
	.line	100
;----------------------------------------------------------------------
; 252 | TICKLE_WATCHDOG;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |252| 
        ldiu      128,r0                ; |252| 
        or3       r0,*ar0,r0            ; |252| 
        sti       r0,*ar0               ; |252| 
	pop		ST			
	.line	101
;----------------------------------------------------------------------
; 253 | LEDR_OFF;                                                              
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |253| 
        ldiu      128,r0                ; |253| 
        or3       r0,*ar0,r0            ; |253| 
        sti       r0,*ar0               ; |253| 
	pop		ST			
	.line	102
;----------------------------------------------------------------------
; 254 | LEDG_ON;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      191,r0                ; |254| 
        and3      r0,*ar0,r0            ; |254| 
        sti       r0,*ar0               ; |254| 
	pop		ST			
	.line	103
;----------------------------------------------------------------------
; 255 | for(i=0;i<262144;i++){}                                                
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |255| 
        sti       r0,*+fp(1)            ; |255| 
        ldp       @CL49,DP
        cmpi      @CL49,r0              ; |255| 
        bhs       L57                   ; |255| 
;*      Branch Occurs to L57            ; |255| 
L56:        
        ldiu      1,r0                  ; |255| 
        addi      *+fp(1),r0            ; |255| Unsigned
        sti       r0,*+fp(1)            ; |255| 
        ldp       @CL49,DP
        cmpi      @CL49,r0              ; |255| 
        blo       L56                   ; |255| 
;*      Branch Occurs to L56            ; |255| 
L57:        
	.line	105
;----------------------------------------------------------------------
; 257 | if((!(HW_VER&0x80))&&((*MSVE_IN&0xFF)^0xFF)) Exit_to_App();     /* pres
;     | s buttons to go straight to application */                             
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar0             ; |257| 
        ldiu      128,r0                ; |257| 
        tstb3     *ar0,r0               ; |257| 
        bne       L51                   ; |257| 
;*      Branch Occurs to L51            ; |257| 
        ldp       @CL50,DP
        ldiu      @CL50,ar0             ; |257| 
        ldiu      255,r0                ; |257| 
        and3      r0,*ar0,r0            ; |257| 
        xor       255,r0                ; |257| 
        cmpi      0,r0                  ; |257| 
        beq       L51                   ; |257| 
;*      Branch Occurs to L51            ; |257| 
        ldp       @CL51,DP
        ldiu      @CL51,r0              ; |257| 
        callu     r0                    ; far call to _Exit_to_App	; |257| 
                                        ; |257| Far Call Occurs
	.line	106
        bu        L51                   ; |258| 
;*      Branch Occurs to L51            ; |258| 
	.line	107
	.endfunc	259,000000000h,4


	.sect	 ".text"

	.global	_Exit_to_App
	.sym	_Exit_to_App,_Exit_to_App,32,2,0
	.func	261
;******************************************************************************
;* FUNCTION NAME: _Exit_to_App                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Exit_to_App:
	.line	1
;----------------------------------------------------------------------
; 261 | void Exit_to_App(void)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	6
;----------------------------------------------------------------------
; 266 | vect_p1 = (int*)FLASH_LOC[FLASH_ENTRY_POINT_APP];                      
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldiu      @CL52,ar0             ; |266| 
        ldp       @CL39,DP
        ldiu      @CL39,ar1             ; |266| 
        ldiu      *ar0,r0               ; |266| 
        sti       r0,*ar1               ; |266| 
	.line	7
;----------------------------------------------------------------------
; 267 | if ((vect_p1 != (int*)0x00000000) && (vect_p1 != (int*)0xFFFFFFFF))    
;----------------------------------------------------------------------
        ldiu      @CL39,ar0             ; |267| 
        ldiu      *ar0,r0               ; |267| 
        cmpi      0,r0                  ; |267| 
        beq       L65                   ; |267| 
;*      Branch Occurs to L65            ; |267| 
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |267| 
        ldiu      *ar0,r0               ; |267| 
        cmpi      -1,r0                 ; |267| 
        beq       L65                   ; |267| 
;*      Branch Occurs to L65            ; |267| 
	.line	9
;----------------------------------------------------------------------
; 269 | _GIE;                                                                  
;----------------------------------------------------------------------
	rpts	1			
	andn	2000h, ST	
	.line	10
;----------------------------------------------------------------------
; 270 | *PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);   /* ws=5 for 90ns flash
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |270| 
        ldiu      184,r0                ; |270| 
        sti       r0,*ar0               ; |270| 
	.line	11
;----------------------------------------------------------------------
; 271 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	13
;----------------------------------------------------------------------
; 273 | FLASH_LOCK;                                                            
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |273| 
        ldiu      251,r0                ; |273| 
        and3      r0,*ar0,r0            ; |273| 
        sti       r0,*ar0               ; |273| 
	pop		ST			
	.line	15
;----------------------------------------------------------------------
; 275 | LEDR_ON;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |275| 
        ldiu      127,r0                ; |275| 
        and3      r0,*ar0,r0            ; |275| 
        sti       r0,*ar0               ; |275| 
	pop		ST			
	.line	16
;----------------------------------------------------------------------
; 276 | LEDG_ON;                                                               
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldiu      191,r0                ; |276| 
        and3      r0,*ar0,r0            ; |276| 
        sti       r0,*ar0               ; |276| 
	pop		ST			
	.line	18
;----------------------------------------------------------------------
; 278 | asm("           .global _vect_p1  ");                                  
;----------------------------------------------------------------------
		.global _vect_p1  
	.line	19
;----------------------------------------------------------------------
; 279 | asm("       ldp             _vect_p1      ");                          
;----------------------------------------------------------------------
	ldp		_vect_p1      
	.line	20
;----------------------------------------------------------------------
; 280 | asm("       ldi             @_vect_p1, R0 ");                          
;----------------------------------------------------------------------
	ldi		@_vect_p1, R0 
	.line	21
;----------------------------------------------------------------------
; 281 | asm("       callnz  R0                    ");       /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		      
L65:        
	.line	23
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	283,000000000h,0



	.global	_LCD_CNT
	.bss	_LCD_CNT,1
	.sym	_LCD_CNT,_LCD_CNT,14,2,32

	.global	_vect_pt1
	.bss	_vect_pt1,1
	.sym	_vect_pt1,_vect_pt1,20,2,32

	.global	_CLOCK
	.bss	_CLOCK,1
	.sym	_CLOCK,_CLOCK,14,2,32

	.global	_RTC
	.bss	_RTC,10
	.sym	_RTC,_RTC,60,2,320,,10

	.global	_ESN
	.bss	_ESN,9
	.sym	_ESN,_ESN,62,2,288,,9

	.global	_boot_blk
	.bss	_boot_blk,8192
	.sym	_boot_blk,_boot_blk,62,2,262144,,8192

	.global	_LCD
	.bss	_LCD,2
	.sym	_LCD,_LCD,60,2,64,,2

	.global	_MEM
	.bss	_MEM,1
	.sym	_MEM,_MEM,14,2,32

	.global	_RTC_PRESENT
	.bss	_RTC_PRESENT,1
	.sym	_RTC_PRESENT,_RTC_PRESENT,14,2,32

	.global	_TIME0
	.bss	_TIME0,1
	.sym	_TIME0,_TIME0,7,2,32

	.global	_TIME1
	.bss	_TIME1,1
	.sym	_TIME1,_TIME1,7,2,32

	.global	_vect_p1
	.bss	_vect_p1,1
	.sym	_vect_p1,_vect_p1,20,2,32

	.global	_GATE_TIMEOUT
	.bss	_GATE_TIMEOUT,1
	.sym	_GATE_TIMEOUT,_GATE_TIMEOUT,14,2,32

	.global	_BOOTPORT
	.bss	_BOOTPORT,1
	.sym	_BOOTPORT,_BOOTPORT,14,2,32

	.global	_MB_LCD_DISPLAY
	.bss	_MB_LCD_DISPLAY,40
	.sym	_MB_LCD_DISPLAY,_MB_LCD_DISPLAY,52,2,1280,,40

	.global	_LCD_PRESENT
	.bss	_LCD_PRESENT,1
	.sym	_LCD_PRESENT,_LCD_PRESENT,14,2,32

	.global	_TIMER1_COUNTER
	.bss	_TIMER1_COUNTER,1
	.sym	_TIMER1_COUNTER,_TIMER1_COUNTER,4,2,32

	.global	_LCD_DISPLAY
	.bss	_LCD_DISPLAY,404
	.sym	_LCD_DISPLAY,_LCD_DISPLAY,242,2,12928,,4,101

	.global	_HW_VER
	.bss	_HW_VER,1
	.sym	_HW_VER,_HW_VER,4,2,32

	.global	_LCD_DISP3
	.bss	_LCD_DISP3,21
	.sym	_LCD_DISP3,_LCD_DISP3,50,2,672,,21

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

	.sect	".cinit"
	.field  	52,32
	.field  	CL1+0,32
	.field  	9437203,32
	.field  	9437190,32
	.field  	9437185,32
	.field  	_main1,32
	.field  	8421476,32
	.field  	9437188,32
	.field  	_LCD_INIT,32
	.field  	_boot_blk,32
	.field  	-1,32
	.field  	_call_to_main,32
	.field  	1644167168,32
	.field  	_boot_blk+1,32
	.field  	_boot_blk+2,32
	.field  	_c_int00,32
	.field  	_boot_blk+3,32
	.field  	8429505,32
	.field  	8429505,32
	.field  	8388608,32
	.field  	8388608,32
	.field  	4194304,32
	.field  	_FLASH_ERASE_BLK,32
	.field  	_FLASH_WRITE_BLK,32
	.field  	4198400,32
	.field  	_boot_blk+4096,32
	.field  	_FLASH_LOCK_BLK,32
	.field  	_LCD_DISP3,32
	.field  	_LCD_STR,32
	.field  	9999999,32
	.field  	_BTCOPY,32
	.field  	_INITIALIZING,32
	.field  	_CLOCK,32
	.field  	_HW_VER,32
	.field  	9437184,32
	.field  	55296000,32
	.field  	_PORT+11,32
	.field  	_PORT+7,32
	.field  	_PORT+8,32
	.field  	_vect_pt1,32
	.field  	_vect_p1,32
	.field  	_TIME0,32
	.field  	_TIME1,32
	.word   	0F1483FB7H ; double  4.774305555555556e-05
	.field  	_ESN,32
	.field  	_FLASH_READ_ESN_MFGR,32
	.field  	_ESN+4,32
	.field  	_FLASH_READ_ESN_USER,32
	.field  	_Modbus_Initialize,32
	.field  	131072,32
	.field  	262144,32
	.field  	9437189,32
	.field  	_Exit_to_App,32
	.field  	4202495,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_INITIALIZING

	.global	_FLASH_LOCK_BLK

	.global	_FLASH_ERASE_BLK

	.global	_FLASH_WRITE_BLK

	.global	_FLASH_READ_ESN_MFGR

	.global	_FLASH_READ_ESN_USER

	.global	_PORT

	.global	_Modbus_Initialize

	.global	_BTCOPY

	.global	_call_to_main

	.global	_LCD_STR

	.global	_LCD_INIT

	.global	_c_int00
	.global	_Setup_Timer
