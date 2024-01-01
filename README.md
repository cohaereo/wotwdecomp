# Tom and Jerry: War of the Whiskers

```diff
- WARNING! -

The ROM this repository builds cannot be 'shifted', primarily due to some hardcoded pointers which have yet
to be dumped. Thus this repository is currently in an experimental and research phase and cannot yet be used
traditionally as a source code base for general changes.
```

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
2. Obtain a copy of the Metrowerks compiler for gamecube (version unknown) and place it in `compiler`
3. Install the ProDG compiler for gamecube (v1.2.2.33)
4. Run the `make` command

## Contributions

Contributions and PRs are welcome.
