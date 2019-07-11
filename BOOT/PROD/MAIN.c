/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#define I2C_H
#define GLBLS_H

#include "GLBLS.H"

#pragma CODE_SECTION(main,"copytoflash")
void main(void)
{
	BOOL pass;
	unsigned int i;
	unsigned int j;
	unsigned int* c;
	unsigned int d;
	char msgf[] = " Programming Failed ";
	char msgp[] = " Programming Passed ";

	_GIE;

	LEDR_OFF;
	LEDG_OFF;
	DISABLE_BOOTINT;
	DISABLE_HEATER;

	RELAY1_OFF;
	RELAY2_OFF;

	if (!PROGRAM_MODE)
	{
		main1();
		while(TRUE){}	
	}

	*PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);	/* ws=5 for 90ns flash */
	NOPS;

	DISABLE_WDOG;

	LCD_INIT();

	pass = TRUE;

	for (i=0;i<FLASH_BOOT_SIZE;i++)
	{
		boot_blk[i] = 0xFFFFFFFF;
		if (boot_blk[i] != 0xFFFFFFFF) {pass = FALSE; break;}
	}

	FLASH_UNLOCK;

	/* change CALL main to CALL main1*/
	call_to_main = (unsigned int)&main1 | 0x62000000;

	/* setup block for boot */
	boot_blk[0] = 0x00000020;										/* memory width = 32 bits */
	if (boot_blk[0] != 0x00000020) pass = FALSE;
	boot_blk[1] = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);				/* ws=5 for 90ns flash */
	if (boot_blk[1] != (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5)) pass = FALSE;
	boot_blk[2] = 0x00001FB0 - ((unsigned int)&c_int00 & 0x1FFF);	/* BOOT CODE SIZE */
	if (boot_blk[2] != 0x00001FB0 - ((unsigned int)&c_int00 & 0x1FFF)) pass = FALSE;
 	boot_blk[3] = (unsigned int) &c_int00;							/* BOOT CODE DESTINATION ADDR */
 	if (boot_blk[3] != (unsigned int) &c_int00) pass = FALSE;
	c = (unsigned int*)c_int00;										/* BOOT MIRROR IN RAM */
	j=4;
	for (i=0;i<boot_blk[2];i++)
	{
		boot_blk[j] = c[i];
		if (boot_blk[j] != c[i]) {pass = FALSE; break;}
		j++;
	}

	/* setup block for BRANCH table */
	boot_blk[j] = 0x0000003F;										/* BRANCH TABLE SIZE */
	if (boot_blk[j] != 0x0000003F) pass = FALSE;
	j++;
	boot_blk[j] = 0x00809FC1;										/* BRANCH TABLE DESTINATION ADDR */
	if (boot_blk[j] != 0x00809FC1) pass = FALSE;
	c = (unsigned int*)0x00809FC1;									/* BR TABLE MIRROR IN RAM */
	j++;
	for (i=0;i<0x3F;i++)
	{
		boot_blk[j] = c[i];
		if (boot_blk[j] != c[i]) {pass = FALSE; break;}
		j++;
	}

	/* setup block for rest of BOOT ram */
	d = j;
	boot_blk[j] = 0x00001FB0 - boot_blk[2];
	if (boot_blk[j] != 0x00001FB0 - boot_blk[2]) pass = FALSE;
	j++;
	boot_blk[j] = 0x00800000;
	if (boot_blk[j] != 0x00800000) pass = FALSE;
	c = (unsigned int*)0x00800000;
	j++;
	for (i=0;i<boot_blk[d];i++)
	{
		boot_blk[j] = c[i];
		if (boot_blk[j] != c[i]) {pass = FALSE; break;}
		j++;
	}

    if (pass)
    {
		i = FLASH_ERASE_BLK((unsigned int*) FLASH_LOC);
		i |= FLASH_WRITE_BLK((unsigned int*) FLASH_LOC, boot_blk, FLASH_CFGB_SIZE);
		i |= FLASH_ERASE_BLK((unsigned int*) FLASH_LOC+FLASH_CFGB_SIZE);
		i |= FLASH_WRITE_BLK((unsigned int*) FLASH_LOC+FLASH_CFGB_SIZE, boot_blk+FLASH_CFGB_SIZE, FLASH_CFGB_SIZE);

		FLASH_LOCK_BLK((unsigned int*) FLASH_LOC, 2);					/* lockdown */
		FLASH_LOCK_BLK((unsigned int*) FLASH_LOC+FLASH_CFGB_SIZE, 2);	/* lockdown */

		FLASH_LOCK;

		if (i) pass = FALSE;
	}

	DISABLE_WDOG;

	ENABLE_BOOTINT;
	CLEAR_INT_MASK;
	CLEAR_INT_PEND;

	if (!pass)
	{/* error = one relay ON */
		LEDR_ON;
		LEDG_OFF;
		RELAY1_ON;
		RELAY2_OFF;
		for (i=0;i<20;i++) LCD_DISP3[i] = msgf[i];
	}
	else
	{/* okay = both relays ON */
		LEDR_OFF;
		LEDG_ON;
		RELAY1_ON;
		RELAY2_ON;
		for (i=0;i<20;i++) LCD_DISP3[i] = msgp[i];
	}

	LCD_STR((char*)&LCD_DISP3,3);

	for (i=0;i<9999999;i++){}
}

void main1(void)
{
	unsigned int i, j;
	unsigned int* s;
	unsigned int* d;

	{/* Initialize_Hardware */
		_GIE;

		ENABLE_JTAG;

		DISABLE_BOOTINT;
		DISABLE_HEATER;

		RELAY1_OFF;
		RELAY2_OFF;

		*PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);	/* ws=5 for 90ns flash */
		NOPS;

		CLEAR_INT_MASK;
		CLEAR_INT_PEND;

		DISABLE_WDOG;

		LCD_INIT();

		/* reset the UART (min 200ns) */
		URESET;
		{asm("	RPTS    100			");\
		 asm("	NOP					");}
	    _URESET;

		s = &BTCOPY;					/* BR TABLE MIRROR IN RAM */
		d = (unsigned int*)0x00809FC1;	/* BRANCH TABLE DESTINATION ADDR */
		for (i=0;i<0x3F;i++)
		{
			d[i] = s[i];
		}

		FLASH_UNLOCK;

		INITIALIZING = TRUE;

		CLOCK = 0;

		HW_VER  = *XHW_VER & 0xFF;

		CLOCK = CLOCK_DEFAULT;

		PORT.Slave_ID = 247;
		PORT.tvector = (int*)0;
		PORT.pvector = (int*)0;
		vect_pt1 = (int*)0;
		vect_p1 = (int*)0;

		CLEAR_INT_MASK;

		TIME0 = (double)(7.5);
		Setup_Timer(0, TIME0);

		TIME1 = (double)(11.0/(2.0*115200.0));
		Setup_Timer(1, TIME1);

		XFINIT_OUTPUT;

		CACHE_ENABLE;

		FLASH_READ_ESN_MFGR(&ESN[0]);
		FLASH_READ_ESN_USER(&ESN[4]);

		CLEAR_INT_PEND;

		Modbus_Initialize();

		INITIALIZING = FALSE;

		ENABLE_WDOG;

		GIE;
	}

	j = 0;

	while(TRUE)
	{
		TICKLE_WATCHDOG;

		LCD_DISP3[j] = ' ';
		j++;
		if (j>=20) j = 0;
		LCD_DISP3[j] = '.';
		LCD_STR((char*)&LCD_DISP3,3);

		TICKLE_WATCHDOG;
		LEDG_OFF;
		LEDR_ON;
		for(i=0;i<131072;i++){}

		TICKLE_WATCHDOG;
		LEDR_OFF;
		LEDG_ON;
		for(i=0;i<262144;i++){}

		if((!(HW_VER&0x80))&&((*MSVE_IN&0xFF)^0xFF)) Exit_to_App();	/* press buttons to go straight to application */
	}
}

void Exit_to_App(void)
{
/* note: disable_JTAG is located in ISR, so that if debugging, the exit command
		 will cause execution of the APP code and not disable the JTAG in the process */

	vect_p1 = (int*)FLASH_LOC[FLASH_ENTRY_POINT_APP];
	if ((vect_p1 != (int*)0x00000000) && (vect_p1 != (int*)0xFFFFFFFF))
	{
		_GIE;
		*PBCR  = (PBCR_SWW_RDYandCNT | PBCR_WTCNT_5);	/* ws=5 for 90ns flash */
		NOPS;

		FLASH_LOCK;

		LEDR_ON;
		LEDG_ON;

		asm("		.global _vect_p1  ");
	    asm("	ldp		_vect_p1      ");
	    asm("	ldi		@_vect_p1, R0 ");
	    asm("	callnz	R0		      ");	/* call if vect != NULL */
	}
}
