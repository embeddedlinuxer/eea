#line 122 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\GLBLS.H"
extern const char* copyright;
extern const char* credit;
#line 8 "G:\workspace\EEA\V615\INCLUDE\stdarg.h"
typedef char *va_list;

#line 15 "G:\workspace\EEA\V615\INCLUDE\format.h"
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
 
 
 
 

#line 14 "G:\workspace\EEA\V615\INCLUDE\string.h"
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

#line 16 "G:\workspace\EEA\V615\INCLUDE\stdio.h"
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
#line 24 "G:\workspace\EEA\V615\INCLUDE\stdlib.h"
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
#line 19 "G:\workspace\EEA\V615\INCLUDE\math.h"
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

#line 14 "G:\workspace\EEA\V615\INCLUDE\time.h"
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

#line 30 "G:\workspace\EEA\V615\INCLUDE\ETC.H"
typedef unsigned int BOOL;

#line 32 "G:\workspace\EEA\V615\INCLUDE\LIST.H"
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

#line 59 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\VARIABLE.H"
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

#line 36 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\BUFFER.H"
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

#line 445 "G:\workspace\EEA\V615\INCLUDE\UNITS.H"
extern const float* MASTER_UNITS;
#line 34 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\TIMER.H"
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

#line 89 "G:\workspace\EEA\V615\INCLUDE\I2C.H"
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

 
 
 
 
 
 
 

 
 
 
 
 

#line 128
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

 
 
 
 
#line 30 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\ERRORS.H"
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

 
#line 45 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\SERIAL.H"
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

#line 55 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\ADC.H"
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

#line 35 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\DAC.H"
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

#line 33 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\EXECUTE.H"
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

#line 44 "G:\workspace\EEA\V615\INCLUDE\FLASH.H"
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

#line 71 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\LOG.H"
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

#line 33 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\DEMO.H"
extern void DEMO_Init(VAR* v);

#line 46 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\SELFTEST.H"
extern void Set_Diag_Status(void);
extern void Self_Test1(void);
extern void Self_Test2(void);
extern void Self_Test3(void);
extern void Self_Test4(void);
extern void Self_Test5(void);
extern void Self_Test_FULL(void);
extern void Clear_Diagnostics(void);

#line 32 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MENU.H"
 void Update_Flags_Goto_Next_Menu(BOOL cfg, BOOL skip_adv);
 void MSVE_Data_Input(char* title, char* varname, int iw, int ip, BOOL is, BOOL sci, VAR* v, BOOL skip_save, BOOL skip_adv);

 int Print_To_LCD( int lcd_line, int str_num, char text_line[], int whitespace);

 int Get_Russ_Line(int str_num, char out_str[], int return_mode); 
 int Find_Russ_Tbl_Len(void);
 char OUT_STR[32]; 
 char OUT_STR2[32]; 
 char ENG_STR[32]; 
 char ENG_STR2[32]; 


 void MENU_INIT(void);
 void MENU_REFRESH(void);
 int  DIO_MSVE;



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

 MENU_STRUCT MSVE;

 int* vect_m;

#line 23 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\FLOAT1.H"
extern unsigned int TOIEEE(float v);
extern float FMIEEE(unsigned int v);

#line 169 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\GLBLS.H"
extern unsigned int CLOCK;
extern BOOL LED_GREEN;
extern BOOL OSWITCH;
extern void c_int00(void);

#line 213
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



 
#line 643
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




 
#line 832
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
 
#line 1016
#pragma DATA_SECTION(GAS_ENTRAINED_DENS_DETECT,"CFG")
extern COIL GAS_ENTRAINED_DENS_DETECT;   
 
#line 1032
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




#line 1067
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

 
#pragma DATA_SECTION(RELAY1_REVERT,"CFG")
extern COIL RELAY1_REVERT;
#pragma DATA_SECTION(RELAY2_REVERT,"CFG")
extern COIL RELAY2_REVERT;

    
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

#line 1401
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


		 
#line 1597
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

#line 1699
extern void Setup_Basics(void);

#line 44 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\HART.H"
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
#line 31 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MODBUSRTU.H"
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

#line 36 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\MISC.H"
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

#line 29 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\API.H"
extern void API_VCF(FLOW_COMP* f, float* VCFw, float* VCFo);
extern double API_15C_PT(const int fcidx, const double r, int* k_set);
extern double API_60F_PT(const int fcidx, const double r, int* k_set);
extern double API_PT_ST(const int fcidx, const double r, const BOOL F60, const BOOL RET_VCF);
extern double API_to_kgm3(const double r);
extern double kgm3_to_API(const double r);
extern void API_STATUS(const int fcidx, const BOOL type);

#line 15 "G:\workspace\EEA\V615\APP\SOURCE\INCLUDE\RUSSTBLS.H"
#pragma DATA_SECTION(RUSS_MENU_TBL,"TABLES")
const char RUSS_MENU_TBL[][41] = {
	
	
	"4D42A44220A8657065BC65BDBD61C7",			
	"4D61BA63B8BC79BC3A",						
	"4DB8BDB8BC79BC3A",							
	"4D61BA633A",								
	"4DB8BD3A",									
	"A87061B36120B761E6B8E665BDC32032303135",	
	"506563BF6170BF",							
	"42424FE03D50454354415054",					
	"426570BD79BFC420B761B36FE363BAB865",		
	"486163BF706FB9BAB83F",						
	"E041",										
	"484554",									
	"A8657065786FE320BA20B761B36FE363BAB8BC",	
	"486163BF706FB9BA61BC2E2E2E",				
	"E0B861B4BD6F63BFB8BA61",					
	"E0B861B42EAAB8BBC4BF70",					
	"AB6163BF6FBF612842293A",					
	"4FBF702E4DE6BD2842293A",					
	"AB6163BF6FBF612848293A",					
	"4FBF702E4DE6BD2848293A",					
	"AA61B7613A204865E4BFC4",					
	"AA61B7613A20426FE361",						
	"AFB3436FBBC4",								
	"436FBB65BD6F63BFC43A",						
	"AA61B7613A204FC1B8B2BA61",					
	"4865E4BFC4",								
	"A76FB4B8C02E4FC1B8B2BA6120AA61B7C3",		
	"42BB61B46F636FE36570B661BDB865",			
	"5465BCBE657061BF797061",					
	"A86FBF6FBA",								
	"E1B8BABBC3A461E36570B6BAB8",				
	"4B6FBB2EA5B7BC2E",							
	"41E3706563",								
	"436FBBC4",									
	"A461E361BFC420AA61B779",					
	"4142544F",									
	"45E32EB8B7BC2E5465BCBE2E",					
	"4BBB616363",								
	"45E32EB8B7BC2E203A",						
	"5465BCBE2EA86FBE7061B3BA61",				
	"437065E3BDC7C7205465BCBE657061BF797061",	
	"42424FE03D43A0504F43",						
	"A5B7BC65BDB8BFC420A4A420BE61706FBBC4",		
	"A5B7BC65BDB8BFC42054455820BE61706FBBC4",	
	"A441A0A74F4BA5504F4241484F",				
	"A86FE36FB6E3B8BF652E2E2E",					
	"4B4FE0",									
	"5065B62E48B8B72E436FBB65BD6F63BFB8",		
	"E04F4354A9A8484F",							
	"4845E04F4354A9A8484F",						
	"A86F706FB4",								
	"482E486163BF70",							
	"422E486163BF70",							
	"422E48B8B7",								
	"422E42657078",								
	"422EA5BDE365BA63",							
	"422E48B8B7BA61C720C06163BF6FBF61",			
	"422E42C3636FBA61C720C06163BF6FBF61",		
	"482EA5BDE365BA63",							
	"482E2048B8B72EAB6163BF2E",					
	"482E20426570782EAB6163BF2E",				
	"482E5031",									
	"482E5030",									
	"A46178B361BF20284865E4BF2EAA61B76129",		
	"4FACA5A04B4120AA41A4AE20AF4DA9A76243A5A5",	
	"42424FE020E0A7B120435441505441",			
	"4FBFB26F7020BE706FB2C32E2E2E",				
	"A46178B361BF2028426FE32EAA61B76129",		
	"42424FE020E0A7B1204F435441484F424BA5",		
	"426FE361",									
	"437065E3BD2E42432E25",						
	"437065E3BD2E4865BFBF6F3A",					
	"437065E3BD2EA07079BFBF6F3A",				
	"43C065BFC0B8BA4865BFBF6F",					
	"A5BF6FB46F",								
	"43C065BFC0B8BAA07079BFBF6F",				
	"506163786FE3",								
	"426FE361",									
	"506163786FE34865BFBF6F",					
	"4B50204379BCBC6170BDC3B9",					
	"A8A74F54484F435462",						
	"4B4F50502E4354",							
	"4B4F50503A",								
	"427065BCC72FE061BF61",						
	"AB6163C3206FBF6379BF63BFB32E",				
	"A963BF61BD6FB32E427065BCC72FE061BF61",		
	"A461B32EBD6FBC65703A",						
	"48A8A82022A14B4322",						
	"5065E361BABF2E5465B4",						
	"486163BF706FB9BA61204B6FBCBC2E",			
	"42AEA04F503DA5A44D45484548A545",			
	"42424FE03D422048414354504FA64BA5",			
	"A87065E4B8BA63",							
	"4379E4E4B8BA63",							
	"427065BCC7204FB6B8E361BDB8C7",				
	"AB65BFBD6F63BFC4",							
	"4865C065BF",								
	"AB65BF",									
	"4D6170BA65702F31",							
	"A8706FB265BB2F30",							
	"4865BF",									
	"A84F42544F50",								
	"43BF61BFB863BFB8BA61",						
	"4FC1B8B2BAB8",								
	"43BF6F706FB62E43C0BF",						
	"43BF61BFB863BFB8BA61",						
	"4865B36570BD2E4BBCBDE3",					
	"A963BE6578",								
	"CC20A86FBEC3BFBAB8",						
	"4841525420CCA8706561BCB279BBC3",			
	"484152542042657063B8C7",					
	"484152542043BF61BFB863BF2EA86F70BF61",		
	"A54B2DBE6F70BF2042BABBC6C065BD",			
	"A54B2DBE6F70BF20AB79B363BFB32E",			
	"486F70BC61BBC4BDC3B9",						
	"A54B2DBE6F70BF2043BF61BFB863BFB8BA61",		
	"41E3706563",								
	"4D6FE3B2616320434F4D2031",					
	"4D6FE3B2616320434F4D2031202F2042BB61B4",	
	"4D6FE3B2616320434F4D",						
	"4D6FE3B2616320434F4D2032202F20A5544F",		
	"48415254",									
	"A54B2DBE6F70BF",							
	"4D6FE3B2616320A5544F",						
	"4D6FE3B2616320A84B",						
	"486163BF706FB9BA61207065BB65",				
	"5065BB65205065B6B8BC",						
	"43BF61BF796320BE657065BC65BDBD6FB9",		
	"A8657065BC65BD61C73DA963BF61B3BA61",		
	"A8657065BABBC6C061BF65BBC4",				
	"E0B861B4BD6F63BFB8BA61",					
	"427079C0BD79C6",							
	"5065BB6520BE657065BC65BDBD61C7",			
	"A5BDE365BA6320BE657065BC65BDBD6FB9",		
	"5065BB65204B6FE32045E32EB8B7BC2E",			
	"5065BB6520A963BF61B3BA61",					
	"5065BB652043BF61BF7963",					
	"424BA7",									
	"42AE4BA7",									
	"5065BB65204D6163BA61",						
	"486163BF706FB9BA612041BD427828414929",		
	"414920A8657065BC65BDBD61C7",				
	"4149204B6FE32065E32EB8B7BC2E",				
	"41492048A4E0",								
	"41492042A4E0",								
	"4149204B61BBB8B2706FB3BA61",				
	"42AEA04F503D43A0504F43",					
	"42424FE03D4B61BBB8B2706FB3BA61",			
	"A86FE3BABBC6C0B8BF65",						
	"4861B6BCB8BF652042AEA04F50206563BBB8",		
	"B3C32079B3657065BDC3",						
	"A86FE3BABBC6C0B8BF65203230BC41",			
	"414920A963BE6FBA6F65BDB865",				
	"A4BD61C065BDB865",							
	"41BD61BB6FB46FB3C3B92042786FE3",			
	"41BD61BB6FB46FB3C3B92042786FE3",			
	"486163BF706FB9BA612041BD42C37828414F29",	
	"414F20A8657065BC65BDBD61C7",				
	"A8A5E0",									
	"4FBFBABBC6C0B8BFC42F427079C0BD79C6",		
	"414F204B6FE32045E32EB8B7BC2E",				
	"414F204B61BBB8B22E2034BC41",				
	"A86FE3BABBC6C0B8BF6520A5B7BC2EBF6FBA61",	
	"A5B7BC2EA4BD61C065BDB865",					
	"4D4548B03DA8706FBE7963BFB8BFC4",			
	"414F204B61BBB8B22E203230BC41",				
	"414F",										
	"48A5A4202834BC4129",						
	"4245505820283230BC4129",					
	"414F205065B6B8BC",							
	"41B3BF6F2F5065B3657063",					
	"41B3BF6F",									
	"414F20A963BE6FBA6F65BDB865",				
	"41BD61BB6FB46FB3C3B92042C3786FE3",			
	"41BD61BB6FB46FB3C3B92042C3782E",			
	"486163BF706FB9BA61205443",					
	"42C3B26F7020426570782F48B8B7",				
	"4B61BBB8B2702E48B8B7",						
	"4B61BBB8B2702E42657078",					
	"4B61BBB8B2702E2054432048B8B7",				
	"A86FE3BABBC6C0B8BF6520313030204FBC",		
	"4861B6BCB8BF652042AEA04F50",				
	"E3BBC720A84FE054424550A3E04548A5B1",		
	"4861B6BC2E4D4548B020E3BBC7204F544D4548AE",	
	"4B61BBB8B2702E2054432042657078",			
	"A86FE3BABBC6C0B8BF6520313235204FBC",		
	"4B4F4845E1204B61BBB8B2702E48B8B7",			
	"4861B6BCB8BF6520BBC6B22EBABD6FBEBA79",		
	"E3BBC720BE706FE36FBBB665BDB8C7",			
	"4B4F4845E1204B61BBB8B2702E42657078",		
	"5065B6B8BC2042C3C0B863BB65BDB8C7",			
	"42C3B26F70204865E4BF2E4B70B8B36FB9",		
	"4D6FE3B2616320434F4D2031",					
	"41B3BF6F42C3B26F70",						
	"4B6F70702E20BE6F20A8BB6FBFBD6F63BFB8",		
	"434F522D4150493630462C204B6F705465BCBE",	
	"434F522D4150493630462C2042BB61B45465BCBE",	
	"434F522D4150493630462C20E07079B45465BCBE",	
	"E07079B46F65",								
	"A86F70BF204B6F70B86FBBB863",				
	"434F4D2032",								
	"A461E36570B6BA61",							
	"4220BE706FE5656363652E2E2E",				
	"42424FE03D20BD61C061BB6F206FBF63C065BF61",	
	"4B5020486163BF702EA8BB6FBFBD6F63BFB8",		
	"486163BF70",								
	"464320E061B3BB65BDB865",					
	"4643205465BCBE657061BF797061",				
	"464320A8BB6FBFBD6F63BFC4",					
	"464345E365BDB8E56120BD61BA6FBEBB65BDB8C7",	
	"464320506163786FE3",						
	"4D6FE3B2616320434F4D2032",					
	"4D6163636FB3C3B920706163786FE3",			
	"4FB2C265BCBDC3B920706163786FE3",			
	"AFBC79BB2E",								
	"4243",										
	"E061B3BB65BDB865",							
	"5465BCBE2E",								
	"506163786FE3",								
	"A8BB2E426FE3C350A9",						
	"A8BB2E426FE3C343A9",						
	"A8BB2E4865E4BFB850A9",						
	"A8BB2E4865E4BFB843A9",						
	"A96361E3BA61",								
	"4D2DE461BABF6F70",							
	"4B50204865BFBF6F2042BABB",					
	"4B5020A8BB6FBFBD2E42BABB",					
	"4B5020A5BCBE2E42BABB",						
	"4B5020A07079BFBF6F2042BABB",				
	"4B5020506163786FE32042BABB",				
	"4B5020A563BE2E5465BCBE2E42BB61B43F",		
	"4B5020A563BE2E436FBB65BD2E42BB61B43F",		
	"4B5020A563BE2E42BD79BF702E42433F",			
	"4B5020415049205461B2BBB8E561",				
	"423A204F63BD2EA8706FE379BABFC3",			
	"433A2043BE65E5B861BBC4BDC365",				
	"443A204F63BD2E43BC61B72E4D61BF",			
	"413A204F63BD2E4865E4BFC4",					
	"4B5020486163BF702EA8BB6FBFBD",				
	"4B5020415049204B70B8B361C72043",			
	"61BBC4E461",								
	"4B50205079C0BD2E506163786FE33F",			
	"4B50205079C0BD2E5465BCBE2E3F",				
	"4B50205079C0BD2E42433F",					
	"4B50205079C0BD2EE061B3BB65BDB8653F",		
	"4B50205079C0BD2EA8BB6FBFBD6F63BFC43F",		
	"4B50205079C0BD2E436FBB65BD6F63BFC43F",		
	"4B502043C0BF2EA5BCBE79BBC4636FB3",			
	"486163BF702E4B6FBDBF702E506163786FE3",		
	"A8657065BC65BD61C73CA963BF61B3BA61",		
	"A8657065BC65BD61C73EA963BF61B3BA61",		
	"A8657065BC65BD61C73C3DA963BF61B3BA61",		
	"A8657065BC65BD61C73E3DA963BF61B3BA61",		
	"A8657065BC65BD61C7213DA963BF61B3BA61",		
	"4B6FE3",									
	"5065BB65",									
	"34BC41",									
	"3230BC41",									
	"414F2048A4E0",								
	"414F2042A4E0",								
	"414F20A8A5E020A963BF61B3BA61",				
	"4FBC",										
	"4B6F70B86FBBB8632C2042BB61B45465BCBE",		
	"4B6F70B86FBBB8632C20E07079B45465BCBE",		
	"45E365BDB8E56120A8BB6FBFBD6F63BFC4",		
	"4B6F70B86FBBB863206FBF63C065BF61",			
	"706163786FE320BABB616363",					
	"43C0BF2EA5BCBE79BBC4636FB3",				
	"A8BB6FBFBD2E",								
	"5465BCBE2E",								
	"42455058",									
	"48A5A4",									
	"4D6FE3B2616320434F4D2033",					
	"4D6FE3B2616320434F4D2034",					
	"A8BB6F782EA861BA65BF3A",					
	
	
	"42BB61B46F636FE36570B661BDB865",			
	"A9637065E3BD65BDB86520BE706FE565636361",	
	"A9E36570B661BDB86520AA61B7C3",				
	"AA61B76120AFBC79BBC463B8B8",				
	"4865E4BFC4205030",							
	"4865E4BFC4205031",							
	"42C3B26F7020BE6FBF6FBA61",					
	"436FBB65BDBD6F63BFC4",						
	"486163BF706FB9BA612028482EAA61B76129",		
	"486163BF706FB9BA612028422EAA61B76129",		
	"42432048B8B72E",							
	"424320426570782E",							
	"4DB8BD2EA5BDBF6570B32E4243",				
	"AFB3436FBBC4204DB8BD204243",				
	"4DB8BD2E506163786FE3",						
	"4865E4BFC420A5BDE365BA63",					
	"426FE36120A5BDE365BA63",					
	"486163BF702E5465BCBE657061BF7970C3",		
	"5465BCBE657061BF79706120A86FBBC4B72E",		
	"5465BCBE657061BF79706120437065E3BDC7C7",	
	"5465BCBE657061BF79706120A8706FE565636361",	
	"42BD79BF702E5465BCBE657061BF797061",		
	"5465BCBE657061BF79706120A8706FE565636361",	
	"41BD61BB6FB46FB3C3B92042786FE32031",		
	"41BD61BB6FB46FB3C3B92042C3786FE32031",		
	"41BD61BB6FB42E42C3782E28414F29",			
	"414F2048A4E0",								
	"414F2042A4E0",								
	"414F204B61BBB8B22E4DB8BD",					
	"414F204B61BBB8B22E4D61BA63",				
	"41BD61BB6FB42E42782E28414929",				
	"414920A4BD61C065BDB865",					
	"41492048A4E0",								
	"41492042A4E0",								
	"4149204B61BBB8B22E4DB8BD",					
	"4149204B61BBB8B22E4D61BA63",				
	"A86FBBC4B72EA0BB6FBA2E",					
	"A461B36FE32EA0BB6FBA2E",					
	"A4A4205061B7B2BB6FBA2E",					
	"E06F63BF79BE20544558205065B6B8BC",			
	"AFB32E436FBBC420A0BB6FBA2E",				
	"AB6163BF6FBF61",							
	"4865E4BFC4AB6163BF6FBF61",					
	"426FE361AB6163BF6FBF61",					
	"482EAB6163BF2E48B8B7",						
	"482EAB6163BF2E42657078",					
	"422EAB6163BF2E48B8B7",						
	"422EAB6163BF2E42657078",					
	"A86F706FB420AB6163BF6FBFC3",				
	"482EAB6163BF2E4DB8BD",						
	"482EAB6163BF2E4D61BA63",					
	"422EAB6163BF2E4DB8BD",						
	"422EAB6163BF2E4D61BA63",					
	"546563BF2E20B320BE706FE565636365",			
	"E0B861B4BD6F63BFB8BA61",					
	"506163C1B8702EE0B861B4BD6F63BFB8BA61",		
	"4B6FE3204FC1B8B2BAB8",						
	"4B6FE320436F6FB2E665BDB8C7",				
	"48415254204B6FE3204FBFBABBB8BA61",			
	
	
	"43BA6F702EA86F70BF61",						
	"A87065E4B8BA63",							
	"427065BCC720A86FB3BF6F7061",				
	"41E37065632028494429",						
	"4379E4E4B8BA63",							
	"43BF6F706FB65461B9BC6570",					
	"4B61BBB8B2",								
	"4B61BBB8B22E284865E4BF2EAA61B76129",		
	"4B61BBB8B22E28426FE32EAA61B76129",			
	"4FBF6365C0BA61",							
	"A8BB6FBFBD2E486163BF702E4433",				
	"A8BB6FBFBD2E486163BF702E4432",				
	"A8BB6FBFBD2E486163BF702E4431",				
	"A8BB6FBFBD2E486163BF702E4430",				
	"4B6F70702EA8BB6FBFBD2E45E32EA5B7BC2E",		
	"4FACA5A04B413A2042BD65C12EA861BCC7BFC4",	
	"4FACA5A04B413A20AABBC5C1A861BCC7BFC4",		
	"4FACA5A04B413A20AB6163BF6FBF61",			
	"4FACA5A04B413A2042C3636FBA2E42BB436FE3",	
	"4FACA5A04B413A2042C3636FBA2E5465BCBE",		
	"4FACA5A04B413A2042BD79BF702EA861BCC7BFC4",	
	"4FACA5A04B413A204865B365702E427065BCC7",	
	"4FACA5A04B413A204865B365702E42BB436FE3",	
	"4FACA5A04B413A2048B8B72E42BB436FE3",		
	"4FACA5A04B413A2048B8B72E5465BCBE",			
	"4FACA5A04B413A20A76FB4B8BA6120AA61B7",		
	"4FACA5A04B413A204FA0E22E43A0504F43",		
	"4B50204D2DE461BABF6F70",					
	"4B5020A8BB6FBFBD2E4865E4BF2E50A9",			
	"4B5020A8BB6FBFBD2E4865E4BF2E43A9",			
	"4B5020E061B3BB65BDB865",					
	"4B50204243",								
	"4B5020436FBB65BDBD6F63BFC4",				
	"4B5020A96361E3BA61",						
	"4B50205465BCBE657061BF797061",				
	"4B50204FB2E62E506163786FE3",				
	"4B5020A8BB6FBFBD2E426FE32E50A9",			
	"4B5020A8BB6FBFBD2E426FE32E43A9",			
	"4B5020A8BB6FBFBD6F63BFC4",					
	"A84F20A14B43",								
	"A86FBBBD2EE0B861BE2E42BB61B46FBC6570",		
	"42657063B8C720A84F",						
	"426570782EE0B861BE2E42BB61B46FBC6570",		
	"42657063B8C72041BE4F",						
	"A461B47079B7BA6120E061BDBDC3782E2E2E",		
	"A8BB6F782EA861BA65BF3A",					
	"48B8B72EE0B861BE2E42BB61B46FBC6570",		
	"4370E32EE0B861BE2E42BB61B46FBC6570",		
	"484554204FACA5A04F4B",						
	"4F4D48",									
	"A14243",									
	"4FACA5A04B41",								
	
	
	0										
};

#line 28 "menu.c"
void MENU_PAGE_CPYRT(void);
void MENU_PAGE_MAIN(void);
void MENU_PAGE_STREAM_SELECT(void);
void MENU_PAGE_ALYESKA_PLC_DATA_ADDR(void);
void MENU_PAGE_UNLOCK_WPROT(void);
void MENU_PAGE_GOTO_TECH_MODE(void);
void MENU_PAGE_CHPW_WPROT(void);
void MENU_PAGE_CHPW_TECH_MODE(void); 
void MENU_PAGE_PHASE_HOLDOVER(void);		 
void MENU_PAGE_NUMSAMP(void);
void MENU_PAGE_SALINITY(void);
void MENU_FORCE_PHASE(void); 				   
void MENU_PAGE_T_UNIT(void);
void MENU_PAGE_T_ADJ(void);
void MENU_PAGE_T_AVG(void);  				  
void MENU_PAGE_LOW_SALT_MODE(void);    		 
void MENU_PAGE_LOW_SALT_THRESHOLD(void);	 
void MENU_PAGE_OIL_ADJ(void);         
void MENU_PAGE_WATER_ADJ(void);
void MENU_PAGE_ALARM_HI(void);
void MENU_PAGE_ALARM_LO(void);
void MENU_PAGE_WATER_IDX(void);
void MENU_PAGE_WATER_LO(void);
void MENU_PAGE_WATER_HI(void);
void MENU_PAGE_OIL_IDX(void);
void MENU_PAGE_OIL_LO(void);
void MENU_PAGE_OIL_HI(void);
void MENU_PAGE_OIL_P1(void);
void MENU_PAGE_OIL_P0(void);
void MENU_PAGE_DIAG(void);
void MENU_PAGE_CAL_OIL(void);
void MENU_PAGE_CAL_WATER(void);
void MENU_PAGE_CAPTURE_OIL(void);
void MENU_PAGE_CAPTURE_WATER(void);
void MENU_PAGE_WATERCUT_RAW(void);
void MENU_PAGE_ACCUMN(int n);
void MENU_PAGE_ACCUMG(int n);
void MENU_PAGE_AVGACCUM(int n);				 
void MENU_PAGE_FLOW(int n);
void MENU_PAGE_NET_FLOW(int n);
void MENU_PAGE_DENSITY(int n);
void MENU_PAGE_INFO(void);
void MENU_PAGE_PORT_CFG(void);
void MENU_PAGE_RESTART(void);
void MENU_PAGE_RESTORE_FACTORY_DEFAULTS(void);
void MENU_TIME_DATE(void);
void MENU_RELAY_CFG(void);
void MENU_AI_CFG(void);
void MENU_AO_CFG(void);  
void MENU_PAGE_TRIM_RTD_SELECT(void);




void MENU_DENSITY(int n);
void MENU_OIL_CALC_MODE(void);

 
void MENU_DENSITY_CORRECTION(void);
void MENU_Density_Cal_Unit(void);
void MENU_Density_Cal(void);
void MENU_Density_D3(void);					   
void MENU_Density_D2(void);					 
void MENU_Density_D1(void);
void MENU_Density_D0(void);
void MENU_Density_ADJ(void);
void MENU_DCM_PORT(void);
void MENU_DCM_CFG_CUTOFF(void);
void MENU_DCM_CFG_DAMP_DENSITY(void);
void MENU_DCM_CFG_DAMP_FR(void);
void MENU_DCM_ZERO(void);

 
void MENU_FLOW_COMPUTER(void);
void MENU_FC_ENABLE_FLOW(int n);
void MENU_FC_ENABLE_GROSS(int n);
void MENU_FC_ENABLE_PULSE(int n);
void MENU_FC_ENABLE_DENSITY(int n);
void MENU_FC_ENABLE_NET(int n);
void MENU_FC_FLOW_CLASS(int n);
void MENU_FC_FLOW_UNIT(int n);
void MENU_FC_ACCUM_UNIT(int n);
void MENU_FC_PULSES_PER_VOL_UNIT(int n);
void MENU_FC_TEMP_UNIT(int n);
void MENU_FC_DENSITY_UNIT(int n);
void MENU_FC_PRESSURE_UNIT(int n);
void MENU_FC_MAN_WATERCUT(int n);
void MENU_FC_MAN_TEMP(int n);
void MENU_FC_MAN_SALINITY(int n);
void MENU_FC_MAN_DENSITY(int n);
void MENU_FC_MAN_PRESSURE(int n);
void MENU_FC_MAN_FLOW(int n);
void MENU_FC_USE_PDI_WATERCUT(int n);
void MENU_FC_USE_PDI_TEMP(int n);
void MENU_FC_USE_PDI_SALINITY(int n);
void MENU_FC_API_TABLE(int n);
void MENU_FC_API_C_ALPHA(int n);
void MENU_FC_DENSITY_ADJ(int n);
void MENU_FC_METER_FACTOR(int n);
void MENU_FC_SHRINKAGE(int n);
void MENU_FC_OIL_DENSITY_ST(int n);
void MENU_FC_WATER_DENSITY_ST(int n);
void MENU_FC_FLOW(int n);
void MENU_FC_WATERCUT(int n);
void MENU_FC_PRESSURE(int n);
void MENU_FC_TEMP(int n);
void MENU_FC_SALINITY(int n);
void MENU_FC_EMUL_DENSITY(int n);
void MENU_FC_OIL_DENSITY_PT(int n);
void MENU_FC_WATER_DENSITY_PT(int n);

void MENU_USB_LOGGING(int n);
void MENU_LOGGING_PERIOD(int n);


const int MENU_PAGE_USER[] = 	{
									(int)&MENU_PAGE_CPYRT,
									(int)&MENU_PAGE_MAIN,
									(int)&MENU_PAGE_UNLOCK_WPROT,
									(int)&MENU_PAGE_INFO,
									(int)&MENU_PAGE_DIAG,
									(int)&MENU_PAGE_STREAM_SELECT,
									(int)&MENU_PAGE_GOTO_TECH_MODE,
									0
								};

const int MENU_PAGE_NORMAL[] = 	{
									(int)&MENU_PAGE_CPYRT,
									(int)&MENU_PAGE_MAIN,
									(int)&MENU_PAGE_UNLOCK_WPROT,
									(int)&MENU_PAGE_INFO,
									(int)&MENU_PAGE_DIAG,
									(int)&MENU_PAGE_NUMSAMP,
									(int)&MENU_PAGE_STREAM_SELECT,
									(int)&MENU_PAGE_T_ADJ,
									(int)&MENU_PAGE_T_AVG,   
									(int)&MENU_PAGE_CAPTURE_OIL,
									(int)&MENU_PAGE_CAL_OIL,
									(int)&MENU_PAGE_CAPTURE_WATER,
									(int)&MENU_PAGE_CAL_WATER,
									(int)&MENU_PAGE_OIL_ADJ,
									(int)&MENU_PAGE_SALINITY,
									(int)&MENU_Density_ADJ,
									(int)&MENU_USB_LOGGING,
									(int)&MENU_PAGE_GOTO_TECH_MODE,
									0
								};

const int MENU_PAGE_TECH[] = 	{
									(int)&MENU_PAGE_CPYRT,
									(int)&MENU_PAGE_MAIN,
									(int)&MENU_PAGE_UNLOCK_WPROT,
									(int)&MENU_PAGE_CHPW_TECH_MODE,
									(int)&MENU_PAGE_CHPW_WPROT,
									(int)&MENU_PAGE_INFO,
									(int)&MENU_PAGE_DIAG,
									(int)&MENU_TIME_DATE, 
									(int)&MENU_PAGE_PHASE_HOLDOVER,  
									(int)&MENU_PAGE_NUMSAMP,
									(int)&MENU_PAGE_STREAM_SELECT,  
									(int)&MENU_FORCE_PHASE, 		  
									(int)&MENU_PAGE_T_UNIT,
									(int)&MENU_PAGE_T_ADJ,
									(int)&MENU_PAGE_T_AVG,   		  
									(int)&MENU_PAGE_CAPTURE_OIL,
									(int)&MENU_PAGE_CAL_OIL,
									(int)&MENU_PAGE_CAPTURE_WATER,
									(int)&MENU_PAGE_CAL_WATER,
									(int)&MENU_PAGE_OIL_ADJ,
									(int)&MENU_PAGE_WATER_ADJ,
									(int)&MENU_PAGE_SALINITY,
									(int)&MENU_PAGE_ALARM_LO,
									(int)&MENU_PAGE_ALARM_HI,
									(int)&MENU_PAGE_OIL_IDX,
									(int)&MENU_PAGE_WATER_IDX,
									(int)&MENU_PAGE_OIL_LO,
									(int)&MENU_PAGE_OIL_HI,
									(int)&MENU_PAGE_WATER_LO,
									(int)&MENU_PAGE_WATER_HI,
									(int)&MENU_PAGE_OIL_P1,
									(int)&MENU_PAGE_OIL_P0,
									(int)&MENU_PAGE_PORT_CFG,
									(int)&MENU_RELAY_CFG,
									(int)&MENU_AI_CFG,
									(int)&MENU_AO_CFG,
									(int)&MENU_PAGE_TRIM_RTD_SELECT,
									
									
									
									
									(int)&MENU_PAGE_ALYESKA_PLC_DATA_ADDR,
									(int)&MENU_DENSITY_CORRECTION,
									(int)&MENU_DCM_PORT,
									(int)&MENU_DCM_CFG_DAMP_DENSITY,
									(int)&MENU_DCM_CFG_DAMP_FR,
									(int)&MENU_DCM_CFG_CUTOFF,
									(int)&MENU_DCM_ZERO,
									(int)&MENU_Density_Cal_Unit,
									(int)&MENU_Density_Cal,
									(int)&MENU_Density_D3,  
									(int)&MENU_Density_D2,  
									(int)&MENU_Density_D1,
									(int)&MENU_Density_D0,
									(int)&MENU_Density_ADJ,
									(int)&MENU_OIL_CALC_MODE,
									(int)&MENU_FLOW_COMPUTER,
									(int)&MENU_USB_LOGGING,
									(int)&MENU_LOGGING_PERIOD,
									(int)&MENU_PAGE_RESTART,
									(int)&MENU_PAGE_RESTORE_FACTORY_DEFAULTS,
									0
								};

 
 
 
 
 
 
 
 
void MENU_INIT(void)
{
	MSVE.INIT				= 1;
	DIO_MSVE				= 0;
	MSVE.M					= 0x00;
	MSVE.S					= 0x00;
	MSVE.V					= 0x00;
	MSVE.E					= 0x00;
	MSVE.MENU				= 0;
	MSVE.SELECT				= 0;
	MSVE.VALUE				= 0;
	MSVE.ENTER				= 0;
	MSVE.DIR				= 0;
	MSVE.DIR_CHANGE			= 0;
	MSVE.CURSOR_ENABLED		= 0;
	MSVE.CURSOR_ROW			= 0;
	MSVE.CURSOR_COL			= 0;
	MSVE.CNT				= 0;
	MSVE.MENU_CNT			= 0;
	MSVE.VALUE_CNT			= 0;
	MSVE.SELECT_CNT			= 0;
	MSVE.MODE_LOCKDOWN		= 0;
	MSVE.MODE_WPROT			= 0;
	MSVE.MODE_DEFINE		= 0;
	MSVE.MODE_USER			= 0;
	MSVE.MODE_TECH			= 0;
	MSVE.MODE_NORMAL		= 0;
	MSVE.PAGE				= 0;
	MSVE.SUBPAGE			= 0;
	MSVE.MENU_TRAP			= 0;
	MSVE.DIP[0]				= 0x00;
	MSVE.DIP[1]				= 0x00;
	MSVE.DIP[2]				= 0x00;
	MSVE.DIP[3]				= 0x00;
	MSVE.FRESH				= 1;

	VAR_Initialize(&MSVE.tmpv, 250, 250, 100.0, 1000.0, 0x00000002|0x00000004);
	VAR_Update(&MSVE.tmpv, 0.0, 0, 0);
	

	sprintf(MSVE.tmpv.name, "MSVE Variable"); 
#line 300
	MSVE.ptmpv				= (VAR*) 0;
	MSVE.tbl				= (int*)0;
}

 
 
 
 
 
 
 
 
void MENU_REFRESH(void)
{
	unsigned char tmp;	 
	int i;				 
	BOOL CHANGE;		 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	i 			 = (*((volatile char*) 0x0900005) & 0xFF) ^ 0xFF;
	i 			 = i << 8;
	DIO_MSVE	&= 0x00FF;
	DIO_MSVE 	|= i;
	MSVE.M 		 = MSVE.M<<1;
	MSVE.S 		 = MSVE.S<<1;
	MSVE.V 		 = MSVE.V<<1;
	MSVE.E 		 = MSVE.E<<1;

	if (DIO_MSVE & 0x01) 
		MSVE.M |= 0x01;
	
	if (DIO_MSVE & 0x02) 
		MSVE.S |= 0x01;
	
	if (DIO_MSVE & 0x04) 
		MSVE.V |= 0x01;
	
	if (DIO_MSVE & 0x08) 
		MSVE.E |= 0x01;
	
	if (DIO_MSVE & 0x100) 
		MSVE.M |= 0x01;
	
	if (DIO_MSVE & 0x200) 
		MSVE.S |= 0x01;
	
	if (DIO_MSVE & 0x400) 
		MSVE.V |= 0x01;
	
	if (DIO_MSVE & 0x800) 
		MSVE.E |= 0x01;

	MSVE.M &= 0x03;
	MSVE.S &= 0x03;
	MSVE.V &= 0x03;
	MSVE.E &= 0x03;

	if (MSVE.M==0x03) 
		MSVE.MENU_CNT++;
	else 
		MSVE.MENU_CNT = 0;

	if (MSVE.S==0x03) 
		MSVE.SELECT_CNT++;
	else 
		MSVE.SELECT_CNT = 0;

	if (MSVE.V==0x03) 
		MSVE.VALUE_CNT++;
	else 
		MSVE.VALUE_CNT = 0;

	if (MSVE.M==0x01) 
		MSVE.MENU = 1;
	else 
		MSVE.MENU = 0;

	if (MSVE.S==0x01) 
		MSVE.SELECT = 1;
	else 
		MSVE.SELECT = 0;

	if (MSVE.V==0x01) 
		MSVE.VALUE = 1;
	else 
		MSVE.VALUE = 0;

	if (MSVE.E==0x01) 
		MSVE.ENTER = 1;
	else 
		MSVE.ENTER = 0;

	for (i=0;i<4;i++) 
		MSVE.DIP[i] = MSVE.DIP[i]<<1;

	if (LCD_PRESENT)
		tmp = (LCD_DIPSW & 0xFF) ^ 0xFF;
	else
		tmp = 0x10;
	
	if (tmp & 0x10) 
		MSVE.DIP[0] |= 0x01;
	
	if (tmp & 0x20) 
		MSVE.DIP[1] |= 0x01;
	
	if (tmp & 0x40) 
		MSVE.DIP[2] |= 0x01;
	
	if (tmp & 0x80) 
		MSVE.DIP[3] |= 0x01;

	CHANGE = 0;
	
	for (i=0;i<4;i++)
	{
		MSVE.DIP[i] &= 0x03;

		if ((MSVE.DIP[i]==0x01) || (MSVE.DIP[i]==0x02))
			CHANGE = 1;
	}

	if (MSVE.FRESH) 
		MSVE.MENU_TRAP = 0;

	 
	MSVE.MODE_LOCKDOWN		= 0;
	MSVE.MODE_WPROT			= 0;
	MSVE.MODE_DEFINE		= 0;
	MSVE.MODE_USER			= 0;
	MSVE.MODE_TECH			= 0;
	MSVE.MODE_NORMAL		= 0;

	if ((MSVE.DIP[2]==0x03) && (DIO_LOCK[2].val))
		MSVE.MODE_WPROT = 1;
	
	if (MSVE.DIP[3]==0x03)
		MSVE.MODE_LOCKDOWN = 1;
	
	if ((!DIO_LOCK[3].val) || ((MSVE.DIP[0]==0x03) && (MSVE.DIP[1]==0x00)))
		MSVE.MODE_TECH = 1;
	else if ((MSVE.DIP[0]==0x00) && (MSVE.DIP[1]==0x03))
		MSVE.MODE_USER = 1;
	else if ((MSVE.DIP[0]==0x03) && (MSVE.DIP[1]==0x03))
		MSVE.MODE_DEFINE = 1;
	else
		MSVE.MODE_NORMAL = 1;
	 

	if ((!MSVE.MENU_TRAP) && (!MSVE.MODE_LOCKDOWN))
	{ 
		if ((MSVE.MENU_CNT>20) && (!MSVE.DIR_CHANGE))
		{
			MSVE.DIR 		^= 0x01;
			MSVE.DIR_CHANGE  = 1;
		}
		else if ((MSVE.DIR_CHANGE) && (MSVE.MENU_CNT<40))
		{
			if (MSVE.M==0x00)
			{
				MSVE.FRESH 		= 1;
				MSVE.DIR_CHANGE = 0;
			}
			else
			{
				if (MSVE.DIR)
				{
					for (i=0;i<4;i++)
						sprintf(LCD_DISPLAY[i],"<<<<<<<<<<<<<<<<<<<<");
				}
				else
				{
					for (i=0;i<4;i++)
						sprintf(LCD_DISPLAY[i],">>>>>>>>>>>>>>>>>>>>");
				}
				
				{asm("	pop		ST			");};
				return;
			}
		}
	}

	if ((!MSVE.INIT) && (CHANGE || (MSVE.MENU_CNT>40)))
	{
		DIO_LOCK[2].val			= 1;
		DIO_LOCK[3].val			= 1;
		MSVE.CURSOR_ENABLED		= 0;
		MSVE.DIR				= 0;
		MSVE.CURSOR_ROW			= 0;
		MSVE.CURSOR_COL			= 0;
		MSVE.CNT				= 0;
		MSVE.MENU_CNT			= 0;
		MSVE.SELECT_CNT			= 0;
		MSVE.VALUE_CNT			= 0;
		MSVE.PAGE				= 1;
		MSVE.SUBPAGE			= 0;
		MSVE.FRESH				= 1;
		MSVE.MENU_TRAP			= 0;
		MSVE.DIR_CHANGE			= 0;
	}

	if (MSVE.MODE_NORMAL)
		MSVE.tbl = (int*) &MENU_PAGE_NORMAL;
	else if (MSVE.MODE_TECH)
		MSVE.tbl = (int*) &MENU_PAGE_TECH;
	else if (MSVE.MODE_USER)
		MSVE.tbl = (int*) &MENU_PAGE_USER;
	else
	{
		for (i=0;i<4;i++)
			sprintf(LCD_DISPLAY[i],"                    ");
		
		MSVE.CNT++;
		{asm("	pop		ST			");};
		
		return;
	}

	if (MSVE.MODE_LOCKDOWN)
	{ 
		if (MSVE.tbl[MSVE.PAGE]!=(int)&MENU_PAGE_MAIN) 
			MSVE.SELECT = 0;
		
		MSVE.MENU  = 0;
		MSVE.VALUE = 0;
		MSVE.ENTER = 0;
	}
	else if (MSVE.MODE_WPROT)
	{
		if	((MSVE.tbl[MSVE.PAGE]!=(int)&MENU_PAGE_UNLOCK_WPROT)&&
			 (MSVE.tbl[MSVE.PAGE]!=(int)&MENU_PAGE_GOTO_TECH_MODE))
		{
			if (MSVE.tbl[MSVE.PAGE]!=(int)&MENU_PAGE_MAIN) 
				MSVE.SELECT = 0;
			
			MSVE.VALUE = 0;
			MSVE.ENTER = 0;
		}
	}

	if (MSVE.MENU && !MSVE.MENU_TRAP)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		MSVE.SUBPAGE			= 0;
		MSVE.CNT				= 0;
		MSVE.FRESH				= 1;
		MSVE.CURSOR_ENABLED		= 0;
		MSVE.MENU				= 0;
		TRIM_RTD_LO 			= 0;       
		TRIM_RTD_HI 			= 0;       
	}
	else if (MSVE.SELECT)
	{
		MSVE.SUBPAGE++;
		MSVE.CNT = 0;
	}

	if (!MSVE.DIR)
	{
		for (i=0;i<=MSVE.PAGE;i++)
		{
			if (MSVE.tbl[i]==0)
			{
				MSVE.PAGE = 1;
				
				break;
			}
		}
	}
	else
	{
		if (MSVE.PAGE<1)
		{ 
			MSVE.PAGE 	= 1;
			i 			= 1;
			
			while(1)
			{
				if (MSVE.tbl[i]==0) 
					break;
				
				MSVE.PAGE = i;
				i++;
			}
		}
	}

	vect_m = (int*)MSVE.tbl[MSVE.PAGE];

    {asm("	push	ST			");						 asm("	push	FP			");						 asm("	ldi		SP,FP		");						 asm("	addi	2,SP		");						 asm("	push	R0			");						 asm("	pushf	R0			");						 asm("	push	R1			");						 asm("	pushf	R1			");						 asm("	push	R2			");						 asm("	pushf	R2			");						 asm("	push	R3			");						 asm("	pushf	R3			");						 asm("	push	R4			");						 asm("	pushf	R4			");						 asm("	push	R5			");						 asm("	pushf	R5			");						 asm("	push	R6			");						 asm("	pushf	R6			");						 asm("	push	R7			");						 asm("	pushf	R7			");						 asm("	push	AR0			");						 asm("	push	AR1			");						 asm("	push	AR2			");						 asm("	push	AR4			");						 asm("	push	AR5			");						 asm("	push	AR6			");						 asm("	push	AR7			");						 asm("	push	DP			");						 asm("	push	IR0			");						 asm("	push	IR1			");						 asm("	push	BK			");						 asm("	push	IOF			");						 asm("	push	RS			");						 asm("	push	RE			");						 asm("	push	RC			");};
	asm("		.global _vect_m    ");
    asm("	ldp		_vect_m        ");
    asm("	ldi		@_vect_m, R0   ");
    asm("	callnz	R0		   	   ");	 
    {asm("	pop		RC			");						 asm("	pop		RE			");						 asm("	pop		RS			");						 asm("	pop		IOF			");						 asm("	pop		BK			");						 asm("	pop		IR1			");						 asm("	pop		IR0			");						 asm("	pop		DP			");						 asm("	pop		AR7			");						 asm("	pop		AR6			");						 asm("	pop		AR5			");						 asm("	pop		AR4			");						 asm("	pop		AR2			");						 asm("	pop		AR1			");						 asm("	pop		AR0			");						 asm("	popf	R7			");						 asm("	pop 	R7			");						 asm("	popf	R6			");						 asm("	pop		R6			");						 asm("	popf	R5			");						 asm("	pop		R5			");						 asm("	popf 	R4			");						 asm("	pop		R4			");						 asm("	popf	R3			");						 asm("	pop		R3			");						 asm("	popf	R2			");						 asm("	pop		R2			");						 asm("	popf	R1			");						 asm("	pop		R1			");						 asm("	popf	R0			");						 asm("	pop 	R0			");						 asm("	subi 	2,SP		");						 asm("	pop 	FP			");						 asm("	pop 	ST			");};

	MSVE.CNT++;
	{asm("	pop		ST			");};
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void Update_Flags_Goto_Next_Menu(BOOL cfg, BOOL skip_adv)
{
	if (cfg)
	{ 
	 
		CHANGE = 1;

		if (CHANGE) 
			Write_CFG_USER();

		HCHANGE[0] = 1;
		HCHANGE[1] = 1;
		HCHANGE_COUNTER++;
	}

	if (!skip_adv)
	{ 
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		MSVE.SUBPAGE			= 0;
		MSVE.CNT				= 0;
		MSVE.FRESH				= 1;
	}

	MSVE.CURSOR_ENABLED		= 0;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
void MSVE_Data_Input(char* title, char* varname, int iw, int ip, BOOL is, BOOL sci, VAR* v, BOOL skip_save, BOOL skip_adv)
{
	int r,i,j,k1,k2,k3,m,w,p,s,vnl;	 
	char f[101];	 
	char t1[101];	 
	char t2[101];	 
	char u[8];		 
	char str[101];	 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	w = iw;
	p = ip;
	s = is;

	if (MSVE.FRESH)
	{
		m = 0;

		if (title[0] == 0x00)
		{
			if (RUSS && (v->name_r != 0x00) )
			{
				if (Get_Russ_Line(v->name_r,OUT_STR2,0) == 0) 
					title = OUT_STR2;
			}
			else
				title = v->name;
		}

		sprintf(MSVE.str[0],"");
		sprintf(MSVE.str[1],"");
		Get_Unit(v->class, v->unit, u);
		
		k3 = strlen(u);

		if (k3>0)
			sprintf(t1,"%s (%s)",title,u);
		else
			sprintf(t1,"%s",title);
		
		i = strlen(t1);

		if ((i>20) && (k3>0))
		{ 
			sprintf(t1,"%s",title);
			
			i = strlen(t1);
			j = (20-i)/2;
			
			if (j<0) 
				j = 0;
			
			sprintf(MSVE.str[0],"                    ");
			strcpy(MSVE.str[0]+j, t1);
			sprintf(t1,"(%s)",u);
			
			i = strlen(t1);
			j = (20-i)/2;
			
			if (j<0) 
				j = 0;
			
			sprintf(MSVE.str[1],"                    ");
			strcpy(MSVE.str[1]+j, t1);
			strcpy(LCD_DISPLAY[0], MSVE.str[0]);
		}
		else
		{ 
			j = (20-i)/2;
			
			if (j<0) 
				j = 0;
			
			sprintf(LCD_DISPLAY[0],"                    ");
			strcpy(LCD_DISPLAY[0]+j, t1);
		}

		if (w>20)
			w = 20;
		
		if (p>6)
			p = 6;
		
		if ((v->STAT & 0x00000002)==0)
		{ 
			MSVE.tmpf[0] = VAR_Get_Unit_Param(v, 0x00060000, 0, 1);
			MSVE.tmpf[2] = VAR_Get_Unit_Param(v, 0x00050000, 0, 1);

			if (!s && ((MSVE.tmpf[0]<0) || (MSVE.tmpf[2]<0)))
			{
				s = 1;
				
				if (w<19)
					w++;
			}

			while(1)
			{ 
				if (sci)
				{ 
					sprintf(f, "%%+%1dE",p);
					
					break;
				}
				else
				{ 
					if (s)
						sprintf(f, "%%+%1d.%1df",w,p);
					else
						sprintf(f, "%%%1d.%1df",w,p);
				}

				if (strlen(f)>20)	 
					sci = 1;
				else
					break;
			}

			sprintf(t2,f,MSVE.tmpf[2]);
			
			k2 = strlen(t2);
			
			if (k2>m) 
				m = k2;

			sprintf(t1,f,MSVE.tmpf[0]);
			
			k1 = strlen(t1);
			
			if (k1>m) 
				m = k1;
			
			if (RUSS)
			{
				if (m<=11)
				{
					
						sprintf(ENG_STR2,"Maximum:            "); 
						Print_To_LCD(1, 1, ENG_STR2, 0);
						
						sprintf(ENG_STR2,"Minimum:            "); 
						Print_To_LCD(2, 2, ENG_STR2, 0);
				}
				else if (m<=15)
				{

					sprintf(ENG_STR2,"Max:                "); 
					Print_To_LCD(1, 3, ENG_STR2, 0);
					sprintf(ENG_STR2,"Min:                "); 
					Print_To_LCD(2, 4, ENG_STR2, 0);

				}
				else
				{ 
					sprintf(LCD_DISPLAY[1],"                    ");
					sprintf(LCD_DISPLAY[2],"                    ");
				}
			}
			else
			{
				if (m<=12)
				{ 
					sprintf(LCD_DISPLAY[1],"Maximum:            ");
					sprintf(LCD_DISPLAY[2],"Minimum:            ");
				}
				else if (m<=16)
				{ 
					sprintf(LCD_DISPLAY[1],"Max:                ");
					sprintf(LCD_DISPLAY[2],"Min:                ");
				}
				else
				{ 
					sprintf(LCD_DISPLAY[1],"                    ");
					sprintf(LCD_DISPLAY[2],"                    ");
				}
			}

			for (i=0;i<k1;i++)
				LCD_DISPLAY[2][19-i] = t1[m-i-1];
			
			for (i=0;i<k2;i++)
				LCD_DISPLAY[1][19-i] = t2[m-i-1];
		}
		else
		{ 
			sprintf(LCD_DISPLAY[1],"                    ");
			sprintf(LCD_DISPLAY[2],"                    ");
			
			vnl = strlen(varname);
		}

		MSVE.tmpf[1] = v->val;

		if (sci) 
			sprintf(f, "%%+%1dE",p);
		else
		{
			if (s)
				sprintf(f, "%%+%1d.%1df",w,p);
			else
				sprintf(f, "%%%1d.%1df",w,p);
		}

		sprintf(t1,f,MSVE.tmpf[1]);
		
		k1 = strlen(t1);
		
		if (k1>m) 
			m = k1;

		if (w>m) 
			m = w;

		MSVE.k = m;
  		vnl    = 20 - m - 1;

		if (vnl>0)
		{
			strncpy(str, varname, vnl);
			sprintf(LCD_DISPLAY[3],"%s:                    ", str);
		}
		else
			sprintf(LCD_DISPLAY[3],"                    ");
		
		for (i=0;i<k1;i++)
			LCD_DISPLAY[3][19-i] = t1[k1-i-1];
		
		MSVE.FRESH = 0;
	}
	else if (strlen(MSVE.str[0])>0)
	{
		if ((MSVE.CNT%50)<25)
			strcpy(LCD_DISPLAY[0], MSVE.str[0]);
		else
			strcpy(LCD_DISPLAY[0], MSVE.str[1]);
	}

	if (MSVE.ENTER && MSVE.CURSOR_ENABLED)
	{ 
		LCD_DISPLAY[3][20] = 0;

		sscanf(LCD_DISPLAY[3]+(20-MSVE.k), "%f", &MSVE.tmpf[4]);

		if (VAR_Update(v, MSVE.tmpf[4],1,1))	 
		{
			VAR_Update(v, MSVE.tmpf[4],0,1);
			
			if (!skip_save) 
				Update_Flags_Goto_Next_Menu(1,skip_adv);
		}
		else
			r = 0;
		
		MSVE.tmpf[1] = v->val;
	}
	else if (MSVE.SELECT)
	{ 
		if (!MSVE.CURSOR_ENABLED)
		{
			MSVE.CURSOR_ENABLED = 1;
			MSVE.CURSOR_ROW = 3;
			MSVE.CURSOR_COL = 19;
		}
		else
		{
			MSVE.CURSOR_COL--;

			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 'E') 
				MSVE.CURSOR_COL--;
			
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 'e') 
				MSVE.CURSOR_COL--;
			
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '.') 
				MSVE.CURSOR_COL--;

			if ((MSVE.CURSOR_COL<=(19-MSVE.k)) || (MSVE.CURSOR_COL>19))
				MSVE.CURSOR_COL = 19;
			
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]==' ')
			{
				if(	   (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL+1] == '-') 
					|| (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL+1] == '+'))
				{
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL  ]	= LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL+1];
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL+1]	= '0';
					MSVE.CURSOR_COL++;
				}
				else
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL  ] = '0';
			}
		}
	}
	else if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
	{ 
		if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '-')
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]  = '+';
		else if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '+')
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]  = '-';
		else
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
			
			if ( LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] > '9')
				 LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
			else if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] < '0')
				 LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
		}
	}

	{asm("	pop		ST			");};
}

 
 
 
 
 
 
 
 
void MENU_PAGE_CPYRT(void)
{
	if ((MSVE.CNT%100)==0)
		MSVE.SUBPAGE++;
	
	switch(MSVE.SUBPAGE % 4)
	{
		case 3:
		{
			MSVE.PAGE++;
			MSVE.SUBPAGE = 0;
			MSVE.FRESH   = 1;
			
			break;
		}
		case 2:
		{
			MSVE.FRESH = 1;
			
			MENU_PAGE_INFO();
			
			break;
		}
		default:
		{
			if (MSVE.FRESH)
			{
				sprintf(ENG_STR,"Copyright 2016"); 
				Print_To_LCD(0, 5, ENG_STR, -1);
				
				sprintf(ENG_STR,"Phase Dynamics, Inc."); 
				Print_To_LCD(1, 87, ENG_STR, -1);
				
				if(RUSS)
				{
					sprintf(LCD_DISPLAY[2],"");
					sprintf(LCD_DISPLAY[3],"");
				}
				else
				{
					sprintf(LCD_DISPLAY[2],"1251 Columbia Dr.");
					sprintf(LCD_DISPLAY[3],"Richardson, TX 75081");
				}
				
				MSVE.INIT = 0;
				MSVE.FRESH = 0;
			}
			break;
		}
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_RESTART(void)
{
	if (MSVE.FRESH)
	{ 
		MSVE.FRESH = 0;
				
		sprintf(ENG_STR,"       Restart");	
		Print_To_LCD(0, 6, ENG_STR, 7);
		sprintf(LCD_DISPLAY[1],"");
		
		if(RUSS)
		{
			Get_Russ_Line(6,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s",OUT_STR);
		}
		else
			sprintf(ENG_STR,"ENTER = RESTART");	
		Print_To_LCD(2, 7, ENG_STR, 0);
		sprintf(LCD_DISPLAY[3],"");
	}

	if (MSVE.ENTER)
	{ 
		c_int00();
		while(1){}  
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_RESTORE_FACTORY_DEFAULTS(void)
{
	if (MSVE.FRESH)
	{ 
		MSVE.FRESH = 0;
		
		sprintf(ENG_STR,"  Restore Factory");	
		Print_To_LCD(0, 8, ENG_STR, 1);
		
		sprintf(ENG_STR,"     Defaults?");		
		Print_To_LCD(1, 9, ENG_STR, 5);
		

		sprintf(LCD_DISPLAY[2],"");
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[1] = 0;
	}

	if (MSVE.tmpi[1]==0)
	{ 
		
		if(RUSS)
		{
			switch (MSVE.tmpi[0]&0x01)
			{
				case 1: 
					Get_Russ_Line(10,OUT_STR,0);
					sprintf(LCD_DISPLAY[3],"        %s",OUT_STR); 
					break;
				default: 
					Get_Russ_Line(11,OUT_STR,0);
					sprintf(LCD_DISPLAY[3],"         %s",OUT_STR); 
					break;
			}
		}
		else
		{
			switch (MSVE.tmpi[0]&0x01)
			{
				case 1:  
					sprintf(ENG_STR,"        YES");	
					Print_To_LCD(3, 10, ENG_STR, 9);
					break;
				default: 
					sprintf(ENG_STR,"         NO"); 	
					Print_To_LCD(3, 11, ENG_STR, 8);
					break;
			}
		}
	}

	if (MSVE.SELECT || MSVE.VALUE)	 
		MSVE.tmpi[0]++;
	
	if (MSVE.ENTER)
	{ 
		if (MSVE.tmpi[0]&0x01)
		{ 
			MSVE.tmpi[1] = 1;
			sprintf(ENG_STR," Restoring Factory");	
			Print_To_LCD(0, 12, ENG_STR, 0);
			sprintf(ENG_STR,"    Defaults...");		
			Print_To_LCD(1, 13, ENG_STR, 4);
			sprintf(LCD_DISPLAY[2],"");
			sprintf(LCD_DISPLAY[3],"");
			
			Submit_Restore_CFG_FACTORY();
		}
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_DIAG(void)
{
	int i;		 
	char u[8];	 

	if (!MSVE.CURSOR_ENABLED)
	{ 
		sprintf(ENG_STR,"    Diagnostics");		
		Print_To_LCD(0, 14, ENG_STR, 4);
		
		i = REG_DIAG[0].val;
		
		Get_Unit(REG_ADC[10].class, REG_ADC[10].unit, u);
		sprintf(LCD_DISPLAY[1],"%04X        T:%4.0f%s",i, REG_ADC[10].val,u);
		
		i = REG_DIAG[1].val;
		
		sprintf(LCD_DISPLAY[2],"%04X", i);
		strcpy(LCD_DISPLAY[3],E_STRING);
	}
	else if (MSVE.FRESH)
	{ 
		MSVE.FRESH = 0;
		
		sprintf(ENG_STR,"  Diagnostics Mask");	
		Print_To_LCD(0, 15, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"%04X", DIAGNOSTICS_MASK[0]);
		sprintf(LCD_DISPLAY[2],"%04X", DIAGNOSTICS_MASK[1]);
		sprintf(LCD_DISPLAY[3],"");
	}

	if (MSVE.ENTER)
	{ 
		if (!MSVE.CURSOR_ENABLED)
			Clear_Diagnostics();
		else
		{
			sscanf(LCD_DISPLAY[1], "%04X", &DIAGNOSTICS_MASK[0]);
			sscanf(LCD_DISPLAY[2], "%04X", &DIAGNOSTICS_MASK[1]);
			Update_Flags_Goto_Next_Menu(1,1);
		}
	}
	else if (MSVE.SELECT)
	{ 
		if (!MSVE.CURSOR_ENABLED)
		{ 
			MSVE.FRESH = 1;
			MSVE.CURSOR_ENABLED = 1;
			MSVE.CURSOR_ROW = 2;
			MSVE.CURSOR_COL = 3;
		}
		else
		{ 
			MSVE.CURSOR_COL--;
			
			if (MSVE.CURSOR_COL<0)
			{ 
				MSVE.CURSOR_ROW--;
				MSVE.CURSOR_COL = 3;
			}
			
			 
			if (MSVE.CURSOR_ROW<1)
				MSVE.CURSOR_ROW = 2;
		}
	}
	else if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
	{ 
		if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '9')
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]  = 'A';
		else if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 'F')
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
		else
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
	}
}

 
 
 
 
 
 
 
 
 
void MENU_PAGE_MAIN(void)
{
	char	u[8];		 
	float	min,max;	 
	BOOL	phase;		 

	if (MSVE.FRESH)
	{ 
		MSVE.FRESH = 0;
		MSVE.tmpi[0] = 0;
	}

	if (MSVE.SELECT)	 
		MSVE.tmpi[0]++;
	else if (MSVE.MENU)
		MSVE.tmpi[0] = 0;
	
	MSVE.MENU_TRAP = 1;
                                     
	switch(MSVE.tmpi[0])
	{ 
		case 1:
		{ 
			MENU_PAGE_AVGACCUM(0);
		
			if(MSVE.tmpi[0]==1)
				break;
		}
		case 2:
		{ 
			MENU_PAGE_ACCUMN(0);
			
			if(MSVE.tmpi[0]==2) 
				break;
		}
        case 3:
		{ 
			MENU_PAGE_NET_FLOW(0);
			
			if(MSVE.tmpi[0]==3) 
				break;
		}
        case 4:
		{ 
			MENU_PAGE_ACCUMG(0);
			
			if(MSVE.tmpi[0]==4) 
				break;
		}
        case 5:
		{ 
			MENU_PAGE_FLOW(0);
			
			if(MSVE.tmpi[0]==5) 
				break;
		}
        case 6:
		{ 
			MENU_PAGE_ACCUMN(1);
			
			if(MSVE.tmpi[0]==6) 
				break;
		}
        case 7:
		{ 
			MENU_PAGE_NET_FLOW(1);
			
			if(MSVE.tmpi[0]==7) 
				break;
		}
        case 8:
		{ 
			MENU_PAGE_ACCUMG(1);
			
			if(MSVE.tmpi[0]==8) 
				break;
		}
        case 9:
		{ 
			MENU_PAGE_FLOW(1);
			
			if(MSVE.tmpi[0]==9) 
				break;
		}
        case 10:
		{ 
			MENU_PAGE_ACCUMN(2);
			
			if(MSVE.tmpi[0]==10) 
				break;
		}
        case 11:
		{ 
			MENU_PAGE_NET_FLOW(2);
			
			if(MSVE.tmpi[0]==11) 
				break;
		}
        case 12:
		{ 
			MENU_PAGE_ACCUMG(2);
			
			if(MSVE.tmpi[0]==12) 
				break;
		}
        case 13:
		{ 
			MENU_PAGE_FLOW(2);
			
			if(MSVE.tmpi[0]==13) 
				break;
		}
        case 14:
		{ 
			MENU_DENSITY(0);
			
			if(MSVE.tmpi[0]==14) 
				break;
		}
        case 15:
		{ 
			MENU_DENSITY(1);
			
			if(MSVE.tmpi[0]==15) 
				break;
		}
        case 16:
		{ 
			MENU_DENSITY(2);
			
			if(MSVE.tmpi[0]==16) 
				break;
		}
        case 17:
		{ 
			MENU_PAGE_DENSITY(0);
			
			if(MSVE.tmpi[0]==17) 
				break;
		}
        case 18:
		{ 
			MENU_PAGE_DENSITY(1);
			
			if(MSVE.tmpi[0]==18) 
				break;
		}
        case 19:
		{ 
			MENU_PAGE_DENSITY(2);
			
			if(MSVE.tmpi[0]==19) 
				break;
		}
        default:
		{
			MSVE.MENU_TRAP = 0;
			MSVE.tmpi[0]   = 0;

			if (MSVE.tbl == (int*) &MENU_PAGE_TECH)
			{ 
				if ((MSVE.CNT%40)==0)
					MSVE.SUBPAGE++;
				
				if (MSVE.SUBPAGE%2)
				{ 
					if ((ANALYZER_MODE.val&0xFF)!=4) 
						phase = 0;  
					else 
						phase = 1;  
				}
				else
				{ 
					if (((ANALYZER_MODE.val&0xFF)==1) ||((ANALYZER_MODE.val&0xFF)==6) || ((ANALYZER_MODE.val&0xFF)==4)) 
						phase = 1;  
					else 
						phase = 0;  
				}
	
				 
				if (phase)
				{ 
					Get_Unit(REG_FREQ[OSC_OIL_CALC].class, REG_FREQ[OSC_WATER_CALC].unit, u);
					if (RUSS)
					{
						Get_Russ_Line(16,OUT_STR,0);
						sprintf(LCD_DISPLAY[1],"%s%5.1f %s",OUT_STR,REG_FREQ[OSC_WATER_CALC].val, u);
					}	
					else
						sprintf(LCD_DISPLAY[1],"Freq(W):%8.3f %s",REG_FREQ[OSC_WATER_CALC].val, u);		
					
					Get_Unit(REG_VREF[OSC_WATER_CALC].class, REG_VREF[OSC_WATER_CALC].unit, u);
					if (RUSS)
					{
						Get_Russ_Line(17,OUT_STR,0);
						sprintf(LCD_DISPLAY[2],"%s %6.3f %s",OUT_STR,REG_VREF[OSC_WATER_CALC].val,u);
					}
					else
						sprintf(LCD_DISPLAY[2],"Ref Pwr(W): %6.3f %s",REG_VREF[OSC_WATER_CALC].val,u);	
				}
				else
				{ 
					Get_Unit(REG_FREQ[OSC_OIL_CALC].class, REG_FREQ[OSC_OIL_CALC].unit, u);
					if (RUSS)
					{
						Get_Russ_Line(18,OUT_STR,0);
						sprintf(LCD_DISPLAY[1],"%s%5.1f %s",OUT_STR,REG_FREQ[OSC_OIL_CALC].val, u);
					}	
					else
						sprintf(LCD_DISPLAY[1],"Freq(O):%8.3f %s",REG_FREQ[OSC_OIL_CALC].val, u);	
					
					
					Get_Unit(REG_VREF[OSC_OIL_CALC].class, REG_VREF[OSC_OIL_CALC].unit, u);
					if (RUSS)
					{
						Get_Russ_Line(19,OUT_STR,0);
						sprintf(LCD_DISPLAY[2],"%s %6.3f %s",OUT_STR,REG_VREF[OSC_OIL_CALC].val,u);
					}	
					else
					sprintf(LCD_DISPLAY[2],"Ref Pwr(O): %6.3f %s",REG_VREF[OSC_OIL_CALC].val,u);	
				}
	
				Get_Unit(REG_WATERCUT.class, REG_WATERCUT.unit, u);
				
				 
				if (REG_EMULSION_PHASE.val==2.0)
				{
					if(RUSS)
					{
						Get_Russ_Line(215, OUT_STR, 0);
						sprintf(LCD_DISPLAY[0],"%s:      (%2d)  ?.? %s",OUT_STR,(int)REG_STREAM_SELECT.val, u);
					}
					else
						sprintf(LCD_DISPLAY[0],"Water Cut(%2d)  ?.? %s",(int)REG_STREAM_SELECT.val, u); 
				}
				else
				{
					min = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00060000, 0, 0);
					max = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00050000, 0, 0);

					if (f_compare(&max, 10.0, 0)<=0)
					{
						if(RUSS)
						{
							Get_Russ_Line(215, OUT_STR, 0);
							sprintf(LCD_DISPLAY[0],"%s:      (%2d)%5.2f %s",OUT_STR,(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u);
						}
						else
							sprintf(LCD_DISPLAY[0],"Water Cut(%2d)%5.2f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); 
					}
					else
					{
						if(RUSS)
						{
							Get_Russ_Line(215, OUT_STR, 0);
							sprintf(LCD_DISPLAY[0],"%s:      (%2d)%5.1f %s",OUT_STR,(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u);
						}
						else
							sprintf(LCD_DISPLAY[0],"Water Cut(%2d)%5.1f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u);	
					}
	
				}
			
				 
				if ((DIAGNOSTICS_ERROR_CODE==0)||(MSVE.SUBPAGE%3>0))
				{
					if (REG_EMULSION_PHASE.val==0.0)
					{ 
						Get_Unit(REG_TEMPERATURE_USER.class, REG_TEMPERATURE_USER.unit, u);
						
						if (RUSS)
						{
							Get_Russ_Line(20,OUT_STR,0);
							sprintf(LCD_DISPLAY[3],"%s  %5.1f%s",OUT_STR,REG_TEMPERATURE_USER.val, u);
						}
						else
							sprintf(LCD_DISPLAY[3],"Phase: Oil   %5.1f%s",REG_TEMPERATURE_USER.val, u); 
					}
					else if (REG_EMULSION_PHASE.val==1.0)
					{ 
						if (MSVE.SUBPAGE%3==1)
						{
							Get_Unit(REG_TEMPERATURE_USER.class, REG_TEMPERATURE_USER.unit, u);
							if (RUSS)
							{
								Get_Russ_Line(21,OUT_STR,0);
								sprintf(LCD_DISPLAY[3],"%s %7.1f%s",OUT_STR,REG_TEMPERATURE_USER.val, u);
							}
							else
								sprintf(LCD_DISPLAY[3],"Phase: Water %5.1f%s",REG_TEMPERATURE_USER.val, u); 
						}
						else if ((MSVE.SUBPAGE%3==2)&&((ANALYZER_MODE.val&0xFF)!=3))   
						{
							Get_Unit(REG_SALINITY.class, REG_SALINITY.unit, u);
							
							if (RUSS)
							{
								if (HSALT.ENABLED.val==1)
								{
									Get_Russ_Line(22,OUT_STR,0);
									sprintf(LCD_DISPLAY[3],"%s: %4.1f%s",OUT_STR,REG_SALINITY.val, u);
								}
								else
								{
									Get_Russ_Line(23,OUT_STR,0);
									sprintf(LCD_DISPLAY[3],"%s %4.1f%s",OUT_STR,REG_SALINITY.val, u);
								}
							}
							else
							{
								if (HSALT.ENABLED.val==1)
									sprintf(LCD_DISPLAY[3],"HSALT:       %5.2f %s",REG_SALINITY.val, u);	
								else
									sprintf(LCD_DISPLAY[3],"Salinity:    %5.2f %s",REG_SALINITY.val, u);	
							}
						}
					}
					else
					{ 
						Get_Unit(REG_TEMPERATURE_USER.class, REG_TEMPERATURE_USER.unit, u);
						if (RUSS)
						{
							Get_Russ_Line(24,OUT_STR,0);
							sprintf(LCD_DISPLAY[3],"%s %5.1f%s",OUT_STR,REG_TEMPERATURE_USER.val, u);
						}
						else
							sprintf(LCD_DISPLAY[3],"Phase: Error %5.1f%s",REG_TEMPERATURE_USER.val, u);	
					}
				}
				else
					strcpy(LCD_DISPLAY[3], E_STRING);
			}
			else
			{ 
				MSVE.tmpi[0] = 0;
	            
				 
				if (REG_EMULSION_PHASE.val==0.0)		 
				{
					sprintf(ENG_STR,"Oil");	
					Print_To_LCD(2, 25, ENG_STR, 0);
				}
				else if (REG_EMULSION_PHASE.val==1.0)	 
				{
					sprintf(ENG_STR,"Water");	
					Print_To_LCD(2, 69, ENG_STR, 0);
				}
				else                                     
				{
					sprintf(ENG_STR,"Phase Logic Error");	
					Print_To_LCD(2, 26, ENG_STR, 0);
				}
				
				Get_Unit(REG_WATERCUT.class, REG_WATERCUT.unit, u);
				
				 
				if (REG_EMULSION_PHASE.val==2.0)
				{
					if (RUSS)
						sprintf(LCD_DISPLAY[0],"BC (%2d)        ?.? %s",(int)REG_STREAM_SELECT.val, u); 
					else
						sprintf(LCD_DISPLAY[0],"Water Cut(%2d)  ?.? %s",(int)REG_STREAM_SELECT.val, u); 
					
				}
				else
				{
					min = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00060000, 0, 0);
					max = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00050000, 0, 0);
					
					if (RUSS)
					{
						if (f_compare(&max, 20.0, 0)<=0)
							sprintf(LCD_DISPLAY[0],"BC (%2d)      %5.2f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); 
						else
							sprintf(LCD_DISPLAY[0],"BC (%2d)      %5.1f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); 
					}
					else
					{
						if (f_compare(&max, 20.0, 0)<=0)
							sprintf(LCD_DISPLAY[0],"Water Cut(%2d)%5.2f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); 
						else
							sprintf(LCD_DISPLAY[0],"Water Cut(%2d)%5.1f %s",(int)REG_STREAM_SELECT.val, REG_WATERCUT.val, u); 
					}
				}
	
				 
				Get_Unit(REG_TEMPERATURE_USER.class, REG_TEMPERATURE_USER.unit, u);
				if (RUSS)
				{
					Get_Russ_Line(28,OUT_STR,0);
					sprintf(LCD_DISPLAY[1],"%s  %5.0f%s",OUT_STR, REG_TEMPERATURE_USER.val, u);
				}
				else
					sprintf(LCD_DISPLAY[1],"Temperature  %5.0f%s", REG_TEMPERATURE_USER.val, u);	
				
				sprintf(ENG_STR,"Phase Dynamics, Inc.");	
				Print_To_LCD(3, 87, ENG_STR, -1);
			}

			break;
		}
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_STREAM_SELECT(void)
{
	if (RUSS)
	{
		Get_Russ_Line(29,OUT_STR2,0);
		sprintf(OUT_STR,"%s ",OUT_STR2);
		MSVE_Data_Input("", OUT_STR, 2, 0, 0, 0, &REG_STREAM_SELECT, 0, 0);
	}
	else
		MSVE_Data_Input("", "Stream ", 2, 0, 0, 0, &REG_STREAM_SELECT, 0, 0); 
}

 
 
 
 
 
 
 
 
void MENU_PAGE_PHASE_HOLDOVER(void)
{   	
	if (((ANALYZER_MODE.val&0xFF)!=6) && ((ANALYZER_MODE.val&0xFF)!=1))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(30,OUT_STR,0);
			MSVE_Data_Input("",OUT_STR, 2, 0, 0, 0, &REG_PHASE_HOLD_CYCLES, 0, 0);
		}
		else
			MSVE_Data_Input("", "HoldCyc", 2, 0, 0, 0, &REG_PHASE_HOLD_CYCLES, 0, 0);  
	}
}  

 
 
 
 
 
 
 
 
void MENU_PAGE_NUMSAMP(void)
{
	if (RUSS)
	{
		Get_Russ_Line(31,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 3, 0, 0, 0, &REG_NUM_SAMP, 0, 0);
	}
	else
		MSVE_Data_Input("", "NumSamp", 3, 0, 0, 0, &REG_NUM_SAMP, 0, 0);	
}

 
 
 
 
 
 
 
 
void MENU_PAGE_ALYESKA_PLC_DATA_ADDR(void)
{
	if (!ALYESKA.ENABLED || RUSS)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
		MSVE_Data_Input("", "Address", 5, 0, 0, 0, &ALYESKA.DESTINATION_ADDRESS, 0, 0); 
}

 
 
 
 
 
 
 
 
void MENU_PAGE_SALINITY(void)
{
	if (((ANALYZER_MODE.val&0xFF)==0) || ((ANALYZER_MODE.val&0xFF)==3))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(33,OUT_STR2,0);
			sprintf(OUT_STR,"%s   ",OUT_STR2);
			MSVE_Data_Input("", OUT_STR, 5, 2, 0, 0, &REG_SALINITY, 0, 0);
		}
		else	
			MSVE_Data_Input("", "Salt   ", 5, 2, 0, 0, &REG_SALINITY, 0, 0);	
	}
}

  
 
 
 
 
 
 
 
  
void MENU_FORCE_PHASE(void)
{
	unsigned int i; 
	if (((ANALYZER_MODE.val&0xFF)!=6) && ((ANALYZER_MODE.val&0xFF)!=1))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (MSVE.FRESH)
		{ 
			MSVE.FRESH = 0;
			
			sprintf(ENG_STR,"    Force Phase:");	
			Print_To_LCD(0, 34, ENG_STR, 4);
			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			
			if (OIL_PHASE_ONLY.val == 1)
				MSVE.tmpi[0] = 1; 
			else if (WATER_PHASE_ONLY.val == 1)
				MSVE.tmpi[0] = 2; 
			else 
				MSVE.tmpi[0] = 0; 
		}

		switch(MSVE.tmpi[0])
		{ 
			case 1:		
				sprintf(ENG_STR,"        OIL");	
				Print_To_LCD(3, 25, ENG_STR, 7);		
				break;
			case 2:		
				sprintf(ENG_STR,"        WATER");	
				Print_To_LCD(3, 69, ENG_STR, 8);
				break;
			default:	
				MSVE.tmpi[0]=0; 
				sprintf(ENG_STR,"        AUTO");	
				Print_To_LCD(3, 35, ENG_STR, 8);
				break;
		}

		if (MSVE.SELECT)
		{ 
			MSVE.tmpi[0]++;
			
			if (MSVE.tmpi[0] > 2) 
				MSVE.tmpi[0] = 0;
		}
		else if (MSVE.VALUE)
		{ 
			MSVE.tmpi[0]--;
			
			if (MSVE.tmpi[0] < 0) 
				MSVE.tmpi[0] = 2;
		}

		if (MSVE.ENTER)
		{ 
			if (MSVE.tmpi[0] == 1)  
			{   
				WATER_PHASE_ONLY.val = 0;
				OIL_PHASE_ONLY.val   = 1;	
			} 
			else if (MSVE.tmpi[0] == 2)  
			{
				OIL_PHASE_ONLY.val   = 0;
				WATER_PHASE_ONLY.val = 1;	
			} 
			else
			{
				OIL_PHASE_ONLY.val   = 0;
				WATER_PHASE_ONLY.val = 0; 		
			}   
			
			
			 


			i = (int)round(REG_STREAM_SELECT.val,0) - 1.0; 
			OIL_PHASE_ONLY_ENABLE[i]  = OIL_PHASE_ONLY.val;
			WATER_PHASE_ONLY_ENABLE[i]= WATER_PHASE_ONLY.val;  
	
            
            Update_Flags_Goto_Next_Menu(1,0);
		}
	}
}
  

 
 
 
 
 
 
 
 
void MENU_PAGE_T_UNIT(void)
{
	if (MSVE.FRESH)
	{ 
		MSVE.FRESH = 0;
		
		sprintf(ENG_STR,"  Temperature Unit");	
		Print_To_LCD(0, 36, ENG_STR, 4);
		
		MSVE.tmpi[4] = REG_TEMPERATURE_EXTERNAL.class;
		
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		if (RUSS)
		{	
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR, MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	
		
		MSVE.tmpi[3] = REG_TEMPERATURE_EXTERNAL.unit & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(46,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s :  %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(254,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
			
			Get_Russ_Line(38,OUT_STR,0);
			sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
		}
		else
		{
			sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
			sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
		}
	}

	if (MSVE.ENTER)
	{ 
		REG_TEMPERATURE_EXTERNAL.unit = MSVE.tmpi[3]; 
		REG_TEMPERATURE_AVG.unit 	  = MSVE.tmpi[3];      
		
		Set_ASCII_Temp_Unit(&REG_TEMPERATURE_EXTERNAL);   
		Set_ASCII_Temp_Unit(&REG_TEMPERATURE_AVG);     
		Update_Flags_Goto_Next_Menu(1,0);
	}
	else if (MSVE.SELECT)
	{ 
		if (MSVE.tmpi[4]!= 0) 
			MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else if (MSVE.VALUE)
	{ 
		if (MSVE.tmpi[4]!= 0) 
			MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}  
	    
	if (REG_TEMPERATURE_EXTERNAL.unit == 32)
		DIO_TEMP_C.val = 1;
	else
		DIO_TEMP_C.val = 0;	
	 
}

 
 
 
 
 
 
 
 
void MENU_PAGE_T_ADJ(void)
{
	if (RUSS)
	{
		Get_Russ_Line(39,OUT_STR2,0);
		sprintf(OUT_STR,"%s ",OUT_STR2);
		MSVE_Data_Input("", OUT_STR, 6, 2, 1, 0, &REG_TEMPERATURE_USER_ADJUST, 0, 0);
	}	
	else
		MSVE_Data_Input("", "TAdj   ", 6, 2, 1, 0, &REG_TEMPERATURE_USER_ADJUST, 0, 0);	
}

 
 
 
 
 
 
 
 
void MENU_PAGE_T_AVG(void)
{   
	char	u[8];
	
	if (MSVE.FRESH)
	{
		sprintf(ENG_STR,"Average Temperature");	
		Print_To_LCD(0, 40, ENG_STR, -1);
		sprintf(LCD_DISPLAY[1],"");   
		Get_Unit(REG_TEMPERATURE_AVG.class, REG_TEMPERATURE_AVG.unit, u);   
		sprintf(LCD_DISPLAY[2]," %5.1f%s",REG_TEMPERATURE_AVG.val, u); 
		sprintf(ENG_STR,"ENTER = RESET");	
		Print_To_LCD(3, 41, ENG_STR, -1);
	}  
	if (MSVE.ENTER)
		AVG_RESET.val=1;		
}

 
 
 
 
 
 
 
 
void MENU_PAGE_CHPW_WPROT(void)
{
	if (MSVE.MODE_WPROT)
	{ 
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		return;
	}

	if (MSVE.FRESH)
	{ 
		MSVE.tmpv.class 		= 252;
		MSVE.tmpv.unit			= 252;
		MSVE.tmpv.calc_unit 	= 252;
		MSVE.tmpv.val 			= 0;
		MSVE.tmpv.calc_val 		= 0;
		MSVE.tmpv.bound_hi_set 	= REG_LOCK[2].bound_hi_set;
		MSVE.tmpv.bound_lo_set 	= REG_LOCK[2].bound_lo_set;
		
		if (RUSS)
		{
			Get_Russ_Line(42,OUT_STR2,0);
			sprintf (MSVE.str[3], OUT_STR2);
		}
		else
			sprintf (MSVE.str[3], " Change WP Password");	
	}

	 
	if (RUSS)
	{
		Get_Russ_Line(46,OUT_STR2,0);
		sprintf(OUT_STR,"%s    ",OUT_STR2);
		MSVE_Data_Input(MSVE.str[3], OUT_STR, 5, 0, 0, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "CODE   ", 5, 0, 0, 0, &MSVE.tmpv, 1, 1);	

	if (MSVE.ENTER)
	{ 
		REG_PW[2] = MSVE.tmpv.val;
		
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_CHPW_TECH_MODE(void)
{
	if (MSVE.MODE_WPROT)
	{ 
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		return;
	}

	if (MSVE.FRESH)
	{ 
		MSVE.tmpv.class			= 252;
		MSVE.tmpv.unit 			= 252;
		MSVE.tmpv.calc_unit 	= 252;
		MSVE.tmpv.val 			= 0;
		MSVE.tmpv.calc_val 		= 0;
		MSVE.tmpv.bound_hi_set 	= REG_LOCK[3].bound_hi_set;
		MSVE.tmpv.bound_lo_set 	= REG_LOCK[3].bound_lo_set;
		
		if (RUSS)
		{
			Get_Russ_Line(43,OUT_STR2,0);
			sprintf (MSVE.str[3], OUT_STR2);
		}
		else
			sprintf (MSVE.str[3], "Change TECH Password");	
	}

	 
	if (RUSS)
	{
		Get_Russ_Line(46,OUT_STR2,0);
		sprintf(OUT_STR,"%s    ",OUT_STR2);
		MSVE_Data_Input(MSVE.str[3], OUT_STR, 5, 0, 0, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "CODE   ", 5, 0, 0, 0, &MSVE.tmpv, 1, 1);	

	if (MSVE.ENTER)
	{ 
		REG_PW[3] = MSVE.tmpv.val;
		
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_UNLOCK_WPROT(void)
{
	if (!MSVE.MODE_WPROT)
	{ 
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (LOCKOUT)
		{ 
			sprintf(ENG_STR,"     LOCKED OUT");	
			Print_To_LCD(0, 44, ENG_STR, 3);
			sprintf(LCD_DISPLAY[1],"");
			sprintf(ENG_STR,"   Please Wait...");	
			Print_To_LCD(2, 45, ENG_STR, 4);
			sprintf(LCD_DISPLAY[3],"");
		}
		else
		{ 
			if (RUSS)
			{
				Get_Russ_Line(46,OUT_STR2,0);
				sprintf(OUT_STR,"%s    ",OUT_STR2);
				MSVE_Data_Input("", OUT_STR, 5, 0, 0, 0, &REG_LOCK[2], 1, 1);
			}
			else
				MSVE_Data_Input("", "CODE   ", 5, 0, 0, 0, &REG_LOCK[2], 1, 1);	

			if (MSVE.ENTER)
			{
				MSVE.FRESH 			= 1;
				MSVE.CURSOR_ENABLED	= 0;
				MSVE.CURSOR_ROW		= 0;
				MSVE.CURSOR_COL		= 0;

				if (!DIO_LOCK[2].val)
				{
					MSVE.DIR		= 0;
					MSVE.CNT		= 0;
					MSVE.MENU_CNT	= 0;
					MSVE.SELECT_CNT	= 0;
					MSVE.VALUE_CNT	= 0;
					MSVE.PAGE		= 1;
					MSVE.SUBPAGE	= 0;
					MSVE.MENU_TRAP	= 0;
					MSVE.DIR_CHANGE	= 0;
				}
			}
		}
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_GOTO_TECH_MODE(void)
{
	if (LOCKOUT)
	{ 
		sprintf(ENG_STR,"     LOCKED OUT");	
		Print_To_LCD(0, 44, ENG_STR, 2);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(ENG_STR,"   Please Wait...");	
		Print_To_LCD(2, 45, ENG_STR, 5);
		sprintf(LCD_DISPLAY[3],"");
	}
	else
	{ 
		if (MSVE.FRESH)
			DIO_LOCK[3].val = 1;
		
		if (RUSS)
		{
			Get_Russ_Line(46,OUT_STR2,0);
			sprintf(OUT_STR,"%s    ",OUT_STR2);
			MSVE_Data_Input("", OUT_STR, 5, 0, 0, 0, &REG_LOCK[3], 1, 1);
		}
		else
			MSVE_Data_Input("", "CODE   ", 5, 0, 0, 0, &REG_LOCK[3], 1, 1);	

		if (MSVE.ENTER)
		{
			MSVE.FRESH 			= 1;
			MSVE.CURSOR_ENABLED	= 0;
			MSVE.CURSOR_ROW		= 0;
			MSVE.CURSOR_COL		= 0;
		}

		if (!DIO_LOCK[3].val)
		{
			MSVE.DIR			= 0;
			MSVE.CNT			= 0;
			MSVE.MENU_CNT		= 0;
			MSVE.SELECT_CNT		= 0;
			MSVE.VALUE_CNT		= 0;
			MSVE.PAGE			= 1;
			MSVE.SUBPAGE		= 0;
			MSVE.MENU_TRAP		= 0;
			MSVE.DIR_CHANGE		= 0;
		}
	}
}

   
 
 
 
 
 
 
 
 
void MENU_PAGE_LOW_SALT_MODE(void)    
{
	if (((ANALYZER_MODE.val&0xFF)==0) || ((ANALYZER_MODE.val&0xFF)==3))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (MSVE.FRESH)
		{ 
			MSVE.FRESH		= 0;
			
			sprintf(ENG_STR," Low Salinity Mode");	
			Print_To_LCD(0, 47, ENG_STR, -1);
			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			
			MSVE.tmpi[0]	= LOW_SALT_MODE;
		}

		switch(MSVE.tmpi[0])
		{ 
			case 1:		
				sprintf(ENG_STR,"      ENABLED");	
				Print_To_LCD(3, 47, ENG_STR, 6);
				break;	
			default:	
				MSVE.tmpi[0]=0; 
				sprintf(ENG_STR,"      DISABLED");	
				Print_To_LCD(3, 47, ENG_STR, 5);
				break;
		}

		if (MSVE.SELECT)
		{ 
			MSVE.tmpi[0]++;
			
			if (MSVE.tmpi[0] > 1) 
				MSVE.tmpi[0] = 0;
		}
		else if (MSVE.VALUE)
		{ 
			MSVE.tmpi[0]--;
			
			if (MSVE.tmpi[0] < 0) 
				MSVE.tmpi[0] = 1;
		}

		if (MSVE.ENTER)
		{ 
			LOW_SALT_MODE = MSVE.tmpi[0];
			
			Update_Flags_Goto_Next_Menu(1,0);
		}
	}
}  

 
 
 
 
 
 
 
 
void MENU_PAGE_LOW_SALT_THRESHOLD(void)    
{	
	if (!LOW_SALT_MODE)
	{ 
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
		
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(50,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_LOWSALT_THRESHOLD, 0, 0);
	}
	else
		MSVE_Data_Input("", "Threshold", 8, 3, 0, 0, &REG_LOWSALT_THRESHOLD, 0, 0);		
	
	
}
   

 
 
 
 
 
 
 
 
void MENU_PAGE_OIL_ADJ(void)
{
	float min,max;	 
	
	if ((ANALYZER_MODE.val&0xFF)==4)
	{ 
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		min = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00060000, 0, 0);
		max = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00060000, 0, 0);
		max = fabs(max-min);
		
		
		if(RUSS)
		{
			Get_Russ_Line(51,OUT_STR,0);
			if (f_compare(&max, 20.0, 0)>0)
				MSVE_Data_Input("", OUT_STR, 6, 1, 1, 0, &REG_OIL_ADJ, 0, 0);	
			else
				MSVE_Data_Input("", OUT_STR, 7, 2, 1, 0, &REG_OIL_ADJ, 0, 0);	
		}
		else
		{
			if (f_compare(&max, 20.0, 0)>0)
				MSVE_Data_Input("", "OAdj   ", 6, 1, 1, 0, &REG_OIL_ADJ, 0, 0);	
			else
				MSVE_Data_Input("", "OAdj   ", 7, 2, 1, 0, &REG_OIL_ADJ, 0, 0);	
		}
		
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_WATER_ADJ(void)
{
	if (((ANALYZER_MODE.val&0xFF)==0) || ((ANALYZER_MODE.val&0xFF)==3))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(52,OUT_STR,0);
			MSVE_Data_Input("",OUT_STR, 6, 1, 1, 0, &REG_WATER_ADJ, 0, 0);
		}
		else
			MSVE_Data_Input("", "WAdj   ", 6, 1, 1, 0, &REG_WATER_ADJ, 0, 0);	
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_ALARM_LO(void)
{
	if (RUSS)
	{
		Get_Russ_Line(53,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 6, 1, 1, 0, &REG_WATERCUT_ALARM_LO, 0, 0);
	}
	else
		MSVE_Data_Input("", "WLo  ", 6, 1, 1, 0, &REG_WATERCUT_ALARM_LO, 0, 0);	
}

 
 
 
 
 
 
 
 
void MENU_PAGE_ALARM_HI(void)
{
	MSVE_Data_Input("", "WHi  ", 6, 1, 1, 0, &REG_WATERCUT_ALARM_HI, 0, 0);	
}

 
 
 
 
 
 
 
 
void MENU_PAGE_WATER_IDX(void)
{
	if (((ANALYZER_MODE.val&0xFF)==0) || ((ANALYZER_MODE.val&0xFF)==3))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(55,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 9, 3, 1, 0, &REG_WATER_INDEX, 0, 0);
		}
		else
			MSVE_Data_Input("", "Widx   ", 9, 3, 1, 0, &REG_WATER_INDEX, 0, 0);	
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_WATER_LO(void)
{
	if (((ANALYZER_MODE.val&0xFF)==0) || ((ANALYZER_MODE.val&0xFF)==3))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(56,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_FREQ_WATER_LO, 0, 0);
		}
		else
			MSVE_Data_Input("", "WFreqLo", 8, 3, 0, 0, &REG_FREQ_WATER_LO, 0, 0);	
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_WATER_HI(void)
{
	if (((ANALYZER_MODE.val&0xFF)==0) || ((ANALYZER_MODE.val&0xFF)==3))
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(57,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_FREQ_WATER_HI, 0, 0);
		}
		else
			MSVE_Data_Input("", "WFreqHi", 8, 3, 0, 0, &REG_FREQ_WATER_HI, 0, 0);	
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_OIL_IDX(void)
{
	if ((ANALYZER_MODE.val&0xFF)==4)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(58,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 9, 3, 1, 0, &REG_OIL_INDEX, 0, 0);
		}
		else
			MSVE_Data_Input("", "Oidx   ", 9, 3, 1, 0, &REG_OIL_INDEX, 0, 0);	
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_OIL_LO(void)
{
	if ((ANALYZER_MODE.val&0xFF)==4)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(59,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_FREQ_OIL_LO, 0, 0);
		}
		else
			MSVE_Data_Input("", "OFreqLo", 8, 3, 0, 0, &REG_FREQ_OIL_LO, 0, 0);	
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_OIL_HI(void)
{
	if ((ANALYZER_MODE.val&0xFF)==4)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(60,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 8, 3, 0, 0, &REG_FREQ_OIL_HI, 0, 0);
		}
		else
			MSVE_Data_Input("", "OFreqHi", 8, 3, 0, 0, &REG_FREQ_OIL_HI, 0, 0);	
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_OIL_P1(void)
{
	if (RUSS)
	{
		Get_Russ_Line(61,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 10, 4, 1, 0, &OIL_P1, 0, 0);
	}
	else
		MSVE_Data_Input("", "OP1", 10, 4, 1, 0, &OIL_P1, 0, 0);	
}

 
 
 
 
 
 
 
 
void MENU_PAGE_OIL_P0(void)
{
	if (RUSS)
	{
		Get_Russ_Line(62,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 10, 4, 1, 0, &OIL_P0, 0, 0);
	}
	else	
		MSVE_Data_Input("", "OP0", 10, 4, 1, 0, &OIL_P0, 0, 0);	
}

 
 
 
 
 
 
 
 
void MENU_PAGE_CAPTURE_OIL(void)
{
	if ((ANALYZER_MODE.val&0xFF)==4)
	{ 
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (REG_EMULSION_PHASE.val!=0.0)
		{ 
			sprintf(ENG_STR,"Capture (Oil Phase)");	
			Print_To_LCD(0, 63, ENG_STR, -1);
			
			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			sprintf(ENG_STR,"WRONG EMULSION PHASE");	
			Print_To_LCD(3, 64, ENG_STR, -1);
		}
		else
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpi[0] = 0;
				MSVE.FRESH   = 0;
				
				sprintf(ENG_STR,"Capture (Oil Phase)");	
				Print_To_LCD(0, 63, ENG_STR, -1);
				
				sprintf(LCD_DISPLAY[1],"");    
				sprintf(LCD_DISPLAY[1],"");        				
				sprintf(ENG_STR,"ENTER TO START"); 
				Print_To_LCD(2, 65, ENG_STR, -1);
				
				sprintf(LCD_DISPLAY[3],"%02x:%02x       %02x/%02x/%02x",Cap_Oil.Time_HH,Cap_Oil.Time_MM,Cap_Oil.Time_MONTH,Cap_Oil.Time_DAY,Cap_Oil.Time_YEAR);
			}	
	        
	         
			if (MSVE.ENTER)
				MSVE.tmpi[0]++;  
			
			if (MSVE.tmpi[0]==1)
            { 
            	MSVE.tmpi[0]    = 2;	 
				DIO_CAP_OIL.val = 0;	 
				
				Capture_Watercut_Oil(0);
				
				DIO_CAP_OIL.val = 1;	 
				
				Capture_Watercut_Oil(0);    
				sprintf(ENG_STR,"ENTER TO STOP"); 
				Print_To_LCD(2, 68, ENG_STR, -1);
				
				sprintf(ENG_STR,"Sampling...");	
				Print_To_LCD(3, 66, ENG_STR, -1);
			}   						
            
            if (MSVE.tmpi[0]==3)
            { 
            	CAP_OIL_STOP.val = 1;
            	MSVE.tmpi[0] = 4;	
            }
             
	
			if ((DIO_CAP_OIL.val == 0)&& (MSVE.tmpi[0]==4))		     
			{ 
				sprintf(LCD_DISPLAY[3],"%02x:%02x       %02x/%02x/%02x",Cap_Oil.Time_HH,Cap_Oil.Time_MM,Cap_Oil.Time_MONTH,Cap_Oil.Time_DAY,Cap_Oil.Time_YEAR);
				Update_Flags_Goto_Next_Menu(1,0);        
			}	
		}
	}
}

 
 
 
 
 
 
 
 
void MENU_PAGE_CAPTURE_WATER(void)
{
	if (((ANALYZER_MODE.val&0xFF)==0) || ((ANALYZER_MODE.val&0xFF)==3))
	{ 
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (REG_EMULSION_PHASE.val!=1.0)
		{ 
			sprintf(ENG_STR,"Capture(Water Phase)");	
			Print_To_LCD(0, 67, ENG_STR, -1);
			
			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			sprintf(ENG_STR,"WRONG EMULSION PHASE");	
			Print_To_LCD(3, 64, ENG_STR, -1);
		}
		else
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpi[0] = 0;
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"Capture(Water Phase)");	
				Print_To_LCD(0, 67, ENG_STR, -1);  
				sprintf(LCD_DISPLAY[1],"");                       
				sprintf(ENG_STR,"ENTER TO START");  
				Print_To_LCD(2, 65, ENG_STR, -1); 
				
				sprintf(LCD_DISPLAY[3],"%02x:%02x       %02x/%02x/%02x",Cap_Water.Time_HH,Cap_Water.Time_MM,Cap_Water.Time_MONTH,Cap_Water.Time_DAY,Cap_Water.Time_YEAR);
			}

              
			if (MSVE.ENTER)
				MSVE.tmpi[0]++;   
			
			if (MSVE.tmpi[0]==1)
            { 
            	MSVE.tmpi[0]      = 2;
            	DIO_CAP_WATER.val = 0;		 
				
				Capture_Watercut_Water(0);
				
				DIO_CAP_WATER.val = 1;		 
				
				Capture_Watercut_Water(0);    
				sprintf(ENG_STR,"ENTER TO STOP"); 
				Print_To_LCD(2, 68, ENG_STR, -1); 
				
				sprintf(ENG_STR,"Sampling...");	
				Print_To_LCD(3, 66, ENG_STR, -1); 
            }
            
			if (MSVE.tmpi[0]==3)
            { 
            	CAP_WATER_STOP.val = 1;
            	MSVE.tmpi[0] = 4;	
            }
             
            
			if ((DIO_CAP_WATER.val == 0)&& (MSVE.tmpi[0]==4))  
			{ 
				sprintf(LCD_DISPLAY[3],"%02x:%02x       %02x/%02x/%02x",Cap_Water.Time_HH,Cap_Water.Time_MM,Cap_Water.Time_MONTH,Cap_Water.Time_DAY,Cap_Water.Time_YEAR);
				Update_Flags_Goto_Next_Menu(1,0);        
			}
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
void MENU_PAGE_CAL_OIL(void)
{
	if ((ANALYZER_MODE.val&0xFF)==4)
	{
		if (!MSVE.DIR) 
			MSVE.PAGE++;
		else 
			MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(25,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 6, 2, 0, 0, &REG_CAL_OIL, 0, 0);
		}
		else
			MSVE_Data_Input("", "Oil", 6, 2, 0, 0, &REG_CAL_OIL, 0, 0); 
	}
}

 
void MENU_PAGE_CAL_WATER(void)
{
	if (((ANALYZER_MODE.val&0xFF)==0) || ((ANALYZER_MODE.val&0xFF)==3))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(69,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 6, 2, 0, 0, &REG_CAL_WATER, 0, 0);	
		}
		else
			MSVE_Data_Input("", "Water", 6, 2, 0, 0, &REG_CAL_WATER, 0, 0);	
	}
}

 
void MENU_PAGE_WATERCUT_RAW(void)
{
	char u[8];
	float t;
	t = REG_WATERCUT.base_val;
	Get_Unit(REG_WATERCUT.class, REG_WATERCUT.unit, u);
	if (RUSS)
		sprintf(LCD_DISPLAY[0],"BC :%8.4f %s",t, u);
	else
		sprintf(LCD_DISPLAY[0],"WC :%8.4f %s",t, u);	
	
	if (RUSS)
	{
		Get_Russ_Line(384,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%8.4f %s",OUT_STR,REG_WATERCUT_RAW, u);
	}
	else
		sprintf(LCD_DISPLAY[1],"RWC:%8.4f %s",REG_WATERCUT_RAW, u); 
	
	Get_Unit(REG_TEMPERATURE_EXTERNAL.class, REG_TEMPERATURE_EXTERNAL.unit, u);
	sprintf(LCD_DISPLAY[2],"T  :%8.2f %s",REG_TEMPERATURE_EXTERNAL.val,u);	
	Get_Unit(REG_VREF[OSC_OIL_CALC].class, REG_VREF[OSC_OIL_CALC].unit, u);
	
	if (RUSS)
	{
		Get_Russ_Line(383,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s:%8.3f %s",OUT_STR,REG_VREF[OSC_OIL_CALC].val, u);
	}
	else
		sprintf(LCD_DISPLAY[3],"RPO:%8.3f %s",REG_VREF[OSC_OIL_CALC].val, u);	
}

 
void MENU_PAGE_AVGACCUM(int n)
{
	char u[8];
	float t;
	
	if (RUSS)
	{
		Get_Russ_Line(70,OUT_STR,0);
		sprintf(LCD_DISPLAY[0],"%s %%            #%d",OUT_STR, n+1); 
	}
	else
		sprintf(LCD_DISPLAY[0]," Avg Watercut %% #%d", n+1);	
	
	Get_Unit(FC[n].NET_TOTAL.class, FC[n].NET_TOTAL.unit, u);
	t = FC[n].AVG_NET_TOTAL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(71,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s%9.2f%%",OUT_STR, t);
	}
	else
		sprintf(LCD_DISPLAY[1],"Avg Net:  %9.2f%%", t);		
	
	Get_Unit(FC[n].GROSS_TOTAL.class, FC[n].GROSS_TOTAL.unit, u);
	t = FC[n].AVG_GROSS_TOTAL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(72,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s%9.2f%%",OUT_STR, t);
	}
	else
		sprintf(LCD_DISPLAY[2],"Avg Gross:%9.2f%%", t);		
}

 
void MENU_PAGE_ACCUMN(int n)
{
	char u[8];
	float t;

	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(73,OUT_STR,0);
		sprintf(LCD_DISPLAY[0], "%s    #%d", OUT_STR, n+1);
	}
	else
		sprintf(LCD_DISPLAY[0]," Net Accumulator #%d", n+1);	

	Get_Unit(FC[n].NET_TOTAL.class, FC[n].NET_TOTAL.unit, u);
	t = FC[n].NET_TOTAL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(74,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%9.3f%s", OUT_STR, t,u);	
	}
	else
		sprintf(LCD_DISPLAY[1],"Total:%9.3f%s", t,u);		

	Get_Unit(FC[n].NET_WATER.class, FC[n].NET_WATER.unit, u);
	t = FC[n].NET_WATER.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s:%9.3f%s", OUT_STR, t,u);
	}
	else
		sprintf(LCD_DISPLAY[2],"Water:%9.3f%s", t,u);		

	Get_Unit(FC[n].NET_OIL.class, FC[n].NET_OIL.unit, u);
	t = FC[n].NET_OIL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(25,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s: %9.3f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[3],"Oil  :%9.3f%s", t,u);		

	if (MSVE.ENTER)
	{
		Clear_Accumulator(n);
	}
}

 
void MENU_PAGE_ACCUMG(int n)
{
	char u[8];
	float t;

	if (!FC[n].enable_GROSS)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(75,OUT_STR,0);
		sprintf(LCD_DISPLAY[0],"%s     #%d", OUT_STR,n+1);
	}
	else
		sprintf(LCD_DISPLAY[0],"Gross Accumulator #%d", n+1);	

	Get_Unit(FC[n].GROSS_TOTAL.class, FC[n].GROSS_TOTAL.unit, u);
	t = FC[n].GROSS_TOTAL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(74,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%9.3f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[1],"Total:%9.3f%s", t,u);		

	Get_Unit(FC[n].GROSS_WATER.class, FC[n].GROSS_WATER.unit, u);
	t = FC[n].GROSS_WATER.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s :%9.3f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[2],"Water:%9.3f%s", t,u);		

	Get_Unit(FC[n].GROSS_OIL.class, FC[n].GROSS_OIL.unit, u);
	t = FC[n].GROSS_OIL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(25,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s:%9.3f%s", t,u);
	}
	else
		sprintf(LCD_DISPLAY[3],"Oil  :%9.3f%s", t,u);		

	if (MSVE.ENTER)
	{
		Clear_Accumulator(n);
	}
}

 
void MENU_PAGE_FLOW(int n)
{
	char u[8];
	float t;

	if (!FC[n].enable_FLOW)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(76,OUT_STR,0);
		sprintf(LCD_DISPLAY[0],"     %s #%d", OUT_STR, n+1);
	}
	else	
		sprintf(LCD_DISPLAY[0],"       Flow #%d", n+1);	

	Get_Unit(FC[n].FLOW_TOTAL.class, FC[n].FLOW_TOTAL.unit, u);
	t = FC[n].FLOW_TOTAL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(74,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%8.1f%s", OUT_STR,t,u);
	}
	else	
		sprintf(LCD_DISPLAY[1],"Total:%8.1f%s", t,u);		

	Get_Unit(FC[n].FLOW_WATER.class, FC[n].FLOW_WATER.unit, u);
	t = FC[n].FLOW_WATER.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s :%8.1f%s", OUT_STR,t,u);
	}
	else	
		sprintf(LCD_DISPLAY[2],"Water:%8.1f%s", t,u);	

	Get_Unit(FC[n].FLOW_OIL.class, FC[n].FLOW_OIL.unit, u);
	t = FC[n].FLOW_OIL.calc_val;
	
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s:%8.1f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[3],"Oil  :%8.1f%s", t,u);		
}

 
void MENU_PAGE_NET_FLOW(int n)
{
	char u[8];
	float t;

	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(78,OUT_STR,0);
		sprintf(LCD_DISPLAY[0]," %s #%d", OUT_STR,n+1);
	}
	else
		sprintf(LCD_DISPLAY[0],"    Net Flow #%d", n+1);	

	Get_Unit(FC[n].NET_FLOW_TOTAL.class, FC[n].NET_FLOW_TOTAL.unit, u);
	t = FC[n].NET_FLOW_TOTAL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(74,OUT_STR,0);
		sprintf(LCD_DISPLAY[1],"%s:%8.1f%s", OUT_STR,t,u);
	}
	else	
		sprintf(LCD_DISPLAY[1],"Total:%8.1f%s", t,u);		


	Get_Unit(FC[n].NET_FLOW_WATER.class, FC[n].NET_FLOW_WATER.unit, u);
	t = FC[n].NET_FLOW_WATER.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s :%8.1f%s", OUT_STR,t,u);
	}
	else	
		sprintf(LCD_DISPLAY[2],"Water:%8.1f%s", t,u);	

	Get_Unit(FC[n].NET_FLOW_OIL.class, FC[n].NET_FLOW_OIL.unit, u);
	t = FC[n].NET_FLOW_OIL.calc_val;
	if (RUSS)
	{
		Get_Russ_Line(69,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s:%8.1f%s", OUT_STR,t,u);
	}
	else
		sprintf(LCD_DISPLAY[3],"Oil  :%8.1f%s", t,u);		
}

 
void MENU_DENSITY(int n)
{
	char u[8];
	char u1[8];
	float t, min, max;
	int a;

	if (!FC[n].enable_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	sprintf(ENG_STR,"    FC Summary");	
	Print_To_LCD(0, 79, ENG_STR, 4);

	Get_Unit(FC[n].watercut.class, FC[n].watercut.unit, u1);
	Get_Unit(FC[n].T.class, FC[n].T.unit, u);
	t = FC[n].T.val;

	if (REG_EMULSION_PHASE.val==2.0)
	{
		if(RUSS)
			sprintf(LCD_DISPLAY[1],"BC: ?.?  %s T:%5.1f%s", u1, t, u);	
		else
			sprintf(LCD_DISPLAY[1],"WC: ?.?  %s T:%5.1f%s", u1, t, u);	
	}
	else
	{
		min = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00060000, 0, 0);
		max = VAR_Get_Unit_Param(&REG_WATERCUT, 0x00050000, 0, 0);
		if (f_compare(&max, 20.0, 0)<=0)
		{
			if(RUSS)
				sprintf(LCD_DISPLAY[1],"BC:%6.2f%s T:%5.1f%s", FC[n].watercut.val, u1, t, u);	
			else
				sprintf(LCD_DISPLAY[1],"WC:%6.2f%s T:%5.1f%s", FC[n].watercut.val, u1, t, u);	
		}
		else
		{
			if(RUSS)
				sprintf(LCD_DISPLAY[1],"BC:%6.1f%s T:%5.1f%s", FC[n].watercut.val, u1, t, u);	
			else
				sprintf(LCD_DISPLAY[1],"WC:%6.1f%s T:%5.1f%s", FC[n].watercut.val, u1, t, u);	
		}
	}

	Get_Unit(FC[n].density.class, FC[n].density.unit, u);
	t = FC[n].density.val;
	a = FC[n].density.unit;
	if ((a==109) || (a==110) || (a==90) || (a==91))
	{
		if (RUSS)
		{
			Get_Russ_Line(268,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s :%5.4f%s", OUT_STR,t, u);
		}
		else
			sprintf(LCD_DISPLAY[2],"Density:%5.4f%s", t, u);
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(268,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s :%5.1f%s", OUT_STR,t, u);
		}
		else
			sprintf(LCD_DISPLAY[2],"Density:%5.1f%s", t, u);	
	}

	Get_Unit(FC[n].FLOW_TOTAL.class, FC[n].FLOW_TOTAL.unit, u);
	t = FC[n].FLOW_TOTAL.val;

	if (RUSS)
	{
		Get_Russ_Line(76,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s :%5.1f%s",OUT_STR, t, u);
	}
	else	
		sprintf(LCD_DISPLAY[3],"Flow   :%5.1f%s", t, u);	
}

 
void MENU_PAGE_DENSITY(int n)
{
	char u[8];
	float t;
	int a;

	if (!FC[n].enable_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(80,OUT_STR,0);
		sprintf(LCD_DISPLAY[0],"   %s #%d", OUT_STR,n+1);
	}
	else
		sprintf(LCD_DISPLAY[0],"     DENSITY #%d", n+1);	
	
	Get_Unit(FC[n].density.class, FC[n].density.unit, u);
	t = FC[n].density.val;
	a = FC[n].density.unit;
	if ((a==109) || (a==110) || (a==90) || (a==91))
	{
		if (RUSS)
		{
			Get_Russ_Line(268,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s :%5.4f%s", OUT_STR,t, u);
		}
		else
			sprintf(LCD_DISPLAY[1],"Density:%5.4f%s", t, u);
	}
	else 
	{
		if (RUSS)
		{
			Get_Russ_Line(268,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s :%5.1f%s", OUT_STR,t, u);
		}
		else
		sprintf(LCD_DISPLAY[1],"Density:%5.1f%s", t, u);	
	}

    if (Density_Correction_Mode.val==6)
    {
		sprintf(LCD_DISPLAY[2],"");
	}
	else
    if ((Density_Correction_Mode.val==3)||(Density_Correction_Mode.val==4)||(Density_Correction_Mode.val==5))
    {
		Get_Unit(FC[n].density.class, COR[n].u_density_corrected, u);
		if(RUSS)
		{
			Get_Russ_Line(81,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s:%5.1f%s", OUT_STR,COR[n].density_corrected,u);
		}	
		else
			sprintf(LCD_DISPLAY[2],"COR STD:%5.1f%s", COR[n].density_corrected,u);	
	}
	else
	{
		Get_Unit(Density_Cal.class, Density_Cal.calc_unit, u);
		if(RUSS)
		{
			Get_Russ_Line(82,OUT_STR,0);
			sprintf(LCD_DISPLAY[2],"%s   :%5.1f%s", OUT_STR,FC[n].density_PDI_corrected,u);
		}	
		else
			sprintf(LCD_DISPLAY[2],"COR    :%5.1f%s", FC[n].density_PDI_corrected,u);	
	}

	Get_Unit(FC[n].T.class, FC[n].T.unit, u);
	t = FC[n].T.val;
	
	if(RUSS)
	{
		Get_Russ_Line(269,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s  :%5.1f%s", OUT_STR,t, u);
	}	
	else
		sprintf(LCD_DISPLAY[3],"Temp   :%5.1f%s", t, u);	
}

 
void MENU_TIME_DATE(void)
{
	unsigned char YEAR,MONTH,DAY,HH,MM,SS;
	int r;

	if (!RTC_PRESENT)
	{
		if (MSVE.FRESH)
		{
			sprintf(ENG_STR,"    Time & Date");	
			Print_To_LCD(0, 83, ENG_STR, 5);
			sprintf(LCD_DISPLAY[1],"");
			sprintf(ENG_STR," Clock not present.");	
			Print_To_LCD(2, 84, ENG_STR, 3);
			sprintf(LCD_DISPLAY[3],"");
			MSVE.FRESH = 0;
		}
		return;
	}

	if (!MSVE.CURSOR_ENABLED)
	{
		HH				= RTC[4] & 0x3F;
		MM				= RTC[3] & 0x7F;
		SS				= RTC[2] & 0x7F;
		MONTH			= RTC[7] & 0x1F;
		DAY				= RTC[6] & 0x3F;
		YEAR			= RTC[8] & 0xFF;

		sprintf(ENG_STR,"    Time & Date");	
		Print_To_LCD(0, 83, ENG_STR, 4);
		sprintf(LCD_DISPLAY[3],"");
		sprintf(LCD_DISPLAY[1],"      %02x:%02x:%02x",HH,MM,SS); 
		sprintf(LCD_DISPLAY[2],"      %02x/%02x/%02x",MONTH,DAY,YEAR); 
	}
	else
	if (MSVE.FRESH)
	{
		sprintf(ENG_STR,"  Set Time & Date");	
		Print_To_LCD(0, 85, ENG_STR, 1);
		sprintf(LCD_DISPLAY[3],"");
		MSVE.FRESH = 0;
	}

	if (MSVE.ENTER && MSVE.CURSOR_ENABLED)
	{
		sscanf(LCD_DISPLAY[1], "      %02x:%02x:%02x", &HH, &MM, &SS);	
		sscanf(LCD_DISPLAY[2], "      %02x/%02x/%02x", &MONTH, &DAY, &YEAR);	

		{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
		r = 0;
		while(1)
		{
			if (HH>0x23) break;
			if (MM>0x59) break;
			if (SS>0x59) break;
			if (MONTH>0x12) break;
			if (MONTH<0x01) break;
			if (DAY>0x31) break;
			if (DAY<0x01) break;
			if (YEAR>0x99) break;

			if (!Write_DS1340(2, 1, &HH)) break;
			if (!Write_DS1340(1, 1, &MM)) break;
			if (!Write_DS1340(0, 1, &SS)) break;
			if (!Write_DS1340(5, 1, &MONTH)) break;
			if (!Write_DS1340(4, 1, &DAY)) break;
			if (!Write_DS1340(6, 1, &YEAR)) break;

			RTC[1]  = 0x00;	 
			DIAGNOSTICS[1] &= 0xFFFFFFFF ^ 0x0001;
			if (!Write_DS1340(8, 2, &RTC[0])) break;

			r = 1;

			IDEC_SA[7].val &= 0x7FFF;
			Timer_Create(&TMR_REFRESH_TIME, 1.0, 1, (int*)Refresh_IDEC_Time, 1);
			Timer_Insert(&TMR_REFRESH_TIME,0,1);
			break;
		}
		if (r==0) DIAGNOSTICS[1] |= 0x0001;
		{asm("	pop		ST			");};

		MSVE.CURSOR_ENABLED = 0;
	}
	else
	if (MSVE.SELECT)
	{
		if (!MSVE.CURSOR_ENABLED)
		{
			MSVE.FRESH = 1;
			MSVE.CURSOR_ENABLED = 1;
			MSVE.CURSOR_ROW = 2;
			MSVE.CURSOR_COL = 13;
		}
		else
		{
			MSVE.CURSOR_COL--;
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '/') MSVE.CURSOR_COL--;
			if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == ':') MSVE.CURSOR_COL--;

			if (MSVE.CURSOR_COL<6)
			{
				MSVE.CURSOR_ROW--;
				MSVE.CURSOR_COL = 13;
			}
			if (MSVE.CURSOR_ROW<1)
			{
				MSVE.CURSOR_ROW = 2;
			}
		}
	}
	else
	if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
	{
		if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '9')
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
		}
		else
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
		}
	}
}

 
void MENU_PAGE_INFO(void)
{
	int i;

	if ((MSVE.FRESH)&&(!MSVE.CURSOR_ENABLED))
	{
		if (RUSS)
		{
			Get_Russ_Line(86,OUT_STR,0);
			sprintf(LCD_DISPLAY[0],"%s    %06d", OUT_STR,SN_PIPE);
		}
		else
			sprintf(LCD_DISPLAY[0],"Serial Number:%06d", SN_PIPE);	
		
		for (i=0;i<4;i++)
		{
			LCD_DISPLAY[1][2*i+0] = STR_HART_Tag[i]>>8; 
			LCD_DISPLAY[1][2*i+1] = STR_HART_Tag[i];
		}
		LCD_DISPLAY[1][2*i+0] = 0;

		for (i=0;i<10;i++)
		{
			LCD_DISPLAY[2][2*i+0] = STR_Analyzer_Info[i]>>8; 
			LCD_DISPLAY[2][2*i+1] = STR_Analyzer_Info[i];
		}
		LCD_DISPLAY[2][2*i+0] = 0;

		sprintf(ENG_STR,"Phase Dynamics, Inc.");	
		Print_To_LCD(3, 87, ENG_STR, -1);
		MSVE.FRESH = 0;
	}
	else
	if (MSVE.FRESH)
	{
		MSVE.tmpi[0] = 0;
		sprintf(ENG_STR,"      Edit Tag");	
		Print_To_LCD(0, 88, ENG_STR, 5);
		for (i=0;i<4;i++)
		{
			LCD_DISPLAY[1][2*i+0] = STR_HART_Tag[i]>>8; 
			LCD_DISPLAY[1][2*i+1] = STR_HART_Tag[i];
		}
		LCD_DISPLAY[1][2*i+0] = 0;

		sprintf(LCD_DISPLAY[2],"");
		sprintf(LCD_DISPLAY[3],"");

		MSVE.FRESH = 0;
	}

	if (MSVE.ENTER && MSVE.CURSOR_ENABLED)
	{
		for (i=0;i<4;i++)
		{
			STR_HART_Tag[i] = ((LCD_DISPLAY[1][2*i+0]&0xFF)<<8) | (LCD_DISPLAY[1][2*i+1]&0xFF);
		}

		Update_Flags_Goto_Next_Menu(1,1);
		MSVE.FRESH = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (!MSVE.CURSOR_ENABLED)
		{
			MSVE.FRESH = 1;
			MSVE.CURSOR_ENABLED = 1;
			MSVE.CURSOR_ROW = 1;
			MSVE.CURSOR_COL = 0;
		}
		else
		{
			MSVE.CURSOR_COL++;

			if (MSVE.CURSOR_COL>7)
			{
				MSVE.CURSOR_COL = 0;
			}
		}
	}
	else
	if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
	{
		if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 127)
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = ' ';
		}
		else
		{
			LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
		}
	}
	else
	if ((MSVE.VALUE_CNT>40) && (MSVE.CURSOR_ENABLED))
	{
		MSVE.VALUE_CNT=0;
		MSVE.tmpi[0]++;
		switch(MSVE.tmpi[0]%4)
		{
			case 0: LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]=' '; break;
			case 1: LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]='0'; break;
			case 2: LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]='A'; break;
			case 3: LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]='a'; break;
		}
	}
}

 
void MENU_PAGE_PORT_CFG(void)
{
	int i;

	if (MSVE.FRESH)
	{
		for(i=0;i<8;i++)  
		{
			if (PORT[i].PRESENT) break;
		}

		if (i==8)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = 0;
		sprintf(ENG_STR,"   Configure Comm");	
		Print_To_LCD(0, 89, ENG_STR, 2);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
	}

	if (MSVE.tmpi[2])
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = 1;
		MSVE.CURSOR_ENABLED = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 2:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				MSVE.tmpi[3] = PORTCFG[MSVE.tmpi[0]].Baud_Rate.val;
				sprintf(LCD_DISPLAY[0],"    %s", PORTCFG[MSVE.tmpi[0]].Baud_Rate.name); 
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
			}

			sprintf(LCD_DISPLAY[3],"       %6d", MSVE.tmpi[3]);

			if (MSVE.SELECT)
			{
				if (MSVE.tmpi[3]<300)		MSVE.tmpi[3] = 300;
				else
				if (MSVE.tmpi[3]<1200)		MSVE.tmpi[3] = 1200;
				else
				if (MSVE.tmpi[3]<2400)		MSVE.tmpi[3] = 2400;
				else
				if (MSVE.tmpi[3]<4800)		MSVE.tmpi[3] = 4800;
				else
				if (MSVE.tmpi[3]<9600)		MSVE.tmpi[3] = 9600;
				else
				if (MSVE.tmpi[3]<19200)		MSVE.tmpi[3] = 19200;
				else
				if (MSVE.tmpi[3]<38400)		MSVE.tmpi[3] = 38400;
				else
				if (MSVE.tmpi[3]<57600)		MSVE.tmpi[3] = 57600;
				else
				if (MSVE.tmpi[3]<115200)	MSVE.tmpi[3] = 115200;
				else						MSVE.tmpi[3] = 300;
			}
			else
			if (MSVE.VALUE)
			{
				if (MSVE.tmpi[3]>115200)	MSVE.tmpi[3] = 115200;
				else
				if (MSVE.tmpi[3]>57600)		MSVE.tmpi[3] = 57600;
				else
				if (MSVE.tmpi[3]>38400)		MSVE.tmpi[3] = 38400;
				else
				if (MSVE.tmpi[3]>19200)		MSVE.tmpi[3] = 19200;
				else
				if (MSVE.tmpi[3]>9600)		MSVE.tmpi[3] = 9600;
				else
				if (MSVE.tmpi[3]>4800)		MSVE.tmpi[3] = 4800;
				else
				if (MSVE.tmpi[3]>2400)		MSVE.tmpi[3] = 2400;
				else
				if (MSVE.tmpi[3]>1200)		MSVE.tmpi[3] = 1200;
				else
				if (MSVE.tmpi[3]>300)		MSVE.tmpi[3] = 300;
				else						MSVE.tmpi[3] = 115200;
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.tmpf[0] = MSVE.tmpi[3];

				if (VAR_Update(&PORTCFG[MSVE.tmpi[0]].Baud_Rate, MSVE.tmpf[0],1,1))	 
				{
					VAR_Update(&PORTCFG[MSVE.tmpi[0]].Baud_Rate, MSVE.tmpf[0],0,1);
					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 3:
		{ 
		
			if (RUSS)
			{
				Get_Russ_Line(92,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].PREFIX, 0, 1);
			}
			else
				MSVE_Data_Input("", "PREFIX ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].PREFIX, 0, 1); 

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 4:
		{ 
			if (RUSS)
			{
				Get_Russ_Line(93,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].SUFFIX, 0, 1);
			}
			else
				MSVE_Data_Input("", "SUFFIX ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].SUFFIX, 0, 1);	

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 5:
		{ 
			MSVE_Data_Input("", "EOT    ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].EOT_Delay, 0, 1);	

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 6:
		{ 
			if (RUSS)
			{
				Get_Russ_Line(93,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].NETWDOG, 0, 1);
			}
			else
				MSVE_Data_Input("", "WDOG   ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].NETWDOG, 0, 1);	

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 7:
		{ 
    		if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				switch (PORTCFG[MSVE.tmpi[0]].Parity>>8)
				{
					case 'O':
					{
						MSVE.tmpi[3] = 1;
						break;
					}
					
					case 'E':
					{
						MSVE.tmpi[3] = 2;
						break;
					}
					
					case '1':
					case 'M':
					{
						MSVE.tmpi[3] = 3;
						break;
					}
					
					case '0':
					case 'S':
					{
						MSVE.tmpi[3] = 4;
						break;
					}
					
					case 'N':
					default:
					{
						MSVE.tmpi[3] = 0;
						break;
					}
				}

				sprintf(LCD_DISPLAY[0],"     C%d Parity", MSVE.tmpi[0]+1); 
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
			}

			switch (MSVE.tmpi[3])
			{
				case 1:
				{
					sprintf(ENG_STR,"        ODD");	
					Print_To_LCD(3, 96, ENG_STR, 7);

					break;
				}
				
				case 2:
				{
					sprintf(ENG_STR,"        EVEN");	
					Print_To_LCD(3, 97, ENG_STR, 8);
					break;
				}
				
				case 3:
				{
					sprintf(ENG_STR,"       MARK/1");	
					Print_To_LCD(3, 98, ENG_STR, 6);
					break;
				}
				
				case 4:
				{
					sprintf(ENG_STR,"      SPACE/0");	
					Print_To_LCD(3, 99, ENG_STR, 6);
					break;
				}
				
				case 0:
				default:
				{
					sprintf(ENG_STR,"        NONE");		
					Print_To_LCD(3, 99, ENG_STR, 8);
					break;
				}
			}
			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
				if (MSVE.tmpi[3]>4) MSVE.tmpi[3] = 0;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
				if (MSVE.tmpi[3]<0) MSVE.tmpi[3] = 4;
			}
			else
			if (MSVE.ENTER)
			{
				switch (MSVE.tmpi[3])
				{
					case 1:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'O'<<8;
						break;
					}
					
					case 2:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'E'<<8;
						break;
					}
					
					case 3:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'M'<<8;
						break;
					}
					
					case 4:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'S'<<8;
						break;
					}
					
					case 0:
					default:
					{
						PORTCFG[MSVE.tmpi[0]].Parity = 'N'<<8;
						break;
					}
				}

				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 8:
		{ 
			if (RUSS)
			{
				Get_Russ_Line(101,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].Retry_Time, 0, 1);
			}
			else
				MSVE_Data_Input("", "RETRY  ", 5, 1, 0, 0, &PORTCFG[MSVE.tmpi[0]].Retry_Time, 0, 1);	

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

 

		case 9:
		{ 
			MSVE.FRESH = 0;
			
			if (RUSS)
			{
				Get_Russ_Line(102,OUT_STR,0);
				sprintf(LCD_DISPLAY[0],"   K%d %s", MSVE.tmpi[0]+1, OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[0],"   C%d Statistics", MSVE.tmpi[0]+1);	
			
			if (RUSS)
			{
				Get_Russ_Line(103,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s :  %10d", OUT_STR,PORT[MSVE.tmpi[0]].ERROR_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Errors :  %10d", PORT[MSVE.tmpi[0]].ERROR_COUNT);	
			
			if (RUSS)
			{
				Get_Russ_Line(104,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].WDOG_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[2],"WDOG   :  %10d", PORT[MSVE.tmpi[0]].WDOG_COUNT);	
			
			if (RUSS)
			{
				Get_Russ_Line(379,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].INV_PKT_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[3],"Inv Pkt:  %10d", PORT[MSVE.tmpi[0]].INV_PKT_COUNT);	

			if (MSVE.ENTER)
			{
				PORT[MSVE.tmpi[0]].ERROR_COUNT = 0;
				PORT[MSVE.tmpi[0]].WDOG_COUNT = 0;
				PORT[MSVE.tmpi[0]].INV_PKT_COUNT = 0;
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 10:
		{ 
			MSVE.FRESH = 0;
			if (RUSS)
			{
				Get_Russ_Line(102,OUT_STR,0);
				sprintf(LCD_DISPLAY[0],"   K%d %s", MSVE.tmpi[0]+1, OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[0],"   C%d Statistics", MSVE.tmpi[0]+1);	

			if (RUSS)
			{
				Get_Russ_Line(106,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s: %8d", OUT_STR, PORT[MSVE.tmpi[0]].INV_CMD_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Inv Cmd:  %10d", PORT[MSVE.tmpi[0]].INV_CMD_COUNT);	
			
			if (RUSS)
			{
				Get_Russ_Line(107,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s  :  %10d", OUT_STR, PORT[MSVE.tmpi[0]].SUCCESS);
			}
			else
				sprintf(LCD_DISPLAY[2],"Success:  %10d", PORT[MSVE.tmpi[0]].SUCCESS);	
		
			if (RUSS)
			{
				Get_Russ_Line(108,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s:%10d", OUT_STR, PORT[MSVE.tmpi[0]].NUM_RETRIES);
			}
			else
				sprintf(LCD_DISPLAY[3],"# Retry:  %10d", PORT[MSVE.tmpi[0]].NUM_RETRIES);	

			if (MSVE.ENTER)
			{
				PORT[MSVE.tmpi[0]].INV_CMD_COUNT = 0;
				PORT[MSVE.tmpi[0]].SUCCESS = 0;
				PORT[MSVE.tmpi[0]].NUM_RETRIES = 0;
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 20:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"  HART #Preambles"); 	
				Print_To_LCD(0,109, ENG_STR, 2);
				
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = NUM_PREAMBLE_SM;
			}

			if (MSVE.tmpi[3]<5) MSVE.tmpi[3] = 20;
			else
			if (MSVE.tmpi[3]>20) MSVE.tmpi[3] = 5;

			sprintf(LCD_DISPLAY[3],"         %2d", MSVE.tmpi[3]);

			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
			}

			if (MSVE.ENTER)
			{
				NUM_PREAMBLE_SM = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 21:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"    HART Version");	
				Print_To_LCD(0, 110, ENG_STR, 4);
				
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = DIO_HART_5.val & 0x01;
			}

			switch (MSVE.tmpi[3]&0x01)
			{
				case 1:  sprintf(LCD_DISPLAY[3],"          5"); break;
				default: sprintf(LCD_DISPLAY[3],"          6"); break;
			}

			if (MSVE.SELECT || MSVE.VALUE)
			{
				MSVE.tmpi[3]^=0x01;
			}

			if (MSVE.ENTER)
			{
				DIO_HART_5.val = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 22:
		{ 
			MSVE.FRESH = 0;
			sprintf(ENG_STR,"HART Port Statistics");	
			Print_To_LCD(0, 111, ENG_STR, 1);
			
			if (RUSS)
			{
				Get_Russ_Line(103,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s :  %10d", OUT_STR,PORT[MSVE.tmpi[0]].ERROR_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Errors :  %10d", PORT[MSVE.tmpi[0]].ERROR_COUNT);	
			
			if (RUSS)
			{
				Get_Russ_Line(104,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].WDOG_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[2],"WDOG   :  %10d", PORT[MSVE.tmpi[0]].WDOG_COUNT);	
			
			if (RUSS)
			{
				Get_Russ_Line(379,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s:%9d", OUT_STR, PORT[MSVE.tmpi[0]].INV_PKT_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[3],"Inv Pkt:  %10d", PORT[MSVE.tmpi[0]].INV_PKT_COUNT);	

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 23:
		{ 
			MSVE.FRESH = 0;
			sprintf(ENG_STR,"HART Port Statistics");	
			Print_To_LCD(0, 111, ENG_STR, 1);
			
			if (RUSS)
			{
				Get_Russ_Line(103,OUT_STR,0);
				sprintf(LCD_DISPLAY[1],"%s :  %10d", OUT_STR,PORT[MSVE.tmpi[0]].ERROR_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[1],"Errors :  %10d", PORT[MSVE.tmpi[0]].ERROR_COUNT);	
			
			if (RUSS)
			{
				Get_Russ_Line(106,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s: %8d", OUT_STR, PORT[MSVE.tmpi[0]].INV_CMD_COUNT);
			}
			else
				sprintf(LCD_DISPLAY[2],"Inv Cmd:  %10d", PORT[MSVE.tmpi[0]].INV_CMD_COUNT);	
			
			if (RUSS)
			{
				Get_Russ_Line(107,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s  :  %10d", OUT_STR, PORT[MSVE.tmpi[0]].SUCCESS);
			}
			else
				sprintf(LCD_DISPLAY[3],"Success:  %10d", PORT[MSVE.tmpi[0]].SUCCESS);	

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 30:
		{ 
			
			MSVE.tmpi[2] = 1;
			MSVE.tmpi[1] = 0;
			
			 
#line 4238
		}

		case 31:
		{ 

			MSVE.tmpi[2] = 1;
			MSVE.tmpi[1] = 0;
			 
#line 4288
		}

		case 32:
		{ 
		
			MSVE.tmpi[2] = 1;
			MSVE.tmpi[1] = 0;		
			 
#line 4331
		}

		case 33:
		{ 

			MSVE.tmpi[2] = 1;
			MSVE.tmpi[1] = 0;		
			 
#line 4369
		}

		case 1:
		{ 
			 
			if (RUSS)
			{
				Get_Russ_Line(116,OUT_STR,0);
				MSVE_Data_Input("", OUT_STR, 3, 0, 0, 0, &PORTCFG[MSVE.tmpi[0]].Slave_ID, 0, 1);
			}
			else
				MSVE_Data_Input("", "ADDRESS", 3, 0, 0, 0, &PORTCFG[MSVE.tmpi[0]].Slave_ID, 0, 1);	

			if (MSVE.MENU||MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;

				if (MSVE.tmpi[0]==4)
				{ 
					MSVE.tmpi[1] = 20;
				}
				else
				{ 
					MSVE.tmpi[1]++;
				}
			}

			break;
		}

		case 0:
		{ 
			MSVE.MENU_TRAP = 0;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[0]++;
				if (MSVE.tmpi[0] == 5) MSVE.tmpi[0]++;
				if (MSVE.tmpi[0]>=8) MSVE.tmpi[0] = 0;

				while(!PORT[MSVE.tmpi[0]].PRESENT)
				{
					MSVE.tmpi[0]++;
					if (MSVE.tmpi[0] == 5) MSVE.tmpi[0]++;
					if (MSVE.tmpi[0]>=8) MSVE.tmpi[0] = 0;
				}
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[0]--;
				if (MSVE.tmpi[0] == 5) MSVE.tmpi[0]--;
				if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 8-1;
				
				while(!PORT[MSVE.tmpi[0]].PRESENT)
				{
					MSVE.tmpi[0]--;
					if (MSVE.tmpi[0] == 5) MSVE.tmpi[0]--;
					if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 8-1;
				}
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.MENU_TRAP = 1;

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 1;

			}

			switch (MSVE.tmpi[0])
			{
				case 0:
				{
					if (PORT[7].PRESENT)
					{
						sprintf(ENG_STR,"    MODBUS COM 1    ");	
						Print_To_LCD(3, 117, ENG_STR, 4);
					}
					else
					{
						sprintf(ENG_STR," MODBUS COM 1 / PDI ");	
						Print_To_LCD(3, 118, ENG_STR, -1);
					}
					break;
				}

				case 1:
				{
					if (PORT[6].PRESENT)
					{
						sprintf(ENG_STR,"    MODBUS COM 2    ");	
						Print_To_LCD(3, 119, ENG_STR, 4);
					}
					else
					{
						sprintf(ENG_STR," MODBUS COM 2 / OIT ");	
						Print_To_LCD(3, 120, ENG_STR, 1);
					}
					break;
				}
				case 2:	
					sprintf(ENG_STR,"    MODBUS COM 3    ");		
					Print_To_LCD(3, 272, ENG_STR, 4);
					break;
				case 3:	
					sprintf(ENG_STR,"    MODBUS COM 4    ");		
					Print_To_LCD(3, 273, ENG_STR, 4);
					break;
				case 4:	
					sprintf(LCD_DISPLAY[3],"        HART        ");	
					break;
				case 5:	
					
					sprintf(ENG_STR,"        NONE        "); 
					Print_To_LCD(3, 122, ENG_STR, 6);
					break;
				case 6:	
					sprintf(ENG_STR,"     MODBUS OIT     ");		
					Print_To_LCD(3, 123, ENG_STR, 5);
					break;
				case 7:	
					sprintf(ENG_STR,"     MODBUS PDI     ");		
					Print_To_LCD(3, 124, ENG_STR, 5);					
					break;
			}

			break;
		}

		default:
		{
			MSVE.FRESH = 1;
			break;
		}
	}
}

 
void MENU_RELAY_CFG(void)
{
	unsigned int ui;

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"  Configure Relay");	
		Print_To_LCD(0, 125, ENG_STR, 3);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
	}

	if (MSVE.tmpi[2])
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = 1;
		MSVE.CURSOR_ENABLED = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				
				if (RUSS)
				{
					Get_Russ_Line(126,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"   #%d %s", MSVE.tmpi[0]+1, OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"   #%d Relay Mode", MSVE.tmpi[0]+1);	
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = RLY[MSVE.tmpi[0]].MODE;
			}

			switch(MSVE.tmpi[3])
			{
				case 0x00:
				{ 
					sprintf(ENG_STR,"  Variable Status");	
					Print_To_LCD(3, 127, ENG_STR, 1);
					break;
				}

				case 0x01:
				{ 
					sprintf(ENG_STR,"Variable =  Setpoint");	
					Print_To_LCD(3, 128, ENG_STR, 1);
					break;
				}

				case 0x03:
				{ 
					sprintf(ENG_STR,"Variable >= Setpoint");	
					Print_To_LCD(3, 252, ENG_STR, 1);
					break;
				}

				case 0x02:
				{ 
					sprintf(ENG_STR,"Variable >  Setpoint");	
					Print_To_LCD(3, 250, ENG_STR, 1);
					break;
				}

				case 0x04:
				{ 
					sprintf(ENG_STR,"Variable <  Setpoint");	
					Print_To_LCD(3, 249, ENG_STR, 1);
					break;
				}

				case 0x05:
				{ 
					sprintf(ENG_STR,"Variable <= Setpoint");	
					Print_To_LCD(3, 251, ENG_STR, 1);
					break;
				}

				case 0x06:
				{ 
					sprintf(ENG_STR,"Variable != Setpoint");	
					Print_To_LCD(3, 253, ENG_STR, 1);
					break;
				}

				case 0x20:
				{ 
					sprintf(ENG_STR,"       Toggle");	
					Print_To_LCD(3, 129, ENG_STR, 3);
					break;
				}

				case 0x30:
				{ 
					if (RUSS)
					{
						Get_Russ_Line(14,OUT_STR,0);
						sprintf(LCD_DISPLAY[3],"   %s 1", OUT_STR);
					}
					else
						sprintf(LCD_DISPLAY[3],"   Diagnostics 1");		
					break;
				}

				case 0x40:
				{ 
					if (RUSS)
					{
						Get_Russ_Line(14,OUT_STR,0);
						sprintf(LCD_DISPLAY[3],"   %s 2", OUT_STR);
					}
					else
						sprintf(LCD_DISPLAY[3],"   Diagnostics 2");		
					break;
				}

				case 0xFF:
				{ 
					sprintf(ENG_STR,"       Other");	
					Print_To_LCD(3, 198, ENG_STR, 7);
					break;
				}

				case 0x10:
				default:
				{ 
					sprintf(ENG_STR,"       Manual");	
					Print_To_LCD(3, 131, ENG_STR, 6);
					break;
				}
			}

			if (MSVE.ENTER)
			{
				RLY[MSVE.tmpi[0]].MODE = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;

				switch(RLY[MSVE.tmpi[0]].MODE)
				{
					case 0x00:
					{ 
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x01:
					{ 
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x03:
					{ 
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x02:
					{ 
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x04:
					{ 
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x05:
					{ 
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x06:
					{ 
						MSVE.tmpi[1] = 2;
						break;
					}

					case 0x20:
					{ 
						MSVE.tmpi[1] = 0;
						break;
					}

					case 0x30:
					{ 
						MSVE.tmpi[1] = 6;
						break;
					}

					case 0x40:
					{ 
						MSVE.tmpi[1] = 6;
						break;
					}

					case 0xFF:
					{ 
						MSVE.tmpi[1] = 0;
						break;
					}

					case 0x10:
					default:
					{ 
						MSVE.tmpi[1] = 5;
						break;
					}
				}
			}
			else
			if (MSVE.SELECT)
			{
				switch(MSVE.tmpi[3])
				{
					case 0x00:
					{ 
						MSVE.tmpi[3] = 0x01;
						break;
					}

					case 0x01:
					{ 
						MSVE.tmpi[3] = 0x03;
						break;
					}

					case 0x03:
					{ 
						MSVE.tmpi[3] = 0x02;
						break;
					}

					case 0x02:
					{ 
						MSVE.tmpi[3] = 0x04;
						break;
					}

					case 0x04:
					{ 
						MSVE.tmpi[3] = 0x05;
						break;
					}

					case 0x05:
					{ 
						MSVE.tmpi[3] = 0x06;
						break;
					}

					case 0x06:
					{ 
						MSVE.tmpi[3] = 0x20;
						break;
					}

					case 0x20:
					{ 
						MSVE.tmpi[3] = 0x30;
						break;
					}

					case 0x30:
					{ 
						MSVE.tmpi[3] = 0x40;
						break;
					}

					case 0x40:
					{ 
						MSVE.tmpi[3] = 0xFF;
						break;
					}

					case 0xFF:
					{ 
						MSVE.tmpi[3] = 0x10;
						break;
					}

					case 0x10:
					default:
					{ 
						MSVE.tmpi[3] = 0x00;
						break;
					}
				}
			}
			else
			if (MSVE.VALUE)
			{
				switch(MSVE.tmpi[3])
				{
					case 0x00:
					{ 
						MSVE.tmpi[3] = 0x10;
						break;
					}

					case 0x01:
					{ 
						MSVE.tmpi[3] = 0x00;
						break;
					}

					case 0x03:
					{ 
						MSVE.tmpi[3] = 0x01;
						break;
					}

					case 0x02:
					{ 
						MSVE.tmpi[3] = 0x03;
						break;
					}

					case 0x04:
					{ 
						MSVE.tmpi[3] = 0x02;
						break;
					}

					case 0x05:
					{ 
						MSVE.tmpi[3] = 0x04;
						break;
					}

					case 0x06:
					{ 
						MSVE.tmpi[3] = 0x05;
						break;
					}

					case 0x20:
					{ 
						MSVE.tmpi[3] = 0x06;
						break;
					}

					case 0x30:
					{ 
						MSVE.tmpi[3] = 0x20;
						break;
					}

					case 0x40:
					{ 
						MSVE.tmpi[3] = 0x30;
						break;
					}

					case 0xFF:
					{ 
						MSVE.tmpi[3] = 0x40;
						break;
					}

					case 0x10:
					default:
					{ 
						MSVE.tmpi[3] = 0xFF;
						break;
					}
				}
			}

			break;
		}

		case 2:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				
				if (RUSS)
				{
					Get_Russ_Line(132,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s ", MSVE.tmpi[0]+1, OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d Relay Variable  ", MSVE.tmpi[0]+1);	
				sprintf(LCD_DISPLAY[1],"");
				MSVE.tmpi[3] = RLY[MSVE.tmpi[0]].v.val;
			}

			if (MSVE.tmpi[3]<0)
			{
				MSVE.tmpi[3] = HART_Lookup_n((int*)&HART_DV_Table) - 1;
			}

			MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DV_Table);
			if ((MSVE.ptmpv==(VAR*)0) || (MSVE.ptmpv==&REG_DUMMY))
			{
				MSVE.tmpi[3] = 0;
				MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DV_Table);
			}

			if (RUSS)
			{
				Get_Russ_Line(133,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s %d", OUT_STR, MSVE.tmpi[3]);
			}
			else
				sprintf(LCD_DISPLAY[2],"Variable Index: %d", MSVE.tmpi[3]);	
			
			if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
			{
				if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
					sprintf(LCD_DISPLAY[3],"%s", OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[3],"%s", MSVE.ptmpv->name); 

			if (MSVE.ENTER)
			{
				RLY[MSVE.tmpi[0]].class = MSVE.ptmpv->class;
				RLY[MSVE.tmpi[0]].unit = MSVE.ptmpv->unit & 0xFF;
				RLY[MSVE.tmpi[0]].v.val = MSVE.tmpi[3];
				Set_RLY_Units(0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				RLY[MSVE.tmpi[0]].class = MSVE.ptmpv->class;
				if (RLY[MSVE.tmpi[0]].MODE==0x00) MSVE.tmpi[1] = 6;
				else MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
			}

			break;
		}

		case 3:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				
				if (RUSS)
				{
					Get_Russ_Line(134,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", OUT_STR, MSVE.tmpi[0]+1);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d Relay Unit Code ", MSVE.tmpi[0]+1);	
				
				Get_Class(RLY[MSVE.tmpi[0]].class, MSVE.str[3]);
				
				if (RUSS)
				{
					Get_Russ_Line(37,OUT_STR,0);
					sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR, MSVE.str[3]);
				}
				else
					sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	
				
				MSVE.tmpi[3] = RLY[MSVE.tmpi[0]].unit & 0xFF;
			}

			Get_Unit(RLY[MSVE.tmpi[0]].class, MSVE.tmpi[3], MSVE.str[3]);

			if (RUSS)
			{
				Get_Russ_Line(254,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
				
				Get_Russ_Line(38,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
			}
			else
			{
				sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
				sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
			}

			if (MSVE.ENTER)
			{
				RLY[MSVE.tmpi[0]].unit = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				if (RLY[MSVE.tmpi[0]].class!=0) MSVE.tmpi[3] = Get_Next_Unit(RLY[MSVE.tmpi[0]].class, MSVE.tmpi[3]);
			}
			else
			if (MSVE.VALUE)
			{
				if (RLY[MSVE.tmpi[0]].class!=0) MSVE.tmpi[3] = Get_Prev_Unit(RLY[MSVE.tmpi[0]].class, MSVE.tmpi[3]);
			}

			break;
		}

		case 4:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = RLY[MSVE.tmpi[0]].class;
				MSVE.tmpv.unit = RLY[MSVE.tmpi[0]].unit;
				MSVE.tmpv.calc_unit = RLY[MSVE.tmpi[0]].unit;
				MSVE.tmpv.val = RLY[MSVE.tmpi[0]].setpoint;
				MSVE.tmpv.calc_val = RLY[MSVE.tmpi[0]].setpoint;
				if (RUSS)
				{
					Get_Russ_Line(135,OUT_STR,0);
					sprintf(MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(MSVE.str[3], "#%d Relay Setpoint", MSVE.tmpi[0]+1);	
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				RLY[MSVE.tmpi[0]].setpoint = MSVE.tmpv.val;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 5:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(136,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d Relay Status", MSVE.tmpi[0]+1);	
				
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
			}

			RLY[MSVE.tmpi[0]].ON.val &= 0x01;

			if (RLY[MSVE.tmpi[0]].ON.val)
			{
				sprintf(ENG_STR,"         ON");		
				Print_To_LCD(3, 137, ENG_STR, 8);
			}
			else
			{
				sprintf(ENG_STR,"        Off");		
				Print_To_LCD(3, 138, ENG_STR, 7);
			}

			if (MSVE.ENTER)
			{
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}
			else
			if (MSVE.SELECT || MSVE.VALUE)
			{
				RLY[MSVE.tmpi[0]].ON.val ^= 0x01;
			}

			break;
		}

		case 6:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(139,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"   #%d %s", MSVE.tmpi[0]+1, OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"   #%d Relay Mask", MSVE.tmpi[0]+1);	
			
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				RLY[MSVE.tmpi[0]].STATUS_MASK &= 0xFFFF;
				sprintf(LCD_DISPLAY[3],"%04X", RLY[MSVE.tmpi[0]].STATUS_MASK);
			}

			if (MSVE.ENTER && MSVE.CURSOR_ENABLED)
			{
				MSVE.CURSOR_ENABLED = 0;
				sscanf(LCD_DISPLAY[3], "%04X", &RLY[MSVE.tmpi[0]].STATUS_MASK);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}
			else
			if (MSVE.SELECT)
			{
				if (!MSVE.CURSOR_ENABLED)
				{
					MSVE.CURSOR_ENABLED = 1;
					MSVE.CURSOR_ROW = 3;
					MSVE.CURSOR_COL = 3;
				}
				else
				{
					MSVE.CURSOR_COL--;
					if (MSVE.CURSOR_COL<0)
					{
						MSVE.CURSOR_COL = 3;
					}
				}
			}
			else
			if (MSVE.VALUE && MSVE.CURSOR_ENABLED)
			{
				if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == '9')
				{
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = 'A';
				}
				else
				if (LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] == 'F')
				{
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL] = '0';
				}
				else
				{
					LCD_DISPLAY[MSVE.CURSOR_ROW][MSVE.CURSOR_COL]++;
				}
			}

			break;
		}

		case 0:
		{ 
			MSVE.MENU_TRAP = 0;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[0]++;
				if (MSVE.tmpi[0]>1) MSVE.tmpi[0] = 0;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[0]--;
				if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 1;
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.MENU_TRAP = 1;

				MSVE.tmpi[2] = 1;

				MSVE.tmpi[1] = 1;
			}

			if(RUSS)
				Get_Russ_Line(255,OUT_STR,0);
			
			if (RLY[MSVE.tmpi[0]].ON.val)
			{
				if (RUSS)
				{
					Get_Russ_Line(137,OUT_STR2,0);
					sprintf(LCD_DISPLAY[3],"#%d %s  (%s)",MSVE.tmpi[0]+1,OUT_STR,OUT_STR2);
				}
				else
					sprintf(LCD_DISPLAY[3]," #%d Relay (ON)",MSVE.tmpi[0]+1);	
			}
			else
			{
				if (RUSS)
				{
					Get_Russ_Line(138,OUT_STR2,0);
					sprintf(LCD_DISPLAY[3],"#%d %s (%s)",MSVE.tmpi[0]+1,OUT_STR,OUT_STR2);
				}
				else
					sprintf(LCD_DISPLAY[3]," #%d Relay (OFF)",MSVE.tmpi[0]+1);	
			}

			break;
		}

		default:
		{
			MSVE.FRESH = 1;
			break;
		}
	}
}

 
void MENU_AI_CFG(void)
{
	unsigned int ui;
	char u[8];
	char u1[8];
	float t;
	int i;

	if (MSVE.FRESH)
	{
		for (i=0;i<5;i++)
		{
			if (AI[i].present) break;
		}

		if (i==5)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = 0;
		sprintf(ENG_STR,"    Configure AI");		
		Print_To_LCD(0, 140, ENG_STR, 1);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = i;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
	}

	if (MSVE.tmpi[2])
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = 1;
		MSVE.CURSOR_ENABLED = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				
				if (RUSS)
				{
					Get_Russ_Line(141,OUT_STR,0);
					sprintf(LCD_DISPLAY[0]," #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AI Variable", MSVE.tmpi[0]+1);	
				
				sprintf(LCD_DISPLAY[1],"");
				MSVE.tmpi[3] = AI[MSVE.tmpi[0]].v.val;
			}

			if (MSVE.tmpi[3]<-1)
			{
				MSVE.tmpi[3] = HART_Lookup_n((int*)&HART_DVINPUT_Table) - 1;
			}

			if (MSVE.tmpi[3]!=-1)
			{
				MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DVINPUT_Table);
				if ((MSVE.ptmpv==(VAR*)0) || (MSVE.ptmpv==&REG_DUMMY))
				{
					MSVE.tmpi[3] = -1;
					MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DVINPUT_Table);
				}
			}

			if (MSVE.tmpi[3]==-1)
			{
				if (RUSS)
				{
					Get_Russ_Line(133,OUT_STR,0);
					sprintf(LCD_DISPLAY[2],"%s: ?",OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[2],"Variable Index: ?");	
				
				sprintf(ENG_STR,"Disabled");				
				Print_To_LCD(3, 49, ENG_STR, -1);
				
			}
			else
			{
				if (RUSS)
				{
					Get_Russ_Line(133,OUT_STR,0);
					sprintf(LCD_DISPLAY[2],"%s: %d", OUT_STR, MSVE.tmpi[3]);
				}
				else
					sprintf(LCD_DISPLAY[2],"Variable Index: %d", MSVE.tmpi[3]);	
				
				if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
				{
					if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
						sprintf(LCD_DISPLAY[3],"%s", OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[3],"%s", MSVE.ptmpv->name); 
			}

			if (MSVE.ENTER)
			{
				if (AI[MSVE.tmpi[0]].v.val != MSVE.tmpi[3])
				{
					AI[MSVE.tmpi[0]].v.val = MSVE.tmpi[3];
					AI[MSVE.tmpi[0]].class.val = MSVE.ptmpv->class;
					AI[MSVE.tmpi[0]].unit.val = MSVE.ptmpv->unit & 0xFF;
					Set_Units(0);

					VAR_Update(&AI[MSVE.tmpi[0]].LRV, 0.0,0,0);
					VAR_Update(&AI[MSVE.tmpi[0]].URV, 0.0,0,0);

					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				AI[MSVE.tmpi[0]].class.val = MSVE.ptmpv->class;
				Set_Units(0);
				if (AI[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 0;
				else MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
			}

			break;
		}

		case 2:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(142,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1, OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d AI Unit Code", MSVE.tmpi[0]+1);	
				
				Get_Class(AI[MSVE.tmpi[0]].class.val, MSVE.str[3]);
				if (RUSS)
				{
					Get_Russ_Line(37,OUT_STR,0);
					sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
				}
				else
					sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	
				MSVE.tmpi[3] = AI[MSVE.tmpi[0]].unit.val & 0xFF;
			}

			Get_Unit(AI[MSVE.tmpi[0]].class.val, MSVE.tmpi[3], MSVE.str[3]);

			if (RUSS)
			{
				Get_Russ_Line(254,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
				
				Get_Russ_Line(38,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
			}
			else
			{
				sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
				sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
			}

			if (MSVE.ENTER)
			{
				if (AI[MSVE.tmpi[0]].unit.val != MSVE.tmpi[3])
				{
					MSVE.ptmpv = HART_Lookup(AI[MSVE.tmpi[0]].v.val, &ui, (int*)&HART_DVINPUT_Table);
					VAR_Update(&AI[MSVE.tmpi[0]].LRV, Convert(AI[MSVE.tmpi[0]].class.val, AI[MSVE.tmpi[0]].unit.val, MSVE.tmpi[3], AI[MSVE.tmpi[0]].LRV.val, 0, MSVE.ptmpv->aux),0,0);
					VAR_Update(&AI[MSVE.tmpi[0]].URV, Convert(AI[MSVE.tmpi[0]].class.val, AI[MSVE.tmpi[0]].unit.val, MSVE.tmpi[3], AI[MSVE.tmpi[0]].URV.val, 0, MSVE.ptmpv->aux),0,0);
					AI[MSVE.tmpi[0]].unit.val = MSVE.tmpi[3];
					Set_Units(0);
					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				Set_Units(0);

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				if (AI[MSVE.tmpi[0]].class.val!=0) MSVE.tmpi[3] = Get_Next_Unit(AI[MSVE.tmpi[0]].class.val, MSVE.tmpi[3]);
			}
			else
			if (MSVE.VALUE)
			{
				if (AI[MSVE.tmpi[0]].class.val!=0) MSVE.tmpi[3] = Get_Prev_Unit(AI[MSVE.tmpi[0]].class.val, MSVE.tmpi[3]);
			}

			break;
		}

		case 3:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AI[MSVE.tmpi[0]].LRV.class;
				MSVE.tmpv.unit = AI[MSVE.tmpi[0]].LRV.unit;
				MSVE.tmpv.calc_unit = AI[MSVE.tmpi[0]].LRV.unit;
				MSVE.tmpv.val = AI[MSVE.tmpi[0]].LRV.val;
				MSVE.tmpv.calc_val = AI[MSVE.tmpi[0]].LRV.val;
				
				if (RUSS)
				{
					Get_Russ_Line(143,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], "#%d AI LRV", MSVE.tmpi[0]+1); 
				
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].LRV, MSVE.tmpv.val,0,0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 4:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AI[MSVE.tmpi[0]].URV.class;
				MSVE.tmpv.unit = AI[MSVE.tmpi[0]].URV.unit;
				MSVE.tmpv.calc_unit = AI[MSVE.tmpi[0]].URV.unit;
				MSVE.tmpv.val = AI[MSVE.tmpi[0]].URV.val;
				MSVE.tmpv.calc_val = AI[MSVE.tmpi[0]].URV.val;
				if (RUSS)
				{
					Get_Russ_Line(144,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], "#%d AI URV", MSVE.tmpi[0]+1); 
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].URV, MSVE.tmpv.val,0,0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 5:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				
				if (RUSS)
				{
					Get_Russ_Line(145,OUT_STR,0);
					Get_Russ_Line(256,OUT_STR2,0);
					sprintf(LCD_DISPLAY[0],"#%d %s %s", MSVE.tmpi[0]+1,OUT_STR,OUT_STR2);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AI Trim 4mA", MSVE.tmpi[0]+1);		
				
				sprintf(ENG_STR,"SELECT = RESET");			
				Print_To_LCD(2, 146, ENG_STR, -1);
				sprintf(ENG_STR,"ENTER  = TRIM");	
				Print_To_LCD(3, 147, ENG_STR, -1);
				MSVE.tmpf[0] = AI[MSVE.tmpi[0]].TRIM_MIN_C;
			}
			
			if (RUSS)
			{
				Get_Russ_Line(148,OUT_STR,0);
				Get_Russ_Line(256,OUT_STR2,0);
				sprintf(LCD_DISPLAY[1],"%s %s(%5.3f)",OUT_STR,OUT_STR2,(REG_ADC[MSVE.tmpi[0]+5].val * 10.0));
			}
			else
				sprintf(LCD_DISPLAY[1],"Connect  4mA(%5.3f)", (REG_ADC[MSVE.tmpi[0]+5].val * 10.0));	

			if (MSVE.ENTER)
			{
			  


				MSVE.tmpi[2] = 1;              
				MSVE.tmpi[1] = 51;             
			}

			if (MSVE.SELECT)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MIN, 0.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AI[MSVE.tmpi[0]].CURRENT, 0x00060000, 0, 0);
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MAX, 32767.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AI[MSVE.tmpi[0]].CURRENT, 0x00050000, 0, 0);
				Update_Flags_Goto_Next_Menu(1,1);
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 7;
			}

			if (MSVE.MENU  )      
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}
		 
        case 51: 
        {
		   	if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"   Press SELECT if");	
				Print_To_LCD(0, 149, ENG_STR, 1);
				
				sprintf(ENG_STR,"    you are sure");		
				Print_To_LCD(1, 150, ENG_STR, 5);
				
				sprintf(LCD_DISPLAY[2],""); 
				
				sprintf(ENG_STR," Press MENU to skip"); 	
				Print_To_LCD(3, 164, ENG_STR, 2);
			} 
		   	if (MSVE.SELECT)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MIN, 0.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MIN_C = REG_ADC[MSVE.tmpi[0]+5].val * 10.0;
				Update_Flags_Goto_Next_Menu(1,1);
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 5;	
			} 
		    if (MSVE.MENU)
			{   
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 6;
			}   
			
			break;
        }
         
		case 6:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(145,OUT_STR,0);
					Get_Russ_Line(257,OUT_STR2,0);
					sprintf(LCD_DISPLAY[0],"#%d %s %s", MSVE.tmpi[0]+1,OUT_STR,OUT_STR2);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AI Trim 20mA", MSVE.tmpi[0]+1);	
				sprintf(ENG_STR,"SELECT = RESET");			
				Print_To_LCD(2, 146, ENG_STR, -1);
				sprintf(ENG_STR,"ENTER  = TRIM");	
				Print_To_LCD(3, 147, ENG_STR, -1);
				MSVE.tmpf[0] = AI[MSVE.tmpi[0]].TRIM_MAX_C;
			}
			
			if (RUSS)
			{
				Get_Russ_Line(148,OUT_STR,0);
				Get_Russ_Line(257,OUT_STR2,0);
				sprintf(LCD_DISPLAY[1],"%s %s(%5.3f)",OUT_STR,OUT_STR2,(REG_ADC[MSVE.tmpi[0]+5].val * 10.0));
			}
			else
				sprintf(LCD_DISPLAY[1],"Connect 20mA(%5.3f)",(REG_ADC[MSVE.tmpi[0]+5].val * 10.0)); 

			if (MSVE.ENTER)
			{
			 


				MSVE.tmpi[2] = 1;              
				MSVE.tmpi[1] = 61;             
			}

			if (MSVE.SELECT)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MIN, 0.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AI[MSVE.tmpi[0]].CURRENT, 0x00060000, 0, 0);
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MAX, 32767.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AI[MSVE.tmpi[0]].CURRENT, 0x00050000, 0, 0);
				Update_Flags_Goto_Next_Menu(1,1);
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 7;
			}

			if (MSVE.MENU  )  
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}
        
         
        case 61: 
        {
		   	if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"   Press SELECT if");	
				Print_To_LCD(0, 149, ENG_STR, 1);
				
				sprintf(ENG_STR,"    you are sure");		
				Print_To_LCD(1, 150, ENG_STR, 5);
				sprintf(LCD_DISPLAY[2],""); 
				
				sprintf(ENG_STR," Press MENU to skip"); 	
				Print_To_LCD(3, 164, ENG_STR, 2);
			} 
		   	if (MSVE.SELECT)
			{
				VAR_Update(&AI[MSVE.tmpi[0]].TRIM_MAX, 32767.0,0,0);
				AI[MSVE.tmpi[0]].TRIM_MAX_C = REG_ADC[MSVE.tmpi[0]+5].val * 10.0;
				Update_Flags_Goto_Next_Menu(1,1);
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 6;	
			} 
		    if (MSVE.MENU)
			{   
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 7;
			}   
			
			break;
        }
         
        
		case 7:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = 70;
				MSVE.tmpv.unit = 51;
				MSVE.tmpv.calc_unit = 51;
				if (AI[MSVE.tmpi[0]].CURRENT.dampening<0.0) AI[MSVE.tmpi[0]].CURRENT.dampening = 0.0;
				MSVE.tmpv.val = AI[MSVE.tmpi[0]].CURRENT.dampening;
				MSVE.tmpv.calc_val = AI[MSVE.tmpi[0]].CURRENT.dampening;
				
				if (RUSS)
				{
					Get_Russ_Line(152,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], "#%d AI Dampening", MSVE.tmpi[0]+1);	
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 4, 1, 0, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 4, 1, 0, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				AI[MSVE.tmpi[0]].CURRENT.dampening = MSVE.tmpv.val;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 8:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(154,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"%s #%d",OUT_STR,MSVE.tmpi[0]+1);
				}
				else
					sprintf(LCD_DISPLAY[0],"  Analog Input #%d",MSVE.tmpi[0]+1);		
				
				sprintf(LCD_DISPLAY[1],"");
				MSVE.ptmpv = HART_Lookup(AI[MSVE.tmpi[0]].v.val, &ui, (int*)&HART_DVINPUT_Table);
			}

			Get_Unit(AI[MSVE.tmpi[0]].CURRENT.class, AI[MSVE.tmpi[0]].CURRENT.unit, u);
			Get_Unit(AI[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.class, AI[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.unit, u1);
			sprintf(LCD_DISPLAY[1],"%6.2f %s / %6.2f %s", AI[MSVE.tmpi[0]].CURRENT.val, u, AI[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.val, u1);

			if (AI[MSVE.tmpi[0]].v.val>=0)
			{
				Get_Unit(AI[MSVE.tmpi[0]].class.val, AI[MSVE.tmpi[0]].unit.val, u);
				
				if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
				{
					if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
						sprintf(LCD_DISPLAY[2],"%s", OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[2],"%s", MSVE.ptmpv->name); 
				
				sprintf(LCD_DISPLAY[3],"%6.2f %s", AI[MSVE.tmpi[0]].val, u);
			}
			else
			{
				sprintf(ENG_STR,"Disabled");	
				Print_To_LCD(2, 49, ENG_STR, -1);
				sprintf(LCD_DISPLAY[3],"");
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 0:
		{ 
			MSVE.MENU_TRAP = 0;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[0]++;
				if (MSVE.tmpi[0]>=5) MSVE.tmpi[0] = 0;

				while (!AI[MSVE.tmpi[0]].present)
				{
					MSVE.tmpi[0]++;
					if (MSVE.tmpi[0]>=5) MSVE.tmpi[0] = 0;
				}
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[0]--;
				if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 5-1;

				while (!AI[MSVE.tmpi[0]].present)
				{
					MSVE.tmpi[0]--;
					if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 5-1;
				}
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.MENU_TRAP = 1;

				MSVE.tmpi[2] = 1;

				MSVE.tmpi[1] = 1;
			}

			if (RUSS)
			{
				Get_Russ_Line(154,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s #%d",OUT_STR,MSVE.tmpi[0]+1);
			}
			else
				sprintf(LCD_DISPLAY[3],"  Analog Input #%d",MSVE.tmpi[0]+1);	

			break;
		}

		default:
		{
			MSVE.FRESH = 1;
			break;
		}
	}
}

 
void MENU_AO_CFG(void)
{                                                
	unsigned int ui;
	char u[8];
	char u1[8];
	float t;
	int i;

	if (MSVE.FRESH)
	{
		for (i=0;i<9;i++)
		{
			if (AO[i].present) break;
		}

		if (i==9)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = 0;
		sprintf(ENG_STR,"    Configure AO");		
		Print_To_LCD(0, 156, ENG_STR, -1);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = i; 
		MSVE.tmpi[1] = 0; 
		MSVE.tmpi[2] = 0; 
		MSVE.tmpi[3] = 0; 
		MSVE.tmpi[4] = 0; 
	}

	if (MSVE.tmpi[2])
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = 1;
		MSVE.CURSOR_ENABLED = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(157,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d AO Variable", MSVE.tmpi[0]+1);	

				sprintf(LCD_DISPLAY[1],"");
				MSVE.tmpi[3] = AO[MSVE.tmpi[0]].v.val;
			}

			
			if (MSVE.tmpi[3]<0)
			{
				MSVE.tmpi[3] = HART_Lookup_n((int*)&HART_DVOUTPUT_Table) - 1;
			}
			

			ui = 0;
			MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DVOUTPUT_Table);
			if (ui == 2)
			{
				MSVE.tmpi[3] = 0;
				MSVE.ptmpv = HART_Lookup(MSVE.tmpi[3], &ui, (int*)&HART_DVOUTPUT_Table);
			}

			if (RUSS)
			{
				Get_Russ_Line(133,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s: %d", OUT_STR,MSVE.tmpi[3]);
			}
			else
				sprintf(LCD_DISPLAY[2],"Variable Index: %d", MSVE.tmpi[3]);	
			
			if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
			{
				if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
					sprintf(LCD_DISPLAY[3],"%s", OUT_STR);
			}
			else	
			{				
					if ((MSVE.ptmpv==(VAR*)0) || (MSVE.ptmpv==&REG_DUMMY))
						sprintf(LCD_DISPLAY[3],"????");
					else			
						sprintf(LCD_DISPLAY[3],"%s", MSVE.ptmpv->name);
			}


			if (MSVE.ENTER)
			{
				if (AO[MSVE.tmpi[0]].v.val != MSVE.tmpi[3])
				{
					AO[MSVE.tmpi[0]].v.val = MSVE.tmpi[3];

					AO[MSVE.tmpi[0]].class.val = MSVE.ptmpv->class;
					AO[MSVE.tmpi[0]].unit.val = MSVE.ptmpv->unit & 0xFF;
					Set_Units(0);

					VAR_Update(&AO[MSVE.tmpi[0]].LRV, 0.0,0,0);
					VAR_Update(&AO[MSVE.tmpi[0]].URV, 0.0,0,0);
					AO[MSVE.tmpi[0]].CURRENT.dampening = 0.0;
					AO[MSVE.tmpi[0]].PID_setpoint = 0.0;  
					 
					VAR_Update(&AO[MSVE.tmpi[0]].P, 0.1,0,0);     
					VAR_Update(&AO[MSVE.tmpi[0]].I, 1.0,0,0);     
					VAR_Update(&AO[MSVE.tmpi[0]].D, 0.0,0,0);     

					if (AO[MSVE.tmpi[0]].v.val>=0)
					{
						AO[MSVE.tmpi[0]].MANUAL = 0;
					}
					else
					{
						AO[MSVE.tmpi[0]].MANUAL = 1;
					}

					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				AO[MSVE.tmpi[0]].class.val = MSVE.ptmpv->class;
				Set_Units(0);
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 5;
				else MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
			}

			break;
		}

		case 2:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(160,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AO Unit Code", MSVE.tmpi[0]+1);	
				
				Get_Class(AO[MSVE.tmpi[0]].class.val, MSVE.str[3]);
				
				if (RUSS)
				{
					Get_Russ_Line(37,OUT_STR,0);
					sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
				}
				else
					sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	

				MSVE.tmpi[3] = AO[MSVE.tmpi[0]].unit.val & 0xFF;
			}

			Get_Unit(AO[MSVE.tmpi[0]].class.val, MSVE.tmpi[3], MSVE.str[3]);

			if (RUSS)
			{
				Get_Russ_Line(254,OUT_STR,0);
				sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
				
				Get_Russ_Line(38,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
			}
			else
			{
				sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
				sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
			}

			if (MSVE.ENTER)
			{
				if (AO[MSVE.tmpi[0]].unit.val != MSVE.tmpi[3])
				{
					MSVE.ptmpv = HART_Lookup(AO[MSVE.tmpi[0]].v.val, &ui, (int*)&HART_DV_Table);
					VAR_Update(&AO[MSVE.tmpi[0]].LRV, Convert(AO[MSVE.tmpi[0]].class.val, AO[MSVE.tmpi[0]].unit.val, MSVE.tmpi[3], AO[MSVE.tmpi[0]].LRV.val, 0, MSVE.ptmpv->aux),0,0);
					VAR_Update(&AO[MSVE.tmpi[0]].URV, Convert(AO[MSVE.tmpi[0]].class.val, AO[MSVE.tmpi[0]].unit.val, MSVE.tmpi[3], AO[MSVE.tmpi[0]].URV.val, 0, MSVE.ptmpv->aux),0,0);
					AO[MSVE.tmpi[0]].unit.val = MSVE.tmpi[3];
					Set_Units(0);
					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				Set_Units(0);

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}
			else
			if (MSVE.SELECT)
			{
				if (AO[MSVE.tmpi[0]].class.val!=0) MSVE.tmpi[3] = Get_Next_Unit(AO[MSVE.tmpi[0]].class.val, MSVE.tmpi[3]);
			}
			else
			if (MSVE.VALUE)
			{
				if (AO[MSVE.tmpi[0]].class.val!=0) MSVE.tmpi[3] = Get_Prev_Unit(AO[MSVE.tmpi[0]].class.val, MSVE.tmpi[3]);
			}

			break;
		}

		case 3:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AO[MSVE.tmpi[0]].LRV.class;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].LRV.unit;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].LRV.unit;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].LRV.val;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].LRV.val;
				if (RUSS)
				{
					Get_Russ_Line(258,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO LRV", MSVE.tmpi[0]+1);	
			}
			
			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				VAR_Update(&AO[MSVE.tmpi[0]].LRV, MSVE.tmpv.val,0,0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 4:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AO[MSVE.tmpi[0]].URV.class;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].URV.unit;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].URV.unit;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].URV.val;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].URV.val;
				
				if (RUSS)
				{
					Get_Russ_Line(259,OUT_STR,0);
					sprintf (MSVE.str[3], " #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO URV", MSVE.tmpi[0]+1);	
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				VAR_Update(&AO[MSVE.tmpi[0]].URV, MSVE.tmpv.val,0,0);
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 5:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(161,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AO Trim 4mA", MSVE.tmpi[0]+1);	
				
				sprintf(ENG_STR,"Connect Meter");			
				Print_To_LCD(1, 162, ENG_STR, -1);
				
				sprintf(ENG_STR,"SELECT = RESET");			
				Print_To_LCD(2, 146, ENG_STR, -1);
				
				sprintf(ENG_STR,"ENTER  = TRIM");	
				Print_To_LCD(3, 147, ENG_STR, -1);
				
				MSVE.tmpf[0] = AO[MSVE.tmpi[0]].TRIM_MIN_C;
			}

			if (MSVE.SELECT)
			{
				if (((MSVE.tmpi[0]+0)>=5) && ((MSVE.tmpi[0]+0)<=8)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, 6500.0,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, 100.0,0,0);
				AO[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, 0x00060000, 0, 0);
				if (((MSVE.tmpi[0]+0)>=5) && ((MSVE.tmpi[0]+0)<=8)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, 32000.0,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, 64600.0,0,0);
				AO[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, 0x00050000, 0, 0);

				Update_Flags_Goto_Next_Menu(1,1);

				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1] = 7;
			}

			if (MSVE.ENTER)
			{
				if (((MSVE.tmpi[0]+0)>=5) && ((MSVE.tmpi[0]+0)<=8)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, 6500.0,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, 100.0,0,0);
				AO[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, 0x00060000, 0, 0);
				AO[MSVE.tmpi[0]].MANUAL = 1;
				VAR_Update(&AO[MSVE.tmpi[0]].CURRENT, AO[MSVE.tmpi[0]].TRIM_MIN_C, 0, 0);
				Update_Flags_Goto_Next_Menu(1,1);

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 51;
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 51:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AO[MSVE.tmpi[0]].CURRENT.class;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].CURRENT.calc_unit;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].CURRENT.calc_unit;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].TRIM_MIN_C;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].TRIM_MIN_C;
				if (RUSS)
				{
					Get_Russ_Line(161,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO Trim 4mA", MSVE.tmpi[0]+1);  
			}
            
			if (RUSS)
			{
				Get_Russ_Line(163,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 6, 3, 0, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Meter Value", 6, 3, 0, 0, &MSVE.tmpv, 1, 0);	
			
			sprintf(ENG_STR," Press MENU to skip"); 	
			Print_To_LCD(1, 164, ENG_STR, 4);
   
			
            
			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].TRIM_MIN_C = MSVE.tmpv.val;
				AO[MSVE.tmpi[0]].MANUAL = 0;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].MANUAL = 0;
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 6;
			}

			break;
		}

		case 6:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(165,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"#%d AO Trim 20mA", MSVE.tmpi[0]+1);	
				
				sprintf(ENG_STR,"Connect Meter");			
				Print_To_LCD(1, 162, ENG_STR, -1);
				
				sprintf(ENG_STR,"SELECT = RESET");			
				Print_To_LCD(2, 146, ENG_STR, -1);
				
				sprintf(ENG_STR,"ENTER  = TRIM");	
				Print_To_LCD(3, 147, ENG_STR, -1);
				
				MSVE.tmpf[0] = AO[MSVE.tmpi[0]].TRIM_MAX_C;
			}

			if (MSVE.SELECT)
			{
				if (((MSVE.tmpi[0]+0)>=5) && ((MSVE.tmpi[0]+0)<=8)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, 6500.0,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MIN, 100.0,0,0);
				AO[MSVE.tmpi[0]].TRIM_MIN_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, 0x00060000, 0, 0);
				if (((MSVE.tmpi[0]+0)>=5) && ((MSVE.tmpi[0]+0)<=8)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, 32000.0,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, 64600.0,0,0);
				AO[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, 0x00050000, 0, 0);

				Update_Flags_Goto_Next_Menu(1,1);

				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1] = 7;
			}

			if (MSVE.ENTER)
			{
				if (((MSVE.tmpi[0]+0)>=5) && ((MSVE.tmpi[0]+0)<=8)) VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, 32000.0,0,0);
				else VAR_Update(&AO[MSVE.tmpi[0]].TRIM_MAX, 64600.0,0,0);
				AO[MSVE.tmpi[0]].TRIM_MAX_C = VAR_Get_Unit_Param(&AO[MSVE.tmpi[0]].CURRENT, 0x00050000, 0, 0);
				AO[MSVE.tmpi[0]].MANUAL = 1;
				VAR_Update(&AO[MSVE.tmpi[0]].CURRENT, AO[MSVE.tmpi[0]].TRIM_MAX_C, 0, 0);
				Update_Flags_Goto_Next_Menu(1,1);

				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 61;
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1]++;
			}

			break;
		}

		case 61:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = AO[MSVE.tmpi[0]].CURRENT.class;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].CURRENT.calc_unit;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].CURRENT.calc_unit;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].TRIM_MAX_C;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].TRIM_MAX_C;
				
				if (RUSS)
				{
					Get_Russ_Line(165,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO Trim 20mA", MSVE.tmpi[0]+1);  
			}
            if (RUSS)
			{
				Get_Russ_Line(163,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 6, 3, 0, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Meter Value", 6, 3, 0, 0, &MSVE.tmpv, 1, 0);	
			
			sprintf(ENG_STR," Press MENU to skip"); 	
			Print_To_LCD(1, 164, ENG_STR, 4);

			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].TRIM_MAX_C = MSVE.tmpv.val;
				AO[MSVE.tmpi[0]].MANUAL = 0;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].MANUAL = 0;
				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].v.val==-1) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1] = 7;
			}

			break;
		}

		case 7:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(166,OUT_STR,0);
					sprintf(LCD_DISPLAY[0]," #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0]," #%d AO Alarm Select", MSVE.tmpi[0]+1);	
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");
				MSVE.tmpi[3] = AO[MSVE.tmpi[0]].ALARM_SELECT & 0x01;
			}

			switch (MSVE.tmpi[3]&0x01)
			{
				case 1:  
					sprintf(ENG_STR,"      LOW (4mA)"); 	
					Print_To_LCD(3, 167, ENG_STR, 5);
					break;
				default: 
					sprintf(ENG_STR,"     HIGH (20mA)");	
					Print_To_LCD(3, 167, ENG_STR, 4);
					break;	
			}

			if (MSVE.SELECT || MSVE.VALUE)
			{
				MSVE.tmpi[3]^=0x01;
			}

			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].ALARM_SELECT = MSVE.tmpi[3];
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 8:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				if (RUSS)
				{
					Get_Russ_Line(169,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"   #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf(LCD_DISPLAY[0],"   #%d AO MODE", MSVE.tmpi[0]+1);	
				
				sprintf(LCD_DISPLAY[1],"");
				sprintf(LCD_DISPLAY[2],"");

				if ((!AO[MSVE.tmpi[0]].MANUAL) && (AO[MSVE.tmpi[0]].REVERSE)) MSVE.tmpi[3] = 2;
				else if (AO[MSVE.tmpi[0]].MANUAL) MSVE.tmpi[3] = 1;
				else MSVE.tmpi[3] = 0;
			}

			switch (MSVE.tmpi[3])
			{
				case 2:  
					sprintf(ENG_STR," Automatic/Reverse"); 	
					Print_To_LCD(3, 170, ENG_STR, 4);
					break;
				case 1:  
					sprintf(ENG_STR,"       Manual"); 		
					Print_To_LCD(3, 131, ENG_STR, 6);
					break;
				default: 
					sprintf(ENG_STR,"     Automatic"); MSVE.tmpi[3] = 0;	
					Print_To_LCD(3, 171, ENG_STR, 8);
					break;
			}

			if (MSVE.SELECT)
			{
				MSVE.tmpi[3]++;
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[3]--;
				if (MSVE.tmpi[3]<0) MSVE.tmpi[3] = 2;
			}

			if (MSVE.ENTER)
			{
				switch (MSVE.tmpi[3])
				{
					case 2:  AO[MSVE.tmpi[0]].MANUAL = 0; AO[MSVE.tmpi[0]].REVERSE = 1; break;
					case 1:  AO[MSVE.tmpi[0]].MANUAL = 1; AO[MSVE.tmpi[0]].REVERSE = 0; break;
					default: AO[MSVE.tmpi[0]].MANUAL = 0; AO[MSVE.tmpi[0]].REVERSE = 0; break;
				}

				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				if (AO[MSVE.tmpi[0]].MANUAL) MSVE.tmpi[1] = 9;
				else MSVE.tmpi[1] = 81;
			}

			break;
		}

		case 81:
		{ 
			if (MSVE.FRESH)
			{
				MSVE.tmpv.class = 70;
				MSVE.tmpv.unit = 51;
				MSVE.tmpv.calc_unit = 51;
				if (AO[MSVE.tmpi[0]].CURRENT.dampening<0.0) AO[MSVE.tmpi[0]].CURRENT.dampening = 0.0;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].CURRENT.dampening;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].CURRENT.dampening;
				if (RUSS)
				{
					Get_Russ_Line(172,OUT_STR,0);
					sprintf (MSVE.str[3], "#%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], "#%d AO Dampening", MSVE.tmpi[0]+1);	
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 4, 1, 0, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 4, 1, 0, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].CURRENT.dampening = MSVE.tmpv.val;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 82:
		{ 
			if (MSVE.FRESH)
			{
				if (AO[MSVE.tmpi[0]].v.val!=-2)
				{
					MSVE.tmpi[2] = 1;
					MSVE.tmpi[1]++;
					break;
				}

				MSVE.tmpv.class = 252;
				MSVE.tmpv.unit = 252;
				MSVE.tmpv.calc_unit = 252;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].P.val;    
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].P.val;     
				
				if (RUSS)
					sprintf (MSVE.str[3], "AO #%d %c", MSVE.tmpi[0]+1,(unsigned char) 0xA8);
				else
					sprintf (MSVE.str[3], "AO #%d P", MSVE.tmpi[0]+1); 
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 9, 4, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 9, 3, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				 
				VAR_Update(&AO[MSVE.tmpi[0]].P, MSVE.tmpv.val, 0, 0);  
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 83:
		{ 
			if (MSVE.FRESH)
			{
				if (AO[MSVE.tmpi[0]].v.val!=-2)
				{
					MSVE.tmpi[2] = 1;
					MSVE.tmpi[1]++;
					break;
				}

				MSVE.tmpv.class = 252;
				MSVE.tmpv.unit = 252;
				MSVE.tmpv.calc_unit = 252;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].I.val;         
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].I.val;    
				
				if (RUSS)
					sprintf (MSVE.str[3], "AO #%d %c", MSVE.tmpi[0]+1,(unsigned char) 0xA5);
				else
					sprintf (MSVE.str[3], "AO #%d I", MSVE.tmpi[0]+1);	
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 9, 3, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 9, 3, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				 
				VAR_Update(&AO[MSVE.tmpi[0]].I, MSVE.tmpv.val, 0, 0);  
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 84:
		{ 
			if (MSVE.FRESH)
			{
				if (AO[MSVE.tmpi[0]].v.val!=-2)
				{
					MSVE.tmpi[2] = 1;
					MSVE.tmpi[1]++;
					break;
				}

				MSVE.tmpv.class = 252;
				MSVE.tmpv.unit = 252;
				MSVE.tmpv.calc_unit = 252;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].D.val;       
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].D.val;   
				
				if (RUSS)
					sprintf (MSVE.str[3], "AO #%d %c", MSVE.tmpi[0]+1,(unsigned char) 0xE0);
				else
					sprintf (MSVE.str[3], "AO #%d D", MSVE.tmpi[0]+1);	
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 9, 3, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 9, 3, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				 
				VAR_Update(&AO[MSVE.tmpi[0]].D, MSVE.tmpv.val, 0, 0);  
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1]++;
			}

			break;
		}

		case 85:
		{ 
			if (MSVE.FRESH)
			{
				if (AO[MSVE.tmpi[0]].v.val!=-2)
				{
					MSVE.tmpi[2] = 1;
					MSVE.tmpi[1] = 9;
					break;
				}

				MSVE.tmpv.class = AO[MSVE.tmpi[0]].class.val;
				MSVE.tmpv.unit = AO[MSVE.tmpi[0]].unit.val;
				MSVE.tmpv.calc_unit = AO[MSVE.tmpi[0]].unit.val;
				MSVE.tmpv.val = AO[MSVE.tmpi[0]].PID_setpoint;
				MSVE.tmpv.calc_val = AO[MSVE.tmpi[0]].PID_setpoint;
				
				if (RUSS)
				{
					Get_Russ_Line(260,OUT_STR,0);
					sprintf (MSVE.str[3], " #%d %s", MSVE.tmpi[0]+1,OUT_STR);
				}
				else
					sprintf (MSVE.str[3], " #%d AO PID Setpoint", MSVE.tmpi[0]+1);	
			}

			if (RUSS)
			{
				Get_Russ_Line(153,OUT_STR,0);
				MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 0, &MSVE.tmpv, 1, 0);
			}
			else
				MSVE_Data_Input(MSVE.str[3], "Value", 13, 1, 1, 0, &MSVE.tmpv, 1, 0);	

			if (MSVE.ENTER)
			{
				AO[MSVE.tmpi[0]].PID_setpoint = MSVE.tmpv.val;
				Update_Flags_Goto_Next_Menu(1,1);
			}

			if (MSVE.MENU || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 9;
			}

			break;
		}

		case 9:
		{ 

			if ((AO[MSVE.tmpi[0]].v.val>=0) && (!AO[MSVE.tmpi[0]].MANUAL))
			{
				if (MSVE.FRESH)
				{
					MSVE.FRESH = 0;
				}
				
				if (RUSS)
				{
					Get_Russ_Line(173,OUT_STR,0);
					sprintf(LCD_DISPLAY[0],"%s #%d", OUT_STR, MSVE.tmpi[0]+1);
				}
				else
					sprintf(LCD_DISPLAY[0],"  Analog Output #%d",MSVE.tmpi[0]+1);	
				
				MSVE.ptmpv = HART_Lookup(AO[MSVE.tmpi[0]].v.val, &ui, (int*)&HART_DV_Table);
				Get_Unit(AO[MSVE.tmpi[0]].CURRENT.class, AO[MSVE.tmpi[0]].CURRENT.unit, u);
				Get_Unit(AO[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.class, AO[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.unit, u1);
				sprintf(LCD_DISPLAY[1],"%6.2f %s / %6.2f %s", AO[MSVE.tmpi[0]].CURRENT.val, u, AO[MSVE.tmpi[0]].CURRENT_PERCENT_OF_RANGE.val, u1);

				Get_Unit(AO[MSVE.tmpi[0]].class.val, AO[MSVE.tmpi[0]].unit.val, u);
				
				if (RUSS && (MSVE.ptmpv->name_r != 0x00) )
				{
					if (Get_Russ_Line(MSVE.ptmpv->name_r,OUT_STR,0) == 1 )
						sprintf(LCD_DISPLAY[2],"%s", OUT_STR);	
				}
				else
					sprintf(LCD_DISPLAY[2],"%s", MSVE.ptmpv->name); 

				t = Convert(AO[MSVE.tmpi[0]].class.val, MSVE.ptmpv->unit, AO[MSVE.tmpi[0]].unit.val, MSVE.ptmpv->val, 0, MSVE.ptmpv->aux);
				sprintf(LCD_DISPLAY[3],"%6.2f %s", t, u);
			}
			else
			{
				if (RUSS)
				{
					Get_Russ_Line(174,OUT_STR,0);
					sprintf(LCD_DISPLAY[3],"%s #%d", OUT_STR, MSVE.tmpi[0]+1);
				}
				else
					sprintf (MSVE.str[3], "Analog Out #%d", MSVE.tmpi[0]+1);	

				MSVE_Data_Input(MSVE.str[3], "     AO", 6, 3, 0, 0, &AO[MSVE.tmpi[0]].CURRENT, 1, 1);

				if (MSVE.MENU)
				{ 
					Update_Flags_Goto_Next_Menu(1,1);
				}
			}

			if (MSVE.MENU)
			{
				MSVE.tmpi[2] = 1;
				MSVE.tmpi[1] = 0;
			}

			break;
		}

		case 0:
		{ 
			MSVE.MENU_TRAP = 0;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[0]++;
				if (MSVE.tmpi[0]>=9) MSVE.tmpi[0] = 0;

				while (!AO[MSVE.tmpi[0]].present)
				{
					MSVE.tmpi[0]++;
					if (MSVE.tmpi[0]>=9) MSVE.tmpi[0] = 0;
				}
			}
			else
			if (MSVE.VALUE)
			{
				MSVE.tmpi[0]--;
				if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 9-1;

				while (!AO[MSVE.tmpi[0]].present)
				{
					MSVE.tmpi[0]--;
					if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 9-1;
				}
			}
			else
			if (MSVE.ENTER)
			{
				MSVE.MENU_TRAP = 1;

				MSVE.tmpi[2] = 1;

				MSVE.tmpi[1] = 1;
			}
			
			if (RUSS)
			{
				Get_Russ_Line(173,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"%s #%d", OUT_STR, MSVE.tmpi[0]+1);
			}
			else
				sprintf(LCD_DISPLAY[3],"  Analog Output #%d",MSVE.tmpi[0]+1);		

			break;
		}

		default:
		{
			MSVE.FRESH = 1;
			break;
		}
	}
}                   


void MENU_PAGE_TRIM_RTD_SELECT(void)
{
	int i;

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"      Trim RTD      ");	
		Print_To_LCD(0,175, ENG_STR, 4);
		
		sprintf(ENG_STR,"SELECT = CHANGE");		
		Print_To_LCD(1, 90, ENG_STR, -1);
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
	}

	if (MSVE.tmpi[2]) 
	{
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[2] = 0;
		MSVE.FRESH = 1;
		MSVE.CURSOR_ENABLED = 0;
	}
	
	switch(MSVE.tmpi[0])
	{						
		case 0:
		{ 
			MSVE.MENU_TRAP = 0;
			MSVE.FRESH = 0;

			if (MSVE.SELECT)
			{
				MSVE.tmpi[1]++;
				if (MSVE.tmpi[1]>=3)
					MSVE.tmpi[1] = 1;
			}
			else if (MSVE.VALUE)
			{
				MSVE.tmpi[1]--;
				if (MSVE.tmpi[1]<1) MSVE.tmpi[1] = 2;
			}

			switch (MSVE.tmpi[1])
			{
				
				case 0: 
				{
					sprintf(ENG_STR,"    SELECT LO/HI    ");	
					Print_To_LCD(3, 176, ENG_STR, 3);
					
					if (MSVE.ENTER)
					{
						MSVE.MENU = 1;
						return;
					}
					
					break;
				}
				
				
				case 1:
				{
					sprintf(ENG_STR,"      TRIM LO       ");	
					Print_To_LCD(3, 177, ENG_STR, 5);
					
					if (MSVE.ENTER)
					{
						MSVE.tmpi[2] = 1; 
						MSVE.tmpi[0] = 1; 
					}
					break;				
				}
				
				
				case 2:
				{
					sprintf(ENG_STR,"      TRIM HI       ");	
					Print_To_LCD(3, 178, ENG_STR, 4);
					
					if (MSVE.ENTER)
					{
						MSVE.tmpi[2] = 1; 
						MSVE.tmpi[0] = 3; 
					}
					break;
				}

			}
			

			break;
		}
		
		
		case 1:
		{
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"    Trim RTD Lo     ");	
				Print_To_LCD(0, 179, ENG_STR, 3);
				sprintf(ENG_STR,"Connect 100 Ohm");	
				Print_To_LCD(1, 180, ENG_STR, -1);
				sprintf(ENG_STR,"ENTER  = TRIM");	
				Print_To_LCD(3, 147, ENG_STR, -1);
			}
			
			if (RUSS)
			{
				Get_Russ_Line(261,OUT_STR,0);
				sprintf(LCD_DISPLAY[2]," %7.4f %s",RTD_R,OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[2]," %7.4f Ohm",RTD_R); 
			
			
			if (MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1; 
				MSVE.tmpi[0] = 2; 
			}
			
			break;
		}
		
		
		case 2:
		{	
			if (MSVE.FRESH)
			{	
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"    Press SELECT    ");	
				Print_To_LCD(0, 181, ENG_STR, 3);
				sprintf(ENG_STR,"     to CONFIRM     ");	
				Print_To_LCD(1, 182, ENG_STR, 1);
				sprintf(LCD_DISPLAY[2],"--------------------"); 
				sprintf(ENG_STR,"Press MENU to CANCEL"); 
				Print_To_LCD(3, 183, ENG_STR, -1);
			} 
			if (MSVE.SELECT)
			{
				RTD_CAL.val= 0;	
				Calibrate_RTD();
				MSVE.tmpi[2] = 1; 
				MSVE.tmpi[0] = 5; 
							
			} 
			break;
		}
		
		
		case 3:
		{
			if (MSVE.FRESH)
			{
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"    Trim RTD Hi");	
				Print_To_LCD(0, 184, ENG_STR, 2);
				sprintf(ENG_STR,"Connect 125 Ohm");	
				Print_To_LCD(1, 185, ENG_STR, -1);
				sprintf(ENG_STR,"ENTER  = TRIM");	
				Print_To_LCD(3, 147, ENG_STR, -1);
			}
			
			if (RUSS)
			{
				Get_Russ_Line(261,OUT_STR,0);
				sprintf(LCD_DISPLAY[2]," %7.4f %s",RTD_R,OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[2]," %7.4f Ohm",RTD_R); 
			
			if (MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1; 
				MSVE.tmpi[0] = 4; 
			}
			
			break;
		}
		
		
		case 4:
		{
			if (MSVE.FRESH)
			{	
				MSVE.FRESH = 0;
				sprintf(ENG_STR,"    Press SELECT    ");	
				Print_To_LCD(0, 181, ENG_STR, 3);
				sprintf(ENG_STR,"     to CONFIRM     ");	
				Print_To_LCD(1, 182, ENG_STR, 1);
				sprintf(LCD_DISPLAY[2],"--------------------"); 
				sprintf(ENG_STR,"Press MENU to CANCEL"); 
				Print_To_LCD(3, 183, ENG_STR, -1);
			} 
			if (MSVE.SELECT)
			{
				RTD_CAL.val= 1;	
				Calibrate_RTD();
				MSVE.tmpi[2] = 1; 
				MSVE.tmpi[0] = 6; 
			} 
			break;
		}
		
		
		case 5:
		{
			if (MSVE.FRESH)
			{	
				MSVE.FRESH = 0;
				sprintf(ENG_STR," TRIM LO COMPLETED  ");	
				Print_To_LCD(0, 186, ENG_STR, 2);
				sprintf(LCD_DISPLAY[1],"--------------------");
				sprintf(ENG_STR,"  Press any button  "); 
				Print_To_LCD(2, 187, ENG_STR, 1);
				sprintf(ENG_STR,"    to continue     "); 
				Print_To_LCD(3, 188, ENG_STR, 2);
			} 
			if (MSVE.SELECT || MSVE.VALUE || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1; 
				MSVE.tmpi[0] = 0; 
				MSVE.tmpi[1] = 2; 
			} 
			break;
		}
		
		
		case 6:
		{
			if (MSVE.FRESH)
			{	
				MSVE.FRESH = 0;
				sprintf(ENG_STR," TRIM HI COMPLETED  ");	
				Print_To_LCD(0, 189, ENG_STR, 1);
				sprintf(LCD_DISPLAY[1],"--------------------");
				sprintf(ENG_STR,"  Press any button  "); 
				Print_To_LCD(2, 187, ENG_STR, 1);
				sprintf(ENG_STR,"    to continue     "); 
				Print_To_LCD(3, 188, ENG_STR, 2);
			} 
			if (MSVE.SELECT || MSVE.VALUE || MSVE.ENTER)
			{
				MSVE.tmpi[2] = 1; 
				MSVE.tmpi[0] = 0; 
				MSVE.tmpi[1] = 0; 
			} 
			break;
		}		
		
		default:
		{
			MSVE.FRESH = 1;
			break;
		}
	}
}


 
void MENU_OIL_CALC_MODE(void)
{
	
	if(1) 
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"  Calculation Mode");	
		Print_To_LCD(0, 190, ENG_STR, 2);
		sprintf(ENG_STR,"Oil Curve Selection");	
		Print_To_LCD(1, 191, ENG_STR, -1);
		sprintf(LCD_DISPLAY[2],"");
		MSVE.tmpi[0] = OIL_CALC_MODE;
	}

	switch(MSVE.tmpi[0])
	{
		case 1:		
			if (RUSS)
			{
				Get_Russ_Line(192,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"  %4.0f%%  %s", OIL_CALC_MAX[0],OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[3],"  %4.0f%%  Curve Set", OIL_CALC_MAX[0]);	
			break;
		case 2:		
			if (RUSS)
			{
				Get_Russ_Line(192,OUT_STR,0);
				sprintf(LCD_DISPLAY[3],"  %4.0f%%  %s", OIL_CALC_MAX[1],OUT_STR);
			}
			else
				sprintf(LCD_DISPLAY[3],"  %4.0f%%  Curve Set", OIL_CALC_MAX[1]);	
			break;
		case 3:		
			sprintf(ENG_STR,"    Auto Select");		
			Print_To_LCD(3, 193, ENG_STR, 5);
			break;

		default:	
			MSVE.tmpi[0]=0;
		case 0:		
			sprintf(ENG_STR,"       Normal");		
			Print_To_LCD(3, 114, ENG_STR, 5);
			break;
	}

	if (MSVE.SELECT||MSVE.VALUE)
	{
		MSVE.tmpi[0]++;
	}

	if (MSVE.ENTER)
	{
		OIL_CALC_MODE = MSVE.tmpi[0];
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

 
void MENU_DENSITY_CORRECTION(void)
{
	
	if ((ANALYZER_MODE.val&0xFF)==4)
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
	}
	else
	{
		if (MSVE.FRESH)
		{
			MSVE.FRESH = 0;
			sprintf(ENG_STR," Density Correction");	
			Print_To_LCD(0, 194, ENG_STR, 1);

			sprintf(LCD_DISPLAY[1],"");
			sprintf(LCD_DISPLAY[2],"");
			MSVE.tmpi[0] = Density_Correction_Mode.val;
		}

		switch(MSVE.tmpi[0])
		{
			case 1:		
				sprintf(ENG_STR," CORIOLIS, PDI TMP");	
				Print_To_LCD(3, 262, ENG_STR, 1);
				break;
			case 2:		
				sprintf(ENG_STR," CORIOLIS, ALT TEMP");	
				Print_To_LCD(3, 263, ENG_STR, 1);
				break;
			case 3:		
				sprintf(ENG_STR,"COR-API60F, COR TMP");	
				Print_To_LCD(3, 195, ENG_STR, -1);
				break;
			case 4:		
				sprintf(ENG_STR,"COR-API60F, PDI TMP");	
				Print_To_LCD(3, 196, ENG_STR, -1);
				break;
			case 5:		
				sprintf(ENG_STR,"COR-API60F, ALT TMP");	
				Print_To_LCD(3, 197, ENG_STR, -1);
				break;
			case 6:		
				sprintf(ENG_STR,"       OTHER");		
				Print_To_LCD(3, 198, ENG_STR, 7);
				break;
			default:	
				MSVE.tmpi[0]=0; 
				sprintf(ENG_STR,"      DISABLED");	
				Print_To_LCD(3, 49, ENG_STR, 5);
				break;
		}

		if (MSVE.SELECT)
		{
			MSVE.tmpi[0]++;
			if (MSVE.tmpi[0]>6) MSVE.tmpi[0] = 0;
		}
		else
		if (MSVE.VALUE)
		{
			MSVE.tmpi[0]--;
			if (MSVE.tmpi[0]<0) MSVE.tmpi[0] = 6;
		}

		if (MSVE.ENTER)
		{
			MSVE.tmpi[1] = Density_Correction_Mode.val;

			if (MSVE.tmpi[1] != MSVE.tmpi[0])
			{
				if ((MSVE.tmpi[0]==1)||(MSVE.tmpi[0]==4)||(MSVE.tmpi[0]==6)||(MSVE.tmpi[0]==0))
					FC[0].USE_PDI_TEMP = 1;
				else
					FC[0].USE_PDI_TEMP = 0;

				if (MSVE.tmpi[0]==6)
					DCM_PORT.val = -1;
				else
					DCM_PORT.val = 3;
			}

			Density_Correction_Mode.val = MSVE.tmpi[0];
			Set_Density_Correction(0);
			Update_Flags_Goto_Next_Menu(1,0);
		}
	}
}

  
 
void MENU_Density_D3(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}
	
	if (RUSS)
	{
		sprintf(OUT_STR,"%c3   ",(unsigned char) 0xA8);
		MSVE_Data_Input("", OUT_STR, 13, 1, 1, 1, &Density_D3, 0, 0);
	}
	else
		MSVE_Data_Input("", "D3   ", 13, 1, 1, 1, &Density_D3, 0, 0);	
}  

 
void MENU_Density_D2(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (RUSS)
	{
		sprintf(OUT_STR,"%c2   ",(unsigned char) 0xA8);
		MSVE_Data_Input("", OUT_STR, 13, 1, 1, 1, &Density_D2, 0, 0);
	}
	else
		MSVE_Data_Input("", "D2   ", 13, 1, 1, 1, &Density_D2, 0, 0);	
}
 

 
void MENU_Density_D1(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}
	
	if (RUSS)
	{
		sprintf(OUT_STR,"%c1   ",(unsigned char) 0xA8);
		MSVE_Data_Input("", OUT_STR, 13, 1, 1, 1, &Density_D1, 0, 0);
	}
	else
		MSVE_Data_Input("", "D1   ", 13, 1, 1, 1, &Density_D1, 0, 0);	
}	

 
void MENU_Density_D0(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}
	
	if (RUSS)
	{
		sprintf(OUT_STR,"%c0   ",(unsigned char) 0xA8);
		MSVE_Data_Input("", OUT_STR, 13, 1, 1, 1, &Density_D0, 0, 0);
	}
	else
		MSVE_Data_Input("", "D0   ", 13, 1, 1, 1, &Density_D0, 0, 0);	
}	

 
void MENU_Density_Cal_Unit(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR," Density Corr. Unit");	
		Print_To_LCD(0, 348, ENG_STR, 1);
		
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		MSVE.tmpi[0] = Density_Cal_Unit.val;
	}

	switch(MSVE.tmpi[0])
	{
		case 107:	sprintf(LCD_DISPLAY[3],"     kg/m3 15C");	break;

		default:	MSVE.tmpi[0]=105;
		case 105:	sprintf(LCD_DISPLAY[3],"      %cAPI 60F", 0xDF);	break;
	}

	if (MSVE.SELECT||MSVE.VALUE)
	{
		if (MSVE.tmpi[0]==105) MSVE.tmpi[0] = 107;
		else MSVE.tmpi[0] = 105;
	}

	if (MSVE.ENTER)
	{
		Density_Cal_Unit.val = MSVE.tmpi[0];
		Set_Density_Cal_Unit(0);
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

 
void MENU_Density_Cal(void)
{
	if (!(FC[0].enable_DENSITY && Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(201,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 2, 1, 0, &Density_Cal, 0, 0);
	}
	else
		MSVE_Data_Input("", "CAL", 7, 2, 1, 0, &Density_Cal, 0, 0); 
}

 
void MENU_DCM_PORT(void)
{
	int i;

	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6) || (ALYESKA.ENABLED) || (!FC[0].enable_DENSITY))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		for(i=0;i<4;i++)
		{
			if (PORT[i].PRESENT) break;
		}

		if (i==4)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = 0;
		sprintf(ENG_STR,"   Coriolis Port");	
		Print_To_LCD(0, 199, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		MSVE.tmpi[0] = DCM_PORT.val;
	}

	switch(MSVE.tmpi[0])
	{
		case 1:		sprintf(LCD_DISPLAY[3],"       COM 2");	break;
		case 2:		sprintf(LCD_DISPLAY[3],"       COM 3");	break;
		case 3:		sprintf(LCD_DISPLAY[3],"       COM 4");	break;

		default:	MSVE.tmpi[0]=0;
		case 0:		sprintf(LCD_DISPLAY[3],"       COM 1");	break;
	}

	if (MSVE.SELECT||MSVE.VALUE)
	{
		MSVE.tmpi[0]++;
	}

	if (MSVE.ENTER)
	{
		DCM_PORT.val = MSVE.tmpi[0];
		Set_Density_Correction(0);
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

 
void MENU_DCM_CFG_DAMP_FR(void)
{
	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(201,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 4, 1, 0, 0, &COR[0].damp_flow_rate, 0, 0);
	}
	else
		MSVE_Data_Input("", "Damp   ", 4, 1, 0, 0, &COR[0].damp_flow_rate, 0, 0);	
}

 
void MENU_DCM_CFG_DAMP_DENSITY(void)
{
	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(201,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 4, 1, 0, 0, &COR[0].damp_density, 0, 0);
	}
	else
		MSVE_Data_Input("", "Damp   ", 4, 1, 0, 0, &COR[0].damp_density, 0, 0);	
}

 
void MENU_DCM_CFG_CUTOFF(void)
{
	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (FC[0].flow_class.val==72)
	{
		if (RUSS)
		{
			Get_Russ_Line(343,OUT_STR,0);
			MSVE_Data_Input("", "Cutoff ", 6, 0, 0, 0, &COR[0].mfr_cutoff, 0, 0);
		}
		else
			MSVE_Data_Input("", OUT_STR, 6, 0, 0, 0, &COR[0].mfr_cutoff, 0, 0);	
	}
	else
	{
		if (RUSS)
		{
			Get_Russ_Line(343,OUT_STR,0);
			MSVE_Data_Input("", OUT_STR, 6, 0, 0, 0, &COR[0].vfr_cutoff, 0, 0);
		}
		else
			MSVE_Data_Input("", "Cutoff ", 6, 0, 0, 0, &COR[0].vfr_cutoff, 0, 0);	
	}
}

 
void MENU_DCM_ZERO(void)
{
	int i;

	if ((Density_Correction_Mode.val==0) || (Density_Correction_Mode.val==6))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		for(i=0;i<4;i++)
		{
			if (PORT[i].PRESENT) break;
		}

		if (i==4)
		{
			if (!MSVE.DIR) MSVE.PAGE++;
			else MSVE.PAGE--;
			return;
		}

		MSVE.FRESH = 0;
		sprintf(ENG_STR,"   Coriolis Zero");	
		Print_To_LCD(0, 265, ENG_STR, 2);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
	}

	MSVE.tmpi[0] = COR[0].Z.val & 0x01;

	switch(MSVE.tmpi[0])
	{
		case 1:		
			sprintf(ENG_STR,"   In Progress..."); 
			Print_To_LCD(3, 202, ENG_STR, 4);
			break;

		default:
		case 0:		
			sprintf(ENG_STR,"ENTER = START ZERO"); 
			Print_To_LCD(3, 203, ENG_STR, -1);
			break;
	}

	if (MSVE.ENTER && !MSVE.tmpi[0])
	{
		CORIOLIS_ZERO1();
	}
}

 
void MENU_Density_ADJ(void)
{
	if ((!FC[0].enable_DENSITY)||(!Density_Correction_Mode.val))
	{
		if (!MSVE.DIR) MSVE.PAGE++;
		else MSVE.PAGE--;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.tmpv.class = FC[0].density.class;
		MSVE.tmpv.unit = FC[0].density.unit;
		MSVE.tmpv.calc_unit = FC[0].density.unit;
		MSVE.tmpv.val = FC[0].density_adj;
		MSVE.tmpv.calc_val = FC[0].density_adj;
		sprintf (ENG_STR, "FC Density Adjust"); 
		Get_Russ_Line(204,MSVE.str[3],0);
		
	}
	
	if (RUSS)
	{
		Get_Russ_Line(205,OUT_STR,0);
		MSVE_Data_Input(MSVE.str[3],OUT_STR, 8, 4, 1, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(ENG_STR, "Adj", 8, 4, 1, 0, &MSVE.tmpv, 1, 1);	

	if (MSVE.ENTER)
	{
		FC[0].density_adj = MSVE.tmpv.val;
		Update_Flags_Goto_Next_Menu(1,0);
	}
}

 
 
 
 
void MENU_FC_PRESSURE_UNIT(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR," FC Pressure Unit");	
		Print_To_LCD(0, 206, ENG_STR, 4);
		MSVE.tmpi[4] = FC[n].pressure.class;
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	
		MSVE.tmpi[3] = FC[n].pressure.unit & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
	}
	if (MSVE.ENTER)
	{
		FC[n].pressure.unit = MSVE.tmpi[3];
		FC[n].pressure.calc_unit = MSVE.tmpi[3];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (MSVE.tmpi[4]!=0) MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (MSVE.tmpi[4]!=0) MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
}

 
void MENU_FC_TEMP_UNIT(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"FC Temperature Unit");	
		Print_To_LCD(0, 207, ENG_STR, 3);
		MSVE.tmpi[4] = FC[n].T.class;
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	
		MSVE.tmpi[3] = FC[n].T.unit & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
	}

	if (MSVE.ENTER)
	{
		FC[n].T.unit = MSVE.tmpi[3];
		FC[n].T.calc_unit = MSVE.tmpi[3];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (MSVE.tmpi[4]!=0) MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (MSVE.tmpi[4]!=0) MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
}

 
void MENU_FC_DENSITY_UNIT(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"  FC Density Unit");	
		Print_To_LCD(0, 208, ENG_STR, 4);
		MSVE.tmpi[4] = FC[n].density.class;
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	
		MSVE.tmpi[3] = FC[n].density.unit & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
	}

	if (MSVE.ENTER)
	{
		FC[n].density.unit = MSVE.tmpi[3];
		FC[n].density.calc_unit = MSVE.tmpi[3];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (MSVE.tmpi[4]!=0) MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (MSVE.tmpi[4]!=0) MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
}

 
void MENU_FC_ACCUM_UNIT(int n)
{
	int units[3];
	float r;

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"FC Accumulator Unit");	
		Print_To_LCD(0, 209, ENG_STR, -1);
		Breakout_Flow_Units(FC[n].flow_class.val, FC[n].flow_unit.val, units, &r);
		MSVE.tmpi[4] = units[2];
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	
		MSVE.tmpi[3] = FC[n].accum_unit.val & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
	}

	if (MSVE.ENTER)
	{
		FC[n].accum_unit.val = MSVE.tmpi[3];
		Set_FC_Units(0);
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (MSVE.tmpi[4]!=0) MSVE.tmpi[3] = Get_Next_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (MSVE.tmpi[4]!=0) MSVE.tmpi[3] = Get_Prev_Unit(MSVE.tmpi[4], MSVE.tmpi[3]);
	}
}

 
void MENU_FC_FLOW_UNIT(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"   FC Flow Unit");	
		Print_To_LCD(0, 210, ENG_STR, 5);
		MSVE.tmpi[4] = FC[n].flow_class.val;
		Get_Class(MSVE.tmpi[4], MSVE.str[3]);
		
		if (RUSS)
		{
			Get_Russ_Line(37,OUT_STR,0);
			sprintf(LCD_DISPLAY[1],"%s: %s", OUT_STR,MSVE.str[3]);
		}
		else
			sprintf(LCD_DISPLAY[1],"Class: %s", MSVE.str[3]);	
		
		MSVE.tmpi[3] = FC[n].flow_unit.val & 0xFF;
	}

	Get_Unit(MSVE.tmpi[4], MSVE.tmpi[3], MSVE.str[3]);

	if (RUSS)
	{
		Get_Russ_Line(254,OUT_STR,0);
		sprintf(LCD_DISPLAY[2],"%s    : %d", OUT_STR, MSVE.tmpi[3]);
		
		Get_Russ_Line(38,OUT_STR,0);
		sprintf(LCD_DISPLAY[3],"%s %s", OUT_STR, MSVE.str[3]);
	}
	else
	{
		sprintf(LCD_DISPLAY[2],"Code : %d", MSVE.tmpi[3]);	
		sprintf(LCD_DISPLAY[3],"Unit %s", MSVE.str[3]);	
	}

	if (MSVE.ENTER)
	{
		FC[n].flow_unit.val = MSVE.tmpi[3];
		Set_FC_Units(0);
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
	else
	if (MSVE.SELECT)
	{
		if (FC[n].flow_class.val!=0) MSVE.tmpi[3] = Get_Next_Unit(FC[n].flow_class.val, MSVE.tmpi[3]);
	}
	else
	if (MSVE.VALUE)
	{
		if (FC[n].flow_class.val!=0) MSVE.tmpi[3] = Get_Prev_Unit(FC[n].flow_class.val, MSVE.tmpi[3]);
	}
}

 
void MENU_FC_FLOW_CLASS(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"   FC Flow Class");	
		Print_To_LCD(0, 266, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if	(FC[n].flow_class.val!=66)
		{
			MSVE.tmpi[1] = 1;
			FC[n].flow_class.val = 72;
		}
		else
		{
			MSVE.tmpi[1] = 0;
			FC[n].flow_class.val = 66;
		}
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"     Mass Flow");	
			Print_To_LCD(3, 212, ENG_STR, 2);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"  Volumetric Flow");	
			Print_To_LCD(3, 213, ENG_STR, 2);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		if (MSVE.tmpi[1])
		{
			FC[n].flow_class.val = 72;
		}
		else
		{
			FC[n].flow_class.val = 66;
		}
		Set_FC_Units(0);
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_EMUL_DENSITY(int n)
{
	if (!FC[n].MAN_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(214,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density, 0, 1);
	}
	else
		MSVE_Data_Input("", "Emul.  ", 7, 3, 0, 0, &FC[n].density, 0, 1); 

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_SALINITY(int n)
{
	if (FC[n].USE_PDI_SALINITY && !FC[n].MAN_SALINITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(33,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].salinity, 0, 1);
	}
	else
		MSVE_Data_Input("", "Salt   ", 7, 3, 0, 0, &FC[n].salinity, 0, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_WATERCUT(int n)
{
	if (USE_PDI_WATERCUT.val && !FC[n].MAN_WATERCUT)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(215,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].watercut, 0, 1); 
	}
	else
		MSVE_Data_Input("", "WC     ", 7, 3, 0, 0, &FC[n].watercut, 0, 1); 

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_PRESSURE(int n)
{
	if (!FC[n].MAN_PRESSURE)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(216,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].pressure, 0, 1); 
	}
	else
		MSVE_Data_Input("", "Press  ", 7, 3, 0, 0, &FC[n].pressure, 0, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_TEMP(int n)
{
	if (FC[n].USE_PDI_TEMP && !FC[n].MAN_TEMP)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(217,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].T, 0, 1);
	}
	else
		MSVE_Data_Input("", "Temp   ", 7, 3, 0, 0, &FC[n].T, 0, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_FLOW(int n)
{
	if (FC[n].enable_PULSE || !FC[n].MAN_FLOW)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(218,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].FLOW_TOTAL, 0, 1);
	}
	else
		MSVE_Data_Input("", "Flow   ", 7, 3, 0, 0, &FC[n].FLOW_TOTAL, 0, 1);	
	
 

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_WATER_DENSITY_PT(int n)
{
	if (!FC[n].enable_NET && !FC[n].MAN_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (RUSS)
	{
		Get_Russ_Line(219,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density_water, 0, 1);
	}
	else	
		MSVE_Data_Input("", "WaterPT", 7, 3, 0, 0, &FC[n].density_water, 0, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_WATER_DENSITY_ST(int n)
{
	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(220,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density_waterST, 0, 1);
	}
	else
		MSVE_Data_Input("", "WaterST", 7, 3, 0, 0, &FC[n].density_waterST, 0, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_OIL_DENSITY_PT(int n)
{
	if (!FC[n].enable_NET && !FC[n].MAN_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(221,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density_oil, 0, 1);
	}
	else
		MSVE_Data_Input("", "OilPT  ", 7, 3, 0, 0, &FC[n].density_oil, 0, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_OIL_DENSITY_ST(int n)
{
	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(222,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 3, 0, 0, &FC[n].density_oilST, 0, 1);
	}
	else
		MSVE_Data_Input("", "OilST  ", 7, 3, 0, 0, &FC[n].density_oilST, 0, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_SHRINKAGE(int n)
{
	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}
	
	if (RUSS)
	{
		Get_Russ_Line(223,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 5, 0, 0, &FC[n].Shrinkage, 1, 1);
	}
	else
		MSVE_Data_Input("", "SHRNK  ", 7, 5, 0, 0, &FC[n].Shrinkage, 1, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_METER_FACTOR(int n)
{
	if (!FC[n].enable_NET)
	{
		MSVE.tmpi[0]++;
		return;
	}
	if (RUSS)
	{
		Get_Russ_Line(224,OUT_STR,0);
		MSVE_Data_Input("", OUT_STR, 7, 5, 0, 0, &FC[0].Meter_Factor, 1, 1);	
	}
	else
		MSVE_Data_Input("", "M.F.", 7, 5, 0, 0, &FC[0].Meter_Factor, 1, 1);	

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_ENABLE_NET(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"   FC Net Enable");	
		Print_To_LCD(0, 225, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_NET) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_NET = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_ENABLE_DENSITY(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR," FC Density Enable");	
		Print_To_LCD(0, 226, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_DENSITY) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_DENSITY = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_ENABLE_PULSE(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"  FC Pulse Enable");	
		Print_To_LCD(0, 227, ENG_STR, 5);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_PULSE) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_PULSE = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_ENABLE_GROSS(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"  FC Gross Enable");	
		Print_To_LCD(0, 228, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_GROSS) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_GROSS = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_ENABLE_FLOW(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"  FC Flow Enable");	
		Print_To_LCD(0, 229, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].enable_FLOW) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"         ON");		
			Print_To_LCD(3, 137, ENG_STR, 8);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"        Off");		
			Print_To_LCD(3, 138, ENG_STR, 7);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].enable_FLOW = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_USE_PDI_TEMP(int n)
{
	if (FC[n].MAN_TEMP)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR," FC Use PDI Temp.?");	
		Print_To_LCD(0, 230, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].USE_PDI_TEMP) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].USE_PDI_TEMP = MSVE.tmpi[1];
		if (FC[n].USE_PDI_TEMP) FC[n].MAN_TEMP = 0;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_USE_PDI_SALINITY(int n)
{
	if (FC[n].MAN_SALINITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR," FC Use PDI Salt?");	
		Print_To_LCD(0, 231, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].USE_PDI_SALINITY) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].USE_PDI_SALINITY = MSVE.tmpi[1];
		if (FC[n].USE_PDI_SALINITY) FC[n].MAN_SALINITY = 0;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_USE_PDI_WATERCUT(int n)
{
	if (FC[n].MAN_WATERCUT)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR," FC Use PDI WCut?");	
		Print_To_LCD(0, 232, ENG_STR, 2);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (USE_PDI_WATERCUT.val) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		USE_PDI_WATERCUT.val = MSVE.tmpi[1];
		if (USE_PDI_WATERCUT.val) FC[n].MAN_WATERCUT = 0;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_API_TABLE(int n)
{
	if ((!FC[n].enable_NET) && (!FC[n].enable_DENSITY))
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"   FC API Table");	
		Print_To_LCD(0, 233, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		MSVE.tmpi[1] = FC[n].API_TABLE>>8;
	}

	switch(MSVE.tmpi[1])
	{
		case 'B':		
			sprintf(ENG_STR,"B: General Products");		
			Print_To_LCD(3, 234, ENG_STR, -1);			
			break;
		case 'C':		
			sprintf(ENG_STR,"C: Special");	
			Print_To_LCD(3, 235, ENG_STR, -1);				
			break;
		case 'D':		
			sprintf(ENG_STR,"D: General Lubricant");	
			Print_To_LCD(3, 236, ENG_STR, -1);				
			break;

		default:		
			MSVE.tmpi[1]='A';
		case 'A':		
			sprintf(ENG_STR,"A: General Crude");	
			Print_To_LCD(3, 237, ENG_STR, -1);				
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1]++;
		if (MSVE.tmpi[1]>'D') MSVE.tmpi[1] = 'A';
	}

	if (MSVE.ENTER)
	{
		FC[n].API_TABLE = MSVE.tmpi[1]<<8;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_DENSITY_ADJ(int n)
{
	if (!FC[n].enable_DENSITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.tmpv.class = FC[0].density.class;
		MSVE.tmpv.unit = FC[0].density.unit;
		MSVE.tmpv.calc_unit = FC[0].density.unit;
		MSVE.tmpv.val = FC[0].density_adj;
		MSVE.tmpv.calc_val = FC[0].density_adj;
		if (RUSS)
		{
			Get_Russ_Line(238,OUT_STR,0);
			sprintf(MSVE.str[3], "%s",OUT_STR);
		}
		else
			sprintf(MSVE.str[3], "FC Density Adjust");	
	}

	if (RUSS)
	{
		Get_Russ_Line(205,OUT_STR,0);
		MSVE_Data_Input(MSVE.str[3],OUT_STR, 8, 4, 1, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "Adj", 8, 4, 1, 0, &MSVE.tmpv, 1, 1);	
	
	if (MSVE.ENTER)
	{
		FC[n].density_adj = MSVE.tmpv.val;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_API_C_ALPHA(int n)
{
	if ((FC[n].API_TABLE>>8 != 'C') || !((FC[n].enable_NET) || (FC[n].enable_DENSITY)))
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.tmpv.class = 251;
		MSVE.tmpv.unit = 251;
		MSVE.tmpv.calc_unit = 251;
		MSVE.tmpv.val = FC[n].a;
		MSVE.tmpv.calc_val = FC[n].a;
		if (RUSS)
		{
			Get_Russ_Line(239,OUT_STR,0);
			sprintf(MSVE.str[3], "%s",OUT_STR);
		}
		else
			sprintf (MSVE.str[3], "FC API Curve C");	
	}

	if (RUSS)
	{
		Get_Russ_Line(240,OUT_STR,0);
		MSVE_Data_Input(MSVE.str[3], OUT_STR, 13, 1, 1, 1, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "alpha", 13, 1, 1, 1, &MSVE.tmpv, 1, 1);	

	if (MSVE.ENTER)
	{
		FC[n].a = MSVE.tmpv.val;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_MAN_FLOW(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"  FC Manual Flow?");	
		Print_To_LCD(0, 241, ENG_STR, 2);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_FLOW) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	
			MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_FLOW = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_MAN_TEMP(int n)
{
	if (FC[n].USE_PDI_TEMP)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR," FC Manual Temp.?");	
		Print_To_LCD(0, 242, ENG_STR, 3);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_TEMP) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_TEMP = MSVE.tmpi[1];
		if (FC[n].MAN_TEMP) FC[n].USE_PDI_TEMP = 0;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_MAN_WATERCUT(int n)
{
	if (USE_PDI_WATERCUT.val)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"FC Manual Process?");	
		Print_To_LCD(0, 243, ENG_STR, 4);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_WATERCUT) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_WATERCUT = MSVE.tmpi[1];
		if (FC[n].MAN_WATERCUT) USE_PDI_WATERCUT.val = 0;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_MAN_PRESSURE(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"FC Manual Pressure?");	
		Print_To_LCD(0, 244, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_PRESSURE) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_PRESSURE = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_MAN_DENSITY(int n)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR," FC Manual Density?");	
		Print_To_LCD(0, 245, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_DENSITY) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_DENSITY = MSVE.tmpi[1];
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_MAN_SALINITY(int n)
{
	if (FC[n].USE_PDI_SALINITY)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"  FC Manual Salt?");	
		Print_To_LCD(0, 246, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1],"");
		sprintf(LCD_DISPLAY[2],"");
		if (FC[n].MAN_SALINITY) MSVE.tmpi[1] = 1;
		else MSVE.tmpi[1] = 0;
	}

	switch(MSVE.tmpi[1])
	{
		case 1:		
			sprintf(ENG_STR,"        YES");	
			Print_To_LCD(3, 10, ENG_STR, 9);
			break;
		default:	MSVE.tmpi[1]=0;
		case 0:		
			sprintf(ENG_STR,"         NO"); 	
			Print_To_LCD(3, 11, ENG_STR, 8);
			break;
	}

	if (MSVE.VALUE || MSVE.SELECT)
	{
		MSVE.tmpi[1] ^= 0x01;
	}

	if (MSVE.ENTER)
	{
		FC[n].MAN_SALINITY = MSVE.tmpi[1];
		if (FC[n].MAN_SALINITY) FC[n].USE_PDI_SALINITY = 0;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FC_PULSES_PER_VOL_UNIT(int n)
{
	if (!FC[n].enable_PULSE)
	{
		MSVE.tmpi[0]++;
		return;
	}

	if (MSVE.FRESH)
	{
		MSVE.tmpv.class = 251;
		MSVE.tmpv.unit = 251;
		MSVE.tmpv.calc_unit = 251;
		MSVE.tmpv.val = FC[n].PULSES_PER_ACCUM_UNIT;
		MSVE.tmpv.calc_val = FC[n].PULSES_PER_ACCUM_UNIT;
		Get_Unit(FC[n].PULSE_TOTAL.class, FC[n].PULSE_TOTAL.unit, MSVE.str[2]);
		MSVE.tmpv.bound_hi_set = 15000;
		MSVE.tmpv.bound_lo_set = 0;
		if (RUSS)
		{
			Get_Russ_Line(247,OUT_STR,0);
			sprintf (MSVE.str[3], "%s/%s",OUT_STR,MSVE.str[2]);
		}
		else
			sprintf (MSVE.str[3], "FC #Pulses/%s",MSVE.str[2]);	
	}

	if (RUSS)
	{
		Get_Russ_Line(267,OUT_STR,0);
		MSVE_Data_Input(MSVE.str[3], "%s", 5, 0, 0, 0, &MSVE.tmpv, 1, 1);
	}
	else
		MSVE_Data_Input(MSVE.str[3], "#Pulses", 5, 0, 0, 0, &MSVE.tmpv, 1, 1);	

	if (MSVE.ENTER)
	{
		FC[n].PULSES_PER_ACCUM_UNIT = MSVE.tmpv.val;
		Update_Flags_Goto_Next_Menu(1,1);
	}

	if (MSVE.MENU || MSVE.ENTER)
	{
		MSVE.MENU = 0;
		MSVE.ENTER = 0;
		MSVE.tmpi[0]++;
		MSVE.tmpi[8] = 1;
	}
}

 
void MENU_FLOW_COMPUTER(void)
{
	if (MSVE.FRESH)
	{
		MSVE.FRESH = 0;
		sprintf(ENG_STR,"Config Flow Computer");	
		Print_To_LCD(0, 248, ENG_STR, 1);
		sprintf(LCD_DISPLAY[1]," ");
		
		sprintf(ENG_STR,"ENTER  = GOTO CONFIG");	
		Print_To_LCD(2, 91, ENG_STR, -1);
		
		MSVE.tmpi[0] = 0;
		MSVE.tmpi[9] = 0;
		MSVE.tmpi[8] = 0;
	}

	if (MSVE.tmpi[8])
	{ 
		MSVE.tmpi[8] = 0;
		MSVE.FRESH = 1;
		MSVE.CURSOR_ENABLED = 0;
	}

	switch(MSVE.tmpi[0])
	{
		case 1:
		{
			
			MENU_FC_ENABLE_FLOW(0);
			if (MSVE.tmpi[0]==1)break;
		}

		case 2:
		{
			
			MENU_FC_ENABLE_GROSS(0);
			if (MSVE.tmpi[0]==2)break;
		}

		case 3:
		{
			
			MENU_FC_ENABLE_PULSE(0);
			if (MSVE.tmpi[0]==3)break;
		}

		case 4:
		{
			
			MENU_FC_ENABLE_DENSITY(0);
			if (MSVE.tmpi[0]==4)break;
		}

		case 5:
		{
			
			MENU_FC_ENABLE_NET(0);
			if (MSVE.tmpi[0]==5)break;
		}

		case 6:
		{
			
			MENU_FC_FLOW_CLASS(0);	
			if (MSVE.tmpi[0]==6)break;
		}

		case 7:
		{
			
			MENU_FC_FLOW_UNIT(0);	
			if (MSVE.tmpi[0]==7)break;
		}

		case 8:
		{
			
			MENU_FC_ACCUM_UNIT(0);	
			if (MSVE.tmpi[0]==8)break;
		}

		case 9:
		{
			
			MENU_FC_PULSES_PER_VOL_UNIT(0);
			if (MSVE.tmpi[0]==9)break;
		}

		case 10:
		{
			
			MENU_FC_TEMP_UNIT(0);
			if (MSVE.tmpi[0]==10)break;
		}

		case 11:
		{
			
			MENU_FC_DENSITY_UNIT(0);
			if (MSVE.tmpi[0]==11)break;
		}

		case 12:
		{
			
			MENU_FC_PRESSURE_UNIT(0);
			if (MSVE.tmpi[0]==12)break;
		}

		case 13:
		{
			
			MENU_FC_MAN_WATERCUT(0);
			if (MSVE.tmpi[0]==13)break;
		}

		case 14:
		{
			
			MENU_FC_MAN_TEMP(0);
			if (MSVE.tmpi[0]==14)break;
		}

		case 15:
		{
			
			MENU_FC_MAN_SALINITY(0);
			if (MSVE.tmpi[0]==15)break;
		}

		case 16:
		{
			
			MENU_FC_MAN_DENSITY(0);
			if (MSVE.tmpi[0]==16)break;
		}

		case 17:
		{
			
			MENU_FC_MAN_PRESSURE(0);
			if (MSVE.tmpi[0]==17)break;
		}

		case 18:
		{
			
			MENU_FC_MAN_FLOW(0);
			if (MSVE.tmpi[0]==18)break;
		}

		case 19:
		{
			
			MENU_FC_USE_PDI_WATERCUT(0);
			if (MSVE.tmpi[0]==19)break;
		}

		case 20:
		{
			
			MENU_FC_USE_PDI_TEMP(0);
			if (MSVE.tmpi[0]==20)break;
		}

		case 21:
		{
			
			MENU_FC_USE_PDI_SALINITY(0);
			if (MSVE.tmpi[0]==21)break;
		}

		case 22:
		{
			
			MENU_FC_API_TABLE(0);
			if (MSVE.tmpi[0]==22)break;
		}

		case 23:
		{
			
			MENU_FC_API_C_ALPHA(0);
			if (MSVE.tmpi[0]==23)break;
		}

		case 24:
		{
			
			MENU_FC_METER_FACTOR(0);
			if (MSVE.tmpi[0]==24)break;
		}

		case 25:
		{
			
			MENU_FC_SHRINKAGE(0);
			if (MSVE.tmpi[0]==25)break;
		}

		case 26:
		{
			
			MENU_FC_OIL_DENSITY_ST(0);
			if (MSVE.tmpi[0]==26)break;
		}

		case 27:
		{
			
			MENU_FC_WATER_DENSITY_ST(0);
			if (MSVE.tmpi[0]==27)break;
		}

		case 28:
		{
			
			MENU_FC_FLOW(0);
			if (MSVE.tmpi[0]==28)break;
		}

		case 29:
		{
			
			MENU_FC_WATERCUT(0);
			if (MSVE.tmpi[0]==29)break;
		}

		case 30:
		{
			
			MENU_FC_PRESSURE(0);
			if (MSVE.tmpi[0]==30)break;
		}

		case 31:
		{
			
			MENU_FC_TEMP(0);
			if (MSVE.tmpi[0]==31)break;
		}

		case 32:
		{
			
			MENU_FC_SALINITY(0);
			if (MSVE.tmpi[0]==32)break;
		}

		case 33:
		{
			
			MENU_FC_EMUL_DENSITY(0);
			if (MSVE.tmpi[0]==33)break;
		}

		case 34:
		{
			
			MENU_FC_OIL_DENSITY_PT(0);
			if (MSVE.tmpi[0]==34)break;
		}

		case 35:
		{
			
			MENU_FC_WATER_DENSITY_PT(0);
			if (MSVE.tmpi[0]==35)break;
		}

		case 36:
		{
			
			MENU_FC_DENSITY_ADJ(0);
			if (MSVE.tmpi[0]==36)break;
		}

		case 0:
		{ 
			MSVE.MENU_TRAP = 0;       
			
			if (MSVE.ENTER)
			{
				MSVE.MENU = 0;
				MSVE.ENTER = 0;
				MSVE.MENU_TRAP = 1;
				MSVE.tmpi[0]++;
				MSVE.tmpi[8] = 1;
			}
           
            sprintf(LCD_DISPLAY[3]," "); 
			
			break;
		}

		default:
		{
			MSVE.FRESH = 1;
			break;
		}
	}
}



#line 9635
int Get_Russ_Line(int str_num, char out_str[], int return_mode)
{	
	int i;
	long int l_code_val;
	unsigned char code_val;
	char code[64];
	char c[3];
	
	
	if ( (str_num < 0) || (str_num > RUSS_TBL_LEN) )
		return -1;
		
	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	sprintf(out_str,"                    "); 
	sprintf(code,"%s", RUSS_MENU_TBL[str_num]); 
	c[2] = 0;
	
	for(i=0;i<40;i=i+2) 
	{
		c[0] = code[i];
		if (c[0] == 0) 
			break;
		
		c[1] = code[i+1];
		if (c[1] == 0) 
			break;
		
		l_code_val = strtol(c,0,16); 
		
		if (l_code_val > 0xFF) 
			break;
		code_val = (unsigned char)l_code_val; 
		
		out_str[i/2] = code_val; 
	}
	

	if (return_mode == 1)
		out_str[20] == 0;  
	else
		out_str[i/2] = 0; 
	
	{asm("	pop		ST			");};
	return 0;
}


#line 9691
int Print_To_LCD( int lcd_line, int str_num, char text_line[], int whitespace)
{
	int i, len_out_str;
	char spaces[20];
	char prefix_s[50];
	
	if(lcd_line < 0)
		lcd_line = 0;
	else if (lcd_line > 3)
		lcd_line = 3;
	

	strcpy(LCD_DISPLAY[lcd_line],text_line);
#line 9745
	return 0;
}

int Find_Russ_Tbl_Len(void)
{
	int i;
	i = 0;
	while ( RUSS_MENU_TBL[i][0] != 0 )
	{
		if (i > 999) 
			return -1;
		i++;
	}
	return --i;
}

void MENU_USB_LOGGING(int n)
{ 
	
	
	
	
	
	
	if (MSVE.FRESH)
	{ 
		MSVE.FRESH = 0;
		MSVE.tmpi[1] = 0;
		MSVE.tmpi[2] = 1;
		MSVE.tmpi[3] = 0;
		MSVE.tmpi[4] = 0;
		
		
		MSVE.tmpi[0] = BEGIN_ALFAT_LOGGING.val; 
		sprintf(LCD_DISPLAY[1],"--------------------");
		sprintf(LCD_DISPLAY[2],"                    ");
		sprintf(LCD_DISPLAY[3],"                    ");
	}
	
	if (MSVE.tmpi[1])
	{
		sprintf(LCD_DISPLAY[1],"   ENTER = Confirm  ");
		MSVE.tmpi[1] = 0;
	}
	
	if ((MSVE.tmpi[0] == 1) && (MSVE.tmpi[2] == 1))
		sprintf(LCD_DISPLAY[0],"   USB Logging:   ON");
	else if (MSVE.tmpi[2] == 1)
		sprintf(LCD_DISPLAY[0],"   USB Logging:  OFF");
	
	MSVE.tmpi[2] = 0; 
	
	
	if ( (MSVE.tmpi[3] != ALFAT_USB_DETECTED.val) || (MSVE.tmpi[4] != ALFAT_USB_MOUNTED.val) )
		MSVE.tmpi[2] = 1;
 
	
	MSVE.tmpi[3] = ALFAT_USB_DETECTED.val;
	MSVE.tmpi[4] = ALFAT_USB_MOUNTED.val;
	
	
	if ((BEGIN_ALFAT_LOGGING.val) && (MSVE.tmpi[2] == 1))
	{
		if (ALFAT_USB_DETECTED.val)
			sprintf(LCD_DISPLAY[2],"Media Detected?: YES");
		else
			sprintf(LCD_DISPLAY[2],"Media Detected?:  NO");
		
		if (ALFAT_USB_MOUNTED.val)
			sprintf(LCD_DISPLAY[3],"Media Mounted?:  YES");
		else
			sprintf(LCD_DISPLAY[3],"Media Mounted?:   NO");
		
	}

	if ((MSVE.SELECT) || (MSVE.VALUE))
	{ 
		
		
		if (MSVE.tmpi[0] == 1)
			MSVE.tmpi[0] = 0;
		else
			MSVE.tmpi[0] = 1;
		
		MSVE.tmpi[1] = 1;	
		MSVE.tmpi[2] = 1;
	}

	
	if ( (MSVE.ENTER) && (BEGIN_ALFAT_LOGGING.val != MSVE.tmpi[0]) )
	{

		
		BEGIN_ALFAT_LOGGING.val = MSVE.tmpi[0]; 
		
		
		Begin_Alfat_Logging(&BEGIN_ALFAT_LOGGING);
		
		MSVE.tmpi[0] = BEGIN_ALFAT_LOGGING.val;	
		MSVE.tmpi[1] = 0;	
		MSVE.tmpi[2] = 1;	
		MSVE.tmpi[3] = 0;	
		MSVE.tmpi[4] = 0;	

		
		sprintf(LCD_DISPLAY[1],"--------------------");	
		
		
		if (BEGIN_ALFAT_LOGGING.val) 
		{
			sprintf(LCD_DISPLAY[2],"Media Detected?:  NO");
			sprintf(LCD_DISPLAY[3],"Media Mounted?:   NO");
		}
		else 
		{
			sprintf(LCD_DISPLAY[2],"                    ");
			sprintf(LCD_DISPLAY[3],"                    ");			
		}
		
		Update_Flags_Goto_Next_Menu(1,1);
	}
}

void MENU_LOGGING_PERIOD(int n)
{ 

	if (MSVE.FRESH)
	{ 
		MSVE.tmpv.class			= 252;
		MSVE.tmpv.unit 			= 252;
		MSVE.tmpv.calc_unit 	= 252;
		MSVE.tmpv.val 			= REG_ALFAT_LOG_PERIOD.val;
		MSVE.tmpv.calc_val 		= REG_ALFAT_LOG_PERIOD.calc_val;
		MSVE.tmpv.bound_hi_set 	= REG_ALFAT_LOG_PERIOD.bound_hi_set;
		MSVE.tmpv.bound_lo_set 	= REG_ALFAT_LOG_PERIOD.bound_lo_set;
		
		sprintf (MSVE.str[3], " Change Log Period  ");	
	}
	
	MSVE_Data_Input(MSVE.str[3], "Period (s)", 6, 0, 0, 0, &MSVE.tmpv, 1, 1);	

	if (MSVE.ENTER)
	{ 
		VAR_Update(&REG_ALFAT_LOG_PERIOD, MSVE.tmpv.val,0,0);		
		Update_Flags_Goto_Next_Menu(1,0);
	}
}









