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
/* File Name: ADC.H							    							*/
/* 									    									*/
/* File Description:  This is the include file for the Analog to Digital	*/
/* Converter.  Includes several definitions, a struct LOOPDATA_I and 		*/
/* function prototypes that control the ADC.								*/
/* 									    									*/
/* Structs: LOOPDATA_I - Input Data for an ADC.								*/
/* 									    									*/
/****************************************************************************/

#ifndef _ADC
#define _ADC

#ifdef ADC_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#define ADC_ADDRA1	0x94		/* Vref, Vinc, EXT Temp */
#define ADC_ADDRA2	0x92		/* VTUNE, GNDSENSE, Ain1 */
#define ADC_ADDRIO1	0x96		/* Ain 2-4 */
#define ADC_ADDRIO2	0x9C		/* Ain 5 */
#define ADC_TMP		0x9A		/* INT Temp */
#define ADC_Spare	11
#define ADC_Tint	10
#define ADC_Ain5	9
#define ADC_Ain4	8
#define ADC_Ain3	7
#define ADC_Ain2	6
#define ADC_Ain1	5
#define ADC_GNDSEN	4
#define ADC_VTUNE	3
#define ADC_Text	2
#define ADC_Vinc	1
#define ADC_Vref	0
#define ADC_MAX		12
#define AI_NLOOPS 	5
#define ADC_CH0		0x40
#define ADC_CH1		0x60
#define ADC_CH2		0x20

_EXTERN int ADC_INT[ADC_MAX];
_EXTERN int TLV_REF[3];

#define ADC_REF_V		2.048
#define ADC_EXTREF_V	2.500

/* TLV2544 Commands */
#define TLV_AIN0 0x0000					/* Select Analog Input CH0 */
#define TLV_AIN1 0x2000					/* Select Analog Input CH1 */
#define TLV_AIN2 0x4000					/* Select Analog Input CH2 */
#define TLV_AIN3 0x6000					/* Select Analog Input CH3 */
#define TLV_PWRDN 0x8000				/* Software Powerdown (analog + reference) */
#define TLV_RDCFR 0x9000				/* Read CFR register in SDO D11..0 */
#define TLV_WRCFR 0xA000				/* Write CFR register with 12 bit data masked on it */
#define TLV_REFPM 0xB000				/* select test voltage (RefP+RefM)/2 */
#define TLV_REFM 0xC000					/* select test voltage RefM */
#define TLV_REFP 0xD000					/* select test voltage RefP */
#define TLV_FIFO 0xE000					/* SDO D15..4, D3..0=0000 */
/* TLV2544 Commands */

/* CFR register bits for TLV2544*/
#define TLV_CFR_INTREF 0x800			/* 0=EXTREF, 1=INTREF */
#define TLV_CFR_EXTREF 0x000			/* 0=EXTREF, 1=INTREF */
#define TLV_CFR_INTREFV 0x400			/* 0=4V, 1=2V */
#define TLV_CFR_SAMPER_24 0x200			/* 0=12SCLK sampling, 1=24SCLK sampling */
#define TLV_CFR_SAMPER_12 0x000			/* 0=12SCLK sampling, 1=24SCLK sampling */
#define TLV_CFR_CLK_SRC 0x180			/* Conversion Clock Source Select */
#define TLV_CFR_CLK_INTCLK 0x000
#define TLV_CFR_CLK_SCLK 0x080
#define TLV_CFR_CLK_SCLK_4 0x100
#define TLV_CFR_CLK_SCLK_2 0x180
#define TLV_CFR_CONV 0x060				/* Conversion Mode Select */
#define TLV_CFR_CONV_1 0x000
#define TLV_CFR_CONV_REPEAT 0x020
#define TLV_CFR_CONV_SWEEP 0x040
#define TLV_CFR_CONV_REPEATSWP 0x060
#define TLV_CFR_SWEEP_AUTO_SEQ	0x018	/* Sweep Auto Sequence */
#define TLV_CFR_SWEEP_NA 0x000
#define TLV_CFR_SWEEP_01230123 0x008
#define TLV_CFR_SWEEP_00112233 0x010
#define TLV_CFR_SWEEP_01010101 0x018
#define TLV_CFR_EOC 0x004				/* 0=/INT, 1=EOC */
#define TLV_CFR_INT 0x000				/* 0=/INT, 1=EOC */
#define TLV_CFR_FIFO_TRIG 0x003			/* FIFO Triggerl level (sweep seq length) */
#define TLV_CFR_FIFO_FULL 0x000			/* /INT generated after FIFO level 7 filled */
#define TLV_CFR_FIFO_5 0x001			/* /INT generated after FIFO level 5 filled */
#define TLV_CFR_FIFO_3 0x002			/* /INT generated after FIFO level 3 filled */
#define TLV_CFR_FIFO_1 0x003			/* /INT generated after FIFO level 1 filled */
/* CFR register bits for TLV2544*/

#define ADC_CONFIG	(TLV_WRCFR | TLV_CFR_SAMPER_12 | TLV_CFR_CLK_SCLK_4 | TLV_CFR_CONV_REPEATSWP | TLV_CFR_SWEEP_01230123 | TLV_CFR_INT | TLV_CFR_FIFO_3)
#define ADC_CFG_CLK_DIV 4

typedef struct 	{
					VAR		CURRENT;
					VAR		CURRENT_PERCENT_OF_RANGE;
					VAR		LRV;
					VAR		URV;
					VAR		TRIM_MIN;
					VAR		TRIM_MAX;
					VAR		VALUE;
					float   TRIM_MIN_C;
					float   TRIM_MAX_C;
					REGVECT	v;
					REGVECT	class;
					REGVECT	unit;
					BOOL	present;
					float	val;
	    		} LOOPDATA_I;

#pragma DATA_SECTION(AI,"CFG")
_EXTERN LOOPDATA_I AI[AI_NLOOPS];

#ifdef ADC_H
#pragma CODE_SECTION(Setup_ADC,"initialization")
#endif

_EXTERN void Setup_ADC(int n);
_EXTERN void Read_ADCn(int n, BOOL START);
_EXTERN BOOL Write_TMP75(int addr, int n, unsigned char* p);
_EXTERN BOOL Read_TMP75(int addr, int n, unsigned char* p);
_EXTERN BOOL Write_ADC_DAC(int addr, int n, unsigned char* p);
_EXTERN BOOL Read_ADC_DAC(int addr, int n, unsigned char* p);
_EXTERN void ADC_UPDATE(void);
_EXTERN unsigned int ADC_ACTIVE[3];
_EXTERN void Convert_ADC(void);
_EXTERN void Read_ADC_FIFO(void);
_EXTERN void Read_ADC_test(void);

#undef _EXTERN
#undef ADC_H
#endif              
