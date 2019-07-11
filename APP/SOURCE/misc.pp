#line 109 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\GLBLS.H"
extern const char* copyright;
extern const char* credit;
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
extern unsigned int CLOCK;
extern BOOL LED_GREEN;
extern BOOL OSWITCH;
extern void c_int00(void);

#line 200
extern unsigned int ESN_USER[5];
extern unsigned int ESN_MFGR[5];

#pragma DATA_SECTION(Oil_Phase_Maximum,"CFG")
extern VAR Oil_Phase_Maximum;
#pragma DATA_SECTION(Water_Phase_Minimum,"CFG")
extern VAR Water_Phase_Minimum;

#pragma DATA_SECTION(Oil_Phase_Filter,"CFG")
extern VAR Oil_Phase_Filter;
#pragma DATA_SECTION(Water_Phase_Filter,"CFG")
extern VAR Water_Phase_Filter;

#pragma DATA_SECTION(Num_Oil_Samples,"CFG")
extern VAR Num_Oil_Samples;
#pragma DATA_SECTION(Num_Water_Samples,"CFG")
extern VAR Num_Water_Samples;


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
extern COIL DIO_RESEARCH_MODE;
extern BOOL RESEARCH_FORCE_MODE;

#pragma DATA_SECTION(DIO_uP_GET,"CFG")
extern COIL DIO_uP_GET;
#pragma DATA_SECTION(DIO_uP_SET,"CFG")
extern COIL DIO_uP_SET;

#pragma DATA_SECTION(DIO_COMM_GET,"CFG")
extern COIL DIO_COMM_GET;
#pragma DATA_SECTION(DIO_COMM_SET,"CFG")
extern COIL DIO_COMM_SET;

#pragma DATA_SECTION(DIO_ANALYZER_GET,"CFG")
extern COIL DIO_ANALYZER_GET;
#pragma DATA_SECTION(DIO_ANALYZER_SET,"CFG")
extern COIL DIO_ANALYZER_SET;

#pragma DATA_SECTION(DIO_POWER_GET,"CFG")
extern COIL DIO_POWER_GET;
#pragma DATA_SECTION(DIO_POWER_SET,"CFG")
extern COIL DIO_POWER_SET;

#pragma DATA_SECTION(DIO_ANALOGIO_GET,"CFG")
extern COIL DIO_ANALOGIO_GET;
#pragma DATA_SECTION(DIO_ANALOGIO_SET,"CFG")
extern COIL DIO_ANALOGIO_SET;

#pragma DATA_SECTION(DIO_DISPLAY_GET,"CFG")
extern COIL DIO_DISPLAY_GET;
#pragma DATA_SECTION(DIO_DISPLAY_SET,"CFG")
extern COIL DIO_DISPLAY_SET;

#pragma DATA_SECTION(DIO_MOTHERBOARD_GET,"CFG")
extern COIL DIO_MOTHERBOARD_GET;
#pragma DATA_SECTION(DIO_MOTHERBOARD_SET,"CFG")
extern COIL DIO_MOTHERBOARD_SET;

#pragma DATA_SECTION(DIO_BEEP,"CFG")
extern COIL DIO_BEEP;

#pragma DATA_SECTION(DIO_PV_PERCMASS,"CFG")
extern int	DIO_PV_PERCMASS;

extern REGVECT VAR_SELECT_DV;
extern REGVECT VAR_SELECT_DVIN;
extern int STR_VAR_DESC[10];
extern int STR_VAR_UNIT[4];
extern float VAR_INT_SCALE;
extern float VAR_LONGINT_SCALE;

#pragma DATA_SECTION(LOG_VAR_SEL,"CFG")
extern int LOG_VAR_SEL[30];
extern int i_LV[30];
extern int il_LV[30];
extern float f_LV[30];

#pragma DATA_SECTION(AMETEK,"CFG")
extern int AMETEK;

#pragma DATA_SECTION(Cap_Records,"CFG")
extern CAPRECORD Cap_Records[60];

#pragma DATA_SECTION(Cap_Oil,"CFG")
extern CAPDATA Cap_Oil;
#pragma DATA_SECTION(Cap_Water,"CFG")
extern CAPDATA Cap_Water;

#pragma DATA_SECTION(DIO_Autosave_on_pair_boundary,"CFG")
extern int   DIO_Autosave_on_pair_boundary;

#pragma DATA_SECTION(REG_osc_settle_short,"CFG")
extern VAR REG_osc_settle_short;
#pragma DATA_SECTION(REG_osc_settle_long,"CFG")
extern VAR REG_osc_settle_long;

#pragma DATA_SECTION(DIO_PORT_DEFAULTS,"CFG")
extern COIL DIO_PORT_DEFAULTS;
#pragma DATA_SECTION(DATA_CHANGE,"CFG")
extern COIL DATA_CHANGE;
#pragma DATA_SECTION(REG_alarm_relay_delay,"CFG")
extern VAR REG_alarm_relay_delay;
#pragma DATA_SECTION(REG_flow_meter_type,"CFG")
extern VAR REG_flow_meter_type;
#pragma DATA_SECTION(REG_flow_volume_unit,"CFG")
extern VAR REG_flow_volume_unit;
#pragma DATA_SECTION(REG_flow_rate_time_unit,"CFG")
extern VAR REG_flow_rate_time_unit;
#pragma DATA_SECTION(REG_count_per_flow_unit,"CFG")
extern VAR REG_count_per_flow_unit;
#pragma DATA_SECTION(REG_20mA_max_flow_rate_input,"CFG")
extern VAR REG_20mA_max_flow_rate_input;
#pragma DATA_SECTION(REG_accumulator_display_format,"CFG")
extern VAR REG_accumulator_display_format;
#pragma DATA_SECTION(REG_HART_response_delay,"CFG")
extern VAR REG_HART_response_delay;
#pragma DATA_SECTION(REG_HART_num_preamble,"CFG")
extern VAR REG_HART_num_preamble;
#pragma DATA_SECTION(REG_reference_currrent_mode,"CFG")
extern VAR REG_reference_currrent_mode;
#pragma DATA_SECTION(REG_num_oil_cal_samples,"CFG")
extern VAR REG_num_oil_cal_samples;
#pragma DATA_SECTION(REG_num_water_cal_samples,"CFG")
extern VAR REG_num_water_cal_samples;
#pragma DATA_SECTION(REG_density_correction_mode,"CFG")
extern VAR REG_density_correction_mode;
#pragma DATA_SECTION(REG_port1_parity,"CFG")
extern VAR REG_port1_parity;
#pragma DATA_SECTION(REG_port1_stop_bits,"CFG")
extern VAR REG_port1_stop_bits;
#pragma DATA_SECTION(REG_port1_Baud_Rate,"CFG")
extern VAR REG_port1_Baud_Rate;

extern unsigned int SA;
#pragma DATA_SECTION(U_TEMP_ASCII,"CFG")
extern int U_TEMP_ASCII;
#pragma DATA_SECTION(GATE_TIME,"CFG")
extern float GATE_TIME;
#pragma DATA_SECTION(PRESCALE,"CFG")
extern float PRESCALE;
#pragma DATA_SECTION(EXTUNE,"CFG")
extern BOOL EXTUNE;
#pragma DATA_SECTION(IRDA_ENABLE,"CFG")
extern BOOL IRDA_ENABLE;
#pragma DATA_SECTION(DIO_HEATER_DISABLE,"CFG")
extern COIL DIO_HEATER_DISABLE;
extern BFR PV_SAMPLES;
extern BFR PV_SAMPLES_24hr;
extern BFR PV_SAMPLES_5min;
extern int READ_ADC_INPUTS;
extern int VT_SELECT;
extern BOOL INITIALIZING;
extern BOOL MEM;
extern BOOL DIPSWITCH[2];
extern int DUMMY;
extern int ZERO_INPUT;
extern BOOL CHANGE;
#pragma DATA_SECTION(DIO_DUMMY,"CFG")
extern COIL DIO_DUMMY;
extern REGVECT IDEC_SA[13];
extern int IDEC_PORT;

extern int i_FREQ_O;
extern int i_IP_O;
extern int i_RP_O;
extern int i_FREQ_W;
extern int i_IP_W;
extern int i_RP_W;
extern int i_TEMP;
extern int i_WC;

extern float FREQ_O;
extern float IP_O;
extern float RP_O;
extern float IP_RP_O;
extern float DB_IP_RP_O;
extern float FREQ_W;
extern float IP_W;
extern float RP_W;
extern float IP_RP_W;
extern float DB_IP_RP_W;



extern unsigned int HW_VER;




#pragma DATA_SECTION(DCM_PORT,"CFG")
extern REGVECT DCM_PORT;
#pragma DATA_SECTION(Density_Correction_Mode,"CFG")
extern REGVECT Density_Correction_Mode;
#pragma DATA_SECTION(OIL_CALC_MODE,"CFG")
extern int OIL_CALC_MODE;
#pragma DATA_SECTION(OIL_CALC_MAX,"CFG")
extern float OIL_CALC_MAX[2];
#pragma DATA_SECTION(OIL_CALC_CUTOFF,"CFG")
extern float OIL_CALC_CUTOFF;

#pragma DATA_SECTION(REG_USER_DEFINE,"CFG")
extern int REG_USER_DEFINE[20];

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

extern CCMRECORD CCM_Record;

extern unsigned int CCMREC[100];
extern int i_CCM_Level_Setpoint;
extern int i_CCM_Level;
extern int i_CCM_Pressure_Setpoint;
extern int i_CCM_Pressure;
extern int i_CCM_Gas_Valve;
extern int i_CCM_Liquid_Valve;
extern int i_CCM_Flow;
extern int i_CCM_Flow_Oil;
extern int i_CCM_Flow_Water;
extern int i_CCM_Flow_Gas;
#pragma DATA_SECTION(CCM_2LIQ,"CFG")
extern	int CCM_2LIQ;
#pragma DATA_SECTION(CCM_2GAS,"CFG")
extern	int CCM_2GAS;
#pragma DATA_SECTION(CCM_CORRECT_LIQ_HEIGHT,"CFG")
extern	int CCM_CORRECT_LIQ_HEIGHT;
#pragma DATA_SECTION(CCM_CORRECT_GAS_TO_STP,"CFG")
extern	int CCM_CORRECT_GAS_TO_STP;
#pragma DATA_SECTION(CCM_GAS_MASS,"CFG")
extern	int CCM_GAS_MASS;
extern	int CCM_GAS_CNT;
extern	int CCM_CNT;
#pragma DATA_SECTION(EXT_ANALOG_OUT,"CFG")
extern int EXT_ANALOG_OUT;
extern struct tm CCM_TIME_START;
extern struct tm CCM_TIME_STOP;
extern struct tm CCM_TIME_REMAINING;
extern struct tm CCM_TIME_ELAPSED;
#pragma DATA_SECTION(CCM_VESSEL_LEVEL,"CFG")
extern VAR CCM_VESSEL_LEVEL[2];
#pragma DATA_SECTION(CCM_VESSEL_MAX_LEVEL,"CFG")
extern float CCM_VESSEL_MAX_LEVEL[2];
#pragma DATA_SECTION(CCM_VESSEL_PRESSURE,"CFG")
extern VAR CCM_VESSEL_PRESSURE[2];
#pragma DATA_SECTION(CCM_PURGE,"CFG")
extern float CCM_PURGE;
#pragma DATA_SECTION(CCM_DURATION,"CFG")
extern float CCM_DURATION;
extern float CCM_REMAINING;
extern float CCM_REMAINING_S;
extern float CCM_ELAPSED_S;
extern float CCM_24_GAS;
extern float CCM_24_OIL;
extern float CCM_24_WATER;
extern float CCM_24_TOTAL;  

extern long double ccm_gas_total_fract_part;
extern long double ccm_gas_total_whole_part;

#pragma DATA_SECTION(CCM_GAS_TEMPERATURE,"CFG")
extern VAR CCM_GAS_TEMPERATURE;    

#pragma DATA_SECTION(CCM_GAS_DENSITY_INPUT,"CFG")
extern VAR CCM_GAS_DENSITY_INPUT;         

#pragma DATA_SECTION(CCM_GAS_DENSITY,"CFG")
extern VAR CCM_GAS_DENSITY;
#pragma DATA_SECTION(CCM_GAS_LIVE_DENSITY,"CFG")
extern VAR CCM_GAS_LIVE_DENSITY;
#pragma DATA_SECTION(CCM_GAS_TOTAL,"CFG")
extern VAR CCM_GAS_TOTAL;
#pragma DATA_SECTION(CCM_GAS_FLOW,"CFG")
extern VAR CCM_GAS_FLOW;
#pragma DATA_SECTION(CCM_SETPOINT_LEVEL,"CFG")
extern VAR CCM_SETPOINT_LEVEL[2];
#pragma DATA_SECTION(CCM_SETPOINT_PRESSURE,"CFG")
extern VAR CCM_SETPOINT_PRESSURE[2];
#pragma DATA_SECTION(CCM_SETPOINT_PRESSURE_MAX_OVER,"CFG")
extern VAR CCM_SETPOINT_PRESSURE_MAX_OVER;
#pragma DATA_SECTION(CCM_SETPOINT_P1,"CFG")
extern float CCM_SETPOINT_P1[60];
#pragma DATA_SECTION(CCM_SETPOINT_L1,"CFG")
extern float CCM_SETPOINT_L1[60];
#pragma DATA_SECTION(CCM_SETPOINT_P2,"CFG")
extern float CCM_SETPOINT_P2[60];
#pragma DATA_SECTION(CCM_SETPOINT_L2,"CFG")
extern float CCM_SETPOINT_L2[60];

#pragma DATA_SECTION(ANALYZER_MODE,"CFG")
extern REGVECT ANALYZER_MODE;
#pragma DATA_SECTION(DEMO,"CFG")
extern BOOL DEMO;
#pragma DATA_SECTION(DEMO_ANALYZER_MODE,"CFG")
extern VAR DEMO_ANALYZER_MODE;

#pragma DATA_SECTION(DIO_IDEC_ENABLE,"CFG")
extern int   DIO_IDEC_ENABLE;
#pragma DATA_SECTION(LOOP_ENABLED,"CFG")
extern COIL LOOP_ENABLED;
#pragma DATA_SECTION(OSC_OIL_CALC,"CFG")
extern int    OSC_OIL_CALC;
#pragma DATA_SECTION(OSC_WATER_CALC,"CFG")
extern int    OSC_WATER_CALC;

#pragma DATA_SECTION(TEMP_OIL_MAX,"CFG")
extern float TEMP_OIL_MAX;
#pragma DATA_SECTION(TEMPS_OIL,"CFG")
extern float TEMPS_OIL[10];
#pragma DATA_SECTION(COEFF_TEMP_OIL,"CFG")
extern float COEFF_TEMP_OIL[10][4];
#pragma DATA_SECTION(TEMP_WATER_MAX,"CFG")
extern float TEMP_WATER_MAX;
#pragma DATA_SECTION(SALT_MAX,"CFG")
extern float SALT_MAX;
#pragma DATA_SECTION(TEMPS_WATER,"CFG")
extern float TEMPS_WATER[15];
#pragma DATA_SECTION(SALTS,"CFG")
extern float SALTS[20];
#pragma DATA_SECTION(COEFF_SALT_TEMP_WATER,"CFG")
extern float COEFF_SALT_TEMP_WATER[20][15][4];
#pragma DATA_SECTION(SALINITY,"CFG")
extern float SALINITY[60];
#pragma DATA_SECTION(OIL_ADJ,"CFG")
extern float OIL_ADJ[60];
#pragma DATA_SECTION(WATER_ADJ,"CFG")
extern float WATER_ADJ[60];
#pragma DATA_SECTION(WATER_ALARM_LO,"CFG")
extern float WATER_ALARM_LO[60];
#pragma DATA_SECTION(WATER_ALARM_HI,"CFG")
extern float WATER_ALARM_HI[60];
 
#pragma DATA_SECTION(HSALT_ENABLE,"CFG")
extern float HSALT_ENABLE[60];
#pragma DATA_SECTION(GAS_ROUTINE_ENABLE,"CFG")
extern float GAS_ROUTINE_ENABLE[60];
#pragma DATA_SECTION(HSALT_MIN_FLOW,"CFG")
extern float HSALT_MIN_FLOW[60];

#pragma DATA_SECTION(stream_bubble_length,"CFG")
extern float stream_bubble_length[60];
#pragma DATA_SECTION(stream_pattern_length,"CFG")
extern float stream_pattern_length[60];
#pragma DATA_SECTION(stream_boxcar_expire,"CFG")
extern float stream_boxcar_expire[60];

#pragma DATA_SECTION(stream_boxcar_expire_minutes,"CFG")
extern int   stream_boxcar_expire_minutes[60]; 

#pragma DATA_SECTION(stream_delta_temp,"CFG")
extern float stream_delta_temp[60];



 
#line 630
#pragma DATA_SECTION(OIL_PHASE_ONLY_ENABLE,"CFG")
extern float OIL_PHASE_ONLY_ENABLE[60];
#pragma DATA_SECTION(WATER_PHASE_ONLY_ENABLE,"CFG")
extern float WATER_PHASE_ONLY_ENABLE[60];
   
 
#pragma DATA_SECTION(LIQ_VALVE_P,"CFG")
extern float LIQ_VALVE_P[60]; 
#pragma DATA_SECTION(LIQ_VALVE_I,"CFG")
extern float LIQ_VALVE_I[60];
#pragma DATA_SECTION(LIQ_VALVE_D,"CFG")
extern float LIQ_VALVE_D[60]; 
#pragma DATA_SECTION(GAS_VALVE_P,"CFG")
extern float GAS_VALVE_P[60];
#pragma DATA_SECTION(GAS_VALVE_I,"CFG")
extern float GAS_VALVE_I[60];
#pragma DATA_SECTION(GAS_VALVE_D,"CFG")
extern float GAS_VALVE_D[60];
 

#pragma DATA_SECTION(COEFF_C0,"CFG")
extern float COEFF_C0;
#pragma DATA_SECTION(COEFF_FA2,"CFG")
extern float COEFF_FA2;
#pragma DATA_SECTION(COEFF_FA1,"CFG")
extern float COEFF_FA1;
#pragma DATA_SECTION(COEFF_FB2,"CFG")
extern float COEFF_FB2;
#pragma DATA_SECTION(COEFF_FB1,"CFG")
extern float COEFF_FB1;
#pragma DATA_SECTION(COEFF_RPA2,"CFG")
extern float COEFF_RPA2;
#pragma DATA_SECTION(COEFF_RPA1,"CFG")
extern float COEFF_RPA1;
#pragma DATA_SECTION(COEFF_RPB2,"CFG")
extern float COEFF_RPB2;
#pragma DATA_SECTION(COEFF_RPB1,"CFG")
extern float COEFF_RPB1;
#pragma DATA_SECTION(COEFF_IPA2,"CFG")
extern float COEFF_IPA2;
#pragma DATA_SECTION(COEFF_IPA1,"CFG")
extern float COEFF_IPA1;
#pragma DATA_SECTION(COEFF_IPB2,"CFG")
extern float COEFF_IPB2;
#pragma DATA_SECTION(COEFF_IPB1,"CFG")
extern float COEFF_IPB1;
#pragma DATA_SECTION(COEFF_T2,"CFG")
extern float COEFF_T2;
#pragma DATA_SECTION(COEFF_T1,"CFG")
extern float COEFF_T1;  
 
#pragma DATA_SECTION(COEFF_D2,"CFG")
extern float COEFF_D2;
#pragma DATA_SECTION(COEFF_D1,"CFG")
extern float COEFF_D1;
#pragma DATA_SECTION(STR_Analyzer_PV,"CFG")
extern int STR_Analyzer_PV[20/2];
#pragma DATA_SECTION(STR_Analyzer_UNIT,"CFG")
extern int STR_Analyzer_UNIT[8/2];

extern unsigned int		REG_TIME; 

extern BOOL SAMPLE_PENDING;

#pragma DATA_SECTION(RESET_COUNTER,"CFG")
extern int    RESET_COUNTER;

#pragma DATA_SECTION(FINAL_ASSY,"CFG")
extern int    FINAL_ASSY;

#pragma DATA_SECTION(SN_DC_BOARD,"CFG")
extern int    SN_DC_BOARD;
#pragma DATA_SECTION(SN_OSC,"CFG")
extern int    SN_OSC;
#pragma DATA_SECTION(SN_PIPE,"CFG")
extern int    SN_PIPE;

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
extern BOARD	ANALYZER;
#pragma DATA_SECTION(ANALOGIO,"CFG")
extern BOARD	ANALOGIO;
#pragma DATA_SECTION(DISPLAY,"CFG")
extern BOARD	DISPLAY;
#pragma DATA_SECTION(uP,"CFG")
extern BOARD	uP;
#pragma DATA_SECTION(POWER,"CFG")
extern BOARD	POWER;
#pragma DATA_SECTION(COMM,"CFG")
extern BOARD	COMM;
#pragma DATA_SECTION(MOTHERBOARD,"CFG")
extern BOARD	MOTHERBOARD;

#pragma DATA_SECTION(NaN_val,"CFG")
extern float    NaN_val;
#pragma DATA_SECTION(NaN_val_int,"CFG")
extern int    NaN_val_int;
#pragma DATA_SECTION(NaN_val_flt,"CFG")
extern int    NaN_val_flt;

#pragma DATA_SECTION(NUM_PREAMBLE_SM,"CFG")
extern int    NUM_PREAMBLE_SM;
#pragma DATA_SECTION(NUM_PREAMBLE_MS,"CFG")
extern int    NUM_PREAMBLE_MS;

#pragma DATA_SECTION(DIO_CLEAR_PORT_COUNT,"CFG")
extern COIL DIO_CLEAR_PORT_COUNT[8];
#pragma DATA_SECTION(DIO_SYSTEM_RESET,"CFG")
extern COIL DIO_SYSTEM_RESET;
#pragma DATA_SECTION(DIO_SYSTEM_RESTART,"CFG")
extern COIL DIO_SYSTEM_RESTART;
#pragma DATA_SECTION(DIO_BUILT_IN_TEST_ENABLE,"CFG")
extern COIL DIO_BUILT_IN_TEST_ENABLE;
#pragma DATA_SECTION(DIO_BUILT_IN_TEST,"CFG")
extern COIL DIO_BUILT_IN_TEST;
#pragma DATA_SECTION(DIO_TEMP_C,"CFG")
extern COIL DIO_TEMP_C;
#pragma DATA_SECTION(DIO_RESET_FACTORY_DEFAULTS,"CFG")
extern COIL DIO_RESET_FACTORY_DEFAULTS;
#pragma DATA_SECTION(DIO_RESTORE_USER_CONFIG,"CFG")
extern COIL DIO_RESTORE_USER_CONFIG;
#pragma DATA_SECTION(DIO_SAVE_USER_CONFIG,"CFG")
extern COIL DIO_SAVE_USER_CONFIG;
#pragma DATA_SECTION(DIO_SAVE_FACTORY_CONFIG,"CFG")
extern COIL DIO_SAVE_FACTORY_CONFIG;
#pragma DATA_SECTION(DIO_RESTORE_BASICS,"CFG")
extern COIL DIO_RESTORE_BASICS;

#pragma DATA_SECTION(DUMMY_COIL,"CFG")
extern COIL DUMMY_COIL; 

#pragma DATA_SECTION(Density_D0,"CFG")
extern VAR Density_D0;
#pragma DATA_SECTION(Density_D1,"CFG")
extern VAR Density_D1; 
#pragma DATA_SECTION(Density_D2,"CFG")
extern VAR Density_D2; 				 
#pragma DATA_SECTION(Density_D3,"CFG")
extern VAR Density_D3;					 
#pragma DATA_SECTION(Density_Cal,"CFG")
extern VAR Density_Cal;
#pragma DATA_SECTION(Density_Cal_Unit,"CFG")
extern REGVECT Density_Cal_Unit;
#pragma DATA_SECTION(DensityCFD_D1,"CFG")
extern float DensityCFD_D1;
#pragma DATA_SECTION(DensityCFT_D1,"CFG")
extern float DensityCFT_D1;
#pragma DATA_SECTION(DensityCF_D0,"CFG")
extern float DensityCF_D0;

#pragma DATA_SECTION(DIO_CAP_OIL,"CFG")
extern COIL DIO_CAP_OIL;
#pragma DATA_SECTION(DIO_CAP_WATER,"CFG")
extern COIL DIO_CAP_WATER;
#pragma DATA_SECTION(DIO_CLEAR_COUNTERS,"CFG")
extern COIL DIO_CLEAR_COUNTERS;
#pragma DATA_SECTION(DIO_TOTALIZER_CONTROL,"CFG")
extern COIL DIO_TOTALIZER_CONTROL;
#pragma DATA_SECTION(DIO_CCM_START,"CFG")
extern COIL DIO_CCM_START;

 
#pragma DATA_SECTION(DIO_MANUAL_RESET,"CFG")
extern COIL DIO_MANUAL_RESET;       
#pragma DATA_SECTION(DIO_TIME_RESET,"CFG")
extern COIL DIO_TIME_RESET;
#pragma DATA_SECTION(BOXCAR_RESET,"CFG")
extern BOOL BOXCAR_RESET;




 
#line 819
#pragma DATA_SECTION(REG_CCM_TEST_STAT,"CFG")         
extern VAR REG_CCM_TEST_STAT;                         

#pragma DATA_SECTION(DIO_CCM_PURGE_STAT,"CFG")
extern COIL DIO_CCM_PURGE_STAT; 

#pragma DATA_SECTION(REG_CCM_PURGE_STAT,"CFG")         
extern VAR REG_CCM_PURGE_STAT;                          

#pragma DATA_SECTION(DIO_CCM_PURGE_TIME,"CFG")
extern COIL DIO_CCM_PURGE_TIME;
#pragma DATA_SECTION(DIO_AUX_FREQ_MODE,"CFG")
extern int  DIO_AUX_FREQ_MODE;
#pragma DATA_SECTION(DIO_PORT_IGNORE_DATA_EXCEPTION,"CFG")
extern int  DIO_PORT_IGNORE_DATA_EXCEPTION;
#pragma DATA_SECTION(DIO_HART_5,"CFG")
extern COIL  DIO_HART_5;

#pragma DATA_SECTION(SIM_VTUNE,"CFG")
extern float SIM_VTUNE[4];
#pragma DATA_SECTION(SIM_FREQ,"CFG")
extern float SIM_FREQ[4];
#pragma DATA_SECTION(SIM_VINC,"CFG")
extern float SIM_VINC[4];
#pragma DATA_SECTION(SIM_VREF,"CFG")
extern float SIM_VREF[4];
#pragma DATA_SECTION(SIM_TEMPERATURE_EXTERNAL,"CFG")
extern float SIM_TEMPERATURE_EXTERNAL;
#pragma DATA_SECTION(USE_COR0_TEMP,"CFG")
extern int USE_COR0_TEMP;
#pragma DATA_SECTION(TEMPERATURE_TRIM_T0,"CFG")
extern float TEMPERATURE_TRIM_T0;
#pragma DATA_SECTION(TEMPERATURE_TRIM_T1,"CFG")
extern float TEMPERATURE_TRIM_T1;
#pragma DATA_SECTION(RTD_GAIN,"CFG")
extern float RTD_GAIN;
#pragma DATA_SECTION(RTD_CURRENT,"CFG")
extern float RTD_CURRENT;
#pragma DATA_SECTION(RTD_CAL_LO_OHM,"CFG")
extern float RTD_CAL_LO_OHM;
#pragma DATA_SECTION(RTD_CAL_HI_OHM,"CFG")
extern float RTD_CAL_HI_OHM;
#pragma DATA_SECTION(RTD_CAL_LO_V,"CFG")
extern float RTD_CAL_LO_V;
#pragma DATA_SECTION(RTD_CAL_HI_V,"CFG")
extern float RTD_CAL_HI_V;
#pragma DATA_SECTION(RTD_CAL,"CFG")
extern COIL RTD_CAL;
extern float RTD_R;

#pragma DATA_SECTION(REG_DUMMY,"CFG")
extern VAR REG_DUMMY;
#pragma DATA_SECTION(REG_STREAM_SELECT,"CFG")
extern VAR REG_STREAM_SELECT;
#pragma DATA_SECTION(REG_WATERCUT_ALARM_LO,"CFG")
extern VAR REG_WATERCUT_ALARM_LO;
#pragma DATA_SECTION(REG_WATERCUT_ALARM_HI,"CFG")
extern VAR REG_WATERCUT_ALARM_HI;

extern float WC;      

extern float REG_WATERCUT_RAW;
extern float REG_PV_AVG_24hr;
extern float REG_PV_AVG_5min;
extern float REG_PV_AVG_1sec;
extern int REG_PV_AVG_CNT;
#pragma DATA_SECTION(REG_WATERCUT,"CFG")
extern VAR REG_WATERCUT;

#pragma DATA_SECTION(REG_WATERCUT_DENSITY,"CFG")	 
extern VAR REG_WATERCUT_DENSITY;

#pragma DATA_SECTION(REG_NUM_SAMP,"CFG")
extern VAR REG_NUM_SAMP;
#pragma DATA_SECTION(REG_EM_PHASE_HOLD,"CFG")
extern VAR REG_EM_PHASE_HOLD;
extern long double TMP_VTUNE[4];
#pragma DATA_SECTION(REG_VINC,"CFG")
extern VAR REG_VINC[4];
extern long double TMP_VINC[4];
#pragma DATA_SECTION(REG_VREF,"CFG")
extern VAR REG_VREF[4];
extern long double TMP_VREF[4];
#pragma DATA_SECTION(REG_TEMPERATURE_USER,"CFG")
extern VAR REG_TEMPERATURE_USER;   
 
#pragma DATA_SECTION(REG_TEMPERATURE_AVG,"CFG")
extern VAR REG_TEMPERATURE_AVG;

#pragma DATA_SECTION(REG_TEMPERATURE_USER_ADJUST,"CFG")
extern VAR REG_TEMPERATURE_USER_ADJUST;
#pragma DATA_SECTION(REG_TEMPERATURE_EXTERNAL,"CFG")
extern VAR REG_TEMPERATURE_EXTERNAL;
#pragma DATA_SECTION(REG_FREQ,"CFG")
extern VAR REG_FREQ[4];
#pragma DATA_SECTION(REG_FREQ_O,"CFG")
extern VAR REG_FREQ_O;
#pragma DATA_SECTION(REG_VINC_O,"CFG")
extern VAR REG_VINC_O;
#pragma DATA_SECTION(REG_VREF_O,"CFG")
extern VAR REG_VREF_O;
#pragma DATA_SECTION(REG_FREQ_W,"CFG")
extern VAR REG_FREQ_W;
#pragma DATA_SECTION(REG_VINC_W,"CFG")
extern VAR REG_VINC_W;
#pragma DATA_SECTION(REG_VREF_W,"CFG")
extern VAR REG_VREF_W;
extern long double	TMP_TEMP;    

extern long double	AVG_TEMP;  
extern long double		SUM_TEMP;     
extern unsigned int		N_TEMP;      

#pragma DATA_SECTION(REG_PHASE_HOLD_CYCLES,"CFG")         
extern VAR REG_PHASE_HOLD_CYCLES;                        
extern unsigned int cycles;                  
extern unsigned int previous_phase;          
extern unsigned int phase;                   
extern unsigned int phase_rollover_count;       

extern unsigned int N_WC;        
extern float WC_SAMPLE[30];      
extern float WC_SUM;                 
#pragma DATA_SECTION(REG_WC_NUM_SAMPLES,"CFG")         
extern VAR REG_WC_NUM_SAMPLES;                        

  
extern unsigned int		PORT2_LIQ_TEMP; 
extern unsigned int		PORT2_GAS_TEMP;  
extern unsigned int		PORT3_TEMP;   
#pragma DATA_SECTION(MM_LIQ_fail,"CFG")
extern COIL MM_LIQ_fail;    
#pragma DATA_SECTION(MM_GAS_fail,"CFG")
extern COIL MM_GAS_fail;
#pragma DATA_SECTION(Rosemount_fail,"CFG")
extern COIL Rosemount_fail; 

#pragma DATA_SECTION(GAS_DENSITY_INPUT_ENABLED,"CFG")
extern int GAS_DENSITY_INPUT_ENABLED;              

#pragma DATA_SECTION(RESET_AT_PURGE,"CFG")
extern int RESET_AT_PURGE;                       

 
extern unsigned int N_FREQ;


#pragma DATA_SECTION(HSALT_FREQ_TRIGGER,"CFG")
extern COIL HSALT_FREQ_TRIGGER;   
#pragma DATA_SECTION(REG_FREQ_VARIANCE_RATIO,"CFG")        
extern VAR REG_FREQ_VARIANCE_RATIO;

extern float TEMP_SAMPLE;
extern float LAST_TEMP_RESET;
#pragma DATA_SECTION(REG_DELTA_TEMP,"CFG")        
extern VAR REG_DELTA_TEMP; 
#pragma DATA_SECTION(HSALT_TEMP_TRIGGER,"CFG")
extern COIL HSALT_TEMP_TRIGGER; 
   

#pragma DATA_SECTION(LOW_SALT_MODE,"CFG")
extern int LOW_SALT_MODE;                      

extern VAR REG_LOWSALT_THRESHOLD;                        

#pragma DATA_SECTION(EXTENDED_FW_VERSION_ENABLE,"CFG")
extern VAR EXTENDED_FW_VERSION_ENABLE;  



#pragma DATA_SECTION(GAS_ENTRAINED,"CFG")
extern COIL GAS_ENTRAINED;  
 
#line 1003
#pragma DATA_SECTION(GAS_ENTRAINED_DENS_DETECT,"CFG")
extern COIL GAS_ENTRAINED_DENS_DETECT;   
 
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
extern VAR boxcar_expire_val;

#pragma DATA_SECTION(boxcar_expire_val_minutes,"CFG")
extern VAR boxcar_expire_val_minutes;

extern int TIME_COUNT;

extern BOOL gas_routine_reset_needed;
extern BOOL boxcar_reset_needed;

extern double water_freq_in;

typedef struct 
{
	float freq;		
	int counter;	
					
} Boxcar_Var;


extern Boxcar_Var boxcar_list[4];		


 
typedef struct 
{
	float data[30];	
	int head;						
	int tail;						
	int length;						
	
	float average;					

} bubble_struct;


#pragma DATA_SECTION(bubble_new_length,"CFG")
extern VAR bubble_new_length;



extern bubble_struct bubble; 



typedef struct
{
	float data[90];	
	int head;						
	int tail;						
	int length;						
	
	float average;					

} pattern_struct;

#pragma DATA_SECTION(pattern_new_length,"CFG")
extern VAR pattern_new_length;


extern pattern_struct pattern; 





#pragma DATA_SECTION(RUSS,"CFG")        
extern BOOL RUSS;

#pragma DATA_SECTION(RUSS_TBL_LEN,"CFG") 
extern int RUSS_TBL_LEN;

 
#pragma DATA_SECTION(REG_BULK_LEVEL,"CFG")        
extern VAR REG_BULK_LEVEL;
#pragma DATA_SECTION(BULK_LEVEL_ENABLED,"CFG")
extern COIL BULK_LEVEL_ENABLED;
    
 
#pragma DATA_SECTION(OIL_PHASE_ONLY,"CFG")
extern COIL OIL_PHASE_ONLY;
#pragma DATA_SECTION(WATER_PHASE_ONLY,"CFG")
extern COIL WATER_PHASE_ONLY;
     

 
extern BOOL TRIM_RTD_LO;
extern BOOL TRIM_RTD_HI;   

    
#pragma DATA_SECTION(CAP_WATER_STOP,"CFG")
extern COIL CAP_WATER_STOP;   
#pragma DATA_SECTION(CAP_OIL_STOP,"CFG")
extern COIL CAP_OIL_STOP;

extern long double TMP_FREQ[4];

#pragma DATA_SECTION(REG_FREQ_OIL_LO,"CFG")
extern VAR REG_FREQ_OIL_LO;
#pragma DATA_SECTION(REG_FREQ_OIL_HI,"CFG")
extern VAR REG_FREQ_OIL_HI;
#pragma DATA_SECTION(REG_FREQ_WATER_LO,"CFG")
extern VAR REG_FREQ_WATER_LO;
#pragma DATA_SECTION(REG_FREQ_WATER_HI,"CFG")
extern VAR REG_FREQ_WATER_HI;
#pragma DATA_SECTION(REG_VTUNE_SET,"CFG")
extern VAR REG_VTUNE_SET[4];
#pragma DATA_SECTION(REG_VTUNE,"CFG")
extern VAR REG_VTUNE[4];
#pragma DATA_SECTION(REG_SALINITY,"CFG")
extern VAR REG_SALINITY;
#pragma DATA_SECTION(REG_OIL_ADJ,"CFG")
extern VAR REG_OIL_ADJ;
#pragma DATA_SECTION(REG_WATER_ADJ,"CFG")
extern VAR REG_WATER_ADJ;
#pragma DATA_SECTION(REG_WATER_INDEX,"CFG")
extern VAR REG_WATER_INDEX;
#pragma DATA_SECTION(REG_OIL_INDEX,"CFG")
extern VAR REG_OIL_INDEX;
#pragma DATA_SECTION(REG_EMULSION_PHASE,"CFG")
extern VAR REG_EMULSION_PHASE;
#pragma DATA_SECTION(REG_CAL_OIL,"CFG")
extern VAR REG_CAL_OIL;
#pragma DATA_SECTION(REG_CAL_WATER,"CFG")
extern VAR REG_CAL_WATER;
#pragma DATA_SECTION(OIL_P0,"CFG")
extern VAR OIL_P0;
#pragma DATA_SECTION(OIL_P1,"CFG")
extern VAR OIL_P1;


 
#pragma DATA_SECTION(Plot_Limit_Water_Freq_Low,"CFG")
extern VAR Plot_Limit_Water_Freq_Low;
#pragma DATA_SECTION(Plot_Limit_Water_Freq_High,"CFG")
extern VAR Plot_Limit_Water_Freq_High;
#pragma DATA_SECTION(Plot_Limit_Oil_Freq_Low,"CFG")
extern VAR Plot_Limit_Oil_Freq_Low;
#pragma DATA_SECTION(Plot_Limit_Oil_Freq_High,"CFG")
extern VAR Plot_Limit_Oil_Freq_High;
#pragma DATA_SECTION(Plot_Limit_Temp_Low,"CFG")
extern VAR Plot_Limit_Temp_Low;
#pragma DATA_SECTION(Plot_Limit_Temp_High,"CFG")
extern VAR Plot_Limit_Temp_High;
#pragma DATA_SECTION(Plot_Limit_Watercut_Low,"CFG")
extern VAR  Plot_Limit_Watercut_Low;
#pragma DATA_SECTION(Plot_Limit_Watercut_High,"CFG")
extern VAR  Plot_Limit_Watercut_High;
#pragma DATA_SECTION(Plot_Limit_Oil_RP_Low,"CFG")
extern VAR Plot_Limit_Oil_RP_Low;
#pragma DATA_SECTION(Plot_Limit_Oil_RP_High,"CFG")
extern VAR Plot_Limit_Oil_RP_High;
#pragma DATA_SECTION(Plot_Limit_Water_RP_Low,"CFG")
extern VAR Plot_Limit_Water_RP_Low;
#pragma DATA_SECTION(Plot_Limit_Water_RP_High,"CFG")
extern VAR Plot_Limit_Water_RP_High;
 


#pragma DATA_SECTION(DIO_LOCK,"CFG")
extern COIL DIO_LOCK[4];
#pragma DATA_SECTION(REG_PW,"CFG")
extern int REG_PW[5];        
#pragma DATA_SECTION(REG_LOCK,"CFG")
extern VAR REG_LOCK[5];      
extern BOOL LOCKOUT;

extern int CURRENT_OSC;
#pragma DATA_SECTION(OSC,"CFG")
extern int OSC[4];
#pragma DATA_SECTION(ENABLED,"CFG")
extern int ENABLED[4];
#pragma DATA_SECTION(EXP_FREQ,"CFG")
extern float EXP_FREQ[4];
#pragma DATA_SECTION(STR_INIT,"CFG")
extern int STR_INIT[2];
#pragma DATA_SECTION(STR_VER,"CFG")
extern int STR_VER[1];
#pragma DATA_SECTION(STR_Copyright,"CFG")
extern int STR_Copyright[40/2];
#pragma DATA_SECTION(STR_Analyzer_Info,"CFG")
extern int STR_Analyzer_Info[20/2];
#pragma DATA_SECTION(STR_HART_Tag,"CFG")
extern int STR_HART_Tag[8/2];
#pragma DATA_SECTION(STR_HART_Tag_Long,"CFG")
extern int STR_HART_Tag_Long[32/2];
#pragma DATA_SECTION(STR_HART_Desc,"CFG")
extern int STR_HART_Desc[16/2];
#pragma DATA_SECTION(STR_HART_Date,"CFG")
extern int STR_HART_Date[4/2];
#pragma DATA_SECTION(STR_HART_Msg,"CFG")
extern int STR_HART_Msg[32/2];
#pragma DATA_SECTION(STR_ASSY_Date,"CFG")
 
extern int STR_ASSY_Date[16/2];   
#pragma DATA_SECTION(CRC_BOOT,"CFG")
extern unsigned int CRC_BOOT;
#pragma DATA_SECTION(CRC_APP,"CFG")
extern unsigned int CRC_APP;
#pragma DATA_SECTION(CRC_INIT,"CFG")
extern unsigned int CRC_INIT;
#pragma DATA_SECTION(CRC_FAST,"CFG")
extern unsigned int CRC_FAST;

#pragma DATA_SECTION(REG_ADC,"CFG")
extern VAR REG_ADC[12];

#pragma DATA_SECTION(REG_DAC,"CFG")
extern VAR REG_DAC[12];

#pragma DATA_SECTION(ADC_TRIM_F_0,"CFG")
extern float ADC_TRIM_F_0[12];
#pragma DATA_SECTION(ADC_TRIM_F_1,"CFG")
extern float ADC_TRIM_F_1[12];
#pragma DATA_SECTION(ADC_TRIM_I_0,"CFG")
extern int ADC_TRIM_I_0[12];
#pragma DATA_SECTION(ADC_TRIM_I_1,"CFG")
extern int ADC_TRIM_I_1[12];

#pragma DATA_SECTION(DAC_TRIM_F_0,"CFG")
extern float DAC_TRIM_F_0[12];
#pragma DATA_SECTION(DAC_TRIM_F_1,"CFG")
extern float DAC_TRIM_F_1[12];
#pragma DATA_SECTION(DAC_TRIM_I_0,"CFG")
extern int DAC_TRIM_I_0[12];
#pragma DATA_SECTION(DAC_TRIM_I_1,"CFG")
extern int DAC_TRIM_I_1[12];

#pragma DATA_SECTION(FREQ_FACTOR,"CFG")
extern float FREQ_FACTOR;

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
extern RELAYDATA RLY[2];


#pragma DATA_SECTION(VARUSER,"CFG")
extern VAR VARUSER[5];


#pragma DATA_SECTION(SPAD,"CFG")
extern int SPAD[50];

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
extern CORIOLIS COR[5];

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
extern PRESSURE PRESS[3];

typedef struct 	{
					float	T;
					float	etc0;
					float	etc1;
					float	etc2;
					float	etc3;
					float	etc4;
	    		} TMPT;
extern TMPT TMPTRANS[3];

#pragma DATA_SECTION(USE_PDI_WATERCUT,"CFG")
extern	COIL USE_PDI_WATERCUT;
#pragma DATA_SECTION(CALC_WC_DENSITY,"CFG")
extern	COIL CALC_WC_DENSITY;



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
extern FLOW_COMP FC[3];

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
extern ALYESKA_STRUCT ALYESKA;

extern float compatibility_dummy;


		 
#line 1578
#pragma DATA_SECTION(ALFAT_RX,"internal_RAM")
extern	char	ALFAT_RX[128]; 

#pragma DATA_SECTION(ALFAT_TX,"internal_RAM")
extern	char	ALFAT_TX[300]; 

#pragma DATA_SECTION(SIZE_ALFAT_TX,"internal_RAM")
extern int		SIZE_ALFAT_TX; 

#pragma DATA_SECTION(LOG_STATUS,"CFG")
extern int		LOG_STATUS; 

#pragma DATA_SECTION(ALFAT_NO_ERROR,"internal_RAM")
extern int		ALFAT_NO_ERROR;

#pragma DATA_SECTION(ALFAT_INIT_ALL,"internal_RAM")
extern int		ALFAT_INIT_ALL;

#pragma DATA_SECTION(ALFAT_USB_DETECTED,"CFG")
extern COIL ALFAT_USB_DETECTED;

#pragma DATA_SECTION(ALFAT_USB_MOUNTED,"CFG")
extern COIL ALFAT_USB_MOUNTED;

#pragma DATA_SECTION(ALFAT_STATUS_REG,"internal_RAM")
extern	unsigned int 	ALFAT_STATUS_REG;

#pragma DATA_SECTION(ALFAT_INITIALIZED,"CFG")
extern	unsigned int 	ALFAT_INITIALIZED;

#pragma DATA_SECTION(ALFAT_LOG_DAY,"CFG")
extern	unsigned int 	ALFAT_LOG_DAY; 

#pragma DATA_SECTION(ALFAT_WRITE_HEADER,"CFG")
extern	unsigned int 	ALFAT_WRITE_HEADER;

#pragma DATA_SECTION(ALFAT_APPEND_LF,"CFG")
extern	BOOL 	ALFAT_APPEND_LF;

#pragma DATA_SECTION(BEGIN_ALFAT_LOGGING,"CFG")
extern COIL BEGIN_ALFAT_LOGGING;

#pragma DATA_SECTION(REG_ALFAT_LOG_PERIOD,"CFG")
extern VAR REG_ALFAT_LOG_PERIOD;



	
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
extern HS_STRUCT HSALT;

#pragma DATA_SECTION(Hsalt_Min_WC,"CFG")
extern VAR Hsalt_Min_WC;

 
#pragma DATA_SECTION(AVG_RESET,"CFG")
extern COIL AVG_RESET;

#line 1680
extern void Setup_Basics(void);

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

#line 32 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\MISC.H"
#pragma CODE_SECTION(Initialize_Periodic_Events,"initialization")
#pragma CODE_SECTION(Calc_CRC,"initialization")



 void Initialize_Periodic_Events(void);
 unsigned int Calc_CRC(unsigned int* s, unsigned int n);

 int FS(VAR* v);
 int FS2(VAR* v, VAR* low_plot, VAR* high_plot); 
 void CCM_START(void);
 void CCM_TESTING(void);
 void CCM_PURGING(void);



 void Begin_Alfat_Logging(COIL* c);

 void Alfat_Change_Log_Period(COIL* c);

 int Alfat_Map_Var(int index);

 unsigned int BCD_to_Int(unsigned char bcd_val);

 char Hex_to_ASCII(char hex_val);

 void Hex32_to_String(char out_string[], unsigned int hex_val);

 unsigned int ASCII_to_Hex(char ascii_val);

 void Alfat_Wait_For_Write(void);

 void Alfat_Get_Version_Vector(void);

 void Alfat_Get_Version(void);

 void Alfat_Init_RTC(void);

 void Alfat_Set_Time_Date_Vector(void);

 void Alfat_Set_Time_Date(void);

 void Alfat_Get_Time_Vector(void);

 void Alfat_Get_Time(void);

 void Alfat_Get_Date_Vector(void);

 void Alfat_Get_Date(void);

 void Alfat_Print_Time_Date(int handle);

 void Alfat_Get_Status_Reg_Vector(void);

 void Alfat_Get_Status_Reg(void);

 void Alfat_Init_USB_Vector(void);

 void Alfat_Init_USB(void);

 void Alfat_Open_Append(int handle, char full_path[]);

 void Alfat_Open_Append_Vector(void);

 void Alfat_Close(int handle);

 void Alfat_Flush(int handle);

 void Alfat_Write(int handle, int num_bytes, int append_linefeed);

 void Alfat_Write_Vector(void);

 void Alfat_Init_All(void);

 void Alfat_Log_Vars(void);


 
#line 135
 void Set_Class_Units_AO(int id, int i);
 void Set_Class_Units_AO1(int id);
 void Set_Class_Units_AO2(int id);
 void Set_Class_Units_AO3(int id);
 void Set_Class_Units_AO4(int id);
 void Set_Class_Units_AO5(int id);
 void Set_Class_Units_AO6(int id);
 void Set_Class_Units_AO7(int id);
 void Set_Class_Units_AO8(int id);
 void Set_Class_Units_AO9(int id);
 void Set_Class_Units_AI1(int id);
 void Set_Class_Units_AI2(int id);
 void Set_Class_Units_AI3(int id);
 void Set_Class_Units_AI4(int id);
 void Set_Class_Units_AI5(int id);
 void Set_Class_Units_AI(int id, int i);
 void Set_Class_Units_Pulse(int id, int i);
 void Set_Class_Units_Pulse1(int id);
 void Set_Class_Units_Pulse2(int id);
 void Set_Class_Units_Pulse3(int id);
 void Set_Class_Units(int id);
 void Set_RLY_Units(int id);
 void Set_Units(int id);
 void Set_Pulse_Units(int id);
 int Span(float v, float min2, float max2, int mini, int maxi);
 void HSALT_CLEAR(void);
 void Set_Density_Cal_Unit(int id);
 void PDI_Density_Correction(VAR* v);
 void PDI_Density_Adj(VAR* v);
 void Set_FC_Units(int id);

 void Accum_Fractional_Oil(long double* o);
 void Accum_Fractional_Water(long double* w);

 void Accumulate_Gas(void);
 void Accumulate(VAR* v);
 void Calibrate_RTD(void);
 void Disable_Heater(void);
 void Poll(void);
 void STATUS_LED_off(void);
 void STATUS_LED_on(void);
 void Copy_CAPDATA(CAPDATA* p, BOOL to_coeff, BOOL clr);
 void Set_Density_Correction(int id);
 void Reset_IDEC(int id);
 void Set_IDEC_Port(int id);
 void Set_Time(int id);
 void CCM_Record_Viewer(int id);
 void VAR_SET_STR(VAR* v, unsigned int ui);
 void VAR_SET_STR_DV(int id);
 void VAR_SET_STR_DVIN(int id);
 void Refresh_IDEC_Time(void);
 void Calibrate_OIL(VAR* v);
 void Calibrate_WATER(VAR* v);
 double sigfig (double v, int n);
 double round (double v, int n);
 double truncate (double v, int n);
 void Check_Zero(void);
 void Zero_FC1(void);
 void Zero_FC2(void);
 void Zero_FC3(void);
 void Disable_PDI_WC_Mode(int id);
 void Disable_WC_Density_Mode(int id);
 void Clear_Accumulator(int n);
 void Clear_Accumulators(int id);
 void Totalizer_Control(int id);
 void Update_Relays(void);
 void SET_BASICS(void);
 void BEEP_OFF(void);
 void BEEP_ON(void);
 void CLEAR_LOCKOUT(void);
 void SAVE(void);
 void Submit_Setup_Basics(void);
 void Submit_SELF_TEST(void);
 void Submit_Reset(void);
 void Submit_Serial_Defaults(void);
 void Serial_Defaults(void);
 void Submit_Restart(void);
 void Submit_Save(void);
 void Submit_Restore_CFG_FACTORY(void);
 void Submit_Restore_CFG_USER(void);
 void Submit_Write_CFG_FACTORY(void);
 void Submit_Write_CFG_USER(void);

 void Freq_oil_plot_min(VAR* v);
 void Freq_oil_plot_max(VAR* v);
 void Freq_water_plot_min(VAR* v);
 void Freq_water_plot_max(VAR* v);
 void Temp_plot_min(VAR* v);
 void Temp_plot_max(VAR* v);
 void Watercut_plot_min(VAR* v);
 void Watercut_plot_max(VAR* v);
 void Oil_RP_plot_min(VAR* v);
 void Oil_RP_plot_max(VAR* v);
 void Water_RP_plot_min(VAR* v);
 void Water_RP_plot_max(VAR* v);



 void CLEAR_PORT_COUNT(int id);

 void CopyTempVars(void);
 void Periodic_Accumulate(void);
 void Sampling_Error(void);
 void Read_RTC(void);
 void Update_i_Log_Var(void);
 void PVAVG24(void);




 
 void Calibrate_HSALT(long double *p);


 void PutInt(int i, unsigned char* p, int* j);
 void GetInt(int* i, unsigned char* p, int* j);
 void PutFlt(float f, unsigned char* p, int* j);
 void GetFlt(float* f, unsigned char* p, int* j);
 void PutCRC(unsigned char* p);
 unsigned int CRC16_bytes(unsigned char* s, int n);
 BOOL M24C02_Record(BOOL read, int addr, unsigned char* p);

 TPKT TMR_GET_uP_CONFIG;
 void Submit_GET_uP_CONFIG(void);
 void GET_uP_CONFIG(void);

 TPKT TMR_STORE_uP_CONFIG;
 void Submit_STORE_uP_CONFIG(void);
 void STORE_uP_CONFIG(void);

 TPKT TMR_GET_COMM_CONFIG;
 void Submit_GET_COMM_CONFIG(void);
 void GET_COMM_CONFIG(void);

 TPKT TMR_STORE_COMM_CONFIG;
 void Submit_STORE_COMM_CONFIG(void);
 void STORE_COMM_CONFIG(void);

 TPKT TMR_GET_ANALYZER_CONFIG;
 void Submit_GET_ANALYZER_CONFIG(void);
 void GET_ANALYZER_CONFIG(void);

 TPKT TMR_STORE_ANALYZER_CONFIG;
 void Submit_STORE_ANALYZER_CONFIG(void);
 void STORE_ANALYZER_CONFIG(void);

 TPKT TMR_GET_POWER_CONFIG;
 void Submit_GET_POWER_CONFIG(void);
 void GET_POWER_CONFIG(void);

 TPKT TMR_STORE_POWER_CONFIG;
 void Submit_STORE_POWER_CONFIG(void);
 void STORE_POWER_CONFIG(void);

 TPKT TMR_GET_ANALOGIO_CONFIG;
 void Submit_GET_ANALOGIO_CONFIG(void);
 void GET_ANALOGIO_CONFIG(void);

 TPKT TMR_STORE_ANALOGIO_CONFIG;
 void Submit_STORE_ANALOGIO_CONFIG(void);
 void STORE_ANALOGIO_CONFIG(void);

 TPKT TMR_GET_MOTHERBOARD_CONFIG;
 void Submit_GET_MOTHERBOARD_CONFIG(void);
 void GET_MOTHERBOARD_CONFIG(void);

 TPKT TMR_STORE_MOTHERBOARD_CONFIG;
 void Submit_STORE_MOTHERBOARD_CONFIG(void);
 void STORE_MOTHERBOARD_CONFIG(void);

 TPKT TMR_GET_DISPLAY_CONFIG;
 void Submit_GET_DISPLAY_CONFIG(void);
 void GET_DISPLAY_CONFIG(void);

 TPKT TMR_STORE_DISPLAY_CONFIG;
 void Submit_STORE_DISPLAY_CONFIG(void);
 void STORE_DISPLAY_CONFIG(void);

 TPKT TMR_PVAVG;
 TPKT TMR_iLV;
 TPKT TMR_RTC_UPDATE;
 TPKT TMR_CCM_PURGE;
 TPKT TMR_CCM_TEST;
 TPKT TMR_SAMPLE_ERROR;
 TPKT TMR_PERIODIC_ACCUM;
 TPKT TMR_SERDEF;
 TPKT TMR_LEDON;
 TPKT TMR_LEDOFF;
 TPKT TMR_CHECK_ZERO;
 TPKT TMR_UPDATE_RELAYS;
 TPKT TMR_SET_CURRENT;
 TPKT TMR_ADC_UPDATE;
 TPKT TMR_PULSE_UPDATE;
 TPKT TMR_MENU_REFRESH;
 TPKT TMR_STAT;
 TPKT TMR_DATALOG;
 TPKT TMR_DATALOG_USER;
 TPKT TMR_DATALOG_COUNTERS;
 TPKT TMR_CLEAR_USER_LOG_EVENT_FLAG;
 TPKT TMR_CLEAR_SYS_LOG_EVENT_FLAG;
 TPKT TMR_CLEAR_LOCKOUT;
 TPKT TMR_BEEP_OFF;
 TPKT TMR_SET_BASICS;
 TPKT TMR_RESET;
 TPKT TMR_RESTART;
 TPKT TMR_SAVE_CFGF;
 TPKT TMR_SAVE_CFGU;
 TPKT TMR_RESTORE_CFGF;
 TPKT TMR_RESTORE_CFGU;
 TPKT TMR_SELF_TEST;
 TPKT TMR_DAMP;
 TPKT TMR_T;
 TPKT TMR_REFRESH_TIME;
 TPKT TMR_OSC_DELAY_LONG;
 TPKT TMR_OSC_DELAY_SHORT;
 TPKT TMR_POLL;
 TPKT TMR_SELFTEST;

 TPKT TMR_ALFAT_LOG;

 void Unpack_ASCII(unsigned int* s, unsigned int* d, int np);
 void Pack_ASCII(unsigned int* s, unsigned int* d, int n);
 void Put_IEEE(int id, VAR* v);
 void Timer_T(void);
 void Setup_Sample(void);
 void STAT(void);
 void RESEARCH(void);
 void Send_Sample(int VT);
 long double Interpolate(long double w1, long double t1, long double w2, long double t2, long double t);
 void Set_Temperature_Unit(void);
 BOOL Write_CFG_USER(void);
 BOOL Write_CFG_FACTORY(void);
 int  Restore_CFG(void);
 void System_Reset(void);
 void System_Restart(void);
 void Restore_CFG_FACTORY(void);
 void Restore_CFG_USER(void);
 BOOL Set_Research_Mode(void);
 void PV_AVERAGE(VAR* v);
 void UnLock_P(int n);
 void UnLock_P0(VAR* v);
 void UnLock_P1(VAR* v);
 void UnLock_P2(VAR* v);
 void UnLock_P3(VAR* v);
 void UnLock_P4(VAR* v);  
 void Detect_Current_Loop(void);
 void Set_ASCII_Temp_Unit(VAR* v);
 void Capture_Watercut_Water(int id);
 void Capture_Watercut_Oil(int id);

 void Reset_PID_Bias(VAR* v);

 void Mirror_To_Stream_Table(VAR* v);
 void Mirror_From_Stream_Table(VAR* v);
 float RESEARCH_VTUNE[4];
 float RESEARCH_ENABLED[4];
 float RESEARCH_OSC[4];
 float RESEARCH_GATE;
 float RESEARCH_PS;
 BOOL Get_CAPDATA(CAPDATA* p);
 void PULSE_UPDATE(void);

 void CORIOLIS_ZERO1(void);
 void CORIOLIS_ZERO2(void);
 void CORIOLIS_ZERO3(void);
 void CORIOLIS_ZERO4(void);
 void CORIOLIS_CFG(VAR* v); 
 void CORIOLIS_INT_CFG(VAR* v);   

 BOOL Is_Expired(int boxcar_counter);
 void Swap_Boxcar_Vals(int x, int y);
 void Check_Boxcar_Limits();
 inline void Reset_Boxcar();
 inline void Update_Boxcar();
 inline void	Update_Pattern();
 inline void	Update_Bubble();

#line 29 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\API.H"
extern void API_VCF(FLOW_COMP* f, float* VCFw, float* VCFo);
extern double API_15C_PT(const int fcidx, const double r, int* k_set);
extern double API_60F_PT(const int fcidx, const double r, int* k_set);
extern double API_PT_ST(const int fcidx, const double r, const BOOL F60, const BOOL RET_VCF);
extern double API_to_kgm3(const double r);
extern double kgm3_to_API(const double r);
extern void API_STATUS(const int fcidx, const BOOL type);

#line 22 "misc.c"
void Poll(void)
{   



	int 			ot_index;
	int 			cf_index;   
    unsigned int	WC_STAT;
	unsigned int	i, j, k, l ,recalc_count;  				  
	
    int*			vect;
    int             MAX_EXCEED_SPAN = 0;   
    int				u, uSTo, uSTw;
    int				mode;
    float			thresh;
    float			watercutThreshold;
	float 			OIL_CALC_DEFAULT;
	float			osv;
	float			oden, wden, den;            
	long double		ot[2];                      
	long double		wt[4];                      
	long double		wc[2];                      
	long double		w;                                                       
	long double		w_d;
	long double		w_o;
	long double		s[3];
	
	long double		t, sg, slt, wfreq, tmp_f, next_lowest;
	long double		w_water, w_oil, wc_lowsalt;   
	long double     WC_previous;               
	long double 	t_adj_calc, t_delta_temp;  
    BOOL			FULL_SAMPLE, stat, error, is_valid_type;
	BOOL			hsalt_recalc_needed = 0;
	char fp_name[50];
	
	if ((VT_SELECT>=4) || (VT_SELECT<0))
	{ 
		VT_SELECT 		= 0;
		DIAGNOSTICS[1] |= 0x0010;
		
		Setup_Sample();
		
		return;
	}

	 
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (DIO_RESEARCH_MODE.val && RESEARCH_FORCE_MODE) stat = 1;
	else stat = 0;
	
	for (i=0;i<8;i++) PORT[i].BUSY = stat;
	
	PORT[PDI_id].BUSY 	 = 0; 
	PORT[IDEC_PORT].BUSY = 0; 
	{asm("	pop		ST			");};

	if (GATE_TIMEOUT && (READ_ADC_INPUTS>=3))
	{
		Read_RTC();

		sg = 1.0;
		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		SAMPLE_PENDING = 0;
		
		Timer_Insert(&TMR_SAMPLE_ERROR,0,3);

		FULL_SAMPLE = 0;
        error 		= 0;
        w 			= 0.0;
		WC_STAT 	= 0;               
        
		if (DEMO) 
			mode = DEMO_ANALYZER_MODE.val;
		else 
			mode = ANALYZER_MODE.val;

		if ((mode & 0x100) || DEMO)
		{ 
			TMP_TEMP 			 = SIM_TEMPERATURE_EXTERNAL;
			TMP_VTUNE[VT_SELECT] = SIM_VTUNE[VT_SELECT];
			TMP_VINC[VT_SELECT]  = SIM_VINC[VT_SELECT];
			TMP_VREF[VT_SELECT]  = SIM_VREF[VT_SELECT];
			TMP_FREQ[VT_SELECT]  = SIM_FREQ[VT_SELECT];
		}
		else	
		{ 
			if (USE_COR0_TEMP)
			{ 
				TMP_TEMP = Convert(REG_TEMPERATURE_EXTERNAL.class, COR[0].u_T, 32, COR[0].T, 0, REG_TEMPERATURE_EXTERNAL.aux);
			    
			     
			    if (AVG_RESET.val==1) 
			    {	
			    	N_TEMP	 = 0; 
			    	SUM_TEMP = 0;
			    }                  
				
				N_TEMP++; 
				SUM_TEMP	 += TMP_TEMP; 
				AVG_TEMP	  = SUM_TEMP/N_TEMP;           
                AVG_RESET.val = 0;
                 
			}
			else
			{    
			    TMP_TEMP = REG_ADC[2].val2;	   
			    
			     
			    if (AVG_RESET.val==1) 
			    {
			    	N_TEMP=0; 
			    	SUM_TEMP=0;
			    }                  
				
				N_TEMP++; 
				SUM_TEMP	 += TMP_TEMP; 
				AVG_TEMP	  = SUM_TEMP/N_TEMP;           
                AVG_RESET.val = 0;
                 
			}

			if (SA) 
				TMP_VTUNE[VT_SELECT] = REG_VTUNE_SET[VT_SELECT].calc_val;
			else
			{ 
				TMP_VTUNE[VT_SELECT] = REG_ADC[3].calc_val;
				
				if (!EXTUNE) 
					TMP_VTUNE[VT_SELECT] -= REG_ADC[4].calc_val;
			}
      
			TMP_VINC[VT_SELECT] = REG_ADC[1].calc_val;
			TMP_VREF[VT_SELECT] = REG_ADC[0].calc_val;
			
			if (!SA) 
				TMP_VINC[VT_SELECT] -= REG_ADC[4].calc_val;
            
			if (!SA) 
				TMP_VREF[VT_SELECT] -= REG_ADC[4].calc_val;
		}

		if (DIO_RESEARCH_MODE.val)
		{ 
			CopyTempVars();

			 
			if (OSC[VT_SELECT])
			{ 
				VAR_Update(&REG_VINC_W, REG_VINC[VT_SELECT].calc_val, 0, 0);
				VAR_Update(&REG_VREF_W, REG_VREF[VT_SELECT].calc_val, 0, 0);
				VAR_Update(&REG_FREQ_W, REG_FREQ[VT_SELECT].calc_val, 0, 0);
				
				IP_W   		= REG_VINC[VT_SELECT].val;
				i_IP_W 		= FS(&REG_VINC[VT_SELECT]);
				RP_W    	= REG_VREF[VT_SELECT].val;
				i_RP_W  	= FS(&REG_VREF[VT_SELECT]);
				IP_RP_W 	= IP_W/RP_W;
				DB_IP_RP_W  = 20.0*(log(IP_RP_W)/log(10.0));
				FREQ_W 		= REG_FREQ[VT_SELECT].val;
				i_FREQ_W 	= FS(&REG_FREQ[VT_SELECT]);
			}
			else
			{ 
				VAR_Update(&REG_VINC_O, REG_VINC[VT_SELECT].calc_val, 0, 0); 
				VAR_Update(&REG_VREF_O, REG_VREF[VT_SELECT].calc_val, 0, 0);
				VAR_Update(&REG_FREQ_O, REG_FREQ[VT_SELECT].calc_val, 0, 0);
				
				IP_O 		= REG_VINC[VT_SELECT].val;
				i_IP_O 		= FS(&REG_VINC[VT_SELECT]);
				RP_O 		= REG_VREF[VT_SELECT].val;
				i_RP_O 		= FS(&REG_VREF[VT_SELECT]);
				IP_RP_O 	= IP_O/RP_O;
				DB_IP_RP_O 	= 20.0*(log(IP_RP_O)/log(10.0));
				FREQ_O 		= REG_FREQ[VT_SELECT].val;
				i_FREQ_O 	= FS(&REG_FREQ[VT_SELECT]);
			}

			VAR_Update(&REG_WATERCUT, 0.0, 0, 0);
			
			i_WC = FS(&REG_WATERCUT);
			
			
			i_TEMP = FS(&REG_TEMPERATURE_USER); 
			
			 

			Send_Sample(VT_SELECT);
		}
		else
		{ 
			switch(mode&0xFF)
			{
				default:
				{
					FULL_SAMPLE = 1;
					CopyTempVars();
					VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);
					break;
				}
                case 2:
				{ 
					if (VT_SELECT != OSC_WATER_CALC) 
						break;

					FULL_SAMPLE = 1;
					CopyTempVars();
                    VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0);
		
					 
					DIAGNOSTICS[0] &= (0x0400 | 0x0800)^0xFFFF;
					
					if (REG_TEMPERATURE_EXTERNAL.STAT & 0x00000080)
					{
						DIAGNOSTICS[0] 			|= 0x0400;
						DIAGNOSTICS_ERROR_CODE   = 25;
					}
					else if (REG_TEMPERATURE_EXTERNAL.STAT & 0x00000040)
					{
						DIAGNOSTICS[0] 			|= 0x0800;
						DIAGNOSTICS_ERROR_CODE 	 = 26;
					}

					 
					DIAGNOSTICS[0] &= (0x0100 | 0x0200)^0xFFFF;
					
					if ((REG_FREQ[OSC_OIL_CALC].STAT & 0x00000080) || (REG_FREQ[OSC_WATER_CALC].STAT & 0x00000080))
					{
						DIAGNOSTICS[0] 			|= 0x0100;
						DIAGNOSTICS_ERROR_CODE 	 = 1;
					}
					else if ((REG_FREQ[OSC_OIL_CALC].STAT & 0x00000040) || (REG_FREQ[OSC_WATER_CALC].STAT & 0x00000040))
					{
						DIAGNOSTICS[0] 			|= 0x0200;
						DIAGNOSTICS_ERROR_CODE 	 = 1;
					}

					w  = COEFF_C0;
					w += COEFF_FA2  * REG_FREQ[OSC_OIL_CALC  ].calc_val * REG_FREQ[OSC_OIL_CALC].calc_val;
					w += COEFF_FA1  * REG_FREQ[OSC_OIL_CALC  ].calc_val;
					w += COEFF_FB2  * REG_FREQ[OSC_WATER_CALC].calc_val * REG_FREQ[OSC_WATER_CALC].calc_val;
					w += COEFF_FB1  * REG_FREQ[OSC_WATER_CALC].calc_val;
					w += COEFF_RPA2 * REG_VREF[OSC_OIL_CALC  ].calc_val * REG_VREF[OSC_OIL_CALC].calc_val;
					w += COEFF_RPA1 * REG_VREF[OSC_OIL_CALC  ].calc_val;
					w += COEFF_RPB2 * REG_VREF[OSC_WATER_CALC].calc_val * REG_VREF[OSC_WATER_CALC].calc_val;
					w += COEFF_RPB1 * REG_VREF[OSC_WATER_CALC].calc_val;
					w += COEFF_IPA2 * REG_VINC[OSC_OIL_CALC  ].calc_val * REG_VINC[OSC_OIL_CALC].calc_val;
					w += COEFF_IPA1 * REG_VINC[OSC_OIL_CALC  ].calc_val;
					w += COEFF_IPB2 * REG_VINC[OSC_WATER_CALC].calc_val * REG_VINC[OSC_WATER_CALC].calc_val;
					w += COEFF_IPB1 * REG_VINC[OSC_WATER_CALC].calc_val;
					w += COEFF_T2   * REG_TEMPERATURE_EXTERNAL.calc_val * REG_TEMPERATURE_EXTERNAL.calc_val;
					w += COEFF_T1	* REG_TEMPERATURE_EXTERNAL.calc_val;   
					
					 
					w += COEFF_D2	* FC[0].density.calc_val * FC[0].density.calc_val;

					
					REG_WATERCUT_RAW = w - REG_OIL_ADJ.calc_val; 
                    WC 				 = w;
                    break;
				}
                case 3:
				case 0:
				{
					if (VT_SELECT != OSC_OIL_CALC) break;

					FULL_SAMPLE = 1;
					CopyTempVars();
					
					
					t_adj_calc = Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, 
										 REG_TEMPERATURE_EXTERNAL.calc_unit, REG_TEMPERATURE_USER_ADJUST.val, 1, 
										 REG_TEMPERATURE_USER_ADJUST.aux);

					
	                t = REG_TEMPERATURE_EXTERNAL.calc_val+ t_adj_calc;

					
					thresh = (REG_FREQ[OSC_OIL_CALC].calc_val * OIL_P1.calc_val) + OIL_P0.calc_val;

					
					VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0);

					
					DIAGNOSTICS[0] &= (0x0400 | 0x0800)^0xFFFF;
						
					if (REG_TEMPERATURE_EXTERNAL.STAT & 0x00000080)
					{
						DIAGNOSTICS[0] |= 0x0400;
						DIAGNOSTICS_ERROR_CODE = 25;
					}
					else if (REG_TEMPERATURE_EXTERNAL.STAT & 0x00000040)
					{
						DIAGNOSTICS[0] |= 0x0800;
						DIAGNOSTICS_ERROR_CODE = 26;
					}

					DIAGNOSTICS[0] &= (0x0100 | 0x0200)^0xFFFF;
					
					if (REG_FREQ[OSC_OIL_CALC].STAT & 0x00000080)
					{
						DIAGNOSTICS[0] |= 0x0100;
						DIAGNOSTICS_ERROR_CODE = 1;
					}
					else if (REG_FREQ[OSC_OIL_CALC].STAT & 0x00000040)
					{
						DIAGNOSTICS[0] |= 0x0200;
						DIAGNOSTICS_ERROR_CODE = 1;
					}

					 
					oden = FC[0].density_oil.calc_val;
					wden = FC[0].density_water.calc_val;
					den = Convert(FC[0].density.class, FC[0].density.calc_unit, 92, FC[0].density.calc_val, 0, FC[0].density.aux);
					w_d  = 100.0 * (den - oden) / (wden - oden); 
					VAR_Update(&REG_WATERCUT_DENSITY, w_d, 0, 0);
					
#line 357
					if (TEMP_OIL_MAX && !error)
					{ 
						if (REG_VREF[OSC_OIL_CALC].calc_val > thresh)
						{
							for (i=1;i<TEMP_OIL_MAX;i++)
								if (t<TEMPS_OIL[i]) break;

							ot_index = 0;
							cf_index = i;

							for (;;)
							{
								ot[ot_index] = 
									COEFF_TEMP_OIL[cf_index][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
						   			COEFF_TEMP_OIL[cf_index][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
									COEFF_TEMP_OIL[cf_index][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
									COEFF_TEMP_OIL[cf_index][0];

								ot_index++;
								if (ot_index > 1) break;
								else cf_index--;
							}

                           	w = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[i-1], t);
                         	REG_WATERCUT_RAW = w;
                         	w += REG_OIL_ADJ.calc_val;

                            
                            
							
							
						    
							
							
							
							
							
							WC = w;

							
							OIL_CALC_DEFAULT = 37.0;
                            
							(OIL_CALC_CUTOFF > 0) ? (watercutThreshold = OIL_CALC_CUTOFF) : (watercutThreshold = OIL_CALC_DEFAULT);

							
							if (OIL_CALC_MODE == 0)
                            {
								REG_WATERCUT_RAW = w;
                            	w 				+= REG_OIL_ADJ.calc_val;
                            	WC 				 = w;
								break;
							}
							
							else
                            {
                                if (w <= watercutThreshold)
							    {
								    REG_WATERCUT_RAW = w;
                            	    w 				+= REG_OIL_ADJ.calc_val;
                            	    WC 				 = w;
								    break;
							    }
							    
							    else
							    {
								    for (i=1;i<TEMP_OIL_MAX;i++)
									    if (t<TEMPS_OIL[i+3]) break;

								    ot_index = 0;
								    cf_index = i+3;

								    for (;;)
								    {
									    ot[ot_index] = 
									    COEFF_TEMP_OIL[cf_index][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
						   			    COEFF_TEMP_OIL[cf_index][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
									    COEFF_TEMP_OIL[cf_index][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
									    COEFF_TEMP_OIL[cf_index][0];

									    ot_index++;
									    if (ot_index > 1) break;
									    else cf_index--;
								    }

                            	    w = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[i-1], t);
								    REG_WATERCUT_RAW = w;
                            	    w += REG_OIL_ADJ.calc_val;
                            	    WC = w;
								    break;
							    }
                            }
						}
						else
                    	{
                            
                            
 
#line 459
                            w = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00050000, 0, 0);
                                   
                            REG_WATERCUT_RAW = w;
                            WC               = w;
                            WC_STAT          = 1;

                            if ((mode&0xFF) == 3) VAR_Update(&REG_EMULSION_PHASE, 1.0, 0, 0);  

                            break;
						}
					}	
					else
					{
						WC_STAT          = 1;
                        w                = 0.0;
                        WC               = 0.0;
                        REG_WATERCUT_RAW = 0.0;
                        VAR_NaN(&REG_WATERCUT);
					}
				}
                case 4:
				case 1:
				case 6:
				{
					
					if (VT_SELECT != OSC_WATER_CALC) break; 

					FULL_SAMPLE = 1; 
                    CopyTempVars();
					thresh = (REG_FREQ[OSC_OIL_CALC].calc_val * OIL_P1.calc_val) + OIL_P0.calc_val;

                    
					t_adj_calc = Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, 
										 REG_TEMPERATURE_EXTERNAL.calc_unit, REG_TEMPERATURE_USER_ADJUST.val, 1, 
									 	 REG_TEMPERATURE_USER_ADJUST.aux);

					
	                t = REG_TEMPERATURE_EXTERNAL.calc_val+t_adj_calc;

					
					DIAGNOSTICS[0] &= (0x0400 | 0x0800)^0xFFFF;

					if (REG_TEMPERATURE_EXTERNAL.STAT & 0x00000080)  
					{
						DIAGNOSTICS[0] 			|= 0x0400;
						DIAGNOSTICS_ERROR_CODE 	 = 25;
					}
					else if (REG_TEMPERATURE_EXTERNAL.STAT & 0x00000040)
					{
						DIAGNOSTICS[0] 			|= 0x0800;
						DIAGNOSTICS_ERROR_CODE 	 = 26;
					}
					DIAGNOSTICS[0] &= (0x0100 | 0x0200)^0xFFFF;
					
					if ((REG_FREQ[OSC_OIL_CALC].STAT & 0x00000080) || (REG_FREQ[OSC_WATER_CALC].STAT & 0x00000080))
					{
						error 					 = 1;
						DIAGNOSTICS[0] 			|= 0x0100;
						DIAGNOSTICS_ERROR_CODE 	 = 1;
					}
					else if ((REG_FREQ[OSC_OIL_CALC].STAT & 0x00000040) || (REG_FREQ[OSC_WATER_CALC].STAT & 0x00000040))
					{
						error 					 = 1;
						DIAGNOSTICS[0] 			|= 0x0200;
						DIAGNOSTICS_ERROR_CODE 	 = 1;
					}

					if ((error) || ((HSALT.ENABLED.val==1) && (FC[0].FLOW_TOTAL.calc_val < HSALT.flow_threshold.val)))
					{
						VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);					
						break;
					}

					
					if((REG_WATERCUT_RAW <= 100)&&(REG_WATERCUT_RAW > 0)) WC_previous = REG_WATERCUT_RAW;
					
					
					oden = FC[0].density_oil.calc_val;
					wden = FC[0].density_water.calc_val;
					den = Convert(FC[0].density.class, FC[0].density.calc_unit, 92, FC[0].density.calc_val, 		0, FC[0].density.aux);
					w_d  = 100.0 * (den - oden) / (wden - oden); 
					
					VAR_Update(&REG_WATERCUT_DENSITY, w_d, 0, 0);
					
					 
					cycles++;

					if ((REG_FREQ[OSC_OIL_CALC].calc_val<REG_FREQ_OIL_LO.calc_val) 
					 || (REG_FREQ[OSC_OIL_CALC].calc_val>REG_FREQ_OIL_HI.calc_val) 
					 || (REG_VREF[OSC_OIL_CALC].calc_val > thresh)) phase = 0;
					else if ((REG_FREQ[OSC_WATER_CALC].calc_val>=REG_FREQ_WATER_LO.calc_val) 
						  && (REG_FREQ[OSC_WATER_CALC].calc_val<=REG_FREQ_WATER_HI.calc_val)) phase = 1;
					else	 
						VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);
					
					if (cycles == 1) previous_phase = phase;
					if (phase != previous_phase) phase_rollover_count++;
					if (cycles > REG_PHASE_HOLD_CYCLES.val)
					{
						cycles = 0;
						phase_rollover_count = 0;
					}
					
					if ((phase_rollover_count < 2) && (cycles == REG_PHASE_HOLD_CYCLES.val))
					{
						if((REG_FREQ[OSC_OIL_CALC].calc_val<REG_FREQ_OIL_LO.calc_val) 
						 || (REG_FREQ[OSC_OIL_CALC].calc_val>REG_FREQ_OIL_HI.calc_val) 
					   	 || (REG_VREF[OSC_OIL_CALC].calc_val > thresh) )
							VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0); 	 
						else if ((REG_FREQ[OSC_WATER_CALC].calc_val>=REG_FREQ_WATER_LO.calc_val) && 
								 (REG_FREQ[OSC_WATER_CALC].calc_val<=REG_FREQ_WATER_HI.calc_val))
							VAR_Update(&REG_EMULSION_PHASE, 1.0, 0, 0);			  
					} 
					      
					
                      
                    if (OIL_PHASE_ONLY.val)
                    {  	
                        WATER_PHASE_ONLY.val = 0;
                    	VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0); 
					}
                    if (WATER_PHASE_ONLY.val)
                    {  	
                    	OIL_PHASE_ONLY.val = 0;
						VAR_Update(&REG_EMULSION_PHASE, 1.0, 0, 0); 
					}
                     
                    
                     
#line 603
					if (REG_EMULSION_PHASE.val == 0)     
					{                        
						
						for (i=1;i<(TEMP_OIL_MAX-3);i++)         
							if (t<TEMPS_OIL[i]) break;

						ot_index = 0;
						cf_index = i;
						for (;;)
						{
							ot[ot_index] = 
								COEFF_TEMP_OIL[cf_index][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
						   		COEFF_TEMP_OIL[cf_index][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[cf_index][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[cf_index][0];

							ot_index++;
							if (ot_index > 1) break;
							else cf_index--;
						}

						w = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[i-1], REG_TEMPERATURE_EXTERNAL.calc_val);   

						
						if (w > Oil_Phase_Maximum.calc_val) w = Oil_Phase_Maximum.calc_val;  
						
						OIL_CALC_DEFAULT = 10.0;
						(OIL_CALC_CUTOFF > 0) ? (watercutThreshold = OIL_CALC_CUTOFF) : (watercutThreshold = OIL_CALC_DEFAULT);

						
                        if (OIL_CALC_MODE == 0)
						{ 
							REG_WATERCUT_RAW = w;
							w 				+= REG_OIL_ADJ.calc_val;
							WC 				 = w;
						}
						
                        else
						{
                            if (w<=watercutThreshold)
						    { 
							    REG_WATERCUT_RAW = w;
							    w 				+= REG_OIL_ADJ.calc_val;
							    WC 				 = w;
						    }
						    
						    else
						    {	 
							    
							    for (i=1;i<(TEMP_OIL_MAX-3);i++)    
								    if (t<TEMPS_OIL[i+3]) break;

							    ot_index = 0;
							    cf_index = i+3;
							    for (;;)
							    {
								    ot[ot_index] = 
								    COEFF_TEMP_OIL[cf_index][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
						   		    COEFF_TEMP_OIL[cf_index][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								    COEFF_TEMP_OIL[cf_index][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								    COEFF_TEMP_OIL[cf_index][0];

								    ot_index++;
								    if (ot_index > 1) break;
								    else cf_index--;
							    }

							    w = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[i-1], REG_TEMPERATURE_EXTERNAL.calc_val);

							    
							    if (w > Oil_Phase_Maximum.calc_val) w = Oil_Phase_Maximum.calc_val;

							    REG_WATERCUT_RAW = w;
							    w += REG_OIL_ADJ.calc_val;
							    WC = w;
						    }
                        }
					}
					 

				
					else if (REG_EMULSION_PHASE.val == 1)
					{ 
						                    
						wfreq = REG_FREQ[OSC_WATER_CALC].calc_val;
						water_freq_in = wfreq; 

						
						if(GAS_ENTRAINED.val)
						{	
							int field_H;
							field_H = STR_Analyzer_Info[3] & 0xFF;
							if ( (field_H != 0x41) && (field_H != 0x42) && (field_H != 0x43) && (field_H != 0x59))
							{
								
								GAS_ENTRAINED.val = 0;
								
								
								for (i=0; i<60; i++)
								{
									GAS_ROUTINE_ENABLE[i] = 0; 	
								}
							}
						}						

						if (HSALT.ENABLED.val==1)
						{
							t = 37.778;	 
       
							

							if (HSALT.Fmin < 0.0)
							{
								HSALT.Fmin = REG_FREQ[OSC_WATER_CALC].calc_val;
								
								HSALT.Dmin = FC[0].density.calc_val;
								HSALT.Dmax = FC[0].density.calc_val;
								
							}
							
							
							if (boxcar_reset_needed)
							{
								Reset_Boxcar();
								boxcar_reset_needed = 0;	
							}
							
							
							if (GAS_ENTRAINED.val || DIO_TIME_RESET.val)
							{
								Update_Boxcar();						
								if (boxcar_list[0].freq != HSALT.Fmin)	
								{
									HSALT.Fmin = boxcar_list[0].freq;	
									HSALT_FREQ_TRIGGER.val = 1;
								}
							}
							else
							{ 
								if (wfreq < HSALT.Fmin)	
									HSALT.Fmin = wfreq;				
							}
							
							
							if(GAS_ENTRAINED.val)	
							{ 
								if (gas_routine_reset_needed)	
								{ 
								
									
									for (i=0; i<30; i++)
									{
										bubble.data[i] = water_freq_in;
									}
									bubble.average = water_freq_in;
									bubble.head = 30 - 1;
									bubble.tail = 0;
									bubble.length = 30;

									for (i=0; i<90; i++)
									{
										pattern.data[i] = water_freq_in;
									}
									pattern.average = water_freq_in;
									pattern.head = 90 - 1;
									pattern.tail = 0;
									pattern.length = 90;
																	
									gas_routine_reset_needed = 0; 
									
								}
								
								else 
								{
														
									Update_Pattern();
									Update_Bubble();
								}
								
								
								if ((bubble.average - pattern.average) > 0.0) 
									wfreq = boxcar_list[0].freq + bubble.average - pattern.average;
								else	
									wfreq = boxcar_list[0].freq;

							}
							
							
							
						
							 
							 
							 
							t_adj_calc 		= Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, REG_TEMPERATURE_EXTERNAL.calc_unit, 
												  	  REG_TEMPERATURE_USER_ADJUST.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);
							TEMP_SAMPLE 	= REG_TEMPERATURE_EXTERNAL.calc_val +  t_adj_calc;		
							t_delta_temp 	= Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, REG_TEMPERATURE_EXTERNAL.calc_unit, 
												  	  REG_DELTA_TEMP.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);
							
							if( fabs(LAST_TEMP_RESET - TEMP_SAMPLE) >= t_delta_temp )				
								HSALT_TEMP_TRIGGER.val = 1;										

                             
														
							
							if(DIO_MANUAL_RESET.val || DIO_CLEAR_COUNTERS.val || HSALT_TEMP_TRIGGER.val || HSALT_FREQ_TRIGGER.val )		
							{ 																									
								
								
								if (DIO_MANUAL_RESET.val)
									Reset_Boxcar();		
								else if (HSALT_TEMP_TRIGGER.val)
									HSALT.Fmin = wfreq;	
								
								LAST_TEMP_RESET = TEMP_SAMPLE;                           
															
								 
								DIO_CAP_WATER.val = 0;							 
								
								Capture_Watercut_Water(0);  						 
								
								
								
								tmp_f = REG_FREQ[OSC_WATER_CALC].calc_val;			
								
								REG_FREQ[OSC_WATER_CALC].calc_val = HSALT.Fmin;		
																													
								VAR_Update(&REG_CAL_WATER, 99.9, 0, 1);				
								
								REG_FREQ[OSC_WATER_CALC].calc_val = tmp_f;			
								
								HSALT.CHANGED 			= 1;                          
								
								
								
								DIO_MANUAL_RESET.val	= 0;                         
								DIO_CLEAR_COUNTERS.val  = 0;                         
								HSALT_FREQ_TRIGGER.val  = 0;
								HSALT_TEMP_TRIGGER.val  = 0;
							}
                             
							
			
							 
							if (FC[0].density.calc_val > HSALT.Dmax)
								HSALT.Dmax = FC[0].density.calc_val;
							
							if (FC[0].density.calc_val < HSALT.Dmin)
								HSALT.Dmin = FC[0].density.calc_val;
							
							
							slt = REG_SALINITY.val; 
							
                        } 
                        
						recalc_count = 0; 	
											
											
						do 
						{
							hsalt_recalc_needed = 0;
							
							for (i=1;i<TEMP_WATER_MAX;i++)
							{
								if (t<TEMPS_WATER[i]) 
									break;
							}

							j = i-1;

							for (k=1;k<SALT_MAX;k++)
							{
								if (REG_SALINITY.val<SALTS[k]) 
									break;
							} 

							l = k-1;
							
							if (SALTS[k]<=0.02) 
								s[0] = log(0.02);
							else 
								s[0] = log(SALTS[k]);
							
							if (SALTS[l]<=0.02) 
								s[1] = log(0.02);
							else 
								s[1] = log(SALTS[l]);
							
							if (REG_SALINITY.val<=0.02) 
								s[2] = log(0.02);
							else 
								s[2] = log(REG_SALINITY.val);

							wt[0] = COEFF_SALT_TEMP_WATER[k][i][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[k][i][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[k][i][1]*wfreq +
									COEFF_SALT_TEMP_WATER[k][i][0];
							wt[1] = COEFF_SALT_TEMP_WATER[k][j][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[k][j][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[k][j][1]*wfreq +
									COEFF_SALT_TEMP_WATER[k][j][0];
							wt[2] = COEFF_SALT_TEMP_WATER[l][i][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][i][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][i][1]*wfreq +
									COEFF_SALT_TEMP_WATER[l][i][0];
							wt[3] = COEFF_SALT_TEMP_WATER[l][j][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][1]*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][0];  
							wt[4] = COEFF_SALT_TEMP_WATER[l][j][3]*wfreq*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][2]*wfreq*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][1]*wfreq +
									COEFF_SALT_TEMP_WATER[l][j][0];
							
							wc[0] = Interpolate(wt[0], TEMPS_WATER[i], wt[1], TEMPS_WATER[j], t);
							wc[1] = Interpolate(wt[2], TEMPS_WATER[i], wt[3], TEMPS_WATER[j], t);
							w 	  = Interpolate(wc[0], s[0], wc[1], s[1], s[2]);
							
							if (w < Water_Phase_Minimum.calc_val)    
								w = Water_Phase_Minimum.calc_val; 
							
							REG_WATERCUT_RAW = w;
							
							
							
							
							if (Hsalt_Min_WC.val < 60.0)
							{
								VAR_Update(&Hsalt_Min_WC,60.0,0,1);
							}
							
							
							if ( (w < Hsalt_Min_WC.val) && HSALT.ENABLED.val)
							{
							
								
								HSALT.Fmin = (HSALT.Fmin + wfreq) / 2;	
								
								
								tmp_f = REG_FREQ[OSC_WATER_CALC].calc_val;			
								
								REG_FREQ[OSC_WATER_CALC].calc_val = HSALT.Fmin;		
								
								VAR_Update(&REG_CAL_WATER, 99.9, 0, 1);				
								
								if (GAS_ENTRAINED.val || DIO_TIME_RESET.val)		
									Reset_Boxcar();
								
								REG_FREQ[OSC_WATER_CALC].calc_val = tmp_f;			
								
								HSALT.CHANGED = 1;							
								
								hsalt_recalc_needed = 1;							
							}
							else if ( (w >= 100) && HSALT.ENABLED.val)
							{ 
								 
#line 965
								HSALT.Fmin = wfreq;	
								
								
								tmp_f = REG_FREQ[OSC_WATER_CALC].calc_val;			
								REG_FREQ[OSC_WATER_CALC].calc_val = HSALT.Fmin;		
								VAR_Update(&REG_CAL_WATER, 99.9, 0, 1);				
								if (GAS_ENTRAINED.val || DIO_TIME_RESET.val)		
									Reset_Boxcar();
								
								REG_FREQ[OSC_WATER_CALC].calc_val = tmp_f;			
								HSALT.CHANGED = 1;								
								hsalt_recalc_needed = 1;							
								
							}

							recalc_count++;
						
						  
						} while (hsalt_recalc_needed && HSALT.ENABLED.val && (recalc_count <= 5) );
						  
						if (w > 99.9)
							w = 99.9;
						
						w += REG_WATER_ADJ.calc_val;

						  
                        for (i=1;i<TEMP_OIL_MAX;i++)
						{
							if (t<TEMPS_OIL[i]) 
								break;
						}

						j 	  = i-1;
                        ot[0] = COEFF_TEMP_OIL[i][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][0];
                        ot[1] = COEFF_TEMP_OIL[j][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][0];
                        w_o   = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[j], t);
                        
                        if (w_o > Oil_Phase_Maximum.calc_val) 
                        	w_o = Oil_Phase_Maximum.calc_val;  
                        
						w_o += REG_OIL_ADJ.calc_val;

						 
						
                		switch((int)Water_Phase_Filter.val) 
                		{
                			case 0:
                			{ 
                				break; 
                			}
                			case 1:
                			{ 
                				if (w < Water_Phase_Minimum.calc_val)	
                					w = Water_Phase_Minimum.calc_val;
                				
                				break;
                			}
                			case 2:
                			{ 
								
                				w = w_d;
                				break;
                			}
                			case 3:
                			{ 
                				if (w < Water_Phase_Minimum.calc_val)	
                					w = Water_Phase_Minimum.calc_val;
                				
								
                				if (w < w_d)
                					w = w_d;
                				
                				break;
                			}
                			case 4:
                			{ 
                				if (w_o > Oil_Phase_Maximum.calc_val)	
                					w_o = Oil_Phase_Maximum.calc_val;
                				
                				if (w < Water_Phase_Minimum.calc_val)	
                					w = Water_Phase_Minimum.calc_val;
                				
                				if (w < w_o)						
                					w = w_o;
                				
                				break;
                			}
                			case 5:
                			{ 
                				if (w_o > Oil_Phase_Maximum.calc_val) 
                					w_o = Oil_Phase_Maximum.calc_val;
									
                				
                				w = w_d;						
                				
                				if (w < w_o) 
                					w = w_o;
                				
                				break;
                			}
                			case 6:
                			{ 
                				if (w_o > Oil_Phase_Maximum.calc_val) 
                					w_o = Oil_Phase_Maximum.calc_val;
                				
                				if (w < Water_Phase_Minimum.calc_val) 
                					w = Water_Phase_Minimum.calc_val;
                				
								
                				if (w < w_d)
                					w = w_d;
                				
                				if (w < w_o)		 			
                					w = w_o;
                				
                				break;
                				break;
                			}
                			default:
                				break;
                		}
                			
						WC = w;
					} 

                                                   
					  
					
				    if(LOW_SALT_MODE)  
				    {
				    	for (i=1;i<TEMP_WATER_MAX;i++)
						{
							if (t<TEMPS_WATER[i]) 
								break;
						}
	                    
						j = i-1;
	
						for (k=1;k<SALT_MAX;k++)
						{
							if (REG_SALINITY.val<SALTS[k]) 
								break;
						} 
	
						l = k-1;
						
						if (SALTS[k]<=0.02) 
							s[0] = log(0.02);
						else 
							s[0] = log(SALTS[k]);
						
						if (SALTS[l]<=0.02) 
							s[1] = log(0.02);
						else 
							s[1] = log(SALTS[l]);
						
						if (REG_SALINITY.val<=0.02) 
							s[2] = log(0.02);
						else 
							s[2] = log(REG_SALINITY.val);
	
						wt[0] = COEFF_SALT_TEMP_WATER[k][i][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[k][i][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[k][i][1]*wfreq +
								COEFF_SALT_TEMP_WATER[k][i][0];
	                    wt[1] = COEFF_SALT_TEMP_WATER[k][j][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[k][j][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[k][j][1]*wfreq +
								COEFF_SALT_TEMP_WATER[k][j][0];
	                    wt[2] = COEFF_SALT_TEMP_WATER[l][i][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][i][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][i][1]*wfreq +
								COEFF_SALT_TEMP_WATER[l][i][0];
	                    wt[3] = COEFF_SALT_TEMP_WATER[l][j][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][1]*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][0];  
						wt[4] = COEFF_SALT_TEMP_WATER[l][j][3]*wfreq*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][2]*wfreq*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][1]*wfreq +
								COEFF_SALT_TEMP_WATER[l][j][0];
	                    
	                    wc[0]   = Interpolate(wt[0], TEMPS_WATER[i], wt[1], TEMPS_WATER[j], t);
						wc[1]   = Interpolate(wt[2], TEMPS_WATER[i], wt[3], TEMPS_WATER[j], t);
	                    w_water = Interpolate(wc[0], s[0], wc[1], s[1], s[2]);
	
						w_water += REG_WATER_ADJ.calc_val;
	                
	                    for (i=1;i<TEMP_OIL_MAX;i++)
						{
							if (t<TEMPS_OIL[i]) 
								break;
						}
	
						j 	  = i-1;
	                    ot[0] = COEFF_TEMP_OIL[i][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[i][0];
	                    ot[1] = COEFF_TEMP_OIL[j][3]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][2]*REG_FREQ[OSC_OIL_CALC].calc_val*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][1]*REG_FREQ[OSC_OIL_CALC].calc_val +
								COEFF_TEMP_OIL[j][0];
	                    
	                    w_oil = Interpolate(ot[0], TEMPS_OIL[i], ot[1], TEMPS_OIL[j], t);
	
						w_oil += REG_OIL_ADJ.calc_val; 
				    	
						if (REG_FREQ[OSC_OIL_CALC].calc_val<=REG_LOWSALT_THRESHOLD.val)
				    	{ 
				    		VAR_Update(&REG_EMULSION_PHASE, 1.0, 0, 0); 
				    		
				    		wc_lowsalt = w_water;						
				    	}
				    	else
				    	{
				    		VAR_Update(&REG_EMULSION_PHASE, 0.0, 0, 0); 
				    		
				    		wc_lowsalt = w_oil;
				    	}
				    	
				    }
					 
					
					break;    
				} 
			}
						
			

			 
#line 1209
			is_valid_type = 0;
			
			is_valid_type = ( ((mode&0xFF)==0) || ((mode&0xFF)==3) || ((mode&0xFF)==1) );
			
						
			if ( Density_Correction_Mode.val && FC[0].enable_DENSITY && (WC_STAT != 1) && is_valid_type && FULL_SAMPLE )
			{ 
				 
				CALC_WC_DENSITY.val = 0;

				t = Convert(Density_Cal.class, Density_Cal.calc_unit, 107, FC[0].density_PDI_corrected, 0, FC[0].density.aux);
				
				if ((t<750.0) || (t>998.0))	 
					DIAGNOSTICS[1] |= 0x0002;
				
				if (WC <= 5.0)
				{ 
					FC[0].Dadj = (Density_D3.calc_val * (FC[0].density_PDI_corrected - Density_Cal.calc_val) * (FC[0].density_PDI_corrected - Density_Cal.calc_val) * 
								 (FC[0].density_PDI_corrected - Density_Cal.calc_val)) +
								 (Density_D2.calc_val * (FC[0].density_PDI_corrected - Density_Cal.calc_val) * (FC[0].density_PDI_corrected - Density_Cal.calc_val)) +
								 (Density_D1.calc_val * (FC[0].density_PDI_corrected - Density_Cal.calc_val)) + 
								  Density_D0.calc_val;                        
				}

				if (FC[0].Dadj>10.0)
				{
					FC[0].Dadj 		= 10.0;
					DIAGNOSTICS[1] |= 0x0002;
				}
				else if (FC[0].Dadj<-10.0)
				{
					FC[0].Dadj 		= -10.0;
					DIAGNOSTICS[1] |= 0x0002;
				}

				w = WC + FC[0].Dadj;


 
#line 1259
				WC = w;

				if (DIO_PV_PERCMASS)
				{
					sg = Convert(73, FC[0].density.calc_unit, 110, FC[0].density.calc_val, 0, FC[0].density.aux);
				
					if (sg<=0)
					{
						sg 				= 1.0;
						DIAGNOSTICS[1] |= 0x0002;
					}

					WC /= sg;
				}
			}
			else if ( !(Density_Correction_Mode.val && FC[0].enable_DENSITY && (WC_STAT != 1) && is_valid_type) )
			{
				
				 
				DIO_PV_PERCMASS = 0;
				FC[0].Dadj = 0.0;
			}

			if (FULL_SAMPLE)      
			{       
			 	for (N_WC = 1; N_WC < REG_WC_NUM_SAMPLES.val; N_WC++)
			 		WC_SAMPLE[N_WC] = WC_SAMPLE[N_WC+1];	 	
			 	
			 	N_WC 			= REG_WC_NUM_SAMPLES.val;
			 	WC_SAMPLE[N_WC] = WC;
			 	WC_SUM 			= 0;
			 	
			 	for (N_WC = REG_WC_NUM_SAMPLES.val; N_WC > 0; N_WC--)
			 		WC_SUM += WC_SAMPLE[N_WC];
			 	
			 	if (REG_WC_NUM_SAMPLES.val > 1)       
			 		WC = WC_SUM / REG_WC_NUM_SAMPLES.val;
			  	 
			    
			      
			    if ((GAS_ENTRAINED_DENS_DETECT.val==1)&&(FC[0].density.calc_val>0))   
			    {
			    	t = Convert(FC[0].density.class, FC[0].density.calc_unit, 92, FC[0].density.calc_val, 0, FC[0].density.aux);
			    	
			    	if(((t + 5)< ((WC*10)+(100-WC)*8.25))&&((WC_previous - WC) > 10)) 
			    	{
			    		WC 				 = WC_previous; 
			    		REG_WATERCUT_RAW = WC_previous;
			    	}
			    }
			     
		    
			 	 
				VAR_Update(&REG_WATERCUT, WC, 0, 0);  
				
				
				    
				if(LOW_SALT_MODE)   
					VAR_Update(&REG_WATERCUT, wc_lowsalt, 0, 0);
				 
				
				switch(WC_STAT)
				{
					case 1: REG_WATERCUT.STAT |= 0x00000400 | 0x00000040 | 0x00000010; break;
					default: REG_WATERCUT.STAT &= (0x00000400 ^ 0xFFFFFFFF); break;
				}

				{ 
					DIAGNOSTICS[0] &= (0x1000 | 0x2000)^0xFFFF;
					
					if (REG_WATERCUT.STAT & 0x00000080)
					{
						DIAGNOSTICS[0] |= 0x1000;
						error 			= 1;
					}
	
					if (REG_WATERCUT.STAT & 0x00000040)
					{
						DIAGNOSTICS[0] |= 0x2000;
						error 			= 1;
					}
				  }

				
				
	
					if (USE_PDI_WATERCUT.val)
					{ 
						if (REG_WATERCUT.STAT & 0x00000008)
							VAR_NaN(&FC[0].watercut);
						else
							VAR_Update(&FC[0].watercut, REG_WATERCUT.calc_val * sg, 0, 0);
						
						if (CALC_WC_DENSITY.val)			
							CALC_WC_DENSITY.val = 0;

					}
					else if (CALC_WC_DENSITY.val)
					{ 
						VAR_Update(&FC[0].watercut, REG_WATERCUT_DENSITY.calc_val, 0, 0);
					}
				
			}

			{ 
				VAR_Update(&REG_VINC_O, REG_VINC[OSC_OIL_CALC].calc_val, 0, 0);
				VAR_Update(&REG_VREF_O, REG_VREF[OSC_OIL_CALC].calc_val, 0, 0);
				VAR_Update(&REG_FREQ_O, REG_FREQ[OSC_OIL_CALC].calc_val, 0, 0);
				VAR_Update(&REG_VINC_W, REG_VINC[OSC_WATER_CALC].calc_val, 0, 0);
				VAR_Update(&REG_VREF_W, REG_VREF[OSC_WATER_CALC].calc_val, 0, 0);
				VAR_Update(&REG_FREQ_W, REG_FREQ[OSC_WATER_CALC].calc_val, 0, 0);
				
				IP_O 		= REG_VINC[OSC_OIL_CALC].val;
				RP_O 		= REG_VREF[OSC_OIL_CALC].val;
				IP_RP_O 	= IP_O/RP_O;
				DB_IP_RP_O 	= 20.0*(log(IP_RP_O)/log(10.0));
                FREQ_O 		= REG_FREQ[OSC_OIL_CALC].val;
				IP_W 		= REG_VINC[OSC_WATER_CALC].val;
				RP_W 		= REG_VREF[OSC_WATER_CALC].val;
				IP_RP_W 	= IP_W/RP_W;
				DB_IP_RP_W 	= 20.0*(log(IP_RP_W)/log(10.0));
                FREQ_W 		= REG_FREQ[OSC_WATER_CALC].val;
				
				 
#line 1393
				i_IP_O 		= FS(&REG_VINC[OSC_OIL_CALC]);
				i_RP_O 		= FS2(&REG_VREF[OSC_OIL_CALC],&Plot_Limit_Oil_RP_Low,&Plot_Limit_Oil_RP_High);
				i_FREQ_O 	= FS2(&REG_FREQ[OSC_OIL_CALC],&Plot_Limit_Oil_Freq_Low,&Plot_Limit_Oil_Freq_High);
				i_IP_W 		= FS(&REG_VINC[OSC_WATER_CALC]);
				i_RP_W 		= FS2(&REG_VREF[OSC_WATER_CALC],&Plot_Limit_Water_RP_Low,&Plot_Limit_Water_RP_High);
				i_FREQ_W 	= FS2(&REG_FREQ[OSC_WATER_CALC],&Plot_Limit_Water_Freq_Low,&Plot_Limit_Water_Freq_High);
				i_TEMP 		= FS2(&REG_TEMPERATURE_USER,&Plot_Limit_Temp_Low,&Plot_Limit_Temp_High); 
                i_WC 		= FS2(&REG_WATERCUT,&Plot_Limit_Watercut_Low,&Plot_Limit_Watercut_High);
				
			}

			if (FULL_SAMPLE)
			{ 
				if (DIO_CAP_WATER.val && (Cap_Water.i>0))
					Get_CAPDATA(&Cap_Water);
				
				if (DIO_CAP_OIL.val && (Cap_Oil.i>0))
					Get_CAPDATA(&Cap_Oil);
			}

			{ 
				i = 0;
				while(1)
				{
					
					i++;
                    
                    if (VT_SELECT == 0) VT_SELECT = 2;
                    else if (VT_SELECT == 2) VT_SELECT = 1;
                    else if (VT_SELECT == 1) VT_SELECT = 3;
                    else VT_SELECT = 0;

                     
					if ((VT_SELECT >= 4) || (VT_SELECT < 0))
						VT_SELECT = 0;
					               
                     
					if (ENABLED[VT_SELECT])
						break;
					               
                     
					if (i>=4)
						break;
				}

				if (!SA)
				{ 
					if (EXTUNE)  
						VAR_Update(&REG_DAC[11], 5.0, 0, 0);
					else
						VAR_Update(&REG_DAC[11], 0.0, 0, 0);
					
					Write_DAC(11);

					switch (VT_SELECT)
					{
						case 0:
						{
							if (REG_DAC[9].calc_val>5.0) 
								OSWITCH = 1;
							else 
								OSWITCH = 0;
							
							osv = 1.25;
							break;
						}
	                    case 1:
						{
							if (REG_DAC[9].calc_val>5.0) 
								OSWITCH = 1;
							else 
								OSWITCH = 0;
							
							osv = 3.75;
							break;
						}
	                    case 2:
						{
							if (REG_DAC[9].calc_val<5.0) 
								OSWITCH = 1;
							else 
								OSWITCH = 0;
							
							osv = 6.25;
							break;
						}
	                    case 3:
						default:
						{
							if (REG_DAC[9].calc_val<5.0) 
								OSWITCH = 1;
							else 
								OSWITCH = 0;
							
							osv = 8.75;
							break;
						}
					}

					VAR_Update(&REG_DAC[9], osv, 0, 0);
					Write_DAC(9);
				}
				else
				{ 
					if (OSC[VT_SELECT])
					{ 
						if ((*((volatile char*) 0x0900004) & 0x04)==0x04)
							OSWITCH = 1;
						else
							OSWITCH = 0;
						
						{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) &= (0xFF ^ 0x04);{asm("	pop		ST			");};};
					}
					else
					{ 
						if ((*((volatile char*) 0x0900004) & 0x04)==0x04)
							OSWITCH = 0;
						else
							OSWITCH = 1;
						
						{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x04;{asm("	pop		ST			");};};
					}
				}

				{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x01;{asm("	pop		ST			");};};

				if (EXTUNE)
				{
					VAR_Update(&REG_DAC[10], REG_VTUNE_SET[VT_SELECT].calc_val, 0, 0);
					VAR_Update(&REG_DAC[11], 5.0, 0, 0);
				}
				else
				{
					VAR_Update(&REG_DAC[10], 0.0, 0, 0);
					VAR_Update(&REG_DAC[11], 0.0, 0, 0);
				}

				if (!SA) 
					Write_DAC(11);
				
				Write_DAC(10);

				if (OSWITCH)
					Timer_Insert(&TMR_OSC_DELAY_LONG,0,1);
				else
					Timer_Insert(&TMR_OSC_DELAY_SHORT,0,1);
			}
		}

		{asm("	pop		ST			");};
	}
	else
	{
		Read_RTC();
		Timer_Insert(&TMR_POLL,0,1);
	}

}
int FS(VAR* v)
{
	float			min,max,m;
	float			min2,max2;

	min2 = VAR_Get_Unit_Param(v, 0x00060000, 0, 0);
	max2 = VAR_Get_Unit_Param(v, 0x00050000, 0, 0);
	min = 0.0;
	max = fabs(max2-min2);
	m = (30000-0)/(max-min);
	return round((v->val-min2)*m + 0, 0);
}


int FS2(VAR* v, VAR* low_plot, VAR* high_plot)
{
	float	min,max,m,min2,max2;
	
	
	min2 = Convert(v->class, low_plot->unit, v->unit, low_plot->val, 0, v->aux);
	max2 = Convert(v->class, high_plot->unit, v->unit, high_plot->val, 0, v->aux);
	
	if (min2 >= max2) 
		return 0;
		
	min = 0.0;
	max = fabs(max2-min2);
	m = (30000-0)/(max-min);
	return round((v->val-min2)*m + 0, 0);
}


int Span(float v, float min2, float max2, int mini, int maxi)
{
	float			m;
	float			min,max;
	int				i;

	min = 0.0;
	max = fabs(max2-min2);
	m = (maxi-mini)/(max-min);
	i = round((v-min2)*m + mini, 0);
	if (i>maxi) i = maxi;
	if (i<mini) i = mini;
	return i;
}

void Setup_Sample(void)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	SAMPLE_PENDING = 1;

	Setup_Gate(&GATE_TIME, &PRESCALE, 1, DIO_AUX_FREQ_MODE);

	{*((volatile char*) 0x0900007) = 0; GATE_TIMEOUT = 0;};

	READ_ADC_INPUTS = 0;

	if (SA) Convert_ADC();

	Timer_Insert(&TMR_POLL,0,1);

	Timer_Create(&TMR_SAMPLE_ERROR, ((4.0*GATE_TIME)+1.0), 1, (int*)Sampling_Error, 0);
	Timer_Insert(&TMR_SAMPLE_ERROR,0,1);

	CURRENT_OSC = OSC[VT_SELECT];

	{asm("	pop		ST			");};
}

unsigned int Calc_CRC(unsigned int* s, unsigned int n)
{
	int i,j,k;
	unsigned int t;
	unsigned int CRC;

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) &= (0xFF ^ 0x08);{asm("	pop		ST			");};};

	CRC = 0xFFFF;;

	for(j=0;j<n;j++)
	{
		t = s[j];

		for (k=0;k<4;k++)
		{
			CRC ^= (t & 0xFF);

			for (i=0;i<8;i++)
			{	
				if (CRC & 0x01)
				{
					CRC >>= 1;
					CRC ^= 0xA001;;
				}
				else
				{
					CRC >>= 1;
				}
			}

			t >>= 8;
		}
	}

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x08; *((volatile char*) 0x0900004) |= 0x80;{asm("	pop		ST			");};};

	return CRC;
}

void Refresh_IDEC_Time(void)
{
	if (!RTC_PRESENT) return;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	{ 
		IDEC_SA[4].val = RTC[7] & 0x1F;
		IDEC_SA[4].val |= (RTC[8]<<8) & 0xFF00;
		IDEC_SA[5].val = RTC[4] & 0x3F;
		IDEC_SA[5].val |= (RTC[6]<<8) & 0x3F00;
		IDEC_SA[6].val = RTC[2] & 0x7F;
		IDEC_SA[6].val |= (RTC[3]<<8) & 0x7F00;
		IDEC_SA[7].val ^= 0x8000;
	}

	Timer_Create(&TMR_REFRESH_TIME, 30.0, 1, (int*)Refresh_IDEC_Time, 1);
	Timer_Insert(&TMR_REFRESH_TIME,0,1);

	{asm("	pop		ST			");};
}

void Reset_IDEC(int id)
{
	IDEC_SA[0].val = 1;	 
}

void Set_IDEC_Port(int id)
{
	if (SA && ((id<0) || (id>=2))) return;
	else if ((id<0) || (id>=8)) return;

	IDEC_PORT = id;
}

void Set_Time(int id)
{
	if (!RTC_PRESENT) return;

	if ((IDEC_SA[7].val) & 0x8000)
	{ 
		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		RTC[7] = (IDEC_SA[4].val) & 0x1F;
		RTC[8] = (IDEC_SA[4].val>>8) & 0xFF;
		RTC[4] = (IDEC_SA[5].val) & 0x3F;
		RTC[6] = (IDEC_SA[5].val>>8) & 0x3F;
		RTC[2] = (IDEC_SA[6].val) & 0x7F;
		RTC[3] = (IDEC_SA[6].val>>8) & 0x7F;
		Write_DS1340(0, 3, &RTC[2]);
		Write_DS1340(4, 3, &RTC[6]);

		RTC[1]  = 0x00;	 
		DIAGNOSTICS[1] &= 0xFFFFFFFF ^ 0x0001;
		Write_DS1340(8, 2, &RTC[0]);

		IDEC_SA[7].val &= 0x7FFF;
		Timer_Create(&TMR_REFRESH_TIME, 1.0, 1, (int*)Refresh_IDEC_Time, 1);
		Timer_Insert(&TMR_REFRESH_TIME,0,1);
		{asm("	pop		ST			");};
	}
}

void Set_Density_Correction(int id)
{
	switch(Density_Correction_Mode.val)
	{
		case 0:
		case 1:
		case 4:
		case 6:
		{
			FC[0].USE_PDI_TEMP = 1;
			break;
		}

		default:
		{
			FC[0].USE_PDI_TEMP = 0;
			break;
		}
	}

	if (Density_Correction_Mode.val==0)
	{
		FC[0].enable_DENSITY = 0;
	}
	else
	{
		FC[0].enable_DENSITY = 1;
	}

 

	Modbus_Initialize(DCM_PORT.val);
}

void Copy_CAPDATA(CAPDATA* p, BOOL to_coeff, BOOL clr)
{
	unsigned int	i, j;
	int				num_samp;
	BOOL			cleared;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");}

	if (p == &Cap_Oil)
	{
		num_samp = Num_Oil_Samples.val;
		j = 0;
	}
	else
	{
		num_samp = Num_Water_Samples.val;
		j = 1;
	}

	i = (int)round(REG_STREAM_SELECT.val,0) - 1.0;

	if (clr || ((!to_coeff) && (((Cap_Records[i].CLRSTAT_Time_YEAR[j]&0xFFFF0000) != 0xA5A50000))))
	{
		p->Watercut				= 0.0;
		p->Temperature			= 0.0;
		p->Frequency_Oil		= 0.0;
		p->Frequency_Water		= 0.0;
		p->RefPower_Oil			= 0.0;
		p->RefPower_Water		= 0.0;
		p->Salinity				= 0.0;
		p->Dadj					= 0.0;

		p->Time_HH				= 0;
		p->Time_MM				= 0;
		p->Time_MONTH			= 0;
		p->Time_DAY				= 0;
		p->Time_DAY_OF_WEEK		= 0;
		p->Time_YEAR			= 0;

		p->i 					= 0;

		cleared = 1;
	}
	else
	{
		cleared = 0;
	}

	if (to_coeff)
	{
		Cap_Records[i].Watercut[j]				= p->Watercut;
		Cap_Records[i].Temperature[j]			= p->Temperature;
		Cap_Records[i].Salinity[j]				= p->Salinity;
		Cap_Records[i].Frequency_Oil[j]			= p->Frequency_Oil;
		Cap_Records[i].Frequency_Water[j]		= p->Frequency_Water;
		Cap_Records[i].RefPower_Oil[j]			= p->RefPower_Oil;
		Cap_Records[i].RefPower_Water[j]		= p->RefPower_Water;
		Cap_Records[i].Dadj[j]					= p->Dadj;
		Cap_Records[i].Time_MONTH_DAY_HH_MM[j]	= (p->Time_MONTH<<24)|(p->Time_DAY<<16)|(p->Time_HH<<8)|(p->Time_MM);
		Cap_Records[i].CLRSTAT_Time_YEAR[j]		= (0xA5A50000)|(p->Time_YEAR<<8)|(p->Time_DAY_OF_WEEK);

		if (clr) Cap_Records[i].CLRSTAT_Time_YEAR[j] &= 0xFFFF;
        
        if(DIO_MANUAL_RESET.val || DIO_CLEAR_COUNTERS.val);
        else
			CHANGE = 1;
	}
	else
	if (!cleared)
	{
		p->Watercut				= Cap_Records[i].Watercut[j];
		p->Temperature			= Cap_Records[i].Temperature[j];
		p->Salinity				= Cap_Records[i].Salinity[j];
		p->Frequency_Oil		= Cap_Records[i].Frequency_Oil[j];
		p->Frequency_Water		= Cap_Records[i].Frequency_Water[j];
		p->RefPower_Oil			= Cap_Records[i].RefPower_Oil[j];
		p->RefPower_Water		= Cap_Records[i].RefPower_Water[j];
		p->Dadj					= Cap_Records[i].Dadj[j];

		p->Time_MM				= (Cap_Records[i].Time_MONTH_DAY_HH_MM[j]    ) &0xFF;
		p->Time_HH				= (Cap_Records[i].Time_MONTH_DAY_HH_MM[j]>> 8) &0xFF;
		p->Time_DAY				= (Cap_Records[i].Time_MONTH_DAY_HH_MM[j]>>16) &0xFF;
		p->Time_MONTH			= (Cap_Records[i].Time_MONTH_DAY_HH_MM[j]>>24) &0xFF;
		p->Time_DAY_OF_WEEK		= (Cap_Records[i].CLRSTAT_Time_YEAR[j]       ) &0xFF;
		p->Time_YEAR			= (Cap_Records[i].CLRSTAT_Time_YEAR[j]   >> 8) &0xFF;

		p->i					= num_samp;	         		
	}

	{asm("	pop		ST			");};
}

void Calibrate_OIL(VAR* v)
{ 
	float t;
	double sg;
	int mode;

	if (DEMO) mode = DEMO_ANALYZER_MODE.val;
	else mode = ANALYZER_MODE.val;

	if ((DIO_PV_PERCMASS) && ((Density_Correction_Mode.val) && (((mode&0xFF)==0)||((mode&0xFF)==3)) && (FC[0].enable_DENSITY)))
	{
		sg = Convert(73, FC[0].density.calc_unit, 110, FC[0].density.calc_val, 0, FC[0].density.aux);
		if (sg<=0)
		{
			sg = 1.0;
			DIAGNOSTICS[1] |= 0x0002;
		}
	}
	else
	{
		sg = 1.0;
	}

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (Cap_Oil.i < Num_Oil_Samples.val)
    {
	    if (REG_EMULSION_PHASE.calc_val==0.0)
	    {
			if ((REG_WATERCUT.STAT & 0x00000400)==0)	 
			{
		    	t = (v->calc_val*sg) - (REG_WATERCUT_RAW + FC[0].Dadj);

		    	VAR_Update(&REG_OIL_ADJ, t, 0, 0);
		    }
	    }
	    else
	    {
    		DIAGNOSTICS_ERROR_CODE = 34;
	    }
	}
	else
	{
    	t = v->calc_val - (Cap_Oil.Watercut + Cap_Oil.Dadj);
    	VAR_Update(&REG_OIL_ADJ, t, 0, 0);
	}

	REG_CAL_OIL.calc_val = 0.0;
	REG_CAL_OIL.val = 0.0;

	{asm("	pop		ST			");};
}

void Calibrate_WATER(VAR* v)
{ 
	
	float				f;
	float				t;

	long double			wl;
	long double			coeffl[4];

	long double			wh;
	long double			coeffh[4];

	long double			wt1;
	long double			wt2;
	long double			s;
	
	long double			salt_high;
	long double			salt_low;

	int					sl;
	int					sh;
	int					tl;
	int					th;

	long double t_adj_calc;      
    
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (Cap_Water.i < Num_Water_Samples.val)       
    {
	    if (REG_EMULSION_PHASE.calc_val!=1.0)
	    {
    		DIAGNOSTICS_ERROR_CODE = 24;
			{asm("	pop		ST			");};
    		return;
    	}

		

		if (HSALT.ENABLED.val==1)
		{ 
			t = 37.778;	 
		}
		else
		{
			  
			t_adj_calc = Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, REG_TEMPERATURE_EXTERNAL.calc_unit, REG_TEMPERATURE_USER_ADJUST.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);
	    	t = REG_TEMPERATURE_EXTERNAL.calc_val + t_adj_calc; 
		}

		f = REG_FREQ[OSC_WATER_CALC].calc_val; 
		 



	}
	else                                                   
	{
		
		t = Cap_Water.Temperature;
		f = Cap_Water.Frequency_Water;
	}

	 
#line 1974
	if (TEMP_WATER_MAX >= 15) TEMP_WATER_MAX = 14;
	if (SALT_MAX >= 20) SALT_MAX = 19;

	for (th=1;th<=TEMP_WATER_MAX;th++)
	{ 
		if (t<TEMPS_WATER[th]) break;
	}
	tl = th - 1;  

	sl = SALT_MAX - 1;	 

	while(1)
	{
		coeffh[0] = COEFF_SALT_TEMP_WATER[sl][th][0];
		coeffh[1] = COEFF_SALT_TEMP_WATER[sl][th][1];
		coeffh[2] = COEFF_SALT_TEMP_WATER[sl][th][2];
		coeffh[3] = COEFF_SALT_TEMP_WATER[sl][th][3];
		wh = coeffh[3]*f*f*f +
		 	 coeffh[2]*f*f   +
			 coeffh[1]*f     +
			 coeffh[0];

		coeffl[0] = COEFF_SALT_TEMP_WATER[sl][tl][0];
		coeffl[1] = COEFF_SALT_TEMP_WATER[sl][tl][1];
		coeffl[2] = COEFF_SALT_TEMP_WATER[sl][tl][2];
		coeffl[3] = COEFF_SALT_TEMP_WATER[sl][tl][3];
		wl = coeffl[3]*f*f*f +
			 coeffl[2]*f*f   +
			 coeffl[1]*f     +
			 coeffl[0];

		wt1 = Interpolate(wl, TEMPS_WATER[tl], wh, TEMPS_WATER[th], t);

		if (v->calc_val <= wt1) break;
		 

		sl --;

		if (sl<0)
		{
			sl = 0;
			break;
		}
	}

	sh = sl + 1;

	coeffh[0] = COEFF_SALT_TEMP_WATER[sh][th][0];
	coeffh[1] = COEFF_SALT_TEMP_WATER[sh][th][1];
	coeffh[2] = COEFF_SALT_TEMP_WATER[sh][th][2];
	coeffh[3] = COEFF_SALT_TEMP_WATER[sh][th][3];
	wh = coeffh[3]*f*f*f +
	 	 coeffh[2]*f*f   +
		 coeffh[1]*f     +
		 coeffh[0];

	coeffl[0] = COEFF_SALT_TEMP_WATER[sh][tl][0];
	coeffl[1] = COEFF_SALT_TEMP_WATER[sh][tl][1];
	coeffl[2] = COEFF_SALT_TEMP_WATER[sh][tl][2];
	coeffl[3] = COEFF_SALT_TEMP_WATER[sh][tl][3];
	wl = coeffl[3]*f*f*f +
		 coeffl[2]*f*f   +
		 coeffl[1]*f     +
		 coeffl[0];

	wt2 = Interpolate(wl, TEMPS_WATER[tl], wh, TEMPS_WATER[th], t);
	
	salt_low = log(SALTS[sl]);
	salt_high = log(SALTS[sh]);

	s = Interpolate(salt_low, wt1, salt_high, wt2, v->calc_val);
	s = exp(s);
	
  
#line 2054
   	VAR_Update(&REG_SALINITY, s, 0, 0);

	if (REG_SALINITY.STAT & 0x00000080)
	{
		DIAGNOSTICS_ERROR_CODE = 23;
	}
	else
	if (REG_SALINITY.STAT & 0x00000040)
	{
		DIAGNOSTICS_ERROR_CODE = 22;
	}

	REG_CAL_WATER.calc_val = 0.0;
	REG_CAL_WATER.val = 0.0;

	{asm("	pop		ST			");};
}


 
#line 2117
void CLEAR_PORT_COUNT(int id)
{
	PORT[id].ERROR_COUNT = 0;
	PORT[id].WDOG_COUNT = 0;
	PORT[id].INV_CMD_COUNT = 0;
	PORT[id].INV_PKT_COUNT = 0;
	PORT[id].SUCCESS = 0;
}

BOOL Get_CAPDATA(CAPDATA* p)
{
	int r, num_samp;   
	long double t_adj_calc;      

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	r = 1;

	if (p == &Cap_Oil)
	{
		num_samp = Num_Oil_Samples.val;
	}
	else
	{
		num_samp = Num_Water_Samples.val;
	}

    if (((!DIO_CAP_WATER.val)||(REG_EMULSION_PHASE.calc_val!=1.0)) && (p == &Cap_Water))
	{
		DIO_CAP_WATER.val = 0;
   		if (REG_EMULSION_PHASE.calc_val!=1.0) DIAGNOSTICS_ERROR_CODE = 24;
   		r = 0;
	}
	else
    if (((!DIO_CAP_OIL.val)||(REG_EMULSION_PHASE.calc_val!=0.0)) && (p == &Cap_Oil))
	{
		DIO_CAP_OIL.val = 0;
		if (REG_EMULSION_PHASE.calc_val!=0.0) DIAGNOSTICS_ERROR_CODE = 34;
		r = 0;
	}
	else
	{
		 
#line 2164
		if (p->i == 0)
		{
			Copy_CAPDATA(p, 1, 1);	 
		}
		else
		{	
			p->Watercut				*= p->i;
			p->Temperature			*= p->i;
			p->Frequency_Oil		*= p->i;
			p->Frequency_Water		*= p->i;
			p->RefPower_Oil			*= p->i;
			p->RefPower_Water		*= p->i;
			p->Dadj					*= p->i;
			p->Salinity				*= p->i;
		}
		
		
		p->Watercut					+= REG_WATERCUT_RAW;  
		  
		t_adj_calc = Convert(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_USER_ADJUST.unit, REG_TEMPERATURE_EXTERNAL.calc_unit, REG_TEMPERATURE_USER_ADJUST.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);
		p->Temperature				+= REG_TEMPERATURE_EXTERNAL.calc_val + t_adj_calc;  
		p->Frequency_Oil			+= REG_FREQ[OSC_OIL_CALC].calc_val;
		p->Frequency_Water			+= REG_FREQ[OSC_WATER_CALC].calc_val;
		p->RefPower_Oil				+= REG_VREF[OSC_OIL_CALC].calc_val;
		p->RefPower_Water			+= REG_VREF[OSC_WATER_CALC].calc_val;
		p->Dadj						+= FC[0].Dadj;
		p->Salinity					+= REG_SALINITY.val;
		
		p->i++; 

		if (p->i == 1) 
		{
			if (!RTC_PRESENT)
			{
				p->Time_HH				= (IDEC_SA[9].val) & 0xFF;
				p->Time_MM				= (IDEC_SA[10].val>>8) & 0xFF;
				p->Time_MONTH			= (IDEC_SA[8].val) & 0xFF;
				p->Time_DAY				= (IDEC_SA[9].val>>8) & 0xFF;
				p->Time_DAY_OF_WEEK		= (IDEC_SA[11].val) & 0x0F;
				p->Time_YEAR			= (IDEC_SA[8].val>>8) & 0xFF;
			}
			else
			{
				p->Time_HH				= RTC[4] & 0x3F;
				p->Time_MM				= RTC[3] & 0x7F;
				p->Time_MONTH			= RTC[7] & 0x1F;
				p->Time_DAY				= RTC[6] & 0x3F;
				p->Time_DAY_OF_WEEK		= RTC[5] & 0x07;
				p->Time_YEAR			= RTC[8] & 0xFF;
			}
			
		}
		else
		{	
			p->Watercut				/= p->i;
			p->Temperature			/= p->i;
			p->Frequency_Oil		/= p->i;
			p->Frequency_Water		/= p->i;
			p->RefPower_Oil			/= p->i;
			p->RefPower_Water		/= p->i;
			p->Dadj					/= p->i;
			p->Salinity				/= p->i;
		}

		   
		
		
		if ((p->i >= 5122.0)||(CAP_WATER_STOP.val)||(CAP_OIL_STOP.val))    
		{ 
			Copy_CAPDATA(p, 1, 0);

			if (p == &Cap_Oil)
			{
				DIO_CAP_OIL.val = 0;  
				CAP_OIL_STOP.val = 0;                
				VAR_Update(&Num_Oil_Samples, p->i, 0, 0);      
			}
			else
			{
				DIO_CAP_WATER.val = 0;
				CAP_WATER_STOP.val = 0;       
				VAR_Update(&Num_Water_Samples, p->i, 0, 0);      
			}

			CHANGE = 1;               
		}
	}

	{asm("	pop		ST			");};                                                                                              

	return r;
}

void Capture_Watercut_Water(int id)
{
	if (!DIO_CAP_WATER.val)
	{
		Copy_CAPDATA(&Cap_Water, 1, 1);	 
		DIO_CAP_WATER.val = 0;
		
		if(DIO_MANUAL_RESET.val || DIO_CLEAR_COUNTERS.val);
		else
			CHANGE = 1;
			
		return;
	}

	if ((Cap_Water.i == 0) || (SA && (!(*((volatile char*) 0x0900013) & 0x20)) && (id==0)) || (!SA && (id==4)))
	{
		Cap_Water.i = 0;
		Get_CAPDATA(&Cap_Water);	 
	}
}

void Capture_Watercut_Oil(int id)
{
	if (!DIO_CAP_OIL.val)
	{
		Copy_CAPDATA(&Cap_Oil, 1, 1);	 
		DIO_CAP_OIL.val = 0;
		CHANGE = 1;
		return;
	}

	if ((Cap_Oil.i == 0) || (SA && (!(*((volatile char*) 0x0900013) & 0x20)) && (id==0)) || (!SA && (id==4)))
	{
		Cap_Oil.i = 0;
		Get_CAPDATA(&Cap_Oil);	 
	}
}

void PVAVG24(void)
{
	 
	 
	
	 
	 
	 
	
	int	si;			 
	float t; 		 
	float* f;
	float* s;
	unsigned int fi; 
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	REG_PV_AVG_CNT++;
	f = (float*) &fi;
	s = (float*) &si;

	if (PV_SAMPLES_5min.n >= 300)
	{ 
		fi 					 = Get(&PV_SAMPLES_5min);
		si 					 = PV_SAMPLES_5min.sum;
		s[0]   				-= f[0];
		PV_SAMPLES_5min.sum  = si;
	}

	t 					 = REG_WATERCUT.val;
	REG_PV_AVG_1sec 	 = t;
	f[0] 				 = t;
	si 					 = PV_SAMPLES_5min.sum;
	s[0] 		   		+= f[0];
	PV_SAMPLES_5min.sum  = si;

	Put(&PV_SAMPLES_5min, fi, 0);

	t 				= (s[0] / PV_SAMPLES_5min.n);
	REG_PV_AVG_5min = t;

	if (((REG_PV_AVG_CNT%300) == 0) || (PV_SAMPLES_24hr.n == 0))
	{ 
		if (PV_SAMPLES_24hr.n != 0) 
			REG_PV_AVG_CNT = 0;

		if (PV_SAMPLES_24hr.n >= 288)
		{ 
			fi 					 = Get(&PV_SAMPLES_24hr);
			si 					 = PV_SAMPLES_24hr.sum;
			s[0] 				-= f[0];
			PV_SAMPLES_24hr.sum  = si;
		}

		t 					 = REG_PV_AVG_5min;
		f[0] 				 = t;
		si 					 = PV_SAMPLES_24hr.sum;
		s[0] 				+= f[0];
		PV_SAMPLES_24hr.sum  = si;

		Put(&PV_SAMPLES_24hr, fi, 0);

		t 				= (s[0] / PV_SAMPLES_24hr.n);
		REG_PV_AVG_24hr = t;
	}

	{asm("	pop		ST			");};
}

void PV_AVERAGE(VAR* v)
{
	unsigned int	fi;
	int				si;
	float*	f;
	float*	s;
	float	t;

	if (v->STAT & 0x00000008)
	{
		return;
	}

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	f = (float*) &fi;
	s = (float*) &si;

	if (PV_SAMPLES.n >= REG_NUM_SAMP.val)
	{
		 
		fi = Get(&PV_SAMPLES);
		si = PV_SAMPLES.sum;
		s[0] -= f[0];
		PV_SAMPLES.sum = si;
	}

	t = v->base_val;
	f[0] = t;
	si = PV_SAMPLES.sum;
	s[0] += f[0];
	PV_SAMPLES.sum = si;

	Put(&PV_SAMPLES, fi, 0);

	t = (s[0] / PV_SAMPLES.n);
	v->base_val = t;

	{asm("	pop		ST			");};
}

void System_Reset(void)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x40;{asm("	pop		ST			");};};
	while(1){}
}

void System_Restart(void)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	c_int00();
	while(1){}
}

void Set_Temperature_Unit(void)
{
	if (DIO_TEMP_C.val)
	{
		REG_TEMPERATURE_EXTERNAL.unit = 32;
		REG_TEMPERATURE_AVG.unit = 32;   
		CCM_GAS_TEMPERATURE.unit = 32;  		
	}
	else
	{
		REG_TEMPERATURE_EXTERNAL.unit = 33; 
		REG_TEMPERATURE_AVG.unit = 33;  	
		CCM_GAS_TEMPERATURE.unit = 33;  	   
	}

	Set_ASCII_Temp_Unit(&REG_TEMPERATURE_EXTERNAL);   
	Set_ASCII_Temp_Unit(&REG_TEMPERATURE_AVG);    
	Set_ASCII_Temp_Unit(&CCM_GAS_TEMPERATURE);    
}

void Set_ASCII_Temp_Unit(VAR* v)
{
	long double s;
	int u_old;
	int u_new;
	int u_calc;
	long double	m;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	{ 
		u_old = REG_TEMPERATURE_USER.unit;
		u_new = REG_TEMPERATURE_EXTERNAL.unit;
		u_calc = REG_TEMPERATURE_EXTERNAL.calc_unit;

		REG_TEMPERATURE_USER.unit = REG_TEMPERATURE_EXTERNAL.unit;
		REG_TEMPERATURE_USER.calc_unit = REG_TEMPERATURE_EXTERNAL.unit;

		REG_TEMPERATURE_AVG.unit = REG_TEMPERATURE_EXTERNAL.unit;      
		REG_TEMPERATURE_AVG.calc_unit = REG_TEMPERATURE_EXTERNAL.unit;   
		
		CCM_GAS_TEMPERATURE.unit = REG_TEMPERATURE_EXTERNAL.unit;      
		CCM_GAS_TEMPERATURE.calc_unit = REG_TEMPERATURE_EXTERNAL.unit; 

		REG_TEMPERATURE_USER_ADJUST.unit = REG_TEMPERATURE_EXTERNAL.unit;
		REG_TEMPERATURE_USER_ADJUST.calc_unit = REG_TEMPERATURE_EXTERNAL.unit;  
		
		s = Convert(REG_TEMPERATURE_EXTERNAL.class, u_old, u_new, REG_TEMPERATURE_USER_ADJUST.val, 1, REG_TEMPERATURE_USER_ADJUST.aux);

		VAR_Update(&REG_TEMPERATURE_USER_ADJUST, s, 0, 0);
	}

	switch(v->unit & 0x00FF)
	{
		case 58:
		{
			U_TEMP_ASCII = ' '<<8 | 'V';	 
			break;
		}

		case 33:
		{
			U_TEMP_ASCII = (0xB0<<8) | 'F';	 
			break;
		}

		case 35:
		{
			U_TEMP_ASCII = (0xB0<<8) | 'K';	 
			break;
		}

		case 32:
		{
			U_TEMP_ASCII = (0xB0<<8) | 'C';	 
			break;
		}

		case 34:
		{
			U_TEMP_ASCII = (0xB0<<8) | 'R';	 
			break;
		}

		default:
		{
			U_TEMP_ASCII = ' '<<8 | ' ';
			break;
		}
	}

	{asm("	pop		ST			");};
}

void Calibrate_RTD(void)
{ 
	float f;

	f = ((float)ADC_INT[2]*ADC_TRIM_F_1[2]/ADC_TRIM_I_1[2]);

	switch (RTD_CAL.val)
	{
		case 0: RTD_CAL_LO_V = f; break;
		case 1: RTD_CAL_HI_V = f; break;
	}
}

void RESEARCH(void)
{
	int i;
	unsigned int tmp0;
	float val[3];
	BOOL A;                           
	int	VT;
	int L_offset;
	float osv;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (PORT[PDI_id].LONG_ADDRESS) L_offset = 4;
	else L_offset = 0;

	switch(PORT[PDI_id].func)
	{
		case 65: 
		{
			for (i=0;i<(2+L_offset);i++)
			{
				Put(&TXbuf[PDI_id], RXbuf[PDI_id].buff[i], 1);
			}

			A = (RXbuf[PDI_id].buff[14+L_offset] & 0x80);

            if (A)
            {
            	DIO_RESEARCH_MODE.val = 1;
            }
            else
            {
            	DIO_RESEARCH_MODE.val = 0;
            }

			if (!DIO_RESEARCH_MODE.val)
			{
				IDEC_SA[0].val = 1;
				RESEARCH_FORCE_MODE = 0;

				for (i=0;i<4;i++)
				{
					VT_SELECT = i;
					VAR_Update(&REG_VTUNE_SET[i], RESEARCH_VTUNE[i], 0, 0);
					ENABLED[i] = RESEARCH_ENABLED[i];
					OSC[i] = RESEARCH_OSC[i];
				}

				VT_SELECT = 0;

				GATE_TIME = RESEARCH_GATE;
				PRESCALE = RESEARCH_PS;

				Timer_Create(&TMR_OSC_DELAY_LONG, REG_osc_settle_long.calc_val, 1, (int*)Setup_Sample, 0);

				Prepare_TX(PDI_id, 0);

				Timer_Insert(&TMR_OSC_DELAY_LONG,0,1);

				break;
			}

			IDEC_SA[0].val = 1300;
			RESEARCH_FORCE_MODE = 1;

			for (i=0;i<4;i++)
			{
				VT_SELECT = i;
				RESEARCH_VTUNE[i] = REG_VTUNE_SET[i].calc_val;
				RESEARCH_ENABLED[i] = ENABLED[i];
				RESEARCH_OSC[i] = OSC[i];
			}

			tmp0 =  (unsigned int) (RXbuf[PDI_id].buff[2+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[3+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[4+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[5+L_offset] & 0xFF);
            val[0] = FMIEEE(tmp0);	 

			tmp0 =  (unsigned int) (RXbuf[PDI_id].buff[6+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[7+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[8+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[9+L_offset] & 0xFF);
            val[1] = FMIEEE(tmp0);	 

			tmp0 =  (unsigned int) (RXbuf[PDI_id].buff[10+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[11+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[12+L_offset] & 0xFF);
			tmp0 = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[13+L_offset] & 0xFF);
            val[2]= FMIEEE(tmp0);  

			RESEARCH_GATE = GATE_TIME;
			RESEARCH_PS = PRESCALE;
			GATE_TIME = val[0];
			PRESCALE = val[1];
			Timer_Create(&TMR_OSC_DELAY_LONG, val[2], 1, (int*)Setup_Sample, 0);

			{ 
				VT_SELECT = 0;
				i = 0;

				ENABLED[i] = 1;

				for (i=1;i<4;i++)		 
				{
					ENABLED[i] = 0;
				}
			}

			Prepare_TX(PDI_id, 0);

			break;
		}

		case 66:
		{
           	if (DIO_RESEARCH_MODE.val)
           	{
				{ 
					EXTUNE = 1;

					if ((RXbuf[PDI_id].buff[2+L_offset] & 0x04) && RESEARCH_FORCE_MODE)
					{ 
						VT_SELECT = 0;

						ENABLED[VT_SELECT] = 1;

						tmp0 =  (unsigned int) (RXbuf[PDI_id].buff[3+L_offset] & 0xFF);
						tmp0 = tmp0 << 8;
						tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[4+L_offset] & 0xFF);
						tmp0 = tmp0 << 8;
						tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[5+L_offset] & 0xFF);
						tmp0 = tmp0 << 8;
						tmp0 |= (unsigned int) (RXbuf[PDI_id].buff[6+L_offset] & 0xFF);

			            val[0] = FMIEEE(tmp0);

						VAR_Update(&REG_VTUNE_SET[VT_SELECT], val[0], 0, 0);

						if (RXbuf[PDI_id].buff[2+L_offset] & 0x02)
						{
							OSC[VT_SELECT] = 1;
						}
						else
						{
							OSC[VT_SELECT] = 0;
						}

						if (!SA)
						{
							VAR_Update(&REG_DAC[11], 5.0, 0, 0);
							Write_DAC(11);

							if (OSC[VT_SELECT])
							{
								if (REG_DAC[9].calc_val<5.0) OSWITCH = 1;
								else OSWITCH = 0;
								osv = 8.75;
							}
							else
							{
								if (REG_DAC[9].calc_val>5.0) OSWITCH = 1;
								else OSWITCH = 0;
								osv = 1.25;
							}
						}
					}
					else
					{ 
						VT = (int) (RXbuf[PDI_id].buff[2+L_offset] & 0x03);
						if (VT<0) VT = 0;
						else if (VT>(4-1)) VT = 4-1;
						VT_SELECT = VT;

						if (!SA)
						{
							EXTUNE = 0;
							VAR_Update(&REG_DAC[11], 0.0, 0, 0);
							Write_DAC(11);

							switch (VT_SELECT)
							{
								case 0:
								{
									if (REG_DAC[9].calc_val>5.0) OSWITCH = 1;
									else OSWITCH = 0;
									osv = 1.25;
									break;
								}
							
								case 1:
								{
									if (REG_DAC[9].calc_val>5.0) OSWITCH = 1;
									else OSWITCH = 0;
									osv = 3.75;
									break;
								}
							
								case 2:
								{
									if (REG_DAC[9].calc_val<5.0) OSWITCH = 1;
									else OSWITCH = 0;
									osv = 6.25;
									break;
								}
							
								case 3:
								default:
								{
									if (REG_DAC[9].calc_val<5.0) OSWITCH = 1;
									else OSWITCH = 0;
									osv = 8.75;
									break;
								}
							}
						}
					}

					if (SA)
					{ 
						if (OSC[VT_SELECT])
						{ 
							if ((*((volatile char*) 0x0900004) & 0x04)==0x04)
							{
								OSWITCH = 1;
							}
							else
							{
								OSWITCH = 0;
							}

							{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) &= (0xFF ^ 0x04);{asm("	pop		ST			");};};
						}
						else
						{ 
							if ((*((volatile char*) 0x0900004) & 0x04)==0x04)
							{
								OSWITCH = 0;
							}
							else
							{
								OSWITCH = 1;
							}

							{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900004) |= 0x04;{asm("	pop		ST			");};};
						}
					}

					VAR_Update(&REG_DAC[9], osv, 0, 0);

					if (!SA) Write_DAC(9);
					VAR_Update(&REG_DAC[10], REG_VTUNE_SET[VT_SELECT].calc_val, 0, 0);
					Write_DAC(10);
	
					if (OSWITCH)
					{
						Timer_Insert(&TMR_OSC_DELAY_LONG,0,1);
					}
					else
					{
						Timer_Insert(&TMR_OSC_DELAY_SHORT,0,1);
					}
				}
				break;
			}
			 
		}

		default:
		{
			DIO_RESEARCH_MODE.val = 0;
			RESEARCH_FORCE_MODE = 0;
			VT = (int) (RXbuf[PDI_id].buff[2+L_offset] & 0x03); 
			if (VT<0) VT = 0;
			else if (VT>(4-1)) VT = 4-1;
			Send_Sample(VT);
			break;
		}
	}

	{asm("	pop		ST			");};
}

void CopyTempVars(void)
{
	int i;
	float t;
	MPKT* p;

	VAR_Update(&REG_TEMPERATURE_EXTERNAL, TMP_TEMP, 0, 0);
	
	
	
	
	if(DIO_TEMP_C.val==0){AVG_TEMP=(AVG_TEMP*1.8)+32;}  
	
	VAR_Update(&REG_TEMPERATURE_AVG, AVG_TEMP+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);     
    

	if (FC[0].USE_PDI_TEMP)
	{
		VAR_Update(&REG_TEMPERATURE_USER, REG_TEMPERATURE_EXTERNAL.val+REG_TEMPERATURE_USER_ADJUST.val, 0, 0);
		VAR_Update(&FC[0].T, Convert(FC[0].T.class, REG_TEMPERATURE_USER.calc_unit, FC[0].T.calc_unit, REG_TEMPERATURE_USER.calc_val, 0, FC[0].T.aux), 0, 0);
	}

	if (FC[0].USE_PDI_SALINITY)
	{
		VAR_Update(&FC[0].salinity, Convert(FC[0].salinity.class, REG_SALINITY.unit, FC[0].salinity.unit, REG_SALINITY.val, 0, FC[0].salinity.aux), 0, 0);
	}

	{ 
	    if ((Density_Correction_Mode.val==4)||(Density_Correction_Mode.val==5))
		{
			if ( (DCM_PORT.val!=2) && (DCM_PORT.val>=0) && (DCM_PORT.val<8) )
			{ 
				t = Convert(FC[0].T.class, FC[0].T.unit, COR[0].u_T, FC[0].T.val, 0, FC[0].T.aux);
				p = Master_Create((int*) 0, 1, 1, 16, 449, 1, t);
				List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
			}
		}
	}

	for (i=0;i<4;i++)
	{
		if (ENABLED[i])
		{
			VAR_Update(&REG_VTUNE[i], TMP_VTUNE[i], 0, 0);
	
			VAR_Update(&REG_VINC[i], TMP_VINC[i], 0, 0);
	
			VAR_Update(&REG_VREF[i], TMP_VREF[i], 0, 0);
	
			if (TMP_FREQ[i]<0)
			{
				VAR_NaN(&REG_FREQ[i]);
			}
			else
			{
				if (i == OSC_OIL_CALC) 
					TMP_FREQ[i] += REG_OIL_INDEX.calc_val;
				else if (i == OSC_WATER_CALC) 
					TMP_FREQ[i] += REG_WATER_INDEX.calc_val;
				
				VAR_Update(&REG_FREQ[i], TMP_FREQ[i], 0, 0);
			}
		}
		else
		{
			VAR_NaN(&REG_FREQ[i]);
			VAR_NaN(&REG_VTUNE[i]);
			VAR_NaN(&REG_VINC[i]);
			VAR_NaN(&REG_VREF[i]);
		}
	}
}


void Freq_oil_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_FREQ[OSC_OIL_CALC], 0x00060000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_FREQ[OSC_OIL_CALC], 0x00080000, v->val, 0, 0);
}
void Freq_oil_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_FREQ[OSC_OIL_CALC], 0x00050000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_FREQ[OSC_OIL_CALC], 0x00070000, v->val, 0, 0);
}
void Freq_water_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_FREQ[OSC_WATER_CALC], 0x00060000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_FREQ[OSC_WATER_CALC], 0x00080000, v->val, 0, 0);
}
void Freq_water_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_FREQ[OSC_WATER_CALC], 0x00050000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_FREQ[OSC_WATER_CALC], 0x00070000, v->val, 0, 0);
}
void Temp_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, 0x00060000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, 0x00080000, v->val, 0, 0);
}
void Temp_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, 0x00050000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_TEMPERATURE_EXTERNAL, 0x00070000, v->val, 0, 0);
}
void Watercut_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_WATERCUT, 0x00060000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, 0x00080000, v->val, 0, 0);
}
void Watercut_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_WATERCUT, 0x00050000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, 0x00070000, v->val, 0, 0);
}
void Oil_RP_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_VREF[OSC_OIL_CALC], 0x00060000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_VREF[OSC_OIL_CALC], 0x00080000, v->val, 0, 0);
}
void Oil_RP_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_VREF[OSC_OIL_CALC], 0x00050000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_VREF[OSC_OIL_CALC], 0x00070000, v->val, 0, 0);
}
void Water_RP_plot_min(VAR* v)
{
	VAR_Set_Unit_Param(&REG_VREF[OSC_WATER_CALC], 0x00060000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_VREF[OSC_WATER_CALC], 0x00080000, v->val, 0, 0);
}
void Water_RP_plot_max(VAR* v)
{
	VAR_Set_Unit_Param(&REG_VREF[OSC_WATER_CALC], 0x00050000, v->val, 0, 0);
	VAR_Set_Unit_Param(&REG_VREF[OSC_WATER_CALC], 0x00070000, v->val, 0, 0);
}




void Timer_T(void)
{
	REG_TIME++;
	if (REG_TIME>1728000) REG_TIME = 0;
	else if (REG_TIME<0) REG_TIME = 0;
}

void Send_Sample(int VT)
{
	unsigned int tmp0;
	unsigned int tmp1;
	unsigned int tmp2;
	unsigned int tmp3;
	int id;
	float val[34];
	int i;
	int L_offset;

	CopyTempVars();

	id = PDI_id;

	if (PORT[id].LONG_ADDRESS) L_offset = 4;
	else L_offset = 0;

	for (i=0;i<(2+L_offset);i++)
	{
		Put(&TXbuf[id], RXbuf[id].buff[i], 1); 
	}

	Put(&TXbuf[id], VT, 1);	

    val[0] = REG_FREQ[VT].calc_val;
    val[1] = REG_VREF[VT].calc_val;
    val[2] = REG_VINC[VT].calc_val;
    val[3] = REG_VTUNE[VT].calc_val;
    val[4] = REG_TEMPERATURE_EXTERNAL.calc_val;
    val[5] = REG_ADC[10].calc_val;
    val[6] = SN_PIPE;
    val[7] = REG_WATERCUT_RAW;
    val[8] = REG_OIL_ADJ.calc_val;
    val[9] = REG_WATER_ADJ.calc_val;
    val[10] = REG_OIL_INDEX.calc_val;
    val[11] = REG_WATER_INDEX.calc_val;
    val[12] = REG_SALINITY.val;
    val[13] = OIL_P1.calc_val;
    val[14] = OIL_P0.calc_val;
    val[15] = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00060000, 0, 0);
    val[16] = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00050000, 0, 0);
    val[17] = REG_FREQ[OSC_OIL_CALC].calc_val;
    val[18] = REG_VREF[OSC_OIL_CALC].calc_val;
    val[19] = REG_VINC[OSC_OIL_CALC].calc_val;
    val[20] = REG_VTUNE[OSC_OIL_CALC].calc_val;
    val[21] = REG_FREQ[OSC_WATER_CALC].calc_val;
    val[22] = REG_VREF[OSC_WATER_CALC].calc_val;
    val[23] = REG_VINC[OSC_WATER_CALC].calc_val;
    val[24] = REG_VTUNE[OSC_WATER_CALC].calc_val;

     
	val[25] = Convert(FC[0].density.class, FC[0].density.calc_unit, 92, FC[0].density.calc_val, 0, FC[0].density.aux);

	 
	val[26] = Convert(Density_Cal.class, Density_Cal.calc_unit, 105, FC[0].density_PDI_corrected, 0, FC[0].density.aux);

	val[27] = COR[0].vfr;
	val[28] = COR[0].diag;
	val[29] = AI[0].CURRENT.val;
	val[30] = FC[0].T.calc_val;
	val[31] = Density_Correction_Mode.val;
	val[32] = ANALYZER_MODE.val;
	val[33] = REG_WATERCUT.base_val;

	for (i=0;i<34;i++)
	{
		tmp0 = TOIEEE(val[i]);
		tmp1 = tmp0 >> 8;
		tmp2 = tmp1 >> 8;
		tmp3 = tmp2 >> 8;

		{ 
			Put(&TXbuf[id], tmp0, 1);
			Put(&TXbuf[id], tmp1, 1);
			Put(&TXbuf[id], tmp2, 1);
			Put(&TXbuf[id], tmp3, 1);
		}
	}

	Prepare_TX(id, 0);
}

long double Interpolate(long double w1, long double t1, long double w2, long double t2, long double t)
{
	long double w;

	w = w2 - ((t2-t)*(w2-w1)/(t2-t1));

	return w;
}                                                       

BOOL Set_Research_Mode(void)
{
	if (DIPSWITCH[0] == 0) 
		DIO_RESEARCH_MODE.val = 0;	
		
	if (!DIO_RESEARCH_MODE.val && !RESEARCH_FORCE_MODE)
	{
		Setup_Sample();
	}
}

void UnLock_P0(VAR* v)
{
	UnLock_P(0);
}

void UnLock_P1(VAR* v)
{
	UnLock_P(1);
}

void UnLock_P2(VAR* v)
{
	UnLock_P(2);
}

void UnLock_P3(VAR* v)
{
	UnLock_P(3);
}

void UnLock_P4(VAR* v)      
{
	UnLock_P(4);
}
          
void UnLock_P(int n)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
    
    REG_PW[4] = (SN_PIPE<<1) ^ 1251;    
    if ((REG_LOCK[n].val==REG_PW[n]) && !LOCKOUT)
	{
		DIO_LOCK[n].val = 0;
		REG_LOCK[n].val = 0;
		if (n==0)
			Submit_Write_CFG_USER();
		
		else if (n==4)
			Submit_Write_CFG_USER();   
		
		else if (n==1)
		{ 
			DIO_LOCK[0].val = 0;
			REG_LOCK[0].val = 0;
			DIO_LOCK[2].val = 0;
			REG_LOCK[2].val = 0;
			DIO_LOCK[3].val = 0;
			REG_LOCK[3].val = 0;
			DIO_LOCK[4].val = 0;   
			REG_LOCK[4].val = 0;
		}
	}
	else
	{
		DIO_LOCK[n].val = 1;
		REG_LOCK[n].val = 0;
		LOCKOUT = 1;
		Timer_Insert(&TMR_CLEAR_LOCKOUT,0,1);
	}

	{asm("	pop		ST			");};
}

void Put_IEEE(int id, VAR* v)
{
	int tmp0;

	if ((v->STAT & 0x00000008) || (v==(VAR*)0))
	{
		tmp0 = 0x7FA00000;
	}
	else
	{
		tmp0 = TOIEEE(v->val);
	}
	Put(&TXbuf[id], tmp0>>24, 1);
	Put(&TXbuf[id], tmp0>>16, 1);
	Put(&TXbuf[id], tmp0>>8, 1);
	Put(&TXbuf[id], tmp0, 1);
}

void Unpack_ASCII(unsigned int* s, unsigned int* d, int np)
{
	 
	 
	 
	int				i,j;
	int				n;
	unsigned int	t[100];

	n = (np*8)/6;

	if ((n>100) || (n<1)) return;

	for(i=0;i<n;i++)
	{
		t[i] = 0;
	}

	j=0;
	for(i=0;i<np;i++)
	{
		t[4*j]   = ((s[3*i]>>2) & 0x3F);
		t[4*j+1] = ((((s[3*i]&0x03)<<4) | ((s[3*i+1]&0xF0)>>4)) & 0x3F);
		t[4*j+2] = ((((s[3*i+1]&0x0F)<<2) | ((s[3*i+2]&0xC0)>>6)) & 0x3F);
		t[4*j+3] = ((s[3*i+2]) & 0x3F);
		j++;
	}

	for(i=0;i<n;i++)
	{
		if (!(t[i] & 0x20)) t[i] |= 0x40;
	}

	for (i=0;i<(n/2);i++)
	{
		d[i] = ((t[2*i]<<8) | t[2*i+1]) & 0xFFFF;
	}
}

void Pack_ASCII(unsigned int* s, unsigned int* d, int n)
{
	 
	 
	 
	int				i,j;
	int				np;
	unsigned int	t[100];

	if ((n>100) || (n<1)) return;

	np = (n*6)/8;
	if ((n*6)%8) return;				 

	for(i=0;i<n;i++)
	{
		t[2*i]   = (s[i]>>8) & 0x3F;	 
		t[2*i+1] =  s[i]     & 0x3F;	 
	}

	for(i=0;i<np;i++)
	{
		d[i]=0;							 
	}

	j=0;
	for(i=0;i<np;i++)
	{
		switch (i%3)
		{
			case 0:
			{
				d[i] = (t[j+i]<<2) | (t[1+j+i]>>4);
				break;
			}

			case 1:
			{
				d[i] = ((t[j+i]&0x0F)<<4) | (t[1+j+i]>>2);
				break;
			}

			case 2:
			{
				d[i] = ((t[j+i]&0x03)<<6) | t[1+j+i];
				j++;
				break;
			}
		}
	}
}

void Reset_PID_Bias(VAR *v)
{
	unsigned int i;
	for(i=0;i<9;i++)
		AO[i].pid_bias = 0;	
}


void Mirror_To_Stream_Table(VAR* v)
{
 
 
 
 
	unsigned int i;
	int*	vect;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	i = (int)round(REG_STREAM_SELECT.val,0) - 1.0;

	SALINITY[i]  = REG_SALINITY.val;
	OIL_ADJ[i]   = REG_OIL_ADJ.val;
	WATER_ADJ[i] = REG_WATER_ADJ.val;

	VAR_Set_Unit_Param(&REG_WATERCUT, 0x00080000, REG_WATERCUT_ALARM_LO.val, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, 0x00070000, REG_WATERCUT_ALARM_HI.val, 0, 0);
	WATER_ALARM_LO[i] = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00080000, 0, 0);
	WATER_ALARM_HI[i] = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00070000, 0, 0);

	CCM_SETPOINT_P1[i] = CCM_SETPOINT_PRESSURE[0].calc_val;
	CCM_SETPOINT_P2[i] = CCM_SETPOINT_PRESSURE[1].calc_val;
	CCM_SETPOINT_L1[i] = CCM_SETPOINT_LEVEL[0].calc_val;
	CCM_SETPOINT_L2[i] = CCM_SETPOINT_LEVEL[1].calc_val;
    
     
    HSALT_ENABLE[i] 	  = HSALT.ENABLED.val;				
	GAS_ROUTINE_ENABLE[i] =	GAS_ENTRAINED.val;
	HSALT_MIN_FLOW[i] 	  =	HSALT.flow_threshold.calc_val;
	
	stream_bubble_length[i] = bubble_new_length.val;
	stream_pattern_length[i] = pattern_new_length.val;

	
	
	if ((int*)v == (int*)&boxcar_expire_val_minutes)
	{
		
		vect = boxcar_expire_val.vect2;
		boxcar_expire_val.vect2 = (int*)0; 
		VAR_Update(&boxcar_expire_val, floor(boxcar_expire_val_minutes.val * 60 / 2.67), 0, 0); 
		boxcar_expire_val.vect2 = vect;
		
		if (stream_boxcar_expire_minutes[i] != boxcar_expire_val_minutes.val)
		{
			stream_boxcar_expire_minutes[i] = boxcar_expire_val_minutes.val;
			boxcar_reset_needed = 1; 
		}
	}
	stream_boxcar_expire[i] = boxcar_expire_val.val;
	
	
	
	stream_delta_temp[i] = REG_DELTA_TEMP.val;
	
	 
	OIL_PHASE_ONLY_ENABLE[i]  = OIL_PHASE_ONLY.val;
	WATER_PHASE_ONLY_ENABLE[i]= WATER_PHASE_ONLY.val;  
	      
	LIQ_VALVE_P[i] = AO[1].P.calc_val;
	LIQ_VALVE_I[i] = AO[1].I.calc_val;  
	LIQ_VALVE_D[i] = AO[1].D.calc_val;  
	GAS_VALVE_P[i] = AO[2].P.calc_val;
	GAS_VALVE_I[i] = AO[2].I.calc_val;  
	GAS_VALVE_D[i] = AO[2].D.calc_val;
	
	{asm("	pop		ST			");};
}

void Mirror_From_Stream_Table(VAR* v)
{
	unsigned int i;
	int*	vect;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	i = (int)round(REG_STREAM_SELECT.val,0) - 1.0;

	vect = REG_SALINITY.vect2;
	REG_SALINITY.vect2 = (int*)0;
	VAR_Update(&REG_SALINITY, SALINITY[i], 0, 0);
	REG_SALINITY.vect2 = vect;
		
	vect = REG_OIL_ADJ.vect2;
	REG_OIL_ADJ.vect2 = (int*)0;
	VAR_Update(&REG_OIL_ADJ, OIL_ADJ[i], 0, 0);
	REG_OIL_ADJ.vect2 = vect;

	vect = REG_WATER_ADJ.vect2;
	REG_WATER_ADJ.vect2 = (int*)0;
	VAR_Update(&REG_WATER_ADJ, WATER_ADJ[i], 0, 0);
	REG_WATER_ADJ.vect2 = vect;

	vect = REG_WATERCUT_ALARM_LO.vect2;
	REG_WATERCUT_ALARM_LO.vect2 = (int*)0;
	VAR_Update(&REG_WATERCUT_ALARM_LO, WATER_ALARM_LO[i], 0, 0);
	REG_WATERCUT_ALARM_LO.vect2 = vect;

	vect = REG_WATERCUT_ALARM_HI.vect2;
	REG_WATERCUT_ALARM_HI.vect2 = (int*)0;
	VAR_Update(&REG_WATERCUT_ALARM_HI, WATER_ALARM_HI[i], 0, 0);
	REG_WATERCUT_ALARM_HI.vect2 = vect;

	VAR_Set_Unit_Param(&REG_WATERCUT, 0x00080000, REG_WATERCUT_ALARM_LO.val, 0, 0);
	VAR_Set_Unit_Param(&REG_WATERCUT, 0x00070000, REG_WATERCUT_ALARM_HI.val, 0, 0);

	{ 
		Clear(&PV_SAMPLES);
		PV_SAMPLES.sum = 0x80000000;		 

		Clear(&PV_SAMPLES_24hr);
		PV_SAMPLES_24hr.sum = 0x80000000;	 
		REG_PV_AVG_24hr = 0.0;

		Clear(&PV_SAMPLES_5min);
		PV_SAMPLES_5min.sum = 0x80000000;	 
		REG_PV_AVG_5min = 0.0;

		REG_PV_AVG_1sec = 0.0;
		REG_PV_AVG_CNT = 0;
	}

	Copy_CAPDATA(&Cap_Water, 0, 0);
	Copy_CAPDATA(&Cap_Oil, 0, 0);

	vect = CCM_SETPOINT_PRESSURE[0].vect2;
	CCM_SETPOINT_PRESSURE[0].vect2 = (int*)0;
	VAR_Update(&CCM_SETPOINT_PRESSURE[0], CCM_SETPOINT_P1[i], 0, 0);
	CCM_SETPOINT_PRESSURE[0].vect2 = vect;

	vect = CCM_SETPOINT_PRESSURE[1].vect2;
	CCM_SETPOINT_PRESSURE[1].vect2 = (int*)0;
	VAR_Update(&CCM_SETPOINT_PRESSURE[1], CCM_SETPOINT_P2[i], 0, 0);
	CCM_SETPOINT_PRESSURE[1].vect2 = vect;

	vect = CCM_SETPOINT_LEVEL[0].vect2;
	CCM_SETPOINT_LEVEL[0].vect2 = (int*)0;
	VAR_Update(&CCM_SETPOINT_LEVEL[0], CCM_SETPOINT_L1[i], 0, 0);
	CCM_SETPOINT_LEVEL[0].vect2 = vect;

	vect = CCM_SETPOINT_LEVEL[1].vect2;
	CCM_SETPOINT_LEVEL[1].vect2 = (int*)0;
	VAR_Update(&CCM_SETPOINT_LEVEL[1], CCM_SETPOINT_L2[i], 0, 0);
	CCM_SETPOINT_LEVEL[1].vect2 = vect;

	HSALT_CLEAR();       
	
	 
    vect = HSALT.ENABLED.vect2;
	HSALT.ENABLED.vect2 = (int*)0;
    HSALT.ENABLED.val 	= HSALT_ENABLE[i];	 
    HSALT.ENABLED.vect2 = vect;
    
    vect = GAS_ENTRAINED.vect;
	GAS_ENTRAINED.vect = (int*)0;
	GAS_ENTRAINED.val 	 = GAS_ROUTINE_ENABLE[i]; 
	GAS_ENTRAINED.vect = vect;
	
	vect = HSALT.flow_threshold.vect2;
	HSALT.flow_threshold.vect2 = (int*)0;
	VAR_Update(&HSALT.flow_threshold, HSALT_MIN_FLOW[i], 0, 0);  
	HSALT.flow_threshold.vect2 = vect;
	
	vect = bubble_new_length.vect2;
	bubble_new_length.vect2 = (int*)0;
	VAR_Update(&bubble_new_length, stream_bubble_length[i], 0, 0);
	bubble_new_length.vect2 = vect;
	
	vect = pattern_new_length.vect2;
	pattern_new_length.vect2 = (int*)0;
	VAR_Update(&pattern_new_length, stream_pattern_length[i], 0, 0);
	pattern_new_length.vect2 = vect;
	
	vect = REG_DELTA_TEMP.vect2;
	REG_DELTA_TEMP.vect2 = (int*)0;
	VAR_Update(&REG_DELTA_TEMP, stream_delta_temp[i], 0, 0);
	REG_DELTA_TEMP.vect2 = vect;

	boxcar_expire_val_minutes.val = stream_boxcar_expire_minutes[i];
	vect = boxcar_expire_val.vect2;
	boxcar_expire_val.vect2 = (int*)0; 
	VAR_Update(&boxcar_expire_val, floor(boxcar_expire_val_minutes.val * 60 / 2.67), 0, 0); 
	boxcar_expire_val.vect2 = vect;
	stream_boxcar_expire[i] = boxcar_expire_val.val;
	boxcar_reset_needed = 1; 
		
	 		
    vect = OIL_PHASE_ONLY.vect;
	OIL_PHASE_ONLY.vect = (int*)0;
	OIL_PHASE_ONLY.val  = OIL_PHASE_ONLY_ENABLE[i];
	OIL_PHASE_ONLY.vect = vect;    
	
	vect = WATER_PHASE_ONLY.vect;
	WATER_PHASE_ONLY.vect = (int*)0;
	WATER_PHASE_ONLY.val  = WATER_PHASE_ONLY_ENABLE[i];
	WATER_PHASE_ONLY.vect = vect;            
	
	   
	vect = AO[1].P.vect2;
	AO[1].P.vect2 = (int*)0;
	VAR_Update(&AO[1].P, LIQ_VALVE_P[i], 0, 0);
	AO[1].P.vect2 = vect; 
	
	vect = AO[1].I.vect2;
	AO[1].I.vect2 = (int*)0;
	VAR_Update(&AO[1].I, LIQ_VALVE_I[i], 0, 0);
	AO[1].I.vect2 = vect;
	
	vect = AO[1].D.vect2;
	AO[1].D.vect2 = (int*)0;
	VAR_Update(&AO[1].D, LIQ_VALVE_D[i], 0, 0);
	AO[1].D.vect2 = vect; 
	
	vect = AO[2].P.vect2;
	AO[2].P.vect2 = (int*)0;
	VAR_Update(&AO[2].P, GAS_VALVE_P[i], 0, 0);
	AO[2].P.vect2 = vect;  
	
	vect = AO[2].I.vect2;
	AO[2].I.vect2 = (int*)0;
	VAR_Update(&AO[2].I, GAS_VALVE_I[i], 0, 0);
	AO[2].I.vect2 = vect;
	
	vect = AO[2].D.vect2;
	AO[2].D.vect2 = (int*)0;
	VAR_Update(&AO[2].D, GAS_VALVE_D[i], 0, 0);
	AO[2].D.vect2 = vect;
	
	{asm("	pop		ST			");};
}

void BEEP_OFF(void)
{
	 
	DIO_BEEP.val = 0;
	IDEC_SA[1].val &= 0x40^0xFFFFFFFF;
}

void BEEP_ON(void)
{
	 
	if (DIO_BEEP.val)
	{
		IDEC_SA[1].val |= 0x00000040;
		Timer_Insert(&TMR_BEEP_OFF,0,2);
	}
	else
	{
		IDEC_SA[1].val &= 0x40^0xFFFFFFFF;
		Timer_Insert(&TMR_BEEP_OFF,0,3);
	}
}

void STATUS_LED_on(void)
{
	if (LED_GREEN==2)
	{
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF^(0x80|0x40));{asm("	pop		ST			");};};
	}
	else
	if (LED_GREEN)
	{
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x40);{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x80;{asm("	pop		ST			");};};
	}
	else
	{
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};};
	}

	Timer_Insert(&TMR_LEDOFF,0,2);
}

void STATUS_LED_off(void)
{
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x80|0x40;{asm("	pop		ST			");};};

	Timer_Insert(&TMR_LEDON,0,2);
}

void Initialize_Periodic_Events(void)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	Timer_Create(&TMR_DAMP, 0.1, -1, (int*)VAR_DAMP, 0);
	Timer_Create(&TMR_SELFTEST, 600.0, 1, (int*)Self_Test1, 1);
	Timer_Create(&TMR_RTC_UPDATE, 0.5, -1, (int*)Read_RTC, 1);
	Timer_Create(&TMR_REFRESH_TIME, 5.0, 1, (int*)Refresh_IDEC_Time, 1);
	Timer_Create(&TMR_T, 0.05, -1, (int*)Timer_T, 0);
	Timer_Create(&TMR_STAT, 0.1, -1, (int*)STAT, 0);
	Timer_Create(&TMR_POLL, 0.1, 1, (int*)Poll, 0);
	Timer_Create(&TMR_OSC_DELAY_LONG, REG_osc_settle_long.calc_val, 1, (int*)Setup_Sample, 0);
	Timer_Create(&TMR_OSC_DELAY_SHORT, REG_osc_settle_short.calc_val, 1, (int*)Setup_Sample, 0);
	Timer_Create(&TMR_BEEP_OFF, 10.0, 1, (int*)BEEP_OFF, 0);
	Timer_Create(&TMR_CLEAR_LOCKOUT, 10.0, 1, (int*)CLEAR_LOCKOUT, 0);
	Timer_Create(&TMR_MENU_REFRESH, 0.05, -1, (int*)MENU_REFRESH, 0);
	Timer_Create(&TMR_ADC_UPDATE, 0.10, -1, (int*)ADC_UPDATE, 0);
	Timer_Create(&TMR_PVAVG, 1.0, -1, (int*)PVAVG24, 0);
	Timer_Create(&TMR_PULSE_UPDATE, 0.10, -1, (int*)PULSE_UPDATE, 0);
	Timer_Create(&TMR_PERIODIC_ACCUM, 0.10, -1, (int*)Periodic_Accumulate, 0);
	Timer_Create(&TMR_SET_CURRENT, 0.10, -1, (int*)Set_Current, 0);
	Timer_Create(&TMR_UPDATE_RELAYS, 0.10, -1, (int*)Update_Relays, 0);
	Timer_Create(&TMR_CHECK_ZERO, 0.10, -1, (int*)Check_Zero, 0);
	Timer_Create(&TMR_LEDOFF, 0.05, 1, (int*)STATUS_LED_off, 0);
	Timer_Create(&TMR_LEDON, 0.95, 1, (int*)STATUS_LED_on, 0);
	Timer_Create(&TMR_SAMPLE_ERROR, 10.0, 1, (int*)Sampling_Error, 0);
	Timer_Create(&TMR_CCM_PURGE, 1.0, 1, (int*)CCM_PURGING, 0);
	Timer_Create(&TMR_CCM_TEST, 1.0, 1, (int*)CCM_TESTING, 0);
	Timer_Create(&TMR_iLV, 1.0, -1, (int*)Update_i_Log_Var, 0);
	Timer_Create(&TMR_DATALOG, 1.0, 1, (int*)DataLog, 0);
	Timer_Create(&TMR_DATALOG_USER, 1.0, 1, (int*)DataLogUser, 0);
	Timer_Create(&TMR_DATALOG_COUNTERS, 60.0, -1, (int*)DataLogCounters, 0);
	Timer_Create(&TMR_CLEAR_USER_LOG_EVENT_FLAG, 0.25, 1, (int*)DataLogUserClearFlag, 0);
	Timer_Create(&TMR_CLEAR_SYS_LOG_EVENT_FLAG, 0.25, 1, (int*)DataLogSysClearFlag, 0);
	Timer_Create(&TMR_ALFAT_LOG, 9, 1, (int*)Alfat_Log_Vars, 1); 

	 

	Timer_Create(&TMR_SET_BASICS, 0.25, 1, (int*)SET_BASICS, 0);
	Timer_Create(&TMR_RESET, 0.25, 1, (int*)System_Reset, 0);
	Timer_Create(&TMR_SERDEF, 0.25, 1, (int*)Serial_Defaults, 0);
	Timer_Create(&TMR_RESTART, 0.25, 1, (int*)System_Restart, 0);
	Timer_Create(&TMR_RESTORE_CFGF, 0.25, 1, (int*)Restore_CFG_FACTORY, 0);
	Timer_Create(&TMR_RESTORE_CFGU, 0.25, 1, (int*)Restore_CFG_USER, 0);
	Timer_Create(&TMR_SAVE_CFGF, 0.25, 1, (int*)Write_CFG_FACTORY, 0);
	Timer_Create(&TMR_SAVE_CFGU, 0.25, 1, (int*)Write_CFG_USER, 0);
	Timer_Create(&TMR_SELF_TEST, 0.25, 1, (int*)Self_Test_FULL, 0);
	Timer_Create(&TMR_GET_uP_CONFIG, 0.25, 1, (int*)GET_uP_CONFIG, 0);
	Timer_Create(&TMR_STORE_uP_CONFIG, 0.25, 1, (int*)STORE_uP_CONFIG, 0);
	Timer_Create(&TMR_GET_COMM_CONFIG, 0.25, 1, (int*)GET_COMM_CONFIG, 0);
	Timer_Create(&TMR_STORE_COMM_CONFIG, 0.25, 1, (int*)STORE_COMM_CONFIG, 0);
	Timer_Create(&TMR_GET_ANALYZER_CONFIG, 0.25, 1, (int*)GET_ANALYZER_CONFIG, 0);
	Timer_Create(&TMR_STORE_ANALYZER_CONFIG, 0.25, 1, (int*)STORE_ANALYZER_CONFIG, 0);
	Timer_Create(&TMR_GET_POWER_CONFIG, 0.25, 1, (int*)GET_POWER_CONFIG, 0);
	Timer_Create(&TMR_STORE_POWER_CONFIG, 0.25, 1, (int*)STORE_POWER_CONFIG, 0);
	Timer_Create(&TMR_GET_ANALOGIO_CONFIG, 0.25, 1, (int*)GET_ANALOGIO_CONFIG, 0);
	Timer_Create(&TMR_STORE_ANALOGIO_CONFIG, 0.25, 1, (int*)STORE_ANALOGIO_CONFIG, 0);
    Timer_Create(&TMR_GET_DISPLAY_CONFIG, 0.25, 1, (int*)GET_DISPLAY_CONFIG, 0);
	Timer_Create(&TMR_STORE_DISPLAY_CONFIG, 0.25, 1, (int*)STORE_DISPLAY_CONFIG, 0);
    Timer_Create(&TMR_GET_MOTHERBOARD_CONFIG, 0.25, 1, (int*)GET_MOTHERBOARD_CONFIG, 0);
	Timer_Create(&TMR_STORE_MOTHERBOARD_CONFIG, 0.25, 1, (int*)STORE_MOTHERBOARD_CONFIG, 0);

	 
	Timer_Insert(&TMR_RTC_UPDATE,1,1);
	Timer_Insert(&TMR_REFRESH_TIME,1,1);
	Timer_Insert(&TMR_T,0,1);
	Timer_Insert(&TMR_STAT,0,1);
	 
	Timer_Insert(&TMR_DAMP,0,1);
	Timer_Insert(&TMR_DATALOG,0,1);
	Timer_Insert(&TMR_DATALOG_USER,0,1);
	Timer_Insert(&TMR_DATALOG_COUNTERS,0,1);
	Timer_Insert(&TMR_iLV,0,1);
	Timer_Insert(&TMR_MENU_REFRESH,0,1);
	if(!(SA&&(HW_VER<0xB7))) Timer_Insert(&TMR_ADC_UPDATE,0,1);
	Timer_Insert(&TMR_PERIODIC_ACCUM,0,1);
	Timer_Insert(&TMR_PULSE_UPDATE,0,1);
	Timer_Insert(&TMR_SET_CURRENT,0,1);
	Timer_Insert(&TMR_UPDATE_RELAYS,0,1);
	Timer_Insert(&TMR_CHECK_ZERO,0,1);
	Timer_Insert(&TMR_LEDON,0,1);
	Timer_Insert(&TMR_PVAVG,0,1);

	{asm("	pop		ST			");};
}

 
 
 
void CLEAR_LOCKOUT(void)
{
	LOCKOUT = 0;
}

void Submit_Setup_Basics(void)
{
	Timer_Insert(&TMR_SET_BASICS,0,1);
}

void Submit_Write_CFG_USER(void)
{
	Timer_Insert(&TMR_SAVE_CFGU,0,1);
}

void Submit_Write_CFG_FACTORY(void)
{
	Timer_Insert(&TMR_SAVE_CFGF,0,1);
}

void Submit_Restore_CFG_USER(void)
{
	Timer_Insert(&TMR_RESTORE_CFGU,0,1);
}

void Submit_Restore_CFG_FACTORY(void)
{
	Timer_Insert(&TMR_RESTORE_CFGF,0,1);
}

void Submit_SELF_TEST(void)
{
	Timer_Insert(&TMR_SELF_TEST,0,1);
}

void Submit_Reset(void)
{
	Timer_Insert(&TMR_RESET,0,1);
}

void Submit_Serial_Defaults(void)
{	
	
	 


}

void Serial_Defaults(void)
{
	Port_Defaults(1);
	Write_CFG_USER();
}

void Submit_Restart(void)
{
	Timer_Insert(&TMR_RESTART,0,1);
}

void SET_BASICS(void)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	Setup_Basics();
	Write_CFG_FACTORY();
	c_int00();
	while(1){}
}

void STAT(void)
{
	Set_Diag_Status();
}

 
 
 
void Restore_CFG_USER(void)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	Restore_CFG();

	c_int00();
	while(1){}
}

void Restore_CFG_FACTORY(void)
{
	int i;
	unsigned int* source;
	unsigned int* dest;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF^(0x80|0x40));{asm("	pop		ST			");};};

	if (Calc_CRC(((unsigned int*)0x418000), 0x00008000)==0x00000000)
	{
		dest = ((unsigned int*)0xA00000);
		source = ((unsigned int*)0x418000);
		for (i=0;i<0x00008000;i++)
		{
			dest[i] = source[i];
		}

		Write_CFG_USER();
	}
	else
	{
		Setup_Basics();
		Write_CFG_FACTORY();
	}

	c_int00();
	while(1){}
}

int Restore_CFG(void)
{
	int r;
	int i;
	unsigned int* source;
	unsigned int* dest;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF^(0x80|0x40));{asm("	pop		ST			");};};

	r = 1;

 

	if (Calc_CRC(((unsigned int*)0x408000), 0x00008000)!=0x00000000)
	{
		if (Calc_CRC(((unsigned int*)0x418000), 0x00008000)==0x00000000)
		{
			dest = ((unsigned int*)0xA00000);
			source = ((unsigned int*)0x418000);
			for (i=0;i<0x00008000;i++)
			{
				dest[i] = source[i];
			}

			Write_CFG_USER();
			CHANGE = 1;
		}
		else
		{
			r = 0;
			Setup_Basics();
			Write_CFG_FACTORY();
		}
	}

	{
		dest = ((unsigned int*)0xA00000);
		source = ((unsigned int*)0x408000);
		for (i=0;i<0x00008000;i++)
		{
			dest[i] = source[i];
		}
	}

	{asm("	pop		ST			");};

	return r;
}

BOOL Write_CFG_USER(void)
{
	unsigned int* source;
	unsigned int CRC;
	int r;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};};

	source = ((unsigned int*)0xA00000);

	CRC = Calc_CRC(source, 0x00008000-1);

	source[0x00008000-1] = CRC;

 
	r = FLASH_ERASE_BLK(((unsigned int*)0x408000));
	r |= FLASH_WRITE_BLK(((unsigned int*)0x408000), source, 0x00008000);

	{asm("	pop		ST			");};

	if (r)
	{
		DIAGNOSTICS[0] |= 0x0008;
		return 0;
	}
	else
	{
		CHANGE = 0;
		return 1;
	}
}

BOOL Write_CFG_FACTORY(void)
{
	unsigned int* source;
	unsigned int CRC;
	int r;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};};

	RESET_COUNTER = 0;	 

	{ 
		source = ((unsigned int*)0xA00000);

		CRC = Calc_CRC(source, 0x00008000-1);

		source[0x00008000-1] = CRC;

		r = FLASH_ERASE_BLK(((unsigned int*)0x418000));
		r |= FLASH_WRITE_BLK(((unsigned int*)0x418000), source, 0x00008000);

 
		r |= FLASH_ERASE_BLK(((unsigned int*)0x408000));
		r |= FLASH_WRITE_BLK(((unsigned int*)0x408000), source, 0x00008000);
	}

	{asm("	pop		ST			");};

	if (r)
	{
		DIAGNOSTICS[0] |= 0x0008;
		return 0;
	}
	else
	{
		CHANGE = 0;
		return 1;
	}
}

void Update_Relays(void)
{
	VAR* v;
	int i;
	unsigned int ui;
	BOOL r;
	long double s;

	for (i=0;i<2;i++)
	{
		r = RLY[i].ON.val & 0x01;

		v = HART_Lookup(RLY[i].v.val, &ui, (int*)&HART_DV_Table);

		s = Convert(v->class, v->unit, RLY[i].unit, v->val, 0, v->aux);

		switch(RLY[i].MODE)
		{
			case 0x00:
			{ 
				if (RLY[i].STATUS_MASK & v->STAT) r = 1;
				else r = 0;
				break;
			}

			case 0x01:
			{ 
				if (l_compare(&s, (long double)RLY[i].setpoint, 0)==0)
				{
					r = 1;
				}
				else
				{
					r = 0;
				}
				break;
			}

			case 0x03:                                  
			{ 
				if (s>=RLY[i].setpoint) r = 1;
				else r = 0;
				break;
			}

			case 0x02:
			{ 
				if (s>RLY[i].setpoint) r = 1;
				else r = 0;
				break;
			}

			case 0x04:
			{ 
				if (s<RLY[i].setpoint) r = 1;
				else r = 0;
				break;
			}

			case 0x05:
			{ 
				if (s<=RLY[i].setpoint) r = 1;
				else r = 0;
				break;
			}

			case 0x06:
			{ 
				if (s!=RLY[i].setpoint) r = 1;
				else r = 0;
				break;
			}

			case 0x20:
			{ 
				r ^= 0x01;
				break;
			}

			case 0x30:
			{ 
				if (RLY[i].STATUS_MASK & DIAGNOSTICS[0]) r = 1;
				else r = 0;
				break;
			}

			case 0x40:
			{ 
				if (RLY[i].STATUS_MASK & DIAGNOSTICS[1]) r = 1;
				else r = 0;
				break;
			}

			case 0xFF:
			{ 
				r = 2;
				break;
			}

			case 0x10:
			default:
			{ 
				break;
			}
		}

		if (r==2) continue;

		RLY[i].ON.val = r;

		if (RLY[0].ON.val)
		{
			{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) |= 0x01;{asm("	pop		ST			");}};
		}
		else
		{
			{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x01);{asm("	pop		ST			");}};
		}

		if (RLY[1].ON.val)
		{
			{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) |= 0x02;{asm("	pop		ST			");}};
		}
		else
		{
			{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900001) &= (0xFF ^ 0x02);{asm("	pop		ST			");}};
		}
	}
}

void Zero_FC1(void)
{
	Clear_Accumulator(0);
}

void Zero_FC2(void)
{
	Clear_Accumulator(1);
}

void Zero_FC3(void)
{
	Clear_Accumulator(2);
}

void Disable_PDI_WC_Mode(int id)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	if (CALC_WC_DENSITY.val)
		USE_PDI_WATERCUT.val = 0;
		
	{asm("	pop		ST			");};
}

void Disable_WC_Density_Mode(int id)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	if (USE_PDI_WATERCUT.val)
		CALC_WC_DENSITY.val = 0;	
	{asm("	pop		ST			");};
}

void Clear_Accumulator(int n)
{
	MPKT* p;
	int i;

	switch(n)
	{
		case 0: FC[n].PULSE = ((*((volatile char*) 0x090000C) &0xFF)<<8) | (*((volatile char*) 0x090000B) &0xFF); break;
		case 1: FC[n].PULSE = ((*((volatile char*) 0x090000E) &0xFF)<<8) | (*((volatile char*) 0x090000D) &0xFF); break;
		case 2: FC[n].PULSE = ((*((volatile char*) 0x0900010) &0xFF)<<8) | (*((volatile char*) 0x090000F) &0xFF); break;
	}

	FC[n].Z.val = 0;

	FC[n].CNT = *((volatile unsigned int*) 0x808034);

	FC[n].PULSE_COUNTER = 0;
	FC[n].PULSE_DELTA = 0;
	VAR_Update(&FC[n].PULSE_TOTAL, 0.0, 0, 0);
	VAR_Update(&FC[n].PULSE_FLOW, 0.0, 0, 0);

	VAR_Update(&FC[n].FLOW_OIL, 0.0, 0, 0);
	VAR_Update(&FC[n].FLOW_WATER, 0.0, 0, 0);
	if (!FC[n].MAN_FLOW) VAR_Update(&FC[n].FLOW_TOTAL, 0.0, 0, 0);

	FC[0].gross_oil_whole_part = 0.0;
	FC[0].gross_oil_fract_part = 0.0;
	FC[0].gross_water_whole_part = 0.0;
	FC[0].gross_water_fract_part = 0.0;
	
	VAR_Update(&FC[n].GROSS_OIL, 0.0, 0, 0);
	VAR_Update(&FC[n].GROSS_WATER, 0.0, 0, 0);
	VAR_Update(&FC[n].GROSS_TOTAL, 0.0, 0, 0);
	


	VAR_Update(&FC[n].NET_FLOW_OIL, 0.0, 0, 0);
	VAR_Update(&FC[n].NET_FLOW_WATER, 0.0, 0, 0);
	VAR_Update(&FC[n].NET_FLOW_TOTAL, 0.0, 0, 0);

	VAR_Update(&FC[n].NET_OIL, 0.0, 0, 0);
	VAR_Update(&FC[n].NET_WATER, 0.0, 0, 0);
	VAR_Update(&FC[n].NET_TOTAL, 0.0, 0, 0);

	if (n==0)
	{
		if ((ANALYZER_MODE.val&0xFF)==6)
		{
			CCM_GAS_CNT = *((volatile unsigned int*) 0x808034);
			
			ccm_gas_total_fract_part = 0.0;
			ccm_gas_total_whole_part = 0.0;
			
			VAR_Update(&CCM_GAS_TOTAL, 0.0, 0, 0);
			VAR_Update(&CCM_GAS_FLOW, 0.0, 0, 0);
			CCM_24_GAS = 0.0;
			CCM_24_TOTAL = 0.0;
			CCM_24_OIL = 0.0;
			CCM_24_WATER = 0.0;

			p = Master_Create((int*) 0, 1, 2, 5, 3, 1, 1.0);
			List_Add(&PORT[2].MASTER, (GENERIC*)p);

			if (((CCM_CORRECT_GAS_TO_STP==0) && (CCM_GAS_MASS==0)) && INITIALIZING)
			{ 
			}
			else
			{
				p = Master_Create((int*) 0, 1, 3, 5, 3, 1, 1.0);
				List_Add(&PORT[2].MASTER, (GENERIC*)p);
			}

			if (CCM_2LIQ)
			{
				p = Master_Create((int*) 0, 1, 4, 5, 3, 1, 1.0);
				List_Add(&PORT[3].MASTER, (GENERIC*)p);
			}

			if (CCM_2GAS)
			{
				if (((CCM_CORRECT_GAS_TO_STP==0) && (CCM_GAS_MASS==0)) && INITIALIZING)
				{ 
				}
				else
				{
					p = Master_Create((int*) 0, 1, 5, 5, 3, 1, 1.0);
					List_Add(&PORT[3].MASTER, (GENERIC*)p);
				}
			}
	 	}
	}

	if (!INITIALIZING)
	{
		DataLogCounter(n,1);

		if (FC_Periodic.erased_sector)
		{ 
			for (i=0;i<3;i++)
			{
				DataLogCounter(i,1);
			}
			FC_Periodic.erased_sector = 0;
		}
	}
}

void Clear_Accumulators(int id)
{
	int i;
	unsigned int mode;
	float	GROSS_OIL[3];
	float	GROSS_WATER[3];
	float	NET_OIL[3];
	float	NET_WATER[3];
	float	GAS_TOTAL;
	unsigned int* p;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	for (i=0;i<3;i++) Clear_Accumulator(i);

	if (INITIALIZING)
	{ 
		GAS_TOTAL = 0.0;
		for (i=0;i<3;i++)
		{
			GROSS_OIL[i]	= 0.0;
			GROSS_WATER[i]	= 0.0;
			NET_OIL[i]		= 0.0;
			NET_WATER[i]	= 0.0;
		}

		for (i=0;i<3;i++)
		{
			mode = 0x0B+i;

			p = FindLastLogRecord(&FC_Periodic, mode);

			if (p != 0x0000000)
			{
				if (mode == 0x0B) GAS_TOTAL	= FMIEEE(p[6]);

				NET_OIL[i]		=  FMIEEE(p[2]);
				NET_WATER[i]	=  FMIEEE(p[3]);
				GROSS_OIL[i]	=  FMIEEE(p[4]);
				GROSS_WATER[i]	=  FMIEEE(p[5]);
			}

			if (mode == 0x0B) 
			{
				
				ccm_gas_total_whole_part = floor(GAS_TOTAL);
				ccm_gas_total_fract_part = GAS_TOTAL - ccm_gas_total_whole_part;
		
				VAR_Update(&CCM_GAS_TOTAL, ccm_gas_total_whole_part + ccm_gas_total_fract_part,0,0); 
			}

			
			FC[i].gross_oil_whole_part		= floor(GROSS_OIL[i]);								
			
			FC[i].gross_oil_fract_part		= GROSS_OIL[i] - FC[i].gross_oil_whole_part;
			
			VAR_Update(&FC[i].GROSS_OIL, FC[i].gross_oil_whole_part + FC[i].gross_oil_fract_part, 0, 0);
			
			
			FC[i].gross_water_whole_part	= floor(GROSS_WATER[i]);
			
			FC[i].gross_water_fract_part	= GROSS_WATER[i] - FC[i].gross_water_whole_part;	
			
			VAR_Update(&FC[i].GROSS_WATER, FC[i].gross_water_whole_part + FC[i].gross_water_fract_part, 0, 0);
			
			VAR_Update(&FC[i].GROSS_TOTAL, GROSS_OIL[i] + GROSS_WATER[i], 0, 0);
	
			VAR_Update(&FC[i].NET_OIL, NET_OIL[i], 0, 0);
			VAR_Update(&FC[i].NET_WATER, NET_WATER[i], 0, 0);
			VAR_Update(&FC[i].NET_TOTAL, NET_OIL[i] + NET_WATER[i], 0, 0);
		}
	}

	ZERO_INPUT = 0x00;
	COR[0].mass_total		= 0.0;
	COR[0].volume_total		= 0.0;
	COR[1].mass_total		= 0.0;
	COR[1].volume_total		= 0.0;
	COR[2].mass_total		= 0.0;
	COR[2].volume_total		= 0.0;
	COR[3].mass_total		= 0.0;
	COR[3].volume_total		= 0.0;

	{asm("	pop		ST			");};
}

void Totalizer_Control(int id)
{
	MPKT* p;

	if ((ANALYZER_MODE.val&0xFF)!=6) return;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (DIO_TOTALIZER_CONTROL.val)
	{ 
		p = Master_Create((int*) 0, 1, 2, 5, 2, 1, 1.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);
		p = Master_Create((int*) 0, 1, 3, 5, 2, 1, 1.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);

		if (CCM_2LIQ)
		{
			p = Master_Create((int*) 0, 1, 4, 5, 2, 1, 1.0);
			List_Add(&PORT[3].MASTER, (GENERIC*)p);
		}

		if (CCM_2GAS)
		{
			p = Master_Create((int*) 0, 1, 5, 5, 2, 1, 1.0);
			List_Add(&PORT[3].MASTER, (GENERIC*)p);
		}

		FC[0].enable_PULSE = 0;
		FC[0].enable_FLOW = 1;
		FC[0].enable_GROSS = 1;
	}
	else
	{ 
		p = Master_Create((int*) 0, 1, 2, 5, 2, 1, 0.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);
		p = Master_Create((int*) 0, 1, 3, 5, 2, 1, 0.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);

		if (CCM_2LIQ)
		{
			p = Master_Create((int*) 0, 1, 4, 5, 2, 1, 0.0);
			List_Add(&PORT[3].MASTER, (GENERIC*)p);
		}

		if (CCM_2GAS)
		{
			p = Master_Create((int*) 0, 1, 5, 5, 2, 1, 0.0);
			List_Add(&PORT[3].MASTER, (GENERIC*)p);
		}

		FC[0].enable_PULSE = 0;
		FC[0].enable_FLOW = 0;
		FC[0].enable_GROSS = 1;
	}

	{asm("	pop		ST			");};
}

void Check_Zero(void)
{
	ZERO_INPUT = ZERO_INPUT << 1;

	if ((*((volatile char*) 0x0900001) & 0x40)==0x00)
	{
		ZERO_INPUT |= 1;
	}

	if ((ZERO_INPUT&0xFF)==0x0F)
	{
		Clear_Accumulators(0);
	}
}

double truncate (double v, int n)
{
    double a, ai;

    if (n>6) return v;
    else if (n<1) return v;

    a = v*pow(10.0, (double)(n+1));

    a /= 10.0;
    modf(a, &ai);

    return (ai/pow(10.0, (double)n));
}

double round (double v, int n)
{
    double a, ai;

    if (n>6) return v;
    else if (n<0) return v;

    a = v*pow(10.0, (double)(n+1));

    if(v<0.0) a -= 5.0;
    else a += 5.0;

    a /= 10.0;
    modf(a, &ai);

    return (ai/pow(10.0, (double)n));
}

double sigfig(double v, int n)
{
	int s;
	double t;
	double a;

    if(n<1) return v;
    else if (n>6) return v;
	else if(v==0.0) return v;

    if(v<0.0) s = -1;
    else s = 1;

    a = fabs(v);

    t = pow(10.0, floor(log10(a))+1.0);

    return (s*round(a/t, n)*t);
}

void PULSE_UPDATE(void)
{
	 

	if ((*((volatile char*) 0x0900006) & 0x20)) FC[0].PULSE_STAT = 0;
	else FC[0].PULSE_STAT = 1;

	if ((*((volatile char*) 0x0900006) & 0x40)) FC[1].PULSE_STAT = 0;
	else FC[1].PULSE_STAT = 1;

	if ((*((volatile char*) 0x0900006) & 0x80)) FC[2].PULSE_STAT = 0;
	else FC[2].PULSE_STAT = 1;
}

#line 4362
void Accum_Fractional_Oil(long double* o)
{
	FC[0].gross_oil_whole_part += floor(*o);
	
	FC[0].gross_oil_fract_part += ( *o - floor(*o) ); 
	
	if (FC[0].gross_oil_fract_part > 1.0)
	{
		FC[0].gross_oil_whole_part += floor(FC[0].gross_oil_fract_part);
		FC[0].gross_oil_fract_part -= floor(FC[0].gross_oil_fract_part);
	}
	
}

#line 4382
void Accum_Fractional_Water(long double* w)
{
	FC[0].gross_water_whole_part += floor(*w);
	
	FC[0].gross_water_fract_part += ( *w - floor(*w) ); 
	
	if (FC[0].gross_water_fract_part > 1.0)
	{
		FC[0].gross_water_whole_part += floor(FC[0].gross_water_fract_part);
		FC[0].gross_water_fract_part -= floor(FC[0].gross_water_fract_part);
	}
	
}

void Accum_Fractional_Gas(long double* t)
{
	ccm_gas_total_whole_part += floor(*t);
	
	ccm_gas_total_fract_part += ( *t - floor(*t) ); 
	
	if (ccm_gas_total_fract_part > 1.0)
	{
		ccm_gas_total_whole_part += floor(ccm_gas_total_fract_part);
		ccm_gas_total_fract_part -= floor(ccm_gas_total_fract_part);
	}
	
}

void Disable_Heater(void)
{
	if (DIO_HEATER_DISABLE.val)
	{
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x02;{asm("	pop		ST			");};};
	}
	else
	{
		{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x02);{asm("	pop		ST			");};};
	}
}

void Set_Class_Units_AO1(int id)
{
	Set_Class_Units_AO(id, 0);
}

void Set_Class_Units_AO2(int id)
{
	Set_Class_Units_AO(id, 1);
}

void Set_Class_Units_AO3(int id)
{
	Set_Class_Units_AO(id, 2);
}

void Set_Class_Units_AO4(int id)
{
	Set_Class_Units_AO(id, 3);
}

void Set_Class_Units_AO5(int id)
{
	Set_Class_Units_AO(id, 4);
}

void Set_Class_Units_AO6(int id)
{
	Set_Class_Units_AO(id, 5);
}

void Set_Class_Units_AO7(int id)
{
	Set_Class_Units_AO(id, 6);
}

void Set_Class_Units_AO8(int id)
{
	Set_Class_Units_AO(id, 7);
}

void Set_Class_Units_AO9(int id)
{
	Set_Class_Units_AO(id, 8);
}

void Set_Class_Units_AO(int id, int i)
{
	unsigned int ui;
	VAR* v;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	v = HART_Lookup(AO[i].v.val, &ui, (int*)&HART_DV_Table);
	AO[i].class.val = v->class;
	AO[i].unit.val = v->unit;

	Set_Units(id);

	{asm("	pop		ST			");};
}

void Set_Class_Units_AI1(int id)
{
	Set_Class_Units_AI(id, 0);
}

void Set_Class_Units_AI2(int id)
{
	Set_Class_Units_AI(id, 1);
}

void Set_Class_Units_AI3(int id)
{
	Set_Class_Units_AI(id, 2);
}

void Set_Class_Units_AI4(int id)
{
	Set_Class_Units_AI(id, 3);
}

void Set_Class_Units_AI5(int id)
{
	Set_Class_Units_AI(id, 4);
}

void Set_Class_Units_Pulse1(int id)
{
	Set_Class_Units_Pulse(id, 0);
}

void Set_Class_Units_Pulse2(int id)
{
	Set_Class_Units_Pulse(id, 1);
}

void Set_Class_Units_Pulse3(int id)
{
	Set_Class_Units_Pulse(id, 2);
}

void Set_Class_Units_AI(int id, int i)
{
	unsigned int ui;
	VAR* v;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	v = HART_Lookup(AI[i].v.val, &ui, (int*)&HART_DVINPUT_Table);
	AI[i].class.val = v->class;
	AI[i].unit.val = v->unit;

	Set_Units(id);

	{asm("	pop		ST			");};
}

void Set_Class_Units_Pulse(int id, int i)
{
	unsigned int ui;
	VAR* v;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	v = HART_Lookup(FC[i].pulse_v.val, &ui, (int*)&HART_DVINPUT_Table);
	FC[i].pulse_class.val = v->class;
	FC[i].pulse_unit.val = v->unit;

	Set_Pulse_Units(id);

	{asm("	pop		ST			");};
}

void Set_RLY_Units(int id)
{
	int i;
	VAR* v;
	unsigned int ui;
	
	for(i=0;i<2;i++)
	{
		v = HART_Lookup(RLY[i].v.val, &ui, (int*)&HART_DV_Table);
		RLY[i].class = v->class;
		RLY[i].unit = v->unit;
	}
}

void Set_Units(int id)
{
	int i;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	for (i=0;i<5;i++)
	{
		AI[i].URV.class = AI[i].class.val;
		AI[i].URV.unit = AI[i].unit.val;
		AI[i].URV.calc_unit = AI[i].unit.val;

		AI[i].LRV.class = AI[i].class.val;
		AI[i].LRV.unit = AI[i].unit.val;
		AI[i].LRV.calc_unit = AI[i].unit.val;

		AI[i].VALUE.class = AI[i].class.val;
		AI[i].VALUE.unit = AI[i].unit.val;
		AI[i].VALUE.calc_unit = AI[i].unit.val;
	}

	for (i=0;i<9;i++)
	{
		AO[i].URV.class = AO[i].class.val;
		AO[i].URV.unit = AO[i].unit.val;
		AO[i].URV.calc_unit = AO[i].unit.val;

		AO[i].LRV.class = AO[i].class.val;
		AO[i].LRV.unit = AO[i].unit.val;
		AO[i].LRV.calc_unit = AO[i].unit.val;
	}

	{asm("	pop		ST			");};
}

void Set_Pulse_Units(int id)
{
	int i;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	for (i=0;i<3;i++)
	{
		FC[i].pulse_VALUE.class = FC[i].pulse_class.val;
		FC[i].pulse_VALUE.unit = FC[i].pulse_unit.val;
		FC[i].pulse_VALUE.calc_unit = FC[i].pulse_unit.val;
	}

	{asm("	pop		ST			");};
}


void Periodic_Accumulate(void)
{
	int i;
	for (i=0;i<3;i++)
	{
		if (FC[i].enable_PULSE) continue;
		Accumulate(&FC[i].FLOW_TOTAL);
	}

	if (((ANALYZER_MODE.val&0xFF)==6) && FC[0].enable_FLOW)
	{
		if ((CCM_CORRECT_GAS_TO_STP==0) && (CCM_GAS_MASS==0))
		{
			 
			
			
			Accumulate_Gas();
		}
		else
		{
			Accumulate_Gas();
		}
	}  
}   

void Accumulate_Gas(void)
{
	long double t;
	long double delta_time;
	int c,delta,per;
	int units[3];
	float r;

	if (!FC[0].enable_FLOW) return;

	Breakout_Flow_Units(CCM_GAS_FLOW.class, CCM_GAS_FLOW.calc_unit, units, &r);

	c = *((volatile unsigned int*) 0x808034);

	if (c>=CCM_GAS_CNT)
	{
		delta = c - CCM_GAS_CNT;
	}
	else
	{
		per = *((volatile unsigned int*) 0x808038);
		delta = (per-CCM_GAS_CNT) + c;
	}

	CCM_GAS_CNT = c;

	delta_time = delta;
	delta_time /= (CLOCK/2.0);

	t = CCM_GAS_FLOW.calc_val;
	t *= delta_time;
	t /= r;

	
	
	t = Convert(CCM_GAS_TOTAL.class, units[0], CCM_GAS_TOTAL.calc_unit, t, 0, CCM_GAS_TOTAL.aux);
	Accum_Fractional_Gas(&t);
	
	VAR_Update(&CCM_GAS_TOTAL, ccm_gas_total_whole_part + ccm_gas_total_fract_part,0,0);
}

void Accumulate(VAR* v)
{
	unsigned int i;
	long double t,w,o,n;
	long double delta_time;
	int c,delta,per;
	int units[3];
	float r;
	float pw,po,VCFw,VCFo,pom,pwm;
	float WCSTV, WCSTM;
	float oden,wden;

	i = v->aux;
	
	if (i>=3) 
		return;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	Breakout_Flow_Units(FC[i].FLOW_TOTAL.class, FC[i].FLOW_TOTAL.calc_unit, units, &r);

	if ((units[2]!=68) && (units[2]!=71))
	{
		{asm("	pop		ST			");};
		return;
	}

	{
		API_VCF(&FC[i], &VCFw, &VCFo);
		
		FC[i].VCFo = VCFo;
		FC[i].VCFw = VCFw;

		pw = FC[i].watercut.val / 100.0;
		
		if (pw > 1.0) 
			pw = 1.0;
		else if (pw < 0.0) 
			pw = 0.0;

		po = 1.0 - pw;
		
		if (po > 1.0) 
			po = 1.0;
		else if (po < 0.0) 
			po = 0.0;

		WCSTV = (pw * VCFw) / ((pw * VCFw) + (po * VCFo));
		
		if (WCSTV < 0.0) 
			WCSTV = 0.0;
		else if (WCSTV > 1.0) 
			WCSTV = 1.0;
		
		FC[i].net_watercut = WCSTV * 100.0;

		oden  = Convert(FC[i].density_oilST.class, FC[i].density_oilST.calc_unit, 92, FC[i].density_oilST.calc_val, 0, FC[i].density_oilST.aux);
		wden  = Convert(FC[i].density_waterST.class, FC[i].density_waterST.calc_unit, 92, FC[i].density_waterST.calc_val, 0, FC[i].density_waterST.aux);
		WCSTM = (WCSTV * wden) / ((WCSTV * wden) + ((1 - WCSTV) * oden));
		
		if (WCSTM < 0.0) 
			WCSTM = 0.0;
		else if (WCSTM > 1.0) 
			WCSTM = 1.0;
		
		FC[i].net_watercut_mass = WCSTM * 100.0;

		pwm = WCSTM;
		
		if (pwm > 1.0) 
			pwm = 1.0;
		else if (pwm < 0.0) 
			pwm = 0.0;

		pom = 1.0 - pwm;
		
		if (pom > 1.0) 
			pom = 1.0;
		else if (pom < 0.0) 
			pom = 0.0;
	}

	if (!FC[i].enable_FLOW)
	{
		{asm("	pop		ST			");};
		return;
	}

	if (FC[i].enable_PULSE)
	{
		n = ((long double)FC[i].PULSE_DELTA / (long double)FC[i].PULSES_PER_ACCUM_UNIT);
		
		if (n < 0.0) 
			n = 0.0;

		if (units[2] == 68)
		{
			o = Convert(FC[i].FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_unit, (po * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
			
			VAR_Update(&FC[i].FLOW_OIL, o, 0, 0);

			w = Convert(FC[i].FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].FLOW_WATER.calc_unit, (pw * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
			
			VAR_Update(&FC[i].FLOW_WATER, w, 0, 0);

			if ((FC[i].enable_GROSS) || (FC[i].enable_NET))
			{
				
				o = Convert(FC[i].GROSS_OIL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_unit, (po * n), 0, FC[i].GROSS_OIL.aux);
				Accum_Fractional_Oil(&o);
				VAR_Update(&FC[i].GROSS_OIL, FC[0].gross_oil_whole_part + FC[0].gross_oil_fract_part, 0, 0);
				
				
				w = Convert(FC[i].GROSS_WATER.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_unit, (pw * n), 0, FC[i].GROSS_WATER.aux);
				Accum_Fractional_Water(&w);
				VAR_Update(&FC[i].GROSS_WATER, FC[0].gross_water_whole_part + FC[0].gross_water_fract_part, 0, 0);
	
				t  = Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_WATER.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_val, 0, FC[i].GROSS_WATER.aux);
				t += Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_OIL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_val, 0, FC[i].GROSS_OIL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, t, 0, 0);
				
				
				if ( (FC[i].GROSS_TOTAL.val <= 0.0) ||  (FC[i].GROSS_WATER.val <= 0.0) )	
					t = 0.0;
				else
					t = 100 * (FC[i].GROSS_WATER.val / FC[i].GROSS_TOTAL.val );
				
				if (t > 100.0)	
					t = 100.0;
				
				VAR_Update(&FC[i].AVG_GROSS_TOTAL, t, 0, 0);
			}

			if (FC[i].enable_NET)
			{ 
				 
				o = Convert(FC[i].NET_OIL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].NET_OIL.calc_unit, (VCFo * po * n), 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_OIL, FC[i].NET_OIL.calc_val+o, 0, 0);

				w = Convert(FC[i].NET_WATER.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].NET_WATER.calc_unit, (VCFw * pw * n), 0, FC[i].NET_WATER.aux);
				
				VAR_Update(&FC[i].NET_WATER, FC[i].NET_WATER.calc_val+w, 0, 0);

				t  = Convert(FC[i].NET_TOTAL.class, FC[i].NET_WATER.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_val, 0, FC[i].NET_WATER.aux);
				t += Convert(FC[i].NET_TOTAL.class, FC[i].NET_OIL.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_val, 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_TOTAL, t, 0, 0);

				
				if ( (FC[i].NET_TOTAL.val <= 0.0) ||  (FC[i].NET_WATER.val <= 0.0) )
					t = 0.0;
				else
					t = 100 * (FC[i].NET_WATER.val / FC[i].NET_TOTAL.val);
				
				if (t > 100.0)	
					t = 100.0;	
				
				VAR_Update(&FC[i].AVG_NET_TOTAL, t, 0, 0);
				
				o *= r;
				o  = Convert(FC[i].NET_FLOW_OIL.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_unit, o, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_OIL, o, 0, 0);

				w *= r;
				w  = Convert(FC[i].NET_FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_unit, w, 0, FC[i].NET_FLOW_WATER.aux);
				
				VAR_Update(&FC[i].NET_FLOW_WATER, w, 0, 0);

				t  = Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_WATER.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				t += Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_OIL.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_TOTAL, t, 0, 0);
			}
		}
		else if (units[2]==71)
		{
			if (FC[i].enable_NET)
			{ 
				o = Convert(FC[i].FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_unit, (pom * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
				VAR_Update(&FC[i].FLOW_OIL, o, 0, 0);
	
				w = Convert(FC[i].FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].FLOW_WATER.calc_unit, (pwm * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
				VAR_Update(&FC[i].FLOW_WATER, w, 0, 0);

				
				o = Convert(FC[i].GROSS_OIL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_unit, (pom * n), 0, FC[i].GROSS_OIL.aux);		
				Accum_Fractional_Oil(&o);
				VAR_Update(&FC[i].GROSS_OIL, FC[0].gross_oil_whole_part + FC[0].gross_oil_fract_part, 0, 0);

				
				w = Convert(FC[i].GROSS_WATER.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_unit, (pwm * n), 0, FC[i].GROSS_WATER.aux);
				Accum_Fractional_Water(&w);
				VAR_Update(&FC[i].GROSS_WATER, FC[0].gross_water_whole_part + FC[0].gross_water_fract_part, 0, 0);
	
				t  = Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_WATER.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_val, 0, FC[i].GROSS_WATER.aux);
				t += Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_OIL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_val, 0, FC[i].GROSS_OIL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, t, 0, 0);
				
				
				if ( (FC[i].GROSS_TOTAL.val <= 0.0) ||  (FC[i].GROSS_WATER.val <= 0.0) )	
					t = 0.0;
				else
					t = 100 * (FC[i].GROSS_WATER.val / FC[i].GROSS_TOTAL.val );
				
				if (t > 100.0)	
					t = 100.0;
					
				VAR_Update(&FC[i].AVG_GROSS_TOTAL, t, 0, 0);

				o = Convert(FC[i].NET_OIL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].NET_OIL.calc_unit, (pom * n), 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_OIL, FC[i].NET_OIL.calc_val+o, 0, 0);
	
				w = Convert(FC[i].NET_WATER.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].NET_WATER.calc_unit, (pwm * n), 0, FC[i].NET_WATER.aux);
				
				VAR_Update(&FC[i].NET_WATER, FC[i].NET_WATER.calc_val+w, 0, 0);
	
				t  = Convert(FC[i].NET_TOTAL.class, FC[i].NET_WATER.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_val, 0, FC[i].NET_WATER.aux);
				t += Convert(FC[i].NET_TOTAL.class, FC[i].NET_OIL.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_val, 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_TOTAL, t, 0, 0);
				
				
				if ( (FC[i].NET_TOTAL.val <= 0.0) ||  (FC[i].NET_WATER.val <= 0.0) )
					t = 0.0;
				else
					t = 100 * (FC[i].NET_WATER.val / FC[i].NET_TOTAL.val);
				
				if (t > 100.0)	
					t = 100.0;	
				
				VAR_Update(&FC[i].AVG_NET_TOTAL, t, 0, 0);
	
				o = Convert(FC[i].NET_FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].NET_FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_OIL, o, 0, 0);
	
				w = Convert(FC[i].NET_FLOW_WATER.class, FC[i].FLOW_WATER.calc_unit, FC[i].NET_FLOW_WATER.calc_unit, FC[i].FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				
				VAR_Update(&FC[i].NET_FLOW_WATER, w, 0, 0);
	
				t  = Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_WATER.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				t += Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_OIL.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_TOTAL, t, 0, 0);
			}
			else
			{
				n = Convert(FC[i].GROSS_TOTAL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, n, 0, FC[i].GROSS_TOTAL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, 		FC[i].GROSS_TOTAL.calc_val+n, 	0, 0);
				VAR_Update(&FC[i].AVG_GROSS_TOTAL,	0.0,							0, 0);
                VAR_Update(&FC[i].NET_OIL, 			0.0, 							0, 0);
				VAR_Update(&FC[i].NET_WATER, 		0.0, 							0, 0);
				VAR_Update(&FC[i].NET_TOTAL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].AVG_NET_TOTAL,	0.0,							0, 0);
                VAR_Update(&FC[i].NET_FLOW_OIL, 	0.0, 							0, 0);
				VAR_Update(&FC[i].NET_FLOW_WATER, 	0.0, 							0, 0);
				VAR_Update(&FC[i].NET_FLOW_TOTAL, 	0.0, 							0, 0);
                VAR_Update(&FC[i].GROSS_OIL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].GROSS_WATER, 		0.0, 							0, 0);
                VAR_Update(&FC[i].FLOW_OIL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].FLOW_WATER, 		0.0, 							0, 0);
			}
		}
	}
	else
	{
		FC[i].PULSE_COUNTER = 0;
		
		VAR_Update(&FC[i].PULSE_FREQ,  0.0, 0, 0);
		VAR_Update(&FC[i].PULSE_FLOW,  0.0, 0, 0);
		VAR_Update(&FC[i].PULSE_TOTAL, 0.0, 0, 0);

		c = *((volatile unsigned int*) 0x808034);

		
			
			
			
			
			
		if (c >= FC[i].CNT)
			delta = c - FC[i].CNT;
		else
		{
			per   = *((volatile unsigned int*) 0x808038);
			delta = (per-FC[i].CNT) + c; 
		}

		FC[i].CNT   = c; 
        delta_time  = delta;
		delta_time /= (CLOCK/2.0);  
		
		
		
		

		if (units[2] == 68)
		{
			o = Convert(FC[i].FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_unit, (po * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
			VAR_Update(&FC[i].FLOW_OIL, o, 0, 0);
	
			w = Convert(FC[i].FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].FLOW_WATER.calc_unit, (pw * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
			
			VAR_Update(&FC[i].FLOW_WATER, w, 0, 0);

			if ((FC[i].enable_GROSS)||(FC[i].enable_NET))
			{
				t  = FC[i].FLOW_TOTAL.calc_val;
				t *= delta_time;
				t /= r;
    			n  = Convert(FC[i].GROSS_TOTAL.class, units[0], FC[i].GROSS_TOTAL.calc_unit, t, 0, FC[i].GROSS_TOTAL.aux);
	            
				
				o  = Convert(FC[i].GROSS_OIL.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_unit, (po * n), 0, FC[i].GROSS_OIL.aux);
				Accum_Fractional_Oil(&o);
				VAR_Update(&FC[i].GROSS_OIL, FC[0].gross_oil_whole_part + FC[0].gross_oil_fract_part, 0, 0);
	
				
				w = Convert(FC[i].GROSS_WATER.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_unit, (pw * n), 0, FC[i].GROSS_WATER.aux);
				Accum_Fractional_Water(&w);
				VAR_Update(&FC[i].GROSS_WATER, FC[0].gross_water_whole_part + FC[0].gross_water_fract_part, 0, 0);
				
	
				t  = Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_WATER.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_val, 0, FC[i].GROSS_WATER.aux);
				t += Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_OIL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_val, 0, FC[i].GROSS_OIL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, t, 0, 0);
				
				
				if ( (FC[i].GROSS_TOTAL.val <= 0.0) ||  (FC[i].GROSS_WATER.val <= 0.0) )	
					t = 0.0;
				else
					t = 100 * (FC[i].GROSS_WATER.val / FC[i].GROSS_TOTAL.val );
				
				if (t > 100.0)	
					t = 100.0;
					
				VAR_Update(&FC[i].AVG_GROSS_TOTAL, t, 0, 0);
				
			}
	
			if (FC[i].enable_NET)
			{ 
				 
				o = Convert(FC[i].NET_OIL.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].NET_OIL.calc_unit, (VCFo * po * n), 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_OIL, FC[i].NET_OIL.calc_val+o, 0, 0);
	
				w = Convert(FC[i].NET_WATER.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].NET_WATER.calc_unit, (VCFw * pw * n), 0, FC[i].NET_WATER.aux);
				
				VAR_Update(&FC[i].NET_WATER, FC[i].NET_WATER.calc_val+w, 0, 0);
	
				t  = Convert(FC[i].NET_TOTAL.class, FC[i].NET_WATER.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_val, 0, FC[i].NET_WATER.aux);
				t += Convert(FC[i].NET_TOTAL.class, FC[i].NET_OIL.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_val, 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_TOTAL, t, 0, 0);
				
				
				if ( (FC[i].NET_TOTAL.val <= 0.0) ||  (FC[i].NET_WATER.val <= 0.0) )
					t = 0.0;
				else
					t = 100 * (FC[i].NET_WATER.val / FC[i].NET_TOTAL.val);
				
				if (t > 100.0)	
					t = 100.0;	
				
				VAR_Update(&FC[i].AVG_NET_TOTAL, t, 0, 0);
	
				o *= r/delta_time;
				o  = Convert(FC[i].NET_FLOW_OIL.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_unit, o, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_OIL, o, 0, 0);
	
				w *= r/delta_time;
				w  = Convert(FC[i].NET_FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_unit, w, 0, FC[i].NET_FLOW_WATER.aux);
				
				VAR_Update(&FC[i].NET_FLOW_WATER, w, 0, 0);
	
				t  = Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_WATER.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				t += Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_OIL.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_TOTAL, t, 0, 0);
			}
		}
		else if (units[2]==71)
		{
			if (FC[i].enable_NET)
			{ 
				t  = FC[i].FLOW_TOTAL.calc_val;
				t *= delta_time;
				t /= r;
                n  = Convert(FC[i].GROSS_TOTAL.class, units[0], FC[i].GROSS_TOTAL.calc_unit, t, 0, FC[i].GROSS_TOTAL.aux);
                o  = Convert(FC[i].FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_unit, (pom * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
				VAR_Update(&FC[i].FLOW_OIL, o, 0, 0);
	
				w = Convert(FC[i].FLOW_WATER.class, FC[i].FLOW_TOTAL.calc_unit, FC[i].FLOW_WATER.calc_unit, (pwm * FC[i].FLOW_TOTAL.calc_val), 0, FC[i].FLOW_WATER.aux);
				
				VAR_Update(&FC[i].FLOW_WATER, w, 0, 0);

				
				o = Convert(FC[i].GROSS_OIL.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_unit, (pom * n), 0, FC[i].GROSS_OIL.aux);
				Accum_Fractional_Oil(&o);
				VAR_Update(&FC[i].GROSS_OIL, FC[0].gross_oil_whole_part + FC[0].gross_oil_fract_part, 0, 0);

				
				w = Convert(FC[i].GROSS_WATER.class, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_unit, (pwm * n), 0, FC[i].GROSS_WATER.aux);
				Accum_Fractional_Water(&w);
				VAR_Update(&FC[i].GROSS_WATER, FC[0].gross_water_whole_part + FC[0].gross_water_fract_part, 0, 0);
					
				t  = Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_WATER.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_WATER.calc_val, 0, FC[i].GROSS_WATER.aux);
				t += Convert(FC[i].GROSS_TOTAL.class, FC[i].GROSS_OIL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, FC[i].GROSS_OIL.calc_val, 0, FC[i].GROSS_OIL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, t, 0, 0);
								
				
				if ( (FC[i].GROSS_TOTAL.val <= 0.0) ||  (FC[i].GROSS_WATER.val <= 0.0) )	
					t = 0.0;
				else
					t = 100 * (FC[i].GROSS_WATER.val / FC[i].GROSS_TOTAL.val );
				
				if (t > 100.0)	
					t = 100.0;
					
				VAR_Update(&FC[i].AVG_GROSS_TOTAL, t, 0, 0);

				o = Convert(FC[i].NET_OIL.class, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_unit, (pom * n), 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_OIL, FC[i].NET_OIL.calc_val+o, 0, 0);
	
				w = Convert(FC[i].NET_WATER.class, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_unit, (pwm * n), 0, FC[i].NET_WATER.aux);
				
				VAR_Update(&FC[i].NET_WATER, FC[i].NET_WATER.calc_val+w, 0, 0);
	
				t  = Convert(FC[i].NET_TOTAL.class, FC[i].NET_WATER.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_WATER.calc_val, 0, FC[i].NET_WATER.aux);
				t += Convert(FC[i].NET_TOTAL.class, FC[i].NET_OIL.calc_unit, FC[i].NET_TOTAL.calc_unit, FC[i].NET_OIL.calc_val, 0, FC[i].NET_OIL.aux);
				
				VAR_Update(&FC[i].NET_TOTAL, t, 0, 0);
				
				
				if ( (FC[i].NET_TOTAL.val <= 0.0) ||  (FC[i].NET_WATER.val <= 0.0) )
					t = 0.0;
				else
					t = 100 * (FC[i].NET_WATER.val / FC[i].NET_TOTAL.val);
				
				if (t > 100.0)	
					t = 100.0;	
				
				VAR_Update(&FC[i].AVG_NET_TOTAL, t, 0, 0);
	
				o = Convert(FC[i].NET_FLOW_OIL.class, FC[i].FLOW_OIL.calc_unit, FC[i].NET_FLOW_OIL.calc_unit, FC[i].FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_OIL, o, 0, 0);
	
				w = Convert(FC[i].NET_FLOW_WATER.class, FC[i].FLOW_WATER.calc_unit, FC[i].NET_FLOW_WATER.calc_unit, FC[i].FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				
				VAR_Update(&FC[i].NET_FLOW_WATER, w, 0, 0);
	
				t  = Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_WATER.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_WATER.calc_val, 0, FC[i].NET_FLOW_WATER.aux);
				t += Convert(FC[i].NET_FLOW_TOTAL.class, FC[i].NET_FLOW_OIL.calc_unit, FC[i].NET_FLOW_TOTAL.calc_unit, FC[i].NET_FLOW_OIL.calc_val, 0, FC[i].NET_FLOW_OIL.aux);
				
				VAR_Update(&FC[i].NET_FLOW_TOTAL, t, 0, 0);
			}
			else
			{
				n = Convert(FC[i].GROSS_TOTAL.class, FC[i].PULSE_TOTAL.calc_unit, FC[i].GROSS_TOTAL.calc_unit, n, 0, FC[i].GROSS_TOTAL.aux);
				
				VAR_Update(&FC[i].GROSS_TOTAL, 		FC[i].GROSS_TOTAL.calc_val+n, 	0, 0);
				VAR_Update(&FC[i].AVG_GROSS_TOTAL,	0.0,							0, 0);
                VAR_Update(&FC[i].NET_OIL, 			0.0, 							0, 0);
				VAR_Update(&FC[i].NET_WATER, 		0.0, 							0, 0);
				VAR_Update(&FC[i].NET_TOTAL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].AVG_NET_TOTAL,	0.0,							0, 0);
                VAR_Update(&FC[i].NET_FLOW_OIL, 	0.0, 							0, 0);
				VAR_Update(&FC[i].NET_FLOW_WATER, 	0.0, 							0, 0);
				VAR_Update(&FC[i].NET_FLOW_TOTAL, 	0.0, 							0, 0);
                VAR_Update(&FC[i].GROSS_OIL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].GROSS_WATER, 		0.0, 							0, 0);
                VAR_Update(&FC[i].FLOW_OIL, 		0.0, 							0, 0);
				VAR_Update(&FC[i].FLOW_WATER, 		0.0, 							0, 0);
			}
		}
	}   

	{asm("	pop		ST			");};
}

void Set_FC_Units(int id)
{ 
	unsigned int i;
	int units[3];
	float r;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	for (i=0;i<3;i++)
	{
		if	((FC[i].flow_class.val!=72)&&(FC[i].flow_class.val!=66))
		{
			FC[i].flow_class.val = 66;
			FC[i].flow_unit.val = 135;
			FC[i].accum_unit.val = 46;
		}

		Breakout_Flow_Units(FC[i].flow_class.val, FC[i].flow_unit.val, units, &r);

		FC[i].FLOW_OIL.class = FC[i].flow_class.val;
		FC[i].FLOW_WATER.class = FC[i].flow_class.val;
		FC[i].FLOW_TOTAL.class = FC[i].flow_class.val;
		FC[i].GROSS_OIL.class = units[2];
		FC[i].GROSS_WATER.class = units[2];
		FC[i].GROSS_TOTAL.class = units[2];

		FC[i].NET_FLOW_OIL.class = FC[i].flow_class.val;
		FC[i].NET_FLOW_WATER.class = FC[i].flow_class.val;
		FC[i].NET_FLOW_TOTAL.class = FC[i].flow_class.val;
		FC[i].NET_OIL.class = units[2];
		FC[i].NET_WATER.class = units[2];
		FC[i].NET_TOTAL.class = units[2];

		FC[i].PULSE_FLOW.class = FC[i].flow_class.val;
		FC[i].PULSE_TOTAL.class = units[2];

		FC[i].FLOW_OIL.unit = FC[i].flow_unit.val;
		FC[i].FLOW_WATER.unit = FC[i].flow_unit.val;
		FC[i].FLOW_TOTAL.unit = FC[i].flow_unit.val;
		FC[i].GROSS_OIL.unit = FC[i].accum_unit.val;
		FC[i].GROSS_WATER.unit = FC[i].accum_unit.val;
		FC[i].GROSS_TOTAL.unit = FC[i].accum_unit.val;

		FC[i].NET_FLOW_OIL.unit = FC[i].flow_unit.val;
		FC[i].NET_FLOW_WATER.unit = FC[i].flow_unit.val;
		FC[i].NET_FLOW_TOTAL.unit = FC[i].flow_unit.val;
		FC[i].NET_OIL.unit = FC[i].accum_unit.val;
		FC[i].NET_WATER.unit = FC[i].accum_unit.val;
		FC[i].NET_TOTAL.unit = FC[i].accum_unit.val;

		FC[i].PULSE_FLOW.unit = FC[i].flow_unit.val;
		FC[i].PULSE_TOTAL.unit = FC[i].accum_unit.val;

		FC[i].FLOW_OIL.calc_unit =  FC[i].flow_unit.val;
		FC[i].FLOW_WATER.calc_unit = FC[i].flow_unit.val;
		FC[i].FLOW_TOTAL.calc_unit = FC[i].flow_unit.val;
		FC[i].GROSS_OIL.calc_unit = FC[i].accum_unit.val;
		FC[i].GROSS_WATER.calc_unit = FC[i].accum_unit.val;
		FC[i].GROSS_TOTAL.calc_unit = FC[i].accum_unit.val;

		FC[i].NET_FLOW_OIL.calc_unit =  FC[i].flow_unit.val;
		FC[i].NET_FLOW_WATER.calc_unit =  FC[i].flow_unit.val;
		FC[i].NET_FLOW_TOTAL.calc_unit =  FC[i].flow_unit.val;
		FC[i].NET_OIL.calc_unit =  FC[i].accum_unit.val;
		FC[i].NET_WATER.calc_unit = FC[i].accum_unit.val;
		FC[i].NET_TOTAL.calc_unit = FC[i].accum_unit.val;

		FC[i].PULSE_FLOW.calc_unit =  FC[i].flow_unit.val;
		FC[i].PULSE_TOTAL.calc_unit =  FC[i].accum_unit.val;
	}

	{asm("	pop		ST			");};
}

void Set_Density_Cal_Unit(int id)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	if ((Density_Cal_Unit.val==107) || (Density_Cal_Unit.val==105))
	{
		if (Density_Cal.calc_unit!=Density_Cal_Unit.val)
		{
			Density_Cal.calc_unit = Density_Cal_Unit.val;
			Density_Cal.unit = Density_Cal.calc_unit;
		}
	}
	else
	{
		Density_Cal_Unit.val = Density_Cal.calc_unit;
	}

	if (Density_Cal_Unit.val==107)
	{
		Density_D1.calc_unit = 247;
		Density_D1.unit = 247; 
		VAR_Update(&Density_D3, 0.00, 0, 0);        
		VAR_Update(&Density_D2, 0.00, 0, 0);        
		VAR_Update(&Density_D1, -0.0286, 0, 0);
		VAR_Update(&Density_D0, 24.6, 0, 0);
		VAR_Update(&Density_Cal, 0.0, 0, 0);
	}
	else
	if (Density_Cal_Unit.val==105)
	{
		Density_D1.calc_unit = 246;
		Density_D1.unit = 246; 
		VAR_Update(&Density_D3, 0.00, 0, 0);           
		VAR_Update(&Density_D2, 0.00, 0, 0);           
		VAR_Update(&Density_D1, 0.16, 0, 0);
		VAR_Update(&Density_D0, 0.00, 0, 0);
		VAR_Update(&Density_Cal, 32.0, 0, 0);
	}

	{asm("	pop		ST			");};
}

void PDI_Density_Correction(VAR* v)
{
	unsigned int i;

	i = v->aux;
	if (i>=3) return;
	if (i<0) return;

	FC[i].density_PDI_corrected = Convert(v->class, v->calc_unit, Density_Cal.calc_unit, v->calc_val, 0, v->aux);
}

void PDI_Density_Adj(VAR* v)
{
	unsigned int i;
	double t;

	i = v->aux;
	if (i>=3) return;
	if (i<0) return;

	if (FC[i].density_adj!=0.0)
	{
		t = v->base_val;

		 
		t = Convert(v->class, v->calc_unit, v->unit, t, 0, v->aux);
		t += FC[i].density_adj;
		t = Convert(v->class, v->unit, v->calc_unit, t, 0, v->aux);

		v->base_val = t;
	}
}

void CORIOLIS_CFG(VAR* v)
{
	MPKT* p;
	int addr;
	int cor;
	int slave;
	int port;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	cor = v->aux>>16;
	addr = v->aux&0xFFFF;

	if ((ANALYZER_MODE.val&0xFF)==6)
	{
		switch(cor)
		{
			case 0: port = 2; slave = 2; break;
			case 1: port = 2; slave = 3; break;
			case 2: port = 3; slave = 4; break;
			case 3: port = 3; slave = 5; break;
			default: port = -1; slave = -1; break;
		}

		if ((port>=0) && (port<8))
		{
			if (PORT[port].Slave == 0)
			{
				p = Master_Create((int*) 0, 1, slave, 16, addr, 1, v->val);
				List_Add(&PORT[port].MASTER, (GENERIC*)p);
			}
		}
	}
	else
	{
		if ((DCM_PORT.val!=2) &&(DCM_PORT.val>=0) && (DCM_PORT.val<8))
		{ 
			if (PORT[DCM_PORT.val].Slave == 0)
			{
				 
				p = Master_Create((int*) 0, 1, 1, 16, addr, 1, v->val);
				List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
			}
		}
	}

	{asm("	pop		ST			");};
}

     
void CORIOLIS_INT_CFG(VAR* v)
{
	MPKT* p;
	int addr;
	int cor;
	int slave;
	int port;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	cor = v->aux>>16;
	addr = v->aux&0xFFFF;

	if ((ANALYZER_MODE.val&0xFF)==6)
	{
		switch(cor)
		{
			case 0: port = 2; slave = 2; break;
			case 1: port = 2; slave = 3; break;
			case 2: port = 3; slave = 4; break;
			case 3: port = 3; slave = 5; break; 
			case 4: port = 2; slave = 1; break;     
			default: port = -1; slave = -1; break;
		}

		if ((port>=0) && (port<8))
		{
			if (PORT[port].Slave == 0)
			{
				p = Master_Create((int*) 0, 1, slave, 16|0x0100, addr, 1, v->val);   
				List_Add(&PORT[port].MASTER, (GENERIC*)p);
			}
		}
	}
	else
	{
		if ((DCM_PORT.val!=2) && (DCM_PORT.val>=0) && (DCM_PORT.val<8))
		{ 
			if (PORT[DCM_PORT.val].Slave == 0)
			{
				p = Master_Create((int*) 0, 1, 1, 16|0x0100, addr, 1, v->val);       
				List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
			}
		}
	}

	{asm("	pop		ST			");};
}
 

void CORIOLIS_ZERO1(void)
{
	MPKT* p;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if ((ANALYZER_MODE.val&0xFF)==6)
	{
		if (PORT[2].Slave == 0)
		{
			p = Master_Create((int*) 0, 1, 2, 5, 5, 1, 1.0);
			List_Add(&PORT[2].MASTER, (GENERIC*)p);
			COR[0].Z.val = 1;
		}
	}
	else if ((((ANALYZER_MODE.val&0xFF) == 0) ||
			((ANALYZER_MODE.val&0xFF) == 3) ||
			((ANALYZER_MODE.val&0xFF) == 2)) &&
			(Density_Correction_Mode.val<6) && (Density_Correction_Mode.val>0))
	{
		if ((DCM_PORT.val!=2) && (DCM_PORT.val>=0) && (DCM_PORT.val<8))
		{ 
			if (PORT[DCM_PORT.val].Slave == 0)
			{
				p = Master_Create((int*) 0, 1, 1, 5, 5, 1, 1.0);
				List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
				COR[0].Z.val = 1;
			}
		}
	}

	{asm("	pop		ST			");};
}

void CORIOLIS_ZERO2(void)
{
	MPKT* p;

	if ((ANALYZER_MODE.val&0xFF)!=6) return;
	if (PORT[2].Slave == 0)
	{
		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		p = Master_Create((int*) 0, 1, 3, 5, 5, 1, 1.0);
		List_Add(&PORT[2].MASTER, (GENERIC*)p);
		COR[1].Z.val = 1;
		{asm("	pop		ST			");};
	}
}

void CORIOLIS_ZERO3(void)
{
	MPKT* p;

	if ((ANALYZER_MODE.val&0xFF)!=6) return;
	if (!CCM_2LIQ) return;
	if (PORT[3].Slave == 0)
	{
		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		p = Master_Create((int*) 0, 1, 4, 5, 5, 1, 1.0);
		List_Add(&PORT[3].MASTER, (GENERIC*)p);
		COR[2].Z.val = 1;
		{asm("	pop		ST			");};
	}
}

void CORIOLIS_ZERO4(void)
{
	MPKT* p;

	if ((ANALYZER_MODE.val&0xFF)!=6) return;
	if (!CCM_2GAS) return;
	if (PORT[3].Slave == 0)
	{
		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		p = Master_Create((int*) 0, 1, 5, 5, 5, 1, 1.0);
		List_Add(&PORT[3].MASTER, (GENERIC*)p);
		COR[3].Z.val = 1;
		{asm("	pop		ST			");};
	}
}

void Sampling_Error(void)
{
	if (DIO_RESEARCH_MODE.val) return;

	if (SAMPLE_PENDING)
	{
		DIAGNOSTICS[1] |= 0x0010;

		GATE_TIMEOUT = 1;
		READ_ADC_INPUTS = 3;

		Read_RTC();

		CopyTempVars();
		VAR_Update(&REG_EMULSION_PHASE, 2.0, 0, 0);
		REG_WATERCUT_RAW = 0.0;
		VAR_NaN(&REG_WATERCUT);

		
        
        if (VT_SELECT == 0) VT_SELECT = 2;
        else if (VT_SELECT == 2) VT_SELECT = 1;
        else if (VT_SELECT == 1) VT_SELECT = 3;
        else VT_SELECT = 0;

		if ((VT_SELECT >= 4) || (VT_SELECT < 0))
		{
			VT_SELECT = 0;
		}
		Setup_Sample();
	}
}

void CCM_Record_Viewer(int id)
{
	unsigned int* p;
	int i,v;

	if (CCM_Record_view.val>100) CCM_Record_view.val = 100;
	else if (CCM_Record_view.val<1) CCM_Record_view.val = 1;

	v = CCM_Record_view.val - 1;
	if (v<0) v = 0;

	if (CCMREC[v]==0)
	{
		CCM_Record.Start_SS		 = 0;
		CCM_Record.Start_MM		 = 0;
		CCM_Record.Start_HH		 = 0;
		CCM_Record.Start_YEAR	 = 0;
		CCM_Record.Start_DAY	 = 0;
		CCM_Record.Start_MONTH	 = 0;
	
		CCM_Record.Stop_SS		 = 0;
		CCM_Record.Stop_MM		 = 0;
		CCM_Record.Stop_HH		 = 0;
		CCM_Record.Stop_YEAR	 = 0;
		CCM_Record.Stop_DAY		 = 0;
		CCM_Record.Stop_MONTH	 = 0;

		CCM_Record.stream		 = 0;
		CCM_Record.elapsed_s	 = 0;
		CCM_Record.duration		 = 0;
		CCM_Record.purge		 = 0;
		CCM_Record.gross_gas	 = 0;
		CCM_Record.gross_oil	 = 0;
		CCM_Record.gross_water	 = 0;
		CCM_Record.gross_total	 = 0;
		CCM_Record.gas24		 = 0;
		CCM_Record.oil24		 = 0;
		CCM_Record.water24		 = 0;
		CCM_Record.total24		 = 0;
		CCM_Record.watercut		 = 0;
	}
	else
	{
		p = (unsigned int*)CCMREC[v];

		CCM_Record.Start_SS		 = p[0] & 0xFF;
		CCM_Record.Start_MM		 = (p[0]>>8) & 0xFF;
		CCM_Record.Start_HH		 = (p[0]>>16) & 0xFF;
		CCM_Record.Start_YEAR	 = p[1] & 0xFF;
		CCM_Record.Start_DAY	 = (p[1]>>8) & 0xFF;
		CCM_Record.Start_MONTH	 = (p[1]>>16) & 0xFF;

		CCM_Record.Stop_SS		 = p[2] & 0xFF;
		CCM_Record.Stop_MM		 = (p[2]>>8) & 0xFF;
		CCM_Record.Stop_HH		 = (p[2]>>16) & 0xFF;
		CCM_Record.Stop_YEAR	 = p[3] & 0xFF;
		CCM_Record.Stop_DAY		 = (p[3]>>8) & 0xFF;
		CCM_Record.Stop_MONTH	 = (p[3]>>16) & 0xFF;

		CCM_Record.stream		 = FMIEEE(p[4]);
		CCM_Record.elapsed_s	 = FMIEEE(p[5]);
		CCM_Record.duration		 = FMIEEE(p[6]);
		CCM_Record.purge		 = FMIEEE(p[7]);
		CCM_Record.gross_gas	 = FMIEEE(p[8]);
		CCM_Record.gross_oil	 = FMIEEE(p[9]);
		CCM_Record.gross_water	 = FMIEEE(p[10]);
		CCM_Record.gross_total	 = FMIEEE(p[11]);
		CCM_Record.gas24		 = FMIEEE(p[12]);
		CCM_Record.oil24		 = FMIEEE(p[13]);
		CCM_Record.water24		 = FMIEEE(p[14]);
		CCM_Record.total24		 = FMIEEE(p[15]);
		CCM_Record.watercut		 = FMIEEE(p[16]);
	}
}

void CCM_TESTING(void)
{
	unsigned int rec[18];
	long double delta_time;
	int c,delta,per;

	if ((ANALYZER_MODE.val&0xFF)!=6) return;
	     
	if (DIO_CCM_PURGE_STAT.val) return;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	{ 
		c = *((volatile unsigned int*) 0x808034);

		if (c>=CCM_CNT)
		{
			delta = c - CCM_CNT;
		}
		else
		{
			per = *((volatile unsigned int*) 0x808038);
			delta = (per-CCM_CNT) + c;
		}

		CCM_CNT = c;

		delta_time = delta;
		delta_time /= (CLOCK/2.0);

		CCM_REMAINING_S -= delta_time;
		CCM_REMAINING = CCM_REMAINING_S/3600.0;

		CCM_ELAPSED_S += delta_time;
	}

	{
		CCM_24_GAS = CCM_GAS_TOTAL.val * (24.0*3600.0) / CCM_ELAPSED_S;
		CCM_24_TOTAL = FC[0].GROSS_TOTAL.calc_val * (24.0*3600.0) / CCM_ELAPSED_S;
		CCM_24_OIL = FC[0].GROSS_OIL.calc_val * (24.0*3600.0) / CCM_ELAPSED_S;
		CCM_24_WATER = FC[0].GROSS_WATER.calc_val * (24.0*3600.0) / CCM_ELAPSED_S;
	}

	if (CCM_REMAINING_S<=0.0)
	{ 
		DIO_CCM_START.val = 0;    
		
		REG_CCM_TEST_STAT.val = 0;   
		
		CCM_START();        

		{ 

			 
 			rec[0] = ((CCM_TIME_START.tm_hour&0xFF)<<16)|((CCM_TIME_START.tm_min&0xFF)<<8|((CCM_TIME_START.tm_sec&0xFF)));
			 

			rec[1] = ((CCM_TIME_START.tm_mon&0xFF)<<16)|((CCM_TIME_START.tm_mday&0xFF)<<8|((CCM_TIME_START.tm_year&0xFF)));
			rec[2] = ((CCM_TIME_STOP.tm_hour&0xFF)<<16)|((CCM_TIME_STOP.tm_min&0xFF)<<8|((CCM_TIME_STOP.tm_sec&0xFF)));
			rec[3] = ((CCM_TIME_STOP.tm_mon&0xFF)<<16)|((CCM_TIME_STOP.tm_mday&0xFF)<<8|((CCM_TIME_STOP.tm_year&0xFF)));
			rec[4] = TOIEEE(REG_STREAM_SELECT.val);
			rec[5] = TOIEEE(CCM_ELAPSED_S);
			rec[6] = TOIEEE(CCM_DURATION);
			rec[7] = TOIEEE(CCM_PURGE);
			rec[8] = TOIEEE(CCM_GAS_TOTAL.val);
			rec[9] = TOIEEE(FC[0].GROSS_OIL.val);
			rec[10] = TOIEEE(FC[0].GROSS_WATER.val);
			rec[11] = TOIEEE(FC[0].GROSS_TOTAL.val);
			rec[12] = TOIEEE(CCM_24_GAS);
			rec[13] = TOIEEE(CCM_24_OIL);
			rec[14] = TOIEEE(CCM_24_WATER);
			rec[15] = TOIEEE(CCM_24_TOTAL);
			rec[16] = TOIEEE(FC[0].GROSS_WATER.val/FC[0].GROSS_TOTAL.val);	 

			 
			rec[17] = 0;
			 

			RecordLogEntry(&CCM_Records, 0, rec);

			FindNextLogIndex(&CCM_Records, 100, CCMREC);
		}          

		if (HSALT.CHANGED)
		{
			Write_CFG_USER();
			HSALT.CHANGED = 0;
		}
	}
	else
	{ 
		Timer_Insert(&TMR_CCM_TEST,0,1);
	}
   
	{asm("	pop		ST			");};   
	
	if (!DIO_CCM_START.val) return;   
 
}

void CCM_PURGING(void)
{
	long double delta_time;
	int c,delta,per;
	BOOL done;

	if ((ANALYZER_MODE.val&0xFF)!=6) return;
	if (!DIO_CCM_START.val) return;
	if (!DIO_CCM_PURGE_STAT.val) return;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	done = 0;

	if(DIO_CCM_PURGE_TIME.val)
	{ 
		c = *((volatile unsigned int*) 0x808034);

		if (c>=CCM_CNT)
		{
			delta = c - CCM_CNT;
		}
		else
		{
			per = *((volatile unsigned int*) 0x808038);
			delta = (per-CCM_CNT) + c;
		}

		CCM_CNT = c;

		delta_time = delta;
		delta_time /= (CLOCK/2.0);

		CCM_REMAINING_S -= delta_time;
		CCM_REMAINING = CCM_REMAINING_S/3600.0;

		CCM_ELAPSED_S += delta_time;

		if (CCM_REMAINING_S<=0.0) done = 1;
	}
	else
	{ 
		CCM_REMAINING = CCM_PURGE - FC[0].GROSS_TOTAL.calc_val;
		if (CCM_REMAINING<=0.0) done = 1;
	}

	if (done)
	{ 
		Mirror_From_Stream_Table((VAR*)0);	     
		
		if (HSALT.ENABLED.val) 
			REG_SALINITY.val = 0.02;            
		
		HSALT.TEST_IN_PROGRESS = 1;
		GET_TIME(&CCM_TIME_START);
		CCM_CNT = *((volatile unsigned int*) 0x808034);
		CCM_REMAINING = CCM_DURATION;
		CCM_REMAINING_S = CCM_REMAINING * 3600.0;
		CCM_ELAPSED_S = 0.0;
		DIO_CCM_PURGE_STAT.val = 0;     
		
		REG_CCM_PURGE_STAT.val = 0;    
		
		DIO_TOTALIZER_CONTROL.val = 1;
		Clear_Accumulators(0);
		Totalizer_Control(0);
		Timer_Insert(&TMR_CCM_TEST,0,1);
	}
	else
	{ 
		Timer_Insert(&TMR_CCM_PURGE,0,1);
	}

	{asm("	pop		ST			");};
}

void CCM_START(void)
{
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if ((!DIO_CCM_START.val)||((ANALYZER_MODE.val&0xFF)!=6))    
	{
		DIO_TOTALIZER_CONTROL.val = 0; 
		
		REG_CCM_TEST_STAT.val = 0;   
		REG_CCM_PURGE_STAT.val = 0;    
		
		Totalizer_Control(0);
		DIO_CCM_PURGE_STAT.val = 0;
		CCM_REMAINING = 0.0;
		CCM_REMAINING_S = 0.0;
		GET_TIME(&CCM_TIME_STOP);
		HSALT.PURGING = 0;
		HSALT.TEST_IN_PROGRESS = 0;
		DIO_TOTALIZER_CONTROL.val = 1;	 
	}
	else
	if (DIO_CCM_START.val)
	{
		CLEAR_TIME(&CCM_TIME_START);
		CLEAR_TIME(&CCM_TIME_STOP);

		if (CCM_DURATION<=0.1)
		{
			CCM_DURATION = 0.1;
		}
		else
		if (CCM_DURATION>24.0)
		{
			CCM_DURATION = 24.0;
		}

		if(DIO_CCM_PURGE_TIME.val)
		{ 
		                                                                                                                           

			if (CCM_PURGE<=0.01)
			{
				CCM_PURGE = 0.01;
			}
			else
			if (CCM_PURGE>6.0)
			{
				CCM_PURGE = 6.0;
			}
		}
		else
		{ 
			DIO_TOTALIZER_CONTROL.val = 1;

			if (CCM_PURGE<=1.0)
			{
				CCM_PURGE = 1.0;
			}
			else
			if (CCM_PURGE>1000.0)
			{
				CCM_PURGE = 1000.0;
			}
		}

		GET_TIME(&CCM_TIME_START);
		DIO_CCM_PURGE_STAT.val = 1;  
		
		REG_CCM_TEST_STAT.val = 1;   
		REG_CCM_PURGE_STAT.val = 1;    

		Clear_Accumulators(0);
		Totalizer_Control(0);
		CCM_24_GAS = 0.0;
		CCM_24_TOTAL = 0.0;
		CCM_24_OIL = 0.0;
		CCM_24_WATER = 0.0;                 

		CCM_CNT = *((volatile unsigned int*) 0x808034);
		CCM_REMAINING = CCM_PURGE;
		CCM_REMAINING_S = CCM_REMAINING * 3600.0;
		CCM_ELAPSED_S = 0.0;
		Timer_Insert(&TMR_CCM_PURGE,0,1);

		HSALT.PURGING = 1;
		HSALT.TEST_IN_PROGRESS = 0;
	}

	{asm("	pop		ST			");};
}

void VAR_SET_STR_DV(int id)
{
	VAR* v;
	unsigned int ui;

	v = HART_Lookup(VAR_SELECT_DV.val, &ui, (int*)&HART_DV_Table);

	VAR_SET_STR(v, ui);
}

void VAR_SET_STR_DVIN(int id)
{
	VAR* v;
	unsigned int ui;

	v = HART_Lookup(VAR_SELECT_DVIN.val, &ui, (int*)&HART_DVINPUT_Table);

	VAR_SET_STR(v, ui);
}

void VAR_SET_STR(VAR* v, unsigned int ui)
{
	int i;
	char u[8];

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	u[0] = 0;
	Get_Unit(v->class, v->unit, u);

	{ 
		for (i=0;i<10;i++)
		{
			STR_VAR_DESC[i] = 0;
		}

		for (i=0;i<4;i++)
		{
			STR_VAR_UNIT[i] = 0;
		}

		VAR_INT_SCALE = 0;
		VAR_LONGINT_SCALE = 0;
	}

	if (ui!=2)
	{
		for (i=0;i<10;i++)
		{
			STR_VAR_DESC[i] = ((v->name[2*i+0]&0xFF)<<8) | (v->name[2*i+1]&0xFF);
		}

		for (i=0;i<4;i++)
		{
			STR_VAR_UNIT[i] = ((u[2*i+0]&0xFF)<<8) | (u[2*i+1]&0xFF);
		}

		VAR_INT_SCALE = v->scale;
		VAR_LONGINT_SCALE = v->scale_long;
	}

	{asm("	pop		ST			");};
}

void Read_RTC(void)
{
	if (GATE_TIMEOUT)
	{ 
		Read_DS1340(8, 10, RTC);
	}
}

void Update_i_Log_Var(void)
{
	VAR* v;
	int i;
	unsigned int ui;
	long double t;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	for (i=0;i<30;i++)
	{
		v = HART_Lookup(LOG_VAR_SEL[i], &ui, (int*)&HART_DV_Table);

		{ 
			t = v->val * v->scale;
			if (t > 32767.0) t = 32767.0;
			else if (t < -32768.0) t = -32768.0;
			i_LV[i] = t;
		}

		{ 
			t = v->val * v->scale_long;
			if (t > 2147483647.0) t = 2147483647.0;
			else if (t < -2147483648.0) t = -2147483648.0;
			il_LV[i] = t;
		}

		{ 
			f_LV[i] = v->val;
		}
	}

	{asm("	pop		ST			");};
}



void HSALT_CLEAR(void)
{
	int 			mode; 
	

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (DEMO) mode = DEMO_ANALYZER_MODE.val;
	else mode = ANALYZER_MODE.val;

	switch(mode&0xFF)
	{
		case 4:
		case 1:
		case 6:
		{
			break;
		}

		default:
		{
			HSALT.ENABLED.val = 0;
			break;
		}
	}

	 
#line 6030
	HSALT.Fmin = -1;
	
	HSALT.Dmin = -1;
	HSALT.Dmax = -1;
	HSALT.CHANGED = 0;
	HSALT.PURGING = 0;
	HSALT.TEST_IN_PROGRESS = 0;
	
	boxcar_reset_needed = 1;
	gas_routine_reset_needed = 1;
	
	
	
	 
	 
#line 6051
	{asm("	pop		ST			");};
}

 

void Submit_GET_ANALYZER_CONFIG(void)
{
	Timer_Insert(&TMR_GET_ANALYZER_CONFIG,0,1);
}

void GET_ANALYZER_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (!DIO_ANALYZER_GET.val) return;

	 
	r = M24C02_Record(1,ANALYZER.ADDR, p);
	if (r) DIO_ANALYZER_GET.val = 0;
	else return;

	i = 0;

	GetInt(&ANALYZER.SNUM,p,&i);

	ANALYZER.BNUM = p[i];
	i++;
	ANALYZER.REV = p[i];
	i++;

	ANALYZER.MONTH = p[i];
	i++;
	ANALYZER.DAY = p[i];
	i++;
	ANALYZER.YEAR = p[i];
	i++;
	i++;

	GetInt(&DAC_TRIM_I_0[10],p,&i);
	GetFlt(&DAC_TRIM_F_0[10],p,&i);
	GetInt(&DAC_TRIM_I_1[10],p,&i);
	GetFlt(&DAC_TRIM_F_1[10],p,&i);

	GetInt(&ADC_TRIM_I_0[1],p,&i);
	GetFlt(&ADC_TRIM_F_0[1],p,&i);
	GetInt(&ADC_TRIM_I_1[1],p,&i);
	GetFlt(&ADC_TRIM_F_1[1],p,&i);

	GetInt(&ADC_TRIM_I_0[0],p,&i);
	GetFlt(&ADC_TRIM_F_0[0],p,&i);
	GetInt(&ADC_TRIM_I_1[0],p,&i);
	GetFlt(&ADC_TRIM_F_1[0],p,&i);

	GetInt(&ADC_TRIM_I_0[2],p,&i);
	GetFlt(&ADC_TRIM_F_0[2],p,&i);
	GetInt(&ADC_TRIM_I_1[2],p,&i);
	GetFlt(&ADC_TRIM_F_1[2],p,&i);

	GetFlt(&RTD_CURRENT,p,&i);
	GetFlt(&RTD_GAIN,p,&i);
	GetFlt(&TEMPERATURE_TRIM_T0,p,&i);
	GetFlt(&TEMPERATURE_TRIM_T1,p,&i);
	GetFlt(&RTD_CAL_LO_OHM,p,&i);
	GetFlt(&RTD_CAL_LO_V,p,&i);
	GetFlt(&RTD_CAL_HI_OHM,p,&i);
	GetFlt(&RTD_CAL_HI_V,p,&i);

	if (SA)
	{
		GetInt(&ADC_TRIM_I_0[11],p,&i);
		GetFlt(&ADC_TRIM_F_0[11],p,&i);
		GetInt(&ADC_TRIM_I_1[11],p,&i);
		GetFlt(&ADC_TRIM_F_1[11],p,&i);
	}

	if (!SA)
	{
		GetInt(&DAC_TRIM_I_0[0],p,&i);
		GetFlt(&DAC_TRIM_F_0[0],p,&i);
		GetInt(&DAC_TRIM_I_1[0],p,&i);
		GetFlt(&DAC_TRIM_F_1[0],p,&i);
		GetInt(&t,p,&i);
		VAR_Update(&AO[0].TRIM_MIN, t, 0, 0);
		GetInt(&t,p,&i);
		VAR_Update(&AO[0].TRIM_MAX, t, 0, 0);
		GetFlt(&AO[0].TRIM_MIN_C,p,&i);
		GetFlt(&AO[0].TRIM_MAX_C,p,&i);

		GetInt(&ADC_TRIM_I_0[5],p,&i);
		GetFlt(&ADC_TRIM_F_0[5],p,&i);
		GetInt(&ADC_TRIM_I_1[5],p,&i);
		GetFlt(&ADC_TRIM_F_1[5],p,&i);
		GetInt(&t,p,&i);
		VAR_Update(&AI[0].TRIM_MIN, t, 0, 0);
		GetInt(&t,p,&i);
		VAR_Update(&AI[0].TRIM_MAX, t, 0, 0);
		GetFlt(&AI[0].TRIM_MIN_C,p,&i);
		GetFlt(&AI[0].TRIM_MAX_C,p,&i);

		GetInt(&ADC_TRIM_I_0[3],p,&i);
		GetFlt(&ADC_TRIM_F_0[3],p,&i);
		GetInt(&ADC_TRIM_I_1[3],p,&i);
		GetFlt(&ADC_TRIM_F_1[3],p,&i);

		GetInt(&ADC_TRIM_I_0[4],p,&i);
		GetFlt(&ADC_TRIM_F_0[4],p,&i);
		GetInt(&ADC_TRIM_I_1[4],p,&i);
		GetFlt(&ADC_TRIM_F_1[4],p,&i);

		GetInt(&DAC_TRIM_I_0[9],p,&i);
		GetFlt(&DAC_TRIM_F_0[9],p,&i);
		GetInt(&DAC_TRIM_I_1[9],p,&i);
		GetFlt(&DAC_TRIM_F_1[9],p,&i);

		GetInt(&DAC_TRIM_I_0[11],p,&i);
		GetFlt(&DAC_TRIM_F_0[11],p,&i);
		GetInt(&DAC_TRIM_I_1[11],p,&i);
		GetFlt(&DAC_TRIM_F_1[11],p,&i);
	}
}

void Submit_STORE_ANALYZER_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_ANALYZER_CONFIG,0,1);
}

void STORE_ANALYZER_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (!DIO_ANALYZER_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(ANALYZER.SNUM,p,&i);

	p[i] = ANALYZER.BNUM;
	i++;
	p[i] = ANALYZER.REV;
	i++;

	ANALYZER.MONTH		= RTC[7] & 0x1F;
	ANALYZER.DAY		= RTC[6] & 0x3F;
	ANALYZER.YEAR		= RTC[8] & 0xFF;

	p[i] = ANALYZER.MONTH;
	i++;
	p[i] = ANALYZER.DAY;
	i++;
	p[i] = ANALYZER.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	PutInt(DAC_TRIM_I_0[10],p,&i);
	PutFlt(DAC_TRIM_F_0[10],p,&i);
	PutInt(DAC_TRIM_I_1[10],p,&i);
	PutFlt(DAC_TRIM_F_1[10],p,&i);

	PutInt(ADC_TRIM_I_0[1],p,&i);
	PutFlt(ADC_TRIM_F_0[1],p,&i);
	PutInt(ADC_TRIM_I_1[1],p,&i);
	PutFlt(ADC_TRIM_F_1[1],p,&i);

	PutInt(ADC_TRIM_I_0[0],p,&i);
	PutFlt(ADC_TRIM_F_0[0],p,&i);
	PutInt(ADC_TRIM_I_1[0],p,&i);
	PutFlt(ADC_TRIM_F_1[0],p,&i);

	PutInt(ADC_TRIM_I_0[2],p,&i);
	PutFlt(ADC_TRIM_F_0[2],p,&i);
	PutInt(ADC_TRIM_I_1[2],p,&i);
	PutFlt(ADC_TRIM_F_1[2],p,&i);

	PutFlt(RTD_CURRENT,p,&i);
	PutFlt(RTD_GAIN,p,&i);
	PutFlt(TEMPERATURE_TRIM_T0,p,&i);
	PutFlt(TEMPERATURE_TRIM_T1,p,&i);
	PutFlt(RTD_CAL_LO_OHM,p,&i);
	PutFlt(RTD_CAL_LO_V,p,&i);
	PutFlt(RTD_CAL_HI_OHM,p,&i);
	PutFlt(RTD_CAL_HI_V,p,&i);

	if (SA)
	{
		PutInt(ADC_TRIM_I_0[11],p,&i);
		PutFlt(ADC_TRIM_F_0[11],p,&i);
		PutInt(ADC_TRIM_I_1[11],p,&i);
		PutFlt(ADC_TRIM_F_1[11],p,&i);
	}

	if (!SA)
	{
		PutInt(DAC_TRIM_I_0[0],p,&i);
		PutFlt(DAC_TRIM_F_0[0],p,&i);
		PutInt(DAC_TRIM_I_1[0],p,&i);
		PutFlt(DAC_TRIM_F_1[0],p,&i);
		t = AO[0].TRIM_MIN.calc_val;
		PutInt(t,p,&i);
		t = AO[0].TRIM_MAX.calc_val;
		PutInt(t,p,&i);
		PutFlt(AO[0].TRIM_MIN_C,p,&i);
		PutFlt(AO[0].TRIM_MAX_C,p,&i);

		PutInt(ADC_TRIM_I_0[5],p,&i);
		PutFlt(ADC_TRIM_F_0[5],p,&i);
		PutInt(ADC_TRIM_I_1[5],p,&i);
		PutFlt(ADC_TRIM_F_1[5],p,&i);
		t = AI[0].TRIM_MIN.calc_val;
		PutInt(t,p,&i);
		t = AI[0].TRIM_MAX.calc_val;
		PutInt(t,p,&i);
		PutFlt(AI[0].TRIM_MIN_C,p,&i);
		PutFlt(AI[0].TRIM_MAX_C,p,&i);

		PutInt(ADC_TRIM_I_0[3],p,&i);
		PutFlt(ADC_TRIM_F_0[3],p,&i);
		PutInt(ADC_TRIM_I_1[3],p,&i);
		PutFlt(ADC_TRIM_F_1[3],p,&i);

		PutInt(ADC_TRIM_I_0[4],p,&i);
		PutFlt(ADC_TRIM_F_0[4],p,&i);
		PutInt(ADC_TRIM_I_1[4],p,&i);
		PutFlt(ADC_TRIM_F_1[4],p,&i);

		PutInt(DAC_TRIM_I_0[9],p,&i);
		PutFlt(DAC_TRIM_F_0[9],p,&i);
		PutInt(DAC_TRIM_I_1[9],p,&i);
		PutFlt(DAC_TRIM_F_1[9],p,&i);

		PutInt(DAC_TRIM_I_0[11],p,&i);
		PutFlt(DAC_TRIM_F_0[11],p,&i);
		PutInt(DAC_TRIM_I_1[11],p,&i);
		PutFlt(DAC_TRIM_F_1[11],p,&i);
	}

	 
	r = M24C02_Record(0,ANALYZER.ADDR,p);
	if (r) DIO_ANALYZER_SET.val = 0;
}

void Submit_GET_ANALOGIO_CONFIG(void)
{
	Timer_Insert(&TMR_GET_ANALOGIO_CONFIG,0,1);
}

void GET_ANALOGIO_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int	i,j,t;

	if (!DIO_ANALOGIO_GET.val) return;

	 
	r = M24C02_Record(1,ANALOGIO.ADDR, p);
	if (r) DIO_ANALOGIO_GET.val = 0;
	else return;

	i = 0;

	GetInt(&ANALOGIO.SNUM,p,&i);

	ANALOGIO.BNUM = p[i];
	i++;
	ANALOGIO.REV = p[i];
	i++;

	ANALOGIO.MONTH = p[i];
	i++;
	ANALOGIO.DAY = p[i];
	i++;
	ANALOGIO.YEAR = p[i];
	i++;
	i++;

	if (SA)
	{
		GetInt(&DAC_TRIM_I_0[0],p,&i);
		GetFlt(&DAC_TRIM_F_0[0],p,&i);
		GetInt(&DAC_TRIM_I_1[0],p,&i);
		GetFlt(&DAC_TRIM_F_1[0],p,&i);
		GetInt(&t,p,&i);
		VAR_Update(&AO[0].TRIM_MIN, t, 0, 0);
		GetInt(&t,p,&i);
		VAR_Update(&AO[0].TRIM_MAX, t, 0, 0);
		GetFlt(&AO[0].TRIM_MIN_C,p,&i);
		GetFlt(&AO[0].TRIM_MAX_C,p,&i);
	}
	else
	{
		for (j=6;j<=9;j++)
		{
			GetInt(&ADC_TRIM_I_0[j],p,&i);
			GetFlt(&ADC_TRIM_F_0[j],p,&i);
			GetInt(&ADC_TRIM_I_1[j],p,&i);
			GetFlt(&ADC_TRIM_F_1[j],p,&i);
		}

		for (j=1;j<=4;j++)
		{
			GetInt(&DAC_TRIM_I_0[j],p,&i);
			GetFlt(&DAC_TRIM_F_0[j],p,&i);
			GetInt(&DAC_TRIM_I_1[j],p,&i);
			GetFlt(&DAC_TRIM_F_1[j],p,&i);
		}

		for (j=1;j<5;j++)
		{
			GetInt(&t,p,&i);
			VAR_Update(&AI[j].TRIM_MIN, t, 0, 0);
			GetInt(&t,p,&i);
			VAR_Update(&AI[j].TRIM_MAX, t, 0, 0);
			GetFlt(&AI[j].TRIM_MIN_C,p,&i);
			GetFlt(&AI[j].TRIM_MAX_C,p,&i);

			GetInt(&t,p,&i);
			VAR_Update(&AO[j].TRIM_MIN, t, 0, 0);
			GetInt(&t,p,&i);
			VAR_Update(&AO[j].TRIM_MAX, t, 0, 0);
			GetFlt(&AO[j].TRIM_MIN_C,p,&i);
			GetFlt(&AO[j].TRIM_MAX_C,p,&i);
		}
	}
}

void Submit_STORE_ANALOGIO_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_ANALOGIO_CONFIG,0,1);
}

void STORE_ANALOGIO_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,j,t;

	if (!DIO_ANALOGIO_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(ANALOGIO.SNUM,p,&i);

	p[i] = ANALOGIO.BNUM;
	i++;
	p[i] = ANALOGIO.REV;
	i++;

	ANALOGIO.MONTH		= RTC[7] & 0x1F;
	ANALOGIO.DAY		= RTC[6] & 0x3F;
	ANALOGIO.YEAR		= RTC[8] & 0xFF;

	p[i] = ANALOGIO.MONTH;
	i++;
	p[i] = ANALOGIO.DAY;
	i++;
	p[i] = ANALOGIO.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	if (!SA)
	{
		PutInt(DAC_TRIM_I_0[0],p,&i);
		PutFlt(DAC_TRIM_F_0[0],p,&i);
		PutInt(DAC_TRIM_I_1[0],p,&i);
		PutFlt(DAC_TRIM_F_1[0],p,&i);
		t = AO[0].TRIM_MIN.calc_val;
		PutInt(t,p,&i);
		t = AO[0].TRIM_MAX.calc_val;
		PutInt(t,p,&i);
		PutFlt(AO[0].TRIM_MIN_C,p,&i);
		PutFlt(AO[0].TRIM_MAX_C,p,&i);
	}
	else
	{
		for (j=6;j<=9;j++)
		{
			PutInt(ADC_TRIM_I_0[j],p,&i);
			PutFlt(ADC_TRIM_F_0[j],p,&i);
			PutInt(ADC_TRIM_I_1[j],p,&i);
			PutFlt(ADC_TRIM_F_1[j],p,&i);
		}
	
		for (j=1;j<=4;j++)
		{
			PutInt(DAC_TRIM_I_0[j],p,&i);
			PutFlt(DAC_TRIM_F_0[j],p,&i);
			PutInt(DAC_TRIM_I_1[j],p,&i);
			PutFlt(DAC_TRIM_F_1[j],p,&i);
		}
	
		for (j=1;j<5;j++)
		{
			t = AI[j].TRIM_MIN.calc_val;
			PutInt(t,p,&i);
			t = AI[j].TRIM_MAX.calc_val;
			PutInt(t,p,&i);
			PutFlt(AI[j].TRIM_MIN_C,p,&i);
			PutFlt(AI[j].TRIM_MAX_C,p,&i);
		
			t = AO[j].TRIM_MIN.calc_val;
			PutInt(t,p,&i);
			t = AO[j].TRIM_MAX.calc_val;
			PutInt(t,p,&i);
			PutFlt(AO[j].TRIM_MIN_C,p,&i);
			PutFlt(AO[j].TRIM_MAX_C,p,&i);
		}
	}

	 
	r = M24C02_Record(0,ANALOGIO.ADDR,p);
	if (r) DIO_ANALOGIO_SET.val = 0;
}

void Submit_GET_uP_CONFIG(void)
{
	Timer_Insert(&TMR_GET_uP_CONFIG,0,1);
}

void GET_uP_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (!DIO_uP_GET.val) return;

	 
	r = M24C02_Record(1,uP.ADDR, p);
	if (r) DIO_uP_GET.val = 0;
	else return;

	i = 0;

	GetInt(&uP.SNUM,p,&i);

	uP.BNUM = p[i];
	i++;
	uP.REV = p[i];
	i++;

	uP.MONTH = p[i];
	i++;
	uP.DAY = p[i];
	i++;
	uP.YEAR = p[i];
	i++;
	i++;

	GetFlt(&FREQ_FACTOR,p,&i);

	GetFlt(&FC[0].PULSE_FACTOR,p,&i);
	GetFlt(&FC[1].PULSE_FACTOR,p,&i);
	GetFlt(&FC[2].PULSE_FACTOR,p,&i);

	GetInt(&ADC_TRIM_I_0[10],p,&i);
	GetFlt(&ADC_TRIM_F_0[10],p,&i);
	GetInt(&ADC_TRIM_I_1[10],p,&i);
	GetFlt(&ADC_TRIM_F_1[10],p,&i);
}

void Submit_STORE_uP_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_uP_CONFIG,0,1);
}

void STORE_uP_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (!DIO_uP_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(uP.SNUM,p,&i);

	p[i] = uP.BNUM;
	i++;
	p[i] = uP.REV;
	i++;

	uP.MONTH		= RTC[7] & 0x1F;
	uP.DAY		= RTC[6] & 0x3F;
	uP.YEAR		= RTC[8] & 0xFF;

	p[i] = uP.MONTH;
	i++;
	p[i] = uP.DAY;
	i++;
	p[i] = uP.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	PutFlt(FREQ_FACTOR,p,&i);

	PutFlt(FC[0].PULSE_FACTOR,p,&i);
	PutFlt(FC[1].PULSE_FACTOR,p,&i);
	PutFlt(FC[2].PULSE_FACTOR,p,&i);

	PutInt(ADC_TRIM_I_0[10],p,&i);
	PutFlt(ADC_TRIM_F_0[10],p,&i);
	PutInt(ADC_TRIM_I_1[10],p,&i);
	PutFlt(ADC_TRIM_F_1[10],p,&i);

	 
	r = M24C02_Record(0,uP.ADDR,p);
	if (r) DIO_uP_SET.val = 0;
}

void Submit_GET_COMM_CONFIG(void)
{
	Timer_Insert(&TMR_GET_COMM_CONFIG,0,1);
}

void GET_COMM_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_COMM_GET.val) return;

	 
	r = M24C02_Record(1,COMM.ADDR, p);
	if (r) DIO_COMM_GET.val = 0;
	else return;

	i = 0;

	GetInt(&COMM.SNUM,p,&i);

	COMM.BNUM = p[i];
	i++;
	COMM.REV = p[i];
	i++;

	COMM.MONTH = p[i];
	i++;
	COMM.DAY = p[i];
	i++;
	COMM.YEAR = p[i];
	i++;
	i++;
}

void Submit_STORE_COMM_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_COMM_CONFIG,0,1);
}

void STORE_COMM_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_COMM_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(COMM.SNUM,p,&i);

	p[i] = COMM.BNUM;
	i++;
	p[i] = COMM.REV;
	i++;

	COMM.MONTH		= RTC[7] & 0x1F;
	COMM.DAY		= RTC[6] & 0x3F;
	COMM.YEAR		= RTC[8] & 0xFF;

	p[i] = COMM.MONTH;
	i++;
	p[i] = COMM.DAY;
	i++;
	p[i] = COMM.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	 
	r = M24C02_Record(0,COMM.ADDR,p);
	if (r) DIO_COMM_SET.val = 0;
}

void Submit_GET_POWER_CONFIG(void)
{
	Timer_Insert(&TMR_GET_POWER_CONFIG,0,1);
}

void GET_POWER_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_POWER_GET.val) return;

	 
	r = M24C02_Record(1,POWER.ADDR, p);
	if (r) DIO_POWER_GET.val = 0;
	else return;

	i = 0;

	GetInt(&POWER.SNUM,p,&i);

	POWER.BNUM = p[i];
	i++;
	POWER.REV = p[i];
	i++;

	POWER.MONTH = p[i];
	i++;
	POWER.DAY = p[i];
	i++;
	POWER.YEAR = p[i];
	i++;
	i++;
}

void Submit_STORE_POWER_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_POWER_CONFIG,0,1);
}

void STORE_POWER_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_POWER_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(POWER.SNUM,p,&i);

	p[i] = POWER.BNUM;
	i++;
	p[i] = POWER.REV;
	i++;

	POWER.MONTH		= RTC[7] & 0x1F;
	POWER.DAY		= RTC[6] & 0x3F;
	POWER.YEAR		= RTC[8] & 0xFF;

	p[i] = POWER.MONTH;
	i++;
	p[i] = POWER.DAY;
	i++;
	p[i] = POWER.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	 
	r = M24C02_Record(0,POWER.ADDR,p);
	if (r) DIO_POWER_SET.val = 0;
}

void Submit_GET_DISPLAY_CONFIG(void)
{
	Timer_Insert(&TMR_GET_DISPLAY_CONFIG,0,1);
}

void GET_DISPLAY_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_DISPLAY_GET.val) return;

	 
	r = M24C02_Record(1,DISPLAY.ADDR, p);
	if (r) DIO_DISPLAY_GET.val = 0;
	else return;

	i = 0;

	GetInt(&DISPLAY.SNUM,p,&i);

	DISPLAY.BNUM = p[i];
	i++;
	DISPLAY.REV = p[i];
	i++;

	DISPLAY.MONTH = p[i];
	i++;
	DISPLAY.DAY = p[i];
	i++;
	DISPLAY.YEAR = p[i];
	i++;
	i++;
}

void Submit_STORE_DISPLAY_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_DISPLAY_CONFIG,0,1);
}

void STORE_DISPLAY_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_DISPLAY_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(DISPLAY.SNUM,p,&i);

	p[i] = DISPLAY.BNUM;
	i++;
	p[i] = DISPLAY.REV;
	i++;

	DISPLAY.MONTH		= RTC[7] & 0x1F;
	DISPLAY.DAY		= RTC[6] & 0x3F;
	DISPLAY.YEAR		= RTC[8] & 0xFF;

	p[i] = DISPLAY.MONTH;
	i++;
	p[i] = DISPLAY.DAY;
	i++;
	p[i] = DISPLAY.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	 
	r = M24C02_Record(0,DISPLAY.ADDR,p);
	if (r) DIO_DISPLAY_SET.val = 0;
}

void Submit_GET_MOTHERBOARD_CONFIG(void)
{
	Timer_Insert(&TMR_GET_MOTHERBOARD_CONFIG,0,1);
}

void GET_MOTHERBOARD_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_MOTHERBOARD_GET.val) return;

	 
	r = M24C02_Record(1,MOTHERBOARD.ADDR, p);
	if (r) DIO_MOTHERBOARD_GET.val = 0;
	else return;

	i = 0;

	GetInt(&MOTHERBOARD.SNUM,p,&i);

	MOTHERBOARD.BNUM = p[i];
	i++;
	MOTHERBOARD.REV = p[i];
	i++;

	MOTHERBOARD.MONTH = p[i];
	i++;
	MOTHERBOARD.DAY = p[i];
	i++;
	MOTHERBOARD.YEAR = p[i];
	i++;
	i++;
}

void Submit_STORE_MOTHERBOARD_CONFIG(void)
{
	Timer_Insert(&TMR_STORE_MOTHERBOARD_CONFIG,0,1);
}

void STORE_MOTHERBOARD_CONFIG(void)
{
	BOOL r;
	unsigned char p[256];
	int i,t;

	if (SA) return;

	if (!DIO_MOTHERBOARD_SET.val) return;

	for (i=0;i<256;i++)
	{
		p[i] = 0x00;
	}

	i = 0;

	PutInt(MOTHERBOARD.SNUM,p,&i);

	p[i] = MOTHERBOARD.BNUM;
	i++;
	p[i] = MOTHERBOARD.REV;
	i++;

	MOTHERBOARD.MONTH		= RTC[7] & 0x1F;
	MOTHERBOARD.DAY		= RTC[6] & 0x3F;
	MOTHERBOARD.YEAR		= RTC[8] & 0xFF;

	p[i] = MOTHERBOARD.MONTH;
	i++;
	p[i] = MOTHERBOARD.DAY;
	i++;
	p[i] = MOTHERBOARD.YEAR;
	i++;
	p[i] = 0x00;
	i++;

	 
	r = M24C02_Record(0,MOTHERBOARD.ADDR,p);
	if (r) DIO_MOTHERBOARD_SET.val = 0;
}

BOOL M24C02_Record(BOOL read, int addr, unsigned char* p)
{
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) |= 0x40;{asm("	pop		ST			");};};
	{{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};*((volatile char*) 0x0900013) &= (0xFF ^ 0x80);{asm("	pop		ST			");};};

	CHANGE = 1;
	{ 
		HCHANGE[0] = 1;
		HCHANGE[1] = 1;
		HCHANGE_COUNTER++;
	}

	if (!read)
	{
		PutCRC(p);
		return Write_MC24C02_Record(addr,p);
	}
	else
	{
		if (Read_MC24C02_Record(addr,p)==0) return 0;
		else if (CRC16_bytes(p,256)==0x0000) return 1;
		else return 0;
	}		
}

void PutInt(int i, unsigned char* p, int* j)
{
	if (j[0] > 252) return;

	p[j[0]] = i>>8;
	j[0]++;
	p[j[0]] = i;
	j[0]++;
}

void GetInt(int* i, unsigned char* p, int* j)
{
	int t;

	if (j[0] > 252) return;

	t = p[j[0]];
	j[0]++;
	t = p[j[0]] | (t<<8);
	j[0]++;

	i[0] = t;
}

void PutFlt(float f, unsigned char* p, int* j)
{
	unsigned int i;

	if (j[0] > 250) return;

	i = TOIEEE(f);
	p[j[0]] = i>>24;
	j[0]++;
	p[j[0]] = i>>16;
	j[0]++;
	p[j[0]] = i>>8;
	j[0]++;
	p[j[0]] = i;
	j[0]++;
}

void GetFlt(float* f, unsigned char* p, int* j)
{
	unsigned int i;

	if (j[0] > 250) return;

	i = p[j[0]];
	j[0]++;
	i = p[j[0]] | (i<<8);
	j[0]++;
	i = p[j[0]] | (i<<8);;
	j[0]++;
	i = p[j[0]] | (i<<8);;
	j[0]++;

	f[0] = FMIEEE(i);
}

void PutCRC(unsigned char* p)
{
	unsigned int i;

	i = CRC16_bytes(p,254);
	p[254] = i;
	p[255] = i>>8;
}

unsigned int CRC16_bytes(unsigned char* s, int n)
{
	int i,j;
	unsigned int t;
	unsigned int CRC;

	CRC = 0xFFFF;;

	for(j=0;j<n;j++)
	{
		t = s[j] & 0xFF;

		CRC ^= t;

		for (i=0;i<8;i++)
		{	
			if (CRC & 0x01)
			{
				CRC >>= 1;
				CRC ^= 0xA001;;
			}
			else
			{
				CRC >>= 1;
			}
		}
	}

	return CRC;
}


void Check_Boxcar_Limits()
{ 
	if (boxcar_expire_val_minutes.val > 60)
		VAR_Update(&boxcar_expire_val_minutes, 60, 0, 0);
	else if (boxcar_expire_val_minutes.val < 1)
		VAR_Update(&boxcar_expire_val_minutes, 1, 0, 0);
	
	
	
	
	
	if (boxcar_expire_val.val > 1350)
		VAR_Update(&boxcar_expire_val, 1350, 0, 0);
	else if (boxcar_expire_val.val < 22)
		VAR_Update(&boxcar_expire_val, 22, 0, 0);
	
}

inline void Reset_Boxcar()
{
	int i;
	
	Check_Boxcar_Limits();
	
	boxcar_list[0].freq = REG_FREQ[OSC_WATER_CALC].calc_val;
	boxcar_list[0].counter = 0;	

	
	for (i=1; i<4; i++)
	{
		boxcar_list[i].freq = -1;
		boxcar_list[i].counter = -1; 
	}
	
	HSALT.Fmin = boxcar_list[0].freq;	
}


#line 7090
inline void Update_Boxcar()
{
	int i, j;
	
	Check_Boxcar_Limits();
	
	for (i=0; i<4; i++)
	{
		if (boxcar_list[i].counter != -1) 
			boxcar_list[i].counter++;
	}

	
	for (i=0; i<4; i++)
	{
		if ( Is_Expired(boxcar_list[i].counter) ) 
		{	
			boxcar_list[i].freq = -1;
			boxcar_list[i].counter = -1; 
		}
	}

	
	
	for (i=0; i<4-1; i++)
	{
		if (boxcar_list[i].counter == -1)		
		{
			for (j=i+1; j<4; j++) 
			{	
				if (boxcar_list[j].counter != -1) 
				{
					Swap_Boxcar_Vals(i,j);
					break;	
				}
			}
		}
	}

	
	
	if ( water_freq_in <= boxcar_list[4-1].freq || boxcar_list[4-1].counter == -1 )
	{
		
		boxcar_list[4-1].freq = water_freq_in;
		boxcar_list[4-1].counter = 0; 
		
		for(i=4-1; i>0; i--)
		{
			
			
			if(boxcar_list[i].freq < boxcar_list[i-1].freq || boxcar_list[i-1].counter == -1) 
				Swap_Boxcar_Vals(i,i-1); 
		}

	}

}

inline void	Update_Bubble()
{
	int i;

	
	BOOL need_resum_bubble = 0;	
	
	if (bubble_new_length.val > 30)
	{
		bubble_new_length.val = 30;
	}
	else if (bubble_new_length.val < 2)
	{
		bubble_new_length.val = 2;
	}
	
	
	if (bubble_new_length.val != bubble.length)		
	{
		if (bubble_new_length.val < bubble.length)
		{
			bubble.tail += (bubble.length - bubble_new_length.val); 

			if (bubble.tail > (30 - 1))
				bubble.tail -= 30;	
		}
		else if (bubble_new_length.val > bubble.length)
		{
			bubble.tail -= (bubble_new_length.val - bubble.length); 
					
			if (bubble.tail < 0)
				bubble.tail += 30;	
		}

		bubble.length = (int) bubble_new_length.val;	

		
		need_resum_bubble = 1;
	}
	
	if ( (bubble.head+1) >= 30 ) 
	{
		bubble.head = 0; 
				
		bubble.data[bubble.head] = water_freq_in; 
		



		need_resum_bubble = 1;
	}
	else
		bubble.head++;

	if ( (bubble.tail+1) >= 30 ) 
		bubble.tail = 0; 
	else
		bubble.tail++;


	

	if (need_resum_bubble) 
	{
		bubble.average = 0;

		for (i = bubble.tail ; i != bubble.head; i++)
		{
			bubble.average += bubble.data[i];

			
			if (i+1 >= 30)
				i = -1; 
		}

		bubble.average += bubble.data[bubble.head];	
		bubble.average /= bubble.length;				

		need_resum_bubble = 0;	
		
	}
	else 
	{
		bubble.data[bubble.head] = water_freq_in; 
	
		
		
		bubble.average += (bubble.data[bubble.head] - bubble.data[bubble.tail]) / bubble.length;
		
	}
		
}



inline void	Update_Pattern()
{
	int i; 

	
	BOOL need_resum_pattern = 0;	
	
	if (pattern_new_length.val > 90)
	{
		pattern_new_length.val = 90;
	}
	else if (pattern_new_length.val < 5)
	{
		pattern_new_length.val = 5;
	}
	
	
	if (pattern_new_length.val != pattern.length)		
	{
		if (pattern_new_length.val < pattern.length)
		{
			pattern.tail += (pattern.length - pattern_new_length.val); 

			if (pattern.tail > (90 - 1))
				pattern.tail -= 90;	
		}
		else if (pattern_new_length.val > pattern.length)
		{
			pattern.tail -= (pattern_new_length.val - pattern.length); 
					
			if (pattern.tail < 0)
				pattern.tail += 90;	
		}

		pattern.length = (int) pattern_new_length.val;	

		
		need_resum_pattern = 1;

	}


	if ( (pattern.head+1) >= 90 ) 
	{
		pattern.head = 0; 
				
		pattern.data[pattern.head] = water_freq_in; 
		



		need_resum_pattern = 1;
	}
	else
		pattern.head++;

	if ( (pattern.tail+1) >= 90 ) 
		pattern.tail = 0; 
	else
		pattern.tail++;


	

	if (need_resum_pattern) 
	{
		pattern.average = 0;

		for (i = pattern.tail ; i != pattern.head; i++)
		{
			pattern.average += pattern.data[i];

			
			if (i+1 >= 90)
				i = -1; 
		}

		pattern.average += pattern.data[pattern.head];	
		pattern.average /= pattern.length;				

		need_resum_pattern = 0;	
		
	}
	else 
	{
		pattern.data[pattern.head] = water_freq_in; 
	
		
		
		pattern.average += (pattern.data[pattern.head] - pattern.data[pattern.tail]) / pattern.length;
				
	}
	
}

void Swap_Boxcar_Vals(int x, int y)
{
	float temp_freq;
	int temp_counter;

	temp_freq = boxcar_list[x].freq;
	temp_counter = boxcar_list[x].counter;

	boxcar_list[x].freq = boxcar_list[y].freq;
	boxcar_list[x].counter = boxcar_list[y].counter;

	boxcar_list[y].freq = temp_freq;
	boxcar_list[y].counter = temp_counter;

}

BOOL Is_Expired(int boxcar_counter)
{
	return (boxcar_counter > boxcar_expire_val.val);
}


unsigned int BCD_to_Int(unsigned char bcd_val)
{
	unsigned int result;
	
	result = (int) (bcd_val & 0xF);
	
	result += 10 * (int) ( (bcd_val >> 4) & 0xF);  
	
	result += 100 * (int) ( (bcd_val >> 8) & 0xF);

	return result;
}

char Hex_to_ASCII(char hex_val)
{	
	if ( (hex_val >= 0) && (hex_val < 10) )
		return (hex_val + 0x30); 
	else if ( (hex_val >= 10) && (hex_val < 16) )
		return (hex_val + 0x37); 
	else
		return 0x00;
}

unsigned int ASCII_to_Hex(char ascii_val)
{
	if ( (ascii_val >= 0x30) && (ascii_val < 0x39) )
		return (ascii_val - 0x30);
	else if ( (ascii_val >= 0x41) && (ascii_val < 0x47) )
		return (ascii_val - 0x37);
	else if ( (ascii_val >= 0x61) && (ascii_val < 0x67) )
		return (ascii_val - 0x57);
	else
		return 0x00;
}

void Hex32_to_String(char out_string[], unsigned int hex_val)
{	
	char temp;
	unsigned int i;
	temp = 0x00;
	
	for (i=0; i < 8; i++)
	{
		temp = (char) ( (hex_val >> (i*4)) & 0xF );
		out_string[i] = Hex_to_ASCII(temp);
	}
	
}

void  Alfat_Get_Version(void)
{
	char dummy;
	dummy = 0;
	Put(&TXbuf[5], 'V', 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1);
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	PORT[5].pvector_main = (int*) Alfat_Get_Version_Vector;
}
void Alfat_Get_Version_Vector(void)
{
	int i;
	
	
	
	PORT[5].pvector_main = (int*)0;

	for (i=0;i<8;i++)
	{
		ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
	}
}

void Alfat_Log_Vars(void)
{
	unsigned int 	i,day,iday;
	int				i_mapped, j;
	VAR* 			log_var[5];
	unsigned int 	resp[2];	
	char 			entry[50];

	Alfat_Get_Status_Reg();
	{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
	
	i = 0;  

	
	while (	(PORT[5].pvector_main != (int*)0)   ) 
	{
		i++; 
		
		if (i == 99500)
		{	
			PORT[5].pvector_main = (int*)0;
			Alfat_Get_Status_Reg_Vector();
		}
		
		if (i > 1000000)
		{	
			PORT[5].pvector_main = (int*)0;
			break;
		}			
	}
	
	if ( !(ALFAT_STATUS_REG & 0x20) ) 
	{
		if (ALFAT_INITIALIZED == 1)
		{
			ALFAT_INITIALIZED = 0;
			PORT[5].pvector_main = (int*)0;
		}
		
		ALFAT_USB_MOUNTED.val = 0;
		ALFAT_USB_DETECTED.val = 0;
		 
		if (LOG_STATUS != (81))
			Timer_Insert(&TMR_ALFAT_LOG,0,2);
		return;
	}
	else
	{
		ALFAT_USB_DETECTED.val = 1;
	}
	
	if ( !(ALFAT_STATUS_REG & 0x4) ) 
	{
		ALFAT_INITIALIZED = 0;
		ALFAT_USB_MOUNTED.val = 0;
	}
	else
	{
		ALFAT_USB_MOUNTED.val = 1;
	}	
	if (ALFAT_INITIALIZED == 0)
	{
		ALFAT_WRITE_HEADER = 0;
		Alfat_Init_All();      		
	}
	else if (ALFAT_WRITE_HEADER == 1)
	{	

		sprintf(ALFAT_TX,"\n");
		Alfat_Write((1),(-1),(1));
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		Alfat_Wait_For_Write();
		
		sprintf(ALFAT_TX,"Date,Time,Water Cut,User Temp,Emulsion Phase,Diagnostics,Oil Freq,");
		strcat(ALFAT_TX,"Vref. Oil,Water Freq,Vref.Water,FC1 Gross Oil,FC1 Gross Water,\n");
		Alfat_Write((1),(-1),(0));
		
		
		
		Alfat_Wait_For_Write();

		sprintf(ALFAT_TX,"FC1 Oil Flow,FC1 Water Flow,Analog Output 2%%,Analog Output 3%%,FC1 Pressure,");
		strcat(ALFAT_TX,"FC1 Density,Gas Flow,Gas Total,Gas Density,Stream Select,Salinity,\n");
		Alfat_Write((1),(-1),(0));
		
		
		Alfat_Wait_For_Write();
		
		
		sprintf(ALFAT_TX,"CCM Vessel 1 Level,CCM Vessel 1 Level Set Point,CCM Vessel 1 Pressure,");
		strcat(ALFAT_TX,"CCM Vessel 1 Pressure Set Point,Purge status,Test status,Drive gain liquid MM,\n");
		Alfat_Write((1),(-1),(0));
		
		
		Alfat_Wait_For_Write();
		
		sprintf(ALFAT_TX,"Drive gain gas MM,Water Cut by density,Gas P,Gas I,Gas D,Liquid P,");
		strcat(ALFAT_TX,"Liquid I,Liquid D,Heuristic Delta T,Heuristic Box Car,\n");
		Alfat_Write((1),(-1),(0));
		
		
		Alfat_Wait_For_Write();
		
		sprintf(ALFAT_TX,"Bubble,Pattern,FC1 Water Density @ST,FC1 Water Density @Process,");
		strcat(ALFAT_TX,"FC1 Oil Density @ST,FC1 Oil Density @Process\n");
		Alfat_Write((1),(-1),(1));
		
		
		Alfat_Wait_For_Write();
		
		 
#line 7551
		Alfat_Flush(1);
		ALFAT_WRITE_HEADER = 0;
		
	}
	else if ( (ALFAT_WRITE_HEADER == 0) && (ALFAT_INITIALIZED == 1) )
	{
		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		day			= RTC[6] & 0x3F;
		iday		= BCD_to_Int(day); 
		{asm("	pop		ST			");};

		if ( (iday < 32) && (iday > 0) ) 
		{
			if (ALFAT_LOG_DAY != iday)
			{	
				ALFAT_WRITE_HEADER = 0;
				ALFAT_INITIALIZED  = 0;
			}		
		}
		
		sprintf(ALFAT_TX,"\n");
		Alfat_Write((1),(-1),(1));
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		Alfat_Wait_For_Write();
		
		Alfat_Print_Time_Date(1);
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		Alfat_Wait_For_Write();
		
		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		log_var[0] = HART_Lookup(0,resp,(int*)&HART_DV_Table);
		sprintf(ALFAT_TX,"%g,",log_var[0]->val);
		

		for (j=1; j < 22; j++) 
		{
			i_mapped = Alfat_Map_Var(j);

			
			
			if (i_mapped < 0)
					break;
			
			log_var[i_mapped] = HART_Lookup(i_mapped,resp,(int*)&HART_DV_Table);
			sprintf(entry,"%g,",log_var[i_mapped]->val);
			strcat(ALFAT_TX,entry);
		}
		{asm("	pop		ST			");};
	
		strcat(ALFAT_TX,"\n");
		
		Alfat_Write((1),(-1),(0));
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};		
		
		Alfat_Wait_For_Write();
		
		
		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		log_var[22] = HART_Lookup(22,resp,(int*)&HART_DV_Table);
		sprintf(ALFAT_TX,"%g,",log_var[22]->val);
		for (j=23; j < 44; j++) 
		{
			i_mapped = Alfat_Map_Var(j);

			
			
			if (i_mapped < 0)
					break;
			
			log_var[i_mapped] = HART_Lookup(i_mapped,resp,(int*)&HART_DV_Table);
			sprintf(entry,"%g,",log_var[i_mapped]->val);
			strcat(ALFAT_TX,entry);
		}
		{asm("	pop		ST			");};
	
		strcat(ALFAT_TX,"\n");
		
		Alfat_Write((1),(-1),(0));
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};		
		
		Alfat_Wait_For_Write();
		{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		Alfat_Flush(1);
	}
	if (LOG_STATUS != (81))
		Timer_Insert(&TMR_ALFAT_LOG,0,2);
}

void Alfat_Init_All(void)
{
	 
#line 7650
	if(PORT[5].pvector_main != (int*)0)
	{
		return;		
	}
	
	
	ALFAT_INIT_ALL = 0;
	Alfat_Init_RTC();
	
	
	ALFAT_INIT_ALL = 1;
	Alfat_Init_RTC();
}

void Alfat_Init_RTC(void) 
{
	if(PORT[5].pvector_main != (int*)0)
	{
		return;		
	}
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	Put(&TXbuf[5], 'T', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], 'S', 0);
	Put(&TXbuf[5], 0x0A, 0);
	
	if(ALFAT_INIT_ALL == 1) 
	{
		PORT[5].pvector_main = (int*) Alfat_Set_Time_Date;
	}
	else
	{
		PORT[5].pvector_main = (int*)0;
	}
	
	{asm("	pop		ST			");};
	Prepare_TX(5, 1); 
	
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
}

void Alfat_Print_Time_Date(int handle)
{
	unsigned char 	year,month,day,hh,mm,ss;
	unsigned int 	iyear,imonth,iday,ihh,imm,iss;
	int 			i; 

	char 			s_date[30];
	
	for (i=0;i<30;i++)
	{
		s_date[i] = 0x0;
	}
	PORT[5].pvector_main = (int*)0;
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	hh			= RTC[4] & 0x3F;
	mm			= RTC[3] & 0x7F;
	ss			= RTC[2] & 0x7F;
	month		= RTC[7] & 0x1F;
	day			= RTC[6] & 0x3F;
	year		= RTC[8] & 0xFF;
	{asm("	pop		ST			");};
		
	
	ihh			= BCD_to_Int(hh);
	imm			= BCD_to_Int(mm);
	iss			= BCD_to_Int(ss);
	imonth		= BCD_to_Int(month);
	iday		= BCD_to_Int(day);
	iyear		= BCD_to_Int(year);
	
	iyear += 2000;
	
	
	if (ihh > 24)
		ihh = 0;
		
	if (imm > 60)
		imm = 0;
		
	if (iss > 60)
		imm = 0;
		
	if (imonth > 12)
		month = 0;
		
	if (iday > 31)
		iday = 0;
	
	if (iyear > 3000)
		iyear = 0;
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	sprintf(ALFAT_TX,"%02u/%02u/%04u,",imonth,iday,iyear);
	sprintf(s_date,"%02u:%02u:%02u,\n",ihh,imm,iss);
	strcat(ALFAT_TX,s_date);
	{asm("	pop		ST			");};
	
	Alfat_Write(handle,20,(0));
}

void Alfat_Set_Time_Date(void) 
{
	unsigned char 	year,month,day,hh,mm,ss;
	unsigned int 	iyear,imonth,iday,ihh,imm,iss;
	int 			i; 
	unsigned int	time_date_FAT;
	char 			time_date_FAT_ASCII[8];
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");}; 
	
	PORT[5].pvector_main = (int*)0;
	
	hh			= RTC[4] & 0x3F;
	mm			= RTC[3] & 0x7F;
	ss			= RTC[2] & 0x7F;
	month		= RTC[7] & 0x1F;
	day			= RTC[6] & 0x3F;
	year		= RTC[8] & 0xFF;
	
	
	
	ihh			= BCD_to_Int(hh);
	imm			= BCD_to_Int(mm);
	iss			= BCD_to_Int(ss);
	imonth		= BCD_to_Int(month);
	iday		= BCD_to_Int(day);
	iyear		= BCD_to_Int(year);
	
	ALFAT_LOG_DAY = iday; 
	
	
	iss			= iss >> 1; 
	iyear	+= 20; 
	
	
	time_date_FAT 	 = 0x00;
	time_date_FAT 	|= iss;
	time_date_FAT 	|= (imm 	<< 5 );
	time_date_FAT	|= (ihh 	<< 11);
	time_date_FAT	|= (iday 	<< 16);
	time_date_FAT	|= (imonth 	<< 21);
	time_date_FAT	|= (iyear 	<< 25);
	
	
	Put(&TXbuf[5], 'S', 0);
	Put(&TXbuf[5], 0x20, 0);
	
	Hex32_to_String(time_date_FAT_ASCII, time_date_FAT);
	
	for (i=7; i >=0; i--)
		Put(&TXbuf[5], time_date_FAT_ASCII[i], 0);
	
	
	Put(&TXbuf[5], 0x0A, 0);
	{asm("	pop		ST			");};
	
	Prepare_TX(5, 1); 
	
	
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	PORT[5].pvector_main = (int*) Alfat_Set_Time_Date_Vector;

}

void Alfat_Set_Time_Date_Vector(void)
{
	int i;
	
	
	PORT[5].pvector_main = (int*)0;

	if(ALFAT_INIT_ALL == 1)
	{
		Alfat_Init_USB();
	}
 
}

void Alfat_Init_USB(void)
 {
	char i;
	
	PORT[5].pvector_main = (int*)0;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	i = '0';
	
	Put(&TXbuf[5], 'I', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], 'U', 0);
	Put(&TXbuf[5], i, 0);
	Put(&TXbuf[5], ':', 0);
	Put(&TXbuf[5], 0x0A, 0);
	
	{asm("	pop		ST			");};
	
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	PORT[5].pvector_main = (int*) Alfat_Init_USB_Vector;	
 }
 
void Alfat_Init_USB_Vector(void)
{
	int i, n;
	char fp_name[64];
	char test_c1;
	unsigned char 	year,month,day;
	unsigned int 	iyear,imonth,iday;
	
	
	if (RXbuf[5].n < 4)
		return;
	
	i=0;
	PORT[5].pvector_main = (int*)0;
	
	n = RXbuf[5].n;
	for (i=0;i<(n+1);i++)
	{
		
		test_c1 = (char) Get(&RXbuf[5]);
		test_c1 = (test_c1 & 0xFF);
		ALFAT_RX[i] = test_c1;
	}
	
	if ( (ALFAT_RX[0] == '!') && (ALFAT_RX[1] == '0') && (ALFAT_RX[2] == '0') && (ALFAT_RX[3] == 0x0A) )
	{
		ALFAT_NO_ERROR = 1;
		
		if (ALFAT_INIT_ALL == 1)
		{
			{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
			month		= RTC[7] & 0x1F;
			day			= RTC[6] & 0x3F;
			year		= RTC[8] & 0xFF;
			
			
			imonth		= BCD_to_Int(month);
			iday		= BCD_to_Int(day);
			iyear		= BCD_to_Int(year);
			{asm("	pop		ST			");};
			
			sprintf(fp_name,"U0:\\PDI\\Log_%i-%i-20%i.csv\n",imonth,iday,iyear);			
			Alfat_Open_Append(1,fp_name);
		}
	}
	else
	{
		

		PORT[5].pvector_main = (int*)0;
		ALFAT_INIT_ALL = 0;
		ALFAT_NO_ERROR = 0;
	}
}

void Alfat_Get_Time(void)
 {
	Put(&TXbuf[5], 'G', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], 'T', 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	PORT[5].pvector_main = (int*) Alfat_Get_Date_Vector;
 }
 
void Alfat_Get_Time_Vector(void)
{
	int i;

	PORT[5].pvector_main = (int*)0;

	for (i=0;i<13;i++)
	{
		ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
	}
}
 
void Alfat_Get_Date(void)
{
	Put(&TXbuf[5], 'G', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], 'D', 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	PORT[5].pvector_main = (int*) Alfat_Get_Date_Vector;
}
void Alfat_Get_Date_Vector(void)
{
	int i;
	
	PORT[5].pvector_main = (int*)0;

	for (i=0;i<15;i++)
	{
		ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
	}
}

void Alfat_Get_Status_Reg(void)
{
	Put(&TXbuf[5], 'J', 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	PORT[5].pvector_main = (int*) Alfat_Get_Status_Reg_Vector;
}

void Alfat_Get_Status_Reg_Vector(void)
{
	int i,n;
	unsigned int alfat_reg;
	char test_c1;
		
	if (RXbuf[5].n < 11)
		return;
	
	i=0;
	PORT[5].pvector_main = (int*)0;
	test_c1 = 'Z'; 
	
	n = RXbuf[5].n;
	for (i=0;i<(n+1);i++)
	{
		test_c1 = (char) Get(&RXbuf[5]);
		test_c1 = (test_c1 & 0xFF);
		ALFAT_RX[i] = test_c1;
	}

	PORT[5].pvector_main = (int*)0;
	alfat_reg = 0;
	if ( ALFAT_RX[0] != '!')
	{
		return; 
	}
	
	if ( (ALFAT_RX[1] == '0')  && (ALFAT_RX[2] == '0')
							  && (ALFAT_RX[3] == 0x0A) && (ALFAT_RX[4] == '$') )
	{
		alfat_reg  = ASCII_to_Hex(ALFAT_RX[6]);
		alfat_reg += 16 * ASCII_to_Hex(ALFAT_RX[5]);
	}	
	
	ALFAT_STATUS_REG = alfat_reg;
}

void Alfat_Open_Append(int handle, char full_path[])
{	
	int i;
	char h, fp_char;
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	
	fp_char = full_path[0];
	
	
	
	h = Hex_to_ASCII(handle);
	
	Put(&TXbuf[5], 'O', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], h, 0);
	Put(&TXbuf[5], 'A', 0);
	Put(&TXbuf[5], '>', 0);
	
	i = 0;
	while ( (fp_char != 0x0A) && (i < 64) )
	{
		Put(&TXbuf[5], fp_char, 0);
		i++;
		fp_char = full_path[i];	
	}
	
	Put(&TXbuf[5], 0x0A, 0);
	{asm("	pop		ST			");};
	
	Prepare_TX(5, 1); 
		
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	PORT[5].pvector_main = (int*) Alfat_Open_Append_Vector;
}

void Alfat_Open_Append_Vector(void)
{
	int i;
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	PORT[5].pvector_main = (int*)0;
	
	ALFAT_INIT_ALL = 0;

	for (i=0;i<4;i++)
	{
		ALFAT_RX[i] = (char) (RXbuf[5].buff[i] & 0xFF);
	}

	if ( (ALFAT_RX[0] == '!') && (ALFAT_RX[1] == '0') && (ALFAT_RX[2] == '0') && (ALFAT_RX[3] == 0x0A) )
	{
		ALFAT_NO_ERROR = 1;
		ALFAT_WRITE_HEADER = 1;     
		ALFAT_INITIALIZED = 1; 

	}
	else
		ALFAT_NO_ERROR = 0;
	{asm("	pop		ST			");};
}

void Alfat_Close(int handle)
{
	char c_handle; 
	
	if(PORT[5].pvector_main != (int*)0)
	{
		
		return;		
	}
	
	if ( (handle < 0) || (handle > 15) )
	{
		
		return; 
	}
	
	c_handle = Hex_to_ASCII(handle);
	
	Put(&TXbuf[5], 'C', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], c_handle, 0);
	Put(&TXbuf[5], 0x0A, 0);
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
}

void Alfat_Flush(int handle)
{
	char c_handle; 
	
	if(PORT[5].pvector_main != (int*)0)
	{
		return;		
	}
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	if ( (handle < 0) || (handle > 15) )
	{
		return; 
	}
	
	c_handle = Hex_to_ASCII(handle);
	
	Put(&TXbuf[5], 'F', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], c_handle, 0);
	Put(&TXbuf[5], 0x0A, 0);
	{asm("	pop		ST			");};
	
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	
}

#line 8130
void Alfat_Write(int handle, int num_bytes,int append_linefeed)
{
	int i;
	char c_handle; 
	char num_bytes_ASCII[8];
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	
	c_handle = Hex_to_ASCII(handle);
	
	if (num_bytes == -1) 
	{
		
		i=0;
		while ( (ALFAT_TX[i] != 0x0A) && (i < 300-1) )
		{
			i++;
			
			if (ALFAT_TX[i] == 0x0) 
				i--;
		}
		
		if (append_linefeed)
		{
			ALFAT_TX[i] = 0x0A; 
			i++;				
			ALFAT_APPEND_LF = 1;
		}
		else
			ALFAT_APPEND_LF = 0;
			
		SIZE_ALFAT_TX = i;
	} 
	else
		SIZE_ALFAT_TX = num_bytes;
	
	if (SIZE_ALFAT_TX > 300)
	{
		SIZE_ALFAT_TX = 300;
	}
	else if (SIZE_ALFAT_TX < 1)
	{
		{asm("	pop		ST			");};
		return; 
	}
		
	Hex32_to_String(num_bytes_ASCII, SIZE_ALFAT_TX);	
	
	Put(&TXbuf[5], 'W', 0);
	Put(&TXbuf[5], 0x20, 0);
	Put(&TXbuf[5], c_handle, 0);
	Put(&TXbuf[5], '>', 0);
		
	for (i=3; i >=0; i--)
		Put(&TXbuf[5], num_bytes_ASCII[i], 0);
		
	Put(&TXbuf[5], 0x0A, 0);
	
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
	PORT[5].pvector_main = (int*) Alfat_Write_Vector;	
	{asm("	pop		ST			");};
	
	Prepare_TX(5, 1); 
	
}

void Alfat_Write_Vector(void)
{
	int i;
	
	i = 0;
	while ( (ALFAT_TX[i] != 0x0A) && (i < 300) && (i < SIZE_ALFAT_TX) )
	{
		if (ALFAT_TX[i] != 0x0)	
			Put(&TXbuf[5], ALFAT_TX[i], 0);
		i++;
	}
	if (ALFAT_APPEND_LF)
	{
		Put(&TXbuf[5], 0x0A, 0);
	}	
	PORT[5].pvector_main = (int*)0;
	Prepare_TX(5, 1); 
	Timer_Insert(&PORT[5].TMR_Poll,0,1);
	Timer_Insert(&PORT[5].TMR_Retry,0,3);
}

void Alfat_Wait_For_Write(void)
{
	int i;
	
	i = 0; 
	while (	(PORT[5].pvector_main != (int*)0)   )
	{
		i++; 
		
		if (i == 99500)
		{	

			Alfat_Write_Vector();
			{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
			{asm("	NOP			");						 asm("	NOP			");						 asm("	NOP			");};
		}
		
		if (i > 1000000)
		{	
			PORT[5].pvector_main = (int*)0;
			break;
		}			
	}
}

int Alfat_Map_Var(int index){
	int ALFAT_LOG_MAP[]={
		0,		
		1,		
		2,		
		3,		
		5,		
		7,		
		8,		
		10,		
		11, 	
		12,		
		14,		
		15,		
		21,		
		23,		
		49,		
		51,		
		106,	
		107,	
		108,	
		109,	
		110,	
		111,	
		113,	
		115,	
		117,	
		129,	
		130,	
		131,	
		132,	
		133,	
		134,	
		135,	
		136,	
		137,	
		138,	
		139,	
		140,	
		141,	
		142,	
		143,	
		144,	
		145,	
		146,	
		147,	
		-1		
	};
	
	if ( (index > -1) && (index < 44) )
		return ALFAT_LOG_MAP[index];
	else
		return -1;
								
}

void Begin_Alfat_Logging(COIL* c) 
{
	if ( BEGIN_ALFAT_LOGGING.val == 1)
	{
		ALFAT_INIT_ALL = 0;
		Alfat_Init_RTC(); 
		ALFAT_USB_MOUNTED.val = 0;
		ALFAT_USB_DETECTED.val = 0;
		Timer_Insert(&TMR_ALFAT_LOG,0,2);
		LOG_STATUS = (82);
	}
	else
	{
		
		LOG_STATUS = (81);	
		ALFAT_USB_MOUNTED.val = 0;
		ALFAT_USB_DETECTED.val = 0;
		Timer_Insert(&TMR_ALFAT_LOG,0,3);
		
	}
}



void Alfat_Change_Log_Period(COIL* c) 
{
	int preset;


	
	if	( REG_ALFAT_LOG_PERIOD.val > REG_ALFAT_LOG_PERIOD.bound_hi_set) 	
		REG_ALFAT_LOG_PERIOD.val = REG_ALFAT_LOG_PERIOD.bound_hi_set;
	else if	( REG_ALFAT_LOG_PERIOD.val < REG_ALFAT_LOG_PERIOD.bound_lo_set) 
		REG_ALFAT_LOG_PERIOD.val = REG_ALFAT_LOG_PERIOD.bound_lo_set;
	if (REG_ALFAT_LOG_PERIOD.val < 2) 
		REG_ALFAT_LOG_PERIOD.val = 2;


		
	LOG_STATUS = (81);	
	ALFAT_USB_MOUNTED.val = 0;
	ALFAT_USB_DETECTED.val = 0;
	Timer_Insert(&TMR_ALFAT_LOG,0,3); 
		
	if ( BEGIN_ALFAT_LOGGING.val == 1)
	{
		
		preset = ceil(REG_ALFAT_LOG_PERIOD.val/TIME0);
	
		if (preset<=0) 
			preset = 1;
		
		TMR_ALFAT_LOG.t 			= preset*TIME0;
		TMR_ALFAT_LOG.countdown 	= preset;
		TMR_ALFAT_LOG.preset_time 	= preset;
					
		ALFAT_INIT_ALL = 0;
		Alfat_Init_RTC(); 
		ALFAT_USB_MOUNTED.val = 0;
		ALFAT_USB_DETECTED.val = 0;
		Timer_Insert(&TMR_ALFAT_LOG,0,2); 
		LOG_STATUS = (82);
	}		
}


 
