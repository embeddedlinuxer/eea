        .length 85
        .width  132
***************************************************************************
* (c) 2004 Phase Dynamics, Inc.                                           *
* Phase Dynamics, Inc.                                                    *
* 1251 Columbia Dr.                                                       *
* Richardson, TX 75081                                                    *
* 972-680-1550    972-680-3262 fax                                        *
***************************************************************************
FP          .set  AR3             ;frame pointer

            .global cinit
            .global .bss
            .global _cmdargs
            .global _exit
            .global _init_io
            .global _main
            .global _main1
            .global _c_int00
		    .global __stack
            .global _call_to_main
            .global _BT
            .global _BTCOPY
            .global C$$EXIT
;
; Allocate space for the system stack.
; Initialize the first words in .text to point to the stack
; and initialization tables.
;
__stack     .usect  ".stack",0
            .text
stack_addr  .word  __stack        ;address of stack
init_addr   .word  cinit          ;address of init tables

***************************************************************
* _C_INT00 - C entry point function
***************************************************************
            .sect "init_top"
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

;
; Do autoinitialization
;
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
        LDI     0,AR2             ;make sure argc=0 with register 
        PUSH    AR2               ;and stack parameter passing
_call_to_main:
        CALL    _main

C$$EXIT: nop
		BR		C$$EXIT

        RETI

            .sect "varlocs"
			.word _main1
			.word _call_to_main
			.word _BTCOPY
			.word _BT

        .end
