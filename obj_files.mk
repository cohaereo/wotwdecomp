INIT_O_FILES :=                                     \
    $(OBJ_DIR)/asm/init.o

TEXT_O_FILES :=                                     \
    $(OBJ_DIR)/src/Dundee/Misc/DUN_Events.o         \
    $(OBJ_DIR)/src/Dundee/Maths/DUN_VectorMath.o    \
    $(OBJ_DIR)/src/Dundee/Misc/DUN_Random.o         \
    $(OBJ_DIR)/src/Dundee/Collision/COL_Main.o      \
    $(OBJ_DIR)/src/Dundee/Collision/COL_Triangle.o  \
    $(OBJ_DIR)/src/Dundee/Collision/COL_Sphere.o    \
                                                    \
    $(OBJ_DIR)/src/Dundee/Io/CONT_Main.o            \
    $(OBJ_DIR)/asm/text_0x800037c0.o                \
    $(OBJ_DIR)/src/Dundee/Misc/DUN_Fade.o           \
    $(OBJ_DIR)/asm/text_0x80009f44.o                \
    $(OBJ_DIR)/src/text_0x8000af6c.o                \
    $(OBJ_DIR)/asm/text_0x8000afb4.o                \
    $(OBJ_DIR)/src/Main/APP_Main.o                  \
    $(OBJ_DIR)/asm/text_0x8000d204.o                \
                                                    \
    $(OBJ_DIR)/src/Main/main.o                      \
                                                    \
    $(OBJ_DIR)/asm/text_0x8000f15c.o                \
                                                    \
    $(OBJ_DIR)/src/Main/APP_Text.o                  \
                                                    \
    $(OBJ_DIR)/asm/text_0x8001009c.o                \
    $(OBJ_DIR)/src/Game/PLYR_Main.o                 \
    $(OBJ_DIR)/asm/text_0x800449d8.o                \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Banquet.o       \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Beach.o         \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Boxing.o        \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Cabin.o         \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Haunted.o       \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Hell.o          \
    $(OBJ_DIR)/src/Game/SpecialEvents/SE_Kitchen.o  \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Lab.o           \
    $(OBJ_DIR)/asm/SpecialEvents/SE_EventClass.o    \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Market.o        \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Scrap.o         \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Ship.o          \
    $(OBJ_DIR)/asm/SpecialEvents/SE_Skyscraper.o    \
    $(OBJ_DIR)/asm/SpecialEvents/SE_WildWest.o      \
                                                    \
    $(OBJ_DIR)/asm/text_0x80079644.o                \
                                                    \
    $(OBJ_DIR)/asm/dvd/dvdfs.o                      \
    $(OBJ_DIR)/asm/dvd/dvd.o                        \
    $(OBJ_DIR)/asm/dvd/dvdqueue.o                   \
    $(OBJ_DIR)/asm/dvd/dvderror.o                   \
    $(OBJ_DIR)/asm/dvd/fstload.o                    \
    $(OBJ_DIR)/asm/dvd/dvdlow.o                     \
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

RODATA_O_FILES :=                                       \
    $(OBJ_DIR)/src/Dundee/Maths/DUN_VectorMath_data.o   \
    $(OBJ_DIR)/asm/rodata.o

DATA_O_FILES :=                                     \
    $(OBJ_DIR)/asm/data.o

SDATA_O_FILES :=                                    \
    $(OBJ_DIR)/asm/sdata.o

SDATA2_O_FILES :=                                   \
    $(OBJ_DIR)/asm/sdata2.o

BSS_O_FILES :=                                      \
    $(OBJ_DIR)/asm/bss.o
