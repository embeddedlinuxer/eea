VER = 6.15.10
VER2 = 6_15_10
GIT_COMMIT = 88d6da9bc392bec250e6361ef6cad0b7ba8804c6
GIT_DATE = "Wed Feb 2 11:37:51 2022 -0600"

define BUGS
BUG[117]: HART communication not working

endef

##############################################
##############################################
### DO NOT CHANGE ANYTHING AFTER THIS LINE ###
##############################################
##############################################
export BUGS
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
LINE8 = "BUG FIX & CHANGES"
LINE9 = "-----------------------------------------------------"
LINE10 = "-----------------------------------------------------"
LINE11 = "MD5 HASHES"
LINE12 = "-----------------------------------------------------"
LINE13 = "-----------------------------------------------------"
LINE14 = "GIT VERSION CONTROL"
LINE15 = "-----------------------------------------------------"
LINE16 = "COMMIT : $(GIT_COMMIT)"
LINE17 = "DATE   : $(GIT_DATE)"
LINE18 = "-----------------------------------------------------"

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
	@$(ECHO) "$$BUGS" >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE10) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE11) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE12) >> $(RELEASE_NOTE_FILE)
	$(MD5SUM) $(MD5_FILES) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) "" 		 >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE13) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE14) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE15) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE16) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE17) >> $(RELEASE_NOTE_FILE)
	@$(ECHO) $(LINE18) >> $(RELEASE_NOTE_FILE)

clean:
	@$(RM) $(RM_OPTIONS) $(CLEAN_THESE)

clean2:
	@$(RM) $(RM_OPTIONS) $(CLEAN_THESE2)

