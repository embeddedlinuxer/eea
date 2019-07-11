COMPANY = PDI
PRODUCT = EEA
VER = 6.13.35
VER2 = 6_13_35

########## FIX LIST ###########
STORY0 = 162089998
STORY0_TITLE = "$(STORY0) *EEA* - Need to change WC threshold value hardcoded"
########## DO NOT CHANGE AFTER THIS LINE ###########
ZIP = zip
ZIPPED_FILE = EEA_SAV_V$(VER2).zip
EPOCH_MAX = 1400000000
t = $(shell date +%s)
EPOCH = $(t)
TIME_STAMP = `date +'%Y-%m-%d'`
RELEASE_FOLDER = Release_$(TIME_STAMP)
MKDIR = mkdir
ECHO = echo
ECHO_OPTIONS = -e
MD5SUM = md5sum
TAR = tar
RM = rm
CP = cp
CP_OPTIONS = -r
RM_OPTIONS = -rf 
TAR_OPTIONS = -zcvf 
TAR_ZIPPED_FILE = $(COMPANY)_$(PRODUCT)_$(VER2)_$(EPOCH).t.gz
RELEASE_DATE = $(shell date --iso=seconds)
MD5_FILES = pdi.out pdi.map pdi.i0 PDI_BOOT.OUT PDI_BOOT.I0
RELEASE_NOTE_FILE= RELEASE_NOTE.txt
CUSTOMER_FILES = $(MD5_FILES) $(RELEASE_NOTE_FILE) PDI_EEA.LST vssver.scc SERVER_hex.bat
COMPRESS_FILES = $(CUSTOMER_FILES) pdi.mak
RELEASE_TEMPLATE = RELEASE 
CLEAN_THESE = *.zip *.txt Release_* pdi.i0 pdi.out pdi.map

LINE0 = "-----------------------------------------------------"
LINE1 = "RELEASE SUMMARY"
LINE2 = "-----------------------------------------------------"
LINE3 = "PRODUCT      : $(PRODUCT)"
LINE4 = "VERSION      : $(VER)"
LINE5 = "RELEASE DATE : $(RELEASE_DATE)"
LINE6 = "-----------------------------------------------------"
LINE7 = "-----------------------------------------------------"
LINE8 = "BUG FIX & CHANGES INCLUDED"
LINE9 = "-----------------------------------------------------"
LINE10 = "-----------------------------------------------------"
LINE11 = "MD5 HASHES"
LINE12 = "-----------------------------------------------------"

run	: clean copy_folder md5hash copy_output_files update_version_note compress copy_zipped_file customer

copy_folder:
	$(CP) $(CP_OPTIONS) $(RELEASE_TEMPLATE) $(RELEASE_FOLDER)

customer:
	$(MKDIR) $(RELEASE_FOLDER)/CUSTOMER
	$(CP) $(CUSTOMER_FILES) $(RELEASE_FOLDER)/CUSTOMER
	
compress:
	$(ZIP) $(ZIPPED_FILE) $(RELEASE_FOLDER)/FLASH

copy_zipped_file:
	$(CP) $(CP_OPTIONS) $(ZIPPED_FILE) $(RELEASE_FOLDER)/FLASH

copy_output_files:
	$(CP) $(CP_OPTIONS) $(COMPRESS_FILES) $(RELEASE_FOLDER)/FLASH
	$(CP) $(CP_OPTIONS) $(COMPRESS_FILES) $(RELEASE_FOLDER)/FLASH/PDI/PDI_Firmware

update_version_note:
	@$(ECHO) $(ECHO_OPTIONS) "Release $(TIME_STAMP)" > $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "CPLD:" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "   EEA    V2.0" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "   SA_54  0b10110110" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "   SA     0b10111010" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "FLASH:" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "   BOOT 1.08" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "   APP  V$(VER)" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "   OIT  CCM 3.14.2a" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "   EEA  3.14.2a" >> $(RELEASE_FOLDER)/Versions.txt
	@$(ECHO) $(ECHO_OPTIONS) "   BULK 1.11" >> $(RELEASE_FOLDER)/Versions.txt
	
md5hash	:
	@$(ECHO) $(ECHO_OPTIONS) $(LINE0) > $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE1) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE2) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE3) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE4) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE5) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE6) >> $(RELEASE_NOTE_FILE)

	@$(ECHO) $(ECHO_OPTIONS) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) "" 		 >> $(RELEASE_NOTE_FILE)

	@$(ECHO) $(ECHO_OPTIONS) $(LINE7) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE8) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE9) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(STORY0_TITLE) >> $(RELEASE_NOTE_FILE)
	
	@$(ECHO) $(ECHO_OPTIONS) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) "" 		 >> $(RELEASE_NOTE_FILE)

	@$(ECHO) $(ECHO_OPTIONS) $(LINE10) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE11) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(ECHO_OPTIONS) $(LINE12) >> $(RELEASE_NOTE_FILE)
	$(MD5SUM) $(MD5_FILES) >> $(RELEASE_NOTE_FILE)


clean:
	@$(RM) $(RM_OPTIONS) $(CLEAN_THESE)

