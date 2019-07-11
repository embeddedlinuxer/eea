/***************************************************************************/
/* (c) 2004 Phase Dynamics, Inc.                                           */
/* Phase Dynamics, Inc.                                                    */
/* 1251 Columbia Dr.                                                       */
/* Richardson, TX 75081                                                    */
/* 972-680-1550    972-680-3262 fax                                        */
/***************************************************************************/

#ifndef _BUFFER
#define _BUFFER

#ifdef BUFFER_H
#define _EXTERN
#else
#define _EXTERN extern
#endif

#define MAXBUFF 4096+16
typedef struct	{
					int				head;
					int				tail;
					int				n;
					unsigned int	CRC16;
					unsigned int	buff[MAXBUFF];
					BOOL			locked;
				} BFR;

_EXTERN void Clear(BFR* buffer);
_EXTERN void CRC16(BFR* buffer);
_EXTERN BOOL Put(BFR* buffer, unsigned int b);
_EXTERN int Get(BFR* buffer);
#define GPOLY 0xA001;
#define GSEED 0x1343;

_EXTERN BOOL INITIALIZING;

#undef _EXTERN
#undef BUFFER_H
#endif
