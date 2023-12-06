.segment "BANK_1C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x038010-0x03C00F
.org $8000



.export sub_0x038011_обработчик_экрана_с_опциями
.export sub_0x0382CB_отрисовать_турнирную_сетку
.export sub_0x0385E6_обработка_экрана_continue
.export sub_0x0388A0_обработка_экрана_с_выбором_арены
.export sub_0x038A7A_подсчитать_время_и_здоровье_после_боя
.export sub_0x038C8B_обработчик_экрана_с_клавиатурой
.export sub_0x0390AF_обработчик_opening
.export sub_0x039610_обработчик_ending
.export sub_0x039B46_обработка_выбранного_speech
.export sub_0x039FCF_обработчик_экрана_topscore
.export sub_0x03A0F3_отрисовать_портреты
.export sub_0x03A37C_обработать_рожи_в_турнирной_сетке
.export sub_0x03A437_подготовка_экрана_rematch
.export sub_0x03A49F_обработка_экрана_rematch



- D 0 - - - 0x038010 0E:8000: 0C        .byte con_bank_id + $1C   ; 



sub_0x038011_обработчик_экрана_с_опциями:
; свободный адрес 00AD
C D 0 - - - 0x038011 0E:8001: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x038013 0E:8003: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x038016 0E:8006: 0C 80     .word ofs_015_800C_00_отрисовать_опции
                                        .word ofs_015_803F_01_запись_палитры_и_подсветка_первой_опции
- D 0 - I - 0x038018 0E:8008: 5E 80     .word ofs_015_805E_02_обработка_страницы_опций_1
- D 0 - I - 0x03801A 0E:800A: 5E 80     .word ofs_015_805F_03_обработка_страницы_опций_2



ofs_015_800C_00_отрисовать_опции:
C - - - - - 0x038020 0E:8010: 20 BE DA  JSR sub_0x03DACE_удалить_все_объекты
; X свободен
C - - - - - 0x038025 0E:8015: BD B7 82  LDA #$43
C - - - - - 0x038028 0E:8018: 9D 00 04  STA ram_obj_anim_id + $01
C - - - - - 0x03802B 0E:801B: BD B9 82  LDA #$68
C - - - - - 0x03802E 0E:801E: 9D 10 04  STA ram_obj_pos_Y_lo + $01
C - - - - - 0x038031 0E:8021: A9 30     LDA #$30
C - - - - - 0x038033 0E:8023: 9D 40 04  STA ram_obj_pos_X_lo + $01
C - - - - - 0x038036 0E:8026: A9 82     LDA #$82
C - - - - - 0x038038 0E:8028: 9D 00 05  STA ram_obj_0500 + $01
C - - - - - 0x03803E 0E:802E: A9 55     LDA #con_chr_bank_spr + $55
C - - - - - 0x038040 0E:8030: 85 34     STA ram_chr_bank_spr
C - - - - - 0x038042 0E:8032: 20 25 DC  JSR sub_0x03DC35_запись_пары_chr_bg_06
C - - - - - 0x038045 0E:8035: A9 0E     LDA #con_0048_0E
C - - - - - 0x038047 0E:8037: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x03804A 0E:803A: A2 18     LDX #con_screen_options
C - - - - - 0x03804C 0E:803C: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
                                        JSR sub_809E_отрисовать_вариант_difficulty
                                        JSR sub_80AE_отрисовать_вариант_skin
                                        JSR sub_80BE_отрисовать_вариант_speed
                                        JSR sub_80CE_отрисовать_вариант_timer
                                        JSR sub_80DE_отрисовать_вариант_health
                                        JSR sub_819E_отрисовать_вариант_balancing
                                        JSR sub_81AE_отрисовать_вариант_shred_ctrl
                                        JSR sub_81BE_отрисовать_вариант_bgm
                                        JSR sub_81CE_отрисовать_вариант_team_keeps
                                        LDA #$01
                                        STA ram_0095_стадия_игры
                                        RTS



ofs_015_803F_01_запись_палитры_и_подсветка_первой_опции:
; запись палитры после отрисовки экрана скроет все дергания экрана при отрисовке
C - - - - - 0x03804F 0E:803F: A9 07     LDA #con_D57A_07
C - - - - - 0x038051 0E:8041: A8        LDY #con_D57A_07
C - - - - - 0x038052 0E:8042: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x038055 0E:8045: 20 BB 81  JSR sub_81D8_подсветить_опцию
                                        LDA #$02
                                        STA ram_0095_стадия_игры
                                        RTS



ofs_015_805E_02_обработка_страницы_опций_1:
                                        JSR sub_8061_попытка_переключить_на_страницу_с_опциями_2
                                        JSR sub_8050_перемещение_по_списку_опций_и_их_подсветка
                                        JSR sub_8070_попытка_выйти_из_экрана_с_опциями    ; возможен PLA PLA
                                        LDA ram_obj_spd_Y_lo
                                        JSR sub_0x03D042_поинтеры_после_JSR
                                        .word ofs_085_8060_00_difficulty
                                        .word ofs_085_8060_01_skin
                                        .word ofs_085_8060_02_speed
                                        .word ofs_085_8060_03_timer
                                        .word ofs_085_8060_04_health
                                        .word ofs_085_8060_05_exit



ofs_085_8060_00_difficulty:
                                        JSR sub_817C_попытка_сделать_255_контов
                                        LDA ram_btn_press
                                        AND #con_btns_AB + con_btns_LR
                                        BEQ bra_8093_RTS
                                        AND #con_btn_Right + con_btn_A
                                        BNE bra_8090_right
; if left
                                        LDA ram_option_difficulty
                                        BEQ bra_8093_RTS
                                        DEC ram_option_difficulty
                                        BPL bra_8092    ; jmp
bra_8090_right:
                                        LDA ram_option_difficulty
                                        CMP #$03
                                        BCS bra_8093_RTS
                                        INC ram_option_difficulty
bra_8092:
                                        JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_809E_отрисовать_вариант_difficulty
bra_8093_RTS:
                                        RTS



sub_809E_отрисовать_вариант_difficulty:
                                        LDY ram_option_difficulty
                                        LDA tbl_809F_difficulty,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_809F_difficulty:
    .byte con_print_diff_easy   ; 00
    .byte con_print_diff_normal   ; 01
    .byte con_print_diff_hard   ; 02
    .byte con_print_diff_expert   ; 03



ofs_085_8060_01_skin:
                                        LDA ram_option_misc
                                        AND #$03
                                        TAX
                                        LDA ram_btn_press
                                        AND #con_btns_AB + con_btns_LR
                                        BEQ bra_80A3_RTS
                                        AND #con_btn_Right + con_btn_A
                                        BNE bra_80A0_right
; if left
                                        DEX
                                        BPL bra_80A2
                                        BMI bra_80A3_RTS    ; jmp
bra_80A0_right:
                                        CPX #$02
                                        BCS bra_80A3_RTS
                                        INX
bra_80A2:
                                        LDA ram_option_misc
                                        AND #$FC
                                        STA ram_option_misc
                                        TXA
                                        ORA ram_option_misc
                                        STA ram_option_misc
                                        JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_80AE_отрисовать_вариант_skin
bra_80A3_RTS:
                                        RTS




sub_80AE_отрисовать_вариант_skin:
                                        LDA ram_option_misc
                                        AND #$03
                                        TAY
                                        LDA tbl_80AF_skin,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_80AF_skin:
    .byte con_print_green   ; 00
    .byte con_print_original   ; 01
    .byte con_print_night   ; 02



ofs_085_8060_02_speed:
                                        LDA ram_btn_press
                                        AND #con_btns_AB + con_btns_LR
                                        BEQ bra_80B3_RTS
bra_80B0_change_option:
                                        LDA ram_option_speed
                                        EOR #$01
                                        STA ram_option_speed
bra_80B2:
                                        JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_80BE_отрисовать_вариант_speed
bra_80B3_RTS:
                                        RTS



sub_80BE_отрисовать_вариант_speed:
                                        LDY ram_option_speed
                                        LDA tbl_80BF_speed,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_80BF_speed:
    .byte con_print_spd_normal   ; 00
    .byte con_print_spd_turbo   ; 01



ofs_085_8060_03_timer:
                                        LDA ram_btn_press
                                        AND #con_btns_AB + con_btns_LR
                                        BEQ bra_80C3_RTS
                                        AND #con_btn_Right + con_btn_A
                                        BNE bra_80C0_right
; if left
                                        LDA ram_option_timer
                                        BEQ bra_80C3_RTS
                                        DEC ram_option_timer
                                        BPL bra_80C2    ; jmp
bra_80C0_right:
                                        LDA ram_option_timer
                                        CMP #$03
                                        BCS bra_80C3_RTS
                                        INC ram_option_timer
bra_80C2:
                                        JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_80CE_отрисовать_вариант_timer
bra_80C3_RTS:
                                        RTS



sub_80CE_отрисовать_вариант_timer:
                                        LDY ram_option_timer
                                        LDA tbl_80CF_timer,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_80CF_timer:
    .byte con_print_time_45   ; 00
    .byte con_print_time_60   ; 01
    .byte con_print_time_99   ; 02
    .byte con_print_time_бесконечное   ; 03



ofs_085_8060_04_health:
                                        LDA ram_btn_press
                                        AND #con_btns_AB + con_btns_LR
                                        BEQ bra_80D3_RTS
                                        AND #con_btn_Right + con_btn_A
                                        BNE bra_80D0_right
; if left
                                        LDA ram_option_health
                                        BEQ bra_80D3_RTS
                                        DEC ram_option_health
                                        BPL bra_80D2    ; jmp
bra_80D0_right:
                                        LDA ram_option_health
                                        CMP #$03
                                        BCS bra_80D3_RTS
                                        INC ram_option_health
bra_80D2:
                                        JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_80DE_отрисовать_вариант_health
bra_80D3_RTS:
                                        RTS



sub_80DE_отрисовать_вариант_health:
                                        LDY ram_option_health
                                        LDA tbl_80DF_health,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_80DF_health:
    .byte con_print_hp_100   ; 00
    .byte con_print_hp_150   ; 01
    .byte con_print_hp_200   ; 02
    .byte con_print_hp_бесконечное   ; 03



ofs_085_8060_05_exit:                 
ofs_086_8060_05_exit:
                                        LDA ram_btn_press
                                        AND #con_btns_AB
                                        BEQ bra_8060_RTS
                                        JMP loc_8071_выход_из_экрана_с_опциями
bra_8060_RTS:
                                        RTS



ofs_015_805F_03_обработка_страницы_опций_2:
                                        JSR sub_8061_попытка_переключить_на_страницу_с_опциями_1
                                        JSR sub_8050_перемещение_по_списку_опций_и_их_подсветка
                                        JSR sub_8070_попытка_выйти_из_экрана_с_опциями    ; возможен PLA PLA
                                        LDA ram_obj_spd_Y_lo
                                        JSR sub_0x03D042_поинтеры_после_JSR
                                        .word ofs_086_8060_00_balancing
                                        .word ofs_086_8060_01_shred_ctrl
                                        .word ofs_086_8060_02_bgm
                                        .word ofs_086_8060_03_team_keeps
                                        .word ofs_086_8060_04_future_expansion
                                        .word ofs_086_8060_05_exit



ofs_086_8060_00_balancing:
                                        LDA ram_btn_press
                                        AND #con_btns_AB + con_btns_LR
                                        BEQ bra_8193_RTS
bra_8190_change_option:
                                        LDA ram_option_misc
                                        EOR #$08
                                        STA ram_option_misc
bra_8192:
                                        JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_819E_отрисовать_вариант_balancing
bra_8193_RTS:
                                        RTS



sub_819E_отрисовать_вариант_balancing:
                                        LDA ram_option_misc
                                        AND #$08
; / 08
                                        LSR
                                        LSR
                                        LSR
                                        TAY
                                        LDA tbl_819F_balancing,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_819F_balancing:
    .byte con_print_balancing_off   ; 00
    .byte con_print_balancing_on   ; 08




ofs_086_8060_01_shred_ctrl:
                                        LDA ram_btn_press
                                        AND #con_btns_AB + con_btns_LR
                                        BEQ bra_81A3_RTS
bra_81A0_change_option:
                                        LDA ram_option_misc
                                        EOR #$10
                                        STA ram_option_misc
bra_81A2:
                                        JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_81AE_отрисовать_вариант_shred_ctrl
bra_81A3_RTS:
                                        RTS



sub_81AE_отрисовать_вариант_shred_ctrl:
                                        LDA ram_option_misc
                                        AND #$10
; / 10
                                        LSR
                                        LSR
                                        LSR
                                        LSR
                                        TAY
                                        LDA tbl_81AF_shred_ctrl,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_81AF_shred_ctrl:
    .byte con_print_shred_ctrl_off   ; 00
    .byte con_print_shred_ctrl_on   ; 10




ofs_086_8060_02_bgm:
                                        LDA ram_btn_press
                                        AND #con_btns_AB
                                        BEQ bra_81B4
                                        JSR sub_0x03F6D2_выключить_музыку_и_звуки
                                        LDA ram_btn_press
                                        AND #con_btn_B
                                        BEQ bra_81B3_RTS
                                        LDY ram_obj_04C0
                                        LDA tbl_829E_sound,Y
                                        JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_81B4:
                                        LDA ram_btn_press
                                        AND #con_btns_LR
                                        BEQ bra_81B3_RTS
                                        AND #con_btn_Right
                                        BNE bra_81B0_right
; if left
                                        LDA ram_obj_04C0
                                        BEQ bra_81B3_RTS
                                        DEC ram_obj_04C0
                                        BPL bra_81B2    ; jmp
bra_81B0_right:
                                        LDA ram_obj_04C0
                                        CMP #$11
                                        BCS bra_81B3_RTS
                                        INC ram_obj_04C0
bra_81B2:
                                       ;JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_81BE_отрисовать_вариант_bgm
bra_81B3_RTS:
                                        RTS



tbl_829E_sound:
    .byte con_music_ost_sewer   ; 00
    .byte con_music_ost_down_town   ; 01
    .byte con_music_ost_pirate_ship   ; 02
    .byte con_music_ost_water_front   ; 03
    .byte con_music_opening_1   ; 04
    .byte con_music_opening_2   ; 05
    .byte con_dpcm_warcry_turtle_1   ; 06
    .byte con_dpcm_warcry_casey_1   ; 07
    .byte con_dpcm_warcry_hot_1   ; 08
    .byte con_dpcm_warcry_shred_1   ; 09
    .byte con_dpcm_warcry_turtle_2   ; 0A
    .byte con_dpcm_warcry_casey_2   ; 0B
    .byte con_dpcm_warcry_shred_2   ; 0C
    .byte con_dpcm_warcry_shred_3   ; 0D
    .byte con_dmcp_dead_turtle   ; 0E
    .byte con_dmcp_dead_casey   ; 0F
    .byte con_dmcp_dead_hot   ; 10
    .byte con_dmcp_dead_shred   ; 11



sub_81BE_отрисовать_вариант_bgm:
                                        LDY ram_obj_04C0
                                        LDA tbl_81BF_bgm,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_81BF_bgm:
    .byte con_print_bgm1   ; 00
    .byte con_print_bgm2   ; 01
    .byte con_print_bgm3   ; 02
    .byte con_print_bgm4   ; 03
    .byte con_print_open1   ; 04
    .byte con_print_open2   ; 05
    .byte con_print_se01   ; 06
    .byte con_print_se02   ; 07
    .byte con_print_se03   ; 08
    .byte con_print_se04   ; 09
    .byte con_print_se05   ; 0A
    .byte con_print_se06   ; 0B
    .byte con_print_se07   ; 0C
    .byte con_print_se08   ; 0D
    .byte con_print_se09   ; 0E
    .byte con_print_se10   ; 0F
    .byte con_print_se11   ; 10
    .byte con_print_se12   ; 11




ofs_086_8060_03_team_keeps:
                                        LDA ram_btn_press
                                        AND #con_btns_AB + con_btns_LR
                                        BEQ bra_81C3_RTS
                                        AND #con_btn_Right + con_btn_A
                                        BNE bra_81C0_right
; if left
                                        LDA ram_option_team_keeps
                                        BEQ bra_81C3_RTS
                                        DEC ram_option_team_keeps
                                        BPL bra_81C2    ; jmp
bra_81C0_right:
                                        LDA ram_option_team_keeps
                                        CMP #$04
                                        BCS bra_81C3_RTS
                                        INC ram_option_team_keeps
bra_81C2:
                                        JSR sub_81A9_воспроизвести_звук_27
                                        JSR sub_81CE_отрисовать_вариант_team_keeps
bra_81C3_RTS:
                                        RTS



sub_81CE_отрисовать_вариант_team_keeps:
                                        LDY ram_option_team_keeps
                                        LDA tbl_81CF_team_keeps,Y
                                        JSR sub_0x03F6F5_написать_текст_на_экране
                                        RTS

tbl_81CF_team_keeps:
    .byte con_print_no_one   ; 00
    .byte con_print__loser   ; 01
    .byte con_print_losermix   ; 02
    .byte con_print_winner   ; 03
    .byte con_print_survival   ; 04




ofs_086_8060_04_future_expansion:
; - - - - - - -
                                        RTS



sub_8050_перемещение_по_списку_опций_и_их_подсветка:
                                        LDA ram_sum_btn_press
                                        AND #con_btns_UD
                                        BEQ bra_8053_RTS
                                        AND #con_btn_Down
                                        BNE bra_8051_down
; if up
                                        JSR sub_81D0_убрать_подсветку_опции
                                        DEC ram_obj_spd_Y_lo
                                        BPL bra_8052
                                        LDA #$05
                                        STA ram_obj_spd_Y_lo
                                        BPL bra_8052
bra_8051_down:
                                        JSR sub_81D0_убрать_подсветку_опции
                                        INC ram_obj_spd_Y_lo
                                        LDA ram_obj_spd_Y_lo
                                        CMP #$06
                                        BCC bra_8052
                                        LDA #$00
                                        STA ram_obj_spd_Y_lo
bra_8052:
                                        JSR sub_81D8_подсветить_опцию
                                        JSR sub_81A6_воспроизвести_звук_25
bra_8053_RTS:
                                        RTS



sub_8070_попытка_выйти_из_экрана_с_опциями:
                                        LDA ram_sum_btn_press
                                        AND #con_btn_Start
                                        BEQ bra_8074_RTS
loc_8071_выход_из_экрана_с_опциями:
                                        JMP loc_0x03FE68_отрисовка_экрана_главное_меню
bra_8074_RTS:
                                        RTS



sub_8061_попытка_переключить_на_страницу_с_опциями_1:
                                        LDX #$02
                                        .byte $2C   ; BIT
sub_8061_попытка_переключить_на_страницу_с_опциями_2:
                                        LDX #$03
                                        LDA ram_btn_press
                                        AND #con_btn_Select
                                        BEQ bra_8064_RTS
                                        TXA
                                        PHA
                                        JSR sub_81D0_убрать_подсветку_опции
                                        PLA
                                        TAX
                                        STX ram_0095_стадия_игры
                                        LDA ram_for_2000
                                        AND #$FC
                                        STA ram_for_2000
                                        DEX
                                        DEX
                                        TXA
                                        ORA ram_for_2000
                                        STA ram_for_2000
                                        JSR sub_81D8_подсветить_опцию
                                        JSR sub_81A9_воспроизвести_звук_27
bra_8064_RTS:
                                        RTS



sub_817C_попытка_сделать_255_контов:
C - - - - - 0x03818C 0E:817C: A5 31     LDA ram_continue
C - - - - - 0x03818E 0E:817E: 30 1C     BMI bra_819C_RTS
; if контов уже дохрена
C - - - - - 0x038190 0E:8180: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x038193 0E:8183: D0 17     BNE bra_819C_RTS
; if easy
C - - - - - 0x038195 0E:8185: A5 91     LDA ram_sum_btn_hold
C - - - - - 0x038197 0E:8187: 29 40     AND #con_btn_B
C - - - - - 0x038199 0E:8189: D0 03     BNE bra_818E
; A = 00
C - - - - - 0x03819B 0E:818B: 8D 50 01  STA ram_номер_боя_vs_team_и_переключатель
bra_818E:
; удерживать B 2 секунды
C - - - - - 0x03819E 0E:818E: EE 50 01  INC ram_номер_боя_vs_team_и_переключатель
C - - - - - 0x0381A1 0E:8191: 10 09     BPL bra_819C_RTS
; записать 255 контов
- - - - - - 0x0381A3 0E:8193: A9 FF     LDA #$FF
- - - - - - 0x0381A5 0E:8195: 85 31     STA ram_continue
- - - - - - 0x0381A7 0E:8197: A9 53     LDA #con_dpcm_warcry_turtle_1
- - - - - - 0x0381A9 0E:8199: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_819C_RTS:
C - - - - - 0x0381AF 0E:819F: 60        RTS



sub_81A6_воспроизвести_звук_25:
C - - - - - 0x0381B6 0E:81A6: A9 25     LDA #con_0x03F6AD_25
C - - - - - 0x0381B8 0E:81A8: 2C        .byte $2C   ; BIT
sub_81A9_воспроизвести_звук_27:
C - - - - - 0x0381B9 0E:81A9: A9 27     LDA #con_0x03F6AD_27
C - - - - - 0x0381BB 0E:81AB: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y




sub_81D0_убрать_подсветку_опции:
; восстановить атрибуты по умолчанию
                                        LDY ram_obj_spd_Y_lo
; опция EXIT выводится спрайтами, изменение атрибутов не требуется
                                        CPY #$05
                                        BEQ bra_81D7_RTS
                                        LDA #con_buf_mode_03
                                        JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
                                        JSR sub_81D5_вычислить_индекс_по_странице_и_опции
                                        LDA tbl_81D1_ppu,Y
                                        JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
                                        LDA tbl_81D1_ppu + $01,Y
                                        JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
                                        LDA #$08    ; счетчик
                                        JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
                                        LDA #$AA    ; атрибут
                                        JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
bra_81D7_RTS:
                                        RTS



sub_81D8_подсветить_опцию:
; запись необходимых атрибутов для подсветки конкретной опции
                                        LDY ram_obj_spd_Y_lo
                                        LDA tbl_8206,Y
                                        STA ram_obj_0500 + $01
; опция EXIT выводится спрайтами, изменение атрибутов не требуется
                                        CPY #$05
                                        BEQ bra_81DF_RTS
                                        LDA #con_buf_mode_03
                                        JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
                                        JSR sub_81D5_вычислить_индекс_по_странице_и_опции
                                        LDA tbl_81D1_ppu,Y
                                        JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
                                        LDA tbl_81D1_ppu + $01,Y
                                        JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
                                        LDA #$08    ; счетчик
                                        JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
                                        LDY ram_obj_spd_Y_lo
                                        LDA tbl_81D9_атрибут,Y
                                        JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
bra_81DF_RTS:
                                        RTS



tbl_8206:
- D 0 - - - 0x038216 0E:8206: 82        .byte $82   ; 00
- D 0 - - - 0x038217 0E:8207: 82        .byte $82   ; 01
- D 0 - - - 0x038218 0E:8208: 82        .byte $82   ; 02
- D 0 - - - 0x038219 0E:8209: 82        .byte $82   ; 03
- D 0 - - - 0x03821A 0E:820A: 82        .byte $82   ; 04
- D 0 - - - 0x03821B 0E:820B: 80        .byte $80   ; 05



tbl_81D9_атрибут:
                                        .byte $00   ; 00
                                        .byte $A0   ; 01
                                        .byte $0A   ; 02
                                        .byte $A0   ; 03
                                        .byte $0A   ; 04



sub_81D5_вычислить_индекс_по_странице_и_опции:
                                        LDA ram_0095_стадия_игры
; дополнительная проверка на случай если вызывается из обработчика 01
                                        CMP #$01
                                        BNE bra_81D6
                                        LDA #$00
                                        BEQ bra_81D7
bra_81D6:
                                        SEC
                                        SBC #$02
bra_81D7:
; * 05
                                        STA ram_0000
                                        ASL
                                        ASL
                                        ADC ram_0000
                                        ADC ram_obj_spd_Y_lo
                                        ASL
                                        TAY
                                        RTS



tbl_81D1_ppu:
; 02 страница опций 1/01 запись палитры
                                        .word $23C0 ; 00
                                        .word $23C8 ; 01
                                        .word $23C8 ; 02
                                        .word $23D0 ; 03
                                        .word $23D0 ; 04
; 03 страница опций 2
                                        .word $27C0 ; 00
                                        .word $27C8 ; 01
                                        .word $27C8 ; 02
                                        .word $27D0 ; 03
                                        .word $27D0 ; 04



sub_0x0382CB_отрисовать_турнирную_сетку:
C - - - - - 0x0382CB 0E:82BB: 20 BE DA  JSR sub_0x03DACE_удалить_все_объекты
C - - - - - 0x0382CE 0E:82BE: 20 6E DD  JSR sub_0x03DD7E
C - - - - - 0x0382D1 0E:82C1: A9 07     LDA #con_0048_07
C - - - - - 0x0382D3 0E:82C3: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x0382D6 0E:82C6: 20 6D D4  JSR sub_0x03D47D_запись_черной_палитры_в_буфер
C - - - - - 0x0382D9 0E:82C9: A2 16     LDX #con_screen_турнирная_сетка
C - - - - - 0x0382DB 0E:82CB: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
C - - - - - 0x0382DE 0E:82CE: A9 3E     LDA #con_music_bracket_winner
C - - - - - 0x0382E0 0E:82D0: A4 95     LDY ram_0095_стадия_игры
C - - - - - 0x0382E2 0E:82D2: C0 10     CPY #con_0095_tournament_финальный_экран
C - - - - - 0x0382E4 0E:82D4: F0 02     BEQ bra_82D8
C - - - - - 0x0382E6 0E:82D6: A9 46     LDA #con_music_bracket_playoff
bra_82D8:
C - - - - - 0x0382E8 0E:82D8: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x0382EB 0E:82DB: A0 04     LDY #con_chr_pair_04
C - - - - - 0x0382ED 0E:82DD: 20 1A DC  JSR sub_0x03DC2A_запись_пары_chr_bg
C - - - - - 0x0382F0 0E:82E0: A0 1A     LDY #con_chr_pair_1A
C - - - - - 0x0382F2 0E:82E2: 20 04 DC  JSR sub_0x03DC14_запись_1й_пары_chr_spr
C - - - - - 0x0382F5 0E:82E5: A9 03     LDA #$03
C - - - - - 0x0382F7 0E:82E7: 85 00     STA ram_0000
bra_82E9_loop:
C - - - - - 0x0382F9 0E:82E9: A5 00     LDA ram_0000
C - - - - - 0x0382FB 0E:82EB: 0A        ASL
C - - - - - 0x0382FC 0E:82EC: A8        TAY
C - - - - - 0x0382FD 0E:82ED: B9 9B 83  LDA tbl_839B,Y
C - - - - - 0x038300 0E:82F0: 48        PHA
C - - - - - 0x038301 0E:82F1: B9 9C 83  LDA tbl_839B + $01,Y
C - - - - - 0x038304 0E:82F4: A8        TAY
C - - - - - 0x038305 0E:82F5: 68        PLA
C - - - - - 0x038306 0E:82F6: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038309 0E:82F9: A0 00     LDY #$00
C - - - - - 0x03830B 0E:82FB: 84 01     STY ram_0001
bra_82FD_loop:
C - - - - - 0x03830D 0E:82FD: A5 00     LDA ram_0000
C - - - - - 0x03830F 0E:82FF: 0A        ASL
C - - - - - 0x038310 0E:8300: 0A        ASL
C - - - - - 0x038311 0E:8301: 65 01     ADC ram_0001
C - - - - - 0x038313 0E:8303: A8        TAY
C - - - - - 0x038314 0E:8304: B9 30 01  LDA ram_tournament_name,Y ; 0130 0131 0132 0133 0134 0135 0136 0137 0138 0139 013A 013B 013C 013D 013E 013F 
C - - - - - 0x038317 0E:8307: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03831A 0E:830A: E6 01     INC ram_0001
C - - - - - 0x03831C 0E:830C: A4 01     LDY ram_0001
C - - - - - 0x03831E 0E:830E: C0 04     CPY #$04
C - - - - - 0x038320 0E:8310: 90 EB     BCC bra_82FD_loop
C - - - - - 0x038322 0E:8312: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x038325 0E:8315: C6 00     DEC ram_0000
C - - - - - 0x038327 0E:8317: 10 D0     BPL bra_82E9_loop
C - - - - - 0x038329 0E:8319: AC 54 01  LDY ram_0154
C - - - - - 0x03832C 0E:831C: A9 03     LDA #$03
C - - - - - 0x03832E 0E:831E: 85 00     STA ram_0000
bra_8320_loop:
C - - - - - 0x038330 0E:8320: A5 00     LDA ram_0000
C - - - - - 0x038332 0E:8322: 0A        ASL
C - - - - - 0x038333 0E:8323: AA        TAX
C - - - - - 0x038334 0E:8324: BD A4 83  LDA tbl_83A3 + $01,X
C - - - - - 0x038337 0E:8327: A8        TAY
C - - - - - 0x038338 0E:8328: BD A3 83  LDA tbl_83A3,X
C - - - - - 0x03833B 0E:832B: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03833E 0E:832E: A4 00     LDY ram_0000
C - - - - - 0x038340 0E:8330: B9 55 01  LDA ram_tournament_индекс_игрока,Y ; 0155 0156 0157 0158 
C - - - - - 0x038343 0E:8333: 30 04     BMI bra_8339    ; if cpu
; if not cpu
C - - - - - 0x038345 0E:8335: B9 05 01  LDA ram_0105,Y ; 0105 
C - - - - - 0x038348 0E:8338: 2C        .byte $2C   ; BIT
bra_8339:
C - - - - - 0x038349 0E:8339: A9 04     LDA #$04
C - - - - - 0x03834B 0E:833B: A8        TAY
C - - - - - 0x03834C 0E:833C: B9 FD 83  LDA tbl_83FD_индекс,Y
C - - - - - 0x03834F 0E:833F: A8        TAY
bra_8340_loop:
C - - - - - 0x038350 0E:8340: B9 02 84  LDA tbl_8402,Y
C - - - - - 0x038353 0E:8343: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038356 0E:8346: C8        INY
C - - - - - 0x038357 0E:8347: C9 FF     CMP #$FF
C - - - - - 0x038359 0E:8349: D0 F5     BNE bra_8340_loop
C - - - - - 0x03835B 0E:834B: C6 00     DEC ram_0000
C - - - - - 0x03835D 0E:834D: 10 D1     BPL bra_8320_loop
C - - - - - 0x03835F 0E:834F: A9 05     LDA #$05
C - - - - - 0x038361 0E:8351: 85 00     STA ram_0000
C - - - - - 0x038363 0E:8353: AD 5D 01  LDA ram_tournament_биты_сетки
C - - - - - 0x038366 0E:8356: 85 01     STA ram_0001
bra_8358_loop:
C - - - - - 0x038368 0E:8358: 06 01     ASL ram_0001
C - - - - - 0x03836A 0E:835A: 90 03     BCC bra_835F
C - - - - - 0x03836C 0E:835C: 20 8A 83  JSR sub_838A
bra_835F:
C - - - - - 0x03836F 0E:835F: C6 00     DEC ram_0000
C - - - - - 0x038371 0E:8361: 10 F5     BPL bra_8358_loop
C - - - - - 0x038373 0E:8363: A9 15     LDA #con_D57A_15
C - - - - - 0x038375 0E:8365: 20 B0 D3  JSR sub_0x03D3C0_записать_палитру_для_фона
C - - - - - 0x038378 0E:8368: A9 04     LDA #$04
C - - - - - 0x03837A 0E:836A: 85 08     STA ram_0008
bra_836C_loop:
C - - - - - 0x03837C 0E:836C: A5 08     LDA ram_0008
C - - - - - 0x03837E 0E:836E: A8        TAY
; C = 0
; bzk optimize, здесь нету CLC, что меня напрягает
C - - - - - 0x03837F 0E:836F: 69 04     ADC #$04
; bzk bug? залогировано X = 08, а такого индекса для палитры не существует
; если бы писалось напрямую в ppu, то похер, это был бы tip_индекс_буфера_палитры + $00,
; но в данном случае пишется в буфер
C - - - - - 0x038381 0E:8371: AA        TAX
C - - - - - 0x038382 0E:8372: B9 4C 01  LDA ram_tournament_fighter,Y ; 014C 014D 014E 014F 0150 
C - - - - - 0x038385 0E:8375: A8        TAY
C - - - - - 0x038386 0E:8376: B9 83 83  LDA tbl_8383,Y
C - - - - - 0x038389 0E:8379: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x03838C 0E:837C: C6 08     DEC ram_0008
C - - - - - 0x03838E 0E:837E: 10 EC     BPL bra_836C_loop
C - - - - - 0x038390 0E:8380: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



tbl_8383:
- D 0 - - - 0x038393 0E:8383: 0D        .byte con_AF40_pal + $0D   ; 00
- D 0 - - - 0x038394 0E:8384: 0E        .byte con_AF40_pal + $0E   ; 01
- D 0 - - - 0x038395 0E:8385: 0F        .byte con_AF40_pal + $0F   ; 02
- D 0 - - - 0x038396 0E:8386: 10        .byte con_AF40_pal + $10   ; 03
- D 0 - - - 0x038397 0E:8387: 11        .byte con_AF40_pal + $11   ; 04
- D 0 - - - 0x038398 0E:8388: 12        .byte con_AF40_pal + $12   ; 05
- D 0 - - - 0x038399 0E:8389: 11        .byte con_AF40_pal + $11   ; 06



sub_838A:
C - - - - - 0x03839A 0E:838A: A6 00     LDX ram_0000
C - - - - - 0x03839C 0E:838C: BC 10 84  LDY tbl_8410,X
bra_838F_loop:
C - - - - - 0x03839F 0E:838F: B9 16 84  LDA tbl_8416,Y
C - - - - - 0x0383A2 0E:8392: C8        INY
C - - - - - 0x0383A3 0E:8393: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x0383A6 0E:8396: C9 FF     CMP #$FF
C - - - - - 0x0383A8 0E:8398: D0 F5     BNE bra_838F_loop
C - - - - - 0x0383AA 0E:839A: 60        RTS



tbl_839B:
- D 0 - - - 0x0383AB 0E:839B: 22 A4     .dbyt $22A4 ; 00
- D 0 - - - 0x0383AD 0E:839D: 22 AC     .dbyt $22AC ; 01
- D 0 - - - 0x0383AF 0E:839F: 22 B2     .dbyt $22B2 ; 02
- D 0 - - - 0x0383B1 0E:83A1: 22 BA     .dbyt $22BA ; 03



tbl_83A3:
- D 0 - - - 0x0383B3 0E:83A3: 22 E4     .dbyt $22E4 ; 00
- D 0 - - - 0x0383B5 0E:83A5: 22 EC     .dbyt $22EC ; 01
- D 0 - - - 0x0383B7 0E:83A7: 22 F2     .dbyt $22F2 ; 02
- D 0 - - - 0x0383B9 0E:83A9: 22 FA     .dbyt $22FA ; 03



tbl_83FD_индекс:
- D 0 - - - 0x03840D 0E:83FD: 00        .byte off_8402_00 - tbl_8402
- - - - - - 0x03840E 0E:83FE: 03        .byte off_8405_01 - tbl_8402
- - - - - - 0x03840F 0E:83FF: 06        .byte off_8408_02 - tbl_8402
- - - - - - 0x038410 0E:8400: 09        .byte off_840B_03 - tbl_8402
- D 0 - - - 0x038411 0E:8401: 0C        .byte off_840E_04 - tbl_8402



tbl_8402:
off_8402_00:
- D 0 - - - 0x038412 0E:8402: 82        .byte $82, $9A   ; 
- D 0 - - - 0x038414 0E:8404: FF        .byte $FF   ; end token

off_8405_01:
- - - - - - 0x038415 0E:8405: 83        .byte $83, $9A   ; 
- - - - - - 0x038417 0E:8407: FF        .byte $FF   ; end token

off_8408_02:
- - - - - - 0x038418 0E:8408: 84        .byte $84, $9A   ; 
- - - - - - 0x03841A 0E:840A: FF        .byte $FF   ; end token

off_840B_03:
- - - - - - 0x03841B 0E:840B: 85        .byte $85, $9A   ; 
- - - - - - 0x03841D 0E:840D: FF        .byte $FF   ; end token

off_840E_04:
- D 0 - - - 0x03841E 0E:840E: 00        .byte $00   ; 
- D 0 - - - 0x03841F 0E:840F: FF        .byte $FF   ; end token



tbl_8410:
- D 0 - - - 0x038420 0E:8410: 32        .byte off_8448_00 - tbl_8416
- D 0 - - - 0x038421 0E:8411: 28        .byte off_843E_01 - tbl_8416
- D 0 - - - 0x038422 0E:8412: 1E        .byte off_8434_02 - tbl_8416
- D 0 - - - 0x038423 0E:8413: 14        .byte off_842A_03 - tbl_8416
- D 0 - - - 0x038424 0E:8414: 0A        .byte off_8420_04 - tbl_8416
- D 0 - - - 0x038425 0E:8415: 00        .byte off_8416_05 - tbl_8416



tbl_8416:
off_8416_05:
- D 0 - - - 0x038426 0E:8416: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038427 0E:8417: 0A 22     .word $220A
- D 0 - - - 0x038429 0E:8419: 04        .byte $04, $00   ; 

- D 0 - - - 0x03842B 0E:841B: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x03842C 0E:841C: 09 22     .word $2209
- D 0 - - - 0x03842E 0E:841E: D0        .byte $D0   ; 

- D 0 - - - 0x03842F 0E:841F: FF        .byte $FF   ; end token



off_8420_04:
- D 0 - - - 0x038430 0E:8420: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038431 0E:8421: 05 22     .word $2205
- D 0 - - - 0x038433 0E:8423: 04        .byte $04, $00   ; 

- D 0 - - - 0x038435 0E:8425: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x038436 0E:8426: 09 22     .word $2209
- D 0 - - - 0x038438 0E:8428: C0        .byte $C0   ; 

- D 0 - - - 0x038439 0E:8429: FF        .byte $FF   ; end token



off_842A_03:
- D 0 - - - 0x03843A 0E:842A: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x03843B 0E:842B: 18 22     .word $2218
- D 0 - - - 0x03843D 0E:842D: 04        .byte $04, $00   ; 

- D 0 - - - 0x03843F 0E:842F: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x038440 0E:8430: 17 22     .word $2217
- D 0 - - - 0x038442 0E:8432: D0        .byte $D0   ; 

- D 0 - - - 0x038443 0E:8433: FF        .byte $FF   ; end token



off_8434_02:
- D 0 - - - 0x038444 0E:8434: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038445 0E:8435: 13 22     .word $2213
- D 0 - - - 0x038447 0E:8437: 04        .byte $04, $00   ; 

- D 0 - - - 0x038449 0E:8439: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x03844A 0E:843A: 17 22     .word $2217
- D 0 - - - 0x03844C 0E:843C: C0        .byte $C0   ; 

- D 0 - - - 0x03844D 0E:843D: FF        .byte $FF   ; end token



off_843E_01:
- D 0 - - - 0x03844E 0E:843E: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x03844F 0E:843F: 91 21     .word $2191
- D 0 - - - 0x038451 0E:8441: 07        .byte $07, $00   ; 

- D 0 - - - 0x038453 0E:8443: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x038454 0E:8444: 90 21     .word $2190
- D 0 - - - 0x038456 0E:8446: D0        .byte $D0   ; 

- D 0 - - - 0x038457 0E:8447: FF        .byte $FF   ; end token



off_8448_00:
- D 0 - - - 0x038458 0E:8448: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038459 0E:8449: 89 21     .word $2189
- D 0 - - - 0x03845B 0E:844B: 07        .byte $07, $00   ; 

- D 0 - - - 0x03845D 0E:844D: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x03845E 0E:844E: 90 21     .word $2190
- D 0 - - - 0x038460 0E:8450: C0        .byte $C0   ; 

- D 0 - - - 0x038461 0E:8451: FF        .byte $FF   ; end token



sub_8452_нарисовать_рожи_персов_на_экране_выбора_арены:
C - - - - - 0x038462 0E:8452: A2 01     LDX #$01
C - - - - - 0x038464 0E:8454: 86 00     STX ram_0002
loc_8456_main_loop:
C D 0 - - - 0x038466 0E:8456: A6 00     LDX ram_0002
C - - - - - 0x038468 0E:8458: B5 A2     LDA ram_plr_id,X
C - - - - - 0x03846A 0E:845A: 0A        ASL
C - - - - - 0x03846B 0E:845B: A8        TAY
C - - - - - 0x03846C 0E:845C: B9 FA 84  LDA tbl_84FA,Y
C - - - - - 0x03846F 0E:845F: 85 01     STA ram_0000
C - - - - - 0x038471 0E:8461: B9 FB 84  LDA tbl_84FA + $01,Y
C - - - - - 0x038474 0E:8464: 85 02     STA ram_0001
C - - - - - 0x038476 0E:8466: 8A        TXA
C - - - - - 0x03847A 0E:846A: 0A        ASL
C - - - - - 0x03847B 0E:846B: A8        TAY
C - - - - - 0x03847C 0E:846C: B9 CE 85  LDA tbl_85CE_ppu,Y
C - - - - - 0x03847F 0E:846F: 85 03     STA ram_0003
C - - - - - 0x038481 0E:8471: B9 CF 85  LDA tbl_85CE_ppu + $01,Y
C - - - - - 0x038484 0E:8474: 85 04     STA ram_0004
C - - - - - 0x038486 0E:8476: A9 00     LDA #$00
C - - - - - 0x038488 0E:8478: 85 06     STA ram_0006
loc_847A_loop:
C D 0 - - - 0x03848A 0E:847A: A4 03     LDY ram_0003
C - - - - - 0x03848C 0E:847C: A5 04     LDA ram_0004
C - - - - - 0x03848E 0E:847E: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038491 0E:8481: A9 04     LDA #$04
C - - - - - 0x038493 0E:8483: 85 07     STA ram_0007
bra_8485_loop:
C - - - - - 0x038495 0E:8485: A4 06     LDY ram_0006
C - - - - - 0x038497 0E:8487: B1 01     LDA (ram_0000),Y
C - - - - - 0x038499 0E:8489: C9 FF     CMP #$FF
C - - - - - 0x03849B 0E:848B: F0 51     BEQ bra_84DE_FF
C - - - - - 0x03849D 0E:848D: C9 C0     CMP #$C0
C - - - - - 0x03849F 0E:848F: B0 0F     BCS bra_84A0_C0_FE
; 00-BF
C - - - - - 0x0384A1 0E:8491: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x0384A4 0E:8494: E6 06     INC ram_0006
C - - - - - 0x0384A6 0E:8496: C6 07     DEC ram_0007
C - - - - - 0x0384A8 0E:8498: 10 EB     BPL bra_8485_loop
C - - - - - 0x0384AA 0E:849A: 20 CD 84  JSR sub_84CD_закрыть_строку_и_увеличить_ppu
C - - - - - 0x0384AD 0E:849D: 4C 7A 84  JMP loc_847A_loop
bra_84A0_C0_FE:
; bzk optimize, в рожах нету таких байтов
- - - - - - 0x0384B0 0E:84A0: 29 3F     AND #$3F
- - - - - - 0x0384B2 0E:84A2: 85 08     STA ram_0008
- - - - - - 0x0384B4 0E:84A4: C8        INY
- - - - - - 0x0384B5 0E:84A5: B1 01     LDA (ram_0000),Y
- - - - - - 0x0384B7 0E:84A7: 85 09     STA ram_0009
- - - - - - 0x0384B9 0E:84A9: C8        INY
- - - - - - 0x0384BA 0E:84AA: 84 06     STY ram_0006
bra_84AC_loop:
- - - - - - 0x0384BC 0E:84AC: A5 09     LDA ram_0009
- - - - - - 0x0384BE 0E:84AE: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
- - - - - - 0x0384C1 0E:84B1: E6 09     INC ram_0009
- - - - - - 0x0384C3 0E:84B3: C6 07     DEC ram_0007
- - - - - - 0x0384C5 0E:84B5: 30 06     BMI bra_84BD
- - - - - - 0x0384C7 0E:84B7: C6 08     DEC ram_0008
- - - - - - 0x0384C9 0E:84B9: F0 CA     BEQ bra_8485_loop
- - - - - - 0x0384CB 0E:84BB: D0 EF     BNE bra_84AC_loop    ; jmp
bra_84BD:
- - - - - - 0x0384CD 0E:84BD: 20 CD 84  JSR sub_84CD_закрыть_строку_и_увеличить_ppu
- - - - - - 0x0384D0 0E:84C0: A5 04     LDA ram_0004
- - - - - - 0x0384D2 0E:84C2: A4 03     LDY ram_0003
- - - - - - 0x0384D4 0E:84C4: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
- - - - - - 0x0384D7 0E:84C7: A9 04     LDA #$04
- - - - - - 0x0384D9 0E:84C9: 85 07     STA ram_0007
- - - - - - 0x0384DB 0E:84CB: D0 DF     BNE bra_84AC_loop   ; jmp
bra_84DE_FF:
C - - - - - 0x0384EE 0E:84DE: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x0384F1 0E:84E1: C6 00     DEC ram_0002
C - - - - - 0x0384F3 0E:84E3: 30 03     BMI bra_84F9_RTS
C - - - - - 0x0384F5 0E:84E5: 4C 56 84  JMP loc_8456_main_loop
bra_84F9_RTS:
C - - - - - 0x038509 0E:84F9: 60        RTS



sub_84CD_закрыть_строку_и_увеличить_ppu:
C - - - - - 0x0384DD 0E:84CD: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x0384E0 0E:84D0: 18        CLC
C - - - - - 0x0384E1 0E:84D1: A5 03     LDA ram_0003
C - - - - - 0x0384E3 0E:84D3: 69 20     ADC #< $0020
C - - - - - 0x0384E5 0E:84D5: 85 03     STA ram_0003
C - - - - - 0x0384E7 0E:84D7: A5 04     LDA ram_0004
C - - - - - 0x0384E9 0E:84D9: 69 00     ADC #> $0020
C - - - - - 0x0384EB 0E:84DB: 85 04     STA ram_0004
C - - - - - 0x0384ED 0E:84DD: 60        RTS



tbl_84FA:
- - - - - - 0x03850A 0E:84FA: 08 85     .word _off017_8508_00_leo   ; con_fighter_leo
- - - - - - 0x03850C 0E:84FC: 22 85     .word _off017_8522_01_raph   ; con_fighter_raph
- - - - - - 0x03850E 0E:84FE: 3C 85     .word _off017_853C_02_mike   ; con_fighter_mike
- - - - - - 0x038510 0E:8500: 56 85     .word _off017_8556_03_don   ; con_fighter_don
- D 0 - - - 0x038512 0E:8502: 70 85     .word _off017_8570_04_casey   ; con_fighter_casey
- D 0 - - - 0x038514 0E:8504: 8A 85     .word _off017_858A_05_hot   ; con_fighter_hot
- D 0 - - - 0x038516 0E:8506: A4 85     .word _off017_85A4_06_shred   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .word _off017_8508_07   ; con_fighter_07
                                        .word _off017_8522_08   ; con_fighter_08
                                        .word _off017_853C_09   ; con_fighter_09
                                        .word _off017_8556_0A   ; con_fighter_0A
                                        .word _off017_8570_0B   ; con_fighter_0B
                                        .word _off017_858A_0C   ; con_fighter_0C
                                        .word _off017_85A4_0D   ; con_fighter_0D
                                    .endif



_off017_8508_00_leo:
_off017_8508_07:
- - - - - - 0x038518 0E:8508: 01        .byte $01, $02, $09, $0A, $03   ; 
- - - - - - 0x03851D 0E:850D: 04        .byte $04, $0B, $0C, $0D, $0E   ; 
- - - - - - 0x038522 0E:8512: 04        .byte $04, $0F, $10, $11, $12   ; 
- - - - - - 0x038527 0E:8517: 04        .byte $04, $13, $14, $15, $16   ; 
- - - - - - 0x03852C 0E:851C: 05        .byte $05, $06, $17, $18, $19   ; 
- - - - - - 0x038531 0E:8521: FF        .byte $FF   ; end token



_off017_8522_01_raph:
_off017_8522_08:
- - - - - - 0x038532 0E:8522: 01        .byte $01, $02, $09, $0A, $03   ; 
- - - - - - 0x038537 0E:8527: 04        .byte $04, $3A, $3B, $3C, $3D   ; 
- - - - - - 0x03853C 0E:852C: 04        .byte $04, $3E, $3F, $40, $41   ; 
- - - - - - 0x038541 0E:8531: 04        .byte $04, $42, $43, $44, $45   ; 
- - - - - - 0x038546 0E:8536: 05        .byte $05, $34, $46, $47, $48   ; 
- - - - - - 0x03854B 0E:853B: FF        .byte $FF   ; end token



_off017_853C_02_mike:
_off017_853C_09:
- - - - - - 0x03854C 0E:853C: 01        .byte $01, $02, $1A, $1B, $03   ; 
- - - - - - 0x038551 0E:8541: 04        .byte $04, $1C, $1D, $1E, $08   ; 
- - - - - - 0x038556 0E:8546: 04        .byte $04, $1F, $20, $21, $22   ; 
- - - - - - 0x03855B 0E:854B: 04        .byte $04, $23, $24, $25, $26   ; 
- - - - - - 0x038560 0E:8550: 05        .byte $05, $27, $28, $29, $2A   ; 
- - - - - - 0x038565 0E:8555: FF        .byte $FF   ; end token



_off017_8556_03_don:
_off017_8556_0A:
- - - - - - 0x038566 0E:8556: 01        .byte $01, $38, $39, $02, $03   ; 
- - - - - - 0x03856B 0E:855B: 04        .byte $04, $2B, $2C, $2D, $08   ; 
- - - - - - 0x038570 0E:8560: 04        .byte $04, $2E, $2F, $30, $08   ; 
- - - - - - 0x038575 0E:8565: 04        .byte $04, $31, $32, $33, $08   ; 
- - - - - - 0x03857A 0E:856A: 05        .byte $05, $06, $35, $36, $37   ; 
- - - - - - 0x03857F 0E:856F: FF        .byte $FF   ; end token



_off017_8570_04_casey:
_off017_8570_0B:
- D 0 - I - 0x038580 0E:8570: 01        .byte $01, $02, $49, $4A, $03   ; 
- D 0 - I - 0x038585 0E:8575: 04        .byte $04, $00, $4B, $4C, $08   ; 
- D 0 - I - 0x03858A 0E:857A: 04        .byte $04, $4D, $4E, $4F, $08   ; 
- D 0 - I - 0x03858F 0E:857F: 04        .byte $04, $50, $51, $52, $08   ; 
- D 0 - I - 0x038594 0E:8584: 05        .byte $05, $53, $54, $55, $07   ; 
- D 0 - I - 0x038599 0E:8589: FF        .byte $FF   ; end token



_off017_858A_05_hot:
_off017_858A_0C:
- D 0 - I - 0x03859A 0E:858A: 01        .byte $01, $56, $57, $58, $59   ; 
- D 0 - I - 0x03859F 0E:858F: 04        .byte $04, $5A, $5B, $5C, $5D   ; 
- D 0 - I - 0x0385A4 0E:8594: 04        .byte $04, $5E, $5F, $60, $61   ; 
- D 0 - I - 0x0385A9 0E:8599: 04        .byte $04, $62, $63, $64, $65   ; 
- D 0 - I - 0x0385AE 0E:859E: 05        .byte $05, $06, $66, $67, $68   ; 
- D 0 - I - 0x0385B3 0E:85A3: FF        .byte $FF   ; end token



_off017_85A4_06_shred:
_off017_85A4_0D:
- D 0 - I - 0x0385B4 0E:85A4: 01        .byte $01, $69, $6A, $02, $03   ; 
- D 0 - I - 0x0385B9 0E:85A9: 6B        .byte $6B, $6C, $6D, $6E, $08   ; 
- D 0 - I - 0x0385BE 0E:85AE: 6F        .byte $6F, $70, $71, $72, $08   ; 
- D 0 - I - 0x0385C3 0E:85B3: 73        .byte $73, $74, $75, $76, $08   ; 
- D 0 - I - 0x0385C8 0E:85B8: 77        .byte $77, $78, $79, $7A, $7B   ; 
- D 0 - I - 0x0385CD 0E:85BD: FF        .byte $FF   ; end token



tbl_85CE_ppu:
- D 0 - - - 0x0385E2 0E:85D2: C6 20     .word $20C6 ; 00
- D 0 - - - 0x0385E4 0E:85D4: D5 20     .word $20D5 ; 01



sub_0x0385E6_обработка_экрана_continue:
C - - - - - 0x0385E6 0E:85D6: AD 30 05  LDA ram_obj_0530
C - - - - - 0x0385E9 0E:85D9: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x0385EC 0E:85DC: E8 85     .word ofs_014_85E8_00_подготовить_экран_continue
- D 0 - I - 0x0385EE 0E:85DE: 81 86     .word ofs_014_8681_01_отсчет_таймера_до_game_over
- D 0 - I - 0x0385F0 0E:85E0: 00 A9     .word ofs_014_A900_02
- D 0 - I - 0x0385F2 0E:85E2: 9C 86     .word ofs_014_869C_03_отрисовка_счетчика_до_game_over
- D 0 - I - 0x0385F4 0E:85E4: 06 87     .word ofs_014_8706_04
- D 0 - I - 0x0385F6 0E:85E6: 36 87     .word ofs_014_8736_05



ofs_014_85E8_00_подготовить_экран_continue:
C - - J - - 0x0385F8 0E:85E8: 20 C1 F7  JSR sub_9F2B_сохранить_topscore
C - - - - - 0x0385FB 0E:85EB: A9 00     LDA #$00
C - - - - - 0x0385FD 0E:85ED: 8D 11 01  STA ram_0111
C - - - - - 0x038600 0E:85F0: 8D 12 01  STA ram_0112
C - - - - - 0x038603 0E:85F3: 20 3F F0  JSR sub_0x03F04F_удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x038606 0E:85F6: A9 0D     LDA #con_0048_0D
C - - - - - 0x038608 0E:85F8: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x03860B 0E:85FB: A9 01     LDA #$01
C - - - - - 0x03860D 0E:85FD: 20 D3 F7  JSR sub_0x03F7E3_отрисовать_портреты
C - - - - - 0x038610 0E:8600: 20 E2 86  JSR sub_86E2
C - - - - - 0x038613 0E:8603: A9 09     LDA #$09
C - - - - - 0x038615 0E:8605: 8D 60 05  STA ram_obj_timer
C - - - - - 0x038618 0E:8608: A9 46     LDA #$46
C - - - - - 0x03861A 0E:860A: 8D 61 05  STA ram_obj_timer + $01
C - - - - - 0x03861D 0E:860D: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_team
C - - - - - 0x03861F 0E:860F: C9 02     CMP #$02
C - - - - - 0x038621 0E:8611: B0 51     BCS bra_8664
C - - - - - 0x038623 0E:8613: A5 31     LDA ram_continue
C - - - - - 0x038625 0E:8615: F0 4D     BEQ bra_8664
C - - - - - 0x038627 0E:8617: A9 07     LDA #con_print_continue
C - - - - - 0x038629 0E:8619: 20 E5 F6  JSR sub_0x03F6F5_написать_текст_на_экране
C - - - - - 0x03862C 0E:861C: A9 03     LDA #$03
C - - - - - 0x03862E 0E:861E: 8D 30 05  STA ram_obj_0530
C - - - - - 0x038631 0E:8621: 20 52 86  JSR sub_8652
C - - - - - 0x038634 0E:8624: 20 40 87  JSR sub_8740_нарисовать_крупные_цифры_на_экране_continue
C - - - - - 0x038637 0E:8627: A9 38     LDA #con_music_continue
C - - - - - 0x038639 0E:8629: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x03863C 0E:862C: 20 3F 86  JSR sub_863F
sub_862F:
C - - - - - 0x03863F 0E:862F: A0 00     LDY #$00
bra_8631_loop:
C - - - - - 0x038641 0E:8631: B9 39 88  LDA tbl_8839,Y
C - - - - - 0x038644 0E:8634: F0 06     BEQ bra_863C
C - - - - - 0x038646 0E:8636: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038649 0E:8639: C8        INY
C - - - - - 0x03864A 0E:863A: D0 F5     BNE bra_8631_loop
bra_863C:
C - - - - - 0x03864C 0E:863C: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



sub_863F:
C - - - - - 0x03864F 0E:863F: A9 00     LDA #$00
C - - - - - 0x038651 0E:8641: 8D 30 04  STA ram_obj_pos_X_hi
C - - - - - 0x038654 0E:8644: A9 1F     LDA #$1F
C - - - - - 0x038656 0E:8646: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x038659 0E:8649: A9 60     LDA #$60
C - - - - - 0x03865B 0E:864B: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x03865E 0E:864E: EE 00 04  INC ram_obj_anim_id
C - - - - - 0x038661 0E:8651: 60        RTS



sub_8652:
loc_8652:
C D 0 - - - 0x038662 0E:8652: A9 22     LDA #> $2235
C - - - - - 0x038664 0E:8654: A0 35     LDY #< $2235
C - - - - - 0x038666 0E:8656: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038669 0E:8659: 20 A0 81  LDA ram_continue
                                        AND #$0F
                                        CLC
C - - - - - 0x03866C 0E:865C: 69 81     ADC #$81
C - - - - - 0x03866E 0E:865E: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038671 0E:8661: 4C 5B D2  JMP loc_0x03D26B_записать_FF_в_буфер_с_чтением_индекса



bra_8664:
C - - - - - 0x038674 0E:8664: 20 3F 86  JSR sub_863F
C - - - - - 0x038677 0E:8667: 20 2F 86  JSR sub_862F
bra_866A:
C - - - - - 0x03867A 0E:866A: A9 02     LDA #$02
C - - - - - 0x03867C 0E:866C: 8D 30 05  STA ram_obj_0530
C - - - - - 0x03867F 0E:866F: A9 03     LDA #$03
C - - - - - 0x038681 0E:8671: 8D 60 05  STA ram_obj_timer
C - - - - - 0x038684 0E:8674: 8D 61 05  STA ram_obj_timer + $01
C - - - - - 0x038687 0E:8677: A9 06     LDA #con_print_game_over
C - - - - - 0x038689 0E:8679: 20 E5 F6  JSR sub_0x03F6F5_написать_текст_на_экране
C - - - - - 0x03868C 0E:867C: A9 39     LDA #con_music_game_over
C - - - - - 0x03868E 0E:867E: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y



ofs_014_8681_01_отсчет_таймера_до_game_over:
C - - J - - 0x038691 0E:8681: CE 60 05  DEC ram_obj_timer
C - - - - - 0x038694 0E:8684: 30 E4     BMI bra_866A
C - - - - - 0x038696 0E:8686: 4C BA 86  JMP loc_86BA



loc_8689:
C D 0 - - - 0x038699 0E:8689: CE 61 05  DEC ram_obj_timer + $01
C - - - - - 0x03869C 0E:868C: AD 61 05  LDA ram_obj_timer + $01
C - - - - - 0x03869F 0E:868F: 29 7F     AND #$7F
C - - - - - 0x0386A1 0E:8691: D0 08     BNE bra_869B_RTS
C - - - - - 0x0386A3 0E:8693: CE 60 05  DEC ram_obj_timer
C - - - - - 0x0386A6 0E:8696: 10 03     BPL bra_869B_RTS
C - - - - - 0x0386A8 0E:8698: 4C 58 FE  JMP loc_0x03FE68_отрисовка_экрана_главное_меню
bra_869B_RTS:
C - - - - - 0x0386AB 0E:869B: 60        RTS



ofs_014_869C_03_отрисовка_счетчика_до_game_over:
C - - J - - 0x0386AC 0E:869C: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x0386AE 0E:869E: 29 07     AND #$07
C - - - - - 0x0386B0 0E:86A0: D0 06     BNE bra_86A8
C - - - - - 0x0386B2 0E:86A2: A5 93     LDA ram_sum_btn_hold
C - - - - - 0x0386B4 0E:86A4: 29 C0     AND #con_btns_AB
C - - - - - 0x0386B6 0E:86A6: D0 05     BNE bra_86AD
bra_86A8:
C - - - - - 0x0386B8 0E:86A8: CE 61 05  DEC ram_obj_timer + $01
C - - - - - 0x0386BB 0E:86AB: D0 0D     BNE bra_86BA
bra_86AD:
C - - - - - 0x0386BD 0E:86AD: A9 60     LDA #$60
C - - - - - 0x0386BF 0E:86AF: 8D 61 05  STA ram_obj_timer + $01
C - - - - - 0x0386C2 0E:86B2: CE 60 05  DEC ram_obj_timer
C - - - - - 0x0386C5 0E:86B5: 30 31     BMI bra_86E8
C - - - - - 0x0386C7 0E:86B7: 4C 40 87  JMP loc_8740_нарисовать_крупные_цифры_на_экране_continue
bra_86BA:
loc_86BA:
C D 0 - - - 0x0386CA 0E:86BA: A5 90     LDA ram_sum_btn_press
C - - - - - 0x0386CC 0E:86BC: 29 10     AND #con_btn_Start
C - - - - - 0x0386CE 0E:86BE: F0 DB     BEQ bra_869B_RTS
C - - - - - 0x0386D0 0E:86C0: A9 28     LDA #con_0x03F6AD_28
C - - - - - 0x0386D2 0E:86C2: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x0386D5 0E:86C5: A9 80     LDA #$80
C - - - - - 0x0386D7 0E:86C7: 8D B0 04  STA ram_obj_spd_Y_lo
C - - - - - 0x0386DA 0E:86CA: C6 31     DEC ram_continue
C - - - - - 0x0386DC 0E:86CC: A9 04     LDA #$04
C - - - - - 0x0386DE 0E:86CE: 8D 30 05  STA ram_obj_0530
C - - - - - 0x0386E1 0E:86D1: CE 00 04  DEC ram_obj_anim_id
C - - - - - 0x0386E4 0E:86D4: A0 00     LDY #$00
bra_86D6_loop:
C - - - - - 0x0386E6 0E:86D6: B9 76 88  LDA tbl_8876,Y
C - - - - - 0x0386E9 0E:86D9: 30 06     BMI bra_86E1_RTS
C - - - - - 0x0386EB 0E:86DB: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x0386EE 0E:86DE: C8        INY
C - - - - - 0x0386EF 0E:86DF: D0 F5     BNE bra_86D6_loop
bra_86E1_RTS:
C - - - - - 0x0386F1 0E:86E1: 60        RTS



sub_86E2:
C - - - - - 0x0386F2 0E:86E2: A9 02     LDA #$02    ; con_AF40_pal + $02
C - - - - - 0x0386F4 0E:86E4: AA        TAX ; 02
; tip_индекс_буфера_палитры + $02
C - - - - - 0x0386F5 0E:86E5: 4C 46 D3  JMP loc_0x03D356_записать_3_цвета_в_буфер
bra_86E8:
C - - - - - 0x0386F8 0E:86E8: A0 00     LDY #$00
bra_86EA_loop:
C - - - - - 0x0386FA 0E:86EA: B9 24 88  LDA tbl_8824,Y
C - - - - - 0x0386FD 0E:86ED: C9 FF     CMP #$FF
C - - - - - 0x0386FF 0E:86EF: F0 06     BEQ bra_86F7_FF
C - - - - - 0x038701 0E:86F1: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038704 0E:86F4: C8        INY
C - - - - - 0x038705 0E:86F5: D0 F3     BNE bra_86EA_loop
bra_86F7_FF:
C - - - - - 0x038707 0E:86F7: A9 01     LDA #$01
C - - - - - 0x038709 0E:86F9: 8D 30 05  STA ram_obj_0530
C - - - - - 0x03870C 0E:86FC: A9 60     LDA #$60
C - - - - - 0x03870E 0E:86FE: 8D 60 05  STA ram_obj_timer
C - - - - - 0x038711 0E:8701: A9 27     LDA #con_0x03F6AD_27
C - - - - - 0x038713 0E:8703: 4C 8B F6  JMP loc_0x03F69B_выключить_звуки_и_записать_новый



ofs_014_8706_04:
C - - J - - 0x038716 0E:8706: A9 00     LDA #$00
C - - - - - 0x038718 0E:8708: 8D 30 04  STA ram_obj_pos_X_hi
C - - - - - 0x03871B 0E:870B: AD B0 04  LDA ram_obj_spd_Y_lo
C - - - - - 0x03871E 0E:870E: C9 80     CMP #$80
C - - - - - 0x038720 0E:8710: D0 08     BNE bra_871A
C - - - - - 0x038722 0E:8712: CE B0 04  DEC ram_obj_spd_Y_lo
C - - - - - 0x038725 0E:8715: A9 02     LDA #$02
C - - - - - 0x038727 0E:8717: 4C D3 F7  JMP loc_0x03F7E3_отрисовать_портреты
bra_871A:
C - - - - - 0x03872A 0E:871A: CE B0 04  DEC ram_obj_spd_Y_lo
C - - - - - 0x03872D 0E:871D: F0 11     BEQ bra_8730
C - - - - - 0x03872F 0E:871F: 29 08     AND #$08
C - - - - - 0x038731 0E:8721: 20 02 D2  JSR sub_0x03D212_ASLx4
C - - - - - 0x038734 0E:8724: 09 07     ORA #$07
C - - - - - 0x038736 0E:8726: 48        PHA
; con_print_continue
; возможен индекс +80
C - - - - - 0x038737 0E:8727: 20 E5 F6  JSR sub_0x03F6F5_написать_текст_на_экране
C - - - - - 0x03873A 0E:872A: 68        PLA
C - - - - - 0x03873B 0E:872B: 30 60     BMI bra_878D_RTS
C - - - - - 0x03873D 0E:872D: 4C 52 86  JMP loc_8652
bra_8730:
C - - - - - 0x038740 0E:8730: EE 30 05  INC ram_obj_0530
C - - - - - 0x038743 0E:8733: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный



ofs_014_8736_05:
C - - J - - 0x038746 0E:8736: A9 01     LDA #$01
C - - - - - 0x038748 0E:8738: 85 94     STA ram_0094_скрипт
C - - - - - 0x03874A 0E:873A: 20 3C F0  JSR sub_0x03F04C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03874D 0E:873D: 4C 09 DE  JMP loc_0x03DE19_очистить_очки_обоих_игроков



sub_8740_нарисовать_крупные_цифры_на_экране_continue:
loc_8740_нарисовать_крупные_цифры_на_экране_continue:
C D 0 - - - 0x038750 0E:8740: AD 60 05  LDA ram_obj_timer
; * 0F
C - - - - - 0x038753 0E:8743: 85 00     STA ram_0000
C - - - - - 0x038755 0E:8745: 0A        ASL
C - - - - - 0x038756 0E:8746: 85 01     STA ram_0001
C - - - - - 0x038758 0E:8748: 0A        ASL
C - - - - - 0x038759 0E:8749: 85 02     STA ram_0002
C - - - - - 0x03875B 0E:874B: 0A        ASL
C - - - - - 0x03875C 0E:874C: 65 00     ADC ram_0000
C - - - - - 0x03875E 0E:874E: 65 01     ADC ram_0001
C - - - - - 0x038760 0E:8750: 65 02     ADC ram_0002
C - - - - - 0x038762 0E:8752: 85 00     STA ram_0000
C - - - - - 0x038764 0E:8754: A9 22     LDA #> $226F
C - - - - - 0x038766 0E:8756: 85 01     STA ram_0001
C - - - - - 0x038768 0E:8758: A9 6F     LDA #< $226F
C - - - - - 0x03876A 0E:875A: 85 02     STA ram_0002
C - - - - - 0x03876C 0E:875C: A9 04     LDA #$04    ; column
C - - - - - 0x03876E 0E:875E: 85 03     STA ram_0003
bra_8760_loop:
C - - - - - 0x038770 0E:8760: A5 01     LDA ram_0001
C - - - - - 0x038772 0E:8762: A4 02     LDY ram_0002
C - - - - - 0x038774 0E:8764: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038777 0E:8767: A9 02     LDA #$02    ; row
C - - - - - 0x038779 0E:8769: 85 04     STA ram_0004
bra_876B_loop:
C - - - - - 0x03877B 0E:876B: A4 00     LDY ram_0000
C - - - - - 0x03877D 0E:876D: B9 8E 87  LDA tbl_878E,Y
C - - - - - 0x038780 0E:8770: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038783 0E:8773: E6 00     INC ram_0000
C - - - - - 0x038785 0E:8775: C6 04     DEC ram_0004
C - - - - - 0x038787 0E:8777: 10 F2     BPL bra_876B_loop
C - - - - - 0x038789 0E:8779: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x03878C 0E:877C: 18        CLC
C - - - - - 0x03878D 0E:877D: A5 02     LDA ram_0002
C - - - - - 0x03878F 0E:877F: 69 20     ADC #< $0020
C - - - - - 0x038791 0E:8781: 85 02     STA ram_0002
C - - - - - 0x038793 0E:8783: A5 01     LDA ram_0001
C - - - - - 0x038795 0E:8785: 69 00     ADC #> $0020
C - - - - - 0x038797 0E:8787: 85 01     STA ram_0001
C - - - - - 0x038799 0E:8789: C6 03     DEC ram_0003
C - - - - - 0x03879B 0E:878B: 10 D3     BPL bra_8760_loop
bra_878D_RTS:
C - - - - - 0x03879D 0E:878D: 60        RTS



tbl_878E:
; 00
- D 0 - - - 0x03879E 0E:878E: B6        .byte $B6, $79, $7A   ; 
- D 0 - - - 0x0387A1 0E:8791: 71        .byte $71, $00, $5F   ; 
- D 0 - - - 0x0387A4 0E:8794: 71        .byte $71, $00, $5F   ; 
- D 0 - - - 0x0387A7 0E:8797: 71        .byte $71, $00, $5F   ; 
- D 0 - - - 0x0387AA 0E:879A: 7E        .byte $7E, $7C, $7D   ; 
; 01
- D 0 - - - 0x0387AD 0E:879D: 00        .byte $00, $5F, $00   ; 
- D 0 - - - 0x0387B0 0E:87A0: 00        .byte $00, $5F, $00   ; 
- D 0 - - - 0x0387B3 0E:87A3: 00        .byte $00, $5F, $70   ; 
- D 0 - - - 0x0387B6 0E:87A6: 00        .byte $00, $5F, $71   ; 
- D 0 - - - 0x0387B9 0E:87A9: 00        .byte $00, $5F, $71   ; 
; 02
- D 0 - - - 0x0387BC 0E:87AC: 78        .byte $78, $79, $7A   ; 
- D 0 - - - 0x0387BF 0E:87AF: 00        .byte $00, $00, $5F   ; 
- D 0 - - - 0x0387C2 0E:87B2: 7B        .byte $7B, $7C, $7D   ; 
- D 0 - - - 0x0387C5 0E:87B5: 5F        .byte $5F, $00, $00   ; 
- D 0 - - - 0x0387C8 0E:87B8: 5F        .byte $5F, $7C, $7C   ; 
; 03
- D 0 - - - 0x0387CB 0E:87BB: 78        .byte $78, $79, $7A   ; 
- D 0 - - - 0x0387CE 0E:87BE: 00        .byte $00, $00, $5F   ; 
- D 0 - - - 0x0387D1 0E:87C1: 00        .byte $00, $7C, $7D   ; 
- D 0 - - - 0x0387D4 0E:87C4: 00        .byte $00, $7F, $B0   ; 
- D 0 - - - 0x0387D7 0E:87C7: 7B        .byte $7B, $B1, $B0   ; 
; 04
- D 0 - - - 0x0387DA 0E:87CA: 5F        .byte $5F, $79, $B2   ; 
- D 0 - - - 0x0387DD 0E:87CD: 5F        .byte $5F, $00, $B2   ; 
- D 0 - - - 0x0387E0 0E:87D0: 5F        .byte $5F, $00, $B2   ; 
- D 0 - - - 0x0387E3 0E:87D3: 78        .byte $78, $79, $B3   ; 
- D 0 - - - 0x0387E6 0E:87D6: 00        .byte $00, $00, $B2   ; 
; 05
- D 0 - - - 0x0387E9 0E:87D9: 5F        .byte $5F, $79, $79   ; 
- D 0 - - - 0x0387EC 0E:87DC: 5F        .byte $5F, $00, $00   ; 
- D 0 - - - 0x0387EF 0E:87DF: 78        .byte $78, $79, $7A   ; 
- D 0 - - - 0x0387F2 0E:87E2: 00        .byte $00, $00, $5F   ; 
- D 0 - - - 0x0387F5 0E:87E5: 7C        .byte $7C, $7C, $7D   ; 
; 06
- D 0 - - - 0x0387F8 0E:87E8: 5F        .byte $5F, $79, $B5   ; 
- D 0 - - - 0x0387FB 0E:87EB: 5F        .byte $5F, $00, $00   ; 
- D 0 - - - 0x0387FE 0E:87EE: 5F        .byte $5F, $B0, $B0   ; 
- D 0 - - - 0x038801 0E:87F1: 5F        .byte $5F, $71, $7F   ; 
- D 0 - - - 0x038804 0E:87F4: 5F        .byte $5F, $7E, $B1   ; 
; 07
- D 0 - - - 0x038807 0E:87F7: 79        .byte $79, $79, $B2   ; 
- D 0 - - - 0x03880A 0E:87FA: 00        .byte $00, $00, $B2   ; 
- D 0 - - - 0x03880D 0E:87FD: 00        .byte $00, $B7, $B2   ; 
- D 0 - - - 0x038810 0E:8800: 00        .byte $00, $7F, $B2   ; 
- D 0 - - - 0x038813 0E:8803: 00        .byte $00, $7F, $B2   ; 
; 08
- D 0 - - - 0x038816 0E:8806: B6        .byte $B6, $79, $B4   ; 
- D 0 - - - 0x038819 0E:8809: 71        .byte $71, $00, $7F   ; 
- D 0 - - - 0x03881C 0E:880C: 7E        .byte $7E, $7C, $B1   ; 
- D 0 - - - 0x03881F 0E:880F: B0        .byte $B0, $00, $7F   ; 
- D 0 - - - 0x038822 0E:8812: B0        .byte $B0, $7C, $B1   ; 
; 09
- D 0 - - - 0x038825 0E:8815: B6        .byte $B6, $79, $7A   ; 
- D 0 - - - 0x038828 0E:8818: 71        .byte $71, $00, $5F   ; 
- D 0 - - - 0x03882B 0E:881B: 7E        .byte $7E, $7C, $7D   ; 
- D 0 - - - 0x03882E 0E:881E: 00        .byte $00, $7F, $B0   ; 
- D 0 - - - 0x038831 0E:8821: 00        .byte $00, $7F, $B0   ; 



tbl_8824:
- D 0 - - - 0x038834 0E:8824: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x038835 0E:8825: 6E 22     .word $226E
- D 0 - - - 0x038837 0E:8827: 05        .byte $05, $00   ; 

- D 0 - - - 0x038839 0E:8829: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x03883A 0E:882A: 6F 22     .word $226F
- D 0 - - - 0x03883C 0E:882C: 05        .byte $05, $00   ; 

- D 0 - - - 0x03883E 0E:882E: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x03883F 0E:882F: 70 22     .word $2270
- D 0 - - - 0x038841 0E:8831: 05        .byte $05, $00   ; 

- D 0 - - - 0x038843 0E:8833: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x038844 0E:8834: 71 22     .word $2271
- D 0 - - - 0x038846 0E:8836: 05        .byte $05, $00   ; 

- D 0 - - - 0x038848 0E:8838: FF        .byte $FF   ; end token



tbl_8839:
- D 0 - - - 0x038849 0E:8839: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x03884A 0E:883A: C0 23     .word $23C0
- D 0 - - - 0x03884C 0E:883C: 0B        .byte $0B, $AA   ; 

- D 0 - - - 0x03884E 0E:883E: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x03884F 0E:883F: CD 23     .word $23CD
- D 0 - - - 0x038851 0E:8841: 06        .byte $06, $AA   ; 

- D 0 - - - 0x038853 0E:8843: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038854 0E:8844: D5 23     .word $23D5
- D 0 - - - 0x038856 0E:8846: 09        .byte $09, $AA   ; 

- D 0 - - - 0x038858 0E:8848: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038859 0E:8849: E0 23     .word $23E0
- D 0 - - - 0x03885B 0E:884B: 18        .byte $18, $AA   ; 

- D 0 - - - 0x03885D 0E:884D: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x03885E 0E:884E: 6B 20     .word $206B
- D 0 - - - 0x038860 0E:8850: 77        .byte $77, $FF   ; 

- D 0 - - - 0x038862 0E:8852: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x038863 0E:8853: 74 20     .word $2074
- D 0 - - - 0x038865 0E:8855: 78        .byte $78, $FF   ; 

- D 0 - - - 0x038867 0E:8857: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x038868 0E:8858: 8B 21     .word $218B
- D 0 - - - 0x03886A 0E:885A: 79        .byte $79, $FF   ; 

- D 0 - - - 0x03886C 0E:885C: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x03886D 0E:885D: 94 21     .word $2194
- D 0 - - - 0x03886F 0E:885F: 7A        .byte $7A, $FF   ; 

- D 0 - - - 0x038871 0E:8861: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038872 0E:8862: 6C 20     .word $206C
- D 0 - - - 0x038874 0E:8864: 08        .byte $08, $7B   ; 

- D 0 - - - 0x038876 0E:8866: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x038877 0E:8867: 8B 20     .word $208B
- D 0 - - - 0x038879 0E:8869: 08        .byte $08, $7D   ; 

- D 0 - - - 0x03887B 0E:886B: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x03887C 0E:886C: 8C 21     .word $218C
- D 0 - - - 0x03887E 0E:886E: 08        .byte $08, $7C   ; 

- D 0 - - - 0x038880 0E:8870: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x038881 0E:8871: 94 20     .word $2094
- D 0 - - - 0x038883 0E:8873: 08        .byte $08, $7E   ; 

- D 0 - - - 0x038885 0E:8875: 00        .byte $00   ; end token



tbl_8876:
- D 0 - - - 0x038886 0E:8876: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038887 0E:8877: 2C 22     .word $222C
- D 0 - - - 0x038889 0E:8879: 0C        .byte $0C, $00   ; 

- D 0 - - - 0x03888B 0E:887B: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x03888C 0E:887C: 2F 22     .word $222F
- D 0 - - - 0x03888E 0E:887E: 08        .byte $08, $00   ; 

- D 0 - - - 0x038890 0E:8880: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x038891 0E:8881: 30 22     .word $2230
- D 0 - - - 0x038893 0E:8883: 08        .byte $08, $00   ; 

- D 0 - - - 0x038895 0E:8885: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x038896 0E:8886: 31 22     .word $2231
- D 0 - - - 0x038898 0E:8888: 08        .byte $08, $00   ; 

- D 0 - - - 0x03889A 0E:888A: 05        .byte con_buf_mode_05   ; 
- D 0 - - - 0x03889B 0E:888B: 32 22     .word $2232
- D 0 - - - 0x03889D 0E:888D: 08        .byte $08, $00   ; 

- D 0 - - - 0x03889F 0E:888F: FF        .byte $FF   ; end token



sub_0x0388A0_обработка_экрана_с_выбором_арены:
C - - - - - 0x0388A0 0E:8890: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x0388A2 0E:8892: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x0388A5 0E:8895: 9F 88     .word ofs_013_889F_00_отрисовать_экран_с_выбором_уровня
- D 0 - I - 0x0388A7 0E:8897: BA 88     .word ofs_013_88BA_01_запись_палитры_и_др___осветление_экрана_с_выбором_уровня
- D 0 - I - 0x0388A9 0E:8899: 0E 89     .word ofs_013_890E_02_обработка_управления_на_экране_с_выбором_уровня
- D 0 - I - 0x0388AB 0E:889B: 8D 89     .word ofs_013_898D_03_затемнение_экрана_с_выбором_уровня
- D 0 - I - 0x0388AD 0E:889D: 9E 89     .word ofs_013_899E_04_удалить_все_объекты_и_подготовить_начальный_скрипт



ofs_013_889F_00_отрисовать_экран_с_выбором_уровня:
C - - J - - 0x0388AF 0E:889F: A4 2C     LDY ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x0388B1 0E:88A1: 88        DEY
C - - - - - 0x0388B2 0E:88A2: F0 06     BEQ bra_88AA    ; if con_gm_vs_player
C - - - - - 0x0388B4 0E:88A4: 88        DEY
C - - - - - 0x0388B5 0E:88A5: F0 03     BEQ bra_88AA    ; if con_gm_vs_cpu
; con_gm_story
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x0388B7 0E:88A7: 4C 9E 89  JMP loc_899E_удалить_все_объекты_и_подготовить_начальный_скрипт
bra_88AA:
; con_gm_vs_player
; con_gm_vs_cpu
C - - - - - 0x0388BA 0E:88AA: 20 BE DA  JSR sub_0x03DACE_удалить_все_объекты
C - - - - - 0x0388BD 0E:88AD: A2 12     LDX #con_screen_stage_select
C - - - - - 0x0388BF 0E:88AF: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
; свободный адрес 000A
C - - - - - 0x0388C2 0E:88B2: 20 2F F7  JSR sub_8452_нарисовать_рожи_персов_на_экране_выбора_арены
C - - - - - 0x0388C5 0E:88B5: E6 95     INC ram_0095_стадия_игры    ; 00 -> 01
C - - - - - 0x0388C7 0E:88B7: 4C 6D D4  JMP loc_0x03D47D_запись_черной_палитры_в_буфер



ofs_013_88BA_01_запись_палитры_и_др___осветление_экрана_с_выбором_уровня:
C - - J - - 0x0388CA 0E:88BA: A0 09     LDY #con_D57A_09
C - - - - - 0x0388CC 0E:88BC: A9 02     LDA #con_D57A_02
C - - - - - 0x0388CE 0E:88BE: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x0388D1 0E:88C1: EE 30 05  INC ram_obj_0530
C - - - - - 0x0388D4 0E:88C4: A5 2C     LDA ram_game_mode
; con_gm_vs_player
; con_gm_vs_cpu
C - - - - - 0x0388D6 0E:88C6: C9 02     CMP #$02
C - - - - - 0x0388D8 0E:88C8: D0 05     BNE bra_88CF
; con_gm_vs_cpu
C - - - - - 0x0388DA 0E:88CA: A9 12     LDA #con_print_cpu
C - - - - - 0x0388DC 0E:88CC: 20 E5 F6  JSR sub_0x03F6F5_написать_текст_на_экране
bra_88CF:
; con_gm_vs_player
C - - - - - 0x0388DF 0E:88CF: 20 25 DC  JSR sub_0x03DC35_запись_пары_chr_bg_06
C - - - - - 0x0388E2 0E:88D2: A0 02     LDY #con_chr_pair_02
C - - - - - 0x0388E4 0E:88D4: 20 04 DC  JSR sub_0x03DC14_запись_1й_пары_chr_spr
C - - - - - 0x0388E7 0E:88D7: E6 95     INC ram_0095_стадия_игры    ; 01 -> 02
C - - - - - 0x0388E9 0E:88D9: A2 00     LDX #$00    ; tip_индекс_буфера_палитры + $00
C - - - - - 0x0388EB 0E:88DB: 20 1D E3  JSR sub_E31D
C - - - - - 0x0388EE 0E:88DE: A2 02     LDX #$02    ; tip_индекс_буфера_палитры + $02
C - - - - - 0x0388F0 0E:88E0: 20 1D E3  JSR sub_E31D
C - - - - - 0x0388F3 0E:88E3: A9 05     LDA #con_0048_05
C - - - - - 0x0388F5 0E:88E5: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x0388F8 0E:88E8: 20 EF E2  JSR sub_E2EF_портреты_на_экране_выбора_уровня
C - - - - - 0x0388FB 0E:88EB: A9 2F     LDA #$2F
C - - - - - 0x0388FD 0E:88ED: 8D 12 04  STA ram_obj_pos_Y_lo + $02
C - - - - - 0x038900 0E:88F0: 8D 13 04  STA ram_obj_pos_Y_lo + $03
C - - - - - 0x038903 0E:88F3: A9 30     LDA #$30
C - - - - - 0x038905 0E:88F5: 8D 42 04  STA ram_obj_pos_X_lo + $02
C - - - - - 0x038908 0E:88F8: A9 A8     LDA #$A8
C - - - - - 0x03890A 0E:88FA: 8D 43 04  STA ram_obj_pos_X_lo + $03
C - - - - - 0x03890D 0E:88FD: A9 00     LDA #$00
C - - - - - 0x03890F 0E:88FF: 8D 32 04  STA ram_obj_pos_X_hi + $02
C - - - - - 0x038912 0E:8902: 8D 33 04  STA ram_obj_pos_X_hi + $03
C - - - - - 0x038915 0E:8905: 20 B6 89  JSR sub_89B6
C - - - - - 0x038918 0E:8908: 20 07 8A  JSR sub_8A07
C - - - - - 0x03891B 0E:890B: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



sub_E31D:
; перемещено из банка FF
C - - - - - 0x03E32D 0F:E31D: 8A        TXA
C - - - - - 0x03E32E 0F:E31E: 4A        LSR
C - - - - - 0x03E32F 0F:E31F: A8        TAY
C - - - - - 0x03E330 0F:E320: B9 A2 00  LDA ram_plr_id,Y
C - - - - - 0x03E333 0F:E323: A8        TAY
C - - - - - 0x03E334 0F:E324: B9 8C E9  LDA tbl_0x03E99C_индекс_3х_цветов_для_перса,Y
; tip_индекс_буфера_палитры + $00
; tip_индекс_буфера_палитры + $02
C - - - - - 0x03E337 0F:E327: 4C 46 D3  JMP loc_0x03D356_записать_3_цвета_в_буфер



sub_E2EF_портреты_на_экране_выбора_уровня:
; перемещено из банка FF
C - - - - - 0x03E2FF 0F:E2EF: A9 01     LDA #$01
C - - - - - 0x03E301 0F:E2F1: 85 08     STA ram_0008
bra_E2F3_loop:
C - - - - - 0x03E303 0F:E2F3: A4 08     LDY ram_0008
C - - - - - 0x03E305 0F:E2F5: 98        TYA
C - - - - - 0x03E306 0F:E2F6: 18        CLC
C - - - - - 0x03E307 0F:E2F7: 69 06     ADC #$06
C - - - - - 0x03E309 0F:E2F9: AA        TAX
C - - - - - 0x03E30A 0F:E2FA: B9 A2 00  LDA ram_plr_id,Y
C - - - - - 0x03E30D 0F:E2FD: A8        TAY
C - - - - - 0x03E30E 0F:E2FE: B9 85 E9  LDA tbl_0x03E995_индекс_3х_цветов_для_перса,Y
; tip_индекс_буфера_палитры + $06
; tip_индекс_буфера_палитры + $07
C - - - - - 0x03E311 0F:E301: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
; выбор анимации портретам на экране выбора карты
C - - - - - 0x03E314 0F:E304: A4 08     LDY ram_0008
C - - - - - 0x03E316 0F:E306: 18        CLC
C - - - - - 0x03E317 0F:E307: B9 A2 00  LDA ram_plr_id,Y
                                    .if con_новые_персы <> $00
                                        JSR sub_0x03FF82_временная_корректировка_индекса_перса
                                    .endif
C - - - - - 0x03E31A 0F:E30A: 69 1B     ADC #$1B
C - - - - - 0x03E31C 0F:E30C: 99 02 04  STA ram_obj_anim_id + $02,Y ; 0402 0403 
C - - - - - 0x03E31F 0F:E30F: 98        TYA
C - - - - - 0x03E320 0F:E310: 09 82     ORA #$82
C - - - - - 0x03E322 0F:E312: 99 02 05  STA ram_obj_0500 + $02,Y ; 0502 0503 
C - - - - - 0x03E325 0F:E315: 99 32 04  STA ram_obj_pos_X_hi + $02,Y ; 0432 0433 
C - - - - - 0x03E328 0F:E318: C6 08     DEC ram_0008
C - - - - - 0x03E32A 0F:E31A: 10 D7     BPL bra_E2F3_loop
C - - - - - 0x03E32C 0F:E31C: 60        RTS



ofs_013_890E_02_обработка_управления_на_экране_с_выбором_уровня:
C - - J - - 0x03891E 0E:890E: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x038920 0E:8910: 20 AC 89  JSR sub_89AC_мерцание_текста_push_start
C - - - - - 0x038923 0E:8913: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038925 0E:8915: 29 10     AND #con_btn_Start
C - - - - - 0x038927 0E:8917: D0 53     BNE bra_896C_завершение_выбора_опций
C - - - - - 0x038929 0E:8919: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03892B 0E:891B: 29 0C     AND #con_btns_UD
C - - - - - 0x03892D 0E:891D: F0 03     BEQ bra_8922_не_переключать
; переключение между выбором силы и выбором карты
C - - - - - 0x03892F 0E:891F: EE 30 05  INC ram_obj_0530
bra_8922_не_переключать:
C - - - - - 0x038932 0E:8922: AD 30 05  LDA ram_obj_0530
C - - - - - 0x038935 0E:8925: 4A        LSR
C - - - - - 0x038936 0E:8926: B0 24     BCS bra_894C_выбор_карты
; выбор силы (strength)
                                        LDA #$00
                                        STA ram_0000    ; счетчик измененных сил
C - - - - - 0x038938 0E:8928: A2 01     LDX #$01
bra_892A_loop:
C - - - - - 0x03893A 0E:892A: B5 8E     LDA ram_btn_press,X
C - - - - - 0x03893C 0E:892C: 29 03     AND #con_btns_LR
C - - - - - 0x03893E 0E:892E: F0 16     BEQ bra_8946_не_менять_силу
C - - - - - 0x038940 0E:8930: 29 01     AND #con_btn_Right
C - - - - - 0x038942 0E:8932: D0 02     BNE bra_8936_right
; if left
C - - - - - 0x038944 0E:8934: A9 FF     LDA #$FF
                                        .byte $2C   ; BIT
bra_8936_right:
                                        LDA #$01
                                        CLC
C - - - - - 0x038946 0E:8936: 75 A0     ADC ram_strength,X
C - - - - - 0x038948 0E:8938: C9 FC     CMP #$FB    ; min
C - - - - - 0x03894A 0E:893A: F0 0A     BEQ bra_8946_не_менять_силу
C - - - - - 0x03894C 0E:893C: C9 04     CMP #$05    ; max
C - - - - - 0x03894E 0E:893E: F0 06     BEQ bra_8946_не_менять_силу
C - - - - - 0x038950 0E:8940: 95 A0     STA ram_strength,X
                                        INC ram_0000    ; счетчик измененных сил
bra_8946_не_менять_силу:
C - - - - - 0x038956 0E:8946: CA        DEX
C - - - - - 0x038957 0E:8947: 10 E1     BPL bra_892A_loop
                                        LDA ram_0000    ; счетчик измененных сил
                                        BEQ bra_8949_пропуск_звука
; запись звука, если хотя бы 1 игрок изменил силу
                                        LDA #con_0x03F6AD_25
                                        JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_8949_пропуск_звука:
C - - - - - 0x038959 0E:8949: 4C B6 89  JMP loc_89B6
bra_894C_выбор_карты:
C - - - - - 0x03895C 0E:894C: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03895E 0E:894E: 29 03     AND #con_btns_LR
C - - - - - 0x038960 0E:8950: F0 17     BEQ bra_8969
C - - - - - 0x038962 0E:8952: 4A        LSR
C - - - - - 0x038963 0E:8953: A9 00     LDA #$00
C - - - - - 0x038965 0E:8955: B0 02     BCS bra_8959
C - - - - - 0x038967 0E:8957: A9 FF     LDA #$FF
bra_8959:
C - - - - - 0x038969 0E:8959: 6D A0 04  ADC ram_obj_spd_Y_hi
C - - - - - 0x03896C 0E:895C: 29 03     AND #$03
C - - - - - 0x03896E 0E:895E: 8D A0 04  STA ram_obj_spd_Y_hi
C - - - - - 0x038971 0E:8961: 20 07 8A  JSR sub_8A07
C - - - - - 0x038974 0E:8964: A9 27     LDA #con_0x03F6AD_27
C - - - - - 0x038976 0E:8966: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_8969:
C - - - - - 0x038979 0E:8969: 4C 00 B0  JMP loc_B000_попытка_toggle_technodrome
bra_896C_завершение_выбора_опций:
C - - - - - 0x03897C 0E:896C: 20 16 B0  LDA ram_obj_spd_Y_hi
                                        ORA ram_номер_боя_vs_team_и_переключатель
                                        TAY
C - - - - - 0x03897F 0E:896F: B9 F1 BF  LDA tbl_BFF1_конвертация_в_индекс_уровня,Y
C - - - - - 0x038982 0E:8972: 85 9E     STA ram_номер_боя_story
C - - - - - 0x038984 0E:8974: A9 14     LDA #$14
C - - - - - 0x038986 0E:8976: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x038989 0E:8979: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x03898C 0E:897C: A9 15     LDA #$15
C - - - - - 0x03898E 0E:897E: 8D 04 04  STA ram_obj_anim_id + $04
C - - - - - 0x038991 0E:8981: A9 50     LDA #$50
C - - - - - 0x038993 0E:8983: 8D A0 04  STA ram_obj_spd_Y_hi
C - - - - - 0x038996 0E:8986: E6 95     INC ram_0095_стадия_игры    ; 02 -> 03
C - - - - - 0x038998 0E:8988: A9 29     LDA #con_0x03F6AD_29
C - - - - - 0x03899A 0E:898A: 4C 8B F6  JMP loc_0x03F69B_выключить_звуки_и_записать_новый



ofs_013_898D_03_затемнение_экрана_с_выбором_уровня:
C - - J - - 0x03899D 0E:898D: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x03899F 0E:898F: 0A        ASL
C - - - - - 0x0389A0 0E:8990: 0A        ASL
C - - - - - 0x0389A1 0E:8991: 20 AC 89  JSR sub_89AC_мерцание_текста_push_start
C - - - - - 0x0389A4 0E:8994: CE A0 04  DEC ram_obj_spd_Y_hi
C - - - - - 0x0389A7 0E:8997: 10 49     BPL bra_89E2_RTS
C - - - - - 0x0389A9 0E:8999: E6 95     INC ram_0095_стадия_игры    ; 03 -> 04
C - - - - - 0x0389AB 0E:899B: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный



loc_899E_удалить_все_объекты_и_подготовить_начальный_скрипт:
ofs_013_899E_04_удалить_все_объекты_и_подготовить_начальный_скрипт:
C D 0 - - - 0x0389AE 0E:899E: 20 BE DA  JSR sub_0x03DACE_удалить_все_объекты
; A = 00
; предположительно это уже основной для 0x03E197, а не для 0x0388A2
                                       ;LDA #con_0095_очистка_1
C - - - - - 0x0389B1 0E:89A1: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x0389B3 0E:89A3: E6 94     INC ram_0094_скрипт
C - - - - - 0x0389B5 0E:89A5: A9 00     LDA #$00    ; disable irq
C - - - - - 0x0389B7 0E:89A7: 85 49     STA ram_irq_flag
C - - - - - 0x0389B9 0E:89A9: 85 4D     STA ram_004D
C - - - - - 0x0389BB 0E:89AB: 60        RTS



sub_89AC_мерцание_текста_push_start:
C - - - - - 0x0389BC 0E:89AC: 0A        ASL
C - - - - - 0x0389BD 0E:89AD: 0A        ASL
C - - - - - 0x0389BE 0E:89AE: 0A        ASL
C - - - - - 0x0389BF 0E:89AF: 29 80     AND #$80
C - - - - - 0x0389C1 0E:89B1: 09 11     ORA #$11
; con_print_push_start
; возможен индекс +80
C - - - - - 0x0389C3 0E:89B3: 4C E5 F6  JMP loc_0x03F6F5_написать_текст_на_экране



sub_89B6:
loc_89B6:
C D 0 - - - 0x0389C6 0E:89B6: 20 E3 89  JSR sub_89E3
C - - - - - 0x0389C9 0E:89B9: A2 01     LDX #$01
bra_89BB_loop:
C - - - - - 0x0389CB 0E:89BB: A9 14     LDA #$14
C - - - - - 0x0389CD 0E:89BD: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x0389D0 0E:89C0: AD 30 05  LDA ram_obj_0530
C - - - - - 0x0389D3 0E:89C3: 4A        LSR
C - - - - - 0x0389D4 0E:89C4: B0 09     BCS bra_89CF
C - - - - - 0x0389D6 0E:89C6: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x0389D8 0E:89C8: 29 08     AND #$08
C - - - - - 0x0389DA 0E:89CA: D0 03     BNE bra_89CF
C - - - - - 0x0389DC 0E:89CC: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
bra_89CF:
C - - - - - 0x0389DF 0E:89CF: B5 A0     LDA ram_strength,X
C - - - - - 0x0389E1 0E:89D1: 0A        ASL
C - - - - - 0x0389E2 0E:89D2: 0A        ASL
C - - - - - 0x0389E3 0E:89D3: 0A        ASL
C - - - - - 0x0389E4 0E:89D4: 7D 32 8A  ADC tbl_8A32,X
C - - - - - 0x0389E7 0E:89D7: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x0389EA 0E:89DA: A9 57     LDA #$57
C - - - - - 0x0389EC 0E:89DC: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x0389EF 0E:89DF: CA        DEX
C - - - - - 0x0389F0 0E:89E0: 10 D9     BPL bra_89BB_loop
bra_89E2_RTS:
C - - - - - 0x0389F2 0E:89E2: 60        RTS



sub_89E3:
C - - - - - 0x0389F3 0E:89E3: AC A0 04  LDY ram_obj_spd_Y_hi
C - - - - - 0x0389F6 0E:89E6: B9 2A 8A  LDA tbl_8A2A,Y
C - - - - - 0x0389F9 0E:89E9: 8D 44 04  STA ram_obj_pos_X_lo + $04
C - - - - - 0x0389FC 0E:89EC: B9 2E 8A  LDA tbl_8A2E,Y
C - - - - - 0x0389FF 0E:89EF: 8D 14 04  STA ram_obj_pos_Y_lo + $04
C - - - - - 0x038A02 0E:89F2: A9 15     LDA #$15
C - - - - - 0x038A04 0E:89F4: 8D 04 04  STA ram_obj_anim_id + $04
C - - - - - 0x038A07 0E:89F7: AD 30 05  LDA ram_obj_0530
C - - - - - 0x038A0A 0E:89FA: 4A        LSR
C - - - - - 0x038A0B 0E:89FB: 90 09     BCC bra_8A06_RTS
C - - - - - 0x038A0D 0E:89FD: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x038A0F 0E:89FF: 29 08     AND #$08
C - - - - - 0x038A11 0E:8A01: D0 03     BNE bra_8A06_RTS
; A = 00
C - - - - - 0x038A13 0E:8A03: 8D 04 04  STA ram_obj_anim_id + $04
bra_8A06_RTS:
C - - - - - 0x038A16 0E:8A06: 60        RTS



sub_8A07:
C - - - - - 0x038A17 0E:8A07: A0 00     LDY #$00
C - - - - - 0x038A19 0E:8A09: AE A0 04  LDX ram_obj_spd_Y_hi
C - - - - - 0x038A1C 0E:8A0C: F0 0C     BEQ bra_8A1A
bra_8A0E_loop:
C - - - - - 0x038A1E 0E:8A0E: B9 34 8A  LDA tbl_8A34,Y
C - - - - - 0x038A21 0E:8A11: F0 03     BEQ bra_8A16_00
C - - - - - 0x038A23 0E:8A13: C8        INY
C - - - - - 0x038A24 0E:8A14: D0 F8     BNE bra_8A0E_loop
bra_8A16_00:
C - - - - - 0x038A26 0E:8A16: C8        INY
C - - - - - 0x038A27 0E:8A17: CA        DEX
C - - - - - 0x038A28 0E:8A18: D0 F4     BNE bra_8A0E_loop
bra_8A1A:
bra_8A1A_loop:
C - - - - - 0x038A2A 0E:8A1A: B9 34 8A  LDA tbl_8A34,Y
C - - - - - 0x038A2D 0E:8A1D: F0 06     BEQ bra_8A25_RTS
C - - - - - 0x038A2F 0E:8A1F: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038A32 0E:8A22: C8        INY
C - - - - - 0x038A33 0E:8A23: D0 F5     BNE bra_8A1A_loop
bra_8A25_RTS:
C - - - - - 0x038A35 0E:8A25: 60        RTS



tbl_8A2A:
- D 0 - - - 0x038A3A 0E:8A2A: 40        .byte $40   ; 00
- D 0 - - - 0x038A3B 0E:8A2B: 40        .byte $40   ; 01
- D 0 - - - 0x038A3C 0E:8A2C: 80        .byte $80   ; 02
- D 0 - - - 0x038A3D 0E:8A2D: 78        .byte $78   ; 03

tbl_8A2E:
- D 0 - - - 0x038A3E 0E:8A2E: 90        .byte $90   ; 00
- D 0 - - - 0x038A3F 0E:8A2F: B0        .byte $B0   ; 01
- D 0 - - - 0x038A40 0E:8A30: B0        .byte $B0   ; 02
- D 0 - - - 0x038A41 0E:8A31: 90        .byte $90   ; 03



tbl_8A32:
- D 0 - - - 0x038A42 0E:8A32: 38        .byte $38   ; 00
- D 0 - - - 0x038A43 0E:8A33: C0        .byte $C0   ; 01



tbl_8A34:
- D 0 - - - 0x038A44 0E:8A34: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A45 0E:8A35: EA 23     .word $23EA
- D 0 - - - 0x038A47 0E:8A37: 02        .byte $02, $55   ; 

- D 0 - - - 0x038A49 0E:8A39: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A4A 0E:8A3A: EC 23     .word $23EC
- D 0 - - - 0x038A4C 0E:8A3C: 0A        .byte $0A, $FF   ; 

- D 0 - - - 0x038A4E 0E:8A3E: 00        .byte $00   ; end token



- D 0 - - - 0x038A4F 0E:8A3F: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A50 0E:8A40: EA 23     .word $23EA
- D 0 - - - 0x038A52 0E:8A42: 02        .byte $02, $FF   ; 

- D 0 - - - 0x038A54 0E:8A44: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A55 0E:8A45: F2 23     .word $23F2
- D 0 - - - 0x038A57 0E:8A47: 02        .byte $02, $55   ; 

- D 0 - - - 0x038A59 0E:8A49: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A5A 0E:8A4A: F4 23     .word $23F4
- D 0 - - - 0x038A5C 0E:8A4C: 02        .byte $02, $FF   ; 

- D 0 - - - 0x038A5E 0E:8A4E: 00        .byte $00   ; end token



- D 0 - - - 0x038A5F 0E:8A4F: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A60 0E:8A50: EA 23     .word $23EA
- D 0 - - - 0x038A62 0E:8A52: 0A        .byte $0A, $FF   ; 

- D 0 - - - 0x038A64 0E:8A54: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A65 0E:8A55: F4 23     .word $23F4
- D 0 - - - 0x038A67 0E:8A57: 02        .byte $02, $55   ; 

- D 0 - - - 0x038A69 0E:8A59: 00        .byte $00   ; end token



- D 0 - - - 0x038A6A 0E:8A5A: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A6B 0E:8A5B: EA 23     .word $23EA
- D 0 - - - 0x038A6D 0E:8A5D: 02        .byte $02, $FF   ; 

- D 0 - - - 0x038A6F 0E:8A5F: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A70 0E:8A60: EC 23     .word $23EC
- D 0 - - - 0x038A72 0E:8A62: 02        .byte $02, $55   ; 

- D 0 - - - 0x038A74 0E:8A64: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038A75 0E:8A65: F2 23     .word $23F2
- D 0 - - - 0x038A77 0E:8A67: 04        .byte $04, $FF   ; 

- D 0 - - - 0x038A79 0E:8A69: 00        .byte $00   ; end token



sub_0x038A7A_подсчитать_время_и_здоровье_после_боя:
C - - - - - 0x038A7A 0E:8A6A: AE 71 06  LDX ram_0671
C - - - - - 0x038A7D 0E:8A6D: E0 02     CPX #$02
C - - - - - 0x038A7F 0E:8A6F: B0 1F     BCS bra_8A90_RTS
C - - - - - 0x038A81 0E:8A71: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
C - - - - - 0x038A83 0E:8A73: C5 03     CMP ram_0003
C - - - - - 0x038A85 0E:8A75: B0 19     BCS bra_8A90_RTS
C - - - - - 0x038A87 0E:8A77: 4A        LSR
C - - - - - 0x038A88 0E:8A78: B0 03     BCS bra_8A7D
C - - - - - 0x038A8A 0E:8A7A: CA        DEX
C - - - - - 0x038A8B 0E:8A7B: F0 13     BEQ bra_8A90_RTS
bra_8A7D:
C - - - - - 0x038A8D 0E:8A7D: AE 71 06  LDX ram_0671
; bzk optimize, поменять 0624 на другой (пишется 00 в 0x024915)
C - - - - - 0x038A90 0E:8A80: AD 24 06  LDA ram_plr_0624
C - - - - - 0x038A93 0E:8A83: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x038A96 0E:8A86: 91 8A     .word ofs_012_8A91_00
- D 0 - I - 0x038A98 0E:8A88: D6 8A     .word ofs_012_8AD6_01_подсчет_оставшегося_времени_после_боя
- D 0 - I - 0x038A9A 0E:8A8A: 52 8B     .word ofs_012_8B52_02_завершение_подсчета_времени_после_боя
- D 0 - I - 0x038A9C 0E:8A8C: 75 8B     .word ofs_012_8B75_03_подсчет_оставшегося_здоровья_после_боя
- D 0 - I - 0x038A9E 0E:8A8E: 9B 8B     .word ofs_012_8B9B_04_завершение_подсчета_оставшегося_здоровья_после_боя
bra_8A90_RTS:
C - - - - - 0x038AA0 0E:8A90: 60        RTS



ofs_012_8A91_00:
C - - J - - 0x038AA1 0E:8A91: 20 CB 8A  JSR sub_8ACB
C - - - - - 0x038AA4 0E:8A94: A2 03     LDX #$03
bra_8A96_loop:
C - - - - - 0x038AA6 0E:8A96: 9D 2B 06  STA ram_062B,X ; 062B 062C 062D 062E 
C - - - - - 0x038AA9 0E:8A99: CA        DEX
C - - - - - 0x038AAA 0E:8A9A: 10 FA     BPL bra_8A96_loop
C - - - - - 0x038AAC 0E:8A9C: A0 00     LDY #$00
bra_8A9E_loop:
C - - - - - 0x038AAE 0E:8A9E: B9 66 8C  LDA tbl_8C66,Y
C - - - - - 0x038AB1 0E:8AA1: C9 FF     CMP #$FF
C - - - - - 0x038AB3 0E:8AA3: F0 06     BEQ bra_8AAB_FF
C - - - - - 0x038AB5 0E:8AA5: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038AB8 0E:8AA8: C8        INY
C - - - - - 0x038AB9 0E:8AA9: D0 F3     BNE bra_8A9E_loop
bra_8AAB_FF:
C - - - - - 0x038ABB 0E:8AAB: EE 24 06  INC ram_plr_0624
C - - - - - 0x038ABE 0E:8AAE: A9 15     LDA #con_print_bonus_00
C - - - - - 0x038AC0 0E:8AB0: 20 E5 F6  JSR sub_0x03F6F5_написать_текст_на_экране
C - - - - - 0x038AC3 0E:8AB3: 20 9C A5  LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
                                        BEQ bra_8AB6    ; if con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
                                        LDA ram_option_timer
bra_8AB6:   ; A = 00
C - - - - - 0x038AC6 0E:8AB6: C9 03     CMP #$03
C - - - - - 0x038AC8 0E:8AB8: B0 08     BCS bra_8AC2
C - - - - - 0x038ACA 0E:8ABA: AD 72 06  LDA ram_время_десятки
C - - - - - 0x038ACD 0E:8ABD: 0D 73 06  ORA ram_время_единицы
C - - - - - 0x038AD0 0E:8AC0: D0 13     BNE bra_8ACA_RTS
bra_8AC2:
C - - - - - 0x038AD2 0E:8AC2: A9 00     LDA #$00
C - - - - - 0x038AD4 0E:8AC4: 8D 2F 06  STA ram_062F
C - - - - - 0x038AD7 0E:8AC7: EE 24 06  INC ram_plr_0624
bra_8ACA_RTS:
C - - - - - 0x038ADA 0E:8ACA: 60        RTS



sub_8ACB:
loc_8ACB:
C D 0 - - - 0x038ADB 0E:8ACB: A9 00     LDA #$00
C - - - - - 0x038ADF 0E:8ACF: 9D 26 06  STA ram_plr_0626
                                        STA ram_plr_0626 + $01
                                        STA ram_plr_0628
                                        STA ram_plr_0628 + $01
C - - - - - 0x038AE5 0E:8AD5: 60        RTS



ofs_012_8AD6_01_подсчет_оставшегося_времени_после_боя:
C - - J - - 0x038AE6 0E:8AD6: 20 19 8B  JSR sub_8B19    ; возможен PLA PLA
C - - - - - 0x038AE9 0E:8AD9: A9 16     LDA #$16
C - - - - - 0x038AEB 0E:8ADB: 20 21 8B  JSR sub_8B21
C - - - - - 0x038AEE 0E:8ADE: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x038AF0 0E:8AE0: 29 10     AND #$10
C - - - - - 0x038AF2 0E:8AE2: 0A        ASL
C - - - - - 0x038AF3 0E:8AE3: 0A        ASL
C - - - - - 0x038AF4 0E:8AE4: 0A        ASL
C - - - - - 0x038AF5 0E:8AE5: CE 73 06  DEC ram_время_единицы
C - - - - - 0x038AF8 0E:8AE8: 10 0A     BPL bra_8AF4
C - - - - - 0x038AFA 0E:8AEA: A9 09     LDA #$09
C - - - - - 0x038AFC 0E:8AEC: 8D 73 06  STA ram_время_единицы
C - - - - - 0x038AFF 0E:8AEF: CE 72 06  DEC ram_время_десятки
C - - - - - 0x038B02 0E:8AF2: 30 3B     BMI bra_8B2F
bra_8AF4:
C - - - - - 0x038B04 0E:8AF4: 20 07 EB  JSR sub_0x03EB17_отрисовать_время_боя
C - - - - - 0x038B07 0E:8AF7: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x038B09 0E:8AF9: C9 10     CMP #$10
C - - - - - 0x038B0B 0E:8AFB: 90 09     BCC bra_8B06
                                        LDY #$00
                                        STY ram_0011
                                        LDY #$00
                                        STY ram_0012
C - - - - - 0x038B0D 0E:8AFD: A0 01     LDY #$01
C - - - - - 0x038B0F 0E:8AFF: 84 13     STY ram_0013
                                        LDY #$00
                                        STY ram_0014
C - - - - - 0x038B14 0E:8B04: F0 07     JMP loc_8B11
bra_8B06:
loc_8B06:
                                        LDY #$00
                                        STY ram_0011
                                        LDY #$00
                                        STY ram_0012
                                        LDY #$00
                                        STY ram_0013
C D 0 - - - 0x038B16 0E:8B06: A0 01     LDY #$01
C - - - - - 0x038B18 0E:8B08: 84 14     STY ram_0014
loc_8B11:
sub_8B11:
C - - - - - 0x038B21 0E:8B11: 20 A4 8B  JSR sub_8BA4_подсчитать_очки
C - - - - - 0x038B24 0E:8B14: A9 27     LDA #con_0x03F6AD_27
C - - - - - 0x038B26 0E:8B16: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y



sub_8B19:
C - - - - - 0x038B29 0E:8B19: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x038B2B 0E:8B1B: 4A        LSR
C - - - - - 0x038B2C 0E:8B1C: 90 02     BCC bra_8B20_RTS
C - - - - - 0x038B2E 0E:8B1E: 68        PLA
C - - - - - 0x038B2F 0E:8B1F: 68        PLA
bra_8B20_RTS:
C - - - - - 0x038B30 0E:8B20: 60        RTS



sub_8B21:
C - - - - - 0x038B31 0E:8B21: 85 00     STA ram_0000
C - - - - - 0x038B33 0E:8B23: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x038B35 0E:8B25: 0A        ASL
C - - - - - 0x038B36 0E:8B26: 0A        ASL
C - - - - - 0x038B37 0E:8B27: 0A        ASL
C - - - - - 0x038B38 0E:8B28: 29 80     AND #$80
C - - - - - 0x038B3A 0E:8B2A: 05 00     ORA ram_0000
; con_print__time
; con_print_life
; возможен индекс +80
C - - - - - 0x038B3C 0E:8B2C: 4C E5 F6  JMP loc_0x03F6F5_написать_текст_на_экране



bra_8B2F:
C - - - - - 0x038B3F 0E:8B2F: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x038B41 0E:8B31: C9 10     CMP #$10
C - - - - - 0x038B43 0E:8B33: 90 09     BCC bra_8B3E
C - - - - - 0x038B45 0E:8B35: 20 3E 8B  JSR sub_8B3E
C - - - - - 0x038B48 0E:8B38: A9 04     LDA #$04
C - - - - - 0x038B4A 0E:8B3A: 8D 24 06  STA ram_plr_0624
C - - - - - 0x038B4D 0E:8B3D: 60        RTS
bra_8B3E:
sub_8B3E:
C - - - - - 0x038B4E 0E:8B3E: 18        CLC
C - - - - - 0x038B4F 0E:8B3F: AD 24 06  LDA ram_plr_0624
C - - - - - 0x038B52 0E:8B42: 69 15     ADC #$15
bra_8B44:
; con_print__time
; con_print_perfect
; con_print_life
C - - - - - 0x038B54 0E:8B44: 20 E5 F6  JSR sub_0x03F6F5_написать_текст_на_экране
C - - - - - 0x038B57 0E:8B47: A9 10     LDA #$10
C - - - - - 0x038B59 0E:8B49: 8D 2F 06  STA ram_062F
bra_8B4C:
C - - - - - 0x038B5C 0E:8B4C: EE 24 06  INC ram_plr_0624
C - - - - - 0x038B5F 0E:8B4F: 4C CB 8A  JMP loc_8ACB



ofs_012_8B52_02_завершение_подсчета_времени_после_боя:
C - - - - - 0x038B64 0E:8B54: 20 40 A7  JSR sub_A740
C - - - - - 0x038B67 0E:8B57: D0 F3     BNE bra_8B4C
C - - - - - 0x038B69 0E:8B59: 20 55 8C  JSR sub_8C55    ; возможен PLA PLA
                                        LDY #$00
                                        STY ram_0011
C - - - - - 0x038B6C 0E:8B5C: A9 02     LDA #$02
C - - - - - 0x038B6E 0E:8B5E: 85 12     STA ram_0012
                                        LDY #$00
C - - - - - 0x038B74 0E:8B64: 84 13     STY ram_0013
C - - - - - 0x038B70 0E:8B60: A0 00     LDY #$00
C - - - - - 0x038B72 0E:8B62: 84 14     STY ram_0014
C - - - - - 0x038B76 0E:8B66: 20 0F 8B  JSR sub_8B11
C - - - - - 0x038B79 0E:8B69: A9 25     LDA #con_0x03F6AD_25
C - - - - - 0x038B7B 0E:8B6B: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x038B7E 0E:8B6E: EE 24 06  INC ram_plr_0624
C - - - - - 0x038B81 0E:8B71: A9 17     LDA #$17
C - - - - - 0x038B83 0E:8B73: D0 CF     BNE bra_8B44    ; jmp



ofs_012_8B75_03_подсчет_оставшегося_здоровья_после_боя:
C - - J - - 0x038B85 0E:8B75: 20 55 8C  JSR sub_8C55    ; возможен PLA PLA
C - - - - - 0x038B88 0E:8B78: 20 19 8B  JSR sub_8B19    ; возможен PLA PLA
C - - - - - 0x038B8B 0E:8B7B: A9 18     LDA #$18
C - - - - - 0x038B8D 0E:8B7D: 20 21 8B  JSR sub_8B21
C - - - - - 0x038B90 0E:8B80: AE 71 06  LDX ram_0671
C - - - - - 0x038B93 0E:8B83: 20 32 EA  JSR sub_0x03EA45
C - - - - - 0x038B96 0E:8B86: AC 28 01  LDY ram_option_health
C - - - - - 0x038B99 0E:8B89: BD 0D 01  LDA ram_plr_hp_hi,X
C - - - - - 0x038B9C 0E:8B8C: 20 52 A7  JSR sub_A752_уменьшить_здоровье
C - - - - - 0x038B9F 0E:8B8F: 90 03     BCC bra_8B94
C - - - - - 0x038BA1 0E:8B91: 4C 06 8B  JMP loc_8B06
bra_8B94:
C - - - - - 0x038BA4 0E:8B94: 20 3E 8B  JSR sub_8B3E
C - - - - - 0x038BA7 0E:8B97: 0A        ASL
; bzk bug? стремная запись в 068F
C - - - - - 0x038BA8 0E:8B98: 9D 90 05  STA ram_obj_0590,X ; 068F 
ofs_012_8B9B_04_завершение_подсчета_оставшегося_здоровья_после_боя:
C - - - - - 0x038BAB 0E:8B9B: 20 55 8C  JSR sub_8C55    ; возможен PLA PLA
C - - - - - 0x038BAE 0E:8B9E: A9 00     LDA #$00
C - - - - - 0x038BB0 0E:8BA0: 8D 24 06  STA ram_plr_0624
C - - - - - 0x038BB3 0E:8BA3: 60        RTS



sub_8BA4_подсчитать_очки:
; бряк срабатывает при подсчете очков после боя
; bzk optimize, поменять 0626-062E адреса на другие
C - - - - - 0x038BB4 0E:8BA4: 86 CF     STX ram_00CF
C - - - - - 0x038BB6 0E:8BA6: A2 03     LDX #$03
bra_8BA8_loop:
C - - - - - 0x038BB8 0E:8BA8: B5 11     LDA ram_0011,X ; 0011 0012 0013 0014 
C - - - - - 0x038BBA 0E:8BAA: 18        CLC
C - - - - - 0x038BBB 0E:8BAB: 7D 26 06  ADC ram_plr_0626,X ; 0626 0627 0628 0629 
; ram_plr_0628
C - - - - - 0x038BBE 0E:8BAE: C9 0A     CMP #$0A
C - - - - - 0x038BC0 0E:8BB0: 90 05     BCC bra_8BB7
C - - - - - 0x038BC2 0E:8BB2: FE 25 06  INC ram_0625,X ; 0628 
C - - - - - 0x038BC5 0E:8BB5: E9 0A     SBC #$0A
bra_8BB7:
C - - - - - 0x038BC7 0E:8BB7: 9D 26 06  STA ram_plr_0626,X ; 0626 0627 0628 0629 
; ram_plr_0628
C - - - - - 0x038BCA 0E:8BBA: B5 11     LDA ram_0011,X
C - - - - - 0x038BCC 0E:8BBC: 18        CLC
C - - - - - 0x038BCD 0E:8BBD: 7D 2B 06  ADC ram_062B,X ; 062B 062C 062D 062E 
C - - - - - 0x038BD0 0E:8BC0: C9 0A     CMP #$0A
C - - - - - 0x038BD2 0E:8BC2: 90 05     BCC bra_8BC9
C - - - - - 0x038BD4 0E:8BC4: FE 2A 06  INC ram_plr_062A,X ; 062D 
C - - - - - 0x038BD7 0E:8BC7: E9 0A     SBC #$0A
bra_8BC9:
C - - - - - 0x038BD9 0E:8BC9: 9D 2B 06  STA ram_062B,X ; 062B 062C 062D 062E 
C - - - - - 0x038BDC 0E:8BCC: CA        DEX
C - - - - - 0x038BDD 0E:8BCD: 10 D9     BPL bra_8BA8_loop
C - - - - - 0x038BE2 0E:8BD2: 20 5A F7  JSR sub_0x03F76A
C - - - - - 0x038BE5 0E:8BD5: A2 00     LDX #$00
bra_8BD7_loop:
C - - - - - 0x038BE7 0E:8BD7: BD 26 06  LDA ram_plr_0626,X ; 0626 0627 0628 0629 
; ram_plr_0628
C - - - - - 0x038BEA 0E:8BDA: D0 07     BNE bra_8BE3
C - - - - - 0x038BEC 0E:8BDC: E8        INX
C - - - - - 0x038BED 0E:8BDD: E0 04     CPX #$04
C - - - - - 0x038BEF 0E:8BDF: 90 F6     BCC bra_8BD7_loop
- - - - - - 0x038BF1 0E:8BE1: B0 41     BCS bra_8C24   ; jmp
bra_8BE3:
C - - - - - 0x038BF3 0E:8BE3: A9 31     LDA #$31
C - - - - - 0x038BF5 0E:8BE5: AC 24 06  LDY ram_plr_0624
C - - - - - 0x038BF8 0E:8BE8: 88        DEY
C - - - - - 0x038BF9 0E:8BE9: F0 02     BEQ bra_8BED
C - - - - - 0x038BFB 0E:8BEB: A9 51     LDA #$51
bra_8BED:
C - - - - - 0x038BFD 0E:8BED: 85 01     STA ram_0001
C - - - - - 0x038BFF 0E:8BEF: 86 00     STX ram_0000
C - - - - - 0x038C01 0E:8BF1: 8A        TXA
C - - - - - 0x038C02 0E:8BF2: 18        CLC
C - - - - - 0x038C03 0E:8BF3: 65 01     ADC ram_0001
C - - - - - 0x038C05 0E:8BF5: A8        TAY
C - - - - - 0x038C06 0E:8BF6: A9 23     LDA #$23
C - - - - - 0x038C08 0E:8BF8: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038C0B 0E:8BFB: A4 00     LDY ram_0000
bra_8BFD_loop:
C - - - - - 0x038C0D 0E:8BFD: B9 26 06  LDA ram_plr_0626,Y ; 0627 0628 0629 
; ram_plr_0628
C - - - - - 0x038C10 0E:8C00: 18        CLC
C - - - - - 0x038C11 0E:8C01: 69 81     ADC #$81
C - - - - - 0x038C13 0E:8C03: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038C16 0E:8C06: C8        INY
C - - - - - 0x038C17 0E:8C07: C0 04     CPY #$04
C - - - - - 0x038C19 0E:8C09: 90 F2     BCC bra_8BFD_loop
C - - - - - 0x038C1B 0E:8C0B: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x038C1E 0E:8C0E: 18        CLC
C - - - - - 0x038C1F 0E:8C0F: A5 01     LDA ram_0001
C - - - - - 0x038C21 0E:8C11: 69 04     ADC #< $2304
C - - - - - 0x038C23 0E:8C13: A8        TAY
C - - - - - 0x038C24 0E:8C14: A9 23     LDA #> $2304
C - - - - - 0x038C26 0E:8C16: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038C29 0E:8C19: A9 81     LDA #$81
C - - - - - 0x038C2B 0E:8C1B: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038C2E 0E:8C1E: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038C31 0E:8C21: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
bra_8C24:
C - - - - - 0x038C34 0E:8C24: A2 00     LDX #$00
bra_8C26_loop:
C - - - - - 0x038C36 0E:8C26: BD 2B 06  LDA ram_062B,X ; 062B 062C 062D 062E 
C - - - - - 0x038C39 0E:8C29: D0 07     BNE bra_8C32
C - - - - - 0x038C3B 0E:8C2B: E8        INX
C - - - - - 0x038C3C 0E:8C2C: E0 04     CPX #$04
C - - - - - 0x038C3E 0E:8C2E: 90 F6     BCC bra_8C26_loop
- - - - - - 0x038C40 0E:8C30: B0 1F     BCS bra_8C51   ; jmp
bra_8C32:
C - - - - - 0x038C42 0E:8C32: 86 00     STX ram_0000
C - - - - - 0x038C44 0E:8C34: 8A        TXA
C - - - - - 0x038C45 0E:8C35: 18        CLC
C - - - - - 0x038C46 0E:8C36: 69 71     ADC #< $2371
C - - - - - 0x038C48 0E:8C38: A8        TAY
C - - - - - 0x038C49 0E:8C39: A9 23     LDA #> $2371
C - - - - - 0x038C4B 0E:8C3B: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038C4E 0E:8C3E: A4 00     LDY ram_0000
bra_8C40_loop:
C - - - - - 0x038C50 0E:8C40: B9 2B 06  LDA ram_062B,Y ; 062C 062D 062E 
C - - - - - 0x038C53 0E:8C43: 18        CLC
C - - - - - 0x038C54 0E:8C44: 69 81     ADC #$81
C - - - - - 0x038C56 0E:8C46: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038C59 0E:8C49: C8        INY
C - - - - - 0x038C5A 0E:8C4A: C0 04     CPY #$04
C - - - - - 0x038C5C 0E:8C4C: 90 F2     BCC bra_8C40_loop
C - - - - - 0x038C5E 0E:8C4E: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
bra_8C51:
C - - - - - 0x038C61 0E:8C51: A6 CF     LDX ram_00CF
C - - - - - 0x038C64 0E:8C54: 60        RTS



sub_8C55:
C - - - - - 0x038C65 0E:8C55: AD 2F 06  LDA ram_062F
C - - - - - 0x038C68 0E:8C58: F0 0B     BEQ bra_8C65_RTS
C - - - - - 0x038C6A 0E:8C5A: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x038C6C 0E:8C5C: 29 03     AND #$03
C - - - - - 0x038C6E 0E:8C5E: D0 03     BNE bra_8C63
C - - - - - 0x038C70 0E:8C60: CE 2F 06  DEC ram_062F
bra_8C63:
C - - - - - 0x038C73 0E:8C63: 68        PLA
C - - - - - 0x038C74 0E:8C64: 68        PLA
bra_8C65_RTS:
C - - - - - 0x038C75 0E:8C65: 60        RTS



tbl_8C66:
- D 0 - - - 0x038C76 0E:8C66: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038C77 0E:8C67: 28 23     .word $2328
- D 0 - - - 0x038C79 0E:8C69: 0F        .byte $0F, $00   ; 

- D 0 - - - 0x038C7B 0E:8C6B: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038C7C 0E:8C6C: 48 23     .word $2348
- D 0 - - - 0x038C7E 0E:8C6E: 0F        .byte $0F, $00   ; 

- D 0 - - - 0x038C80 0E:8C70: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038C81 0E:8C71: 68 23     .word $2368
- D 0 - - - 0x038C83 0E:8C73: 0F        .byte $0F, $00   ; 

- D 0 - - - 0x038C85 0E:8C75: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x038C86 0E:8C76: 88 23     .word $2388
- D 0 - - - 0x038C88 0E:8C78: 0F        .byte $0F, $00   ; 

- D 0 - - - 0x038C8A 0E:8C7A: FF        .byte $FF   ; end token



sub_0x038C8B_обработчик_экрана_с_клавиатурой:
C - - - - - 0x038C8B 0E:8C7B: AD 75 06  LDA ram_0675
C - - - - - 0x038C8E 0E:8C7E: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x038C91 0E:8C81: 8D 8C     .word ofs_011_8C8D_00_отрисовать_клавиатуру
- D 0 - I - 0x038C93 0E:8C83: 18 8D     .word ofs_011_8D18_01
- D 0 - I - 0x038C95 0E:8C85: AA 8D     .word ofs_011_8DAA_02
- D 0 - I - 0x038C97 0E:8C87: 6B 8F     .word ofs_011_8F6B_03
- D 0 - I - 0x038C99 0E:8C89: C4 8C     .word ofs_011_8CC4_04
- D 0 - I - 0x038C9B 0E:8C8B: 03 90     .word ofs_011_9003_05



ofs_011_8C8D_00_отрисовать_клавиатуру:
C - - J - - 0x038C9D 0E:8C8D: A2 20     LDX #con_screen_клавиатура
C - - - - - 0x038C9F 0E:8C8F: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
C - - - - - 0x038CA2 0E:8C92: 20 BE DA  JSR sub_0x03DACE_удалить_все_объекты
; A = 00
C - - - - - 0x038CA5 0E:8C95: 8D 54 01  STA ram_0154
C - - - - - 0x038CA8 0E:8C98: 8D 5D 01  STA ram_tournament_биты_сетки
C - - - - - 0x038CAB 0E:8C9B: A9 54     LDA #con_chr_bank_spr + $54
C - - - - - 0x038CAD 0E:8C9D: 85 37     STA ram_chr_bank_spr + $03
C - - - - - 0x038CAF 0E:8C9F: A9 00     LDA #$00
C - - - - - 0x038CB3 0E:8CA3: 99 76 06  STA ram_0676
                                        STA ram_0677
                                        STA ram_0678
                                        STA ram_plr_067A
                                        STA ram_plr_067A + $01
                                        STA ram_tournament_fighter
                                        STA ram_tournament_fighter + $01
                                        STA ram_tournament_fighter + $02
                                        STA ram_tournament_fighter + $03
; очистить 0130-014B
C - - - - - 0x038CB9 0E:8CA9: A2 1F     LDX #$1B
bra_8CAB_loop:
C - - - - - 0x038CBB 0E:8CAB: 9D 30 01  STA ram_tournament_name,X
C - - - - - 0x038CBE 0E:8CAE: CA        DEX
C - - - - - 0x038CBF 0E:8CAF: 10 FA     BPL bra_8CAB_loop
C - - - - - 0x038CC1 0E:8CB1: A2 03     LDX #$03
bra_8CB3_loop:
C - - - - - 0x038CC3 0E:8CB3: 8A        TXA
C - - - - - 0x038CC4 0E:8CB4: 9D 55 01  STA ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 
C - - - - - 0x038CC7 0E:8CB7: CA        DEX
C - - - - - 0x038CC8 0E:8CB8: 10 F9     BPL bra_8CB3_loop
C - - - - - 0x038CCA 0E:8CBA: A0 14     LDY #con_chr_pair_14
C - - - - - 0x038CCC 0E:8CBC: 20 1A DC  JSR sub_0x03DC2A_запись_пары_chr_bg
C - - - - - 0x038CCF 0E:8CBF: A9 38     LDA #con_music_continue ; keyboard
C - - - - - 0x038CD1 0E:8CC1: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
ofs_011_8CC4_04:
C - - - - - 0x038CD4 0E:8CC4: A9 00     LDA #$00
C - - - - - 0x038CD6 0E:8CC6: 8D D0 05  STA ram_obj_05D0
C - - - - - 0x038CD9 0E:8CC9: 8D C0 05  STA ram_obj_anim_timer
C - - - - - 0x038CDC 0E:8CCC: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x038CDF 0E:8CCF: 8D 77 06  STA ram_0677
C - - - - - 0x038CE2 0E:8CD2: A9 0B     LDA #con_D57A_0B
C - - - - - 0x038CE4 0E:8CD4: A8        LDY #con_D57A_0B
C - - - - - 0x038CE5 0E:8CD5: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x038CE8 0E:8CD8: 20 58 90  JSR sub_9058
C - - - - - 0x038CEB 0E:8CDB: A9 20     LDA #> $2083
C - - - - - 0x038CED 0E:8CDD: A0 83     LDY #< $2083
C - - - - - 0x038CEF 0E:8CDF: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038CF2 0E:8CE2: 18        CLC
C - - - - - 0x038CF3 0E:8CE3: AD 76 06  LDA ram_0676
C - - - - - 0x038CF6 0E:8CE6: 69 82     ADC #$82
C - - - - - 0x038CF8 0E:8CE8: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038CFB 0E:8CEB: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x038CFE 0E:8CEE: A9 21     LDA #> $21A8
C - - - - - 0x038D00 0E:8CF0: A0 A8     LDY #< $21A8
C - - - - - 0x038D02 0E:8CF2: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038D05 0E:8CF5: A9 03     LDA #$03
C - - - - - 0x038D07 0E:8CF7: 9D FD 02  STA ram_ppu_buffer - $03,X
C - - - - - 0x038D0A 0E:8CFA: A9 04     LDA #$04
C - - - - - 0x038D0C 0E:8CFC: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038D0F 0E:8CFF: A9 00     LDA #$00
C - - - - - 0x038D11 0E:8D01: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038D14 0E:8D04: A9 01     LDA #$01
C - - - - - 0x038D16 0E:8D06: 8D 75 06  STA ram_0675
C - - - - - 0x038D19 0E:8D09: 20 24 8F  JSR sub_8F24
C - - - - - 0x038D1C 0E:8D0C: 20 46 8D  JSR sub_8D46
C - - - - - 0x038D1F 0E:8D0F: 20 41 E1  JSR sub_0x03E151_подготовить_осветление_из_черного_в_цветной
sub_8D12:
C - - - - - 0x038D22 0E:8D12: A0 1E     LDY #$1E
C - - - - - 0x038D24 0E:8D14: 8C 00 06  STY ram_plr_0600
bra_8D17_RTS:
C - - - - - 0x038D27 0E:8D17: 60        RTS



ofs_011_8D18_01:
C - - J - - 0x038D28 0E:8D18: AE 76 06  LDX ram_0676
C - - - - - 0x038D2B 0E:8D1B: 86 A8     STX ram_local_obj_index
C - - - - - 0x038D2D 0E:8D1D: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038D2F 0E:8D1F: A8        TAY
C - - - - - 0x038D30 0E:8D20: 29 90     AND #con_btn_A + con_btn_Start
C - - - - - 0x038D32 0E:8D22: D0 5C     BNE bra_8D80
C - - - - - 0x038D34 0E:8D24: 98        TYA
C - - - - - 0x038D35 0E:8D25: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038D37 0E:8D27: F0 10     BEQ bra_8D39
C - - - - - 0x038D39 0E:8D29: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 
C - - - - - 0x038D3C 0E:8D2C: 49 80     EOR #$80    ; toggle cpu flag
C - - - - - 0x038D3E 0E:8D2E: 9D 55 01  STA ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 
C - - - - - 0x038D41 0E:8D31: 20 46 8D  JSR sub_8D46
C - - - - - 0x038D44 0E:8D34: A9 25     LDA #con_0x03F6AD_25
C - - - - - 0x038D46 0E:8D36: 20 94 F6  JSR sub_0x03F6A4_записать_звук
bra_8D39:
C - - - - - 0x038D49 0E:8D39: 20 24 8F  JSR sub_8F24
C - - - - - 0x038D4C 0E:8D3C: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x038D4E 0E:8D3E: 29 08     AND #$08
C - - - - - 0x038D50 0E:8D40: D0 D5     BNE bra_8D17_RTS
C - - - - - 0x038D52 0E:8D42: 8D 02 04  STA ram_obj_anim_id + $02
C - - - - - 0x038D55 0E:8D45: 60        RTS



sub_8D46:
C - - - - - 0x038D56 0E:8D46: A0 00     LDY #$00
C - - - - - 0x038D58 0E:8D48: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 
C - - - - - 0x038D5B 0E:8D4B: 48        PHA
C - - - - - 0x038D5C 0E:8D4C: 10 14     BPL bra_8D62    ; if not cpu
; if cpu
C - - - - - 0x038D5E 0E:8D4E: 8A        TXA
C - - - - - 0x038D5F 0E:8D4F: 0A        ASL
C - - - - - 0x038D60 0E:8D50: 0A        ASL
C - - - - - 0x038D61 0E:8D51: A8        TAY
C - - - - - 0x038D62 0E:8D52: A9 00     LDA #$00
C - - - - - 0x038D64 0E:8D54: 99 30 01  STA ram_tournament_name,Y ; 0130 0134 0138 013C 
C - - - - - 0x038D67 0E:8D57: 99 31 01  STA ram_tournament_name + $01,Y ; 0131 0135 0139 013D 
C - - - - - 0x038D6A 0E:8D5A: 99 32 01  STA ram_tournament_name + $02,Y ; 0132 0136 013A 013E 
C - - - - - 0x038D6D 0E:8D5D: 99 33 01  STA ram_tournament_name + $03,Y ; 0133 0137 013B 013F 
C - - - - - 0x038D70 0E:8D60: A0 06     LDY #$06
bra_8D62:
bra_8D62_loop:
C - - - - - 0x038D72 0E:8D62: B9 90 90  LDA tbl_9090,Y
C - - - - - 0x038D75 0E:8D65: C9 FE     CMP #$FE
C - - - - - 0x038D77 0E:8D67: F0 06     BEQ bra_8D6F_FE
C - - - - - 0x038D79 0E:8D69: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038D7C 0E:8D6C: C8        INY
C - - - - - 0x038D7D 0E:8D6D: D0 F3     BNE bra_8D62_loop
bra_8D6F_FE:
C - - - - - 0x038D7F 0E:8D6F: 68        PLA
C - - - - - 0x038D80 0E:8D70: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x038D83 0E:8D73: A8        TAY
bra_8D74:
C - - - - - 0x038D84 0E:8D74: B9 81 90  LDA tbl_9081,Y
C - - - - - 0x038D87 0E:8D77: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038D8A 0E:8D7A: C8        INY
C - - - - - 0x038D8B 0E:8D7B: C9 FF     CMP #$FF
C - - - - - 0x038D8D 0E:8D7D: D0 F5     BNE bra_8D74
; FF
bra_8D7F_RTS:
C - - - - - 0x038D8F 0E:8D7F: 60        RTS
bra_8D80:
C - - - - - 0x038D90 0E:8D80: A9 00     LDA #$00
C - - - - - 0x038D92 0E:8D82: 8D 77 06  STA ram_0677
C - - - - - 0x038D95 0E:8D85: 8D 78 06  STA ram_0678
C - - - - - 0x038D98 0E:8D88: EE 75 06  INC ram_0675
C - - - - - 0x038D9B 0E:8D8B: 20 04 8F  JSR sub_8F04
C - - - - - 0x038D9E 0E:8D8E: 20 24 8F  JSR sub_8F24
C - - - - - 0x038DA1 0E:8D91: A9 28     LDA #con_0x03F6AD_28
C - - - - - 0x038DA3 0E:8D93: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x038DA6 0E:8D96: AE 76 06  LDX ram_0676
C - - - - - 0x038DA9 0E:8D99: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 
C - - - - - 0x038DAC 0E:8D9C: 10 E1     BPL bra_8D7F_RTS    ; if not cpu
; if cpu
C - - - - - 0x038DAE 0E:8D9E: 4C 44 8F  JMP loc_8F44



bra_8DA1:
C - - - - - 0x038DB1 0E:8DA1: 4C E2 8E  JMP loc_8EE2



bra_8DA4:
C - - - - - 0x038DB4 0E:8DA4: 4C 44 8F  JMP loc_8F44



bra_8DA7:
C - - - - - 0x038DB7 0E:8DA7: 4C 65 8E  JMP loc_8E65



ofs_011_8DAA_02:
C - - J - - 0x038DBA 0E:8DAA: AD 77 06  LDA ram_0677
C - - - - - 0x038DBD 0E:8DAD: 0A        ASL
C - - - - - 0x038DBE 0E:8DAE: 0A        ASL
C - - - - - 0x038DBF 0E:8DAF: 0A        ASL
C - - - - - 0x038DC0 0E:8DB0: 69 44     ADC #$44
C - - - - - 0x038DC2 0E:8DB2: 8D 43 04  STA ram_obj_pos_X_lo + $03
C - - - - - 0x038DC5 0E:8DB5: A9 68     LDA #$68
C - - - - - 0x038DC7 0E:8DB7: 8D 13 04  STA ram_obj_pos_Y_lo + $03
C - - - - - 0x038DCA 0E:8DBA: AE 76 06  LDX ram_0676
C - - - - - 0x038DCD 0E:8DBD: 86 A8     STX ram_local_obj_index
C - - - - - 0x038DCF 0E:8DBF: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038DD1 0E:8DC1: A8        TAY
C - - - - - 0x038DD2 0E:8DC2: 29 10     AND #con_btn_Start
C - - - - - 0x038DD4 0E:8DC4: D0 DE     BNE bra_8DA4
C - - - - - 0x038DD6 0E:8DC6: 98        TYA
C - - - - - 0x038DD7 0E:8DC7: 29 80     AND #con_btn_A
C - - - - - 0x038DD9 0E:8DC9: D0 DC     BNE bra_8DA7
C - - - - - 0x038DDB 0E:8DCB: 98        TYA
C - - - - - 0x038DDC 0E:8DCC: 29 40     AND #con_btn_B
C - - - - - 0x038DDE 0E:8DCE: D0 D1     BNE bra_8DA1
C - - - - - 0x038DE0 0E:8DD0: 98        TYA
C - - - - - 0x038DE1 0E:8DD1: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038DE3 0E:8DD3: D0 25     BNE bra_8DFA
C - - - - - 0x038DE5 0E:8DD5: A5 93     LDA ram_sum_btn_hold
C - - - - - 0x038DE7 0E:8DD7: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038DE9 0E:8DD9: F0 07     BEQ bra_8DE2
C - - - - - 0x038DEB 0E:8DDB: CE 00 06  DEC ram_plr_0600
C - - - - - 0x038DEE 0E:8DDE: 10 05     BPL bra_8DE5
- - - - - - 0x038DF0 0E:8DE0: 30 13     BMI bra_8DF5   ; jmp
bra_8DE2:
C - - - - - 0x038DF2 0E:8DE2: 20 12 8D  JSR sub_8D12
bra_8DE5:
C - - - - - 0x038DF5 0E:8DE5: 20 04 8F  JSR sub_8F04
C - - - - - 0x038DF8 0E:8DE8: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x038DFA 0E:8DEA: 29 10     AND #$10
C - - - - - 0x038DFC 0E:8DEC: D0 06     BNE bra_8DF4_RTS
C - - - - - 0x038DFE 0E:8DEE: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x038E01 0E:8DF1: 8D 01 04  STA ram_obj_anim_id + $01
bra_8DF4_RTS:
C - - - - - 0x038E04 0E:8DF4: 60        RTS



bra_8DF5:
- - - - - - 0x038E05 0E:8DF5: A9 08     LDA #$08
- - - - - - 0x038E07 0E:8DF7: 8D 00 06  STA ram_plr_0600
bra_8DFA:
C - - - - - 0x038E0A 0E:8DFA: A9 26     LDA #con_0x03F6AD_26
C - - - - - 0x038E0C 0E:8DFC: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x038E0F 0E:8DFF: A5 93     LDA ram_sum_btn_hold
C - - - - - 0x038E11 0E:8E01: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038E13 0E:8E03: A0 FF     LDY #$FF
bra_8E05_loop:
C - - - - - 0x038E15 0E:8E05: C8        INY
C - - - - - 0x038E16 0E:8E06: 4A        LSR
C - - - - - 0x038E17 0E:8E07: 90 FC     BCC bra_8E05_loop
C - - - - - 0x038E19 0E:8E09: B9 69 90  LDA tbl_9069,Y
C - - - - - 0x038E1C 0E:8E0C: 6D 78 06  ADC ram_0678
C - - - - - 0x038E1F 0E:8E0F: 85 00     STA ram_0000
C - - - - - 0x038E21 0E:8E11: 48        PHA
C - - - - - 0x038E22 0E:8E12: A5 00     LDA ram_0000
C - - - - - 0x038E24 0E:8E14: 29 0F     AND #$0F
C - - - - - 0x038E26 0E:8E16: 85 01     STA ram_0001
C - - - - - 0x038E28 0E:8E18: 68        PLA
C - - - - - 0x038E29 0E:8E19: 10 0A     BPL bra_8E25
C - - - - - 0x038E2B 0E:8E1B: C9 FF     CMP #$FF
C - - - - - 0x038E2D 0E:8E1D: F0 23     BEQ bra_8E42
C - - - - - 0x038E2F 0E:8E1F: A5 01     LDA ram_0001
C - - - - - 0x038E31 0E:8E21: 09 20     ORA #$20
C - - - - - 0x038E33 0E:8E23: 85 00     STA ram_0000
bra_8E25:
C - - - - - 0x038E35 0E:8E25: C9 30     CMP #$30
C - - - - - 0x038E37 0E:8E27: 90 04     BCC bra_8E2D
C - - - - - 0x038E39 0E:8E29: A5 01     LDA ram_0001
C - - - - - 0x038E3B 0E:8E2B: 85 00     STA ram_0000
bra_8E2D:
C - - - - - 0x038E3D 0E:8E2D: A5 00     LDA ram_0000
C - - - - - 0x038E3F 0E:8E2F: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x038E42 0E:8E32: A8        TAY
C - - - - - 0x038E43 0E:8E33: B9 6D 90  LDA tbl_906D,Y
C - - - - - 0x038E46 0E:8E36: 85 02     STA ram_0002
C - - - - - 0x038E48 0E:8E38: C5 01     CMP ram_0001
C - - - - - 0x038E4A 0E:8E3A: B0 21     BCS bra_8E5D
C - - - - - 0x038E4C 0E:8E3C: A5 01     LDA ram_0001
C - - - - - 0x038E4E 0E:8E3E: C9 0F     CMP #$0F
C - - - - - 0x038E50 0E:8E40: D0 15     BNE bra_8E57
bra_8E42:
C - - - - - 0x038E52 0E:8E42: A5 00     LDA ram_0000
C - - - - - 0x038E54 0E:8E44: 69 0F     ADC #$0F
C - - - - - 0x038E56 0E:8E46: 29 F0     AND #$F0
C - - - - - 0x038E58 0E:8E48: 85 03     STA ram_0003
C - - - - - 0x038E5A 0E:8E4A: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x038E5D 0E:8E4D: A8        TAY
C - - - - - 0x038E5E 0E:8E4E: B9 6D 90  LDA tbl_906D,Y
C - - - - - 0x038E61 0E:8E51: 05 03     ORA ram_0003
C - - - - - 0x038E63 0E:8E53: 85 00     STA ram_0000
C - - - - - 0x038E65 0E:8E55: D0 06     BNE bra_8E5D
bra_8E57:
C - - - - - 0x038E67 0E:8E57: A5 00     LDA ram_0000
C - - - - - 0x038E69 0E:8E59: 29 F0     AND #$F0
C - - - - - 0x038E6B 0E:8E5B: 85 00     STA ram_0000
bra_8E5D:
C - - - - - 0x038E6D 0E:8E5D: A5 00     LDA ram_0000
C - - - - - 0x038E6F 0E:8E5F: 8D 78 06  STA ram_0678
C - - - - - 0x038E72 0E:8E62: 4C 04 8F  JMP loc_8F04



loc_8E65:
C D 0 - - - 0x038E75 0E:8E65: A9 25     LDA #con_0x03F6AD_25
C - - - - - 0x038E77 0E:8E67: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x038E7A 0E:8E6A: 8A        TXA
C - - - - - 0x038E7B 0E:8E6B: 0A        ASL
C - - - - - 0x038E7C 0E:8E6C: 0A        ASL
C - - - - - 0x038E7D 0E:8E6D: 6D 77 06  ADC ram_0677
C - - - - - 0x038E80 0E:8E70: AA        TAX
C - - - - - 0x038E81 0E:8E71: AD 78 06  LDA ram_0678
C - - - - - 0x038E84 0E:8E74: C9 2D     CMP #$2D
C - - - - - 0x038E86 0E:8E76: D0 03     BNE bra_8E7B
C - - - - - 0x038E88 0E:8E78: 4C 44 8F  JMP loc_8F44
bra_8E7B:
C - - - - - 0x038E8B 0E:8E7B: C9 2C     CMP #$2C
C - - - - - 0x038E8D 0E:8E7D: D0 04     BNE bra_8E83
- - - - - - 0x038E8F 0E:8E7F: A9 80     LDA #$80
- - - - - - 0x038E91 0E:8E81: D0 10     BNE bra_8E93   ; jmp
bra_8E83:
C - - - - - 0x038E93 0E:8E83: 48        PHA
C - - - - - 0x038E94 0E:8E84: 29 0F     AND #$0F
C - - - - - 0x038E96 0E:8E86: 85 00     STA ram_0000
C - - - - - 0x038E98 0E:8E88: 68        PLA
C - - - - - 0x038E99 0E:8E89: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x038E9C 0E:8E8C: A8        TAY
C - - - - - 0x038E9D 0E:8E8D: B9 70 90  LDA tbl_9070,Y
C - - - - - 0x038EA0 0E:8E90: 18        CLC
C - - - - - 0x038EA1 0E:8E91: 65 00     ADC ram_0000
bra_8E93:
C - - - - - 0x038EA3 0E:8E93: 9D 30 01  STA ram_tournament_name,X ; 0130 0131 0132 013C 013D 013E 013F 
C - - - - - 0x038EA6 0E:8E96: 20 B1 8E  JSR sub_8EB1
C - - - - - 0x038EA9 0E:8E99: EE 77 06  INC ram_0677
C - - - - - 0x038EAC 0E:8E9C: AD 77 06  LDA ram_0677
C - - - - - 0x038EAF 0E:8E9F: C9 04     CMP #$04
C - - - - - 0x038EB1 0E:8EA1: 90 0D     BCC bra_8EB0_RTS
C - - - - - 0x038EB3 0E:8EA3: A9 03     LDA #$03
C - - - - - 0x038EB5 0E:8EA5: 8D 77 06  STA ram_0677
C - - - - - 0x038EB8 0E:8EA8: A9 2D     LDA #$2D
C - - - - - 0x038EBA 0E:8EAA: 8D 78 06  STA ram_0678
C - - - - - 0x038EBD 0E:8EAD: 4C 04 8F  JMP loc_8F04
bra_8EB0_RTS:
C - - - - - 0x038EC0 0E:8EB0: 60        RTS



sub_8EB1:
C - - - - - 0x038EC1 0E:8EB1: 18        CLC
C - - - - - 0x038EC2 0E:8EB2: AD 77 06  LDA ram_0677
C - - - - - 0x038EC5 0E:8EB5: 69 A8     ADC #< $21A8
C - - - - - 0x038EC7 0E:8EB7: A8        TAY
C - - - - - 0x038EC8 0E:8EB8: A9 21     LDA #> $21A8
C - - - - - 0x038ECA 0E:8EBA: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x038ECD 0E:8EBD: AD 78 06  LDA ram_0678
C - - - - - 0x038ED0 0E:8EC0: C9 2D     CMP #$2D
C - - - - - 0x038ED2 0E:8EC2: F0 04     BEQ bra_8EC8
C - - - - - 0x038ED4 0E:8EC4: C9 2C     CMP #$2C
C - - - - - 0x038ED6 0E:8EC6: D0 04     BNE bra_8ECC
bra_8EC8:
- - - - - - 0x038ED8 0E:8EC8: A9 00     LDA #$00
- - - - - - 0x038EDA 0E:8ECA: F0 10     BEQ bra_8EDC   ; jmp
bra_8ECC:
C - - - - - 0x038EDC 0E:8ECC: 48        PHA
C - - - - - 0x038EDD 0E:8ECD: 29 0F     AND #$0F
C - - - - - 0x038EDF 0E:8ECF: 85 00     STA ram_0000
C - - - - - 0x038EE1 0E:8ED1: 68        PLA
C - - - - - 0x038EE2 0E:8ED2: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x038EE5 0E:8ED5: A8        TAY
C - - - - - 0x038EE6 0E:8ED6: B9 70 90  LDA tbl_9070,Y
C - - - - - 0x038EE9 0E:8ED9: 18        CLC
C - - - - - 0x038EEA 0E:8EDA: 65 00     ADC ram_0000
bra_8EDC:
C - - - - - 0x038EEC 0E:8EDC: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x038EEF 0E:8EDF: 4C 5B D2  JMP loc_0x03D26B_записать_FF_в_буфер_с_чтением_индекса



loc_8EE2:
C D 0 - - - 0x038EF2 0E:8EE2: AD 77 06  LDA ram_0677
C - - - - - 0x038EF5 0E:8EE5: F0 0A     BEQ bra_8EF1
C - - - - - 0x038EF7 0E:8EE7: F0 3A     BEQ bra_8F23_RTS
C - - - - - 0x038EF9 0E:8EE9: CE 77 06  DEC ram_0677
C - - - - - 0x038EFC 0E:8EEC: A9 0A     LDA #con_0x03F6AD_0A
C - - - - - 0x038EFE 0E:8EEE: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_8EF1:
loc_8EF1:
C D 0 - - - 0x038F01 0E:8EF1: CE 75 06  DEC ram_0675
C - - - - - 0x038F04 0E:8EF4: A9 00     LDA #$00
C - - - - - 0x038F06 0E:8EF6: A2 03     LDX #$03
bra_8EF8_loop:
C - - - - - 0x038F08 0E:8EF8: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x038F0B 0E:8EFB: CA        DEX
C - - - - - 0x038F0C 0E:8EFC: 10 FA     BPL bra_8EF8_loop
C - - - - - 0x038F0E 0E:8EFE: A9 03     LDA #$03
C - - - - - 0x038F10 0E:8F00: 8D 77 06  STA ram_0677
C - - - - - 0x038F13 0E:8F03: 60        RTS



sub_8F04:
loc_8F04:
C D 0 - - - 0x038F14 0E:8F04: A9 22     LDA #$22
C - - - - - 0x038F16 0E:8F06: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x038F19 0E:8F09: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x038F1C 0E:8F0C: AD 78 06  LDA ram_0678
C - - - - - 0x038F1F 0E:8F0F: 48        PHA
C - - - - - 0x038F20 0E:8F10: 18        CLC
C - - - - - 0x038F21 0E:8F11: 29 F0     AND #$F0
C - - - - - 0x038F23 0E:8F13: 69 98     ADC #$98
C - - - - - 0x038F25 0E:8F15: 8D 11 04  STA ram_obj_pos_Y_lo + $01
C - - - - - 0x038F28 0E:8F18: 68        PLA
C - - - - - 0x038F29 0E:8F19: 29 0F     AND #$0F
C - - - - - 0x038F2B 0E:8F1B: 20 02 D2  JSR sub_0x03D212_ASLx4
C - - - - - 0x038F2E 0E:8F1E: 69 1C     ADC #$1C
C - - - - - 0x038F30 0E:8F20: 8D 41 04  STA ram_obj_pos_X_lo + $01
bra_8F23_RTS:
C - - - - - 0x038F33 0E:8F23: 60        RTS



sub_8F24:
C - - - - - 0x038F34 0E:8F24: AE 76 06  LDX ram_0676
C - - - - - 0x038F37 0E:8F27: A9 58     LDA #$58
C - - - - - 0x038F39 0E:8F29: 8D 12 04  STA ram_obj_pos_Y_lo + $02
C - - - - - 0x038F3C 0E:8F2C: A9 80     LDA #$80
C - - - - - 0x038F3E 0E:8F2E: 8D 12 05  STA ram_obj_spr_flip + $02
C - - - - - 0x038F41 0E:8F31: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 
C - - - - - 0x038F44 0E:8F34: 0A        ASL
C - - - - - 0x038F45 0E:8F35: A9 30     LDA #$30
C - - - - - 0x038F47 0E:8F37: 90 02     BCC bra_8F3B    ; if not cpu
; if cpu
C - - - - - 0x038F49 0E:8F39: A9 74     LDA #$74
bra_8F3B:
C - - - - - 0x038F4B 0E:8F3B: 8D 42 04  STA ram_obj_pos_X_lo + $02
C - - - - - 0x038F4E 0E:8F3E: A9 22     LDA #$22
C - - - - - 0x038F50 0E:8F40: 8D 02 04  STA ram_obj_anim_id + $02
C - - - - - 0x038F53 0E:8F43: 60        RTS



loc_8F44:
C D 0 - - - 0x038F54 0E:8F44: EE 75 06  INC ram_0675
C - - - - - 0x038F57 0E:8F47: A2 00     LDX #$00
C - - - - - 0x038F59 0E:8F49: 8E 01 04  STX ram_obj_anim_id + $01
C - - - - - 0x038F5C 0E:8F4C: 8E 03 04  STX ram_obj_anim_id + $03
C - - - - - 0x038F5F 0E:8F4F: 8E 50 05  STX ram_obj_id
C - - - - - 0x038F62 0E:8F52: AE 76 06  LDX ram_0676
C - - - - - 0x038F65 0E:8F55: 20 CB 8F  JSR sub_8FCB
C - - - - - 0x038F68 0E:8F58: A9 28     LDA #con_0x03F6AD_28
C - - - - - 0x038F6A 0E:8F5A: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_8F5D:
C - - - - - 0x038F6D 0E:8F5D: AE 76 06  LDX ram_0676
C - - - - - 0x038F70 0E:8F60: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0158 
C - - - - - 0x038F73 0E:8F63: 10 03     BPL bra_8F68    ; if not cpu
; if cpu
C - - - - - 0x038F75 0E:8F65: CE 75 06  DEC ram_0675
bra_8F68:
C - - - - - 0x038F78 0E:8F68: 4C F1 8E  JMP loc_8EF1



ofs_011_8F6B_03:
C - - J - - 0x038F7B 0E:8F6B: AE 76 06  LDX ram_0676
C - - - - - 0x038F7E 0E:8F6E: 86 A8     STX ram_local_obj_index
C - - - - - 0x038F80 0E:8F70: A5 90     LDA ram_sum_btn_press
C - - - - - 0x038F82 0E:8F72: A8        TAY
C - - - - - 0x038F83 0E:8F73: 29 90     AND #con_btn_A + con_btn_Start
C - - - - - 0x038F85 0E:8F75: D0 71     BNE bra_8FE8
C - - - - - 0x038F87 0E:8F77: 98        TYA
C - - - - - 0x038F88 0E:8F78: 29 40     AND #con_btn_B
C - - - - - 0x038F8A 0E:8F7A: D0 E1     BNE bra_8F5D
C - - - - - 0x038F8C 0E:8F7C: 98        TYA
C - - - - - 0x038F8D 0E:8F7D: 29 0F     AND #con_btns_Dpad
C - - - - - 0x038F8F 0E:8F7F: F0 4A     BEQ bra_8FCB
C - - - - - 0x038F91 0E:8F81: A0 01     LDY #$01
C - - - - - 0x038F93 0E:8F83: 29 05     AND #con_btn_Right + con_btn_Down
C - - - - - 0x038F95 0E:8F85: D0 02     BNE bra_8F89
C - - - - - 0x038F97 0E:8F87: A0 FF     LDY #$FF
bra_8F89:
bra_8F89_loop:
C - - - - - 0x038F99 0E:8F89: 18        CLC
C - - - - - 0x038F9A 0E:8F8A: 98        TYA
C - - - - - 0x038F9B 0E:8F8B: 85 00     STA ram_0000
C - - - - - 0x038F9D 0E:8F8D: 7D 4C 01  ADC ram_tournament_fighter,X ; 014C 014D 014E 014F 
C - - - - - 0x038FA0 0E:8F90: C9 07     CMP #$07
C - - - - - 0x038FA2 0E:8F92: 90 08     BCC bra_8F9C
C - - - - - 0x038FA4 0E:8F94: 0A        ASL
C - - - - - 0x038FA5 0E:8F95: 90 03     BCC bra_8F9A
C - - - - - 0x038FA7 0E:8F97: A9 06     LDA #$06
C - - - - - 0x038FA9 0E:8F99: 2C        .byte $2C   ; BIT
bra_8F9A:
C - - - - - 0x038FAA 0E:8F9A: A9 00     LDA #$00
bra_8F9C:
C - - - - - 0x038FAC 0E:8F9C: C9 0F     CMP #$0F
C - - - - - 0x038FAE 0E:8F9E: D0 11     BNE bra_8FB1
bra_8FA0_loop:
- - - - - - 0x038FB0 0E:8FA0: CA        DEX
- - - - - - 0x038FB1 0E:8FA1: 30 0E     BMI bra_8FB1
- - - - - - 0x038FB3 0E:8FA3: DD 4C 01  CMP ram_014C,X
- - - - - - 0x038FB6 0E:8FA6: D0 F8     BNE bra_8FA0_loop
- - - - - - 0x038FB8 0E:8FA8: A6 A8     LDX ram_local_obj_index
- - - - - - 0x038FBA 0E:8FAA: 9D 4C 01  STA ram_014C,X
- - - - - - 0x038FBD 0E:8FAD: A4 00     LDY ram_0000
- - - - - - 0x038FBF 0E:8FAF: D0 D8     BNE bra_8F89_loop
bra_8FB1:
C - - - - - 0x038FC1 0E:8FB1: A6 A8     LDX ram_local_obj_index
; con_новые_персы
C - - - - - 0x038FC3 0E:8FB3: 9D 4C 01  STA ram_tournament_fighter,X ; 014C 014D 014E 014F 
C - - - - - 0x038FC6 0E:8FB6: 8D 50 05  STA ram_obj_id
C - - - - - 0x038FC9 0E:8FB9: A9 27     LDA #con_0x03F6AD_27
C - - - - - 0x038FCB 0E:8FBB: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x038FCE 0E:8FBE: 20 58 90  JSR sub_9058
C - - - - - 0x038FD1 0E:8FC1: A9 00     LDA #$00
C - - - - - 0x038FD3 0E:8FC3: 8D D0 05  STA ram_obj_05D0
C - - - - - 0x038FD6 0E:8FC6: 8D C0 05  STA ram_obj_anim_timer
C - - - - - 0x038FD9 0E:8FC9: A6 A8     LDX ram_local_obj_index
bra_8FCB:
sub_8FCB:
C - - - - - 0x038FDB 0E:8FCB: BC 4C 01  LDY ram_tournament_fighter,X ; 014C 014D 014E 014F 
C - - - - - 0x038FDE 0E:8FCE: 8C 50 05  STY ram_obj_id
C - - - - - 0x038FE1 0E:8FD1: B9 7A 90  LDA tbl_907A,Y
C - - - - - 0x038FE4 0E:8FD4: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x038FE7 0E:8FD7: A9 C0     LDA #$C0
C - - - - - 0x038FE9 0E:8FD9: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x038FEC 0E:8FDC: B9 73 90  LDA tbl_9073,Y
C - - - - - 0x038FEF 0E:8FDF: A8        TAY
C - - - - - 0x038FF0 0E:8FE0: A2 00     LDX #$00
C - - - - - 0x038FF2 0E:8FE2: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x038FF5 0E:8FE5: 4C 14 F7  JMP loc_0x03F724_смена_тайловых_наборов_для_анимаций
bra_8FE8:
C - - - - - 0x038FF8 0E:8FE8: A9 29     LDA #con_0x03F6AD_29
C - - - - - 0x038FFA 0E:8FEA: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x038FFD 0E:8FED: EE 76 06  INC ram_0676
C - - - - - 0x039000 0E:8FF0: AD 76 06  LDA ram_0676
C - - - - - 0x039003 0E:8FF3: C9 04     CMP #$04
C - - - - - 0x039005 0E:8FF5: B0 06     BCS bra_8FFD
C - - - - - 0x039007 0E:8FF7: EE 75 06  INC ram_0675
C - - - - - 0x03900A 0E:8FFA: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
bra_8FFD:
C - - - - - 0x03900D 0E:8FFD: A9 05     LDA #$05
C - - - - - 0x03900F 0E:8FFF: 8D 75 06  STA ram_0675
C - - - - - 0x039012 0E:9002: 60        RTS



ofs_011_9003_05:
C - - J - - 0x039013 0E:9003: A9 00     LDA #$00
C - - - - - 0x039015 0E:9005: 85 00     STA ram_0000
C - - - - - 0x039017 0E:9007: A2 82     LDX #$82
bra_9009_loop:
C - - - - - 0x039019 0E:9009: A4 00     LDY ram_0000
C - - - - - 0x03901B 0E:900B: B9 55 01  LDA ram_tournament_индекс_игрока,Y ; 0155 0156 0157 0158 
C - - - - - 0x03901E 0E:900E: 10 17     BPL bra_9027    ; if not cpu
; if cpu
C - - - - - 0x039020 0E:9010: 0A        ASL
C - - - - - 0x039021 0E:9011: 0A        ASL
C - - - - - 0x039022 0E:9012: A8        TAY
C - - - - - 0x039023 0E:9013: A9 8D     LDA #$8D    ; C
C - - - - - 0x039025 0E:9015: 99 30 01  STA ram_tournament_name,Y ; 0130 0134 0138 013C 
C - - - - - 0x039028 0E:9018: A9 9A     LDA #$9A    ; P
C - - - - - 0x03902A 0E:901A: 99 31 01  STA ram_tournament_name + $01,Y ; 0131 0135 0139 013D 
C - - - - - 0x03902D 0E:901D: A9 9F     LDA #$9F    ; U
C - - - - - 0x03902F 0E:901F: 99 32 01  STA ram_tournament_name + $02,Y ; 0132 0136 013A 013E 
C - - - - - 0x039032 0E:9022: 8A        TXA ; номер игрока
C - - - - - 0x039033 0E:9023: 99 33 01  STA ram_tournament_name + $03,Y ; 0133 0137 013B 013F 
C - - - - - 0x039036 0E:9026: E8        INX
bra_9027:
C - - - - - 0x039037 0E:9027: E6 00     INC ram_0000
C - - - - - 0x039039 0E:9029: A5 00     LDA ram_0000
C - - - - - 0x03903B 0E:902B: C9 04     CMP #$04
C - - - - - 0x03903D 0E:902D: 90 DA     BCC bra_9009_loop
C - - - - - 0x03903F 0E:902F: A2 07     LDX #$07
C - - - - - 0x039041 0E:9031: A9 00     LDA #$00
bra_9033_loop:
C - - - - - 0x039043 0E:9033: 99 05 01  STA ram_0105,Y ; 0111 
C - - - - - 0x039046 0E:9036: CA        DEX
C - - - - - 0x039047 0E:9037: 10 FA     BPL bra_9033_loop
C - - - - - 0x039049 0E:9039: AA        TAX
C - - - - - 0x03904A 0E:903A: 85 00     STA ram_0000
bra_903C_loop:
C - - - - - 0x03904C 0E:903C: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 
C - - - - - 0x03904F 0E:903F: 30 07     BMI bra_9048    ; if cpu
; if not cpu
C - - - - - 0x039051 0E:9041: A5 00     LDA ram_0000
C - - - - - 0x039053 0E:9043: 9D 05 01  STA ram_0105,X ; 0105 
C - - - - - 0x039056 0E:9046: E6 00     INC ram_0000
bra_9048:
C - - - - - 0x039058 0E:9048: E8        INX
C - - - - - 0x039059 0E:9049: E0 04     CPX #$04
C - - - - - 0x03905B 0E:904B: 90 EF     BCC bra_903C_loop
C - - - - - 0x03905D 0E:904D: A9 02     LDA #con_script_draw_очистка_1
C - - - - - 0x03905F 0E:904F: 20 AE F5  JSR sub_0x03F5BE_подготовить_скрипт
C - - - - - 0x039062 0E:9052: 20 C2 F6  JSR sub_0x03F6D2_выключить_музыку_и_звуки
C - - - - - 0x039065 0E:9055: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный



sub_9058:
C - - - - - 0x039068 0E:9058: AC 76 06  LDY ram_0676
C - - - - - 0x03906B 0E:905B: 18        CLC
C - - - - - 0x03906C 0E:905C: B9 4C 01  LDA ram_tournament_fighter,Y ; 014C 014D 014E 014F 
C - - - - - 0x03906F 0E:905F: 69 0D     ADC #$0D
; con_AF40_pal + $0D
; con_AF40_pal + $0E
; con_AF40_pal + $0F
; con_AF40_pal + $10
; con_AF40_pal + $11
; con_AF40_pal + $12
; con_AF40_pal + $13
C - - - - - 0x039071 0E:9061: A2 04     LDX #$04    ; tip_индекс_буфера_палитры + $04
C - - - - - 0x039073 0E:9063: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x039076 0E:9066: A6 A8     LDX ram_local_obj_index
C - - - - - 0x039078 0E:9068: 60        RTS



tbl_9069:
- D 0 - - - 0x039079 0E:9069: 00        .byte $00   ; 00
- D 0 - - - 0x03907A 0E:906A: FE        .byte $FE   ; 01
- D 0 - - - 0x03907B 0E:906B: 0F        .byte $0F   ; 02
- D 0 - - - 0x03907C 0E:906C: EF        .byte $EF   ; 03



tbl_906D:
- D 0 - - - 0x03907D 0E:906D: 09        .byte $09   ; 00
- D 0 - - - 0x03907E 0E:906E: 0D        .byte $0D   ; 10
- D 0 - - - 0x03907F 0E:906F: 0D        .byte $0D   ; 20



tbl_9070:
- D 0 - - - 0x039080 0E:9070: 81        .byte $81   ; 00
- D 0 - - - 0x039081 0E:9071: 8B        .byte $8B   ; 10
- D 0 - - - 0x039082 0E:9072: 99        .byte $99   ; 20



tbl_9073:
- D 0 - - - 0x039083 0E:9073: 04        .byte con_0x03D0C3_черепахи_бег_вперед   ; 00 con_fighter_leo
- D 0 - - - 0x039084 0E:9074: 04        .byte con_0x03D0C3_черепахи_бег_вперед   ; 01 con_fighter_raph
- D 0 - - - 0x039085 0E:9075: 04        .byte con_0x03D0C3_черепахи_бег_вперед   ; 02 con_fighter_mike
- D 0 - - - 0x039086 0E:9076: 04        .byte con_0x03D0C3_черепахи_бег_вперед   ; 03 con_fighter_don
- D 0 - - - 0x039087 0E:9077: 06        .byte con_0x03D0C3_casey_ходьба_вперед   ; 04 con_fighter_casey
- D 0 - - - 0x039088 0E:9078: 0A        .byte con_0x03D0C3_hot_бег_вперед   ; 05 con_fighter_hot
- D 0 - - - 0x039089 0E:9079: 10        .byte con_0x03D0C3_shred_ходьба_вперед   ; 06 con_fighter_shred

tbl_907A:
- D 0 - - - 0x03908A 0E:907A: 68        .byte $68   ; 00 con_fighter_leo
- D 0 - - - 0x03908B 0E:907B: 68        .byte $68   ; 01 con_fighter_raph
- D 0 - - - 0x03908C 0E:907C: 68        .byte $68   ; 02 con_fighter_mike
- D 0 - - - 0x03908D 0E:907D: 68        .byte $68   ; 03 con_fighter_don
- D 0 - - - 0x03908E 0E:907E: 68        .byte $68   ; 04 con_fighter_casey
- D 0 - - - 0x03908F 0E:907F: 76        .byte $76   ; 05 con_fighter_hot
- D 0 - - - 0x039090 0E:9080: 70        .byte $70   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $68   ; 07 con_fighter_07
                                        .byte $68   ; 08 con_fighter_08
                                        .byte $68   ; 09 con_fighter_09
                                        .byte $68   ; 0A con_fighter_0A
                                        .byte $68   ; 0B con_fighter_0B
                                        .byte $76   ; 0C con_fighter_0C
                                        .byte $70   ; 0D con_fighter_0D
                                    .endif



tbl_9081:
; 00
- D 0 - - - 0x039091 0E:9081: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x039092 0E:9082: D1 23     .word $23D1
- D 0 - - - 0x039094 0E:9084: 05        .byte $05, $00, $0A   ; 
- D 0 - - - 0x039097 0E:9087: FF        .byte $FF   ; end token

- - - - - - 0x039098 0E:9088: 00        .byte $00   ; placeholder

; 08
- D 0 - - - 0x039099 0E:9089: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x03909A 0E:908A: D1 23     .word $23D1
- D 0 - - - 0x03909C 0E:908C: 0A        .byte $0A, $00, $05   ; 
- D 0 - - - 0x03909F 0E:908F: FF        .byte $FF   ; end token



tbl_9090:
; 00
- D 0 - - - 0x0390A0 0E:9090: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x0390A1 0E:9091: A8 21     .word $21A8
- D 0 - - - 0x0390A3 0E:9093: 04        .byte $04, $00   ; 

- D 0 - - - 0x0390A5 0E:9095: FE        .byte $FE   ; end token

; 06
- D 0 - - - 0x0390A6 0E:9096: 01        .byte con_buf_mode_01   ; 
- D 0 - - - 0x0390A7 0E:9097: A8 21     .word $21A8
- D 0 - - - 0x0390A9 0E:9099: 13        .byte $13, $14, $10, $00, $FF   ; 

- D 0 - - - 0x0390AE 0E:909E: FE        .byte $FE   ; end token



sub_0x0390AF_обработчик_opening:
C - - - - - 0x0390AF 0E:909F: A5 90     LDA ram_sum_btn_press
C - - - - - 0x0390B1 0E:90A1: 05 A4     ORA ram_00A4
C - - - - - 0x0390B3 0E:90A3: 29 30     AND #con_btns_SS
C - - - - - 0x0390B5 0E:90A5: D0 29     BNE bra_90D0
C - - - - - 0x0390B7 0E:90A7: A5 21     LDA ram_script_draw_lo
C - - - - - 0x0390B9 0E:90A9: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x0390BC 0E:90AC: D6 90     .word ofs_010_90D6_00
- D 0 - I - 0x0390BE 0E:90AE: E3 90     .word ofs_010_90E3_01_отрисовать_opening_1
- D 0 - I - 0x0390C0 0E:90B0: FE 90     .word ofs_010_90FE_02
- D 0 - I - 0x0390C2 0E:90B2: 11 91     .word ofs_010_9111_03_отрисовать_opening_2
- D 0 - I - 0x0390C4 0E:90B4: 49 91     .word ofs_010_9149_04
- D 0 - I - 0x0390C6 0E:90B6: 59 91     .word ofs_010_9159_05
- D 0 - I - 0x0390C8 0E:90B8: 63 91     .word ofs_010_9163_06_offer_challenge
- D 0 - I - 0x0390CA 0E:90BA: 7A 91     .word ofs_010_917A_07_отрисовать_рамку_портрета_шрушера
- D 0 - I - 0x0390CC 0E:90BC: 9E 91     .word ofs_010_919E_08
- D 0 - I - 0x0390CE 0E:90BE: AE 91     .word ofs_010_91AE_09
- D 0 - I - 0x0390D0 0E:90C0: C6 91     .word ofs_010_91C6_0A_отрисовать_персов_в_opening
- D 0 - I - 0x0390D2 0E:90C2: 45 92     .word ofs_010_9245_0B
- D 0 - I - 0x0390D4 0E:90C4: 45 92     .word ofs_010_9245_0C
- D 0 - I - 0x0390D6 0E:90C6: 45 92     .word ofs_010_9245_0D
- D 0 - I - 0x0390D8 0E:90C8: 45 92     .word ofs_010_9245_0E
- D 0 - I - 0x0390DA 0E:90CA: 45 92     .word ofs_010_9245_0F
- D 0 - I - 0x0390DC 0E:90CC: 45 92     .word ofs_010_9245_10
- - - - - - 0x0390DE 0E:90CE: B2 93     .word ofs_010_93B2_11



bra_90D0:
C - - - - - 0x0390E0 0E:90D0: 20 C2 F6  JSR sub_0x03F6D2_выключить_музыку_и_звуки
C - - - - - 0x0390E3 0E:90D3: 4C B2 93  JMP loc_93B2



ofs_010_90D6_00:
C - - J - - 0x0390E6 0E:90D6: E6 21     INC ram_script_draw_lo
C - - - - - 0x0390E8 0E:90D8: 20 3C F0  JSR sub_0x03F04C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x0390EB 0E:90DB: A9 0B     LDA #con_0048_0B
C - - - - - 0x0390ED 0E:90DD: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x0390F0 0E:90E0: 4C 6D D4  JMP loc_0x03D47D_запись_черной_палитры_в_буфер



ofs_010_90E3_01_отрисовать_opening_1:
C - - J - - 0x0390F3 0E:90E3: A9 3A     LDA #con_music_opening_1
C - - - - - 0x0390F5 0E:90E5: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x0390F8 0E:90E8: A9 00     LDA #con_speech_manhattan
C - - - - - 0x0390FA 0E:90EA: 85 B6     STA ram_speech
C - - - - - 0x0390FC 0E:90EC: A0 1E     LDY #con_chr_pair_1E
C - - - - - 0x0390FE 0E:90EE: 20 1A DC  JSR sub_0x03DC2A_запись_пары_chr_bg
C - - - - - 0x039101 0E:90F1: A9 4D     LDA #$4D
C - - - - - 0x039103 0E:90F3: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x039106 0E:90F6: A0 16     LDY #con_D57A_16
C - - - - - 0x039108 0E:90F8: A9 17     LDA #con_D57A_17
C - - - - - 0x03910A 0E:90FA: A2 2A     LDX #con_screen_opening_1
C - - - - - 0x03910C 0E:90FC: D0 27     BNE bra_9125    ; jmp



ofs_010_90FE_02:
C - - J - - 0x03910E 0E:90FE: 20 36 9B  JSR sub_9B36_обработка_выбранного_speech
C - - - - - 0x039111 0E:9101: AD 31 06  LDA ram_0631
C - - - - - 0x039114 0E:9104: D0 0A     BNE bra_9110_RTS
C - - - - - 0x039116 0E:9106: A9 A0     LDA #$A0
C - - - - - 0x039118 0E:9108: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03911B 0E:910B: E6 21     INC ram_script_draw_lo
C - - - - - 0x03911D 0E:910D: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
bra_9110_RTS:
C - - - - - 0x039120 0E:9110: 60        RTS



ofs_010_9111_03_отрисовать_opening_2:
C - - J - - 0x039121 0E:9111: A0 20     LDY #con_chr_pair_20
C - - - - - 0x039123 0E:9113: 20 1A DC  JSR sub_0x03DC2A_запись_пары_chr_bg
C - - - - - 0x039126 0E:9116: A9 01     LDA #con_speech_strange_letter
C - - - - - 0x039128 0E:9118: 85 B6     STA ram_speech
C - - - - - 0x03912A 0E:911A: A9 4E     LDA #$4E
C - - - - - 0x03912C 0E:911C: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x03912F 0E:911F: A0 18     LDY #con_D57A_18
C - - - - - 0x039131 0E:9121: A9 19     LDA #con_D57A_19
C - - - - - 0x039133 0E:9123: A2 2C     LDX #con_screen_opening_2
bra_9125:
C - - - - - 0x039135 0E:9125: 48        PHA
C - - - - - 0x039136 0E:9126: 98        TYA
C - - - - - 0x039137 0E:9127: 48        PHA
C - - - - - 0x039138 0E:9128: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
C - - - - - 0x03913B 0E:912B: 68        PLA
C - - - - - 0x03913C 0E:912C: A8        TAY
C - - - - - 0x03913D 0E:912D: 68        PLA
C - - - - - 0x03913E 0E:912E: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x039141 0E:9131: A9 80     LDA #$80
C - - - - - 0x039143 0E:9133: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x039146 0E:9136: A9 00     LDA #$00
C - - - - - 0x039148 0E:9138: 8D 31 06  STA ram_0631
C - - - - - 0x03914B 0E:913B: A9 1F     LDA #$1F
C - - - - - 0x03914D 0E:913D: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x039150 0E:9140: A9 21     LDA #con_chr_bank_spr + $21
C - - - - - 0x039152 0E:9142: 85 34     STA ram_chr_bank_spr
C - - - - - 0x039154 0E:9144: E6 21     INC ram_script_draw_lo
C - - - - - 0x039156 0E:9146: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



ofs_010_9149_04:
C - - J - - 0x039159 0E:9149: 20 36 9B  JSR sub_9B36_обработка_выбранного_speech
C - - - - - 0x03915C 0E:914C: AD 31 06  LDA ram_0631
C - - - - - 0x03915F 0E:914F: D0 07     BNE bra_9158_RTS
C - - - - - 0x039161 0E:9151: A9 20     LDA #$20
C - - - - - 0x039163 0E:9153: 8D 60 05  STA ram_obj_timer
C - - - - - 0x039166 0E:9156: E6 21     INC ram_script_draw_lo
bra_9158_RTS:
C - - - - - 0x039168 0E:9158: 60        RTS



ofs_010_9159_05:
C - - J - - 0x039169 0E:9159: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03916C 0E:915C: D0 FA     BNE bra_9158_RTS
bra_915E:
C - - - - - 0x03916E 0E:915E: E6 21     INC ram_script_draw_lo
C - - - - - 0x039170 0E:9160: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный



ofs_010_9163_06_offer_challenge:
C - - J - - 0x039173 0E:9163: 20 3C F0  JSR sub_0x03F04C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x039176 0E:9166: A9 3B     LDA #con_0x03F6AD_3B
C - - - - - 0x039178 0E:9168: 20 8B F6  JSR sub_0x03F69B_выключить_звуки_и_записать_новый
C - - - - - 0x03917B 0E:916B: A9 02     LDA #con_speech_offer_challenge
C - - - - - 0x03917D 0E:916D: 85 B6     STA ram_speech
C - - - - - 0x03917F 0E:916F: A9 00     LDA #con_D57A_00
C - - - - - 0x039181 0E:9171: A8        LDY #con_D57A_00
C - - - - - 0x039182 0E:9172: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x039185 0E:9175: E6 21     INC ram_script_draw_lo
C - - - - - 0x039187 0E:9177: 4C C6 E8  JMP loc_0x03E8D6_отрисовать_портрет_шрушера_в_opening



ofs_010_917A_07_отрисовать_рамку_портрета_шрушера:
C - - J - - 0x03918A 0E:917A: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03918D 0E:917D: 30 05     BMI bra_9184
C - - - - - 0x03918F 0E:917F: D0 1C     BNE bra_919D_RTS
C - - - - - 0x039191 0E:9181: 4C BB 93  JMP loc_93BB_скрыть_рамку
bra_9184:
C - - - - - 0x039194 0E:9184: 20 CE 93  JSR sub_93CE_отрисовать_рамку
C - - - - - 0x039197 0E:9187: A9 03     LDA #$03
C - - - - - 0x039199 0E:9189: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03919C 0E:918C: EE 30 05  INC ram_obj_0530
C - - - - - 0x03919F 0E:918F: AD 30 05  LDA ram_obj_0530
C - - - - - 0x0391A2 0E:9192: C9 06     CMP #$06
C - - - - - 0x0391A4 0E:9194: 90 07     BCC bra_919D_RTS
C - - - - - 0x0391A6 0E:9196: E6 21     INC ram_script_draw_lo
C - - - - - 0x0391A8 0E:9198: A9 0B     LDA #con_0048_0B
C - - - - - 0x0391AA 0E:919A: 4C 14 F8  JMP loc_0x03F824_подготовить_irq_handler
bra_919D_RTS:
C - - - - - 0x0391AD 0E:919D: 60        RTS



ofs_010_919E_08:
C - - J - - 0x0391AE 0E:919E: 20 36 9B  JSR sub_9B36_обработка_выбранного_speech
C - - - - - 0x0391B1 0E:91A1: AD 31 06  LDA ram_0631
C - - - - - 0x0391B4 0E:91A4: D0 F7     BNE bra_919D_RTS
C - - - - - 0x0391B6 0E:91A6: A9 60     LDA #$60
C - - - - - 0x0391B8 0E:91A8: 8D 60 05  STA ram_obj_timer
C - - - - - 0x0391BB 0E:91AB: E6 21     INC ram_script_draw_lo
C - - - - - 0x0391BD 0E:91AD: 60        RTS



ofs_010_91AE_09:
C - - J - - 0x0391BE 0E:91AE: CE 60 05  DEC ram_obj_timer
C - - - - - 0x0391C1 0E:91B1: F0 0C     BEQ bra_91BF
C - - - - - 0x0391C3 0E:91B3: AD 60 05  LDA ram_obj_timer
C - - - - - 0x0391C6 0E:91B6: C9 40     CMP #$40
C - - - - - 0x0391C8 0E:91B8: D0 E3     BNE bra_919D_RTS
C - - - - - 0x0391CA 0E:91BA: A9 5B     LDA #con_music_volume_fade
C - - - - - 0x0391CC 0E:91BC: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_91BF:
C - - - - - 0x0391CF 0E:91BF: A9 40     LDA #$40
C - - - - - 0x0391D1 0E:91C1: 8D 60 05  STA ram_obj_timer
C - - - - - 0x0391D4 0E:91C4: D0 98     BNE bra_915E    ; jmp



ofs_010_91C6_0A_отрисовать_персов_в_opening:
C - - J - - 0x0391D6 0E:91C6: CE 60 05  DEC ram_obj_timer
C - - - - - 0x0391D9 0E:91C9: D0 D2     BNE bra_919D_RTS
C - - - - - 0x0391DB 0E:91CB: A9 00     LDA #$00
C - - - - - 0x0391DD 0E:91CD: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x0391E0 0E:91D0: 8D B0 04  STA ram_obj_spd_Y_lo
C - - - - - 0x0391E3 0E:91D3: A9 3C     LDA #con_music_opening_2
C - - - - - 0x0391E5 0E:91D5: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x0391E8 0E:91D8: 20 90 FC  JSR sub_0x03FCA0_set_mirroring_H
C - - - - - 0x0391EB 0E:91DB: A9 10     LDA #con_0048_10
C - - - - - 0x0391ED 0E:91DD: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x0391F0 0E:91E0: A9 03     LDA #$03
C - - - - - 0x0391F2 0E:91E2: 8D 0C 01  STA ram_custom_scanline
loc_91E5:
C D 0 - - - 0x0391F5 0E:91E5: E6 21     INC ram_script_draw_lo
C - - - - - 0x0391F7 0E:91E7: A9 00     LDA #$00
C - - - - - 0x0391F9 0E:91E9: 8D C0 04  STA ram_obj_04C0
C - - - - - 0x0391FC 0E:91EC: AD B0 04  LDA ram_obj_spd_Y_lo
C - - - - - 0x0391FF 0E:91EF: 0A        CLC
C - - - - - 0x039200 0E:91F0: 69 30     ADC #$18
C - - - - - 0x039202 0E:91F2: AA        TAX
; con_screen_opening_leo
; con_screen_opening_raph
; con_screen_opening_mike
; con_screen_opening_don
; con_screen_opening_casey
; con_screen_opening_hot
C - - - - - 0x039203 0E:91F3: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
C - - - - - 0x039206 0E:91F6: AD B0 04  LDA ram_obj_spd_Y_lo
C - - - - - 0x039209 0E:91F9: 0A        ASL
C - - - - - 0x03920A 0E:91FA: A8        TAY
C - - - - - 0x03920B 0E:91FB: BE 6D 95  LDX tbl_956D_chr_банки,Y
C - - - - - 0x03920E 0E:91FE: 86 32     STX ram_chr_bank_bg
C - - - - - 0x039210 0E:9200: E8        INX
C - - - - - 0x039211 0E:9201: E8        INX
C - - - - - 0x039212 0E:9202: 86 33     STX ram_chr_bank_bg + $01
C - - - - - 0x039214 0E:9204: B9 6E 95  LDA tbl_956D_chr_банки + $01,Y
C - - - - - 0x039217 0E:9207: 85 34     STA ram_chr_bank_spr
C - - - - - 0x039219 0E:9209: AC B0 04  LDY ram_obj_spd_Y_lo
C - - - - - 0x03921C 0E:920C: B9 51 95  LDA tbl_9551,Y
C - - - - - 0x03921F 0E:920F: 85 FC     STA ram_scroll_Y
C - - - - - 0x039221 0E:9211: B9 5D 95  LDA tbl_955D,Y
C - - - - - 0x039224 0E:9214: 85 FD     STA ram_scroll_X
C - - - - - 0x039226 0E:9216: A5 FF     LDA ram_for_2000
C - - - - - 0x039228 0E:9218: 29 FD     AND #$FD
C - - - - - 0x03922A 0E:921A: 19 57 95  ORA tbl_9557,Y
C - - - - - 0x03922D 0E:921D: 85 FF     STA ram_for_2000
C - - - - - 0x03922F 0E:921F: 20 6D D4  JSR sub_0x03D47D_запись_черной_палитры_в_буфер
; * 03
C - - - - - 0x039232 0E:9222: AD B0 04  LDA ram_obj_spd_Y_lo
C - - - - - 0x039235 0E:9225: 0A        ASL
C - - - - - 0x039236 0E:9226: 6D B0 04  ADC ram_obj_spd_Y_lo
C - - - - - 0x039239 0E:9229: A8        TAY
C - - - - - 0x03923A 0E:922A: B9 3F 95  LDA tbl_953F,Y
C - - - - - 0x03923D 0E:922D: A2 00     LDX #$00    ; tip_индекс_буфера_палитры + $00
C - - - - - 0x03923F 0E:922F: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x039242 0E:9232: B9 40 95  LDA tbl_953F + $01,Y
C - - - - - 0x039245 0E:9235: A2 01     LDX #$01    ; tip_индекс_буфера_палитры + $01
C - - - - - 0x039247 0E:9237: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x03924A 0E:923A: B9 41 95  LDA tbl_953F + $02,Y
C - - - - - 0x03924D 0E:923D: A2 04     LDX #$04    ; tip_индекс_буфера_палитры + $04
C - - - - - 0x03924F 0E:923F: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x039252 0E:9242: 4C 48 92  JMP loc_9248



ofs_010_9245_0B:
ofs_010_9245_0C:
ofs_010_9245_0D:
ofs_010_9245_0E:
ofs_010_9245_0F:
ofs_010_9245_10:
C - - J - - 0x039255 0E:9245: 20 6F 92  JSR sub_926F
loc_9248:
C D 0 - - - 0x039258 0E:9248: A5 FF     LDA ram_for_2000
C - - - - - 0x03925A 0E:924A: 29 02     AND #$02
C - - - - - 0x03925C 0E:924C: D0 10     BNE bra_925E
C - - - - - 0x03925E 0E:924E: A0 03     LDY #$03
C - - - - - 0x039260 0E:9250: A5 FC     LDA ram_scroll_Y
C - - - - - 0x039262 0E:9252: C9 7D     CMP #$7D
C - - - - - 0x039264 0E:9254: B0 15     BCS bra_926B
C - - - - - 0x039266 0E:9256: A9 81     LDA #$81
C - - - - - 0x039268 0E:9258: E5 FC     SBC ram_scroll_Y
C - - - - - 0x03926A 0E:925A: A8        TAY
C - - - - - 0x03926B 0E:925B: 4C 6B 92  JMP loc_926B
bra_925E:
C - - - - - 0x03926E 0E:925E: A0 EF     LDY #$EF
C - - - - - 0x039270 0E:9260: A5 FC     LDA ram_scroll_Y
C - - - - - 0x039272 0E:9262: C9 7D     CMP #$7D
C - - - - - 0x039274 0E:9264: 90 05     BCC bra_926B
C - - - - - 0x039276 0E:9266: A9 70     LDA #$70
C - - - - - 0x039278 0E:9268: E5 FC     SBC ram_scroll_Y
C - - - - - 0x03927A 0E:926A: A8        TAY
bra_926B:
loc_926B:
C D 0 - - - 0x03927B 0E:926B: 8C 0C 01  STY ram_custom_scanline
C - - - - - 0x03927E 0E:926E: 60        RTS



sub_926F:
; бряк срабатывает при показе персов в опенинге
C - - - - - 0x03927F 0E:926F: AD C0 04  LDA ram_obj_04C0
C - - - - - 0x039282 0E:9272: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x039285 0E:9275: 7D 92     .word ofs_009_927D_00_скролл_экрана_с_персом
- D 0 - I - 0x039287 0E:9277: 06 93     .word ofs_009_9306_01_печатание_имени_перса
- D 0 - I - 0x039289 0E:9279: A3 93     .word ofs_009_93A3_02
- D 0 - I - 0x03928B 0E:927B: AC 93     .word ofs_009_93AC_03



ofs_009_927D_00_скролл_экрана_с_персом:
C - - J - - 0x03928D 0E:927D: 20 97 92  JSR sub_9297
C - - - - - 0x039290 0E:9280: A5 FF     LDA ram_for_2000
C - - - - - 0x039292 0E:9282: 29 02     AND #$02
C - - - - - 0x039294 0E:9284: F0 10     BEQ bra_9296_RTS
C - - - - - 0x039296 0E:9286: A5 FC     LDA ram_scroll_Y
C - - - - - 0x039298 0E:9288: 29 FC     AND #$FC
C - - - - - 0x03929A 0E:928A: C9 E0     CMP #$E0
C - - - - - 0x03929C 0E:928C: D0 08     BNE bra_9296_RTS
C - - - - - 0x03929E 0E:928E: EE C0 04  INC ram_obj_04C0    ; 01
C - - - - - 0x0392A1 0E:9291: A9 00     LDA #$00
C - - - - - 0x0392A3 0E:9293: 8D 30 05  STA ram_obj_0530
bra_9296_RTS:
C - - - - - 0x0392A6 0E:9296: 60        RTS



sub_9297:
; если удерживать A пока перс скроллится, скроллинг будет приостановлен
C - - - - - 0x0392A7 0E:9297: A5 91     LDA ram_btn_hold
C - - - - - 0x0392A9 0E:9299: 29 80     AND #con_btn_A
C - - - - - 0x0392AB 0E:929B: D0 F9     BNE bra_9296_RTS
C - - - - - 0x0392AD 0E:929D: A5 21     LDA ram_script_draw_lo
C - - - - - 0x0392AF 0E:929F: 38        SEC
C - - - - - 0x0392B0 0E:92A0: E9 0B     SBC #$0B
C - - - - - 0x0392B2 0E:92A2: 0A        ASL
C - - - - - 0x0392B3 0E:92A3: A8        TAY
C - - - - - 0x0392B4 0E:92A4: 18        CLC
C - - - - - 0x0392B5 0E:92A5: B9 33 95  LDA tbl_9533,Y
C - - - - - 0x0392B8 0E:92A8: 65 FD     ADC ram_scroll_X
C - - - - - 0x0392BA 0E:92AA: 85 FD     STA ram_scroll_X
C - - - - - 0x0392BC 0E:92AC: 18        CLC
C - - - - - 0x0392BD 0E:92AD: B9 34 95  LDA tbl_9533 + $01,Y
C - - - - - 0x0392C0 0E:92B0: 65 FC     ADC ram_scroll_Y
C - - - - - 0x0392C2 0E:92B2: 85 FC     STA ram_scroll_Y
C - - - - - 0x0392C4 0E:92B4: C9 F0     CMP #$F0
C - - - - - 0x0392C6 0E:92B6: 90 15     BCC bra_92CD
C - - - - - 0x0392C8 0E:92B8: B9 34 95  LDA tbl_9533 + $01,Y
C - - - - - 0x0392CB 0E:92BB: 30 03     BMI bra_92C0
- - - - - - 0x0392CD 0E:92BD: A9 10     LDA #$10
- - - - - - 0x0392CF 0E:92BF: 2C        .byte $2C   ; BIT
bra_92C0:
C - - - - - 0x0392D0 0E:92C0: A9 F0     LDA #$F0
C - - - - - 0x0392D2 0E:92C2: 18        CLC
C - - - - - 0x0392D3 0E:92C3: 65 FC     ADC ram_scroll_Y
C - - - - - 0x0392D5 0E:92C5: 85 FC     STA ram_scroll_Y
C - - - - - 0x0392D7 0E:92C7: A5 FF     LDA ram_for_2000
C - - - - - 0x0392D9 0E:92C9: 49 02     EOR #$02
C - - - - - 0x0392DB 0E:92CB: 85 FF     STA ram_for_2000
bra_92CD:
C - - - - - 0x0392DD 0E:92CD: A5 FF     LDA ram_for_2000
C - - - - - 0x0392DF 0E:92CF: 4A        LSR
C - - - - - 0x0392E0 0E:92D0: 48        PHA
C - - - - - 0x0392E1 0E:92D1: A9 4A     LDA #$4A
C - - - - - 0x0392E3 0E:92D3: 38        SEC
C - - - - - 0x0392E4 0E:92D4: E5 FC     SBC ram_scroll_Y
C - - - - - 0x0392E6 0E:92D6: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x0392E9 0E:92D9: 68        PLA
C - - - - - 0x0392EA 0E:92DA: 69 01     ADC #$01
C - - - - - 0x0392EC 0E:92DC: 29 01     AND #$01
C - - - - - 0x0392EE 0E:92DE: 8D 30 04  STA ram_obj_pos_X_hi
C - - - - - 0x0392F1 0E:92E1: A5 FD     LDA ram_scroll_X
C - - - - - 0x0392F3 0E:92E3: 20 FC D1  JSR sub_0x03D20C_EOR
C - - - - - 0x0392F6 0E:92E6: 18        CLC
C - - - - - 0x0392F7 0E:92E7: 69 88     ADC #$88
C - - - - - 0x0392F9 0E:92E9: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x0392FC 0E:92EC: A5 FF     LDA ram_for_2000
C - - - - - 0x0392FE 0E:92EE: 29 02     AND #$02
C - - - - - 0x039300 0E:92F0: F0 09     BEQ bra_92FB
C - - - - - 0x039302 0E:92F2: AD 10 04  LDA ram_obj_pos_Y_lo
C - - - - - 0x039305 0E:92F5: 38        SEC
C - - - - - 0x039306 0E:92F6: E9 10     SBC #$10
C - - - - - 0x039308 0E:92F8: 8D 10 04  STA ram_obj_pos_Y_lo
bra_92FB:
C - - - - - 0x03930B 0E:92FB: A5 21     LDA ram_script_draw_lo
C - - - - - 0x03930D 0E:92FD: 38        SEC
C - - - - - 0x03930E 0E:92FE: E9 0B     SBC #$0B
C - - - - - 0x039310 0E:9300: 69 4E     ADC #$4E
C - - - - - 0x039312 0E:9302: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x039315 0E:9305: 60        RTS



ofs_009_9306_01_печатание_имени_перса:
C - - J - - 0x039316 0E:9306: AD 30 05  LDA ram_obj_0530
C - - - - - 0x039319 0E:9309: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x03931C 0E:930C: 12 93     .word ofs_008_9312_00
- D 0 - I - 0x03931E 0E:930E: 2F 93     .word ofs_008_932F_01
- D 0 - I - 0x039320 0E:9310: 92 93     .word ofs_008_9392_02



ofs_008_9312_00:
C - - J - - 0x039322 0E:9312: A9 00     LDA #$00
C - - - - - 0x039324 0E:9314: 8D E0 04  STA ram_obj_04E0
C - - - - - 0x039327 0E:9317: 38        SEC
C - - - - - 0x039328 0E:9318: A5 21     LDA ram_script_draw_lo
C - - - - - 0x03932A 0E:931A: E9 0B     SBC #$0B
C - - - - - 0x03932C 0E:931C: 8D D0 05  STA ram_obj_05D0
C - - - - - 0x03932F 0E:931F: A8        TAY
C - - - - - 0x039330 0E:9320: B9 7F 95  LDA tbl_957F,Y
C - - - - - 0x039333 0E:9323: 8D F0 04  STA ram_obj_04F0
C - - - - - 0x039336 0E:9326: EE 30 05  INC ram_obj_0530
C - - - - - 0x039339 0E:9329: A9 09     LDA #$09
C - - - - - 0x03933B 0E:932B: 8D 60 05  STA ram_obj_timer
bra_932E_RTS:
C - - - - - 0x03933E 0E:932E: 60        RTS



ofs_008_932F_01:
C - - J - - 0x03933F 0E:932F: CE 60 05  DEC ram_obj_timer
C - - - - - 0x039342 0E:9332: D0 FA     BNE bra_932E_RTS
C - - - - - 0x039344 0E:9334: AD E0 04  LDA ram_obj_04E0
C - - - - - 0x039347 0E:9337: 0A        ASL
C - - - - - 0x039348 0E:9338: AC D0 05  LDY ram_obj_05D0
C - - - - - 0x03934B 0E:933B: 79 79 95  ADC tbl_9579,Y
C - - - - - 0x03934E 0E:933E: 85 00     STA ram_0000
C - - - - - 0x039350 0E:9340: AC F0 04  LDY ram_obj_04F0
C - - - - - 0x039353 0E:9343: BE 85 95  LDX tbl_9585,Y
C - - - - - 0x039356 0E:9346: E0 FF     CPX #$FF
C - - - - - 0x039358 0E:9348: F0 40     BEQ bra_938A_FF
C - - - - - 0x03935A 0E:934A: A0 00     LDY #$00
bra_934C_loop:
C - - - - - 0x03935C 0E:934C: BD BC 95  LDA tbl_95BC,X
C - - - - - 0x03935F 0E:934F: 99 01 00  STA ram_0001,Y
C - - - - - 0x039362 0E:9352: E8        INX
C - - - - - 0x039363 0E:9353: C8        INY
C - - - - - 0x039364 0E:9354: C0 04     CPY #$04
C - - - - - 0x039366 0E:9356: 90 F4     BCC bra_934C_loop
C - - - - - 0x039368 0E:9358: EE E0 04  INC ram_obj_04E0
C - - - - - 0x03936B 0E:935B: EE F0 04  INC ram_obj_04F0
C - - - - - 0x03936E 0E:935E: A9 09     LDA #$09
C - - - - - 0x039370 0E:9360: 8D 60 05  STA ram_obj_timer
C - - - - - 0x039373 0E:9363: A9 00     LDA #$00
C - - - - - 0x039375 0E:9365: 20 71 93  JSR sub_9371
C - - - - - 0x039378 0E:9368: 18        CLC
C - - - - - 0x039379 0E:9369: A5 00     LDA ram_0000
C - - - - - 0x03937B 0E:936B: 69 20     ADC #$20
C - - - - - 0x03937D 0E:936D: 85 00     STA ram_0000
C - - - - - 0x03937F 0E:936F: A9 02     LDA #$02
sub_9371:
C - - - - - 0x039381 0E:9371: 48        PHA
C - - - - - 0x039382 0E:9372: A4 00     LDY ram_0000
C - - - - - 0x039384 0E:9374: A9 22     LDA #$22
C - - - - - 0x039386 0E:9376: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x039389 0E:9379: 68        PLA
C - - - - - 0x03938A 0E:937A: A8        TAY
C - - - - - 0x03938B 0E:937B: B9 01 00  LDA ram_0001,Y
C - - - - - 0x03938E 0E:937E: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x039391 0E:9381: B9 02 00  LDA ram_0002,Y
C - - - - - 0x039394 0E:9384: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x039397 0E:9387: 4C 5B D2  JMP loc_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
bra_938A_FF:
C - - - - - 0x03939A 0E:938A: EE 30 05  INC ram_obj_0530
C - - - - - 0x03939D 0E:938D: A9 4B     LDA #$4B
C - - - - - 0x03939F 0E:938F: 8D 60 05  STA ram_obj_timer
ofs_008_9392_02:
C - - - - - 0x0393A2 0E:9392: CE 60 05  DEC ram_obj_timer
C - - - - - 0x0393A5 0E:9395: D0 23     BNE bra_93BA_RTS
C - - - - - 0x0393A7 0E:9397: A5 21     LDA ram_script_draw_lo
C - - - - - 0x0393A9 0E:9399: C9 10     CMP #$10
C - - - - - 0x0393AB 0E:939B: B0 15     BCS bra_93B2
C - - - - - 0x0393AD 0E:939D: EE C0 04  INC ram_obj_04C0    ; 02
C - - - - - 0x0393B0 0E:93A0: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
bra_93BA_RTS:
C - - - - - 0x0393CA 0E:93BA: 60        RTS



ofs_009_93A3_02:
C - - J - - 0x0393B3 0E:93A3: A9 00     LDA #$00
C - - - - - 0x0393B5 0E:93A5: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x0393B8 0E:93A8: EE C0 04  INC ram_obj_04C0    ; 03
C - - - - - 0x0393BB 0E:93AB: 60        RTS



ofs_009_93AC_03:
C - - J - - 0x0393BC 0E:93AC: EE B0 04  INC ram_obj_spd_Y_lo
C - - - - - 0x0393BF 0E:93AF: 4C E5 91  JMP loc_91E5



bra_93B2:
loc_93B2:
ofs_010_93B2_11:
C D 0 - - - 0x0393C2 0E:93B2: A9 00     LDA #con_script_draw_главное_меню
C - - - - - 0x0393C4 0E:93B4: 20 AE F5  JSR sub_0x03F5BE_подготовить_скрипт
C - - - - - 0x0393C7 0E:93B7: 4C 3E E1  JMP loc_0x03E14E_подготовить_затемнение_из_белого_в_цветной



loc_93BB_скрыть_рамку:
C D 0 - - - 0x0393CB 0E:93BB: A9 00     LDA #$00    ; скрыть тайлы рамки
C - - - - - 0x0393CD 0E:93BD: 85 18     STA ram_0018
C - - - - - 0x0393CF 0E:93BF: AC 30 05  LDY ram_obj_0530
C - - - - - 0x0393D2 0E:93C2: F0 F6     BEQ bra_93CD_RTS
C - - - - - 0x0393D4 0E:93C4: CE 30 05  DEC ram_obj_0530
C - - - - - 0x0393D7 0E:93C7: 20 D2 93  JSR sub_93D2_затереть_рамку
C - - - - - 0x0393DA 0E:93CA: EE 30 05  INC ram_obj_0530
bra_93CD_RTS:
C - - - - - 0x0393DD 0E:93CD: 60        RTS



sub_93CE_отрисовать_рамку:
C - - - - - 0x0393DE 0E:93CE: A9 01     LDA #$01    ; отобразить тайлы рамки
C - - - - - 0x0393E0 0E:93D0: 85 18     STA ram_0018
sub_93D2_затереть_рамку:
C - - - - - 0x0393E2 0E:93D2: A9 20     LDA #$20
C - - - - - 0x0393E4 0E:93D4: 85 00     STA ram_0000
C - - - - - 0x0393E6 0E:93D6: AD 30 05  LDA ram_obj_0530
C - - - - - 0x0393E9 0E:93D9: 85 01     STA ram_0001
C - - - - - 0x0393EB 0E:93DB: 20 02 D2  JSR sub_0x03D212_ASLx4
C - - - - - 0x0393EE 0E:93DE: 0A        ASL
C - - - - - 0x0393EF 0E:93DF: 90 02     BCC bra_93E3
; C = 1
- - - - - - 0x0393F1 0E:93E1: E6 00     INC ram_0000
bra_93E3:
C - - - - - 0x0393F3 0E:93E3: 65 01     ADC ram_0001
C - - - - - 0x0393F5 0E:93E5: 69 06     ADC #$06
C - - - - - 0x0393F7 0E:93E7: 85 01     STA ram_0001
C - - - - - 0x0393F9 0E:93E9: A9 00     LDA #$00
C - - - - - 0x0393FB 0E:93EB: 85 03     STA ram_0003
C - - - - - 0x0393FD 0E:93ED: A9 05     LDA #$05
C - - - - - 0x0393FF 0E:93EF: 38        SEC
C - - - - - 0x039400 0E:93F0: ED 30 05  SBC ram_obj_0530
C - - - - - 0x039403 0E:93F3: 0A        ASL
C - - - - - 0x039404 0E:93F4: 69 08     ADC #$08
C - - - - - 0x039406 0E:93F6: 85 02     STA ram_0002
C - - - - - 0x039408 0E:93F8: 69 01     ADC #$01
C - - - - - 0x03940A 0E:93FA: 0A        ASL
C - - - - - 0x03940B 0E:93FB: 26 03     ROL ram_0003
C - - - - - 0x03940D 0E:93FD: 0A        ASL
C - - - - - 0x03940E 0E:93FE: 26 03     ROL ram_0003
C - - - - - 0x039410 0E:9400: 0A        ASL
C - - - - - 0x039411 0E:9401: 26 03     ROL ram_0003
C - - - - - 0x039413 0E:9403: 0A        ASL
C - - - - - 0x039414 0E:9404: 26 03     ROL ram_0003
C - - - - - 0x039416 0E:9406: 0A        ASL
C - - - - - 0x039417 0E:9407: 26 03     ROL ram_0003
C - - - - - 0x039419 0E:9409: 85 04     STA ram_0004
C - - - - - 0x03941B 0E:940B: A5 00     LDA ram_0000
C - - - - - 0x03941D 0E:940D: A4 01     LDY ram_0001
C - - - - - 0x03941F 0E:940F: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x039422 0E:9412: A9 77     LDA #$77
C - - - - - 0x039424 0E:9414: 20 C1 94  JSR sub_94C1
C - - - - - 0x039427 0E:9417: 38        SEC
C - - - - - 0x039428 0E:9418: A5 01     LDA ram_0001
C - - - - - 0x03942A 0E:941A: 65 02     ADC ram_0002
C - - - - - 0x03942C 0E:941C: A8        TAY
C - - - - - 0x03942D 0E:941D: A5 00     LDA ram_0000
C - - - - - 0x03942F 0E:941F: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x039432 0E:9422: A9 78     LDA #$78
C - - - - - 0x039434 0E:9424: 20 C1 94  JSR sub_94C1
C - - - - - 0x039437 0E:9427: 18        CLC
C - - - - - 0x039438 0E:9428: A5 01     LDA ram_0001
C - - - - - 0x03943A 0E:942A: 65 04     ADC ram_0004
C - - - - - 0x03943C 0E:942C: 85 06     STA ram_0006
C - - - - - 0x03943E 0E:942E: A8        TAY
C - - - - - 0x03943F 0E:942F: A5 00     LDA ram_0000
C - - - - - 0x039441 0E:9431: 65 03     ADC ram_0003
C - - - - - 0x039443 0E:9433: 85 05     STA ram_0005
C - - - - - 0x039445 0E:9435: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x039448 0E:9438: A9 79     LDA #$79
C - - - - - 0x03944A 0E:943A: 20 C1 94  JSR sub_94C1
C - - - - - 0x03944D 0E:943D: 38        SEC
C - - - - - 0x03944E 0E:943E: A5 06     LDA ram_0006
C - - - - - 0x039450 0E:9440: 65 02     ADC ram_0002
C - - - - - 0x039452 0E:9442: A8        TAY
C - - - - - 0x039453 0E:9443: A5 05     LDA ram_0005
C - - - - - 0x039455 0E:9445: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x039458 0E:9448: A9 7A     LDA #$7A
C - - - - - 0x03945A 0E:944A: 20 C1 94  JSR sub_94C1
C - - - - - 0x03945D 0E:944D: A4 01     LDY ram_0001
C - - - - - 0x03945F 0E:944F: C8        INY
C - - - - - 0x039460 0E:9450: A5 00     LDA ram_0000
C - - - - - 0x039462 0E:9452: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x039465 0E:9455: A9 03     LDA #$03
C - - - - - 0x039467 0E:9457: 9D FD 02  STA ram_ppu_buffer - $03,X
C - - - - - 0x03946A 0E:945A: A5 02     LDA ram_0002
C - - - - - 0x03946C 0E:945C: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03946F 0E:945F: A9 7B     LDA #$7B
C - - - - - 0x039471 0E:9461: 20 C7 94  JSR sub_94C7
C - - - - - 0x039474 0E:9464: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x039477 0E:9467: A4 06     LDY ram_0006
C - - - - - 0x039479 0E:9469: C8        INY
C - - - - - 0x03947A 0E:946A: A5 05     LDA ram_0005
C - - - - - 0x03947C 0E:946C: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03947F 0E:946F: A9 03     LDA #$03
C - - - - - 0x039481 0E:9471: 9D FD 02  STA ram_ppu_buffer - $03,X
C - - - - - 0x039484 0E:9474: A5 02     LDA ram_0002
C - - - - - 0x039486 0E:9476: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x039489 0E:9479: A9 7C     LDA #$7C
C - - - - - 0x03948B 0E:947B: 20 C7 94  JSR sub_94C7
C - - - - - 0x03948E 0E:947E: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x039491 0E:9481: A5 01     LDA ram_0001
C - - - - - 0x039493 0E:9483: 18        CLC
C - - - - - 0x039494 0E:9484: 69 20     ADC #< $0020
C - - - - - 0x039496 0E:9486: 85 05     STA ram_0005
C - - - - - 0x039498 0E:9488: A8        TAY
C - - - - - 0x039499 0E:9489: A9 00     LDA #> $0020
C - - - - - 0x03949B 0E:948B: 65 00     ADC ram_0000
C - - - - - 0x03949D 0E:948D: 85 06     STA ram_0006
C - - - - - 0x03949F 0E:948F: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x0394A2 0E:9492: A9 05     LDA #$05
C - - - - - 0x0394A4 0E:9494: 9D FD 02  STA ram_ppu_buffer - $03,X
C - - - - - 0x0394A7 0E:9497: A5 02     LDA ram_0002
C - - - - - 0x0394A9 0E:9499: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x0394AC 0E:949C: A9 7D     LDA #$7D
C - - - - - 0x0394AE 0E:949E: 20 C7 94  JSR sub_94C7
C - - - - - 0x0394B1 0E:94A1: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x0394B4 0E:94A4: 38        SEC
C - - - - - 0x0394B5 0E:94A5: A5 05     LDA ram_0005
C - - - - - 0x0394B7 0E:94A7: 65 02     ADC ram_0002
C - - - - - 0x0394B9 0E:94A9: A8        TAY
C - - - - - 0x0394BA 0E:94AA: A5 06     LDA ram_0006
C - - - - - 0x0394BC 0E:94AC: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x0394BF 0E:94AF: A9 05     LDA #$05
C - - - - - 0x0394C1 0E:94B1: 9D FD 02  STA ram_ppu_buffer - $03,X
C - - - - - 0x0394C4 0E:94B4: A5 02     LDA ram_0002
C - - - - - 0x0394C6 0E:94B6: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x0394C9 0E:94B9: A9 7E     LDA #$7E
C - - - - - 0x0394CB 0E:94BB: 20 C7 94  JSR sub_94C7
C - - - - - 0x0394CE 0E:94BE: 4C 5D D2  JMP loc_0x03D26D_записать_A_в_буфер_с_чтением_индекса



sub_94C1:
C - - - - - 0x0394D1 0E:94C1: 20 C7 94  JSR sub_94C7
C - - - - - 0x0394D4 0E:94C4: 4C 56 D2  JMP loc_0x03D266_записать_A_и_FF_в_буфер



sub_94C7:
C - - - - - 0x0394D7 0E:94C7: A4 18     LDY ram_0018    ; флаг отображения тайлов рамки
C - - - - - 0x0394D9 0E:94C9: D0 01     BNE bra_94CC_RTS
; Y = 00
C - - - - - 0x0394DB 0E:94CB: 98        TYA
bra_94CC_RTS:
C - - - - - 0x0394DC 0E:94CC: 60        RTS



tbl_9533:
- D 0 - - - 0x039543 0E:9533: FE        .byte $FE, $03   ; 0B
- D 0 - - - 0x039545 0E:9535: FE        .byte $FE, $FD   ; 0C
- D 0 - - - 0x039547 0E:9537: 02        .byte $02, $FD   ; 0D
- D 0 - - - 0x039549 0E:9539: 02        .byte $02, $03   ; 0E
- D 0 - - - 0x03954B 0E:953B: FE        .byte $FE, $FD   ; 0F
- D 0 - - - 0x03954D 0E:953D: 02        .byte $02, $FD   ; 10



tbl_953F:
; 00
- D 0 - - - 0x03954F 0E:953F: 58        .byte con_AF40_pal + $58   ; 
- D 0 - - - 0x039550 0E:9540: 00        .byte con_AF40_pal + $00   ; 
- D 0 - - - 0x039551 0E:9541: 59        .byte con_AF40_pal + $59   ; 
; 01
- D 0 - - - 0x039552 0E:9542: 5A        .byte con_AF40_pal + $5A   ; 
- D 0 - - - 0x039553 0E:9543: 00        .byte con_AF40_pal + $00   ; 
- D 0 - - - 0x039554 0E:9544: 5B        .byte con_AF40_pal + $5B   ; 
; 02
- D 0 - - - 0x039555 0E:9545: 5C        .byte con_AF40_pal + $5C   ; 
- D 0 - - - 0x039556 0E:9546: 00        .byte con_AF40_pal + $00   ; 
- D 0 - - - 0x039557 0E:9547: 3E        .byte con_AF40_pal + $3E   ; 
; 03
- D 0 - - - 0x039558 0E:9548: 5D        .byte con_AF40_pal + $5D   ; 
- D 0 - - - 0x039559 0E:9549: 00        .byte con_AF40_pal + $00   ; 
- D 0 - - - 0x03955A 0E:954A: 65        .byte con_AF40_pal + $65   ; 
; 04
- D 0 - - - 0x03955B 0E:954B: 5E        .byte con_AF40_pal + $5E   ; 
- D 0 - - - 0x03955C 0E:954C: 5F        .byte con_AF40_pal + $5F   ; 
- D 0 - - - 0x03955D 0E:954D: 60        .byte con_AF40_pal + $60   ; 
; 05
- D 0 - - - 0x03955E 0E:954E: 61        .byte con_AF40_pal + $61   ; 
- D 0 - - - 0x03955F 0E:954F: 62        .byte con_AF40_pal + $62   ; 
- D 0 - - - 0x039560 0E:9550: 63        .byte con_AF40_pal + $63   ; 



tbl_9551:
- D 0 - - - 0x039561 0E:9551: 70        .byte $70   ; 00
- D 0 - - - 0x039562 0E:9552: 70        .byte $70   ; 01
- D 0 - - - 0x039563 0E:9553: 70        .byte $70   ; 02
- D 0 - - - 0x039564 0E:9554: 70        .byte $70   ; 03
- D 0 - - - 0x039565 0E:9555: 70        .byte $70   ; 04
- D 0 - - - 0x039566 0E:9556: 80        .byte $80   ; 05

tbl_9557:
- D 0 - - - 0x039567 0E:9557: 02        .byte $02   ; 00
- D 0 - - - 0x039568 0E:9558: 00        .byte $00   ; 01
- D 0 - - - 0x039569 0E:9559: 00        .byte $00   ; 02
- D 0 - - - 0x03956A 0E:955A: 02        .byte $02   ; 03
- D 0 - - - 0x03956B 0E:955B: 00        .byte $00   ; 04
- D 0 - - - 0x03956C 0E:955C: 00        .byte $00   ; 05

tbl_955D:
- D 0 - - - 0x03956D 0E:955D: 50        .byte $50   ; 00
- D 0 - - - 0x03956E 0E:955E: 60        .byte $60   ; 01
- D 0 - - - 0x03956F 0E:955F: B0        .byte $B0   ; 02
- D 0 - - - 0x039570 0E:9560: B0        .byte $B0   ; 03
- D 0 - - - 0x039571 0E:9561: 60        .byte $60   ; 04
- D 0 - - - 0x039572 0E:9562: A0        .byte $A0   ; 05



tbl_956D_chr_банки:
- D 0 - - - 0x03957D 0E:956D: 38        .byte con_chr_bank_bg + $38, con_chr_bank_spr + $35   ; 00
- D 0 - - - 0x03957F 0E:956F: 38        .byte con_chr_bank_bg + $38, con_chr_bank_spr + $45   ; 01
- D 0 - - - 0x039581 0E:9571: 38        .byte con_chr_bank_bg + $38, con_chr_bank_spr + $4B   ; 02
- D 0 - - - 0x039583 0E:9573: 38        .byte con_chr_bank_bg + $38, con_chr_bank_spr + $4A   ; 03
- D 0 - - - 0x039585 0E:9575: 4C        .byte con_chr_bank_bg + $4C, con_chr_bank_spr + $4A   ; 04
- D 0 - - - 0x039587 0E:9577: 4C        .byte con_chr_bank_bg + $4C, con_chr_bank_spr + $4A   ; 05



tbl_9579:
- D 0 - - - 0x039589 0E:9579: 48        .byte $48   ; 00
- D 0 - - - 0x03958A 0E:957A: 4A        .byte $4A   ; 01
- D 0 - - - 0x03958B 0E:957B: 43        .byte $43   ; 02
- D 0 - - - 0x03958C 0E:957C: 46        .byte $46   ; 03
- D 0 - - - 0x03958D 0E:957D: 4C        .byte $4C   ; 04
- D 0 - - - 0x03958E 0E:957E: 49        .byte $49   ; 05



tbl_957F:
- D 0 - - - 0x03958F 0E:957F: 00        .byte $00   ; 0B
- D 0 - - - 0x039590 0E:9580: 09        .byte $09   ; 0C
- D 0 - - - 0x039591 0E:9581: 11        .byte $11   ; 0D
- D 0 - - - 0x039592 0E:9582: 1F        .byte $1F   ; 0E
- D 0 - - - 0x039593 0E:9583: 29        .byte $29   ; 0F
- D 0 - - - 0x039594 0E:9584: 2F        .byte $2F   ; 10



tbl_9585:
- D 0 - - - 0x039595 0E:9585: 00        .byte $00   ; 00
- D 0 - - - 0x039596 0E:9586: 04        .byte $04   ; 01
- D 0 - - - 0x039597 0E:9587: 08        .byte $08   ; 02
- D 0 - - - 0x039598 0E:9588: 2C        .byte $2C   ; 03
- D 0 - - - 0x039599 0E:9589: 10        .byte $10   ; 04
- D 0 - - - 0x03959A 0E:958A: 0C        .byte $0C   ; 05
- D 0 - - - 0x03959B 0E:958B: 28        .byte $28   ; 06
- D 0 - - - 0x03959C 0E:958C: 08        .byte $08   ; 07
- D 0 - - - 0x03959D 0E:958D: FF        .byte $FF   ; 08 FF
- D 0 - - - 0x03959E 0E:958E: 0C        .byte $0C   ; 09
- D 0 - - - 0x03959F 0E:958F: 10        .byte $10   ; 0A
- D 0 - - - 0x0395A0 0E:9590: 14        .byte $14   ; 0B
- D 0 - - - 0x0395A1 0E:9591: 18        .byte $18   ; 0C
- D 0 - - - 0x0395A2 0E:9592: 10        .byte $10   ; 0D
- D 0 - - - 0x0395A3 0E:9593: 04        .byte $04   ; 0E
- D 0 - - - 0x0395A4 0E:9594: 00        .byte $00   ; 0F
- D 0 - - - 0x0395A5 0E:9595: FF        .byte $FF   ; 10 FF
- D 0 - - - 0x0395A6 0E:9596: 1C        .byte $1C   ; 11
- D 0 - - - 0x0395A7 0E:9597: 20        .byte $20   ; 12
- D 0 - - - 0x0395A8 0E:9598: 30        .byte $30   ; 13
- D 0 - - - 0x0395A9 0E:9599: 18        .byte $18   ; 14
- D 0 - - - 0x0395AA 0E:959A: 10        .byte $10   ; 15
- D 0 - - - 0x0395AB 0E:959B: 04        .byte $04   ; 16
- D 0 - - - 0x0395AC 0E:959C: 00        .byte $00   ; 17
- D 0 - - - 0x0395AD 0E:959D: 10        .byte $10   ; 18
- D 0 - - - 0x0395AE 0E:959E: 2C        .byte $2C   ; 19
- D 0 - - - 0x0395AF 0E:959F: 40        .byte $40   ; 1A
- D 0 - - - 0x0395B0 0E:95A0: 04        .byte $04   ; 1B
- D 0 - - - 0x0395B1 0E:95A1: 00        .byte $00   ; 1C
- D 0 - - - 0x0395B2 0E:95A2: 08        .byte $08   ; 1D
- D 0 - - - 0x0395B3 0E:95A3: FF        .byte $FF   ; 1E FF
- D 0 - - - 0x0395B4 0E:95A4: 28        .byte $28   ; 1F
- D 0 - - - 0x0395B5 0E:95A5: 08        .byte $08   ; 20
- D 0 - - - 0x0395B6 0E:95A6: 2C        .byte $2C   ; 21
- D 0 - - - 0x0395B7 0E:95A7: 10        .byte $10   ; 22
- D 0 - - - 0x0395B8 0E:95A8: 3C        .byte $3C   ; 23
- D 0 - - - 0x0395B9 0E:95A9: 04        .byte $04   ; 24
- D 0 - - - 0x0395BA 0E:95AA: 00        .byte $00   ; 25
- D 0 - - - 0x0395BB 0E:95AB: 00        .byte $00   ; 26
- D 0 - - - 0x0395BC 0E:95AC: 08        .byte $08   ; 27
- D 0 - - - 0x0395BD 0E:95AD: FF        .byte $FF   ; 28 FF
- D 0 - - - 0x0395BE 0E:95AE: 30        .byte $30   ; 29
- D 0 - - - 0x0395BF 0E:95AF: 10        .byte $10   ; 2A
- D 0 - - - 0x0395C0 0E:95B0: 34        .byte $34   ; 2B
- D 0 - - - 0x0395C1 0E:95B1: 04        .byte $04   ; 2C
- D 0 - - - 0x0395C2 0E:95B2: 38        .byte $38   ; 2D
- D 0 - - - 0x0395C3 0E:95B3: FF        .byte $FF   ; 2E FF
- D 0 - - - 0x0395C4 0E:95B4: 18        .byte $18   ; 2F
- D 0 - - - 0x0395C5 0E:95B5: 08        .byte $08   ; 30
- D 0 - - - 0x0395C6 0E:95B6: 3C        .byte $3C   ; 31
- D 0 - - - 0x0395C7 0E:95B7: 18        .byte $18   ; 32
- D 0 - - - 0x0395C8 0E:95B8: 04        .byte $04   ; 33
- D 0 - - - 0x0395C9 0E:95B9: 10        .byte $10   ; 34
- D 0 - - - 0x0395CA 0E:95BA: 28        .byte $28   ; 35
- D 0 - - - 0x0395CB 0E:95BB: FF        .byte $FF   ; 36 FF



tbl_95BC:
- D 0 - - - 0x0395CC 0E:95BC: 02        .byte $02, $00, $12, $13   ; 00
- D 0 - - - 0x0395D0 0E:95C0: 04        .byte $04, $05, $14, $15   ; 04
- D 0 - - - 0x0395D4 0E:95C4: 06        .byte $06, $07, $16, $17   ; 08
- D 0 - - - 0x0395D8 0E:95C8: 04        .byte $04, $2A, $3A, $3B   ; 10
- D 0 - - - 0x0395DC 0E:95CC: 08        .byte $08, $09, $18, $19   ; 14
- D 0 - - - 0x0395E0 0E:95D0: 04        .byte $04, $2A, $3C, $2D   ; 18
- D 0 - - - 0x0395E4 0E:95D4: 0A        .byte $0A, $0B, $1A, $1B   ; 1C
- D 0 - - - 0x0395E8 0E:95D8: 0C        .byte $0C, $0D, $1C, $1D   ; 20
- D 0 - - - 0x0395EC 0E:95DC: 2B        .byte $2B, $2C, $38, $39   ; 24
- - - - - - 0x0395F0 0E:95E0: 20        .byte $20, $21, $30, $31   ; 28
- D 0 - - - 0x0395F4 0E:95E4: 22        .byte $22, $23, $32, $33   ; 2C
- D 0 - - - 0x0395F8 0E:95E8: 24        .byte $24, $25, $34, $35   ; 30
- D 0 - - - 0x0395FC 0E:95EC: 06        .byte $06, $3D, $16, $2E   ; 34
- D 0 - - - 0x039600 0E:95F0: 0E        .byte $0E, $0F, $1E, $1F   ; 38
- D 0 - - - 0x039604 0E:95F4: 26        .byte $26, $27, $36, $37   ; 3C
- D 0 - - - 0x039608 0E:95F8: 28        .byte $28, $29, $38, $39   ; 40
- D 0 - - - 0x03960C 0E:95FC: 06        .byte $06, $3E, $16, $2F   ; 44



sub_0x039610_обработчик_ending:
C - - - - - 0x039610 0E:9600: A5 21     LDA ram_script_draw_lo
C - - - - - 0x039612 0E:9602: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x039615 0E:9605: 23 96     .word ofs_007_9623_00
- D 0 - I - 0x039617 0E:9607: 2B 96     .word ofs_007_962B_01_lousy_tricks
- D 0 - I - 0x039619 0E:9609: 9E 96     .word ofs_007_969E_02
- D 0 - I - 0x03961B 0E:960B: BA 96     .word ofs_007_96BA_03
- D 0 - I - 0x03961D 0E:960D: BF 96     .word ofs_007_96BF_04
- D 0 - I - 0x03961F 0E:960F: 19 97     .word ofs_007_9719_05_shred_съебывается
- D 0 - I - 0x039621 0E:9611: 3D 98     .word ofs_007_983D_06
- D 0 - I - 0x039623 0E:9613: 5D 98     .word ofs_007_985D_07
- D 0 - I - 0x039625 0E:9615: 6A 98     .word ofs_007_986A_08_celebrate
- D 0 - I - 0x039627 0E:9617: 92 98     .word ofs_007_9892_09
- - - - - - 0x039629 0E:9619: AD 98     .word ofs_007_98AD_0A
- - - - - - 0x03962B 0E:961B: CE 98     .word ofs_007_98CE_0B_credits
- - - - - - 0x03962D 0E:961D: FD 98     .word ofs_007_98FD_0C
- D 0 - I - 0x03962F 0E:961F: 1C 99     .word ofs_007_991C_0D
- D 0 - I - 0x039631 0E:9621: 35 99     .word ofs_007_9935_0E_try_hard_mode



ofs_007_9623_00:
C - - J - - 0x039633 0E:9623: E6 21     INC ram_script_draw_lo
C - - - - - 0x039635 0E:9625: 20 C2 F6  JSR sub_0x03F6D2_выключить_музыку_и_звуки
C - - - - - 0x039638 0E:9628: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный



ofs_007_962B_01_lousy_tricks:
C - - J - - 0x03963B 0E:962B: 20 C1 F7  JSR sub_9F2B_сохранить_topscore
C - - - - - 0x03963E 0E:962E: A9 41     LDA #con_0x03F6AD_41
C - - - - - 0x039640 0E:9630: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x039643 0E:9633: A9 0B     LDA #con_0048_0B
C - - - - - 0x039645 0E:9635: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
; con_новые_персы
C - - - - - 0x039648 0E:9638: A5 A2     LDA ram_plr_id
C - - - - - 0x03964A 0E:963A: 8D 50 05  STA ram_obj_id
C - - - - - 0x03964D 0E:963D: A9 06     LDA #con_fighter_shred
C - - - - - 0x03964F 0E:963F: 8D 51 05  STA ram_obj_id + $01
C - - - - - 0x039652 0E:9642: 85 A3     STA ram_plr_id + $01
C - - - - - 0x039654 0E:9644: A0 00     LDY #$00
C - - - - - 0x039656 0E:9646: 20 5C 96  JSR sub_965C_выбор_текста_палитры_речи_анимации
C - - - - - 0x039659 0E:9649: AC 50 05  LDA ram_obj_id
                                        AND #$03 ; фикс палитры где шрушер сидит на жопе
                                        TAY
C - - - - - 0x03965C 0E:964C: B9 57 99  LDA tbl_9957_цвет_повязки_черепахи_где_шреддер_сидит_на_заднице,Y
C - - - - - 0x03965F 0E:964F: 8D 54 06  STA ram_pal_buffer + $07
C - - - - - 0x039662 0E:9652: 8D 60 06  STA ram_pal_buffer + $13
C - - - - - 0x039665 0E:9655: 8D 64 06  STA ram_pal_buffer + $17
bra_9658_RTS:
C - - - - - 0x039668 0E:9658: 60        RTS



sub_965C_выбор_текста_палитры_речи_анимации:
; Y = 00 (lousy tricks) или 01 (celebrate)
C - - - - - 0x03966C 0E:965C: 84 18     STY ram_0018
C - - - - - 0x03966E 0E:965E: B9 4B 99  LDA tbl_994B_animation,Y
C - - - - - 0x039671 0E:9661: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x039674 0E:9664: A9 70     LDA #$70
C - - - - - 0x039676 0E:9666: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x039679 0E:9669: A9 1F     LDA #$1F
C - - - - - 0x03967B 0E:966B: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x03967E 0E:966E: B9 51 99  LDA tbl_9951_speech,Y
C - - - - - 0x039681 0E:9671: 85 B6     STA ram_speech
C - - - - - 0x039683 0E:9673: BE 4D 99  LDX tbl_994D_ending,Y
C - - - - - 0x039686 0E:9676: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
C - - - - - 0x039689 0E:9679: A6 18     LDX ram_0018
C - - - - - 0x03968B 0E:967B: BC 4F 99  LDY tbl_994F_chr_pair,X
C - - - - - 0x03968E 0E:967E: 20 1A DC  JSR sub_0x03DC2A_запись_пары_chr_bg
C - - - - - 0x039691 0E:9681: A0 08     LDY #con_chr_pair_08
C - - - - - 0x039693 0E:9683: 20 04 DC  JSR sub_0x03DC14_запись_1й_пары_chr_spr
C - - - - - 0x039696 0E:9686: A9 52     LDA #con_chr_bank_spr + $52
C - - - - - 0x039698 0E:9688: 85 36     STA ram_chr_bank_spr + $02
C - - - - - 0x03969A 0E:968A: E6 21     INC ram_script_draw_lo  ; 02 09
C - - - - - 0x03969C 0E:968C: 8A        TXA
C - - - - - 0x03969D 0E:968D: 0A        ASL
C - - - - - 0x03969E 0E:968E: A8        TAY
C - - - - - 0x03969F 0E:968F: B9 54 99  LDA tbl_9953_палитра_спрайтов + $01,Y
C - - - - - 0x0396A2 0E:9692: 48        PHA
C - - - - - 0x0396A3 0E:9693: B9 53 99  LDA tbl_9953_палитра_фона,Y
C - - - - - 0x0396A6 0E:9696: A8        TAY
C - - - - - 0x0396A7 0E:9697: 68        PLA
C - - - - - 0x0396A8 0E:9698: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x0396AB 0E:969B: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



ofs_007_969E_02:
C - - J - - 0x0396AE 0E:969E: 20 36 9B  JSR sub_9B36_обработка_выбранного_speech
C - - - - - 0x0396B1 0E:96A1: AD 31 06  LDA ram_0631
C - - - - - 0x0396B4 0E:96A4: D0 B2     BNE bra_9658_RTS
C - - - - - 0x0396B6 0E:96A6: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x0396B9 0E:96A9: F0 05     BEQ bra_96B0
C - - - - - 0x0396BB 0E:96AB: E6 21     INC ram_script_draw_lo
C - - - - - 0x0396BD 0E:96AD: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
bra_96B0:
- - - - - - 0x0396C0 0E:96B0: A9 0D     LDA #$0D
- - - - - - 0x0396C2 0E:96B2: 85 21     STA ram_script_draw_lo
- - - - - - 0x0396C4 0E:96B4: A9 C0     LDA #$C0
- - - - - - 0x0396C6 0E:96B6: 8D 60 05  STA ram_obj_timer
- - - - - - 0x0396C9 0E:96B9: 60        RTS



ofs_007_96BA_03:
C - - J - - 0x0396CA 0E:96BA: E6 21     INC ram_script_draw_lo
C - - - - - 0x0396CC 0E:96BC: 4C 42 F0  JMP loc_0x03F052_отрисовать_пустой_экран



ofs_007_96BF_04:
C - - J - - 0x0396CF 0E:96BF: E6 21     INC ram_script_draw_lo
C - - - - - 0x0396D1 0E:96C1: A9 02     LDA #con_0048_02
C - - - - - 0x0396D3 0E:96C3: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x0396D6 0E:96C6: A2 08     LDX #con_screen_stage_water_front
C - - - - - 0x0396D8 0E:96C8: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
C - - - - - 0x0396DB 0E:96CB: A0 01     LDY #con_D57A_01
C - - - - - 0x0396DD 0E:96CD: A9 02     LDA #con_D57A_02
C - - - - - 0x0396DF 0E:96CF: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x0396EA 0E:96DA: A2 01     LDX #$01
bra_96DC_loop:
; bzk optimize, A будет перезаписан
C - - - - - 0x0396E4 0E:96D4: AD 50 05  LDA ram_obj_id,X
C - - - - - 0x0396E7 0E:96D7: 20 2A E3  JSR sub_0x03DE0C_выбор_палитры_перса_с_сохранением_X
C - - - - - 0x0396EC 0E:96DC: BD 13 97  LDA tbl_9713_анимация,X
C - - - - - 0x0396EF 0E:96DF: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x0396F2 0E:96E2: A9 B0     LDA #$B0
C - - - - - 0x0396F4 0E:96E4: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x0396F7 0E:96E7: BD 15 97  LDA tbl_9715,X
C - - - - - 0x0396FA 0E:96EA: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x0396FD 0E:96ED: BD 17 97  LDA tbl_9717,X
C - - - - - 0x039700 0E:96F0: 9D 10 05  STA ram_obj_spr_flip,X ; 0510 0511 
C - - - - - 0x039703 0E:96F3: CA        DEX
C - - - - - 0x039704 0E:96F4: 10 E6     BPL bra_96DC_loop
C - - - - - 0x039706 0E:96F6: 20 14 F7  JSR sub_0x03F724_смена_тайловых_наборов_для_анимаций
C - - - - - 0x039709 0E:96F9: A9 06     LDA #$06
C - - - - - 0x03970B 0E:96FB: 8D D1 05  STA ram_obj_05D0 + $01
C - - - - - 0x03970E 0E:96FE: A9 30     LDA #$30
C - - - - - 0x039710 0E:9700: 8D 61 05  STA ram_obj_timer + $01
C - - - - - 0x039713 0E:9703: A9 81     LDA #$81
C - - - - - 0x039715 0E:9705: 8D 01 05  STA ram_obj_0500 + $01
C - - - - - 0x039718 0E:9708: A9 5C     LDA #con_chr_bank_bg + $5C
C - - - - - 0x03971A 0E:970A: 85 4E     STA ram_alt_chr_bank_bg_1
C - - - - - 0x03971C 0E:970C: A9 5E     LDA #con_chr_bank_bg + $5E
C - - - - - 0x03971E 0E:970E: 85 4F     STA ram_alt_chr_bank_bg_1 + $01
C - - - - - 0x039720 0E:9710: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



tbl_9713_анимация:
- D 0 - - - 0x039723 0E:9713: 80        .byte $80   ; 00
- D 0 - - - 0x039724 0E:9714: A7        .byte $A7   ; 01

tbl_9715:
- D 0 - - - 0x039725 0E:9715: 70        .byte $70   ; 00
- D 0 - - - 0x039726 0E:9716: B0        .byte $B0   ; 01

tbl_9717:
- D 0 - - - 0x039727 0E:9717: 00        .byte $00   ; 00
- D 0 - - - 0x039728 0E:9718: 40        .byte $40   ; 01



ofs_007_9719_05_shred_съебывается:
C - - J - - 0x039729 0E:9719: A2 00     LDX #$00
                                        JSR sub_0x03F723_отрисовка_финальной_стойки
C - - - - - 0x039730 0E:9720: E8        INX ; 01
C - - - - - 0x039731 0E:9721: AD 31 05  LDA ram_obj_0530 + $01
C - - - - - 0x039734 0E:9724: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x039737 0E:9727: 3D 97     .word ofs_006_973D_00
- D 0 - I - 0x039739 0E:9729: 45 97     .word ofs_006_9745_01
- D 0 - I - 0x03973B 0E:972B: 5F 97     .word ofs_006_975F_02
- D 0 - I - 0x03973D 0E:972D: 8F 97     .word ofs_006_978F_03
- D 0 - I - 0x03973F 0E:972F: B2 97     .word ofs_006_97B2_04
- D 0 - I - 0x039741 0E:9731: C6 97     .word ofs_006_97C6_05
- D 0 - I - 0x039743 0E:9733: F6 97     .word ofs_006_97F6_06
- D 0 - I - 0x039745 0E:9735: 10 98     .word ofs_006_9810_07
- D 0 - I - 0x039747 0E:9737: 25 98     .word ofs_006_9825_08
- D 0 - I - 0x039749 0E:9739: 25 98     .word ofs_006_9825_09
- D 0 - I - 0x03974B 0E:973B: 38 98     .word ofs_006_9838_0A



ofs_006_973D_00:
; X = 01
C - - J - - 0x03974D 0E:973D: CE 61 05  DEC ram_obj_timer + $01
C - - - - - 0x039750 0E:9740: D0 6F     BNE bra_97B1_RTS
C - - - - - 0x039752 0E:9742: EE 31 05  INC ram_obj_0530 + $01
ofs_006_9745_01:
; X = 01
C - - - - - 0x039755 0E:9745: A0 0C     LDY #con_DFE6_0C
C - - - - - 0x039757 0E:9747: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x03975A 0E:974A: AD C1 05  LDA ram_obj_anim_timer + $01
C - - - - - 0x03975D 0E:974D: 30 03     BMI bra_9752
bra_974F:
C - - - - - 0x03975F 0E:974F: 4C 14 F7  JMP loc_0x03F724_смена_тайловых_наборов_для_анимаций
bra_9752:
C - - - - - 0x039762 0E:9752: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x039765 0E:9755: A9 00     LDA #$00
C - - - - - 0x039767 0E:9757: 8D 11 05  STA ram_obj_spr_flip + $01
C - - - - - 0x03976A 0E:975A: A9 41     LDA #< $0140
C - - - - - 0x03976C 0E:975C: 4C E0 DC  STA ram_obj_spd_X_lo + $01
                                        LDA #> $0140
                                        STA ram_obj_spd_X_hi + $01
                                        RTS



ofs_006_975F_02:
; X = 01
C - - J - - 0x03976F 0E:975F: 18        CLC
C - - - - - 0x039770 0E:9760: A9 04     LDA #$04
C - - - - - 0x039772 0E:9762: 6D 91 04  ADC ram_obj_spd_X_lo + $01
C - - - - - 0x039775 0E:9765: 8D 91 04  STA ram_obj_spd_X_lo + $01
C - - - - - 0x039778 0E:9768: A9 00     LDA #$00
C - - - - - 0x03977A 0E:976A: 6D 81 04  ADC ram_obj_spd_X_hi + $01
C - - - - - 0x03977D 0E:976D: 8D 81 04  STA ram_obj_spd_X_hi + $01
C - - - - - 0x039780 0E:9770: A0 0E     LDY #con_0x03D0C3_shred_бег_вперед
C - - - - - 0x039782 0E:9772: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x039785 0E:9775: A0 0E     LDY #con_0x03D0C3_shred_бег_вперед
C - - - - - 0x039787 0E:9777: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x03978A 0E:977A: 20 65 DB  JSR sub_0x03DB75_добавить_spd_X_к_pos_X
C - - - - - 0x03978D 0E:977D: AD 31 04  LDA ram_obj_pos_X_hi + $01
C - - - - - 0x039790 0E:9780: F0 CD     BEQ bra_974F
C - - - - - 0x039792 0E:9782: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x039795 0E:9785: A9 60     LDA #$60
C - - - - - 0x039797 0E:9787: 8D 61 05  STA ram_obj_timer + $01
C - - - - - 0x03979A 0E:978A: A9 00     LDA #$00
C - - - - - 0x03979C 0E:978C: 8D 01 05  STA ram_obj_0500 + $01
ofs_006_978F_03:
; X = 01
C - - - - - 0x03979F 0E:978F: CE 61 05  DEC ram_obj_timer + $01
C - - - - - 0x0397A2 0E:9792: D0 1D     BNE bra_97B1_RTS
C - - - - - 0x0397A4 0E:9794: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x0397A7 0E:9797: A9 00     LDA #$00
C - - - - - 0x0397A9 0E:9799: 8D 41 04  STA ram_obj_pos_X_lo + $01
C - - - - - 0x0397AC 0E:979C: 8D 31 04  STA ram_obj_pos_X_hi + $01
C - - - - - 0x0397AF 0E:979F: A9 A0     LDA #< $00A0
C - - - - - 0x0397B1 0E:97A1: 20 E0 DC  STA ram_obj_spd_X_lo + $01
                                        LDA #> $00A0
                                        STA ram_obj_spd_X_hi + $01
C - - - - - 0x0397B4 0E:97A4: A9 38     LDA #$38
C - - - - - 0x0397B6 0E:97A6: 8D 11 04  STA ram_obj_pos_Y_lo + $01
C - - - - - 0x0397B9 0E:97A9: 8D 61 05  STA ram_obj_timer + $01
C - - - - - 0x0397BC 0E:97AC: A9 13     LDA #$13
C - - - - - 0x0397BE 0E:97AE: 8D 01 04  STA ram_obj_anim_id + $01
bra_97B1_RTS:
C - - - - - 0x0397C1 0E:97B1: 60        RTS



ofs_006_97B2_04:
; X = 01
C - - J - - 0x0397C2 0E:97B2: 20 65 DB  JSR sub_0x03DB75_добавить_spd_X_к_pos_X
C - - - - - 0x0397C5 0E:97B5: AD 41 04  LDA ram_obj_pos_X_lo + $01
C - - - - - 0x0397C8 0E:97B8: C9 A0     CMP #$A0
C - - - - - 0x0397CA 0E:97BA: B0 50     BCS bra_980C
bra_97BC:
C - - - - - 0x0397CC 0E:97BC: A9 42     LDA #$42    ; pos_Y для сравнения
C - - - - - 0x0397CE 0E:97BE: A0 04     LDY #$04    ; spd_Z_lo
C - - - - - 0x0397D0 0E:97C0: 20 0D DF  JSR sub_0x03DF1D
C - - - - - 0x0397D3 0E:97C3: 4C 4C DB  JMP loc_0x03DB5C_добавить_spd_Z_к_pos_Y



ofs_006_97C6_05:
; X = 01
C - - J - - 0x0397D6 0E:97C6: CE 61 05  DEC ram_obj_timer + $01
C - - - - - 0x0397D9 0E:97C9: D0 F1     BNE bra_97BC
C - - - - - 0x0397DB 0E:97CB: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x0397DE 0E:97CE: A0 0E     LDY #con_chr_pair_0E
C - - - - - 0x0397E0 0E:97D0: 20 0F DC  JSR sub_0x03DC1F_запись_2й_пары_chr_spr
C - - - - - 0x0397E3 0E:97D3: A2 05     LDX #$05    ; tip_индекс_буфера_палитры + $05
C - - - - - 0x0397E5 0E:97D5: A9 02     LDA #con_AF40_pal + $02
C - - - - - 0x0397E7 0E:97D7: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x0397EA 0E:97DA: A2 06     LDX #$06    ; tip_индекс_буфера_палитры + $06
C - - - - - 0x0397EC 0E:97DC: A9 3B     LDA #con_AF40_pal + $3B
C - - - - - 0x0397EE 0E:97DE: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x0397F1 0E:97E1: A9 2B     LDA #$2B
C - - - - - 0x0397F3 0E:97E3: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x0397F6 0E:97E6: A9 40     LDA #$40
C - - - - - 0x0397F8 0E:97E8: 8D 11 05  STA ram_obj_spr_flip + $01
C - - - - - 0x0397FB 0E:97EB: A9 1D     LDA #con_sfx_взрыв
C - - - - - 0x0397FD 0E:97ED: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_97F0:
C - - - - - 0x039800 0E:97F0: A9 06     LDA #$06
C - - - - - 0x039802 0E:97F2: 8D C1 05  STA ram_obj_anim_timer + $01
C - - - - - 0x039805 0E:97F5: 60        RTS



ofs_006_97F6_06:
; X = 01
C - - J - - 0x039806 0E:97F6: CE C1 05  DEC ram_obj_anim_timer + $01
C - - - - - 0x039809 0E:97F9: 10 B6     BPL bra_97B1_RTS
C - - - - - 0x03980B 0E:97FB: AD 01 04  LDA ram_obj_anim_id + $01
C - - - - - 0x03980E 0E:97FE: C9 2F     CMP #$2F
C - - - - - 0x039810 0E:9800: B0 05     BCS bra_9807
C - - - - - 0x039812 0E:9802: EE 01 04  INC ram_obj_anim_id + $01
C - - - - - 0x039815 0E:9805: D0 E9     BNE bra_97F0
bra_9807:
C - - - - - 0x039817 0E:9807: A9 28     LDA #$28
C - - - - - 0x039819 0E:9809: 8D 01 04  STA ram_obj_anim_id + $01
bra_980C:
C - - - - - 0x03981C 0E:980C: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x03981F 0E:980F: 60        RTS



ofs_006_9810_07:
; X = 01
C - - J - - 0x039820 0E:9810: 20 4C DB  JSR sub_0x03DB5C_добавить_spd_Z_к_pos_Y
C - - - - - 0x039823 0E:9813: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x039826 0E:9816: 90 99     BCC bra_97B1_RTS
C - - - - - 0x039828 0E:9818: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x03982B 0E:981B: A9 20     LDA #$20
C - - - - - 0x03982D 0E:981D: 8D 61 05  STA ram_obj_timer + $01
C - - - - - 0x039830 0E:9820: A9 29     LDA #$29
C - - - - - 0x039832 0E:9822: 8D 01 04  STA ram_obj_anim_id + $01
ofs_006_9825_08:
; X = 01
ofs_006_9825_09:
; X = 01
C - - - - - 0x039835 0E:9825: CE 61 05  DEC ram_obj_timer + $01
C - - - - - 0x039838 0E:9828: D0 87     BNE bra_97B1_RTS
C - - - - - 0x03983A 0E:982A: A9 60     LDA #$60
C - - - - - 0x03983C 0E:982C: 8D 61 05  STA ram_obj_timer + $01
C - - - - - 0x03983F 0E:982F: EE 31 05  INC ram_obj_0530 + $01
C - - - - - 0x039842 0E:9832: A9 2A     LDA #$2A
C - - - - - 0x039844 0E:9834: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x039847 0E:9837: 60        RTS



ofs_006_9838_0A:
; X = 01
C - - J - - 0x039848 0E:9838: E6 21     INC ram_script_draw_lo
C - - - - - 0x03984A 0E:983A: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный



ofs_007_983D_06:
C - - J - - 0x03984D 0E:983D: A2 2E     LDX #con_screen_ending_2
C - - - - - 0x03984F 0E:983F: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
C - - - - - 0x039852 0E:9842: 20 BE DA  JSR sub_0x03DACE_удалить_все_объекты
C - - - - - 0x039855 0E:9845: E6 21     INC ram_script_draw_lo
C - - - - - 0x039857 0E:9847: A9 0B     LDA #con_0048_0B
C - - - - - 0x039859 0E:9849: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x03985C 0E:984C: A0 1C     LDY #con_chr_pair_1C
C - - - - - 0x03985E 0E:984E: 20 1A DC  JSR sub_0x03DC2A_запись_пары_chr_bg
C - - - - - 0x039861 0E:9851: A9 04     LDA #con_speech_celebrate
C - - - - - 0x039863 0E:9853: 85 B6     STA ram_speech
C - - - - - 0x039865 0E:9855: A9 1A     LDA #con_D57A_1A
C - - - - - 0x039867 0E:9857: 20 B0 D3  JSR sub_0x03D3C0_записать_палитру_для_фона
C - - - - - 0x03986A 0E:985A: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



ofs_007_985D_07:
C - - J - - 0x03986D 0E:985D: 20 36 9B  JSR sub_9B36_обработка_выбранного_speech
C - - - - - 0x039870 0E:9860: AD 31 06  LDA ram_0631
C - - - - - 0x039873 0E:9863: D0 2C     BNE bra_9891_RTS
C - - - - - 0x039875 0E:9865: E6 21     INC ram_script_draw_lo
C - - - - - 0x039877 0E:9867: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный



ofs_007_986A_08_celebrate:
C - - J - - 0x03987A 0E:986A: A9 90     LDA #$90
C - - - - - 0x03987C 0E:986C: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03987F 0E:986F: A0 01     LDY #$01
C - - - - - 0x039881 0E:9871: 20 5C 96  JSR sub_965C_выбор_текста_палитры_речи_анимации
C - - - - - 0x039884 0E:9874: A5 A2     LDA ram_plr_id
; con_новые_персы
                                        AND #$03 ; фикс палитры конечной заставки перед титрами
C - - - - - 0x039886 0E:9876: 0A        ASL
C - - - - - 0x039887 0E:9877: 0A        ASL
C - - - - - 0x039888 0E:9878: A8        TAY
C - - - - - 0x039889 0E:9879: B9 5B 99  LDA tbl_995B_цвета_повязок_черепах_на_конечной_заставке,Y
C - - - - - 0x03988C 0E:987C: 8D 60 06  STA ram_pal_buffer + $13
C - - - - - 0x03988F 0E:987F: B9 5C 99  LDA tbl_995B_цвета_повязок_черепах_на_конечной_заставке + $01,Y
C - - - - - 0x039892 0E:9882: 8D 64 06  STA ram_pal_buffer + $17
C - - - - - 0x039895 0E:9885: B9 5D 99  LDA tbl_995B_цвета_повязок_черепах_на_конечной_заставке + $02,Y
C - - - - - 0x039898 0E:9888: 8D 68 06  STA ram_pal_buffer + $1B
C - - - - - 0x03989B 0E:988B: B9 5E 99  LDA tbl_995B_цвета_повязок_черепах_на_конечной_заставке + $03,Y
C - - - - - 0x03989E 0E:988E: 8D 6C 06  STA ram_pal_buffer + $1F
bra_9891_RTS:
C - - - - - 0x0398A1 0E:9891: 60        RTS



ofs_007_9892_09:
C - - J - - 0x0398A2 0E:9892: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x0398A4 0E:9894: 29 03     AND #$03
C - - - - - 0x0398A6 0E:9896: D0 F9     BNE bra_9891_RTS
C - - - - - 0x0398A8 0E:9898: CE 60 05  DEC ram_obj_timer
C - - - - - 0x0398AB 0E:989B: D0 F4     BNE bra_9891_RTS
C - - - - - 0x0398AD 0E:989D: 20 A4 A5  LDA ram_option_difficulty
                                        CMP #$03
C - - - - - 0x0398B1 0E:98A1: 90 05     BCC bra_98A8
; if expert
- - - - - - 0x0398B3 0E:98A3: E6 21     INC ram_script_draw_lo
- - - - - - 0x0398B5 0E:98A5: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
bra_98A8:
C - - - - - 0x0398B8 0E:98A8: A9 0E     LDA #$0E
C - - - - - 0x0398BA 0E:98AA: 85 21     STA ram_script_draw_lo
C - - - - - 0x0398BC 0E:98AC: 60        RTS



ofs_007_98AD_0A:
- - - - - - 0x0398BD 0E:98AD: 20 90 FC  JSR sub_0x03FCA0_set_mirroring_H
- - - - - - 0x0398C0 0E:98B0: 20 88 FB  JSR sub_0x03FB98_disable_irq
- - - - - - 0x0398C3 0E:98B3: 20 3C F0  JSR sub_0x03F04C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
- - - - - - 0x0398C6 0E:98B6: A9 00     LDA #con_D57A_00
- - - - - - 0x0398C8 0E:98B8: A8        LDY #con_D57A_00
- - - - - - 0x0398C9 0E:98B9: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
- - - - - - 0x0398CC 0E:98BC: A9 0B     LDA #$0B
- - - - - - 0x0398CE 0E:98BE: 85 21     STA ram_script_draw_lo
- - - - - - 0x0398D0 0E:98C0: 20 25 DC  JSR sub_0x03DC35_запись_пары_chr_bg_06
- - - - - - 0x0398D3 0E:98C3: A9 42     LDA #con_music_ost_technodrome
- - - - - - 0x0398D5 0E:98C5: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
sub_98C8:
- - - - - - 0x0398D8 0E:98C8: A9 60     LDA #$60
- - - - - - 0x0398DA 0E:98CA: 8D 60 05  STA ram_obj_timer
bra_98CD_RTS:
C - - - - - 0x0398DD 0E:98CD: 60        RTS



ofs_007_98CE_0B_credits:
- - - - - - 0x0398DE 0E:98CE: 20 E1 98  JSR sub_98E1
- - - - - - 0x0398E1 0E:98D1: A5 22     LDA ram_счетчик_кадров
- - - - - - 0x0398E3 0E:98D3: 4A        LSR
- - - - - - 0x0398E4 0E:98D4: 90 F7     BCC bra_98CD_RTS
- - - - - - 0x0398E6 0E:98D6: CE 60 05  DEC ram_obj_timer
- - - - - - 0x0398E9 0E:98D9: D0 F2     BNE bra_98CD_RTS
- - - - - - 0x0398EB 0E:98DB: 20 C8 98  JSR sub_98C8
- - - - - - 0x0398EE 0E:98DE: 4C 6B 99  JMP loc_996B_напечатать_credits



bra_98E1:
sub_98E1:
- - - - - - 0x0398F1 0E:98E1: 18        CLC
- - - - - - 0x0398F2 0E:98E2: AD A0 04  LDA ram_obj_spd_Y_hi
- - - - - - 0x0398F5 0E:98E5: 69 30     ADC #$30
- - - - - - 0x0398F7 0E:98E7: 8D A0 04  STA ram_obj_spd_Y_hi
- - - - - - 0x0398FA 0E:98EA: A5 FC     LDA ram_scroll_Y
- - - - - - 0x0398FC 0E:98EC: 69 00     ADC #$00
- - - - - - 0x0398FE 0E:98EE: C9 F0     CMP #$F0
- - - - - - 0x039900 0E:98F0: 90 08     BCC bra_98FA
- - - - - - 0x039902 0E:98F2: A5 FF     LDA ram_for_2000
- - - - - - 0x039904 0E:98F4: 49 02     EOR #$02
- - - - - - 0x039906 0E:98F6: 85 FF     STA ram_for_2000
- - - - - - 0x039908 0E:98F8: A9 00     LDA #$00
bra_98FA:
- - - - - - 0x03990A 0E:98FA: 85 FC     STA ram_scroll_Y
bra_98FC_RTS:
C - - - - - 0x03990C 0E:98FC: 60        RTS



ofs_007_98FD_0C:
- - - - - - 0x03990D 0E:98FD: AD 60 05  LDA ram_obj_timer
- - - - - - 0x039910 0E:9900: F0 0B     BEQ bra_990D
- - - - - - 0x039912 0E:9902: A5 22     LDA ram_счетчик_кадров
- - - - - - 0x039914 0E:9904: 29 03     AND #$03
- - - - - - 0x039916 0E:9906: D0 D9     BNE bra_98E1
- - - - - - 0x039918 0E:9908: CE 60 05  DEC ram_obj_timer
- - - - - - 0x03991B 0E:990B: D0 D4     BNE bra_98E1
bra_990D:
C - - - - - 0x03991D 0E:990D: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03991F 0E:990F: 29 10     AND #con_btn_Start
C - - - - - 0x039921 0E:9911: F0 BA     BEQ bra_98CD_RTS
- - - - - - 0x039923 0E:9913: A5 FF     LDA ram_for_2000
- - - - - - 0x039925 0E:9915: 29 FC     AND #$FC
- - - - - - 0x039927 0E:9917: 85 FF     STA ram_for_2000
- - - - - - 0x039929 0E:9919: 4C 58 FE  JMP loc_0x03FE68_отрисовка_экрана_главное_меню



ofs_007_991C_0D:
C - - J - - 0x03992C 0E:991C: AD 60 05  LDA ram_obj_timer
C - - - - - 0x03992F 0E:991F: F0 EC     BEQ bra_990D
C - - - - - 0x039931 0E:9921: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x039933 0E:9923: 4A        LSR
C - - - - - 0x039934 0E:9924: 90 D6     BCC bra_98FC_RTS
C - - - - - 0x039936 0E:9926: CE 60 05  DEC ram_obj_timer
C - - - - - 0x039939 0E:9929: AD 60 05  LDA ram_obj_timer
C - - - - - 0x03993C 0E:992C: C9 20     CMP #$20
C - - - - - 0x03993E 0E:992E: D0 CC     BNE bra_98FC_RTS
C - - - - - 0x039940 0E:9930: A9 5B     LDA #con_music_volume_fade
C - - - - - 0x039942 0E:9932: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y



ofs_007_9935_0E_try_hard_mode:
C - - J - - 0x039945 0E:9935: A9 07     LDA #con_speech_try_hard_mode
C - - - - - 0x039947 0E:9937: 85 B6     STA ram_speech
C - - - - - 0x039949 0E:9939: 20 36 9B  JSR sub_9B36_обработка_выбранного_speech
C - - - - - 0x03994C 0E:993C: AD 31 06  LDA ram_0631
C - - - - - 0x03994F 0E:993F: D0 BB     BNE bra_98FC_RTS
C - - - - - 0x039951 0E:9941: A9 40     LDA #$40
C - - - - - 0x039953 0E:9943: 8D 60 05  STA ram_obj_timer
C - - - - - 0x039956 0E:9946: A9 0D     LDA #$0D
C - - - - - 0x039958 0E:9948: 85 21     STA ram_script_draw_lo
C - - - - - 0x03995A 0E:994A: 60        RTS



tbl_994B_animation:
- D 0 - - - 0x03995B 0E:994B: 23        .byte $23   ; 00 lousy tricks
- D 0 - - - 0x03995C 0E:994C: 24        .byte $24   ; 01 celebrate

tbl_994D_ending:
- D 0 - - - 0x03995D 0E:994D: 22        .byte con_screen_ending_1   ; 00 lousy tricks
- D 0 - - - 0x03995E 0E:994E: 24        .byte con_screen_ending_3   ; 01 celebrate

tbl_994F_chr_pair:
- D 0 - - - 0x03995F 0E:994F: 0A        .byte con_chr_pair_0A   ; 00 lousy tricks
- D 0 - - - 0x039960 0E:9950: 0C        .byte con_chr_pair_0C   ; 01 celebrate

tbl_9951_speech:
- D 0 - - - 0x039961 0E:9951: 03        .byte con_speech_lousy_tricks   ; 00 lousy tricks
- D 0 - - - 0x039962 0E:9952: 04        .byte con_speech_celebrate   ; 01 celebrate

tbl_9953_палитра_фона:
tbl_9953_палитра_спрайтов:
- D 0 - - - 0x039963 0E:9953: 0C        .byte con_D57A_0C, con_D57A_0D   ; 00 lousy tricks
- D 0 - - - 0x039965 0E:9955: 0E        .byte con_D57A_0E, con_D57A_0F   ; 01 celebrate



tbl_9957_цвет_повязки_черепахи_где_шреддер_сидит_на_заднице:
- - - - - - 0x039967 0E:9957: 11        .byte $11   ; 00
- - - - - - 0x039968 0E:9958: 16        .byte $16   ; 01
- - - - - - 0x039969 0E:9959: 27        .byte $27   ; 02
- D 0 - - - 0x03996A 0E:995A: 14        .byte $14   ; 03



tbl_995B_цвета_повязок_черепах_на_конечной_заставке:
- - - - - - 0x03996B 0E:995B: 14        .byte $14, $11, $16, $27   ; 00
- - - - - - 0x03996F 0E:995F: 11        .byte $11, $16, $27, $14   ; 01
- - - - - - 0x039973 0E:9963: 16        .byte $16, $27, $14, $11   ; 02
- D 0 - - - 0x039977 0E:9967: 27        .byte $27, $14, $11, $16   ; 03



loc_996B_напечатать_credits:
- - - - - - 0x03997B 0E:996B: AD E0 99  LDA #< tbl_99E2_credits
- - - - - - 0x03997E 0E:996E: 85 00     STA ram_0000
- - - - - - 0x039980 0E:9970: AD E1 99  LDA #> tbl_99E2_credits
- - - - - - 0x039983 0E:9973: 85 01     STA ram_0001
- - - - - - 0x039985 0E:9975: A0 00     LDY #$00
- - - - - - 0x039987 0E:9977: AE 30 05  LDX ram_obj_0530
- - - - - - 0x03998A 0E:997A: F0 0C     BEQ bra_9988
bra_997C_loop:
- - - - - - 0x03998C 0E:997C: B1 00     LDA (ram_0000),Y
- - - - - - 0x03998E 0E:997E: 20 B2 99  JSR sub_99B2_увеличить_поинтер
- - - - - - 0x039991 0E:9981: C9 FF     CMP #$FF
- - - - - - 0x039993 0E:9983: D0 F7     BNE bra_997C_loop
- - - - - - 0x039995 0E:9985: CA        DEX
- - - - - - 0x039996 0E:9986: D0 F4     BNE bra_997C_loop
bra_9988:
- - - - - - 0x039998 0E:9988: B1 00     LDA (ram_0000),Y
- - - - - - 0x03999A 0E:998A: 20 B2 99  JSR sub_99B2_увеличить_поинтер
- - - - - - 0x03999D 0E:998D: C9 FE     CMP #$FE
- - - - - - 0x03999F 0E:998F: F0 28     BEQ bra_99B9_FE
- - - - - - 0x0399A1 0E:9991: C9 FD     CMP #$FD
- - - - - - 0x0399A3 0E:9993: F0 43     BEQ bra_99D8_FD
- - - - - - 0x0399A5 0E:9995: 48        PHA
- - - - - - 0x0399A6 0E:9996: B1 00     LDA (ram_0000),Y
- - - - - - 0x0399A8 0E:9998: A8        TAY
- - - - - - 0x0399A9 0E:9999: 68        PLA
- - - - - - 0x0399AA 0E:999A: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
- - - - - - 0x0399AD 0E:999D: 20 B2 99  JSR sub_99B2_увеличить_поинтер
- - - - - - 0x0399B0 0E:99A0: A0 00     LDY #$00
bra_99A2_loop:
- - - - - - 0x0399B2 0E:99A2: B1 00     LDA (ram_0000),Y
- - - - - - 0x0399B4 0E:99A4: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
- - - - - - 0x0399B7 0E:99A7: 20 B2 99  JSR sub_99B2_увеличить_поинтер
- - - - - - 0x0399BA 0E:99AA: C9 FF     CMP #$FF
- - - - - - 0x0399BC 0E:99AC: D0 F4     BNE bra_99A2_loop
loc_99AE:
- - - - - - 0x0399BE 0E:99AE: EE 30 05  INC ram_obj_0530
- - - - - - 0x0399C1 0E:99B1: 60        RTS



sub_99B2_увеличить_поинтер:
- - - - - - 0x0399C2 0E:99B2: E6 00     INC ram_0000
- - - - - - 0x0399C4 0E:99B4: D0 02     BNE bra_99B8_RTS    ; if not overflow
- - - - - - 0x0399C6 0E:99B6: E6 01     INC ram_0001
bra_99B8_RTS:
- - - - - - 0x0399C8 0E:99B8: 60        RTS



bra_99B9_FE:
- - - - - - 0x0399C9 0E:99B9: B1 00     LDA (ram_0000),Y
- - - - - - 0x0399CB 0E:99BB: 48        PHA
- - - - - - 0x0399CC 0E:99BC: 20 B2 99  JSR sub_99B2_увеличить_поинтер
- - - - - - 0x0399CF 0E:99BF: B1 00     LDA (ram_0000),Y
- - - - - - 0x0399D1 0E:99C1: A8        TAY
- - - - - - 0x0399D2 0E:99C2: 68        PLA
- - - - - - 0x0399D3 0E:99C3: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
- - - - - - 0x0399D6 0E:99C6: A9 03     LDA #con_buf_mode_03
- - - - - - 0x0399D8 0E:99C8: 9D FD 02  STA ram_ppu_buffer - $03,X
- - - - - - 0x0399DB 0E:99CB: A9 15     LDA #$15    ; счетчик
- - - - - - 0x0399DD 0E:99CD: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
- - - - - - 0x0399E0 0E:99D0: A9 00     LDA #$00    ; закрыть буфер
- - - - - - 0x0399E2 0E:99D2: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
- - - - - - 0x0399E5 0E:99D5: 4C AE 99  JMP loc_99AE



bra_99D8_FD:
- - - - - - 0x0399E8 0E:99D8: E6 21     INC ram_script_draw_lo
- - - - - - 0x0399EA 0E:99DA: A9 01     LDA #$01
- - - - - - 0x0399EC 0E:99DC: 8D 60 05  STA ram_obj_timer
- - - - - - 0x0399EF 0E:99DF: 60        RTS



tbl_99E2_credits:
; STAFF
- - - - - - 0x0399F2 0E:99E2: 28 2D     .dbyt $282D
- - - - - - 0x0399F4 0E:99E4: 9D        .byte $9D, $9E, $8B, $90, $90   ; 
- - - - - - 0x0399F9 0E:99E9: FF        .byte $FF   ; 

; PROGRAM
- - - - - - 0x0399FA 0E:99EA: 29 6C     .dbyt $296C
- - - - - - 0x0399FC 0E:99EC: 9A        .byte $9A, $9C, $99, $91, $9C, $8B, $97   ; 
- - - - - - 0x039A03 0E:99F3: FF        .byte $FF   ; 

; MITSUAKI OGAWA
- - - - - - 0x039A04 0E:99F4: 29 E9     .dbyt $29E9
- - - - - - 0x039A06 0E:99F6: 97        .byte $97, $93, $9E, $9D, $9F, $8B, $95, $93, $00, $99, $91, $8B, $A1, $8B   ; 
- - - - - - 0x039A14 0E:9A04: FF        .byte $FF   ; 

; TULIP MIYAOKA
- - - - - - 0x039A15 0E:9A05: 2A 49     .dbyt $2A49
- - - - - - 0x039A17 0E:9A07: 9E        .byte $9E, $9F, $96, $93, $9A, $00, $97, $93, $A3, $8B, $99, $95, $8B   ; 
- - - - - - 0x039A24 0E:9A14: FF        .byte $FF   ; 

; GRAPHIC DESIGN
- - - - - - 0x039A25 0E:9A15: 2B A9     .dbyt $2BA9
- - - - - - 0x039A27 0E:9A17: 91        .byte $91, $9C, $8B, $9A, $92, $93, $8D, $00, $8E, $8F, $9D, $93, $91, $98   ; 
- - - - - - 0x039A35 0E:9A25: FF        .byte $FF   ; 

; TENPOINT EGUCHI
- - - - - - 0x039A36 0E:9A26: 20 68     .dbyt $2068
- - - - - - 0x039A38 0E:9A28: 9E        .byte $9E, $8F, $98, $9A, $99, $93, $98, $9E, $00, $8F, $91, $9F, $8D, $92, $93   ; 
- - - - - - 0x039A47 0E:9A37: FF        .byte $FF   ; 

; NOB YOSHIDA
- - - - - - 0x039A48 0E:9A38: 20 CA     .dbyt $20CA
- - - - - - 0x039A4A 0E:9A3A: 98        .byte $98, $99, $8C, $00, $A3, $99, $9D, $92, $93, $8E, $8B   ; 
- - - - - - 0x039A55 0E:9A45: FF        .byte $FF   ; 

; MATSUDA KUN
- - - - - - 0x039A56 0E:9A46: 21 2A     .dbyt $212A
- - - - - - 0x039A58 0E:9A48: 97        .byte $97, $8B, $9E, $9D, $9F, $8E, $8B, $00, $95, $9F, $98   ; 
- - - - - - 0x039A63 0E:9A53: FF        .byte $FF   ; 

; SOUND DESIGN
- - - - - - 0x039A64 0E:9A54: 22 CA     .dbyt $22CA
- - - - - - 0x039A66 0E:9A56: 9D        .byte $9D, $99, $9F, $98, $8E, $00, $8E, $8F, $9D, $93, $91, $98   ; 
- - - - - - 0x039A72 0E:9A62: FF        .byte $FF   ; 

; J_KANE
- - - - - - 0x039A73 0E:9A63: 23 4D     .dbyt $234D
- - - - - - 0x039A75 0E:9A65: 94        .byte $94, $B9, $95, $8B, $98, $8F   ; 
- - - - - - 0x039A7B 0E:9A6B: FF        .byte $FF   ; 

; NISHIGAKI AYACHAN
- - - - - - 0x039A7C 0E:9A6C: 23 A8     .dbyt $23A8
- - - - - - 0x039A7E 0E:9A6E: 98        .byte $98, $93, $9D, $92, $93, $91, $8B, $95, $93, $00, $8B, $A3, $8B, $8D, $92, $8B   ; 
- - - - - - 0x039A8E 0E:9A7E: 98        .byte $98   ; 
- - - - - - 0x039A8F 0E:9A7F: FF        .byte $FF   ; 

- - - - - - 0x039A90 0E:9A80: FE        .byte $FE   ; 
- - - - - - 0x039A91 0E:9A81: 28 2D     .dbyt $282D
- - - - - - 0x039A93 0E:9A83: FF        .byte $FF   ; 

- - - - - - 0x039A94 0E:9A84: FE        .byte $FE   ; 
- - - - - - 0x039A95 0E:9A85: 29 6C     .dbyt $296C
- - - - - - 0x039A97 0E:9A87: FF        .byte $FF   ; 

- - - - - - 0x039A98 0E:9A88: FE        .byte $FE   ; 
- - - - - - 0x039A99 0E:9A89: 29 E9     .dbyt $29E9
- - - - - - 0x039A9B 0E:9A8B: FF        .byte $FF   ; 

- - - - - - 0x039A9C 0E:9A8C: FE        .byte $FE   ; 
- - - - - - 0x039A9D 0E:9A8D: 2A 49     .dbyt $2A49
- - - - - - 0x039A9F 0E:9A8F: FF        .byte $FF   ; 

; PACKAGE DESIGN
- - - - - - 0x039AA0 0E:9A90: 29 89     .dbyt $2989
- - - - - - 0x039AA2 0E:9A92: 9A        .byte $9A, $8B, $8D, $95, $8B, $91, $8F, $00, $8E, $8F, $9D, $93, $91, $98   ; 
- - - - - - 0x039AB0 0E:9AA0: FF        .byte $FF   ; 

; SUMICHAN
- - - - - - 0x039AB1 0E:9AA1: 2A 0C     .dbyt $2A0C
- - - - - - 0x039AB3 0E:9AA3: 9D        .byte $9D, $9F, $97, $93, $8D, $92, $8B, $98   ; 
- - - - - - 0x039ABB 0E:9AAB: FF        .byte $FF   ; 

; DIRECTOR
- - - - - - 0x039ABC 0E:9AAC: 2B A9     .dbyt $2BA9
- - - - - - 0x039ABE 0E:9AAE: 00        .byte $00, $00, $00, $8E, $93, $9C, $8F, $8D, $9E, $99, $9C, $00, $00, $00   ; 
- - - - - - 0x039ACC 0E:9ABC: FF        .byte $FF   ; 

; TOMCAT
- - - - - - 0x039ACD 0E:9ABD: 20 68     .dbyt $2068
- - - - - - 0x039ACF 0E:9ABF: 00        .byte $00, $00, $00, $00, $00, $9E, $99, $97, $8D, $8B, $9E, $00, $00, $00, $00   ; 
- - - - - - 0x039ADE 0E:9ACE: FF        .byte $FF   ; 

- - - - - - 0x039ADF 0E:9ACF: FE        .byte $FE   ; 
- - - - - - 0x039AE0 0E:9AD0: 20 CA     .dbyt $20CA
- - - - - - 0x039AE2 0E:9AD2: FF        .byte $FF   ; 

- - - - - - 0x039AE3 0E:9AD3: FE        .byte $FE   ; 
- - - - - - 0x039AE4 0E:9AD4: 21 2A     .dbyt $212A
- - - - - - 0x039AE6 0E:9AD6: FF        .byte $FF   ; 

- - - - - - 0x039AE7 0E:9AD7: FE        .byte $FE   ; 
- - - - - - 0x039AE8 0E:9AD8: 22 CA     .dbyt $22CA
- - - - - - 0x039AEA 0E:9ADA: FF        .byte $FF   ; 

- - - - - - 0x039AEB 0E:9ADB: FE        .byte $FE   ; 
- - - - - - 0x039AEC 0E:9ADC: 23 4D     .dbyt $234D
- - - - - - 0x039AEE 0E:9ADE: FF        .byte $FF   ; 

- - - - - - 0x039AEF 0E:9ADF: FE        .byte $FE   ; 
- - - - - - 0x039AF0 0E:9AE0: 23 A8     .dbyt $23A8
- - - - - - 0x039AF2 0E:9AE2: FF        .byte $FF   ; 

; TEENAGE MUTANT NINJA TURTLES
- - - - - - 0x039AF3 0E:9AE3: 28 02     .dbyt $2842
- - - - - - 0x039AF5 0E:9AE5: 9E        .byte $9E, $8F, $8F, $98, $8B, $91, $8F, $00, $97, $9F, $9E, $8B, $98, $9E, $00, $98   ; 
- - - - - - 0x039B05 0E:9AF5: 93        .byte $93, $98, $94, $8B, $00, $9E, $9F, $9C, $9E, $96, $8F, $9D   ; 
- - - - - - 0x039B11 0E:9B01: FF        .byte $FF   ; 

; © KONAMI 1993
- - - - - - 0x039B12 0E:9B02: 28 6A     .dbyt $28AA
- - - - - - 0x039B14 0E:9B04: A6        .byte $A6, $00, $95, $99, $98, $8B, $97, $93, $00, $82, $8A, $8A, $84   ; 
- - - - - - 0x039B21 0E:9B11: FF        .byte $FF   ; 

; ALL RIGHTS RESERVED.
- - - - - - 0x039B22 0E:9B12: 28 A6     .dbyt $28E6
- - - - - - 0x039B24 0E:9B14: 8B        .byte $8B, $96, $96, $00, $9C, $93, $91, $92, $9E, $9D, $00, $9C, $8F, $9D, $8F   ; 
- - - - - - 0x039B33 0E:9B23: 9C        .byte $9C, $A0, $8F, $8E, $A7   ; 
- - - - - - 0x039B38 0E:9B28: FF        .byte $FF   ; 

; © SHREDDER 2023
                                        .dbyt $2949
                                        .byte $A6, $00, $9D, $92, $9C, $8F, $8E, $8E, $8F, $9C, $00, $83, $81, $83, $84   ; 
                                        .byte $FF   ; 

- - - - - - 0x039B39 0E:9B29: FE        .byte $FE   ; 
- - - - - - 0x039B3A 0E:9B2A: 29 89     .dbyt $2989
- - - - - - 0x039B3C 0E:9B2C: FF        .byte $FF   ; 

- - - - - - 0x039B3D 0E:9B2D: FE        .byte $FE   ; 
- - - - - - 0x039B3E 0E:9B2E: 2A 0C     .dbyt $2A0C
- - - - - - 0x039B40 0E:9B30: FF        .byte $FF   ; 

- - - - - - 0x039B41 0E:9B31: FE        .byte $FE   ; 
- - - - - - 0x039B42 0E:9B32: 20 0C     .dbyt $200C
- - - - - - 0x039B44 0E:9B34: FF        .byte $FF   ; 

- - - - - - 0x039B45 0E:9B35: FD        .byte $FD   ; 



sub_9B36_обработка_выбранного_speech:
sub_0x039B46_обработка_выбранного_speech:
C - - - - - 0x039B46 0E:9B36: AD 31 06  LDA ram_0631
C - - - - - 0x039B49 0E:9B39: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x039B4C 0E:9B3C: 40 9B     .word ofs_005_9B40_00_подготовить_поинтеры_speech
- D 0 - I - 0x039B4E 0E:9B3E: 6F 9B     .word ofs_005_9B6F_01_печатание_текста_speech



ofs_005_9B40_00_подготовить_поинтеры_speech:
C - - J - - 0x039B50 0E:9B40: 20 64 9B  JSR sub_9B64
C - - - - - 0x039B53 0E:9B43: A5 B6     LDA ram_speech
C - - - - - 0x039B55 0E:9B45: 0A        ASL
C - - - - - 0x039B56 0E:9B46: A8        TAY
C - - - - - 0x039B57 0E:9B47: B9 90 A7  LDA tbl_A790,Y
C - - - - - 0x039B5A 0E:9B4A: 8D 33 06  STA ram_0633
C - - - - - 0x039B5D 0E:9B4D: B9 91 A7  LDA tbl_A790 + $01,Y
C - - - - - 0x039B60 0E:9B50: 8D 34 06  STA ram_0634
C - - - - - 0x039B63 0E:9B53: A9 00     LDA #$00
C - - - - - 0x039B65 0E:9B55: 8D 32 06  STA ram_0632
C - - - - - 0x039B68 0E:9B58: 8D 39 06  STA ram_plr_0639
C - - - - - 0x039B6B 0E:9B5B: 20 01 A6  JSR sub_A601_попытка_подготовить_надпись_с_предложением_пройти_expert
sub_9B5E_задержка_6_кадров:
; пауза между каждой напечатанной буквой
C - - - - - 0x039B6E 0E:9B5E: A9 06     LDA #$06
C - - - - - 0x039B70 0E:9B60: 8D 37 06  STA ram_plr_0636 + $01
bra_9B63_RTS:
C - - - - - 0x039B73 0E:9B63: 60        RTS



sub_9B64:
loc_9B64:
C D 0 - - - 0x039B74 0E:9B64: A9 84     LDA #$84
C - - - - - 0x039B76 0E:9B66: 8D 36 06  STA ram_plr_0636
C - - - - - 0x039B79 0E:9B69: A9 22     LDA #$22
C - - - - - 0x039B7B 0E:9B6B: 8D 35 06  STA ram_0635
C - - - - - 0x039B7E 0E:9B6E: 60        RTS



ofs_005_9B6F_01_печатание_текста_speech:
con_9B6F_BB_задержка                    = $BB ; записать задержку (следующий байт)
con_9B6F_BC_очистить                    = $BC ; очистить текст
con_9B6F_BD_новая_строка                = $BD ; новая строка
con_9B6F_BE_проверка_сложности          = $BE ; проверка на сложность easy
con_9B6F_BF_сменить_музыку              = $BF ; затухание громкости
con_9B6F_FF_закончить                   = $FF ; закончить вывод текста
C - - J - - 0x039B7F 0E:9B6F: CE 37 06  DEC ram_plr_0636 + $01
C - - - - - 0x039B82 0E:9B72: D0 EF     BNE bra_9B63_RTS
C - - - - - 0x039B84 0E:9B74: 20 5E 9B  JSR sub_9B5E_задержка_6_кадров
C - - - - - 0x039B87 0E:9B77: AD 33 06  LDA ram_0633
C - - - - - 0x039B8A 0E:9B7A: 85 00     STA ram_0000
C - - - - - 0x039B8C 0E:9B7C: AD 34 06  LDA ram_0634
C - - - - - 0x039B8F 0E:9B7F: 85 01     STA ram_0001
C - - - - - 0x039B91 0E:9B81: AC 32 06  LDY ram_0632
C - - - - - 0x039B94 0E:9B84: B1 00     LDA (ram_0000),Y
C - - - - - 0x039B96 0E:9B86: C9 BD     CMP #con_9B6F_BD_новая_строка
C - - - - - 0x039B98 0E:9B88: F0 33     BEQ bra_9BBD_BD
C - - - - - 0x039B9A 0E:9B8A: C9 BB     CMP #con_9B6F_BB_задержка
C - - - - - 0x039B9C 0E:9B8C: F0 45     BEQ bra_9BD3_BB
C - - - - - 0x039B9E 0E:9B8E: C9 BC     CMP #con_9B6F_BC_очистить
C - - - - - 0x039BA0 0E:9B90: F0 50     BEQ bra_9BE2_BC
C - - - - - 0x039BA2 0E:9B92: C9 BE     CMP #con_9B6F_BE_проверка_сложности
C - - - - - 0x039BA4 0E:9B94: F0 6A     BEQ bra_9C00_BE
C - - - - - 0x039BA6 0E:9B96: C9 BF     CMP #con_9B6F_BF_сменить_музыку
C - - - - - 0x039BA8 0E:9B98: F0 73     BEQ bra_9C0D_BF
C - - - - - 0x039BAA 0E:9B9A: C9 FF     CMP #con_9B6F_FF_закончить
C - - - - - 0x039BAC 0E:9B9C: F0 69     BEQ bra_9C07_FF
C - - - - - 0x039BAE 0E:9B9E: 48        PHA
C - - - - - 0x039BAF 0E:9B9F: 18        CLC
C - - - - - 0x039BB0 0E:9BA0: AD 36 06  LDA ram_plr_0636
C - - - - - 0x039BB3 0E:9BA3: 6D 39 06  ADC ram_plr_0639
C - - - - - 0x039BB6 0E:9BA6: A8        TAY
C - - - - - 0x039BB7 0E:9BA7: AD 35 06  LDA ram_0635
C - - - - - 0x039BBA 0E:9BAA: 69 00     ADC #$00
C - - - - - 0x039BBC 0E:9BAC: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x039BBF 0E:9BAF: 68        PLA
C - - - - - 0x039BC0 0E:9BB0: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x039BC3 0E:9BB3: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
loc_9BB6:
bra_9BB6:
C D 0 - - - 0x039BC6 0E:9BB6: EE 39 06  INC ram_plr_0639
bra_9BB9:
C - - - - - 0x039BC9 0E:9BB9: EE 32 06  INC ram_0632
C - - - - - 0x039BCC 0E:9BBC: 60        RTS
bra_9BBD_BD:
; новая строка
C - - - - - 0x039BCD 0E:9BBD: A9 20     LDA #$20
C - - - - - 0x039BCF 0E:9BBF: 18        CLC
C - - - - - 0x039BD0 0E:9BC0: 6D 36 06  ADC ram_plr_0636
C - - - - - 0x039BD3 0E:9BC3: 8D 36 06  STA ram_plr_0636
C - - - - - 0x039BD6 0E:9BC6: A9 00     LDA #$00
C - - - - - 0x039BD8 0E:9BC8: 8D 39 06  STA ram_plr_0639
C - - - - - 0x039BDB 0E:9BCB: 6D 35 06  ADC ram_0635
C - - - - - 0x039BDE 0E:9BCE: 8D 35 06  STA ram_0635
C - - - - - 0x039BE1 0E:9BD1: 10 E6     BPL bra_9BB9    ; jmp
bra_9BD3_BB:
; записать задержку
C - - - - - 0x039BE3 0E:9BD3: EE 32 06  INC ram_0632
C - - - - - 0x039BE6 0E:9BD6: AC 32 06  LDY ram_0632
C - - - - - 0x039BE9 0E:9BD9: B1 00     LDA (ram_0000),Y
C - - - - - 0x039BEB 0E:9BDB: 8D 37 06  STA ram_plr_0636 + $01
C - - - - - 0x039BEE 0E:9BDE: EE 32 06  INC ram_0632
C - - - - - 0x039BF1 0E:9BE1: 60        RTS
bra_9BE2_BC:
; очистить текст
C - - - - - 0x039BF2 0E:9BE2: A0 00     LDY #$00
C - - - - - 0x039BF4 0E:9BE4: 8C 39 06  STY ram_plr_0639
bra_9BE7_loop:
C - - - - - 0x039BF7 0E:9BE7: B9 FA 9B  LDA tbl_9BFA,Y
C - - - - - 0x039BFA 0E:9BEA: C9 FF     CMP #$FF
C - - - - - 0x039BFC 0E:9BEC: F0 06     BEQ bra_9BF4_FF
C - - - - - 0x039BFE 0E:9BEE: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x039C01 0E:9BF1: C8        INY
C - - - - - 0x039C02 0E:9BF2: D0 F3     BNE bra_9BE7_loop
bra_9BF4_FF:
; завершить вывод текста
C - - - - - 0x039C04 0E:9BF4: EE 32 06  INC ram_0632
C - - - - - 0x039C07 0E:9BF7: 4C 64 9B  JMP loc_9B64



tbl_9BFA:
- D 0 - - - 0x039C0A 0E:9BFA: 03        .byte con_buf_mode_03   ; 
- D 0 - - - 0x039C0B 0E:9BFB: 80 22     .word $2280
- D 0 - - - 0x039C0D 0E:9BFD: 80        .byte $80, $00   ; 

- D 0 - - - 0x039C0F 0E:9BFF: FF        .byte $FF   ; end token



bra_9C00_BE:
; проверить на сложность easy
C - - - - - 0x039C10 0E:9C00: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x039C13 0E:9C03: D0 02     BNE bra_9C07
- - - - - - 0x039C15 0E:9C05: F0 AF     BEQ bra_9BB6   ; jmp



bra_9C07:
bra_9C07_FF:
; закончить вывод текста
C - - - - - 0x039C17 0E:9C07: A9 00     LDA #$00
C - - - - - 0x039C19 0E:9C09: 8D 31 06  STA ram_0631
C - - - - - 0x039C1C 0E:9C0C: 60        RTS



bra_9C0D_BF:
; затухание громкости
C - - - - - 0x039C1D 0E:9C0D: A9 5B     LDA #con_music_volume_fade
C - - - - - 0x039C1F 0E:9C0F: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x039C22 0E:9C12: 4C B6 9B  JMP loc_9BB6



_off018_9C25_00_manhattan:
; MANHATTAN....PRESENT DAY.
- D 0 - I - 0x039C35 0E:9C25: BB        .byte con_9B6F_BB_задержка, $78   ; 

- D 0 - I - 0x039C37 0E:9C27: 97        .byte $97, $8B, $98, $92, $8B, $9E, $9E, $8B, $98, $A7, $A7, $A7, $A7, $9A, $9C, $8F   ; 
- D 0 - I - 0x039C47 0E:9C37: 9D        .byte $9D, $8F, $98, $9E, $00, $8E, $8B, $A3, $A7   ; 

- D 0 - I - 0x039C50 0E:9C40: BB        .byte con_9B6F_BB_задержка, $6C   ; 
- D 0 - I - 0x039C52 0E:9C42: FF        .byte con_9B6F_FF_закончить   ; 



_off018_9C43_01_strange_letter:
; THE TURTLES RECEIVE A STRANGE LETTER....
- D 0 - I - 0x039C53 0E:9C43: BB        .byte con_9B6F_BB_задержка, $78   ; 

- D 0 - I - 0x039C55 0E:9C45: 9E        .byte $9E, $92, $8F, $00, $9E, $9F, $9C, $9E, $96, $8F, $9D, $00, $9C, $8F, $8D, $8F   ; 
- D 0 - I - 0x039C65 0E:9C55: 93        .byte $93, $A0, $8F, $00, $8B   ; 

- D 0 - I - 0x039C6A 0E:9C5A: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039C6B 0E:9C5B: 9D        .byte $9D, $9E, $9C, $8B, $98, $91, $8F, $00, $96, $8F, $9E, $9E, $8F, $9C, $A7, $A7   ; 
- D 0 - I - 0x039C7B 0E:9C6B: A7        .byte $A7, $A7   ; 

- D 0 - I - 0x039C7D 0E:9C6D: BB        .byte con_9B6F_BB_задержка, $6C   ; 
- D 0 - I - 0x039C7F 0E:9C6F: FF        .byte con_9B6F_FF_закончить   ; 



_off018_9C70_02_offer_challenge:
; "I OFFER YOU TURTLES A
; CHALLENGE. LET US MEET IN
; THE STREETS OF MANHATTAN
- D 0 - I - 0x039C80 0E:9C70: BB        .byte con_9B6F_BB_задержка, $40   ; 

- D 0 - I - 0x039C82 0E:9C72: AA        .byte $AA, $93, $00, $99, $90, $90, $8F, $9C, $00, $A3, $99, $9F, $00, $9E, $9F, $9C   ; 
- D 0 - I - 0x039C92 0E:9C82: 9E        .byte $9E, $96, $8F, $9D, $00, $8B   ; 

- D 0 - I - 0x039C98 0E:9C88: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039C99 0E:9C89: 8D        .byte $8D, $92, $8B, $96, $96, $8F, $98, $91, $8F, $A7, $00, $96, $8F, $9E, $00, $9F   ; 
- D 0 - I - 0x039CA9 0E:9C99: 9D        .byte $9D, $00, $97, $8F, $8F, $9E, $00, $93, $98   ; 

- D 0 - I - 0x039CB2 0E:9CA2: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039CB3 0E:9CA3: 9E        .byte $9E, $92, $8F, $00, $9D, $9E, $9C, $8F, $8F, $9E, $9D, $00, $99, $90, $00, $97   ; 
- D 0 - I - 0x039CC3 0E:9CB3: 8B        .byte $8B, $98, $92, $8B, $9E, $9E, $8B, $98   ; 

- D 0 - I - 0x039CCB 0E:9CBB: BB        .byte con_9B6F_BB_задержка, $80   ; 
- D 0 - I - 0x039CCD 0E:9CBD: BC        .byte con_9B6F_BC_очистить   ; 

; AND SEE WHICH OF US IS
; THE MOST POWERFUL.
- D 0 - I - 0x039CCE 0E:9CBE: 8B        .byte $8B, $98, $8E, $00, $9D, $8F, $8F, $00, $A1, $92, $93, $8D, $92, $00, $99, $90   ; 
- D 0 - I - 0x039CDE 0E:9CCE: 00        .byte $00, $9F, $9D, $00, $93, $9D   ; 

- D 0 - I - 0x039CE4 0E:9CD4: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039CE5 0E:9CD5: 9E        .byte $9E, $92, $8F, $00, $97, $99, $9D, $9E, $00, $9A, $99, $A1, $8F, $9C, $90, $9F   ; 
- D 0 - I - 0x039CF5 0E:9CE5: 96        .byte $96, $A7   ; 

- D 0 - I - 0x039CF7 0E:9CE7: BB        .byte con_9B6F_BB_задержка, $80   ; 
- D 0 - I - 0x039CF9 0E:9CE9: BC        .byte con_9B6F_BC_очистить   ; 

; OF COURSE, YOU REALLY
; DON'T STAND A CHANCE!"
; ....SHREDDER
- D 0 - I - 0x039CFA 0E:9CEA: 99        .byte $99, $90, $00, $8D, $99, $9F, $9C, $9D, $8F, $A8, $00, $A3, $99, $9F, $00, $9C   ; 
- D 0 - I - 0x039D0A 0E:9CFA: 8F        .byte $8F, $8B, $96, $96, $A3   ; 

- D 0 - I - 0x039D0F 0E:9CFF: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039D10 0E:9D00: 8E        .byte $8E, $99, $98, $AE, $9E, $00, $9D, $9E, $8B, $98, $8E, $00, $8B, $00, $8D, $92   ; 
- D 0 - I - 0x039D20 0E:9D10: 8B        .byte $8B, $98, $8D, $8F, $AC, $AB   ; 

- D 0 - I - 0x039D26 0E:9D16: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039D27 0E:9D17: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $A7, $A7, $A7, $A7, $9D   ; 
- D 0 - I - 0x039D37 0E:9D27: 92        .byte $92, $9C, $8F, $8E, $8E, $8F, $9C   ; 

- D 0 - I - 0x039D3E 0E:9D2E: BB        .byte con_9B6F_BB_задержка, $20   ; 
- D 0 - I - 0x039D40 0E:9D30: FF        .byte con_9B6F_FF_закончить   ; 



_off018_9D31_03_lousy_tricks:
; "SHREDDER, THIS BETTER
; NOT BE ONE OF YOUR LOUSY
; TRICKS!"
- D 0 - I - 0x039D41 0E:9D31: 00        .byte $00, $AA, $9D, $92, $9C, $8F, $8E, $8E, $8F, $9C, $A8, $00, $9E, $92, $93, $9D   ; 
- D 0 - I - 0x039D51 0E:9D41: 00        .byte $00, $8C, $8F, $9E, $9E, $8F, $9C   ; 

- D 0 - I - 0x039D58 0E:9D48: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039D59 0E:9D49: 00        .byte $00, $98, $99, $9E, $00, $8C, $8F, $00, $99, $98, $8F, $00, $99, $90, $00, $A3   ; 
- D 0 - I - 0x039D69 0E:9D59: 99        .byte $99, $9F, $9C, $00, $96, $99, $9F, $9D, $A3   ; 

- D 0 - I - 0x039D72 0E:9D62: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039D73 0E:9D63: 00        .byte $00, $9E, $9C, $93, $8D, $95, $9D, $AC, $AB   ; 

- D 0 - I - 0x039D7C 0E:9D6C: BB        .byte con_9B6F_BB_задержка, $FF   ; 
- D 0 - I - 0x039D7E 0E:9D6E: BC        .byte con_9B6F_BC_очистить   ; 

; "YOU HAVE NOT SEEN
; THE LAST OF ME!!"
- D 0 - I - 0x039D7F 0E:9D6F: 00        .byte $00, $00, $00, $AA, $A3, $99, $9F, $00, $92, $8B, $A0, $8F, $00, $98, $99, $9E   ; 
- D 0 - I - 0x039D8F 0E:9D7F: 00        .byte $00, $9D, $8F, $8F, $98   ; 

- D 0 - I - 0x039D94 0E:9D84: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039D95 0E:9D85: 00        .byte $00, $00, $00, $9E, $92, $8F, $00, $96, $8B, $9D, $9E, $00, $99, $90, $00, $97   ; 
- D 0 - I - 0x039DA5 0E:9D95: 8F        .byte $8F, $AC, $AC, $AB   ; 

- D 0 - I - 0x039DA9 0E:9D99: BB        .byte con_9B6F_BB_задержка, $FF   ; 
- D 0 - I - 0x039DAB 0E:9D9B: BE        .byte con_9B6F_BE_проверка_сложности   ; 
; if сложность easy, печатать дальше
- - - - - - 0x039DAC 0E:9D9C: BB        .byte con_9B6F_BB_задержка, $FF   ; 
- - - - - - 0x039DAE 0E:9D9E: BC        .byte con_9B6F_BC_очистить   ; 

; CHALLENGE THE NORMAL
; MODE NEXT TIME!
; © KONAMI 1993
; ALL RIGHTS RESERVED.
- - - - - - 0x039DAF 0E:9D9F: 00        .byte $00, $00, $8D, $92, $8B, $96, $96, $8F, $98, $91, $8F, $00, $9E, $92, $8F, $00   ; 
- - - - - - 0x039DBF 0E:9DAF: 98        .byte $98, $99, $9C, $97, $8B, $96   ; 

- - - - - - 0x039DC5 0E:9DB5: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x039DC6 0E:9DB6: 00        .byte $00, $00, $97, $99, $8E, $8F, $00, $98, $8F, $A2, $9E, $00, $9E, $93, $97, $8F   ; 
- - - - - - 0x039DD6 0E:9DC6: AC        .byte $AC   ; 

- - - - - - 0x039DD7 0E:9DC7: BD        .byte con_9B6F_BD_новая_строка   ; 
- - - - - - 0x039DD8 0E:9DC8: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x039DD9 0E:9DC9: 00        .byte $00, $00, $00, $00, $00, $A6, $00, $95, $99, $98, $8B, $97, $93, $00, $82, $8A   ; 
- - - - - - 0x039DE9 0E:9DD9: 8A        .byte $8A, $84   ; 

- - - - - - 0x039DEB 0E:9DDB: BD        .byte con_9B6F_BD_новая_строка   ; 
- - - - - - 0x039DEC 0E:9DDC: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x039DED 0E:9DDD: 00        .byte $00, $00, $8B, $96, $96, $00, $9C, $93, $91, $92, $9E, $9D, $00, $9C, $8F, $9D   ; 
- - - - - - 0x039DFD 0E:9DED: 8F        .byte $8F, $9C, $A0, $8F, $8E, $A7   ; 

- - - - - - 0x039E03 0E:9DF3: BB        .byte con_9B6F_BB_задержка, $F0   ; 
- - - - - - 0x039E05 0E:9DF5: FF        .byte con_9B6F_FF_закончить   ; 



_off018_9DF6_04_celebrate:
; "YOU HAVE PERFORMED WELL,
; MY SONS. NOW LET US
; CELEBRATE OUR VICTORY!"
- D 0 - I - 0x039E06 0E:9DF6: AA        .byte $AA, $A3, $99, $9F, $00, $92, $8B, $A0, $8F, $00, $9A, $8F, $9C, $90, $99, $9C   ; 
- D 0 - I - 0x039E16 0E:9E06: 97        .byte $97, $8F, $8E, $00, $A1, $8F, $96, $96, $A8   ; 

- D 0 - I - 0x039E1F 0E:9E0F: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039E20 0E:9E10: 97        .byte $97, $A3, $00, $9D, $99, $98, $9D, $A7, $00, $98, $99, $A1, $00, $96, $8F, $9E   ; 
- D 0 - I - 0x039E30 0E:9E20: 00        .byte $00, $9F, $9D   ; 

- D 0 - I - 0x039E33 0E:9E23: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039E34 0E:9E24: 8D        .byte $8D, $8F, $96, $8F, $8C, $9C, $8B, $9E, $8F, $00, $99, $9F, $9C, $00, $A0, $93   ; 
- D 0 - I - 0x039E44 0E:9E34: 8D        .byte $8D, $9E, $99, $9C, $A3, $AC, $AB   ; 

- D 0 - I - 0x039E4B 0E:9E3B: BB        .byte con_9B6F_BB_задержка, $FF   ; 
- D 0 - I - 0x039E4D 0E:9E3D: FF        .byte con_9B6F_FF_закончить   ; 



_off018_9E3E_05_taste_defeat:
; "YOU MAY HAVE BEATEN ME
; IN THE PAST, BUT NOW IT
; IS YOU WHO SHALL TASTE
; DEFEAT!"
- D 0 - I - 0x039E4E 0E:9E3E: AA        .byte $AA, $A3, $99, $9F, $00, $97, $8B, $A3, $00, $92, $8B, $A0, $8F, $00, $8C, $8F   ; 
- D 0 - I - 0x039E5E 0E:9E4E: 8B        .byte $8B, $9E, $8F, $98, $00, $97, $8F   ; 

- D 0 - I - 0x039E65 0E:9E55: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039E66 0E:9E56: 93        .byte $93, $98, $00, $9E, $92, $8F, $00, $9A, $8B, $9D, $9E, $A8, $00, $8C, $9F, $9E   ; 
- D 0 - I - 0x039E76 0E:9E66: 00        .byte $00, $98, $99, $A1, $00, $93, $9E   ; 

- D 0 - I - 0x039E7D 0E:9E6D: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039E7E 0E:9E6E: 93        .byte $93, $9D, $00, $A3, $99, $9F, $00, $A1, $92, $99, $00, $9D, $92, $8B, $96, $96   ; 
- D 0 - I - 0x039E8E 0E:9E7E: 00        .byte $00, $9E, $8B, $9D, $9E, $8F   ; 

- D 0 - I - 0x039E94 0E:9E84: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039E95 0E:9E85: 8E        .byte $8E, $8F, $90, $8F, $8B, $9E, $AC, $AB   ; 

- D 0 - I - 0x039E9D 0E:9E8D: BB        .byte con_9B6F_BB_задержка, $40   ; 
- D 0 - I - 0x039E9F 0E:9E8F: BF        .byte con_9B6F_BF_сменить_музыку   ; 
- D 0 - I - 0x039EA0 0E:9E90: BB        .byte con_9B6F_BB_задержка, $60   ; 
- D 0 - I - 0x039EA2 0E:9E92: FF        .byte con_9B6F_FF_закончить   ; 



_off018_9E93_06_expected_tougher:
; "HA! I EXPECTED A TOUGHER
; OPPONENT. CAN NO ONE
; CHALLENGE ME?"
- - - - - - 0x039EA3 0E:9E93: AA        .byte $AA, $92, $8B, $AC, $00, $93, $00, $8F, $A2, $9A, $8F, $8D, $9E, $8F, $8E, $00   ; 
- - - - - - 0x039EB3 0E:9EA3: 8B        .byte $8B, $00, $9E, $99, $9F, $91, $92, $8F, $9C   ; 

- - - - - - 0x039EBC 0E:9EAC: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x039EBD 0E:9EAD: 99        .byte $99, $9A, $9A, $99, $98, $8F, $98, $9E, $A7, $00, $8D, $8B, $98, $00, $98, $99   ; 
- - - - - - 0x039ECD 0E:9EBD: 00        .byte $00, $99, $98, $8F   ; 

- - - - - - 0x039ED1 0E:9EC1: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x039ED2 0E:9EC2: 8D        .byte $8D, $92, $8B, $96, $96, $8F, $98, $91, $8F, $00, $97, $8F, $A9, $AB   ; 

- - - - - - 0x039EE0 0E:9ED0: BB        .byte con_9B6F_BB_задержка, $40   ; 
- - - - - - 0x039EE2 0E:9ED2: BF        .byte con_9B6F_BF_сменить_музыку   ; 
- - - - - - 0x039EE3 0E:9ED3: BB        .byte con_9B6F_BB_задержка, $60   ; 
- - - - - - 0x039EE5 0E:9ED5: FF        .byte con_9B6F_FF_закончить   ; 



_off018_9ED6_07_try_hard_mode:
; CHALLENGE THE HARD MODE
; NEXT TIME!
; © KONAMI 1993
; ALL RIGHTS RESERVED.
- D 0 - I - 0x039EE6 0E:9ED6: 00        .byte $00, $00, $8D, $92, $8B, $96, $96, $8F, $98, $91, $8F, $00, $9E, $92, $8F, $00   ; 
- D 0 - I - 0x039EF6 0E:9EE6: 92        .byte $92, $8B, $9C, $8E, $00, $97, $99, $8E, $8F   ; 

- D 0 - I - 0x039EFF 0E:9EEF: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039F00 0E:9EF0: 00        .byte $00, $00, $98, $8F, $A2, $9E, $00, $9E, $93, $97, $8F, $AC   ; 

- D 0 - I - 0x039F0C 0E:9EFC: BD        .byte con_9B6F_BD_новая_строка   ; 
- D 0 - I - 0x039F0D 0E:9EFD: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039F0E 0E:9EFE: 00        .byte $00, $00, $00, $00, $00, $A6, $00, $95, $99, $98, $8B, $97, $93, $00, $82, $8A   ; 
- D 0 - I - 0x039F1E 0E:9F0E: 8A        .byte $8A, $84   ; 

- D 0 - I - 0x039F20 0E:9F10: BD        .byte con_9B6F_BD_новая_строка   ; 
- D 0 - I - 0x039F21 0E:9F11: BD        .byte con_9B6F_BD_новая_строка   ; 

- D 0 - I - 0x039F22 0E:9F12: 00        .byte $00, $00, $8B, $96, $96, $00, $9C, $93, $91, $92, $9E, $9D, $00, $9C, $8F, $9D   ; 
- D 0 - I - 0x039F32 0E:9F22: 8F        .byte $8F, $9C, $A0, $8F, $8E, $A7   ; 

- D 0 - I - 0x039F38 0E:9F28: BB        .byte con_9B6F_BB_задержка, $F0   ; 
- D 0 - I - 0x039F3A 0E:9F2A: FF        .byte con_9B6F_FF_закончить   ; 



sub_9F2B_сохранить_topscore:
C - - - - - 0x039F3B 0E:9F2B: A2 01     LDX #$01
C - - - - - 0x039F3D 0E:9F2D: 86 A8     STX ram_local_obj_index
bra_9F2F_loop:
C - - - - - 0x039F3F 0E:9F2F: A6 A8     LDX ram_local_obj_index
C - - - - - 0x039F41 0E:9F31: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0155 0156 
C - - - - - 0x039F44 0E:9F34: 30 03     BMI bra_9F39    ; if cpu
; if not cpu
C - - - - - 0x039F46 0E:9F36: 20 3E 9F  JSR sub_9F3E
bra_9F39:
C - - - - - 0x039F49 0E:9F39: C6 A8     DEC ram_local_obj_index
C - - - - - 0x039F4B 0E:9F3B: 10 F2     BPL bra_9F2F_loop
C - - - - - 0x039F4D 0E:9F3D: 60        RTS



sub_9F3E:
C - - - - - 0x039F4E 0E:9F3E: A5 A8     LDA ram_local_obj_index
C - - - - - 0x039F50 0E:9F40: 0A        ASL
C - - - - - 0x039F51 0E:9F41: 0A        ASL
C - - - - - 0x039F52 0E:9F42: AA        TAX
C - - - - - 0x039F53 0E:9F43: B5 AE     LDA ram_score,X ; 00AE 00B2 
C - - - - - 0x039F55 0E:9F45: 20 02 D2  JSR sub_0x03D212_ASLx4
C - - - - - 0x039F58 0E:9F48: 15 AF     ORA ram_score + $01,X
C - - - - - 0x039F5A 0E:9F4A: 85 00     STA ram_0000
C - - - - - 0x039F5C 0E:9F4C: B5 B0     LDA ram_score + $02,X
C - - - - - 0x039F5E 0E:9F4E: 20 02 D2  JSR sub_0x03D212_ASLx4
C - - - - - 0x039F61 0E:9F51: 15 B1     ORA ram_score + $03,X
C - - - - - 0x039F63 0E:9F53: 85 01     STA ram_0001
C - - - - - 0x039F65 0E:9F55: AD 12 01  LDA ram_0112
C - - - - - 0x039F68 0E:9F58: 20 02 D2  JSR sub_0x03D212_ASLx4
C - - - - - 0x039F6B 0E:9F5B: 0D 11 01  ORA ram_0111
C - - - - - 0x039F6E 0E:9F5E: 85 02     STA ram_0002
C - - - - - 0x039F70 0E:9F60: A9 00     LDA #$00
C - - - - - 0x039F72 0E:9F62: 85 03     STA ram_0003
bra_9F64_loop:
C - - - - - 0x039F74 0E:9F64: A5 03     LDA ram_0003
C - - - - - 0x039F76 0E:9F66: 0A        ASL
C - - - - - 0x039F77 0E:9F67: 65 03     ADC ram_0003
C - - - - - 0x039F79 0E:9F69: A8        TAY
C - - - - - 0x039F7A 0E:9F6A: A5 00     LDA ram_0000
C - - - - - 0x039F7C 0E:9F6C: D9 13 01  CMP ram_topscore,Y ; 0113 0116 0119 011C 011F 
C - - - - - 0x039F7F 0E:9F6F: 90 12     BCC bra_9F83
C - - - - - 0x039F81 0E:9F71: D0 19     BNE bra_9F8C
- - - - - - 0x039F83 0E:9F73: A5 01     LDA ram_0001
- - - - - - 0x039F85 0E:9F75: D9 14 01  CMP ram_topscore + $01,Y
- - - - - - 0x039F88 0E:9F78: 90 09     BCC bra_9F83
- - - - - - 0x039F8A 0E:9F7A: D0 10     BNE bra_9F8C
- - - - - - 0x039F8C 0E:9F7C: A5 02     LDA ram_0002
- - - - - - 0x039F8E 0E:9F7E: D9 15 01  CMP ram_topscore + $02,Y
- - - - - - 0x039F91 0E:9F81: B0 09     BCS bra_9F8C
bra_9F83:
C - - - - - 0x039F93 0E:9F83: E6 03     INC ram_0003
C - - - - - 0x039F95 0E:9F85: A5 03     LDA ram_0003
C - - - - - 0x039F97 0E:9F87: C9 05     CMP #$05
C - - - - - 0x039F99 0E:9F89: 90 D9     BCC bra_9F64_loop
C - - - - - 0x039F9B 0E:9F8B: 60        RTS
bra_9F8C:
C - - - - - 0x039F9C 0E:9F8C: C0 0C     CPY #$0C
C - - - - - 0x039F9E 0E:9F8E: B0 1F     BCS bra_9FAF
C - - - - - 0x039FA0 0E:9F90: 84 03     STY ram_0003
C - - - - - 0x039FA2 0E:9F92: A2 09     LDX #$09
bra_9F94_loop:
C - - - - - 0x039FA4 0E:9F94: BD 13 01  LDA ram_topscore,X ; 0113 0116 0119 011C 
C - - - - - 0x039FA7 0E:9F97: 9D 16 01  STA ram_topscore + $03,X ; 0116 0119 011C 011F 
C - - - - - 0x039FAA 0E:9F9A: BD 14 01  LDA ram_topscore + $01,X ; 0114 0117 011A 011D 
C - - - - - 0x039FAD 0E:9F9D: 9D 17 01  STA ram_topscore + $04,X ; 0117 011A 011D 0120 
C - - - - - 0x039FB0 0E:9FA0: BD 15 01  LDA ram_topscore + $02,X ; 0115 0118 011B 011E 
C - - - - - 0x039FB3 0E:9FA3: 9D 18 01  STA ram_topscore + $05,X ; 0118 011B 011E 0121 
C - - - - - 0x039FB6 0E:9FA6: E4 03     CPX ram_0003
C - - - - - 0x039FB8 0E:9FA8: F0 05     BEQ bra_9FAF
C - - - - - 0x039FBA 0E:9FAA: CA        DEX
C - - - - - 0x039FBB 0E:9FAB: CA        DEX
C - - - - - 0x039FBC 0E:9FAC: CA        DEX
C - - - - - 0x039FBD 0E:9FAD: 10 E5     BPL bra_9F94_loop
bra_9FAF:
C - - - - - 0x039FBF 0E:9FAF: A5 00     LDA ram_0000
C - - - - - 0x039FC1 0E:9FB1: 99 13 01  STA ram_topscore,Y ; 0113 
C - - - - - 0x039FC4 0E:9FB4: A5 01     LDA ram_0001
C - - - - - 0x039FC6 0E:9FB6: 99 14 01  STA ram_topscore + $01,Y ; 0114 
C - - - - - 0x039FC9 0E:9FB9: A5 02     LDA ram_0002
C - - - - - 0x039FCB 0E:9FBB: 99 15 01  STA ram_topscore + $02,Y ; 0115 
C - - - - - 0x039FCE 0E:9FBE: 60        RTS



sub_0x039FCF_обработчик_экрана_topscore:
C - - - - - 0x039FCF 0E:9FBF: A5 90     LDA ram_sum_btn_press
C - - - - - 0x039FD1 0E:9FC1: 05 A4     ORA ram_00A4
C - - - - - 0x039FD3 0E:9FC3: 29 30     AND #con_btns_SS
C - - - - - 0x039FD5 0E:9FC5: D0 09     BNE bra_9FD0
C - - - - - 0x039FD7 0E:9FC7: A5 21     LDA ram_script_draw_lo
C - - - - - 0x039FD9 0E:9FC9: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x039FDC 0E:9FCC: D6 9F     .word ofs_004_9FD6_00_отрисовать_hiscore
- D 0 - I - 0x039FDE 0E:9FCE: 80 A0     .word ofs_004_A080_01
bra_9FD0:
- - - - - - 0x039FE3 0E:9FD3: 4C 58 FE  JMP loc_0x03FE68_отрисовка_экрана_главное_меню



ofs_004_9FD6_00_отрисовать_hiscore:
C - - J - - 0x039FE6 0E:9FD6: A9 0C     LDA #con_0048_0C
C - - - - - 0x039FE8 0E:9FD8: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x039FEB 0E:9FDB: 20 3F F0  JSR sub_0x03F04F_удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x039FEE 0E:9FDE: E6 21     INC ram_script_draw_lo
C - - - - - 0x039FF0 0E:9FE0: A2 26     LDX #con_screen_hiscore
C - - - - - 0x039FF2 0E:9FE2: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
C - - - - - 0x039FF5 0E:9FE5: A9 04     LDA #$04
C - - - - - 0x039FF7 0E:9FE7: 85 00     STA ram_0000
bra_9FE9_loop:
C - - - - - 0x039FF9 0E:9FE9: A5 00     LDA ram_0000
C - - - - - 0x039FFB 0E:9FEB: 0A        ASL
C - - - - - 0x039FFC 0E:9FEC: 48        PHA
C - - - - - 0x039FFD 0E:9FED: A8        TAY
C - - - - - 0x039FFE 0E:9FEE: B9 D3 A0  LDA tbl_A0D3,Y
C - - - - - 0x03A001 0E:9FF1: 48        PHA
C - - - - - 0x03A002 0E:9FF2: B9 D4 A0  LDA tbl_A0D3 + $01,Y
C - - - - - 0x03A005 0E:9FF5: A8        TAY
C - - - - - 0x03A006 0E:9FF6: 68        PLA
C - - - - - 0x03A007 0E:9FF7: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03A00A 0E:9FFA: 68        PLA
C - - - - - 0x03A00B 0E:9FFB: 85 0C     STA ram_000C
C - - - - - 0x03A00D 0E:9FFD: 4A        LSR
C - - - - - 0x03A00E 0E:9FFE: 65 0C     ADC ram_000C
C D 1 - - - 0x03A010 0E:A000: A8        TAY
C - - - - - 0x03A011 0E:A001: B9 13 01  LDA ram_topscore,Y ; 0113 0116 0119 011C 011F 
C - - - - - 0x03A014 0E:A004: 85 0C     STA ram_000C
C - - - - - 0x03A016 0E:A006: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x03A019 0E:A009: D0 02     BNE bra_A00D
C - - - - - 0x03A01B 0E:A00B: A9 7F     LDA #$7F
bra_A00D:
C - - - - - 0x03A01D 0E:A00D: 85 0D     STA ram_000D
C - - - - - 0x03A01F 0E:A00F: A5 0C     LDA ram_000C
C - - - - - 0x03A021 0E:A011: 29 0F     AND #$0F
C - - - - - 0x03A023 0E:A013: 85 0C     STA ram_000C
C - - - - - 0x03A025 0E:A015: B9 14 01  LDA ram_topscore + $01,Y ; 0114 0117 011A 011D 0120 
C - - - - - 0x03A028 0E:A018: 85 0A     STA ram_000A
C - - - - - 0x03A02A 0E:A01A: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x03A02D 0E:A01D: 85 0B     STA ram_000B
C - - - - - 0x03A02F 0E:A01F: A5 0A     LDA ram_000A
C - - - - - 0x03A031 0E:A021: 29 0F     AND #$0F
C - - - - - 0x03A033 0E:A023: 85 0A     STA ram_000A
C - - - - - 0x03A035 0E:A025: B9 15 01  LDA ram_topscore + $02,Y ; 0115 0118 011B 011E 0121 
C - - - - - 0x03A038 0E:A028: 85 08     STA ram_0008
C - - - - - 0x03A03A 0E:A02A: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x03A03D 0E:A02D: 85 09     STA ram_0009
C - - - - - 0x03A03F 0E:A02F: A5 08     LDA ram_0008
C - - - - - 0x03A041 0E:A031: 29 0F     AND #$0F
C - - - - - 0x03A043 0E:A033: 85 08     STA ram_0008
C - - - - - 0x03A045 0E:A035: A0 05     LDY #$05
bra_A037_loop:
C - - - - - 0x03A047 0E:A037: 18        CLC
C - - - - - 0x03A048 0E:A038: B9 08 00  LDA ram_0008,Y
C - - - - - 0x03A04B 0E:A03B: 69 81     ADC #$81
C - - - - - 0x03A04D 0E:A03D: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03A050 0E:A040: 88        DEY
C - - - - - 0x03A051 0E:A041: 10 F4     BPL bra_A037_loop
C - - - - - 0x03A053 0E:A043: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x03A056 0E:A046: C6 00     DEC ram_0000
C - - - - - 0x03A058 0E:A048: 10 9F     BPL bra_9FE9_loop
C - - - - - 0x03A05A 0E:A04A: A9 C0     LDA #$C0
C - - - - - 0x03A05C 0E:A04C: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03A05F 0E:A04F: A9 57     LDA #con_chr_bank_spr + $57
C - - - - - 0x03A061 0E:A051: 85 34     STA ram_chr_bank_spr
C - - - - - 0x03A063 0E:A053: A0 12     LDY #con_chr_pair_12
C - - - - - 0x03A065 0E:A055: 20 1A DC  JSR sub_0x03DC2A_запись_пары_chr_bg
C - - - - - 0x03A068 0E:A058: A9 30     LDA #$30
C - - - - - 0x03A06A 0E:A05A: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x03A06D 0E:A05D: A9 9F     LDA #$9F
C - - - - - 0x03A06F 0E:A05F: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x03A072 0E:A062: A9 68     LDA #$68
C - - - - - 0x03A074 0E:A064: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x03A077 0E:A067: A9 0C     LDA #$0C
C - - - - - 0x03A079 0E:A069: 8D D0 05  STA ram_obj_05D0
C - - - - - 0x03A07C 0E:A06C: A9 00     LDA #$00
C - - - - - 0x03A07E 0E:A06E: 8D A0 04  STA ram_obj_spd_Y_hi
C - - - - - 0x03A081 0E:A071: A9 12     LDA #con_D57A_12
C - - - - - 0x03A083 0E:A073: A0 11     LDY #con_D57A_11
C - - - - - 0x03A085 0E:A075: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x03A088 0E:A078: 20 41 E1  JSR sub_0x03E151_подготовить_осветление_из_черного_в_цветной
C - - - - - 0x03A08B 0E:A07B: A9 38     LDA #con_music_continue ; topscore
C - - - - - 0x03A08D 0E:A07D: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y



ofs_004_A080_01:
C - - J - - 0x03A090 0E:A080: CE D0 05  DEC ram_obj_05D0
C - - - - - 0x03A093 0E:A083: 10 14     BPL bra_A099
C - - - - - 0x03A095 0E:A085: A9 0C     LDA #$0C
C - - - - - 0x03A097 0E:A087: 8D D0 05  STA ram_obj_05D0
C - - - - - 0x03A09A 0E:A08A: EE 00 04  INC ram_obj_anim_id
C - - - - - 0x03A09D 0E:A08D: AD 00 04  LDA ram_obj_anim_id
C - - - - - 0x03A0A0 0E:A090: C9 36     CMP #$36
C - - - - - 0x03A0A2 0E:A092: 90 05     BCC bra_A099
C - - - - - 0x03A0A4 0E:A094: A9 30     LDA #$30
C - - - - - 0x03A0A6 0E:A096: 8D 00 04  STA ram_obj_anim_id
bra_A099:
C - - - - - 0x03A0A9 0E:A099: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x03A0AB 0E:A09B: 29 03     AND #$03
C - - - - - 0x03A0AD 0E:A09D: D0 2B     BNE bra_A0CA_RTS
C - - - - - 0x03A0AF 0E:A09F: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03A0B2 0E:A0A2: F0 27     BEQ bra_A0CB
C - - - - - 0x03A0B4 0E:A0A4: AD 60 05  LDA ram_obj_timer
C - - - - - 0x03A0B7 0E:A0A7: C9 28     CMP #$28
C - - - - - 0x03A0B9 0E:A0A9: D0 05     BNE bra_A0B0
C - - - - - 0x03A0BB 0E:A0AB: A9 5B     LDA #con_music_volume_fade
C - - - - - 0x03A0BD 0E:A0AD: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_A0B0:
C - - - - - 0x03A0C0 0E:A0B0: EE A0 04  INC ram_obj_spd_Y_hi
C - - - - - 0x03A0C3 0E:A0B3: AC A0 04  LDY ram_obj_spd_Y_hi
C - - - - - 0x03A0C6 0E:A0B6: B9 DD A0  LDA tbl_A0DD,Y
C - - - - - 0x03A0C9 0E:A0B9: 10 07     BPL bra_A0C2
C - - - - - 0x03A0CB 0E:A0BB: A0 FF     LDY #$FF
C - - - - - 0x03A0CD 0E:A0BD: 8C A0 04  STY ram_obj_spd_Y_hi
C - - - - - 0x03A0D0 0E:A0C0: 29 7F     AND #$7F
bra_A0C2:
C - - - - - 0x03A0D2 0E:A0C2: 8D 52 06  STA ram_pal_buffer + $05
C - - - - - 0x03A0D5 0E:A0C5: A9 FF     LDA #$FF
C - - - - - 0x03A0D7 0E:A0C7: 8D 6D 06  STA ram_066D
bra_A0CA_RTS:
C - - - - - 0x03A0DA 0E:A0CA: 60        RTS
bra_A0CB:
C - - - - - 0x03A0DB 0E:A0CB: 20 C2 F6  JSR sub_0x03F6D2_выключить_музыку_и_звуки
C - - - - - 0x03A0DE 0E:A0CE: A9 05     LDA #con_script_draw_konami
C - - - - - 0x03A0E0 0E:A0D0: 4C AE F5  JMP loc_0x03F5BE_подготовить_скрипт



tbl_A0D3:
- D 1 - - - 0x03A0E3 0E:A0D3: 21 0C     .dbyt $210C ; 00
- D 1 - - - 0x03A0E5 0E:A0D5: 21 6C     .dbyt $216C ; 01
- D 1 - - - 0x03A0E7 0E:A0D7: 21 CC     .dbyt $21CC ; 02
- D 1 - - - 0x03A0E9 0E:A0D9: 22 2C     .dbyt $222C ; 03
- D 1 - - - 0x03A0EB 0E:A0DB: 22 8C     .dbyt $228C ; 04



tbl_A0DD:
- D 1 - - - 0x03A0ED 0E:A0DD: 11        .byte $11   ; 00
- D 1 - - - 0x03A0EE 0E:A0DE: 13        .byte $13   ; 01
- D 1 - - - 0x03A0EF 0E:A0DF: 15        .byte $15   ; 02
- D 1 - - - 0x03A0F0 0E:A0E0: 17        .byte $17   ; 03
- D 1 - - - 0x03A0F1 0E:A0E1: 19        .byte $19   ; 04
- D 1 - - - 0x03A0F2 0E:A0E2: 9B        .byte $1B + $80   ; 05



sub_0x03A0F3_отрисовать_портреты:
; большие портреты как на vs экране
; 00 = 0x03E2E0
; 01 = 0x03860B
; 02 = 0x038725
; 03 = 0x03A46A
; 04 = 0x03E8D9
; 05 = 0x03E8D2
; bzk optimize, 01 02 03 находятся в этом же банке,
; и код переключает на этот же банк 1C
C - - - - - 0x03A0F3 0E:A0E3: C9 02     CMP #$02
C - - - - - 0x03A0F5 0E:A0E5: F0 16     BEQ bra_A0FD_02
C - - - - - 0x03A0F7 0E:A0E7: 20 ED A0  JSR sub_A0ED
C - - - - - 0x03A0FA 0E:A0EA: 4C C1 A1  JMP loc_A1C1_палитра_и_chr_банки_на_экранах_с_портретами



sub_A0ED:
C - - - - - 0x03A0FD 0E:A0ED: A8        TAY
C - - - - - 0x03A0FE 0E:A0EE: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x03A101 0E:A0F1: 4F A1     .word ofs_003_A14F_00_отрисовать_портреты_на_vs_экране
- D 1 - I - 0x03A103 0E:A0F3: 44 A1     .word ofs_003_A144_01_отрисовать_портрет_на_экране_continue___разбитая_рожа
- - - - - - 0x03A105 0E:A0F5: 41 A1     .word ofs_003_A141_02_отрисовать_портрет_на_экране_continue___целая_рожа   ; never used 0x03A0F5
- D 1 - I - 0x03A107 0E:A0F7: 00 A1     .word ofs_003_A100_03_отрисовать_портреты_на_экране_rematch
- D 1 - I - 0x03A109 0E:A0F9: 35 A1     .word ofs_003_A135_04_отрисовать_портрет_шрушера_в_opening
- D 1 - I - 0x03A10B 0E:A0FB: 22 A1     .word ofs_003_A122_05



bra_A0FD_02:
C - - - - - 0x03A10D 0E:A0FD: 4C 41 A1  JMP loc_A141_отрисовать_портрет_на_экране_continue___целая_рожа



ofs_003_A100_03_отрисовать_портреты_на_экране_rematch:
C - - J - - 0x03A110 0E:A100: A9 01     LDA #$01
C - - - - - 0x03A112 0E:A102: 85 08     STA ram_0008
bra_A104_loop:
C - - - - - 0x03A114 0E:A104: A9 00     LDA #$00
C - - - - - 0x03A116 0E:A106: 85 04     STA ram_0004    ; флаг рисования разбитой рожи
C - - - - - 0x03A118 0E:A108: AD 3F 06  LDA ram_063F
C - - - - - 0x03A11B 0E:A10B: 30 06     BMI bra_A113
C - - - - - 0x03A11D 0E:A10D: C5 08     CMP ram_0008
C - - - - - 0x03A11F 0E:A10F: F0 02     BEQ bra_A113
C - - - - - 0x03A121 0E:A111: E6 04     INC ram_0004    ; 01 флаг рисования разбитой рожи
bra_A113:
C - - - - - 0x03A123 0E:A113: A6 08     LDX ram_0008
C - - - - - 0x03A125 0E:A115: B4 A2     LDY ram_plr_id,X
C - - - - - 0x03A127 0E:A117: E8        INX
C - - - - - 0x03A128 0E:A118: E8        INX
C - - - - - 0x03A129 0E:A119: E8        INX
C - - - - - 0x03A12A 0E:A11A: 20 5C A1  JSR sub_A15C
C - - - - - 0x03A12D 0E:A11D: C6 08     DEC ram_0008
C - - - - - 0x03A12F 0E:A11F: 10 E3     BPL bra_A104_loop
C - - - - - 0x03A131 0E:A121: 60        RTS



ofs_003_A122_05:
C - - J - - 0x03A132 0E:A122: 20 35 A1  JSR sub_A135
C - - - - - 0x03A135 0E:A125: A0 00     LDY #$00
bra_A127_loop:
C - - - - - 0x03A137 0E:A127: B9 43 A3  LDA tbl_A343,Y
C - - - - - 0x03A13A 0E:A12A: C9 FE     CMP #$FE
C - - - - - 0x03A13C 0E:A12C: F0 06     BEQ bra_A134_RTS
C - - - - - 0x03A13E 0E:A12E: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03A141 0E:A131: C8        INY
C - - - - - 0x03A142 0E:A132: D0 F3     BNE bra_A127_loop
bra_A134_RTS:
C - - - - - 0x03A144 0E:A134: 60        RTS



sub_A135:
ofs_003_A135_04_отрисовать_портрет_шрушера_в_opening:   ; offer challenge
C - - J - - 0x03A145 0E:A135: A9 00     LDA #$00
C - - - - - 0x03A147 0E:A137: 85 04     STA ram_0004    ; флаг рисования разбитой рожи
C - - - - - 0x03A149 0E:A139: A0 06     LDY #con_fighter_shred
C - - - - - 0x03A14B 0E:A13B: 84 A2     STY ram_plr_id
C - - - - - 0x03A14D 0E:A13D: A2 05     LDX #$05
C - - - - - 0x03A14F 0E:A13F: D0 1B     BNE bra_A15C    ; jmp



loc_A141_отрисовать_портрет_на_экране_continue___целая_рожа:
ofs_003_A141_02_отрисовать_портрет_на_экране_continue___целая_рожа:
C D 1 - - - 0x03A151 0E:A141: A9 00     LDA #$00
C - - - - - 0x03A153 0E:A143: 2C        .byte $2C   ; BIT
ofs_003_A144_01_отрисовать_портрет_на_экране_continue___разбитая_рожа:
C - - - - - 0x03A154 0E:A144: A9 01     LDA #$01
C - - - - - 0x03A156 0E:A146: 85 04     STA ram_0004    ; флаг рисования разбитой рожи
C - - - - - 0x03A158 0E:A148: A2 02     LDX #$02
C - - - - - 0x03A15A 0E:A14A: A4 A2     LDY ram_plr_id
C - - - - - 0x03A15C 0E:A14C: 4C 00 BF  JMP loc_BF00



ofs_003_A14F_00_отрисовать_портреты_на_vs_экране:
C - - J - - 0x03A15F 0E:A14F: A9 00     LDA #$00
C - - - - - 0x03A161 0E:A151: 85 04     STA ram_0004    ; флаг рисования разбитой рожи
C - - - - - 0x03A163 0E:A153: A2 01     LDX #$01
C - - - - - 0x03A165 0E:A155: 20 5A A1  JSR sub_A15A
C - - - - - 0x03A168 0E:A158: A2 00     LDX #$00
sub_A15A:
C - - - - - 0x03A16A 0E:A15A: B4 A2     LDY ram_plr_id,X
bra_A15C:
sub_A15C:
loc_A15C:
C D 1 - - - 0x03A16C 0E:A15C: 84 03     STY ram_0003    ; bzk optimize, оно надо?
                                        TYA
                                        ASL
                                        TAY
C - - - - - 0x03A16E 0E:A15E: B9 23 A2  LDA tbl_A223_тайлы_рож,Y
                                        STA ram_0008
                                        LDA tbl_A223_тайлы_рож + $01,Y
                                        STA ram_0009
                                        LDY #$00
C - - - - - 0x03A171 0E:A161: 85 00     STY ram_0000
C - - - - - 0x03A173 0E:A163: BD 0B A3  LDA tbl_A30B_ppu_hi,X
C - - - - - 0x03A176 0E:A166: 85 01     STA ram_0001
C - - - - - 0x03A178 0E:A168: BD 11 A3  LDA tbl_A311_ppu_lo,X
C - - - - - 0x03A17B 0E:A16B: 85 02     STA ram_0002
bra_A16D_main_loop:
C - - - - - 0x03A17D 0E:A16D: A4 00     LDY ram_0000
C - - - - - 0x03A17F 0E:A16F: B9 2A A2  LDA (ram_0008),Y
C - - - - - 0x03A182 0E:A172: C9 FE     CMP #$FE
C - - - - - 0x03A184 0E:A174: F0 4A     BEQ bra_A1C0_RTS
C - - - - - 0x03A186 0E:A176: C9 FF     CMP #$FF
C - - - - - 0x03A188 0E:A178: D0 06     BNE bra_A180
; FF
C - - - - - 0x03A18A 0E:A17A: A5 04     LDA ram_0004    ; флаг рисования разбитой рожи
C - - - - - 0x03A18C 0E:A17C: F0 42     BEQ bra_A1C0_RTS
C - - - - - 0x03A18E 0E:A17E: D0 29     BNE bra_A1A9    ; jmp
bra_A180:
C - - - - - 0x03A190 0E:A180: 18        CLC
C - - - - - 0x03A191 0E:A181: 65 02     ADC ram_0002
C - - - - - 0x03A193 0E:A183: A8        TAY
C - - - - - 0x03A194 0E:A184: A9 00     LDA #$00
C - - - - - 0x03A196 0E:A186: 65 01     ADC ram_0001
C - - - - - 0x03A198 0E:A188: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03A19B 0E:A18B: E6 00     INC ram_0000
C - - - - - 0x03A19D 0E:A18D: A4 00     LDY ram_0000
C - - - - - 0x03A19F 0E:A18F: B9 2A A2  LDA (ram_0008),Y
C - - - - - 0x03A1A2 0E:A192: F0 19     BEQ bra_A1AD
C - - - - - 0x03A1A4 0E:A194: C9 10     CMP #$10
C - - - - - 0x03A1A6 0E:A196: B0 15     BCS bra_A1AD
; 01-0F
C - - - - - 0x03A1A8 0E:A198: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03A1AB 0E:A19B: C8        INY
C - - - - - 0x03A1AC 0E:A19C: B9 2A A2  LDA (ram_0008),Y
C - - - - - 0x03A1AF 0E:A19F: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
; поменять режим 01 на 04
C - - - - - 0x03A1B2 0E:A1A2: A9 04     LDA #con_buf_mode_04
C - - - - - 0x03A1B4 0E:A1A4: 9D FB 02  STA ram_ppu_buffer - $05,X
C - - - - - 0x03A1B7 0E:A1A7: E6 00     INC ram_0000
bra_A1A9:
bra_A1A9_loop:
C - - - - - 0x03A1B9 0E:A1A9: E6 00     INC ram_0000
C - - - - - 0x03A1BB 0E:A1AB: D0 C0     BNE bra_A16D_main_loop    ; jmp
bra_A1AD:
; 00, 10+
C - - - - - 0x03A1BD 0E:A1AD: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
bra_A1B0_loop:
C - - - - - 0x03A1C0 0E:A1B0: E6 00     INC ram_0000
C - - - - - 0x03A1C2 0E:A1B2: A4 00     LDY ram_0000
C - - - - - 0x03A1C4 0E:A1B4: B9 2A A2  LDA (ram_0008),Y
C - - - - - 0x03A1C7 0E:A1B7: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03A1CA 0E:A1BA: C9 FF     CMP #$FF
C - - - - - 0x03A1CC 0E:A1BC: D0 F2     BNE bra_A1B0_loop
; bzk optimize, продублировать код 0x03A1B9 чтоб была ссылка на main
C - - - - - 0x03A1CE 0E:A1BE: F0 E9     BEQ bra_A1A9_loop    ; jmp
bra_A1C0_RTS:
C - - - - - 0x03A1D0 0E:A1C0: 60        RTS



loc_A1C1_палитра_и_chr_банки_на_экранах_с_портретами:
; большие портреты как на vs экране
C D 1 - - - 0x03A1D1 0E:A1C1: 20 6D D4  JSR sub_0x03D47D_запись_черной_палитры_в_буфер
C - - - - - 0x03A1D4 0E:A1C4: A9 14     LDA #con_D57A_14
C - - - - - 0x03A1D6 0E:A1C6: 20 B0 D3  JSR sub_0x03D3C0_записать_палитру_для_фона
C - - - - - 0x03A1D9 0E:A1C9: A2 01     LDX #$01
C - - - - - 0x03A1DB 0E:A1CB: 86 A8     STX ram_local_obj_index
bra_A1CD_loop:
C - - - - - 0x03A1DD 0E:A1CD: A6 A8     LDX ram_local_obj_index
C - - - - - 0x03A1DF 0E:A1CF: B4 A2     LDY ram_plr_id,X ; 00A2 00A3 
C - - - - - 0x03A1E1 0E:A1D1: 20 0B BF  JSR sub_BF0B_конвертация_индекса
C - - - - - 0x03A1E4 0E:A1D4: A8        TAY
C - - - - - 0x03A1E5 0E:A1D5: B9 1E A3  LDA tbl_A31E_chr_банки_портрета,Y
C - - - - - 0x03A1E8 0E:A1D8: 95 4E     STA ram_alt_chr_bank_bg_1,X
C - - - - - 0x03A1EA 0E:A1DA: B9 1F A3  LDA tbl_A31E_chr_банки_портрета + $01,Y
C - - - - - 0x03A1ED 0E:A1DD: 95 50     STA ram_alt_chr_bank_bg_2,X
C - - - - - 0x03A1EF 0E:A1DF: B9 20 A3  LDA tbl_A31E_chr_банки_портрета + $02,Y
C - - - - - 0x03A1F2 0E:A1E2: 95 52     STA ram_alt_chr_bank_spr_1,X
C - - - - - 0x03A1F4 0E:A1E4: B9 21 A3  LDA tbl_A31E_chr_банки_портрета + $03,Y
C - - - - - 0x03A1F7 0E:A1E7: 95 54     STA ram_alt_chr_bank_spr_2,X
C - - - - - 0x03A1F9 0E:A1E9: B4 A2     LDY ram_plr_id,X ; 00A2 00A3 
C - - - - - 0x03A1FB 0E:A1EB: 20 17 BF  JSR sub_BF17
C - - - - - 0x03A1FE 0E:A1EE: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x03A201 0E:A1F1: 8A        TXA
C - - - - - 0x03A202 0E:A1F2: 09 80     ORA #$80
C - - - - - 0x03A204 0E:A1F4: 9D 00 05  STA ram_obj_0500,X ; 0500 0501 
C - - - - - 0x03A207 0E:A1F7: 9D 30 04  STA ram_obj_pos_X_hi,X ; 0430 0431 
C - - - - - 0x03A20A 0E:A1FA: 98        TYA
C - - - - - 0x03A20B 0E:A1FB: 0A        ASL
C - - - - - 0x03A20C 0E:A1FC: A8        TAY
C - - - - - 0x03A20D 0E:A1FD: B9 2E A3  LDA tbl_A32E_индекс_палитры_портрета,Y
; tip_индекс_буфера_палитры + $00
; tip_индекс_буфера_палитры + $01
C - - - - - 0x03A210 0E:A200: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x03A213 0E:A203: 18        CLC
C - - - - - 0x03A214 0E:A204: 8A        TXA
C - - - - - 0x03A215 0E:A205: 69 04     ADC #$04
C - - - - - 0x03A217 0E:A207: AA        TAX
C - - - - - 0x03A218 0E:A208: B9 2F A3  LDA tbl_A32E_индекс_палитры_портрета + $01,Y
; tip_индекс_буфера_палитры + $04
; tip_индекс_буфера_палитры + $05
C - - - - - 0x03A21B 0E:A20B: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x03A21E 0E:A20E: C6 A8     DEC ram_local_obj_index
C - - - - - 0x03A220 0E:A210: 10 BB     BPL bra_A1CD_loop
; bzk optimize, для чего нужен цикл, если пишутся банки только X = 00?
; разобрать код получше
C - - - - - 0x03A222 0E:A212: A5 4E     LDA ram_alt_chr_bank_bg_1
C - - - - - 0x03A224 0E:A214: 85 32     STA ram_chr_bank_bg
C - - - - - 0x03A226 0E:A216: A5 50     LDA ram_alt_chr_bank_bg_2
C - - - - - 0x03A228 0E:A218: 85 33     STA ram_chr_bank_bg + $01
C - - - - - 0x03A22A 0E:A21A: A5 52     LDA ram_alt_chr_bank_spr_1
C - - - - - 0x03A22C 0E:A21C: 85 34     STA ram_chr_bank_spr
C - - - - - 0x03A22E 0E:A21E: A5 54     LDA ram_alt_chr_bank_spr_2
C - - - - - 0x03A230 0E:A220: 85 35     STA ram_chr_bank_spr + $01
C - - - - - 0x03A232 0E:A222: 60        RTS



tbl_A223_тайлы_рож:
- D 1 - - - 0x03A233 0E:A223: 00        .word off_A22A_00_leo   ; con_fighter_leo
- D 1 - - - 0x03A234 0E:A224: 00        .word off_A22A_01_raph   ; con_fighter_raph
- D 1 - - - 0x03A235 0E:A225: 00        .word off_A22A_02_mike   ; con_fighter_mike
- D 1 - - - 0x03A236 0E:A226: 00        .word off_A22A_03_don   ; con_fighter_don
- D 1 - - - 0x03A237 0E:A227: 32        .word off_A25C_04_casey   ; con_fighter_casey
- D 1 - - - 0x03A238 0E:A228: 73        .word off_A29D_05_hot   ; con_fighter_hot
- D 1 - - - 0x03A239 0E:A229: A2        .word off_A2CC_06_shred   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .word off_A22A_07   ; off_A22A_00_leo
                                        .word off_A22A_08   ; off_A22A_00_leo
                                        .word off_A22A_09   ; off_A22A_00_leo
                                        .word off_A22A_0A   ; off_A22A_00_leo
                                        .word off_A25C_0B   ; off_A22A_00_leo
                                        .word off_A29D_0C   ; off_A22A_00_leo
                                        .word off_A2CC_0D   ; off_A22A_00_leo
                                    .endif



off_A22A_00_leo:
off_A22A_01_raph:
off_A22A_02_mike:
off_A22A_03_don:
off_A22A_07:
off_A22A_08:
off_A22A_09:
off_A22A_0A:
- D 1 - - - 0x03A23A 0E:A22A: 21        .byte $21   ; смещение ppu
- D 1 - - - 0x03A23B 0E:A22B: 05        .byte $05, $01   ; байт 01 с увеличением, 05 раз

- D 1 - - - 0x03A23D 0E:A22D: 41        .byte $41   ; 
- D 1 - - - 0x03A23E 0E:A22E: 06        .byte $06, $06   ; 

- D 1 - - - 0x03A240 0E:A230: 60        .byte $60   ; 
- D 1 - - - 0x03A241 0E:A231: 07        .byte $07, $0C   ; 

- D 1 - - - 0x03A243 0E:A233: 80        .byte $80   ; 
- D 1 - - - 0x03A244 0E:A234: 07        .byte $07, $13   ; 

- D 1 - - - 0x03A246 0E:A236: A0        .byte $A0   ; 
- D 1 - - - 0x03A247 0E:A237: 07        .byte $07, $1A   ; 

- D 1 - - - 0x03A249 0E:A239: C0        .byte $C0   ; 
- D 1 - - - 0x03A24A 0E:A23A: 07        .byte $07, $21   ; 

- D 1 - - - 0x03A24C 0E:A23C: E0        .byte $E0   ; 
- D 1 - - - 0x03A24D 0E:A23D: 06        .byte $06, $28   ; 

- D 1 - - - 0x03A24F 0E:A23F: E6        .byte $E6   ; 
- D 1 - - - 0x03A250 0E:A240: 00        .byte $00, $FF   ; список байтов

- D 1 - - - 0x03A252 0E:A242: FF        .byte $FF   ; решение дорисовать разбитую рожу

- D 1 - - - 0x03A253 0E:A243: 21        .byte $21   ; 
- D 1 - - - 0x03A254 0E:A244: 00        .byte $00, $00, $2E, $FF   ; список байтов

- D 1 - - - 0x03A258 0E:A248: 41        .byte $41   ; 
- D 1 - - - 0x03A259 0E:A249: 00        .byte $00, $2F, $FF   ; список байтов

- D 1 - - - 0x03A25C 0E:A24C: 63        .byte $63   ; 
- D 1 - - - 0x03A25D 0E:A24D: 04        .byte $04, $30   ; 

- D 1 - - - 0x03A25F 0E:A24F: 83        .byte $83   ; 
- D 1 - - - 0x03A260 0E:A250: 03        .byte $03, $34   ; 

- D 1 - - - 0x03A262 0E:A252: A2        .byte $A2   ; 
- D 1 - - - 0x03A263 0E:A253: 04        .byte $04, $37   ; 

- D 1 - - - 0x03A265 0E:A255: C3        .byte $C3   ; 
- D 1 - - - 0x03A266 0E:A256: 04        .byte $04, $3B   ; 

- D 1 - - - 0x03A268 0E:A258: E6        .byte $E6   ; 
- D 1 - - - 0x03A269 0E:A259: 3F        .byte $3F, $FF   ; список байтов

- D 1 - - - 0x03A26B 0E:A25B: FE        .byte $FE   ; end token



off_A25C_04_casey:
off_A25C_0B:
- D 1 - - - 0x03A26C 0E:A25C: 00        .byte $00   ; смещение ppu
- D 1 - - - 0x03A26D 0E:A25D: 06        .byte $06, $40   ; байт 40 с увеличением, 06 раз

- D 1 - - - 0x03A26F 0E:A25F: 20        .byte $20   ; 
- D 1 - - - 0x03A270 0E:A260: 06        .byte $06, $46   ; 

- D 1 - - - 0x03A272 0E:A262: 40        .byte $40   ; 
- D 1 - - - 0x03A273 0E:A263: 08        .byte $08, $4C   ; 

- D 1 - - - 0x03A275 0E:A265: 60        .byte $60   ; 
- D 1 - - - 0x03A276 0E:A266: 08        .byte $08, $54   ; 

- D 1 - - - 0x03A278 0E:A268: 81        .byte $81   ; 
- D 1 - - - 0x03A279 0E:A269: 07        .byte $07, $5C   ; 

- D 1 - - - 0x03A27B 0E:A26B: A0        .byte $A0   ; 
- D 1 - - - 0x03A27C 0E:A26C: 08        .byte $08, $63   ; 

- D 1 - - - 0x03A27E 0E:A26E: C0        .byte $C0   ; 
- D 1 - - - 0x03A27F 0E:A26F: 08        .byte $08, $6B   ; 

- D 1 - - - 0x03A281 0E:A271: E0        .byte $E0   ; 
- D 1 - - - 0x03A282 0E:A272: 04        .byte $04, $73   ; 

- D 1 - - - 0x03A284 0E:A274: E4        .byte $E4   ; 
- D 1 - - - 0x03A285 0E:A275: 76        .byte $76, $81, $82, $83, $FF   ; список байтов

- D 1 - - - 0x03A28A 0E:A27A: FF        .byte $FF   ; решение дорисовать разбитую рожу

- - - - - - 0x03A28B 0E:A27B: 22        .byte $22   ; 
- - - - - - 0x03A28C 0E:A27C: 02        .byte $02, $84   ; 

- - - - - - 0x03A28E 0E:A27E: 42        .byte $42   ; 
- - - - - - 0x03A28F 0E:A27F: 02        .byte $02, $86   ; 

- - - - - - 0x03A291 0E:A281: 45        .byte $45   ; 
- - - - - - 0x03A292 0E:A282: 00        .byte $00, $00, $00, $FF   ; список байтов

- - - - - - 0x03A296 0E:A286: 62        .byte $62   ; 
- - - - - - 0x03A297 0E:A287: 03        .byte $03, $88   ; 

- - - - - - 0x03A299 0E:A289: 65        .byte $65   ; 
- - - - - - 0x03A29A 0E:A28A: 00        .byte $00, $00, $00, $FF   ; список байтов

- - - - - - 0x03A29E 0E:A28E: 82        .byte $82   ; 
- - - - - - 0x03A29F 0E:A28F: 02        .byte $02, $8B   ; 

- - - - - - 0x03A2A1 0E:A291: 86        .byte $86   ; 
- - - - - - 0x03A2A2 0E:A292: 02        .byte $02, $8D   ; 

- - - - - - 0x03A2A4 0E:A294: A2        .byte $A2   ; 
- - - - - - 0x03A2A5 0E:A295: 8F        .byte $8F, $90, $B9, $FF   ; список байтов

- - - - - - 0x03A2A9 0E:A299: A7        .byte $A7   ; 
- - - - - - 0x03A2AA 0E:A29A: 92        .byte $92, $FF   ; список байтов

- - - - - - 0x03A2AC 0E:A29C: FE        .byte $FE   ; end token



off_A29D_05_hot:
off_A29D_0C:
- D 1 - - - 0x03A2AD 0E:A29D: 03        .byte $03   ; смещение ppu
- D 1 - - - 0x03A2AE 0E:A29E: 05        .byte $05, $5C   ; байт 5C с увеличением, 05 раз

- D 1 - - - 0x03A2B0 0E:A2A0: 22        .byte $22   ; 
- D 1 - - - 0x03A2B1 0E:A2A1: 06        .byte $06, $61   ; 

- D 1 - - - 0x03A2B3 0E:A2A3: 41        .byte $41   ; 
- D 1 - - - 0x03A2B4 0E:A2A4: 07        .byte $07, $67   ; 

- D 1 - - - 0x03A2B6 0E:A2A6: 61        .byte $61   ; 
- D 1 - - - 0x03A2B7 0E:A2A7: 07        .byte $07, $6E   ; 

- D 1 - - - 0x03A2B9 0E:A2A9: 80        .byte $80   ; 
- D 1 - - - 0x03A2BA 0E:A2AA: 02        .byte $02, $75   ; 

- D 1 - - - 0x03A2BC 0E:A2AC: 82        .byte $82   ; 
- D 1 - - - 0x03A2BD 0E:A2AD: 06        .byte $06, $81   ; 

- D 1 - - - 0x03A2BF 0E:A2AF: A0        .byte $A0   ; 
- D 1 - - - 0x03A2C0 0E:A2B0: 08        .byte $08, $87   ; 

- D 1 - - - 0x03A2C2 0E:A2B2: C0        .byte $C0   ; 
- D 1 - - - 0x03A2C3 0E:A2B3: 08        .byte $08, $8F   ; 

- D 1 - - - 0x03A2C5 0E:A2B5: E0        .byte $E0   ; 
- D 1 - - - 0x03A2C6 0E:A2B6: 08        .byte $08, $97   ; 

- D 1 - - - 0x03A2C8 0E:A2B8: FF        .byte $FF   ; решение дорисовать разбитую рожу

- D 1 - - - 0x03A2C9 0E:A2B9: 42        .byte $42   ; 
- D 1 - - - 0x03A2CA 0E:A2BA: 9F        .byte $9F, $FF   ; список байтов

- D 1 - - - 0x03A2CC 0E:A2BC: 62        .byte $62   ; 
- D 1 - - - 0x03A2CD 0E:A2BD: 03        .byte $03, $A0   ; 

- D 1 - - - 0x03A2CF 0E:A2BF: 82        .byte $82   ; 
- D 1 - - - 0x03A2D0 0E:A2C0: 04        .byte $04, $A3   ; 

- D 1 - - - 0x03A2D2 0E:A2C2: A1        .byte $A1   ; 
- D 1 - - - 0x03A2D3 0E:A2C3: 05        .byte $05, $A7   ; 

- D 1 - - - 0x03A2D5 0E:A2C5: C2        .byte $C2   ; 
- D 1 - - - 0x03A2D6 0E:A2C6: 03        .byte $03, $AC   ; 

- D 1 - - - 0x03A2D8 0E:A2C8: E2        .byte $E2   ; 
- D 1 - - - 0x03A2D9 0E:A2C9: AF        .byte $AF, $FF   ; список байтов

- D 1 - - - 0x03A2DB 0E:A2CB: FE        .byte $FE   ; end token



off_A2CC_06_shred:
off_A2CC_0D:
- D 1 - - - 0x03A2DC 0E:A2CC: 02        .byte $02   ; смещение ppu
- D 1 - - - 0x03A2DD 0E:A2CD: 04        .byte $04, $94   ; байт 94 с увеличением, 04 раз

- D 1 - - - 0x03A2DF 0E:A2CF: 21        .byte $21   ; 
- D 1 - - - 0x03A2E0 0E:A2D0: 06        .byte $06, $98   ; 

- D 1 - - - 0x03A2E2 0E:A2D2: 40        .byte $40   ; 
- D 1 - - - 0x03A2E3 0E:A2D3: 9E        .byte $9E, $FF   ; список байтов

- D 1 - - - 0x03A2E5 0E:A2D5: 41        .byte $41   ; 
- D 1 - - - 0x03A2E6 0E:A2D6: 00        .byte $00, $FF   ; список байтов

- D 1 - - - 0x03A2E8 0E:A2D8: 42        .byte $42   ; 
- D 1 - - - 0x03A2E9 0E:A2D9: 05        .byte $05, $9F   ; 

- D 1 - - - 0x03A2EB 0E:A2DB: 60        .byte $60   ; 
- D 1 - - - 0x03A2EC 0E:A2DC: 07        .byte $07, $A4   ; 

- D 1 - - - 0x03A2EE 0E:A2DE: 80        .byte $80   ; 
- D 1 - - - 0x03A2EF 0E:A2DF: 05        .byte $05, $AB   ; 

- D 1 - - - 0x03A2F1 0E:A2E1: 85        .byte $85   ; 
- D 1 - - - 0x03A2F2 0E:A2E2: D2        .byte $D2, $B1, $B2, $FF   ; список байтов

- D 1 - - - 0x03A2F6 0E:A2E6: A0        .byte $A0   ; 
- D 1 - - - 0x03A2F7 0E:A2E7: 06        .byte $06, $B3   ; 

- D 1 - - - 0x03A2F9 0E:A2E9: A6        .byte $A6   ; 
- D 1 - - - 0x03A2FA 0E:A2EA: DB        .byte $DB, $BA, $FF   ; список байтов

- D 1 - - - 0x03A2FD 0E:A2ED: C0        .byte $C0   ; 
- D 1 - - - 0x03A2FE 0E:A2EE: 08        .byte $08, $BB   ; 

- D 1 - - - 0x03A300 0E:A2F0: E0        .byte $E0   ; 
- D 1 - - - 0x03A301 0E:A2F1: 08        .byte $08, $C3   ; 

- D 1 - - - 0x03A303 0E:A2F3: FF        .byte $FF   ; решение дорисовать разбитую рожу

- - - - - - 0x03A304 0E:A2F4: 40        .byte $40   ; 
- - - - - - 0x03A305 0E:A2F5: 00        .byte $00, $FF   ; список байтов

- - - - - - 0x03A307 0E:A2F7: 42        .byte $42   ; 
- - - - - - 0x03A308 0E:A2F8: 03        .byte $03, $CB   ; 

- - - - - - 0x03A30A 0E:A2FA: 60        .byte $60   ; 
- - - - - - 0x03A30B 0E:A2FB: 00        .byte $00, $FF   ; список байтов

- - - - - - 0x03A30D 0E:A2FD: 61        .byte $61   ; 
- - - - - - 0x03A30E 0E:A2FE: 04        .byte $04, $CE   ; 

- - - - - - 0x03A310 0E:A300: 80        .byte $80   ; 
- - - - - - 0x03A311 0E:A301: 00        .byte $00, $B0, $D3, $D4, $D5, $FF   ; список байтов

- - - - - - 0x03A317 0E:A307: A0        .byte $A0   ; 
- - - - - - 0x03A318 0E:A308: 05        .byte $05, $D6   ; 

- - - - - - 0x03A31A 0E:A30A: FE        .byte $FE   ; end token



tbl_A30B_ppu_hi:
- D 1 - - - 0x03A31B 0E:A30B: 24        .byte > $2442   ; 00
- D 1 - - - 0x03A31C 0E:A30C: 26        .byte > $2656   ; 01
- D 1 - - - 0x03A31D 0E:A30D: 20        .byte > $208C   ; 02
- D 1 - - - 0x03A31E 0E:A30E: 20        .byte > $2084   ; 03
- D 1 - - - 0x03A31F 0E:A30F: 21        .byte > $21D4   ; 04
- D 1 - - - 0x03A320 0E:A310: 20        .byte > $20CC   ; 05

tbl_A311_ppu_lo:
- D 1 - - - 0x03A321 0E:A311: 42        .byte < $2442   ; 00
- D 1 - - - 0x03A322 0E:A312: 56        .byte < $2656   ; 01
- D 1 - - - 0x03A323 0E:A313: 8C        .byte < $208C   ; 02
- D 1 - - - 0x03A324 0E:A314: 84        .byte < $2084   ; 03
- D 1 - - - 0x03A325 0E:A315: D4        .byte < $21D4   ; 04
- D 1 - - - 0x03A326 0E:A316: CC        .byte < $20CC   ; 05



tbl_A317_индекс:
- D 1 - - - 0x03A327 0E:A317: 00        .byte $00   ; 00 con_fighter_leo
- D 1 - - - 0x03A328 0E:A318: 00        .byte $00   ; 01 con_fighter_raph
- D 1 - - - 0x03A329 0E:A319: 00        .byte $00   ; 02 con_fighter_mike
- D 1 - - - 0x03A32A 0E:A31A: 00        .byte $00   ; 03 con_fighter_don
- D 1 - - - 0x03A32B 0E:A31B: 04        .byte $04   ; 04 con_fighter_casey
- D 1 - - - 0x03A32C 0E:A31C: 08        .byte $08   ; 05 con_fighter_hot
- D 1 - - - 0x03A32D 0E:A31D: 0C        .byte $0C   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $00   ; 07 con_fighter_07
                                        .byte $00   ; 08 con_fighter_08
                                        .byte $00   ; 09 con_fighter_09
                                        .byte $00   ; 0A con_fighter_0A
                                        .byte $04   ; 0B con_fighter_0B
                                        .byte $08   ; 0C con_fighter_0C
                                        .byte $0C   ; 0D con_fighter_0D
                                    .endif



tbl_A31E_chr_банки_портрета:
; con_новые_персы
; 00 
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
; con_fighter_don
- D 1 - - - 0x03A32E 0E:A31E: 22        .byte con_chr_bank_bg + $22   ; 
- D 1 - - - 0x03A32F 0E:A31F: 22        .byte con_chr_bank_bg + $22   ; 
- D 1 - - - 0x03A330 0E:A320: 26        .byte con_chr_bank_spr + $26   ; 
- D 1 - - - 0x03A331 0E:A321: 27        .byte con_chr_bank_spr + $27   ; 
; 04 con_fighter_casey
- D 1 - - - 0x03A332 0E:A322: 22        .byte con_chr_bank_bg + $22   ; 
- D 1 - - - 0x03A333 0E:A323: 24        .byte con_chr_bank_bg + $24   ; 
- D 1 - - - 0x03A334 0E:A324: 0E        .byte con_chr_bank_spr + $0E   ; 
- D 1 - - - 0x03A335 0E:A325: 0E        .byte con_chr_bank_spr + $0E   ; 
; 08 con_fighter_hot
- D 1 - - - 0x03A336 0E:A326: 24        .byte con_chr_bank_bg + $24   ; 
- D 1 - - - 0x03A337 0E:A327: 26        .byte con_chr_bank_bg + $26   ; 
- D 1 - - - 0x03A338 0E:A328: 13        .byte con_chr_bank_spr + $13   ; 
- D 1 - - - 0x03A339 0E:A329: 13        .byte con_chr_bank_spr + $13   ; 
; 0C con_fighter_shred
- D 1 - - - 0x03A33A 0E:A32A: 22        .byte con_chr_bank_bg + $22   ; 
- D 1 - - - 0x03A33B 0E:A32B: 24        .byte con_chr_bank_bg + $24   ; 
- D 1 - - - 0x03A33C 0E:A32C: 26        .byte con_chr_bank_spr + $26   ; 
- D 1 - - - 0x03A33D 0E:A32D: 27        .byte con_chr_bank_spr + $27   ; 



tbl_A32E_индекс_палитры_портрета:
; 00 con_fighter_leo
- D 1 - - - 0x03A33E 0E:A32E: 43        .byte con_AF40_pal + $43   ; 
- D 1 - - - 0x03A33F 0E:A32F: 66        .byte con_AF40_pal + $66   ; 
; 01 con_fighter_raph
- D 1 - - - 0x03A340 0E:A330: 44        .byte con_AF40_pal + $44   ; 
- D 1 - - - 0x03A341 0E:A331: 48        .byte con_AF40_pal + $48   ; 
; 02 con_fighter_mike
- D 1 - - - 0x03A342 0E:A332: 45        .byte con_AF40_pal + $45   ; 
- D 1 - - - 0x03A343 0E:A333: 48        .byte con_AF40_pal + $48   ; 
; 03 con_fighter_don
- D 1 - - - 0x03A344 0E:A334: 46        .byte con_AF40_pal + $46   ; 
- D 1 - - - 0x03A345 0E:A335: 66        .byte con_AF40_pal + $66   ; 
; 04 con_fighter_casey
- D 1 - - - 0x03A346 0E:A336: 47        .byte con_AF40_pal + $47   ; 
- D 1 - - - 0x03A347 0E:A337: 2A        .byte con_AF40_pal + $2A   ; 
; 05 con_fighter_hot
- D 1 - - - 0x03A348 0E:A338: 48        .byte con_AF40_pal + $48   ; 
- D 1 - - - 0x03A349 0E:A339: 49        .byte con_AF40_pal + $49   ; 
; 06 con_fighter_shred
- D 1 - - - 0x03A34A 0E:A33A: 02        .byte con_AF40_pal + $02   ; 
- D 1 - - - 0x03A34B 0E:A33B: 4A        .byte con_AF40_pal + $4A   ; 
                                    .if con_новые_персы <> $00
; 07 con_fighter_07
                                        .byte con_AF40_pal + $43   ; 
                                        .byte con_AF40_pal + $66   ; 
; 08 con_fighter_08
                                        .byte con_AF40_pal + $44   ; 
                                        .byte con_AF40_pal + $48   ; 
; 09 con_fighter_09
                                        .byte con_AF40_pal + $45   ; 
                                        .byte con_AF40_pal + $48   ; 
; 0A con_fighter_0A
                                        .byte con_AF40_pal + $46   ; 
                                        .byte con_AF40_pal + $66   ; 
; 0B con_fighter_0B
                                        .byte con_AF40_pal + $47   ; 
                                        .byte con_AF40_pal + $2A   ; 
; 0C con_fighter_0C
                                        .byte con_AF40_pal + $48   ; 
                                        .byte con_AF40_pal + $49   ; 
; 0D con_fighter_0D
                                        .byte con_AF40_pal + $02   ; 
                                        .byte con_AF40_pal + $4A   ; 
                                    .endif



tbl_A33C:
- D 1 - - - 0x03A34C 0E:A33C: 36        .byte $36   ; 00 con_fighter_leo
- D 1 - - - 0x03A34D 0E:A33D: 36        .byte $36   ; 01 con_fighter_raph
- D 1 - - - 0x03A34E 0E:A33E: 36        .byte $36   ; 02 con_fighter_mike
- D 1 - - - 0x03A34F 0E:A33F: 36        .byte $36   ; 03 con_fighter_don
- D 1 - - - 0x03A350 0E:A340: 38        .byte $38   ; 04 con_fighter_casey
- D 1 - - - 0x03A351 0E:A341: 3A        .byte $3A   ; 05 con_fighter_hot
- D 1 - - - 0x03A352 0E:A342: 3C        .byte $3C   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $36   ; 07 con_fighter_07
                                        .byte $36   ; 08 con_fighter_08
                                        .byte $36   ; 09 con_fighter_09
                                        .byte $36   ; 0A con_fighter_0A
                                        .byte $38   ; 0B con_fighter_0B
                                        .byte $3A   ; 0C con_fighter_0C
                                        .byte $3C   ; 0D con_fighter_0D
                                    .endif



tbl_A343:
- D 1 - - - 0x03A353 0E:A343: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A354 0E:A344: AB 20     .word $20AB
- D 1 - - - 0x03A356 0E:A346: 77        .byte $77, $FF   ; 

- D 1 - - - 0x03A358 0E:A348: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A359 0E:A349: B4 20     .word $20B4
- D 1 - - - 0x03A35B 0E:A34B: 78        .byte $78, $FF   ; 

- D 1 - - - 0x03A35D 0E:A34D: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A35E 0E:A34E: CB 21     .word $21CB
- D 1 - - - 0x03A360 0E:A350: 79        .byte $79, $FF   ; 

- D 1 - - - 0x03A362 0E:A352: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A363 0E:A353: D4 21     .word $21D4
- D 1 - - - 0x03A365 0E:A355: 7A        .byte $7A, $FF   ; 

- D 1 - - - 0x03A367 0E:A357: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A368 0E:A358: AC 20     .word $20AC
- D 1 - - - 0x03A36A 0E:A35A: 08        .byte $08, $7B   ; 

- D 1 - - - 0x03A36C 0E:A35C: 05        .byte con_buf_mode_05   ; 
- D 1 - - - 0x03A36D 0E:A35D: CB 20     .word $20CB
- D 1 - - - 0x03A36F 0E:A35F: 08        .byte $08, $7D   ; 

- D 1 - - - 0x03A371 0E:A361: 05        .byte con_buf_mode_05   ; 
- D 1 - - - 0x03A372 0E:A362: D4 20     .word $20D4
- D 1 - - - 0x03A374 0E:A364: 08        .byte $08, $7E   ; 

- D 1 - - - 0x03A376 0E:A366: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A377 0E:A367: CC 21     .word $21CC
- D 1 - - - 0x03A379 0E:A369: 08        .byte $08, $7C   ; 

- D 1 - - - 0x03A37B 0E:A36B: FE        .byte $FE   ; end token



sub_0x03A37C_обработать_рожи_в_турнирной_сетке:
; вход сюда может быть из
    ; con_0095_рожи_в_турнирной_сетке
    ; con_0095_tournament_окончен
    ; con_0095_tournament_финальный_экран
C - - - - - 0x03A37C 0E:A36C: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03A37E 0E:A36E: C9 0F     CMP #$0F
C - - - - - 0x03A380 0E:A370: B0 16     BCS bra_A388
; if con_0095_рожи_в_турнирной_сетке
C - - - - - 0x03A382 0E:A372: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03A384 0E:A374: 29 10     AND #con_btn_Start
C - - - - - 0x03A386 0E:A376: D0 0B     BNE bra_A383
C - - - - - 0x03A388 0E:A378: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x03A38A 0E:A37A: 29 03     AND #$03
C - - - - - 0x03A38C 0E:A37C: D0 0A     BNE bra_A388
C - - - - - 0x03A38E 0E:A37E: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03A391 0E:A381: D0 05     BNE bra_A388
bra_A383:
                                       ;LDA #con_0095_старт_vs_экрана
C - - - - - 0x03A393 0E:A383: E6 95     INC ram_0095_стадия_игры    ; 02 -> 03
C - - - - - 0x03A395 0E:A385: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
bra_A388:
C - - - - - 0x03A398 0E:A388: 18        CLC
C - - - - - 0x03A399 0E:A389: AD 54 01  LDA ram_0154
C - - - - - 0x03A39C 0E:A38C: 69 03     ADC #$03
C - - - - - 0x03A39E 0E:A38E: AA        TAX
C - - - - - 0x03A39F 0E:A38F: 85 00     STA ram_0000
bra_A391_loop:
C - - - - - 0x03A3A1 0E:A391: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x03A3A3 0E:A393: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x03A3A6 0E:A396: 4A        LSR
C - - - - - 0x03A3A7 0E:A397: BC 4C 01  LDY ram_tournament_fighter,X ; 014C 014D 014E 014F 0150 0151 0152 
C - - - - - 0x03A3AA 0E:A39A: A9 00     LDA #$00
C - - - - - 0x03A3AC 0E:A39C: 79 12 A4  ADC tbl_A412_анимация,Y
C - - - - - 0x03A3AF 0E:A39F: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 0402 0403 0404 0405 0406 
C - - - - - 0x03A3B2 0E:A3A2: BD 20 A4  LDA tbl_A420_pos_Y,X
C - - - - - 0x03A3B5 0E:A3A5: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 0412 0413 0414 0415 0416 
C - - - - - 0x03A3B8 0E:A3A8: BD 19 A4  LDA tbl_A419_pos_X,X
C - - - - - 0x03A3BB 0E:A3AB: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 0442 0443 0444 0445 0446 
C - - - - - 0x03A3BE 0E:A3AE: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 0159 015A 015B 
C - - - - - 0x03A3C1 0E:A3B1: 29 03     AND #$03
C - - - - - 0x03A3C3 0E:A3B3: 09 80     ORA #$80
C - - - - - 0x03A3C5 0E:A3B5: 9D 00 05  STA ram_obj_0500,X ; 0500 0501 0502 0503 0504 0505 0506 
C - - - - - 0x03A3C8 0E:A3B8: CA        DEX
C - - - - - 0x03A3C9 0E:A3B9: 10 D6     BPL bra_A391_loop
C - - - - - 0x03A3CB 0E:A3BB: A6 00     LDX ram_0000
bra_A3BD_loop:
C - - - - - 0x03A3CD 0E:A3BD: E0 03     CPX #$03
C - - - - - 0x03A3CF 0E:A3BF: F0 0E     BEQ bra_A3CF
C - - - - - 0x03A3D1 0E:A3C1: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0159 015A 015B 
C - - - - - 0x03A3D4 0E:A3C4: 29 03     AND #$03
C - - - - - 0x03A3D6 0E:A3C6: A8        TAY
C - - - - - 0x03A3D7 0E:A3C7: A9 00     LDA #$00
C - - - - - 0x03A3D9 0E:A3C9: 99 00 04  STA ram_obj_anim_id,Y ; 0400 0401 0402 0403 
C - - - - - 0x03A3DC 0E:A3CC: CA        DEX
C - - - - - 0x03A3DD 0E:A3CD: D0 EE     BNE bra_A3BD_loop
bra_A3CF:
C - - - - - 0x03A3DF 0E:A3CF: AC 54 01  LDY ram_0154
C - - - - - 0x03A3E2 0E:A3D2: F0 31     BEQ bra_A405_RTS
C - - - - - 0x03A3E4 0E:A3D4: C0 03     CPY #$03
C - - - - - 0x03A3E6 0E:A3D6: B0 0F     BCS bra_A3E7
bra_A3D8_loop:
C - - - - - 0x03A3E8 0E:A3D8: B9 58 01  LDA ram_tournament_индекс_игрока + $03,Y ; 0159 015A 
C - - - - - 0x03A3EB 0E:A3DB: 49 01     EOR #$01
C - - - - - 0x03A3ED 0E:A3DD: 29 0F     AND #$0F
C - - - - - 0x03A3EF 0E:A3DF: AA        TAX
C - - - - - 0x03A3F0 0E:A3E0: 20 06 A4  JSR sub_A406
C - - - - - 0x03A3F3 0E:A3E3: 88        DEY
C - - - - - 0x03A3F4 0E:A3E4: D0 F2     BNE bra_A3D8_loop
C - - - - - 0x03A3F6 0E:A3E6: 60        RTS
bra_A3E7:
C - - - - - 0x03A3F7 0E:A3E7: A2 05     LDX #$05
bra_A3E9_loop:
C - - - - - 0x03A3F9 0E:A3E9: 38        SEC
C - - - - - 0x03A3FA 0E:A3EA: AD 5B 01  LDA ram_tournament_индекс_игрока + $06
C - - - - - 0x03A3FD 0E:A3ED: FD 55 01  SBC ram_tournament_индекс_игрока,X ; 0155 0156 0157 0158 0159 015A 
C - - - - - 0x03A400 0E:A3F0: D0 03     BNE bra_A3F5
C - - - - - 0x03A402 0E:A3F2: 9D 00 04  STA ram_obj_anim_id,X ; 0401 0403 0404 0405 
bra_A3F5:
C - - - - - 0x03A405 0E:A3F5: CA        DEX
C - - - - - 0x03A406 0E:A3F6: 10 F1     BPL bra_A3E9_loop
C - - - - - 0x03A408 0E:A3F8: A2 05     LDX #$05
bra_A3FA_loop:
C - - - - - 0x03A40A 0E:A3FA: BD 00 04  LDA ram_obj_anim_id,X ; 0400 0401 0402 0403 0404 0405 
C - - - - - 0x03A40D 0E:A3FD: F0 03     BEQ bra_A402
C - - - - - 0x03A40F 0E:A3FF: 20 06 A4  JSR sub_A406
bra_A402:
C - - - - - 0x03A412 0E:A402: CA        DEX
C - - - - - 0x03A413 0E:A403: 10 F5     BPL bra_A3FA_loop
bra_A405_RTS:
C - - - - - 0x03A415 0E:A405: 60        RTS



sub_A406:
C - - - - - 0x03A416 0E:A406: BD 00 04  LDA ram_obj_anim_id,X ; 0400 0401 0402 0403 0404 0405 
C - - - - - 0x03A419 0E:A409: 4A        LSR
C - - - - - 0x03A41A 0E:A40A: 90 05     BCC bra_A411_RTS
C - - - - - 0x03A41C 0E:A40C: A9 4C     LDA #$4C
C - - - - - 0x03A41E 0E:A40E: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 0402 0403 0404 0405 
bra_A411_RTS:
C - - - - - 0x03A421 0E:A411: 60        RTS



tbl_A412_анимация:
- D 1 - - - 0x03A422 0E:A412: 44        .byte $44   ; 00
- D 1 - - - 0x03A423 0E:A413: 44        .byte $44   ; 01
- D 1 - - - 0x03A424 0E:A414: 44        .byte $44   ; 02
- D 1 - - - 0x03A425 0E:A415: 44        .byte $44   ; 03
- D 1 - - - 0x03A426 0E:A416: 46        .byte $46   ; 04
- D 1 - - - 0x03A427 0E:A417: 48        .byte $48   ; 05
- D 1 - - - 0x03A428 0E:A418: 4A        .byte $4A   ; 06

tbl_A419_pos_X:
- D 1 - - - 0x03A429 0E:A419: 20        .byte $20   ; 00
- D 1 - - - 0x03A42A 0E:A41A: 60        .byte $60   ; 01
- D 1 - - - 0x03A42B 0E:A41B: A8        .byte $A8   ; 02
- D 1 - - - 0x03A42C 0E:A41C: E8        .byte $E8   ; 03
- D 1 - - - 0x03A42D 0E:A41D: 4C        .byte $4C   ; 04
- D 1 - - - 0x03A42E 0E:A41E: BC        .byte $BC   ; 05
- D 1 - - - 0x03A42F 0E:A41F: 84        .byte $84   ; 06

tbl_A420_pos_Y:
- D 1 - - - 0x03A430 0E:A420: A0        .byte $A0   ; 00
- D 1 - - - 0x03A431 0E:A421: A0        .byte $A0   ; 01
- D 1 - - - 0x03A432 0E:A422: A0        .byte $A0   ; 02
- D 1 - - - 0x03A433 0E:A423: A0        .byte $A0   ; 03
- D 1 - - - 0x03A434 0E:A424: 70        .byte $70   ; 04
- D 1 - - - 0x03A435 0E:A425: 70        .byte $70   ; 05
- D 1 - - - 0x03A436 0E:A426: 58        .byte $58   ; 06



sub_0x03A437_подготовка_экрана_rematch:
C - - - - - 0x03A437 0E:A427: A5 96     LDA ram_0096
C - - - - - 0x03A439 0E:A429: D0 24     BNE bra_A44F
C - - - - - 0x03A43B 0E:A42B: 20 C1 F7  JSR sub_9F2B_сохранить_topscore
C - - - - - 0x03A43E 0E:A42E: 20 3C F0  JSR sub_0x03F04C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03A441 0E:A431: A9 0F     LDA #con_0048_0F
C - - - - - 0x03A443 0E:A433: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x03A446 0E:A436: E6 96     INC ram_0096
C - - - - - 0x03A448 0E:A438: A0 00     LDY #$00
bra_A43A_loop:
C - - - - - 0x03A44A 0E:A43A: B9 1A A5  LDA tbl_A51A,Y
C - - - - - 0x03A44D 0E:A43D: F0 06     BEQ bra_A445_00
C - - - - - 0x03A44F 0E:A43F: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03A452 0E:A442: C8        INY
C - - - - - 0x03A453 0E:A443: D0 F5     BNE bra_A43A_loop
bra_A445_00:
C - - - - - 0x03A455 0E:A445: A9 19     LDA #con_print_rematch
C - - - - - 0x03A457 0E:A447: 20 E5 F6  JSR sub_0x03F6F5_написать_текст_на_экране
C - - - - - 0x03A45A 0E:A44A: A9 1A     LDA #con_print_end
C - - - - - 0x03A45C 0E:A44C: 4C E5 F6  JMP loc_0x03F6F5_написать_текст_на_экране
bra_A44F:
C - - - - - 0x03A45F 0E:A44F: A9 00     LDA #$00
C - - - - - 0x03A461 0E:A451: 85 96     STA ram_0096
                                       ;LDA #con_0095_экран_rematch_end
C - - - - - 0x03A463 0E:A453: E6 95     INC ram_0095_стадия_игры    ; 11 -> 12
C - - - - - 0x03A465 0E:A455: A9 00     LDA #$00
C - - - - - 0x03A467 0E:A457: 8D 30 06  STA ram_0630
C - - - - - 0x03A46A 0E:A45A: A9 03     LDA #$03
C - - - - - 0x03A46C 0E:A45C: 20 D3 F7  JSR sub_0x03F7E3_отрисовать_портреты
C - - - - - 0x03A46F 0E:A45F: A2 06     LDX #$06    ; tip_индекс_буфера_палитры + $06
C - - - - - 0x03A471 0E:A461: A9 64     LDA #con_AF40_pal + $64
C - - - - - 0x03A473 0E:A463: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x03A476 0E:A466: AD 3F 06  LDA ram_063F
C - - - - - 0x03A479 0E:A469: 30 06     BMI bra_A471
C - - - - - 0x03A47B 0E:A46B: 49 01     EOR #$01
C - - - - - 0x03A47D 0E:A46D: AA        TAX
C - - - - - 0x03A47E 0E:A46E: FE 00 04  INC ram_obj_anim_id,X ; 0401 
bra_A471:
C - - - - - 0x03A481 0E:A471: A2 01     LDX #$01
bra_A473_loop:
C - - - - - 0x03A483 0E:A473: A9 00     LDA #$00
C - - - - - 0x03A485 0E:A475: 9D 30 04  STA ram_obj_pos_X_hi,X ; 0430 0431 
C - - - - - 0x03A488 0E:A478: BD 98 A5  LDA tbl_A598,X
C - - - - - 0x03A48B 0E:A47B: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03A48E 0E:A47E: BD 9A A5  LDA tbl_A59A,X
C - - - - - 0x03A491 0E:A481: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x03A494 0E:A484: CA        DEX
C - - - - - 0x03A495 0E:A485: 10 EC     BPL bra_A473_loop
C - - - - - 0x03A497 0E:A487: A9 43     LDA #con_music_rematch
C - - - - - 0x03A499 0E:A489: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x03A49C 0E:A48C: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



sub_0x03A49F_обработка_экрана_rematch:
C - - - - - 0x03A49F 0E:A48F: A4 96     LDY ram_0096
C - - - - - 0x03A4A1 0E:A491: D0 3E     BNE bra_A4D1
C - - - - - 0x03A4A3 0E:A493: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03A4A5 0E:A495: 29 2C     AND #con_btn_Select + con_btns_UD
C - - - - - 0x03A4A7 0E:A497: F0 0D     BEQ bra_A4A6
C - - - - - 0x03A4A9 0E:A499: AD 30 06  LDA ram_0630
C - - - - - 0x03A4AC 0E:A49C: 49 01     EOR #$01
C - - - - - 0x03A4AE 0E:A49E: 8D 30 06  STA ram_0630
C - - - - - 0x03A4B1 0E:A4A1: A9 25     LDA #con_0x03F6AD_25
C - - - - - 0x03A4B3 0E:A4A3: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_A4A6:
C - - - - - 0x03A4B6 0E:A4A6: AC 30 06  LDY ram_0630
C - - - - - 0x03A4B9 0E:A4A9: B9 18 A5  LDA tbl_A518,Y
C - - - - - 0x03A4BC 0E:A4AC: 8D 12 04  STA ram_obj_pos_Y_lo + $02
C - - - - - 0x03A4BF 0E:A4AF: A9 58     LDA #$58
C - - - - - 0x03A4C1 0E:A4B1: 8D 42 04  STA ram_obj_pos_X_lo + $02
C - - - - - 0x03A4C4 0E:A4B4: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x03A4C6 0E:A4B6: 29 0C     AND #$0C
C - - - - - 0x03A4C8 0E:A4B8: 4A        LSR
C - - - - - 0x03A4C9 0E:A4B9: 4A        LSR
C - - - - - 0x03A4CA 0E:A4BA: 69 55     ADC #$55
C - - - - - 0x03A4CC 0E:A4BC: 8D 02 04  STA ram_obj_anim_id + $02
C - - - - - 0x03A4CF 0E:A4BF: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03A4D1 0E:A4C1: 29 10     AND #con_btn_Start
C - - - - - 0x03A4D3 0E:A4C3: F0 52     BEQ bra_A517_RTS
C - - - - - 0x03A4D5 0E:A4C5: E6 96     INC ram_0096
C - - - - - 0x03A4D7 0E:A4C7: A9 50     LDA #$50
C - - - - - 0x03A4D9 0E:A4C9: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03A4DC 0E:A4CC: A9 29     LDA #con_0x03F6AD_29
C - - - - - 0x03A4DE 0E:A4CE: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_A4D1:
C - - - - - 0x03A4E1 0E:A4D1: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03A4E4 0E:A4D4: F0 10     BEQ bra_A4E6
C - - - - - 0x03A4E6 0E:A4D6: AD 60 05  LDA ram_obj_timer
C - - - - - 0x03A4E9 0E:A4D9: 29 08     AND #$08
C - - - - - 0x03A4EB 0E:A4DB: 20 02 D2  JSR sub_0x03D212_ASLx4
C - - - - - 0x03A4EE 0E:A4DE: 09 19     ORA #$19
C - - - - - 0x03A4F0 0E:A4E0: 6D 30 06  ADC ram_0630
; con_print_rematch
; возможен индекс +80
C - - - - - 0x03A4F3 0E:A4E3: 4C E5 F6  JMP loc_0x03F6F5_написать_текст_на_экране
bra_A4E6:
C - - - - - 0x03A4F6 0E:A4E6: A0 02     LDY #$02
C - - - - - 0x03A4F8 0E:A4E8: AD 30 06  LDA ram_0630
C - - - - - 0x03A4FB 0E:A4EB: F0 1C     BEQ bra_A509
C - - - - - 0x03A4FD 0E:A4ED: A5 9F     LDA ram_009F
C - - - - - 0x03A4FF 0E:A4EF: 85 9E     STA ram_номер_боя_story
C - - - - - 0x03A501 0E:A4F1: A5 27     LDA ram_0027
C - - - - - 0x03A503 0E:A4F3: C5 2C     CMP ram_game_mode
C - - - - - 0x03A505 0E:A4F5: F0 1A     BEQ bra_A511
- - - - - - 0x03A507 0E:A4F7: 85 2C     STA ram_game_mode
- - - - - - 0x03A509 0E:A4F9: AD 0F 01  LDA ram_010F
- - - - - - 0x03A50C 0E:A4FC: 29 F0     AND #$F0
- - - - - - 0x03A50E 0E:A4FE: 20 19 A6  JSR sub_A619
                                        LDA #$00
                                        STA ram_strength
- - - - - - 0x03A511 0E:A501: 85 A1     STA ram_strength + $01
- - - - - - 0x03A513 0E:A503: 88        DEY ; 01
- - - - - - 0x03A514 0E:A504: 84 94     STY ram_0094_скрипт
- - - - - - 0x03A516 0E:A506: 4C 0E A5  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
bra_A509:
C - - - - - 0x03A519 0E:A509: 84 94     STY ram_0094_скрипт
C - - - - - 0x03A51B 0E:A50B: 20 09 DE  JSR sub_0x03DE19_очистить_очки_обоих_игроков
C - - - - - 0x03A51E 0E:A50E: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
bra_A511:
C - - - - - 0x03A521 0E:A511: 20 09 DE  JSR sub_0x03DE19_очистить_очки_обоих_игроков
C - - - - - 0x03A524 0E:A514: 4C 58 FE  JMP loc_0x03FE68_отрисовка_экрана_главное_меню
bra_A517_RTS:
C - - - - - 0x03A527 0E:A517: 60        RTS



tbl_A518:
- D 1 - - - 0x03A528 0E:A518: C3        .byte $C3   ; 00
- D 1 - - - 0x03A529 0E:A519: D3        .byte $D3   ; 01



tbl_A51A:
- D 1 - - - 0x03A52A 0E:A51A: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A52B 0E:A51B: C0 23     .word $23C0
- D 1 - - - 0x03A52D 0E:A51D: 09        .byte $09, $FF   ; 

- D 1 - - - 0x03A52F 0E:A51F: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A530 0E:A520: CB 23     .word $23CB
- D 1 - - - 0x03A532 0E:A522: 06        .byte $06, $FF   ; 

- D 1 - - - 0x03A534 0E:A524: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A535 0E:A525: D3 23     .word $23D3
- D 1 - - - 0x03A537 0E:A527: 0A        .byte $0A, $FF   ; 

- D 1 - - - 0x03A539 0E:A529: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A53A 0E:A52A: DD 23     .word $23DD
- D 1 - - - 0x03A53C 0E:A52C: 02        .byte $02, $5F   ; 

- D 1 - - - 0x03A53E 0E:A52E: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A53F 0E:A52F: DF 23     .word $23DF
- D 1 - - - 0x03A541 0E:A531: 06        .byte $06, $FF   ; 

- D 1 - - - 0x03A543 0E:A533: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A544 0E:A534: E5 23     .word $23E5
- D 1 - - - 0x03A546 0E:A536: 02        .byte $02, $55   ; 

- D 1 - - - 0x03A548 0E:A538: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A549 0E:A539: E7 23     .word $23E7
- D 1 - - - 0x03A54B 0E:A53B: 06        .byte $06, $FF   ; 

- D 1 - - - 0x03A54D 0E:A53D: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A54E 0E:A53E: ED 23     .word $23ED
- D 1 - - - 0x03A550 0E:A540: 02        .byte $02, $F5   ; 

- D 1 - - - 0x03A552 0E:A542: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A553 0E:A543: EF 23     .word $23EF
- D 1 - - - 0x03A555 0E:A545: 08        .byte $08, $FF   ; 

- D 1 - - - 0x03A557 0E:A547: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A558 0E:A548: 63 20     .word $2063
- D 1 - - - 0x03A55A 0E:A54A: 77        .byte $77, $FF   ; 

- D 1 - - - 0x03A55C 0E:A54C: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A55D 0E:A54D: 6C 20     .word $206C
- D 1 - - - 0x03A55F 0E:A54F: 78        .byte $78, $FF   ; 

- D 1 - - - 0x03A561 0E:A551: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A562 0E:A552: 83 21     .word $2183
- D 1 - - - 0x03A564 0E:A554: 79        .byte $79, $FF   ; 

- D 1 - - - 0x03A566 0E:A556: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A567 0E:A557: 8C 21     .word $218C
- D 1 - - - 0x03A569 0E:A559: 7A        .byte $7A, $FF   ; 

- D 1 - - - 0x03A56B 0E:A55B: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A56C 0E:A55C: 64 20     .word $2064
- D 1 - - - 0x03A56E 0E:A55E: 08        .byte $08, $7B   ; 

- D 1 - - - 0x03A570 0E:A560: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A571 0E:A561: 84 21     .word $2184
- D 1 - - - 0x03A573 0E:A563: 08        .byte $08, $7C   ; 

- D 1 - - - 0x03A575 0E:A565: 05        .byte con_buf_mode_05   ; 
- D 1 - - - 0x03A576 0E:A566: 83 20     .word $2083
- D 1 - - - 0x03A578 0E:A568: 08        .byte $08, $7D   ; 

- D 1 - - - 0x03A57A 0E:A56A: 05        .byte con_buf_mode_05   ; 
- D 1 - - - 0x03A57B 0E:A56B: 8C 20     .word $208C
- D 1 - - - 0x03A57D 0E:A56D: 08        .byte $08, $7E   ; 

- D 1 - - - 0x03A57F 0E:A56F: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A580 0E:A570: B3 21     .word $21B3
- D 1 - - - 0x03A582 0E:A572: 77        .byte $77, $FF   ; 

- D 1 - - - 0x03A584 0E:A574: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A585 0E:A575: BC 21     .word $21BC
- D 1 - - - 0x03A587 0E:A577: 78        .byte $78, $FF   ; 

- D 1 - - - 0x03A589 0E:A579: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A58A 0E:A57A: D3 22     .word $22D3
- D 1 - - - 0x03A58C 0E:A57C: 79        .byte $79, $FF   ; 

- D 1 - - - 0x03A58E 0E:A57E: 01        .byte con_buf_mode_01   ; 
- D 1 - - - 0x03A58F 0E:A57F: DC 22     .word $22DC
- D 1 - - - 0x03A591 0E:A581: 7A        .byte $7A, $FF   ; 

- D 1 - - - 0x03A593 0E:A583: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A594 0E:A584: B4 21     .word $21B4
- D 1 - - - 0x03A596 0E:A586: 08        .byte $08, $7B   ; 

- D 1 - - - 0x03A598 0E:A588: 03        .byte con_buf_mode_03   ; 
- D 1 - - - 0x03A599 0E:A589: D4 22     .word $22D4
- D 1 - - - 0x03A59B 0E:A58B: 08        .byte $08, $7C   ; 

- D 1 - - - 0x03A59D 0E:A58D: 05        .byte con_buf_mode_05   ; 
- D 1 - - - 0x03A59E 0E:A58E: D3 21     .word $21D3
- D 1 - - - 0x03A5A0 0E:A590: 08        .byte $08, $7D   ; 

- D 1 - - - 0x03A5A2 0E:A592: 05        .byte con_buf_mode_05   ; 
- D 1 - - - 0x03A5A3 0E:A593: DC 21     .word $21DC
- D 1 - - - 0x03A5A5 0E:A595: 08        .byte $08, $7E   ; 

- D 1 - - - 0x03A5A7 0E:A597: 00        .byte $00   ; end token



tbl_A598:
- D 1 - - - 0x03A5A8 0E:A598: 20        .byte $20   ; 00
- D 1 - - - 0x03A5A9 0E:A599: A0        .byte $A0   ; 01

tbl_A59A:
- D 1 - - - 0x03A5AA 0E:A59A: 1F        .byte $1F   ; 00
- D 1 - - - 0x03A5AB 0E:A59B: 6F        .byte $6F   ; 01



tbl_A5AA_challenge_expert_mode:
; CHALLENGE THE EXPERT
; MODE NEXT TIME!
; © KONAMI 1993
; ALL RIGHTS RESERVED
- - - - - - 0x03A5BA 0E:A5AA: 00        .byte $00, $00, $8D, $92, $8B, $96, $96, $8F, $98, $91, $8F, $00, $9E, $92, $8F, $00   ; 
- - - - - - 0x03A5CA 0E:A5BA: 8F        .byte $8F, $A2, $9A, $8F, $9C, $9E   ; 

- - - - - - 0x03A5D0 0E:A5C0: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x03A5D1 0E:A5C1: 00        .byte $00, $00, $97, $99, $8E, $8F, $00, $98, $8F, $A2, $9E, $00, $9E, $93, $97, $8F   ; 
- - - - - - 0x03A5E1 0E:A5D1: AC        .byte $AC   ; 

- - - - - - 0x03A5E2 0E:A5D2: BD        .byte con_9B6F_BD_новая_строка   ; 
- - - - - - 0x03A5E3 0E:A5D3: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x03A5E4 0E:A5D4: 00        .byte $00, $00, $00, $00, $00, $A6, $00, $95, $99, $98, $8B, $97, $93, $00, $82, $8A   ; 
- - - - - - 0x03A5F4 0E:A5E4: 8A        .byte $8A, $84   ; 

- - - - - - 0x03A5F6 0E:A5E6: BD        .byte con_9B6F_BD_новая_строка   ; 
- - - - - - 0x03A5F7 0E:A5E7: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x03A5F8 0E:A5E8: 00        .byte $00, $00, $8B, $96, $96, $00, $9C, $93, $91, $92, $9E, $9D, $00, $9C, $8F, $9D   ; 
- - - - - - 0x03A608 0E:A5F8: 8F        .byte $8F, $9C, $A0, $8F, $8E, $A7   ; 

- - - - - - 0x03A60E 0E:A5FE: BB        .byte con_9B6F_BB_задержка, $F0   ; 
- - - - - - 0x03A610 0E:A600: FF        .byte con_9B6F_FF_закончить   ; 



sub_A601_попытка_подготовить_надпись_с_предложением_пройти_expert:
C - - - - - 0x03A611 0E:A601: EE 31 06  INC ram_0631
C - - - - - 0x03A614 0E:A604: C0 0E     CPY #$0E
C - - - - - 0x03A616 0E:A606: D0 10     BNE bra_A618_RTS
C - - - - - 0x03A618 0E:A608: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x03A61B 0E:A60B: 4A        LSR
C - - - - - 0x03A61C 0E:A60C: F0 0A     BEQ bra_A618_RTS
- - - - - - 0x03A61E 0E:A60E: A9 AA     LDA #< tbl_A5AA_challenge_expert_mode
- - - - - - 0x03A620 0E:A610: 8D 33 06  STA ram_0633
- - - - - - 0x03A623 0E:A613: A9 A5     LDA #> tbl_A5AA_challenge_expert_mode
- - - - - - 0x03A625 0E:A615: 8D 34 06  STA ram_0634
bra_A618_RTS:
C - - - - - 0x03A628 0E:A618: 60        RTS



sub_A619:
- - - - - - 0x03A629 0E:A619: 20 07 D2  JSR sub_0x03D217_LSRx4
- - - - - - 0x03A62C 0E:A61C: 85 AE     STA ram_p1_score
- - - - - - 0x03A62E 0E:A61E: AD 0F 01  LDA ram_010F
- - - - - - 0x03A631 0E:A621: 29 0F     AND #$0F
- - - - - - 0x03A633 0E:A623: 85 AF     STA ram_p1_score + $01
- - - - - - 0x03A635 0E:A625: AD 10 01  LDA ram_0110
- - - - - - 0x03A638 0E:A628: 29 F0     AND #$F0
- - - - - - 0x03A63A 0E:A62A: 20 07 D2  JSR sub_0x03D217_LSRx4
- - - - - - 0x03A63D 0E:A62D: 85 B0     STA ram_p1_score + $02
- - - - - - 0x03A63F 0E:A62F: AD 10 01  LDA ram_0110
- - - - - - 0x03A642 0E:A632: 29 0F     AND #$0F
- - - - - - 0x03A644 0E:A634: 85 B1     STA ram_p1_score + $03
- - - - - - 0x03A64A 0E:A63A: 60        RTS



sub_A740:
C - - - - - 0x03A750 0E:A740: AC 28 01  LDY ram_option_health
C - - - - - 0x03A753 0E:A743: F0 07     BEQ bra_A74C
C - - - - - 0x03A755 0E:A745: BD 0D 01  LDA ram_plr_hp_hi,X
C - - - - - 0x03A758 0E:A748: D9 91 EF  CMP tbl_0x03EFA1,Y
C - - - - - 0x03A75B 0E:A74B: 60        RTS
bra_A74C:
C - - - - - 0x03A75C 0E:A74C: BD 90 05  LDA ram_obj_0590,X ; 0590 0591 
C - - - - - 0x03A75F 0E:A74F: C9 B0     CMP #$B0
C - - - - - 0x03A761 0E:A751: 60        RTS



sub_A752_уменьшить_здоровье:
C - - - - - 0x03A762 0E:A752: 38        SEC
C - - - - - 0x03A763 0E:A753: F9 FD BF  SBC tbl_BFFD,Y
C - - - - - 0x03A766 0E:A756: 90 04     BCC bra_A75C
C - - - - - 0x03A768 0E:A758: 9D 0D 01  STA ram_plr_hp_hi,X
C - - - - - 0x03A76B 0E:A75B: 60        RTS
bra_A75C:
C - - - - - 0x03A76C 0E:A75C: BD 90 05  LDA ram_obj_0590,X ; 0590 
C - - - - - 0x03A76F 0E:A75F: 38        SEC
C - - - - - 0x03A770 0E:A760: F9 FD BF  SBC tbl_BFFD,Y
C - - - - - 0x03A773 0E:A763: 9D 90 05  STA ram_obj_0590,X ; 0590 
C - - - - - 0x03A776 0E:A766: 60        RTS



tbl_A790:
- D 1 - - - 0x03A7A0 0E:A790: 25 9C     .word _off018_9C25_00_manhattan
- D 1 - - - 0x03A7A2 0E:A792: 43 9C     .word _off018_9C43_01_strange_letter
- D 1 - - - 0x03A7A4 0E:A794: 70 9C     .word _off018_9C70_02_offer_challenge
- D 1 - - - 0x03A7A6 0E:A796: 31 9D     .word _off018_9D31_03_lousy_tricks
- D 1 - - - 0x03A7A8 0E:A798: F6 9D     .word _off018_9DF6_04_celebrate
- D 1 - - - 0x03A7AA 0E:A79A: 3E 9E     .word _off018_9E3E_05_taste_defeat
- - - - - - 0x03A7AC 0E:A79C: 93 9E     .word _off018_9E93_06_expected_tougher
- D 1 - - - 0x03A7AE 0E:A79E: D6 9E     .word _off018_9ED6_07_try_hard_mode
- - - - - - 0x03A7B0 0E:A7A0: 60 A8     .word _off018_A860_08_true_power



_off018_A860_08_true_power:
; "I JUST PLAYED WITH YOU
; BEFORE. NOW YOU WILL SEE
; MY TRUE POWER!"
- - - - - - 0x03A870 0E:A860: AA        .byte $AA, $93, $00, $94, $9F, $9D, $9E, $00, $9A, $96, $8B, $A3, $8F, $8E, $00, $A1   ; 
- - - - - - 0x03A880 0E:A870: 93        .byte $93, $9E, $92, $00, $A3, $99, $9F, $00   ; 

- - - - - - 0x03A888 0E:A878: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x03A889 0E:A879: 8C        .byte $8C, $8F, $90, $99, $9C, $8F, $A7, $00, $98, $99, $A1, $00, $A3, $99, $9F, $00   ; 
- - - - - - 0x03A899 0E:A889: A1        .byte $A1, $93, $96, $96, $00, $9D, $8F, $8F   ; 

- - - - - - 0x03A8A1 0E:A891: BD        .byte con_9B6F_BD_новая_строка   ; 

- - - - - - 0x03A8A2 0E:A892: 97        .byte $97, $A3, $00, $9E, $9C, $9F, $8F, $00, $9A, $99, $A1, $8F, $9C, $AC, $AB   ; 

- - - - - - 0x03A8B1 0E:A8A1: BB        .byte con_9B6F_BB_задержка, $40   ; 
- - - - - - 0x03A8B3 0E:A8A3: BF        .byte con_9B6F_BF_сменить_музыку   ; 
- - - - - - 0x03A8B4 0E:A8A4: BB        .byte con_9B6F_BB_задержка, $60   ; 
- - - - - - 0x03A8B6 0E:A8A6: FF        .byte con_9B6F_FF_закончить   ; 



ofs_014_A900_02:
C - - J - - 0x03A910 0E:A900: AD 60 05  LDA ram_obj_timer
C - - - - - 0x03A913 0E:A903: F0 03     BEQ bra_A908
bra_A905:
C - - - - - 0x03A915 0E:A905: 4C 89 86  JMP loc_8689
bra_A908:
C - - - - - 0x03A918 0E:A908: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_team
C - - - - - 0x03A91A 0E:A90A: 49 03     EOR #$03
C - - - - - 0x03A91C 0E:A90C: D0 F7     BNE bra_A905    ; if con_gm_story
; con_gm_vs_team
C - - - - - 0x03A91E 0E:A90E: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03A920 0E:A910: 29 10     AND #con_btn_Start
C - - - - - 0x03A922 0E:A912: F0 03     BEQ bra_A917_RTS
C - - - - - 0x03A924 0E:A914: 4C 58 FE  JMP loc_0x03FE68_отрисовка_экрана_главное_меню
bra_A917_RTS:
C - - - - - 0x03A927 0E:A917: 60        RTS



loc_B000_попытка_toggle_technodrome:
C D 1 - - - 0x03B010 0E:B000: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03B012 0E:B002: 29 20     AND #con_btn_Select
C - - - - - 0x03B014 0E:B004: F0 0D     BEQ bra_B013
C - - - - - 0x03B016 0E:B006: AD 50 01  LDA ram_номер_боя_vs_team_и_переключатель
C - - - - - 0x03B019 0E:B009: 49 04     EOR #$04
C - - - - - 0x03B01B 0E:B00B: 8D 50 01  STA ram_номер_боя_vs_team_и_переключатель
C - - - - - 0x03B01E 0E:B00E: A9 27     LDA #con_0x03F6AD_27
C - - - - - 0x03B020 0E:B010: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_B013:
C - - - - - 0x03B023 0E:B013: 4C B6 89  JMP loc_89B6



loc_BF00:
; Y = ram_plr_id
C D 1 - - - 0x03BF10 0E:BF00: 20 33 BF  JSR sub_BF33
C - - - - - 0x03BF13 0E:BF03: D0 03     BNE bra_BF08
C - - - - - 0x03BF15 0E:BF05: 20 23 BF  JSR sub_BF23
bra_BF08:
C - - - - - 0x03BF18 0E:BF08: 4C 5C A1  JMP loc_A15C



sub_BF0B_конвертация_индекса:
; Y = ram_plr_id,X
C - - - - - 0x03BF1B 0E:BF0B: 20 33 BF  JSR sub_BF33
C - - - - - 0x03BF1E 0E:BF0E: D0 03     BNE bra_BF13
C - - - - - 0x03BF20 0E:BF10: 20 23 BF  JSR sub_BF23
bra_BF13:
C - - - - - 0x03BF23 0E:BF13: B9 17 A3  LDA tbl_A317_индекс,Y
C - - - - - 0x03BF26 0E:BF16: 60        RTS



sub_BF17:
C - - - - - 0x03BF27 0E:BF17: 20 33 BF  JSR sub_BF33
C - - - - - 0x03BF2A 0E:BF1A: D0 03     BNE bra_BF1F
C - - - - - 0x03BF2C 0E:BF1C: 4C 23 BF  JMP loc_BF23
bra_BF1F:
C - - - - - 0x03BF2F 0E:BF1F: B9 3C A3  LDA tbl_A33C,Y
C - - - - - 0x03BF32 0E:BF22: 60        RTS



sub_BF23:
loc_BF23:
C D 1 - - - 0x03BF33 0E:BF23: 85 04     STA ram_0004
C - - - - - 0x03BF35 0E:BF25: AC 71 06  LDY ram_0671
C - - - - - 0x03BF38 0E:BF28: B9 A2 00  LDA ram_plr_id,Y ; 00A2 
C - - - - - 0x03BF3B 0E:BF2B: A8        TAY
C - - - - - 0x03BF3C 0E:BF2C: B9 3C A3  LDA tbl_A33C,Y
C - - - - - 0x03BF3F 0E:BF2F: 38        SEC
C - - - - - 0x03BF40 0E:BF30: E9 01     SBC #$01
C - - - - - 0x03BF42 0E:BF32: 60        RTS



sub_BF33:
C - - - - - 0x03BF43 0E:BF33: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03BF45 0E:BF35: 49 03     EOR #$03
C - - - - - 0x03BF47 0E:BF37: D0 04     BNE bra_BF3D_RTS    ; if con_gm_vs_team
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_tournament
C - - - - - 0x03BF49 0E:BF39: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03BF4B 0E:BF3B: 49 0E     EOR #con_0095_экран_gameover_continue
bra_BF3D_RTS:
C - - - - - 0x03BF4D 0E:BF3D: 60        RTS



tbl_BFF1_конвертация_в_индекс_уровня:
- D 1 - - - 0x03C001 0E:BFF1: 06        .byte $06   ; 00 water front
- - - - - - 0x03C002 0E:BFF2: 05        .byte $05   ; 01 pirate ship
- - - - - - 0x03C003 0E:BFF3: 00        .byte $00   ; 02 sewer
- - - - - - 0x03C004 0E:BFF4: 01        .byte $01   ; 03 down town
- - - - - - 0x03C005 0E:BFF5: 06        .byte $06   ; 04 water front
- D 1 - - - 0x03C006 0E:BFF6: 07        .byte $07   ; 05 technodrome
- - - - - - 0x03C007 0E:BFF7: 00        .byte $00   ; 06 sewer
- - - - - - 0x03C008 0E:BFF8: 01        .byte $01   ; 07 down town



tbl_BFFD:
- D 1 - - - 0x03C00D 0E:BFFD: 02        .byte $02   ; 00 100%
- D 1 - - - 0x03C00E 0E:BFFE: 03        .byte $03   ; 01 150%
- - - - - - 0x03C00F 0E:BFFF: 04        .byte $04   ; 02 200%



.out .sprintf("Free bytes in bank 1C: %d [%Xh]", ($C000 - *), ($C000 - *))
