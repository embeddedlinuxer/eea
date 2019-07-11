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
;	C:\tic3x4x\c3x4x\cgtools\bin\ac30.exe -@_50G.AAA 
	.file	"modbusrtu.c"
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
	.file	"modbusrtu.c"
	.sect	 ".text"

	.global	_Modbus_Initialize
	.sym	_Modbus_Initialize,_Modbus_Initialize,32,2,0
	.func	14
;******************************************************************************
;* FUNCTION NAME: _Modbus_Initialize                                          *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ar2                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Modbus_Initialize:
	.line	1
;----------------------------------------------------------------------
;  14 | void Modbus_Initialize(void)                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  16 | Setup_UART(9600);                                                      
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      9600,ar2              ; |16| 
        ldiu      @CL1,r0               ; |16| 
        callu     r0                    ; far call to _Setup_UART	; |16| 
                                        ; |16| Far Call Occurs
	.line	5
;----------------------------------------------------------------------
;  18 | PORT.tvector = (int*)WDOG_P;                                           
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |18| 
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |18| 
        sti       r0,*ar0               ; |18| 
	.line	6
;----------------------------------------------------------------------
;  19 | PORT.pvector = (int*)MODBUS_RX_ID;                                     
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |19| 
        ldp       @CL5,DP
        ldiu      @CL5,r0               ; |19| 
        sti       r0,*ar0               ; |19| 
	.line	8
;----------------------------------------------------------------------
;  21 | TIMER1_COUNTER = PORT.TMR_Network_WDOG;                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar1              ; |21| 
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |21| 
        ldiu      *ar1,r0               ; |21| 
        sti       r0,*ar0               ; |21| 
	.line	9
;----------------------------------------------------------------------
;  22 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |22| 
        ldiu      1,r0                  ; |22| 
        sti       r0,*ar0               ; |22| 
	.line	10
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	23,000000000h,0


	.sect	 ".text"

	.global	_WDOG_P
	.sym	_WDOG_P,_WDOG_P,32,2,0
	.func	25
;******************************************************************************
;* FUNCTION NAME: _WDOG_P                                                     *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_WDOG_P:
	.line	1
;----------------------------------------------------------------------
;  25 | void WDOG_P(void)                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  27 | TIMER1_COUNTER = PORT.TMR_Network_WDOG;                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |27| 
        ldp       @CL6,DP
        ldiu      @CL6,ar1              ; |27| 
        ldiu      *ar0,r0               ; |27| 
        sti       r0,*ar1               ; |27| 
	.line	4
;----------------------------------------------------------------------
;  28 | if (!PORT.TX_complete) return;                                         
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |28| 
        ldiu      *ar0,r0               ; |28| 
        cmpi      0,r0                  ; |28| 
        beq       L6                    ; |28| 
;*      Branch Occurs to L6             ; |28| 
	.line	5
;----------------------------------------------------------------------
;  29 | Clear_RX();                                                            
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r0              ; |29| 
        callu     r0                    ; far call to _Clear_RX	; |29| 
                                        ; |29| Far Call Occurs
	.line	6
;----------------------------------------------------------------------
;  30 | PORT.pvector = (int*)MODBUS_RX_ID;                                     
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |30| 
        ldp       @CL5,DP
        ldiu      @CL5,r0               ; |30| 
        sti       r0,*ar0               ; |30| 
	.line	7
;----------------------------------------------------------------------
;  31 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
L6:        
	.line	8
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	32,000000000h,0


	.sect	 ".text"

	.global	_TX_P
	.sym	_TX_P,_TX_P,32,2,0
	.func	34
;******************************************************************************
;* FUNCTION NAME: _TX_P                                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_TX_P:
	.line	1
;----------------------------------------------------------------------
;  34 | void TX_P(void)                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  36 | PORT.TX_complete = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |36| 
        ldiu      0,r0                  ; |36| 
        sti       r0,*ar0               ; |36| 
	.line	4
;----------------------------------------------------------------------
;  37 | if (HW_VER&0x80)                                                       
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |37| 
        ldiu      128,r0                ; |37| 
        tstb3     *ar0,r0               ; |37| 
        beq       L10                   ; |37| 
;*      Branch Occurs to L10            ; |37| 
	.line	6
;----------------------------------------------------------------------
;  39 | ENABLE_TXB;                                                            
;  41 | else                                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |39| 
        ldiu      254,r0                ; |39| 
        and3      r0,*ar0,r0            ; |39| 
        sti       r0,*ar0               ; |39| 
	pop		ST			
        bu        L11                   ; |33| 
;*      Branch Occurs to L11            ; |33| 
L10:        
	.line	10
;----------------------------------------------------------------------
;  43 | NOPS; UART[BOOTPORT][MCR] |= 0x01;                      /* enable trans
;     | mitter */                                                              
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
        ldp       @CL14,DP
        ldiu      4,r0                  ; |43| 
        ldiu      @CL14,ar0             ; |43| 
        ldp       @CL13,DP
        ash3      r0,*ar0,ar0           ; |43| 
        addi      @CL13,ar0             ; |43| Unsigned
        ldiu      1,r0                  ; |43| 
        or        *+ar0(4),r0           ; |43| 
        sti       r0,*+ar0(4)           ; |43| 
L11:        
	.line	13
;----------------------------------------------------------------------
;  46 | PORT.tvector = (int*)TX_P1;                                            
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |46| 
        ldp       @CL15,DP
        ldiu      @CL15,r0              ; |46| 
        sti       r0,*ar0               ; |46| 
	.line	14
;----------------------------------------------------------------------
;  47 | TIMER1_COUNTER = PORT.TMR_Preamble_Delay;                              
;----------------------------------------------------------------------
        ldp       @CL16,DP
        ldiu      @CL16,ar1             ; |47| 
        ldp       @CL6,DP
        ldiu      @CL6,ar0              ; |47| 
        ldiu      *ar1,r0               ; |47| 
        sti       r0,*ar0               ; |47| 
	.line	15
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	48,000000000h,0


	.sect	 ".text"

	.global	_TX_P1
	.sym	_TX_P1,_TX_P1,32,2,0
	.func	50
;******************************************************************************
;* FUNCTION NAME: _TX_P1                                                      *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,ar0,ar1,ar2,ir0                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_TX_P1:
	.line	1
;----------------------------------------------------------------------
;  50 | void TX_P1(void)                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  52 | PORT.TMR_enabled = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |52| 
        ldiu      0,r0                  ; |52| 
        sti       r0,*ar0               ; |52| 
	.line	4
;----------------------------------------------------------------------
;  53 | PORT.tvector = (int*)TX_S;                                             
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |53| 
        ldp       @CL17,DP
        ldiu      @CL17,r0              ; |53| 
        sti       r0,*ar0               ; |53| 
	.line	5
;----------------------------------------------------------------------
;  54 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	6
;----------------------------------------------------------------------
;  55 | UART[BOOTPORT][IER] = 0x02;     /* enable THR, disable RHR interrupts *
;     | /                                                                      
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar1             ; |55| 
        ldp       @CL18,DP
        ldiu      4,r0                  ; |55| 
        ldiu      @CL18,ar0             ; |55| 
        ash3      r0,*ar1,ir0           ; |55| 
        ldiu      2,r0                  ; |55| 
        sti       r0,*+ar0(ir0)         ; |55| 
	.line	7
;----------------------------------------------------------------------
;  56 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	8
;----------------------------------------------------------------------
;  57 | UART[BOOTPORT][THR] = Get(&PORT.TXbuf);                                
;----------------------------------------------------------------------
        ldp       @CL20,DP
        ldiu      @CL20,r0              ; |57| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |57| 
        callu     r0                    ; far call to _Get	; |57| 
                                        ; |57| Far Call Occurs
        ldp       @CL14,DP
        ldiu      @CL14,ar1             ; |57| 
        ldp       @CL13,DP
        ldiu      @CL13,ar0             ; |57| 
        ldiu      4,r1                  ; |57| 
        ash3      r1,*ar1,ir0           ; |57| 
        sti       r0,*+ar0(ir0)         ; |57| 
	.line	9
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	58,000000000h,0


	.sect	 ".text"

	.global	_TX_S
	.sym	_TX_S,_TX_S,32,2,0
	.func	60
;******************************************************************************
;* FUNCTION NAME: _TX_S                                                       *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,ar1,ir0,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_TX_S:
	.line	1
;----------------------------------------------------------------------
;  60 | void TX_S(void)                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  62 | if (HW_VER&0x80)                                                       
;----------------------------------------------------------------------
        ldp       @CL11,DP
        ldiu      @CL11,ar0             ; |62| 
        ldiu      128,r0                ; |62| 
        tstb3     *ar0,r0               ; |62| 
        beq       L19                   ; |62| 
;*      Branch Occurs to L19            ; |62| 
	.line	5
;----------------------------------------------------------------------
;  64 | DISABLE_TXB;                                                           
;  66 | else                                                                   
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL12,DP
        ldiu      @CL12,ar0             ; |64| 
        ldiu      1,r0                  ; |64| 
        or3       r0,*ar0,r0            ; |64| 
        sti       r0,*ar0               ; |64| 
	pop		ST			
        bu        L20                   ; |59| 
;*      Branch Occurs to L20            ; |59| 
L19:        
	.line	9
;----------------------------------------------------------------------
;  68 | UART[BOOTPORT][MCR] &= 0x7E;                    /* disable transmitter
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      4,r0                  ; |68| 
        ldiu      @CL14,ar0             ; |68| 
        ldp       @CL13,DP
        ash3      r0,*ar0,ar0           ; |68| 
        addi      @CL13,ar0             ; |68| Unsigned
        ldiu      126,r0                ; |68| 
        and       *+ar0(4),r0           ; |68| 
        sti       r0,*+ar0(4)           ; |68| 
L20:        
	.line	12
;----------------------------------------------------------------------
;  71 | Clear_RX();                                                            
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r0              ; |71| 
        callu     r0                    ; far call to _Clear_RX	; |71| 
                                        ; |71| Far Call Occurs
	.line	13
;----------------------------------------------------------------------
;  72 | PORT.tvector = (int*)WDOG_P;                                           
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |72| 
        ldp       @CL3,DP
        ldiu      @CL3,r0               ; |72| 
        sti       r0,*ar0               ; |72| 
	.line	14
;----------------------------------------------------------------------
;  73 | TIMER1_COUNTER = PORT.TMR_Network_WDOG;                                
;----------------------------------------------------------------------
        ldp       @CL7,DP
        ldiu      @CL7,ar0              ; |73| 
        ldp       @CL6,DP
        ldiu      @CL6,ar1              ; |73| 
        ldiu      *ar0,r0               ; |73| 
        sti       r0,*ar1               ; |73| 
	.line	15
;----------------------------------------------------------------------
;  74 | PORT.TX_complete = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL9,DP
        ldiu      @CL9,ar0              ; |74| 
        ldiu      1,r0                  ; |74| 
        sti       r0,*ar0               ; |74| 
	.line	16
;----------------------------------------------------------------------
;  75 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	17
;----------------------------------------------------------------------
;  76 | UART[BOOTPORT][IER] = 0x01;     /* disable THR, enable RHR interrupts *
;     | /                                                                      
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      4,r0                  ; |76| 
        ldiu      @CL14,ar0             ; |76| 
        ldp       @CL18,DP
        ash3      r0,*ar0,ir0           ; |76| 
        ldiu      @CL18,ar1             ; |76| 
        ldiu      1,r0                  ; |76| 
        sti       r0,*+ar1(ir0)         ; |76| 
	.line	18
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	77,000000000h,0


	.sect	 ".text"

	.global	_MODBUS_RX_ID
	.sym	_MODBUS_RX_ID,_MODBUS_RX_ID,32,2,0
	.func	79
;******************************************************************************
;* FUNCTION NAME: _MODBUS_RX_ID                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_MODBUS_RX_ID:
	.line	1
;----------------------------------------------------------------------
;  79 | void MODBUS_RX_ID(void)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  81 | PORT.TMR_enabled = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |81| 
        ldiu      0,r0                  ; |81| 
        sti       r0,*ar0               ; |81| 
	.line	4
;----------------------------------------------------------------------
;  82 | PORT.i = (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);      /* (temporary,
;     | for debug purposes) */                                                 
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar0             ; |82| 
        ldp       @CL22,DP
        ldiu      1,r1                  ; |82| 
        ldiu      @CL22,ar1             ; |82| 
        subi3     r1,*ar0,ir0           ; |82| 
        ldp       @CL21,DP
        ldiu      255,r0                ; |82| 
        ldiu      @CL21,ar0             ; |82| 
        and3      r0,*+ar1(ir0),r0      ; |82| 
        sti       r0,*ar0               ; |82| 
	.line	5
;----------------------------------------------------------------------
;  83 | PORT.RX_pending = TRUE;                                                
;----------------------------------------------------------------------
        ldp       @CL24,DP
        ldiu      @CL24,ar0             ; |83| 
        ldiu      1,r0                  ; |83| 
        sti       r0,*ar0               ; |83| 
	.line	6
;----------------------------------------------------------------------
;  84 | PORT.pvector = (int*) MODBUS_RX_FUNCTION;                              
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |84| 
        ldp       @CL25,DP
        ldiu      @CL25,r0              ; |84| 
        sti       r0,*ar0               ; |84| 
	.line	7
;----------------------------------------------------------------------
;  85 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |85| 
        ldiu      1,r0                  ; |85| 
        sti       r0,*ar0               ; |85| 
	.line	8
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	86,000000000h,0


	.sect	 ".text"

	.global	_MODBUS_RX_FUNCTION
	.sym	_MODBUS_RX_FUNCTION,_MODBUS_RX_FUNCTION,32,2,0
	.func	88
;******************************************************************************
;* FUNCTION NAME: _MODBUS_RX_FUNCTION                                         *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_MODBUS_RX_FUNCTION:
	.line	1
;----------------------------------------------------------------------
;  88 | void MODBUS_RX_FUNCTION(void)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  90 | PORT.TMR_enabled = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |90| 
        ldiu      0,r0                  ; |90| 
        sti       r0,*ar0               ; |90| 
	.line	4
;----------------------------------------------------------------------
;  91 | PORT.func = (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);                  
;  93 | switch(PORT.func)                                                      
;  95 |         case mb_cmd_pdi_write_ESN:                                     
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar0             ; |91| 
        ldp       @CL22,DP
        ldiu      1,r1                  ; |91| 
        ldiu      @CL22,ar1             ; |91| 
        subi3     r1,*ar0,ir0           ; |91| 
        ldp       @CL26,DP
        ldiu      255,r0                ; |91| 
        ldiu      @CL26,ar0             ; |91| 
        and3      r0,*+ar1(ir0),r0      ; |91| 
        sti       r0,*ar0               ; |91| 
        bu        L34                   ; |87| 
;*      Branch Occurs to L34            ; |87| 
L27:        
	.line	10
;----------------------------------------------------------------------
;  97 | PORT.i = 16;                                                           
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |97| 
        ldiu      16,r0                 ; |97| 
        sti       r0,*ar0               ; |97| 
	.line	11
;----------------------------------------------------------------------
;  98 | PORT.pvector = (int*) MODBUS_RX_nDATA;                                 
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |98| 
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |98| 
        sti       r0,*ar0               ; |98| 
	.line	12
;----------------------------------------------------------------------
;  99 | break;                                                                 
; 102 | case mb_cmd_pdi_MAX_BAUD:                                              
; 103 | case mb_cmd_pdi_RESET:                                                 
; 104 | case mb_cmd_pdi_EXIT:                                                  
; 105 | case mb_cmd_pdi_ERASE_CFG:                                             
; 106 | case mb_cmd_pdi_RESTORE_FACTORY_DEFAULTS:                              
; 107 | case mb_cmd_pdi_read_ESN:                                              
; 108 | case mb_cmd_pdi_clear_scratchpad:                                      
;----------------------------------------------------------------------
        bu        L43                   ; |99| 
;*      Branch Occurs to L43            ; |99| 
L28:        
	.line	23
;----------------------------------------------------------------------
; 110 | PORT.i = 2;                                                            
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |110| 
        ldiu      2,r0                  ; |110| 
        sti       r0,*ar0               ; |110| 
	.line	24
;----------------------------------------------------------------------
; 111 | PORT.pvector = (int*) MODBUS_RX_CRC;                                   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |111| 
        ldp       @CL28,DP
        ldiu      @CL28,r0              ; |111| 
        sti       r0,*ar0               ; |111| 
	.line	25
;----------------------------------------------------------------------
; 112 | break;                                                                 
; 115 | case mb_cmd_pdi_BAUD:                                                  
;----------------------------------------------------------------------
        bu        L43                   ; |112| 
;*      Branch Occurs to L43            ; |112| 
L29:        
	.line	30
;----------------------------------------------------------------------
; 117 | PORT.i = 4;                                                            
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |117| 
        ldiu      4,r0                  ; |117| 
        sti       r0,*ar0               ; |117| 
	.line	31
;----------------------------------------------------------------------
; 118 | PORT.pvector = (int*) MODBUS_RX_CRC;                                   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |118| 
        ldp       @CL28,DP
        ldiu      @CL28,r0              ; |118| 
        sti       r0,*ar0               ; |118| 
	.line	32
;----------------------------------------------------------------------
; 119 | break;                                                                 
; 122 | case mb_cmd_pdi_read:                                                  
;----------------------------------------------------------------------
        bu        L43                   ; |119| 
;*      Branch Occurs to L43            ; |119| 
L30:        
	.line	37
;----------------------------------------------------------------------
; 124 | PORT.i = 6;                                                            
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |124| 
        ldiu      6,r0                  ; |124| 
        sti       r0,*ar0               ; |124| 
	.line	38
;----------------------------------------------------------------------
; 125 | PORT.pvector = (int*) MODBUS_RX_nDATA;                                 
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |125| 
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |125| 
        sti       r0,*ar0               ; |125| 
	.line	39
;----------------------------------------------------------------------
; 126 | break;                                                                 
; 129 | case mb_cmd_pdi_write_scratchpad:                                      
; 130 | case mb_cmd_pdi_write:                                                 
;----------------------------------------------------------------------
        bu        L43                   ; |126| 
;*      Branch Occurs to L43            ; |126| 
L31:        
	.line	45
;----------------------------------------------------------------------
; 132 | PORT.i = 6;                                                            
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |132| 
        ldiu      6,r0                  ; |132| 
        sti       r0,*ar0               ; |132| 
	.line	46
;----------------------------------------------------------------------
; 133 | PORT.pvector = (int*) MODBUS_RX_nw;                                    
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |133| 
        ldp       @CL29,DP
        ldiu      @CL29,r0              ; |133| 
        sti       r0,*ar0               ; |133| 
	.line	47
;----------------------------------------------------------------------
; 134 | break;                                                                 
; 137 | case mb_cmd_pdi_store_scratchpad:                                      
; 138 | case mb_cmd_pdi_set_entry_point:                                       
;----------------------------------------------------------------------
        bu        L43                   ; |134| 
;*      Branch Occurs to L43            ; |134| 
L32:        
	.line	53
;----------------------------------------------------------------------
; 140 | PORT.i = 4;                                                            
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |140| 
        ldiu      4,r0                  ; |140| 
        sti       r0,*ar0               ; |140| 
	.line	54
;----------------------------------------------------------------------
; 141 | PORT.pvector = (int*) MODBUS_RX_nDATA;                                 
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |141| 
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |141| 
        sti       r0,*ar0               ; |141| 
	.line	55
;----------------------------------------------------------------------
; 142 | break;                                                                 
; 145 | default:                                                               
;----------------------------------------------------------------------
        bu        L43                   ; |142| 
;*      Branch Occurs to L43            ; |142| 
L33:        
	.line	60
;----------------------------------------------------------------------
; 147 | PORT.i = 1;                                                            
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |147| 
        ldiu      1,r0                  ; |147| 
        sti       r0,*ar0               ; |147| 
	.line	61
;----------------------------------------------------------------------
; 148 | PORT.pvector = (int*) MODBUS_RX_n;                                     
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |148| 
        ldp       @CL30,DP
        ldiu      @CL30,r0              ; |148| 
        sti       r0,*ar0               ; |148| 
        bu        L43                   ; |87| 
;*      Branch Occurs to L43            ; |87| 
L34:        
	.line	6
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |93| 
        ldiu      65,r0                 ; |93| 
        ldiu      *ar0,ir0              ; |93| 
        subri     ir0,r0                ; |93| 
        cmpi      7,r0                  ; |93| 
        bls       L42                   ; |93| 
;*      Branch Occurs to L42            ; |93| 
        cmpi      100,ir0               ; |93| 
        beq       L28                   ; |93| 
;*      Branch Occurs to L28            ; |93| 
        cmpi      101,ir0               ; |93| 
        beq       L31                   ; |93| 
;*      Branch Occurs to L31            ; |93| 
        cmpi      102,ir0               ; |93| 
        beq       L28                   ; |93| 
;*      Branch Occurs to L28            ; |93| 
        cmpi      103,ir0               ; |93| 
        beq       L32                   ; |93| 
;*      Branch Occurs to L32            ; |93| 
        cmpi      104,ir0               ; |93| 
        beq       L28                   ; |93| 
;*      Branch Occurs to L28            ; |93| 
        cmpi      105,ir0               ; |93| 
        beq       L29                   ; |93| 
;*      Branch Occurs to L29            ; |93| 
        bu        L33                   ; |93| 
;*      Branch Occurs to L33            ; |93| 
L42:        
        ldp       @CL31,DP
        subi      65,ir0                ; |93| Unsigned
        ldiu      @CL31,ar0             ; |93| 
        ldiu      *+ar0(ir0),r0         ; |93| 
        bu        r0                    ; |93| 

	.sect	".text"
SW0:	.word	L32	; 65
	.word	L30	; 66
	.word	L31	; 67
	.word	L28	; 68
	.word	L27	; 69
	.word	L28	; 70
	.word	L28	; 71
	.word	L28	; 72
	.sect	".text"
;*      Branch Occurs to r0             ; |93| 
L43:        
	.line	65
;----------------------------------------------------------------------
; 152 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |152| 
        ldiu      1,r0                  ; |152| 
        sti       r0,*ar0               ; |152| 
	.line	66
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	153,000000000h,0


	.sect	 ".text"

	.global	_MODBUS_RX_n
	.sym	_MODBUS_RX_n,_MODBUS_RX_n,32,2,0
	.func	155
;******************************************************************************
;* FUNCTION NAME: _MODBUS_RX_n                                                *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_MODBUS_RX_n:
	.line	1
;----------------------------------------------------------------------
; 155 | void MODBUS_RX_n(void)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 157 | PORT.TMR_enabled = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |157| 
        ldiu      0,r0                  ; |157| 
        sti       r0,*ar0               ; |157| 
	.line	4
;----------------------------------------------------------------------
; 158 | PORT.i--;                                                              
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |158| 
        ldiu      1,r0                  ; |158| 
        subi3     r0,*ar0,r0            ; |158| Unsigned
        sti       r0,*ar0               ; |158| 
	.line	5
;----------------------------------------------------------------------
; 159 | if (PORT.i)                                                            
;----------------------------------------------------------------------
        ldiu      @CL21,ar0             ; |159| 
        ldiu      *ar0,r0               ; |159| 
        cmpi      0,r0                  ; |159| 
        beq       L48                   ; |159| 
;*      Branch Occurs to L48            ; |159| 
	.line	7
;----------------------------------------------------------------------
; 161 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |161| 
        ldiu      1,r0                  ; |161| 
        sti       r0,*ar0               ; |161| 
	.line	8
;----------------------------------------------------------------------
; 162 | return;                                                                
;----------------------------------------------------------------------
        bu        L49                   ; |162| 
;*      Branch Occurs to L49            ; |162| 
L48:        
	.line	10
;----------------------------------------------------------------------
; 164 | PORT.i = (unsigned int) (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);      
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      @CL23,ar0             ; |164| 
        ldp       @CL22,DP
        ldiu      1,r1                  ; |164| 
        ldiu      @CL22,ar1             ; |164| 
        subi3     r1,*ar0,ir0           ; |164| 
        ldp       @CL21,DP
        ldiu      255,r0                ; |164| 
        ldiu      @CL21,ar0             ; |164| 
        and3      r0,*+ar1(ir0),r0      ; |164| 
        sti       r0,*ar0               ; |164| 
	.line	11
;----------------------------------------------------------------------
; 165 | PORT.pvector = (int*) MODBUS_RX_nDATA;                                 
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |165| 
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |165| 
        sti       r0,*ar0               ; |165| 
	.line	12
;----------------------------------------------------------------------
; 166 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |166| 
        ldiu      1,r0                  ; |166| 
        sti       r0,*ar0               ; |166| 
L49:        
	.line	13
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	167,000000000h,0


	.sect	 ".text"

	.global	_MODBUS_RX_nw
	.sym	_MODBUS_RX_nw,_MODBUS_RX_nw,32,2,0
	.func	169
;******************************************************************************
;* FUNCTION NAME: _MODBUS_RX_nw                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,ar5,ir0,ir1,st          *
;*   Regs Saved         : ar4,ar5                                             *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 2 SOE = 4 words          *
;******************************************************************************
_MODBUS_RX_nw:
	.line	1
;----------------------------------------------------------------------
; 169 | void MODBUS_RX_nw(void)                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        push      ar4
        push      ar5
	.line	3
;----------------------------------------------------------------------
; 171 | PORT.TMR_enabled = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |171| 
        ldiu      0,r0                  ; |171| 
        sti       r0,*ar0               ; |171| 
	.line	4
;----------------------------------------------------------------------
; 172 | PORT.i--;                                                              
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |172| 
        ldiu      1,r0                  ; |172| 
        subi3     r0,*ar0,r0            ; |172| Unsigned
        sti       r0,*ar0               ; |172| 
	.line	5
;----------------------------------------------------------------------
; 173 | if (PORT.i)                                                            
;----------------------------------------------------------------------
        ldiu      @CL21,ar0             ; |173| 
        ldiu      *ar0,r0               ; |173| 
        cmpi      0,r0                  ; |173| 
        beq       L53                   ; |173| 
;*      Branch Occurs to L53            ; |173| 
	.line	7
;----------------------------------------------------------------------
; 175 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |175| 
        ldiu      1,r0                  ; |175| 
        sti       r0,*ar0               ; |175| 
	.line	8
;----------------------------------------------------------------------
; 176 | return;                                                                
;----------------------------------------------------------------------
        bu        L54                   ; |176| 
;*      Branch Occurs to L54            ; |176| 
L53:        
	.line	11
;----------------------------------------------------------------------
; 179 | PORT.i = ((PORT.RXbuf.buff[PORT.RXbuf.n-2]&0xFF)<<8) | (PORT.RXbuf.buff
;     | [PORT.RXbuf.n-1]&0xFF);                                                
;----------------------------------------------------------------------
        ldp       @CL23,DP
        ldiu      2,r3                  ; |179| 
        ldiu      1,r2                  ; |179| 
        ldiu      255,r0                ; |179| 
        ldiu      @CL23,ar5             ; |179| 
        ldiu      @CL23,ar4             ; |179| 
        ldiu      255,r1                ; |179| 
        ldp       @CL22,DP
        subi3     r3,*ar5,ir0           ; |179| 
        ldiu      @CL22,ar0             ; |179| 
        subi3     r2,*ar4,ir1           ; |179| 
        ldiu      @CL22,ar2             ; |179| 
        and3      r0,*+ar0(ir0),r0      ; |179| 
        ldp       @CL21,DP
        and3      r1,*+ar2(ir1),r1      ; |179| 
        ash       8,r0                  ; |179| 
        ldiu      @CL21,ar1             ; |179| 
        or3       r0,r1,r0              ; |179| 
        sti       r0,*ar1               ; |179| 
	.line	12
;----------------------------------------------------------------------
; 180 | PORT.i *= 4; /* n = word32, therefore n*4 bytes */                     
;----------------------------------------------------------------------
        ldiu      @CL21,ar0             ; |180| 
        ldiu      2,r0                  ; |180| 
        ash3      r0,*ar0,r0            ; |180| 
        sti       r0,*ar0               ; |180| 
	.line	13
;----------------------------------------------------------------------
; 181 | PORT.pvector = (int*) MODBUS_RX_nDATA;                                 
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |181| 
        ldp       @CL27,DP
        ldiu      @CL27,r0              ; |181| 
        sti       r0,*ar0               ; |181| 
	.line	14
;----------------------------------------------------------------------
; 182 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |182| 
        ldiu      1,r0                  ; |182| 
        sti       r0,*ar0               ; |182| 
L54:        
	.line	15
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar5
        pop       ar4
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	183,000003000h,0


	.sect	 ".text"

	.global	_MODBUS_RX_nDATA
	.sym	_MODBUS_RX_nDATA,_MODBUS_RX_nDATA,32,2,0
	.func	185
;******************************************************************************
;* FUNCTION NAME: _MODBUS_RX_nDATA                                            *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_MODBUS_RX_nDATA:
	.line	1
;----------------------------------------------------------------------
; 185 | void MODBUS_RX_nDATA(void)                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 187 | PORT.TMR_enabled = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |187| 
        ldiu      0,r0                  ; |187| 
        sti       r0,*ar0               ; |187| 
	.line	4
;----------------------------------------------------------------------
; 188 | PORT.i--;                                                              
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |188| 
        ldiu      1,r0                  ; |188| 
        subi3     r0,*ar0,r0            ; |188| Unsigned
        sti       r0,*ar0               ; |188| 
	.line	5
;----------------------------------------------------------------------
; 189 | if (PORT.i)                                                            
;----------------------------------------------------------------------
        ldiu      @CL21,ar0             ; |189| 
        ldiu      *ar0,r0               ; |189| 
        cmpi      0,r0                  ; |189| 
        beq       L58                   ; |189| 
;*      Branch Occurs to L58            ; |189| 
	.line	7
;----------------------------------------------------------------------
; 191 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |191| 
        ldiu      1,r0                  ; |191| 
        sti       r0,*ar0               ; |191| 
	.line	8
;----------------------------------------------------------------------
; 192 | return;                                                                
;----------------------------------------------------------------------
        bu        L59                   ; |192| 
;*      Branch Occurs to L59            ; |192| 
L58:        
	.line	11
;----------------------------------------------------------------------
; 195 | PORT.i = 2;                                                            
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |195| 
        ldiu      2,r0                  ; |195| 
        sti       r0,*ar0               ; |195| 
	.line	12
;----------------------------------------------------------------------
; 196 | PORT.pvector = (int*) MODBUS_RX_CRC;                                   
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |196| 
        ldp       @CL28,DP
        ldiu      @CL28,r0              ; |196| 
        sti       r0,*ar0               ; |196| 
	.line	13
;----------------------------------------------------------------------
; 197 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |197| 
        ldiu      1,r0                  ; |197| 
        sti       r0,*ar0               ; |197| 
L59:        
	.line	14
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	198,000000000h,0


	.sect	 ".text"

	.global	_MODBUS_RX_CRC
	.sym	_MODBUS_RX_CRC,_MODBUS_RX_CRC,32,2,0
	.func	200
;******************************************************************************
;* FUNCTION NAME: _MODBUS_RX_CRC                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ir0,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 9 Auto + 0 SOE = 11 words         *
;******************************************************************************
_MODBUS_RX_CRC:
	.sym	_validated,1,14,1,32
	.sym	_reply,2,14,1,32
	.sym	_c,3,14,1,32
	.sym	_address,4,14,1,32
	.sym	_numreg,5,14,1,32
	.sym	_tmp0,6,14,1,32
	.sym	_tmp1,7,14,1,32
	.sym	_table,8,20,1,32
	.sym	_baud,9,4,1,32
	.line	1
;----------------------------------------------------------------------
; 200 | void MODBUS_RX_CRC(void)                                               
; 202 | BOOL                    validated;                                     
; 203 | BOOL                    reply;                                         
; 204 | BOOL                    c;                                             
; 205 | unsigned int    address;                                               
; 206 | unsigned int    numreg;                                                
; 207 | unsigned int    tmp0;                                                  
; 208 | unsigned int    tmp1;                                                  
; 209 | int*                    table;                                         
; 210 | int                             baud;                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      9,sp
	.line	13
;----------------------------------------------------------------------
; 212 | PORT.TMR_enabled = FALSE;                                              
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |212| 
        ldiu      0,r0                  ; |212| 
        sti       r0,*ar0               ; |212| 
	.line	14
;----------------------------------------------------------------------
; 213 | PORT.i--;                                                              
;----------------------------------------------------------------------
        ldp       @CL21,DP
        ldiu      @CL21,ar0             ; |213| 
        ldiu      1,r0                  ; |213| 
        subi3     r0,*ar0,r0            ; |213| Unsigned
        sti       r0,*ar0               ; |213| 
	.line	15
;----------------------------------------------------------------------
; 214 | if (PORT.i)                                                            
;----------------------------------------------------------------------
        ldiu      @CL21,ar0             ; |214| 
        ldiu      *ar0,r0               ; |214| 
        cmpi      0,r0                  ; |214| 
        beq       L63                   ; |214| 
;*      Branch Occurs to L63            ; |214| 
	.line	17
;----------------------------------------------------------------------
; 216 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |216| 
        ldiu      1,r0                  ; |216| 
        sti       r0,*ar0               ; |216| 
	.line	18
;----------------------------------------------------------------------
; 217 | return;                                                                
;----------------------------------------------------------------------
        bu        L108                  ; |217| 
;*      Branch Occurs to L108           ; |217| 
L63:        
	.line	21
;----------------------------------------------------------------------
; 220 | validated = TRUE;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |220| 
        sti       r0,*+fp(1)            ; |220| 
	.line	23
;----------------------------------------------------------------------
; 222 | PORT.RXbuf.locked = TRUE;               /* lock the buffer */          
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar0             ; |222| 
        sti       r0,*ar0               ; |222| 
	.line	26
;----------------------------------------------------------------------
; 225 | if(((int)PORT.Slave_ID != (int)(PORT.RXbuf.buff[0] & 0xFF)) || (PORT.RX
;     | buf.CRC16 != 0))                                                       
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |225| 
        ldp       @CL22,DP
        ldiu      @CL22,ar1             ; |225| 
        ldiu      255,r0                ; |225| 
        ldiu      *ar0,r1               ; |225| 
        and3      r0,*ar1,r0            ; |225| 
        cmpi3     r0,r1                 ; |225| 
        bne       L65                   ; |225| 
;*      Branch Occurs to L65            ; |225| 
        ldp       @CL34,DP
        ldiu      @CL34,ar0             ; |225| 
        ldiu      *ar0,r0               ; |225| 
        cmpi      0,r0                  ; |225| 
        beq       L66                   ; |225| 
;*      Branch Occurs to L66            ; |225| 
L65:        
	.line	28
;----------------------------------------------------------------------
; 227 | validated = FALSE;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |227| 
        sti       r0,*+fp(1)            ; |227| 
L66:        
	.line	32
;----------------------------------------------------------------------
; 231 | if (validated)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |231| 
        cmpi      0,r0                  ; |231| 
        beq       L107                  ; |231| 
;*      Branch Occurs to L107           ; |231| 
	.line	34
;----------------------------------------------------------------------
; 233 | DISABLE_TINT0;          /* undo the 5 sec wait for exiting boot loader
;     | */                                                                     
;----------------------------------------------------------------------
	andn	0100h, IE
	.line	36
;----------------------------------------------------------------------
; 235 | address =  (unsigned int) (PORT.RXbuf.buff[2] & 0xFF);                 
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |235| 
        ldiu      255,r0                ; |235| 
        and3      r0,*ar0,r0            ; |235| 
        sti       r0,*+fp(4)            ; |235| 
	.line	37
;----------------------------------------------------------------------
; 236 | address =  address << 8;                                               
;----------------------------------------------------------------------
        ash       8,r0                  ; |236| 
        sti       r0,*+fp(4)            ; |236| 
	.line	38
;----------------------------------------------------------------------
; 237 | address |= (unsigned int) (PORT.RXbuf.buff[3] & 0xFF);                 
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |237| 
        ldiu      255,r0                ; |237| 
        and3      r0,*ar0,r0            ; |237| 
        or        *+fp(4),r0            ; |237| 
        sti       r0,*+fp(4)            ; |237| 
	.line	39
;----------------------------------------------------------------------
; 238 | address =  address << 8;                                               
;----------------------------------------------------------------------
        ash       8,r0                  ; |238| 
        sti       r0,*+fp(4)            ; |238| 
	.line	40
;----------------------------------------------------------------------
; 239 | address |= (unsigned int) (PORT.RXbuf.buff[4] & 0xFF);                 
;----------------------------------------------------------------------
        ldp       @CL37,DP
        ldiu      @CL37,ar0             ; |239| 
        ldiu      255,r0                ; |239| 
        and3      r0,*ar0,r0            ; |239| 
        or        *+fp(4),r0            ; |239| 
        sti       r0,*+fp(4)            ; |239| 
	.line	41
;----------------------------------------------------------------------
; 240 | address =  address << 8;                                               
;----------------------------------------------------------------------
        ash       8,r0                  ; |240| 
        sti       r0,*+fp(4)            ; |240| 
	.line	42
;----------------------------------------------------------------------
; 241 | address |= (unsigned int) (PORT.RXbuf.buff[5] & 0xFF);                 
;----------------------------------------------------------------------
        ldp       @CL38,DP
        ldiu      @CL38,ar0             ; |241| 
        ldiu      255,r0                ; |241| 
        and3      r0,*ar0,r0            ; |241| 
        or        *+fp(4),r0            ; |241| 
        sti       r0,*+fp(4)            ; |241| 
	.line	44
;----------------------------------------------------------------------
; 243 | numreg  =  (unsigned int) (PORT.RXbuf.buff[6] & 0xFF);                 
;----------------------------------------------------------------------
        ldp       @CL39,DP
        ldiu      @CL39,ar0             ; |243| 
        ldiu      255,r0                ; |243| 
        and3      r0,*ar0,r0            ; |243| 
        sti       r0,*+fp(5)            ; |243| 
	.line	45
;----------------------------------------------------------------------
; 244 | numreg  =  numreg << 8;                                                
;----------------------------------------------------------------------
        ash       8,r0                  ; |244| 
        sti       r0,*+fp(5)            ; |244| 
	.line	46
;----------------------------------------------------------------------
; 245 | numreg  |= (unsigned int) (PORT.RXbuf.buff[7] & 0xFF);                 
;----------------------------------------------------------------------
        ldp       @CL40,DP
        ldiu      @CL40,ar0             ; |245| 
        ldiu      255,r0                ; |245| 
        and3      r0,*ar0,r0            ; |245| 
        or        *+fp(5),r0            ; |245| 
        sti       r0,*+fp(5)            ; |245| 
	.line	48
;----------------------------------------------------------------------
; 247 | Clear(&PORT.TXbuf);                                                    
;----------------------------------------------------------------------
        ldp       @CL41,DP
        ldiu      @CL41,r0              ; |247| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |247| 
        callu     r0                    ; far call to _Clear	; |247| 
                                        ; |247| Far Call Occurs
	.line	50
;----------------------------------------------------------------------
; 249 | c = TRUE;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |249| 
        sti       r0,*+fp(3)            ; |249| 
	.line	52
;----------------------------------------------------------------------
; 251 | DISABLE_WDOG;                                                          
; 253 | switch(PORT.func)                                                      
; 255 |         case mb_cmd_pdi_RESET:                                         
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |251| 
        ldiu      247,r0                ; |251| 
        and3      r0,*ar0,r0            ; |251| 
        sti       r0,*ar0               ; |251| 
	pop		ST			
        bu        L96                   ; |199| 
;*      Branch Occurs to L96            ; |199| 
	.line	58
;----------------------------------------------------------------------
; 257 | if (!PROGRAM_MODE)                                                     
;----------------------------------------------------------------------
	.line	60
;----------------------------------------------------------------------
; 259 | Setup_UART(9600);                                                      
;----------------------------------------------------------------------
	.line	61
;----------------------------------------------------------------------
; 260 | c = FALSE;                                                             
;----------------------------------------------------------------------
	.line	62
;----------------------------------------------------------------------
; 261 | break;                                                                 
; 263 | else                                                                   
;----------------------------------------------------------------------
L69:        
	.line	66
;----------------------------------------------------------------------
; 265 | MASTER_RESET;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |265| 
        ldiu      64,r0                 ; |265| 
        or3       r0,*ar0,r0            ; |265| 
        sti       r0,*ar0               ; |265| 
	pop		ST			
L70:        
	.line	67
;----------------------------------------------------------------------
; 266 | while(TRUE){}                                                          
; 270 | case mb_cmd_pdi_EXIT:                                                  
;----------------------------------------------------------------------
        bu        L70                   ; |266| 
;*      Branch Occurs to L70            ; |266| 
	.line	73
;----------------------------------------------------------------------
; 272 | if (!PROGRAM_MODE)                                                     
;----------------------------------------------------------------------
	.line	75
;----------------------------------------------------------------------
; 274 | Setup_UART(9600);                                                      
;----------------------------------------------------------------------
	.line	76
;----------------------------------------------------------------------
; 275 | c = FALSE;                                                             
;----------------------------------------------------------------------
	.line	77
;----------------------------------------------------------------------
; 276 | break;                                                                 
; 278 | else                                                                   
;----------------------------------------------------------------------
L72:        
	.line	81
;----------------------------------------------------------------------
; 280 | Exit_to_App();                                                         
;----------------------------------------------------------------------
        ldp       @CL43,DP
        ldiu      @CL43,r0              ; |280| 
        callu     r0                    ; far call to _Exit_to_App	; |280| 
                                        ; |280| Far Call Occurs
	.line	82
;----------------------------------------------------------------------
; 281 | MASTER_RESET;                                                          
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |281| 
        ldiu      64,r0                 ; |281| 
        or3       r0,*ar0,r0            ; |281| 
        sti       r0,*ar0               ; |281| 
	pop		ST			
L73:        
	.line	83
;----------------------------------------------------------------------
; 282 | while(TRUE){}                                                          
; 286 | case mb_cmd_pdi_MAX_BAUD:                                              
;----------------------------------------------------------------------
        bu        L73                   ; |282| 
;*      Branch Occurs to L73            ; |282| 
L74:        
	.line	89
;----------------------------------------------------------------------
; 288 | Setup_UART(MAXBAUD);                                                   
;----------------------------------------------------------------------
        ldp       @CL44,DP
        ldiu      @CL44,ar2             ; |288| 
        ldp       @CL1,DP
        ldiu      @CL1,r0               ; |288| 
        callu     r0                    ; far call to _Setup_UART	; |288| 
                                        ; |288| Far Call Occurs
	.line	90
;----------------------------------------------------------------------
; 289 | c = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |289| 
        sti       r0,*+fp(3)            ; |289| 
	.line	91
;----------------------------------------------------------------------
; 290 | break;                                                                 
; 293 | case mb_cmd_pdi_BAUD:                                                  
;----------------------------------------------------------------------
        bu        L105                  ; |290| 
;*      Branch Occurs to L105           ; |290| 
L75:        
	.line	96
;----------------------------------------------------------------------
; 295 | baud =  (unsigned int) (PORT.RXbuf.buff[2] & 0xFF);                    
;----------------------------------------------------------------------
        ldp       @CL35,DP
        ldiu      @CL35,ar0             ; |295| 
        ldiu      255,r0                ; |295| 
        and3      r0,*ar0,r0            ; |295| 
        sti       r0,*+fp(9)            ; |295| 
	.line	97
;----------------------------------------------------------------------
; 296 | baud =  baud << 8;                                                     
;----------------------------------------------------------------------
        ash       8,r0                  ; |296| 
        sti       r0,*+fp(9)            ; |296| 
	.line	98
;----------------------------------------------------------------------
; 297 | baud |= (unsigned int) (PORT.RXbuf.buff[3] & 0xFF);                    
;----------------------------------------------------------------------
        ldp       @CL36,DP
        ldiu      @CL36,ar0             ; |297| 
        ldiu      255,r0                ; |297| 
        and3      r0,*ar0,r0            ; |297| 
        or        *+fp(9),r0            ; |297| 
        sti       r0,*+fp(9)            ; |297| 
	.line	99
;----------------------------------------------------------------------
; 298 | baud *= 100;                                                           
; 300 | switch(baud)                                                           
; 302 |         case 9600:                                                     
; 303 |         case 19200:                                                    
; 304 |         case 38400:                                                    
; 305 |         case 57600:                                                    
; 306 |         case MAXBAUD:                                                  
;----------------------------------------------------------------------
        ldiu      100,r1                ; |298| 
        call      MPY_K30               ; |298| 
                                        ; |298| Call Occurs
        sti       r0,*+fp(9)            ; |298| 
        bu        L78                   ; |199| 
;*      Branch Occurs to L78            ; |199| 
L76:        
	.line	109
;----------------------------------------------------------------------
; 308 | Setup_UART(baud);                                                      
;----------------------------------------------------------------------
        ldp       @CL1,DP
        ldiu      *+fp(9),ar2           ; |308| 
        ldiu      @CL1,r0               ; |308| 
        callu     r0                    ; far call to _Setup_UART	; |308| 
                                        ; |308| Far Call Occurs
	.line	110
;----------------------------------------------------------------------
; 309 | break;                                                                 
;----------------------------------------------------------------------
        bu        L83                   ; |309| 
;*      Branch Occurs to L83            ; |309| 
L78:        
	.line	101
        ldiu      *+fp(9),r0            ; |300| 
        cmpi      9600,r0               ; |300| 
        beq       L76                   ; |300| 
;*      Branch Occurs to L76            ; |300| 
        cmpi      19200,r0              ; |300| 
        beq       L76                   ; |300| 
;*      Branch Occurs to L76            ; |300| 
        ldp       @CL45,DP
        cmpi      @CL45,r0              ; |300| 
        beq       L76                   ; |300| 
;*      Branch Occurs to L76            ; |300| 
        ldp       @CL46,DP
        cmpi      @CL46,r0              ; |300| 
        beq       L76                   ; |300| 
;*      Branch Occurs to L76            ; |300| 
        ldp       @CL44,DP
        cmpi      @CL44,r0              ; |300| 
        beq       L76                   ; |300| 
;*      Branch Occurs to L76            ; |300| 
L83:        
	.line	114
;----------------------------------------------------------------------
; 313 | c = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |313| 
        sti       r0,*+fp(3)            ; |313| 
	.line	115
;----------------------------------------------------------------------
; 314 | break;                                                                 
; 317 | case mb_cmd_pdi_RESTORE_FACTORY_DEFAULTS:                              
;----------------------------------------------------------------------
        bu        L105                  ; |314| 
;*      Branch Occurs to L105           ; |314| 
L84:        
	.line	120
;----------------------------------------------------------------------
; 319 | Process_Restore_Factory_Defaults();                                    
;----------------------------------------------------------------------
        ldp       @CL47,DP
        ldiu      @CL47,r0              ; |319| 
        callu     r0                    ; far call to _Process_Restore_Factory_Defaults	; |319| 
                                        ; |319| Far Call Occurs
	.line	121
;----------------------------------------------------------------------
; 320 | break;                                                                 
; 323 | case mb_cmd_pdi_store_scratchpad:                                      
;----------------------------------------------------------------------
        bu        L105                  ; |320| 
;*      Branch Occurs to L105           ; |320| 
L85:        
	.line	126
;----------------------------------------------------------------------
; 325 | Process_Store_Scratchpad(address);                                     
;----------------------------------------------------------------------
        ldp       @CL48,DP
        ldiu      *+fp(4),ar2           ; |325| 
        ldiu      @CL48,r0              ; |325| 
        callu     r0                    ; far call to _Process_Store_Scratchpad	; |325| 
                                        ; |325| Far Call Occurs
	.line	127
;----------------------------------------------------------------------
; 326 | break;                                                                 
; 329 | case mb_cmd_pdi_clear_scratchpad:                                      
;----------------------------------------------------------------------
        bu        L105                  ; |326| 
;*      Branch Occurs to L105           ; |326| 
L86:        
	.line	132
;----------------------------------------------------------------------
; 331 | Process_Erase_Scratchpad();                                            
;----------------------------------------------------------------------
        ldp       @CL49,DP
        ldiu      @CL49,r0              ; |331| 
        callu     r0                    ; far call to _Process_Erase_Scratchpad	; |331| 
                                        ; |331| Far Call Occurs
	.line	133
;----------------------------------------------------------------------
; 332 | break;                                                                 
; 335 | case mb_cmd_pdi_ERASE_CFG:                                             
;----------------------------------------------------------------------
        bu        L105                  ; |332| 
;*      Branch Occurs to L105           ; |332| 
L87:        
	.line	138
;----------------------------------------------------------------------
; 337 | Process_Erase_Cfg();                                                   
;----------------------------------------------------------------------
        ldp       @CL50,DP
        ldiu      @CL50,r0              ; |337| 
        callu     r0                    ; far call to _Process_Erase_Cfg	; |337| 
                                        ; |337| Far Call Occurs
	.line	139
;----------------------------------------------------------------------
; 338 | break;                                                                 
; 341 | case mb_cmd_pdi_read_ESN:                                              
;----------------------------------------------------------------------
        bu        L105                  ; |338| 
;*      Branch Occurs to L105           ; |338| 
L88:        
	.line	144
;----------------------------------------------------------------------
; 343 | Process_Read_ESN();                                                    
;----------------------------------------------------------------------
        ldp       @CL51,DP
        ldiu      @CL51,r0              ; |343| 
        callu     r0                    ; far call to _Process_Read_ESN	; |343| 
                                        ; |343| Far Call Occurs
	.line	145
;----------------------------------------------------------------------
; 344 | break;                                                                 
; 347 | case mb_cmd_pdi_write_ESN:                                             
;----------------------------------------------------------------------
        bu        L105                  ; |344| 
;*      Branch Occurs to L105           ; |344| 
L89:        
	.line	150
;----------------------------------------------------------------------
; 349 | Process_Write_ESN(&PORT.RXbuf.buff[2]);                                
;----------------------------------------------------------------------
        ldp       @CL52,DP
        ldiu      @CL52,r0              ; |349| 
        ldp       @CL35,DP
        ldiu      @CL35,ar2             ; |349| 
        callu     r0                    ; far call to _Process_Write_ESN	; |349| 
                                        ; |349| Far Call Occurs
	.line	151
;----------------------------------------------------------------------
; 350 | break;                                                                 
; 353 | case mb_cmd_pdi_read:                                                  
;----------------------------------------------------------------------
        bu        L105                  ; |350| 
;*      Branch Occurs to L105           ; |350| 
L90:        
	.line	156
;----------------------------------------------------------------------
; 355 | Process_Read(address, numreg);                                         
;----------------------------------------------------------------------
        ldp       @CL53,DP
        ldiu      *+fp(4),ar2           ; |355| 
        ldiu      *+fp(5),r2            ; |355| 
        ldiu      @CL53,r0              ; |355| 
        callu     r0                    ; far call to _Process_Read	; |355| 
                                        ; |355| Far Call Occurs
	.line	157
;----------------------------------------------------------------------
; 356 | break;                                                                 
; 359 | case mb_cmd_pdi_write_scratchpad:                                      
;----------------------------------------------------------------------
        bu        L105                  ; |356| 
;*      Branch Occurs to L105           ; |356| 
L91:        
	.line	162
;----------------------------------------------------------------------
; 361 | Process_Write_Scratchpad(address, numreg, &PORT.RXbuf.buff[8]);        
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldiu      @CL54,r3              ; |361| 
        ldiu      *+fp(5),r2            ; |361| 
        ldp       @CL55,DP
        ldiu      *+fp(4),ar2           ; |361| 
        ldiu      @CL55,r0              ; |361| 
        callu     r0                    ; far call to _Process_Write_Scratchpad	; |361| 
                                        ; |361| Far Call Occurs
	.line	163
;----------------------------------------------------------------------
; 362 | break;                                                                 
; 365 | case mb_cmd_pdi_write:                                                 
;----------------------------------------------------------------------
        bu        L105                  ; |362| 
;*      Branch Occurs to L105           ; |362| 
L92:        
	.line	168
;----------------------------------------------------------------------
; 367 | Process_Write(address, numreg, &PORT.RXbuf.buff[8]);                   
;----------------------------------------------------------------------
        ldp       @CL54,DP
        ldiu      @CL54,r3              ; |367| 
        ldiu      *+fp(5),r2            ; |367| 
        ldp       @CL56,DP
        ldiu      *+fp(4),ar2           ; |367| 
        ldiu      @CL56,r0              ; |367| 
        callu     r0                    ; far call to _Process_Write	; |367| 
                                        ; |367| Far Call Occurs
	.line	169
;----------------------------------------------------------------------
; 368 | break;                                                                 
; 371 | case mb_cmd_pdi_set_entry_point:                                       
;----------------------------------------------------------------------
        bu        L105                  ; |368| 
;*      Branch Occurs to L105           ; |368| 
L93:        
	.line	174
;----------------------------------------------------------------------
; 373 | Process_Set_Entry_Point(address);                                      
;----------------------------------------------------------------------
        ldp       @CL57,DP
        ldiu      *+fp(4),ar2           ; |373| 
        ldiu      @CL57,r0              ; |373| 
        callu     r0                    ; far call to _Process_Set_Entry_Point	; |373| 
                                        ; |373| Far Call Occurs
	.line	175
;----------------------------------------------------------------------
; 374 | break;                                                                 
; 377 | default:                                                               
;----------------------------------------------------------------------
        bu        L105                  ; |374| 
;*      Branch Occurs to L105           ; |374| 
L94:        
	.line	180
;----------------------------------------------------------------------
; 379 | c = FALSE;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |379| 
        sti       r0,*+fp(3)            ; |379| 
	.line	181
;----------------------------------------------------------------------
; 380 | break;                                                                 
;----------------------------------------------------------------------
        bu        L105                  ; |380| 
;*      Branch Occurs to L105           ; |380| 
L96:        
	.line	54
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |253| 
        ldiu      65,r0                 ; |253| 
        ldiu      *ar0,ir0              ; |253| 
        subri     ir0,r0                ; |253| 
        cmpi      7,r0                  ; |253| 
        bls       L104                  ; |253| 
;*      Branch Occurs to L104           ; |253| 
        cmpi      100,ir0               ; |253| 
        beq       L74                   ; |253| 
;*      Branch Occurs to L74            ; |253| 
        cmpi      101,ir0               ; |253| 
        beq       L91                   ; |253| 
;*      Branch Occurs to L91            ; |253| 
        cmpi      102,ir0               ; |253| 
        beq       L86                   ; |253| 
;*      Branch Occurs to L86            ; |253| 
        cmpi      103,ir0               ; |253| 
        beq       L85                   ; |253| 
;*      Branch Occurs to L85            ; |253| 
        cmpi      104,ir0               ; |253| 
        beq       L72                   ; |253| 
;*      Branch Occurs to L72            ; |253| 
        cmpi      105,ir0               ; |253| 
        beq       L75                   ; |253| 
;*      Branch Occurs to L75            ; |253| 
        bu        L94                   ; |253| 
;*      Branch Occurs to L94            ; |253| 
L104:        
        ldp       @CL58,DP
        subi      65,ir0                ; |253| Unsigned
        ldiu      @CL58,ar0             ; |253| 
        ldiu      *+ar0(ir0),r0         ; |253| 
        bu        r0                    ; |253| 

	.sect	".text"
SW1:	.word	L93	; 65
	.word	L90	; 66
	.word	L92	; 67
	.word	L88	; 68
	.word	L89	; 69
	.word	L84	; 70
	.word	L87	; 71
	.word	L69	; 72
	.sect	".text"
;*      Branch Occurs to r0             ; |253| 
L105:        
	.line	185
;----------------------------------------------------------------------
; 384 | ENABLE_WDOG;                                                           
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL42,DP
        ldiu      @CL42,ar0             ; |384| 
        ldiu      8,r0                  ; |384| 
        or3       r0,*ar0,r0            ; |384| 
        sti       r0,*ar0               ; |384| 
        ldiu      128,r0                ; |384| 
        or3       r0,*ar0,r0            ; |384| 
        sti       r0,*ar0               ; |384| 
	pop		ST			
	.line	187
;----------------------------------------------------------------------
; 386 | if (c)                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |386| 
        cmpi      0,r0                  ; |386| 
        beq       L107                  ; |386| 
;*      Branch Occurs to L107           ; |386| 
	.line	189
;----------------------------------------------------------------------
; 388 | tmp0 = PORT.TXbuf.CRC16;                                               
;----------------------------------------------------------------------
        ldp       @CL59,DP
        ldiu      @CL59,ar0             ; |388| 
        ldiu      *ar0,r0               ; |388| 
        sti       r0,*+fp(6)            ; |388| 
	.line	190
;----------------------------------------------------------------------
; 389 | tmp1 = tmp0 >> 8;                                                      
;----------------------------------------------------------------------
        lsh       -8,r0                 ; |389| 
        sti       r0,*+fp(7)            ; |389| 
	.line	192
;----------------------------------------------------------------------
; 391 | Put(&PORT.TXbuf, tmp0);         /* CRCH */                             
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(6),r2            ; |391| 
        ldiu      @CL60,r0              ; |391| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |391| 
        callu     r0                    ; far call to _Put	; |391| 
                                        ; |391| Far Call Occurs
	.line	193
;----------------------------------------------------------------------
; 392 | Put(&PORT.TXbuf, tmp1);         /* CRCL */                             
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |392| 
        ldp       @CL19,DP
        ldiu      *+fp(7),r2            ; |392| 
        ldiu      @CL19,ar2             ; |392| 
        callu     r0                    ; far call to _Put	; |392| 
                                        ; |392| Far Call Occurs
	.line	194
;----------------------------------------------------------------------
; 393 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	195
;----------------------------------------------------------------------
; 394 | UART[BOOTPORT][IER] = 0x00;     /* disable THR, disable RHR interrupts
;     | */                                                                     
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      4,r0                  ; |394| 
        ldiu      @CL14,ar0             ; |394| 
        ldp       @CL18,DP
        ash3      r0,*ar0,ir0           ; |394| 
        ldiu      @CL18,ar1             ; |394| 
        ldiu      0,r0                  ; |394| 
        sti       r0,*+ar1(ir0)         ; |394| 
	.line	196
;----------------------------------------------------------------------
; 395 | NOPS;                                                                  
;----------------------------------------------------------------------
	NOP			
	NOP			
	NOP			
	.line	197
;----------------------------------------------------------------------
; 396 | UART[BOOTPORT][FCR] = 0x07;     /* clear FIFOS */                      
;----------------------------------------------------------------------
        ldp       @CL14,DP
        ldiu      @CL14,ar0             ; |396| 
        ldiu      4,r0                  ; |396| 
        ldp       @CL61,DP
        ash3      r0,*ar0,ir0           ; |396| 
        ldiu      @CL61,ar1             ; |396| 
        ldiu      7,r0                  ; |396| 
        sti       r0,*+ar1(ir0)         ; |396| 
	.line	198
;----------------------------------------------------------------------
; 397 | PORT.tvector = (int*)TX_P;                                             
;----------------------------------------------------------------------
        ldp       @CL2,DP
        ldiu      @CL2,ar0              ; |397| 
        ldp       @CL62,DP
        ldiu      @CL62,r0              ; |397| 
        sti       r0,*ar0               ; |397| 
	.line	199
;----------------------------------------------------------------------
; 398 | TIMER1_COUNTER = PORT.TMR_EOT_Delay;                                   
;----------------------------------------------------------------------
        ldp       @CL63,DP
        ldiu      @CL63,ar0             ; |398| 
        ldp       @CL6,DP
        ldiu      @CL6,ar1              ; |398| 
        ldiu      *ar0,r0               ; |398| 
        sti       r0,*ar1               ; |398| 
L107:        
	.line	203
;----------------------------------------------------------------------
; 402 | PORT.RXbuf.locked = FALSE;              /* unlock the buffer */        
;----------------------------------------------------------------------
        ldp       @CL32,DP
        ldiu      @CL32,ar0             ; |402| 
        ldiu      0,r0                  ; |402| 
        sti       r0,*ar0               ; |402| 
	.line	204
;----------------------------------------------------------------------
; 403 | Clear_RX();                                                            
;----------------------------------------------------------------------
        ldp       @CL10,DP
        ldiu      @CL10,r0              ; |403| 
        callu     r0                    ; far call to _Clear_RX	; |403| 
                                        ; |403| Far Call Occurs
	.line	205
;----------------------------------------------------------------------
; 404 | PORT.pvector = (int*)MODBUS_RX_ID;                                     
;----------------------------------------------------------------------
        ldp       @CL4,DP
        ldiu      @CL4,ar0              ; |404| 
        ldp       @CL5,DP
        ldiu      @CL5,r0               ; |404| 
        sti       r0,*ar0               ; |404| 
	.line	206
;----------------------------------------------------------------------
; 405 | PORT.TMR_enabled = TRUE;                                               
;----------------------------------------------------------------------
        ldp       @CL8,DP
        ldiu      @CL8,ar0              ; |405| 
        ldiu      1,r0                  ; |405| 
        sti       r0,*ar0               ; |405| 
L108:        
	.line	207
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      11,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	406,000000000h,9


	.sect	 ".text"

	.global	_MB_exception
	.sym	_MB_exception,_MB_exception,32,2,0
	.func	408
;******************************************************************************
;* FUNCTION NAME: _MB_exception                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_MB_exception:
;* ar2   assigned to _ex
	.sym	_ex,10,4,17,32
	.sym	_ex,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 408 | void MB_exception(int ex)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
        sti       ar2,*+fp(1)           ; |409| 
	.line	3
;----------------------------------------------------------------------
; 410 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |410| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |410| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |410| 
        ldiu      @CL19,ar2             ; |410| 
        callu     r0                    ; far call to _Put	; |410| 
                                        ; |410| Far Call Occurs
	.line	4
;----------------------------------------------------------------------
; 411 | Put(&PORT.TXbuf, PORT.func|0x80);
;     |  /* function w/ exception */                                           
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |411| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |411| 
        ldp       @CL19,DP
        ldiu      128,r1                ; |411| 
        ldiu      @CL19,ar2             ; |411| 
        or3       r1,*ar0,r2            ; |411| 
        callu     r0                    ; far call to _Put	; |411| 
                                        ; |411| Far Call Occurs
	.line	5
;----------------------------------------------------------------------
; 412 | Put(&PORT.TXbuf, ex);
;     |          /* exception code */                                          
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |412| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |412| 
        ldiu      *+fp(1),r2            ; |412| 
        callu     r0                    ; far call to _Put	; |412| 
                                        ; |412| Far Call Occurs
	.line	6
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	413,000000000h,1


	.sect	 ".text"

	.global	_Process_Read
	.sym	_Process_Read,_Process_Read,32,2,0
	.func	415
;******************************************************************************
;* FUNCTION NAME: _Process_Read                                               *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r4,r5,ar0,ar2,ar4,st                       *
;*   Regs Saved         : r4,r5,ar4                                           *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 3 SOE = 11 words         *
;******************************************************************************
_Process_Read:
;* ar2   assigned to _addr
	.sym	_addr,10,14,17,32
;* r2    assigned to _n
	.sym	_n,2,14,17,32
	.sym	_addr,1,14,1,32
	.sym	_n,2,14,1,32
	.sym	_i,3,14,1,32
	.sym	_f,4,14,1,32
	.sym	_c,5,30,1,32
	.sym	_j,6,14,1,32
	.line	1
;----------------------------------------------------------------------
; 415 | void Process_Read(unsigned int addr, unsigned int n)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
        push      r4
        push      r5
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 417 | unsigned int i;                                                        
; 418 | unsigned int f;                                                        
; 419 | unsigned int* c;                                                       
; 420 | unsigned int j;                                                        
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |416| 
        sti       ar2,*+fp(1)           ; |416| 
	.line	8
;----------------------------------------------------------------------
; 422 | f = FLASH_SIZE();                                                      
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,r0              ; |422| 
        callu     r0                    ; far call to _FLASH_SIZE	; |422| 
                                        ; |422| Far Call Occurs
        sti       r0,*+fp(4)            ; |422| 
	.line	9
;----------------------------------------------------------------------
; 423 | if ((   (addr < (unsigned int)FLASH_LOC) || ((addr+n)>=(f+(unsigned int
;     | )FLASH_LOC))                     &&                                    
; 424 |                 (addr < (unsigned int)0x800000)  || ((addr+n)>=((unsign
;     | ed int)0x808000))                        &&                            
; 425 |                 (addr < (unsigned int)0x809800)  || ((addr+n)>=((unsign
;     | ed int)0x80A000))                                                      
; 426 |         ) || (n==0) )                                                  
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      *+fp(1),r0            ; |423| 
        cmpi      @CL65,r0              ; |423| 
        blo       L120                  ; |423| 
;*      Branch Occurs to L120           ; |423| 
        ldp       @CL65,DP
        ldiu      *+fp(2),r1            ; |423| 
        ldiu      @CL65,r0              ; |423| 
        addi      *+fp(1),r1            ; |423| Unsigned
        addi      *+fp(4),r0            ; |423| Unsigned
        cmpi3     r0,r1                 ; |423| 
        blo       L116                  ; |423| 
;*      Branch Occurs to L116           ; |423| 
        ldp       @CL66,DP
        ldiu      *+fp(1),r0            ; |423| 
        cmpi      @CL66,r0              ; |423| 
        blo       L120                  ; |423| 
;*      Branch Occurs to L120           ; |423| 
L116:        
        ldiu      *+fp(2),r0            ; |423| 
        ldp       @CL67,DP
        addi      *+fp(1),r0            ; |423| Unsigned
        cmpi      @CL67,r0              ; |423| 
        blo       L118                  ; |423| 
;*      Branch Occurs to L118           ; |423| 
        ldp       @CL68,DP
        ldiu      *+fp(1),r0            ; |423| 
        cmpi      @CL68,r0              ; |423| 
        blo       L120                  ; |423| 
;*      Branch Occurs to L120           ; |423| 
L118:        
        ldiu      *+fp(2),r0            ; |423| 
        ldp       @CL69,DP
        addi      *+fp(1),r0            ; |423| Unsigned
        cmpi      @CL69,r0              ; |423| 
        bhs       L120                  ; |423| 
;*      Branch Occurs to L120           ; |423| 
        ldiu      *+fp(2),r0            ; |423| 
        cmpi      0,r0                  ; |423| 
        bne       L121                  ; |423| 
;*      Branch Occurs to L121           ; |423| 
L120:        
	.line	14
;----------------------------------------------------------------------
; 428 | MB_exception(mb_excp_illegal_addr);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      2,ar2                 ; |428| 
        ldiu      @CL70,r0              ; |428| 
        callu     r0                    ; far call to _MB_exception	; |428| 
                                        ; |428| Far Call Occurs
	.line	15
;----------------------------------------------------------------------
; 429 | return;                                                                
;----------------------------------------------------------------------
        bu        L123                  ; |429| 
;*      Branch Occurs to L123           ; |429| 
L121:        
	.line	18
;----------------------------------------------------------------------
; 432 | c = (unsigned int*) addr;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |432| 
        sti       r0,*+fp(5)            ; |432| 
	.line	20
;----------------------------------------------------------------------
; 434 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |434| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |434| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |434| 
        ldiu      @CL19,ar2             ; |434| 
        callu     r0                    ; far call to _Put	; |434| 
                                        ; |434| Far Call Occurs
	.line	21
;----------------------------------------------------------------------
; 435 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |435| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |435| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |435| 
        ldiu      @CL19,ar2             ; |435| 
        callu     r0                    ; far call to _Put	; |435| 
                                        ; |435| Far Call Occurs
	.line	22
;----------------------------------------------------------------------
; 436 | Put(&PORT.TXbuf, (n>>8));
;     |          /* n word32 */                                                
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |436| 
        ldiu      *+fp(2),r2            ; |436| 
        lsh       -8,r2                 ; |436| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |436| 
        callu     r0                    ; far call to _Put	; |436| 
                                        ; |436| Far Call Occurs
	.line	23
;----------------------------------------------------------------------
; 437 | Put(&PORT.TXbuf, n);                                                   
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |437| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |437| 
        ldiu      *+fp(2),r2            ; |437| 
        callu     r0                    ; far call to _Put	; |437| 
                                        ; |437| Far Call Occurs
	.line	25
;----------------------------------------------------------------------
; 439 | for (i=0;i<n;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |439| 
        sti       r0,*+fp(3)            ; |439| 
        ldiu      -8,ar4                ; |443| 
        ldiu      -16,r5                ; |442| 
        ldiu      -24,r4                ; |441| 
        cmpi      *+fp(2),r0            ; |439| 
        bhs       L123                  ; |439| 
;*      Branch Occurs to L123           ; |439| 
L122:        
	.line	27
;----------------------------------------------------------------------
; 441 | Put(&PORT.TXbuf, c[0]>>24);                                            
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(5),ar0           ; |441| 
        ldiu      @CL60,r0              ; |441| 
        ldp       @CL19,DP
        lsh3      r4,*ar0,r2            ; |441| 
        ldiu      @CL19,ar2             ; |441| 
        callu     r0                    ; far call to _Put	; |441| 
                                        ; |441| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 442 | Put(&PORT.TXbuf, c[0]>>16);                                            
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |442| 
        ldp       @CL19,DP
        ldiu      *+fp(5),ar0           ; |442| 
        ldiu      @CL19,ar2             ; |442| 
        lsh3      r5,*ar0,r2            ; |442| 
        callu     r0                    ; far call to _Put	; |442| 
                                        ; |442| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 443 | Put(&PORT.TXbuf, c[0]>>8);                                             
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |443| 
        ldiu      *+fp(5),ar0           ; |443| 
        ldp       @CL19,DP
        lsh3      ar4,*ar0,r2           ; |443| 
        ldiu      @CL19,ar2             ; |443| 
        callu     r0                    ; far call to _Put	; |443| 
                                        ; |443| Far Call Occurs
	.line	30
;----------------------------------------------------------------------
; 444 | Put(&PORT.TXbuf, c[0]);                                                
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |444| 
        ldp       @CL19,DP
        ldiu      *+fp(5),ar0           ; |444| 
        ldiu      @CL19,ar2             ; |444| 
        ldiu      *ar0,r2               ; |444| 
        callu     r0                    ; far call to _Put	; |444| 
                                        ; |444| Far Call Occurs
	.line	31
;----------------------------------------------------------------------
; 445 | c++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |445| 
        addi      *+fp(5),r0            ; |445| Unsigned
        sti       r0,*+fp(5)            ; |445| 
	.line	25
        ldiu      1,r0                  ; |439| 
        addi      *+fp(3),r0            ; |439| Unsigned
        sti       r0,*+fp(3)            ; |439| 
        cmpi      *+fp(2),r0            ; |439| 
        blo       L122                  ; |439| 
;*      Branch Occurs to L122           ; |439| 
L123:        
	.line	33
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
        pop       r5
        pop       r4
                                        ; Unallocate the Frame
        subi      8,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	447,000001030h,6


	.sect	 ".text"

	.global	_Process_Write_Scratchpad
	.sym	_Process_Write_Scratchpad,_Process_Write_Scratchpad,32,2,0
	.func	449
;******************************************************************************
;* FUNCTION NAME: _Process_Write_Scratchpad                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,ir0,st,rs               *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 1 SOE = 10 words         *
;******************************************************************************
_Process_Write_Scratchpad:
;* ar2   assigned to _destination
	.sym	_destination,10,14,17,32
;* r2    assigned to _n
	.sym	_n,2,14,17,32
;* r3    assigned to _source
	.sym	_source,3,30,17,32
	.sym	_destination,1,14,1,32
	.sym	_n,2,14,1,32
	.sym	_source,3,30,1,32
	.sym	_i,4,14,1,32
	.sym	_z,5,14,1,32
	.sym	_a,6,30,1,32
	.sym	_s,7,30,1,32
	.line	1
;----------------------------------------------------------------------
; 449 | void Process_Write_Scratchpad(unsigned int destination, unsigned int n,
;     |  unsigned int* source)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 451 | unsigned int i;                                                        
; 452 | unsigned int z;                                                        
; 453 | unsigned int* a;                                                       
; 454 | unsigned int* s;                                                       
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |450| 
        sti       r2,*+fp(2)            ; |450| 
        sti       ar2,*+fp(1)           ; |450| 
	.line	8
;----------------------------------------------------------------------
; 456 | a = (unsigned int*) MEM_LOC;                                           
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,r0              ; |456| 
        sti       r0,*+fp(6)            ; |456| 
	.line	10
;----------------------------------------------------------------------
; 458 | if ((destination+n)>(FLASH_SECTOR_SIZE))                               
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      r2,r0
        addi      *+fp(1),r0            ; |458| Unsigned
        cmpi      @CL72,r0              ; |458| 
        bls       L127                  ; |458| 
;*      Branch Occurs to L127           ; |458| 
	.line	12
;----------------------------------------------------------------------
; 460 | MB_exception(mb_excp_illegal_addr);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      2,ar2                 ; |460| 
        ldiu      @CL70,r0              ; |460| 
        callu     r0                    ; far call to _MB_exception	; |460| 
                                        ; |460| Far Call Occurs
	.line	13
;----------------------------------------------------------------------
; 461 | return;                                                                
;----------------------------------------------------------------------
        bu        L136                  ; |461| 
;*      Branch Occurs to L136           ; |461| 
L127:        
	.line	16
;----------------------------------------------------------------------
; 464 | if (n>0x8000)                                                          
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      *+fp(2),r0            ; |464| 
        cmpi      @CL72,r0              ; |464| 
        bls       L129                  ; |464| 
;*      Branch Occurs to L129           ; |464| 
	.line	18
;----------------------------------------------------------------------
; 466 | MB_exception(mb_excp_illegal_data);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      3,ar2                 ; |466| 
        ldiu      @CL70,r0              ; |466| 
        callu     r0                    ; far call to _MB_exception	; |466| 
                                        ; |466| Far Call Occurs
	.line	19
;----------------------------------------------------------------------
; 467 | return;                                                                
;----------------------------------------------------------------------
        bu        L136                  ; |467| 
;*      Branch Occurs to L136           ; |467| 
L129:        
	.line	22
;----------------------------------------------------------------------
; 470 | s = source;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |470| 
        sti       r0,*+fp(7)            ; |470| 
	.line	23
;----------------------------------------------------------------------
; 471 | for (i=destination;i<(destination+n);i++)                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |471| 
        sti       r0,*+fp(4)            ; |471| 
        ldiu      *+fp(2),r0            ; |471| 
        ldiu      *+fp(4),r1            ; |471| 
        addi      *+fp(1),r0            ; |471| Unsigned
        cmpi3     r0,r1                 ; |471| 
        ldiu      255,r3                ; |473| 
        bhs       L131                  ; |471| 
;*      Branch Occurs to L131           ; |471| 
L130:        
	.line	25
;----------------------------------------------------------------------
; 473 | z = ((source[0]&0xFF)<<24) | ((source[1]&0xFF)<<16) | ((source[2]&0xFF)
;     | <<8) | (source[3]&0xFF);                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |473| 
        ldiu      255,r1                ; |473| 
        ldiu      255,r0                ; |473| 
        ldiu      255,r2                ; |473| 
        ldiu      ar0,ar1               ; |473| 
        and3      r3,*ar0,rs            ; |473| 
        ldiu      ar0,ar2               ; |473| 
        ldiu      ar0,ar4               ; |473| 
        and       *+ar1(1),r1           ; |473| 
        ash       24,rs                 ; |473| 
        and       *+ar2(2),r0           ; |473| 
        and       *+ar4(3),r2           ; |473| 
        ash       16,r1                 ; |473| 
        ash       8,r0                  ; |473| 
        or3       rs,r1,r1              ; |473| 
        or3       r1,r0,r0              ; |473| 
        or3       r0,r2,r0              ; |473| 
        sti       r0,*+fp(5)            ; |473| 
	.line	26
;----------------------------------------------------------------------
; 474 | a[i] = z;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(6),ir0           ; |474| 
        ldiu      *+fp(4),ar0           ; |474| 
        sti       r0,*+ar0(ir0)         ; |474| 
	.line	27
;----------------------------------------------------------------------
; 475 | source += 4;                                                           
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |475| 
        addi      *+fp(3),r0            ; |475| Unsigned
        sti       r0,*+fp(3)            ; |475| 
	.line	23
        ldiu      1,r0                  ; |471| 
        addi      *+fp(4),r0            ; |471| Unsigned
        sti       r0,*+fp(4)            ; |471| 
        ldiu      *+fp(2),r0            ; |471| 
        addi      *+fp(1),r0            ; |471| Unsigned
        ldiu      *+fp(4),r1            ; |471| 
        cmpi3     r0,r1                 ; |471| 
        blo       L130                  ; |471| 
;*      Branch Occurs to L130           ; |471| 
L131:        
	.line	30
;----------------------------------------------------------------------
; 478 | for (i=destination;i<(destination+n);i++)                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |478| 
        sti       r0,*+fp(4)            ; |478| 
        ldiu      *+fp(2),r0            ; |478| 
        ldiu      *+fp(4),r1            ; |478| 
        addi      *+fp(1),r0            ; |478| Unsigned
        cmpi3     r0,r1                 ; |478| 
        bhs       L135                  ; |478| 
;*      Branch Occurs to L135           ; |478| 
L132:        
	.line	32
;----------------------------------------------------------------------
; 480 | z = ((s[0]&0xFF)<<24) | ((s[1]&0xFF)<<16) | ((s[2]&0xFF)<<8) | (s[3]&0x
;     | FF);                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar2           ; |480| 
        ldiu      255,r1                ; |480| 
        ldiu      255,r2                ; |480| 
        ldiu      255,r0                ; |480| 
        ldiu      255,r3                ; |480| 
        ldiu      ar2,ar0               ; |480| 
        ldiu      ar2,ar4               ; |480| 
        and3      r1,*ar2,r1            ; |480| 
        ldiu      ar0,ar1               ; |480| 
        and       *+ar4(1),r2           ; |480| 
        and       *+ar0(2),r0           ; |480| 
        ash       24,r1                 ; |480| 
        ash       16,r2                 ; |480| 
        and       *+ar1(3),r3           ; |480| 
        ash       8,r0                  ; |480| 
        or3       r1,r2,r1              ; |480| 
        or3       r1,r0,r0              ; |480| 
        or3       r0,r3,r0              ; |480| 
        sti       r0,*+fp(5)            ; |480| 
	.line	33
;----------------------------------------------------------------------
; 481 | if (a[i] != z)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(6),ir0           ; |481| 
        ldiu      *+fp(4),ar0           ; |481| 
        ldiu      *+ar0(ir0),r0         ; |481| 
        cmpi      *+fp(5),r0            ; |481| 
        beq       L134                  ; |481| 
;*      Branch Occurs to L134           ; |481| 
	.line	35
;----------------------------------------------------------------------
; 483 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |483| 
        ldiu      @CL70,r0              ; |483| 
        callu     r0                    ; far call to _MB_exception	; |483| 
                                        ; |483| Far Call Occurs
L134:        
	.line	37
;----------------------------------------------------------------------
; 485 | s += 4;                                                                
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |485| 
        addi      *+fp(7),r0            ; |485| Unsigned
        sti       r0,*+fp(7)            ; |485| 
	.line	30
        ldiu      1,r0                  ; |478| 
        addi      *+fp(4),r0            ; |478| Unsigned
        sti       r0,*+fp(4)            ; |478| 
        ldiu      *+fp(2),r1            ; |478| 
        addi      *+fp(1),r1            ; |478| Unsigned
        cmpi3     r1,r0                 ; |478| 
        blo       L132                  ; |478| 
;*      Branch Occurs to L132           ; |478| 
L135:        
	.line	40
;----------------------------------------------------------------------
; 488 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |488| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |488| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |488| 
        ldiu      @CL19,ar2             ; |488| 
        callu     r0                    ; far call to _Put	; |488| 
                                        ; |488| Far Call Occurs
	.line	41
;----------------------------------------------------------------------
; 489 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |489| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |489| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |489| 
        ldiu      @CL19,ar2             ; |489| 
        callu     r0                    ; far call to _Put	; |489| 
                                        ; |489| Far Call Occurs
	.line	42
;----------------------------------------------------------------------
; 490 | Put(&PORT.TXbuf, destination>>24);                                     
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(1),r2            ; |490| 
        ldiu      @CL60,r0              ; |490| 
        lsh       -24,r2                ; |490| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |490| 
        callu     r0                    ; far call to _Put	; |490| 
                                        ; |490| Far Call Occurs
	.line	43
;----------------------------------------------------------------------
; 491 | Put(&PORT.TXbuf, destination>>16);                                     
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |491| 
        ldiu      *+fp(1),r2            ; |491| 
        lsh       -16,r2                ; |491| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |491| 
        callu     r0                    ; far call to _Put	; |491| 
                                        ; |491| Far Call Occurs
	.line	44
;----------------------------------------------------------------------
; 492 | Put(&PORT.TXbuf, destination>>8);                                      
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |492| 
        ldiu      *+fp(1),r2            ; |492| 
        lsh       -8,r2                 ; |492| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |492| 
        callu     r0                    ; far call to _Put	; |492| 
                                        ; |492| Far Call Occurs
	.line	45
;----------------------------------------------------------------------
; 493 | Put(&PORT.TXbuf, destination);                                         
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |493| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |493| 
        ldiu      *+fp(1),r2            ; |493| 
        callu     r0                    ; far call to _Put	; |493| 
                                        ; |493| Far Call Occurs
	.line	46
;----------------------------------------------------------------------
; 494 | Put(&PORT.TXbuf, source[0]);
;     |  /* CRC of prev pkt */                                                 
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |494| 
        ldiu      *+fp(3),ar0           ; |494| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |494| 
        ldiu      @CL19,ar2             ; |494| 
        callu     r0                    ; far call to _Put	; |494| 
                                        ; |494| Far Call Occurs
	.line	47
;----------------------------------------------------------------------
; 495 | Put(&PORT.TXbuf, source[1]);
;     |  /* CRC of prev pkt */                                                 
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |495| 
        ldp       @CL19,DP
        ldiu      *+fp(3),ar0           ; |495| 
        ldiu      @CL19,ar2             ; |495| 
        ldiu      *+ar0(1),r2           ; |495| 
        callu     r0                    ; far call to _Put	; |495| 
                                        ; |495| Far Call Occurs
L136:        
	.line	48
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
                                        ; Unallocate the Frame
        subi      9,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	496,000001000h,7


	.sect	 ".text"

	.global	_Process_Write
	.sym	_Process_Write,_Process_Write,32,2,0
	.func	498
;******************************************************************************
;* FUNCTION NAME: _Process_Write                                              *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,ir0,ir1,st              *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 13 Auto + 1 SOE = 16 words        *
;******************************************************************************
_Process_Write:
;* ar2   assigned to _destination
	.sym	_destination,10,14,17,32
;* r2    assigned to _n
	.sym	_n,2,14,17,32
;* r3    assigned to _source
	.sym	_source,3,30,17,32
	.sym	_destination,1,14,1,32
	.sym	_n,2,14,1,32
	.sym	_source,3,30,1,32
	.sym	_i,4,14,1,32
	.sym	_f,5,14,1,32
	.sym	_z,6,14,1,32
	.sym	_a,7,30,1,32
	.sym	_s,8,30,1,32
	.sym	_current_block_size,9,14,1,32
	.sym	_current_block_ptr,10,14,1,32
	.sym	_current_block_addr,11,30,1,32
	.sym	_nreg,12,4,1,32
	.sym	_nr,13,4,1,32
	.line	1
;----------------------------------------------------------------------
; 498 | void Process_Write(unsigned int destination, unsigned int n, unsigned i
;     | nt* source)                                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      13,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 500 | unsigned int i;                                                        
; 501 | unsigned int f;                                                        
; 502 | unsigned int z;                                                        
; 503 | unsigned int* a;                                                       
; 504 | unsigned int* s;                                                       
; 505 | unsigned int current_block_size;                                       
; 506 | unsigned int current_block_ptr;                                        
; 507 | unsigned int* current_block_addr;                                      
; 508 | int     nreg;                                                          
; 509 | int     nr;                                                            
;----------------------------------------------------------------------
        sti       r3,*+fp(3)            ; |499| 
        sti       r2,*+fp(2)            ; |499| 
        sti       ar2,*+fp(1)           ; |499| 
	.line	14
;----------------------------------------------------------------------
; 511 | nreg = n;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0            ; |511| 
        sti       r0,*+fp(12)           ; |511| 
	.line	16
;----------------------------------------------------------------------
; 513 | a = (unsigned int*) MEM_LOC;                                           
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,r0              ; |513| 
        sti       r0,*+fp(7)            ; |513| 
	.line	18
;----------------------------------------------------------------------
; 515 | f = FLASH_SIZE();                                                      
;----------------------------------------------------------------------
        ldp       @CL64,DP
        ldiu      @CL64,r0              ; |515| 
        callu     r0                    ; far call to _FLASH_SIZE	; |515| 
                                        ; |515| Far Call Occurs
        sti       r0,*+fp(5)            ; |515| 
	.line	19
;----------------------------------------------------------------------
; 516 | if ((destination < (unsigned int)FLASH_LOC) || ((destination+n)>=(f+(un
;     | signed int)FLASH_LOC)))                                                
;----------------------------------------------------------------------
        ldp       @CL65,DP
        ldiu      *+fp(1),r0            ; |516| 
        cmpi      @CL65,r0              ; |516| 
        blo       L140                  ; |516| 
;*      Branch Occurs to L140           ; |516| 
        ldp       @CL65,DP
        ldiu      *+fp(2),r1            ; |516| 
        ldiu      @CL65,r0              ; |516| 
        addi      *+fp(1),r1            ; |516| Unsigned
        addi      *+fp(5),r0            ; |516| Unsigned
        cmpi3     r0,r1                 ; |516| 
        blo       L141                  ; |516| 
;*      Branch Occurs to L141           ; |516| 
L140:        
	.line	21
;----------------------------------------------------------------------
; 518 | MB_exception(mb_excp_illegal_addr);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      2,ar2                 ; |518| 
        ldiu      @CL70,r0              ; |518| 
        callu     r0                    ; far call to _MB_exception	; |518| 
                                        ; |518| Far Call Occurs
	.line	22
;----------------------------------------------------------------------
; 519 | return;                                                                
;----------------------------------------------------------------------
        bu        L167                  ; |519| 
;*      Branch Occurs to L167           ; |519| 
L141:        
	.line	25
;----------------------------------------------------------------------
; 522 | if (n>0x8000)                                                          
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      *+fp(2),r0            ; |522| 
        cmpi      @CL72,r0              ; |522| 
        bls       L143                  ; |522| 
;*      Branch Occurs to L143           ; |522| 
	.line	27
;----------------------------------------------------------------------
; 524 | MB_exception(mb_excp_illegal_data);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      3,ar2                 ; |524| 
        ldiu      @CL70,r0              ; |524| 
        callu     r0                    ; far call to _MB_exception	; |524| 
                                        ; |524| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 525 | return;                                                                
;----------------------------------------------------------------------
        bu        L167                  ; |525| 
;*      Branch Occurs to L167           ; |525| 
L143:        
	.line	31
;----------------------------------------------------------------------
; 528 | current_block_addr = (unsigned int*) destination;                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0            ; |528| 
        sti       r0,*+fp(11)           ; |528| 
	.line	33
;----------------------------------------------------------------------
; 530 | while(nreg>0)                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |530| 
        cmpi      0,r0                  ; |530| 
        ble       L166                  ; |530| 
;*      Branch Occurs to L166           ; |530| 
L144:        
	.line	35
;----------------------------------------------------------------------
; 532 | if ( current_block_addr < (FLASH_LOC+FLASH_SECTOR_SIZE) )              
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      *+fp(11),r0           ; |532| 
        cmpi      @CL73,r0              ; |532| 
        bhs       L146                  ; |532| 
;*      Branch Occurs to L146           ; |532| 
	.line	37
;----------------------------------------------------------------------
; 534 | current_block_size = FLASH_CFGB_SIZE;                                  
;----------------------------------------------------------------------
        ldiu      4096,r0               ; |534| 
        sti       r0,*+fp(9)            ; |534| 
	.line	38
;----------------------------------------------------------------------
; 535 | current_block_ptr  = (unsigned int)current_block_addr & 0xFFF;         
;----------------------------------------------------------------------
        ldiu      4095,r0               ; |535| 
        and       *+fp(11),r0           ; |535| 
        sti       r0,*+fp(10)           ; |535| 
	.line	39
;----------------------------------------------------------------------
; 536 | current_block_addr = (unsigned int*)((unsigned int)current_block_addr &
;     |  0xFFF000);                                                            
; 538 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,r0              ; |536| 
        and       *+fp(11),r0           ; |536| 
        sti       r0,*+fp(11)           ; |536| 
        bu        L147                  ; |497| 
;*      Branch Occurs to L147           ; |497| 
L146:        
	.line	43
;----------------------------------------------------------------------
; 540 | current_block_size = FLASH_SECTOR_SIZE;                                
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,r0              ; |540| 
        sti       r0,*+fp(9)            ; |540| 
	.line	44
;----------------------------------------------------------------------
; 541 | current_block_ptr  = (unsigned int)current_block_addr & 0x7FFF;        
;----------------------------------------------------------------------
        ldiu      32767,r0              ; |541| 
        and       *+fp(11),r0           ; |541| 
        sti       r0,*+fp(10)           ; |541| 
	.line	45
;----------------------------------------------------------------------
; 542 | current_block_addr = (unsigned int*)((unsigned int)current_block_addr &
;     |  0xFF8000);                                                            
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,r0              ; |542| 
        and       *+fp(11),r0           ; |542| 
        sti       r0,*+fp(11)           ; |542| 
L147:        
	.line	48
;----------------------------------------------------------------------
; 545 | for (i=0;i<current_block_size;i++)                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |545| 
        sti       r0,*+fp(4)            ; |545| 
        cmpi      *+fp(9),r0            ; |545| 
        bhs       L149                  ; |545| 
;*      Branch Occurs to L149           ; |545| 
L148:        
	.line	50
;----------------------------------------------------------------------
; 547 | a[i] = current_block_addr[i];                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |547| 
        ldiu      *+fp(11),ir0          ; |547| 
        ldiu      *+fp(7),ir1           ; |547| 
        ldiu      ar0,ar1               ; |547| 
        ldiu      *+ar0(ir0),r0         ; |547| 
        sti       r0,*+ar1(ir1)         ; |547| 
	.line	48
        ldiu      1,r0                  ; |545| 
        addi      *+fp(4),r0            ; |545| Unsigned
        sti       r0,*+fp(4)            ; |545| 
        cmpi      *+fp(9),r0            ; |545| 
        blo       L148                  ; |545| 
;*      Branch Occurs to L148           ; |545| 
L149:        
	.line	53
;----------------------------------------------------------------------
; 550 | s = source;                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0            ; |550| 
        sti       r0,*+fp(8)            ; |550| 
	.line	54
;----------------------------------------------------------------------
; 551 | nr = nreg;                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(12),r0           ; |551| 
        sti       r0,*+fp(13)           ; |551| 
	.line	55
;----------------------------------------------------------------------
; 552 | for (i=current_block_ptr;i<current_block_size;i++)                     
;----------------------------------------------------------------------
        ldiu      *+fp(10),r0           ; |552| 
        sti       r0,*+fp(4)            ; |552| 
        cmpi      *+fp(9),r0            ; |552| 
        bhs       L152                  ; |552| 
;*      Branch Occurs to L152           ; |552| 
L150:        
	.line	57
;----------------------------------------------------------------------
; 554 | z = ((source[0]&0xFF)<<24) | ((source[1]&0xFF)<<16) | ((source[2]&0xFF)
;     | <<8) | (source[3]&0xFF);                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar4           ; |554| 
        ldiu      255,r3                ; |554| 
        ldiu      255,r2                ; |554| 
        ldiu      ar4,ar0               ; |554| 
        ldiu      255,r1                ; |554| 
        ldiu      255,r0                ; |554| 
        ldiu      ar0,ar2               ; |554| 
        and3      r3,*ar4,r3            ; |554| 
        ldiu      ar0,ar1               ; |554| 
        and       *+ar0(1),r2           ; |554| 
        and       *+ar2(2),r1           ; |554| 
        ash       24,r3                 ; |554| 
        ash       16,r2                 ; |554| 
        and       *+ar1(3),r0           ; |554| 
        ash       8,r1                  ; |554| 
        or3       r3,r2,r2              ; |554| 
        or3       r2,r1,r1              ; |554| 
        or3       r1,r0,r0              ; |554| 
        sti       r0,*+fp(6)            ; |554| 
	.line	58
;----------------------------------------------------------------------
; 555 | a[i] = z;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),ir0           ; |555| 
        ldiu      *+fp(4),ar0           ; |555| 
        sti       r0,*+ar0(ir0)         ; |555| 
	.line	59
;----------------------------------------------------------------------
; 556 | source += 4;                                                           
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |556| 
        addi      *+fp(3),r0            ; |556| Unsigned
        sti       r0,*+fp(3)            ; |556| 
	.line	60
;----------------------------------------------------------------------
; 557 | nreg--;                                                                
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |557| 
        subri     *+fp(12),r0           ; |557| 
        sti       r0,*+fp(12)           ; |557| 
	.line	61
;----------------------------------------------------------------------
; 558 | if (nreg<=0)                                                           
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |558| 
        ble       L152                  ; |558| 
;*      Branch Occurs to L152           ; |558| 
	.line	63
;----------------------------------------------------------------------
; 560 | break;                                                                 
;----------------------------------------------------------------------
	.line	55
        ldiu      1,r0                  ; |552| 
        addi      *+fp(4),r0            ; |552| Unsigned
        sti       r0,*+fp(4)            ; |552| 
        cmpi      *+fp(9),r0            ; |552| 
        blo       L150                  ; |552| 
;*      Branch Occurs to L150           ; |552| 
L152:        
	.line	67
;----------------------------------------------------------------------
; 564 | for (i=current_block_ptr;i<current_block_size;i++)                     
;----------------------------------------------------------------------
        ldiu      *+fp(10),r0           ; |564| 
        sti       r0,*+fp(4)            ; |564| 
        cmpi      *+fp(9),r0            ; |564| 
        bhs       L157                  ; |564| 
;*      Branch Occurs to L157           ; |564| 
L153:        
	.line	69
;----------------------------------------------------------------------
; 566 | z = ((s[0]&0xFF)<<24) | ((s[1]&0xFF)<<16) | ((s[2]&0xFF)<<8) | (s[3]&0x
;     | FF);                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(8),ar0           ; |566| 
        ldiu      255,r3                ; |566| 
        ldiu      255,r1                ; |566| 
        ldiu      255,r0                ; |566| 
        ldiu      255,r2                ; |566| 
        ldiu      ar0,ar4               ; |566| 
        ldiu      ar0,ar1               ; |566| 
        ldiu      ar0,ar2               ; |566| 
        and3      r3,*ar0,r3            ; |566| 
        and       *+ar4(1),r1           ; |566| 
        and       *+ar1(2),r0           ; |566| 
        and       *+ar2(3),r2           ; |566| 
        ash       24,r3                 ; |566| 
        ash       16,r1                 ; |566| 
        ash       8,r0                  ; |566| 
        or3       r3,r1,r1              ; |566| 
        or3       r1,r0,r0              ; |566| 
        or3       r0,r2,r0              ; |566| 
        sti       r0,*+fp(6)            ; |566| 
	.line	70
;----------------------------------------------------------------------
; 567 | if (a[i] != z)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(7),ir0           ; |567| 
        ldiu      *+fp(4),ar0           ; |567| 
        ldiu      *+ar0(ir0),r0         ; |567| 
        cmpi      *+fp(6),r0            ; |567| 
        beq       L155                  ; |567| 
;*      Branch Occurs to L155           ; |567| 
	.line	72
;----------------------------------------------------------------------
; 569 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |569| 
        ldiu      @CL70,r0              ; |569| 
        callu     r0                    ; far call to _MB_exception	; |569| 
                                        ; |569| Far Call Occurs
	.line	73
;----------------------------------------------------------------------
; 570 | return;                                                                
;----------------------------------------------------------------------
        bu        L167                  ; |570| 
;*      Branch Occurs to L167           ; |570| 
L155:        
	.line	75
;----------------------------------------------------------------------
; 572 | s += 4;                                                                
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |572| 
        addi      *+fp(8),r0            ; |572| Unsigned
        sti       r0,*+fp(8)            ; |572| 
	.line	76
;----------------------------------------------------------------------
; 573 | nr--;                                                                  
;----------------------------------------------------------------------
        ldiu      1,r0                  ; |573| 
        subri     *+fp(13),r0           ; |573| 
        sti       r0,*+fp(13)           ; |573| 
	.line	77
;----------------------------------------------------------------------
; 574 | if (nr<=0)                                                             
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |574| 
        ble       L157                  ; |574| 
;*      Branch Occurs to L157           ; |574| 
	.line	79
;----------------------------------------------------------------------
; 576 | break;                                                                 
;----------------------------------------------------------------------
	.line	67
        ldiu      1,r0                  ; |564| 
        addi      *+fp(4),r0            ; |564| Unsigned
        sti       r0,*+fp(4)            ; |564| 
        cmpi      *+fp(9),r0            ; |564| 
        blo       L153                  ; |564| 
;*      Branch Occurs to L153           ; |564| 
L157:        
	.line	83
;----------------------------------------------------------------------
; 580 | LEDR_ON; LEDG_OFF;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |580| 
        ldiu      127,r0                ; |580| 
        and3      r0,*ar0,r0            ; |580| 
        sti       r0,*ar0               ; |580| 
	pop		ST			
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |580| 
        or3       r0,*ar0,r0            ; |580| 
        sti       r0,*ar0               ; |580| 
	pop		ST			
	.line	84
;----------------------------------------------------------------------
; 581 | i = FLASH_ERASE_BLK(current_block_addr);                               
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      *+fp(11),ar2          ; |581| 
        ldiu      @CL77,r0              ; |581| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |581| 
                                        ; |581| Far Call Occurs
        sti       r0,*+fp(4)            ; |581| 
	.line	85
;----------------------------------------------------------------------
; 582 | if (i)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |582| 
        beq       L159                  ; |582| 
;*      Branch Occurs to L159           ; |582| 
	.line	87
;----------------------------------------------------------------------
; 584 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |584| 
        ldiu      @CL70,r0              ; |584| 
        callu     r0                    ; far call to _MB_exception	; |584| 
                                        ; |584| Far Call Occurs
	.line	88
;----------------------------------------------------------------------
; 585 | return;                                                                
;----------------------------------------------------------------------
        bu        L167                  ; |585| 
;*      Branch Occurs to L167           ; |585| 
L159:        
	.line	91
;----------------------------------------------------------------------
; 588 | i = FLASH_WRITE_BLK(current_block_addr, a, current_block_size);        
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      *+fp(11),ar2          ; |588| 
        ldiu      *+fp(7),r2            ; |588| 
        ldiu      *+fp(9),r3            ; |588| 
        ldiu      @CL78,r0              ; |588| 
        callu     r0                    ; far call to _FLASH_WRITE_BLK	; |588| 
                                        ; |588| Far Call Occurs
        sti       r0,*+fp(4)            ; |588| 
	.line	92
;----------------------------------------------------------------------
; 589 | if (i)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |589| 
        beq       L161                  ; |589| 
;*      Branch Occurs to L161           ; |589| 
	.line	94
;----------------------------------------------------------------------
; 591 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |591| 
        ldiu      @CL70,r0              ; |591| 
        callu     r0                    ; far call to _MB_exception	; |591| 
                                        ; |591| Far Call Occurs
	.line	95
;----------------------------------------------------------------------
; 592 | return;                                                                
;----------------------------------------------------------------------
        bu        L167                  ; |592| 
;*      Branch Occurs to L167           ; |592| 
L161:        
	.line	98
;----------------------------------------------------------------------
; 595 | for (i=0;i<current_block_size;i++)                                     
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |595| 
        sti       r0,*+fp(4)            ; |595| 
        cmpi      *+fp(9),r0            ; |595| 
        bhs       L165                  ; |595| 
;*      Branch Occurs to L165           ; |595| 
L162:        
	.line	100
;----------------------------------------------------------------------
; 597 | if (current_block_addr[i] != a[i])                                     
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar1           ; |597| 
        ldiu      *+fp(7),ir0           ; |597| 
        ldiu      *+fp(11),ir1          ; |597| 
        ldiu      ar1,ar0               ; |597| 
        cmpi3     *+ar1(ir0),*+ar0(ir1) ; |597| 
        beq       L164                  ; |597| 
;*      Branch Occurs to L164           ; |597| 
	.line	102
;----------------------------------------------------------------------
; 599 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |599| 
        ldiu      @CL70,r0              ; |599| 
        callu     r0                    ; far call to _MB_exception	; |599| 
                                        ; |599| Far Call Occurs
	.line	103
;----------------------------------------------------------------------
; 600 | return;                                                                
;----------------------------------------------------------------------
        bu        L167                  ; |600| 
;*      Branch Occurs to L167           ; |600| 
L164:        
	.line	98
        ldiu      1,r0                  ; |595| 
        addi      *+fp(4),r0            ; |595| Unsigned
        sti       r0,*+fp(4)            ; |595| 
        cmpi      *+fp(9),r0            ; |595| 
        blo       L162                  ; |595| 
;*      Branch Occurs to L162           ; |595| 
L165:        
	.line	107
;----------------------------------------------------------------------
; 604 | current_block_addr += current_block_size;                              
;----------------------------------------------------------------------
        ldiu      *+fp(9),r0            ; |604| 
        addi      *+fp(11),r0           ; |604| Unsigned
        sti       r0,*+fp(11)           ; |604| 
	.line	33
        ldiu      *+fp(12),r0           ; |530| 
        cmpi      0,r0                  ; |530| 
        bgt       L144                  ; |530| 
;*      Branch Occurs to L144           ; |530| 
L166:        
	.line	110
;----------------------------------------------------------------------
; 607 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |607| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |607| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |607| 
        ldiu      @CL19,ar2             ; |607| 
        callu     r0                    ; far call to _Put	; |607| 
                                        ; |607| Far Call Occurs
	.line	111
;----------------------------------------------------------------------
; 608 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |608| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |608| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |608| 
        ldiu      @CL19,ar2             ; |608| 
        callu     r0                    ; far call to _Put	; |608| 
                                        ; |608| Far Call Occurs
	.line	112
;----------------------------------------------------------------------
; 609 | Put(&PORT.TXbuf, destination>>24);                                     
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(1),r2            ; |609| 
        ldiu      @CL60,r0              ; |609| 
        lsh       -24,r2                ; |609| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |609| 
        callu     r0                    ; far call to _Put	; |609| 
                                        ; |609| Far Call Occurs
	.line	113
;----------------------------------------------------------------------
; 610 | Put(&PORT.TXbuf, destination>>16);                                     
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |610| 
        ldiu      *+fp(1),r2            ; |610| 
        lsh       -16,r2                ; |610| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |610| 
        callu     r0                    ; far call to _Put	; |610| 
                                        ; |610| Far Call Occurs
	.line	114
;----------------------------------------------------------------------
; 611 | Put(&PORT.TXbuf, destination>>8);                                      
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |611| 
        ldiu      *+fp(1),r2            ; |611| 
        lsh       -8,r2                 ; |611| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |611| 
        callu     r0                    ; far call to _Put	; |611| 
                                        ; |611| Far Call Occurs
	.line	115
;----------------------------------------------------------------------
; 612 | Put(&PORT.TXbuf, destination);                                         
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |612| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |612| 
        ldiu      *+fp(1),r2            ; |612| 
        callu     r0                    ; far call to _Put	; |612| 
                                        ; |612| Far Call Occurs
	.line	116
;----------------------------------------------------------------------
; 613 | Put(&PORT.TXbuf, source[0]);
;     |  /* CRC of prev pkt */                                                 
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |613| 
        ldiu      *+fp(3),ar0           ; |613| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |613| 
        ldiu      @CL19,ar2             ; |613| 
        callu     r0                    ; far call to _Put	; |613| 
                                        ; |613| Far Call Occurs
	.line	117
;----------------------------------------------------------------------
; 614 | Put(&PORT.TXbuf, source[1]);
;     |  /* CRC of prev pkt */                                                 
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |614| 
        ldp       @CL19,DP
        ldiu      *+fp(3),ar0           ; |614| 
        ldiu      @CL19,ar2             ; |614| 
        ldiu      *+ar0(1),r2           ; |614| 
        callu     r0                    ; far call to _Put	; |614| 
                                        ; |614| Far Call Occurs
L167:        
	.line	118
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
                                        ; Unallocate the Frame
        subi      15,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	615,000001000h,13


	.sect	 ".text"

	.global	_Process_Read_ESN
	.sym	_Process_Read_ESN,_Process_Read_ESN,32,2,0
	.func	617
;******************************************************************************
;* FUNCTION NAME: _Process_Read_ESN                                           *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r4,r5,ar0,ar2,ar4,ir0,st                      *
;*   Regs Saved         : r4,r5,ar4                                           *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 3 SOE = 6 words          *
;******************************************************************************
_Process_Read_ESN:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 617 | void Process_Read_ESN(void)                                            
; 619 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
        push      r4
        push      r5
        push      ar4
	.line	5
;----------------------------------------------------------------------
; 621 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |621| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |621| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |621| 
        ldiu      *ar0,r2               ; |621| 
        callu     r0                    ; far call to _Put	; |621| 
                                        ; |621| Far Call Occurs
	.line	6
;----------------------------------------------------------------------
; 622 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |622| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |622| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |622| 
        ldiu      @CL19,ar2             ; |622| 
        callu     r0                    ; far call to _Put	; |622| 
                                        ; |622| Far Call Occurs
	.line	8
;----------------------------------------------------------------------
; 624 | for(i=0;i<9;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |624| 
        sti       r0,*+fp(1)            ; |624| 
        ldiu      -8,ar4                ; |628| 
        ldiu      -24,r4                ; |626| 
        ldiu      -16,r5                ; |627| 
        cmpi      9,r0                  ; |624| 
        bge       L171                  ; |624| 
;*      Branch Occurs to L171           ; |624| 
L170:        
	.line	10
;----------------------------------------------------------------------
; 626 | Put(&PORT.TXbuf, ESN[i]>>24);                                          
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |626| 
        ldp       @CL60,DP
        ldiu      *+fp(1),ir0           ; |626| 
        ldiu      @CL60,r0              ; |626| 
        ldp       @CL19,DP
        lsh3      r4,*+ar0(ir0),r2      ; |626| 
        ldiu      @CL19,ar2             ; |626| 
        callu     r0                    ; far call to _Put	; |626| 
                                        ; |626| Far Call Occurs
	.line	11
;----------------------------------------------------------------------
; 627 | Put(&PORT.TXbuf, ESN[i]>>16);                                          
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |627| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |627| 
        ldp       @CL19,DP
        ldiu      *+fp(1),ir0           ; |627| 
        ldiu      @CL19,ar2             ; |627| 
        lsh3      r5,*+ar0(ir0),r2      ; |627| 
        callu     r0                    ; far call to _Put	; |627| 
                                        ; |627| Far Call Occurs
	.line	12
;----------------------------------------------------------------------
; 628 | Put(&PORT.TXbuf, ESN[i]>>8);                                           
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |628| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |628| 
        ldiu      *+fp(1),ir0           ; |628| 
        ldp       @CL19,DP
        lsh3      ar4,*+ar0(ir0),r2     ; |628| 
        ldiu      @CL19,ar2             ; |628| 
        callu     r0                    ; far call to _Put	; |628| 
                                        ; |628| Far Call Occurs
	.line	13
;----------------------------------------------------------------------
; 629 | Put(&PORT.TXbuf, ESN[i]);                                              
;----------------------------------------------------------------------
        ldp       @CL79,DP
        ldiu      @CL79,ar0             ; |629| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |629| 
        ldp       @CL19,DP
        ldiu      *+fp(1),ir0           ; |629| 
        ldiu      @CL19,ar2             ; |629| 
        ldiu      *+ar0(ir0),r2         ; |629| 
        callu     r0                    ; far call to _Put	; |629| 
                                        ; |629| Far Call Occurs
	.line	8
        ldiu      1,r0                  ; |624| 
        addi      *+fp(1),r0            ; |624| 
        sti       r0,*+fp(1)            ; |624| 
        cmpi      9,r0                  ; |624| 
        blt       L170                  ; |624| 
;*      Branch Occurs to L170           ; |624| 
L171:        
	.line	15
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
        pop       r5
        pop       r4
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	631,000001030h,1


	.sect	 ".text"

	.global	_Process_Write_ESN
	.sym	_Process_Write_ESN,_Process_Write_ESN,32,2,0
	.func	633
;******************************************************************************
;* FUNCTION NAME: _Process_Write_ESN                                          *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ar4,ir0,st,rs            *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 6 Auto + 1 SOE = 9 words          *
;******************************************************************************
_Process_Write_ESN:
;* ar2   assigned to _dat
	.sym	_dat,10,30,17,32
	.sym	_dat,1,30,1,32
	.sym	_i,2,4,1,32
	.sym	_ESNU,3,62,1,128,,4
	.line	1
;----------------------------------------------------------------------
; 633 | void Process_Write_ESN(unsigned int* dat)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 635 | int i;                                                                 
; 636 | unsigned int ESNU[4];                                                  
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |634| 
	.line	6
;----------------------------------------------------------------------
; 638 | for(i=0;i<4;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |638| 
        sti       r0,*+fp(2)            ; |638| 
        ldiu      24,r3                 ; |640| 
        cmpi      4,r0                  ; |638| 
        ldiu      16,r1                 ; |640| 
        bge       L175                  ; |638| 
;*      Branch Occurs to L175           ; |638| 
L174:        
	.line	8
;----------------------------------------------------------------------
; 640 | ESNU[i] = (dat[0]<<24) | (dat[1]<<16) | (dat[2]<<8) | (dat[3]);        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar4           ; |640| 
        ldiu      fp,ar0                ; |640| 
        ldiu      ar4,ar2               ; |640| 
        ldiu      *+ar4(2),r0           ; |640| 
        ldiu      ar2,ar1               ; |640| 
        ash3      r3,*ar2,rs            ; |640| 
        ash3      r1,*+ar1,r2           ; |640| 
        ash       8,r0                  ; |640| 
        ldiu      *+fp(2),ir0           ; |640| 
        addi      3,ar0                 ; |640| 
        or3       rs,r2,r2              ; |640| 
        or3       r2,r0,r0              ; |640| 
        or        *+ar4(3),r0           ; |640| 
        sti       r0,*+ar0(ir0)         ; |640| 
	.line	9
;----------------------------------------------------------------------
; 641 | dat += 4;                                                              
;----------------------------------------------------------------------
        ldiu      4,r0                  ; |641| 
        addi      *+fp(1),r0            ; |641| Unsigned
        sti       r0,*+fp(1)            ; |641| 
	.line	6
        ldiu      1,r0                  ; |638| 
        addi      *+fp(2),r0            ; |638| 
        sti       r0,*+fp(2)            ; |638| 
        cmpi      4,r0                  ; |638| 
        blt       L174                  ; |638| 
;*      Branch Occurs to L174           ; |638| 
L175:        
	.line	12
;----------------------------------------------------------------------
; 644 | if (FLASH_WRITE_ESN_USER(&ESNU[0]))                                    
;----------------------------------------------------------------------
        ldp       @CL80,DP
        ldiu      fp,ar2                ; |644| 
        ldiu      @CL80,r0              ; |644| 
        addi      3,ar2                 ; |644| 
        callu     r0                    ; far call to _FLASH_WRITE_ESN_USER	; |644| 
                                        ; |644| Far Call Occurs
        cmpi      0,r0                  ; |644| 
        beq       L177                  ; |644| 
;*      Branch Occurs to L177           ; |644| 
	.line	14
;----------------------------------------------------------------------
; 646 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |646| 
        ldiu      @CL70,r0              ; |646| 
        callu     r0                    ; far call to _MB_exception	; |646| 
                                        ; |646| Far Call Occurs
	.line	15
;----------------------------------------------------------------------
; 647 | return;                                                                
;----------------------------------------------------------------------
        bu        L178                  ; |647| 
;*      Branch Occurs to L178           ; |647| 
L177:        
	.line	18
;----------------------------------------------------------------------
; 650 | FLASH_READ_ESN_USER(&ESN[4]);                                          
;----------------------------------------------------------------------
        ldp       @CL82,DP
        ldiu      @CL82,r0              ; |650| 
        ldp       @CL81,DP
        ldiu      @CL81,ar2             ; |650| 
        callu     r0                    ; far call to _FLASH_READ_ESN_USER	; |650| 
                                        ; |650| Far Call Occurs
	.line	20
;----------------------------------------------------------------------
; 652 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |652| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |652| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |652| 
        ldiu      @CL19,ar2             ; |652| 
        callu     r0                    ; far call to _Put	; |652| 
                                        ; |652| Far Call Occurs
	.line	21
;----------------------------------------------------------------------
; 653 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |653| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |653| 
        ldiu      *ar0,r2               ; |653| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |653| 
        callu     r0                    ; far call to _Put	; |653| 
                                        ; |653| Far Call Occurs
L178:        
	.line	22
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Restore SOE Registers
        pop       ar4
                                        ; Unallocate the Frame
        subi      8,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	654,000001000h,6


	.sect	 ".text"

	.global	_Process_Set_Entry_Point
	.sym	_Process_Set_Entry_Point,_Process_Set_Entry_Point,32,2,0
	.func	656
;******************************************************************************
;* FUNCTION NAME: _Process_Set_Entry_Point                                    *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,ir0,ir1,st                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Process_Set_Entry_Point:
;* ar2   assigned to _addr
	.sym	_addr,10,14,17,32
	.sym	_addr,1,14,1,32
	.sym	_m,2,30,1,32
	.sym	_f,3,30,1,32
	.sym	_i,4,14,1,32
	.line	1
;----------------------------------------------------------------------
; 656 | void Process_Set_Entry_Point(unsigned int addr)                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 658 | unsigned int* m;                                                       
; 659 | unsigned int* f;                                                       
; 660 | unsigned int i;                                                        
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |657| 
	.line	7
;----------------------------------------------------------------------
; 662 | m = (unsigned int*) MEM_LOC;                                           
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,r0              ; |662| 
        sti       r0,*+fp(2)            ; |662| 
	.line	8
;----------------------------------------------------------------------
; 663 | f = (unsigned int*) FLASH_LOC;                                         
;----------------------------------------------------------------------
        ldp       @CL83,DP
        ldiu      @CL83,r0              ; |663| 
        sti       r0,*+fp(3)            ; |663| 
	.line	10
;----------------------------------------------------------------------
; 665 | for (i=0;i<FLASH_BOOT_SIZE;i++)                                        
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |665| 
        sti       r0,*+fp(4)            ; |665| 
        cmpi      8192,r0               ; |665| 
        bhs       L182                  ; |665| 
;*      Branch Occurs to L182           ; |665| 
L181:        
	.line	12
;----------------------------------------------------------------------
; 667 | m[i] = f[i];                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0           ; |667| 
        ldiu      *+fp(3),ir0           ; |667| 
        ldiu      *+fp(2),ir1           ; |667| 
        ldiu      ar0,ar1               ; |667| 
        ldiu      *+ar0(ir0),r0         ; |667| 
        sti       r0,*+ar1(ir1)         ; |667| 
	.line	10
        ldiu      1,r0                  ; |665| 
        addi      *+fp(4),r0            ; |665| Unsigned
        sti       r0,*+fp(4)            ; |665| 
        cmpi      8192,r0               ; |665| 
        blo       L181                  ; |665| 
;*      Branch Occurs to L181           ; |665| 
L182:        
	.line	15
;----------------------------------------------------------------------
; 670 | m[FLASH_ENTRY_POINT_APP] = addr;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0           ; |670| 
        ldiu      8191,ar0              ; |670| 
        ldiu      *+fp(1),r0            ; |670| 
        sti       r0,*+ar0(ir0)         ; |670| 
	.line	17
;----------------------------------------------------------------------
; 672 | LEDR_ON; LEDG_OFF;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |672| 
        ldiu      127,r0                ; |672| 
        and3      r0,*ar0,r0            ; |672| 
        sti       r0,*ar0               ; |672| 
	pop		ST			
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |672| 
        or3       r0,*ar0,r0            ; |672| 
        sti       r0,*ar0               ; |672| 
	pop		ST			
	.line	18
;----------------------------------------------------------------------
; 673 | i = FLASH_ERASE_BLK((unsigned int*)FLASH_LOC+FLASH_CFGB_SIZE);         
;----------------------------------------------------------------------
        ldp       @CL84,DP
        ldiu      @CL84,ar2             ; |673| 
        ldp       @CL77,DP
        ldiu      @CL77,r0              ; |673| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |673| 
                                        ; |673| Far Call Occurs
        sti       r0,*+fp(4)            ; |673| 
	.line	19
;----------------------------------------------------------------------
; 674 | i |= FLASH_WRITE_BLK((unsigned int*)FLASH_LOC+FLASH_CFGB_SIZE, m+FLASH_
;     | CFGB_SIZE, FLASH_CFGB_SIZE);                                           
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,r0              ; |674| 
        ldp       @CL84,DP
        ldiu      4096,r2               ; |674| 
        ldiu      4096,r3               ; |674| 
        ldiu      @CL84,ar2             ; |674| 
        addi      *+fp(2),r2            ; |674| Unsigned
        callu     r0                    ; far call to _FLASH_WRITE_BLK	; |674| 
                                        ; |674| Far Call Occurs
        or        *+fp(4),r0            ; |674| 
        sti       r0,*+fp(4)            ; |674| 
	.line	21
;----------------------------------------------------------------------
; 676 | if (i)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |676| 
        beq       L184                  ; |676| 
;*      Branch Occurs to L184           ; |676| 
	.line	23
;----------------------------------------------------------------------
; 678 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |678| 
        ldiu      @CL70,r0              ; |678| 
        callu     r0                    ; far call to _MB_exception	; |678| 
                                        ; |678| Far Call Occurs
	.line	24
;----------------------------------------------------------------------
; 679 | return;                                                                
;----------------------------------------------------------------------
        bu        L185                  ; |679| 
;*      Branch Occurs to L185           ; |679| 
L184:        
	.line	27
;----------------------------------------------------------------------
; 682 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |682| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |682| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |682| 
        ldiu      @CL19,ar2             ; |682| 
        callu     r0                    ; far call to _Put	; |682| 
                                        ; |682| Far Call Occurs
	.line	28
;----------------------------------------------------------------------
; 683 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |683| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |683| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |683| 
        ldiu      @CL19,ar2             ; |683| 
        callu     r0                    ; far call to _Put	; |683| 
                                        ; |683| Far Call Occurs
L185:        
	.line	29
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      6,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	684,000000000h,4


	.sect	 ".text"

	.global	_Copy_Block
	.sym	_Copy_Block,_Copy_Block,46,2,0
	.func	686
;******************************************************************************
;* FUNCTION NAME: _Copy_Block                                                 *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar1,ar2,ir0,ir1,st                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Copy_Block:
;* ar2   assigned to _s
	.sym	_s,10,30,17,32
;* r2    assigned to _d
	.sym	_d,2,30,17,32
	.sym	_s,1,30,1,32
	.sym	_d,2,30,1,32
	.sym	_i,3,14,1,32
	.sym	_m,4,30,1,32
	.line	1
;----------------------------------------------------------------------
; 686 | unsigned int Copy_Block(unsigned int* s, unsigned int* d)              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
;----------------------------------------------------------------------
; 688 | unsigned int i;                                                        
; 689 | unsigned int* m;                                                       
;----------------------------------------------------------------------
        sti       r2,*+fp(2)            ; |687| 
        sti       ar2,*+fp(1)           ; |687| 
	.line	6
;----------------------------------------------------------------------
; 691 | m = (unsigned int*) MEM_LOC;                                           
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,r0              ; |691| 
        sti       r0,*+fp(4)            ; |691| 
	.line	8
;----------------------------------------------------------------------
; 693 | for (i=0;i<FLASH_CFG_SIZE;i++)                                         
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |693| 
        sti       r0,*+fp(3)            ; |693| 
        ldp       @CL72,DP
        cmpi      @CL72,r0              ; |693| 
        bhs       L189                  ; |693| 
;*      Branch Occurs to L189           ; |693| 
L188:        
	.line	10
;----------------------------------------------------------------------
; 695 | m[i] = s[i];                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0           ; |695| 
        ldiu      *+fp(1),ir0           ; |695| 
        ldiu      *+fp(4),ir1           ; |695| 
        ldiu      ar0,ar1               ; |695| 
        ldiu      *+ar0(ir0),r0         ; |695| 
        sti       r0,*+ar1(ir1)         ; |695| 
	.line	8
        ldiu      1,r0                  ; |693| 
        addi      *+fp(3),r0            ; |693| Unsigned
        sti       r0,*+fp(3)            ; |693| 
        ldp       @CL72,DP
        cmpi      @CL72,r0              ; |693| 
        blo       L188                  ; |693| 
;*      Branch Occurs to L188           ; |693| 
L189:        
	.line	13
;----------------------------------------------------------------------
; 698 | LEDR_ON; LEDG_OFF;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |698| 
        ldiu      127,r0                ; |698| 
        and3      r0,*ar0,r0            ; |698| 
        sti       r0,*ar0               ; |698| 
	pop		ST			
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |698| 
        or3       r0,*ar0,r0            ; |698| 
        sti       r0,*ar0               ; |698| 
	pop		ST			
	.line	14
;----------------------------------------------------------------------
; 699 | i = FLASH_ERASE_BLK(d);                                                
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      *+fp(2),ar2           ; |699| 
        ldiu      @CL77,r0              ; |699| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |699| 
                                        ; |699| Far Call Occurs
        sti       r0,*+fp(3)            ; |699| 
	.line	15
;----------------------------------------------------------------------
; 700 | i |= FLASH_WRITE_BLK(d, m, FLASH_CFG_SIZE);                            
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,r3              ; |700| 
        ldp       @CL78,DP
        ldiu      *+fp(2),ar2           ; |700| 
        ldiu      *+fp(4),r2            ; |700| 
        ldiu      @CL78,r0              ; |700| 
        callu     r0                    ; far call to _FLASH_WRITE_BLK	; |700| 
                                        ; |700| Far Call Occurs
        or        *+fp(3),r0            ; |700| 
        sti       r0,*+fp(3)            ; |700| 
	.line	17
;----------------------------------------------------------------------
; 702 | return i;                                                              
;----------------------------------------------------------------------
	.line	18
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1            ; |703| 
        ldiu      *fp,fp                ; |703| 
                                        ; Unallocate the Frame
        subi      6,sp                  ; |703| 
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	703,000000000h,4


	.sect	 ".text"

	.global	_Process_Restore_Factory_Defaults
	.sym	_Process_Restore_Factory_Defaults,_Process_Restore_Factory_Defaults,32,2,0
	.func	705
;******************************************************************************
;* FUNCTION NAME: _Process_Restore_Factory_Defaults                           *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Process_Restore_Factory_Defaults:
	.sym	_r,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 705 | void Process_Restore_Factory_Defaults(void)                            
; 707 | unsigned int r;                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 709 | LEDR_ON; LEDG_OFF;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |709| 
        ldiu      127,r0                ; |709| 
        and3      r0,*ar0,r0            ; |709| 
        sti       r0,*ar0               ; |709| 
	pop		ST			
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |709| 
        or3       r0,*ar0,r0            ; |709| 
        sti       r0,*ar0               ; |709| 
	pop		ST			
	.line	6
;----------------------------------------------------------------------
; 710 | r = Copy_Block((unsigned int*)FLASH_LOC_CFG_FACTORY, (unsigned int*)FLA
;     | SH_LOC_CFG1);                                                          
;----------------------------------------------------------------------
        ldp       @CL85,DP
        ldiu      @CL85,ar2             ; |710| 
        ldp       @CL73,DP
        ldiu      @CL73,r2              ; |710| 
        ldp       @CL86,DP
        ldiu      @CL86,r0              ; |710| 
        callu     r0                    ; far call to _Copy_Block	; |710| 
                                        ; |710| Far Call Occurs
        sti       r0,*+fp(1)            ; |710| 
	.line	7
;----------------------------------------------------------------------
; 711 | r = Copy_Block((unsigned int*)FLASH_LOC_CFG_FACTORY, (unsigned int*)FLA
;     | SH_LOC_CFG2);                                                          
;----------------------------------------------------------------------
        ldp       @CL85,DP
        ldiu      @CL85,ar2             ; |711| 
        ldp       @CL87,DP
        ldiu      @CL87,r2              ; |711| 
        ldp       @CL86,DP
        ldiu      @CL86,r0              ; |711| 
        callu     r0                    ; far call to _Copy_Block	; |711| 
                                        ; |711| Far Call Occurs
        sti       r0,*+fp(1)            ; |711| 
	.line	9
;----------------------------------------------------------------------
; 713 | if (r)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |713| 
        beq       L194                  ; |713| 
;*      Branch Occurs to L194           ; |713| 
	.line	11
;----------------------------------------------------------------------
; 715 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |715| 
        ldiu      @CL70,r0              ; |715| 
        callu     r0                    ; far call to _MB_exception	; |715| 
                                        ; |715| Far Call Occurs
	.line	12
;----------------------------------------------------------------------
; 716 | return;                                                                
;----------------------------------------------------------------------
        bu        L195                  ; |716| 
;*      Branch Occurs to L195           ; |716| 
L194:        
	.line	15
;----------------------------------------------------------------------
; 719 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |719| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |719| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |719| 
        ldiu      @CL19,ar2             ; |719| 
        callu     r0                    ; far call to _Put	; |719| 
                                        ; |719| Far Call Occurs
	.line	16
;----------------------------------------------------------------------
; 720 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |720| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |720| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |720| 
        ldiu      @CL19,ar2             ; |720| 
        callu     r0                    ; far call to _Put	; |720| 
                                        ; |720| Far Call Occurs
L195:        
	.line	17
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	721,000000000h,1


	.sect	 ".text"

	.global	_Process_Erase_Cfg
	.sym	_Process_Erase_Cfg,_Process_Erase_Cfg,32,2,0
	.func	723
;******************************************************************************
;* FUNCTION NAME: _Process_Erase_Cfg                                          *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,ar0,ar2                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Process_Erase_Cfg:
	.sym	_i,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 723 | void Process_Erase_Cfg(void)                                           
; 725 | unsigned int i;                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 727 | LEDR_ON; LEDG_OFF;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |727| 
        ldiu      127,r0                ; |727| 
        and3      r0,*ar0,r0            ; |727| 
        sti       r0,*ar0               ; |727| 
	pop		ST			
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |727| 
        or3       r0,*ar0,r0            ; |727| 
        sti       r0,*ar0               ; |727| 
	pop		ST			
	.line	6
;----------------------------------------------------------------------
; 728 | FLASH_ERASE_BLK((unsigned int*)FLASH_LOC_CFG_FACTORY);                 
;----------------------------------------------------------------------
        ldp       @CL85,DP
        ldiu      @CL85,ar2             ; |728| 
        ldp       @CL77,DP
        ldiu      @CL77,r0              ; |728| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |728| 
                                        ; |728| Far Call Occurs
	.line	7
;----------------------------------------------------------------------
; 729 | FLASH_ERASE_BLK((unsigned int*)FLASH_LOC_CFG1);                        
;----------------------------------------------------------------------
        ldp       @CL73,DP
        ldiu      @CL73,ar2             ; |729| 
        ldp       @CL77,DP
        ldiu      @CL77,r0              ; |729| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |729| 
                                        ; |729| Far Call Occurs
	.line	8
;----------------------------------------------------------------------
; 730 | FLASH_ERASE_BLK((unsigned int*)FLASH_LOC_CFG2);                        
;----------------------------------------------------------------------
        ldp       @CL87,DP
        ldiu      @CL87,ar2             ; |730| 
        ldp       @CL77,DP
        ldiu      @CL77,r0              ; |730| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |730| 
                                        ; |730| Far Call Occurs
	.line	10
;----------------------------------------------------------------------
; 732 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |732| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |732| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |732| 
        ldiu      *ar0,r2               ; |732| 
        callu     r0                    ; far call to _Put	; |732| 
                                        ; |732| Far Call Occurs
	.line	11
;----------------------------------------------------------------------
; 733 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |733| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |733| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |733| 
        ldiu      @CL19,ar2             ; |733| 
        callu     r0                    ; far call to _Put	; |733| 
                                        ; |733| Far Call Occurs
	.line	12
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	734,000000000h,1


	.sect	 ".text"

	.global	_Process_Erase_Scratchpad
	.sym	_Process_Erase_Scratchpad,_Process_Erase_Scratchpad,32,2,0
	.func	736
;******************************************************************************
;* FUNCTION NAME: _Process_Erase_Scratchpad                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r1,r2,ar0,ar2,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Process_Erase_Scratchpad:
	.sym	_m,1,30,1,32
	.sym	_i,2,14,1,32
	.line	1
;----------------------------------------------------------------------
; 736 | void Process_Erase_Scratchpad(void)                                    
; 738 | unsigned int* m;                                                       
; 739 | unsigned int i;                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	6
;----------------------------------------------------------------------
; 741 | m = (unsigned int*) MEM_LOC;                                           
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,r0              ; |741| 
        sti       r0,*+fp(1)            ; |741| 
	.line	7
;----------------------------------------------------------------------
; 742 | for (i=0;i<FLASH_SECTOR_SIZE;i++)                                      
;----------------------------------------------------------------------
        ldiu      0,r0                  ; |742| 
        sti       r0,*+fp(2)            ; |742| 
        ldiu      r0,r1
        ldp       @CL72,DP
        cmpi      @CL72,r1              ; |742| 
        bhs       L202                  ; |742| 
;*      Branch Occurs to L202           ; |742| 
L201:        
	.line	8
;----------------------------------------------------------------------
; 743 | m[i] = 0x00000000;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0           ; |743| 
        ldiu      *+fp(2),ar0           ; |743| 
        sti       r0,*+ar0(ir0)         ; |743| 
	.line	7
        ldiu      1,r1                  ; |742| 
        addi      *+fp(2),r1            ; |742| Unsigned
        sti       r1,*+fp(2)            ; |742| 
        ldp       @CL72,DP
        cmpi      @CL72,r1              ; |742| 
        blo       L201                  ; |742| 
;*      Branch Occurs to L201           ; |742| 
L202:        
	.line	10
;----------------------------------------------------------------------
; 745 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |745| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |745| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |745| 
        ldiu      @CL19,ar2             ; |745| 
        callu     r0                    ; far call to _Put	; |745| 
                                        ; |745| Far Call Occurs
	.line	11
;----------------------------------------------------------------------
; 746 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |746| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |746| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |746| 
        ldiu      @CL19,ar2             ; |746| 
        callu     r0                    ; far call to _Put	; |746| 
                                        ; |746| Far Call Occurs
	.line	12
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      4,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	747,000000000h,2


	.sect	 ".text"

	.global	_Process_Store_Scratchpad
	.sym	_Process_Store_Scratchpad,_Process_Store_Scratchpad,32,2,0
	.func	749
;******************************************************************************
;* FUNCTION NAME: _Process_Store_Scratchpad                                   *
;*                                                                            *
;*   Architecture       : TMS320C33                                           *
;*   Calling Convention : TI Standard Register Parameters                     *
;*   Function Uses Regs : r0,r2,r3,ar0,ar2,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 5 Auto + 0 SOE = 7 words          *
;******************************************************************************
_Process_Store_Scratchpad:
;* ar2   assigned to _addr
	.sym	_addr,10,14,17,32
	.sym	_addr,1,14,1,32
	.sym	_m,2,30,1,32
	.sym	_f,3,30,1,32
	.sym	_i,4,14,1,32
	.sym	_SIZE,5,14,1,32
	.line	1
;----------------------------------------------------------------------
; 749 | void Process_Store_Scratchpad(unsigned int addr)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
;----------------------------------------------------------------------
; 751 | unsigned int* m;                                                       
; 752 | unsigned int* f;                                                       
; 753 | unsigned int i;                                                        
; 754 | unsigned int SIZE;                                                     
;----------------------------------------------------------------------
        sti       ar2,*+fp(1)           ; |750| 
	.line	8
;----------------------------------------------------------------------
; 756 | m = (unsigned int*) MEM_LOC;                                           
;----------------------------------------------------------------------
        ldp       @CL71,DP
        ldiu      @CL71,r0              ; |756| 
        sti       r0,*+fp(2)            ; |756| 
	.line	9
;----------------------------------------------------------------------
; 757 | f = (unsigned int*) addr;                                              
;----------------------------------------------------------------------
        ldiu      ar2,r0
        sti       r0,*+fp(3)            ; |757| 
	.line	11
;----------------------------------------------------------------------
; 759 | if ( f < (FLASH_LOC+FLASH_SECTOR_SIZE) )                               
;----------------------------------------------------------------------
        ldp       @CL73,DP
        cmpi      @CL73,r0              ; |759| 
        bhs       L207                  ; |759| 
;*      Branch Occurs to L207           ; |759| 
	.line	13
;----------------------------------------------------------------------
; 761 | SIZE = FLASH_CFGB_SIZE;                                                
;----------------------------------------------------------------------
        ldiu      4096,r0               ; |761| 
        sti       r0,*+fp(5)            ; |761| 
	.line	14
;----------------------------------------------------------------------
; 762 | f = (unsigned int*)((unsigned int)f & 0xFFF000);                       
; 764 | else                                                                   
;----------------------------------------------------------------------
        ldp       @CL74,DP
        ldiu      @CL74,r0              ; |762| 
        and       *+fp(3),r0            ; |762| 
        sti       r0,*+fp(3)            ; |762| 
        bu        L208                  ; |748| 
;*      Branch Occurs to L208           ; |748| 
L207:        
	.line	18
;----------------------------------------------------------------------
; 766 | SIZE = FLASH_SECTOR_SIZE;                                              
;----------------------------------------------------------------------
        ldp       @CL72,DP
        ldiu      @CL72,r0              ; |766| 
        sti       r0,*+fp(5)            ; |766| 
	.line	19
;----------------------------------------------------------------------
; 767 | f = (unsigned int*)((unsigned int)f & 0xFF8000);                       
;----------------------------------------------------------------------
        ldp       @CL75,DP
        ldiu      @CL75,r0              ; |767| 
        and       *+fp(3),r0            ; |767| 
        sti       r0,*+fp(3)            ; |767| 
L208:        
	.line	22
;----------------------------------------------------------------------
; 770 | LEDR_ON; LEDG_OFF;                                                     
;----------------------------------------------------------------------
	push	ST			
	andn	2000h, ST	
        ldp       @CL76,DP
        ldiu      @CL76,ar0             ; |770| 
        ldiu      127,r0                ; |770| 
        and3      r0,*ar0,r0            ; |770| 
        sti       r0,*ar0               ; |770| 
	pop		ST			
	push	ST			
	andn	2000h, ST	
        ldiu      64,r0                 ; |770| 
        or3       r0,*ar0,r0            ; |770| 
        sti       r0,*ar0               ; |770| 
	pop		ST			
	.line	23
;----------------------------------------------------------------------
; 771 | i = FLASH_ERASE_BLK(f);                                                
;----------------------------------------------------------------------
        ldp       @CL77,DP
        ldiu      *+fp(3),ar2           ; |771| 
        ldiu      @CL77,r0              ; |771| 
        callu     r0                    ; far call to _FLASH_ERASE_BLK	; |771| 
                                        ; |771| Far Call Occurs
        sti       r0,*+fp(4)            ; |771| 
	.line	24
;----------------------------------------------------------------------
; 772 | i |= FLASH_WRITE_BLK(f, m, SIZE);                                      
;----------------------------------------------------------------------
        ldp       @CL78,DP
        ldiu      @CL78,r0              ; |772| 
        ldiu      *+fp(3),ar2           ; |772| 
        ldiu      *+fp(2),r2            ; |772| 
        ldiu      *+fp(5),r3            ; |772| 
        callu     r0                    ; far call to _FLASH_WRITE_BLK	; |772| 
                                        ; |772| Far Call Occurs
        or        *+fp(4),r0            ; |772| 
        sti       r0,*+fp(4)            ; |772| 
	.line	26
;----------------------------------------------------------------------
; 774 | if (i)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0                  ; |774| 
        beq       L210                  ; |774| 
;*      Branch Occurs to L210           ; |774| 
	.line	28
;----------------------------------------------------------------------
; 776 | MB_exception(mb_excp_memory_error);                                    
;----------------------------------------------------------------------
        ldp       @CL70,DP
        ldiu      8,ar2                 ; |776| 
        ldiu      @CL70,r0              ; |776| 
        callu     r0                    ; far call to _MB_exception	; |776| 
                                        ; |776| Far Call Occurs
	.line	29
;----------------------------------------------------------------------
; 777 | return;                                                                
;----------------------------------------------------------------------
        bu        L211                  ; |777| 
;*      Branch Occurs to L211           ; |777| 
L210:        
	.line	32
;----------------------------------------------------------------------
; 780 | Put(&PORT.TXbuf, (int)PORT.Slave_ID);                           /* slav
;     | e */                                                                   
;----------------------------------------------------------------------
        ldp       @CL33,DP
        ldiu      @CL33,ar0             ; |780| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |780| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |780| 
        ldiu      @CL19,ar2             ; |780| 
        callu     r0                    ; far call to _Put	; |780| 
                                        ; |780| Far Call Occurs
	.line	33
;----------------------------------------------------------------------
; 781 | Put(&PORT.TXbuf, PORT.func);
;     |  /* function */                                                        
;----------------------------------------------------------------------
        ldp       @CL26,DP
        ldiu      @CL26,ar0             ; |781| 
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |781| 
        ldp       @CL19,DP
        ldiu      *ar0,r2               ; |781| 
        ldiu      @CL19,ar2             ; |781| 
        callu     r0                    ; far call to _Put	; |781| 
                                        ; |781| Far Call Occurs
	.line	34
;----------------------------------------------------------------------
; 782 | Put(&PORT.TXbuf, ((unsigned int)f)>>24);                               
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      *+fp(3),r2            ; |782| 
        ldiu      @CL60,r0              ; |782| 
        lsh       -24,r2                ; |782| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |782| 
        callu     r0                    ; far call to _Put	; |782| 
                                        ; |782| Far Call Occurs
	.line	35
;----------------------------------------------------------------------
; 783 | Put(&PORT.TXbuf, ((unsigned int)f)>>16);                               
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |783| 
        ldiu      *+fp(3),r2            ; |783| 
        lsh       -16,r2                ; |783| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |783| 
        callu     r0                    ; far call to _Put	; |783| 
                                        ; |783| Far Call Occurs
	.line	36
;----------------------------------------------------------------------
; 784 | Put(&PORT.TXbuf, ((unsigned int)f)>>8);                                
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |784| 
        ldiu      *+fp(3),r2            ; |784| 
        lsh       -8,r2                 ; |784| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |784| 
        callu     r0                    ; far call to _Put	; |784| 
                                        ; |784| Far Call Occurs
	.line	37
;----------------------------------------------------------------------
; 785 | Put(&PORT.TXbuf, ((unsigned int)f));                                   
;----------------------------------------------------------------------
        ldp       @CL60,DP
        ldiu      @CL60,r0              ; |785| 
        ldp       @CL19,DP
        ldiu      @CL19,ar2             ; |785| 
        ldiu      *+fp(3),r2            ; |785| 
        callu     r0                    ; far call to _Put	; |785| 
                                        ; |785| Far Call Occurs
L211:        
	.line	38
                                        ; Begin Epilog Code
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
                                        ; Unallocate the Frame
        subi      7,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	786,000000000h,5


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

	.sect	".cinit"
	.field  	87,32
	.field  	CL1+0,32
	.field  	_Setup_UART,32
	.field  	_PORT+7,32
	.field  	_WDOG_P,32
	.field  	_PORT+8,32
	.field  	_MODBUS_RX_ID,32
	.field  	_TIMER1_COUNTER,32
	.field  	_PORT+1,32
	.field  	_PORT+6,32
	.field  	_PORT+4129,32
	.field  	_Clear_RX,32
	.field  	_HW_VER,32
	.field  	9437202,32
	.field  	_UART,32
	.field  	_BOOTPORT,32
	.field  	_TX_P1,32
	.field  	_PORT+3,32
	.field  	_TX_S,32
	.field  	_UART+1,32
	.field  	_PORT+12,32
	.field  	_Get,32
	.field  	_PORT+9,32
	.field  	_PORT+4134,32
	.field  	_PORT+4132,32
	.field  	_PORT+8247,32
	.field  	_MODBUS_RX_FUNCTION,32
	.field  	_PORT+10,32
	.field  	_MODBUS_RX_nDATA,32
	.field  	_MODBUS_RX_CRC,32
	.field  	_MODBUS_RX_nw,32
	.field  	_MODBUS_RX_n,32
	.field  	SW0,32
	.field  	_PORT+8246,32
	.field  	_PORT+11,32
	.field  	_PORT+4133,32
	.field  	_PORT+4136,32
	.field  	_PORT+4137,32
	.field  	_PORT+4138,32
	.field  	_PORT+4139,32
	.field  	_PORT+4140,32
	.field  	_PORT+4141,32
	.field  	_Clear,32
	.field  	9437188,32
	.field  	_Exit_to_App,32
	.field  	115200,32
	.field  	38400,32
	.field  	57600,32
	.field  	_Process_Restore_Factory_Defaults,32
	.field  	_Process_Store_Scratchpad,32
	.field  	_Process_Erase_Scratchpad,32
	.field  	_Process_Erase_Cfg,32
	.field  	_Process_Read_ESN,32
	.field  	_Process_Write_ESN,32
	.field  	_Process_Read,32
	.field  	_PORT+4142,32
	.field  	_Process_Write_Scratchpad,32
	.field  	_Process_Write,32
	.field  	_Process_Set_Entry_Point,32
	.field  	SW1,32
	.field  	_PORT+15,32
	.field  	_Put,32
	.field  	_UART+2,32
	.field  	_TX_P,32
	.field  	_PORT+2,32
	.field  	_FLASH_SIZE,32
	.field  	4194304,32
	.field  	8388608,32
	.field  	8421376,32
	.field  	8427520,32
	.field  	8429568,32
	.field  	_MB_exception,32
	.field  	10485760,32
	.field  	32768,32
	.field  	4227072,32
	.field  	16773120,32
	.field  	16744448,32
	.field  	9437203,32
	.field  	_FLASH_ERASE_BLK,32
	.field  	_FLASH_WRITE_BLK,32
	.field  	_ESN,32
	.field  	_FLASH_WRITE_ESN_USER,32
	.field  	_ESN+4,32
	.field  	_FLASH_READ_ESN_USER,32
	.field  	4194304,32
	.field  	4198400,32
	.field  	4292608,32
	.field  	_Copy_Block,32
	.field  	4259840,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_Clear

	.global	_Put

	.global	_Get

	.global	_FLASH_SIZE

	.global	_FLASH_ERASE_BLK

	.global	_FLASH_WRITE_BLK

	.global	_FLASH_READ_ESN_USER

	.global	_FLASH_WRITE_ESN_USER

	.global	_PORT

	.global	_UART

	.global	_Setup_UART

	.global	_Clear_RX

	.global	_ESN

	.global	_HW_VER

	.global	_Exit_to_App

	.global	_BOOTPORT

	.global	_TIMER1_COUNTER
	.global	MPY_K30
