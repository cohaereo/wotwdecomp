INIT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/init.o

TEXT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/text_0x800034a0.o                \
    $(OBJ_DIR)/src/text_0x8000af6c.o                \
    $(OBJ_DIR)/asm/text_0x8000afb4.o                \
    $(OBJ_DIR)/src/Main/APP_Main.o                  \
    $(OBJ_DIR)/asm/text_0x8000f15c.o                \
    $(OBJ_DIR)/src/Main/APP_Text.o                  \
    $(OBJ_DIR)/asm/text_0x8001009c.o                \
                                                    \
    $(OBJ_DIR)/asm/dvd/dvdfs.o                      \
    $(OBJ_DIR)/asm/dvd/dvd.o                        \
    $(OBJ_DIR)/asm/dvd/dvdqueue.o                   \
    $(OBJ_DIR)/asm/dvd/dvderror.o                   \
    $(OBJ_DIR)/asm/dvd/fstload.o                    \
    $(OBJ_DIR)/asm/dvd/dvdlow.o                     \
                                                    \
    $(OBJ_DIR)/asm/text_0x80095d58.o                \
                                                    \
    $(OBJ_DIR)/asm/vi/vi.o                          \
                                                    \
    $(OBJ_DIR)/asm/text_0x80098d84.o                \
                                                    \
    $(OBJ_DIR)/asm/Pad.o                            \
    $(OBJ_DIR)/asm/ai/ai.o                          \
    $(OBJ_DIR)/asm/ar/arq.o                         \
    $(OBJ_DIR)/asm/ar/ar.o                          \
                                                    \
    $(OBJ_DIR)/asm/text_0x8009aa4c.o                \
                                                    \
    $(OBJ_DIR)/asm/gx/GXFifo.o                      \
    $(OBJ_DIR)/asm/gx/GXAttr.o                      \
    $(OBJ_DIR)/asm/gx/GXMisc.o                      \
    $(OBJ_DIR)/asm/gx/GXVert.o                      \
    $(OBJ_DIR)/asm/gx/GXFrameBuf.o                  \
    $(OBJ_DIR)/asm/gx/GXLight.o                     \
    $(OBJ_DIR)/asm/gx/GXTexture.o                   \
    $(OBJ_DIR)/asm/gx/GXBump.o                      \
    $(OBJ_DIR)/asm/gx/GXTev.o                       \
    $(OBJ_DIR)/asm/gx/GXTransform.o                 \
    $(OBJ_DIR)/asm/gx/GXInit.o                      \
    $(OBJ_DIR)/asm/gx/GXPixel.o                     \
    $(OBJ_DIR)/asm/gx/GXPerf.o                      \
                                                    \
    $(OBJ_DIR)/asm/text_0x800a3b3c.o                \
    $(OBJ_DIR)/asm/text_0x800c6ea4.o                \
    $(OBJ_DIR)/asm/text_0x800c7298.o                \
    $(OBJ_DIR)/asm/gx/GXDisplayList.o               \
    $(OBJ_DIR)/asm/text_0x800d1554.o                \

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
