# Tom and Jerry: War of the Whiskers

This repo contains a WIP decompilation of Tom and Jerry: War of the Whiskers.

It builds the following DOL:

main.dol: `sha1: a88f43e9a1ca1e2c09ad48f106d9341825ac54ab`

## Building

### Required tools

* [devkitPro](https://devkitpro.org/wiki/Getting_Started)
* Python3 (`pacman -S msys/python3`)
* gcc (`pacman -S gcc`)

### Instructions

1. Obtain a clean DOL of WotW and place it in the base working directory and name it `baserom.dol`.
2. Obtain a copy of the MWCC (Build 158) PowerPC and place it in the mwcc_compiler/ folder. (NOTE: This compiler's executables [mwcceppc.exe mwasmeppc.exe and mwldeppc.exe] can be installed with Codewarrior 1.1 for Gamecube, but no license or crack is provided with this project. Please obtain access to the compiler on your own.) If you are in the Gamecube/Wii Decompilation discord (not public at this time, but if you are interested and have the skillset to contribute, please DM Revo#7090 on Discord for access), download GC_COMPILERS.zip and extract it to tools/mwcc_compiler/.
3. Run the `make` command

## Contributions

Contributions and PRs are welcome.
