INIT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/init.o

TEXT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/text_0x800034a0.o                \
    $(OBJ_DIR)/src/text_0x8000af6c.o                \
    $(OBJ_DIR)/asm/text_0x8000afb4.o                \
    $(OBJ_DIR)/src/language.o                       \
    $(OBJ_DIR)/asm/text_0x8001009c.o                \
    $(OBJ_DIR)/asm/dvd/dvdfs.o                      \
    $(OBJ_DIR)/asm/dvd/dvd.o                        \
    $(OBJ_DIR)/asm/dvd/dvdqueue.o                   \
    $(OBJ_DIR)/asm/dvd/dvderror.o                   \
    $(OBJ_DIR)/asm/dvd/fstload.o                    \
    $(OBJ_DIR)/asm/dvd/dvdlow.o                     \
    $(OBJ_DIR)/asm/text_0x80095d58.o                \
    $(OBJ_DIR)/src/text_0x800c6ea4.o                \
    $(OBJ_DIR)/asm/text_0x800c7298.o

CTORS_O_FILES :=                                    \
    $(OBJ_DIR)/asm/ctors.o

RODATA_O_FILES :=                                   \
    $(OBJ_DIR)/asm/rodata.o

DATA_O_FILES :=                                     \
    $(OBJ_DIR)/asm/data.o

SDATA_O_FILES :=                                    \
    $(OBJ_DIR)/asm/sdata.o

SDATA2_O_FILES :=                                   \
    $(OBJ_DIR)/asm/sdata2.o

BSS_O_FILES :=                                      \
    $(OBJ_DIR)/asm/bss.o
