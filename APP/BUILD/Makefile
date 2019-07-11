####################################################
####################################################

VER = 6.15.02
VER2 = 6_15_02

STORY0 = 55
STORY0_TITLE = "$(STORY0) : EEA - Incorrect max_addr set on ports other than port 0 in HART_5"

########## DO NOT CHANGE AFTER THIS LINE ###########
####################################################

PRODUCT = EEA
TIME_STAMP = `date +'%Y_%m_%d'`
RELEASE_DATE = $(shell date --iso=seconds)
MD5SUM = md5sum
ZIP = zip
MKDIR = mkdir
ECHO = echo
TAR = tar
RM = rm
CP = cp
CP_OPTIONS = -r
RM_OPTIONS = -rf 
TAR_OPTIONS = -zcvf 

RELEASE_FOLDER = EEA_SAV_V$(VER2)_$(TIME_STAMP)
ZIPPED_FOLDER = $(RELEASE_FOLDER).zip
MD5_FILES = pdi.out pdi.map pdi.i0 PDI_BOOT.OUT PDI_BOOT.I0
CUSTOMER_FILES = $(MD5_FILES) PDI_EEA.LST vssver.scc
VERSION_FILE = Versions.txt
RELEASE_NOTE_FILE= RELEASE_NOTE.txt

CLEAN_THESE = *.zip *.txt EEA_SAV_V*
CLEAN_THESE2 = EEA_SAV_V*

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

all	: clean create_dirs md5hash update_version_note copy_files compress 

create_dirs:
	$(MKDIR) $(RELEASE_FOLDER)

copy_files:
	$(CP) $(CUSTOMER_FILES) $(RELEASE_FOLDER)
	$(CP) $(VERSION_FILE) $(RELEASE_FOLDER)
	$(CP) $(RELEASE_NOTE_FILE) $(RELEASE_FOLDER)
	
compress:
	$(ZIP) $(ZIPPED_FOLDER) $(RELEASE_FOLDER)

update_version_note:
	@$(ECHO) "Release $(TIME_STAMP)" > $(VERSION_FILE)
	@$(ECHO) "CPLD:" >> $(VERSION_FILE)
	@$(ECHO) "   EEA    V2.0" >> $(VERSION_FILE)
	@$(ECHO) "   SA_54  0b10110110" >> $(VERSION_FILE)
	@$(ECHO) "   SA     0b10111010" >> $(VERSION_FILE)
	@$(ECHO) "FLASH:" >> $(VERSION_FILE)
	@$(ECHO) "   BOOT 1.08" >> $(VERSION_FILE)
	@$(ECHO) "   APP  V$(VER)" >> $(VERSION_FILE)
	@$(ECHO) "   OIT  CCM 3.14.2a" >> $(VERSION_FILE)
	@$(ECHO) "   EEA  3.14.2a" >> $(VERSION_FILE)
	@$(ECHO) "   BULK 1.11" >> $(VERSION_FILE)
	
md5hash	:
	@$(ECHO) $(LINE0) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE1) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE2) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE3) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE4) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE5) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE6) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE7) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE8) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE9) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(STORY0_TITLE) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE10) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE11) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE12) >> $(RELEASE_NOTE_FILE)
	$(MD5SUM) $(MD5_FILES) >> $(RELEASE_NOTE_FILE)

clean:
	@$(RM) $(RM_OPTIONS) $(CLEAN_THESE)

clean2:
	@$(RM) $(RM_OPTIONS) $(CLEAN_THESE2)

