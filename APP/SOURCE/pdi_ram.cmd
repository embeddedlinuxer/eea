/***************************************************************************/
/* (c) 2007 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

MEMORY
{
	BOOT	       : origin = 0x00400000, length = 0x00001FFF
	APP_VECT       : origin = 0x00401FFF, length = 0x00000001
	CCM_RPT		   : origin = 0x00402000, length = 0x00002000
	FC_LOG		   : origin = 0x00404000, length = 0x00004000

	FLASH_CF1      : origin = 0x00408000, length = 0x00007FFF
	FLASH_CU1      : origin = 0x0040FFFF, length = 0x00000001
	FLASH_CF2      : origin = 0x00410000, length = 0x00007FFF
	FLASH_CU2      : origin = 0x00417FFF, length = 0x00000001
	FLASH_FCTRY    : origin = 0x00418000, length = 0x00007FFF
	FLASH_C1       : origin = 0x0041FFFF, length = 0x00000001
	FLASH_INIT     : origin = 0x00420000, length = 0x00008000
	FLASH_FAST     : origin = 0x00428000, length = 0x00008000
	FLASH_AP       : origin = 0x00430000, length = 0x00020000
	FLASH          : origin = 0x00450000, length = 0x003B0000

	INRAM23        : origin = 0x00800000, length = 0x00008000

	BOOTSTK        : origin = 0x00809800, length = 0x00000002
	INRAM01        : origin = 0x00809802, length = 0x000007BF

	BRTABLE        : origin = 0x00809FC1, length = 0x0000003F

	EXRAM_CFG      : origin = 0x00A00000, length = 0x00007FFF
	EXRAM_C1       : origin = 0x00A07FFF, length = 0x00000001

	EXRAM_EX       : origin = 0x00A08000, length = 0x00030000

	SPAD_EEA       : origin = 0x00A38000, length = 0x00007FFF
	SPAD_CRC1      : origin = 0x00A3FFFF, length = 0x00000001

	SPAD_SA        : origin = 0x00B00000, length = 0x00007FFF
	SPAD_CRC2      : origin = 0x00B07FFF, length = 0x00000001

	UART_EX        : origin = 0x00C00000, length = 0x00008000
}

SECTIONS
{
	"initialization_TOP"	> EXRAM_EX

	"interrupt_routines" 	> INRAM23
	"internal_RAM"		 	> INRAM23

	.text		 			> EXRAM_EX
	.const  				> EXRAM_EX
	"TABLES"  				> EXRAM_EX

	.bss	  				> EXRAM_EX
	.sysmem					> INRAM23

	.stack	  				> INRAM01

	"initialization"	 	> EXRAM_EX
	"application_vector" 	> EXRAM_EX
	"branch_table" 			> EXRAM_EX
	.cinit	  				> EXRAM_EX

	"CFG"	  				> EXRAM_CFG

	"UART_ADDR"				> UART_EX
}
