        .length 85
        .width  132
*****************************************************************************
* Phase Dynamics, Inc.							    						*
* 1251 Columbia Dr.                                                     	*
* Richardson, TX 75081                                                  	*
* 972-680-1550    972-680-3262 fax                                      	*
*									    									*
* (C)2011 Phase Dynamics, Inc.						    					*
* This code is not to be used in any capacity without explicit consent by  	*
* Phase Dynamics, Inc.  Violators will be prosecuted to the fullest extent 	*
* of the law.  Please contact Phase Dynamics, Inc. if you wish to use this 	*
* code.  Thank you for your cooperation.                                   	*
*									    									*
* File Name: boot.asm						    							*
* 									    									*
* File Description:	This is the first file that gets executed.  It sets up	*
* the stack, initializes the Hardware (by extension the variables) and then *
* calls main.  Really it just sits there and waits for TINT0 to run the next*
* timed event.								    							*
*									    									*
*****************************************************************************
FP          .set  	AR3             ;frame pointer

            .global cinit
            .global .bss
            .global _cmdargs
            .global _exit_APP
            .global _init_io
            .global _main
            .global _c_int00
		    .global __stack
            .global _Initialize_Hardware
            .global _call_to_main
            .global C$$DONE
;
; Allocate space for the system stack.
; Initialize the first words in .text to point to the stack
; and initialization tables.
;
__stack     .usect  ".stack",0

            .sect  "initialization_TOP"
***************************************************************
* _C_INT00 - C entry point function
***************************************************************
_c_int00:

;
; Disable all interrupts
;
        RPTS    1
        ANDN    2000, ST
        NOP
        NOP
        NOP

        MAXSPEED

;
; Set up the initial stack pointer
;
        LDP     stack_addr        ;get page of stored address
        LDI     @stack_addr,SP    ;load the address into SP
        LDI     SP,FP             ;and into FP too

        LDP     init_addr         ;get page of stored address
        LDI     @init_addr,AR0    ;get address of init tables
        CMPI    -1,AR0            ;if RAM model, skip init
        BEQ     done

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Mirror the "fast code" spaces
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        LDP     _c_int00,R0       ;get page of entry routine
		LSH		-6,R0
		CMPI	1,R0			  ;check if address is between 0x400000 & 0x600000
		BNE		auto_init

        LDP     s_fast_code
        LDI     @s_fast_code,AR0
        LDP     d_fast_code
        LDI     @d_fast_code,AR1
        LDI     7FFFh,R1          ;length-1
        LDI     *AR0++,R0         ;get first word
        RPTS    R1                ;block copy
        LDI     *AR0++,R0
    ||  STI     R0,*AR1++
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

auto_init:
        LDP     init_addr         ;get page of stored address
        LDI     @init_addr,AR0    ;get address of init tables
        CMPI    -1,AR0            ;if RAM model, skip init
        BEQ     done

        LDI     *AR0++,R1         ;get first count
        BZD     done              ;if 0, nothing to do
        LDI     *AR0++,AR1        ;get dest address
        LDI     *AR0++,R0         ;get first word
        SUBI    1,R1              ;count - 1
do_init:
        RPTS    R1                ;block copy
        STI     R0,*AR1++
    ||  LDI     *AR0++,R0
        LDI     R0,R1             ;move next count into R1
        BNZD    do_init           ;if there is more, repeat
        LDI     *AR0++,AR1        ;get next dest address
        LDI     *AR0++,R0         ;get next first word
        SUBI    1,R1              ;count - 1

done:

_init_hw:
        LDI     0,AR2             ;make sure argc=0 with register 
        PUSH    AR2               ;and stack parameter passing
        CALL    _Initialize_Hardware

_call_to_main:
        LDI     0,AR2             ;make sure argc=0 with register 
        PUSH    AR2               ;and stack parameter passing
        CALL    _main


C$$DONE:nop
		BR		C$$DONE

        RETI

stack_addr  .word  __stack        ;address of stack
init_addr   .word  cinit          ;address of init tables

s_fast_code	.word  00428000h	  ;address of FLASH copy of code
d_fast_code	.word  00800000h	  ;address of SRAM  copy of code
        .end
