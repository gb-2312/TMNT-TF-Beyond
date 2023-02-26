.segment "BANK_08"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x010010-0x01400F
.org $8000



.export _off006_screen_1F
.export _off006_screen_0E
.export tbl_0x03F0EF_начальный_адрес_экрана
.export tbl_0x03F0EF_размер_экрана



_off006_screen_1F:
    .incbin "incbin/screens/1F.bin"

_off006_screen_0E:
    .incbin "incbin/screens/0E.bin"



tbl_0x03F0EF_начальный_адрес_экрана:
    .dbyt $FFFF ; 00
    .dbyt $2000 ; 01
    .dbyt $2000 ; 02
    .dbyt $2000 ; 03
    .dbyt $2000 ; 04
    .dbyt $2000 ; 05
    .dbyt $2320 ; 06
    .dbyt $2000 ; 07
    .dbyt $2000 ; 08
    .dbyt $2000 ; 09
    .dbyt $2000 ; 0A
    .dbyt $2000 ; 0B
    .dbyt $2000 ; 0C
    .dbyt $2000 ; 0D
    .dbyt $2000 ; 0E
    .dbyt $2320 ; 0F
    .dbyt $2000 ; 10
    .dbyt $2000 ; 11
    .dbyt $2000 ; 12
    .dbyt $2000 ; 13
    .dbyt $2400 ; 14
    .dbyt $2000 ; 15
    .dbyt $2000 ; 16
    .dbyt $2000 ; 17
    .dbyt $2000 ; 18
    .dbyt $2000 ; 19
    .dbyt $2000 ; 1A
    .dbyt $2000 ; 1B
    .dbyt $2000 ; 1C
    .dbyt $2000 ; 1D
    .dbyt $2000 ; 1E
    .dbyt $2000 ; 1F



tbl_0x03F0EF_размер_экрана:
    .word $FFFF ; 00
    .word $0400 ; 01
    .word $0400 ; 02
    .word $0400 ; 03
    .word $0800 ; 04
    .word $0800 ; 05
    .word $0080 ; 06
    .word $0800 ; 07
    .word $0400 ; 08
    .word $0400 ; 09
    .word $0800 ; 0A
    .word $0400 ; 0B
    .word $0400 ; 0C
    .word $0400 ; 0D
    .word $0400 ; 0E
    .word $0080 ; 0F
    .word $0400 ; 10
    .word $0400 ; 11
    .word $0400 ; 12
    .word $0400 ; 13
    .word $0400 ; 14
    .word $0400 ; 15
    .word $0400 ; 16
    .word $0400 ; 17
    .word $0400 ; 18
    .word $0400 ; 19
    .word $0400 ; 1A
    .word $0400 ; 1B
    .word $0400 ; 1C
    .word $0400 ; 1D
    .word $0400 ; 1E
    .word $0800 ; 1F


