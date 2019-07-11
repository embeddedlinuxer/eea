/****************************************************************************/
/* Phase Dynamics, Inc.							    						*/
/* 1251 Columbia Dr.                                                        */
/* Richardson, TX 75081                                                     */
/* 972-680-1550    972-680-3262 fax                                         */
/*									    									*/
/* (C)2015 Phase Dynamics, Inc.						    					*/
/* This code is not to be used in any capacity without explicit consent by  */
/* Phase Dynamics, Inc.  Violators will be prosecuted to the fullest extent */
/* of the law.  Please contact Phase Dynamics, Inc. if you wish to use this */
/* code.  Thank you for your cooperation.                                   */
/*									    									*/
/* File Name: MODBUSRTU.H					    							*/
/* 									    									*/
/* File Description:  This is the header file for our implementation of the */
/* MODBUS-RTU standard protocol.  It defines the MODBUS functions as well as*/
/* the datatypes that MODBUS uses.  Lastly it defines the function          */
/* prototypes that facilitate MODBUS.			    						*/
/*									    									*/
/****************************************************************************/

#ifndef _MODBUSRTU
#define _MODBUSRTU

#ifdef MODBUSRTU_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

_EXTERN BOOL   MODBUS_CRITICAL_ERROR;

#define EXTENDED_ADDR_LEN 4

#define mb_cmd_r_coil_stat		1
#define mb_cmd_r_input_stat		2
#define mb_cmd_r_hold_reg		3
#define mb_cmd_r_input_reg		4
#define mb_cmd_w_coil			5
#define mb_cmd_w_reg			6
#define mb_cmd_r_exception_stat	7
#define mb_cmd_r_commevent_ctr	11
#define mb_cmd_r_commevent_log	12
#define mb_cmd_w_coils			15
#define mb_cmd_w_regs			16
#define mb_cmd_r_slave_id		17
#define mb_cmd_r_gen_ref		20
#define mb_cmd_w_gen_ref		21
#define mb_cmd_w_mask4x			22
#define mb_cmd_rw_reg4x			23
#define mb_cmd_r_fifo			24
#define mb_cmd_diag				8
#define mb_var_int				0x0100
#define mb_var_f_ABCD			0x0200
#define mb_var_f_CDAB			0x0400
#define mb_var_f_DCBA			0x0800
#define mb_var_f_BADC			0x1000
#define mb_var_long				0x2000

/* user functions (65-72 & 100-110) */
#define mb_cmd_pdi_analyzer_setup 		65
#define mb_cmd_pdi_analyzer_sample		66
#define mb_cmd_pdi_force_slave			67
#define mb_cmd_pdi_force_slave_pipe		68
#define mb_cmd_pdi_memory_read			71
#define mb_cmd_pdi_memory_write			72
#define mb_cmd_pdi_calibrate			100
#define mb_cmd_pdi_unlock				101
#define mb_cmd_pdi_set_time				102

#define mb_excp_illegal_func	1
#define mb_excp_illegal_addr	2
#define mb_excp_illegal_data	3
#define mb_excp_slave_fail		4
#define mb_excp_ack				5
#define mb_excp_slave_busy		6
#define mb_excp_neg_ack			7
#define mb_excp_memory_error	8

/**************************************
 * these are ideal for perfect modbus *
 **************************************/
/*
	#define	DEFAULT_PREFIX		0.0		//enable driver prior to sending
	#define DEFAULT_SUFFIX		0.0		//keeps driver after last character
	#define	DEFAULT_NETWDOG		1.5		//how long to wait to cancel incoming pkt
	#define DEFAULT_EOT			3.5		//how long to wait before sending PREFIX (enable driver)
*/

#define	DEFAULT_PREFIX		1.5
#define DEFAULT_SUFFIX		0.0
#define	DEFAULT_NETWDOG		50.0
#define DEFAULT_EOT			10.0

#define reg_direct_i	 		0x00010000
#define reg_direct_f	 		0x00020000
#define reg_indirect	 		0x00030000		/* check bounds, alarm points of this var, uses VAR update, scale int */
#define reg_indirect_unit		0x00040000
#define reg_direct_bmax 		0x00050000
#define reg_direct_bmin 		0x00060000
#define reg_direct_alarm_hi		0x00070000
#define reg_direct_alarm_lo		0x00080000
#define reg_indirect_calc_unit	0x00090000
#define reg_direct_regvect 		0x000B0000
#define reg_direct_raw_int 		0x000C0000
#define reg_indirect_m	 		0x000D0000		/* locates the indicated register within the HART_DV_TABLE and maps it */
#define reg_indirect_class		0x000E0000

#define coil_direct_bit_00		0x00010000
#define coil_direct_bit_01		0x00020000
#define coil_direct_bit_02		0x00030000
#define coil_direct_bit_03		0x00040000
#define coil_direct_bit_04		0x00050000
#define coil_direct_bit_05		0x00060000
#define coil_direct_bit_06		0x00070000
#define coil_direct_bit_07		0x00080000
#define coil_direct_bit_08		0x00090000
#define coil_direct_bit_09		0x000A0000
#define coil_direct_bit_0A		0x000B0000
#define coil_direct_bit_0B		0x000C0000
#define coil_direct_bit_0C		0x000D0000
#define coil_direct_bit_0D		0x000E0000
#define coil_direct_bit_0E		0x000F0000
#define coil_direct_bit_0F		0x00100000

#define	PROT_U				0x10000000 		/* protection from the user - i.e. you can't use this when locked */
#define	PROT_G				0x20000000
#define PROT_MASK			(PROT_G|PROT_U)
#define DIS_R				0x80000000      /* disables reading from the modbus register ex: security reasons */
#define EN_W				0x40000000		/* write, regardless of protection enabled  - always on/ unlocked */
#define CFGU				0x04000000		/* config memory - to flag the save routine - floppy disk comes up*/

#ifdef MODBUSRTU_H
#pragma CODE_SECTION(Modbus_Initialize,"initialization")
#pragma CODE_SECTION(MODBUS_RX_ID,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_LONG_ADDR,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_FUNCTION,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_n,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_nDATA,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_CRC,"internal_RAM")
#endif

_EXTERN void Modbus_Initialize(int id);
_EXTERN void MODBUS_RX_ID(int id);
_EXTERN void MODBUS_RX_LONG_ADDR(int id);
_EXTERN void MODBUS_RX_FUNCTION(int id);
_EXTERN void MODBUS_RX_n(int id);
_EXTERN void MODBUS_RX_nDATA(int id);
_EXTERN void MODBUS_RX_CRC(int id);

_EXTERN void MB_exception(int id, int ex);
_EXTERN void Process(int id);
_EXTERN void Process_Memory(int id);
_EXTERN void MB_Diag(int id);
_EXTERN void Force_Slave_Pipe(int id);
_EXTERN void Report_Slave_Info(int id);
_EXTERN void MB_Calibrate(int id);

_EXTERN void MB_POLL(int id);
_EXTERN void MB_POLL_0(void);
_EXTERN void MB_POLL_1(void);
_EXTERN void MB_POLL_2(void);
_EXTERN void MB_POLL_3(void);
_EXTERN void MB_POLL_4(void);
_EXTERN void MB_POLL_5(void);
_EXTERN void MB_POLL_6(void);
_EXTERN void MB_POLL_7(void);

_EXTERN void MB_RETRY(int id);
_EXTERN void MB_RETRY_0(void);
_EXTERN void MB_RETRY_1(void);
_EXTERN void MB_RETRY_2(void);
_EXTERN void MB_RETRY_3(void);
_EXTERN void MB_RETRY_4(void);
_EXTERN void MB_RETRY_5(void);
_EXTERN void MB_RETRY_6(void);
_EXTERN void MB_RETRY_7(void);

_EXTERN void MB_Init_Master(int id);
_EXTERN MPKT* Master_Create(int* vect, int n, int slave, int func, int addr, int num, float v);
_EXTERN void MB_RX(int id);
_EXTERN void MB_RX_COR0CFG(int id);
_EXTERN void MB_RX_COR1CFG(int id);
_EXTERN void MB_RX_COR2CFG(int id);
_EXTERN void MB_RX_COR3CFG(int id);
_EXTERN void MB_RX_COR0CFGA(int id);
_EXTERN void MB_RX_COR1CFGA(int id);
_EXTERN void MB_RX_COR2CFGA(int id);
_EXTERN void MB_RX_COR3CFGA(int id); 
_EXTERN void MB_RX_COR0CFGB(int id); /*MM initial Slave address config RS*/     
_EXTERN void MB_RX_COR1CFGB(int id);
_EXTERN void MB_RX_COR2CFGB(int id);
_EXTERN void MB_RX_COR3CFGB(int id); 
_EXTERN void MB_RX_COR4CFGB(int id);
_EXTERN void MB_RX_COR0CFGC(int id); /*Config mass flow unit RS*/   
_EXTERN void MB_RX_COR1CFGC(int id);
_EXTERN void MB_RX_COR2CFGC(int id);
_EXTERN void MB_RX_COR3CFGC(int id);  
_EXTERN void MB_RX_COR0CFGD(int id); /*Config density cutoff RS*/   
_EXTERN void MB_RX_COR1CFGD(int id);
_EXTERN void MB_RX_COR2CFGD(int id);
_EXTERN void MB_RX_COR3CFGD(int id);
_EXTERN void MB_RX_MCFU1(int id);
_EXTERN void MB_RX_MCFU2(int id);
_EXTERN void MB_RX_MCFU3(int id);
_EXTERN void MB_RX_MCFU4(int id);
_EXTERN void MB_RX_2(int id);
_EXTERN void MB_RX_3(int id);
_EXTERN void MB_RX_COR1COILS(int id);
_EXTERN void MB_RX_COR2COILS(int id);
_EXTERN void MB_RX_5(int id);
_EXTERN void MB_RX_C1(int id);
_EXTERN void MB_RX_C2(int id);
_EXTERN void MB_RX_C3(int id);
_EXTERN void MB_RX_C4(int id);
_EXTERN void MB_RX_C5(int id);
_EXTERN void MB_TX_A_PLC(void);
_EXTERN void MB_RX_CA1(int id);
_EXTERN void MB_RX_CA2(int id);
_EXTERN void MB_RX_CA3(int id);
_EXTERN void MB_RX_CA4(int id);
_EXTERN void MB_RX_CAP1(int id);
_EXTERN void MB_RX_CT1(int id);
_EXTERN void MB_RX_CT2(int id);
_EXTERN void MB_RX_CT3(int id);
_EXTERN void MB_RX_CT4(int id);
_EXTERN int Xlate_3095_P_units(int u);
_EXTERN int Xlate_3095_T_units(int u);
_EXTERN void Xlate_COR_Special_Units(int id, int j);
_EXTERN TPKT TMR_ALYESKA_PLC;

_EXTERN int* vect_exec0;
_EXTERN int* vect_exec1;
_EXTERN int* vect_exec2;
_EXTERN int* vect_exec3;
_EXTERN int* vect_exec4;
_EXTERN int* vect_exec5;
_EXTERN int* vect_exec6;
_EXTERN int* vect_exec7; 
_EXTERN int* vect_exec8;/*added for .vect2 of coils - add stream select PTR RS*/

#undef _EXTERN
#undef MODBUSRTU_H
#endif
