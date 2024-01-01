ifneq ($(findstring MINGW,$(shell uname)),) # MINGW
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),) # MSYS
  WINDOWS := 1
endif
ifneq ($(findstring Microsoft,$(shell uname -r)),) # WSL2
  WINDOWS := 1
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

OBJ_DIR := build

SRC_DIRS := src src/Main src/Dundee/Misc src/Dundee/Maths src/Dundee/Collision src/Dundee/Io src/Game src/Game/SpecialEvents
ASM_DIRS := asm asm/dvd asm/gx asm/ai asm/ar asm/vi asm/SpecialEvents

# Inputs
S_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
LDSCRIPT := ldscript.lcf

# Outputs
DOL     := main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := wotw.map

include obj_files.mk

O_FILES := 	$(INIT_O_FILES) $(TEXT_O_FILES) $(CTORS_O_FILES) $(RODATA_O_FILES) \
			$(DATA_O_FILES) $(SDATA_O_FILES) $(SDATA2_O_FILES) $(BSS_O_FILES) 

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
else
  WINE := wine
endif
AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
OBJCOPY := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
CC      := $(WINE) ngccc.exe
LD      := $(WINE) compiler/mwldeppc.exe
ELF2DOL := tools/elf2dol
SHA1SUM := sha1sum

# Options
ASFLAGS := -mgekko -I include
LDFLAGS := -map $(MAP) -fp hard -nodefaults
CFLAGS  := -O2 -I include -nostdlib -G 0
# CFLAGS  := -Cpp_exceptions off -proc gekko -fp hard -O3,s -nodefaults -i include -sdatathreshold 0

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

ALL_DIRS := $(OBJ_DIR) $(addprefix $(OBJ_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

.PHONY: tools

$(DOL): $(ELF) | tools
	$(ELF2DOL) $< $@
	./headerfix.sh
	$(SHA1SUM) -c wotw.sha1

clean:
	rm -f -d -r $(OBJ_DIR)
	$(MAKE) -C tools clean

tools:
	$(MAKE) -C tools

build_nolink: $(O_FILES)

$(ELF): baserom.dol $(O_FILES) $(LDSCRIPT)
	$(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) $(O_FILES)

$(OBJ_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(OBJ_DIR)/%.o: %.cpp
	$(CC) $(CFLAGS) -T $(LDSCRIPT) -c -o $@ $<
