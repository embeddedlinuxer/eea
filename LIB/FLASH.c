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
/* File Name: FLASH.C						    							*/
/* 									    									*/
/* File Description: This file controls the flash memory.  It implements	*/
/* the flash memory chips that we have on our analyzer.						*/
/*									    									*/
/****************************************************************************/
#define FLASH_H

#include "GLBLS.H"
#include "FLASH.H"

/****************************************************************************/
/* FLASH SIZE																*/
/*                                                                          */
/* Description: Returns a vector of bytes. That describes the flash size.   */
/*                                                                          */
/* Arguments: 	void                                                        */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
unsigned int FLASH_SIZE(void)
{
 	unsigned int dev_id;	/* device id - FLASH_LOC[1]  */
 	unsigned int r[2];		/* return vector 			 */

	_GIEP;
	r[0] 		= 0;
	r[1] 		= 0;
	*FLASH_LOC 	= READ_CONFIG;
	dev_id 		= FLASH_LOC[1];
	*FLASH_LOC 	= READ_ARRAY;
	GIEP;

	switch(dev_id & 0xFFFF)
	{
		case 0x88C1:
		{/* 8 Mbit = 512kx16 */
			r[0] = 0x80000;
		
			break;
		}
		case 0x88C3:
		{/* 16 Mbit = 1Mx16  */
		 	r[0] = 0x100000;
			
			break;
		}
		case 0x88C5:
		{/* 32 Mbit = 2Mx16  */
			r[0] = 0x200000;
			
			break;
		}
		case 0x88CD:
		{/* 64 Mbit = 4Mx16  */
			r[0] = 0x400000;
			
			break;
		}
	}

	switch(dev_id >> 16)
	{
		case 0x88C1:
		{/* 8 Mbit = 512kx16 */
		 	r[1] = 0x80000;
			
			break;
		}
		case 0x88C3:
		{/* 16 Mbit = 1Mx16  */
		 	r[1] = 0x100000;
			
			break;
		}
		case 0x88C5:
		{/* 32 Mbit = 2Mx16  */
		 	r[1] = 0x200000;
			
			break;
		}
		case 0x88CD:
		{/* 64 Mbit = 4Mx16  */
		 	r[1] = 0x400000;
			
			break;
		}
	}

	if (r[0]<r[1]) 
		return r[0];
	else 
		return r[1];
}

/****************************************************************************/
/* FLASH CHECK ADDR															*/
/*                                                                          */
/* Description: Checks the address of the flash memory and n bytes of it.   */
/*                                                                          */
/* Arguments: 	UNSIGNED INT POINTER addr - address							*/
/*				UNSIGNED INT n			  - number of bytes                 */
/*                                                                          */
/* Returns:     INT 0 or FLASH_ERROR_BLKADDR - 0 is better?                 */
/*                                                                          */
/* Notes:       dunno why it can't return 1.  I guess T is reserved for fail*/
/*                                                                          */
/****************************************************************************/
int FLASH_CHECK_ADDR(unsigned int* addr, unsigned int n)
{
 	unsigned int dev_id;	/* not used 	*/
 	unsigned int f;			/* flash size 	*/
 	unsigned int mask;		/* byte mask 	*/

 	f = FLASH_SIZE();

 	if (addr >= (FLASH_LOC+f)) 
		return FLASH_ERROR_BLKADDR;
 	
	if (addr < FLASH_LOC) 
		return FLASH_ERROR_BLKADDR;

 	if (addr < (FLASH_LOC+FLASH_SECTOR_SIZE))
 	{/* 4k parameter block */
	 	if (n==0)
	 	{
	 		if ((((unsigned int)addr-(unsigned int)FLASH_LOC)%FLASH_CFGB_SIZE) == 0)
	 			return 0;
	 	}
		if (n>FLASH_CFGB_SIZE) 
			return FLASH_ERROR_BLKADDR;
		
		if (((unsigned int)addr+n-1) >= ((unsigned int)FLASH_LOC+FLASH_SECTOR_SIZE)) 
			return FLASH_ERROR_BLKADDR;
		
		mask = 0xFFFFFFFF ^ (FLASH_CFGB_SIZE-1);
		f 	 = ((unsigned int)addr&mask) + FLASH_CFGB_SIZE;
		
		if (((unsigned int)addr+n-1) < ((unsigned int)f)) 
			return 0;
 	}
 	else
 	{
	 	if (n==0)
	 	{
			if ((((unsigned int)addr-(unsigned int)FLASH_LOC)%FLASH_SECTOR_SIZE) == 0)
				return 0;
		}
		
		if (n>FLASH_SECTOR_SIZE) 
			return FLASH_ERROR_BLKADDR;
		
		if (((unsigned int)addr+n-1) >= ((unsigned int)FLASH_LOC+f)) 
			return FLASH_ERROR_BLKADDR;
		
		mask = 0xFFFFFFFF ^ (FLASH_SECTOR_SIZE-1);
		f 	 = ((unsigned int)addr&mask) + FLASH_SECTOR_SIZE;
		
		if (((unsigned int)addr+n-1) < ((unsigned int)f)) 
			return 0;
 	}

	return FLASH_ERROR_BLKADDR;
}                            

/****************************************************************************/
/* FLASH LOCK BLK															*/
/*                                                                          */
/* Description: [Un]locks flash memory address.                             */
/*                                                                          */
/* Arguments:   UNSIGNED INT POINTER addr - address							*/
/*				INT lock				  - unlock/lock/lock-down modes     */
/*                                                                          */
/* Returns:     INT r - status of flash memory after [un]lock.              */
/*                                                                          */
/* Notes:       FLASH_CHECK_ADDR uses negative logic.                       */
/*                                                                          */
/****************************************************************************/
int FLASH_LOCK_BLK(unsigned int* addr, int lock)
{
	int i;	/* negative logic check - # is false */
	int r;	/* return flash status 				 */

	i = FLASH_CHECK_ADDR(addr, 0);
	
	if (i) 
		return i;

	_GIEP;

	switch(lock)
	{
		case 0:
		{/* unlock block */
			addr[0] = BLOCK_LOCK;
			addr[0] = BLOCK_LOCK_UNLOCK;
			break;
		}
		case 1:
		{/* lock block */
			addr[0] = BLOCK_LOCK;
			addr[0] = BLOCK_LOCK_LOCK;
			break;
		}
		case 2:
		{/* lock-down block */
			addr[0] = BLOCK_LOCK;
			addr[0] = BLOCK_LOCK_LOCKDOWN;
			break;
		}
	}

	r = FLASH_STATUS();

	*FLASH_LOC = READ_ARRAY;

	GIEP;

	return r;
}

/****************************************************************************/
/* FLASH ERASE BLK															*/
/*                                                                          */
/* Description: Erases a block of memory.                                   */
/*                                                                          */
/* Arguments:   UNSIGNED INT POINTER addr - address                         */
/*                                                                          */
/* Returns:     INT r - return flash status                                 */
/*                                                                          */
/* Notes:       none.                                                       */
/*                                                                          */
/****************************************************************************/
int FLASH_ERASE_BLK(unsigned int* addr)
{
	unsigned int status;
	int i;
	int r;

	i = FLASH_CHECK_ADDR(addr, 0);

	if (i) 
		return i;

	_GIEP; DISABLE_WDOG;

	FLASH_LOCK_BLK(addr, FALSE);

	*FLASH_LOC 	= BLOCK_ERASE;
	addr[0] 	= BLOCK_ERASE_CONFIRM;
	status 		= *FLASH_LOC;

	while (!((status & 0x00800080)==0x00800080))
		status = *FLASH_LOC;

	r 			= FLASH_STATUS();
	*FLASH_LOC 	= READ_ARRAY;

	FLASH_LOCK_BLK(addr, TRUE);

	ENABLE_WDOG; 
	GIEP;

	return r;
}

/****************************************************************************/
/* FLASH WRITE BLK															*/
/*                                                                          */
/* Description: Write a block to flash                                      */
/*                                                                          */
/* Arguments:   UNSIGNED INT POINTER addr - memory address destination      */
/*              UNSIGNED INT POINTER data - data vector source              */
/*              UNSIGNED INT n 			  - size of data                    */
/*                                                                          */
/* Returns:     INT r - verify flash status                                 */
/*                                                                          */
/* Notes:       values are passed by reference                              */
/*                                                                          */
/****************************************************************************/
int FLASH_WRITE_BLK(unsigned int* addr, unsigned int* data, unsigned int n)
{
	unsigned int r;			/* return 					*/
	unsigned int status;	/* status of flash location */
	int i;					/* error check/ counter 	*/

	i = FLASH_CHECK_ADDR(addr, n);
	
	if (i)			/* error, return */ 
		return i;

	_GIEP; 
	DISABLE_WDOG;

	FLASH_LOCK_BLK(addr, FALSE);

	for (i=0;i<n;i++)
	{
		*FLASH_LOC 	= PROGRAM;
		addr[i] 	= data[i];
		*FLASH_LOC 	= READ_STATUS;
		status 		= *FLASH_LOC;
		
		while (!((status & 0x00800080)==0x00800080))
			status = *FLASH_LOC;
	}

	r 			= FLASH_STATUS();
	*FLASH_LOC 	= READ_ARRAY;

	FLASH_LOCK_BLK(addr, TRUE);

	if (!r)
	{/* verify */
		for (i=0;i<n;i++)
		{
			if (addr[i] != data[i])
			{
				r = FLASH_ERROR_PROG;
				break;
			}
		}
	}

	ENABLE_WDOG; 
	GIEP;

	return r;
}

/****************************************************************************/
/* FLASH STATUS																*/
/*                                                                          */
/* Description: Checks the flash memory space for errors.                   */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     int r - error code - 0 if none                              */
/*                                                                          */
/* Notes:       FLASH_ERROR_VPP			- VPP Range Error					*/
/*				FLASH_ERROR_PROG		- Programming Error					*/
/*				FLASH_ERROR_LOCKED		- Locked block						*/
/*				FLASH_ERROR_CMD_SEQ		- Command Sequence Error			*/
/*				FLASH_ERROR_BLK_ERASE   - Block Erase Error                 */
/*                                                                          */
/****************************************************************************/
int FLASH_STATUS(void)
{
	unsigned int r;
	unsigned int status;
	
	r 			= 0;
	_GIEP; 
	DISABLE_WDOG;
	*FLASH_LOC 	= READ_STATUS;
	status 		= *FLASH_LOC;

	while(TRUE)
	{
		if (status&0x00080008)
		{/* Vpp Range Error */
			r 			= FLASH_ERROR_VPP;
			*FLASH_LOC 	= CLEAR_STATUS;
			break;
		}

		if (status&0x00100010)
		{/* Programming Error */
			r 			= FLASH_ERROR_PROG;
			*FLASH_LOC	= CLEAR_STATUS;
			break;
		}

		if (status&0x00020002)
		{/* attempted alteration of locked block, aborted */
			r 			= FLASH_ERROR_LOCKED;
			*FLASH_LOC	= CLEAR_STATUS;
			break;
		}

		if (status&0x00300030)
		{/* command sequence error */
			r			= FLASH_ERROR_CMD_SEQ;
			*FLASH_LOC 	= CLEAR_STATUS;
			break;
		}

		if (status&0x00200020)
		{/* block erase */
			r			= FLASH_ERROR_BLK_ERASE;
			*FLASH_LOC 	= CLEAR_STATUS;
			break;
		}

		break;
	}

	ENABLE_WDOG; GIEP;
	return r;
}

/****************************************************************************/
/* FLASH READ ESN MFGR														*/
/*                                                                          */
/* Description: Checks READ_CONFIG and puts it in dat location              */
/*                                                                          */
/* Arguments:   UNSIGNED INT POINTER dat - data					            */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void FLASH_READ_ESN_MFGR(unsigned int* dat)
{
	int i;

	_GIEP; 
	DISABLE_WDOG;
	*FLASH_LOC	= READ_CONFIG;
	
	for(i=0;i<4;i++)
		dat[i] = FLASH_LOC[i+0x81];
		
	/*ESN status - check bits 0,16, if they are 0 then it is locked*/
	dat[4] 		= FLASH_LOC[0x80];	
	*FLASH_LOC 	= READ_ARRAY;
	ENABLE_WDOG; 
	GIEP;
}

/****************************************************************************/
/* FLASH READ ESN USER														*/
/*                                                                          */
/* Description: Checks READ_CONFIG and puts it in dat location              */
/*                                                                          */
/* Arguments:   UNSIGNED INT POINTER dat - data                             */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
void FLASH_READ_ESN_USER(unsigned int* dat)
{
	int i;

	_GIEP; 
	DISABLE_WDOG;
	*FLASH_LOC = READ_CONFIG;
	
	for(i=0;i<4;i++)
		dat[i] = FLASH_LOC[i+0x85];
	
	/*ESN status - check bits 1,17, if they are 0 then it is locked*/
	dat[4] = FLASH_LOC[0x80];	
	*FLASH_LOC = READ_ARRAY;
	ENABLE_WDOG; 
	GIEP;
}

/****************************************************************************/
/* FLASH WRITE ESN USER														*/
/*                                                                          */
/* Description: Writes PROTECT_PROG to dat                                  */
/*                                                                          */
/* Arguments:   UNSIGNED INT POINTER dat - data                             */
/*                                                                          */
/* Returns:     INT r - status of write                                     */
/*                                                                          */
/* Notes:       Writing the protection register is like an OTP - once 0, 	*/
/*				it is gone, so lock it afterward!                           */
/*                                                                          */
/****************************************************************************/
int FLASH_WRITE_ESN_USER(unsigned int* dat)
{
	int r;					/* return status 	*/
	int i;					/* counter 			*/
	unsigned int status;	/* memory status 	*/

	_GIEP; 
	DISABLE_WDOG;
	*FLASH_LOC	= READ_CONFIG;
	status 		= FLASH_LOC[0x80];
	*FLASH_LOC 	= READ_ARRAY;

	if ((status & 0x00020002) != 0x00020002)
	{/*protection register is already locked*/
		ENABLE_WDOG; GIEP;
		return -1;	
	}

	for(i=0;i<4;i++)
	{
		*FLASH_LOC 	= PROTECT_PROG;
		dat[i] 		= FLASH_LOC[i+0x85];
		*FLASH_LOC 	= READ_STATUS;
		status 		= *FLASH_LOC;
		
		while (!((status & 0x00800080)==0x00800080))
			status = *FLASH_LOC;
	}

	r 			= FLASH_STATUS();
	*FLASH_LOC 	= READ_ARRAY;
	r 			= FLASH_LOCK_ESN_USER();
	ENABLE_WDOG; 
	GIEP;

	return r;
}

/****************************************************************************/
/* FLASH LOCK ESN USER														*/
/*                                                                          */
/* Description: Locks the ESN for the user profile                          */
/*                                                                          */
/* Arguments:   void                                                        */
/*                                                                          */
/* Returns:     INT r - status of lock                                      */
/*                                                                          */
/* Notes:       none                                                        */
/*                                                                          */
/****************************************************************************/
int FLASH_LOCK_ESN_USER(void)
{
	int r;					/* return 		 */
	unsigned int status;	/* memory status */

	_GIEP; 
	DISABLE_WDOG;
	*FLASH_LOC 		= PROTECT_PROG;
	FLASH_LOC[0x80] = 0xFFFDFFFD;	/* PERMANENTLY LOCK user ESN */
	*FLASH_LOC 		= READ_STATUS;
	status 			= *FLASH_LOC;

	while (!((status & 0x00800080)==0x00800080))
		status = *FLASH_LOC;

	r 			= FLASH_STATUS();
	*FLASH_LOC 	= READ_ARRAY;
	ENABLE_WDOG; 
	GIEP;

	return r;
}
