#line 104 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\GLBLS.H"
const char copyright[]={"©2018 Phase Dynamics, Inc.              "}; 
const char    credit[]={"Firmware by PDI"};	
#line 8 "G:\workspace\win\eea\INCLUDE\stdarg.h"
typedef char *va_list;

#line 15 "G:\workspace\win\eea\INCLUDE\format.h"
extern int _scanfi(void *inp, const char *_format, va_list _ap,
            int (*_chkmbc)(void **inp, char **_format, int *num_read),
            char (*_inpchar)(void **inp),
            void (*_uninpchar)(void **inp, char outchar));
 
 
 
 
typedef struct {
      unsigned int   flags;    
      int      fwidth;         
      int      precision;      
      char     conv;           
} _PFIELD;
 
typedef struct {
      unsigned int   flags;    
      int      fwidth;         
      int      precision;      
      char     scanset[96];   
      char     conv;           
} _SFIELD;
 
 
 
 

#line 14 "G:\workspace\win\eea\INCLUDE\string.h"
typedef unsigned size_t;
#line 26
 void   *memchr(const void *_mem, int _ch, size_t _length);
 int     memcmp(const void *_mem1, const void *_mem2, size_t _length);
 void   *memcpy(void *_s1, const void *_s2, size_t _n);
         void   *memmove(void *_s1, const void *_s2, size_t _n);
 void   *memset(void *_s, int _c, size_t _n);

 char   *strcat(char *_string1, const char *_string2);
 char   *strchr(const char *_string, int _ch);
 int     strcmp(const char *_string1, const char *_string2);
 char   *strcpy(char *_to, const char *_from);
         int     strcoll(const char *_string1, const char *_string2);
         size_t  strcspn(const char *_string, const char *_chs);
         char   *strerror(int _errno);
 size_t  strlen(const char *_string);
         char   *strncat(char *_to, const char *_from, size_t _n);
         int     strncmp(const char *_string1, const char *_string2, size_t _n);
         char   *strncpy(char *_to, const char *_from, size_t _n);
         char   *strpbrk(const char *_string, const char *_chs);
 char   *strrchr(const char *_string, int _ch);
         size_t  strspn(const char *_string, const char *_chs);
         char   *strstr(const char *_string1, const char *_string2);
         char   *strtok(char *_str1, const char *_str2);
         size_t  strxfrm(char *_to, const char *_from, size_t _n);

#line 16 "G:\workspace\win\eea\INCLUDE\stdio.h"
typedef struct {
         int fd;                     
         unsigned char* buf;         
         unsigned char* pos;         
         unsigned char* bufend;      
         unsigned char* buff_stop;   
         unsigned int   flags;       
         int index;                  
} FILE;



typedef long fpos_t;
#line 101
typedef struct {                             
   char  name[9];
   unsigned short flags;
   int (*OPEN) ();
   int (*CLOSE) ();
   int (*READ) ();
   int (*WRITE) ();
   long (*LSEEK) ();
   int (*UNLINK) ();
   int (*RENAME) ();
} _DEVICE;

extern FILE _ftable[20];
extern char _tmpnams[20][(sizeof("") + 15)];

 
 
 
 
 
 
       int     remove(const char *_file);
extern int     rename(const char *_old, const char *_new);
extern FILE   *tmpfile(void);
extern char   *tmpnam(char *_s);

 
 
 
extern int    fclose(FILE *_fp); 
extern FILE   *fopen(const char *_fname, const char *_mode);
extern FILE   *freopen(const char *_fname, const char *_mode,
               register FILE *_fp);
extern void    setbuf(register FILE *_fp, char *_buf);
extern int     setvbuf(register FILE *_fp, register char *_buf, 
                       register int _type,  register size_t _size); 
extern int     fflush(register FILE *_fp); 

 
 
 
extern int     fprintf(FILE *_fp, const char *_format, ...);
extern int     fscanf(FILE *_fp, const char *_fmt, ...);
extern int     printf(const char *_format, ...);
extern int     scanf(const char *_fmt, ...);
extern int     sprintf(char *_string, const char *_format, ...);
extern int     sscanf(const char *_str, const char *_fmt, ...);
extern int     vfprintf(FILE *_fp, const char *_format, char *_ap);
extern int     vprintf(const char *_format, char *_ap);
extern int     vsprintf(char *_string, const char *_format, char *_ap);

 
 
 
extern int     fgetc(register FILE *_fp);
extern char   *fgets(char *_ptr, register int _size, register FILE *_fp);
extern int     fputc(int _c, register FILE *_fp);
extern int     fputs(const char *_ptr, register FILE *_fp);
extern int     getc(FILE *_p);
       int     getchar(void);
extern char   *gets(char *_ptr); 
extern int     putc(int _x, FILE *_fp);
       int     putchar(int _x);
extern int     puts(const char *_ptr); 
extern int     ungetc(int _c, register FILE *_fp);

 
 
 
extern size_t    fread(void *_ptr, size_t _size, size_t _count, FILE *_fp);
extern size_t    fwrite(const void *_ptr, size_t _size, size_t _count,
                        register FILE *_fp); 

 
 
 
extern int       fgetpos(FILE *_fp, fpos_t *_pos);
extern int       fseek(register FILE *_fp, long _offset, int _ptrname);
extern int       fsetpos(FILE *_fp, const fpos_t *_pos);
extern long  ftell(FILE *_fp);
extern void  rewind(register FILE *_fp); 

 
 
 
       void      clearerr(FILE *_fp);
extern int       feof(FILE *_fp);
       int       ferror(FILE *_fp);
extern void      perror(const char *_s);
                

#line 208
char            *getenv(const char *_string);

 
 
 
extern int       add_device(char           *name,
                            unsigned        flags,
                  int            (*dopen)(),
                  int            (*dclose)(),
                  int            (*dread)(),
                  int            (*dwrite)(),
                  long           (*dlseek)(),
                  int            (*dunlink)(),
                  int            (*drename)());
#line 24 "G:\workspace\win\eea\INCLUDE\stdlib.h"
typedef char wchar_t;



typedef struct _div_t { int quot, rem; } div_t, ldiv_t;

double        atof(const char *_st);
int           atoi(const char *_st);
long          atol(const char *_st);

double        strtod(const char *_st,  char **_endptr);
long          strtol(const char *_st,  char **_endptr, int _base);
unsigned long strtoul(const char *_st, char **_endptr, int _base);

int           rand(void);
void          srand(unsigned _seed);

void         *calloc(size_t _num, size_t _size);
void          free(void *_ptr);
void         *malloc(size_t _size);
void         *bmalloc(size_t _size);
void          minit(void);
void         *realloc(void *_ptr, size_t _size);

void         *calloc8(size_t _num, size_t _size);
void          free8(void *_ptr);
void         *malloc8(size_t _size);
void         *bmalloc8(size_t _size);
void          minit8(void);
void         *realloc8(void *_ptr, size_t _size);

void         *calloc16(size_t _num, size_t _size);
void          free16(void *_ptr);
void         *malloc16(size_t _size);
void         *bmalloc16(size_t _size);
void          minit16(void);
void         *realloc16(void *_ptr, size_t _size);

void          abort(void);
void          exit(int _status);
int           atexit(void (*_func)(void));

void         *bsearch(const void *_key, const void *_base, size_t _nmemb, 
		      size_t _size, int (*_compar)(const void *, const void *));
void          qsort(void *_base, size_t _nmemb, 
		      size_t _size, int (*_compar)(const void *, const void *));

int           abs(int _i);
long          labs(long _i);
div_t         div(int _numer, int _denom);
div_t         ldiv(long _numer, long _denom);

char         *getenv(const char *_string);
#line 19 "G:\workspace\win\eea\INCLUDE\math.h"
         double asin(double _x);
         double acos(double _x);
         double atan(double _x);
         double atan2(double _y, double _x);
 double ceil(double _x);
         double cos(double _x);
         double cosh(double _x);
         double exp(double _x);
         double fabs(double _x);
 double floor(double _x);
 double fmod(double _x, double _y);
         double frexp(double _x, int *_exp);
         double ldexp(double _x, int _exp);
         double log(double _x);
         double log10(double _x);
         double modf(double _x, double *_iptr);
         double pow(double _x, double _y);
         double sin(double _x);
         double sinh(double _x);
         double sqrt(double _x);
         double tan(double _x);
         double tanh(double _x);

#line 14 "G:\workspace\win\eea\INCLUDE\time.h"
typedef unsigned long clock_t;
typedef unsigned long time_t;

#line 25
struct tm {
	    int          tm_sec;     
	    int          tm_min;     
	    int          tm_hour;    
	    int          tm_mday;    
	    int          tm_mon;     
	    int          tm_year;    
	    int          tm_wday;    
	    int          tm_yday;    
	    int          tm_isdst;   
	  };

 
 
 
struct tmzone
	  {
            short        daylight;   
	    long         timezone;   
	    char         tzname[4];  
	    char         dstname[4]; 
          };

extern struct tmzone _tz;

clock_t    clock(void);
double     difftime(time_t _time1, time_t _time0);
time_t     mktime(struct tm *_tptr);
time_t     time(time_t *_timer);
char      *asctime(const struct tm *_timeptr);
char      *ctime(const time_t *_timer);
struct tm *gmtime(const time_t *_timer);
struct tm *localtime(const time_t *_timer);
size_t     strftime(char *_out, size_t _maxsize, const char *_format, 
		    const struct tm *_timeptr);

#line 30 "G:\workspace\win\eea\INCLUDE\ETC.H"
typedef unsigned int BOOL;

#line 32 "G:\workspace\win\eea\INCLUDE\LIST.H"
typedef struct 	{
					int*	head;
					int*	tail;
					int		n;
	    		} LIST;

typedef struct	{
					int*	prev;
					int*	next;
				} GENERIC;

#line 51
extern BOOL List_Add(LIST *l, GENERIC *p);
extern BOOL List_Remove(LIST *l, GENERIC *p);
extern BOOL List_Push(LIST *l, GENERIC *p);
extern GENERIC* List_Pop(LIST *l);
extern BOOL List_Init(LIST *l);

#line 59 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\VARIABLE.H"
typedef struct 	{
					float	val;			 

					int*	vect1;
					int*	vect2;

					int		STAT;

					float	dampening;
					int		damp_count;

					int		aux;

					float	val1;			 
					float	val2;			 
					long double	calc_val;	 
					long double	base_val;	 

					int		unit;			 
					int		calc_unit;		 
					int		class;			 

					float	scale;			 
					float	scale_long;		 

					 
					float	bound_hi_set;
					float	bound_lo_set;
					float	alarm_hi_set;
					float	alarm_lo_set;

					char	name[21];
					int		name_r;	
					
	    		} VAR;

typedef struct 	{
					BOOL    val;
					int*	vect; 
					int*    vect2; 
	    		} COIL;

typedef struct 	{
					int     val;
					int*	vect;
	    		} REGVECT;

typedef struct	{
					int*	prev;
					int*	next;
					VAR*	v;
				} DPKT;




#pragma DATA_SECTION(LIST_DAMP,"CFG")
extern LIST	LIST_DAMP;
#pragma DATA_SECTION(LIST_DAMP_EMPTY,"CFG")
extern LIST	LIST_DAMP_EMPTY;
#pragma DATA_SECTION(DAMP,"CFG")
extern DPKT 	DAMP[40];

extern int f_compare(float* s, float r, BOOL reset);
extern int d_compare(double* s, double r, BOOL reset);

#line 130
extern void VAR_Copy(VAR *s, VAR* d);
extern void VAR_Initialize(VAR *v, int class, int calc_unit, float scale, float scale_long, int STAT);
extern void VAR_DAMP_Init(BOOL clear);
extern BOOL VAR_Setup_Unit (VAR *v, int unit, float upper, float lower, float alarm_hi, float alarm_lo);

extern BOOL VAR_CheckSet_Bounds(VAR* v, long double* t);
extern BOOL VAR_Check_Bounds(VAR* v, long double* t);
extern BOOL VAR_Set_Unit(VAR *v, int unit, BOOL check_bounds_only);
extern BOOL VAR_Set_Unit_Param(VAR *v, unsigned int p, float val, int type, BOOL user_units);
extern float VAR_Get_Unit_Param(VAR *v, unsigned int p, int type, BOOL user_units);
extern void VAR_NaN(VAR *v);
extern void VAR_DAMP(void);
extern BOOL VAR_Update(VAR *v, long double valin, BOOL check_bounds_only, BOOL user_units);
extern BOOL Get_Unit_Coeff(VAR* v, int unit, int class, long double* m, long double* b);
extern long double Time_Scale_Flow(long double in, int class, int unit, int flow_unit);
extern void Breakout_Flow_Units(int class, int flow_unit, int* units, float* r);
extern long double Convert(int class, int from_unit, int to_unit, long double val, BOOL scale_only, int aux);
extern BOOL Get_Unit(int class, int unit, char* str);
extern BOOL Get_Class(int class, char* str);
extern int Get_Next_Unit(int class, int unit);
extern int Get_Prev_Unit(int class, int unit);
extern int Join_MassTime_Units(int m, int t);

extern int* vect_v1;
extern int* vect_v2;
extern int* vect_var1;
extern int* vect_var2;

#line 36 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\BUFFER.H"
typedef struct	{
					int				head;
					int				tail;
					int				n;
					unsigned int	GSEED;
					unsigned int	CRC16;
					unsigned int	buff[300];
					int				sum;
					BOOL			locked;
				} BFR;


#line 56
extern void CRC16(BFR* buffer);
extern BOOL Put(BFR* buffer, unsigned int b, BOOL CRC);
extern unsigned int Get(BFR* buffer);
extern BOOL Put_n(BFR* buffer, unsigned char* b, int n, BOOL CRC);
extern void Clear(BFR* buffer);

#line 445 "G:\workspace\win\eea\INCLUDE\UNITS.H"
extern const float* MASTER_UNITS;
#line 34 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\TIMER.H"
typedef struct	{
					int*	prev;
					int*	next;
					int*	vect;
					int		priority;
					int*	parent;

					int		n;				 
					int		prev_n;
					int		countdown;
					int		preset_time;
					float	t;
				} TPKT;




#pragma DATA_SECTION(TIMER1_COUNTER,"internal_RAM")
extern int TIMER1_COUNTER[8+1];
#pragma DATA_SECTION(TIMER0_COUNTER,"internal_RAM")
extern int TIMER0_COUNTER;
#pragma DATA_SECTION(QUEUE_TMR,"internal_RAM")
extern TPKT QUEUE_TMR[40];
#pragma DATA_SECTION(LIST_TMR_EMPTY,"internal_RAM")
extern LIST LIST_TMR_EMPTY;
#pragma DATA_SECTION(LIST_TIMER0,"internal_RAM")
extern LIST LIST_TIMER0;

#pragma DATA_SECTION(vect_pt0,"internal_RAM")
extern int* vect_pt0;
#pragma DATA_SECTION(vect_pt1,"internal_RAM")
extern int* vect_pt1;
#pragma DATA_SECTION(vect_pt2,"internal_RAM")
extern int* vect_pt2;
#pragma DATA_SECTION(vect_pt3,"internal_RAM")
extern int* vect_pt3;
#pragma DATA_SECTION(vect_pt4,"internal_RAM")
extern int* vect_pt4;
#pragma DATA_SECTION(vect_pt5,"internal_RAM")
extern int* vect_pt5;
#pragma DATA_SECTION(vect_pt6,"internal_RAM")
extern int* vect_pt6;
#pragma DATA_SECTION(vect_pt7,"internal_RAM")
extern int* vect_pt7;
#pragma DATA_SECTION(vect_tm,"internal_RAM")
extern int* vect_tm;

#line 86
extern void Setup_Timer(int id, float t);
extern BOOL Timer_Insert(TPKT *po, BOOL force, int mode);
extern BOOL Timer_Remove(TPKT *p);

extern void CLEAR_TIME(struct tm *p);
extern void GET_TIME(struct tm *p);

extern BOOL Timer_Create(TPKT *p, float sec, int nrepeat, int* vect, int pri);
extern void Setup_Gate(float* gt, float* ps, BOOL enabled, BOOL aux_in);
extern BOOL GATE_TIMEOUT;
extern float TIME0;
extern float TIME1;

#line 115 "G:\workspace\win\eea\INCLUDE\I2C.H"
extern void I2C_RX_BYTE(unsigned char* b, BOOL ack);
extern BOOL I2C_TX_BYTE(unsigned char b);
extern BOOL Read_I2C(int addr, int n, unsigned char* p);
extern BOOL Write_I2C(int addr, int n, unsigned char* p);
extern BOOL RTC_setup(void);
extern BOOL Read_DS1340(int addr, int n, unsigned char* p);
extern BOOL Write_DS1340(int addr, int n, unsigned char* p);
extern BOOL Read_MC24C02_Record(int addr, unsigned char* p);
extern BOOL Write_MC24C02_Record(int addr, unsigned char* p);


extern BOOL RTC_PRESENT;
extern unsigned char RTC[10];

 
 
 
 
 
 
 

 
 
 
 
 

#line 154
extern void I2C_RX_BYTE_5(unsigned char* b, BOOL ack);
extern BOOL I2C_TX_BYTE_5(unsigned char b);
extern BOOL Read_I2C_5(int addr, int n, unsigned char* p);
extern BOOL Write_I2C_5(int addr, int n, unsigned char* p);
extern void LCD_STR(char* s, int line);
extern void LCD_CMD(int d);
extern void LCD_CHAR(int d);
extern void LCD_PAGE(void);


extern unsigned char LCD_DIPSW;
extern unsigned char LCD[2];
extern char LCD_DISPLAY[4][101];			 
extern int MB_LCD_DISPLAY[4*10];			 
extern BOOL LCD_PRESENT;
extern BOOL LCD_INIT(void);
extern unsigned int  LCD_CNT;

 
 
 
 
#line 30 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\ERRORS.H"
#pragma DATA_SECTION(REG_DIAG,"CFG")
extern VAR REG_DIAG[5];
extern int DIAG_TEMP[2];
extern int DIAGNOSTICS[2];
#pragma DATA_SECTION(DIAGNOSTICS_MASK,"CFG")
extern int DIAGNOSTICS_MASK[2];
extern int DIAGNOSTICS_MSG_CODE;
extern int DIAGNOSTICS_ERROR_CODE;
extern char E_STRING[101];
#pragma DATA_SECTION(DIO_ERROR,"CFG")
extern COIL DIO_ERROR;
#pragma DATA_SECTION(DIO_ALARM,"CFG")
extern COIL DIO_ALARM;

 
#line 45 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\SERIAL.H"
typedef struct	{
					int				Slave;
					int				SNUM;

					BOOL			PRESENT;
					BOOL			TX_complete;
					BOOL			RX_pending;
					BOOL			BUSY;
					BOOL			IGNORE_RX;

					unsigned char	STAT;
					unsigned char	DAT;
					BOOL			broadcast;

					int				TMR_Network_WDOG;
					int				TMR_EOT_Delay;
					int				TMR_Prefix_Delay;
					int				TMR_Suffix_Delay;
					int				TMR_Char;

					TPKT			TMR_Poll;
					TPKT			TMR_Retry;
					int				nr;
					BOOL			Received_PKT;

					BOOL			TMR_enabled;
					int*			tvector;		 
					int*			pvector;		 
					int*			pvector_main;	 
					int*			tvector_main;	 
					int*			fvector;		 

					float			actual_baud_rate;
					BOOL			c;
					BOOL			r;
					int				n;
					int				n_exp;
					int				ai;
					int				start;
					int				i;
					int				i_main;
					unsigned int	func;
					unsigned int	ERROR_COUNT;
					unsigned int	WDOG_COUNT;
					unsigned int	INV_CMD_COUNT;
					unsigned int	INV_PKT_COUNT;
					unsigned int	SUCCESS;
					unsigned int	NUM_RETRIES;
					BOOL			FLAG1;
					BOOL			FLAG2;
					BOOL			FLAG3;
					BOOL			LONG_ADDRESS;

					LIST			MASTER;
					int*			p;
					unsigned int	data;
					float*			f;
					unsigned int*	l;
					BOOL			failed;
				} PORTV;

typedef struct	{
					VAR				PREFIX;
					VAR				SUFFIX;
					VAR				NETWDOG;
					VAR				Slave_ID;
					VAR				Baud_Rate;
					int				Parity;
					int				n_bits;
					int				STP;
					int				N;
					int				N_retry;
					VAR				EOT_Delay;
					VAR				Retry_Time;
					VAR				Num_Retry;
					int				poll_time;
					int				timeout;
				} PORTC;


typedef struct	{
					int*	prev;
					int*	next;

					int*	rxvect;
					int*	txvect;
					int		n;
					int		slave;
					int		func;
					int		addr;
					int		num;
					float	v[10];
					float*	flt_ptr;
					int*	int_ptr;
				} MPKT;

extern int  PDI_id;
extern void No_Port(int id);

extern unsigned int SP0_RX_DATA;


extern MPKT QUEUE_MASTER[75];
extern LIST LIST_MASTER_EMPTY;

#pragma DATA_SECTION(PORTCFG,"CFG")
extern PORTC PORTCFG[8];

#pragma DATA_SECTION(UART,"UART_ADDR")
extern volatile unsigned char UART[8][16];

#pragma DATA_SECTION(PORT,"internal_RAM")
extern PORTV PORT[8];
#pragma DATA_SECTION(RXbuf,"internal_RAM")
extern BFR	RXbuf[8];
#pragma DATA_SECTION(TXbuf,"internal_RAM")
extern BFR	TXbuf[8];

#pragma DATA_SECTION(vect_p0,"internal_RAM")
extern int* vect_p0;
#pragma DATA_SECTION(vect_p1,"internal_RAM")
extern int* vect_p1;
#pragma DATA_SECTION(vect_p2,"internal_RAM")
extern int* vect_p2;
#pragma DATA_SECTION(vect_p3,"internal_RAM")
extern int* vect_p3;
#pragma DATA_SECTION(vect_p4,"internal_RAM")
extern int* vect_p4;
#pragma DATA_SECTION(vect_p5,"internal_RAM")
extern int* vect_p5;
#pragma DATA_SECTION(vect_p6,"internal_RAM")
extern int* vect_p6;
#pragma DATA_SECTION(vect_p7,"internal_RAM")
extern int* vect_p7;

#line 196
extern void Prepare_TX(int id, BOOL skip_CRC);
extern void RESET_PKT(int id);
extern void Clear_RX(int id);
extern void WDOG_P(int id);
extern void Setup_Serial_Port0(void);
extern int  Setup_UART(int id, int baud_rate, int num_bits, int parity, float stop_bits);
extern int  Set_Baud(int id, int div);
extern void Process_UINT(int id);
extern void TX_P(int id);
extern void TX_P1(int id);                                     
extern void TX_S(int id);
extern void TX_S1(int id);
extern void Port_Defaults(BOOL FORCE);

#line 55 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\ADC.H"
extern int ADC_INT[12];
extern int TLV_REF[3];

#line 108
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
extern LOOPDATA_I AI[5];

#line 132
extern void Setup_ADC(int n);
extern void Read_ADCn(int n, BOOL START);
extern BOOL Write_TMP75(int addr, int n, unsigned char* p);
extern BOOL Read_TMP75(int addr, int n, unsigned char* p);
extern BOOL Write_ADC_DAC(int addr, int n, unsigned char* p);
extern BOOL Read_ADC_DAC(int addr, int n, unsigned char* p);
extern void ADC_UPDATE(void);
extern unsigned int ADC_ACTIVE[3];
extern void Convert_ADC(void);
extern void Read_ADC_FIFO(void);
extern void Read_ADC_test(void);

#line 35 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\DAC.H"
extern void Setup_DAC(int n);

#line 72
extern void Write_DAC(int n);
extern int DAC_INT[12];
extern void Set_Current(void);
extern void PID_Init(int loop);
extern double PID(int loop);

typedef struct 	{
					VAR		CURRENT;
					VAR		CURRENT_PERCENT_OF_RANGE;
					VAR		LRV;
					VAR		URV;
					VAR		TRIM_MIN;
					VAR		TRIM_MAX;
					float   TRIM_MIN_C;
					float   TRIM_MAX_C;
					int		ALARM_SELECT;
					float	MINSPAN;
					REGVECT		v;
					REGVECT	class;
					REGVECT	unit;
					int		MANUAL;
					float	MANUAL_PERCENT;
					 
					int		REVERSE;
					float	PID_input;
					float	PID_setpoint;
					VAR		P;      
					VAR		I;      
					VAR		D;      
					int		pid_lastcycle;
					float	pid_output;
					float	pid_propband;
					float	pid_error;
					float	pid_bias;
					BOOL	present;
					BOOL	PID_fail;
					BOOL	PID_enable_failsafe;
	    		} LOOPDATA_O;

#pragma DATA_SECTION(AO,"CFG")
extern LOOPDATA_O AO[9];
extern void MB_RX_DAC_Aout(int id, int i);
extern void MB_RX_DAC_Aout6_7(int id);
extern void MB_RX_DAC_Aout8_9(int id);

#line 33 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\EXECUTE.H"
typedef struct	{
					int*	prev;
					int*	next;
					int*	vect;
					int		priority;
				} EPKT;

#line 44
extern void Execute_Init(void);


extern EPKT QUEUE_EXEC[10];

extern LIST LIST_EXEC;			 
extern LIST LIST_EXEC_EMPTY;    

extern int* vect_ex;

#line 44 "G:\workspace\win\eea\INCLUDE\FLASH.H"
extern unsigned int* SRAM_SCRATCHPAD;
#line 107
extern unsigned int FLASH_SIZE(void);
extern int FLASH_CHECK_ADDR(unsigned int* addr, unsigned int n);
extern int FLASH_LOCK_BLK(unsigned int* addr, int lock);
extern int FLASH_ERASE_BLK(unsigned int* addr);
extern int FLASH_WRITE_BLK(unsigned int* addr, unsigned int* data, unsigned int n);
extern int FLASH_STATUS(void);
extern void FLASH_READ_ESN_MFGR(unsigned int* dat);
extern void FLASH_READ_ESN_USER(unsigned int* dat);
extern int FLASH_WRITE_ESN_USER(unsigned int* dat);
extern int FLASH_LOCK_ESN_USER(void);

#line 71 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\LOG.H"
typedef struct	{
					unsigned int log_len;
					unsigned int log_n_sectors;
					unsigned int log_n_max_per_sector;
					unsigned int log_n;
					unsigned int log_current_sector;
					unsigned int log_absolute_index;
					unsigned int* log_start;
					unsigned int log_sector_size;
					unsigned int log_record_size;
					unsigned int log_end;
					unsigned int LOG_ERASE;
					BOOL		 erased_sector;
				} LOG;


extern LOG SYS;
#pragma DATA_SECTION(SYS_log_sample_period,"CFG")
extern VAR SYS_log_sample_period;
#pragma DATA_SECTION(SYS_LOG_ENABLED,"CFG")
extern int SYS_LOG_ENABLED;
#pragma DATA_SECTION(USER_log_sample_period,"CFG")
extern VAR USER_log_sample_period;
#pragma DATA_SECTION(USER_LOG_ENABLED,"CFG")
extern int USER_LOG_ENABLED;
extern int USER_LOG_EVENT;
extern int SYS_LOG_EVENT;


extern LOG CCM_Records;
#pragma DATA_SECTION(CCM_Record_view,"CFG")
extern REGVECT CCM_Record_view;


extern LOG FC_Periodic;

#line 124
extern void InitLog(void);
extern void FindNextLogIndex(LOG* log, int get_last_n_records, unsigned int* p);
extern unsigned int* FindLastLogRecord(LOG* log, int mode);
extern void LogNow(VAR* v);
extern void LogNowUser(VAR* v);
extern void DataLog(void);
extern void DataLogUser(void);
extern void DataLogUserClearFlag(void);
extern void DataLogSysClearFlag(void);
extern void DataLogCounters(void);
extern BOOL DataLogCounter(int i, BOOL FORCE);
extern void CfgLog(int id, int modbus, int func, int addr, float val, int vali, float val_orig, float vali_orig);
extern void EraseEntireLog(LOG* log);
extern void EraseSector(LOG* log, unsigned int s);
extern void MarkLogStart(LOG* log, unsigned int s);
extern void RecordLogEntry(LOG* log, int mode, unsigned int* p);

#line 33 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\DEMO.H"
extern void DEMO_Init(VAR* v);

#line 46 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\SELFTEST.H"
extern void Set_Diag_Status(void);
extern void Self_Test1(void);
extern void Self_Test2(void);
extern void Self_Test3(void);
extern void Self_Test4(void);
extern void Self_Test5(void);
extern void Self_Test_FULL(void);
extern void Clear_Diagnostics(void);

#line 32 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\MENU.H"
extern void Update_Flags_Goto_Next_Menu(BOOL cfg, BOOL skip_adv);
extern void MSVE_Data_Input(char* title, char* varname, int iw, int ip, BOOL is, BOOL sci, VAR* v, BOOL skip_save, BOOL skip_adv);

extern int Print_To_LCD( int lcd_line, int str_num, char text_line[], int whitespace);

extern int Get_Russ_Line(int str_num, char out_str[], int return_mode); 
extern int Find_Russ_Tbl_Len(void);
extern char OUT_STR[32]; 
extern char OUT_STR2[32]; 
extern char ENG_STR[32]; 
extern char ENG_STR2[32]; 


extern void MENU_INIT(void);
extern void MENU_REFRESH(void);
extern int  DIO_MSVE;



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
					
					
					BOOL	menu_list_top;
					BOOL	menu_list_operations;
					BOOL	menu_list_configurations;
					BOOL	menu_list_security_info;
					BOOL	menu_list_measurements;
					BOOL	menu_list_changed;
					
					

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

extern MENU_STRUCT MSVE;

extern int* vect_m;

#line 23 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\FLOAT1.H"
extern unsigned int TOIEEE(float v);
extern float FMIEEE(unsigned int v);

#line 156 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\GLBLS.H"
 unsigned int CLOCK;
 BOOL LED_GREEN;
 BOOL OSWITCH;
 void c_int00(void);

#line 200
 unsigned int ESN_USER[5];
 unsigned int ESN_MFGR[5];

#pragma DATA_SECTION(Oil_Phase_Maximum,"CFG")
 VAR Oil_Phase_Maximum;
#pragma DATA_SECTION(Water_Phase_Minimum,"CFG")
 VAR Water_Phase_Minimum;

#pragma DATA_SECTION(Oil_Phase_Filter,"CFG")
 VAR Oil_Phase_Filter;
#pragma DATA_SECTION(Water_Phase_Filter,"CFG")
 VAR Water_Phase_Filter;

#pragma DATA_SECTION(Num_Oil_Samples,"CFG")
 VAR Num_Oil_Samples;
#pragma DATA_SECTION(Num_Water_Samples,"CFG")
 VAR Num_Water_Samples;


typedef struct 	{
					int		i;
					float	Watercut;
					float	Temperature;
					float	Salinity;
					float	Frequency_Oil;
					float	Frequency_Water;
					float	RefPower_Oil;
					float	RefPower_Water;
					float	Dadj;
					int		Time_HH;
					int		Time_MM;
					int		Time_MONTH;
					int		Time_DAY;
					int		Time_DAY_OF_WEEK;
					int		Time_YEAR;
	    		} CAPDATA;

typedef struct 	{
					float	Watercut[2];
					float	Temperature[2];
					float	Salinity[2];
					float	Frequency_Oil[2];
					float	Frequency_Water[2];
					float	RefPower_Oil[2];
					float	RefPower_Water[2];
					float	Dadj[2];
					int		Time_MONTH_DAY_HH_MM[2];
					int		CLRSTAT_Time_YEAR[2];
	    		} CAPRECORD;

#pragma DATA_SECTION(DIO_RESEARCH_MODE,"CFG")
 COIL DIO_RESEARCH_MODE;
 BOOL RESEARCH_FORCE_MODE;

#pragma DATA_SECTION(DIO_uP_GET,"CFG")
 COIL DIO_uP_GET;
#pragma DATA_SECTION(DIO_uP_SET,"CFG")
 COIL DIO_uP_SET;

#pragma DATA_SECTION(DIO_COMM_GET,"CFG")
 COIL DIO_COMM_GET;
#pragma DATA_SECTION(DIO_COMM_SET,"CFG")
 COIL DIO_COMM_SET;

#pragma DATA_SECTION(DIO_ANALYZER_GET,"CFG")
 COIL DIO_ANALYZER_GET;
#pragma DATA_SECTION(DIO_ANALYZER_SET,"CFG")
 COIL DIO_ANALYZER_SET;

#pragma DATA_SECTION(DIO_POWER_GET,"CFG")
 COIL DIO_POWER_GET;
#pragma DATA_SECTION(DIO_POWER_SET,"CFG")
 COIL DIO_POWER_SET;

#pragma DATA_SECTION(DIO_ANALOGIO_GET,"CFG")
 COIL DIO_ANALOGIO_GET;
#pragma DATA_SECTION(DIO_ANALOGIO_SET,"CFG")
 COIL DIO_ANALOGIO_SET;

#pragma DATA_SECTION(DIO_DISPLAY_GET,"CFG")
 COIL DIO_DISPLAY_GET;
#pragma DATA_SECTION(DIO_DISPLAY_SET,"CFG")
 COIL DIO_DISPLAY_SET;

#pragma DATA_SECTION(DIO_MOTHERBOARD_GET,"CFG")
 COIL DIO_MOTHERBOARD_GET;
#pragma DATA_SECTION(DIO_MOTHERBOARD_SET,"CFG")
 COIL DIO_MOTHERBOARD_SET;

#pragma DATA_SECTION(DIO_BEEP,"CFG")
 COIL DIO_BEEP;

#pragma DATA_SECTION(DIO_PV_PERCMASS,"CFG")
 int	DIO_PV_PERCMASS;

 REGVECT VAR_SELECT_DV;
 REGVECT VAR_SELECT_DVIN;
 int STR_VAR_DESC[10];
 int STR_VAR_UNIT[4];
 float VAR_INT_SCALE;
 float VAR_LONGINT_SCALE;

#pragma DATA_SECTION(LOG_VAR_SEL,"CFG")
 int LOG_VAR_SEL[30];
 int i_LV[30];
 int il_LV[30];
 float f_LV[30];

#pragma DATA_SECTION(AMETEK,"CFG")
 int AMETEK;

#pragma DATA_SECTION(Cap_Records,"CFG")
 CAPRECORD Cap_Records[60];

#pragma DATA_SECTION(Cap_Oil,"CFG")
 CAPDATA Cap_Oil;
#pragma DATA_SECTION(Cap_Water,"CFG")
 CAPDATA Cap_Water;

#pragma DATA_SECTION(DIO_Autosave_on_pair_boundary,"CFG")
 int   DIO_Autosave_on_pair_boundary;

#pragma DATA_SECTION(REG_osc_settle_short,"CFG")
 VAR REG_osc_settle_short;
#pragma DATA_SECTION(REG_osc_settle_long,"CFG")
 VAR REG_osc_settle_long;

#pragma DATA_SECTION(DIO_PORT_DEFAULTS,"CFG")
 COIL DIO_PORT_DEFAULTS;
#pragma DATA_SECTION(DATA_CHANGE,"CFG")
 COIL DATA_CHANGE;
#pragma DATA_SECTION(REG_alarm_relay_delay,"CFG")
 VAR REG_alarm_relay_delay;
#pragma DATA_SECTION(REG_flow_meter_type,"CFG")
 VAR REG_flow_meter_type;
#pragma DATA_SECTION(REG_flow_volume_unit,"CFG")
 VAR REG_flow_volume_unit;
#pragma DATA_SECTION(REG_flow_rate_time_unit,"CFG")
 VAR REG_flow_rate_time_unit;
#pragma DATA_SECTION(REG_count_per_flow_unit,"CFG")
 VAR REG_count_per_flow_unit;
#pragma DATA_SECTION(REG_20mA_max_flow_rate_input,"CFG")
 VAR REG_20mA_max_flow_rate_input;
#pragma DATA_SECTION(REG_accumulator_display_format,"CFG")
 VAR REG_accumulator_display_format;
#pragma DATA_SECTION(REG_HART_response_delay,"CFG")
 VAR REG_HART_response_delay;
#pragma DATA_SECTION(REG_HART_num_preamble,"CFG")
 VAR REG_HART_num_preamble;
#pragma DATA_SECTION(REG_reference_currrent_mode,"CFG")
 VAR REG_reference_currrent_mode;
#pragma DATA_SECTION(REG_num_oil_cal_samples,"CFG")
 VAR REG_num_oil_cal_samples;
#pragma DATA_SECTION(REG_num_water_cal_samples,"CFG")
 VAR REG_num_water_cal_samples;
#pragma DATA_SECTION(REG_density_correction_mode,"CFG")
 VAR REG_density_correction_mode;
#pragma DATA_SECTION(REG_port1_parity,"CFG")
 VAR REG_port1_parity;
#pragma DATA_SECTION(REG_port1_stop_bits,"CFG")
 VAR REG_port1_stop_bits;
#pragma DATA_SECTION(REG_port1_Baud_Rate,"CFG")
 VAR REG_port1_Baud_Rate;

 unsigned int SA;
#pragma DATA_SECTION(U_TEMP_ASCII,"CFG")
 int U_TEMP_ASCII;
#pragma DATA_SECTION(GATE_TIME,"CFG")
 float GATE_TIME;
#pragma DATA_SECTION(PRESCALE,"CFG")
 float PRESCALE;
#pragma DATA_SECTION(EXTUNE,"CFG")
 BOOL EXTUNE;
#pragma DATA_SECTION(IRDA_ENABLE,"CFG")
 BOOL IRDA_ENABLE;
#pragma DATA_SECTION(DIO_HEATER_DISABLE,"CFG")
 COIL DIO_HEATER_DISABLE;
 BFR PV_SAMPLES;
 BFR PV_SAMPLES_24hr;
 BFR PV_SAMPLES_5min;
 int READ_ADC_INPUTS;
 int VT_SELECT;
 BOOL INITIALIZING;
 BOOL MEM;
 BOOL DIPSWITCH[2];
 int DUMMY;
 int ZERO_INPUT;
 BOOL CHANGE;
#pragma DATA_SECTION(DIO_DUMMY,"CFG")
 COIL DIO_DUMMY;
 REGVECT IDEC_SA[13];
 int IDEC_PORT;

 int i_FREQ_O;
 int i_IP_O;
 int i_RP_O;
 int i_FREQ_W;
 int i_IP_W;
 int i_RP_W;
 int i_TEMP;
 int i_WC;

 float FREQ_O;
 float IP_O;
 float RP_O;
 float IP_RP_O;
 float DB_IP_RP_O;
 float FREQ_W;
 float IP_W;
 float RP_W;
 float IP_RP_W;
 float DB_IP_RP_W;



 unsigned int HW_VER;




#pragma DATA_SECTION(DCM_PORT,"CFG")
 REGVECT DCM_PORT;
#pragma DATA_SECTION(Density_Correction_Mode,"CFG")
 REGVECT Density_Correction_Mode;
#pragma DATA_SECTION(OIL_CALC_MODE,"CFG")
 int OIL_CALC_MODE;
#pragma DATA_SECTION(OIL_CALC_MAX,"CFG")
 float OIL_CALC_MAX[2];
#pragma DATA_SECTION(OIL_CALC_CUTOFF,"CFG")
 float OIL_CALC_CUTOFF;

#pragma DATA_SECTION(REG_USER_DEFINE,"CFG")
 int REG_USER_DEFINE[20];

typedef struct 	{
					int		Start_HH;
					int		Start_MM;
					int		Start_SS;
					int		Start_MONTH;
					int		Start_DAY;
					int		Start_YEAR;
					int		Stop_HH;
					int		Stop_MM;
					int		Stop_SS;
					int		Stop_MONTH;
					int		Stop_DAY;
					int		Stop_YEAR;
					float	stream;
					float	elapsed_s;
					float	duration;
					float	purge;
					float	gross_gas;
					float	gross_oil;
					float	gross_water;
					float	gross_total;
					float	gas24;
					float	oil24;
					float	water24;
					float	total24;
					float	watercut;
	    		} CCMRECORD;

 CCMRECORD CCM_Record;

 unsigned int CCMREC[100];
 int i_CCM_Level_Setpoint;
 int i_CCM_Level;
 int i_CCM_Pressure_Setpoint;
 int i_CCM_Pressure;
 int i_CCM_Gas_Valve;
 int i_CCM_Liquid_Valve;
 int i_CCM_Flow;
 int i_CCM_Flow_Oil;
 int i_CCM_Flow_Water;
 int i_CCM_Flow_Gas;
#pragma DATA_SECTION(CCM_2LIQ,"CFG")
	int CCM_2LIQ;
#pragma DATA_SECTION(CCM_2GAS,"CFG")
	int CCM_2GAS;
#pragma DATA_SECTION(CCM_CORRECT_LIQ_HEIGHT,"CFG")
	int CCM_CORRECT_LIQ_HEIGHT;
#pragma DATA_SECTION(CCM_CORRECT_GAS_TO_STP,"CFG")
	int CCM_CORRECT_GAS_TO_STP;
#pragma DATA_SECTION(CCM_GAS_MASS,"CFG")
	int CCM_GAS_MASS;
	int CCM_GAS_CNT;
	int CCM_CNT;
#pragma DATA_SECTION(EXT_ANALOG_OUT,"CFG")
 int EXT_ANALOG_OUT;
 struct tm CCM_TIME_START;
 struct tm CCM_TIME_STOP;
 struct tm CCM_TIME_REMAINING;
 struct tm CCM_TIME_ELAPSED;
#pragma DATA_SECTION(CCM_VESSEL_LEVEL,"CFG")
 VAR CCM_VESSEL_LEVEL[2];
#pragma DATA_SECTION(CCM_VESSEL_MAX_LEVEL,"CFG")
 float CCM_VESSEL_MAX_LEVEL[2];
#pragma DATA_SECTION(CCM_VESSEL_PRESSURE,"CFG")
 VAR CCM_VESSEL_PRESSURE[2];
#pragma DATA_SECTION(CCM_PURGE,"CFG")
 float CCM_PURGE;
#pragma DATA_SECTION(CCM_DURATION,"CFG")
 float CCM_DURATION;
 float CCM_REMAINING;
 float CCM_REMAINING_S;
 float CCM_ELAPSED_S;
 float CCM_24_GAS;
 float CCM_24_OIL;
 float CCM_24_WATER;
 float CCM_24_TOTAL;  

 long double ccm_gas_total_fract_part;
 long double ccm_gas_total_whole_part;

#pragma DATA_SECTION(CCM_GAS_TEMPERATURE,"CFG")
 VAR CCM_GAS_TEMPERATURE;    

#pragma DATA_SECTION(CCM_GAS_DENSITY_INPUT,"CFG")
 VAR CCM_GAS_DENSITY_INPUT;         

#pragma DATA_SECTION(CCM_GAS_DENSITY,"CFG")
 VAR CCM_GAS_DENSITY;
#pragma DATA_SECTION(CCM_GAS_LIVE_DENSITY,"CFG")
 VAR CCM_GAS_LIVE_DENSITY;
#pragma DATA_SECTION(CCM_GAS_TOTAL,"CFG")
 VAR CCM_GAS_TOTAL;
#pragma DATA_SECTION(CCM_GAS_FLOW,"CFG")
 VAR CCM_GAS_FLOW;
#pragma DATA_SECTION(CCM_SETPOINT_LEVEL,"CFG")
 VAR CCM_SETPOINT_LEVEL[2];
#pragma DATA_SECTION(CCM_SETPOINT_PRESSURE,"CFG")
 VAR CCM_SETPOINT_PRESSURE[2];
#pragma DATA_SECTION(CCM_SETPOINT_PRESSURE_MAX_OVER,"CFG")
 VAR CCM_SETPOINT_PRESSURE_MAX_OVER;
#pragma DATA_SECTION(CCM_SETPOINT_P1,"CFG")
 float CCM_SETPOINT_P1[60];
#pragma DATA_SECTION(CCM_SETPOINT_L1,"CFG")
 float CCM_SETPOINT_L1[60];
#pragma DATA_SECTION(CCM_SETPOINT_P2,"CFG")
 float CCM_SETPOINT_P2[60];
#pragma DATA_SECTION(CCM_SETPOINT_L2,"CFG")
 float CCM_SETPOINT_L2[60];

#pragma DATA_SECTION(ANALYZER_MODE,"CFG")
 REGVECT ANALYZER_MODE;
#pragma DATA_SECTION(DEMO,"CFG")
 BOOL DEMO;
#pragma DATA_SECTION(DEMO_ANALYZER_MODE,"CFG")
 VAR DEMO_ANALYZER_MODE;

#pragma DATA_SECTION(DIO_IDEC_ENABLE,"CFG")
 int   DIO_IDEC_ENABLE;
#pragma DATA_SECTION(LOOP_ENABLED,"CFG")
 COIL LOOP_ENABLED;
#pragma DATA_SECTION(OSC_OIL_CALC,"CFG")
 int    OSC_OIL_CALC;
#pragma DATA_SECTION(OSC_WATER_CALC,"CFG")
 int    OSC_WATER_CALC;

#pragma DATA_SECTION(TEMP_OIL_MAX,"CFG")
 float TEMP_OIL_MAX;
#pragma DATA_SECTION(TEMPS_OIL,"CFG")
 float TEMPS_OIL[10];
#pragma DATA_SECTION(COEFF_TEMP_OIL,"CFG")
 float COEFF_TEMP_OIL[10][4];
#pragma DATA_SECTION(TEMP_WATER_MAX,"CFG")
 float TEMP_WATER_MAX;
#pragma DATA_SECTION(SALT_MAX,"CFG")
 float SALT_MAX;
#pragma DATA_SECTION(TEMPS_WATER,"CFG")
 float TEMPS_WATER[15];
#pragma DATA_SECTION(SALTS,"CFG")
 float SALTS[20];
#pragma DATA_SECTION(COEFF_SALT_TEMP_WATER,"CFG")
 float COEFF_SALT_TEMP_WATER[20][15][4];
#pragma DATA_SECTION(SALINITY,"CFG")
 float SALINITY[60];
#pragma DATA_SECTION(OIL_ADJ,"CFG")
 float OIL_ADJ[60];
#pragma DATA_SECTION(WATER_ADJ,"CFG")
 float WATER_ADJ[60];
#pragma DATA_SECTION(WATER_ALARM_LO,"CFG")
 float WATER_ALARM_LO[60];
#pragma DATA_SECTION(WATER_ALARM_HI,"CFG")
 float WATER_ALARM_HI[60];
 
#pragma DATA_SECTION(HSALT_ENABLE,"CFG")
 float HSALT_ENABLE[60];
#pragma DATA_SECTION(GAS_ROUTINE_ENABLE,"CFG")
 float GAS_ROUTINE_ENABLE[60];
#pragma DATA_SECTION(HSALT_MIN_FLOW,"CFG")
 float HSALT_MIN_FLOW[60];

#pragma DATA_SECTION(stream_bubble_length,"CFG")
 float stream_bubble_length[60];
#pragma DATA_SECTION(stream_pattern_length,"CFG")
 float stream_pattern_length[60];
#pragma DATA_SECTION(stream_boxcar_expire,"CFG")
 float stream_boxcar_expire[60];

#pragma DATA_SECTION(stream_boxcar_expire_minutes,"CFG")
 int   stream_boxcar_expire_minutes[60]; 

#pragma DATA_SECTION(stream_delta_temp,"CFG")
 float stream_delta_temp[60];



 
#line 630
#pragma DATA_SECTION(OIL_PHASE_ONLY_ENABLE,"CFG")
 float OIL_PHASE_ONLY_ENABLE[60];
#pragma DATA_SECTION(WATER_PHASE_ONLY_ENABLE,"CFG")
 float WATER_PHASE_ONLY_ENABLE[60];
   
 
#pragma DATA_SECTION(LIQ_VALVE_P,"CFG")
 float LIQ_VALVE_P[60]; 
#pragma DATA_SECTION(LIQ_VALVE_I,"CFG")
 float LIQ_VALVE_I[60];
#pragma DATA_SECTION(LIQ_VALVE_D,"CFG")
 float LIQ_VALVE_D[60]; 
#pragma DATA_SECTION(GAS_VALVE_P,"CFG")
 float GAS_VALVE_P[60];
#pragma DATA_SECTION(GAS_VALVE_I,"CFG")
 float GAS_VALVE_I[60];
#pragma DATA_SECTION(GAS_VALVE_D,"CFG")
 float GAS_VALVE_D[60];
 

#pragma DATA_SECTION(COEFF_C0,"CFG")
 float COEFF_C0;
#pragma DATA_SECTION(COEFF_FA2,"CFG")
 float COEFF_FA2;
#pragma DATA_SECTION(COEFF_FA1,"CFG")
 float COEFF_FA1;
#pragma DATA_SECTION(COEFF_FB2,"CFG")
 float COEFF_FB2;
#pragma DATA_SECTION(COEFF_FB1,"CFG")
 float COEFF_FB1;
#pragma DATA_SECTION(COEFF_RPA2,"CFG")
 float COEFF_RPA2;
#pragma DATA_SECTION(COEFF_RPA1,"CFG")
 float COEFF_RPA1;
#pragma DATA_SECTION(COEFF_RPB2,"CFG")
 float COEFF_RPB2;
#pragma DATA_SECTION(COEFF_RPB1,"CFG")
 float COEFF_RPB1;
#pragma DATA_SECTION(COEFF_IPA2,"CFG")
 float COEFF_IPA2;
#pragma DATA_SECTION(COEFF_IPA1,"CFG")
 float COEFF_IPA1;
#pragma DATA_SECTION(COEFF_IPB2,"CFG")
 float COEFF_IPB2;
#pragma DATA_SECTION(COEFF_IPB1,"CFG")
 float COEFF_IPB1;
#pragma DATA_SECTION(COEFF_T2,"CFG")
 float COEFF_T2;
#pragma DATA_SECTION(COEFF_T1,"CFG")
 float COEFF_T1;  
 
#pragma DATA_SECTION(COEFF_D2,"CFG")
 float COEFF_D2;
#pragma DATA_SECTION(COEFF_D1,"CFG")
 float COEFF_D1;
#pragma DATA_SECTION(STR_Analyzer_PV,"CFG")
 int STR_Analyzer_PV[20/2];
#pragma DATA_SECTION(STR_Analyzer_UNIT,"CFG")
 int STR_Analyzer_UNIT[8/2];

 unsigned int		REG_TIME; 

 BOOL SAMPLE_PENDING;

#pragma DATA_SECTION(RESET_COUNTER,"CFG")
 int    RESET_COUNTER;

#pragma DATA_SECTION(FINAL_ASSY,"CFG")
 int    FINAL_ASSY;

#pragma DATA_SECTION(SN_DC_BOARD,"CFG")
 int    SN_DC_BOARD;
#pragma DATA_SECTION(SN_OSC,"CFG")
 int    SN_OSC;
#pragma DATA_SECTION(SN_PIPE,"CFG")
 int    SN_PIPE;

typedef struct 	{
					int		SNUM;
					int		ADDR;
					int		BNUM;
					int		REV;
					int		MONTH;
					int		DAY;
					int		YEAR;
	    		} BOARD;

#pragma DATA_SECTION(ANALYZER,"CFG")
 BOARD	ANALYZER;
#pragma DATA_SECTION(ANALOGIO,"CFG")
 BOARD	ANALOGIO;
#pragma DATA_SECTION(DISPLAY,"CFG")
 BOARD	DISPLAY;
#pragma DATA_SECTION(uP,"CFG")
 BOARD	uP;
#pragma DATA_SECTION(POWER,"CFG")
 BOARD	POWER;
#pragma DATA_SECTION(COMM,"CFG")
 BOARD	COMM;
#pragma DATA_SECTION(MOTHERBOARD,"CFG")
 BOARD	MOTHERBOARD;

#pragma DATA_SECTION(NaN_val,"CFG")
 float    NaN_val;
#pragma DATA_SECTION(NaN_val_int,"CFG")
 int    NaN_val_int;
#pragma DATA_SECTION(NaN_val_flt,"CFG")
 int    NaN_val_flt;

#pragma DATA_SECTION(NUM_PREAMBLE_SM,"CFG")
 int    NUM_PREAMBLE_SM;
#pragma DATA_SECTION(NUM_PREAMBLE_MS,"CFG")
 int    NUM_PREAMBLE_MS;

#pragma DATA_SECTION(DIO_CLEAR_PORT_COUNT,"CFG")
 COIL DIO_CLEAR_PORT_COUNT[8];
#pragma DATA_SECTION(DIO_SYSTEM_RESET,"CFG")
 COIL DIO_SYSTEM_RESET;
#pragma DATA_SECTION(DIO_SYSTEM_RESTART,"CFG")
 COIL DIO_SYSTEM_RESTART;
#pragma DATA_SECTION(DIO_BUILT_IN_TEST_ENABLE,"CFG")
 COIL DIO_BUILT_IN_TEST_ENABLE;
#pragma DATA_SECTION(DIO_BUILT_IN_TEST,"CFG")
 COIL DIO_BUILT_IN_TEST;
#pragma DATA_SECTION(DIO_TEMP_C,"CFG")
 COIL DIO_TEMP_C;
#pragma DATA_SECTION(DIO_RESET_FACTORY_DEFAULTS,"CFG")
 COIL DIO_RESET_FACTORY_DEFAULTS;
#pragma DATA_SECTION(DIO_RESTORE_USER_CONFIG,"CFG")
 COIL DIO_RESTORE_USER_CONFIG;
#pragma DATA_SECTION(DIO_SAVE_USER_CONFIG,"CFG")
 COIL DIO_SAVE_USER_CONFIG;
#pragma DATA_SECTION(DIO_SAVE_FACTORY_CONFIG,"CFG")
 COIL DIO_SAVE_FACTORY_CONFIG;
#pragma DATA_SECTION(DIO_RESTORE_BASICS,"CFG")
 COIL DIO_RESTORE_BASICS;

#pragma DATA_SECTION(DUMMY_COIL,"CFG")
 COIL DUMMY_COIL; 

#pragma DATA_SECTION(Density_D0,"CFG")
 VAR Density_D0;
#pragma DATA_SECTION(Density_D1,"CFG")
 VAR Density_D1; 
#pragma DATA_SECTION(Density_D2,"CFG")
 VAR Density_D2; 				 
#pragma DATA_SECTION(Density_D3,"CFG")
 VAR Density_D3;					 
#pragma DATA_SECTION(Density_Cal,"CFG")
 VAR Density_Cal;
#pragma DATA_SECTION(Density_Cal_Unit,"CFG")
 REGVECT Density_Cal_Unit;
#pragma DATA_SECTION(DensityCFD_D1,"CFG")
 float DensityCFD_D1;
#pragma DATA_SECTION(DensityCFT_D1,"CFG")
 float DensityCFT_D1;
#pragma DATA_SECTION(DensityCF_D0,"CFG")
 float DensityCF_D0;

#pragma DATA_SECTION(DIO_CAP_OIL,"CFG")
 COIL DIO_CAP_OIL;
#pragma DATA_SECTION(DIO_CAP_WATER,"CFG")
 COIL DIO_CAP_WATER;
#pragma DATA_SECTION(DIO_CLEAR_COUNTERS,"CFG")
 COIL DIO_CLEAR_COUNTERS;
#pragma DATA_SECTION(DIO_TOTALIZER_CONTROL,"CFG")
 COIL DIO_TOTALIZER_CONTROL;
#pragma DATA_SECTION(DIO_CCM_START,"CFG")
 COIL DIO_CCM_START;

 
#pragma DATA_SECTION(DIO_MANUAL_RESET,"CFG")
 COIL DIO_MANUAL_RESET;       
#pragma DATA_SECTION(DIO_TIME_RESET,"CFG")
 COIL DIO_TIME_RESET;
#pragma DATA_SECTION(BOXCAR_RESET,"CFG")
 BOOL BOXCAR_RESET;




 
#line 819
#pragma DATA_SECTION(REG_CCM_TEST_STAT,"CFG")         
 VAR REG_CCM_TEST_STAT;                         

#pragma DATA_SECTION(DIO_CCM_PURGE_STAT,"CFG")
 COIL DIO_CCM_PURGE_STAT; 

#pragma DATA_SECTION(REG_CCM_PURGE_STAT,"CFG")         
 VAR REG_CCM_PURGE_STAT;                          

#pragma DATA_SECTION(DIO_CCM_PURGE_TIME,"CFG")
 COIL DIO_CCM_PURGE_TIME;
#pragma DATA_SECTION(DIO_AUX_FREQ_MODE,"CFG")
 int  DIO_AUX_FREQ_MODE;
#pragma DATA_SECTION(DIO_PORT_IGNORE_DATA_EXCEPTION,"CFG")
 int  DIO_PORT_IGNORE_DATA_EXCEPTION;
#pragma DATA_SECTION(DIO_HART_5,"CFG")
 COIL  DIO_HART_5;

#pragma DATA_SECTION(SIM_VTUNE,"CFG")
 float SIM_VTUNE[4];
#pragma DATA_SECTION(SIM_FREQ,"CFG")
 float SIM_FREQ[4];
#pragma DATA_SECTION(SIM_VINC,"CFG")
 float SIM_VINC[4];
#pragma DATA_SECTION(SIM_VREF,"CFG")
 float SIM_VREF[4];
#pragma DATA_SECTION(SIM_TEMPERATURE_EXTERNAL,"CFG")
 float SIM_TEMPERATURE_EXTERNAL;
#pragma DATA_SECTION(USE_COR0_TEMP,"CFG")
 int USE_COR0_TEMP;
#pragma DATA_SECTION(TEMPERATURE_TRIM_T0,"CFG")
 float TEMPERATURE_TRIM_T0;
#pragma DATA_SECTION(TEMPERATURE_TRIM_T1,"CFG")
 float TEMPERATURE_TRIM_T1;
#pragma DATA_SECTION(RTD_GAIN,"CFG")
 float RTD_GAIN;
#pragma DATA_SECTION(RTD_CURRENT,"CFG")
 float RTD_CURRENT;
#pragma DATA_SECTION(RTD_CAL_LO_OHM,"CFG")
 float RTD_CAL_LO_OHM;
#pragma DATA_SECTION(RTD_CAL_HI_OHM,"CFG")
 float RTD_CAL_HI_OHM;
#pragma DATA_SECTION(RTD_CAL_LO_V,"CFG")
 float RTD_CAL_LO_V;
#pragma DATA_SECTION(RTD_CAL_HI_V,"CFG")
 float RTD_CAL_HI_V;
#pragma DATA_SECTION(RTD_CAL,"CFG")
 COIL RTD_CAL;
 float RTD_R;

#pragma DATA_SECTION(REG_DUMMY,"CFG")
 VAR REG_DUMMY;
#pragma DATA_SECTION(REG_STREAM_SELECT,"CFG")
 VAR REG_STREAM_SELECT;
#pragma DATA_SECTION(REG_WATERCUT_ALARM_LO,"CFG")
 VAR REG_WATERCUT_ALARM_LO;
#pragma DATA_SECTION(REG_WATERCUT_ALARM_HI,"CFG")
 VAR REG_WATERCUT_ALARM_HI;

 float WC;      

 float REG_WATERCUT_RAW;
 float REG_PV_AVG_24hr;
 float REG_PV_AVG_5min;
 float REG_PV_AVG_1sec;
 int REG_PV_AVG_CNT;
#pragma DATA_SECTION(REG_WATERCUT,"CFG")
 VAR REG_WATERCUT;

#pragma DATA_SECTION(REG_WATERCUT_DENSITY,"CFG")	 
 VAR REG_WATERCUT_DENSITY;

#pragma DATA_SECTION(REG_NUM_SAMP,"CFG")
 VAR REG_NUM_SAMP;
#pragma DATA_SECTION(REG_EM_PHASE_HOLD,"CFG")
 VAR REG_EM_PHASE_HOLD;
 long double TMP_VTUNE[4];
#pragma DATA_SECTION(REG_VINC,"CFG")
 VAR REG_VINC[4];
 long double TMP_VINC[4];
#pragma DATA_SECTION(REG_VREF,"CFG")
 VAR REG_VREF[4];
 long double TMP_VREF[4];
#pragma DATA_SECTION(REG_TEMPERATURE_USER,"CFG")
 VAR REG_TEMPERATURE_USER;   
 
#pragma DATA_SECTION(REG_TEMPERATURE_AVG,"CFG")
 VAR REG_TEMPERATURE_AVG;

#pragma DATA_SECTION(REG_TEMPERATURE_USER_ADJUST,"CFG")
 VAR REG_TEMPERATURE_USER_ADJUST;
#pragma DATA_SECTION(REG_TEMPERATURE_EXTERNAL,"CFG")
 VAR REG_TEMPERATURE_EXTERNAL;
#pragma DATA_SECTION(REG_FREQ,"CFG")
 VAR REG_FREQ[4];
#pragma DATA_SECTION(REG_FREQ_O,"CFG")
 VAR REG_FREQ_O;
#pragma DATA_SECTION(REG_VINC_O,"CFG")
 VAR REG_VINC_O;
#pragma DATA_SECTION(REG_VREF_O,"CFG")
 VAR REG_VREF_O;
#pragma DATA_SECTION(REG_FREQ_W,"CFG")
 VAR REG_FREQ_W;
#pragma DATA_SECTION(REG_VINC_W,"CFG")
 VAR REG_VINC_W;
#pragma DATA_SECTION(REG_VREF_W,"CFG")
 VAR REG_VREF_W;
 long double	TMP_TEMP;    

 long double	AVG_TEMP;  
 long double		SUM_TEMP;     
 unsigned int		N_TEMP;      

#pragma DATA_SECTION(REG_PHASE_HOLD_CYCLES,"CFG")         
 VAR REG_PHASE_HOLD_CYCLES;                        
 unsigned int cycles;                  
 unsigned int previous_phase;          
 unsigned int phase;                   
 unsigned int phase_rollover_count;       

 unsigned int N_WC;        
 float WC_SAMPLE[30];      
 float WC_SUM;                 
#pragma DATA_SECTION(REG_WC_NUM_SAMPLES,"CFG")         
 VAR REG_WC_NUM_SAMPLES;                        

  
 unsigned int		PORT2_LIQ_TEMP; 
 unsigned int		PORT2_GAS_TEMP;  
 unsigned int		PORT3_TEMP;   
#pragma DATA_SECTION(MM_LIQ_fail,"CFG")
 COIL MM_LIQ_fail;    
#pragma DATA_SECTION(MM_GAS_fail,"CFG")
 COIL MM_GAS_fail;
#pragma DATA_SECTION(Rosemount_fail,"CFG")
 COIL Rosemount_fail; 

#pragma DATA_SECTION(GAS_DENSITY_INPUT_ENABLED,"CFG")
 int GAS_DENSITY_INPUT_ENABLED;              

#pragma DATA_SECTION(RESET_AT_PURGE,"CFG")
 int RESET_AT_PURGE;                       

 
 unsigned int N_FREQ;


#pragma DATA_SECTION(HSALT_FREQ_TRIGGER,"CFG")
 COIL HSALT_FREQ_TRIGGER;   
#pragma DATA_SECTION(REG_FREQ_VARIANCE_RATIO,"CFG")        
 VAR REG_FREQ_VARIANCE_RATIO;

 float TEMP_SAMPLE;
 float LAST_TEMP_RESET;
#pragma DATA_SECTION(REG_DELTA_TEMP,"CFG")        
 VAR REG_DELTA_TEMP; 
#pragma DATA_SECTION(HSALT_TEMP_TRIGGER,"CFG")
 COIL HSALT_TEMP_TRIGGER; 
   

#pragma DATA_SECTION(LOW_SALT_MODE,"CFG")
 int LOW_SALT_MODE;                      

 VAR REG_LOWSALT_THRESHOLD;                        

#pragma DATA_SECTION(EXTENDED_FW_VERSION_ENABLE,"CFG")
 VAR EXTENDED_FW_VERSION_ENABLE;  



#pragma DATA_SECTION(GAS_ENTRAINED,"CFG")
 COIL GAS_ENTRAINED;  
 
#line 1003
#pragma DATA_SECTION(GAS_ENTRAINED_DENS_DETECT,"CFG")
 COIL GAS_ENTRAINED_DENS_DETECT;   
 
#line 1019
enum Pulse_Input_Type
{
	PULSE_GAS_TEMP 		= 1,
	PULSE_SALINITY 		= 2,
	PULSE_STREAM_SELECT = 3,
	PULSE_USER_TEMP 	= 4,
	PULSE_FC_WC 		= 5,
	PULSE_FC_TEMP 		= 6,
	PULSE_FC_TOTAL_FLOW = 7,
	PULSE_FC_PRESSURE 	= 8,
	PULSE_FC_DENSITY 	= 9,
	PULSE_FC_SALINITY 	= 10,
	PULSE_FC_OIL_DENSITY 		= 11,
	PULSE_FC_OIL_DENSITY_ST 	= 12,
	PULSE_FC_WATER_DENSITY 		= 13,
	PULSE_FC_WATER_DENSITY_ST 	= 14,
	PULSE_NONE					= 15
};




#line 1054
#pragma DATA_SECTION(boxcar_expire_val,"CFG")
 VAR boxcar_expire_val;

#pragma DATA_SECTION(boxcar_expire_val_minutes,"CFG")
 VAR boxcar_expire_val_minutes;

 int TIME_COUNT;

 BOOL gas_routine_reset_needed;
 BOOL boxcar_reset_needed;

 double water_freq_in;

typedef struct 
{
	float freq;		
	int counter;	
					
} Boxcar_Var;


 Boxcar_Var boxcar_list[4];		


 
typedef struct 
{
	float data[30];	
	int head;						
	int tail;						
	int length;						
	
	float average;					

} bubble_struct;


#pragma DATA_SECTION(bubble_new_length,"CFG")
 VAR bubble_new_length;



 bubble_struct bubble; 



typedef struct
{
	float data[90];	
	int head;						
	int tail;						
	int length;						
	
	float average;					

} pattern_struct;

#pragma DATA_SECTION(pattern_new_length,"CFG")
 VAR pattern_new_length;


 pattern_struct pattern; 





#pragma DATA_SECTION(RUSS,"CFG")        
 BOOL RUSS;

#pragma DATA_SECTION(RUSS_TBL_LEN,"CFG") 
 int RUSS_TBL_LEN;

 
#pragma DATA_SECTION(REG_BULK_LEVEL,"CFG")        
 VAR REG_BULK_LEVEL;
#pragma DATA_SECTION(BULK_LEVEL_ENABLED,"CFG")
 COIL BULK_LEVEL_ENABLED;
    
 
#pragma DATA_SECTION(OIL_PHASE_ONLY,"CFG")
 COIL OIL_PHASE_ONLY;
#pragma DATA_SECTION(WATER_PHASE_ONLY,"CFG")
 COIL WATER_PHASE_ONLY;
     

 
 BOOL TRIM_RTD_LO;
 BOOL TRIM_RTD_HI;   

    
#pragma DATA_SECTION(CAP_WATER_STOP,"CFG")
 COIL CAP_WATER_STOP;   
#pragma DATA_SECTION(CAP_OIL_STOP,"CFG")
 COIL CAP_OIL_STOP;

 long double TMP_FREQ[4];

#pragma DATA_SECTION(REG_FREQ_OIL_LO,"CFG")
 VAR REG_FREQ_OIL_LO;
#pragma DATA_SECTION(REG_FREQ_OIL_HI,"CFG")
 VAR REG_FREQ_OIL_HI;
#pragma DATA_SECTION(REG_FREQ_WATER_LO,"CFG")
 VAR REG_FREQ_WATER_LO;
#pragma DATA_SECTION(REG_FREQ_WATER_HI,"CFG")
 VAR REG_FREQ_WATER_HI;
#pragma DATA_SECTION(REG_VTUNE_SET,"CFG")
 VAR REG_VTUNE_SET[4];
#pragma DATA_SECTION(REG_VTUNE,"CFG")
 VAR REG_VTUNE[4];
#pragma DATA_SECTION(REG_SALINITY,"CFG")
 VAR REG_SALINITY;
#pragma DATA_SECTION(REG_OIL_ADJ,"CFG")
 VAR REG_OIL_ADJ;
#pragma DATA_SECTION(REG_WATER_ADJ,"CFG")
 VAR REG_WATER_ADJ;
#pragma DATA_SECTION(REG_WATER_INDEX,"CFG")
 VAR REG_WATER_INDEX;
#pragma DATA_SECTION(REG_OIL_INDEX,"CFG")
 VAR REG_OIL_INDEX;
#pragma DATA_SECTION(REG_EMULSION_PHASE,"CFG")
 VAR REG_EMULSION_PHASE;
#pragma DATA_SECTION(REG_CAL_OIL,"CFG")
 VAR REG_CAL_OIL;
#pragma DATA_SECTION(REG_CAL_WATER,"CFG")
 VAR REG_CAL_WATER;
#pragma DATA_SECTION(OIL_P0,"CFG")
 VAR OIL_P0;
#pragma DATA_SECTION(OIL_P1,"CFG")
 VAR OIL_P1;


 
#pragma DATA_SECTION(Plot_Limit_Water_Freq_Low,"CFG")
 VAR Plot_Limit_Water_Freq_Low;
#pragma DATA_SECTION(Plot_Limit_Water_Freq_High,"CFG")
 VAR Plot_Limit_Water_Freq_High;
#pragma DATA_SECTION(Plot_Limit_Oil_Freq_Low,"CFG")
 VAR Plot_Limit_Oil_Freq_Low;
#pragma DATA_SECTION(Plot_Limit_Oil_Freq_High,"CFG")
 VAR Plot_Limit_Oil_Freq_High;
#pragma DATA_SECTION(Plot_Limit_Temp_Low,"CFG")
 VAR Plot_Limit_Temp_Low;
#pragma DATA_SECTION(Plot_Limit_Temp_High,"CFG")
 VAR Plot_Limit_Temp_High;
#pragma DATA_SECTION(Plot_Limit_Watercut_Low,"CFG")
 VAR  Plot_Limit_Watercut_Low;
#pragma DATA_SECTION(Plot_Limit_Watercut_High,"CFG")
 VAR  Plot_Limit_Watercut_High;
#pragma DATA_SECTION(Plot_Limit_Oil_RP_Low,"CFG")
 VAR Plot_Limit_Oil_RP_Low;
#pragma DATA_SECTION(Plot_Limit_Oil_RP_High,"CFG")
 VAR Plot_Limit_Oil_RP_High;
#pragma DATA_SECTION(Plot_Limit_Water_RP_Low,"CFG")
 VAR Plot_Limit_Water_RP_Low;
#pragma DATA_SECTION(Plot_Limit_Water_RP_High,"CFG")
 VAR Plot_Limit_Water_RP_High;
 


#pragma DATA_SECTION(DIO_LOCK,"CFG")
 COIL DIO_LOCK[4];
#pragma DATA_SECTION(REG_PW,"CFG")
 int REG_PW[5];        
#pragma DATA_SECTION(REG_LOCK,"CFG")
 VAR REG_LOCK[5];      
 BOOL LOCKOUT;

 int CURRENT_OSC;
#pragma DATA_SECTION(OSC,"CFG")
 int OSC[4];
#pragma DATA_SECTION(ENABLED,"CFG")
 int ENABLED[4];
#pragma DATA_SECTION(EXP_FREQ,"CFG")
 float EXP_FREQ[4];
#pragma DATA_SECTION(STR_INIT,"CFG")
 int STR_INIT[2];
#pragma DATA_SECTION(STR_VER,"CFG")
 int STR_VER[1];
#pragma DATA_SECTION(STR_Copyright,"CFG")
 int STR_Copyright[40/2];
#pragma DATA_SECTION(STR_Analyzer_Info,"CFG")
 int STR_Analyzer_Info[20/2];
#pragma DATA_SECTION(STR_HART_Tag,"CFG")
 int STR_HART_Tag[8/2];
#pragma DATA_SECTION(STR_HART_Tag_Long,"CFG")
 int STR_HART_Tag_Long[32/2];
#pragma DATA_SECTION(STR_HART_Desc,"CFG")
 int STR_HART_Desc[16/2];
#pragma DATA_SECTION(STR_HART_Date,"CFG")
 int STR_HART_Date[4/2];
#pragma DATA_SECTION(STR_HART_Msg,"CFG")
 int STR_HART_Msg[32/2];
#pragma DATA_SECTION(STR_ASSY_Date,"CFG")
 
 int STR_ASSY_Date[16/2];   
#pragma DATA_SECTION(CRC_BOOT,"CFG")
 unsigned int CRC_BOOT;
#pragma DATA_SECTION(CRC_APP,"CFG")
 unsigned int CRC_APP;
#pragma DATA_SECTION(CRC_INIT,"CFG")
 unsigned int CRC_INIT;
#pragma DATA_SECTION(CRC_FAST,"CFG")
 unsigned int CRC_FAST;

#pragma DATA_SECTION(REG_ADC,"CFG")
 VAR REG_ADC[12];

#pragma DATA_SECTION(REG_DAC,"CFG")
 VAR REG_DAC[12];

#pragma DATA_SECTION(ADC_TRIM_F_0,"CFG")
 float ADC_TRIM_F_0[12];
#pragma DATA_SECTION(ADC_TRIM_F_1,"CFG")
 float ADC_TRIM_F_1[12];
#pragma DATA_SECTION(ADC_TRIM_I_0,"CFG")
 int ADC_TRIM_I_0[12];
#pragma DATA_SECTION(ADC_TRIM_I_1,"CFG")
 int ADC_TRIM_I_1[12];

#pragma DATA_SECTION(DAC_TRIM_F_0,"CFG")
 float DAC_TRIM_F_0[12];
#pragma DATA_SECTION(DAC_TRIM_F_1,"CFG")
 float DAC_TRIM_F_1[12];
#pragma DATA_SECTION(DAC_TRIM_I_0,"CFG")
 int DAC_TRIM_I_0[12];
#pragma DATA_SECTION(DAC_TRIM_I_1,"CFG")
 int DAC_TRIM_I_1[12];

#pragma DATA_SECTION(FREQ_FACTOR,"CFG")
 float FREQ_FACTOR;

typedef struct 	{
					int		MODE;
					int		STATUS_MASK;
					REGVECT	v;
					float	setpoint;

					COIL	ON;

					int		class;
					int		unit;
	    		} RELAYDATA;


#pragma DATA_SECTION(RLY,"CFG")
 RELAYDATA RLY[2];


#pragma DATA_SECTION(VARUSER,"CFG")
 VAR VARUSER[5];


#pragma DATA_SECTION(SPAD,"CFG")
 int SPAD[50];

typedef struct 	{
					float	diag;
					float	mfr;
					int		u_mfr;
					float	density;
					int		u_density;
					float	density_PDI_corrected;
					float	density_corrected;
					int		u_density_corrected;
					float	T;
					int		u_T;
					float	vfr;
					int		u_vfr;
					float	visc;
					int		u_visc;
					float	press;
					float	mass_total;
					int		u_m;
					float	volume_total;
					int		u_v;
					int		u_P;
					float	P;
					float	mass_inv;
					float	volume_inv;
					float	raw_tube_freq;
					float	left_pickup_value;
					float	right_pickup_value;
					float	drive_gain;
					VAR		damp_flow_rate;
					VAR		damp_density;
					VAR		mfr_cutoff;
					VAR		vfr_cutoff;
					VAR		mcf;  
					VAR		address;          
					VAR     mass_unit;      
					VAR     density_cutoff;  
					COIL	Z;
	    		} CORIOLIS;
 CORIOLIS COR[5];

#line 1382
typedef struct 	{
					float	p_delta;
					float	p_static;
					float	T;
					float	diag0;
					float	diag1;
					float	diag2;
					int		u_DP;
					int		u_SP;
					int		u_PT;
	    		} PRESSURE;
 PRESSURE PRESS[3];

typedef struct 	{
					float	T;
					float	etc0;
					float	etc1;
					float	etc2;
					float	etc3;
					float	etc4;
	    		} TMPT;
 TMPT TMPTRANS[3];

#pragma DATA_SECTION(USE_PDI_WATERCUT,"CFG")
	COIL USE_PDI_WATERCUT;
#pragma DATA_SECTION(CALC_WC_DENSITY,"CFG")
	COIL CALC_WC_DENSITY;



typedef struct 	{
					VAR		watercut;
					VAR		T;
					VAR		pressure;
					VAR		density;
					float	density_PDI_corrected;
					float	density_adj;
					VAR		density_oilST;
					VAR		density_oil;
					VAR		density_waterST;
					VAR		density_water;
					VAR		salinity;
					int		API_TABLE;
					float	a;
					VAR		Meter_Factor;
					VAR		Shrinkage;
					float	VCFo;
					float	VCFw;
					float	net_watercut;
					float	net_watercut_mass;
					float	Dadj;

					VAR NET_FLOW_OIL;
					VAR NET_FLOW_WATER;
					VAR NET_FLOW_TOTAL;
					
					VAR NET_OIL;
					VAR NET_WATER;
					VAR NET_TOTAL;
					VAR AVG_NET_TOTAL;
					
					VAR GROSS_OIL;
					long double gross_oil_whole_part;
					long double gross_oil_fract_part;
					
					VAR GROSS_WATER;
					long double gross_water_whole_part;
					long double gross_water_fract_part;
					
					VAR GROSS_TOTAL;
					VAR AVG_GROSS_TOTAL;
					
					VAR FLOW_OIL;
					VAR FLOW_WATER;
					VAR FLOW_TOTAL;
					
					unsigned int PULSES_PER_ACCUM_UNIT;
					VAR PULSE_TOTAL;
					VAR PULSE_FLOW;
					VAR PULSE_FREQ;
					unsigned int PULSE_COUNTER;
					int PULSE;
					int CNT;
					int PULSE_DELTA;
					float	PULSE_FACTOR;
					int PULSE_STAT;
					BOOL	enable_NET;
					BOOL	enable_GROSS;
					BOOL	enable_FLOW;
					BOOL	enable_DENSITY;
					BOOL	enable_PULSE;
					REGVECT	flow_class;
					REGVECT flow_unit;
					REGVECT accum_unit;
					COIL Z;
					
					
					COIL use_totalizer;
					REGVECT	pulse_v;
					REGVECT	pulse_class;
					REGVECT	pulse_unit;
					VAR pulse_VALUE;
					

					BOOL USE_PDI_TEMP;
					BOOL USE_PDI_SALINITY;

					BOOL CALC_WC_DENSITY;
					
					BOOL MAN_TEMP;
					BOOL MAN_SALINITY;
					BOOL MAN_WATERCUT;
					BOOL MAN_DENSITY;
					BOOL MAN_PRESSURE;
					BOOL MAN_FLOW;

					unsigned int AUTHORIZATION_CODE1;
					unsigned int AUTHORIZATION_CODE2;
					unsigned int AUTHORIZATION_CODE3;
					unsigned int AUTHORIZATION_CODE4;
	    		} FLOW_COMP;

#pragma DATA_SECTION(FC,"CFG")
 FLOW_COMP FC[3];

typedef struct 	{
					float	WATERCUT;
					float	FLOW_RATE;
					float	TEMPERATURE;
					float	DENSITY;
					float	VISCOSITY;

					int		iWATERCUTz;
					int		iWATERCUT;
					int		iFLOW_RATE;
					int		iTEMPERATURE;
					int		iDENSITY;
					int		iVISCOSITY;

					float	maxWATERCUTz;
					float	maxWATERCUT;
					float	maxFLOW_RATE;
					float	maxTEMPERATURE;
					float	maxDENSITY;
					float	maxVISCOSITY;

					float	minWATERCUTz;
					float	minWATERCUT;
					float	minFLOW_RATE;
					float	minTEMPERATURE;
					float	minDENSITY;
					float	minVISCOSITY;

					BOOL	ENABLED;

					VAR		DESTINATION_ADDRESS;
	    		} ALYESKA_STRUCT;

#pragma DATA_SECTION(ALYESKA,"CFG")
 ALYESKA_STRUCT ALYESKA;

 float compatibility_dummy;


		 
#line 1578
#pragma DATA_SECTION(ALFAT_RX,"internal_RAM")
	char	ALFAT_RX[128]; 

#pragma DATA_SECTION(ALFAT_TX,"internal_RAM")
	char	ALFAT_TX[300]; 

#pragma DATA_SECTION(SIZE_ALFAT_TX,"internal_RAM")
 int		SIZE_ALFAT_TX; 

#pragma DATA_SECTION(LOG_STATUS,"CFG")
 int		LOG_STATUS; 

#pragma DATA_SECTION(ALFAT_NO_ERROR,"internal_RAM")
 int		ALFAT_NO_ERROR;

#pragma DATA_SECTION(ALFAT_INIT_ALL,"internal_RAM")
 int		ALFAT_INIT_ALL;

#pragma DATA_SECTION(ALFAT_USB_DETECTED,"CFG")
 COIL ALFAT_USB_DETECTED;

#pragma DATA_SECTION(ALFAT_USB_MOUNTED,"CFG")
 COIL ALFAT_USB_MOUNTED;

#pragma DATA_SECTION(ALFAT_STATUS_REG,"internal_RAM")
	unsigned int 	ALFAT_STATUS_REG;

#pragma DATA_SECTION(ALFAT_INITIALIZED,"CFG")
	unsigned int 	ALFAT_INITIALIZED;

#pragma DATA_SECTION(ALFAT_LOG_DAY,"CFG")
	unsigned int 	ALFAT_LOG_DAY; 

#pragma DATA_SECTION(ALFAT_WRITE_HEADER,"CFG")
	unsigned int 	ALFAT_WRITE_HEADER;

#pragma DATA_SECTION(ALFAT_APPEND_LF,"CFG")
	BOOL 	ALFAT_APPEND_LF;

#pragma DATA_SECTION(BEGIN_ALFAT_LOGGING,"CFG")
 COIL BEGIN_ALFAT_LOGGING;

#pragma DATA_SECTION(REG_ALFAT_LOG_PERIOD,"CFG")
 VAR REG_ALFAT_LOG_PERIOD;



	
typedef struct 	{
					COIL	ENABLED;
					   
					VAR	flow_threshold; 
					            
					
					float	S3;
					float	S2;
					float	S1;
					float	S0;
					float	Fmin;
					
					float	Dmin;
					float	Dmax;
					
					BOOL	CHANGED;
					BOOL	PURGING;
					BOOL	TEST_IN_PROGRESS;
					float	SP3A;
					float	SP2A;
					float	SP1A;
					float	SP0A;
					float	SPLOA;
					float	SPHIA;
					float	SP3B;
					float	SP2B;
					float	SP1B;
					float	SP0B;
					float	SPLOB;
					float	SPHIB;
					float	FBHI3;
					float	FBHI2;
					float	FBHI1;
					float	FBHI0;
					float	FBLO3;
					float	FBLO2;
					float	FBLO1;
					float	FBLO0;
	    		} HS_STRUCT;

#pragma DATA_SECTION(HSALT,"CFG")
 HS_STRUCT HSALT;

#pragma DATA_SECTION(Hsalt_Min_WC,"CFG")
 VAR Hsalt_Min_WC;

 
#pragma DATA_SECTION(AVG_RESET,"CFG")
 COIL AVG_RESET;


#pragma CODE_SECTION(Setup_Basics,"initialization")



 void Setup_Basics(void);

#line 44 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\HART.H"
#pragma DATA_SECTION(HART_VAR_LIST,"CFG")
extern unsigned int	HART_VAR_LIST[4];
#pragma DATA_SECTION(HART_BURST_VAR_LIST,"CFG")
extern unsigned int	HART_BURST_VAR_LIST[4];
#pragma DATA_SECTION(HART_BURST_CMD,"CFG")
extern int	HART_BURST_CMD;
#pragma DATA_SECTION(HART_BURST_MODE,"CFG")
extern int	HART_BURST_MODE;
#pragma DATA_SECTION(HCHANGE,"CFG")
extern int    HCHANGE[2];
extern int    HCOLD[2];
#pragma DATA_SECTION(HCHANGE_COUNTER,"CFG")
extern unsigned int    HCHANGE_COUNTER;

extern BOOL	HART_BURST_MASTER_SEL;
extern int		TMR_BURST;
extern int		TMR_SET_BT;
extern int		TMR_SET_RT1;
extern float	OLD_CURRENT;

extern int* vect_hexec0;
extern int* vect_hexec1;
extern int* vect_hexec2;
extern int* vect_hexec3;
extern int* vect_hexec4;
extern int* vect_hexec5;
extern int* vect_hexec6;
extern int* vect_hexec7;

extern void HART_5(int port);

#line 79
extern void HART_Initialize(int id);
extern VAR* HART_Lookup(unsigned int d, unsigned int* r, int* h);


extern const int* HART_DD_Table;
extern const int* HART_DPF_Table;
extern const int* HART_DPI_Table;
extern const int* HART_DVI_Table;
extern const int* HART_DV_Table;
extern const int* HART_DVOUTPUT_Table;
extern const int* HART_DVINPUT_Table;
#line 31 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\MODBUSRTU.H"
extern BOOL   MODBUS_CRITICAL_ERROR;

#line 143
extern void Modbus_Initialize(int id);
extern void MODBUS_RX_ID(int id);
extern void MODBUS_RX_LONG_ADDR(int id);
extern void MODBUS_RX_FUNCTION(int id);
extern void MODBUS_RX_n(int id);
extern void MODBUS_RX_nDATA(int id);
extern void MODBUS_RX_CRC(int id);

extern void MB_exception(int id, int ex);
extern void Process(int id);
extern void Process_Memory(int id);
extern void MB_Diag(int id);
extern void Force_Slave_Pipe(int id);
extern void Report_Slave_Info(int id);
extern void MB_Calibrate(int id);

extern void MB_POLL(int id);
extern void MB_POLL_0(void);
extern void MB_POLL_1(void);
extern void MB_POLL_2(void);
extern void MB_POLL_3(void);
extern void MB_POLL_4(void);
extern void MB_POLL_5(void);
extern void MB_POLL_6(void);
extern void MB_POLL_7(void);

extern void MB_RETRY(int id);
extern void MB_RETRY_0(void);
extern void MB_RETRY_1(void);
extern void MB_RETRY_2(void);
extern void MB_RETRY_3(void);
extern void MB_RETRY_4(void);
extern void MB_RETRY_5(void);
extern void MB_RETRY_6(void);
extern void MB_RETRY_7(void);

extern void MB_Init_Master(int id);
extern MPKT* Master_Create(int* vect, int n, int slave, int func, int addr, int num, float v);
extern void MB_RX(int id);
extern void MB_RX_COR0CFG(int id);
extern void MB_RX_COR1CFG(int id);
extern void MB_RX_COR2CFG(int id);
extern void MB_RX_COR3CFG(int id);
extern void MB_RX_COR0CFGA(int id);
extern void MB_RX_COR1CFGA(int id);
extern void MB_RX_COR2CFGA(int id);
extern void MB_RX_COR3CFGA(int id); 
extern void MB_RX_COR0CFGB(int id);       
extern void MB_RX_COR1CFGB(int id);
extern void MB_RX_COR2CFGB(int id);
extern void MB_RX_COR3CFGB(int id); 
extern void MB_RX_COR4CFGB(int id);
extern void MB_RX_COR0CFGC(int id);     
extern void MB_RX_COR1CFGC(int id);
extern void MB_RX_COR2CFGC(int id);
extern void MB_RX_COR3CFGC(int id);  
extern void MB_RX_COR0CFGD(int id);     
extern void MB_RX_COR1CFGD(int id);
extern void MB_RX_COR2CFGD(int id);
extern void MB_RX_COR3CFGD(int id);
extern void MB_RX_MCFU1(int id);
extern void MB_RX_MCFU2(int id);
extern void MB_RX_MCFU3(int id);
extern void MB_RX_MCFU4(int id);
extern void MB_RX_2(int id);
extern void MB_RX_3(int id);
extern void MB_RX_COR1COILS(int id);
extern void MB_RX_COR2COILS(int id);
extern void MB_RX_5(int id);
extern void MB_RX_C1(int id);
extern void MB_RX_C2(int id);
extern void MB_RX_C3(int id);
extern void MB_RX_C4(int id);
extern void MB_RX_C5(int id);
extern void MB_TX_A_PLC(void);
extern void MB_RX_CA1(int id);
extern void MB_RX_CA2(int id);
extern void MB_RX_CA3(int id);
extern void MB_RX_CA4(int id);
extern void MB_RX_CAP1(int id);
extern void MB_RX_CT1(int id);
extern void MB_RX_CT2(int id);
extern void MB_RX_CT3(int id);
extern void MB_RX_CT4(int id);
extern int Xlate_3095_P_units(int u);
extern int Xlate_3095_T_units(int u);
extern void Xlate_COR_Special_Units(int id, int j);
extern TPKT TMR_ALYESKA_PLC;

extern int* vect_exec0;
extern int* vect_exec1;
extern int* vect_exec2;
extern int* vect_exec3;
extern int* vect_exec4;
extern int* vect_exec5;
extern int* vect_exec6;
extern int* vect_exec7; 
extern int* vect_exec8; 

#line 36 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\MISC.H"
extern void Initialize_Periodic_Events(void);
extern unsigned int Calc_CRC(unsigned int* s, unsigned int n);

extern int FS(VAR* v);
extern int FS2(VAR* v, VAR* low_plot, VAR* high_plot); 
extern void CCM_START(void);
extern void CCM_TESTING(void);
extern void CCM_PURGING(void);



extern void Begin_Alfat_Logging(COIL* c);

extern void Alfat_Change_Log_Period(COIL* c);

extern int Alfat_Map_Var(int index);

extern unsigned int BCD_to_Int(unsigned char bcd_val);

extern char Hex_to_ASCII(char hex_val);

extern void Hex32_to_String(char out_string[], unsigned int hex_val);

extern unsigned int ASCII_to_Hex(char ascii_val);

extern void Alfat_Wait_For_Write(void);

extern void Alfat_Get_Version_Vector(void);

extern void Alfat_Get_Version(void);

extern void Alfat_Init_RTC(void);

extern void Alfat_Set_Time_Date_Vector(void);

extern void Alfat_Set_Time_Date(void);

extern void Alfat_Get_Time_Vector(void);

extern void Alfat_Get_Time(void);

extern void Alfat_Get_Date_Vector(void);

extern void Alfat_Get_Date(void);

extern void Alfat_Print_Time_Date(int handle);

extern void Alfat_Get_Status_Reg_Vector(void);

extern void Alfat_Get_Status_Reg(void);

extern void Alfat_Init_USB_Vector(void);

extern void Alfat_Init_USB(void);

extern void Alfat_Open_Append(int handle, char full_path[]);

extern void Alfat_Open_Append_Vector(void);

extern void Alfat_Close(int handle);

extern void Alfat_Flush(int handle);

extern void Alfat_Write(int handle, int num_bytes, int append_linefeed);

extern void Alfat_Write_Vector(void);

extern void Alfat_Init_All(void);

extern void Alfat_Log_Vars(void);


 
#line 135
extern void Set_Class_Units_AO(int id, int i);
extern void Set_Class_Units_AO1(int id);
extern void Set_Class_Units_AO2(int id);
extern void Set_Class_Units_AO3(int id);
extern void Set_Class_Units_AO4(int id);
extern void Set_Class_Units_AO5(int id);
extern void Set_Class_Units_AO6(int id);
extern void Set_Class_Units_AO7(int id);
extern void Set_Class_Units_AO8(int id);
extern void Set_Class_Units_AO9(int id);
extern void Set_Class_Units_AI1(int id);
extern void Set_Class_Units_AI2(int id);
extern void Set_Class_Units_AI3(int id);
extern void Set_Class_Units_AI4(int id);
extern void Set_Class_Units_AI5(int id);
extern void Set_Class_Units_AI(int id, int i);
extern void Set_Class_Units_Pulse(int id, int i);
extern void Set_Class_Units_Pulse1(int id);
extern void Set_Class_Units_Pulse2(int id);
extern void Set_Class_Units_Pulse3(int id);
extern void Set_Class_Units(int id);
extern void Set_RLY_Units(int id);
extern void Set_Units(int id);
extern void Set_Pulse_Units(int id);
extern int Span(float v, float min2, float max2, int mini, int maxi);
extern void HSALT_CLEAR(void);
extern void Set_Density_Cal_Unit(int id);
extern void PDI_Density_Correction(VAR* v);
extern void PDI_Density_Adj(VAR* v);
extern void Set_FC_Units(int id);

extern void Accum_Fractional_Oil(long double* o);
extern void Accum_Fractional_Water(long double* w);

extern void Accumulate_Gas(void);
extern void Accumulate(VAR* v);
extern void Calibrate_RTD(void);
extern void Disable_Heater(void);
extern void Poll(void);
extern void STATUS_LED_off(void);
extern void STATUS_LED_on(void);
extern void Copy_CAPDATA(CAPDATA* p, BOOL to_coeff, BOOL clr);
extern void Set_Density_Correction(int id);
extern void Reset_IDEC(int id);
extern void Set_IDEC_Port(int id);
extern void Set_Time(int id);
extern void CCM_Record_Viewer(int id);
extern void VAR_SET_STR(VAR* v, unsigned int ui);
extern void VAR_SET_STR_DV(int id);
extern void VAR_SET_STR_DVIN(int id);
extern void Refresh_IDEC_Time(void);
extern void Calibrate_OIL(VAR* v);
extern void Calibrate_WATER(VAR* v);
extern double sigfig (double v, int n);
extern double round (double v, int n);
extern double truncate (double v, int n);
extern void Check_Zero(void);
extern void Zero_FC1(void);
extern void Zero_FC2(void);
extern void Zero_FC3(void);
extern void Disable_PDI_WC_Mode(int id);
extern void Disable_WC_Density_Mode(int id);
extern void Clear_Accumulator(int n);
extern void Clear_Accumulators(int id);
extern void Totalizer_Control(int id);
extern void Update_Relays(void);
extern void SET_BASICS(void);
extern void BEEP_OFF(void);
extern void BEEP_ON(void);
extern void CLEAR_LOCKOUT(void);
extern void SAVE(void);
extern void Submit_Setup_Basics(void);
extern void Submit_SELF_TEST(void);
extern void Submit_Reset(void);
extern void Submit_Serial_Defaults(void);
extern void Serial_Defaults(void);
extern void Submit_Restart(void);
extern void Submit_Save(void);
extern void Submit_Restore_CFG_FACTORY(void);
extern void Submit_Restore_CFG_USER(void);
extern void Submit_Write_CFG_FACTORY(void);
extern void Submit_Write_CFG_USER(void);

extern void Freq_oil_plot_min(VAR* v);
extern void Freq_oil_plot_max(VAR* v);
extern void Freq_water_plot_min(VAR* v);
extern void Freq_water_plot_max(VAR* v);
extern void Temp_plot_min(VAR* v);
extern void Temp_plot_max(VAR* v);
extern void Watercut_plot_min(VAR* v);
extern void Watercut_plot_max(VAR* v);
extern void Oil_RP_plot_min(VAR* v);
extern void Oil_RP_plot_max(VAR* v);
extern void Water_RP_plot_min(VAR* v);
extern void Water_RP_plot_max(VAR* v);



extern void CLEAR_PORT_COUNT(int id);

extern void CopyTempVars(void);
extern void Periodic_Accumulate(void);
extern void Sampling_Error(void);
extern void Read_RTC(void);
extern void Update_i_Log_Var(void);
extern void PVAVG24(void);




 
extern void Calibrate_HSALT(long double *p);


extern void PutInt(int i, unsigned char* p, int* j);
extern void GetInt(int* i, unsigned char* p, int* j);
extern void PutFlt(float f, unsigned char* p, int* j);
extern void GetFlt(float* f, unsigned char* p, int* j);
extern void PutCRC(unsigned char* p);
extern unsigned int CRC16_bytes(unsigned char* s, int n);
extern BOOL M24C02_Record(BOOL read, int addr, unsigned char* p);

extern TPKT TMR_GET_uP_CONFIG;
extern void Submit_GET_uP_CONFIG(void);
extern void GET_uP_CONFIG(void);

extern TPKT TMR_STORE_uP_CONFIG;
extern void Submit_STORE_uP_CONFIG(void);
extern void STORE_uP_CONFIG(void);

extern TPKT TMR_GET_COMM_CONFIG;
extern void Submit_GET_COMM_CONFIG(void);
extern void GET_COMM_CONFIG(void);

extern TPKT TMR_STORE_COMM_CONFIG;
extern void Submit_STORE_COMM_CONFIG(void);
extern void STORE_COMM_CONFIG(void);

extern TPKT TMR_GET_ANALYZER_CONFIG;
extern void Submit_GET_ANALYZER_CONFIG(void);
extern void GET_ANALYZER_CONFIG(void);

extern TPKT TMR_STORE_ANALYZER_CONFIG;
extern void Submit_STORE_ANALYZER_CONFIG(void);
extern void STORE_ANALYZER_CONFIG(void);

extern TPKT TMR_GET_POWER_CONFIG;
extern void Submit_GET_POWER_CONFIG(void);
extern void GET_POWER_CONFIG(void);

extern TPKT TMR_STORE_POWER_CONFIG;
extern void Submit_STORE_POWER_CONFIG(void);
extern void STORE_POWER_CONFIG(void);

extern TPKT TMR_GET_ANALOGIO_CONFIG;
extern void Submit_GET_ANALOGIO_CONFIG(void);
extern void GET_ANALOGIO_CONFIG(void);

extern TPKT TMR_STORE_ANALOGIO_CONFIG;
extern void Submit_STORE_ANALOGIO_CONFIG(void);
extern void STORE_ANALOGIO_CONFIG(void);

extern TPKT TMR_GET_MOTHERBOARD_CONFIG;
extern void Submit_GET_MOTHERBOARD_CONFIG(void);
extern void GET_MOTHERBOARD_CONFIG(void);

extern TPKT TMR_STORE_MOTHERBOARD_CONFIG;
extern void Submit_STORE_MOTHERBOARD_CONFIG(void);
extern void STORE_MOTHERBOARD_CONFIG(void);

extern TPKT TMR_GET_DISPLAY_CONFIG;
extern void Submit_GET_DISPLAY_CONFIG(void);
extern void GET_DISPLAY_CONFIG(void);

extern TPKT TMR_STORE_DISPLAY_CONFIG;
extern void Submit_STORE_DISPLAY_CONFIG(void);
extern void STORE_DISPLAY_CONFIG(void);

extern TPKT TMR_PVAVG;
extern TPKT TMR_iLV;
extern TPKT TMR_RTC_UPDATE;
extern TPKT TMR_CCM_PURGE;
extern TPKT TMR_CCM_TEST;
extern TPKT TMR_SAMPLE_ERROR;
extern TPKT TMR_PERIODIC_ACCUM;
extern TPKT TMR_SERDEF;
extern TPKT TMR_LEDON;
extern TPKT TMR_LEDOFF;
extern TPKT TMR_CHECK_ZERO;
extern TPKT TMR_UPDATE_RELAYS;
extern TPKT TMR_SET_CURRENT;
extern TPKT TMR_ADC_UPDATE;
extern TPKT TMR_PULSE_UPDATE;
extern TPKT TMR_MENU_REFRESH;
extern TPKT TMR_STAT;
extern TPKT TMR_DATALOG;
extern TPKT TMR_DATALOG_USER;
extern TPKT TMR_DATALOG_COUNTERS;
extern TPKT TMR_CLEAR_USER_LOG_EVENT_FLAG;
extern TPKT TMR_CLEAR_SYS_LOG_EVENT_FLAG;
extern TPKT TMR_CLEAR_LOCKOUT;
extern TPKT TMR_BEEP_OFF;
extern TPKT TMR_SET_BASICS;
extern TPKT TMR_RESET;
extern TPKT TMR_RESTART;
extern TPKT TMR_SAVE_CFGF;
extern TPKT TMR_SAVE_CFGU;
extern TPKT TMR_RESTORE_CFGF;
extern TPKT TMR_RESTORE_CFGU;
extern TPKT TMR_SELF_TEST;
extern TPKT TMR_DAMP;
extern TPKT TMR_T;
extern TPKT TMR_REFRESH_TIME;
extern TPKT TMR_OSC_DELAY_LONG;
extern TPKT TMR_OSC_DELAY_SHORT;
extern TPKT TMR_POLL;
extern TPKT TMR_SELFTEST;

extern TPKT TMR_ALFAT_LOG;

extern void Unpack_ASCII(unsigned int* s, unsigned int* d, int np);
extern void Pack_ASCII(unsigned int* s, unsigned int* d, int n);
extern void Put_IEEE(int id, VAR* v);
extern void Timer_T(void);
extern void Setup_Sample(void);
extern void STAT(void);
extern void RESEARCH(void);
extern void Send_Sample(int VT);
extern long double Interpolate(long double w1, long double t1, long double w2, long double t2, long double t);
extern void Set_Temperature_Unit(void);
extern BOOL Write_CFG_USER(void);
extern BOOL Write_CFG_FACTORY(void);
extern int  Restore_CFG(void);
extern void System_Reset(void);
extern void System_Restart(void);
extern void Restore_CFG_FACTORY(void);
extern void Restore_CFG_USER(void);
extern BOOL Set_Research_Mode(void);
extern void PV_AVERAGE(VAR* v);
extern void UnLock_P(int n);
extern void UnLock_P0(VAR* v);
extern void UnLock_P1(VAR* v);
extern void UnLock_P2(VAR* v);
extern void UnLock_P3(VAR* v);
extern void UnLock_P4(VAR* v);  
extern void Detect_Current_Loop(void);
extern void Set_ASCII_Temp_Unit(VAR* v);
extern void Capture_Watercut_Water(int id);
extern void Capture_Watercut_Oil(int id);

extern void Reset_PID_Bias(VAR* v);

extern void Mirror_To_Stream_Table(VAR* v);
extern void Mirror_From_Stream_Table(VAR* v);
extern float RESEARCH_VTUNE[4];
extern float RESEARCH_ENABLED[4];
extern float RESEARCH_OSC[4];
extern float RESEARCH_GATE;
extern float RESEARCH_PS;
extern BOOL Get_CAPDATA(CAPDATA* p);
extern void PULSE_UPDATE(void);

extern void CORIOLIS_ZERO1(void);
extern void CORIOLIS_ZERO2(void);
extern void CORIOLIS_ZERO3(void);
extern void CORIOLIS_ZERO4(void);
extern void CORIOLIS_CFG(VAR* v); 
extern void CORIOLIS_INT_CFG(VAR* v);   

extern BOOL Is_Expired(int boxcar_counter);
extern void Swap_Boxcar_Vals(int x, int y);
extern void Check_Boxcar_Limits();
extern inline void Reset_Boxcar();
extern inline void Update_Boxcar();
extern inline void	Update_Pattern();
extern inline void	Update_Bubble();

#line 29 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\API.H"
extern void API_VCF(FLOW_COMP* f, float* VCFw, float* VCFo);
extern double API_15C_PT(const int fcidx, const double r, int* k_set);
extern double API_60F_PT(const int fcidx, const double r, int* k_set);
extern double API_PT_ST(const int fcidx, const double r, const BOOL F60, const BOOL RET_VCF);
extern double API_to_kgm3(const double r);
extern double kgm3_to_API(const double r);
extern void API_STATUS(const int fcidx, const BOOL type);

#line 38 "glbls.c"
void Setup_Basics(void)
{
	int 		i,j,k;
	char* 		c;
	VAR* 		v;
	unsigned int ui;
	unsigned int* m;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF^(0x80|0x40));{asm("	pop		ST			");};};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) &= (0xFF ^ 0x08);{asm("	pop		ST			");};};

	RESET_COUNTER = 0;

	if (!MEM)
	{  
		CRC_BOOT      = Calc_CRC(((unsigned int*)0x400000), 0x00002000);
		CRC_FAST      = Calc_CRC(((unsigned int*)0x428000), 0x00008000);
		CRC_APP       = Calc_CRC(((unsigned int*)0x430000),  0x00030000);
		CRC_INIT      = Calc_CRC(((unsigned int*)0x460000), 0x00010000);
	}

		
	VAR_DAMP_Init(1);	 

	 
	VAR_Initialize(&REG_DUMMY, 250, 250, 100.0, 1000.0, 0x00000002|0x00000004);
	VAR_NaN(&REG_DUMMY);
	sprintf(REG_DUMMY.name, "Not Used");
    
     
	VAR_Initialize(&REG_WATERCUT, 81, 57, 100.0, 1000.0, 0x00000001|0x00000800);
	sprintf(REG_WATERCUT.name, "Water Cut");	
	REG_WATERCUT.name_r = 275;
	VAR_Setup_Unit(&REG_WATERCUT, 57, 100.0, 0.0, 105.0, -3.0);
	VAR_Update(&REG_WATERCUT, 0.0, 0, 0);
	REG_WATERCUT_RAW = 0.0;
	REG_WATERCUT.vect1 = (int*)PV_AVERAGE;
    
     
	
	VAR_Initialize(&REG_WATERCUT_DENSITY, 81, 57, 100.0, 1000.0, 0x00000001|0x00000800|0x00000004|0x00000100);
	sprintf(REG_WATERCUT_DENSITY.name, "Water Cut by Density");
	VAR_Setup_Unit(&REG_WATERCUT_DENSITY, 57, 100.0, 0.0, 105.0, -3.0);
	VAR_Update(&REG_WATERCUT_DENSITY, 0.0, 0, 0);
	
	 
	VAR_Initialize(&REG_NUM_SAMP, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_NUM_SAMP.name, "Process Averaging");	
	REG_NUM_SAMP.name_r = 276;
	VAR_Setup_Unit(&REG_NUM_SAMP, 240, 300, 1.0, 300, 1.0);
	VAR_Update(&REG_NUM_SAMP, 1.0, 0, 0);

	 
	VAR_Initialize(&REG_EM_PHASE_HOLD, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_EM_PHASE_HOLD.name, "Em. Phase Holdover");
	VAR_Setup_Unit(&REG_EM_PHASE_HOLD, 240, 30.0, 0.0, 30.0, 0.0);
	VAR_Update(&REG_EM_PHASE_HOLD, 0.0, 0, 0);
    
     
	VAR_Initialize(&REG_PHASE_HOLD_CYCLES, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_PHASE_HOLD_CYCLES.name, "Phase Hold Over");	
	REG_PHASE_HOLD_CYCLES.name_r = 277;
	VAR_Setup_Unit(&REG_PHASE_HOLD_CYCLES, 240, 30.0, 0.0, 30.0, 0.0);
	VAR_Update(&REG_PHASE_HOLD_CYCLES, 3.0, 0, 0);
    
   	 
	VAR_Initialize(&REG_WC_NUM_SAMPLES, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_WC_NUM_SAMPLES.name, "Num of Water Cut Samples");
	VAR_Setup_Unit(&REG_WC_NUM_SAMPLES, 240, 30.0, 0.0, 30.0, 0.0);
	VAR_Update(&REG_WC_NUM_SAMPLES, 1.0, 0, 0); 

	 
#line 121
	VAR_Initialize(&REG_FREQ_VARIANCE_RATIO, 81, 240, 100.0, 10000.0, 0x00000002|0x00000004);
	sprintf(REG_FREQ_VARIANCE_RATIO.name, "Freq Variances Changing Ratio for HSALT");  
	VAR_Update(&REG_FREQ_VARIANCE_RATIO, 1.5, 0, 0); 
	
	
    VAR_Initialize(&REG_DELTA_TEMP, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_DELTA_TEMP.name, "Temperature Delta for HSALT");  
	VAR_Setup_Unit(&REG_DELTA_TEMP, 240, 30.0, 0.0, 30.0, 0.0);
	VAR_Update(&REG_DELTA_TEMP, 3.0, 0, 0);
	REG_DELTA_TEMP.vect2 = (int*)Mirror_To_Stream_Table;	
    
	U_TEMP_ASCII = 0x2020;
	
	
	
	
	gas_routine_reset_needed = 1;
	boxcar_reset_needed = 1;
	
	
	
    VAR_Initialize(&boxcar_expire_val, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(boxcar_expire_val.name, "Boxcar Length");
	VAR_Setup_Unit(&boxcar_expire_val, 240, 1350 + 1, 22 - 1, 1350 + 1, 22 - 1);
	VAR_Update(&boxcar_expire_val, 157.0, 0, 0);
	boxcar_expire_val.vect2 = (int*)Mirror_To_Stream_Table;  
	
	
    VAR_Initialize(&boxcar_expire_val_minutes, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(boxcar_expire_val_minutes.name, "Boxcar Minutes");
	VAR_Setup_Unit(&boxcar_expire_val_minutes, 240, 60 + 1, 1 - 1, 60 + 1, 1 - 1);
	VAR_Update(&boxcar_expire_val_minutes, 7.0, 0, 0);
	boxcar_expire_val_minutes.vect2 = (int*)Mirror_To_Stream_Table;  
	
	
	bubble.length = 8;
	pattern.length = 75;

	
	
    VAR_Initialize(&bubble_new_length, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(bubble_new_length.name, "New Bubble Length");  
	VAR_Setup_Unit(&bubble_new_length, 240, 30+1, 2-1, 30+1, 2-1);
	VAR_Update(&bubble_new_length, 8.0, 0, 0);   
	bubble_new_length.vect2 = (int*)Mirror_To_Stream_Table;  
	
	
    VAR_Initialize(&pattern_new_length, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(pattern_new_length.name, "New pattern Length");  
	VAR_Setup_Unit(&pattern_new_length, 240, 90+1, 5-1, 90+1, 5-1);
	VAR_Update(&pattern_new_length, 75.0, 0, 0);   
	pattern_new_length.vect2 = (int*)Mirror_To_Stream_Table;  
	
	
	
	water_freq_in = 0.0;
	
	

	
	RUSS = 0;
	RUSS_TBL_LEN = Find_Russ_Tbl_Len();
	
	 
     
    VAR_Initialize(&REG_BULK_LEVEL, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_BULK_LEVEL.name, "Bulk Level Threshold");  
	VAR_Setup_Unit(&REG_BULK_LEVEL, 240, 200.0, 0.0, 200.0, 0.0);
	VAR_Update(&REG_BULK_LEVEL, 120, 0, 0);   
    
	 
	VAR_Initialize(&REG_CAL_OIL, 88, 149, 100.0, 100.0, 0x00000004);
	sprintf(REG_CAL_OIL.name, "Cal (Oil Phase)");	
	REG_CAL_OIL.name_r = 341;
	VAR_Setup_Unit(&REG_CAL_OIL, 149, 100.0, 0.0, 100.0, 0.0);
	VAR_Update(&REG_CAL_OIL, 0.0, 0, 0);
	REG_CAL_OIL.vect2 = (int*)Calibrate_OIL;

	 
	VAR_Initialize(&REG_CAL_WATER, 88, 149, 100.0, 100.0, 0x00000004);
	sprintf(REG_CAL_WATER.name, "Cal (Water Phase)");	
	REG_CAL_WATER.name_r = 342;
	VAR_Setup_Unit(&REG_CAL_WATER, 149, 100.0, 0.0, 100.0, 0.0);
	VAR_Update(&REG_CAL_WATER, 0.0, 0, 0);
	REG_CAL_WATER.vect2 = (int*)Calibrate_WATER;
    
     
	VAR_Initialize(&REG_EMULSION_PHASE, 0, 241, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_EMULSION_PHASE.name, "Emulsion Phase");	
	REG_EMULSION_PHASE.name_r = 278;
	VAR_Setup_Unit(&REG_EMULSION_PHASE, 241, 2.0, 0.0, 2.0, 0.0);
	VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);

	 
	VAR_Initialize(&OIL_P0, 83, 58, 100.0, 10000.0, 0x00000002|0x00000004);
	sprintf(OIL_P0.name, "Oil P0");	
	OIL_P0.name_r = 279;
	VAR_Update(&OIL_P0, 0.0, 0, 0);

	 
	VAR_Initialize(&OIL_P1, 0, 245, 100.0, 10000.0, 0x00000002|0x00000004);
	sprintf(OIL_P1.name, "Oil P1");	
	OIL_P1.name_r = 280;
	VAR_Update(&OIL_P1, 0.0, 0, 0);
    
    LOW_SALT_MODE = 0;       
    
	{ 
		 
		VAR_Initialize(&REG_STREAM_SELECT, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
		sprintf(REG_STREAM_SELECT.name, "Stream Select");	
		REG_STREAM_SELECT.name_r = 281;
		VAR_Setup_Unit(&REG_STREAM_SELECT, 240, 60, 1.0, 60, 1.0);
		VAR_Update(&REG_STREAM_SELECT, 1.0, 0, 0);
		REG_STREAM_SELECT.vect2 = (int*)Mirror_From_Stream_Table;

		 
		VAR_Initialize(&REG_SALINITY, 90, 105, 100.0, 100.0, 0);
		sprintf(REG_SALINITY.name, "Salinity");	
		REG_SALINITY.name_r = 282;
		VAR_Setup_Unit(&REG_SALINITY, 105, 30.0, 0.02, 30.0, 0.02);
		VAR_Update(&REG_SALINITY, 0.02, 0, 0);
		REG_SALINITY.vect2 = (int*)Mirror_To_Stream_Table;

		 
		VAR_Initialize(&REG_OIL_ADJ, 88, 149, 100.0, 100.0, 0x00000004);
		sprintf(REG_OIL_ADJ.name, "Adjust (Oil Phase)");	
		REG_OIL_ADJ.name_r = 283;
		VAR_Setup_Unit(&REG_OIL_ADJ, 149, 100.0, -100.0, 100.0, -100.0);
		VAR_Update(&REG_OIL_ADJ, 0.0, 0, 0);
		REG_OIL_ADJ.vect2 = (int*)Mirror_To_Stream_Table;

		 
		VAR_Initialize(&REG_WATER_ADJ, 88, 149, 100.0, 100.0, 0x00000004);
		sprintf(REG_WATER_ADJ.name, "Adjust (Water Phase)");	
		REG_WATER_ADJ.name_r = 284;
		VAR_Setup_Unit(&REG_WATER_ADJ, 149, 100.0, -100.0, 100.0, -100.0);
		VAR_Update(&REG_WATER_ADJ, 0.0, 0, 0);
		REG_WATER_ADJ.vect2 = (int*)Mirror_To_Stream_Table;

		 
		VAR_Initialize(&REG_WATERCUT_ALARM_LO, 88, 149, 100.0, 1000.0, 0x00000004|0x00000002);
		sprintf(REG_WATERCUT_ALARM_LO.name, "Process Lo");	
		REG_WATERCUT_ALARM_LO.name_r = 285;
		VAR_Setup_Unit(&REG_WATERCUT_ALARM_LO, 149, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&REG_WATERCUT_ALARM_LO, -3.0, 0, 0);
		REG_WATERCUT_ALARM_LO.vect2 = (int*)Mirror_To_Stream_Table;

		 
		VAR_Initialize(&REG_WATERCUT_ALARM_HI, 88, 149, 100.0, 1000.0, 0x00000004|0x00000002);
		sprintf(REG_WATERCUT_ALARM_HI.name, "Process Hi");	
		REG_WATERCUT_ALARM_HI.name_r = 286;
		VAR_Setup_Unit(&REG_WATERCUT_ALARM_HI, 149, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&REG_WATERCUT_ALARM_HI, 103.0, 0, 0);
		REG_WATERCUT_ALARM_HI.vect2 = (int*)Mirror_To_Stream_Table;
        
         
		OIL_PHASE_ONLY.val 		= 0; 
		OIL_PHASE_ONLY.vect 	= (int*)Mirror_To_Stream_Table;  
		OIL_PHASE_ONLY.vect2 	= (int*)0;
		WATER_PHASE_ONLY.val 	= 0;         
		WATER_PHASE_ONLY.vect 	= (int*)Mirror_To_Stream_Table; 
		WATER_PHASE_ONLY.vect2 	= (int*)0;
        
         
        BULK_LEVEL_ENABLED.val = 0;
        BULK_LEVEL_ENABLED.vect = (int*)0;
        BULK_LEVEL_ENABLED.vect2 = (int*)0;
        
          
        GAS_ENTRAINED.val 	= 0;
        HSALT.ENABLED.vect2 = (int*)Mirror_To_Stream_Table; 
        GAS_ENTRAINED.vect 	= (int*)Mirror_To_Stream_Table; 
        GAS_ENTRAINED.vect2 = (int*)0;
		
		
   	    VAR_Initialize(&Hsalt_Min_WC, 0, 240, 10.0, 10.0, 0x00000004);
		sprintf(Hsalt_Min_WC.name, "HSALT Min WC");	
		Hsalt_Min_WC.name_r = 288;
		VAR_Setup_Unit(&Hsalt_Min_WC, 57, 90.0, 59.99, 0, 0);
		VAR_Update(&Hsalt_Min_WC, 60.0, 0, 0);
	    Hsalt_Min_WC.vect2 = (int*)0; 
		
	    
		 
	    VAR_Initialize(&HSALT.flow_threshold, 0, 240, 10.0, 10.0, 0x00000004);
		sprintf(HSALT.flow_threshold.name, "Min Flow Rate");	
		HSALT.flow_threshold.name_r = 289;
		VAR_Update(&HSALT.flow_threshold, 0.0, 0, 0);
		HSALT.flow_threshold.vect2 = (int*)Mirror_To_Stream_Table;       
		
		for (i=0;i<60;i++)
		{
			SALINITY[i]  		= REG_SALINITY.calc_val;
			OIL_ADJ[i]   		= REG_OIL_ADJ.calc_val;
			WATER_ADJ[i] 		= REG_WATER_ADJ.calc_val;
			WATER_ALARM_LO[i] 	= REG_WATERCUT_ALARM_LO.calc_val;
			WATER_ALARM_HI[i] 	= REG_WATERCUT_ALARM_HI.calc_val;  
			
			  
			HSALT_ENABLE[i] 		= HSALT.ENABLED.val;				
			GAS_ROUTINE_ENABLE[i] 	= GAS_ENTRAINED.val;	
			
			HSALT_MIN_FLOW[i] 		= HSALT.flow_threshold.calc_val;
			
			stream_bubble_length[i] = bubble_new_length.val;
			stream_pattern_length[i] = pattern_new_length.val;
			stream_boxcar_expire[i] = boxcar_expire_val.val;
			stream_boxcar_expire_minutes[i] = boxcar_expire_val_minutes.val;

			stream_delta_temp[i] = REG_DELTA_TEMP.val;
			
			 
			OIL_PHASE_ONLY_ENABLE[i] 	= OIL_PHASE_ONLY.val;
			WATER_PHASE_ONLY_ENABLE[i] 	= WATER_PHASE_ONLY.val;
			
			      
			LIQ_VALVE_P[i] = AO[1].P.calc_val;
			LIQ_VALVE_I[i] = AO[1].I.calc_val;  
			LIQ_VALVE_D[i] = AO[1].D.calc_val;  
			GAS_VALVE_P[i] = AO[2].P.calc_val;
			GAS_VALVE_I[i] = AO[2].I.calc_val;  
			GAS_VALVE_D[i] = AO[2].D.calc_val;		
		}

		 
		VAR_Initialize(&REG_OIL_INDEX, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(REG_OIL_INDEX.name, "Oil Index");	
		REG_OIL_INDEX.name_r = 290;
		VAR_Setup_Unit(&REG_OIL_INDEX, 244, 1000.0, -1000.0, 1000.0, -1000.0);
		VAR_Update(&REG_OIL_INDEX, 0.0, 0, 0);

		 
		VAR_Initialize(&REG_WATER_INDEX, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(REG_WATER_INDEX.name, "Water Index");	
		REG_WATER_INDEX.name_r = 291;
		VAR_Setup_Unit(&REG_WATER_INDEX, 244, 1000.0, -1000.0, 1000.0, -1000.0);
		VAR_Update(&REG_WATER_INDEX, 0.0, 0, 0);
	  }

	 	 
	{ 
		RTD_CURRENT 	= 0.0002;
		RTD_GAIN 		= 30.59;
		RTD_CAL_LO_OHM 	= 100.0;
		RTD_CAL_LO_V 	= RTD_CAL_LO_OHM * RTD_GAIN * RTD_CURRENT;
		RTD_CAL_HI_OHM 	= 125.0;
		RTD_CAL_HI_V 	= RTD_CAL_HI_OHM * RTD_GAIN * RTD_CURRENT;
		RTD_CAL.val 	= 0;
		RTD_CAL.vect 	= (int*)&Calibrate_RTD; 
		RTD_CAL.vect2 	= (int*)0;
		USE_COR0_TEMP 	= 0;

		 
		VAR_Initialize(&REG_TEMPERATURE_USER_ADJUST, 64, 240, 100.0, 100.0, 0x00000002|0x00000004);     
		sprintf(REG_TEMPERATURE_USER_ADJUST.name, "Temperature Adj");	
		REG_TEMPERATURE_USER_ADJUST.name_r = 292;
		VAR_Update(&REG_TEMPERATURE_USER_ADJUST, 0.0, 0, 0);

		
		VAR_Initialize(&REG_TEMPERATURE_USER, 64, 240, 10.0, 10.0, 0x00000002|0x00000004);     
		sprintf(REG_TEMPERATURE_USER.name, "User Temperature");	
		REG_TEMPERATURE_USER.name_r = 293;
		VAR_Setup_Unit(&REG_WATERCUT_ALARM_LO, 149, 100.0, 0.0, 100.0, 0.0);
		
        
		 
        VAR_Initialize(&REG_TEMPERATURE_AVG, 64, 240, 10.0, 10.0, 0x00000002|0x00000004); 
		sprintf(REG_TEMPERATURE_AVG.name, "Average Temperature");	
		REG_TEMPERATURE_AVG.name_r = 294;
		
		 
		 
		 
		VAR_Initialize(&REG_TEMPERATURE_EXTERNAL, 64, 32, 10.0, 10.0, 0x00000002);
		sprintf(REG_TEMPERATURE_EXTERNAL.name, "Process Temperature");	
		REG_TEMPERATURE_EXTERNAL.name_r = 295;
		VAR_Setup_Unit(&REG_TEMPERATURE_EXTERNAL, 32, 350.0, -50.0, 310, 0);
		VAR_Update(&REG_TEMPERATURE_EXTERNAL, 0.0, 0, 0);
		
		REG_TEMPERATURE_EXTERNAL.vect1 	= (int*)Set_ASCII_Temp_Unit;
		DIO_TEMP_C.val 					= 0;  
		DIO_TEMP_C.vect 				= (int*)Set_Temperature_Unit; 
		DIO_TEMP_C.vect2 				= (int*)0;
		
		Set_Temperature_Unit();

		VAR_Update(&REG_TEMPERATURE_USER, REG_TEMPERATURE_EXTERNAL.val+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);
		VAR_Update(&REG_TEMPERATURE_AVG, REG_TEMPERATURE_EXTERNAL.val+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);                 
	  }                                                                                    

	{ 
		for (i=0;i<12;i++)
		{
			ADC_TRIM_I_0[i] = 0x0000;
			ADC_TRIM_I_1[i] = 0x7FFF;
			ADC_TRIM_F_0[i] = 0.000;

			if (i==10)
			{
				VAR_Initialize(&REG_ADC[i], 64, 32, 10.0, 10.0, 0x00000002);
				VAR_Setup_Unit(&REG_ADC[i], 32, 128, -55, 50.0, 5.0);
				
				ADC_TRIM_I_1[i] = 0x0FFF;
				ADC_TRIM_F_1[i] = 0.0;
				
				if (SA && (HW_VER<0xB7))
					ADC_TRIM_F_1[i] = 2.500;
			}
			else if (i==2)
			{
				VAR_Initialize(&REG_ADC[i], 64, 32, 10.0, 10.0, 0x00000002|0x00000004|0x00000001);
				VAR_Setup_Unit(&REG_ADC[i], 32, 1000, -1000, 1000, -1000);
				
				REG_ADC[i].dampening = 4.0;
				
				if (SA)
				{
					ADC_TRIM_I_1[i] = 0x0FFF;
					ADC_TRIM_F_1[i] = 2.500;
				}
				else
					ADC_TRIM_F_1[i] = 2.048;
				
				TEMPERATURE_TRIM_T1 = 1.0;
				TEMPERATURE_TRIM_T0 = 0.0;
			}
			else if ((i==3) || (i==1) || (i==0) || (i==11))
			{
				VAR_Initialize(&REG_ADC[i], 83, 58, 1000.0, 10000.0, 0x00000004);

				if (i==3)
				{
					VAR_Setup_Unit(&REG_ADC[i], 58, 2.048*6.0, 0, 2.048*6.0, 0);
					
					ADC_TRIM_F_1[i] = 2.048*6.0;
				}
				else
				{
					if (SA)
					{
						VAR_Setup_Unit(&REG_ADC[i], 58, 2.500, 0, 2.500, 0);
						
						ADC_TRIM_I_1[i] = 0x0FFF;
						ADC_TRIM_F_1[i] = 2.500;
					}
					else
					{
						VAR_Setup_Unit(&REG_ADC[i], 58, 2.048*2.5, 0, 2.048*2.5, 0);
						
						ADC_TRIM_F_1[i] = 2.048*2.5;
					}
				}
			}
			else
			{
				VAR_Initialize(&REG_ADC[i], 83, 58, 1000.0, 10000.0, 0x00000004);
				VAR_Setup_Unit(&REG_ADC[i], 58, 2.048, 0, 2.048, 0);
				
				ADC_TRIM_F_1[i] = 2.048;
			}

			VAR_Update(&REG_ADC[i], 0.0, 0, 0);

			switch (i)
			{ 
				case 11:		sprintf(REG_ADC[i].name, "Spare Analog Input"); break;
				case 3:		sprintf(REG_ADC[i].name, "VTUNE"); break;
				case 1:		sprintf(REG_ADC[i].name, "Vinc");  break;
				case 0:		sprintf(REG_ADC[i].name, "Vref");  break;
				case 10:		
					sprintf(REG_ADC[i].name, "Internal Temperature");  
					REG_TEMPERATURE_EXTERNAL.name_r = 296;
				case 2:		
					sprintf(REG_ADC[i].name, "Process Temperature");  	
					REG_ADC[i].name_r = 295;
					break;
				case 9:		sprintf(REG_ADC[i].name, "Analog Input 5");  break;
				case 8:		sprintf(REG_ADC[i].name, "Analog Input 4");  break;
				case 7:		sprintf(REG_ADC[i].name, "Analog Input 3");  break;
				case 6:		sprintf(REG_ADC[i].name, "Analog Input 2");  break;
				case 5:		
					sprintf(REG_ADC[i].name, "Analog Input 1");  	
					REG_ADC[i].name_r = 298;
					break;
				case 4:	sprintf(REG_ADC[i].name, "GNDSEN");  break;
			}
		}

		for (i=0;i<12;i++)
		{
			DAC_TRIM_I_0[i] = 0x0000;
			DAC_TRIM_I_1[i] = 0xFFFF;
			DAC_TRIM_F_0[i] = 0.0;
			DAC_TRIM_F_1[i] = 5.0;

			if ((i>=0) && (i<=4))
			{
				VAR_Initialize(&REG_DAC[i], 83, 58, 1000.0, 10000.0, 0x00000004);
				
				if (SA && (i==0))
				{
					VAR_Setup_Unit(&REG_DAC[i], 58, (1.024*2.0*2.50), 0, (1.024*2.0*2.50), 0);
					DAC_TRIM_I_1[i] = 0x0FFF;
					DAC_TRIM_F_1[i] = (1.024*2.0*2.50);
				}
				else
					VAR_Setup_Unit(&REG_DAC[i], 58, 5.0, 0, 5.0, 0);
			}
			else if ((i>=5) && (i<=8)) 
			{
				VAR_Initialize(&REG_DAC[i], 84, 39, 1000.0, 10000.0, 0x00000004);
				VAR_Setup_Unit(&REG_DAC[i], 39, 20.0, 0, 20.0, 0);
				
				DAC_TRIM_I_1[i] = 32767;
				DAC_TRIM_F_1[i] = 20.0;
			}
			else
			{
				VAR_Initialize(&REG_DAC[i], 83, 58, 1000.0, 10000.0, 0x00000004);
				
				if ((i==9) || (i==10))
				{
					if (SA && (i==10))
					{
						VAR_Setup_Unit(&REG_DAC[i], 58, (1.024*2.0*5.99), 0, (1.024*2.0*5.99), 0);
						DAC_TRIM_I_1[i] = 0x0FFF;
						DAC_TRIM_F_1[i] = (1.024*2.0*5.99);
					}
					else
					{
						VAR_Setup_Unit(&REG_DAC[i], 58, 5.0*2.0, 0, 5.0*2.0, 0);
						DAC_TRIM_F_1[i] = 5.0*2.0;
					}
				}
				else
					VAR_Setup_Unit(&REG_DAC[i], 58, 5.0, 0, 5.0, 0);
			}

			VAR_Update(&REG_DAC[i], 0.0, 0, 0);

			switch (i)
			{ 
				case 10:		sprintf(REG_DAC[i].name, "VTUNE"); break;
				case 11:	sprintf(REG_DAC[i].name, "Tune Select"); break;
				case 9:	sprintf(REG_DAC[i].name, "OSC Select"); break;
				case 0:		
					sprintf(REG_DAC[i].name, "Analog Output 1");	
					REG_DAC[i].name_r = 299;
					break;
				case 1:		sprintf(REG_DAC[i].name, "Analog Output 2"); break;
				case 2:		sprintf(REG_DAC[i].name, "Analog Output 3"); break;
				case 3:		sprintf(REG_DAC[i].name, "Analog Output 4"); break;
				case 4:		sprintf(REG_DAC[i].name, "Analog Output 5"); break;
				case 5:		sprintf(REG_DAC[i].name, "Analog Output 6"); break;
				case 6:		sprintf(REG_DAC[i].name, "Analog Output 7"); break;
				case 7:		sprintf(REG_DAC[i].name, "Analog Output 8"); break;
				case 8:		sprintf(REG_DAC[i].name, "Analog Output 9"); break;
			}
		}
	  }

	EXT_ANALOG_OUT = 0;

	for (i=0;i<9;i++)
	{
		 
		VAR_Initialize(&AO[i].CURRENT, 84, 39, 100.0, 100.0, 0x00000001|0x00000004);
		sprintf(AO[i].CURRENT.name, "Analog Out %d", i+1);	
		AO[i].CURRENT.name_r = 300;
		VAR_Setup_Unit(&AO[i].CURRENT, 39, 20.0, 4.0, 20.0, 4.0);
		VAR_Update(&AO[i].CURRENT, 4.0, 0, 0);

		 
		VAR_Initialize(&AO[i].CURRENT_PERCENT_OF_RANGE, 81, 57, 100.0, 100.0, 0x00000004);
		sprintf(AO[i].CURRENT_PERCENT_OF_RANGE.name, "Analog Out %% %d", i+1);	
		AO[i].CURRENT_PERCENT_OF_RANGE.name_r = 300;
		VAR_Setup_Unit(&AO[i].CURRENT_PERCENT_OF_RANGE, 57, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&AO[i].CURRENT_PERCENT_OF_RANGE, 0.0, 0, 0);

		 
		VAR_Initialize(&AO[i].LRV, 81, 57, 100.0, 10000.0, 0x00000004|0x00000002);
		sprintf(AO[i].LRV.name, "AO %d LRV", i+1);	
		AO[i].LRV.name_r = 301;
		VAR_Update(&AO[i].LRV, 0.0, 0, 0);

		 
		VAR_Initialize(&AO[i].URV, 81, 57, 100.0, 10000.0, 0x00000004|0x00000002);
		sprintf(AO[i].URV.name, "AO %d URV", i+1);	
		AO[i].URV.name_r = 302;
		VAR_Update(&AO[i].URV, 100.0, 0, 0);

		 
		VAR_Initialize(&AO[i].TRIM_MIN, 250, 250, 1.0, 1.0, 0x00000004);
		
		if ((i>=5) && (i<=8)) 
			VAR_Setup_Unit(&AO[i].TRIM_MIN, 250, 32767.0, 0.0, 32767.0, 0.0);
		else if (SA) 
			VAR_Setup_Unit(&AO[i].TRIM_MIN, 250, 4095.0, 0.0, 4095.0, 0.0);
		else 
			VAR_Setup_Unit(&AO[i].TRIM_MIN, 250, 65535.0, 0.0, 65535.0, 0.0);
		
		sprintf(AO[i].URV.name, "AO %d TRIM MIN", i+1);	
		AO[i].URV.name_r = 303;
		VAR_Update(&AO[i].TRIM_MIN, 0.0, 0, 0);

		 
		VAR_Initialize(&AO[i].TRIM_MAX, 250, 250, 1.0, 1.0, 0x00000004);
		
		if ((i>=5) && (i<=8)) 
			VAR_Setup_Unit(&AO[i].TRIM_MAX, 250, 32767.0, 0.0, 32767.0, 0.0);
		else if (SA) 
			VAR_Setup_Unit(&AO[i].TRIM_MAX, 250, 4095.0, 0.0, 4095.0, 0.0);
		else 
			VAR_Setup_Unit(&AO[i].TRIM_MAX, 250, 65535.0, 0.0, 65535.0, 0.0);
		
		sprintf(AO[i].URV.name, "AO %d TRIM MAX", i+1);	
		AO[i].URV.name_r = 304;
		
		 
		if ((i>=5) && (i<=8)) 
			VAR_Update(&AO[i].TRIM_MAX, 32767.0, 0, 0);
		else if (SA) 
			VAR_Update(&AO[i].TRIM_MAX, 4095.0, 0, 0);
		else 
			VAR_Update(&AO[i].TRIM_MAX, 65535.0, 0, 0);

		AO[i].TRIM_MIN_C 	 = VAR_Get_Unit_Param(&AO[i].CURRENT, 0x00060000, 0, 0);
		AO[i].TRIM_MAX_C 	 = VAR_Get_Unit_Param(&AO[i].CURRENT, 0x00050000, 0, 0);
		AO[i].MINSPAN 	 	 = 0;
		AO[i].MANUAL 	 	 = 0;
		AO[i].MANUAL_PERCENT = 0.0;
		AO[i].REVERSE 		 = 0;
		AO[i].ALARM_SELECT 	 = 0;


		 
		VAR_Initialize(&AO[i].P, 0, 240, 10.0, 1000.0, 0x00000002|0x00000004);
		VAR_Update(&AO[i].P, 0.1, 0, 0);   
		
		if ((i==1)||(i==2))
		{
			AO[i].P.vect1 = (int*)Reset_PID_Bias; 
			AO[i].P.vect2 = (int*)Mirror_To_Stream_Table;
		}
	    
	    VAR_Initialize(&AO[i].I, 0, 240, 10.0, 1000.0, 0x00000002|0x00000004);
		VAR_Update(&AO[i].I, 1.0, 0, 0);
	    
		if ((i==1)||(i==2))
		{
			AO[i].I.vect1 = (int*)Reset_PID_Bias; 
			AO[i].I.vect2 = (int*)Mirror_To_Stream_Table;
		}
	    
	    VAR_Initialize(&AO[i].D, 0, 240, 10.0, 1000.0, 0x00000002|0x00000004);
		VAR_Update(&AO[i].D, 0.0, 0, 0);
		
		if ((i==1)||(i==2))
		{
			AO[i].D.vect1 = (int*)Reset_PID_Bias; 
			AO[i].D.vect2 = (int*)Mirror_To_Stream_Table; 
		}
	    
		AO[i].PID_setpoint 			= 0.0;
		AO[i].PID_input 			= 0.0;
		AO[i].PID_fail 				= 1;
		AO[i].PID_enable_failsafe 	= 1;
		AO[i].v.val 				= -1;
		AO[i].class.val 			= 81;
		AO[i].class.vect 			= (int*)Set_Units; 
		AO[i].unit.val 				= 57;
		AO[i].unit.vect 			= (int*)Set_Units; 
	}

	AO[0].v.vect = (int*)Set_Class_Units_AO1;
	AO[1].v.vect = (int*)Set_Class_Units_AO2;
	AO[2].v.vect = (int*)Set_Class_Units_AO3;
	AO[3].v.vect = (int*)Set_Class_Units_AO4;
	AO[4].v.vect = (int*)Set_Class_Units_AO5;
	AO[5].v.vect = (int*)Set_Class_Units_AO6;
	AO[6].v.vect = (int*)Set_Class_Units_AO7;
	AO[7].v.vect = (int*)Set_Class_Units_AO8;
	AO[8].v.vect = (int*)Set_Class_Units_AO9; 
	


	for (i=0;i<5;i++)
	{
		 
		VAR_Initialize(&AI[i].CURRENT, 84, 39, 100.0, 100.0, 0x00000001|0x00000004|0x00000002);
		sprintf(AI[i].CURRENT.name, "Analog In %d", i+1);	
		AI[i].CURRENT.name_r = 305;
		VAR_Setup_Unit(&AI[i].CURRENT, 39, 20.0, 4.0, 20.0, 4.0);
		VAR_NaN(&AI[i].CURRENT);

		 
		VAR_Initialize(&AI[i].CURRENT_PERCENT_OF_RANGE, 81, 57, 100.0, 100.0, 0x00000004|0x00000002);
		sprintf(AI[i].CURRENT_PERCENT_OF_RANGE.name, "Analog In %% %d", i+1);	
		AI[i].CURRENT_PERCENT_OF_RANGE.name_r = 305;
		VAR_Setup_Unit(&AI[i].CURRENT_PERCENT_OF_RANGE, 57, 100.0, 0.0, 100.0, 0.0);
		VAR_NaN(&AI[i].CURRENT_PERCENT_OF_RANGE);

		 
		VAR_Initialize(&AI[i].VALUE, 81, 57, 100.0, 100.0, 0x00000004|0x00000002);
		sprintf(AI[i].VALUE.name, "AI %d VALUE", i+1);	
		AI[i].VALUE.name_r = 306;
		VAR_NaN(&AI[i].VALUE);

		 
		VAR_Initialize(&AI[i].LRV, 81, 57, 100.0, 10000.0, 0x00000004|0x00000002);
		sprintf(AI[i].LRV.name, "AI %d LRV", i+1);	
		AI[i].LRV.name_r = 307;
		VAR_Update(&AI[i].LRV, 0.0, 0, 0);

		 
		VAR_Initialize(&AI[i].URV, 81, 57, 100.0, 10000.0, 0x00000004|0x00000002);
		sprintf(AI[i].URV.name, "AI %d URV", i+1);	
		AI[i].URV.name_r = 308;
		VAR_Update(&AI[i].URV, 100.0, 0, 0);

		 
		VAR_Initialize(&AI[i].TRIM_MIN, 250, 250, 1.0, 1.0, 0x00000002);
		VAR_Setup_Unit(&AI[i].TRIM_MIN, 250, 65535.0, 0.0, 65535.0, 0.0);
		sprintf(AI[i].URV.name, "AI %d TRIM MIN", i+1);	
		AI[i].URV.name_r = 309;
		VAR_Update(&AI[i].TRIM_MIN, 0.0, 0, 0);

		 
		VAR_Initialize(&AI[i].TRIM_MAX, 250, 250, 1.0, 1.0, 0x00000004);
		VAR_Setup_Unit(&AI[i].TRIM_MAX, 250, 65535.0, 0.0, 65535.0, 0.0);
		sprintf(AI[i].URV.name, "AI %d TRIM MAX", i+1);	
		AI[i].URV.name_r = 310;
		VAR_Update(&AI[i].TRIM_MAX, 32767.0, 0, 0);

		AI[i].TRIM_MIN_C 	= VAR_Get_Unit_Param(&AI[i].CURRENT, 0x00060000, 0, 0);
		AI[i].TRIM_MAX_C 	= VAR_Get_Unit_Param(&AI[i].CURRENT, 0x00050000, 0, 0);
		AI[i].v.val 		= 33+i;
		AI[i].class.val 	= 81;
		AI[i].class.vect 	= (int*)Set_Units;
		AI[i].unit.val 		= 57;
		AI[i].unit.vect 	= (int*)Set_Units;
	}

	AI[0].v.vect = (int*)Set_Class_Units_AI1;
	AI[1].v.vect = (int*)Set_Class_Units_AI2;
	AI[2].v.vect = (int*)Set_Class_Units_AI3;
	AI[3].v.vect = (int*)Set_Class_Units_AI4;
	AI[4].v.vect = (int*)Set_Class_Units_AI5;
	
	
	
	
	BEGIN_ALFAT_LOGGING.val 	= 0;		
    BEGIN_ALFAT_LOGGING.vect 	= (int*)Begin_Alfat_Logging;
    BEGIN_ALFAT_LOGGING.vect2	= (int*)0;
	
	VAR_Initialize(&REG_ALFAT_LOG_PERIOD, 250, 250, 1.0, 1.0, 0x00000004);
	VAR_Setup_Unit(&AI[i].TRIM_MIN, 250, 120.0, 2, 120.0, 2); 
	VAR_Update(&REG_ALFAT_LOG_PERIOD, 10, 0, 0);
	REG_ALFAT_LOG_PERIOD.vect1 	= (int*)0;
    REG_ALFAT_LOG_PERIOD.vect2	= (int*)Alfat_Change_Log_Period;
	
	
	 
#line 800
	ALFAT_LOG_DAY = 0;

	ALFAT_USB_DETECTED.val 	= 0;
    ALFAT_USB_DETECTED.vect 	= (int*)0;
    ALFAT_USB_DETECTED.vect2	= (int*)0;
	
	ALFAT_USB_MOUNTED.val 	= 0;
    ALFAT_USB_MOUNTED.vect 	= (int*)0;
    ALFAT_USB_MOUNTED.vect2	= (int*)0;
	
	LOG_STATUS = (83); 
	
	{ 
#line 818
		for (i=0;i<5;i++)
		{
			VAR_Initialize(&REG_LOCK[i], 0, 240, 1.0, 1.0, 0x00000004|0x00000100);

			switch(i)
			{
				case 0:
				{
					sprintf(REG_LOCK[i].name, "User Lock"); 	
					REG_LOCK[i].name_r = 311;
					break;
				}
                case 1:
				{
					sprintf(REG_LOCK[i].name, "Factory Lock"); 	
					REG_LOCK[i].name_r = 312;
					break;
				}
                case 2:
				{
					sprintf(REG_LOCK[i].name, "Write-Protect Unlock"); 	
					REG_LOCK[i].name_r = 313;
					break;
				}
                case 3:
				{                                                            
					sprintf(REG_LOCK[i].name, "Access Tech Mode"); 	
					REG_LOCK[i].name_r = 314;
					break;
				}                                
				case 4:
				{                                                            
					sprintf(REG_LOCK[i].name, "Heuristic Salt Routine Lock"); 	
					REG_LOCK[i].name_r = 315;
					break;
				}
			}

			VAR_Setup_Unit(&REG_LOCK[i], 240, 99999, 0, 99999, 0);
			VAR_Update(&REG_LOCK[i], 0.0, 0, 0);
			
			REG_PW[i] 			= 1357; 
			DIO_LOCK[i].val  	= 1;
			DIO_LOCK[i].vect 	= (int*)0; 
			DIO_LOCK[i].vect2 	= (int*)0;    
		}
        
		DIO_LOCK[0].val		= 0;
		REG_LOCK[0].vect2	= (int*)UnLock_P0;
		DIO_LOCK[0].vect	= (int*)Submit_Write_CFG_USER;  
		REG_PW[1] 			= 1343;							     
		REG_LOCK[1].vect2	= (int*)UnLock_P1;
		REG_LOCK[2].vect2	= (int*)UnLock_P2;
		REG_LOCK[3].vect2	= (int*)UnLock_P3;
	    REG_LOCK[4].vect2	= (int*)UnLock_P4;	   			  
	    DIO_LOCK[4].vect	= (int*)Submit_Write_CFG_USER;    
	}

	NaN_val		= 0.0;
	NaN_val_flt = 0x7FA00000;
	NaN_val_int = 0;
	SN_PIPE 	= 0;
	FINAL_ASSY 	= 0;
	SN_DC_BOARD = 0;
	SN_OSC 		= 0;
	uP.SNUM 	= 0;
	uP.ADDR 	= 0xA2;	
	
	if (SA)
	{
		uP.BNUM = 73;
		uP.REV  = '';
	}
	else
	{
		uP.BNUM = 66;
		uP.REV  = '';
	}
	
	uP.MONTH 	= 0;
	uP.DAY 		= 0;
	uP.YEAR 	= 0;
	COMM.SNUM 	= 0;
	COMM.ADDR 	= 0xA4;	
	
	if (SA)
	{
		COMM.BNUM = 0;
		COMM.REV = '';
	}
	else
	{
		COMM.BNUM = 67;
		COMM.REV = '';
	}
	
	COMM.MONTH 		= 0;
	COMM.DAY 		= 0;
	COMM.YEAR 		= 0;
	ANALYZER.SNUM 	= 0;
	ANALYZER.ADDR 	= 0xA6;	
	
	if (SA)
	{
		ANALYZER.BNUM = 55;
		ANALYZER.REV = '';
	}
	else
	{
		ANALYZER.BNUM = 68;
		ANALYZER.REV = 'A';
	}
	
	ANALYZER.MONTH 	= 0;
	ANALYZER.DAY 	= 0;
	ANALYZER.YEAR 	= 0;
	POWER.SNUM 		= 0;
	POWER.ADDR 		= 0xA8;	
	
	if (SA)
	{
		POWER.BNUM = 0;
		POWER.REV = '';
	}
	else
	{
		POWER.BNUM = 69;
		POWER.REV = '';
	}
	
	POWER.MONTH 	= 0;
	POWER.DAY 		= 0;
	POWER.YEAR 		= 0;
	ANALOGIO.SNUM 	= 0;
	ANALOGIO.ADDR 	= 0xAA;	
	
	if (SA)
	{
		ANALOGIO.BNUM = 56;
		ANALOGIO.REV = '';
	}
	else
	{
		ANALOGIO.BNUM = 70;
		ANALOGIO.REV = 'A';
	}
	
	ANALOGIO.MONTH 	= 0;
	ANALOGIO.DAY 	= 0;
	ANALOGIO.YEAR 	= 0;
	DISPLAY.SNUM 	= 0;
	DISPLAY.ADDR 	= 0xAC;	
	
	if (SA)
	{
		DISPLAY.BNUM = 0;
		DISPLAY.REV = '';
	}
	else
	{
		DISPLAY.BNUM = 71;
		DISPLAY.REV = 'A';
	}
	
	DISPLAY.MONTH 		= 0;
	DISPLAY.DAY 		= 0;
	DISPLAY.YEAR 		= 0;
	MOTHERBOARD.SNUM 	= 0;
	MOTHERBOARD.ADDR 	= 0xAE;	
	
	if (SA)
	{
		MOTHERBOARD.BNUM = 0;
		MOTHERBOARD.REV = '';
	}
	else
	{
		MOTHERBOARD.BNUM = 72;
		MOTHERBOARD.REV = '';
	}
	
	MOTHERBOARD.MONTH 	= 0;
	MOTHERBOARD.DAY 	= 0;
	MOTHERBOARD.YEAR 	= 0;
	
	for (i=0;i<20;i++)
		REG_USER_DEFINE[i] = 0;
	
	SIM_TEMPERATURE_EXTERNAL = 0;

	for (i=0;i<4;i++)
	{
		SIM_VINC[i] = 0;
		SIM_VREF[i] = 0;
		SIM_FREQ[i] = 0;
		SIM_VTUNE[i] = 0;
		VT_SELECT = i;

		 
		VAR_Initialize(&REG_VINC[i], 83, 58, 1000.0, 10000.0, 0x00000004);
		sprintf(REG_VINC[i].name, "Vinc %d", i+1);
		
		if (SA) 
			VAR_Setup_Unit(&REG_VINC[i], 58, 2.500, 0, 2.500, 0);	
		else 
			VAR_Setup_Unit(&REG_VINC[i], 58, 2.048*2.5, 0, 2.048*2.5, 0);	
		
		VAR_Update(&REG_VINC[i], 0.0, 0, 0);

		 
		VAR_Initialize(&REG_VREF[i], 83, 58, 1000.0, 10000.0, 0x00000004);
		sprintf(REG_VREF[i].name, "Vref %d", i+1);
		
		if (SA) 
			VAR_Setup_Unit(&REG_VREF[i], 58, 2.500, 0, 2.500, 0);
		else 
			VAR_Setup_Unit(&REG_VREF[i], 58, 2.048*2.5, 0, 2.048*2.5, 0);	
		
		VAR_Update(&REG_VREF[i], 0.0, 0, 0);

		 
		VAR_Initialize(&REG_VTUNE[i], 83, 58, 1000.0, 10000.0, 0x00000004);
		sprintf(REG_VTUNE[i].name, "VTUNE %d", i+1);
		
		if (SA)
			VAR_Setup_Unit(&REG_VTUNE[i], 58, (1.024*2.0*5.99), 0, (1.024*2.0*5.99), 0);
		else 
			VAR_Setup_Unit(&REG_VTUNE[i], 58, 5.0*6.0, 0, 5.0*6.0, 0);
		
		VAR_Update(&REG_VTUNE[i], 0.0, 0, 0);

		 
		VAR_Initialize(&REG_VTUNE_SET[i], 83, 58, 1000.0, 10000.0, 0x00000004);
		sprintf(REG_VTUNE_SET[i].name, "VTUNE SET %d", i+1);
		
		if (SA)
			VAR_Setup_Unit(&REG_VTUNE_SET[i], 58, (1.024*2.0*5.99), 0, (1.024*2.0*5.99), 0);
		else 
			VAR_Setup_Unit(&REG_VTUNE_SET[i], 58, 5.0*6.0, 0, 5.0*6.0, 0);
		
		VAR_Update(&REG_VTUNE_SET[i], 0.0, 0, 0);

		 
		VAR_Initialize(&REG_FREQ[i], 80, 244, 10.0, 1000.0, 0x00000001);
		sprintf(REG_FREQ[i].name, "Frequency %d", i+1);	
		REG_FREQ[i].name_r = 316;
		VAR_Setup_Unit(&REG_FREQ[i], 244, 1000.0, 0.0, 1001.0, -1.0);
		VAR_Update(&REG_FREQ[i], 0.0, 0, 0);
		
		REG_FREQ[i].dampening 	= 0.0;
		EXP_FREQ[i] 			= 0.0;
		ENABLED[i] 				= 1;
		OSC[i] 					= 0;
	}

	FREQ_FACTOR = 1.0;
	OSC[2] 		= 1;
	OSC[3] 		= 1;

	
	VAR_Initialize(&REG_FREQ_O, 80, 244, 10.0, 1000.0, 0x00000004|0x00000002);
	sprintf(REG_FREQ_O.name, "Oil Frequency");	
	REG_FREQ_O.name_r = 317;
	VAR_Update(&REG_FREQ_O, 0.0, 0, 0);


	 
	VAR_Initialize(&REG_VINC_O, 83, 58, 1000.0, 10000.0, 0x00000004|0x00000002);
	sprintf(REG_VINC_O.name, "Vinc Oil");
	VAR_Update(&REG_VINC_O, 0.0, 0, 0);

	 
	VAR_Initialize(&REG_VREF_O, 83, 58, 1000.0, 10000.0, 0x00000004|0x00000002);
	sprintf(REG_VREF_O.name, "Vref Oil");
	VAR_Update(&REG_VREF_O, 0.0, 0, 0);

	
	VAR_Initialize(&REG_FREQ_W, 80, 244, 10.0, 1000.0, 0x00000004|0x00000002);
	sprintf(REG_FREQ_W.name, "Water Frequency");	
	REG_FREQ_W.name_r = 318;
	VAR_Update(&REG_FREQ_W, 0.0, 0, 0);

	 
	VAR_Initialize(&REG_VINC_W, 83, 58, 1000.0, 10000.0, 0x00000004|0x00000002);
	sprintf(REG_VINC_W.name, "Vinc Water");
	VAR_Update(&REG_VINC_W, 0.0, 0, 0);

	 
	VAR_Initialize(&REG_VREF_W, 83, 58, 1000.0, 10000.0, 0x00000004|0x00000002);
	sprintf(REG_VREF_W.name, "Vref Water");
	VAR_Update(&REG_VREF_W, 0.0, 0, 0);

	GATE_TIME	= 1.0;
	PRESCALE	= 64.0;

	{ 
		 
		VAR_Initialize(&REG_FREQ_OIL_LO, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(REG_FREQ_OIL_LO.name, "Oil Freq Lo");	
		REG_FREQ_OIL_LO.name_r = 319;
		VAR_Setup_Unit(&REG_FREQ_OIL_LO, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_FREQ_OIL_LO, 0.0, 0, 0);

		 
		VAR_Initialize(&REG_FREQ_OIL_HI, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(REG_FREQ_OIL_HI.name, "Oil Freq Hi");	
		REG_FREQ_OIL_HI.name_r = 320;
		VAR_Setup_Unit(&REG_FREQ_OIL_HI, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_FREQ_OIL_HI, 1000.0, 0, 0);

		 
		VAR_Initialize(&REG_FREQ_WATER_LO, 80,  244, 10.0, 1000.0, 0x00000004);
		sprintf(REG_FREQ_WATER_LO.name, "Water Freq Lo");	
		REG_FREQ_WATER_LO.name_r = 321;
		VAR_Setup_Unit(&REG_FREQ_WATER_LO, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_FREQ_WATER_LO, 0.0, 0, 0);

		 
		VAR_Initialize(&REG_FREQ_WATER_HI, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(REG_FREQ_WATER_HI.name, "Water Freq Hi");	
		REG_FREQ_WATER_HI.name_r = 322;
		VAR_Setup_Unit(&REG_FREQ_WATER_HI, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_FREQ_WATER_HI, 1000.0, 0, 0);
        
         
		 
        VAR_Initialize(&REG_LOWSALT_THRESHOLD, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(REG_LOWSALT_THRESHOLD.name, "Frequency Threshold");	
		REG_LOWSALT_THRESHOLD.name_r = 323;
		VAR_Setup_Unit(&REG_LOWSALT_THRESHOLD, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&REG_LOWSALT_THRESHOLD, 0.0, 0, 0);
		
		
		VAR_Initialize(&EXTENDED_FW_VERSION_ENABLE, 250, 250, 1.0, 1.0, 0x00000004|0x00000002);
		sprintf(EXTENDED_FW_VERSION_ENABLE.name, "Extended FW Enable");	
		VAR_Update(&EXTENDED_FW_VERSION_ENABLE, 123.00, 0, 0); 
		EXTENDED_FW_VERSION_ENABLE;  
		        
		
		 
		
		
	 
		 
#line 1192
		VAR_Initialize(&Plot_Limit_Water_Freq_Low, 80, 244,  10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Water_Freq_Low.name, "W Freq Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Water_Freq_Low, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&Plot_Limit_Water_Freq_Low, 100.0, 0, 0);
		Plot_Limit_Water_Freq_Low.vect2 = (int*)Freq_water_plot_min;
	
		
		VAR_Initialize(&Plot_Limit_Water_Freq_High, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Water_Freq_High.name, "W Freq Plot High");
		VAR_Setup_Unit(&Plot_Limit_Water_Freq_High, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&Plot_Limit_Water_Freq_High, 300.0, 0, 0);
		Plot_Limit_Water_Freq_High.vect2 = (int*)Freq_water_plot_max;
		
		
		VAR_Initialize(&Plot_Limit_Oil_Freq_Low, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Oil_Freq_Low.name, "Oil Freq Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Oil_Freq_Low, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&Plot_Limit_Oil_Freq_Low, 80.0, 0, 0);
		Plot_Limit_Oil_Freq_Low.vect2 = (int*)Freq_oil_plot_min;
		
		
		VAR_Initialize(&Plot_Limit_Oil_Freq_High, 80, 244, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Oil_Freq_High.name, "Oil Freq Plot High");
		VAR_Setup_Unit(&Plot_Limit_Oil_Freq_High, 244, 1000.0, 0.0, 1000.0, 0.0);
		VAR_Update(&Plot_Limit_Oil_Freq_High, 600.0, 0, 0);
		Plot_Limit_Oil_Freq_High.vect2 = (int*)Freq_oil_plot_max;
					
		
		VAR_Initialize(&Plot_Limit_Temp_Low, 64, 32, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Temp_Low.name, "Temp Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Temp_Low, 32, 400.0, 0.0, 400.0, 0.0);
		VAR_Update(&Plot_Limit_Temp_Low, 0.0, 0, 0);
		Plot_Limit_Temp_Low.vect2 = (int*)Temp_plot_min;
		
		
		VAR_Initialize(&Plot_Limit_Temp_High, 64, 32, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Temp_High.name, "Temp Plot High");
		VAR_Setup_Unit(&Plot_Limit_Temp_High, 32, 400.0, 0.0, 400.0, 0.0);
		VAR_Update(&Plot_Limit_Temp_High, 100.0, 0, 0);
		Plot_Limit_Temp_High.vect2 = (int*)Temp_plot_max;
		
		
		VAR_Initialize(&Plot_Limit_Watercut_Low, 81, 57, 10.0, 1000.0, 0x00000004);
		sprintf( Plot_Limit_Watercut_Low.name, "WC Plot Low");
		VAR_Setup_Unit(& Plot_Limit_Watercut_Low, 57, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&Plot_Limit_Watercut_Low, 0.0, 0, 0);
		Plot_Limit_Watercut_Low.vect2 = (int*)Watercut_plot_min;
		
		
		VAR_Initialize(&Plot_Limit_Watercut_High, 81, 57, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Watercut_High.name, "WC Plot High");
		VAR_Setup_Unit(&Plot_Limit_Watercut_High, 57, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&Plot_Limit_Watercut_High, 100.0, 0, 0);
		Plot_Limit_Watercut_High.vect2 = (int*)Watercut_plot_max;
		
		
		VAR_Initialize(&Plot_Limit_Oil_RP_Low, 83, 58	, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Oil_RP_Low.name, "Pr Oil Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Oil_RP_Low, 58, 10.0, 0.0, 10.0, 0.0);
		VAR_Update(&Plot_Limit_Oil_RP_Low, 0.0, 0, 0);
		Plot_Limit_Oil_RP_Low.vect2 = (int*)Oil_RP_plot_min;
	
		
		VAR_Initialize(&Plot_Limit_Oil_RP_High, 83, 58, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Oil_RP_High.name, "Pr Oil Plot High");
		VAR_Setup_Unit(&Plot_Limit_Oil_RP_High, 58, 10.0, 0.0, 10.0, 0.0);
		VAR_Update(&Plot_Limit_Oil_RP_High, 5.0, 0, 0);
		Plot_Limit_Oil_RP_High.vect2 = (int*)Oil_RP_plot_max;		
		
		
		VAR_Initialize(&Plot_Limit_Water_RP_Low, 83, 58, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Water_RP_Low.name, "Pr Water Plot Low");
		VAR_Setup_Unit(&Plot_Limit_Water_RP_Low, 58, 10.0, 0.0, 10.0, 0.0);
		VAR_Update(&Plot_Limit_Water_RP_Low, 0.0, 0, 0);
		Plot_Limit_Water_RP_Low.vect2 = (int*)Water_RP_plot_min;	
		
		
		VAR_Initialize(&Plot_Limit_Water_RP_High, 83, 58, 10.0, 1000.0, 0x00000004);
		sprintf(Plot_Limit_Water_RP_High.name, "Pr Water Plot High");
		VAR_Setup_Unit(&Plot_Limit_Water_RP_High, 58, 10.0, 0.0, 10.0, 0.0);
		VAR_Update(&Plot_Limit_Water_RP_High, 5.0, 0, 0);
		Plot_Limit_Water_RP_High.vect2 = (int*)Water_RP_plot_max;
		
		 
	}
	
	


	{
		 
		VAR_Initialize(&SYS_log_sample_period, 70, 51, 1.0, 1.0, 0x00000004|0x00000100);
		sprintf(SYS_log_sample_period.name, "Logging Period");
		VAR_Setup_Unit(&SYS_log_sample_period, 51, 86400, 1, 86400, 1);
		VAR_Update(&SYS_log_sample_period, 60.0, 0, 0);
		SYS_log_sample_period.vect2 = (int*)LogNow;
		SYS_LOG_ENABLED = 0x01;
		
		 
		VAR_Initialize(&USER_log_sample_period, 70, 51, 1.0, 1.0, 0x00000004|0x00000100);
		sprintf(USER_log_sample_period.name, "Logging Period User");
		VAR_Setup_Unit(&USER_log_sample_period, 51, 86400, 1, 86400, 1);
		VAR_Update(&USER_log_sample_period, 60.0, 0, 0);
		USER_log_sample_period.vect2 = (int*)LogNowUser;

		USER_LOG_ENABLED = 0;
		USER_LOG_EVENT 	 = 0;
		SYS_LOG_EVENT 	 = 0;

		for (i=0;i<30;i++)
			LOG_VAR_SEL[i] = -1;
		
		LOG_VAR_SEL[0] 	= 0;
		LOG_VAR_SEL[1] 	= 1;
		LOG_VAR_SEL[2] 	= 2;
		LOG_VAR_SEL[3] 	= 31;
		LOG_VAR_SEL[4] 	= 33;
		LOG_VAR_SEL[5] 	= 46;
		LOG_VAR_SEL[6] 	= 49;
		LOG_VAR_SEL[7] 	= 52;
		LOG_VAR_SEL[8] 	= 53;
		LOG_VAR_SEL[9] 	= 54;
		LOG_VAR_SEL[10] = 104;
		LOG_VAR_SEL[11] = 106;
		LOG_VAR_SEL[12] = 109;
		LOG_VAR_SEL[13] = 111;
		LOG_VAR_SEL[14] = 113;
		LOG_VAR_SEL[15] = 115;
		LOG_VAR_SEL[16] = 5;
		LOG_VAR_SEL[17] = 7;
		LOG_VAR_SEL[18] = 8;
		LOG_VAR_SEL[19] = 10;
	}

	 
	VAR_Initialize(&REG_osc_settle_short, 70, 51, 100.0, 100.0, 0x00000004);
	sprintf(REG_osc_settle_short.name, "Short Osc Settle");
	VAR_Setup_Unit(&REG_osc_settle_short, 51, 10.0, 0.01, 10.0, 0.01);
	VAR_Update(&REG_osc_settle_short, 0.05, 0, 0);

	 
	VAR_Initialize(&REG_osc_settle_long, 70, 51, 100.0, 100.0, 0x00000004);
	sprintf(REG_osc_settle_long.name, "Long Osc Settle");
	VAR_Setup_Unit(&REG_osc_settle_long, 51, 10.0, 0.01, 10.0, 0.01);
	VAR_Update(&REG_osc_settle_long, 0.25, 0, 0);

	ANALYZER_MODE.val  = 254;
	ANALYZER_MODE.vect = (int*)Reset_IDEC; 

	 
	VAR_Initialize(&DEMO_ANALYZER_MODE, 250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	sprintf(DEMO_ANALYZER_MODE.name, "Demo Analyzer Mode");
	VAR_Update(&DEMO_ANALYZER_MODE, 6, 0, 0);
	DEMO_ANALYZER_MODE.vect2 = (int*)DEMO_Init;
	DEMO = 0;

    { 
		 
		VAR_Initialize(&CCM_VESSEL_LEVEL[0], 0, 57, 100.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_VESSEL_LEVEL[0].name, "CCM Vessel1 Level");
		VAR_Update(&CCM_VESSEL_LEVEL[0], 0.0, 0, 0);
        
		 
		VAR_Initialize(&CCM_VESSEL_PRESSURE[0], 65, 6, 1.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_VESSEL_PRESSURE[0].name, "CCM Vessel1 Pressure");
		VAR_Update(&CCM_VESSEL_PRESSURE[0], 0.0, 0, 0);

		 
		VAR_Initialize(&CCM_VESSEL_LEVEL[1], 0, 57, 100.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_VESSEL_LEVEL[1].name, "CCM Vessel2 Level");
		VAR_Update(&CCM_VESSEL_LEVEL[1], 0.0, 0, 0);

		 
		VAR_Initialize(&CCM_VESSEL_PRESSURE[1], 65, 6, 1.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_VESSEL_PRESSURE[1].name, "CCM Vessel2 Pressure");
		VAR_Update(&CCM_VESSEL_PRESSURE[1], 0.0, 0, 0);
         		
		 		
		VAR_Initialize(&CCM_GAS_TEMPERATURE, 64, 32, 10.0, 10.0, 0x00000002|0x00000004);
		sprintf(CCM_GAS_TEMPERATURE.name, "Gas Temperature");
		VAR_Update(&CCM_GAS_TEMPERATURE, 0.0, 0, 0);         
        
		 
        VAR_Initialize(&CCM_GAS_DENSITY_INPUT, 73, 92, 100.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_GAS_DENSITY_INPUT.name, "Gas Density Input");
		VAR_Update(&CCM_GAS_DENSITY_INPUT, 0.0, 0, 0);         
        
		 
		VAR_Initialize(&CCM_GAS_DENSITY, 73, 92, 100.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_GAS_DENSITY.name, "Gas Density");
		VAR_Update(&CCM_GAS_DENSITY, 0.0, 0, 0);
        
         
        VAR_Initialize(&CCM_GAS_LIVE_DENSITY, 73, 92, 100.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_GAS_LIVE_DENSITY.name, "Gas Live Density");
		VAR_Update(&CCM_GAS_LIVE_DENSITY, 0.0, 0, 0);
		
		 
		VAR_Initialize(&CCM_GAS_TOTAL, 68, 248, 100.0, 1000.0, 0x00000004|0x00000200);
		sprintf(CCM_GAS_TOTAL.name, "Gas Total");
		VAR_Setup_Unit(&CCM_GAS_TOTAL, 248, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&CCM_GAS_TOTAL, 0.0, 0, 0);

		 
		VAR_Initialize(&CCM_GAS_FLOW, 66, 249, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(CCM_GAS_FLOW.name, "Gas Flow");
		VAR_Setup_Unit(&CCM_GAS_FLOW, 249, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&CCM_GAS_FLOW, 0.0, 0, 0);

		 
		VAR_Initialize(&CCM_SETPOINT_PRESSURE_MAX_OVER, 65, 6, 1.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_SETPOINT_PRESSURE_MAX_OVER.name, "CCM Press Max Over");
		VAR_Update(&CCM_SETPOINT_PRESSURE_MAX_OVER, 100.0, 0, 0);

		 
		VAR_Initialize(&CCM_SETPOINT_PRESSURE[0], 65, 6, 1.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_SETPOINT_PRESSURE[0].name, "CCM Vessel1 Press SP");
		VAR_Update(&CCM_SETPOINT_PRESSURE[0], 300.0, 0, 0);
		CCM_SETPOINT_PRESSURE[0].vect2 = (int*)Mirror_To_Stream_Table;

		 
		VAR_Initialize(&CCM_SETPOINT_PRESSURE[1], 65, 6, 1.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_SETPOINT_PRESSURE[1].name, "CCM Vessel2 Press SP");
		VAR_Update(&CCM_SETPOINT_PRESSURE[1], 300.0, 0, 0);
		CCM_SETPOINT_PRESSURE[1].vect2 = (int*)Mirror_To_Stream_Table;

		 
		VAR_Initialize(&CCM_SETPOINT_LEVEL[0], 0, 57, 100.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_SETPOINT_LEVEL[0].name, "CCM Vessel1 Level SP");
		VAR_Update(&CCM_SETPOINT_LEVEL[0], 60.0, 0, 0);
		CCM_SETPOINT_LEVEL[0].vect2 = (int*)Mirror_To_Stream_Table;

		 
		VAR_Initialize(&CCM_SETPOINT_LEVEL[1], 0, 57, 100.0, 1000.0, 0x00000002|0x00000004);
		sprintf(CCM_SETPOINT_LEVEL[1].name, "CCM Vessel2 Level SP");
		VAR_Update(&CCM_SETPOINT_LEVEL[1], 60.0, 0, 0);
		CCM_SETPOINT_LEVEL[1].vect2 = (int*)Mirror_To_Stream_Table;

		CCM_PURGE 	 				= 1000.0;
		CCM_DURATION 				= 10.0;
		CCM_REMAINING				= 0.0;
		CCM_2LIQ 					= 0;
		CCM_2GAS 					= 0;
		CCM_CORRECT_LIQ_HEIGHT 		= 0;
		CCM_CORRECT_GAS_TO_STP 		= 0;
		CCM_GAS_MASS 				= 0;
		CCM_GAS_CNT 				= 0;
        GAS_DENSITY_INPUT_ENABLED 	= 0; 	   
		RESET_AT_PURGE 				= 0;      
        
		for (i=0;i<60;i++)
		{
			CCM_SETPOINT_P1[i]  = CCM_SETPOINT_PRESSURE[0].calc_val;
			CCM_SETPOINT_L1[i]  = CCM_SETPOINT_LEVEL[0].calc_val;
			CCM_SETPOINT_P2[i]  = CCM_SETPOINT_PRESSURE[1].calc_val;
			CCM_SETPOINT_L2[i]  = CCM_SETPOINT_LEVEL[1].calc_val;
		}
	}

	for (i=0;i<3;i++)
	{
 		FC[i].CNT 					= 0;
 		FC[i].PULSE_DELTA 			= 0;
		
		if (i == 0)
			FC[i].enable_NET 		= 1;
		else
			FC[i].enable_NET 		= 0;
		
		FC[i].enable_GROSS 			= 0;
		FC[i].enable_FLOW 			= 0;
		FC[i].enable_DENSITY 		= 0;
		FC[i].enable_PULSE 			= 0;
		FC[i].flow_class.vect 		= (int*)Set_FC_Units; 
		FC[i].flow_class.val 		= 66;
		FC[i].flow_unit.vect 		= (int*)Set_FC_Units; 
		FC[i].flow_unit.val 		= 135;
		FC[i].accum_unit.vect 		= (int*)Set_FC_Units;   
		FC[i].accum_unit.val 		= 46;
		FC[i].Z.val 				= 0;
		FC[i].AUTHORIZATION_CODE1 	= 0x1111;
		FC[i].AUTHORIZATION_CODE2 	= 0x2222;
		FC[i].AUTHORIZATION_CODE3 	= 0x3333;
		FC[i].AUTHORIZATION_CODE4 	= 0x4444;;
	
		
		FC[i].pulse_v.val 				= 33;
		FC[i].pulse_class.val 			= 81;
		FC[i].pulse_class.vect 			= (int*)Set_Pulse_Units; 
		FC[i].pulse_unit.val 			= 57;
		FC[i].pulse_unit.vect 			= (int*)Set_Pulse_Units;
		
		FC[i].use_totalizer.val		= 1;
		FC[i].use_totalizer.vect 	= (int*)0;  
		FC[i].use_totalizer.vect2 	= (int*)0;
		
		 
		VAR_Initialize(&FC[i].pulse_VALUE, 81, 57, 100.0, 100.0, 0x00000004|0x00000002);
		sprintf(FC[i].pulse_VALUE.name, "PULSE %d VALUE", i+1);
		VAR_NaN(&FC[i].pulse_VALUE);
		
		

		 
		VAR_Initialize(&FC[i].PULSE_FREQ, 80, 38, 1.0, 1.0, 0x00000002|0x00000004);
		sprintf(FC[i].PULSE_FREQ.name, "Pulse %d Freq", i+1);
		VAR_Update(&FC[i].PULSE_FREQ, 0.0, 0, 0);
		FC[i].PULSE_FREQ.aux = i;

		 
		VAR_Initialize(&FC[i].PULSE_TOTAL, 68, 46, 1.0, 1.0, 0x00000004|0x00000200);
		sprintf(FC[i].PULSE_TOTAL.name, "Pulse %d Total", i+1);
		VAR_Setup_Unit(&FC[i].PULSE_TOTAL, 46, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].PULSE_TOTAL, 0.0, 0, 0);
		FC[i].PULSE_TOTAL.aux = i;

		 
		VAR_Initialize(&FC[i].PULSE_FLOW, 66, 135, 1.0, 1.0, 0x00000002|0x00000004);
		sprintf(FC[i].PULSE_FLOW.name, "Pulse %d Flow", i+1);
		VAR_Setup_Unit(&FC[i].PULSE_FLOW, 135, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].PULSE_FLOW, 0.0, 0, 0);
		FC[i].PULSE_FLOW.aux = i;

		FC[i].PULSES_PER_ACCUM_UNIT = 5000;
		FC[i].PULSE_FACTOR 			= 1.0;
		

		 
		VAR_Initialize(&FC[i].NET_OIL, 68, 46, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(FC[i].NET_OIL.name, "FC%d Net Oil", i+1);
		VAR_Setup_Unit(&FC[i].NET_OIL, 46, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_OIL, 0.0, 0, 0);
		FC[i].NET_OIL.aux = i;

		 
		VAR_Initialize(&FC[i].NET_WATER, 68, 46, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(FC[i].NET_WATER.name, "FC%d Net Water", i+1);
		VAR_Setup_Unit(&FC[i].NET_WATER, 46, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_WATER, 0.0, 0, 0);
		FC[i].NET_WATER.aux = i;

		 
		VAR_Initialize(&FC[i].NET_TOTAL, 68, 46, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(FC[i].NET_TOTAL.name, "FC%d Net Total", i+1);
		VAR_Setup_Unit(&FC[i].NET_TOTAL, 46, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_TOTAL, 0.0, 0, 0);
		FC[i].NET_TOTAL.aux = i;
		
		 
		VAR_Initialize(&FC[i].AVG_NET_TOTAL, 68, 46, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(FC[i].AVG_NET_TOTAL.name, "FC%d Avg Net Ttl", i+1);
		VAR_Setup_Unit(&FC[i].AVG_NET_TOTAL, 46, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].AVG_NET_TOTAL, 0.0, 0, 0);
		FC[i].AVG_NET_TOTAL.aux = i;

		 
		VAR_Initialize(&FC[i].GROSS_OIL, 68, 46, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(FC[i].GROSS_OIL.name, "FC%d Gross Oil", i+1);
		VAR_Setup_Unit(&FC[i].GROSS_OIL, 46, 10000000.0, 0.0, 10000000.0, 0.0);
		VAR_Update(&FC[i].GROSS_OIL, 0.0, 0, 0);
		FC[i].GROSS_OIL.aux = i;

		 
		VAR_Initialize(&FC[i].GROSS_WATER, 68, 46, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(FC[i].GROSS_WATER.name, "Gross Water %d", i+1);
		VAR_Setup_Unit(&FC[i].GROSS_WATER, 46, 10000000.0, 0.0, 10000000.0, 0.0);
		VAR_Update(&FC[i].GROSS_WATER, 0.0, 0, 0);
		FC[i].GROSS_WATER.aux = i;

		 
		VAR_Initialize(&FC[i].GROSS_TOTAL, 68, 46, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(FC[i].GROSS_TOTAL.name, "FC%d Gross Total", i+1);
		VAR_Setup_Unit(&FC[i].GROSS_TOTAL, 46, 100000000.0, 0.0, 100000000.0, 0.0);
		VAR_Update(&FC[i].GROSS_TOTAL, 0.0, 0, 0);
		FC[i].GROSS_TOTAL.aux = i;
		
		 
        VAR_Initialize(&FC[i].AVG_GROSS_TOTAL, 68, 46, 1.0, 1000.0, 0x00000004|0x00000200);
		sprintf(FC[i].AVG_GROSS_TOTAL.name, "FC%d Avg Grs Ttl", i+1);
		VAR_Setup_Unit(&FC[i].AVG_GROSS_TOTAL, 46, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].AVG_GROSS_TOTAL, 0.0, 0, 0);
		FC[i].AVG_GROSS_TOTAL.aux = i;

		 
		VAR_Initialize(&FC[i].FLOW_OIL, 66, 135, 1.0, 1000.0, 0x00000004);
		sprintf(FC[i].FLOW_OIL.name, "FC%d Oil Flow", i+1);
		VAR_Setup_Unit(&FC[i].FLOW_OIL, 135, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].FLOW_OIL, 0.0, 0, 0);
		FC[i].FLOW_OIL.aux = i;

		 
		VAR_Initialize(&FC[i].FLOW_WATER, 66, 135, 1.0, 1000.0, 0x00000004);
		sprintf(FC[i].FLOW_WATER.name, "FC%d Water Flow", i+1);
		VAR_Setup_Unit(&FC[i].FLOW_WATER, 135, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].FLOW_WATER, 0.0, 0, 0);
		FC[i].FLOW_WATER.aux = i;

		 
		VAR_Initialize(&FC[i].FLOW_TOTAL, 66, 135, 1.0, 1000.0, 0x00000004);
		sprintf(FC[i].FLOW_TOTAL.name, "FC%d Total Flow", i+1);
		VAR_Setup_Unit(&FC[i].FLOW_TOTAL, 135, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].FLOW_TOTAL, 0.0, 0, 0);
		FC[i].FLOW_TOTAL.aux = i;

		 
		VAR_Initialize(&FC[i].NET_FLOW_OIL, 66, 135, 1.0, 1000.0, 0x00000004);
		sprintf(FC[i].NET_FLOW_OIL.name, "FC%d Net Oil Flow", i+1);
		VAR_Setup_Unit(&FC[i].NET_FLOW_OIL, 135, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_FLOW_OIL, 0.0, 0, 0);
		FC[i].NET_FLOW_OIL.aux = i;

		 
		VAR_Initialize(&FC[i].NET_FLOW_WATER, 66, 135, 1.0, 1000.0, 0x00000004);
		sprintf(FC[i].NET_FLOW_WATER.name, "FC%d Net Water Flow", i+1);
		VAR_Setup_Unit(&FC[i].NET_FLOW_WATER, 135, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_FLOW_WATER, 0.0, 0, 0);
		FC[i].NET_FLOW_WATER.aux = i;

		 
		VAR_Initialize(&FC[i].NET_FLOW_TOTAL, 66, 135, 1.0, 1000.0, 0x00000004);
		sprintf(FC[i].NET_FLOW_TOTAL.name, "FC%d Net Total Flow", i+1);	
		FC[i].NET_FLOW_TOTAL.name_r = 369;
		VAR_Setup_Unit(&FC[i].NET_FLOW_TOTAL, 135, 1000000000.0, 0.0, 1000000000.0, 0.0);
		VAR_Update(&FC[i].NET_FLOW_TOTAL, 0.0, 0, 0);
		FC[i].NET_FLOW_TOTAL.aux = i;

		 
		VAR_Initialize(&FC[i].watercut, 88, 149, 100.0, 1000.0, 0x00000004);
		sprintf(FC[i].watercut.name, "FC%d Process", i+1);	
		FC[i].watercut.name_r = 365;
		VAR_Setup_Unit(&FC[i].watercut, 149, 100.0, 0.0, 100.0, 0.0);
		VAR_Update(&FC[i].watercut, 0.0, 0, 0);
		FC[i].watercut.aux = i;

		 
		VAR_Initialize(&FC[i].T, 64, 32, 10.0, 10.0, 0x00000002|0x00000004);
		sprintf(FC[i].T.name, "FC%d Temperature", i+1);	
		FC[i].T.name_r = 368;
		VAR_Update(&FC[i].T, 0.0, 0, 0);
		FC[i].T.aux = i;

		 
		VAR_Initialize(&FC[i].pressure, 65, 6, 1.0, 1000.0, 0x00000002|0x00000004);
		sprintf(FC[i].pressure.name, "FC%d Pressure", i+1);	
		FC[i].pressure.name_r = 364;
		VAR_Update(&FC[i].pressure, 0.0, 0, 0);
		FC[i].pressure.aux = i;

		 
		VAR_Initialize(&FC[i].density, 73, 92, 10.0, 1000.0, 0x00000002|0x00000004);
		sprintf(FC[i].density.name, "FC%d Density", i+1);	
		FC[i].density.name_r = 372;
		VAR_Update(&FC[i].density, 0.0, 0, 0);
		
		FC[i].density.aux 			= i;
		FC[i].density.vect1 		= (int*)PDI_Density_Adj;
		FC[i].density.vect2 		= (int*)PDI_Density_Correction;
		FC[i].density_adj 			= 0.0;
		FC[i].density_PDI_corrected = -99.0;
		
		 
		 
		VAR_Initialize(&FC[i].density_waterST, 73, 92, 10.0, 1000.0, 0x00000002|0x00000004);
		sprintf(FC[i].density_waterST.name, "FC%d Water Density@ST", i+1);	
		FC[i].density_waterST.name_r = 371;
		VAR_Update(&FC[i].density_waterST, 999.012, 0, 0);
		FC[i].density_waterST.aux = i;

		 
		 
		VAR_Initialize(&FC[i].density_water, 73, 92, 10.0, 1000.0, 0x00000002|0x00000004);
		sprintf(FC[i].density_water.name, "FC%d Water Density@PT", i+1);	
		FC[i].density_water.name_r = 370;
		VAR_Update(&FC[i].density_water, 999.012, 0, 0);
		FC[i].density_water.aux = i;

		 
		 
		VAR_Initialize(&FC[i].density_oilST, 73, 92, 10.0, 1000.0, 0x00000002|0x00000004);	 
		sprintf(FC[i].density_oilST.name, "FC%d Oil Density@ST", i+1);	
		FC[i].density_oilST.name_r = 363;
		VAR_Update(&FC[i].density_oilST, 865.443 , 0, 0);     													 
		FC[i].density_oilST.aux = i;

		 
		 
		VAR_Initialize(&FC[i].density_oil, 73, 92, 10.0, 1000.0, 0x00000002|0x00000004);     
		sprintf(FC[i].density_oil.name, "FC%d Oil Density@PT", i+1);	
		FC[i].density_oil.name_r = 362;
		VAR_Update(&FC[i].density_oil, 865.443, 0, 0);
		FC[i].density_oil.aux = i;

		 
		VAR_Initialize(&FC[i].salinity, 90, 105, 100.0, 100.0, 0x00000002|0x00000004);
		sprintf(FC[i].salinity.name, "FC%d Salinity", i+1);	
		FC[i].salinity.name_r = 366;
		VAR_Update(&FC[i].salinity, 2.00, 0, 0);
		FC[i].salinity.aux = i;

		 
		VAR_Initialize(&FC[i].Meter_Factor, 0, 250, 10000.0, 100000.0, 0x00000002|0x00000004);
		sprintf(FC[i].Meter_Factor.name, "FC%d Meter Factor", i+1);	
		FC[i].Meter_Factor.name_r = 361;
		VAR_Update(&FC[i].Meter_Factor, 1.00, 0, 0);

		 
		VAR_Initialize(&FC[i].Shrinkage, 0, 250, 10000.0, 100000.0, 0x00000002|0x00000004);
		sprintf(FC[i].Shrinkage.name, "FC%d Shrinkage", i+1);	
		FC[i].Shrinkage.name_r = 367;
		VAR_Update(&FC[i].Shrinkage, 1.00, 0, 0);

		FC[i].API_TABLE 		= 'A'<<8;
		FC[i].USE_PDI_TEMP 		= 1;
		FC[i].USE_PDI_SALINITY 	= 1;
		FC[i].MAN_TEMP 			= 0;
		FC[i].MAN_SALINITY 		= 0;
		FC[i].MAN_WATERCUT 		= 0;
		FC[i].MAN_DENSITY 		= 0;
		FC[i].MAN_PRESSURE 		= 0;
		FC[i].MAN_FLOW 			= 0;
		FC[i].VCFo 				= 1.0;
		FC[i].VCFw 				= 1.0;
		FC[i].net_watercut 		= 0.0;
		FC[i].a 				= 0.0;

		Set_FC_Units(0);

	}
	
	FC[0].pulse_v.vect				= (int*)Set_Class_Units_Pulse1;
	FC[1].pulse_v.vect				= (int*)Set_Class_Units_Pulse2;
	FC[2].pulse_v.vect				= (int*)Set_Class_Units_Pulse3;
	
	FC[0].Z.vect	= (int*)Zero_FC1;
	FC[1].Z.vect 	= (int*)Zero_FC2;
	FC[2].Z.vect 	= (int*)Zero_FC3;   
	FC[0].Z.vect2	= (int*)0;
	FC[1].Z.vect2 	= (int*)0;
	FC[2].Z.vect2 	= (int*)0;

	
	CALC_WC_DENSITY.val		= 0;
	CALC_WC_DENSITY.vect	= (int*)Disable_PDI_WC_Mode;
	CALC_WC_DENSITY.vect2	= (int*)0;
	
	USE_PDI_WATERCUT.val	= 1;
	USE_PDI_WATERCUT.vect	= (int*)Disable_WC_Density_Mode;
	USE_PDI_WATERCUT.vect2	= (int*)0;	
	
	
	 
	for (i=0;i<5;i++)
	{
		VAR_Initialize(&VARUSER[i], 0, 250, 100.0, 100.0, 0x00000002|0x00000001|0x00000004);
		sprintf(VARUSER[i].name, "User Variable %d", i+1);
		VAR_NaN(&VARUSER[i]);
	}

	{
		
		
		HSALT.ENABLED.vect 	= (int*)HSALT_CLEAR;
		HSALT.S3 			= 0.0;
		HSALT.S2 			= 0.0;
		HSALT.S1 			= 0.0;
		HSALT.S0 			= 0.0;
		HSALT.SP3A 			= 0.0;
		HSALT.SP2A 			= 0.0;
		HSALT.SP1A 			= 0.0;
		HSALT.SP0A 			= 3.0;
		HSALT.SPLOA 		= 0.02;
		HSALT.SPHIA 		= 30.0;
		HSALT.SP3B 			= 0.0;
		HSALT.SP2B 			= 0.0;
		HSALT.SP1B 			= 0.0;
		HSALT.SP0B 			= 8.0;
		HSALT.SPLOB 		= 0.02;
		HSALT.SPHIB 		= 30.0;
		HSALT.Fmin 			= 0.0;
		
		HSALT.Dmin 			= 0.0;
		HSALT.Dmax 			= 0.0;
		HSALT.FBHI3 		= 0.0;
		HSALT.FBHI2 		= 0.0;
		HSALT.FBHI1 		= 0.0;
		HSALT.FBHI0 		= 0.0;
		HSALT.FBLO3 		= 0.0;
		HSALT.FBLO2 		= 0.0;
		HSALT.FBLO1 		= 0.0;
		HSALT.FBLO0 		= 0.0;   
	}

	for (i=0;i<50;i++)
		SPAD[i] = 0x0000;
	
	DIO_Autosave_on_pair_boundary = 0;

	for (i=0;i<8;i++)
	{
		DIO_CLEAR_PORT_COUNT[i].val		= 0;
		DIO_CLEAR_PORT_COUNT[i].vect 	= (int*)CLEAR_PORT_COUNT; 
		DIO_CLEAR_PORT_COUNT[i].vect2 	= (int*)0;
	}

	OIL_CALC_MODE 			= 0;
	OIL_CALC_MAX[0] 		= 0.0;
	OIL_CALC_MAX[1] 		= 0.0;
	OIL_CALC_CUTOFF 		= OIL_CALC_MAX[0];
	OSC_OIL_CALC 			= 0;
	OSC_WATER_CALC 			= 2;
	OSWITCH 				= 1;
	EXTUNE 					= 0;
	VT_SELECT 				= 0;
	ENABLED[OSC_OIL_CALC] 	= 1;
	ENABLED[OSC_WATER_CALC] = 1;
	IRDA_ENABLE 			= 0x0001;
	RLY[0].MODE 			= 0;
	RLY[0].STATUS_MASK 		= 0xFFFF;
	RLY[0].v.val 			= 0;
	RLY[0].v.vect 			= (int*) &Set_RLY_Units; 
	RLY[0].ON.val 			= 0;
	RLY[0].ON.vect 			= (int*)0;
	
	v = HART_Lookup(RLY[0].v.val, &ui, (int*)&HART_DV_Table);
	if ((v!=(VAR*)0) && (v!=&REG_DUMMY))
	{
		RLY[0].setpoint = VAR_Get_Unit_Param(v, 0x00050000, 0, 0);
		RLY[0].class 	= v->class;
		RLY[0].unit 	= v->unit & 0xFF;
	}
	else
	{
		RLY[0].class 	= 88;
		RLY[0].unit 	= 149 & 0xFF;
		RLY[0].setpoint = 100.0;
		RLY[0].v.val 	= -1;
	}

	RLY[1].MODE 		= 1;
	RLY[1].STATUS_MASK 	= 0xFFFF;
	RLY[1].v.val 		= 0;
	RLY[1].v.vect 		= (int*) &Set_RLY_Units;
	RLY[1].ON.val 		= 0;
	RLY[1].ON.vect 		= (int*)0;
		
	v = HART_Lookup(RLY[1].v.val, &ui, (int*)&HART_DV_Table);
	if ((v!=(VAR*)0) && (v!=&REG_DUMMY))
	{
		RLY[1].setpoint = VAR_Get_Unit_Param(v, 0x00050000, 0, 0);
		RLY[1].class 	= v->class;
		RLY[1].unit 	= v->unit;
	}
	else
	{
		RLY[1].class 	= 88;
		RLY[1].unit 	= 149;
		RLY[1].setpoint = 100.0;
		RLY[1].v.val 	= -1;
	}

	{ 
		Density_Correction_Mode.val  = 0;
		Density_Correction_Mode.vect = (int*)Set_Density_Correction; 
		DCM_PORT.val 				 = 3;
		DCM_PORT.vect 				 = (int*)Set_Density_Correction;  
		DensityCF_D0				 = 0.0;
		DensityCFD_D1				 = 1.0;
		DensityCFT_D1				 = 0.0;
        
          
         
		VAR_Initialize(&Density_D3, 81, 240, 100.0, 10000.0, 0x00000002|0x00000004);
		sprintf(Density_D3.name, "Density Adj 3rd Ord.");	
		Density_D3.name_r = 344;
		VAR_Update(&Density_D3, 0.00, 0, 0);
		
		 
		VAR_Initialize(&Density_D2, 81, 240, 100.0, 10000.0, 0x00000002|0x00000004);
		sprintf(Density_D2.name, "Density Adj 2nd Ord.");	
		Density_D2.name_r = 345;
		VAR_Update(&Density_D2, 0.00, 0, 0);
         
        
		 
		VAR_Initialize(&Density_D1, 81, 246, 100.0, 10000.0, 0x00000002|0x00000004);
		sprintf(Density_D1.name, "Density Adj Slope");	
		Density_D1.name_r = 346;
		VAR_Update(&Density_D1, 0.16, 0, 0);

		 
		VAR_Initialize(&Density_D0, 81, 57, 100.0, 10000.0, 0x00000002|0x00000004);
		sprintf(Density_D0.name, "Density Adj Offset");	
		Density_D0.name_r = 347;
		VAR_Update(&Density_D0, 0.0, 0, 0);

		 
		VAR_Initialize(&Density_Cal, 73, 105, 100.0, 10000.0, 0x00000002|0x00000004);
		sprintf(Density_Cal.name, "Calibration Density");
		VAR_Update(&Density_Cal, 32.00, 0, 0);
		
		Density_Cal_Unit.val  = 105;
		Density_Cal_Unit.vect = (int*)Set_Density_Cal_Unit;
	}

	{
		 
		VAR_Initialize(&ALYESKA.DESTINATION_ADDRESS, 0, 240, 100.0, 1000.0, 0x00000004);
		sprintf(ALYESKA.DESTINATION_ADDRESS.name, "PLC Data Address");
		VAR_Setup_Unit(&ALYESKA.DESTINATION_ADDRESS, 240, 65536.0, 1.0, 65536.0, 1.0);
		VAR_Update(&ALYESKA.DESTINATION_ADDRESS, 41.0, 0, 0);

		ALYESKA.WATERCUT		= 0.0;
		ALYESKA.FLOW_RATE		= 0.0;
		ALYESKA.TEMPERATURE		= 0.0;
		ALYESKA.DENSITY			= 0.0;
		ALYESKA.VISCOSITY		= 0.0;
		
		ALYESKA.iWATERCUTz		= 0;
		ALYESKA.iWATERCUT		= 0;
		ALYESKA.iFLOW_RATE		= 0;
		ALYESKA.iTEMPERATURE	= 0;
		ALYESKA.iDENSITY		= 0;
		ALYESKA.iVISCOSITY		= 0;
		
		ALYESKA.maxWATERCUTz	= 3.0;
		ALYESKA.maxWATERCUT		= 20.0;
		ALYESKA.maxFLOW_RATE	= 30.0;
		ALYESKA.maxTEMPERATURE	= 160.0;
		ALYESKA.maxDENSITY		= 1.0;
		ALYESKA.maxVISCOSITY	= 10.0;
		
		ALYESKA.minWATERCUTz	= 0.0;
		ALYESKA.minWATERCUT		= 0.0;
		ALYESKA.minFLOW_RATE	= 0.0;
		ALYESKA.minTEMPERATURE	= 60.0;
		ALYESKA.minDENSITY		= 0.7;
		ALYESKA.minVISCOSITY	= 0.5;
		
		ALYESKA.ENABLED			= 0;
	}

 
 
 
	VAR_Initialize(&REG_alarm_relay_delay, 			70, 51, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_flow_meter_type, 			250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_flow_volume_unit, 			250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_flow_rate_time_unit, 		250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_count_per_flow_unit, 		250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_20mA_max_flow_rate_input, 	250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_accumulator_display_format, 250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_HART_response_delay,		250, 243, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_HART_num_preamble,			250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_reference_currrent_mode,	250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_density_correction_mode, 	250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_port1_Baud_Rate, 			250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_port1_parity, 				250, 250, 1.0, 1.0, 0x00000002|0x00000004);
	VAR_Initialize(&REG_port1_stop_bits, 			250, 250, 1.0, 1.0, 0x00000002|0x00000004);
 
 
	AMETEK 							= 0;
	DIO_PV_PERCMASS 				= 0;
	DIO_MSVE 						= 0;
	DIO_IDEC_ENABLE 				= 1;
	DIO_SYSTEM_RESET.val 			= 0;
	DIO_SYSTEM_RESTART.val 			= 0;
	DIO_BUILT_IN_TEST.val 			= 1;
	DIO_RESET_FACTORY_DEFAULTS.val 	= 0;
	DIO_ERROR.val 					= 1;
	DIO_ALARM.val 					= 0;
	DIO_RESTORE_USER_CONFIG.val 	= 0;
	DIO_RESTORE_USER_CONFIG.val 	= 0;
	DIO_SAVE_USER_CONFIG.val 		= 0;
	DIO_RESEARCH_MODE.val 			= 0;
	DIO_SAVE_FACTORY_CONFIG.val 	= 0;
	DIO_RESTORE_BASICS.val 			= 0;
	DIO_CAP_OIL.val 				= 0;
	DIO_CAP_WATER.val 				= 0;
	DIO_CCM_START.val 				= 0;
	DIO_CCM_PURGE_STAT.val 			= 0;
	
	 
	 
	VAR_Initialize(&REG_CCM_TEST_STAT, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_CCM_TEST_STAT.name, "TEST IN PROGRESS");	
	REG_CCM_TEST_STAT.name_r = 328;
	VAR_Setup_Unit(&REG_CCM_TEST_STAT, 240, 1.0, 0.0, 1.0, 0.0);
	VAR_Update(&REG_CCM_TEST_STAT, 0.0, 0, 0);     
	
	 
	VAR_Initialize(&REG_CCM_PURGE_STAT, 0, 240, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(REG_CCM_PURGE_STAT.name, "PURGING");
	VAR_Setup_Unit(&REG_CCM_PURGE_STAT, 240, 1.0, 0.0, 1.0, 0.0);
	VAR_Update(&REG_CCM_PURGE_STAT, 0.0, 0, 0);
	
	DIO_CCM_PURGE_TIME.val 			= 0;
	DIO_AUX_FREQ_MODE				= 0x0000;
	DIO_PORT_IGNORE_DATA_EXCEPTION 	= 0x0001;
	DIO_CLEAR_COUNTERS.val 			= 0;	 
	DIO_TOTALIZER_CONTROL.val 		= 1;		 
	DIO_HART_5.val 					= 1;
	DIO_BUILT_IN_TEST_ENABLE.val 	= 1;
	DIO_HEATER_DISABLE.val 			= 0;
	DIO_DUMMY.val 					= 0;
	LOOP_ENABLED.val 				= 1;
	DATA_CHANGE.val 				= 0;
	DIO_BEEP.val 					= 0;
	
	 
	DIO_MANUAL_RESET.val	= 0;		 
	DIO_MANUAL_RESET.vect	= (int*)0;
	DIO_MANUAL_RESET.vect2	= (int*)0;
	
	
	
    DIO_TIME_RESET.val 		= 0;		
    DIO_TIME_RESET.vect 	= (int*)0;
    DIO_TIME_RESET.vect2	= (int*)0;
	 
#line 2019
	DIO_PORT_DEFAULTS.val 	= 0;
	DIO_PORT_DEFAULTS.vect 	= (int*)Submit_Serial_Defaults;
	DIO_PORT_DEFAULTS.vect2 = (int*)0;
	
	 
	DIO_BEEP.vect 					= (int*)BEEP_ON;
	DATA_CHANGE.vect 				= (int*)0;
	LOOP_ENABLED.vect 				= (int*)0;
	DIO_CCM_START.vect 				= (int*)CCM_START;
	DIO_CCM_PURGE_STAT.vect 		= (int*)0;
	DIO_CCM_PURGE_TIME.vect 		= (int*)0;
	DIO_DUMMY.vect 					= (int*)0;
	DIO_HEATER_DISABLE.vect 		= (int*)Disable_Heater;
	DIO_SYSTEM_RESET.vect 			= (int*)Submit_Reset;
	DIO_SYSTEM_RESTART.vect 		= (int*)Submit_Restart;
	DIO_BUILT_IN_TEST.vect 			= (int*)Submit_SELF_TEST;
	DIO_BUILT_IN_TEST_ENABLE.vect	= (int*)0;
	DIO_RESET_FACTORY_DEFAULTS.vect = (int*)Submit_Restore_CFG_FACTORY;
	DIO_ERROR.vect 					= (int*)Clear_Diagnostics;
	DIO_ALARM.vect 					= (int*)0;
	DIO_RESTORE_USER_CONFIG.vect 	= (int*)Submit_Restore_CFG_USER;
	DIO_SAVE_USER_CONFIG.vect 		= (int*)Submit_Write_CFG_USER;
	DIO_RESEARCH_MODE.vect 			= (int*)Set_Research_Mode;
	DIO_SAVE_FACTORY_CONFIG.vect 	= (int*)Submit_Write_CFG_FACTORY; 
	DIO_RESTORE_BASICS.vect 		= (int*)Submit_Setup_Basics;
	DIO_CAP_OIL.vect 				= (int*)Capture_Watercut_Oil;
	DIO_CAP_WATER.vect 				= (int*)Capture_Watercut_Water;
	DIO_CLEAR_COUNTERS.vect 		= (int*)Clear_Accumulators;
	DIO_TOTALIZER_CONTROL.vect 		= (int*)Totalizer_Control;
	DIO_HART_5.vect 				= (int*)HART_5;
    
     
	DIO_BEEP.vect2 						= (int*)0;
	DATA_CHANGE.vect2 					= (int*)0;
	LOOP_ENABLED.vect2 					= (int*)0;
	DIO_CCM_START.vect2 				= (int*)0;
	DIO_CCM_PURGE_STAT.vect2 			= (int*)0;
	DIO_CCM_PURGE_TIME.vect2 			= (int*)0;
	DIO_DUMMY.vect2 					= (int*)0;
	DIO_HEATER_DISABLE.vect2 			= (int*)0;
	DIO_SYSTEM_RESET.vect2 				= (int*)0;
	DIO_SYSTEM_RESTART.vect2 			= (int*)0;
	DIO_BUILT_IN_TEST.vect2 			= (int*)0;
	DIO_BUILT_IN_TEST_ENABLE.vect2 		= (int*)0;
	DIO_RESET_FACTORY_DEFAULTS.vect2	= (int*)0;
	DIO_ERROR.vect2 					= (int*)0;
	DIO_ALARM.vect2 					= (int*)0;
	DIO_RESTORE_USER_CONFIG.vect2 		= (int*)0;
	DIO_SAVE_USER_CONFIG.vect2 			= (int*)0;
	DIO_RESEARCH_MODE.vect2 			= (int*)0;
	DIO_SAVE_FACTORY_CONFIG.vect2 		= (int*)0; 
	DIO_RESTORE_BASICS.vect2 			= (int*)0;
	DIO_CAP_OIL.vect2 					= (int*)0;
	DIO_CAP_WATER.vect2 				= (int*)0;
	DIO_CLEAR_COUNTERS.vect2 			= (int*)0;
	DIO_TOTALIZER_CONTROL.vect2 		= (int*)0;
	DIO_HART_5.vect2 					= (int*)0;
     
    
	DIO_uP_GET.val  = 0;
	DIO_uP_SET.val  = 0;
	DIO_uP_GET.vect = (int*)Submit_GET_uP_CONFIG;
	DIO_uP_SET.vect = (int*)Submit_STORE_uP_CONFIG;

	DIO_COMM_GET.val  = 0;
	DIO_COMM_SET.val  = 0;
	DIO_COMM_GET.vect = (int*)Submit_GET_COMM_CONFIG;
	DIO_COMM_SET.vect = (int*)Submit_STORE_COMM_CONFIG;

	DIO_ANALYZER_GET.val  = 0;
	DIO_ANALYZER_SET.val  = 0;
	DIO_ANALYZER_GET.vect = (int*)Submit_GET_ANALYZER_CONFIG;
	DIO_ANALYZER_SET.vect = (int*)Submit_STORE_ANALYZER_CONFIG;

	DIO_POWER_GET.val  = 0;
	DIO_POWER_SET.val  = 0;
	DIO_POWER_GET.vect = (int*)Submit_GET_POWER_CONFIG;
	DIO_POWER_SET.vect = (int*)Submit_STORE_POWER_CONFIG;

	DIO_ANALOGIO_GET.val  = 0;
	DIO_ANALOGIO_SET.val  = 0;
	DIO_ANALOGIO_GET.vect = (int*)Submit_GET_ANALOGIO_CONFIG;
	DIO_ANALOGIO_SET.vect = (int*)Submit_STORE_ANALOGIO_CONFIG;

	DIO_DISPLAY_GET.val  = 0;
	DIO_DISPLAY_SET.val  = 0;
	DIO_DISPLAY_GET.vect = (int*)Submit_GET_DISPLAY_CONFIG;
	DIO_DISPLAY_SET.vect = (int*)Submit_STORE_DISPLAY_CONFIG;

	DIO_MOTHERBOARD_GET.val  = 0;
	DIO_MOTHERBOARD_SET.val  = 0;
	DIO_MOTHERBOARD_GET.vect = (int*)Submit_GET_MOTHERBOARD_CONFIG;
	DIO_MOTHERBOARD_SET.vect = (int*)Submit_STORE_MOTHERBOARD_CONFIG;
    
	DIO_uP_GET.vect2 			= (int*)0;
	DIO_uP_SET.vect2 			= (int*)0;
 	DIO_COMM_GET.vect2 			= (int*)0;
	DIO_COMM_SET.vect2 			= (int*)0;
	DIO_ANALYZER_GET.vect2 		= (int*)0;
	DIO_ANALYZER_SET.vect2 		= (int*)0;
	DIO_POWER_GET.vect2 		= (int*)0;
	DIO_POWER_SET.vect2 		= (int*)0;
	DIO_ANALOGIO_GET.vect2 		= (int*)0;
	DIO_ANALOGIO_SET.vect2 		= (int*)0;
	DIO_DISPLAY_GET.vect2 		= (int*)0;
	DIO_DISPLAY_SET.vect2 		= (int*)0;
	DIO_MOTHERBOARD_GET.vect2 	= (int*)0;
	DIO_MOTHERBOARD_SET.vect2 	= (int*)0;
    
	HART_VAR_LIST[0] 		= 0;
	HART_VAR_LIST[1] 		= 1;
	HART_VAR_LIST[2] 		= 2;
	HART_VAR_LIST[3] 		= 250;
	HART_BURST_VAR_LIST[0] 	= 0;
	HART_BURST_VAR_LIST[1] 	= 1;
	HART_BURST_VAR_LIST[2] 	= 2;
	HART_BURST_VAR_LIST[3] 	= 250;
	HART_BURST_CMD 			= 1;
    HART_BURST_MODE 		= 0;

	TEMP_OIL_MAX 	= 0;
	TEMP_WATER_MAX 	= 0;
	SALT_MAX 		= 0;

	for (i=0;i<10;i++)
	{
		TEMPS_OIL[i] = 0.0;

		for (j=0;j<4;j++)
			COEFF_TEMP_OIL[i][j] = 0.0;
	}

	for (k=0;k<20;k++)
	{
		SALTS[k] = 0.0;

		for (i=0;i<15;i++)
		{
			TEMPS_WATER[i] = 0.0;
	
			for (j=0;j<4;j++)
				COEFF_SALT_TEMP_WATER[k][i][j] = 0.0;
		}
	}

	COEFF_C0	= 0;
	COEFF_FA2 	= 1.0/1000.0;
	COEFF_FA1 	= 0;
	COEFF_FB2 	= 0;
	COEFF_FB1 	= 0;
	COEFF_RPA2 	= 0;
	COEFF_RPA1 	= 0;
	COEFF_RPB2 	= 0;
	COEFF_RPB1 	= 0;
	COEFF_IPA2 	= 0;
	COEFF_IPA1	= 0;
	COEFF_IPB2 	= 0;
	COEFF_IPB1 	= 0;
	COEFF_T2 	= 0;
	COEFF_T1 	= 0;    
	COEFF_D2 	= 0;   
	COEFF_D1 	= 0;   

	for (i=0;i< 1;i++) 
		STR_VER[i]	= 0x0000;
	
	for (i=0;i< 2;i++) 
		STR_INIT[i]  = 0x0000;
	
	c = (char*)&copyright;
	for (i=0;i<20;i++)
	{
		if (c[2*i] == 0x00) 
			break;
		
		STR_Copyright[i] = c[2*i]<<8;
		
		if (c[2*i+1] == 0x00)
		{
			STR_Copyright[i] |= 0x0020;
			i++;
			break;
		}
		else
			STR_Copyright[i] |= (int)(c[2*i+1]);
	}
	
	for (i  ;i<20;i++) 
		STR_Copyright[i]	 = 0x2020;
	
	for (i=0;i<10;i++) 
		STR_Analyzer_Info[i] = 0x2020;
	
	for (i=0;i<4 ;i++) 
		STR_HART_Tag[i]      = 0x2020;
	
	for (i=0;i<16;i++) 
		STR_HART_Tag_Long[i] = 0x0000;
	
	for (i=0;i<8 ;i++) 
		STR_HART_Desc[i]     = 0x2020;
	
	for (i=0;i<16;i++) 
		STR_HART_Msg[i]      = 0x2020;
	
	for (i=0;i<8 ;i++) 
		STR_ASSY_Date[i]     = 0x2020;    
	
	for (i=0;i<10;i++) 
		STR_Analyzer_PV[i]	 = 0x2020;
	
	for (i=0;i<4 ;i++) 
		STR_Analyzer_UNIT[i] = 0x2020;

	STR_HART_Date[0]	= 0x0101;	  
	STR_HART_Date[1]	= 0x6600;	 

	 
	VAR_Initialize(&Oil_Phase_Filter, 250, 250, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(Oil_Phase_Filter.name, "Oil Cont. Filter");
	VAR_Setup_Unit(&Oil_Phase_Filter, 240, 6.0, 0.0, 6.0, 0.0);
	VAR_Update(&Oil_Phase_Filter, 0.0, 0, 0);

	 
	VAR_Initialize(&Oil_Phase_Maximum, 250, 250, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(Oil_Phase_Maximum.name, "Oil Cont. Maximum");
	VAR_Setup_Unit(&Oil_Phase_Maximum, 240, 100.0, 0.0, 100.0, 0.0);
	VAR_Update(&Oil_Phase_Maximum, 80.0, 0, 0);

	 
	VAR_Initialize(&Water_Phase_Filter, 250, 250, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(Water_Phase_Filter.name, "Water Cont. Filter");
	VAR_Setup_Unit(&Water_Phase_Filter, 240, 6.0, 0.0, 6.0, 0.0);
	VAR_Update(&Water_Phase_Filter, 0.0, 0, 0);

	 
	VAR_Initialize(&Water_Phase_Minimum, 250, 250, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(Water_Phase_Minimum.name, "Water Cont. Minimum");
	VAR_Setup_Unit(&Water_Phase_Minimum, 240, 100.0, 0.0, 100.0, 0.0);
	VAR_Update(&Water_Phase_Minimum, 65.0, 0, 0);

	 
	Copy_CAPDATA(&Cap_Oil, 0, 1);	 
	VAR_Initialize(&Num_Oil_Samples, 250, 250, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(Num_Oil_Samples.name, "#Oil Phase Samples");
	VAR_Setup_Unit(&Num_Oil_Samples, 240, 6000.0, 1.0, 6000.0, 1.0);    
	VAR_Update(&Num_Oil_Samples, 5122.0, 0, 0);                 						 
	
	 
	Copy_CAPDATA(&Cap_Water, 0, 1);	 
	VAR_Initialize(&Num_Water_Samples, 250, 250, 1.0, 1.0, 0x00000004|0x00000100);
	sprintf(Num_Water_Samples.name, "#Water Phase Samples");
	VAR_Setup_Unit(&Num_Water_Samples, 240, 6000.0, 1.0, 6000.0, 1.0);  
	VAR_Update(&Num_Water_Samples, 5122.0, 0, 0);         							 

	for (i=0;i<60;i++)
	{
		Cap_Records[i].Watercut[0]				= Cap_Oil.Watercut;
		Cap_Records[i].Temperature[0]			= Cap_Oil.Temperature;
		Cap_Records[i].Salinity[0]				= Cap_Oil.Salinity;
		Cap_Records[i].Frequency_Oil[0]			= Cap_Oil.Frequency_Oil;
		Cap_Records[i].Frequency_Water[0]		= Cap_Oil.Frequency_Water;
		Cap_Records[i].RefPower_Oil[0]			= Cap_Oil.RefPower_Oil;
		Cap_Records[i].RefPower_Water[0]		= Cap_Oil.RefPower_Water;
		Cap_Records[i].Dadj[0]					= Cap_Oil.Dadj;
		Cap_Records[i].Time_MONTH_DAY_HH_MM[0]	= (Cap_Oil.Time_MONTH<<24)|(Cap_Oil.Time_DAY<<16)|(Cap_Oil.Time_HH<<8)|(Cap_Oil.Time_MM);
		Cap_Records[i].CLRSTAT_Time_YEAR[0]		= (Cap_Oil.Time_YEAR<<8)|(Cap_Oil.Time_DAY_OF_WEEK);

		Cap_Records[i].Watercut[1]				= Cap_Water.Watercut;
		Cap_Records[i].Temperature[1]			= Cap_Water.Temperature;
		Cap_Records[i].Salinity[1]				= Cap_Water.Salinity;
		Cap_Records[i].Frequency_Oil[1]			= Cap_Water.Frequency_Oil;
		Cap_Records[i].Frequency_Water[1]		= Cap_Water.Frequency_Water;
		Cap_Records[i].RefPower_Oil[1]			= Cap_Water.RefPower_Oil;
		Cap_Records[i].RefPower_Water[1]		= Cap_Water.RefPower_Water;
		Cap_Records[i].Dadj[1]					= Cap_Water.Dadj;
		Cap_Records[i].Time_MONTH_DAY_HH_MM[1]	= (Cap_Water.Time_MONTH<<24)|(Cap_Water.Time_DAY<<16)|(Cap_Water.Time_HH<<8)|(Cap_Water.Time_MM);
		Cap_Records[i].CLRSTAT_Time_YEAR[1]		= (Cap_Water.Time_YEAR<<8)|(Cap_Water.Time_DAY_OF_WEEK);
	}

	Port_Defaults(1);

	CHANGE = 1;	

	 
	DIAGNOSTICS_MASK[0] 	= 0xFFFF;
	DIAGNOSTICS_MASK[1] 	= 0xFFFF;
	DIAGNOSTICS[0] 			= 0x8000;
	DIAGNOSTICS[1] 			= 0x0000;
	DIAGNOSTICS_MSG_CODE	= 15;
	DIAGNOSTICS_ERROR_CODE 	= 0;

	 
	VAR_Initialize(&REG_DIAG[0], 0, 240, 1.0, 1.0, 0x00000002|0x00000004|0x00000100);
	sprintf(REG_DIAG[0].name, "Diagnostics");	
	REG_DIAG[0].name_r = 329;
	VAR_Update(&REG_DIAG[0], DIAGNOSTICS[0], 0, 0);

	 
	VAR_Initialize(&REG_DIAG[1], 0, 240, 1.0, 1.0, 0x00000002|0x00000004|0x00000100);
	sprintf(REG_DIAG[1].name, "Extended Diagnostics");	
	REG_DIAG[1].name_r = 330;
	VAR_Update(&REG_DIAG[1], DIAGNOSTICS[1], 0, 0);

	 
	VAR_Initialize(&REG_DIAG[2], 0, 240, 1.0, 1.0, 0x00000002|0x00000004|0x00000100);
	sprintf(REG_DIAG[2].name, "Error Code");	
	REG_DIAG[2].name_r = 331;
	VAR_Update(&REG_DIAG[2], DIAGNOSTICS_ERROR_CODE, 0, 0);

	 
	VAR_Initialize(&REG_DIAG[3], 0, 240, 1.0, 1.0, 0x00000002|0x00000004|0x00000100);
	sprintf(REG_DIAG[3].name, "Message Code");	
	REG_DIAG[3].name_r = 332;
	VAR_Update(&REG_DIAG[3], DIAGNOSTICS_MSG_CODE, 0, 0);

	 
	VAR_Initialize(&REG_DIAG[4], 0, 240, 1.0, 1.0, 0x00000002|0x00000004|0x00000100);
	sprintf(REG_DIAG[4].name, "HART Response Code");	
	REG_DIAG[4].name_r = 333;
	VAR_Update(&REG_DIAG[4], 0, 0, 0);
    
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x08; *((volatile char*) 0x0900004) |= 0x80;{asm("	pop		ST			");};};
	{asm("	pop		ST			");};
}
