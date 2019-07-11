*****************************************************************************
* Phase Dynamics, Inc.							    						*
* 1251 Columbia Dr.                                                        	*
* Richardson, TX 75081                                                     	*
* 972-680-1550    972-680-3262 fax                                         	*
*									    									*
* (C)2011 Phase Dynamics, Inc.						    					*
* This code is not to be used in any capacity without explicit consent by  	*
* Phase Dynamics, Inc.  Violators will be prosecuted to the fullest extent 	*
* of the law.  Please contact Phase Dynamics, Inc. if you wish to use this 	*
* code.  Thank you for your cooperation.                                   	*
*									    									*
* File Name: FLOAT1.asm						    							*
* 									    									*
* File Description:	Converts floating point numbers from DSP to IEEE.		*
*									    									*
*****************************************************************************

			.text

			.global 	_FLOAT_TABLE
_FLOAT_TABLE:
			.word 	0FF800000h
			.word	0FF000000h
			.word	07F000000h
			.word	080000000h
			.word	081000000h
			.word	07F800000h
			.word	000400000h
			.word	0007FFFFFh
			.word	07F7FFFFFh

_ftable		.word	_FLOAT_TABLE

			.global 	_FMIEEE
_FMIEEE:	PUSH	DP
			PUSH	AR1
			PUSH	R1
			PUSHF	R1
			LDI		AR2,R0
			LDP		_ftable
			LDI		@_ftable,AR1
			CALL	_FMIEEE1
			POPF	R1
			POP		R1
			POP		AR1
			POP		DP
			RETS

			.global 	_TOIEEE
_TOIEEE:	PUSH	DP
			PUSH	AR1
			PUSH	R1
			PUSHF	R1
			LDFU	R2,R0
			LDP		_ftable
			LDI		@_ftable,AR1
			CALL	_TOIEEE1
			POPF	R1
			POP		R1
			POP		AR1
			POP		DP
			RETS

***************************************************
* IEEE to TMS320C3x conversion
* IN:  R0(31..0) = IEEE number
* OUT: R0(39..8) = converted C3x float
***************************************************
_FMIEEE1:	LDI		R0,R1
			AND		*+AR1(5),R1
			BZ		UNNORM			; IF E = 0, NUMBER IS EITHER 0 OR DENORMALIZED
			XOR		*+AR1(5),R1
			BNZ		NORMAL			; IF E < 255, USE REGULAR ROUTINE
* HANDLE NaN AND INFINITY
			TSTB	*+AR1(7),R0
			RETSNZ					; RETURN IF NaN
			LDI		R0,R0
			LDFGT	*+AR1(8),R0		; IF +INF, MOST POSITIVE NUMBER
			LDFN	*+AR1(5),R0		; IF -INF, MOST NEGATIVE NUMBER
			RETS
* HANDLE 0s AND UNNORMALIZED NUMBERS
UNNORM:		TSTB	*+AR1(6),R0		; IS MSB OF F = 1?
			LDFZ	*+AR1(3),R0		; NO - FORCE NUMBER TO 0 AND RETURN
			RETSZ
			XOR		*+AR1(6),R0		; IF MSB OF F = 1, MAKE IT 0
			BND		NEG1
			LSH		1,R0			; ELIMINATE SIGN BIT AND LINE UP MANTISSA
			SUBI	*+AR1(2),R0		; MAKE E = +/-127
			PUSH	R0
			POPF	R0				; PUT NUMBER IN FLOATING POINT FORMAT
			RETS
NEG1:		POPF	R0
			NEGF	R0,R0			; IF NEGATIVE, NEGATE R0
			RETS
* HANDLE REGULAR CASES
NORMAL:		AND3	R0,*AR1,R1		; REPLACE FRACTION WITH 0
			BND		NEG				; TEST SIGN
			ADDI	R0,R1			; SHIFT SIGN AND EXPONENT INSERTING 0
			SUBI	*+AR1(2),R1		; UNBIAS EXPONENT
			PUSH	R1
			POPF	R0				; LOAD AS FLOAT PT NUMBER
			RETS
NEG:		POPF	R0				; LOAD AS FLOAT PT NUMBER
			NEGF	R0,R0			; NEGATE IF ORIGINAL SIGN NEGATIVE
			RETS

***************************************************
* TMS320C3x to IEEE conversion
* IN:  R0(39..8) = C3x float
* OUT: R0(31..0) = converted IEEE number
***************************************************
_TOIEEE1:	LDF		R0,R0			; DETERMINE THE SIGN OF THE NUMBER
			LDFZ	*+AR1(4),R0		; IF 0, LOAD APPROPRIATE NUMBER
			BND		NEG2			; DELAYED BRANCH TO NEG IF NEGATIVE
			ABSF	R0				; ABSOLUTE VALUE
			LSH		1,R0			; ELIMINATE SIGN BIT
			PUSHF	R0
			POP		R0				; PLACE IN LOWER 32 BITS OF R0
			ADDI	*+AR1(2),R0		; ADD EXPONENT BIAS (127)
			LSH		-1,R0			; ADD THE POSITIVE SIGN
CONT:		TSTB	*+AR1(5),R0
			RETSNZ					; IF E > 0, RETURN
			TSTB	*+AR1(7),R0
			RETSZ					; IF e = 0 & F = 0, RETURN
			PUSH	R0
			POPF	R0
			LSH		-1,R0			; SHIFT F RIGHT BY ONE BIT
			PUSHF	R0
			POP		R0
			ADDI	*+AR1(6),R0		; ADD 1 TO THE MSB OF F
			RETS
NEG2:		POP		R0				; PLACE NUMBER IN LOWER 32 BITS OF R0
			BRD		CONT
			ADDI	*+AR1(2),R0		; ADD EXPONENT BIAS (127)
			LSH		-1,R0			; MAKE SPACE FOR THE SIGN
			ADDI	*+AR1(3),R0		; ADD THE NEGATIVE SIGN
			RETS
