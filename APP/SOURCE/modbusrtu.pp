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
 BOOL   MODBUS_CRITICAL_ERROR;

#line 134
#pragma CODE_SECTION(Modbus_Initialize,"initialization")
#pragma CODE_SECTION(MODBUS_RX_ID,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_LONG_ADDR,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_FUNCTION,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_n,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_nDATA,"internal_RAM")
#pragma CODE_SECTION(MODBUS_RX_CRC,"internal_RAM")



 void Modbus_Initialize(int id);
 void MODBUS_RX_ID(int id);
 void MODBUS_RX_LONG_ADDR(int id);
 void MODBUS_RX_FUNCTION(int id);
 void MODBUS_RX_n(int id);
 void MODBUS_RX_nDATA(int id);
 void MODBUS_RX_CRC(int id);

 void MB_exception(int id, int ex);
 void Process(int id);
 void Process_Memory(int id);
 void MB_Diag(int id);
 void Force_Slave_Pipe(int id);
 void Report_Slave_Info(int id);
 void MB_Calibrate(int id);

 void MB_POLL(int id);
 void MB_POLL_0(void);
 void MB_POLL_1(void);
 void MB_POLL_2(void);
 void MB_POLL_3(void);
 void MB_POLL_4(void);
 void MB_POLL_5(void);
 void MB_POLL_6(void);
 void MB_POLL_7(void);

 void MB_RETRY(int id);
 void MB_RETRY_0(void);
 void MB_RETRY_1(void);
 void MB_RETRY_2(void);
 void MB_RETRY_3(void);
 void MB_RETRY_4(void);
 void MB_RETRY_5(void);
 void MB_RETRY_6(void);
 void MB_RETRY_7(void);

 void MB_Init_Master(int id);
 MPKT* Master_Create(int* vect, int n, int slave, int func, int addr, int num, float v);
 void MB_RX(int id);
 void MB_RX_COR0CFG(int id);
 void MB_RX_COR1CFG(int id);
 void MB_RX_COR2CFG(int id);
 void MB_RX_COR3CFG(int id);
 void MB_RX_COR0CFGA(int id);
 void MB_RX_COR1CFGA(int id);
 void MB_RX_COR2CFGA(int id);
 void MB_RX_COR3CFGA(int id); 
 void MB_RX_COR0CFGB(int id);       
 void MB_RX_COR1CFGB(int id);
 void MB_RX_COR2CFGB(int id);
 void MB_RX_COR3CFGB(int id); 
 void MB_RX_COR4CFGB(int id);
 void MB_RX_COR0CFGC(int id);     
 void MB_RX_COR1CFGC(int id);
 void MB_RX_COR2CFGC(int id);
 void MB_RX_COR3CFGC(int id);  
 void MB_RX_COR0CFGD(int id);     
 void MB_RX_COR1CFGD(int id);
 void MB_RX_COR2CFGD(int id);
 void MB_RX_COR3CFGD(int id);
 void MB_RX_MCFU1(int id);
 void MB_RX_MCFU2(int id);
 void MB_RX_MCFU3(int id);
 void MB_RX_MCFU4(int id);
 void MB_RX_2(int id);
 void MB_RX_3(int id);
 void MB_RX_COR1COILS(int id);
 void MB_RX_COR2COILS(int id);
 void MB_RX_5(int id);
 void MB_RX_C1(int id);
 void MB_RX_C2(int id);
 void MB_RX_C3(int id);
 void MB_RX_C4(int id);
 void MB_RX_C5(int id);
 void MB_TX_A_PLC(void);
 void MB_RX_CA1(int id);
 void MB_RX_CA2(int id);
 void MB_RX_CA3(int id);
 void MB_RX_CA4(int id);
 void MB_RX_CAP1(int id);
 void MB_RX_CT1(int id);
 void MB_RX_CT2(int id);
 void MB_RX_CT3(int id);
 void MB_RX_CT4(int id);
 int Xlate_3095_P_units(int u);
 int Xlate_3095_T_units(int u);
 void Xlate_COR_Special_Units(int id, int j);
 TPKT TMR_ALYESKA_PLC;

 int* vect_exec0;
 int* vect_exec1;
 int* vect_exec2;
 int* vect_exec3;
 int* vect_exec4;
 int* vect_exec5;
 int* vect_exec6;
 int* vect_exec7; 
 int* vect_exec8; 

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

#line 42 "G:\workspace\win\eea\APP\SOURCE\INCLUDE\MODBUSTABLES.H"
#pragma DATA_SECTION(mb_int,"TABLES")
const int mb_int[][2] =	{
 
			   1 		 | 0x00010000									, (int)&SN_PIPE,
			   2 		 | 0x00010000		 	  | 0x10000000				, (int)&DIAGNOSTICS[0],
			   3 		 | 0x00010000		 	  | 0x10000000				, (int)&DIAGNOSTICS[1],
			   4 		 | 0x00010000		 	  | 0x10000000 				, (int)&DIAGNOSTICS_ERROR_CODE,
			   5 		 | 0x00010000		 	  | 0x10000000 				, (int)&DIAGNOSTICS_MSG_CODE,
			   6 		 | 0x00030000									, (int)&REG_WATERCUT,
			   7 		 | 0x00030000									, (int)&REG_TEMPERATURE_EXTERNAL,
			   8 		 | 0x00030000									, (int)&REG_TEMPERATURE_USER,
			   9 		 | 0x00030000									, (int)&REG_EMULSION_PHASE,
			  10 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&REG_STREAM_SELECT,
			  11 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_SALINITY,
			  12 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_OIL_ADJ,
			  13 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_WATER_ADJ,
			  14 | 0x04000000  | 0x00040000	  | 0x10000000 				, (int)&REG_TEMPERATURE_EXTERNAL,
			  15 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&OIL_CALC_MODE,
			  16 | 0x04000000  | 0x000B0000 	  | 0x10000000 				, (int)&Density_Correction_Mode,
			  17 | 0x04000000  | 0x000B0000 	  | 0x10000000 				, (int)&DCM_PORT,
			  18	 	 | 0x00010000									, (int)&REG_TIME,
			  19 		 | 0x00030000			  | 0x40000000				, (int)&DEMO_ANALYZER_MODE,
			  20 | 0x04000000  | 0x000B0000 	  | 0x20000000				, (int)&ANALYZER_MODE,
			  21 		 | 0x000C0000  		 					, 146,
			  22 	 	 | 0x000C0000  		 					, 5,
			  23 		 | 0x000C0000  		 					, 1,
			  24 		 | 0x000C0000  		 					, 615,
			  25 		 | 0x00010000									, (int)&HW_VER,
			  26 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&REG_NUM_SAMP,
			  27 | 0x04000000  | 0x00010000       	  | 0x20000000				, (int)&OSC_OIL_CALC,
			  28 | 0x04000000  | 0x00010000       	  | 0x20000000				, (int)&OSC_WATER_CALC,
			  29 | 0x04000000  | 0x00010000       	  | 0x10000000 				, (int)&NaN_val_int,
			  30 		 | 0x00010000									, (int)&RESET_COUNTER,
			  31 | 0x04000000  | 0x00010000	 	 	  | 0x10000000				, (int)&DIAGNOSTICS_MASK[0],
			  32 | 0x04000000  | 0x00010000	 	 	  | 0x10000000				, (int)&DIAGNOSTICS_MASK[1],
			  33 		 | 0x00010000									, (int)&CURRENT_OSC,
			  34 | 0x04000000  | 0x000B0000 	  | 0x10000000				, (int)&Density_Cal_Unit,
			  35 | 0x04000000  | 0x00030000    	 	  | 0x10000000 			 	, (int)&Oil_Phase_Filter,
			  36 | 0x04000000  | 0x00030000    	 	  | 0x10000000 			 	, (int)&Water_Phase_Filter, 

			  37 		 | 0x00030000									, (int)&REG_TEMPERATURE_AVG,   			 
			  38 | 0x04000000  | 0x00040000	  | 0x10000000 				, (int)&REG_TEMPERATURE_AVG,   			 

			  39 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_PHASE_HOLD_CYCLES, 			 
			  40 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_WC_NUM_SAMPLES,    			 

			  41 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_CCM_PURGE_STAT,  			 
			  42 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_CCM_TEST_STAT,   			 

         	  
			  45 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_DELTA_TEMP,  				 
			  46 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_FREQ_VARIANCE_RATIO, 		 
			  47 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_BULK_LEVEL,   				 

			  50 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&REG_ALFAT_LOG_PERIOD, 
			  
			  61 		 | 0x00010000      		 					, (int)&i_LV[0],
			  62 		 | 0x00010000      		 					, (int)&i_LV[1],
			  63 		 | 0x00010000      		 					, (int)&i_LV[2],
			  64 		 | 0x00010000      		 					, (int)&i_LV[3],
			  65 		 | 0x00010000      		 					, (int)&i_LV[4],
			  66 		 | 0x00010000      		 					, (int)&i_LV[5],
			  67 		 | 0x00010000      		 					, (int)&i_LV[6],
			  68 		 | 0x00010000      		 					, (int)&i_LV[7],
			  69 		 | 0x00010000      		 					, (int)&i_LV[8],
			  70 		 | 0x00010000      		 					, (int)&i_LV[9],
			  71 		 | 0x00010000      		 					, (int)&i_LV[10],
			  72 		 | 0x00010000      		 					, (int)&i_LV[11],
			  73 		 | 0x00010000      		 					, (int)&i_LV[12],
			  74 		 | 0x00010000      		 					, (int)&i_LV[13],
			  75 		 | 0x00010000      		 					, (int)&i_LV[14],
			  76 		 | 0x00010000      		 					, (int)&i_LV[15],
			  77 		 | 0x00010000      		 					, (int)&i_LV[16],
			  78 		 | 0x00010000      		 					, (int)&i_LV[17],
			  79 		 | 0x00010000      		 					, (int)&i_LV[18],
			  80 		 | 0x00010000      		 					, (int)&i_LV[19],
			  81 		 | 0x00010000      		 					, (int)&i_LV[20],
			  82 		 | 0x00010000      		 					, (int)&i_LV[21],
			  83		 | 0x00010000      		 					, (int)&i_LV[22],
			  84 		 | 0x00010000      		 					, (int)&i_LV[23],
			  85 		 | 0x00010000      		 					, (int)&i_LV[24],
			  86 		 | 0x00010000      		 					, (int)&i_LV[25],
			  87 		 | 0x00010000      		 					, (int)&i_LV[26],
			  88 		 | 0x00010000      		 					, (int)&i_LV[27],
			  89 		 | 0x00010000      		 					, (int)&i_LV[28],
			  90 		 | 0x00010000      		 					, (int)&i_LV[29],

			 
			  91 		 | 0x00010000      		 					, (int)&i_FREQ_O,
			  92 		 | 0x00010000      		 					, (int)&i_IP_O,
			  93 		 | 0x00010000      		 					, (int)&i_RP_O,
			  94 		 | 0x00010000      		 					, (int)&i_FREQ_W,
		 	  95 		 | 0x00010000      		 					, (int)&i_IP_W,
			  96 		 | 0x00010000      		 					, (int)&i_RP_W,
			  97 		 | 0x00010000      		 					, (int)&i_WC,
			  98 		 | 0x00010000      		 					, (int)&i_TEMP,

			 
			  99 		 | 0x00010000      		 					, (int)&i_CCM_Level_Setpoint,
			 100 		 | 0x00010000      		 					, (int)&i_CCM_Level,
			 101 		 | 0x00010000      		 					, (int)&i_CCM_Pressure_Setpoint,
			 102 		 | 0x00010000      		 					, (int)&i_CCM_Pressure,
			 103 		 | 0x00010000      		 					, (int)&i_CCM_Gas_Valve,
			 104 		 | 0x00010000      		 					, (int)&i_CCM_Liquid_Valve,
			 105 		 | 0x00010000      		 					, (int)&i_CCM_Flow,
			 106 		 | 0x00010000      		 					, (int)&i_CCM_Flow_Oil,
			 107 		 | 0x00010000      		 					, (int)&i_CCM_Flow_Water,
			 108 		 | 0x00010000      		 					, (int)&i_CCM_Flow_Gas,
			 
			 110 		 | 0x000C0000  		 					, 01,	
			 
			 
			 
			  
#line 161
			 123		 | 0x00010000	| 0x10000000				, (int)&bubble.length,
			 124		 | 0x00010000	| 0x10000000				, (int)&pattern.length,
			 125		 | 0x00010000	| 0x10000000				, (int)&gas_routine_reset_needed,
			 
			 			 
			 
			 
			 201 		 | 0x00010000      		 					, (int)&CCM_TIME_START.tm_sec,
			 202 		 | 0x00010000      		 					, (int)&CCM_TIME_START.tm_min,
			 203 		 | 0x00010000      		 					, (int)&CCM_TIME_START.tm_hour,
			 204 		 | 0x00010000      		 					, (int)&CCM_TIME_START.tm_mday,
			 205 		 | 0x00010000      		 					, (int)&CCM_TIME_START.tm_mon,
			 206 		 | 0x00010000      		 					, (int)&CCM_TIME_START.tm_year,

			 211 		 | 0x00010000      		 					, (int)&CCM_TIME_STOP.tm_sec,
			 212 		 | 0x00010000      		 					, (int)&CCM_TIME_STOP.tm_min,
			 213 		 | 0x00010000      		 					, (int)&CCM_TIME_STOP.tm_hour,
			 214 		 | 0x00010000      		 					, (int)&CCM_TIME_STOP.tm_mday,
			 215 		 | 0x00010000      		 					, (int)&CCM_TIME_STOP.tm_mon,
			 216 		 | 0x00010000      		 					, (int)&CCM_TIME_STOP.tm_year,

			 221 		 | 0x00010000      		 					, (int)&CCM_TIME_REMAINING.tm_sec,
			 222 		 | 0x00010000      		 					, (int)&CCM_TIME_REMAINING.tm_min,
			 223 		 | 0x00010000      		 					, (int)&CCM_TIME_REMAINING.tm_hour,
			 224 		 | 0x00010000      		 					, (int)&CCM_TIME_REMAINING.tm_mday,
			 225 		 | 0x00010000      		 					, (int)&CCM_TIME_REMAINING.tm_mon,
			 226 		 | 0x00010000      		 					, (int)&CCM_TIME_REMAINING.tm_year,

			 231 		 | 0x00010000      		 					, (int)&CCM_TIME_ELAPSED.tm_sec,
			 232 		 | 0x00010000      		 					, (int)&CCM_TIME_ELAPSED.tm_min,
			 233 		 | 0x00010000      		 					, (int)&CCM_TIME_ELAPSED.tm_hour,
			 234 		 | 0x00010000      		 					, (int)&CCM_TIME_ELAPSED.tm_mday,
			 235 		 | 0x00010000      		 					, (int)&CCM_TIME_ELAPSED.tm_mon,
			 236 		 | 0x00010000      		 					, (int)&CCM_TIME_ELAPSED.tm_year,

			1001 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[10],
			1002 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[10],
			1003 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[5],
			1004 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[5],
			1005 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[6],
			1006 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[6],
			1007 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[7],
			1008 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[7],
			1009 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[8],
			1010 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[8],

			 
			1011 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[0],
			1012 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[0],
			1013 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[1],
			1014 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[1],
			1015 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[2],
			1016 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[2],
			1017 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[3],
			1018 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[3],
			1019 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[4],
			1020 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[4],
			1021 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[5],
			1022 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[5],
			1023 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[0],
			1024 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[0],
			1025 | 0x04000000  | 0x00010000		  	  | 0x20000000 				, (int)&DAC_TRIM_I_0[9],
			1026 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[9],
			1027 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[10],
			1028 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[10],
			1029 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[11],
			1030 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[11],

			 
			1031 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[6],
			1032 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[6],
			1033 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[7],
			1034 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[7],
			1035 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[8],
			1036 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[8],
			1037 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[9],
			1038 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[9],
			1039 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[1],
			1040 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[1],
			1041 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[2],
			1042 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[2],
			1043 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[3],
			1044 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[3],
			1045 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_0[4],
			1046 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&DAC_TRIM_I_1[4],
			1047 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_0[11],
			1048 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ADC_TRIM_I_1[11],

			1101 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&uP.BNUM,
			1102 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&uP.REV,
			1103      	 | 0x00010000									, (int)&uP.MONTH,
			1104      	 | 0x00010000									, (int)&uP.DAY,
			1105      	 | 0x00010000									, (int)&uP.YEAR,

			1111 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&COMM.BNUM,
			1112 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&COMM.REV,
			1113      	 | 0x00010000									, (int)&COMM.MONTH,
			1114      	 | 0x00010000									, (int)&COMM.DAY,
			1115      	 | 0x00010000									, (int)&COMM.YEAR,

			1121 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ANALYZER.BNUM,
			1122 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&ANALYZER.REV,
			1123      	 | 0x00010000									, (int)&ANALYZER.MONTH,
			1124      	 | 0x00010000									, (int)&ANALYZER.DAY,
			1125      	 | 0x00010000									, (int)&ANALYZER.YEAR,

			1131 | 0x04000000	 | 0x00010000		 	  | 0x20000000 				, (int)&POWER.BNUM,
			1132 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&POWER.REV,
			1133      	 | 0x00010000									, (int)&POWER.MONTH,
			1134      	 | 0x00010000									, (int)&POWER.DAY,
			1135      	 | 0x00010000									, (int)&POWER.YEAR,

			1141 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ANALOGIO.BNUM,
			1142 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&ANALOGIO.REV,
			1143      	 | 0x00010000									, (int)&ANALOGIO.MONTH,
			1144      	 | 0x00010000									, (int)&ANALOGIO.DAY,
			1145      	 | 0x00010000									, (int)&ANALOGIO.YEAR,

			1151 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DISPLAY.BNUM,
			1152 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&DISPLAY.REV,
			1153      	 | 0x00010000									, (int)&DISPLAY.MONTH,
			1154      	 | 0x00010000									, (int)&DISPLAY.DAY,
			1155      	 | 0x00010000									, (int)&DISPLAY.YEAR,

			1161 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&MOTHERBOARD.BNUM,
			1162 | 0x04000000  | 0x00010000		 	  | 0x20000000 				, (int)&MOTHERBOARD.REV,
			1163 		 | 0x00010000									, (int)&MOTHERBOARD.MONTH,
			1164 		 | 0x00010000									, (int)&MOTHERBOARD.DAY,
			1165 		 | 0x00010000									, (int)&MOTHERBOARD.YEAR,    

			              
			2101 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[0].Slave_ID,
			2102 | 0x04000000  | 0x00030000		 	  | 0x10000000 			 	, (int)&PORTCFG[0].Baud_Rate,
			2103 | 0x04000000  | 0x00010000		 	  | 0x10000000     			, (int)&PORTCFG[0].Parity,
			2104 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[0].EOT_Delay,
			2105 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[0].PREFIX,
			2106 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[0].SUFFIX,
			2107 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[0].NETWDOG,
			2108 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[0].N,
			2109 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[0].STP,
			2110 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[0].N_retry,
			2111 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[0].poll_time,
			2112 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[0].timeout,

			 
			2113 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[1].Slave_ID, 			
			2114 | 0x04000000  | 0x00030000		 	  | 0x10000000 			 	, (int)&PORTCFG[1].Baud_Rate,
			2115 | 0x04000000  | 0x00010000		 	  | 0x10000000     			, (int)&PORTCFG[1].Parity,
			2116 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[1].EOT_Delay,
			2117 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[1].PREFIX,
			2118 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[1].SUFFIX,
			2119 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[1].NETWDOG,
			2120 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[1].N,
			2121 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[1].STP,
			2122 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[1].N_retry,
			2123 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[1].poll_time,
			2124 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[1].timeout,

			2125 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[2].Slave_ID,
			2126 | 0x04000000  | 0x00030000		 	  | 0x10000000 			 	, (int)&PORTCFG[2].Baud_Rate,
			2127 | 0x04000000  | 0x00010000		 	  | 0x10000000     			, (int)&PORTCFG[2].Parity,
			2128 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[2].EOT_Delay,
			2129 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[2].PREFIX,
			2130 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[2].SUFFIX,
			2131 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[2].NETWDOG,
			2132 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[2].N,
			2133 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[2].STP,
			2134 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[2].N_retry,
			2135 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[2].poll_time,
			2136 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[2].timeout,

			2137 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[3].Slave_ID,
			2138 | 0x04000000  | 0x00030000		 	  | 0x10000000 			 	, (int)&PORTCFG[3].Baud_Rate,
			2139 | 0x04000000  | 0x00010000		 	  | 0x10000000     			, (int)&PORTCFG[3].Parity,
			2140 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[3].EOT_Delay,
			2141 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[3].PREFIX,
			2142 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[3].SUFFIX,
			2143 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[3].NETWDOG,
			2144 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[3].N,
			2145 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[3].STP,
			2146 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[3].N_retry,
			2147 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[3].poll_time,
			2148 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&PORTCFG[3].timeout,

			2149 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[4].Slave_ID,
			2150 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&NUM_PREAMBLE_SM,

			2151 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[6].Slave_ID,
			2152 | 0x04000000  | 0x00030000		 	  | 0x10000000 			 	, (int)&PORTCFG[6].Baud_Rate,
			2153 | 0x04000000  | 0x00010000		 	  | 0x10000000     			, (int)&PORTCFG[6].Parity,
			2154 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[6].EOT_Delay,
			2155 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[6].PREFIX,
			2156 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[6].SUFFIX,
			2157 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[6].NETWDOG,

			2158 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[7].Slave_ID,
			2159 | 0x04000000  | 0x00030000		 	  | 0x10000000 			 	, (int)&PORTCFG[7].Baud_Rate,
			2160 | 0x04000000  | 0x00010000		 	  | 0x10000000     			, (int)&PORTCFG[7].Parity,
			2161 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[7].EOT_Delay,
			2162 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[7].PREFIX,
			2163 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[7].SUFFIX,
			2164 | 0x04000000  | 0x00030000		 	  | 0x10000000 				, (int)&PORTCFG[7].NETWDOG,

			2201 		 | 0x00010000      		 					, (int)&ALYESKA.iWATERCUTz,
			2202 		 | 0x00010000      		 					, (int)&ALYESKA.iWATERCUT,
			2203 		 | 0x00010000      		 					, (int)&ALYESKA.iFLOW_RATE,
			2204 		 | 0x00010000      		 					, (int)&ALYESKA.iTEMPERATURE,
			2205 		 | 0x00010000      		 					, (int)&ALYESKA.iDENSITY,
			2206 		 | 0x00010000      		 					, (int)&ALYESKA.iVISCOSITY,

			4001 | 0x04000000  | 0x00030000    	 	  | 0x10000000 			 	, (int)&Num_Oil_Samples,
			4002 		 | 0x00010000									, (int)&Cap_Oil.i,
			4003 		 | 0x00010000									, (int)&Cap_Oil.Time_HH,
			4004 		 | 0x00010000									, (int)&Cap_Oil.Time_MM,
			4005 		 | 0x00010000									, (int)&Cap_Oil.Time_MONTH,
			4006 		 | 0x00010000									, (int)&Cap_Oil.Time_DAY,
			4007 		 | 0x00010000									, (int)&Cap_Oil.Time_DAY_OF_WEEK,
			4008 		 | 0x00010000									, (int)&Cap_Oil.Time_YEAR,

			4011 | 0x04000000  | 0x00030000 		  | 0x10000000 				, (int)&Num_Water_Samples,
			4012 		 | 0x00010000									, (int)&Cap_Water.i,
			4013 		 | 0x00010000									, (int)&Cap_Water.Time_HH,
			4014 		 | 0x00010000									, (int)&Cap_Water.Time_MM,
			4015 		 | 0x00010000									, (int)&Cap_Water.Time_MONTH,
			4016 		 | 0x00010000									, (int)&Cap_Water.Time_DAY,
			4017 		 | 0x00010000									, (int)&Cap_Water.Time_DAY_OF_WEEK,
			4018 		 | 0x00010000									, (int)&Cap_Water.Time_YEAR,

			5001 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Date[0],				 
			5002 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Date[1],				 

			5003 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[0],
			5004 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[1],
			5005 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[2],
			5006 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[3],
			5007 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[4],
			5008 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[5],
			5009 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[6],
			5010 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[7],
			5011 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[8],
			5012 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[9],
			5013 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[10],
			5014 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[11],
			5015 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[12],
			5016 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[13],
			5017 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[14],
			5018 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag_Long[15],
			5019 | 0x80000000 | 0x00010000  		  | 0x10000000 				, (int)&DUMMY, 							 

			5020 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag[0],
			5021 | 0x04000000  | 0x00010000    	 	  | 0x10000000 			 	, (int)&STR_HART_Tag[1],
			5022 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag[2],
			5023 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Tag[3],
			5024 | 0x80000000 | 0x00010000  		  | 0x10000000 				, (int)&DUMMY, 							 

			5025 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Desc[0],
			5026 | 0x04000000  | 0x00010000    	 	  | 0x10000000 				, (int)&STR_HART_Desc[1],
			5027 | 0x04000000  | 0x00010000    	 	  | 0x10000000				, (int)&STR_HART_Desc[2],
			5028 | 0x04000000  | 0x00010000    	 	  | 0x10000000				, (int)&STR_HART_Desc[3],
			5029 | 0x04000000  | 0x00010000    	 	  | 0x10000000				, (int)&STR_HART_Desc[4],
			5030 | 0x04000000  | 0x00010000    	 	  | 0x10000000				, (int)&STR_HART_Desc[5],
			5031 | 0x04000000  | 0x00010000    	 	  | 0x10000000				, (int)&STR_HART_Desc[6],
			5032 | 0x04000000  | 0x00010000    	 	  | 0x10000000				, (int)&STR_HART_Desc[7],
			5033 | 0x80000000 | 0x00010000  		  | 0x10000000				, (int)&DUMMY, 							 

			5034 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[0],
			5035 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[1],
			5036 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[2],
			5037 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[3],
			5038 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[4],
			5039 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[5],
			5040 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[6],
			5041 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[7],
			5042 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[8],
			5043 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&STR_HART_Msg[9],
			5044 | 0x04000000  | 0x00010000 		  | 0x10000000	 			, (int)&STR_HART_Msg[10],
			5045 | 0x04000000  | 0x00010000   		  | 0x10000000	 			, (int)&STR_HART_Msg[11],
			5046 | 0x04000000  | 0x00010000   		  | 0x10000000	 			, (int)&STR_HART_Msg[12],
			5047 | 0x04000000  | 0x00010000   		  | 0x10000000	 			, (int)&STR_HART_Msg[13],
			5048 | 0x04000000  | 0x00010000   		  | 0x10000000	 			, (int)&STR_HART_Msg[14],
			5049 | 0x04000000  | 0x00010000   		  | 0x10000000	 			, (int)&STR_HART_Msg[15],
			5050 | 0x80000000 | 0x00010000  		  | 0x10000000				, (int)&DUMMY, 							 

			5051 		 | 0x00010000									, (int)&U_TEMP_ASCII,
			5052 | 0x80000000 | 0x00010000									, (int)&DUMMY, 							 

			5053 | 0x04000000  | 0x00010000     	  | 0x20000000				, (int)&STR_VER[0],
			5054 | 0x80000000 | 0x00010000  		  | 0x20000000				, (int)&DUMMY, 							 

			5055 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_INIT[0],
			5056 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_INIT[1],
			5057 | 0x80000000 | 0x00010000  		  | 0x20000000				, (int)&DUMMY, 							 

			5058 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[0],
			5059 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[1],
			5060 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[2],
			5061 | 0x04000000  | 0x00010000     	  | 0x20000000				, (int)&STR_Copyright[3],
			5062 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[4],
			5063 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[5],
			5064 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[6],
			5065 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[7],
			5066 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[8],
			5067 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[9],
			5068 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[10],
			5069 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[11],
			5070 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[12],
			5071 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[13],
			5072 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[14],
			5073 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[15],
			5074 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[16],
			5075 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[17],
			5076 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[18],
			5077 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Copyright[19],
			5078 | 0x80000000 | 0x00010000      	  | 0x20000000				, (int)&DUMMY, 							 

			5079 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[0],
			5080 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[1],
			5081 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[2],
			5082 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[3],
			5083 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[4],
			5084 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[5],
			5085 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[6],
			5086 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[7],
			5087 | 0x04000000  | 0x00010000     	  | 0x20000000				, (int)&STR_Analyzer_Info[8],
			5088 | 0x04000000  | 0x00010000      	  | 0x20000000				, (int)&STR_Analyzer_Info[9],
			5089 | 0x80000000 | 0x00010000     	  | 0x20000000				, (int)&DUMMY, 							 
                                                                        
			5090 | 0x04000000  | 0x00010000   		  | 0x20000000				, (int)&STR_ASSY_Date[0],
			5091 | 0x04000000  | 0x00010000   		  | 0x20000000				, (int)&STR_ASSY_Date[1],
			5092 | 0x04000000  | 0x00010000   		  | 0x20000000				, (int)&STR_ASSY_Date[2],
			5093 | 0x04000000  | 0x00010000   		  | 0x20000000				, (int)&STR_ASSY_Date[3],
			5094 | 0x04000000  | 0x00010000   		  | 0x20000000				, (int)&STR_ASSY_Date[4],
			5095 | 0x04000000  | 0x00010000   		  | 0x20000000				, (int)&STR_ASSY_Date[5], 				 
			5096 | 0x04000000  | 0x00010000   		  | 0x20000000				, (int)&STR_ASSY_Date[6], 				 
			5097 | 0x04000000  | 0x00010000   		  | 0x20000000				, (int)&STR_ASSY_Date[7], 				 
			5098 | 0x80000000 | 0x00010000  		  | 0x20000000				, (int)&DUMMY, 							 

			6001 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[0],
			6002 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[1],
			6003 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[2],
			6004 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[3],
			6005 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[4],
			6006 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[5],
			6007 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[6],
			6008 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[7],
			6009 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[8],
			6010 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[9],
			6011 | 0x80000000 | 0x00010000									, (int)&DUMMY,
			6101 	 	 | 0x00010000									, (int)&MB_LCD_DISPLAY[10],
			6102 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[11],
			6103 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[12],
			6104 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[13],
			6105 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[14],
			6106 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[15],
			6107 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[16],
			6108 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[17],
			6109 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[18],
			6110 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[19],
			6111 | 0x80000000 | 0x00010000									, (int)&DUMMY,
			6201 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[20],
			6202 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[21],
			6203 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[22],
			6204 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[23],
			6205 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[24],
			6206 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[25],
			6207 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[26],
			6208 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[27],
			6209 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[28],
			6210 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[29],
			6211 | 0x80000000 | 0x00010000									, (int)&DUMMY,
			6301 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[30],
			6302 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[31],
			6303 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[32],
			6304 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[33],
			6305 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[34],
			6306 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[35],
			6307 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[36],
			6308 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[37],
			6309 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[38],
			6310 		 | 0x00010000									, (int)&MB_LCD_DISPLAY[39],
			6311 | 0x80000000 | 0x00010000									, (int)&DUMMY,

			8001 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[0].watercut,
			8002 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[0].T,
			8003 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[0].pressure,
			8004 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[0].density,
			8005 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[0].flow_class,
			8006 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[0].flow_unit,
			8007 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[0].accum_unit,
			8008 		 | 0x00090000						, (int)&FC[0].density_oil,
			8009 		 | 0x00090000						, (int)&FC[0].density_oilST,
			8010 		 | 0x00090000						, (int)&FC[0].density_water,
			8011 		 | 0x00090000						, (int)&FC[0].density_waterST,
			8012 | 0x04000000	 | 0x00010000		 	  | 0x10000000 				, (int)&FC[0].PULSES_PER_ACCUM_UNIT,
			8013 | 0x04000000	 | 0x00010000    	 	  | 0x10000000 			 	, (int)&FC[0].API_TABLE,

			8021 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[1].watercut,
			8022 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[1].T,
			8023 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[1].pressure,
			8024 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[1].density,
			8025 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[1].flow_class,
			8026 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[1].flow_unit,
			8027 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[1].accum_unit,
			8028 		 | 0x00090000						, (int)&FC[1].density_oil,
			8029 		 | 0x00090000						, (int)&FC[1].density_oilST,
			8030 		 | 0x00090000						, (int)&FC[1].density_water,
			8031 		 | 0x00090000						, (int)&FC[1].density_waterST,
			8032 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&FC[1].PULSES_PER_ACCUM_UNIT,
			8033 | 0x04000000  | 0x00010000    	 	  | 0x10000000 			 	, (int)&FC[1].API_TABLE,

			8041 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[2].watercut,
			8042 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[2].T,
			8043 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[2].pressure,
			8044 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&FC[2].density,
			8045 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[2].flow_class,
			8046 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[2].flow_unit,
			8047 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[2].accum_unit,
			8048 		 | 0x00090000						, (int)&FC[2].density_oil,
			8049 		 | 0x00090000						, (int)&FC[2].density_oilST,
			8050 		 | 0x00090000						, (int)&FC[2].density_water,
			8051 		 | 0x00090000						, (int)&FC[2].density_waterST,
			8052 | 0x04000000  | 0x00010000		 	  | 0x10000000 				, (int)&FC[2].PULSES_PER_ACCUM_UNIT,
			8053 | 0x04000000  | 0x00010000    	 	  | 0x10000000 			 	, (int)&FC[2].API_TABLE,

			8101 | 0x04000000  | 0x00090000 | 0x10000000 				, (int)&CCM_VESSEL_PRESSURE[0],
			8102 | 0x04000000  | 0x00090000 | 0x10000000 				, (int)&CCM_VESSEL_PRESSURE[1],

			8103 		 | 0x00010000 								, (int)&COR[0].u_v,
			8104 		 | 0x00010000 								, (int)&COR[0].u_vfr,
			8105 		 | 0x00010000 								, (int)&COR[0].u_m,
			8106 		 | 0x00010000 								, (int)&COR[0].u_mfr,
			8107 		 | 0x00010000 								, (int)&COR[0].u_density,
			8108 		 | 0x00010000 								, (int)&COR[1].u_v,
			8109 		 | 0x00010000 								, (int)&COR[1].u_vfr,
			8110 		 | 0x00010000 								, (int)&COR[1].u_m,
			8111 		 | 0x00010000 								, (int)&COR[1].u_mfr,
			8112 		 | 0x00010000 								, (int)&COR[1].u_density,
			8113 		 | 0x00010000 								, (int)&COR[2].u_v,
			8114 		 | 0x00010000 								, (int)&COR[2].u_vfr,
			8115 		 | 0x00010000 								, (int)&COR[2].u_m,
			8116 		 | 0x00010000 								, (int)&COR[2].u_mfr,
			8117 		 | 0x00010000 								, (int)&COR[2].u_density,
			8118 		 | 0x00010000 								, (int)&COR[3].u_v,
			8119 		 | 0x00010000 								, (int)&COR[3].u_vfr,
			8120 		 | 0x00010000 								, (int)&COR[3].u_m,
			8121 		 | 0x00010000 								, (int)&COR[3].u_mfr,
			8122 		 | 0x00010000 								, (int)&COR[3].u_density,

			8123 		 | 0x00090000			 			, (int)&COR[0].mcf,
			8124 		 | 0x00090000			 			, (int)&COR[1].mcf,
			8125 		 | 0x00090000			 			, (int)&COR[2].mcf,
			8126 		 | 0x00090000						, (int)&COR[3].mcf,

			8131 		 | 0x00010000									, (int)&PRESS[0].u_DP,
			8132 		 | 0x00010000									, (int)&PRESS[0].u_SP,
			8133 		 | 0x00010000									, (int)&PRESS[0].u_PT,

			8141 		 | 0x00010000									, (int)&PRESS[1].u_DP,
			8142 		 | 0x00010000									, (int)&PRESS[1].u_SP,
			8143 		 | 0x00010000									, (int)&PRESS[1].u_PT,

			8151 		 | 0x00010000									, (int)&PRESS[2].u_DP,
			8152 		 | 0x00010000									, (int)&PRESS[2].u_SP,
			8153 		 | 0x00010000									, (int)&PRESS[2].u_PT,

			8161 | 0x04000000  | 0x00090000 | 0x10000000 				, (int)&CCM_GAS_TOTAL,
			8162 | 0x04000000  | 0x00090000 | 0x10000000 				, (int)&CCM_GAS_FLOW,
			8163 | 0x04000000  | 0x00090000 | 0x10000000 				, (int)&CCM_GAS_DENSITY,
			8164 | 0x04000000  | 0x00090000 | 0x10000000 				, (int)&CCM_GAS_TEMPERATURE,  			 
			8165 | 0x04000000  | 0x00090000 | 0x10000000 				, (int)&CCM_GAS_DENSITY_INPUT,			 

			8201 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[0].class,
			8202 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[0].unit,
			8203 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[1].class,
			8204 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[1].unit,
			8205 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[2].class,
			8206 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[2].unit,
			8207 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[3].class,
			8208 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[3].unit,
			8209 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[4].class,
			8210 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[4].unit,
			8211 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[0].class,
			8212 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[0].unit,
			8213 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[1].class,
			8214 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[1].unit,
			8215 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[2].class,
			8216 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[2].unit,
			8217 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[3].class,
			8218 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[3].unit,
			8219 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[4].class,
			8220 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[4].unit,
			8221 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[5].class,
			8222 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[5].unit,
			8223 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[6].class,
			8224 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[6].unit,
			8225 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[7].class,
			8226 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[7].unit,
			8227 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[8].class,
			8228 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[8].unit,
			8229 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&RLY[0].class,
			8230 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&RLY[0].unit,
			8231 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&RLY[1].class,
			8232 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&RLY[1].unit,

			8301 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[0].v,
			8302 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[1].v,
			8303 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[2].v,
			8304 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[3].v,
			8305 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[4].v,
			8306 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[5].v,
			8307 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[6].v,
			8308 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[7].v,
			8309 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AO[8].v,

			8401 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[0].v,
			8402 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[1].v,
			8403 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[2].v,
			8404 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[3].v,
			8405 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&AI[4].v,

			8501 | 0x04000000  | 0x000B0000 	  | 0x10000000	 			, (int)&RLY[0].v,
			8502 | 0x04000000  | 0x000B0000 	  | 0x10000000	 			, (int)&RLY[1].v,
			

			8601 | 0x000B0000	  | 0x10000000				, (int)&FC[0].pulse_v,
			8602 | 0x000B0000	  | 0x10000000				, (int)&FC[1].pulse_v,
			8603 | 0x000B0000	  | 0x10000000				, (int)&FC[2].pulse_v,
			
			 
#line 695
			8611 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[0].pulse_class,
			8612 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[0].pulse_unit,
			8613 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[1].pulse_class,
			8614 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[1].pulse_unit,
			8615 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[2].pulse_class,
			8616 | 0x04000000  | 0x000B0000	  | 0x10000000				, (int)&FC[2].pulse_unit,
			
			8650 | 0x04000000  | 0x00010000	  		  | 0x10000000				, (int)&LOG_STATUS,
			
			
			9000 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[0],						 
			9001 		 | 0x00010000	 		  | 0x10000000				, (int)&SPAD[0],						 
			9002 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[1],
			9003 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[2],
			9004 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[3],
			9005 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[4],
			9006 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[5],
			9007 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[6],
			9008 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[7],
			9009 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[8],
			9010 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[9],
			9011 		 | 0x00010000	 		  | 0x10000000				, (int)&SPAD[10],
			9012 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[11],
			9013 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[12],
			9014 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[13],
			9015 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[14],
			9016 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[15],
			9017 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[16],
			9018 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[17],
			9019 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[18],
			9020 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[19],
			9021 		 | 0x00010000	 		  | 0x10000000				, (int)&SPAD[20],
			9022 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[21],
			9023 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[22],
			9024 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[23],
			9025 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[24],
			9026 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[25],
			9027 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[26],
			9028 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[27],
			9029 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[28],
			9030 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[29],
			9031 		 | 0x00010000	 		  | 0x10000000				, (int)&SPAD[30],
			9032 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[31],
			9033 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[32],
			9034 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[33],
			9035 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[34],
			9036 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[35],
			9037 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[36],
			9038 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[37],
			9039 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[38],
			9040 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[39],
			9041 		 | 0x00010000	 		  | 0x10000000				, (int)&SPAD[40],
			9042 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[41],
			9043 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[42],
			9044 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[43],
			9045 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[44],
			9046 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[45],
			9047 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[46],
			9048 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[47],
			9049 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[48],
			9050 		 | 0x00010000			  | 0x10000000				, (int)&SPAD[49],

			9101 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[0],
			9102 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[1],
			9103 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[2],
			9104 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[3],
			9105 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[4],
			9106 | 0x04000000  | 0x00010000    		  | 0x10000000	 			, (int)&REG_USER_DEFINE[5],
			9107 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[6],
			9108 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[7],
			9109 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[8],
			9110 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[9],
			9111 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[10],
			9112 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[11],
			9113 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[12],
			9114 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[13],
			9115 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[14],
			9116 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[15],
			9117 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[16],
			9118 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[17],
			9119 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[18],
			9120 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&REG_USER_DEFINE[19],

			9200 		 | 0x000B0000 	  | 0x10000000	 			, (int)&VAR_SELECT_DVIN,
			9201 		 | 0x000B0000 	  | 0x10000000	 			, (int)&VAR_SELECT_DV,
			9202 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[0],
			9203 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[1],
			9204 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[2],
			9205 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[3],
			9206 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[4],
			9207 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[5],
			9208 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[6],
			9209 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[7],
			9210 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[8],
			9211 		 | 0x00010000      	 						, (int)&STR_VAR_DESC[9],
			9212 | 0x80000000 | 0x00010000									, (int)&DUMMY,
			9213 		 | 0x00010000      	 						, (int)&STR_VAR_UNIT[0],
			9214 		 | 0x00010000      	 						, (int)&STR_VAR_UNIT[1],
			9215 		 | 0x00010000      	 						, (int)&STR_VAR_UNIT[2],
			9216 		 | 0x00010000      	 						, (int)&STR_VAR_UNIT[3],
			9217 | 0x80000000 | 0x00010000									, (int)&DUMMY,

			9301 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[0],
			9302 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[1],
			9303 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[2],
			9304 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[3],
			9305 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[4],
			9306 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[5],
			9307 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[6],
			9308 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[7],
			9309 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[8],
			9310 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[9],
			9311 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[10],
			9312 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[11],
			9313 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[12],
			9314 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[13],
			9315 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[14],
			9316 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[15],
			9317 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[16],
			9318 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[17],
			9319 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[18],
			9320 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[19],
			9321 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[20],
			9322 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[21],
			9323 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[22],
			9324 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[23],
			9325 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[24],
			9326 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[25],
			9327 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[26],
			9328 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[27],
			9329 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[28],
			9330 | 0x04000000  | 0x00010000    	 	  | 0x10000000	 			, (int)&LOG_VAR_SEL[29],

			 
			 
			 
			9401 | 0x04000000  | 0x000E0000	  | 0x10000000				, (int)&REG_WATERCUT,
			9402 | 0x04000000  | 0x00090000 | 0x10000000				, (int)&REG_WATERCUT,
			9403 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[0],
			9404 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[1],
			9405 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[2],
			9406 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[3],
			9407 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[4],
			9408 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[5],
			9409 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[6],
			9410 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[7],
			9411 | 0x04000000  | 0x00010000		 	  | 0x10000000				, (int)&STR_Analyzer_PV[8],
			9412 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_PV[9],
			9413 | 0x80000000 | 0x00010000  		  | 0x10000000				, (int)&DUMMY, 							 
			9414 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_UNIT[0],
			9415 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_UNIT[1],
			9416 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_UNIT[2],
			9417 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&STR_Analyzer_UNIT[3],
			9418 | 0x80000000 | 0x00010000  		  | 0x10000000				, (int)&DUMMY, 							 
			 

			9801 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[0].AUTHORIZATION_CODE1,
			9802 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[0].AUTHORIZATION_CODE2,
			9803 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[0].AUTHORIZATION_CODE3,
			9804 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[0].AUTHORIZATION_CODE4,
			9805 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[1].AUTHORIZATION_CODE1,
			9806 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[1].AUTHORIZATION_CODE2,
			9807 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[1].AUTHORIZATION_CODE3,
			9808 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[1].AUTHORIZATION_CODE4,
			9809 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[2].AUTHORIZATION_CODE1,
			9810 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[2].AUTHORIZATION_CODE2,
			9811 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[2].AUTHORIZATION_CODE3,
			9812 | 0x04000000  | 0x00010000      	  | 0x10000000				, (int)&FC[2].AUTHORIZATION_CODE4,

			9901 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[0],						 
			9902 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[1],
			9903 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[2],						 
			9904 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[3],
			9905 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[4],						 
			9906 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[5],
			9907 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[6],
			9908 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[7],
			9909 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[8],						 
			9910 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[9],
			9911 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[10],
			9912 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[11],
			9913 		 | 0x000B0000 	  | 0x40000000  	 	  		, (int)&IDEC_SA[12],					 

			9951 		 | 0x00010000      	 						, (int)&CRC_BOOT,
			9952 		 | 0x00010000      	 						, (int)&CRC_FAST,
			9953 		 | 0x00010000      	 						, (int)&CRC_APP,
			9954 		 | 0x00010000      	 						, (int)&CRC_INIT,

			   
			9980 | 0x04000000  | 0x00010000 		  | 0x80000000 | 0x10000000 		, (int)&REG_PW[0],
			9981 | 0x04000000  | 0x00010000 		  | 0x80000000 | 0x20000000   	, (int)&REG_PW[1],
			9982 | 0x04000000  | 0x00010000 		  | 0x80000000 | 0x10000000   	, (int)&REG_PW[2],						 
			9983 | 0x04000000  | 0x00010000 		  | 0x80000000 | 0x10000000   	, (int)&REG_PW[3],						 
			9984 | 0x04000000  | 0x00010000 		  | 0x80000000 | 0x10000000 		, (int)&REG_PW[4],      				 

			   
			9990 		 | 0x00030000		 	  | 0x80000000 | 0x40000000		, (int)&REG_LOCK[0],					 
			9991 		 | 0x00030000		 	  | 0x80000000 | 0x40000000		, (int)&REG_LOCK[1],
			9992 		 | 0x00030000		 	  | 0x80000000 | 0x40000000		, (int)&REG_LOCK[2],					 
			9993 		 | 0x00030000		 	  | 0x80000000 | 0x40000000		, (int)&REG_LOCK[3],					 
			9994 		 | 0x00030000		 	  | 0x80000000 | 0x40000000		, (int)&REG_LOCK[4],    				 

			   0														, 0};									 


#pragma DATA_SECTION(mb_fc,"TABLES")
const int mb_fc[][2] = {
			   1 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].watercut,
			   3 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].T,
			   5 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].pressure,
			   7 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].density,
			   9 		 | 0x00020000									, (int)&FC[0].density_PDI_corrected,
			  11 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].salinity,
			  13 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&FC[0].Meter_Factor,
			  15 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&FC[0].Shrinkage,
			  17 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].density_oil,
			  19 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].density_oilST,
			  21 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].density_water,
			  23 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].density_waterST,
			  25 		 | 0x00020000									, (int)&FC[0].VCFo,
			  27 		 | 0x00020000									, (int)&FC[0].VCFw,
			  29 		 | 0x00020000									, (int)&FC[0].net_watercut,
			  31 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].FLOW_TOTAL,
			  33 		 | 0x00030000									, (int)&FC[0].FLOW_OIL,
			  35 		 | 0x00030000									, (int)&FC[0].FLOW_WATER,
			  37 		 | 0x00030000									, (int)&FC[0].GROSS_TOTAL,
			  39 		 | 0x00030000									, (int)&FC[0].GROSS_OIL,
			  41 		 | 0x00030000									, (int)&FC[0].GROSS_WATER,
			  43 		 | 0x00010000	   								, (int)&FC[0].PULSE_COUNTER,
			  45 		 | 0x00030000									, (int)&FC[0].PULSE_FLOW,
			  47 		 | 0x00030000									, (int)&FC[0].PULSE_TOTAL,
			  49 		 | 0x00030000									, (int)&FC[0].NET_FLOW_TOTAL,
			  51 		 | 0x00030000									, (int)&FC[0].NET_FLOW_OIL,
			  53 		 | 0x00030000									, (int)&FC[0].NET_FLOW_WATER,
			  55 		 | 0x00030000									, (int)&FC[0].NET_TOTAL,
			  57 		 | 0x00030000									, (int)&FC[0].NET_OIL,
			  59 		 | 0x00030000									, (int)&FC[0].NET_WATER,
			  61 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&FC[0].a,
			  63 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&FC[0].density_adj,
			  65 		 | 0x00010000									, (int)&FC[0].PULSE_DELTA,
			  67 		 | 0x00020000									, (int)&FC[0].Dadj,
			  69 		 | 0x00020000									, (int)&FC[0].net_watercut_mass,
			  71 | 0x04000000  | 0x00020000		 	  | 0x20000000 				, (int)&FC[0].PULSE_FACTOR,
			  73 		 | 0x00030000			  | 0x10000000				, (int)&FC[0].AVG_GROSS_TOTAL,
			  75 		 | 0x00030000									, (int)&FC[0].AVG_NET_TOTAL,

			 201 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].watercut,
			 203 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].T,
			 205 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].pressure,
			 207 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].density,
			 209 		 | 0x00020000									, (int)&FC[1].density_PDI_corrected,
			 211 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].salinity,
			 213 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&FC[1].Meter_Factor,
			 215 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&FC[1].Shrinkage,
			 217 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].density_oil,
			 219 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].density_oilST,
			 221 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].density_water,
			 223 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].density_waterST,
			 225 		 | 0x00020000									, (int)&FC[1].VCFo,
			 227 		 | 0x00020000									, (int)&FC[1].VCFw,
			 229 		 | 0x00020000									, (int)&FC[1].net_watercut,
			 231 		 | 0x00030000			  | 0x10000000				, (int)&FC[1].FLOW_TOTAL,
			 233 		 | 0x00030000									, (int)&FC[1].FLOW_OIL,
			 235 		 | 0x00030000									, (int)&FC[1].FLOW_WATER,
			 237 		 | 0x00030000									, (int)&FC[1].GROSS_TOTAL,
			 239 		 | 0x00030000									, (int)&FC[1].GROSS_OIL,
			 241 		 | 0x00030000									, (int)&FC[1].GROSS_WATER,
			 243 		 | 0x00010000	   								, (int)&FC[1].PULSE_COUNTER,
			 245 		 | 0x00030000									, (int)&FC[1].PULSE_FLOW,
			 247 		 | 0x00030000									, (int)&FC[1].PULSE_TOTAL,
			 249 		 | 0x00030000									, (int)&FC[1].NET_FLOW_TOTAL,
			 251 		 | 0x00030000									, (int)&FC[1].NET_FLOW_OIL,
			 253 		 | 0x00030000									, (int)&FC[1].NET_FLOW_WATER,
			 255 		 | 0x00030000									, (int)&FC[1].NET_TOTAL,
			 257 		 | 0x00030000									, (int)&FC[1].NET_OIL,
			 259 		 | 0x00030000									, (int)&FC[1].NET_WATER,
			 261 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&FC[1].a,
			 263 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&FC[1].density_adj,
			 265 		 | 0x00010000									, (int)&FC[1].PULSE_DELTA,
			 267 		 | 0x00020000									, (int)&FC[1].Dadj,
			 269 		 | 0x00020000									, (int)&FC[1].net_watercut_mass,
			 271 | 0x04000000  | 0x00020000		 	  | 0x20000000				, (int)&FC[1].PULSE_FACTOR,

			 
			 401 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].watercut,
			 403 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].T,
			 405 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].pressure,
			 407 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].density,
			 409 		 | 0x00020000									, (int)&FC[2].density_PDI_corrected,
			 411 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].salinity,
			 413 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&FC[2].Meter_Factor,
			 415 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&FC[2].Shrinkage,
			 417 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].density_oil,
			 419 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].density_oilST,
			 421 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].density_water,
			 423 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].density_waterST,
			 425 		 | 0x00020000									, (int)&FC[2].VCFo,
			 427 		 | 0x00020000									, (int)&FC[2].VCFw,
			 429 		 | 0x00020000									, (int)&FC[2].net_watercut,
			 431 		 | 0x00030000			  | 0x10000000				, (int)&FC[2].FLOW_TOTAL,
			 433 		 | 0x00030000									, (int)&FC[2].FLOW_OIL,
			 435 		 | 0x00030000									, (int)&FC[2].FLOW_WATER,
			 437 		 | 0x00030000									, (int)&FC[2].GROSS_TOTAL,
			 439 		 | 0x00030000									, (int)&FC[2].GROSS_OIL,
			 441 		 | 0x00030000									, (int)&FC[2].GROSS_WATER,
			 443 		 | 0x00010000	   								, (int)&FC[2].PULSE_COUNTER,
			 445 		 | 0x00030000									, (int)&FC[2].PULSE_FLOW,
			 447 		 | 0x00030000									, (int)&FC[2].PULSE_TOTAL,
			 449 		 | 0x00030000									, (int)&FC[2].NET_FLOW_TOTAL,
			 451 		 | 0x00030000									, (int)&FC[2].NET_FLOW_OIL,
			 453 		 | 0x00030000									, (int)&FC[2].NET_FLOW_WATER,
			 455 		 | 0x00030000									, (int)&FC[2].NET_TOTAL,
			 457 		 | 0x00030000									, (int)&FC[2].NET_OIL,
			 459 		 | 0x00030000									, (int)&FC[2].NET_WATER,
			 461 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&FC[2].a,
			 463 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&FC[2].density_adj,
			 465 		 | 0x00010000									, (int)&FC[2].PULSE_DELTA,
			 467 		 | 0x00020000									, (int)&FC[2].Dadj,
			 469 		 | 0x00020000									, (int)&FC[2].net_watercut_mass,
			 471 | 0x04000000  | 0x00020000		 	  | 0x20000000 				, (int)&FC[2].PULSE_FACTOR,

			 501 		 | 0x00010000     		 					, (int)&il_LV[0],
			 503 		 | 0x00010000      		 					, (int)&il_LV[1],
			 505 		 | 0x00010000      		 					, (int)&il_LV[2],
			 507 		 | 0x00010000      		 					, (int)&il_LV[3],
			 509 		 | 0x00010000      		 					, (int)&il_LV[4],
			 511 		 | 0x00010000      		 					, (int)&il_LV[5],
			 513 		 | 0x00010000      		 					, (int)&il_LV[6],
			 515 		 | 0x00010000      		 					, (int)&il_LV[7],
			 517 		 | 0x00010000      		 					, (int)&il_LV[8],
			 519 		 | 0x00010000      		 					, (int)&il_LV[9],
			 521 		 | 0x00010000      		 					, (int)&il_LV[10],
			 523 		 | 0x00010000      		 					, (int)&il_LV[11],
			 525 		 | 0x00010000      		 					, (int)&il_LV[12],
			 527 		 | 0x00010000      		 					, (int)&il_LV[13],
			 529 		 | 0x00010000      		 					, (int)&il_LV[14],
			 531 		 | 0x00010000      		 					, (int)&il_LV[15],
			 533 		 | 0x00010000      		 					, (int)&il_LV[16],
			 535 		 | 0x00010000      		 					, (int)&il_LV[17],
			 537 		 | 0x00010000      		 					, (int)&il_LV[18],
			 539 		 | 0x00010000      		 					, (int)&il_LV[19],
			 541 		 | 0x00010000      		 					, (int)&il_LV[20],
			 543 		 | 0x00010000      		 					, (int)&il_LV[21],
			 545 		 | 0x00010000      		 					, (int)&il_LV[22],
			 547 		 | 0x00010000      		 					, (int)&il_LV[23],
			 549 		 | 0x00010000      		 					, (int)&il_LV[24],
			 551 		 | 0x00010000      		 					, (int)&il_LV[25],
			 553 		 | 0x00010000      		 					, (int)&il_LV[26],
			 555 		 | 0x00010000      		 					, (int)&il_LV[27],
			 557 		 | 0x00010000      		 					, (int)&il_LV[28],
			 559 		 | 0x00010000      		 					, (int)&il_LV[29],

			 601 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&CCM_PURGE,
			 603 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&CCM_DURATION,
			 605 		 | 0x00020000									, (int)&CCM_REMAINING,
			 607 		 | 0x00030000									, (int)&CCM_GAS_TOTAL,
			 609 		 | 0x00030000									, (int)&CCM_GAS_FLOW,

			 611 		 | 0x00030000									, (int)&CCM_VESSEL_LEVEL[0],
			 613 		 | 0x00030000									, (int)&CCM_VESSEL_PRESSURE[0],
			 615 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&CCM_SETPOINT_LEVEL[0],
			 617 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&CCM_SETPOINT_PRESSURE[0],
			 619 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&CCM_VESSEL_MAX_LEVEL[0],
                                                                        
			 621 		 | 0x00030000									, (int)&CCM_VESSEL_LEVEL[1],
			 623 		 | 0x00030000									, (int)&CCM_VESSEL_PRESSURE[1],
			 625 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&CCM_SETPOINT_LEVEL[1],
			 627 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&CCM_SETPOINT_PRESSURE[1],
			 629 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&CCM_VESSEL_MAX_LEVEL[1],

			 631 		 | 0x00020000									, (int)&CCM_24_GAS,
			 633 		 | 0x00020000									, (int)&CCM_24_TOTAL,
			 635 		 | 0x00020000									, (int)&CCM_24_OIL,
			 637 		 | 0x00020000									, (int)&CCM_24_WATER,
			 639 		 | 0x00030000									, (int)&CCM_GAS_DENSITY, 

			 641 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&CCM_SETPOINT_PRESSURE_MAX_OVER,
                                                                        
             643 		 | 0x00030000									, (int)&CCM_GAS_TEMPERATURE,  			 
             645 		 | 0x00030000		 	  | 0x10000000				, (int)&CCM_GAS_DENSITY_INPUT,  		 
             647 		 | 0x00030000		 	  	 					, (int)&CCM_GAS_LIVE_DENSITY,			
             
			 701 		 | 0x00020000      		 					, (int)&f_LV[0],
			 703 		 | 0x00020000      		 					, (int)&f_LV[1],
			 705 		 | 0x00020000      		 					, (int)&f_LV[2],
			 707 		 | 0x00020000      		 					, (int)&f_LV[3],
			 709 		 | 0x00020000      		 					, (int)&f_LV[4],
			 711 		 | 0x00020000      		 					, (int)&f_LV[5],
			 713 		 | 0x00020000      		 					, (int)&f_LV[6],
			 715 		 | 0x00020000      		 					, (int)&f_LV[7],
			 717 		 | 0x00020000      		 					, (int)&f_LV[8],
			 719 		 | 0x00020000      		 					, (int)&f_LV[9],
			 721 		 | 0x00020000      		 					, (int)&f_LV[10],
			 723 		 | 0x00020000      		 					, (int)&f_LV[11],
			 725 		 | 0x00020000      		 					, (int)&f_LV[12],
			 727 		 | 0x00020000      		 					, (int)&f_LV[13],
			 729 		 | 0x00020000      		 					, (int)&f_LV[14],
			 731 		 | 0x00020000      		 					, (int)&f_LV[15],
			 733 		 | 0x00020000      		 					, (int)&f_LV[16],
			 735 		 | 0x00020000      		 					, (int)&f_LV[17],
			 737 		 | 0x00020000      		 					, (int)&f_LV[18],
			 739 		 | 0x00020000      		 					, (int)&f_LV[19],
			 741 		 | 0x00020000      		 					, (int)&f_LV[20],
			 743 		 | 0x00020000      		 					, (int)&f_LV[21],
			 745 		 | 0x00020000      		 					, (int)&f_LV[22],
			 747 		 | 0x00020000      		 					, (int)&f_LV[23],
			 749 		 | 0x00020000      		 					, (int)&f_LV[24],
			 751 		 | 0x00020000      		 					, (int)&f_LV[25],
			 753 		 | 0x00020000      		 					, (int)&f_LV[26],
			 755 		 | 0x00020000      		 					, (int)&f_LV[27],
			 757 		 | 0x00020000      		 					, (int)&f_LV[28],
			 759 		 | 0x00020000      		 					, (int)&f_LV[29],

			 
			 801 		 | 0x00020000									, (int)&COR[0].diag,
			 803 		 | 0x00020000									, (int)&COR[0].mfr,
			 805 		 | 0x00020000									, (int)&COR[0].density,
			 807 		 | 0x00020000									, (int)&COR[0].T,
			 809 		 | 0x00020000									, (int)&COR[0].vfr,
			 811 	 	 | 0x00020000									, (int)&COR[0].visc,
			 813 		 | 0x00020000									, (int)&COR[0].press,
			 815 		 | 0x00020000									, (int)&COR[0].mass_total,
			 817 		 | 0x00020000									, (int)&COR[0].volume_total,
			 819 		 | 0x00020000									, (int)&COR[0].mass_inv,
			 821 		 | 0x00020000									, (int)&COR[0].volume_inv,
			 823 		 | 0x00020000									, (int)&COR[0].raw_tube_freq,
			 825 		 | 0x00020000									, (int)&COR[0].left_pickup_value,
			 827 		 | 0x00020000									, (int)&COR[0].right_pickup_value,
			 829 		 | 0x00020000									, (int)&COR[0].drive_gain,
			 831 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[0].damp_flow_rate,
			 833 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[0].damp_density,
			 835 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[0].mfr_cutoff,				 
			 837 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[0].vfr_cutoff,
			 839 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[0].mcf,
             841 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[0].address, 				 
             843 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[0].mass_unit, 				 
             845 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[0].density_cutoff, 			 
           
             
             901 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[4].address, 				 
 
             
			 
			1001 		 | 0x00020000									, (int)&COR[1].diag,
			1003 		 | 0x00020000									, (int)&COR[1].mfr,
			1005 		 | 0x00020000									, (int)&COR[1].density,
			1007 		 | 0x00020000									, (int)&COR[1].T,
			1009 		 | 0x00020000									, (int)&COR[1].vfr,
			1011 		 | 0x00020000									, (int)&COR[1].visc,
			1013 		 | 0x00020000									, (int)&COR[1].press,
			1015 		 | 0x00020000									, (int)&COR[1].mass_total,
			1017 		 | 0x00020000									, (int)&COR[1].volume_total,
			1019 		 | 0x00020000									, (int)&COR[1].mass_inv,
			1021 		 | 0x00020000									, (int)&COR[1].volume_inv,
			1023 		 | 0x00020000									, (int)&COR[1].raw_tube_freq,
			1025 		 | 0x00020000									, (int)&COR[1].left_pickup_value,
			1027 		 | 0x00020000									, (int)&COR[1].right_pickup_value,
			1029 		 | 0x00020000									, (int)&COR[1].drive_gain,
			1031 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[1].damp_flow_rate,
			1033 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[1].damp_density,
			1035 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[1].mfr_cutoff,
			1037 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[1].vfr_cutoff,
			1039 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[1].mcf,  
			1041 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[1].address, 				 
            1043 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[1].mass_unit, 				 
            1045 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[1].density_cutoff, 			 
           

			 
			1201 		 | 0x00020000									, (int)&COR[2].diag,
			1203 		 | 0x00020000									, (int)&COR[2].mfr,
			1205 		 | 0x00020000									, (int)&COR[2].density,
			1207 		 | 0x00020000									, (int)&COR[2].T,
			1209 		 | 0x00020000									, (int)&COR[2].vfr,
			1211 	     | 0x00020000									, (int)&COR[2].visc,
			1213 		 | 0x00020000									, (int)&COR[2].press,
			1215 		 | 0x00020000									, (int)&COR[2].mass_total,
			1217 		 | 0x00020000									, (int)&COR[2].volume_total,
			1219 		 | 0x00020000									, (int)&COR[2].mass_inv,
			1221 		 | 0x00020000									, (int)&COR[2].volume_inv,
			1223 		 | 0x00020000									, (int)&COR[2].raw_tube_freq,
			1225 		 | 0x00020000									, (int)&COR[2].left_pickup_value,
			1227 		 | 0x00020000									, (int)&COR[2].right_pickup_value,
			1229 		 | 0x00020000									, (int)&COR[2].drive_gain,
			1231 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[2].damp_flow_rate,
			1233 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[2].damp_density,
			1235 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[2].mfr_cutoff,
			1237 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[2].vfr_cutoff,
			1239 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[2].mcf,  
			1241 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[2].address, 				 
            1243 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[2].mass_unit, 				 
            1245 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[2].density_cutoff, 			 
           

			 
			1401 		 | 0x00020000									, (int)&COR[3].diag,
			1403 		 | 0x00020000									, (int)&COR[3].mfr,
			1405 		 | 0x00020000									, (int)&COR[3].density,
			1407 		 | 0x00020000									, (int)&COR[3].T,
			1409 		 | 0x00020000									, (int)&COR[3].vfr,
			1411 		 | 0x00020000									, (int)&COR[3].visc,
			1413 		 | 0x00020000									, (int)&COR[3].press,
			1415 		 | 0x00020000									, (int)&COR[3].mass_total,
			1417 		 | 0x00020000									, (int)&COR[3].volume_total,
			1419 		 | 0x00020000									, (int)&COR[3].mass_inv,
			1421 		 | 0x00020000									, (int)&COR[3].volume_inv,
			1423 		 | 0x00020000									, (int)&COR[3].raw_tube_freq,
			1425 		 | 0x00020000									, (int)&COR[3].left_pickup_value,
			1427 		 | 0x00020000									, (int)&COR[3].right_pickup_value,
			1429 		 | 0x00020000									, (int)&COR[3].drive_gain,
			1431 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[3].damp_flow_rate,
			1433 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[3].damp_density,
			1435 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[3].mfr_cutoff,
			1437 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[3].vfr_cutoff,
			1439 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[3].mcf,   
            1441 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[3].address, 				 
            1443 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[3].mass_unit, 				 
            1445 		 | 0x00030000		 	  | 0x10000000				, (int)&COR[3].density_cutoff, 			 
           

			1601 		 | 0x00020000									, (int)&PRESS[0].p_delta,
			1603 		 | 0x00020000									, (int)&PRESS[0].p_static,
			1605 	 	 | 0x00020000									, (int)&PRESS[0].T,
			1607 		 | 0x00020000									, (int)&PRESS[0].diag0,
			1609 		 | 0x00020000									, (int)&PRESS[0].diag1,
			1611 		 | 0x00020000									, (int)&PRESS[0].diag2,

			1621 		 | 0x00020000									, (int)&PRESS[1].p_delta,
			1623 		 | 0x00020000									, (int)&PRESS[1].p_static,
			1625 		 | 0x00020000									, (int)&PRESS[1].T,
			1627 		 | 0x00020000									, (int)&PRESS[1].diag0,
			1629 		 | 0x00020000									, (int)&PRESS[1].diag1,
			1631 		 | 0x00020000									, (int)&PRESS[1].diag2,

			1641 		 | 0x00020000									, (int)&PRESS[2].p_delta,
			1643 		 | 0x00020000									, (int)&PRESS[2].p_static,
			1645 		 | 0x00020000									, (int)&PRESS[2].T,
			1647 		 | 0x00020000									, (int)&PRESS[2].diag0,
			1649 		 | 0x00020000									, (int)&PRESS[2].diag1,
			1651 		 | 0x00020000									, (int)&PRESS[2].diag2,

			1661 		 | 0x00020000									, (int)&TMPTRANS[0].T,
			1663 		 | 0x00020000									, (int)&TMPTRANS[0].etc0,
			1665 		 | 0x00020000									, (int)&TMPTRANS[0].etc1,
			1667 		 | 0x00020000									, (int)&TMPTRANS[0].etc2,
			1669 		 | 0x00020000									, (int)&TMPTRANS[0].etc3,
			1671 		 | 0x00020000									, (int)&TMPTRANS[0].etc4,
                                                            		
			1681 		 | 0x00020000									, (int)&TMPTRANS[1].T,
			1683 		 | 0x00020000									, (int)&TMPTRANS[1].etc0,
			1685 		 | 0x00020000									, (int)&TMPTRANS[1].etc1,
			1687 		 | 0x00020000									, (int)&TMPTRANS[1].etc2,
			1689 		 | 0x00020000									, (int)&TMPTRANS[1].etc3,
			1691 		 | 0x00020000									, (int)&TMPTRANS[1].etc4,
                                                            
			1701 		 | 0x00020000									, (int)&TMPTRANS[2].T,
			1703 		 | 0x00020000									, (int)&TMPTRANS[2].etc0,
			1705 		 | 0x00020000									, (int)&TMPTRANS[2].etc1,
			1707 		 | 0x00020000									, (int)&TMPTRANS[2].etc2,
			1709 		 | 0x00020000									, (int)&TMPTRANS[2].etc3,
			1711 		 | 0x00020000									, (int)&TMPTRANS[2].etc4,

			1721 		 | 0x00020000									, (int)&ALYESKA.WATERCUT,
			1723 		 | 0x00020000									, (int)&ALYESKA.FLOW_RATE,
			1725 		 | 0x00020000									, (int)&ALYESKA.TEMPERATURE,
			1727 		 | 0x00020000									, (int)&ALYESKA.DENSITY,
			1729 		 | 0x00020000									, (int)&ALYESKA.VISCOSITY,
			1731 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.minWATERCUT,
			1733 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.maxWATERCUT,
			1735 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.minFLOW_RATE,
			1737 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.maxFLOW_RATE,
			1739 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.minTEMPERATURE,
			1741 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.maxTEMPERATURE,
			1743 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.minDENSITY,
			1745 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.maxDENSITY,
			1747 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.minVISCOSITY,
			1749 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.maxVISCOSITY,
			1751 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.minWATERCUTz,
			1753 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&ALYESKA.maxWATERCUTz,
			1755 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&ALYESKA.DESTINATION_ADDRESS,

			1801 		 | 0x00010000									, (int)&CCM_Records.log_n,
			1803 		 | 0x00010000									, (int)&CCM_Records.log_n_max_per_sector,
			1805 		 | 0x00010000									, (int)&CCM_Records.log_current_sector,
			1807 		 | 0x00010000									, (int)&CCM_Records.log_n_sectors,
			1809 		 | 0x00010000									, (int)&CCM_Records.log_absolute_index,
			1811 		 | 0x000B0000	  | 0x10000000				, (int)&CCM_Record_view,
			1813 		 | 0x00010000									, (int)&CCM_Record.Start_HH,
			1815 		 | 0x00010000									, (int)&CCM_Record.Start_MM,
			1817 		 | 0x00010000									, (int)&CCM_Record.Start_SS,
			1819 		 | 0x00010000									, (int)&CCM_Record.Start_MONTH,
			1821 		 | 0x00010000									, (int)&CCM_Record.Start_DAY,
			1823 		 | 0x00010000									, (int)&CCM_Record.Start_YEAR,
			1825 		 | 0x00010000									, (int)&CCM_Record.Stop_HH,
			1827 		 | 0x00010000									, (int)&CCM_Record.Stop_MM,
			1829 		 | 0x00010000									, (int)&CCM_Record.Stop_SS,
			1831 		 | 0x00010000									, (int)&CCM_Record.Stop_MONTH,
			1833 		 | 0x00010000									, (int)&CCM_Record.Stop_DAY,
			1835 		 | 0x00010000									, (int)&CCM_Record.Stop_YEAR,
			1837 		 | 0x00020000									, (int)&CCM_Record.stream,
			1839 		 | 0x00020000									, (int)&CCM_Record.elapsed_s,
			1841 		 | 0x00020000									, (int)&CCM_Record.duration,
			1843 		 | 0x00020000									, (int)&CCM_Record.purge,
			1845 		 | 0x00020000									, (int)&CCM_Record.gross_gas,
			1847 		 | 0x00020000									, (int)&CCM_Record.gross_oil,
			1849 	     | 0x00020000									, (int)&CCM_Record.gross_water,
			1851 		 | 0x00020000									, (int)&CCM_Record.gross_total,
			1853 		 | 0x00020000									, (int)&CCM_Record.gas24,
			1855 		 | 0x00020000									, (int)&CCM_Record.oil24,
			1857 		 | 0x00020000									, (int)&CCM_Record.water24,
			1859 		 | 0x00020000									, (int)&CCM_Record.total24,
			1861 		 | 0x00020000									, (int)&CCM_Record.watercut,
			
			1865		 | 0x00030000		 	  | 0x10000000				,(int)&Hsalt_Min_WC,
			

			1901 | 0x04000000  | 0x00030000		 	  | 0x10000000				, (int)&HSALT.flow_threshold,  			
			1903 | 0x00020000			 	  	  | 0x10000000				, (int)&compatibility_dummy,            
			1905 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.S0,
			1907 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.S1,
			1909 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.S2,
			1911 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.S3,
			1913 | 0x04000000  | 0x00020000									, (int)&HSALT.Fmin,
			
			1917 | 0x04000000  | 0x00020000									, (int)&HSALT.Dmin,
			1919 | 0x04000000  | 0x00020000									, (int)&HSALT.Dmax,
			1921 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SP0A,
			1923 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SP1A,
			1925 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SP2A,
			1927 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SP3A,
			1929 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SPLOA,
			1931 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SPHIA,
			1933 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SP0B,
			1935 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SP1B,
			1937 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SP2B,
			1939 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SP3B,
			1941 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SPLOB,
			1943 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.SPHIB,
			1945 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.FBHI0,
			1947 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.FBHI1,
			1949 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.FBHI2,
			1951 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.FBHI3,
			1953 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.FBLO0,
			1955 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.FBLO1,
			1957 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.FBLO2,
			1959 | 0x04000000  | 0x00020000		 	  | 0x10000000				, (int)&HSALT.FBLO3,

			   0														, 0				  };					 
								


#pragma DATA_SECTION(mb_flt,"TABLES")
const int mb_flt[][2]=		{
			   1 | 0x00010000												, (int)&SN_PIPE,
			   3 | 0x00010000	 			 | 0x10000000						, (int)&DIAGNOSTICS[0],
			   5 | 0x00010000	 			 | 0x10000000						, (int)&DIAGNOSTICS[1],
			   7 | 0x00010000				 | 0x10000000 						, (int)&DIAGNOSTICS_ERROR_CODE,
			   9 | 0x00010000				 | 0x10000000 						, (int)&DIAGNOSTICS_MSG_CODE,
			  11 | 0x00030000												, (int)&REG_WATERCUT,
			  13 | 0x00030000												, (int)&REG_TEMPERATURE_EXTERNAL,
			  15 | 0x00030000												, (int)&REG_TEMPERATURE_USER,
			  17 | 0x00030000												, (int)&REG_EMULSION_PHASE,
			  19 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_STREAM_SELECT,
			  21 |0x04000000| 0x00030000		 | 0x40000000							, (int)&REG_SALINITY,
			  23 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_OIL_ADJ,
			  25 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_WATER_ADJ,
			  27 |0x04000000| 0x00040000	 | 0x10000000 						, (int)&REG_TEMPERATURE_EXTERNAL,
			  29 | 0x00020000												, (int)&REG_WATERCUT_RAW,
			  31 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&REG_OIL_INDEX,
			  33 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&REG_WATER_INDEX,
			  35 |0x04000000| 0x00030000		 | 0x10000000						, (int)&OIL_P0,
			  37 |0x04000000| 0x00030000		 | 0x10000000						, (int)&OIL_P1,
			  39 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&REG_CAL_OIL,
			  41 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&REG_CAL_WATER,
			  43 | 0x00020000												, (int)&VAR_INT_SCALE,
			  45 | 0x00020000												, (int)&VAR_LONGINT_SCALE,
			  47 | 0x00020000												, (int)&REG_PV_AVG_24hr,
			  49 | 0x00020000												, (int)&REG_PV_AVG_5min,
			  51 | 0x00020000												, (int)&REG_PV_AVG_1sec,
			  53 | 0x000C0000  		 							 	, (int)((unsigned int*)0x470000),
			  55 |0x04000000| 0x00010000	 	 | 0x10000000						, (int)&DIAGNOSTICS_MASK[0],
			  57 |0x04000000| 0x00010000	 	 | 0x10000000						, (int)&DIAGNOSTICS_MASK[1],
			  59 |0x04000000| 0x00030000		 | 0x10000000						, (int)&Oil_Phase_Maximum,
			  61 |0x04000000| 0x00030000		 | 0x10000000						, (int)&Water_Phase_Minimum, 
			  
			  63 | 0x00030000												, (int)&REG_TEMPERATURE_AVG,   		 
              65 |0x04000000| 0x00040000	 | 0x10000000 						, (int)&REG_TEMPERATURE_AVG,		 
              
              67 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_PHASE_HOLD_CYCLES, 		 
              69 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_WC_NUM_SAMPLES,    		 
			  
			  73 | 0x04000000  | 0x00030000		 | 0x10000000						, (int)&REG_ALFAT_LOG_PERIOD, 
              
              
              75 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_DELTA_TEMP,   			 
              
              
              
              
              
              
              85 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_FREQ_VARIANCE_RATIO,   	 

              87 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_BULK_LEVEL,   			 
              
              91 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_WATERCUT_DENSITY, 		 
                          
			 101 | 0x00020000												, (int)&FREQ_O,
			 103 | 0x00020000												, (int)&IP_O,
			 105 | 0x00020000												, (int)&RP_O,
			 107 | 0x00020000												, (int)&IP_RP_O,        
			 109 | 0x00020000												, (int)&DB_IP_RP_O,

			 111 | 0x00020000												, (int)&FREQ_W,
			 113 | 0x00020000												, (int)&IP_W,
			 115 | 0x00020000												, (int)&RP_W,
			 117 | 0x00020000												, (int)&IP_RP_W,
			 119 | 0x00020000												, (int)&DB_IP_RP_W,

			 201 |0x04000000| 0x00020000	 	 | 0x10000000 						, (int)&OIL_CALC_CUTOFF,
			 203 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&OIL_CALC_MAX[0],
			 205 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&OIL_CALC_MAX[1],

			 
			 
			 
			 247 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_D1,   
			 249 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_D2,   
			 251 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_C0,				 
			 253 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_FA1,
			 255 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_FA2,
			 257 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_FB1,
			 259 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_FB2,
			 261 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_RPA1,
			 263 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_RPA2,
			 265 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_RPB1,
			 267 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_RPB2,
			 269 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_IPA1,
			 271 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_IPA2,
			 273 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_IPB1,
			 275 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_IPB2,
			 277 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_T1,
			 279 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&COEFF_T2,

			 281 | 0x00030000												, (int)&REG_WATERCUT,			 
			 283 | 0x00020000												, (int)&REG_WATERCUT_RAW,
			 285 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&REG_WATERCUT.dampening,
			 287 |0x04000000| 0x00060000   	 | 0x10000000						, (int)&REG_WATERCUT,
			 289 |0x04000000| 0x00050000   	 | 0x10000000						, (int)&REG_WATERCUT,
			 291 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_WATERCUT_ALARM_LO,
			 293 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_WATERCUT_ALARM_HI,
			 295 |0x04000000| 0x00010000      	 | 0x10000000						, (int)&OSC_OIL_CALC,			 
			 297 |0x04000000| 0x00010000      	 | 0x10000000						, (int)&OSC_WATER_CALC,			 
			 299 |0x04000000| 0x00020000      	 | 0x10000000						, (int)&REG_WATERCUT.scale,
			 

			 301 | 0x00030000												, (int)&REG_TEMPERATURE_EXTERNAL,
			 303 |0x04000000| 0x00020000		 | 0x20000000						, (int)&RTD_CURRENT,
			 305 |0x04000000| 0x00020000		 | 0x20000000						, (int)&RTD_GAIN,
			 307 |0x04000000|	0x00020000		 | 0x20000000						, (int)&TEMPERATURE_TRIM_T0,
			 309 |0x04000000|	0x00020000		 | 0x20000000						, (int)&TEMPERATURE_TRIM_T1,
			 311 |0x04000000| 0x00020000		 | 0x20000000						, (int)&RTD_CAL_LO_OHM,
			 313 |0x04000000| 0x00020000		 | 0x20000000						, (int)&RTD_CAL_LO_V,
			 315 |0x04000000| 0x00020000		 | 0x20000000						, (int)&RTD_CAL_HI_OHM,
			 317 |0x04000000| 0x00020000		 | 0x20000000						, (int)&RTD_CAL_HI_V,
			 319 | 0x00020000												, (int)&RTD_R,
			              
			 351 | 0x04000000  | 0x00030000		| 0x10000000						, (int)&bubble_new_length,
			 353 | 0x04000000  | 0x00030000		| 0x10000000						, (int)&pattern_new_length,
			 
			 
			 355 | 0x04000000  | 0x00030000		| 0x10000000						, (int)&boxcar_expire_val_minutes, 	
			 357 | 0x04000000  | 0x00030000		| 0x10000000						, (int)&boxcar_expire_val, 			


			 401 | 0x00030000												, (int)&REG_TEMPERATURE_EXTERNAL,
			 403 | 0x00030000												, (int)&REG_ADC[10],
			 405 | 0x00030000												, (int)&REG_FREQ[0],
			 407 |0x04000000| 0x00020000		 | 0x20000000						, (int)&REG_FREQ[0].dampening,
			 409 | 0x00030000												, (int)&REG_VINC[0],
			 411 | 0x00030000												, (int)&REG_VREF[0],
			 413 | 0x00030000												, (int)&REG_VTUNE[0],
			 415 |0x04000000| 0x00080000	 | 0x20000000						, (int)&REG_FREQ[0],
			 417 |0x04000000| 0x00070000	 | 0x20000000						, (int)&REG_FREQ[0],
			 419 | 0x00030000												, (int)&REG_FREQ[1],
			 421 |0x04000000| 0x00020000		 | 0x20000000						, (int)&REG_FREQ[1].dampening,
			 423 | 0x00030000												, (int)&REG_VINC[1],
			 425 | 0x00030000												, (int)&REG_VREF[1],
			 427 | 0x00030000												, (int)&REG_VTUNE[1],
			 429 |0x04000000| 0x00080000	 | 0x20000000						, (int)&REG_FREQ[1],
			 431 |0x04000000| 0x00070000	 | 0x20000000						, (int)&REG_FREQ[1],
			 433 | 0x00030000												, (int)&REG_FREQ[2],
			 435 |0x04000000| 0x00020000		 | 0x20000000						, (int)&REG_FREQ[2].dampening,
			 437 | 0x00030000												, (int)&REG_VINC[2],
			 439 | 0x00030000												, (int)&REG_VREF[2],
			 441 | 0x00030000												, (int)&REG_VTUNE[2],
			 443 |0x04000000| 0x00080000	 | 0x20000000						, (int)&REG_FREQ[2],
			 445 |0x04000000| 0x00070000	 | 0x20000000						, (int)&REG_FREQ[2],
			 447 | 0x00030000												, (int)&REG_FREQ[3],
			 449 |0x04000000| 0x00020000		 | 0x20000000						, (int)&REG_FREQ[3].dampening,
			 451 | 0x00030000												, (int)&REG_VINC[3],
			 453 | 0x00030000												, (int)&REG_VREF[3],
			 455 | 0x00030000												, (int)&REG_VTUNE[3],
			 457 |0x04000000| 0x00080000	 | 0x20000000						, (int)&REG_FREQ[3],
			 459 |0x04000000| 0x00070000	 | 0x20000000						, (int)&REG_FREQ[3],

			 501 |0x04000000| 0x00010000    	 | 0x20000000						, (int)&ENABLED[0],
			 503 |0x04000000| 0x00010000    	 | 0x20000000						, (int)&OSC[0],
			 505 |0x04000000| 0x00030000    	 | 0x20000000						, (int)&REG_VTUNE_SET[0],
			 507 |0x04000000| 0x00020000		 | 0x20000000						, (int)&EXP_FREQ[0],

			 509 |0x04000000| 0x00010000    	 | 0x20000000						, (int)&ENABLED[1],
			 511 |0x04000000| 0x00010000    	 | 0x20000000						, (int)&OSC[1],
			 513 |0x04000000| 0x00030000    	 | 0x20000000						, (int)&REG_VTUNE_SET[1],
			 515 |0x04000000| 0x00020000		 | 0x20000000						, (int)&EXP_FREQ[1],

			 517 |0x04000000| 0x00010000    	 | 0x20000000						, (int)&ENABLED[2],
			 519 |0x04000000| 0x00010000    	 | 0x20000000						, (int)&OSC[2],
			 521 |0x04000000| 0x00030000      	 | 0x20000000						, (int)&REG_VTUNE_SET[2],
			 523 |0x04000000| 0x00020000	     | 0x20000000						, (int)&EXP_FREQ[2],

			 525 |0x04000000| 0x00010000      	 | 0x20000000						, (int)&ENABLED[3],
			 527 |0x04000000| 0x00010000    	 | 0x20000000						, (int)&OSC[3],
			 529 |0x04000000| 0x00030000      	 | 0x20000000						, (int)&REG_VTUNE_SET[3],
			 531 |0x04000000| 0x00020000	     | 0x20000000						, (int)&EXP_FREQ[3],

			 597 |0x04000000| 0x00020000	     | 0x20000000						, (int)&PRESCALE,
			 599 |0x04000000| 0x00020000	     | 0x20000000						, (int)&GATE_TIME,

			 601 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Oil.Watercut,
			 603 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Oil.Temperature,
			 605 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Oil.Frequency_Oil,
			 607 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Oil.Frequency_Water,
			 609 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Oil.RefPower_Oil,
			 611 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Oil.RefPower_Water,
			 613 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Oil.Salinity,
			 615 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Oil.Dadj,

			 651 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Water.Watercut,
			 653 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Water.Temperature,
			 655 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Water.Frequency_Oil,
			 657 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Water.Frequency_Water,
			 659 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Water.RefPower_Oil,
			 661 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Water.RefPower_Water,
			 663 |0x04000000| 0x00020000   		 | 0x20000000						, (int)&Cap_Water.Salinity,

			 701 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&REG_WATERCUT.dampening,
			 703 |0x04000000| 0x00060000   	 | 0x20000000						, (int)&REG_WATERCUT,
			 705 |0x04000000| 0x00050000   	 | 0x20000000						, (int)&REG_WATERCUT,
			 707 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_WATERCUT_ALARM_LO,
			 709 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_WATERCUT_ALARM_HI,

			 711 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&REG_ADC[2].dampening,
			 713 |0x04000000| 0x00060000   	 | 0x10000000  			, (int)&REG_TEMPERATURE_EXTERNAL,
			 715 |0x04000000| 0x00050000   	 | 0x10000000  			, (int)&REG_TEMPERATURE_EXTERNAL,
			 717 |0x04000000| 0x00080000	 | 0x10000000						, (int)&REG_TEMPERATURE_EXTERNAL,
			 719 |0x04000000| 0x00070000	 | 0x10000000						, (int)&REG_TEMPERATURE_EXTERNAL,
			 721 |0x04000000| 0x00030000 		 | 0x10000000 						, (int)&REG_TEMPERATURE_USER_ADJUST,

			 723 |0x04000000| 0x00060000   	 | 0x20000000						, (int)&REG_SALINITY,
			 725 |0x04000000| 0x00050000   	 | 0x20000000						, (int)&REG_SALINITY,

			 727 |0x04000000| 0x00030000		 | 0x10000000						, (int)&Plot_Limit_Oil_Freq_Low,
			 729 |0x04000000| 0x00030000		 | 0x10000000						, (int)&Plot_Limit_Oil_Freq_High,
			 731 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_FREQ_OIL_LO,
			 733 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_FREQ_OIL_HI,

			 735 |0x04000000| 0x00030000		 | 0x10000000						, (int)&Plot_Limit_Water_Freq_Low,
			 737 |0x04000000| 0x00030000		 | 0x10000000						, (int)&Plot_Limit_Water_Freq_High,
			 739 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_FREQ_WATER_LO,
			 741 |0x04000000| 0x00030000		 | 0x10000000						, (int)&REG_FREQ_WATER_HI, 
			 
			 
			 743 | 0x00030000		 		 | 0x10000000						, (int)&EXTENDED_FW_VERSION_ENABLE,  

			 751 |0x04000000| 0x00030000		 | 0x20000000						, (int)&REG_osc_settle_short,
			 753 |0x04000000| 0x00030000		 | 0x20000000						, (int)&REG_osc_settle_long,

			 
			 755 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Water_Freq_Low,
			 757 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Water_Freq_High,
			 
			 759 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Oil_Freq_Low,
			 761 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Oil_Freq_High,
			 
			 763 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Temp_Low,
			 765 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Temp_High,
			 
 			 767 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Watercut_Low,
			 769 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Watercut_High,
			 
 			 771 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Oil_RP_Low,	
			 773 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Oil_RP_High,	

 			 775 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Water_RP_Low,	
			 777 | 0x04000000  | 0x00030000		  	  | 0x40000000				, (int)&Plot_Limit_Water_RP_High,	
			  
			 
			 
			 
			 801 | 0x00030000				 | 0x20000000						, (int)&REG_DAC[9],
			 803 | 0x00030000				 | 0x20000000						, (int)&REG_DAC[10],
			 805 | 0x00030000				 | 0x20000000						, (int)&REG_DAC[11],
			 807 | 0x00030000									  			, (int)&REG_ADC[0],
			 809 | 0x00030000									  			, (int)&REG_ADC[1],
			 811 | 0x00030000									  			, (int)&REG_ADC[2],
			 813 | 0x00030000									  			, (int)&REG_ADC[10],
			 815 | 0x00030000									  			, (int)&REG_ADC[4],
			 817 | 0x00030000									  			, (int)&REG_ADC[3],

			 819 | 0x00030000    			 | 0x10000000  						, (int)&REG_DAC[0],
			 821 | 0x00030000    			 | 0x10000000  						, (int)&REG_DAC[1],
			 823 | 0x00030000    			 | 0x10000000  						, (int)&REG_DAC[2],
			 825 | 0x00030000    			 | 0x10000000  						, (int)&REG_DAC[3],
			 827 | 0x00030000    			 | 0x10000000  						, (int)&REG_DAC[4],
			 829 | 0x00030000    			 | 0x10000000  						, (int)&REG_DAC[5],
			 831 | 0x00030000 		   	 | 0x10000000  						, (int)&REG_DAC[6],
			 833 | 0x00030000 		   	 | 0x10000000  						, (int)&REG_DAC[7],
			 835 | 0x00030000 		   	 | 0x10000000  						, (int)&REG_DAC[8],

			 841 | 0x00030000									  			, (int)&REG_ADC[5],
			 843 | 0x00030000									  			, (int)&REG_ADC[6],
			 845 | 0x00030000									  			, (int)&REG_ADC[7],
			 847 | 0x00030000									  			, (int)&REG_ADC[8],
			 849 | 0x00030000									  			, (int)&REG_ADC[9],
			 851 | 0x00030000									  			, (int)&REG_ADC[11],

			 871 |0x04000000| 0x00010000    	 | 0x10000000	 					, (int)&RLY[0].MODE,
			 873 |0x04000000| 0x00010000    	 | 0x10000000	 					, (int)&RLY[0].STATUS_MASK,
			 875 |0x04000000| 0x000B0000 	 | 0x10000000	 					, (int)&RLY[0].v,
			 877 |0x04000000| 0x00020000    	 | 0x10000000	 					, (int)&RLY[0].setpoint,

			 881 |0x04000000| 0x00010000    	 | 0x10000000	 					, (int)&RLY[1].MODE,
			 883 |0x04000000| 0x00010000    	 | 0x10000000	 					, (int)&RLY[1].STATUS_MASK,
			 885 |0x04000000| 0x000B0000 	 | 0x10000000	 					, (int)&RLY[1].v,
			 887 |0x04000000| 0x00020000    	 | 0x10000000	 					, (int)&RLY[1].setpoint,

			 889 |0x04000000| 0x00020000    	 | 0x10000000	 					, (int)&DensityCFT_D1,
			 891 |0x04000000| 0x00020000    	 | 0x10000000	 					, (int)&DensityCFD_D1, 
			 893 |0x04000000| 0x00020000    	 | 0x10000000	 					, (int)&DensityCF_D0,
			 895 |0x04000000| 0x00030000    	 | 0x10000000	 					, (int)&Density_D1,
			 897 |0x04000000| 0x00030000    	 | 0x10000000	 					, (int)&Density_D0,
			 899 |0x04000000| 0x00030000    	 | 0x10000000	 					, (int)&Density_Cal,

			 901 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_0[10],
			 903 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_1[10],
			 905 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_0[5],
			 907 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_1[5],
			 909 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_0[6],
			 911 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_1[6],
			 913 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_0[7],
			 915 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_1[7],
			 917 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_0[8],
			 919 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_1[8],

			 
			 921 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_0[0],
			 923 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_1[0],
			 925 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_0[1],
			 927 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_1[1],
			 929 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_0[2],
			 931 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_1[2],
			 933 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_0[3],
			 935 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_1[3],
			 937 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_0[4],
			 939 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_1[4],
			 941 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_0[5],
			 943 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_1[5],
			 945 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_0[0],
			 947 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_1[0],
			 949 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_0[9],
			 951 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_1[9],
			 953 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_0[10],
			 955 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_1[10],
			 957 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_0[11],
			 959 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&DAC_TRIM_F_1[11],

			 
			 961 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&ADC_TRIM_F_0[6],
			 963 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&ADC_TRIM_F_1[6],
			 965 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&ADC_TRIM_F_0[7],
			 967 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&ADC_TRIM_F_1[7],
			 969 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&ADC_TRIM_F_0[8],
			 971 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&ADC_TRIM_F_1[8],
			 973 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&ADC_TRIM_F_0[9],
			 975 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&ADC_TRIM_F_1[9],
			 977 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&DAC_TRIM_F_0[1],
			 979 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&DAC_TRIM_F_1[1],
			 981 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&DAC_TRIM_F_0[2],
			 983 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&DAC_TRIM_F_1[2],
			 985 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&DAC_TRIM_F_0[3],
			 987 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&DAC_TRIM_F_1[3],
			 989 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&DAC_TRIM_F_0[4],
			 991 |0x04000000| 0x00020000		 | 0x10000000 					 	, (int)&DAC_TRIM_F_1[4],
			 993 |0x04000000| 0x00010000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_0[11],
			 995 |0x04000000| 0x00010000		 | 0x20000000 					 	, (int)&ADC_TRIM_F_1[11],

			 999 |0x04000000| 0x00020000		 | 0x20000000 					 	, (int)&FREQ_FACTOR,

			1001 | 0x00030000		 										, (int)&AI[0].CURRENT,
			1003 | 0x00030000												, (int)&AI[0].CURRENT_PERCENT_OF_RANGE,
			1005 | 0x00020000												, (int)&AI[0].val,
			1007 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AI[0].v,
			1009 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AI[0].CURRENT.dampening,
			1011 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[0].TRIM_MIN,
			1013 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[0].TRIM_MAX,
			1015 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[0].TRIM_MIN_C,
			1017 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[0].TRIM_MAX_C,
			1019 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[0].LRV,
			1021 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[0].URV,

			1031 | 0x00030000		 										, (int)&AI[1].CURRENT,
			1033 | 0x00030000												, (int)&AI[1].CURRENT_PERCENT_OF_RANGE,
			1035 | 0x00020000												, (int)&AI[1].val,
			1037 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AI[1].v,
			1039 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AI[1].CURRENT.dampening,
			1041 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[1].TRIM_MIN,
			1043 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[1].TRIM_MAX,
			1045 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[1].TRIM_MIN_C,
			1047 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[1].TRIM_MAX_C,
			1049 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[1].LRV,
			1051 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[1].URV,

			1061 | 0x00030000				 								, (int)&AI[2].CURRENT,
			1063 | 0x00030000												, (int)&AI[2].CURRENT_PERCENT_OF_RANGE,
			1065 | 0x00020000												, (int)&AI[2].val,
			1067 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AI[2].v,
			1069 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AI[2].CURRENT.dampening,
			1071 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[2].TRIM_MIN,
			1073 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[2].TRIM_MAX,
			1075 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[2].TRIM_MIN_C,
			1077 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[2].TRIM_MAX_C,
			1079 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[2].LRV,
			1081 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[2].URV,

			1091 | 0x00030000		 										, (int)&AI[3].CURRENT,
			1093 | 0x00030000												, (int)&AI[3].CURRENT_PERCENT_OF_RANGE,
			1095 | 0x00020000												, (int)&AI[3].val,
			1097 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AI[3].v,
			1099 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AI[3].CURRENT.dampening,
			1101 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[3].TRIM_MIN,
			1103 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[3].TRIM_MAX,
			1105 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[3].TRIM_MIN_C,
			1107 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[3].TRIM_MAX_C,
			1109 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[3].LRV,
			1111 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[3].URV,

			1121 | 0x00030000												, (int)&AI[4].CURRENT,
			1123 | 0x00030000												, (int)&AI[4].CURRENT_PERCENT_OF_RANGE,
			1125 | 0x00020000												, (int)&AI[4].val,
			1127 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AI[4].v,
			1129 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AI[4].CURRENT.dampening,
			1131 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[4].TRIM_MIN,
			1133 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AI[4].TRIM_MAX,
			1135 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[4].TRIM_MIN_C,
			1137 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AI[4].TRIM_MAX_C,
			1139 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[4].LRV,
			1141 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AI[4].URV,

			1201 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[0].CURRENT,
			1203 | 0x00030000												, (int)&AO[0].CURRENT_PERCENT_OF_RANGE,
			1205 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AO[0].v,
			1207 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[0].CURRENT.dampening,
			1209 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[0].P,
			1211 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[0].I,
			1213 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[0].D,
			1215 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[0].MANUAL_PERCENT,
			1217 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[0].PID_setpoint,
			1219 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[0].TRIM_MIN,
			1221 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[0].TRIM_MAX,
			1223 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[0].TRIM_MIN_C,
			1225 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[0].TRIM_MAX_C,
			1227 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[0].LRV,
			1229 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[0].URV,

			 
			1231 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[1].CURRENT,
			1233 | 0x00030000												, (int)&AO[1].CURRENT_PERCENT_OF_RANGE,
			1235 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AO[1].v,
			1237 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[1].CURRENT.dampening,
			1239 |0x04000000| 0x00030000		 | 0x10000000 						, (int)&AO[1].P,      
			1241 |0x04000000| 0x00030000		 | 0x10000000 						, (int)&AO[1].I,      
			1243 |0x04000000| 0x00030000		 | 0x10000000 						, (int)&AO[1].D,
			1245 |0x04000000| 0x00020000		 | 0x40000000 						, (int)&AO[1].MANUAL_PERCENT,	 
			1247 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[1].PID_setpoint,
			1249 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[1].TRIM_MIN,
			1251 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[1].TRIM_MAX,
			1253 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[1].TRIM_MIN_C,
			1255 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[1].TRIM_MAX_C,
			1257 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[1].LRV,
			1259 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[1].URV,

			 
			1261 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[2].CURRENT,
			1263 | 0x00030000												, (int)&AO[2].CURRENT_PERCENT_OF_RANGE,
			1265 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AO[2].v,
			1267 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[2].CURRENT.dampening,
			1269 |0x04000000| 0x00030000		 | 0x10000000 						, (int)&AO[2].P,   
			1271 |0x04000000| 0x00030000		 | 0x10000000 						, (int)&AO[2].I,   
			1273 |0x04000000| 0x00030000		 | 0x10000000 						, (int)&AO[2].D,
			1275 |0x04000000| 0x00020000		 | 0x40000000 						, (int)&AO[2].MANUAL_PERCENT,   
			1277 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[2].PID_setpoint,
			1279 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[2].TRIM_MIN,
			1281 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[2].TRIM_MAX,
			1283 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[2].TRIM_MIN_C,
			1285 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[2].TRIM_MAX_C,
			1287 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[2].LRV,
			1289 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[2].URV,

			 
			1291 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[3].CURRENT,
			1293 | 0x00030000												, (int)&AO[3].CURRENT_PERCENT_OF_RANGE,
			1295 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AO[3].v,
			1297 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[3].CURRENT.dampening,
			1299 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[3].P,
			1301 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[3].I,
			1303 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[3].D,
			1305 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[3].MANUAL_PERCENT,
			1307 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[3].PID_setpoint,
			1309 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[3].TRIM_MIN,
			1311 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[3].TRIM_MAX,
			1313 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[3].TRIM_MIN_C,
			1315 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[3].TRIM_MAX_C,
			1317 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[3].LRV,
			1319 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[3].URV,

			1321 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[4].CURRENT,
			1323 | 0x00030000												, (int)&AO[4].CURRENT_PERCENT_OF_RANGE,
			1325 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AO[4].v,
			1327 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[4].CURRENT.dampening,
			1329 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[4].P,
			1331 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[4].I,
			1333 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[4].D,
			1335 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[4].MANUAL_PERCENT,
			1337 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[4].PID_setpoint,
			1339 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[4].TRIM_MIN,
			1341 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[4].TRIM_MAX,
			1343 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[4].TRIM_MIN_C,
			1345 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[4].TRIM_MAX_C,
			1347 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[4].LRV,
			1349 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[4].URV,

			1351 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[5].CURRENT,
			1353 | 0x00030000												, (int)&AO[5].CURRENT_PERCENT_OF_RANGE,
			1355 |0x04000000| 0x00010000		 | 0x10000000						, (int)&AO[5].v,
			1357 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[5].CURRENT.dampening,
			1359 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[5].P,
			1361 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[5].I,
			1363 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[5].D,
			1365 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[5].MANUAL_PERCENT,
			1367 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[5].PID_setpoint,
			1369 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[5].TRIM_MIN,
			1371 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[5].TRIM_MAX,
			1373 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[5].TRIM_MIN_C,
			1375 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[5].TRIM_MAX_C,
			1377 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[5].LRV,
			1379 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[5].URV,

			1381 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[6].CURRENT,
			1383 | 0x00030000												, (int)&AO[6].CURRENT_PERCENT_OF_RANGE,
			1385 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AO[6].v,
			1387 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[6].CURRENT.dampening,
			1389 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[6].P,
			1391 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[6].I,
			1393 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[6].D,
			1395 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[6].MANUAL_PERCENT,
			1397 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[6].PID_setpoint,
			1399 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[6].TRIM_MIN,
			1401 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[6].TRIM_MAX,
			1403 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[6].TRIM_MIN_C,
			1405 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[6].TRIM_MAX_C,
			1407 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[6].LRV,
			1409 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[6].URV,

			1411 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[7].CURRENT,
			1413 | 0x00030000												, (int)&AO[7].CURRENT_PERCENT_OF_RANGE,
			1415 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AO[7].v,
			1417 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[7].CURRENT.dampening,
			1419 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[7].P,
			1421 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[7].I,
			1423 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[7].D,
			1425 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[7].MANUAL_PERCENT,
			1427 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[7].PID_setpoint,
			1429 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[7].TRIM_MIN,
			1431 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[7].TRIM_MAX,
			1433 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[7].TRIM_MIN_C,
			1435 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[7].TRIM_MAX_C,
			1437 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[7].LRV,
			1439 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[7].URV,

			1441 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[8].CURRENT,
			1443 | 0x00030000												, (int)&AO[8].CURRENT_PERCENT_OF_RANGE,
			1445 |0x04000000| 0x000B0000	 | 0x10000000						, (int)&AO[8].v,
			1447 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[8].CURRENT.dampening,
			1449 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[8].P,
			1451 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[8].I,
			1453 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[8].D,
			1455 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[8].MANUAL_PERCENT,
			1457 |0x04000000| 0x00020000		 | 0x10000000 						, (int)&AO[8].PID_setpoint,
			1459 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[8].TRIM_MIN,
			1461 |0x04000000| 0x00030000		 | 0x10000000						, (int)&AO[8].TRIM_MAX,
			1463 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[8].TRIM_MIN_C,
			1465 |0x04000000| 0x00020000		 | 0x10000000						, (int)&AO[8].TRIM_MAX_C,
			1467 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[8].LRV,
			1469 |0x04000000| 0x00030000   		 | 0x10000000						, (int)&AO[8].URV,

			 
			1601 | 0x00020000				 | 0x10000000 						, (int)&SIM_TEMPERATURE_EXTERNAL,
			1603 | 0x00020000				 | 0x10000000 						, (int)&SIM_FREQ[0],
			1605 | 0x00020000				 | 0x10000000 						, (int)&SIM_VINC[0],
			1607 | 0x00020000				 | 0x10000000 						, (int)&SIM_VREF[0],
			1609 | 0x00020000				 | 0x10000000 						, (int)&SIM_VTUNE[0],
			1611 | 0x00020000				 | 0x10000000 						, (int)&SIM_FREQ[1],
			1613 | 0x00020000				 | 0x10000000 						, (int)&SIM_VINC[1],
			1615 | 0x00020000				 | 0x10000000 						, (int)&SIM_VREF[1],
			1617 | 0x00020000				 | 0x10000000 						, (int)&SIM_VTUNE[1],
			1619 | 0x00020000				 | 0x10000000 						, (int)&SIM_FREQ[2],
			1621 | 0x00020000				 | 0x10000000 						, (int)&SIM_VINC[2],
			1623 | 0x00020000				 | 0x10000000 						, (int)&SIM_VREF[2],
			1625 | 0x00020000				 | 0x10000000 						, (int)&SIM_VTUNE[2],
			1627 | 0x00020000				 | 0x10000000 						, (int)&SIM_FREQ[3],
			1629 | 0x00020000				 | 0x10000000 						, (int)&SIM_VINC[3],
			1631 | 0x00020000				 | 0x10000000 						, (int)&SIM_VREF[3],
			1633 | 0x00020000				 | 0x10000000 						, (int)&SIM_VTUNE[3],

			1701 | 0x00010000												, (int)&PORT[0].WDOG_COUNT,
			1703 | 0x00010000												, (int)&PORT[0].ERROR_COUNT,
			1705 | 0x00010000												, (int)&PORT[0].INV_CMD_COUNT,
			1707 | 0x00010000												, (int)&PORT[0].INV_PKT_COUNT,
			1709 | 0x00010000												, (int)&PORT[0].SUCCESS,
			1711 | 0x00010000												, (int)&PORT[0].NUM_RETRIES,

			1713 | 0x00010000												, (int)&PORT[1].WDOG_COUNT,
			1715 | 0x00010000												, (int)&PORT[1].ERROR_COUNT,
			1717 | 0x00010000												, (int)&PORT[1].INV_CMD_COUNT,
			1719 | 0x00010000												, (int)&PORT[1].INV_PKT_COUNT,
			1721 | 0x00010000												, (int)&PORT[1].SUCCESS,
			1723 | 0x00010000												, (int)&PORT[1].NUM_RETRIES,

			1725 | 0x00010000												, (int)&PORT[2].WDOG_COUNT,
			1727 | 0x00010000												, (int)&PORT[2].ERROR_COUNT,
			1729 | 0x00010000												, (int)&PORT[2].INV_CMD_COUNT,
			1731 | 0x00010000												, (int)&PORT[2].INV_PKT_COUNT,
			1733 | 0x00010000												, (int)&PORT[2].SUCCESS,
			1735 | 0x00010000												, (int)&PORT[2].NUM_RETRIES,

			1737 | 0x00010000												, (int)&PORT[3].WDOG_COUNT,
			1739 | 0x00010000												, (int)&PORT[3].ERROR_COUNT,
			1741 | 0x00010000												, (int)&PORT[3].INV_CMD_COUNT,
			1743 | 0x00010000												, (int)&PORT[3].INV_PKT_COUNT,
			1745 | 0x00010000												, (int)&PORT[3].SUCCESS,
			1747 | 0x00010000												, (int)&PORT[3].NUM_RETRIES,

			1749 | 0x00010000												, (int)&PORT[4].WDOG_COUNT,
			1751 | 0x00010000												, (int)&PORT[4].ERROR_COUNT,
			1753 | 0x00010000												, (int)&PORT[4].INV_CMD_COUNT,
			1755 | 0x00010000												, (int)&PORT[4].INV_PKT_COUNT,
			1757 | 0x00010000												, (int)&PORT[4].SUCCESS,

			1759 | 0x00010000												, (int)&PORT[6].WDOG_COUNT,
			1761 | 0x00010000												, (int)&PORT[6].ERROR_COUNT,
			1763 | 0x00010000												, (int)&PORT[6].INV_CMD_COUNT,
			1765 | 0x00010000												, (int)&PORT[6].INV_PKT_COUNT,
			1767 | 0x00010000												, (int)&PORT[6].SUCCESS,

			1769 | 0x00010000												, (int)&PORT[7].WDOG_COUNT,
			1771 | 0x00010000												, (int)&PORT[7].ERROR_COUNT,
			1773 | 0x00010000												, (int)&PORT[7].INV_CMD_COUNT,
			1775 | 0x00010000												, (int)&PORT[7].INV_PKT_COUNT,
			1777 | 0x00010000												, (int)&PORT[7].SUCCESS,

			1801 | 0x00030000    			 | 0x10000000  						, (int)&VARUSER[0],
			1803 | 0x00030000    			 | 0x10000000  						, (int)&VARUSER[1],
			1805 | 0x00030000    			 | 0x10000000  						, (int)&VARUSER[2],
			1807 | 0x00030000    			 | 0x10000000  						, (int)&VARUSER[3],
			1809 | 0x00030000   		 	 | 0x10000000  						, (int)&VARUSER[4],

			1851 	  | 0x00010000										, (int)&SYS.log_n,
			1853 	  | 0x00010000										, (int)&SYS.log_n_max_per_sector,
			1855 	  | 0x00010000										, (int)&SYS.log_current_sector,
			1857 	  | 0x00010000										, (int)&SYS.log_n_sectors,
			1859 |0x04000000| 0x00030000    	 | 0x10000000  		 				, (int)&SYS_log_sample_period,
			1861 	  | 0x00010000										, (int)&SYS.log_absolute_index,
			1863 |0x04000000| 0x00030000    	 | 0x10000000  		 				, (int)&USER_log_sample_period,

			1891 |0x04000000| 0x00010000      	 | 0x10000000						, (int)&NaN_val_flt,
			1893 |0x04000000| 0x00020000      	 | 0x10000000						, (int)&NaN_val,

			1901 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[0],    
			1903 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[1],
			1905 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[2],
			1907 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[3],
			1909 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[4],
			1911 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[5],
			1913 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[6],
			1915 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[7],
			1917 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[8],
			1919 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[9],
			1921 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[10],
			1923 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[11],
			1925 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[12],
			1927 | 0x000D0000   	 | 0x10000000	 						, (int)&REG_USER_DEFINE[13],
			1929 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[14],
			1931 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[15],
			1933 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[16],
			1935 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[17],
			1937 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[18],
			1939 | 0x000D0000    	 | 0x10000000	 						, (int)&REG_USER_DEFINE[19],

			1941 | 0x00010000												, (int)&SYS.log_start,
			1943 | 0x00010000												, (int)&CCM_Records.log_start,
			1945 | 0x00010000												, (int)&FC_Periodic.log_start,

			1951 | 0x00010000												, (int)&ESN_MFGR[0],
			1953 | 0x00010000												, (int)&ESN_MFGR[1],
			1955 | 0x00010000												, (int)&ESN_MFGR[2],
			1957 | 0x00010000												, (int)&ESN_MFGR[3],
			1959 | 0x00010000												, (int)&ESN_USER[0],
			1961 | 0x00010000												, (int)&ESN_USER[1],
			1963 | 0x00010000												, (int)&ESN_USER[2],
			1965 | 0x00010000												, (int)&ESN_USER[3],
			1967 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&SN_PIPE,
			1969 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&POWER.SNUM,
			1971 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&uP.SNUM,
			1973 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&COMM.SNUM,
			1975 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&ANALYZER.SNUM,
			1977 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&ANALOGIO.SNUM,
			1979 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&MOTHERBOARD.SNUM,
			1981 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&SN_DC_BOARD,
			1983 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&SN_OSC,
			1985 | 0x04000000  | 0x00010000 | 0x10000000							, (int)&FINAL_ASSY,
			1987 | 0x04000000  | 0x00010000 | 0x20000000							, (int)&DISPLAY.SNUM,  
			                                                                                       
			1991 | 0x04000000  | 0x00030000 | 0x10000000	 						, (int)&Density_D3,      
			1993 | 0x04000000  | 0x00030000 | 0x10000000	 						, (int)&Density_D2,      
			   0 , 0					 
			};


#pragma DATA_SECTION(mb_coil,"TABLES")
const int mb_coil[][2]=		{
			   1 | 0x00010000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			   2 | 0x00020000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			   3 | 0x00030000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			   4 | 0x00040000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			   5 | 0x00050000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			   6 | 0x00060000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			   7 | 0x00070000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			   8 | 0x00080000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			   9 | 0x00090000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			  10 | 0x000A0000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			  11 | 0x000B0000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			  12 | 0x000C0000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			  13 | 0x000D0000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			  14 | 0x000E0000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			  15 | 0x000F0000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			  16 | 0x00100000 | 0x10000000								, (int)&DIAGNOSTICS[0],
			  17 | 0x00010000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  18 | 0x00020000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  19 | 0x00030000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  20 | 0x00040000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  21 | 0x00050000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  22 | 0x00060000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  23 | 0x00070000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  24 | 0x00080000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  25 | 0x00090000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  26 | 0x000A0000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  27 | 0x000B0000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  28 | 0x000C0000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  29 | 0x000D0000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  30 | 0x000E0000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  31 | 0x000F0000 | 0x10000000								, (int)&DIAGNOSTICS[1],
			  32 | 0x00100000 | 0x10000000								, (int)&DIAGNOSTICS[1],
              
			  33 | 0x10000000													, (int)&DIO_ALARM,
			  34 | 0x10000000													, (int)&DIO_ERROR,
              
			  35 | 0x00010000 | 0x20000000								, (int)&DEMO,
              
			  36 | 0x00010000 | 0x10000000								, (int)&CHANGE,							 
              
			  37 | 0x00010000										, (int)&RTC_PRESENT,
              
			  38 | 0x00010000										, (int)&LCD_PRESENT,
              
			  39 | 0x00070000 										, (int)&REG_WATERCUT.STAT,				 
			  40 | 0x00080000 										, (int)&REG_WATERCUT.STAT,				 
              
			  41 | 0x00070000 										, (int)&REG_TEMPERATURE_EXTERNAL.STAT,	 
			  42 | 0x00080000 										, (int)&REG_TEMPERATURE_EXTERNAL.STAT,	 
              
			  43 | 0x00070000 										, (int)&REG_ADC[10].STAT,			 
			  44 | 0x00080000 										, (int)&REG_ADC[10].STAT,			 
              
			  45 | 0x00010000 										, (int)&DIPSWITCH[0], 					 
			  46 | 0x00010000 										, (int)&DIPSWITCH[1], 					 
              
              
              
              
              
			   
			   
			  50 | 0x10000000													, (int)&DIO_LOCK[0],					 
			  51 | 0x20000000		  											, (int)&DIO_LOCK[1],
			  52 | 0x10000000		  											, (int)&DIO_LOCK[2],					 
			  53 | 0x10000000		  											, (int)&DIO_LOCK[3],					 
              54 | 0x10000000		  											, (int)&DIO_LOCK[4],    				 
              
			  55 | 0x10000000		  											, (int)&DIO_BEEP,
              
              
			  
			  
			  
			  
			  60 | 0x04000000	 | 0x00010000 | 0x10000000	 					, (int)&RLY[0].ON,     					 
			  61 | 0x04000000	 | 0x00010000 | 0x10000000 						, (int)&RLY[1].ON,     					 
              
              
              
			  71 | 0x04000000  | 0x20000000	 										, (int)&RTD_CAL,						 
			  72 | 0x04000000  | 0x10000000	 										, (int)&DIO_PORT_DEFAULTS,
              
              
              
			  80 | 0x04000000  | 0x00010000 | 0x20000000						, (int)&AMETEK,
              
              
                                                                                           
              91 | 0x04000000  | 0x00010000 | 0x10000000                      , (int)&CAP_WATER_STOP,      			 
              92 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&CAP_OIL_STOP,        			 
			  
			  
			  
			 101 | 0x04000000	 | 0x10000000	 										, (int)&DIO_TEMP_C,
			 102 | 0x10000000													, (int)&DIO_CAP_OIL,
			 103 | 0x10000000													, (int)&DIO_CAP_WATER,
			 104 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&DIO_PORT_IGNORE_DATA_EXCEPTION,
			 105 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&DIO_Autosave_on_pair_boundary,
			 106 | 0x04000000  | 0x10000000											, (int)&DIO_HART_5,
			 107 | 0x04000000  | 0x10000000											, (int)&LOOP_ENABLED,
			 108 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&IRDA_ENABLE,
			 109 | 0x04000000  | 0x00020000 | 0x10000000			 			, (int)&IRDA_ENABLE, 					 
			 110 | 0x04000000  | 0x00010000 | 0x20000000	 					, (int)&EXTUNE,
			 111 | 0x04000000	 | 0x20000000		  									, (int)&DIO_RESEARCH_MODE,
			 112 | 0x04000000  | 0x00010000 | 0x20000000						, (int)&DIO_AUX_FREQ_MODE,
			 113 | 0x04000000	 | 0x20000000											, (int)&DIO_HEATER_DISABLE,
			 114 | 0x04000000  | 0x00010000 | 0x40000000	 					, (int)&DIO_IDEC_ENABLE,
			 115 | 0x04000000  | 0x10000000			 								, (int)&DIO_BUILT_IN_TEST_ENABLE,
			 116 | 0x40000000								 						, (int)&DIO_BUILT_IN_TEST,
			 117 | 0x80000000 | 0x40000000												, (int)&DIO_SYSTEM_RESET,
			 118 | 0x80000000 | 0x10000000	 										, (int)&DIO_SAVE_USER_CONFIG,
			 119 | 0x80000000 | 0x10000000  											, (int)&DIO_RESTORE_USER_CONFIG,
			 120 | 0x80000000 | 0x40000000												, (int)&DIO_RESET_FACTORY_DEFAULTS,
			 121 | 0x80000000 | 0x20000000											, (int)&DIO_SAVE_FACTORY_CONFIG,
			 122 | 0x80000000 | 0x20000000											, (int)&DIO_RESTORE_BASICS,
			 123 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&SYS_LOG_ENABLED,				 
			 124 		 | 0x00010000 | 0x10000000						, (int)&SYS.LOG_ERASE,
			 125 | 0x04000000  | 0x00020000 | 0x10000000						, (int)&SYS_LOG_ENABLED,				 
			 126 | 0x04000000  | 0x00030000 | 0x10000000						, (int)&SYS_LOG_ENABLED,				 
			 127 | 0x80000000 | 0x40000000												, (int)&DIO_SYSTEM_RESTART,
			 128 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&USER_LOG_ENABLED,
			 129 		 | 0x00010000 | 0x10000000						, (int)&CCM_Records.LOG_ERASE,
			 130 		 | 0x00010000 | 0x10000000						, (int)&FC_Periodic.LOG_ERASE,
			 131 | 0x04000000  | 0x00010000 | 0x20000000						, (int)&DIO_PV_PERCMASS,
			 132 		 | 0x00010000								, (int)&USER_LOG_EVENT,					 
			 133 		 | 0x00010000								, (int)&SYS_LOG_EVENT,					 
             
             
             
			 141 | 0x10000000													, (int)&FC[0].Z,
			 142 | 0x10000000													, (int)&FC[1].Z,
			 143 | 0x10000000													, (int)&FC[2].Z,
             
             
             
			 151 | 0x00010000										, (int)&FC[0].PULSE_STAT,
			 152 | 0x00010000										, (int)&FC[1].PULSE_STAT,
			 153 | 0x00010000										, (int)&FC[2].PULSE_STAT,
			 154 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].enable_NET,
			 155 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].enable_GROSS,
			 156 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].enable_FLOW,
			 157 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].enable_DENSITY,
			 158 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].enable_PULSE,
			 159 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].enable_NET,
			 160 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].enable_GROSS,
			 161 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].enable_FLOW,
			 162 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].enable_DENSITY,
			 163 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].enable_PULSE,
			 164 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].enable_NET,
			 165 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].enable_GROSS,
			 166 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].enable_FLOW,
			 167 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].enable_DENSITY,
			 168 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].enable_PULSE,
             
             
             
			 201 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[0].MANUAL,
			 202 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[0].REVERSE,
			 203 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[0].ALARM_SELECT,
             
              
			 204 | 0x04000000  | 0x00010000 | 0x40000000	 					, (int)&AO[1].MANUAL,					 
			 205 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[1].REVERSE,
			 206 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[1].ALARM_SELECT,
             
              
			 207 | 0x04000000  | 0x00010000 | 0x40000000		 				, (int)&AO[2].MANUAL,     				 
			 208 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[2].REVERSE,
			 209 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[2].ALARM_SELECT,
             
              
			 210 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[3].MANUAL,
			 211 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[3].REVERSE,
			 212 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[3].ALARM_SELECT,
             
			 213 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[4].MANUAL,
			 214 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[4].REVERSE,
			 215 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[4].ALARM_SELECT,
			 
			 216 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[5].MANUAL,
			 217 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[5].REVERSE,
			 218 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[5].ALARM_SELECT,
			 
			 219 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[6].MANUAL,
			 220 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[6].REVERSE,
			 221 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[6].ALARM_SELECT,
			 
			 222 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[7].MANUAL,
			 223 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[7].REVERSE,
			 224 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[7].ALARM_SELECT,
			 
			 225 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[8].MANUAL,
			 226 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[8].REVERSE,
			 227 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[8].ALARM_SELECT,
             
             
             
             
			 
			 231 		 | 0x00010000								, (int)&AO[0].present,
			 232 		 | 0x00010000								, (int)&AO[1].present,
			 233 		 | 0x00010000								, (int)&AO[2].present,
			 234 		 | 0x00010000								, (int)&AO[3].present,
			 235 		 | 0x00010000								, (int)&AO[4].present,
			 236 		 | 0x00010000								, (int)&AO[5].present,
			 237 		 | 0x00010000								, (int)&AO[6].present,
			 238 		 | 0x00010000								, (int)&AO[7].present,
			 239 		 | 0x00010000								, (int)&AO[8].present,
             
             
             
			 241 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[0].PID_enable_failsafe,
			 242 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[1].PID_enable_failsafe,
			 243 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[2].PID_enable_failsafe,
			 244 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[3].PID_enable_failsafe,
			 245 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[4].PID_enable_failsafe,
			 246 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[5].PID_enable_failsafe,
			 247 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[6].PID_enable_failsafe,
			 248 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[7].PID_enable_failsafe,
			 249 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&AO[8].PID_enable_failsafe,
             
             
             
			 251 		 | 0x00010000								, (int)&AO[0].PID_fail,
			 252 		 | 0x00010000								, (int)&AO[1].PID_fail,
			 253 		 | 0x00010000								, (int)&AO[2].PID_fail,
			 254 		 | 0x00010000								, (int)&AO[3].PID_fail,
			 255 		 | 0x00010000								, (int)&AO[4].PID_fail,
			 256 		 | 0x00010000								, (int)&AO[5].PID_fail,
			 257 		 | 0x00010000								, (int)&AO[6].PID_fail,
			 258 		 | 0x00010000								, (int)&AO[7].PID_fail,
			 259 		 | 0x00010000								, (int)&AO[8].PID_fail,
             
             
             
			 261 		 | 0x00010000								, (int)&AI[0].present,
			 262 		 | 0x00010000								, (int)&AI[1].present,
			 263 		 | 0x00010000								, (int)&AI[2].present,
			 264 		 | 0x00010000								, (int)&AI[3].present,
			 265 		 | 0x00010000								, (int)&AI[4].present,
             
			 267		| 0x10000000											, (int)&ALFAT_USB_DETECTED, 
			 268		| 0x10000000											, (int)&ALFAT_USB_MOUNTED, 			
			 
             
			 
			 301 | 0x40000000														, (int)&DIO_CLEAR_COUNTERS,         	 
			 302 | 0x04000000	 | 0x10000000											, (int)&DIO_TOTALIZER_CONTROL,
			 303 | 0x40000000														, (int)&DIO_CCM_START,					 
			 304 | 0x04000000	 | 0x10000000											, (int)&DIO_CCM_PURGE_TIME,
			 305															, (int)&DIO_CCM_PURGE_STAT,
			 306 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&CCM_2LIQ,
			 307 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&CCM_2GAS,
			 308 | 0x04000000  | 0x00010000 | 0x20000000	 					, (int)&USE_COR0_TEMP,
			 309 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&CCM_CORRECT_LIQ_HEIGHT,
			 310 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&CCM_CORRECT_GAS_TO_STP,
			 311 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&CCM_GAS_MASS,
			 312 | 0x04000000  | 0x00010000 | 0x10000000	 					, (int)&EXT_ANALOG_OUT,
			 313 | 0x10000000													, (int)&DIO_MANUAL_RESET,
			 314 | 0x10000000													, (int)&DIO_TIME_RESET,             
             
             
			 320 		 | 0x00010000 | 0x10000000						, (int)&FC[0].use_totalizer,
			 321 		 | 0x00010000 | 0x10000000						, (int)&FC[1].use_totalizer,
			 322 		 | 0x00010000 | 0x10000000						, (int)&FC[2].use_totalizer,
			 
			 401 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].USE_PDI_TEMP,
			 402 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].USE_PDI_TEMP,
			 403 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].USE_PDI_TEMP,
			 404 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].USE_PDI_SALINITY,
			 405 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].USE_PDI_SALINITY,
			 406 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].USE_PDI_SALINITY,
			 407 | 0x04000000  | 0x10000000										, (int)&USE_PDI_WATERCUT,
			 408 | 0x04000000  | 0x10000000												, (int)&DUMMY_COIL, 
			 409 | 0x04000000  | 0x10000000												, (int)&DUMMY_COIL, 
			 410 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].MAN_TEMP,
			 411 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].MAN_SALINITY,
			 412 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].MAN_WATERCUT,
			 413 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].MAN_DENSITY,
			 414 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].MAN_PRESSURE,
			 415 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[0].MAN_FLOW,
			 416 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].MAN_TEMP,
			 417 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].MAN_SALINITY,
			 418 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].MAN_WATERCUT,
			 419 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].MAN_DENSITY,
			 420 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].MAN_PRESSURE,
			 421 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[1].MAN_FLOW,
			 422 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].MAN_TEMP,
			 423 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].MAN_SALINITY,
			 424 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].MAN_WATERCUT,
			 425 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].MAN_DENSITY,
			 426 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].MAN_PRESSURE,
			 427 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&FC[2].MAN_FLOW,
			 428 | 0x04000000  | 0x10000000										, (int)&CALC_WC_DENSITY,
			 429 | 0x04000000  | 0x10000000												, (int)&DUMMY_COIL, 
			 430 | 0x04000000  | 0x10000000												, (int)&DUMMY_COIL, 
             
             
             
			 451 | 0x10000000													, (int)&COR[0].Z,
			 452 | 0x10000000													, (int)&COR[1].Z,
			 453 | 0x10000000													, (int)&COR[2].Z,
			 454 | 0x10000000													, (int)&COR[3].Z,
             
             
             
			 500 | 0x40000000  | 0x000D0000								, (int)&DIO_MSVE,						 
			 501 | 0x40000000  | 0x000E0000								, (int)&DIO_MSVE,
			 502 | 0x40000000  | 0x000F0000								, (int)&DIO_MSVE,
			 503 | 0x40000000  | 0x00100000								, (int)&DIO_MSVE,
             
             
             
			 510 | 0x40000000  | 0x00010000								, (int)&DIO_MSVE,						 
			 511 | 0x40000000  | 0x00020000								, (int)&DIO_MSVE,
			 512 | 0x40000000  | 0x00030000								, (int)&DIO_MSVE,
			 513 | 0x40000000  | 0x00040000								, (int)&DIO_MSVE,
             
             
             
			 601 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&ALYESKA.ENABLED,
             
             
             
			 701 | 0x04000000	 | 0x10000000											, (int)&HSALT.ENABLED,
			 
			 703 		 | 0x00010000								, (int)&HSALT.CHANGED,
			 704 		 | 0x00010000								, (int)&HSALT.PURGING,
			 705 		 | 0x00010000								, (int)&HSALT.TEST_IN_PROGRESS, 
			 706 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&RESET_AT_PURGE,    				
             
             
             
             
             
             
			 711 | 0x04000000	 | 0x10000000											, (int)&DIO_uP_GET,
			 712 | 0x04000000	 | 0x10000000											, (int)&DIO_COMM_GET,
			 713 | 0x04000000	 | 0x10000000											, (int)&DIO_ANALYZER_GET,
			 714 | 0x04000000	 | 0x10000000											, (int)&DIO_POWER_GET,
			 715 | 0x04000000	 | 0x10000000											, (int)&DIO_ANALOGIO_GET,
			 716 | 0x04000000	 | 0x10000000											, (int)&DIO_DISPLAY_GET,
			 717 | 0x04000000	 | 0x10000000											, (int)&DIO_MOTHERBOARD_GET,
             
             
             
             
             
			 721 | 0x04000000	 | 0x20000000											, (int)&DIO_uP_SET,
			 722 | 0x04000000	 | 0x20000000											, (int)&DIO_COMM_SET,
			 723 | 0x04000000	 | 0x20000000											, (int)&DIO_ANALYZER_SET,
			 724 | 0x04000000	 | 0x20000000											, (int)&DIO_POWER_SET,
			 725 | 0x04000000	 | 0x20000000											, (int)&DIO_ANALOGIO_SET,
			 726 | 0x04000000	 | 0x20000000											, (int)&DIO_DISPLAY_SET,
			 727 | 0x04000000	 | 0x20000000											, (int)&DIO_MOTHERBOARD_SET,
             
             
             
             
                
             731 | 0x04000000  | 0x00010000 | 0x10000000					    , (int)&AVG_RESET,       				
             
             
             
             733 | 0x04000000  | 0x00010000 | 0x10000000                      , (int)&MM_LIQ_fail,          			
             734 | 0x04000000  | 0x00010000 | 0x10000000                      , (int)&MM_GAS_fail,          			
             735 | 0x04000000  | 0x00010000 | 0x10000000                      , (int)&Rosemount_fail,       			
             
             736 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&GAS_DENSITY_INPUT_ENABLED,    	
             
             737 | 0x04000000  | 0x00010000 | 0x10000000	                    , (int)&HSALT_FREQ_TRIGGER, 			
             738 | 0x04000000  | 0x00010000 | 0x10000000                      , (int)&HSALT_TEMP_TRIGGER, 			
             
             739 | 0x04000000  | 0x00010000 | 0x10000000	                    , (int)&LOW_SALT_MODE, 					
             
             740 | 0x04000000  | 0x10000000					                        , (int)&GAS_ENTRAINED, 					
             
             742 | 0x04000000  | 0x00010000 | 0x10000000	                    , (int)&GAS_ENTRAINED_DENS_DETECT, 		
             
             744 | 0x04000000  | 0x00010000 | 0x10000000	                    , (int)&BULK_LEVEL_ENABLED, 			
             745 | 0x04000000  | 0x10000000	                       					, (int)&OIL_PHASE_ONLY, 				
             746 | 0x04000000  | 0x10000000	                       					, (int)&WATER_PHASE_ONLY, 				
             
			 747 | 0x04000000  | 0x10000000	                       					, (int)&gas_routine_reset_needed,
			 
			 748 | 0x04000000  | 0x10000000											, (int)&BEGIN_ALFAT_LOGGING,
			 750 | 0x04000000  | 0x00010000 | 0x10000000						, (int)&RUSS,
             
                                                 
			 999 		 | 0x00010000								, (int)&SA,
             
             
		       0 															, 0		 };								 
								


#pragma DATA_SECTION(mb_ext,"TABLES")
const int mb_ext[][2]=	{ 
			(int)&TEMP_OIL_MAX,					1,		 
			(int)&TEMPS_OIL,					10,		
			(int)&COEFF_TEMP_OIL,				10*4,	
			(int)&SALT_MAX,						1,		
			(int)&SALTS,						20,		
			(int)&TEMP_WATER_MAX,				1,		
			(int)&TEMPS_WATER,					15,		
			(int)&COEFF_SALT_TEMP_WATER,		20*15*4,
			(int)&SALINITY,						60,	
			(int)&OIL_ADJ,						60,	
			(int)&WATER_ADJ,					60,	
			(int)&WATER_ALARM_LO,				60,	
			(int)&WATER_ALARM_HI,				60,	
			(int)&CCM_SETPOINT_P1,				60,	
			(int)&CCM_SETPOINT_P2,				60,	
			(int)&CCM_SETPOINT_L1,				60,	
			(int)&CCM_SETPOINT_L2,				60, 	
			
			(int)&HSALT_ENABLE,					60,	
			(int)&GAS_ROUTINE_ENABLE,			60,	
			(int)&stream_bubble_length,			60,	
				
			(int)&stream_pattern_length,		60,	
				
			(int)&HSALT_MIN_FLOW,				60,	
			(int)&stream_boxcar_expire,			60,	
				
			(int)&stream_delta_temp,			60,	
				
			(int)&SALINITY,						60,						
				
			 
			(int)&OIL_PHASE_ONLY_ENABLE,		60,
			(int)&WATER_PHASE_ONLY_ENABLE,		60,  
			    
			(int)&LIQ_VALVE_P,					60,
			(int)&LIQ_VALVE_I,					60,  
			(int)&LIQ_VALVE_D,					60,  
			(int)&GAS_VALVE_P,					60,
			(int)&GAS_VALVE_I,					60,  
			(int)&GAS_VALVE_D,					60,
			
		       0 , 0						 
						};

#line 40 "modbusrtu.c"
void Modbus_Initialize(int id)
{
	int* poll[] = {	 	
					(int*)&MB_POLL_0, 
					(int*)&MB_POLL_1, 
					(int*)&MB_POLL_2, 
					(int*)&MB_POLL_3, 
					(int*)&MB_POLL_4, 
					(int*)&MB_POLL_5, 
					(int*)&MB_POLL_6, 
					(int*)&MB_POLL_7
				  };
	int* retry[] = {  
					(int*)&MB_RETRY_0, 
					(int*)&MB_RETRY_1, 
					(int*)&MB_RETRY_2, 
					(int*)&MB_RETRY_3, 
					(int*)&MB_RETRY_4, 
					(int*)&MB_RETRY_5, 
					(int*)&MB_RETRY_6, 
					(int*)&MB_RETRY_7
				   };

	 
	if ((id<0) || (id>=8)) 
		return;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	Setup_UART(id, (int)PORTCFG[id].Baud_Rate.calc_val, 8, PORTCFG[id].Parity, 1);

	MODBUS_CRITICAL_ERROR = 0;

	if (PORT[id].PRESENT)
	{ 
		PORT[id].Slave = PORTCFG[id].Slave_ID.val;

		 
		if ((DCM_PORT.val<-1) || (DCM_PORT.val>3))	 
			DCM_PORT.val = 3;
		
		if (ALYESKA.ENABLED 
			&& (  ((ANALYZER_MODE.val&0xFF) == 0) 
			   || ((ANALYZER_MODE.val&0xFF) == 3) 
			   || ((ANALYZER_MODE.val&0xFF) == 2))
			&& (Density_Correction_Mode.val<6) 
			&& (Density_Correction_Mode.val>0))
		{
			DCM_PORT.val = 3;
			
			if ((id==1) || (id==2)) 
				PORT[id].Slave = 0;
		}
		else if ((  ((ANALYZER_MODE.val&0xFF) == 0)	
				 || ((ANALYZER_MODE.val&0xFF) == 3) 
				 || ((ANALYZER_MODE.val&0xFF) == 1)
				 || ((ANALYZER_MODE.val&0xFF) == 2)) 
				&& (Density_Correction_Mode.val<6) 
				&& (Density_Correction_Mode.val>0) 
				&& (id==DCM_PORT.val))	
			PORT[id].Slave = 0;
		else if (((ANALYZER_MODE.val&0xFF) == 6) && ((id==2) || (id==3)))
			PORT[id].Slave = 0;
		 
		
		Timer_Create(&PORT[id].TMR_Poll,  PORTCFG[id].poll_time/100.0,     1, poll[id],  0);
		Timer_Create(&PORT[id].TMR_Retry, PORTCFG[id].Retry_Time.calc_val, 1, retry[id], 0);

		if (DEMO) 
			PORT[id].Slave = 1;

		if (PORT[id].Slave>0)
		{
			PORT[id].i_main 	  = 1;
			PORT[id].tvector_main = (int*)WDOG_P;
			PORT[id].pvector_main = (int*)MODBUS_RX_ID;
			
			Timer_Insert(&PORT[id].TMR_Poll,0,3);
			Timer_Insert(&PORT[id].TMR_Retry,0,3);
		}
		else
		{
			MB_Init_Master(id);

			PORT[id].Received_PKT = 0;
			
			Timer_Insert(&PORT[id].TMR_Poll,0,1);

			PORT[id].pvector_main = (int*) MODBUS_RX_nDATA;
			PORT[id].i_main 	  = 100;
		}

		RESET_PKT(id);
	}

	{asm("	pop		ST			");};
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void MODBUS_RX_ID(int id)
{
	unsigned int t;	 

 	PORT[id].RX_pending = 1;
	t 					= (RXbuf[id].buff[0] & 0xFF);

	if (t==0xFA)
	{ 
		PORT[id].LONG_ADDRESS 	= 1;
		PORT[id].pvector 		= (int*) MODBUS_RX_LONG_ADDR;
		PORT[id].i 				= 4;
	}
	else
	{ 
		PORT[id].LONG_ADDRESS 	= 0;
		PORT[id].pvector 		= (int*) MODBUS_RX_FUNCTION;
	}

 	PORT[id].TMR_enabled = 1;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MODBUS_RX_LONG_ADDR(int id)
{
	PORT[id].i--;
	
	if (PORT[id].i>0)
	{
	 	PORT[id].TMR_enabled = 1;
		return;
	}

	PORT[id].pvector 	 = (int*) MODBUS_RX_FUNCTION;
 	PORT[id].TMR_enabled = 1;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MODBUS_RX_FUNCTION(int id)
{
	int L_offset;	 
	
	 
	if (PORT[id].LONG_ADDRESS) 
		L_offset = 4;
	else 
		L_offset = 0;

	PORT[id].func 	 = (RXbuf[id].buff[1+L_offset] & 0xFF);
	PORT[id].i 		 = 2;
	PORT[id].pvector = (int*) MODBUS_RX_nDATA;

	switch(PORT[id].func)
	{ 
		case 7:
		case 11:
		case 12:
		case 17:
		{
			PORT[id].pvector = (int*) MODBUS_RX_CRC;
			break;
		}
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 15:
		case 16:
		case 8:
		{
			PORT[id].i = 4;
			break;			
		}
		case 67:
		case 68:
		case 22:
		case 71:
		case 100:
		case 66:
		{
			PORT[id].i = 5;
			break;
		}
		case 23:
		{
			PORT[id].i = 8;
			break;
		}
		case 65:
		{
			PORT[id].i = 13;
			break;
		}
		case 72:
		{
			PORT[id].i 		 = 5;
			PORT[id].pvector = (int*) MODBUS_RX_n;
			break;
		}
		case 102:
		{
			PORT[id].i = 6;
			break;
		}
		case 101:
		{
			PORT[id].i = 1;
			break;
		}
		default:
		{
			PORT[id].i 		 = 1;
			PORT[id].pvector = (int*) MODBUS_RX_n;
			break;
		}
    }

 	PORT[id].TMR_enabled = 1;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void MODBUS_RX_n(int id)
{
	PORT[id].i--;

	if (PORT[id].i>0)
	{
	 	PORT[id].TMR_enabled = 1;
		return;
	}

	PORT[id].i = (unsigned int) (RXbuf[id].buff[RXbuf[id].n-1] & 0xFF);

	if (PORT[id].func == 72)
		PORT[id].i *= 4;

	PORT[id].pvector	 = (int*) MODBUS_RX_nDATA;
 	PORT[id].TMR_enabled = 1;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MODBUS_RX_nDATA(int id)
{
	PORT[id].i--;

	if (PORT[id].i>0)
	{ 
	 	PORT[id].TMR_enabled = 1;
	
		return;
	}

	if (PORT[id].Slave>0)
	{
		switch (PORT[id].func)
		{ 
			case 15:
			case 16:
			case 23:
			{
				PORT[id].i 		 	 = 1;
				PORT[id].pvector 	 = (int*) MODBUS_RX_n;
				PORT[id].func 		^= 0x100;
			 	PORT[id].TMR_enabled = 1;
				
				return;
			}
			case (15 | 0x100):
			case (16 | 0x100):
			case (23 | 0x100):
			{
				PORT[id].func 		^= 0x100;
			 	PORT[id].TMR_enabled = 1;
				
				break;
			}
		}
	}

	PORT[id].i 			 = 2;
	PORT[id].pvector 	 = (int*) MODBUS_RX_CRC;
 	PORT[id].TMR_enabled = 1;	 
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MODBUS_RX_CRC(int id)
{
	BOOL valid;								 
	BOOL reply;								 
	int i;									 
	int z;									 
	unsigned int d;							 
	unsigned int address;					 
	unsigned int numreg;					 
	unsigned int tmp0;						 
	unsigned int tmp1;						 
	int* table;								 
	int L_offset;							 
	unsigned char YEAR,MONTH,DAY,HH,MM,SS; 	    
	MPKT* p;                				 
	
	p = (MPKT*)PORT[id].p;      

	PORT[id].i--;
	
	if (PORT[id].i>0)
	{
	 	PORT[id].TMR_enabled = 1;
		
		return;
	}
	else if (PORT[id].i<0)
		PORT[id].i = -1;
	
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (PORT[id].LONG_ADDRESS) 
		L_offset = 4;
	else 
		L_offset = 0;

	RXbuf[id].locked = 1;		 
	valid 			 = 1;

	if (PORT[id].Slave>0)
	{ 
		PORT[id].broadcast	 = 0;
		PORT[id].TX_complete = 0;

		 
	    if  (RXbuf[id].CRC16 != 0)
		{ 
			valid = 0;
			PORT[id].INV_PKT_COUNT++;
		}
		else if (PORT[id].LONG_ADDRESS)
		{ 
			tmp0  =  (unsigned int) (RXbuf[id].buff[1] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[2] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[3] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[4] & 0xFF);

			if (tmp0 != (unsigned int)PORT[id].SNUM)
				valid = 0;
		}
		else
		{ 
			if ((RXbuf[id].buff[0] & 0xFF) == 0) 
				PORT[id].broadcast = 1;

			if 	( !((PORT[id].broadcast) || ((unsigned int) PORT[id].Slave == (RXbuf[id].buff[0] & 0xFF))) )
				valid = 0;
		}

		 
		if (valid && PORT[id].BUSY)
		{
			MB_exception(id, 6);
			Prepare_TX(id, 0);
			
			PORT[id].SUCCESS++;
		}
		else if (valid)
		{
			DIAGNOSTICS[0] &= DIAGNOSTICS_MASK[0];
			DIAGNOSTICS[1] &= DIAGNOSTICS_MASK[1];
			PORT[id].data 	= 2+L_offset;
			address 		= (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);
			address 		= address << 8;
			address 	   |= (unsigned int) (RXbuf[id].buff[3+L_offset] & 0xFF);
			address 	   += 1;
			numreg 			= (unsigned int) (RXbuf[id].buff[4+L_offset] & 0xFF);
			numreg 			= numreg << 8;
			numreg 		   |= (unsigned int) (RXbuf[id].buff[5+L_offset] & 0xFF);

			Clear(&TXbuf[id]);

			PORT[id].c = 0;
	
			if (MODBUS_CRITICAL_ERROR)
				MB_exception(id, 4);
			else
			{
				switch(PORT[id].func)
				{
					case 8:
					{
						MB_Diag(id);
						
						break;
					}
					case 5:
					case 15:
					case 6:
					case 16:
					{
						if ((PORT[id].func == 15) || (PORT[id].func == 5))
							PORT[id].c = 1;
						
						if ((PORT[id].func == 5) || (PORT[id].func == 6))
						{
							numreg 		= 1;
							PORT[id].i 	= 4+L_offset;		 
						}
						else
							PORT[id].i 	= 7+L_offset;		 
						
						PORT[id].r 		= 0;
						PORT[id].start 	= address;
						PORT[id].n 		= numreg;
						
						Process(id);

						break;
					}
					case 1:
					case 2:
					case 3:
					case 4:
					{
						if  ((PORT[id].func == 1) || (PORT[id].func == 2))
							PORT[id].c = 1;
						
						PORT[id].r 		= 1;
						PORT[id].start 	= address;
						PORT[id].n 		= numreg;
						
						Process(id);
	
						break;
					}			
					case 17:
					{
						Report_Slave_Info(id);
						
						break;
					}
					case 101:
					{
						if ((DIPSWITCH[0] == 0)) 
						{
							MB_exception(id, 1); 
							break;
						}
						
						LOCKOUT = 0;
						d 		= (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);
						
						if (d)
							DIO_LOCK[1].val = 0;
						else
							DIO_LOCK[1].val = 1;
						
						for (z=0;z<(2+L_offset);z++)	 
							Put(&TXbuf[id], RXbuf[id].buff[z], 1);
						
						break;
					}
					case 102:
					{
						HH		= (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);
						MM		= (unsigned int) (RXbuf[id].buff[3+L_offset] & 0xFF);
						SS		= (unsigned int) (RXbuf[id].buff[4+L_offset] & 0xFF);
						MONTH	= (unsigned int) (RXbuf[id].buff[5+L_offset] & 0xFF);
						DAY		= (unsigned int) (RXbuf[id].buff[6+L_offset] & 0xFF);
						YEAR	= (unsigned int) (RXbuf[id].buff[7+L_offset] & 0xFF);

						while(1)
						{
							if (!Write_DS1340(2, 1, &HH)) 
								break;
							
							if (!Write_DS1340(1, 1, &MM)) 
								break;
							
							if (!Write_DS1340(0, 1, &SS)) 
								break;
							
							if (!Write_DS1340(5, 1, &MONTH)) 
								break;
							
							if (!Write_DS1340(4, 1, &DAY)) 
								break;
							
							if (!Write_DS1340(6, 1, &YEAR)) 
								break;
							
							RTC[1]  		= 0x00;	 
							DIAGNOSTICS[1] &= 0xFFFFFFFF ^ 0x0001;
							
							if (!Write_DS1340(8, 2, &RTC[0])) 
								break;
							
							break;
						}

						for (z=0;z<(2+L_offset);z++)	 
							Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
						break;
					}
					case 67:
					case 68:
					{
						Force_Slave_Pipe(id);
					
						break;
					}
					case 65:
					case 66:
					{
						if ( (id!=PDI_id) || (DIPSWITCH[0] == 0) ) 
							MB_exception(id, 1);
						else
						{
							RESEARCH();
							
							PORT[id].SUCCESS++;
							{asm("	pop		ST			");};
						
							return;
						}
						
						break;
					}
					case 71:
					{
						PORT[id].r = 1;
						
						Process_Memory(id);
					
						break;
					}
					case 72:
					{
						PORT[id].r = 0;
						
						Process_Memory(id);
					
						break;
					}
					case 100:
					{
						if (id!=PDI_id)
						{
							MB_exception(id, 1);
					
							break;
						}
						else
							MB_Calibrate(id);
						
						break;
					}
					default:
					{ 
						MB_exception(id, 1);
					
						break;			
					}		
				}
			}
	
			Prepare_TX(id, 0);

			PORT[id].SUCCESS++;       
		}
		else
			RESET_PKT(id);
	}
	else
	{     	
	    if  ((RXbuf[id].CRC16!=0) || (PORT[id].STAT) || ((RXbuf[id].buff[1+L_offset]&0x80)==0x80))
		{ 
			valid = 0;
			PORT[id].INV_PKT_COUNT++;
		}

		if (valid)
		{
			PORT[id].SUCCESS++;
			PORT[id].Received_PKT = 1;
			
			    
			if(id==2) 
			{
				if(p->slave==2)
				{
					MM_LIQ_fail.val	= 0;
					PORT2_LIQ_TEMP	= 0;
				}  
				if(p->slave==3)
				{
					MM_GAS_fail.val	= 0;
					PORT2_GAS_TEMP	= 0;
				}
			}     
			if (id==3) 
			{
				Rosemount_fail.val = 0;
				PORT3_TEMP		   = 0;					 
    		}
			    
		}
	}
    
     
	if(PORT2_LIQ_TEMP>10) 
		MM_LIQ_fail.val = 1; 
	
	if(PORT2_GAS_TEMP>10) 
		MM_GAS_fail.val = 1;
	
	if(PORT3_TEMP>100) 
		Rosemount_fail.val = 1;
	 		
	
	{asm("	pop		ST			");};
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_exception(int id, int ex)
{
	int z;
	int L_offset;

	if (PORT[id].LONG_ADDRESS) L_offset = 4;
	else L_offset = 0;

	switch(ex)
	{
		case 1:
		case 2:
		case 3:
		{
			PORT[id].INV_PKT_COUNT++;
			
			break;
		}
	}

	 
	for (z=0;z<(1+L_offset);z++)				 
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
	Put(&TXbuf[id], PORT[id].func|0x80, 1);		 
	Put(&TXbuf[id], ex, 1);						 
	 
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_Diag(int id)
{
	int subfunc, r1, r2;
	int i,z;
	int L_offset;

	if (PORT[id].LONG_ADDRESS) 
		L_offset = 4;
	else 
		L_offset = 0;

	for (z=0;z<(4+L_offset);z++)	 
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
	subfunc = ((RXbuf[id].buff[2+L_offset]&0xFF)<<8) | (RXbuf[id].buff[3+L_offset]&0xFF);
	
	switch (subfunc)
	{
		case 2:
		{ 
			r2 = DIAGNOSTICS[0];
			r1 = r1>>8;
			
			break;
		}
		case 11:
		case 17:
		case 18:
		case 19:
		{ 
		  
			r2 = 0;
			r1 = 0;
			
			break;
		}
		case 14:
		{ 
			r2 = PORT[id].SUCCESS;
			r1 = r2>>8;
			
			break;
		}
		case 12:
		{ 
			r2 = PORT[id].ERROR_COUNT;
			r1 = r2>>8;
			
			break;
		}
		case 13:
		{ 
			r2 = PORT[id].INV_CMD_COUNT;
			r1 = r2>>8;
			
			break;
		}
		case 10:
		{ 
			DIAGNOSTICS[0] 			= 0x0000;
			DIAGNOSTICS[1] 			= 0x0000;
			DIAGNOSTICS_MSG_CODE 	= 0;
			DIAGNOSTICS_ERROR_CODE 	= 0;
			PORT[id].WDOG_COUNT 	= 0;
			PORT[id].ERROR_COUNT 	= 0;
			PORT[id].INV_CMD_COUNT 	= 0;
			PORT[id].INV_PKT_COUNT 	= 0;
			PORT[id].SUCCESS 		= 0;
		}
		default:
		{ 
			r1 = RXbuf[id].buff[4+L_offset];
			r2 = RXbuf[id].buff[5+L_offset];
		}
	}

	Put(&TXbuf[id], r1, 1);
	Put(&TXbuf[id], r2, 1);
}

 
 
 
 
 
 
 
 
 
 
 
 
void Force_Slave_Pipe(int id)
{
	float val;			 
	int r,i;			 
	unsigned int tmp0;	 
	int L_offset;		 

	if (PORT[id].LONG_ADDRESS) 
		L_offset = 4;
	else 
		L_offset = 0;

	tmp0  =  (unsigned int) (RXbuf[id].buff[3+L_offset] & 0xFF);
	tmp0  = tmp0 << 8;
	tmp0 |= (unsigned int) (RXbuf[id].buff[4+L_offset] & 0xFF);
	tmp0  = tmp0 << 8;
	tmp0 |= (unsigned int) (RXbuf[id].buff[5+L_offset] & 0xFF);
	tmp0  = tmp0 << 8;
	tmp0 |= (unsigned int) (RXbuf[id].buff[6+L_offset] & 0xFF);

	if (tmp0 == (unsigned int)PORT[id].SNUM)
	{
		PORT[id].broadcast 	= 0;
		val 			 	= (RXbuf[id].buff[2+L_offset] & 0xFF);
		
		if ((val>=1) && (val<=247))	 
			PORT[id].Slave = val;
		else
		{ 
			if ((RXbuf[id].buff[0] & 0xFF) != 0)
				MB_exception(id, 3);
			
			return;
		}

		if (PORT[id].LONG_ADDRESS)
		{ 
			for (i=0;i<(7+4);i++)	
				Put(&TXbuf[id], RXbuf[id].buff[i], 1);
		}
		else
		{ 
			Put(&TXbuf[id], RXbuf[id].buff[2], 1);	
			
			for (i=1;i<7;i++)	 
				Put(&TXbuf[id], RXbuf[id].buff[i], 1);
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
void Report_Slave_Info(int id)
{
	int z;
	int L_offset;

	if (PORT[id].LONG_ADDRESS) 
		L_offset = 4;
	else 
		L_offset = 0;

	for (z=0;z<(1+L_offset);z++)				 
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
	Put(&TXbuf[id], PORT[id].func, 1);			 
	Put(&TXbuf[id], 9, 1);						 
	Put(&TXbuf[id], (int)PORT[id].Slave, 1);	 

	if (DEMO)
		Put(&TXbuf[id], 0x00, 1);				 
	else
		Put(&TXbuf[id], 0xFF, 1);				 

	
	Put(&TXbuf[id], DIO_LOCK[0].val, 1);		 
	Put(&TXbuf[id], (DIAGNOSTICS[0]>>8), 1);
	Put(&TXbuf[id], DIAGNOSTICS[0], 1);
	Put(&TXbuf[id], (ANALYZER_MODE.val>>8), 1);
	Put(&TXbuf[id], ANALYZER_MODE.val, 1);
	Put(&TXbuf[id], (SN_PIPE>>8), 1);
	Put(&TXbuf[id], SN_PIPE, 1);
}

 
 
 
 
 
 
 
 
 
 
 
 
void Process_Memory(int id)
{
	unsigned int  address;	 
	unsigned int  numreg;	 
	unsigned int* p;		 
	unsigned int  q;		 
	unsigned int  i;		 
	unsigned int  tmp3;		 
	int tmp2;				 
	int tmp1;				 
	int tmp0;				 
	int z;					 
	int L_offset;			 

	if (PORT[id].LONG_ADDRESS) 
		L_offset = 4;
	else 
		L_offset = 0;

	address  = (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);
	address  = address << 8;
	address |= (unsigned int) (RXbuf[id].buff[3+L_offset] & 0xFF);
	address  = address << 8;
	address |= (unsigned int) (RXbuf[id].buff[4+L_offset] & 0xFF);
	address  = address << 8;
	address |= (unsigned int) (RXbuf[id].buff[5+L_offset] & 0xFF);
	numreg   = (unsigned int) (RXbuf[id].buff[6+L_offset] & 0xFF);

	if (numreg>60)
	{ 
		MB_exception(id, 2);
		
		return;
	}

	p = (unsigned int*)address;

	for (z=0;z<(7+L_offset);z++)				 
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);

	for (i=0; i<numreg ; i++)
	{
		if (PORT[id].r)
		{ 
			tmp0 = p[i];
			tmp1 = tmp0 >> 8;
			tmp2 = tmp1 >> 8;
			tmp3 = tmp2 >> 8;

			 
			Put(&TXbuf[id], tmp3, 1);
			Put(&TXbuf[id], tmp2, 1);
			Put(&TXbuf[id], tmp1, 1);
			Put(&TXbuf[id], tmp0, 1);
		}
		else
		{ 
			tmp0  = (unsigned int) (RXbuf[id].buff[ 7+(i*4)+L_offset] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[ 8+(i*4)+L_offset] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[ 9+(i*4)+L_offset] & 0xFF);
			tmp0  = tmp0 << 8;
			tmp0 |= (unsigned int) (RXbuf[id].buff[10+(i*4)+L_offset] & 0xFF);
			p[i]  = tmp0;	
		}	
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void Process(int id)
{
	
	int i;				 
	int j;				 
	int idx;			 
	int n;               
	int ai;				 
	int	addr;			 
	int	w,x,y,z,a;		 
	int end;			 
	int start;           
	int tmp3;			 
	int tmp2;			 
	int tmp1;			 
	int tmp0;			 
	int vi;				 
	int vio;			 
	int	k;				 
	int IEEE_mode;		 
	int L_offset;		 
	int* t;				 
	int* v_int;			 
	int* tmp;			 
	int	vali[130];		 
	unsigned int PROT;	 
	unsigned int ui;
	float vfo;			 
	float* v_flt;		 
	float val[130];		 
	BOOL pass;			 
	BOOL pass1;			 
	BOOL r;  			 
	BOOL c;              
	BOOL not_a_num;		 
	BOOL SAVE_MODE;		 
	BOOL cv, co;		 
	VAR* v_var;			 
	COIL* v_coil;		 
	REGVECT* v_regvect;	 




	r = PORT[id].r;

	if (r && PORT[id].broadcast) 	 
		return;
		
	if (PORT[id].LONG_ADDRESS) 		 
		L_offset = 4;
	else 
		L_offset = 0;

	c 		= PORT[id].c;
	n 		= PORT[id].n;
	ai 		= PORT[id].ai;
	start 	= PORT[id].start;

	 
	if (c && (PORT[id].func==15))
	{ 
		tmp0 = RXbuf[id].buff[PORT[id].i-1] & 0xFF;
		tmp1 = n/8;
		
		if (n%8) 
			tmp1++;

		if ((n<1) || (n>0x07B0) || (tmp0!=tmp1))
		{ 
			MB_exception(id, 3);
			
			return;
		}
	}
	else if (c && (PORT[id].func==5))
	{ 
		tmp0 = ((RXbuf[id].buff[PORT[id].i] & 0xFF)<<8) | (RXbuf[id].buff[PORT[id].i+1] & 0xFF);

		if ((tmp0!=0x0000) && (tmp0!=0xFF00))
		{ 
			MB_exception(id, 3);
			
			return;
		}
	}
	else if (c && ((n<1) || (n>0x07D0)))
	{ 
		MB_exception(id, 3);
		
		return;
	}
	else if (!c && (PORT[id].func==16))
	{ 
		tmp0 = RXbuf[id].buff[PORT[id].i-1] & 0xFF;
		tmp1 = 2 * n;

		if ((n<1) || (n>0x07B) || (tmp0!=tmp1))
		{ 
			MB_exception(id, 3);
			
			return;
		}
	}
	else if (!c && ((n<1) || (n>0x007D)))
	{ 
			MB_exception(id, 3);
			
			return;
		}
	 

	 
    PROT = 0x00000000;
    PROT |= 0x10000000;			
    
    if (!DIO_LOCK[1].val)
    	PROT |= 0x20000000;
    
     
     
     
	
	pass 		= 1;
    IEEE_mode 	= 0;
	SAVE_MODE 	= 0;

	 
	if (c)
	{ 
		if ((start>0) && (start<=2*10000+0))
		{
			start 	-= 0;
            t 		 = (int*)mb_coil;
			ai 		 = 1;
		}
		else
			pass = 0;
	}
	else if ((start>60000) && (start<=65536))
	{ 
		start -= 60000;

		while(1)
		{
			if (!r)			
			{ 
			    if (DIO_LOCK[1].val)
			    { 
				    if ((start>=2577) && !DIO_LOCK[0].val)  
				       	pass = 1;
				    else
				    {
				    	pass = 0;
				    	
						break;
				    }
				}
				else  
					pass = 1;
			}
			else  
				pass = 1;
			
			ai 	= 2;
			t 	= (int*)mb_ext;		 
            
			if (n%ai)
			{ 
				pass = 0;
		   		
				break;
			}
            			
			if ((start-1)%ai)
			{ 
				pass = 0;
		   		
				break;
			}

			end  = start + n - ai;
            n 	/= ai;

			 
			pass	= 0;
			pass1	= 0;
			x 		= 0;
			a 		= 1;
			
			while(1)
			{ 
				if (t[x]==0)
				{ 
					pass = 0;
					
					break;
				}

				w = t[x+1];

				for(y=0;y<w;y++)
				{
					if (a==start)
						pass1 = 1;
					
					if ((pass1) && (a==end))
					{ 
						pass = 1;
						
						break;
					}

					a += ai;
				}

				if (pass)	 
					break;
				
				x += 2;		 
			}
			 

			break;
		}
	}
	else if ((start>0) && (start<=2*10000+0))
	{ 
		start 	-= 0;
        t 		 = (int*)mb_flt;
                                                        		
		if (n%2)			  
			pass = 0;
        		
		if ((start-1)%2)
		{ 
			if (DIO_Autosave_on_pair_boundary)
			{
				start -= 1;
				SAVE_MODE = 1;
			}
			else
				pass = 0;
		}

		ai = 2;
		n /= ai;
	}
	else if ((start>20000) && (start<=2*10000+20000))
	{ 
		start -= 20000;
		t 	   = (int*)mb_fc;

		
		if (n%2)  
			pass = 0;
		
		if ((start-1)%2)
		{ 
			if (DIO_Autosave_on_pair_boundary)
			{
				start 	 -= 1;
				SAVE_MODE = 1;
			}
			else
				pass = 0;
		}

		ai = 2;
		n /= ai;
	}
	else if ((start>40000) && (start<=2*10000+40000))
	{ 
		start 	-= 40000;
		t 		 = (int*)mb_int;
		ai 		 = 1;
	}
	else
		pass = 0;
	 
	
	if (!pass)
	{ 
		MB_exception(id, 2);
		
		return;
	}

	if (c)
	{ 
		if (start>10000)
		{
			start 	 -= 10000;
			SAVE_MODE = 1;
		}
	}
	else
	{ 
		if (t!=(int*)mb_ext)
		{ 
			if (start>10000)
			{
				start 	 -= 10000;
				SAVE_MODE = 1;
			}

			if (t!=(int*)mb_int)
			{ 
				if (start<2000)
					IEEE_mode = 0;
				else if (start<4000)
				{
					start    -= 2000;
					IEEE_mode = 1;
				}
				else if (start<6000)
				{
					start    -= 4000;
					IEEE_mode = 2;
				}
				else if (start<8000)
				{
					start    -= 6000;
					IEEE_mode = 3;
				}
				else if (start<10000)
				{
					start    -= 8000;
					IEEE_mode = 4;		 
				}
			}
		}
	}

	PORT[id].n 		= n;
	PORT[id].ai 	= ai;
	PORT[id].start 	= start;

	if (t!=(int*)mb_ext)
	{ 
		i = 0;
		
		while(1)
		{ 
			if ((t[i]&0xFFFF) == 0)
			{ 
				pass = 0;		
				
				break;
			}
			else if ((t[i]&0xFFFF) == start)
			{
				tmp0 = t[i] & (0x20000000|0x10000000);
				                   
				if ( r || (!r && (tmp0 & PROT)||(t[i] & 0x40000000)) )
					break;
				else
				{
					pass = 0;
					
					break;
				}
			}

			i += 2;
		}

		if (pass)
		{ 
			addr = start;

			for (j=i;j<(2*n+i);j=(j+2))
			{
				tmp0 = t[j] & (0x20000000|0x10000000);
				                                                                  
				if ( ((t[j]&0xFFFF) != addr) || ((t[j]&0xFFFF) == 0) || (!r && !((tmp0 & PROT)||(t[j] & 0x40000000))) )
				{  
					pass = 0;
					
					break;
				}

				addr += ai;
			}
		}

		if (!pass)
		{ 
			MB_exception(id, 2);
			
			return;
		}
	}

	if (t==(int*)mb_ext)
	{ 
		if (r)
		{ 
			for (z=0;z<(2+L_offset);z++)
				Put(&TXbuf[id], RXbuf[id].buff[z], 1);
        
			Put(&TXbuf[id], n*2*ai, 1);
		}

		idx 	= PORT[id].i;	 
		pass 	= 0;
		x 		= 0;
		a 		= 1;
		
		while(1)
		{
			w 		= t[x+1];
			v_flt 	= (float*) t[x];

			for(y=0;y<w;y++)
			{
				if ((a>=start) && (a<=end))
				{
					if (r)
					{ 
						tmp0 = TOIEEE(v_flt[0]);
						tmp1 = tmp0 >> 8;
						tmp2 = tmp1 >> 8;
						tmp3 = tmp2 >> 8;
						
						 
						Put(&TXbuf[id], tmp3, 1);
						Put(&TXbuf[id], tmp2, 1);
						Put(&TXbuf[id], tmp1, 1);
						Put(&TXbuf[id], tmp0, 1);
						  
					}
					else
					{ 
						vfo = v_flt[0];

						 
						tmp0  	 =  (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
						tmp0  	 = tmp0 << 8;
						tmp0 	|= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
						tmp0  	 = tmp0 << 8;
						tmp0 	|= (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
						tmp0  	 = tmp0 << 8;
						tmp0 	|= (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
						v_flt[0] = FMIEEE(tmp0);
						idx 	+= ai*2;
						
						if (SYS_LOG_ENABLED & 0x02) 
							CfgLog(id, 1, PORT[id].func, a, v_flt[0], v_flt[0], vfo, vfo);
						  
					}
				}
				else if (a>end)
				{
					pass = 1;
					
					break;
				}

				v_flt++;
				a += ai;
			}

			if (pass)
			{
				if (!r)
				{ 
					Mirror_From_Stream_Table((VAR*)0);

					CHANGE = 1;

					 
					HCHANGE[0] = 1;
					HCHANGE[1] = 1;
					HCHANGE_COUNTER++;
					 
 				}
 				
				break;
			}

			x += 2;
		}
	}
	else
	{ 
		if (!c & !r)		
		{ 
			vi  = 0;
			idx = PORT[id].i;	 
			
			for (j=i;j<(2*n+i);j=(j+2))		
			{ 
				switch(ai)
				{ 
					case 1:
					{
						tmp0  = (unsigned int) (RXbuf[id].buff[idx] & 0xFF);
						tmp0  = tmp0 << 8;
						tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
						
						if (tmp0 & 0x8000) 
							tmp0 |= 0xFFFF0000;      
						
						val[vi] = (int)tmp0;
						
						break;
					}
                    case 2:
					{
						switch (IEEE_mode)
						{
							case 4:  
							case 0:
							{ 
								tmp0  = (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
								
								break;
							}
                            case 1:
							{ 
								tmp0  = (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
								
								break;
							}
                            case 2:
							{ 
								tmp0  = (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
								
								break;
							}
                            case 3:
							{ 
								tmp0  = (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+0] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+3] & 0xFF);
								tmp0  = tmp0 << 8;
								tmp0 |= (unsigned int) (RXbuf[id].buff[idx+2] & 0xFF);
								
								break;
							}
						}

						if (IEEE_mode == 4)
						{
							vali[vi] = tmp0;
							val[vi]  = (int)tmp0;
						}
			            else
			            	val[vi] = FMIEEE(tmp0);
						
						break;
					}
				}

				if((( t[j] & 0x00FF0000 ) == 0x00020000 ) && (IEEE_mode == 4))	 
					val[vi] /= 1000.0;
				else if((( t[j] & 0x00FF0000 ) == 0x00020000 ) && (ai==1))         
					val[vi] /= 100.0;
				else if(( t[j] & 0x00FF0000 ) == 0x00030000 )                         
				{ 
					v_var = (VAR*)t[j+1];

					if (ai==1)
						val[vi] /= v_var->scale;
					else if (IEEE_mode == 4)
						val[vi] /= v_var->scale_long;
					              
					if (!VAR_Update(v_var, val[vi], 1, 1))	
					{ 
						if (!DIO_PORT_IGNORE_DATA_EXCEPTION)
						{ 
							MB_exception(id, 3);
							
							return;
						}
					}
				}
				else if((t[j]&0x00FF0000) == 0x000D0000)
				{ 
					tmp 	= (int*)t[j+1];
					v_var 	= HART_Lookup(tmp[0], &ui, (int*)&HART_DV_Table);

					if (ai==1)
						val[vi] /= v_var->scale;
					else if (IEEE_mode == 4)
						val[vi] /= v_var->scale_long;
					              
					if (!VAR_Update(v_var, val[vi], 1, 1))	
					{ 
						if (!DIO_PORT_IGNORE_DATA_EXCEPTION)
						{ 
							MB_exception(id, 3);
							
							return;
						}
					}
				}
				else if((t[j]&0x00FFF0000) == 0x00040000)
				{ 
					v_var = (VAR*)t[j+1];

					if (!VAR_Set_Unit(v_var, val[vi], 1))	
					{ 
						if (!DIO_PORT_IGNORE_DATA_EXCEPTION)
						{ 
							MB_exception(id, 3);
							
							return;
						}
					}
				}

				vi++;
				idx += ai*2;
			}

			vi = 0;
			
			for (j=i;j<(2*n+i);j=(j+2))				
			{ 
				switch (t[j]&0x00FF0000)
				{
					case 0x000C0000:
					{ 
						break;
					}
     				case 0x00010000:
					{
						v_int 	= (int*)t[j+1];
						vio 	= v_int[0];
						vfo 	= v_int[0];
						
						if (IEEE_mode == 4)
							v_int[0] = vali[vi];
						else
							v_int[0] = val[vi];
						
						break;
					}
                    case 0x000B0000:
					{
						v_regvect 	= (REGVECT*)t[j+1];
						vio 		= v_regvect[0].val*1000.0;
						vfo 		= v_regvect[0].val;
						
						if (IEEE_mode == 4)
							v_regvect[0].val = vali[vi];
						else
							v_regvect[0].val = val[vi];
						
						switch(id)
						{
							case 0:
							{ 
								tmp 		= vect_exec0;
								vect_exec0  = v_regvect[0].vect;
								
								if (vect_exec0!=(int*)0)
								{
									{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
									asm("		.global _vect_exec0	");
							    	asm("	ldi		0, AR2          ");	 
								    asm("	ldp		_vect_exec0     ");
								    asm("	ldi		@_vect_exec0, R0");
								    asm("	callnz	R0				");	 
								    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
									
									vect_exec0 = tmp;
								}
								
								break;
							}
                            case 1:	
							{ 
								tmp 		= vect_exec1;
								vect_exec1 	= v_regvect[0].vect;
								
								if (vect_exec1!=(int*)0)
								{
									{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
									asm("		.global _vect_exec1	");
							    	asm("	ldi		1, AR2          ");	 
								    asm("	ldp		_vect_exec1     ");
								    asm("	ldi		@_vect_exec1, R0");
								    asm("	callnz	R0				");	 
								    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
									
									vect_exec1 = tmp;
								}
								
								break;
							}
       						case 2:	
							{ 
								tmp 		= vect_exec2;
								vect_exec2 	= v_regvect[0].vect;
								
								if (vect_exec2!=(int*)0)
								{
									{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
									asm("		.global _vect_exec2	");
							    	asm("	ldi		2, AR2          ");	 
								    asm("	ldp		_vect_exec2     ");
								    asm("	ldi		@_vect_exec2, R0");
								    asm("	callnz	R0				");	 
								    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
									
									vect_exec2 = tmp;
								}
								
								break;
							}
       						case 3:	
							{ 
								tmp 		= vect_exec3;
								vect_exec3 	= v_regvect[0].vect;
								
								if (vect_exec3!=(int*)0)
								{
									{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
									asm("		.global _vect_exec3	");
							    	asm("	ldi		3, AR2          ");	 
								    asm("	ldp		_vect_exec3     ");
								    asm("	ldi		@_vect_exec3, R0");
								    asm("	callnz	R0				");	 
								    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
									
									vect_exec3 = tmp;
								}
								
								break;
							}
       						case 4:	
							{ 
								tmp = vect_exec4;
								vect_exec4 = v_regvect[0].vect;
								
								if (vect_exec4!=(int*)0)
								{
									{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
									asm("		.global _vect_exec4	");
							    	asm("	ldi		4, AR2          ");	 
								    asm("	ldp		_vect_exec4     ");
								    asm("	ldi		@_vect_exec4, R0");
								    asm("	callnz	R0				");	 
								    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
									
									vect_exec4 = tmp;
								}
								
								break;
							}
       						case 5:	
							{ 
								tmp 		= vect_exec5;
								vect_exec5 	= v_regvect[0].vect;
								
								if (vect_exec5!=(int*)0)
								{
									{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
									asm("		.global _vect_exec5	");
							    	asm("	ldi		5, AR2          ");	 
								    asm("	ldp		_vect_exec5     ");
								    asm("	ldi		@_vect_exec5, R0");
								    asm("	callnz	R0				");	 
								    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
									
									vect_exec5 = tmp;
								}
								
								break;
							}
                            case 6:	
							{ 
								tmp 		= vect_exec6;
								vect_exec6 	= v_regvect[0].vect;
								
								if (vect_exec6!=(int*)0)
								{
									{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
									asm("		.global _vect_exec6	");
							    	asm("	ldi		6, AR2          ");	 
								    asm("	ldp		_vect_exec6     ");
								    asm("	ldi		@_vect_exec6, R0");
								    asm("	callnz	R0				");	 
								    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
									vect_exec6 = tmp;
								}
								
								break;
							}
       						case 7:	
							{ 
								tmp 		= vect_exec7;
								vect_exec7 	= v_regvect[0].vect;
								
								if (vect_exec7!=(int*)0)
								{
									{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
									asm("		.global _vect_exec7	");
							    	asm("	ldi		7, AR2          ");	 
								    asm("	ldp		_vect_exec7     ");
								    asm("	ldi		@_vect_exec7, R0");
								    asm("	callnz	R0				");	 
								    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
									
									vect_exec7 = tmp;
								}
								
								break;
							}
						}

						break;
					}
     				case 0x00020000:
					{
						v_flt 		= (float*)t[j+1];
						vio 		= v_flt[0]*1000.0;
						vfo 		= v_flt[0];
						v_flt[0] 	= val[vi];
						
						break;
					}
                    case 0x00030000:
					{
						v_var 	= (VAR*)t[j+1];
						vio 	= v_var->val * v_var->scale;
						vfo 	= v_var->val;
						
						VAR_Update(v_var, val[vi], 0, 1);
						
						break;
					}
                    case 0x000D0000:
					{
						tmp 	= (int*)t[j+1];
						v_var 	= HART_Lookup(tmp[0], &ui, (int*)&HART_DV_Table);
						vio 	= v_var->val * v_var->scale;
						vfo 	= v_var->val;
						
						VAR_Update(v_var, val[vi], 0, 1);
						
						break;
					}
                    case 0x000E0000:
					{
						v_var 		 = (VAR*)t[j+1];
						vio 		 = v_var->class;
						vfo 		 = v_var->class;
						v_var->class = val[vi];
						
						break;
					}
                    case 0x00040000:
					{
						v_var 	= (VAR*)t[j+1];
						vio 	= v_var->unit;
						vfo 	= v_var->unit;
						
						VAR_Set_Unit(v_var, val[vi], 0);
						
						break;
					}
                    case 0x00090000:
					{
						v_var 			 = (VAR*)t[j+1];
						vio 			 = v_var->calc_unit;
						vfo 			 = v_var->calc_unit;
						v_var->calc_unit = val[vi];
						v_var->unit 	 = v_var->calc_unit;	 
						
						break;
					}
                    default:	 
					{
						v_var 	= (VAR*)t[j+1];
      					vio 	= 0;
						vfo 	= 0;

						if (ai==1)
							VAR_Set_Unit_Param(v_var, (t[j]&0x00FF0000), val[vi], 1, 1);
						else if ((IEEE_mode == 4) && (ai==1))
							VAR_Set_Unit_Param(v_var, (t[j]&0x00FF0000), val[vi], 2, 1);
						else
							VAR_Set_Unit_Param(v_var, (t[j]&0x00FF0000), val[vi], 0, 1);
						
						break;
					}
				}

				if ( t[j] & 0x04000000 )
				{
					if (SYS_LOG_ENABLED & 0x02) 
						CfgLog(id, 1, PORT[id].func, t[j]&0xFFFF, val[vi], vali[vi], vfo, vio);

					CHANGE = 1;

					 
					HCHANGE[0] = 1;
					HCHANGE[1] = 1;
					HCHANGE_COUNTER++;
					 
				}

				vi++;
			}

			if ( SAVE_MODE && CHANGE )
			{
				if ( !Write_CFG_USER() )
				{ 
					MB_exception(id, 8);
					return;
				}
			}
		}
		else if ( c & !r )		
		{ 
			idx = PORT[id].i;	 
			
			switch(PORT[id].func)
			{
				case 5:
				{
					tmp0  = (unsigned int) (RXbuf[id].buff[idx] & 0xFF);
					tmp0  = tmp0 << 8;
					tmp0 |= (unsigned int) (RXbuf[id].buff[idx+1] & 0xFF);

					switch (t[i]&0x00FF0000)
					{
						case 0:
						{
							v_coil 	= (COIL*)t[i+1];
							co 		= v_coil[0].val;
							
							if (tmp0==0x0000)
							{
								v_coil[0].val = 0;
								cv = 0;
							}
							else if (tmp0==0xFF00)
							{
								v_coil[0].val = 1;
								cv = 1;
							}
							else
							{ 
								MB_exception(id, 3);
								return;
							}

							switch(id)
							{
								case 0:
								{ 
									tmp = vect_exec0;
									vect_exec0 = v_coil[0].vect;
									
									if (vect_exec0!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec0	");
								    	asm("	ldi		0, AR2          ");	 
									    asm("	ldp		_vect_exec0     ");
									    asm("	ldi		@_vect_exec0, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec0 = tmp;
									} 
									
									 
									tmp 		= vect_exec8;
									vect_exec8 	= v_coil[0].vect2;
									
									if (vect_exec8!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec8	");
								    	asm("	ldi		0, AR2          ");	 
									    asm("	ldp		_vect_exec8     ");
									    asm("	ldi		@_vect_exec8, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec8 = tmp;
									}
									
									break;
								}
								case 1:	
								{ 
									tmp 		= vect_exec1;
									vect_exec1  = v_coil[0].vect;
									
									if (vect_exec1!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec1	");
								    	asm("	ldi		1, AR2          ");	 
									    asm("	ldp		_vect_exec1     ");
									    asm("	ldi		@_vect_exec1, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec1 = tmp;
									}   
									
									 
									tmp 		= vect_exec8;
									vect_exec8 	= v_coil[0].vect2;
									
									if (vect_exec8!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec8	");
								    	asm("	ldi		1, AR2          ");	 
									    asm("	ldp		_vect_exec8     ");
									    asm("	ldi		@_vect_exec8, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec8 = tmp;
									}
									
									break;
								}
        						case 2:	
								{ 
									tmp 		= vect_exec2;
									vect_exec2 	= v_coil[0].vect;
									
									if (vect_exec2!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec2	");
								    	asm("	ldi		2, AR2          ");	 
									    asm("	ldp		_vect_exec2     ");
									    asm("	ldi		@_vect_exec2, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec2 = tmp;
									}
									
									break;
								}
                                case 3:	
								{ 
									tmp 		= vect_exec3;
									vect_exec3  = v_coil[0].vect;
									
									if (vect_exec3!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec3	");
								    	asm("	ldi		3, AR2          ");	 
									    asm("	ldp		_vect_exec3     ");
									    asm("	ldi		@_vect_exec3, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec3 = tmp;
									}
									
									break;
								}
        						case 4:	
								{ 
									tmp 		= vect_exec4;
									vect_exec4 	= v_coil[0].vect;
									
									if (vect_exec4!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec4	");
								    	asm("	ldi		4, AR2          ");	 
									    asm("	ldp		_vect_exec4     ");
									    asm("	ldi		@_vect_exec4, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec4 = tmp;
									}
									
									break;
								}
        						case 5:	
								{ 
									tmp 		= vect_exec5;
									vect_exec5 	= v_coil[0].vect;
									
									if (vect_exec5!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec5	");
								    	asm("	ldi		5, AR2          ");	 
									    asm("	ldp		_vect_exec5     ");
									    asm("	ldi		@_vect_exec5, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec5 = tmp;
									}
									
									break;
								}
        						case 6:	
								{ 
									tmp 		= vect_exec6;
									vect_exec6 	= v_coil[0].vect;
									
									if (vect_exec6!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec6	");
								    	asm("	ldi		6, AR2          ");	 
									    asm("	ldp		_vect_exec6     ");
									    asm("	ldi		@_vect_exec6, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec6 = tmp;
									}
									
									break;
								}
        						case 7:	
								{ 
									tmp 		= vect_exec7;
									vect_exec7 	= v_coil[0].vect;
									
									if (vect_exec7!=(int*)0)
									{
										{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
										asm("		.global _vect_exec7	");
								    	asm("	ldi		7, AR2          ");	 
									    asm("	ldp		_vect_exec7     ");
									    asm("	ldi		@_vect_exec7, R0");
									    asm("	callnz	R0				");	 
									    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
										
										vect_exec7 = tmp;
									}
									
									break;
								}
							}

							break;
						}
                        default:
						{
							tmp1 = t[i]&0x00FF0000;
							tmp1 = tmp1 >> 16;
							tmp1--;
							tmp2 = 1;
							tmp2 = tmp2 << tmp1;
							tmp  = (int*)t[i+1];

							if (tmp[0]&tmp2) 
								co = 1;
							else 
								co = 0;

							if (tmp0==0xFF00)
							{
								tmp[0] |= tmp2;
								cv 		= 1;
							}
							else if (tmp0==0x0000)
							{
								tmp[0] &= (tmp2 ^ 0xFFFFFFFF);
								cv 		= 0;
							}
							else
							{ 
								MB_exception(id, 3);
								
								return;
							}

							break;
						}
					}

					if (t[i]&0x04000000)
					{
						if (SYS_LOG_ENABLED & 0x02) 
							CfgLog(id, 1, PORT[id].func, t[i]&0xFFFF, cv, cv, co, co);

						CHANGE = 1;

						 
						HCHANGE[0] = 1;
						HCHANGE[1] = 1;
						HCHANGE_COUNTER++;
						 
					}

					break;
				}
    			case 15:
				{
					if (((float)(n/8))>(float)RXbuf[id].buff[PORT[id].i-1])
					{ 
						MB_exception(id, 3);
						
						return;
					}

					k 	 = 0;
					tmp0 = (unsigned int) (RXbuf[id].buff[idx] & 0xFF);
					
					for (j=i;j<(2*n+i);j=(j+2))				 
					{
						if (k>=8)
						{
							k 	 = 0;	 
							idx++;		 
							tmp0 = (unsigned int) (RXbuf[id].buff[idx] & 0xFF);
						}

						switch (t[j]&0x00FF0000)
						{
							case 0:
							{
								v_coil  = (COIL*)t[j+1];
								co 		= v_coil[0].val;
								
								if (tmp0 & 0x01)
								{
									v_coil[0].val 	= 1;
									cv 				= 1;
								}
								else
								{
									v_coil[0].val 	= 0;
									cv 				= 0;
								}

								switch(id)
								{
									case 0:
									{ 
										tmp 		= vect_exec0;
										vect_exec0 	= v_coil[0].vect;
										
										if (vect_exec0!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec0	");
									    	asm("	ldi		0, AR2          ");	 
										    asm("	ldp		_vect_exec0     ");
										    asm("	ldi		@_vect_exec0, R0");
										    asm("	callnz	R0				");	 
										    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec0 = tmp;
										} 
										
										 
										tmp 		= vect_exec8;
										vect_exec8  = v_coil[0].vect2;
										
										if (vect_exec8!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec8	");
								    		asm("	ldi		0, AR2          ");	 
									    	asm("	ldp		_vect_exec8     ");
									    	asm("	ldi		@_vect_exec8, R0");
									    	asm("	callnz	R0				");	 
									    	{asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec8 = tmp;
										}
										
										break;
									}
									case 1:	
									{ 
										tmp 		= vect_exec1;
										vect_exec1  = v_coil[0].vect;
										
										if (vect_exec1!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec1	");
									    	asm("	ldi		1, AR2          ");	 
										    asm("	ldp		_vect_exec1     ");
										    asm("	ldi		@_vect_exec1, R0");
										    asm("	callnz	R0				");	 
										    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec1 = tmp;
										}
										
										 
										tmp 		= vect_exec8;
										vect_exec8  = v_coil[0].vect2;
										
										if (vect_exec8!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec8	");
								    		asm("	ldi		1, AR2          ");	 
									    	asm("	ldp		_vect_exec8     ");
									    	asm("	ldi		@_vect_exec8, R0");
									    	asm("	callnz	R0				");	 
									    	{asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec8 = tmp;
										}
										
										break;
									}
									case 2:	
									{ 
										tmp 		= vect_exec2;
										vect_exec2 	= v_coil[0].vect;
										
										if (vect_exec2!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec2	");
									    	asm("	ldi		2, AR2          ");	 
										    asm("	ldp		_vect_exec2     ");
										    asm("	ldi		@_vect_exec2, R0");
										    asm("	callnz	R0				");	 
										    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec2 = tmp;
										}
										
										break;
									}
									case 3:	
									{ 
										tmp 		= vect_exec3;
										vect_exec3 	= v_coil[0].vect;
										
										if (vect_exec3!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec3	");
									    	asm("	ldi		3, AR2          ");	 
										    asm("	ldp		_vect_exec3     ");
										    asm("	ldi		@_vect_exec3, R0");
										    asm("	callnz	R0				");	 
										    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec3 = tmp;
										}
										
										break;
									}
									case 4:	
									{ 
										tmp 		= vect_exec4;
										vect_exec4 	= v_coil[0].vect;
										
										if (vect_exec4!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec4	");
									    	asm("	ldi		4, AR2          ");	 
										    asm("	ldp		_vect_exec4     ");
										    asm("	ldi		@_vect_exec4, R0");
										    asm("	callnz	R0				");	 
										    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec4 = tmp;
										}
										
										break;
									}
									case 5:	
									{ 
										tmp 		= vect_exec5;
										vect_exec5 	= v_coil[0].vect;
										
										if (vect_exec5!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec5	");
									    	asm("	ldi		5, AR2          ");	 
										    asm("	ldp		_vect_exec5     ");
										    asm("	ldi		@_vect_exec5, R0");
										    asm("	callnz	R0				");	 
										    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec5 = tmp;
										}
										
										break;
									}
									case 6:	
									{ 
										tmp 		= vect_exec6;
										vect_exec6 	= v_coil[0].vect;
										
										if (vect_exec6!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec6	");
									    	asm("	ldi		6, AR2          ");	 
										    asm("	ldp		_vect_exec6     ");
										    asm("	ldi		@_vect_exec6, R0");
										    asm("	callnz	R0				");	 
										    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec6 = tmp;
										}
										
										break;
									}
									case 7:	
									{ 
										tmp 		= vect_exec7;
										vect_exec7 	= v_coil[0].vect;
										
										if (vect_exec7!=(int*)0)
										{
											{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
											asm("		.global _vect_exec7	");
									    	asm("	ldi		7, AR2          ");	 
										    asm("	ldp		_vect_exec7     ");
										    asm("	ldi		@_vect_exec7, R0");
										    asm("	callnz	R0				");	 
										    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
											
											vect_exec7 = tmp;
										}
										
										break;
									}
								}

								break;
							}
							default:
							{
								tmp1 = t[j]&0x00FF0000;
								tmp1 = tmp1 >> 16;
								tmp1--;
								tmp2 = 1;
								tmp2 = tmp2 << tmp1;
								tmp  = (int*)t[j+1];

								if (tmp[0]&tmp2) 
									co = 1;
								else 
									co = 0;

								if (tmp0 & 0x01)
								{
									tmp[0] |= tmp2;
									cv 		= 1;
								}
								else
								{
									tmp[0] &= (tmp2 ^ 0xFFFFFFFF);
									cv 		= 0;
								}

								break;
							}
						}

						if (t[j]&0x04000000)
						{
							if (SYS_LOG_ENABLED & 0x02) 
								CfgLog(id, 1, PORT[id].func, t[j]&0xFFFF, cv, cv, co, co);

							CHANGE = 1;

							 
							HCHANGE[0] = 1;
							HCHANGE[1] = 1;
							HCHANGE_COUNTER++;
							 
						}

						tmp0 = tmp0>>1;
						k++;
					}
					break;
				}
			}

			if (SAVE_MODE && CHANGE)
			{
				if (!Write_CFG_USER())
				{
					MB_exception(id, 8);
					
					return;
				}
			}
		}
		else if (c & r)		
		{ 
			k = n/8;
			
			if (n%8) 
				k++;

			for (z=0;z<(2+L_offset);z++)
				Put(&TXbuf[id], RXbuf[id].buff[z], 1);

			Put(&TXbuf[id], k, 1);

			k 	 = 0;
			tmp0 = 0x00;

			for (j=i;j<(2*n+i);j=(j+2))
			{
				if (k>=8)
				{
					Put(&TXbuf[id], tmp0, 1);
					
					k 	 = 0;	 
					tmp0 = 0x00;
				}

				tmp0 = tmp0>>1;

				switch (t[j]&0x00FF0000)
				{
					case 0:
					{
						v_coil = (COIL*)t[j+1];
						
						if (t[j] & 0x80000000) 
							break;
						else if (v_coil[0].val) 
							tmp0 |= 0x80;
						
						break;
					}
					default:
					{
						tmp1 = t[j]&0x00FF0000;
						tmp1 = tmp1 >> 16;
						tmp1--;
						tmp2 = 1;
						tmp2 = tmp2 << tmp1;
						tmp  = (int*)t[j+1];
						
						if (t[j] & 0x80000000) 
							break;
						else if (tmp[0] & tmp2) 
							tmp0 |= 0x80;
						
						break;
					}
				}

				k++;
			}

			if (k>0)
			{ 
				for (j=k;j<8;j++)
					tmp0 = tmp0>>1;		 
				
				Put(&TXbuf[id], tmp0, 1);
			}
		}
		else			
		{ 
			for (z=0;z<(2+L_offset);z++)
				Put(&TXbuf[id], RXbuf[id].buff[z], 1);
		
			Put(&TXbuf[id], n*2*ai, 1);

			for (j=i;j<(2*n+i);j=(j+2))				
			{ 
				not_a_num = 0;

				switch (t[j]&0x00FF0000)
				{
					case 0x000C0000:
					{
						val[0] = t[j+1];
						
						break;
					}
					case 0x00010000:
					{
						v_int  = (int*)t[j+1];
						val[0] = v_int[0];
						
						break;
					}
					case 0x000B0000:
					{
						v_regvect = (REGVECT*)t[j+1];
						val[0] 	  = v_regvect[0].val;
						
						break;
					}
					case 0x00020000:
					{
						v_flt  = (float*)t[j+1];
						val[0] = v_flt[0];
						
						break;
					}
					case 0x00030000:
					{
						v_var = (VAR*)t[j+1];

						if (ai==1)
							val[0] = round(v_var->val * v_var->scale,0);
						else if (IEEE_mode == 4)
							val[0] = round(v_var->val * v_var->scale_long,0);
						else
						{
							if (v_var->STAT & 0x00000008) 
								not_a_num = 1;
							else 
								not_a_num = 0;
							
							val[0] = v_var->val;
						}
						
						break;
					}
					case 0x000D0000:
					{
						tmp   = (int*)t[j+1];
						v_var = HART_Lookup(tmp[0], &ui, (int*)&HART_DV_Table);

						if (ai==1)
							val[0] = round(v_var->val * v_var->scale,0);
						else if (IEEE_mode == 4)
							val[0] = round(v_var->val * v_var->scale_long,0);
						else
						{
							if (v_var->STAT & 0x00000008) 
								not_a_num = 1;
							else 
								not_a_num = 0;
							
							val[0] = v_var->val;
						}
						
						break;
					}
					case 0x000E0000:
					{
						v_var  = (VAR*)t[j+1];
						val[0] = v_var->class;
						
						break;
					}
					case 0x00040000:
					{
						v_var  = (VAR*)t[j+1];
						val[0] = v_var->unit;
						
						break;
					}
					case 0x00090000:
					{
						v_var  = (VAR*)t[j+1];
						val[0] = v_var->calc_unit;
						
						break;
					}
					default:	 
					{
						v_var = (VAR*)t[j+1];

						if (ai==1)
							val[0] = VAR_Get_Unit_Param(v_var, (t[j]&0x00FF0000), 1, 1);
						else if ((IEEE_mode == 4) && (ai==1))
							val[0] = VAR_Get_Unit_Param(v_var, (t[j]&0x00FF0000), 2, 1);
						else
							val[0] = VAR_Get_Unit_Param(v_var, (t[j]&0x00FF0000), 0, 1);
						
						break;
					}
				}

				if (t[j]&0x80000000)		 
					not_a_num = 1;
			
				switch(ai)
				{
					case 1:
					{ 
						if (not_a_num)
							tmp0 = NaN_val_int;
						else
						{
							if((t[j]&0x00FF0000)==0x00010000)
								 tmp0 = v_int[0];
							else if((t[j]&0x00FF0000)==0x000B0000)
								 tmp0 = v_regvect[0].val;
							else
							{
								if((t[j]&0x00FF0000)==0x00020000) 
									val[0] = round(val[0] * 100.0,0);
								
								tmp0 = (int)val[0];
							}
						}

						tmp1 = tmp0 >> 8;

						Put(&TXbuf[id], tmp1, 1);
						Put(&TXbuf[id], tmp0, 1);
						
						break;
					}
					case 2:
					{ 
						if (IEEE_mode == 4)
						{
							if (not_a_num)
								tmp0 = NaN_val_int;
							else
							{
								if((t[j]&0x00FF0000)==0x00010000)
									 tmp0 = v_int[0];
								else if((t[j]&0x00FF0000)==0x000B0000)
									 tmp0 = v_regvect[0].val;
								else
								{
									if((t[j]&0x00FF0000)==0x00020000) 
										val[0] = round(val[0] * 1000.0,0);
									
									tmp0 = (int)val[0];
								}
							}
						}
						else
						{
							if (not_a_num)
								tmp0 = NaN_val_flt;
							else
								tmp0 = TOIEEE(val[0]);
						}

						tmp1 = tmp0 >> 8;
						tmp2 = tmp1 >> 8;
						tmp3 = tmp2 >> 8;

						switch (IEEE_mode)
						{
							case 4:	 
							case 0:
							{ 
								Put(&TXbuf[id], tmp3, 1);
								Put(&TXbuf[id], tmp2, 1);
								Put(&TXbuf[id], tmp1, 1);
								Put(&TXbuf[id], tmp0, 1);
								
								break;
							}
							case 1:
							{ 
								Put(&TXbuf[id], tmp1, 1);
								Put(&TXbuf[id], tmp0, 1);
								Put(&TXbuf[id], tmp3, 1);
								Put(&TXbuf[id], tmp2, 1);
								
								break;
							}
							case 2:
							{ 
								Put(&TXbuf[id], tmp0, 1);
								Put(&TXbuf[id], tmp1, 1);
								Put(&TXbuf[id], tmp2, 1);
								Put(&TXbuf[id], tmp3, 1);
								
								break;
							}
							case 3:
							{ 
								Put(&TXbuf[id], tmp2, 1);
								Put(&TXbuf[id], tmp3, 1);
								Put(&TXbuf[id], tmp0, 1);
								Put(&TXbuf[id], tmp1, 1);
								
								break;
							}
						}
						break;
					}		
				}
			}
		}
	}

	if (!PORT[id].r)
	{ 
		switch(PORT[id].func)
		{
			case 6:
			case 5:
			{
				for (z=0;z<(6+L_offset);z++)
					Put(&TXbuf[id], RXbuf[id].buff[z], 1);
			
				break;
			}
			case 16:
			case 15:
			{
				n = PORT[id].n * PORT[id].ai;
	
				for (z=0;z<(4+L_offset);z++)
					Put(&TXbuf[id], RXbuf[id].buff[z], 1);
		
				Put(&TXbuf[id], (n>>8), 1);
				Put(&TXbuf[id], n, 1);
				
				break;
			}
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_Calibrate(int id)
{
	unsigned int mode;					 
	unsigned int t;						 
	unsigned int tmp0,tmp1,tmp2,tmp3;	 
	int i, z;							 
	float val[11];						 
	float v;							 
	int L_offset;						 

	if (PORT[id].LONG_ADDRESS) 
		L_offset = 4;
	else 
		L_offset = 0;

	mode =  (unsigned int) (RXbuf[id].buff[2+L_offset] & 0xFF);

	 
	t  = (RXbuf[id].buff[6+L_offset] & 0xFF);
	t  = t<<8;
	t |= (RXbuf[id].buff[5+L_offset] & 0xFF);
	t  = t<<8;
	t |= (RXbuf[id].buff[4+L_offset] & 0xFF);
	t  = t<<8;
	t |= (RXbuf[id].buff[3+L_offset] & 0xFF);
	v = FMIEEE(t);

	switch (mode)
	{
		case  1: VAR_Update(&REG_STREAM_SELECT, v, 0, 0);	break;
		case  2: VAR_Update(&REG_CAL_OIL, 		v, 0, 0);	break;
		case  3: VAR_Update(&REG_CAL_WATER, 	v, 0, 0);	break;
		case  4: VAR_Update(&REG_SALINITY, 		v, 0, 0);	break;
		case  5: VAR_Update(&OIL_P0, 			v, 0, 0);	break;
		case  6: VAR_Update(&OIL_P1, 			v, 0, 0);	break;
		case  7: VAR_Update(&REG_OIL_ADJ, 		v, 0, 0);	break;
		case  8: VAR_Update(&REG_OIL_INDEX, 	v, 0, 0);	break;
		case  9: VAR_Update(&REG_WATER_ADJ, 	v, 0, 0);	break;
		case 10: VAR_Update(&REG_WATER_INDEX, 	v, 0, 0);	break;
		case 11: ANALYZER_MODE.val = v;						break;
		case 12: Density_Correction_Mode.val = v;			break;
	}

	if (mode>0)
	{
		CHANGE = 1;

		 
		HCHANGE[0] = 1;
		HCHANGE[1] = 1;
		HCHANGE_COUNTER++;
		 
	}

	for (z=0;z<(3+L_offset);z++)
		Put(&TXbuf[id], RXbuf[id].buff[z], 1);
	
    val[0]  = REG_STREAM_SELECT.calc_val;
    val[1]  = REG_SALINITY.calc_val;
    val[2]  = OIL_P0.calc_val;
    val[3]  = OIL_P1.calc_val;
    val[4]  = REG_OIL_ADJ.calc_val;
    val[5]  = REG_OIL_INDEX.calc_val;
    val[6]  = REG_WATER_ADJ.calc_val;
    val[7]  = REG_WATER_INDEX.calc_val;
    val[8]  = REG_EMULSION_PHASE.calc_val;
    val[9]  = ANALYZER_MODE.val;
    val[10] = Density_Correction_Mode.val;

	for (i=0;i<11;i++)
	{
		tmp0 = TOIEEE(val[i]);
		tmp1 = tmp0 >> 8;
		tmp2 = tmp1 >> 8;
		tmp3 = tmp2 >> 8;

		 
		Put(&TXbuf[id], tmp0, 1);
		Put(&TXbuf[id], tmp1, 1);
		Put(&TXbuf[id], tmp2, 1);
		Put(&TXbuf[id], tmp3, 1);
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL_0(void)
{
	MB_POLL(0);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL_1(void)
{
	MB_POLL(1);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL_2(void)
{
	MB_POLL(2);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL_3(void)
{
	MB_POLL(3);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL_4(void)
{
	MB_POLL(4);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL_5(void)
{
	MB_POLL(5);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL_6(void)
{
	MB_POLL(6);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL_7(void)
{
	MB_POLL(7);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY_0(void)
{
	MB_RETRY(0);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY_1(void)
{
	MB_RETRY(1);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY_2(void)
{
	MB_RETRY(2);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY_3(void)
{
	MB_RETRY(3);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY_4(void)
{
	MB_RETRY(4);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY_5(void)
{
	MB_RETRY(5);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY_6(void)
{
	MB_RETRY(6);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY_7(void)
{
	MB_RETRY(7);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_POLL(int id)
{
	int i;										 
	unsigned int tmp, tmpA, tmpB, tmpC, tmpD;	 
	MPKT* p;									 

	if (!PORT[id].PRESENT) 
		return;

	if ((id<0) || (id>3)) 
		return;

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (PORT[id].Slave != 0)
	{
		Modbus_Initialize(id);
		{asm("	pop		ST			");};
		
		return;
	}

	Timer_Insert(&PORT[id].TMR_Poll,0,3);
	Timer_Insert(&PORT[id].TMR_Retry,0,3);

	p = (MPKT*) List_Pop(&PORT[id].MASTER);

	if ( p == (MPKT*)0 )
	{ 
		Timer_Insert(&PORT[id].TMR_Poll,0,1);
		{asm("	pop		ST			");};
		
		return;
	}

	Clear(&TXbuf[id]);
	
	PORT[id].Received_PKT = 0;

	switch (p->func & 0xFF)
	{ 
		case 5:
		{ 
			Put(&TXbuf[id],  p->slave, 		1);
			Put(&TXbuf[id],  p->func, 		1);
			Put(&TXbuf[id], (p->addr-1)>>8, 1);
			Put(&TXbuf[id], (p->addr-1), 	1);
			
			if (p->v[0]!=0.0)
			{
				Put(&TXbuf[id], 0xFF, 1);
				Put(&TXbuf[id], 0x00, 1);
			}
			else
			{
				Put(&TXbuf[id], 0x00, 1);
				Put(&TXbuf[id], 0x00, 1);
			}
			
			PORT[id].i_main = 6;
			
			break;
		}
        case 3:
		{ 
			Put(&TXbuf[id],  p->slave, 		1);
			Put(&TXbuf[id],  p->func, 		1);
			Put(&TXbuf[id], (p->addr-1)>>8, 1);
			Put(&TXbuf[id], (p->addr-1), 	1);
			
			if (p->func&0x0100)
			{
				Put(&TXbuf[id], (p->num>>8), 1);
				Put(&TXbuf[id], (p->num), 	 1);
				
				PORT[id].i_main = (p->num*2) + 3;
			}
			else
			{
				Put(&TXbuf[id], (p->num*2>>8), 	1);
				Put(&TXbuf[id], (p->num*2), 	1);
				
				PORT[id].i_main = (p->num*4) + 3;
			}
			
			break;
		}
        case 16:
		{
			if (p->num>10) 
				p->num = 10;
			
			Put(&TXbuf[id],  p->slave, 		1);
			Put(&TXbuf[id],  p->func, 		1);
			Put(&TXbuf[id], (p->addr-1)>>8, 1);
			Put(&TXbuf[id], (p->addr-1), 	1);

			if (p->func & 0x0100)
			{
				Put(&TXbuf[id], (p->num>>8), 1);
				Put(&TXbuf[id], (p->num), 	 1);
				Put(&TXbuf[id], (p->num*2),  1);

				for (i=0;i<p->num;i++)
				{
					if (p->int_ptr!=(int*)0)
						tmp = p->int_ptr[i];
					else if (p->flt_ptr!=(float*)0)
						tmp = p->flt_ptr[i];
					else
						tmp = p->v[i];
					
					 
					tmpB = tmp;
					tmpA = tmpB>>8;
					
					Put(&TXbuf[id], tmpA, 1);
					Put(&TXbuf[id], tmpB, 1);
					 
				}
			}
			else
			{
				Put(&TXbuf[id], (p->num*2>>8), 	1);
				Put(&TXbuf[id], (p->num*2), 	1);
				Put(&TXbuf[id], (p->num*2*2), 	1);

				for (i=0;i<p->num;i++)
				{
					if (p->int_ptr!=(int*)0)
						p->v[i] = p->int_ptr[i];
					else if (p->flt_ptr!=(float*)0)
						p->v[i] = p->flt_ptr[i];
					
					tmp = TOIEEE(p->v[i]);

					 
					tmpD = tmp;
					tmpC = tmpD>>8;
					tmpB = tmpC>>8;
					tmpA = tmpB>>8;
					
					Put(&TXbuf[id], tmpC, 1);
					Put(&TXbuf[id], tmpD, 1);
					Put(&TXbuf[id], tmpA, 1);
					Put(&TXbuf[id], tmpB, 1);
					 
				}
			}

			PORT[id].i_main = 6;
			
			break;
		}
	}

	if (p->func)
	{
		Prepare_TX(id, 0);
		List_Push(&PORT[id].MASTER, (GENERIC*)p);
		Timer_Insert(&PORT[id].TMR_Retry,0,1);
	}
	else
		Timer_Insert(&PORT[id].TMR_Poll,0,1);
	   
            
	if(id==2)        
	{
		if(p->slave==2)
			PORT2_LIQ_TEMP++;
		
		if(p->slave==3)
			PORT2_GAS_TEMP++; 
		
		PORT[id].p = (int*)p; 
	}
	
	if(id==3) 
		PORT3_TEMP++;
     
	
	{asm("	pop		ST			");};
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RETRY(int id)
{
	float f[10];			 
	unsigned int l[10];	 
	unsigned int tmp;		 
	int n;					 
	int i;					 
	int L_offset;			 
	BOOL failed;			 
	MPKT* p;				 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	if (PORT[id].LONG_ADDRESS) 
		L_offset = 4;
	else 
		L_offset = 0;

	if ( (!PORT[id].Received_PKT) || ((TXbuf[id].buff[1+L_offset] & 0xFF) != (RXbuf[id].buff[1+L_offset] & 0xFF)) )
	{ 
		PORT[id].nr++;
		PORT[id].NUM_RETRIES++;

		if (PORT[id].nr>=PORTCFG[id].N_retry)	 
			failed = 1;
		else
		{ 
			MB_POLL(id);
			{asm("	pop		ST			");};
			
			return;
		}
	}
	else
		failed = 0;

	 
	p = (MPKT*) List_Pop(&PORT[id].MASTER);
	
	 
	
	if ((TXbuf[id].buff[1+L_offset] & 0xFF) == 3)
	{ 
		n = (RXbuf[id].buff[2+L_offset] & 0xFF);

		if ((((n%4)==0) && ((n/4)<=10) && ((n/4)>0)) || failed)
		{ 
			if (failed)
				n = 10;
			else
				n /= 4;
			
			for (i=0;i<n;i++)
			{
				if (failed)
					f[i] = 0.0;
				else
				{ 
					if ((p->func & 0x0200) || (p->func & 0x2000))
					{ 
						tmp  = (unsigned int) (RXbuf[id].buff[(i*4)+3+0+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+1+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+2+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+3+L_offset] & 0xFF);	 
					}
					else if (p->func & 0x0800)
					{ 
						tmp  = (unsigned int) (RXbuf[id].buff[(i*4)+3+3+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+2+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+1+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+0+L_offset] & 0xFF);	 
					}
					else if (p->func & 0x1000)
					{ 
						tmp  = (unsigned int) (RXbuf[id].buff[(i*4)+3+1+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+0+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+3+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+2+L_offset] & 0xFF);	 
					}
					else 
					{ 
						tmp  =  (unsigned int) (RXbuf[id].buff[(i*4)+3+2+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+3+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+0+L_offset] & 0xFF);	 
						tmp  = tmp << 8;
						tmp |= (unsigned int) (RXbuf[id].buff[(i*4)+3+1+L_offset] & 0xFF);	 
					}

					if (p->func & 0x2000)
					{ 
						f[i] = tmp;
						l[i] = tmp;
					}
					else
					{
						if (tmp==0x7FA00000) 
							f[i] = NaN_val;
						else 
							f[i] = FMIEEE(tmp);
						
						l[i] = f[i];
					}
				}
			}
		}
	}

	if (p!=(MPKT*)0)
	{ 
		PORT[id].p 		= (int*)p;
		PORT[id].failed = failed;
		PORT[id].f 		= f;
		PORT[id].l 		= l;
		PORT[id].data 	= 3+L_offset;

		if (p->rxvect != (int*)0) 
			MB_RX(id);

		if ((p->n==-1)||(p->n>1))
		{
			if (p->n>0) 
				p->n--;
			
			List_Add(&PORT[id].MASTER, (GENERIC*)p);
		}
		else
		{
			p->n = 0;
			
			List_Add(&LIST_MASTER_EMPTY, (GENERIC*)p);
		}
	}

	PORT[id].nr = 0;
	 

	MB_POLL(id);
	{asm("	pop		ST			");};
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_Init_Master(int id)
{
	MPKT* p;	 
	BOOL r;		 
	int n;		 

	if (DEMO) 
		return;

	if (EXT_ANALOG_OUT && (id==DCM_PORT.val))
	{
		for (n=5;n<=8;n++)
		{
			r = 0;

			switch(n)
			{
				case 5:	
				{ 
					p = Master_Create((int*) MB_RX_DAC_Aout6_7, -1, 11, 16|0x0100, 8212, 2, 0.0);
					
					if (p!=(MPKT*)0) 
						p->int_ptr = &DAC_INT[n];
					
					break;
				}
				case 7:	
				{ 
					p = Master_Create((int*) MB_RX_DAC_Aout8_9, -1, 12, 16|0x0100, 8212, 2, 0.0);
					
					if (p!=(MPKT*)0) 
						p->int_ptr = &DAC_INT[n];
					
					break;
				}
				default:
				{
					p = (MPKT*) 0;
					
					continue;
				}
			}

			r = List_Add(&PORT[DCM_PORT.val].MASTER, (GENERIC*)p);
		}
	}

	switch (ANALYZER_MODE.val)
	{
		case 2:
		case 3:
		case 0:
		case 1:
		{ 
			if (id==DCM_PORT.val)
			{
				 
				p = Master_Create((int*) MB_RX_CA1, 	  -1, 1, 3|0x2000, 	39, 4,    0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_CT1, 	  -1, 1, 3|0x2000, 	52, 8,    0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				 
				p = Master_Create((int*) MB_RX_COR0CFG,   -1, 1, 3, 			   189, 5,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				 
				p = Master_Create((int*) MB_RX_2, 		  -1, 1, 3, 			   245, 9,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				 
				p = Master_Create((int*) MB_RX_3, 		  -1, 1, 3, 			   325, 1,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				 
				p = Master_Create((int*) MB_RX_COR1COILS, -1, 1, 3, 			   285, 4,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				 
				p = Master_Create((int*) MB_RX_5, 		  -1, 1, 3, 			   245, 1,  0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 
			}

			if (ALYESKA.ENABLED && (id==1))
			{ 
				Timer_Create(&TMR_ALYESKA_PLC, 1.0, -1, (int*)MB_TX_A_PLC, 0);
				Timer_Insert(&TMR_ALYESKA_PLC, 0, 1);
			}

			break;
		}
		case 6:
		{ 
			if (id==2)
			{
				 
				p = Master_Create((int*) MB_RX_CA1,   		-1, 2, 3|0x2000,  39, 4,   0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_CT1,   		-1, 2, 3|0x2000,  52, 8,   0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_MCFU1, 		-1, 2, 3|0x2000, 132, 1,   0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);

				p = Master_Create((int*) MB_RX_CA2,   		-1, 3, 3|0x2000,  39, 4,   0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_CT2,   		-1, 3, 3|0x2000,  52, 8,   0);				
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_MCFU2, 		-1, 3, 3|0x2000, 132, 1,   0);				
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				 
				p = Master_Create((int*) MB_RX_C1, 			-1, 2, 3, 			  245, 9, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				 
				p = Master_Create((int*) MB_RX_C2, 			-1, 3, 3, 			  245, 9, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 
				
				 
				p = Master_Create((int*) MB_RX_COR1COILS, 	-1, 2, 3, 			  285, 4, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				
				p = Master_Create((int*) MB_RX_COR2COILS, 	-1, 3, 3, 			  285, 4, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 
				
				 
				p = Master_Create((int*) MB_RX_COR0CFG, 	-1, 2, 3, 			  189, 5, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);

				p = Master_Create((int*) MB_RX_COR0CFGA, 	-1, 2, 3, 			  237, 1, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);  
				
				p = Master_Create((int*) MB_RX_COR0CFGB, 	-1, 2, 3|0x0100,  313, 1, 0.0);	    
				List_Add(&PORT[id].MASTER, (GENERIC*)p);  
				
				p = Master_Create((int*) MB_RX_COR0CFGC, 	-1, 2, 3|0x0100,   39, 1, 0.0);	 
				List_Add(&PORT[id].MASTER, (GENERIC*)p);   
				
				p = Master_Create((int*) MB_RX_COR0CFGD, 	-1, 2, 3, 			  149, 1, 0.0);	 
				List_Add(&PORT[id].MASTER, (GENERIC*)p);

				p = Master_Create((int*) MB_RX_COR1CFG, 	-1, 3, 3, 			  189, 5, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);

				p = Master_Create((int*) MB_RX_COR1CFGA, 	-1, 3, 3, 			  237, 1, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);  
				
				p = Master_Create((int*) MB_RX_COR1CFGB, 	-1, 3, 3|0x0100,  313, 1, 0.0);	    
				List_Add(&PORT[id].MASTER, (GENERIC*)p);  
				
				p = Master_Create((int*) MB_RX_COR1CFGC, 	-1, 3, 3|0x0100,   39, 1, 0.0);	 
				List_Add(&PORT[id].MASTER, (GENERIC*)p);   
				
				p = Master_Create((int*) MB_RX_COR1CFGD, 	-1, 3, 3, 			  149, 1, 0.0);	 
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				   
				
				   
				p = Master_Create((int*) MB_RX_COR4CFGB, 	-1, 1, 3|0x0100,  313, 1, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);   
				   
				
			}
			else if (id==3)
			{    
				     	
				p = Master_Create((int*) MB_RX_COR4CFGB, 	 -1, 1, 3|0x0100, 313, 1, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);   
				     
				
				 
				p = Master_Create((int*) MB_RX_CAP1, 		 -1, 1, 3|0x2000, 60, 2, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				 
				p = Master_Create((int*) MB_RX_C4, 			 -1, 1, 3, 			  401, 6, 0.0);
				List_Add(&PORT[id].MASTER, (GENERIC*)p);
				 

				if (CCM_2LIQ)
				{ 
					p = Master_Create((int*) MB_RX_CA3, 	 -1, 4, 3|0x2000, 39, 4, 0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_CT3, 	 -1, 4, 3|0x2000, 52, 8, 0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_MCFU3, 	 -1, 4, 3|0x2000,132, 1, 0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);  
					
					    
					p = Master_Create((int*) MB_RX_COR2CFGB, -1, 4, 3|0x0100, 313, 1, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);  
					
					 
					p = Master_Create((int*) MB_RX_COR2CFGC, -1, 4, 3|0x0100,  39, 1, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2GAS)
				{ 
					p = Master_Create((int*) MB_RX_CA4, 	 -1, 5, 3|0x2000, 39, 4,  0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_CT4, 	 -1, 5, 3|0x2000, 52, 8,  0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_MCFU4, 	 -1, 5, 3|0x2000,132, 1,  0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);   
					
					p = Master_Create((int*) MB_RX_COR3CFGB, -1, 5, 3|0x0100, 313, 1, 0.0);     
					List_Add(&PORT[id].MASTER, (GENERIC*)p);  
					
					p = Master_Create((int*) MB_RX_COR3CFGC, -1, 5, 3|0x0100, 39, 1, 0.0);	 
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2LIQ)
				{ 
					p = Master_Create((int*) MB_RX_C3, 		 -1, 4, 3, 			 245, 9, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2GAS)
				{ 
					p = Master_Create((int*) MB_RX_C5, 		 -1, 5, 3, 			 245, 9, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2LIQ)
				{ 
					p = Master_Create((int*) MB_RX_COR2CFG,  -1, 4, 3, 			 189, 5, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);

					p = Master_Create((int*) MB_RX_COR2CFGA, -1, 4, 3, 			 237, 1, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_COR2CFGD, -1, 4, 3, 			 149, 1, 0.0);	 
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (CCM_2GAS)
				{ 
					p = Master_Create((int*) MB_RX_COR3CFG,  -1, 5, 3, 			 189, 5, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);

					p = Master_Create((int*) MB_RX_COR3CFGA, -1, 5, 3, 			 237, 1, 0.0);
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
					
					p = Master_Create((int*) MB_RX_COR3CFGD, -1, 5, 3, 			 149, 1, 0.0);	 
					List_Add(&PORT[id].MASTER, (GENERIC*)p);
				}

				if (DIO_TOTALIZER_CONTROL.val != 1)
				{ 
					DIO_TOTALIZER_CONTROL.val = 0;
					
					Totalizer_Control(id);
					Clear_Accumulators(id);     
					
					FC[0].enable_PULSE 		  = 0;
					FC[0].enable_GROSS 		  = 1;
					FC[0].enable_NET 		  = 1;
					FC[0].USE_PDI_TEMP 		  = 1;
					FC[0].USE_PDI_SALINITY 	  = 1;
					FC[0].MAN_TEMP 			  = 0;
					FC[0].MAN_SALINITY 		  = 0;
					FC[0].MAN_WATERCUT 		  = 0;
					FC[0].MAN_DENSITY 		  = 0;
					FC[0].MAN_PRESSURE 		  = 0;
					FC[0].MAN_FLOW 			  = 0;
					AO[1].v.val 			  = -2;
					AO[2].v.val 			  = -2;
					AO[1].PID_setpoint		  = CCM_SETPOINT_LEVEL[0].val;
					AO[2].PID_setpoint		  = CCM_SETPOINT_PRESSURE[0].val;
				}
			}

			break;
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX(int id)
{
	MPKT* p;	 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	p = (MPKT*)PORT[id].p;

	switch(id)
	{
		case 0:
		{
			vect_pt0 = p->rxvect;
	
			{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
			asm("		.global _vect_pt0  ");
		    asm("	ldp		_vect_pt0      ");
		    asm("	ldi		@_vect_pt0, R0 ");
		    asm("	ldi		0, AR2 		   ");	 
		    asm("	callnz	R0		   	   ");	 
		    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
			
			break;
		}
		case 1:
		{
			vect_pt1 = p->rxvect;

		    {asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
			asm("		.global _vect_pt1  ");
		    asm("	ldp		_vect_pt1      ");
		    asm("	ldi		@_vect_pt1, R0 ");
		    asm("	ldi		1, AR2 		   ");	 
		    asm("	callnz	R0		   	   ");	 
		    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};

			break;
		}
		case 2:
		{
			vect_pt2 = p->rxvect;
		    
			{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
			asm("		.global _vect_pt2  ");
		    asm("	ldp		_vect_pt2      ");
		    asm("	ldi		@_vect_pt2, R0 ");
		    asm("	ldi		2, AR2 		   ");	 
		    asm("	callnz	R0		   	   ");	 
		    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
			
			break;
		}
		case 3:
		{
			vect_pt3 = p->rxvect;
		    
			{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
			asm("		.global _vect_pt3  ");
		    asm("	ldp		_vect_pt3      ");
		    asm("	ldi		@_vect_pt3, R0 ");
		    asm("	ldi		3, AR2 		   ");	 
		    asm("	callnz	R0		   	   ");	 
		    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
			
			break;
		}
		case 4:
		{
			vect_pt4 = p->rxvect;
		    
			{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
			asm("		.global _vect_pt4  ");
		    asm("	ldp		_vect_pt4      ");
		    asm("	ldi		@_vect_pt4, R0 ");
		    asm("	ldi		4, AR2 		   ");	 
		    asm("	callnz	R0		   	   ");	 
		    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
			
			break;
		}
		case 5:
		{
			vect_pt5 = p->rxvect;
		    
			{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
			asm("		.global _vect_pt5  ");
		    asm("	ldp		_vect_pt5      ");
		    asm("	ldi		@_vect_pt5, R0 ");
		    asm("	ldi		5, AR2 		   ");	 
		    asm("	callnz	R0		   	   ");	 
		    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
			
			break;
		}
		case 6:
		{
			vect_pt6 = p->rxvect;
		    
			{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
			asm("		.global _vect_pt6  ");
		    asm("	ldp		_vect_pt6      ");
		    asm("	ldi		@_vect_pt6, R0 ");
		    asm("	ldi		6, AR2 		   ");	 
		    asm("	callnz	R0		   	   ");	 
		    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
			
			break;
		}
		case 7:
		{
			vect_pt7 = p->rxvect;
			
			{asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
			asm("		.global _vect_pt7  ");
			asm("	ldp		_vect_pt7      ");
			asm("	ldi		@_vect_pt7, R0 ");
			asm("	ldi		7, AR2 		   ");	 
			asm("	callnz	R0		   	   ");	 
			{asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};
			
			break;
		}
	}

	{asm("	pop		ST			");};
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_MCFU1(int id)
{
	int m,t,u;	 

	if (PORT[id].failed) 
		return;

	m 					 = RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	t 					 = RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	u 					 = Join_MassTime_Units(m,t);
	COR[0].mcf.unit 	 = u;
	COR[0].mcf.calc_unit = u;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_MCFU2(int id)
{
	int m,t,u;	 

	if (PORT[id].failed) 
		return;

	m					 = RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	t					 = RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	u 					 = Join_MassTime_Units(m,t);
	COR[1].mcf.unit 	 = u;
	COR[1].mcf.calc_unit = u;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_MCFU3(int id)
{
	int m,t,u;	 

	if (PORT[id].failed) 
		return;

	m					 = RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	t					 = RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	u 					 = Join_MassTime_Units(m,t);
	COR[2].mcf.unit 	 = u;
	COR[2].mcf.calc_unit = u;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_MCFU4(int id)
{
	int m,t,u;	 

	if (PORT[id].failed) 
		return;

	m					 = RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	t					 = RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	u 					 = Join_MassTime_Units(m,t);
	COR[3].mcf.unit 	 = u;
	COR[3].mcf.calc_unit = u;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR0CFGA(int id)
{
	int* vect;  

	if (PORT[id].failed) 
		return;

	vect 			 = COR[0].mcf.vect2;
	COR[0].mcf.vect2 = (int*)0;
	
	VAR_Update(&COR[0].mcf, PORT[id].f[0], 0, 0);
	
	COR[0].mcf.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR1CFGA(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 			 = COR[1].mcf.vect2;
	COR[1].mcf.vect2 = (int*)0;
	
	VAR_Update(&COR[1].mcf, PORT[id].f[0], 0, 0);
	
	COR[1].mcf.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR2CFGA(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 			 = COR[2].mcf.vect2;
	COR[2].mcf.vect2 = (int*)0;
	
	VAR_Update(&COR[2].mcf, PORT[id].f[0], 0, 0);
	
	COR[2].mcf.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR3CFGA(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 			 = COR[3].mcf.vect2;
	COR[3].mcf.vect2 = (int*)0;
	
	VAR_Update(&COR[3].mcf, PORT[id].f[0], 0, 0);
	
	COR[3].mcf.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR0CFGB(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 				 = COR[0].address.vect2;
	COR[0].address.vect2 = (int*)0;
	
	VAR_Update(&COR[0].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[0].address.vect2 = vect;
}  

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR1CFGB(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 				 = COR[1].address.vect2;
	COR[1].address.vect2 = (int*)0;
	
	VAR_Update(&COR[1].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[1].address.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR2CFGB(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 				 = COR[2].address.vect2;
	COR[2].address.vect2 = (int*)0;
	
	VAR_Update(&COR[2].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[2].address.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR3CFGB(int id)
{
	int* vect;	 

	if (PORT[id].failed) return;

	vect 				 = COR[3].address.vect2;
	COR[3].address.vect2 = (int*)0;
	
	VAR_Update(&COR[3].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[3].address.vect2 = vect;
} 

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR4CFGB(int id)
{
	int* vect;  

	if (PORT[id].failed) 
		return;

	vect 				 = COR[4].address.vect2;
	COR[4].address.vect2 = (int*)0;
	
	VAR_Update(&COR[4].address, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[4].address.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR0CFGC(int id)
{
	int* vect;  

	if (PORT[id].failed) return;

	vect 				   = COR[0].mass_unit.vect2;
	COR[0].mass_unit.vect2 = (int*)0;
	
	VAR_Update(&COR[0].mass_unit, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[0].mass_unit.vect2 = vect;
}  

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR1CFGC(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 				   = COR[1].mass_unit.vect2;
	COR[1].mass_unit.vect2 = (int*)0;
	
	VAR_Update(&COR[1].mass_unit, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[1].mass_unit.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR2CFGC(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 				   = COR[2].mass_unit.vect2;
	COR[2].mass_unit.vect2 = (int*)0;
	
	VAR_Update(&COR[2].mass_unit, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[2].mass_unit.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR3CFGC(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 				   = COR[3].mass_unit.vect2;
	COR[3].mass_unit.vect2 = (int*)0;
	
	VAR_Update(&COR[3].mass_unit, RXbuf[id].buff[PORT[id].data+ 1] & 0xFF, 0, 0);
	
	COR[3].mass_unit.vect2 = vect;
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
void MB_RX_COR0CFGD(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 							= COR[0].density_cutoff.vect2;
	COR[0].density_cutoff.vect2 	= (int*)0;
	COR[0].density_cutoff.calc_unit = COR[0].u_density;
	COR[0].density_cutoff.unit 		= COR[0].u_density;
	
	VAR_Update(&COR[0].density_cutoff, PORT[id].f[0], 0, 0);
	
	COR[0].density_cutoff.vect2 	= vect;
}  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR1CFGD(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 							= COR[1].density_cutoff.vect2;
	COR[1].density_cutoff.vect2 	= (int*)0;
	COR[1].density_cutoff.calc_unit = COR[1].u_density;
	COR[1].density_cutoff.unit 		= COR[1].u_density;
	
	VAR_Update(&COR[1].density_cutoff, PORT[id].f[0], 0, 0);
	
	COR[1].density_cutoff.vect2 	= vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR2CFGD(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 							= COR[2].density_cutoff.vect2;
	COR[2].density_cutoff.vect2 	= (int*)0;
	COR[2].density_cutoff.calc_unit = COR[2].u_density;
	COR[2].density_cutoff.unit 		= COR[2].u_density;
	
	VAR_Update(&COR[2].density_cutoff, PORT[id].f[0], 0, 0);
	
	COR[2].density_cutoff.vect2 	= vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR3CFGD(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 							= COR[3].density_cutoff.vect2;
	COR[3].density_cutoff.vect2 	= (int*)0;
	COR[3].density_cutoff.calc_unit = COR[3].u_density;
	COR[3].density_cutoff.unit 		= COR[3].u_density;
	
	VAR_Update(&COR[3].density_cutoff, PORT[id].f[0], 0, 0);
	
	COR[3].density_cutoff.vect2 	= vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 	
void MB_RX_COR0CFG(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 						= COR[0].damp_flow_rate.vect2;
	COR[0].damp_flow_rate.vect2 = (int*)0;
	
	VAR_Update(&COR[0].damp_flow_rate,	PORT[id].f[0], 0, 0);
	
	COR[0].damp_flow_rate.vect2 = vect;
	vect 						= COR[0].damp_density.vect2;
	COR[0].damp_density.vect2 	= (int*)0;
	
	VAR_Update(&COR[0].damp_density, 	PORT[id].f[2], 0, 0);
	
	COR[0].damp_density.vect2 	= vect;
	vect 						= COR[0].mfr_cutoff.vect2;
	COR[0].mfr_cutoff.vect2 	= (int*)0;
	COR[0].mfr_cutoff.calc_unit = COR[0].u_mfr;
	COR[0].mfr_cutoff.unit 		= COR[0].u_mfr;
	
	VAR_Update(&COR[0].mfr_cutoff, 		PORT[id].f[3], 0, 0);
	
	COR[0].mfr_cutoff.vect2 	= vect;
	vect 						= COR[0].vfr_cutoff.vect2;
	COR[0].vfr_cutoff.vect2 	= (int*)0;
	COR[0].vfr_cutoff.calc_unit = COR[0].u_vfr;
	COR[0].vfr_cutoff.unit 		= COR[0].u_vfr;
	
	VAR_Update(&COR[0].vfr_cutoff, 		PORT[id].f[4], 0, 0);
	
	COR[0].vfr_cutoff.vect2 	= vect;  
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR1CFG(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 						= COR[1].damp_flow_rate.vect2;
	COR[1].damp_flow_rate.vect2 = (int*)0;
	
	VAR_Update(&COR[1].damp_flow_rate, PORT[id].f[0], 0, 0);
	
	COR[1].damp_flow_rate.vect2 = vect;
	vect 						= COR[1].damp_density.vect2;
	COR[1].damp_density.vect2 	= (int*)0;
	
	VAR_Update(&COR[1].damp_density, PORT[id].f[2], 0, 0);
	
	COR[1].damp_density.vect2 	= vect;
	vect 						= COR[1].mfr_cutoff.vect2;
	COR[1].mfr_cutoff.vect2 	= (int*)0;
	COR[1].mfr_cutoff.calc_unit = COR[1].u_mfr;
	COR[1].mfr_cutoff.unit 		= COR[1].u_mfr;
	
	VAR_Update(&COR[1].mfr_cutoff, PORT[id].f[3], 0, 0);
	
	COR[1].mfr_cutoff.vect2 	= vect;
	vect 						= COR[1].vfr_cutoff.vect2;
	COR[1].vfr_cutoff.vect2 	= (int*)0;
	COR[1].vfr_cutoff.calc_unit = COR[1].u_vfr;
	COR[1].vfr_cutoff.unit 		= COR[1].u_vfr;
	
	VAR_Update(&COR[1].vfr_cutoff, PORT[id].f[4], 0, 0);
	
	COR[1].vfr_cutoff.vect2 	= vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR2CFG(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 						= COR[2].damp_flow_rate.vect2;
	COR[2].damp_flow_rate.vect2 = (int*)0;
	
	VAR_Update(&COR[2].damp_flow_rate, PORT[id].f[0], 0, 0);
	
	COR[2].damp_flow_rate.vect2 = vect;
	vect 						= COR[2].damp_density.vect2;
	COR[2].damp_density.vect2 	= (int*)0;
	
	VAR_Update(&COR[2].damp_density, PORT[id].f[2], 0, 0);
	
	COR[2].damp_density.vect2 	= vect;
	vect 						= COR[2].mfr_cutoff.vect2;
	COR[2].mfr_cutoff.vect2 	= (int*)0;
	COR[2].mfr_cutoff.calc_unit = COR[2].u_mfr;
	COR[2].mfr_cutoff.unit 		= COR[2].u_mfr;
	
	VAR_Update(&COR[2].mfr_cutoff, PORT[id].f[3], 0, 0);
	
	COR[2].mfr_cutoff.vect2 	= vect;
	vect 						= COR[2].vfr_cutoff.vect2;
	COR[2].vfr_cutoff.vect2 	= (int*)0;
	COR[2].vfr_cutoff.calc_unit = COR[2].u_vfr;
	COR[2].vfr_cutoff.unit 		= COR[2].u_vfr;
	
	VAR_Update(&COR[2].vfr_cutoff, PORT[id].f[4], 0, 0);
	
	COR[2].vfr_cutoff.vect2 = vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR3CFG(int id)
{
	int* vect;	 

	if (PORT[id].failed) 
		return;

	vect 						= COR[3].damp_flow_rate.vect2;
	COR[3].damp_flow_rate.vect2 = (int*)0;
	
	VAR_Update(&COR[3].damp_flow_rate, PORT[id].f[0], 0, 0);
	
	COR[3].damp_flow_rate.vect2 = vect;
	vect 						= COR[3].damp_density.vect2;
	COR[3].damp_density.vect2 	= (int*)0;
	
	VAR_Update(&COR[3].damp_density, PORT[id].f[2], 0, 0);
	
	COR[3].damp_density.vect2 	= vect;
	vect 						= COR[3].mfr_cutoff.vect2;
	COR[3].mfr_cutoff.vect2 	= (int*)0;
	COR[3].mfr_cutoff.calc_unit = COR[3].u_mfr;
	COR[3].mfr_cutoff.unit 		= COR[3].u_mfr;
	
	VAR_Update(&COR[3].mfr_cutoff, PORT[id].f[3], 0, 0);
	
	COR[3].mfr_cutoff.vect2 	= vect;
	vect 						= COR[3].vfr_cutoff.vect2;
	COR[3].vfr_cutoff.vect2 	= (int*)0;
	COR[3].vfr_cutoff.calc_unit = COR[3].u_vfr;
	COR[3].vfr_cutoff.unit 		= COR[3].u_vfr;
	
	VAR_Update(&COR[3].vfr_cutoff, PORT[id].f[4], 0, 0);
	
	COR[3].vfr_cutoff.vect2 	= vect;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_2(int id)
{
	unsigned int tmp;

	if (PORT[id].failed)
	{ 
		COR[0].diag 	= -1.0;
		COR[0].Z.val 	= 0;
		DIAGNOSTICS[1] |= 0x0002;
	}
	else
	{
		COR[0].diag = PORT[id].f[0];
		tmp 		= PORT[id].f[0];
		
		if (tmp & 131072)
			COR[0].Z.val = 1;
		else
			COR[0].Z.val = 0;
		
		if (tmp & (0xFFFFFFFF ^ (131072|1048576)))
			DIAGNOSTICS[1] |= 0x0002;
	}

	COR[0].mfr			= PORT[id].f[1];
	COR[0].density		= PORT[id].f[2];
	COR[0].T			= PORT[id].f[3];
	COR[0].vfr			= PORT[id].f[4];
	COR[0].visc			= PORT[id].f[5];
	COR[0].P			= PORT[id].f[6];
	COR[0].mass_total	= PORT[id].f[7];
	COR[0].volume_total	= PORT[id].f[8];

	 
	if (Density_Correction_Mode.val==3)
	{
		PORT[id].f[0] = Convert(FC[0].T.class, COR[0].u_T, FC[0].T.calc_unit, COR[0].T, 0, FC[0].T.aux);
		
		VAR_Update(&FC[0].T, PORT[id].f[0], 0, 0);
	}
	 

	 
	if (FC[0].flow_class.val == 66)
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].vfr, 0, FC[0].FLOW_TOTAL.aux);
	else if (FC[0].flow_class.val == 72)
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].mfr, 0, FC[0].FLOW_TOTAL.aux);
	else
		PORT[id].f[0] = 0.0;
	
	VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0], 0, 0);
	 
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_3(int id)
{
	if (PORT[id].failed) 
		return;

	PORT[id].f[0] 			 = Convert(73, COR[0].u_density, 104, PORT[id].f[0], 0, FC[0].density.aux);
	COR[0].density_corrected = PORT[id].f[0];

	if ((COR[0].u_T==32) || (COR[0].u_T==35))
		COR[0].u_density_corrected = 106;
	else
		COR[0].u_density_corrected = 105;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR1COILS(int id)
{
	if (PORT[id].failed) 
		return;

	COR[0].raw_tube_freq		= PORT[id].f[0];
	COR[0].left_pickup_value	= PORT[id].f[1];
	COR[0].right_pickup_value	= PORT[id].f[2];
	COR[0].drive_gain			= PORT[id].f[3];
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_COR2COILS(int id)
{
	if (PORT[id].failed) 
		return;

	COR[1].raw_tube_freq		= PORT[id].f[0];
	COR[1].left_pickup_value	= PORT[id].f[1];
	COR[1].right_pickup_value	= PORT[id].f[2];
	COR[1].drive_gain			= PORT[id].f[3];
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_5(int id)
{
	unsigned int tmp;	 

	if (PORT[id].failed)
	{
		COR[0].diag 	= -1.0;
		COR[0].Z.val 	= 0;
		DIAGNOSTICS[1] |= 0x0002;
	}
	else
	{
		COR[0].diag = PORT[id].f[0];
		tmp 		= PORT[id].f[0];
		
		if (tmp & 131072)
			COR[0].Z.val = 1;
		else
			COR[0].Z.val = 0;
		
		if (tmp & (0xFFFFFFFF ^ (131072|1048576)))
			DIAGNOSTICS[1] |= 0x0002;
	}

     
	if ((Density_Correction_Mode.val==3)||(Density_Correction_Mode.val==4)||(Density_Correction_Mode.val==5))
	{ 
		PORT[id].f[0] = Convert(FC[0].density.class, COR[0].u_density_corrected, FC[0].density.calc_unit, COR[0].density_corrected, 0, FC[0].density.aux);
		
		VAR_Update(&FC[0].density, PORT[id].f[0], 0, 0);
	}
	else
	{ 
		PORT[id].f[0] 				 = Convert(FC[0].density.class, COR[0].u_density, 92, COR[0].density, 0, FC[0].density.aux);
		PORT[id].f[1] 				 = (DensityCFD_D1*PORT[id].f[0]) + (DensityCFT_D1*FC[0].T.calc_val) + DensityCF_D0;
		COR[0].density_PDI_corrected = Convert(FC[0].density.class, 92, COR[0].u_density, PORT[id].f[1], 0, FC[0].density.aux);
		PORT[id].f[0] 				 = Convert(FC[0].density.class, 92, FC[0].density.calc_unit, PORT[id].f[1], 0, FC[0].density.aux);
		
		VAR_Update(&FC[0].density, PORT[id].f[0], 0, 0);
	}
	 
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void Xlate_COR_Special_Units(int id, int j)
{
	char s[40];	 
	int i;		 

 

	if (!PORT[id].failed)
	{ 
		for (i=0;i<32;i++)
		{
			s[i] = RXbuf[id].buff[PORT[id].data + i] & 0xFF;
			
			if ((s[i]>='a') && (s[i]<='z')) 
				s[i]-=('a'-'A');	 
		}
		
		s[i] = 0;

		if (COR[j].u_mfr == 253){}

		if (COR[j].u_m   == 253){}

		if (COR[j].u_vfr == 253)
		{
			if (strncmp("MSCF/D",&s[16],6)==0) 
				COR[j].u_vfr = 249;
			else if (strncmp("SCF/D",&s[16],5)==0) 
				COR[j].u_vfr = 184;
			else if (strncmp("SCF/S",&s[16],5)==0) 
				COR[j].u_vfr = 186;
		}

		if (COR[j].u_v   == 253)
		{
			if (strncmp("MSCF",&s[24],4)==0) 
				COR[j].u_v = 248;
			else if (strncmp("SCF",&s[24],3)==0) 
				COR[j].u_v = 168;
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CT1(int id)
{
	Xlate_COR_Special_Units(id,0);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CT2(int id)
{
	Xlate_COR_Special_Units(id,1);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CT3(int id)
{
	Xlate_COR_Special_Units(id,2);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CT4(int id)
{
	Xlate_COR_Special_Units(id,3);
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CA1(int id)
{
	if (PORT[id].failed) 
		return;

	COR[0].u_mfr		= RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	COR[0].u_density	= RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	COR[0].u_T			= RXbuf[id].buff[PORT[id].data+ 5] & 0xFF;
	COR[0].u_vfr		= RXbuf[id].buff[PORT[id].data+ 7] & 0xFF;
	COR[0].u_visc		= RXbuf[id].buff[PORT[id].data+ 9] & 0xFF;
	COR[0].u_P			= RXbuf[id].buff[PORT[id].data+11] & 0xFF;
	COR[0].u_m			= RXbuf[id].buff[PORT[id].data+13] & 0xFF;
	COR[0].u_v			= RXbuf[id].buff[PORT[id].data+15] & 0xFF;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CA2(int id)
{
	if (PORT[id].failed) 
		return;

	COR[1].u_mfr		= RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	COR[1].u_density	= RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	COR[1].u_T			= RXbuf[id].buff[PORT[id].data+ 5] & 0xFF;
	COR[1].u_vfr		= RXbuf[id].buff[PORT[id].data+ 7] & 0xFF;
	COR[1].u_visc		= RXbuf[id].buff[PORT[id].data+ 9] & 0xFF;
	COR[1].u_P			= RXbuf[id].buff[PORT[id].data+11] & 0xFF;
	COR[1].u_m			= RXbuf[id].buff[PORT[id].data+13] & 0xFF;
	COR[1].u_v			= RXbuf[id].buff[PORT[id].data+15] & 0xFF;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CA3(int id)
{
	if (PORT[id].failed) return;

	COR[2].u_mfr		= RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	COR[2].u_density	= RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	COR[2].u_T			= RXbuf[id].buff[PORT[id].data+ 5] & 0xFF;
	COR[2].u_vfr		= RXbuf[id].buff[PORT[id].data+ 7] & 0xFF;
	COR[2].u_visc		= RXbuf[id].buff[PORT[id].data+ 9] & 0xFF;
	COR[2].u_P			= RXbuf[id].buff[PORT[id].data+11] & 0xFF;
	COR[2].u_m			= RXbuf[id].buff[PORT[id].data+13] & 0xFF;
	COR[2].u_v			= RXbuf[id].buff[PORT[id].data+15] & 0xFF;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CA4(int id)
{
	if (PORT[id].failed) return;

	COR[3].u_mfr		= RXbuf[id].buff[PORT[id].data+ 1] & 0xFF;
	COR[3].u_density	= RXbuf[id].buff[PORT[id].data+ 3] & 0xFF;
	COR[3].u_T			= RXbuf[id].buff[PORT[id].data+ 5] & 0xFF;
	COR[3].u_vfr		= RXbuf[id].buff[PORT[id].data+ 7] & 0xFF;
	COR[3].u_visc		= RXbuf[id].buff[PORT[id].data+ 9] & 0xFF;
	COR[3].u_P			= RXbuf[id].buff[PORT[id].data+11] & 0xFF;
	COR[3].u_m			= RXbuf[id].buff[PORT[id].data+13] & 0xFF;
	COR[3].u_v			= RXbuf[id].buff[PORT[id].data+15] & 0xFF;
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_CAP1(int id)
{
	if (PORT[id].failed && AO[1].PID_enable_failsafe)
		AO[1].PID_fail = 1;

	if (PORT[id].failed && AO[2].PID_enable_failsafe)
		AO[2].PID_fail = 1;

	if (PORT[id].failed) 
		return;

	PRESS[0].u_DP = Xlate_3095_P_units(RXbuf[id].buff[PORT[id].data+ 1] & 0xFF);
	PRESS[0].u_SP = Xlate_3095_P_units(RXbuf[id].buff[PORT[id].data+ 3] & 0xFF);
	PRESS[0].u_PT = Xlate_3095_T_units(RXbuf[id].buff[PORT[id].data+ 5] & 0xFF);
}

 
 
 
 
 
 
 
 
 
 
 
 
int Xlate_3095_P_units(int u)
{
	switch (u)
	{
		case  1: return 145;
		case  2: return 11;
		case  3: return 12;
		case  4: return 237;
		case  5: return 6;
		case  6: return 1;
		default: return 145;
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
int Xlate_3095_T_units(int u)
{
	switch (u)
	{
		case 20: return 32;
		case 21: return 33;
		default: return 33;
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_C1(int id)
{
	unsigned int tmp;	 
	float po,pw;		 

	if (PORT[id].failed)
	{ 
		COR[0].diag 	= -1.0;
		COR[0].Z.val 	= 0;
		DIAGNOSTICS[1] |= 0x0002;
	}
	else
	{ 
		COR[0].diag = PORT[id].f[0];
		tmp 		= PORT[id].f[0];
		
		if (tmp & 131072)
			COR[0].Z.val = 1;
		else
			COR[0].Z.val = 0;
		
		if (tmp & (0xFFFFFFFF ^ (131072|1048576)))
			DIAGNOSTICS[1] |= 0x0002;
	}

	COR[0].mfr			= PORT[id].f[1];
	COR[0].density		= PORT[id].f[2];
	COR[0].T			= PORT[id].f[3];
	COR[0].vfr			= PORT[id].f[4];
	COR[0].visc			= PORT[id].f[5];
	COR[0].P			= PORT[id].f[6];
	COR[0].mass_total	= PORT[id].f[7];
	COR[0].volume_total	= PORT[id].f[8];

	 
	if (FC[0].FLOW_TOTAL.class == 66)
	{
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].vfr, 0, FC[0].FLOW_TOTAL.aux);
		
		if (CCM_2LIQ) 
			PORT[id].f[2] = Convert(FC[0].FLOW_TOTAL.class, COR[2].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[2].vfr, 0, FC[0].FLOW_TOTAL.aux);
		else 
			PORT[id].f[2] = 0.0; 
		
		if(FC[0].enable_PULSE == 0)	    
			VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0]+PORT[id].f[2], 0, 0);   
	}
	else if (FC[0].FLOW_TOTAL.class == 72)
	{
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].mfr, 0, FC[0].FLOW_TOTAL.aux);
		
		if (CCM_2LIQ) 
			PORT[id].f[2] = Convert(FC[0].FLOW_TOTAL.class, COR[2].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[2].mfr, 0, FC[0].FLOW_TOTAL.aux);
		else 
			PORT[id].f[2] = 0.0;   
		
		if(FC[0].enable_PULSE == 0)   
			VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0]+PORT[id].f[2], 0, 0);
	}
	else
		VAR_Update(&FC[0].FLOW_TOTAL, 0.0, 0, 0);
	 
	
	PORT[id].f[0] = Convert(FC[0].density.class, COR[0].u_density, FC[0].density.calc_unit, COR[0].density, 0, FC[0].density.aux);

	if (CCM_2LIQ)
	{
		PORT[id].f[1] = Convert(FC[0].density.class, COR[2].u_density, FC[0].density.calc_unit, COR[2].density, 0, FC[0].density.aux);
		PORT[id].f[0] = (PORT[id].f[0]+PORT[id].f[1])/2.0;
	}
	
	VAR_Update(&FC[0].density, PORT[id].f[0], 0, 0);

	FC[0].enable_GROSS = 1;
	FC[0].enable_NET = 1;

	if (DIO_TOTALIZER_CONTROL.val)	 
		FC[0].enable_FLOW = 1;
	else							 
	{
		FC[0].enable_FLOW = 0;	 

		if (FC[0].FLOW_TOTAL.class == 72)
		{
			pw = FC[0].net_watercut_mass / 100.0;
			
			if (pw>1.0) 
				pw = 1.0;
			else if (pw<0.0) 
				pw = 0.0;

			po = 1.0 - pw;
			
			if (po>1.0) 
				po = 1.0;
			else if (po<0.0) 
				po = 0.0;
		}
		else
		{
			pw = FC[0].watercut.val / 100.0;
			
			if (pw>1.0) 
				pw = 1.0;
			else if (pw<0.0) 
				pw = 0.0;
	
			po = 1.0 - pw;
			
			if (po>1.0) 
				po = 1.0;
			else if (po<0.0) 
				po = 0.0;
		}
        
		if(FC[0].enable_PULSE == 0)
		{  
			VAR_Update(&FC[0].FLOW_WATER, FC[0].FLOW_TOTAL.calc_val*pw, 0, 0);
			VAR_Update(&FC[0].FLOW_OIL, FC[0].FLOW_TOTAL.calc_val*po, 0, 0);   
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_C2(int id)
{
	unsigned int tmp;
	float t;
    
	if (PORT[id].failed)
	{ 
		COR[1].diag 	= -1.0;
		COR[1].Z.val 	= 0;
		DIAGNOSTICS[1] |= 0x0002;
	}
	else
	{ 
		COR[1].diag 	= PORT[id].f[0];
		tmp 			= PORT[id].f[0];
		
		if (tmp&131072)
			COR[1].Z.val = 1;
		else
			COR[1].Z.val = 0;
		
		if (tmp&(0xFFFFFFFF ^ (131072|1048576)))
			DIAGNOSTICS[1] |= 0x0002;
	}

	COR[1].mfr			= PORT[id].f[1];
	COR[1].density		= PORT[id].f[2];
	COR[1].T			= PORT[id].f[3];
	COR[1].vfr			= PORT[id].f[4];
	COR[1].visc			= PORT[id].f[5];
	COR[1].P			= PORT[id].f[6];
	COR[1].mass_total	= PORT[id].f[7];
	COR[1].volume_total	= PORT[id].f[8];
    
     
    PORT[id].f[0] = Convert(CCM_GAS_TEMPERATURE.class, COR[1].u_T, CCM_GAS_TEMPERATURE.calc_unit, COR[1].T, 0, CCM_GAS_TEMPERATURE.aux);
	
	VAR_Update(&CCM_GAS_TEMPERATURE, PORT[id].f[0], 0, 0);
    
     
	PORT[id].f[0] = Convert(CCM_GAS_DENSITY.class, COR[1].u_density, CCM_GAS_DENSITY.calc_unit, COR[1].density, 0, CCM_GAS_DENSITY.aux);   
    PORT[id].f[3] = Convert(CCM_GAS_DENSITY.class, COR[1].u_density, CCM_GAS_DENSITY.calc_unit, COR[1].density, 0, CCM_GAS_DENSITY.aux);
    
	if (CCM_2GAS)
	{ 
		PORT[id].f[1] = Convert(CCM_GAS_DENSITY.class, COR[3].u_density, CCM_GAS_DENSITY.calc_unit, COR[3].density, 0, CCM_GAS_DENSITY.aux);
		PORT[id].f[0] = (PORT[id].f[0]+PORT[id].f[1])/2.0;
	}  
	
	   
	if (GAS_DENSITY_INPUT_ENABLED == 1) 
		PORT[id].f[0] = Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY_INPUT.calc_unit, CCM_GAS_DENSITY.calc_unit, CCM_GAS_DENSITY_INPUT.val, 0, CCM_GAS_DENSITY.aux);	
	 
	
	VAR_Update(&CCM_GAS_DENSITY, PORT[id].f[0],0,0); 
	VAR_Update(&CCM_GAS_LIVE_DENSITY, PORT[id].f[3],0,0);

	if ((CCM_CORRECT_GAS_TO_STP==0) && (CCM_GAS_MASS==0))
	{
		CCM_GAS_FLOW.class  = 66;
		CCM_GAS_TOTAL.class = 68;
		
		 
		PORT[id].f[2] = Convert(72, COR[1].u_mfr, 73, COR[1].mfr, 0, 0);
		
		if (CCM_2GAS) 
			PORT[id].f[3] = Convert(72, COR[3].u_mfr, 73, COR[3].mfr, 0, 0);
		else 
			PORT[id].f[3] = 0.0;
		
		PORT[id].f[4] = PORT[id].f[2] + PORT[id].f[3];   
		PORT[id].f[4] = PORT[id].f[4] / Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY.calc_unit, 92, CCM_GAS_DENSITY.val, 0, CCM_GAS_DENSITY.aux);	
	    PORT[id].f[3] = Convert(CCM_GAS_FLOW.class, 28, CCM_GAS_FLOW.calc_unit, PORT[id].f[4], 0, CCM_GAS_FLOW.aux);  
	    
	    VAR_Update(&CCM_GAS_FLOW, PORT[id].f[3],0,0); 
		
		 
#line 5658
	}
	else	
	{
		PORT[id].f[2] = Convert(72, COR[1].u_mfr, 73, COR[1].mfr, 0, 0);
		
		if (CCM_2GAS) 
			PORT[id].f[3] = Convert(72, COR[3].u_mfr, 73, COR[3].mfr, 0, 0);
		else 
			PORT[id].f[3] = 0.0;

		if (CCM_GAS_MASS)	
		{
			CCM_CORRECT_GAS_TO_STP 	= 0;
            CCM_GAS_FLOW.class 		= 72;
			CCM_GAS_TOTAL.class 	= 71;
            PORT[id].f[4] 			= PORT[id].f[2] + PORT[id].f[3];
			PORT[id].f[3] 			= Convert(CCM_GAS_FLOW.class, 73, CCM_GAS_FLOW.calc_unit, PORT[id].f[4], 0, 0);
			
			VAR_Update(&CCM_GAS_FLOW, PORT[id].f[3],0,0);
		}
		else	
		{
			CCM_GAS_FLOW.class  = 66;
			CCM_GAS_TOTAL.class = 68;
            PORT[id].f[0] 		= PORT[id].f[2] / Convert(73, COR[1].u_density, 92, COR[1].density, 0, 0);

			if (CCM_2GAS)
				PORT[id].f[1] = PORT[id].f[3] / Convert(73, COR[3].u_density, 92, COR[3].density, 0, 0);
			else 
				PORT[id].f[1] = 0.0; 
			
			   
			if (GAS_DENSITY_INPUT_ENABLED == 1) 
			{
				PORT[id].f[0] = PORT[id].f[2] / Convert(73, CCM_GAS_DENSITY_INPUT.calc_unit, 92, CCM_GAS_DENSITY_INPUT.val, 0, 0);
				
				if (CCM_2GAS)
					PORT[id].f[1] = PORT[id].f[3] / Convert(73, CCM_GAS_DENSITY_INPUT.calc_unit, 92, CCM_GAS_DENSITY_INPUT.val, 0, 0);
				else 
					PORT[id].f[1] = 0.0;	
			}
			 
			
			
			PORT[id].f[0]  = PORT[id].f[0] + PORT[id].f[1];
			
			
            PORT[id].f[1]  = Convert(FC[0].pressure.class, FC[0].pressure.calc_unit, 2, FC[0].pressure.calc_val, 0, FC[0].pressure.aux);
			
			
			PORT[id].f[1] /= 30.0;		
			PORT[id].f[0] *= PORT[id].f[1];

			
			if ((FC[0].T.unit==35)||(FC[0].T.unit==32))
				PORT[id].f[0] *= Convert(FC[0].T.class, 32, 35, 15.0, 0, FC[0].T.aux);
			else
				PORT[id].f[0] *= Convert(FC[0].T.class, 33, 35, 60.0, 0, FC[0].T.aux);
			
			
			PORT[id].f[1]  = Convert(CCM_GAS_TEMPERATURE.class, CCM_GAS_TEMPERATURE.calc_unit, 35, CCM_GAS_TEMPERATURE.calc_val, 0, CCM_GAS_TEMPERATURE.aux);   
			PORT[id].f[0] /= PORT[id].f[1];
            PORT[id].f[0]  = Convert(CCM_GAS_FLOW.class, 190, CCM_GAS_FLOW.calc_unit, PORT[id].f[0], 0, CCM_GAS_FLOW.aux);
			
			
			VAR_Update(&CCM_GAS_FLOW, PORT[id].f[0],0,0);
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_C3(int id)
{
	unsigned int tmp;	 
	float po, pw;		 

	if (PORT[id].failed)
	{ 
		COR[2].diag = -1.0;
		COR[2].Z.val = 0;
		DIAGNOSTICS[1] |= 0x0002;
	}
	else
	{ 
		COR[2].diag = PORT[id].f[0];
		tmp 		= PORT[id].f[0];
		
		if (tmp&131072)
			COR[2].Z.val = 1;
		else
			COR[2].Z.val = 0;
	
		if (tmp&(0xFFFFFFFF ^ (131072|1048576)))
			DIAGNOSTICS[1] |= 0x0002;
	}

	COR[2].mfr			= PORT[id].f[1];
	COR[2].density		= PORT[id].f[2];
	COR[2].T			= PORT[id].f[3];
	COR[2].vfr			= PORT[id].f[4];
	COR[2].visc			= PORT[id].f[5];
	COR[2].P			= PORT[id].f[6];
	COR[2].mass_total	= PORT[id].f[7];
	COR[2].volume_total	= PORT[id].f[8];

	 
	if (FC[0].FLOW_TOTAL.class == 66)
	{
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].vfr, 0, FC[0].FLOW_TOTAL.aux);
		PORT[id].f[2] = Convert(FC[0].FLOW_TOTAL.class, COR[2].u_vfr, FC[0].FLOW_TOTAL.calc_unit, COR[2].vfr, 0, FC[0].FLOW_TOTAL.aux);
		
		VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0]+PORT[id].f[2], 0, 0);
	}
	else if (FC[0].FLOW_TOTAL.class == 72)
	{
		PORT[id].f[0] = Convert(FC[0].FLOW_TOTAL.class, COR[0].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[0].mfr, 0, FC[0].FLOW_TOTAL.aux);
		PORT[id].f[2] = Convert(FC[0].FLOW_TOTAL.class, COR[2].u_mfr, FC[0].FLOW_TOTAL.calc_unit, COR[2].mfr, 0, FC[0].FLOW_TOTAL.aux);
		
		VAR_Update(&FC[0].FLOW_TOTAL, PORT[id].f[0]+PORT[id].f[2], 0, 0);
	}
	else
		VAR_Update(&FC[0].FLOW_TOTAL, 0.0, 0, 0);
	 
	
	PORT[id].f[0] = Convert(FC[0].density.class, COR[0].u_density, FC[0].density.calc_unit, COR[0].density, 0, FC[0].density.aux);
	PORT[id].f[1] = Convert(FC[0].density.class, COR[2].u_density, FC[0].density.calc_unit, COR[2].density, 0, FC[0].density.aux);
	
	VAR_Update(&FC[0].density, (PORT[id].f[0]+PORT[id].f[1])/2.0, 0, 0);

	FC[0].enable_PULSE = 0;
	FC[0].enable_GROSS = 1;
	FC[0].enable_NET   = 1;

	if (DIO_TOTALIZER_CONTROL.val)	 
		FC[0].enable_FLOW = 1;
	else
	{ 
		FC[0].enable_FLOW = 0;

		if (FC[0].FLOW_TOTAL.class==72)
		{
			pw = FC[0].net_watercut_mass / 100.0;
			
			if (pw>1.0) 
				pw = 1.0;
			else if (pw<0.0) 
				pw = 0.0;

			po = 1.0 - pw;
			
			if (po>1.0) 
				po = 1.0;
			else if (po<0.0) 
				po = 0.0;
		}
		else
		{
			pw = FC[0].watercut.val / 100.0;
			
			if (pw>1.0) 
				pw = 1.0;
			else if (pw<0.0) 
				pw = 0.0;
	
			po = 1.0 - pw;
			
			if (po>1.0) 
				po = 1.0;
			else if (po<0.0) 
				po = 0.0;
		}

		VAR_Update(&FC[0].FLOW_WATER, FC[0].FLOW_TOTAL.calc_val*pw, 0, 0);
		VAR_Update(&FC[0].FLOW_OIL,   FC[0].FLOW_TOTAL.calc_val*po, 0, 0);
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_C4(int id)
{
	int i;
	double conv_val;
	
	PRESS[0].p_delta	= PORT[id].f[0];
	PRESS[0].p_static	= PORT[id].f[1];
	PRESS[0].T			= PORT[id].f[2];
	
	if (PORT[id].failed) 
		PRESS[0].diag0 = -1.0;
	else 
		PRESS[0].diag0 = PORT[id].f[3];
	
	PRESS[0].diag1		= PORT[id].f[4];
	PRESS[0].diag2		= PORT[id].f[5];

	
	for(i=0; i<2; i++) 
	{
		
		if (CCM_SETPOINT_PRESSURE[i].calc_unit != CCM_VESSEL_PRESSURE[i].calc_unit)
		{
			conv_val = Convert(65, CCM_SETPOINT_PRESSURE[i].calc_unit, CCM_VESSEL_PRESSURE[i].calc_unit, CCM_SETPOINT_PRESSURE[i].calc_val, 0, 0);
			CCM_SETPOINT_PRESSURE[i].calc_unit = CCM_VESSEL_PRESSURE[i].calc_unit;			
			VAR_Update(&CCM_SETPOINT_PRESSURE[i], conv_val, 0, 0);
		}
		
		if (CCM_SETPOINT_PRESSURE[i].unit != CCM_VESSEL_PRESSURE[i].unit)
		{
			conv_val = Convert(65, CCM_SETPOINT_PRESSURE[i].unit, CCM_VESSEL_PRESSURE[i].unit, CCM_SETPOINT_PRESSURE[i].val, 0, 0);
			CCM_SETPOINT_PRESSURE[i].unit = CCM_VESSEL_PRESSURE[i].unit;
			VAR_Update(&CCM_SETPOINT_PRESSURE[i], conv_val, 0, 0);
		}
		
		
		if (CCM_SETPOINT_LEVEL[i].calc_unit != CCM_VESSEL_LEVEL[i].calc_unit)
			CCM_SETPOINT_LEVEL[i].calc_unit = CCM_VESSEL_LEVEL[i].calc_unit;
		
		if (CCM_SETPOINT_LEVEL[i].unit != CCM_VESSEL_LEVEL[i].unit)
			CCM_SETPOINT_LEVEL[i].unit = CCM_VESSEL_LEVEL[i].unit;
		
		if (CCM_SETPOINT_PRESSURE_MAX_OVER.calc_unit != CCM_SETPOINT_PRESSURE[0].calc_unit)
		{
			conv_val = Convert(65, CCM_SETPOINT_PRESSURE_MAX_OVER.calc_unit, CCM_SETPOINT_PRESSURE[0].calc_unit, CCM_SETPOINT_PRESSURE_MAX_OVER.val, 0, 0);
			CCM_SETPOINT_PRESSURE_MAX_OVER.calc_unit = CCM_SETPOINT_PRESSURE[0].calc_unit;
			VAR_Update(&CCM_SETPOINT_PRESSURE_MAX_OVER, conv_val, 0, 0);
		}
		if (CCM_SETPOINT_PRESSURE_MAX_OVER.unit != CCM_SETPOINT_PRESSURE[0].unit)
		{
			conv_val = Convert(65, CCM_SETPOINT_PRESSURE_MAX_OVER.unit, CCM_SETPOINT_PRESSURE[0].unit, CCM_SETPOINT_PRESSURE_MAX_OVER.val, 0, 0);
			CCM_SETPOINT_PRESSURE_MAX_OVER.unit = CCM_SETPOINT_PRESSURE[0].unit;
			VAR_Update(&CCM_SETPOINT_PRESSURE_MAX_OVER, conv_val, 0, 0);
		}
	}
	
	
	if (PORT[id].failed)
	{ 
		DIAGNOSTICS[1] |= 0x0002;

		if (AO[1].PID_enable_failsafe)
			AO[1].PID_fail = 1;
		else
			AO[1].PID_fail = 0;

		if (AO[2].PID_enable_failsafe)
			AO[2].PID_fail = 1;
		else
			AO[2].PID_fail = 0;

		return;
	}


	PORT[id].f[1] = Convert(CCM_VESSEL_PRESSURE[0].class, PRESS[0].u_SP, CCM_VESSEL_PRESSURE[0].calc_unit, PRESS[0].p_static, 0, CCM_VESSEL_PRESSURE[0].aux);
	VAR_Update(&CCM_VESSEL_PRESSURE[0], PORT[id].f[1], 0, 0);
	
	PORT[id].f[1] = Convert(CCM_VESSEL_PRESSURE[0].class, CCM_VESSEL_PRESSURE[0].calc_unit, FC[0].pressure.calc_unit, CCM_VESSEL_PRESSURE[0].calc_val, 0, CCM_VESSEL_PRESSURE[0].aux);
	VAR_Update(&FC[0].pressure, PORT[id].f[1], 0, 0);

	if (CCM_VESSEL_PRESSURE[0].val > (CCM_SETPOINT_PRESSURE_MAX_OVER.val + CCM_SETPOINT_PRESSURE[0].val))
	{ 
		DIAGNOSTICS[1] |= 0x0002;

		if (AO[1].PID_enable_failsafe)
			AO[1].PID_fail = 1;
	
		if (AO[2].PID_enable_failsafe)
			AO[2].PID_fail = 1;
	}
	else
	{ 
		AO[1].PID_fail = 0;
		AO[2].PID_fail = 0;
	}

	 
	AO[2].PID_input		= CCM_VESSEL_PRESSURE[0].val;
	AO[2].PID_setpoint	= CCM_SETPOINT_PRESSURE[0].val;

	 
	PORT[id].f[1] = Convert(65, PRESS[0].u_DP, 145, PRESS[0].p_delta, 0, 0);
	
	if (CCM_CORRECT_LIQ_HEIGHT)
	{ 
		PORT[id].f[2] = Convert(73, FC[0].density.calc_unit, 90, FC[0].density.calc_val, 0, FC[0].density.aux);
		
		if (PORT[id].f[2]<=0.0)
		{ 
			PORT[id].f[2] = 1.0;
			DIAGNOSTICS[1] |= 0x0002;
		}
		
		VAR_Update(&CCM_VESSEL_LEVEL[0], PORT[id].f[1]/CCM_VESSEL_MAX_LEVEL[0]/PORT[id].f[2]*100.0, 0, 0);
	}
	else
		VAR_Update(&CCM_VESSEL_LEVEL[0], PORT[id].f[1]/CCM_VESSEL_MAX_LEVEL[0]*100.0, 0, 0);
	
	AO[1].PID_input		= CCM_VESSEL_LEVEL[0].val;
	AO[1].PID_setpoint	= CCM_SETPOINT_LEVEL[0].val;  
	
	 
	if ((BULK_LEVEL_ENABLED.val==1)&&(CCM_VESSEL_PRESSURE[0].val < (CCM_SETPOINT_PRESSURE_MAX_OVER.val + CCM_SETPOINT_PRESSURE[0].val)))
	{
		if (CCM_VESSEL_LEVEL[0].val>REG_BULK_LEVEL.val)
			VAR_Update(&AO[2].CURRENT_PERCENT_OF_RANGE, 0.0, 0, 0);  
	} 
	 

	 
	i_CCM_Level_Setpoint 	= CCM_SETPOINT_LEVEL[0].val * 10.0;
	i_CCM_Level 		 	= CCM_VESSEL_LEVEL[0].val * 10.0;
	i_CCM_Pressure_Setpoint = CCM_SETPOINT_PRESSURE[0].val * 100.0;
	i_CCM_Pressure 			= CCM_VESSEL_PRESSURE[0].val * 100.0;
	i_CCM_Gas_Valve 		= AO[2].CURRENT_PERCENT_OF_RANGE.val * 10.0;
	i_CCM_Liquid_Valve 		= AO[1].CURRENT_PERCENT_OF_RANGE.val * 10.0;
	i_CCM_Flow 				= FC[0].FLOW_TOTAL.val * 100.0;
	i_CCM_Flow_Oil 			= FC[0].FLOW_OIL.val * 100.0;
	i_CCM_Flow_Water 		= FC[0].FLOW_WATER.val * 100.0;
	i_CCM_Flow_Gas 			= CCM_GAS_FLOW.val * 100.0;
	 
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void MB_RX_C5(int id)
{
	unsigned int tmp;	 

	if (PORT[id].failed)
	{ 
		COR[3].diag 	= -1.0;
		COR[3].Z.val 	= 0;
		DIAGNOSTICS[1] |= 0x0002;
	}
	else
	{ 
		COR[3].diag 	= PORT[id].f[0];
		tmp 			= PORT[id].f[0];
		
		if (tmp&131072)
			COR[3].Z.val = 1;
		else
			COR[3].Z.val = 0;
		
		if (tmp&(0xFFFFFFFF ^ (131072|1048576)))
			DIAGNOSTICS[1] |= 0x0002;
	}

	COR[3].mfr			= PORT[id].f[1];
	COR[3].density		= PORT[id].f[2];
	COR[3].T			= PORT[id].f[3];
	COR[3].vfr			= PORT[id].f[4];
	COR[3].visc			= PORT[id].f[5];
	COR[3].P			= PORT[id].f[6];
	COR[3].mass_total	= PORT[id].f[7];
	COR[3].volume_total	= PORT[id].f[8];
    PORT[id].f[0] 		= Convert(CCM_GAS_DENSITY.class, COR[1].u_density, CCM_GAS_DENSITY.calc_unit, COR[1].density, 0, CCM_GAS_DENSITY.aux);
	PORT[id].f[1] 		= Convert(CCM_GAS_DENSITY.class, COR[3].u_density, CCM_GAS_DENSITY.calc_unit, COR[3].density, 0, CCM_GAS_DENSITY.aux);
	
	 
	PORT[id].f[0] = (PORT[id].f[0]+PORT[id].f[1])/2.0;  
	
	if (GAS_DENSITY_INPUT_ENABLED == 1) 
		PORT[id].f[0] = Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY_INPUT.calc_unit, CCM_GAS_DENSITY.calc_unit, CCM_GAS_DENSITY_INPUT.val, 0, CCM_GAS_DENSITY.aux);	
	 
	
	VAR_Update(&CCM_GAS_DENSITY, PORT[id].f[0],0,0);

	if ((CCM_CORRECT_GAS_TO_STP==0) && (CCM_GAS_MASS==0))
	{
		CCM_GAS_FLOW.class  = 66;
		CCM_GAS_TOTAL.class = 68;
        	
		 
		PORT[id].f[2] = Convert(72, COR[1].u_mfr, 73, COR[1].mfr, 0, 0);
		PORT[id].f[3] = Convert(72, COR[3].u_mfr, 73, COR[3].mfr, 0, 0);
		PORT[id].f[4] = PORT[id].f[2] + PORT[id].f[3];   
		PORT[id].f[4] = PORT[id].f[4] / Convert(CCM_GAS_DENSITY.class, CCM_GAS_DENSITY.calc_unit, 92, CCM_GAS_DENSITY.val, 0, CCM_GAS_DENSITY.aux);	
	    PORT[id].f[3] = Convert(CCM_GAS_FLOW.class, 28, CCM_GAS_FLOW.calc_unit, PORT[id].f[4], 0, CCM_GAS_FLOW.aux);  
	    
	    VAR_Update(&CCM_GAS_FLOW, PORT[id].f[3],0,0); 
		
		 
#line 6091
	}
	else
	{
		PORT[id].f[2] = Convert(72, COR[1].u_mfr, 73, COR[1].mfr, 0, 0);
		PORT[id].f[3] = Convert(72, COR[3].u_mfr, 73, COR[3].mfr, 0, 0);

		if (CCM_GAS_MASS)
		{
			CCM_CORRECT_GAS_TO_STP 	= 0;
           	CCM_GAS_FLOW.class 		= 72;
			CCM_GAS_TOTAL.class 	= 71;
            PORT[id].f[4] 			= PORT[id].f[2] + PORT[id].f[3];
			PORT[id].f[3] 			= Convert(CCM_GAS_FLOW.class, 73, CCM_GAS_FLOW.calc_unit, PORT[id].f[4], 0, 0);
			
			VAR_Update(&CCM_GAS_FLOW, PORT[id].f[3],0,0);
		}
		else
		{
			CCM_GAS_FLOW.class 	= 66;
			CCM_GAS_TOTAL.class = 68;
            PORT[id].f[0] 		= PORT[id].f[2] / Convert(73, COR[1].u_density, 92, COR[1].density, 0, 0);
			PORT[id].f[1] 		= PORT[id].f[3] / Convert(73, COR[3].u_density, 92, COR[3].density, 0, 0);
            
               
			if (GAS_DENSITY_INPUT_ENABLED == 1) 
			{
				PORT[id].f[0] = PORT[id].f[2] / Convert(73, CCM_GAS_DENSITY_INPUT.calc_unit, 92, CCM_GAS_DENSITY_INPUT.val, 0, 0);
				PORT[id].f[1] = PORT[id].f[3] / Convert(73, CCM_GAS_DENSITY_INPUT.calc_unit, 92, CCM_GAS_DENSITY_INPUT.val, 0, 0);
			}
			 
            
			PORT[id].f[0]  = PORT[id].f[0] + PORT[id].f[1];
            PORT[id].f[1]  = Convert(FC[0].pressure.class, FC[0].pressure.calc_unit, 2, FC[0].pressure.calc_val, 0, FC[0].pressure.aux);
			PORT[id].f[1] /= 30.0;
			PORT[id].f[0] *= PORT[id].f[1];

			if ((FC[0].T.unit==35)||(FC[0].T.unit==32))
			{
				PORT[id].f[0] *= Convert(FC[0].T.class, 32, 35, 15.0, 0, FC[0].T.aux);
				PORT[id].f[1]  = Convert(FC[0].T.class, FC[0].T.calc_unit, 35, FC[0].T.calc_val, 0, FC[0].T.aux);
			}
			else
			{
				PORT[id].f[0] *= Convert(FC[0].T.class, 33, 35, 60.0, 0, FC[0].T.aux);
				PORT[id].f[1] = Convert(FC[0].T.class, FC[0].T.calc_unit, 35, FC[0].T.calc_val, 0, FC[0].T.aux);
			}

			PORT[id].f[0] /= PORT[id].f[1];
            PORT[id].f[0]  = Convert(CCM_GAS_FLOW.class, 190, CCM_GAS_FLOW.calc_unit, PORT[id].f[0], 0, CCM_GAS_FLOW.aux);
			
			VAR_Update(&CCM_GAS_FLOW, PORT[id].f[0],0,0);
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
void MB_TX_A_PLC(void)
{
	MPKT* p;
	int addr;

	 
	ALYESKA.WATERCUT		= REG_WATERCUT.val;
	ALYESKA.FLOW_RATE		= FC[0].FLOW_TOTAL.val;
	ALYESKA.TEMPERATURE		= FC[0].T.val;
	ALYESKA.DENSITY			= Convert(Density_Cal.class, Density_Cal.calc_unit, 108, FC[0].density_PDI_corrected, 0, FC[0].density.aux);
	ALYESKA.DENSITY			/= 1000.0;	 
	ALYESKA.iWATERCUTz		= Span(ALYESKA.WATERCUT, ALYESKA.minWATERCUTz, ALYESKA.maxWATERCUTz, 0, 4095);
	ALYESKA.iWATERCUT		= Span(ALYESKA.WATERCUT, ALYESKA.minWATERCUT, ALYESKA.maxWATERCUT, 0, 4095);
	ALYESKA.iFLOW_RATE		= Span(ALYESKA.FLOW_RATE, ALYESKA.minFLOW_RATE, ALYESKA.maxFLOW_RATE, 0, 4095);
	ALYESKA.iTEMPERATURE	= Span(ALYESKA.TEMPERATURE, ALYESKA.minTEMPERATURE, ALYESKA.maxTEMPERATURE, 0, 4095);
	ALYESKA.iDENSITY		= Span(ALYESKA.DENSITY, ALYESKA.minDENSITY, ALYESKA.maxDENSITY, 0, 4095);
	ALYESKA.iVISCOSITY		= Span(ALYESKA.VISCOSITY, ALYESKA.minVISCOSITY, ALYESKA.maxVISCOSITY, 0, 4095);
	 

	addr = ALYESKA.DESTINATION_ADDRESS.val;
	p 	 = Master_Create((int*) 0, 1, 1, 16|0x0100, addr, 5, 0.0);

	if (p != (MPKT*) (int*)0)
	{
		p->v[0] = ALYESKA.iWATERCUTz;
		p->v[1] = ALYESKA.iWATERCUT;
		p->v[2] = ALYESKA.iFLOW_RATE;
		p->v[3] = ALYESKA.iTEMPERATURE;
		p->v[4] = ALYESKA.iDENSITY;
		
		List_Add(&PORT[1].MASTER, (GENERIC*)p);
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
MPKT* Master_Create(int* vect, int n, int slave, int func, int addr, int num, float v)
{
	MPKT* p;
	int i;

	p = (MPKT*) List_Pop(&LIST_MASTER_EMPTY);

	if (p == (MPKT*) (int*)0)
		return p;
	
	p->prev 	= 0;
	p->next 	= 0;
	p->rxvect 	= vect;
	p->txvect 	= (int*)0;
	p->n 		= n;
	p->slave 	= slave;
	p->func 	= func;
	p->addr 	= addr;
	p->num 		= num;
	p->v[0] 	= v;
	p->flt_ptr 	= (float*)0;
	p->int_ptr 	= (int*)0;

	for (i=1;i<10;i++) 
		p->v[i] = 0;

	return p;
}
