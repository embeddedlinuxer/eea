;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Oct 31 11:29:47 2011                                *
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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_348.AAA 
	.file	"isr.c"
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
	.file	"D:\CCS\EEA_SA_V611beta\BOOT\SOURCE\INCLUDE\BRANCH.H"
		.global _BT			
		.global _BTCOPY		
		.global _c_XINT0	
		.global _c_RINT0	
		.global _c_TINT0	
		.global _c_TINT1	
		.global _c_INT0		
		.global _c_INT1		
		.global _c_INT2		
		.global _c_INT3		
		.global _c_SPURINT	
		.global _XINT0		
		.global _RINT0		
		.global _TINT0		
		.global _TINT1		
		.global _INT0		
		.global _INT1		
		.global _INT2		
		.global _INT3		
		.sect "branch_table_copy"	
_BTCOPY					
		BR _c_INT0			
		BR _c_SPURINT		
		BR _c_SPURINT		
		BR _c_SPURINT		
		BR _c_SPURINT		
		BR _c_SPURINT		
		BR _c_SPURINT		
		BR _c_SPURINT		
		BR _c_TINT0			
		BR _c_TINT1			
		BR _c_SPURINT		
		.space	20			
							
		.loop 28			
		BR _c_SPURINT		
		.endloop			
		.space 4			
		.sect "branch_table"	
_BT						
_INT0	BR _c_SPURINT		
_INT1	BR _c_SPURINT		
_INT2	BR _c_SPURINT		
_INT3	BR _c_SPURINT		
_XINT0	BR _c_SPURINT		
_RINT0	BR _c_SPURINT		
		BR _c_SPURINT		
		BR _c_SPURINT		
_TINT0	BR _c_SPURINT		
_TINT1	BR _c_SPURINT		
_DINT	BR _c_SPURINT		
		.space	20			
_TRAPO						
		.loop 28			
		BR _c_SPURINT		
		.endloop			
		.space 4			
	.file	"isr.c"
	.sect	 "interrupt_routines"

	.global	_c_INT0
	.sym	_c_INT0,_c_INT0,32,2,0
	.func	14
;******************************************************************************
;* FUNCTION NAME: _c_INT0                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,rs,re,rc,pc                      *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 26 SOE = 28 words        *
;******************************************************************************
_c_INT0:
	.line	1
;----------------------------------------------------------------------
;  14 | void c_INT0(void)                                                      
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
;  16 | DISABLE_EXTINT0;                                                       
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |16| 
        ldiu      254,r0                ; |16| 
        and3      r0,*ar0,r0            ; |16| 
        sti       r0,*ar0               ; |16| 
	pop		ST			
	.line	4
;----------------------------------------------------------------------
;  17 | Process_UINT();                                                        
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,r0               ; |17| 
        callu     r0                    ; far call to _Process_UINT	; |17| 
                                        ; |17| Far Call Occurs
	.line	5
;----------------------------------------------------------------------
;  18 | ENABLE_EXTINT0;                                                        
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL1,DP
        ldiu      @CL1,ar0              ; |18| 
        ldiu      1,r0                  ; |18| 
        or3       r0,*ar0,r0            ; |18| 
        sti       r0,*ar0               ; |18| 
	pop		ST			
	.line	6
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	19,0103f07ffh,0


	.sect	 "interrupt_routines"

	.global	_c_TINT0
	.sym	_c_TINT0,_c_TINT0,32,2,0
	.func	23
;******************************************************************************
;* FUNCTION NAME: _c_TINT0                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,rs,re,rc,pc                      *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 26 SOE = 28 words        *
;******************************************************************************
_c_TINT0:
	.line	1
;----------------------------------------------------------------------
;  23 | void c_TINT0(void)                                                     
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	5
;----------------------------------------------------------------------
;  27 | vect_p1 = (int*)FLASH_LOC[FLASH_ENTRY_POINT_APP];                      
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |27| 
        ldp       @CL3,DP
        ldiu      @CL3,ar1              ; |27| 
        ldiu      *ar0,r0               ; |27| 
        sti       r0,*ar1               ; |27| 
	.line	6
;----------------------------------------------------------------------
;  28 | if ((vect_p1 != (int*)0x00000000) && (vect_p1 != (int*)0xFFFFFFFF))    
;----------------------------------------------------------------------
        ldiu      @CL3,ar0              ; |28| 
        ldiu      *ar0,r0               ; |28| 
        cmpi      0,r0                  ; |28| 
        beq       L7                    ; |28| 
;*      Branch Occurs to L7             ; |28| 
        ldp       @CL3,DP
        ldiu      @CL3,ar0              ; |28| 
        ldiu      *ar0,r0               ; |28| 
        cmpi      -1,r0                 ; |28| 
        beq       L7                    ; |28| 
;*      Branch Occurs to L7             ; |28| 
	.line	8
;----------------------------------------------------------------------
;  30 | DISABLE_JTAG;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL5,DP
        ldiu      @CL5,ar0              ; |30| 
        ldiu      4,r0                  ; |30| 
        or3       r0,*ar0,r0            ; |30| 
        sti       r0,*ar0               ; |30| 
	pop		ST			
L7:        
	.line	11
;----------------------------------------------------------------------
;  33 | Exit_to_App();                                                         
;----------------------------------------------------------------------
        ldp       @CL6,DP
        ldiu      @CL6,r0               ; |33| 
        callu     r0                    ; far call to _Exit_to_App	; |33| 
                                        ; |33| Far Call Occurs
	.line	12
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	34,0103f07ffh,0


	.sect	 "interrupt_routines"

	.global	_c_TINT1
	.sym	_c_TINT1,_c_TINT1,32,2,0
	.func	38
;******************************************************************************
;* FUNCTION NAME: _c_TINT1                                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         : f0,r0,ar0,ar1,pc                                    *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 5 SOE = 7 words          *
;******************************************************************************
_c_TINT1:
	.line	1
;----------------------------------------------------------------------
;  38 | void c_TINT1(void)                                                     
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
        push      r0
        pushf     f0
        push      ar0
        push      ar1
	.line	3
;----------------------------------------------------------------------
;  40 | DISABLE_TINT1;                                                         
;----------------------------------------------------------------------
	andn	0200h, IE
	.line	5
;----------------------------------------------------------------------
;  42 | if(PORT.TMR_enabled)                                                   
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |42| 
        ldiu      *ar0,r0               ; |42| 
        cmpi      0,r0                  ; |42| 
        beq       L13                   ; |42| 
;*      Branch Occurs to L13            ; |42| 
	.line	7
;----------------------------------------------------------------------
;  44 | TIMER1_COUNTER--;                                                      
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |44| 
        ldiu      1,r0                  ; |44| 
        subi3     r0,*ar0,r0            ; |44| 
        sti       r0,*ar0               ; |44| 
	.line	8
;----------------------------------------------------------------------
;  45 | if (TIMER1_COUNTER==0)                                                 
;----------------------------------------------------------------------
        ldiu      @CL8,ar0              ; |45| 
        ldiu      *ar0,r0               ; |45| 
        cmpi      0,r0                  ; |45| 
        bne       L13                   ; |45| 
;*      Branch Occurs to L13            ; |45| 
	.line	10
;----------------------------------------------------------------------
;  47 | vect_pt1 = PORT.tvector;                                               
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,ar0             ; |47| 
        ldp       @CL9,DP
        ldiu      @CL9,ar1              ; |47| 
        ldiu      *ar0,r0               ; |47| 
        sti       r0,*ar1               ; |47| 
	.line	12
;----------------------------------------------------------------------
;  49 | PUSH_ALL;                                                              
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
	.line	13
;----------------------------------------------------------------------
;  50 | asm("           .global _vect_pt1  ");                                 
;----------------------------------------------------------------------
		.global _vect_pt1  
	.line	14
;----------------------------------------------------------------------
;  51 | asm("       ldp             _vect_pt1      ");                         
;----------------------------------------------------------------------
	ldp		_vect_pt1      
	.line	15
;----------------------------------------------------------------------
;  52 | asm("       ldi             @_vect_pt1, R0 ");                         
;----------------------------------------------------------------------
	ldi		@_vect_pt1, R0 
	.line	16
;----------------------------------------------------------------------
;  53 | asm("       callnz  R0                         ");  /* call if vect !=
;     | NULL */                                                                
;----------------------------------------------------------------------
	callnz	R0		   	   
	.line	17
;----------------------------------------------------------------------
;  54 | POP_ALL;                                                               
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
L13:        
	.line	21
;----------------------------------------------------------------------
;  58 | ENABLE_TINT1;                                                          
;----------------------------------------------------------------------
	or		0200h, IE
	.line	22
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       ar1
        pop       ar0
        popf      f0
        pop       r0
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	59,010000301h,0


	.sect	 "interrupt_routines"

	.global	_c_SPURINT
	.sym	_c_SPURINT,_c_SPURINT,32,2,0
	.func	63
;******************************************************************************
;* FUNCTION NAME: _c_SPURINT                                                  *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 1 SOE = 3 words          *
;******************************************************************************
_c_SPURINT:
	.line	1
;----------------------------------------------------------------------
;  63 | void c_SPURINT(void)                                                   
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      dp
	.line	3
                                        ; Begin Epilog Code
                                        ; Restore SOE Registers
        pop       dp
                                        ; Unallocate the Frame
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	65,010000000h,0


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

	.sect	".cinit"
	.field  	10,32
	.field  	CL1+0,32
	.field  	9437190,32
	.field  	_Process_UINT,32
	.field  	_vect_p1,32
	.field  	4202495,32
	.field  	9437203,32
	.field  	_Exit_to_App,32
	.field  	_PORT+6,32
	.field  	_TIMER1_COUNTER,32
	.field  	_vect_pt1,32
	.field  	_PORT+7,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_PORT

	.global	_Process_UINT

	.global	_Exit_to_App

	.global	_vect_pt1

	.global	_vect_p1

	.global	_TIMER1_COUNTER
