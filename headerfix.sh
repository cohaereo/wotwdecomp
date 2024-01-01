# Stupid workaround for a stupid linker issue
dd if=main.dol of=.main.dol.tmp bs=256 skip=1
head baserom.dol -c 256 > main.dol
cat .main.dol.tmp >> main.dol
rm .main.dol.tmp