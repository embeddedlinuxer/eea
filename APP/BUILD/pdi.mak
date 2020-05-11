/************* Code Composer V1 Project Data ********************
  The following section contains data generated by Code Composer
  to store project information like build options, source filenames
  and dependencies.

[command filename]
..\SOURCE\pdi_rom.cmd 61

[Project Root]
G:\workspace\EEA\v615\APP\BUILD

[build options]
3
Linker = "-a -r -c -f 0x00000000 -heap 0x2000 -m pdi.map -o pdi.out -stack 0x07BF -x "
Assembler = "-lx -v30 -mrb -iG:\workspace\EEA\V615\APP\SOURCE -iG:\workspace\EEA\V615\APP\SOURCE\INCLUDE -iG:\workspace\EEA\V615\INCLUDE -iG:\workspace\EEA\V615\APP\SOURCE\ASM "
Compiler = "-gks -v33 -pl -mbfr -alsx -x1 -frG:\workspace\EEA\V615\APP\OBJ -fsG:\workspace\EEA\V615\APP\SOURCE\ASM -iG:\workspace\EEA\V615\APP\SOURCE\INCLUDE -iG:\workspace\EEA\V615\INCLUDE "

[source files]
..\SOURCE\ADC.c 1574456688 1
..\SOURCE\DAC.c 1574456702 1
..\SOURCE\ISR.c 1574456703 1
..\SOURCE\MAIN.c 1588685441 1
..\SOURCE\MISC.c 1588687288 1
..\SOURCE\SERIAL.c 1574456703 1
..\SOURCE\TIMER.c 1574456704 1
..\SOURCE\VARIABLE.c 1574456704 1
..\SOURCE\EXECUTE.c 1574456702 1
..\..\LIB\FLASH.c 1574456709 1
..\..\LIB\pdi.lib 1552508156 1
..\..\LIB\LIST.c 1574456709 1
..\SOURCE\MODBUSRTU.c 1574456703 1
..\SOURCE\BUFFER.c 1574456702 1
..\SOURCE\FLOAT1.asm 1574456702 1
..\SOURCE\GLBLS.c 1588684838 1
..\SOURCE\HART.c 1574456702 1
..\SOURCE\boot.asm 1574456704 1
..\SOURCE\LOG.c 1574456703 1
..\SOURCE\DEMO.c 1574456702 1
..\SOURCE\SELFTEST.c 1574456703 1
..\SOURCE\ETC.c 1574456702 1
..\..\LIB\I2C.c 1575927963 1
..\SOURCE\LCD.c 1574456703 1
..\SOURCE\MENU.c 1574456703 1
..\SOURCE\API.c 1574456688 1
GLBLS.H 1588686597 0
ADC.H 1574456702 0
DAC.H 1574456702 0
BRANCH.H 1574456702 0
MISC.H 1574456703 0
SERIAL.H 1574456703 0
TIMER.H 1574456703 0
VARIABLE.H 1574456703 0
EXECUTE.H 1574456702 0
FLASH.H 1574456708 0
LIST.H 1574456708 0
MODBUSTABLES.H 1588686534 0
BUFFER.H 1574456702 0
HART.H 1574456703 0
LOG.H 1574456703 0
DEMO.H 1574456702 0
ETC.H 1574456708 0
I2C.H 1575473507 0
MENU.H 1574456703 0
RUSSTBLS.H 1574456703 0
API.H 1574456702 0
float.h 1574456709 0
format.h 1574456709 0
string.h 1574456709 0
stdio.h 1574456709 0
stdlib.h 1574456709 0
math.h 1574456709 0
time.h 1574456709 0
PERIPH.H 1574456708 0
UNITS.H 1574456708 0
ERRORS.H 1574456702 0
SELFTEST.H 1574456703 0
FLOAT1.H 1574456702 0
MODBUSRTU.H 1574456703 0
stdarg.h 1574456709 0
-30558

[dependencies]
 2 26:21 27:22 -15142
 2 26:25 28:26 19145
 2 26:31 29:32 6273
 1 26:24 32688
 2 26:19 30:20 -420
 2 26:20 31:21 32673
 2 26:27 32:28 -7342
 2 26:24 33:25 4881
 2 26:22 34:23 -19087
 2 26:21 35:22 8786
 0 -802
 2 26:22 36:23 -21109
 2 26:24 37:25 957
 2 26:24 38:25 4032
 0 -802
 1 26:21 -12344
 2 26:22 39:23 -24074
 0 -802
 2 26:22 40:23 -25473
 2 26:23 41:24 -26077
 1 26:26 19456
 2 26:20 42:21 -21258
 2 26:22 43:23 -28670
 2 26:26 43:27 704
 3 26:22 44:23 45:24 487
 2 26:24 46:25 11928
 30 47:130 48:131 49:132 50:133 51:134 52:135 53:136 42:137 54:138 36:139 33:140 38:141 55:142 32:143 43:144 56:145 31:146 27:147 28:148 34:149 35:150 40:151 41:152 57:153 44:155 58:156 39:1702 59:1703 30:1704 46:1705 2199
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 1 60:11 24019
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802
 0 -802

[version]
2.0
*/
-a -r -c -f 0x00000000 -heap 0x2000 -m pdi.map -o pdi.out -stack 0x07BF -x
"..\..\..\V615\APP\OBJ\API.obj"
"..\..\..\V615\APP\OBJ\MENU.obj"
"..\..\..\V615\APP\OBJ\LCD.obj"
"..\..\..\V615\APP\OBJ\I2C.obj"
"..\..\..\V615\APP\OBJ\ETC.obj"
"..\..\..\V615\APP\OBJ\SELFTEST.obj"
"..\..\..\V615\APP\OBJ\DEMO.obj"
"..\..\..\V615\APP\OBJ\LOG.obj"
"..\SOURCE\boot.obj"
"..\..\..\V615\APP\OBJ\HART.obj"
"..\..\..\V615\APP\OBJ\GLBLS.obj"
"..\SOURCE\FLOAT1.obj"
"..\..\..\V615\APP\OBJ\BUFFER.obj"
"..\..\..\V615\APP\OBJ\MODBUSRTU.obj"
"..\..\..\V615\APP\OBJ\LIST.obj"
"..\..\..\V615\APP\OBJ\FLASH.obj"
"..\..\..\V615\APP\OBJ\EXECUTE.obj"
"..\..\..\V615\APP\OBJ\VARIABLE.obj"
"..\..\..\V615\APP\OBJ\TIMER.obj"
"..\..\..\V615\APP\OBJ\SERIAL.obj"
"..\..\..\V615\APP\OBJ\MISC.obj"
"..\..\..\V615\APP\OBJ\MAIN.obj"
"..\..\..\V615\APP\OBJ\ISR.obj"
"..\..\..\V615\APP\OBJ\DAC.obj"
"..\..\..\V615\APP\OBJ\ADC.obj"
"..\..\LIB\pdi.lib"
"..\SOURCE\pdi_rom.cmd"
/******** End of Project Data Generated by Code Composer ********/
