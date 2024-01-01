INIT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/init.o

TEXT_O_FILES :=                                     \
    $(OBJ_DIR)/src/test.o                           \
    $(OBJ_DIR)/asm/text.o                   		\

CTORS_O_FILES :=                                    \
    $(OBJ_DIR)/asm/ctors.o

RODATA_O_FILES :=                                    \
    $(OBJ_DIR)/asm/rodata.o

DATA_O_FILES :=                                    \
    $(OBJ_DIR)/asm/data.o

SDATA_O_FILES :=                                    \
    $(OBJ_DIR)/asm/sdata.o

SDATA2_O_FILES :=                                    \
    $(OBJ_DIR)/asm/sdata2.o

BSS_O_FILES :=                                      \
    $(OBJ_DIR)/asm/bss.o