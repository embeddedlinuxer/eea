/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#ifndef _MODBUSRTU
#define _MODBUSRTU

#ifdef MODBUS_H
#define _EXTERN
#else
#define _EXTERN extern
#endif


#define reg_direct_i	 	0x10000
#define reg_direct_f	 	0x20000
#define reg_indirect	 	0x30000		/* check bounds, alarm points of this var, uses VAR update */
#define reg_direct_ubmin 	0x40000
#define reg_direct_ubmax 	0x50000
#define NaN 0x7FA00000

void WDOG_P(void);
void TX_P(void);
void TX_P1(void);
void TX_S(void);
void MODBUS_RX_ID(void);
void MODBUS_RX_FUNCTION(void);
void MODBUS_RX_n(void);
void MODBUS_RX_nw(void);
void MODBUS_RX_nDATA(void);
void MODBUS_RX_CRC(void);

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

#define mb_cmd_pdi_set_entry_point 	65
#define mb_cmd_pdi_read 			66
#define mb_cmd_pdi_write			67
#define mb_cmd_pdi_read_ESN			68	/* reads the 256 bit ESN (INTEL/PDI) */
#define mb_cmd_pdi_write_ESN		69	/* PERMANENTLY writes the 128 bit ESN (PDI) */
#define mb_cmd_pdi_RESTORE_FACTORY_DEFAULTS 70
#define mb_cmd_pdi_ERASE_CFG		71
#define mb_cmd_pdi_RESET			72
#define mb_cmd_pdi_MAX_BAUD			100
#define mb_cmd_pdi_write_scratchpad	101
#define mb_cmd_pdi_clear_scratchpad	102
#define mb_cmd_pdi_store_scratchpad	103
#define mb_cmd_pdi_EXIT				104
#define mb_cmd_pdi_BAUD				105

#define mb_excp_illegal_func	1
#define mb_excp_illegal_addr	2
#define mb_excp_illegal_data	3
#define mb_excp_slave_fail		4
#define mb_excp_ack				5
#define mb_excp_slave_busy		6
#define mb_excp_neg_ack			7
#define mb_excp_memory_error	8

_EXTERN void Process_Read(unsigned int addr, unsigned int n);
_EXTERN void Process_Write(unsigned int destination, unsigned int n, unsigned int* source);
_EXTERN void Process_Write_Scratchpad(unsigned int destination, unsigned int n, unsigned int* source);
_EXTERN void Process_Set_Entry_Point(unsigned int addr);
_EXTERN void Process_Read_ESN(void);
_EXTERN void Process_Write_ESN(unsigned int* dat);
_EXTERN void Process_LOCK_ESN(void);
_EXTERN void MB_exception(int ex);
_EXTERN void Modbus_Initialize(void);
_EXTERN void Process_Restore_Factory_Defaults(void);
_EXTERN void Process_Erase_Cfg(void);
_EXTERN void Process_Erase_Scratchpad(void);
_EXTERN void Process_Store_Scratchpad(unsigned int addr);
_EXTERN unsigned int Copy_Block(unsigned int* s, unsigned int* d);

#undef _EXTERN
#undef MODBUS_H
#endif
