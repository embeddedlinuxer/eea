/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

MEMORY
{
	BOOTMIRROR : origin = 0x00800000, length = 0x00001FB0
	INTRAM     : origin = 0x00802000, length = 0x00001000
	INTRAM23   : origin = 0x00803000, length = 0x00005000

	BOOTSTK    : origin = 0x00809800, length = 0x00000002
	INTRAM01   : origin = 0x00809802, length = 0x000007BF

	BRTABLE    : origin = 0x00809FC1, length = 0x0000003F

	UART_EX    : origin = 0x00C00000, length = 0x00008000
}

SECTIONS
{
	"init_top"			 	> BOOTMIRROR
	.text	  				> BOOTMIRROR
	.cinit	  				> BOOTMIRROR
	"interrupt_routines" 	> BOOTMIRROR
	"branch_table_copy" 	> BOOTMIRROR
	.const  				> BOOTMIRROR
	"external_RAM"  		> BOOTMIRROR
	"internal_RAM"  		> BOOTMIRROR

	.bss	  				> INTRAM23
	.sysmem					> INTRAM23
	.stack	  				> INTRAM01

	"branch_table" 			> BRTABLE

	"varlocs"				> INTRAM
	"copytoflash"			> INTRAM

	"UART_ADDR"				> UART_EX
}
