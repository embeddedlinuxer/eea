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
/* File Name: MISC.H						    							*/
/* 									    									*/
/* File Description: This defines several main functions of the analyzer.   */
/* This is the meat and potatoes of the analyzer.  Polling and CopyTempVars */
/* are a couple of the important function prototypes.  Periodic events are  */
/* defined here as well.						    						*/
/*									    									*/
/****************************************************************************/

#ifndef _MISC
#define _MISC

#ifdef MISC_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#ifdef MISC_H
#pragma CODE_SECTION(Initialize_Periodic_Events,"initialization")
#pragma CODE_SECTION(Calc_CRC,"initialization")
#endif

_EXTERN void Initialize_Periodic_Events(void);
_EXTERN unsigned int Calc_CRC(unsigned int* s, unsigned int n);

_EXTERN int FS(VAR* v);
_EXTERN int FS2(VAR* v, VAR* low_plot, VAR* high_plot); //2-5-2016
_EXTERN void CCM_START(void);
_EXTERN void CCM_TESTING(void);
_EXTERN void CCM_PURGING(void);

/// ALFAT Helper Functions

_EXTERN void Begin_Alfat_Logging(COIL* c);

_EXTERN void Alfat_Change_Log_Period(COIL* c);

_EXTERN int Alfat_Map_Var(int index);

_EXTERN unsigned int BCD_to_Int(unsigned char bcd_val);

_EXTERN char Hex_to_ASCII(char hex_val);

_EXTERN void Hex32_to_String(char out_string[], unsigned int hex_val);

_EXTERN unsigned int ASCII_to_Hex(char ascii_val);

_EXTERN void Alfat_Wait_For_Write(void);

_EXTERN void Alfat_Get_Version_Vector(void);

_EXTERN void Alfat_Get_Version(void);

_EXTERN void Alfat_Init_RTC(void);

_EXTERN void Alfat_Set_Time_Date_Vector(void);

_EXTERN void Alfat_Set_Time_Date(void);

_EXTERN void Alfat_Get_Time_Vector(void);

_EXTERN void Alfat_Get_Time(void);

_EXTERN void Alfat_Get_Date_Vector(void);

_EXTERN void Alfat_Get_Date(void);

_EXTERN void Alfat_Print_Time_Date(int handle);

_EXTERN void Alfat_Get_Status_Reg_Vector(void);

_EXTERN void Alfat_Get_Status_Reg(void);

_EXTERN void Alfat_Init_USB_Vector(void);

_EXTERN void Alfat_Init_USB(void);

_EXTERN void Alfat_Open_Append(int handle, char full_path[]);

_EXTERN void Alfat_Open_Append_Vector(void);

_EXTERN void Alfat_Close(int handle);

_EXTERN void Alfat_Flush(int handle);

_EXTERN void Alfat_Write(int handle, int num_bytes, int append_linefeed);

_EXTERN void Alfat_Write_Vector(void);

_EXTERN void Alfat_Init_All(void);

_EXTERN void Alfat_Log_Vars(void);


/* //unimplemented ALFAT functions

_EXTERN void Alfat_Enable_Echo(void);
_EXTERN void Alfat_Disable_Echo(void);

_EXTERN void Alfat_Set_Baud(unsigned int baudrate);


_EXTERN unsigned int Alfat_Get_Free_Size(void); // bytes in hex: should it convert?
_EXTERN void Alfat_Init_USB(void);

_EXTERN BOOL Alfat_Init_List_Counter(char* full_path); 
_EXTERN char* Alfat_Get_Next(void); //only call after Alfat_Init_List_Counter()

_EXTERN BOOL Alfat_Open_Read(int handle, char* full_path);
_EXTERN BOOL Alfat_Open_Write(int handle, char* full_path);


_EXTERN BOOL Alfat_Close(int handle);

_EXTERN char* Alfat_Read(int handle, int num_bytes);
_EXTERN void Alfat_Flush(int handle);

*/
/// END: ALFAT Helper Functions


_EXTERN void Set_Class_Units_AO(int id, int i);
_EXTERN void Set_Class_Units_AO1(int id);
_EXTERN void Set_Class_Units_AO2(int id);
_EXTERN void Set_Class_Units_AO3(int id);
_EXTERN void Set_Class_Units_AO4(int id);
_EXTERN void Set_Class_Units_AO5(int id);
_EXTERN void Set_Class_Units_AO6(int id);
_EXTERN void Set_Class_Units_AO7(int id);
_EXTERN void Set_Class_Units_AO8(int id);
_EXTERN void Set_Class_Units_AO9(int id);
_EXTERN void Set_Class_Units_AI1(int id);
_EXTERN void Set_Class_Units_AI2(int id);
_EXTERN void Set_Class_Units_AI3(int id);
_EXTERN void Set_Class_Units_AI4(int id);
_EXTERN void Set_Class_Units_AI5(int id);
_EXTERN void Set_Class_Units_AI(int id, int i);
_EXTERN void Set_Class_Units_Pulse(int id, int i);
_EXTERN void Set_Class_Units_Pulse1(int id);
_EXTERN void Set_Class_Units_Pulse2(int id);
_EXTERN void Set_Class_Units_Pulse3(int id);
_EXTERN void Set_Class_Units(int id);
_EXTERN void Set_RLY_Units(int id);
_EXTERN void Set_Units(int id);
_EXTERN void Set_Pulse_Units(int id);
_EXTERN int Span(float v, float min2, float max2, int mini, int maxi);
_EXTERN void HSALT_CLEAR(void);
_EXTERN void Set_Density_Cal_Unit(int id);
_EXTERN void PDI_Density_Correction(VAR* v);
_EXTERN void PDI_Density_Adj(VAR* v);
_EXTERN void Set_FC_Units(int id);

_EXTERN void Accum_Fractional_Oil(long double* o);
_EXTERN void Accum_Fractional_Water(long double* w);

_EXTERN void Accumulate_Gas(void);
_EXTERN void Accumulate(VAR* v);
_EXTERN void Calibrate_RTD(void);
_EXTERN void Disable_Heater(void);
_EXTERN void Poll(void);
_EXTERN void STATUS_LED_off(void);
_EXTERN void STATUS_LED_on(void);
_EXTERN void Copy_CAPDATA(CAPDATA* p, BOOL to_coeff, BOOL clr);
_EXTERN void Set_Density_Correction(int id);
_EXTERN void Reset_IDEC(int id);
_EXTERN void Set_IDEC_Port(int id);
_EXTERN void Set_Time(int id);
_EXTERN void CCM_Record_Viewer(int id);
_EXTERN void VAR_SET_STR(VAR* v, unsigned int ui);
_EXTERN void VAR_SET_STR_DV(int id);
_EXTERN void VAR_SET_STR_DVIN(int id);
_EXTERN void Refresh_IDEC_Time(void);
_EXTERN void Calibrate_OIL(VAR* v);
_EXTERN void Calibrate_WATER(VAR* v);
_EXTERN double sigfig (double v, int n);
_EXTERN double round (double v, int n);
_EXTERN double truncate (double v, int n);
_EXTERN void Check_Zero(void);
_EXTERN void Zero_FC1(void);
_EXTERN void Zero_FC2(void);
_EXTERN void Zero_FC3(void);
_EXTERN void Disable_PDI_WC_Mode(int id);
_EXTERN void Disable_WC_Density_Mode(int id);
_EXTERN void Clear_Accumulator(int n);
_EXTERN void Clear_Accumulators(int id);
_EXTERN void Totalizer_Control(int id);
_EXTERN void Update_Relays(void);
_EXTERN void SET_BASICS(void);
_EXTERN void BEEP_OFF(void);
_EXTERN void BEEP_ON(void);
_EXTERN void CLEAR_LOCKOUT(void);
_EXTERN void SAVE(void);
_EXTERN void Submit_Setup_Basics(void);
_EXTERN void Submit_SELF_TEST(void);
_EXTERN void Submit_Reset(void);
_EXTERN void Submit_Serial_Defaults(void);
_EXTERN void Serial_Defaults(void);
_EXTERN void Submit_Restart(void);
_EXTERN void Submit_Save(void);
_EXTERN void Submit_Restore_CFG_FACTORY(void);
_EXTERN void Submit_Restore_CFG_USER(void);
_EXTERN void Submit_Write_CFG_FACTORY(void);
_EXTERN void Submit_Write_CFG_USER(void);

_EXTERN void Freq_oil_plot_min(VAR* v);
_EXTERN void Freq_oil_plot_max(VAR* v);
_EXTERN void Freq_water_plot_min(VAR* v);
_EXTERN void Freq_water_plot_max(VAR* v);
_EXTERN void Temp_plot_min(VAR* v);
_EXTERN void Temp_plot_max(VAR* v);
_EXTERN void Watercut_plot_min(VAR* v);
_EXTERN void Watercut_plot_max(VAR* v);
_EXTERN void Oil_RP_plot_min(VAR* v);
_EXTERN void Oil_RP_plot_max(VAR* v);
_EXTERN void Water_RP_plot_min(VAR* v);
_EXTERN void Water_RP_plot_max(VAR* v);



_EXTERN void CLEAR_PORT_COUNT(int id);
//_EXTERN long double SaltSpan(void);
_EXTERN void CopyTempVars(void);
_EXTERN void Periodic_Accumulate(void);
_EXTERN void Sampling_Error(void);
_EXTERN void Read_RTC(void);
_EXTERN void Update_i_Log_Var(void);
_EXTERN void PVAVG24(void);




/*RS*/
_EXTERN void Calibrate_HSALT(long double *p);
//_EXTERN long double Calculate_SaltSpan(void);

_EXTERN void PutInt(int i, unsigned char* p, int* j);
_EXTERN void GetInt(int* i, unsigned char* p, int* j);
_EXTERN void PutFlt(float f, unsigned char* p, int* j);
_EXTERN void GetFlt(float* f, unsigned char* p, int* j);
_EXTERN void PutCRC(unsigned char* p);
_EXTERN unsigned int CRC16_bytes(unsigned char* s, int n);
_EXTERN BOOL M24C02_Record(BOOL read, int addr, unsigned char* p);

_EXTERN TPKT TMR_GET_uP_CONFIG;
_EXTERN void Submit_GET_uP_CONFIG(void);
_EXTERN void GET_uP_CONFIG(void);

_EXTERN TPKT TMR_STORE_uP_CONFIG;
_EXTERN void Submit_STORE_uP_CONFIG(void);
_EXTERN void STORE_uP_CONFIG(void);

_EXTERN TPKT TMR_GET_COMM_CONFIG;
_EXTERN void Submit_GET_COMM_CONFIG(void);
_EXTERN void GET_COMM_CONFIG(void);

_EXTERN TPKT TMR_STORE_COMM_CONFIG;
_EXTERN void Submit_STORE_COMM_CONFIG(void);
_EXTERN void STORE_COMM_CONFIG(void);

_EXTERN TPKT TMR_GET_ANALYZER_CONFIG;
_EXTERN void Submit_GET_ANALYZER_CONFIG(void);
_EXTERN void GET_ANALYZER_CONFIG(void);

_EXTERN TPKT TMR_STORE_ANALYZER_CONFIG;
_EXTERN void Submit_STORE_ANALYZER_CONFIG(void);
_EXTERN void STORE_ANALYZER_CONFIG(void);

_EXTERN TPKT TMR_GET_POWER_CONFIG;
_EXTERN void Submit_GET_POWER_CONFIG(void);
_EXTERN void GET_POWER_CONFIG(void);

_EXTERN TPKT TMR_STORE_POWER_CONFIG;
_EXTERN void Submit_STORE_POWER_CONFIG(void);
_EXTERN void STORE_POWER_CONFIG(void);

_EXTERN TPKT TMR_GET_ANALOGIO_CONFIG;
_EXTERN void Submit_GET_ANALOGIO_CONFIG(void);
_EXTERN void GET_ANALOGIO_CONFIG(void);

_EXTERN TPKT TMR_STORE_ANALOGIO_CONFIG;
_EXTERN void Submit_STORE_ANALOGIO_CONFIG(void);
_EXTERN void STORE_ANALOGIO_CONFIG(void);

_EXTERN TPKT TMR_GET_MOTHERBOARD_CONFIG;
_EXTERN void Submit_GET_MOTHERBOARD_CONFIG(void);
_EXTERN void GET_MOTHERBOARD_CONFIG(void);

_EXTERN TPKT TMR_STORE_MOTHERBOARD_CONFIG;
_EXTERN void Submit_STORE_MOTHERBOARD_CONFIG(void);
_EXTERN void STORE_MOTHERBOARD_CONFIG(void);

_EXTERN TPKT TMR_GET_DISPLAY_CONFIG;
_EXTERN void Submit_GET_DISPLAY_CONFIG(void);
_EXTERN void GET_DISPLAY_CONFIG(void);

_EXTERN TPKT TMR_STORE_DISPLAY_CONFIG;
_EXTERN void Submit_STORE_DISPLAY_CONFIG(void);
_EXTERN void STORE_DISPLAY_CONFIG(void);

_EXTERN TPKT TMR_PVAVG;
_EXTERN TPKT TMR_iLV;
_EXTERN TPKT TMR_RTC_UPDATE;
_EXTERN TPKT TMR_CCM_PURGE;
_EXTERN TPKT TMR_CCM_TEST;
_EXTERN TPKT TMR_SAMPLE_ERROR;
_EXTERN TPKT TMR_PERIODIC_ACCUM;
_EXTERN TPKT TMR_SERDEF;
_EXTERN TPKT TMR_LEDON;
_EXTERN TPKT TMR_LEDOFF;
_EXTERN TPKT TMR_CHECK_ZERO;
_EXTERN TPKT TMR_UPDATE_RELAYS;
_EXTERN TPKT TMR_SET_CURRENT;
_EXTERN TPKT TMR_ADC_UPDATE;
_EXTERN TPKT TMR_PULSE_UPDATE;
_EXTERN TPKT TMR_MENU_REFRESH;
_EXTERN TPKT TMR_STAT;
_EXTERN TPKT TMR_DATALOG;
_EXTERN TPKT TMR_DATALOG_USER;
_EXTERN TPKT TMR_DATALOG_COUNTERS;
_EXTERN TPKT TMR_CLEAR_USER_LOG_EVENT_FLAG;
_EXTERN TPKT TMR_CLEAR_SYS_LOG_EVENT_FLAG;
_EXTERN TPKT TMR_CLEAR_LOCKOUT;
_EXTERN TPKT TMR_BEEP_OFF;
_EXTERN TPKT TMR_SET_BASICS;
_EXTERN TPKT TMR_RESET;
_EXTERN TPKT TMR_RESTART;
_EXTERN TPKT TMR_SAVE_CFGF;
_EXTERN TPKT TMR_SAVE_CFGU;
_EXTERN TPKT TMR_RESTORE_CFGF;
_EXTERN TPKT TMR_RESTORE_CFGU;
_EXTERN TPKT TMR_SELF_TEST;
_EXTERN TPKT TMR_DAMP;
_EXTERN TPKT TMR_T;
_EXTERN TPKT TMR_REFRESH_TIME;
_EXTERN TPKT TMR_OSC_DELAY_LONG;
_EXTERN TPKT TMR_OSC_DELAY_SHORT;
_EXTERN TPKT TMR_POLL;
_EXTERN TPKT TMR_SELFTEST;

_EXTERN TPKT TMR_ALFAT_LOG;

_EXTERN void Unpack_ASCII(unsigned int* s, unsigned int* d, int np);
_EXTERN void Pack_ASCII(unsigned int* s, unsigned int* d, int n);
_EXTERN void Put_IEEE(int id, VAR* v);
_EXTERN void Timer_T(void);
_EXTERN void Setup_Sample(void);
_EXTERN void STAT(void);
_EXTERN void RESEARCH(void);
_EXTERN void Send_Sample(int VT);
_EXTERN long double Interpolate(long double w1, long double t1, long double w2, long double t2, long double t);
_EXTERN void Set_Temperature_Unit(void);
_EXTERN BOOL Write_CFG_USER(void);
_EXTERN BOOL Write_CFG_FACTORY(void);
_EXTERN int  Restore_CFG(void);
_EXTERN void System_Reset(void);
_EXTERN void System_Restart(void);
_EXTERN void Restore_CFG_FACTORY(void);
_EXTERN void Restore_CFG_USER(void);
_EXTERN BOOL Set_Research_Mode(void);
_EXTERN void PV_AVERAGE(VAR* v);
_EXTERN void UnLock_P(int n);
_EXTERN void UnLock_P0(VAR* v);
_EXTERN void UnLock_P1(VAR* v);
_EXTERN void UnLock_P2(VAR* v);
_EXTERN void UnLock_P3(VAR* v);
_EXTERN void UnLock_P4(VAR* v); /*unlock heuristic routine RS*/
_EXTERN void Detect_Current_Loop(void);
_EXTERN void Set_ASCII_Temp_Unit(VAR* v);
_EXTERN void Capture_Watercut_Water(int id);
_EXTERN void Capture_Watercut_Oil(int id);

_EXTERN void Reset_PID_Bias(VAR* v);

_EXTERN void Mirror_To_Stream_Table(VAR* v);
_EXTERN void Mirror_From_Stream_Table(VAR* v);
_EXTERN float RESEARCH_VTUNE[VTMAX];
_EXTERN float RESEARCH_ENABLED[VTMAX];
_EXTERN float RESEARCH_OSC[VTMAX];
_EXTERN float RESEARCH_GATE;
_EXTERN float RESEARCH_PS;
_EXTERN BOOL Get_CAPDATA(CAPDATA* p);
_EXTERN void PULSE_UPDATE(void);

_EXTERN void CORIOLIS_ZERO1(void);
_EXTERN void CORIOLIS_ZERO2(void);
_EXTERN void CORIOLIS_ZERO3(void);
_EXTERN void CORIOLIS_ZERO4(void);
_EXTERN void CORIOLIS_CFG(VAR* v); 
_EXTERN void CORIOLIS_INT_CFG(VAR* v);  /*MM initial Slave address config RS*/

_EXTERN BOOL Is_Expired(int boxcar_counter);
_EXTERN void Swap_Boxcar_Vals(int x, int y);
_EXTERN void Check_Boxcar_Limits();
_EXTERN inline void Reset_Boxcar();
_EXTERN inline void Update_Boxcar();
_EXTERN inline void	Update_Pattern();
_EXTERN inline void	Update_Bubble();

#undef _EXTERN
#undef MISC_H
#endif
