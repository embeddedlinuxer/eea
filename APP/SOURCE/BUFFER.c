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
/* File Name: BUFFER.c						    							*/
/* 									    									*/
/* File Description: Buffer is an abstract data type that holds a data		*/
/* "stream."  Really it's just a bunch of data that needs to be transferred.*/
/* I don't believe it has a specific data type, other than bytes of course. */
/* This file implements that abstract data type, does error correction and 	*/
/* provides functions for manipulating the data type.						*/
/*									    									*/
/****************************************************************************/
#define BUFFER_H

#include "GLBLS.H"
#include "BUFFER.H"

/****************************************************************************/
/* CRC16																	*/
/*                                                                          */
/* Description: This is a CRC for a buffer.                                 */
/*                                                                          */
/* Arguments:	BFR POINTER - the buffer to be checked.                     */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       This implements a CRC16 on a buffer.  Wikipedia CRC16 for	*/
/* 				more information.                                           */
/*                                                                          */
/****************************************************************************/
void CRC16(BFR* buffer)
{
	int i;

	if (buffer->n<=0)	/* empty? */ 
		return;

	if (buffer->n==1)	/* exactly 1 element? */
		buffer->CRC16 = buffer->GSEED;
	
	buffer->CRC16 ^= (buffer->buff[buffer->tail] & 0xFF);

	for (i=0;i<8;i++)
	{	
		if (buffer->CRC16 & 0x01)
		{
			buffer->CRC16 >>= 1;
			buffer->CRC16 ^= GPOLY;
		}
		else
			buffer->CRC16 >>= 1;
	}
}

/****************************************************************************/
/* PUT																		*/
/*                                                                          */
/* Description:	Adds a byte to the end of the buffer.                       */
/*                                                                          */
/* Arguments:	BFR POINTER buffer  - the buffer to be added to.			*/
/* 				UNSIGNED INT b		- the byte to be added.					*/
/*				BOOL CRC			- check CRC on the buffer?	            */
/*                                                                          */
/* Returns:     BOOL TRUE or FALSE if MAXBUFF exceeded.                     */
/*                                                                          */
/* Notes:       True is returned on normal operation.	                    */
/*                                                                          */
/****************************************************************************/
BOOL Put(BFR* buffer, unsigned int b, BOOL CRC)
{
	if (buffer->locked)	/* locked? */ 
		return FALSE;

	_GIEP;

	if (buffer->n >= MAXBUFF)	/* greater than maximum allowed buffer? */
	{
		GIEP;
		return FALSE;
	}
	
	buffer->buff[buffer->tail] = b;
	buffer->n ++;
	
	if (CRC)	/* check CRC? */
		CRC16(buffer);
	
	buffer->tail ++;
	
	if (buffer->tail >= MAXBUFF) 
		buffer->tail = 0;

	GIEP;

	return TRUE;
}

/****************************************************************************/
/* GET																		*/
/*                                                                          */
/* Description: Gets an element from the head of the buffer.                */
/*                                                                          */
/* Arguments:	BFR POINTER - Buffer to get from.                           */
/*                                                                          */
/* Returns:		UNSIGNED INT r - the byte retrieved.                        */
/*                                                                          */
/* Notes:       GET from head PUT on tail                                   */
/*                                                                          */
/****************************************************************************/
unsigned int Get(BFR* buffer)
{
	unsigned char r;

	if (buffer->locked)	/* locked? */ 
		return FALSE;

	_GIEP;

	if (buffer->n <= 0) /* empty? */
	{
		GIEP;
		
		return NULL;
	}

	r = buffer->buff[buffer->head];

	buffer->head ++;
	
	if (buffer->head >= MAXBUFF) 
		buffer->head = 0;
	
	buffer->n --;

	GIEP;

	return r;
}

/****************************************************************************/
/* PUT_N																	*/
/*                                                                          */
/* Description:	Can put entire string b into buffer or only n elements.     */
/*                                                                          */
/* Arguments:	BFR POINTER buffer 		- Buffer to write to				*/ 
/*				UNSIGNED CHAR POINTER b - string or character 				*/
/*				INT n					- number of elements to go into buff*/
/*				BOOL CRC				- CRC check?						*/
/*                                                                          */
/* Returns:    	BOOL TRUE or FALSE		- FALSE if locked or fails          */
/*                                                                          */
/* Notes:       Returns TRUE on normal operation.                           */
/*                                                                          */
/****************************************************************************/
BOOL Put_n(BFR* buffer, unsigned char* b, int n, BOOL CRC)
{
	unsigned char temp;
	int i;

	if (buffer->locked)	/* locked? */ 
		return FALSE;

	_GIEP;

	if (n<=0)
	{/* put b into buffer */
		i = 0;
		
		while(b[i] != NULL)
		{
			if (!Put(buffer, b[i], CRC))
			{
				GIEP;
				return FALSE;
			}
			
			i++;
		}
	}
	else
	{/* put n elements from b into buffer */
		for (i=0;i<n;i++)
		{
			if (!Put(buffer, b[i], CRC))
			{/* failed? return FALSE */
				GIEP;
				return FALSE;
			}
		}
	}

	GIEP;

	return TRUE;
}

/****************************************************************************/
/* CLEAR																	*/
/*                                                                          */
/* Description:	Clears or initializes a buffer.                             */
/*                                                                          */
/* Arguments:	BFR POINTER buffer - buffer to work on.                     */
/*                                                                          */
/* Returns:     void                                                        */
/*                                                                          */
/* Notes:       If INITIALIZING (during startup) all buffers are 0x00 with  */
/*				size of MAXBUFF.                                            */
/*                                                                          */
/****************************************************************************/
void Clear(BFR* buffer)
{
	int i;

	_GIEP;

	if(INITIALIZING)			/* Startup? */ 
		buffer->locked = FALSE;
	else if (buffer->locked)	/* locked?	*/
	{
		GIEP;
		return;
	}

	buffer->GSEED 	= GSEED_DEFAULT;
	buffer->head 	= 0;
	buffer->tail 	= 0;
	buffer->n 		= 0;
	buffer->sum 	= 0;

	if (INITIALIZING)			/* Startup? */
	{
		buffer->CRC16 = buffer->GSEED;
		
		for (i=0;i<MAXBUFF;i++)
			buffer->buff[i] = 0x00;
	}

	GIEP;
}
