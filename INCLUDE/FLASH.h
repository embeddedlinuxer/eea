/****************************************************************************/
/* Phase Dynamics, Inc.							    						*/
/* 1251 Columbia Dr.                                                        */
/* Richardson, TX 75081                                                     */
/* 972-680-1550    972-680-3262 fax                                         */
/*									    									*/
/* (C)2011 Phase Dynamics, Inc.						    					*/
/* This code is not to be used in any capacity without explicit consent by  */
/* Phase Dynamics, Inc.  Violators will be prosecuted to the fullest extent */
/* of the law.  Please contact Phase Dynamics, Inc. if you wish to use this */
/* code.  Thank you for your cooperation.                                   */
/*									    									*/
/* File Name: FLASH.H						    							*/
/* 									    									*/
/* File Description:  This header file defines the locations of the memory. */
/* It manages the flash addresses, errors, and commands.  Also declares		*/
/* function prototypes.								    					*/
/*									    									*/
/****************************************************************************/

#ifndef _FLASH
#define _FLASH

#ifdef FLASH_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

/* boot table */
#define FLASH_LOC     			((unsigned int*)0x400000)
#define FLASH_LOC_BOOT FLASH_LOC
#define FLASH_BOOT_SIZE			0x00002000
#define FLASH_ENTRY_POINT_APP 	0x1FFF	/* last word of the boot block is the vector to execute */
#define FLASH_CFGB_SIZE			0x00001000

/* config table */
#define FLASH_LOC_CFG1			((unsigned int*)0x408000)
#define FLASH_LOC_CFG2 			((unsigned int*)0x410000)
#define FLASH_LOC_CFG_FACTORY	((unsigned int*)0x418000)
#define FLASH_LOC_CCM_RPT		((unsigned int*)0x402000)
#define FLASH_LOC_FC_LOG		((unsigned int*)0x404000)
#define SRAM_LOC_CFG			((unsigned int*)0xA00000)
_EXTERN unsigned int* SRAM_SCRATCHPAD;
#define SRAM_SCRATCHPAD_EEA		((unsigned int*)0xA38000)
#define SRAM_SCRATCHPAD_SA		((unsigned int*)0xB00000)	/* support for board 2000-00054-xxx */
#define SRAM_SCRATCHPAD_SIZE	0x00008000
#define FLASH_CFG_SIZE			0x00008000

/* code */
#define SRAM_LOC_FAST			((unsigned int*)0x800000)
#define FLASH_LOC_INIT 			((unsigned int*)0x460000)	//needed more MEM for RUSSTBLES
	//#define FLASH_LOC_INIT 		((unsigned int*)0x450000)
#define FLASH_LOC_FAST 			((unsigned int*)0x428000)
#define FLASH_LOC_APP  			((unsigned int*)0x430000)
#define FLASH_SECTOR_SIZE		0x00008000
#define FLASH_FAST_SIZE			0x00008000
#define FLASH_APP_SIZE			0x00030000	//needed more MEM for RUSSTBLES
	//#define FLASH_APP_SIZE		0x00020000
#define FLASH_INIT_SIZE			0x00010000
#define FLASH_MAX_SIZE			0x00400000

#define FLASH_LOC_LOG			((unsigned int*)0x470000)	//needed more MEM for RUSSTBLES
	//#define FLASH_LOC_LOG			((unsigned int*)0x460000)

/* errors */
#define FLASH_ERROR_VPP 		0x01
#define FLASH_ERROR_PROG		0x02
#define FLASH_ERROR_LOCKED		0x04
#define FLASH_ERROR_BLK_ERASE	0x08
#define FLASH_ERROR_CMD_SEQ		0x10
#define FLASH_ERROR_BLKADDR		0x20

/* COMMANDS (first cycle) */
#define READ_ARRAY			0x00FF00FF
#define	READ_CONFIG			0x00900090
#define READ_QUERY			0x00980098
#define READ_STATUS			0x00700070
#define CLEAR_STATUS		0x00500050
#define PROGRAM				0x00400040
#define PROGRAM_ALT			0x00100010
#define BLOCK_ERASE			0x00200020
#define PROG_ERASE_SUSPEND	0x00B000B0
#define PROG_ERASE_RESUME	0x00D000D0
#define BLOCK_LOCK			0x00600060
#define PROTECT_PROG		0x00C000C0

/* COMMANDS (second cycle) */
#define BLOCK_ERASE_CONFIRM	0x00D000D0
#define BLOCK_LOCK_LOCK		0x00010001
#define BLOCK_LOCK_UNLOCK	0x00D000D0
#define BLOCK_LOCK_LOCKDOWN	0x002F002F

#ifdef FLASH_H
#pragma CODE_SECTION(FLASH_SIZE,"internal_RAM")
#pragma CODE_SECTION(FLASH_CHECK_ADDR,"internal_RAM")
#pragma CODE_SECTION(FLASH_LOCK_BLK,"internal_RAM")
#pragma CODE_SECTION(FLASH_ERASE_BLK,"internal_RAM")
#pragma CODE_SECTION(FLASH_WRITE_BLK,"internal_RAM")
#pragma CODE_SECTION(FLASH_STATUS,"internal_RAM")
#pragma CODE_SECTION(FLASH_READ_ESN_MFGR,"internal_RAM")
#pragma CODE_SECTION(FLASH_READ_ESN_USER,"internal_RAM")
#pragma CODE_SECTION(FLASH_WRITE_ESN_USER,"internal_RAM")
#pragma CODE_SECTION(FLASH_LOCK_ESN_USER,"internal_RAM")
#endif

_EXTERN unsigned int FLASH_SIZE(void);
_EXTERN int FLASH_CHECK_ADDR(unsigned int* addr, unsigned int n);
_EXTERN int FLASH_LOCK_BLK(unsigned int* addr, int lock);
_EXTERN int FLASH_ERASE_BLK(unsigned int* addr);
_EXTERN int FLASH_WRITE_BLK(unsigned int* addr, unsigned int* data, unsigned int n);
_EXTERN int FLASH_STATUS(void);
_EXTERN void FLASH_READ_ESN_MFGR(unsigned int* dat);
_EXTERN void FLASH_READ_ESN_USER(unsigned int* dat);
_EXTERN int FLASH_WRITE_ESN_USER(unsigned int* dat);
_EXTERN int FLASH_LOCK_ESN_USER(void);

#undef _EXTERN
#undef FLASH_H
#endif
