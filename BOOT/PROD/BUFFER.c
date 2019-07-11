/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#define BUFFER_H

#include "GLBLS.H"
#include "BUFFER.H"

void CRC16(BFR* buffer)
{
	int i;
	
	if (buffer->n<=0) return;
	
	if (buffer->n==1)
	{
		buffer->CRC16 = GSEED;
	}

	buffer->CRC16 ^= (buffer->buff[buffer->tail] & 0xFF);

	for (i=0;i<8;i++)
	{	
		if (buffer->CRC16 & 0x01)
		{
			buffer->CRC16 >>= 1;
			buffer->CRC16 ^= GPOLY;
		}
		else
		{
			buffer->CRC16 >>= 1;
		}
	}
}

BOOL Put(BFR* buffer, unsigned int b)
{
	if (buffer->locked) return FALSE;

	_GIEP;

	if (buffer->n >= MAXBUFF)
	{
		GIEP;
		return FALSE;
	}
	buffer->buff[buffer->tail] = b;
	buffer->n ++;
	CRC16(buffer);
	buffer->tail ++;
	if (buffer->tail >= MAXBUFF) buffer->tail = 0;

	GIEP;
	
	return TRUE;
}

int Get(BFR* buffer)
{
	unsigned char r;

	if (buffer->locked) return FALSE;

	_GIEP;

	if (buffer->n <= 0)
	{
		GIEP;
		return NULL;
	}
	
	r = buffer->buff[buffer->head];

	buffer->head ++;
	if (buffer->head >= MAXBUFF) buffer->head = 0;
	buffer->n --;
	
	GIEP;
	
	return r;
}

void Clear(BFR* buffer)
{
	int i;

	_GIEP;
	
	if (INITIALIZING) buffer->locked = FALSE;
	else
	if (buffer->locked)
	{
		GIEP;
		return;
	}
	
	buffer->head = 0;
	buffer->tail = 0;
	buffer->n = 0;
	
	if (INITIALIZING)
	{
		buffer->CRC16 = GSEED;
		for (i=0;i<MAXBUFF;i++)
		{
			buffer->buff[i] = 0x00;
		}
	}
	
	GIEP;
}
