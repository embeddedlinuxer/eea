/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#define MODBUSRTU_H

#include "GLBLS.H"
#include "MODBUSRTU.H"

void Modbus_Initialize(void)
{
	Setup_UART(9600);

	PORT.tvector = (int*)WDOG_P;
	PORT.pvector = (int*)MODBUS_RX_ID;

	TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	PORT.TMR_enabled = TRUE;
}

void WDOG_P(void)
{
	TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	if (!PORT.TX_complete) return;
	Clear_RX();
	PORT.pvector = (int*)MODBUS_RX_ID;
	NOPS;
}

void TX_P(void)
{
	PORT.TX_complete = FALSE;
	if (HW_VER&0x80)
	{/* standalone */
		ENABLE_TXB;
	}
	else
	{
		NOPS; UART[BOOTPORT][MCR] |= 0x01;			/* enable transmitter */
	}

	PORT.tvector = (int*)TX_P1;
	TIMER1_COUNTER = PORT.TMR_Preamble_Delay;
}

void TX_P1(void)
{
	PORT.TMR_enabled = FALSE;
	PORT.tvector = (int*)TX_S;
	NOPS;
	UART[BOOTPORT][IER] = 0x02;	/* enable THR, disable RHR interrupts */
	NOPS;
	UART[BOOTPORT][THR] = Get(&PORT.TXbuf);
}

void TX_S(void)
{
	if (HW_VER&0x80)
	{/* standalone */
		DISABLE_TXB;
	}
	else
	{
		UART[BOOTPORT][MCR] &= 0x7E;			/* disable transmitter */
	}
	
	Clear_RX();
	PORT.tvector = (int*)WDOG_P;
	TIMER1_COUNTER = PORT.TMR_Network_WDOG;
	PORT.TX_complete = TRUE;
	NOPS;
	UART[BOOTPORT][IER] = 0x01;	/* disable THR, enable RHR interrupts */
}

void MODBUS_RX_ID(void)
{
 	PORT.TMR_enabled = FALSE;
	PORT.i = (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);	/* (temporary, for debug purposes) */
 	PORT.RX_pending = TRUE;
	PORT.pvector = (int*) MODBUS_RX_FUNCTION;
 	PORT.TMR_enabled = TRUE;
}

void MODBUS_RX_FUNCTION(void)
{
 	PORT.TMR_enabled = FALSE;
	PORT.func = (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);

	switch(PORT.func)
	{
		case mb_cmd_pdi_write_ESN:
		{
			PORT.i = 16;
			PORT.pvector = (int*) MODBUS_RX_nDATA;
			break;
		}
		
		case mb_cmd_pdi_MAX_BAUD:
		case mb_cmd_pdi_RESET:
		case mb_cmd_pdi_EXIT:
		case mb_cmd_pdi_ERASE_CFG:
		case mb_cmd_pdi_RESTORE_FACTORY_DEFAULTS:
		case mb_cmd_pdi_read_ESN:
		case mb_cmd_pdi_clear_scratchpad:
		{
			PORT.i = 2;
			PORT.pvector = (int*) MODBUS_RX_CRC;
			break;
		}

		case mb_cmd_pdi_BAUD:
		{
			PORT.i = 4;
			PORT.pvector = (int*) MODBUS_RX_CRC;
			break;
		}

		case mb_cmd_pdi_read:
		{
			PORT.i = 6;
			PORT.pvector = (int*) MODBUS_RX_nDATA;
			break;
		}

		case mb_cmd_pdi_write_scratchpad:
		case mb_cmd_pdi_write:
		{
			PORT.i = 6;
			PORT.pvector = (int*) MODBUS_RX_nw;
			break;
		}

		case mb_cmd_pdi_store_scratchpad:
		case mb_cmd_pdi_set_entry_point:
		{
			PORT.i = 4;
			PORT.pvector = (int*) MODBUS_RX_nDATA;
			break;
		}

		default:
		{
			PORT.i = 1;
			PORT.pvector = (int*) MODBUS_RX_n;
		}
	}

 	PORT.TMR_enabled = TRUE;
}

void MODBUS_RX_n(void)
{
 	PORT.TMR_enabled = FALSE;
	PORT.i--;
	if (PORT.i)
	{
	 	PORT.TMR_enabled = TRUE;
		return;
	}
	PORT.i = (unsigned int) (PORT.RXbuf.buff[PORT.RXbuf.n-1] & 0xFF);
	PORT.pvector = (int*) MODBUS_RX_nDATA;
 	PORT.TMR_enabled = TRUE;
}

void MODBUS_RX_nw(void)
{
 	PORT.TMR_enabled = FALSE;
	PORT.i--;
	if (PORT.i)
	{
	 	PORT.TMR_enabled = TRUE;
		return;
	}
	
	PORT.i = ((PORT.RXbuf.buff[PORT.RXbuf.n-2]&0xFF)<<8) | (PORT.RXbuf.buff[PORT.RXbuf.n-1]&0xFF);
	PORT.i *= 4; /* n = word32, therefore n*4 bytes */
	PORT.pvector = (int*) MODBUS_RX_nDATA;
 	PORT.TMR_enabled = TRUE;
}

void MODBUS_RX_nDATA(void)
{
 	PORT.TMR_enabled = FALSE;
	PORT.i--;
	if (PORT.i)
	{
	 	PORT.TMR_enabled = TRUE;
		return;
	}

	PORT.i = 2;
	PORT.pvector = (int*) MODBUS_RX_CRC;
 	PORT.TMR_enabled = TRUE;
}

void MODBUS_RX_CRC(void)
{
	BOOL			validated;
	BOOL			reply;
	BOOL			c;
	unsigned int	address;
	unsigned int	numreg;
	unsigned int	tmp0;
	unsigned int	tmp1;
	int*			table;
	int				baud;

 	PORT.TMR_enabled = FALSE;
	PORT.i--;
	if (PORT.i)
	{
	 	PORT.TMR_enabled = TRUE;
		return;
	}

	validated = TRUE;

	PORT.RXbuf.locked = TRUE;		/* lock the buffer */

	/* validate packet */
	if(((int)PORT.Slave_ID != (int)(PORT.RXbuf.buff[0] & 0xFF)) || (PORT.RXbuf.CRC16 != 0))
	{
		validated = FALSE;
	}

	/* execute and form response */
	if (validated)
	{
		DISABLE_TINT0;		/* undo the 5 sec wait for exiting boot loader */

		address =  (unsigned int) (PORT.RXbuf.buff[2] & 0xFF);
		address =  address << 8;
		address |= (unsigned int) (PORT.RXbuf.buff[3] & 0xFF);
		address =  address << 8;
		address |= (unsigned int) (PORT.RXbuf.buff[4] & 0xFF);
		address =  address << 8;
		address |= (unsigned int) (PORT.RXbuf.buff[5] & 0xFF);

		numreg  =  (unsigned int) (PORT.RXbuf.buff[6] & 0xFF);
		numreg  =  numreg << 8;
		numreg  |= (unsigned int) (PORT.RXbuf.buff[7] & 0xFF);

		Clear(&PORT.TXbuf);

		c = TRUE;

		DISABLE_WDOG;

		switch(PORT.func)
		{
			case mb_cmd_pdi_RESET:
			{
				if (!PROGRAM_MODE)
				{
					Setup_UART(9600);
					c = FALSE;
					break;
				}
				else
				{
					MASTER_RESET;
					while(TRUE){}
				}
			}

			case mb_cmd_pdi_EXIT:
			{
				if (!PROGRAM_MODE)
				{
					Setup_UART(9600);
					c = FALSE;
					break;
				}
				else
				{
					Exit_to_App();
					MASTER_RESET;
					while(TRUE){}
				}
			}

			case mb_cmd_pdi_MAX_BAUD:
			{
				Setup_UART(MAXBAUD);
				c = FALSE;
				break;
			}

			case mb_cmd_pdi_BAUD:
			{
				baud =  (unsigned int) (PORT.RXbuf.buff[2] & 0xFF);
				baud =  baud << 8;
				baud |= (unsigned int) (PORT.RXbuf.buff[3] & 0xFF);
				baud *= 100;

				switch(baud)
				{
					case 9600:
					case 19200:
					case 38400:
					case 57600:
					case MAXBAUD:
					{
						Setup_UART(baud);
						break;
					}
				}

				c = FALSE;
				break;
			}

			case mb_cmd_pdi_RESTORE_FACTORY_DEFAULTS:
			{
				Process_Restore_Factory_Defaults();
				break;
			}

			case mb_cmd_pdi_store_scratchpad:
			{
				Process_Store_Scratchpad(address);
				break;
			}

			case mb_cmd_pdi_clear_scratchpad:
			{
				Process_Erase_Scratchpad();
				break;
			}

			case mb_cmd_pdi_ERASE_CFG:
			{
				Process_Erase_Cfg();
				break;
			}

			case mb_cmd_pdi_read_ESN:
			{
				Process_Read_ESN();
				break;
			}

			case mb_cmd_pdi_write_ESN:
			{
				Process_Write_ESN(&PORT.RXbuf.buff[2]);
				break;
			}

			case mb_cmd_pdi_read:
			{
				Process_Read(address, numreg);
				break;
			}

			case mb_cmd_pdi_write_scratchpad:
			{
				Process_Write_Scratchpad(address, numreg, &PORT.RXbuf.buff[8]);
				break;
			}

			case mb_cmd_pdi_write:
			{
				Process_Write(address, numreg, &PORT.RXbuf.buff[8]);
				break;
			}

			case mb_cmd_pdi_set_entry_point:
			{
				Process_Set_Entry_Point(address);
				break;
			}
			
			default:
			{
				c = FALSE;
				break;
			}
		}

		ENABLE_WDOG;

		if (c)
		{/* setup for transmission */
			tmp0 = PORT.TXbuf.CRC16;
			tmp1 = tmp0 >> 8;

			Put(&PORT.TXbuf, tmp0);		/* CRCH */
			Put(&PORT.TXbuf, tmp1);		/* CRCL */
			NOPS;
			UART[BOOTPORT][IER] = 0x00;	/* disable THR, disable RHR interrupts */
			NOPS;
			UART[BOOTPORT][FCR] = 0x07;	/* clear FIFOS */
			PORT.tvector = (int*)TX_P;
			TIMER1_COUNTER = PORT.TMR_EOT_Delay;
		}
	}

	PORT.RXbuf.locked = FALSE;		/* unlock the buffer */
	Clear_RX();
	PORT.pvector = (int*)MODBUS_RX_ID;
	PORT.TMR_enabled = TRUE;
}

void MB_exception(int ex)
{
	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func|0x80);					/* function w/ exception */
	Put(&PORT.TXbuf, ex);								/* exception code */
}

void Process_Read(unsigned int addr, unsigned int n)
{
	unsigned int i;
	unsigned int f;
	unsigned int* c;
	unsigned int j;

	f = FLASH_SIZE();
	if (( 	(addr < (unsigned int)FLASH_LOC) || ((addr+n)>=(f+(unsigned int)FLASH_LOC))			&&
			(addr < (unsigned int)0x800000)  || ((addr+n)>=((unsigned int)0x808000))			&&
			(addr < (unsigned int)0x809800)  || ((addr+n)>=((unsigned int)0x80A000))
		) || (n==0) )
	{
		MB_exception(mb_excp_illegal_addr);
		return;
	}

	c = (unsigned int*) addr;

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
	Put(&PORT.TXbuf, (n>>8));							/* n word32 */
	Put(&PORT.TXbuf, n);

	for (i=0;i<n;i++)
	{   
		Put(&PORT.TXbuf, c[0]>>24);
		Put(&PORT.TXbuf, c[0]>>16);
		Put(&PORT.TXbuf, c[0]>>8);
		Put(&PORT.TXbuf, c[0]);
		c++;
	}
}

void Process_Write_Scratchpad(unsigned int destination, unsigned int n, unsigned int* source)
{
	unsigned int i;
	unsigned int z;
	unsigned int* a;
	unsigned int* s;

	a = (unsigned int*) MEM_LOC;

	if ((destination+n)>(FLASH_SECTOR_SIZE))
	{
		MB_exception(mb_excp_illegal_addr);
		return;
	}

	if (n>0x8000)
	{
		MB_exception(mb_excp_illegal_data);
		return;
	}

	s = source;
	for (i=destination;i<(destination+n);i++)
	{/* modify data, to end of block or N regs */
		z = ((source[0]&0xFF)<<24) | ((source[1]&0xFF)<<16) | ((source[2]&0xFF)<<8) | (source[3]&0xFF);
		a[i] = z;
		source += 4;
	}

	for (i=destination;i<(destination+n);i++)
	{/* scan data and verify */
		z = ((s[0]&0xFF)<<24) | ((s[1]&0xFF)<<16) | ((s[2]&0xFF)<<8) | (s[3]&0xFF);
		if (a[i] != z)
		{
			MB_exception(mb_excp_memory_error);
		}
		s += 4;
	}

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
	Put(&PORT.TXbuf, destination>>24);
	Put(&PORT.TXbuf, destination>>16);
	Put(&PORT.TXbuf, destination>>8);
	Put(&PORT.TXbuf, destination);
	Put(&PORT.TXbuf, source[0]);						/* CRC of prev pkt */
	Put(&PORT.TXbuf, source[1]);						/* CRC of prev pkt */
}

void Process_Write(unsigned int destination, unsigned int n, unsigned int* source)
{
	unsigned int i;
	unsigned int f;
	unsigned int z;
	unsigned int* a;
	unsigned int* s;
	unsigned int current_block_size;
	unsigned int current_block_ptr;
	unsigned int* current_block_addr;
	int	nreg;
	int	nr;

	nreg = n;

	a = (unsigned int*) MEM_LOC;

	f = FLASH_SIZE();
	if ((destination < (unsigned int)FLASH_LOC) || ((destination+n)>=(f+(unsigned int)FLASH_LOC)))
	{
		MB_exception(mb_excp_illegal_addr);
		return;
	}

	if (n>0x8000)
	{
		MB_exception(mb_excp_illegal_data);
		return;
	}

	current_block_addr = (unsigned int*) destination;

	while(nreg>0)
	{
		if ( current_block_addr < (FLASH_LOC+FLASH_SECTOR_SIZE) )
		{
			current_block_size = FLASH_CFGB_SIZE;
			current_block_ptr  = (unsigned int)current_block_addr & 0xFFF;
			current_block_addr = (unsigned int*)((unsigned int)current_block_addr & 0xFFF000);
		}
		else
		{
			current_block_size = FLASH_SECTOR_SIZE;
			current_block_ptr  = (unsigned int)current_block_addr & 0x7FFF;
			current_block_addr = (unsigned int*)((unsigned int)current_block_addr & 0xFF8000);
		}

		for (i=0;i<current_block_size;i++)
		{/* copy to scratchpad */
			a[i] = current_block_addr[i];
		}

		s = source;
		nr = nreg;
		for (i=current_block_ptr;i<current_block_size;i++)
		{/* modify data, to end of block or N regs */
			z = ((source[0]&0xFF)<<24) | ((source[1]&0xFF)<<16) | ((source[2]&0xFF)<<8) | (source[3]&0xFF);
			a[i] = z;
			source += 4;
			nreg--;
			if (nreg<=0)
			{
				break;
			}
		}

		for (i=current_block_ptr;i<current_block_size;i++)
		{/* scan data and verify */
			z = ((s[0]&0xFF)<<24) | ((s[1]&0xFF)<<16) | ((s[2]&0xFF)<<8) | (s[3]&0xFF);
	        if (a[i] != z)
	        {
				MB_exception(mb_excp_memory_error);
				return;
	        }
			s += 4;
			nr--;
			if (nr<=0)
			{
				break;
			}
		}

		LEDR_ON; LEDG_OFF;
        i = FLASH_ERASE_BLK(current_block_addr);
        if (i)
        {
			MB_exception(mb_excp_memory_error);
			return;
        }

        i = FLASH_WRITE_BLK(current_block_addr, a, current_block_size);
        if (i)
        {
			MB_exception(mb_excp_memory_error);
			return;
        }

		for (i=0;i<current_block_size;i++)
		{/* verify */
			if (current_block_addr[i] != a[i])
			{
				MB_exception(mb_excp_memory_error);
				return;
			}
		}

		current_block_addr += current_block_size;
	}

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
	Put(&PORT.TXbuf, destination>>24);
	Put(&PORT.TXbuf, destination>>16);
	Put(&PORT.TXbuf, destination>>8);
	Put(&PORT.TXbuf, destination);
	Put(&PORT.TXbuf, source[0]);						/* CRC of prev pkt */
	Put(&PORT.TXbuf, source[1]);						/* CRC of prev pkt */
}

void Process_Read_ESN(void)
{/* reads the 128 bit INTEL and 128 bit PDI ESN */
	int i;

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */

	for(i=0;i<9;i++)
	{
		Put(&PORT.TXbuf, ESN[i]>>24);
		Put(&PORT.TXbuf, ESN[i]>>16);
		Put(&PORT.TXbuf, ESN[i]>>8);
		Put(&PORT.TXbuf, ESN[i]);
	}
}

void Process_Write_ESN(unsigned int* dat)
{/* writes the 128 bit PDI ESN */
	int i;
	unsigned int ESNU[4];

	for(i=0;i<4;i++)
	{
		ESNU[i] = (dat[0]<<24) | (dat[1]<<16) | (dat[2]<<8) | (dat[3]);
		dat += 4;
	}

	if (FLASH_WRITE_ESN_USER(&ESNU[0]))
	{
		MB_exception(mb_excp_memory_error);
		return;
	}

	FLASH_READ_ESN_USER(&ESN[4]);

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
}

void Process_Set_Entry_Point(unsigned int addr)
{
	unsigned int* m;
	unsigned int* f;
	unsigned int i;

	m = (unsigned int*) MEM_LOC;
	f = (unsigned int*) FLASH_LOC;

	for (i=0;i<FLASH_BOOT_SIZE;i++)
	{/* copy boot block to scratchpad */
		m[i] = f[i];
	}	

	m[FLASH_ENTRY_POINT_APP] = addr;

	LEDR_ON; LEDG_OFF;
    i = FLASH_ERASE_BLK((unsigned int*)FLASH_LOC+FLASH_CFGB_SIZE);
    i |= FLASH_WRITE_BLK((unsigned int*)FLASH_LOC+FLASH_CFGB_SIZE, m+FLASH_CFGB_SIZE, FLASH_CFGB_SIZE);

    if (i)
    {
		MB_exception(mb_excp_memory_error);
		return;
    }

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
}

unsigned int Copy_Block(unsigned int* s, unsigned int* d)
{
	unsigned int i;
	unsigned int* m;

	m = (unsigned int*) MEM_LOC;

	for (i=0;i<FLASH_CFG_SIZE;i++)
	{/* copy to scratchpad */
		m[i] = s[i];
	}	

	LEDR_ON; LEDG_OFF;
    i = FLASH_ERASE_BLK(d);
	i |= FLASH_WRITE_BLK(d, m, FLASH_CFG_SIZE);

	return i;
}

void Process_Restore_Factory_Defaults(void)
{
	unsigned int r;

	LEDR_ON; LEDG_OFF;
	r = Copy_Block((unsigned int*)FLASH_LOC_CFG_FACTORY, (unsigned int*)FLASH_LOC_CFG1);
	r = Copy_Block((unsigned int*)FLASH_LOC_CFG_FACTORY, (unsigned int*)FLASH_LOC_CFG2);

	if (r)
	{
		MB_exception(mb_excp_memory_error);
		return;
	}

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
}

void Process_Erase_Cfg(void)
{
	unsigned int i;

	LEDR_ON; LEDG_OFF;
    FLASH_ERASE_BLK((unsigned int*)FLASH_LOC_CFG_FACTORY);
    FLASH_ERASE_BLK((unsigned int*)FLASH_LOC_CFG1);
    FLASH_ERASE_BLK((unsigned int*)FLASH_LOC_CFG2);

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
}

void Process_Erase_Scratchpad(void)
{
	unsigned int* m;
	unsigned int i;

	m = (unsigned int*) MEM_LOC;
	for (i=0;i<FLASH_SECTOR_SIZE;i++)
	m[i] = 0x00000000;

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
}

void Process_Store_Scratchpad(unsigned int addr)
{
	unsigned int* m;
	unsigned int* f;
	unsigned int i;
	unsigned int SIZE;

	m = (unsigned int*) MEM_LOC;
	f = (unsigned int*) addr;

	if ( f < (FLASH_LOC+FLASH_SECTOR_SIZE) )
	{
		SIZE = FLASH_CFGB_SIZE;
		f = (unsigned int*)((unsigned int)f & 0xFFF000);
	}
	else
	{
		SIZE = FLASH_SECTOR_SIZE;
		f = (unsigned int*)((unsigned int)f & 0xFF8000);
	}

	LEDR_ON; LEDG_OFF;
    i = FLASH_ERASE_BLK(f);
    i |= FLASH_WRITE_BLK(f, m, SIZE);

    if (i)
    {
		MB_exception(mb_excp_memory_error);
		return;
    }

	Put(&PORT.TXbuf, (int)PORT.Slave_ID);				/* slave */
	Put(&PORT.TXbuf, PORT.func);						/* function */
	Put(&PORT.TXbuf, ((unsigned int)f)>>24);
	Put(&PORT.TXbuf, ((unsigned int)f)>>16);
	Put(&PORT.TXbuf, ((unsigned int)f)>>8);
	Put(&PORT.TXbuf, ((unsigned int)f));
}
