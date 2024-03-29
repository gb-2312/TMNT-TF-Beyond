.segment "BANK_12"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x024010-0x02800F
.org $8000



.export sub_0x024BC6_уменьшить_на_25_процентов_если_turbo
.export sub_0x024014
.export ofs_0x024635
.export sub_0x024AF7_выбор_начальной_анимации_персу
.export sub_0x02624F
.export sub_0x0269A1
.export tbl_0x026D5C_хитбокс
.export sub_0x026DA1
.export sub_0x027006_отрисовать_инфу_в_статусбаре
.export loc_0x027026_отрисовать_1p_2p_в_статусбаре_и_очки
.export loc_0x027033_отрисовать_очки_в_статусбаре
.export loc_0x02706E_ничего_не_рисовать_в_статусбаре
.export sub_0x0270C3_добавить_очки_игроку
.export sub_0x027152
.export ofs_0x0278CB_суперка_casey_песок_финальная_стадия
.export sub_0x027AF8
.export sub_0x027B61
.export sub_0x027BC7
.export sub_0x02438E_анимация_стойки



- D 0 - - - 0x024010 09:8000: 02        .byte con_bank_id + $12   ; 



sub_8BB6_уменьшить_на_25_процентов_если_turbo:
sub_0x024BC6_уменьшить_на_25_процентов_если_turbo:
C - - - - - 0x024BC6 09:8BB6: AC 26 01  LDY ram_option_speed
C - - - - - 0x024BC9 09:8BB9: F0 09     BEQ bra_8BC4_RTS
; if turbo
C - - - - - 0x024BCB 09:8BBB: 85 18     STA ram_0018
C - - - - - 0x024BCD 09:8BBD: 46 18     LSR ram_0018
C - - - - - 0x024BCF 09:8BBF: 46 18     LSR ram_0018
C - - - - - 0x024BD1 09:8BC1: 38        SEC
C - - - - - 0x024BD2 09:8BC2: E5 18     SBC ram_0018
bra_8BC4_RTS:
C - - - - - 0x024BD4 09:8BC4: 60        RTS



loc_B142:
sub_B142:
sub_0x027152:
; (!) код должен находиться в 8000-9FFF
; по номеру спрайта из ram_obj_anim_id загружаются наборы из 64 тайлов в PPU для каждого перса
                                       ;LDA #$07
                                       ;STA $8000
                                        LDA #con_prg_bank + $0C
                                        STA $8001
                                        JSR sub_0x027153_палитра
                                       ;LDA #$07
                                       ;STA $8000
                                        LDA #con_prg_bank + $13
                                        STA $8001
                                        RTS



sub_0x024014:
C - - - - - 0x024014 09:8004: 20 3B FF  JSR sub_0x03FF4B_вычисление_приоритета_игрока_в_бою
sub_8008:
loc_8008_loop:
C D 0 - - - 0x024018 09:8008: A6 AD     LDX ram_00AD
C - - - - - 0x02401A 09:800A: 86 A8     STX ram_local_obj_index
C - - - - - 0x02401C 09:800C: 8A        TXA
C - - - - - 0x02401D 09:800D: 49 01     EOR #$01
C - - - - - 0x02401F 09:800F: 85 A9     STA ram_global_obj_index
C - - - - - 0x024021 09:8011: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024023 09:8013: 29 03     AND #con_btns_LR
C - - - - - 0x024025 09:8015: A8        TAY
C - - - - - 0x024026 09:8016: B9 B0 99  LDA tbl_99B0,Y
C - - - - - 0x024029 09:8019: 9D 1C 06  STA ram_061C_plr,X ; 061C 061D 
C - - - - - 0x02402C 09:801C: 20 D9 99  JSR sub_99D9_проверить_кнопки_для_суперки_и_запуска_мяча
C - - - - - 0x02402F 09:801F: 20 96 BA  JSR sub_BA96
C - - - - - 0x024032 09:8022: BD 2A 06  LDA ram_062A_plr,X ; 062A 062B 
C - - - - - 0x024035 09:8025: F0 0A     BEQ bra_8031
C - - - - - 0x024037 09:8027: DE 2A 06  DEC ram_062A_plr,X ; 062A 062B 
C - - - - - 0x02403A 09:802A: D0 05     BNE bra_8031
C - - - - - 0x02403C 09:802C: A9 00     LDA #$00
C - - - - - 0x02403E 09:802E: 9D 2C 06  STA ram_062C_plr,X ; 062C 062D 
bra_8031:
C - - - - - 0x024041 09:8031: BD 45 06  LDA ram_plr_damage,X ; 0645 0646 
C - - - - - 0x024044 09:8034: F0 0B     BEQ bra_8041
C - - - - - 0x024046 09:8036: DE 45 06  DEC ram_plr_damage,X ; 0645 0646 
C - - - - - 0x024049 09:8039: BD 90 05  LDA ram_plr_hp_lo,X ; 0590 0591 
C - - - - - 0x02404C 09:803C: F0 03     BEQ bra_8041
C - - - - - 0x02404E 09:803E: 20 66 FE  JSR sub_0x03FE76
bra_8041:
C - - - - - 0x024051 09:8041: BD F0 05  LDA ram_05F0_obj,X ; 05F0 05F1 
C - - - - - 0x024054 09:8044: F0 03     BEQ bra_8049
C - - - - - 0x024056 09:8046: DE F0 05  DEC ram_05F0_obj,X ; 05F0 05F1 
bra_8049:
C - - - - - 0x024059 09:8049: 20 6C 80  JSR sub_806C
; bzk bug? найти почему ссылается на 0538
C - - - - - 0x02405C 09:804C: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 052C 0538 
C - - - - - 0x02405F 09:804F: C9 03     CMP #$03
C - - - - - 0x024061 09:8051: D0 0E     BNE bra_8061
C - - - - - 0x024063 09:8053: BD C0 04  LDA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x024066 09:8056: C9 07     CMP #$07
C - - - - - 0x024068 09:8058: D0 07     BNE bra_8061
C - - - - - 0x02406A 09:805A: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x02406C 09:805C: 29 03     AND #$03
C - - - - - 0x02406E 09:805E: 4C 62 80  JMP loc_8062
bra_8061:
C - - - - - 0x024071 09:8061: 8A        TXA
loc_8062:
C D 0 - - - 0x024072 09:8062: 09 80     ORA #$80
; bzk bug? найти почему ссылается на 0518
C - - - - - 0x024074 09:8064: 9D 00 05  STA ram_0500_obj,X ; 0500 0501 050C 0518 
; перемещено из банка FF
C D 3 - - - 0x03FF38 0F:FF28: A5 9D     LDA ram_009D
C - - - - - 0x03FF3A 0F:FF2A: D0 08     BNE bra_FF34
C - - - - - 0x03FF3C 0F:FF2C: E6 AD     INC ram_00AD
C - - - - - 0x03FF3E 0F:FF2E: A5 AD     LDA ram_00AD
C - - - - - 0x03FF40 0F:FF30: 4A        LSR
C - - - - - 0x03FF41 0F:FF31: F0 05     BEQ bra_FF38
bra_FF33_RTS:
C - - - - - 0x03FF43 0F:FF33: 60        RTS
bra_FF34:
C - - - - - 0x03FF44 0F:FF34: C6 AD     DEC ram_00AD
C - - - - - 0x03FF46 0F:FF36: 30 FB     BMI bra_FF33_RTS
bra_FF38:
C - - - - - 0x03FF48 0F:FF38: 4C 08 80  JMP loc_8008_loop



sub_806C:
C - - - - - 0x03FE8A 0F:FE7A: BD 0D 01  LDA ram_plr_hp_hi,X ; 010D 010E 
C - - - - - 0x03FE8D 0F:FE7D: D0 03     BNE bra_FE82
C - - - - - 0x03FE8F 0F:FE7F: BD 90 05  LDA ram_plr_hp_lo,X ; 0590 0591 
bra_FE82:
C - - - - - 0x02407F 09:806F: DD 47 06  CMP ram_0647_plr,X ; 0647 0648 
C - - - - - 0x024082 09:8072: F0 0C     BEQ bra_8080
C - - - - - 0x024084 09:8074: 9D 47 06  STA ram_0647_plr,X ; 0647 0648 
C - - - - - 0x024087 09:8077: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x024089 09:8079: C9 10     CMP #$10
C - - - - - 0x02408B 09:807B: B0 03     BCS bra_8080
C - - - - - 0x02408D 09:807D: 20 3B EA  JSR sub_0x03EA4B
bra_8080:
C - - - - - 0x024090 09:8080: BD 30 05  LDA ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x024093 09:8083: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x024096 09:8086: 90 80     .word ofs_061_8090_00
- D 0 - I - 0x024098 09:8088: D0 80     .word ofs_061_80D0_01
- D 0 - I - 0x02409A 09:808A: 56 81     .word ofs_061_8156_02_fight
- D 0 - I - 0x02409C 09:808C: 82 81     .word ofs_061_8182_03_обработать_состояния_персов
- D 0 - I - 0x02409E 09:808E: 81 89     .word ofs_061_8981_04_труп



ofs_061_8090_00:
C - - J - - 0x0240A0 09:8090: BD 69 E4  LDA tbl_0x03E479_default_pos_X_перса,X
C - - - - - 0x0240A3 09:8093: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x0240A6 09:8096: A9 B0     LDA #con_координата_пола
C - - - - - 0x0240A8 09:8098: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
; 00 -> 01
C - - - - - 0x0240AB 09:809B: FE 30 05  INC ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x0240AE 09:809E: A9 80     LDA #$80
C - - - - - 0x0240B0 09:80A0: 9D E0 05  STA ram_05E0_obj,X ; 05E0 05E1 
C - - - - - 0x0240B3 09:80A3: 0A        LDA #$00
C - - - - - 0x0240B4 09:80A4: 9D 45 06  STA ram_plr_damage,X ; 0645 0646 
C - - - - - 0x0240B7 09:80A7: 9D 43 06  STA ram_plr_copy_flip,X ; 0643 0644 
C - - - - - 0x0240BA 09:80AA: 9D 08 06  STA ram_0608_plr,X ; 0608 0609 
C - - - - - 0x0240BD 09:80AD: 9D 0A 06  STA ram_060A_plr,X ; 060A 060B 
C - - - - - 0x0240C0 09:80B0: 9D 0C 06  STA ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x0240C3 09:80B3: 9D 0E 06  STA ram_060E_plr,X ; 060E 060F 
C - - - - - 0x0240C6 09:80B6: 9D 06 06  STA ram_plr_таймер_для_запуска_мяча,X ; 0606 0607 
C - - - - - 0x0240C9 09:80B9: 9D 04 06  STA ram_0604_plr,X ; 0604 0605 
C - - - - - 0x0240D2 09:80C2: 20 20 BE  JSR sub_BE20
C - - - - - 0x0240D5 09:80C5: B5 A2     LDA ram_plr_id,X ; 00A2 00A3 
C - - - - - 0x0240D7 09:80C7: 9D 50 05  STA ram_obj_id,X ; 0550 0551 
                                        TAY
                                        LDA tbl_E999_время_зарядки_суперок,Y
                                        STA ram_012E_plr,X ; 012E 012F 
C - - - - - 0x0240DA 09:80CA: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x0240DD 09:80CD: 4C 35 EA  JMP loc_0x03EA45



tbl_E999_время_зарядки_суперок:
; перемещено из банка FF
- D 3 - - - 0x03E9A9 0F:E999: 00        .byte $00   ; 00 con_fighter_leo
- D 3 - - - 0x03E9AA 0F:E99A: 12        .byte $12   ; 01 con_fighter_raph
- D 3 - - - 0x03E9AB 0F:E99B: 14        .byte $14   ; 02 con_fighter_mike
- D 3 - - - 0x03E9AC 0F:E99C: 18        .byte $18   ; 03 con_fighter_don
- D 3 - - - 0x03E9AD 0F:E99D: 0C        .byte $0C   ; 04 con_fighter_casey
- D 3 - - - 0x03E9AE 0F:E99E: 00        .byte $00   ; 05 con_fighter_hot
- D 3 - - - 0x03E9AF 0F:E99F: 00        .byte $00   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $00   ; 07 con_fighter___leo
                                        .byte $12   ; 08 con_fighter___raph
                                        .byte $14   ; 09 con_fighter___mike
                                        .byte $18   ; 0A con_fighter___don
                                        .byte $0C   ; 0B con_fighter___casey
                                        .byte $00   ; 0C con_fighter___hot
                                        .byte $00   ; 0D con_fighter___shred
                                    .endif



ofs_061_80D0_01:
C - - J - - 0x0240E0 09:80D0: A9 A0     LDA #$A0
C - - - - - 0x0240E2 09:80D2: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
; 01 -> 02
C - - - - - 0x0240E5 09:80D5: FE 30 05  INC ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x0240E8 09:80D8: 4C 38 DB  JMP loc_0x03DB48_очистить_spd_X_и_spd_Z



sub_80DB_выбрать_анимацию_ходьбы:
C - - - - - 0x0240EB 09:80DB: 20 01 81  JSR sub_8101
C - - - - - 0x0240EE 09:80DE: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x0240F1 09:80E1: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0240F4 09:80E4: 0A        ASL
C - - - - - 0x0240F5 09:80E5: 5D 80 04  EOR ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x0240F8 09:80E8: 10 05     BPL bra_80EF
C - - - - - 0x0240FA 09:80EA: 98        TYA
C - - - - - 0x0240FB 09:80EB: 18        CLC
C - - - - - 0x0240FC 09:80EC: 69 07     ADC #con_колво_персов
C - - - - - 0x0240FE 09:80EE: A8        TAY
bra_80EF:
C - - - - - 0x0240FF 09:80EF: BD 26 06  LDA ram_0626_plr,X ; 0626 0627 
C - - - - - 0x024102 09:80F2: C9 02     CMP #$02
C - - - - - 0x024104 09:80F4: 90 04     BCC bra_80FA
                                        CLC
C - - - - - 0x024106 09:80F6: 98        TYA
C - - - - - 0x024107 09:80F7: 69 0D     ADC #con_колво_персов * $02
C - - - - - 0x024109 09:80F9: A8        TAY
bra_80FA:
C - - - - - 0x02410A 09:80FA: B9 0D 97  LDA tbl_970D,Y
C - - - - - 0x02410D 09:80FD: A8        TAY
C - - - - - 0x02410E 09:80FE: 4C 7C D0  JMP loc_0x03D08C_обработка_анимации_объекта



sub_8101:
C - - - - - 0x024111 09:8101: 20 6A D0  JSR sub_0x03DB4C_очистить_spd_X
C - - - - - 0x024114 09:8104: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024116 09:8106: 29 03     AND #con_btns_LR
C - - - - - 0x024118 09:8108: F0 4B     BEQ bra_8155_RTS
C - - - - - 0x02411A 09:810A: 4A        LSR
C - - - - - 0x02411B 09:810B: 4A        LSR
C - - - - - 0x02411C 09:810C: 6A        ROR
C - - - - - 0x02411D 09:810D: 6A        ROR
C - - - - - 0x02411E 09:810E: 85 01     STA ram_0001
C - - - - - 0x024120 09:8110: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x024123 09:8113: 29 40     AND #$40
C - - - - - 0x024125 09:8115: 38        SEC
C - - - - - 0x024126 09:8116: E5 01     SBC ram_0001
C - - - - - 0x024128 09:8118: 85 01     STA ram_0001
C - - - - - 0x02412A 09:811A: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x02412D 09:811D: BD 26 06  LDA ram_0626_plr,X ; 0626 0627 
C - - - - - 0x024130 09:8120: C9 02     CMP #$02
C - - - - - 0x024132 09:8122: 90 0D     BCC bra_8131
C - - - - - 0x024134 09:8124: 98        TYA
                                        CLC
C - - - - - 0x024135 09:8125: 69 06     ADC #con_колво_персов
C - - - - - 0x024137 09:8127: A8        TAY
C - - - - - 0x024138 09:8128: A5 01     LDA ram_0001
C - - - - - 0x02413A 09:812A: F0 05     BEQ bra_8131
C - - - - - 0x02413C 09:812C: 98        TYA
C - - - - - 0x02413D 09:812D: 18        CLC
C - - - - - 0x02413E 09:812E: 69 07     ADC #con_колво_персов
C - - - - - 0x024140 09:8130: A8        TAY
bra_8131:
C - - - - - 0x024141 09:8131: B9 F8 96  LDA tbl_96F8,Y
C - - - - - 0x024144 09:8134: 85 00     STA ram_0000
C - - - - - 0x024146 09:8136: A5 01     LDA ram_0001
C - - - - - 0x024148 09:8138: F0 05     BEQ bra_813F
C - - - - - 0x02414A 09:813A: A9 F0     LDA #$F0
C - - - - - 0x02414C 09:813C: 20 4E 81  JSR sub_814E
bra_813F:
C - - - - - 0x02414F 09:813F: BD 00 06  LDA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x024152 09:8142: 10 05     BPL bra_8149
C - - - - - 0x024154 09:8144: A9 F0     LDA #$F0
C - - - - - 0x024156 09:8146: 20 4E 81  JSR sub_814E
bra_8149:
C - - - - - 0x024159 09:8149: A5 00     LDA ram_0000
C - - - - - 0x02415B 09:814B: 4C D6 D1  JMP loc_0x03D1E6



sub_814E:
C - - - - - 0x02415E 09:814E: 18        CLC
C - - - - - 0x02415F 09:814F: 65 00     ADC ram_0000
C - - - - - 0x024161 09:8151: E9 00     SBC #$00
C - - - - - 0x024163 09:8153: 85 00     STA ram_0000
bra_8155_RTS:
C - - - - - 0x024165 09:8155: 60        RTS



ofs_061_8156_02_fight:
C - - J - - 0x024166 09:8156: A0 01     LDY #con_init_anim_обычная_стойка
C - - - - - 0x024168 09:8158: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x02416B 09:815B: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x02416D 09:815D: C9 10     CMP #$10
C - - - - - 0x02416F 09:815F: B0 13     BCS bra_8174
C - - - - - 0x024171 09:8161: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024174 09:8164: F0 06     BEQ bra_816C
C - - - - - 0x024176 09:8166: 8A        TXA
C - - - - - 0x024177 09:8167: D0 EC     BNE bra_8155_RTS
C - - - - - 0x024179 09:8169: 4C 3A BB  JMP loc_BB3A
bra_816C:
C - - - - - 0x02417C 09:816C: 8A        TXA
C - - - - - 0x02417D 09:816D: D0 05     BNE bra_8174
C - - - - - 0x02417F 09:816F: A9 51     LDA #con_dmcp_fight
C - - - - - 0x024181 09:8171: 20 94 F6  JSR sub_0x03F6A4_записать_звук
bra_8174:
; 02 -> 03
C - - - - - 0x024184 09:8174: FE 30 05  INC ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x024187 09:8177: A9 00     LDA #$00
C - - - - - 0x024189 09:8179: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02418C 09:817C: 85 98     STA ram_0098_flag
C - - - - - 0x02418E 09:817E: 8D 0C 04  STA ram_obj_anim_id + $0C
C - - - - - 0x024191 09:8181: 60        RTS



sub_818B_обработчик_состояний_персов:
C - - - - - 0x02419B 09:818B: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x02419E 09:818E: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x0241A1 09:8191: AB 81     .word ofs_state_81AB_00_перс_на_земле
- D 0 - I - 0x0241A3 09:8193: FC 84     .word ofs_state_84FC_01_перс_в_прыжке
- D 0 - I - 0x0241A5 09:8195: 96 84     .word ofs_state_8496_02_перс_подбирает_мяч
- D 0 - I - 0x0241A7 09:8197: 18 8C     .word ofs_state_8C18_03_перс_получает_урон
- D 0 - I - 0x0241A9 09:8199: C7 83     .word ofs_state_83C7_04_перс_в_нокауте
- D 0 - I - 0x0241AB 09:819B: 3B 86     .word ofs_state_863B_05_перс_запускает_мяч
- D 0 - I - 0x0241AD 09:819D: DF 86     .word ofs_state_86DF_06_перс_поворачивается
- D 0 - I - 0x0241AF 09:819F: 01 87     .word ofs_state_8701_07_перс_сидит
- D 0 - I - 0x0241B1 09:81A1: 53 87     .word ofs_state_8753_08_перс_делает_суперку
- D 0 - I - 0x0241B3 09:81A3: C9 8F     .word ofs_state_8FC9_09_перс_бросает_соперника
- D 0 - I - 0x0241B5 09:81A5: 08 92     .word ofs_state_9208_0A_перс_брошен_соперником
- D 0 - I - 0x0241B7 09:81A7: 7D 87     .word ofs_state_877D_0B_перс_попался_в_мясо
- D 0 - I - 0x0241B9 09:81A9: A9 88     .word ofs_state_88A9_0C_перс_исполняет_победную_анимацию



ofs_state_81AB_00_перс_на_земле:
C - - J - - 0x0241BB 09:81AB: 20 01 8B  JSR sub_8B01    ; возможен PLA PLA
C - - - - - 0x0241BE 09:81AE: 20 52 89  JSR sub_8952    ; возможен PLA PLA
C - - - - - 0x0241C1 09:81B1: A9 AF     LDA #con_координата_пола - $01
C - - - - - 0x0241C3 09:81B3: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x0241C6 09:81B6: B0 58     BCS bra_8210
C - - - - - 0x0241C8 09:81B8: A9 B0     LDA #con_координата_пола
C - - - - - 0x0241CA 09:81BA: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x0241CD 09:81BD: 20 76 89  JSR sub_8976_проверка_на_время_вышло    ; возможен PLA PLA
C - - - - - 0x0241D0 09:81C0: A4 A9     LDY ram_global_obj_index
C - - - - - 0x0241D2 09:81C2: B9 30 05  LDA ram_0530_obj_state,Y ; 0530 0531 
C - - - - - 0x0241D5 09:81C5: C9 04     CMP #$04
C - - - - - 0x0241D7 09:81C7: F0 24     BEQ bra_81ED_перс_труп
; if перс живой и все еще находится в бою
C - - - - - 0x0241D9 09:81C9: B5 8E     LDA ram_btn_press,X
C - - - - - 0x0241DB 09:81CB: A8        TAY
C - - - - - 0x0241DC 09:81CC: 29 C0     AND #con_btns_AB
C - - - - - 0x0241DE 09:81CE: D0 51     BEQ bra_81D0
                                        JMP loc_8221
bra_81D0:
C - - - - - 0x0241E0 09:81D0: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0241E2 09:81D2: 29 08     AND #con_btn_Up
C - - - - - 0x0241E4 09:81D4: D0 1D     BNE bra_81F3
C - - - - - 0x0241E6 09:81D6: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0241E9 09:81D9: 85 01     STA ram_0001
C - - - - - 0x0241EB 09:81DB: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0241ED 09:81DD: 29 04     AND #con_btn_Down
C - - - - - 0x0241EF 09:81DF: D0 0F     BNE bra_81F0
C - - - - - 0x0241F1 09:81E1: 20 0D 89  JSR sub_890D    ; возможен PLA PLA
C - - - - - 0x0241F4 09:81E4: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0241F6 09:81E6: 29 03     AND #con_btns_LR
C - - - - - 0x0241F8 09:81E8: D0 0C     BEQ bra_81EA
; if нажато влево/вправо
                                        JMP loc_81F6_ходьба
bra_81EA:
; if не нажато влево/вправо
C - - - - - 0x0241FA 09:81EA: 20 F9 81  JSR sub_81F9_попытка_повернуть_перса
bra_81ED_перс_труп:
C - - - - - 0x0241FD 09:81ED: 4C 7E 83  JMP loc_837E_анимация_стойки
bra_81F0:
C - - - - - 0x024200 09:81F0: 4C 5B 83  JMP loc_835B
bra_81F3:
C - - - - - 0x024203 09:81F3: 4C 4F 83  JMP loc_834F
bra_8210:
- - - - - - 0x024220 09:8210: A9 01     LDA #con_plr_state_в_прыжке
- - - - - - 0x024222 09:8212: 20 7F 84  JSR sub_847F
- - - - - - 0x024225 09:8215: FE 40 05  INC ram_obj_state_lo,X
- - - - - - 0x024228 09:8218: A9 00     LDA #$00
- - - - - - 0x02422A 09:821A: 9D A0 04  STA ram_obj_spd_Y_hi,X
- - - - - - 0x02422D 09:821D: 9D B0 04  STA ram_obj_spd_Y_lo,X
bra_8220_RTS:
C - - - - - 0x024230 09:8220: 60        RTS



loc_81F6_ходьба:
C - - - - - 0x024206 09:81F6: 20 DB 80  JSR sub_80DB_выбрать_анимацию_ходьбы
sub_81F9_попытка_повернуть_перса:
C - - - - - 0x024209 09:81F9: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x02420C 09:81FC: 9D 43 06  STA ram_plr_copy_flip,X ; 0643 0644 
C - - - - - 0x02420F 09:81FF: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x024212 09:8202: BD 43 06  LDA ram_plr_copy_flip,X ; 0643 0644 
C - - - - - 0x024215 09:8205: DD 10 05  CMP ram_obj_flip,X ; 0510 0511 
C - - - - - 0x024218 09:8208: F0 16     BEQ bra_8220_RTS
; if перс повернулся в другую сторону относительно предыдущей стороны поворота
C - - - - - 0x02421A 09:820A: 9D 10 05  STA ram_obj_flip,X ; 0510 0511 
C D 0 - - - 0x0243C2 09:83B2: A9 06     LDA #con_plr_state_поворачивается
C - - - - - 0x0243C4 09:83B4: 9D 20 05  STA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x0243C7 09:83B7: A9 06     LDA #$06
C - - - - - 0x0243C9 09:83B9: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x0243CC 09:83BC: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0243CF 09:83BF: 4C 3C DB  JMP loc_0x03DB4C_очистить_spd_X



sub_8221:
loc_8221:
C D 0 - - - 0x024231 09:8221: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024233 09:8223: AD 38 06  LDA ram_расстояние_между_персами
C - - - - - 0x024236 09:8226: 85 13     STA ram_0013
C - - - - - 0x024238 09:8228: A0 02     LDY #$02
C - - - - - 0x02423A 09:822A: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x02423D 09:822D: C9 01     CMP #con_plr_state_в_прыжке
C - - - - - 0x02423F 09:822F: F0 06     BEQ bra_8237
C - - - - - 0x024241 09:8231: 88        DEY ; 01
C - - - - - 0x024242 09:8232: C9 07     CMP #con_plr_state_сидит
C - - - - - 0x024244 09:8234: F0 01     BEQ bra_8237
C - - - - - 0x024246 09:8236: 88        DEY ; 00
bra_8237:
C - - - - - 0x024247 09:8237: 84 10     STY ram_0010
C - - - - - 0x024249 09:8239: 98        TYA
C - - - - - 0x02424A 09:823A: F0 26     BEQ bra_8262
C - - - - - 0x02424C 09:823C: 4A        LSR
C - - - - - 0x02424D 09:823D: B0 1C     BCS bra_825B
C - - - - - 0x02424F 09:823F: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x024252 09:8242: C9 05     CMP #con_fighter_hot
C - - - - - 0x024254 09:8244: D0 12     BNE bra_8258
                                    .else
                                        CMP #con_fighter_hot
                                        BEQ bra_8246_hot
                                        CMP #con_fighter___hot
                                        BNE bra_8258
                                    .endif
bra_8246_hot:
; con_fighter_hot
; con_fighter___hot
C - - - - - 0x024256 09:8246: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024258 09:8248: 29 04     AND #con_btn_Down
C - - - - - 0x02425A 09:824A: F0 0C     BEQ bra_8258
C - - - - - 0x02425C 09:824C: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x02425F 09:824F: 69 01     ADC #$01
C - - - - - 0x024261 09:8251: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024264 09:8254: A9 20     LDA #con_0612_hot_бабочка
C - - - - - 0x024266 09:8256: D0 36     BNE bra_828E    ; jmp
bra_8258:
C - - - - - 0x024268 09:8258: A9 0E     LDA #con_колво_персов * $02    ; для атаки ногой в воздухе
C - - - - - 0x02426A 09:825A: 2C        .byte $2C   ; BIT
bra_825B:
C - - - - - 0x02426B 09:825B: A9 15     LDA #con_колво_персов * $03    ; для атаки ногой сидя
C - - - - - 0x02426D 09:825D: 18        CLC
C - - - - - 0x02426E 09:825E: 7D 50 05  ADC ram_obj_id,X ; 0550 0551 
C - - - - - 0x024271 09:8261: A8        TAY
bra_8262:
C - - - - - 0x024272 09:8262: B5 8E     LDA ram_btn_press,X
C - - - - - 0x024274 09:8264: 10 2B     BPL bra_8291
C - - - - - 0x024276 09:8266: A5 10     LDA ram_0010
C - - - - - 0x024278 09:8268: D0 21     BNE bra_828B
C - - - - - 0x02427A 09:826A: A9 01     LDA #$01
C - - - - - 0x02427C 09:826C: 20 C1 8A  JSR sub_8AC1
C - - - - - 0x02427F 09:826F: BD 50 05  LDA ram_флаг_черепахи,X
C - - - - - 0x024284 09:8274: B0 15     BNE bra_828B_не_черепаха
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
; con_fighter_don
C - - - - - 0x024286 09:8276: BD 26 06  LDA ram_0626_plr,X ; 0626 0627 
C - - - - - 0x024289 09:8279: C9 02     CMP #$02
C - - - - - 0x02428B 09:827B: D0 0E     BNE bra_828B
C - - - - - 0x02428D 09:827D: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x024290 09:8280: DD 1C 06  CMP ram_061C_plr,X ; 061C 061D 
C - - - - - 0x024293 09:8283: D0 06     BNE bra_828B
; C = 1
C - - - - - 0x024295 09:8285: A9 22     LDA #con_колво_персов * $05 - $01  ; для дешей ногой
C - - - - - 0x024297 09:8287: 7D 50 05  ADC ram_obj_id,X ; 0550 0551 
C - - - - - 0x02429A 09:828A: A8        TAY
bra_828B:
bra_828B_не_черепаха:
; con_fighter_casey
; con_fighter_hot
; con_fighter_shred
C - - - - - 0x02429B 09:828B: B9 B2 93  LDA tbl_93B2_конвертация_индексов_атаки_ногой,Y
bra_828E:
C - - - - - 0x02429E 09:828E: 4C 37 83  JMP loc_8337
bra_8291:
C - - - - - 0x0242A1 09:8291: A5 10     LDA ram_0010
C - - - - - 0x0242A3 09:8293: D0 6B     BNE bra_8300
C - - - - - 0x0242A5 09:8295: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0242A7 09:8297: 29 03     AND #con_btns_LR
C - - - - - 0x0242A9 09:8299: F0 44     BEQ bra_82DF
C - - - - - 0x0242AB 09:829B: AC 70 05  LDY ram_0570_obj
C - - - - - 0x0242AE 09:829E: B9 4C AD  LDA tbl_AD4C_хитбокс,Y
C - - - - - 0x0242B1 09:82A1: AC 71 05  LDY ram_0570_obj + $01
C - - - - - 0x0242B4 09:82A4: 18        CLC
C - - - - - 0x0242B5 09:82A5: 79 4C AD  ADC tbl_AD4C_хитбокс,Y
C - - - - - 0x0242B8 09:82A8: 85 01     STA ram_0001
C - - - - - 0x0242BA 09:82AA: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0242BD 09:82AD: 48        PHA
C - - - - - 0x0242BE 09:82AE: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x0242C1 09:82B1: 68        PLA
C - - - - - 0x0242C2 09:82B2: DD 10 05  CMP ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0242C5 09:82B5: F0 06     BEQ bra_82BD
C - - - - - 0x0242C7 09:82B7: 9D 10 05  STA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0242CA 09:82BA: 4C DF 82  JMP loc_82DF
bra_82BD:
C - - - - - 0x0242D7 09:82C7: A4 A9     LDY ram_global_obj_index
C - - - - - 0x0242D9 09:82C9: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x0242DC 09:82CC: C9 B0     CMP #con_координата_пола
C - - - - - 0x0242DE 09:82CE: 90 0F     BCC bra_82DF
C - - - - - 0x0242E0 09:82D0: B9 80 05  LDA ram_0580_obj,Y ; 0580 0581 
C - - - - - 0x0242E3 09:82D3: 29 A0     AND #$A0
C - - - - - 0x0242E5 09:82D5: D0 08     BNE bra_82DF
C - - - - - 0x0242E7 09:82D7: B9 F0 05  LDA ram_05F0_obj,Y ; 05F0 05F1 
C - - - - - 0x0242EA 09:82DA: D0 03     BNE bra_82DF
                                        LDA ram_0013    ; расстояние между персами
                                        LDY ram_obj_id,X ; 0550 0551 
                                        CMP tbl_0x03DF2C_рейндж_броска,Y
                                        BCC bra_82BE
; рейндж для второго броска перса. пока 00 - 2-й бросок отключен
                                        CMP #$00
                                        BCS bra_82DF
; условия для срабатывания второго броска
                                        LDA ram_0626_plr,X
                                        LSR
                                        BNE bra_82BF
bra_82BE:
                                        LDA #$00    ; оригинальный бросок
                                        .byte $2C   ; BIT
bra_82BF:
                                        LDA #$01    ; новый бросок
                                        STA ram_plr_индекс_броска,X
C D 0 - - - 0x0243D2 09:83C2: A9 09     LDA #con_plr_state_бросает_соперника
C - - - - - 0x0243D4 09:83C4: 4C 7F 84  JMP loc_847F
bra_82DF:
loc_82DF:
C D 0 - - - 0x0242EF 09:82DF: A9 00     LDA #$00
C - - - - - 0x0242F1 09:82E1: 20 C1 8A  JSR sub_8AC1
C - - - - - 0x0242F4 09:82E4: BD 50 05  LDA ram_флаг_черепахи,X
C - - - - - 0x0242F9 09:82E9: B0 15     BNE bra_8300_не_черепаха
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
; con_fighter_don
C - - - - - 0x0242FB 09:82EB: BD 26 06  LDA ram_0626_plr,X ; 0626 0627 
C - - - - - 0x0242FE 09:82EE: C9 02     CMP #$02
C - - - - - 0x024300 09:82F0: D0 0E     BNE bra_8300
C - - - - - 0x024302 09:82F2: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x024305 09:82F5: DD 1C 06  CMP ram_061C_plr,X ; 061C 061D 
C - - - - - 0x024308 09:82F8: D0 06     BNE bra_8300
C - - - - - 0x02430A 09:82FA: 20 0D FF  JSR sub_0x03FF1D
C - - - - - 0x02430D 09:82FD: A5 12     LDA ram_0012
C - - - - - 0x02430F 09:82FF: A8        TAY
bra_8300:
bra_8300_не_черепаха:
; con_fighter_casey
; con_fighter_hot
; con_fighter_shred
C - - - - - 0x024310 09:8300: 84 12     STY ram_0012
C - - - - - 0x024312 09:8302: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024314 09:8304: 29 04     AND #con_btn_Down
C - - - - - 0x024316 09:8306: D0 25     BNE bra_832D
C - - - - - 0x024318 09:8308: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x02431B 09:830B: C9 06     CMP #con_fighter_shred
C - - - - - 0x02431D 09:830D: D0 23     BNE bra_8332
                                    .else
                                        CMP #con_fighter_shred
                                        BEQ bra_830F_shred
                                        CMP #con_fighter___shred
                                        BNE bra_8332
bra_830F_shred:
                                    .endif
; con_fighter_shred
; con_fighter___shred
C - - - - - 0x02431F 09:830F: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024322 09:8312: C9 B0     CMP #con_координата_пола
C - - - - - 0x024324 09:8314: 90 1C     BCC bra_8332
C - - - - - 0x024326 09:8316: 98        TYA
C - - - - - 0x024327 09:8317: 48        PHA
C - - - - - 0x024328 09:8318: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02432A 09:831A: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x02432D 09:831D: C9 B0     CMP #con_координата_пола
C - - - - - 0x02432F 09:831F: 68        PLA
C - - - - - 0x024330 09:8320: A8        TAY
C - - - - - 0x024331 09:8321: 90 0F     BCC bra_8332
C - - - - - 0x024333 09:8323: A5 13     LDA ram_0013
C - - - - - 0x024335 09:8325: C9 15     CMP #$15
C - - - - - 0x024337 09:8327: 90 09     BCC bra_8332
C - - - - - 0x024339 09:8329: A9 25     LDA #con_0612_shred_рука_дальняя
C - - - - - 0x02433B 09:832B: B0 0A     BCS bra_8337    ; jmp
bra_832D:
C - - - - - 0x02433D 09:832D: 20 1A B1  JSR sub_B11A
C - - - - - 0x024340 09:8330: 90 38     BCC bra_836A
bra_8332:
C - - - - - 0x024342 09:8332: A4 12     LDY ram_0012
C - - - - - 0x024344 09:8334: B9 88 93  LDA tbl_9388_конвертация_индексов_атаки_рукой,Y
bra_8337:
loc_8337:
C D 0 - - - 0x024347 09:8337: 9D 12 06  STA ram_plr_индекс_атаки,X ; 0612 0613 
C - - - - - 0x02434A 09:833A: A9 80     LDA #$80
C - - - - - 0x02434C 09:833C: 9D 10 06  STA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x02434F 09:833F: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x024352 09:8342: D0 03     BNE bra_8347
; if con_plr_state_на_земле
C - - - - - 0x024354 09:8344: 20 3C DB  JSR sub_0x03DB4C_очистить_spd_X
bra_8347:
C - - - - - 0x024357 09:8347: A9 00     LDA #$00
C - - - - - 0x024359 09:8349: 9D 16 06  STA ram_plr_этап_удара,X ; 0616 0617 
C - - - - - 0x02435C 09:834C: 4C A9 8B  JMP loc_8BC5



loc_834F:
; в оригинале читался байт из таблицы 0x03E3E8 по индексу перса,
; но в таблице все байты были 04
                                       ;LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x024366 09:8356: A9 01     LDA #con_plr_state_в_прыжке
                                        LDY #$04    ; таймер
C D 1 - - - 0x027E97 09:BE87: 20 81 84  JSR sub_8481
C - - - - - 0x027E9A 09:BE8A: A4 A9     LDY ram_global_obj_index
C - - - - - 0x027E9C 09:BE8C: B9 D0 04  LDA ram_04D0_obj,Y ; 04D0 04D1 
C - - - - - 0x027E9F 09:BE8F: A8        TAY
C - - - - - 0x027EA0 09:BE90: BD 00 06  LDA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x027EA3 09:BE93: 88        DEY
C - - - - - 0x027EA4 09:BE94: 30 03     BMI bra_BE99
C - - - - - 0x027EA6 09:BE96: 09 40     ORA #$40
C - - - - - 0x027EA8 09:BE98: 2C        .byte $2C   ; BIT
bra_BE99:
C - - - - - 0x027EA9 09:BE99: 29 BF     AND #$40 ^ $FF
C - - - - - 0x027EAB 09:BE9B: 9D 00 06  STA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x027EAE 09:BE9E: 60        RTS



loc_835B:
C D 0 - - - 0x02436B 09:835B: A0 01     LDY #con_init_anim_обычная_стойка
C - - - - - 0x02436D 09:835D: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x024370 09:8360: A9 07     LDA #con_plr_state_сидит
C - - - - - 0x024372 09:8362: A0 04     LDY #$04    ; таймер
C - - - - - 0x024374 09:8364: 20 81 84  JSR sub_8481
C - - - - - 0x024377 09:8367: 4C 3C DB  JMP loc_0x03DB4C_очистить_spd_X
bra_836A:
C - - - - - 0x03FF04 0F:FEF4: A9 00     LDA #$00
C - - - - - 0x03FF09 0F:FEF9: 9D 0A 06  STA ram_060A_plr,X ; фикс левого песка кейси во время взятия шара
C - - - - - 0x03FF0C 0F:FEFC: BC 20 05  LDY ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x02437D 09:836D: C0 01     CPY #$01
C - - - - - 0x02437F 09:836F: F0 0A     BEQ bra_837B
C - - - - - 0x024381 09:8371: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x024384 09:8374: A9 02     LDA #con_plr_state_подбирает_мяч
C - - - - - 0x024386 09:8376: A0 10     LDY #$10    ; таймер
C - - - - - 0x024388 09:8378: 4C 81 84  JMP loc_8481
bra_837B:
C - - - - - 0x02438B 09:837B: 4C B2 84  JMP loc_84B2



loc_837E_анимация_стойки:
sub_0x02438E_анимация_стойки:
C D 0 - - - 0x02438E 09:837E: 20 38 DB  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x024391 09:8381: DE 1A 06  DEC ram_plr_anim_timer_стойки,X ; 061A 061B 
C - - - - - 0x024394 09:8384: 10 10     BPL bra_8396_выбор_текущей_анимации_стойки
; if таймер текущей анимации закончился, выбрать следующую анимацию
C - - - - - 0x024396 09:8386: FE 18 06  INC ram_plr_anim_cnt_стойки,X ; 0618 0619 
C - - - - - 0x024399 09:8389: FE 18 06  INC ram_plr_anim_cnt_стойки,X ; 0618 0619 
C - - - - - 0x02439C 09:838C: 20 96 83  JSR sub_8396_выбор_следующей_анимации_стойки
C - - - - - 0x02439F 09:838F: B9 E4 93  LDA tbl_93E3_анимация_стойки + $01,Y
C - - - - - 0x0243A2 09:8392: 9D 1A 06  STA ram_plr_anim_timer_стойки,X ; 061A 061B 
C - - - - - 0x0243A5 09:8395: 60        RTS



bra_83AB_повторить_цикл_анимации_стойки:
; A = 00
C - - - - - 0x0243BD 09:83AD: 9D 18 06  STA ram_plr_anim_cnt_стойки,X ; 0618 0619 
bra_8396_выбор_текущей_анимации_стойки:
sub_8396_выбор_следующей_анимации_стойки:
C - - - - - 0x0243A6 09:8396: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x0243A9 09:8399: B9 DC 93  LDA tbl_93DC_индекс,Y
C - - - - - 0x0243AC 09:839C: 85 00     STA ram_0000
C - - - - - 0x0243AE 09:839E: 18        CLC
C - - - - - 0x0243AF 09:839F: 7D 18 06  ADC ram_plr_anim_cnt_стойки,X ; 0618 0619 
C - - - - - 0x0243B2 09:83A2: A8        TAY
C - - - - - 0x0243B3 09:83A3: B9 E3 93  LDA tbl_93E3_анимация_стойки,Y
C - - - - - 0x0243B6 09:83A6: F0 03     BEQ bra_83AB_повторить_цикл_анимации_стойки
; if цикл анимации еще не закончен, записать номер анимации из таблицы
C - - - - - 0x0243B8 09:83A8: 4C 94 DF  STA ram_obj_anim_id,X ; 0400 0401 
                                        RTS



ofs_state_83C7_04_перс_в_нокауте:
C - - J - - 0x0243D7 09:83C7: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0243DA 09:83CA: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x0243DD 09:83CD: D7 83     .word ofs_в_нокауте_83D7_00
- D 0 - I - 0x0243DF 09:83CF: F6 83     .word ofs_в_нокауте_83F6_01
- D 0 - I - 0x0243E1 09:83D1: F6 83     .word ofs_в_нокауте_83F6_02
- D 0 - I - 0x0243E3 09:83D3: 30 84     .word ofs_в_нокауте_8430_03
- D 0 - I - 0x0243E5 09:83D5: 51 84     .word ofs_в_нокауте_8451_04



ofs_в_нокауте_83D7_00:
C - - J - - 0x0243E7 09:83D7: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x0243EA 09:83DA: 20 DB 84  JSR sub_84DB_попытка_уронить_мяч_персом_после_получения_урона
C - - - - - 0x0243ED 09:83DD: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x0243F0 09:83E0: A9 80     LDA #$80
C - - - - - 0x0243F2 09:83E2: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x0243F5 09:83E5: A9 FB     LDA #$FB
bra_83E7:
C - - - - - 0x0243F7 09:83E7: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x0243FA 09:83EA: A9 20     LDA #$20
C - - - - - 0x0243FC 09:83EC: 2C        .byte $2C   ; BIT
bra_83ED:
C - - - - - 0x0243FD 09:83ED: A9 10     LDA #$10
C - - - - - 0x0243FF 09:83EF: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024402 09:83F2: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024405 09:83F5: 60        RTS



ofs_в_нокауте_83F6_01:
ofs_в_нокауте_83F6_02:
C - - J - - 0x024406 09:83F6: 20 65 DD  JSR sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
C - - - - - 0x024409 09:83F9: A9 61     LDA #$61
C - - - - - 0x02440B 09:83FB: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02440E 09:83FE: 20 65 DD  JSR sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
C - - - - - 0x024411 09:8401: A0 02     LDY #con_init_anim_нокаут
C - - - - - 0x024413 09:8403: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x024416 09:8406: A9 68     LDA #$68
C - - - - - 0x024418 09:8408: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02441B 09:840B: 90 05     BCC bra_8412
- - - - - - 0x02441D 09:840D: A9 80     LDA #< $0080
- - - - - - 0x02441F 09:840F: 20 D3 DC  STA ram_obj_spd_Z_lo,X ; 0470 0471 
                                        LDA #> $0080
                                        STA ram_obj_spd_Z_hi,X ; 0460 0461 
bra_8412:
C - - - - - 0x024422 09:8412: 20 92 DC  JSR sub_0x03DCA2_добавить_к_spd_Z_в_зависимости_от_опции_скорости
C - - - - - 0x024425 09:8415: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024428 09:8418: 30 15     BMI bra_842F_RTS
C - - - - - 0x02442A 09:841A: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02442D 09:841D: C9 C0     CMP #$C0
C - - - - - 0x02442F 09:841F: 90 0E     BCC bra_842F_RTS
C - - - - - 0x024431 09:8421: 20 73 D0  JSR sub_0x03D083_очистить_spd_Z
C - - - - - 0x024434 09:8424: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024437 09:8427: C9 02     CMP #$02
C - - - - - 0x024439 09:8429: F0 C2     BEQ bra_83ED
C - - - - - 0x02443B 09:842B: A9 FD     LDA #$FD
C - - - - - 0x02443D 09:842D: D0 B8     BNE bra_83E7    ; jmp
bra_842F_RTS:
C - - - - - 0x02443F 09:842F: 60        RTS



ofs_в_нокауте_8430_03:
C - - J - - 0x024440 09:8430: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x024443 09:8433: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024446 09:8436: D0 F7     BNE bra_842F_RTS
C - - - - - 0x024448 09:8438: A9 B0     LDA #con_координата_пола
C - - - - - 0x02444A 09:843A: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02444D 09:843D: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x024450 09:8440: B9 A9 99  LDA tbl_99A9,Y
C - - - - - 0x024453 09:8443: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024456 09:8446: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024459 09:8449: A9 00     LDA #$00
C - - - - - 0x02445B 09:844B: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x02445E 09:844E: 4C 38 DF  JMP loc_0x03DF48



ofs_в_нокауте_8451_04:
C - - J - - 0x024461 09:8451: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024464 09:8454: 20 23 DF  JSR sub_0x03DF33
C - - - - - 0x024467 09:8457: A9 FF     LDA #$FF
C - - - - - 0x024469 09:8459: B4 8E     LDY ram_btn_press,X
C - - - - - 0x02446B 09:845B: F0 02     BEQ bra_845F
C - - - - - 0x02446D 09:845D: A9 FD     LDA #$FD
bra_845F:
C - - - - - 0x02446F 09:845F: 18        CLC
C - - - - - 0x024470 09:8460: 7D 60 05  ADC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024473 09:8463: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024476 09:8466: 90 02     BCC bra_846A
C - - - - - 0x024478 09:8468: D0 70     BNE bra_84DA_RTS
bra_846A:
C - - - - - 0x02447A 09:846A: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
bra_846D:
loc_846D:
sub_846D:
C D 0 - - - 0x02447D 09:846D: A9 00     LDA #$00
C - - - - - 0x02447F 09:846F: 9D 39 06  STA ram_0639_plr,X
C - - - - - 0x024482 09:8472: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024484 09:8474: 29 04     AND #con_btn_Down
C - - - - - 0x024486 09:8476: D0 1B     BNE bra_8493
C - - - - - 0x024488 09:8478: A0 01     LDY #con_init_anim_обычная_стойка
C - - - - - 0x02448A 09:847A: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x02448D 09:847D: A9 00     LDA #$00
loc_847F:
sub_847F:
C D 0 - - - 0x02448F 09:847F: A0 00     LDY #$00
sub_8481:
loc_8481:
C D 0 - - - 0x024491 09:8481: 9D 20 05  STA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x024494 09:8484: 98        TYA
C - - - - - 0x024495 09:8485: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024498 09:8488: A9 00     LDA #$00
C - - - - - 0x02449A 09:848A: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02449D 09:848D: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x0244A0 09:8490: 4C 67 D0  JMP loc_0x03DB48_очистить_spd_X_и_spd_Z
bra_8493:
C - - - - - 0x0244A3 09:8493: 4C E9 DD  JMP loc_0x03DDF9_запись_сидячего_состояния_персу



ofs_state_8496_02_перс_подбирает_мяч:
C - - J - - 0x0244A6 09:8496: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0244A9 09:8499: D0 0B     BNE bra_84A6
C - - - - - 0x0244AB 09:849B: A9 10     LDA #$10
C - - - - - 0x0244AD 09:849D: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0244B0 09:84A0: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0244B3 09:84A3: 20 30 86  JSR sub_8630
bra_84A6:
C - - - - - 0x0244B6 09:84A6: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0244B9 09:84A9: F0 21     BEQ bra_84CC
C - - - - - 0x0244BB 09:84AB: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0244BE 09:84AE: C9 0C     CMP #$0C
C - - - - - 0x0244C0 09:84B0: D0 28     BNE bra_84DA_RTS
loc_84B2:
C D 0 - - - 0x0244C2 09:84B2: A9 03     LDA #$03
C - - - - - 0x0244C4 09:84B4: CD 36 05  CMP ram_0530_obj_state + $06
C - - - - - 0x0244C7 09:84B7: F0 21     BEQ bra_84DA_RTS
C - - - - - 0x0244C9 09:84B9: 8D 36 05  STA ram_0530_obj_state + $06
C - - - - - 0x0244CC 09:84BC: A9 80     LDA #$80
C - - - - - 0x0244CE 09:84BE: 9D 00 06  STA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x0244D1 09:84C1: 8A        TXA
C - - - - - 0x0244D2 09:84C2: 09 40     ORA #$40
C - - - - - 0x0244D4 09:84C4: 8D A6 05  STA ram_05A0_obj_флаги_мяча + $06
C - - - - - 0x0244D7 09:84C7: A9 15     LDA #con_sfx_поднять_мяч
C - - - - - 0x0244D9 09:84C9: 4C 94 F6  JMP loc_0x03F6A4_записать_звук
bra_84CC:
C - - - - - 0x0244DC 09:84CC: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0244DE 09:84CE: 29 04     AND #con_btn_Down
C - - - - - 0x0244E0 09:84D0: F0 9B     BEQ bra_846D
C - - - - - 0x0244E2 09:84D2: A9 07     LDA #con_plr_state_сидит
C - - - - - 0x0244E4 09:84D4: 20 7F 84  JSR sub_847F
C - - - - - 0x0244E7 09:84D7: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
bra_84DA_RTS:
C - - - - - 0x0244EA 09:84DA: 60        RTS



sub_84DB_попытка_уронить_мяч_персом_после_получения_урона:
loc_84DB_попытка_уронить_мяч_персом_после_получения_урона:
C D 0 - - - 0x0244EB 09:84DB: BD 00 06  LDA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x0244EE 09:84DE: 10 1B     BPL bra_84FB_RTS
C - - - - - 0x0244F0 09:84E0: A9 00     LDA #$00
C - - - - - 0x0244F2 09:84E2: 9D 00 06  STA ram_0600_plr,X ; 0600 0601 
; бряк срабатывает когда перс роняет мяч после удара соперника
C - - - - - 0x0244F5 09:84E5: 20 AB DD  LDA #$01
                                        STA ram_0530_obj_state + $06
C - - - - - 0x0244F8 09:84E8: A9 02     LDA #$02
C - - - - - 0x0244FA 09:84EA: 8D A6 04  STA ram_obj_spd_Y_hi + $06
C - - - - - 0x0244FD 09:84ED: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024500 09:84F0: E9 28     SBC #$28
C - - - - - 0x024502 09:84F2: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x024505 09:84F5: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x024508 09:84F8: 8D 46 04  STA ram_obj_pos_X_lo + $06
bra_84FB_RTS:
C - - - - - 0x02450B 09:84FB: 60        RTS



ofs_state_84FC_01_перс_в_прыжке:
C - - J - - 0x02450C 09:84FC: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02450F 09:84FF: F0 06     BEQ bra_8507_00
C - - - - - 0x024511 09:8501: 88        DEY
C - - - - - 0x024512 09:8502: F0 61     BEQ bra_8565_01
; if 02
C - - - - - 0x024514 09:8504: 4C 2B 86  JMP loc_862B
bra_8507_00:
C - - - - - 0x024517 09:8507: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02451A 09:850A: F0 03     BEQ bra_850F
C - - - - - 0x02451C 09:850C: 4C 30 86  JMP loc_8630
bra_850F:
C - - - - - 0x02451F 09:850F: A0 16     LDY #con_init_anim_прыжок_от_земли
C - - - - - 0x024521 09:8511: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x024524 09:8514: 20 E6 9D  JSR sub_9DE6
C - - - - - 0x024527 09:8517: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
C - - - - - 0x02452A 09:851A: 0A        ASL
C - - - - - 0x02452B 09:851B: A8        TAY
C - - - - - 0x02452C 09:851C: B9 2A 97  LDA tbl_9729_spd_Z + $01,Y
C - - - - - 0x02452F 09:851F: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024532 09:8522: B9 29 97  LDA tbl_9729_spd_Z,Y
C - - - - - 0x024535 09:8525: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0470 0471 
C - - - - - 0x024538 09:8528: AC 26 01  LDY ram_option_speed
C - - - - - 0x02453B 09:852B: F0 1F     BEQ bra_854C
C - - - - - 0x02453D 09:852D: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024540 09:8530: 85 00     STA ram_0000
C - - - - - 0x024542 09:8532: BD 70 04  LDA ram_obj_spd_Z_lo,X ; 0470 0471 
C - - - - - 0x024545 09:8535: 38        SEC
C - - - - - 0x024546 09:8536: 66 00     ROR ram_0000
C - - - - - 0x024548 09:8538: 6A        ROR
C - - - - - 0x024549 09:8539: 38        SEC
C - - - - - 0x02454A 09:853A: 66 00     ROR ram_0000
C - - - - - 0x02454C 09:853C: 6A        ROR
C - - - - - 0x02454D 09:853D: 18        CLC
C - - - - - 0x02454E 09:853E: 7D 70 04  ADC ram_obj_spd_Z_lo,X ; 0470 0471 
C - - - - - 0x024551 09:8541: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0470 0471 
C - - - - - 0x024554 09:8544: A5 00     LDA ram_0000
C - - - - - 0x024556 09:8546: 7D 60 04  ADC ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024559 09:8549: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
bra_854C:
C - - - - - 0x02455C 09:854C: 20 01 81  JSR sub_8101
C - - - - - 0x02455F 09:854F: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x024562 09:8552: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x024565 09:8555: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x024568 09:8558: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x02456B 09:855B: A9 00     LDA #$00
C - - - - - 0x02456D 09:855D: 9D 39 06  STA ram_0639_plr,X ; 0639 063A 
C - - - - - 0x024570 09:8560: A9 07     LDA #con_075C_07
C - - - - - 0x024572 09:8562: 4C 94 F6  JMP loc_0x03F6A4_записать_звук
bra_8565_01:
C - - - - - 0x024575 09:8565: BD 10 06  LDA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x024578 09:8568: D0 4D     BNE bra_85B7
C - - - - - 0x02457A 09:856A: BD A0 04  LDA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x02457D 09:856D: 1D B0 04  ORA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x024580 09:8570: F0 2E     BEQ bra_85A0
C - - - - - 0x024582 09:8572: BD 50 05  LDY ram_obj_id,X ; 0550 0551 
                                        LDA tbl_8623_условие_для_перехода,Y
                                        BEQ bra_85A0
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
; con_fighter_don
; con_fighter_casey
C - - - - - 0x024589 09:8579: BC 60 04  LDY ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x02458C 09:857C: C8        INY
C - - - - - 0x02458D 09:857D: C8        INY
C - - - - - 0x02458E 09:857E: C8        INY
C - - - - - 0x02458F 09:857F: C0 06     CPY #$06
C - - - - - 0x024591 09:8581: B0 1D     BCS bra_85A0
C - - - - - 0x024593 09:8583: A0 00     LDY #$00
C - - - - - 0x024595 09:8585: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x024598 09:8588: 0A        ASL
C - - - - - 0x024599 09:8589: 5D A0 04  EOR ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x02459C 09:858C: 10 02     BPL bra_8590
C - - - - - 0x02459E 09:858E: A0 07     LDY #con_колво_персов
bra_8590:
C - - - - - 0x0245A0 09:8590: 18        CLC
C - - - - - 0x0245A1 09:8591: 98        TYA
C - - - - - 0x0245A2 09:8592: 7D 50 05  ADC ram_obj_id,X ; 0550 0551 
C - - - - - 0x0245A5 09:8595: A8        TAY
C - - - - - 0x0245A6 09:8596: B9 BC 99  LDA tbl_99BC,Y
C - - - - - 0x0245A9 09:8599: A8        TAY
C - - - - - 0x0245AA 09:859A: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x0245AD 09:859D: 4C B7 85  JMP loc_85B7
bra_85A0:
C - - - - - 0x0245B0 09:85A0: A0 0C     LDY #con_init_anim_записание_в_воздухе
C - - - - - 0x0245B2 09:85A2: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x0245B5 09:85A5: C9 04     CMP #$04
C - - - - - 0x0245B7 09:85A7: 90 0B     BCC bra_85B4
C - - - - - 0x0245B9 09:85A9: C9 FC     CMP #$FC
C - - - - - 0x0245BB 09:85AB: B0 07     BCS bra_85B4
C - - - - - 0x0245BD 09:85AD: C8        LDY #con_init_anim_набор_высоты
C - - - - - 0x0245BE 09:85AE: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x0245C1 09:85B1: 30 01     BMI bra_85B4
C - - - - - 0x0245C3 09:85B3: C8        LDY #con_init_anim_падение_после_прыжка
bra_85B4:
C - - - - - 0x0245C4 09:85B4: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
bra_85B7:
loc_85B7:
C D 0 - - - 0x0245C7 09:85B7: BD A0 04  LDA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x0245CA 09:85BA: 0A        ASL
C - - - - - 0x0245CB 09:85BB: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x0245CE 09:85BE: B0 06     BCS bra_85C6
C - - - - - 0x0245D0 09:85C0: C9 E8     CMP #$E8
C - - - - - 0x0245D2 09:85C2: 90 0E     BCC bra_85D2
C - - - - - 0x0245D4 09:85C4: B0 04     BCS bra_85CA    ; jmp
bra_85C6:
C - - - - - 0x0245D6 09:85C6: C9 19     CMP #$19
C - - - - - 0x0245D8 09:85C8: B0 08     BCS bra_85D2
bra_85CA:
C - - - - - 0x0245DA 09:85CA: A9 00     LDA #$00
C - - - - - 0x0245DC 09:85CC: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x0245DF 09:85CF: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
bra_85D2:
C - - - - - 0x0245E2 09:85D2: BD A0 04  LDA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x0245E5 09:85D5: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x0245E8 09:85D8: BD B0 04  LDA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x0245EB 09:85DB: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x0245EE 09:85DE: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x0245F1 09:85E1: B9 37 97  LDA tbl_9737,Y
C - - - - - 0x0245F4 09:85E4: 18        CLC
C - - - - - 0x0245F5 09:85E5: 69 50     ADC #$50
C - - - - - 0x0245F7 09:85E7: AC 26 01  LDY ram_option_speed
C - - - - - 0x0245FA 09:85EA: F0 06     BEQ bra_85F2
C - - - - - 0x0245FC 09:85EC: 85 00     STA ram_0000
C - - - - - 0x0245FE 09:85EE: 4A        LSR
C - - - - - 0x0245FF 09:85EF: 18        CLC
C - - - - - 0x024600 09:85F0: 65 00     ADC ram_0000
bra_85F2:
C - - - - - 0x024602 09:85F2: 20 58 DC  JSR sub_0x03DC68_добавить_A_00_к_spd_Z
C - - - - - 0x024605 09:85F5: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024608 09:85F8: 30 05     BMI bra_85FF
C - - - - - 0x02460A 09:85FA: 20 ED DC  JSR sub_0x03DCFD_ограничить_pos_Y_во_время_падения
C - - - - - 0x02460D 09:85FD: 90 15     BCC bra_8614
bra_85FF:
C - - - - - 0x02460F 09:85FF: 20 01 8B  JSR sub_8B01    ; возможен PLA PLA
C - - - - - 0x024612 09:8602: BD 39 06  LDA ram_0639_plr,X ; 0639 063A 
C - - - - - 0x024615 09:8605: D0 0C     BNE bra_8613_RTS
C - - - - - 0x024617 09:8607: B5 8E     LDA ram_btn_press,X
C - - - - - 0x024619 09:8609: 29 C0     AND #con_btns_AB
C - - - - - 0x02461B 09:860B: F0 06     BEQ bra_8613_RTS
C - - - - - 0x02461D 09:860D: 9D 39 06  STA ram_0639_plr,X ; 0639 063A 
C - - - - - 0x024620 09:8610: 20 21 82  JSR sub_8221
bra_8613_RTS:
C - - - - - 0x024623 09:8613: 60        RTS
bra_8614:
C - - - - - 0x024624 09:8614: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024627 09:8617: A9 00     LDA #$00
C - - - - - 0x024629 09:8619: 9D 10 06  STA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x02462C 09:861C: A9 A8     LDA #> (ofs_0x02E86E - $01)
C - - - - - 0x02462E 09:861E: 48        PHA
C - - - - - 0x02462F 09:861F: A9 5D     LDA #< (ofs_0x02E86E - $01)
C - - - - - 0x024631 09:8621: 48        PHA
C - - - - - 0x024632 09:8622: 4C E7 F5  JMP loc_0x03F5F7_swap_prg_16



tbl_8623_условие_для_перехода:
; 00 = branch, 40 = no branch
                                        .byte $40 ; 00 con_fighter_leo
                                        .byte $40 ; 01 con_fighter_raph
                                        .byte $40 ; 02 con_fighter_mike
                                        .byte $40 ; 03 con_fighter_don
                                        .byte $40 ; 04 con_fighter_casey
                                        .byte $00 ; 05 con_fighter_hot
                                        .byte $00 ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $40 ; 07 con_fighter___leo
                                        .byte $40 ; 08 con_fighter___raph
                                        .byte $40 ; 09 con_fighter___mike
                                        .byte $40 ; 0A con_fighter___don
                                        .byte $40 ; 0B con_fighter___casey
                                        .byte $00 ; 0C con_fighter___hot
                                        .byte $00 ; 0D con_fighter___shred
                                    .endif



ofs_0x024635:
C - - - - - 0x024635 09:8625: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x024638 09:8628: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
loc_862B:
C D 0 - - - 0x02463B 09:862B: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
bra_862E:
C - - - - - 0x02463E 09:862E: F0 05     BEQ bra_8635
sub_8630:
loc_8630:
C D 0 - - - 0x024640 09:8630: A0 00     LDY #con_init_anim_присесть
C - - - - - 0x024642 09:8632: 4C E7 8A  JMP loc_8AE7_выбор_начальной_анимации_персу
bra_8635:
C - - - - - 0x024645 09:8635: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x024648 09:8638: 4C 6D 84  JMP loc_846D



ofs_state_863B_05_перс_запускает_мяч:
C - - J - - 0x02464B 09:863B: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02464E 09:863E: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x024651 09:8641: B9 93 96  LDA tbl_9693_индекс,Y
C - - - - - 0x024654 09:8644: 85 00     STA ram_0000
C - - - - - 0x024656 09:8646: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024659 09:8649: D0 0A     BNE bra_8655
C - - - - - 0x02465B 09:864B: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02465E 09:864E: A9 00     LDA #$00
C - - - - - 0x024660 09:8650: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024663 09:8653: F0 0B     BEQ bra_8660    ; jmp
bra_8655:
C - - - - - 0x024665 09:8655: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024668 09:8658: 10 46     BPL bra_86A0_RTS
C - - - - - 0x02466A 09:865A: FE D0 05  INC ram_obj_anim_cnt,X ; 05D0 05D1 
loc_865D_loop:
C D 0 - - - 0x02466D 09:865D: FE D0 05  INC ram_obj_anim_cnt,X ; 05D0 05D1 
bra_8660:
C - - - - - 0x024670 09:8660: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024673 09:8663: 4A        LSR
C - - - - - 0x024674 09:8664: C9 06     CMP #$06
C - - - - - 0x024676 09:8666: B0 1C     BCS bra_8684
; C = 0
C - - - - - 0x024678 09:8668: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x02467B 09:866B: 79 D8 96  ADC tbl_96D8_индекс,Y
C - - - - - 0x02467E 09:866E: A8        TAY
C - - - - - 0x02467F 09:866F: B9 DF 96  LDA tbl_96DF,Y
C - - - - - 0x024682 09:8672: 9D 0C 04  STA ram_obj_anim_id + $0C,X ; 040C 040D 
C - - - - - 0x024685 09:8675: 18        CLC
C - - - - - 0x024686 09:8676: A9 0C     LDA #$0C
C - - - - - 0x024688 09:8678: 65 A8     ADC ram_local_obj_index
C - - - - - 0x02468A 09:867A: A8        TAY
C - - - - - 0x02468B 09:867B: 20 B5 DB  JSR sub_0x03DBC5_скопировать_данные_объекта_X_в_Y
C - - - - - 0x02468E 09:867E: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x024691 09:8681: 99 10 05  STA ram_obj_flip,Y ; 051C 051D 
bra_8684:
C - - - - - 0x024694 09:8684: 18        CLC
C - - - - - 0x024695 09:8685: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024698 09:8688: 65 00     ADC ram_0000
C - - - - - 0x02469A 09:868A: A8        TAY
C - - - - - 0x02469B 09:868B: B9 9A 96  LDA tbl_969A,Y
C - - - - - 0x02469E 09:868E: F0 11     BEQ bra_86A1
C - - - - - 0x0246A0 09:8690: C9 FF     CMP #$FF
C - - - - - 0x0246A2 09:8692: F0 9A     BEQ bra_862E
C - - - - - 0x0246A4 09:8694: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x0246A7 09:8697: B9 9B 96  LDA tbl_969A + $01,Y
C - - - - - 0x0246AA 09:869A: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x0246AD 09:869D: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_86A0_RTS:
C - - - - - 0x0246B0 09:86A0: 60        RTS
bra_86A1:
C - - - - - 0x0246B1 09:86A1: A0 06     LDY #$06
C - - - - - 0x0246B3 09:86A3: AD A6 04  LDA ram_obj_spd_Y_hi + $06
C - - - - - 0x0246B6 09:86A6: 48        PHA
C - - - - - 0x0246B7 09:86A7: 20 C7 DA  JSR sub_0x03DAD7_удалить_объект_сохранив_XY
C - - - - - 0x0246BA 09:86AA: 68        PLA
C - - - - - 0x0246BB 09:86AB: 8D A6 04  STA ram_obj_spd_Y_hi + $06
C - - - - - 0x0246BE 09:86AE: A9 80     LDA #$80
C - - - - - 0x0246C0 09:86B0: 8D 56 05  STA ram_obj_id + $06
C - - - - - 0x0246C3 09:86B3: 8E 26 05  STX ram_obj_state_hi + $06
C - - - - - 0x0246C6 09:86B6: 8A        TXA
C - - - - - 0x0246C7 09:86B7: 09 80     ORA #$80    ; флаг запущенного мяча
C - - - - - 0x0246C9 09:86B9: 8D A6 05  STA ram_05A0_obj_флаги_мяча + $06
C - - - - - 0x0246CC 09:86BC: A9 80     LDA #$80
C - - - - - 0x0246CE 09:86BE: 8D E6 05  STA ram_05E0_obj + $06
C - - - - - 0x0246D1 09:86C1: 0A        LDA #$00
C - - - - - 0x0246D2 09:86C2: 8D 04 06  STA ram_0604_plr
C - - - - - 0x0246D5 09:86C5: 8D 06 06  STA ram_plr_таймер_для_запуска_мяча
C - - - - - 0x0246D8 09:86C8: 9D 00 06  STA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x0246DB 09:86CB: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x0246DE 09:86CE: 8D 46 04  STA ram_obj_pos_X_lo + $06
C - - - - - 0x0246E1 09:86D1: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0246E4 09:86D4: 8D 16 05  STA ram_obj_flip + $06
C - - - - - 0x0246E7 09:86D7: A9 04     LDA #$04
C - - - - - 0x0246E9 09:86D9: 8D 36 05  STA ram_0530_obj_state + $06
C - - - - - 0x0246EC 09:86DC: 4C 5D 86  JMP loc_865D_loop



ofs_state_86DF_06_перс_поворачивается:
C - - J - - 0x0246EF 09:86DF: 20 38 DB  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x0246F2 09:86E2: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0246F5 09:86E5: 10 3B     BPL bra_8722_RTS
C - - - - - 0x0246F7 09:86E7: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0246FA 09:86EA: 49 40     EOR #$40
C - - - - - 0x0246FC 09:86EC: 9D 10 05  STA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0246FF 09:86EF: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024701 09:86F1: 29 04     AND #con_btn_Down
C - - - - - 0x024703 09:86F3: D0 03     BNE bra_86F8
C - - - - - 0x024705 09:86F5: 4C 6D 84  JMP loc_846D
bra_86F8:
C - - - - - 0x024708 09:86F8: A9 07     LDA #con_plr_state_сидит
C - - - - - 0x02470A 09:86FA: 20 7F 84  JSR sub_847F
C - - - - - 0x02470D 09:86FD: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024710 09:8700: 60        RTS



ofs_state_8701_07_перс_сидит:
C - - J - - 0x024711 09:8701: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024714 09:8704: 20 01 8B  JSR sub_8B01    ; возможен PLA PLA
C - - - - - 0x024717 09:8707: 20 52 89  JSR sub_8952    ; возможен PLA PLA
C - - - - - 0x02471A 09:870A: 20 76 89  JSR sub_8976_проверка_на_время_вышло    ; возможен PLA PLA
C - - - - - 0x02471D 09:870D: 20 F9 81  JSR sub_81F9_попытка_повернуть_перса
C - - - - - 0x024720 09:8710: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024723 09:8713: F0 05     BEQ bra_871A
C - - - - - 0x024725 09:8715: 88        DEY
C - - - - - 0x024726 09:8716: F0 0B     BEQ bra_8723
C - - - - - 0x024728 09:8718: D0 2E     BNE bra_8748    ; jmp
bra_871A:
C - - - - - 0x02472A 09:871A: A9 04     LDA #$04
C - - - - - 0x02472C 09:871C: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_871F:
C - - - - - 0x02472F 09:871F: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
bra_8722_RTS:
C - - - - - 0x024732 09:8722: 60        RTS
bra_8723:
C - - - - - 0x024733 09:8723: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024736 09:8726: D0 19     BNE bra_8741
C - - - - - 0x024738 09:8728: 20 30 86  JSR sub_8630
C - - - - - 0x02473B 09:872B: B5 91     LDA ram_btn_hold,X
C - - - - - 0x02473D 09:872D: 29 04     AND #con_btn_Down
C - - - - - 0x02473F 09:872F: D0 07     BNE bra_8738
C - - - - - 0x024741 09:8731: A9 04     LDA #$04
C - - - - - 0x024743 09:8733: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024746 09:8736: D0 E7     BNE bra_871F    ; jmp
bra_8738:
C - - - - - 0x024748 09:8738: B5 8E     LDA ram_btn_press,X
C - - - - - 0x02474A 09:873A: 29 C0     AND #con_btns_AB
C - - - - - 0x02474C 09:873C: F0 06     BEQ bra_8744
C - - - - - 0x02474E 09:873E: 4C 21 82  JMP loc_8221
bra_8741:
C - - - - - 0x024751 09:8741: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
bra_8744:
C - - - - - 0x024754 09:8744: 20 0D 89  JSR sub_890D    ; возможен PLA PLA
C - - - - - 0x024757 09:8747: 60        RTS
bra_8748:
C - - - - - 0x024758 09:8748: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02475B 09:874B: D0 03     BNE bra_8750
C - - - - - 0x02475D 09:874D: 4C 6D 84  JMP loc_846D
bra_8750:
C - - - - - 0x024760 09:8750: 4C 30 86  JMP loc_8630



ofs_state_8753_08_перс_делает_суперку:
; бабочка хота суперкой не является
C - - J - - 0x024763 09:8753: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
C - - - - - 0x024766 09:8756: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x024769 09:8759: 5C B3     .word ofs_делает_суперку_B35C_00_leo   ; con_fighter_leo
- D 0 - I - 0x02476B 09:875B: A8 B4     .word ofs_делает_суперку_B4A8_01_raph   ; con_fighter_raph
- D 0 - I - 0x02476D 09:875D: A5 B5     .word ofs_делает_суперку_B5A5_02_mike   ; con_fighter_mike
- D 0 - I - 0x02476F 09:875F: 78 B6     .word ofs_делает_суперку_B678_03_don   ; con_fighter_don
- D 0 - I - 0x024771 09:8761: 27 BA     .word ofs_делает_суперку_BA27_04_casey   ; con_fighter_casey
- D 0 - I - 0x024773 09:8763: DA B8     .word ofs_делает_суперку_B8DA_05_hot   ; con_fighter_hot
- D 0 - I - 0x024775 09:8765: 67 87     .word ofs_делает_суперку_8767_06_shred   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .word ofs_делает_суперку_B35C_07   ; con_fighter___leo
                                        .word ofs_делает_суперку_B4A8_08   ; con_fighter___raph
                                        .word ofs_делает_суперку_B5A5_09   ; con_fighter___mike
                                        .word ofs_делает_суперку_B678_0A   ; con_fighter___don
                                        .word ofs_делает_суперку_BA27_0B   ; con_fighter___casey
                                        .word ofs_делает_суперку_B8DA_0C   ; con_fighter___hot
                                        .word ofs_делает_суперку_8767_0D   ; con_fighter___shred
                                    .endif



ofs_делает_суперку_8767_06_shred:
ofs_делает_суперку_8767_0D:
C - - J - - 0x024777 09:8767: BD A0 04  LDA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x02477A 09:876A: D0 03     BNE bra_876F
C - - - - - 0x02477C 09:876C: 4C 25 B9  JMP loc_B925
bra_876F:
C - - - - - 0x02477F 09:876F: 4C 5E B7  JMP loc_B75E_суперка_shred



tbl_8772:
- D 0 - - - 0x024782 09:8772: 61        .byte $61   ; 00 normal
- D 0 - - - 0x024783 09:8773: 11        .byte $11   ; 01 turbo



tbl_8774:
- D 0 - - - 0x024784 09:8774: 3C        .byte $3C   ; 00 normal
- D 0 - - - 0x024785 09:8775: 2B        .byte $2B   ; 01 turbo



ofs_state_877D_0B_перс_попался_в_мясо:
C - - J - - 0x02478D 09:877D: A0 03     LDY #con_init_anim_попался_в_мясо
C - - - - - 0x02478F 09:877F: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x024792 09:8782: 20 ED 87  JSR sub_87ED
C - - - - - 0x024795 09:8785: BD 30 05  LDA ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x024798 09:8788: C9 03     CMP #$03
C - - - - - 0x02479A 09:878A: D0 60     BNE bra_87EC_RTS
C - - - - - 0x02479C 09:878C: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02479F 09:878F: D0 40     BNE bra_87D1
C - - - - - 0x0247A1 09:8791: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x0247A4 09:8794: A9 80     LDA #$80
C - - - - - 0x0247A6 09:8796: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x0247A9 09:8799: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x0247AC 09:879C: FE 60 05  INC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0247AF 09:879F: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0247B2 09:87A2: 29 03     AND #$03
C - - - - - 0x0247B4 09:87A4: D0 04     BNE bra_87AA
C - - - - - 0x0247B6 09:87A6: A9 02     LDA #$02
C - - - - - 0x0247B8 09:87A8: 85 AA     STA ram_таймер_задержки_фпс
bra_87AA:
C - - - - - 0x0247BA 09:87AA: 20 C4 87  JSR sub_87C4
C - - - - - 0x0247BD 09:87AD: A4 A9     LDY ram_global_obj_index
C - - - - - 0x0247BF 09:87AF: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x0247C2 09:87B2: C9 08     CMP #con_plr_state_делает_суперку
C - - - - - 0x0247C4 09:87B4: D0 20     BNE bra_87D6
C - - - - - 0x0247C6 09:87B6: B9 40 05  LDA ram_obj_state_lo,Y ; 0540 0541 
C - - - - - 0x0247C9 09:87B9: 4A        LSR
C - - - - - 0x0247CA 09:87BA: F0 30     BEQ bra_87EC_RTS
C - - - - - 0x0247CC 09:87BC: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0247CF 09:87BF: A9 08     LDA #$08
C - - - - - 0x0247D1 09:87C1: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_87C4:
sub_87C4:
C - - - - - 0x0247D4 09:87C4: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0247D7 09:87C7: 29 04     AND #$04
C - - - - - 0x0247D9 09:87C9: 4A        LSR
C - - - - - 0x0247DA 09:87CA: 4A        LSR
C - - - - - 0x0247DB 09:87CB: 7D 00 04  ADC ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x0247DE 09:87CE: 4C 94 DF  STA ram_obj_anim_id,X ; 0400 0401 
                                        RTS
bra_87D1:
C - - - - - 0x0247E1 09:87D1: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0247E4 09:87D4: D0 EE     BNE bra_87C4
bra_87D6:
C - - - - - 0x0247E6 09:87D6: A9 01     LDA #$01
C - - - - - 0x0247E8 09:87D8: 9D C0 04  STA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x0247EB 09:87DB: 4A        LDA #$00
C - - - - - 0x0247EC 09:87DC: 8D 0E 04  STA ram_obj_anim_id + $0E
C - - - - - 0x0247EF 09:87DF: 8D 0F 04  STA ram_obj_anim_id + $0F
C - - - - - 0x0247F2 09:87E2: A9 03     LDA #con_plr_state_получает_урон
C - - - - - 0x0247F4 09:87E4: 20 7F 84  JSR sub_847F
C - - - - - 0x0247F7 09:87E7: A9 13     LDA #con_075C_13
C - - - - - 0x0247F9 09:87E9: 4C 94 F6  JMP loc_0x03F6A4_записать_звук
bra_87EC_RTS:
C - - - - - 0x0247FC 09:87EC: 60        RTS



sub_87ED:
C - - - - - 0x0247FD 09:87ED: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x024800 09:87F0: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x024802 09:87F2: 29 03     AND #$03
C - - - - - 0x024804 09:87F4: D0 F6     BNE bra_87EC_RTS
C - - - - - 0x024806 09:87F6: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x024808 09:87F8: 29 07     AND #$07
C - - - - - 0x02480A 09:87FA: D0 63     BNE bra_885F
C - - - - - 0x02480C 09:87FC: A9 02     LDA #$02
C - - - - - 0x02480E 09:87FE: 85 AA     STA ram_таймер_задержки_фпс
C - - - - - 0x024810 09:8800: A9 04     LDA #$04
C - - - - - 0x024812 09:8802: 20 3C DE  JSR sub_0x03DE4C_корректировка_урона_с_учетом_прочности_перса
C - - - - - 0x024815 09:8805: 20 77 DE  JSR sub_0x03DE87    ; возможен PLA PLA
C - - - - - 0x024818 09:8808: A9 1E     LDA #con_075C_1E
C - - - - - 0x02481A 09:880A: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x02481D 09:880D: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x02481F 09:880F: 29 18     AND #$18
C - - - - - 0x024821 09:8811: 4A        LSR
C - - - - - 0x024822 09:8812: 4A        LSR
C - - - - - 0x024823 09:8813: 4A        LSR
C - - - - - 0x024824 09:8814: A8        TAY
C - - - - - 0x024825 09:8815: B9 CA 99  LDA tbl_99CA,Y
C - - - - - 0x024828 09:8818: 85 00     STA ram_0000
C - - - - - 0x02482A 09:881A: B9 CE 99  LDA tbl_99CE,Y
C - - - - - 0x02482D 09:881D: 85 01     STA ram_0001
C - - - - - 0x02482F 09:881F: A5 A9     LDA ram_global_obj_index
C - - - - - 0x024831 09:8821: 18        CLC
C - - - - - 0x024832 09:8822: 69 04     ADC #$04
C - - - - - 0x024834 09:8824: A8        TAY
C - - - - - 0x024835 09:8825: B9 50 05  LDA ram_obj_id,Y ; 0554 0555 
C - - - - - 0x024838 09:8828: F0 35     BEQ bra_885F    ; if con_0552_00
C - - - - - 0x02483A 09:882A: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02483D 09:882D: E9 10     SBC #$10
C - - - - - 0x02483F 09:882F: 79 10 04  ADC ram_obj_pos_Y_lo,Y ; 0414 0415 
C - - - - - 0x024842 09:8832: 6A        ROR
C - - - - - 0x024843 09:8833: 65 00     ADC ram_0000
C - - - - - 0x024845 09:8835: 48        PHA
C - - - - - 0x024846 09:8836: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x024849 09:8839: 79 40 04  ADC ram_obj_pos_X_lo,Y ; 0444 0445 
C - - - - - 0x02484C 09:883C: 6A        ROR
C - - - - - 0x02484D 09:883D: 65 01     ADC ram_0001
C - - - - - 0x02484F 09:883F: 48        PHA
C - - - - - 0x024850 09:8840: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x024852 09:8842: 29 08     AND #$08
C - - - - - 0x024854 09:8844: 4A        LSR
C - - - - - 0x024855 09:8845: 4A        LSR
C - - - - - 0x024856 09:8846: 4A        LSR
C - - - - - 0x024857 09:8847: 69 0E     ADC #$0E
C - - - - - 0x024859 09:8849: A8        TAY
C - - - - - 0x02485A 09:884A: 20 C7 DA  JSR sub_0x03DAD7_удалить_объект_сохранив_XY
C - - - - - 0x02485D 09:884D: A9 01     LDA #$01
C - - - - - 0x02485F 09:884F: 99 50 05  STA ram_obj_id,Y ; 055E 055F 
C - - - - - 0x024862 09:8852: 68        PLA
C - - - - - 0x024863 09:8853: 99 40 04  STA ram_obj_pos_X_lo,Y ; 044E 044F 
C - - - - - 0x024866 09:8856: 68        PLA
C - - - - - 0x024867 09:8857: 99 10 04  STA ram_obj_pos_Y_lo,Y ; 041E 041F 
C - - - - - 0x02486A 09:885A: A9 03     LDA #$03
C - - - - - 0x02486C 09:885C: 99 00 04  STA ram_obj_anim_id,Y ; 040E 040F 
bra_885F:
C - - - - - 0x02486F 09:885F: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024871 09:8861: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024874 09:8864: C9 20     CMP #$20
C - - - - - 0x024876 09:8866: B0 0B     BCS bra_8873
C - - - - - 0x024878 09:8868: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x02487A 09:886A: 29 07     AND #$07
C - - - - - 0x02487C 09:886C: D0 16     BNE bra_8884
C - - - - - 0x02487E 09:886E: A9 FF     LDA #$FF
C - - - - - 0x024880 09:8870: 18        CLC
C - - - - - 0x024881 09:8871: 90 0B     BCC bra_887E    ; jmp
bra_8873:
C - - - - - 0x024883 09:8873: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024886 09:8876: C9 9C     CMP #$9C
C - - - - - 0x024888 09:8878: A9 FD     LDA #$FD
C - - - - - 0x02488A 09:887A: B0 02     BCS bra_887E
C - - - - - 0x02488C 09:887C: A9 02     LDA #$02
bra_887E:
C - - - - - 0x02488E 09:887E: 7D 10 04  ADC ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024891 09:8881: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
bra_8884:
C - - - - - 0x024894 09:8884: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024896 09:8886: 20 0C D2  JSR sub_0x03D21C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x024899 09:8889: C9 1C     CMP #$1C
C - - - - - 0x02489B 09:888B: B0 09     BCS bra_8896
C - - - - - 0x02489D 09:888D: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x0248A0 09:8890: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x0248A3 09:8893: 4C 9C 88  JMP loc_889C
bra_8896:
C - - - - - 0x0248A6 09:8896: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x0248A9 09:8899: D9 40 04  CMP ram_obj_pos_X_lo,Y ; 0440 0441 
loc_889C:
C D 0 - - - 0x0248AC 09:889C: A9 02     LDA #$02
C - - - - - 0x0248AE 09:889E: 90 02     BCC bra_88A2
C - - - - - 0x0248B0 09:88A0: A9 FD     LDA #$FD
bra_88A2:
C - - - - - 0x0248B2 09:88A2: 7D 80 04  ADC ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x0248B5 09:88A5: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x0248B8 09:88A8: 60        RTS



ofs_state_88A9_0C_перс_исполняет_победную_анимацию:
C - - J - - 0x0248B9 09:88A9: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x0248BC 09:88AC: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0248BF 09:88AF: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x0248C2 09:88B2: B8 88     .word ofs_победная_анимация_88B8_00
- D 0 - I - 0x0248C4 09:88B4: D1 88     .word ofs_победная_анимация_88D1_01
- D 0 - I - 0x0248C6 09:88B6: 00 89     .word ofs_победная_анимация_8900_02



ofs_победная_анимация_88B8_00:
C - - J - - 0x0248C8 09:88B8: A9 90     LDA #$90
C - - - - - 0x0248CA 09:88BA: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0248CD 09:88BD: A9 00     LDA #$00
C - - - - - 0x0248CF 09:88BF: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x0248D2 09:88C2: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0248D5 09:88C5: 20 A3 DF  JSR sub_0x03DFB3
C - - - - - 0x0248D8 09:88C8: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x0248DB 09:88CB: B9 5E E1  LDA tbl_0x03E16E_звук_выбора_перса,Y
C - - - - - 0x0248DE 09:88CE: 4C 94 F6  JMP loc_0x03F6A4_записать_звук



ofs_победная_анимация_88D1_01:
C - - J - - 0x0248E1 09:88D1: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0248E4 09:88D4: F0 21     BEQ bra_88F7
C - - - - - 0x0248E6 09:88D6: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0248E9 09:88D9: C9 30     CMP #$30
C - - - - - 0x0248EB 09:88DB: D0 0D     BNE bra_88EA
C - - - - - 0x0248ED 09:88DD: A9 2B     LDA #con_sfx_шум_зрителей
C - - - - - 0x0248EF 09:88DF: A4 95     LDY ram_0095_стадия_игры
C - - - - - 0x0248F1 09:88E1: C0 10     CPY #$10
C - - - - - 0x0248F3 09:88E3: 90 02     BCC bra_88E7
C - - - - - 0x0248F5 09:88E5: A9 3F     LDA #con_music_bonus_game_win
bra_88E7:
C - - - - - 0x0248F7 09:88E7: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_88EA:
C - - - - - 0x0248FB 09:88EB: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
C - - - - - 0x024900 09:88F0: A8        TAY
                                        LDA tbl_0x03E750,Y
                                        TAY
C - - - - - 0x024901 09:88F1: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x024904 09:88F4: 4C 42 B1  JMP loc_B142
bra_88F7:
C - - - - - 0x024907 09:88F7: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02490A 09:88FA: A9 80     LDA #$80
C - - - - - 0x02490C 09:88FC: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02490F 09:88FF: 60        RTS



ofs_победная_анимация_8900_02:
C - - J - - 0x024910 09:8900: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024913 09:8903: D0 07     BNE bra_890C_RTS
C - - - - - 0x024915 09:8905: A9 00     LDA #$00
C - - - - - 0x024917 09:8907: 8D 24 06  STA ram_0624_plr
                                       ;LDA #con_0095_bonus_game_win
C - - - - - 0x02491A 09:890A: E6 95     INC ram_0095_стадия_игры    ; 19 -> 1A
bra_890C_RTS:
C - - - - - 0x02491C 09:890C: 60        RTS



sub_890D:
C - - - - - 0x02491D 09:890D: A0 06     LDY #$06
C - - - - - 0x02491F 09:890F: AD A6 05  LDA ram_05A0_obj_флаги_мяча + $06
C - - - - - 0x024922 09:8912: 10 06     BPL bra_891A
C - - - - - 0x024924 09:8914: 29 01     AND #$01
C - - - - - 0x024926 09:8916: C5 AD     CMP ram_00AD
C - - - - - 0x024928 09:8918: D0 0E     BNE bra_8928
bra_891A:
C - - - - - 0x02492A 09:891A: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02492C 09:891C: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x02492F 09:891F: C9 08     CMP #con_plr_state_делает_суперку
C - - - - - 0x024931 09:8921: F0 05     BEQ bra_8928
C - - - - - 0x024933 09:8923: B9 10 06  LDA ram_plr_флаг_индекса_атаки,Y ; 0610 0611 
C - - - - - 0x024936 09:8926: F0 E4     BEQ bra_890C_RTS
bra_8928:
C - - - - - 0x024938 09:8928: 20 0C D2  JSR sub_0x03D21C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x02493B 09:892B: C9 30     CMP #$30
C - - - - - 0x02493D 09:892D: B0 DD     BCS bra_890C_RTS
C - - - - - 0x02493F 09:892F: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0440 0441 0446 
C - - - - - 0x024942 09:8932: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x024945 09:8935: A9 00     LDA #$00
; con_btn_Right     con_btn_Left
C - - - - - 0x024947 09:8937: 69 01     ADC #$01
C - - - - - 0x024949 09:8939: 85 00     STA ram_0000
C - - - - - 0x02494B 09:893B: B5 91     LDA ram_btn_hold,X
C - - - - - 0x02494D 09:893D: 29 03     AND #con_btns_LR
C - - - - - 0x02494F 09:893F: C5 00     CMP ram_0000
C - - - - - 0x024951 09:8941: D0 C9     BNE bra_890C_RTS
C - - - - - 0x024953 09:8943: 68        PLA
C - - - - - 0x024954 09:8944: 68        PLA
C - - - - - 0x024955 09:8945: A0 07     LDY #con_init_anim_блокирование_стоя
C - - - - - 0x024957 09:8947: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x02495A 09:894A: C9 07     CMP #con_plr_state_сидит
C - - - - - 0x02495C 09:894C: D0 01     BNE bra_894F
C - - - - - 0x02495E 09:894E: C8        LDY #con_init_anim_блокирование_сидя
bra_894F:
C - - - - - 0x02495F 09:894F: 4C E7 8A  JMP loc_8AE7_выбор_начальной_анимации_персу



sub_8952:
C - - - - - 0x024962 09:8952: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024964 09:8954: B9 30 05  LDA ram_0530_obj_state,Y ; 0530 0531 
C - - - - - 0x024967 09:8957: C9 04     CMP #$04
C - - - - - 0x024969 09:8959: D0 13     BNE bra_896E_RTS
C - - - - - 0x02496B 09:895B: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x02496E 09:895E: C9 05     CMP #$05
C - - - - - 0x024970 09:8960: 90 0C     BCC bra_896E_RTS
C - - - - - 0x024972 09:8962: 68        PLA
C - - - - - 0x024973 09:8963: 68        PLA
C - - - - - 0x024974 09:8964: A9 0C     LDA #con_plr_state_победная_анимация
C - - - - - 0x024976 09:8966: 9D 20 05  STA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x024979 09:8969: A9 00     LDA #$00
C - - - - - 0x02497B 09:896B: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
bra_896E_RTS:
C - - - - - 0x02497E 09:896E: 60        RTS



sub_8976_проверка_на_время_вышло:
C - - - - - 0x024986 09:8976: AD 72 06  LDA ram_время_десятки
C - - - - - 0x024989 09:8979: 0D 73 06  ORA ram_время_единицы
C - - - - - 0x02498C 09:897C: D0 F0     BNE bra_896E_RTS    ; bzk optimize
C - - - - - 0x02498E 09:897E: 68        PLA
C - - - - - 0x02498F 09:897F: 68        PLA
C - - - - - 0x024990 09:8980: 60        RTS



ofs_061_8981_04_труп:
C - - J - - 0x024991 09:8981: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x024994 09:8984: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x024997 09:8987: 93 89     .word ofs_056_8993_00
- D 0 - I - 0x024999 09:8989: E8 89     .word ofs_056_89E8_01
- D 0 - I - 0x02499B 09:898B: E8 89     .word ofs_056_89E8_02
- D 0 - I - 0x02499D 09:898D: E8 89     .word ofs_056_89E8_03
- D 0 - I - 0x02499F 09:898F: 81 8A     .word ofs_056_8A81_04
- D 0 - I - 0x0249A1 09:8991: BC 8A     .word ofs_056_8ABC_05



ofs_056_8993_00:
C - - J - - 0x0249A3 09:8993: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x0249A6 09:8996: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x0249A9 09:8999: A9 80     LDA #$80    ; флаг замедления фпс после смерти
C - - - - - 0x0249AB 09:899B: 85 AA     STA ram_таймер_задержки_фпс
C - - - - - 0x0249AD 09:899D: 0A        LDA #$00
C - - - - - 0x0249AE 09:899E: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x0249B1 09:89A1: A9 1E     LDA #$1E
C - - - - - 0x0249B3 09:89A3: 9D F0 04  STA ram_04F0_obj,X ; 04F0 04F1 
C - - - - - 0x0249B6 09:89A6: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x0249B9 09:89A9: 20 65 DD  JSR sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
C - - - - - 0x0249BC 09:89AC: A9 01     LDA #$01
C - - - - - 0x0249BE 09:89AE: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x0249C1 09:89B1: 20 65 DD  JSR sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
C - - - - - 0x0249C4 09:89B4: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x0249C7 09:89B7: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x0249CA 09:89BA: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x0249CD 09:89BD: 9D C0 04  STA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x0249D0 09:89C0: A4 A9     LDY ram_global_obj_index
C - - - - - 0x0249D2 09:89C2: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x0249D5 09:89C5: C9 01     CMP #con_fighter_raph
C - - - - - 0x0249D7 09:89C7: F0 08     BEQ bra_89D1
                                    .else
                                        CMP #con_fighter_raph
                                        BEQ bra_89D1
                                        CMP #con_fighter___raph
                                        BEQ bra_89D1
                                    .endif
C - - - - - 0x0249D9 09:89C9: BD E0 04  LDA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x0249DC 09:89CC: 10 03     BPL bra_89D1
C - - - - - 0x0249DE 09:89CE: 20 65 DD  JSR sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
bra_89D1:
loc_89D1:
C D 0 - - - 0x0249E1 09:89D1: BC 20 05  LDY ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x0249E4 09:89D4: B9 77 93  LDA tbl_9377,Y
C - - - - - 0x0249E7 09:89D7: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x0249EA 09:89DA: A9 80     LDA #$80
C - - - - - 0x0249EC 09:89DC: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x0249EF 09:89DF: FE 20 05  INC ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x0249F2 09:89E2: A9 82     LDA #$82
C - - - - - 0x0249F4 09:89E4: 9D 00 05  STA ram_0500_obj,X ; 0500 0501 
bra_89E7_RTS:
C - - - - - 0x0249F7 09:89E7: 60        RTS



ofs_056_89E8_01:
ofs_056_89E8_02:
ofs_056_89E8_03:
C - - J - - 0x0249F8 09:89E8: BD F0 04  LDA ram_04F0_obj,X ; 04F0 04F1 
C - - - - - 0x0249FB 09:89EB: F0 0E     BEQ bra_89FB
C - - - - - 0x0249FD 09:89ED: DE F0 04  DEC ram_04F0_obj,X ; 04F0 04F1 
C - - - - - 0x024A00 09:89F0: D0 09     BNE bra_89FB
C - - - - - 0x024A02 09:89F2: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x024A05 09:89F5: B9 D2 99  LDA tbl_99D2_звук_крика_после_смерти,Y
C - - - - - 0x024A08 09:89F8: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_89FB:
C - - - - - 0x024A0B 09:89FB: A9 50     LDA #$50
C - - - - - 0x024A0D 09:89FD: BC 10 04  LDY ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024A10 09:8A00: C0 60     CPY #$60
C - - - - - 0x024A12 09:8A02: B0 02     BCS bra_8A06
C - - - - - 0x024A14 09:8A04: A9 60     LDA #$60
bra_8A06:
C - - - - - 0x024A16 09:8A06: 20 58 DC  JSR sub_0x03DC68_добавить_A_00_к_spd_Z
C - - - - - 0x024A19 09:8A09: A0 09     LDY #con_init_anim_получение_урона_2
C - - - - - 0x024A1B 09:8A0B: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x024A1E 09:8A0E: 4A        LSR
C - - - - - 0x024A1F 09:8A0F: D0 09     BNE bra_8A1A
C - - - - - 0x024A21 09:8A11: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024A24 09:8A14: 69 00     ADC #$00
C - - - - - 0x024A26 09:8A16: C9 04     CMP #$04
C - - - - - 0x024A28 09:8A18: 90 08     BCC bra_8A22
bra_8A1A:
C - - - - - 0x024A2A 09:8A1A: BD C0 05  LDA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x024A2D 09:8A1D: F0 04     BEQ bra_8A23
C - - - - - 0x024A2F 09:8A1F: DE C0 05  DEC ram_obj_anim_timer,X ; 05C0 05C1 
bra_8A22:
C - - - - - 0x024A32 09:8A22: C8        LDY #con_init_anim_падение_после_броска
bra_8A23:
C - - - - - 0x024A33 09:8A23: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x024A36 09:8A26: BD B0 04  LDA ram_obj_spd_Y_lo,X ; 04B0 04B1
C - - - - - 0x024A39 09:8A29: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481
C - - - - - 0x024A3C 09:8A2C: BD C0 04  LDA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x024A3F 09:8A2F: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x024A42 09:8A32: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024A45 09:8A35: 30 B0     BMI bra_89E7_RTS
C - - - - - 0x024A47 09:8A37: A9 C0     LDA #$C0
C - - - - - 0x024A49 09:8A39: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024A4C 09:8A3C: B0 7D     BCS bra_8ABB_RTS
C - - - - - 0x024A4E 09:8A3E: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024A51 09:8A41: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
; A = 00
C - - - - - 0x024A54 09:8A44: 85 AA     STA ram_таймер_задержки_фпс
C - - - - - 0x024A56 09:8A46: A9 10     LDA #$10
C - - - - - 0x024A58 09:8A48: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x024A5B 09:8A4B: BC 20 05  LDY ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x024A5E 09:8A4E: C0 03     CPY #$03
C - - - - - 0x024A60 09:8A50: B0 0E     BCS bra_8A60
C - - - - - 0x024A62 09:8A52: B9 BE 8A  LDA tbl_8ABF - $01,Y
C - - - - - 0x024A65 09:8A55: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x024A68 09:8A58: A9 20     LDA #$20
C - - - - - 0x024A6A 09:8A5A: 8D 30 06  STA ram_0630_таймер
C - - - - - 0x024A6D 09:8A5D: 4C D1 89  JMP loc_89D1
bra_8A60:
C - - - - - 0x024A70 09:8A60: A9 40     LDA #$40
C - - - - - 0x024A72 09:8A62: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024A75 09:8A65: 85 98     STA ram_0098_flag
C - - - - - 0x024A77 09:8A67: FE 20 05  INC ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x024A7A 09:8A6A: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024A7C 09:8A6C: B9 30 05  LDA ram_0530_obj_state,Y ; 0530 0531 
C - - - - - 0x024A7F 09:8A6F: C9 04     CMP #$04
C - - - - - 0x024A81 09:8A71: F0 48     BEQ bra_8ABB_RTS
C - - - - - 0x024A83 09:8A73: A6 A9     LDX ram_global_obj_index
C - - - - - 0x024A85 09:8A75: FE 49 06  INC ram_plr_колво_побед_в_раундах,X ; 0649 064A 
C - - - - - 0x024A8E 09:8A7E: 4C 3F EB  JMP loc_0x03EB4F



ofs_056_8A81_04:
C - - J - - 0x024A91 09:8A81: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x024A94 09:8A84: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024A97 09:8A87: F0 1D     BEQ bra_8AA6
C - - - - - 0x024A99 09:8A89: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024A9B 09:8A8B: B9 30 05  LDA ram_0530_obj_state,Y ; 0530 0531 
C - - - - - 0x024A9E 09:8A8E: C9 04     CMP #$04
C - - - - - 0x024AA0 09:8A90: F0 0C     BEQ bra_8A9E
C - - - - - 0x024AA2 09:8A92: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024AA5 09:8A95: C9 30     CMP #$30
C - - - - - 0x024AA7 09:8A97: D0 05     BNE bra_8A9E
C - - - - - 0x024AA9 09:8A99: A9 2A     LDA #con_sfx_увеличить_счетчик_побед_в_бою
C - - - - - 0x024AAB 09:8A9B: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_8A9E:
C - - - - - 0x024AAE 09:8A9E: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024AB1 09:8AA1: A0 0A     LDY #con_init_anim_падение_после_броска
C - - - - - 0x024AB3 09:8AA3: 4C E7 8A  JMP loc_8AE7_выбор_начальной_анимации_персу
bra_8AA6:
C - - - - - 0x024AB6 09:8AA6: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024AB8 09:8AA8: B9 30 05  LDA ram_0530_obj_state,Y ; 0530 0531 
C - - - - - 0x024ABB 09:8AAB: C9 04     CMP #$04
C - - - - - 0x024ABD 09:8AAD: D0 06     BNE bra_8AB5
C - - - - - 0x024ABF 09:8AAF: A0 04     LDY #$04
C - - - - - 0x024AC1 09:8AB1: A9 08     LDA #$08
C - - - - - 0x024AC3 09:8AB3: 85 95     STA ram_0095_стадия_игры
bra_8AB5:
C - - - - - 0x024AC5 09:8AB5: 8C 71 06  STY ram_0671
C - - - - - 0x024AC8 09:8AB8: FE 20 05  INC ram_obj_state_hi,X ; 0520 0521 
bra_8ABB_RTS:
C - - - - - 0x024ACB 09:8ABB: 60        RTS



ofs_056_8ABC_05:
; bzk optimize, хотя бы прыгнуть на другой JMP, а этот удалить
C - - J - - 0x024ACC 09:8ABC: 4C 67 D0  JMP loc_0x03DB48_очистить_spd_X_и_spd_Z



tbl_8ABF:
- D 0 - - - 0x024ACF 09:8ABF: 21        .byte con_075C_21   ; 01
- D 0 - - - 0x024AD0 09:8AC0: 22        .byte con_075C_22   ; 02



sub_8AC1:
; A = 00 01
    ; 00 = атака рукой
    ; 01 = атака ногой
C - - - - - 0x024AD1 09:8AC1: 85 14     STA ram_0014
C - - - - - 0x024AD3 09:8AC3: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024AD5 09:8AC5: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x024AD8 09:8AC8: C9 A6     CMP #$A6
C - - - - - 0x024ADA 09:8ACA: A9 1C     LDA #con_колво_персов * $04     ; для антиэйра
C - - - - - 0x024ADC 09:8ACC: 90 13     BCC bra_8AE1
C - - - - - 0x024ADE 09:8ACE: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x024AE1 09:8AD1: 46 14     LSR ram_0014
C - - - - - 0x024AE3 09:8AD3: B9 7A 93  LDA tbl_937A,Y
C - - - - - 0x024AE6 09:8AD6: B0 03     BCS bra_8ADB
C - - - - - 0x024AE8 09:8AD8: B9 81 93  LDA tbl_9381,Y
bra_8ADB:
C - - - - - 0x024AEB 09:8ADB: C5 13     CMP ram_0013
C - - - - - 0x024AED 09:8ADD: B0 07     BCS bra_8AE6_RTS
C - - - - - 0x024AEF 09:8ADF: A9 07     LDA #con_колво_персов    ; для дальней атакой рукой/ногой
bra_8AE1:
C - - - - - 0x024AF1 09:8AE1: 18        CLC
C - - - - - 0x024AF2 09:8AE2: 7D 50 05  ADC ram_obj_id,X ; 0550 0551 
C - - - - - 0x024AF5 09:8AE5: A8        TAY
bra_8AE6_RTS:
C - - - - - 0x024AF6 09:8AE6: 60        RTS



sub_8AE7_выбор_начальной_анимации_персу:
loc_8AE7_выбор_начальной_анимации_персу:
sub_0x024AF7_выбор_начальной_анимации_персу:
; con_колво_персов
C D 0 - - - 0x024AF7 09:8AE7: 98        TYA
                                    .if con_новые_персы = $00
C - - - - - 0x024AF8 09:8AE8: 85 00     STA ram_0000
; * 07
C - - - - - 0x024AFA 09:8AEA: 0A        ASL
C - - - - - 0x024AFB 09:8AEB: 0A        ASL
C - - - - - 0x024AFC 09:8AEC: 0A        ASL
C - - - - - 0x024AFD 09:8AED: 38        SEC
C - - - - - 0x024AFE 09:8AEE: E5 00     SBC ram_0000
C - - - - - 0x024B00 09:8AF0: 18        CLC
C - - - - - 0x024B01 09:8AF1: 7D 50 05  ADC ram_obj_id,X ; 0550 0551 
C - - - - - 0x024B04 09:8AF4: A8        TAY
C - - - - - 0x024B05 09:8AF5: B9 E8 98  LDA tbl_98E8,Y
                                    .else
                                        CMP #$10
                                        PHP ; запомнить было ли < 10
                                        AND #$0F
                                        STA ram_0000
; * 0E
                                        ASL
                                        ASL
                                        ASL
                                        ASL
                                        SEC
                                        SBC ram_0000
                                        SBC ram_0000
                                        CLC
                                        ADC ram_obj_id,X ; 0550 0551 
                                        TAY
                                        PLP
                                        BCS bra_8AF7
                                        LDA tbl_98E8,Y  ; 00-0F
                                        BCC bra_8AF8    ; jmp
bra_8AF7:
                                        LDA tbl_9958,Y  ; 10+
bra_8AF8:
                                    .endif
C - - - - - 0x024B08 09:8AF8: 4C 94 DF  STA ram_obj_anim_id,X ; 0400 0401 
                                        RTS



bra_8B00_RTS:
C - - - - - 0x024B10 09:8B00: 60        RTS



sub_8B01:
C - - - - - 0x024B11 09:8B01: BD 10 06  LDA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x024B14 09:8B04: F0 FA     BEQ bra_8B00_RTS
C - - - - - 0x024B16 09:8B06: 68        PLA
C - - - - - 0x024B17 09:8B07: 68        PLA
C - - - - - 0x024B18 09:8B08: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x024B1B 09:8B0B: C9 01     CMP #con_plr_state_в_прыжке
C - - - - - 0x024B1D 09:8B0D: D0 0F     BNE bra_8B1E
C - - - - - 0x024B1F 09:8B0F: 4C A1 8B  JMP loc_8BA1
bra_8B1E:
C - - - - - 0x024B2E 09:8B1E: 20 6A D0  JSR sub_0x03DB4C_очистить_spd_X
C - - - - - 0x024B31 09:8B21: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024B34 09:8B24: BC 16 06  LDY ram_plr_этап_удара,X ; 0616 0617 
C - - - - - 0x024B37 09:8B27: BD 12 06  LDA ram_plr_индекс_атаки,X ; 0612 0613 
C - - - - - 0x024B3A 09:8B2A: C9 09     CMP #con_0612_черепаха_нога_сидя_leo
C - - - - - 0x024B3C 09:8B2C: D0 06     BNE bra_8B34_это_не_подкат
; if con_fighter_leo делает подкат
C - - - - - 0x024B3E 09:8B2E: B9 9C 99  LDA tbl_999C,Y
C - - - - - 0x024B41 09:8B31: 4C 9E 8B  JMP loc_8B9E
bra_8B34_это_не_подкат:
C - - - - - 0x024B44 09:8B34: C9 0D     CMP #con_0612_черепаха_деш_ногой
C - - - - - 0x024B46 09:8B36: F0 04     BEQ bra_8B3C_деш
C - - - - - 0x024B48 09:8B38: C9 0A     CMP #con_0612_черепаха_деш_локтем
C - - - - - 0x024B4A 09:8B3A: D0 28     BNE bra_8B64_это_не_деш
bra_8B3C_деш:
; if черепаха делает деш ногой/локтем
C - - - - - 0x024B4C 09:8B3C: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024B4F 09:8B3F: C9 B0     CMP #con_координата_пола
C - - - - - 0x024B51 09:8B41: B0 05     BCS bra_8B48
C - - - - - 0x024B53 09:8B43: A9 D8     LDA #$D8
C - - - - - 0x024B55 09:8B45: 20 54 DC  JSR sub_0x03DC64_добавить_A_FF_к_spd_Z
bra_8B48:
C - - - - - 0x024B58 09:8B48: BC 16 06  LDY ram_plr_этап_удара,X ; 0616 0617 
C - - - - - 0x024B5B 09:8B4B: C0 05     CPY #$05
C - - - - - 0x024B5D 09:8B4D: B0 52     BCS bra_8BA1
C - - - - - 0x024B5F 09:8B4F: 88        DEY
C - - - - - 0x024B60 09:8B50: D0 0E     BNE bra_8B60
C - - - - - 0x024B62 09:8B52: A9 FE     LDA #$FE
C - - - - - 0x024B64 09:8B54: AC 26 01  LDY ram_option_speed
C - - - - - 0x024B67 09:8B57: F0 02     BEQ bra_8B5B
C - - - - - 0x024B69 09:8B59: A9 FD     LDA #$FD
bra_8B5B:
C - - - - - 0x024B6B 09:8B5B: A0 C0     LDY #$C0
C - - - - - 0x024B6D 09:8B5D: 20 D6 DC  JSR sub_0x03DCE6_запись_spd_Z
bra_8B60:
C - - - - - 0x024B70 09:8B60: A9 03     LDA #$03
C - - - - - 0x024B72 09:8B62: D0 3A     BNE bra_8B9E    ; jmp
bra_8B64_это_не_деш:
C - - - - - 0x024B74 09:8B64: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x024B77 09:8B67: C9 01     CMP #con_fighter_raph
C - - - - - 0x024B79 09:8B69: D0 36     BNE bra_8BA1
                                    .else
                                        CMP #con_fighter_raph
                                        BEQ bra_8B6B_raph
                                        CMP #con_fighter___raph
                                        BNE bra_8BA1
bra_8B6B_raph:
                                    .endif
; con_fighter_raph
; con_fighter___raph
C - - - - - 0x024B7B 09:8B6B: BD 12 06  LDA ram_plr_индекс_атаки,X ; 0612 0613 
C - - - - - 0x024B7E 09:8B6E: F0 06     BEQ bra_8B76    ; if con_0612_черепаха_рука_дальняя
C - - - - - 0x024B80 09:8B70: C9 08     CMP #con_0612_черепаха_нога_дальняя_raph
C - - - - - 0x024B82 09:8B72: D0 2D     BNE bra_8BA1
C - - - - - 0x024B84 09:8B74: F0 0F     BEQ bra_8B85    ; jmp
bra_8B76:
C - - - - - 0x024B86 09:8B76: 88        DEY
C - - - - - 0x024B87 09:8B77: D0 28     BNE bra_8BA1
C - - - - - 0x024B89 09:8B79: BD 14 06  LDA ram_plr_время_анимации_удара,X ; 0614 0615 
C - - - - - 0x024B8C 09:8B7C: C9 04     CMP #$04
C - - - - - 0x024B8E 09:8B7E: A9 02     LDA #$02
C - - - - - 0x024B90 09:8B80: B0 1C     BCS bra_8B9E
C - - - - - 0x024B92 09:8B82: 4A        LSR
C - - - - - 0x024B93 09:8B83: D0 19     BNE bra_8B9E
bra_8B85:
C - - - - - 0x024B95 09:8B85: C0 03     CPY #$03
C - - - - - 0x024B97 09:8B87: B0 18     BCS bra_8BA1
C - - - - - 0x024B99 09:8B89: 88        DEY
C - - - - - 0x024B9A 09:8B8A: D0 0C     BNE bra_8B98
C - - - - - 0x024B9C 09:8B8C: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024B9F 09:8B8F: D0 07     BNE bra_8B98
C - - - - - 0x024BA1 09:8B91: A9 FE     LDA #$FE
C - - - - - 0x024BA3 09:8B93: A0 C0     LDY #$C0
C - - - - - 0x024BA5 09:8B95: 20 D6 DC  JSR sub_0x03DCE6_запись_spd_Z
bra_8B98:
C - - - - - 0x024BA8 09:8B98: BC 16 06  LDY ram_plr_этап_удара,X ; 0616 0617 
C - - - - - 0x024BAB 09:8B9B: B9 96 99  LDA tbl_9996,Y
bra_8B9E:
loc_8B9E:
C D 0 - - - 0x024BAE 09:8B9E: 20 7D D1  JSR sub_0x03D18D
bra_8BA1:
loc_8BA1:
C D 0 - - - 0x024BB1 09:8BA1: DE 14 06  DEC ram_plr_время_анимации_удара,X ; 0614 0615 
C - - - - - 0x024BB4 09:8BA4: 10 1F     BPL bra_8BC5
C - - - - - 0x024BB6 09:8BA6: FE 16 06  INC ram_plr_этап_удара,X ; 0616 0617 
C D 0 - - - 0x024BB9 09:8BA9: 20 C5 8B  JMP loc_8BC5
bra_8BC5:
; (!) код должен находиться в 8000-9FFF
                                       ;LDA #$07
                                       ;STA $8000
                                        LDA #con_prg_bank + $0C
                                        STA $8001
                                        JSR sub_0x024BD5_анимации___атаки___звуки
                                       ;LDA #$07
                                       ;STA $8000
                                        LDA #con_prg_bank + $13
                                        STA $8001
                                        RTS



loc_8BC5:
; (!) код должен находиться в 8000-9FFF
                                       ;LDA #$07
                                       ;STA $8000
                                        LDA #con_prg_bank + $0C
                                        STA $8001
                                        JSR sub_0x024BD5_анимации___атаки___звуки
C - - - - - 0x024BBC 09:8BAC: C8        INY
C - - - - - 0x024BBD 09:8BAD: B1 00     LDA (ram_0000),Y
C - - - - - 0x024BBF 09:8BAF: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x024BC2 09:8BB2: 9D 14 06  STA ram_plr_время_анимации_удара,X ; 0614 0615 
                                       ;LDA #$07
                                       ;STA $8000
                                        LDA #con_prg_bank + $13
                                        STA $8001
                                        RTS



ofs_state_8C18_03_перс_получает_урон:
C - - J - - 0x024C28 09:8C18: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024C2B 09:8C1B: D0 08     BNE bra_8C25
C - - - - - 0x024C2D 09:8C1D: A9 00     LDA #$00
C - - - - - 0x024C2F 09:8C1F: 9D 26 06  STA ram_0626_plr,X ; 0626 0627 
C - - - - - 0x024C32 09:8C22: 20 3A 8F  JSR sub_8F3A
bra_8C25:
C - - - - - 0x024C35 09:8C25: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024C38 09:8C28: BD C0 04  LDA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x024C3B 09:8C2B: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x024C3E 09:8C2E: BC 8C     .word ofs_получает_урон_8CBC_00
- D 0 - I - 0x024C40 09:8C30: 55 8C     .word ofs_получает_урон_8C55_01
- D 0 - I - 0x024C42 09:8C32: D9 8C     .word ofs_получает_урон_8CD9_02
- D 0 - I - 0x024C44 09:8C34: E8 8C     .word ofs_получает_урон_8CE8_03
- D 0 - I - 0x024C46 09:8C36: 0E 8D     .word ofs_получает_урон_8D0E_04
- D 0 - I - 0x024C48 09:8C38: 45 8D     .word ofs_получает_урон_8D45_05
- D 0 - I - 0x024C4A 09:8C3A: 22 8E     .word ofs_получает_урон_8E22_06
- D 0 - I - 0x024C4C 09:8C3C: 38 8E     .word ofs_получает_урон_8E38_07
- D 0 - I - 0x024C4E 09:8C3E: CA 8E     .word ofs_получает_урон_8ECA_08



ofs_получает_урон_8C55_01:
                                       ;LDY ram_obj_state_lo,X
C - - J - - 0x024C65 09:8C55: D0 1F     BNE bra_8C76
loc_8C57:
C D 0 - - - 0x024C67 09:8C57: 20 63 8F  JSR sub_8F63
C - - - - - 0x024C6A 09:8C5A: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024C6D 09:8C5D: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x024C70 09:8C60: 4A        LSR
C - - - - - 0x024C71 09:8C61: 4A        LSR
C - - - - - 0x024C72 09:8C62: A8        TAY
C - - - - - 0x024C73 09:8C63: B9 6B 8F  LDA tbl_8F6B,Y
C - - - - - 0x024C76 09:8C66: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024C79 09:8C69: A9 03     LDA #$03
C - - - - - 0x024C7B 09:8C6B: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024C7E 09:8C6E: A9 00     LDA #$00
C - - - - - 0x024C80 09:8C70: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C D 0 - - - 0x024C5C 09:8C4C: A9 14     LDA #$14
C - - - - - 0x024C5E 09:8C4E: 9D F0 05  STA ram_05F0_obj,X ; 05F0 05F1 
C - - - - - 0x024C61 09:8C51: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024C64 09:8C54: 60        RTS
bra_8C76:
C - - - - - 0x024C86 09:8C76: A8        TAY
C - - - - - 0x024C87 09:8C77: 88        DEY
C - - - - - 0x024C88 09:8C78: D0 39     BNE bra_8CB3
C - - - - - 0x024C8A 09:8C7A: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024C8D 09:8C7D: B0 27     BCS bra_8CA6
C - - - - - 0x024C8F 09:8C7F: A9 81     LDA #$81
C - - - - - 0x024C91 09:8C81: 20 6A D1  JSR sub_0x03D17A
C - - - - - 0x024C94 09:8C84: A0 0F     LDY #con_init_anim_получение_урона_1
C - - - - - 0x024C96 09:8C86: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024C99 09:8C89: 30 0C     BMI bra_8C97
C - - - - - 0x024C9B 09:8C8B: A0 09     LDY #con_init_anim_получение_урона_2
C - - - - - 0x024C9D 09:8C8D: C9 02     CMP #$02
C - - - - - 0x024C9F 09:8C8F: 90 06     BCC bra_8C97
C - - - - - 0x024CA1 09:8C91: A0 06     LDY #con_init_anim_получение_урона_3
C - - - - - 0x024CA3 09:8C93: C9 04     CMP #$04
C - - - - - 0x024CA5 09:8C95: B0 03     BCS bra_8C9A
bra_8C97:
C - - - - - 0x024CA7 09:8C97: 4C E7 8A  JMP loc_8AE7_выбор_начальной_анимации_персу
bra_8C9A:
C - - - - - 0x024CAA 09:8C9A: BD 50 05  LDA ram_флаг_черепахи,X
C - - - - - 0x024CAF 09:8C9F: B0 1A     BNE bra_8CBB_RTS    ; if не черепаха
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
; con_fighter_don
C - - - - - 0x024CB1 09:8CA1: A0 00     LDY #con_DFE6_00
C - - - - - 0x024CB3 09:8CA3: 4C 4F DF  JMP loc_0x03DF5F
bra_8CA6:
C - - - - - 0x024CB6 09:8CA6: A9 08     LDA #$08
C - - - - - 0x024CB8 09:8CA8: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024CBB 09:8CAB: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024CBE 09:8CAE: A0 00     LDY #con_init_anim_присесть
C - - - - - 0x024CC0 09:8CB0: 4C E7 8A  JMP loc_8AE7_выбор_начальной_анимации_персу
bra_8CB3:
C - - - - - 0x024CC3 09:8CB3: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024CC6 09:8CB6: D0 03     BNE bra_8CBB_RTS
C - - - - - 0x024CC8 09:8CB8: 4C AB 8F  JMP loc_8FAB
bra_8CBB_RTS:
C - - - - - 0x024CCB 09:8CBB: 60        RTS



ofs_получает_урон_8CBC_00:
                                       ;LDY ram_obj_state_lo,X
C - - J - - 0x024CCC 09:8CBC: F0 1D     BEQ bra_8CDB
C - - - - - 0x024CCE 09:8CBE: A0 0F     LDY #con_init_anim_получение_урона_1
bra_8CC0:
loc_8CC0:
C D 0 - - - 0x024CD0 09:8CC0: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x024CD3 09:8CC3: DE D0 04  DEC ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x024CD6 09:8CC6: F0 0E     BEQ bra_8CD6
C - - - - - 0x024CD8 09:8CC8: BD D0 04  LDA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x024CDB 09:8CCB: C9 08     CMP #$08
C - - - - - 0x024CE1 09:8CD1: A9 30     LDA #$30
                                        BCC bra_8CD3
                                        LDY ram_062E,X

                                        LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
                                        CMP #con_fighter_hot
                                        BNE bra_8CCF
                                    .else
                                        CMP #con_fighter_hot
                                        BEQ bra_8CC2_hot
                                        CMP #con_fighter___hot
                                        BNE bra_8CCF  
bra_8CC2_hot:
                                    .endif
; con_fighter_hot
; con_fighter___hot
                                        LDA ram_option_speed
                                        BEQ bra_8CCD
                                        TYA
                                        BMI bra_8CCD
                                        CMP #con_колво_обычных_ударов
                                        BCS bra_8CD2

                                        LDA tbl_A7A5_урон_от_ударов - $01,Y
                                        CMP #$10
                                        LDA #$80
                                        BCC bra_8CD3
bra_8CCD:
                                        LDA #$C0
                                        BNE bra_8CD3    ; jmp
bra_8CCF:
                                        LDA ram_obj_hit_state,X
                                        CMP #$03
                                        BEQ bra_8CD2

                                        TYA
                                        BPL bra_8CD0
                                        LDY ram_global_obj_index
                                        LDA ram_obj_id,Y
                                        TAY
                                        LDA tbl_8CD9_скорость_X_пушбэка_от_мяча,Y
                                        BNE bra_8CD3    ; jmp
bra_8CD0:
                                        LDA tbl_8CD7_скорость_X_пушбэка_в_хит,Y
                                        BNE bra_8CD3    ; jmp
bra_8CD2:
                                        LDA tbl_8CD8_скорость_X_пушбэка_в_блок,Y
bra_8CD3:
C - - - - - 0x024CE3 09:8CD3: 4C 6A D1  JMP loc_0x03D17A
bra_8CD6:
C - - - - - 0x024CE6 09:8CD6: 4C 6E 8F  JMP loc_8F6E



ofs_получает_урон_8CD9_02:
                                       ;LDY ram_obj_state_lo,X
C - - J - - 0x024CE9 09:8CD9: D0 09     BNE bra_8CE4
bra_8CDB:
sub_8CDB:
C - - - - - 0x024CEB 09:8CDB: A9 A7     LDA #> (ofs_0x02E7CA - $01)
C - - - - - 0x024CED 09:8CDD: 48        PHA
C - - - - - 0x024CEE 09:8CDE: A9 B9     LDA #< (ofs_0x02E7CA - $01)
C - - - - - 0x024CF0 09:8CE0: 48        PHA
C - - - - - 0x024CF1 09:8CE1: 4C E7 F5  JMP loc_0x03F5F7_swap_prg_16
bra_8CE4:
C - - - - - 0x024CF4 09:8CE4: A0 04     LDY #con_init_anim_получение_урона_сидя
C - - - - - 0x024CF6 09:8CE6: D0 D8     BNE bra_8CC0    ; jmp



; начальная (основная) скорость X пушбэков от ударов в хит и от суперок в блок всем, кроме хота
tbl_8CD7_скорость_X_пушбэка_в_хит:
    .byte $C0   ; 00 
    .byte $C0   ; 01 
    .byte $C0   ; 02 
    .byte $C0   ; 03 
    .byte $C0   ; 04 
    .byte $C0   ; 05 
    .byte $C0   ; 06 
    .byte $C0   ; 07 
    .byte $C0   ; 08 
    .byte $C0   ; 09 
    .byte $C0   ; 0A 
    .byte $C0   ; 0B 
    .byte $C0   ; 0C 
    .byte $C0   ; 0D 
    .byte $C0   ; 0E 
    .byte $C0   ; 0F 
    .byte $C0   ; 10 
    .byte $C0   ; 11 
    .byte $C0   ; 12 
    .byte $C0   ; 13 
    .byte $C0   ; 14 
    .byte $C0   ; 15 
    .byte $C0   ; 16 
    .byte $C0   ; 17 
    .byte $C0   ; 18 
    .byte $C0   ; 19 
    .byte $F0   ; 1A 
    .byte $F0   ; 1B 
    .byte $C0   ; 1C 
    .byte $C0   ; 1D 
    .byte $F0   ; 1E 
    .byte $F0   ; 1F 
    .byte $C0   ; 20 
    .byte $F0   ; 21 
    .byte $C0   ; 22 
    .byte $C0   ; 23 
    .byte $C0   ; 24 
    .byte $C0   ; 25 
    .byte $C0   ; 26 
    .byte $C0   ; 27 
    .byte $C0   ; 28 
    .byte $C0   ; 29 
    .byte $C0   ; 2A 
    .byte $C0   ; 2B 
    .byte $C0   ; 2C 
    .byte $C0   ; 2D 
    .byte $C0   ; 2E 
    .byte $C0   ; 2F 
    .byte $C0   ; 30 rezerv 
    .byte $C0   ; 31 rezerv 
    .byte $C0   ; 32 rezerv 
    .byte $C0   ; 33 rezerv 
    .byte $C0   ; 34 rezerv 
    .byte $C0   ; 35 rezerv 
    .byte $C0   ; 36 rezerv 
    .byte $C0   ; 37 rezerv 
    .byte $C0   ; 38 rezerv 
    .byte $C0   ; 39 rezerv 
    .byte $C0   ; 3A rezerv 
    .byte $C0   ; 3B rezerv 
    .byte $C0   ; 3C rezerv 
    .byte $C0   ; 3D rezerv 
    .byte $C0   ; 3E rezerv 
    .byte $C0   ; 3F 
    .byte $C0   ; 40 
    .byte $C0   ; 41 
    .byte $C0   ; 42 
    .byte $C0   ; 43 
    .byte $C0   ; 44 
    .byte $C0   ; 45 
    .byte $C0   ; 46 
    .byte $01   ; 47 
    .byte $C0   ; 48 
    .byte $C0   ; 49 
    .byte $41   ; 4A

; начальная (основная) скорость X пушбэков от ударов в блок и от суперок в блок хоту
tbl_8CD8_скорость_X_пушбэка_в_блок:
    .byte $C0   ; 00 
    .byte $C0   ; 01 
    .byte $C0   ; 02 
    .byte $C0   ; 03 
    .byte $C0   ; 04 
    .byte $C0   ; 05 
    .byte $C0   ; 06 
    .byte $C0   ; 07 
    .byte $C0   ; 08 
    .byte $C0   ; 09 
    .byte $C0   ; 0A 
    .byte $C0   ; 0B 
    .byte $C0   ; 0C 
    .byte $C0   ; 0D 
    .byte $C0   ; 0E 
    .byte $C0   ; 0F 
    .byte $C0   ; 10 
    .byte $C0   ; 11 
    .byte $C0   ; 12 
    .byte $C0   ; 13 
    .byte $C0   ; 14 
    .byte $C0   ; 15 
    .byte $C0   ; 16 
    .byte $C0   ; 17 
    .byte $C0   ; 18 
    .byte $C0   ; 19 
    .byte $01   ; 1A 
    .byte $01   ; 1B 
    .byte $C0   ; 1C 
    .byte $C0   ; 1D 
    .byte $01   ; 1E 
    .byte $01   ; 1F 
    .byte $E0   ; 20 
    .byte $11   ; 21 
    .byte $C0   ; 22 
    .byte $C0   ; 23 
    .byte $C0   ; 24 
    .byte $C0   ; 25 
    .byte $C0   ; 26 
    .byte $C0   ; 27 
    .byte $C0   ; 28 
    .byte $C0   ; 29 
    .byte $C0   ; 2A 
    .byte $C0   ; 2B 
    .byte $C0   ; 2C 
    .byte $C0   ; 2D 
    .byte $C0   ; 2E 
    .byte $C0   ; 2F 
    .byte $C0   ; 30 rezerv 
    .byte $C0   ; 31 rezerv 
    .byte $C0   ; 32 rezerv 
    .byte $C0   ; 33 rezerv 
    .byte $C0   ; 34 rezerv 
    .byte $C0   ; 35 rezerv 
    .byte $C0   ; 36 rezerv 
    .byte $C0   ; 37 rezerv 
    .byte $C0   ; 38 rezerv 
    .byte $C0   ; 39 rezerv 
    .byte $C0   ; 3A rezerv 
    .byte $C0   ; 3B rezerv 
    .byte $C0   ; 3C rezerv 
    .byte $C0   ; 3D rezerv 
    .byte $C0   ; 3E rezerv 
    .byte $C0   ; 3F 
    .byte $C0   ; 40 
    .byte $A0   ; 41 
    .byte $C0   ; 42 
    .byte $C0   ; 43 
    .byte $C0   ; 44 
    .byte $C0   ; 45 
    .byte $A0   ; 46 
    .byte $C0   ; 47 
    .byte $C0   ; 48 
    .byte $C0   ; 49 
    .byte $C0   ; 4A

; начальная (основная) скорость X пушбэков от заблоченного мяча
tbl_8CD9_скорость_X_пушбэка_от_мяча:
    .byte $C0   ; 00 con_fighter_leo
    .byte $C0   ; 01 con_fighter_raph
    .byte $C0   ; 02 con_fighter_mike
    .byte $C0   ; 03 con_fighter_don
    .byte $01   ; 04 con_fighter_casey
    .byte $A1   ; 05 con_fighter_hot
    .byte $C0   ; 06 con_fighter_shred
.if con_новые_персы <> $00
    .byte $C0   ; 07 con_fighter___leo
    .byte $C0   ; 08 con_fighter___raph
    .byte $C0   ; 09 con_fighter___mike
    .byte $C0   ; 0A con_fighter___don
    .byte $01   ; 0B con_fighter___casey
    .byte $A1   ; 0C con_fighter___hot
    .byte $C0   ; 0D con_fighter___shred
.endif



ofs_получает_урон_8CE8_03:
                                       ;LDY ram_obj_state_lo,X
C - - J - - 0x024CF8 09:8CE8: D0 03     BNE bra_8CED
C - - - - - 0x024CFA 09:8CEA: 20 DB 8C  JSR sub_8CDB
bra_8CED:
loc_8CED:
C D 0 - - - 0x024CFD 09:8CED: BD D0 04  LDA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x024D00 09:8CF0: A8        TAY
C - - - - - 0x024D01 09:8CF1: 29 03     AND #$03
C - - - - - 0x024D03 09:8CF3: D0 0D     BNE bra_8D02
C - - - - - 0x024D05 09:8CF5: 98        TYA
C - - - - - 0x024D06 09:8CF6: 29 04     AND #$04
C - - - - - 0x024D08 09:8CF8: 4A        LSR
C - - - - - 0x024D09 09:8CF9: E9 00     SBC #$00
C - - - - - 0x024D0B 09:8CFB: 18        CLC
C - - - - - 0x024D0C 09:8CFC: 7D 40 04  ADC ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x024D0F 09:8CFF: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
bra_8D02:
C - - - - - 0x024D12 09:8D02: A0 07     LDY #con_init_anim_блокирование_стоя
C - - - - - 0x024D14 09:8D04: B5 91     LDA ram_btn_hold,X
C - - - - - 0x024D16 09:8D06: 29 04     AND #con_btn_Down
C - - - - - 0x024D18 09:8D08: F0 01     BEQ bra_8D0B
C - - - - - 0x024D1A 09:8D0A: C8        LDY #con_init_anim_блокирование_сидя
bra_8D0B:
C - - - - - 0x024D1B 09:8D0B: 4C C0 8C  JMP loc_8CC0



ofs_получает_урон_8D0E_04:
                                       ;LDY ram_obj_state_lo,X
C - - J - - 0x024D1E 09:8D0E: D0 19     BNE bra_8D29
C - - - - - 0x024D20 09:8D10: 20 63 8F  JSR sub_8F63
C - - - - - 0x024D23 09:8D13: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024D26 09:8D16: A9 3B     LDA #$3B
C - - - - - 0x024D28 09:8D18: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024D2B 09:8D1B: A9 23     LDA #con_AF40_pal + $23
sub_8D1D:
C - - - - - 0x024D2D 09:8D1D: 48        PHA
C - - - - - 0x024D2E 09:8D1E: 8A        TXA
C - - - - - 0x024D2F 09:8D1F: 09 04     ORA #$04
C - - - - - 0x024D31 09:8D21: AA        TAX
C - - - - - 0x024D32 09:8D22: 68        PLA
; tip_индекс_буфера_палитры + $04
; tip_индекс_буфера_палитры + $05
C - - - - - 0x024D33 09:8D23: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x024D36 09:8D26: A6 A8     LDX ram_local_obj_index
bra_8D28_RTS:
C - - - - - 0x024D38 09:8D28: 60        RTS
bra_8D29:
C - - - - - 0x024D39 09:8D29: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x024D3B 09:8D2B: 4A        LSR
C - - - - - 0x024D3C 09:8D2C: A9 23     LDA #con_AF40_pal + $23
C - - - - - 0x024D3E 09:8D2E: 90 02     BCC bra_8D32
C - - - - - 0x024D40 09:8D30: A9 24     LDA #con_AF40_pal + $24
bra_8D32:
C - - - - - 0x024D42 09:8D32: 20 1D 8D  JSR sub_8D1D
C - - - - - 0x024D45 09:8D35: A0 0F     LDY #con_init_anim_получение_урона_1
C - - - - - 0x024D47 09:8D37: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x024D4A 09:8D3A: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024D4D 09:8D3D: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024D50 09:8D40: D0 E6     BNE bra_8D28_RTS
C - - - - - 0x024D52 09:8D42: 4C 6E 8F  JMP loc_8F6E



ofs_получает_урон_8D45_05:
                                       ;LDY ram_obj_state_lo,X
C - - J - - 0x024D55 09:8D45: D0 08     BNE bra_8D4F
sub_8D47:
C - - - - - 0x024D57 09:8D47: A9 02     LDA #$02
C - - - - - 0x024D59 09:8D49: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x024D5C 09:8D4C: 4C 57 8C  JMP loc_8C57
bra_8D4F:
C - - - - - 0x024D5F 09:8D4F: A8        TAY
C - - - - - 0x024D60 09:8D50: 88        DEY
C - - - - - 0x024D61 09:8D51: D0 5A     BNE bra_8DAD
C - - - - - 0x024D63 09:8D53: BC B0 04  LDY ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x024D66 09:8D56: B9 B6 99  LDA tbl_99B6,Y
loc_8D59:
C D 0 - - - 0x024D69 09:8D59: C0 02     CPY #$02
C - - - - - 0x024D6B 09:8D5B: F0 0D     BEQ bra_8D6A
C - - - - - 0x024D6D 09:8D5D: A0 09     LDY #con_init_anim_получение_урона_2
C - - - - - 0x024D6F 09:8D5F: BD D0 04  LDA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x024D72 09:8D62: F0 24     BEQ bra_8D88
C - - - - - 0x024D74 09:8D64: DE D0 04  DEC ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x024D77 09:8D67: C8        LDY #con_init_anim_падение_после_броска
C - - - - - 0x024D78 09:8D68: D0 1E     BNE bra_8D88
bra_8D6A:
C - - - - - 0x024D7A 09:8D6A: 20 6A D1  JSR sub_0x03D17A
C - - - - - 0x024D7D 09:8D6D: A0 0F     LDY #con_init_anim_получение_урона_1
C - - - - - 0x024D7F 09:8D6F: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024D82 09:8D72: 30 14     BMI bra_8D88
C - - - - - 0x024D84 09:8D74: A0 15     LDY #con_init_anim_получение_урона_4
C - - - - - 0x024D86 09:8D76: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024D89 09:8D79: C9 A8     CMP #$A8
C - - - - - 0x024D8B 09:8D7B: B0 0B     BCS bra_8D88
C - - - - - 0x024D8D 09:8D7D: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024D90 09:8D80: A0 09     LDY #con_init_anim_получение_урона_2
C - - - - - 0x024D92 09:8D82: C9 02     CMP #$02
C - - - - - 0x024D94 09:8D84: 90 02     BCC bra_8D88
C - - - - - 0x024D96 09:8D86: A0 06     LDY #con_init_anim_получение_урона_3
bra_8D88:
C - - - - - 0x024D98 09:8D88: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x024D9B 09:8D8B: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024D9E 09:8D8E: 90 72     BCC bra_8E02_RTS
C - - - - - 0x024DA0 09:8D90: BD 50 05  LDA ram_флаг_черепахи,X
C - - - - - 0x024DA5 09:8D95: 90 0D     BEQ bra_8DA4_черепаха
; con_fighter_casey
; con_fighter_hot
; con_fighter_shred
C - - - - - 0x024DA7 09:8D97: DE B0 04  DEC ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x024DAA 09:8D9A: 30 31     BMI bra_8DCD
C - - - - - 0x024DAC 09:8D9C: A9 08     LDA #$08
C - - - - - 0x024DAE 09:8D9E: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
C D 0 - - - 0x024FCA 09:8FBA: BC B0 04  LDY ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x024FCD 09:8FBD: B9 B4 99  LDA tbl_99B4,Y
C - - - - - 0x024FD0 09:8FC0: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x024FD3 09:8FC3: A9 00     LDA #$00
C - - - - - 0x024FD5 09:8FC5: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0470 0471 
C - - - - - 0x024FD8 09:8FC8: 60        RTS
bra_8DA4_черепаха:
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
; con_fighter_don
C - - - - - 0x024DB4 09:8DA4: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024DB7 09:8DA7: A9 1C     LDA #$1C
C - - - - - 0x024DB9 09:8DA9: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024DBC 09:8DAC: 60        RTS
bra_8DAD:
loc_8DAD:
C D 0 - - - 0x024DBD 09:8DAD: 88        DEY
C - - - - - 0x024DBE 09:8DAE: D0 37     BNE bra_8DE7
C - - - - - 0x024DC0 09:8DB0: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024DC3 09:8DB3: F0 18     BEQ bra_8DCD
C - - - - - 0x024DC5 09:8DB5: A9 B0     LDA #con_координата_пола
C - - - - - 0x024DC7 09:8DB7: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024DCA 09:8DBA: A0 14     LDY #con_D0B3_черепахи_сальто_назад
C - - - - - 0x024DCC 09:8DBC: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x024DCF 09:8DBF: BC 60 05  LDY ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024DD2 09:8DC2: A9 02     LDA #$02
C - - - - - 0x024DD4 09:8DC4: C0 0E     CPY #$0E
C - - - - - 0x024DD6 09:8DC6: B0 02     BCS bra_8DCA
C - - - - - 0x024DD8 09:8DC8: A9 21     LDA #$21
bra_8DCA:
C - - - - - 0x024DDA 09:8DCA: 4C 6A D1  JMP loc_0x03D17A
bra_8DCD:
C - - - - - 0x024DDD 09:8DCD: A9 06     LDA #$06
C - - - - - 0x024DDF 09:8DCF: A0 00     LDY #$00
C - - - - - 0x024DE1 09:8DD1: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024DE4 09:8DD4: 98        TYA
C - - - - - 0x024DE5 09:8DD5: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x024DE8 09:8DD8: A9 03     LDA #$03
C - - - - - 0x024DEA 09:8DDA: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024DED 09:8DDD: A9 B0     LDA #con_координата_пола
C - - - - - 0x024DEF 09:8DDF: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024DF2 09:8DE2: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024DF4 09:8DE4: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
bra_8DE7:
loc_8DE7:
C D 0 - - - 0x024DF7 09:8DE7: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x024DFA 09:8DEA: C9 06     CMP #con_fighter_shred
C - - - - - 0x024DFC 09:8DEC: F0 07     BEQ bra_8DF5_shred
                                    .else
                                        CMP #con_fighter_shred
                                        BEQ bra_8DF5_shred
                                        CMP #con_fighter___shred
                                        BEQ bra_8DF5_shred
                                    .endif
C - - - - - 0x024DFE 09:8DEE: C9 04     LDA ram_флаг_черепахи,X
C - - - - - 0x024E00 09:8DF0: B0 11     BNE bra_8E03_не_черепаха
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
; con_fighter_don
C - - - - - 0x024E02 09:8DF2: A0 01     LDY #con_DFE6_01
C - - - - - 0x024E04 09:8DF4: 2C        .byte $2C   ; BIT
bra_8DF5_shred:
C - - - - - 0x024E05 09:8DF5: A0 0C     LDY #con_DFE6_0C
C - - - - - 0x024E07 09:8DF7: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x024E0A 09:8DFA: BD C0 05  LDA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x024E0D 09:8DFD: 10 03     BPL bra_8E02_RTS
bra_8DFF:
C - - - - - 0x024E0F 09:8DFF: 4C 6E 8F  JMP loc_8F6E
bra_8E02_RTS:
C - - - - - 0x024E12 09:8E02: 60        RTS
bra_8E03_не_черепаха:
; con_fighter_casey
; con_fighter_hot
C - - - - - 0x024E13 09:8E03: DE C0 05  DEC ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x024E16 09:8E06: 10 0A     BPL bra_8E12
C - - - - - 0x024E18 09:8E08: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024E1B 09:8E0B: 30 F2     BMI bra_8DFF
C - - - - - 0x024E1D 09:8E0D: A9 06     LDA #$06
C - - - - - 0x024E1F 09:8E0F: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
bra_8E12:
C - - - - - 0x024E22 09:8E12: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024E25 09:8E15: B9 1C 8E  LDA tbl_8E1C,Y
C - - - - - 0x024E28 09:8E18: A8        TAY
C - - - - - 0x024E29 09:8E19: 4C E7 8A  JMP loc_8AE7_выбор_начальной_анимации_персу



tbl_8E1C:
- D 0 - - - 0x024E2C 09:8E1C: 00        .byte con_init_anim_присесть   ; 00
- D 0 - - - 0x024E2D 09:8E1D: 00        .byte con_init_anim_присесть   ; 01
- D 0 - - - 0x024E2E 09:8E1E: 09        .byte con_init_anim_получение_урона_2   ; 02
- D 0 - - - 0x024E2F 09:8E1F: 09        .byte con_init_anim_получение_урона_2   ; 03
- D 0 - - - 0x024E30 09:8E20: 0A        .byte con_init_anim_падение_после_броска   ; 04
- D 0 - - - 0x024E31 09:8E21: 0A        .byte con_init_anim_падение_после_броска   ; 05



ofs_получает_урон_8E22_06:
                                       ;LDY ram_obj_state_lo,X
C - - J - - 0x024E32 09:8E22: D0 03     BNE bra_8E27
C D 0 - - - 0x024C51 09:8C41: A9 0C     LDA #$0C
C - - - - - 0x024C53 09:8C43: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x024C56 09:8C46: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024C59 09:8C49: 4C ED 8C  JMP loc_8CED
bra_8E27:
C - - - - - 0x024E37 09:8E27: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x024E39 09:8E29: 29 02     AND #$02
C - - - - - 0x024E3B 09:8E2B: 38        SEC
C - - - - - 0x024E3C 09:8E2C: E9 01     SBC #$01
C - - - - - 0x024E3E 09:8E2E: 18        CLC
C - - - - - 0x024E3F 09:8E2F: 7D 10 04  ADC ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024E42 09:8E32: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024E45 09:8E35: 4C ED 8C  JMP loc_8CED



ofs_получает_урон_8E38_07:
; бряк срабатывает при попадании мячом в соперника
; X = игрок, в которого попали мячом
; Y = игрок, который запустил мяч (0x024E4F)
C - - - - - 0x024E4A 09:8E3A: DD 50 05  LDY ram_obj_id,X ; 0550 0551 
                                        LDA tbl_8EC8_условие_для_перехода,Y
                                        BEQ bra_8E48
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
C - - - - - 0x024E4F 09:8E3F: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024E51 09:8E41: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x024E54 09:8E44: C9 04     CMP #con_fighter_casey
C - - - - - 0x024E56 09:8E46: D0 29     BNE bra_8E71
                                    .else
                                        CMP #con_fighter_casey
                                        BEQ bra_8E48
                                        CMP #con_fighter___casey
                                        BNE bra_8E71
                                    .endif
bra_8E48:
C - - - - - 0x024E58 09:8E48: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024E5B 09:8E4B: D0 15     BNE bra_8E62
C - - - - - 0x024E5D 09:8E4D: 20 47 8D  JSR sub_8D47
C - - - - - 0x024E60 09:8E50: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024E62 09:8E52: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
C - - - - - 0x024E65 09:8E55: A8        TAY
C - - - - - 0x024E66 09:8E56: A9 FE     LDA #$FE
                                    .if con_новые_персы = $00
C - - - - - 0x024E68 09:8E58: C0 04     CPY #con_fighter_casey
C - - - - - 0x024E6A 09:8E5A: D0 02     BNE bra_8E5E
                                    .else
                                        CPY #con_fighter_casey
                                        BEQ bra_8E5C_casey
                                        CPY #con_fighter___casey
                                        BNE bra_8E5E
bra_8E5C_casey:
                                    .endif
; con_fighter_casey
; con_fighter___casey
C - - - - - 0x024E6C 09:8E5C: A9 FB     LDA #$FB
bra_8E5E:
C - - - - - 0x024E6E 09:8E5E: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
bra_8E61_RTS:
C - - - - - 0x024E71 09:8E61: 60        RTS
bra_8E62:
C - - - - - 0x024E72 09:8E62: 88        DEY
C - - - - - 0x024E73 09:8E63: F0 03     BEQ bra_8E68
C - - - - - 0x024E75 09:8E65: 4C AD 8D  JMP loc_8DAD
bra_8E68:
C - - - - - 0x024E78 09:8E68: BC B0 04  LDY ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x024E7B 09:8E6B: B9 B9 99  LDA tbl_99B9,Y
C - - - - - 0x024E7E 09:8E6E: 4C 59 8D  JMP loc_8D59
bra_8E71:
C - - - - - 0x024E81 09:8E71: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024E84 09:8E74: D0 09     BNE bra_8E7F
C - - - - - 0x024E86 09:8E76: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024E89 09:8E79: A9 2C     LDA #$2C
C - - - - - 0x024E8B 09:8E7B: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024E8E 09:8E7E: 60        RTS
bra_8E7F:
C - - - - - 0x024E8F 09:8E7F: 88        DEY
C - - - - - 0x024E90 09:8E80: D0 2F     BNE bra_8EB1
C - - - - - 0x024E92 09:8E82: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024E95 09:8E85: A9 02     LDA #$02
C - - - - - 0x024E97 09:8E87: BC 60 05  LDY ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024E9A 09:8E8A: C0 10     CPY #$10
C - - - - - 0x024E9C 09:8E8C: B0 01     BCS bra_8E8F
C - - - - - 0x024E9E 09:8E8E: 4A        LSR ; 01
bra_8E8F:
C - - - - - 0x024E9F 09:8E8F: 20 6A D1  JSR sub_0x03D17A
C - - - - - 0x024EA2 09:8E92: A0 14     LDY #con_D0B3_черепахи_сальто_назад
C - - - - - 0x024EA4 09:8E94: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x024EA7 09:8E97: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024EAA 09:8E9A: 10 C5     BPL bra_8E61_RTS
C - - - - - 0x024EAC 09:8E9C: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024EAF 09:8E9F: A9 B0     LDA #con_координата_пола
C - - - - - 0x024EB1 09:8EA1: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024EB4 09:8EA4: A9 A6     LDA #$A6
C - - - - - 0x024EB6 09:8EA6: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x024EB9 09:8EA9: A9 10     LDA #$10
C - - - - - 0x024EBB 09:8EAB: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024EBE 09:8EAE: 4C 67 D0  JMP loc_0x03DB48_очистить_spd_X_и_spd_Z
bra_8EB1:
C - - - - - 0x024EC1 09:8EB1: 88        DEY
C - - - - - 0x024EC2 09:8EB2: D0 13     BNE bra_8EC7
C - - - - - 0x024EC4 09:8EB4: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024EC7 09:8EB7: D0 A8     BNE bra_8E61_RTS
C - - - - - 0x024EC9 09:8EB9: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x024ECC 09:8EBC: A9 05     LDA #$05
C - - - - - 0x024ECE 09:8EBE: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024ED1 09:8EC1: A9 08     LDA #$08
C - - - - - 0x024ED3 09:8EC3: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x024ED6 09:8EC6: 60        RTS
bra_8EC7:
C - - - - - 0x024ED7 09:8EC7: 4C E7 8D  JMP loc_8DE7



tbl_8EC8_условие_для_перехода:
; 00 = branch, 40 = no branch
                                        .byte $40 ; 00 con_fighter_leo
                                        .byte $40 ; 01 con_fighter_raph
                                        .byte $40 ; 02 con_fighter_mike
                                        .byte $00 ; 03 con_fighter_don
                                        .byte $00 ; 04 con_fighter_casey
                                        .byte $00 ; 05 con_fighter_hot
                                        .byte $00 ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $40 ; 07 con_fighter___leo
                                        .byte $40 ; 08 con_fighter___raph
                                        .byte $40 ; 09 con_fighter___mike
                                        .byte $00 ; 0A con_fighter___don
                                        .byte $00 ; 0B con_fighter___casey
                                        .byte $00 ; 0C con_fighter___hot
                                        .byte $00 ; 0D con_fighter___shred
                                    .endif



ofs_получает_урон_8ECA_08:
C - - J - - 0x024EDA 09:8ECA: BC 40 05  LDY ram_obj_state_lo,X ; 0541 
C - - - - - 0x024EDD 09:8ECD: D0 14     BNE bra_8EE3
C - - - - - 0x024EDF 09:8ECF: A9 00     LDA #$00
C - - - - - 0x024EE1 09:8ED1: 9D C0 05  STA ram_obj_anim_timer,X ; 05C1 
C - - - - - 0x024EE4 09:8ED4: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D1 
C - - - - - 0x024EE7 09:8ED7: FE 40 05  INC ram_obj_state_lo,X ; 0541 
sub_8EDA:
C - - - - - 0x024EEA 09:8EDA: A9 05     LDA #$05
C - - - - - 0x024EEC 09:8EDC: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x024EEF 09:8EDF: 9D 60 05  STA ram_obj_timer,X ; 0561 
C - - - - - 0x024EF2 09:8EE2: 60        RTS
bra_8EE3:
C - - - - - 0x024EF3 09:8EE3: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x024EF6 09:8EE6: 20 23 DF  JSR sub_0x03DF33
C - - - - - 0x024EF9 09:8EE9: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024EFB 09:8EEB: B9 54 05  LDA ram_obj_id + $04,Y ; 0554 
C - - - - - 0x024EFE 09:8EEE: C9 39     CMP #con_0552_special_casey_песок
C - - - - - 0x024F00 09:8EF0: F0 15     BEQ bra_8F07
C - - - - - 0x024F02 09:8EF2: A9 04     LDA #con_plr_state_нокаут
C - - - - - 0x024F04 09:8EF4: 9D 20 05  STA ram_obj_state_hi,X ; 0521 
C - - - - - 0x024F07 09:8EF7: A9 30     LDA #$30
C - - - - - 0x024F09 09:8EF9: 9D 60 05  STA ram_obj_timer,X ; 0561 
C - - - - - 0x024F0C 09:8EFC: A9 00     LDA #$00
C - - - - - 0x024F0E 09:8EFE: 9D 80 05  STA ram_0580_obj,X ; 0581 
C - - - - - 0x024F11 09:8F01: A9 04     LDA #$04
C - - - - - 0x024F13 09:8F03: 9D 40 05  STA ram_obj_state_lo,X ; 0541 
bra_8F06_RTS:
C - - - - - 0x024F16 09:8F06: 60        RTS
bra_8F07:
C - - - - - 0x024F17 09:8F07: DE 60 05  DEC ram_obj_timer,X ; 0561 
C - - - - - 0x024F1A 09:8F0A: D0 10     BNE bra_8F1C
C - - - - - 0x024F1C 09:8F0C: 20 DA 8E  JSR sub_8EDA
C - - - - - 0x024F1F 09:8F0F: A9 04     LDA #$04
C - - - - - 0x024F21 09:8F11: 20 3C DE  JSR sub_0x03DE4C_корректировка_урона_с_учетом_прочности_перса
C - - - - - 0x024F24 09:8F14: 20 77 DE  JSR sub_0x03DE87    ; возможен PLA PLA
C - - - - - 0x024F27 09:8F17: A9 0C     LDA #con_075C_0C
C - - - - - 0x024F29 09:8F19: 20 94 F6  JSR sub_0x03F6A4_записать_звук
bra_8F1C:
C - - - - - 0x024F2C 09:8F1C: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024F2E 09:8F1E: B9 34 04  LDA ram_obj_pos_X_hi + $04,Y ; 0434 
C - - - - - 0x024F31 09:8F21: D0 E3     BNE bra_8F06_RTS
C - - - - - 0x024F33 09:8F23: B9 44 04  LDA ram_obj_pos_X_lo + $04,Y ; 0444 
C - - - - - 0x024F36 09:8F26: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0441 
C - - - - - 0x024F39 09:8F29: F0 DB     BEQ bra_8F06_RTS
C - - - - - 0x024F3B 09:8F2B: A9 FF     LDA #$FF
C - - - - - 0x024F3D 09:8F2D: 90 02     BCC bra_8F31
C - - - - - 0x024F3F 09:8F2F: A9 01     LDA #$01
bra_8F31:
C - - - - - 0x024F41 09:8F31: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0481 
C - - - - - 0x024F44 09:8F34: A9 00     LDA #$00
C - - - - - 0x024F46 09:8F36: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0491 
C - - - - - 0x024F49 09:8F39: 60        RTS



sub_8F3A:
C - - - - - 0x024F4A 09:8F3A: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x024F4D 09:8F3D: A9 00     LDA #$00
C - - - - - 0x024F4F 09:8F3F: 9D 10 06  STA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x024F52 09:8F42: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024F55 09:8F45: 9D 08 06  STA ram_0608_plr,X ; 0608 0609 
C - - - - - 0x024F58 09:8F48: 9D 0A 06  STA ram_060A_plr,X ; 060A 060B 
C - - - - - 0x024F5B 09:8F4B: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x024F5E 09:8F4E: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024F60 09:8F50: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x024F63 09:8F53: A9 80     LDA #$80
C - - - - - 0x024F65 09:8F55: 1D 80 05  ORA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x024F68 09:8F58: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x024F6B 09:8F5B: 4C 73 D0  JMP loc_0x03D083_очистить_spd_Z



sub_8F63:
C - - - - - 0x024F73 09:8F63: BD 00 06  LDA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x024F76 09:8F66: 10 3F     BPL bra_8FA7_RTS
C - - - - - 0x024F78 09:8F68: 4C DB 84  JMP loc_84DB_попытка_уронить_мяч_персом_после_получения_урона



tbl_8F6B:
- - - - - - 0x024F7B 09:8F6B: 00        .byte $00   ; 00
- D 0 - - - 0x024F7C 09:8F6C: FD        .byte $FD   ; 04
- D 0 - - - 0x024F7D 09:8F6D: FB        .byte $FB   ; 08



loc_8F6E:
C D 0 - - - 0x024F7E 09:8F6E: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024F80 09:8F70: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x024F83 09:8F73: A9 B0     LDA #con_координата_пола
C - - - - - 0x024F85 09:8F75: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x024F88 09:8F78: 20 FB DE  JSR sub_0x03DF0B
C - - - - - 0x024F8B 09:8F7B: 20 B1 8F  JSR sub_8FB1
C - - - - - 0x024F8E 09:8F7E: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x024F91 09:8F81: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x024F94 09:8F84: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x024F97 09:8F87: BC C0 04  LDY ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x024F9A 09:8F8A: C0 04     CPY #$04
C - - - - - 0x024F9C 09:8F8C: F0 1A     BEQ bra_8FA8
C - - - - - 0x024F9E 09:8F8E: C0 02     CPY #$02
C - - - - - 0x024FA0 09:8F90: D0 19     BNE bra_8FAB
C - - - - - 0x024FA2 09:8F92: A9 07     LDA #con_plr_state_сидит
C - - - - - 0x024FA4 09:8F94: 20 7F 84  JSR sub_847F
C - - - - - 0x024FA7 09:8F97: A9 01     LDA #$01
C - - - - - 0x024FA9 09:8F99: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
sub_8F9C:
C - - - - - 0x024FAC 09:8F9C: A4 A9     LDY ram_global_obj_index
C - - - - - 0x024FAE 09:8F9E: B9 54 05  LDA ram_obj_id + $04,Y ; 0554 0555 
C - - - - - 0x024FB1 09:8FA1: 19 10 06  ORA ram_plr_флаг_индекса_атаки,Y ; 0610 0611 
C - - - - - 0x024FB4 09:8FA4: 4C 9F FE  JMP loc_0x03FEAF
bra_8FA7_RTS:
C - - - - - 0x024FB7 09:8FA7: 60        RTS
bra_8FA8:
C - - - - - 0x024FB8 09:8FA8: 20 FC DD  JSR sub_0x03DE0C_выбор_палитры_перса_с_сохранением_X
bra_8FAB:
loc_8FAB:
C D 0 - - - 0x024FBB 09:8FAB: 20 9C 8F  JSR sub_8F9C
C - - - - - 0x024FBE 09:8FAE: 20 6D 84  JSR sub_846D
sub_8FB1:
C - - - - - 0x024FC1 09:8FB1: BD 80 05  LDA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x024FC4 09:8FB4: 29 5F     AND #$5F
C - - - - - 0x024FC6 09:8FB6: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
bra_8FB9_RTS:
C - - - - - 0x024FC9 09:8FB9: 60        RTS



ofs_state_8FC9_09_перс_бросает_соперника:
C - - J - - 0x024FD9 09:8FC9: 20 CF 8F  JSR sub_8FCF
C - - - - - 0x024FDC 09:8FCC: 4C 9A 91  JMP loc_0x03F6EC_броски



sub_8FCF:
C - - - - - 0x024FDF 09:8FCF: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x024FE2 09:8FD2: C9 01     CMP #con_fighter_raph
C - - - - - 0x024FE4 09:8FD4: F0 1F     BEQ bra_8FF5
                                    .else
                                        CMP #con_fighter_raph
                                        BEQ bra_8FF5
                                        CMP #con_fighter___raph
                                        BEQ bra_8FF5
                                    .endif
                                        LDA ram_plr_индекс_броска,X
                                        BNE bra_8FF5
C - - - - - 0x024FE6 09:8FD6: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x024FE9 09:8FD9: 0A        ASL
C - - - - - 0x024FEA 09:8FDA: 0A        ASL
C - - - - - 0x024FEB 09:8FDB: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x024FEE 09:8FDE: B0 08     BCS bra_8FE8
C - - - - - 0x024FF0 09:8FE0: C9 30     CMP #$30
C - - - - - 0x024FF2 09:8FE2: B0 11     BCS bra_8FF5
C - - - - - 0x024FF4 09:8FE4: A9 01     LDA #$01
C - - - - - 0x024FF6 09:8FE6: D0 06     BNE bra_8FEE    ; jmp
bra_8FE8:
C - - - - - 0x024FF8 09:8FE8: C9 D0     CMP #$D0
C - - - - - 0x024FFA 09:8FEA: 90 09     BCC bra_8FF5
C - - - - - 0x024FFC 09:8FEC: A9 FF     LDA #$FF
bra_8FEE:
C - - - - - 0x024FFE 09:8FEE: 18        CLC
C - - - - - 0x024FFF 09:8FEF: 7D 40 04  ADC ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x025002 09:8FF2: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
bra_8FF5:
C - - - - - 0x025005 09:8FF5: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x025008 09:8FF8: D0 25     BNE bra_901F
C - - - - - 0x02500A 09:8FFA: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02500C 09:8FFC: A9 80     LDA #$80
C - - - - - 0x02500E 09:8FFE: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x025011 09:9001: 99 80 05  STA ram_0580_obj,Y ; 0580 0581 
C - - - - - 0x025014 09:9004: 0A        LDA #$00
C - - - - - 0x025015 09:9005: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x025018 09:9008: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x02501B 09:900B: A9 C0     LDA #$C0
C - - - - - 0x02501D 09:900D: 9D E0 04  STA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x025020 09:9010: A9 0A     LDA #$0A    ; con_plr_state_брошен_соперником ???
C - - - - - 0x025022 09:9012: 20 D6 B7  STA ram_obj_state_hi,Y ; 0520 0521 
                                        STA ram_obj_hit_state,Y ; 04C0 04C1 
C - - - - - 0x025025 09:9015: A9 00     LDA #$00
C - - - - - 0x025027 09:9017: 99 40 05  STA ram_obj_state_lo,Y ; 0540 0541 
C - - - - - 0x02502A 09:901A: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02502D 09:901D: D0 29     BNE bra_9048    ; jmp
bra_901F:
C - - - - - 0x02502F 09:901F: 88        DEY
C - - - - - 0x025030 09:9020: F0 03     BEQ bra_9025
C D 0 - - - 0x025187 09:9177: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02518A 09:917A: D0 B6     BNE bra_8FB9_RTS
C - - - - - 0x02518C 09:917C: A9 00     LDA #$00
C - - - - - 0x02518E 09:917E: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x025191 09:9181: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x025194 09:9184: A0 01     LDY #con_init_anim_обычная_стойка
C - - - - - 0x025196 09:9186: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x025199 09:9189: 4C 6D 84  JMP loc_846D
bra_9025:
C - - - - - 0x025035 09:9025: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x025038 09:9028: C9 80     CMP #$80
C - - - - - 0x02503A 09:902A: D0 14     BNE bra_9040
C - - - - - 0x02503C 09:902C: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x02503F 09:902F: C9 01     CMP #con_fighter_raph
C - - - - - 0x025041 09:9031: F0 03     BEQ bra_9036_raph
                                    .else
                                        CMP #con_fighter_raph
                                        BEQ bra_9036_raph
                                        CMP #con_fighter___raph
                                        BEQ bra_9036_raph
                                    .endif
C - - - - - 0x025043 09:9033: 4C 6B 91  JMP loc_916B
bra_9036_raph:
; con_fighter_raph
; con_fighter___raph
C - - - - - 0x025046 09:9036: A9 08     LDA #$08
C - - - - - 0x025048 09:9038: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02504B 09:903B: A9 00     LDA #$00
C - - - - - 0x02504D 09:903D: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
bra_9040:
C - - - - - 0x025050 09:9040: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x025053 09:9043: D0 5F     BNE bra_90A4
C - - - - - 0x025055 09:9045: FE D0 05  INC ram_obj_anim_cnt,X ; 05D0 05D1 
bra_9048:
C - - - - - 0x025058 09:9048: 20 A4 90  JSR sub_90A4
C - - - - - 0x02505B 09:904B: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02505E 09:904E: C9 02     CMP #$02
C - - - - - 0x025060 09:9050: F0 51     BEQ bra_90A3_RTS
C - - - - - 0x025062 09:9052: B9 4D 97  LDA (ram_0008),Y    ; 01
C - - - - - 0x025065 09:9055: 85 08     STA ram_0008
C - - - - - 0x025067 09:9057: 29 9F     AND #$9F
C - - - - - 0x025069 09:9059: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02506C 09:905C: AC 26 01  LDY ram_option_speed
C - - - - - 0x02506F 09:905F: F0 1A     BEQ bra_907B
C - - - - - 0x025071 09:9061: A8        TAY
C - - - - - 0x025072 09:9062: 29 80     AND #$80
C - - - - - 0x025074 09:9064: 85 09     STA ram_0009
C - - - - - 0x025076 09:9066: 98        TYA
C - - - - - 0x025077 09:9067: 29 1F     AND #$1F
C - - - - - 0x025079 09:9069: A8        TAY
C - - - - - 0x02507A 09:906A: 4A        LSR
C - - - - - 0x02507B 09:906B: 4A        LSR
C - - - - - 0x02507C 09:906C: 85 0A     STA ram_000A
C - - - - - 0x02507E 09:906E: 98        TYA
C - - - - - 0x02507F 09:906F: 38        SEC
C - - - - - 0x025080 09:9070: E5 0A     SBC ram_000A
C - - - - - 0x025082 09:9072: D0 02     BNE bra_9076
- - - - - - 0x025084 09:9074: A9 01     LDA #$01
bra_9076:
C - - - - - 0x025086 09:9076: 05 09     ORA ram_0009
C - - - - - 0x025088 09:9078: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_907B:
C - - - - - 0x02508B 09:907B: A5 08     LDA ram_0008
C - - - - - 0x02508D 09:907D: 0A        ASL
C - - - - - 0x02508E 09:907E: 0A        ASL
C - - - - - 0x02508F 09:907F: 10 05     BPL bra_9086
C - - - - - 0x025091 09:9081: A9 20     LDA #$20
C - - - - - 0x025093 09:9083: 8D 30 06  STA ram_0630_таймер
bra_9086:
C - - - - - 0x025096 09:9086: 90 1B     BCC bra_90A3_RTS
C - - - - - 0x025098 09:9088: 20 03 FF  LDA ram_obj_state_hi,X ; 0520 0521 
                                        EOR #con_plr_state_бросает_соперника
                                        BNE bra_908B
                                        JSR sub_B069
bra_908B:
C - - - - - 0x02509B 09:908B: A9 1C     LDA #con_075C_1C
C - - - - - 0x02509D 09:908D: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x0250A0 09:9090: A6 AD     LDX ram_00AD
C - - - - - 0x0250A2 09:9092: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x0250A5 09:9095: C9 04     CMP #con_fighter_casey
C - - - - - 0x0250A7 09:9097: D0 05     BNE bra_909E
                                    .else
                                        CMP #con_fighter_casey
                                        BEQ bra_9099_casey
                                        CMP #con_fighter___casey
                                        BNE bra_909E
bra_9099_casey:
                                    .endif
; con_fighter_casey
; con_fighter___casey
C - - - - - 0x0250A9 09:9099: A9 B0     LDA #con_координата_пола
C - - - - - 0x0250AB 09:909B: 99 10 04  STA ram_obj_pos_Y_lo,Y ; 0410 0411 
bra_909E:
C - - - - - 0x0250AE 09:909E: A9 02     LDA #$02
C - - - - - 0x0250B0 09:90A0: 99 40 05  STA ram_obj_state_lo,Y ; 0540 0541 
bra_90A3_RTS:
C - - - - - 0x0250B3 09:90A3: 60        RTS
bra_90A4:
sub_90A4:
loc_90A4:
C D 0 - - - 0x0250B4 09:90A4: BC 50 05  LDA ram_obj_id,X ; 0550 0551 
                                        ASL
                                        ASL
                                        ADC ram_plr_индекс_броска,X
                                        ADC ram_plr_индекс_броска,X
                                        TAY
                                        LDA tbl_9745_звуки_и_анимации_бросков,Y
                                        STA ram_0008
                                        LDA tbl_9745_звуки_и_анимации_бросков + $01,Y
                                        STA ram_0009
C - - - - - 0x0250B7 09:90A7: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x0250BA 09:90AA: 0A        ASL
C - - - - - 0x0250BB 09:90AB: 0A        ASL
C - - - - - 0x0250BF 09:90AF: A8        TAY
C - - - - - 0x0250C0 09:90B0: 85 1F     STY ram_001F
C - - - - - 0x0250C2 09:90B2: B9 4C 97  LDA (ram_0008),Y    ; 00
C - - - - - 0x0250C5 09:90B5: D0 06     BNE bra_90BD
; if 00, то следующий байт = номер звука, а 3й и 4й байты игнорируются
C - - - - - 0x0250C7 09:90B7: 20 5D 91  JSR sub_915D_записать_звук
C - - - - - 0x0250CA 09:90BA: 4C 30 91  JMP loc_9130
bra_90BD:
C - - - - - 0x0250CD 09:90BD: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
                                        INY
                                        INY
C - - - - - 0x0250D1 09:90C1: B9 4E 97  LDA (ram_0008),Y    ; 02
C - - - - - 0x0250D4 09:90C4: 85 01     STA ram_0001
C - - - - - 0x0250D6 09:90C6: 18        CLC
                                        INY
C - - - - - 0x0250D7 09:90C7: B9 4F 97  LDA (ram_0008),Y    ; 03
C - - - - - 0x0250DA 09:90CA: 7D 10 04  ADC ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x0250DD 09:90CD: 85 02     STA ram_0002
C - - - - - 0x0250DF 09:90CF: 20 8C 91  JSR sub_0x02519C
C - - - - - 0x0250E2 09:90D2: F0 03     BEQ bra_90D7
C - - - - - 0x0250E4 09:90D4: 4C 30 91  JMP loc_9130
bra_90D7:
C - - - - - 0x0250E7 09:90D7: A5 02     LDA ram_0002
C - - - - - 0x0250E9 09:90D9: 99 10 04  STA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x0250EC 09:90DC: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x0250EF 09:90DF: C9 01     CMP #con_fighter_raph
C - - - - - 0x0250F1 09:90E1: D0 3A     BNE bra_911D
                                    .else
                                        CMP #con_fighter_raph
                                        BEQ bra_90E3_raph
                                        CMP #con_fighter___raph
                                        BNE bra_911D
bra_90E3_raph:
                                    .endif
; con_fighter_raph
; con_fighter___raph
C - - - - - 0x0250F3 09:90E3: DE D0 04  DEC ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x0250F6 09:90E6: 10 1A     BPL bra_9102
; тайминги анимации кусания не синхронизированы с воспроизведением звука.
; при редактировании анимации броска рафа потребуется это учитывать.
; и вообще какого хрена этот код делает здесь, а не в личном обработчике рафа?
C - - - - - 0x0250F8 09:90E8: A9 14     LDA #$14
C - - - - - 0x0250FA 09:90EA: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x0250FD 09:90ED: A9 17     LDA #con_sfx_закусь_рафа
C - - - - - 0x0250FF 09:90EF: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x025102 09:90F2: A9 07     LDA #$07
C - - - - - 0x025104 09:90F4: A6 A9     LDX ram_global_obj_index
C - - - - - 0x025106 09:90F6: 20 3C DE  JSR sub_0x03DE4C_корректировка_урона_с_учетом_прочности_перса
C - - - - - 0x025109 09:90F9: 20 A2 DE  JSR sub_0x03DEB2
C - - - - - 0x02510C 09:90FC: 90 52     BCC bra_9150
C - - - - - 0x02510E 09:90FE: A6 A8     LDX ram_local_obj_index
C - - - - - 0x025110 09:9100: A4 A9     LDY ram_global_obj_index
bra_9102:
C - - - - - 0x025112 09:9102: B9 8E 00  LDA ram_btn_press,Y
C - - - - - 0x025115 09:9105: F0 06     BEQ bra_910D
; если захваченный рафом соперник жмет любую кнопку,
; это дополнительно уменьшает таймер захвата
C - - - - - 0x025117 09:9107: DE E0 04  DEC ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x02511A 09:910A: DE E0 04  DEC ram_04E0_obj,X ; 04E0 04E1 
bra_910D:
C - - - - - 0x02511D 09:910D: DE E0 04  DEC ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x025120 09:9110: BD E0 04  LDA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x025123 09:9113: C9 F0     CMP #$F0
C - - - - - 0x025125 09:9115: B0 1C     BCS bra_9133
C - - - - - 0x025127 09:9117: A9 00     LDA #$00
C - - - - - 0x025129 09:9119: 99 C0 04  STA ram_obj_hit_state,Y ; 04C0 04C1 
bra_911D:
C - - - - - 0x02512D 09:911D: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x025130 09:9120: 0A        ASL
C - - - - - 0x025131 09:9121: 0A        ASL
C - - - - - 0x025132 09:9122: A5 01     LDA ram_0001
C - - - - - 0x025134 09:9124: 90 03     BCC bra_9129
C - - - - - 0x025136 09:9126: 20 FC D1  JSR sub_0x03D20C_EOR
bra_9129:
C - - - - - 0x025139 09:9129: 18        CLC
C - - - - - 0x02513A 09:912A: 7D 40 04  ADC ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x02513D 09:912D: 99 40 04  STA ram_obj_pos_X_lo,Y ; 0440 0441 
loc_9130:
C D 0 - - - 0x025140 09:9130: A4 1F     LDY ram_001F
                                        INY
C - - - - - 0x025142 09:9132: 60        RTS
bra_9133:
C - - - - - 0x025143 09:9133: 20 69 B0  JSR sub_B069
C - - - - - 0x025146 09:9136: A9 1C     LDA #con_075C_1C
C - - - - - 0x025148 09:9138: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x02514B 09:913B: A9 02     LDA #$02
C - - - - - 0x02514D 09:913D: 99 40 05  STA ram_obj_state_lo,Y ; 0540 0541 
sub_9140:
C - - - - - 0x025150 09:9140: A6 AD     LDX ram_00AD
C - - - - - 0x025152 09:9142: 20 6B 91  JSR sub_916B
C - - - - - 0x025155 09:9145: A9 0A     LDA #$0A
C - - - - - 0x025157 09:9147: 99 C0 04  STA ram_obj_hit_state,Y ; 04C0 04C1 
C - - - - - 0x02515A 09:914A: A9 A2     LDA #$A2
C - - - - - 0x02515C 09:914C: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x02515F 09:914F: 60        RTS
bra_9150:
C - - - - - 0x025160 09:9150: A6 A8     LDX ram_local_obj_index
C - - - - - 0x025162 09:9152: 20 69 B0  JSR sub_B069
C - - - - - 0x025165 09:9155: 20 40 91  JSR sub_9140
C - - - - - 0x025168 09:9158: A6 A9     LDX ram_global_obj_index
C - - - - - 0x02516A 09:915A: 20 7C DE  JMP loc_0x03DE8E




sub_915D_записать_звук:
                                        INY
C - - - - - 0x02516D 09:915D: B9 4D 97  LDA (ram_0008),Y    ; 01
C - - - - - 0x025170 09:9160: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x025173 09:9163: A6 AD     LDX ram_00AD
C - - - - - 0x025175 09:9165: FE D0 05  INC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x025178 09:9168: 4C A4 90  JMP loc_90A4



loc_916B:
sub_916B:
C D 0 - - - 0x02517B 09:916B: A9 14     LDA #$14
C - - - - - 0x02517D 09:916D: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x025180 09:9170: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x025183 09:9173: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x025186 09:9176: 60        RTS



ofs_state_9208_0A_перс_брошен_соперником:
C - - J - - 0x025218 09:9208: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02521B 09:920B: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x02521E 09:920E: 1A 92     .word ofs_брошен_соперником_921A_00
- D 0 - I - 0x025220 09:9210: 2A 92     .word ofs_брошен_соперником_922A_01
- D 0 - I - 0x025222 09:9212: 37 92     .word ofs_брошен_соперником_9237_02
- D 0 - I - 0x025224 09:9214: 83 92     .word ofs_брошен_соперником_9283_03
- D 0 - I - 0x025226 09:9216: 83 92     .word ofs_брошен_соперником_9283_04
- D 0 - I - 0x025228 09:9218: FB 92     .word ofs_брошен_соперником_92FB_05



ofs_брошен_соперником_921A_00:
C - - J - - 0x02522A 09:921A: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x02522D 09:921D: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
; A = 00
C - - - - - 0x025230 09:9220: 9D 10 06  STA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x025233 09:9223: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x025236 09:9226: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541
C - - - - - 0x025239 09:9229: 60        RTS



ofs_брошен_соперником_922A_01:
C - - J - - 0x02523A 09:922A: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02523C 09:922C: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x02523F 09:922F: C9 09     CMP #con_plr_state_бросает_соперника
C - - - - - 0x025241 09:9231: F0 03     BEQ bra_9236_RTS
- - - - - - 0x025243 09:9233: FE 40 05  INC ram_obj_state_lo,X
bra_9236_RTS:
C - - - - - 0x025246 09:9236: 60        RTS



ofs_брошен_соперником_9237_02:
C - - J - - 0x025247 09:9237: 1E 10 05  ASL ram_obj_flip,X ; 0510 0511 
C - - - - - 0x02524A 09:923A: 5E 10 05  LSR ram_obj_flip,X ; 0510 0511 
C - - - - - 0x02524D 09:923D: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02524F 09:923F: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
                                        ASL
                                        ADC ram_plr_индекс_броска,Y
C - - - - - 0x025252 09:9242: A8        TAY
C - - - - - 0x025253 09:9243: B9 DA 98  LDA tbl_98DA_скорость_Y_брошенного_перса,Y
C - - - - - 0x025256 09:9246: A8        TAY
C - - - - - 0x025257 09:9247: A9 00     LDA #$00
loc_9249:
C D 0 - - - 0x025259 09:9249: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02525C 09:924C: 98        TYA
C - - - - - 0x02525D 09:924D: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x025260 09:9250: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
sub_9253:
C - - - - - 0x025263 09:9253: A0 0B     LDY #con_init_anim_полет_после_броска
C - - - - - 0x025265 09:9255: BD 60 05  LDA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x025268 09:9258: F0 04     BEQ bra_925E
C - - - - - 0x02526A 09:925A: 88        LDY #con_init_anim_падение_после_броска
C - - - - - 0x02526B 09:925B: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
bra_925E:
C - - - - - 0x02526E 09:925E: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x025271 09:9261: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x025274 09:9264: 20 65 DD  JSR sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
C - - - - - 0x025277 09:9267: A4 A9     LDY ram_global_obj_index
C - - - - - 0x025279 09:9269: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
                                        ASL
                                        ADC ram_plr_индекс_броска,Y
C - - - - - 0x02527C 09:926C: A8        TAY
C - - - - - 0x02527D 09:926D: B9 D3 98  LDA tbl_98D3_скорость_X_брошенного_перса,Y
C - - - - - 0x025280 09:9270: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x025283 09:9273: A4 A9     LDY ram_global_obj_index
C - - - - - 0x025285 09:9275: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x025288 09:9278: C9 01     CMP #con_fighter_raph
C - - - - - 0x02528A 09:927A: F0 04     BEQ bra_9280
C - - - - - 0x02528C 09:927C: C9 04     CMP #con_fighter_casey
C - - - - - 0x02528E 09:927E: D0 B6     BNE bra_9236_RTS
                                    .else
                                        CMP #con_fighter_raph
                                        BEQ bra_9280
                                        CMP #con_fighter_casey
                                        BEQ bra_9280
                                        CMP #con_fighter___raph
                                        BEQ bra_9280
                                        CMP #con_fighter___casey
                                        BNE bra_9236_RTS
                                    .endif
bra_9280:
; con_fighter_raph
; con_fighter___raph
; con_fighter_casey
; con_fighter___casey
C - - - - - 0x025290 09:9280: 4C 65 DD  JMP loc_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали



ofs_брошен_соперником_9283_03:
ofs_брошен_соперником_9283_04:
C - - J - - 0x025293 09:9283: 20 53 92  JSR sub_9253
C - - - - - 0x025296 09:9286: 20 92 DC  JSR sub_0x03DCA2_добавить_к_spd_Z_в_зависимости_от_опции_скорости
C - - - - - 0x025299 09:9289: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x02529C 09:928C: 30 A8     BMI bra_9236_RTS
C - - - - - 0x02529E 09:928E: 20 ED DC  JSR sub_0x03DCFD_ограничить_pos_Y_во_время_падения
C - - - - - 0x0252A1 09:9291: B0 A3     BCS bra_9236_RTS
C - - - - - 0x0252A3 09:9293: 20 73 D0  JSR sub_0x03D083_очистить_spd_Z
C - - - - - 0x0252A6 09:9296: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0252A9 09:9299: C0 03     CPY #$03
C - - - - - 0x0252AB 09:929B: D0 0B     BNE bra_92A8_04
; 03
C - - - - - 0x0252AD 09:929D: 20 DB 84  JSR sub_84DB_попытка_уронить_мяч_персом_после_получения_урона
C - - - - - 0x0252B0 09:92A0: A9 20     LDA #$20
C - - - - - 0x0252B2 09:92A2: 8D 30 06  STA ram_0630_таймер
bra_92A8_04:
C - - - - - 0x0252B8 09:92A8: B9 71 93  LDA #con_075C_21
C - - - - - 0x0252BB 09:92AB: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x0252BE 09:92AE: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0252C1 09:92B1: C9 04     CMP #$04
C - - - - - 0x0252C3 09:92B3: B0 16     BCS bra_92CB
C - - - - - 0x0252C5 09:92B5: A4 A9     LDY ram_global_obj_index
C - - - - - 0x0252C7 09:92B7: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
                                        ASL
                                        ADC ram_plr_индекс_броска,Y
C - - - - - 0x0252CA 09:92BA: A8        TAY
C - - - - - 0x0252CB 09:92BB: 20 DD B7  LDA tbl_973E_урон_от_бросков,Y
                                        DEC ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x0252CE 09:92BE: 20 3C DE  JSR sub_0x03DE4C_корректировка_урона_с_учетом_прочности_перса
C - - - - - 0x0252D1 09:92C1: 20 BA DE  JSR sub_0x03DECA
C - - - - - 0x0252D4 09:92C4: A0 FD     LDY #$FD
C - - - - - 0x0252D6 09:92C6: A9 0A     LDA #$0A
C - - - - - 0x0252D8 09:92C8: 4C 49 92  JMP loc_9249
bra_92CB:
C - - - - - 0x0252DB 09:92CB: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0252DE 09:92CE: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x0252E1 09:92D1: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x0252E4 09:92D4: A9 06     LDA #$06
C - - - - - 0x0252E6 09:92D6: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x0252E9 09:92D9: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x0252EC 09:92DC: B9 A2 99  LDA tbl_99A2,Y
C - - - - - 0x0252EF 09:92DF: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x0252F2 09:92E2: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0252F5 09:92E5: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x0252F8 09:92E8: C0 05     CPY #con_fighter_hot
C - - - - - 0x0252FA 09:92EA: F0 04     BEQ bra_92F0
C - - - - - 0x0252FC 09:92EC: C0 04     CPY #con_fighter_casey
C - - - - - 0x0252FE 09:92EE: D0 0A     BNE bra_92FA_RTS
                                    .else
                                        CPY #con_fighter_casey
                                        BEQ bra_92F0
                                        CPY #con_fighter_hot
                                        BEQ bra_92F0
                                        CPY #con_fighter___casey
                                        BEQ bra_92F0
                                        CPY #con_fighter___hot
                                        BNE bra_92FA_RTS
                                    .endif
bra_92F0:
; con_fighter_casey
; con_fighter___casey
; con_fighter_hot
; con_fighter___hot
C - - - - - 0x025300 09:92F0: A9 03     LDA #$03
C - - - - - 0x025302 09:92F2: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x025305 09:92F5: A9 00     LDA #$00
C - - - - - 0x025307 09:92F7: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_92FA_RTS:
C - - - - - 0x02530A 09:92FA: 60        RTS



ofs_брошен_соперником_92FB_05:
C - - J - - 0x02530B 09:92FB: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x02530E 09:92FE: C9 06     CMP #con_fighter_shred
C - - - - - 0x025310 09:9300: F0 5A     BEQ bra_935C_shred
                                    .else
                                        CMP #con_fighter_shred
                                        BEQ bra_935C_shred
                                        CMP #con_fighter___shred
                                        BEQ bra_935C_shred
                                    .endif
C - - - - - 0x025312 09:9302: C9 04     LDA ram_флаг_черепахи,X
C - - - - - 0x025314 09:9304: 90 59     BEQ bra_935F_черепаха
; con_fighter_casey
; con_fighter_hot
C - - - - - 0x025316 09:9306: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x025319 09:9309: 10 1A     BPL bra_9325
C - - - - - 0x02531B 09:930B: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02531E 09:930E: 30 3C     BMI bra_934C
C - - - - - 0x025320 09:9310: 38        SEC
C - - - - - 0x025321 09:9311: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
; con_новые_персы
C - - - - - 0x025324 09:9314: E9 04     SBC #$04
C - - - - - 0x025326 09:9316: 0A        ASL
C - - - - - 0x025327 09:9317: 0A        ASL
C - - - - - 0x025328 09:9318: 7D D0 05  ADC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02532B 09:931B: A8        TAY
C - - - - - 0x02532C 09:931C: B9 6D 93  LDA tbl_936D,Y
C - - - - - 0x02532F 09:931F: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x025332 09:9322: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_9325:
C - - - - - 0x025335 09:9325: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x025338 09:9328: B9 6A 93  LDA tbl_936A,Y
C - - - - - 0x02533B 09:932B: A8        TAY
C - - - - - 0x02533C 09:932C: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x02533F 09:932F: A4 A9     LDY ram_global_obj_index
C - - - - - 0x025341 09:9331: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
; Y в дальнейшем не понадобится и будет перезаписан в 0x026F60/0x03D23B
                                        TAY
                                        LDA tbl_9340_условие_для_перехода,Y
                                        BEQ bra_9369_RTS
; con_fighter_leo
; con_fighter_mike
; con_fighter_don
C - - - - - 0x02534C 09:933C: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x02534F 09:933F: 4C 65 DD  JMP loc_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали



tbl_9340_условие_для_перехода:
; 00 = branch, 40 = no branch
                                        .byte $40 ; 00 con_fighter_leo
                                        .byte $00 ; 01 con_fighter_raph
                                        .byte $40 ; 02 con_fighter_mike
                                        .byte $40 ; 03 con_fighter_don
                                        .byte $00 ; 04 con_fighter_casey
                                        .byte $00 ; 05 con_fighter_hot
                                        .byte $00 ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $40 ; 07 con_fighter___leo
                                        .byte $00 ; 08 con_fighter___raph
                                        .byte $40 ; 09 con_fighter___mike
                                        .byte $40 ; 0A con_fighter___don
                                        .byte $00 ; 0B con_fighter___casey
                                        .byte $00 ; 0C con_fighter___hot
                                        .byte $00 ; 0D con_fighter___shred
                                    .endif



bra_934C:
C - - - - - 0x02535C 09:934C: A9 00     LDA #$00
C - - - - - 0x02535E 09:934E: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x025361 09:9351: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x025364 09:9354: A9 04     LDA #$04
C - - - - - 0x025366 09:9356: 9D F0 05  STA ram_05F0_obj,X ; 05F0 05F1 
C - - - - - 0x025369 09:9359: 4C 6D 84  JMP loc_846D



bra_935C_shred:
; con_fighter_shred
; con_fighter___shred
C - - - - - 0x02536C 09:935C: A0 0C     LDY #con_DFE6_0C
C - - - - - 0x02536E 09:935E: 2C        .byte $2C   ; BIT
bra_935F_черепаха:
; con_fighter_leo
; con_fighter_raph
; con_fighter_mike
; con_fighter_don
C - - - - - 0x02536F 09:935F: A0 01     LDY #con_DFE6_01
C - - - - - 0x025371 09:9361: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x025374 09:9364: BD C0 05  LDA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x025377 09:9367: 30 E3     BMI bra_934C
bra_9369_RTS:
C - - - - - 0x025379 09:9369: 60        RTS



tbl_936A:
- D 0 - - - 0x02537A 09:936A: 00        .byte con_init_anim_присесть   ; 00
- D 0 - - - 0x02537B 09:936B: 09        .byte con_init_anim_получение_урона_2   ; 01
- D 0 - - - 0x02537C 09:936C: 0A        .byte con_init_anim_падение_после_броска   ; 02



tbl_936D:
; что-то связанное с таймерами поднятием перса после того как его бросили
; черепахи поднимаются практически моментально, поэтому у них 00
; насчет шредера пока не понятно, видимо его тайминги не здесь
                                    .if con_новые_персы = $00
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- placeholder
;                                              |    |    |    |
;                                              |    |    |    |
- D 0 - - - 0x02537D 09:936D: 0C        .byte $0C, $0C, $10, $00   ; 04 con_fighter_casey
- D 0 - - - 0x025381 09:9371: 0E        .byte $0E, $0E, $12        ; 05 con_fighter_hot
                                    .else
                                        .byte $0C, $0C, $10, $00   ; 04 con_fighter_casey
                                        .byte $0E, $0E, $12, $00   ; 05 con_fighter_hot
                                        .byte $00, $00, $00, $00   ; 06 placeholder
                                        .byte $00, $00, $00, $00   ; 07 placeholder
                                        .byte $00, $00, $00, $00   ; 08 placeholder
                                        .byte $00, $00, $00, $00   ; 09 placeholder
                                        .byte $00, $00, $00, $00   ; 0A placeholder
                                        .byte $0C, $0C, $10, $00   ; 0B con_fighter___casey
                                        .byte $0E, $0E, $12, $00   ; 0C con_fighter___hot
                                        .byte $00, $00, $00, $00   ; 0D placeholder
                                    .endif



tbl_9377:
- D 0 - - - 0x025387 09:9377: FB        .byte $FB   ; 00
- D 0 - - - 0x025388 09:9378: FD        .byte $FD   ; 01
- D 0 - - - 0x025389 09:9379: FE        .byte $FE   ; 02



tbl_937A:
- D 0 - - - 0x02538A 09:937A: 0D        .byte $0D   ; 00 con_fighter_leo
- D 0 - - - 0x02538B 09:937B: 16        .byte $16   ; 01 con_fighter_raph
- D 0 - - - 0x02538C 09:937C: 0D        .byte $0D   ; 02 con_fighter_mike
- D 0 - - - 0x02538D 09:937D: 0E        .byte $0E   ; 03 con_fighter_don
- D 0 - - - 0x02538E 09:937E: 0D        .byte $0D   ; 04 con_fighter_casey
- D 0 - - - 0x02538F 09:937F: 09        .byte $09   ; 05 con_fighter_hot
- D 0 - - - 0x025390 09:9380: 0E        .byte $0E   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $0D   ; 07 con_fighter___leo
                                        .byte $16   ; 08 con_fighter___raph
                                        .byte $0D   ; 09 con_fighter___mike
                                        .byte $0E   ; 0A con_fighter___don
                                        .byte $0D   ; 0B con_fighter___casey
                                        .byte $09   ; 0C con_fighter___hot
                                        .byte $0E   ; 0D con_fighter___shred
                                    .endif

tbl_9381:
- D 0 - - - 0x025391 09:9381: 0D        .byte $0D   ; 00 con_fighter_leo
- D 0 - - - 0x025392 09:9382: 0F        .byte $0F   ; 01 con_fighter_raph
- D 0 - - - 0x025393 09:9383: 0D        .byte $0D   ; 02 con_fighter_mike
- D 0 - - - 0x025394 09:9384: 0D        .byte $0D   ; 03 con_fighter_don
- D 0 - - - 0x025395 09:9385: 0D        .byte $0D   ; 04 con_fighter_casey
- D 0 - - - 0x025396 09:9386: 0A        .byte $09   ; 05 con_fighter_hot
- D 0 - - - 0x025397 09:9387: 0A        .byte $0A   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $0D   ; 07 con_fighter___leo
                                        .byte $0F   ; 08 con_fighter___raph
                                        .byte $0D   ; 09 con_fighter___mike
                                        .byte $0D   ; 0A con_fighter___don
                                        .byte $0D   ; 0B con_fighter___casey
                                        .byte $09   ; 0C con_fighter___hot
                                        .byte $0A   ; 0D con_fighter___shred
                                    .endif



tbl_9388_конвертация_индексов_атаки_рукой:
; 00 ближняя
- D 0 - - - 0x025398 09:9388: 06        .byte con_0612_черепаха_рука_ближняя   ; 00 con_fighter_leo
- D 0 - - - 0x025399 09:9389: 06        .byte con_0612_черепаха_рука_ближняя   ; 01 con_fighter_raph
- D 0 - - - 0x02539A 09:938A: 06        .byte con_0612_черепаха_рука_ближняя   ; 02 con_fighter_mike
- D 0 - - - 0x02539B 09:938B: 06        .byte con_0612_черепаха_рука_ближняя   ; 03 con_fighter_don
- D 0 - - - 0x02539C 09:938C: 11        .byte con_0612_casey_рука_ближняя   ; 04 con_fighter_casey
- D 0 - - - 0x02539D 09:938D: 18        .byte con_0612_hot_рука_ближняя   ; 05 con_fighter_hot
- D 0 - - - 0x02539E 09:938E: 23        .byte con_0612_shred_рука_ближняя   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_рука_ближняя   ; con_fighter___leo
                                        .byte con_0612_черепаха_рука_ближняя   ; con_fighter___raph
                                        .byte con_0612_черепаха_рука_ближняя   ; con_fighter___mike
                                        .byte con_0612_черепаха_рука_ближняя   ; con_fighter___don
                                        .byte con_0612_casey_рука_ближняя   ; con_fighter___casey
                                        .byte con_0612_hot_рука_ближняя   ; con_fighter___hot
                                        .byte con_0612_shred_рука_ближняя   ; con_fighter___shred
                                    .endif
; 07 дальняя
- D 0 - - - 0x02539F 09:938F: 00        .byte con_0612_черепаха_рука_дальняя   ; 07 con_fighter_leo
- D 0 - - - 0x0253A0 09:9390: 00        .byte con_0612_черепаха_рука_дальняя   ; 08 con_fighter_raph
- D 0 - - - 0x0253A1 09:9391: 00        .byte con_0612_черепаха_рука_дальняя   ; 09 con_fighter_mike
- D 0 - - - 0x0253A2 09:9392: 00        .byte con_0612_черепаха_рука_дальняя   ; 0A con_fighter_don
- D 0 - - - 0x0253A3 09:9393: 0E        .byte con_0612_casey_рука_дальняя   ; 0B con_fighter_casey
- D 0 - - - 0x0253A4 09:9394: 19        .byte con_0612_hot_рука_дальняя   ; 0C con_fighter_hot
- D 0 - - - 0x0253A5 09:9395: 24        .byte con_0612_shred_рука_средняя   ; 0D con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_рука_дальняя   ; con_fighter___leo
                                        .byte con_0612_черепаха_рука_дальняя   ; con_fighter___raph
                                        .byte con_0612_черепаха_рука_дальняя   ; con_fighter___mike
                                        .byte con_0612_черепаха_рука_дальняя   ; con_fighter___don
                                        .byte con_0612_casey_рука_дальняя   ; con_fighter___casey
                                        .byte con_0612_hot_рука_дальняя   ; con_fighter___hot
                                        .byte con_0612_shred_рука_средняя   ; con_fighter___shred
                                    .endif
; 0E в воздухе
- D 0 - - - 0x0253A6 09:9396: 02        .byte con_0612_черепаха_рука_в_воздухе   ; 0E con_fighter_leo
- D 0 - - - 0x0253A7 09:9397: 02        .byte con_0612_черепаха_рука_в_воздухе   ; 0F con_fighter_raph
- D 0 - - - 0x0253A8 09:9398: 02        .byte con_0612_черепаха_рука_в_воздухе   ; 10 con_fighter_mike
- D 0 - - - 0x0253A9 09:9399: 02        .byte con_0612_черепаха_рука_в_воздухе   ; 11 con_fighter_don
- D 0 - - - 0x0253AA 09:939A: 0F        .byte con_0612_casey_рука_в_воздухе   ; 12 con_fighter_casey
- D 0 - - - 0x0253AB 09:939B: 1A        .byte con_0612_hot_рука_в_воздухе   ; 13 con_fighter_hot
- D 0 - - - 0x0253AC 09:939C: 27        .byte con_0612_shred_рука_в_воздухе   ; 14 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_рука_в_воздухе   ; con_fighter___leo
                                        .byte con_0612_черепаха_рука_в_воздухе   ; con_fighter___raph
                                        .byte con_0612_черепаха_рука_в_воздухе   ; con_fighter___mike
                                        .byte con_0612_черепаха_рука_в_воздухе   ; con_fighter___don
                                        .byte con_0612_casey_рука_в_воздухе   ; con_fighter___casey
                                        .byte con_0612_hot_рука_в_воздухе   ; con_fighter___hot
                                        .byte con_0612_shred_рука_в_воздухе   ; con_fighter___shred
                                    .endif
; 15 сидя
- D 0 - - - 0x0253AD 09:939D: 04        .byte con_0612_черепаха_рука_сидя   ; 15 con_fighter_leo
- D 0 - - - 0x0253AE 09:939E: 04        .byte con_0612_черепаха_рука_сидя   ; 16 con_fighter_raph
- D 0 - - - 0x0253AF 09:939F: 04        .byte con_0612_черепаха_рука_сидя   ; 17 con_fighter_mike
- D 0 - - - 0x0253B0 09:93A0: 04        .byte con_0612_черепаха_рука_сидя   ; 18 con_fighter_don
- D 0 - - - 0x0253B1 09:93A1: 10        .byte con_0612_casey_рука_сидя   ; 19 con_fighter_casey
- D 0 - - - 0x0253B2 09:93A2: 1B        .byte con_0612_hot_рука_сидя   ; 1A con_fighter_hot
- D 0 - - - 0x0253B3 09:93A3: 28        .byte con_0612_shred_рука_сидя   ; 1B con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_рука_сидя   ; con_fighter___leo
                                        .byte con_0612_черепаха_рука_сидя   ; con_fighter___raph
                                        .byte con_0612_черепаха_рука_сидя   ; con_fighter___mike
                                        .byte con_0612_черепаха_рука_сидя   ; con_fighter___don
                                        .byte con_0612_casey_рука_сидя   ; con_fighter___casey
                                        .byte con_0612_hot_рука_сидя   ; con_fighter___hot
                                        .byte con_0612_shred_рука_сидя   ; con_fighter___shred
                                    .endif
; 16 антиэйр
- D 0 - - - 0x0253B4 09:93A4: 0C        .byte con_0612_черепаха_рука_антиэйр   ; 1C con_fighter_leo
- D 0 - - - 0x0253B5 09:93A5: 0C        .byte con_0612_черепаха_рука_антиэйр   ; 1D con_fighter_raph
- D 0 - - - 0x0253B6 09:93A6: 0C        .byte con_0612_черепаха_рука_антиэйр   ; 1E con_fighter_mike
- D 0 - - - 0x0253B7 09:93A7: 0C        .byte con_0612_черепаха_рука_антиэйр   ; 1F con_fighter_don
- D 0 - - - 0x0253B8 09:93A8: 12        .byte con_0612_casey_рука_антиэйр   ; 20 con_fighter_casey
- D 0 - - - 0x0253B9 09:93A9: 21        .byte con_0612_hot_рука_антиэйр   ; 21 con_fighter_hot
- D 0 - - - 0x0253BA 09:93AA: 26        .byte con_0612_shred_рука_антиэйр   ; 22 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_рука_антиэйр   ; con_fighter___leo
                                        .byte con_0612_черепаха_рука_антиэйр   ; con_fighter___raph
                                        .byte con_0612_черепаха_рука_антиэйр   ; con_fighter___mike
                                        .byte con_0612_черепаха_рука_антиэйр   ; con_fighter___don
                                        .byte con_0612_casey_рука_антиэйр   ; con_fighter___casey
                                        .byte con_0612_hot_рука_антиэйр   ; con_fighter___hot
                                        .byte con_0612_shred_рука_антиэйр   ; con_fighter___shred
                                    .endif
; 23 деш (только черепахи умеют)
- D 0 - - - 0x0253BB 09:93AB: 0A        .byte con_0612_черепаха_деш_локтем   ; 23 con_fighter_leo
- D 0 - - - 0x0253BC 09:93AC: 0A        .byte con_0612_черепаха_деш_локтем   ; 24 con_fighter_raph
- D 0 - - - 0x0253BD 09:93AD: 0A        .byte con_0612_черепаха_деш_локтем   ; 25 con_fighter_mike
- D 0 - - - 0x0253BE 09:93AE: 0A        .byte con_0612_черепаха_деш_локтем   ; 26 con_fighter_don
- - - - - - 0x0253BF 09:93AF: 0E        .byte con_0612_casey_рука_дальняя   ; 27 con_fighter_casey
- - - - - - 0x0253C0 09:93B0: 19        .byte con_0612_hot_ручка_быстрая   ; 28 con_fighter_hot
- - - - - - 0x0253C1 09:93B1: 25        .byte con_0612_shred_рука_дальняя   ; 29 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_деш_локтем   ; con_fighter___leo
                                        .byte con_0612_черепаха_деш_локтем   ; con_fighter___raph
                                        .byte con_0612_черепаха_деш_локтем   ; con_fighter___mike
                                        .byte con_0612_черепаха_деш_локтем   ; con_fighter___don
                                        .byte con_0612_casey_рука_дальняя   ; con_fighter___casey
                                        .byte con_0612_hot_ручка_быстрая   ; con_fighter___hot
                                        .byte con_0612_shred_рука_дальняя   ; con_fighter___shred
                                    .endif



tbl_93B2_конвертация_индексов_атаки_ногой:
; 00 ближняя
- D 0 - - - 0x0253C2 09:93B2: 01        .byte con_0612_черепаха_нога_ближняя   ; 00 con_fighter_leo
- D 0 - - - 0x0253C3 09:93B3: 01        .byte con_0612_черепаха_нога_ближняя   ; 01 con_fighter_raph
- D 0 - - - 0x0253C4 09:93B4: 01        .byte con_0612_черепаха_нога_ближняя   ; 02 con_fighter_mike
- D 0 - - - 0x0253C5 09:93B5: 01        .byte con_0612_черепаха_нога_ближняя   ; 03 con_fighter_don
- D 0 - - - 0x0253C6 09:93B6: 13        .byte con_0612_casey_нога_ближняя   ; 04 con_fighter_casey
- D 0 - - - 0x0253C7 09:93B7: 1C        .byte con_0612_hot_нога_ближняя   ; 05 con_fighter_hot
- D 0 - - - 0x0253C8 09:93B8: 29        .byte con_0612_shred_нога_ближняя   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_нога_ближняя   ; con_fighter___leo
                                        .byte con_0612_черепаха_нога_ближняя   ; con_fighter___raph
                                        .byte con_0612_черепаха_нога_ближняя   ; con_fighter___mike
                                        .byte con_0612_черепаха_нога_ближняя   ; con_fighter___don
                                        .byte con_0612_casey_нога_ближняя   ; con_fighter___casey
                                        .byte con_0612_hot_нога_ближняя   ; con_fighter___hot
                                        .byte con_0612_shred_нога_ближняя   ; con_fighter___shred
                                    .endif
; 07 дальняя
- D 0 - - - 0x0253C9 09:93B9: 07        .byte con_0612_черепаха_нога_дальняя_обычная   ; 07 con_fighter_leo
- D 0 - - - 0x0253CA 09:93BA: 08        .byte con_0612_черепаха_нога_дальняя_raph   ; 08 con_fighter_raph
- D 0 - - - 0x0253CB 09:93BB: 07        .byte con_0612_черепаха_нога_дальняя_обычная   ; 09 con_fighter_mike
- D 0 - - - 0x0253CC 09:93BC: 08        .byte con_0612_черепаха_нога_дальняя_raph   ; 0A con_fighter_don
- D 0 - - - 0x0253CD 09:93BD: 14        .byte con_0612_casey_нога_дальняя   ; 0B con_fighter_casey
- D 0 - - - 0x0253CE 09:93BE: 1D        .byte con_0612_hot_нога_дальняя   ; 0C con_fighter_hot
- D 0 - - - 0x0253CF 09:93BF: 2A        .byte con_0612_shred_нога_дальняя   ; 0D con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_нога_дальняя_обычная   ; con_fighter___leo
                                        .byte con_0612_черепаха_нога_дальняя_raph   ; con_fighter___raph
                                        .byte con_0612_черепаха_нога_дальняя_обычная   ; con_fighter___mike
                                        .byte con_0612_черепаха_нога_дальняя_raph   ; con_fighter___don
                                        .byte con_0612_casey_нога_дальняя   ; con_fighter___casey
                                        .byte con_0612_hot_нога_дальняя   ; con_fighter___hot
                                        .byte con_0612_shred_нога_дальняя   ; con_fighter___shred
                                    .endif
; 0E в воздухе
- D 0 - - - 0x0253D0 09:93C0: 03        .byte con_0612_черепаха_нога_в_воздухе   ; 0E con_fighter_leo
- D 0 - - - 0x0253D1 09:93C1: 03        .byte con_0612_черепаха_нога_в_воздухе   ; 0F con_fighter_raph
- D 0 - - - 0x0253D2 09:93C2: 03        .byte con_0612_черепаха_нога_в_воздухе   ; 10 con_fighter_mike
- D 0 - - - 0x0253D3 09:93C3: 03        .byte con_0612_черепаха_нога_в_воздухе   ; 11 con_fighter_don
- D 0 - - - 0x0253D4 09:93C4: 15        .byte con_0612_casey_нога_в_воздухе   ; 12 con_fighter_casey
- D 0 - - - 0x0253D5 09:93C5: 1E        .byte con_0612_hot_нога_в_воздухе   ; 13 con_fighter_hot
- D 0 - - - 0x0253D6 09:93C6: 2B        .byte con_0612_shred_нога_в_воздухе   ; 14 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_нога_в_воздухе   ; con_fighter___leo
                                        .byte con_0612_черепаха_нога_в_воздухе   ; con_fighter___raph
                                        .byte con_0612_черепаха_нога_в_воздухе   ; con_fighter___mike
                                        .byte con_0612_черепаха_нога_в_воздухе   ; con_fighter___don
                                        .byte con_0612_casey_нога_в_воздухе   ; con_fighter___casey
                                        .byte con_0612_hot_нога_в_воздухе   ; con_fighter___hot
                                        .byte con_0612_shred_нога_в_воздухе   ; con_fighter___shred
                                    .endif
; 15 сидя
- D 0 - - - 0x0253D7 09:93C7: 09        .byte con_0612_черепаха_нога_сидя_leo   ; 15 con_fighter_leo
- D 0 - - - 0x0253D8 09:93C8: 05        .byte con_0612_черепаха_нога_сидя_обычная   ; 16 con_fighter_raph
- D 0 - - - 0x0253D9 09:93C9: 05        .byte con_0612_черепаха_нога_сидя_обычная   ; 17 con_fighter_mike
- D 0 - - - 0x0253DA 09:93CA: 05        .byte con_0612_черепаха_нога_сидя_обычная   ; 18 con_fighter_don
- D 0 - - - 0x0253DB 09:93CB: 16        .byte con_0612_casey_нога_сидя   ; 19 con_fighter_casey
- D 0 - - - 0x0253DC 09:93CC: 1F        .byte con_0612_hot_нога_сидя   ; 1A con_fighter_hot
- D 0 - - - 0x0253DD 09:93CD: 2C        .byte con_0612_shred_нога_сидя   ; 1B con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_нога_сидя_leo   ; con_fighter___leo
                                        .byte con_0612_черепаха_нога_сидя_обычная   ; con_fighter___raph
                                        .byte con_0612_черепаха_нога_сидя_обычная   ; con_fighter___mike
                                        .byte con_0612_черепаха_нога_сидя_обычная   ; con_fighter___don
                                        .byte con_0612_casey_нога_сидя   ; con_fighter___casey
                                        .byte con_0612_hot_нога_сидя   ; con_fighter___hot
                                        .byte con_0612_shred_нога_сидя   ; con_fighter___shred
                                    .endif
; 16 антиэйр
- D 0 - - - 0x0253DE 09:93CE: 0B        .byte con_0612_черепаха_нога_антиэйр   ; 1C con_fighter_leo
- D 0 - - - 0x0253DF 09:93CF: 0B        .byte con_0612_черепаха_нога_антиэйр   ; 1D con_fighter_raph
- D 0 - - - 0x0253E0 09:93D0: 0B        .byte con_0612_черепаха_нога_антиэйр   ; 1E con_fighter_mike
- D 0 - - - 0x0253E1 09:93D1: 0B        .byte con_0612_черепаха_нога_антиэйр   ; 1F con_fighter_don
- D 0 - - - 0x0253E2 09:93D2: 17        .byte con_0612_casey_нога_антиэйр   ; 20 con_fighter_casey
- D 0 - - - 0x0253E3 09:93D3: 22        .byte con_0612_hot_нога_антиэйр   ; 21 con_fighter_hot
- D 0 - - - 0x0253E4 09:93D4: 2D        .byte con_0612_shred_нога_антиэйр   ; 22 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_нога_антиэйр   ; con_fighter___leo
                                        .byte con_0612_черепаха_нога_антиэйр   ; con_fighter___raph
                                        .byte con_0612_черепаха_нога_антиэйр   ; con_fighter___mike
                                        .byte con_0612_черепаха_нога_антиэйр   ; con_fighter___don
                                        .byte con_0612_casey_нога_антиэйр   ; con_fighter___casey
                                        .byte con_0612_hot_нога_антиэйр   ; con_fighter___hot
                                        .byte con_0612_shred_нога_антиэйр   ; con_fighter___shred
                                    .endif
; 23 деш (только черепахи умеют)
- D 0 - - - 0x0253E5 09:93D5: 0D        .byte con_0612_черепаха_деш_ногой   ; 23 con_fighter_leo
- D 0 - - - 0x0253E6 09:93D6: 0D        .byte con_0612_черепаха_деш_ногой   ; 24 con_fighter_raph
- D 0 - - - 0x0253E7 09:93D7: 0D        .byte con_0612_черепаха_деш_ногой   ; 25 con_fighter_mike
- D 0 - - - 0x0253E8 09:93D8: 0D        .byte con_0612_черепаха_деш_ногой   ; 26 con_fighter_don
- - - - - - 0x0253E9 09:93D9: 14        .byte con_0612_casey_нога_дальняя   ; 27 con_fighter_casey
- - - - - - 0x0253EA 09:93DA: 1D        .byte con_0612_hot_нога_дальняя   ; 28 con_fighter_hot
- - - - - - 0x0253EB 09:93DB: 29        .byte con_0612_shred_нога_ближняя   ; 29 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_0612_черепаха_деш_ногой   ; con_fighter___leo
                                        .byte con_0612_черепаха_деш_ногой   ; con_fighter___raph
                                        .byte con_0612_черепаха_деш_ногой   ; con_fighter___mike
                                        .byte con_0612_черепаха_деш_ногой   ; con_fighter___don
                                        .byte con_0612_casey_нога_дальняя   ; con_fighter___casey
                                        .byte con_0612_hot_нога_дальняя   ; con_fighter___hot
                                        .byte con_0612_shred_нога_ближняя   ; con_fighter___shred
                                    .endif



tbl_93DC_индекс:
- D 0 - - - 0x0253EC 09:93DC: 00        .byte off_93E3_00_leo - tbl_93E4   ; con_fighter_leo
- D 0 - - - 0x0253ED 09:93DD: 00        .byte off_93E3_01_raph - tbl_93E4   ; con_fighter_raph
- D 0 - - - 0x0253EE 09:93DE: 00        .byte off_93E3_02_mike - tbl_93E4   ; con_fighter_mike
- D 0 - - - 0x0253EF 09:93DF: 00        .byte off_93E3_03_don - tbl_93E4   ; con_fighter_don
- D 0 - - - 0x0253F0 09:93E0: 09        .byte off_93EC_04_casey - tbl_93E4   ; con_fighter_casey
- D 0 - - - 0x0253F1 09:93E1: 0E        .byte off_93F1_05_hot - tbl_93E4   ; con_fighter_hot
- D 0 - - - 0x0253F2 09:93E2: 15        .byte off_93F8_06_shred - tbl_93E4   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte off_93E3_07 - tbl_93E4   ; con_fighter___leo
                                        .byte off_93E3_08 - tbl_93E4   ; con_fighter___raph
                                        .byte off_93E3_09 - tbl_93E4   ; con_fighter___mike
                                        .byte off_93E3_0A - tbl_93E4   ; con_fighter___don
                                        .byte off_93EC_0B - tbl_93E4   ; con_fighter___casey
                                        .byte off_93F1_0C - tbl_93E4   ; con_fighter___hot
                                        .byte off_93F8_0D - tbl_93E4   ; con_fighter___shred
                                    .endif



tbl_93E4:
tbl_93E3_анимация_стойки:
off_93E3_00_leo:
off_93E3_07:
off_93E3_01_raph:
off_93E3_08:
off_93E3_02_mike:
off_93E3_09:
off_93E3_03_don:
off_93E3_0A:
;                                              +---------- ram_obj_anim_id
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x0253F3 09:93E3: 80        .byte $80, $06   ; 
- D 0 - - - 0x0253F5 09:93E5: 81        .byte $81, $06   ; 
- D 0 - - - 0x0253F7 09:93E7: 82        .byte $82, $06   ; 
- D 0 - - - 0x0253F9 09:93E9: 81        .byte $81, $06   ; 
- D 0 - - - 0x0253FB 09:93EB: 00        .byte $00   ; end token

off_93EC_04_casey:
off_93EC_0B:
- D 0 - - - 0x0253FC 09:93EC: 80        .byte $80, $10   ; 
- D 0 - - - 0x0253FE 09:93EE: 81        .byte $81, $10   ; 
- D 0 - - - 0x025400 09:93F0: 00        .byte $00   ; end token

off_93F1_05_hot:
off_93F1_0C:
- D 0 - - - 0x025401 09:93F1: 80        .byte $80, $0C   ; 
- D 0 - - - 0x025403 09:93F3: 81        .byte $81, $0C   ; 
- D 0 - - - 0x025405 09:93F5: 82        .byte $82, $0C   ; 
- D 0 - - - 0x025407 09:93F7: 00        .byte $00   ; end token

off_93F8_06_shred:
off_93F8_0D:
- D 0 - - - 0x025408 09:93F8: 80        .byte $80, $0A   ; 
- D 0 - - - 0x02540A 09:93FA: 81        .byte $81, $0A   ; 
- D 0 - - - 0x02540C 09:93FC: 82        .byte $82, $0A   ; 
- D 0 - - - 0x02540E 09:93FE: 81        .byte $81, $0A   ; 
- D 0 - - - 0x025410 09:9400: 00        .byte $00   ; end token



tbl_9693_индекс:
- D 0 - - - 0x0256A3 09:9693: 00        .byte off_969A_00_leo - tbl_969A   ; con_fighter_leo
- D 0 - - - 0x0256A4 09:9694: 00        .byte off_969A_01_raph - tbl_969A   ; con_fighter_raph
- D 0 - - - 0x0256A5 09:9695: 0A        .byte off_96A4_02_mike - tbl_969A   ; con_fighter_mike
- D 0 - - - 0x0256A6 09:9696: 0A        .byte off_96A4_03_don - tbl_969A   ; con_fighter_don
- D 0 - - - 0x0256A7 09:9697: 16        .byte off_96B0_04_casey - tbl_969A   ; con_fighter_casey
- D 0 - - - 0x0256A8 09:9698: 24        .byte off_96BE_05_hot - tbl_969A   ; con_fighter_hot
- D 0 - - - 0x0256A9 09:9699: 2E        .byte off_96C8_06_shred - tbl_969A   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte off_969A_07 - tbl_969A   ; con_fighter___leo
                                        .byte off_969A_08 - tbl_969A   ; con_fighter___raph
                                        .byte off_96A4_09 - tbl_969A   ; con_fighter___mike
                                        .byte off_96A4_0A - tbl_969A   ; con_fighter___don
                                        .byte off_96B0_0B - tbl_969A   ; con_fighter___casey
                                        .byte off_96BE_0C - tbl_969A   ; con_fighter___hot
                                        .byte off_96C8_0D - tbl_969A   ; con_fighter___shred
                                    .endif



tbl_969A:
off_969A_00_leo:
off_969A_07:
off_969A_01_raph:
off_969A_08:
- D 0 - - - 0x0256AA 09:969A: C3        .byte $C3, $03   ; 
- D 0 - - - 0x0256AC 09:969C: C4        .byte $C4, $04   ; 
- D 0 - - - 0x0256AE 09:969E: 00        .byte $00   ; 

- D 0 - - - 0x0256AF 09:969F: C5        .byte $C5, $0D   ; 
- D 0 - - - 0x0256B1 09:96A1: C6        .byte $C6, $0A   ; 
- D 0 - - - 0x0256B3 09:96A3: FF        .byte $FF   ; end token



off_96A4_02_mike:
off_96A4_09:
off_96A4_03_don:
off_96A4_0A:
- D 0 - - - 0x0256B4 09:96A4: 99        .byte $99, $03   ; 
- D 0 - - - 0x0256B6 09:96A6: C4        .byte $C4, $03   ; 
- D 0 - - - 0x0256B8 09:96A8: C6        .byte $C6, $04   ; 
- D 0 - - - 0x0256BA 09:96AA: 00        .byte $00   ; 

- D 0 - - - 0x0256BB 09:96AB: C8        .byte $C8, $0D   ; 
- D 0 - - - 0x0256BD 09:96AD: C4        .byte $C4, $09   ; 
- D 0 - - - 0x0256BF 09:96AF: FF        .byte $FF   ; end token



off_96B0_04_casey:
off_96B0_0B:
- D 0 - - - 0x0256C0 09:96B0: B9        .byte $B9, $04   ; 
- D 0 - - - 0x0256C2 09:96B2: BA        .byte $BA, $05   ; 
- D 0 - - - 0x0256C4 09:96B4: 00        .byte $00   ; 

- D 0 - - - 0x0256C5 09:96B5: BB        .byte $BB, $04   ; 
- D 0 - - - 0x0256C7 09:96B7: BB        .byte $BB, $06   ; 
- D 0 - - - 0x0256C9 09:96B9: BC        .byte $BC, $08   ; 
- D 0 - - - 0x0256CB 09:96BB: BB        .byte $BB, $09   ; 
- D 0 - - - 0x0256CD 09:96BD: FF        .byte $FF   ; end token



off_96BE_05_hot:
off_96BE_0C:
- D 0 - - - 0x0256CE 09:96BE: B2        .byte $B2, $08   ; 
- D 0 - - - 0x0256D0 09:96C0: B3        .byte $B3, $06   ; 
- D 0 - - - 0x0256D2 09:96C2: 00        .byte $00   ; 

- D 0 - - - 0x0256D3 09:96C3: B4        .byte $B4, $12   ; 
- D 0 - - - 0x0256D5 09:96C5: B3        .byte $B3, $0B   ; 
- D 0 - - - 0x0256D7 09:96C7: FF        .byte $FF   ; end token



off_96C8_06_shred:
off_96C8_0D:
- D 0 - - - 0x0256D8 09:96C8: 8A        .byte $8A, $04   ; 
- D 0 - - - 0x0256DA 09:96CA: AF        .byte $AF, $03   ; 
- D 0 - - - 0x0256DC 09:96CC: B9        .byte $B9, $03   ; 
- D 0 - - - 0x0256DE 09:96CE: BA        .byte $BA, $03   ; 
- D 0 - - - 0x0256E0 09:96D0: 00        .byte $00   ; 

- D 0 - - - 0x0256E1 09:96D1: BB        .byte $BB, $08   ; 
- D 0 - - - 0x0256E3 09:96D3: BB        .byte $BB, $08   ; 
- D 0 - - - 0x0256E5 09:96D5: 87        .byte $87, $08   ; 
- D 0 - - - 0x0256E7 09:96D7: FF        .byte $FF   ; end token



tbl_96D8_индекс:
- D 0 - - - 0x0256E8 09:96D8: 11        .byte off_96F0_00_leo - tbl_96DF   ; con_fighter_leo
- D 0 - - - 0x0256E9 09:96D9: 11        .byte off_96F0_01_raph - tbl_96DF   ; con_fighter_raph
- D 0 - - - 0x0256EA 09:96DA: 04        .byte off_96E3_02_mike - tbl_96DF   ; con_fighter_mike
- D 0 - - - 0x0256EB 09:96DB: 04        .byte off_96E3_03_don - tbl_96DF   ; con_fighter_don
- D 0 - - - 0x0256EC 09:96DC: 00        .byte off_96DF_04_casey - tbl_96DF   ; con_fighter_casey
- D 0 - - - 0x0256ED 09:96DD: 07        .byte off_96E6_05_hot - tbl_96DF   ; con_fighter_hot
- D 0 - - - 0x0256EE 09:96DE: 0B        .byte off_96EA_06_shred - tbl_96DF   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte off_96F0_07 - tbl_96DF   ; con_fighter___leo
                                        .byte off_96F0_08 - tbl_96DF   ; con_fighter___raph
                                        .byte off_96E3_09 - tbl_96DF   ; con_fighter___mike
                                        .byte off_96E3_0A - tbl_96DF   ; con_fighter___don
                                        .byte off_96DF_0B - tbl_96DF   ; con_fighter___casey
                                        .byte off_96E6_0C - tbl_96DF   ; con_fighter___hot
                                        .byte off_96EA_0D - tbl_96DF   ; con_fighter___shred
                                    .endif



tbl_96DF:
off_96DF_04_casey:
off_96DF_0B:
- D 0 - - - 0x0256EF 09:96DF: BD        .byte $BD   ; 
- D 0 - - - 0x0256F0 09:96E0: BE        .byte $BE   ; 
- D 0 - - - 0x0256F1 09:96E1: BF        .byte $BF   ; 
- D 0 - - - 0x0256F2 09:96E2: 00        .byte $00   ; 

off_96E3_02_mike:
off_96E3_09:
off_96E3_03_don:
off_96E3_0A:
- D 0 - - - 0x0256F3 09:96E3: 00        .byte $00   ; 
- D 0 - - - 0x0256F4 09:96E4: 00        .byte $00   ; 
- D 0 - - - 0x0256F5 09:96E5: C7        .byte $C7   ; 

off_96E6_05_hot:
off_96E6_0C:
- D 0 - - - 0x0256F6 09:96E6: 00        .byte $00   ; 
- D 0 - - - 0x0256F7 09:96E7: 00        .byte $00   ; 
- D 0 - - - 0x0256F8 09:96E8: 00        .byte $00   ; 
- D 0 - - - 0x0256F9 09:96E9: 00        .byte $00   ; 

off_96EA_06_shred:
off_96EA_0D:
- D 0 - - - 0x0256FA 09:96EA: 00        .byte $00   ; 
- D 0 - - - 0x0256FB 09:96EB: 00        .byte $00   ; 
- D 0 - - - 0x0256FC 09:96EC: BC        .byte $BC   ; 
- D 0 - - - 0x0256FD 09:96ED: BD        .byte $BD   ; 
- D 0 - - - 0x0256FE 09:96EE: BE        .byte $BE   ; 
- D 0 - - - 0x0256FF 09:96EF: 00        .byte $00   ; 

off_96F0_00_leo:
off_96F0_07:
off_96F0_01_raph:
off_96F0_08:
- D 0 - - - 0x025700 09:96F0: 00        .byte $00   ; 
- D 0 - - - 0x025701 09:96F1: C9        .byte $C9   ; 
- D 0 - - - 0x025702 09:96F2: 00        .byte $00   ; 
- D 0 - - - 0x025703 09:96F3: 00        .byte $00   ; 
- D 0 - - - 0x025704 09:96F4: 00        .byte $00   ; 



tbl_96F8:
; 
- D 0 - - - 0x025708 09:96F8: 01        .byte $01   ; 00 con_fighter_leo
- D 0 - - - 0x025709 09:96F9: F0        .byte $F0   ; 01 con_fighter_raph
- D 0 - - - 0x02570A 09:96FA: 11        .byte $11   ; 02 con_fighter_mike
- D 0 - - - 0x02570B 09:96FB: E0        .byte $E0   ; 03 con_fighter_don
- D 0 - - - 0x02570C 09:96FC: 31        .byte $31   ; 04 con_fighter_casey
- D 0 - - - 0x02570D 09:96FD: C0        .byte $C0   ; 05 con_fighter_hot
- D 0 - - - 0x02570E 09:96FE: F0        .byte $F0   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $01   ; 07 con_fighter___leo
                                        .byte $F0   ; 08 con_fighter___raph
                                        .byte $11   ; 09 con_fighter___mike
                                        .byte $E0   ; 0A con_fighter___don
                                        .byte $31   ; 0B con_fighter___casey
                                        .byte $C0   ; 0C con_fighter___hot
                                        .byte $F0   ; 0D con_fighter___shred
                                    .endif
; 
- D 0 - - - 0x02570F 09:96FF: B1        .byte $B1   ; 00 con_fighter_leo
- D 0 - - - 0x025710 09:9700: A1        .byte $A1   ; 01 con_fighter_raph
- D 0 - - - 0x025711 09:9701: D1        .byte $D1   ; 02 con_fighter_mike
- D 0 - - - 0x025712 09:9702: 91        .byte $91   ; 03 con_fighter_don
- D 0 - - - 0x025713 09:9703: 02        .byte $02   ; 04 con_fighter_casey
- D 0 - - - 0x025714 09:9704: 71        .byte $71   ; 05 con_fighter_hot
- D 0 - - - 0x025715 09:9705: A1        .byte $A1   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $B1   ; 07 con_fighter___leo
                                        .byte $A1   ; 08 con_fighter___raph
                                        .byte $D1   ; 09 con_fighter___mike
                                        .byte $91   ; 0A con_fighter___don
                                        .byte $02   ; 0B con_fighter___casey
                                        .byte $71   ; 0C con_fighter___hot
                                        .byte $A1   ; 0D con_fighter___shred
                                    .endif
; 
- D 0 - - - 0x025716 09:9706: 31        .byte $31   ; 00 con_fighter_leo
- D 0 - - - 0x025717 09:9707: 21        .byte $21   ; 01 con_fighter_raph
- D 0 - - - 0x025718 09:9708: 41        .byte $41   ; 02 con_fighter_mike
- D 0 - - - 0x025719 09:9709: 11        .byte $11   ; 03 con_fighter_don
- D 0 - - - 0x02571A 09:970A: 61        .byte $61   ; 04 con_fighter_casey
- D 0 - - - 0x02571B 09:970B: E0        .byte $E0   ; 05 con_fighter_hot
- D 0 - - - 0x02571C 09:970C: 21        .byte $21   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $31   ; 07 con_fighter___leo
                                        .byte $21   ; 08 con_fighter___raph
                                        .byte $41   ; 09 con_fighter___mike
                                        .byte $11   ; 0A con_fighter___don
                                        .byte $61   ; 0B con_fighter___casey
                                        .byte $E0   ; 0C con_fighter___hot
                                        .byte $21   ; 0D con_fighter___shred
                                    .endif



tbl_970D:
; ходьба вперед
- D 0 - - - 0x02571D 09:970D: 00        .byte con_D0B3_черепахи_ходьба_вперед   ; 00 con_fighter_leo
- D 0 - - - 0x02571E 09:970E: 00        .byte con_D0B3_черепахи_ходьба_вперед   ; 01 con_fighter_raph
- D 0 - - - 0x02571F 09:970F: 00        .byte con_D0B3_черепахи_ходьба_вперед   ; 02 con_fighter_mike
- D 0 - - - 0x025720 09:9710: 00        .byte con_D0B3_черепахи_ходьба_вперед   ; 03 con_fighter_don
- D 0 - - - 0x025721 09:9711: 06        .byte con_D0B3_casey_ходьба_вперед   ; 04 con_fighter_casey
- D 0 - - - 0x025722 09:9712: 0C        .byte con_D0B3_hot_ходьба_вперед   ; 05 con_fighter_hot
- D 0 - - - 0x025723 09:9713: 10        .byte con_D0B3_shred_ходьба_вперед   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_D0B3_черепахи_ходьба_вперед   ; 07 con_fighter___leo
                                        .byte con_D0B3_черепахи_ходьба_вперед   ; 08 con_fighter___raph
                                        .byte con_D0B3_черепахи_ходьба_вперед   ; 09 con_fighter___mike
                                        .byte con_D0B3_черепахи_ходьба_вперед   ; 0A con_fighter___don
                                        .byte con_D0B3_casey_ходьба_вперед   ; 0B con_fighter___casey
                                        .byte con_D0B3_hot_ходьба_вперед   ; 0C con_fighter___hot
                                        .byte con_D0B3_shred_ходьба_вперед   ; 0D con_fighter___shred
                                    .endif
; ходьба назад
- D 0 - - - 0x025724 09:9714: 02        .byte con_D0B3_черепахи_ходьба_назад   ; 00 con_fighter_leo
- D 0 - - - 0x025725 09:9715: 02        .byte con_D0B3_черепахи_ходьба_назад   ; 01 con_fighter_raph
- D 0 - - - 0x025726 09:9716: 02        .byte con_D0B3_черепахи_ходьба_назад   ; 02 con_fighter_mike
- D 0 - - - 0x025727 09:9717: 02        .byte con_D0B3_черепахи_ходьба_назад   ; 03 con_fighter_don
- D 0 - - - 0x025728 09:9718: 07        .byte con_D0B3_casey_ходьба_назад   ; 04 con_fighter_casey
- D 0 - - - 0x025729 09:9719: 0D        .byte con_D0B3_hot_ходьба_назад   ; 05 con_fighter_hot
- D 0 - - - 0x02572A 09:971A: 11        .byte con_D0B3_shred_ходьба_назад   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_D0B3_черепахи_ходьба_назад   ; 07 con_fighter___leo
                                        .byte con_D0B3_черепахи_ходьба_назад   ; 08 con_fighter___raph
                                        .byte con_D0B3_черепахи_ходьба_назад   ; 09 con_fighter___mike
                                        .byte con_D0B3_черепахи_ходьба_назад   ; 0A con_fighter___don
                                        .byte con_D0B3_casey_ходьба_назад   ; 0B con_fighter___casey
                                        .byte con_D0B3_hot_ходьба_назад   ; 0C con_fighter___hot
                                        .byte con_D0B3_shred_ходьба_назад   ; 0D con_fighter___shred
                                    .endif



; бег вперед
- D 0 - - - 0x02572B 09:971B: 04        .byte con_D0B3_черепахи_бег_вперед   ; 00 con_fighter_leo
- D 0 - - - 0x02572C 09:971C: 04        .byte con_D0B3_черепахи_бег_вперед   ; 01 con_fighter_raph
- D 0 - - - 0x02572D 09:971D: 04        .byte con_D0B3_черепахи_бег_вперед   ; 02 con_fighter_mike
- D 0 - - - 0x02572E 09:971E: 04        .byte con_D0B3_черепахи_бег_вперед   ; 03 con_fighter_don
- D 0 - - - 0x02572F 09:971F: 05        .byte con_D0B3_casey_бег_вперед   ; 04 con_fighter_casey
- D 0 - - - 0x025730 09:9720: 0A        .byte con_D0B3_hot_бег_вперед   ; 05 con_fighter_hot
- D 0 - - - 0x025731 09:9721: 0E        .byte con_D0B3_shred_бег_вперед   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_D0B3_черепахи_бег_вперед   ; 07 con_fighter___leo
                                        .byte con_D0B3_черепахи_бег_вперед   ; 08 con_fighter___raph
                                        .byte con_D0B3_черепахи_бег_вперед   ; 09 con_fighter___mike
                                        .byte con_D0B3_черепахи_бег_вперед   ; 0A con_fighter___don
                                        .byte con_D0B3_casey_бег_вперед   ; 0B con_fighter___casey
                                        .byte con_D0B3_hot_бег_вперед   ; 0C con_fighter___hot
                                        .byte con_D0B3_shred_бег_вперед   ; 0D con_fighter___shred
                                    .endif
; бег назад
- D 0 - - - 0x025732 09:9722: 09        .byte con_D0B3_черепахи_бег_назад   ; 00 con_fighter_leo
- D 0 - - - 0x025733 09:9723: 09        .byte con_D0B3_черепахи_бег_назад   ; 01 con_fighter_raph
- D 0 - - - 0x025734 09:9724: 09        .byte con_D0B3_черепахи_бег_назад   ; 02 con_fighter_mike
- D 0 - - - 0x025735 09:9725: 09        .byte con_D0B3_черепахи_бег_назад   ; 03 con_fighter_don
- D 0 - - - 0x025736 09:9726: 08        .byte con_D0B3_casey_бег_назад   ; 04 con_fighter_casey
- D 0 - - - 0x025737 09:9727: 0B        .byte con_D0B3_hot_бег_назад   ; 05 con_fighter_hot
- D 0 - - - 0x025738 09:9728: 0F        .byte con_D0B3_shred_бег_назад   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_D0B3_черепахи_бег_назад   ; 07 con_fighter___leo
                                        .byte con_D0B3_черепахи_бег_назад   ; 08 con_fighter___raph
                                        .byte con_D0B3_черепахи_бег_назад   ; 09 con_fighter___mike
                                        .byte con_D0B3_черепахи_бег_назад   ; 0A con_fighter___don
                                        .byte con_D0B3_casey_бег_назад   ; 0B con_fighter___casey
                                        .byte con_D0B3_hot_бег_назад   ; 0C con_fighter___hot
                                        .byte con_D0B3_shred_бег_назад   ; 0D con_fighter___shred
                                    .endif



tbl_9729_spd_Z:
- D 0 - - - 0x025739 09:9729: 3F        .word $F93F ; 00 con_fighter_leo
- D 0 - - - 0x02573B 09:972B: 4F        .word $F94F ; 01 con_fighter_raph
- D 0 - - - 0x02573D 09:972D: 10        .word $F910 ; 02 con_fighter_mike
- D 0 - - - 0x02573F 09:972F: C6        .word $F9C6 ; 03 con_fighter_don
- D 0 - - - 0x025741 09:9731: 10        .word $F910 ; 04 con_fighter_casey
- D 0 - - - 0x025743 09:9733: 99        .word $F999 ; 05 con_fighter_hot
- D 0 - - - 0x025745 09:9735: 9A        .word $F99A ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .word $F93F ; 07 con_fighter___leo
                                        .word $F94F ; 08 con_fighter___raph
                                        .word $F910 ; 09 con_fighter___mike
                                        .word $F9C6 ; 0A con_fighter___don
                                        .word $F910 ; 0B con_fighter___casey
                                        .word $F999 ; 0C con_fighter___hot
                                        .word $F99A ; 0D con_fighter___shred
                                    .endif



tbl_9737:
- D 0 - - - 0x025747 09:9737: 00        .byte $00   ; 00 con_fighter_leo
- D 0 - - - 0x025748 09:9738: FD        .byte $FD   ; 01 con_fighter_raph
- D 0 - - - 0x025749 09:9739: 00        .byte $00   ; 02 con_fighter_mike
- D 0 - - - 0x02574A 09:973A: F5        .byte $F5   ; 03 con_fighter_don
- D 0 - - - 0x02574B 09:973B: 05        .byte $05   ; 04 con_fighter_casey
- D 0 - - - 0x02574C 09:973C: FA        .byte $FA   ; 05 con_fighter_hot
- D 0 - - - 0x02574D 09:973D: F8        .byte $F8   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $00   ; 07 con_fighter___leo
                                        .byte $FD   ; 08 con_fighter___raph
                                        .byte $00   ; 09 con_fighter___mike
                                        .byte $F5   ; 0A con_fighter___don
                                        .byte $05   ; 0B con_fighter___casey
                                        .byte $FA   ; 0C con_fighter___hot
                                        .byte $F8   ; 0D con_fighter___shred
                                    .endif



tbl_973E_урон_от_бросков:
; первый и второй бросок для каждого перса
- D 0 - - - 0x02574E 09:973E: 2B        .byte $2A, $2A  ; 00 con_fighter_leo
- D 0 - - - 0x02574F 09:973F: 08        .byte $08, $08  ; 01 con_fighter_raph
- D 0 - - - 0x025750 09:9740: 22        .byte $22, $22  ; 02 con_fighter_mike
- D 0 - - - 0x025751 09:9741: 2B        .byte $2A, $2A  ; 03 con_fighter_don
- D 0 - - - 0x025752 09:9742: 38        .byte $36, $36  ; 04 con_fighter_casey
- D 0 - - - 0x025753 09:9743: 40        .byte $3F, $3F  ; 05 con_fighter_hot
- D 0 - - - 0x025754 09:9744: 40        .byte $3F, $3F  ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $2A, $2A   ; 07 con_fighter___leo
                                        .byte $08, $08   ; 08 con_fighter___raph
                                        .byte $22, $22   ; 09 con_fighter___mike
                                        .byte $2A, $2A   ; 0A con_fighter___don
                                        .byte $36, $36   ; 0B con_fighter___casey
                                        .byte $3F, $3F   ; 0C con_fighter___hot
                                        .byte $3F, $3F   ; 0D con_fighter___shred
                                    .endif



tbl_9745_звуки_и_анимации_бросков:
; 00 con_fighter_leo
- D 0 - - - 0x025755 09:9745: 00        .word off_974C_00_leo_00
                                        .word off_974C_00_leo_01
; 01 con_fighter_raph
- D 0 - - - 0x025756 09:9746: 48        .word off_9794_01_raph_00
                                        .word off_9794_01_raph_01
; 02 con_fighter_mike
- D 0 - - - 0x025757 09:9747: 24        .word off_9770_02_mike_00
                                        .word off_9770_02_mike_01
; 03 con_fighter_don
- D 0 - - - 0x025758 09:9748: 00        .word off_974C_03_don_00
                                        .word off_974C_03_don_01
; 04 con_fighter_casey
- D 0 - - - 0x025759 09:9749: 68        .word off_97B4_04_casey_00
                                        .word off_97B4_04_casey_01
; 05 con_fighter_hot
- D 0 - - - 0x02575A 09:974A: 90        .word off_97DC_05_hot_00
                                        .word off_97DC_05_hot_01
; 06 con_fighter_shred
- D 0 - - - 0x02575B 09:974B: B2        .word off_97FE_06_shred_00
                                        .word off_97FE_06_shred_01
                                    .if con_новые_персы <> $00
; 07 con_fighter___leo
                                        .word off_974C_07_00
                                        .word off_974C_07_01
; 08 con_fighter___raph
                                        .word off_9794_08_00
                                        .word off_9794_08_01
; 09 con_fighter___mike
                                        .word off_9770_09_00
                                        .word off_9770_09_01
; 0A con_fighter___don
                                        .word off_974C_0A_00
                                        .word off_974C_0A_01
; 0B con_fighter___casey
                                        .word off_97B4_0B_00
                                        .word off_97B4_0B_01
; 0C con_fighter___hot
                                        .word off_97DC_0C_00
                                        .word off_97DC_0C_01
; 0D con_fighter___shred
                                        .word off_97FE_0D_00
                                        .word off_97FE_0D_01
                                    .endif



off_974C_00_leo_00:
off_974C_07_00:
off_974C_00_leo_01:
off_974C_07_01:
off_974C_03_don_00:
off_974C_0A_00:
off_974C_03_don_01:
off_974C_0A_01:
; 00
- D 0 - - - 0x02575C 09:974C: 00        .byte $00   ; записать звук
- D 0 - - - 0x02575D 09:974D: 53        .byte con_dpcm_warcry_turtle_1   ; 
- - - - - - 0x02575E 09:974E: 00        .byte $00   ; placeholder
- - - - - - 0x02575F 09:974F: 00        .byte $00   ; placeholder
; 01
- D 0 - - - 0x025760 09:9750: 8B        .byte $8B   ; номер анимации
- D 0 - - - 0x025761 09:9751: 06        .byte $06   ; длительность анимации + тряска экрана
- D 0 - - - 0x025762 09:9752: 18        .byte $18   ; смещение соперника по X
- D 0 - - - 0x025763 09:9753: 00        .byte $00   ; смещение соперника по Y
; 02
- D 0 - - - 0x025764 09:9754: 00        .byte $00   ; записать звук
- D 0 - - - 0x025765 09:9755: 19        .byte con_075C_19   ; 
- - - - - - 0x025766 09:9756: 00        .byte $00   ; placeholder
- - - - - - 0x025767 09:9757: 00        .byte $00   ; placeholder
; 03
- D 0 - - - 0x025768 09:9758: B5        .byte $B5   ; номер анимации
- D 0 - - - 0x025769 09:9759: 06        .byte $06   ; длительность анимации + тряска экрана
- D 0 - - - 0x02576A 09:975A: 18        .byte $18   ; смещение соперника по X
- D 0 - - - 0x02576B 09:975B: 00        .byte $00   ; смещение соперника по Y
; 04
- D 0 - - - 0x02576C 09:975C: B5        .byte $B5   ; номер анимации
- D 0 - - - 0x02576D 09:975D: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x02576E 09:975E: 14        .byte $14   ; смещение соперника по X
- D 0 - - - 0x02576F 09:975F: F8        .byte $F8   ; смещение соперника по Y
; 05
- D 0 - - - 0x025770 09:9760: B6        .byte $B6   ; номер анимации
- D 0 - - - 0x025771 09:9761: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x025772 09:9762: 10        .byte $10   ; смещение соперника по X
- D 0 - - - 0x025773 09:9763: F0        .byte $F0   ; смещение соперника по Y
; 06
- D 0 - - - 0x025774 09:9764: B6        .byte $B6   ; номер анимации
- D 0 - - - 0x025775 09:9765: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x025776 09:9766: 01        .byte $01   ; смещение соперника по X
- D 0 - - - 0x025777 09:9767: EC        .byte $EC   ; смещение соперника по Y
; 07
- D 0 - - - 0x025778 09:9768: B7        .byte $B7   ; номер анимации
- D 0 - - - 0x025779 09:9769: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x02577A 09:976A: F8        .byte $F8   ; смещение соперника по X
- D 0 - - - 0x02577B 09:976B: E8        .byte $E8   ; смещение соперника по Y
; 08
- D 0 - - - 0x02577C 09:976C: B7        .byte $B7   ; номер анимации
- D 0 - - - 0x02577D 09:976D: C5        .byte $C5   ; длительность анимации + тряска экрана
- D 0 - - - 0x02577E 09:976E: E8        .byte $E8   ; смещение соперника по X
- D 0 - - - 0x02577F 09:976F: E8        .byte $E8   ; смещение соперника по Y



off_9770_02_mike_00:
off_9770_09_00:
off_9770_02_mike_01:
off_9770_09_01:
; 00
- D 0 - - - 0x025780 09:9770: 00        .byte $00   ; записать звук
- D 0 - - - 0x025781 09:9771: 53        .byte con_dpcm_warcry_turtle_1   ; 
- - - - - - 0x025782 09:9772: 00        .byte $00   ; placeholder
- - - - - - 0x025783 09:9773: 00        .byte $00   ; placeholder
; 01
- D 0 - - - 0x025784 09:9774: B5        .byte $B5   ; номер анимации
- D 0 - - - 0x025785 09:9775: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x025786 09:9776: 14        .byte $14   ; смещение соперника по X
- D 0 - - - 0x025787 09:9777: 00        .byte $00   ; смещение соперника по Y
; 02
- D 0 - - - 0x025788 09:9778: 00        .byte $00   ; записать звук
- D 0 - - - 0x025789 09:9779: 19        .byte con_075C_19   ; 
- - - - - - 0x02578A 09:977A: 00        .byte $00   ; placeholder
- - - - - - 0x02578B 09:977B: 00        .byte $00   ; placeholder
; 03
- D 0 - - - 0x02578C 09:977C: B5        .byte $B5   ; номер анимации
- D 0 - - - 0x02578D 09:977D: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x02578E 09:977E: 12        .byte $12   ; смещение соперника по X
- D 0 - - - 0x02578F 09:977F: FC        .byte $FC   ; смещение соперника по Y
; 04
- D 0 - - - 0x025790 09:9780: B8        .byte $B8   ; номер анимации
- D 0 - - - 0x025791 09:9781: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x025792 09:9782: 10        .byte $10   ; смещение соперника по X
- D 0 - - - 0x025793 09:9783: FA        .byte $FA   ; смещение соперника по Y
; 05
- D 0 - - - 0x025794 09:9784: B9        .byte $B9   ; номер анимации
- D 0 - - - 0x025795 09:9785: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x025796 09:9786: 08        .byte $08   ; смещение соперника по X
- D 0 - - - 0x025797 09:9787: 00        .byte $00   ; смещение соперника по Y
; 06
- D 0 - - - 0x025798 09:9788: B9        .byte $B9   ; номер анимации
- D 0 - - - 0x025799 09:9789: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x02579A 09:978A: FE        .byte $FE   ; смещение соперника по X
- D 0 - - - 0x02579B 09:978B: 00        .byte $00   ; смещение соперника по Y
; 07
- D 0 - - - 0x02579C 09:978C: BA        .byte $BA   ; номер анимации
- D 0 - - - 0x02579D 09:978D: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x02579E 09:978E: F8        .byte $F8   ; смещение соперника по X
- D 0 - - - 0x02579F 09:978F: 00        .byte $00   ; смещение соперника по Y
; 08
- D 0 - - - 0x0257A0 09:9790: BA        .byte $BA   ; номер анимации
- D 0 - - - 0x0257A1 09:9791: C5        .byte $C5   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257A2 09:9792: F0        .byte $F0   ; смещение соперника по X
- D 0 - - - 0x0257A3 09:9793: 00        .byte $00   ; смещение соперника по Y



off_9794_01_raph_00:
off_9794_08_00:
off_9794_01_raph_01:
off_9794_08_01:
; 00
- D 0 - - - 0x0257A4 09:9794: CC        .byte $CC   ; номер анимации
- D 0 - - - 0x0257A5 09:9795: 0C        .byte $0C   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257A6 09:9796: 08        .byte $08   ; смещение соперника по X
- D 0 - - - 0x0257A7 09:9797: 00        .byte $00   ; смещение соперника по Y
; 01
- D 0 - - - 0x0257A8 09:9798: CD        .byte $CD   ; номер анимации
- D 0 - - - 0x0257A9 09:9799: 0C        .byte $0C   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257AA 09:979A: 0B        .byte $0B   ; смещение соперника по X
- D 0 - - - 0x0257AB 09:979B: 00        .byte $00   ; смещение соперника по Y
; 02
- D 0 - - - 0x0257AC 09:979C: CC        .byte $CC   ; номер анимации
- D 0 - - - 0x0257AD 09:979D: 0C        .byte $0C   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257AE 09:979E: 08        .byte $08   ; смещение соперника по X
- D 0 - - - 0x0257AF 09:979F: 00        .byte $00   ; смещение соперника по Y
; 03
- D 0 - - - 0x0257B0 09:97A0: CD        .byte $CD   ; номер анимации
- D 0 - - - 0x0257B1 09:97A1: 0C        .byte $0C   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257B2 09:97A2: 0B        .byte $0B   ; смещение соперника по X
- D 0 - - - 0x0257B3 09:97A3: 00        .byte $00   ; смещение соперника по Y
; 04
- D 0 - - - 0x0257B4 09:97A4: CC        .byte $CC   ; номер анимации
- D 0 - - - 0x0257B5 09:97A5: 0C        .byte $0C   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257B6 09:97A6: 08        .byte $08   ; смещение соперника по X
- D 0 - - - 0x0257B7 09:97A7: 00        .byte $00   ; смещение соперника по Y
; 05
- D 0 - - - 0x0257B8 09:97A8: CD        .byte $CD   ; номер анимации
- D 0 - - - 0x0257B9 09:97A9: 0C        .byte $0C   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257BA 09:97AA: 0B        .byte $0B   ; смещение соперника по X
- D 0 - - - 0x0257BB 09:97AB: 00        .byte $00   ; смещение соперника по Y
; 06
- D 0 - - - 0x0257BC 09:97AC: CC        .byte $CC   ; номер анимации
- D 0 - - - 0x0257BD 09:97AD: 0C        .byte $0C   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257BE 09:97AE: 08        .byte $08   ; смещение соперника по X
- D 0 - - - 0x0257BF 09:97AF: 00        .byte $00   ; смещение соперника по Y
; 07
- D 0 - - - 0x0257C0 09:97B0: CD        .byte $CD   ; номер анимации
- D 0 - - - 0x0257C1 09:97B1: 8C        .byte $8C   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257C2 09:97B2: 0B        .byte $0B   ; смещение соперника по X
- D 0 - - - 0x0257C3 09:97B3: 00        .byte $00   ; смещение соперника по Y



off_97B4_04_casey_00:
off_97B4_0B_00:
off_97B4_04_casey_01:
off_97B4_0B_01:
; 00
- D 0 - - - 0x0257C4 09:97B4: 00        .byte $00   ; записать звук
- D 0 - - - 0x0257C5 09:97B5: 55        .byte con_dpcm_warcry_casey_1   ; 
- - - - - - 0x0257C6 09:97B6: 00        .byte $00   ; placeholder
- - - - - - 0x0257C7 09:97B7: 00        .byte $00   ; placeholder
; 01
- D 0 - - - 0x0257C8 09:97B8: B2        .byte $B2   ; номер анимации
- D 0 - - - 0x0257C9 09:97B9: 0A        .byte $0A   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257CA 09:97BA: 18        .byte $18   ; смещение соперника по X
- D 0 - - - 0x0257CB 09:97BB: 00        .byte $00   ; смещение соперника по Y
; 02
- D 0 - - - 0x0257CC 09:97BC: 00        .byte $00   ; записать звук
- D 0 - - - 0x0257CD 09:97BD: 19        .byte con_075C_19   ; 
- - - - - - 0x0257CE 09:97BE: 00        .byte $00   ; placeholder
- - - - - - 0x0257CF 09:97BF: 00        .byte $00   ; placeholder
; 03
- D 0 - - - 0x0257D0 09:97C0: B3        .byte $B3   ; номер анимации
- D 0 - - - 0x0257D1 09:97C1: 08        .byte $08   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257D2 09:97C2: 1C        .byte $1C   ; смещение соперника по X
- D 0 - - - 0x0257D3 09:97C3: EC        .byte $EC   ; смещение соперника по Y
; 04
- D 0 - - - 0x0257D4 09:97C4: B4        .byte $B4   ; номер анимации
- D 0 - - - 0x0257D5 09:97C5: 08        .byte $08   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257D6 09:97C6: F0        .byte $F0   ; смещение соперника по X
- D 0 - - - 0x0257D7 09:97C7: E8        .byte $E8   ; смещение соперника по Y
; 05
- D 0 - - - 0x0257D8 09:97C8: B5        .byte $B5   ; номер анимации
- D 0 - - - 0x0257D9 09:97C9: 30        .byte $30   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257DA 09:97CA: E8        .byte $E8   ; смещение соперника по X
- D 0 - - - 0x0257DB 09:97CB: 0C        .byte $0C   ; смещение соперника по Y
; 06
- D 0 - - - 0x0257DC 09:97CC: B5        .byte $B5   ; номер анимации
- D 0 - - - 0x0257DD 09:97CD: 50        .byte $50   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257DE 09:97CE: F0        .byte $F0   ; смещение соперника по X
- D 0 - - - 0x0257DF 09:97CF: 0C        .byte $0C   ; смещение соперника по Y
; 07
- D 0 - - - 0x0257E0 09:97D0: A8        .byte $A8   ; номер анимации
- D 0 - - - 0x0257E1 09:97D1: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257E2 09:97D2: 00        .byte $00   ; смещение соперника по X
- D 0 - - - 0x0257E3 09:97D3: 00        .byte $00   ; смещение соперника по Y
; 08
- D 0 - - - 0x0257E4 09:97D4: A7        .byte $A7   ; номер анимации
- D 0 - - - 0x0257E5 09:97D5: 05        .byte $05   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257E6 09:97D6: 00        .byte $00   ; смещение соперника по X
- D 0 - - - 0x0257E7 09:97D7: 00        .byte $00   ; смещение соперника по Y
; 09
- D 0 - - - 0x0257E8 09:97D8: A2        .byte $A2   ; номер анимации
- D 0 - - - 0x0257E9 09:97D9: 85        .byte $85   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257EA 09:97DA: 00        .byte $00   ; смещение соперника по X
- D 0 - - - 0x0257EB 09:97DB: 00        .byte $00   ; смещение соперника по Y



off_97DC_05_hot_00:
off_97DC_0C_00:
; 00
- D 0 - - - 0x0257EC 09:97DC: 00        .byte $00   ; записать звук
- D 0 - - - 0x0257ED 09:97DD: 5A        .byte con_dpcm_warcry_hot_2   ; 
- - - - - - 0x0257EE 09:97DE: 00        .byte $00   ; placeholder
- - - - - - 0x0257EF 09:97DF: 00        .byte $00   ; placeholder
; 01
- D 0 - - - 0x0257F0 09:97E0: 92        .byte $92   ; номер анимации
- D 0 - - - 0x0257F1 09:97E1: 08        .byte $08   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257F2 09:97E2: 18        .byte $18   ; смещение соперника по X
- D 0 - - - 0x0257F3 09:97E3: 00        .byte $00   ; смещение соперника по Y
; 02
- D 0 - - - 0x0257F4 09:97E4: 00        .byte $00   ; записать звук
- D 0 - - - 0x0257F5 09:97E5: 19        .byte con_075C_19   ; 
- - - - - - 0x0257F6 09:97E6: 00        .byte $00   ; placeholder
- - - - - - 0x0257F7 09:97E7: 00        .byte $00   ; placeholder
; 03
- D 0 - - - 0x0257F8 09:97E8: A5        .byte $A5   ; номер анимации
- D 0 - - - 0x0257F9 09:97E9: 08        .byte $08   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257FA 09:97EA: 20        .byte $20   ; смещение соперника по X
- D 0 - - - 0x0257FB 09:97EB: F8        .byte $F8   ; смещение соперника по Y
; 04
- D 0 - - - 0x0257FC 09:97EC: AF        .byte $AF   ; номер анимации
- D 0 - - - 0x0257FD 09:97ED: 08        .byte $08   ; длительность анимации + тряска экрана
- D 0 - - - 0x0257FE 09:97EE: 28        .byte $28   ; смещение соперника по X
- D 0 - - - 0x0257FF 09:97EF: F0        .byte $F0   ; смещение соперника по Y
; 05
- D 0 - - - 0x025800 09:97F0: B0        .byte $B0   ; номер анимации
- D 0 - - - 0x025801 09:97F1: 08        .byte $08   ; длительность анимации + тряска экрана
- D 0 - - - 0x025802 09:97F2: 1C        .byte $1C   ; смещение соперника по X
- D 0 - - - 0x025803 09:97F3: E0        .byte $E0   ; смещение соперника по Y
; 06
- D 0 - - - 0x025804 09:97F4: B1        .byte $B1   ; номер анимации
- D 0 - - - 0x025805 09:97F5: 02        .byte $02   ; длительность анимации + тряска экрана
- D 0 - - - 0x025806 09:97F6: F8        .byte $F8   ; смещение соперника по X
- D 0 - - - 0x025807 09:97F7: D8        .byte $D8   ; смещение соперника по Y
; 07
- D 0 - - - 0x025808 09:97F8: B1        .byte $B1   ; номер анимации
- D 0 - - - 0x025809 09:97F9: 42        .byte $42   ; длительность анимации + тряска экрана
- D 0 - - - 0x02580A 09:97FA: F8        .byte $F8   ; смещение соперника по X
- D 0 - - - 0x02580B 09:97FB: D8        .byte $D8   ; смещение соперника по Y
; 08
- D 0 - - - 0x02580C 09:97FC: B1        .byte $B1   ; номер анимации
- D 0 - - - 0x02580D 09:97FD: 88        .byte $88   ; длительность анимации + тряска экрана
; bzk bug? стремно смешанные таблицы
off_97FE_06_shred_00:
off_97FE_0D_00:
off_97FE_06_shred_01:
off_97FE_0D_01:
; 00
- D 0 - - - 0x02580E 09:97FE: 00        .byte $00   ; записать звук
- D 0 - - - 0x02580F 09:97FF: 57        .byte con_dpcm_warcry_shred_2   ; 
- - - - - - 0x025810 09:9800: 00        .byte $00   ; placeholder
- - - - - - 0x025811 09:9801: 00        .byte $00   ; placeholder
; 01
- D 0 - - - 0x025812 09:9802: B4        .byte $B4   ; номер анимации
- D 0 - - - 0x025813 09:9803: 0C        .byte $0C   ; длительность анимации + тряска экрана
- D 0 - - - 0x025814 09:9804: 18        .byte $18   ; смещение соперника по X
- D 0 - - - 0x025815 09:9805: F8        .byte $F8   ; смещение соперника по Y
; 02
- D 0 - - - 0x025816 09:9806: 00        .byte $00   ; записать звук
- D 0 - - - 0x025817 09:9807: 19        .byte con_075C_19   ; 
- - - - - - 0x025818 09:9808: 00        .byte $00   ; placeholder
- - - - - - 0x025819 09:9809: 00        .byte $00   ; placeholder
; 03
- D 0 - - - 0x02581A 09:980A: B5        .byte $B5   ; номер анимации
- D 0 - - - 0x02581B 09:980B: 08        .byte $08   ; длительность анимации + тряска экрана
- D 0 - - - 0x02581C 09:980C: 01        .byte $01   ; смещение соперника по X
- D 0 - - - 0x02581D 09:980D: E0        .byte $E0   ; смещение соперника по Y
; 04
- D 0 - - - 0x02581E 09:980E: B6        .byte $B6   ; номер анимации
- D 0 - - - 0x02581F 09:980F: 08        .byte $08   ; длительность анимации + тряска экрана
- D 0 - - - 0x025820 09:9810: F8        .byte $F8   ; смещение соперника по X
- D 0 - - - 0x025821 09:9811: F0        .byte $F0   ; смещение соперника по Y
; 05
- D 0 - - - 0x025822 09:9812: B7        .byte $B7   ; номер анимации
- D 0 - - - 0x025823 09:9813: 4C        .byte $4C   ; длительность анимации + тряска экрана
- D 0 - - - 0x025824 09:9814: F8        .byte $F8   ; смещение соперника по X
- D 0 - - - 0x025825 09:9815: F0        .byte $F0   ; смещение соперника по Y
; 06
- D 0 - - - 0x025826 09:9816: B7        .byte $B7   ; номер анимации
- D 0 - - - 0x025827 09:9817: 8C        .byte $8C   ; длительность анимации + тряска экрана
off_97DC_05_hot_01:
off_97DC_0C_01:
; 00
                                        .byte $00   ; записать звук
                                        .byte con_dpcm_warcry_hot_2   ; 
                                        .byte $00   ; placeholder
                                        .byte $00   ; placeholder
; 01
                                        .byte $92   ; номер анимации
                                        .byte $09   ; длительность анимации + тряска экрана
                                        .byte $18   ; смещение соперника по X
                                        .byte $00   ; смещение соперника по Y
; 02
                                        .byte $8B   ; номер анимации
                                        .byte $09   ; длительность анимации + тряска экрана
                                        .byte $18   ; смещение соперника по X
                                        .byte $F8   ; смещение соперника по Y
; 03
                                        .byte $00   ; записать звук
                                        .byte $0D   ; 
                                        .byte $00   ; placeholder
                                        .byte $00   ; placeholder
; 04
                                        .byte $8F   ; номер анимации
                                        .byte $08   ; длительность анимации + тряска экрана
                                        .byte $20   ; смещение соперника по X
                                        .byte $F8   ; смещение соперника по Y
; 05
                                        .byte $8F   ; номер анимации
                                        .byte $C0   ; длительность анимации + тряска экрана
                                        .byte $20   ; смещение соперника по X
                                        .byte $F0   ; смещение соперника по Y



tbl_98D3_скорость_X_брошенного_перса:
; первый и второй бросок для каждого перса
- D 0 - - - 0x0258E3 09:98D3: 81        .byte $81, $81  ; 00 con_fighter_leo
- D 0 - - - 0x0258E4 09:98D4: 01        .byte $01, $01  ; 01 con_fighter_raph
- D 0 - - - 0x0258E5 09:98D5: 02        .byte $02, $02  ; 02 con_fighter_mike
- D 0 - - - 0x0258E6 09:98D6: 81        .byte $81, $81  ; 03 con_fighter_don
- D 0 - - - 0x0258E7 09:98D7: 01        .byte $01, $01  ; 04 con_fighter_casey
- D 0 - - - 0x0258E8 09:98D8: 02        .byte $02, $02  ; 05 con_fighter_hot
- D 0 - - - 0x0258E9 09:98D9: 04        .byte $04, $04  ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $81, $81   ; 07 con_fighter___leo
                                        .byte $01, $01   ; 08 con_fighter___raph
                                        .byte $02, $02   ; 09 con_fighter___mike
                                        .byte $81, $81   ; 0A con_fighter___don
                                        .byte $01, $01   ; 0B con_fighter___casey
                                        .byte $02, $02   ; 0C con_fighter___hot
                                        .byte $04, $04   ; 0D con_fighter___shred
                                    .endif



tbl_98DA_скорость_Y_брошенного_перса:
; первый и второй бросок для каждого перса
- D 0 - - - 0x0258EA 09:98DA: FE        .byte $FE, $FE  ; 00 con_fighter_leo
- D 0 - - - 0x0258EB 09:98DB: FE        .byte $FE, $FE  ; 01 con_fighter_raph
- D 0 - - - 0x0258EC 09:98DC: FF        .byte $FF, $FF  ; 02 con_fighter_mike
- D 0 - - - 0x0258ED 09:98DD: 01        .byte $01, $01  ; 03 con_fighter_don
- D 0 - - - 0x0258EE 09:98DE: 01        .byte $01, $01  ; 04 con_fighter_casey
- D 0 - - - 0x0258EF 09:98DF: FC        .byte $FC, $FC  ; 05 con_fighter_hot
- D 0 - - - 0x0258F0 09:98E0: FF        .byte $FF, $FF  ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $FE, $FE   ; 07 con_fighter___leo
                                        .byte $FE, $FE   ; 08 con_fighter___raph
                                        .byte $FF, $FF   ; 09 con_fighter___mike
                                        .byte $01, $01   ; 0A con_fighter___don
                                        .byte $01, $01   ; 0B con_fighter___casey
                                        .byte $FC, $FC   ; 0C con_fighter___hot
                                        .byte $FF, $FF   ; 0D con_fighter___shred
                                    .endif



; смотреть con_init_anim
                                    .if con_новые_персы = $00
tbl_98E8:
;                                              +----------------------------------- 00 con_fighter_leo
;                                              |    +------------------------------ 01 con_fighter_raph
;                                              |    |    +------------------------- 02 con_fighter_mike
;                                              |    |    |    +-------------------- 03 con_fighter_don
;                                              |    |    |    |    +--------------- 04 con_fighter_casey
;                                              |    |    |    |    |    +---------- 05 con_fighter_hot
;                                              |    |    |    |    |    |    +----- 06 con_fighter_shred
;                                              |    |    |    |    |    |    |
- D 0 - - - 0x0258F8 09:98E8: 99        .byte $99, $99, $99, $99, $A2, $9D, $A2   ; 00
- D 0 - - - 0x0258FF 09:98EF: 80        .byte $80, $80, $80, $80, $81, $81, $80   ; 01
- D 0 - - - 0x025906 09:98F6: A3        .byte $A3, $A3, $A3, $A3, $A5, $A0, $A5   ; 02
- D 0 - - - 0x02590D 09:98FD: A1        .byte $A1, $A1, $A1, $A1, $A3, $9E, $A3   ; 03
- D 0 - - - 0x025914 09:9904: D9        .byte $D9, $D9, $D9, $D9, $AA, $9F, $A9   ; 04
- - - - - - 0x02591B 09:990B: A1        .byte $A1, $A1, $A1, $A1, $A0, $9B, $A3   ; 05 unused, индекс не найден
- D 0 - - - 0x025922 09:9912: A3        .byte $A3, $A3, $A3, $A3, $A5, $A0, $A5   ; 06
- D 0 - - - 0x025929 09:9919: 9B        .byte $9B, $9B, $9B, $9B, $9F, $9A, $9F   ; 07
- D 0 - - - 0x025930 09:9920: 9C        .byte $9C, $9C, $9C, $9C, $A0, $9B, $A0   ; 08
- D 0 - - - 0x025937 09:9927: A5        .byte $A5, $A5, $A5, $A5, $A7, $A1, $A6   ; 09
- D 0 - - - 0x02593E 09:992E: A6        .byte $A6, $A6, $A6, $A6, $A8, $A2, $A7   ; 0A
- D 0 - - - 0x025945 09:9935: A3        .byte $A3, $A3, $A3, $A3, $A5, $A0, $A5   ; 0B
- D 0 - - - 0x02594C 09:993C: E0        .byte $E0, $E0, $E0, $E0, $B8, $9D, $B8   ; 0C
- D 0 - - - 0x025953 09:9943: C4        .byte $C4, $C4, $C4, $C4, $A1, $9C, $A1   ; 0D
- D 0 - - - 0x02595A 09:994A: D1        .byte $D1, $D1, $D1, $D1, $B1, $9C, $A4   ; 0E
- D 0 - - - 0x025961 09:9951: A1        .byte $A1, $A1, $A1, $A1, $A3, $9E, $A3   ; 0F
- - - - - - 0x025968 09:9958: 8F        .byte $8F, $8D, $93, $94, $96, $96, $93   ; 10 unused, индекс не найден
- - - - - - 0x02596F 09:995F: D1        .byte $D1, $D1, $D1, $D1, $CD, $B9, $C9   ; 11 unused, индекс не найден
- D 0 - - - 0x025976 09:9966: A2        .byte $A2, $A2, $A2, $A2, $A4, $9F, $C8   ; 12
- D 0 - - - 0x02597D 09:996D: D1        .byte $D1, $D1, $D1, $D1, $A4, $9F, $C8   ; 13
- D 0 - - - 0x025984 09:9974: D0        .byte $D0, $D0, $D0, $D0, $A4, $9F, $C8   ; 14
- D 0 - - - 0x02598B 09:997B: A4        .byte $A4, $A4, $A4, $A4, $A8, $A2, $A7   ; 15
- D 0 - - - 0x025992 09:9982: C4        .byte $C4, $C4, $C4, $C4, $A2, $9D, $A2   ; 16
                                    .else
tbl_98E8:
;                                              +--------------------------------------------------------------------- 00 con_fighter_leo
;                                              |    +---------------------------------------------------------------- 01 con_fighter_raph
;                                              |    |    +----------------------------------------------------------- 02 con_fighter_mike
;                                              |    |    |    +------------------------------------------------------ 03 con_fighter_don
;                                              |    |    |    |    +------------------------------------------------- 04 con_fighter_casey
;                                              |    |    |    |    |    +-------------------------------------------- 05 con_fighter_hot
;                                              |    |    |    |    |    |    +--------------------------------------- 06 con_fighter_shred
;                                              |    |    |    |    |    |    |    +---------------------------------- 07 con_fighter___leo
;                                              |    |    |    |    |    |    |    |    +----------------------------- 08 con_fighter___raph
;                                              |    |    |    |    |    |    |    |    |    +------------------------ 09 con_fighter___mike
;                                              |    |    |    |    |    |    |    |    |    |    +------------------- 0A con_fighter___don
;                                              |    |    |    |    |    |    |    |    |    |    |    +-------------- 0B con_fighter___casey
;                                              |    |    |    |    |    |    |    |    |    |    |    |    +--------- 0C con_fighter___hot
;                                              |    |    |    |    |    |    |    |    |    |    |    |    |    +---- 0D con_fighter___shred
;                                              |    |    |    |    |    |    |    |    |    |    |    |    |    |
;                                              |    |    |    |    |    |    |    |    |    |    |    |    |    |
;                                              |    |    |    |    |    |    |    |    |    |    |    |    |    |
- D 0 - - - 0x0258F8 09:98E8: 99        .byte $99, $99, $99, $99, $A2, $9D, $A2, $99, $99, $99, $99, $A2, $9D, $A2   ; 00
- D 0 - - - 0x0258FF 09:98EF: 80        .byte $80, $80, $80, $80, $81, $81, $80, $80, $80, $80, $80, $81, $81, $80   ; 01
- D 0 - - - 0x025906 09:98F6: A3        .byte $A3, $A3, $A3, $A3, $A5, $A0, $A5, $A3, $A3, $A3, $A3, $A5, $A0, $A5   ; 02
- D 0 - - - 0x02590D 09:98FD: A1        .byte $A1, $A1, $A1, $A1, $A3, $9E, $A3, $A1, $A1, $A1, $A1, $A3, $9E, $A3   ; 03
- D 0 - - - 0x025914 09:9904: D9        .byte $D9, $D9, $D9, $D9, $AA, $9F, $A9, $D9, $D9, $D9, $D9, $AA, $9F, $A9   ; 04
- - - - - - 0x02591B 09:990B: A1        .byte $A1, $A1, $A1, $A1, $A0, $9B, $A3, $A1, $A1, $A1, $A1, $A0, $9B, $A3   ; 05 unused, индекс не найден
- D 0 - - - 0x025922 09:9912: A3        .byte $A3, $A3, $A3, $A3, $A5, $A0, $A5, $A3, $A3, $A3, $A3, $A5, $A0, $A5   ; 06
- D 0 - - - 0x025929 09:9919: 9B        .byte $9B, $9B, $9B, $9B, $9F, $9A, $9F, $9B, $9B, $9B, $9B, $9F, $9A, $9F   ; 07
- D 0 - - - 0x025930 09:9920: 9C        .byte $9C, $9C, $9C, $9C, $A0, $9B, $A0, $9C, $9C, $9C, $9C, $A0, $9B, $A0   ; 08
- D 0 - - - 0x025937 09:9927: A5        .byte $A5, $A5, $A5, $A5, $A7, $A1, $A6, $A5, $A5, $A5, $A5, $A7, $A1, $A6   ; 09
- D 0 - - - 0x02593E 09:992E: A6        .byte $A6, $A6, $A6, $A6, $A8, $A2, $A7, $A6, $A6, $A6, $A6, $A8, $A2, $A7   ; 0A
- D 0 - - - 0x025945 09:9935: A3        .byte $A3, $A3, $A3, $A3, $A5, $A0, $A5, $A3, $A3, $A3, $A3, $A5, $A0, $A5   ; 0B
- D 0 - - - 0x02594C 09:993C: E0        .byte $E0, $E0, $E0, $E0, $B8, $9D, $B8, $E0, $E0, $E0, $E0, $B8, $9D, $B8   ; 0C
- D 0 - - - 0x025953 09:9943: C4        .byte $C4, $C4, $C4, $C4, $A1, $9C, $A1, $C4, $C4, $C4, $C4, $A1, $9C, $A1   ; 0D
- D 0 - - - 0x02595A 09:994A: D1        .byte $D1, $D1, $D1, $D1, $B1, $9C, $A4, $D1, $D1, $D1, $D1, $B1, $9C, $A4   ; 0E
- D 0 - - - 0x025961 09:9951: A1        .byte $A1, $A1, $A1, $A1, $A3, $9E, $A3, $A1, $A1, $A1, $A1, $A3, $9E, $A3   ; 0F
tbl_9958:
- - - - - - 0x025968 09:9958: 8F        .byte $8F, $8D, $93, $94, $96, $96, $93, $8F, $8D, $93, $94, $96, $96, $93   ; 10 unused, индекс не найден
- - - - - - 0x02596F 09:995F: D1        .byte $D1, $D1, $D1, $D1, $CD, $B9, $C9, $D1, $D1, $D1, $D1, $CD, $B9, $C9   ; 11 unused, индекс не найден
- D 0 - - - 0x025976 09:9966: A2        .byte $A2, $A2, $A2, $A2, $A4, $9F, $C8, $A2, $A2, $A2, $A2, $A4, $9F, $C8   ; 12
- D 0 - - - 0x02597D 09:996D: D1        .byte $D1, $D1, $D1, $D1, $A4, $9F, $C8, $D1, $D1, $D1, $D1, $A4, $9F, $C8   ; 13
- D 0 - - - 0x025984 09:9974: D0        .byte $D0, $D0, $D0, $D0, $A4, $9F, $C8, $D0, $D0, $D0, $D0, $A4, $9F, $C8   ; 14
- D 0 - - - 0x02598B 09:997B: A4        .byte $A4, $A4, $A4, $A4, $A8, $A2, $A7, $A4, $A4, $A4, $A4, $A8, $A2, $A7   ; 15
- D 0 - - - 0x025992 09:9982: C4        .byte $C4, $C4, $C4, $C4, $A2, $9D, $A2, $C4, $C4, $C4, $C4, $A2, $9D, $A2   ; 16
                                    .endif



tbl_9996:
- - - - - - 0x0259A6 09:9996: FF        .byte $FF   ; 00 bzk garbage?
- D 0 - - - 0x0259A7 09:9997: 81        .byte $81   ; 01 
- D 0 - - - 0x0259A8 09:9998: 01        .byte $01   ; 02 
- - - - - - 0x0259A9 09:9999: 80        .byte $80   ; 03 
- - - - - - 0x0259AA 09:999A: 00        .byte $00   ; 04 
- - - - - - 0x0259AB 09:999B: 00        .byte $00   ; 05 



tbl_999C:
- - - - - - 0x0259AC 09:999C: 00        .byte $00   ; 00 
- D 0 - - - 0x0259AD 09:999D: 21        .byte $21   ; 01 
- - - - - - 0x0259AE 09:999E: 21        .byte $21   ; 02 
- D 0 - - - 0x0259AF 09:999F: C1        .byte $C1   ; 03 
- D 0 - - - 0x0259B0 09:99A0: A0        .byte $A0   ; 04 
- D 0 - - - 0x0259B1 09:99A1: 00        .byte $00   ; 05 



tbl_99A2:
- D 0 - - - 0x0259B2 09:99A2: 28        .byte $28   ; 00 con_fighter_leo
- D 0 - - - 0x0259B3 09:99A3: 20        .byte $20   ; 01 con_fighter_raph
- D 0 - - - 0x0259B4 09:99A4: 18        .byte $18   ; 02 con_fighter_mike
- D 0 - - - 0x0259B5 09:99A5: 2C        .byte $2C   ; 03 con_fighter_don
- D 0 - - - 0x0259B6 09:99A6: 10        .byte $10   ; 04 con_fighter_casey
- D 0 - - - 0x0259B7 09:99A7: 38        .byte $38   ; 05 con_fighter_hot
- D 0 - - - 0x0259B8 09:99A8: 30        .byte $30   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $28   ; 07 con_fighter___leo
                                        .byte $20   ; 08 con_fighter___raph
                                        .byte $18   ; 09 con_fighter___mike
                                        .byte $2C   ; 0A con_fighter___don
                                        .byte $10   ; 0B con_fighter___casey
                                        .byte $38   ; 0C con_fighter___hot
                                        .byte $30   ; 0D con_fighter___shred
                                    .endif



tbl_99A9:
- D 0 - - - 0x0259B9 09:99A9: A0        .byte $A0   ; 00 con_fighter_leo
- D 0 - - - 0x0259BA 09:99AA: 96        .byte $96   ; 01 con_fighter_raph
- D 0 - - - 0x0259BB 09:99AB: AA        .byte $AA   ; 02 con_fighter_mike
- D 0 - - - 0x0259BC 09:99AC: 8C        .byte $8C   ; 03 con_fighter_don
- D 0 - - - 0x0259BD 09:99AD: B4        .byte $B4   ; 04 con_fighter_casey
- D 0 - - - 0x0259BE 09:99AE: 78        .byte $78   ; 05 con_fighter_hot
- D 0 - - - 0x0259BF 09:99AF: 82        .byte $82   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $A0   ; 07 con_fighter___leo
                                        .byte $96   ; 08 con_fighter___raph
                                        .byte $AA   ; 09 con_fighter___mike
                                        .byte $8C   ; 0A con_fighter___don
                                        .byte $B4   ; 0B con_fighter___casey
                                        .byte $78   ; 0C con_fighter___hot
                                        .byte $82   ; 0D con_fighter___shred
                                    .endif



tbl_99B0:
- D 0 - - - 0x0259C0 09:99B0: FF        .byte $FF   ; 00 ничего
- D 0 - - - 0x0259C1 09:99B1: 00        .byte $00   ; 01 right
- D 0 - - - 0x0259C2 09:99B2: 40        .byte $40   ; 02 up
- D 0 - - - 0x0259C3 09:99B3: FF        .byte $FF   ; 03 right + up



tbl_99B4:
- D 0 - - - 0x0259C4 09:99B4: FF        .byte $FF   ; 00
- D 0 - - - 0x0259C5 09:99B5: FE        .byte $FE   ; 01



tbl_99B6:
- D 0 - - - 0x0259C6 09:99B6: 40        .byte $40   ; 00
- D 0 - - - 0x0259C7 09:99B7: 80        .byte $80   ; 01
- D 0 - - - 0x0259C8 09:99B8: 81        .byte $81   ; 02



tbl_99B9:
- D 0 - - - 0x0259C9 09:99B9: C0        .byte $C0   ; 00
- D 0 - - - 0x0259CA 09:99BA: C1        .byte $C1   ; 01
- D 0 - - - 0x0259CB 09:99BB: 23        .byte $23   ; 02



tbl_99BC:
; сальто вперед
- D 0 - - - 0x0259CC 09:99BC: 13        .byte con_D0B3_черепахи_сальто_вперед   ; 00 con_fighter_leo
- D 0 - - - 0x0259CD 09:99BD: 13        .byte con_D0B3_черепахи_сальто_вперед   ; 01 con_fighter_raph
- D 0 - - - 0x0259CE 09:99BE: 13        .byte con_D0B3_черепахи_сальто_вперед   ; 02 con_fighter_mike
- D 0 - - - 0x0259CF 09:99BF: 13        .byte con_D0B3_черепахи_сальто_вперед   ; 03 con_fighter_don
- D 0 - - - 0x0259D0 09:99C0: 15        .byte con_D0B3_casey_сальто_вперед   ; 04 con_fighter_casey
- - - - - - 0x0259D1 09:99C1: 13        .byte con_D0B3_черепахи_сальто_вперед   ; 05 con_fighter_hot
- - - - - - 0x0259D2 09:99C2: 13        .byte con_D0B3_черепахи_сальто_вперед   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_D0B3_черепахи_сальто_вперед   ; 07 con_fighter___leo
                                        .byte con_D0B3_черепахи_сальто_вперед   ; 08 con_fighter___raph
                                        .byte con_D0B3_черепахи_сальто_вперед   ; 09 con_fighter___mike
                                        .byte con_D0B3_черепахи_сальто_вперед   ; 0A con_fighter___don
                                        .byte con_D0B3_casey_сальто_вперед   ; 0B con_fighter___casey
                                        .byte con_D0B3_черепахи_сальто_вперед   ; 0C con_fighter___hot
                                        .byte con_D0B3_черепахи_сальто_вперед   ; 0D con_fighter___shred
                                    .endif
; сальто назад
- D 0 - - - 0x0259D3 09:99C3: 14        .byte con_D0B3_черепахи_сальто_назад   ; 00 con_fighter_leo
- D 0 - - - 0x0259D4 09:99C4: 14        .byte con_D0B3_черепахи_сальто_назад   ; 01 con_fighter_raph
- D 0 - - - 0x0259D5 09:99C5: 14        .byte con_D0B3_черепахи_сальто_назад   ; 02 con_fighter_mike
- D 0 - - - 0x0259D6 09:99C6: 14        .byte con_D0B3_черепахи_сальто_назад   ; 03 con_fighter_don
- D 0 - - - 0x0259D7 09:99C7: 16        .byte con_D0B3_casey_сальто_назад   ; 04 con_fighter_casey
- - - - - - 0x0259D8 09:99C8: 14        .byte con_D0B3_черепахи_сальто_назад   ; 05 con_fighter_hot
- - - - - - 0x0259D9 09:99C9: 14        .byte con_D0B3_черепахи_сальто_назад   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_D0B3_черепахи_сальто_назад   ; 07 con_fighter___leo
                                        .byte con_D0B3_черепахи_сальто_назад   ; 08 con_fighter___raph
                                        .byte con_D0B3_черепахи_сальто_назад   ; 09 con_fighter___mike
                                        .byte con_D0B3_черепахи_сальто_назад   ; 0A con_fighter___don
                                        .byte con_D0B3_casey_сальто_назад   ; 0B con_fighter___casey
                                        .byte con_D0B3_черепахи_сальто_назад   ; 0C con_fighter___hot
                                        .byte con_D0B3_черепахи_сальто_назад   ; 0D con_fighter___shred
                                    .endif



tbl_99CA:
- D 0 - - - 0x0259DA 09:99CA: F8        .byte $F8   ; 00
- D 0 - - - 0x0259DB 09:99CB: F0        .byte $F0   ; 08
- D 0 - - - 0x0259DC 09:99CC: 00        .byte $00   ; 10
- D 0 - - - 0x0259DD 09:99CD: EA        .byte $EA   ; 18

tbl_99CE:
- D 0 - - - 0x0259DE 09:99CE: FA        .byte $FA   ; 00
- D 0 - - - 0x0259DF 09:99CF: 02        .byte $02   ; 08
- D 0 - - - 0x0259E0 09:99D0: 04        .byte $04   ; 10
- D 0 - - - 0x0259E1 09:99D1: FA        .byte $FA   ; 18



tbl_99D2_звук_крика_после_смерти:
- D 0 - - - 0x0259E2 09:99D2: 4D        .byte con_dmcp_dead_turtle   ; 00 con_fighter_leo
- D 0 - - - 0x0259E3 09:99D3: 4D        .byte con_dmcp_dead_turtle   ; 01 con_fighter_raph
- D 0 - - - 0x0259E4 09:99D4: 4D        .byte con_dmcp_dead_turtle   ; 02 con_fighter_mike
- D 0 - - - 0x0259E5 09:99D5: 4D        .byte con_dmcp_dead_turtle   ; 03 con_fighter_don
- D 0 - - - 0x0259E6 09:99D6: 4E        .byte con_dmcp_dead_casey   ; 04 con_fighter_casey
- D 0 - - - 0x0259E7 09:99D7: 50        .byte con_dmcp_dead_hot   ; 05 con_fighter_hot
- D 0 - - - 0x0259E8 09:99D8: 4F        .byte con_dmcp_dead_shred   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_dmcp_dead_turtle   ; 07 con_fighter___leo
                                        .byte con_dmcp_dead_turtle   ; 08 con_fighter___raph
                                        .byte con_dmcp_dead_turtle   ; 09 con_fighter___mike
                                        .byte con_dmcp_dead_turtle   ; 0A con_fighter___don
                                        .byte con_dmcp_dead_casey   ; 0B con_fighter___casey
                                        .byte con_dmcp_dead_hot   ; 0C con_fighter___hot
                                        .byte con_dmcp_dead_shred   ; 0D con_fighter___shred
                                    .endif



sub_99D9_проверить_кнопки_для_суперки_и_запуска_мяча:
C - - - - - 0x0259E9 09:99D9: A4 A9     LDY ram_global_obj_index
C - - - - - 0x0259EB 09:99DB: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x0259ED 09:99DD: C9 10     CMP #$10
C - - - - - 0x0259EF 09:99DF: B0 07     BCS bra_99E8
C - - - - - 0x0259F1 09:99E1: B9 30 05  LDA ram_0530_obj_state,Y ; 0530 0531 
C - - - - - 0x0259F4 09:99E4: C9 04     CMP #$04
C - - - - - 0x0259F6 09:99E6: B0 67     BCS bra_9A4F_RTS
bra_99E8:
C - - - - - 0x0259F8 09:99E8: BD 30 05  LDA ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x0259FB 09:99EB: C9 04     CMP #$04
C - - - - - 0x0259FD 09:99ED: B0 60     BCS bra_9A4F_RTS
C - - - - - 0x0259FF 09:99EF: A0 01     LDY #con_btn_Right
C - - - - - 0x025A01 09:99F1: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x025A04 09:99F4: 0A        ASL
C - - - - - 0x025A05 09:99F5: 10 01     BPL bra_99F8
C - - - - - 0x025A07 09:99F7: C8        INY ; 02 con_btn_Left
bra_99F8:
C - - - - - 0x025A08 09:99F8: 84 08     STY ram_0008    ; right/left
C - - - - - 0x025A0A 09:99FA: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025A0C 09:99FC: 29 0F     AND #con_btns_Dpad
C - - - - - 0x025A0E 09:99FE: 85 09     STA ram_0009    ; dpad btns
C - - - - - 0x025A10 09:9A00: 20 1F 9D  JSR sub_9D1F_проверить_кнопки_для_запуска_мяча
C - - - - - 0x025A13 09:9A03: BC 08 06  LDY ram_0608_plr,X ; 0608 0609 
C - - - - - 0x025A16 09:9A06: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
C - - - - - 0x025A19 09:9A09: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x025A1C 09:9A0C: 1A 9A     .word ofs_053_9A1A_00_leo   ; con_fighter_leo
- D 0 - I - 0x025A1E 09:9A0E: DF 9A     .word ofs_053_9ADF_01_raph   ; con_fighter_raph
- D 0 - I - 0x025A20 09:9A10: 07 9B     .word ofs_053_9B07_02_mike   ; con_fighter_mike
- D 0 - I - 0x025A22 09:9A12: 74 9B     .word ofs_053_9B74_03_don   ; con_fighter_don
- D 0 - I - 0x025A24 09:9A14: 7E 9B     .word ofs_053_9B7E_04_casey   ; con_fighter_casey
- D 0 - I - 0x025A26 09:9A16: DF 9B     .word ofs_053_9BDF_05_hot   ; con_fighter_hot
- D 0 - I - 0x025A28 09:9A18: 31 9C     .word ofs_053_9C31_06_shred   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .word ofs_053_9A1A_07   ; con_fighter___leo
                                        .word ofs_053_9ADF_08   ; con_fighter___raph
                                        .word ofs_053_9B07_09   ; con_fighter___mike
                                        .word ofs_053_9B74_0A   ; con_fighter___don
                                        .word ofs_053_9B7E_0B   ; con_fighter___casey
                                        .word ofs_053_9BDF_0C   ; con_fighter___hot
                                        .word ofs_053_9C31_0D   ; con_fighter___shred
                                    .endif



ofs_053_9A1A_00_leo:
ofs_053_9A1A_07:
C - - J - - 0x025A2A 09:9A1A: 98        TYA
C - - - - - 0x025A2B 09:9A1B: D0 09     BNE bra_9A26
C - - - - - 0x025A2D 09:9A1D: A5 09     LDA ram_0009    ; dpad btns
C - - - - - 0x025A2F 09:9A1F: C9 04     CMP #con_btn_Down
C - - - - - 0x025A31 09:9A21: D0 2C     BNE bra_9A4F_RTS
C - - - - - 0x025A33 09:9A23: 4C D3 9A  JMP loc_9AD3
bra_9A26:
C - - - - - 0x025A36 09:9A26: 88        DEY
C - - - - - 0x025A37 09:9A27: D0 27     BNE bra_9A50
C - - - - - 0x025A39 09:9A29: A5 09     LDA ram_0009    ; dpad btns
C - - - - - 0x025A3B 09:9A2B: C9 04     CMP #con_btn_Down
C - - - - - 0x025A3D 09:9A2D: D0 05     BNE bra_9A34
C - - - - - 0x025A3F 09:9A2F: A9 14     LDA #$14
C - - - - - 0x025A41 09:9A31: 9D 0C 06  STA ram_plr_таймер_для_суперки,X ; 060C 060D 
bra_9A34:
C - - - - - 0x025A44 09:9A34: DE 0C 06  DEC ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025A47 09:9A37: F0 1A     BEQ bra_9A53
C - - - - - 0x025A49 09:9A39: 20 AD 9A  JSR sub_9AAD_реверснуть_кнопку_в_0008
C - - - - - 0x025A4C 09:9A3C: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025A4E 09:9A3E: 29 03     AND #con_btns_LR
C - - - - - 0x025A50 09:9A40: C5 08     CMP ram_0008    ; right/left
C - - - - - 0x025A52 09:9A42: D0 0B     BNE bra_9A4F_RTS
C - - - - - 0x025A54 09:9A44: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025A56 09:9A46: 15 8E     ORA ram_btn_press,X
C - - - - - 0x025A58 09:9A48: 29 04     AND #con_btn_Down
C - - - - - 0x025A5A 09:9A4A: F0 03     BEQ bra_9A4F_RTS
C - - - - - 0x025A5C 09:9A4C: 4C D3 9A  JMP loc_9AD3
bra_9A4F_RTS:
C - - - - - 0x025A5F 09:9A4F: 60        RTS
bra_9A50:
C - - - - - 0x025A60 09:9A50: DE 0C 06  DEC ram_plr_таймер_для_суперки,X ; 060C 060D 
bra_9A53:
C - - - - - 0x025A63 09:9A53: F0 68     BEQ bra_9ABD
C - - - - - 0x025A65 09:9A55: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x025A68 09:9A58: C9 AE     CMP #$AE
C - - - - - 0x025A6A 09:9A5A: 90 F3     BCC bra_9A4F_RTS
C - - - - - 0x025A6C 09:9A5C: 20 AD 9A  JSR sub_9AAD_реверснуть_кнопку_в_0008
C - - - - - 0x025A6F 09:9A5F: C5 09     CMP ram_0009    ; dpad btns
C - - - - - 0x025A71 09:9A61: D0 06     BNE bra_9A69
C - - - - - 0x025A73 09:9A63: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025A76 09:9A66: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
bra_9A69:
C - - - - - 0x025A79 09:9A69: A9 80     LDA #con_btn_A
C - - - - - 0x025A7B 09:9A6B: 35 8E     AND ram_btn_press,X
C - - - - - 0x025A7D 09:9A6D: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025A80 09:9A70: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025A83 09:9A73: A5 08     LDA ram_0008    ; right/left
C - - - - - 0x025A85 09:9A75: 09 80     ORA #con_btn_A
C - - - - - 0x025A87 09:9A77: DD 31 06  CMP ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025A8A 09:9A7A: D0 D3     BNE bra_9A4F_RTS
loc_9A7C:
C D 0 - - - 0x025A8C 09:9A7C: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x025A8F 09:9A7F: F0 05     BEQ bra_9A86    ; if con_plr_state_на_земле
C - - - - - 0x025A91 09:9A81: 4A        LSR
C - - - - - 0x025A92 09:9A82: C9 03     CMP #$03
C - - - - - 0x025A94 09:9A84: D0 C9     BNE bra_9A4F_RTS
bra_9A86:
loc_9A86:
C D 0 - - - 0x025A96 09:9A86: A9 00     LDA #$00
C - - - - - 0x025A98 09:9A88: 2C        .byte $2C   ; BIT
loc_9A89:
C - - - - - 0x025A99 09:9A89: A9 01     LDA #$01
C - - - - - 0x025A9B 09:9A8B: BC 30 05  LDY ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x025A9E 09:9A8E: C0 03     CPY #$03
C - - - - - 0x025AA0 09:9A90: D0 25     BNE bra_9AB7_RTS
; перемещено из банка FF
C D 3 - - - 0x03FE93 0F:FE83: BC 20 05  LDY ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x03FE96 0F:FE86: C0 08     CPY #$08
C - - - - - 0x03FE98 0F:FE88: B0 F8     BCS bra_9AB7_RTS
C D 0 - - - 0x025AA5 09:9A95: C0 04     CPY #$04
C - - - - - 0x025AA7 09:9A97: F0 1E     BEQ bra_9AB7_RTS
C - - - - - 0x025AA9 09:9A99: C0 03     CPY #$03
C - - - - - 0x025AAB 09:9A9B: F0 1A     BEQ bra_9AB7_RTS
C - - - - - 0x025AAD 09:9A9D: 20 44 BE  JSR sub_BE44    ; возможен PLA PLA
C - - - - - 0x025AB0 09:9AA0: A9 00     LDA #$00
C - - - - - 0x025AB2 09:9AA2: 9D 10 06  STA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x025AB5 09:9AA5: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x025AB8 09:9AA8: A9 08     LDA #con_plr_state_делает_суперку
C - - - - - 0x025ABA 09:9AAA: 4C 7F 84  JMP loc_847F



sub_9AAD_реверснуть_кнопку_в_0008:
; bzk optimize, предположительно достаточно будет сделать
                                       ;LDA ram_0008
                                       ;EOR #$01
                                       ;STA ram_0008
                                       ;RTS
C - - - - - 0x025ABD 09:9AAD: A9 02     LDA #con_btn_Left
C - - - - - 0x025ABF 09:9AAF: C6 08     DEC ram_0008    ; right/left
C - - - - - 0x025AC1 09:9AB1: F0 02     BEQ bra_9AB5
C - - - - - 0x025AC3 09:9AB3: A9 01     LDA #con_btn_Right
bra_9AB5:
C - - - - - 0x025AC5 09:9AB5: 85 08     STA ram_0008    ; right/left
bra_9AB7_RTS:
C - - - - - 0x025AC7 09:9AB7: 60        RTS



bra_9ABD:
loc_9ABD:
C D 0 - - - 0x025ACD 09:9ABD: A9 00     LDA #$00
C - - - - - 0x025ACF 09:9ABF: 9D 08 06  STA ram_0608_plr,X ; 0608 0609 
C - - - - - 0x025AD2 09:9AC2: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
bra_9AC5:
C - - - - - 0x025AD5 09:9AC5: 9D 0C 06  STA ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025AD8 09:9AC8: 60        RTS



bra_9AC9:
C D 0 - - - 0x025AD9 09:9AC9: FE 0C 06  INC ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025ADC 09:9ACC: 60        RTS



sub_9ACD:
C - - - - - 0x025ADD 09:9ACD: BD 0C 06  LDA ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025AE0 09:9AD0: 9D 41 06  STA ram_copy_plr_таймер_для_суперки,X ; 0641 0642 
loc_9AD3:
sub_9AD3:
C D 0 - - - 0x025AE3 09:9AD3: A9 00     LDA #$00
C - - - - - 0x025AE5 09:9AD5: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025AE8 09:9AD8: FE 08 06  INC ram_0608_plr,X ; 0608 0609 
loc_9ADB:
C D 0 - - - 0x025AEB 09:9ADB: A9 14     LDA #$14
C - - - - - 0x025AED 09:9ADD: D0 E6     BNE bra_9AC5    ; jmp



ofs_053_9ADF_01_raph:
ofs_053_9ADF_08:
C - - J - - 0x025AEF 09:9ADF: 98        TYA
C - - - - - 0x025AF0 09:9AE0: D0 75     BNE bra_9B57
C - - - - - 0x025AF2 09:9AE2: 20 AD 9A  JSR sub_9AAD_реверснуть_кнопку_в_0008
C - - - - - 0x025AF5 09:9AE5: 35 91     AND ram_btn_hold,X
C - - - - - 0x025AF7 09:9AE7: F0 0B     BEQ bra_9AF4
C - - - - - 0x025AF9 09:9AE9: A9 76     LDA #$76
C - - - - - 0x025AFB 09:9AEB: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x025AFE 09:9AEE: DD 0C 06  CMP ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025B01 09:9AF1: B0 D6     BCS bra_9AC9
C - - - - - 0x025B03 09:9AF3: 60        RTS
bra_9AF4:
C - - - - - 0x025B04 09:9AF4: BD 2E 01  LDA ram_012E_plr,X ; 012E 012F 
C - - - - - 0x025B07 09:9AF7: DD 0C 06  CMP ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025B0A 09:9AFA: F0 02     BEQ bra_9AFE
C - - - - - 0x025B0C 09:9AFC: B0 BF     BCS bra_9ABD
bra_9AFE:
C - - - - - 0x025B0E 09:9AFE: 20 CD 9A  JSR sub_9ACD
C - - - - - 0x025B11 09:9B01: 20 AD 9A  JSR sub_9AAD_реверснуть_кнопку_в_0008
C - - - - - 0x025B14 09:9B04: 4C 57 9B  JMP loc_9B57



ofs_053_9B07_02_mike:
ofs_053_9B07_09:
C - - J - - 0x025B17 09:9B07: 98        TYA
C - - - - - 0x025B18 09:9B08: D0 26     BNE bra_9B30
C - - - - - 0x025B1A 09:9B0A: 20 AD 9A  JSR sub_9AAD_реверснуть_кнопку_в_0008
C - - - - - 0x025B1D 09:9B0D: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025B1F 09:9B0F: 29 04     AND #con_btn_Down
C - - - - - 0x025B21 09:9B11: F0 0F     BEQ bra_9B22
C - - - - - 0x025B23 09:9B13: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025B25 09:9B15: 25 08     AND ram_0008    ; right/left
C - - - - - 0x025B27 09:9B17: F0 09     BEQ bra_9B22
C - - - - - 0x025B29 09:9B19: BD 2E 01  LDA ram_012E_plr,X ; 012E 012F 
C - - - - - 0x025B2C 09:9B1C: DD 0C 06  CMP ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025B2F 09:9B1F: B0 A8     BCS bra_9AC9
C - - - - - 0x025B31 09:9B21: 60        RTS
bra_9B22:
C - - - - - 0x025B32 09:9B22: BD 2E 01  LDA ram_012E_plr,X ; 012E 012F 
C - - - - - 0x025B35 09:9B25: DD 0C 06  CMP ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025B38 09:9B28: B0 93     BCS bra_9ABD
C - - - - - 0x025B3A 09:9B2A: 20 D3 9A  JSR sub_9AD3
C - - - - - 0x025B3D 09:9B2D: 20 AD 9A  JSR sub_9AAD_реверснуть_кнопку_в_0008
bra_9B30:
C - - - - - 0x025B40 09:9B30: DE 0C 06  DEC ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025B43 09:9B33: F0 88     BEQ bra_9ABD
C - - - - - 0x025B45 09:9B35: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025B47 09:9B37: 25 08     AND ram_0008    ; right/left
C - - - - - 0x025B49 09:9B39: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025B4C 09:9B3C: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025B4F 09:9B3F: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025B51 09:9B41: 29 C0     AND #con_btns_AB
C - - - - - 0x025B53 09:9B43: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025B56 09:9B46: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025B59 09:9B49: 29 C0     AND #con_btns_AB
C - - - - - 0x025B5B 09:9B4B: F0 60     BEQ bra_FE9B_RTS
C - - - - - 0x025B5D 09:9B4D: BD 31 06  LDA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025B60 09:9B50: 25 08     AND ram_0008    ; right/left
C - - - - - 0x025B62 09:9B52: F0 59     BEQ bra_FE9B_RTS
C - - - - - 0x025B64 09:9B54: 4C 7C 9A  JMP loc_9A7C
bra_9B57:
loc_9B57:
C D 0 - - - 0x025B67 09:9B57: A9 40     LDA #con_btn_B
C - - - - - 0x025B69 09:9B59: DE 0C 06  DEC ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025B6C 09:9B5C: D0 03     BNE bra_9B61
C - - - - - 0x025B6E 09:9B5E: 4C BD 9A  JMP loc_9ABD
bra_9B61:
C - - - - - 0x025B71 09:9B61: 05 08     ORA ram_0008    ; right/left
C - - - - - 0x025B73 09:9B63: 85 00     STA ram_0000
C - - - - - 0x025B75 09:9B65: 35 8E     AND ram_btn_press,X
C - - - - - 0x025B77 09:9B67: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025B7A 09:9B6A: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025B7D 09:9B6D: C5 00     CMP ram_0000
C - - - - - 0x025B7F 09:9B6F: D0 3C     BNE bra_FE9B_RTS
; перемещено из банка FF
C D 3 - - - 0x03FE9D 0F:FE8D: BD 52 05  LDA ram_obj_id + $02,X ; 0552 0553 
C - - - - - 0x03FEA0 0F:FE90: C9 0E     CMP #con_0552_черепаха_деш_ногой
C - - - - - 0x03FEA2 0F:FE92: F0 08     BEQ bra_FE9C
C - - - - - 0x03FEA4 0F:FE94: BD 0C 06  LDA ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x03FEA7 0F:FE97: C9 09     CMP #$09
C - - - - - 0x03FEA9 0F:FE99: B0 01     BCS bra_FE9C
bra_FE9B_RTS:
C - - - - - 0x03FEAB 0F:FE9B: 60        RTS
bra_FE9C:
C - - - - - 0x03FEAC 0F:FE9C: 4C 7C 9A  JMP loc_9A7C



ofs_053_9B74_03_don:
ofs_053_9B74_0A:
C - - J - - 0x025B84 09:9B74: BD 2E 01  LDA ram_012E_plr,X ; 012E 012F 
C - - - - - 0x025B87 09:9B77: 85 00     STA ram_0000
C - - - - - 0x025B89 09:9B79: 98        TYA
C - - - - - 0x025B8A 09:9B7A: F0 12     BEQ bra_9B8E
C - - - - - 0x025B8C 09:9B7C: D0 30     BNE bra_9BAE    ; jmp



ofs_053_9B7E_04_casey:
ofs_053_9B7E_0B:
C - - J - - 0x025B8E 09:9B7E: 20 84 9B  JSR sub_9B84
C D 0 - - - 0x025CC9 09:9CB9: 20 00 9D  JSR sub_9D00
C - - - - - 0x025CCC 09:9CBC: BC 0A 06  LDY ram_060A_plr,X ; 060A 060B 
C - - - - - 0x025CCF 09:9CBF: F0 16     BEQ bra_9CD7_RTS
C - - - - - 0x025CD1 09:9CC1: 88        DEY
C - - - - - 0x025CD2 09:9CC2: D0 14     BNE bra_9CD8
C - - - - - 0x025CD4 09:9CC4: A5 09     LDA ram_0009    ; dpad btns
C - - - - - 0x025CD6 09:9CC6: 29 04     AND #con_btn_Down
C - - - - - 0x025CD8 09:9CC8: F0 0D     BEQ bra_9CD7_RTS
C - - - - - 0x025CDA 09:9CCA: FE 0A 06  INC ram_060A_plr,X ; 060A 060B 
C - - - - - 0x025CDD 09:9CCD: A9 00     LDA #$00
C - - - - - 0x025CDF 09:9CCF: 9D 33 06  STA ram_0633,X ; 0633 0634 
C - - - - - 0x025CE2 09:9CD2: A9 14     LDA #$14
C - - - - - 0x025CE4 09:9CD4: 9D 0E 06  STA ram_060E_plr,X ; 060E 060F 
bra_9CD7_RTS:
C - - - - - 0x025CE7 09:9CD7: 60        RTS
bra_9CD8:
C - - - - - 0x025CE8 09:9CD8: 20 AD 9A  JSR sub_9AAD_реверснуть_кнопку_в_0008
C - - - - - 0x025CEB 09:9CDB: A5 08     LDA ram_0008    ; right/left
C - - - - - 0x025CED 09:9CDD: 25 09     AND ram_0009    ; dpad btns
C - - - - - 0x025CEF 09:9CDF: 85 00     STA ram_0000
C - - - - - 0x025CF1 09:9CE1: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025CF3 09:9CE3: 29 40     AND #con_btn_B
C - - - - - 0x025CF5 09:9CE5: 05 00     ORA ram_0000
C - - - - - 0x025CF7 09:9CE7: 1D 33 06  ORA ram_0633,X ; 0633 0634 
C - - - - - 0x025CFA 09:9CEA: 9D 33 06  STA ram_0633,X ; 0633 0634 
C - - - - - 0x025CFD 09:9CED: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x025D00 09:9CF0: C9 AC     CMP #$AC
C - - - - - 0x025D02 09:9CF2: 90 E3     BCC bra_9CD7_RTS
C - - - - - 0x025D04 09:9CF4: A5 08     LDA ram_0008    ; right/left
C - - - - - 0x025D06 09:9CF6: 09 40     ORA #con_btn_B
C - - - - - 0x025D08 09:9CF8: DD 33 06  CMP ram_0633,X ; 0633 0634 
C - - - - - 0x025D0B 09:9CFB: D0 DA     BNE bra_9CD7_RTS
C - - - - - 0x025D0D 09:9CFD: 4C 89 9A  JMP loc_9A89



sub_9B84:
C - - - - - 0x025B94 09:9B84: BD 2E 01  LDA ram_012E_plr,X ; 012E 012F 
C - - - - - 0x025B97 09:9B87: 85 00     STA ram_0000
C - - - - - 0x025B99 09:9B89: 98        TYA
C - - - - - 0x025B9A 09:9B8A: F0 02     BEQ bra_9B8E
C - - - - - 0x025B9C 09:9B8C: D0 23     BNE bra_9BB1    ; jmp
bra_9B8E:
C - - - - - 0x025B9E 09:9B8E: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025BA0 09:9B90: 29 04     AND #con_btn_Down
C - - - - - 0x025BA2 09:9B92: F0 0A     BEQ bra_9B9E
C - - - - - 0x025BA4 09:9B94: BD 0C 06  LDA ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025BA7 09:9B97: C5 00     CMP ram_0000
C - - - - - 0x025BA9 09:9B99: B0 12     BCS bra_9BAD_RTS
C - - - - - 0x025BAB 09:9B9B: 4C C9 9A  INC ram_plr_таймер_для_суперки,X ; 060C 060D 
                                        RTS
bra_9B9E:
C - - - - - 0x025BAE 09:9B9E: BD 0C 06  LDA ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025BB1 09:9BA1: C5 00     CMP ram_0000
C - - - - - 0x025BB3 09:9BA3: 90 62     BCC bra_9C07
C - - - - - 0x025BB5 09:9BA5: 20 D3 9A  JSR sub_9AD3
C - - - - - 0x025BB8 09:9BA8: A9 10     LDA #$10
C - - - - - 0x025BBA 09:9BAA: 9D 0C 06  STA ram_plr_таймер_для_суперки,X ; 060C 060D 
bra_9BAD_RTS:
C - - - - - 0x025BBD 09:9BAD: 60        RTS
bra_9BAE:
C - - - - - 0x025BBE 09:9BAE: A9 88     LDA #$88
C - - - - - 0x025BC0 09:9BB0: 2C        .byte $2C   ; BIT
bra_9BB1:
C - - - - - 0x025BC1 09:9BB1: A9 48     LDA #$48
C - - - - - 0x025BC3 09:9BB3: 85 00     STA ram_0000
C - - - - - 0x025BC5 09:9BB5: DE 0C 06  DEC ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025BC8 09:9BB8: D0 03     BNE bra_9BBD
C - - - - - 0x025BCA 09:9BBA: 4C BD 9A  JMP loc_9ABD
bra_9BBD:
C - - - - - 0x025BCD 09:9BBD: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x025BD0 09:9BC0: C9 AB     CMP #$AB
C - - - - - 0x025BD2 09:9BC2: 90 E9     BCC bra_9BAD_RTS
C - - - - - 0x025BD4 09:9BC4: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x025BD7 09:9BC7: 4A        LSR
C - - - - - 0x025BD8 09:9BC8: F0 04     BEQ bra_9BCE
C - - - - - 0x025BDA 09:9BCA: C9 03     CMP #$03
C - - - - - 0x025BDC 09:9BCC: D0 DF     BNE bra_9BAD_RTS
bra_9BCE:
C - - - - - 0x025BDE 09:9BCE: A5 00     LDA ram_0000
C - - - - - 0x025BE0 09:9BD0: 35 8E     AND ram_btn_press,X
C - - - - - 0x025BE2 09:9BD2: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025BE5 09:9BD5: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025BE8 09:9BD8: C5 00     CMP ram_0000
C - - - - - 0x025BEA 09:9BDA: D0 D1     BNE bra_9BAD_RTS
C - - - - - 0x025BEC 09:9BDC: 4C 86 9A  JMP loc_9A86



ofs_053_9BDF_05_hot:
ofs_053_9BDF_0C:
C - - J - - 0x025BEF 09:9BDF: 98        TYA
C - - - - - 0x025BF0 09:9BE0: D0 09     BNE bra_9BEB
C - - - - - 0x025BF2 09:9BE2: A5 09     LDA ram_0009    ; dpad btns
C - - - - - 0x025BF4 09:9BE4: C9 04     CMP #con_btn_Down
C - - - - - 0x025BF6 09:9BE6: D0 48     BNE bra_9C30_RTS
C - - - - - 0x025BF8 09:9BE8: 4C D3 9A  JMP loc_9AD3
bra_9BEB:
C - - - - - 0x025BFB 09:9BEB: DE 0C 06  DEC ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025BFE 09:9BEE: F0 17     BEQ bra_9C07
C - - - - - 0x025C00 09:9BF0: 88        DEY
C - - - - - 0x025C01 09:9BF1: D0 17     BNE bra_9C0A
C - - - - - 0x025C03 09:9BF3: A5 09     LDA ram_0009    ; dpad btns
C - - - - - 0x025C05 09:9BF5: 29 04     AND #con_btn_Down
C - - - - - 0x025C07 09:9BF7: F0 37     BEQ bra_9C30_RTS
C - - - - - 0x025C09 09:9BF9: A9 04     LDA #con_btn_Down
C - - - - - 0x025C0B 09:9BFB: 05 08     ORA ram_0008    ; right/left
C - - - - - 0x025C0D 09:9BFD: C5 09     CMP ram_0009    ; dpad btns
C - - - - - 0x025C0F 09:9BFF: F0 03     BEQ bra_9C04
C - - - - - 0x025C11 09:9C01: 4C DB 9A  JMP loc_9ADB
bra_9C04:
C - - - - - 0x025C14 09:9C04: 4C D3 9A  JMP loc_9AD3
bra_9C07:
C - - - - - 0x025C17 09:9C07: 4C BD 9A  JMP loc_9ABD
bra_9C0A:
C - - - - - 0x025C1A 09:9C0A: BD 00 06  LDA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x025C1D 09:9C0D: 30 21     BMI bra_9C30_RTS
C - - - - - 0x025C1F 09:9C0F: A9 80     LDA #con_btn_A
C - - - - - 0x025C21 09:9C11: 05 08     ORA ram_0008    ; right/left
C - - - - - 0x025C23 09:9C13: 85 00     STA ram_0000
C - - - - - 0x025C25 09:9C15: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025C27 09:9C17: 29 80     AND #con_btn_A
C - - - - - 0x025C29 09:9C19: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025C2C 09:9C1C: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025C2F 09:9C1F: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025C31 09:9C21: 25 08     AND ram_0008    ; right/left
C - - - - - 0x025C33 09:9C23: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025C36 09:9C26: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025C39 09:9C29: C5 00     CMP ram_0000
C - - - - - 0x025C3B 09:9C2B: D0 03     BNE bra_9C30_RTS
C - - - - - 0x025C3D 09:9C2D: 4C 7C 9A  JMP loc_9A7C
bra_9C30_RTS:
C - - - - - 0x025C40 09:9C30: 60        RTS



ofs_053_9C31_06_shred:
ofs_053_9C31_0D:
C - - J - - 0x025C41 09:9C31: 20 7B 9C  JSR sub_9C7B
C - - - - - 0x025C44 09:9C34: 98        TYA
C - - - - - 0x025C45 09:9C35: F0 05     BEQ bra_9C3C
C - - - - - 0x025C47 09:9C37: D0 0C     BNE bra_9C45    ; jmp
bra_9C3C:
C - - - - - 0x025C4C 09:9C3C: A5 08     LDA ram_0008    ; right/left
C - - - - - 0x025C4E 09:9C3E: C5 09     CMP ram_0009    ; dpad btns
C - - - - - 0x025C50 09:9C40: D0 EE     BNE bra_9C30_RTS
bra_9C42:
C - - - - - 0x025C52 09:9C42: 4C D3 9A  JMP loc_9AD3
bra_9C45:
C - - - - - 0x025C55 09:9C45: DE 0C 06  DEC ram_plr_таймер_для_суперки,X ; 060C 060D 
C - - - - - 0x025C58 09:9C48: F0 BD     BEQ bra_9C07
C - - - - - 0x025C5A 09:9C4A: 88        DEY
C - - - - - 0x025C5B 09:9C4B: D0 11     BNE bra_9C5E
C - - - - - 0x025C5D 09:9C4D: A5 08     LDA ram_0008    ; right/left
C - - - - - 0x025C5F 09:9C4F: 25 09     AND ram_0009    ; dpad btns
C - - - - - 0x025C61 09:9C51: F0 DD     BEQ bra_9C30_RTS
C - - - - - 0x025C63 09:9C53: A9 04     LDA #con_btn_Down
C - - - - - 0x025C65 09:9C55: 05 08     ORA ram_0008    ; right/left
C - - - - - 0x025C67 09:9C57: C5 09     CMP ram_0009    ; dpad btns
C - - - - - 0x025C69 09:9C59: F0 E7     BEQ bra_9C42
C - - - - - 0x025C6B 09:9C5B: 4C DB 9A  JMP loc_9ADB
bra_9C5E:
C - - - - - 0x025C6E 09:9C5E: A9 04     LDA #con_btn_Down
C - - - - - 0x025C70 09:9C60: C5 09     CMP ram_0009    ; dpad btns
C - - - - - 0x025C72 09:9C62: D0 06     BNE bra_9C6A
C - - - - - 0x025C74 09:9C64: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025C77 09:9C67: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
bra_9C6A:
C - - - - - 0x025C7A 09:9C6A: A9 40     LDA #con_btn_B
C - - - - - 0x025C7C 09:9C6C: 35 8E     AND ram_btn_press,X
C - - - - - 0x025C7E 09:9C6E: 1D 31 06  ORA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025C81 09:9C71: 9D 31 06  STA ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x025C84 09:9C74: C9 44     CMP #con_btn_B + con_btn_Down
C - - - - - 0x025C86 09:9C76: D0 B8     BNE bra_9C30_RTS
C - - - - - 0x025C88 09:9C78: 4C 7C 9A  JMP loc_9A7C



sub_9C7B:
C - - - - - 0x025C8B 09:9C7B: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x025C8E 09:9C7E: C9 03     CMP #con_plr_state_получает_урон
C - - - - - 0x025C90 09:9C80: F0 22     BEQ bra_9CA4
C - - - - - 0x025C92 09:9C82: C9 08     CMP #con_plr_state_делает_суперку
C - - - - - 0x025C94 09:9C84: F0 26     BEQ bra_9CAC_RTS
C - - - - - 0x025C96 09:9C86: A9 40     LDA #con_btn_B
C - - - - - 0x025C98 09:9C88: 35 8E     AND ram_btn_press,X
C - - - - - 0x025C9A 09:9C8A: F0 10     BEQ bra_9C9C
C - - - - - 0x025C9C 09:9C8C: A9 0A     LDA #$0A
C - - - - - 0x025C9E 09:9C8E: 9D 0E 06  STA ram_060E_plr,X ; 060E 060F 
C - - - - - 0x025CA1 09:9C91: BD 0A 06  LDA ram_060A_plr,X ; 060A 060B 
C - - - - - 0x025CA4 09:9C94: C9 02     CMP #$02
C - - - - - 0x025CA6 09:9C96: B0 15     BCS bra_9CAD
C - - - - - 0x025CA8 09:9C98: FE 0A 06  INC ram_060A_plr,X ; 060A 060B 
C - - - - - 0x025CAB 09:9C9B: 60        RTS
bra_9C9C:
C - - - - - 0x025CAC 09:9C9C: DE 0E 06  DEC ram_060E_plr,X ; 060E 060F 
C - - - - - 0x025CAF 09:9C9F: D0 0B     BNE bra_9CAC_RTS
C - - - - - 0x025CB1 09:9CA1: F0 01     BEQ bra_9CA4    ; jmp



bra_9CA4:
loc_9CA4:
C D 0 - - - 0x025CB4 09:9CA4: A9 00     LDA #$00
C - - - - - 0x025CB6 09:9CA6: 9D 0A 06  STA ram_060A_plr,X ; 060A 060B 
C - - - - - 0x025CB9 09:9CA9: 9D 0E 06  STA ram_060E_plr,X ; 060E 060F 
bra_9CAC_RTS:
C - - - - - 0x025CBC 09:9CAC: 60        RTS
bra_9CAD:
C - - - - - 0x025CBD 09:9CAD: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x025CC0 09:9CB0: F0 04     BEQ bra_9CB6    ; if con_plr_state_на_земле
C - - - - - 0x025CC2 09:9CB2: C9 06     CMP #con_plr_state_поворачивается
C - - - - - 0x025CC4 09:9CB4: D0 F6     BNE bra_9CAC_RTS
bra_9CB6:
C - - - - - 0x025CC6 09:9CB6: 4C 89 9A  JMP loc_9A89



sub_9D00:
C - - - - - 0x025D10 09:9D00: A5 08     LDA ram_0008    ; right/left
C - - - - - 0x025D12 09:9D02: 25 09     AND ram_0009    ; dpad btns
C - - - - - 0x025D14 09:9D04: F0 0A     BEQ bra_9D10
C - - - - - 0x025D16 09:9D06: A9 01     LDA #$01
C - - - - - 0x025D18 09:9D08: 9D 0A 06  STA ram_060A_plr,X ; 060A 060B 
C - - - - - 0x025D1B 09:9D0B: A9 14     LDA #$14
C - - - - - 0x025D1D 09:9D0D: 9D 0E 06  STA ram_060E_plr,X ; 060E 060F 
bra_9D10:
C - - - - - 0x025D20 09:9D10: BD 0E 06  LDA ram_060E_plr,X ; 060E 060F 
C - - - - - 0x025D23 09:9D13: F0 C2     BEQ bra_9D35_RTS
C - - - - - 0x025D25 09:9D15: DE 0E 06  DEC ram_060E_plr,X ; 060E 060F 
C - - - - - 0x025D28 09:9D18: F0 02     BEQ bra_9D1C
C - - - - - 0x025D2A 09:9D1A: 10 BB     BPL bra_9D35_RTS
bra_9D1C:
C - - - - - 0x025D2C 09:9D1C: 4C A4 9C  JMP loc_9CA4



sub_9D1F_проверить_кнопки_для_запуска_мяча:
C - - - - - 0x025D2F 09:9D1F: BD 00 06  LDA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x025D32 09:9D22: 30 03     BMI bra_9D27
C - - - - - 0x025D34 09:9D24: 4C D2 9D  JMP loc_9DD2_очистить_таймер_запуска_мяча
bra_9D27:
C - - - - - 0x025D37 09:9D27: 20 C7 9D  JSR sub_9DC7
C - - - - - 0x025D3A 09:9D2A: BC 04 06  LDY ram_0604_plr,X ; 0604 0605 
C - - - - - 0x025D3D 09:9D2D: F0 06     BEQ bra_9D35_RTS
C - - - - - 0x025D3F 09:9D2F: 88        DEY
C - - - - - 0x025D40 09:9D30: D0 04     BNE bra_9D36
; if перс только что взял мяч, и еще рано давать ему возможность запускать его
; требуется подождать 1 кадр
C D 0 - - - 0x025DCD 09:9DBD: A9 00     LDA #$00
C - - - - - 0x025DCF 09:9DBF: 9D 4B 06  STA ram_064B_plr,X ; 064B 064C 
C - - - - - 0x025DD2 09:9DC2: FE 04 06  INC ram_0604_plr,X ; 0604 0605 
C - - - - - 0x025DD5 09:9DC5: D0 19     JMP loc_9DE0
bra_9D35_RTS:
C - - - - - 0x025D45 09:9D35: 60        RTS
bra_9D36:
C - - - - - 0x025D46 09:9D36: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x025D49 09:9D39: C9 03     CMP #con_fighter_don
C - - - - - 0x025D4B 09:9D3B: F0 0D     BEQ bra_9D4A    ; don умеет пускать мяч в любом состоянии
                                    .else
                                        CMP #con_fighter_don
                                        BEQ bra_9D4A
                                        CMP #con_fighter___don
                                        BEQ bra_9D4A
                                    .endif
C - - - - - 0x025D4D 09:9D3D: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x025D50 09:9D40: F0 08     BEQ bra_9D4A    ; if con_plr_state_на_земле
C - - - - - 0x025D52 09:9D42: C9 07     CMP #con_plr_state_сидит
C - - - - - 0x025D54 09:9D44: F0 04     BEQ bra_9D4A
C - - - - - 0x025D56 09:9D46: C9 06     CMP #con_plr_state_поворачивается
C - - - - - 0x025D58 09:9D48: D0 EB     BNE bra_9D35_RTS
bra_9D4A:
C - - - - - 0x025D5A 09:9D4A: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x025D5D 09:9D4D: C9 02     CMP #con_fighter_mike
C - - - - - 0x025D5F 09:9D4F: D0 25     BNE bra_9D76
                                    .else
                                        CMP #con_fighter_mike
                                        BEQ bra_9D51_mike
                                        CMP #con_fighter___mike
                                        BNE bra_9D76
bra_9D51_mike:
                                    .endif
; mike умеет пускать 2 вида мяча
; con_fighter_mike
; con_fighter___mike
C - - - - - 0x025D61 09:9D51: A5 09     LDA ram_0009    ; dpad btns
C - - - - - 0x025D63 09:9D53: C5 08     CMP ram_0008    ; right/left
C - - - - - 0x025D65 09:9D55: D0 10     BNE bra_9D67
C - - - - - 0x025D67 09:9D57: 1D 4B 06  ORA ram_064B_plr,X ; 064B 
C - - - - - 0x025D6A 09:9D5A: 9D 4B 06  STA ram_064B_plr,X ; 064B 
C - - - - - 0x025D6D 09:9D5D: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025D6F 09:9D5F: 29 C0     AND #con_btns_AB
C - - - - - 0x025D71 09:9D61: 1D 4B 06  ORA ram_064B_plr,X ; 064B 
C - - - - - 0x025D74 09:9D64: 9D 4B 06  STA ram_064B_plr,X ; 064B 
bra_9D67:
C - - - - - 0x025D77 09:9D67: BD 4B 06  LDA ram_064B_plr,X ; 064B 
C - - - - - 0x025D7A 09:9D6A: A8        TAY
C - - - - - 0x025D7B 09:9D6B: 29 C0     AND #con_btns_AB
C - - - - - 0x025D7D 09:9D6D: F0 6B     BEQ bra_9DDA_RTS
C - - - - - 0x025D7F 09:9D6F: 98        TYA
C - - - - - 0x025D80 09:9D70: 25 08     AND ram_0008    ; right/left
C - - - - - 0x025D82 09:9D72: F0 66     BEQ bra_9DDA_RTS
C - - - - - 0x025D84 09:9D74: D0 1E     BNE bra_9D94    ; jmp
bra_9D76:
; if любой перс кроме mike
C - - - - - 0x025D86 09:9D76: A5 08     LDA ram_0008    ; right/left
C - - - - - 0x025D88 09:9D78: 09 40     ORA #con_btn_B
C - - - - - 0x025D8A 09:9D7A: 85 00     STA ram_0000
C - - - - - 0x025D8C 09:9D7C: B5 91     LDA ram_btn_hold,X
C - - - - - 0x025D8E 09:9D7E: 25 08     AND ram_0008    ; right/left
C - - - - - 0x025D90 09:9D80: 1D 4B 06  ORA ram_064B_plr,X ; 064B 064C 
C - - - - - 0x025D93 09:9D83: 9D 4B 06  STA ram_064B_plr,X ; 064B 064C 
C - - - - - 0x025D96 09:9D86: B5 8E     LDA ram_btn_press,X
C - - - - - 0x025D98 09:9D88: 29 40     AND #con_btn_B
C - - - - - 0x025D9A 09:9D8A: 1D 4B 06  ORA ram_064B_plr,X ; 064B 064C 
C - - - - - 0x025D9D 09:9D8D: 9D 4B 06  STA ram_064B_plr,X ; 064B 064C 
C - - - - - 0x025DA0 09:9D90: C5 00     CMP ram_0000
C - - - - - 0x025DA2 09:9D92: D0 46     BNE bra_9DDA_RTS
bra_9D94:
C - - - - - 0x025DA4 09:9D94: 20 4C BE  JSR sub_BE4C    ; возможен PLA PLA
C - - - - - 0x025DA7 09:9D97: 90 02     BCC bra_9D9B
C - - - - - 0x025DA9 09:9D99: D0 3F     BNE bra_9DDA_RTS
bra_9D9B:
C - - - - - 0x025DAB 09:9D9B: A9 05     LDA #con_plr_state_запускает_мяч
C - - - - - 0x025DAD 09:9D9D: 9D 20 05  STA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x025DB0 09:9DA0: BD 4B 06  LDA ram_064B_plr,X ; 064B 064C 
C - - - - - 0x025DB3 09:9DA3: 29 C0     AND #con_btns_AB
; bzk bug?
; bzk optimize, где этот 04A6 будет читаться? предположительно нигде
C - - - - - 0x025DB5 09:9DA5: 8D A6 04  STA ram_obj_spd_Y_hi + $06
C - - - - - 0x025DB8 09:9DA8: A9 00     LDA #$00
C - - - - - 0x025DBA 09:9DAA: 9D 04 06  STA ram_0604_plr,X ; 0604 0605 
C - - - - - 0x025DBD 09:9DAD: 9D 06 06  STA ram_plr_таймер_для_запуска_мяча,X ; 0606 0607 
C - - - - - 0x025DC0 09:9DB0: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x025DC3 09:9DB3: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x025DC6 09:9DB6: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x025DC9 09:9DB9: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x025DCC 09:9DBC: 60        RTS



sub_9DC7:
C - - - - - 0x025DD7 09:9DC7: A5 09     LDA ram_0009    ; dpad btns
C - - - - - 0x025DD9 09:9DC9: C9 04     CMP #con_btn_Down
C - - - - - 0x025DDB 09:9DCB: F0 0E     BEQ bra_9DDB
C - - - - - 0x025DDD 09:9DCD: DE 06 06  DEC ram_plr_таймер_для_запуска_мяча,X ; 0606 0607 
C - - - - - 0x025DE0 09:9DD0: 10 08     BPL bra_9DDA_RTS
loc_9DD2_очистить_таймер_запуска_мяча:
C D 0 - - - 0x025DE2 09:9DD2: A9 00     LDA #$00
C - - - - - 0x025DE4 09:9DD4: 9D 06 06  STA ram_plr_таймер_для_запуска_мяча,X ; 0606 0607 
C - - - - - 0x025DE7 09:9DD7: 9D 04 06  STA ram_0604_plr,X ; 0604 0605 
bra_9DDA_RTS:
C - - - - - 0x025DEA 09:9DDA: 60        RTS
bra_9DDB:
C - - - - - 0x025DEB 09:9DDB: A9 01     LDA #$01
C - - - - - 0x025DED 09:9DDD: 9D 04 06  STA ram_0604_plr,X ; 0604 0605 
loc_9DE0:
C - - - - - 0x025DF0 09:9DE0: A9 0C     LDA #$0C
C - - - - - 0x025DF2 09:9DE2: 9D 06 06  STA ram_plr_таймер_для_запуска_мяча,X ; 0606 0607 
C - - - - - 0x025DF5 09:9DE5: 60        RTS



sub_9DE6:
C - - - - - 0x025DF6 09:9DE6: A4 A9     LDY ram_global_obj_index
C - - - - - 0x025DF8 09:9DE8: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x025DFB 09:9DEB: A8        TAY
C - - - - - 0x025DFC 09:9DEC: BD 00 06  LDA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x025DFF 09:9DEF: 29 FC     AND #$FC
C - - - - - 0x025E01 09:9DF1: C0 0A     CPY #con_plr_state_брошен_соперником
C - - - - - 0x025E03 09:9DF3: D0 03     BNE bra_9DF8
C - - - - - 0x025E05 09:9DF5: 1D 26 06  ORA ram_0626_plr,X ; 0626 0627 
bra_9DF8:
C - - - - - 0x025E08 09:9DF8: 9D 00 06  STA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x025E0B 09:9DFB: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x025E0E 09:9DFE: 60        RTS



tbl_9E16:
- D 0 - - - 0x025E26 09:9E16: 00        .byte $00   ; 00
- D 0 - - - 0x025E27 09:9E17: 18        .byte $18   ; 01
- D 0 - - - 0x025E28 09:9E18: 05        .byte $05   ; 02
- D 0 - - - 0x025E29 09:9E19: 0A        .byte $0A   ; 03
- D 0 - - - 0x025E2A 09:9E1A: 08        .byte $08   ; 04
- D 0 - - - 0x025E2B 09:9E1B: 16        .byte $16   ; 05
- D 0 - - - 0x025E2C 09:9E1C: 06        .byte $06   ; 06
- D 0 - - - 0x025E2D 09:9E1D: 12        .byte $12   ; 07
- - - - - - 0x025E2E 09:9E1E: 10        .byte $10   ; 08
- D 0 - - - 0x025E2F 09:9E1F: 1D        .byte $1D   ; 09
- D 0 - - - 0x025E30 09:9E20: 18        .byte $18   ; 0A
- D 0 - - - 0x025E31 09:9E21: 04        .byte $04   ; 0B
- D 0 - - - 0x025E32 09:9E22: 03        .byte $03   ; 0C
- D 0 - - - 0x025E33 09:9E23: 10        .byte $10   ; 0D
- D 0 - - - 0x025E34 09:9E24: 08        .byte $08   ; 0E
- D 0 - - - 0x025E35 09:9E25: 1A        .byte $1A   ; 0F
- - - - - - 0x025E36 09:9E26: 10        .byte $10   ; 10
- D 0 - - - 0x025E37 09:9E27: 14        .byte $14   ; 11
- - - - - - 0x025E38 09:9E28: 09        .byte $09   ; 12
- D 0 - - - 0x025E39 09:9E29: 0B        .byte $0B   ; 13
- - - - - - 0x025E3A 09:9E2A: 10        .byte $10   ; 14
- D 0 - - - 0x025E3B 09:9E2B: 18        .byte $18   ; 15
- D 0 - - - 0x025E3C 09:9E2C: 08        .byte $08   ; 16
- D 0 - - - 0x025E3D 09:9E2D: 08        .byte $08   ; 17
- D 0 - - - 0x025E3E 09:9E2E: 08        .byte $08   ; 18
- D 0 - - - 0x025E3F 09:9E2F: 0C        .byte $0C   ; 19
- D 0 - - - 0x025E40 09:9E30: 06        .byte $06   ; 1A
- D 0 - - - 0x025E41 09:9E31: 0C        .byte $0C   ; 1B
- D 0 - - - 0x025E42 09:9E32: 10        .byte $10   ; 1C
- D 0 - - - 0x025E43 09:9E33: 08        .byte $08   ; 1D
- - - - - - 0x025E44 09:9E34: 60        .byte $60   ; 1E
- D 0 - - - 0x025E45 09:9E35: 20        .byte $20   ; 1F
- D 0 - - - 0x025E46 09:9E36: 07        .byte $07   ; 20
- D 0 - - - 0x025E47 09:9E37: 08        .byte $08   ; 21
- D 0 - - - 0x025E48 09:9E38: 07        .byte $07   ; 22



sub_9E39:
C - - - - - 0x025E49 09:9E39: BD 9C 04  LDA ram_obj_spd_Y_hi - $04,X ; 04A0 04A1 
C - - - - - 0x025E4C 09:9E3C: 30 03     BMI bra_9E41
C - - - - - 0x025E4E 09:9E3E: A9 20     LDA #$20
C - - - - - 0x025E50 09:9E40: 2C        .byte $2C   ; BIT
bra_9E41:
C - - - - - 0x025E51 09:9E41: A9 30     LDA #$30
C - - - - - 0x025E53 09:9E43: 60        RTS



sub_9E44:
C - - - - - 0x025E54 09:9E44: A9 00     LDA #$00
C - - - - - 0x025E56 09:9E46: 2C        .byte $2C   ; BIT
sub_9E47:
C - - - - - 0x025E57 09:9E47: A9 0A     LDA #$0A
C - - - - - 0x025E59 09:9E49: 85 AA     STA ram_таймер_задержки_фпс
C - - - - - 0x025E5B 09:9E4B: 8D 52 01  STA ram_0152
C - - - - - 0x025E5E 09:9E4E: 60        RTS



sub_A23F:
sub_0x02624F:
C - - - - - 0x02624F 09:A23F: A5 AD     LDA ram_00AD
C - - - - - 0x026251 09:A241: 18        CLC
C - - - - - 0x026252 09:A242: 69 02     ADC #$02
C - - - - - 0x026254 09:A244: AA        TAX
bra_A245_loop:
C - - - - - 0x026255 09:A245: 86 A8     STX ram_local_obj_index
C - - - - - 0x026257 09:A247: BC 50 05  LDY ram_obj_id,X ; 0552 0553 0554 0555 
C - - - - - 0x02625A 09:A24A: F0 24     BEQ bra_A270    ; if con_0552_00
C - - - - - 0x02625C 09:A24C: B9 E1 A7  LDA tbl_A7E2_приоритеты_атак - $01,Y
C - - - - - 0x02625F 09:A24F: 20 C0 B7  JSR sub_B7C0
C - - - - - 0x026262 09:A252: 98        TYA
C - - - - - 0x026263 09:A253: 0A        ASL
C - - - - - 0x026264 09:A254: A8        TAY
C - - - - - 0x026265 09:A255: B9 80 A2  LDA tbl_A282_обработчики_ударов_и_спешалов - $02,Y
C - - - - - 0x026268 09:A258: 85 00     STA ram_0000
C - - - - - 0x02626A 09:A25A: B9 81 A2  LDA tbl_A282_обработчики_ударов_и_спешалов - $01,Y
C - - - - - 0x02626D 09:A25D: 85 01     STA ram_0001
C - - - - - 0x02626F 09:A25F: BD 30 05  LDA ram_0530_obj_state,X ; 0532 0533 0534 0535 
C - - - - - 0x026272 09:A262: 0A        ASL
C - - - - - 0x026273 09:A263: A8        TAY
C - - - - - 0x026274 09:A264: B1 00     LDA (ram_0000),Y
C - - - - - 0x026276 09:A266: 85 02     STA ram_0002
C - - - - - 0x026278 09:A268: C8        INY
C - - - - - 0x026279 09:A269: B1 00     LDA (ram_0000),Y
C - - - - - 0x02627B 09:A26B: 85 03     STA ram_0003
C - - - - - 0x02627D 09:A26D: 20 79 A2  JSR sub_A279
bra_A270:
C - - - - - 0x026280 09:A270: E8        INX
C - - - - - 0x026281 09:A271: E8        INX
C - - - - - 0x026282 09:A272: E0 06     CPX #$06
C - - - - - 0x026284 09:A274: 90 CF     BCC bra_A245_loop
C - - - - - 0x026286 09:A276: 4C 31 A8  JMP loc_A831



sub_A279:
C - - - - - 0x026289 09:A279: FE F0 04  INC ram_04F0_obj,X ; 04F2 04F3 04F4 04F5 
C - - - - - 0x02628C 09:A27C: BC 20 05  LDY ram_obj_state_hi,X ; 0522 0523 0524 0525 
C - - - - - 0x02628F 09:A27F: 6C 02 00  JMP (ram_0002)



tbl_A282_обработчики_ударов_и_спешалов:
; bzk optimize, перетащить все в одно место, а не хуй где попало
; хотя как сейчас выглядит логично
- D 1 - - - 0x026292 09:A282: F4 A2     .word _off011_A2F4_01_черепаха_рука_дальняя
- D 1 - - - 0x026294 09:A284: F4 A2     .word _off011_A2F4_02_черепаха_нога_ближняя
- D 1 - - - 0x026296 09:A286: F4 A2     .word _off011_A2F4_03_черепаха_рука_в_воздухе
- D 1 - - - 0x026298 09:A288: F4 A2     .word _off011_A2F4_04_черепаха_нога_в_воздухе
- D 1 - - - 0x02629A 09:A28A: F4 A2     .word _off011_A2F4_05_черепаха_рука_сидя
- D 1 - - - 0x02629C 09:A28C: F4 A2     .word _off011_A2F4_06_черепаха_нога_сидя_обычная
- D 1 - - - 0x02629E 09:A28E: F4 A2     .word _off011_A2F4_07_черепаха_рука_ближняя
- D 1 - - - 0x0262A0 09:A290: F4 A2     .word _off011_A2F4_08_черепаха_нога_дальняя_обычная
- D 1 - - - 0x0262A2 09:A292: F4 A2     .word _off011_A2F4_09_черепаха_нога_дальняя_raph
- D 1 - - - 0x0262A4 09:A294: F4 A2     .word _off011_A2F4_0A_черепаха_нога_сидя_leo
- D 1 - - - 0x0262A6 09:A296: F4 A2     .word _off011_A2F4_0B_черепаха_деш_локтем
- D 1 - - - 0x0262A8 09:A298: F4 A2     .word _off011_A2F4_0C_черепаха_нога_антиэйр
- D 1 - - - 0x0262AA 09:A29A: F4 A2     .word _off011_A2F4_0D_черепаха_рука_антиэйр
- D 1 - - - 0x0262AC 09:A29C: F4 A2     .word _off011_A2F4_0E_черепаха_деш_ногой
- D 1 - - - 0x0262AE 09:A29E: F4 A2     .word _off011_A2F4_0F_casey_рука_дальняя
- D 1 - - - 0x0262B0 09:A2A0: F4 A2     .word _off011_A2F4_10_casey_нога_ближняя
- D 1 - - - 0x0262B2 09:A2A2: F4 A2     .word _off011_A2F4_11_casey_рука_сидя
- D 1 - - - 0x0262B4 09:A2A4: F4 A2     .word _off011_A2F4_12_casey_нога_сидя
- D 1 - - - 0x0262B6 09:A2A6: F4 A2     .word _off011_A2F4_13_casey_рука_ближняя
- D 1 - - - 0x0262B8 09:A2A8: F4 A2     .word _off011_A2F4_14_casey_нога_дальняя
- D 1 - - - 0x0262BA 09:A2AA: B5 A3     .word _off011_A3B5_15_casey_рука_антиэйр
- D 1 - - - 0x0262BC 09:A2AC: F4 A2     .word _off011_A2F4_16_casey_рука_в_воздухе
- D 1 - - - 0x0262BE 09:A2AE: F4 A2     .word _off011_A2F4_17_casey_нога_в_воздухе
- D 1 - - - 0x0262C0 09:A2B0: 8F A3     .word _off011_A38F_18_casey_нога_антиэйр
- D 1 - - - 0x0262C2 09:A2B2: F4 A2     .word _off011_A2F4_19_hot_рука_ближняя
- D 1 - - - 0x0262C4 09:A2B4: F4 A2     .word _off011_A2F4_1A_hot_рука_дальняя
- D 1 - - - 0x0262C6 09:A2B6: F4 A2     .word _off011_A2F4_1B_hot_рука_в_воздухе
- D 1 - - - 0x0262C8 09:A2B8: F4 A2     .word _off011_A2F4_1C_hot_рука_сидя
- D 1 - - - 0x0262CA 09:A2BA: F4 A2     .word _off011_A2F4_1D_hot_нога_ближняя
- D 1 - - - 0x0262CC 09:A2BC: F4 A2     .word _off011_A2F4_1E_hot_нога_дальняя
- D 1 - - - 0x0262CE 09:A2BE: F4 A2     .word _off011_A2F4_1F_hot_нога_в_воздухе
- D 1 - - - 0x0262D0 09:A2C0: F4 A2     .word _off011_A2F4_20_hot_нога_сидя
- D 1 - - - 0x0262D2 09:A2C2: F4 A2     .word _off011_A2F4_21_hot_бабочка
- D 1 - - - 0x0262D4 09:A2C4: F4 A2     .word _off011_A2F4_22_hot_рука_антиэйр
- D 1 - - - 0x0262D6 09:A2C6: F4 A2     .word _off011_A2F4_23_hot_нога_антиэйр
- D 1 - - - 0x0262D8 09:A2C8: F4 A2     .word _off011_A2F4_24_shred_рука_ближняя
- D 1 - - - 0x0262DA 09:A2CA: F4 A2     .word _off011_A2F4_25_shred_рука_средняя
- D 1 - - - 0x0262DC 09:A2CC: F4 A2     .word _off011_A2F4_26_shred_рука_дальняя
- D 1 - - - 0x0262DE 09:A2CE: 69 A3     .word _off011_A369_27_shred_рука_антиэйр
- D 1 - - - 0x0262E0 09:A2D0: F4 A2     .word _off011_A2F4_28_shred_рука_в_воздухе
- D 1 - - - 0x0262E2 09:A2D2: F4 A2     .word _off011_A2F4_29_shred_рука_сидя
- D 1 - - - 0x0262E4 09:A2D4: F4 A2     .word _off011_A2F4_2A_shred_нога_ближняя
- D 1 - - - 0x0262E6 09:A2D6: F4 A2     .word _off011_A2F4_2B_shred_нога_дальняя
- D 1 - - - 0x0262E8 09:A2D8: F4 A2     .word _off011_A2F4_2C_shred_нога_в_воздухе
- D 1 - - - 0x0262EA 09:A2DA: F4 A2     .word _off011_A2F4_2D_shred_нога_сидя
- D 1 - - - 0x0262EC 09:A2DC: F4 A2     .word _off011_A2F4_2E_shred_нога_антиэйр
                                        .word _off011_A2F4_2F_hot_ручка_быстрая
                                        .word $0000      ; 30 rezerv
                                        .word $0000      ; 31 rezerv
                                        .word $0000      ; 32 rezerv
                                        .word $0000      ; 33 rezerv
                                        .word $0000      ; 34 rezerv
                                        .word $0000      ; 35 rezerv
                                        .word $0000      ; 36 rezerv
                                        .word $0000      ; 37 rezerv
                                        .word $0000      ; 38 rezerv
                                        .word $0000      ; 39 rezerv
                                        .word $0000      ; 3A rezerv
                                        .word $0000      ; 3B rezerv
                                        .word $0000      ; 3C rezerv
                                        .word $0000      ; 3D rezerv
                                        .word $0000      ; 3E rezerv
- D 1 - - - 0x0262EE 09:A2DE: A8 A5     .word _off011_A5A8_2F_special_hot_огонь
- D 1 - - - 0x0262F0 09:A2E0: CC A3     .word _off011_A3CC_30_special_shred_волна
- D 1 - - - 0x0262F2 09:A2E2: 5F A4     .word _off011_A45F_31_special_leo_крутилка
- D 1 - - - 0x0262F4 09:A2E4: FF A4     .word _off011_A4FF_32_special_raph_сверло
- D 1 - - - 0x0262F6 09:A2E6: 0A A5     .word _off011_A50A_33_special_mike_ракеты_понизу
- D 1 - - - 0x0262F8 09:A2E8: 0E A5     .word _off011_A50E_34_special_mike_ракеты_поверху
- D 1 - - - 0x0262FA 09:A2EA: 1E A5     .word _off011_A51E_35_special_don_пила_вращение
- D 1 - - - 0x0262FC 09:A2EC: 29 A5     .word _off011_A529_36_special_shred_мясо
- D 1 - - - 0x0262FE 09:A2EE: 7E A5     .word _off011_A57E_37_special_casey_клюшка
- D 1 - - - 0x026300 09:A2F0: 1F A6     .word _off011_A61F_38_special_don_пила_подкат
- D 1 - - - 0x026302 09:A2F2: 3B A6     .word _off011_A63B_39_special_casey_песок



_off011_A2F4_01_черепаха_рука_дальняя:
_off011_A2F4_02_черепаха_нога_ближняя:
_off011_A2F4_03_черепаха_рука_в_воздухе:
_off011_A2F4_04_черепаха_нога_в_воздухе:
_off011_A2F4_05_черепаха_рука_сидя:
_off011_A2F4_06_черепаха_нога_сидя_обычная:
_off011_A2F4_07_черепаха_рука_ближняя:
_off011_A2F4_08_черепаха_нога_дальняя_обычная:
_off011_A2F4_09_черепаха_нога_дальняя_raph:
_off011_A2F4_0A_черепаха_нога_сидя_leo:
_off011_A2F4_0B_черепаха_деш_локтем:
_off011_A2F4_0C_черепаха_нога_антиэйр:
_off011_A2F4_0E_черепаха_деш_ногой:
_off011_A2F4_0F_casey_рука_дальняя:
_off011_A2F4_10_casey_нога_ближняя:
_off011_A2F4_11_casey_рука_сидя:
_off011_A2F4_12_casey_нога_сидя:
_off011_A2F4_13_casey_рука_ближняя:
_off011_A2F4_14_casey_нога_дальняя:
_off011_A2F4_16_casey_рука_в_воздухе:
_off011_A2F4_17_casey_нога_в_воздухе:
_off011_A2F4_19_hot_рука_ближняя:
_off011_A2F4_1A_hot_рука_дальняя:
_off011_A2F4_1B_hot_рука_в_воздухе:
_off011_A2F4_1C_hot_рука_сидя:
_off011_A2F4_1D_hot_нога_ближняя:
_off011_A2F4_1E_hot_нога_дальняя:
_off011_A2F4_1F_hot_нога_в_воздухе:
_off011_A2F4_20_hot_нога_сидя:
_off011_A2F4_21_hot_бабочка:
_off011_A2F4_22_hot_рука_антиэйр:
_off011_A2F4_23_hot_нога_антиэйр:
_off011_A2F4_24_shred_рука_ближняя:
_off011_A2F4_25_shred_рука_средняя:
_off011_A2F4_26_shred_рука_дальняя:
_off011_A2F4_28_shred_рука_в_воздухе:
_off011_A2F4_29_shred_рука_сидя:
_off011_A2F4_2A_shred_нога_ближняя:
_off011_A2F4_2B_shred_нога_дальняя:
_off011_A2F4_2C_shred_нога_в_воздухе:
_off011_A2F4_2D_shred_нога_сидя:
_off011_A2F4_2E_shred_нога_антиэйр:
_off011_A2F4_2F_hot_ручка_быстрая:
- D 1 - I - 0x026304 09:A2F4: F8 A2     .word ofs_068_A2F8_00
- D 1 - I - 0x026306 09:A2F6: 5E A3     .word ofs_068_A35E_01



sub_A2F8:
ofs_068_A2F8_00:
ofs_070_A2F8_00:
ofs_071_A2F8_00:
; X = 02 03
C - - J - - 0x026308 09:A2F8: FE 30 05  INC ram_0530_obj_state,X ; 0532 0533 
C - - - - - 0x02630B 09:A2FB: 20 36 A3  JSR sub_A336
; (!) код должен находиться в 8000-9FFF
                                       ;LDA #$07
                                       ;STA $8000
                                        LDA #con_prg_bank + $0C
                                        STA $8001
                                        JSR sub_0x02630E_таблицы
                                       ;LDA #$07
                                       ;STA $8000
                                        LDA #con_prg_bank + $13
                                        STA $8001
sub_A313:
loc_A313:
C D 1 - - - 0x026323 09:A313: 8A        TXA
C - - - - - 0x026324 09:A314: 29 01     AND #$01
C - - - - - 0x026326 09:A316: A8        TAY
C - - - - - 0x026327 09:A317: B9 10 05  LDA ram_obj_flip,Y ; 0510 0511 
sub_A31A:
C - - - - - 0x02632A 09:A31A: 0A        ASL
C - - - - - 0x02632B 09:A31B: 0A        ASL
C - - - - - 0x02632C 09:A31C: BD A0 04  LDA ram_obj_spd_Y_hi,X ; 04A2 04A3 04A4 04A5 
C - - - - - 0x02632F 09:A31F: 90 03     BCC bra_A324
C - - - - - 0x026331 09:A321: 20 FC D1  JSR sub_0x03D20C_EOR
bra_A324:
C - - - - - 0x026334 09:A324: 18        CLC
C - - - - - 0x026335 09:A325: 79 40 04  ADC ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x026338 09:A328: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0442 0443 0444 0445 
C - - - - - 0x02633B 09:A32B: 18        CLC
C - - - - - 0x02633C 09:A32C: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x02633F 09:A32F: 7D B0 04  ADC ram_obj_spd_Y_lo,X ; 04B2 04B3 04B4 04B5 
C - - - - - 0x026342 09:A332: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0412 0413 0414 0415 
bra_A335_RTS:
C - - - - - 0x026345 09:A335: 60        RTS



sub_A336:
C - - - - - 0x026346 09:A336: BC 50 05  LDY ram_obj_id,X ; 0552 0553 0554 0555 
C - - - - - 0x026349 09:A339: B9 6B A7  LDA tbl_A76C_id_хёртбокса_атаки - $01,Y
C - - - - - 0x02634C 09:A33C: 9D 70 05  STA ram_0570_obj,X ; 0572 0573 0574 0575 
C - - - - - 0x02634F 09:A33F: B9 A4 A7  LDA tbl_A7A5_урон_от_ударов - $01,Y
C - - - - - 0x026352 09:A342: 9D B0 05  STA ram_05B0_obj_damage,X ; 05B2 05B3 05B4 05B5 
C - - - - - 0x026355 09:A345: C0 0F     CPY #$0F
C - - - - - 0x026357 09:A347: B0 14     BCS bra_A35D_RTS
C - - - - - 0x026359 09:A349: 8A        TXA
C - - - - - 0x02635A 09:A34A: 29 01     AND #$01
C - - - - - 0x02635C 09:A34C: A8        TAY
C - - - - - 0x02635D 09:A34D: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
C - - - - - 0x026360 09:A350: A8        TAY
C - - - - - 0x026361 09:A351: B9 2D A8  LDA tbl_A82D,Y
C - - - - - 0x026364 09:A354: 7D B0 05  ADC ram_05B0_obj_damage,X ; 05B2 05B3 
C - - - - - 0x026367 09:A357: 9D B0 05  STA ram_05B0_obj_damage,X ; 05B2 05B3 
C - - - - - 0x02636A 09:A35A: BC 50 05  LDY ram_obj_id,X ; 0552 0553 
bra_A35D_RTS:
C - - - - - 0x02636D 09:A35D: 60        RTS



bra_A35E:
ofs_068_A35E_01:
C - - J - - 0x02636E 09:A35E: 20 13 A3  JSR sub_A313
C - - - - - 0x026371 09:A361: DE 60 05  DEC ram_obj_timer,X ; 0562 0563 
C - - - - - 0x026374 09:A364: D0 CF     BNE bra_A335_RTS
C D 1 - - - 0x026376 09:A366: 4C 20 DE  JMP loc_0x03DE30_удалить_объекты_перса



_off011_A369_27_shred_рука_антиэйр:
- D 1 - I - 0x026379 09:A369: 6D A3     .word ofs_069_A36D_00
- D 1 - I - 0x02637B 09:A36B: 79 A3     .word ofs_069_A379_01



ofs_069_A36D_00:
C - - J - - 0x02637D 09:A36D: 20 F8 A2  JSR sub_A2F8
C - - - - - 0x026380 09:A370: A9 06     LDA #$06
C - - - - - 0x026382 09:A372: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x026385 09:A375: 9D C0 05  STA ram_obj_anim_timer,X ; 05C3 
C - - - - - 0x026388 09:A378: 60        RTS



ofs_069_A379_01:
C - - J - - 0x026389 09:A379: BD C0 05  LDA ram_obj_anim_timer,X ; 05C3 
C - - - - - 0x02638C 09:A37C: F0 E0     BEQ bra_A35E
C - - - - - 0x02638E 09:A37E: DE C0 05  DEC ram_obj_anim_timer,X ; 05C3 
C - - - - - 0x026391 09:A381: D0 DB     BNE bra_A35E
C - - - - - 0x026393 09:A383: A9 1F     LDA #$1F
C - - - - - 0x026395 09:A385: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A3 
C - - - - - 0x026398 09:A388: A9 C1     LDA #$C1
loc_A38A:
C D 1 - - - 0x02639A 09:A38A: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B2 04B3 
C - - - - - 0x02639D 09:A38D: D0 CF     BNE bra_A35E    ; jmp



_off011_A38F_18_casey_нога_антиэйр:
- D 1 - I - 0x02639F 09:A38F: F8 A2     .word ofs_070_A2F8_00
- D 1 - I - 0x0263A1 09:A391: 93 A3     .word ofs_070_A393_01



ofs_070_A393_01:
C - - J - - 0x0263A3 09:A393: BC 20 05  LDY ram_obj_state_hi,X ; 0522 0523 
C - - - - - 0x0263A6 09:A396: B9 16 06  LDA ram_plr_этап_удара,Y ; 0616 0617 
C - - - - - 0x0263A9 09:A399: C9 07     CMP #$07
C - - - - - 0x0263AB 09:A39B: B0 C1     BCS bra_A35E
C - - - - - 0x0263AD 09:A39D: C9 04     CMP #$04
C - - - - - 0x0263AF 09:A39F: 90 BD     BCC bra_A35E
; 04-06
C - - - - - 0x0263B1 09:A3A1: 0A        ASL
C - - - - - 0x0263B2 09:A3A2: A8        TAY
C - - - - - 0x0263B3 09:A3A3: B9 A7 A3  LDA tbl_A3AF - $08,Y
C - - - - - 0x0263B6 09:A3A6: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A2 04A3 
C - - - - - 0x0263B9 09:A3A9: B9 A8 A3  LDA tbl_A3AF - $07,Y
bra_A3AC:
C - - - - - 0x0263BC 09:A3AC: 4C 8A A3  JMP loc_A38A



tbl_A3AF:
- D 1 - - - 0x0263BF 09:A3AF: 18        .byte $18, $D0   ; 04
- D 1 - - - 0x0263C1 09:A3B1: 13        .byte $13, $C4   ; 05
- D 1 - - - 0x0263C3 09:A3B3: 10        .byte $10, $D0   ; 06



_off011_A2F4_0D_черепаха_рука_антиэйр:
_off011_A3B5_15_casey_рука_антиэйр:
- D 1 - I - 0x0263C5 09:A3B5: F8 A2     .word ofs_071_A2F8_00
- D 1 - I - 0x0263C7 09:A3B7: B9 A3     .word ofs_071_A3B9_01



ofs_071_A3B9_01:
C - - J - - 0x0263C9 09:A3B9: BC 20 05  LDY ram_obj_state_hi,X ; 0523 
C - - - - - 0x0263CC 09:A3BC: B9 16 06  LDA ram_plr_этап_удара,Y ; 0617 
C - - - - - 0x0263CF 09:A3BF: C9 06     CMP #$06
C - - - - - 0x0263D1 09:A3C1: 90 9B     BCC bra_A35E
                                        LDA ram_plr_индекс_атаки,Y ; 0613 
                                        CMP #con_0612_черепаха_рука_антиэйр
                                        BNE bra_A3AD
                                        LDA #$CD
                                        BNE bra_A3AC    ; jmp
bra_A3AD:
C - - - - - 0x0263D3 09:A3C3: A9 14     LDA #$14
C - - - - - 0x0263D5 09:A3C5: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A3 
C - - - - - 0x0263D8 09:A3C8: A9 C5     LDA #$C5
C - - - - - 0x0263DA 09:A3CA: D0 E0     BNE bra_A3AC    ; jmp



_off011_A3CC_30_special_shred_волна:
- D 1 - I - 0x0263DC 09:A3CC: D2 A3     .word ofs_072_A3D2_00
- D 1 - I - 0x0263DE 09:A3CE: F2 A3     .word ofs_072_A3F2_01
- D 1 - I - 0x0263E0 09:A3D0: 0C A4     .word ofs_072_A40C_02



ofs_072_A3D2_00:
C - - J - - 0x0263E2 09:A3D2: A9 10     LDA #> $1000
C - - - - - 0x0263E4 09:A3D4: A0 00     LDY #< $1000
C - - - - - 0x0263E6 09:A3D6: 20 75 A4  JSR sub_A475_запись_spd_Y_и_звука_суперки
C - - - - - 0x0263E9 09:A3D9: A9 1D     LDA #con_sfx_взрыв
C - - - - - 0x0263EB 09:A3DB: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x0263EE 09:A3DE: A9 06     LDA #$06
C - - - - - 0x0263F0 09:A3E0: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x0263F3 09:A3E3: 9D 60 05  STA ram_obj_timer,X ; 0564 0565 
C - - - - - 0x0263F6 09:A3E6: A9 80     LDA #$80
C - - - - - 0x0263F8 09:A3E8: 9D E0 05  STA ram_05E0_obj,X ; 05E4 05E5 
C - - - - - 0x0263FB 09:A3EB: 4A        LSR
C - - - - - 0x0263FC 09:A3EC: 9D 80 05  STA ram_0580_obj,X ; 0584 0585 
C - - - - - 0x0263FF 09:A3EF: 4C 13 A3  JMP loc_A313



ofs_072_A3F2_01:
; X = 04 05
C - - J - - 0x026402 09:A3F2: DE 60 05  DEC ram_obj_timer,X ; 0564 0565 
C - - - - - 0x026405 09:A3F5: F0 05     BEQ bra_A3FC
bra_A3F7:
C - - - - - 0x026407 09:A3F7: A0 12     LDY #con_D0B3_волна_шрушера
C - - - - - 0x026409 09:A3F9: 4C 7C D0  JMP loc_0x03D08C_обработка_анимации_объекта
bra_A3FC:
C - - - - - 0x02640C 09:A3FC: A9 18     LDA #$18
C - - - - - 0x02640E 09:A3FE: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x026411 09:A401: 9D 60 05  STA ram_obj_timer,X ; 0564 0565 
C - - - - - 0x026414 09:A404: FE 30 05  INC ram_0530_obj_state,X ; 0534 0535 
C - - - - - 0x026417 09:A407: A9 04     LDA #$04
C - - - - - 0x026419 09:A409: 4C EC EF  JMP loc_0x03EFFC



ofs_072_A40C_02:
C - - J - - 0x02641C 09:A40C: 8A        TXA
C - - - - - 0x02641D 09:A40D: 49 01     EOR #$01
C - - - - - 0x02641F 09:A40F: 29 01     AND #$01
C - - - - - 0x026421 09:A411: 18        CLC
C - - - - - 0x026422 09:A412: 69 04     ADC #$04
C - - - - - 0x026424 09:A414: A8        TAY
C - - - - - 0x026425 09:A415: B9 50 05  LDA ram_obj_id,Y ; 0554 0555 
C - - - - - 0x026428 09:A418: C9 30     CMP #con_0552_special_shred_волна
C - - - - - 0x02642A 09:A41A: F0 04     BEQ bra_A420
C - - - - - 0x02642C 09:A41C: C9 2F     CMP #con_0552_special_hot_огонь
C - - - - - 0x02642E 09:A41E: D0 07     BNE bra_A427
bra_A420:
C - - - - - 0x026430 09:A420: 20 0C D2  JSR sub_0x03D21C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x026433 09:A423: C9 10     CMP #$10
C - - - - - 0x026435 09:A425: 90 0B     BCC bra_A432
bra_A427:
C - - - - - 0x026437 09:A427: 20 65 DB  JSR sub_0x03DB75_добавить_spd_X_к_pos_X
C - - - - - 0x02643A 09:A42A: DE 60 05  DEC ram_obj_timer,X ; 0564 0565 
C - - - - - 0x02643D 09:A42D: D0 C8     BNE bra_A3F7
C - - - - - 0x02643F 09:A42F: 4C 20 DE  JMP loc_0x03DE30_удалить_объекты_перса
bra_A432:
C - - - - - 0x026442 09:A432: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0445 
C - - - - - 0x026445 09:A435: 79 40 04  ADC ram_obj_pos_X_lo,Y ; 0444 
C - - - - - 0x026448 09:A438: 6A        ROR
C - - - - - 0x026449 09:A439: 48        PHA
C - - - - - 0x02644A 09:A43A: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0415 
C - - - - - 0x02644D 09:A43D: 79 10 04  ADC ram_obj_pos_Y_lo,Y ; 0414 
C - - - - - 0x026450 09:A440: 6A        ROR
C - - - - - 0x026451 09:A441: 48        PHA
C - - - - - 0x026452 09:A442: 20 C7 DA  JSR sub_0x03DAD7_удалить_объект_сохранив_XY
C - - - - - 0x026455 09:A445: 8A        TXA
C - - - - - 0x026456 09:A446: 29 01     AND #$01
C - - - - - 0x026458 09:A448: 18        CLC
C - - - - - 0x026459 09:A449: 69 0A     ADC #$0A
C - - - - - 0x02645B 09:A44B: A8        TAY
C - - - - - 0x02645C 09:A44C: 20 C7 DA  JSR sub_0x03DAD7_удалить_объект_сохранив_XY
C - - - - - 0x02645F 09:A44F: 68        PLA
C - - - - - 0x026460 09:A450: 99 10 04  STA ram_obj_pos_Y_lo,Y ; 041B 
C - - - - - 0x026463 09:A453: 68        PLA
C - - - - - 0x026464 09:A454: 99 40 04  STA ram_obj_pos_X_lo,Y ; 044B 
C - - - - - 0x026467 09:A457: A9 01     LDA #$01
C - - - - - 0x026469 09:A459: 99 50 05  STA ram_obj_id,Y ; 055B 
C - - - - - 0x02646C 09:A45C: 4C D3 DA  JMP loc_0x03DAE3_удалить_объект



_off011_A45F_31_special_leo_крутилка:
- D 1 - I - 0x02646F 09:A45F: 63 A4     .word ofs_073_A463_00
- D 1 - I - 0x026471 09:A461: 8D A4     .word ofs_073_A48D_01



ofs_073_A463_00:
C - - J - - 0x026473 09:A463: A9 18     LDA #> $18D8
C - - - - - 0x026475 09:A465: A0 D8     LDY #< $18D8
C - - - - - 0x026477 09:A467: 20 75 A4  JSR sub_A475_запись_spd_Y_и_звука_суперки
C - - - - - 0x02647A 09:A46A: A9 0C     LDA #$0C
C - - - - - 0x02647C 09:A46C: 20 1E BA  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
                                        STA ram_04D0_obj,X ; 04D4 04D5 
C - - - - - 0x02647F 09:A46F: A9 80     LDA #$80
C - - - - - 0x026481 09:A471: 9D 80 05  STA ram_0580_obj,X ; 0584 0585 
C - - - - - 0x026484 09:A474: 60        RTS



sub_A475_запись_spd_Y_и_звука_суперки:
loc_A475_запись_spd_Y_и_звука_суперки:
C D 1 - - - 0x026485 09:A475: FE 30 05  INC ram_0530_obj_state,X ; 0534 0535 
C - - - - - 0x026488 09:A478: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A4 04A5 
C - - - - - 0x02648B 09:A47B: 98        TYA
C - - - - - 0x02648C 09:A47C: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B4 04B5 
C - - - - - 0x02648F 09:A47F: A9 80     LDA #$80
C - - - - - 0x026491 09:A481: 9D 60 05  STA ram_obj_timer,X ; 0564 0565 
C - - - - - 0x026494 09:A484: 20 C7 A4  JSR sub_A4C7
C - - - - - 0x026497 09:A487: A9 18     LDA #con_075C_18
C - - - - - 0x026499 09:A489: 4C 94 F6  JMP loc_0x03F6A4_записать_звук
bra_A48C_RTS:
C - - - - - 0x02649C 09:A48C: 60        RTS



sub_A4C7:
C - - - - - 0x0264D7 09:A4C7: 20 36 A3  JSR sub_A336
C - - - - - 0x0264DA 09:A4CA: C0 32     CPY #con_0552_special_raph_сверло
C - - - - - 0x0264DC 09:A4CC: D0 BE     BNE bra_A82E_RTS
; перемещено из банка 16
C - - - - - 0x02E830 0B:A820: 8A        TXA
C - - - - - 0x02E831 0B:A821: 49 05     EOR #$05
C - - - - - 0x02E833 0B:A823: A8        TAY
C - - - - - 0x02E834 0B:A824: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
C - - - - - 0x02E837 0B:A827: A8        TAY
C - - - - - 0x02E838 0B:A828: B9 31 A8  LDA tbl_A831,Y
C - - - - - 0x02E83B 0B:A82B: 9D B0 05  STA ram_05B0_obj_damage,X ; 05B4 05B5 
bra_A82E_RTS:
C - - - - - 0x02E83E 0B:A82E: 4C 17 F6  RTS



tbl_A831:
; перемещено из банка 16
- D 1 - - - 0x02E841 0B:A831: 20        .byte $20   ; 00 con_fighter_leo
- - - - - - 0x02E842 0B:A832: 20        .byte $20   ; 01 con_fighter_raph
- D 1 - - - 0x02E843 0B:A833: 20        .byte $20   ; 02 con_fighter_mike
- - - - - - 0x02E844 0B:A834: 20        .byte $20   ; 03 con_fighter_don
- D 1 - - - 0x02E845 0B:A835: 24        .byte $24   ; 04 con_fighter_casey
- - - - - - 0x02E846 0B:A836: 24        .byte $24   ; 05 con_fighter_hot
- D 1 - - - 0x02E847 0B:A837: 22        .byte $22   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $20   ; 07 con_fighter___leo
                                        .byte $20   ; 08 con_fighter___raph
                                        .byte $20   ; 09 con_fighter___mike
                                        .byte $20   ; 0A con_fighter___don
                                        .byte $24   ; 0B con_fighter___casey
                                        .byte $24   ; 0C con_fighter___hot
                                        .byte $22   ; 0D con_fighter___shred
                                    .endif



ofs_073_A48D_01:
C - - J - - 0x02649D 09:A48D: BD D0 04  LDA ram_04D0_obj,X ; 04D4 04D5 
C - - - - - 0x0264A0 09:A490: F0 0A     BEQ bra_A49C
C - - - - - 0x0264A2 09:A492: DE D0 04  DEC ram_04D0_obj,X ; 04D4 04D5 
C - - - - - 0x0264A5 09:A495: D0 F5     BNE bra_A48C_RTS
C - - - - - 0x0264A7 09:A497: A9 00     LDA #$00
C - - - - - 0x0264A9 09:A499: 9D 80 05  STA ram_0580_obj,X ; 0584 0585 
bra_A49C:
C - - - - - 0x0264AC 09:A49C: BD F0 05  LDA ram_05F0_obj,X ; 05F4 05F5 
C - - - - - 0x0264AF 09:A49F: F0 0B     BEQ bra_A4AC
C - - - - - 0x0264B1 09:A4A1: A9 00     LDA #$00
C - - - - - 0x0264B3 09:A4A3: 9D F0 05  STA ram_05F0_obj,X ; 05F4 05F5 
C - - - - - 0x0264B6 09:A4A6: 99 B0 04  STA ram_obj_spd_Y_lo,Y ; 04B0 04B1 
C - - - - - 0x0264B9 09:A4A9: 99 C0 04  STA ram_obj_hit_state,Y ; 04C0 04C1 
bra_A4AC:
C - - - - - 0x0264BC 09:A4AC: 4C DE A4  JMP loc_A4DE



ofs_075_A4B5_01:
C - - J - - 0x0264C5 09:A4B5: BD 08 04  LDA ram_obj_anim_id + $0C - $04,X ; 040C 040D 
C - - - - - 0x0264C8 09:A4B8: D0 05     BNE bra_A4BF
C - - - - - 0x0264CA 09:A4BA: A9 A7     LDA #$A7
C - - - - - 0x0264CC 09:A4BC: 9D 0C 04  STA ram_obj_pos_Y_lo - $04,X ; 0410 0411 
bra_A4BF:
C - - - - - 0x0264CF 09:A4BF: A9 E5     LDA #$E5
C - - - - - 0x0264D1 09:A4C1: D0 EC     BNE bra_A4AF    ; jmp



ofs_076_A4C3_01:
C - - J - - 0x0264D3 09:A4C3: A9 BE     LDA #$BE
C - - - - - 0x0264D5 09:A4C5: D0 E8     BNE bra_A4AF    ; jmp



ofs_077_A4D7_01:
; C = 0
C - - J - - 0x0264E7 09:A4D7: B9 00 04  LDA ram_obj_anim_id,Y
; A = B1 B2 B3 B4
C - - - - - 0x0264EA 09:A4DA: 69 0E     ADC #$0E
; A = BF C0 C1 C2
bra_A4AF:
loc_A4AF:
C D 1 - - - 0x0264BF 09:A4AF: 20 D4 DE  JSR sub_0x03DEE4
C - - - - - 0x0264C2 09:A4B2: 4C DE A4  JMP loc_A4DE



loc_A4DE:
ofs_074_A4DE_01:
C D 1 J - - 0x0264EE 09:A4DE: BC 20 05  LDY ram_obj_state_hi,X ; 0524 0525 
C - - - - - 0x0264F1 09:A4E1: BD 10 05  LDA ram_obj_flip,X ; 0514 0515 
C - - - - - 0x0264F4 09:A4E4: 20 1A A3  JSR sub_A31A
C - - - - - 0x0264F7 09:A4E7: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x0264FA 09:A4EA: C9 08     CMP #con_plr_state_делает_суперку
C - - - - - 0x0264FC 09:A4EC: D0 0E     BNE bra_A4FC
C - - - - - 0x0264FE 09:A4EE: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x026500 09:A4F0: 29 03     AND #$03
C - - - - - 0x026502 09:A4F2: 09 80     ORA #$80
C - - - - - 0x026504 09:A4F4: 9D 00 05  STA ram_0500_obj,X ; 0504 0505 
C - - - - - 0x026507 09:A4F7: DE 60 05  DEC ram_obj_timer,X ; 0564 0565 
C - - - - - 0x02650A 09:A4FA: D0 42     BNE bra_A53E_RTS
bra_A4FC:
C - - - - - 0x02650C 09:A4FC: 4C 66 A3  JMP loc_0x03DE30_удалить_объекты_перса



_off011_A4FF_32_special_raph_сверло:
- D 1 - I - 0x02650F 09:A4FF: 03 A5     .word ofs_074_A503_00
- D 1 - I - 0x026511 09:A501: DE A4     .word ofs_074_A4DE_01



ofs_074_A503_00:
C - - J - - 0x026513 09:A503: A9 00     LDA #> $00F7
C - - - - - 0x026515 09:A505: A0 F7     LDY #< $00F7
C - - - - - 0x026517 09:A507: 4C 75 A4  JMP loc_A475_запись_spd_Y_и_звука_суперки



_off011_A50A_33_special_mike_ракеты_понизу:
- D 1 - I - 0x02651A 09:A50A: 18 A5     .word ofs_075_A518_00
- D 1 - I - 0x02651C 09:A50C: B5 A4     .word ofs_075_A4B5_01



_off011_A50E_34_special_mike_ракеты_поверху:
- D 1 - I - 0x02651E 09:A50E: 12 A5     .word ofs_076_A512_00
- D 1 - I - 0x026520 09:A510: C3 A4     .word ofs_076_A4C3_01



ofs_076_A512_00:
C - - J - - 0x026522 09:A512: A9 1D     LDA #> $1DCC
C - - - - - 0x026524 09:A514: A0 CC     LDY #< $1DCC
; bzk optimize, заменить на JMP для безопасности
C - - - - - 0x026526 09:A516: D0 0E     BNE bra_A526    ; jmp



ofs_075_A518_00:
C - - J - - 0x026528 09:A518: A9 18     LDA #> $18E8
C - - - - - 0x02652A 09:A51A: A0 E8     LDY #< $18E8
; bzk optimize, заменить на JMP для безопасности
C - - - - - 0x02652C 09:A51C: D0 08     BNE bra_A526    ; jmp



_off011_A51E_35_special_don_пила_вращение:
- D 1 - I - 0x02652E 09:A51E: 22 A5     .word ofs_077_A522_00
- D 1 - I - 0x026530 09:A520: D7 A4     .word ofs_077_A4D7_01



ofs_077_A522_00:
C - - J - - 0x026532 09:A522: A9 00     LDA #> $00F0
C - - - - - 0x026534 09:A524: A0 F0     LDY #< $00F0
bra_A526:
C - - - - - 0x026536 09:A526: 4C 75 A4  JMP loc_A475_запись_spd_Y_и_звука_суперки



_off011_A529_36_special_shred_мясо:
- D 1 - I - 0x026539 09:A529: 2D A5     .word ofs_078_A52D_00
- D 1 - I - 0x02653B 09:A52B: 3F A5     .word ofs_078_A53F_01



ofs_078_A52D_00:
C - - J - - 0x02653D 09:A52D: A9 20     LDA #> $20D8
C - - - - - 0x02653F 09:A52F: A0 D8     LDY #< $20D8
C - - - - - 0x026541 09:A531: 20 75 A4  JSR sub_A475_запись_spd_Y_и_звука_суперки
sub_A534:
C - - - - - 0x026544 09:A534: A9 04     LDA #$04
C - - - - - 0x026546 09:A536: 9D B0 05  STA ram_05B0_obj_damage,X ; 05B4 05B5 
C - - - - - 0x026549 09:A539: A9 03     LDA #$03
C - - - - - 0x02654B 09:A53B: 9D C0 04  STA ram_obj_hit_state,X ; 04C4 04C5 
bra_A53E_RTS:
C - - - - - 0x02654E 09:A53E: 60        RTS



ofs_078_A53F_01:
C - - J - - 0x02654F 09:A53F: BC 20 05  LDY ram_obj_state_hi,X ; 0524 0525 
C - - - - - 0x026552 09:A542: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x026555 09:A545: C9 08     CMP #con_plr_state_делает_суперку
C - - - - - 0x026557 09:A547: D0 32     BNE bra_A57B
C - - - - - 0x026559 09:A549: BD 10 05  LDA ram_obj_flip,X ; 0514 0515 
C - - - - - 0x02655C 09:A54C: 20 1A A3  JSR sub_A31A
C - - - - - 0x02655F 09:A54F: DE C0 04  DEC ram_obj_hit_state,X ; 04C4 04C5 
C - - - - - 0x026562 09:A552: 10 EA     BPL bra_A53E_RTS
C - - - - - 0x026564 09:A554: DE D0 04  DEC ram_04D0_obj,X ; 04D4 04D5 
C - - - - - 0x026567 09:A557: BD D0 04  LDA ram_04D0_obj,X ; 04D4 04D5 
C - - - - - 0x02656A 09:A55A: 4A        LSR
C - - - - - 0x02656B 09:A55B: 90 05     BCC bra_A562
C - - - - - 0x02656D 09:A55D: A9 18     LDA #con_075C_18
C - - - - - 0x02656F 09:A55F: 20 94 F6  JSR sub_0x03F6A4_записать_звук
bra_A562:
C - - - - - 0x026572 09:A562: BD D0 04  LDA ram_04D0_obj,X ; 04D4 04D5 
C - - - - - 0x026575 09:A565: 29 03     AND #$03
C - - - - - 0x026577 09:A567: A8        TAY
C - - - - - 0x026578 09:A568: A9 22     LDA #$22
C - - - - - 0x02657A 09:A56A: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A4 04A5 
C - - - - - 0x02657D 09:A56D: B9 DE A7  LDA tbl_A7DE_spd_Y_lo,Y
C - - - - - 0x026580 09:A570: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B4 04B5 
C - - - - - 0x026583 09:A573: 20 34 A5  JSR sub_A534
C - - - - - 0x026586 09:A576: A9 06     LDA #con_075C_06
C - - - - - 0x026588 09:A578: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_A57B:
C - - - - - 0x02658B 09:A57B: 4C 66 A3  JMP loc_0x03DE30_удалить_объекты_перса



_off011_A57E_37_special_casey_клюшка:
- D 1 - I - 0x02658E 09:A57E: 82 A5     .word ofs_079_A582_00
- D 1 - I - 0x026590 09:A580: 8F A5     .word ofs_079_A58F_01



ofs_079_A582_00:
C - - J - - 0x026592 09:A582: A9 1E     LDA #> $1ED8
C - - - - - 0x026594 09:A584: A0 D8     LDY #< $1ED8
C - - - - - 0x026596 09:A586: 20 75 A4  JSR sub_A475_запись_spd_Y_и_звука_суперки
C - - - - - 0x026599 09:A589: A9 10     LDA #$10
C - - - - - 0x02659B 09:A58B: 9D 60 05  STA ram_obj_timer,X ; 0564 0565 
C - - - - - 0x02659E 09:A58E: 60        RTS



ofs_079_A58F_01:
C - - J - - 0x02659F 09:A58F: BC 20 05  LDY ram_obj_state_hi,X ; 0524 0525 
C - - - - - 0x0265A2 09:A592: B9 00 04  LDA ram_obj_anim_id,Y ; 0400 0401 
C - - - - - 0x0265A5 09:A595: C9 AE     CMP #$AE
C - - - - - 0x0265A7 09:A597: F0 07     BEQ bra_A5A0
C - - - - - 0x0265A9 09:A599: C9 AD     CMP #$AD
C - - - - - 0x0265AB 09:A59B: D0 06     BNE bra_A5A3
C - - - - - 0x0265AD 09:A59D: A9 B6     LDA #$B6
C - - - - - 0x0265AF 09:A59F: 2C        .byte $2C   ; BIT
bra_A5A0:
C - - - - - 0x0265B0 09:A5A0: A9 B7     LDA #$B7
C - - - - - 0x0265B2 09:A5A2: 2C        .byte $2C   ; BIT
bra_A5A3:
C - - - - - 0x0265B3 09:A5A3: A9 00     LDA #$00
C - - - - - 0x0265B5 09:A5A5: 4C AF A4  JMP loc_A4AF



_off011_A5A8_2F_special_hot_огонь:
- D 1 - I - 0x0265B8 09:A5A8: AC A5     .word ofs_080_A5AC_00
- D 1 - I - 0x0265BA 09:A5AA: D9 A5     .word ofs_080_A5D9_01



ofs_080_A5AC_00:
C - - J - - 0x0265BC 09:A5AC: A9 2B     LDA #> $2BF8
C - - - - - 0x0265BE 09:A5AE: A0 F8     LDY #< $2BF8
C - - - - - 0x0265C0 09:A5B0: 20 75 A4  JSR sub_A475_запись_spd_Y_и_звука_суперки
C - - - - - 0x0265C3 09:A5B3: A9 A8     LDA #$A8
C - - - - - 0x0265C5 09:A5B5: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0414 0415 
C - - - - - 0x0265C8 09:A5B8: A9 28     LDA #$28
C - - - - - 0x0265CA 09:A5BA: 9D B0 05  STA ram_05B0_obj_damage,X ; 05B4 05B5 
C - - - - - 0x0265CD 09:A5BD: A9 80     LDA #$80
C - - - - - 0x0265CF 09:A5BF: 9D E0 05  STA ram_05E0_obj,X ; 05E4 05E5 
C - - - - - 0x0265D2 09:A5C2: A9 04     LDA #$04
C - - - - - 0x0265D4 09:A5C4: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D4 05D5 
C - - - - - 0x0265D7 09:A5C7: A9 07     LDA #$07
C - - - - - 0x0265D9 09:A5C9: 9D 60 05  STA ram_obj_timer,X ; 0564 0565 
C - - - - - 0x0265DC 09:A5CC: A9 C0     LDA #$C0
C - - - - - 0x0265DE 09:A5CE: 9D 80 05  STA ram_0580_obj,X ; 0584 0585 
C - - - - - 0x0265E1 09:A5D1: A9 1B     LDA #con_sfx_огонь_хота
C - - - - - 0x0265E3 09:A5D3: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x0265E6 09:A5D6: 4C 13 A3  JMP loc_A313



ofs_080_A5D9_01:
C - - J - - 0x0265E9 09:A5D9: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x0265EC 09:A5DC: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D4 05D5 
C - - - - - 0x0265EF 09:A5DF: 4A        LSR
C - - - - - 0x0265F0 09:A5E0: D0 08     BNE bra_A5EA
C - - - - - 0x0265F2 09:A5E2: A9 C0     LDA #$C0
C - - - - - 0x0265F4 09:A5E4: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x0265F7 09:A5E7: 20 65 DB  JSR sub_0x03DB75_добавить_spd_X_к_pos_X
bra_A5EA:
C - - - - - 0x0265FA 09:A5EA: DE 60 05  DEC ram_obj_timer,X ; 0564 0565 
C - - - - - 0x0265FD 09:A5ED: 10 0D     BPL bra_A5FC
C - - - - - 0x0265FF 09:A5EF: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D4 05D5 
C - - - - - 0x026602 09:A5F2: 30 87     BMI bra_A57B
C - - - - - 0x026604 09:A5F4: A9 06     LDA #$06
C - - - - - 0x026606 09:A5F6: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x026609 09:A5F9: 9D 60 05  STA ram_obj_timer,X ; 0564 0565 
bra_A5FC:
C - - - - - 0x02660C 09:A5FC: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D4 05D5 
C - - - - - 0x02660F 09:A5FF: B9 1B A8  LDA tbl_A81B,Y
C - - - - - 0x026612 09:A602: 9D 00 04  STA ram_obj_anim_id,X ; 0404 0405 
C - - - - - 0x026615 09:A605: C9 AB     CMP #$AB
C - - - - - 0x026617 09:A607: D0 05     BNE bra_A60E
C - - - - - 0x026619 09:A609: A9 40     LDA #$40
C - - - - - 0x02661B 09:A60B: 9D 80 05  STA ram_0580_obj,X ; 0584 0585 
bra_A60E:
C - - - - - 0x02661E 09:A60E: B9 20 A8  LDA tbl_A820,Y
C - - - - - 0x026621 09:A611: 9D 70 05  STA ram_0570_obj,X ; 0574 0575 
C - - - - - 0x026624 09:A614: BC 20 05  LDY ram_obj_state_hi,X ; 0524 0525 
C - - - - - 0x026627 09:A617: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x02662A 09:A61A: C9 08     CMP #con_plr_state_делает_суперку
C - - - - - 0x02662C 09:A61C: D0 1A     BNE bra_A638
C - - - - - 0x02662E 09:A61E: 60        RTS



_off011_A61F_38_special_don_пила_подкат:
- D 1 - I - 0x02662F 09:A61F: 23 A6     .word ofs_081_A623_00
- D 1 - I - 0x026631 09:A621: 30 A6     .word ofs_081_A630_01



ofs_081_A623_00:
C - - J - - 0x026633 09:A623: A9 18     LDA #> $18FC
C - - - - - 0x026635 09:A625: A0 FC     LDY #< $18FC
C - - - - - 0x026637 09:A627: 20 75 A4  JSR sub_A475_запись_spd_Y_и_звука_суперки
C - - - - - 0x02663A 09:A62A: A9 10     LDA #$10
C - - - - - 0x02663C 09:A62C: 9D 60 05  STA ram_obj_timer,X ; 0564 0565 
bra_A62F_RTS:
C - - - - - 0x02663F 09:A62F: 60        RTS



ofs_081_A630_01:
C - - J - - 0x026640 09:A630: 20 13 A3  JSR sub_A313
sub_A633:
C - - - - - 0x026643 09:A633: DE 60 05  DEC ram_obj_timer,X ; 0564 0565 
C - - - - - 0x026646 09:A636: 10 F7     BPL bra_A62F_RTS
bra_A638:
C - - - - - 0x026648 09:A638: 4C 66 A3  JMP loc_0x03DE30_удалить_объекты_перса



_off011_A63B_39_special_casey_песок:
- D 1 - I - 0x02664B 09:A63B: 41 A6     .word ofs_082_A641_00
- D 1 - I - 0x02664D 09:A63D: 65 A6     .word ofs_082_A665_01
- D 1 - I - 0x02664F 09:A63F: B2 A6     .word ofs_082_A6B2_02



ofs_082_A641_00:
C - - J - - 0x026651 09:A641: A9 00     LDA #> $0000
C - - - - - 0x026653 09:A643: A8        LDY #< $0000
C - - - - - 0x026654 09:A644: 20 75 A4  JSR sub_A475_запись_spd_Y_и_звука_суперки
C - - - - - 0x026657 09:A647: 20 13 A3  JSR sub_A313
C - - - - - 0x02665C 09:A64C: 20 39 9E  JSR sub_9E39
C - - - - - 0x02665F 09:A64F: 9D 60 05  STA ram_obj_timer,X ; 0564 0565 
C - - - - - 0x026662 09:A652: A9 90     LDA #$90
C - - - - - 0x026664 09:A654: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0414 0415 
C - - - - - 0x026667 09:A657: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x02666A 09:A65A: A9 00     LDA #$00
C - - - - - 0x02666C 09:A65C: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B4 04B5 
C - - - - - 0x02666F 09:A65F: A9 80     LDA #$80
C - - - - - 0x026671 09:A661: 9D E0 05  STA ram_05E0_obj,X ; 05E4 05E5 
bra_A664_RTS:
C - - - - - 0x026674 09:A664: 60        RTS



ofs_082_A665_01:
C - - J - - 0x026675 09:A665: AD 26 01  LDA ram_option_speed
C - - - - - 0x026678 09:A668: 20 6F AD  JSR sub_AD6F
C - - - - - 0x02667B 09:A66B: A9 08     LDA #$08
C - - - - - 0x02667D 09:A66D: BC 9C 04  LDY ram_obj_spd_Y_hi - $04,X ; 04A0 04A1 
C - - - - - 0x026680 09:A670: 30 02     BMI bra_A674
C - - - - - 0x026682 09:A672: A9 10     LDA #$10
bra_A674:
C - - - - - 0x026684 09:A674: 18        CLC
C - - - - - 0x026685 09:A675: 7D B0 04  ADC ram_obj_spd_Y_lo,X ; 04B4 04B5 
C - - - - - 0x026688 09:A678: 69 00     ADC #$00
C - - - - - 0x02668A 09:A67A: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B4 04B5 
C - - - - - 0x02668D 09:A67D: 8A        TXA
C - - - - - 0x02668E 09:A67E: 49 01     EOR #$01
C - - - - - 0x026690 09:A680: 29 01     AND #$01
C - - - - - 0x026692 09:A682: A8        TAY
C - - - - - 0x026693 09:A683: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x026696 09:A686: C9 03     CMP #con_plr_state_получает_урон
C - - - - - 0x026698 09:A688: D0 12     BNE bra_A69C
C - - - - - 0x02669A 09:A68A: B9 C0 04  LDA ram_obj_hit_state,Y ; 04C0 04C1 
C - - - - - 0x02669D 09:A68D: C9 08     CMP #$08
C - - - - - 0x02669F 09:A68F: D0 0B     BNE bra_A69C
C - - - - - 0x0266A1 09:A691: FE 30 05  INC ram_0530_obj_state,X ; 0534 
C - - - - - 0x0266A4 09:A694: A9 3C     LDA #$3C
C - - - - - 0x0266A6 09:A696: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x0266A9 09:A699: 9D 60 05  STA ram_obj_timer,X ; 0564 
bra_A69C:
C - - - - - 0x0266AC 09:A69C: 20 65 DB  JSR sub_0x03DB75_добавить_spd_X_к_pos_X
C - - - - - 0x0266AF 09:A69F: A0 18     LDY #con_D0B3_песок_казея
C - - - - - 0x0266B1 09:A6A1: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x0266B4 09:A6A4: 20 33 A6  JSR sub_A633
C - - - - - 0x0266B7 09:A6A7: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x0266B9 09:A6A9: 29 07     AND #$07
C - - - - - 0x0266BB 09:A6AB: D0 B7     BNE bra_A664_RTS
C - - - - - 0x0266BD 09:A6AD: A9 1A     LDA #con_sfx_полет_песка
C - - - - - 0x0266BF 09:A6AF: 4C 94 F6  JMP loc_0x03F6A4_записать_звук



ofs_082_A6B2_02:
C - - J - - 0x0266C2 09:A6B2: 8A        TXA
C - - - - - 0x0266C3 09:A6B3: 49 01     EOR #$01
C - - - - - 0x0266C5 09:A6B5: 29 01     AND #$01
C - - - - - 0x0266C7 09:A6B7: A8        TAY
C - - - - - 0x0266C8 09:A6B8: B9 8E 00  LDA ram_btn_press,Y ; 008F 
C - - - - - 0x0266CB 09:A6BB: F0 09     BEQ bra_A6C6
C - - - - - 0x0266CD 09:A6BD: BD 60 05  LDA ram_obj_timer,X ; 0564 
C - - - - - 0x0266D0 09:A6C0: 38        SEC
C - - - - - 0x0266D1 09:A6C1: E9 01     SBC #$01
C - - - - - 0x0266D3 09:A6C3: 9D 60 05  STA ram_obj_timer,X ; 0564 
bra_A6C6:
C - - - - - 0x0266D6 09:A6C6: 38        SEC
C - - - - - 0x0266D7 09:A6C7: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0444 
C - - - - - 0x0266DA 09:A6CA: F9 40 04  SBC ram_obj_pos_X_lo,Y ; 0441 
C - - - - - 0x0266DD 09:A6CD: F0 06     BEQ bra_A6D5
C - - - - - 0x0266DF 09:A6CF: A9 FF     LDA #$FF
C - - - - - 0x0266E1 09:A6D1: B0 02     BCS bra_A6D5
C - - - - - 0x0266E3 09:A6D3: A9 01     LDA #$01
bra_A6D5:
C - - - - - 0x0266E5 09:A6D5: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0484 
C - - - - - 0x0266E8 09:A6D8: A9 00     LDA #$00
C - - - - - 0x0266EA 09:A6DA: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0494 
C - - - - - 0x0266ED 09:A6DD: F0 BD     BEQ bra_A69C    ; jmp



tbl_A76C_id_хёртбокса_атаки:
- D 1 - - - 0x02677C 09:A76C: 02        .byte $02   ; 01 con_0552_черепаха_рука_дальняя
- D 1 - - - 0x02677D 09:A76D: 02        .byte $02   ; 02 con_0552_черепаха_нога_ближняя
- D 1 - - - 0x02677E 09:A76E: 02        .byte $02   ; 03 con_0552_черепаха_рука_в_воздухе
- D 1 - - - 0x02677F 09:A76F: 20        .byte $20   ; 04 con_0552_черепаха_нога_в_воздухе
- D 1 - - - 0x026780 09:A770: 02        .byte $02   ; 05 con_0552_черепаха_рука_сидя
- D 1 - - - 0x026781 09:A771: 02        .byte $02   ; 06 con_0552_черепаха_нога_сидя_обычная
- D 1 - - - 0x026782 09:A772: 02        .byte $02   ; 07 con_0552_черепаха_рука_ближняя
- D 1 - - - 0x026783 09:A773: 02        .byte $02   ; 08 con_0552_черепаха_нога_дальняя_обычная
- D 1 - - - 0x026784 09:A774: 02        .byte $02   ; 09 con_0552_черепаха_нога_дальняя_raph
- D 1 - - - 0x026785 09:A775: 02        .byte $02   ; 0A con_0552_черепаха_нога_сидя_leo
- D 1 - - - 0x026786 09:A776: 1B        .byte $1B   ; 0B con_0552_черепаха_деш_локтем
- D 1 - - - 0x026787 09:A777: 02        .byte $02   ; 0C con_0552_черепаха_нога_антиэйр
- D 1 - - - 0x026788 09:A778: 02        .byte $02   ; 0D con_0552_черепаха_рука_антиэйр
- D 1 - - - 0x026789 09:A779: 02        .byte $02   ; 0E con_0552_черепаха_деш_ногой
- D 1 - - - 0x02678A 09:A77A: 02        .byte $02   ; 0F con_0552_casey_рука_дальняя
- D 1 - - - 0x02678B 09:A77B: 02        .byte $02   ; 10 con_0552_casey_нога_ближняя
- D 1 - - - 0x02678C 09:A77C: 02        .byte $02   ; 11 con_0552_casey_рука_сидя
- D 1 - - - 0x02678D 09:A77D: 02        .byte $02   ; 12 con_0552_casey_нога_сидя
- D 1 - - - 0x02678E 09:A77E: 04        .byte $04   ; 13 con_0552_casey_рука_ближняя
- D 1 - - - 0x02678F 09:A77F: 02        .byte $02   ; 14 con_0552_casey_нога_дальняя
- D 1 - - - 0x026790 09:A780: 04        .byte $04   ; 15 con_0552_casey_рука_антиэйр
- D 1 - - - 0x026791 09:A781: 02        .byte $02   ; 16 con_0552_casey_рука_в_воздухе
- D 1 - - - 0x026792 09:A782: 20        .byte $20   ; 17 con_0552_casey_нога_в_воздухе
- D 1 - - - 0x026793 09:A783: 17        .byte $17   ; 18 con_0552_casey_нога_антиэйр
- D 1 - - - 0x026794 09:A784: 02        .byte $02   ; 19 con_0552_hot_рука_ближняя
- D 1 - - - 0x026795 09:A785: 02        .byte $02   ; 1A con_0552_hot_рука_дальняя
- D 1 - - - 0x026796 09:A786: 02        .byte $02   ; 1B con_0552_hot_рука_в_воздухе
- D 1 - - - 0x026797 09:A787: 02        .byte $02   ; 1C con_0552_hot_рука_сидя
- D 1 - - - 0x026798 09:A788: 02        .byte $02   ; 1D con_0552_hot_нога_ближняя
- D 1 - - - 0x026799 09:A789: 02        .byte $02   ; 1E con_0552_hot_нога_дальняя
- D 1 - - - 0x02679A 09:A78A: 22        .byte $22   ; 1F con_0552_hot_нога_в_воздухе
- D 1 - - - 0x02679B 09:A78B: 02        .byte $02   ; 20 con_0552_hot_нога_сидя
- D 1 - - - 0x02679C 09:A78C: 0B        .byte $0B   ; 21 con_0552_hot_бабочка
- D 1 - - - 0x02679D 09:A78D: 1A        .byte $1A   ; 22 con_0552_hot_рука_антиэйр
- D 1 - - - 0x02679E 09:A78E: 1D        .byte $1D   ; 23 con_0552_hot_нога_антиэйр
- D 1 - - - 0x02679F 09:A78F: 02        .byte $02   ; 24 con_0552_shred_рука_ближняя
- D 1 - - - 0x0267A0 09:A790: 02        .byte $02   ; 25 con_0552_shred_рука_средняя
- D 1 - - - 0x0267A1 09:A791: 02        .byte $02   ; 26 con_0552_shred_рука_дальняя
- D 1 - - - 0x0267A2 09:A792: 02        .byte $02   ; 27 con_0552_shred_рука_антиэйр
- D 1 - - - 0x0267A3 09:A793: 02        .byte $02   ; 28 con_0552_shred_рука_в_воздухе
- D 1 - - - 0x0267A4 09:A794: 02        .byte $02   ; 29 con_0552_shred_рука_сидя
- D 1 - - - 0x0267A5 09:A795: 02        .byte $02   ; 2A con_0552_shred_нога_ближняя
- D 1 - - - 0x0267A6 09:A796: 20        .byte $20   ; 2B con_0552_shred_нога_дальняя
- D 1 - - - 0x0267A7 09:A797: 20        .byte $20   ; 2C con_0552_shred_нога_в_воздухе
- D 1 - - - 0x0267A8 09:A798: 1A        .byte $1A   ; 2D con_0552_shred_нога_сидя
- D 1 - - - 0x0267A9 09:A799: 21        .byte $21   ; 2E con_0552_shred_нога_антиэйр
                                        .byte $02   ; 2F con_0552_hot_ручка_быстрая
                                        .byte $00   ; 30 rezerv
                                        .byte $00   ; 31 rezerv
                                        .byte $00   ; 32 rezerv
                                        .byte $00   ; 33 rezerv
                                        .byte $00   ; 34 rezerv
                                        .byte $00   ; 35 rezerv
                                        .byte $00   ; 36 rezerv
                                        .byte $00   ; 37 rezerv
                                        .byte $00   ; 38 rezerv
                                        .byte $00   ; 39 rezerv
                                        .byte $00   ; 3A rezerv
                                        .byte $00   ; 3B rezerv
                                        .byte $00   ; 3C rezerv
                                        .byte $00   ; 3D rezerv
                                        .byte $00   ; 3E rezerv
- D 1 - - - 0x0267AA 09:A79A: 02        .byte $02   ; 3F con_0552_special_hot_огонь
- D 1 - - - 0x0267AB 09:A79B: 02        .byte $02   ; 40 con_0552_special_shred_волна
- D 1 - - - 0x0267AC 09:A79C: 04        .byte $04   ; 41 con_0552_special_leo_крутилка
- D 1 - - - 0x0267AD 09:A79D: 13        .byte $13   ; 42 con_0552_special_raph_сверло
- D 1 - - - 0x0267AE 09:A79E: 04        .byte $04   ; 43 con_0552_special_mike_ракеты_понизу
- D 1 - - - 0x0267AF 09:A79F: 03        .byte $03   ; 44 con_0552_special_mike_ракеты_поверху
- D 1 - - - 0x0267B0 09:A7A0: 15        .byte $15   ; 45 con_0552_special_don_пила_вращение
- D 1 - - - 0x0267B1 09:A7A1: 0E        .byte $0E   ; 46 con_0552_special_shred_мясо
- D 1 - - - 0x0267B2 09:A7A2: 05        .byte $05   ; 47 con_0552_special_casey_клюшка
- D 1 - - - 0x0267B3 09:A7A3: 02        .byte $02   ; 48 con_0552_special_don_пила_подкат
- D 1 - - - 0x0267B4 09:A7A4: 1F        .byte $1F   ; 49 con_0552_special_casey_песок



tbl_A7A5_урон_от_ударов:
- D 1 - - - 0x0267B5 09:A7A5: 0D        .byte $0D   ; 01 con_0552_черепаха_рука_дальняя
- D 1 - - - 0x0267B6 09:A7A6: 0B        .byte $0B   ; 02 con_0552_черепаха_нога_ближняя
- D 1 - - - 0x0267B7 09:A7A7: 0D        .byte $0D   ; 03 con_0552_черепаха_рука_в_воздухе
- D 1 - - - 0x0267B8 09:A7A8: 11        .byte $12   ; 04 con_0552_черепаха_нога_в_воздухе
- D 1 - - - 0x0267B9 09:A7A9: 06        .byte $06   ; 05 con_0552_черепаха_рука_сидя
- D 1 - - - 0x0267BA 09:A7AA: 07        .byte $07   ; 06 con_0552_черепаха_нога_сидя_обычная
- D 1 - - - 0x0267BB 09:A7AB: 07        .byte $07   ; 07 con_0552_черепаха_рука_ближняя
- D 1 - - - 0x0267BC 09:A7AC: 11        .byte $12   ; 08 con_0552_черепаха_нога_дальняя_обычная
- D 1 - - - 0x0267BD 09:A7AD: 15        .byte $15   ; 09 con_0552_черепаха_нога_дальняя_raph
- D 1 - - - 0x0267BE 09:A7AE: 06        .byte $06   ; 0A con_0552_черепаха_нога_сидя_leo
- D 1 - - - 0x0267BF 09:A7AF: 14        .byte $14   ; 0B con_0552_черепаха_деш_локтем
- D 1 - - - 0x0267C0 09:A7B0: 0F        .byte $0F   ; 0C con_0552_черепаха_нога_антиэйр
- D 1 - - - 0x0267C1 09:A7B1: 0D        .byte $0D   ; 0D con_0552_черепаха_рука_антиэйр
- D 1 - - - 0x0267C2 09:A7B2: 12        .byte $12   ; 0E con_0552_черепаха_деш_ногой
- D 1 - - - 0x0267C3 09:A7B3: 09        .byte $09   ; 0F con_0552_casey_рука_дальняя
- D 1 - - - 0x0267C4 09:A7B4: 0C        .byte $0C   ; 10 con_0552_casey_нога_ближняя
- D 1 - - - 0x0267C5 09:A7B5: 06        .byte $06   ; 11 con_0552_casey_рука_сидя
- D 1 - - - 0x0267C6 09:A7B6: 08        .byte $08   ; 12 con_0552_casey_нога_сидя
- D 1 - - - 0x0267C7 09:A7B7: 0E        .byte $0E   ; 13 con_0552_casey_рука_ближняя
- D 1 - - - 0x0267C8 09:A7B8: 12        .byte $13   ; 14 con_0552_casey_нога_дальняя
- D 1 - - - 0x0267C9 09:A7B9: 0E        .byte $0E   ; 15 con_0552_casey_рука_антиэйр
- D 1 - - - 0x0267CA 09:A7BA: 0D        .byte $0D   ; 16 con_0552_casey_рука_в_воздухе
- D 1 - - - 0x0267CB 09:A7BB: 12        .byte $13   ; 17 con_0552_casey_нога_в_воздухе
- D 1 - - - 0x0267CC 09:A7BC: 11        .byte $11   ; 18 con_0552_casey_нога_антиэйр
- D 1 - - - 0x0267CD 09:A7BD: 0D        .byte $0D   ; 19 con_0552_hot_рука_ближняя
- D 1 - - - 0x0267CE 09:A7BE: 10        .byte $16   ; 1A con_0552_hot_рука_дальняя
- D 1 - - - 0x0267CF 09:A7BF: 14        .byte $14   ; 1B con_0552_hot_рука_в_воздухе
- D 1 - - - 0x0267D0 09:A7C0: 0D        .byte $0D   ; 1C con_0552_hot_рука_сидя
- D 1 - - - 0x0267D1 09:A7C1: 11        .byte $11   ; 1D con_0552_hot_нога_ближняя
- D 1 - - - 0x0267D2 09:A7C2: 1C        .byte $1C   ; 1E con_0552_hot_нога_дальняя
- D 1 - - - 0x0267D3 09:A7C3: 19        .byte $19   ; 1F con_0552_hot_нога_в_воздухе
- D 1 - - - 0x0267D4 09:A7C4: 0F        .byte $0F   ; 20 con_0552_hot_нога_сидя
- D 1 - - - 0x0267D5 09:A7C5: 21        .byte $21   ; 21 con_0552_hot_бабочка
- D 1 - - - 0x0267D6 09:A7C6: 16        .byte $16   ; 22 con_0552_hot_рука_антиэйр
- D 1 - - - 0x0267D7 09:A7C7: 15        .byte $15   ; 23 con_0552_hot_нога_антиэйр
- D 1 - - - 0x0267D8 09:A7C8: 0C        .byte $0C   ; 24 con_0552_shred_рука_ближняя
- D 1 - - - 0x0267D9 09:A7C9: 08        .byte $08   ; 25 con_0552_shred_рука_средняя
- D 1 - - - 0x0267DA 09:A7CA: 13        .byte $13   ; 26 con_0552_shred_рука_дальняя
- D 1 - - - 0x0267DB 09:A7CB: 0F        .byte $0F   ; 27 con_0552_shred_рука_антиэйр
- D 1 - - - 0x0267DC 09:A7CC: 14        .byte $14   ; 28 con_0552_shred_рука_в_воздухе
- D 1 - - - 0x0267DD 09:A7CD: 09        .byte $09   ; 29 con_0552_shred_рука_сидя
- D 1 - - - 0x0267DE 09:A7CE: 10        .byte $10   ; 2A con_0552_shred_нога_ближняя
- D 1 - - - 0x0267DF 09:A7CF: 1C        .byte $1C   ; 2B con_0552_shred_нога_дальняя
- D 1 - - - 0x0267E0 09:A7D0: 15        .byte $15   ; 2C con_0552_shred_нога_в_воздухе
- D 1 - - - 0x0267E1 09:A7D1: 0C        .byte $0C   ; 2D con_0552_shred_нога_сидя
- D 1 - - - 0x0267E2 09:A7D2: 16        .byte $16   ; 2E con_0552_shred_нога_антиэйр
                                        .byte $0B   ; 2F con_0552_hot_ручка_быстрая
                                        .byte $00   ; 30 rezerv
                                        .byte $00   ; 31 rezerv
                                        .byte $00   ; 32 rezerv
                                        .byte $00   ; 33 rezerv
                                        .byte $00   ; 34 rezerv
                                        .byte $00   ; 35 rezerv
                                        .byte $00   ; 36 rezerv
                                        .byte $00   ; 37 rezerv
                                        .byte $00   ; 38 rezerv
                                        .byte $00   ; 39 rezerv
                                        .byte $00   ; 3A rezerv
                                        .byte $00   ; 3B rezerv
                                        .byte $00   ; 3C rezerv
                                        .byte $00   ; 3D rezerv
                                        .byte $00   ; 3E rezerv
- D 1 - - - 0x0267E3 09:A7D3: 38        .byte $38   ; 3F con_0552_special_hot_огонь
- D 1 - - - 0x0267E4 09:A7D4: 38        .byte $38   ; 40 con_0552_special_shred_волна
- D 1 - - - 0x0267E5 09:A7D5: 15        .byte $15   ; 41 con_0552_special_leo_крутилка
- D 1 - - - 0x0267E6 09:A7D6: 20        .byte $20   ; 42 con_0552_special_raph_сверло
- D 1 - - - 0x0267E7 09:A7D7: 22        .byte $22   ; 43 con_0552_special_mike_ракеты_понизу
- D 1 - - - 0x0267E8 09:A7D8: 22        .byte $22   ; 44 con_0552_special_mike_ракеты_поверху
- D 1 - - - 0x0267E9 09:A7D9: 19        .byte $19   ; 45 con_0552_special_don_пила_вращение
- D 1 - - - 0x0267EA 09:A7DA: 02        .byte $02   ; 46 con_0552_special_shred_мясо
- D 1 - - - 0x0267EB 09:A7DB: 2B        .byte $2B   ; 47 con_0552_special_casey_клюшка
- D 1 - - - 0x0267EC 09:A7DC: 19        .byte $19   ; 48 con_0552_special_don_пила_подкат
- D 1 - - - 0x0267ED 09:A7DD: 01        .byte $01   ; 49 con_0552_special_casey_песок



tbl_A7DE_spd_Y_lo:
- D 1 - - - 0x0267EE 09:A7DE: D6        .byte < $22D6   ; 00
- D 1 - - - 0x0267EF 09:A7DF: D8        .byte < $22D8   ; 01
- D 1 - - - 0x0267F0 09:A7E0: D5        .byte < $22D5   ; 02
- D 1 - - - 0x0267F1 09:A7E1: DC        .byte < $22DC   ; 03



tbl_A7E2_приоритеты_атак:
- D 1 - - - 0x0267F2 09:A7E2: 03        .byte $03   ; 01 con_0552_черепаха_рука_дальняя
- D 1 - - - 0x0267F3 09:A7E3: 04        .byte $04   ; 02 con_0552_черепаха_нога_ближняя
- D 1 - - - 0x0267F4 09:A7E4: 01        .byte $01   ; 03 con_0552_черепаха_рука_в_воздухе
- D 1 - - - 0x0267F5 09:A7E5: 01        .byte $01   ; 04 con_0552_черепаха_нога_в_воздухе
- D 1 - - - 0x0267F6 09:A7E6: 04        .byte $04   ; 05 con_0552_черепаха_рука_сидя
- D 1 - - - 0x0267F7 09:A7E7: 04        .byte $04   ; 06 con_0552_черепаха_нога_сидя_обычная
- D 1 - - - 0x0267F8 09:A7E8: 04        .byte $04   ; 07 con_0552_черепаха_рука_ближняя
- D 1 - - - 0x0267F9 09:A7E9: 03        .byte $03   ; 08 con_0552_черепаха_нога_дальняя_обычная
- D 1 - - - 0x0267FA 09:A7EA: 03        .byte $03   ; 09 con_0552_черепаха_нога_дальняя_raph
- D 1 - - - 0x0267FB 09:A7EB: 01        .byte $01   ; 0A con_0552_черепаха_нога_сидя_leo
- D 1 - - - 0x0267FC 09:A7EC: 01        .byte $01   ; 0B con_0552_черепаха_деш_локтем
- D 1 - - - 0x0267FD 09:A7ED: 01        .byte $01   ; 0C con_0552_черепаха_нога_антиэйр
- D 1 - - - 0x0267FE 09:A7EE: 01        .byte $01   ; 0D con_0552_черепаха_рука_антиэйр
- D 1 - - - 0x0267FF 09:A7EF: 01        .byte $01   ; 0E con_0552_черепаха_деш_ногой
- D 1 - - - 0x026800 09:A7F0: 04        .byte $03   ; 0F con_0552_casey_рука_дальняя
- D 1 - - - 0x026801 09:A7F1: 04        .byte $04   ; 10 con_0552_casey_нога_ближняя
- D 1 - - - 0x026802 09:A7F2: 04        .byte $04   ; 11 con_0552_casey_рука_сидя
- D 1 - - - 0x026803 09:A7F3: 04        .byte $04   ; 12 con_0552_casey_нога_сидя
- D 1 - - - 0x026804 09:A7F4: 03        .byte $03   ; 13 con_0552_casey_рука_ближняя
- D 1 - - - 0x026805 09:A7F5: 03        .byte $03   ; 14 con_0552_casey_нога_дальняя
- D 1 - - - 0x026806 09:A7F6: 01        .byte $01   ; 15 con_0552_casey_рука_антиэйр
- D 1 - - - 0x026807 09:A7F7: 01        .byte $01   ; 16 con_0552_casey_рука_в_воздухе
- D 1 - - - 0x026808 09:A7F8: 01        .byte $01   ; 17 con_0552_casey_нога_в_воздухе
- D 1 - - - 0x026809 09:A7F9: 01        .byte $01   ; 18 con_0552_casey_нога_антиэйр
- D 1 - - - 0x02680A 09:A7FA: 04        .byte $04   ; 19 con_0552_hot_рука_ближняя
- D 1 - - - 0x02680B 09:A7FB: 03        .byte $03   ; 1A con_0552_hot_рука_дальняя
- D 1 - - - 0x02680C 09:A7FC: 01        .byte $01   ; 1B con_0552_hot_рука_в_воздухе
- D 1 - - - 0x02680D 09:A7FD: 04        .byte $04   ; 1C con_0552_hot_рука_сидя
- D 1 - - - 0x02680E 09:A7FE: 04        .byte $04   ; 1D con_0552_hot_нога_ближняя
- D 1 - - - 0x02680F 09:A7FF: 03        .byte $03   ; 1E con_0552_hot_нога_дальняя
- D 1 - - - 0x026810 09:A800: 01        .byte $01   ; 1F con_0552_hot_нога_в_воздухе
- D 1 - - - 0x026811 09:A801: 04        .byte $04   ; 20 con_0552_hot_нога_сидя
- D 1 - - - 0x026812 09:A802: 02        .byte $02   ; 21 con_0552_hot_бабочка
- D 1 - - - 0x026813 09:A803: 01        .byte $01   ; 22 con_0552_hot_рука_антиэйр
- D 1 - - - 0x026814 09:A804: 01        .byte $01   ; 23 con_0552_hot_нога_антиэйр
- D 1 - - - 0x026815 09:A805: 05        .byte $05   ; 24 con_0552_shred_рука_ближняя
- D 1 - - - 0x026816 09:A806: 04        .byte $04   ; 25 con_0552_shred_рука_средняя
- D 1 - - - 0x026817 09:A807: 03        .byte $03   ; 26 con_0552_shred_рука_дальняя
- D 1 - - - 0x026818 09:A808: 01        .byte $01   ; 27 con_0552_shred_рука_антиэйр
- D 1 - - - 0x026819 09:A809: 01        .byte $01   ; 28 con_0552_shred_рука_в_воздухе
- D 1 - - - 0x02681A 09:A80A: 04        .byte $04   ; 29 con_0552_shred_рука_сидя
- D 1 - - - 0x02681B 09:A80B: 04        .byte $04   ; 2A con_0552_shred_нога_ближняя
- D 1 - - - 0x02681C 09:A80C: 03        .byte $03   ; 2B con_0552_shred_нога_дальняя
- D 1 - - - 0x02681D 09:A80D: 01        .byte $01   ; 2C con_0552_shred_нога_в_воздухе
- D 1 - - - 0x02681E 09:A80E: 04        .byte $04   ; 2D con_0552_shred_нога_сидя
- D 1 - - - 0x02681F 09:A80F: 01        .byte $01   ; 2E con_0552_shred_нога_антиэйр
                                        .byte $03   ; 2F con_0552_hot_ручка_быстрая
                                        .byte $00   ; 30 rezerv
                                        .byte $00   ; 31 rezerv
                                        .byte $00   ; 32 rezerv
                                        .byte $00   ; 33 rezerv
                                        .byte $00   ; 34 rezerv
                                        .byte $00   ; 35 rezerv
                                        .byte $00   ; 36 rezerv
                                        .byte $00   ; 37 rezerv
                                        .byte $00   ; 38 rezerv
                                        .byte $00   ; 39 rezerv
                                        .byte $00   ; 3A rezerv
                                        .byte $00   ; 3B rezerv
                                        .byte $00   ; 3C rezerv
                                        .byte $00   ; 3D rezerv
                                        .byte $00   ; 3E rezerv
- D 1 - - - 0x026820 09:A810: 10        .byte $10   ; 3F con_0552_special_hot_огонь
- D 1 - - - 0x026821 09:A811: 10        .byte $10   ; 40 con_0552_special_shred_волна
- D 1 - - - 0x026822 09:A812: 10        .byte $10   ; 41 con_0552_special_leo_крутилка
- D 1 - - - 0x026823 09:A813: 01        .byte $01   ; 42 con_0552_special_raph_сверло
- D 1 - - - 0x026824 09:A814: 10        .byte $10   ; 43 con_0552_special_mike_ракеты_понизу
- D 1 - - - 0x026825 09:A815: 10        .byte $10   ; 44 con_0552_special_mike_ракеты_поверху
- D 1 - - - 0x026826 09:A816: 10        .byte $10   ; 45 con_0552_special_don_пила_вращение
- D 1 - - - 0x026827 09:A817: 10        .byte $10   ; 46 con_0552_special_shred_мясо
- D 1 - - - 0x026828 09:A818: 10        .byte $10   ; 47 con_0552_special_casey_клюшка
- D 1 - - - 0x026829 09:A819: 10        .byte $10   ; 48 con_0552_special_don_пила_подкат
- D 1 - - - 0x02682A 09:A81A: 10        .byte $10   ; 49 con_0552_special_casey_песок



tbl_A81B:
- D 1 - - - 0x02682B 09:A81B: AE        .byte $AE   ; 00
- D 1 - - - 0x02682C 09:A81C: AD        .byte $AD   ; 01
- D 1 - - - 0x02682D 09:A81D: AC        .byte $AC   ; 02
- D 1 - - - 0x02682E 09:A81E: AB        .byte $AB   ; 03
- D 1 - - - 0x02682F 09:A81F: AA        .byte $AA   ; 04

tbl_A820:
- D 1 - - - 0x026830 09:A820: 0D        .byte $0D   ; 00
- D 1 - - - 0x026831 09:A821: 0D        .byte $0D   ; 01
- D 1 - - - 0x026832 09:A822: 0D        .byte $0D   ; 02
- D 1 - - - 0x026833 09:A823: 0C        .byte $0C   ; 03
- D 1 - - - 0x026834 09:A824: 00        .byte $00   ; 04


; bzk garbage?
- - - - - - 0x026835 09:A825: 00        .byte $00   ; 
- - - - - - 0x026836 09:A826: F0        .byte $F0   ; 
- - - - - - 0x026837 09:A827: 00        .byte $00   ; 
- - - - - - 0x026838 09:A828: 10        .byte $10   ; 
- - - - - - 0x026839 09:A829: 00        .byte $00   ; 
- - - - - - 0x02683A 09:A82A: F0        .byte $F0   ; 
- - - - - - 0x02683B 09:A82B: D0        .byte $D0   ; 
- - - - - - 0x02683C 09:A82C: F0        .byte $F0   ; 



tbl_A82D:
; только для черепах
- D 1 - - - 0x02683D 09:A82D: 00        .byte $00   ; 00 con_fighter_leo
- D 1 - - - 0x02683E 09:A82E: 01        .byte $01   ; 01 con_fighter_raph
- D 1 - - - 0x02683F 09:A82F: 00        .byte $00   ; 02 con_fighter_mike
- D 1 - - - 0x026840 09:A830: FF        .byte $FF   ; 03 con_fighter_don
                                    .if con_новые_персы <> $00
                                        .byte $00   ; 04 placeholder
                                        .byte $00   ; 05 placeholder
                                        .byte $00   ; 06 placeholder
                                        .byte $00   ; 07 con_fighter___leo
                                        .byte $01   ; 08 con_fighter___raph
                                        .byte $00   ; 09 con_fighter___mike
                                        .byte $FF   ; 0A con_fighter___don
                                        .byte $00   ; 0B con_fighter___casey
                                        .byte $00   ; 0C con_fighter___hot
                                        .byte $00   ; 0D con_fighter___shred
                                    .endif



loc_A831:
C D 1 - - - 0x026841 09:A831: A5 AD     LDA ram_00AD
C - - - - - 0x026843 09:A833: 18        CLC
C - - - - - 0x026844 09:A834: 69 02     ADC #$02
C - - - - - 0x026846 09:A836: A8        TAY
C - - - - - 0x026847 09:A837: 18        CLC
C - - - - - 0x026848 09:A838: 69 06     ADC #$06
C - - - - - 0x02684A 09:A83A: AA        TAX
C - - - - - 0x02684B 09:A83B: B9 52 05  LDA ram_obj_id + $02,Y ; 0554 0555
C - - - - - 0x02684E 09:A83E: C9 36     CMP #con_0552_special_shred_мясо
C - - - - - 0x026850 09:A840: F0 04     BEQ bra_A846
C - - - - - 0x026852 09:A842: C9 31     CMP #con_0552_special_leo_крутилка
C - - - - - 0x026854 09:A844: D0 02     BNE bra_A848
bra_A846:
; 31 36
C - - - - - 0x026856 09:A846: C8        INY
C - - - - - 0x026857 09:A847: C8        INY
bra_A848:
C - - - - - 0x026858 09:A848: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 
C - - - - - 0x02685B 09:A84B: F0 52     BEQ bra_A89F    ; if con_0552_00
C - - - - - 0x02685D 09:A84D: C9 21     CMP #con_0552_hot_бабочка
C - - - - - 0x02685F 09:A84F: F0 4E     BEQ bra_A89F
C - - - - - 0x026861 09:A851: 9D 50 05  STA ram_obj_id,X ; 0558 0559 
C - - - - - 0x026864 09:A854: FE F0 04  INC ram_04F0_obj,X ; 04F8 04F9 
C - - - - - 0x026867 09:A857: A9 06     LDA #$06
C - - - - - 0x026869 09:A859: 9D 70 05  STA ram_0570_obj,X ; 0578 0579 
C - - - - - 0x02686C 09:A85C: A9 08     LDA #$08
C - - - - - 0x02686E 09:A85E: 9D 60 05  STA ram_obj_timer,X ; 0568 0569 
C - - - - - 0x026871 09:A861: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0412 0413 0414 0415 
C - - - - - 0x026874 09:A864: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0418 0419 
C - - - - - 0x026877 09:A867: B9 90 05  LDA ram_obj_приоритет_удара,Y ; 0592 0593 0594 0595 
C - - - - - 0x02687A 09:A86A: 9D 90 05  STA ram_obj_приоритет_удара,X ; 0598 0599 
C - - - - - 0x02687D 09:A86D: B9 10 05  LDA ram_obj_flip,Y ; 0512 0513 0514 0515 
C - - - - - 0x026880 09:A870: 9D 10 05  STA ram_obj_flip,X ; 0518 0519 
C - - - - - 0x026883 09:A873: 0A        ASL
C - - - - - 0x026884 09:A874: 0A        ASL
C - - - - - 0x026885 09:A875: A9 08     LDA #$08
C - - - - - 0x026887 09:A877: B0 02     BCS bra_A87B
C - - - - - 0x026889 09:A879: A9 F8     LDA #$F8
bra_A87B:
C - - - - - 0x02688B 09:A87B: 18        CLC
C - - - - - 0x02688C 09:A87C: 79 40 04  ADC ram_obj_pos_X_lo,Y ; 0442 0443 0444 0445 
C - - - - - 0x02688F 09:A87F: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0448 0449 
C - - - - - 0x026892 09:A882: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 
C - - - - - 0x026895 09:A885: C9 18     CMP #con_0552_casey_нога_антиэйр
C - - - - - 0x026897 09:A887: F0 07     BEQ bra_A890
C - - - - - 0x026899 09:A889: C9 23     CMP #con_0552_hot_нога_антиэйр
C - - - - - 0x02689B 09:A88B: D0 11     BNE bra_A89E_RTS
C - - - - - 0x02689D 09:A88D: A9 00     LDA #$00
C - - - - - 0x02689F 09:A88F: 2C        .byte $2C   ; BIT
bra_A890:
C - - - - - 0x0268A0 09:A890: A9 06     LDA #$06
C - - - - - 0x0268A2 09:A892: 79 10 04  ADC ram_obj_pos_Y_lo,Y ; 0412 0413 
C - - - - - 0x0268A5 09:A895: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0418 0419 
C - - - - - 0x0268A8 09:A898: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0442 0443 
C - - - - - 0x0268AB 09:A89B: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0448 0449 
bra_A89E_RTS:
C - - - - - 0x0268AE 09:A89E: 60        RTS
bra_A89F:
C - - - - - 0x0268AF 09:A89F: BD 60 05  LDA ram_obj_timer,X ; 0568 0569 
C - - - - - 0x0268B2 09:A8A2: F0 04     BEQ bra_A8A8
- - - - - - 0x0268B4 09:A8A4: DE 60 05  DEC ram_obj_timer,X
- - - - - - 0x0268B7 09:A8A7: 60        RTS
bra_A8A8:
C - - - - - 0x0268B8 09:A8A8: 4C D3 DA  JMP loc_0x03DAE3_удалить_объект



bra_A8A9_RTS:
; bzk optimize
                                        RTS



sub_0x0269A1:
; X = 00 01
C - - - - - 0x0269A1 09:A991: 86 0B     STX ram_000B
C - - - - - 0x0269A3 09:A993: 20 9D A9  JSR sub_A99D
C - - - - - 0x0269A6 09:A996: 18        CLC
C - - - - - 0x0269A8 09:A998: A5 0B     LDA ram_000B
C - - - - - 0x0269AA 09:A99A: 69 08     ADC #$08
C - - - - - 0x0269AC 09:A99C: AA        TAX
sub_A99D:
C - - - - - 0x0269AD 09:A99D: 86 A8     STX ram_local_obj_index
C - - - - - 0x0269AF 09:A99F: 8A        TXA
C - - - - - 0x0269B0 09:A9A0: 29 01     AND #$01
C - - - - - 0x0269B2 09:A9A2: 85 AC     STA ram_00AC    ; индекс игрока
C - - - - - 0x0269B4 09:A9A4: AA        TAX
C - - - - - 0x0269B5 09:A9A5: C5 A8     CMP ram_local_obj_index
C - - - - - 0x0269B7 09:A9A7: D0 07     BNE bra_A9B0
C - - - - - 0x0269B9 09:A9A9: A9 00     LDA #$00
C - - - - - 0x0269BB 09:A9AB: 9D 1E 06  STA ram_061E_plr,X ; 061E 061F 
C - - - - - 0x0269BE 09:A9AE: F0 07     BEQ bra_A9B7    ; jmp
bra_A9B0:
C - - - - - 0x0269C0 09:A9B0: A6 A8     LDX ram_local_obj_index
C - - - - - 0x0269C2 09:A9B2: BD 50 05  LDA ram_obj_id,X ; 0558 0559 
C - - - - - 0x0269C5 09:A9B5: F0 D9     BEQ bra_A8A9_RTS
bra_A9B7:
C - - - - - 0x0269C7 09:A9B7: A6 AC     LDX ram_00AC    ; индекс игрока
C - - - - - 0x0269C9 09:A9B9: BD F0 05  LDA ram_05F0_obj,X ; 05F0 05F1 
C - - - - - 0x0269CC 09:A9BC: D0 D2     BNE bra_A8A9_RTS
C - - - - - 0x0269CE 09:A9BE: BD 80 05  LDA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x0269D1 09:A9C1: 30 CD     BMI bra_A8A9_RTS
C - - - - - 0x0269D3 09:A9C3: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x0269D6 09:A9C6: C9 03     CMP #con_plr_state_получает_урон
C - - - - - 0x0269D8 09:A9C8: F0 C6     BEQ bra_A8A9_RTS
C - - - - - 0x0269DA 09:A9CA: A6 A8     LDX ram_local_obj_index
C - - - - - 0x0269DC 09:A9CC: BC 70 05  LDY ram_0570_obj,X ; 0570 0571 0578 0579 
C - - - - - 0x0269DF 09:A9CF: F0 BF     BEQ bra_A8A9_RTS
C - - - - - 0x0269E1 09:A9D1: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0448 0449 
C - - - - - 0x0269E4 09:A9D4: 85 00     STA ram_0000
C - - - - - 0x0269E6 09:A9D6: 85 0E     STA ram_000E
C - - - - - 0x0269E8 09:A9D8: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 0418 0419 
C - - - - - 0x0269EB 09:A9DB: 38        SEC
C - - - - - 0x0269EC 09:A9DC: F9 16 9E  SBC tbl_9E16,Y
C - - - - - 0x0269EF 09:A9DF: 85 01     STA ram_0001
C - - - - - 0x0269F1 09:A9E1: B9 4C AD  LDA tbl_AD4C_хитбокс,Y
C - - - - - 0x0269F4 09:A9E4: 85 05     STA ram_0005
C - - - - - 0x0269F6 09:A9E6: B9 16 9E  LDA tbl_9E16,Y
C - - - - - 0x0269F9 09:A9E9: 85 06     STA ram_0006
C - - - - - 0x0269FB 09:A9EB: 8A        TXA
C - - - - - 0x0269FC 09:A9EC: 49 01     EOR #$01
C - - - - - 0x0269FE 09:A9EE: 29 01     AND #$01
C - - - - - 0x026A00 09:A9F0: 09 02     ORA #$02
C - - - - - 0x026A02 09:A9F2: 20 7C BD  JSR sub_BD7C
bra_A9F5_loop:
C - - - - - 0x026A05 09:A9F5: A6 AC     LDX ram_00AC    ; индекс игрока
C - - - - - 0x026A07 09:A9F7: BD 80 05  LDA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x026A0A 09:A9FA: 30 94     BMI bra_A8A9_RTS
C - - - - - 0x026A0C 09:A9FC: A4 A9     LDY ram_global_obj_index
; Y = 02-06
C - - - - - 0x026A0E 09:A9FE: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x026A11 09:AA01: F0 58     BEQ bra_AA5B
C - - - - - 0x026A13 09:AA03: B9 80 05  LDA ram_0580_obj,Y ; 0582 0583 0584 0585 0586 
C - - - - - 0x026A16 09:AA06: 30 53     BMI bra_AA5B
C - - - - - 0x026A18 09:AA08: B9 20 05  LDA ram_obj_state_hi,Y ; 0522 0523 0524 0525 0526 
C - - - - - 0x026A1B 09:AA0B: C5 AC     CMP ram_00AC    ; индекс игрока
C - - - - - 0x026A1D 09:AA0D: F0 4C     BEQ bra_AA5B
C - - - - - 0x026A1F 09:AA0F: 85 09     STA ram_0009
C - - - - - 0x026A21 09:AA11: B9 B0 05  LDA ram_05B0_obj_damage,Y ; 05B2 05B3 05B4 05B5 05B6 
C - - - - - 0x026A24 09:AA14: F0 45     BEQ bra_AA5B
C - - - - - 0x026A26 09:AA16: B9 30 04  LDA ram_obj_pos_X_hi,Y ; 0432 0433 0434 0435 0436 
C - - - - - 0x026A29 09:AA19: D0 40     BNE bra_AA5B
C - - - - - 0x026A2B 09:AA1B: BE 70 05  LDX ram_0570_obj,Y ; 0572 0573 0574 0575 0576 
C - - - - - 0x026A2E 09:AA1E: F0 3B     BEQ bra_AA5B
C - - - - - 0x026A30 09:AA20: BD 4C AD  LDA tbl_AD4C_хитбокс,X
C - - - - - 0x026A33 09:AA23: 18        CLC
C - - - - - 0x026A34 09:AA24: 65 05     ADC ram_0005
C - - - - - 0x026A36 09:AA26: 85 02     STA ram_0002
C - - - - - 0x026A38 09:AA28: BD 16 9E  LDA tbl_9E16,X
C - - - - - 0x026A3B 09:AA2B: 18        CLC
C - - - - - 0x026A3C 09:AA2C: 65 06     ADC ram_0006
C - - - - - 0x026A3E 09:AA2E: 85 03     STA ram_0003
C - - - - - 0x026A40 09:AA30: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0412 0413 0414 0415 0416 
C - - - - - 0x026A43 09:AA33: 85 04     STA ram_0004
C - - - - - 0x026A45 09:AA35: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0442 0443 0444 0445 0446 
C - - - - - 0x026A48 09:AA38: 85 0D     STA ram_000D
C - - - - - 0x026A4A 09:AA3A: A6 A8     LDX ram_local_obj_index
C - - - - - 0x026A4C 09:AA3C: 38        SEC
C - - - - - 0x026A4D 09:AA3D: A5 00     LDA ram_0000
C - - - - - 0x026A4F 09:AA3F: E5 0D     SBC ram_000D
C - - - - - 0x026A51 09:AA41: B0 03     BCS bra_AA46
C - - - - - 0x026A53 09:AA43: 20 FC D1  JSR sub_0x03D20C_EOR
bra_AA46:
C - - - - - 0x026A56 09:AA46: C5 02     CMP ram_0002
C - - - - - 0x026A58 09:AA48: B0 11     BCS bra_AA5B
C - - - - - 0x026A5A 09:AA4A: 38        SEC
C - - - - - 0x026A5B 09:AA4B: A5 01     LDA ram_0001
C - - - - - 0x026A5D 09:AA4D: E5 04     SBC ram_0004
C - - - - - 0x026A5F 09:AA4F: B0 03     BCS bra_AA54
C - - - - - 0x026A61 09:AA51: 20 FC D1  JSR sub_0x03D20C_EOR
bra_AA54:
C - - - - - 0x026A64 09:AA54: C5 03     CMP ram_0003
C - - - - - 0x026A66 09:AA56: B0 03     BCS bra_AA5B
C - - - - - 0x026A68 09:AA58: 4C 70 AA  JMP loc_AA70
bra_AA5B:
loc_AA5B:
C D 1 - - - 0x026A6B 09:AA5B: E6 A9     INC ram_global_obj_index
C - - - - - 0x026A6D 09:AA5D: E6 A9     INC ram_global_obj_index
C - - - - - 0x026A6F 09:AA5F: A6 A8     LDX ram_local_obj_index
C - - - - - 0x026A71 09:AA61: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026A73 09:AA63: C0 07     CPY #$07
C - - - - - 0x026A75 09:AA65: 90 8E     BCC bra_A9F5_loop
C - - - - - 0x026A77 09:AA67: D0 06     BNE bra_AA6F_RTS
C - - - - - 0x026A79 09:AA69: A0 06     LDY #$06
C - - - - - 0x026A7B 09:AA6B: 84 A9     STY ram_global_obj_index
C - - - - - 0x026A7D 09:AA6D: D0 86     BNE bra_A9F5_loop    ; jmp
bra_AA6F_RTS:
C - - - - - 0x026A7F 09:AA6F: 60        RTS



loc_AA70:
; Y = 02-06
C D 1 - - - 0x026A80 09:AA70: A9 00     LDA #$00
C - - - - - 0x026A82 09:AA72: 8D 04 01  STA ram_0104
C - - - - - 0x026A85 09:AA75: A6 AC     LDX ram_00AC
C - - - - - 0x026A87 09:AA77: C0 06     CPY #$06
C - - - - - 0x026A89 09:AA79: F0 24     BEQ bra_AA9F
C - - - - - 0x026A8B 09:AA7B: B9 80 05  LDA ram_0580_obj,Y ; 0582 0583 0584 0585 
C - - - - - 0x026A8E 09:AA7E: 0A        ASL
C - - - - - 0x026A8F 09:AA7F: 30 23     BMI bra_AAA4
C - - - - - 0x026A91 09:AA81: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x026A94 09:AA84: C9 B0     CMP #con_координата_пола
C - - - - - 0x026A96 09:AA86: 90 1C     BCC bra_AAA4
C - - - - - 0x026A98 09:AA88: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x026A9B 09:AA8B: C9 E7     CMP #$E7
C - - - - - 0x026A9D 09:AA8D: B0 07     BCS bra_AA96
C - - - - - 0x026A9F 09:AA8F: C9 19     CMP #$19
C - - - - - 0x026AA1 09:AA91: 90 03     BCC bra_AA96
C - - - - - 0x026AA3 09:AA93: A9 03     LDA #$03
C - - - - - 0x026AA5 09:AA95: 2C        .byte $2C   ; BIT
bra_AA96:
C - - - - - 0x026AA6 09:AA96: A9 06     LDA #$06
C - - - - - 0x026AA8 09:AA98: A4 09     LDY ram_0009
C - - - - - 0x026AAA 09:AA9A: 99 36 06  STA ram_0636_plr,Y ; 0636 0637 
C - - - - - 0x026AAD 09:AA9D: 10 05     BPL bra_AAA4
bra_AA9F:
C - - - - - 0x026AAF 09:AA9F: A9 80     LDA #$80
C - - - - - 0x026AB1 09:AAA1: 8D 86 05  STA ram_0580_obj + $06
bra_AAA4:
C - - - - - 0x026AB4 09:AAA4: 20 47 9E  JSR sub_9E47
C - - - - - 0x026AB8 09:AAA8: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026ABA 09:AAAA: A6 A8     LDX ram_local_obj_index
C - - - - - 0x026ABC 09:AAAC: B9 B0 05  LDA ram_05B0_obj_damage,Y ; 05B2 05B3 05B4 05B5 05B6 
C - - - - - 0x026ABF 09:AAAF: 85 08     STA ram_0008
C - - - - - 0x026AC1 09:AAB1: E0 08     CPX #$08
C - - - - - 0x026AC3 09:AAB3: 90 03     BCC bra_AAB8
C - - - - - 0x026AC5 09:AAB5: 4C 6A AB  JMP loc_AB6A
bra_AAB8:
C - - - - - 0x026AC8 09:AAB8: A9 01     LDA #$01
C - - - - - 0x026ACA 09:AABA: 9D 1E 06  STA ram_061E_plr,X ; 061E 061F 
C - - - - - 0x026ACD 09:AABD: 99 F0 05  STA ram_05F0_obj,Y ; 05F2 05F3 05F4 05F5 05F6 
C - - - - - 0x026AD0 09:AAC0: BD 10 06  LDA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x026AD3 09:AAC3: 10 03     BPL bra_AAC8
C - - - - - 0x026AD5 09:AAC5: 4C 84 AB  JMP loc_AB84
bra_AAC8:
C - - - - - 0x026AD8 09:AAC8: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026ADB 09:AACB: F0 04     BEQ bra_AAD1    ; if con_plr_state_на_земле
C - - - - - 0x026ADD 09:AACD: C9 07     CMP #con_plr_state_сидит
C - - - - - 0x026ADF 09:AACF: D0 1A     BNE bra_AAEB
bra_AAD1:
C - - - - - 0x026AE1 09:AAD1: A4 09     LDY ram_0009
C - - - - - 0x026AE3 09:AAD3: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x026AE6 09:AAD6: D9 40 04  CMP ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x026AE9 09:AAD9: A9 01     LDA #$01
C - - - - - 0x026AEB 09:AADB: B0 02     BCS bra_AADF
C - - - - - 0x026AED 09:AADD: A9 02     LDA #$02
bra_AADF:
C - - - - - 0x026AEF 09:AADF: 85 09     STA ram_0009
C - - - - - 0x026AF1 09:AAE1: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026AF3 09:AAE3: B5 91     LDA ram_btn_hold,X ; 0091 0092 
C - - - - - 0x026AF5 09:AAE5: 29 03     AND #con_btns_LR
C - - - - - 0x026AF7 09:AAE7: C5 09     CMP ram_0009
C - - - - - 0x026AF9 09:AAE9: F0 03     BEQ bra_AAEE
bra_AAEB:
C - - - - - 0x026AFB 09:AAEB: 4C 84 AB  JMP loc_AB84
bra_AAEE:
C - - - - - 0x026AFE 09:AAEE: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x026B01 09:AAF1: C9 2F     CMP #con_0552_special_hot_огонь
C - - - - - 0x026B03 09:AAF3: F0 27     BEQ bra_AB1C
C - - - - - 0x026B05 09:AAF5: C9 38     CMP #con_0552_special_don_пила_подкат
C - - - - - 0x026B07 09:AAF7: F0 23     BEQ bra_AB1C
C - - - - - 0x026B09 09:AAF9: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026B0C 09:AAFC: C9 07     CMP #con_plr_state_сидит
C - - - - - 0x026B0E 09:AAFE: D0 15     BNE bra_AB15
C - - - - - 0x026B10 09:AB00: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x026B13 09:AB03: C9 04     CMP #con_0552_черепаха_нога_в_воздухе
C - - - - - 0x026B15 09:AB05: F0 7D     BEQ bra_AB14
C - - - - - 0x026B17 09:AB07: C9 17     CMP #con_0552_casey_нога_в_воздухе
C - - - - - 0x026B19 09:AB09: F0 79     BEQ bra_AB14
C - - - - - 0x026B1B 09:AB0B: C9 1F     CMP #con_0552_hot_нога_в_воздухе
C - - - - - 0x026B1D 09:AB0D: F0 75     BEQ bra_AB14
C - - - - - 0x026B1F 09:AB0F: C9 2C     CMP #con_0552_shred_нога_в_воздухе
C - - - - - 0x026B21 09:AB11: F0 71     BEQ bra_AB14
C - - - - - 0x026B23 09:AB13: D0 07     BNE bra_AB1C    ; jmp
bra_AB14:
                                        JMP loc_AB84
bra_AB15:
C - - - - - 0x026B25 09:AB15: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0412 0413 0414 0415 0416 
C - - - - - 0x026B28 09:AB18: C9 9C     CMP #$9C
C - - - - - 0x026B2A 09:AB1A: B0 68     BCS bra_AB14
bra_AB1C:
C - - - - - 0x026B2C 09:AB1C: A9 80     LDA #$80
C - - - - - 0x026B2E 09:AB1E: 1D 1E 06  ORA ram_061E_plr,X ; 061E 061F 
C - - - - - 0x026B31 09:AB21: 9D 1E 06  STA ram_061E_plr,X ; 061E 061F 
C - - - - - 0x026B34 09:AB24: B9 E0 04  LDA ram_04E0_obj,Y ; 04E2 04E3 04E4 04E5 04E6 
C - - - - - 0x026B37 09:AB27: D0 17     BNE bra_AB40_RTS
C - - - - - 0x026B39 09:AB29: C0 04     CPY #$04
C - - - - - 0x026B3B 09:AB2B: B0 1B     BCS bra_AB48
C - - - - - 0x026B3D 09:AB2D: 20 0E AC  JSR sub_AC0E
; Y = 02 03
C - - - - - 0x026B40 09:AB30: A9 08     LDA #$08    ; con_075C_08
C - - - - - 0x026B42 09:AB32: 99 E0 04  STA ram_04E0_obj,Y ; 04E2 04E3 
C - - - - - 0x026B45 09:AB35: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x026B48 09:AB38: 20 E3 AC  JSR sub_ACE3
C - - - - - 0x026B4B 09:AB3B: A5 08     LDA ram_0008
C - - - - - 0x026B4D 09:AB3D: 4C FD B9  JMP loc_B9FD_урон_от_нормалов_в_блок
bra_AB40_RTS:
C - - - - - 0x026B50 09:AB40: 60        RTS
bra_AB41:
C - - - - - 0x026B51 09:AB41: 20 44 9E  JSR sub_9E44
C - - - - - 0x026B55 09:AB45: 4C 5B AA  JMP loc_AA5B
bra_AB48:
C - - - - - 0x026B58 09:AB48: A9 82     LDA #$82
C - - - - - 0x026B5A 09:AB4A: 85 08     STA ram_0008
C - - - - - 0x026B5C 09:AB4C: 8D 04 01  STA ram_0104
C - - - - - 0x026B5F 09:AB4F: A9 0D     LDA #con_075C_0D
                                        JSR sub_0x03F6A4_записать_звук
C - - - - - 0x026B64 09:AB54: A9 06     LDA #$06
C - - - - - 0x026B66 09:AB56: 20 F8 AB  JSR sub_ABF8
                                        JSR sub_AC24_посчитать_урон_от_удара_1
C - - - - - 0x026B69 09:AB59: A0 07     LDY #con_init_anim_блокирование_стоя
C - - - - - 0x026B6B 09:AB5B: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026B6E 09:AB5E: C9 03     CMP #con_plr_state_получает_урон
C - - - - - 0x026B70 09:AB60: F0 DE     BEQ bra_AB40_RTS
- - - - - - 0x026B72 09:AB62: C9 07     CMP #con_plr_state_сидит
- - - - - - 0x026B74 09:AB64: D0 01     BNE bra_AB67
- - - - - - 0x026B76 09:AB66: C8        LDY #con_init_anim_блокирование_сидя
bra_AB67:
- - - - - - 0x026B77 09:AB67: 4C E7 8A  JMP loc_8AE7_выбор_начальной_анимации_персу



loc_AB6A:
; Y = 02-06
C D 1 - - - 0x026B7A 09:AB6A: B9 90 05  LDA ram_obj_приоритет_удара,Y ; 0592 0593 0594 0595 0596 
C - - - - - 0x026B7D 09:AB6D: DD 90 05  CMP ram_obj_приоритет_удара,X ; 0598 0599 
C - - - - - 0x026B80 09:AB70: 90 CF     BCC bra_AB41
C - - - - - 0x026B82 09:AB72: D0 08     BNE bra_AB7C
C - - - - - 0x026B84 09:AB74: BD F0 04  LDA ram_04F0_obj,X ; 04F8 04F9 
C - - - - - 0x026B87 09:AB77: D9 F0 04  CMP ram_04F0_obj,Y ; 04F2 04F3 04F4 
C - - - - - 0x026B8A 09:AB7A: 90 C5     BCC bra_AB41
bra_AB7C:
C - - - - - 0x026B8C 09:AB7C: A9 01     LDA #$01
C - - - - - 0x026B8E 09:AB7E: 9D 1E 06  STA ram_0626_plr - $08,X ; 0626 0627 
C - - - - - 0x026B91 09:AB81: 99 F0 05  STA ram_05F0_obj,Y ; 05F2 05F3 05F4 05F5 05F6 
loc_AB84:
C D 1 - - - 0x026B94 09:AB84: A6 AC     LDX ram_00AC
C - - - - - 0x026B96 09:AB86: B9 B0 05  LDA ram_05B0_obj_damage,Y ; 05B2 05B3 05B4 05B5 05B6 
C - - - - - 0x026B99 09:AB89: 9D E0 04  STA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x026B9C 09:AB8C: A9 00     LDA #$00
C - - - - - 0x026B9E 09:AB8E: 9D 0C 04  STA ram_obj_anim_id + $0C,X ; 040C 040D 
C - - - - - 0x026BA1 09:AB91: 20 88 B0  JSR sub_B088
C - - - - - 0x026BA4 09:AB94: A6 AC     LDX ram_00AC
C - - - - - 0x026BA6 09:AB96: A0 12     LDY #con_init_anim_получение_урона_unknown
C - - - - - 0x026BA8 09:AB98: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
C - - - - - 0x026BAB 09:AB9B: 20 0E AC  JSR sub_AC0E
C - - - - - 0x026BAE 09:AB9E: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x026BB1 09:ABA1: 29 7F     AND #$7F
C - - - - - 0x026BB3 09:ABA3: A8        TAY
C - - - - - 0x026BB4 09:ABA4: B9 BC AF  LDA tbl_AFBC_звук_получения_удара,Y
                                        JSR sub_0x03F6A4_записать_звук
C - - - - - 0x026BB7 09:ABA7: 20 1D AC  JSR sub_AC1D_посчитать_урон_от_удара_2    ; возможен PLA PLA
C - - - - - 0x026BBA 09:ABAA: A6 AC     LDX ram_00AC
C - - - - - 0x026BBC 09:ABAC: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026BBE 09:ABAE: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x026BC1 09:ABB1: A8        TAY
C - - - - - 0x026BC2 09:ABB2: 08        PHP
C - - - - - 0x026BC3 09:ABB3: A9 07     LDA #$07
C - - - - - 0x026BC5 09:ABB5: 28        PLP
C - - - - - 0x026BC6 09:ABB6: 30 40     BMI bra_ABF8
C - - - - - 0x026BC8 09:ABB8: A9 04     LDA #$04
C - - - - - 0x026BCA 09:ABBA: C0 2F     CPY #con_0552_special_hot_огонь
C - - - - - 0x026BCC 09:ABBC: F0 3A     BEQ bra_ABF8
                                        CPY #con_колво_обычных_ударов
C - - - - - 0x026BCE 09:ABBE: 90 14     BCC bra_ABD4
; if спешал удар
C - - - - - 0x026BD0 09:ABC0: C0 36     CPY #con_0552_special_shred_мясо
C - - - - - 0x026BD2 09:ABC2: F0 08     BEQ bra_ABCC
C - - - - - 0x026BD4 09:ABC4: C0 39     CPY #con_0552_special_casey_песок
C - - - - - 0x026BD6 09:ABC6: F0 08     BEQ bra_ABD0
C - - - - - 0x026BD8 09:ABC8: A9 0A     LDA #$0A
C - - - - - 0x026BDA 09:ABCA: 85 AA     STA ram_таймер_задержки_фпс
bra_ABCC:
C - - - - - 0x026BDC 09:ABCC: A9 05     LDA #$05
C - - - - - 0x026BDE 09:ABCE: D0 28     BNE bra_ABF8    ; jmp
bra_ABD0:
C - - - - - 0x026BE0 09:ABD0: A9 08     LDA #$08
C - - - - - 0x026BE2 09:ABD2: D0 24     BNE bra_ABF8    ; jmp
bra_ABD4:
C - - - - - 0x026BE4 09:ABD4: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x026BE7 09:ABD7: C9 B0     CMP #con_координата_пола
C - - - - - 0x026BE9 09:ABD9: A9 01     LDA #$01
C - - - - - 0x026BEB 09:ABDB: 90 1B     BCC bra_ABF8
C - - - - - 0x026BED 09:ABDD: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026BF0 09:ABE0: D0 10     BNE bra_ABF2
; if con_plr_state_на_земле
C - - - - - 0x026BF2 09:ABE2: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026BF4 09:ABE4: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0412 0413 
C - - - - - 0x026BF7 09:ABE7: C9 9C     CMP #$9C
C - - - - - 0x026BF9 09:ABE9: A0 14     LDY #con_init_anim_получение_урона_по_ногам
C - - - - - 0x026BFB 09:ABEB: B0 02     BCS bra_ABEF
C - - - - - 0x026BFD 09:ABED: A0 13     LDY #con_init_anim_получение_урона_в_корпус
bra_ABEF:
C - - - - - 0x026BFF 09:ABEF: 20 E7 8A  JSR sub_8AE7_выбор_начальной_анимации_персу
bra_ABF2:
C - - - - - 0x026C02 09:ABF2: BC 20 05  LDY ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026C05 09:ABF5: B9 38 AD  LDA tbl_AD38,Y
bra_ABF8:
sub_ABF8:
loc_ABF8:
C D 1 - - - 0x026C08 09:ABF8: A6 AC     LDX ram_00AC
C - - - - - 0x026C0A 09:ABFA: 9D C0 04  STA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x026C0D 09:ABFD: A9 03     LDA #con_plr_state_получает_урон
loc_ABFF:
C D 1 - - - 0x026C0F 09:ABFF: 9D 20 05  STA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026C12 09:AC02: A9 00     LDA #$00
C - - - - - 0x026C14 09:AC04: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x026C17 09:AC07: 9D 0C 04  STA ram_obj_anim_id + $0C,X ; 040C 040D 
C - - - - - 0x026C1A 09:AC0A: 9D 04 04  STA ram_obj_anim_id + $04,X ; 0404 0405 
                                        LDY ram_global_obj_index
                                        LDA ram_obj_id,Y
                                        CMP #con_0552_special_hot_огонь
                                        BNE bra_AC08
                                        LDY ram_062A_plr,X ; 062A 062B 
                                        CPY #$32
                                        BCC bra_AC08
                                        LDA #con_062E_hot_2x_огонь_в_блок
bra_AC08:
                                        STA ram_062E,X
C - - - - - 0x026C1D 09:AC0D: 60        RTS



sub_AC0E:
C - - - - - 0x026C1E 09:AC0E: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026C20 09:AC10: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x026C23 09:AC13: C9 2F     CMP #con_колво_обычных_ударов
C - - - - - 0x026C25 09:AC15: B0 05     BCS bra_AC1C_RTS
; if обычный удар
C - - - - - 0x026C27 09:AC17: A9 00     LDA #$00
C - - - - - 0x026C29 09:AC19: 99 B0 05  STA ram_05B0_obj_damage,Y ; 05B2 05B3 
bra_AC1C_RTS:
C - - - - - 0x026C2C 09:AC1C: 60        RTS



sub_AC24_посчитать_урон_от_удара_1:
C - - - - - 0x026C37 09:AC27: A9 00     LDA #$00
                                        .byte $2C   ; BIT
sub_AC1D_посчитать_урон_от_удара_2:
                                        LDA #$80
C - - - - - 0x026C39 09:AC29: 85 10     STA ram_0010    ; флаг проверки мяса шрушера
C - - - - - 0x026C3B 09:AC2B: A6 AC     LDX ram_00AC
C - - - - - 0x026C3D 09:AC2D: 20 E6 AC  JSR sub_ACE6
C - - - - - 0x026C40 09:AC30: A9 00     LDA #$00
C - - - - - 0x026C42 09:AC32: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x026C45 09:AC35: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x026C48 09:AC38: 9D 10 06  STA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x026C4B 09:AC3B: 85 19     STA ram_0019
C - - - - - 0x026C4D 09:AC3D: A5 08     LDA ram_0008
C - - - - - 0x026C4F 09:AC3F: 10 09     BPL bra_AC4A
C - - - - - 0x026C51 09:AC41: 0A        ASL
C - - - - - 0x026C52 09:AC42: 4A        LSR
C - - - - - 0x026C53 09:AC43: 85 08     STA ram_0008
C - - - - - 0x026C55 09:AC45: 85 18     STA ram_0018
C - - - - - 0x026C57 09:AC47: 4C 4D AC  JMP loc_AC4D
bra_AC4A:
C - - - - - 0x026C5A 09:AC4A: 20 3C DE  JSR sub_0x03DE4C_корректировка_урона_с_учетом_прочности_перса
loc_AC4D:
; Y = 02-06
C D 1 - - - 0x026C5D 09:AC4D: 18        CLC
C - - - - - 0x026C5E 09:AC4E: 7D 45 06  ADC ram_plr_damage,X ; 0645 0646 
C - - - - - 0x026C61 09:AC51: 9D 45 06  STA ram_plr_damage,X ; 0645 0646 
C - - - - - 0x026C64 09:AC54: A9 20     LDA #$20
C - - - - - 0x026C66 09:AC56: 9D F0 05  STA ram_05F0_obj,X ; 05F0 05F1 
C - - - - - 0x026C69 09:AC59: BD 90 05  LDA ram_plr_hp_lo,X ; 0590 0591 
C - - - - - 0x026C6C 09:AC5C: 18        CLC
C - - - - - 0x026C6D 09:AC5D: FD 45 06  SBC ram_plr_damage,X ; 0645 0646 
C - - - - - 0x026C70 09:AC60: 90 60     BCC bra_ACC2_урон_убьет_соперника
C - - - - - 0x026C72 09:AC62: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026C74 09:AC64: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x026C77 09:AC67: A8        TAY
C - - - - - 0x026C78 09:AC68: A5 10     LDA ram_0010    ; флаг проверки мяса шрушера
C - - - - - 0x026C7A 09:AC6A: 10 04     BPL bra_AC70
C - - - - - 0x026C7C 09:AC6C: C0 36     CPY #con_0552_special_shred_мясо
C - - - - - 0x026C7E 09:AC6E: F0 31     BEQ bra_ACA1_мясо_шреда
bra_AC70:
C - - - - - 0x026C80 09:AC70: A9 42     LDA #$42
C - - - - - 0x026C82 09:AC72: 9D 2A 06  STA ram_062A_plr,X ; 062A 062B 
C - - - - - 0x026C85 09:AC75: A5 18     LDA ram_0018
C - - - - - 0x026C87 09:AC77: C0 2F     CPY #con_колво_обычных_ударов
C - - - - - 0x026C89 09:AC79: 90 03     BCC bra_AC7E
; if спешал удар
C - - - - - 0x026C8B 09:AC7B: 20 C1 EF  JSR sub_0x03EFD1
bra_AC7E:
; if обычный удар
C - - - - - 0x026C8E 09:AC7E: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x026C91 09:AC81: C0 06     CPY #con_fighter_shred
C - - - - - 0x026C93 09:AC83: D0 07     BNE bra_AC8C
                                    .else
                                        CPY #con_fighter_shred
                                        BEQ bra_AC85_shred
                                        CPY #con_fighter___shred
                                        BNE bra_AC8C
bra_AC85_shred:                               
                                    .endif
; con_fighter_shred
; con_fighter___shred
C - - - - - 0x026C95 09:AC85: CC 04 01  CPY ram_0104
C - - - - - 0x026C98 09:AC88: E9 01     SBC #$01
bra_AC8C:
C - - - - - 0x026C9C 09:AC8C: 18        CLC
C - - - - - 0x026C9D 09:AC8D: 7D 2C 06  ADC ram_062C_plr,X ; 062C 062D 
C - - - - - 0x026CA0 09:AC90: D9 45 AD  CMP tbl_AD45,Y
C - - - - - 0x026CA3 09:AC93: 90 05     BCC bra_AC9A
C - - - - - 0x026CA5 09:AC95: AC 04 01  LDY ram_0104
C - - - - - 0x026CA8 09:AC98: 10 12     BPL bra_ACAC
bra_AC9A:
C - - - - - 0x026CAA 09:AC9A: 9D 2C 06  STA ram_062C_plr,X ; 062C 062D 
bra_AC9D_RTS:
C - - - - - 0x026CAD 09:AC9D: 60        RTS
bra_ACA1_мясо_шреда:
C - - - - - 0x026CB1 09:ACA1: 68        PLA
C - - - - - 0x026CB2 09:ACA2: 68        PLA
C - - - - - 0x026CB3 09:ACA3: A9 0B     LDA #con_plr_state_попался_в_мясо
C - - - - - 0x026CB5 09:ACA5: DD 20 05  CMP ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026CB8 09:ACA8: F0 F3     BEQ bra_AC9D_RTS
C - - - - - 0x026CBA 09:ACAA: D0 13     BNE bra_ACBF    ; jmp
bra_ACAC:
C - - - - - 0x026CBC 09:ACAC: 68        PLA
C - - - - - 0x026CBD 09:ACAD: 68        PLA
C - - - - - 0x026CBE 09:ACAE: A9 11     LDA #con_sfx_вышибание
C - - - - - 0x026CC0 09:ACB0: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x026CC3 09:ACB3: A6 AC     LDX ram_00AC
C - - - - - 0x026CC5 09:ACB5: A9 00     LDA #$00
C - - - - - 0x026CC7 09:ACB7: 9D 2C 06  STA ram_062C_plr,X ; 062C 062D 
C - - - - - 0x026CCA 09:ACBA: 9D 2A 06  STA ram_062A_plr,X ; 062A 062B 
C - - - - - 0x026CCD 09:ACBD: A9 04     LDA #con_plr_state_нокаут
bra_ACBF:
C - - - - - 0x026CCF 09:ACBF: 4C FF AB  JMP loc_ABFF
bra_ACC2_урон_убьет_соперника:
C - - - - - 0x026CD2 09:ACC2: 68        PLA
C - - - - - 0x026CD3 09:ACC3: 68        PLA
C - - - - - 0x026CD4 09:ACC4: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x026CD7 09:ACC7: A9 04     LDA #$04    ; труп
C - - - - - 0x026CD9 09:ACC9: 9D 30 05  STA ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x026CDC 09:ACCC: A9 80     LDA #$80
C - - - - - 0x026CDE 09:ACCE: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x026CE1 09:ACD1: 0A        LDA #$00 ; con_plr_state_на_земле
C - - - - - 0x026CE2 09:ACD2: 9D 20 05  STA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026CE5 09:ACD5: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x026CE8 09:ACD8: 8A        TXA
C - - - - - 0x026CE9 09:ACD9: 49 01     EOR #$01
C - - - - - 0x026CEB 09:ACDB: 8D 71 06  STA ram_0671
C - - - - - 0x026CEE 09:ACDE: A9 23     LDA #con_075C_23
C - - - - - 0x026CF0 09:ACE0: 4C 8B F6  JMP loc_0x03F69B_выключить_звуки_и_записать_новый



sub_ACE3:
C - - - - - 0x026CF3 09:ACE3: A9 02     LDA #$02
C - - - - - 0x026CF5 09:ACE5: 2C        .byte $2C   ; BIT
sub_ACE6:
C - - - - - 0x026CF6 09:ACE6: A9 01     LDA #$01
C - - - - - 0x026CF8 09:ACE8: 85 0C     STA ram_000C
C - - - - - 0x026CFA 09:ACEA: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026CFC 09:ACEC: 8A        TXA
C - - - - - 0x026CFD 09:ACED: 48        PHA
C - - - - - 0x026CFE 09:ACEE: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x026D01 09:ACF1: C9 2F     CMP #con_0552_special_hot_огонь
C - - - - - 0x026D03 09:ACF3: F0 3E     BEQ bra_AD33
C - - - - - 0x026D05 09:ACF5: C9 30     CMP #con_0552_special_shred_волна
C - - - - - 0x026D07 09:ACF7: F0 3A     BEQ bra_AD33
C - - - - - 0x026D09 09:ACF9: C9 39     CMP #con_0552_special_casey_песок
C - - - - - 0x026D0B 09:ACFB: F0 36     BEQ bra_AD33
C - - - - - 0x026D0D 09:ACFD: A5 A9     LDA ram_global_obj_index
C - - - - - 0x026D0F 09:ACFF: AA        TAX
C - - - - - 0x026D10 09:AD00: 29 01     AND #$01
C - - - - - 0x026D12 09:AD02: 18        CLC
C - - - - - 0x026D13 09:AD03: 69 0A     ADC #$0A
C - - - - - 0x026D15 09:AD05: A8        TAY
C - - - - - 0x026D16 09:AD06: 20 C7 DA  JSR sub_0x03DAD7_удалить_объект_сохранив_XY
C - - - - - 0x026D19 09:AD09: A5 0C     LDA ram_000C
C - - - - - 0x026D1B 09:AD0B: 99 50 05  STA ram_obj_id,Y ; 055A 055B 
C - - - - - 0x026D1E 09:AD0E: BD 50 05  LDA ram_obj_id,X ; 0552 0553 0554 0555 0556 
C - - - - - 0x026D21 09:AD11: C9 35     CMP #con_0552_special_don_пила_вращение
C - - - - - 0x026D23 09:AD13: F0 08     BEQ bra_AD1D
C - - - - - 0x026D25 09:AD15: C9 21     CMP #con_0552_hot_бабочка
C - - - - - 0x026D27 09:AD17: F0 04     BEQ bra_AD1D
C - - - - - 0x026D29 09:AD19: C9 32     CMP #con_0552_special_raph_сверло
C - - - - - 0x026D2B 09:AD1B: D0 13     BNE bra_AD30
bra_AD1D:
; 21 32 35
C - - - - - 0x026D2D 09:AD1D: A5 0E     LDA ram_000E
C - - - - - 0x026D2F 09:AD1F: 65 0D     ADC ram_000D
C - - - - - 0x026D31 09:AD21: 6A        ROR
C - - - - - 0x026D32 09:AD22: 99 40 04  STA ram_obj_pos_X_lo,Y ; 044A 044B 
C - - - - - 0x026D35 09:AD25: A5 01     LDA ram_0001
C - - - - - 0x026D37 09:AD27: 65 04     ADC ram_0004
C - - - - - 0x026D39 09:AD29: 6A        ROR
C - - - - - 0x026D3A 09:AD2A: 99 10 04  STA ram_obj_pos_Y_lo,Y ; 041A 041B 
C - - - - - 0x026D3D 09:AD2D: 4C 33 AD  JMP loc_AD33
bra_AD30:
C - - - - - 0x026D40 09:AD30: 20 B5 DB  JSR sub_0x03DBC5_скопировать_данные_объекта_X_в_Y
bra_AD33:
loc_AD33:
C D 1 - - - 0x026D43 09:AD33: A4 A9     LDY ram_global_obj_index
C - - - - - 0x026D45 09:AD35: 68        PLA
C - - - - - 0x026D46 09:AD36: AA        TAX
C - - - - - 0x026D47 09:AD37: 60        RTS



tbl_AD38:
- D 1 - - - 0x026D48 09:AD38: 00        .byte $00   ; 00
- D 1 - - - 0x026D49 09:AD39: 01        .byte $01   ; 01
- D 1 - - - 0x026D4A 09:AD3A: 02        .byte $02   ; 02
- - - - - - 0x026D4B 09:AD3B: 00        .byte $00   ; 03
- D 1 - - - 0x026D4C 09:AD3C: 00        .byte $00   ; 04
- D 1 - - - 0x026D4D 09:AD3D: 00        .byte $00   ; 05
- D 1 - - - 0x026D4E 09:AD3E: 00        .byte $00   ; 06
- D 1 - - - 0x026D4F 09:AD3F: 02        .byte $02   ; 07
- D 1 - - - 0x026D50 09:AD40: 00        .byte $00   ; 08
- D 1 - - - 0x026D51 09:AD41: 00        .byte $00   ; 09
- - - - - - 0x026D52 09:AD42: 00        .byte $00   ; 0A
- - - - - - 0x026D53 09:AD43: 00        .byte $00   ; 0B
- - - - - - 0x026D54 09:AD44: 00        .byte $00   ; 0C



tbl_AD45:
- D 1 - - - 0x026D55 09:AD45: 26        .byte $26   ; 00 con_fighter_leo
- D 1 - - - 0x026D56 09:AD46: 26        .byte $26   ; 01 con_fighter_raph
- D 1 - - - 0x026D57 09:AD47: 26        .byte $26   ; 02 con_fighter_mike
- D 1 - - - 0x026D58 09:AD48: 26        .byte $26   ; 03 con_fighter_don
- D 1 - - - 0x026D59 09:AD49: 26        .byte $26   ; 04 con_fighter_casey
- D 1 - - - 0x026D5A 09:AD4A: 28        .byte $28   ; 05 con_fighter_hot
- D 1 - - - 0x026D5B 09:AD4B: 2D        .byte $2D   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $26   ; 07 con_fighter___leo
                                        .byte $26   ; 08 con_fighter___raph
                                        .byte $26   ; 09 con_fighter___mike
                                        .byte $26   ; 0A con_fighter___don
                                        .byte $26   ; 0B con_fighter___casey
                                        .byte $28   ; 0C con_fighter___hot
                                        .byte $2D   ; 0D con_fighter___shred
                                    .endif



tbl_AD4C_хитбокс:
tbl_0x026D5C_хитбокс:
- D 1 - - - 0x026D5C 09:AD4C: 00        .byte $00   ; 
- D 1 - - - 0x026D5D 09:AD4D: 0C        .byte $0C   ; 
- D 1 - - - 0x026D5E 09:AD4E: 05        .byte $05   ; 
- D 1 - - - 0x026D5F 09:AD4F: 06        .byte $06   ; 
- D 1 - - - 0x026D60 09:AD50: 05        .byte $05   ; 
- D 1 - - - 0x026D61 09:AD51: 0C        .byte $0C   ; 
- D 1 - - - 0x026D62 09:AD52: 0D        .byte $0D   ; 
- D 1 - - - 0x026D63 09:AD53: 0A        .byte $0A   ; 
- - - - - - 0x026D64 09:AD54: 04        .byte $04   ; 
- D 1 - - - 0x026D65 09:AD55: 13        .byte $13   ; 
- D 1 - - - 0x026D66 09:AD56: 11        .byte $11   ; 
- D 1 - - - 0x026D67 09:AD57: 1E        .byte $1E   ; 
- D 1 - - - 0x026D68 09:AD58: 08        .byte $08   ; 
- D 1 - - - 0x026D69 09:AD59: 12        .byte $12   ; 
- D 1 - - - 0x026D6A 09:AD5A: 06        .byte $06   ; 
- D 1 - - - 0x026D6B 09:AD5B: 0E        .byte $0E   ; 
- - - - - - 0x026D6C 09:AD5C: 05        .byte $05   ; 
- D 1 - - - 0x026D6D 09:AD5D: 0E        .byte $0E   ; 
- - - - - - 0x026D6E 09:AD5E: 14        .byte $14   ; 
- D 1 - - - 0x026D6F 09:AD5F: 16        .byte $16   ; 
- - - - - - 0x026D70 09:AD60: 10        .byte $10   ; 
- D 1 - - - 0x026D71 09:AD61: 18        .byte $18   ; 
- D 1 - - - 0x026D72 09:AD62: 12        .byte $12   ; 
- D 1 - - - 0x026D73 09:AD63: 0A        .byte $0A   ; 
- D 1 - - - 0x026D74 09:AD64: 18        .byte $18   ; 
- D 1 - - - 0x026D75 09:AD65: 20        .byte $20   ; 
- D 1 - - - 0x026D76 09:AD66: 06        .byte $06   ; 
- D 1 - - - 0x026D77 09:AD67: 06        .byte $06   ; 
- D 1 - - - 0x026D78 09:AD68: 19        .byte $19   ; 
- D 1 - - - 0x026D79 09:AD69: 0E        .byte $0E   ; 
- D 1 - - - 0x026D7A 09:AD6A: 0C        .byte $0C   ; 
- D 1 - - - 0x026D7B 09:AD6B: 18        .byte $18   ; 
- D 1 - - - 0x026D7C 09:AD6C: 07        .byte $07   ; 
- D 1 - - - 0x026D7D 09:AD6D: 06        .byte $06   ; 
- D 1 - - - 0x026D7E 09:AD6E: 0A        .byte $0A   ; 



sub_AD6F:
C - - - - - 0x026D7F 09:AD6F: 85 02     STA ram_0002
C - - - - - 0x026D81 09:AD71: BC 9C 04  LDY ram_obj_spd_Y_hi - $04,X ; 04A0 04A1 
C - - - - - 0x026D84 09:AD74: 10 03     BPL bra_AD79
C - - - - - 0x026D86 09:AD76: A9 00     LDA #$00
C - - - - - 0x026D88 09:AD78: 2C        .byte $2C   ; BIT
bra_AD79:
C - - - - - 0x026D89 09:AD79: A9 01     LDA #$01
C - - - - - 0x026D8B 09:AD7B: 8D 26 01  STA ram_option_speed
C - - - - - 0x026D8E 09:AD7E: BD B0 04  LDA ram_obj_spd_Y_lo,X ; 04B4 04B5 
C - - - - - 0x026D91 09:AD81: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x026D94 09:AD84: A5 02     LDA ram_0002
C - - - - - 0x026D96 09:AD86: 8D 26 01  STA ram_option_speed
bra_AD89_RTS:
C - - - - - 0x026D99 09:AD89: 60        RTS



sub_0x026DA1:
C - - - - - 0x026DA1 09:AD91: A2 01     LDX #$01
bra_AD93_loop:
C - - - - - 0x026DA3 09:AD93: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026DA6 09:AD96: C9 09     CMP #con_plr_state_бросает_соперника
C - - - - - 0x026DA8 09:AD98: F0 F6     BEQ bra_AD89_RTS
C - - - - - 0x026DAA 09:AD9A: C9 0B     CMP #con_plr_state_попался_в_мясо
C - - - - - 0x026DAC 09:AD9C: F0 F2     BEQ bra_AD89_RTS
C - - - - - 0x026DAE 09:AD9E: CA        DEX
C - - - - - 0x026DAF 09:AD9F: 10 F2     BPL bra_AD93_loop
C - - - - - 0x026DB1 09:ADA1: A2 00     LDX #$00
C - - - - - 0x026DB3 09:ADA3: 86 04     STX ram_0004
C - - - - - 0x026DB5 09:ADA5: 86 05     STX ram_0005
C - - - - - 0x026DB7 09:ADA7: E8        INX ; 01
bra_ADA8_loop:
C - - - - - 0x026DB8 09:ADA8: BC 70 05  LDY ram_0570_obj,X ; 0570 0571 
C - - - - - 0x026DBB 09:ADAB: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x026DBE 09:ADAE: 38        SEC
C - - - - - 0x026DBF 09:ADAF: F9 16 9E  SBC tbl_9E16,Y
C - - - - - 0x026DC2 09:ADB2: 95 02     STA ram_0002,X ; 0002 0003 
C - - - - - 0x026DC4 09:ADB4: 18        CLC
C - - - - - 0x026DC5 09:ADB5: A5 04     LDA ram_0004
C - - - - - 0x026DC7 09:ADB7: 79 4C AD  ADC tbl_AD4C_хитбокс,Y
C - - - - - 0x026DCA 09:ADBA: 85 04     STA ram_0004
C - - - - - 0x026DCC 09:ADBC: 18        CLC
C - - - - - 0x026DCD 09:ADBD: A5 05     LDA ram_0005
C - - - - - 0x026DCF 09:ADBF: 79 16 9E  ADC tbl_9E16,Y
C - - - - - 0x026DD2 09:ADC2: 38        SEC
C - - - - - 0x026DD3 09:ADC3: E9 06     SBC #$06
C - - - - - 0x026DD5 09:ADC5: 85 05     STA ram_0005
C - - - - - 0x026DD7 09:ADC7: CA        DEX
C - - - - - 0x026DD8 09:ADC8: 10 DE     BPL bra_ADA8_loop
C - - - - - 0x026DDA 09:ADCA: A2 00     LDX #$00
C - - - - - 0x026DDC 09:ADCC: A0 01     LDY #$01
C - - - - - 0x026DDE 09:ADCE: 20 0C D2  JSR sub_0x03D21C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x026DE1 09:ADD1: C5 04     CMP ram_0004
C - - - - - 0x026DE3 09:ADD3: B0 51     BCS bra_AD89_RTS
C - - - - - 0x026DE5 09:ADD5: A5 02     LDA ram_0002
C - - - - - 0x026DE7 09:ADD7: 38        SEC
C - - - - - 0x026DE8 09:ADD8: E5 03     SBC ram_0003
C - - - - - 0x026DEA 09:ADDA: B0 03     BCS bra_ADDF
C - - - - - 0x026DEC 09:ADDC: 20 FC D1  JSR sub_0x03D20C_EOR
bra_ADDF:
C - - - - - 0x026DEF 09:ADDF: C5 05     CMP ram_0005
C - - - - - 0x026DF1 09:ADE1: B0 43     BCS bra_AD89_RTS
; бряк срабатывает когда один перс касается другого во время движения
C - - - - - 0x026DF3 09:ADE3: A9 B0     LDA #con_координата_пола
C - - - - - 0x026DF5 09:ADE5: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 
C - - - - - 0x026DF8 09:ADE8: D0 06     BNE bra_ADF0
; bzk optimize?
C - - - - - 0x026DFA 09:ADEA: E8        INX ; 01
C - - - - - 0x026DFB 09:ADEB: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0411 
C - - - - - 0x026DFE 09:ADEE: F0 03     BEQ bra_ADF3
bra_ADF0:
C - - - - - 0x026E00 09:ADF0: 4C 8A AE  JMP loc_AE8A
bra_ADF3:
C - - - - - 0x026E03 09:ADF3: 20 E3 AE  JSR sub_AEE3    ; возможен PLA PLA
C - - - - - 0x026E06 09:ADF6: E8        INX
C - - - - - 0x026E07 09:ADF7: 88        DEY
; bzk bug? почему ссылка на 058F?
C - - - - - 0x026E08 09:ADF8: B9 90 04  LDA ram_obj_spd_X_lo,Y ; 0490 0491 058F 
; bzk bug? почему ссылка на 057F?
C - - - - - 0x026E0B 09:ADFB: 19 80 04  ORA ram_obj_spd_X_hi,Y ; 0480 0481 057F 
C - - - - - 0x026E0E 09:ADFE: F0 4B     BEQ bra_AE4B
C - - - - - 0x026E10 09:AE00: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 0492 
C - - - - - 0x026E13 09:AE03: 1D 80 04  ORA ram_obj_spd_X_hi,X ; 0480 0481 0482 
C - - - - - 0x026E16 09:AE06: F0 3F     BEQ bra_AE47
C - - - - - 0x026E18 09:AE08: 20 86 DD  JSR sub_0x03DD96
C D 3 - - - 0x03EF88 0F:EF78: 10 14     BPL bra_EF8E
C - - - - - 0x03EF8A 0F:EF7A: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0442 
; bzk bug? почему ссылка на 053F?
C - - - - - 0x03EF8D 0F:EF7D: D9 40 04  CMP ram_obj_pos_X_lo,Y ; 0440 0441 053F 
C - - - - - 0x03EF90 0F:EF80: B5 91     LDA ram_btn_hold,X
C - - - - - 0x03EF92 0F:EF82: 29 01     AND #con_btn_Right
C - - - - - 0x03EF94 0F:EF84: F0 06     BEQ bra_EF8C
C - - - - - 0x03EF96 0F:EF86: B0 06     BCS bra_EF8E
bra_EF88:
C - - - - - 0x03EF98 0F:EF88: 18        CLC
C D 1 - - - 0x026E1E 09:AE0E: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 0492 
C - - - - - 0x026E21 09:AE11: 79 90 04  ADC ram_obj_spd_X_lo,Y ; 0490 0491 058F 
C - - - - - 0x026E24 09:AE14: 99 90 04  STA ram_obj_spd_X_lo,Y ; 0490 0491 058F 
C - - - - - 0x026E27 09:AE17: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0490 0491 0492 
C - - - - - 0x026E2A 09:AE1A: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 0482 
C - - - - - 0x026E2D 09:AE1D: 79 80 04  ADC ram_obj_spd_X_hi,Y ; 0480 0481 057F 
C - - - - - 0x026E30 09:AE20: 99 80 04  STA ram_obj_spd_X_hi,Y ; 0480 0481 057F 
C - - - - - 0x026E33 09:AE23: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 0482 
C - - - - - 0x026E36 09:AE26: 60        RTS
bra_EF8C:
C - - - - - 0x03EF9C 0F:EF8C: B0 FA     BCS bra_EF88
bra_EF8E:
C D 1 - - - 0x026E37 09:AE27: 90 0D     BCC bra_AE36
bra_AE29_loop:
C - - - - - 0x026E39 09:AE29: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0442 
C - - - - - 0x026E3C 09:AE2C: D9 40 04  CMP ram_obj_pos_X_lo,Y ; 0440 0441 053F 
C - - - - - 0x026E3F 09:AE2F: 6A        ROR
C - - - - - 0x026E40 09:AE30: 5D 80 04  EOR ram_obj_spd_X_hi,X ; 0480 0481 0482 
C - - - - - 0x026E43 09:AE33: 10 05     BPL bra_AE3A
C - - - - - 0x026E45 09:AE35: 60        RTS
bra_AE36:
C - - - - - 0x026E46 09:AE36: E8        INX
C - - - - - 0x026E47 09:AE37: 88        DEY
C - - - - - 0x026E48 09:AE38: F0 EF     BEQ bra_AE29_loop
bra_AE3A:
loc_AE3A:
C D 1 - - - 0x026E4A 09:AE3A: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 0482 
C - - - - - 0x026E4D 09:AE3D: 99 80 04  STA ram_obj_spd_X_hi,Y ; 0480 0481 057F 
C - - - - - 0x026E50 09:AE40: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 0492 
C - - - - - 0x026E53 09:AE43: 99 90 04  STA ram_obj_spd_X_lo,Y ; 0490 0491 058F 
C - - - - - 0x026E56 09:AE46: 60        RTS
bra_AE47:
C - - - - - 0x026E57 09:AE47: E8        INX
C - - - - - 0x026E58 09:AE48: 88        DEY
C - - - - - 0x026E59 09:AE49: F0 08     BEQ bra_AE53
bra_AE4B:
C - - - - - 0x026E5B 09:AE4B: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 0482 0483 
C - - - - - 0x026E5E 09:AE4E: 1D 90 04  ORA ram_obj_spd_X_lo,X ; 0490 0491 0492 0493 
C - - - - - 0x026E61 09:AE51: F0 0D     BEQ bra_AE60
bra_AE53:
C - - - - - 0x026E63 09:AE53: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0443 
C - - - - - 0x026E66 09:AE56: D9 40 04  CMP ram_obj_pos_X_lo,Y ; 0440 0441 053E 
C - - - - - 0x026E69 09:AE59: 6A        ROR
C - - - - - 0x026E6A 09:AE5A: 5D 80 04  EOR ram_obj_spd_X_hi,X ; 0480 0481 0483 
C - - - - - 0x026E6D 09:AE5D: 10 1E     BPL bra_AE7D
C - - - - - 0x026E6F 09:AE5F: 60        RTS
bra_AE60:
C - - - - - 0x026E70 09:AE60: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0442 0443 
C - - - - - 0x026E73 09:AE63: D9 40 04  CMP ram_obj_pos_X_lo,Y ; 0440 0441 053E 053F 
C - - - - - 0x026E76 09:AE66: A9 00     LDA #$00
C - - - - - 0x026E78 09:AE68: B0 02     BCS bra_AE6C
C - - - - - 0x026E7A 09:AE6A: A9 FF     LDA #$FF
bra_AE6C:
C - - - - - 0x026E7C 09:AE6C: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 0482 0483 
C - - - - - 0x026E7F 09:AE6F: 49 FF     EOR #$FF
C - - - - - 0x026E81 09:AE71: 99 80 04  STA ram_obj_spd_X_hi,Y ; 0480 0481 057E 057F 
C - - - - - 0x026E84 09:AE74: A9 80     LDA #$80
C - - - - - 0x026E86 09:AE76: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0490 0491 0492 0493 
C - - - - - 0x026E89 09:AE79: 99 90 04  STA ram_obj_spd_X_lo,Y ; 0490 0491 058E 058F 
C - - - - - 0x026E8C 09:AE7C: 60        RTS
bra_AE7D:
C - - - - - 0x026E8D 09:AE7D: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x026E90 09:AE80: 0A        ASL
C - - - - - 0x026E91 09:AE81: 7E 80 04  ROR ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x026E94 09:AE84: 7E 90 04  ROR ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x026E97 09:AE87: 4C 3A AE  JMP loc_AE3A



loc_AE8A:
C D 1 - - - 0x026E9A 09:AE8A: 20 E3 AE  JSR sub_AEE3    ; возможен PLA PLA
C - - - - - 0x026E9D 09:AE8D: 88        DEY
C - - - - - 0x026E9E 09:AE8E: E8        INX
C - - - - - 0x026E9F 09:AE8F: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0441 
C - - - - - 0x026EA2 09:AE92: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0440 
C - - - - - 0x026EA5 09:AE95: B0 02     BCS bra_AE99
C - - - - - 0x026EA7 09:AE97: 88        DEY
C - - - - - 0x026EA8 09:AE98: E8        INX
bra_AE99:
C - - - - - 0x026EA9 09:AE99: A9 AF     LDA #con_координата_пола - $01
C - - - - - 0x026EAB 09:AE9B: D9 10 04  CMP ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x026EAE 09:AE9E: 90 05     BCC bra_AEA5
C - - - - - 0x026EB0 09:AEA0: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x026EB3 09:AEA3: B0 12     BCS bra_AEB7
bra_AEA5:
C - - - - - 0x026EB5 09:AEA5: B9 80 04  LDA ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x026EB8 09:AEA8: 69 02     ADC #$02
C - - - - - 0x026EBA 09:AEAA: 99 80 04  STA ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x026EBD 09:AEAD: 38        SEC
C - - - - - 0x026EBE 09:AEAE: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x026EC1 09:AEB1: E9 02     SBC #$02
C - - - - - 0x026EC3 09:AEB3: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x026EC6 09:AEB6: 60        RTS
bra_AEB7:
C - - - - - 0x026EC7 09:AEB7: 18        CLC
C - - - - - 0x026EC8 09:AEB8: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x026ECB 09:AEBB: 79 90 04  ADC ram_obj_spd_X_lo,Y ; 0490 0491 
C - - - - - 0x026ECE 09:AEBE: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x026ED1 09:AEC1: 99 90 04  STA ram_obj_spd_X_lo,Y ; 0490 0491 
C - - - - - 0x026ED4 09:AEC4: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x026ED7 09:AEC7: 79 80 04  ADC ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x026EDA 09:AECA: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x026EDD 09:AECD: 99 80 04  STA ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x026EE0 09:AED0: 18        CLC
C - - - - - 0x026EE1 09:AED1: B9 80 04  LDA ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x026EE4 09:AED4: 69 01     ADC #$01
C - - - - - 0x026EE6 09:AED6: 99 80 04  STA ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x026EE9 09:AED9: 38        SEC
C - - - - - 0x026EEA 09:AEDA: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x026EED 09:AEDD: E9 01     SBC #$01
C - - - - - 0x026EEF 09:AEDF: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x026EF2 09:AEE2: 60        RTS



sub_AEE3:
C - - - - - 0x026EF3 09:AEE3: A2 01     LDX #$01
C - - - - - 0x026EF5 09:AEE5: A0 00     LDY #$00
bra_AEE7_loop:
C - - - - - 0x026EF7 09:AEE7: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x026EFA 09:AEEA: C9 E8     CMP #$E8
C - - - - - 0x026EFC 09:AEEC: B0 09     BCS bra_AEF7
C - - - - - 0x026EFE 09:AEEE: C9 19     CMP #$19
C - - - - - 0x026F00 09:AEF0: 90 2C     BCC bra_AF1E
C - - - - - 0x026F02 09:AEF2: C8        INY
C - - - - - 0x026F03 09:AEF3: CA        DEX
C - - - - - 0x026F04 09:AEF4: 10 F1     BPL bra_AEE7_loop
C - - - - - 0x026F06 09:AEF6: 60        RTS
bra_AEF7:
C - - - - - 0x026F07 09:AEF7: A9 B0     LDA #con_координата_пола
C - - - - - 0x026F09 09:AEF9: D9 10 04  CMP ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x026F0C 09:AEFC: D0 0E     BNE bra_AF0C
C - - - - - 0x026F0E 09:AEFE: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x026F11 09:AF01: F0 0D     BEQ bra_AF10
C - - - - - 0x026F13 09:AF03: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x026F16 09:AF06: C9 E8     CMP #$E8
C - - - - - 0x026F18 09:AF08: 90 02     BCC bra_AF0C
C - - - - - 0x026F1A 09:AF0A: 8A        TXA
C - - - - - 0x026F1B 09:AF0B: A8        TAY
bra_AF0C:
C - - - - - 0x026F1C 09:AF0C: A9 FD     LDA #$FD
C - - - - - 0x026F1E 09:AF0E: D0 25     BNE bra_AF35    ; jmp
bra_AF10:
C - - - - - 0x026F20 09:AF10: 38        SEC
C - - - - - 0x026F21 09:AF11: A9 E9     LDA #$E9
C - - - - - 0x026F23 09:AF13: E5 04     SBC ram_0004
bra_AF15:
C - - - - - 0x026F25 09:AF15: 99 40 04  STA ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x026F28 09:AF18: A9 80     LDA #$80
C - - - - - 0x026F2A 09:AF1A: 99 50 04  STA ram_obj_spd_X_fr,Y ; 0450 0451 
C - - - - - 0x026F2D 09:AF1D: 60        RTS
bra_AF1E:
C - - - - - 0x026F2E 09:AF1E: A9 B0     LDA #con_координата_пола
C - - - - - 0x026F30 09:AF20: D9 10 04  CMP ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x026F33 09:AF23: D0 0E     BNE bra_AF33
C - - - - - 0x026F35 09:AF25: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x026F38 09:AF28: F0 1F     BEQ bra_AF49
C - - - - - 0x026F3A 09:AF2A: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x026F3D 09:AF2D: C9 19     CMP #$19
C - - - - - 0x026F3F 09:AF2F: B0 02     BCS bra_AF33
- - - - - - 0x026F41 09:AF31: 8A        TXA
- - - - - - 0x026F42 09:AF32: A8        TAY
bra_AF33:
C - - - - - 0x026F43 09:AF33: A9 02     LDA #$02
bra_AF35:
C - - - - - 0x026F45 09:AF35: 48        PHA
C - - - - - 0x026F46 09:AF36: 18        CLC
C - - - - - 0x026F47 09:AF37: B9 90 04  LDA ram_obj_spd_X_lo,Y ; 0490 0491 
C - - - - - 0x026F4A 09:AF3A: 69 80     ADC #$80
C - - - - - 0x026F4C 09:AF3C: 99 90 04  STA ram_obj_spd_X_lo,Y ; 0490 0491 
C - - - - - 0x026F4F 09:AF3F: 68        PLA
C - - - - - 0x026F50 09:AF40: 79 80 04  ADC ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x026F53 09:AF43: 99 80 04  STA ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x026F56 09:AF46: 68        PLA
C - - - - - 0x026F57 09:AF47: 68        PLA
C - - - - - 0x026F58 09:AF48: 60        RTS
bra_AF49:
C - - - - - 0x026F59 09:AF49: 18        CLC
C - - - - - 0x026F5A 09:AF4A: A9 17     LDA #$17
C - - - - - 0x026F5C 09:AF4C: 65 04     ADC ram_0004
C - - - - - 0x026F5E 09:AF4E: D0 C5     BNE bra_AF15    ; jmp



ofs_061_8182_03_обработать_состояния_персов:
C - - J - - 0x024192 09:8182: 20 6A D0  JSR sub_0x03DB4C_очистить_spd_X
C - - - - - 0x024195 09:8185: 20 8B 81  JSR sub_818B_обработчик_состояний_персов
C D 1 - - - 0x026F60 09:AF50: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x026F63 09:AF53: B9 7F AF  LDA tbl_AF7F_индекс,Y
C - - - - - 0x026F66 09:AF56: A8        TAY
bra_AF57_loop:
C - - - - - 0x026F67 09:AF57: B9 86 AF  LDA tbl_AF86,Y
C - - - - - 0x026F6A 09:AF5A: F0 09     BEQ bra_AF65
C - - - - - 0x026F6C 09:AF5C: DD 00 04  CMP ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x026F6F 09:AF5F: F0 17     BEQ bra_AF78
C - - - - - 0x026F71 09:AF61: C8        INY
C - - - - - 0x026F72 09:AF62: C8        INY
C - - - - - 0x026F73 09:AF63: D0 F2     BNE bra_AF57_loop
bra_AF65:
C - - - - - 0x026F75 09:AF65: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
C - - - - - 0x026F78 09:AF68: 0A        ASL
C - - - - - 0x026F79 09:AF69: A8        TAY
C - - - - - 0x026F7A 09:AF6A: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x026F7D 09:AF6D: C9 07     CMP #con_plr_state_сидит
C - - - - - 0x026F7F 09:AF6F: D0 01     BNE bra_AF72
C - - - - - 0x026F81 09:AF71: C8        INY
bra_AF72:
C - - - - - 0x026F82 09:AF72: B9 AE AF  LDA tbl_AFAE,Y
C - - - - - 0x026F85 09:AF75: 4C 7B AF  BNE bra_AF7B    ; jmp
bra_AF78:
C - - - - - 0x026F88 09:AF78: B9 87 AF  LDA tbl_AF86 + $01,Y
bra_AF7B:
C D 1 - - - 0x026F8B 09:AF7B: 9D 70 05  STA ram_0570_obj,X ; 0570 0571 
C - - - - - 0x026F8E 09:AF7E: 60        RTS



tbl_AF7F_индекс:
- D 1 - - - 0x026F8F 09:AF7F: 00        .byte off_AF86_00_leo - tbl_AF87    ; con_fighter_leo
- D 1 - - - 0x026F90 09:AF80: 00        .byte off_AF86_01_raph - tbl_AF87    ; con_fighter_raph
- D 1 - - - 0x026F91 09:AF81: 00        .byte off_AF86_02_mike - tbl_AF87    ; con_fighter_mike
- D 1 - - - 0x026F92 09:AF82: 00        .byte off_AF86_03_don - tbl_AF87    ; con_fighter_don
- D 1 - - - 0x026F93 09:AF83: 09        .byte off_AF8F_04_casey - tbl_AF87    ; con_fighter_casey
- D 1 - - - 0x026F94 09:AF84: 18        .byte off_AF9E_05_hot - tbl_AF87    ; con_fighter_hot
- D 1 - - - 0x026F95 09:AF85: 21        .byte off_AFA7_06_shred - tbl_AF87    ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte off_AF86_07 - tbl_AF87    ; con_fighter___leo
                                        .byte off_AF86_08 - tbl_AF87    ; con_fighter___raph
                                        .byte off_AF86_09 - tbl_AF87    ; con_fighter___mike
                                        .byte off_AF86_0A - tbl_AF87    ; con_fighter___don
                                        .byte off_AF8F_0B - tbl_AF87    ; con_fighter___casey
                                        .byte off_AF9E_0C - tbl_AF87    ; con_fighter___hot
                                        .byte off_AFA7_0D - tbl_AF87    ; con_fighter___shred
                                    .endif



tbl_AF86:
tbl_AF87:
off_AF86_00_leo:
off_AF86_07:
off_AF86_01_raph:
off_AF86_08:
off_AF86_02_mike:
off_AF86_09:
off_AF86_03_don:
off_AF86_0A:
- D 1 - - - 0x026F96 09:AF86: DA        .byte $DA, $16   ; 
- D 1 - - - 0x026F98 09:AF88: 99        .byte $99, $07   ; 
- D 1 - - - 0x026F9A 09:AF8A: A5        .byte $A5, $18   ; 
- D 1 - - - 0x026F9C 09:AF8C: A6        .byte $A6, $18   ; 
- D 1 - - - 0x026F9E 09:AF8E: 00        .byte $00   ; 

off_AF8F_04_casey:
off_AF8F_0B:
- D 1 - - - 0x026F9F 09:AF8F: D2        .byte $D2, $17   ; 
- D 1 - - - 0x026FA1 09:AF91: D3        .byte $D3, $17   ; 
- D 1 - - - 0x026FA3 09:AF93: D4        .byte $D4, $17   ; 
- D 1 - - - 0x026FA5 09:AF95: D5        .byte $D5, $17   ; 
- D 1 - - - 0x026FA7 09:AF97: A7        .byte $A7, $18   ; 
- D 1 - - - 0x026FA9 09:AF99: A8        .byte $A8, $18   ; 
- D 1 - - - 0x026FAB 09:AF9B: A9        .byte $A9, $18   ; 
- D 1 - - - 0x026FAD 09:AF9D: 00        .byte $00   ; 

off_AF9E_05_hot:
off_AF9E_0C:
- D 1 - - - 0x026FAE 09:AF9E: A1        .byte $A1, $19   ; 
- D 1 - - - 0x026FB0 09:AFA0: A2        .byte $A2, $19   ; 
- D 1 - - - 0x026FB2 09:AFA2: A3        .byte $A3, $19   ; 
- D 1 - - - 0x026FB4 09:AFA4: B5        .byte $B5, $1C   ; 
- D 1 - - - 0x026FB6 09:AFA6: 00        .byte $00   ; 

off_AFA7_06_shred:
off_AFA7_0D:
- D 1 - - - 0x026FB7 09:AFA7: A6        .byte $A6, $18   ; 
- D 1 - - - 0x026FB9 09:AFA9: A7        .byte $A7, $18   ; 
- D 1 - - - 0x026FBB 09:AFAB: A8        .byte $A8, $18   ; 
- D 1 - - - 0x026FBD 09:AFAD: 00        .byte $00   ; 



tbl_AFAE:
;                                              +---------- 00 не сидит
;                                              |    +----- 01 сидит
;                                              |    |
- D 1 - - - 0x026FBE 09:AFAE: 01        .byte $01, $07   ; 00 con_fighter_leo
- D 1 - - - 0x026FC0 09:AFB0: 01        .byte $01, $07   ; 01 con_fighter_raph
- D 1 - - - 0x026FC2 09:AFB2: 01        .byte $01, $07   ; 02 con_fighter_mike
- D 1 - - - 0x026FC4 09:AFB4: 01        .byte $01, $07   ; 03 con_fighter_don
- D 1 - - - 0x026FC6 09:AFB6: 01        .byte $01, $07   ; 04 con_fighter_casey
- D 1 - - - 0x026FC8 09:AFB8: 09        .byte $09, $0A   ; 05 con_fighter_hot
- D 1 - - - 0x026FCA 09:AFBA: 0F        .byte $0F, $11   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $01, $07   ; 07 con_fighter___leo
                                        .byte $01, $07   ; 08 con_fighter___raph
                                        .byte $01, $07   ; 09 con_fighter___mike
                                        .byte $01, $07   ; 0A con_fighter___don
                                        .byte $01, $07   ; 0B con_fighter___casey
                                        .byte $09, $0A   ; 0C con_fighter___hot
                                        .byte $0F, $11   ; 0D con_fighter___shred
                                    .endif



tbl_AFBC_звук_получения_удара:
- D 1 - - - 0x026FCC 09:AFBC: 13        .byte con_075C_13   ; 00
- D 1 - - - 0x026FCD 09:AFBD: 10        .byte con_075C_10   ; 01
- D 1 - - - 0x026FCE 09:AFBE: 0F        .byte con_075C_0F   ; 02
- D 1 - - - 0x026FCF 09:AFBF: 10        .byte con_075C_10   ; 03
- D 1 - - - 0x026FD0 09:AFC0: 21        .byte con_075C_21   ; 04
- D 1 - - - 0x026FD1 09:AFC1: 0D        .byte con_075C_0D   ; 05
- D 1 - - - 0x026FD2 09:AFC2: 0E        .byte con_075C_0E   ; 06
- D 1 - - - 0x026FD3 09:AFC3: 0D        .byte con_075C_0D   ; 07
- D 1 - - - 0x026FD4 09:AFC4: 21        .byte con_075C_21   ; 08
- D 1 - - - 0x026FD5 09:AFC5: 21        .byte con_075C_21   ; 09
- D 1 - - - 0x026FD6 09:AFC6: 0F        .byte con_075C_0F   ; 0A
- D 1 - - - 0x026FD7 09:AFC7: 13        .byte con_075C_13   ; 0B
- D 1 - - - 0x026FD8 09:AFC8: 13        .byte con_075C_13   ; 0C
- D 1 - - - 0x026FD9 09:AFC9: 12        .byte con_075C_12   ; 0D
- D 1 - - - 0x026FDA 09:AFCA: 13        .byte con_075C_13   ; 0E
- D 1 - - - 0x026FDB 09:AFCB: 0F        .byte con_075C_0F   ; 0F
- D 1 - - - 0x026FDC 09:AFCC: 0F        .byte con_075C_0F   ; 10
- D 1 - - - 0x026FDD 09:AFCD: 0D        .byte con_075C_0D   ; 11
- - - - - - 0x026FDE 09:AFCE: 0E        .byte con_075C_0E   ; 12
- D 1 - - - 0x026FDF 09:AFCF: 10        .byte con_075C_10   ; 13
- D 1 - - - 0x026FE0 09:AFD0: 21        .byte con_075C_21   ; 14
- D 1 - - - 0x026FE1 09:AFD1: 12        .byte con_075C_12   ; 15
- D 1 - - - 0x026FE2 09:AFD2: 10        .byte con_075C_10   ; 16
- D 1 - - - 0x026FE3 09:AFD3: 21        .byte con_075C_21   ; 17
- D 1 - - - 0x026FE4 09:AFD4: 13        .byte con_075C_13   ; 18
- D 1 - - - 0x026FE5 09:AFD5: 0C        .byte con_075C_0C   ; 19
- D 1 - - - 0x026FE6 09:AFD6: 10        .byte con_075C_10   ; 1A
- - - - - - 0x026FE7 09:AFD7: 10        .byte con_075C_10   ; 1B
- - - - - - 0x026FE8 09:AFD8: 0D        .byte con_075C_0D   ; 1C
- D 1 - - - 0x026FE9 09:AFD9: 0C        .byte con_075C_0C   ; 1D
- D 1 - - - 0x026FEA 09:AFDA: 13        .byte con_075C_13   ; 1E
- D 1 - - - 0x026FEB 09:AFDB: 13        .byte con_075C_13   ; 1F
- - - - - - 0x026FEC 09:AFDC: 21        .byte con_075C_21   ; 20
- D 1 - - - 0x026FED 09:AFDD: 12        .byte con_075C_12   ; 21
- - - - - - 0x026FEE 09:AFDE: 12        .byte con_075C_12   ; 22
- D 1 - - - 0x026FEF 09:AFDF: 13        .byte con_075C_13   ; 23
- D 1 - - - 0x026FF0 09:AFE0: 0C        .byte con_075C_0C   ; 24
- D 1 - - - 0x026FF1 09:AFE1: 0D        .byte con_075C_0D   ; 25
- D 1 - - - 0x026FF2 09:AFE2: 10        .byte con_075C_10   ; 26
- D 1 - - - 0x026FF3 09:AFE3: 12        .byte con_075C_12   ; 27
- - - - - - 0x026FF4 09:AFE4: 10        .byte con_075C_10   ; 28
- D 1 - - - 0x026FF5 09:AFE5: 0D        .byte con_075C_0D   ; 29
- D 1 - - - 0x026FF6 09:AFE6: 0E        .byte con_075C_0E   ; 2A
- D 1 - - - 0x026FF7 09:AFE7: 13        .byte con_075C_13   ; 2B
- D 1 - - - 0x026FF8 09:AFE8: 21        .byte con_075C_21   ; 2C
- D 1 - - - 0x026FF9 09:AFE9: 0E        .byte con_075C_0E   ; 2D
- - - - - - 0x026FFA 09:AFEA: 13        .byte con_075C_13   ; 2E
                                        .byte con_075C_0F   ; 2F
                                        .byte con_075C_21   ; 30 rezerv
                                        .byte con_075C_21   ; 31 rezerv
                                        .byte con_075C_21   ; 32 rezerv
                                        .byte con_075C_21   ; 33 rezerv
                                        .byte con_075C_21   ; 34 rezerv
                                        .byte con_075C_21   ; 35 rezerv
                                        .byte con_075C_21   ; 36 rezerv
                                        .byte con_075C_21   ; 37 rezerv
                                        .byte con_075C_21   ; 38 rezerv
                                        .byte con_075C_21   ; 39 rezerv
                                        .byte con_075C_21   ; 3A rezerv
                                        .byte con_075C_21   ; 3B rezerv
                                        .byte con_075C_21   ; 3C rezerv
                                        .byte con_075C_21   ; 3D rezerv
                                        .byte con_075C_21   ; 3E rezerv
- D 1 - - - 0x026FFB 09:AFEB: 1F        .byte con_075C_1F   ; 3F
- D 1 - - - 0x026FFC 09:AFEC: 1F        .byte con_075C_1F   ; 40
- D 1 - - - 0x026FFD 09:AFED: 1F        .byte con_075C_1F   ; 41
- D 1 - - - 0x026FFE 09:AFEE: 1F        .byte con_075C_1F   ; 42
- D 1 - - - 0x026FFF 09:AFEF: 1F        .byte con_075C_1F   ; 43
- - - - - - 0x027000 09:AFF0: 1F        .byte con_075C_1F   ; 44
- D 1 - - - 0x027001 09:AFF1: 1F        .byte con_075C_1F   ; 45
- D 1 - - - 0x027002 09:AFF2: 12        .byte con_075C_12   ; 46
- D 1 - - - 0x027003 09:AFF3: 1F        .byte con_075C_1F   ; 47
- D 1 - - - 0x027004 09:AFF4: 1F        .byte con_075C_1F   ; 48
- D 1 - - - 0x027005 09:AFF5: 12        .byte con_075C_12   ; 49



sub_AFF6_отрисовать_инфу_в_статусбаре:
sub_0x027006_отрисовать_инфу_в_статусбаре:
C - - - - - 0x027006 09:AFF6: A2 00     LDX #$00
C - - - - - 0x027008 09:AFF8: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x02700A 09:AFFA: C9 03     CMP #$03
C - - - - - 0x02700C 09:AFFC: F0 0C     BEQ bra_B00A    ; if con_gm_vs_team
C - - - - - 0x02700E 09:AFFE: B0 68     BCS bra_B068_RTS    ; if con_gm_tournament
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
C - - - - - 0x027010 09:B000: AD 56 01  LDA ram_tournament_индекс_игрока + $01
C - - - - - 0x027013 09:B003: 6D 55 01  ADC ram_tournament_индекс_игрока
C - - - - - 0x027016 09:B006: B0 60     BCS bra_B068_RTS
C - - - - - 0x027018 09:B008: 30 01     BMI bra_B00B
bra_B00A:
C - - - - - 0x02701A 09:B00A: E8        INX
bra_B00B:
C - - - - - 0x02701B 09:B00B: 86 00     STX ram_0000
bra_B00D:
C - - - - - 0x02701D 09:B00D: A6 00     LDX ram_0000
C - - - - - 0x02701F 09:B00F: BD 18 B1  LDA tbl_B118_ppu_lo,X
C - - - - - 0x027022 09:B012: A8        TAY
C - - - - - 0x027023 09:B013: 4C 0E E9  JMP loc_0x03E91E_отрисовать_инфу_в_статусбаре



loc_0x027026_отрисовать_1p_2p_в_статусбаре_и_очки:
C D 1 - - - 0x027026 09:B016: A5 00     LDA ram_0000
C - - - - - 0x027028 09:B018: 18        CLC
C - - - - - 0x027029 09:B019: 69 82     ADC #$82
C - - - - - 0x02702B 09:B01B: 20 66 D2  JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x02702E 09:B01E: A9 9A     LDA #$9A
C - - - - - 0x027030 09:B020: 20 66 D2  JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
loc_0x027033_отрисовать_очки_в_статусбаре:
C D 1 - - - 0x027033 09:B023: A9 00     LDA #$00
C - - - - - 0x027035 09:B025: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x027038 09:B028: A9 00     LDA #$00
C - - - - - 0x02703A 09:B02A: 85 01     STA ram_0001
C - - - - - 0x02703C 09:B02C: A5 00     LDA ram_0000
C - - - - - 0x02703E 09:B02E: 0A        ASL
C - - - - - 0x02703F 09:B02F: 0A        ASL
C - - - - - 0x027040 09:B030: AA        TAX
C - - - - - 0x027041 09:B031: A0 03     LDY #$03
bra_B033_loop:
C - - - - - 0x027043 09:B033: B5 AE     LDA ram_score,X ; 00AE 00AF 00B0 00B1 00B2 00B3 00B4 00B5 
C - - - - - 0x027045 09:B035: 05 01     ORA ram_0001
C - - - - - 0x027047 09:B037: 85 01     STA ram_0001
C - - - - - 0x027049 09:B039: F0 05     BEQ bra_B040
C - - - - - 0x02704B 09:B03B: 18        CLC
C - - - - - 0x02704C 09:B03C: B5 AE     LDA ram_score,X ; 00AF 00B0 00B1 00B3 00B4 00B5 
C - - - - - 0x02704E 09:B03E: 69 81     ADC #$81
bra_B040:
C - - - - - 0x027050 09:B040: 86 02     STX ram_0002
C - - - - - 0x027052 09:B042: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x027055 09:B045: A6 02     LDX ram_0002
C - - - - - 0x027057 09:B047: E8        INX
C - - - - - 0x027058 09:B048: 88        DEY
C - - - - - 0x027059 09:B049: 10 E8     BPL bra_B033_loop
C - - - - - 0x02705B 09:B04B: A5 01     LDA ram_0001
C - - - - - 0x02705D 09:B04D: F0 12     BEQ bra_B061
C - - - - - 0x02705F 09:B04F: 18        CLC
C - - - - - 0x027060 09:B050: AD 12 01  LDA ram_0112
C - - - - - 0x027063 09:B053: 69 81     ADC #$81
C - - - - - 0x027065 09:B055: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x027068 09:B058: 18        CLC
C - - - - - 0x027069 09:B059: AD 11 01  LDA ram_0111
C - - - - - 0x02706C 09:B05C: 69 81     ADC #$81
loc_0x02706E_ничего_не_рисовать_в_статусбаре:
C - - - - - 0x02706E 09:B05E: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
bra_B061:
C - - - - - 0x027071 09:B061: 20 5B D2  JSR sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x027074 09:B064: C6 00     DEC ram_0000
C - - - - - 0x027076 09:B066: 10 A5     BPL bra_B00D
bra_B068_RTS:
C - - - - - 0x027078 09:B068: 60        RTS



sub_B069:
C D 1 - - - 0x027079 09:B069: 86 17     STX ram_0017
C - - - - - 0x02707B 09:B06B: 84 16     STY ram_0016
C - - - - - 0x02707D 09:B06D: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x027080 09:B070: B9 11 B1  LDA tbl_B111_очки_за_переброс,Y
                                        JSR sub_B0C9_подготовить_адреса_с_очками
C - - - - - 0x027094 09:B084: 8A        TXA
C - - - - - 0x027095 09:B085: 4C B3 B0  JMP loc_B0B3_добавить_очки_игроку



sub_B088:
C - - - - - 0x027098 09:B088: 86 17     STX ram_0017
C - - - - - 0x02709A 09:B08A: 84 16     STY ram_0016
C - - - - - 0x02709C 09:B08C: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x02709E 09:B08E: C9 10     CMP #$10
C - - - - - 0x0270A0 09:B090: 90 04     BCC bra_B096
C - - - - - 0x0270A2 09:B092: A9 01     LDA #$01
C - - - - - 0x0270A4 09:B094: D0 09     BNE bra_B09F    ; jmp
bra_B096:
; bzk bug? нахрена игре читать мяч 0556?
C - - - - - 0x0270A6 09:B096: B9 50 05  LDA ram_obj_id,Y ; 0552 0553 0554 0555 0556 
C - - - - - 0x0270A9 09:B099: 29 7F     AND #$7F
C - - - - - 0x0270AB 09:B09B: AA        TAX
C - - - - - 0x0270AC 09:B09C: BD D7 B0  LDA tbl_B0D7_очки_за_удар,X
bra_B09F:
                                        JSR sub_B0C9_подготовить_адреса_с_очками
C - - - - - 0x0270C0 09:B0B0: B9 20 05  LDA ram_obj_state_hi,Y ; 0522 0523 0524 0525 0526 
loc_B0B3_добавить_очки_игроку:
sub_0x0270C3_добавить_очки_игроку:
C D 1 - - - 0x0270C3 09:B0B3: 0A        ASL
C - - - - - 0x0270C4 09:B0B4: 0A        ASL
C - - - - - 0x0270C5 09:B0B5: 09 03     ORA #$03
C - - - - - 0x0270C7 09:B0B7: A8        TAY
C - - - - - 0x0270C8 09:B0B8: A2 03     LDX #$03
bra_B0BA_loop:
C - - - - - 0x0270CA 09:B0BA: 18        CLC
C - - - - - 0x0270CB 09:B0BB: B9 AE 00  LDA ram_score,Y ; 00AE 00AF 00B0 00B1 00B2 00B3 00B4 00B5 
C - - - - - 0x0270CE 09:B0BE: 75 11     ADC ram_0011,X
C - - - - - 0x0270D0 09:B0C0: C9 0A     CMP #$0A
C - - - - - 0x0270D2 09:B0C2: 90 04     BCC bra_B0C8
C - - - - - 0x0270D4 09:B0C4: E9 0A     SBC #$0A
C - - - - - 0x0270D6 09:B0C6: F6 10     INC ram_0010,X
bra_B0C8:
C - - - - - 0x0270D8 09:B0C8: 99 AE 00  STA ram_score,Y ; 00AE 00AF 00B0 00B1 00B2 00B3 00B4 00B5 
C - - - - - 0x0270DB 09:B0CB: 88        DEY
C - - - - - 0x0270DC 09:B0CC: CA        DEX
C - - - - - 0x0270DD 09:B0CD: 10 EB     BPL bra_B0BA_loop
C - - - - - 0x0270DF 09:B0CF: A6 17     LDX ram_0017
C - - - - - 0x0270E1 09:B0D1: A4 16     LDY ram_0016
C - - - - - 0x0270E3 09:B0D3: EE 35 06  INC ram_0635_флаг_обновления_очков
C - - - - - 0x0270E6 09:B0D6: 60        RTS



sub_B0C9_подготовить_адреса_с_очками:
C - - - - - 0x0270AF 09:B09F: 48        PHA
C - - - - - 0x0270B0 09:B0A0: 29 0F     AND #$0F
C - - - - - 0x0270B2 09:B0A2: 85 14     STA ram_0014    ; тысячи
C - - - - - 0x0270B4 09:B0A4: 68        PLA
C - - - - - 0x0270B5 09:B0A5: 20 07 D2  JSR sub_0x03D217_LSRx4
C - - - - - 0x0270B8 09:B0A8: 85 13     STA ram_0013    ; сотни
C - - - - - 0x0270BA 09:B0AA: A9 00     LDA #$00
C - - - - - 0x0270BC 09:B0AC: 85 12     STA ram_0012    ; десятки
C - - - - - 0x0270BE 09:B0AE: 85 11     STA ram_0011    ; единицы
                                        RTS



tbl_B0D7_очки_за_удар:
- D 1 - - - 0x0270E7 09:B0D7: 10        .byte $10   ; 00
- D 1 - - - 0x0270E8 09:B0D8: 02        .byte $02   ; 01 черепаха рука дальняя
- D 1 - - - 0x0270E9 09:B0D9: 01        .byte $01   ; 02 черепаха нога ближняя
- D 1 - - - 0x0270EA 09:B0DA: 02        .byte $02   ; 03 черепаха рука в воздухе
- D 1 - - - 0x0270EB 09:B0DB: 02        .byte $02   ; 04 черепаха нога в воздухе
- D 1 - - - 0x0270EC 09:B0DC: 01        .byte $01   ; 05 черепаха рука сидя
- D 1 - - - 0x0270ED 09:B0DD: 01        .byte $01   ; 06 черепаха нога сидя обычная
- D 1 - - - 0x0270EE 09:B0DE: 01        .byte $01   ; 07 черепаха рука ближняя
- D 1 - - - 0x0270EF 09:B0DF: 02        .byte $02   ; 08 черепаха нога дальняя обычная
- D 1 - - - 0x0270F0 09:B0E0: 02        .byte $02   ; 09 черепаха нога дальняя raph
- D 1 - - - 0x0270F1 09:B0E1: 01        .byte $01   ; 0A черепаха нога сидя leo
- D 1 - - - 0x0270F2 09:B0E2: 01        .byte $01   ; 0B черепаха деш локтем
- D 1 - - - 0x0270F3 09:B0E3: 02        .byte $02   ; 0C черепаха нога антиэйр
- D 1 - - - 0x0270F4 09:B0E4: 02        .byte $02   ; 0D черепаха рука антиэйр
- D 1 - - - 0x0270F5 09:B0E5: 02        .byte $02   ; 0E черепаха деш ногой
- D 1 - - - 0x0270F6 09:B0E6: 01        .byte $01   ; 0F casey рука дальняя
- D 1 - - - 0x0270F7 09:B0E7: 01        .byte $01   ; 10 casey нога ближняя
- D 1 - - - 0x0270F8 09:B0E8: 01        .byte $01   ; 11 casey рука сидя
- - - - - - 0x0270F9 09:B0E9: 01        .byte $01   ; 12 casey нога сидя
- D 1 - - - 0x0270FA 09:B0EA: 02        .byte $02   ; 13 casey рука ближняя
- D 1 - - - 0x0270FB 09:B0EB: 02        .byte $02   ; 14 casey нога дальняя
- D 1 - - - 0x0270FC 09:B0EC: 03        .byte $03   ; 15 casey рука антиэйр
- D 1 - - - 0x0270FD 09:B0ED: 02        .byte $02   ; 16 casey рука в воздухе
- D 1 - - - 0x0270FE 09:B0EE: 02        .byte $02   ; 17 casey нога в воздухе
- D 1 - - - 0x0270FF 09:B0EF: 02        .byte $02   ; 18 casey нога антиэйр
- D 1 - - - 0x027100 09:B0F0: 01        .byte $01   ; 19 hot рука ближняя
- D 1 - - - 0x027101 09:B0F1: 02        .byte $02   ; 1A hot рука дальняя
- - - - - - 0x027102 09:B0F2: 02        .byte $02   ; 1B hot рука в воздухе
- - - - - - 0x027103 09:B0F3: 01        .byte $01   ; 1C hot рука сидя
- D 1 - - - 0x027104 09:B0F4: 01        .byte $01   ; 1D hot нога ближняя
- D 1 - - - 0x027105 09:B0F5: 02        .byte $02   ; 1E hot нога дальняя
- D 1 - - - 0x027106 09:B0F6: 02        .byte $02   ; 1F hot нога в воздухе
- - - - - - 0x027107 09:B0F7: 01        .byte $01   ; 20 hot нога сидя
- D 1 - - - 0x027108 09:B0F8: 03        .byte $03   ; 21 hot бабочка
- - - - - - 0x027109 09:B0F9: 02        .byte $02   ; 22 hot рука антиэйр
- D 1 - - - 0x02710A 09:B0FA: 03        .byte $03   ; 23 hot нога антиэйр
- D 1 - - - 0x02710B 09:B0FB: 01        .byte $01   ; 24 shred рука ближняя
- D 1 - - - 0x02710C 09:B0FC: 01        .byte $01   ; 25 shred рука средняя
- D 1 - - - 0x02710D 09:B0FD: 02        .byte $02   ; 26 shred рука дальняя
- D 1 - - - 0x02710E 09:B0FE: 02        .byte $02   ; 27 shred рука антиэйр
- - - - - - 0x02710F 09:B0FF: 02        .byte $02   ; 28 shred рука в воздухе
- D 1 - - - 0x027110 09:B100: 01        .byte $01   ; 29 shred рука сидя
- D 1 - - - 0x027111 09:B101: 01        .byte $01   ; 2A shred нога ближняя
- D 1 - - - 0x027112 09:B102: 02        .byte $02   ; 2B shred нога дальняя
- D 1 - - - 0x027113 09:B103: 02        .byte $02   ; 2C shred нога в воздухе
- D 1 - - - 0x027114 09:B104: 01        .byte $01   ; 2D shred нога сидя
- - - - - - 0x027115 09:B105: 02        .byte $02   ; 2E shred нога антиэйр
                                        .byte $01   ; 2F hot ручка быстрая
                                        .byte $00   ; 30 rezerv
                                        .byte $00   ; 31 rezerv
                                        .byte $00   ; 32 rezerv
                                        .byte $00   ; 33 rezerv
                                        .byte $00   ; 34 rezerv
                                        .byte $00   ; 35 rezerv
                                        .byte $00   ; 36 rezerv
                                        .byte $00   ; 37 rezerv
                                        .byte $00   ; 38 rezerv
                                        .byte $00   ; 39 rezerv
                                        .byte $00   ; 3A rezerv
                                        .byte $00   ; 3B rezerv
                                        .byte $00   ; 3C rezerv
                                        .byte $00   ; 3D rezerv
                                        .byte $00   ; 3E rezerv
- D 1 - - - 0x027116 09:B106: 10        .byte $10   ; 3F special hot огонь
- D 1 - - - 0x027117 09:B107: 10        .byte $10   ; 40 special shred волна
- D 1 - - - 0x027118 09:B108: 10        .byte $10   ; 41 special leo крутилка
- D 1 - - - 0x027119 09:B109: 10        .byte $10   ; 42 special raph сверло
- D 1 - - - 0x02711A 09:B10A: 10        .byte $10   ; 43 special mike ракеты понизу
- - - - - - 0x02711B 09:B10B: 10        .byte $10   ; 44 special mike ракеты поверху
- D 1 - - - 0x02711C 09:B10C: 10        .byte $10   ; 45 special don пила вращение
- D 1 - - - 0x02711D 09:B10D: 10        .byte $10   ; 46 special shred мясо
- D 1 - - - 0x02711E 09:B10E: 10        .byte $10   ; 47 special casey клюшка
- D 1 - - - 0x02711F 09:B10F: 10        .byte $10   ; 48 special don пила подкат
- D 1 - - - 0x027120 09:B110: 10        .byte $10   ; 49 special casey песок



tbl_B111_очки_за_переброс:
- D 1 - - - 0x027121 09:B111: 10        .byte $10 + $00   ; 00 con_fighter_leo
- D 1 - - - 0x027122 09:B112: 08        .byte $00 + $08   ; 01 con_fighter_raph
- D 1 - - - 0x027123 09:B113: 10        .byte $10 + $00   ; 02 con_fighter_mike
- D 1 - - - 0x027124 09:B114: 10        .byte $10 + $00   ; 03 con_fighter_don
- D 1 - - - 0x027125 09:B115: 10        .byte $10 + $00   ; 04 con_fighter_casey
- D 1 - - - 0x027126 09:B116: 10        .byte $10 + $00   ; 05 con_fighter_hot
- D 1 - - - 0x027127 09:B117: 15        .byte $10 + $05   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $10 + $00   ; 07 con_fighter___leo
                                        .byte $00 + $08   ; 08 con_fighter___raph
                                        .byte $10 + $00   ; 09 con_fighter___mike
                                        .byte $10 + $00   ; 0A con_fighter___don
                                        .byte $10 + $00   ; 0B con_fighter___casey
                                        .byte $10 + $00   ; 0C con_fighter___hot
                                        .byte $10 + $05   ; 0D con_fighter___shred
                                    .endif



tbl_B118_ppu_lo:
; bzk optimize, добавить hi
- D 1 - - - 0x027128 09:B118: 44        .byte < $2044   ; 00
- D 1 - - - 0x027129 09:B119: 51        .byte < $2051   ; 01



sub_B11A:
C - - - - - 0x02712A 09:B11A: AD 36 04  LDA ram_obj_pos_X_hi + $06
C - - - - - 0x02712D 09:B11D: D0 21     BNE bra_B140
C - - - - - 0x02712F 09:B11F: AD A6 05  LDA ram_05A0_obj_флаги_мяча + $06
C - - - - - 0x027132 09:B122: 29 C0     AND #$C0
C - - - - - 0x027134 09:B124: D0 1A     BNE bra_B140
C - - - - - 0x027136 09:B126: A0 06     LDY #$06
C - - - - - 0x027138 09:B128: 20 0C D2  JSR sub_0x03D21C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x02713B 09:B12B: C9 14     CMP #$14
C - - - - - 0x02713D 09:B12D: B0 10     BCS bra_B13F_RTS
C - - - - - 0x02713F 09:B12F: AD 16 04  LDA ram_obj_pos_Y_lo + $06
C - - - - - 0x027142 09:B132: FD 10 04  SBC ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x027145 09:B135: 90 03     BCC bra_B13A
C - - - - - 0x027147 09:B137: C9 08     CMP #$08
C - - - - - 0x027149 09:B139: 60        RTS
bra_B13A:
C - - - - - 0x02714A 09:B13A: 20 FC D1  JSR sub_0x03D20C_EOR
C - - - - - 0x02714D 09:B13D: C9 20     CMP #$20
bra_B13F_RTS:
C - - - - - 0x02714F 09:B13F: 60        RTS
bra_B140:
C - - - - - 0x027150 09:B140: 38        SEC
C - - - - - 0x027151 09:B141: 60        RTS



ofs_делает_суперку_B35C_00_leo:
ofs_делает_суперку_B35C_07:
C - - J - - 0x02736C 09:B35C: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02736F 09:B35F: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x027372 09:B362: 6A B3     .word ofs_суперка_leo_B36A_00
- D 1 - I - 0x027374 09:B364: 79 B3     .word ofs_суперка_leo_B379_01
- D 1 - I - 0x027376 09:B366: ED B3     .word ofs_суперка_leo_B3ED_02
- D 1 - I - 0x027378 09:B368: 52 B4     .word ofs_суперка_leo_B452_03



ofs_суперка_leo_B36A_00:
C - - J - - 0x02737A 09:B36A: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x02737D 09:B36D: A9 08     LDA #$08
C - - - - - 0x02737F 09:B36F: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x027382 09:B372: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x027385 09:B375: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
bra_B378_RTS:
C - - - - - 0x027388 09:B378: 60        RTS



ofs_суперка_leo_B379_01:
C - - J - - 0x027389 09:B379: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02738C 09:B37C: D0 FA     BNE bra_B378_RTS
C - - - - - 0x02738E 09:B37E: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027391 09:B381: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x027394 09:B384: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x027397 09:B387: A9 31     LDA #con_0552_special_leo_крутилка
C - - - - - 0x027399 09:B389: 20 CC B3  JSR sub_B3CC_записать_спешал_без_звука
C - - - - - 0x02739C 09:B38C: A9 03     LDA #> $0300
C - - - - - 0x02739E 09:B38E: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x0273A1 09:B391: A9 00     LDA #< $0300
C - - - - - 0x0273A3 09:B393: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
; A = 00
; bzk optimize, для читабельности
C - - - - - 0x0273A6 09:B396: 9D C0 04  STA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x0273A9 09:B399: A9 20     LDA #$20
C - - - - - 0x0273AB 09:B39B: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x0273AE 09:B39E: A9 54     LDA #con_dpcm_warcry_turtle_2
C - - - - - 0x0273B0 09:B3A0: 20 94 F6  JSR sub_0x03F6A4_записать_звук
loc_B3A3:
C D 1 - - - 0x0273B3 09:B3A3: A9 04     LDA #$04
C - - - - - 0x0273B5 09:B3A5: 4C 38 DF  JMP loc_0x03DF48



sub_B3A8:
loc_B3A8:
C D 1 - - - 0x0273B8 09:B3A8: 20 EC EF  JSR sub_0x03EFFC
C - - - - - 0x0273BB 09:B3AB: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x0273BE 09:B3AE: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x0273C1 09:B3B1: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x0273C4 09:B3B4: 9D C0 04  STA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x0273C7 09:B3B7: 60        RTS



loc_B3B8:
sub_B3B8:
C D 1 - - - 0x0273C8 09:B3B8: BD B0 04  LDA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x0273CB 09:B3BB: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x0273CE 09:B3BE: BD C0 04  LDA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x0273D1 09:B3C1: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x0273D4 09:B3C4: 60        RTS



sub_B3C5_записать_спешал_со_звуком:
C - - - - - 0x0273D5 09:B3C5: 48        PHA
C - - - - - 0x0273D6 09:B3C6: A9 16     LDA #con_075C_16
C - - - - - 0x0273D8 09:B3C8: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x0273DB 09:B3CB: 68        PLA
sub_B3CC_записать_спешал_без_звука:
C - - - - - 0x0273DC 09:B3CC: 48        PHA
C - - - - - 0x0273DD 09:B3CD: 20 DF B3  JSR sub_B3DF
C - - - - - 0x0273E0 09:B3D0: 68        PLA
C - - - - - 0x0273E1 09:B3D1: 99 50 05  STA ram_obj_id,Y ; 0554 0555 
C - - - - - 0x0273E4 09:B3D4: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0273E7 09:B3D7: 99 10 05  STA ram_obj_flip,Y ; 0514 0515 
C - - - - - 0x0273EA 09:B3DA: 8A        TXA
C - - - - - 0x0273EB 09:B3DB: 99 20 05  STA ram_obj_state_hi,Y ; 0524 0525 
C - - - - - 0x0273EE 09:B3DE: 60        RTS



sub_B3DF:
loc_B3DF:
C D 1 - - - 0x0273EF 09:B3DF: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x0273F2 09:B3E2: 8A        TXA
C - - - - - 0x0273F3 09:B3E3: 29 01     AND #$01
C - - - - - 0x0273F5 09:B3E5: 18        CLC
C - - - - - 0x0273F6 09:B3E6: 69 04     ADC #$04
C - - - - - 0x0273F8 09:B3E8: 9D E0 04  STA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x0273FB 09:B3EB: A8        TAY
bra_B3EC_RTS:
C - - - - - 0x0273FC 09:B3EC: 60        RTS



ofs_суперка_leo_B3ED_02:
C - - J - - 0x0273FD 09:B3ED: 20 5F B4  JSR sub_B45F
C - - - - - 0x027400 09:B3F0: DE C0 05  DEC ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x027403 09:B3F3: 10 1F     BPL bra_B414
C - - - - - 0x027405 09:B3F5: A9 03     LDA #$03
C - - - - - 0x027407 09:B3F7: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x02740A 09:B3FA: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x02740D 09:B3FD: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027410 09:B400: 30 32     BMI bra_B434
C - - - - - 0x027412 09:B402: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027415 09:B405: B9 9D B4  LDA tbl_B49D,Y
C - - - - - 0x027418 09:B408: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x02741B 09:B40B: B9 A4 B4  LDA tbl_B4A4,Y
C - - - - - 0x02741E 09:B40E: 5D D0 04  EOR ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x027421 09:B411: 9D 10 05  STA ram_obj_flip,X ; 0510 0511 
bra_B414:
C - - - - - 0x027424 09:B414: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027427 09:B417: C0 03     CPY #$03
C - - - - - 0x027429 09:B419: B0 18     BCS bra_B433_RTS
C - - - - - 0x02742B 09:B41B: B9 A1 B4  LDA tbl_B4A1,Y
C - - - - - 0x02742E 09:B41E: 20 D4 DE  JSR sub_0x03DEE4
C - - - - - 0x027431 09:B421: BD 5C 04  LDA ram_obj_spd_X_fr + $0C,X ; 045C 045D 
C - - - - - 0x027434 09:B424: 7D 90 04  ADC ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x027437 09:B427: 9D 5C 04  STA ram_obj_spd_X_fr + $0C,X ; 045C 045D 
C - - - - - 0x02743A 09:B42A: BD 4C 04  LDA ram_obj_pos_X_lo + $0C,X ; 044C 044D 
C - - - - - 0x02743D 09:B42D: 7D 80 04  ADC ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x027440 09:B430: 9D 4C 04  STA ram_obj_pos_X_lo + $0C,X ; 044C 044D 
bra_B433_RTS:
C - - - - - 0x027443 09:B433: 60        RTS
bra_B434:
C - - - - - 0x027444 09:B434: DE A0 04  DEC ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x027447 09:B437: 30 03     BMI bra_B43C
C - - - - - 0x027449 09:B439: 4C A3 B3  JMP loc_B3A3
bra_B43C:
C - - - - - 0x02744C 09:B43C: A9 00     LDA #$00
C - - - - - 0x02744E 09:B43E: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x027451 09:B441: A9 0F     LDA #$0F
C - - - - - 0x027453 09:B443: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x027456 09:B446: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x027459 09:B449: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02745C 09:B44C: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x02745F 09:B44F: 4C 67 D0  JMP loc_0x03DB48_очистить_spd_X_и_spd_Z



ofs_суперка_leo_B452_03:
C - - J - - 0x027462 09:B452: A9 8D     LDA #$8D
C - - - - - 0x027464 09:B454: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x027467 09:B457: DE B0 04  DEC ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x02746A 09:B45A: D0 90     BNE bra_B3EC_RTS
C - - - - - 0x02746C 09:B45C: 4C 6D 84  JMP loc_846D



sub_B45F:
C - - - - - 0x02746F 09:B45F: AC 26 01  LDY ram_option_speed
C - - - - - 0x027472 09:B462: BD D0 04  LDA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x027475 09:B465: 0A        ASL
C - - - - - 0x027476 09:B466: 0A        ASL
C - - - - - 0x027477 09:B467: BD B0 04  LDA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x02747A 09:B46A: B0 0C     BCS bra_B478
C - - - - - 0x02747C 09:B46C: D9 95 B4  CMP tbl_B495,Y
C - - - - - 0x02747F 09:B46F: B0 21     BCS bra_B492
C - - - - - 0x027481 09:B471: B9 99 B4  LDA tbl_B499,Y
C - - - - - 0x027484 09:B474: A0 00     LDY #$00
C - - - - - 0x027486 09:B476: F0 0C     BEQ bra_B484    ; jmp
bra_B478:
C - - - - - 0x027488 09:B478: 10 05     BPL bra_B47F
C - - - - - 0x02748A 09:B47A: D9 97 B4  CMP tbl_B497,Y
C - - - - - 0x02748D 09:B47D: 90 13     BCC bra_B492
bra_B47F:
C - - - - - 0x02748F 09:B47F: B9 9B B4  LDA tbl_B49B,Y
C - - - - - 0x027492 09:B482: A0 FF     LDY #$FF
bra_B484:
C - - - - - 0x027494 09:B484: 18        CLC
C - - - - - 0x027495 09:B485: 7D C0 04  ADC ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x027498 09:B488: 9D C0 04  STA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x02749B 09:B48B: 98        TYA
C - - - - - 0x02749C 09:B48C: 7D B0 04  ADC ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x02749F 09:B48F: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
bra_B492:
C - - - - - 0x0274A2 09:B492: 4C B8 B3  JMP loc_B3B8



tbl_B495:
- D 1 - - - 0x0274A5 09:B495: 02        .byte $02   ; 00 normal
- D 1 - - - 0x0274A6 09:B496: 03        .byte $03   ; 01 turbo

tbl_B497:
- D 1 - - - 0x0274A7 09:B497: FE        .byte $FE   ; 00 normal
- D 1 - - - 0x0274A8 09:B498: FD        .byte $FD   ; 01 turbo

tbl_B499:
- D 1 - - - 0x0274A9 09:B499: 0A        .byte $0A   ; 00 normal
- D 1 - - - 0x0274AA 09:B49A: 13        .byte $13   ; 01 turbo

tbl_B49B:
- D 1 - - - 0x0274AB 09:B49B: F6        .byte $F6   ; 00 normal
- D 1 - - - 0x0274AC 09:B49C: ED        .byte $ED   ; 01 turbo



tbl_B49D:
- D 1 - - - 0x0274AD 09:B49D: AA        .byte $AA   ; 00
- D 1 - - - 0x0274AE 09:B49E: A9        .byte $A9   ; 01
- D 1 - - - 0x0274AF 09:B49F: A8        .byte $A8   ; 02
- D 1 - - - 0x0274B0 09:B4A0: 8D        .byte $8D   ; 03

tbl_B4A1:
- D 1 - - - 0x0274B1 09:B4A1: BD        .byte $BD   ; 00
- D 1 - - - 0x0274B2 09:B4A2: BC        .byte $BC   ; 01
- D 1 - - - 0x0274B3 09:B4A3: BB        .byte $BB   ; 02

tbl_B4A4:
- D 1 - - - 0x0274B4 09:B4A4: 00        .byte $00   ; 00
- D 1 - - - 0x0274B5 09:B4A5: 00        .byte $00   ; 01
- D 1 - - - 0x0274B6 09:B4A6: 00        .byte $00   ; 02
- D 1 - - - 0x0274B7 09:B4A7: 40        .byte $40   ; 03



ofs_делает_суперку_B4A8_01_raph:
ofs_делает_суперку_B4A8_08:
C - - J - - 0x0274B8 09:B4A8: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0274BB 09:B4AB: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x0274BE 09:B4AE: BA B4     .word ofs_суперка_raph_B4BA_00
- D 1 - I - 0x0274C0 09:B4B0: CE B4     .word ofs_суперка_raph_B4CE_01
- D 1 - I - 0x0274C2 09:B4B2: 11 B5     .word ofs_суперка_raph_B511_02
- D 1 - I - 0x0274C4 09:B4B4: 6F B5     .word ofs_суперка_raph_B56F_03
- D 1 - I - 0x0274C6 09:B4B6: 9C B5     .word ofs_суперка_raph_B59C_04
- D 1 - I - 0x0274C8 09:B4B8: 94 B5     .word ofs_суперка_raph_B594_05



sub_B4BA:
ofs_суперка_don_B4BA_00:
ofs_суперка_raph_B4BA_00:
C - - J - - 0x0274CA 09:B4BA: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x0274CD 09:B4BD: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0274D0 09:B4C0: A9 01     LDA #$01
C - - - - - 0x0274D2 09:B4C2: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
sub_B4C5:
C - - - - - 0x0274D5 09:B4C5: A9 06     LDA #$06
C - - - - - 0x0274D7 09:B4C7: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x0274DA 09:B4CA: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_B4CD_RTS:
C - - - - - 0x0274DD 09:B4CD: 60        RTS



ofs_суперка_raph_B4CE_01:
C - - J - - 0x0274DE 09:B4CE: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0274E1 09:B4D1: D0 0F     BNE bra_B4E2
C - - - - - 0x0274E3 09:B4D3: 20 C5 B4  JSR sub_B4C5
C - - - - - 0x0274E6 09:B4D6: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x0274E9 09:B4D9: 30 13     BMI bra_B4EE
C - - - - - 0x0274EB 09:B4DB: D0 05     BNE bra_B4E2
C - - - - - 0x0274ED 09:B4DD: A9 54     LDA #con_dpcm_warcry_turtle_2
C - - - - - 0x0274EF 09:B4DF: 20 94 F6  JSR sub_0x03F6A4_записать_звук
bra_B4E2:
C - - - - - 0x0274F2 09:B4E2: A9 99     LDA #$99
C - - - - - 0x0274F4 09:B4E4: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x0274F7 09:B4E7: D0 02     BNE bra_B4EB
C - - - - - 0x0274F9 09:B4E9: A9 C4     LDA #$C4
bra_B4EB:
C - - - - - 0x0274FB 09:B4EB: 4C 0D B9  STA ram_obj_anim_id,X ; 0400 0401 
                                        RTS
bra_B4EE:
C - - - - - 0x0274FE 09:B4EE: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027501 09:B4F1: A9 63     LDA #$63
C - - - - - 0x027503 09:B4F3: 20 A8 B3  JSR sub_B3A8
C - - - - - 0x027506 09:B4F6: A9 32     LDA #con_0552_special_raph_сверло
C - - - - - 0x027508 09:B4F8: 20 CC B3  JSR sub_B3CC_записать_спешал_без_звука
C - - - - - 0x02750B 09:B4FB: 38        SEC
C - - - - - 0x02750C 09:B4FC: BD 41 06  LDA ram_copy_plr_таймер_для_суперки,X ; 0641 0642 
C - - - - - 0x02750F 09:B4FF: E9 0A     SBC #$0A
C - - - - - 0x027511 09:B501: 4A        LSR
C - - - - - 0x027512 09:B502: 69 12     ADC #$12
C - - - - - 0x027514 09:B504: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x027517 09:B507: A9 98     LDA #$98
C - - - - - 0x027519 09:B509: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02751C 09:B50C: A9 0B     LDA #con_sfx_сверло_рафа
C - - - - - 0x02751E 09:B50E: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
ofs_суперка_raph_B511_02:
C - - - - - 0x027521 09:B511: A0 03     LDY #con_D0B3_сверло_рафа
C - - - - - 0x027523 09:B513: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x027526 09:B516: A9 12     LDA #$12
C - - - - - 0x027528 09:B518: 9D 70 05  STA ram_0570_obj,X ; 0570 0571 
C - - - - - 0x02752B 09:B51B: A4 A9     LDY ram_global_obj_index
; ram_0622
C - - - - - 0x02752D 09:B51D: B9 1E 06  LDA ram_061E_plr,Y ; 061E 061F 0622 0623 
C - - - - - 0x027530 09:B520: D0 1C     BNE bra_B53E
C - - - - - 0x027532 09:B522: 20 B8 B3  JSR sub_B3B8
C - - - - - 0x027535 09:B525: DE A0 04  DEC ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x027538 09:B528: 10 A3     BPL bra_B4CD_RTS
C - - - - - 0x02753A 09:B52A: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02753D 09:B52D: A9 00     LDA #$00
C - - - - - 0x02753F 09:B52F: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x027542 09:B532: A9 04     LDA #$04
C - - - - - 0x027544 09:B534: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027547 09:B537: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x02754A 09:B53A: A9 03     LDA #con_DFE6_03
C - - - - - 0x02754C 09:B53C: D0 20     BNE bra_B55E    ; jmp
bra_B53E:
C - - - - - 0x02754E 09:B53E: A9 00     LDA #$00
C - - - - - 0x027550 09:B540: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0470 0471 
C - - - - - 0x027553 09:B543: A9 FD     LDA #$FD
C - - - - - 0x027555 09:B545: AC 26 01  LDY ram_option_speed
C - - - - - 0x027558 09:B548: F0 07     BEQ bra_B551
C - - - - - 0x02755A 09:B54A: A9 80     LDA #$80
C - - - - - 0x02755C 09:B54C: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0470 0471 
C - - - - - 0x02755F 09:B54F: A9 FB     LDA #$FB
bra_B551:
C - - - - - 0x027561 09:B551: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x027564 09:B554: A9 06     LDA #$06
C - - - - - 0x027566 09:B556: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x027569 09:B559: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x02756C 09:B55C: A9 02     LDA #con_DFE6_02
bra_B55E:
C - - - - - 0x02756E 09:B55E: 48        PHA
C - - - - - 0x02756F 09:B55F: A9 AC     LDA #$AC
C - - - - - 0x027571 09:B561: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x027574 09:B564: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027577 09:B567: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x02757A 09:B56A: 68        PLA
C - - - - - 0x02757B 09:B56B: A8        TAY
C - - - - - 0x02757C 09:B56C: 4C 4F DF  JMP loc_0x03DF5F



ofs_суперка_raph_B56F_03:
C - - J - - 0x02757F 09:B56F: 20 6A D0  JSR sub_0x03DB4C_очистить_spd_X
C - - - - - 0x027582 09:B572: A9 41     LDA #$41
; перемещено из банка FF
                                        LDY ram_0095_стадия_игры
                                        CPY #$07
                                        BNE bra_FEDC
                                        LDY ram_option_speed
                                        LDA tbl_8772,Y
bra_FEDC:
                                        JSR sub_0x03D17A
C - - - - - 0x027587 09:B577: A0 02     LDY #con_DFE6_02
bra_B579:
C - - - - - 0x027589 09:B579: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x02758C 09:B57C: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02758F 09:B57F: 90 53     BCC bra_B5D4_RTS
C - - - - - 0x027591 09:B581: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x027594 09:B584: A9 05     LDA #$05
C - - - - - 0x027596 09:B586: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027599 09:B589: A9 08     LDA #$08
C - - - - - 0x02759B 09:B58B: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x02759E 09:B58E: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0275A1 09:B591: 4C 67 D0  JMP loc_0x03DB48_очистить_spd_X_и_spd_Z



ofs_суперка_raph_B594_05:
C - - J - - 0x0275A4 09:B594: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0275A7 09:B597: 10 3B     BPL bra_B5D4_RTS
C - - - - - 0x0275A9 09:B599: 4C E9 DD  JMP loc_0x03DDF9_запись_сидячего_состояния_персу



ofs_суперка_raph_B59C_04:
C - - J - - 0x0275AC 09:B59C: A9 01     LDA #$01
C - - - - - 0x0275AE 09:B59E: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x0275B1 09:B5A1: A0 03     LDY #con_DFE6_03
C - - - - - 0x0275B3 09:B5A3: D0 D4     BNE bra_B579    ; jmp



ofs_делает_суперку_B5A5_02_mike:
ofs_делает_суперку_B5A5_09:
C - - J - - 0x0275B5 09:B5A5: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0275B8 09:B5A8: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x0275BB 09:B5AB: B5 B5     .word ofs_суперка_mike_B5B5_00
- D 1 - I - 0x0275BD 09:B5AD: D5 B5     .word ofs_суперка_mike_B5D5_01
- D 1 - I - 0x0275BF 09:B5AF: 1F B6     .word ofs_суперка_mike_B61F_02
- D 1 - I - 0x0275C1 09:B5B1: 42 B6     .word ofs_суперка_mike_B642_03
- D 1 - I - 0x0275C3 09:B5B3: 6B B6     .word ofs_суперка_mike_B66B_04



ofs_суперка_mike_B5B5_00:
C - - J - - 0x0275C5 09:B5B5: 20 BA B4  JSR sub_B4BA
C - - - - - 0x0275C8 09:B5B8: A9 02     LDA #$02
C - - - - - 0x0275CA 09:B5BA: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x0275CD 09:B5BD: BC 31 06  LDY ram_plr_btn_суперка,X ; 0631 0632 
C - - - - - 0x0275D0 09:B5C0: 30 02     BMI bra_B5C4
C - - - - - 0x0275D2 09:B5C2: A9 00     LDA #$00
bra_B5C4:
C - - - - - 0x0275D4 09:B5C4: 9D E0 04  STA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x0275D7 09:B5C7: A9 54     LDA #con_dpcm_warcry_turtle_2
C - - - - - 0x0275D9 09:B5C9: 20 94 F6  JSR sub_0x03F6A4_записать_звук
sub_B5CC:
C - - - - - 0x026D9A 09:AD8A: BC D0 04  LDY ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x026D9D 09:AD8D: B9 D1 B5  LDA tbl_B5D2 - $01,Y
C - - - - - 0x0275DF 09:B5CF: 4C AA B8  JMP loc_B8AA



tbl_B5D2:
- D 1 - - - 0x0275E2 09:B5D2: 04        .byte $04   ; 01
- D 1 - - - 0x0275E3 09:B5D3: 06        .byte $06   ; 02



bra_B5D4_RTS:
C - - - - - 0x0275E4 09:B5D4: 60        RTS



ofs_суперка_mike_B5D5_01:
C - - J - - 0x0275E5 09:B5D5: BD D0 04  LDA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x0275E8 09:B5D8: 0A        ASL
C - - - - - 0x0275E9 09:B5D9: A8        TAY
C - - - - - 0x0275EA 09:B5DA: BD E0 04  LDA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x0275ED 09:B5DD: F0 01     BEQ bra_B5E0
C - - - - - 0x0275EF 09:B5DF: C8        INY
bra_B5E0:
C - - - - - 0x0275F0 09:B5E0: B9 3F BA  LDA tbl_BA3F,Y
C - - - - - 0x0275F3 09:B5E3: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x0275F6 09:B5E6: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0275F9 09:B5E9: D0 E9     BNE bra_B5D4_RTS
C - - - - - 0x0275FB 09:B5EB: 20 CC B5  JSR sub_B5CC
C - - - - - 0x0275FE 09:B5EE: DE D0 04  DEC ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x027601 09:B5F1: 10 E1     BPL bra_B5D4_RTS
C - - - - - 0x027603 09:B5F3: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027606 09:B5F6: A9 83     LDA #$83
C - - - - - 0x027608 09:B5F8: 20 A8 B3  JSR sub_B3A8
C - - - - - 0x02760B 09:B5FB: A9 1A     LDA #$1A
C - - - - - 0x02760D 09:B5FD: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x027610 09:B600: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x027613 09:B603: BC E0 04  LDY ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x027616 09:B606: B9 3B BA  LDA tbl_BA3B,Y
C - - - - - 0x027619 09:B609: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x02761C 09:B60C: B9 3C BA  LDA tbl_BA3B + $01,Y
C - - - - - 0x02761F 09:B60F: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0470 0471 
C - - - - - 0x027622 09:B612: 98        TYA
C - - - - - 0x027623 09:B613: 48        PHA
C - - - - - 0x027624 09:B614: B9 38 BA  LDA tbl_BA38_спешалы_майка,Y
C - - - - - 0x027627 09:B617: 20 C5 B3  JSR sub_B3C5_записать_спешал_со_звуком
C - - - - - 0x02762A 09:B61A: 68        PLA
C - - - - - 0x02762B 09:B61B: 9D E0 04  STA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x02762E 09:B61E: 60        RTS



ofs_суперка_mike_B61F_02:
C - - J - - 0x02762F 09:B61F: BD E0 04  LDA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x027632 09:B622: F0 03     BEQ bra_B627
C - - - - - 0x027634 09:B624: A9 E4     LDA #$E4    ; ракеты понизу
C - - - - - 0x027636 09:B626: 2C        .byte $2C   ; BIT
bra_B627:
C - - - - - 0x027637 09:B627: A9 B0     LDA #$B0    ; ракеты поверху
C - - - - - 0x027639 09:B629: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x02763C 09:B62C: 20 B8 B3  JSR sub_B3B8
C - - - - - 0x02763F 09:B62F: DE A0 04  DEC ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x027642 09:B632: 10 A0     BPL bra_B5D4_RTS
C - - - - - 0x027644 09:B634: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027647 09:B637: A9 08     LDA #$08
C - - - - - 0x027649 09:B639: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x02764C 09:B63C: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02764F 09:B63F: 4C DF B3  JMP loc_B3DF



ofs_суперка_mike_B642_03:
C - - J - - 0x027652 09:B642: A9 A1     LDA #$A1
C - - - - - 0x027654 09:B644: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x027657 09:B647: BC 60 05  LDY ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02765A 09:B64A: F0 05     BEQ bra_B651
C - - - - - 0x02765C 09:B64C: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02765F 09:B64F: A9 A5     LDA #$A5
bra_B651:
C - - - - - 0x027661 09:B651: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x027664 09:B654: 20 B8 B3  JSR sub_B3B8
C - - - - - 0x027667 09:B657: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02766A 09:B65A: 90 0E     BCC bra_B66A_RTS
C - - - - - 0x02766C 09:B65C: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02766F 09:B65F: A9 08     LDA #$08
C - - - - - 0x027671 09:B661: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x027674 09:B664: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x027677 09:B667: 4C 67 D0  JMP loc_0x03DB48_очистить_spd_X_и_spd_Z
bra_B66A_RTS:
C - - - - - 0x02767A 09:B66A: 60        RTS



ofs_суперка_don_B66B_06:
ofs_суперка_mike_B66B_04:
C - - J - - 0x02767B 09:B66B: A9 99     LDA #$99
C - - - - - 0x02767D 09:B66D: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x027680 09:B670: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x027683 09:B673: D0 F5     BNE bra_B66A_RTS
C - - - - - 0x027685 09:B675: 4C 6D 84  JMP loc_846D



ofs_делает_суперку_B678_03_don:
ofs_делает_суперку_B678_0A:
C - - J - - 0x027688 09:B678: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02768B 09:B67B: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x02768E 09:B67E: BA B4     .word ofs_суперка_don_B4BA_00
- D 1 - I - 0x027690 09:B680: 8C B6     .word ofs_суперка_don_B68C_01
- D 1 - I - 0x027692 09:B682: AE B6     .word ofs_суперка_don_B6AE_02
- D 1 - I - 0x027694 09:B684: D9 B6     .word ofs_суперка_don_B6D9_03
- D 1 - I - 0x027696 09:B686: F4 B6     .word ofs_суперка_don_B6F4_04
- D 1 - I - 0x027698 09:B688: 44 B7     .word ofs_суперка_don_B744_05
- D 1 - I - 0x02769A 09:B68A: 6B B6     .word ofs_суперка_don_B66B_06



ofs_суперка_don_B68C_01:
C - - J - - 0x02769C 09:B68C: A9 03     LDA #$03
C - - - - - 0x02769E 09:B68E: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x0276A1 09:B691: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0276A4 09:B694: A9 F7     LDA #$F7
C - - - - - 0x0276A6 09:B696: AC 26 01  LDY ram_option_speed
C - - - - - 0x0276A9 09:B699: F0 02     BEQ bra_B69D
C - - - - - 0x0276AB 09:B69B: A9 F3     LDA #$F3
bra_B69D:
C - - - - - 0x0276AD 09:B69D: A0 00     LDY #$00
C - - - - - 0x0276AF 09:B69F: 20 D6 DC  JSR sub_0x03DCE6_запись_spd_Z
C - - - - - 0x0276B2 09:B6A2: A9 35     LDA #con_0552_special_don_пила_вращение
C - - - - - 0x0276B4 09:B6A4: 20 C5 B3  JSR sub_B3C5_записать_спешал_со_звуком
C - - - - - 0x0276B7 09:B6A7: 1E 80 05  ASL ram_0580_obj,X ; 0580 0581 
C - - - - - 0x0276BA 09:B6AA: 38        SEC
C - - - - - 0x0276BB 09:B6AB: 7E 80 05  ROR ram_0580_obj,X ; 0580 0581 
ofs_суперка_don_B6AE_02:
C - - - - - 0x0276BE 09:B6AE: 20 EE B6  JSR sub_B6EE
C - - - - - 0x0276C1 09:B6B1: 20 09 B7  JSR sub_B709
C - - - - - 0x0276C4 09:B6B4: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x0276C7 09:B6B7: B0 07     BCS bra_B6C0
C - - - - - 0x0276C9 09:B6B9: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x0276CC 09:B6BC: C9 58     CMP #$58
C - - - - - 0x0276CE 09:B6BE: B0 AA     BCS bra_B66A_RTS
bra_B6C0:
C - - - - - 0x0276D0 09:B6C0: 20 73 D0  JSR sub_0x03D083_очистить_spd_Z
C - - - - - 0x0276D3 09:B6C3: A9 08     LDA #$08
C - - - - - 0x0276D5 09:B6C5: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x0276D8 09:B6C8: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0276DB 09:B6CB: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0276DE 09:B6CE: 1E 80 05  ASL ram_0580_obj,X ; 0580 0581 
C - - - - - 0x0276E1 09:B6D1: 5E 80 05  LSR ram_0580_obj,X ; 0580 0581 
C - - - - - 0x0276E4 09:B6D4: A9 54     LDA #con_dpcm_warcry_turtle_2
C - - - - - 0x0276E6 09:B6D6: 4C 94 F6  JMP loc_0x03F6A4_записать_звук



ofs_суперка_don_B6D9_03:
C - - J - - 0x0276E9 09:B6D9: 20 EE B6  JSR sub_B6EE
C - - - - - 0x0276EC 09:B6DC: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0276EF 09:B6DF: D0 28     BNE bra_B709
C - - - - - 0x0276F1 09:B6E1: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0276F4 09:B6E4: A9 81     LDA #< $0180
C - - - - - 0x0276F6 09:B6E6: 20 D3 DC  STA ram_obj_spd_Z_lo,X ; 0470 0471
                                        LDA #> $0180
                                        STA ram_obj_spd_Z_hi,X ; 0460 0461
C - - - - - 0x0276F9 09:B6E9: A9 83     LDA #$83
C - - - - - 0x0276FB 09:B6EB: 4C A8 B3  JMP loc_B3A8



sub_B6EE:
C - - - - - 0x0276FE 09:B6EE: A9 14     LDA #$14
C - - - - - 0x027700 09:B6F0: 9D 70 05  STA ram_0570_obj,X ; 0570 0571 
C - - - - - 0x027703 09:B6F3: 60        RTS



ofs_суперка_don_B6F4_04:
C - - J - - 0x027704 09:B6F4: 20 EE B6  JSR sub_B6EE
C - - - - - 0x027707 09:B6F7: A9 50     LDA #$50
C - - - - - 0x027709 09:B6F9: 20 58 DC  JSR sub_0x03DC68_добавить_A_00_к_spd_Z
C - - - - - 0x02770C 09:B6FC: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02770F 09:B6FF: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x027712 09:B702: C9 A8     CMP #$A8
C - - - - - 0x027714 09:B704: B0 23     BCS bra_B729
C - - - - - 0x027716 09:B706: 20 B8 B3  JSR sub_B3B8
bra_B709:
sub_B709:
C - - - - - 0x027719 09:B709: DE C0 05  DEC ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x02771C 09:B70C: 10 35     BPL bra_B743_RTS
C - - - - - 0x02771E 09:B70E: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027721 09:B711: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027724 09:B714: 29 03     AND #$03
C - - - - - 0x027726 09:B716: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027729 09:B719: A8        TAY
C - - - - - 0x02772A 09:B71A: B9 49 BA  LDA tbl_BA49,Y
C - - - - - 0x02772D 09:B71D: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x027730 09:B720: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x027733 09:B723: B9 45 BA  LDA tbl_BA45,Y
C - - - - - 0x027736 09:B726: 4C 94 DF  STA ram_obj_anim_id,X ; 0400 0401 
                                        RTS
bra_B729:
C - - - - - 0x027739 09:B729: A9 38     LDA #con_0552_special_don_пила_подкат
C - - - - - 0x02773B 09:B72B: 20 CC B3  JSR sub_B3CC_записать_спешал_без_звука
C - - - - - 0x02773E 09:B72E: A9 02     LDA #$02
C - - - - - 0x027740 09:B730: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x027743 09:B733: A0 0B     LDY #con_DFE6_0B
C - - - - - 0x027745 09:B735: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x027748 09:B738: A9 0C     LDA #$0C
C - - - - - 0x02774A 09:B73A: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
bra_B73D:
C - - - - - 0x02774D 09:B73D: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x027750 09:B740: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
bra_B743_RTS:
C - - - - - 0x027753 09:B743: 60        RTS



ofs_суперка_don_B744_05:
C - - J - - 0x027754 09:B744: 20 B8 B3  JSR sub_B3B8
C - - - - - 0x027757 09:B747: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x02775A 09:B74A: A0 0B     LDY #con_DFE6_0B
C - - - - - 0x02775C 09:B74C: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x02775F 09:B74F: BD C0 05  LDA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x027762 09:B752: 10 EF     BPL bra_B743_RTS
C - - - - - 0x027764 09:B754: 20 DF B3  JSR sub_B3DF
C - - - - - 0x027767 09:B757: A9 08     LDA #$08
C - - - - - 0x027769 09:B759: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x02776C 09:B75C: D0 DF     BNE bra_B73D    ; jmp



loc_B75E_суперка_shred:
C D 1 - - - 0x02776E 09:B75E: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027771 09:B761: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x027774 09:B764: 6A B7     .word ofs_суперка_shred_B76A_00
- D 1 - I - 0x027776 09:B766: 66 B9     .word ofs_суперка_shred_B966_01
- D 1 - I - 0x027778 09:B768: EA B7     .word ofs_суперка_shred_B7EA_02



ofs_суперка_shred_B76A_00:
C - - J - - 0x02777A 09:B76A: A9 36     LDA #con_0552_special_shred_мясо
C - - - - - 0x02777C 09:B76C: 20 CC B3  JSR sub_B3CC_записать_спешал_без_звука
C - - - - - 0x02777F 09:B76F: A9 01     LDA #$01
C - - - - - 0x027781 09:B771: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027784 09:B774: 4A        LSR
C - - - - - 0x027785 09:B775: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x027788 09:B778: 9D C0 04  STA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x02778B 09:B77B: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x02778E 09:B77E: 9D 33 06  STA ram_0633,X ; 0633 0634 
C - - - - - 0x027791 09:B781: AC 26 01  LDY ram_option_speed
C - - - - - 0x027794 09:B784: B9 74 87  LDA tbl_8774,Y
C - - - - - 0x027797 09:B787: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02779A 09:B78A: 60        RTS



sub_B7C0:
C - - - - - 0x0277D0 09:B7C0: C0 21     CPY #con_0552_hot_бабочка
C - - - - - 0x0277D2 09:B7C2: D0 0E     BNE bra_B7D2
                                        LDY ram_00AC
                                        LDA ram_obj_state_hi,Y ; 0520 0521 
                                        CMP #$01
                                        BEQ bra_B7CD
C - - - - - 0x0277D4 09:B7C4: BD 5E 04  LDA ram_obj_spd_Z_hi - $02,X ; 0460 0461 
C - - - - - 0x0277D7 09:B7C7: 30 04     BMI bra_B7CD
C - - - - - 0x0277D9 09:B7C9: C9 03     CMP #$03
C - - - - - 0x0277DB 09:B7CB: B0 03     BCS bra_B7D0
bra_B7CD:
C - - - - - 0x0277DD 09:B7CD: A9 01     LDA #$01
C - - - - - 0x0277DF 09:B7CF: 2C        .byte $2C   ; BIT
bra_B7D0:
C - - - - - 0x0277E0 09:B7D0: A9 02     LDA #$04
                                        LDY ram_obj_id,X
bra_B7D2:
C - - - - - 0x0277E2 09:B7D2: 9D 90 05  STA ram_obj_приоритет_удара,X ; 0592 0593 0594 0595 
C - - - - - 0x0277E5 09:B7D5: 60        RTS



ofs_суперка_shred_B7EA_02:
C - - J - - 0x0277FA 09:B7EA: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0277FD 09:B7ED: 10 18     BPL bra_B807
C - - - - - 0x0277FF 09:B7EF: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027802 09:B7F2: 30 1D     BMI bra_B811
C - - - - - 0x027804 09:B7F4: D0 05     BNE bra_B7FB
C - - - - - 0x027806 09:B7F6: A9 57     LDA #con_dpcm_warcry_shred_2
C - - - - - 0x027808 09:B7F8: 20 94 F6  JSR sub_0x03F6A4_записать_звук
bra_B7FB:
C - - - - - 0x02780B 09:B7FB: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02780E 09:B7FE: B9 88 BA  LDA tbl_BA88,Y
C - - - - - 0x027811 09:B801: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x027814 09:B804: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_B807:
C - - - - - 0x027817 09:B807: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02781A 09:B80A: B9 8A BA  LDA tbl_BA8A,Y
C - - - - - 0x02781D 09:B80D: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x027820 09:B810: 60        RTS
bra_B811:
C - - - - - 0x027821 09:B811: A9 00     LDA #$00
C - - - - - 0x027823 09:B813: 9D 0A 06  STA ram_060A_plr,X ; 060A 060B 
C - - - - - 0x027826 09:B816: 9D 0E 06  STA ram_060E_plr,X ; 060E 060F 
C - - - - - 0x027829 09:B819: 20 DF B3  JSR sub_B3DF
C - - - - - 0x02782C 09:B81C: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x02782F 09:B81F: 4C 6D 84  JMP loc_846D



loc_B822_суперка_casey_клюшка:
C D 1 - - - 0x027832 09:B822: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x027835 09:B825: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027838 09:B828: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x02783B 09:B82B: 31 B8     .word ofs_суперка_casey_клюшка_B831_00
- D 1 - I - 0x02783D 09:B82D: 48 B8     .word ofs_суперка_casey_клюшка_B848_01
- D 1 - I - 0x02783F 09:B82F: B1 B8     .word ofs_суперка_casey_клюшка_B8B1_02



ofs_суперка_casey_клюшка_B831_00:
C - - J - - 0x027841 09:B831: A9 B0     LDA #con_координата_пола
C - - - - - 0x027843 09:B833: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x027846 09:B836: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x027849 09:B839: A9 08     LDA #$08
C - - - - - 0x02784B 09:B83B: 9D B0 04  STA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x02784E 09:B83E: A9 56     LDA #con_dpcm_warcry_casey_2
C - - - - - 0x027850 09:B840: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x027853 09:B843: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027856 09:B846: D0 1C     BNE bra_B864    ; jmp?



ofs_суперка_casey_клюшка_B848_01:
C - - J - - 0x027858 09:B848: BC B0 04  LDY ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x02785B 09:B84B: C0 04     CPY #$04
C - - - - - 0x02785D 09:B84D: A9 00     LDA #$00
C - - - - - 0x02785F 09:B84F: 90 02     BCC bra_B853
C - - - - - 0x027861 09:B851: A9 80     LDA #$80
bra_B853:
C - - - - - 0x027863 09:B853: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x027866 09:B856: C0 06     CPY #$06
C - - - - - 0x027868 09:B858: B0 05     BCS bra_B85F
C - - - - - 0x02786A 09:B85A: A9 11     LDA #$11
C - - - - - 0x02786C 09:B85C: 20 7D D1  JSR sub_0x03D18D
bra_B85F:
C - - - - - 0x02786F 09:B85F: DE C0 05  DEC ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x027872 09:B862: D0 4C     BNE bra_B8B0_RTS
bra_B864:
C - - - - - 0x027874 09:B864: DE B0 04  DEC ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x027877 09:B867: 30 3C     BMI bra_B8A5
C - - - - - 0x027879 09:B869: BD B0 04  LDA ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x02787C 09:B86C: 4A        LSR
C - - - - - 0x02787D 09:B86D: D0 05     BNE bra_B874
C - - - - - 0x02787F 09:B86F: A9 FF     LDA #$FF
C - - - - - 0x027881 09:B871: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
bra_B874:
C - - - - - 0x027884 09:B874: BC B0 04  LDY ram_obj_spd_Y_lo,X ; 04B0 04B1 
C - - - - - 0x027887 09:B877: B9 55 BA  LDA tbl_BA55,Y
C - - - - - 0x02788A 09:B87A: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x02788D 09:B87D: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x027890 09:B880: B9 4D BA  LDA tbl_BA4D,Y
C - - - - - 0x027893 09:B883: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x027896 09:B886: C9 AD     CMP #$AD
C - - - - - 0x027898 09:B888: D0 26     BNE bra_B8B0_RTS
C - - - - - 0x02789A 09:B88A: AD 26 01  LDA ram_option_speed
C - - - - - 0x02789D 09:B88D: 4A        LSR
C - - - - - 0x02789E 09:B88E: A9 F7     LDA #$F7
C - - - - - 0x0278A0 09:B890: A0 80     LDY #$80
C - - - - - 0x0278A2 09:B892: B0 04     BCS bra_B898
C - - - - - 0x0278A4 09:B894: A9 F9     LDA #$F9
C - - - - - 0x0278A6 09:B896: A0 C0     LDY #$C0
bra_B898:
C - - - - - 0x0278A8 09:B898: 20 D6 DC  JSR sub_0x03DCE6_запись_spd_Z
C - - - - - 0x0278AB 09:B89B: A9 37     LDA #con_0552_special_casey_клюшка
C - - - - - 0x0278AD 09:B89D: 20 CC B3  JSR sub_B3CC_записать_спешал_без_звука
C - - - - - 0x0278B0 09:B8A0: A9 56     LDA #con_dpcm_warcry_casey_2
C - - - - - 0x0278B2 09:B8A2: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_B8A5:
C - - - - - 0x0278B5 09:B8A5: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0278B8 09:B8A8: A9 0C     LDA #$0C
loc_B8AA:
C D 1 - - - 0x0278BA 09:B8AA: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x0278BD 09:B8AD: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_B8B0_RTS:
C - - - - - 0x0278C0 09:B8B0: 60        RTS



ofs_суперка_casey_клюшка_B8B1_02:
C - - J - - 0x0278C1 09:B8B1: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x0278C4 09:B8B4: C9 B0     CMP #con_координата_пола
C - - - - - 0x0278C6 09:B8B6: 90 F8     BCC bra_B8B0_RTS
C - - - - - 0x0278C8 09:B8B8: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
ofs_0x0278CB_суперка_casey_песок_финальная_стадия:
C - - - - - 0x0278CB 09:B8BB: A9 A2     LDA #$A2
C - - - - - 0x0278CD 09:B8BD: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x0278D0 09:B8C0: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0278D3 09:B8C3: 10 EB     BPL bra_B8B0_RTS
C - - - - - 0x0278D5 09:B8C5: 20 18 D2  JSR sub_0x03D228_вычислить_поворот_игрока_относительно_другого
C - - - - - 0x0278D8 09:B8C8: B5 91     LDA ram_btn_hold,X
C - - - - - 0x0278DA 09:B8CA: 29 04     AND #con_btn_Down
C - - - - - 0x0278DC 09:B8CC: D0 03     BNE bra_B8D1
bra_B8CE:
C - - - - - 0x0278DE 09:B8CE: 4C 6D 84  JMP loc_846D
bra_B8D1:
C - - - - - 0x0278E1 09:B8D1: 20 E9 DD  JSR sub_0x03DDF9_запись_сидячего_состояния_персу
C - - - - - 0x0278E4 09:B8D4: A9 01     LDA #$01
C - - - - - 0x0278E6 09:B8D6: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0278E9 09:B8D9: 60        RTS



ofs_делает_суперку_B8DA_05_hot:
ofs_делает_суперку_B8DA_0C:
C - - J - - 0x0278EA 09:B8DA: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0278ED 09:B8DD: D0 10     BNE bra_B8EF
C - - - - - 0x0278EF 09:B8DF: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x0278F2 09:B8E2: A9 07     LDA #$07
C - - - - - 0x0278F4 09:B8E4: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x0278F7 09:B8E7: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0278FA 09:B8EA: A9 04     LDA #$04
C - - - - - 0x0278FC 09:B8EC: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
bra_B8EF:
C - - - - - 0x0278FF 09:B8EF: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x027902 09:B8F2: 10 11     BPL bra_B905
C - - - - - 0x027904 09:B8F4: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027907 09:B8F7: 30 D5     BMI bra_B8CE
loc_B8F9:
C D 1 - - - 0x027909 09:B8F9: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02790C 09:B8FC: B9 62 BA  LDA tbl_BA62,Y
C - - - - - 0x02790F 09:B8FF: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x027912 09:B902: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_B905:
C - - - - - 0x027915 09:B905: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027918 09:B908: B9 5D BA  LDA tbl_BA5D,Y
C - - - - - 0x02791B 09:B90B: F0 03     BEQ bra_B910
bra_B90D:
C D 1 - - - 0x02791D 09:B90D: 4C 94 DF  STA ram_obj_anim_id,X ; 0400 0401 
                                        RTS
bra_B910:
C - - - - - 0x027920 09:B910: A9 2F     LDA #con_0552_special_hot_огонь
C - - - - - 0x027922 09:B912: 20 18 B9  JSR sub_B918
C - - - - - 0x027925 09:B915: 4C F9 B8  JMP loc_B8F9



sub_B918:
C - - - - - 0x027928 09:B918: 20 CC B3  JSR sub_B3CC_записать_спешал_без_звука
C - - - - - 0x02792B 09:B91B: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
; con_новые_персы ?
C - - - - - 0x02792E 09:B91E: 99 A0 04  STA ram_obj_spd_Y_hi,Y ; 04A4 04A5 
C - - - - - 0x027931 09:B921: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027934 09:B924: 60        RTS



loc_B925:
C D 1 - - - 0x027935 09:B925: BC 40 05  LDY ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027938 09:B928: D0 0F     BNE bra_B939
C - - - - - 0x02793A 09:B92A: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02793D 09:B92D: A9 58     LDA #con_dpcm_warcry_shred_3
C - - - - - 0x02793F 09:B92F: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x027942 09:B932: A9 05     LDA #$05
C - - - - - 0x027944 09:B934: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027947 09:B937: D0 0A     BNE bra_B943    ; jmp
bra_B939:
C - - - - - 0x027949 09:B939: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02794C 09:B93C: 10 15     BPL bra_B953
C - - - - - 0x02794E 09:B93E: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027951 09:B941: 30 20     BMI bra_B963
bra_B943:
C - - - - - 0x027953 09:B943: 20 53 B9  JSR sub_B953
C - - - - - 0x027956 09:B946: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027959 09:B949: B9 6C BA  LDA tbl_BA6C,Y
C - - - - - 0x02795C 09:B94C: 20 B6 8B  JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x02795F 09:B94F: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x027962 09:B952: 60        RTS
bra_B953:
sub_B953:
loc_B953:
C D 1 - - - 0x027963 09:B953: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027966 09:B956: B9 66 BA  LDA tbl_BA66,Y
C - - - - - 0x027969 09:B959: D0 B2     BNE bra_B90D
C - - - - - 0x02796B 09:B95B: A9 30     LDA #con_0552_special_shred_волна
C - - - - - 0x02796D 09:B95D: 20 18 B9  JSR sub_B918
C - - - - - 0x027970 09:B960: 4C 53 B9  JMP loc_B953
bra_B963:
C - - - - - 0x027973 09:B963: 4C 6D 84  JMP loc_846D



ofs_суперка_shred_B966_01:
C - - J - - 0x027976 09:B966: BD D0 04  LDA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x027979 09:B969: D0 16     BNE bra_B981
C - - - - - 0x02797B 09:B96B: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02797D 09:B96D: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x027980 09:B970: C9 0B     CMP #con_plr_state_попался_в_мясо
C - - - - - 0x027982 09:B972: D0 0D     BNE bra_B981
; в оригинале читался байт из таблицы 0x024786 по индексу перса,
; но в таблице все байты были 3C
                                       ;LDA ram_obj_id,Y ; 0550 0551 
C - - - - - 0x027984 09:B974: B9 50 05  LDA #$3C
C - - - - - 0x02798B 09:B97B: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02798E 09:B97E: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
bra_B981:
C - - - - - 0x027991 09:B981: DE C0 05  DEC ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x027994 09:B984: 10 0F     BPL bra_B995
C - - - - - 0x027996 09:B986: A9 01     LDA #$01
C - - - - - 0x027998 09:B988: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x02799B 09:B98B: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02799E 09:B98E: 10 05     BPL bra_B995
C - - - - - 0x0279A0 09:B990: A9 0A     LDA #$0A
C - - - - - 0x0279A2 09:B992: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
bra_B995:
C - - - - - 0x0279A5 09:B995: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x0279A8 09:B998: B9 72 BA  LDA tbl_BA72_animation,Y
C - - - - - 0x0279AB 09:B99B: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x0279AE 09:B99E: B9 7D BA  LDA tbl_BA7D,Y
C - - - - - 0x0279B1 09:B9A1: 9D 0C 04  STA ram_obj_anim_id + $0C,X ; 040C 040D 
C - - - - - 0x0279B4 09:B9A4: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x0279B7 09:B9A7: 9D 4C 04  STA ram_obj_pos_X_lo + $0C,X ; 044C 044D 
C - - - - - 0x0279BA 09:B9AA: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x0279BD 09:B9AD: 9D 1C 04  STA ram_obj_pos_Y_lo + $0C,X ; 041C 041D 
C - - - - - 0x0279C0 09:B9B0: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x0279C3 09:B9B3: 9D 1C 05  STA ram_obj_flip + $0C,X ; 051C 051D 
C - - - - - 0x0279C6 09:B9B6: BD D0 04  LDA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x0279C9 09:B9B9: D0 2F     BNE bra_B9E4
C - - - - - 0x0279CB 09:B9BB: B5 8E     LDA ram_btn_press,X
C - - - - - 0x0279CD 09:B9BD: 29 08     AND #con_btn_Up
C - - - - - 0x0279CF 09:B9BF: F0 03     BEQ bra_B9C4
C - - - - - 0x0279D1 09:B9C1: 9D 33 06  STA ram_0633,X ; 0633 0634 
; проверка, может ли шред отменять мясо
bra_B9C4:
C - - - - - 0x0279D4 09:B9C4: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x0279D6 09:B9C6: 4A        LSR
C - - - - - 0x0279D7 09:B9C7: 90 0C     BCC bra_B9D5
; con_gm_vs_player
; con_gm_vs_team
C - - - - - 0x0279D9 09:B9C9: AD 51 01  LDA ram_tournament_индекс_игрока
                                        ORA ram_tournament_индекс_игрока + $01
C - - - - - 0x0279DC 09:B9CC: D0 07     BMI bra_B9D5 ; if хоть один из игроков - комп
C - - - - - 0x0279DE 09:B9CE: AD 2B 01  LDA ram_option_misc
C - - - - - 0x0279E1 09:B9D1: 29 10     AND #$10
C - - - - - 0x0279E3 09:B9D3: F0 15     BEQ bra_B9EA
bra_B9D5:
C - - - - - 0x0279E5 09:B9D5: BD 33 06  LDA ram_0633,X ; 0633 0634 
C - - - - - 0x0279E8 09:B9D8: F0 10     BEQ bra_B9EA
C - - - - - 0x0279EA 09:B9DA: AC 26 01  LDY ram_option_speed
C - - - - - 0x0279ED 09:B9DD: B9 25 BA  LDA tbl_BA25,Y
C - - - - - 0x0279F0 09:B9E0: DD 60 05  CMP ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0279F3 09:B9E3: 90 05     BCS bra_B9E5
bra_B9E4:
                                        LDA ram_время_единицы
                                        ORA ram_время_десятки
                                        BNE bra_B9EA
; if время вышло, закончить мясо шрушера
bra_B9E5:
C - - - - - 0x0279F5 09:B9E5: A9 00     LDA #$00
C - - - - - 0x0279F7 09:B9E7: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
bra_B9EA:
C - - - - - 0x0279FA 09:B9EA: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x0279FD 09:B9ED: 10 FC     BPL bra_B9FB_RTS
C - - - - - 0x0279FF 09:B9EF: A9 02     LDA #$02
C - - - - - 0x027A01 09:B9F1: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x027A04 09:B9F4: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x027A07 09:B9F7: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x027A0A 09:B9FA: 4C 20 DE  JMP loc_0x03DE30_удалить_объекты_перса
bra_B9FB_RTS:
                                        RTS



loc_B9FD_урон_от_нормалов_в_блок:
C D 1 - - - 0x027A0D 09:B9FD: 20 3C DE  JSR sub_0x03DE4C_корректировка_урона_с_учетом_прочности_перса
C - - - - - 0x027A10 09:BA00: 38        SEC
C - - - - - 0x027A11 09:BA01: F5 A0     SBC ram_strength,X
C - - - - - 0x027A13 09:BA03: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x027A16 09:BA06: F9 16 BA  SBC tbl_BA16_уменьшение_урона_в_блок_персу,Y
C - - - - - 0x027A19 09:BA09: 30 06     BMI bra_BA11
C - - - - - 0x027A1B 09:BA0B: 4A        LSR
C - - - - - 0x027A1C 09:BA0C: 4A        LSR
C - - - - - 0x027A1D 09:BA0D: 4A        LSR
C - - - - - 0x027A1E 09:BA0E: 9D 45 06  STA ram_plr_damage,X ; 0645 0646 
bra_BA11:
C - - - - - 0x027A21 09:BA11: A9 03     LDA #$03
C - - - - - 0x027A23 09:BA13: 4C F8 AB  JMP loc_ABF8



tbl_BA16_уменьшение_урона_в_блок_персу:
- D 1 - - - 0x027A26 09:BA16: 01        .byte $01   ; 00 con_fighter_leo
- D 1 - - - 0x027A27 09:BA17: 01        .byte $01   ; 01 con_fighter_raph
- D 1 - - - 0x027A28 09:BA18: 01        .byte $01   ; 02 con_fighter_mike
- D 1 - - - 0x027A29 09:BA19: 01        .byte $01   ; 03 con_fighter_don
- D 1 - - - 0x027A2A 09:BA1A: 01        .byte $01   ; 04 con_fighter_casey
- D 1 - - - 0x027A2B 09:BA1B: 03        .byte $03   ; 05 con_fighter_hot
- D 1 - - - 0x027A2C 09:BA1C: 06        .byte $06   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $01   ; 07 con_fighter___leo
                                        .byte $01   ; 08 con_fighter___raph
                                        .byte $01   ; 09 con_fighter___mike
                                        .byte $01   ; 0A con_fighter___don
                                        .byte $01   ; 0B con_fighter___casey
                                        .byte $03   ; 0C con_fighter___hot
                                        .byte $06   ; 0D con_fighter___shred
                                    .endif



tbl_BA25:
- D 1 - - - 0x027A35 09:BA25: 28        .byte $28   ; 00
- D 1 - - - 0x027A36 09:BA26: 17        .byte $17   ; 01



ofs_делает_суперку_BA27_04_casey:
ofs_делает_суперку_BA27_0B:
C - - J - - 0x027A37 09:BA27: BD A0 04  LDA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x027A3A 09:BA2A: D0 03     BNE bra_BA2F
C - - - - - 0x027A3C 09:BA2C: 4C 22 B8  JMP loc_B822_суперка_casey_клюшка
bra_BA2F:
C - - - - - 0x027A3F 09:BA2F: A9 B7     LDA #> (ofs_0x02F73B_суперка_casey_песок - $01)
C - - - - - 0x027A41 09:BA31: 48        PHA
C - - - - - 0x027A42 09:BA32: A9 2A     LDA #< (ofs_0x02F73B_суперка_casey_песок - $01)
C - - - - - 0x027A44 09:BA34: 48        PHA
C - - - - - 0x027A45 09:BA35: 4C E7 F5  JMP loc_0x03F5F7_swap_prg_16



tbl_BA38_спешалы_майка:
- D 1 - - - 0x027A48 09:BA38: 34        .byte con_0552_special_mike_ракеты_поверху   ; 00
- - - - - - 0x027A49 09:BA39: 00        .byte $00   ; 01 placeholder?
- D 1 - - - 0x027A4A 09:BA3A: 33        .byte con_0552_special_mike_ракеты_понизу   ; 02



tbl_BA3B:
- D 1 - - - 0x027A4B 09:BA3B: FD        .byte $FD, $B0   ; 00
- D 1 - - - 0x027A4D 09:BA3D: FF        .byte $FF, $60   ; 02



tbl_BA3F:
- D 1 - - - 0x027A4F 09:BA3F: AF        .byte $AF, $E3   ; 00
- D 1 - - - 0x027A51 09:BA41: AE        .byte $AE, $AE   ; 01
- D 1 - - - 0x027A53 09:BA43: A3        .byte $A3, $A3   ; 02



tbl_BA45:
- D 1 - - - 0x027A55 09:BA45: B4        .byte $B4   ; 00
- D 1 - - - 0x027A56 09:BA46: B3        .byte $B3   ; 01
- D 1 - - - 0x027A57 09:BA47: B2        .byte $B2   ; 02
- D 1 - - - 0x027A58 09:BA48: B1        .byte $B1   ; 03



tbl_BA49:
- D 1 - - - 0x027A59 09:BA49: 07        .byte $07   ; 00
- D 1 - - - 0x027A5A 09:BA4A: 04        .byte $04   ; 01
- D 1 - - - 0x027A5B 09:BA4B: 04        .byte $04   ; 02
- D 1 - - - 0x027A5C 09:BA4C: 04        .byte $04   ; 03



tbl_BA4D:
- D 1 - - - 0x027A5D 09:BA4D: B1        .byte $B1   ; 00
- D 1 - - - 0x027A5E 09:BA4E: A9        .byte $A9   ; 01
- D 1 - - - 0x027A5F 09:BA4F: B0        .byte $B0   ; 02
- D 1 - - - 0x027A60 09:BA50: AF        .byte $AF   ; 03
- D 1 - - - 0x027A61 09:BA51: AE        .byte $AE   ; 04
- D 1 - - - 0x027A62 09:BA52: AD        .byte $AD   ; 05
- D 1 - - - 0x027A63 09:BA53: AC        .byte $AC   ; 06
- D 1 - - - 0x027A64 09:BA54: AB        .byte $AB   ; 07



tbl_BA55:
- D 1 - - - 0x027A65 09:BA55: 05        .byte $05   ; 00
- D 1 - - - 0x027A66 09:BA56: 06        .byte $06   ; 01
- D 1 - - - 0x027A67 09:BA57: 05        .byte $05   ; 02
- D 1 - - - 0x027A68 09:BA58: 05        .byte $05   ; 03
- D 1 - - - 0x027A69 09:BA59: 05        .byte $05   ; 04
- D 1 - - - 0x027A6A 09:BA5A: 06        .byte $06   ; 05
- D 1 - - - 0x027A6B 09:BA5B: 06        .byte $06   ; 06
- D 1 - - - 0x027A6C 09:BA5C: 05        .byte $05   ; 07



tbl_BA5D:
- D 1 - - - 0x027A6D 09:BA5D: 97        .byte $97   ; 00
- D 1 - - - 0x027A6E 09:BA5E: A5        .byte $A5   ; 01
- D 1 - - - 0x027A6F 09:BA5F: 00        .byte $00   ; 02
- D 1 - - - 0x027A70 09:BA60: A5        .byte $A5   ; 03
- D 1 - - - 0x027A71 09:BA61: 97        .byte $97   ; 04



tbl_BA62:
- D 1 - - - 0x027A72 09:BA62: 10        .byte $10   ; 00
- D 1 - - - 0x027A73 09:BA63: 2D        .byte $2D   ; 01
- D 1 - - - 0x027A74 09:BA64: 00        .byte $00   ; 02
- D 1 - - - 0x027A75 09:BA65: 04        .byte $04   ; 03



tbl_BA66:
- D 1 - - - 0x027A76 09:BA66: A2        .byte $A2   ; 00
- D 1 - - - 0x027A77 09:BA67: AA        .byte $AA   ; 01
- D 1 - - - 0x027A78 09:BA68: 00        .byte $00   ; 02
- D 1 - - - 0x027A79 09:BA69: AA        .byte $AA   ; 03
- D 1 - - - 0x027A7A 09:BA6A: 8C        .byte $8C   ; 04
- D 1 - - - 0x027A7B 09:BA6B: 93        .byte $93   ; 05



tbl_BA6C:
- D 1 - - - 0x027A7C 09:BA6C: 16        .byte $16   ; 00
- D 1 - - - 0x027A7D 09:BA6D: 06        .byte $06   ; 01
- - - - - - 0x027A7E 09:BA6E: 01        .byte $01   ; 02
- D 1 - - - 0x027A7F 09:BA6F: 04        .byte $04   ; 03
- D 1 - - - 0x027A80 09:BA70: 04        .byte $04   ; 04
- D 1 - - - 0x027A81 09:BA71: 06        .byte $06   ; 05



tbl_BA72_animation:
- D 1 - - - 0x027A82 09:BA72: AF        .byte $AF   ; 00
- D 1 - - - 0x027A83 09:BA73: AF        .byte $AF   ; 01
- D 1 - - - 0x027A84 09:BA74: AE        .byte $AE   ; 02
- D 1 - - - 0x027A85 09:BA75: AF        .byte $AF   ; 03
- D 1 - - - 0x027A86 09:BA76: B0        .byte $B0   ; 04
- D 1 - - - 0x027A87 09:BA77: AF        .byte $AF   ; 05
- D 1 - - - 0x027A88 09:BA78: AE        .byte $AE   ; 06
- D 1 - - - 0x027A89 09:BA79: AF        .byte $AF   ; 07
- D 1 - - - 0x027A8A 09:BA7A: AF        .byte $AF   ; 08
- D 1 - - - 0x027A8B 09:BA7B: B0        .byte $B0   ; 09
- D 1 - - - 0x027A8C 09:BA7C: AE        .byte $AE   ; 0A

tbl_BA7D:
- D 1 - - - 0x027A8D 09:BA7D: B3        .byte $B3   ; 00
- D 1 - - - 0x027A8E 09:BA7E: 00        .byte $00   ; 01
- D 1 - - - 0x027A8F 09:BA7F: B2        .byte $B2   ; 02
- D 1 - - - 0x027A90 09:BA80: 00        .byte $00   ; 03
- D 1 - - - 0x027A91 09:BA81: B1        .byte $B1   ; 04
- D 1 - - - 0x027A92 09:BA82: 00        .byte $00   ; 05
- D 1 - - - 0x027A93 09:BA83: B3        .byte $B3   ; 06
- D 1 - - - 0x027A94 09:BA84: 00        .byte $00   ; 07
- D 1 - - - 0x027A95 09:BA85: B2        .byte $B2   ; 08
- D 1 - - - 0x027A96 09:BA86: 00        .byte $00   ; 09
- D 1 - - - 0x027A97 09:BA87: B1        .byte $B1   ; 0A



tbl_BA88:
- D 1 - - - 0x027A98 09:BA88: 10        .byte $10   ; 00
- D 1 - - - 0x027A99 09:BA89: 04        .byte $04   ; 01

tbl_BA8A:
- D 1 - - - 0x027A9A 09:BA8A: 96        .byte $96   ; 00
- D 1 - - - 0x027A9B 09:BA8B: 95        .byte $95   ; 01


; bzk garbage?
- - - - - - 0x027A9C 09:BA8C: 9D        .byte $9D   ; 
- - - - - - 0x027A9D 09:BA8D: 9E        .byte $9E   ; 
- - - - - - 0x027A9E 09:BA8E: 9F        .byte $9F   ; 
- - - - - - 0x027A9F 09:BA8F: A0        .byte $A0   ; 



sub_BA96:
C - - - - - 0x027AA6 09:BA96: BC 26 06  LDY ram_0626_plr,X ; 0626 0627 
C - - - - - 0x027AA9 09:BA99: D0 23     BNE bra_BABE
bra_BA9B:
C - - - - - 0x027AAB 09:BA9B: B5 8E     LDA ram_btn_press,X
C - - - - - 0x027AAD 09:BA9D: 29 03     AND #con_btns_LR
C - - - - - 0x027AAF 09:BA9F: F0 0D     BEQ bra_BAAE_RTS
C - - - - - 0x027AB1 09:BAA1: 9D 24 06  STA ram_0624_plr,X ; 0624 0625 
C - - - - - 0x027AB4 09:BAA4: A9 01     LDA #$01
C - - - - - 0x027AB6 09:BAA6: 9D 26 06  STA ram_0626_plr,X ; 0626 0627 
C - - - - - 0x027AB9 09:BAA9: A9 1E     LDA #$1E
C - - - - - 0x027ABB 09:BAAB: 9D 28 06  STA ram_0628_plr,X ; 0628 0629 
bra_BAAE_RTS:
C - - - - - 0x027ABE 09:BAAE: 60        RTS
bra_BABE:
; if con_btn_Right con_btn_Left
C - - - - - 0x027ACE 09:BABE: 88        DEY
C - - - - - 0x027ACF 09:BABF: D0 14     BNE bra_BAD5
; if con_btn_Right
C - - - - - 0x027AD1 09:BAC1: DE 28 06  DEC ram_0628_plr,X ; 0628 0629 
C - - - - - 0x027AD4 09:BAC4: F0 16     BEQ bra_BADC
C - - - - - 0x027AD6 09:BAC6: B5 8E     LDA ram_btn_press,X
C - - - - - 0x027AD8 09:BAC8: 29 03     AND #con_btns_LR
C - - - - - 0x027ADA 09:BACA: F0 E2     BEQ bra_BAD4_RTS
C - - - - - 0x027ADC 09:BACC: 3D 24 06  AND ram_0624_plr,X ; 0624 0625 
C - - - - - 0x027ADF 09:BACF: F0 CA     BEQ bra_BA9B
C - - - - - 0x027AE1 09:BAD1: FE 26 06  INC ram_0626_plr,X ; 0626 0627 
bra_BAD4_RTS:
C - - - - - 0x027AE4 09:BAD4: 60        RTS
bra_BAD5:
; if con_btn_Left
C - - - - - 0x027AE5 09:BAD5: B5 91     LDA ram_btn_hold,X
C - - - - - 0x027AE7 09:BAD7: 3D 24 06  AND ram_0624_plr,X ; 0624 0625 
C - - - - - 0x027AEA 09:BADA: D0 D2     BNE bra_BAE7_RTS
bra_BADC:
C - - - - - 0x027AEC 09:BADC: A9 00     LDA #$00
C - - - - - 0x027AEE 09:BADE: 9D 26 06  STA ram_0626_plr,X ; 0626 0627 
C - - - - - 0x027AF1 09:BAE1: 9D 28 06  STA ram_0628_plr,X ; 0628 0629 
C - - - - - 0x027AF4 09:BAE4: 9D 24 06  STA ram_0624_plr,X ; 0624 0625 
bra_BAE7_RTS:
C - - - - - 0x027AF7 09:BAE7: 60        RTS



sub_BAE8:
sub_0x027AF8:
C - - - - - 0x027AF8 09:BAE8: A2 0B     LDX #$0B
bra_BAEA_loop:
; bzk optimize
C - - - - - 0x027AFA 09:BAEA: BC 50 05  LDY ram_obj_id,X ; 055A 055B 
C - - - - - 0x027AFD 09:BAED: F0 03     BEQ bra_BAF2
C - - - - - 0x027AFF 09:BAEF: 20 F8 BA  JSR sub_BAF8
bra_BAF2:
C - - - - - 0x027B02 09:BAF2: CA        DEX
C - - - - - 0x027B03 09:BAF3: E0 0A     CPX #$0A
C - - - - - 0x027B05 09:BAF5: B0 F3     BCS bra_BAEA_loop
bra_BAF7_RTS:
C - - - - - 0x027B07 09:BAF7: 60        RTS



sub_BAF8:
; X = 0A 0B
C - - - - - 0x027B08 09:BAF8: 88        DEY
C - - - - - 0x027B09 09:BAF9: D0 2D     BNE bra_BB28
C - - - - - 0x027B0B 09:BAFB: BC 30 05  LDY ram_0530_obj_state,X ; 053A 053B 
C - - - - - 0x027B0E 09:BAFE: D0 14     BNE bra_BB14
C - - - - - 0x027B10 09:BB00: A9 0C     LDA #$0C
bra_BB02:
C - - - - - 0x027B12 09:BB02: BC 50 05  LDY ram_obj_id,X ; 055A 055B 
C - - - - - 0x027B15 09:BB05: F0 01     BEQ bra_BB08
C - - - - - 0x027B17 09:BB07: 4A        LSR
bra_BB08:
C - - - - - 0x027B18 09:BB08: 9D 60 05  STA ram_obj_timer,X ; 056A 056B 
C - - - - - 0x027B1B 09:BB0B: A9 80     LDA #$80
C - - - - - 0x027B1D 09:BB0D: 9D E0 05  STA ram_05E0_obj,X ; 05EA 05EB 
C - - - - - 0x027B20 09:BB10: FE 30 05  INC ram_0530_obj_state,X ; 053A 053B 
C - - - - - 0x027B23 09:BB13: 60        RTS
bra_BB14:
C - - - - - 0x027B24 09:BB14: A9 03     LDA #$03
C - - - - - 0x027B26 09:BB16: BC 60 05  LDY ram_obj_timer,X ; 056A 056B 
C - - - - - 0x027B29 09:BB19: C0 06     CPY #$06
C - - - - - 0x027B2B 09:BB1B: 69 00     ADC #$00
bra_BB1D:
C - - - - - 0x027B2D 09:BB1D: 9D 00 04  STA ram_obj_anim_id,X ; 040A 040B 
C - - - - - 0x027B30 09:BB20: DE 60 05  DEC ram_obj_timer,X ; 056A 056B 
C - - - - - 0x027B33 09:BB23: 10 D2     BPL bra_BAF7_RTS
C - - - - - 0x027B35 09:BB25: 4C D3 DA  JMP loc_0x03DAE3_удалить_объект
bra_BB28:
C - - - - - 0x027B38 09:BB28: A9 83     LDA #$83
C - - - - - 0x027B3A 09:BB2A: 9D 00 05  STA ram_0500_obj,X ; 050A 050B 
C - - - - - 0x027B3D 09:BB2D: BC 30 05  LDY ram_0530_obj_state,X ; 053A 053B 
C - - - - - 0x027B40 09:BB30: D0 04     BNE bra_BB36
C - - - - - 0x027B42 09:BB32: A9 0C     LDA #$0C
C - - - - - 0x027B44 09:BB34: D0 CC     BNE bra_BB02    ; jmp
bra_BB36:
C - - - - - 0x027B46 09:BB36: A9 04     LDA #$04
C - - - - - 0x027B48 09:BB38: D0 E3     BNE bra_BB1D    ; jmp



loc_BB3A:
C D 1 - - - 0x027B4A 09:BB3A: A9 05     LDA #$05
C - - - - - 0x027B4C 09:BB3C: A4 2C     LDY ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x027B4E 09:BB3E: C0 03     CPY #$03
C - - - - - 0x027B50 09:BB40: B0 41     BCS bra_BB83
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
C - - - - - 0x027B52 09:BB42: AC 60 05  LDY ram_obj_timer
C - - - - - 0x027B55 09:BB45: C0 40     CPY #$40
C - - - - - 0x027B57 09:BB47: 90 3A     BCC bra_BB83
C - - - - - 0x027B59 09:BB49: 18        CLC
C - - - - - 0x027B5A 09:BB4A: AD 40 06  LDA ram_номер_раунда_боя
C - - - - - 0x027B5D 09:BB4D: 69 06     ADC #$06
C - - - - - 0x027B5F 09:BB4F: D0 32     BNE bra_BB83    ; jmp



sub_0x027B61:
C - - - - - 0x027B61 09:BB51: AD 71 06  LDA ram_0671
C - - - - - 0x027B64 09:BB54: A4 2C     LDY ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x027B66 09:BB56: F0 25     BEQ bra_BB7D    ; if con_gm_story
C - - - - - 0x027B68 09:BB58: 88        DEY
C - - - - - 0x027B69 09:BB59: F0 28     BEQ bra_BB83    ; if con_gm_vs_player
C - - - - - 0x027B6B 09:BB5B: 88        DEY
C - - - - - 0x027B6C 09:BB5C: F0 1F     BEQ bra_BB7D    ; if con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x027B6E 09:BB5E: AD 71 06  LDA ram_0671
C - - - - - 0x027B71 09:BB61: C9 03     CMP #$03
C - - - - - 0x027B73 09:BB63: B0 1E     BCS bra_BB83
C - - - - - 0x027B75 09:BB65: AD 54 01  LDA ram_0154
C - - - - - 0x027B78 09:BB68: 0A        ASL
C - - - - - 0x027B79 09:BB69: 6D 71 06  ADC ram_0671
C - - - - - 0x027B7C 09:BB6C: A8        TAY
C - - - - - 0x027B7D 09:BB6D: B9 55 01  LDA ram_tournament_индекс_игрока,Y ; 0155 0156 0157 0158 0159 015A 
C - - - - - 0x027B80 09:BB70: 10 04     BPL bra_BB76    ; if not cpu
; if cpu
C - - - - - 0x027B82 09:BB72: A9 0E     LDA #$0E
C - - - - - 0x027B84 09:BB74: D0 0D     BNE bra_BB83    ; jmp
bra_BB76:
C - - - - - 0x027B86 09:BB76: A8        TAY
C - - - - - 0x027B87 09:BB77: B9 05 01  LDA ram_0105,Y ; 0105 
C - - - - - 0x027B8A 09:BB7A: 18        CLC
C - - - - - 0x027B8B 09:BB7B: 69 0A     ADC #$0A
bra_BB7D:
C - - - - - 0x027B8D 09:BB7D: C9 01     CMP #$01
C - - - - - 0x027B8F 09:BB7F: D0 02     BNE bra_BB83
C - - - - - 0x027B91 09:BB81: 69 00     ADC #$00
bra_BB83:
C - - - - - 0x027B93 09:BB83: A8        TAY
C - - - - - 0x027B94 09:BB84: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x027B96 09:BB86: C9 10     CMP #$10
C - - - - - 0x027B98 09:BB88: A9 00     LDA #$00
C - - - - - 0x027B9A 09:BB8A: B0 03     BCS bra_BB8F
C - - - - - 0x027B9C 09:BB8C: B9 A8 BB  LDA tbl_BBA8,Y
bra_BB8F:
C - - - - - 0x027B9F 09:BB8F: 8D 0C 04  STA ram_obj_anim_id + $0C
C - - - - - 0x027BA2 09:BB92: A9 40     LDA #$40
C - - - - - 0x027BA4 09:BB94: 8D 1C 04  STA ram_obj_pos_Y_lo + $0C
C - - - - - 0x027BA7 09:BB97: A9 68     LDA #$68
C - - - - - 0x027BA9 09:BB99: 8D 4C 04  STA ram_obj_pos_X_lo + $0C
C - - - - - 0x027BAC 09:BB9C: A9 00     LDA #$00
C - - - - - 0x027BAE 09:BB9E: 8D 0C 05  STA ram_0500_obj + $0C
C - - - - - 0x027BB1 09:BBA1: 8D 1C 05  STA ram_obj_flip + $0C
C - - - - - 0x027BB4 09:BBA4: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x027BB7 09:BBA7: 60        RTS



tbl_BBA8:
- D 1 - - - 0x027BB8 09:BBA8: 0C        .byte $0C   ; 00
- D 1 - - - 0x027BB9 09:BBA9: 0D        .byte $0D   ; 01
- D 1 - - - 0x027BBA 09:BBAA: 0E        .byte $0E   ; 02
- D 1 - - - 0x027BBB 09:BBAB: 0F        .byte $0F   ; 03
- D 1 - - - 0x027BBC 09:BBAC: 10        .byte $10   ; 04
- D 1 - - - 0x027BBD 09:BBAD: 0B        .byte $0B   ; 05
- D 1 - - - 0x027BBE 09:BBAE: 07        .byte $07   ; 06
- D 1 - - - 0x027BBF 09:BBAF: 08        .byte $08   ; 07
- D 1 - - - 0x027BC0 09:BBB0: 09        .byte $09   ; 08
- D 1 - - - 0x027BC1 09:BBB1: 0A        .byte $0A   ; 09
- D 1 - - - 0x027BC2 09:BBB2: 0C        .byte $0C   ; 0A
- - - - - - 0x027BC3 09:BBB3: 0D        .byte $0D   ; 0B
- - - - - - 0x027BC4 09:BBB4: 11        .byte $11   ; 0C
- - - - - - 0x027BC5 09:BBB5: 12        .byte $12   ; 0D
- D 1 - - - 0x027BC6 09:BBB6: 0E        .byte $0E   ; 0E



sub_0x027BC7:
C - - - - - 0x027BC7 09:BBB7: A5 AA     LDA ram_таймер_задержки_фпс
C - - - - - 0x027BC9 09:BBB9: F0 12     BEQ bra_BBCD
C - - - - - 0x027BCB 09:BBBB: 30 05     BMI bra_BBC2_в_процессе_смерти
C - - - - - 0x027BCD 09:BBBD: C6 AA     DEC ram_таймер_задержки_фпс
bra_BBBF:
C - - - - - 0x027BCF 09:BBBF: 4C 2E BC  JMP loc_BC2E
bra_BBC2_в_процессе_смерти:
- - - - - - 0x027BD2 09:BBC2: E6 AB     INC ram_таймер_замедления_фпс
- - - - - - 0x027BD4 09:BBC4: 38        SEC
- - - - - - 0x027BD5 09:BBC5: A5 AB     LDA ram_таймер_замедления_фпс
- - - - - - 0x027BD7 09:BBC7: E9 04     SBC #$04
- - - - - - 0x027BD9 09:BBC9: 90 F4     BCC bra_BBBF
- - - - - - 0x027BDB 09:BBCB: 85 AB     STA ram_таймер_замедления_фпс
bra_BBCD:
C - - - - - 0x027BDD 09:BBCD: E6 2A     INC ram_002A
C - - - - - 0x027BDF 09:BBCF: 20 96 EA  JSR sub_0x03EAA6_обновить_и_отрисовать_время_боя
C - - - - - 0x027BE2 09:BBD2: 20 75 F7  JSR sub_0x03F785_вычислить_расстояние_между_персами
C - - - - - 0x03EFB0 0F:EFA0: A2 01     LDX #$01
C - - - - - 0x03EFB2 0F:EFA2: 86 9D     STX ram_009D    ; индекс стены в bonus game?
C - - - - - 0x03EFB4 0F:EFA4: CA        DEX ; 00
C - - - - - 0x03EFB5 0F:EFA5: 86 AD     STX ram_00AD    ; индекс игрока в bonus game
C - - - - - 0x03EFB7 0F:EFA7: 20 08 80  JSR sub_8008
C - - - - - 0x027BE5 09:BBD5: 20 A0 EF  JSR sub_0x03EFB0
C - - - - - 0x027BEB 09:BBDB: A2 00     LDX #$00
C - - - - - 0x027BED 09:BBDD: 86 AD     STX ram_00AD
; bzk optimize, загрузка из того же адреса
; видимо предполагалось использование цикла
C - - - - - 0x027BEF 09:BBDF: A6 AD     LDX ram_00AD
C - - - - - 0x027BF1 09:BBE1: BD 36 06  LDA ram_0636_plr,X ; 0636 
C - - - - - 0x027BF4 09:BBE4: F0 14     BEQ bra_BBFA
C - - - - - 0x027BF6 09:BBE6: DE 36 06  DEC ram_0636_plr,X ; 0636 
C - - - - - 0x027BF9 09:BBE9: BD 10 05  LDA ram_obj_flip,X ; 0510 
C - - - - - 0x027BFC 09:BBEC: 0A        ASL
C - - - - - 0x027BFD 09:BBED: 0A        ASL
C - - - - - 0x027BFE 09:BBEE: A9 FF     LDA #$FF
C - - - - - 0x027C00 09:BBF0: 90 02     BCC bra_BBF4
- - - - - - 0x027C02 09:BBF2: A9 00     LDA #$00
bra_BBF4:
C - - - - - 0x027C04 09:BBF4: 7D 80 04  ADC ram_obj_spd_X_hi,X ; 0480 
C - - - - - 0x027C07 09:BBF7: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 
bra_BBFA:
C - - - - - 0x027C0A 09:BBFA: A6 AD     LDX ram_00AD
C - - - - - 0x027C0C 09:BBFC: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 
C - - - - - 0x027C0F 09:BBFF: 0A        ASL
C - - - - - 0x027C10 09:BC00: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 
C - - - - - 0x027C13 09:BC03: B0 06     BCS bra_BC0B
C - - - - - 0x027C15 09:BC05: C9 E8     CMP #$E8
C - - - - - 0x027C17 09:BC07: B0 09     BCS bra_BC12
C - - - - - 0x027C19 09:BC09: 90 04     BCC bra_BC0F    ; jmp
bra_BC0B:
C - - - - - 0x027C1B 09:BC0B: C9 18     CMP #$18
C - - - - - 0x027C1D 09:BC0D: 90 03     BCC bra_BC12
bra_BC0F:
C - - - - - 0x027C1F 09:BC0F: 20 65 DB  JSR sub_0x03DB75_добавить_spd_X_к_pos_X
bra_BC12:
C - - - - - 0x027C22 09:BC12: 20 4C DB  JSR sub_0x03DB5C_добавить_spd_Z_к_pos_Y
C - - - - - 0x027C25 09:BC15: 20 3F A2  JSR sub_A23F
C - - - - - 0x027C28 09:BC18: 20 4F BD  JSR sub_BD4F
C - - - - - 0x027C2B 09:BC1B: 20 64 BC  JSR sub_BC64
C - - - - - 0x027C2E 09:BC1E: AD 35 06  LDA ram_0635_флаг_обновления_очков
C - - - - - 0x027C31 09:BC21: F0 08     BEQ bra_BC2B_очки_не_менялись
C - - - - - 0x027C33 09:BC23: A9 00     LDA #$00
C - - - - - 0x027C35 09:BC25: 8D 35 06  STA ram_0635_флаг_обновления_очков
C - - - - - 0x027C38 09:BC28: 20 F6 AF  JSR sub_AFF6_отрисовать_инфу_в_статусбаре
bra_BC2B_очки_не_менялись:
C - - - - - 0x027C3B 09:BC2B: 20 42 B1  JSR sub_B142
loc_BC2E:
C D 1 - - - 0x027C3E 09:BC2E: 20 E8 BA  JSR sub_BAE8
C - - - - - 0x027C41 09:BC31: A2 0F     LDX #$0F
bra_BC33_loop:
C - - - - - 0x027C43 09:BC33: BD E0 05  LDA ram_05E0_obj,X ; 05E0 05E1 05E2 05E3 05E4 05E5 05E6 05E7 05E8 05E9 05EA 05EB 05EC 05ED 05EE 05EF 
C - - - - - 0x027C46 09:BC36: 10 27     BPL bra_BC5F
C - - - - - 0x027C48 09:BC38: 38        SEC
C - - - - - 0x027C49 09:BC39: BD 50 04  LDA ram_obj_spd_X_fr,X ; 0450 0451 0453 0455 0456 0457 0459 045A 045B 
C - - - - - 0x027C4C 09:BC3C: ED 3D 06  SBC ram_063D
C - - - - - 0x027C4F 09:BC3F: 9D 50 04  STA ram_obj_spd_X_fr,X ; 0450 0451 0453 0455 0456 0457 0459 045A 045B 
C - - - - - 0x027C52 09:BC42: A0 00     LDY #$00
C - - - - - 0x027C54 09:BC44: 84 00     STY ram_0000
C - - - - - 0x027C57 09:BC47: AD 3C 06  LDA ram_063C
C - - - - - 0x027C5A 09:BC4A: 10 02     BPL bra_BC4E
- - - - - - 0x027C5C 09:BC4C: C6 00     DEC ram_0000    ; FF
bra_BC4E:
                                        SEC
C - - - - - 0x027C5E 09:BC4E: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0443 0445 0446 0447 0449 044A 044B 
C - - - - - 0x027C61 09:BC51: ED 3C 06  SBC ram_063C
C - - - - - 0x027C64 09:BC54: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 0443 0445 0446 0447 0449 044A 044B 
C - - - - - 0x027C67 09:BC57: BD 30 04  LDA ram_obj_pos_X_hi,X ; 0430 0431 0433 0435 0436 0437 0439 043A 043B 
C - - - - - 0x027C6A 09:BC5A: E5 00     SBC ram_0000
C - - - - - 0x027C6C 09:BC5C: 9D 30 04  STA ram_obj_pos_X_hi,X ; 0430 0431 0433 0435 0436 0437 0439 043A 043B 
bra_BC5F:
C - - - - - 0x027C6F 09:BC5F: CA        DEX
C - - - - - 0x027C70 09:BC60: 10 D1     BPL bra_BC33_loop
C - - - - - 0x027C72 09:BC62: 60        RTS



sub_BC64:
C - - - - - 0x027C74 09:BC64: A2 01     LDX #$01
C - - - - - 0x027C76 09:BC66: 86 A8     STX ram_local_obj_index
C - - - - - 0x027C78 09:BC68: 86 AC     STX ram_00AC
C - - - - - 0x027C7A 09:BC6A: BD F0 05  LDA ram_05F0_obj,X ; 05F1 
C - - - - - 0x027C7D 09:BC6D: D0 F4     BNE bra_BCBF_RTS
C - - - - - 0x027C7F 09:BC6F: BD 80 05  LDA ram_0580_obj,X ; 0581 
C - - - - - 0x027C82 09:BC72: 30 EF     BMI bra_BCBF_RTS
C - - - - - 0x027C84 09:BC74: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0441 
C - - - - - 0x027C87 09:BC77: 85 00     STA ram_0000
C - - - - - 0x027C89 09:BC79: 85 0E     STA ram_000E
C - - - - - 0x027C8B 09:BC7B: A0 00     LDY #$00
C - - - - - 0x027C8D 09:BC7D: 84 A9     STY ram_global_obj_index
bra_BC7F_loop:
; Y = 00-06
C - - - - - 0x027C8F 09:BC7F: A6 A8     LDX ram_local_obj_index
C - - - - - 0x027C91 09:BC81: A4 A9     LDY ram_global_obj_index
C - - - - - 0x027C93 09:BC83: B9 50 05  LDA ram_obj_id,Y ; 0550 0552 0554 0556 
C - - - - - 0x027C96 09:BC86: F0 2D     BEQ bra_BCB5
C - - - - - 0x027C98 09:BC88: B9 80 05  LDA ram_0580_obj,Y ; 0580 0582 0584 
C - - - - - 0x027C9B 09:BC8B: 30 28     BMI bra_BCB5
C - - - - - 0x027C9D 09:BC8D: B9 B0 05  LDA ram_05B0_obj_damage,Y ; 05B0 05B2 05B4 
C - - - - - 0x027CA0 09:BC90: F0 23     BEQ bra_BCB5
C - - - - - 0x027CA2 09:BC92: B9 30 04  LDA ram_obj_pos_X_hi,Y ; 0432 0434 
C - - - - - 0x027CA5 09:BC95: D0 1E     BNE bra_BCB5
C - - - - - 0x027CA7 09:BC97: BE 70 05  LDX ram_0570_obj,Y ; 0572 0574 
C - - - - - 0x027CAA 09:BC9A: F0 19     BEQ bra_BCB5
C - - - - - 0x027CAC 09:BC9C: BD 4C AD  LDA tbl_AD4C_хитбокс,X
C - - - - - 0x027CAF 09:BC9F: 18        CLC
C - - - - - 0x027CB0 09:BCA0: 69 0C     ADC #$0C
C - - - - - 0x027CB2 09:BCA2: 85 02     STA ram_0002
C - - - - - 0x027CB4 09:BCA4: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0442 0444 
C - - - - - 0x027CB7 09:BCA7: 85 0D     STA ram_000D
C - - - - - 0x027CB9 09:BCA9: A6 A8     LDX ram_local_obj_index
C - - - - - 0x027CBB 09:BCAB: 20 0C D2  JSR sub_0x03D21C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x027CBE 09:BCAE: C5 02     CMP ram_0002
C - - - - - 0x027CC0 09:BCB0: B0 03     BCS bra_BCB5
C - - - - - 0x027CC2 09:BCB2: 4C C0 BC  JMP loc_BCC0_дамаг_по_стене
bra_BCB5:
C - - - - - 0x027CC5 09:BCB5: E6 A9     INC ram_global_obj_index
C - - - - - 0x027CC7 09:BCB7: E6 A9     INC ram_global_obj_index
C - - - - - 0x027CC9 09:BCB9: A4 A9     LDY ram_global_obj_index
C - - - - - 0x027CCB 09:BCBB: C0 07     CPY #$07
C - - - - - 0x027CCD 09:BCBD: 90 C0     BCC bra_BC7F_loop
bra_BCBF_RTS:
C - - - - - 0x027CCF 09:BCBF: 60        RTS



loc_BCC0_дамаг_по_стене:
C D 1 - - - 0x027CD0 09:BCC0: A9 01     LDA #$01
C - - - - - 0x027CD2 09:BCC2: 9D 1E 06  STA ram_061E_plr,X ; 061F 
C - - - - - 0x027CD5 09:BCC5: 99 F0 05  STA ram_05F0_obj,Y ; 05F2 05F4 
C - - - - - 0x027CD8 09:BCC8: B9 80 05  LDA ram_0580_obj,Y ; 0582 0584 
C - - - - - 0x027CDB 09:BCCB: 0A        ASL
C - - - - - 0x027CDC 09:BCCC: 30 05     BMI bra_BCD3
C - - - - - 0x027CDE 09:BCCE: A9 06     LDA #$06
C - - - - - 0x027CE0 09:BCD0: 8D 36 06  STA ram_0636_plr
bra_BCD3:
C - - - - - 0x027CE3 09:BCD3: A9 0A     LDA #$0A
C - - - - - 0x027CE5 09:BCD5: 85 AA     STA ram_таймер_задержки_фпс
C - - - - - 0x027CE7 09:BCD7: B9 B0 05  LDA ram_05B0_obj_damage,Y ; 05B2 05B4 
; bzk optimize, если Y не изменится, тогда вычитать ram_05B0_obj_damage напрямую в 0x027D1A
C - - - - - 0x027CEA 09:BCDA: 85 08     STA ram_0008    ; дамаг от атаки перса
C - - - - - 0x027CEC 09:BCDC: 20 88 B0  JSR sub_B088
C - - - - - 0x027CF1 09:BCE1: B9 50 05  LDA ram_obj_id + $04 ; 0552 
                                        TAY
C - - - - - 0x027CF4 09:BCE4: C9 36     CMP #con_колво_обычных_ударов
C - - - - - 0x027D09 09:BCF9: A9 10     LDA #$10
C - - - - - 0x027CF6 09:BCE6: F0 0C     BCC bra_BCF7
                                        LDA tbl_BD4B_время_стана_стен_от_суперок - con_колво_обычных_ударов,Y
bra_BCF7:
                                        JSR sub_8BB6_уменьшить_на_25_процентов_если_turbo
C - - - - - 0x027D0B 09:BCFB: 9D F0 05  STA ram_05F0_obj,X ; 05F1 
C - - - - - 0x027D0E 09:BCFE: A9 12     LDA #con_075C_12
C - - - - - 0x027D10 09:BD00: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x027D13 09:BD03: 20 1D BD  JSR sub_BD1D
; уменьшение хп стены
C - - - - - 0x027D16 09:BD06: BD 90 05  LDA ram_plr_hp_lo,X ; 0591 
C - - - - - 0x027D19 09:BD09: 38        SEC
C - - - - - 0x027D1A 09:BD0A: E5 08     SBC ram_0008    ; дамаг от атаки перса
C - - - - - 0x027D1C 09:BD0C: 9D 90 05  STA ram_plr_hp_lo,X ; 0591 
C - - - - - 0x027D1F 09:BD0F: 90 01     BCC bra_BD12_стена_разрушена
C - - - - - 0x027D21 09:BD11: 60        RTS
bra_BD12_стена_разрушена:
C - - - - - 0x027D22 09:BD12: A9 00     LDA #$00
C - - - - - 0x027D24 09:BD14: 9D 90 05  STA ram_plr_hp_lo,X ; 0591 
C - - - - - 0x027D27 09:BD17: A9 02     LDA #$02    ; стена разрушена
C - - - - - 0x027D29 09:BD19: 8D 31 05  STA ram_0531_script_стена_bonus_game
C - - - - - 0x027D2C 09:BD1C: 60        RTS



tbl_BD4B_время_стана_стен_от_суперок:
                                        .byte $14   ; 3F special hot огонь
                                        .byte $10   ; 40 special shred волна
                                        .byte $11   ; 41 special leo крутилка
                                        .byte $10   ; 42 special raph сверло
                                        .byte $10   ; 43 special mike ракеты понизу
                                        .byte $10   ; 44 special mike ракеты поверху
                                        .byte $14   ; 45 special don пила вращение
                                        .byte $10   ; 46 special shred мясо
                                        .byte $14   ; 47 special casey клюшка
                                        .byte $14   ; 48 special don пила подкат
                                        .byte $0E   ; 49 special casey песок



sub_BD1D:
C - - - - - 0x027D2D 09:BD1D: A9 01     LDA #$01
C - - - - - 0x027D2F 09:BD1F: 85 0C     STA ram_000C
C - - - - - 0x027D31 09:BD21: 8A        TXA
C - - - - - 0x027D32 09:BD22: 48        PHA
C - - - - - 0x027D33 09:BD23: A5 A9     LDA ram_global_obj_index
C - - - - - 0x027D35 09:BD25: AA        TAX
C - - - - - 0x027D36 09:BD26: 29 01     AND #$01
C - - - - - 0x027D38 09:BD28: 18        CLC
C - - - - - 0x027D39 09:BD29: 69 0A     ADC #$0A
C - - - - - 0x027D3B 09:BD2B: A8        TAY
C - - - - - 0x027D3C 09:BD2C: 20 C7 DA  JSR sub_0x03DAD7_удалить_объект_сохранив_XY
C - - - - - 0x027D3F 09:BD2F: A5 0C     LDA ram_000C
C - - - - - 0x027D41 09:BD31: 99 50 05  STA ram_obj_id,Y ; 055A 
C - - - - - 0x027D44 09:BD34: 20 B5 DB  JSR sub_0x03DBC5_скопировать_данные_объекта_X_в_Y
C - - - - - 0x027D47 09:BD37: BD 50 05  LDA ram_obj_id,X ; 0552 0554 
C - - - - - 0x027D4A 09:BD3A: C9 35     CMP #con_0552_special_don_пила_вращение
C - - - - - 0x027D4C 09:BD3C: F0 04     BEQ bra_BD42
C - - - - - 0x027D4E 09:BD3E: C9 32     CMP #con_0552_special_raph_сверло
C - - - - - 0x027D50 09:BD40: D0 08     BNE bra_BD4A
bra_BD42:
C - - - - - 0x027D52 09:BD42: A5 0E     LDA ram_000E
C - - - - - 0x027D54 09:BD44: 65 0D     ADC ram_000D
C - - - - - 0x027D56 09:BD46: 6A        ROR
C - - - - - 0x027D57 09:BD47: 99 40 04  STA ram_obj_pos_X_lo,Y ; 044A 
bra_BD4A:
C - - - - - 0x027D5A 09:BD4A: A4 A9     LDY ram_global_obj_index
C - - - - - 0x027D5C 09:BD4C: 68        PLA
C - - - - - 0x027D5D 09:BD4D: AA        TAX
C - - - - - 0x027D5E 09:BD4E: 60        RTS



sub_BD4F:
C - - - - - 0x027D5F 09:BD4F: AC 70 05  LDY ram_0570_obj
C - - - - - 0x027D62 09:BD52: 18        CLC
C - - - - - 0x027D63 09:BD53: B9 4C AD  LDA tbl_AD4C_хитбокс,Y
C - - - - - 0x027D66 09:BD56: 69 0C     ADC #$0C
C - - - - - 0x027D68 09:BD58: 85 04     STA ram_0004
C - - - - - 0x027D6A 09:BD5A: A2 00     LDX #$00
C - - - - - 0x027D6C 09:BD5C: A0 01     LDY #$01
C - - - - - 0x027D6E 09:BD5E: 20 0C D2  JSR sub_0x03D21C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x027D71 09:BD61: C5 04     CMP ram_0004
C - - - - - 0x027D73 09:BD63: B0 16     BCS bra_BD7B_RTS
C - - - - - 0x027D75 09:BD65: AD 41 04  LDA ram_obj_pos_X_lo + $01
C - - - - - 0x027D78 09:BD68: E5 04     SBC ram_0004
C - - - - - 0x027D7A 09:BD6A: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x027D7D 09:BD6D: AD 51 04  LDA ram_obj_spd_X_fr + $01
C - - - - - 0x027D80 09:BD70: 8D 50 04  STA ram_obj_spd_X_fr
C - - - - - 0x027D83 09:BD73: A9 00     LDA #$00
C - - - - - 0x027D85 09:BD75: 8D 80 04  STA ram_obj_spd_X_hi
C - - - - - 0x027D88 09:BD78: 8D 90 04  STA ram_obj_spd_X_lo
bra_BD7B_RTS:
C - - - - - 0x027D8B 09:BD7B: 60        RTS



sub_BD7C:
C - - - - - 0x027D8C 09:BD7C: 85 A9     STA ram_global_obj_index
C - - - - - 0x027D8E 09:BD7E: E0 02     CPX #$02
C - - - - - 0x027D90 09:BD80: B0 1E     BCS bra_BDA0_RTS
C - - - - - 0x027D92 09:BD82: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x027D95 09:BD85: C0 05     CPY #con_fighter_hot
C - - - - - 0x027D97 09:BD87: F0 18     BEQ bra_BDA1_hot
                                    .else
                                        CPY #con_fighter_hot
                                        BEQ bra_BDA1_hot
                                        CPY #con_fighter___hot
                                        BEQ bra_BDA1_hot
                                    .endif
C - - - - - 0x027D99 09:BD89: BD 54 05  LDA ram_obj_id + $04,X ; 0554 0555 
C - - - - - 0x027D9C 09:BD8C: 49 33     EOR #con_0552_special_mike_ракеты_понизу
C - - - - - 0x027D9E 09:BD8E: D0 04     BNE bra_BDA0_RTS
C - - - - - 0x027DA0 09:BD90: A9 10     LDA #$10
C - - - - - 0x027DA2 09:BD92: 85 06     STA ram_0006
bra_BDA0_RTS:
C - - - - - 0x027DB0 09:BDA0: 60        RTS
bra_BDA1_hot:
; con_fighter_hot
; con_fighter___hot
C - - - - - 0x027DB1 09:BDA1: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x027DB4 09:BDA4: C9 08     CMP #con_plr_state_делает_суперку
C - - - - - 0x027DB6 09:BDA6: D0 08     BNE bra_BDB0
C - - - - - 0x027DB8 09:BDA8: A9 98     LDA #$98
C - - - - - 0x027DBA 09:BDAA: 85 01     STA ram_0001
C - - - - - 0x027DBC 09:BDAC: A9 18     LDA #$18
C - - - - - 0x027DBE 09:BDAE: 85 06     STA ram_0006
bra_BDB0:
C - - - - - 0x027DC0 09:BDB0: 8A        TXA
C - - - - - 0x027DC1 09:BDB1: 49 01     EOR #$01
C - - - - - 0x027DC3 09:BDB3: A8        TAY
C - - - - - 0x027DC4 09:BDB4: B9 42 04  LDA ram_obj_pos_X_lo + $02,Y ; 0442 0443 
C - - - - - 0x027DC7 09:BDB7: D0 0D     BNE bra_BDC6
C - - - - - 0x027DC9 09:BDB9: B9 44 04  LDA ram_obj_pos_X_lo + $04,Y ; 0444 0445 
C - - - - - 0x027DCC 09:BDBC: D0 08     BNE bra_BDC6
C - - - - - 0x027DCE 09:BDBE: AD B6 05  LDA ram_05B0_obj_damage + $06
C - - - - - 0x027DD1 09:BDC1: F0 1E     BEQ bra_BDE1
C - - - - - 0x027DD3 09:BDC3: AD 46 04  LDA ram_obj_pos_X_lo + $06
bra_BDC6:
C - - - - - 0x027DD6 09:BDC6: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x027DD9 09:BDC9: A9 00     LDA #$00
C - - - - - 0x027DDB 09:BDCB: 6A        ROR
C - - - - - 0x027DDC 09:BDCC: 6A        ROR
C - - - - - 0x027DDD 09:BDCD: DD 10 05  CMP ram_obj_flip,X ; 0510 0511 
C - - - - - 0x027DE0 09:BDD0: D0 14     BNE bra_BDE6
C - - - - - 0x027DE2 09:BDD2: BC 00 04  LDY ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x027DE5 09:BDD5: A9 19     LDA #$19
C - - - - - 0x027DE7 09:BDD7: C0 B8     CPY #$B8
C - - - - - 0x027DE9 09:BDD9: F0 08     BEQ bra_BDE3
C - - - - - 0x027DEB 09:BDDB: A9 15     LDA #$15
C - - - - - 0x027DED 09:BDDD: C0 8C     CPY #$8C
C - - - - - 0x027DEF 09:BDDF: F0 02     BEQ bra_BDE3
bra_BDE1:
C - - - - - 0x027DF1 09:BDE1: A9 11     LDA #$11
bra_BDE3:
C - - - - - 0x027DF3 09:BDE3: 85 05     STA ram_0005
C - - - - - 0x027DF5 09:BDE5: 60        RTS
bra_BDE6:
C - - - - - 0x027DF6 09:BDE6: B9 12 04  LDA ram_obj_pos_Y_lo + $02,Y ; 0412 0413 
C - - - - - 0x027DF9 09:BDE9: D0 0D     BNE bra_BDF8
C - - - - - 0x027DFB 09:BDEB: B9 14 04  LDA ram_obj_pos_Y_lo + $04,Y ; 0414 0415 
C - - - - - 0x027DFE 09:BDEE: D0 08     BNE bra_BDF8
C - - - - - 0x027E00 09:BDF0: AD B6 05  LDA ram_05B0_obj_damage + $06
C - - - - - 0x027E03 09:BDF3: F0 EC     BEQ bra_BDE1
C - - - - - 0x027E05 09:BDF5: AD 16 04  LDA ram_obj_pos_Y_lo + $06
bra_BDF8:
C - - - - - 0x027E08 09:BDF8: BC 00 04  LDY ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x027E0B 09:BDFB: 38        SEC
C - - - - - 0x027E0C 09:BDFC: FD 10 04  SBC ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x027E0F 09:BDFF: B0 E0     BCS bra_BDE1
C - - - - - 0x027E11 09:BE01: C0 A5     CPY #$A5
C - - - - - 0x027E13 09:BE03: D0 08     BNE bra_BE0D
C - - - - - 0x027E15 09:BE05: AA        TAX
C - - - - - 0x027E16 09:BE06: E0 E1     CPX #$E1
C - - - - - 0x027E18 09:BE08: A9 1F     LDA #$1F
C - - - - - 0x027E1A 09:BE0A: 90 D7     BCC bra_BDE3
C - - - - - 0x027E1C 09:BE0C: 8A        TXA
bra_BE0D:
C - - - - - 0x027E1D 09:BE0D: D9 F4 BE  CMP tbl_BF74 - $80,Y
C - - - - - 0x027E20 09:BE10: B0 CF     BCS bra_BDE1
C - - - - - 0x027E22 09:BE12: B9 39 BF  LDA tbl_BFB9 - $80,Y
C - - - - - 0x027E25 09:BE15: 90 CC     BCC bra_BDE3    ; jmp



sub_BE20:
                                        LDY ram_option_health
                                        LDA ram_014F    ; ram_tournament_fighter + $03 ???
C - - - - - 0x027E30 09:BE20: 10 0E     BPL bra_BE30
- - - - - - 0x027E32 09:BE22: C9 83     CMP #$83
- - - - - - 0x027E34 09:BE24: F0 19     BEQ bra_BE3F_RTS
- - - - - - 0x027E36 09:BE26: B0 08     BCS bra_BE30
- - - - - - 0x027E38 09:BE28: 29 07     AND #$07
- - - - - - 0x027E3A 09:BE2A: 85 00     STA ram_0000
- - - - - - 0x027E3C 09:BE2C: E4 00     CPX ram_0000
- - - - - - 0x027E3E 09:BE2E: F0 0F     BEQ bra_BE3F_RTS
bra_BE30:
C - - - - - 0x027E40 09:BE30: B9 91 EF  LDA tbl_0x03EFA1,Y
C - - - - - 0x027E43 09:BE33: 9D 0D 01  STA ram_plr_hp_hi,X ; 010D 010E 
C - - - - - 0x027E46 09:BE36: B9 95 EF  LDA tbl_0x03EFA5,Y
C - - - - - 0x027E49 09:BE39: 9D 90 05  STA ram_plr_hp_lo,X ; 0590 0591 
C - - - - - 0x027E4C 09:BE3C: 9D 47 06  STA ram_0647_plr,X ; 0647 0648 
bra_BE3F_RTS:
C - - - - - 0x027E4F 09:BE3F: 60        RTS



sub_BE44:
C - - - - - 0x027E54 09:BE44: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x027E57 09:BE47: A9 00     LDA #$00
C - - - - - 0x027E59 09:BE49: 9D 0C 04  STA ram_obj_anim_id + $0C,X ; 040C 040D 
sub_BE4C:
C - - - - - 0x027E5C 09:BE4C: AD 72 06  LDA ram_время_десятки
C - - - - - 0x027E5F 09:BE4F: 0D 73 06  ORA ram_время_единицы
C - - - - - 0x027E62 09:BE52: F0 2E     BEQ bra_BE82
C - - - - - 0x027E67 09:BE57: B0 06     BCS bra_BE5F
                                        LDY ram_obj_id,X ; 0550 0551 
                                        TYA
                                        LDA tbl_BE85_условие_для_перехода,Y
                                        BEQ bra_BE84
; con_fighter_raph
; con_fighter_mike
bra_BE5F:
                                        LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x027E6F 09:BE5F: AD 38 06  LDA ram_расстояние_между_персами
C - - - - - 0x027E72 09:BE62: D9 1C DF  CMP tbl_0x03DF2C_рейндж_броска,Y
C - - - - - 0x027E75 09:BE65: B0 1D     BCS bra_BE84_слишком_далеко
; if персы достаточно близко друг к другу
C - - - - - 0x027E77 09:BE67: A4 A9     LDY ram_global_obj_index
C - - - - - 0x027E79 09:BE69: B5 8E     LDA ram_btn_press,X ; 008E 008F 
C - - - - - 0x027E7B 09:BE6B: 49 40     EOR #con_btn_B
; что это за пиздец такой?
C - - - - - 0x027E7D 09:BE6D: 1D 20 05  ORA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x027E80 09:BE70: 1D 10 06  ORA ram_plr_флаг_индекса_атаки,X ; 0610 0611 
C - - - - - 0x027E83 09:BE73: 19 80 05  ORA ram_0580_obj,Y ; 0580 0581 
C - - - - - 0x027E86 09:BE76: 19 F0 05  ORA ram_05F0_obj,Y ; 05F0 05F1 
C - - - - - 0x027E89 09:BE79: D0 09     BNE bra_BE84
C - - - - - 0x027E8B 09:BE7B: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x027E8E 09:BE7E: C9 B0     CMP #con_координата_пола
C - - - - - 0x027E90 09:BE80: 90 02     BCC bra_BE84
bra_BE82:
C - - - - - 0x027E92 09:BE82: 68        PLA
C - - - - - 0x027E93 09:BE83: 68        PLA
bra_BE84:
bra_BE84_слишком_далеко:
C - - - - - 0x027E94 09:BE84: 4C DF FE  JMP loc_0x03FEEF



tbl_BE85_условие_для_перехода:
; 00 = branch, 40 = no branch
                                        .byte $00 ; 00 con_fighter_leo
                                        .byte $40 ; 01 con_fighter_raph
                                        .byte $40 ; 02 con_fighter_mike
                                        .byte $00 ; 03 con_fighter_don
                                        .byte $00 ; 04 con_fighter_casey
                                        .byte $00 ; 05 con_fighter_hot
                                        .byte $00 ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $00 ; 07 con_fighter___leo
                                        .byte $40 ; 08 con_fighter___raph
                                        .byte $40 ; 09 con_fighter___mike
                                        .byte $00 ; 0A con_fighter___don
                                        .byte $00 ; 0B con_fighter___casey
                                        .byte $00 ; 0C con_fighter___hot
                                        .byte $00 ; 0D con_fighter___shred
                                    .endif



tbl_BF74:
- D 1 - - - 0x027F84 09:BF74: DD        .byte $DD   ; 80
- D 1 - - - 0x027F85 09:BF75: DD        .byte $DD   ; 81
- D 1 - - - 0x027F86 09:BF76: DD        .byte $DD   ; 82
- D 1 - - - 0x027F87 09:BF77: DD        .byte $DD   ; 83
- D 1 - - - 0x027F88 09:BF78: DD        .byte $DD   ; 84
- D 1 - - - 0x027F89 09:BF79: DD        .byte $DD   ; 85
- - - - - - 0x027F8A 09:BF7A: DD        .byte $DD   ; 86
- - - - - - 0x027F8B 09:BF7B: DD        .byte $DD   ; 87
- D 1 - - - 0x027F8C 09:BF7C: DD        .byte $DD   ; 88
- - - - - - 0x027F8D 09:BF7D: DD        .byte $DD   ; 89
- - - - - - 0x027F8E 09:BF7E: DD        .byte $DD   ; 8A
- D 1 - - - 0x027F8F 09:BF7F: 00        .byte $00   ; 8B
- D 1 - - - 0x027F90 09:BF80: 00        .byte $00   ; 8C
- D 1 - - - 0x027F91 09:BF81: 00        .byte $00   ; 8D
- D 1 - - - 0x027F92 09:BF82: 00        .byte $00   ; 8E
- - - - - - 0x027F93 09:BF83: DD        .byte $DD   ; 8F
- - - - - - 0x027F94 09:BF84: D2        .byte $D2   ; 90
- - - - - - 0x027F95 09:BF85: DD        .byte $DD   ; 91
- - - - - - 0x027F96 09:BF86: 00        .byte $00   ; 92
- - - - - - 0x027F97 09:BF87: E9        .byte $E9   ; 93
- - - - - - 0x027F98 09:BF88: DD        .byte $DD   ; 94
- - - - - - 0x027F99 09:BF89: 00        .byte $00   ; 95
- D 1 - - - 0x027F9A 09:BF8A: DD        .byte $DD   ; 96
- D 1 - - - 0x027F9B 09:BF8B: 00        .byte $00   ; 97
- - - - - - 0x027F9C 09:BF8C: 00        .byte $00   ; 98
- - - - - - 0x027F9D 09:BF8D: E9        .byte $E9   ; 99
- D 1 - - - 0x027F9E 09:BF8E: 00        .byte $00   ; 9A
- D 1 - - - 0x027F9F 09:BF8F: 00        .byte $00   ; 9B
- D 1 - - - 0x027FA0 09:BF90: D2        .byte $D2   ; 9C
- D 1 - - - 0x027FA1 09:BF91: E9        .byte $E9   ; 9D
- - - - - - 0x027FA2 09:BF92: 00        .byte $00   ; 9E
- - - - - - 0x027FA3 09:BF93: 00        .byte $00   ; 9F
- - - - - - 0x027FA4 09:BF94: 00        .byte $00   ; A0
- - - - - - 0x027FA5 09:BF95: 00        .byte $00   ; A1
- - - - - - 0x027FA6 09:BF96: 00        .byte $00   ; A2
- - - - - - 0x027FA7 09:BF97: 00        .byte $00   ; A3
- - - - - - 0x027FA8 09:BF98: 00        .byte $00   ; A4
- D 1 - - - 0x027FA9 09:BF99: F2        .byte $F2   ; A5
- - - - - - 0x027FAA 09:BF9A: 00        .byte $00   ; A6
- - - - - - 0x027FAB 09:BF9B: 00        .byte $00   ; A7
- - - - - - 0x027FAC 09:BF9C: 00        .byte $00   ; A8
- - - - - - 0x027FAD 09:BF9D: 00        .byte $00   ; A9
- - - - - - 0x027FAE 09:BF9E: 00        .byte $00   ; AA
- - - - - - 0x027FAF 09:BF9F: 00        .byte $00   ; AB
- - - - - - 0x027FB0 09:BFA0: 00        .byte $00   ; AC
- - - - - - 0x027FB1 09:BFA1: 00        .byte $00   ; AD
- - - - - - 0x027FB2 09:BFA2: 00        .byte $00   ; AE
- - - - - - 0x027FB3 09:BFA3: 00        .byte $00   ; AF
- - - - - - 0x027FB4 09:BFA4: 00        .byte $00   ; B0
- - - - - - 0x027FB5 09:BFA5: 00        .byte $00   ; B1
- - - - - - 0x027FB6 09:BFA6: 00        .byte $00   ; B2
- D 1 - - - 0x027FB7 09:BFA7: E0        .byte $E0   ; B3
- D 1 - - - 0x027FB8 09:BFA8: DD        .byte $DD   ; B4
- D 1 - - - 0x027FB9 09:BFA9: FF        .byte $FF   ; B5
- D 1 - - - 0x027FBA 09:BFAA: FF        .byte $FF   ; B6
- D 1 - - - 0x027FBB 09:BFAB: DD        .byte $DD   ; B7
- D 1 - - - 0x027FBC 09:BFAC: 00        .byte $00   ; B8
- D 1 - - - 0x027FBD 09:BFAD: FF        .byte $FF   ; B9
- - - - - - 0x027FBE 09:BFAE: 00        .byte $00   ; BA
- - - - - - 0x027FBF 09:BFAF: 00        .byte $00   ; BB
- - - - - - 0x027FC0 09:BFB0: 00        .byte $00   ; BC
- - - - - - 0x027FC1 09:BFB1: 00        .byte $00   ; BD
- - - - - - 0x027FC2 09:BFB2: 00        .byte $00   ; BE
- - - - - - 0x027FC3 09:BFB3: 00        .byte $00   ; BF
- - - - - - 0x027FC4 09:BFB4: 00        .byte $00   ; C0
- - - - - - 0x027FC5 09:BFB5: 00        .byte $00   ; C1
- - - - - - 0x027FC6 09:BFB6: 00        .byte $00   ; C2
- D 1 - - - 0x027FC7 09:BFB7: DD        .byte $DD   ; C3
- D 1 - - - 0x027FC8 09:BFB8: DD        .byte $DD   ; C4



tbl_BFB9:
- D 1 - - - 0x027FC9 09:BFB9: 19        .byte $19   ; 80
- D 1 - - - 0x027FCA 09:BFBA: 19        .byte $19   ; 81
- D 1 - - - 0x027FCB 09:BFBB: 19        .byte $19   ; 82
- D 1 - - - 0x027FCC 09:BFBC: 19        .byte $19   ; 83
- D 1 - - - 0x027FCD 09:BFBD: 19        .byte $19   ; 84
- D 1 - - - 0x027FCE 09:BFBE: 19        .byte $19   ; 85
- - - - - - 0x027FCF 09:BFBF: 19        .byte $19   ; 86
- - - - - - 0x027FD0 09:BFC0: 19        .byte $19   ; 87
- - - - - - 0x027FD1 09:BFC1: 19        .byte $19   ; 88
- - - - - - 0x027FD2 09:BFC2: 19        .byte $19   ; 89
- - - - - - 0x027FD3 09:BFC3: 19        .byte $19   ; 8A
- - - - - - 0x027FD4 09:BFC4: 11        .byte $11   ; 8B
- - - - - - 0x027FD5 09:BFC5: 11        .byte $11   ; 8C
- - - - - - 0x027FD6 09:BFC6: 11        .byte $11   ; 8D
- - - - - - 0x027FD7 09:BFC7: 11        .byte $11   ; 8E
- - - - - - 0x027FD8 09:BFC8: 19        .byte $19   ; 8F
- - - - - - 0x027FD9 09:BFC9: 15        .byte $15   ; 90
- - - - - - 0x027FDA 09:BFCA: 15        .byte $15   ; 91
- - - - - - 0x027FDB 09:BFCB: 11        .byte $11   ; 92
- - - - - - 0x027FDC 09:BFCC: 19        .byte $19   ; 93
- - - - - - 0x027FDD 09:BFCD: 15        .byte $15   ; 94
- - - - - - 0x027FDE 09:BFCE: 11        .byte $11   ; 95
- D 1 - - - 0x027FDF 09:BFCF: 15        .byte $15   ; 96
- - - - - - 0x027FE0 09:BFD0: 11        .byte $11   ; 97
- - - - - - 0x027FE1 09:BFD1: 11        .byte $11   ; 98
- - - - - - 0x027FE2 09:BFD2: 17        .byte $17   ; 99
- - - - - - 0x027FE3 09:BFD3: 11        .byte $11   ; 9A
- - - - - - 0x027FE4 09:BFD4: 11        .byte $11   ; 9B
- D 1 - - - 0x027FE5 09:BFD5: 15        .byte $15   ; 9C
- D 1 - - - 0x027FE6 09:BFD6: 19        .byte $19   ; 9D
- - - - - - 0x027FE7 09:BFD7: 11        .byte $11   ; 9E
- - - - - - 0x027FE8 09:BFD8: 11        .byte $11   ; 9F
- - - - - - 0x027FE9 09:BFD9: 11        .byte $11   ; A0
- - - - - - 0x027FEA 09:BFDA: 11        .byte $11   ; A1
- - - - - - 0x027FEB 09:BFDB: 11        .byte $11   ; A2
- - - - - - 0x027FEC 09:BFDC: 11        .byte $11   ; A3
- - - - - - 0x027FED 09:BFDD: 11        .byte $11   ; A4
- D 1 - - - 0x027FEE 09:BFDE: 1A        .byte $19   ; A5
- - - - - - 0x027FEF 09:BFDF: 11        .byte $11   ; A6
- - - - - - 0x027FF0 09:BFE0: 11        .byte $11   ; A7
- - - - - - 0x027FF1 09:BFE1: 11        .byte $11   ; A8
- - - - - - 0x027FF2 09:BFE2: 11        .byte $11   ; A9
- - - - - - 0x027FF3 09:BFE3: 11        .byte $11   ; AA
- - - - - - 0x027FF4 09:BFE4: 11        .byte $11   ; AB
- - - - - - 0x027FF5 09:BFE5: 11        .byte $11   ; AC
- - - - - - 0x027FF6 09:BFE6: 11        .byte $11   ; AD
- - - - - - 0x027FF7 09:BFE7: 11        .byte $11   ; AE
- - - - - - 0x027FF8 09:BFE8: 11        .byte $11   ; AF
- - - - - - 0x027FF9 09:BFE9: 11        .byte $11   ; B0
- - - - - - 0x027FFA 09:BFEA: 11        .byte $11   ; B1
- - - - - - 0x027FFB 09:BFEB: 11        .byte $11   ; B2
- D 1 - - - 0x027FFC 09:BFEC: 20        .byte $20   ; B3
- D 1 - - - 0x027FFD 09:BFED: 24        .byte $24   ; B4
- D 1 - - - 0x027FFE 09:BFEE: 19        .byte $19   ; B5
- D 1 - - - 0x027FFF 09:BFEF: 13        .byte $13   ; B6
- D 1 - - - 0x028000 09:BFF0: 19        .byte $19   ; B7
- - - - - - 0x028001 09:BFF1: 11        .byte $11   ; B8
- D 1 - - - 0x028002 09:BFF2: 15        .byte $15   ; B9
- - - - - - 0x028003 09:BFF3: 11        .byte $11   ; BA
- - - - - - 0x028004 09:BFF4: 11        .byte $11   ; BB
- - - - - - 0x028005 09:BFF5: 11        .byte $11   ; BC
- - - - - - 0x028006 09:BFF6: 11        .byte $11   ; BD
- - - - - - 0x028007 09:BFF7: 11        .byte $11   ; BE
- - - - - - 0x028008 09:BFF8: 11        .byte $11   ; BF
- - - - - - 0x028009 09:BFF9: 11        .byte $11   ; C0
- - - - - - 0x02800A 09:BFFA: 11        .byte $11   ; C1
- - - - - - 0x02800B 09:BFFB: 11        .byte $11   ; C2
- D 1 - - - 0x02800C 09:BFFC: 19        .byte $19   ; C3
- D 1 - - - 0x02800D 09:BFFD: 19        .byte $19   ; C4


; bzk garbage?
- - - - - - 0x02800E 09:BFFE: FF        .byte $FF   ; 
- - - - - - 0x02800F 09:BFFF: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank 12: %d [%Xh]", ($C000 - *), ($C000 - *))
