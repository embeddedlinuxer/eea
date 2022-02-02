#line 123 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\GLBLS.H"
extern const char* copyright;
extern const char* credit;
#line 8 "Y:\workspace_eea\V615\INCLUDE\stdarg.h"
typedef char *va_list;

#line 15 "Y:\workspace_eea\V615\INCLUDE\format.h"
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
 
 
 
 

#line 14 "Y:\workspace_eea\V615\INCLUDE\string.h"
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

#line 16 "Y:\workspace_eea\V615\INCLUDE\stdio.h"
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
#line 24 "Y:\workspace_eea\V615\INCLUDE\stdlib.h"
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
#line 19 "Y:\workspace_eea\V615\INCLUDE\math.h"
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

#line 14 "Y:\workspace_eea\V615\INCLUDE\time.h"
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

#line 30 "Y:\workspace_eea\V615\INCLUDE\ETC.H"
typedef unsigned int BOOL;

#line 32 "Y:\workspace_eea\V615\INCLUDE\LIST.H"
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

#line 59 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\VARIABLE.H"
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

#line 36 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\BUFFER.H"
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

#line 445 "Y:\workspace_eea\V615\INCLUDE\UNITS.H"
extern const float* MASTER_UNITS;
#line 34 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\TIMER.H"
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

#line 80 "Y:\workspace_eea\V615\INCLUDE\I2C.H"
#pragma CODE_SECTION(I2C_TX_BYTE,"internal_RAM")
#pragma CODE_SECTION(I2C_RX_BYTE,"internal_RAM")
#pragma CODE_SECTION(Write_I2C,"internal_RAM")
#pragma CODE_SECTION(Read_I2C,"internal_RAM")
#pragma CODE_SECTION(RTC_setup,"initialization")
#pragma CODE_SECTION(Read_MC24C02_Record,"internal_RAM")
#pragma CODE_SECTION(Write_MC24C02_Record,"internal_RAM")



 void I2C_RX_BYTE(unsigned char* b, BOOL ack);
 BOOL I2C_TX_BYTE(unsigned char b);
 BOOL Read_I2C(int addr, int n, unsigned char* p);
 BOOL Write_I2C(int addr, int n, unsigned char* p);
 BOOL RTC_setup(void);
 BOOL Read_DS1340(int addr, int n, unsigned char* p);
 BOOL Write_DS1340(int addr, int n, unsigned char* p);
 BOOL Read_MC24C02_Record(int addr, unsigned char* p);
 BOOL Write_MC24C02_Record(int addr, unsigned char* p);


 BOOL RTC_PRESENT;
 unsigned char RTC[10];

 
 
 
 
 
 
 

 
 
 
 
 

#line 128
 void I2C_RX_BYTE_5(unsigned char* b, BOOL ack);
 BOOL I2C_TX_BYTE_5(unsigned char b);
 BOOL Read_I2C_5(int addr, int n, unsigned char* p);
 BOOL Write_I2C_5(int addr, int n, unsigned char* p);
 void LCD_STR(char* s, int line);
 void LCD_CMD(int d);
 void LCD_CHAR(int d);
 void LCD_PAGE(void);


 unsigned char LCD_DIPSW;
 unsigned char LCD[2];
 char LCD_DISPLAY[4][101];			 
 int MB_LCD_DISPLAY[4*10];			 
 BOOL LCD_PRESENT;
 BOOL LCD_INIT(void);
 unsigned int  LCD_CNT;

 
 
 
 
#line 30 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\ERRORS.H"
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

 
#line 45 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\SERIAL.H"
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

#line 55 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\ADC.H"
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

#line 35 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\DAC.H"
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

#line 33 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\EXECUTE.H"
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

#line 44 "Y:\workspace_eea\V615\INCLUDE\FLASH.H"
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

#line 71 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\LOG.H"
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

#line 33 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\DEMO.H"
extern void DEMO_Init(VAR* v);

#line 46 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\SELFTEST.H"
extern void Set_Diag_Status(void);
extern void Self_Test1(void);
extern void Self_Test2(void);
extern void Self_Test3(void);
extern void Self_Test4(void);
extern void Self_Test5(void);
extern void Self_Test_FULL(void);
extern void Clear_Diagnostics(void);

#line 32 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\MENU.H"
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

#line 23 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\FLOAT1.H"
extern unsigned int TOIEEE(float v);
extern float FMIEEE(unsigned int v);

#line 170 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\GLBLS.H"
extern unsigned int CLOCK;
extern BOOL LED_GREEN;
extern BOOL OSWITCH;
extern void c_int00(void);

#line 214
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



 
#line 644
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




 
#line 833
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
 
#line 1017
#pragma DATA_SECTION(GAS_ENTRAINED_DENS_DETECT,"CFG")
extern COIL GAS_ENTRAINED_DENS_DETECT;   
 
#line 1033
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




#line 1068
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

#line 1402
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


		 
#line 1598
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

#line 1700
extern void Setup_Basics(void);

#line 44 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\HART.H"
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
#line 31 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\MODBUSRTU.H"
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

#line 36 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\MISC.H"
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

#line 29 "Y:\workspace_eea\V615\APP\SOURCE\INCLUDE\API.H"
extern void API_VCF(FLOW_COMP* f, float* VCFw, float* VCFo);
extern double API_15C_PT(const int fcidx, const double r, int* k_set);
extern double API_60F_PT(const int fcidx, const double r, int* k_set);
extern double API_PT_ST(const int fcidx, const double r, const BOOL F60, const BOOL RET_VCF);
extern double API_to_kgm3(const double r);
extern double kgm3_to_API(const double r);
extern void API_STATUS(const int fcidx, const BOOL type);

#line 37 "i2c.c"
BOOL I2C_TX_BYTE(unsigned char b)
{
	int i;				 
	unsigned char dat;	 
	BOOL ack;			 

	dat = b;

	for (i=0;i<8;i++)
	{
		if (dat&0x80)
		{ 
			{*((volatile char*) 0x0900002) |= 0x01;};
		}
		else
		{
			{*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);};
		}

		{{*((volatile char*) 0x0900002) |= 0x04;}; {asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
		dat = dat<<1;
	}

	{*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);};
	{*((volatile char*) 0x0900002) |= 0x01;};
	{asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
	{*((volatile char*) 0x0900002) |= 0x04;};
	{asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
	
	if ((*((volatile char*) 0x0900002) & 0x10)) 
		ack = 0;
	else 
		ack	= 1;
	
	{*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);};
	{asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
	{*((volatile char*) 0x0900002) |= 0x02;};

	return ack;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
void I2C_RX_BYTE(unsigned char* b, BOOL ack)
{
	int i;				 
	unsigned char dat;	 

	dat = 0;
	{*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);};
	
	for (i=0;i<8;i++)
	{
		{*((volatile char*) 0x0900002) |= 0x04;};
		{asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};

		if ((*((volatile char*) 0x0900002) & 0x10))	
			dat |= 0x01;

		{*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);};
		{asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};
		dat = dat<<1;
	}

	dat = dat>>1;
	{*((volatile char*) 0x0900002) |= 0x02;};
	
	if (ack)
	{
		{*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);};
	}
	else
	{
		{*((volatile char*) 0x0900002) |= 0x01;};
	}
	
	{{*((volatile char*) 0x0900002) |= 0x04;}; {asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		25,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
	b[0] = dat;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
BOOL Write_I2C(int addr, int n, unsigned char* p)
{
	int i;				 
	unsigned char dat;	 
	BOOL ack;			 
	BOOL r;				 

	r = 1;
	{{*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) |= 0x08;}; {*((volatile char*) 0x0900002) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	while(1)
	{
		dat = addr;						 
		ack = I2C_TX_BYTE(dat);

		if (!ack)
		{ 
			r = 0;
			break;
		}

		ack = I2C_TX_BYTE(n);			 

		if (!ack)
		{ 
			r = 0;
			break;
		}

		for (i=0;i<n;i++)
		{
			ack = I2C_TX_BYTE(p[i]);	 

			if (!ack)
			{ 
				r = 0;
				break;
			}
		}

		break;
	}

	{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	return r;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
BOOL Read_I2C(int addr, int n, unsigned char* p)
{
	int i,j;			 
	unsigned char dat;	 
	BOOL ack;			 
	BOOL r;				 

	r = 1;
	{{*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) |= 0x08;}; {*((volatile char*) 0x0900002) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	while(1)
	{
		dat = addr | 0x01;				 
		ack = I2C_TX_BYTE(dat);
		
		if (!ack)
		{ 
			r = 0;
			break;
		}

		ack = I2C_TX_BYTE(n);			 
		
		if (!ack)
		{ 
			r = 0;
			break;
		}

		for (i=0;i<(n-1);i++)
			I2C_RX_BYTE(&p[i],1);		 
	
		I2C_RX_BYTE(&p[n-1],0);			 

		break;
	}

	{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	return r;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
BOOL Write_DS1340(int addr, int n, unsigned char* p)
{
	int i;				 
	unsigned char dat;	 
	BOOL ack;			 
	BOOL r;				 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	r = 1;
	{{*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) |= 0x08;}; {*((volatile char*) 0x0900002) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	while(1)
	{
		dat = 0xD0;						 
		ack = I2C_TX_BYTE(dat);

		if (!ack)
		{ 
			r = 0;
			break;
		}

		ack = I2C_TX_BYTE(addr);			 

		if (!ack)
		{ 
			r = 0;
			break;
		}

		for (i=0;i<n;i++)
		{
			ack = I2C_TX_BYTE(p[i]);		 
			
			if (!ack)
			{ 
				r = 0;
				break;
			}
		}

		break;
	}

	{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	{asm("	pop		ST			");};
	return r;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
BOOL Read_DS1340(int addr, int n, unsigned char* p)
{
	int i,j;			 
	unsigned char dat;	 
	BOOL ack;			 
	BOOL r;				 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	r = 1;

	if (!Write_DS1340(addr, 0, p))
	{ 
		{asm("	pop		ST			");};
		return 0;
	}

	{{*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) |= 0x08;}; {*((volatile char*) 0x0900002) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};

	while(1)
	{ 
		dat = 0xD0 | 0x01;				 
		ack = I2C_TX_BYTE(dat);
		
		if (!ack)
		{ 
			r = 0;
			break;
		}

		ack = 1;
		
		for (i=0;i<n;i++)
		{
			if (i==(n-1))				  
				ack = 0;
			
			I2C_RX_BYTE(&p[i],ack);		 
		}

		break;
	}

	{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
	{asm("	pop		ST			");};

	return r;
}

 
 
 
 
 
 
 
 
 
 
 
 
BOOL RTC_setup(void)
{
	BOOL r;		 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	r = Read_DS1340(8,10,RTC);
 	
	if (!r)
	{ 
		RTC_PRESENT = 0;
		{asm("	pop		ST			");};
		
		return r;	
	}

	RTC_PRESENT = 1;

	if (RTC[1] & 0x80)
		DIAGNOSTICS[1] |= 0x0001;
	else
		DIAGNOSTICS[1] &= 0xFFFFFFFF ^ 0x0001;
	
	RTC[9] |= 0x40;	 
	
	Write_DS1340(8, 2, &RTC[0]); 
	Write_DS1340(7, 1, &RTC[9]); 

	if (RTC[2]&0x80)
	{ 
		RTC[2] &= 0x3F;
		Write_DS1340(0, 1, &RTC[2]);
	}

	{asm("	pop		ST			");};
	return 1;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
BOOL Write_MC24C02_Record(int addr, unsigned char* p)
{
	int i,j,k,r;	 
	BOOL ack;		 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};

	for (i=0;i<256;i++)
		p[i] &= 0xFF;

	r = 1;

	for(j=0;j<16;j++)
	{
		k = 0;
		while(1)
		{ 
			{{*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) |= 0x08;}; {*((volatile char*) 0x0900002) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
			ack = I2C_TX_BYTE(addr);		 
			
			if (!ack)						  
				k++;
			else 
				break;						 
			
			if (k>=50)
			{ 
				r = 0;
				break;
			}
			
			{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
		}
		
		if (r==0)						  
			break;

		ack = I2C_TX_BYTE(j*16);			 
		
		if (!ack)
		{ 
			r = 0;
			break;
		}

		for(i=0;i<16;i++)
		{
			ack = I2C_TX_BYTE(p[j*16+i]);
			
			if (!ack)
			{ 
				r = 0;
				break;
			}
		}

		if (r==0)						  
			break;

		{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
	}

	{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
	{asm("	pop		ST			");};
	
	return r;
}

 
 
 
 
 
 
 
 
 
 
 
 
 
BOOL Read_MC24C02_Record(int addr, unsigned char* p)
{
	int i,j,k,r;	 
	BOOL ack;		 

	{asm("	push	ST			"); 	 						 asm("	andn	2000h, ST	");};
	r = 1;

	for(j=0;j<16;j++)
	{
		k = 0;
	
		while(1)
		{ 
			{{*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) |= 0x08;}; {*((volatile char*) 0x0900002) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
			ack = I2C_TX_BYTE(addr);		 
		
			if (!ack)						  
				k++;
			else 
				break;
			
			if (k>=50)
			{ 
				r = 0;
				break;
			}
			
			{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
		}
		
		if (r==0)						  
			break;

		ack = I2C_TX_BYTE(j*16);			 
		
		if (!ack)
		{ 
			r = 0;
			break;
		}

		{{*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) |= 0x08;}; {*((volatile char*) 0x0900002) |= 0x02;}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x04);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
		ack = I2C_TX_BYTE(addr|0x01);		 
		
		if (!ack)
		{ 
			r = 0;
			break;
		}

		for (i=0;i<15;i++)
			I2C_RX_BYTE(&p[j*16+i],1);		 
		
		I2C_RX_BYTE(&p[j*16+i],0);			 

		{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
	}

	{{*((volatile char*) 0x0900002) |= 0x02;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x01);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x04;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x08);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");}; {*((volatile char*) 0x0900002) |= 0x01;}; {*((volatile char*) 0x0900002) &= (0xFF ^ 0x02);}; {asm("		PUSH    AR1			");						 asm("		LDI		50,AR1		");						 asm("		.word	6E46FFFFh	");						 asm("		POP		AR1			");};};
	{asm("	pop		ST			");};

	return r;
}
