:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!beyond.nes> and rename them as <!beyond.old> and <!beyond.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !beyond.old (copy !beyond.nes !beyond.old)

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
ca65 -U -l copy_bank_00.lst -g copy_bank_00.asm
ca65 -U -l copy_bank_02.lst -g copy_bank_02.asm
ca65 -U -l copy_bank_04.lst -g copy_bank_04.asm
ca65 -U -l copy_bank_06.lst -g copy_bank_06.asm
ca65 -U -l copy_bank_08.lst -g copy_bank_08.asm
ca65 -U -l copy_bank_0A.lst -g copy_bank_0A.asm
ca65 -U -l copy_bank_0C.lst -g copy_bank_0C.asm
ca65 -U -l copy_bank_0E.lst -g copy_bank_0E.asm
ca65 -U -l copy_bank_10.lst -g copy_bank_10.asm
ca65 -U -l copy_bank_12.lst -g copy_bank_12.asm
ca65 -U -l copy_bank_14.lst -g copy_bank_14.asm
ca65 -U -l copy_bank_16.lst -g copy_bank_16.asm
ca65 -U -l copy_bank_18.lst -g copy_bank_18.asm
ca65 -U -l copy_bank_1A.lst -g copy_bank_1A.asm
ca65 -U -l copy_bank_1C.lst -g copy_bank_1C.asm
ca65 -U -l copy_bank_FF.lst -g copy_bank_FF.asm

:: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt ^
    copy_bank_00.o ^
    copy_bank_02.o ^
    copy_bank_04.o ^
    copy_bank_06.o ^
    copy_bank_08.o ^
    copy_bank_0A.o ^
    copy_bank_0C.o ^
    copy_bank_0E.o ^
    copy_bank_10.o ^
    copy_bank_12.o ^
    copy_bank_14.o ^
    copy_bank_16.o ^
    copy_bank_18.o ^
    copy_bank_1A.o ^
    copy_bank_1C.o ^
    copy_bank_FF.o

:: join header, prg and chr into a single ROM file
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr !beyond.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist original_rom.nes (copy !beyond.nes.ram.nl original_rom.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!beyond.nes") DO set "size=%%~zA"
if %size% EQU 524304 (
    echo.
    echo -----------------------------------------------
    echo Done! Look for !beyond.nes file in your folder.
    if exist !beyond.bak (
        echo.
        fc /A /B /T !beyond.nes !beyond.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !beyond.nes !beyond.bak
        echo Backup created
    )
    echo -----------------------------------------------
    echo Script will close automatically in 10 seconds.
    timeout /T 10 > nul
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !beyond.bak (
        echo.
        copy !beyond.bak !beyond.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)