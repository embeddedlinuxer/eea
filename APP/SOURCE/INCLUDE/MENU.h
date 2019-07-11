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
/* File Name: MENU.H						    							*/
/* 									    									*/
/* File Description: Controls the LCD (not idec) menu.  You can control that*/
/* with the Menu, Select, Value and Enter buttons.                          */
/*                                                                          */
/* STRUCTS:	MENU_STRUCT 	- defines a menu structure.  Button status and  */
/*							screen protection are some of its attributes.	*/
/*									    									*/
/****************************************************************************/

#ifndef _MENU
#define _MENU

#ifdef MENU_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

_EXTERN void Update_Flags_Goto_Next_Menu(BOOL cfg, BOOL skip_adv);
_EXTERN void MSVE_Data_Input(char* title, char* varname, int iw, int ip, BOOL is, BOOL sci, VAR* v, BOOL skip_save, BOOL skip_adv);

_EXTERN int Print_To_LCD( int lcd_line, int str_num, char text_line[], int whitespace);

_EXTERN int Get_Russ_Line(int str_num, char out_str[], int return_mode); //Retrieves a Russian character strings
_EXTERN int Find_Russ_Tbl_Len(void);
_EXTERN char OUT_STR[32]; //stores a Russian character string
_EXTERN char OUT_STR2[32]; //stores a second Russian character string
_EXTERN char ENG_STR[32]; //stores English string
_EXTERN char ENG_STR2[32]; //stores second English string


_EXTERN void MENU_INIT(void);
_EXTERN void MENU_REFRESH(void);
_EXTERN int  DIO_MSVE;



typedef struct 	{
					BOOL	INIT;
					BOOL	FRESH;

					BOOL	MENU;
					BOOL	SELECT;
					BOOL	VALUE;
					BOOL	ENTER;

					int		DIR;
					BOOL	DIR_CHANGE;

					BOOL	M;
					BOOL	S;
					BOOL	V;
					BOOL	E;

					BOOL	CURSOR_ENABLED;
					int		CURSOR_ROW;
					int		CURSOR_COL;

					unsigned int CNT;
					unsigned int MENU_CNT;
					unsigned int SELECT_CNT;
					unsigned int VALUE_CNT;

					unsigned int k;

					BOOL	MODE_LOCKDOWN;
					BOOL	MODE_WPROT;
					BOOL	MODE_DEFINE;
					BOOL	MODE_USER;
					BOOL	MODE_TECH;
					BOOL	MODE_NORMAL;
					
					/// TOP MENU & SUB MENU VARIABLES -DHA
					BOOL	menu_list_top;
					BOOL	menu_list_operations;
					BOOL	menu_list_configurations;
					BOOL	menu_list_security_info;
					BOOL	menu_list_measurements;
					BOOL	menu_list_changed;
					///
					

					unsigned int PAGE;
					unsigned int SUBPAGE;

					BOOL	MENU_TRAP;

					BOOL	DIP[4];

					float	tmpf[10];
					int		tmpi[10];

					char	str[4][101];

					VAR		tmpv;
					VAR*	ptmpv;

					int*	tbl;

	    		} MENU_STRUCT;

_EXTERN MENU_STRUCT MSVE;

_EXTERN int* vect_m;

#undef _EXTERN
#undef MENU_H
#endif
