.segment "BANK_08"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x010010-0x01400F
.org $8000



.export _off006_screen_1F
.export _off006_screen_0E
.export _off006_screen_0C
.export tbl_0x03F0EF_начальный_адрес_экрана
.export tbl_0x03F0EF_размер_экрана
.export tbl_0x03F0EE_поинтеры_на_экраны
.export tbl_0x03E3C8_prg_bank_с_данными_экрана



_off006_screen_1F:
    .incbin "incbin/screens/1F.bin"

_off006_screen_0E:
    .incbin "incbin/screens/0E.bin"

_off006_screen_0C:
    .incbin "incbin/screens/0C.bin"



tbl_0x03F0EF_начальный_адрес_экрана:
    .dbyt $2080 ; 00
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
    .word $0020 ; 00
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
    .word $0800 ; 0C
    .word $0400 ; 0D
    .word $0800 ; 0E
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



tbl_0x03F0EE_поинтеры_на_экраны:
; перемещено из банка FF
    .word _off006_screen_00
    .word _off006_screen_01
    .word _off006_screen_02
    .word _off006_screen_03
    .word _off006_screen_04
    .word _off006_screen_05
    .word _off006_screen_06
    .word _off006_screen_07
    .word _off006_screen_08
    .word _off006_screen_09
    .word _off006_screen_0A
    .word _off006_screen_0B
    .word _off006_screen_0C
    .word _off006_screen_0D
    .word _off006_screen_0E
    .word _off006_screen_0F
    .word _off006_screen_10
    .word _off006_screen_11
    .word _off006_screen_12
    .word _off006_screen_13
    .word _off006_screen_14
    .word _off006_screen_15
    .word _off006_screen_16
    .word _off006_screen_17
    .word _off006_screen_18
    .word _off006_screen_19
    .word _off006_screen_1A
    .word _off006_screen_1B
    .word _off006_screen_1C
    .word _off006_screen_1D
    .word _off006_screen_1E
    .word _off006_screen_1F



tbl_0x03E3C8_prg_bank_с_данными_экрана:
; перемещено из банка FF
    .byte con_prg_bank + $02   ; 00
    .byte con_prg_bank + $00   ; 01
    .byte con_prg_bank + $00   ; 02
    .byte con_prg_bank + $00   ; 03
    .byte con_prg_bank + $06   ; 04
    .byte con_prg_bank + $06   ; 05
    .byte con_prg_bank + $02   ; 06
    .byte con_prg_bank + $06   ; 07
    .byte con_prg_bank + $02   ; 08
    .byte con_prg_bank + $00   ; 09
    .byte con_prg_bank + $06   ; 0A
    .byte con_prg_bank + $00   ; 0B
    .byte con_prg_bank + $08   ; 0C
    .byte con_prg_bank + $02   ; 0D
    .byte con_prg_bank + $08   ; 0E
    .byte con_prg_bank + $02   ; 0F
    .byte con_prg_bank + $00   ; 10
    .byte con_prg_bank + $02   ; 11
    .byte con_prg_bank + $02   ; 12
    .byte con_prg_bank + $02   ; 13
    .byte con_prg_bank + $00   ; 14
    .byte con_prg_bank + $04   ; 15
    .byte con_prg_bank + $04   ; 16
    .byte con_prg_bank + $02   ; 17
    .byte con_prg_bank + $04   ; 18
    .byte con_prg_bank + $04   ; 19
    .byte con_prg_bank + $04   ; 1A
    .byte con_prg_bank + $04   ; 1B
    .byte con_prg_bank + $04   ; 1C
    .byte con_prg_bank + $04   ; 1D
    .byte con_prg_bank + $02   ; 1E
    .byte con_prg_bank + $08   ; 1F


